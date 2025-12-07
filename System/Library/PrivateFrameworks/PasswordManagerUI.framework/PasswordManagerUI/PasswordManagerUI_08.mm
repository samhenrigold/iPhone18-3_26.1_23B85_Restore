void sub_21C7E4FD4(uint64_t a1)
{
  if (!qword_27CDEBA20)
  {
    type metadata accessor for PMAccountIcon.IconCache();
    sub_21C705DD8(&qword_27CDEBA28, type metadata accessor for PMAccountIcon.IconCache, &unk_21CBA2990);
    v1 = sub_21CB82154();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEBA20);
    }
  }
}

unint64_t sub_21C7E507C()
{
  result = qword_27CDEBA30;
  if (!qword_27CDEBA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBA30);
  }

  return result;
}

uint64_t sub_21C7E50EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v3 = type metadata accessor for PMAccountIcon(0);
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v57 = v4;
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA38, &qword_21CBA2B10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v43 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA40, &qword_21CBA2B18);
  MEMORY[0x28223BE20](v50);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA48, &qword_21CBA2B20);
  MEMORY[0x28223BE20](v11 - 8);
  v52 = &v43 - v12;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA50, &qword_21CBA2B28);
  MEMORY[0x28223BE20](v51);
  v14 = &v43 - v13;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA58, &qword_21CBA2B30);
  MEMORY[0x28223BE20](v53);
  v56 = &v43 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA60, &qword_21CBA2B38);
  MEMORY[0x28223BE20](v55);
  v54 = &v43 - v16;
  sub_21C7E5780(v2, v8);
  v17 = (v2 + *(v3 + 64));
  v19 = *v17;
  v18 = v17[1];
  v20 = v17[3];
  v46 = v17[2];
  v47 = v18;
  v21 = v17[5];
  v48 = v17[4];
  v22 = v17[6];
  if (v22)
  {
    v23 = v17[6];
    if (v22 == 1)
    {
LABEL_6:
      v23 = 0;
      LOBYTE(v19) = 0;
      v24 = 0x3FD3333333333333;
      v25 = 0x3FD3333333333333;
      v26 = v49;
      goto LABEL_7;
    }
  }

  else
  {
    v43 = *(v2 + *(v3 + 68));
    v44 = v8;
    v45 = v14;
    type metadata accessor for PMAccountIcon.IconCache();
    sub_21C705DD8(&qword_27CDEBA28, type metadata accessor for PMAccountIcon.IconCache, &unk_21CBA2990);
    v8 = v44;
    v23 = *(sub_21CB82134() + 56);

    v14 = v45;

    sub_21C7E8D80(v19, v47, v46, v20, v48, v21, 0);
  }

  if (v23 == 1)
  {
    goto LABEL_6;
  }

  if (v20)
  {
    v24 = 0x3FD3333333333333;
    v26 = v49;
    if ((v21 & 1) == 0)
    {
      v27 = v48;
      v25 = 0x3FD3333333333333;
      goto LABEL_8;
    }

    v25 = 0x3FD3333333333333;
  }

  else
  {
    v25 = v46;
    v24 = v47;
    v26 = v49;
    if ((v21 & 1) == 0)
    {
      v27 = v48;
      goto LABEL_8;
    }
  }

LABEL_7:
  v27 = 0x3FE3333333333333;
LABEL_8:
  v59 = 1;
  sub_21C716934(v8, v10, &qword_27CDEBA38, &qword_21CBA2B10);
  v28 = &v10[*(v50 + 36)];
  *v28 = v19 & 1;
  *(v28 + 1) = v24;
  *(v28 + 2) = v25;
  *(v28 + 3) = v27;
  *(v28 + 5) = 0;
  *(v28 + 6) = 0;
  *(v28 + 4) = 0x3FF1EB851EB851ECLL;
  v28[56] = 1;
  *(v28 + 8) = v23;
  sub_21C7E8D94();
  v29 = v52;
  sub_21CB84494();
  sub_21C6EA794(v10, &qword_27CDEBA40, &qword_21CBA2B18);
  sub_21C7E9934(v2, v5, type metadata accessor for PMAccountIcon);
  v30 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v31 = swift_allocObject();
  sub_21C7E99FC(v5, v31 + v30, type metadata accessor for PMAccountIcon);
  sub_21C716934(v29, v14, &qword_27CDEBA48, &qword_21CBA2B20);
  v32 = &v14[*(v51 + 36)];
  *v32 = sub_21C7E9240;
  v32[1] = v31;
  v32[2] = 0;
  v32[3] = 0;
  sub_21C7E9934(v2, v5, type metadata accessor for PMAccountIcon);
  v33 = swift_allocObject();
  sub_21C7E99FC(v5, v33 + v30, type metadata accessor for PMAccountIcon);
  v34 = v14;
  v35 = v56;
  sub_21C716934(v34, v56, &qword_27CDEBA50, &qword_21CBA2B28);
  v36 = (v35 + *(v53 + 36));
  *v36 = 0;
  v36[1] = 0;
  v36[2] = sub_21C7E929C;
  v36[3] = v33;
  v38 = *(v2 + 56);
  v37 = *(v2 + 64);
  sub_21C7E9934(v2, v5, type metadata accessor for PMAccountIcon);
  v39 = swift_allocObject();
  sub_21C7E99FC(v5, v39 + v30, type metadata accessor for PMAccountIcon);
  v40 = v54;
  sub_21C716934(v35, v54, &qword_27CDEBA58, &qword_21CBA2B30);
  v41 = (v40 + *(v55 + 36));
  *v41 = v38;
  v41[1] = v37;
  v41[2] = sub_21C7E9240;
  v41[3] = v39;
  sub_21C716934(v40, v58, &qword_27CDEBA60, &qword_21CBA2B38);
}

uint64_t sub_21C7E5780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBAE8, &unk_21CBA2B70);
  MEMORY[0x28223BE20](v50);
  v49 = &v40 - v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB48, &qword_21CBA2C00);
  MEMORY[0x28223BE20](v48);
  v47 = &v40 - v4;
  v46 = type metadata accessor for PMPasswordsIcon(0);
  MEMORY[0x28223BE20](v46);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB50, &qword_21CBA2C08);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA90, &qword_21CBA2B48);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBAD0, &qword_21CBA2B68);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  v19 = sub_21C7E5D40();
  if (v19)
  {
    v20 = v19;
    sub_21C7E6764(v19, v15);
    sub_21C6EDBAC(v15, v12, &qword_27CDEBA90, &qword_21CBA2B48);
    swift_storeEnumTagMultiPayload();
    sub_21C7E8F5C();
    sub_21C7E9014();
    sub_21CB83494();

    v21 = v15;
    v22 = &qword_27CDEBA90;
    v23 = &qword_21CBA2B48;
  }

  else
  {
    v41 = v9;
    v42 = v12;
    v24 = v49;
    v43 = v18;
    v44 = v13;
    v26 = v46;
    v25 = v47;
    v45 = v16;
    v27 = type metadata accessor for PMAccountIcon(0);
    v28 = (a1 + *(v27 + 60));
    v29 = v28[1];
    if (v29 == 1)
    {
      if (*(a1 + *(v27 + 48)))
      {
        sub_21CB85174();
      }

      sub_21C7E8140(v24);
      sub_21C6EDBAC(v24, v25, &qword_27CDEBAE8, &unk_21CBA2B70);
      swift_storeEnumTagMultiPayload();
      sub_21C705DD8(&qword_27CDEBAD8, type metadata accessor for PMPasswordsIcon, &unk_21CBA9AE4);
      sub_21C7E90D0();
      v30 = v43;
      sub_21CB83494();
      sub_21C6EA794(v24, &qword_27CDEBAE8, &unk_21CBA2B70);
      v31 = v42;
      v32 = v30;
    }

    else
    {
      v33 = *v28;
      if (*(a1 + *(v27 + 48)))
      {
        v34 = v28[1];
        v35 = sub_21CB85174();
        v29 = v34;
        v36 = 56.0;
        if (v35)
        {
          v36 = 60.0;
        }
      }

      else
      {
        v36 = 44.0;
      }

      v31 = v42;
      *v6 = v33;
      *(v6 + 1) = v29;
      *(v6 + 2) = v36;
      *(v6 + 3) = v36;
      v6[32] = 0;
      v37 = *(v26 + 28);
      *&v6[v37] = swift_getKeyPath(aP_37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
      swift_storeEnumTagMultiPayload();
      v38 = v41;
      sub_21C7E99FC(v6, v41, type metadata accessor for PMPasswordsIcon);
      sub_21C7E9934(v38, v25, type metadata accessor for PMPasswordsIcon);
      swift_storeEnumTagMultiPayload();
      sub_21C705DD8(&qword_27CDEBAD8, type metadata accessor for PMPasswordsIcon, &unk_21CBA9AE4);
      sub_21C7E90D0();

      v32 = v43;
      sub_21CB83494();
      sub_21C7E999C(v38, type metadata accessor for PMPasswordsIcon);
    }

    sub_21C6EDBAC(v32, v31, &qword_27CDEBAD0, &qword_21CBA2B68);
    swift_storeEnumTagMultiPayload();
    sub_21C7E8F5C();
    sub_21C7E9014();
    sub_21CB83494();
    v21 = v32;
    v22 = &qword_27CDEBAD0;
    v23 = &qword_21CBA2B68;
  }

  return sub_21C6EA794(v21, v22, v23);
}

void *sub_21C7E5D40()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
  MEMORY[0x28223BE20](v2 - 8);
  v85 = &v79 - v3;
  v4 = sub_21CB85B74();
  v87 = *(v4 - 8);
  v88 = v4;
  MEMORY[0x28223BE20](v4);
  v86 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v79 - v7;
  v89 = type metadata accessor for PMAccountIcon(0);
  v9 = v0 + v89[17];
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = v9[16];
  v13 = type metadata accessor for PMAccountIcon.IconCache();
  v14 = sub_21C705DD8(&qword_27CDEBA28, type metadata accessor for PMAccountIcon.IconCache, &unk_21CBA2990);
  v15 = *(sub_21CB82134() + 40);
  v16 = v15;

  if (!v15)
  {
    goto LABEL_10;
  }

  v83 = v8;
  v17 = v14;
  v18 = v13;
  v19 = v1[10];
  if (v19)
  {
    v20 = v12;
    v21 = v1[9];
    v84 = v10;
    v81 = v11;
    v82 = v20;
    v22 = sub_21CB82134();
    v24 = *(v22 + 24);
    v23 = *(v22 + 32);

    if (!v23)
    {
      goto LABEL_9;
    }

    if (v21 == v24 && v19 == v23)
    {

      return v15;
    }

    v26 = sub_21CB86344();

    if ((v26 & 1) == 0)
    {
LABEL_9:

      v12 = v82;
      v13 = v18;
      v14 = v17;
      v8 = v83;
      v10 = v84;
LABEL_10:
      v27 = *(sub_21CB82134() + 48);

      if (v27 != 1)
      {
        return 0;
      }

      v28 = v1[3];
      if (qword_27CDEA4C0 != -1)
      {
        swift_once();
      }

      v29 = qword_27CE18778;
      sub_21CB86544();
      v30 = sub_21C81C2FC(v28, v90);

      if (!v30)
      {
        return 0;
      }

      v84 = v10;
      v80 = v30;
      v81 = v13;
      v31 = v1[10];
      if (v31)
      {
        v32 = v1[9];
        v33 = HIBYTE(v31) & 0xF;
        if ((v31 & 0x2000000000000000) == 0)
        {
          v33 = v32 & 0xFFFFFFFFFFFFLL;
        }

        if (v33)
        {
          v83 = v8;
          v34 = sub_21CB82134();
          *(v34 + 24) = v32;
          *(v34 + 32) = v31;

          v85 = v14;
          v35 = sub_21CB82134();
          v36 = sub_21CB85584();
          if (*(v1 + v89[12]) == 1)
          {
            v37 = sub_21CB85174();
            v38 = 56.0;
            if (v37)
            {
              v38 = 60.0;
            }
          }

          else
          {
            v38 = 44.0;
          }

          v56 = [v80 cachedIconForDomain:v36 resizedToSize:{v38, v38}];

          v57 = *(v35 + 40);
          *(v35 + 40) = v56;
          if (v57)
          {
            if (v56)
            {
              sub_21C6E8F4C(0, &qword_27CDEBB30, 0x277D755B8);
              v58 = v56;
              v59 = v57;
              v60 = sub_21CB85DD4();

              if (v60)
              {

LABEL_49:
                v73 = sub_21CB82134();
                v74 = *(sub_21CB82134() + 40);
                v75 = v74;

                if (v74)
                {
                }

                *(v73 + 48) = v74 == 0;

                v76 = sub_21CB82134();

                v15 = *(v76 + 40);
                v77 = v15;

                return v15;
              }
            }

LABEL_40:
            v62 = v83;
            sub_21CB858C4();
            v63 = sub_21CB858E4();
            (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
            v64 = swift_allocObject();
            v64[2] = 0;
            v64[3] = 0;
            v64[4] = v35;

            sub_21C9E6C0C(0, 0, v62, &unk_21CBA2D08, v64);

            sub_21C6EA794(v62, &qword_27CDF1D50, &qword_21CBA0C00);

            goto LABEL_49;
          }

          if (v56)
          {
            v61 = v56;
            goto LABEL_40;
          }

LABEL_44:

          goto LABEL_49;
        }
      }

      v39 = v85;
      sub_21C6EDBAC(v1 + v89[11], v85, &qword_27CDEB3A0, &qword_21CBD0650);
      v40 = v87;
      v41 = v88;
      if ((*(v87 + 48))(v39, 1, v88) == 1)
      {
        sub_21C6EA794(v39, &qword_27CDEB3A0, &qword_21CBD0650);
        goto LABEL_42;
      }

      v89 = v29;
      (*(v40 + 32))(v86, v39, v41);
      v42 = sub_21CB85B64();
      v44 = v43;

      v45 = HIBYTE(v44) & 0xF;
      if ((v44 & 0x2000000000000000) == 0)
      {
        v45 = v42 & 0xFFFFFFFFFFFFLL;
      }

      if (!v45)
      {
        (*(v40 + 8))(v86, v88);
LABEL_42:
        v65 = sub_21CB82134();
        v66 = *(v65 + 40);
        *(v65 + 40) = 0;
        if (v66)
        {
          v67 = v65;
          sub_21CB858C4();
          v68 = sub_21CB858E4();
          (*(*(v68 - 8) + 56))(v8, 0, 1, v68);
          v69 = swift_allocObject();
          v69[2] = 0;
          v69[3] = 0;
          v69[4] = v67;

          sub_21C9E6C0C(0, 0, v8, &unk_21CBA2CF8, v69);

          sub_21C6EA794(v8, &qword_27CDF1D50, &qword_21CBA0C00);

          goto LABEL_49;
        }

        goto LABEL_44;
      }

      v82 = v12;
      v85 = v14;
      v46 = sub_21CB82134();
      v47 = v1[4];
      sub_21CB86544();
      v48 = sub_21C81C2E4(v47, v90);

      v49 = *(v48 + 24);
      sub_21CB85B64();
      v50 = sub_21CB85584();

      v51 = [v49 objectForKey_];

      v52 = *(v46 + 40);
      *(v46 + 40) = v51;
      if (v52)
      {
        if (v51)
        {
          sub_21C6E8F4C(0, &qword_27CDEBB30, 0x277D755B8);
          v53 = v51;
          v54 = v52;
          v55 = sub_21CB85DD4();

          if (v55)
          {

LABEL_48:
            (*(v87 + 8))(v86, v88);
            goto LABEL_49;
          }
        }
      }

      else
      {
        if (!v51)
        {

          goto LABEL_48;
        }

        v70 = v51;
      }

      sub_21CB858C4();
      v71 = sub_21CB858E4();
      (*(*(v71 - 8) + 56))(v8, 0, 1, v71);
      v72 = swift_allocObject();
      v72[2] = 0;
      v72[3] = 0;
      v72[4] = v46;

      sub_21C9E6C0C(0, 0, v8, &unk_21CBA2D00, v72);

      sub_21C6EA794(v8, &qword_27CDF1D50, &qword_21CBA0C00);

      goto LABEL_48;
    }
  }

  return v15;
}

double sub_21C7E6764@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21CB84BD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_21CB84BE4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = *(v2 + *(type metadata accessor for PMAccountIcon(0) + 48));
  if (v25 == 1)
  {
    sub_21CB85174();
  }

  v13 = a1;
  sub_21CB84BA4();
  (*(v10 + 104))(v12, *MEMORY[0x277CE0FF0], v9);
  sub_21CB84BF4();

  (*(v10 + 8))(v12, v9);
  (*(v6 + 104))(v8, *MEMORY[0x277CE0FE0], v5);
  v14 = sub_21CB84C64();

  (*(v6 + 8))(v8, v5);
  sub_21CB85214();
  sub_21CB82374();
  v27 = 1;
  *&v26[6] = v28;
  *&v26[22] = v29;
  *&v26[38] = v30;
  if (v25)
  {
    v15 = sub_21CB85174();
    v16 = 56.0;
    if (v15)
    {
      v16 = 60.0;
    }
  }

  else
  {
    v16 = 44.0;
  }

  v17 = v16 / 44.0 * 6.0;
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA90, &qword_21CBA2B48) + 36));
  v19 = *(sub_21CB82A84() + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_21CB831A4();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = v17;
  v18[1] = v17;
  *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBAC0, &qword_21CBA2B60) + 36)) = 256;
  v22 = *&v26[16];
  *(a2 + 18) = *v26;
  *a2 = v14;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 34) = v22;
  result = *&v26[32];
  *(a2 + 50) = *&v26[32];
  *(a2 + 64) = *&v26[46];
  return result;
}

void sub_21C7E6AF0()
{
  v1 = v0;
  v2 = sub_21CB80E34();
  v91 = *(v2 - 8);
  v92 = v2;
  MEMORY[0x28223BE20](v2);
  v90 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v83 - v5;
  v7 = type metadata accessor for PMAccountIcon(0);
  v95 = *(v7 - 1);
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v94 = &v83 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v83 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v83 - v15;
  v17 = sub_21CB85B74();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v20);
  v24 = &v83 - v23;
  if (*(v1 + v7[13]) != 1)
  {
    return;
  }

  v93 = v21;
  v88 = *(v1 + v7[12]);
  v89 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v22;
  if (v88 == 1)
  {
    if (sub_21CB85174())
    {
      v25 = 60.0;
    }

    else
    {
      v25 = 56.0;
    }
  }

  else
  {
    v25 = 44.0;
  }

  sub_21C6EDBAC(v1 + v7[11], v16, &qword_27CDEB3A0, &qword_21CBD0650);
  v26 = *(v18 + 48);
  v27 = v18;
  v28 = v93;
  if (v26(v16, 1, v93) == 1)
  {
    sub_21C6EA794(v16, &qword_27CDEB3A0, &qword_21CBD0650);
    goto LABEL_17;
  }

  v29 = *(v27 + 32);
  v85 = v27 + 32;
  v86 = v6;
  v84 = v29;
  v29(v24, v16, v28);
  v30 = sub_21CB85B64();
  v32 = v31;

  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
    (*(v27 + 8))(v24, v28);
LABEL_17:
    v50 = v89;
    if (v1[10])
    {
      v51 = v1[3];
      if (qword_27CDEA4C0 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      v52 = sub_21C81C2FC(v51, aBlock);

      if (v52)
      {
        v53 = sub_21CB85584();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB690, &unk_21CBA2A30);
        v54 = v90;
        sub_21CB84D54();
        v55 = sub_21CB80E04();
        (*(v91 + 1))(v54, v92);
        sub_21C7E9934(v1, v50, type metadata accessor for PMAccountIcon);
        v56 = (*(v95 + 80) + 16) & ~*(v95 + 80);
        v57 = v50;
        if (v88)
        {
          v58 = swift_allocObject();
          sub_21C7E99FC(v57, v58 + v56, type metadata accessor for PMAccountIcon);
          v100 = sub_21C7E92FC;
          v101 = v58;
          aBlock = MEMORY[0x277D85DD0];
          v97 = 1107296256;
          v59 = &block_descriptor_1;
        }

        else
        {
          v60 = swift_allocObject();
          sub_21C7E99FC(v57, v60 + v56, type metadata accessor for PMAccountIcon);
          v100 = sub_21C7E931C;
          v101 = v60;
          aBlock = MEMORY[0x277D85DD0];
          v97 = 1107296256;
          v59 = &block_descriptor_26;
        }

        v98 = sub_21C7E80D4;
        v99 = v59;
        v61 = _Block_copy(&aBlock);

        [v52 iconForDomain:v53 requestID:v55 responseHandler:v61];

        _Block_release(v61);
      }
    }

    return;
  }

  v34 = v27;
  v35 = v1[4];
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v36 = sub_21C81C2E4(v35, aBlock);

  sub_21C7E9934(v1, v13, type metadata accessor for PMAccountIcon);
  v37 = v94;
  sub_21C7E9934(v13, v94, type metadata accessor for PMAccountIcon);
  v38 = *(v95 + 80);
  v92 = swift_allocObject();
  sub_21C7E99FC(v13, v92 + ((v38 + 16) & ~v38), type metadata accessor for PMAccountIcon);
  v95 = v36;
  v39 = *(v36 + 24);
  sub_21CB85B64();
  v40 = sub_21CB85584();

  v41 = [v39 objectForKey_];

  if (v41)
  {
    v42 = sub_21CB858E4();
    v43 = v37;
    v44 = v86;
    (*(*(v42 - 8) + 56))(v86, 1, 1, v42);
    v91 = v24;
    v45 = v89;
    sub_21C7E9934(v43, v89, type metadata accessor for PMAccountIcon);
    sub_21CB858B4();
    v90 = v41;
    v46 = sub_21CB858A4();
    v47 = (v38 + 32) & ~v38;
    v48 = swift_allocObject();
    v49 = MEMORY[0x277D85700];
    *(v48 + 16) = v46;
    *(v48 + 24) = v49;
    sub_21C7E99FC(v45, v48 + v47, type metadata accessor for PMAccountIcon);
    *(v48 + ((v8 + v47 + 7) & 0xFFFFFFFFFFFFFFF8)) = v41;
    sub_21C98B308(0, 0, v44, &unk_21CBA2BB0, v48);

    sub_21C7E999C(v94, type metadata accessor for PMAccountIcon);

    (*(v34 + 8))(v91, v93);
  }

  else
  {
    sub_21C7E999C(v37, type metadata accessor for PMAccountIcon);
    v62 = objc_opt_self();
    v63 = [v62 mainScreen];
    [v63 scale];
    v65 = v64;

    v66 = v25 * v65;
    v67 = [v62 mainScreen];
    [v67 scale];
    v69 = v68;

    v70 = sub_21CB858E4();
    (*(*(v70 - 8) + 56))(v86, 1, 1, v70);
    v71 = v87;
    (*(v34 + 16))(v87, v24, v93);
    sub_21CB858B4();
    v72 = v95;

    v73 = v92;

    v74 = sub_21CB858A4();
    v75 = (*(v34 + 80) + 40) & ~*(v34 + 80);
    v76 = (v19 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    v78 = MEMORY[0x277D85700];
    v77[2] = v74;
    v77[3] = v78;
    v77[4] = v72;
    v79 = v77 + v75;
    v80 = v93;
    v84(v79, v71, v93);
    v81 = (v77 + v76);
    *v81 = v66;
    v81[1] = v25 * v69;
    v82 = (v77 + ((v76 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v82 = sub_21C7E933C;
    v82[1] = v73;
    sub_21C98B308(0, 0, v86, &unk_21CBA2BA0, v77);

    (*(v34 + 8))(v24, v80);
  }
}

void sub_21C7E75E4(uint64_t a1)
{
  v2 = sub_21CB80E34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_21CB85B74();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMAccountIcon(0);
  if (*(a1 + *(v13 + 48)))
  {
    return;
  }

  sub_21C6EDBAC(a1 + *(v13 + 44), v8, &qword_27CDEB3A0, &qword_21CBD0650);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21C6EA794(v8, &qword_27CDEB3A0, &qword_21CBD0650);
LABEL_11:
    v19 = *(a1 + 24);
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v20 = sub_21C81C2FC(v19, v23);

    if (v20)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB690, &unk_21CBA2A30);
      sub_21CB84D54();
      v21 = sub_21CB80E04();
      (*(v3 + 8))(v5, v2);
      [v20 cancelRequest_];
    }

    return;
  }

  (*(v10 + 32))(v12, v8, v9);
  v14 = sub_21CB85B64();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_11;
  }

  v18 = *(a1 + 32);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C81C2E4(v18, v23);

  sub_21CA39DB8(v12);

  (*(v10 + 8))(v12, v9);
}

uint64_t sub_21C7E79A0()
{
  type metadata accessor for PMAccountIcon.IconCache();
  v0 = swift_allocObject();
  sub_21CB81D64();
  swift_allocObject();
  *(v0 + 16) = sub_21CB81D54();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  return v0;
}

uint64_t sub_21C7E7A08(id a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  v7 = *(v1 + *(type metadata accessor for PMAccountIcon(0) + 68));
  type metadata accessor for PMAccountIcon.IconCache();
  sub_21C705DD8(&qword_27CDEBA28, type metadata accessor for PMAccountIcon.IconCache, &unk_21CBA2990);
  sub_21CB82134();

  sub_21CB81D44();
  v8 = v7;

  v9 = sub_21CB82134();
  v10 = *(v2 + 80);
  *(v9 + 24) = *(v2 + 72);
  *(v9 + 32) = v10;

  v11 = sub_21CB82134();
  v12 = *(v11 + 40);
  *(v11 + 40) = a1;
  if (!v12)
  {
    if (!a1)
    {

      goto LABEL_8;
    }

    a1 = a1;
    goto LABEL_7;
  }

  if (!a1 || (v19[1] = v8, sub_21C6E8F4C(0, &qword_27CDEBB30, 0x277D755B8), a1 = a1, v13 = v12, v14 = sub_21CB85DD4(), v13, (v14 & 1) == 0))
  {
LABEL_7:
    sub_21CB858C4();
    v15 = sub_21CB858E4();
    (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v11;

    sub_21C9E6C0C(0, 0, v6, &unk_21CBA2BC0, v16);

    sub_21C6EA794(v6, &qword_27CDF1D50, &qword_21CBA0C00);

    goto LABEL_8;
  }

LABEL_8:
  v17 = sub_21CB82134();

  *(v17 + 48) = 0;
}

uint64_t sub_21C7E7D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_21CB858B4();
  v5[4] = sub_21CB858A4();
  v7 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C7E7DB4, v7, v6);
}

uint64_t sub_21C7E7DB4()
{
  v1 = *(v0 + 24);

  type metadata accessor for PMAccountIcon(0);
  type metadata accessor for PMAccountIcon.IconCache();
  sub_21C705DD8(&qword_27CDEBA28, type metadata accessor for PMAccountIcon.IconCache, &unk_21CBA2990);
  v2 = *(sub_21CB82134() + 40);
  v3 = v2;

  if (!v2)
  {
    if (!v1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v4 = *(v0 + 24);

  if (!v1 || v2 != v4)
  {
LABEL_6:
    v5 = *(v0 + 24);
    v6 = v1;
    sub_21C7E7A08(v5);
  }

LABEL_7:
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_21C7E7EE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PMAccountIcon(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = sub_21CB858E4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_21C7E9934(a2, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountIcon);
  sub_21CB858B4();
  v14 = a1;
  v15 = sub_21CB858A4();
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_21C7E99FC(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PMAccountIcon);
  *(v17 + ((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  sub_21C98B308(0, 0, v12, a4, v17);
}

void sub_21C7E80D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_21C7E8140@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v54 - v3;
  v5 = sub_21CB82A84();
  MEMORY[0x28223BE20](v5);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB08, &qword_21CBA2B80);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBAF8, &qword_21CBBA2C0);
  MEMORY[0x28223BE20](v11);
  v59 = &v54 - v12;
  if (*(v1 + *(type metadata accessor for PMAccountIcon(0) + 48)) == 1)
  {
    sub_21CB85174();
    v13 = sub_21CB85174();
    v14 = 56.0;
    if (v13)
    {
      v14 = 60.0;
    }
  }

  else
  {
    v14 = 44.0;
  }

  v15 = v14 / 44.0 * 6.0;
  v16 = *(v5 + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_21CB831A4();
  (*(*(v18 - 8) + 104))(v7 + v16, v17, v18);
  *v7 = v15;
  v7[1] = v15;
  v19 = sub_21CB84A84();
  sub_21C7E99FC(v7, v10, MEMORY[0x277CDFC08]);
  *&v10[*(v8 + 52)] = v19;
  *&v10[*(v8 + 56)] = 256;
  sub_21CB85214();
  sub_21CB82374();
  v20 = v59;
  sub_21C716934(v10, v59, &qword_27CDEBB08, &qword_21CBA2B80);
  v21 = (v20 + *(v11 + 36));
  v22 = v69;
  *v21 = v68;
  v21[1] = v22;
  v21[2] = v70;
  v57 = sub_21CB85214();
  v56 = v23;
  v24 = sub_21C7E8758();
  v26 = sub_21C7C6DBC(v24, v25);
  v28 = v27;

  if (v28)
  {
    *&v65 = v26;
    *(&v65 + 1) = v28;
    sub_21C71F3FC();
    v60 = sub_21CB84054();
    v61 = v29;
    v62 = v30 & 1;
    v63 = v31;
    v64 = 0;
  }

  else
  {
    v60 = sub_21CB84BB4();
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 1;
  }

  sub_21CB83494();
  v55 = v66;
  v54 = v65;
  v32 = v67;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBAE8, &unk_21CBA2B70);
  v34 = v58;
  v35 = v58 + *(v33 + 36);
  v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB60, &unk_21CBA2C40) + 36));
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB220, &qword_21CBA14F8) + 28);
  v38 = *MEMORY[0x277CE0B48];
  v39 = sub_21CB84004();
  v40 = *(v39 - 8);
  (*(v40 + 104))(&v36[v37], v38, v39);
  (*(v40 + 56))(&v36[v37], 0, 1, v39);
  *v36 = swift_getKeyPath(a8_13);
  v41 = v55;
  *v35 = v54;
  *(v35 + 16) = v41;
  *(v35 + 32) = v32;
  v42 = sub_21CB84AD4();
  KeyPath = swift_getKeyPath(byte_21CBA2C80);
  v44 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB68, &qword_21CBA2CB0) + 36));
  *v44 = KeyPath;
  v44[1] = v42;
  sub_21C7E887C();
  sub_21CB83DF4();
  v45 = *MEMORY[0x277CE09A0];
  v46 = sub_21CB83DC4();
  v47 = *(v46 - 8);
  (*(v47 + 104))(v4, v45, v46);
  (*(v47 + 56))(v4, 0, 1, v46);
  v48 = sub_21CB83E14();
  sub_21C6EA794(v4, &qword_27CDEBB58, &qword_21CBAF8A0);
  v49 = swift_getKeyPath(byte_21CBA2CB8);
  v50 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB70, &qword_21CBA2CE8) + 36));
  *v50 = v49;
  v50[1] = v48;
  v51 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB18, &qword_21CBA2B88) + 36));
  v52 = v56;
  *v51 = v57;
  v51[1] = v52;
  return sub_21C716934(v59, v34, &qword_27CDEBAF8, &qword_21CBBA2C0);
}

uint64_t sub_21C7E8758()
{
  if (!*(v0 + 64))
  {
LABEL_6:
    if (!*(v0 + 80))
    {
      return 0;
    }

    v7 = sub_21CB85584();
    v8 = [v7 _lp_userVisibleHost];

    if (!v8)
    {
      sub_21CB855C4();
      v8 = sub_21CB85584();
    }

    v9 = [v8 safari_stringByTrimmingWhitespace];

    v3 = sub_21CB855C4();
    return v3;
  }

  v1 = sub_21CB85584();
  v2 = [v1 safari_stringByTrimmingWhitespace];

  v3 = sub_21CB855C4();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    goto LABEL_6;
  }

  return v3;
}

double sub_21C7E887C()
{
  v1 = v0;
  v2 = sub_21CB807A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB78, &qword_21CBA2CF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v38 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v38 - v13;
  if (!*(v1 + 64))
  {
LABEL_6:
    if (*(v1 + 80))
    {
      v21 = sub_21CB85584();
      v22 = [v21 _lp_userVisibleHost];

      if (!v22)
      {
        sub_21CB855C4();
        v22 = sub_21CB85584();
      }

      v23 = [v22 safari_stringByTrimmingWhitespace];

      v17 = sub_21CB855C4();
      v19 = v24;
    }

    else
    {
      v17 = 0;
      v19 = 0xE000000000000000;
    }

    goto LABEL_11;
  }

  v15 = sub_21CB85584();
  v16 = [v15 safari_stringByTrimmingWhitespace];

  v17 = sub_21CB855C4();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    goto LABEL_6;
  }

LABEL_11:

  if ((v19 & 0x2000000000000000) == 0)
  {
    if ((v17 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    if (*(v1 + *(type metadata accessor for PMAccountIcon(0) + 48)) == 1)
    {
      v27 = sub_21CB85174();
      v28 = 56.0;
      if (v27)
      {
        v28 = 60.0;
      }
    }

    else
    {
      v28 = 44.0;
    }

    v37 = 1.75;
    return v28 / v37;
  }

  if ((v19 & 0xF00000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v25 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
  if (v25)
  {
    v26 = v25;
    sub_21CB80784();

    (*(v3 + 56))(v11, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v11, 1, 1, v2);
  }

  sub_21C716934(v11, v14, &qword_27CDEBB78, &qword_21CBA2CF0);
  v38[0] = sub_21C7E8758();
  v38[1] = v29;
  sub_21C6EDBAC(v14, v8, &qword_27CDEBB78, &qword_21CBA2CF0);
  v30 = *(v3 + 48);
  if (v30(v8, 1, v2) == 1)
  {
    sub_21CB80794();
    if (v30(v8, 1, v2) != 1)
    {
      sub_21C6EA794(v8, &qword_27CDEBB78, &qword_21CBA2CF0);
    }
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
  }

  sub_21C71F3FC();
  sub_21CB85E94();
  v32 = v31;
  (*(v3 + 8))(v5, v2);

  v33 = *(v1 + *(type metadata accessor for PMAccountIcon(0) + 48));
  if ((v32 & 1) == 0)
  {
    if (v33)
    {
      v36 = sub_21CB85174();
      sub_21C6EA794(v14, &qword_27CDEBB78, &qword_21CBA2CF0);
      v28 = 44.8;
      if (v36)
      {
        v28 = 48.0;
      }
    }

    else
    {
      sub_21C6EA794(v14, &qword_27CDEBB78, &qword_21CBA2CF0);
      v28 = 35.2;
    }

    v37 = 1.4;
    return v28 / v37;
  }

  if (v33)
  {
    v34 = sub_21CB85174();
    sub_21C6EA794(v14, &qword_27CDEBB78, &qword_21CBA2CF0);
    result = 44.8;
    if (v34)
    {
      return 48.0;
    }
  }

  else
  {
    sub_21C6EA794(v14, &qword_27CDEBB78, &qword_21CBA2CF0);
    return 35.2;
  }

  return result;
}

uint64_t sub_21C7E8D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 != 1)
  {
  }

  return result;
}

unint64_t sub_21C7E8D94()
{
  result = qword_27CDEBA68;
  if (!qword_27CDEBA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBA40, &qword_21CBA2B18);
    sub_21C7E8E4C();
    sub_21C6EADEC(&qword_27CDEBB20, &qword_27CDEBB28, &unk_21CBA2B90, &protocol conformance descriptor for PMImageBadgeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBA68);
  }

  return result;
}

unint64_t sub_21C7E8E4C()
{
  result = qword_27CDEBA70;
  if (!qword_27CDEBA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBA38, &qword_21CBA2B10);
    sub_21C7E8ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBA70);
  }

  return result;
}

unint64_t sub_21C7E8ED0()
{
  result = qword_27CDEBA78;
  if (!qword_27CDEBA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBA80, &qword_21CBA2B40);
    sub_21C7E8F5C();
    sub_21C7E9014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBA78);
  }

  return result;
}

unint64_t sub_21C7E8F5C()
{
  result = qword_27CDEBA88;
  if (!qword_27CDEBA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBA90, &qword_21CBA2B48);
    sub_21C738A18();
    sub_21C6EADEC(&qword_27CDEBAB8, &qword_27CDEBAC0, &qword_21CBA2B60, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBA88);
  }

  return result;
}

unint64_t sub_21C7E9014()
{
  result = qword_27CDEBAC8;
  if (!qword_27CDEBAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBAD0, &qword_21CBA2B68);
    sub_21C705DD8(&qword_27CDEBAD8, type metadata accessor for PMPasswordsIcon, &unk_21CBA9AE4);
    sub_21C7E90D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBAC8);
  }

  return result;
}

unint64_t sub_21C7E90D0()
{
  result = qword_27CDEBAE0;
  if (!qword_27CDEBAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBAE8, &unk_21CBA2B70);
    sub_21C7E9188();
    sub_21C6EADEC(&qword_27CDEBB10, &qword_27CDEBB18, &qword_21CBA2B88, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBAE0);
  }

  return result;
}

unint64_t sub_21C7E9188()
{
  result = qword_27CDEBAF0;
  if (!qword_27CDEBAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBAF8, &qword_21CBBA2C0);
    sub_21C6EADEC(&qword_27CDEBB00, &qword_27CDEBB08, &qword_21CBA2B80, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBAF0);
  }

  return result;
}

void sub_21C7E929C()
{
  v1 = *(type metadata accessor for PMAccountIcon(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_21C7E75E4(v2);
}

uint64_t sub_21C7E93D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_21CB85B74() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v8);
  v16 = *(v1 + v8 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_21C6F35D0;

  return sub_21CA3A040(v13, v14, a1, v9, v10, v11, v1 + v6, v15, v16);
}

uint64_t sub_21C7E9534(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAccountIcon(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21C7E7D1C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_21C7E9654(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C6F35D0;

  return sub_21C7E4318(a1, v4, v5, v6);
}

uint64_t objectdestroy_35Tm()
{
  v1 = type metadata accessor for PMAccountIcon(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[11];
  v7 = sub_21CB85B74();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  if (*(v5 + v1[15] + 8) != 1)
  {
  }

  if (*(v5 + v1[16] + 48) != 1)
  {
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_21C70AC30(*(v5 + v1[17]), *(v5 + v1[17] + 8));
  v10 = v5 + v1[18];
  v11 = sub_21CB80E34();
  (*(*(v11 - 8) + 8))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB690, &unk_21CBA2A30);

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v2 | 7);
}

uint64_t sub_21C7E9934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7E999C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7E99FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7E9A64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C702EFC;

  return sub_21C7E4318(a1, v4, v5, v6);
}

unint64_t sub_21C7E9B18()
{
  result = qword_27CDEBB80;
  if (!qword_27CDEBB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBA60, &qword_21CBA2B38);
    sub_21C7E9C2C(&qword_27CDEBB88, &qword_27CDEBA58, &qword_21CBA2B30, sub_21C7E9BFC);
    sub_21C6EADEC(&qword_27CDEBBA0, &qword_27CDEBBA8, &unk_21CBA2D10, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBB80);
  }

  return result;
}

uint64_t sub_21C7E9C2C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C7E9CB0()
{
  result = qword_27CDEBB98;
  if (!qword_27CDEBB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBA48, &qword_21CBA2B20);
    sub_21C7E8D94();
    sub_21C705DD8(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBB98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PMGroupMember.PermissionLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PMGroupMember.PermissionLevel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21C7E9ECC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C7E9F14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C7E9FC8(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_21C7EA0E0(v4, __dst) & 1;
}

unint64_t sub_21C7EA024()
{
  result = qword_27CDEBBB0;
  if (!qword_27CDEBBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBBB8, qword_21CBA2E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBBB0);
  }

  return result;
}

unint64_t sub_21C7EA08C()
{
  result = qword_27CDEBBC0;
  if (!qword_27CDEBBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBBC0);
  }

  return result;
}

uint64_t sub_21C7EA0E0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 2);
  v5 = *(a2 + 2);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *(a1 + 1) == *(a2 + 1) && v4 == v5;
    if (!v6 && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 3) == *(a2 + 3) && *(a1 + 4) == *(a2 + 4);
  if (!v7 && (sub_21CB86344() & 1) == 0 || (*(a1 + 5) != *(a2 + 5) || *(a1 + 6) != *(a2 + 6)) && (sub_21CB86344() & 1) == 0 || (*(a1 + 7) != *(a2 + 7) || *(a1 + 8) != *(a2 + 8)) && (sub_21CB86344() & 1) == 0 || (*(a1 + 9) != *(a2 + 9) || *(a1 + 10) != *(a2 + 10)) && (sub_21CB86344() & 1) == 0 || (*(a1 + 11) != *(a2 + 11) || *(a1 + 12) != *(a2 + 12)) && (sub_21CB86344() & 1) == 0 || (*(a1 + 13) != *(a2 + 13) || *(a1 + 14) != *(a2 + 14)) && (sub_21CB86344() & 1) == 0 || (*(a1 + 15) != *(a2 + 15) || *(a1 + 16) != *(a2 + 16)) && (sub_21CB86344() & 1) == 0 || (*(a1 + 17) != *(a2 + 17) || *(a1 + 18) != *(a2 + 18)) && (sub_21CB86344() & 1) == 0 || *(a1 + 19) != *(a2 + 19) || (sub_21C7A2154(*(a1 + 20), *(a2 + 20)) & 1) == 0 || (sub_21C7A2154(*(a1 + 21), *(a2 + 21)) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 23);
  v9 = *(a2 + 23);
  if (v8)
  {
    if (!v9 || (*(a1 + 22) != *(a2 + 22) || v8 != v9) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a1 + 25);
  v11 = *(a2 + 25);
  if (v10)
  {
    if (!v11 || (*(a1 + 24) != *(a2 + 24) || v10 != v11) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = *(a1 + 27);
  v13 = *(a2 + 27);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_61;
    }

    return 0;
  }

  if (!v13 || (*(a1 + 26) != *(a2 + 26) || v12 != v13) && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

LABEL_61:
  if ((a1[224] ^ a2[224]))
  {
    return 0;
  }

  v15 = *(a1 + 29);
  v16 = *(a2 + 29);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    sub_21C6E8F4C(0, &qword_27CDEBBC8, 0x277D49A48);
    v17 = v16;
    v18 = v15;
    v19 = sub_21CB85DD4();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (a1[272])
  {
    if ((a2[272] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[272] & 1) != 0 || (sub_21CB85AC4() & 1) == 0)
  {
    return 0;
  }

  if ((a1[273] ^ a2[273]))
  {
    return 0;
  }

  v20 = *(a1 + 36);
  v21 = *(a2 + 36);
  if (v20)
  {
    if (!v21 || (*(a1 + 35) != *(a2 + 35) || v20 != v21) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v22 = *(a1 + 37);
  v23 = *(a2 + 37);
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
    v24 = v23;
    v25 = v22;
    v26 = sub_21CB85DD4();

    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  if ((a1[304] ^ a2[304]))
  {
    return 0;
  }

  sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
  return sub_21CB85DD4() & 1;
}

uint64_t sub_21C7EA4E4(unsigned __int8 a1)
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_21CB81014();
  sub_21CB81014();
  v8 = sub_21CB80FF4();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  return v8;
}

uint64_t sub_21C7EA67C(char a1, uint64_t a2)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_21C7EA7D4(char a1, uint64_t a2)
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    return 0;
  }

  sub_21CB81014();
  v7 = sub_21CB81004();
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t type metadata accessor for PMPlatformRoleButton(uint64_t a1)
{
  result = qword_27CDEBBD0;
  if (!qword_27CDEBBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21C7EA9BC(uint64_t a1)
{
  result = sub_21CB81F14();
  if (v2 <= 0x3F)
  {
    result = sub_21C7226D8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21C7EAA6C(uint64_t a1)
{
  v3 = sub_21CB81F14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBBE0, &unk_21CBC5190);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v22 - v10;
  (*(v4 + 16))(v6, &v1[*(a1 + 20)], v3, v9);
  v12 = &v1[*(a1 + 24)];
  v13 = *v12;
  v14 = *(v12 + 1);

  MEMORY[0x21CF148B0](v6, v13, v14);
  v15 = *v1;
  v16 = *(v1 + 1);
  v22[2] = v15;
  v22[3] = v16;
  sub_21C71F3FC();

  v17 = sub_21CB84054();
  v19 = v18;
  LOBYTE(v6) = v20;
  sub_21C7EAC8C();
  sub_21CB843D4();
  sub_21C74A72C(v17, v19, v6 & 1);

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_21C7EAC8C()
{
  result = qword_27CDEBBE8;
  if (!qword_27CDEBBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBBE0, &unk_21CBC5190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBBE8);
  }

  return result;
}

unint64_t sub_21C7EACF0()
{
  result = qword_27CDEBBF0;
  if (!qword_27CDEBBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBBF8, &unk_21CBA2F30);
    sub_21C7EAC8C();
    sub_21C735F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBBF0);
  }

  return result;
}

uint64_t sub_21C7EAD88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21C7EADD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for PMAccountPickerRow(uint64_t a1)
{
  result = qword_27CDEBC00;
  if (!qword_27CDEBC00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21C7EAE90(uint64_t a1)
{
  result = type metadata accessor for PMAccount(319);
  if (v2 <= 0x3F)
  {
    result = sub_21C7226D8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21C7EAF40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 41))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21C7EAF9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21C7EB024()
{
  v1 = *(v0 + 16);
  sub_21CB86484();
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      MEMORY[0x21CF15F90](3);
      sub_21CB85DE4();
      return sub_21CB864D4();
    }

    v2 = 2;
  }

  else
  {
    v2 = v1 != 0;
  }

  MEMORY[0x21CF15F90](v2);
  sub_21CB854C4();
  return sub_21CB864D4();
}

uint64_t sub_21C7EB0D0(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      MEMORY[0x21CF15F90](3);
      return sub_21CB85DE4();
    }

    v3 = 2;
  }

  else
  {
    v3 = v2 != 0;
  }

  MEMORY[0x21CF15F90](v3);

  return sub_21CB854C4();
}

uint64_t sub_21C7EB174(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_21CB86484();
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      MEMORY[0x21CF15F90](3);
      sub_21CB85DE4();
      return sub_21CB864D4();
    }

    v3 = 2;
  }

  else
  {
    v3 = v2 != 0;
  }

  MEMORY[0x21CF15F90](v3);
  sub_21CB854C4();
  return sub_21CB864D4();
}

uint64_t sub_21C7EB238@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC18, &unk_21CBC6EF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC20, &qword_21CBA3140);
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v34 = &v33 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC28, &qword_21CBA3148);
  MEMORY[0x28223BE20](v39);
  v8 = &v33 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC30, &qword_21CBA3150);
  MEMORY[0x28223BE20](v36);
  v10 = (&v33 - v9);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC38, &qword_21CBA3158);
  MEMORY[0x28223BE20](v38);
  v37 = &v33 - v11;
  v12 = type metadata accessor for PMAccountPickerRow(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - v18;
  if (*(v1 + *(v17 + 32) + 40))
  {
    if (*(v1 + *(v17 + 32) + 40) == 1)
    {
      v20 = v1[1];
      v41 = *v1;
      v42 = v20;
      MEMORY[0x28223BE20](v17);
      v33 = sub_21C7EC110();

      v21 = v34;
      sub_21CB82614();
      v22 = v35;
      (*(v35 + 16))(v10, v21, v5);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC50, &unk_21CBA3160);
      sub_21C6EADEC(&qword_27CDEBC48, &qword_27CDEBC50, &unk_21CBA3160, &unk_21CBB42B0);
      sub_21C6EADEC(&qword_27CDEBC58, &qword_27CDEBC20, &qword_21CBA3140, MEMORY[0x277CDD938]);
      v23 = v37;
      sub_21CB83494();
      sub_21C6EDBAC(v23, v8, &qword_27CDEBC38, &qword_21CBA3158);
      swift_storeEnumTagMultiPayload();
      sub_21C7EC02C();
      sub_21CB83494();
      sub_21C6EA794(v23, &qword_27CDEBC38, &qword_21CBA3158);
      return (*(v22 + 8))(v21, v5);
    }

    sub_21C7EB978(v4);
    v30 = &unk_21CBC6EF0;
    sub_21C6EDBAC(v4, v8, &qword_27CDEBC18, &unk_21CBC6EF0);
    swift_storeEnumTagMultiPayload();
    sub_21C7EC02C();
    sub_21C7EC110();
    sub_21CB83494();
    v31 = v4;
    v32 = &qword_27CDEBC18;
  }

  else
  {
    sub_21C7EC378(v1, &v33 - v18, type metadata accessor for PMAccountPickerRow);
    v34 = v5;
    v35 = v2;
    v25 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v26 = swift_allocObject();
    v33 = v8;
    v27 = v26;
    sub_21C7EC450(v19, v26 + v25, type metadata accessor for PMAccountPickerRow);
    sub_21C7EC378(v1, v15, type metadata accessor for PMAccountPickerRow);
    v28 = swift_allocObject();
    sub_21C7EC450(v15, v28 + v25, type metadata accessor for PMAccountPickerRow);
    *v10 = sub_21C7EC314;
    v10[1] = v28;
    v10[2] = sub_21C7EC2A8;
    v10[3] = v27;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC50, &unk_21CBA3160);
    sub_21C6EADEC(&qword_27CDEBC48, &qword_27CDEBC50, &unk_21CBA3160, &unk_21CBB42B0);
    sub_21C6EADEC(&qword_27CDEBC58, &qword_27CDEBC20, &qword_21CBA3140, MEMORY[0x277CDD938]);
    v29 = v37;
    sub_21CB83494();
    v30 = &qword_21CBA3158;
    sub_21C6EDBAC(v29, v33, &qword_27CDEBC38, &qword_21CBA3158);
    swift_storeEnumTagMultiPayload();
    sub_21C7EC02C();
    sub_21C7EC110();
    sub_21CB83494();

    v31 = v29;
    v32 = &qword_27CDEBC38;
  }

  return sub_21C6EA794(v31, v32, v30);
}

uint64_t sub_21C7EB978@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = type metadata accessor for PMAccountRow(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC70, &qword_21CBAD0C0);
  MEMORY[0x28223BE20](v50);
  v6 = &v45 - v5;
  sub_21C7EC378(v1, v4, type metadata accessor for PMAccount);
  v7 = type metadata accessor for PMAccountPickerRow(0);
  v8 = v1 + *(v7 + 24);
  v10 = *(v8 + 8);
  v9 = *(v8 + 16);
  v11 = *(v8 + 24);
  v12 = *(v8 + 32);
  v13 = (v1 + *(v7 + 28));
  v14 = v13[1];
  v48 = *v13;
  sub_21C7EC3E0(v10, v9);
  v46 = v12;
  v47 = v11;
  sub_21C7EC3F4(v11, v12);
  v49 = v14;

  v15 = sub_21CB837E4();
  v16 = &v4[v2[7]];
  v17 = MEMORY[0x277CE04E8];
  *(v16 + 3) = MEMORY[0x277CE04F8];
  *(v16 + 4) = v17;
  *v16 = v15;
  v18 = v2[9];
  KeyPath = swift_getKeyPath(asc_21CBA3178);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v20 = &v4[v18];
  sub_21CB86544();
  sub_21C7073E8(KeyPath, v52);

  type metadata accessor for PMGroupsStore(0);
  sub_21C7EC408(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v21 = sub_21CB82674();
  v23 = v22;

  *v20 = v21;
  v20[1] = v23;
  v24 = &v4[v2[10]];
  *v24 = swift_getKeyPath(byte_21CBA3198);
  v24[8] = 0;
  v25 = &v4[v2[11]];
  *v25 = swift_getKeyPath(byte_21CBA31C0);
  v25[8] = 0;
  v26 = v2[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v27 = v2[13];
  *&v4[v27] = swift_getKeyPath(byte_21CBA3228);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v28 = v2[14];
  *&v4[v28] = swift_getKeyPath(aH_50);
  v29 = &v4[v2[5]];
  *v29 = v10;
  v29[1] = v9;
  v30 = &v4[v2[6]];
  v31 = v46;
  *v30 = v47;
  *(v30 + 1) = v31;
  v32 = &v4[v2[8]];
  v33 = v49;
  *v32 = v48;
  *(v32 + 1) = v33;
  [objc_opt_self() isPasswordsAppInstalled];
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21C7EC450(v4, v6, type metadata accessor for PMAccountRow);
  v34 = &v6[*(v50 + 36)];
  v35 = v57;
  *(v34 + 4) = v56;
  *(v34 + 5) = v35;
  *(v34 + 6) = v58;
  v36 = v53;
  *v34 = v52;
  *(v34 + 1) = v36;
  v37 = v55;
  *(v34 + 2) = v54;
  *(v34 + 3) = v37;
  v38 = *v8;
  v39 = swift_getKeyPath(aP_38);
  v40 = swift_allocObject();
  *(v40 + 16) = (v38 & 1) == 0;
  v41 = v6;
  v42 = v51;
  sub_21C7EC4B8(v41, v51);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC18, &unk_21CBC6EF0);
  v44 = (v42 + *(result + 36));
  *v44 = v39;
  v44[1] = sub_21C735744;
  v44[2] = v40;
  return result;
}

unint64_t sub_21C7EBDFC()
{
  result = qword_27CDEBC10;
  if (!qword_27CDEBC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBC10);
  }

  return result;
}

uint64_t sub_21C7EBE50@<X0>(_BYTE *a1@<X8>)
{
  sub_21C7EC528();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

uint64_t sub_21C7EBEEC(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        goto LABEL_19;
      }
    }

    else if (a6 == 3)
    {
      sub_21C7EBFE0();
      return sub_21CB85DD4() & 1;
    }

    return 0;
  }

  if (a3)
  {
    if (a6 == 1)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      goto LABEL_19;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

LABEL_19:

  return sub_21CB86344();
}

unint64_t sub_21C7EBFE0()
{
  result = qword_27CDF76A0;
  if (!qword_27CDF76A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDF76A0);
  }

  return result;
}

unint64_t sub_21C7EC02C()
{
  result = qword_27CDEBC40;
  if (!qword_27CDEBC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC38, &qword_21CBA3158);
    sub_21C6EADEC(&qword_27CDEBC48, &qword_27CDEBC50, &unk_21CBA3160, &unk_21CBB42B0);
    sub_21C6EADEC(&qword_27CDEBC58, &qword_27CDEBC20, &qword_21CBA3140, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBC40);
  }

  return result;
}

unint64_t sub_21C7EC110()
{
  result = qword_27CDEBC60;
  if (!qword_27CDEBC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC18, &unk_21CBC6EF0);
    sub_21C7EC1C8();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBC60);
  }

  return result;
}

unint64_t sub_21C7EC1C8()
{
  result = qword_27CDEBC68;
  if (!qword_27CDEBC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC70, &qword_21CBAD0C0);
    sub_21C7EC408(&qword_27CDEBC78, type metadata accessor for PMAccountRow, &unk_21CBA44CC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBC68);
  }

  return result;
}

uint64_t sub_21C7EC378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7EC3E0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_21C7EC3F4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_21C7EC408(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C7EC450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7EC4B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC70, &qword_21CBAD0C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C7EC528()
{
  result = qword_27CDEBC98;
  if (!qword_27CDEBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBC98);
  }

  return result;
}

unint64_t sub_21C7EC58C()
{
  result = qword_27CDEBCA0;
  if (!qword_27CDEBCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBCA8, qword_21CBA32C0);
    sub_21C7EC02C();
    sub_21C7EC110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBCA0);
  }

  return result;
}

unint64_t sub_21C7EC61C()
{
  result = qword_27CDEBCB0;
  if (!qword_27CDEBCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBCB0);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_21C7EC68C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C7EC6D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C7EC740@<X0>(int a2@<W2>, uint64_t a3@<X8>)
{
  LODWORD(v15) = a2;
  v16 = a3;
  v17 = sub_21CB82A74();
  v3 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBCB8, &qword_21CBA33B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBCC0, &qword_21CBA33C0);
  v11 = sub_21C6EADEC(&qword_27CDEBCC8, &qword_27CDEBCC0, &qword_21CBA33C0, MEMORY[0x277CE04B0]);
  sub_21CB84354();
  sub_21CB81E94();
  if ((v18 & 1) != 0 || (v15 & 1) == 0)
  {
    v18 = MEMORY[0x277D84F90];
    v15 = sub_21C7ECA18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBCD8, &qword_21CBA33C8);
    sub_21C6EADEC(&qword_27CDEBCE0, &qword_27CDEBCD8, &qword_21CBA33C8, MEMORY[0x277D83970]);
    v12 = v17;
    sub_21CB85F14();
  }

  else
  {
    sub_21CB82A64();
    v12 = v17;
  }

  v18 = v10;
  v19 = v11;
  swift_getOpaqueTypeConformance2();
  sub_21CB84954();
  (*(v3 + 8))(v5, v12);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_21C7ECA18()
{
  result = qword_27CDEBCD0;
  if (!qword_27CDEBCD0)
  {
    sub_21CB82A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBCD0);
  }

  return result;
}

uint64_t (*sub_21C7ECA88())()
{
  sub_21C7ECAF4();
  sub_21CB82F94();
  *(swift_allocObject() + 16) = v1;
  return sub_21C7A2124;
}

unint64_t sub_21C7ECAF4()
{
  result = qword_27CDEBCE8;
  if (!qword_27CDEBCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBCE8);
  }

  return result;
}

uint64_t sub_21C7ECB58(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v35 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v11);
  v36 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = v32 - v15;
  v17 = *(v7 + 48);
  if ((v17)(a1, 1, v6, v14) == 1)
  {
    v18 = 0;
  }

  else
  {
    v32[1] = a3;
    v33 = v7;
    v19 = TupleTypeMetadata2;
    v20 = a1;
    v34 = v19;
    v21 = *(v19 + 48);
    v22 = *(v10 + 16);
    v22(v16, v38, v4);
    v38 = v21;
    v22(&v16[v21], v20, v4);
    if (v17(v16, 1, v6) == 1)
    {
      if (v17(&v16[v38], 1, v6) == 1)
      {
        v18 = 1;
      }

      else
      {
        v10 = v37;
        v4 = v34;
        v18 = 0;
      }
    }

    else
    {
      v23 = v34;
      v24 = v36;
      v22(v36, v16, v4);
      v25 = v38;
      if (v17(&v16[v38], 1, v6) == 1)
      {
        (*(v33 + 8))(v24, v6);
        v18 = 0;
        v10 = v37;
        v4 = v23;
      }

      else
      {
        v26 = v33;
        v27 = &v16[v25];
        v28 = v35;
        (*(v33 + 32))(v35, v27, v6);
        v29 = v24;
        v18 = sub_21CB85574();
        v30 = *(v26 + 8);
        v30(v28, v6);
        v30(v29, v6);
      }
    }

    (*(v10 + 8))(v16, v4);
  }

  return v18 & 1;
}

uint64_t sub_21C7ECF08@<X0>(uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath(byte_21CBA34B8);
  v4 = qword_27CDEA4C0;

  if (v4 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v13);

  type metadata accessor for PMAccountsState(0);
  sub_21C705E20(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v5 = sub_21CB82674();
  v7 = v6;

  a2[2] = v5;
  a2[3] = v7;
  a2[4] = swift_getKeyPath(byte_21CBA34E0);
  v8 = type metadata accessor for PMAccountPickerViewContent(0);
  v9 = v8[7];
  *(a2 + v9) = swift_getKeyPath(aH_51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  swift_storeEnumTagMultiPayload();
  v10 = a2 + v8[8];
  sub_21C7ED10C();
  sub_21CB81FA4();
  *v10 = v13;
  *(v10 + 1) = v14;
  v10[16] = v15;
  *(a2 + v8[9]) = 0;
  type metadata accessor for PMAccountPickerModel(0);
  sub_21C705E20(&qword_27CDEB1F0, type metadata accessor for PMAccountPickerModel, &unk_21CBA0758);
  result = sub_21CB82674();
  *a2 = result;
  a2[1] = v12;
  return result;
}

unint64_t sub_21C7ED10C()
{
  result = qword_27CDEBD70;
  if (!qword_27CDEBD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBD70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PMAccountPickerViewContent.FocusElement(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PMAccountPickerViewContent.FocusElement(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t type metadata accessor for PMAccountPickerViewContent(uint64_t a1)
{
  result = qword_27CDEBD10;
  if (!qword_27CDEBD10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C7ED2BC(uint64_t a1)
{
  sub_21C7ED390(319);
  if (v1 <= 0x3F)
  {
    sub_21C705CFC(319);
    if (v2 <= 0x3F)
    {
      sub_21C7E4F08(319);
      if (v3 <= 0x3F)
      {
        sub_21C70DC98(319);
        if (v4 <= 0x3F)
        {
          sub_21C7ED424(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21C7ED390(uint64_t a1)
{
  if (!qword_27CDEBD20)
  {
    type metadata accessor for PMAccountPickerModel(255);
    sub_21C7FD70C(&qword_27CDEB1F0, type metadata accessor for PMAccountPickerModel, &unk_21CBA0758);
    v1 = sub_21CB826A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEBD20);
    }
  }
}

void sub_21C7ED424(uint64_t a1)
{
  if (!qword_27CDEBD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBD60, &unk_21CBA35A0);
    sub_21C7ED494();
    v1 = sub_21CB81FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEBD58);
    }
  }
}

unint64_t sub_21C7ED494()
{
  result = qword_27CDEBD68;
  if (!qword_27CDEBD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBD60, &unk_21CBA35A0);
    sub_21C7ED10C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBD68);
  }

  return result;
}

uint64_t sub_21C7ED534(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_21C7ED590()
{
  sub_21CB86484();
  MEMORY[0x21CF15F90](0);
  return sub_21CB864D4();
}

uint64_t sub_21C7ED5D4(uint64_t a1)
{
  sub_21CB86484();
  MEMORY[0x21CF15F90](0);
  return sub_21CB864D4();
}

uint64_t sub_21C7ED614@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = type metadata accessor for PMAccountPickerViewContent(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v63 = v4;
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBD88, &qword_21CBA3668);
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v7 = &v40 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBD90, &qword_21CBA3670);
  *&v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  *&v57 = &v40 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBD98, &qword_21CBA3678);
  MEMORY[0x28223BE20](v55);
  v52 = &v40 - v9;
  sub_21C7EE08C();
  v10 = *v1;
  v65 = v1[1];
  v66 = v10;
  v49 = v1;
  v64 = type metadata accessor for PMAccountPickerModel(0);
  v59 = sub_21C7FD70C(&qword_27CDEB1F0, type metadata accessor for PMAccountPickerModel, &unk_21CBA0758);
  sub_21CB82684();
  swift_getKeyPath(byte_21CBA3680);
  sub_21CB82694();

  v45 = v78;
  v73 = v76;
  v74 = v77;
  v75 = v78;
  v60 = type metadata accessor for PMAccountPickerViewContent;
  v48 = v5;
  sub_21C7FCBD8(v1, v5, type metadata accessor for PMAccountPickerViewContent);
  v62 = *(v3 + 80);
  v11 = (v62 + 16) & ~v62;
  v58 = v11;
  v12 = swift_allocObject();
  v61 = type metadata accessor for PMAccountPickerViewContent;
  sub_21C7FD754(v5, v12 + v11, type metadata accessor for PMAccountPickerViewContent);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA8, &qword_21CBA36B0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDB0, &qword_21CBA36B8);
  v43 = sub_21C6EADEC(&qword_27CDEBDB8, &qword_27CDEBD88, &qword_21CBA3668, MEMORY[0x277CDDA18]);
  v44 = sub_21C6EADEC(&qword_27CDEBDC0, &qword_27CDEBDA8, &qword_21CBA36B0, &unk_21CBBE7F0);
  v13 = type metadata accessor for PMAddAccountView(255);
  v14 = sub_21CB83994();
  v47 = v14;
  v15 = sub_21C7FD70C(&qword_27CDEBDC8, type metadata accessor for PMAddAccountView, &unk_21CBA8F48);
  *&v69 = v13;
  *(&v69 + 1) = v14;
  *&v70 = v15;
  *(&v70 + 1) = MEMORY[0x277CDE2B8];
  v46 = MEMORY[0x277CDEB40];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v50;
  sub_21CB847C4();

  v18 = v17;
  (*(v51 + 8))(v7, v17);
  sub_21CB82684();
  swift_getKeyPath(aH_52);
  sub_21CB82694();

  v19 = v49;
  v20 = v48;
  v21 = v60;
  sub_21C7FCBD8(v49, v48, v60);
  v22 = v58;
  v23 = swift_allocObject();
  sub_21C7FD754(v20, v23 + v22, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDD0, &qword_21CBB0460);
  *&v69 = v18;
  *(&v69 + 1) = v42;
  *&v70 = v41;
  *(&v70 + 1) = v43;
  v71 = v44;
  v72 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v24 = type metadata accessor for PMGeneratedPasswordsLogView(255);
  v25 = sub_21C7FD70C(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView, &unk_21CBB7C80);
  *&v69 = v24;
  *(&v69 + 1) = v47;
  *&v70 = v25;
  *(&v70 + 1) = MEMORY[0x277CDE2B8];
  swift_getOpaqueTypeConformance2();
  v26 = v52;
  v27 = v53;
  v28 = v57;
  sub_21CB847B4();

  (*(v54 + 8))(v28, v27);
  v29 = v19;
  sub_21C7FCBD8(v19, v20, v21);
  v30 = v58;
  v31 = swift_allocObject();
  v32 = v61;
  sub_21C7FD754(v20, v31 + v30, v61);
  v33 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDE0, &qword_21CBA36F0) + 36));
  *v33 = sub_21C7FB278;
  v33[1] = v31;
  v33[2] = 0;
  v33[3] = 0;
  sub_21CB82684();
  swift_getKeyPath(byte_21CBA36F8);
  sub_21CB82694();

  v57 = v69;
  v54 = v70;
  v34 = v71;
  sub_21C7FCBD8(v29, v20, v60);
  v35 = swift_allocObject();
  sub_21C7FD754(v20, v35 + v30, v32);
  v36 = v26 + *(v55 + 36);
  v37 = v54;
  *v36 = v57;
  *(v36 + 16) = v37;
  *(v36 + 32) = v34;
  *(v36 + 40) = &unk_21CBA3728;
  *(v36 + 48) = v35;
  v76 = sub_21C7EF634();
  v77 = v38;
  sub_21CB82684();
  swift_getKeyPath(byte_21CBA3730);
  sub_21CB82694();

  v68 = v29;
  v67 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDE8, &qword_21CBA3758);
  sub_21C7FB378();
  sub_21C71F3FC();
  sub_21C7FB6BC();
  sub_21CB84754();

  return sub_21C6EA794(v26, &qword_27CDEBD98, &qword_21CBA3678);
}

uint64_t sub_21C7EE08C()
{
  v1 = *(v0 + 8);
  sub_21CB858B4();

  v2 = sub_21CB858A4();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D85700];
  v3[2] = v2;
  v3[3] = v4;
  v3[4] = v1;

  v5 = sub_21CB858A4();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBED0, &unk_21CBA1A60);
  sub_21CB84F64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBED8, &qword_21CBA3940);
  sub_21C6EADEC(&qword_27CDEBEE0, &qword_27CDEBED0, &unk_21CBA1A60, MEMORY[0x277D83960]);
  sub_21C6EADEC(&qword_27CDEBEE8, &qword_27CDEBED0, &unk_21CBA1A60, MEMORY[0x277D83980]);
  sub_21C6EADEC(&qword_27CDEBEF0, &qword_27CDEBED0, &unk_21CBA1A60, MEMORY[0x277D83990]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBEF8, &qword_21CBA3948);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF00, &qword_21CBA3950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF08, &qword_21CBA3958);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF10, &qword_21CBA3960);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF18, &qword_21CBA3968);
  sub_21C7FB938();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBFA0, &qword_21CBA39A0);
  sub_21C6EADEC(&qword_27CDEBFA8, &qword_27CDEBFA0, &qword_21CBA39A0, MEMORY[0x277CDDF68]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C7FBDD0();
  swift_getOpaqueTypeConformance2();
  return sub_21CB82914();
}

uint64_t sub_21C7EE420(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBA3680);
  swift_getKeyPath(aP_39);

  return sub_21CB81DC4();
}

uint64_t sub_21C7EE49C@<X0>(uint64_t a3@<X8>)
{
  v20[1] = a3;
  v3 = sub_21CB83994();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAddAccountView(0);
  MEMORY[0x28223BE20](v7);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PMAddAccountModel(0);
  sub_21C7FD70C(&qword_27CDEBEB8, type metadata accessor for PMAddAccountModel, &unk_21CBA89A8);

  *v9 = sub_21CB82674();
  v9[1] = v10;
  v9[2] = 0x4079000000000000;
  v11 = v7[6];
  *(v9 + v11) = swift_getKeyPath(byte_21CBA3848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  sub_21C721B58();
  sub_21CB81FA4();
  v12 = v7[8];
  KeyPath = swift_getKeyPath(byte_21CBA38D0);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v14 = (v9 + v12);
  sub_21CB86544();
  sub_21C7073E8(KeyPath, v21);

  type metadata accessor for PMGroupsStore(0);
  sub_21C7FD70C(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v15 = sub_21CB82674();
  v17 = v16;

  *v14 = v15;
  v14[1] = v17;
  v18 = v9 + v7[9];
  *v18 = swift_getKeyPath(aP_40);
  v18[8] = 0;
  v21 = 0x756F636341646461;
  v22 = 0xEA0000000000746ELL;
  type metadata accessor for PMAccountPickerViewContent(0);
  sub_21CB852C4();
  sub_21CB834F4();
  sub_21C7FD70C(&qword_27CDEBDC8, type metadata accessor for PMAddAccountView, &unk_21CBA8F48);
  sub_21CB84524();
  (*(v4 + 8))(v6, v3);
  return sub_21C719180(v9, type metadata accessor for PMAddAccountView);
}

uint64_t sub_21C7EE83C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath(aH_52);
  swift_getKeyPath(byte_21CBA38B0);
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C7EE8BC(char *a1, uint64_t *a2)
{
  swift_getKeyPath(aH_52);
  swift_getKeyPath(byte_21CBA38B0);

  return sub_21CB81DC4();
}

uint64_t sub_21C7EE930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_21CB83994();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMGeneratedPasswordsLogView(0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  swift_getKeyPath(a0_27, v8);
  swift_getKeyPath(byte_21CBA3828);
  sub_21CB81DB4();

  v24 = *(&v30 + 1);
  v25 = v30;
  swift_unknownObjectWeakInit();
  v11 = v7[5];
  *&v10[v11] = swift_getKeyPath(byte_21CBA3848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v12 = v7[6];
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v14 = &v10[v12];
  sub_21CB86544();
  sub_21C7073D0(KeyPath, v30);

  type metadata accessor for PMGeneratedPasswordStore(0);
  sub_21C7FD70C(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore, &unk_21CBB83F8);
  v15 = sub_21CB82674();
  v17 = v16;

  *v14 = v15;
  v14[1] = v17;
  v18 = &v10[v7[8]];
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_21CB84D44();
  v19 = &v10[v7[9]];
  v28 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEA8, &unk_21CBA38A0);
  sub_21CB84D44();
  v20 = *(&v30 + 1);
  *v19 = v30;
  *(v19 + 1) = v20;
  v21 = v7[10];
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEB0, &unk_21CBA5440);
  sub_21CB84D44();
  *&v10[v21] = v30;
  swift_unknownObjectWeakAssign();

  v10[v7[7]] = 0;
  v22 = v24;
  *v18 = v25;
  *(v18 + 1) = v22;
  *(v18 + 2) = 0;
  *&v30 = 0xD000000000000012;
  *(&v30 + 1) = 0x800000021CB8F740;
  type metadata accessor for PMAccountPickerViewContent(0);
  sub_21CB852C4();
  sub_21CB834F4();
  sub_21C7FD70C(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView, &unk_21CBB7C80);
  sub_21CB84524();
  (*(v4 + 8))(v6, v3);
  return sub_21C719180(v10, type metadata accessor for PMGeneratedPasswordsLogView);
}

uint64_t sub_21C7EED5C(uint64_t a1)
{
  v24 = a1;
  v26 = sub_21CB853D4();
  v29 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21CB85404();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccountPickerViewContent(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_21CB85424();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v23 = sub_21CB85CF4();
  sub_21CB85414();
  sub_21CB85434();
  v25 = *(v10 + 8);
  v25(v12, v9);
  sub_21C7FCBD8(v24, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountPickerViewContent);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_21C7FD754(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PMAccountPickerViewContent);
  aBlock[4] = sub_21C7FB900;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_2;
  v18 = _Block_copy(aBlock);

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C7FD70C(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0, MEMORY[0x277D83970]);
  v19 = v26;
  sub_21CB85F14();
  v20 = v23;
  MEMORY[0x21CF157D0](v15, v5, v2, v18);
  _Block_release(v18);

  (*(v29 + 8))(v2, v19);
  (*(v27 + 8))(v5, v28);
  return (v25)(v15, v9);
}

uint64_t sub_21C7EF1EC(uint64_t a1)
{
  type metadata accessor for PMAccountPickerViewContent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE90, &qword_21CBA37F8);
  return sub_21CB81F64();
}

double sub_21C7EF264@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath(byte_21CBA36F8);
  swift_getKeyPath(aX_26);
  sub_21CB81DB4();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_21C7EF2EC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  swift_getKeyPath(byte_21CBA36F8);
  swift_getKeyPath(aX_26);

  sub_21C7FB8AC(v2, v3, v4);
  return sub_21CB81DC4();
}

uint64_t sub_21C7EF380(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21CB858B4();
  v2[4] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_21C7EF418, v4, v3);
}

uint64_t sub_21C7EF418()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_21C7EF4B4;
  v2 = *(v0 + 16);

  return sub_21C7AA740(v2);
}

uint64_t sub_21C7EF4B4()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21C7EF5D4, v3, v2);
}

uint64_t sub_21C7EF5D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C7EF634()
{
  v1 = type metadata accessor for PMAccount(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v42 - v10;
  v12 = *(v0 + 8);
  v13 = *(v12 + 29);
  if (v13 && !*(v12 + 27))
  {
    v43 = *(v12 + 28);

    sub_21CB81014();
    sub_21CB81014();
    v42[0] = sub_21CB80FF4();
    v42[1] = v27;
    v28 = *(v6 + 8);
    v28(v8, v5);
    v28(v11, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_21CBA15B0;
    v30 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_selectedAccount;
    swift_beginAccess();
    v31 = (*(v2 + 48))(&v12[v30], 1, v1);
    v32 = 0;
    v33 = 0;
    if (!v31)
    {
      sub_21C7FCBD8(&v12[v30], v4, type metadata accessor for PMAccount);
      v32 = PMAccount.effectiveTitle.getter();
      v33 = v34;
      sub_21C719180(v4, type metadata accessor for PMAccount);
    }

    v35 = MEMORY[0x277D837D0];
    *(v29 + 56) = MEMORY[0x277D837D0];
    v36 = sub_21C7C0050();
    if (v33)
    {
      v37 = v32;
    }

    else
    {
      v37 = 0;
    }

    v38 = 0xE000000000000000;
    if (v33)
    {
      v38 = v33;
    }

    *(v29 + 32) = v37;
    *(v29 + 40) = v38;
    *(v29 + 96) = v35;
    *(v29 + 104) = v36;
    v39 = v43;
    *(v29 + 64) = v36;
    *(v29 + 72) = v39;
    *(v29 + 80) = v13;
  }

  else
  {
    sub_21CB81014();
    sub_21CB81004();
    (*(v6 + 8))(v11, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21CBA15B0;
    v15 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_selectedAccount;
    swift_beginAccess();
    v16 = (*(v2 + 48))(&v12[v15], 1, v1);
    v17 = 0;
    v18 = 0;
    if (!v16)
    {
      sub_21C7FCBD8(&v12[v15], v4, type metadata accessor for PMAccount);
      v17 = PMAccount.effectiveTitle.getter();
      v18 = v19;
      sub_21C719180(v4, type metadata accessor for PMAccount);
    }

    v20 = MEMORY[0x277D837D0];
    *(v14 + 56) = MEMORY[0x277D837D0];
    v21 = sub_21C7C0050();
    *(v14 + 64) = v21;
    if (v18)
    {
      v22 = v17;
    }

    else
    {
      v22 = 0;
    }

    v23 = 0xE000000000000000;
    if (v18)
    {
      v24 = v18;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    *(v14 + 32) = v22;
    *(v14 + 40) = v24;
    v26 = *(v12 + 26);
    v25 = *(v12 + 27);
    *(v14 + 96) = v20;
    *(v14 + 104) = v21;
    if (v25)
    {
      v23 = v25;
    }

    else
    {
      v26 = 0;
    }

    *(v14 + 72) = v26;
    *(v14 + 80) = v23;
  }

  v40 = sub_21CB85594();

  return v40;
}

uint64_t sub_21C7EFAC0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v50 - v4;
  v65 = sub_21CB81024();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v61 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB82A04();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMAccountPickerViewContent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v53 = v11;
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v70 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v64 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v62 = &v50 - v15;
  MEMORY[0x28223BE20](v16);
  v69 = &v50 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v50 - v19;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE48, &qword_21CBA3780);
  v71 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v68 = &v50 - v23;
  v54 = type metadata accessor for PMAccountPickerViewContent;
  sub_21C7FCBD8(a1, v12, type metadata accessor for PMAccountPickerViewContent);
  v24 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v25 = swift_allocObject();
  v55 = type metadata accessor for PMAccountPickerViewContent;
  sub_21C7FD754(v12, v25 + v24, type metadata accessor for PMAccountPickerViewContent);
  sub_21CB84DA4();
  sub_21CB829F4();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  v26 = v56;
  sub_21CB84334();
  (*(v57 + 8))(v8, v58);
  v57 = *(v70 + 8);
  v58 = v70 + 8;
  (v57)(v20, v26);
  v52 = a1;
  v27 = v54;
  sub_21C7FCBD8(a1, v12, v54);
  v28 = swift_allocObject();
  sub_21C7FD754(v12, v28 + v24, type metadata accessor for PMAccountPickerViewContent);
  v72 = a1;
  v29 = v20;
  v51 = v20;
  sub_21CB84DA4();
  v30 = v61;
  sub_21CB81014();
  v31 = sub_21CB81004();
  v33 = v32;
  (*(v63 + 8))(v30, v65);
  v73 = v31;
  v74 = v33;
  v34 = v66;
  sub_21CB81EF4();
  v35 = sub_21CB81F14();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  sub_21C7FCBD8(v52, v12, v27);
  v36 = swift_allocObject();
  sub_21C7FD754(v12, v36 + v24, v55);
  sub_21C71F3FC();
  v37 = v69;
  sub_21CB84DC4();
  v38 = *(v71 + 16);
  v39 = v59;
  v40 = v60;
  v38(v59, v68, v60);
  v41 = *(v70 + 16);
  v42 = v62;
  v41(v62, v29, v26);
  v43 = v64;
  v41(v64, v37, v26);
  v44 = v67;
  v38(v67, v39, v40);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE58, &unk_21CBA3788);
  v41(&v44[*(v45 + 48)], v42, v26);
  v41(&v44[*(v45 + 64)], v43, v26);
  v46 = v57;
  (v57)(v69, v26);
  v46(v51, v26);
  v47 = v46;
  v48 = *(v71 + 8);
  v48(v68, v40);
  v47(v43, v26);
  v47(v42, v26);
  return (v48)(v39, v40);
}

uint64_t sub_21C7F02D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21C7F0404(uint64_t a1)
{
  v2 = type metadata accessor for PMAccountPickerViewContent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_21CB858E4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_21C7FCBD8(a1, v5, type metadata accessor for PMAccountPickerViewContent);
  sub_21CB858B4();
  v10 = sub_21CB858A4();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_21C7FD754(v5, v12 + v11, type metadata accessor for PMAccountPickerViewContent);
  sub_21C98B308(0, 0, v8, &unk_21CBA37C8, v12);
}

uint64_t sub_21C7F05E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21CB858B4();
  v4[3] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21C7F067C, v6, v5);
}

uint64_t sub_21C7F067C()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_21C7F0710;

  return sub_21C7A9ECC();
}

uint64_t sub_21C7F0710()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21C74FF00, v3, v2);
}

uint64_t sub_21C7F0830@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v13;
  return result;
}

uint64_t sub_21C7F099C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9[-v3];
  v5 = *(a1 + 8);
  v6 = type metadata accessor for PMAccount(0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_selectedAccount;
  swift_beginAccess();
  sub_21C7AE758(v4, v5 + v7);
  swift_endAccess();
  swift_getKeyPath(byte_21CBA3730);
  swift_getKeyPath(byte_21CBA3798);
  v9[8] = 0;

  return sub_21CB81DC4();
}

uint64_t sub_21C7F0AD0@<X0>(uint64_t a1@<X8>)
{
  sub_21C7F0B2C();
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_21C7F0B2C()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v6 = v5[29];
  if (v6 && !v5[27])
  {
    v13 = v5[28];

    sub_21CB81014();
    sub_21CB81004();
    (*(v2 + 8))(v4, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21CBA0690;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_21C7C0050();
    *(v14 + 32) = v13;
    *(v14 + 40) = v6;
    v12 = sub_21CB85594();
  }

  else
  {
    sub_21CB81014();
    sub_21CB81004();
    (*(v2 + 8))(v4, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_21CBA0690;
    v9 = v5[26];
    v8 = v5[27];
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = sub_21C7C0050();
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = 0xE000000000000000;
    if (v8)
    {
      v11 = v8;
    }

    *(v7 + 32) = v10;
    *(v7 + 40) = v11;

    v12 = sub_21CB85594();
  }

  return v12;
}

uint64_t sub_21C7F0DA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = type metadata accessor for PMAccountPickerViewContent(0);
  v66 = *(v3 - 8);
  v65 = *(v66 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB82FD4();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF28, &qword_21CBA3970);
  v53[1] = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v53 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF18, &qword_21CBA3968);
  MEMORY[0x28223BE20](v55);
  v11 = v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF08, &qword_21CBA3958);
  v13 = *(v12 - 8);
  v60 = v12;
  v61 = v13;
  MEMORY[0x28223BE20](v12);
  v54 = v53 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEF8, &qword_21CBA3948);
  v16 = *(v15 - 8);
  v62 = v15;
  v63 = v16;
  MEMORY[0x28223BE20](v15);
  v57 = v53 - v17;
  sub_21C7F1580(v9);
  type metadata accessor for PMAccountPickerModel(0);
  sub_21C7FD70C(&qword_27CDEB1F0, type metadata accessor for PMAccountPickerModel, &unk_21CBA0758);
  sub_21CB82684();
  swift_getKeyPath(a0_27);
  sub_21CB82694();

  v18 = v73;
  v19 = v74;
  v20 = v75;
  v21 = &v9[*(v7 + 36)];
  *v21 = v72;
  *(v21 + 1) = v18;
  *(v21 + 2) = v19;
  *(v21 + 3) = v20;
  *(v21 + 4) = 0;
  *(v21 + 5) = 0;
  v21[48] = 0;
  *(v21 + 7) = 0;
  *(v21 + 8) = 0;
  v21[72] = 0;
  *(v21 + 73) = 257;
  *(v21 + 10) = 0;
  *(v21 + 11) = 0;
  v69 = 0;

  sub_21CB84D44();
  v22 = v71;
  v21[96] = v70;
  *(v21 + 13) = v22;
  v23 = sub_21CB81F94();
  v25 = v24;
  v27 = v26;

  v21[112] = v23 & 1;
  *(v21 + 15) = v25;
  v21[128] = v27 & 1;
  v28 = *(type metadata accessor for PMSearchable(0) + 48);
  *&v21[v28] = swift_getKeyPath(byte_21CBA39C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v72 = sub_21C7FBF98();
  v73 = v29;
  sub_21C7FBA1C();
  sub_21C71F3FC();
  sub_21CB842F4();
  sub_21C6EA794(v9, &qword_27CDEBF28, &qword_21CBA3970);
  v30 = sub_21C7FC058();
  v31 = v55;
  v32 = &v11[*(v55 + 36)];
  *v32 = v30;
  v32[1] = v33;
  v35 = v58;
  v34 = v59;
  v36 = v56;
  (*(v58 + 104))(v56, *MEMORY[0x277CDDDC0], v59);
  v37 = sub_21C7FB938();

  v38 = v54;
  sub_21CB84684();
  (*(v35 + 8))(v36, v34);
  sub_21C6EA794(v11, &qword_27CDEBF18, &qword_21CBA3968);
  v68 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF10, &qword_21CBA3960);
  v72 = v31;
  v73 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBFA0, &qword_21CBA39A0);
  v42 = sub_21C6EADEC(&qword_27CDEBFA8, &qword_27CDEBFA0, &qword_21CBA39A0, MEMORY[0x277CDDF68]);
  v72 = v41;
  v73 = v42;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v57;
  v45 = v60;
  sub_21CB84894();
  v46 = v38;
  v47 = v45;
  (*(v61 + 8))(v46, v45);
  v48 = v64;
  sub_21C7FCBD8(a1, v64, type metadata accessor for PMAccountPickerViewContent);
  v49 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v50 = swift_allocObject();
  sub_21C7FD754(v48, v50 + v49, type metadata accessor for PMAccountPickerViewContent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF00, &qword_21CBA3950);
  v72 = v47;
  v73 = v39;
  v74 = OpaqueTypeConformance2;
  v75 = v43;
  swift_getOpaqueTypeConformance2();
  sub_21C7FBDD0();
  v51 = v62;
  sub_21CB84564();

  return (*(v63 + 8))(v44, v51);
}

uint64_t sub_21C7F1580@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v3 = sub_21CB836B4();
  v4 = *(v3 - 8);
  v56 = v3;
  v57 = v4;
  MEMORY[0x28223BE20](v3);
  v55 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  MEMORY[0x28223BE20](v53);
  v54 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = v44 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v51);
  v50 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = v44 - v11;
  v12 = type metadata accessor for PMAccountPickerViewContent(0);
  *&v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF48, &qword_21CBA3980);
  MEMORY[0x28223BE20](v14);
  v16 = v44 - v15;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF38, &qword_21CBA3978);
  MEMORY[0x28223BE20](v60);
  v59 = v44 - v17;
  v18 = v2[1];
  *&v47 = *v2;
  v45 = v18;
  v46 = type metadata accessor for PMAccountPickerModel(0);
  sub_21C7FD70C(&qword_27CDEB1F0, type metadata accessor for PMAccountPickerModel, &unk_21CBA0758);
  sub_21CB82684();
  swift_getKeyPath(a0_28);
  sub_21CB82694();

  v65 = v62;
  v66 = v63;
  v67 = v64;
  v61 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0B0, &qword_21CBA3BB0);
  sub_21C7FBD28();
  sub_21C7FC33C();
  sub_21CB83F24();
  v19 = sub_21CB85214();
  v21 = v20;
  v22 = &v16[*(v14 + 36)];
  sub_21C7F3C38(v22);
  v23 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF70, &qword_21CBA3990) + 36));
  *v23 = v19;
  v23[1] = v21;
  sub_21C7FCBD8(v2, v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountPickerViewContent);
  v24 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v25 = swift_allocObject();
  sub_21C7FD754(v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for PMAccountPickerViewContent);
  sub_21C7FBC44();
  v26 = v59;
  sub_21CB84214();

  sub_21C6EA794(v16, &qword_27CDEBF48, &qword_21CBA3980);
  v27 = v45;
  sub_21CB82684();
  swift_getKeyPath(byte_21CBA36F8);
  sub_21CB82694();

  v48 = v62;
  v47 = v63;
  v46 = v64;
  v28 = &v26[*(v60 + 36)];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF88, &qword_21CBA3998);
  v44[1] = v29[9];
  v30 = type metadata accessor for PMAccount(0);
  v31 = *(*(v30 - 8) + 56);
  v32 = v49;
  v31(v49, 1, 1, v30);
  sub_21C6EDBAC(v32, v50, &unk_27CDEBE60, &unk_21CB9FF40);
  swift_retain_n();
  sub_21CB84D44();
  sub_21C6EA794(v32, &unk_27CDEBE60, &unk_21CB9FF40);
  v33 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v34 = v52;
  (*(*(v33 - 8) + 56))(v52, 1, 1, v33);
  v31((v34 + *(v53 + 20)), 1, 1, v30);
  sub_21C7FCBD8(v34, v54, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  sub_21CB84D44();
  sub_21C719180(v34, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  v35 = v29[13];
  v36 = &v28[v29[12]];
  *&v28[v35] = swift_getKeyPath(byte_21CBA3BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  swift_storeEnumTagMultiPayload();
  v37 = &v28[v29[14]];
  v37[8] = 0;
  v38 = v47;
  *v28 = v48;
  *(v28 + 1) = v38;
  *(v28 + 4) = v46;
  v39 = &v28[v29[11]];
  *v39 = sub_21C7FC45C;
  v39[1] = v27;
  *v36 = sub_21C7FC460;
  v36[1] = v27;
  v40 = v55;
  sub_21CB836A4();
  sub_21C7FBB34();
  v41 = v59;
  v42 = v56;
  sub_21CB849F4();
  (*(v57 + 8))(v40, v42);
  return sub_21C6EA794(v41, &qword_27CDEBF38, &qword_21CBA3978);
}

uint64_t sub_21C7F1DC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBFA0, &qword_21CBA39A0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  sub_21C7F1EE4(&v6 - v2);
  v4 = sub_21C6EADEC(&qword_27CDEBFA8, &qword_27CDEBFA0, &qword_21CBA39A0, MEMORY[0x277CDDF68]);
  MEMORY[0x21CF131E0](v3, v0, v4);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21C7F1EE4@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC008, &unk_21CBA3A90);
  MEMORY[0x28223BE20](v35);
  v3 = &v27 - v2;
  v4 = sub_21CB83604();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC010, &qword_21CBAA950);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v30 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC018, &qword_21CBA3AA0);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC020, &qword_21CBA3AA8);
  v11 = *(v10 - 8);
  v27 = v10;
  v28 = v11;
  MEMORY[0x28223BE20](v10);
  v29 = &v27 - v12;
  sub_21C7FA0C8(&v27 - v12);
  sub_21CB85184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC028, &qword_21CBA3AB0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC030, &qword_21CBA3AB8);
  v14 = sub_21C6EADEC(&qword_27CDEC038, &qword_27CDEC030, &qword_21CBA3AB8, MEMORY[0x277CDDB60]);
  v38 = v13;
  v39 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v9;
  sub_21CB851B4();
  sub_21CB835C4();
  v37 = v1;
  type metadata accessor for PMPlatformRoleButton(0);
  sub_21C7FD70C(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton, &unk_21CBA2ED8);
  v16 = v30;
  sub_21CB82194();
  v17 = *(v35 + 48);
  v18 = *(v35 + 64);
  v19 = *(v11 + 16);
  v20 = v29;
  v19(v3, v29, v10);
  v21 = v31;
  v22 = v32;
  v23 = v15;
  (*(v31 + 16))(&v3[v17], v15, v32);
  v25 = v33;
  v24 = v34;
  (*(v33 + 16))(&v3[v18], v16, v34);
  sub_21CB83394();
  (*(v25 + 8))(v16, v24);
  (*(v21 + 8))(v23, v22);
  return (*(v28 + 8))(v20, v27);
}

uint64_t sub_21C7F2364@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBFD0, &unk_21CBA39B0);
  MEMORY[0x28223BE20](v41);
  v40 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBFC0, &qword_21CBA39A8);
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for PMAccount(0);
  v14 = *(v13 - 8);
  *&v15 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a1[1];
  v42 = a2;
  swift_getKeyPath(byte_21CBA39F8, v15);
  swift_getKeyPath(asc_21CBA3A20);
  sub_21CB81DB4();

  v20 = v49[0];
  v49[0] = v18;
  v49[1] = v19;
  v48 = v49;
  sub_21C968D04(sub_21C7AE738, v20, v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21C6EA794(v12, &unk_27CDEBE60, &unk_21CB9FF40);
    v21 = 1;
    v23 = v46;
    v22 = v47;
  }

  else
  {
    sub_21C7FD754(v12, v17, type metadata accessor for PMAccount);
    v24 = v40;
    sub_21C7FD754(v17, v40, type metadata accessor for PMAccount);
    v25 = *(v42 + 8);
    v26 = *(v25 + 32) > 1u;
    KeyPath = swift_getKeyPath(aH_53);
    v28 = v24 + *(v41 + 36);
    *v28 = KeyPath;
    *(v28 + 8) = v26;
    if (*(v25 + 32) == 1)
    {
      v30 = *(v25 + 376);
      v29 = *(v25 + 384);
      v31 = swift_getKeyPath(asc_21CBA3A68);
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      *(v32 + 24) = v29;

      v33 = sub_21C7FC1A0;
    }

    else
    {
      v31 = swift_getKeyPath(asc_21CBA3A68);
      v33 = 0;
      v32 = 0;
    }

    v23 = v46;
    v34 = v24;
    v35 = v44;
    sub_21C716934(v34, v44, &unk_27CDEBFD0, &unk_21CBA39B0);
    v36 = (v35 + *(v23 + 36));
    *v36 = v31;
    v36[1] = v33;
    v36[2] = v32;
    v37 = v43;
    sub_21C716934(v35, v43, &unk_27CDEBFC0, &qword_21CBA39A8);
    v38 = v37;
    v22 = v47;
    sub_21C716934(v38, v47, &unk_27CDEBFC0, &qword_21CBA39A8);
    v21 = 0;
  }

  return (*(v45 + 56))(v22, v21, 1, v23);
}

BOOL sub_21C7F27C8()
{
  v1 = *(v0 + 8);
  swift_getKeyPath(a0_27);
  swift_getKeyPath(byte_21CBA3828);
  sub_21CB81DB4();

  v2 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v2 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return 0;
  }

  if (*(v1 + 32) != 2)
  {
    return 1;
  }

  swift_getKeyPath(byte_21CBA3AE8);
  swift_getKeyPath(byte_21CBA3B10);
  sub_21CB81DB4();

  v4 = *(v5 + 16);

  return v4 != 0;
}

uint64_t sub_21C7F28D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0E0, &qword_21CBA3CC0);
  v84 = *(v3 - 8);
  v85 = v3;
  MEMORY[0x28223BE20](v3);
  v83 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v92 = &v71 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0E8, &qword_21CBA3CC8);
  MEMORY[0x28223BE20](v77);
  v76 = &v71 - v7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0F0, &qword_21CBA3CD0);
  v86 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v75 = &v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0F8, &qword_21CBA3CD8);
  MEMORY[0x28223BE20](v9 - 8);
  v81 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v93 = &v71 - v12;
  v73 = sub_21CB81024();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC100, &qword_21CBA3CE0);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v74 = &v71 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC108, &qword_21CBA3CE8);
  MEMORY[0x28223BE20](v15 - 8);
  v91 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v90 = &v71 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC110, &qword_21CBA3CF0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v71 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v71 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC118, &qword_21CBA3CF8);
  MEMORY[0x28223BE20](v26 - 8);
  v89 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v71 - v29;
  v87 = a1;
  v31 = *(a1 + 8);
  v32 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_savedAccountForHistorySection;
  swift_beginAccess();
  sub_21C6EDBAC(v31 + v32, v25, &unk_27CDEBE60, &unk_21CB9FF40);
  v33 = type metadata accessor for PMAccount(0);
  v34 = 1;
  LODWORD(v32) = (*(*(v33 - 8) + 48))(v25, 1, v33);
  sub_21C6EA794(v25, &unk_27CDEBE60, &unk_21CB9FF40);
  if (v32 != 1 && [objc_opt_self() isSavedAccountHistoryInAutoFillEnabled])
  {
    sub_21C7F3508(v22);
    sub_21C755C04(v22, v30);
    v34 = 0;
  }

  v35 = *(v20 + 56);
  v36 = 1;
  v88 = v30;
  v35(v30, v34, 1, v19);
  v37 = v90;
  v38 = v80;
  v39 = v87;
  v40 = v79;
  v41 = v78;
  if (*(v31 + 256) == 1)
  {
    swift_getKeyPath(aH_55);
    swift_getKeyPath(aH_54);
    sub_21CB81DB4();

    v42 = *(v94 + 16);

    if (v42 || *(v31 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_passkeyNearbyDeviceOptions))
    {
      MEMORY[0x28223BE20](v43);
      v44 = v38;
      v45 = v71;
      sub_21CB81014();
      v46 = sub_21CB81004();
      v48 = v47;
      (*(v72 + 8))(v45, v73);
      v94 = v46;
      v95 = v48;
      sub_21C71F3FC();
      v94 = sub_21CB84054();
      v95 = v49;
      v96 = v50 & 1;
      v97 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC220, &qword_21CBA3D80);
      sub_21C6EADEC(&qword_27CDEC228, &qword_27CDEC220, &qword_21CBA3D80, MEMORY[0x277CE14C0]);
      v52 = v74;
      v38 = v44;
      sub_21CB85034();
      (*(v41 + 32))(v37, v52, v40);
      v36 = 0;
    }
  }

  v53 = 1;
  (*(v41 + 56))(v37, v36, 1, v40);
  v54 = sub_21C7F27C8();
  if (v54)
  {
    MEMORY[0x28223BE20](v54);
    sub_21C7F655C(v39, &v94);
    sub_21C7F6844(v39, v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC140, &unk_21CBA3D10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC1D8, &qword_21CBA3D60);
    sub_21C7FC4F4();
    sub_21C6EADEC(&qword_27CDEC1E0, &qword_27CDEC1D8, &qword_21CBA3D60, MEMORY[0x277CE14C0]);
    sub_21C7FCA10();
    v55 = v75;
    v39 = v87;
    sub_21CB85044();
    (*(v86 + 32))(v93, v55, v38);
    v53 = 0;
  }

  v56 = v93;
  v57 = (*(v86 + 56))(v93, v53, 1, v38);
  MEMORY[0x28223BE20](v57);
  sub_21C7F97DC(v39, &v94);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC120, &qword_21CBA3D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC128, &qword_21CBA3D08);
  sub_21C7FC470();
  sub_21C7FC5F4();
  v58 = v92;
  sub_21CB85034();
  v59 = v89;
  sub_21C6EDBAC(v88, v89, &qword_27CDEC118, &qword_21CBA3CF8);
  v60 = v91;
  sub_21C6EDBAC(v37, v91, &qword_27CDEC108, &qword_21CBA3CE8);
  v61 = v81;
  sub_21C6EDBAC(v56, v81, &qword_27CDEC0F8, &qword_21CBA3CD8);
  v63 = v83;
  v62 = v84;
  v64 = *(v84 + 16);
  v65 = v58;
  v66 = v85;
  v64(v83, v65, v85);
  v67 = v82;
  sub_21C6EDBAC(v59, v82, &qword_27CDEC118, &qword_21CBA3CF8);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC1D0, &qword_21CBA3D58);
  sub_21C6EDBAC(v60, v67 + v68[12], &qword_27CDEC108, &qword_21CBA3CE8);
  sub_21C6EDBAC(v61, v67 + v68[16], &qword_27CDEC0F8, &qword_21CBA3CD8);
  v64((v67 + v68[20]), v63, v66);
  v69 = *(v62 + 8);
  v69(v92, v66);
  sub_21C6EA794(v93, &qword_27CDEC0F8, &qword_21CBA3CD8);
  sub_21C6EA794(v90, &qword_27CDEC108, &qword_21CBA3CE8);
  sub_21C6EA794(v88, &qword_27CDEC118, &qword_21CBA3CF8);
  v69(v63, v66);
  sub_21C6EA794(v61, &qword_27CDEC0F8, &qword_21CBA3CD8);
  sub_21C6EA794(v91, &qword_27CDEC108, &qword_21CBA3CE8);
  return sub_21C6EA794(v89, &qword_27CDEC118, &qword_21CBA3CF8);
}

uint64_t sub_21C7F3508@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = sub_21CB81024();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x28223BE20](v2);
  v51 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC230, &qword_21CBA3D88);
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = &v49 - v5;
  v6 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for PMAccount(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v1;
  v16 = *(v1 + 8);
  v17 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_savedAccountForHistorySection;
  swift_beginAccess();
  sub_21C6EDBAC(v16 + v17, v11, &unk_27CDEBE60, &unk_21CB9FF40);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21C6EA794(v11, &unk_27CDEBE60, &unk_21CB9FF40);
    return (*(v55 + 56))(v57, 1, 1, v56);
  }

  sub_21C7FD754(v11, v15, type metadata accessor for PMAccount);
  sub_21C7FCBD8(&v15[*(v12 + 24)], v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719180(v8, type metadata accessor for PMAccount.Storage);
    sub_21C719180(v15, type metadata accessor for PMAccount);
    return (*(v55 + 56))(v57, 1, 1, v56);
  }

  v19 = *v8;
  v20 = [*v8 historyItems];

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC238, &qword_21CBA3D90);
  v22 = sub_21CB85824();

  v23 = v22 >> 62;
  if (v22 >> 62)
  {
    v48 = sub_21CB85FA4();
    if (v48 >= 2)
    {
      v25 = 2;
    }

    else
    {
      v25 = v48;
    }

    if ((v48 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v24 = v48;
    result = sub_21CB85FA4();
    if (result < 0)
    {
LABEL_40:
      __break(1u);
      return result;
    }

    result = sub_21CB85FA4();
    if (result >= v25)
    {
      goto LABEL_11;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v24 >= 2)
  {
    v25 = 2;
  }

  else
  {
    v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v24 < v25)
  {
    goto LABEL_39;
  }

LABEL_11:
  if ((v22 & 0xC000000000000001) == 0)
  {

    if (!v23)
    {
      goto LABEL_16;
    }

LABEL_19:

    v23 = sub_21CB861F4();
    v21 = v29;
    v25 = v30;
    if (v30)
    {
      goto LABEL_21;
    }

LABEL_20:
    sub_21CAC8CC4(v23, v28, v21, v25);
    v32 = v31;
LABEL_27:
    v35 = swift_unknownObjectRelease();
    goto LABEL_28;
  }

  if (v24)
  {
    v26 = 0;
    do
    {
      v27 = v26 + 1;
      sub_21CB860C4();
      v26 = v27;
    }

    while (v25 != v27);
  }

  if (v23)
  {
    goto LABEL_19;
  }

LABEL_16:
  v21 = 0;
  v23 = v22 & 0xFFFFFFFFFFFFFF8;
  v28 = (v22 & 0xFFFFFFFFFFFFFF8) + 32;
  v25 = (2 * v25) | 1;
  if ((v25 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  v17 = v28;
  sub_21CB86364();
  swift_unknownObjectRetain_n();
  v33 = swift_dynamicCastClass();
  if (!v33)
  {
    swift_unknownObjectRelease();
    v33 = MEMORY[0x277D84F90];
  }

  v34 = *(v33 + 16);

  if (__OFSUB__(v25 >> 1, v21))
  {
    goto LABEL_35;
  }

  if (v34 != (v25 >> 1) - v21)
  {
LABEL_36:
    swift_unknownObjectRelease();
    v28 = v17;
    goto LABEL_20;
  }

  v32 = swift_dynamicCastClass();
  v35 = swift_unknownObjectRelease();
  if (!v32)
  {
    v32 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

LABEL_28:
  MEMORY[0x28223BE20](v35);
  v36 = v51;
  *(&v49 - 4) = v50;
  *(&v49 - 3) = v15;
  *(&v49 - 2) = v32;
  *(&v49 - 1) = v22;
  sub_21CB81014();
  v37 = sub_21CB81004();
  v39 = v38;
  (*(v52 + 8))(v36, v53);
  v58 = v37;
  v59 = v39;
  sub_21C71F3FC();
  v58 = sub_21CB84054();
  v59 = v40;
  v60 = v41 & 1;
  v61 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC240, &qword_21CBA3D98);
  sub_21C6EADEC(&qword_27CDEC248, &qword_27CDEC240, &qword_21CBA3D98, MEMORY[0x277CE14C0]);
  v43 = v54;
  sub_21CB85034();

  v44 = v55;
  v45 = v57;
  v46 = v43;
  v47 = v56;
  (*(v55 + 32))(v57, v46, v56);
  (*(v44 + 56))(v45, 0, 1, v47);
  return sub_21C719180(v15, type metadata accessor for PMAccount);
}

uint64_t sub_21C7F3C38@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D8, &qword_21CBA3C70);
  v9 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  if (sub_21C7F3DE8())
  {
    swift_getKeyPath(a0_27);
    swift_getKeyPath(byte_21CBA3828);
    sub_21CB81DB4();

    sub_21CB83784();

    (*(v9 + 32))(a2, v5, v3);
    return (*(v9 + 56))(a2, 0, 1, v3);
  }

  else
  {
    v7 = *(v9 + 56);

    return v7(a2, 1, 1, v3);
  }
}

BOOL sub_21C7F3DE8()
{
  swift_getKeyPath(a0_27);
  swift_getKeyPath(byte_21CBA3828);
  sub_21CB81DB4();

  v0 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v0 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v0)
  {
    return 0;
  }

  swift_getKeyPath(aH_56);
  swift_getKeyPath(aH_57);
  sub_21CB81DB4();

  v1 = *(v3 + 16);

  return v1 == 0;
}

void sub_21C7F3EDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v27 - v5;
  v7 = sub_21C7C6E04(a1);
  v10 = v7;
  v11 = v8;
  switch(v9)
  {
    case 0u:
      sub_21C7A904C(v7, v8);
      v18 = v10;
      v19 = v11;
      v20 = 0;
LABEL_13:

      sub_21C7AE5A0(v18, v19, v20);
      return;
    case 0xFFu:
      return;
    case 3u:
      v12 = sub_21CAAA050();
      if (v13)
      {
        v14 = v12;
        v15 = v13;
        v16 = *(*(a2 + 8) + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_didSelectHistoryItem);
        sub_21C7FCBD8(v10 + OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_account, v6, type metadata accessor for PMAccount);
        v17 = type metadata accessor for PMAccount(0);
        (*(*(v17 - 8) + 56))(v6, 0, 1, v17);

        v16(v6, v14, v15);

        sub_21C7AE5A0(v10, v11, 3u);

        sub_21C6EA794(v6, &unk_27CDEBE60, &unk_21CB9FF40);
        return;
      }

      v18 = v10;
      v19 = v11;
      v20 = 3;
      goto LABEL_13;
  }

  if (*(*(a2 + 8) + 32) == 1)
  {
    v21 = v9;
    if (v9 >= 3u)
    {
      v22 = *&v7[OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_account];
      v23 = *&v7[OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_account + 8];
    }

    else
    {
      sub_21C79B008(v7, v8, v9);
      v22 = v10;
      v23 = v11;
    }

    swift_getKeyPath(byte_21CBA3C28);
    swift_getKeyPath(byte_21CBA3C50);
    v27[0] = v22;
    v27[1] = v23;

    sub_21CB81DC4();
    sub_21C7AE5A0(v10, v11, v21);
  }

  else
  {
    v24 = v9;
    if (v9 >= 3u)
    {
      v25 = *&v7[OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_account];
      v26 = *&v7[OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_account + 8];
    }

    else
    {
      sub_21C79B008(v7, v8, v9);
      v25 = v10;
      v26 = v11;
    }

    sub_21C7A8470(v25, v26);
    sub_21C7AE5A0(v10, v11, v24);
  }
}

uint64_t sub_21C7F421C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath(byte_21CBA3C28);
  swift_getKeyPath(byte_21CBA3C50);

  return sub_21CB81DC4();
}

uint64_t sub_21C7F42A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v69 = a2;
  v3 = sub_21CB81024();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v54 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x28223BE20](v5);
  v57 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B8, &qword_21CBA3EB0);
  MEMORY[0x28223BE20](v7 - 8);
  v68 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = &v52 - v10;
  v11 = type metadata accessor for PMAccountPickerViewContent(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2C0, &unk_21CBA3EB8);
  v64 = *(v14 - 8);
  v65 = v14;
  MEMORY[0x28223BE20](v14);
  v63 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v52 - v18;
  v60 = *(a1 + 8);
  swift_getKeyPath(aH_55, v17);
  swift_getKeyPath(aH_54);
  sub_21CB81DB4();

  v74 = v70;
  v58 = a1;
  sub_21C7FCBD8(a1, &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountPickerViewContent);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v52 = v13;
  v21 = swift_allocObject();
  v53 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7FD754(v53, v21 + v20, type metadata accessor for PMAccountPickerViewContent);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC268, qword_21CBA3DB8);
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730, MEMORY[0x277D83980]);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC170, &qword_21CB9E5D8);
  v23 = type metadata accessor for PMAccountPickerRow(255);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC178, &unk_21CBA3D30);
  v25 = sub_21C7FD70C(&qword_27CDEC180, type metadata accessor for PMAccountPickerRow, &unk_21CBA3080);
  v26 = sub_21C7FC81C();
  v70 = v23;
  v71 = v24;
  v72 = v25;
  v73 = v26;
  v27 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = sub_21C7FBD28();
  v70 = v22;
  v71 = &type metadata for PMAccountPickerRow.RowTag;
  v72 = OpaqueTypeConformance2;
  v73 = v29;
  swift_getOpaqueTypeConformance2();
  sub_21C7FD70C(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  v62 = v19;
  sub_21CB84FF4();
  if (*(v60 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_passkeyNearbyDeviceOptions))
  {
    v30 = v54;
    sub_21CB81014();
    v31 = sub_21CB81004();
    v33 = v32;
    (*(v55 + 8))(v30, v56);
    v70 = v31;
    v71 = v33;
    v34 = v53;
    sub_21C7FCBD8(v58, v53, type metadata accessor for PMAccountPickerViewContent);
    v35 = swift_allocObject();
    sub_21C7FD754(v34, v35 + v20, type metadata accessor for PMAccountPickerViewContent);
    sub_21C71F3FC();
    v36 = v57;
    sub_21CB84DE4();
    v38 = v66;
    v37 = v67;
    v39 = v61;
    (*(v66 + 32))(v61, v36, v67);
    v27 = 0;
    v40 = v37;
    v41 = v38;
  }

  else
  {
    v41 = v66;
    v40 = v67;
    v39 = v61;
  }

  (*(v41 + 56))(v39, v27, 1, v40);
  v43 = v63;
  v42 = v64;
  v44 = *(v64 + 16);
  v45 = v62;
  v46 = v65;
  v44(v63, v62, v65);
  v47 = v68;
  sub_21C6EDBAC(v39, v68, &qword_27CDEC2B8, &qword_21CBA3EB0);
  v48 = v69;
  v44(v69, v43, v46);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2E0, &qword_21CBA3EC8);
  sub_21C6EDBAC(v47, &v48[*(v49 + 48)], &qword_27CDEC2B8, &qword_21CBA3EB0);
  sub_21C6EA794(v39, &qword_27CDEC2B8, &qword_21CBA3EB0);
  v50 = *(v42 + 8);
  v50(v45, v46);
  sub_21C6EA794(v47, &qword_27CDEC2B8, &qword_21CBA3EB0);
  return (v50)(v43, v46);
}

uint64_t sub_21C7F4A58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v51 = a3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC170, &qword_21CB9E5D8);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v42 - v4;
  v5 = sub_21CB85C04();
  v45 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3B0, &unk_21CBA1A50);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  MEMORY[0x28223BE20](v16 - 8);
  v44 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - v22;
  v24 = *(type metadata accessor for PMAccount(0) + 24);
  v50 = a1;
  sub_21C7FCBD8(a1 + v24, v15, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7FD754(v15, v12, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v12[*(v10 + 64)], v23, &unk_27CDEC2F0, &unk_21CBA1660);
    sub_21C719180(v12, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v25 = *v15;
    sub_21CB85C14();
  }

  sub_21CB85BE4();
  v26 = v45;
  (*(v45 + 56))(v20, 0, 1, v5);
  v27 = *(v7 + 48);
  sub_21C6EDBAC(v23, v9, &unk_27CDEC2F0, &unk_21CBA1660);
  sub_21C6EDBAC(v20, &v9[v27], &unk_27CDEC2F0, &unk_21CBA1660);
  v28 = *(v26 + 48);
  if (v28(v9, 1, v5) == 1)
  {
    sub_21C6EA794(v20, &unk_27CDEC2F0, &unk_21CBA1660);
    sub_21C6EA794(v23, &unk_27CDEC2F0, &unk_21CBA1660);
    if (v28(&v9[v27], 1, v5) == 1)
    {
      sub_21C6EA794(v9, &unk_27CDEC2F0, &unk_21CBA1660);
      v29 = 2;
      goto LABEL_13;
    }

LABEL_9:
    sub_21C6EA794(v9, &qword_27CDEB3B0, &unk_21CBA1A50);
    v29 = 0;
    goto LABEL_13;
  }

  v30 = v44;
  sub_21C6EDBAC(v9, v44, &unk_27CDEC2F0, &unk_21CBA1660);
  if (v28(&v9[v27], 1, v5) == 1)
  {
    sub_21C6EA794(v20, &unk_27CDEC2F0, &unk_21CBA1660);
    sub_21C6EA794(v23, &unk_27CDEC2F0, &unk_21CBA1660);
    (*(v26 + 8))(v30, v5);
    goto LABEL_9;
  }

  v31 = v43;
  (*(v26 + 32))(v43, &v9[v27], v5);
  sub_21C7FD70C(&qword_27CDEB3B8, MEMORY[0x277D49960], MEMORY[0x277D49970]);
  v32 = v30;
  v33 = sub_21CB85574();
  v34 = *(v26 + 8);
  v34(v31, v5);
  sub_21C6EA794(v20, &unk_27CDEC2F0, &unk_21CBA1660);
  sub_21C6EA794(v23, &unk_27CDEC2F0, &unk_21CBA1660);
  v34(v32, v5);
  sub_21C6EA794(v9, &unk_27CDEC2F0, &unk_21CBA1660);
  if (v33)
  {
    v29 = 2;
  }

  else
  {
    v29 = 0;
  }

LABEL_13:
  v52 = 1;
  v53 = 0u;
  v54 = 0u;
  v55 = v29;
  v35 = v46;
  v36 = v50;
  sub_21C7F50F0(v50, &v52, v46);
  v38 = *v36;
  v37 = v36[1];
  v39 = v51;
  (*(v47 + 32))(v51, v35, v49);
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEA4D0, &unk_21CB9E5E0) + 36);
  *v40 = v38;
  *(v40 + 8) = v37;
  *(v40 + 16) = 256;
}

uint64_t sub_21C7F50F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v6 = *a2;
  v7 = *(a2 + 3);
  v40 = *(a2 + 1);
  v41 = v7;
  v8 = *(a2 + 40);
  v9 = type metadata accessor for PMAccount(0);
  v36 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v37 = v10;
  v38 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMAccountPickerViewContent(0);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v32 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMAccountPickerRow(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v14.n128_u64[1] == 2)
  {
    sub_21C7F9360(a1, &v43);
    v34 = v46;
    v40 = v44;
    v41 = v45;
    v33 = v43;
  }

  else
  {
    v34 = v8;
    v33 = v6;
  }

  sub_21C7FCBD8(a1, v16, type metadata accessor for PMAccount);
  swift_getKeyPath(a0_27);
  swift_getKeyPath(byte_21CBA3828);
  sub_21C6EDBAC(a2, v42, &qword_27CDEC2A8, &qword_21CBA3E70);
  sub_21CB81DB4();

  v17 = v42[0];
  v31 = v42[1];
  v18 = v32;
  sub_21C7FCBD8(v3, v32, type metadata accessor for PMAccountPickerViewContent);
  v19 = v38;
  sub_21C7FCBD8(a1, v38, type metadata accessor for PMAccount);
  v20 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v21 = (v12 + *(v36 + 80) + v20) & ~*(v36 + 80);
  v22 = swift_allocObject();
  sub_21C7FD754(v18, v22 + v20, type metadata accessor for PMAccountPickerViewContent);
  v23 = sub_21C7FD754(v19, v22 + v21, type metadata accessor for PMAccount);
  v24 = &v16[v13[5]];
  *v24 = sub_21C7FCDFC;
  v24[1] = v22;
  v25 = &v16[v13[6]];
  *v25 = v33 & 1;
  v26 = v40;
  *(v25 + 24) = v41;
  *(v25 + 8) = v26;
  v25[40] = v34;
  v27 = &v16[v13[7]];
  v28 = v31;
  *v27 = v17;
  *(v27 + 1) = v28;
  MEMORY[0x28223BE20](v23);
  *(&v30 - 2) = a1;
  *(&v30 - 1) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC178, &unk_21CBA3D30);
  sub_21C7FD70C(&qword_27CDEC180, type metadata accessor for PMAccountPickerRow, &unk_21CBA3080);
  sub_21C7FC81C();
  sub_21CB84204();
  return sub_21C719180(v16, type metadata accessor for PMAccountPickerRow);
}

void sub_21C7F5570(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_passkeyNearbyDeviceOptions);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_authenticationServicesAgentProxy);
    v6[4] = sub_21C7FD704;
    v6[5] = v1;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_21C7ED534;
    v6[3] = &block_descriptor_194;
    v4 = _Block_copy(v6);
    v5 = v2;

    [v3 userSelectedAutoFillNearbyDevice:v5 completionHandler:v4];
    _Block_release(v4);
  }
}

uint64_t sub_21C7F5670@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x28223BE20](v3);
  v69 = v62 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC310, &unk_21CBA3F10);
  v79 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v67 = v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC318, &qword_21CBB26D0);
  MEMORY[0x28223BE20](v6 - 8);
  v77 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = v62 - v9;
  MEMORY[0x28223BE20](v10);
  v81 = v62 - v11;
  MEMORY[0x28223BE20](v12);
  v82 = v62 - v13;
  v66 = type metadata accessor for PMAccountPickerViewContent(0);
  v14 = *(v66 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v66);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2C0, &unk_21CBA3EB8);
  v74 = *(v16 - 8);
  v75 = v16;
  MEMORY[0x28223BE20](v16);
  v73 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v62 - v19;
  v87 = sub_21C7A7388();
  v68 = a1;
  sub_21C7FCBD8(a1, v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountPickerViewContent);
  v21 = *(v14 + 80);
  v22 = (v21 + 16) & ~v21;
  v64 = v15;
  v62[1] = v21;
  v23 = swift_allocObject();
  v63 = v22;
  v65 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7FD754(v65, v23 + v22, type metadata accessor for PMAccountPickerViewContent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC268, qword_21CBA3DB8);
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730, MEMORY[0x277D83980]);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC170, &qword_21CB9E5D8);
  v25 = type metadata accessor for PMAccountPickerRow(255);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC178, &unk_21CBA3D30);
  v27 = sub_21C7FD70C(&qword_27CDEC180, type metadata accessor for PMAccountPickerRow, &unk_21CBA3080);
  v28 = sub_21C7FC81C();
  v83 = v25;
  v84 = v26;
  v29 = v72;
  v85 = v27;
  v86 = v28;
  v30 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_21C7FBD28();
  v83 = v24;
  v84 = &type metadata for PMAccountPickerRow.RowTag;
  v85 = OpaqueTypeConformance2;
  v86 = v32;
  swift_getOpaqueTypeConformance2();
  sub_21C7FD70C(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  v80 = v20;
  sub_21CB84FF4();
  if (sub_21C7A9BB0())
  {
    v33 = v65;
    sub_21C7FCBD8(v68, v65, type metadata accessor for PMAccountPickerViewContent);
    v34 = v63;
    v35 = swift_allocObject();
    sub_21C7FD754(v33, v35 + v34, type metadata accessor for PMAccountPickerViewContent);
    v36 = v69;
    sub_21CB84DA4();
    v83 = 0xD000000000000012;
    v84 = 0x800000021CB8F740;
    sub_21CB852C4();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    v37 = v67;
    v38 = v71;
    sub_21CB845E4();
    (*(v70 + 8))(v36, v38);
    (*(v79 + 32))(v82, v37, v29);
    v30 = 0;
  }

  v39 = *(v79 + 56);
  v40 = 1;
  v39(v82, v30, 1, v29);
  swift_getKeyPath(a0_27);
  swift_getKeyPath(byte_21CBA3828);
  sub_21CB81DB4();

  v42 = v83;
  v41 = v84;

  v43 = (v41 >> 56) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v43 = v42 & 0xFFFFFFFFFFFFLL;
  }

  v44 = v81;
  v45 = v29;
  if (!v43 && [objc_opt_self() shouldAllowAddingNewPasswords])
  {
    v46 = v65;
    sub_21C7FCBD8(v68, v65, type metadata accessor for PMAccountPickerViewContent);
    v47 = v63;
    v48 = swift_allocObject();
    sub_21C7FD754(v46, v48 + v47, type metadata accessor for PMAccountPickerViewContent);
    v49 = v69;
    sub_21CB84DA4();
    v83 = 0x756F636341646461;
    v84 = 0xEA0000000000746ELL;
    sub_21CB852C4();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    v50 = v67;
    v51 = v71;
    sub_21CB845E4();
    (*(v70 + 8))(v49, v51);
    (*(v79 + 32))(v44, v50, v45);
    v40 = 0;
  }

  v39(v44, v40, 1, v45);
  v52 = v73;
  v53 = v74;
  v54 = *(v74 + 16);
  v55 = v75;
  v54(v73, v80, v75);
  v56 = v76;
  sub_21C6EDBAC(v82, v76, &qword_27CDEC318, &qword_21CBB26D0);
  v57 = v77;
  sub_21C6EDBAC(v44, v77, &qword_27CDEC318, &qword_21CBB26D0);
  v58 = v78;
  v54(v78, v52, v55);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC320, &qword_21CBA3F20);
  sub_21C6EDBAC(v56, &v58[*(v59 + 48)], &qword_27CDEC318, &qword_21CBB26D0);
  sub_21C6EDBAC(v57, &v58[*(v59 + 64)], &qword_27CDEC318, &qword_21CBB26D0);
  sub_21C6EA794(v81, &qword_27CDEC318, &qword_21CBB26D0);
  sub_21C6EA794(v82, &qword_27CDEC318, &qword_21CBB26D0);
  v60 = *(v53 + 8);
  v60(v80, v55);
  sub_21C6EA794(v57, &qword_27CDEC318, &qword_21CBB26D0);
  sub_21C6EA794(v56, &qword_27CDEC318, &qword_21CBB26D0);
  return (v60)(v52, v55);
}

uint64_t sub_21C7F6148@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC170, &qword_21CB9E5D8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v12[0] = xmmword_21CBA3540;
  v12[1] = xmmword_21CBA3550;
  v13 = 1;
  v14 = 0;
  sub_21C7F50F0(a1, v12, v12 - v6);
  v9 = *a1;
  v8 = a1[1];
  (*(v5 + 32))(a2, v7, v4);
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEA4D0, &unk_21CB9E5E0) + 36);
  *v10 = v9;
  *(v10 + 8) = v8;
  *(v10 + 16) = 257;
}

uint64_t sub_21C7F6290(uint64_t a1)
{
  swift_getKeyPath(aH_52);
  swift_getKeyPath(byte_21CBA38B0);

  return sub_21CB81DC4();
}

uint64_t sub_21C7F6304@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21C7F6430@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21C7F655C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v30 - v10;
  v12 = *(a1 + 8);
  if (*(v12 + 256) == 1 && ((swift_getKeyPath(aH_55, v9), swift_getKeyPath(aH_54), sub_21CB81DB4(), , , v13 = *(v35 + 16), , v13) || *(v12 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_passkeyNearbyDeviceOptions)))
  {
    sub_21CB81014();
    sub_21CB81014();
    v14 = sub_21CB80FF4();
    v16 = v15;
    v17 = *(v5 + 8);
    v17(v7, v4);
    v17(v11, v4);
    *&v35 = v14;
    *(&v35 + 1) = v16;
    sub_21C71F3FC();
    v30 = sub_21CB84054();
    v31 = v18;
    v32 = v19 & 1;
    v33 = v20;
    v34 = 0;
  }

  else
  {
    swift_getKeyPath(byte_21CBA3AE8);
    swift_getKeyPath(byte_21CBA3B10);
    sub_21CB81DB4();

    v21 = *(v35 + 16);

    if (!v21)
    {
      v28 = 0uLL;
      v29 = -1;
      v27 = 0uLL;
      goto LABEL_9;
    }

    v23 = *(v12 + 128);
    *&v35 = *(v12 + 120);
    *(&v35 + 1) = v23;
    sub_21C71F3FC();

    v30 = sub_21CB84054();
    v31 = v25;
    v32 = v24 & 1;
    v33 = v26;
    v34 = 1;
  }

  result = sub_21CB83494();
  v27 = v36;
  v28 = v35;
  v29 = v37;
LABEL_9:
  *a2 = v28;
  *(a2 + 16) = v27;
  *(a2 + 32) = v29;
  return result;
}

uint64_t sub_21C7F6844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = type metadata accessor for PMAccountPickerViewContent(0);
  v76 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v75 = v4;
  v77 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC208, &qword_21CBA3D70);
  v87 = *(v5 - 8);
  v88 = v5;
  MEMORY[0x28223BE20](v5);
  v78 = v70 - v6;
  v86 = sub_21CB80964();
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_21CB80974();
  v79 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB80994();
  MEMORY[0x28223BE20](v9 - 8);
  v81 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v11 - 8);
  v90 = v70 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC308, &qword_21CBA3ED8);
  MEMORY[0x28223BE20](v13 - 8);
  v83 = v70 - v14;
  v91 = sub_21CB809E4();
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v16 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v70 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC1F8, &qword_21CBA3D68);
  v92 = *(v20 - 8);
  v93 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = v70 - v21;
  v23 = sub_21CB81024();
  v24 = *(v23 - 8);
  *&v25 = MEMORY[0x28223BE20](v23).n128_u64[0];
  v27 = v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  swift_getKeyPath(a0_27, v25);
  swift_getKeyPath(byte_21CBA3828);
  sub_21CB81DB4();

  v30 = v95;
  v29 = v96;

  v31 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v31 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (v31 || (v71 = v16, v32 = v90, v73 = v19, v33 = v89, v74 = v22, v34 = v91, v72 = v28, v35 = [objc_opt_self() mainBundle], v36 = objc_msgSend(v35, sel_safari_isPasswordsAppBundle), v35, (v36 & 1) != 0))
  {
    v37 = 1;
    v38 = v94;
  }

  else
  {
    sub_21CB81014();
    sub_21CB81004();
    v70[1] = v40;
    (*(v24 + 8))(v27, v23);
    v41 = sub_21CB80BE4();
    (*(*(v41 - 8) + 56))(v32, 1, 1, v41);
    (*(v79 + 104))(v80, *MEMORY[0x277CC8BB0], v82);
    (*(v84 + 104))(v85, *MEMORY[0x277CC8B98], v86);
    sub_21CB80984();
    v42 = v83;
    sub_21CB809D4();
    v43 = v33;
    (*(v33 + 56))(v42, 0, 1, v34);
    v44 = v73;
    (*(v33 + 32))(v73, v42, v34);
    (*(v33 + 16))(v71, v44, v34);
    v45 = sub_21CB84044();
    v47 = v46;
    LOBYTE(v44) = v48;
    sub_21CB84B34();
    v49 = sub_21CB83FB4();
    v51 = v50;
    v53 = v52;

    sub_21C74A72C(v45, v47, v44 & 1);

    sub_21CB83EB4();
    v54 = sub_21CB84024();
    v56 = v55;
    v58 = v57;
    v60 = v59;

    sub_21C74A72C(v49, v51, v53 & 1);

    KeyPath = swift_getKeyPath(a0_29);
    v62 = v77;
    sub_21C7FCBD8(v72, v77, type metadata accessor for PMAccountPickerViewContent);
    v63 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v64 = swift_allocObject();
    sub_21C7FD754(v62, v64 + v63, type metadata accessor for PMAccountPickerViewContent);
    v65 = v88;
    v66 = v78;
    v67 = &v78[*(v88 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC218, &qword_21CBA3D78);
    sub_21CB82474();
    (*(v43 + 8))(v73, v91);
    *v67 = KeyPath;
    *v66 = v54;
    *(v66 + 8) = v56;
    *(v66 + 16) = v58 & 1;
    *(v66 + 24) = v60;
    v68 = v74;
    sub_21C716934(v66, v74, &qword_27CDEC208, &qword_21CBA3D70);
    (*(v87 + 56))(v68, 0, 1, v65);
    v69 = v94;
    sub_21C716934(v68, v94, &qword_27CDEC1F8, &qword_21CBA3D68);
    v38 = v69;
    v37 = 0;
  }

  return (*(v92 + 56))(v38, v37, 1, v93);
}

uint64_t sub_21C7F7224()
{
  v0 = sub_21CB80BE4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB82484();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMAccountPickerViewContent(0);
  sub_21C95B2F0(v7);
  v8 = [objc_opt_self() passwordManagerURL];
  sub_21CB80B94();

  sub_21CB82454();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return sub_21CB82464();
}

uint64_t sub_21C7F73E0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v101 = a4;
  v100 = a3;
  v107 = a5;
  v89 = sub_21CB81024();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = v85 - v8;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC250, &qword_21CBA3DA0);
  v106 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v94 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v93 = v85 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC258, &qword_21CBA3DA8);
  MEMORY[0x28223BE20](v12 - 8);
  v115 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v114 = v85 - v15;
  v16 = type metadata accessor for PMAccount(0);
  v99 = *(v16 - 8);
  v108 = *(v99 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v109 = v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PMAccountPickerViewContent(0);
  v98 = *(v18 - 8);
  v19 = *(v98 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC260, &qword_21CBA3DB0);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v116 = v85 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC170, &qword_21CB9E5D8);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v85 - v25;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC268, qword_21CBA3DB8);
  v102 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = v85 - v29;
  memset(v125, 0, sizeof(v125));
  v126 = 2;
  v127 = 0;
  sub_21C7F50F0(a2, v125, v26);
  v31 = *a2;
  v32 = a2[1];
  (*(v24 + 32))(v30, v26, v23);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEA4D0, &unk_21CB9E5E0) + 36);
  v111 = v30;
  v34 = &v30[v33];
  *v34 = v31;
  *(v34 + 1) = v32;
  *(v34 + 8) = 257;
  v117 = v100;
  KeyPath = swift_getKeyPath(asc_21CBA3DD0);
  v91 = a1;
  sub_21C7FCBD8(a1, v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountPickerViewContent);
  v90 = a2;
  v35 = v109;
  sub_21C7FCBD8(a2, v109, type metadata accessor for PMAccount);
  v36 = *(v98 + 80);
  v37 = (v36 + 16) & ~v36;
  v38 = *(v99 + 80);
  v98 = v19;
  v39 = (v19 + v38 + v37) & ~v38;
  v86 = v36;
  v85[0] = v38;
  v85[1] = v36 | v38;
  v40 = swift_allocObject();
  v99 = v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7FD754(v99, v40 + v37, type metadata accessor for PMAccountPickerViewContent);
  sub_21C7FD754(v35, v40 + v39, type metadata accessor for PMAccount);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4160, &qword_21CBA3DF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC270, &qword_21CBA3E00);
  sub_21C6EADEC(&qword_27CDEC278, &qword_27CDF4160, &qword_21CBA3DF8, MEMORY[0x277D83980]);
  sub_21C7FD70C(&qword_27CDEC280, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v41 = type metadata accessor for PMAccountPickerRow(255);
  v42 = sub_21C7FD70C(&qword_27CDEC180, type metadata accessor for PMAccountPickerRow, &unk_21CBA3080);
  v43 = sub_21C7FBD28();
  *&v118 = v41;
  *(&v118 + 1) = &type metadata for PMAccountPickerRow.RowTag;
  *&v119 = v42;
  *(&v119 + 1) = v43;
  swift_getOpaqueTypeConformance2();
  sub_21CB84FD4();
  if (v101 >> 62)
  {
    v44 = sub_21CB85FA4();
  }

  else
  {
    v44 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = 1;
  v46 = v114;
  v47 = v110;
  if (v44 >= 3)
  {
    v48 = v86;
    v49 = v85[0];
    v50 = v87;
    sub_21CB81014();
    v51 = sub_21CB81004();
    v53 = v52;
    (*(v88 + 8))(v50, v89);
    *&v118 = v51;
    *(&v118 + 1) = v53;
    v54 = v109;
    sub_21C7FCBD8(v90, v109, type metadata accessor for PMAccount);
    v55 = v99;
    sub_21C7FCBD8(v91, v99, type metadata accessor for PMAccountPickerViewContent);
    v56 = (v49 + 16) & ~v49;
    v57 = (v108 + v48 + v56) & ~v48;
    v58 = swift_allocObject();
    sub_21C7FD754(v54, v58 + v56, type metadata accessor for PMAccount);
    sub_21C7FD754(v55, v58 + v57, type metadata accessor for PMAccountPickerViewContent);
    sub_21C71F3FC();
    v59 = v92;
    sub_21CB84DE4();
    sub_21CB85224();
    sub_21CB82AC4();
    v60 = v94;
    v61 = v59;
    v47 = v110;
    (*(v95 + 32))(v94, v61, v96);
    v62 = &v60[*(v47 + 36)];
    v63 = v123;
    *(v62 + 4) = v122;
    *(v62 + 5) = v63;
    *(v62 + 6) = v124;
    v64 = v119;
    *v62 = v118;
    *(v62 + 1) = v64;
    v65 = v121;
    *(v62 + 2) = v120;
    *(v62 + 3) = v65;
    v66 = v60;
    v67 = v93;
    sub_21C716934(v66, v93, &qword_27CDEC250, &qword_21CBA3DA0);
    sub_21C716934(v67, v46, &qword_27CDEC250, &qword_21CBA3DA0);
    v45 = 0;
  }

  v68 = v46;
  (*(v106 + 56))(v46, v45, 1, v47);
  v69 = v102;
  v70 = *(v102 + 16);
  v71 = v112;
  v70(v112, v111, v113);
  v72 = v104;
  v73 = *(v104 + 16);
  v74 = v103;
  v75 = v105;
  v73(v103, v116, v105);
  sub_21C6EDBAC(v68, v115, &qword_27CDEC258, &qword_21CBA3DA8);
  v76 = v107;
  v77 = v71;
  v78 = v113;
  v70(v107, v77, v113);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC288, &qword_21CBA3E08);
  v73(&v76[*(v79 + 48)], v74, v75);
  v80 = &v76[*(v79 + 64)];
  v81 = v115;
  sub_21C6EDBAC(v115, v80, &qword_27CDEC258, &qword_21CBA3DA8);
  sub_21C6EA794(v114, &qword_27CDEC258, &qword_21CBA3DA8);
  v82 = *(v72 + 8);
  v82(v116, v75);
  v83 = *(v69 + 8);
  v83(v111, v78);
  sub_21C6EA794(v81, &qword_27CDEC258, &qword_21CBA3DA8);
  v82(v74, v75);
  return (v83)(v112, v78);
}

void sub_21C7F8134(id *a1)
{
  v1 = [*a1 date];
  sub_21CB80D94();
}

id sub_21C7F8194@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v45 = a3;
  v4 = type metadata accessor for PMAccountPickerViewContent(0);
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccountPickerRow(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21CB80DD4();
  v13 = *(v12 - 8);
  *&v14 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 date];
  sub_21CB80D94();

  if (qword_27CDEA3C0 != -1)
  {
    swift_once();
  }

  v18 = qword_27CDF2488;
  v19 = sub_21CB80D24();
  v20 = [v18 stringFromDate_];

  v40 = sub_21CB855C4();
  v22 = v21;

  (*(v13 + 8))(v16, v12);
  v23 = v41;
  sub_21C7FCBD8(v41, v11, type metadata accessor for PMAccount);
  v24 = type metadata accessor for PMAccountPickerHistoryItem(0);
  v25 = objc_allocWithZone(v24);
  sub_21C7FCBD8(v11, &v25[OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_account], type metadata accessor for PMAccount);
  *&v25[OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_configuration] = a1;
  v49.receiver = v25;
  v49.super_class = v24;
  swift_unknownObjectRetain();
  v46 = objc_msgSendSuper2(&v49, sel_init);
  sub_21C719180(v11, type metadata accessor for PMAccount);
  sub_21C7FCBD8(v23, v8, type metadata accessor for PMAccount);
  v26 = v43;
  swift_getKeyPath(a0_27);
  swift_getKeyPath(byte_21CBA3828);
  sub_21CB81DB4();

  v27 = v47;
  v28 = v48;
  v29 = v44;
  sub_21C7FCBD8(v26, v44, type metadata accessor for PMAccountPickerViewContent);
  v30 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v31 = swift_allocObject();
  sub_21C7FD754(v29, v31 + v30, type metadata accessor for PMAccountPickerViewContent);
  *(v31 + ((v5 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v46;
  v32 = &v8[v6[5]];
  *v32 = sub_21C7FCD70;
  v32[1] = v31;
  v33 = &v8[v6[6]];
  *v33 = 1;
  *(v33 + 8) = xmmword_21CBA3560;
  *(v33 + 3) = v40;
  *(v33 + 4) = v22;
  v33[40] = 0;
  v34 = &v8[v6[7]];
  *v34 = v27;
  *(v34 + 1) = v28;
  v35 = v45;
  sub_21C7FD754(v8, v45, type metadata accessor for PMAccountPickerRow);
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2A0, &qword_21CBA3E20) + 36);
  v37 = v46;
  *v36 = v46;
  *(v36 + 8) = 0;
  *(v36 + 16) = 259;

  return v37;
}

uint64_t sub_21C7F8654(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v2 = sub_21CB82484();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB80BE4();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB85614();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_21CB85CA4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7C61D0(v12);
  v13 = sub_21CB85C84();
  v15 = v14;
  v29 = v7;
  v30 = v4;
  v31 = v5;
  (*(v10 + 8))(v12, v9);
  sub_21CB85604();
  v16 = sub_21CB855E4();
  if (!v17)
  {
    return sub_21C7A34C0(v13, v15);
  }

  v18 = v16;
  v19 = v17;
  v20 = v15;
  v21 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC290, &unk_21CBA3E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA0690;
  *(inited + 32) = sub_21CB855C4();
  *(inited + 40) = v23;
  *(inited + 48) = v18;
  *(inited + 56) = v19;
  sub_21CB126C0(inited);
  swift_setDeallocating();
  sub_21C6EA794(inited + 32, &unk_27CDF3320, &unk_21CBA0E30);
  v24 = sub_21CB85464();

  v25 = [v21 passwordManagerURLWithDictionary_];

  v26 = v29;
  sub_21CB80B94();

  type metadata accessor for PMAccountPickerViewContent(0);
  v27 = v30;
  sub_21C95B2F0(v30);
  sub_21CB82454();
  sub_21C7A34C0(v13, v20);
  (*(v34 + 8))(v27, v35);
  return (*(v32 + 8))(v26, v31);
}

uint64_t sub_21C7F8A34(uint64_t a1, void *a2)
{
  swift_getKeyPath(byte_21CBA3E50);

  v3 = a2;
  return sub_21CB81DC4();
}

uint64_t sub_21C7F8AAC(uint64_t a1)
{
  v2 = type metadata accessor for PMAccountPickerViewContent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  swift_getKeyPath(aH_56, v5);
  swift_getKeyPath(aH_57);
  sub_21CB81DB4();

  sub_21C7FCBD8(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountPickerViewContent);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_21C7FD754(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PMAccountPickerViewContent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC168, &unk_21CBA3D20);
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730, MEMORY[0x277D83980]);
  sub_21C7FC678();
  sub_21C7FD70C(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  return sub_21CB84FF4();
}

uint64_t sub_21C7F8CF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41[1] = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC328, &qword_21CBA3F28);
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v5 = v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC330, &unk_21CBA3F30);
  MEMORY[0x28223BE20](v6);
  v8 = v41 - v7;
  v41[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC268, qword_21CBA3DB8);
  v9 = *(v41[0] - 8);
  MEMORY[0x28223BE20](v41[0]);
  v11 = v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC170, &qword_21CB9E5D8);
  v43 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v41 - v13;
  sub_21C7F9360(a1, &v48);
  v52 = v50;
  v53 = v49;
  v54 = v48;
  v55 = v49;
  v56 = v50;
  v57 = v51;
  sub_21C7FD98C(&v53, &v44);
  sub_21C7FD9E8(&v52, &v44);
  sub_21C7F50F0(a1, &v54, v14);
  sub_21C7FDA44(&v53);
  sub_21C7FDA98(&v52);
  sub_21C7FDA44(&v53);
  sub_21C7FDA98(&v52);
  if (v48)
  {
    v16 = *a1;
    v15 = a1[1];
    (*(v43 + 16))(v11, v14, v12);
    v17 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEA4D0, &unk_21CB9E5E0) + 36)];
    *v17 = v16;
    *(v17 + 1) = v15;
    *(v17 + 8) = 258;
    v18 = v41[0];
    (*(v9 + 16))(v8, v11, v41[0]);
    swift_storeEnumTagMultiPayload();
    v19 = type metadata accessor for PMAccountPickerRow(255);

    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC178, &unk_21CBA3D30);
    v21 = sub_21C7FD70C(&qword_27CDEC180, type metadata accessor for PMAccountPickerRow, &unk_21CBA3080);
    v22 = sub_21C7FC81C();
    v44 = v19;
    v45 = v20;
    v46 = v21;
    v47 = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v24 = sub_21C7FBD28();
    v44 = v12;
    v45 = &type metadata for PMAccountPickerRow.RowTag;
    v46 = OpaqueTypeConformance2;
    v47 = v24;
    swift_getOpaqueTypeConformance2();
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC1C0, &qword_21CBA3D50);
    v26 = sub_21C7FC984();
    v44 = v12;
    v45 = v25;
    v46 = OpaqueTypeConformance2;
    v47 = v26;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    (*(v9 + 8))(v11, v18);
  }

  else
  {
    (*(v43 + 16))(v5, v14, v12);
    v27 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E0, &unk_21CB9E5F0) + 36)];
    *v27 = 0;
    *(v27 + 1) = 0;
    *(v27 + 8) = 511;
    v28 = *(v3 + 16);
    v29 = v8;
    v30 = v3;
    v31 = v42;
    v28(v29, v5, v42);
    swift_storeEnumTagMultiPayload();
    v32 = type metadata accessor for PMAccountPickerRow(255);
    v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC178, &unk_21CBA3D30);
    v34 = sub_21C7FD70C(&qword_27CDEC180, type metadata accessor for PMAccountPickerRow, &unk_21CBA3080);
    v35 = sub_21C7FC81C();
    v44 = v32;
    v45 = v33;
    v46 = v34;
    v47 = v35;
    v36 = swift_getOpaqueTypeConformance2();
    v37 = sub_21C7FBD28();
    v44 = v12;
    v45 = &type metadata for PMAccountPickerRow.RowTag;
    v46 = v36;
    v47 = v37;
    swift_getOpaqueTypeConformance2();
    v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC1C0, &qword_21CBA3D50);
    v39 = sub_21C7FC984();
    v44 = v12;
    v45 = v38;
    v46 = v36;
    v47 = v39;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    (*(v30 + 8))(v5, v31);
  }

  return (*(v43 + 8))(v14, v12);
}

void sub_21C7F9360(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = (&v39 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = (&v39 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = (&v39 - v15);
  v17 = sub_21CB81024();
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(*(v2 + 8) + 32);
  if (!*(*(v2 + 8) + 32))
  {
    v40 = v18;
    v25 = *(type metadata accessor for PMAccount(0) + 24);
    sub_21C7FCBD8(a1 + v25, v10, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C719180(v10, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v27 = *v10;
      v28 = [*v10 credentialTypes];

      if (v28 == 2)
      {
        goto LABEL_12;
      }
    }

    sub_21C7FCBD8(a1 + v25, v7, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = v7;
LABEL_18:
      sub_21C719180(v29, type metadata accessor for PMAccount.Storage);
      goto LABEL_19;
    }

    v30 = *v7;
    v31 = [*v7 credentialTypes];

    if (v31 == 4)
    {
      goto LABEL_12;
    }

LABEL_19:
    v22 = 0;
    v23 = 0;
    v24 = 0;
    LOBYTE(v21) = 0;
    goto LABEL_20;
  }

  if (v21 == 1)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
LABEL_20:
    v33 = 1;
    goto LABEL_21;
  }

  v40 = v18;
  v26 = PMAccount.totpGenerator.getter();
  if (!v26)
  {
    v34 = *(type metadata accessor for PMAccount(0) + 24);
    sub_21C7FCBD8(a1 + v34, v16, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C719180(v16, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v35 = *v16;
      v36 = [*v16 credentialTypes];

      if (v36 == 2)
      {
        goto LABEL_12;
      }
    }

    sub_21C7FCBD8(a1 + v34, v13, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = v13;
      goto LABEL_18;
    }

    v37 = *v13;
    v38 = [*v13 credentialTypes];

    if (v38 == 4)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_12:
  sub_21CB81014();
  v23 = sub_21CB81004();
  v24 = v32;
  (*(v40 + 8))(v20, v17);
  v33 = 0;
  LOBYTE(v21) = 0;
  v22 = 2;
LABEL_21:
  *a2 = v33;
  *(a2 + 8) = 0;
  *(a2 + 16) = v22;
  *(a2 + 24) = v23;
  *(a2 + 32) = v24;
  *(a2 + 40) = v21;
}

uint64_t sub_21C7F97DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21C7F3DE8();
  v5 = 0uLL;
  if (result)
  {
    v6 = -2;
    v7 = 0uLL;
  }

  else
  {
    v8 = *(a1 + 8);
    swift_getKeyPath(a0_27);
    swift_getKeyPath(byte_21CBA3828);
    sub_21CB81DB4();

    v9 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v9 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v12 = *(v8 + 152);
      sub_21C71F3FC();

      sub_21CB84054();
    }

    else
    {
      swift_getKeyPath(byte_21CBA3AE8);
      swift_getKeyPath(byte_21CBA3B10);
      sub_21CB81DB4();

      v10 = *(v11 + 16);

      if (!v10)
      {
        v6 = -1;
        v7 = 0uLL;
        v5 = 0uLL;
        goto LABEL_10;
      }

      v12 = *(v8 + 136);
      sub_21C71F3FC();

      sub_21CB84054();
    }

    result = sub_21CB83494();
    v5 = v12;
    v7 = v14;
    v6 = v15;
  }

LABEL_10:
  *a2 = v5;
  *(a2 + 16) = v7;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_21C7F99A8(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBA3C28);
  swift_getKeyPath(byte_21CBA3C50);

  return sub_21CB81DC4();
}

uint64_t sub_21C7F9A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v45 = a3;
  v4 = type metadata accessor for PMAccount(0);
  v5 = v4 - 8;
  v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = v6;
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccountPickerViewContent(0);
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_21CB81024();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC198, &qword_21CBAF100);
  v43 = *(v13 - 8);
  v44 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v5 + 32);
  v20 = a1;
  sub_21C7FCBD8(a1 + v19, v18, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719180(v18, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v21 = *v18;
    v22 = [*v18 canUserEditSavedAccount];

    if (!v22)
    {
      v36 = 1;
      v33 = v44;
      v35 = v45;
      return (*(v43 + 56))(v35, v36, 1, v33);
    }
  }

  sub_21CB81014();
  v23 = sub_21CB81004();
  v25 = v24;
  (*(v10 + 8))(v12, v9);
  sub_21C7FCBD8(v39, &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountPickerViewContent);
  v26 = v42;
  sub_21C7FCBD8(v20, v42, type metadata accessor for PMAccount);
  v27 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v28 = (v8 + *(v40 + 80) + v27) & ~*(v40 + 80);
  v29 = swift_allocObject();
  sub_21C7FD754(&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v27, type metadata accessor for PMAccountPickerViewContent);
  v30 = sub_21C7FD754(v26, v29 + v28, type metadata accessor for PMAccount);
  v46[0] = v23;
  v46[1] = v25;
  MEMORY[0x28223BE20](v30);
  *(&v38 - 4) = v46;
  *(&v38 - 3) = 0x69662E6873617274;
  *(&v38 - 2) = 0xEA00000000006C6CLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21CB84DA4();

  v31 = sub_21CB84A64();
  KeyPath = swift_getKeyPath(byte_21CBA3E78);
  v33 = v44;
  v34 = &v15[*(v44 + 36)];
  *v34 = KeyPath;
  v34[1] = v31;
  v35 = v45;
  sub_21C716934(v15, v45, &qword_27CDEC198, &qword_21CBAF100);
  v36 = 0;
  return (*(v43 + 56))(v35, v36, 1, v33);
}

uint64_t sub_21C7F9F88(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v3 = *(type metadata accessor for PMAccount(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21CBA0690;
  sub_21C7FCBD8(a2, v5 + v4, type metadata accessor for PMAccount);
  sub_21C87E898(v5);
  swift_getKeyPath(byte_21CBA36F8);
  swift_getKeyPath(aX_26);

  return sub_21CB81DC4();
}

uint64_t sub_21C7FA0C8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC050, &qword_21CBA3AC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v32 = v29 - v4;
  v5 = sub_21CB83604();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC058, &qword_21CBA3AC8);
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC060, &qword_21CBA3AD0);
  v31 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v34 = v29 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC068, &qword_21CBA3AD8);
  MEMORY[0x28223BE20](v11);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v29 - v15;
  if ([objc_opt_self() shouldAllowAddingNewPasswords] && (v33 = v11, v17 = sub_21C7F27C8(), v11 = v33, !v17))
  {
    v29[0] = v29;
    MEMORY[0x28223BE20](v17);
    v29[1] = a1;
    v29[-2] = v35;
    sub_21CB835E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC080, &qword_21CBA3AE0);
    sub_21C6EADEC(&qword_27CDEC088, &qword_27CDEC080, &qword_21CBA3AE0, MEMORY[0x277CDF028]);
    sub_21CB82194();
    v36 = 0x756F636341646461;
    v37 = 0xEA0000000000746ELL;
    type metadata accessor for PMAccountPickerViewContent(0);
    sub_21CB852C4();
    v21 = sub_21C6EADEC(&qword_27CDEC070, &qword_27CDEC058, &qword_21CBA3AC8, MEMORY[0x277CDD7A8]);
    v22 = MEMORY[0x277D837D0];
    sub_21CB82774();
    v11 = v33;
    (*(v30 + 8))(v8, v6);
    v36 = v6;
    v37 = v22;
    v38 = v21;
    v39 = MEMORY[0x277D837E0];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v24 = v32;
    v25 = v34;
    MEMORY[0x21CF131E0](v34, v9, OpaqueTypeConformance2);
    (*(v3 + 16))(v13, v24, v2);
    (*(v3 + 56))(v13, 0, 1, v2);
    v36 = v9;
    v37 = OpaqueTypeConformance2;
    v26 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v13, v2, v26);
    sub_21C6EA794(v13, &qword_27CDEC068, &qword_21CBA3AD8);
    (*(v3 + 8))(v24, v2);
    (*(v31 + 8))(v25, v9);
  }

  else
  {
    (*(v3 + 56))(v13, 1, 1, v2);
    v18 = sub_21C6EADEC(&qword_27CDEC070, &qword_27CDEC058, &qword_21CBA3AC8, MEMORY[0x277CDD7A8]);
    v36 = v6;
    v37 = MEMORY[0x277D837D0];
    v38 = v18;
    v39 = MEMORY[0x277D837E0];
    v19 = swift_getOpaqueTypeConformance2();
    v36 = v9;
    v37 = v19;
    v20 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v13, v2, v20);
    sub_21C6EA794(v13, &qword_27CDEC068, &qword_21CBA3AD8);
  }

  v27 = sub_21C7FC1C8();
  MEMORY[0x21CF131E0](v16, v11, v27);
  return sub_21C6EA794(v16, &qword_27CDEC068, &qword_21CBA3AD8);
}

uint64_t sub_21C7FA728()
{
  v0 = sub_21CB83604();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC030, &qword_21CBA3AB8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  sub_21CB835F4();
  sub_21CB831C4();
  sub_21C7FD70C(&qword_27CDEC048, MEMORY[0x277CDDEB0], MEMORY[0x277CDDEA8]);
  sub_21CB82AA4();
  v5 = sub_21C6EADEC(&qword_27CDEC038, &qword_27CDEC030, &qword_21CBA3AB8, MEMORY[0x277CDDB60]);
  MEMORY[0x21CF131E0](v4, v1, v5);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_21C7FA8FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PMAccountPickerViewContent(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v11 = sub_21CB81004();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  v14 = type metadata accessor for PMPlatformRoleButton(0);
  sub_21CB81EF4();
  sub_21C7FCBD8(a1, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountPickerViewContent);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  result = sub_21C7FD754(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PMAccountPickerViewContent);
  *a2 = v11;
  a2[1] = v13;
  v18 = (a2 + *(v14 + 24));
  *v18 = sub_21C7FC1B0;
  v18[1] = v16;
  return result;
}

uint64_t sub_21C7FAB10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = *(*(a1 + 8) + 360);
  v6 = type metadata accessor for PMAccount(0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);

  v5(v4);

  return sub_21C6EA794(v4, &unk_27CDEBE60, &unk_21CB9FF40);
}

uint64_t sub_21C7FAC0C(uint64_t a1)
{
  v2 = type metadata accessor for PMAccountPickerViewContent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21C7FCBD8(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountPickerViewContent);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_21C7FD754(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PMAccountPickerViewContent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC090, &unk_21CBA3B30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v8 = sub_21CB83094();
  v9 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  v10 = sub_21C7FD70C(&qword_27CDEC0A8, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  swift_getOpaqueTypeConformance2();
  return sub_21CB84DA4();
}

uint64_t sub_21C7FAE30@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v17[0] = sub_21CB83094();
  v1 = *(v17[0] - 8);
  MEMORY[0x28223BE20](v17[0]);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - v10;
  sub_21CB81014();
  v12 = sub_21CB81004();
  v14 = v13;
  (*(v5 + 8))(v7, v4);
  v17[2] = v12;
  v17[3] = v14;
  sub_21C71F3FC();
  sub_21CB84CB4();
  sub_21CB83084();
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21C7FD70C(&qword_27CDEC0A8, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  v15 = v17[0];
  sub_21CB840E4();
  (*(v1 + 8))(v3, v15);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_21C7FB134()
{
  result = qword_27CDEBD80;
  if (!qword_27CDEBD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBD80);
  }

  return result;
}

uint64_t sub_21C7FB188@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for PMAccountPickerViewContent(0);

  return sub_21C7EE49C(a2);
}

uint64_t sub_21C7FB208@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PMAccountPickerViewContent(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C7EE930(v4, a1);
}

uint64_t sub_21C7FB290(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAccountPickerViewContent(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C6F35D0;

  return sub_21C7EF380(a1, v1 + v5);
}

unint64_t sub_21C7FB378()
{
  result = qword_27CDEBDF0;
  if (!qword_27CDEBDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBD98, &qword_21CBA3678);
    sub_21C7FB404();
    sub_21C72EC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBDF0);
  }

  return result;
}

unint64_t sub_21C7FB404()
{
  result = qword_27CDEBDF8;
  if (!qword_27CDEBDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBDE0, &qword_21CBA36F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBD90, &qword_21CBA3670);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBDD0, &qword_21CBB0460);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBD88, &qword_21CBA3668);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBDA8, &qword_21CBA36B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBDB0, &qword_21CBA36B8);
    sub_21C6EADEC(&qword_27CDEBDB8, &qword_27CDEBD88, &qword_21CBA3668, MEMORY[0x277CDDA18]);
    sub_21C6EADEC(&qword_27CDEBDC0, &qword_27CDEBDA8, &qword_21CBA36B0, &unk_21CBBE7F0);
    type metadata accessor for PMAddAccountView(255);
    sub_21CB83994();
    sub_21C7FD70C(&qword_27CDEBDC8, type metadata accessor for PMAddAccountView, &unk_21CBA8F48);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for PMGeneratedPasswordsLogView(255);
    sub_21C7FD70C(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView, &unk_21CBB7C80);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBDF8);
  }

  return result;
}

unint64_t sub_21C7FB6BC()
{
  result = qword_27CDEBE10;
  if (!qword_27CDEBE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBDE8, &qword_21CBA3758);
    sub_21C6EADEC(&qword_27CDEBE18, &unk_27CDEBE20, &unk_21CBA3760, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBE10);
  }

  return result;
}

uint64_t sub_21C7FB7BC(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAccountPickerViewContent(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21C7F05E4(a1, v6, v7, v1 + v5);
}

id sub_21C7FB8AC(id result, uint64_t a2, void *a3)
{
  if (result)
  {

    return a3;
  }

  return result;
}

unint64_t sub_21C7FB938()
{
  result = qword_27CDEBF20;
  if (!qword_27CDEBF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF18, &qword_21CBA3968);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF28, &qword_21CBA3970);
    sub_21C7FBA1C();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    sub_21C7FBD7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBF20);
  }

  return result;
}

unint64_t sub_21C7FBA1C()
{
  result = qword_27CDEBF30;
  if (!qword_27CDEBF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF28, &qword_21CBA3970);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF38, &qword_21CBA3978);
    sub_21CB836B4();
    sub_21C7FBB34();
    swift_getOpaqueTypeConformance2();
    sub_21C7FD70C(&qword_27CDEBF90, type metadata accessor for PMSearchable, &unk_21CBA9C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBF30);
  }

  return result;
}

unint64_t sub_21C7FBB34()
{
  result = qword_27CDEBF40;
  if (!qword_27CDEBF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF38, &qword_21CBA3978);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF48, &qword_21CBA3980);
    sub_21C7FBC44();
    sub_21C7FBD28();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBF80, &qword_27CDEBF88, &qword_21CBA3998, &unk_21CBA4A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBF40);
  }

  return result;
}

unint64_t sub_21C7FBC44()
{
  result = qword_27CDEBF50;
  if (!qword_27CDEBF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF48, &qword_21CBA3980);
    sub_21C6EADEC(&qword_27CDEBF58, &qword_27CDEBF60, &qword_21CBA3988, MEMORY[0x277CDE5A0]);
    sub_21C6EADEC(&qword_27CDEBF68, &qword_27CDEBF70, &qword_21CBA3990, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBF50);
  }

  return result;
}

unint64_t sub_21C7FBD28()
{
  result = qword_27CDEBF78;
  if (!qword_27CDEBF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBF78);
  }

  return result;
}

unint64_t sub_21C7FBD7C()
{
  result = qword_27CDEBF98;
  if (!qword_27CDEBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBF98);
  }

  return result;
}

unint64_t sub_21C7FBDD0()
{
  result = qword_27CDEBFB0;
  if (!qword_27CDEBFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF00, &qword_21CBA3950);
    sub_21C7FBE54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBFB0);
  }

  return result;
}

unint64_t sub_21C7FBE54()
{
  result = qword_27CDEBFB8;
  if (!qword_27CDEBFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDEBFC0, &qword_21CBA39A8);
    sub_21C7B85D8();
    sub_21C6EADEC(&qword_27CDEBFF0, &qword_27CDEBFF8, &qword_21CBA39C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBFB8);
  }

  return result;
}

uint64_t sub_21C7FBF20(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath(byte_21CBA3E50);
  v3 = v2;

  return sub_21CB81DC4();
}

uint64_t sub_21C7FBF98()
{
  v1 = *(v0 + 8);
  if (*(v1 + 256) == 1 && ((swift_getKeyPath(aH_55), swift_getKeyPath(aH_54), sub_21CB81DB4(), , , v2 = *(v5 + 16), , v2) || *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_passkeyNearbyDeviceOptions)))
  {
    v3 = 72;
  }

  else
  {
    v3 = 56;
  }

  return *(v1 + v3);
}

uint64_t sub_21C7FC058()
{
  v1 = *(v0 + 8);
  if (*(v1 + 256) == 1 && ((swift_getKeyPath(aH_55), swift_getKeyPath(aH_54), sub_21CB81DB4(), , , v2 = *(v5 + 16), , v2) || *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_passkeyNearbyDeviceOptions)))
  {
    v3 = 104;
  }

  else
  {
    v3 = 88;
  }

  return *(v1 + v3);
}

uint64_t sub_21C7FC120@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMAccountPickerViewContent(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C7F2364(a1, v6, a2);
}

unint64_t sub_21C7FC1C8()
{
  result = qword_27CDEC078;
  if (!qword_27CDEC078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC068, &qword_21CBA3AD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC060, &qword_21CBA3AD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC058, &qword_21CBA3AC8);
    sub_21C6EADEC(&qword_27CDEC070, &qword_27CDEC058, &qword_21CBA3AC8, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC078);
  }

  return result;
}

unint64_t sub_21C7FC33C()
{
  result = qword_27CDEC0B8;
  if (!qword_27CDEC0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC0B0, &qword_21CBA3BB0);
    sub_21C6EADEC(&qword_27CDEC0C0, &qword_27CDEC0C8, &qword_21CBA3BB8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC0B8);
  }

  return result;
}

void sub_21C7FC3EC(uint64_t a1)
{
  v3 = *(type metadata accessor for PMAccountPickerViewContent(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_21C7F3EDC(a1, v4);
}

unint64_t sub_21C7FC470()
{
  result = qword_27CDEC130;
  if (!qword_27CDEC130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC120, &qword_21CBA3D00);
    sub_21C7FC4F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC130);
  }

  return result;
}

unint64_t sub_21C7FC4F4()
{
  result = qword_27CDEC138;
  if (!qword_27CDEC138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC140, &unk_21CBA3D10);
    sub_21C7FC578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC138);
  }

  return result;
}

unint64_t sub_21C7FC578()
{
  result = qword_27CDEC148;
  if (!qword_27CDEC148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC150, &unk_21CBA4F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC148);
  }

  return result;
}

unint64_t sub_21C7FC5F4()
{
  result = qword_27CDEC158;
  if (!qword_27CDEC158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC128, &qword_21CBA3D08);
    sub_21C7FC678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC158);
  }

  return result;
}

unint64_t sub_21C7FC678()
{
  result = qword_27CDEC160;
  if (!qword_27CDEC160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC168, &unk_21CBA3D20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC170, &qword_21CB9E5D8);
    type metadata accessor for PMAccountPickerRow(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC178, &unk_21CBA3D30);
    sub_21C7FD70C(&qword_27CDEC180, type metadata accessor for PMAccountPickerRow, &unk_21CBA3080);
    sub_21C7FC81C();
    swift_getOpaqueTypeConformance2();
    sub_21C7FBD28();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC1C0, &qword_21CBA3D50);
    sub_21C7FC984();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC160);
  }

  return result;
}

unint64_t sub_21C7FC81C()
{
  result = qword_27CDEC188;
  if (!qword_27CDEC188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC178, &unk_21CBA3D30);
    sub_21C7FC8A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC188);
  }

  return result;
}

unint64_t sub_21C7FC8A0()
{
  result = qword_27CDEC190;
  if (!qword_27CDEC190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC198, &qword_21CBAF100);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
    sub_21C6EADEC(&unk_27CDEC1B0, &qword_27CDEB968, &qword_21CBA26F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC190);
  }

  return result;
}

unint64_t sub_21C7FC984()
{
  result = qword_27CDEC1C8;
  if (!qword_27CDEC1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC1C0, &qword_21CBA3D50);
    sub_21C7FBD28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC1C8);
  }

  return result;
}

unint64_t sub_21C7FCA10()
{
  result = qword_27CDEC1E8;
  if (!qword_27CDEC1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC0E8, &qword_21CBA3CC8);
    sub_21C7FCA94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC1E8);
  }

  return result;
}

unint64_t sub_21C7FCA94()
{
  result = qword_27CDEC1F0;
  if (!qword_27CDEC1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC1F8, &qword_21CBA3D68);
    sub_21C7FCB18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC1F0);
  }

  return result;
}

unint64_t sub_21C7FCB18()
{
  result = qword_27CDEC200;
  if (!qword_27CDEC200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC208, &qword_21CBA3D70);
    sub_21C6EADEC(&qword_27CDEC210, &qword_27CDEC218, &qword_21CBA3D78, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC200);
  }

  return result;
}

uint64_t sub_21C7FCBD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_21C7FCC58@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMAccountPickerViewContent(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PMAccount(0) - 8);
  return sub_21C7F8194(*a1, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), a2);
}

uint64_t sub_21C7FCD70()
{
  v1 = *(type metadata accessor for PMAccountPickerViewContent(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21C7F8A34(v0 + v2, v3);
}

uint64_t objectdestroy_162Tm()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccountPickerViewContent(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(*(v6 - 1) + 80);
  v48 = *(*(v6 - 1) + 64);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v1 + v4;

  v10 = *(v2 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB82484();
    (*(*(v11 - 8) + 8))(v9 + v10, v11);
  }

  else
  {
  }

  v47 = v8;
  v12 = v1 + v8;

  v13 = v1 + v8 + v6[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v15 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v16 = *(v15 + 28);
    v17 = sub_21CB85B74();
    (*(*(v17 - 8) + 8))(v13 + v16, v17);

    v18 = *(v15 + 36);
    v19 = sub_21CB85C44();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v13 + v18, 1, v19))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v37 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v38 = v37[7];
  v39 = sub_21CB85C04();
  v40 = *(v39 - 8);
  if (!(*(v40 + 48))(v13 + v38, 1, v39))
  {
    (*(v40 + 8))(v13 + v38, v39);
  }

  v41 = v37[8];
  v42 = sub_21CB85BB4();
  v43 = *(v42 - 8);
  if (!(*(v43 + 48))(v13 + v41, 1, v42))
  {
    (*(v43 + 8))(v13 + v41, v42);
  }

  v18 = v37[9];
  v19 = sub_21CB85C44();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v13 + v18, 1, v19))
  {
LABEL_6:
    (*(v20 + 8))(v13 + v18, v19);
  }

LABEL_7:
  v21 = (v12 + v6[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = v3;

    v22 = type metadata accessor for PMAccount.MockData(0);
    v23 = v22[8];
    v24 = sub_21CB80DD4();
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    if (!v26(v21 + v23, 1, v24))
    {
      (*(v25 + 8))(v21 + v23, v24);
    }

    v27 = v22[12];
    if (!v26(v21 + v27, 1, v24))
    {
      (*(v25 + 8))(v21 + v27, v24);
    }

    v28 = v22[15];
    v29 = sub_21CB85BB4();
    v30 = *(v29 - 8);
    if (!(*(v30 + 48))(v21 + v28, 1, v29))
    {
      (*(v30 + 8))(v21 + v28, v29);
    }

    v31 = v22[16];
    v32 = sub_21CB85C04();
    v33 = *(v32 - 8);
    v3 = v46;
    if (!(*(v33 + 48))(v21 + v31, 1, v32))
    {
      (*(v33 + 8))(v21 + v31, v32);
    }

    v34 = v22[18];
    v35 = sub_21CB85C44();
    v36 = *(v35 - 8);
    if (!(*(v36 + 48))(v21 + v34, 1, v35))
    {
      (*(v36 + 8))(v21 + v34, v35);
    }
  }

  else
  {
  }

  v44 = v12 + v6[7];
  if (*(v44 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v47 + v48, v3 | v7 | 7);
}

uint64_t sub_21C7FD5E4(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(unint64_t, uint64_t))
{
  v5 = *(a1(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(a2(0) - 8);
  v9 = v3 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return a3(v3 + v6, v9);
}

uint64_t sub_21C7FD70C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C7FD754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7FD86C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAccountPickerViewContent(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C7FD8F8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PMAccountPickerViewContent(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_21C7FDAF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC3A0, &qword_21CBA4138);
  v56 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v55 = &v48 - v3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC3A8, &qword_21CBA4140);
  MEMORY[0x28223BE20](v59);
  v57 = &v48 - v4;
  v62 = sub_21CB83934();
  v52 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC3B0, &qword_21CBA4148);
  MEMORY[0x28223BE20](v6);
  v50 = &v48 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC3B8, &qword_21CBA4150);
  v54 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v53 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC3C0, &qword_21CBA4158);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC3C8, &qword_21CBA4160);
  v63 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v18 = *(v2 + *(type metadata accessor for PMBulkOperationProgressView(0) + 20) + 8);
  swift_getKeyPath(aH_58);
  swift_getKeyPath(asc_21CBA4190);
  sub_21CB81DB4();

  v19 = v6;

  v20 = *(v70 + 16);

  *&v70 = v20;
  BYTE4(v70) = 0;
  *&v66 = *(*(v18 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_accounts) + 16);
  v65 = v2;
  v64 = v2;
  sub_21C7FE6D0();
  sub_21CB82214();
  v21 = sub_21CB83CE4();
  v22 = &v14[*(v12 + 36)];
  *v22 = v21;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  v22[40] = 1;
  v23 = sub_21C7FE724();
  sub_21CB84644();
  sub_21C7FE7DC(v14);
  sub_21C728D50(v11);
  v24 = sub_21CB83834();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v11, 1, v24) == 1)
  {
    goto LABEL_5;
  }

  v26 = v62;
  if ((*(v25 + 88))(v11, v24) != *MEMORY[0x277CE0560])
  {
    (*(v25 + 8))(v11, v24);
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC3F0, &qword_21CBA4870);
    v38 = sub_21CB83184();
    v39 = *(v38 - 8);
    v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_21CBA0690;
    sub_21CB83174();
    sub_21C8D7B00(v41);
    swift_setDeallocating();
    (*(v39 + 8))(v41 + v40, v38);
    swift_deallocClassInstance();
    *&v70 = v12;
    *(&v70 + 1) = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v43 = v55;
    sub_21CB844D4();

    v44 = v56;
    v45 = v61;
    (*(v56 + 16))(v57, v43, v61);
    swift_storeEnumTagMultiPayload();
    v46 = sub_21C7FE844();
    *&v70 = v19;
    *(&v70 + 1) = v62;
    *&v71 = v46;
    *(&v71 + 1) = MEMORY[0x277CDE280];
    swift_getOpaqueTypeConformance2();
    *&v70 = v15;
    *(&v70 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    (*(v44 + 8))(v43, v45);
    return (*(v63 + 8))(v17, v15);
  }

  sub_21CB85214();
  sub_21CB82374();
  v27 = *(v63 + 16);
  v28 = v50;
  v49 = v17;
  v27(v50, v17, v15);
  v29 = v6;
  v30 = (v28 + *(v6 + 36));
  v31 = v71;
  *v30 = v70;
  v30[1] = v31;
  v30[2] = v72;
  v32 = v51;
  sub_21CB83194();
  v33 = sub_21C7FE844();
  v34 = v53;
  sub_21CB84454();
  (*(v52 + 8))(v32, v26);
  sub_21C756830(v28);
  v35 = v54;
  v36 = v58;
  (*(v54 + 16))(v57, v34, v58);
  swift_storeEnumTagMultiPayload();
  v66 = v29;
  v67 = v26;
  v68 = v33;
  v69 = MEMORY[0x277CDE280];
  swift_getOpaqueTypeConformance2();
  v66 = v12;
  v67 = v23;
  v17 = v49;
  v37 = swift_getOpaqueTypeConformance2();
  v66 = v15;
  v67 = v37;
  swift_getOpaqueTypeConformance2();
  sub_21CB83494();
  (*(v35 + 8))(v34, v36);
  return (*(v63 + 8))(v17, v15);
}

uint64_t sub_21C7FE4DC@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for PMBulkOperationProgressView(0);
  a1();
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_21C7FE560@<X0>(void *a2@<X8>)
{
  *a2 = swift_getKeyPath(byte_21CBA4080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v3 = (a2 + *(type metadata accessor for PMBulkOperationProgressView(0) + 20));
  type metadata accessor for PMBulkOperationProgress(0);
  sub_21C705E68(&qword_27CDEC368, type metadata accessor for PMBulkOperationProgress, &unk_21CBB3118);

  result = sub_21CB82674();
  *v3 = result;
  v3[1] = v5;
  return result;
}

unint64_t sub_21C7FE6D0()
{
  result = qword_27CDEC3D0;
  if (!qword_27CDEC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC3D0);
  }

  return result;
}

unint64_t sub_21C7FE724()
{
  result = qword_27CDEC3D8;
  if (!qword_27CDEC3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC3C0, &qword_21CBA4158);
    sub_21C6EADEC(&qword_27CDEC3E0, &qword_27CDEC3E8, &unk_21CBA41B0, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC3D8);
  }

  return result;
}

uint64_t sub_21C7FE7DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC3C0, &qword_21CBA4158);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C7FE844()
{
  result = qword_27CDEC3F8;
  if (!qword_27CDEC3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC3B0, &qword_21CBA4148);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC3C0, &qword_21CBA4158);
    sub_21C7FE724();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC3F8);
  }

  return result;
}

unint64_t sub_21C7FE90C()
{
  result = qword_27CDEC400;
  if (!qword_27CDEC400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CDEC408, &unk_21CBA41C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC3B0, &qword_21CBA4148);
    sub_21CB83934();
    sub_21C7FE844();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC3C8, &qword_21CBA4160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC3C0, &qword_21CBA4158);
    sub_21C7FE724();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC400);
  }

  return result;
}

void sub_21C7FEA74(uint64_t a1)
{
  sub_21C6EE394(319, &qword_27CDEB2F0, &type metadata for PMSecurityRecommendation);
  if (v1 <= 0x3F)
  {
    sub_21C6EE394(319, &qword_27CDEC490, &type metadata for PMSecurityRecommendation.Status);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_21C735A14(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21C7FEB5C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_21CB82054() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((((v11 + 35) & ~v11) + *(v6 + 64) + v12) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_28:
      if (v7 > 0x7FFFFFFE)
      {
        v20 = *(v6 + 48);

        return v20((a1 + v11 + 35) & ~v11, v7, v5);
      }

      else
      {
        v19 = *(a1 + 1);
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        if ((v19 + 1) >= 2)
        {
          return v19;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_21C7FEDD0(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v23 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_21CB82054() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((((v13 + 35) & ~v13) + *(v8 + 64) + v14) & ~v14) + 1;
  if (a3 <= v10)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v10 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_48:
              if (v16 == 2)
              {
                *(a1 + v15) = v18;
              }

              else
              {
                *(a1 + v15) = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v21;
        *(a1 + 2) = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v16)
    {
      *(a1 + v15) = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *(a1 + v15) = 0;
  }

  else if (v16)
  {
    *(a1 + v15) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 > 0x7FFFFFFE)
  {
    v22 = *(v23 + 56);

    v22((a1 + v13 + 35) & ~v13, a2, v9, v7);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 1) = a2;
  }
}

uint64_t sub_21C7FF130(uint64_t a1)
{
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC4A0, &unk_21CBA4260);
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  swift_getWitnessTable();
  v4 = sub_21CB84E14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9];
  v11 = *(a1 + 24);
  v16 = v3;
  v17 = v11;
  v18 = v1;
  sub_21CB83074();
  sub_21CB84E04();
  WitnessTable = swift_getWitnessTable();
  sub_21C72BE10(v7, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v7, v4);
  sub_21C72BE10(v10, v4, WitnessTable);
  return (v13)(v10, v4);
}

uint64_t sub_21C7FF338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v40 = sub_21CB83274();
  v10 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC4A8, &qword_21CBA4270);
  MEMORY[0x28223BE20](v36);
  v14 = &v36 - v13;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC4A0, &unk_21CBA4260);
  MEMORY[0x28223BE20](v39);
  v41 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v19 = *(a2 - 8);
  MEMORY[0x28223BE20](v20);
  v38 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v36 - v23;
  v37 = a3;
  v26 = type metadata accessor for PMSecurityRecommendationAccountRowBadgeView(0, a2, a3, v25);
  sub_21C72BE10(a1 + *(v26 + 48), a2, a3);
  sub_21C7FF7BC(a1, a2, a3, v14);
  sub_21CB83244();
  sub_21C800A1C();
  sub_21CB84614();
  (*(v10 + 8))(v12, v40);
  sub_21C6EA794(v14, &qword_27CDEC4A8, &qword_21CBA4270);
  v27 = sub_21CB83DC4();
  (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
  v28 = sub_21CB83E14();
  sub_21C6EA794(v9, &qword_27CDEBB58, &qword_21CBAF8A0);
  KeyPath = swift_getKeyPath(aX_27);
  v30 = v38;
  v31 = v39;
  v32 = &v18[*(v39 + 36)];
  *v32 = KeyPath;
  v32[1] = v28;
  (*(v19 + 16))(v30, v24, a2);
  v47 = 0;
  v48 = 1;
  v49[0] = v30;
  v49[1] = &v47;
  v33 = v41;
  sub_21C6EDBAC(v18, v41, &qword_27CDEC4A0, &unk_21CBA4260);
  v49[2] = v33;
  v46[0] = a2;
  v46[1] = MEMORY[0x277CE1180];
  v46[2] = v31;
  v43 = v37;
  v44 = MEMORY[0x277CE1170];
  v45 = sub_21C800FE8();
  sub_21C74A55C(v49, 3uLL, v46);
  sub_21C6EA794(v18, &qword_27CDEC4A0, &unk_21CBA4260);
  v34 = *(v19 + 8);
  v34(v24, a2);
  sub_21C6EA794(v33, &qword_27CDEC4A0, &unk_21CBA4260);
  return (v34)(v30, a2);
}

uint64_t sub_21C7FF7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v123 = a3;
  v122 = a2;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC570, &qword_21CBA4308);
  v119 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v118 = &v109 - v6;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC550, &qword_21CBA42C0);
  MEMORY[0x28223BE20](v127);
  v120 = &v109 - v7;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC578, &unk_21CBA4310);
  MEMORY[0x28223BE20](v125);
  v126 = &v109 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC580, &qword_21CBBA870);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v109 - v10;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC588, &qword_21CBA4320);
  v115 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v114 = &v109 - v12;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC540, &qword_21CBA42B8);
  MEMORY[0x28223BE20](v124);
  v116 = &v109 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC520, &qword_21CBA42A8);
  MEMORY[0x28223BE20](v14);
  v133 = &v109 - v15;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC590, &qword_21CBA4328);
  MEMORY[0x28223BE20](v137);
  v17 = &v109 - v16;
  v18 = sub_21CB81024();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v132 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v109 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC598, &unk_21CBA4330);
  v128 = *(v24 - 8);
  v129 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v109 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC4F0, &qword_21CBA4290);
  v134 = *(v27 - 8);
  v135 = v27;
  MEMORY[0x28223BE20](v27);
  v131 = &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v130 = &v109 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC4E0, &qword_21CBA4288);
  *&v33 = MEMORY[0x28223BE20](v31).n128_u64[0];
  v35 = &v109 - v34;
  LODWORD(v34) = *(a1 + 34);
  v36 = a1;
  v37 = *(a1 + 32);
  if (v34 == 1)
  {
    v136 = v32;
    if (v37 == 2)
    {
      v38 = sub_21CB84BB4();
      v125 = v38;
      v39 = sub_21CB837D4();
      v138 = v38;
      LODWORD(v139) = v39;
      v140 = 3;
      sub_21CB81014();
      v40 = sub_21CB81004();
      v113 = a4;
      v42 = v41;
      v43 = *(v19 + 8);
      v126 = v19 + 8;
      v127 = v43;
      v110 = v18;
      v43(v23, v18);
      v142 = v40;
      v143 = v42;
      v133 = sub_21C71F3FC();
      v44 = sub_21CB84054();
      v112 = v14;
      v46 = v45;
      v48 = v47;
      v111 = v17;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC4F8, &qword_21CBA4298);
      v50 = sub_21C800CF4();
      sub_21CB846D4();
      sub_21C74A72C(v44, v46, v48 & 1);

      v17 = v111;

      sub_21CB83134();
      v138 = v49;
      v139 = v50;
      swift_getOpaqueTypeConformance2();
      v51 = v131;
      v52 = v129;
      sub_21CB84374();

      (*(v128 + 8))(v26, v52);
      sub_21CB81014();
      v53 = v132;
      sub_21CB81014();
      v54 = sub_21CB80FF4();
      v56 = v55;
      v57 = v53;
      v58 = v110;
      v59 = v127;
      v127(v57, v110);
      v59(v23, v58);
      v138 = v54;
      v139 = v56;
      v60 = sub_21CB84054();
      v62 = v61;
      LOBYTE(v44) = v63;
      v64 = v130;
      v65 = v135;
      sub_21CB82884();
      v66 = v44 & 1;
      a4 = v113;
      sub_21C74A72C(v60, v62, v66);

      sub_21C6EA794(v51, &qword_27CDEC4F0, &qword_21CBA4290);
      sub_21C7568A4(v64, v35);
      (*(v134 + 56))(v35, 0, 1, v65);
    }

    else
    {
      (*(v134 + 56))(v35, 1, 1, v135);
    }

    v70 = &qword_27CDEC4E0;
    v71 = &qword_21CBA4288;
    sub_21C6EDBAC(v35, v17, &qword_27CDEC4E0, &qword_21CBA4288);
    swift_storeEnumTagMultiPayload();
    sub_21C800BB0(&qword_27CDEC4D8, &qword_27CDEC4E0, &qword_21CBA4288, sub_21C800C2C);
    goto LABEL_24;
  }

  if (v37 != 2)
  {
    v136 = v32;
    v72 = v36;
    if (*(v36 + 8) && [*(v36 + 24) hasBeenCompromised])
    {
      v112 = v14;
      sub_21CB84BB4();
      sub_21CB83334();
      v73 = sub_21CB83354();
      (*(*(v73 - 8) + 56))(v11, 0, 1, v73);
      v74 = sub_21CB84C24();

      sub_21C6EA794(v11, &qword_27CDEC580, &qword_21CBBA870);
      v142 = v74;
      v75 = *(v72 + 8);
      v113 = a4;
      v111 = v17;
      if (v75)
      {
        v76 = [*(v72 + 24) localizedShortDescriptivePhrase];
        v77 = sub_21CB855C4();
        v79 = v78;
      }

      else
      {
        v77 = 0;
        v79 = 0xE000000000000000;
      }

      v138 = v77;
      v139 = v79;
      v99 = sub_21C71F3FC();
      v100 = MEMORY[0x277CE1088];
      v101 = MEMORY[0x277D837D0];
      v102 = MEMORY[0x277CE1078];
      v103 = v114;
      sub_21CB846E4();

      type metadata accessor for PMSecurityRecommendationAccountRowBadgeView(0, v122, v123, v104);
      v142 = sub_21C800808();
      v143 = v105;
      v138 = v100;
      v139 = v101;
      v140 = v102;
      v141 = v99;
      swift_getOpaqueTypeConformance2();
      v95 = v116;
      v106 = v117;
      sub_21CB843E4();

      (*(v115 + 8))(v103, v106);
      v97 = &qword_27CDEC540;
      v98 = &qword_21CBA42B8;
      sub_21C6EDBAC(v95, v126, &qword_27CDEC540, &qword_21CBA42B8);
    }

    else
    {
      if (v37 == 3)
      {
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC530, &qword_21CBA42B0);
        v35 = v133;
        (*(*(v80 - 8) + 56))(v133, 1, 1, v80);
LABEL_23:
        v70 = &qword_27CDEC520;
        v71 = &qword_21CBA42A8;
        sub_21C6EDBAC(v35, v17, &qword_27CDEC520, &qword_21CBA42A8);
        swift_storeEnumTagMultiPayload();
        sub_21C800BB0(&qword_27CDEC4D8, &qword_27CDEC4E0, &qword_21CBA4288, sub_21C800C2C);
LABEL_24:
        sub_21C800BB0(&qword_27CDEC518, &qword_27CDEC520, &qword_21CBA42A8, sub_21C800DAC);
        sub_21CB83494();
        sub_21C6EA794(v35, v70, v71);
        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC4D0, &qword_21CBA4280);
        return (*(*(v108 - 8) + 56))(a4, 0, 1, v108);
      }

      v112 = v14;
      v81 = sub_21CB84BB4();
      v82 = sub_21CB837B4();
      v138 = v81;
      LODWORD(v139) = v82;
      v140 = 3;
      v83 = *(v72 + 8);
      v113 = a4;
      v111 = v17;
      if (v83)
      {
        v84 = [*(v72 + 24) localizedShortDescriptivePhrase];
        v85 = sub_21CB855C4();
        v87 = v86;
      }

      else
      {
        v85 = 0;
        v87 = 0xE000000000000000;
      }

      v142 = v85;
      v143 = v87;
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC4F8, &qword_21CBA4298);
      v89 = sub_21C800CF4();
      v90 = sub_21C71F3FC();
      v91 = MEMORY[0x277D837D0];
      v92 = v118;
      sub_21CB846E4();

      type metadata accessor for PMSecurityRecommendationAccountRowBadgeView(0, v122, v123, v93);
      v142 = sub_21C800808();
      v143 = v94;
      v138 = v88;
      v139 = v91;
      v140 = v89;
      v141 = v90;
      swift_getOpaqueTypeConformance2();
      v95 = v120;
      v96 = v121;
      sub_21CB843E4();

      (*(v119 + 8))(v92, v96);
      v97 = &qword_27CDEC550;
      v98 = &qword_21CBA42C0;
      sub_21C6EDBAC(v95, v126, &qword_27CDEC550, &qword_21CBA42C0);
    }

    swift_storeEnumTagMultiPayload();
    sub_21C800E38();
    sub_21C800F04();
    v35 = v133;
    sub_21CB83494();
    sub_21C6EA794(v95, v97, v98);
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC530, &qword_21CBA42B0);
    (*(*(v107 - 8) + 56))(v35, 0, 1, v107);
    a4 = v113;
    v17 = v111;
    goto LABEL_23;
  }

  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC4D0, &qword_21CBA4280);
  v68 = *(*(v67 - 8) + 56);

  return v68(a4, 1, 1, v67);
}

uint64_t sub_21C800808()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  if (*(v0 + 32) - 2 < 2 || *(v0 + 32) && !*(v0 + 33))
  {
    return 0;
  }

  sub_21CB81014();
  sub_21CB81014();
  v9 = sub_21CB80FF4();
  v10 = *(v2 + 8);
  v10(v4, v1);
  v10(v7, v1);
  return v9;
}

unint64_t sub_21C800A1C()
{
  result = qword_27CDEC4B0;
  if (!qword_27CDEC4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC4A8, &qword_21CBA4270);
    sub_21C800BB0(&qword_27CDEC4B8, &qword_27CDEC4C0, &qword_21CBA4278, sub_21C800ACC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC4B0);
  }

  return result;
}

unint64_t sub_21C800ACC()
{
  result = qword_27CDEC4C8;
  if (!qword_27CDEC4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC4D0, &qword_21CBA4280);
    sub_21C800BB0(&qword_27CDEC4D8, &qword_27CDEC4E0, &qword_21CBA4288, sub_21C800C2C);
    sub_21C800BB0(&qword_27CDEC518, &qword_27CDEC520, &qword_21CBA42A8, sub_21C800DAC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC4C8);
  }

  return result;
}

uint64_t sub_21C800BB0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C800C2C()
{
  result = qword_27CDEC4E8;
  if (!qword_27CDEC4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC4F0, &qword_21CBA4290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC4F8, &qword_21CBA4298);
    sub_21C800CF4();
    swift_getOpaqueTypeConformance2();
    sub_21C735F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC4E8);
  }

  return result;
}

unint64_t sub_21C800CF4()
{
  result = qword_27CDEC500;
  if (!qword_27CDEC500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC4F8, &qword_21CBA4298);
    sub_21C6EADEC(&qword_27CDEC508, &qword_27CDEC510, &qword_21CBA42A0, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC500);
  }

  return result;
}

unint64_t sub_21C800DAC()
{
  result = qword_27CDEC528;
  if (!qword_27CDEC528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC530, &qword_21CBA42B0);
    sub_21C800E38();
    sub_21C800F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC528);
  }

  return result;
}

unint64_t sub_21C800E38()
{
  result = qword_27CDEC538;
  if (!qword_27CDEC538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC540, &qword_21CBA42B8);
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    sub_21C735F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC538);
  }

  return result;
}

unint64_t sub_21C800F04()
{
  result = qword_27CDEC548;
  if (!qword_27CDEC548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC550, &qword_21CBA42C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC4F8, &qword_21CBA4298);
    sub_21C800CF4();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    sub_21C735F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC548);
  }

  return result;
}

unint64_t sub_21C800FE8()
{
  result = qword_27CDEC558;
  if (!qword_27CDEC558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC4A0, &unk_21CBA4260);
    sub_21C8010A0();
    sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC558);
  }

  return result;
}

unint64_t sub_21C8010A0()
{
  result = qword_27CDEC560;
  if (!qword_27CDEC560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC568, &qword_21CBA42F8);
    sub_21C800A1C();
    sub_21C735F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC560);
  }

  return result;
}

uint64_t sub_21C80112C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v5 <= 1)
  {
    if (!v5)
    {
      return !v6;
    }

    if (v5 == 1)
    {
      return v6 == 1;
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        return v6 == 2;
      case 3:
        return v6 == 3;
      case 4:
        return v6 == 4;
    }
  }

  if (v6 < 5)
  {
    return 0;
  }

  if (v4 == *a2 && v5 == v6)
  {
    return 1;
  }

  return sub_21CB86344();
}

uint64_t sub_21C8011D4(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return sub_21CB86344();
  }

  return 1;
}

uint64_t sub_21C801234()
{
  sub_21C7EC528();
  sub_21CB82F94();
  return v1;
}

uint64_t sub_21C801280(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C8012D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for PMAccountRow(uint64_t a1)
{
  result = qword_27CDEC5B0;
  if (!qword_27CDEC5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C8013B4(uint64_t a1)
{
  type metadata accessor for PMAccount(319);
  if (v1 <= 0x3F)
  {
    sub_21C801560();
    if (v2 <= 0x3F)
    {
      sub_21C70640C(319);
      if (v3 <= 0x3F)
      {
        sub_21C7202E4();
        if (v4 <= 0x3F)
        {
          sub_21C8015C4(319, &qword_27CDEB898, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_21C8015C4(319, &qword_27CDEC5D0, MEMORY[0x277CE0358], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_21C8015C4(319, &qword_27CDEC5D8, type metadata accessor for PMDebugSettingsManager, type metadata accessor for PMDependency);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_21C801560()
{
  result = qword_27CDEC5C0;
  if (!qword_27CDEC5C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CDEC5C0);
  }

  return result;
}

void sub_21C8015C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21C801628(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C801680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_21C8016E0@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_21CB832F4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC678, &qword_21CBA4678);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC680, &unk_21CBA4680);
  sub_21C6EADEC(&qword_27CDEC688, &qword_27CDEC680, &unk_21CBA4680, MEMORY[0x277CE14C0]);
  return sub_21CB81FC4();
}

uint64_t sub_21C8017B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v107 = a2;
  v105 = sub_21CB834E4();
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v101 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v100 = &v83 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v6 - 8);
  v98 = &v83 - v7;
  v99 = sub_21CB83ED4();
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v96 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB81024();
  v84 = *(v9 - 8);
  v85 = v9;
  MEMORY[0x28223BE20](v9);
  v83 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v110);
  v111 = (&v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_21CB82F84();
  v87 = *(v12 - 8);
  v88 = v12;
  MEMORY[0x28223BE20](v12);
  v86 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21CB82834();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC690, &qword_21CBA4690);
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v112 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v113 = &v83 - v20;
  sub_21C802388(&v128);
  v91 = v129;
  v108 = v128;
  v90 = v130;
  v21 = WORD4(v130) | (BYTE10(v130) << 16);
  v22 = BYTE11(v130);
  sub_21C805AD8();
  v89 = sub_21CB83314();
  v134 = v22;
  v23 = type metadata accessor for PMAccountRow(0);
  v93 = *(v23 + 48);
  sub_21C7448E0(v17);
  v24 = sub_21CB82824();
  v25 = *(v15 + 8);
  v94 = v15 + 8;
  v95 = v14;
  v92 = v25;
  v25(v17, v14);
  v26 = (v24 & 1) == 0;
  KeyPath = swift_getKeyPath(byte_21CBA4698);
  v28 = v24 & 1;
  v135 = v24 & 1;
  v109 = v23;
  v29 = a1 + *(v23 + 44);
  v30 = *v29;
  LODWORD(v29) = *(v29 + 8);
  v106 = a1;
  if (v29 == 1)
  {
    if ((v30 & 1) == 0)
    {
LABEL_3:
      v31 = sub_21CB837E4();
      goto LABEL_6;
    }
  }

  else
  {

    sub_21CB85B04();
    v32 = sub_21CB83C94();
    sub_21CB81C14();

    v33 = v86;
    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v30, 0);
    (*(v87 + 8))(v33, v88);
    if (v128 != 1)
    {
      goto LABEL_3;
    }
  }

  v31 = sub_21CB837B4();
LABEL_6:
  v122 = v108;
  v123 = v91;
  *&v124 = v90;
  BYTE10(v124) = BYTE2(v21);
  WORD4(v124) = v21;
  BYTE11(v124) = v22;
  *&v125 = v89;
  *(&v125 + 1) = sub_21C7902AC;
  *&v126 = 0;
  *(&v126 + 1) = KeyPath;
  *&v127 = v26;
  BYTE8(v127) = v28;
  HIDWORD(v127) = v31;
  sub_21CB85184();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC6A0, &qword_21CBA46C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC6A8, &qword_21CBA46D0);
  v35 = sub_21C805B2C();
  *&v128 = v34;
  *(&v128 + 1) = v35;
  swift_getOpaqueTypeConformance2();
  sub_21CB84974();
  v130 = v124;
  v131 = v125;
  v132 = v126;
  v133 = v127;
  v128 = v122;
  v129 = v123;
  sub_21C6EA794(&v128, &qword_27CDEC6A0, &qword_21CBA46C8);
  v36 = type metadata accessor for PMAccount(0);
  v37 = v106;
  v38 = v111;
  sub_21C8058E8(v106 + *(v36 + 24), v111, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C805A70(v38, type metadata accessor for PMAccount.Storage);
    v39 = v109;
LABEL_9:
    v42 = sub_21C804C40();
    v110 = v43;
    v111 = v42;
    goto LABEL_11;
  }

  v40 = *v38;
  v41 = [v40 credentialTypes];

  v39 = v109;
  if ((v41 & 8) == 0)
  {
    goto LABEL_9;
  }

  v44 = v83;
  sub_21CB81014();
  v45 = sub_21CB81004();
  v110 = v46;
  v111 = v45;
  (*(v84 + 8))(v44, v85);
LABEL_11:
  v47 = (v37 + v39[8]);
  v48 = v47[1];
  v109 = *v47;
  *&v108 = v48;

  sub_21C7448E0(v17);
  v49 = sub_21CB82824();
  v92(v17, v95);
  if (v49)
  {
    v94 = 0;
    v50 = 1;
  }

  else
  {
    v51 = *(v37 + v39[6] + 8);
    v50 = v51 != 0;
    v94 = v51 == 0;
  }

  v93 = swift_getKeyPath(byte_21CBA4698);
  LODWORD(v95) = v50;
  v120 = v50;
  v53 = v96;
  v52 = v97;
  v54 = v99;
  (*(v97 + 104))(v96, *MEMORY[0x277CE0A58], v99);
  v55 = sub_21CB83DC4();
  v56 = v98;
  (*(*(v55 - 8) + 56))(v98, 1, 1, v55);
  v92 = sub_21CB83E24();
  sub_21C6EA794(v56, &qword_27CDEBB58, &qword_21CBAF8A0);
  (*(v52 + 8))(v53, v54);
  v99 = swift_getKeyPath(aX_28);
  v57 = v100;
  sub_21C95B534(v100);
  v58 = v101;
  sub_21CB834D4();
  LOBYTE(v54) = sub_21CB834B4();
  v59 = *(v103 + 8);
  v60 = v105;
  v59(v58, v105);
  v59(v57, v60);
  if (v54)
  {
    LODWORD(v122) = sub_21CB837E4();
  }

  else
  {
    v61 = __swift_project_boxed_opaque_existential_0((v37 + v39[7]), *(v37 + v39[7] + 24));
    v62 = MEMORY[0x28223BE20](v61);
    (*(v64 + 16))(&v83 - v63, v62);
  }

  v106 = sub_21CB82384();
  v65 = v102;
  v66 = *(v102 + 16);
  v67 = v112;
  v68 = v104;
  v66(v112, v113, v104);
  v69 = v107;
  v66(v107, v67, v68);
  v70 = &v69[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC740, &qword_21CBA4740) + 48)];
  *&v114 = v111;
  *(&v114 + 1) = v110;
  *&v115 = v109;
  *(&v115 + 1) = v108;
  v71 = v93;
  v72 = v94;
  *&v116 = 0;
  *(&v116 + 1) = v93;
  *&v117 = v94;
  v73 = v95;
  BYTE8(v117) = v95;
  HIDWORD(v117) = *&v121[3];
  *(&v117 + 9) = *v121;
  v74 = v99;
  v75 = v92;
  *&v118 = v99;
  *(&v118 + 1) = v92;
  v76 = v106;
  v119 = v106;
  v77 = v115;
  *v70 = v114;
  *(v70 + 1) = v77;
  v78 = v116;
  v79 = v117;
  v80 = v118;
  *(v70 + 10) = v76;
  *(v70 + 3) = v79;
  *(v70 + 4) = v80;
  *(v70 + 2) = v78;
  sub_21C6EDBAC(&v114, &v122, &qword_27CDEC748, &qword_21CBA4748);
  v81 = *(v65 + 8);
  v81(v113, v68);
  *&v122 = v111;
  *(&v122 + 1) = v110;
  *&v123 = v109;
  *(&v123 + 1) = v108;
  *&v124 = 0;
  *(&v124 + 1) = v71;
  *&v125 = v72;
  BYTE8(v125) = v73;
  *(&v125 + 9) = *v121;
  HIDWORD(v125) = *&v121[3];
  *&v126 = v74;
  *(&v126 + 1) = v75;
  *&v127 = v76;
  sub_21C6EA794(&v122, &qword_27CDEC748, &qword_21CBA4748);
  return (v81)(v112, v68);
}

uint64_t sub_21C802388@<X0>(uint64_t a1@<X8>)
{
  v124 = a1;
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v122 - v7;
  v9 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (v122 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = (v122 - v16);
  v18 = type metadata accessor for PMAccountRow(0);
  v19 = (v1 + *(v18 + 20));
  v20 = v19[1];
  if (v20 > 1)
  {
    if (v20 != 2)
    {
      if (v20 != 3)
      {
        if (v20 == 4)
        {
          v21 = v18;
          v22 = sub_21C8049D8();
          v23 = (v1 + *(v21 + 32));
          v24 = *v23;
          v25 = v23[1];
          *&v125 = v22;
          *(&v125 + 1) = v26;
          *&v126 = v24;
          *(&v126 + 1) = v25;
          v127 = 1;
          LOBYTE(v128) = 0;
          sub_21C805EBC();

          sub_21CB83494();
          v125 = v130;
          v126 = v131;
          v127 = v132;
          v128 = v133;
          v129 = 256;
LABEL_48:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC6F0, &qword_21CBA46F0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC728, &qword_21CBA4708);
          sub_21C805E40(&qword_27CDEC6E8, &qword_27CDEC6F0, &qword_21CBA46F0, sub_21C805DE0);
          sub_21C805F10();
          result = sub_21CB83494();
          goto LABEL_49;
        }

LABEL_24:
        *&v130 = *v19;
        *(&v130 + 1) = v20;
        sub_21C71F3FC();

        v72 = sub_21CB84054();
        v74 = v73;
        *&v125 = v72;
        *(&v125 + 1) = v73;
        v76 = v75 & 1;
        *&v126 = v75 & 1;
        *(&v126 + 1) = v77;
        v127 = 0;
        LOBYTE(v128) = 1;
        sub_21C79B058(v72, v73, v75 & 1);
        sub_21C805EBC();

        sub_21CB83494();
        v125 = v130;
        v126 = v131;
        v127 = v132;
        v128 = v133;
        v129 = 256;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC6F0, &qword_21CBA46F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC728, &qword_21CBA4708);
        sub_21C805E40(&qword_27CDEC6E8, &qword_27CDEC6F0, &qword_21CBA46F0, sub_21C805DE0);
        sub_21C805F10();
        sub_21CB83494();
        sub_21C74A72C(v72, v74, v76);

LABEL_49:
        v110 = v130;
        v111 = v131;
        v112 = v132;
        v113 = v133 | (v134 << 16);
        v114 = v135;
        v71 = v124;
        goto LABEL_59;
      }

      v123 = v18;
      v48 = PMAccount.userVisibleDomain.getter();
      if (!v49)
      {
        v48 = PMAccount.effectiveTitle.getter();
      }

      v50 = v48;
      v51 = v49;
      v52 = PMAccount.userName.getter();
      if (v53)
      {
        v54 = v52;
        v55 = v53;
        v56 = HIBYTE(v53) & 0xF;
        if ((v53 & 0x2000000000000000) == 0)
        {
          v56 = v52 & 0xFFFFFFFFFFFFLL;
        }

        if (v56)
        {
          sub_21CB81014();
          sub_21CB81014();
          v57 = sub_21CB80FF4();
          v122[0] = v58;
          v122[1] = v57;
          v59 = *(v3 + 8);
          v59(v5, v2);
          v59(v8, v2);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
          v60 = swift_allocObject();
          *(v60 + 16) = xmmword_21CBA15B0;
          v61 = MEMORY[0x277D837D0];
          *(v60 + 56) = MEMORY[0x277D837D0];
          v62 = sub_21C7C0050();
          *(v60 + 32) = v50;
          *(v60 + 40) = v51;
          *(v60 + 96) = v61;
          *(v60 + 104) = v62;
          *(v60 + 64) = v62;
          *(v60 + 72) = v54;
          *(v60 + 80) = v55;
          v63 = sub_21CB85594();
          v65 = v64;

          v66 = (v1 + *(v123 + 32));
          v67 = *v66;
          v68 = v66[1];
          *&v125 = v63;
          *(&v125 + 1) = v65;
          *&v126 = v67;
          *(&v126 + 1) = v68;
          v127 = 1;
          LOBYTE(v128) = 0;
LABEL_43:
          sub_21C805EBC();

          sub_21CB83494();
          v125 = v130;
          v126 = v131;
          v127 = v132;
          LOBYTE(v128) = v133;
          HIBYTE(v128) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC710, &qword_21CBA4700);
          sub_21C805E10();
          sub_21CB83494();
          if (HIBYTE(v133))
          {
            v109 = 256;
          }

          else
          {
            v109 = 0;
          }

          v125 = v130;
          v126 = v131;
          v127 = v132;
          v128 = v109 | v133;
          LOBYTE(v129) = 1;
LABEL_47:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC700, &qword_21CBA46F8);
          sub_21C805DE0();
          sub_21CB83494();
          v125 = v130;
          v126 = v131;
          v127 = v132;
          v129 = v134 != 0;
          v128 = v133;
          goto LABEL_48;
        }
      }

      v106 = (v1 + *(v123 + 32));
      v107 = *v106;
      v108 = v106[1];
      *&v125 = v50;
      *(&v125 + 1) = v51;
      *&v126 = v107;
      *(&v126 + 1) = v108;
      v127 = 1;
      LOBYTE(v128) = 1;
      goto LABEL_43;
    }

    v29 = v18;
    v30 = PMAccount.userName.getter();
    if (v31)
    {
      v32 = v30;
      v33 = v31;
      v34 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v34 = v30 & 0xFFFFFFFFFFFFLL;
      }

      if (v34)
      {
        sub_21CB81014();
        sub_21CB81014();
        v123 = sub_21CB80FF4();
        v35 = *(v3 + 8);
        v35(v5, v2);
        v35(v8, v2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_21CBA15B0;
        v37 = PMAccount.effectiveTitle.getter();
        v39 = v38;
        v40 = MEMORY[0x277D837D0];
        *(v36 + 56) = MEMORY[0x277D837D0];
        v41 = sub_21C7C0050();
        *(v36 + 32) = v37;
        *(v36 + 40) = v39;
        *(v36 + 96) = v40;
        *(v36 + 104) = v41;
        *(v36 + 64) = v41;
        *(v36 + 72) = v32;
        *(v36 + 80) = v33;
        v42 = sub_21CB85594();
        v44 = v43;

        v45 = (v1 + *(v29 + 32));
        v46 = *v45;
        v47 = v45[1];
        *&v125 = v42;
        *(&v125 + 1) = v44;
        *&v126 = v46;
        *(&v126 + 1) = v47;
        v127 = 1;
        LOBYTE(v128) = 0;
        sub_21C805EBC();

LABEL_37:
        sub_21CB83494();
        v125 = v130;
        v126 = v131;
        v127 = v132;
        v128 = v133;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC710, &qword_21CBA4700);
        sub_21C805E10();
        sub_21CB83494();
        if (HIBYTE(v133))
        {
          v105 = 256;
        }

        else
        {
          v105 = 0;
        }

        v125 = v130;
        v126 = v131;
        v127 = v132;
        v128 = v105 | v133;
        LOBYTE(v129) = 1;
        goto LABEL_47;
      }
    }

    v100 = PMAccount.effectiveTitle.getter();
    v101 = (v1 + *(v29 + 32));
    v102 = *v101;
    v103 = v101[1];
    *&v125 = v100;
    *(&v125 + 1) = v104;
    *&v126 = v102;
    *(&v126 + 1) = v103;
    v127 = 1;
    LOBYTE(v128) = 1;
    sub_21C805EBC();

    goto LABEL_37;
  }

  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_24;
    }

    v27 = v18;
    v28 = *(type metadata accessor for PMAccount(0) + 24);
    sub_21C8058E8(v1 + v28, v14, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C805A70(v14, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v91 = *v14;
      v92 = [*v14 credentialTypes];

      if (v92 == 4)
      {
        sub_21C8058E8(v1 + v28, v11, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21C805A70(v11, type metadata accessor for PMAccount.Storage);
          v93 = 0;
          v94 = 0xE000000000000000;
          v71 = v124;
        }

        else
        {
          v115 = *v11;
          v116 = [*v11 serviceName];

          v71 = v124;
          if (v116)
          {
            v93 = sub_21CB855C4();
            v94 = v117;
          }

          else
          {
            v93 = 0;
            v94 = 0xE000000000000000;
          }
        }

        v118 = (v1 + *(v27 + 32));
        v119 = *v118;
        v120 = v118[1];
        *&v125 = v93;
        *(&v125 + 1) = v94;
        *&v126 = v119;
        *(&v126 + 1) = v120;
        v127 = 4;
        LOBYTE(v128) = 0;
        sub_21C805EBC();

LABEL_54:
        sub_21CB83494();
        v125 = v130;
        v126 = v131;
        v127 = v132;
        LOBYTE(v128) = v133;
        HIBYTE(v128) = 1;
        goto LABEL_55;
      }
    }

    v95 = PMAccount.userVisibleDomain.getter();
    v71 = v124;
    if (!v96)
    {
      v95 = PMAccount.effectiveTitle.getter();
    }

    v97 = (v1 + *(v27 + 32));
    v98 = *v97;
    v99 = v97[1];
    *&v125 = v95;
    *(&v125 + 1) = v96;
    *&v126 = v98;
    *(&v126 + 1) = v99;
    v127 = 1;
    LOBYTE(v128) = 1;
    sub_21C805EBC();

    goto LABEL_54;
  }

  v69 = v18;
  v70 = type metadata accessor for PMAccount(0);
  sub_21C8058E8(v1 + *(v70 + 24), v17, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C805A70(v17, type metadata accessor for PMAccount.Storage);
    v71 = v124;
LABEL_27:
    v86 = PMAccount.effectiveTitle.getter();
    v87 = (v1 + *(v69 + 32));
    v88 = *v87;
    v89 = v87[1];
    *&v125 = v86;
    *(&v125 + 1) = v90;
    *&v126 = v88;
    *(&v126 + 1) = v89;
    v127 = 3;
    LOBYTE(v128) = 1;
    goto LABEL_28;
  }

  v79 = *v17;
  v80 = [*v17 credentialTypes];

  v71 = v124;
  if (v80 != 4)
  {
    goto LABEL_27;
  }

  v81 = PMAccount.effectiveTitle.getter();
  v82 = (v1 + *(v69 + 32));
  v83 = *v82;
  v84 = v82[1];
  *&v125 = v81;
  *(&v125 + 1) = v85;
  *&v126 = v83;
  *(&v126 + 1) = v84;
  v127 = 4;
  LOBYTE(v128) = 0;
LABEL_28:
  sub_21C805EBC();

  sub_21CB83494();
  v125 = v130;
  v126 = v131;
  v127 = v132;
  v128 = v133;
LABEL_55:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC710, &qword_21CBA4700);
  sub_21C805E10();
  sub_21CB83494();
  if (HIBYTE(v133))
  {
    v121 = 256;
  }

  else
  {
    v121 = 0;
  }

  v125 = v130;
  v126 = v131;
  v127 = v132;
  v128 = v121 | v133;
  LOBYTE(v129) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC700, &qword_21CBA46F8);
  sub_21C805DE0();
  sub_21CB83494();
  v125 = v130;
  v126 = v131;
  v127 = v132;
  v129 = v134 != 0;
  v128 = v133;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC6F0, &qword_21CBA46F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC728, &qword_21CBA4708);
  sub_21C805E40(&qword_27CDEC6E8, &qword_27CDEC6F0, &qword_21CBA46F0, sub_21C805DE0);
  sub_21C805F10();
  result = sub_21CB83494();
  v110 = v130;
  v111 = v131;
  v112 = v132;
  v113 = v133 | (v134 << 16);
  v114 = v135;
LABEL_59:
  *v71 = v110;
  *(v71 + 16) = v111;
  *(v71 + 32) = v112;
  *(v71 + 40) = v113;
  *(v71 + 42) = BYTE2(v113);
  *(v71 + 43) = v114;
  return result;
}