package test;

import connDB.InsertInfo;

public class TestInsertIntoMessage
{
	public static void main(String[] args)
	{
		if(InsertInfo.message(2, 1, "ʹ�ò����࣬���Ե����β��룡", "��ʹ���˹��趨����һ�������������⣡����Ϊ�����棡��"))
			System.out.println("����ɹ�");
		else
			System.out.println("����ʧ�ܣ�");
	}
}
