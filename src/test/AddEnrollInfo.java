package test;

import connDB.ConnectDB;
import connDB.InsertInfo;

public class AddEnrollInfo
{
	public static void main(String[] args)
	{
		if(InsertInfo.enrollment(3, 5))
			System.out.println("������Գɹ�");
		else
			System.out.println("�������ʧ��");
	}
}
