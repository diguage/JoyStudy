package test;

import connDB.UpdateInfo;

public class TestUpCourse
{
	public static void main(String[] args)
	{
		if(UpdateInfo.upCouseInfo(8, "ToJavaSE"))
			System.out.println("�γ��޸ĳɹ�");
		else
			System.out.println("ʧ��");
	}
}
