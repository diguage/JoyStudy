package test;

import connDB.DeleteInfo;

public class DeleteEnStu
{
	public static void main(String[] args)
	{
		if(DeleteInfo.deleteEnStu(8))
			System.out.println("ɾ���ɹ�");
		else 
			System.out.println("ɾ��ʧ��");
	}
}
