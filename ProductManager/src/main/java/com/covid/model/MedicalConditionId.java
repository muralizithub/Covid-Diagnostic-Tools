package com.covid.model;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class MedicalConditionId implements Serializable{
	
	private int sympId;

	private int diagId;
	
	public MedicalConditionId(int sympId,int diagId)
	{
		this.sympId = sympId;
		this.diagId = diagId;
	}

	public int getSympId() {
		return sympId;
	}

	public int getDiagId() {
		return diagId;
	}
}
