@charset:gbk
using system

function addProduct(name,money,num)
    out.print("��������Ʒ���֣�")
    name.push_back(in.input())
    out.print("��������Ʒ�۸�")
    money.push_back(in.input() )
    out.print("��������Ʒ������")
    num.push_back(in.input() )
end

function printsheet(name,money,num)
    var sum_money = 0
    out.println("\n-------------------------�����嵥--------------------------")
    out.println("-----------------------------------------------------------")
    for i = 0, i < money.size, i++
        sum_money += money[i] * num[i];
        out.println("��Ʒ��"+ name[i] + " \t���ۣ�" + money[i] +" \t������"+num[i] +" \t���ƣ�" +money[i] * num[i])             
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
            printsheet(name,money,num)            
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