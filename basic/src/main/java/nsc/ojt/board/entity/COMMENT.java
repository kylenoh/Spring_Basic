package nsc.ojt.board.entity;

import java.util.Date;

public class COMMENT {
	private int C_NUM;
	private int B_NUM;
	private int ROOT_NUM;
	private int PC_NUM;
	private String IP_ADDRESS;
	private String CONTETNS;
	private String PASSWD;
	private Date INPUTDATE;
	
	public COMMENT() {
		// TODO Auto-generated constructor stub
	}

	public COMMENT(int c_NUM, int b_NUM, int rOOT_NUM, int pC_NUM, String iP_ADDRESS, String cONTETNS, String pASSWD,
			Date iNPUTDATE) {
		super();
		C_NUM = c_NUM;
		B_NUM = b_NUM;
		ROOT_NUM = rOOT_NUM;
		PC_NUM = pC_NUM;
		IP_ADDRESS = iP_ADDRESS;
		CONTETNS = cONTETNS;
		PASSWD = pASSWD;
		INPUTDATE = iNPUTDATE;
	}

	public int getC_NUM() {
		return C_NUM;
	}

	public void setC_NUM(int c_NUM) {
		C_NUM = c_NUM;
	}

	public int getB_NUM() {
		return B_NUM;
	}

	public void setB_NUM(int b_NUM) {
		B_NUM = b_NUM;
	}

	public int getROOT_NUM() {
		return ROOT_NUM;
	}

	public void setROOT_NUM(int rOOT_NUM) {
		ROOT_NUM = rOOT_NUM;
	}

	public int getPC_NUM() {
		return PC_NUM;
	}

	public void setPC_NUM(int pC_NUM) {
		PC_NUM = pC_NUM;
	}

	public String getIP_ADDRESS() {
		return IP_ADDRESS;
	}

	public void setIP_ADDRESS(String iP_ADDRESS) {
		IP_ADDRESS = iP_ADDRESS;
	}

	public String getCONTETNS() {
		return CONTETNS;
	}

	public void setCONTETNS(String cONTETNS) {
		CONTETNS = cONTETNS;
	}

	public String getPASSWD() {
		return PASSWD;
	}

	public void setPASSWD(String pASSWD) {
		PASSWD = pASSWD;
	}

	public Date getINPUTDATE() {
		return INPUTDATE;
	}

	public void setINPUTDATE(Date iNPUTDATE) {
		INPUTDATE = iNPUTDATE;
	}

	
}
