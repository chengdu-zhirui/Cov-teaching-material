@charset:gbk
using system

function addProduct(Name,Money,Num)
    out.print("��������Ʒ���֣�")
    Name.push_back(in.input())
    out.print("��������Ʒ�۸�")
    Money.push_back(in.input() )
    out.print("��������Ʒ������")
    Num.push_back(in.input() )
end

function printSheet(Name,Money,Num)
    var sum_money = 0
    out.println("\n-------------------------�����嵥--------------------------")
    out.println("-----------------------------------------------------------")
    for i = 0, i < Money.size, i++
        sum_money += Money[i] * Num[i];
        out.println("��Ʒ��"+ Name[i] + " \t���ۣ�" + Money[i] +" \t������"+Num[i] +" \t���ƣ�" +Money[i] * Num[i])             
    end
    out.println("-----------------------------------------------------------")
    out.println("�ܼƣ�"+ sum_money + "Ԫ")
    out.println("-----------------------------------------------------------")
end

var name = new array
var money = new array
var num = new array

loop
    out.println("\n---��ӭʹ�ó�������̨---")
    out.println("��ѡ���ܣ�")
    out.println("1.�����Ʒ�ͼ۸�\n2.����\n3.�˳�")
    out.println("-----------------------")
    out.print("���������ѡ��")
    var choice =in.input()
    switch choice
        case 1
            addProduct(name,money,num)
        end
        case 2
            printSheet(name,money,num)            
        end
        case 3
            out.println("��л����ʹ��!")
            break
        end
        default
            out.println("****����Ƿ����ݣ�����������****")
            continue
        end
    end
end
## �������� ��ѡ�иò��ֺ󣬰�ctrl+/ȡ��ע�ͺ󿽱����ٻظ���ע�ͼ���
# 1
# apple
# 3
# 3
# 1
# banana
# 4
# 10
# 1
# cake
# 2
# 13
# 2