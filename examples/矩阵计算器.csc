@charset:gbk
using system
# a�洢��һ������b�洢�ڶ�����c�洢������
var a = new array
var b = new array
var c = new array
out.print("���������ά�ȣ�")
var n = in.input()
foreach i in range(n) do a.push_back(new array)
foreach i in range(n) do b.push_back(new array)
foreach i in range(n) do c.push_back(new array)
#�������
out.println("�������a��")
foreach i in range(n)
    foreach j in range(n)
        a[i][j] = in.input()
    end
end

out.println("�������b��")
foreach i in range(n)
    foreach j in range(n)
        b[i][j] = in.input()
    end
end
# # c�Ǿ���ӷ�����Ľ��
# out.println("���о���ӷ������Ϊ��")
# foreach i in range(n)
#     foreach j in range(n)
#         c[i][j] = b[i][j] + a[i][j]
#     end
# end

#���c�ǽ��о���˷��Ľ��
out.println("���о���˷������Ϊ��")
foreach i in range(n)
    foreach j in range(n)
        foreach k in range(n)
            c[i][j] += b[i][k] * a[k][j]
        end
    end
end

foreach i in range(n)
    foreach j in range(n)
        out.print(to_string(c[i][j])+' ')
    end
    out.print('\n')
end

