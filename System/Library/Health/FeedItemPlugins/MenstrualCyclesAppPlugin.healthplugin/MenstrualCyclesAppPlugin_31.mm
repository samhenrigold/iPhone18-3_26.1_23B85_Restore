uint64_t sub_29E1D1A3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29E1D1AAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E1D1AF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_29E1D1B64(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_29E1D1B88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E1D1BD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29E1D1C50()
{
  result = qword_2A181F350;
  if (!qword_2A181F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F350);
  }

  return result;
}

unint64_t sub_29E1D1D00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29E1E1F60(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_29E1D1D30()
{
  v1 = *v0;
  sub_29E2C4A04();
  sub_29DF22F9C(v3, v1);
  return sub_29E2C4A54();
}

uint64_t sub_29E1D1D80(uint64_t a1)
{
  v2 = *v1;
  sub_29E2C4A04();
  sub_29DF22F9C(v4, v2);
  return sub_29E2C4A54();
}

unint64_t sub_29E1D1DC4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0xD000000000000013;
    if (a1 != 2)
    {
      v5 = 0xD000000000000016;
    }

    v6 = 0xD000000000000012;
    if (!a1)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7461527472616568;
    v2 = 0xD000000000000014;
    v3 = 0x676F4C656C637963;
    if (a1 != 7)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 6)
    {
      v2 = v3;
    }

    if (a1 == 4)
    {
      v1 = 0xD00000000000001ALL;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

__n128 sub_29E1D1F18@<Q0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v35 - v11;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 != 6)
      {
        if (a1 == 7)
        {
          v13 = v10;
          type metadata accessor for FeatureSettingsModel(0);
          sub_29E1E5D80(&qword_2A1819800, type metadata accessor for FeatureSettingsModel, &unk_29E2D3CB8);
          v14 = sub_29E2C1824();
          v35 = v15;
          v36 = v14;
          type metadata accessor for PregnancyModeOptionsModel(0);
          sub_29E1E5D80(&qword_2A1819828, type metadata accessor for PregnancyModeOptionsModel, &unk_29E2DD050);
          v16 = sub_29E2C1824();
          v18 = v17;
          sub_29E2C3314();
          (*(v6 + 16))(v8, v12, v13);
          if (qword_2A1A62788 != -1)
          {
            swift_once();
          }

          v19 = qword_2A1A67F80;
          sub_29E2BCC74();
          v20 = sub_29E2C3414();
          v22 = v21;
          (*(v6 + 8))(v12, v13);
          *&v82 = v36;
          *(&v82 + 1) = v35;
          v83.n128_u64[0] = v16;
          v83.n128_u64[1] = v18;
          *&v84 = v20;
          *(&v84 + 1) = v22;
          LOBYTE(v85) = 0;
          sub_29E0CD064();
          sub_29E0CD0B8();

          sub_29E2BF404();
          sub_29E2C1C74();
          LOBYTE(v37) = v103;
          LOBYTE(v90) = 1;
          BYTE1(v103) = 1;
          v23 = MEMORY[0x29EDBC7F0];
          sub_29E1E5C7C(0, &qword_2A181C2C8, &type metadata for HeartRateDataProjectionsSection, &type metadata for WristTemperatureDataProjectionsSection, MEMORY[0x29EDBC7F0]);
          sub_29E1E5C7C(0, &qword_2A181C2D0, &type metadata for DailyLogFiltersSection, &type metadata for PeriodAndCycleLengthSection, v23);
          sub_29E0CCE8C();
          sub_29E0CCFCC();
          sub_29E2C1C74();
          v65 = v46;
          v66 = v47;
          v67 = v48;
          LOWORD(v68) = v49;
          sub_29E1E4BAC(&v65);
          v106 = v71;
          *v107 = v72[0];
          *&v107[15] = *(v72 + 15);
          v102 = v67;
          v103 = v68;
          v104 = v69;
          v105 = v70;
          v100 = v65;
          v101 = v66;
          sub_29E0CC7B4(0);
          sub_29E0CC84C(0);
          sub_29E1E4624(&qword_2A181C300, sub_29E0CC7B4, sub_29E0CCC0C, sub_29E0CCD4C);
          sub_29E1E4624(&qword_2A181C338, sub_29E0CC84C, sub_29E0CCE8C, sub_29E0CCFCC);
          sub_29E2C1C74();
          v88 = v63;
          v89[0] = *v64;
          *(v89 + 15) = *&v64[15];
          v84 = v59;
          v85 = v60;
          v86 = v61;
          v87 = v62;
          v82 = v57;
          v83 = v58;
          sub_29E1E4BB8(&v82);
          v106 = v88;
          *v107 = v89[0];
          *&v107[16] = v89[1];
          v102 = v84;
          v103 = v85;
          v104 = v86;
          v105 = v87;
          v100 = v82;
          v101 = v83;
          sub_29E1E4EBC(0, &qword_2A181C2A0, sub_29E0CC7B4, sub_29E0CC84C, MEMORY[0x29EDBC7F0]);
          sub_29E0CCA34();
          sub_29E0CD10C();
          sub_29E2C1C74();
        }

        else
        {
          type metadata accessor for PeriodAndCycleLengthModel(0);
          sub_29E1E5D80(&qword_2A18193F8, type metadata accessor for PeriodAndCycleLengthModel, &unk_29E2D3530);
          *&v82 = sub_29E2C1824();
          *(&v82 + 1) = v28;
          v83 = 0u;
          v84 = 0u;
          LOBYTE(v85) = 1;
          sub_29E0CD064();
          sub_29E0CD0B8();

          sub_29E2C1C74();
          LOBYTE(v37) = v103;
          LOBYTE(v90) = 1;
          BYTE1(v103) = 1;
          v29 = MEMORY[0x29EDBC7F0];
          sub_29E1E5C7C(0, &qword_2A181C2C8, &type metadata for HeartRateDataProjectionsSection, &type metadata for WristTemperatureDataProjectionsSection, MEMORY[0x29EDBC7F0]);
          sub_29E1E5C7C(0, &qword_2A181C2D0, &type metadata for DailyLogFiltersSection, &type metadata for PeriodAndCycleLengthSection, v29);
          sub_29E0CCE8C();
          sub_29E0CCFCC();
          sub_29E2C1C74();
          v65 = v46;
          v66 = v47;
          v67 = v48;
          LOWORD(v68) = v49;
          sub_29E1E4BAC(&v65);
          v106 = v71;
          *v107 = v72[0];
          *&v107[15] = *(v72 + 15);
          v102 = v67;
          v103 = v68;
          v104 = v69;
          v105 = v70;
          v100 = v65;
          v101 = v66;
          sub_29E0CC7B4(0);
          sub_29E0CC84C(0);
          sub_29E1E4624(&qword_2A181C300, sub_29E0CC7B4, sub_29E0CCC0C, sub_29E0CCD4C);
          sub_29E1E4624(&qword_2A181C338, sub_29E0CC84C, sub_29E0CCE8C, sub_29E0CCFCC);
          sub_29E2C1C74();
          v88 = v63;
          v89[0] = *v64;
          *(v89 + 15) = *&v64[15];
          v84 = v59;
          v85 = v60;
          v86 = v61;
          v87 = v62;
          v82 = v57;
          v83 = v58;
          sub_29E1E4BB8(&v82);
          v106 = v88;
          *v107 = v89[0];
          *&v107[16] = v89[1];
          v102 = v84;
          v103 = v85;
          v104 = v86;
          v105 = v87;
          v100 = v82;
          v101 = v83;
          sub_29E1E4EBC(0, &qword_2A181C2A0, sub_29E0CC7B4, sub_29E0CC84C, MEMORY[0x29EDBC7F0]);
          sub_29E0CCA34();
          sub_29E0CD10C();
          sub_29E2C1C74();
        }

        goto LABEL_22;
      }

      sub_29E1E1B58(&v37);
      v90 = v37;
      v99 = v38;
      v98 = v39;
      v82 = v37;
      v83 = v38;
      v84 = v39;
      LOBYTE(v85) = 1;
      goto LABEL_21;
    }

    if (a1 != 4)
    {
      sub_29E1E1928(&v37);
      v90 = v37;
      v99 = v38;
      v98 = v39;
      v82 = v37;
      v83 = v38;
      v84 = v39;
      LOBYTE(v85) = 0;
LABEL_21:
      sub_29E1E51B8(&v90, &v100, sub_29E1E4BC0);
      sub_29E1DFBA4(&v99, &v100);
      sub_29E1DFBA4(&v98, &v100);
      sub_29E0CCF24();
      sub_29E0CCF78();
      sub_29E2C1C74();
      v56 = v103;
      v55 = 0;
      LOWORD(v103) = v103;
      v30 = MEMORY[0x29EDBC7F0];
      sub_29E1E5C7C(0, &qword_2A181C2C8, &type metadata for HeartRateDataProjectionsSection, &type metadata for WristTemperatureDataProjectionsSection, MEMORY[0x29EDBC7F0]);
      sub_29E1E5C7C(0, &qword_2A181C2D0, &type metadata for DailyLogFiltersSection, &type metadata for PeriodAndCycleLengthSection, v30);
      sub_29E0CCE8C();
      sub_29E0CCFCC();
      sub_29E2C1C74();
      v65 = v46;
      v66 = v47;
      v67 = v48;
      LOWORD(v68) = v49;
      sub_29E1E4BAC(&v65);
      v106 = v71;
      *v107 = v72[0];
      *&v107[15] = *(v72 + 15);
      v102 = v67;
      v103 = v68;
      v104 = v69;
      v105 = v70;
      v100 = v65;
      v101 = v66;
      sub_29E0CC7B4(0);
      sub_29E0CC84C(0);
      sub_29E1E4624(&qword_2A181C300, sub_29E0CC7B4, sub_29E0CCC0C, sub_29E0CCD4C);
      sub_29E1E4624(&qword_2A181C338, sub_29E0CC84C, sub_29E0CCE8C, sub_29E0CCFCC);
      sub_29E2C1C74();
      v88 = v63;
      v89[0] = *v64;
      *(v89 + 15) = *&v64[15];
      v84 = v59;
      v85 = v60;
      v86 = v61;
      v87 = v62;
      v82 = v57;
      v83 = v58;
      sub_29E1E4BB8(&v82);
      v106 = v88;
      *v107 = v89[0];
      *&v107[16] = v89[1];
      v102 = v84;
      v103 = v85;
      v104 = v86;
      v105 = v87;
      v100 = v82;
      v101 = v83;
      sub_29E1E4EBC(0, &qword_2A181C2A0, sub_29E0CC7B4, sub_29E0CC84C, MEMORY[0x29EDBC7F0]);
      sub_29E0CCA34();
      sub_29E0CD10C();
      sub_29E2C1C74();
      sub_29E1E52B8(&v90, sub_29E1E4BC0);
      sub_29DECE1D4(&v99);
      sub_29DECE1D4(&v98);
      goto LABEL_22;
    }

    sub_29E1E1594(&v90);
    v39 = v92;
    v40 = v93;
    v41 = v94;
    v42 = v95;
    v37 = v90;
    v38 = v91;
    sub_29DE8AAF0(&v37);
    v106 = v43;
    *v107 = v44;
    v107[16] = v45;
    v102 = v39;
    v103 = v40;
    v104 = v41;
    v105 = v42;
    v100 = v37;
    v101 = v38;
    sub_29E1E0380(&v90, &v82);
    sub_29E0CCDE4();
    sub_29E0CCE38();
    sub_29E2C1C74();
    v52 = v79;
    v53 = v80;
    LOBYTE(v54) = v81;
    v48 = v75;
    v49 = v76;
    v50 = v77;
    v51 = v78;
    v46 = v73;
    v47 = v74;
    sub_29E1E4C54(&v46);
    v106 = v52;
    *v107 = v53;
    *&v107[16] = v54;
    v102 = v48;
    v103 = v49;
    v104 = v50;
    v105 = v51;
    v100 = v46;
    v101 = v47;
    v26 = MEMORY[0x29EDBC7F0];
    sub_29E1E5C7C(0, &qword_2A181C2B0, &type metadata for PeriodPredictionsRow, &type metadata for PeriodNotificationsRow, MEMORY[0x29EDBC7F0]);
    sub_29E1E5C7C(0, &qword_2A181C2B8, &type metadata for FertileWindowEstimatesRow, &type metadata for FertileWindowNotificationsRow, v26);
    sub_29E0CCC0C();
    sub_29E0CCD4C();
    sub_29E2C1C74();
    v71 = v88;
    v72[0] = v89[0];
    LOWORD(v72[1]) = v89[1];
    v67 = v84;
    v68 = v85;
    v69 = v86;
    v70 = v87;
    v65 = v82;
    v66 = v83;
    sub_29E1E4C60(&v65);
    v106 = v71;
    *v107 = v72[0];
    *&v107[15] = *(v72 + 15);
    v102 = v67;
    v103 = v68;
    v104 = v69;
    v105 = v70;
    v100 = v65;
    v101 = v66;
    sub_29E0CC7B4(0);
    sub_29E0CC84C(0);
    sub_29E1E4624(&qword_2A181C300, sub_29E0CC7B4, sub_29E0CCC0C, sub_29E0CCD4C);
    sub_29E1E4624(&qword_2A181C338, sub_29E0CC84C, sub_29E0CCE8C, sub_29E0CCFCC);
    sub_29E2C1C74();
    v88 = v63;
    v89[0] = *v64;
    *(v89 + 15) = *&v64[15];
    v84 = v59;
    v85 = v60;
    v86 = v61;
    v87 = v62;
    v82 = v57;
    v83 = v58;
    sub_29E1E4BB8(&v82);
    v106 = v88;
    *v107 = v89[0];
    *&v107[16] = v89[1];
    v102 = v84;
    v103 = v85;
    v104 = v86;
    v105 = v87;
    v100 = v82;
    v101 = v83;
    sub_29E1E4EBC(0, &qword_2A181C2A0, sub_29E0CC7B4, sub_29E0CC84C, MEMORY[0x29EDBC7F0]);
    sub_29E0CCA34();
    sub_29E0CD10C();
    sub_29E2C1C74();
    sub_29E1E4C68(&v90);
LABEL_22:
    v106 = v79;
    *v107 = v80;
    *&v107[16] = v81;
    v102 = v75;
    v103 = v76;
    v104 = v77;
    v105 = v78;
    v100 = v73;
    v101 = v74;
    goto LABEL_23;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      sub_29E1E0CC8(&v90);
      v41 = v94;
      v42 = v95;
      v43 = v96;
      v44 = v97;
      v37 = v90;
      v38 = v91;
      v39 = v92;
      v40 = v93;
      sub_29DE8AAF0(&v37);
      v106 = v43;
      *v107 = v44;
      v107[16] = v45;
      v102 = v39;
      v103 = v40;
      v104 = v41;
      v105 = v42;
      v100 = v37;
      v101 = v38;
      sub_29E1DFC00(&v90, &v82);
      sub_29E0CCCA4();
      sub_29E0CCCF8();
      sub_29E2C1C74();
      v52 = v79;
      v53 = v80;
      LOBYTE(v54) = v81;
      v48 = v75;
      v49 = v76;
      v50 = v77;
      v51 = v78;
      v46 = v73;
      v47 = v74;
      sub_29E1E4CC8(&v46);
      v106 = v52;
      *v107 = v53;
      *&v107[16] = v54;
      v102 = v48;
      v103 = v49;
      v104 = v50;
      v105 = v51;
      v100 = v46;
      v101 = v47;
      v25 = MEMORY[0x29EDBC7F0];
      sub_29E1E5C7C(0, &qword_2A181C2B0, &type metadata for PeriodPredictionsRow, &type metadata for PeriodNotificationsRow, MEMORY[0x29EDBC7F0]);
      sub_29E1E5C7C(0, &qword_2A181C2B8, &type metadata for FertileWindowEstimatesRow, &type metadata for FertileWindowNotificationsRow, v25);
      sub_29E0CCC0C();
      sub_29E0CCD4C();
      sub_29E2C1C74();
      v71 = v88;
      v72[0] = v89[0];
      LOWORD(v72[1]) = v89[1];
      v67 = v84;
      v68 = v85;
      v69 = v86;
      v70 = v87;
      v65 = v82;
      v66 = v83;
      sub_29E1E4C60(&v65);
      v106 = v71;
      *v107 = v72[0];
      *&v107[15] = *(v72 + 15);
      v102 = v67;
      v103 = v68;
      v104 = v69;
      v105 = v70;
      v100 = v65;
      v101 = v66;
      sub_29E0CC7B4(0);
      sub_29E0CC84C(0);
      sub_29E1E4624(&qword_2A181C300, sub_29E0CC7B4, sub_29E0CCC0C, sub_29E0CCD4C);
      sub_29E1E4624(&qword_2A181C338, sub_29E0CC84C, sub_29E0CCE8C, sub_29E0CCFCC);
      sub_29E2C1C74();
      v88 = v63;
      v89[0] = *v64;
      *(v89 + 15) = *&v64[15];
      v84 = v59;
      v85 = v60;
      v86 = v61;
      v87 = v62;
      v82 = v57;
      v83 = v58;
      sub_29E1E4BB8(&v82);
      v106 = v88;
      *v107 = v89[0];
      *&v107[16] = v89[1];
      v102 = v84;
      v103 = v85;
      v104 = v86;
      v105 = v87;
      v100 = v82;
      v101 = v83;
      sub_29E1E4EBC(0, &qword_2A181C2A0, sub_29E0CC7B4, sub_29E0CC84C, MEMORY[0x29EDBC7F0]);
      sub_29E0CCA34();
      sub_29E0CD10C();
      sub_29E2C1C74();
      sub_29E1E4CD0(&v90);
    }

    else
    {
      sub_29E1E10EC(&v90);
      v41 = v94;
      v42 = v95;
      v43 = v96;
      v44 = v97;
      v37 = v90;
      v38 = v91;
      v39 = v92;
      v40 = v93;
      sub_29DE8AAFC(&v37);
      v106 = v43;
      *v107 = v44;
      v107[16] = v45;
      v102 = v39;
      v103 = v40;
      v104 = v41;
      v105 = v42;
      v100 = v37;
      v101 = v38;
      sub_29E1E0174(&v90, &v82);
      sub_29E0CCDE4();
      sub_29E0CCE38();
      sub_29E2C1C74();
      v52 = v79;
      v53 = v80;
      LOBYTE(v54) = v81;
      v48 = v75;
      v49 = v76;
      v50 = v77;
      v51 = v78;
      v46 = v73;
      v47 = v74;
      sub_29E1E4C54(&v46);
      v106 = v52;
      *v107 = v53;
      *&v107[16] = v54;
      v102 = v48;
      v103 = v49;
      v104 = v50;
      v105 = v51;
      v100 = v46;
      v101 = v47;
      v27 = MEMORY[0x29EDBC7F0];
      sub_29E1E5C7C(0, &qword_2A181C2B0, &type metadata for PeriodPredictionsRow, &type metadata for PeriodNotificationsRow, MEMORY[0x29EDBC7F0]);
      sub_29E1E5C7C(0, &qword_2A181C2B8, &type metadata for FertileWindowEstimatesRow, &type metadata for FertileWindowNotificationsRow, v27);
      sub_29E0CCC0C();
      sub_29E0CCD4C();
      sub_29E2C1C74();
      v71 = v88;
      v72[0] = v89[0];
      LOWORD(v72[1]) = v89[1];
      v67 = v84;
      v68 = v85;
      v69 = v86;
      v70 = v87;
      v65 = v82;
      v66 = v83;
      sub_29E1E4C60(&v65);
      v106 = v71;
      *v107 = v72[0];
      *&v107[15] = *(v72 + 15);
      v102 = v67;
      v103 = v68;
      v104 = v69;
      v105 = v70;
      v100 = v65;
      v101 = v66;
      sub_29E0CC7B4(0);
      sub_29E0CC84C(0);
      sub_29E1E4624(&qword_2A181C300, sub_29E0CC7B4, sub_29E0CCC0C, sub_29E0CCD4C);
      sub_29E1E4624(&qword_2A181C338, sub_29E0CC84C, sub_29E0CCE8C, sub_29E0CCFCC);
      sub_29E2C1C74();
      v88 = v63;
      v89[0] = *v64;
      *(v89 + 15) = *&v64[15];
      v84 = v59;
      v85 = v60;
      v86 = v61;
      v87 = v62;
      v82 = v57;
      v83 = v58;
      sub_29E1E4BB8(&v82);
      v106 = v88;
      *v107 = v89[0];
      *&v107[16] = v89[1];
      v102 = v84;
      v103 = v85;
      v104 = v86;
      v105 = v87;
      v100 = v82;
      v101 = v83;
      sub_29E1E4EBC(0, &qword_2A181C2A0, sub_29E0CC7B4, sub_29E0CC84C, MEMORY[0x29EDBC7F0]);
      sub_29E0CCA34();
      sub_29E0CD10C();
      sub_29E2C1C74();
      sub_29E1E4C98(&v90);
    }

    goto LABEL_22;
  }

  if (!a1)
  {
    sub_29E1E0864(&v90);
    v41 = v94;
    v42 = v95;
    v43 = v96;
    v37 = v90;
    v38 = v91;
    v39 = v92;
    v40 = v93;
    sub_29DE8AAFC(&v37);
    v106 = v43;
    *v107 = v44;
    v107[16] = v45;
    v102 = v39;
    v103 = v40;
    v104 = v41;
    v105 = v42;
    v100 = v37;
    v101 = v38;
    sub_29E1E4D00(&v90, &v82);
    sub_29E0CCCA4();
    sub_29E0CCCF8();
    sub_29E2C1C74();
    v52 = v79;
    v53 = v80;
    LOBYTE(v54) = v81;
    v48 = v75;
    v49 = v76;
    v50 = v77;
    v51 = v78;
    v46 = v73;
    v47 = v74;
    sub_29E1E4CC8(&v46);
    v106 = v52;
    *v107 = v53;
    *&v107[16] = v54;
    v102 = v48;
    v103 = v49;
    v104 = v50;
    v105 = v51;
    v100 = v46;
    v101 = v47;
    v24 = MEMORY[0x29EDBC7F0];
    sub_29E1E5C7C(0, &qword_2A181C2B0, &type metadata for PeriodPredictionsRow, &type metadata for PeriodNotificationsRow, MEMORY[0x29EDBC7F0]);
    sub_29E1E5C7C(0, &qword_2A181C2B8, &type metadata for FertileWindowEstimatesRow, &type metadata for FertileWindowNotificationsRow, v24);
    sub_29E0CCC0C();
    sub_29E0CCD4C();
    sub_29E2C1C74();
    v71 = v88;
    v72[0] = v89[0];
    LOWORD(v72[1]) = v89[1];
    v67 = v84;
    v68 = v85;
    v69 = v86;
    v70 = v87;
    v65 = v82;
    v66 = v83;
    sub_29E1E4C60(&v65);
    v106 = v71;
    *v107 = v72[0];
    *&v107[15] = *(v72 + 15);
    v102 = v67;
    v103 = v68;
    v104 = v69;
    v105 = v70;
    v100 = v65;
    v101 = v66;
    sub_29E0CC7B4(0);
    sub_29E0CC84C(0);
    sub_29E1E4624(&qword_2A181C300, sub_29E0CC7B4, sub_29E0CCC0C, sub_29E0CCD4C);
    sub_29E1E4624(&qword_2A181C338, sub_29E0CC84C, sub_29E0CCE8C, sub_29E0CCFCC);
    sub_29E2C1C74();
    v88 = v63;
    v89[0] = *v64;
    *(v89 + 15) = *&v64[15];
    v84 = v59;
    v85 = v60;
    v86 = v61;
    v87 = v62;
    v82 = v57;
    v83 = v58;
    sub_29E1E4BB8(&v82);
    v106 = v88;
    *v107 = v89[0];
    *&v107[16] = v89[1];
    v102 = v84;
    v103 = v85;
    v104 = v86;
    v105 = v87;
    v100 = v82;
    v101 = v83;
    sub_29E1E4EBC(0, &qword_2A181C2A0, sub_29E0CC7B4, sub_29E0CC84C, MEMORY[0x29EDBC7F0]);
    sub_29E0CCA34();
    sub_29E0CD10C();
    sub_29E2C1C74();
    sub_29E1E4D38(&v90);
    goto LABEL_22;
  }

  sub_29E1E1D88(&v82);
  sub_29E1E4BA0(&v82);
  v79 = v88;
  v80 = v89[0];
  v81 = v89[1];
  v75 = v84;
  v76 = v85;
  v77 = v86;
  v78 = v87;
  v73 = v82;
  v74 = v83;
  sub_29E1E4EBC(0, &qword_2A181C2A0, sub_29E0CC7B4, sub_29E0CC84C, MEMORY[0x29EDBC7F0]);
  sub_29E0CCA34();
  sub_29E0CD10C();
  sub_29E2C1C74();
LABEL_23:
  v31 = *v107;
  *(a2 + 96) = v106;
  *(a2 + 112) = v31;
  *(a2 + 128) = *&v107[16];
  v32 = v103;
  *(a2 + 32) = v102;
  *(a2 + 48) = v32;
  v33 = v105;
  *(a2 + 64) = v104;
  *(a2 + 80) = v33;
  result = v101;
  *a2 = v100;
  *(a2 + 16) = result;
  return result;
}

double sub_29E1D3B08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29E2C1AA4();
  v22 = 1;
  sub_29E1D3C70(a1, a2, &v16);
  v25 = v18;
  v26 = v19;
  v23 = v16;
  v24 = v17;
  v28[2] = v18;
  v28[3] = v19;
  v28[4] = v20;
  v28[1] = v17;
  v27 = v20;
  v28[0] = v16;
  sub_29E1E51B8(&v23, &v15, sub_29E1E5220);
  sub_29E1E52B8(v28, sub_29E1E5220);
  *&v21[23] = v24;
  *&v21[39] = v25;
  *&v21[55] = v26;
  *&v21[71] = v27;
  *&v21[7] = v23;
  v7 = v22;
  v8 = sub_29E2C26A4();
  KeyPath = swift_getKeyPath();
  v10 = swift_allocObject();
  v11 = *&v21[48];
  *(a3 + 49) = *&v21[32];
  *(a3 + 65) = v11;
  *(a3 + 81) = *&v21[64];
  result = *v21;
  v13 = *&v21[16];
  *(a3 + 17) = *v21;
  *(v10 + 16) = 1;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v7;
  v14 = *&v21[79];
  *(a3 + 33) = v13;
  *(a3 + 96) = v14;
  *(a3 + 104) = v8;
  *(a3 + 112) = KeyPath;
  *(a3 + 120) = sub_29E1E5DD8;
  *(a3 + 128) = v10;
  return result;
}

double sub_29E1D3C70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2C3384();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v38[-v12];
  v46 = a1;
  v47 = a2;
  sub_29DE9DE68();
  sub_29E2BF404();
  v14 = sub_29E2C2294();
  v40 = v15;
  v41 = v14;
  v39 = v16;
  v42 = v17;
  sub_29E2C3314();
  (*(v8 + 16))(v10, v13, v7);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v18 = qword_2A1A67F80;
  sub_29E2BCC74();
  v19 = sub_29E2C3414();
  v21 = v20;
  (*(v8 + 8))(v13, v7);
  v46 = v19;
  v47 = v21;
  v22 = sub_29E2C2294();
  v24 = v23;
  v26 = v25;
  LODWORD(v46) = sub_29E2C1DB4();
  v27 = sub_29E2C2224();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_29DED6478(v22, v24, v26 & 1);

  v34 = v39 & 1;
  LOBYTE(v46) = v39 & 1;
  v45 = v39 & 1;
  v44 = 1;
  v31 &= 1u;
  v43 = v31;
  v36 = v40;
  v35 = v41;
  *a3 = v41;
  *(a3 + 8) = v36;
  *(a3 + 16) = v34;
  *(a3 + 24) = v42;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = v27;
  *(a3 + 56) = v29;
  *(a3 + 64) = v31;
  *(a3 + 72) = v33;
  sub_29DE93208(v35, v36, v34);
  sub_29E2BF404();
  sub_29DE93208(v27, v29, v31);
  sub_29E2BF404();
  sub_29DED6478(v27, v29, v31);

  sub_29DED6478(v35, v36, v46);

  return result;
}

uint64_t sub_29E1D3FC8@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v40 = a1;
  sub_29E1DF47C(0, &qword_2A181F3F0, MEMORY[0x29EDBC7E8], a2);
  v39 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v36 - v4;
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2C3384();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v36 - v12;
  sub_29E1DFD60(0, &qword_2A181F360, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
  v38 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v37 = &v36 - v15;
  if (v2[2])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_29E2C1214();

    if ((v46[0] & 1) == 0)
    {
      swift_storeEnumTagMultiPayload();
      sub_29E1DED28(v32);
      return sub_29E2C1C74();
    }

    sub_29E2C3314();
    (*(v8 + 16))(v10, v13, v7);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v16 = qword_2A1A67F80;
    sub_29E2BCC74();
    v17 = sub_29E2C3414();
    v19 = v18;
    (*(v8 + 8))(v13, v7);
    v21 = v2[12];
    v20 = v2[13];
    LOBYTE(v41) = 0;
    sub_29E2BF404();
    sub_29E2C27C4();
    if (v2[6])
    {
      v22 = v46[0];
      v23 = *(&v46[0] + 1);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_29E2C1214();

      v24 = sub_29E0FA190(v46[0]);
      LOBYTE(v41) = v22;
      *(&v41 + 1) = v23;
      *&v42 = v17;
      *(&v42 + 1) = v19;
      *&v43 = v24;
      *(&v43 + 1) = v25;
      *&v44 = v26;
      *(&v44 + 1) = v21;
      v45 = v20;
      sub_29E1E53E8(0, &qword_2A181F368, sub_29DF91C14, &type metadata for MenstrualCyclesLearnMoreView, type metadata accessor for LearnMoreFooterText);
      sub_29E1DEE08();
      v27 = v37;
      sub_29E2C23B4();
      v46[2] = v43;
      v46[3] = v44;
      v47 = v45;
      v46[0] = v41;
      v46[1] = v42;
      sub_29E1DF514(v46);
      v28 = MEMORY[0x29EDBC0A8];
      v29 = MEMORY[0x29EDBC558];
      sub_29E1DF5A8(v27, v5, &qword_2A181F360, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558], sub_29E1DFD60);
      swift_storeEnumTagMultiPayload();
      sub_29E1DED28(v30);
      sub_29E2C1C74();
      return sub_29E1DF61C(v27, &qword_2A181F360, v28, v29, sub_29E1DFD60);
    }

    type metadata accessor for DeviationsFeatureStatusModel(0);
    v33 = &qword_2A1819820;
    v34 = type metadata accessor for DeviationsFeatureStatusModel;
    v35 = &unk_29E2D3CB8;
  }

  else
  {
    type metadata accessor for AnalysisModel(0);
    v33 = &qword_2A1819808;
    v34 = type metadata accessor for AnalysisModel;
    v35 = &unk_29E2DF480;
  }

  sub_29E1E5D80(v33, v34, v35);
  result = sub_29E2C1804();
  __break(1u);
  return result;
}

uint64_t sub_29E1D45D8@<X0>(uint64_t a1@<X8>)
{
  v29[1] = a1;
  v3 = sub_29E2C1AD4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1DF47C(0, &qword_2A181F358, MEMORY[0x29EDBC7F0], v5);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = v29 - v9;
  sub_29E1DE9C8(0);
  v12 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 88);
  *&v31 = *(v2 + 80);
  *(&v31 + 1) = v15;
  sub_29DE9DE68();
  sub_29E2BF404();
  *&v31 = sub_29E2C2294();
  *(&v31 + 1) = v16;
  v32 = v17 & 1;
  v33 = v18;
  sub_29E1D3FC8(v10, v19);
  v30 = v2;
  sub_29E1DF3E4(0, &qword_2A181F388, &type metadata for ForcedOffFromCycleFactors, MEMORY[0x29EDBC7F0]);
  sub_29E1DEB10();
  sub_29E1DEC8C(v20);
  sub_29E2C29E4();
  sub_29E2C1AC4();
  sub_29E1DEA10(0);
  v22 = *(v21 + 36);
  (*(v4 + 16))(&v14[v22], v7, v3);
  v23 = *(v4 + 56);
  v23(&v14[v22], 0, 1, v3);
  KeyPath = swift_getKeyPath();
  v25 = &v14[*(v12 + 36)];
  sub_29E12E9B8(0);
  v27 = *(v26 + 28);
  (*(v4 + 32))(v25 + v27, v7, v3);
  v23(v25 + v27, 0, 1, v3);
  *v25 = KeyPath;
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v31 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000019, 0x800000029E301740);
  sub_29E1DF254();
  sub_29E2C23B4();

  return sub_29E1E52B8(v14, sub_29E1DE9C8);
}

uint64_t sub_29E1D4978@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E1DF3E4(0, &qword_2A181F3E8, &type metadata for ForcedOffFromCycleFactors, MEMORY[0x29EDBC7E8]);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = (&v14 - v5);
  sub_29E1E5C7C(0, &qword_2A181A9B8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC288]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v14 - v10;
  if (a1[2])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_29E2C1214();

    v12 = a1[9];
    if (v15)
    {
      *v6 = a1[8];
      v6[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_29E1DEBB4();
      sub_29E1DEC38();
      sub_29E2BF404();
      return sub_29E2C1C74();
    }

    else
    {
      v16 = a1[8];
      v17 = v12;
      type metadata accessor for FeatureSettingsModel(0);
      sub_29E1E5D80(&qword_2A1819800, type metadata accessor for FeatureSettingsModel, &unk_29E2D3CB8);
      v14 = a2;
      sub_29E2BF404();
      sub_29E2C17F4();
      swift_getKeyPath();
      sub_29E2C1814();

      sub_29DE9DE68();
      sub_29E2C28D4();
      (*(v9 + 16))(v6, v11, v8);
      swift_storeEnumTagMultiPayload();
      sub_29E1DEBB4();
      sub_29E1DEC38();
      sub_29E2C1C74();
      return (*(v9 + 8))(v11, v8);
    }
  }

  else
  {
    type metadata accessor for AnalysisModel(0);
    sub_29E1E5D80(&qword_2A1819808, type metadata accessor for AnalysisModel, &unk_29E2DF480);
    result = sub_29E2C1804();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E1D4D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v44 = a3;
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C3384();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v37 - v10;
  v12 = sub_29E2C1D34();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1E5538(0, v14);
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1E59A8(0, v20);
  v40 = *(v23 - 8);
  v41 = v23;
  MEMORY[0x2A1C7C4A8](v23);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v42;
  v46 = a2;
  sub_29E1E55E8(0);
  sub_29E1E57CC(&qword_2A181F738, sub_29E1E55E8, sub_29E1E5848);
  sub_29E2C21C4();
  sub_29E2C1D24();
  v26 = sub_29E1E5D80(&qword_2A181F758, sub_29E1E5538, MEMORY[0x29EDBC0F0]);
  sub_29E2C25B4();
  v27 = *(v13 + 8);
  v42 = v12;
  v27(v16, v12);
  v28 = *(v19 + 8);
  v39 = v18;
  v28(v22, v18);
  v29 = v38;
  sub_29E2C3314();
  v30 = v37;
  (*(v37 + 16))(v8, v11, v29);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v31 = qword_2A1A67F80;
  sub_29E2BCC74();
  v32 = sub_29E2C3414();
  v34 = v33;
  (*(v30 + 8))(v11, v29);
  v51 = v32;
  v52 = v34;
  v47 = v39;
  v48 = v42;
  v49 = v26;
  v50 = MEMORY[0x29EDBC010];
  swift_getOpaqueTypeConformance2();
  sub_29DE9DE68();
  v35 = v41;
  sub_29E2C23E4();

  return (*(v40 + 8))(v25, v35);
}

uint64_t sub_29E1D5288(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_29DF3D018(0);
  sub_29E1E50F8(0, &qword_2A181F720, sub_29E1E5738, MEMORY[0x29EDBCBF8]);
  sub_29E1E5D80(&qword_2A181F730, sub_29DF3D018, MEMORY[0x29EDC9A80]);
  sub_29E1E5848();
  sub_29E1E5D80(&qword_2A181F760, type metadata accessor for HKMCDeviationType, &protocol conformance descriptor for HKMCDeviationType);

  return sub_29E2C29B4();
}

uint64_t sub_29E1D53F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2C3384();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v26 - v12;
  v14 = *a1;
  v15 = *a1 <= 1;
  v26 = a2;
  if (!v15)
  {
    if (v14 == 2 || v14 == 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    result = sub_29E2C4724();
    __break(1u);
    return result;
  }

  if (v14 && v14 != 1)
  {
    goto LABEL_13;
  }

LABEL_10:
  sub_29E2C3314();
  (*(v8 + 16))(v10, v13, v7);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v16 = qword_2A1A67F80;
  sub_29E2BCC74();
  v17 = sub_29E2C3414();
  v19 = v18;
  (*(v8 + 8))(v13, v7);
  v27 = v17;
  v28 = v19;
  sub_29DE9DE68();
  v27 = sub_29E2C2294();
  v28 = v20;
  v29 = v21 & 1;
  v30 = v22;
  MEMORY[0x2A1C7C4A8](v27);
  v23 = v26;
  *(&v26 - 4) = v14;
  *(&v26 - 3) = v23;
  v25 = a3;
  sub_29E1E5738(0);
  sub_29E1E58F8();
  return sub_29E2C2A04();
}

uint64_t sub_29E1D5764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v7 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v8 = sub_29E2C3384();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v34 - v13;
  sub_29E1E5C7C(0, &qword_2A181A9B8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC288]);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v34 - v16;
  v35 = v19;
  v36 = v18;
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_9;
    }

LABEL_21:
    result = sub_29E2C4724();
    __break(1u);
    return result;
  }

  if (a1 && a1 != 1)
  {
    goto LABEL_21;
  }

LABEL_9:
  v37 = a4;
  sub_29E2C3314();
  (*(v9 + 16))(v11, v14, v8);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v20 = qword_2A1A67F80;
  sub_29E2BCC74();
  v21 = sub_29E2C3414();
  v23 = v22;
  (*(v9 + 8))(v14, v8);
  v39 = v21;
  v40 = v23;
  sub_29E2C3714();

  v24 = sub_29E2C3704();
  v25 = swift_allocObject();
  v26 = MEMORY[0x29EDCA390];
  v25[2] = v24;
  v25[3] = v26;
  v27 = v34;
  v25[4] = a2;
  v25[5] = v27;
  v25[6] = a1;

  v28 = sub_29E2C3704();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = v26;
  v29[4] = a2;
  v29[5] = v27;
  v29[6] = a1;
  sub_29E2C2954();
  sub_29DE9DE68();
  sub_29E2C28D4();
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v30 = 0xE900000000000064;
  v38 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000020, 0x800000029E3016A0);
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v30 = 0xE900000000000072;
      v31 = 0x616C756765727249;
    }

    else
    {
      v30 = 0xEA0000000000746ELL;
      v31 = 0x6575716572666E49;
    }
  }

  else if (a1)
  {
    v30 = 0xE800000000000000;
    v31 = 0x676E6974746F7053;
  }

  else
  {
    v31 = 0x65676E6F6C6F7250;
  }

  MEMORY[0x29ED7FCC0](v31, v30);

  sub_29E1DEBB4();
  v32 = v36;
  sub_29E2C23B4();

  return (*(v35 + 8))(v17, v32);
}

void sub_29E1D5CF4(uint64_t a1@<X2>, uint64_t a3@<X4>, _BYTE *a4@<X8>)
{
  if (a1)
  {

    LOBYTE(a3) = sub_29E233164(a3);

    *a4 = a3 & 1;
  }

  else
  {
    type metadata accessor for DeviationsFeatureStatusModel(0);
    sub_29E1E5D80(&qword_2A1819820, type metadata accessor for DeviationsFeatureStatusModel, &unk_29E2D3CB8);
    sub_29E2C1804();
    __break(1u);
  }
}

void sub_29E1D5DA8(char *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v8 = *a1;

    sub_29E23320C(v8, a7);
  }

  else
  {
    type metadata accessor for DeviationsFeatureStatusModel(0);
    sub_29E1E5D80(&qword_2A1819820, type metadata accessor for DeviationsFeatureStatusModel, &unk_29E2D3CB8);
    sub_29E2C1804();
    __break(1u);
  }
}

uint64_t sub_29E1D5E68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v21[-v9];
  sub_29E2C3314();
  (*(v5 + 16))(v7, v10, v4);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  v12 = sub_29E2C3414();
  v14 = v13;
  (*(v5 + 8))(v10, v4);
  v16 = v1[6];
  v15 = v1[7];
  v21[7] = 0;
  sub_29E2BF404();
  sub_29E2C27C4();
  v17 = v23;
  *a1 = v22;
  *(a1 + 8) = v17;
  *(a1 + 16) = v12;
  *(a1 + 24) = v14;
  *(a1 + 56) = v16;
  *(a1 + 64) = v15;
  if (v1[4])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_29E2C1214();

    result = sub_29E0FA190(v22);
    *(a1 + 32) = result;
    *(a1 + 40) = v19;
    *(a1 + 48) = v20;
  }

  else
  {
    type metadata accessor for DeviationsFeatureStatusModel(0);
    sub_29E1E5D80(&qword_2A1819820, type metadata accessor for DeviationsFeatureStatusModel, &unk_29E2D3CB8);
    result = sub_29E2C1804();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E1D616C@<X0>(uint64_t *a1@<X8>)
{
  v28 = a1;
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v24 - v7;
  sub_29E2C3314();
  v9 = *(v3 + 16);
  v9(v5, v8, v2);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v26 = "MINDER_CANCEL_PROMPT";
  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = v10;
  v12 = sub_29E2C3414();
  v27 = v13;
  v14 = *(v3 + 8);
  v14(v8, v2);
  sub_29E2C3314();
  v9(v5, v8, v2);
  sub_29E2BCC74();
  v15 = sub_29E2C3414();
  v24 = v16;
  v25 = v15;
  v14(v8, v2);
  sub_29E2C3314();
  v9(v5, v8, v2);
  sub_29E2BCC74();
  v17 = sub_29E2C3414();
  v19 = v18;
  result = (v14)(v8, v2);
  v22 = v27;
  v21 = v28;
  *v28 = v12;
  v21[1] = v22;
  v23 = v24;
  v21[2] = v25;
  v21[3] = v23;
  v21[4] = v17;
  v21[5] = v19;
  return result;
}

uint64_t sub_29E1D64A0@<X0>(_OWORD *a1@<X8>)
{
  if (v2[4])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_29E2C1214();

    if ((v22 & 1) == 0)
    {
      sub_29E1D616C(&v22);
      v21 = 0;
      v25[24] = 0;
      sub_29E1E53E8(0, &qword_2A181F368, sub_29DF91C14, &type metadata for MenstrualCyclesLearnMoreView, type metadata accessor for LearnMoreFooterText);
      sub_29E131570();
      sub_29E1DEE08();
      sub_29E2C1C74();
      v15 = v19;
      *v16 = v20[0];
      *&v16[9] = *(v20 + 9);
      v13 = v17;
      v14 = v18;
      LOBYTE(v10[0]) = 0;
      v16[25] = 0;
      goto LABEL_8;
    }

    if (*v2)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_29E2C1214();

      if (v22)
      {
        sub_29E1D5E68(v10);
        v24 = v10[2];
        *v25 = v10[3];
        *&v25[16] = v11;
        v22 = v10[0];
        v23 = v10[1];
        v12 = 1;
        v25[24] = 1;
        sub_29E1E4B04(v10, &v13);
        sub_29E1E53E8(0, &qword_2A181F368, sub_29DF91C14, &type metadata for MenstrualCyclesLearnMoreView, type metadata accessor for LearnMoreFooterText);
        sub_29E131570();
        sub_29E1DEE08();
        sub_29E2C1C74();
        v24 = v19;
        *v25 = v20[0];
        *&v25[9] = *(v20 + 9);
        v22 = v17;
        v23 = v18;
        v21 = 0;
        v25[25] = 0;
        sub_29E1E4058(0);
        sub_29E1E45DC();
        sub_29E2C1C74();
        result = sub_29E1DF514(v10);
        v24 = v15;
        *v25 = *v16;
        *&v25[10] = *&v16[10];
        v22 = v13;
        v23 = v14;
LABEL_9:
        v5 = *v25;
        a1[2] = v24;
        a1[3] = v5;
        *(a1 + 58) = *&v25[10];
        v6 = v23;
        *a1 = v22;
        a1[1] = v6;
        return result;
      }

      LOBYTE(v17) = 1;
      v16[25] = 1;
LABEL_8:
      sub_29E1E4058(0);
      sub_29E1E45DC();
      result = sub_29E2C1C74();
      goto LABEL_9;
    }

    type metadata accessor for AnalysisModel(0);
    v7 = &qword_2A1819808;
    v8 = type metadata accessor for AnalysisModel;
    v9 = &unk_29E2DF480;
  }

  else
  {
    type metadata accessor for DeviationsFeatureStatusModel(0);
    v7 = &qword_2A1819820;
    v8 = type metadata accessor for DeviationsFeatureStatusModel;
    v9 = &unk_29E2D3CB8;
  }

  sub_29E1E5D80(v7, v8, v9);
  result = sub_29E2C1804();
  __break(1u);
  return result;
}

uint64_t sub_29E1D687C(__n128 a1)
{
  if (!v1[4])
  {
    type metadata accessor for DeviationsFeatureStatusModel(0);
    v3 = &qword_2A1819820;
    v4 = type metadata accessor for DeviationsFeatureStatusModel;
    v5 = &unk_29E2D3CB8;
LABEL_9:
    sub_29E1E5D80(v3, v4, v5);
    result = sub_29E2C1804();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_29E2C1214();

  if (v7)
  {
    if (*v1)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_29E2C1214();

      return v6;
    }

    type metadata accessor for AnalysisModel(0);
    v3 = &qword_2A1819808;
    v4 = type metadata accessor for AnalysisModel;
    v5 = &unk_29E2DF480;
    goto LABEL_9;
  }

  return 1;
}

uint64_t sub_29E1D6A08()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x2A1C7C4A8](v6);
  v9 = &v14[-v8];
  if (sub_29E1D687C(v7))
  {
    goto LABEL_6;
  }

  if (*(v0 + 32))
  {

    if (sub_29E233420())
    {
    }

    else
    {
      v13 = sub_29E232F44();

      if (v13)
      {
        return 0;
      }
    }

LABEL_6:
    sub_29E2C3314();
    (*(v3 + 16))(v5, v9, v2);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v10 = qword_2A1A67F80;
    sub_29E2BCC74();
    v11 = sub_29E2C3414();
    (*(v3 + 8))(v9, v2);
    return v11;
  }

  type metadata accessor for DeviationsFeatureStatusModel(0);
  sub_29E1E5D80(&qword_2A1819820, type metadata accessor for DeviationsFeatureStatusModel, &unk_29E2D3CB8);
  result = sub_29E2C1804();
  __break(1u);
  return result;
}

uint64_t sub_29E1D6CD4@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v3 = sub_29E2C1AD4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v20 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1E4EBC(0, &qword_2A181F5C0, sub_29E1E3FF8, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
  v19 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  sub_29E1E40F0(0);
  v22 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1D64A0(v28);
  v26 = v28[2];
  v27[0] = v29[0];
  *(v27 + 10) = *(v29 + 10);
  v24 = v28[0];
  v25 = v28[1];
  sub_29E1E3FF8(0);
  sub_29E1E455C(&qword_2A181F618, sub_29E1E3FF8, sub_29E1E45DC);
  sub_29E2C23B4();
  v30[2] = v26;
  v31[0] = v27[0];
  *(v31 + 10) = *(v27 + 10);
  v30[0] = v24;
  v30[1] = v25;
  sub_29E1E52B8(v30, sub_29E1E3FF8);
  v23 = v2;
  sub_29E1E4250(0, &qword_2A181F5F0, sub_29E1E42E0);
  sub_29E1E46B8();
  sub_29E1E4784();
  sub_29E2C2A04();
  v10 = v20;
  sub_29E2C1AC4();
  sub_29E1E4138(0);
  v12 = *(v11 + 36);
  (*(v4 + 16))(&v9[v12], v10, v3);
  v13 = *(v4 + 56);
  v13(&v9[v12], 0, 1, v3);
  KeyPath = swift_getKeyPath();
  v15 = &v9[*(v22 + 36)];
  sub_29E12E9B8(0);
  v17 = *(v16 + 28);
  (*(v4 + 32))(v15 + v17, v10, v3);
  v13(v15 + v17, 0, 1, v3);
  *v15 = KeyPath;
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v28[0] = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000020, 0x800000029E3016A0);
  sub_29E1E48B0();
  sub_29E2C23B4();

  return sub_29E1E4A9C(v9, sub_29E1E40F0);
}

void sub_29E1D7110(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_29E1E42E0(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DeviationsFeatureStatusModel(0);
  sub_29E1E5D80(&qword_2A1819820, type metadata accessor for DeviationsFeatureStatusModel, &unk_29E2D3CB8);
  v8 = sub_29E2C1824();
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = v8;
    v12 = v9;

    v13 = sub_29E2C1074();
    v28 = v11;
    v29 = v12;
    v30 = v13;
    v31 = v10;
    MEMORY[0x2A1C7C4A8](v13);
    *(&v22 - 2) = a1;
    sub_29E014E98(0);
    sub_29E1E43D0(0, &qword_2A181F600, sub_29E0CDE8C, &type metadata for DeviationDetectionDetail);
    v14 = sub_29DE9DE68();
    v24 = MEMORY[0x29EDBCA18];
    v25 = MEMORY[0x29EDC99B0];
    v26 = MEMORY[0x29EDBCA10];
    v27 = v14;
    swift_getOpaqueTypeConformance2();
    sub_29E1E4434();
    sub_29E2C15F4();
    v16 = sub_29E1D687C(v15);
    KeyPath = swift_getKeyPath();
    v18 = swift_allocObject();
    *(v18 + 16) = v16 & 1;
    v19 = v23;
    (*(v5 + 32))(v23, v7, v4);
    sub_29E1E4250(0, &qword_2A181F5F0, sub_29E1E42E0);
    v21 = (v19 + *(v20 + 36));
    *v21 = KeyPath;
    v21[1] = sub_29E1E5DD8;
    v21[2] = v18;
  }

  else
  {
    sub_29E2C1804();
    __break(1u);
  }
}

double sub_29E1D73F0()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = v20 - v6;
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  v11 = v10;
  (*(v2 + 8))(v7, v1);
  v21 = v9;
  v22 = v11;
  sub_29DE9DE68();
  v12 = sub_29E2C2294();
  v14 = v13;
  v21 = v12;
  v22 = v13;
  v16 = v15 & 1;
  v23 = v15 & 1;
  v24 = v17;
  v20[1] = sub_29E1D6A08();
  v20[2] = v18;
  sub_29E2C2534();

  sub_29DED6478(v12, v14, v16);

  return result;
}

uint64_t sub_29E1D76E0()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v16[-v7];
  if (!v0[10])
  {
    type metadata accessor for DeviationsFeatureStatusModel(0);
    v12 = &qword_2A1819820;
    v13 = type metadata accessor for DeviationsFeatureStatusModel;
LABEL_19:
    v14 = v13;
    v15 = &unk_29E2D3CB8;
    goto LABEL_20;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_29E2C1214();

  if ((v16[15] & 1) == 0)
  {

    if (v0[4])
    {
      goto LABEL_10;
    }

LABEL_17:
    type metadata accessor for AnalysisModel(0);
    v12 = &qword_2A1819808;
    v14 = type metadata accessor for AnalysisModel;
    v15 = &unk_29E2DF480;
LABEL_20:
    sub_29E1E5D80(v12, v14, v15);
    result = sub_29E2C1804();
    __break(1u);
    return result;
  }

  if (!v0[4])
  {
    goto LABEL_17;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_29E2C1214();

  if ((v16[9] & 1) == 0)
  {
    sub_29E232F44();
  }

LABEL_10:
  swift_getKeyPath();
  swift_getKeyPath();

  sub_29E2C1214();

  if ((v16[14] & 1) == 0)
  {
    if (v0[2])
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_29E2C1214();

      goto LABEL_13;
    }

    type metadata accessor for FeatureSettingsModel(0);
    v12 = &qword_2A1819800;
    v13 = type metadata accessor for FeatureSettingsModel;
    goto LABEL_19;
  }

LABEL_13:
  sub_29E2C3314();
  (*(v3 + 16))(v5, v8, v2);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v9 = qword_2A1A67F80;
  sub_29E2BCC74();
  v10 = sub_29E2C3414();
  (*(v3 + 8))(v8, v2);
  return v10;
}

uint64_t sub_29E1D7BAC@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v3 = sub_29E2C1AD4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1DF67C(0);
  v8 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v25 = sub_29E1D76E0();
  *(&v25 + 1) = v11;
  sub_29DE9DE68();
  *&v25 = sub_29E2C2294();
  *(&v25 + 1) = v12;
  v26 = v13 & 1;
  v27 = v14;
  v24 = v2;
  sub_29E1DFB18(0, &qword_2A181F410, MEMORY[0x29EDBC7F0]);
  sub_29E1DF798();
  sub_29E2C2A04();
  sub_29E2C1AC4();
  sub_29E1DF6C4(0);
  v16 = *(v15 + 36);
  (*(v4 + 16))(&v10[v16], v6, v3);
  v17 = *(v4 + 56);
  v17(&v10[v16], 0, 1, v3);
  KeyPath = swift_getKeyPath();
  v19 = &v10[*(v8 + 36)];
  sub_29E12E9B8(0);
  v21 = *(v20 + 28);
  (*(v4 + 32))(v19 + v21, v6, v3);
  v17(v19 + v21, 0, 1, v3);
  *v19 = KeyPath;
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v25 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD00000000000001BLL, 0x800000029E301720);
  sub_29E1DF92C();
  sub_29E2C23B4();

  return sub_29E1E52B8(v10, sub_29E1DF67C);
}

uint64_t sub_29E1D7EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E1DFB18(0, &qword_2A181F450, MEMORY[0x29EDBC7E8]);
  v45 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = (&v41 - v5);
  v7 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v43 = sub_29E2C3384();
  v42 = *(v43 - 8);
  MEMORY[0x2A1C7C4A8](v43);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v41 - v11;
  sub_29E1DF3E4(0, &qword_2A181F418, &type metadata for NotificationWhenNotAvailable, MEMORY[0x29EDBC558]);
  v44 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v41 - v14;
  if (*(a1 + 32))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_29E2C1214();

    if (v46[0])
    {
      v16 = *(a1 + 120);
      *v6 = *(a1 + 112);
      v6[1] = v16;
      swift_storeEnumTagMultiPayload();
      sub_29E1DF834();
      sub_29E1DEC38();
      sub_29E2BF404();
      return sub_29E2C1C74();
    }

    else
    {
      v41 = a2;
      v48 = *(a1 + 112);
      v49 = v48;
      sub_29E2C3714();
      sub_29E1DFBA4(&v49, v46);
      sub_29E1DFC00(a1, v46);
      v18 = sub_29E2C3704();
      v19 = swift_allocObject();
      v20 = MEMORY[0x29EDCA390];
      *(v19 + 16) = v18;
      *(v19 + 24) = v20;
      v21 = *(a1 + 80);
      *(v19 + 96) = *(a1 + 64);
      *(v19 + 112) = v21;
      v22 = *(a1 + 112);
      *(v19 + 128) = *(a1 + 96);
      *(v19 + 144) = v22;
      v23 = *(a1 + 16);
      *(v19 + 32) = *a1;
      *(v19 + 48) = v23;
      v24 = *(a1 + 48);
      *(v19 + 64) = *(a1 + 32);
      *(v19 + 80) = v24;
      sub_29E1DFC00(a1, v46);
      v25 = sub_29E2C3704();
      v26 = swift_allocObject();
      *(v26 + 16) = v25;
      *(v26 + 24) = v20;
      v27 = *(a1 + 80);
      *(v26 + 96) = *(a1 + 64);
      *(v26 + 112) = v27;
      v28 = *(a1 + 112);
      *(v26 + 128) = *(a1 + 96);
      *(v26 + 144) = v28;
      v29 = *(a1 + 16);
      *(v26 + 32) = *a1;
      *(v26 + 48) = v29;
      v30 = *(a1 + 48);
      *(v26 + 64) = *(a1 + 32);
      *(v26 + 80) = v30;
      sub_29E2C2954();
      sub_29DE9DE68();
      sub_29E2C28D4();
      sub_29E2C3314();
      v31 = v42;
      v32 = v43;
      (*(v42 + 16))(v9, v12, v43);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v33 = qword_2A1A67F80;
      sub_29E2BCC74();
      v34 = sub_29E2C3414();
      v36 = v35;
      (*(v31 + 8))(v12, v32);
      v48 = *(a1 + 96);
      sub_29E1E5318(0, &qword_2A1819E88, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
      sub_29E2C27F4();
      v37 = v46[1];
      v38 = v47;
      v39 = &v15[*(v44 + 36)];
      *v39 = v46[0];
      *(v39 + 1) = v37;
      v39[16] = v38;
      *(v39 + 3) = v34;
      *(v39 + 4) = v36;
      v39[40] = 0;
      v40 = MEMORY[0x29EDBC558];
      sub_29E1DF5A8(v15, v6, &qword_2A181F418, &type metadata for NotificationWhenNotAvailable, MEMORY[0x29EDBC558], sub_29E1DF3E4);
      swift_storeEnumTagMultiPayload();
      sub_29E1DF834();
      sub_29E1DEC38();
      sub_29E2C1C74();
      return sub_29E1DF61C(v15, &qword_2A181F418, &type metadata for NotificationWhenNotAvailable, v40, sub_29E1DF3E4);
    }
  }

  else
  {
    type metadata accessor for AnalysisModel(0);
    sub_29E1E5D80(&qword_2A1819808, type metadata accessor for AnalysisModel, &unk_29E2DF480);
    result = sub_29E2C1804();
    __break(1u);
  }

  return result;
}

void sub_29E1D851C(void *a1@<X2>, _BYTE *a2@<X8>)
{
  if (*a1)
  {
    if (([*(*a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18LocalSettingsModel_settingsManager) menstruationNotificationsEnabled] & 1) == 0)
    {
      v4 = 0;
      goto LABEL_6;
    }

    if (a1[6])
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_29E2C1214();

      v4 = v8;
LABEL_6:
      *a2 = v4;
      return;
    }

    type metadata accessor for HealthNotificationsModel(0);
    v5 = &qword_2A1819810;
    v6 = type metadata accessor for HealthNotificationsModel;
    v7 = &unk_29E2D928C;
  }

  else
  {
    type metadata accessor for LocalSettingsModel();
    v5 = &qword_2A181BBE0;
    v6 = type metadata accessor for LocalSettingsModel;
    v7 = &unk_29E2DC1F4;
  }

  sub_29E1E5D80(v5, v6, v7);
  sub_29E2C1804();
  __break(1u);
}

uint64_t sub_29E1D867C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4[6])
  {
    v5 = *a1;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_29E2C1214();

    if ((v10 & 1) == 0)
    {
LABEL_5:
      sub_29E1E5318(0, &qword_2A1819E88, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
      return sub_29E2C27E4();
    }

    if (*a4)
    {
      [*(*a4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18LocalSettingsModel_settingsManager) setMenstruationNotificationsEnabled_];
      goto LABEL_5;
    }

    type metadata accessor for LocalSettingsModel();
    v7 = &qword_2A181BBE0;
    v8 = type metadata accessor for LocalSettingsModel;
    v9 = &unk_29E2DC1F4;
  }

  else
  {
    type metadata accessor for HealthNotificationsModel(0);
    v7 = &qword_2A1819810;
    v8 = type metadata accessor for HealthNotificationsModel;
    v9 = &unk_29E2D928C;
  }

  sub_29E1E5D80(v7, v8, v9);
  result = sub_29E2C1804();
  __break(1u);
  return result;
}

uint64_t sub_29E1D8884@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C3384();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = v59 - v11;
  v74 = sub_29E2C2604();
  v69 = *(v74 - 8);
  MEMORY[0x2A1C7C4A8](v74);
  v68 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v73 = v59 - v15;
  MEMORY[0x2A1C7C4A8](v16);
  v75 = v59 - v17;
  sub_29E2C3314();
  v66 = *(v7 + 16);
  v67 = v7 + 16;
  v66(v9, v12, v6);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v18 = qword_2A1A67F80;
  v19 = qword_2A1A67F80;
  v72 = v18;
  v20 = v19;
  sub_29E2BCC74();
  v21 = v20;
  v22 = sub_29E2C3414();
  v59[2] = v5;
  v24 = v23;
  v25 = *(v7 + 8);
  v59[1] = v7 + 8;
  v71 = v25;
  v25(v12, v6);
  *&v77 = v22;
  *(&v77 + 1) = v24;
  sub_29DE9DE68();
  v26 = sub_29E2C2294();
  v59[0] = v6;
  v27 = v26;
  v29 = v28;
  LOBYTE(v22) = v30;
  v31 = *v2;
  v65 = v2[1];
  v78 = v31;
  v77 = *(v2 + 3);
  v32 = swift_allocObject();
  v64 = v2;
  v33 = *(v2 + 1);
  v32[1] = *v2;
  v32[2] = v33;
  *(v32 + 41) = *(v2 + 25);
  sub_29E1E538C(&v78, v76);

  sub_29E1DFBA4(&v77, v76);
  sub_29E2C25F4();

  sub_29DED6478(v27, v29, v22 & 1);

  v76[0] = v77;
  sub_29E2BF404();
  v63 = sub_29E2C2294();
  v62 = v34;
  v60 = v35;
  v61 = v36;
  sub_29E2C3314();
  v37 = v9;
  v38 = v9;
  v39 = v59[0];
  v40 = v66;
  v66(v38, v12, v59[0]);
  sub_29E2BCC74();
  v41 = sub_29E2C3414();
  v43 = v42;
  v71(v12, v39);
  *&v76[0] = v41;
  *(&v76[0] + 1) = v43;
  v59[6] = sub_29E2C2294();
  v59[5] = v44;
  v59[4] = v45;
  v59[3] = v46 & 1;
  v47 = v69;
  (*(v69 + 16))(v73, v75, v74);
  sub_29E2C3314();
  v40(v37, v12, v39);
  sub_29E2BCC74();
  v48 = sub_29E2C3414();
  v50 = v49;
  v71(v12, v39);
  *&v76[0] = v48;
  *(&v76[0] + 1) = v50;
  v51 = sub_29E2C2294();
  v53 = v52;
  LOBYTE(v40) = v54;
  v55 = swift_allocObject();
  v56 = v64;
  v57 = v64[1];
  v55[1] = *v64;
  v55[2] = v57;
  *(v55 + 41) = *(v56 + 25);
  sub_29E1E538C(&v78, v76);

  sub_29E1DFBA4(&v77, v76);
  sub_29E2C25E4();

  sub_29DED6478(v51, v53, v40 & 1);

  sub_29E2C25D4();
  return (*(v47 + 8))(v75, v74);
}

uint64_t sub_29E1D8F70(uint64_t a1)
{
  v21 = a1;
  v22 = sub_29E2BF8D4();
  v1 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BF8E4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29E2BF904();
  v8 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BDE04();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x29EDC1718], v11, v13);
  sub_29E2BDDF4();
  (*(v12 + 8))(v15, v11);
  v25 = *(v21 + 40);
  (*(v5 + 104))(v7, *MEMORY[0x29EDC2AC0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x29EDC2AA0], v22);
  sub_29E2BF8F4();
  v16 = sub_29E2BDDE4();
  v17 = sub_29E2BDDD4();
  v24[3] = v16;
  v24[4] = MEMORY[0x29EDC1710];
  v24[0] = v17;
  sub_29E1E5D80(&qword_2A18179D0, MEMORY[0x29EDC2AC8], MEMORY[0x29EDC2A98]);
  v18 = v23;
  sub_29E2BDE14();
  (*(v8 + 8))(v10, v18);
  return sub_29DE93B3C(v24);
}

uint64_t sub_29E1D9328(uint64_t a1)
{
  v2 = sub_29E2BF8D4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BF8E4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BF904();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 40);
  (*(v7 + 104))(v9, *MEMORY[0x29EDC2AC0], v6, v12);
  (*(v3 + 104))(v5, *MEMORY[0x29EDC2AA8], v2);
  sub_29E2BF8F4();
  v15 = sub_29E2BDDE4();
  v16 = sub_29E2BDDD4();
  v18[3] = v15;
  v18[4] = MEMORY[0x29EDC1710];
  v18[0] = v16;
  sub_29E1E5D80(&qword_2A18179D0, MEMORY[0x29EDC2AC8], MEMORY[0x29EDC2A98]);
  sub_29E2BDE14();
  (*(v11 + 8))(v14, v10);
  return sub_29DE93B3C(v18);
}

double sub_29E1D961C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  *v10 = *(v0 + 17);
  *&v10[15] = v0[4];
  v4 = *(v0 + 40);
  v9 = v3;
  sub_29E1E5318(0, &qword_2A1819278, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB78]);
  sub_29E2C2944();
  v11 = v2;
  v8 = *&v10[7];
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v3;
  *(v5 + 33) = *v10;
  *(v5 + 48) = *&v10[15];
  *(v5 + 56) = v4;
  sub_29E1E538C(&v11, &v7);

  sub_29E1DFBA4(&v8, &v7);
  sub_29E1E53E8(0, &qword_2A181F700, sub_29E1DF8D8, &type metadata for NotificationWhenNotAvailable, MEMORY[0x29EDBC858]);
  sub_29E1E5450();
  sub_29E2C2504();

  return result;
}

uint64_t sub_29E1D97C4@<X0>(_OWORD *a1@<X8>)
{
  v43 = a1;
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v42 - v8;
  if (*(v1 + 32))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_29E2C1214();

    if (v55)
    {
      v10 = *(v1 + 112);
      v53[0] = *(v1 + 96);
      v52 = v10;
      LOBYTE(v46) = 0;
      sub_29E1DFBA4(v53, &v55);
      sub_29E1DFBA4(&v52, &v55);
      sub_29E2C27C4();
      v11 = v55;
      v12 = *(&v55 + 1);
      v44 = v52;
      v45 = v53[0];
      if (*(v1 + 64))
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_29E2C1214();

        v13 = sub_29E0FA190(v55);
        v47 = v45;
        *&v49[8] = v44;
        v51 = 0;
        LOBYTE(v46) = v11;
        *(&v46 + 1) = v12;
        *&v48 = v13;
        *(&v48 + 1) = v14;
        *v49 = v15;
        v50 = 0;
        sub_29E1E53E8(0, &qword_2A181F368, sub_29DF91C14, &type metadata for MenstrualCyclesLearnMoreView, type metadata accessor for LearnMoreFooterText);
        sub_29E1DFE18(0);
        sub_29E1DEE08();
        sub_29E1E455C(&qword_2A181F480, sub_29E1DFE18, sub_29E1DEE08);
        result = sub_29E2C1C74();
LABEL_14:
        v36 = *v58;
        v37 = v43;
        v43[2] = v57;
        v37[3] = v36;
        *(v37 + 58) = *&v58[10];
        v38 = v56;
        *v37 = v55;
        v37[1] = v38;
        return result;
      }

      type metadata accessor for DeviationsFeatureStatusModel(0);
      v39 = &qword_2A1819820;
      v40 = type metadata accessor for DeviationsFeatureStatusModel;
      v41 = &unk_29E2D3CB8;
    }

    else
    {
      if (*(v1 + 48))
      {
        swift_beginAccess();
        swift_getKeyPath();
        swift_getKeyPath();

        sub_29E2C1214();

        if (v55)
        {
          sub_29E2C3394();
          if (qword_2A1A62788 != -1)
          {
            swift_once();
          }

          v17 = qword_2A1A67F80;
          sub_29E2BCC74();
          v18 = sub_29E2C3414();
          v20 = v19;
          v22 = *(v1 + 112);
          v21 = *(v1 + 120);
          LOBYTE(v46) = 0;
          sub_29E2BF404();
          sub_29E2C27C4();
          v23 = v55;
          v24 = *(&v55 + 1);
          v25 = sub_29E0FA190(2u);
          LOBYTE(v46) = 0;
          LOBYTE(v55) = v23;
          *(&v55 + 1) = v24;
          *&v56 = v18;
          *(&v56 + 1) = v20;
          *&v57 = v25;
          *(&v57 + 1) = v26;
          *v58 = v27;
          *&v58[8] = v22;
          *&v58[16] = v21;
          v58[24] = 0;
          sub_29E1E53E8(0, &qword_2A181F368, sub_29DF91C14, &type metadata for MenstrualCyclesLearnMoreView, type metadata accessor for LearnMoreFooterText);
          sub_29E1DEE08();
          sub_29E2C1C74();
        }

        else
        {
          sub_29E2C3314();
          (*(v4 + 16))(v6, v9, v3);
          if (qword_2A1A62788 != -1)
          {
            swift_once();
          }

          v28 = qword_2A1A67F80;
          sub_29E2BCC74();
          v29 = sub_29E2C3414();
          v31 = v30;
          (*(v4 + 8))(v9, v3);
          *&v55 = v29;
          *(&v55 + 1) = v31;
          sub_29DE9DE68();
          v32 = sub_29E2C2294();
          LOBYTE(v44) = v33 & 1;
          v51 = 1;
          *&v55 = v32;
          *(&v55 + 1) = v34;
          LOBYTE(v56) = v33 & 1;
          *(&v56 + 1) = v45;
          DWORD1(v56) = *(&v45 + 3);
          *(&v56 + 1) = v35;
          v57 = v46;
          *v58 = v47;
          *&v58[16] = v48;
          v58[24] = 1;
          sub_29E1E53E8(0, &qword_2A181F368, sub_29DF91C14, &type metadata for MenstrualCyclesLearnMoreView, type metadata accessor for LearnMoreFooterText);
          sub_29E1DEE08();
          sub_29E2C1C74();
        }

        v48 = v53[2];
        *v49 = v54[0];
        *&v49[9] = *(v54 + 9);
        v46 = v53[0];
        v47 = v53[1];
        LOBYTE(v45) = 1;
        v50 = 1;
        sub_29E1E53E8(0, &qword_2A181F368, sub_29DF91C14, &type metadata for MenstrualCyclesLearnMoreView, type metadata accessor for LearnMoreFooterText);
        sub_29E1DFE18(0);
        sub_29E1DEE08();
        sub_29E1E455C(&qword_2A181F480, sub_29E1DFE18, sub_29E1DEE08);
        result = sub_29E2C1C74();
        goto LABEL_14;
      }

      type metadata accessor for AllFeaturesModel();
      v39 = &qword_2A1819818;
      v40 = type metadata accessor for AllFeaturesModel;
      v41 = &unk_29E2D4948;
    }
  }

  else
  {
    type metadata accessor for AnalysisModel(0);
    v39 = &qword_2A1819808;
    v40 = type metadata accessor for AnalysisModel;
    v41 = &unk_29E2DF480;
  }

  sub_29E1E5D80(v39, v40, v41);
  result = sub_29E2C1804();
  __break(1u);
  return result;
}

void sub_29E1DA018(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *a2 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20FeatureSettingsModel__fertileWindowEstimatesEnabled);
  }

  else
  {
    type metadata accessor for FeatureSettingsModel(0);
    sub_29E1E5D80(&qword_2A1819800, type metadata accessor for FeatureSettingsModel, &unk_29E2D3CB8);
    sub_29E2C1804();
    __break(1u);
  }
}

id sub_29E1DA0A4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a4[2])
  {
    type metadata accessor for FeatureSettingsModel(0);
    v8 = &qword_2A1819800;
    v9 = type metadata accessor for FeatureSettingsModel;
    v10 = &unk_29E2D3CB8;
LABEL_8:
    sub_29E1E5D80(v8, v9, v10);
    result = sub_29E2C1804();
    __break(1u);
    return result;
  }

  v5 = *a1;

  sub_29E003E80(v5);

  if (!*a4)
  {
    type metadata accessor for LocalSettingsModel();
    v8 = &qword_2A181BBE0;
    v9 = type metadata accessor for LocalSettingsModel;
    v10 = &unk_29E2DC1F4;
    goto LABEL_8;
  }

  v6 = *(*a4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18LocalSettingsModel_settingsManager);

  return [v6 setFertileWindowNotificationsEnabled_];
}

uint64_t sub_29E1DA1C0@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = v2;
  v20 = a1;
  sub_29E1DFCC8(0, a2);
  v17 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  sub_29E1DFEB0(0);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 80);
  v9 = *(v2 + 88);
  *&v32[0] = v8;
  *(&v32[0] + 1) = v9;
  sub_29DE9DE68();
  sub_29E2BF404();
  v28 = sub_29E2C2294();
  v29 = v10;
  v30 = v11 & 1;
  v31 = v12;
  sub_29E1D97C4(v26);
  v24 = v26[2];
  v25[0] = v27[0];
  *(v25 + 10) = *(v27 + 10);
  v22 = v26[0];
  v23 = v26[1];
  v13 = MEMORY[0x29EDBC7F0];
  sub_29E1DFD60(0, &qword_2A181F460, sub_29E1DFE18, MEMORY[0x29EDBC7F0]);
  sub_29E1DFF44();
  sub_29E2C23B4();
  v32[2] = v24;
  v33[0] = v25[0];
  *(v33 + 10) = *(v25 + 10);
  v32[0] = v22;
  v32[1] = v23;
  sub_29E1DF61C(v32, &qword_2A181F460, sub_29E1DFE18, v13, sub_29E1DFD60);
  v21 = v3;
  sub_29E1DF3E4(0, &qword_2A181F388, &type metadata for ForcedOffFromCycleFactors, MEMORY[0x29EDBC7F0]);
  sub_29E1DEB10();
  sub_29E1E0034(v14);
  sub_29E2C29E4();
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v26[0] = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD00000000000001ELL, 0x800000029E301700);
  sub_29E1E00E4(&qword_2A181F490, sub_29E1DFEB0, sub_29E1E0034);
  v15 = v19;
  sub_29E2C23B4();

  return (*(v18 + 8))(v7, v15);
}

uint64_t sub_29E1DA548@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v32[2] = a2;
  sub_29E1DF3E4(0, &qword_2A181F3E8, &type metadata for ForcedOffFromCycleFactors, MEMORY[0x29EDBC7E8]);
  v32[1] = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = (v32 - v4);
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2C3384();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  sub_29E1E5C7C(0, &qword_2A181A9B8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC288]);
  v9 = v8;
  v32[0] = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v32 - v10;
  if (*(a1 + 4))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_29E2C1214();

    v12 = v33[0];
    sub_29E2C3394();
    if (v12)
    {
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v13 = qword_2A1A67F80;
      sub_29E2BCC74();
      *v5 = sub_29E2C3414();
      v5[1] = v14;
      swift_storeEnumTagMultiPayload();
      sub_29E1DEBB4();
      sub_29E1DEC38();
      return sub_29E2C1C74();
    }

    else
    {
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v16 = qword_2A1A67F80;
      sub_29E2BCC74();
      v33[16] = sub_29E2C3414();
      v33[17] = v17;
      sub_29E2C3714();
      sub_29E1E0174(a1, v33);
      v18 = sub_29E2C3704();
      v19 = swift_allocObject();
      v20 = MEMORY[0x29EDCA390];
      *(v19 + 16) = v18;
      *(v19 + 24) = v20;
      v21 = a1[5];
      *(v19 + 96) = a1[4];
      *(v19 + 112) = v21;
      v22 = a1[7];
      *(v19 + 128) = a1[6];
      *(v19 + 144) = v22;
      v23 = a1[1];
      *(v19 + 32) = *a1;
      *(v19 + 48) = v23;
      v24 = a1[3];
      *(v19 + 64) = a1[2];
      *(v19 + 80) = v24;
      sub_29E1E0174(a1, v33);
      v25 = sub_29E2C3704();
      v26 = swift_allocObject();
      *(v26 + 16) = v25;
      *(v26 + 24) = v20;
      v27 = a1[5];
      *(v26 + 96) = a1[4];
      *(v26 + 112) = v27;
      v28 = a1[7];
      *(v26 + 128) = a1[6];
      *(v26 + 144) = v28;
      v29 = a1[1];
      *(v26 + 32) = *a1;
      *(v26 + 48) = v29;
      v30 = a1[3];
      *(v26 + 64) = a1[2];
      *(v26 + 80) = v30;
      sub_29E2C2954();
      sub_29DE9DE68();
      sub_29E2C28D4();
      v31 = v32[0];
      (*(v32[0] + 16))(v5, v11, v9);
      swift_storeEnumTagMultiPayload();
      sub_29E1DEBB4();
      sub_29E1DEC38();
      sub_29E2C1C74();
      return (*(v31 + 8))(v11, v9);
    }
  }

  else
  {
    type metadata accessor for AnalysisModel(0);
    sub_29E1E5D80(&qword_2A1819808, type metadata accessor for AnalysisModel, &unk_29E2DF480);
    result = sub_29E2C1804();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E1DAB2C()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v14 - v7;
  if (*(v0 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_29E2C1214();

    sub_29E2C3314();
    (*(v3 + 16))(v5, v8, v2);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v9 = qword_2A1A67F80;
    sub_29E2BCC74();
    v10 = sub_29E2C3414();
    v12 = v11;
    (*(v3 + 8))(v8, v2);
    v14[3] = v10;
    v14[4] = v12;
    sub_29DE9DE68();
    return sub_29E2C2294();
  }

  else
  {
    type metadata accessor for AnalysisModel(0);
    sub_29E1E5D80(&qword_2A1819808, type metadata accessor for AnalysisModel, &unk_29E2DF480);
    result = sub_29E2C1804();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E1DAE14@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  sub_29E1E43D0(0, &qword_2A1819280, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBCA18]);
  v20 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  sub_29E1E023C(0);
  v4 = *(v3 - 8);
  v18 = v3;
  v19 = v4;
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E1DAB2C();
  v9 = v8;
  v25 = v7;
  v26 = v8;
  v11 = v10 & 1;
  v27 = v10 & 1;
  v28 = v12;
  v13 = *(v1 + 88);
  v17 = *(v1 + 80);
  v23 = v17;
  v24 = v13;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x7265746F6F462ELL, 0xE700000000000000);
  sub_29E2C23B4();

  sub_29DED6478(v7, v9, v11);

  v22 = v1;
  sub_29E1DFB18(0, &qword_2A181F410, MEMORY[0x29EDBC7F0]);
  sub_29E1DF798();
  sub_29DF3F2DC();
  sub_29E2C2A04();
  sub_29E1E02F4();
  v14 = v18;
  sub_29E2C23B4();
  return (*(v19 + 8))(v6, v14);
}

uint64_t sub_29E1DB07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E1DFB18(0, &qword_2A181F450, MEMORY[0x29EDBC7E8]);
  v43 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = (&v39 - v5);
  v7 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v41 = sub_29E2C3384();
  v40 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v39 - v11;
  sub_29E1DF3E4(0, &qword_2A181F418, &type metadata for NotificationWhenNotAvailable, MEMORY[0x29EDBC558]);
  v42 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v39 - v14;
  if (*(a1 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_29E2C1214();

    if (v44[0])
    {
      v16 = *(a1 + 72);
      *v6 = *(a1 + 64);
      v6[1] = v16;
      swift_storeEnumTagMultiPayload();
      sub_29E1DF834();
      sub_29E1DEC38();
      sub_29E2BF404();
      return sub_29E2C1C74();
    }

    else
    {
      v39 = a2;
      v46 = *(a1 + 64);
      v47 = v46;
      sub_29E2C3714();
      sub_29E1DFBA4(&v47, v44);
      sub_29E1E0380(a1, v44);
      v18 = sub_29E2C3704();
      v19 = swift_allocObject();
      v20 = MEMORY[0x29EDCA390];
      *(v19 + 16) = v18;
      *(v19 + 24) = v20;
      v21 = *(a1 + 48);
      *(v19 + 64) = *(a1 + 32);
      *(v19 + 80) = v21;
      v22 = *(a1 + 80);
      *(v19 + 96) = *(a1 + 64);
      *(v19 + 112) = v22;
      v23 = *(a1 + 16);
      *(v19 + 32) = *a1;
      *(v19 + 48) = v23;
      sub_29E1E0380(a1, v44);
      v24 = sub_29E2C3704();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v20;
      v26 = *(a1 + 48);
      *(v25 + 64) = *(a1 + 32);
      *(v25 + 80) = v26;
      v27 = *(a1 + 80);
      *(v25 + 96) = *(a1 + 64);
      *(v25 + 112) = v27;
      v28 = *(a1 + 16);
      *(v25 + 32) = *a1;
      *(v25 + 48) = v28;
      sub_29E2C2954();
      sub_29DE9DE68();
      sub_29E2C28D4();
      sub_29E2C3314();
      v29 = v40;
      v30 = v41;
      (*(v40 + 16))(v9, v12, v41);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v31 = qword_2A1A67F80;
      sub_29E2BCC74();
      v32 = sub_29E2C3414();
      v34 = v33;
      (*(v29 + 8))(v12, v30);
      v46 = *(a1 + 48);
      sub_29E1E5318(0, &qword_2A1819E88, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
      sub_29E2C27F4();
      v35 = v44[1];
      v36 = v45;
      v37 = &v15[*(v42 + 36)];
      *v37 = v44[0];
      *(v37 + 1) = v35;
      v37[16] = v36;
      *(v37 + 3) = v32;
      *(v37 + 4) = v34;
      v37[40] = 1;
      v38 = MEMORY[0x29EDBC558];
      sub_29E1DF5A8(v15, v6, &qword_2A181F418, &type metadata for NotificationWhenNotAvailable, MEMORY[0x29EDBC558], sub_29E1DF3E4);
      swift_storeEnumTagMultiPayload();
      sub_29E1DF834();
      sub_29E1DEC38();
      sub_29E2C1C74();
      return sub_29E1DF61C(v15, &qword_2A181F418, &type metadata for NotificationWhenNotAvailable, v38, sub_29E1DF3E4);
    }
  }

  else
  {
    type metadata accessor for AnalysisModel(0);
    sub_29E1E5D80(&qword_2A1819808, type metadata accessor for AnalysisModel, &unk_29E2DF480);
    result = sub_29E2C1804();
    __break(1u);
  }

  return result;
}

void sub_29E1DB6AC(void *a1@<X2>, _BYTE *a2@<X8>)
{
  if (*a1)
  {
    if (([*(*a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18LocalSettingsModel_settingsManager) fertileWindowNotificationsEnabled] & 1) == 0)
    {
      v4 = 0;
      goto LABEL_6;
    }

    if (a1[4])
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_29E2C1214();

      v4 = v8;
LABEL_6:
      *a2 = v4;
      return;
    }

    type metadata accessor for HealthNotificationsModel(0);
    v5 = &qword_2A1819810;
    v6 = type metadata accessor for HealthNotificationsModel;
    v7 = &unk_29E2D928C;
  }

  else
  {
    type metadata accessor for LocalSettingsModel();
    v5 = &qword_2A181BBE0;
    v6 = type metadata accessor for LocalSettingsModel;
    v7 = &unk_29E2DC1F4;
  }

  sub_29E1E5D80(v5, v6, v7);
  sub_29E2C1804();
  __break(1u);
}

uint64_t sub_29E1DB80C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4[4])
  {
    v5 = *a1;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_29E2C1214();

    if ((v10 & 1) == 0)
    {
LABEL_5:
      sub_29E1E5318(0, &qword_2A1819E88, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
      return sub_29E2C27E4();
    }

    if (*a4)
    {
      [*(*a4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18LocalSettingsModel_settingsManager) setFertileWindowNotificationsEnabled_];
      goto LABEL_5;
    }

    type metadata accessor for LocalSettingsModel();
    v7 = &qword_2A181BBE0;
    v8 = type metadata accessor for LocalSettingsModel;
    v9 = &unk_29E2DC1F4;
  }

  else
  {
    type metadata accessor for HealthNotificationsModel(0);
    v7 = &qword_2A1819810;
    v8 = type metadata accessor for HealthNotificationsModel;
    v9 = &unk_29E2D928C;
  }

  sub_29E1E5D80(v7, v8, v9);
  result = sub_29E2C1804();
  __break(1u);
  return result;
}

uint64_t sub_29E1DBA0C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  sub_29E1E43D0(0, &qword_2A1819280, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBCA18]);
  v26 = v2;
  v3 = MEMORY[0x2A1C7C4A8](v2);
  sub_29E1E0438(0, v3);
  v5 = *(v4 - 8);
  v24 = v4;
  v25 = v5;
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[3];
  v35 = v1[2];
  v36 = v8;
  sub_29DE9DE68();
  sub_29E2BF404();
  v35 = sub_29E2C2294();
  v36 = v9;
  v37 = v10 & 1;
  v38 = v11;
  v12 = sub_29E1E1FAC(*v1, v1[1]);
  v14 = v13;
  v31 = v12;
  v32 = v13;
  v16 = v15 & 1;
  v33 = v15 & 1;
  v34 = v17;
  v18 = v1[5];
  v23 = v1[4];
  v29 = v23;
  v30 = v18;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x7265746F6F462ELL, 0xE700000000000000);
  sub_29E2C23B4();

  sub_29DED6478(v12, v14, v16);

  v28 = v1;
  sub_29E1E04D4(0);
  sub_29E1E2394();
  sub_29DF3F2DC();
  sub_29E2C29E4();
  sub_29E1E2414(v19);
  v20 = v24;
  sub_29E2C23B4();
  return (*(v25 + 8))(v7, v20);
}

void sub_29E1DBCAC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_29E1E5C7C(0, &qword_2A181A9B8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC288]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v20 - v6;
  v8 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    v9 = *(*(v8 + 16) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24SensorFeatureStatusModel_sensorInputType);

    v28 = sub_29E2B3BC0(v9);
    v29 = v10;
    type metadata accessor for AllFeaturesModel();
    sub_29E1E5D80(&qword_2A1819818, type metadata accessor for AllFeaturesModel, &unk_29E2D4948);
    sub_29E2C17F4();
    swift_getKeyPath();
    sub_29E2C1814();

    v11 = v25;
    v12 = v26;
    v13 = v27;
    swift_getKeyPath();
    v22 = v11;
    v23 = v12;
    v24 = v13;
    sub_29E1E56D4(0, &qword_2A181F4C8, type metadata accessor for SensorFeatureStatusModel, MEMORY[0x29EDBCB78]);
    sub_29E2C2934();

    sub_29DE9DE68();
    sub_29E2C28D4();
    swift_beginAccess();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_29E2C1214();

    if (v22)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_29E2C1214();

      v14 = v22;
    }

    else
    {

      v14 = 1;
    }

    KeyPath = swift_getKeyPath();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    v17 = v21;
    (*(v5 + 32))(v21, v7, v4);
    sub_29E1E04D4(0);
    v19 = (v17 + *(v18 + 36));
    *v19 = KeyPath;
    v19[1] = sub_29E1E24A0;
    v19[2] = v16;
  }

  else
  {
    type metadata accessor for AllFeaturesModel();
    sub_29E1E5D80(&qword_2A1819818, type metadata accessor for AllFeaturesModel, &unk_29E2D4948);
    sub_29E2C1804();
    __break(1u);
  }
}

uint64_t sub_29E1DC100@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v29 - v9;
  if (*v1)
  {
    swift_beginAccess();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_29E2C1214();

    if (v38)
    {
      sub_29E2C3394();
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v11 = qword_2A1A67F80;
      sub_29E2BCC74();
      *&v38 = sub_29E2C3414();
      *(&v38 + 1) = v12;
      sub_29DE9DE68();
      v31 = sub_29E2C2294();
      v32 = v13;
      v33 = v14 & 1;
      v34 = v15;
      v35 = 0;
      v36 = 0;
      v37 = 1;
    }

    else
    {
      sub_29E2C3394();
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v16 = qword_2A1A67F80;
      sub_29E2BCC74();
      v17 = v16;
      v30 = sub_29E2C3414();
      v19 = v18;
      sub_29E2C3314();
      (*(v5 + 16))(v7, v10, v4);
      sub_29E2BCC74();
      v20 = sub_29E2C3414();
      v22 = v21;
      (*(v5 + 8))(v10, v4);
      sub_29E2C3394();
      sub_29E2BCC74();
      v23 = sub_29E2C3414();
      v31 = v30;
      v32 = v19;
      v33 = v20;
      v34 = v22;
      v35 = v23;
      v36 = v24;
      v37 = 0;
    }

    sub_29E131570();
    result = sub_29E2C1C74();
    v26 = v39;
    v27 = v40;
    v28 = v41;
    *a1 = v38;
    *(a1 + 16) = v26;
    *(a1 + 32) = v27;
    *(a1 + 48) = v28;
  }

  else
  {
    type metadata accessor for AllFeaturesModel();
    sub_29E1E5D80(&qword_2A1819818, type metadata accessor for AllFeaturesModel, &unk_29E2D4948);
    result = sub_29E2C1804();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E1DC5A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_29E1E24B8(0);
  v5 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  sub_29E1E254C(0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v2)
  {
    v32 = v10;
    v33 = v8;
    v34 = v5;
    v35 = v7;
    v36 = a1;
    swift_beginAccess();

    v11 = sub_29E2B3A9C();

    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    if ((v11 & 1) == 0)
    {
      v16 = v2[3];
      v46 = v2[2];
      v47 = v16;
      sub_29DE9DE68();
      sub_29E2BF404();
      v12 = sub_29E2C2294();
      v14 = v17 & 1;
    }

    v53 = v12;
    v54 = v13;
    v55 = v14;
    v56 = v15;
    sub_29E1DC100(&v46);
    v18 = v46;
    v29 = v47;
    v19 = v49;
    v28 = v48;
    v20 = v51;
    v27 = v50;
    v21 = v52;
    v39 = v46;
    v40 = v47;
    v41 = v48;
    v42 = v49;
    v43 = v50;
    v44 = v51;
    v45 = v52;
    v22 = v2[5];
    v31 = v2[4];
    v37 = v31;
    v30 = v22;
    v38 = v22;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0x7265746F6F462ELL, 0xE700000000000000);
    sub_29E1E5C7C(0, &qword_2A181F4D8, &type metadata for TextWithLink, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC7F0]);
    sub_29E1E25F0();
    sub_29E2C23B4();

    sub_29E1E269C(v18, v29, v28, v19, v27, v20, v21);
    MEMORY[0x2A1C7C4A8](v23);
    sub_29E1E5318(0, &qword_2A181F4E8, MEMORY[0x29EDBCA18], MEMORY[0x29EDC9C68]);
    sub_29E1E04D4(0);
    sub_29E1E2700();
    sub_29E1E2394();
    sub_29E1E2794();
    v24 = v32;
    sub_29E2C29E4();
    sub_29E1E2844();
    v25 = v35;
    sub_29E2C23B4();
    return (*(v33 + 8))(v24, v25);
  }

  else
  {
    type metadata accessor for AllFeaturesModel();
    sub_29E1E5D80(&qword_2A1819818, type metadata accessor for AllFeaturesModel, &unk_29E2D4948);
    result = sub_29E2C1804();
    __break(1u);
  }

  return result;
}

void sub_29E1DC9FC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_29E1E5C7C(0, &qword_2A181A9B8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC288]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v20 - v6;
  v8 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    v9 = *(*(v8 + 24) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24SensorFeatureStatusModel_sensorInputType);

    v28 = sub_29E2B3BC0(v9);
    v29 = v10;
    type metadata accessor for AllFeaturesModel();
    sub_29E1E5D80(&qword_2A1819818, type metadata accessor for AllFeaturesModel, &unk_29E2D4948);
    sub_29E2C17F4();
    swift_getKeyPath();
    sub_29E2C1814();

    v11 = v25;
    v12 = v26;
    v13 = v27;
    swift_getKeyPath();
    v22 = v11;
    v23 = v12;
    v24 = v13;
    sub_29E1E56D4(0, &qword_2A181F4C8, type metadata accessor for SensorFeatureStatusModel, MEMORY[0x29EDBCB78]);
    sub_29E2C2934();

    sub_29DE9DE68();
    sub_29E2C28D4();
    swift_beginAccess();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_29E2C1214();

    if (v22)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_29E2C1214();

      v14 = v22;
    }

    else
    {

      v14 = 1;
    }

    KeyPath = swift_getKeyPath();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    v17 = v21;
    (*(v5 + 32))(v21, v7, v4);
    sub_29E1E04D4(0);
    v19 = (v17 + *(v18 + 36));
    *v19 = KeyPath;
    v19[1] = sub_29E1E5DD8;
    v19[2] = v16;
  }

  else
  {
    type metadata accessor for AllFeaturesModel();
    sub_29E1E5D80(&qword_2A1819818, type metadata accessor for AllFeaturesModel, &unk_29E2D4948);
    sub_29E2C1804();
    __break(1u);
  }
}

uint64_t sub_29E1DCE50(__int128 *a1)
{
  v7 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE25supplementaryDisplayTypesSayABGvgZ_0();
  v2 = *a1;
  v9 = a1[1];
  v10 = v2;
  v8 = a1[2];
  v3 = swift_allocObject();
  v4 = a1[1];
  v3[1] = *a1;
  v3[2] = v4;
  v3[3] = a1[2];
  sub_29E1E51B8(&v10, v6, sub_29E1E3628);
  sub_29E1E51B8(&v9, v6, sub_29E1E36BC);
  sub_29E1DFBA4(&v8, v6);
  sub_29E1E34D8(0);
  sub_29E1E4EBC(0, &qword_2A181F520, sub_29E1E04D4, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
  sub_29E1E5D80(&qword_2A181F528, sub_29E1E34D8, MEMORY[0x29EDC9A80]);
  sub_29E1E350C();
  sub_29E1E5D80(&qword_2A181F550, type metadata accessor for HKMCDisplayTypeIdentifier, &protocol conformance descriptor for HKMCDisplayTypeIdentifier);
  return sub_29E2C29B4();
}

uint64_t sub_29E1DD028@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  sub_29E1E04D4(0);
  v7 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v31 = HKMCDisplayTypeIdentifier.editableReportTitle.getter(*a1);
  v32 = v11;
  v12 = *a2;
  v34 = a2[1];
  v35 = v12;
  v33 = a2[2];
  sub_29E2C3714();
  v28 = v34;
  sub_29E1E51B8(&v35, &v30, sub_29E1E3628);
  sub_29E1E51B8(&v34, &v30, sub_29E1E36BC);
  sub_29E1DFBA4(&v33, &v30);
  v13 = v10;
  v14 = sub_29E2C3704();
  v15 = swift_allocObject();
  v16 = MEMORY[0x29EDCA390];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  v17 = a2[1];
  *(v15 + 32) = *a2;
  *(v15 + 48) = v17;
  *(v15 + 64) = a2[2];
  *(v15 + 80) = v13;
  sub_29E1E51B8(&v35, &v30, sub_29E1E3628);
  sub_29E1E51B8(&v34, &v30, sub_29E1E36BC);
  sub_29E1DFBA4(&v33, &v30);
  v18 = v13;
  v19 = sub_29E2C3704();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v16;
  v21 = a2[1];
  *(v20 + 32) = *a2;
  *(v20 + 48) = v21;
  *(v20 + 64) = a2[2];
  *(v20 + 80) = v18;
  sub_29E2C2954();
  sub_29DE9DE68();
  sub_29E2C28D4();
  LOBYTE(v19) = sub_29E1E28D8(v18, v28, *(&v34 + 1));
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = v19 & 1;
  v24 = &v9[*(v7 + 36)];
  *v24 = KeyPath;
  v24[1] = sub_29E1E5DD8;
  v24[2] = v23;
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v30 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000010, 0x800000029E301640);
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  v25 = sub_29E1043D4(v18);
  MEMORY[0x29ED7FCC0](v25);

  sub_29E1E2394();
  sub_29E2C23B4();

  return sub_29E1E52B8(v9, sub_29E1E04D4);
}

void sub_29E1DD3A4(void *a1@<X2>, _BYTE *a2@<X8>)
{
  if (*a1)
  {

    v3 = sub_29E002AC0();

    *a2 = v3 & 1;
  }

  else
  {
    type metadata accessor for FeatureSettingsModel(0);
    sub_29E1E5D80(&qword_2A1819800, type metadata accessor for FeatureSettingsModel, &unk_29E2D3CB8);
    sub_29E2C1804();
    __break(1u);
  }
}

void sub_29E1DD458(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (*a4)
  {
    v6 = *a1;

    sub_29E002D50(v6, a5);
  }

  else
  {
    type metadata accessor for FeatureSettingsModel(0);
    sub_29E1E5D80(&qword_2A1819800, type metadata accessor for FeatureSettingsModel, &unk_29E2D3CB8);
    sub_29E2C1804();
    __break(1u);
  }
}

uint64_t sub_29E1DD510()
{
  v2 = *(v0 + 16);
  sub_29DE9DE68();
  sub_29E2BF404();
  sub_29E2C2294();
  sub_29E1E30FC(v2, *(&v2 + 1));
  sub_29E1E33CC(0);
  sub_29E1E57CC(&qword_2A181F530, sub_29E1E33CC, sub_29E1E350C);
  return sub_29E2C29E4();
}

uint64_t sub_29E1DD630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a3;
  v66 = sub_29E2C1704();
  v78 = *(v66 - 8);
  MEMORY[0x2A1C7C4A8](v66);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1E3B7C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1E3AA8(0, v10);
  v69 = v13;
  v70 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1E3A60(0);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v75 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v74 = &v53 - v19;
  MEMORY[0x2A1C7C4A8](v20);
  v71 = &v53 - v21;
  MEMORY[0x2A1C7C4A8](v22);
  v77 = &v53 - v23;
  v87 = sub_29DF57D34(0);
  v88 = v24;
  v25 = type metadata accessor for PeriodAndCycleLengthModel(0);
  sub_29E1E5D80(&qword_2A18193F8, type metadata accessor for PeriodAndCycleLengthModel, &unk_29E2D3530);
  v65 = v25;
  sub_29E2C17F4();
  swift_getKeyPath();
  sub_29E2C1814();

  v84 = v81;
  v85 = v82;
  v86 = v83;
  v68 = a1;
  v79 = a1;
  v80 = a2;
  v61 = a2;
  sub_29E1E5318(0, &qword_2A1A5E2B0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
  v27 = v26;
  sub_29E1E3C70(0);
  v29 = v28;
  v30 = sub_29E1E3DD0();
  v31 = sub_29E1E5D80(&qword_2A181F5A8, sub_29E1E3C70, MEMORY[0x29EDBCC30]);
  v59 = sub_29DE9DE68();
  v60 = v31;
  v64 = v27;
  v63 = v29;
  v62 = v30;
  sub_29E2C28A4();
  sub_29E2C16F4();
  v32 = sub_29E1E5D80(&qword_2A181F5B0, sub_29E1E3B7C, MEMORY[0x29EDBC280]);
  v33 = v15;
  v34 = MEMORY[0x29EDBBF18];
  v35 = v66;
  sub_29E2C2384();
  v36 = *(v78 + 8);
  v73 = v6;
  v78 += 8;
  v58 = v36;
  v36(v6, v35);
  v37 = *(v9 + 8);
  v67 = v12;
  v72 = v9 + 8;
  v57 = v37;
  v37(v12, v8);
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v38 = *(&xmmword_2A1A67E58 + 1);
  v56 = xmmword_2A1A67E58;
  v81 = xmmword_2A1A67E58;
  swift_bridgeObjectRetain_n();
  MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E301620);
  *&v81 = v8;
  *(&v81 + 1) = v35;
  v82 = v32;
  v83 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v8;
  v55 = OpaqueTypeConformance2;
  v40 = v69;
  sub_29E2C23B4();

  v70 = *(v70 + 8);
  (v70)(v33, v40);
  v87 = sub_29DF57D34(2u);
  v88 = v41;
  v53 = v32;
  sub_29E2C17F4();
  swift_getKeyPath();
  sub_29E2C1814();

  v84 = v81;
  v85 = v82;
  v86 = v83;
  MEMORY[0x2A1C7C4A8](v42);
  v43 = v67;
  sub_29E2C28A4();
  v44 = v73;
  sub_29E2C16F4();
  v45 = v54;
  sub_29E2C2384();
  v58(v44, v35);
  v57(v43, v45);
  *&v81 = v56;
  *(&v81 + 1) = v38;
  MEMORY[0x29ED7FCC0](0xD000000000000013, 0x800000029E301600);
  v46 = v71;
  sub_29E2C23B4();

  (v70)(v33, v40);
  v47 = v77;
  v48 = v74;
  sub_29DE8AA04(v77, v74);
  v49 = v75;
  sub_29DE8AA04(v46, v75);
  v50 = v76;
  sub_29DE8AA04(v48, v76);
  sub_29E1E39FC(0);
  sub_29DE8AA04(v49, v50 + *(v51 + 48));
  sub_29E1E4A9C(v46, sub_29E1E3A60);
  sub_29E1E4A9C(v47, sub_29E1E3A60);
  sub_29E1E4A9C(v49, sub_29E1E3A60);
  return sub_29E1E4A9C(v48, sub_29E1E3A60);
}

uint64_t sub_29E1DDEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, char *a5@<X8>, __n128 a6@<Q0>)
{
  v64 = a4;
  v65 = a5;
  v60 = a3;
  v61 = a2;
  v59 = a6;
  sub_29E1E3E64(0);
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v62 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v68 = &v57 - v10;
  v11 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v12 = sub_29E2C3384();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v57 - v17;
  sub_29E1E3D14(0);
  v20 = v19;
  v63 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v58 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22);
  v24 = &v57 - v23;
  sub_29E2C3314();
  (*(v13 + 16))(v15, v18, v12);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v25 = qword_2A1A67F80;
  sub_29E2BCC74();
  v26 = sub_29E2C3414();
  v28 = v27;
  (*(v13 + 8))(v18, v12);
  v69 = v26;
  v70 = v28;
  sub_29DE9DE68();
  *v24 = sub_29E2C2294();
  *(v24 + 1) = v29;
  v24[16] = v30 & 1;
  *(v24 + 3) = v31;
  *(v24 + 4) = 0;
  *(v24 + 20) = 257;
  v57 = v24;
  v73[0] = v59;
  KeyPath = swift_getKeyPath();
  v33 = swift_allocObject();
  v34 = v61;
  *(v33 + 16) = a1;
  *(v33 + 24) = v34;
  v35 = MEMORY[0x29EDC9BA8];
  sub_29E1E5C7C(0, &qword_2A1819CB0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9BC0], MEMORY[0x29EDC9930]);
  v37 = v36;
  v38 = sub_29DF9D78C();
  sub_29E1E5318(255, &qword_2A1A5E2B0, v35, MEMORY[0x29EDC9C68]);
  v40 = v39;
  v41 = sub_29E1E3DD0();

  v69 = MEMORY[0x29EDBCA18];
  v70 = v40;
  v71 = MEMORY[0x29EDBCA10];
  v72 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v68;
  sub_29E2C29A4(v73, KeyPath, v64, v33, v37, v20, v38, MEMORY[0x29EDC9BB8], OpaqueTypeConformance2);
  v44 = v63;
  v64 = *(v63 + 16);
  v45 = v58;
  v64(v58, v24, v20);
  v47 = v66;
  v46 = v67;
  v48 = *(v66 + 16);
  v49 = v62;
  v48(v62, v43, v67);
  v50 = v49;
  v51 = v65;
  v52.n128_f64[0] = (v64)(v65, v45, v20);
  sub_29E1E3CA4(0, v52);
  v48(&v51[*(v53 + 48)], v50, v46);
  v54 = *(v47 + 8);
  v54(v68, v46);
  v55 = *(v44 + 8);
  v55(v57, v20);
  v54(v50, v46);
  return (v55)(v45, v20);
}

uint64_t sub_29E1DE474@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = MEMORY[0x29EDC9C68];
  sub_29E1E56D4(0, &unk_2A1A62830, MEMORY[0x29EDB9D58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = v32 - v9;
  sub_29E1E56D4(0, &unk_2A1A62840, MEMORY[0x29EDB9D18], v7);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = v32 - v12;
  v14 = sub_29E2BC5F4();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v18 = *a1;
    v19 = *(a2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PeriodAndCycleLengthModel_daysFormatter);
    v20 = sub_29E2BCEA4();
    (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
    v21 = sub_29E2BCF04();
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
    v22 = v19;
    sub_29E2BC5D4();
    v23 = sub_29E2BC524();
    (*(v15 + 8))(v17, v14);
    v24 = [v22 stringFromDateComponents_];

    if (v24)
    {
      v25 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0xE000000000000000;
    }

    v32[0] = v25;
    v32[1] = v27;
    sub_29DE9DE68();
    result = sub_29E2C2294();
    *a4 = result;
    *(a4 + 8) = v29;
    *(a4 + 16) = v30 & 1;
    *(a4 + 24) = v31;
    *(a4 + 32) = v18;
    *(a4 + 40) = 256;
  }

  else
  {
    type metadata accessor for PeriodAndCycleLengthModel(0);
    sub_29E1E5D80(&qword_2A18193F8, type metadata accessor for PeriodAndCycleLengthModel, &unk_29E2D3530);
    result = sub_29E2C1804();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E1DE83C()
{
  sub_29E1E37C8();
  sub_29E1E39C8(0);
  sub_29E1E5D80(&qword_2A181F5B8, sub_29E1E39C8, MEMORY[0x29EDBCC30]);
  return sub_29E2C2A04();
}

void sub_29E1DEA58(uint64_t a1)
{
  if (!qword_2A181F380)
  {
    sub_29E1DF3E4(255, &qword_2A181F388, &type metadata for ForcedOffFromCycleFactors, MEMORY[0x29EDBC7F0]);
    sub_29E1DF47C(255, &qword_2A181F358, MEMORY[0x29EDBC7F0], v1);
    v2 = sub_29E2C2A14();
    if (!v3)
    {
      atomic_store(v2, &qword_2A181F380);
    }
  }
}

unint64_t sub_29E1DEB10()
{
  result = qword_2A181F390;
  if (!qword_2A181F390)
  {
    sub_29E1DF3E4(255, &qword_2A181F388, &type metadata for ForcedOffFromCycleFactors, MEMORY[0x29EDBC7F0]);
    sub_29E1DEBB4();
    sub_29E1DEC38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F390);
  }

  return result;
}

unint64_t sub_29E1DEBB4()
{
  result = qword_2A181F398;
  if (!qword_2A181F398)
  {
    sub_29E1E5C7C(255, &qword_2A181A9B8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC288]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F398);
  }

  return result;
}

unint64_t sub_29E1DEC38()
{
  result = qword_2A181F3A0;
  if (!qword_2A181F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F3A0);
  }

  return result;
}

unint64_t sub_29E1DEC8C(__n128 a1)
{
  result = qword_2A181F3A8;
  if (!qword_2A181F3A8)
  {
    sub_29E1DF47C(255, &qword_2A181F358, MEMORY[0x29EDBC7F0], a1);
    sub_29E1DED28(v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F3A8);
  }

  return result;
}

unint64_t sub_29E1DED28(__n128 a1)
{
  result = qword_2A181F3B0;
  if (!qword_2A181F3B0)
  {
    sub_29E1DFD60(255, &qword_2A181F360, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    sub_29E1DEE08();
    sub_29E1E5D80(&qword_2A1819290, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F3B0);
  }

  return result;
}

unint64_t sub_29E1DEE08()
{
  result = qword_2A181F3B8;
  if (!qword_2A181F3B8)
  {
    sub_29E1E53E8(255, &qword_2A181F368, sub_29DF91C14, &type metadata for MenstrualCyclesLearnMoreView, type metadata accessor for LearnMoreFooterText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F3B8);
  }

  return result;
}

void sub_29E1DEF10(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  *a2 = v3;
}

uint64_t sub_29E1DEF90(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_29E2C1224();
}

void sub_29E1DF094(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  *a4 = v5;
}

uint64_t sub_29E1DF124(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29E2C1224();
}

uint64_t sub_29E1DF1B8(uint64_t a1)
{
  sub_29E12E9EC(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1E51B8(a1, v4, sub_29E12E9EC);
  return MEMORY[0x29ED7E0E0](v4);
}

unint64_t sub_29E1DF254()
{
  result = qword_2A181F3C0;
  if (!qword_2A181F3C0)
  {
    sub_29E1DE9C8(255);
    sub_29E1DF304();
    sub_29E1E5D80(&qword_2A181F3E0, sub_29E12E9B8, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F3C0);
  }

  return result;
}

unint64_t sub_29E1DF304()
{
  result = qword_2A181F3C8;
  if (!qword_2A181F3C8)
  {
    sub_29E1DEA10(255);
    sub_29E1E00E4(&qword_2A181F3D0, sub_29E1DEA58, sub_29E1DEC8C);
    sub_29E1E5D80(&qword_2A181F3D8, sub_29E12E8DC, MEMORY[0x29EDBC850]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F3C8);
  }

  return result;
}

void sub_29E1DF3E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29E1E5C7C(255, &qword_2A181A9B8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC288]);
    v9 = a4(a1, v8, a3);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29E1DF47C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void), __n128 a4)
{
  if (!*a2)
  {
    sub_29E1DFD60(255, &qword_2A181F360, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    v8 = a3(a1, v7, MEMORY[0x29EDBCBF8]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E1DF514(uint64_t a1)
{
  sub_29E1E53E8(0, &qword_2A181F368, sub_29DF91C14, &type metadata for MenstrualCyclesLearnMoreView, type metadata accessor for LearnMoreFooterText);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E1DF5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_29E1DF61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_29E1DF70C(uint64_t a1)
{
  if (!qword_2A181F408)
  {
    sub_29E1DFB18(255, &qword_2A181F410, MEMORY[0x29EDBC7F0]);
    v1 = sub_29E2C2A14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181F408);
    }
  }
}

unint64_t sub_29E1DF798()
{
  result = qword_2A181F420;
  if (!qword_2A181F420)
  {
    sub_29E1DFB18(255, &qword_2A181F410, MEMORY[0x29EDBC7F0]);
    sub_29E1DF834();
    sub_29E1DEC38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F420);
  }

  return result;
}

unint64_t sub_29E1DF834()
{
  result = qword_2A181F428;
  if (!qword_2A181F428)
  {
    sub_29E1DF3E4(255, &qword_2A181F418, &type metadata for NotificationWhenNotAvailable, MEMORY[0x29EDBC558]);
    sub_29E1DEBB4();
    sub_29E1DF8D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F428);
  }

  return result;
}

unint64_t sub_29E1DF8D8()
{
  result = qword_2A181F430;
  if (!qword_2A181F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F430);
  }

  return result;
}

unint64_t sub_29E1DF92C()
{
  result = qword_2A181F438;
  if (!qword_2A181F438)
  {
    sub_29E1DF67C(255);
    sub_29E1DF9DC();
    sub_29E1E5D80(&qword_2A181F3E0, sub_29E12E9B8, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F438);
  }

  return result;
}

unint64_t sub_29E1DF9DC()
{
  result = qword_2A181F440;
  if (!qword_2A181F440)
  {
    sub_29E1DF6C4(255);
    sub_29E1DFA8C();
    sub_29E1E5D80(&qword_2A181F3D8, sub_29E12E8DC, MEMORY[0x29EDBC850]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F440);
  }

  return result;
}

unint64_t sub_29E1DFA8C()
{
  result = qword_2A181F448;
  if (!qword_2A181F448)
  {
    sub_29E1DF70C(255);
    sub_29E1DF798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F448);
  }

  return result;
}

void sub_29E1DFB18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *))
{
  if (!*a2)
  {
    sub_29E1DF3E4(255, &qword_2A181F418, &type metadata for NotificationWhenNotAvailable, MEMORY[0x29EDBC558]);
    v7 = a3(a1, v6, &type metadata for ForcedOffFromCycleFactors);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29E1DFC44()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 160, 7);
}

void sub_29E1DFCC8(uint64_t a1, __n128 a2)
{
  if (!qword_2A181F458)
  {
    sub_29E1DFD60(255, &qword_2A181F460, sub_29E1DFE18, MEMORY[0x29EDBC7F0]);
    sub_29E2C1F54();
    v2 = sub_29E2C1744();
    if (!v3)
    {
      atomic_store(v2, &qword_2A181F458);
    }
  }
}

void sub_29E1DFD60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29E1E53E8(255, &qword_2A181F368, sub_29DF91C14, &type metadata for MenstrualCyclesLearnMoreView, type metadata accessor for LearnMoreFooterText);
    v9 = v8;
    v10 = a3(255);
    v11 = a4(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29E1DFE18(uint64_t a1)
{
  if (!qword_2A181F468)
  {
    sub_29E1E53E8(255, &qword_2A181F368, sub_29DF91C14, &type metadata for MenstrualCyclesLearnMoreView, type metadata accessor for LearnMoreFooterText);
    v1 = sub_29E2C1C84();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181F468);
    }
  }
}

void sub_29E1DFEB0(uint64_t a1)
{
  if (!qword_2A181F470)
  {
    sub_29E1DF3E4(255, &qword_2A181F388, &type metadata for ForcedOffFromCycleFactors, MEMORY[0x29EDBC7F0]);
    sub_29E1DFCC8(255, v1);
    v2 = sub_29E2C2A14();
    if (!v3)
    {
      atomic_store(v2, &qword_2A181F470);
    }
  }
}

unint64_t sub_29E1DFF44()
{
  result = qword_2A181F478;
  if (!qword_2A181F478)
  {
    sub_29E1DFD60(255, &qword_2A181F460, sub_29E1DFE18, MEMORY[0x29EDBC7F0]);
    sub_29E1DEE08();
    sub_29E1E455C(&qword_2A181F480, sub_29E1DFE18, sub_29E1DEE08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F478);
  }

  return result;
}

unint64_t sub_29E1E0034(__n128 a1)
{
  result = qword_2A181F488;
  if (!qword_2A181F488)
  {
    sub_29E1DFCC8(255, a1);
    sub_29E1DFF44();
    sub_29E1E5D80(&qword_2A1819290, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F488);
  }

  return result;
}

uint64_t sub_29E1E00E4(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_29E1DEB10();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E1E01B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 160, 7);
}

void sub_29E1E023C(uint64_t a1)
{
  if (!qword_2A181F498)
  {
    sub_29E1DFB18(255, &qword_2A181F410, MEMORY[0x29EDBC7F0]);
    sub_29E1E43D0(255, &qword_2A1819280, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBCA18]);
    v1 = sub_29E2C2A14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181F498);
    }
  }
}

unint64_t sub_29E1E02F4()
{
  result = qword_2A181F4A0;
  if (!qword_2A181F4A0)
  {
    sub_29E1E023C(255);
    sub_29E1DF798();
    sub_29DF3F2DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F4A0);
  }

  return result;
}

uint64_t sub_29E1E03C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 128, 7);
}

void sub_29E1E0438(uint64_t a1, __n128 a2)
{
  if (!qword_2A181F4A8)
  {
    sub_29E1E04D4(255);
    sub_29E1E43D0(255, &qword_2A1819280, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBCA18]);
    v2 = sub_29E2C2A14();
    if (!v3)
    {
      atomic_store(v2, &qword_2A181F4A8);
    }
  }
}

void sub_29E1E04D4(uint64_t a1)
{
  if (!qword_2A181F4B0)
  {
    sub_29E1E5C7C(255, &qword_2A181A9B8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC288]);
    sub_29E1E5318(255, &qword_2A181D6B0, MEMORY[0x29EDC9A98], MEMORY[0x29EDBC958]);
    v1 = sub_29E2C1744();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181F4B0);
    }
  }
}

uint64_t sub_29E1E058C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29E2C1A14();
  *a1 = result & 1;
  return result;
}

char *sub_29E1E05F8(unint64_t a1, char a2)
{
  v4 = sub_29E144324(0, 1, 1, MEMORY[0x29EDCA190]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    v4 = sub_29E144324((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v7;
  v4[v6 + 32] = 0;
  if ((a1 & 0x10000) != 0)
  {
    v8 = *(v4 + 3);
    v9 = v6 + 2;
    if (v9 > (v8 >> 1))
    {
      v4 = sub_29E144324((v8 > 1), v9, 1, v4);
    }

    *(v4 + 2) = v9;
    v4[v7 + 32] = 1;
  }

  else
  {
    v9 = v6 + 1;
  }

  v10 = (a1 >> 16) & 1;
  if ((a1 & 0x101000000) == 0)
  {
    LODWORD(v10) = 0;
  }

  if ((a1 >> 8) & 1 | a1 & 1 || v10)
  {
    v11 = *(v4 + 3);
    if (v9 >= v11 >> 1)
    {
      v4 = sub_29E144324((v11 > 1), v9 + 1, 1, v4);
    }

    *(v4 + 2) = v9 + 1;
    v4[v9 + 32] = 2;
  }

  v13 = *(v4 + 2);
  v12 = *(v4 + 3);
  v14 = v13 + 1;
  if (v13 >= v12 >> 1)
  {
    v4 = sub_29E144324((v12 > 1), v13 + 1, 1, v4);
  }

  *(v4 + 2) = v14;
  v4[v13 + 32] = 3;
  v21 = v4;
  if ((a1 & 0x1010000000000) != 0)
  {
    v15 = *(v4 + 3);
    v16 = v13 + 2;
    if (v16 > (v15 >> 1))
    {
      v4 = sub_29E144324((v15 > 1), v16, 1, v4);
    }

    *(v4 + 2) = v16;
    v4[v14 + 32] = 4;
    v21 = v4;
    if ((a1 & 0x100000000000000) == 0)
    {
LABEL_21:
      if ((a2 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v16 = v13 + 1;
    if ((a1 & 0x100000000000000) == 0)
    {
      goto LABEL_21;
    }
  }

  v17 = *(v4 + 3);
  if (v16 >= v17 >> 1)
  {
    v4 = sub_29E144324((v17 > 1), v16 + 1, 1, v4);
  }

  *(v4 + 2) = v16 + 1;
  v4[v16 + 32] = 5;
  v21 = v4;
  if (a2)
  {
LABEL_27:
    v19 = *(v4 + 2);
    v18 = *(v4 + 3);
    if (v19 >= v18 >> 1)
    {
      v4 = sub_29E144324((v18 > 1), v19 + 1, 1, v4);
    }

    *(v4 + 2) = v19 + 1;
    v4[v19 + 32] = 6;
    v21 = v4;
  }

LABEL_30:
  sub_29DFCBA6C(&unk_2A24AEBB8);
  return v21;
}

uint64_t sub_29E1E0864@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v34 - v8;
  type metadata accessor for FeatureSettingsModel(0);
  sub_29E1E5D80(&qword_2A1819800, type metadata accessor for FeatureSettingsModel, &unk_29E2D3CB8);
  v10 = sub_29E2C1824();
  v43 = v11;
  v44 = v10;
  type metadata accessor for AnalysisModel(0);
  sub_29E1E5D80(&qword_2A1819808, type metadata accessor for AnalysisModel, &unk_29E2DF480);
  v12 = sub_29E2C1824();
  v41 = v13;
  v42 = v12;
  type metadata accessor for AllFeaturesModel();
  sub_29E1E5D80(&qword_2A1819818, type metadata accessor for AllFeaturesModel, &unk_29E2D4948);
  v14 = sub_29E2C1824();
  v39 = v15;
  v40 = v14;
  type metadata accessor for DeviationsFeatureStatusModel(0);
  sub_29E1E5D80(&qword_2A1819820, type metadata accessor for DeviationsFeatureStatusModel, &unk_29E2D3CB8);
  v16 = sub_29E2C1824();
  v37 = v17;
  v38 = v16;
  sub_29E2C3314();
  v18 = *(v4 + 16);
  v18(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v19 = qword_2A1A67F80;
  sub_29E2BCC74();
  v20 = v19;
  v21 = sub_29E2C3414();
  v35 = v22;
  v36 = v21;
  v23 = *(v4 + 8);
  v23(v9, v3);
  sub_29E2C3314();
  v18(v6, v9, v3);
  sub_29E2BCC74();
  v24 = sub_29E2C3414();
  v26 = v25;
  v23(v9, v3);
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v45 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000019, 0x800000029E301740);
  result = MEMORY[0x29ED7FCC0](0x7265746F6F462ELL, 0xE700000000000000);
  v28 = v45;
  v29 = v43;
  *a1 = v44;
  *(a1 + 8) = v29;
  v30 = v41;
  *(a1 + 16) = v42;
  *(a1 + 24) = v30;
  v31 = v39;
  *(a1 + 32) = v40;
  *(a1 + 40) = v31;
  v32 = v37;
  *(a1 + 48) = v38;
  *(a1 + 56) = v32;
  v33 = v35;
  *(a1 + 64) = v36;
  *(a1 + 72) = v33;
  *(a1 + 80) = v24;
  *(a1 + 88) = v26;
  *(a1 + 96) = v28;
  return result;
}

uint64_t sub_29E1E0CC8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v35 - v8;
  type metadata accessor for LocalSettingsModel();
  sub_29E1E5D80(&qword_2A181BBE0, type metadata accessor for LocalSettingsModel, &unk_29E2DC1F4);
  v10 = sub_29E2C1824();
  v44 = v11;
  v45 = v10;
  type metadata accessor for FeatureSettingsModel(0);
  sub_29E1E5D80(&qword_2A1819800, type metadata accessor for FeatureSettingsModel, &unk_29E2D3CB8);
  v12 = sub_29E2C1824();
  v42 = v13;
  v43 = v12;
  type metadata accessor for AnalysisModel(0);
  sub_29E1E5D80(&qword_2A1819808, type metadata accessor for AnalysisModel, &unk_29E2DF480);
  v14 = sub_29E2C1824();
  v40 = v15;
  v41 = v14;
  type metadata accessor for HealthNotificationsModel(0);
  sub_29E1E5D80(&qword_2A1819810, type metadata accessor for HealthNotificationsModel, &unk_29E2D928C);
  v16 = sub_29E2C1824();
  v38 = v17;
  v39 = v16;
  type metadata accessor for AllFeaturesModel();
  sub_29E1E5D80(&qword_2A1819818, type metadata accessor for AllFeaturesModel, &unk_29E2D4948);
  v18 = sub_29E2C1824();
  v36 = v19;
  v37 = v18;
  type metadata accessor for DeviationsFeatureStatusModel(0);
  sub_29E1E5D80(&qword_2A1819820, type metadata accessor for DeviationsFeatureStatusModel, &unk_29E2D3CB8);
  v20 = sub_29E2C1824();
  v35 = v21;
  v46 = 0;
  sub_29E2C27C4();
  v22 = v47;
  v23 = v48;
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v24 = qword_2A1A67F80;
  sub_29E2BCC74();
  v25 = sub_29E2C3414();
  v27 = v26;
  result = (*(v4 + 8))(v9, v3);
  v29 = v44;
  *a1 = v45;
  *(a1 + 8) = v29;
  v30 = v42;
  *(a1 + 16) = v43;
  *(a1 + 24) = v30;
  v31 = v40;
  *(a1 + 32) = v41;
  *(a1 + 40) = v31;
  v32 = v38;
  *(a1 + 48) = v39;
  *(a1 + 56) = v32;
  v33 = v36;
  *(a1 + 64) = v37;
  *(a1 + 72) = v33;
  v34 = v35;
  *(a1 + 80) = v20;
  *(a1 + 88) = v34;
  *(a1 + 96) = v22;
  *(a1 + 104) = v23;
  *(a1 + 112) = v25;
  *(a1 + 120) = v27;
  return result;
}

uint64_t sub_29E1E10EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v35 - v8;
  type metadata accessor for LocalSettingsModel();
  sub_29E1E5D80(&qword_2A181BBE0, type metadata accessor for LocalSettingsModel, &unk_29E2DC1F4);
  v10 = sub_29E2C1824();
  v42 = v11;
  v43 = v10;
  type metadata accessor for FeatureSettingsModel(0);
  sub_29E1E5D80(&qword_2A1819800, type metadata accessor for FeatureSettingsModel, &unk_29E2D3CB8);
  v12 = sub_29E2C1824();
  v40 = v13;
  v41 = v12;
  type metadata accessor for AnalysisModel(0);
  sub_29E1E5D80(&qword_2A1819808, type metadata accessor for AnalysisModel, &unk_29E2DF480);
  v14 = sub_29E2C1824();
  v38 = v15;
  v39 = v14;
  type metadata accessor for AllFeaturesModel();
  sub_29E1E5D80(&qword_2A1819818, type metadata accessor for AllFeaturesModel, &unk_29E2D4948);
  v16 = sub_29E2C1824();
  v36 = v17;
  v37 = v16;
  type metadata accessor for DeviationsFeatureStatusModel(0);
  sub_29E1E5D80(&qword_2A1819820, type metadata accessor for DeviationsFeatureStatusModel, &unk_29E2D3CB8);
  v18 = sub_29E2C1824();
  v20 = v19;
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v21 = qword_2A1A67F80;
  sub_29E2BCC74();
  v22 = v21;
  v23 = sub_29E2C3414();
  v25 = v24;
  (*(v4 + 8))(v9, v3);
  sub_29E2C3394();
  sub_29E2BCC74();
  v26 = sub_29E2C3414();
  v28 = v27;
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v44 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD00000000000001ELL, 0x800000029E301700);
  result = MEMORY[0x29ED7FCC0](0x7265746F6F462ELL, 0xE700000000000000);
  v30 = v44;
  v31 = v42;
  *a1 = v43;
  *(a1 + 8) = v31;
  v32 = v40;
  *(a1 + 16) = v41;
  *(a1 + 24) = v32;
  v33 = v38;
  *(a1 + 32) = v39;
  *(a1 + 40) = v33;
  v34 = v36;
  *(a1 + 48) = v37;
  *(a1 + 56) = v34;
  *(a1 + 64) = v18;
  *(a1 + 72) = v20;
  *(a1 + 80) = v23;
  *(a1 + 88) = v25;
  *(a1 + 96) = v26;
  *(a1 + 104) = v28;
  *(a1 + 112) = v30;
  return result;
}

uint64_t sub_29E1E1594@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v27 - v8;
  type metadata accessor for LocalSettingsModel();
  sub_29E1E5D80(&qword_2A181BBE0, type metadata accessor for LocalSettingsModel, &unk_29E2DC1F4);
  v10 = sub_29E2C1824();
  v30 = v11;
  v31 = v10;
  type metadata accessor for AnalysisModel(0);
  sub_29E1E5D80(&qword_2A1819808, type metadata accessor for AnalysisModel, &unk_29E2DF480);
  v12 = sub_29E2C1824();
  v28 = v13;
  v29 = v12;
  type metadata accessor for HealthNotificationsModel(0);
  sub_29E1E5D80(&qword_2A1819810, type metadata accessor for HealthNotificationsModel, &unk_29E2D928C);
  v14 = sub_29E2C1824();
  v27 = v15;
  v32 = 0;
  sub_29E2C27C4();
  v16 = v33;
  v17 = *(&v33 + 1);
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v18 = qword_2A1A67F80;
  sub_29E2BCC74();
  v19 = sub_29E2C3414();
  v21 = v20;
  (*(v4 + 8))(v9, v3);
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v33 = xmmword_2A1A67E58;
  sub_29E2BF404();
  result = MEMORY[0x29ED7FCC0](0xD000000000000022, 0x800000029E3016D0);
  v23 = v33;
  v24 = v30;
  *a1 = v31;
  *(a1 + 8) = v24;
  v25 = v28;
  *(a1 + 16) = v29;
  *(a1 + 24) = v25;
  v26 = v27;
  *(a1 + 32) = v14;
  *(a1 + 40) = v26;
  *(a1 + 48) = v16;
  *(a1 + 56) = v17;
  *(a1 + 64) = v19;
  *(a1 + 72) = v21;
  *(a1 + 80) = v23;
  return result;
}

uint64_t sub_29E1E1928@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  type metadata accessor for AllFeaturesModel();
  sub_29E1E5D80(&qword_2A1819818, type metadata accessor for AllFeaturesModel, &unk_29E2D4948);
  v4 = sub_29E2C1824();
  v6 = v5;
  sub_29E2C3394();
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v7 = qword_2A1A67F80;
  sub_29E2BCC74();
  v8 = sub_29E2C3414();
  v10 = v9;
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v12 = xmmword_2A1A67E58;
  sub_29E2BF404();
  result = MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E301680);
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v12;
  return result;
}

uint64_t sub_29E1E1B58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  type metadata accessor for AllFeaturesModel();
  sub_29E1E5D80(&qword_2A1819818, type metadata accessor for AllFeaturesModel, &unk_29E2D4948);
  v4 = sub_29E2C1824();
  v6 = v5;
  sub_29E2C3394();
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v7 = qword_2A1A67F80;
  sub_29E2BCC74();
  v8 = sub_29E2C3414();
  v10 = v9;
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v12 = xmmword_2A1A67E58;
  sub_29E2BF404();
  result = MEMORY[0x29ED7FCC0](0xD00000000000001BLL, 0x800000029E301660);
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v12;
  return result;
}

uint64_t sub_29E1E1D88@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AnalysisModel(0);
  sub_29E1E5D80(&qword_2A1819808, type metadata accessor for AnalysisModel, &unk_29E2DF480);
  v2 = sub_29E2C1824();
  v4 = v3;
  type metadata accessor for AllFeaturesModel();
  sub_29E1E5D80(&qword_2A1819818, type metadata accessor for AllFeaturesModel, &unk_29E2D4948);
  v5 = sub_29E2C1824();
  v7 = v6;
  type metadata accessor for DeviationsFeatureStatusModel(0);
  sub_29E1E5D80(&qword_2A1819820, type metadata accessor for DeviationsFeatureStatusModel, &unk_29E2D3CB8);
  v8 = sub_29E2C1824();
  v10 = v9;
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v12 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000020, 0x800000029E3016A0);
  result = MEMORY[0x29ED7FCC0](0x7265746F6F462ELL, 0xE700000000000000);
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + 48) = v12;
  return result;
}

unint64_t sub_29E1E1F60(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E2C47E4();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29E1E1FAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v18 - v9;
  if (a1)
  {
    swift_beginAccess();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_29E2C1214();

    v11 = (v5 + 16);
    if (v19)
    {
      sub_29E2C3314();
      (*v11)(v7, v10, v4);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v12 = qword_2A1A67F80;
      sub_29E2BCC74();
      v13 = sub_29E2C3414();
      v15 = v14;
      (*(v5 + 8))(v10, v4);
      v19 = v13;
      v20 = v15;
      sub_29DE9DE68();
      return sub_29E2C2294();
    }

    else
    {
      sub_29E2C3314();
      (*v11)(v7, v10, v4);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v17 = qword_2A1A67F80;
      sub_29E2BCC74();
      sub_29E2C3414();
      (*(v5 + 8))(v10, v4);
      sub_29E2C1B34();
      return sub_29E2C2274();
    }
  }

  else
  {
    type metadata accessor for AllFeaturesModel();
    sub_29E1E5D80(&qword_2A1819818, type metadata accessor for AllFeaturesModel, &unk_29E2D4948);
    result = sub_29E2C1804();
    __break(1u);
  }

  return result;
}

unint64_t sub_29E1E2394()
{
  result = qword_2A181F4B8;
  if (!qword_2A181F4B8)
  {
    sub_29E1E04D4(255);
    sub_29E1DEBB4();
    sub_29E12FD30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F4B8);
  }

  return result;
}

unint64_t sub_29E1E2414(__n128 a1)
{
  result = qword_2A181F4C0;
  if (!qword_2A181F4C0)
  {
    sub_29E1E0438(255, a1);
    sub_29E1E2394();
    sub_29DF3F2DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F4C0);
  }

  return result;
}

void sub_29E1E24B8(uint64_t a1)
{
  if (!qword_2A181F4D0)
  {
    sub_29E1E5C7C(255, &qword_2A181F4D8, &type metadata for TextWithLink, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC7F0]);
    sub_29E2C1F54();
    v1 = sub_29E2C1744();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181F4D0);
    }
  }
}

void sub_29E1E254C(uint64_t a1)
{
  if (!qword_2A181F4E0)
  {
    sub_29E1E5318(255, &qword_2A181F4E8, MEMORY[0x29EDBCA18], MEMORY[0x29EDC9C68]);
    sub_29E1E04D4(255);
    sub_29E1E24B8(255);
    v1 = sub_29E2C2A14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181F4E0);
    }
  }
}

unint64_t sub_29E1E25F0()
{
  result = qword_2A181F4F0;
  if (!qword_2A181F4F0)
  {
    sub_29E1E5C7C(255, &qword_2A181F4D8, &type metadata for TextWithLink, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC7F0]);
    sub_29E131570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F4F0);
  }

  return result;
}

double sub_29E1E269C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_29DED6478(a1, a2, a3 & 1);
  }

  else
  {
  }

  return result;
}

unint64_t sub_29E1E2700()
{
  result = qword_2A181F4F8;
  if (!qword_2A181F4F8)
  {
    sub_29E1E5318(255, &qword_2A181F4E8, MEMORY[0x29EDBCA18], MEMORY[0x29EDC9C68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F4F8);
  }

  return result;
}

unint64_t sub_29E1E2794()
{
  result = qword_2A181F500;
  if (!qword_2A181F500)
  {
    sub_29E1E24B8(255);
    sub_29E1E25F0();
    sub_29E1E5D80(&qword_2A1819290, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F500);
  }

  return result;
}

unint64_t sub_29E1E2844()
{
  result = qword_2A181F508;
  if (!qword_2A181F508)
  {
    sub_29E1E254C(255);
    sub_29E1E2700();
    sub_29E1E2394();
    sub_29E1E2794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F508);
  }

  return result;
}

uint64_t sub_29E1E28D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v4 = sub_29E2C0514();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BCE84();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_29E2BCEA4();
  v47 = *(v49 - 8);
  MEMORY[0x2A1C7C4A8](v49);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_29E2BCBB4();
  v46 = *(v52 - 8);
  MEMORY[0x2A1C7C4A8](v52);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v48 = &v45 - v18;
  v19 = *MEMORY[0x29EDC3248];
  v20 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v22 = v21;
  if (v20 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v22 == v23)
  {
  }

  else
  {
    v24 = sub_29E2C4914();

    if ((v24 & 1) == 0)
    {
LABEL_18:
      v28 = 0;
      return v28 & 1;
    }
  }

  if (!a2)
  {
    v27 = type metadata accessor for PregnancyModeOptionsModel(0);
    sub_29E1E5D80(&qword_2A1819828, type metadata accessor for PregnancyModeOptionsModel, &unk_29E2DD050);
    sub_29E2C1804();
    __break(1u);
    goto LABEL_23;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_29E2C1214();

  v25 = v55;
  if (!v55)
  {
LABEL_14:
    if (HKShowSensitiveLogItems())
    {
      sub_29E2C04B4();
      v29 = sub_29E2C0504();
      v30 = sub_29E2C3A14();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v55 = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_29DFAA104(0xD00000000000003DLL, 0x800000029E305740, &v55);
        _os_log_impl(&dword_29DE74000, v29, v30, "[%s] No pregnancy model or sample to decide if we should disable toggle", v31, 0xCu);
        sub_29DE93B3C(v32);
        MEMORY[0x29ED82140](v32, -1, -1);
        MEMORY[0x29ED82140](v31, -1, -1);
      }

      (*(v53 + 8))(v6, v54);
    }

    goto LABEL_18;
  }

  v19 = v16;
  v26 = [v55 sample];
  if (!v26)
  {
    v27 = v25;
LABEL_13:

    goto LABEL_14;
  }

  v27 = v26;
  if (![v25 state])
  {

    goto LABEL_13;
  }

  if ([v25 state] == 1)
  {

    v28 = 1;
    return v28 & 1;
  }

  [objc_opt_self() recentPregnancyEndThresholdInDays];
  sub_29E2BCE44();
  v34 = v50;
  v35 = v51;
  (*(v50 + 104))(v9, *MEMORY[0x29EDB9CB8], v51);
  v36 = [v27 endDate];
  sub_29E2BCB44();

  sub_29E2BCE04();
  v37 = v46;
  v38 = v52;
  v53 = *(v46 + 8);
  v54 = v46 + 8;
  (v53)(v19, v52);
  v39 = v9;
  v9 = v38;
  (*(v34 + 8))(v39, v35);
  (*(v47 + 8))(v11, v49);
  if ((*(v37 + 48))(v14, 1, v38) != 1)
  {
    v40 = v48;
    (*(v37 + 32))(v48, v14, v38);
    sub_29E2BCBA4();
    sub_29E1E5D80(&qword_2A1A616E0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
    v41 = sub_29E2C32A4();

    v42 = v53;
    (v53)(v19, v9);
    v42(v40, v9);
    v28 = v41 ^ 1;
    return v28 & 1;
  }

LABEL_23:
  sub_29E1E52B8(v14, sub_29DEB3B00);
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_29E2C4584();

  v55 = 0xD00000000000001FLL;
  v56 = 0x800000029E3057B0;
  v43 = [v27 endDate];
  sub_29E2BCB44();

  sub_29E1E5D80(&qword_2A1817C98, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9C00]);
  v44 = sub_29E2C48D4();
  MEMORY[0x29ED7FCC0](v44);

  (v53)(v19, v9);
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

uint64_t sub_29E1E30FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = v17 - v10;
  if (sub_29E1E28D8(*MEMORY[0x29EDC3248], a1, a2))
  {
    sub_29E2C3314();
    (*(v6 + 16))(v8, v11, v5);
    if (qword_2A1A62788 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_29E2C3314();
  (*(v6 + 16))(v8, v11, v5);
  if (qword_2A1A62788 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v12 = qword_2A1A67F80;
  sub_29E2BCC74();
  v13 = sub_29E2C3414();
  v15 = v14;
  (*(v6 + 8))(v11, v5);
  v17[3] = v13;
  v17[4] = v15;
  sub_29DE9DE68();
  return sub_29E2C2294();
}

void sub_29E1E33CC(uint64_t a1)
{
  if (!qword_2A181F510)
  {
    sub_29E1E34D8(255);
    sub_29E1E4EBC(255, &qword_2A181F520, sub_29E1E04D4, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    sub_29E1E5D80(&qword_2A181F528, sub_29E1E34D8, MEMORY[0x29EDC9A80]);
    v1 = sub_29E2C29C4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181F510);
    }
  }
}

uint64_t sub_29E1E3548(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_29E1E4EBC(255, a2, a3, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    a4();
    sub_29E1E5D80(&qword_2A1819290, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E1E3628(uint64_t a1)
{
  if (!qword_2A181F540)
  {
    type metadata accessor for FeatureSettingsModel(255);
    sub_29E1E5D80(&qword_2A1819800, type metadata accessor for FeatureSettingsModel, &unk_29E2D3CB8);
    v1 = sub_29E2C1834();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181F540);
    }
  }
}

void sub_29E1E36BC(uint64_t a1)
{
  if (!qword_2A181F548)
  {
    type metadata accessor for PregnancyModeOptionsModel(255);
    sub_29E1E5D80(&qword_2A1819828, type metadata accessor for PregnancyModeOptionsModel, &unk_29E2DD050);
    v1 = sub_29E2C1834();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181F548);
    }
  }
}

uint64_t sub_29E1E3760()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 88, 7);
}

uint64_t sub_29E1E37C8()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = v13 - v6;
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  v11 = v10;
  (*(v2 + 8))(v7, v1);
  v13[1] = v9;
  v13[2] = v11;
  sub_29DE9DE68();
  return sub_29E2C2294();
}

void sub_29E1E39FC(uint64_t a1)
{
  if (!qword_2A181F560)
  {
    sub_29E1E3A60(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181F560);
    }
  }
}

void sub_29E1E3AA8(uint64_t a1, __n128 a2)
{
  if (!qword_2A181F570)
  {
    sub_29E1E3B7C(255);
    sub_29E2C1704();
    sub_29E1E5D80(&qword_2A181F5B0, sub_29E1E3B7C, MEMORY[0x29EDBC280]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181F570);
    }
  }
}

void sub_29E1E3B7C(uint64_t a1)
{
  if (!qword_2A181F578)
  {
    sub_29E1E5318(255, &qword_2A1A5E2B0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
    sub_29E1E3C70(255);
    sub_29E1E3DD0();
    sub_29E1E5D80(&qword_2A181F5A8, sub_29E1E3C70, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C28B4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181F578);
    }
  }
}

void sub_29E1E3CA4(uint64_t a1, __n128 a2)
{
  if (!qword_2A181F588)
  {
    sub_29E1E3D14(255);
    sub_29E1E3E64(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181F588);
    }
  }
}

void sub_29E1E3D14(uint64_t a1)
{
  if (!qword_2A181F590)
  {
    sub_29E1E5318(255, &qword_2A1A5E2B0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
    sub_29E1E3DD0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181F590);
    }
  }
}

unint64_t sub_29E1E3DD0()
{
  result = qword_2A181F598;
  if (!qword_2A181F598)
  {
    sub_29E1E5318(255, &qword_2A1A5E2B0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F598);
  }

  return result;
}

void sub_29E1E3E64(uint64_t a1)
{
  if (!qword_2A181F5A0)
  {
    sub_29E1E5C7C(255, &qword_2A1819CB0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9BC0], MEMORY[0x29EDC9930]);
    sub_29E1E3D14(255);
    sub_29DF9D78C();
    v1 = sub_29E2C29C4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181F5A0);
    }
  }
}

uint64_t sub_29E1E3F64@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_29E1E3FF8(uint64_t a1)
{
  if (!qword_2A181F5C8)
  {
    sub_29E1E4058(255);
    v1 = sub_29E2C1C84();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181F5C8);
    }
  }
}

void sub_29E1E4058(uint64_t a1)
{
  if (!qword_2A181F5D0)
  {
    sub_29E1E53E8(255, &qword_2A181F368, sub_29DF91C14, &type metadata for MenstrualCyclesLearnMoreView, type metadata accessor for LearnMoreFooterText);
    v1 = sub_29E2C1C84();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181F5D0);
    }
  }
}

void sub_29E1E4180(uint64_t a1)
{
  if (!qword_2A181F5E8)
  {
    sub_29E1E4250(255, &qword_2A181F5F0, sub_29E1E42E0);
    sub_29E1E4EBC(255, &qword_2A181F5C0, sub_29E1E3FF8, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    v1 = sub_29E2C2A14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181F5E8);
    }
  }
}

void sub_29E1E4250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E1E5318(255, &qword_2A181D6B0, MEMORY[0x29EDC9A98], MEMORY[0x29EDBC958]);
    v4 = sub_29E2C1744();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E1E42E0(uint64_t a1)
{
  if (!qword_2A181F5F8)
  {
    sub_29E014E98(255);
    sub_29E1E43D0(255, &qword_2A181F600, sub_29E0CDE8C, &type metadata for DeviationDetectionDetail);
    sub_29DE9DE68();
    swift_getOpaqueTypeConformance2();
    sub_29E1E4434();
    v1 = sub_29E2C1614();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181F5F8);
    }
  }
}

void sub_29E1E43D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_29E2C1744();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_29E1E4434()
{
  result = qword_2A181F608;
  if (!qword_2A181F608)
  {
    sub_29E1E43D0(255, &qword_2A181F600, sub_29E0CDE8C, &type metadata for DeviationDetectionDetail);
    sub_29E1E4508();
    sub_29E1E5D80(&qword_2A181C4E8, sub_29E0CDE8C, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F608);
  }

  return result;
}

unint64_t sub_29E1E4508()
{
  result = qword_2A181F610;
  if (!qword_2A181F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F610);
  }

  return result;
}

uint64_t sub_29E1E455C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E1E4624(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E1E46B8()
{
  result = qword_2A181F628;
  if (!qword_2A181F628)
  {
    sub_29E1E4250(255, &qword_2A181F5F0, sub_29E1E42E0);
    sub_29E1E5D80(&qword_2A181F630, sub_29E1E42E0, MEMORY[0x29EDBBF08]);
    sub_29E12FD30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F628);
  }

  return result;
}

unint64_t sub_29E1E4784()
{
  result = qword_2A181F638;
  if (!qword_2A181F638)
  {
    sub_29E1E4EBC(255, &qword_2A181F5C0, sub_29E1E3FF8, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    sub_29E1E455C(&qword_2A181F618, sub_29E1E3FF8, sub_29E1E45DC);
    sub_29E1E5D80(&qword_2A1819290, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F638);
  }

  return result;
}

unint64_t sub_29E1E48B0()
{
  result = qword_2A181F640;
  if (!qword_2A181F640)
  {
    sub_29E1E40F0(255);
    sub_29E1E4960();
    sub_29E1E5D80(&qword_2A181F3E0, sub_29E12E9B8, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F640);
  }

  return result;
}

unint64_t sub_29E1E4960()
{
  result = qword_2A181F648;
  if (!qword_2A181F648)
  {
    sub_29E1E4138(255);
    sub_29E1E4A10();
    sub_29E1E5D80(&qword_2A181F3D8, sub_29E12E8DC, MEMORY[0x29EDBC850]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F648);
  }

  return result;
}

unint64_t sub_29E1E4A10()
{
  result = qword_2A181F650;
  if (!qword_2A181F650)
  {
    sub_29E1E4180(255);
    sub_29E1E46B8();
    sub_29E1E4784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F650);
  }

  return result;
}

uint64_t sub_29E1E4A9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E1E4B04(uint64_t a1, uint64_t a2)
{
  sub_29E1E53E8(0, &qword_2A181F368, sub_29DF91C14, &type metadata for MenstrualCyclesLearnMoreView, type metadata accessor for LearnMoreFooterText);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E1E4BC0(uint64_t a1)
{
  if (!qword_2A181F658)
  {
    type metadata accessor for AllFeaturesModel();
    sub_29E1E5D80(&qword_2A1819818, type metadata accessor for AllFeaturesModel, &unk_29E2D4948);
    v1 = sub_29E2C1834();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181F658);
    }
  }
}

unint64_t sub_29E1E4D98()
{
  result = qword_2A181F680;
  if (!qword_2A181F680)
  {
    sub_29E1E4EBC(255, &qword_2A181F688, sub_29E1DFEB0, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    sub_29E1E00E4(&qword_2A181F490, sub_29E1DFEB0, sub_29E1E0034);
    sub_29E1E5D80(&qword_2A1819290, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F680);
  }

  return result;
}

void sub_29E1E4EBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_29E1E4F40()
{
  result = qword_2A181F6C0;
  if (!qword_2A181F6C0)
  {
    sub_29E1E50F8(255, &qword_2A181F6C8, sub_29E1E33CC, MEMORY[0x29EDBCA18]);
    sub_29E1E57CC(&qword_2A181F530, sub_29E1E33CC, sub_29E1E350C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F6C0);
  }

  return result;
}

unint64_t sub_29E1E5018()
{
  result = qword_2A181F6D0;
  if (!qword_2A181F6D0)
  {
    sub_29E1E50F8(255, &qword_2A181F6D8, sub_29E1E39C8, MEMORY[0x29EDBCBF8]);
    sub_29E1E5D80(&qword_2A181F5B8, sub_29E1E39C8, MEMORY[0x29EDBCC30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F6D0);
  }

  return result;
}

void sub_29E1E50F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_29E2C2A14();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29E1E51B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29E1E5254()
{
  if (!qword_2A181F6F8)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A181F6F8);
    }
  }
}

uint64_t sub_29E1E52B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E1E5318(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E1E53E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_29E1E5450()
{
  result = qword_2A181F708;
  if (!qword_2A181F708)
  {
    sub_29E1E53E8(255, &qword_2A181F700, sub_29E1DF8D8, &type metadata for NotificationWhenNotAvailable, MEMORY[0x29EDBC858]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F708);
  }

  return result;
}

uint64_t sub_29E1E54E8()
{

  return MEMORY[0x2A1C733A0](v0, 57, 7);
}

void sub_29E1E5538(uint64_t a1, __n128 a2)
{
  if (!qword_2A181F710)
  {
    sub_29E1E55E8(255);
    sub_29E1E57CC(&qword_2A181F738, sub_29E1E55E8, sub_29E1E5848);
    v2 = sub_29E2C21D4();
    if (!v3)
    {
      atomic_store(v2, &qword_2A181F710);
    }
  }
}

void sub_29E1E55E8(uint64_t a1)
{
  if (!qword_2A181F718)
  {
    sub_29DF3D018(255);
    sub_29E1E50F8(255, &qword_2A181F720, sub_29E1E5738, MEMORY[0x29EDBCBF8]);
    sub_29E1E5D80(&qword_2A181F730, sub_29DF3D018, MEMORY[0x29EDC9A80]);
    v1 = sub_29E2C29C4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181F718);
    }
  }
}

void sub_29E1E56D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E1E5738(uint64_t a1)
{
  if (!qword_2A181F728)
  {
    sub_29E1E5C7C(255, &qword_2A181A9B8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC288]);
    sub_29E2C1F54();
    v1 = sub_29E2C1744();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181F728);
    }
  }
}

uint64_t sub_29E1E57CC(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E1E5848()
{
  result = qword_2A181F740;
  if (!qword_2A181F740)
  {
    sub_29E1E50F8(255, &qword_2A181F720, sub_29E1E5738, MEMORY[0x29EDBCBF8]);
    sub_29E1E58F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F740);
  }

  return result;
}

unint64_t sub_29E1E58F8()
{
  result = qword_2A181F748;
  if (!qword_2A181F748)
  {
    sub_29E1E5738(255);
    sub_29E1DEBB4();
    sub_29E1E5D80(&qword_2A1819290, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F748);
  }

  return result;
}

void sub_29E1E59A8(uint64_t a1, __n128 a2)
{
  if (!qword_2A181F750)
  {
    sub_29E1E5538(255, a2);
    sub_29E2C1D34();
    sub_29E1E5D80(&qword_2A181F758, sub_29E1E5538, MEMORY[0x29EDBC0F0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181F750);
    }
  }
}

unint64_t sub_29E1E5AB8()
{
  result = qword_2A181F768;
  if (!qword_2A181F768)
  {
    sub_29E1E4250(255, &qword_2A181F770, sub_29E1E5B54);
    sub_29E1E5CD0();
    sub_29E12FD30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F768);
  }

  return result;
}

void sub_29E1E5B54(uint64_t a1)
{
  if (!qword_2A181F778)
  {
    sub_29E1E5BE8(255);
    sub_29E1E5C7C(255, &qword_2A181C678, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    v1 = sub_29E2C1744();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181F778);
    }
  }
}

void sub_29E1E5BE8(uint64_t a1)
{
  if (!qword_2A181F780)
  {
    sub_29E1E5220(255);
    sub_29E1E5D80(&qword_2A181F788, sub_29E1E5220, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C2884();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181F780);
    }
  }
}

void sub_29E1E5C7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_29E1E5CD0()
{
  result = qword_2A181F790;
  if (!qword_2A181F790)
  {
    sub_29E1E5B54(255);
    sub_29E1E5D80(&qword_2A181F798, sub_29E1E5BE8, MEMORY[0x29EDBCB30]);
    sub_29E0DF174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F790);
  }

  return result;
}

uint64_t sub_29E1E5D80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_29E1E5DE4(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v17[-v8];
  v10 = [objc_opt_self() boldButton];
  [v10 addTarget:a1 action:sel_hxui_primaryFooterButtonTapped forControlEvents:64];
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  v12 = sub_29E2C33A4();

  [v10 setTitle:v12 forState:0];

  v13 = qword_2A1A60ED8;
  v14 = v10;
  if (v13 != -1)
  {
    swift_once();
  }

  *&v17[8] = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2ECF90);
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](0xD000000000000013, 0x800000029E2ED030);
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](0x427972616D697250, 0xED00006E6F747475);
  v15 = sub_29E2C33A4();

  [v14 setAccessibilityIdentifier_];

  return v14;
}

id sub_29E1E614C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_29E1E61B0(uint64_t a1)
{
  v1 = sub_29E2C1F74();
  MEMORY[0x2A1C7C4A8](v1);
  v2 = type metadata accessor for EstimationMethodSelectionView(0);
  MEMORY[0x2A1C7C4A8](v2);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = swift_getKeyPath();
  sub_29E1E8008(0, &unk_2A181A6A0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v5 = *(v2 + 24);
  v6 = qword_2A1A60ED8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = (v4 + v5);
  v15 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2ECF90);
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](0xD000000000000019, 0x800000029E305BE0);
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](0x77656976627553, 0xE700000000000000);
  v8 = *(&v15 + 1);
  *v7 = v15;
  v7[1] = v8;
  type metadata accessor for PregnancyDatesInputViewModel(0);
  sub_29E1E7EC8(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);
  sub_29E2C2A44();
  sub_29E1E7E34(0);
  v10 = objc_allocWithZone(v9);
  v11 = sub_29E2C1C34();
  v12 = MEMORY[0x29EDBC0B8];
  sub_29E1E8008(0, &qword_2A1817F90, MEMORY[0x29EDBC0B8], MEMORY[0x29EDC9E90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29E2CAB20;
  sub_29E2C1F64();
  *&v15 = v13;
  sub_29E1E7EC8(&qword_2A1817F98, MEMORY[0x29EDBC0B8], MEMORY[0x29EDBC0C0]);
  sub_29E1E8008(0, &qword_2A1817FA0, v12, MEMORY[0x29EDC9A40]);
  sub_29E1E7F10(&qword_2A1817FA8, &qword_2A1817FA0, v12);
  sub_29E2C43F4();
  sub_29E2C1C24();
  return v11;
}

id sub_29E1E6588(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v9 = sub_29E2C3384();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = v30 - v14;
  v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController_onboardingStep] = 1;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController_viewLeadingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController_viewTrailingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController____lazy_storage___estimationMethodSelectionButton] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController____lazy_storage___hostingController] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController_viewModel] = a1;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController_coordinator] = a2;
  v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController_showAddPastPregnancy] = a3;
  v33 = a1;

  v34 = a2;
  v16 = v10;

  sub_29E2C3314();
  v17 = *(v10 + 16);
  v18 = v9;
  v31 = v17;
  v17(v12, v15, v9);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v30[2] = "EDING_ALERT_MESSAGE";
  v19 = qword_2A1A67F80;
  v20 = qword_2A1A67F80;
  v30[1] = v19;
  v21 = v20;
  sub_29E2BCC74();
  v22 = v21;
  sub_29E2C3414();
  v23 = *(v16 + 8);
  v23(v15, v18);
  v24 = sub_29E2C33A4();

  sub_29E2C3314();
  v31(v12, v15, v18);
  sub_29E2BCC74();
  sub_29E2C3414();
  v23(v15, v18);
  v25 = sub_29E2C33A4();

  sub_29E05D544();
  v27 = v26;
  v35.receiver = v4;
  v35.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v35, sel_initWithTitle_detailText_icon_contentLayout_, v24, v25, v26, 3);

  return v28;
}

void sub_29E1E694C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C3384();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v87 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x2A1C7C4A8](v9).n128_u64[0];
  v12 = &v82 - v11;
  v90.receiver = v1;
  v90.super_class = ObjectType;
  objc_msgSendSuper2(&v90, sel_viewDidLoad, v10);
  [v1 setModalInPresentation_];
  v13 = sub_29E1E614C(&OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController____lazy_storage___hostingController, sub_29E1E61B0);
  [v1 addChildViewController_];

  v14 = [v1 contentView];
  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController____lazy_storage___hostingController;
  v16 = [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController____lazy_storage___hostingController] view];
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v17 = v16;
  [v14 addSubview_];

  [*&v1[v15] didMoveToParentViewController_];
  v18 = [*&v1[v15] view];
  if (!v18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = v18;
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];

  v20 = [*&v1[v15] view];
  if (!v20)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21 = v20;
  v86 = v12;
  [v20 hk_onboardingListEdgeInsets];
  v23 = v22;
  v25 = v24;

  v26 = [*&v1[v15] view];
  if (!v26)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v27 = v26;
  v28 = [v26 leadingAnchor];

  v29 = [v1 contentView];
  v30 = [v29 leadingAnchor];

  v88 = [v28 constraintEqualToAnchor:v30 constant:v23];
  v31 = [*&v1[v15] view];
  if (!v31)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v32 = v31;
  v83 = v7;
  v84 = v5;
  v85 = v6;
  v33 = [v31 trailingAnchor];

  v34 = [v1 contentView];
  v35 = [v34 trailingAnchor];

  v36 = [v33 constraintEqualToAnchor:v35 constant:-v25];
  sub_29DE99B54();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_29E2CE070;
  v38 = [*&v1[v15] view];
  if (!v38)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v39 = v38;
  v40 = [v38 topAnchor];

  v41 = [v1 contentView];
  v42 = [v41 topAnchor];

  v43 = [v40 constraintEqualToAnchor_];
  *(v37 + 32) = v43;
  v44 = [*&v1[v15] view];
  if (!v44)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v45 = v44;
  v46 = objc_opt_self();
  v47 = [v45 bottomAnchor];

  v48 = [v1 contentView];
  v49 = [v48 bottomAnchor];

  v50 = [v47 constraintEqualToAnchor_];
  v51 = v88;
  *(v37 + 40) = v50;
  *(v37 + 48) = v51;
  *(v37 + 56) = v36;
  sub_29DE9408C(0, &qword_2A1A61A10, 0x29EDBA008);
  v52 = v51;
  v53 = v36;
  v54 = sub_29E2C3604();

  [v46 activateConstraints_];

  v55 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController_viewLeadingConstraint];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController_viewLeadingConstraint] = v52;
  v56 = v52;

  v57 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController_viewTrailingConstraint];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController_viewTrailingConstraint] = v53;
  v58 = v53;

  v59 = [v1 buttonTray];
  v60 = sub_29E1E614C(&OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController____lazy_storage___estimationMethodSelectionButton, sub_29E1E5DE4);
  [v59 addButton_];

  v61 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController____lazy_storage___estimationMethodSelectionButton];
  v62 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController_viewModel];
  swift_getKeyPath();
  *&v89 = v62;
  sub_29E1E7EC8(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);
  v63 = v61;
  sub_29E2BCFE4();

  [v63 setEnabled_];

  MEMORY[0x2A1C7C4A8](v64);
  *(&v82 - 2) = v1;
  MEMORY[0x2A1C7C4A8](v65);
  *(&v82 - 2) = v1;
  sub_29E2BCFC4();
  v66 = &qword_2A181F000;
  p_cache = (_TtC24MenstrualCyclesAppPlugin34ReviewOngoingPregnancyTileExecutor + 16);
  if (v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController_showAddPastPregnancy] == 1)
  {
    v88 = v58;
    v68 = v56;
    v69 = v86;
    sub_29E2C3314();
    v70 = v83;
    v71 = v85;
    (*(v83 + 16))(v87, v69, v85);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v72 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    (*(v70 + 8))(v69, v71);
    v73 = sub_29E2C33A4();

    v66 = &qword_2A181F000;
    v74 = v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController_onboardingStep];
    p_cache = _TtC24MenstrualCyclesAppPlugin34ReviewOngoingPregnancyTileExecutor.cache;
    if (qword_2A1A60ED8 != -1)
    {
      swift_once();
    }

    v89 = xmmword_2A1A67E58;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2ECF90);
    MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
    v75 = PregnancyOnboardingStep.description.getter(v74);
    MEMORY[0x29ED7FCC0](v75);

    MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
    MEMORY[0x29ED7FCC0](0x7261646E6F636553, 0xEF6E6F7474754279);
    v76 = sub_29E2C33A4();

    v56 = v68;
    v58 = v88;
  }

  v77 = [v1 navigationItem];
  v78 = [v77 rightBarButtonItem];

  if (v78)
  {
    v79 = v1[v66[245]];
    if (p_cache[475] != -1)
    {
      swift_once();
    }

    v89 = xmmword_2A1A67E58;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2ECF90);
    MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
    v80 = PregnancyOnboardingStep.description.getter(v79);
    MEMORY[0x29ED7FCC0](v80);

    MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
    MEMORY[0x29ED7FCC0](0x75426C65636E6143, 0xEC0000006E6F7474);
    v81 = sub_29E2C33A4();

    [v78 setAccessibilityIdentifier_];
  }
}

void sub_29E1E748C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_29E1E614C(&OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController____lazy_storage___hostingController, sub_29E1E61B0);
  v3 = [v2 view];

  if (v3)
  {
    [v3 hk_onboardingListEdgeInsets];
    v5 = v4;
    v7 = v6;

    v8 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController_viewLeadingConstraint];
    if (v8)
    {
      [v8 setConstant_];
    }

    v9 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController_viewTrailingConstraint];
    if (v9)
    {
      [v9 setConstant_];
    }

    v10.receiver = v0;
    v10.super_class = ObjectType;
    objc_msgSendSuper2(&v10, sel_viewDidLayoutSubviews);
  }

  else
  {
    __break(1u);
  }
}

void sub_29E1E763C()
{
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController_coordinator);

  sub_29E28009C(1, 3);
  v2 = objc_allocWithZone(type metadata accessor for PregnancyOnboardingAddPastPregnancyViewController());

  v4 = sub_29DEDEC6C(v3, v1);
  [*(v1 + 360) showViewController:v4 sender:0];
}

double sub_29E1E77B0(uint64_t a1)
{
  swift_getKeyPath();
  sub_29E1E7EC8(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);
  sub_29E2BCFE4();

  return result;
}

double sub_29E1E7854(uint64_t a1)
{
  v1 = sub_29E2C2B34();
  v14 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2C2B54();
  v4 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9408C(0, &qword_2A1A626C0, 0x29EDCA548);
  v12 = sub_29E2C3CF4();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_29E1E7FE8;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = &unk_2A24BEAC8;
  v8 = _Block_copy(aBlock);

  sub_29E2C2B44();
  v15 = MEMORY[0x29EDCA190];
  sub_29E1E7EC8(&qword_2A1A626F0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  v9 = MEMORY[0x29EDCA248];
  sub_29E1E8008(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29E1E7F10(&qword_2A1A626D0, &qword_2A1A626E0, v9);
  sub_29E2C43F4();
  v10 = v12;
  MEMORY[0x29ED804D0](0, v6, v3, v8);
  _Block_release(v8);

  (*(v14 + 8))(v3, v1);
  (*(v4 + 8))(v6, v13);

  return result;
}

void sub_29E1E7B70(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_29E1E614C(&OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController____lazy_storage___estimationMethodSelectionButton, sub_29E1E5DE4);
    v4 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController_viewModel];
    swift_getKeyPath();
    sub_29E1E7EC8(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);
    sub_29E2BCFE4();

    [v3 setEnabled_];

    MEMORY[0x2A1C7C4A8](v5);
    MEMORY[0x2A1C7C4A8](v6);
    sub_29E2BCFC4();
  }
}

void sub_29E1E7E34(uint64_t a1)
{
  if (!qword_2A181F7E0)
  {
    type metadata accessor for EstimationMethodSelectionView(255);
    sub_29E1E7EC8(&unk_2A181F7E8, type metadata accessor for EstimationMethodSelectionView, &unk_29E2E02B0);
    v1 = sub_29E2C1C44();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181F7E0);
    }
  }
}

uint64_t sub_29E1E7EC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E1E7F10(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E1E8008(255, a2, a3, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double (*sub_29E1E7F7C())()
{
  v1 = *(v0 + 16);
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  return sub_29E1E7FE0;
}

double sub_29E1E7FF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_29E1E8008(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E1E8074(uint64_t a1, uint64_t a2)
{
  v29 = sub_29E2BEBB4();
  v5 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29);
  v28 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v7);
  v10 = &v20 - v9;
  v27 = *(a1 + 16);
  if (v27)
  {
    v11 = 0;
    v23 = (v5 + 8);
    v25 = (v5 + 32);
    v26 = v5 + 16;
    v12 = MEMORY[0x29EDCA190];
    v21 = a2;
    v22 = a1;
    while (v11 < *(a1 + 16))
    {
      v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v14 = *(v5 + 72);
      v15.n128_f64[0] = (*(v5 + 16))(v10, a1 + v13 + v14 * v11, v29, v8);
      v16 = sub_29E15725C(v10, a2, v15);
      if (v2)
      {
        (*v23)(v10, v29);

        goto LABEL_15;
      }

      if (v16)
      {
        v24 = *v25;
        v24(v28, v10, v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_29E181518(0, *(v12 + 16) + 1, 1);
          v12 = v30;
        }

        v19 = *(v12 + 16);
        v18 = *(v12 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_29E181518((v18 > 1), v19 + 1, 1);
          v12 = v30;
        }

        *(v12 + 16) = v19 + 1;
        v24((v12 + v13 + v19 * v14), v28, v29);
        a2 = v21;
        a1 = v22;
      }

      else
      {
        (*v23)(v10, v29);
      }

      if (v27 == ++v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

double sub_29E1E8400@<D0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController____lazy_storage___scaleFactorConfiguration;
  swift_beginAccess();
  sub_29DFD5A4C(v1 + v3, &v5);
  if (v6)
  {
    sub_29DE8EE78(&v5, a1);
  }

  else
  {
    sub_29E1F169C(&v5, &qword_2A181EFA0, &qword_2A18179F0, &protocol descriptor for ScaleFactorProviding);
    sub_29E168D6C(v1, a1);
    sub_29DE9DC34(a1, &v5);
    swift_beginAccess();
    sub_29DE9DCF4(&v5, v1 + v3);
    swift_endAccess();
  }

  return result;
}

id sub_29E1E84D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_tableSectionHeaderText];
  *v7 = 0;
  v7[1] = 0;
  v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_tableSectionHeaderProminent] = 2;
  v8 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_tableFooterText];
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_nextButton;
  *&v4[v9] = sub_29E08D744();
  v10 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController____lazy_storage___scaleFactorConfiguration];
  *(v10 + 4) = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_contentSizeKeyPath];
  *v11 = 0x53746E65746E6F63;
  v11[1] = 0xEB00000000657A69;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_dataSourceAdaptor] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_mutableDataSource] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_userInfo] = a1;
  sub_29DE9DC34(a4, &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_pinnedContentManager]);
  v12 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_healthStore);
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_healthStore] = v12;

  v13 = v12;
  v14 = sub_29E2C33A4();

  v24.receiver = v4;
  v24.super_class = type metadata accessor for MenstrualCyclesOnboardingTableWelcomeController();
  v15 = objc_msgSendSuper2(&v24, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v14, 0, 0, 1);

  v16 = v15;
  v17 = [v16 navigationItem];
  v18 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:1 target:v16 action:sel_cancelButtonTapped_];
  [v17 setRightBarButtonItem_];

  v19 = [v16 navigationItem];
  v20 = [v19 rightBarButtonItem];

  if (v20)
  {
    if (qword_2A1A60ED8 != -1)
    {
      swift_once();
    }

    v23 = xmmword_2A1A67E58;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000011, 0x800000029E2EF140);
    v21 = sub_29E2C33A4();

    [v20 setAccessibilityIdentifier_];
  }

  else
  {
  }

  sub_29DE93B3C(a4);
  return v16;
}

void sub_29E1E87CC()
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDC7D08]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTableView_];

  v2 = [v0 tableView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor_];

  v5 = [v0 tableView];
  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  v7 = [v0 tableView];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  v9 = [v0 tableView];
  if (!v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v9;
  [v9 hk_onboardingListEdgeInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 _setSectionContentInset_];
  v19 = [v0 tableView];
  if (!v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  type metadata accessor for OnboardingDataTypeLoggingCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = sub_29E2C33A4();
  [v20 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v22];

  v23 = [v0 tableView];
  if (!v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = v23;
  type metadata accessor for DatePickerTableViewCell();
  v25 = swift_getObjCClassFromMetadata();
  v26 = sub_29E2C33A4();
  [v24 registerClass:v25 forCellReuseIdentifier:v26];

  v27 = [v0 tableView];
  if (!v27)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = v27;
  type metadata accessor for PickerSelectLoggingCell();
  v29 = swift_getObjCClassFromMetadata();
  v30 = sub_29E2C33A4();
  [v28 registerClass:v29 forCellReuseIdentifier:v30];

  v31 = [v0 tableView];
  if (!v31)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v32 = v31;
  type metadata accessor for MenstrualCyclesOnboardingFactorsViewController.DefaultHeaderView();
  v33 = swift_getObjCClassFromMetadata();
  v34 = sub_29E2C33A4();
  [v32 registerClass:v33 forHeaderFooterViewReuseIdentifier:v34];

  v35 = [v0 tableView];
  if (!v35)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v36 = v35;
  type metadata accessor for MenstrualCyclesOnboardingFactorsViewController.DefaultFooterView();
  v37 = swift_getObjCClassFromMetadata();
  v38 = sub_29E2C33A4();
  [v36 registerClass:v37 forHeaderFooterViewReuseIdentifier:v38];

  v39 = [v0 tableView];
  if (!v39)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v40 = v39;
  [v39 setDelegate_];

  v44.receiver = v0;
  v44.super_class = type metadata accessor for MenstrualCyclesOnboardingFactorsViewController();
  objc_msgSendSuper2(&v44, sel_viewDidLoad);
  v41 = [v0 headerView];
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v43 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2FC050);
  v42 = sub_29E2C33A4();

  [v41 setAccessibilityIdentifier_];
}

void sub_29E1E8CEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_mutableDataSource;
    if (!*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_mutableDataSource))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = *(a1 + 32);
    sub_29E2BF404();

    sub_29E15522C(v6, v3);

    sub_29E2BECB4();

    if (!v10)
    {

      sub_29E1F169C(v9, &qword_2A181F8C0, &qword_2A1819BD0, MEMORY[0x29EDC18F8]);
      return;
    }

    sub_29DEB1BC4(0, &qword_2A1819BD0, MEMORY[0x29EDC18F8]);
    if (swift_dynamicCast())
    {

      if (*(v2 + v4))
      {

        sub_29E15522C(v6, v3);

        sub_29E1587A4(v6, v3, a2, v7);

        return;
      }

      goto LABEL_11;
    }
  }
}

void sub_29E1E8E80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E2C0514();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v43 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v39 - v7;
  v42 = sub_29E2BE394();
  v39[2] = *(v42 - 8);
  MEMORY[0x2A1C7C4A8](v42);
  v41 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OnboardingEndDateRow(0);
  MEMORY[0x2A1C7C4A8](v10);
  v47 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2BCFB4();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v40 = v39 - v17;
  MEMORY[0x2A1C7C4A8](v18);
  v20 = v39 - v19;
  *&v22 = MEMORY[0x2A1C7C4A8](v21).n128_u64[0];
  v24 = v39 - v23;
  v25 = [v2 tableView];
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v25 indexPathForCell_];

  if (!v27)
  {
    return;
  }

  v46 = v13;
  v28 = v12;
  sub_29E2BCF44();

  v29 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_mutableDataSource;
  if (!*&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_mutableDataSource])
  {
    goto LABEL_14;
  }

  type metadata accessor for CompoundOnboardingOngoingCycleFactorsTableViewDataSource(0);

  sub_29E2BE764();

  sub_29DEB1BC4(0, &qword_2A1819BD0, MEMORY[0x29EDC18F8]);
  swift_dynamicCast();
  v30 = sub_29E2BCF64();
  v31 = v30 + 1;
  if (__OFADD__(v30, 1))
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v39[1] = v8;
  v32 = v24;
  v33 = sub_29E2BCFA4();
  MEMORY[0x29ED79720](v31, v33);
  if (!*&v2[v29])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v34 = sub_29E2BE704();

  if ((v34 & 1) == 0)
  {
    v35 = *(v46 + 8);
    v35(v20, v28);
    v35(v24, v28);
    goto LABEL_10;
  }

  if (!*&v2[v29])
  {
LABEL_16:
    __break(1u);
    return;
  }

  sub_29E2BF0F4();

  v36 = v46;
  v37 = v40;
  (*(v46 + 32))(v40, v15, v28);
  type metadata accessor for OnboardingOngoingCycleFactorsTableViewDataSource(0);
  swift_dynamicCastClassUnconditional();
  swift_unknownObjectRetain();
  sub_29E158D68(v37, v47);
  swift_unknownObjectRelease_n();
  v38 = *(v36 + 8);
  v38(v37, v28);
  v38(v20, v28);
  v38(v32, v28);
LABEL_10:
  sub_29E1F1640(v47);
}

void sub_29E1E968C(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v4 = sub_29E2C0514();
  v33 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v32 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v29[1] = v29 - v7;
  v8 = sub_29E2BE394();
  v29[2] = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v35 = sub_29E2BCFB4();
  v9 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = v29 - v13;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = v29 - v16;
  *&v19 = MEMORY[0x2A1C7C4A8](v18).n128_u64[0];
  v34 = v29 - v20;
  v21 = [v2 tableView];
  if (!v21)
  {
    __break(1u);
    goto LABEL_7;
  }

  v22 = v21;
  v23 = [v21 indexPathForCell_];

  if (!v23)
  {
    return;
  }

  sub_29E2BCF44();

  v31 = v9;
  v24 = *(v9 + 32);
  v25 = v34;
  v24(v34, v17, v35);
  if (!*&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_mutableDataSource])
  {
LABEL_7:
    __break(1u);
    return;
  }

  v26 = v25;
  sub_29E2BF0F4();

  v27 = v35;
  v24(v14, v11, v35);
  type metadata accessor for OnboardingOngoingCycleFactorsTableViewDataSource(0);
  swift_dynamicCastClassUnconditional();
  swift_unknownObjectRetain();
  sub_29E1583D0(v14, v30);
  swift_unknownObjectRelease_n();
  v28 = *(v31 + 8);
  v28(v14, v27);
  v28(v26, v27);
}

void sub_29E1E9CC0(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_29E2BE394();
  v52 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v7 = sub_29E2C0514();
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v51 = &v49 - v10;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v49 - v12;
  v14 = sub_29E2BCFB4();
  v15 = *(v14 - 8);
  v56 = v14;
  v57 = v15;
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v49 - v19;
  MEMORY[0x2A1C7C4A8](v21);
  v53 = (&v49 - v22);
  v23 = sub_29E2BCF24();
  v50 = a1;
  [a1 deselectRowAtIndexPath:v23 animated:0];

  v24 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_mutableDataSource;
  if (!*&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_mutableDataSource])
  {
    __break(1u);
    goto LABEL_26;
  }

  type metadata accessor for CompoundOnboardingOngoingCycleFactorsTableViewDataSource(0);

  sub_29E2BE764();

  sub_29DEB1BC4(0, &qword_2A1819BD0, MEMORY[0x29EDC18F8]);
  sub_29DEB1BC4(0, &unk_2A181DFD0, &protocol descriptor for OnboardingGenericRow);
  if (swift_dynamicCast())
  {
    sub_29DE8EE78(v60, v62);
    if (*&v3[v24])
    {

      sub_29E2BF0F4();

      v39 = v56;
      v38 = v57;
      v40 = v53;
      (*(v57 + 32))(v53, v20, v56);
      type metadata accessor for OnboardingOngoingCycleFactorsTableViewDataSource(0);
      v41 = swift_dynamicCastClassUnconditional();
      v42 = v63;
      v43 = v64;
      sub_29DE966D4(v62, v63);
      v44 = (*(v43 + 24))(v42, v43);
      if (v44 > 4u)
      {
        if (v44 > 6u)
        {
          if (v44 == 7)
          {
            v45 = sub_29E2BCFA4();
            sub_29E1F0078(v3, v45, v41);
          }

          else
          {
            v46 = sub_29E2BCF24();
            v47 = [v50 cellForRowAtIndexPath_];

            v48 = sub_29DE9B604(v40, v3, &off_2A24BEB10, v47);
            [v3 presentViewController:v48 animated:1 completion:0];
          }

          goto LABEL_22;
        }

        if (v44 == 5)
        {
          sub_29E157D84(v40);
          goto LABEL_22;
        }
      }

      else if (v44 <= 1u)
      {
        if (v44)
        {
          sub_29E1EE188(v40, v3, v41);
          goto LABEL_22;
        }
      }

      else if (v44 - 2 < 2)
      {
        sub_29E157534(v40);
LABEL_22:
        swift_unknownObjectRelease();
        (*(v38 + 8))(v40, v39);
        goto LABEL_23;
      }

      (*(v38 + 8))(v40, v39);
      swift_unknownObjectRelease();
LABEL_23:
      sub_29DE93B3C(v62);
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  v61 = 0;
  memset(v60, 0, sizeof(v60));
  sub_29E1F169C(v60, &qword_2A181B5B8, &unk_2A181DFD0, &protocol descriptor for OnboardingGenericRow);
  sub_29E2C04B4();
  v26 = v56;
  v25 = v57;
  (*(v57 + 16))(v17, a2, v56);
  v27 = sub_29E2C0504();
  v28 = sub_29E2C3A14();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v62[0] = v30;
    *v29 = 136446466;
    v31 = sub_29E2C4AE4();
    v33 = sub_29DFAA104(v31, v32, v62);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    sub_29E1F1530(&unk_2A181F8A0, MEMORY[0x29EDB9D70], MEMORY[0x29EDB9D90]);
    v34 = sub_29E2C48D4();
    v36 = v35;
    (*(v25 + 8))(v17, v26);
    v37 = sub_29DFAA104(v34, v36, v62);

    *(v29 + 14) = v37;
    _os_log_impl(&dword_29DE74000, v27, v28, "[%{public}s] Failed to find item at %s that conforms to OnboardingGenericRow", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v30, -1, -1);
    MEMORY[0x29ED82140](v29, -1, -1);
  }

  else
  {

    (*(v25 + 8))(v17, v26);
  }

  (*(v58 + 8))(v13, v59);
}

void sub_29E1EA760()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 window];

    if (!v4)
    {
LABEL_5:
      v5.receiver = v1;
      v5.super_class = type metadata accessor for MenstrualCyclesOnboardingFactorsViewController();
      objc_msgSendSuper2(&v5, sel_viewWillLayoutSubviews);
      return;
    }

    if (*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_dataSourceAdaptor])
    {

      sub_29DF3B4E4();

      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_29E1EA944(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_userInfo;
  if (*(*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_userInfo) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_isOnboardingFlow) != 1)
  {
    v5 = swift_allocObject();
    v6 = swift_unknownObjectWeakInit();
    if ((*((*MEMORY[0x29EDCA1E8] & *v1) + 0x1F0))(v6) > 1u)
    {
    }

    else
    {
      v7 = sub_29E2C4914();

      if ((v7 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v8 = *(v1 + v3);
    if (!*(*(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_editedCycleFactors) + 16))
    {
      v9 = *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_deletedCycleFactors);
      if (v9 >> 62)
      {
        if (sub_29E2C4484())
        {
          goto LABEL_10;
        }
      }

      else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }

LABEL_15:
      sub_29E1EAC0C(v5);

      return;
    }

LABEL_10:

    v10 = sub_29DE9B098(sub_29E1F1520, v5, a1);
    [v1 presentViewController:v10 animated:1 completion:0];

    goto LABEL_11;
  }

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v10 = sub_29DE9ABAC(a1, sub_29E1F1528, v4);

  [v1 presentViewController:v10 animated:1 completion:0];
LABEL_11:
}

void sub_29E1EAC0C(uint64_t a1)
{
  sub_29E1F0DBC(0, &qword_2A1A615F0, MEMORY[0x29EDC1D90]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_29E2BE2A4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_userInfo);
    v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_presentation;
    swift_beginAccess();
    sub_29E1F15D4(v10 + v11, v3, &qword_2A1A615F0, MEMORY[0x29EDC1D90]);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_29E1F1578(v3, &qword_2A1A615F0, MEMORY[0x29EDC1D90]);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      type metadata accessor for ReviewCycleFactorsEvent();
      v12 = (*((*MEMORY[0x29EDCA1E8] & *v9) + 0x1F0))();
      sub_29DED1100(v12, 6, v7, *(v9 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_healthStore));
      (*(v5 + 8))(v7, v4);
    }
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    [v13 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_29E1EAF3C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v3, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

char *sub_29E1EAFE8(uint64_t a1, uint64_t a2)
{
  result = [v2 tableView];
  if (result)
  {
    v6 = result;
    v7 = sub_29E2C33A4();
    v8 = [v6 dequeueReusableHeaderFooterViewWithIdentifier_];

    if (v8)
    {
      type metadata accessor for MenstrualCyclesHeaderFooterView();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = v9;
        v11 = *(v9 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31MenstrualCyclesHeaderFooterView_label);
        v12 = sub_29E2C33A4();
        [v11 setText_];

        sub_29E1E8400(v16);
        v13 = v17;
        v14 = v18;
        v15 = sub_29DE966D4(v16, v17);
        sub_29DFD5718(v15, v10, v13, v14);
LABEL_7:
        sub_29DE93B3C(v16);
        return v10;
      }
    }

    sub_29E1E8400(v16);
    v10 = sub_29DFD57F8(a1, a2, v16);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

double sub_29E1EB150()
{

  sub_29DE93B3C((v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_pinnedContentManager));

  sub_29E1F169C(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController____lazy_storage___scaleFactorConfiguration, &qword_2A181EFA0, &qword_2A18179F0, &protocol descriptor for ScaleFactorProviding);

  sub_29DE8EDC0(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_delegate);

  return result;
}

id sub_29E1EB25C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_29E1EB4C8(char *result, char *a2)
{
  v3 = v2;
  if (!*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_mutableDataSource))
  {
    goto LABEL_11;
  }

  v5 = result;

  v6 = sub_29E1546C4(a2);
  v8 = v7;

  if (v8)
  {
    v9 = sub_29E1EAFE8(v6, v8);

    result = v9;
    if (v9)
    {
      return result;
    }
  }

  result = [v5 numberOfSections];
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (result - 1 != a2)
  {
    return 0;
  }

  v10 = (v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_tableFooterText);
  v11 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_tableFooterText + 8);
  if (!v11)
  {
    return 0;
  }

  v12 = *v10;
  sub_29E2BF404();
  v13 = sub_29E1F139C(v12, v11);

  return v13;
}

void sub_29E1EB62C(void *a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_mutableDataSource;
  if (!*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_mutableDataSource))
  {
    goto LABEL_9;
  }

  v6 = sub_29E154C3C(a2);

  if (v6)
  {
    return;
  }

  if (!*(v2 + v3))
  {
    goto LABEL_10;
  }

  sub_29E1546C4(a2);
  v8 = v7;

  if (v8)
  {

    return;
  }

  if (__OFSUB__([a1 numberOfSections], 1))
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }
}

id sub_29E1EB824(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    a3 = sub_29E2C33A4();
  }

  v8.receiver = a1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithReuseIdentifier_, a3);

  return v6;
}

void sub_29E1EB928(uint64_t a1, uint64_t a2)
{
  sub_29E1F0554(a2);
  v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39ReviewOngoingCycleFactorsViewController_didDeleteFactors] = 1;
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_userInfo;
  v4 = *(*&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_userInfo] + 24);
  if (v4)
  {
    v15 = v4;
    v5 = sub_29E2BF404();
    v6 = sub_29E14EC4C(v5);

    v7 = [v15 ongoingCycleFactors];
    sub_29DF60AA4();
    v8 = sub_29E2C3614();

    v9 = sub_29E14EC4C(v8);

    sub_29E067924(v6, v9);
    LOBYTE(v8) = v10;

    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }

    if ((*(*&v2[v3] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_isOnboardingFlow) & 1) == 0)
    {
      sub_29E1EDDB8(0);
    }

    v11 = sub_29E1EBB04();
    [v2 showViewController:v11 sender:0];

    v12 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 1);
      ObjectType = swift_getObjectType();
      sub_29E199CD0(5, 0, ObjectType, v13);

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_9:
    }
  }
}

id sub_29E1EBB04()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39ReviewOngoingCycleFactorsViewController____lazy_storage___ongoingCycleFactorsViewController;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39ReviewOngoingCycleFactorsViewController____lazy_storage___ongoingCycleFactorsViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39ReviewOngoingCycleFactorsViewController____lazy_storage___ongoingCycleFactorsViewController);
  }

  else
  {
    v4 = sub_29E1EBB68(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_29E1EBB68(uint64_t a1)
{

  v2 = sub_29E069038();

  v3 = sub_29E069128();

  sub_29DE9DC34(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_pinnedContentManager, v9);
  objc_allocWithZone(type metadata accessor for AddOngoingCycleFactorsViewController());

  sub_29E243954(v4, v2, v3, v9, 0, 0, 0);
  v6 = v5;
  v7 = a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_delegate;
  swift_unknownObjectWeakLoadStrong();
  *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_delegate + 8) = *(v7 + 8);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v6;
}

_BYTE *sub_29E1EBC70(uint64_t a1, void *a2)
{
  v36 = a2;
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2C3384();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v30 - v12;
  *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39ReviewOngoingCycleFactorsViewController_didDeleteFactors) = 0;
  *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39ReviewOngoingCycleFactorsViewController____lazy_storage___ongoingCycleFactorsViewController) = 0;
  *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39ReviewOngoingCycleFactorsViewController_sourcesDictionary) = 0;
  v34 = a1;
  v15 = v14;

  sub_29E2C3314();
  v35 = *(v8 + 16);
  v35(v10, v13, v15);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v16 = qword_2A1A67F80;
  sub_29E2BCC74();
  v17 = v16;
  v18 = sub_29E2C3414();
  v32 = v6;
  v20 = v19;
  v33 = *(v8 + 8);
  v33(v13, v15);
  v31 = v15;
  v21 = v36;
  sub_29DE9DC34(v36, v37);
  v22 = sub_29E1E84D0(v34, v18, v20, v37);
  sub_29E2C3314();
  v23 = v31;
  v35(v10, v13, v31);
  sub_29E2BCC74();
  v24 = sub_29E2C3414();
  v26 = v25;

  sub_29DE93B3C(v21);
  v33(v13, v23);
  v27 = &v22[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_tableSectionHeaderText];
  *v27 = 0;
  v27[1] = 0;

  v22[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_tableSectionHeaderProminent] = 2;
  v28 = &v22[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_tableFooterText];
  *v28 = v24;
  v28[1] = v26;

  return v22;
}

double sub_29E1EBFD0()
{

  return result;
}

id sub_29E1EC010()
{
  ObjectType = swift_getObjectType();
  sub_29E1F0DBC(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_29E2C3734();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_mutableDataSource];
  v7 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_userInfo];
  sub_29E2C3714();

  v8 = v0;
  v9 = sub_29E2C3704();
  v10 = swift_allocObject();
  v11 = MEMORY[0x29EDCA390];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v6;
  v10[5] = v7;
  sub_29E13C63C(0, 0, v4, &unk_29E2E5920, v10);

  v13.receiver = v8;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

uint64_t sub_29E1EC1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_29E2C3714();
  v5[4] = sub_29E2C3704();
  v7 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29E1EC244, v7, v6);
}

uint64_t sub_29E1EC244()
{
  v1 = v0[2];

  if (v1)
  {
    v2 = sub_29E2BF0C4();
    v3 = *(v2 + 16);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x29EDCA190];
    v3 = *(MEMORY[0x29EDCA190] + 16);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v4 = *(v0[3] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers);
  v5 = v2 + 32;
  type metadata accessor for OnboardingOngoingCycleFactorsTableViewDataSource(0);
  do
  {
    v5 += 16;
    [v4 unregisterObserver_];
    --v3;
  }

  while (v3);
LABEL_7:

  v6 = v0[1];

  return v6();
}

uint64_t sub_29E1EC3B4()
{
  v103 = sub_29E2BCBB4();
  v1 = *(v103 - 8);
  MEMORY[0x2A1C7C4A8](v103);
  v92 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v102 = &v79 - v4;
  v105 = sub_29E2BCC24();
  v5 = *(v105 - 8);
  MEMORY[0x2A1C7C4A8](v105);
  v96 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_29E2BEBB4();
  v7 = *(v91 - 8);
  MEMORY[0x2A1C7C4A8](v91);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = MEMORY[0x29EDCA190];
  v10 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39ReviewOngoingCycleFactorsViewController_sourcesDictionary);
  if (v10)
  {
    v11 = v10[8];
    v83 = (v10 + 8);
    v12 = 1 << *(v10 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v11;
    v82 = (v12 + 63) >> 6;
    v104 = (v5 + 8);
    v89 = (v1 + 32);
    v88 = v7 + 32;
    v81 = v10;
    v10 = sub_29E2BF404();
    v15 = 0;
    v16 = MEMORY[0x29EDCA190];
    v87 = xmmword_29E2CFE80;
    v86 = v7;
    v90 = v9;
    while (v14)
    {
LABEL_10:
      v18 = __clz(__rbit64(v14)) | (v15 << 6);
      v19 = (v81[6] + 16 * v18);
      v20 = *v19;
      v10 = v19[1];
      v21 = *(v81[7] + 8 * v18);
      if (v21 >> 62)
      {
        v73 = v19[1];
        v74 = *v19;
        v75 = v15;
        v76 = sub_29E2C4484();
        v15 = v75;
        v20 = v74;
        v22 = v76;
        v10 = v73;
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v85 = v14;
      v84 = v15;
      if (v22)
      {
        if (v22 >= 1)
        {
          v80 = v20;
          v94 = v21 & 0xC000000000000001;
          v79 = v10;
          sub_29E2BF404();
          sub_29E2BF404();
          v23 = 0;
          v24 = MEMORY[0x29EDCA190];
          v95 = v21;
          v93 = v22;
          while (1)
          {
            v25 = v94 ? MEMORY[0x29ED80D70](v23, v21) : *(v21 + 8 * v23 + 32);
            v26 = v25;
            v100 = v23;
            v101 = v24;
            v10 = [v25 hkmc_cycleFactor];
            if (v10 - 1 >= 9)
            {
              goto LABEL_34;
            }

            LODWORD(v99) = byte_29E2E592A[v10 - 1];
            sub_29E1F0E10(0, &unk_2A181B3C0, &qword_2A1819BD0, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9E90]);
            v27 = swift_allocObject();
            *(v27 + 16) = v87;
            v28 = v26;
            v29 = v96;
            sub_29E2BCC14();
            v30 = sub_29E2BCBD4();
            v32 = v31;
            v33 = v105;
            v34 = *v104;
            (*v104)(v29, v105);
            v97 = v34;
            *(v27 + 56) = &type metadata for OnboardingPrefillRow;
            *(v27 + 64) = sub_29DF08318();
            v35 = swift_allocObject();
            *(v27 + 32) = v35;
            v35[2] = v30;
            v35[3] = v32;
            v35[4] = v30;
            v35[5] = v32;
            v35[6] = v28;
            v36 = v28;
            sub_29E2BF404();
            v37 = [v36 startDate];
            v38 = v102;
            sub_29E2BCB44();

            sub_29E2BCC14();
            v39 = sub_29E2BCBD4();
            v41 = v40;
            v34(v29, v33);
            started = type metadata accessor for OnboardingStartDateRow(0);
            *(v27 + 96) = started;
            *(v27 + 104) = sub_29E1F1530(&qword_2A181F880, type metadata accessor for OnboardingStartDateRow, &unk_29E2D1438);
            v43 = sub_29DEBB7E8((v27 + 72));
            v43[1] = v39;
            v43[2] = v41;
            v44 = *(started + 28);
            v98 = *v89;
            v98(v43 + v44, v38, v103);
            *v43 = 0;
            *(v43 + *(started + 32)) = 0;
            *(v43 + 1) = v99;
            sub_29E2BCA84();
            v45 = [v36 startDate];
            v99 = v36;

            v46 = v92;
            sub_29E2BCB44();

            sub_29E2BCC14();
            v47 = sub_29E2BCBD4();
            v49 = v48;
            v50 = v97;
            v97(v29, v33);
            v51 = type metadata accessor for OnboardingEndDateRow(0);
            *(v27 + 136) = v51;
            *(v27 + 144) = sub_29E1F1530(&qword_2A1818CC0, type metadata accessor for OnboardingEndDateRow, &unk_29E2D1408);
            v52 = sub_29DEBB7E8((v27 + 112));
            v52[1] = 0;
            v53 = swift_unknownObjectWeakInit();
            *(v53 + 24) = v47;
            *(v53 + 32) = v49;
            v54 = v103;
            v55 = v98;
            v98((v53 + *(v51 + 28)), v102, v103);
            *(v52 + 16) = 0;
            v55(v52 + *(v51 + 32), v46, v54);
            sub_29E2BCC14();
            v56 = sub_29E2BCBD4();
            v58 = v57;
            v59 = v105;
            v50(v29, v105);
            *(v27 + 176) = &type metadata for OnboardingStandardRow;
            *(v27 + 184) = sub_29DF083EC();
            v60 = swift_allocObject();
            *(v27 + 152) = v60;
            *(v60 + 16) = v56;
            *(v60 + 24) = v58;
            *(v60 + 32) = v56;
            *(v60 + 40) = v58;
            *(v60 + 48) = 8;
            sub_29E2BF404();
            sub_29E2BCC14();
            sub_29E2BCBD4();
            v50(v29, v59);
            v61 = v90;
            sub_29E2BEBA4();
            v24 = v101;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_29E144B2C(0, v24[2] + 1, 1, v24);
            }

            v62 = v86;
            v63 = v93;
            v65 = v24[2];
            v64 = v24[3];
            v21 = v95;
            v66 = v100;
            if (v65 >= v64 >> 1)
            {
              v24 = sub_29E144B2C((v64 > 1), v65 + 1, 1, v24);
            }

            v23 = v66 + 1;

            v24[2] = v65 + 1;
            (*(v62 + 32))(v24 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v65, v61, v91);
            if (v63 == v23)
            {

              v20 = v80;
              v67 = v79;
              goto LABEL_26;
            }
          }
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v67 = v10;
      sub_29E2BF404();
LABEL_26:
      type metadata accessor for OnboardingOngoingCycleFactorsTableViewDataSource(0);
      v68 = (swift_allocObject() + qword_2A181DDE0);
      *v68 = v20;
      v68[1] = v67;
      v107[0] = 0;
      v107[1] = 0xE000000000000000;
      sub_29E2C4584();

      strcpy(v107, "MutableArray<");
      HIWORD(v107[1]) = -4864;
      v69 = v96;
      sub_29E2BCC14();
      v70 = sub_29E2BCBD4();
      v72 = v71;
      (*v104)(v69, v105);
      MEMORY[0x29ED7FCC0](v70, v72);

      MEMORY[0x29ED7FCC0](62, 0xE100000000000000);
      sub_29E2BEC54();
      MEMORY[0x29ED7FDC0]();
      if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29E2C3644();
      }

      v14 = (v85 - 1) & v85;
      v10 = sub_29E2C3674();
      v16 = v108;
      v15 = v84;
    }

    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v82)
      {

        return v16;
      }

      v14 = *&v83[8 * v17];
      ++v15;
      if (v14)
      {
        v15 = v17;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  v107[0] = 0;
  v107[1] = 0xE000000000000000;
  v78 = v10;
  sub_29E2C4584();
  MEMORY[0x29ED7FCC0](0xD000000000000012, 0x800000029E2FD210);
  v106 = v78;
  type metadata accessor for HKMCCycleFactor(0);
  sub_29E2C4664();
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

void sub_29E1ECE1C()
{
  v1 = v0;
  v32.receiver = v0;
  v32.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v32, sel_viewDidLoad);
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_userInfo;
  v3 = *(*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_userInfo] + 24);
  if (v3)
  {
    v27 = v3;
    v4 = [v27 ongoingCycleFactors];
    sub_29DF60AA4();
    v5 = sub_29E2C3614();

    v31 = MEMORY[0x29EDCA198];
    if (v5 >> 62)
    {
      goto LABEL_14;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v2; v6; i = v2)
    {
      v7 = 0;
      v2 = v5 & 0xC000000000000001;
      while (1)
      {
        if (v2)
        {
          v8 = MEMORY[0x29ED80D70](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v30 = v8;
        sub_29E1ED234(&v31, &v30, &v29);

        v11 = v29;
        v31 = v29;
        ++v7;
        if (v10 == v6)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v6 = sub_29E2C4484();
    }

    v11 = MEMORY[0x29EDCA198];
LABEL_16:

    *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39ReviewOngoingCycleFactorsViewController_sourcesDictionary] = v11;

    v2 = i;
  }

  v12 = sub_29E1EC3B4();
  sub_29E13E1B8(v12);

  type metadata accessor for CompoundOnboardingOngoingCycleFactorsTableViewDataSource(0);
  swift_allocObject();
  v13 = sub_29E2BF154();
  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_mutableDataSource;
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_mutableDataSource] = v13;

  v15 = [v0 tableView];
  if (!v15)
  {
    __break(1u);
    goto LABEL_25;
  }

  v16 = *&v0[v14];
  if (!v16)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = v15;
  type metadata accessor for OnboardingOngoingCycleFactorsDiffableTableViewAdaptor();
  swift_allocObject();
  v18 = v0;

  v19 = sub_29DF3B9F8(v0, &off_2A24BEB40, &off_2A24BEB00, &off_2A24BEB30, v17, v16);

  *&v18[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_dataSourceAdaptor] = v19;

  v19[9] = &off_2A24BEB20;
  swift_unknownObjectWeakAssign();

  if (!*&v1[v14])
  {
LABEL_26:
    __break(1u);
    return;
  }

  v20 = sub_29E2BF0C4();

  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v20 + 32;
    type metadata accessor for OnboardingOngoingCycleFactorsTableViewDataSource(0);
    do
    {
      v22 += 16;
      [*(*&v1[v2] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers) registerObserver_];
      --v21;
    }

    while (v21);
  }

  v23 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_nextButton;
  [*&v18[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_nextButton] addTarget:v18 action:sel_nextButtonTapped_ forControlEvents:64];
  v24 = [v18 buttonTray];
  [v24 addButton_];

  v25 = sub_29E08DA28();
  [v25 addTarget:v18 action:sel_skipButtonTapped_ forControlEvents:64];
  v26 = [v18 buttonTray];
  [v26 addButton_];
}

void sub_29E1ED234(uint64_t *a1@<X0>, id *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  sub_29E2BF404();
  v6 = [v5 sourceRevision];
  v7 = [v6 source];

  v8 = [v7 name];
  v9 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v11 = v10;

  if (!*(v4 + 16))
  {

    goto LABEL_5;
  }

  sub_29DECF000(v9, v11);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_5:
    v14 = [v5 sourceRevision];
    v15 = [v14 source];

    v16 = [v15 name];
    v17 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v19 = v18;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_29E0096F8(MEMORY[0x29EDCA190], v17, v19, isUniquelyReferenced_nonNull_native);

    v39 = v4;
  }

  v21 = [v5 sourceRevision];
  v22 = [v21 source];

  v23 = [v22 name];
  v24 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v26 = v25;

  if (!*(v4 + 16))
  {

    goto LABEL_12;
  }

  v27 = sub_29DECF000(v24, v26);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
LABEL_12:
    v31 = 0;
    goto LABEL_13;
  }

  v38 = *(*(v4 + 56) + 8 * v27);
  sub_29E2BF404();
  v30 = v5;
  MEMORY[0x29ED7FDC0]();
  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29E2C3644();
  }

  sub_29E2C3674();
  v31 = v38;
LABEL_13:
  v32 = [v5 sourceRevision];
  v33 = [v32 source];

  v34 = [v33 name];
  v35 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v37 = v36;

  sub_29DF32140(v31, v35, v37);
  *a3 = v39;
}

uint64_t sub_29E1ED590(uint64_t result)
{
  v9 = MEMORY[0x29EDCA190];
  if (*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_mutableDataSource))
  {
    v2 = result;

    v3 = sub_29E2BF0C4();

    v4 = *(v3 + 16);
    if (v4)
    {
      type metadata accessor for OnboardingOngoingCycleFactorsTableViewDataSource(0);
      v5 = 32;
      do
      {
        swift_dynamicCastClassUnconditional();
        swift_unknownObjectRetain();
        sub_29E159830(v2 & 1);
        v7 = v6;
        sub_29DFCC02C(v8);
        sub_29DFCB5D4(v7);
        swift_unknownObjectRelease();
        v5 += 16;
        --v4;
      }

      while (v4);

      return v9;
    }

    else
    {

      return MEMORY[0x29EDCA190];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_29E1ED6A0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1ED590(1);
  v7 = v6;

  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_userInfo;
  v9 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_userInfo];
  v10 = *(v9 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_editedCycleFactors);
  *(v9 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_editedCycleFactors) = MEMORY[0x29EDCA190];

  sub_29E06D70C(v10);

  v11 = *&v1[v8];
  v12 = *(v11 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_reviewOngoingCycleFactors);
  *(v11 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_reviewOngoingCycleFactors) = v7;

  sub_29E06B8C8(v12);

  sub_29E2C04B4();
  v13 = sub_29E2C0504();
  v14 = sub_29E2C3A34();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v2;
    v27 = v16;
    v17 = v16;
    *v15 = 136446210;
    v18 = sub_29E2C4AE4();
    v20 = sub_29DFAA104(v18, v19, &v27);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_29DE74000, v13, v14, "[%{public}s] No ongoing factors", v15, 0xCu);
    sub_29DE93B3C(v17);
    MEMORY[0x29ED82140](v17, -1, -1);
    MEMORY[0x29ED82140](v15, -1, -1);

    (*(v3 + 8))(v5, v26);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  if ((*(*&v1[v8] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_isOnboardingFlow) & 1) == 0)
  {
    sub_29E1EDDB8(1);
  }

  v21 = sub_29E1EBB04();
  [v1 showViewController:v21 sender:0];

  v22 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = *(v22 + 1);
    ObjectType = swift_getObjectType();
    sub_29E199CD0(5, 1u, ObjectType, v24);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_29E1ED9A0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E1ED590(0);
  v8 = v7;
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_userInfo;
  v10 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_userInfo];
  v11 = *(v10 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_editedCycleFactors);
  *(v10 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_editedCycleFactors) = v6;

  sub_29E06D70C(v11);

  v12 = *&v1[v9];
  v13 = *(v12 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_reviewOngoingCycleFactors);
  *(v12 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_reviewOngoingCycleFactors) = v8;

  sub_29E06B8C8(v13);

  sub_29E2C04B4();
  v14 = v1;
  v15 = sub_29E2C0504();
  v16 = sub_29E2C3A34();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v2;
    v38 = v34;
    *v17 = 136446466;
    v18 = sub_29E2C4AE4();
    v20 = v3;
    v21 = sub_29DFAA104(v18, v19, &v38);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = *&v1[v9] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_cycleLength;
    v23 = *v22;
    LOBYTE(v22) = *(v22 + 8);
    v36 = v23;
    v37 = v22;
    sub_29DEB523C();
    v24 = sub_29E2C3464();
    v26 = sub_29DFAA104(v24, v25, &v38);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_29DE74000, v15, v16, "[%{public}s] Selected cycle length: %s", v17, 0x16u);
    v27 = v34;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v27, -1, -1);
    MEMORY[0x29ED82140](v17, -1, -1);

    (*(v20 + 8))(v5, v35);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  if ((*(*&v1[v9] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_isOnboardingFlow) & 1) == 0)
  {
    sub_29E1EDDB8(0);
  }

  v28 = sub_29E1EBB04();
  [v14 showViewController:v28 sender:0];

  v29 = &v14[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = *(v29 + 1);
    ObjectType = swift_getObjectType();
    sub_29E199CD0(5, 0, ObjectType, v31);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_29E1EDD20(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_29E2C43D4();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return sub_29DE93B3C(v9);
}

uint64_t sub_29E1EDDB8(int a1)
{
  v2 = v1;
  v28 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_29E2C0514();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC1D90];
  sub_29E1F0DBC(0, &qword_2A1A615F0, MEMORY[0x29EDC1D90]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &ObjectType - v8;
  v10 = sub_29E2BE2A4();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_userInfo);
  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_presentation;
  swift_beginAccess();
  sub_29E1F15D4(v14 + v15, v9, &qword_2A1A615F0, v6);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_29E1F1578(v9, &qword_2A1A615F0, MEMORY[0x29EDC1D90]);
    sub_29E2C04B4();
    v16 = sub_29E2C0504();
    v17 = sub_29E2C3A14();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31 = v19;
      *v18 = 136446210;
      v20 = sub_29E2C4AE4();
      v22 = sub_29DFAA104(v20, v21, &v31);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_29DE74000, v16, v17, "[%{public}s] Tried to submit analytics event without userInfo.presentation", v18, 0xCu);
      sub_29DE93B3C(v19);
      MEMORY[0x29ED82140](v19, -1, -1);
      MEMORY[0x29ED82140](v18, -1, -1);
    }

    return (*(v29 + 8))(v5, v30);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    if (v28)
    {
      v24 = 5;
    }

    else
    {
      if (*(*(v14 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_editedCycleFactors) + 16))
      {
        v25 = 2;
        v26 = 4;
      }

      else
      {
        v25 = 5;
        v26 = 3;
      }

      if (*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39ReviewOngoingCycleFactorsViewController_didDeleteFactors))
      {
        v24 = v26;
      }

      else
      {
        v24 = v25;
      }
    }

    type metadata accessor for ReviewCycleFactorsEvent();
    sub_29DED1100(1, v24, v13, *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_healthStore));
    return (*(v11 + 8))(v13, v10);
  }
}

void sub_29E1EE188(unsigned int (**a1)(char *, uint64_t, char *), char *a2, uint64_t a3)
{
  sub_29E1F0DBC(0, &qword_2A181DE00, MEMORY[0x29EDC2240]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v213 = (&v211 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v8);
  v220 = &v211 - v9;
  v216 = sub_29E2BCFB4();
  v222 = *(v216 - 8);
  MEMORY[0x2A1C7C4A8](v216);
  v215 = &v211 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_29E2BCC24();
  v218 = *(v219 - 8);
  MEMORY[0x2A1C7C4A8](v219);
  v217 = &v211 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_29E2BEBB4();
  v12 = *(v232 - 1);
  MEMORY[0x2A1C7C4A8](v232);
  v212 = &v211 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v223 = &v211 - v15;
  MEMORY[0x2A1C7C4A8](v16);
  v228 = &v211 - v17;
  MEMORY[0x2A1C7C4A8](v18);
  *&v229 = &v211 - v19;
  MEMORY[0x2A1C7C4A8](v20);
  v211 = &v211 - v21;
  MEMORY[0x2A1C7C4A8](v22);
  v24 = &v211 - v23;
  MEMORY[0x2A1C7C4A8](v25);
  v27 = &v211 - v26;
  MEMORY[0x2A1C7C4A8](v28);
  v230 = &v211 - v29;
  MEMORY[0x2A1C7C4A8](v30);
  v227 = &v211 - v31;
  MEMORY[0x2A1C7C4A8](v32);
  v34 = &v211 - v33;
  v35 = sub_29E2BEC64();
  v226 = a1;
  v36 = sub_29E2BCFA4();
  if ((v36 & 0x8000000000000000) != 0)
  {
    goto LABEL_134;
  }

  if (v36 >= *(v35 + 16))
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v231 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v233 = *(v12 + 72);
  v37 = *(v12 + 16);
  v38 = v232;
  v238 = v12 + 16;
  v237 = v37;
  v37(v34, v35 + v231 + v233 * v36, v232);

  v35 = sub_29E2BEB94();
  v39 = *(v12 + 8);
  v236 = v12 + 8;
  v235 = v39;
  v39(v34, v38);
  v40 = sub_29E2BCF64();
  if ((v40 & 0x8000000000000000) != 0)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v40 >= *(v35 + 16))
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v214 = v34;
  v224 = v12;
  v221 = a2;
  sub_29DE9DC34(v35 + 40 * v40 + 32, &v243);

  v234 = sub_29DEB1BC4(0, &qword_2A1819BD0, MEMORY[0x29EDC18F8]);
  swift_dynamicCast();
  v255 = !v255;
  v41 = v255;
  v42 = v251;
  v35 = v252;
  v225 = a3;
  v44 = v253;
  v43 = v254;
  v45 = v256;
  v46 = v257;
  *(&v244 + 1) = &type metadata for OnboardingSelectRow;
  v47 = sub_29DF07FEC();
  *&v245 = v47;
  v48 = swift_allocObject();
  *&v243 = v48;
  *(v48 + 16) = v42;
  *(v48 + 24) = v35;
  *(v48 + 32) = v44;
  *(v48 + 40) = v43;
  *(v48 + 48) = v41;
  *(v48 + 49) = v45;
  *(v48 + 50) = v46;
  sub_29E2BF404();
  sub_29E2BF404();
  sub_29E2BED04();
  sub_29DE93B3C(&v243);
  if (v256 <= 1u)
  {
    a2 = v232;
    v49 = v233;
    v50 = v224;
    v51 = v222;
    v52 = v219;
    v53 = v218;
    if (!v256)
    {
      if (v255)
      {
        sub_29E157018();
      }

      goto LABEL_109;
    }

    if (v255)
    {
      v70 = v217;
      sub_29E2BCC14();
      v71 = sub_29E2BCBD4();
      v73 = v72;
      (*(v53 + 8))(v70, v52);
      started = type metadata accessor for OnboardingStartDateRow(0);
      *(&v244 + 1) = started;
      *&v245 = sub_29E1F1530(&qword_2A181F880, type metadata accessor for OnboardingStartDateRow, &unk_29E2D1438);
      v75 = sub_29DEBB7E8(&v243);
      sub_29E2BCBA4();
      v75[1] = v71;
      v75[2] = v73;
      *v75 = 0;
      *(v75 + *(started + 32)) = 1;
      *(v75 + 1) = 1;
      v76 = sub_29E2BCF64();
      v77 = v76 + 1;
      if (!__OFADD__(v76, 1))
      {
        v78 = sub_29E2BCFA4();
        v79 = v215;
        MEMORY[0x29ED79720](v77, v78);
        sub_29E2BECD4();
        (*(v51 + 8))(v79, v216);
        sub_29DE93B3C(&v243);
        sub_29E157018();
        v49 = v233;
        goto LABEL_109;
      }

      __break(1u);
    }

    else
    {
      v119 = sub_29E2BCFA4();
      v120 = sub_29E2BEC64();
      v121 = sub_29E2BCFA4();
      if ((v121 & 0x8000000000000000) == 0)
      {
        v122 = v214;
        if (v121 < *(v120 + 16))
        {
          v237(v214, v120 + v231 + v121 * v49, a2);

          v123 = sub_29E2BEB94();
          v235(v122, a2);
          v124 = *(v123 + 16);

          if (v124 >= 2)
          {
            v125 = v124 - 1;
            v126 = sub_29E145C4C(v124 - 1, 0);
            if (sub_29DF5C1CC(&v243, (v126 + 4), v125, 1, v125) == v125)
            {
              sub_29E156274(v119, v126);

              goto LABEL_109;
            }

            goto LABEL_144;
          }

LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

LABEL_142:
        __break(1u);
        goto LABEL_143;
      }
    }

    __break(1u);
    goto LABEL_142;
  }

  a2 = v232;
  v50 = v224;
  v54 = v222;
  if (v256 != 2)
  {
    v49 = v233;
    if (!v255)
    {
      goto LABEL_109;
    }

    v80 = v220;
    (*(v224 + 56))(v220, 1, 1, v232);
    v81 = sub_29E2BEC64();
    sub_29E1E8074(v81, v80);
    v83 = *(v82 + 16);
    if (!v83)
    {

LABEL_106:
      sub_29E1F1578(v220, &qword_2A181DE00, MEMORY[0x29EDC2240]);
LABEL_109:
      v193 = sub_29E2BEC64();
      v35 = v193;
      v194 = *(v193 + 16);
      if (v194)
      {
        v195 = 0;
        v196 = v193 + v231;
        v197 = (v50 + 32);
        v198 = MEMORY[0x29EDCA190];
        v199 = v227;
        while (1)
        {
          if (v195 >= *(v35 + 16))
          {
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

          v237(v199, v196, a2);
          v200 = sub_29E2BEB94();
          if (*(v200 + 16))
          {
            sub_29DE9DC34(v200 + 32, &v243);

            if (swift_dynamicCast())
            {
              v201 = v242;

              if (v201)
              {
                v202 = *v197;
                (*v197)(v230, v199, v232);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v247 = v198;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_29E181518(0, *(v198 + 2) + 1, 1);
                  v198 = v247;
                }

                v205 = *(v198 + 2);
                v204 = *(v198 + 3);
                if (v205 >= v204 >> 1)
                {
                  sub_29E181518((v204 > 1), v205 + 1, 1);
                  v198 = v247;
                }

                *(v198 + 2) = v205 + 1;
                v206 = v233;
                v207 = v198 + v231 + v205 * v233;
                a2 = v232;
                v202(v207, v230, v232);
                v49 = v206;
                v199 = v227;
                goto LABEL_112;
              }

              v208 = v199;
              a2 = v232;
            }

            else
            {
              v208 = v199;
            }

            v235(v208, a2);
          }

          else
          {
            v235(v199, a2);
          }

LABEL_112:
          ++v195;
          v196 += v49;
          if (v194 == v195)
          {
            goto LABEL_126;
          }
        }
      }

      v198 = MEMORY[0x29EDCA190];
LABEL_126:

      v35 = *(v198 + 2);

      a2 = v221;
      v209 = *(*&v221[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_userInfo] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_reviewOngoingCycleFactors);
      if (!(v209 >> 62))
      {
        if (!*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_128;
        }

        goto LABEL_130;
      }

LABEL_138:
      if (!sub_29E2C4484())
      {
LABEL_128:
        v210 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_nextButton;
        if ((v35 != 0) != [*&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_nextButton] isEnabled])
        {
          [*&a2[v210] setEnabled_];
        }
      }

LABEL_130:

      return;
    }

    v219 = v82;
    v84 = v82 + v231;
    v228 = (v54 + 8);
    v226 = (v50 + 48);
    v222 = v50 + 32;
    v85 = v223;
    while (1)
    {
      v237(v85, v84, a2);
      v87 = sub_29E156C2C(v85);
      if ((v88 & 1) == 0)
      {
        v89 = v87;
        v90 = sub_29E2BEB94();
        if (*(v90 + 16))
        {
          sub_29DE9DC34(v90 + 32, &v243);

          if (swift_dynamicCast())
          {
            v229 = v239;
            v91 = v240;
            v92 = v241;
            v93 = BYTE1(v242);
            v94 = BYTE2(v242);
            v95 = v47;
            v96 = v215;
            MEMORY[0x29ED79720](0, v89);
            *(&v244 + 1) = &type metadata for OnboardingSelectRow;
            *&v245 = v47;
            v97 = swift_allocObject();
            *&v243 = v97;
            *(v97 + 16) = v229;
            *(v97 + 32) = v91;
            *(v97 + 40) = v92;
            *(v97 + 48) = 0;
            *(v97 + 49) = v93;
            *(v97 + 50) = v94;
            sub_29E2BED04();
            (*v228)(v96, v216);
            sub_29DE93B3C(&v243);
            if (v93 > 1)
            {
              a2 = v232;
              if (v93 == 2)
              {
                v106 = v213;
                sub_29E1F15D4(v220, v213, &qword_2A181DE00, MEMORY[0x29EDC2240]);
                if ((*v226)(v106, 1, a2) == 1)
                {
                  sub_29E1F1578(v106, &qword_2A181DE00, MEMORY[0x29EDC2240]);
                  v85 = v223;
                }

                else
                {
                  (*v222)(v212, v106, a2);
                  v107 = sub_29E2BEB74();
                  v109 = v108;
                  v85 = v223;
                  if (v107 == sub_29E2BEB74() && v109 == v110)
                  {

LABEL_60:
                    v112 = sub_29E2BEC64();
                    if ((v89 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_155;
                    }

                    if (v89 >= *(v112 + 16))
                    {
                      goto LABEL_156;
                    }

                    v113 = v214;
                    v237(v214, v112 + v231 + v89 * v233, a2);

                    v114 = sub_29E2BEB94();
                    v235(v113, a2);
                    v115 = *(v114 + 16);

                    if (v115 < 2)
                    {
                      goto LABEL_157;
                    }

                    v116 = sub_29E145C4C(v115 - 1, 0);
                    if (sub_29DF5C1CC(&v243, (v116 + 4), v115 - 1, 1, v115 - 1) != v115 - 1)
                    {
                      goto LABEL_158;
                    }

                    sub_29E156274(v89, v116);

                    a2 = v232;
                    v117 = v235;
                    v235(v212, v232);
                    v118 = v223;
                    v117(v223, a2);
                    v85 = v118;
                    v47 = v95;
                    goto LABEL_32;
                  }

                  v111 = sub_29E2C4914();

                  if (v111)
                  {
                    goto LABEL_60;
                  }

                  v235(v212, a2);
                }

                sub_29E2BEC34();
              }

              else
              {
LABEL_54:
                v85 = v223;
              }

              v235(v85, a2);
              goto LABEL_32;
            }

            a2 = v232;
            if (!v93)
            {
              goto LABEL_54;
            }

            v98 = sub_29E2BEC64();
            if ((v89 & 0x8000000000000000) != 0)
            {
              goto LABEL_147;
            }

            if (v89 >= *(v98 + 16))
            {
              goto LABEL_148;
            }

            v99 = v214;
            v237(v214, v98 + v231 + v89 * v233, a2);

            v100 = sub_29E2BEB94();
            v235(v99, a2);
            v101 = *(v100 + 16);

            if (v101 < 2)
            {
              goto LABEL_149;
            }

            v102 = sub_29E145C4C(v101 - 1, 0);
            v103 = sub_29DF5C1CC(&v243, (v102 + 4), v101 - 1, 1, v101 - 1);
            v85 = v223;
            if (v103 != v101 - 1)
            {
              goto LABEL_150;
            }

            sub_29E156274(v89, v102);

            goto LABEL_48;
          }
        }

        else
        {
        }

        v104 = sub_29E2BEB94();
        if (!*(v104 + 16))
        {
          v235(v85, a2);

          goto LABEL_32;
        }

        sub_29DE9DC34(v104 + 32, &v243);

        if (swift_dynamicCast())
        {
          v105 = v242;

          if (v105 == 7)
          {
            sub_29E2BEC34();
          }

LABEL_48:
          v86 = v85;
          a2 = v232;
          goto LABEL_31;
        }
      }

      v86 = v85;
LABEL_31:
      v235(v86, a2);
LABEL_32:
      v84 += v233;
      if (!--v83)
      {

        v49 = v233;
        v50 = v224;
        goto LABEL_106;
      }
    }
  }

  v55 = sub_29E2BEC64();
  v56 = v55;
  v57 = *(v55 + 16);
  if (v57)
  {
    v58 = 0;
    v59 = v55 + v231;
    v60 = (v224 + 32);
    v220 = MEMORY[0x29EDCA190];
    v223 = v57;
    v213 = (v224 + 32);
    do
    {
      if (v58 >= *(v56 + 16))
      {
        goto LABEL_132;
      }

      v237(v27, v59, a2);
      v61 = sub_29E2BEB94();
      if (*(v61 + 16))
      {
        v35 = v61;
        sub_29DE9DC34(v61 + 32, &v243);

        if ((swift_dynamicCast() & 1) != 0 && (v35 = *(&v239 + 1), v62 = BYTE1(v242), , , v62 == 2))
        {
          v63 = *v60;
          (*v60)(v228, v27, a2);
          v64 = v220;
          v65 = swift_isUniquelyReferenced_nonNull_native();
          v247 = v64;
          if ((v65 & 1) == 0)
          {
            sub_29E181518(0, *(v64 + 16) + 1, 1);
            v64 = v247;
          }

          v67 = *(v64 + 16);
          v66 = *(v64 + 24);
          v68 = v64;
          v35 = v67 + 1;
          if (v67 >= v66 >> 1)
          {
            sub_29E181518((v66 > 1), v67 + 1, 1);
            v68 = v247;
          }

          *(v68 + 16) = v35;
          v220 = v68;
          v69 = v68 + v231 + v67 * v233;
          v60 = v213;
          v63(v69, v228, a2);
          v57 = v223;
        }

        else
        {
          v235(v27, a2);
        }
      }

      else
      {
        v35 = v61;
        v235(v27, a2);
      }

      ++v58;
      v59 += v233;
    }

    while (v57 != v58);
  }

  else
  {
    v220 = MEMORY[0x29EDCA190];
  }

  v127 = sub_29E2BEC64();
  v128 = v127;
  v129 = *(v127 + 16);
  if (v129)
  {
    v35 = 0;
    v130 = v127 + v231;
    v228 = (v224 + 32);
    v131 = MEMORY[0x29EDCA190];
    v223 = v129;
    while (1)
    {
      if (v35 >= *(v128 + 16))
      {
        goto LABEL_133;
      }

      v237(v24, v130, a2);
      v133 = sub_29E2BEB94();
      if (!*(v133 + 16))
      {
        goto LABEL_160;
      }

      sub_29DE9DC34(v133 + 32, &v239);

      sub_29DE8EE78(&v239, &v243);
      sub_29DEB1BC4(0, &unk_2A181DFD0, &protocol descriptor for OnboardingGenericRow);
      swift_dynamicCast();
      v134 = v248;
      v135 = v249;
      sub_29DE966D4(&v247, v248);
      v136 = (*(v135 + 24))(v134, v135);
      sub_29DE93B3C(&v247);
      if (v136 == 7)
      {
        v137 = v128;
        v138 = *v228;
        (*v228)(v229, v24, a2);
        v139 = swift_isUniquelyReferenced_nonNull_native();
        v250 = v131;
        if ((v139 & 1) == 0)
        {
          sub_29E181518(0, *(v131 + 2) + 1, 1);
          v131 = v250;
        }

        v141 = *(v131 + 2);
        v140 = *(v131 + 3);
        if (v141 >= v140 >> 1)
        {
          sub_29E181518((v140 > 1), v141 + 1, 1);
          v131 = v250;
        }

        *(v131 + 2) = v141 + 1;
        v132 = v233;
        v138(&v131[v231 + v141 * v233], v229, a2);
        v128 = v137;
        v129 = v223;
      }

      else
      {
        v235(v24, a2);
        v132 = v233;
      }

      ++v35;
      v130 += v132;
      if (v129 == v35)
      {
        goto LABEL_85;
      }
    }
  }

  v131 = MEMORY[0x29EDCA190];
LABEL_85:

  if (!v255)
  {
    v182 = *(v220 + 16);

    if (v182 <= 1)
    {
      v183 = sub_29E2BCFA4();
      v184 = sub_29E2BEC64();
      v185 = sub_29E2BCFA4();
      v49 = v233;
      if ((v185 & 0x8000000000000000) != 0)
      {
LABEL_151:
        __break(1u);
        goto LABEL_152;
      }

      if (v185 >= *(v184 + 16))
      {
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      v186 = v214;
      v237(v214, v184 + v231 + v185 * v233, a2);

      v187 = sub_29E2BEB94();
      v235(v186, a2);
      v188 = *(v187 + 16);

      if (v188 < 2)
      {
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      v189 = v188 - 1;
      v190 = sub_29E145C4C(v188 - 1, 0);
      if (sub_29DF5C1CC(&v243, (v190 + 4), v189, 1, v189) != v189)
      {
        goto LABEL_154;
      }

      sub_29E156274(v183, v190);

      if (*(v131 + 2))
      {
        v191 = v211;
        v237(v211, &v131[v231], a2);

        sub_29E156C2C(v191);
        if ((v192 & 1) == 0)
        {
          sub_29E2BEC34();
        }

        v235(v191, a2);
      }

      else
      {
      }
    }

    else
    {

      sub_29E2BCFA4();
      sub_29E2BEC34();
      v49 = v233;
    }

    v50 = v224;
    goto LABEL_109;
  }

  v228 = v131;
  v142 = objc_allocWithZone(type metadata accessor for ManualEntryItem());
  v143 = v221;
  v144 = [v142 init];
  v145 = sub_29E2BEC04();
  v147 = v146;
  v148 = v217;
  sub_29E2BCC14();
  v149 = sub_29E2BCBD4();
  v151 = v150;
  v152 = v218 + 8;
  *&v229 = *(v218 + 8);
  (v229)(v148, v219);
  type metadata accessor for ManualEntryContraceptiveTypeDataSource();
  v153 = swift_allocObject();
  v153[3] = 0;
  swift_unknownObjectWeakInit();
  v153[5] = 0;
  v153[6] = 0;
  v153[3] = &off_2A24BEB30;
  v153[4] = 0;
  swift_unknownObjectWeakAssign();

  LOBYTE(v243) = 0;
  *(&v243 + 1) = v149;
  *&v244 = v151;
  *(&v244 + 1) = 8;
  *&v245 = v153;
  *(&v245 + 1) = v144;
  *&v246 = v145;
  *(&v246 + 1) = v147;
  v248 = &type metadata for OnboardingTypeRow;
  v249 = sub_29DF081EC();
  v154 = swift_allocObject();
  v247 = v154;
  v155 = v244;
  v154[1] = v243;
  v154[2] = v155;
  v156 = v246;
  v154[3] = v245;
  v154[4] = v156;
  sub_29E15BC94(&v243, &v239);
  v157 = sub_29E2BCF64();
  v158 = v157 + 1;
  if (__OFADD__(v157, 1))
  {
    goto LABEL_145;
  }

  v159 = sub_29E2BCFA4();
  v160 = v215;
  MEMORY[0x29ED79720](v158, v159);
  sub_29E2BECD4();
  v161 = v216;
  v222 = *(v222 + 8);
  (v222)(v160, v216);
  sub_29DE93B3C(&v247);
  LODWORD(v223) = v256;
  sub_29E2BCC14();
  v162 = sub_29E2BCBD4();
  v164 = v163;
  v218 = v152;
  (v229)(v148, v219);
  v165 = type metadata accessor for OnboardingStartDateRow(0);
  v241 = v165;
  v242 = sub_29E1F1530(&qword_2A181F880, type metadata accessor for OnboardingStartDateRow, &unk_29E2D1438);
  v166 = sub_29DEBB7E8(&v239);
  sub_29E2BCBA4();
  v166[1] = v162;
  v166[2] = v164;
  *v166 = 0;
  *(v166 + *(v165 + 32)) = 1;
  *(v166 + 1) = v223;
  v167 = sub_29E2BCF64();
  v168 = v167 + 2;
  if (__OFADD__(v167, 2))
  {
    goto LABEL_146;
  }

  v169 = sub_29E2BCFA4();
  MEMORY[0x29ED79720](v168, v169);
  sub_29E2BECD4();
  (v222)(v160, v161);
  sub_29DE93B3C(&v239);
  v170 = *(v220 + 16);

  a2 = v232;
  v49 = v233;
  if (v170 != 1)
  {

    v50 = v224;
    goto LABEL_104;
  }

  v171 = *(v228 + 2);

  v50 = v224;
  if (v171)
  {
LABEL_104:
    sub_29E157018();
    sub_29DF3BBA8(&v243);
    goto LABEL_109;
  }

  sub_29E1F0E10(0, &unk_2A181B3C0, &qword_2A1819BD0, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9E90]);
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_29E2CAB20;
  v173 = v217;
  sub_29E2BCC14();
  v174 = sub_29E2BCBD4();
  v176 = v175;
  v177 = v219;
  v178 = v229;
  (v229)(v173, v219);
  *(v172 + 56) = &type metadata for OnboardingStandardRow;
  *(v172 + 64) = sub_29DF083EC();
  v179 = swift_allocObject();
  *(v172 + 32) = v179;
  *(v179 + 16) = v174;
  *(v179 + 24) = v176;
  *(v179 + 32) = v174;
  *(v179 + 40) = v176;
  *(v179 + 48) = 7;
  sub_29E2BF404();
  sub_29E2BCC14();
  sub_29E2BCBD4();
  v178(v173, v177);
  v180 = v214;
  sub_29E2BEBA4();
  if (!__OFADD__(sub_29E2BCFA4(), 1))
  {
    sub_29E2BECF4();
    v181 = v180;
    a2 = v232;
    v235(v181, v232);
    goto LABEL_104;
  }

LABEL_159:
  __break(1u);
LABEL_160:

  __break(1u);
}