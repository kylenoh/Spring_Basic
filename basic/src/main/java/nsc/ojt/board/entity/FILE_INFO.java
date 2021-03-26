package nsc.ojt.board.entity;

import java.util.Date;

public class FILE_INFO {
	private int B_NUM;
	private int P_NUM;
	private int ROOT_NUM;
	private String FILE_NAME;
	private String ORIGIN_NAME;
	private int FILE_SIZE;
	private Date INPUTDATE;
	
	public FILE_INFO() {
		// TODO Auto-generated constructor stub
	}

	public FILE_INFO(int b_NUM, int p_NUM, int rOOT_NUM, String fILE_NAME, String oRIGIN_NAME, int fILE_SIZE,
			Date iNPUTDATE) {
		super();
		B_NUM = b_NUM;
		P_NUM = p_NUM;
		ROOT_NUM = rOOT_NUM;
		FILE_NAME = fILE_NAME;
		ORIGIN_NAME = oRIGIN_NAME;
		FILE_SIZE = fILE_SIZE;
		INPUTDATE = iNPUTDATE;
	}

	public int getB_NUM() {
		return B_NUM;
	}

	public void setB_NUM(int b_NUM) {
		B_NUM = b_NUM;
	}

	public int getP_NUM() {
		return P_NUM;
	}

	public void setP_NUM(int p_NUM) {
		P_NUM = p_NUM;
	}

	public int getROOT_NUM() {
		return ROOT_NUM;
	}

	public void setROOT_NUM(int rOOT_NUM) {
		ROOT_NUM = rOOT_NUM;
	}

	public String getFILE_NAME() {
		return FILE_NAME;
	}

	public void setFILE_NAME(String fILE_NAME) {
		FILE_NAME = fILE_NAME;
	}

	public String getORIGIN_NAME() {
		return ORIGIN_NAME;
	}

	public void setORIGIN_NAME(String oRIGIN_NAME) {
		ORIGIN_NAME = oRIGIN_NAME;
	}

	public int getFILE_SIZE() {
		return FILE_SIZE;
	}

	public void setFILE_SIZE(int fILE_SIZE) {
		FILE_SIZE = fILE_SIZE;
	}

	public Date getINPUTDATE() {
		return INPUTDATE;
	}

	public void setINPUTDATE(Date iNPUTDATE) {
		INPUTDATE = iNPUTDATE;
	}
	
	
	

}
