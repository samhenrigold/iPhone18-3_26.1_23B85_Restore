uint64_t sub_24E670A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215ED8, &qword_24F941450);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EE0, &qword_24F941458);
  MEMORY[0x28223BE20](v37);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  MEMORY[0x28223BE20](v10);
  v38 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EE8, &qword_24F941460);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EF0, &qword_24F941468);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  v22 = type metadata accessor for LargeButtonContentView(0);
  v23 = *(v22 + 36);
  v24 = *(a1 + v23);
  if (*(a1 + v23))
  {
    (*(v13 + 56))(v21, 1, 1, v12);
    sub_24E670EC0(v5);
    if (v24 != 1 && (*(a1 + *(v22 + 56)) & 1) != 0)
    {
      v25 = sub_24F926C88();
LABEL_8:
      v41 = v25;
      goto LABEL_9;
    }

LABEL_7:
    v25 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    goto LABEL_8;
  }

  sub_24E670EC0(v15);
  v36 = *(v12 + 36);
  v26 = *MEMORY[0x277CE13C0];
  v27 = sub_24F927748();
  (*(*(v27 - 8) + 104))(&v15[v36], v26, v27);
  sub_24E6009C8(v15, v21, &qword_27F215EE8, &qword_24F941460);
  (*(v13 + 56))(v21, 0, 1, v12);
  sub_24E670EC0(v5);
  if ((*(a1 + *(v22 + 56)) & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_24F926C88();
  v28 = sub_24F926D08();

  v41 = v28;
LABEL_9:
  v29 = sub_24F9238D8();
  sub_24E6009C8(v5, v9, &qword_27F215ED8, &qword_24F941450);
  *&v9[*(v37 + 36)] = v29;
  v30 = v9;
  v31 = v38;
  sub_24E6009C8(v30, v38, &qword_27F215EE0, &qword_24F941458);
  sub_24E60169C(v21, v18, &qword_27F215EF0, &qword_24F941468);
  v32 = v39;
  sub_24E60169C(v31, v39, &qword_27F215EE0, &qword_24F941458);
  v33 = v40;
  sub_24E60169C(v18, v40, &qword_27F215EF0, &qword_24F941468);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EF8, &qword_24F941470);
  sub_24E60169C(v32, v33 + *(v34 + 48), &qword_27F215EE0, &qword_24F941458);
  sub_24E601704(v31, &qword_27F215EE0, &qword_24F941458);
  sub_24E601704(v21, &qword_27F215EF0, &qword_24F941468);
  sub_24E601704(v32, &qword_27F215EE0, &qword_24F941458);
  return sub_24E601704(v18, &qword_27F215EF0, &qword_24F941468);
}

uint64_t sub_24E670EC0@<X0>(uint64_t a1@<X8>)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F00, &qword_24F941478);
  MEMORY[0x28223BE20](v64);
  v4 = (&v54 - v3);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F08, &qword_24F941480);
  MEMORY[0x28223BE20](v61);
  v62 = (&v54 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F10, &qword_24F941488);
  MEMORY[0x28223BE20](v6);
  v63 = &v54 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F18, &qword_24F941490);
  MEMORY[0x28223BE20](v58);
  v9 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F20, &qword_24F941498);
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F28, &qword_24F9414A0);
  MEMORY[0x28223BE20](v57);
  v14 = &v54 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F30, &qword_24F9414A8);
  MEMORY[0x28223BE20](v60);
  v59 = &v54 - v15;
  v16 = type metadata accessor for LargeButtonContentView(0);
  v17 = v16;
  v18 = (v1 + v16[5]);
  v19 = v18[1];
  if (v19)
  {
    v54 = v6;
    v55 = v4;
    v56 = a1;
    v20 = *v18;
    if (*(v1 + v16[6] + 8))
    {
      if (*(v1 + v16[15]))
      {
        *v9 = sub_24F9249A8();
        *(v9 + 1) = 0x4018000000000000;
        v9[16] = 0;
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F70, &qword_24F941528);
        sub_24E671C68(v1, v20, v19, &v9[*(v21 + 44)]);
        v22 = &qword_27F215F18;
        v23 = &qword_24F941490;
        sub_24E60169C(v9, v12, &qword_27F215F18, &qword_24F941490);
        swift_storeEnumTagMultiPayload();
        sub_24E602068(&qword_27F215F50, &qword_27F215F28, &qword_24F9414A0, MEMORY[0x277CE1198]);
        sub_24E602068(&qword_27F215F58, &qword_27F215F18, &qword_24F941490, MEMORY[0x277CE1138]);
        v24 = v59;
        sub_24F924E28();
        v25 = v9;
      }

      else
      {
        *v14 = sub_24F924C88();
        *(v14 + 1) = 0x4000000000000000;
        v14[16] = 0;
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F78, &qword_24F941530);
        sub_24E6718CC(v1, v20, v19, &v14[*(v32 + 44)]);
        v22 = &qword_27F215F28;
        v23 = &qword_24F9414A0;
        sub_24E60169C(v14, v12, &qword_27F215F28, &qword_24F9414A0);
        swift_storeEnumTagMultiPayload();
        sub_24E602068(&qword_27F215F50, &qword_27F215F28, &qword_24F9414A0, MEMORY[0x277CE1198]);
        sub_24E602068(&qword_27F215F58, &qword_27F215F18, &qword_24F941490, MEMORY[0x277CE1138]);
        v24 = v59;
        sub_24F924E28();
        v25 = v14;
      }

      sub_24E601704(v25, v22, v23);
      sub_24E60169C(v24, v62, &qword_27F215F30, &qword_24F9414A8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F68, &qword_24F9414F0);
      sub_24E672758();
      sub_24E67283C();
      v33 = v63;
      sub_24F924E28();
      sub_24E60169C(v33, v55, &qword_27F215F10, &qword_24F941488);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0, &unk_24F9B2BE0);
      sub_24E6726CC();
      sub_24E60156C();
      v34 = v56;
      sub_24F924E28();
      sub_24E601704(v33, &qword_27F215F10, &qword_24F941488);
      sub_24E601704(v24, &qword_27F215F30, &qword_24F9414A8);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F38, &qword_24F9414B0);
      return (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    }

    else
    {
      v65 = *v18;
      v66 = v19;
      sub_24E600AEC();

      v27 = sub_24F925E18();
      v29 = v28;
      v31 = v30;
      if (!*(v1 + v17[7]))
      {
        if (*(v1 + v17[10]))
        {
          sub_24F925A28();
        }

        else
        {
          sub_24F925898();
        }

        sub_24F9258E8();
      }

      v42 = sub_24F925C98();
      v44 = v43;
      v46 = v45;
      v48 = v47;

      sub_24E600B40(v27, v29, v31 & 1);

      KeyPath = swift_getKeyPath();
      v50 = v62;
      *v62 = v42;
      v50[1] = v44;
      *(v50 + 16) = v46 & 1;
      v50[3] = v48;
      v50[4] = KeyPath;
      v59 = v48;
      v50[5] = 2;
      *(v50 + 48) = 0;
      swift_storeEnumTagMultiPayload();
      sub_24E5FD138(v42, v44, v46 & 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F68, &qword_24F9414F0);
      sub_24E672758();
      sub_24E67283C();
      v51 = v63;
      sub_24F924E28();
      sub_24E60169C(v51, v55, &qword_27F215F10, &qword_24F941488);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0, &unk_24F9B2BE0);
      sub_24E6726CC();
      sub_24E60156C();
      v52 = v56;
      sub_24F924E28();
      sub_24E600B40(v42, v44, v46 & 1);

      sub_24E601704(v51, &qword_27F215F10, &qword_24F941488);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F38, &qword_24F9414B0);
      return (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
    }
  }

  else if (*(v1 + v16[6] + 8))
  {

    v26 = sub_24F926DF8();
    if (*(v1 + v17[10]))
    {
      sub_24F925898();
    }

    else
    {
      sub_24F925988();
    }

    v39 = sub_24F9258E8();

    v40 = swift_getKeyPath();
    *v4 = v26;
    v4[1] = v40;
    v4[2] = v39;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0, &unk_24F9B2BE0);
    sub_24E6726CC();
    sub_24E60156C();
    sub_24F924E28();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F38, &qword_24F9414B0);
    return (*(*(v41 - 8) + 56))(a1, 0, 1, v41);
  }

  else
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F38, &qword_24F9414B0);
    v38 = *(*(v37 - 8) + 56);

    return v38(a1, 1, 1, v37);
  }
}

uint64_t sub_24E6718CC@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F80, &qword_24F941538);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v42 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v40 - v13);

  v15 = sub_24F926DF8();
  v16 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20, &qword_24F93CB70) + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
  v18 = *MEMORY[0x277CE1050];
  v19 = sub_24F926E78();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  *v14 = v15;
  v20 = type metadata accessor for LargeButtonContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
  sub_24F9237D8();
  sub_24F927618();
  sub_24F9238C8();
  v21 = (v14 + *(v10 + 44));
  v22 = v46;
  *v21 = v45;
  v21[1] = v22;
  v21[2] = v47;
  v43 = a4;
  v44 = a5;
  sub_24E600AEC();

  v23 = sub_24F925E18();
  v25 = v24;
  v27 = v26;
  if (!*(a3 + *(v20 + 28)))
  {
    if (*(a3 + *(v20 + 40)))
    {
      sub_24F925A28();
    }

    else
    {
      sub_24F925898();
    }

    sub_24F9258E8();
  }

  v28 = sub_24F925C98();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  sub_24E600B40(v23, v25, v27 & 1);

  KeyPath = swift_getKeyPath();
  v36 = v42;
  sub_24E60169C(v14, v42, &qword_27F215F80, &qword_24F941538);
  v37 = v41;
  sub_24E60169C(v36, v41, &qword_27F215F80, &qword_24F941538);
  v38 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F88, &qword_24F941570) + 48);
  *v38 = v28;
  *(v38 + 8) = v30;
  v32 &= 1u;
  *(v38 + 16) = v32;
  *(v38 + 24) = v34;
  *(v38 + 32) = KeyPath;
  *(v38 + 40) = 2;
  *(v38 + 48) = 0;
  sub_24E5FD138(v28, v30, v32);

  sub_24E601704(v14, &qword_27F215F80, &qword_24F941538);
  sub_24E600B40(v28, v30, v32);

  return sub_24E601704(v36, &qword_27F215F80, &qword_24F941538);
}

uint64_t sub_24E671C68@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20, &qword_24F93CB70);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v40 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v38 - v13);

  v15 = sub_24F926DF8();
  v16 = (v14 + *(v10 + 44));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
  v18 = *MEMORY[0x277CE1050];
  v19 = sub_24F926E78();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  *v14 = v15;
  v41 = a4;
  v42 = a5;
  sub_24E600AEC();

  v20 = sub_24F925E18();
  v22 = v21;
  v24 = v23;
  v25 = type metadata accessor for LargeButtonContentView(0);
  if (!*(a3 + *(v25 + 28)))
  {
    if (*(a3 + *(v25 + 40)))
    {
      sub_24F925A28();
    }

    else
    {
      sub_24F925898();
    }

    sub_24F9258E8();
  }

  v26 = sub_24F925C98();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_24E600B40(v20, v22, v24 & 1);

  KeyPath = swift_getKeyPath();
  v34 = v40;
  sub_24E60169C(v14, v40, &qword_27F22DF20, &qword_24F93CB70);
  v35 = v39;
  sub_24E60169C(v34, v39, &qword_27F22DF20, &qword_24F93CB70);
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F90, &qword_24F941578) + 48);
  *v36 = v26;
  *(v36 + 8) = v28;
  v30 &= 1u;
  *(v36 + 16) = v30;
  *(v36 + 24) = v32;
  *(v36 + 32) = KeyPath;
  *(v36 + 40) = 2;
  *(v36 + 48) = 0;
  sub_24E5FD138(v26, v28, v30);

  sub_24E601704(v14, &qword_27F22DF20, &qword_24F93CB70);
  sub_24E600B40(v26, v28, v30);

  return sub_24E601704(v34, &qword_27F22DF20, &qword_24F93CB70);
}

double sub_24E671F88()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8, &qword_24F9471F0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = sub_24F924C48();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 9.0;
  if ((*(v0 + *(type metadata accessor for LargeButtonContentView(0) + 40)) & 1) == 0)
  {
    sub_24E60169C(v0, v7, &qword_27F215EB8, &qword_24F9471F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v9 + 32))(v11, v7, v8);
    }

    else
    {
      sub_24F92BDC8();
      v14 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
    }

    v15 = (*(v9 + 88))(v11, v8);
    if (v15 != *MEMORY[0x277CE0268] && v15 != *MEMORY[0x277CE0298] && v15 != *MEMORY[0x277CE02A0] && v15 != *MEMORY[0x277CE0290])
    {
      v12 = 13.0;
      if (v15 != *MEMORY[0x277CE0260] && v15 != *MEMORY[0x277CE0270] && v15 != *MEMORY[0x277CE0248])
      {
        v12 = 15.0;
        if (v15 != *MEMORY[0x277CE0280] && v15 != *MEMORY[0x277CE0278] && v15 != *MEMORY[0x277CE0288] && v15 != *MEMORY[0x277CE0250] && v15 != *MEMORY[0x277CE0258])
        {
          (*(v9 + 8))(v11, v8);
          return 9.0;
        }
      }
    }
  }

  return v12;
}

unint64_t sub_24E672338()
{
  result = qword_27F215E50;
  if (!qword_27F215E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215E40, &qword_24F941358);
    sub_24E6723F4();
    sub_24E6729C0(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215E50);
  }

  return result;
}

unint64_t sub_24E6723F4()
{
  result = qword_27F215E58;
  if (!qword_27F215E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215E38, &qword_24F941350);
    sub_24E6724B0();
    sub_24E6729C0(&qword_27F215EA0, type metadata accessor for LargeButtonForegroundStyleViewModifier, &unk_24F951898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215E58);
  }

  return result;
}

unint64_t sub_24E6724B0()
{
  result = qword_27F215E60;
  if (!qword_27F215E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215E68, &qword_24F941368);
    sub_24E672568();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215E60);
  }

  return result;
}

unint64_t sub_24E672568()
{
  result = qword_27F215E70;
  if (!qword_27F215E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215E78, &qword_24F941370);
    sub_24E6725F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215E70);
  }

  return result;
}

unint64_t sub_24E6725F4()
{
  result = qword_27F215E80;
  if (!qword_27F215E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215E88, &qword_24F941378);
    sub_24E602068(&qword_27F215E90, &qword_27F215E98, &unk_24F941380, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215E80);
  }

  return result;
}

unint64_t sub_24E6726CC()
{
  result = qword_27F215F40;
  if (!qword_27F215F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215F10, &qword_24F941488);
    sub_24E672758();
    sub_24E67283C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215F40);
  }

  return result;
}

unint64_t sub_24E672758()
{
  result = qword_27F215F48;
  if (!qword_27F215F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215F30, &qword_24F9414A8);
    sub_24E602068(&qword_27F215F50, &qword_27F215F28, &qword_24F9414A0, MEMORY[0x277CE1198]);
    sub_24E602068(&qword_27F215F58, &qword_27F215F18, &qword_24F941490, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215F48);
  }

  return result;
}

unint64_t sub_24E67283C()
{
  result = qword_27F215F60;
  if (!qword_27F215F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215F68, &qword_24F9414F0);
    sub_24E602068(&qword_27F214778, &qword_27F214780, &qword_24F93D800, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215F60);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_24E6729C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E672A08(uint64_t a1)
{
  v2 = type metadata accessor for LargeButtonContentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E672A64()
{
  result = qword_27F215FE8;
  if (!qword_27F215FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215FE8);
  }

  return result;
}

unint64_t sub_24E672ABC()
{
  result = qword_27F215FF0;
  if (!qword_27F215FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215FF8, &qword_24F941630);
    sub_24E672338();
    sub_24E602068(&qword_27F215EA8, &qword_27F215E28, &qword_24F941340, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215FF0);
  }

  return result;
}

unint64_t sub_24E672B78()
{
  result = qword_27F216000;
  if (!qword_27F216000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216008, &qword_24F941638);
    sub_24E602068(&qword_27F216010, &qword_27F216018, &unk_24F941640, &unk_24F977290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216000);
  }

  return result;
}

uint64_t RemoveFriendSuggestionAction.suggestion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_24E672C48(v2, v3);
}

uint64_t sub_24E672C50()
{
  if (*v0)
  {
    return 0x726579616C70;
  }

  else
  {
    return 0x746361746E6F63;
  }
}

uint64_t sub_24E672C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746361746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24E672D60(uint64_t a1)
{
  v2 = sub_24E673308();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E672D9C(uint64_t a1)
{
  v2 = sub_24E673308();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E672DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24E672E84(uint64_t a1)
{
  v2 = sub_24E6733B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E672EC0(uint64_t a1)
{
  v2 = sub_24E6733B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E672F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24E672F9C(uint64_t a1)
{
  v2 = sub_24E67335C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E672FD8(uint64_t a1)
{
  v2 = sub_24E67335C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoveFriendSuggestionAction.Suggestion.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216020, &qword_24F941650);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216028, &qword_24F941658);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216030, &qword_24F941660);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = *v1;
  v23 = v1[1];
  v24 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E673308();
  sub_24F92D128();
  if (v13)
  {
    v26 = 1;
    sub_24E67335C();
    v14 = v20;
    sub_24F92CC98();
    v15 = v22;
    sub_24F92CD08();
    (*(v21 + 8))(v14, v15);
  }

  else
  {
    v25 = 0;
    sub_24E6733B0();
    sub_24F92CC98();
    v16 = v19;
    sub_24F92CD08();
    (*(v18 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_24E673308()
{
  result = qword_27F216038;
  if (!qword_27F216038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216038);
  }

  return result;
}

unint64_t sub_24E67335C()
{
  result = qword_27F216040;
  if (!qword_27F216040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216040);
  }

  return result;
}

unint64_t sub_24E6733B0()
{
  result = qword_27F216048;
  if (!qword_27F216048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216048);
  }

  return result;
}

uint64_t RemoveFriendSuggestionAction.Suggestion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216050, &qword_24F941668);
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216058, &qword_24F941670);
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216060, &unk_24F941678);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24E673308();
  v13 = v34;
  sub_24F92D108();
  if (!v13)
  {
    v34 = v9;
    v14 = sub_24F92CC78();
    v15 = (2 * *(v14 + 16)) | 1;
    v36 = v14;
    v37 = v14 + 32;
    v38 = 0;
    v39 = v15;
    v16 = sub_24E643430();
    v17 = v8;
    if (v16 == 2 || v38 != v39 >> 1)
    {
      v24 = sub_24F92C918();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
      *v26 = &type metadata for RemoveFriendSuggestionAction.Suggestion;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v34 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = v16;
      if (v16)
      {
        v41 = 1;
        sub_24E67335C();
        sub_24F92CBA8();
        v19 = v33;
        v18 = v34;
        v20 = v30;
        v21 = sub_24F92CC28();
        v23 = v22;
        (*(v32 + 8))(v4, v20);
      }

      else
      {
        v41 = 0;
        sub_24E6733B0();
        v28 = v7;
        sub_24F92CBA8();
        v19 = v33;
        v18 = v34;
        v21 = sub_24F92CC28();
        v23 = v29;
        (*(v31 + 8))(v28, v5);
      }

      (*(v18 + 8))(v11, v17);
      swift_unknownObjectRelease();
      *v19 = v21;
      *(v19 + 8) = v23;
      *(v19 + 16) = v40 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t RemoveFriendSuggestionAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveFriendSuggestionAction(0) + 20);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RemoveFriendSuggestionAction(uint64_t a1)
{
  result = qword_27F216098;
  if (!qword_27F216098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E6739E8()
{
  if (*v0)
  {
    return 0x654D6E6F69746361;
  }

  else
  {
    return 0x6974736567677573;
  }
}

uint64_t sub_24E673A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6974736567677573 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24E673B20(uint64_t a1)
{
  v2 = sub_24E673D6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E673B5C(uint64_t a1)
{
  v2 = sub_24E673D6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoveFriendSuggestionAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216068, &qword_24F941688);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E673D6C();
  sub_24F92D128();
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v13 = *v3;
  v14 = v9;
  v15 = v10;
  v12[7] = 0;
  sub_24E672C48(v13, v9);
  sub_24E673DC0();
  sub_24F92CD48();
  sub_24E63FFA4(v13, v14);
  if (!v2)
  {
    type metadata accessor for RemoveFriendSuggestionAction(0);
    LOBYTE(v13) = 1;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24E673D6C()
{
  result = qword_27F216070;
  if (!qword_27F216070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216070);
  }

  return result;
}

unint64_t sub_24E673DC0()
{
  result = qword_27F216078;
  if (!qword_27F216078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216078);
  }

  return result;
}

uint64_t RemoveFriendSuggestionAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = sub_24F928AD8();
  v18 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216088, &qword_24F941690);
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v17 - v6;
  v8 = type metadata accessor for RemoveFriendSuggestionAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E673D6C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v8;
  v11 = v10;
  v13 = v20;
  v12 = v21;
  v25 = 0;
  sub_24E674130();
  v14 = v22;
  sub_24F92CC68();
  v15 = v24;
  *v11 = v23;
  *(v11 + 16) = v15;
  LOBYTE(v23) = 1;
  sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
  sub_24F92CC68();
  (*(v13 + 8))(v7, v14);
  (*(v18 + 32))(v11 + *(v17 + 20), v5, v12);
  sub_24E6741C8(v11, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E67422C(v11);
}

unint64_t sub_24E674130()
{
  result = qword_27F216090;
  if (!qword_27F216090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216090);
  }

  return result;
}

uint64_t sub_24E674184(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_24F928AD8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E6741C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveFriendSuggestionAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E67422C(uint64_t a1)
{
  v2 = type metadata accessor for RemoveFriendSuggestionAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E674288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24F928AD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24E674340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E6743F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24E674498(uint64_t a1)
{
  result = sub_24F928AD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E674520(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24E674568(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_24E67460C()
{
  result = qword_27F2160A8;
  if (!qword_27F2160A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2160A8);
  }

  return result;
}

unint64_t sub_24E674664()
{
  result = qword_27F2160B0;
  if (!qword_27F2160B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2160B0);
  }

  return result;
}

unint64_t sub_24E6746BC()
{
  result = qword_27F2160B8;
  if (!qword_27F2160B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2160B8);
  }

  return result;
}

unint64_t sub_24E674714()
{
  result = qword_27F2160C0;
  if (!qword_27F2160C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2160C0);
  }

  return result;
}

unint64_t sub_24E67476C()
{
  result = qword_27F2160C8;
  if (!qword_27F2160C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2160C8);
  }

  return result;
}

unint64_t sub_24E6747C4()
{
  result = qword_27F2160D0;
  if (!qword_27F2160D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2160D0);
  }

  return result;
}

unint64_t sub_24E67481C()
{
  result = qword_27F2160D8;
  if (!qword_27F2160D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2160D8);
  }

  return result;
}

unint64_t sub_24E674874()
{
  result = qword_27F2160E0;
  if (!qword_27F2160E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2160E0);
  }

  return result;
}

unint64_t sub_24E6748CC()
{
  result = qword_27F2160E8;
  if (!qword_27F2160E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2160E8);
  }

  return result;
}

unint64_t sub_24E674924()
{
  result = qword_27F2160F0;
  if (!qword_27F2160F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2160F0);
  }

  return result;
}

unint64_t sub_24E67497C()
{
  result = qword_27F2160F8;
  if (!qword_27F2160F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2160F8);
  }

  return result;
}

unint64_t sub_24E6749D4()
{
  result = qword_27F216100;
  if (!qword_27F216100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216100);
  }

  return result;
}

uint64_t sub_24E674A30()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24E674B1C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 56);
  v16 = *(*a1 + 88);
  v4 = *(v1 + 72);
  v15[2] = v3;
  v15[3] = v4;
  v15[1] = v2;
  v15[0] = *(v1 + 24);
  v21 = v16;
  v5 = *(v1 + 40);
  v19 = *(v1 + 56);
  v20 = v4;
  v17 = *(v1 + 24);
  v18 = v5;
  v12 = v19;
  v13 = v4;
  v14 = v16;
  v10 = v17;
  v11 = v5;
  swift_beginAccess();
  v6 = *(v1 + 112);
  if (v6 && v6 >> 62)
  {
    sub_24F92C738();
  }

  sub_24E674F88(v15, v8);
  sub_24E674EDC();
  sub_24F926928();
  v8[2] = v12;
  v8[3] = v13;
  v9 = v14;
  v8[0] = v10;
  v8[1] = v11;
  return sub_24E674FC0(v8);
}

uint64_t sub_24E674C34()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216108, &qword_24F941E48);
  sub_24E602068(&qword_27F216110, &qword_27F216118, &qword_24F941E50, MEMORY[0x277D83980]);
  sub_24E674EDC();
  swift_getOpaqueTypeConformance2();
  sub_24E674F30();
  return sub_24F923788();
}

uint64_t sub_24E674D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v2;
  v11 = *(a1 + 64);
  v3 = v11;
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  *(a2 + 32) = v9;
  *(a2 + 48) = v2;
  *(a2 + 64) = v3;
  *a2 = v5;
  *(a2 + 16) = v4;
  return sub_24E674F88(v8, v7);
}

uint64_t sub_24E674D9C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2161A8, &qword_24F941FE8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2161B0, &qword_24F941FF0);
  sub_24E602068(&qword_27F2161B8, &qword_27F2161B0, &qword_24F941FF0, MEMORY[0x277D83980]);
  sub_24E674EDC();
  sub_24E6774A0();
  return sub_24F927238();
}

uint64_t sub_24E674EA8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

unint64_t sub_24E674EDC()
{
  result = qword_27F216120;
  if (!qword_27F216120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216120);
  }

  return result;
}

unint64_t sub_24E674F30()
{
  result = qword_27F216128;
  if (!qword_27F216128)
  {
    type metadata accessor for GSKDebugMetricsImpressionsView.TreeNode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216128);
  }

  return result;
}

uint64_t sub_24E674FF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E675040(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E6750A4()
{
  result = qword_27F216130;
  if (!qword_27F216130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216138, &qword_24F941EA8);
    sub_24E674EDC();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F216140, &qword_27F216148, &qword_24F941EB0, MEMORY[0x277CDD9E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216130);
  }

  return result;
}

uint64_t sub_24E6751A8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216160, &qword_24F941F20);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216168, &qword_24F941F28);
  MEMORY[0x28223BE20](v8 - 8);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v42 = *(v47 - 8);
  v13 = v42;
  MEMORY[0x28223BE20](v47);
  v46 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  v48 = *a1;
  sub_24F92CD88();
  v18 = sub_24F925B88();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v48 = v18;
  v49 = v20;
  v22 &= 1u;
  v50 = v22;
  v51 = v24;
  v41 = v17;
  sub_24F9268B8();
  sub_24E600B40(v18, v20, v22);

  v25 = v12;
  *v12 = sub_24F924C98();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v26 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216170, &qword_24F941F38) + 44)];
  v40 = v12;
  sub_24E675600(a1, v26);
  *v7 = sub_24F924CA8();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216178, &qword_24F941F40);
  sub_24E675880(a1, &v7[*(v27 + 44)]);
  v28 = *(v13 + 16);
  v29 = v46;
  v30 = v47;
  v28(v46, v17, v47);
  v31 = v43;
  sub_24E60169C(v25, v43, &qword_27F216168, &qword_24F941F28);
  v32 = v44;
  sub_24E60169C(v7, v44, &qword_27F216160, &qword_24F941F20);
  v33 = v45;
  v28(v45, v29, v30);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216180, &unk_24F941F48);
  sub_24E60169C(v31, &v33[v34[12]], &qword_27F216168, &qword_24F941F28);
  v35 = &v33[v34[16]];
  *v35 = 0;
  v35[8] = 1;
  sub_24E60169C(v32, &v33[v34[20]], &qword_27F216160, &qword_24F941F20);
  sub_24E601704(v7, &qword_27F216160, &qword_24F941F20);
  sub_24E601704(v40, &qword_27F216168, &qword_24F941F28);
  v36 = *(v42 + 8);
  v37 = v47;
  v36(v41, v47);
  sub_24E601704(v32, &qword_27F216160, &qword_24F941F20);
  sub_24E601704(v31, &qword_27F216168, &qword_24F941F28);
  return (v36)(v46, v37);
}

uint64_t sub_24E675600@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = a1[2];
  v11 = a1[4];
  v28 = a1[1];
  v29 = v10;
  v30 = 0;
  v31 = MEMORY[0x277D84F90];
  sub_24F9268B8();
  if (v11)
  {

    LODWORD(v28) = sub_24F9251C8();
    v12 = sub_24F925C58();
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v11 = v16 & 1;
    sub_24E5FD138(v12, v14, v16 & 1);
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v18 = 0;
  }

  v19 = *(v4 + 16);
  v19(v6, v9, v3);
  v26 = v9;
  v20 = v6;
  v21 = v27;
  v19(v27, v20, v3);
  v22 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216190, &unk_24F941F60) + 48)];
  sub_24E65D2B4(v12, v14, v11, v18);
  sub_24E65D2F8(v12, v14, v11, v18);
  *v22 = v12;
  v22[1] = v14;
  v22[2] = v11;
  v22[3] = v18;
  v23 = *(v4 + 8);
  v23(v26, v3);
  sub_24E65D2F8(v12, v14, v11, v18);
  return (v23)(v20, v3);
}

uint64_t sub_24E675880@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D8, &qword_24F939730);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = a1[6];
  v15 = a1[8];
  if (v14)
  {
    v26 = a1[5];
    v27 = v14;
    v28 = 0;
    v29 = MEMORY[0x277D84F90];
    sub_24F9268B8();
    (*(v5 + 32))(v13, v7, v4);
    (*(v5 + 56))(v13, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(&v25 - v12, 1, 1, v4);
  }

  if (v15)
  {

    LODWORD(v26) = sub_24F9251C8();
    v16 = sub_24F925C58();
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v15 = v20 & 1;
    sub_24E5FD138(v16, v18, v20 & 1);
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v22 = 0;
  }

  sub_24E60169C(v13, v10, &qword_27F2128D8, &qword_24F939730);
  sub_24E60169C(v10, a2, &qword_27F2128D8, &qword_24F939730);
  v23 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216188, &qword_24F941F58) + 48));
  sub_24E65D2B4(v16, v18, v15, v22);
  sub_24E65D2F8(v16, v18, v15, v22);
  *v23 = v16;
  v23[1] = v18;
  v23[2] = v15;
  v23[3] = v22;
  sub_24E601704(v13, &qword_27F2128D8, &qword_24F939730);
  sub_24E65D2F8(v16, v18, v15, v22);
  return sub_24E601704(v10, &qword_27F2128D8, &qword_24F939730);
}

uint64_t sub_24E675B8C@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 48);
  v8[2] = *(v2 + 32);
  v8[3] = v4;
  v9 = *(v2 + 64);
  v5 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v5;
  *a2 = sub_24F9249A8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216158, &qword_24F941F18);
  return sub_24E6751A8(v8, (a2 + *(v6 + 44)));
}

uint64_t sub_24E675C00(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24E861E6C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24E675C7C(v6);
  return sub_24F92C958();
}

uint64_t sub_24E675C7C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24F92CD78();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for GSKDebugMetricsImpressionsView.TreeNode();
        v6 = sub_24F92B618();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_24E675DEC(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_24E675D80(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24E675D80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(v7 + 24) >= *(*v9 + 24))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24E675DEC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v82;
    if (!*v82)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_24E86164C(v10);
      v10 = result;
    }

    v77 = *(v10 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = *&v10[16 * v77];
        v79 = *&v10[16 * v77 + 24];
        sub_24E67635C((*a3 + 8 * v78), (*a3 + 8 * *&v10[16 * v77 + 16]), (*a3 + 8 * v79), v5);
        if (v4)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_24E86164C(v10);
        }

        if (v77 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v80 = &v10[16 * v77];
        *v80 = v78;
        *(v80 + 1) = v79;
        result = sub_24E8615C0(v77 - 1);
        v77 = *(v10 + 2);
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*(*a3 + 8 * v9) + 24);
      v13 = *(*(*a3 + 8 * v11) + 24);
      v14 = v11 + 2;
      v15 = v12;
      while (v7 != v14)
      {
        v16 = *(*(*a3 + 8 * v14) + 24);
        v17 = (v12 < v13) ^ (v16 >= v15);
        ++v14;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v9 = v14 - 1;
          if (v12 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v12 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v18 = 8 * v9 - 8;
        v19 = 8 * v11;
        v20 = v9;
        v21 = v11;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v22 = *(v23 + v19);
            *(v23 + v19) = *(v23 + v18);
            *(v23 + v18) = v22;
          }

          ++v21;
          v18 -= 8;
          v19 += 8;
        }

        while (v21 < v20);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v32 = *(v10 + 3);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_24E615ED8((v32 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v33;
    v34 = &v10[16 * v5];
    *(v34 + 4) = v11;
    *(v34 + 5) = v9;
    v35 = *v82;
    if (!*v82)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v10 + 4);
          v38 = *(v10 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v10[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_107;
          }

          v59 = &v10[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v63 = &v10[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_71:
        if (v58)
        {
          goto LABEL_106;
        }

        v66 = &v10[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_109;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_78:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v75 = *&v10[16 * v74 + 32];
        v5 = *&v10[16 * v36 + 40];
        sub_24E67635C((*a3 + 8 * v75), (*a3 + 8 * *&v10[16 * v36 + 32]), (*a3 + 8 * v5), v35);
        if (v4)
        {
        }

        if (v5 < v75)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_24E86164C(v10);
        }

        if (v74 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v76 = &v10[16 * v74];
        *(v76 + 4) = v75;
        *(v76 + 5) = v5;
        result = sub_24E8615C0(v36);
        v33 = *(v10 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v10[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v10[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_108;
      }

      if (v52 >= v44)
      {
        v70 = &v10[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_112;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 8 * v9 - 8;
  v26 = v11 - v9;
LABEL_30:
  v27 = *(v24 + 8 * v9);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    v30 = *v29;
    if (*(v27 + 24) >= *(*v29 + 24))
    {
LABEL_29:
      ++v9;
      v25 += 8;
      --v26;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    *v29 = v27;
    v29[1] = v30;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_24E67635C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v6 + 24) < *(*v4 + 24))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(v21 + 24) < *(*v17 + 24))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_24E676560@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_24E76D644(25705, 0xE200000000000000), (v5 & 1) == 0) || (sub_24E643A9C(*(a1 + 56) + 32 * v4, v28), (swift_dynamicCast() & 1) == 0))
  {

    v10 = 0;
    v6 = 0;
    v7 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
LABEL_9:
    v16 = 0;
    v17 = 0;
    goto LABEL_10;
  }

  v6 = v26;
  v7 = v27;
  if (!*(a1 + 16))
  {
    v10 = -1;
    goto LABEL_23;
  }

  v8 = sub_24E76D644(0x6973736572706D69, 0xEF7865646E496E6FLL);
  if ((v9 & 1) != 0 && (sub_24E643A9C(*(a1 + 56) + 32 * v8, v28), swift_dynamicCast()))
  {
    v10 = v26;
  }

  else
  {
    v10 = -1;
  }

  if (!*(a1 + 16))
  {
LABEL_23:
    v13 = 0;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  v18 = sub_24E76D644(0x657079546469, 0xE600000000000000);
  if (v19)
  {
    sub_24E643A9C(*(a1 + 56) + 32 * v18, v28);
    v20 = swift_dynamicCast();
    if (v20)
    {
      v12 = v26;
    }

    else
    {
      v12 = 0;
    }

    if (v20)
    {
      v13 = v27;
    }

    else
    {
      v13 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_33;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    if (!*(a1 + 16))
    {
LABEL_33:
      v14 = 0;
      v15 = 0;
      goto LABEL_34;
    }
  }

  v21 = sub_24E76D644(1701667182, 0xE400000000000000);
  if ((v22 & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_24E643A9C(*(a1 + 56) + 32 * v21, v28);
  v23 = swift_dynamicCast();
  if (v23)
  {
    v14 = v26;
  }

  else
  {
    v14 = 0;
  }

  if (v23)
  {
    v15 = v27;
  }

  else
  {
    v15 = 0;
  }

LABEL_34:
  if (!*(a1 + 16))
  {
LABEL_38:

    goto LABEL_9;
  }

LABEL_35:
  v24 = sub_24E76D644(0x6973736572706D69, 0xEE00657079546E6FLL);
  if ((v25 & 1) == 0)
  {
    goto LABEL_38;
  }

  sub_24E643A9C(*(a1 + 56) + 32 * v24, v28);

  result = swift_dynamicCast();
  v16 = v26;
  v17 = v27;
  if (!result)
  {
    v16 = 0;
    v17 = 0;
  }

LABEL_10:
  *a2 = v10;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v12;
  a2[4] = v13;
  a2[5] = v14;
  a2[6] = v15;
  a2[7] = v16;
  a2[8] = v17;
  return result;
}

unint64_t sub_24E676838(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v3 = sub_24E6090B8(MEMORY[0x277D84F90]);
  v74 = v2;
  v75 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    v65 = v2;
    goto LABEL_23;
  }

  v5 = 0;
  v6 = a1 + 32;
  v65 = MEMORY[0x277D84F90];
  v7 = 0xEC00000064496E6FLL;
  while (2)
  {
    v8 = v5;
    while (1)
    {
      if (v8 >= v4)
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_74;
      }

      v9 = *(v6 + 8 * v8);
      swift_bridgeObjectRetain_n();
      sub_24E676560(v9, &v76);
      v10 = v77;
      if (v77)
      {
        break;
      }

LABEL_5:

      ++v8;
      if (v5 == v4)
      {
        goto LABEL_23;
      }
    }

    v81 = v78;
    v82 = v79;
    v83 = v80;
    v84 = v76;
    if (!*(v9 + 16) || (v11 = sub_24E76D644(0x6973736572706D69, 0xEC00000064496E6FLL), (v12 & 1) == 0) || (sub_24E643A9C(*(v9 + 56) + 32 * v11, v73), (swift_dynamicCast() & 1) == 0))
    {
      sub_24E676FCC(&v76);
      goto LABEL_5;
    }

    if (*(v9 + 16) && (v13 = sub_24E76D644(0xD000000000000012, 0x800000024FA42AC0), (v14 & 1) != 0))
    {
      sub_24E643A9C(*(v9 + 56) + 32 * v13, v73);

      v15 = swift_dynamicCast();
      v16 = v72;
      if (!v15)
      {
        v16 = 0;
      }

      v68 = v16;
      v17 = v15 ^ 1;
    }

    else
    {

      v68 = 0;
      v17 = 1;
    }

    v66 = v17;
    type metadata accessor for GSKDebugMetricsImpressionsView.TreeNode();
    v18 = swift_allocObject();
    *(v18 + 112) = 0;
    v19 = (v18 + 112);
    v20 = v83;
    *(v18 + 24) = v84;
    v21 = v82;
    *(v18 + 48) = v81;
    *(v18 + 64) = v21;
    *(v18 + 16) = v72;
    *(v18 + 40) = v10;
    *(v18 + 80) = v20;
    *(v18 + 96) = v68;
    *(v18 + 104) = v66;
    v22 = swift_beginAccess();
    *v19 = 0;
    MEMORY[0x253050F00](v22);
    if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    sub_24F92B638();
    v65 = v74;
    if (v5 != v4)
    {
      continue;
    }

    break;
  }

LABEL_23:
  v7 = v65;
  if (v65 >> 62)
  {
LABEL_84:
    v23 = sub_24F92C738();
  }

  else
  {
    v23 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = 0;
  if (!v23)
  {
LABEL_72:

    v74 = sub_24EC4E0B4(v62, v61);
    sub_24E675C00(&v74);

    return v74;
  }

  v70 = v23;
  v71 = v7 & 0xC000000000000001;
  v69 = v7 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v71)
    {
      v26 = MEMORY[0x253052270](v24, v7);
      v27 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (v24 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_81;
      }

      v26 = *(v7 + 8 * v24 + 32);

      v27 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_75;
      }
    }

    v28 = *(v26 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73[0] = v3;
    v30 = sub_24E7728CC(v28);
    v32 = v3[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_76;
    }

    v36 = v31;
    if (v3[3] >= v35)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = v30;
        sub_24E8ADC30();
        v30 = v40;
        v3 = v73[0];
        if ((v36 & 1) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_27;
      }

LABEL_40:
      v3 = v73[0];
      if ((v36 & 1) == 0)
      {
LABEL_41:
        v3[(v30 >> 6) + 8] |= 1 << v30;
        *(v3[6] + 8 * v30) = v28;
        *(v3[7] + 8 * v30) = v26;

        v38 = v3[2];
        v34 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v34)
        {
          goto LABEL_78;
        }

        v3[2] = v39;
        goto LABEL_28;
      }

LABEL_27:
      *(v3[7] + 8 * v30) = v26;

LABEL_28:
      ++v24;
      v25 = v70;
      if (v27 == v70)
      {
        v41 = 0;
        v24 = 0;
        v42 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v71)
          {
            v43 = MEMORY[0x253052270](v41, v7);
            v44 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              goto LABEL_77;
            }
          }

          else
          {
            if (v41 >= *(v69 + 16))
            {
              goto LABEL_82;
            }

            v43 = *(v7 + 8 * v41 + 32);

            v44 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              goto LABEL_77;
            }
          }

          v45 = v3[2];
          if (*(v43 + 104))
          {
            if (!v45)
            {
              goto LABEL_79;
            }

            sub_24E7728CC(*(v43 + 16));
            if ((v46 & 1) == 0)
            {
              goto LABEL_80;
            }

            MEMORY[0x253050F00](v47);
            if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24F92B5E8();
              v7 = v65;
            }

            sub_24F92B638();

            v42 = v75;
          }

          else if (v45 && (v48 = sub_24E7728CC(*(v43 + 96)), (v49 & 1) != 0))
          {
            v67 = v42;
            v7 = v3[7];
            v50 = *(v7 + 8 * v48);
            swift_beginAccess();
            v51 = *(v50 + 112);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_24F941C80;
            v53 = sub_24E7728CC(*(v43 + 16));
            if ((v54 & 1) == 0)
            {
              goto LABEL_83;
            }

            v55 = MEMORY[0x277D84F90];
            if (v51)
            {
              v55 = v51;
            }

            *(inited + 32) = *(v7 + 8 * v53);
            v74 = v55;

            sub_24EA0A5A0(inited);
            v56 = v74;
            if (v74 >> 62)
            {
              v58 = sub_24F92C738();
              v7 = v65;
              if (v58)
              {
                v59 = v58;
                v57 = sub_24EAEACA0(v58, 0);

                sub_24EA0FC48(v57 + 32, v59, v56);
                v64 = v60;

                if (v64 != v59)
                {
                  __break(1u);
                  goto LABEL_85;
                }
              }

              else
              {
                v57 = MEMORY[0x277D84F90];
              }
            }

            else
            {
              v57 = v74 & 0xFFFFFFFFFFFFFF8;

              v7 = v65;
            }

            v74 = v57;
            sub_24E675C00(&v74);

            *(v50 + 112) = v74;

            v25 = v70;
            v42 = v67;
          }

          else
          {
          }

          ++v41;
          if (v44 == v25)
          {
            goto LABEL_72;
          }
        }
      }

      continue;
    }

    break;
  }

  sub_24E8990A0(v35, isUniquelyReferenced_nonNull_native);
  v30 = sub_24E7728CC(v28);
  if ((v36 & 1) == (v37 & 1))
  {
    goto LABEL_40;
  }

LABEL_85:
  sub_24F92CF88();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_24E676FCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216150, &qword_24F941F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E677034@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_24E76D644(25705, 0xE200000000000000), (v5 & 1) == 0) || (sub_24E643A9C(*(a1 + 56) + 32 * v4, v28), (swift_dynamicCast() & 1) == 0))
  {

    v10 = 0;
    v6 = 0;
    v7 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
LABEL_9:
    v16 = 0;
    v17 = 0;
    goto LABEL_10;
  }

  v6 = v26;
  v7 = v27;
  if (!*(a1 + 16))
  {
    v10 = -1;
LABEL_23:
    v13 = 0;
    v12 = 0;
    goto LABEL_24;
  }

  v8 = sub_24E76D644(0xD000000000000010, 0x800000024FA45740);
  if ((v9 & 1) != 0 && (sub_24E643A9C(*(a1 + 56) + 32 * v8, v28), swift_dynamicCast()))
  {
    v10 = v26;
  }

  else
  {
    v10 = -1;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v18 = sub_24E76D644(0x657079546469, 0xE600000000000000);
  if (v19)
  {
    sub_24E643A9C(*(a1 + 56) + 32 * v18, v28);
    v20 = swift_dynamicCast();
    if (v20)
    {
      v12 = v26;
    }

    else
    {
      v12 = 0;
    }

    if (v20)
    {
      v13 = v27;
    }

    else
    {
      v13 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_24;
    }
  }

  v23 = sub_24E76D644(1701667182, 0xE400000000000000);
  if (v24)
  {
    sub_24E643A9C(*(a1 + 56) + 32 * v23, v28);
    v25 = swift_dynamicCast();
    if (v25)
    {
      v14 = v26;
    }

    else
    {
      v14 = 0;
    }

    if (v25)
    {
      v15 = v27;
    }

    else
    {
      v15 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_37;
    }

    goto LABEL_25;
  }

LABEL_24:
  v14 = 0;
  v15 = 0;
  if (!*(a1 + 16))
  {
LABEL_37:

    goto LABEL_9;
  }

LABEL_25:
  v21 = sub_24E76D644(0x6E6F697461636F6CLL, 0xEC00000065707954);
  if ((v22 & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_24E643A9C(*(a1 + 56) + 32 * v21, v28);

  result = swift_dynamicCast();
  v16 = v26;
  v17 = v27;
  if (!result)
  {
    v16 = 0;
    v17 = 0;
  }

LABEL_10:
  *a2 = v10;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v12;
  a2[4] = v13;
  a2[5] = v14;
  a2[6] = v15;
  a2[7] = v16;
  a2[8] = v17;
  return result;
}

uint64_t sub_24E6772DC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  do
  {
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      result = sub_24E677034(v5, &v14);
      if (v15)
      {
        break;
      }

      if (v2 == v1)
      {
        return v3;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615EEC(0, *(v3 + 16) + 1, 1, v3);
      v3 = result;
    }

    v7 = *(v3 + 16);
    v6 = *(v3 + 24);
    if (v7 >= v6 >> 1)
    {
      result = sub_24E615EEC((v6 > 1), v7 + 1, 1, v3);
      v3 = result;
    }

    v13 = v18;
    v11 = v16;
    v12 = v17;
    v8 = v14;
    v10 = v15;
    *(v3 + 16) = v7 + 1;
    v9 = v3 + 72 * v7;
    *(v9 + 32) = v8;
    *(v9 + 96) = v13;
    *(v9 + 64) = v11;
    *(v9 + 80) = v12;
    *(v9 + 48) = v10;
  }

  while (v2 != v1);
  return v3;
}

unint64_t sub_24E6774A0()
{
  result = qword_27F2161C0;
  if (!qword_27F2161C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2161C0);
  }

  return result;
}

uint64_t sub_24E677540()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A60, &qword_24F93B620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x7463417974706D65;
  *(inited + 40) = 0xEB000000006E6F69;
  v1 = sub_24F9284A8();
  v2 = MEMORY[0x277D21B60];
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 64) = 0x7463417472656C61;
  *(inited + 72) = 0xEB000000006E6F69;
  v3 = sub_24F92A638();
  v4 = MEMORY[0x277D223B8];
  *(inited + 80) = v3;
  *(inited + 88) = v4;
  strcpy((inited + 96), "flowBackAction");
  *(inited + 111) = -18;
  v5 = sub_24F92A6B8();
  v6 = MEMORY[0x277D223D8];
  *(inited + 112) = v5;
  *(inited + 120) = v6;
  strcpy((inited + 128), "compoundAction");
  *(inited + 143) = -18;
  v7 = sub_24F928DD8();
  v8 = MEMORY[0x277D21D10];
  *(inited + 144) = v7;
  *(inited + 152) = v8;
  *(inited + 160) = 0x69746341776F6C66;
  *(inited + 168) = 0xEA00000000006E6FLL;
  v9 = type metadata accessor for FlowAction(0);
  v10 = sub_24E6791D4(&qword_27F216400, type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
  *(inited + 176) = v9;
  *(inited + 184) = v10;
  v11 = sub_24E6090CC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A68, &qword_24F93B628);
  result = swift_arrayDestroy();
  qword_27F2161D8 = v11;
  return result;
}

char *sub_24E6776FC()
{
  result = sub_24E67771C();
  off_27F2161E0 = result;
  return result;
}

char *sub_24E67771C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CB0, &qword_24F93B8E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F942010;
  v1 = type metadata accessor for AcceptChallengeAction(0);
  v2 = sub_24E6791D4(&qword_27F216200, type metadata accessor for AcceptChallengeAction, &unk_24F9EDC88);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for AddFriendAction(0);
  v4 = sub_24E6791D4(&qword_27F216208, type metadata accessor for AddFriendAction, &protocol conformance descriptor for AddFriendAction);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for AlertAction(0);
  v6 = sub_24E6791D4(&qword_27F216210, type metadata accessor for AlertAction, &protocol conformance descriptor for Action);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for ArcadeLaunchAttributionAction(0);
  v8 = sub_24E6791D4(&qword_27F216218, type metadata accessor for ArcadeLaunchAttributionAction, &protocol conformance descriptor for Action);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = type metadata accessor for ArcadeSubscriptionStateAction(0);
  v10 = sub_24E6791D4(&qword_27F216220, type metadata accessor for ArcadeSubscriptionStateAction, &protocol conformance descriptor for Action);
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  v11 = type metadata accessor for CallAction(0);
  v12 = sub_24E6791D4(&qword_27F216228, type metadata accessor for CallAction, &protocol conformance descriptor for CallAction);
  *(v0 + 112) = v11;
  *(v0 + 120) = v12;
  v13 = type metadata accessor for CallInviteAction(0);
  v14 = sub_24E6791D4(&qword_27F216230, type metadata accessor for CallInviteAction, &protocol conformance descriptor for CallInviteAction);
  *(v0 + 128) = v13;
  *(v0 + 136) = v14;
  v15 = type metadata accessor for CancelFriendInvitationAction(0);
  v16 = sub_24E6791D4(&qword_27F216238, type metadata accessor for CancelFriendInvitationAction, &protocol conformance descriptor for CancelFriendInvitationAction);
  *(v0 + 144) = v15;
  *(v0 + 152) = v16;
  v17 = type metadata accessor for CancelPreorderAction(0);
  v18 = sub_24E6791D4(&qword_27F216240, type metadata accessor for CancelPreorderAction, &protocol conformance descriptor for Action);
  *(v0 + 160) = v17;
  *(v0 + 168) = v18;
  v19 = type metadata accessor for CancelSignInAction(0);
  v20 = sub_24E6791D4(&qword_27F216248, type metadata accessor for CancelSignInAction, &unk_24F9BBAA4);
  *(v0 + 176) = v19;
  *(v0 + 184) = v20;
  v21 = type metadata accessor for ClearCachesDebugAction(0);
  v22 = sub_24E6791D4(&qword_27F216250, type metadata accessor for ClearCachesDebugAction, &protocol conformance descriptor for ClearCachesDebugAction);
  *(v0 + 192) = v21;
  *(v0 + 200) = v22;
  v23 = type metadata accessor for CompleteOnboardProfileCreationAction(0);
  v24 = sub_24E6791D4(&qword_27F216258, type metadata accessor for CompleteOnboardProfileCreationAction, &unk_24F9F5F88);
  *(v0 + 208) = v23;
  *(v0 + 216) = v24;
  v25 = type metadata accessor for CompleteOnboardWelcomeAction(0);
  v26 = sub_24E6791D4(&qword_27F216260, type metadata accessor for CompleteOnboardWelcomeAction, &unk_24F9C5BB0);
  *(v0 + 224) = v25;
  *(v0 + 232) = v26;
  v27 = type metadata accessor for CompleteWelcomeMoltresAction(0);
  v28 = sub_24E6791D4(&qword_27F216268, type metadata accessor for CompleteWelcomeMoltresAction, &unk_24F94D020);
  *(v0 + 240) = v27;
  *(v0 + 248) = v28;
  ImpedimentAction = type metadata accessor for ContinueToNextImpedimentAction(0);
  v30 = sub_24E6791D4(&qword_27F216270, type metadata accessor for ContinueToNextImpedimentAction, &unk_24FA1F800);
  *(v0 + 256) = ImpedimentAction;
  *(v0 + 264) = v30;
  v31 = type metadata accessor for CloseAppAction(0);
  v32 = sub_24E6791D4(&qword_27F216278, type metadata accessor for CloseAppAction, &unk_24F95609C);
  *(v0 + 272) = v31;
  *(v0 + 280) = v32;
  ChallengeRematchAction = type metadata accessor for CreateChallengeRematchAction(0);
  v34 = sub_24E6791D4(&qword_27F216280, type metadata accessor for CreateChallengeRematchAction, "᷅2L");
  *(v0 + 288) = ChallengeRematchAction;
  *(v0 + 296) = v34;
  v35 = type metadata accessor for DismissDashboardAction(0);
  v36 = sub_24E6791D4(&qword_27F216288, type metadata accessor for DismissDashboardAction, &unk_24F9A5050);
  *(v0 + 304) = v35;
  *(v0 + 312) = v36;
  v37 = type metadata accessor for DraftPlayTogetherAction(0);
  v38 = sub_24E6791D4(&qword_27F216290, type metadata accessor for DraftPlayTogetherAction, &unk_24F9F0D98);
  *(v0 + 320) = v37;
  *(v0 + 328) = v38;
  v39 = type metadata accessor for GameCenterSignOutAction(0);
  v40 = sub_24E6791D4(&qword_27F216298, type metadata accessor for GameCenterSignOutAction, &unk_24F9D63B8);
  *(v0 + 336) = v39;
  *(v0 + 344) = v40;
  v41 = type metadata accessor for GamesSignInAction(0);
  v42 = sub_24E6791D4(&qword_27F2162A0, type metadata accessor for GamesSignInAction, &protocol conformance descriptor for GamesSignInAction);
  *(v0 + 352) = v41;
  *(v0 + 360) = v42;
  v43 = type metadata accessor for GSKDebugMetricsOverlayAction(0);
  v44 = sub_24E6791D4(&qword_27F2162A8, type metadata accessor for GSKDebugMetricsOverlayAction, &unk_24F9E7130);
  *(v0 + 368) = v43;
  *(v0 + 376) = v44;
  v45 = type metadata accessor for GSKTabChangeAction(0);
  v46 = sub_24E6791D4(&qword_27F2162B0, type metadata accessor for GSKTabChangeAction, &protocol conformance descriptor for GSKTabChangeAction);
  *(v0 + 384) = v45;
  *(v0 + 392) = v46;
  v47 = type metadata accessor for GSKWrappedAction(0);
  v48 = sub_24E6791D4(&qword_27F2162B8, type metadata accessor for GSKWrappedAction, &protocol conformance descriptor for Action);
  *(v0 + 400) = v47;
  *(v0 + 408) = v48;
  v49 = type metadata accessor for InvitePlayersToChallengeAction(0);
  v50 = sub_24E6791D4(&qword_27F2162C0, type metadata accessor for InvitePlayersToChallengeAction, &protocol conformance descriptor for InvitePlayersToChallengeAction);
  *(v0 + 416) = v49;
  *(v0 + 424) = v50;
  v51 = type metadata accessor for InvitePlayersToMultiplayerActivityAction(0);
  v52 = sub_24E6791D4(&qword_27F214298, type metadata accessor for InvitePlayersToMultiplayerActivityAction, &unk_24F9D4CF4);
  *(v0 + 432) = v51;
  *(v0 + 440) = v52;
  v53 = type metadata accessor for LaunchChallengeDefinitionAction(0);
  v54 = sub_24E6791D4(&qword_27F2162C8, type metadata accessor for LaunchChallengeDefinitionAction, &unk_24F975B48);
  *(v0 + 448) = v53;
  *(v0 + 456) = v54;
  v55 = type metadata accessor for LaunchGameAction(0);
  v56 = sub_24E6791D4(&qword_27F2162D0, type metadata accessor for LaunchGameAction, &protocol conformance descriptor for LaunchGameAction);
  *(v0 + 464) = v55;
  *(v0 + 472) = v56;
  v57 = type metadata accessor for LaunchGameActivityAction(0);
  v58 = sub_24E6791D4(&qword_27F2162D8, type metadata accessor for LaunchGameActivityAction, &unk_24F9D15B0);
  *(v0 + 480) = v57;
  *(v0 + 488) = v58;
  v59 = type metadata accessor for LaunchGameClipAction(0);
  v60 = sub_24E6791D4(&qword_27F2162E0, type metadata accessor for LaunchGameClipAction, &protocol conformance descriptor for LaunchGameClipAction);
  *(v0 + 496) = v59;
  *(v0 + 504) = v60;
  v61 = type metadata accessor for LaunchDashboardAction(0);
  v62 = sub_24E6791D4(&qword_27F214868, type metadata accessor for LaunchDashboardAction, &protocol conformance descriptor for LaunchDashboardAction);
  *(v0 + 512) = v61;
  *(v0 + 520) = v62;
  v63 = type metadata accessor for LeaveChallengeAction(0);
  v64 = sub_24E6791D4(&qword_27F2162E8, type metadata accessor for LeaveChallengeAction, &unk_24FA2BC30);
  *(v0 + 528) = v63;
  *(v0 + 536) = v64;
  v65 = type metadata accessor for ProgressPerformAction(0);
  v66 = sub_24E6791D4(&qword_27F2162F0, type metadata accessor for ProgressPerformAction, &unk_24F975958);
  *(v0 + 544) = v65;
  *(v0 + 552) = v66;
  v67 = type metadata accessor for OpenURLAction(0);
  v68 = sub_24E6791D4(&qword_27F2162F8, type metadata accessor for OpenURLAction, &protocol conformance descriptor for OpenURLAction);
  *(v0 + 560) = v67;
  *(v0 + 568) = v68;
  v69 = type metadata accessor for PresentPromptAction(0);
  v70 = sub_24E6791D4(&qword_27F216300, type metadata accessor for PresentPromptAction, &protocol conformance descriptor for PresentPromptAction);
  *(v0 + 576) = v69;
  *(v0 + 584) = v70;
  v71 = type metadata accessor for RequestReviewAction(0);
  v72 = sub_24E6791D4(&qword_27F216308, type metadata accessor for RequestReviewAction, &unk_24FA257B4);
  *(v0 + 592) = v71;
  *(v0 + 600) = v72;
  v73 = type metadata accessor for RateLimitedAction(0);
  v74 = sub_24E6791D4(&qword_27F216310, type metadata accessor for RateLimitedAction, &protocol conformance descriptor for Action);
  *(v0 + 608) = v73;
  *(v0 + 616) = v74;
  refreshed = type metadata accessor for RefreshAppStateUpdateRegistryAction(0);
  v76 = sub_24E6791D4(&qword_27F216318, type metadata accessor for RefreshAppStateUpdateRegistryAction, &unk_24F95FE2C);
  *(v0 + 624) = refreshed;
  *(v0 + 632) = v76;
  v77 = type metadata accessor for RefreshChallengeDetailAction(0);
  v78 = sub_24E6791D4(&qword_27F216320, type metadata accessor for RefreshChallengeDetailAction, &unk_24F994188);
  *(v0 + 640) = v77;
  *(v0 + 648) = v78;
  v79 = type metadata accessor for RefreshFeedsAction(0);
  v80 = sub_24E6791D4(&qword_27F216328, type metadata accessor for RefreshFeedsAction, &unk_24F9B0534);
  *(v0 + 656) = v79;
  *(v0 + 664) = v80;
  v81 = type metadata accessor for RefreshPageAction(0);
  v82 = sub_24E6791D4(&qword_27F216330, type metadata accessor for RefreshPageAction, &protocol conformance descriptor for RefreshPageAction);
  *(v0 + 672) = v81;
  *(v0 + 680) = v82;
  v83 = type metadata accessor for RematchChallengeAction(0);
  v84 = sub_24E6791D4(&qword_27F216338, type metadata accessor for RematchChallengeAction, &unk_24F973928);
  *(v0 + 688) = v83;
  *(v0 + 696) = v84;
  v85 = type metadata accessor for RemoveFriendAction(0);
  v86 = sub_24E6791D4(&qword_27F216340, type metadata accessor for RemoveFriendAction, &protocol conformance descriptor for RemoveFriendAction);
  *(v0 + 704) = v85;
  *(v0 + 712) = v86;
  v87 = type metadata accessor for RemoveFriendSuggestionAction(0);
  v88 = sub_24E6791D4(&qword_27F216348, type metadata accessor for RemoveFriendSuggestionAction, &protocol conformance descriptor for RemoveFriendSuggestionAction);
  *(v0 + 720) = v87;
  *(v0 + 728) = v88;
  v89 = type metadata accessor for ReportFriendRequestDidSendAction(0);
  v90 = sub_24E6791D4(&qword_27F216350, type metadata accessor for ReportFriendRequestDidSendAction, &unk_24F953504);
  *(v0 + 736) = v89;
  *(v0 + 744) = v90;
  v91 = type metadata accessor for ReportPromptDidPresentAction(0);
  v92 = sub_24E6791D4(&qword_27F216358, type metadata accessor for ReportPromptDidPresentAction, &unk_24FA088C8);
  *(v0 + 752) = v91;
  *(v0 + 760) = v92;
  v93 = type metadata accessor for ResetRequestReviewPropertiesIfNeededAction(0);
  v94 = sub_24E6791D4(&qword_27F216360, type metadata accessor for ResetRequestReviewPropertiesIfNeededAction, &protocol conformance descriptor for ResetRequestReviewPropertiesIfNeededAction);
  *(v0 + 768) = v93;
  *(v0 + 776) = v94;
  v95 = type metadata accessor for ResetDebugSettingsAction(0);
  v96 = sub_24E6791D4(&qword_27F216368, type metadata accessor for ResetDebugSettingsAction, &protocol conformance descriptor for ResetDebugSettingsAction);
  *(v0 + 784) = v95;
  *(v0 + 792) = v96;
  v97 = type metadata accessor for ResetTipDatastoreDebugSettingsAction(0);
  v98 = sub_24E6791D4(&qword_27F216370, type metadata accessor for ResetTipDatastoreDebugSettingsAction, &protocol conformance descriptor for ResetTipDatastoreDebugSettingsAction);
  *(v0 + 800) = v97;
  *(v0 + 808) = v98;
  v99 = type metadata accessor for SaveAvatarAction(0);
  v100 = sub_24E6791D4(&qword_27F216378, type metadata accessor for SaveAvatarAction, &unk_24FA18334);
  *(v0 + 816) = v99;
  *(v0 + 824) = v100;
  v101 = type metadata accessor for SaveRecentSearchAction(0);
  v102 = sub_24E6791D4(&qword_27F216380, type metadata accessor for SaveRecentSearchAction, &protocol conformance descriptor for SaveRecentSearchAction);
  *(v0 + 832) = v101;
  *(v0 + 840) = v102;
  v103 = type metadata accessor for SetContactsIntegrationConsentAction(0);
  v104 = sub_24E6791D4(&qword_27F216388, type metadata accessor for SetContactsIntegrationConsentAction, &unk_24F9742BC);
  *(v0 + 848) = v103;
  *(v0 + 856) = v104;
  v105 = type metadata accessor for SetNicknameAction(0);
  v106 = sub_24E6791D4(&qword_27F216390, type metadata accessor for SetNicknameAction, &unk_24F994310);
  *(v0 + 864) = v105;
  *(v0 + 872) = v106;
  v107 = type metadata accessor for SetProfilePrivacyAction(0);
  v108 = sub_24E6791D4(&qword_27F216398, type metadata accessor for SetProfilePrivacyAction, &unk_24FA1ECA8);
  *(v0 + 880) = v107;
  *(v0 + 888) = v108;
  updated = type metadata accessor for UpdateActivityDefinitionAction(0);
  v110 = sub_24E6791D4(&qword_27F2163A0, type metadata accessor for UpdateActivityDefinitionAction, &unk_24F9B0898);
  *(v0 + 896) = updated;
  *(v0 + 904) = v110;
  v111 = type metadata accessor for UpdateActivityInstanceAction(0);
  v112 = sub_24E6791D4(&qword_27F2163A8, type metadata accessor for UpdateActivityInstanceAction, &unk_24F9C1768);
  *(v0 + 912) = v111;
  *(v0 + 920) = v112;
  v113 = type metadata accessor for UpdateChallengeDefinitionAction(0);
  v114 = sub_24E6791D4(&qword_27F2163B0, type metadata accessor for UpdateChallengeDefinitionAction, &unk_24F9A2EC8);
  *(v0 + 928) = v113;
  *(v0 + 936) = v114;
  v115 = type metadata accessor for UpdateChallengeLeaderboardAction(0);
  v116 = sub_24E6791D4(&qword_27F2163B8, type metadata accessor for UpdateChallengeLeaderboardAction, "qp~2");
  *(v0 + 944) = v115;
  *(v0 + 952) = v116;
  v117 = type metadata accessor for UpdateChallengePlayersToInviteAction(0);
  v118 = sub_24E6791D4(&qword_27F2163C0, type metadata accessor for UpdateChallengePlayersToInviteAction, &unk_24F948268);
  *(v0 + 960) = v117;
  *(v0 + 968) = v118;
  v119 = type metadata accessor for UpdateCrossUseConsentAction(0);
  v120 = sub_24E6791D4(&qword_27F23F500, type metadata accessor for UpdateCrossUseConsentAction, &unk_24F99B27C);
  *(v0 + 976) = v119;
  *(v0 + 984) = v120;
  v121 = type metadata accessor for UpdateFriendRequestAction(0);
  v122 = sub_24E6791D4(&qword_27F2163C8, type metadata accessor for UpdateFriendRequestAction, &protocol conformance descriptor for UpdateFriendRequestAction);
  *(v0 + 992) = v121;
  *(v0 + 1000) = v122;
  v123 = type metadata accessor for UpdateFriendRequestsPrivacyStateAction(0);
  v124 = sub_24E6791D4(&qword_27F215530, type metadata accessor for UpdateFriendRequestsPrivacyStateAction, &protocol conformance descriptor for UpdateFriendRequestsPrivacyStateAction);
  *(v0 + 1008) = v123;
  *(v0 + 1016) = v124;
  v125 = type metadata accessor for UpdateGamedActivityInstanceAction(0);
  v126 = sub_24E6791D4(&qword_27F2163D0, type metadata accessor for UpdateGamedActivityInstanceAction, &unk_24F9DE3BC);
  *(v0 + 1024) = v125;
  *(v0 + 1032) = v126;
  v127 = type metadata accessor for UpdateImpedimentCompletionStatesAction(0);
  v128 = sub_24E6791D4(&qword_27F2163D8, type metadata accessor for UpdateImpedimentCompletionStatesAction, &unk_24F985A68);
  *(v0 + 1040) = v127;
  *(v0 + 1048) = v128;
  v129 = type metadata accessor for UpdateNotificationTopicsAction(0);
  v130 = sub_24E6791D4(&qword_27F2163E0, type metadata accessor for UpdateNotificationTopicsAction, &protocol conformance descriptor for UpdateNotificationTopicsAction);
  *(v0 + 1056) = v129;
  *(v0 + 1064) = v130;
  v131 = type metadata accessor for UpdatePlayTogetherGameAction(0);
  v132 = sub_24E6791D4(&qword_27F2163E8, type metadata accessor for UpdatePlayTogetherGameAction, &protocol conformance descriptor for UpdatePlayTogetherGameAction);
  *(v0 + 1072) = v131;
  *(v0 + 1080) = v132;
  v133 = type metadata accessor for WaitAction(0);
  v134 = sub_24E6791D4(&qword_27F2163F0, type metadata accessor for WaitAction, &unk_24F9FD360);
  *(v0 + 1088) = v133;
  *(v0 + 1096) = v134;
  v135 = type metadata accessor for InviteChallengeViaMessagesAction(0);
  v136 = sub_24E6791D4(&qword_27F2163F8, type metadata accessor for InviteChallengeViaMessagesAction, &unk_24F947470);
  result = sub_24E616014(1, 68, 1, v0);
  *(result + 2) = 68;
  *(result + 138) = v135;
  *(result + 139) = v136;
  return result;
}

void *sub_24E678A20()
{
  result = sub_24E678A40();
  off_27F2161E8 = result;
  return result;
}

uint64_t sub_24E678A40()
{
  if (qword_27F210F28 != -1)
  {
    swift_once();
  }

  v0 = qword_27F23A738;
  v1 = qword_27F20FD88;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_27F2161D8;
  v3 = qword_27F20FD90;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = *(off_27F2161E0 + 2);
  if (v4)
  {
    v20 = v0;
    v5 = (off_27F2161E0 + 32);
    v6 = MEMORY[0x277D84F90];
    do
    {
      v21 = *v5;
      v22 = *v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2161F8, &unk_24F9ECFA0);
      v7 = sub_24F92B188();
      v9 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_24E616118(0, v6[2] + 1, 1, v6);
      }

      v11 = v6[2];
      v10 = v6[3];
      if (v11 >= v10 >> 1)
      {
        v6 = sub_24E616118((v10 > 1), v11 + 1, 1, v6);
      }

      v6[2] = v11 + 1;
      v12 = &v6[4 * v11];
      v12[4] = v7;
      v12[5] = v9;
      *(v12 + 3) = v21;
      ++v5;
      --v4;
    }

    while (v4);
    v0 = v20;
  }

  else if (!*(MEMORY[0x277D84F90] + 16))
  {
    v13 = MEMORY[0x277D84F98];
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213310, &unk_24F93AAE0);
  v13 = sub_24F92CB58();
LABEL_17:
  *&v22 = v13;

  sub_24F15E680(v14, 1, &v22);

  v15 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v22 = v2;
  sub_24E678F54(v15, sub_24F15F3A4, 0, isUniquelyReferenced_nonNull_native, &v22);

  v17 = v22;
  v18 = swift_isUniquelyReferenced_nonNull_native();
  *&v22 = v0;
  sub_24E678F54(v17, sub_24F15F3A4, 0, v18, &v22);

  return v22;
}

uint64_t static ActionKinds.table.getter()
{
  if (qword_27F20FD98 != -1)
  {
    swift_once();
  }
}

unint64_t sub_24E678D94()
{
  result = qword_27F2161F0;
  if (!qword_27F2161F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2161F0);
  }

  return result;
}

uint64_t sub_24E678DE8()
{
  if (qword_27F20FD98 != -1)
  {
    swift_once();
  }
}

uint64_t sub_24E678E44()
{
  if (qword_27F20FD98 != -1)
  {
    swift_once();
  }

  v0 = off_27F2161E8;

  v1 = sub_24F92A018();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0;
  sub_24F15F06C(v1, sub_24F15F3A4, 0, isUniquelyReferenced_nonNull_native, &v6);

  sub_24F15EA0C(v6);
  v4 = v3;

  return v4;
}

uint64_t sub_24E678F54(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = *(a1 + 56);
    v16 = (*(a1 + 48) + v14);
    v17 = v16[1];
    v42[0] = *v16;
    v42[1] = v17;
    v43 = *(v15 + v14);

    a2(&v39, v42);

    v18 = v39;
    v19 = v40;
    v37 = v41;
    v20 = *v44;
    v22 = sub_24E76D644(v39, v40);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v26 = v21;
    if (v20[3] >= v25)
    {
      if ((v38 & 1) == 0)
      {
        sub_24E8ADC44();
      }
    }

    else
    {
      sub_24E8990B4(v25, v38 & 1);
      v27 = sub_24E76D644(v18, v19);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_27;
      }

      v22 = v27;
    }

    v9 &= v9 - 1;
    v29 = *v44;
    if (v26)
    {

      *(v29[7] + 16 * v22) = v37;
    }

    else
    {
      v29[(v22 >> 6) + 8] |= 1 << v22;
      v30 = (v29[6] + 16 * v22);
      *v30 = v18;
      v30[1] = v19;
      *(v29[7] + 16 * v22) = v37;
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_26;
      }

      v29[2] = v33;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_24E6586B4(a1);
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24E6791D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E67925C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449726579616C70 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24E6792EC(uint64_t a1)
{
  v2 = sub_24E6794FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E679328(uint64_t a1)
{
  v2 = sub_24E6794FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayerProfileDataIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216408, &unk_24F9420C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6794FC();

  sub_24F92D128();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  sub_24E61B71C(&qword_27F2137A0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_24F92CD48();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24E6794FC()
{
  result = qword_27F216410;
  if (!qword_27F216410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216410);
  }

  return result;
}

uint64_t PlayerProfileDataIntent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216418, &qword_24F9420D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6794FC();
  sub_24F92D108();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    sub_24E61B71C(&qword_27F216420, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24E679768()
{
  result = qword_27F216428;
  if (!qword_27F216428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216428);
  }

  return result;
}

unint64_t sub_24E6797C0()
{
  result = qword_27F216430;
  if (!qword_27F216430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216430);
  }

  return result;
}

unint64_t sub_24E679818()
{
  result = qword_27F216438;
  if (!qword_27F216438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216438);
  }

  return result;
}

id sub_24E679898@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v5 = result;
  if (result)
  {
    result = v3;
  }

  *a2 = v5;
  return result;
}

void sub_24E6798EC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 windows];
  sub_24E679B04();
  v4 = sub_24F92B5A8();

  *a2 = v4;
}

id sub_24E679A94()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24E679B04()
{
  result = qword_27F216450;
  if (!qword_27F216450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F216450);
  }

  return result;
}

__n128 sub_24E679B7C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_24F9249A8();
  sub_24E679D70(v24);
  *&v19[7] = v24[0];
  *&v19[23] = v24[1];
  *&v19[39] = v25[0];
  *&v19[48] = *(v25 + 9);
  sub_24F927618();
  sub_24F9238C8();
  *&v20[7] = v21;
  *&v20[23] = v22;
  *&v20[39] = v23;
  v5 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  KeyPath = swift_getKeyPath();
  sub_24F926C88();
  v7 = sub_24F926D08();

  v8 = sub_24F925808();
  v9 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C0, &qword_24F9423B8) + 36));
  v10 = *(sub_24F924258() + 20);
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_24F924B38();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  __asm { FMOV            V0.2D, #14.0 }

  *v9 = _Q0;
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0) + 36)] = 256;
  *(a3 + 17) = *v19;
  *(a3 + 33) = *&v19[16];
  *(a3 + 49) = *&v19[32];
  *(a3 + 65) = *&v19[48];
  *(a3 + 81) = *v20;
  *a3 = v4;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 97) = *&v20[16];
  result = *&v20[32];
  *(a3 + 113) = *&v20[32];
  *(a3 + 128) = *(&v23 + 1);
  *(a3 + 136) = KeyPath;
  *(a3 + 144) = v5;
  *(a3 + 152) = v7;
  *(a3 + 160) = v8;
  return result;
}

uint64_t sub_24E679D70@<X0>(uint64_t a3@<X8>)
{
  sub_24E600AEC();

  v4 = sub_24F925E18();
  v6 = v5;
  v8 = v7 & 1;
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  *(a3 + 32) = v7 & 1;
  *(a3 + 40) = v9;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  sub_24E5FD138(v4, v5, v7 & 1);

  sub_24E600B40(v4, v6, v8);
}

unint64_t sub_24E679E48()
{
  result = qword_27F2164D0;
  if (!qword_27F2164D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2164C0, &qword_24F9423B8);
    sub_24E679F00();
    sub_24E602068(&qword_27F216528, &qword_27F2164C8, &qword_24F9423C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2164D0);
  }

  return result;
}

unint64_t sub_24E679F00()
{
  result = qword_27F2164D8;
  if (!qword_27F2164D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2164E0, &qword_24F9423C8);
    sub_24E679FB8();
    sub_24E602068(&qword_27F216518, &qword_27F216520, &qword_24F9423F0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2164D8);
  }

  return result;
}

unint64_t sub_24E679FB8()
{
  result = qword_27F2164E8;
  if (!qword_27F2164E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2164F0, &qword_24F9423D0);
    sub_24E67A070();
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20, qword_24F94A180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2164E8);
  }

  return result;
}

unint64_t sub_24E67A070()
{
  result = qword_27F2164F8;
  if (!qword_27F2164F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216500, &qword_24F9423D8);
    sub_24E602068(&qword_27F216508, &qword_27F216510, &unk_24F9423E0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2164F8);
  }

  return result;
}

uint64_t sub_24E67A128(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24E67A184(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_24E67A20C@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216530, &qword_24F9424B0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216538, &qword_24F9424B8);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216540, &qword_24F9424C0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  sub_24F927468();
  *&v6[*(v4 + 64)] = 256;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v6, v10, &qword_27F216530, &qword_24F9424B0);
  v15 = &v10[*(v8 + 44)];
  v16 = v46;
  *(v15 + 4) = v45;
  *(v15 + 5) = v16;
  *(v15 + 6) = v47;
  v17 = v42;
  *v15 = v41;
  *(v15 + 1) = v17;
  v18 = v44;
  *(v15 + 2) = v43;
  *(v15 + 3) = v18;
  v19 = *v2;
  v20 = v2[1];
  v21 = swift_allocObject();
  v22 = *(v2 + 1);
  *(v21 + 16) = *v2;
  *(v21 + 32) = v22;
  *(v21 + 48) = v2[4];
  sub_24E6009C8(v10, v14, &qword_27F216538, &qword_24F9424B8);
  v23 = &v14[*(v12 + 44)];
  *v23 = sub_24E67A5CC;
  *(v23 + 1) = 0;
  *(v23 + 2) = sub_24E67A80C;
  *(v23 + 3) = v21;
  v48[0] = v20;
  sub_24E67A864(v48, v33);
  sub_24E67A5F8(v33);
  v34 = v33[0];
  v35 = v33[1];
  v36 = v33[2];
  v37 = v33[3];
  v31 = v19;
  v32 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550, &qword_24F9424D0);
  sub_24F926F38();
  v31 = v19;
  v32 = v20;
  sub_24F926F38();
  tan(*(v2 + 2) * 3.14159265 / 180.0);
  sub_24F927618();
  sub_24F9238C8();
  v24 = v30;
  sub_24E6009C8(v14, v30, &qword_27F216540, &qword_24F9424C0);
  v25 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216558, &qword_24F9424D8) + 36);
  result = v37;
  v27 = v39;
  v28 = v40;
  *(v25 + 64) = v38;
  *(v25 + 80) = v27;
  *(v25 + 96) = v28;
  v29 = v35;
  *v25 = v34;
  *(v25 + 16) = v29;
  *(v25 + 32) = v36;
  *(v25 + 48) = result;
  return result;
}

void sub_24E67A5CC(void *a2@<X8>)
{
  sub_24F923998();
  *a2 = v3;
  a2[1] = v4;
}

void sub_24E67A5F8(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F93FC20;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  sub_24F926D08();

  *(v3 + 32) = sub_24F9273C8();
  *(v3 + 40) = v4;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  sub_24F926D08();

  *(v3 + 48) = sub_24F9273C8();
  *(v3 + 56) = v5;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  sub_24F926D08();

  *(v3 + 64) = sub_24F9273C8();
  *(v3 + 72) = v6;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  sub_24F926D08();

  *(v3 + 80) = sub_24F9273C8();
  *(v3 + 88) = v7;
  sub_24F9273D8();
  sub_24F927898();
  sub_24F923BD8();
  v8 = *(v1 + 16) * 0.0174532925;
  sub_24F9278A8();
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
}

uint64_t sub_24E67A7D4()
{

  return swift_deallocObject();
}

uint64_t sub_24E67A864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216548, &qword_24F9424C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E67A8D8()
{
  result = qword_27F216568;
  if (!qword_27F216568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216558, &qword_24F9424D8);
    sub_24E67A990();
    sub_24E602068(&qword_27F216598, &qword_27F2165A0, &unk_24F9424F0, MEMORY[0x277CDF520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216568);
  }

  return result;
}

unint64_t sub_24E67A990()
{
  result = qword_27F216570;
  if (!qword_27F216570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216540, &qword_24F9424C0);
    sub_24E67AA48();
    sub_24E602068(&qword_27F216588, &qword_27F216590, &unk_24F9E2890, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216570);
  }

  return result;
}

unint64_t sub_24E67AA48()
{
  result = qword_27F216578;
  if (!qword_27F216578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216538, &qword_24F9424B8);
    sub_24E602068(&qword_27F216580, &qword_27F216530, &qword_24F9424B0, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216578);
  }

  return result;
}

uint64_t sub_24E67AB00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216688, &unk_24F942920);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E67C7E4();
  sub_24F92D108();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216698, &unk_24FA201C0);
    sub_24E602068(&qword_27F2166A0, &qword_27F216698, &unk_24FA201C0, MEMORY[0x277D21AB0]);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    v9 = v14;
    v16 = v13;
    v17 = v14;
    v10 = v15;
    v18 = v15;
    *a2 = v13;
    *(a2 + 16) = v9;
    *(a2 + 32) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24E67ACE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024FA45910 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24F92CE08();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24E67AD74(uint64_t a1)
{
  v2 = sub_24E67C7E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E67ADB0(uint64_t a1)
{
  v2 = sub_24E67C7E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E67AE24(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2166A8, &qword_24F942930);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E67C7E4();
  sub_24F92D128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216698, &unk_24FA201C0);
  sub_24E602068(&qword_27F2166B0, &qword_27F216698, &unk_24FA201C0, MEMORY[0x277D21AA8]);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24E67AFA4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216648, &qword_24F942620);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E67C398();
  sub_24F92D128();
  v10 = 0;
  type metadata accessor for GSKShelf(0);
  sub_24E67C2E4(&qword_27F216618, &protocol conformance descriptor for GSKShelf);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for PaginatedShelfContent(0);
    v9 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216638, &qword_24F942618);
    sub_24E602068(&qword_27F216650, &qword_27F216638, &qword_24F942618, MEMORY[0x277D21FE0]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E67B19C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for GSKShelf(0);
  MEMORY[0x28223BE20](v4);
  v19 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216628, &qword_24F942610);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for PaginatedShelfContent(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v11[*(v12 + 28)];
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E67C398();
  sub_24F92D108();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24E601704(v13, &qword_27F216638, &qword_24F942618);
  }

  else
  {
    v22[0] = 0;
    sub_24E67C2E4(&qword_27F2165F8, &protocol conformance descriptor for GSKShelf);
    v14 = v19;
    v15 = v21;
    sub_24F92CC68();
    sub_24E67C3EC(v14, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216638, &qword_24F942618);
    v22[55] = 1;
    sub_24E602068(&qword_27F216640, &qword_27F216638, &qword_24F942618, MEMORY[0x277D21FE8]);
    sub_24F92CC68();
    (*(v20 + 8))(v8, v15);
    sub_24E61DA68(v22, v13, &qword_27F216638, &qword_24F942618);
    sub_24E67C450(v11, v18);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24E67C4B4(v11, type metadata accessor for PaginatedShelfContent);
  }
}

uint64_t sub_24E67B50C()
{
  if (*v0)
  {
    return 0x656761507478656ELL;
  }

  else
  {
    return 0x666C656873;
  }
}

uint64_t sub_24E67B550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x666C656873 && a2 == 0xE500000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656761507478656ELL && a2 == 0xEE00746E65746E49)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24E67B630(uint64_t a1)
{
  v2 = sub_24E67C398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E67B66C(uint64_t a1)
{
  v2 = sub_24E67C398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E67B6D8()
{
  if (*v0)
  {
    return 0x656761507478656ELL;
  }

  else
  {
    return 0x7365766C656873;
  }
}

uint64_t sub_24E67B720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365766C656873 && a2 == 0xE700000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656761507478656ELL && a2 == 0xEE00746E65746E49)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24E67B804(uint64_t a1)
{
  v2 = sub_24E67C208();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E67B840(uint64_t a1)
{
  v2 = sub_24E67C208();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E67B87C()
{

  sub_24E601704(v0 + 24, &qword_27F2165E0, &qword_24F9425F8);

  return swift_deallocClassInstance();
}

uint64_t sub_24E67B904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GSKShelf(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24E67B9E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GSKShelf(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t type metadata accessor for PaginatedShelfContent(uint64_t a1)
{
  result = qword_27F2165A8;
  if (!qword_27F2165A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E67BAEC(uint64_t a1)
{
  type metadata accessor for GSKShelf(319);
  if (v1 <= 0x3F)
  {
    sub_24E67BB70(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E67BB70(uint64_t a1)
{
  if (!qword_27F2165B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2165C0, qword_24F942548);
    sub_24E602068(&qword_27F2165C8, &qword_27F2165C0, qword_24F942548, &protocol conformance descriptor for _IntentKindTable_ReturningAnyJSIntent<A, B>);
    v1 = sub_24F929658();
    if (!v2)
    {
      atomic_store(v1, &qword_27F2165B8);
    }
  }
}

uint64_t sub_24E67BC14(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216608, &qword_24F942608);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E67C208();
  sub_24F92D128();
  v11[0] = *(v3 + 16);
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2165E8, &qword_24F942600);
  sub_24E67C25C(&qword_27F216610, &qword_27F216618, &protocol conformance descriptor for GSKShelf, MEMORY[0x277D83948]);
  sub_24F92CD48();
  if (!v2)
  {
    swift_beginAccess();
    sub_24E67C328(v3 + 24, v11);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2165E0, &qword_24F9425F8);
    sub_24E602068(&qword_27F216620, &qword_27F2165E0, &qword_24F9425F8, MEMORY[0x277D21FE0]);
    sub_24F92CD48();
    sub_24E601704(v11, &qword_27F2165E0, &qword_24F9425F8);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t *sub_24E67BE5C(void *a1)
{
  v3 = v1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2165D0, &qword_24F9425F0);
  v5 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v7 = &v12 - v6;
  *(v3 + 24) = 0u;
  *(v3 + 56) = 0;
  *(v3 + 40) = 0u;
  v8 = a1[3];
  v16 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_24E67C208();
  sub_24F92D108();
  if (v2)
  {
    sub_24E601704(v3 + 24, &qword_27F2165E0, &qword_24F9425F8);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2165E8, &qword_24F942600);
    v14 = 0;
    sub_24E67C25C(&qword_27F2165F0, &qword_27F2165F8, &protocol conformance descriptor for GSKShelf, MEMORY[0x277D83978]);
    v10 = v13;
    sub_24F92CC68();
    *(v3 + 16) = v15[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2165E0, &qword_24F9425F8);
    v14 = 1;
    sub_24E602068(&qword_27F216600, &qword_27F2165E0, &qword_24F9425F8, MEMORY[0x277D21FE8]);
    sub_24F92CC68();
    (*(v9 + 8))(v7, v10);
    swift_beginAccess();
    sub_24E61DA68(v15, v3 + 24, &qword_27F2165E0, &qword_24F9425F8);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v3;
}

uint64_t *sub_24E67C18C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_24E67BE5C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_24E67C208()
{
  result = qword_27F2165D8;
  if (!qword_27F2165D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2165D8);
  }

  return result;
}

uint64_t sub_24E67C25C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2165E8, &qword_24F942600);
    sub_24E67C2E4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E67C2E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GSKShelf(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E67C328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2165E0, &qword_24F9425F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E67C398()
{
  result = qword_27F216630;
  if (!qword_27F216630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216630);
  }

  return result;
}

uint64_t sub_24E67C3EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKShelf(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E67C450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaginatedShelfContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E67C4B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E67C514(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E67C55C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E67C5D8()
{
  result = qword_27F216658;
  if (!qword_27F216658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216658);
  }

  return result;
}

unint64_t sub_24E67C630()
{
  result = qword_27F216660;
  if (!qword_27F216660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216660);
  }

  return result;
}

unint64_t sub_24E67C688()
{
  result = qword_27F216668;
  if (!qword_27F216668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216668);
  }

  return result;
}

unint64_t sub_24E67C6E0()
{
  result = qword_27F216670;
  if (!qword_27F216670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216670);
  }

  return result;
}

unint64_t sub_24E67C738()
{
  result = qword_27F216678;
  if (!qword_27F216678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216678);
  }

  return result;
}

unint64_t sub_24E67C790()
{
  result = qword_27F216680;
  if (!qword_27F216680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216680);
  }

  return result;
}

unint64_t sub_24E67C7E4()
{
  result = qword_27F216690;
  if (!qword_27F216690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216690);
  }

  return result;
}

unint64_t sub_24E67C84C()
{
  result = qword_27F2166B8;
  if (!qword_27F2166B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2166B8);
  }

  return result;
}

unint64_t sub_24E67C8A4()
{
  result = qword_27F2166C0;
  if (!qword_27F2166C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2166C0);
  }

  return result;
}

unint64_t sub_24E67C8FC()
{
  result = qword_27F2166C8;
  if (!qword_27F2166C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2166C8);
  }

  return result;
}

void sub_24E67C950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2166D0, &qword_24F942A58);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [objc_opt_self() proxyForLocalPlayer];
  v11 = [v10 gameServicePrivate];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24F93DE60;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;

  v13 = sub_24F92B588();

  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v9, v6);
  aBlock[4] = sub_24E67CD9C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E67CE28;
  aBlock[3] = &block_descriptor_2;
  v16 = _Block_copy(aBlock);

  [v11 getGameMetadataForBundleIDs:v13 handler:v16];
  _Block_release(v16);
  swift_unknownObjectRelease();
}

void sub_24E67CBC4(unint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2166D0, &qword_24F942A58);
    sub_24F92B788();
    return;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_12:
    sub_24E67CF2C();
    swift_allocError();
    goto LABEL_3;
  }

  v6 = a1;
  v7 = sub_24F92C738();
  a1 = v6;
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x253052270](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(a1 + 32);
  }

  v4 = v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D0C048]) initWithInternalRepresentation_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2166D0, &qword_24F942A58);
  sub_24F92B798();
}

uint64_t sub_24E67CD08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2166D0, &qword_24F942A58);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_24E67CD9C(unint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2166D0, &qword_24F942A58);

  sub_24E67CBC4(a1, a2);
}

void sub_24E67CE28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_24E67CEE0();
  v5 = sub_24F92B5A8();

  v6 = a3;
  v4(v5, a3);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24E67CEE0()
{
  result = qword_27F235840;
  if (!qword_27F235840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F235840);
  }

  return result;
}

unint64_t sub_24E67CF2C()
{
  result = qword_27F2166D8;
  if (!qword_27F2166D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2166D8);
  }

  return result;
}

unint64_t sub_24E67CF94()
{
  result = qword_27F2166E0;
  if (!qword_27F2166E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2166E0);
  }

  return result;
}

uint64_t RecentSearchesDataIntentImplementation.perform(_:objectGraph:)(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E67D094;

  return sub_24E67D354(a1);
}

uint64_t sub_24E67D094(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_24E67D194(uint64_t a1, void *a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24E67D244;

  return sub_24E67D354(a2);
}

uint64_t sub_24E67D244(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_24E67D354(void *a1)
{
  v2 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
  return MEMORY[0x2822009F8](sub_24E67D378, 0, 0);
}

uint64_t sub_24E67D378()
{
  v5 = v0;
  sub_24F3A3C78(v0[2], v0[3], v4);
  if (v4[1])
  {
    v1 = v4[2];
  }

  else
  {

    v1 = MEMORY[0x277D84F90];
  }

  v2 = v0[1];

  return v2(v1);
}

unint64_t sub_24E67D40C()
{
  result = qword_27F2166E8;
  if (!qword_27F2166E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2166E8);
  }

  return result;
}

uint64_t sub_24E67D494(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24E67D638(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for ActivityFeedLockup(uint64_t a1)
{
  result = qword_27F2166F0;
  if (!qword_27F2166F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E67D814(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F216700, &type metadata for ActivityFeedLockup.Badge);
    if (v2 <= 0x3F)
    {
      sub_24E67D9A0(319, &qword_27F213FD0, MEMORY[0x277D21C48]);
      if (v3 <= 0x3F)
      {
        sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_24E67D9A0(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
          if (v5 <= 0x3F)
          {
            sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
            if (v6 <= 0x3F)
            {
              sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
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

void sub_24E67D9A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24E67DA0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167E8, &qword_24F942F28);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6807F4();
  sub_24F92D128();
  v14 = 0;
  sub_24F92CCA8();
  if (!v5)
  {
    v13 = 1;
    sub_24F92CCA8();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24E67DBA0()
{
  if (*v0)
  {
    return 1954047348;
  }

  else
  {
    return 0x614E6C6F626D7973;
  }
}

uint64_t sub_24E67DBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24E67DCBC(uint64_t a1)
{
  v2 = sub_24E6807F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E67DCF8(uint64_t a1)
{
  v2 = sub_24E6807F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E67DD34@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_24E680610(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_24E67DD84(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167C8, &qword_24F942F18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E68040C();
  sub_24F92D128();
  LOBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = *(v3 + 56);
    v12 = *(v3 + 40);
    v13 = v9;
    v11[15] = 1;
    sub_24E6805BC();
    sub_24F92CCF8();
    LOBYTE(v12) = 2;
    sub_24F92CD08();
    type metadata accessor for ActivityFeedLockup(0);
    LOBYTE(v12) = 3;
    sub_24F9289E8();
    sub_24E680A58(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
    sub_24F92CCF8();
    LOBYTE(v12) = 4;
    sub_24F92CCA8();
    LOBYTE(v12) = 5;
    sub_24F929608();
    sub_24E680A58(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    LOBYTE(v12) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    LOBYTE(v12) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E67E178@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v56);
  v57 = &v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v58 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v6 - 8);
  v59 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167B0, &qword_24F942F10);
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for ActivityFeedLockup(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 28);
  v16 = sub_24F9289E8();
  v17 = *(*(v16 - 8) + 56);
  v64 = v15;
  v17(&v13[v15], 1, 1, v16);
  v18 = v11[9];
  v19 = sub_24F929608();
  v20 = *(*(v19 - 8) + 56);
  v66 = v18;
  v20(&v13[v18], 1, 1, v19);
  v21 = &v13[v11[10]];
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0;
  sub_24E61DA68(&v68, v21, qword_27F21B590, &unk_24F93BE30);
  v22 = v11[11];
  v23 = sub_24F92A6D8();
  v24 = *(*(v23 - 8) + 56);
  v65 = v22;
  v24(&v13[v22], 1, 1, v23);
  v25 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_24E68040C();
  v62 = v10;
  v26 = v63;
  sub_24F92D108();
  if (v26)
  {
    v27 = v64;
    __swift_destroy_boxed_opaque_existential_1(v67);
    v29 = v66;
LABEL_4:
    sub_24E601704(&v13[v27], &qword_27F213FB0, &qword_24F93E6B0);

    sub_24E601704(&v13[v29], &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v21, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v13[v65], &qword_27F215440, &unk_24F942BD0);
  }

  v54 = v19;
  v28 = v59;
  v63 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  v71 = 0;
  sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
  sub_24F92CC68();
  v31 = v69;
  *v13 = v68;
  *(v13 + 1) = v31;
  *(v13 + 4) = v70;
  v71 = 1;
  sub_24E6804A8();
  sub_24F92CC18();
  v27 = v64;
  v32 = *(&v68 + 1);
  v33 = v69;
  v52 = v68;
  *(v13 + 5) = v68;
  *(v13 + 6) = v32;
  v49 = v32;
  v51 = v33;
  *(v13 + 56) = v33;
  v50 = *(&v33 + 1);
  LOBYTE(v68) = 2;
  v34 = sub_24F92CC28();
  v29 = v66;
  v21 = v63;
  v53 = 0;
  *(v13 + 9) = v34;
  *(v13 + 10) = v35;
  LOBYTE(v68) = 3;
  sub_24E680A58(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
  v36 = v53;
  sub_24F92CC18();
  if (v36)
  {
    v53 = v36;
    (*(v60 + 8))(v62, v61);
    LODWORD(v62) = 1;
    v38 = v52;
    v39 = v51;
    v40 = v50;
    v41 = v49;
    __swift_destroy_boxed_opaque_existential_1(v67);
    sub_24E601704(v13, &qword_27F213F18, &qword_24F93BE20);
    sub_24E680460(v38, v41, v39, v40);
    if (v62)
    {
    }

    goto LABEL_4;
  }

  sub_24E61DA68(v28, &v13[v27], &qword_27F213FB0, &qword_24F93E6B0);
  LOBYTE(v68) = 4;
  v37 = sub_24F92CBC8();
  v42 = &v13[v11[8]];
  *v42 = v37;
  v42[1] = v43;
  LOBYTE(v68) = 5;
  sub_24E680A58(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
  v44 = v58;
  sub_24F92CC18();
  sub_24E61DA68(v44, &v13[v29], &qword_27F213E68, &unk_24F93BC80);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
  v71 = 6;
  sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
  sub_24F92CC68();
  sub_24E61DA68(&v68, v63, qword_27F24EC90, &unk_24F93C1D0);
  LOBYTE(v68) = 7;
  sub_24E65CAA0();
  v45 = v57;
  v47 = v61;
  v46 = v62;
  sub_24F92CC68();
  (*(v60 + 8))(v46, v47);
  sub_24E61DA68(v45, &v13[v65], &qword_27F215440, &unk_24F942BD0);
  sub_24E6804FC(v13, v55);
  __swift_destroy_boxed_opaque_existential_1(v67);
  return sub_24E680560(v13);
}

uint64_t sub_24E67EA70()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6575676573;
  if (v1 != 6)
  {
    v3 = 0x4D747865746E6F63;
  }

  v4 = 0x726174617661;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 2)
  {
    v5 = 1852793705;
  }

  if (*v0)
  {
    v2 = 0x6567646162;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24E67EB54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E680CCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E67EB88(uint64_t a1)
{
  v2 = sub_24E68040C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E67EBC4(uint64_t a1)
{
  v2 = sub_24E68040C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E67EC00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(v2 + *(a1 + 40), v6, qword_27F24EC90, &unk_24F93C1D0);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_24E67EC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 44), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v7, a2);
}

unint64_t sub_24E67EDC0()
{
  result = qword_27F216708;
  if (!qword_27F216708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216708);
  }

  return result;
}

uint64_t sub_24E67EE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216728, &qword_24F942DF8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19[-v5 - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216730, &qword_24F942E00);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19[-v9 - 8];
  *v6 = sub_24F9249A8();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216738, &qword_24F942E08);
  sub_24E67F114(a1, &v6[*(v11 + 44)]);
  v12 = type metadata accessor for ActivityFeedLockup(0);
  sub_24E60169C(a1 + *(v12 + 40), v19, qword_27F24EC90, &unk_24F93C1D0);
  sub_24E601704(v19, qword_27F21B590, &unk_24F93BE30);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v13 = sub_24F9248C8();
  __swift_project_value_buffer(v13, qword_27F39F078);
  sub_24E602068(&qword_27F216740, &qword_27F216728, &qword_24F942DF8, MEMORY[0x277CE1138]);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v6, &qword_27F216728, &qword_24F942DF8);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216748, &qword_24F942E10) + 36);
  v15 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v16 = type metadata accessor for GradientBackground(0);
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *(v14 + 16) = xmmword_24F93CFD0;
  *(v14 + 32) = 0x4030000000000000;
  *(v14 + 40) = 257;
  return (*(v8 + 32))(a2, v10, v7);
}

uint64_t sub_24E67F114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v73 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216750, &qword_24F942E48);
  MEMORY[0x28223BE20](v70);
  v71 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v58 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = &v58 - v7;
  v62 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v62);
  v64 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810);
  MEMORY[0x28223BE20](v66);
  v65 = &v58 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216758, &unk_24F942E60);
  MEMORY[0x28223BE20](v67);
  v11 = &v58 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216760, &qword_24F945460);
  MEMORY[0x28223BE20](v68);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v58 - v15;
  v17 = sub_24F9289E8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216768, &qword_24F942E70);
  MEMORY[0x28223BE20](v21 - 8);
  v69 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v58 - v24;
  v26 = type metadata accessor for ActivityFeedLockup(0);
  sub_24E60169C(v73 + *(v26 + 28), v16, &qword_27F213FB0, &qword_24F93E6B0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v60 = v11;
    v61 = v25;
    sub_24E601704(v16, &qword_27F213FB0, &qword_24F93E6B0);
    v27 = *(v26 + 32);
    v28 = v73;
    v29 = (v73 + v27);
    v30 = v29[1];
    if (v30)
    {
      v59 = *v29;
      v31 = type metadata accessor for PlayerAvatar.Overlay(0);
      v32 = *(*(v31 - 8) + 56);
      v33 = v63;
      v32(v63, 1, 1, v31);
      *&v78 = 0;
      v76 = 0u;
      v77 = 0u;
      v34 = v62;
      v35 = *(v62 + 20);
      v36 = v64;
      v32(v64 + v35, 1, 1, v31);
      v37 = v36 + *(v34 + 24);
      v75 = 0;
      memset(v74, 0, sizeof(v74));
      *v37 = 0u;
      *(v37 + 16) = 0u;
      *(v37 + 32) = 0;

      sub_24E61DA68(v74, v37, qword_27F21B590, &unk_24F93BE30);
      *v36 = v59;
      v36[1] = v30;
      sub_24E61DA68(v33, v36 + v35, &qword_27F22DF80, &unk_24F942E50);
      sub_24E61DA68(&v76, v37, qword_27F21B590, &unk_24F93BE30);
      LOBYTE(v76) = 7;
      v38 = v65;
      sub_24F8319B8(v36, &v76, v65);
      sub_24F927618();
      sub_24F9238C8();
      v39 = (v38 + *(v66 + 36));
      v40 = v77;
      *v39 = v76;
      v39[1] = v40;
      v39[2] = v78;
      sub_24E60169C(v38, v60, &qword_27F2233D0, &qword_24F958810);
      swift_storeEnumTagMultiPayload();
      sub_24E6801D4();
      sub_24E680290();
      v41 = v61;
      sub_24F924E28();
      sub_24E601704(v38, &qword_27F2233D0, &qword_24F958810);
      v42 = 0;
    }

    else
    {
      v42 = 1;
      v41 = v61;
    }
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    (*(v18 + 16))(v13, v20, v17);
    (*(v18 + 56))(v13, 0, 1, v17);
    v43 = type metadata accessor for GameIcon(0);
    v44 = v43[8];
    *&v13[v44] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
    swift_storeEnumTagMultiPayload();
    v13[v43[5]] = 1;
    v13[v43[6]] = 1;
    v13[v43[7]] = 0;
    sub_24F927618();
    sub_24F9238C8();
    v45 = &v13[*(v68 + 36)];
    v46 = v77;
    *v45 = v76;
    *(v45 + 1) = v46;
    *(v45 + 2) = v78;
    sub_24E60169C(v13, v11, &qword_27F216760, &qword_24F945460);
    swift_storeEnumTagMultiPayload();
    sub_24E6801D4();
    sub_24E680290();
    sub_24F924E28();
    sub_24E601704(v13, &qword_27F216760, &qword_24F945460);
    (*(v18 + 8))(v20, v17);
    v42 = 0;
    v28 = v73;
    v41 = v25;
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216770, &qword_24F942E78);
  (*(*(v47 - 8) + 56))(v41, v42, 1, v47);
  *v5 = sub_24F924C98();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216778, &qword_24F942E80);
  sub_24E67FA6C(v28, &v5[*(v48 + 44)]);
  KeyPath = swift_getKeyPath();
  v50 = v69;
  v51 = &v5[*(v70 + 36)];
  *v51 = KeyPath;
  v51[8] = 0;
  sub_24E60169C(v41, v50, &qword_27F216768, &qword_24F942E70);
  v52 = v71;
  sub_24E680164(v5, v71);
  v53 = v41;
  v54 = v72;
  sub_24E60169C(v50, v72, &qword_27F216768, &qword_24F942E70);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216780, &qword_24F942EB8);
  sub_24E680164(v52, v54 + *(v55 + 48));
  v56 = v54 + *(v55 + 64);
  *v56 = 0;
  *(v56 + 8) = 1;
  sub_24E601704(v5, &qword_27F216750, &qword_24F942E48);
  sub_24E601704(v53, &qword_27F216768, &qword_24F942E70);
  sub_24E601704(v52, &qword_27F216750, &qword_24F942E48);
  return sub_24E601704(v50, &qword_27F216768, &qword_24F942E70);
}

void sub_24E67FA6C(void *a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v3 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v39 - v6;
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  if (v8 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = a1[5];
  }

  v40 = a1[6];
  v41 = v11;
  if (v8 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  if (v8 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  v42 = v13;
  v43 = v12;
  sub_24E680354(v7, v8, v9, v10);

  sub_24F924A88();
  v14 = sub_24F925DE8();
  v16 = v15;
  v18 = v17;
  sub_24F925898();
  v19 = sub_24F925C98();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_24E600B40(v14, v16, v18 & 1);

  v48 = v19;
  v49 = v21;
  v23 &= 1u;
  v50 = v23;
  v51 = v25;
  v26 = v47;
  sub_24F9268B8();
  sub_24E600B40(v19, v21, v23);

  v27 = v3;
  v28 = *(v3 + 16);
  v30 = v44;
  v29 = v45;
  v28(v44, v26, v45);
  v31 = v46;
  v32 = v40;
  v33 = v41;
  *v46 = v41;
  *(v31 + 1) = v32;
  v35 = v42;
  v34 = v43;
  *(v31 + 2) = v43;
  *(v31 + 3) = v35;
  v36 = v31;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A8, &unk_24F942F00);
  v28(&v36[*(v37 + 48)], v30, v29);
  sub_24E680354(v33, v32, v34, v35);
  v38 = *(v27 + 8);
  v38(v47, v29);
  v38(v30, v29);
  sub_24E680460(v33, v32, v34, v35);
}

uint64_t sub_24E67FD3C(uint64_t a1)
{
  sub_24E67EDC0();

  return sub_24F9218E8();
}

unint64_t sub_24E67FDCC()
{
  result = qword_27F216718;
  if (!qword_27F216718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216718);
  }

  return result;
}

uint64_t sub_24E67FECC@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = a4;
  if (!a2)
  {
    v7 = 0;
    KeyPath = 0;
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    v20 = 0;
    v19 = 0;
    goto LABEL_6;
  }

  v7 = sub_24F926E48();
  v8 = sub_24F925A08();
  KeyPath = swift_getKeyPath();

  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24E600AEC();

  v10 = sub_24F925E18();
  v12 = v11;
  v14 = v13;
  sub_24F925A08();
  v5 = sub_24F925C98();
  v16 = v15;
  v22 = v17;
  v19 = v18;

  sub_24E600B40(v10, v12, v14 & 1);

  v20 = v22 & 1;
  sub_24E5FD138(v5, v16, v22 & 1);

LABEL_6:
  sub_24E680F54(v7, KeyPath, v8);
  sub_24E65D2B4(v5, v16, v20, v19);
  sub_24E680FA4(v7, KeyPath, v8);
  sub_24E65D2F8(v5, v16, v20, v19);
  *a5 = v7;
  a5[1] = KeyPath;
  a5[2] = v8;
  a5[3] = v5;
  a5[4] = v16;
  a5[5] = v20;
  a5[6] = v19;
  sub_24E65D2F8(v5, v16, v20, v19);
  return sub_24E680FA4(v7, KeyPath, v8);
}

__n128 sub_24E6800C4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = sub_24F924978();
  v13 = 0;
  sub_24E67FECC(v3, v4, v11);
  v6 = v12;
  result = v11[0];
  v8 = v11[1];
  v9 = v11[2];
  v10 = v13;
  *a1 = v5;
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = v10;
  *(a1 + 24) = result;
  *(a1 + 40) = v8;
  *(a1 + 56) = v9;
  *(a1 + 72) = v6;
  return result;
}

uint64_t sub_24E680164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216750, &qword_24F942E48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E6801D4()
{
  result = qword_27F216788;
  if (!qword_27F216788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216760, &qword_24F945460);
    sub_24E680A58(&qword_27F216790, type metadata accessor for GameIcon, &protocol conformance descriptor for GameIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216788);
  }

  return result;
}

unint64_t sub_24E680290()
{
  result = qword_27F216798;
  if (!qword_27F216798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2233D0, &qword_24F958810);
    sub_24E680A58(&qword_27F214AD0, type metadata accessor for PlayerAvatarView, &unk_24FA31B24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216798);
  }

  return result;
}

void sub_24E680354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_24E68039C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215460, &qword_24F942C00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E68040C()
{
  result = qword_27F2167B8;
  if (!qword_27F2167B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2167B8);
  }

  return result;
}

void sub_24E680460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

unint64_t sub_24E6804A8()
{
  result = qword_27F2167C0;
  if (!qword_27F2167C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2167C0);
  }

  return result;
}

uint64_t sub_24E6804FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityFeedLockup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E680560(uint64_t a1)
{
  v2 = type metadata accessor for ActivityFeedLockup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E6805BC()
{
  result = qword_27F2167D0;
  if (!qword_27F2167D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2167D0);
  }

  return result;
}

uint64_t sub_24E680610(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167D8, &qword_24F942F20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6807F4();
  sub_24F92D108();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_24F92CBC8();
    v10 = 1;
    sub_24F92CBC8();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24E6807F4()
{
  result = qword_27F2167E0;
  if (!qword_27F2167E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2167E0);
  }

  return result;
}

uint64_t sub_24E680868(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24E6808C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_24E68092C()
{
  result = qword_27F2167F0;
  if (!qword_27F2167F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216748, &qword_24F942E10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216728, &qword_24F942DF8);
    sub_24E602068(&qword_27F216740, &qword_27F216728, &qword_24F942DF8, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    sub_24E680A58(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier, &unk_24FA0D0EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2167F0);
  }

  return result;
}

uint64_t sub_24E680A58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E680AC0()
{
  result = qword_27F2167F8;
  if (!qword_27F2167F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2167F8);
  }

  return result;
}

unint64_t sub_24E680B18()
{
  result = qword_27F216800;
  if (!qword_27F216800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216800);
  }

  return result;
}

unint64_t sub_24E680B70()
{
  result = qword_27F216808;
  if (!qword_27F216808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216808);
  }

  return result;
}

unint64_t sub_24E680BC8()
{
  result = qword_27F216810;
  if (!qword_27F216810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216810);
  }

  return result;
}

unint64_t sub_24E680C20()
{
  result = qword_27F216818;
  if (!qword_27F216818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216818);
  }

  return result;
}

unint64_t sub_24E680C78()
{
  result = qword_27F216820;
  if (!qword_27F216820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216820);
  }

  return result;
}

uint64_t sub_24E680CCC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567646162 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_24E680F54(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24E680FA4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24E6810A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  type metadata accessor for ArticlePageViewModel(0);
  sub_24E685034(&qword_27F216838, type metadata accessor for ArticlePageViewModel, &protocol conformance descriptor for DiffablePresenterBasedPageViewModel<A>);
  sub_24F923628();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3 & 1;
  sub_24E683970(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216840, &qword_24F943308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216848, &qword_24F943310);
  sub_24E602068(&qword_27F216850, &qword_27F216840, &qword_24F943308, &unk_24FA1A748);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216858, &qword_24F943318);
  sub_24E602068(&qword_27F216860, &qword_27F216858, &qword_24F943318, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  sub_24F926A58();

  v8 = sub_24F923628();
  v9 = *(v8 + *(*v8 + 192));

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216868, &qword_24F943320);
  v12 = a4 + *(result + 36);
  *v12 = sub_24E6839B0;
  *(v12 + 8) = v10;
  *(v12 + 16) = 0;
  return result;
}

void *sub_24E681364@<X0>(uint64_t *a4@<X8>)
{
  type metadata accessor for ArticlePageViewModel(0);
  sub_24E685034(&qword_27F216838, type metadata accessor for ArticlePageViewModel, &protocol conformance descriptor for DiffablePresenterBasedPageViewModel<A>);
  sub_24F923628();
  *a4 = sub_24F923C28();
  a4[1] = v5;
  v6 = type metadata accessor for GamesArticlePageView.ArticleContent(0);
  v7 = v6[5];
  *(a4 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v8 = v6[6];
  *(a4 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v9 = v6[7];
  *(a4 + v9) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v10 = v6[8];
  *(a4 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  *(a4 + v6[9]) = 0;
  v11 = a4 + v6[10];
  result = sub_24F926F28();
  *v11 = v13;
  *(v11 + 1) = v14;
  return result;
}

uint64_t sub_24E68152C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_24F925018();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216858, &qword_24F943318);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-v9];
  sub_24F924FF8();
  v14 = a1;
  v15 = a2;
  v16 = a3 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216870, &qword_24F943328);
  sub_24E6839C4();
  sub_24F923668();
  v11 = sub_24E602068(&qword_27F216860, &qword_27F216858, &qword_24F943318, MEMORY[0x277CDD7A8]);
  MEMORY[0x25304AA30](v10, v7, v11);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24E6816FC@<X0>(uint64_t a4@<X8>)
{
  v26 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v4 - 8);
  v24 = &v23 - v5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216888, &unk_24F943330);
  v6 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v8 = &v23 - v7;
  type metadata accessor for ArticlePageViewModel(0);
  sub_24E685034(&qword_27F216838, type metadata accessor for ArticlePageViewModel, &protocol conformance descriptor for DiffablePresenterBasedPageViewModel<A>);
  sub_24F923628();
  v9 = type metadata accessor for ArticlePage(0);
  v33 = v9;
  v34 = &protocol witness table for ArticlePage;
  v35 = &protocol witness table for BasePage;
  v36 = &protocol witness table for ArticlePage;
  v37 = &protocol witness table for BasePage;
  v10 = sub_24E685034(&qword_27F216890, type metadata accessor for ArticlePage, &protocol conformance descriptor for BasePage);
  v38 = v10;
  swift_getKeyPath();
  v27 = v9;
  v28 = &protocol witness table for ArticlePage;
  v29 = &protocol witness table for BasePage;
  v30 = &protocol witness table for ArticlePage;
  v31 = &protocol witness table for BasePage;
  v32 = v10;
  swift_getKeyPath();
  sub_24F923098();

  v11 = v40;
  if (v40 == 255)
  {
    goto LABEL_4;
  }

  v12 = v39;
  if (v40)
  {
    sub_24E683B84(v39, v40);
LABEL_4:

    goto LABEL_5;
  }

  v17 = *&v39[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shareAction];

  sub_24E683B84(v12, v11);

  if (v17)
  {
    v18 = v25;

    sub_24F9241E8();
    v19 = sub_24F925908();
    v20 = v24;
    (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
    v21 = sub_24F925968();

    sub_24E601704(v20, &qword_27F214698, &unk_24F95F810);
    *v8 = 71;
    *(v8 + 1) = v17;
    *&v8[*(v18 + 44)] = v21;
    v22 = v26;
    sub_24E6009C8(v8, v26, &qword_27F216888, &unk_24F943330);
    v15 = v18;
    v14 = v22;
    v13 = 0;
    return (*(v6 + 56))(v14, v13, 1, v15);
  }

LABEL_5:
  v13 = 1;
  v15 = v25;
  v14 = v26;
  return (*(v6 + 56))(v14, v13, 1, v15);
}

void *sub_24E681A94@<X0>(uint64_t a1@<X8>)
{
  v57 = type metadata accessor for GamesArticlePageView.ArticleContent(0);
  v59 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v60 = v3;
  v61 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_24F923E98();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v52 = (&v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v49 = (&v48 - v8);
  v55 = sub_24F925218();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v48 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v48 - v11;
  MEMORY[0x28223BE20](v12);
  v58 = &v48 - v13;
  v14 = v1;
  v15 = type metadata accessor for ArticlePage(0);
  v68 = v15;
  v69 = &protocol witness table for ArticlePage;
  v70 = &protocol witness table for BasePage;
  v71 = &protocol witness table for ArticlePage;
  v72 = &protocol witness table for BasePage;
  v16 = sub_24E685034(&qword_27F216890, type metadata accessor for ArticlePage, &protocol conformance descriptor for BasePage);
  v73 = v16;
  swift_getKeyPath();
  v62 = v15;
  v63 = &protocol witness table for ArticlePage;
  v64 = &protocol witness table for BasePage;
  v65 = &protocol witness table for ArticlePage;
  v66 = &protocol witness table for BasePage;
  v67 = v16;
  swift_getKeyPath();
  sub_24F923098();

  v17 = v76;
  if (v76 == 255)
  {
    goto LABEL_4;
  }

  v18 = v75;
  if (v76)
  {
    sub_24E683B84(v75, v76);
LABEL_4:
    v19 = 2;
    v20 = v14;
    goto LABEL_5;
  }

  v33 = *&v75[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_editorialStoryCard];

  sub_24E683B84(v18, v17);
  v20 = v14;
  if (v33)
  {

    v34 = v49;
    sub_24F769764(v49);
    v35 = v53;
    v36 = *(v53 + 48);
    v37 = v55;
    if (v36(v34, 1, v55) == 1)
    {
      v38 = MEMORY[0x277CE0560];
      (*(v35 + 104))(v58, *MEMORY[0x277CE0560], v37);
      if (v36(v34, 1, v37) != 1)
      {
        sub_24E601704(v34, &qword_27F215598, &qword_24F945EF0);
      }
    }

    else
    {
      v38 = MEMORY[0x277CE0560];
      (*(v35 + 32))(v58, v34, v37);
    }

    v39 = v50;
    sub_24F769764(v50);
    v40 = v39;
    if (v36(v39, 1, v37) == 1)
    {
      v41 = v51;
      (*(v35 + 104))(v51, *v38, v37);
      if (v36(v40, 1, v37) != 1)
      {
        sub_24E601704(v40, &qword_27F215598, &qword_24F945EF0);
      }
    }

    else
    {
      v41 = v51;
      (*(v35 + 32))(v51, v40, v37);
    }

    v42 = v52;
    sub_24F769788(v52);
    v43 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
    (*(v54 + 8))(v42, v56);
    if (v43)
    {
      v44 = *(v35 + 8);
      v44(v41, v37);
      v44(v58, v37);
      v19 = 1;
    }

    else
    {
      v45 = v48;
      (*(v35 + 104))(v48, *MEMORY[0x277CE0558], v37);
      v46 = sub_24F925208();
      v47 = *(v35 + 8);
      v47(v45, v37);
      v47(v41, v37);
      v47(v58, v37);
      v19 = (v46 & 1) == 0;
    }
  }

  else
  {
    v19 = 2;
  }

LABEL_5:
  v21 = v61;
  sub_24E6850D8(v20, v61, type metadata accessor for GamesArticlePageView.ArticleContent);
  v22 = (*(v59 + 80) + 17) & ~*(v59 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  sub_24E684E54(v21, v23 + v22, type metadata accessor for GamesArticlePageView.ArticleContent);
  sub_24E6850D8(v20, v21, type metadata accessor for GamesArticlePageView.ArticleContent);
  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  sub_24E684E54(v21, v24 + v22, type metadata accessor for GamesArticlePageView.ArticleContent);
  *a1 = v19;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168E8, &qword_24F9434F0);
  v26 = v25[19];
  *(a1 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v27 = v25[20];
  *(a1 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v28 = v25[21];
  *(a1 + v28) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v29 = v25[22];
  *(a1 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  *(a1 + v25[23]) = 0;
  v30 = a1 + v25[24];
  v74 = 1;
  result = sub_24F926F28();
  v32 = v76;
  *v30 = v75;
  *(v30 + 8) = v32;
  *(a1 + 8) = sub_24E6843E8;
  *(a1 + 16) = v23;
  *(a1 + 24) = sub_24E68477C;
  *(a1 + 32) = v24;
  return result;
}

uint64_t sub_24E68231C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = type metadata accessor for GamesArticlePageEditorialStoryCardView(0);
  v32 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArticlePageEditorialStoryCardViewModel(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168F8, &qword_24F943500);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v31 = a2;
  if (a1 != 3 && a1)
  {
    v18 = *(a2 + 8);
    sub_24F403730((&v31 - v16));
  }

  else
  {
    v18 = *(a2 + 8);
    sub_24F403728((&v31 - v16));
  }

  sub_24E60169C(v17, v14, &qword_27F2168F8, &qword_24F943500);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_24E601704(v17, &qword_27F2168F8, &qword_24F943500);
LABEL_11:
    sub_24E601704(v14, &qword_27F2168F8, &qword_24F943500);
    v29 = 1;
    v28 = v33;
    return (*(v32 + 56))(v28, v29, 1, v5);
  }

  sub_24E684E54(v14, v11, type metadata accessor for ArticlePageEditorialStoryCardViewModel);
  if (a1 != 3 && a1)
  {
    sub_24E68507C(v11);
    v14 = v17;
    goto LABEL_11;
  }

  sub_24E6850D8(v11, v7, type metadata accessor for ArticlePageEditorialStoryCardViewModel);
  v19 = v31 + *(type metadata accessor for GamesArticlePageView.ArticleContent(0) + 40);
  v20 = *v19;
  v21 = *(v19 + 8);
  v37 = v20;
  v38 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F58();
  sub_24E68507C(v11);
  sub_24E601704(v17, &qword_27F2168F8, &qword_24F943500);
  v22 = v34;
  v23 = v35;
  v24 = v36;
  v25 = v5[10];
  *&v7[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  *&v7[v5[5]] = v18;
  v7[v5[6]] = 1;
  v7[v5[7]] = a1 != 0;
  v26 = &v7[v5[8]];
  *v26 = v22;
  *(v26 + 1) = v23;
  v26[16] = v24;
  v7[v5[9]] = a1 == 0;
  v27 = v33;
  sub_24E684E54(v7, v33, type metadata accessor for GamesArticlePageEditorialStoryCardView);
  v28 = v27;
  v29 = 0;
  return (*(v32 + 56))(v28, v29, 1, v5);
}

uint64_t sub_24E682714@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for GamesArticlePageView.ArticleContent(0);
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10);
  v52 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168F0, &qword_24F9434F8);
  MEMORY[0x28223BE20](v12);
  v14 = &v44[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168F8, &qword_24F943500);
  v47 = *(v15 - 8);
  v16 = *(v47 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v44[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v44[-v19];
  v53 = v10;
  v54 = a3;
  if (a1 != 3 && a1)
  {
    v21 = v12;
    v49 = *(a2 + 8);
    v22 = &v44[-v19];
    sub_24F403730(v20);
  }

  else
  {
    v21 = v12;
    v49 = *(a2 + 8);
    v22 = &v44[-v19];
    sub_24F403728(v20);
  }

  v50 = v22;
  v23 = a1 == 3 || a1 == 0;
  v51 = v23;
  v45 = a1;
  v46 = v21;
  v24 = *(v21 + 60);
  v25 = sub_24F9234D8();
  (*(*(v25 - 8) + 56))(v14 + v24, 1, 1, v25);
  sub_24E60169C(v22, v17, &qword_27F2168F8, &qword_24F943500);
  v26 = v52;
  sub_24E6850D8(a2, v52, type metadata accessor for GamesArticlePageView.ArticleContent);
  v27 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v28 = v27 + v16;
  v29 = *(v48 + 80);
  v48 = a2;
  v30 = (v29 + v27 + v16 + 1) & ~v29;
  v31 = swift_allocObject();
  sub_24E6009C8(v17, v31 + v27, &qword_27F2168F8, &qword_24F943500);
  *(v31 + v28) = v45;
  sub_24E684E54(v26, v31 + v30, type metadata accessor for GamesArticlePageView.ArticleContent);
  v32 = (v31 + ((v11 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v32 = a4;
  v32[1] = a5;
  v33 = v46;
  v34 = *(v46 + 52);
  *(v14 + v34) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ArticlePageViewModel(0);
  sub_24E685034(&qword_27F216838, type metadata accessor for ArticlePageViewModel, &protocol conformance descriptor for DiffablePresenterBasedPageViewModel<A>);

  *v14 = sub_24F923C28();
  v14[1] = v35;
  v36 = (v14 + *(v33 + 56));
  *v36 = sub_24E684D3C;
  v36[1] = v31;
  v37 = v48 + *(v53 + 40);
  v38 = *v37;
  v39 = *(v37 + 8);
  v56 = v38;
  v57 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  v40 = v55 | v51;
  v41 = sub_24F925818();
  v42 = sub_24E602068(&qword_27F216900, &qword_27F2168F0, &qword_24F9434F8, &unk_24F9C3438);
  MEMORY[0x25304C0E0](v40 & 1, v41, v33, v42);
  sub_24E601704(v14, &qword_27F2168F0, &qword_24F9434F8);
  return sub_24E601704(v50, &qword_27F2168F8, &qword_24F943500);
}

uint64_t sub_24E682BE8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v101 = a3;
  LODWORD(v107) = a2;
  v110 = a4;
  v90 = sub_24F922348();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_24F923F78();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v93 = (v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v8 - 8);
  v92 = (v87 - v9);
  v96 = sub_24F925218();
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v91 = v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v100 = v87 - v12;
  v13 = type metadata accessor for GamesArticlePageEditorialStoryCardView(0);
  MEMORY[0x28223BE20](v13);
  v15 = v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216908, &qword_24F943508);
  MEMORY[0x28223BE20](v105);
  v95 = v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v97 = v87 - v18;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216910, &qword_24F943510);
  MEMORY[0x28223BE20](v102);
  v104 = v87 - v19;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216918, &qword_24F943518);
  MEMORY[0x28223BE20](v103);
  v21 = v87 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216920, &qword_24F943520);
  v108 = *(v22 - 8);
  v109 = v22;
  MEMORY[0x28223BE20](v22);
  v106 = v87 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168F8, &qword_24F943500);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = v87 - v25;
  v27 = type metadata accessor for ArticlePageEditorialStoryCardViewModel(0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, v26, &qword_27F2168F8, &qword_24F943500);
  if ((*(v28 + 48))(v26, 1, v27) != 1)
  {
    sub_24E684E54(v26, v30, type metadata accessor for ArticlePageEditorialStoryCardViewModel);
    v35 = v107;
    v107 = v30;
    if (v35 == 3)
    {
      v53 = 1;
      v32 = v109;
      v33 = v110;
      v34 = v108;
      v52 = v106;
      goto LABEL_20;
    }

    if (!v35)
    {
      v36 = *v107;
      sub_24E6850D8(*v107 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_badge, v21, type metadata accessor for EditorialStoryCard.Badge);
      v37 = OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_title;
      v38 = type metadata accessor for GamesArticlePageEditorialStoryCardView.TextStack(0);
      sub_24E60169C(v36 + v37, &v21[v38[5]], &qword_27F215340, &qword_24F943530);
      sub_24E60169C(v36 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_description, &v21[v38[6]], &qword_27F215340, &qword_24F943530);
      *&v21[v38[9]] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
      swift_storeEnumTagMultiPayload();
      v21[v38[7]] = 1;
      v39 = &v21[v38[8]];
      *v39 = 0;
      v39[8] = 1;
      v40 = v38[10];
      sub_24F925898();
      v41 = sub_24F9258E8();

      *&v21[v40] = v41;
      v42 = v38[11];
      sub_24F925888();
      v43 = sub_24F9258E8();

      *&v21[v42] = v43;
      v44 = v38[12];
      sub_24F9259D8();
      v45 = sub_24F9258E8();

      *&v21[v44] = v45;
      LOBYTE(v38) = sub_24F925828();
      sub_24F923318();
      v46 = v104;
      v47 = &v21[*(v103 + 36)];
      *v47 = v38;
      *(v47 + 1) = v48;
      *(v47 + 2) = v49;
      *(v47 + 3) = v50;
      *(v47 + 4) = v51;
      v47[40] = 0;
      sub_24E60169C(v21, v46, &qword_27F216918, &qword_24F943518);
      swift_storeEnumTagMultiPayload();
      sub_24E684EBC();
      sub_24E684F78();
      v52 = v106;
      sub_24F924E28();
      sub_24E601704(v21, &qword_27F216918, &qword_24F943518);
      v53 = 0;
      v32 = v109;
      v33 = v110;
      v34 = v108;
LABEL_20:
      sub_24E68507C(v107);
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216948, &qword_24F943528);
      (*(*(v83 - 8) + 56))(v52, v53, 1, v83);
      sub_24E6009C8(v52, v33, &qword_27F216920, &qword_24F943520);
      v31 = 0;
      return (*(v34 + 56))(v33, v31, 1, v32);
    }

    sub_24E6850D8(v107, v15, type metadata accessor for ArticlePageEditorialStoryCardViewModel);
    v54 = v101;
    v55 = *(v101 + 8);
    v56 = type metadata accessor for GamesArticlePageView.ArticleContent(0);
    v57 = v54 + *(v56 + 40);
    v58 = *v57;
    v59 = *(v57 + 8);
    v111 = v58;
    v112 = v59;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
    sub_24F926F58();
    v60 = v113;
    v61 = v114;
    v62 = v13[10];
    *&v15[v62] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
    swift_storeEnumTagMultiPayload();
    *&v15[v13[5]] = v55;
    v15[v13[6]] = 0;
    v15[v13[7]] = 1;
    v63 = &v15[v13[8]];
    *v63 = v60;
    v63[16] = v61;
    v15[v13[9]] = 1;
    v87[1] = v56;
    v64 = v92;
    sub_24F769764(v92);
    v65 = v94;
    v66 = *(v94 + 48);
    v67 = v96;
    if (v66(v64, 1, v96) == 1)
    {
      v68 = v100;
      (*(v65 + 104))(v100, *MEMORY[0x277CE0560], v67);
      v69 = v66(v64, 1, v67);
      v33 = v110;
      v70 = v99;
      v71 = v98;
      if (v69 != 1)
      {
        sub_24E601704(v64, &qword_27F215598, &qword_24F945EF0);
      }
    }

    else
    {
      v68 = v100;
      (*(v65 + 32))(v100, v64, v67);
      v33 = v110;
      v70 = v99;
      v71 = v98;
    }

    v72 = v93;
    sub_24F7699B0(v93);
    v34 = v108;
    v73 = *v107;
    if (*(*v107 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_artwork) || *(v73 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_video) || *(v73 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_landscapeArtwork) || *(v73 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_landscapeVideo))
    {
      (*(v71 + 8))(v72, v70);
      v32 = v109;
    }

    else
    {
      v85 = v72;
      v86 = *(v73 + 16);
      (*(v71 + 8))(v85, v70);
      v32 = v109;
      if (!v86)
      {
        (*(v65 + 8))(v68, v67);
LABEL_19:
        sub_24F927618();
        sub_24F9238C8();
        v79 = v95;
        sub_24E684E54(v15, v95, type metadata accessor for GamesArticlePageEditorialStoryCardView);
        v80 = (v79 + *(v105 + 36));
        v81 = v114;
        *v80 = v113;
        v80[1] = v81;
        v80[2] = v115;
        v82 = v97;
        sub_24E6009C8(v79, v97, &qword_27F216908, &qword_24F943508);
        sub_24E60169C(v82, v104, &qword_27F216908, &qword_24F943508);
        swift_storeEnumTagMultiPayload();
        sub_24E684EBC();
        sub_24E684F78();
        v52 = v106;
        sub_24F924E28();
        sub_24E601704(v82, &qword_27F216908, &qword_24F943508);
        v53 = 0;
        goto LABEL_20;
      }
    }

    v74 = v91;
    (*(v65 + 104))(v91, *MEMORY[0x277CE0558], v67);
    v75 = sub_24F925208();
    v76 = v68;
    v77 = *(v65 + 8);
    v77(v74, v67);
    if ((v75 & 1) == 0)
    {
      v78 = v88;
      _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
      sub_24F922308();
      (*(v89 + 8))(v78, v90);
    }

    v77(v76, v67);
    goto LABEL_19;
  }

  sub_24E601704(v26, &qword_27F2168F8, &qword_24F943500);
  v31 = 1;
  v32 = v109;
  v33 = v110;
  v34 = v108;
  return (*(v34 + 56))(v33, v31, 1, v32);
}

uint64_t sub_24E683914()
{
  sub_24E683950(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_24E683978()
{

  return swift_deallocObject();
}

unint64_t sub_24E6839C4()
{
  result = qword_27F216878;
  if (!qword_27F216878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216870, &qword_24F943328);
    sub_24E602068(&qword_27F216880, &qword_27F216888, &unk_24F943330, &unk_24F9A3048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216878);
  }

  return result;
}

uint64_t sub_24E683A74@<X0>(uint64_t a1@<X8>)
{
  result = sub_24F119E5C();
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_24E683AA4@<X0>(uint64_t a1@<X8>)
{
  result = sub_24F119E5C();
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_24E683AD4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_24E683BA8(*a1, v2);
  return sub_24F119F8C(v1, v2);
}

uint64_t sub_24E683B1C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_24E683BA8(*a1, v2);
  return sub_24F119F8C(v1, v2);
}

__n128 sub_24E683B70(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

void sub_24E683B84(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_24E683B9C(result, a2 & 1);
  }
}

void sub_24E683B9C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_24E683BA8(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_24E683BC0(result, a2 & 1);
  }

  return result;
}

id sub_24E683BC0(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t type metadata accessor for GamesArticlePageView.ArticleContent(uint64_t a1)
{
  result = qword_27F2168B0;
  if (!qword_27F2168B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E683C4C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_24E683DF0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

void sub_24E683F80(uint64_t a1)
{
  sub_24E68408C(319);
  if (v1 <= 0x3F)
  {
    sub_24E684184(319, &qword_27F2168C8, MEMORY[0x277CDFA28]);
    if (v2 <= 0x3F)
    {
      sub_24E684120(319);
      if (v3 <= 0x3F)
      {
        sub_24E684184(319, &qword_27F2168D0, MEMORY[0x277CDFAA0]);
        if (v4 <= 0x3F)
        {
          sub_24E654514();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E68408C(uint64_t a1)
{
  if (!qword_27F2168C0)
  {
    type metadata accessor for ArticlePageViewModel(255);
    sub_24E685034(&qword_27F216838, type metadata accessor for ArticlePageViewModel, &protocol conformance descriptor for DiffablePresenterBasedPageViewModel<A>);
    v1 = sub_24F923C48();
    if (!v2)
    {
      atomic_store(v1, &qword_27F2168C0);
    }
  }
}

void sub_24E684120(uint64_t a1)
{
  if (!qword_27F254DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215598, &qword_24F945EF0);
    v1 = sub_24F923578();
    if (!v2)
    {
      atomic_store(v1, &qword_27F254DC0);
    }
  }
}

void sub_24E684184(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F923578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24E6841DC()
{
  result = qword_27F2168D8;
  if (!qword_27F2168D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216868, &qword_24F943320);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216840, &qword_24F943308);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216848, &qword_24F943310);
    sub_24E602068(&qword_27F216850, &qword_27F216840, &qword_24F943308, &unk_24FA1A748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216858, &qword_24F943318);
    sub_24E602068(&qword_27F216860, &qword_27F216858, &qword_24F943318, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E684374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2168D8);
  }

  return result;
}

unint64_t sub_24E684374()
{
  result = qword_27F2168E0;
  if (!qword_27F2168E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2168E0);
  }

  return result;
}

uint64_t sub_24E6843E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GamesArticlePageView.ArticleContent(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  return sub_24E68231C(v4, v5, a1);
}

uint64_t objectdestroy_30Tm()
{
  v1 = type metadata accessor for GamesArticlePageView.ArticleContent(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 17) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923E98();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F925218();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v1[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F925218();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v2 + v8, 1, v9))
    {
      (*(v10 + 8))(v2 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24F923F78();
    (*(*(v12 - 8) + 8))(v2 + v11, v12);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E68477C@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *(type metadata accessor for GamesArticlePageView.ArticleContent(0) - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 17) & ~*(v7 + 80));

  return sub_24E682714(v8, v9, a1, a2, a3);
}

uint64_t sub_24E684838()
{
  v1 = v0;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168F8, &qword_24F943500) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for GamesArticlePageView.ArticleContent(0);
  v6 = (v4 + *(*(v5 - 1) + 80) + v3 + 1) & ~*(*(v5 - 1) + 80);
  v7 = v0 + v3;
  v8 = type metadata accessor for ArticlePageEditorialStoryCardViewModel(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {

    v9 = v7 + *(v8 + 24);

    v10 = v9 + *(_s9ViewModelVMa(0) + 24);
    v11 = type metadata accessor for IconRowViewModel(0);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      v27 = v6;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
      v13 = *(*(v12 - 8) + 8);
      v13(v10, v12);
      v14 = v12;
      v6 = v27;
      v13(v10 + *(v11 + 20), v14);
      v1 = v0;
    }
  }

  v15 = v1 + v6;

  v16 = v5[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_24F923E98();
    (*(*(v17 - 8) + 8))(v15 + v16, v17);
  }

  else
  {
  }

  v18 = v5[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_24F925218();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v15 + v18, 1, v19))
    {
      (*(v20 + 8))(v15 + v18, v19);
    }
  }

  else
  {
  }

  v21 = v5[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_24F925218();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v15 + v21, 1, v22))
    {
      (*(v23 + 8))(v15 + v21, v22);
    }
  }

  else
  {
  }

  v24 = v5[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_24F923F78();
    (*(*(v25 - 8) + 8))(v15 + v24, v25);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E684D3C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168F8, &qword_24F943500) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(type metadata accessor for GamesArticlePageView.ArticleContent(0) - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 1) & ~*(v6 + 80));

  return sub_24E682BE8(v1 + v4, v7, v8, a1);
}

uint64_t sub_24E684E54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E684EBC()
{
  result = qword_27F216928;
  if (!qword_27F216928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216918, &qword_24F943518);
    sub_24E685034(&qword_27F216930, type metadata accessor for GamesArticlePageEditorialStoryCardView.TextStack, &unk_24F9A89D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216928);
  }

  return result;
}

unint64_t sub_24E684F78()
{
  result = qword_27F216938;
  if (!qword_27F216938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216908, &qword_24F943508);
    sub_24E685034(&qword_27F216940, type metadata accessor for GamesArticlePageEditorialStoryCardView, &unk_24F9A8988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216938);
  }

  return result;
}

uint64_t sub_24E685034(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E68507C(uint64_t a1)
{
  v2 = type metadata accessor for ArticlePageEditorialStoryCardViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E6850D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E6851A4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216960, &unk_24F9435A0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216968, &unk_24F9EDA20);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216970, &unk_24F9435B0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[13];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[15];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[17];

  return v17(v18, a2, v16);
}

uint64_t sub_24E6853F0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216960, &unk_24F9435A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216968, &unk_24F9EDA20);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216970, &unk_24F9435B0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[13];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[15];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[17];

  return v17(v18, a2, a2, v16);
}

void sub_24E685648(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E68598C(319, &qword_27F216988, type metadata accessor for TransitionalGameIcon, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24E690478(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24E68598C(319, &qword_27F216990, type metadata accessor for DescriptionLabelConfig, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24E68598C(319, &qword_27F216998, type metadata accessor for GameLockup.TrailingButtonType, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_24E68598C(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_24E68857C(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21D28]);
              if (v7 <= 0x3F)
              {
                sub_24E68857C(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00, MEMORY[0x277D21D28]);
                if (v8 <= 0x3F)
                {
                  sub_24E690478(319, &qword_27F2169A0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    sub_24E690478(319, &qword_27F2169A8, &type metadata for ReleaseStateDetails, MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
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
    }
  }
}

uint64_t sub_24E685944(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24E68598C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24E685A20(uint64_t a1)
{
  sub_24E685A94();
  if (v1 <= 0x3F)
  {
    sub_24E685C00(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24E685A94()
{
  if (!qword_27F2169C0)
  {
    sub_24E685ADC(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27F2169C0);
    }
  }
}

void sub_24E685ADC(uint64_t a1)
{
  if (!qword_27F2169C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2169D0, &qword_24F9668F0);
    sub_24E685B4C();
    v1 = sub_24F927EA8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F2169C8);
    }
  }
}

unint64_t sub_24E685B4C()
{
  result = qword_27F2169D8;
  if (!qword_27F2169D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2169D0, &qword_24F9668F0);
    sub_24E685944(&qword_27F212DF0, type metadata accessor for OfferButtonInfo, &protocol conformance descriptor for OfferButtonInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2169D8);
  }

  return result;
}

void sub_24E685C00(uint64_t a1)
{
  if (!qword_27F2169E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2169E8, &qword_24F943600);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F2169E0);
    }
  }
}

uint64_t sub_24E685C78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A40, &qword_24F9437B8);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = &v40 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A48, &qword_24F9437C0);
  v44 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A50, &unk_24F9437C8);
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v9 = type metadata accessor for GameLockup.TrailingButtonType(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v18 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24E6880C8();
  v19 = v52;
  sub_24F92D108();
  if (!v19)
  {
    v42 = v17;
    v43 = v14;
    v41 = v11;
    v20 = v47;
    v21 = v48;
    v22 = v49;
    v52 = v9;
    v23 = v51;
    v24 = sub_24F92CC78();
    v25 = (2 * *(v24 + 16)) | 1;
    v54 = v24;
    v55 = v24 + 32;
    v56 = 0;
    v57 = v25;
    v26 = sub_24E643430();
    if (v26 != 2 && v56 == v57 >> 1)
    {
      if (v26)
      {
        v58 = 1;
        sub_24E68811C();
        sub_24F92CBA8();
        v48 = v6;
        v58 = 0;
        v27 = sub_24F92CC28();
        v28 = v50;
        v34 = v41;
        *v41 = v27;
        v34[1] = v35;
        v44 = v35;
        v47 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8, &qword_24F943600);
        v58 = 1;
        v36 = v46;
        sub_24E602068(&qword_27F243830, &qword_27F2169E8, &qword_24F943600, MEMORY[0x277D21AB0]);
        v37 = v47;
        sub_24F92CC68();
        if (v37)
        {
          (*(v45 + 8))(v22, v36);
          (*(v28 + 8))(v8, v48);

          goto LABEL_7;
        }

        (*(v45 + 8))(v22, v36);
        (*(v28 + 8))(v8, v48);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v38 = v34;
      }

      else
      {
        v58 = 0;
        sub_24E688170();
        sub_24F92CBA8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A70, &qword_24F9437D8);
        sub_24E602068(&qword_27F216A78, &qword_27F216A70, &qword_24F9437D8, MEMORY[0x277D21968]);
        v33 = v43;
        sub_24F92CC68();
        (*(v44 + 8))(v20, v21);
        (*(v50 + 8))(v8, v6);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v38 = v33;
        v23 = v51;
      }

      v39 = v42;
      sub_24E68FEC8(v38, v42, type metadata accessor for GameLockup.TrailingButtonType);
      sub_24E68FEC8(v39, v23, type metadata accessor for GameLockup.TrailingButtonType);
      return __swift_destroy_boxed_opaque_existential_1(v53);
    }

    v29 = sub_24F92C918();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
    *v31 = v52;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
    swift_willThrow();
    (*(v50 + 8))(v8, v6);
LABEL_7:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t sub_24E6863A8()
{
  if (*v0)
  {
    return 0x6575676573;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_24E6863D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24E6864A8(uint64_t a1)
{
  v2 = sub_24E68811C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6864E4(uint64_t a1)
{
  v2 = sub_24E68811C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E686520()
{
  if (*v0)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x726566666FLL;
  }
}

uint64_t sub_24E686554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726566666FLL && a2 == 0xE500000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24E686628(uint64_t a1)
{
  v2 = sub_24E6880C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E686664(uint64_t a1)
{
  v2 = sub_24E6880C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E6866A0(uint64_t a1)
{
  v2 = sub_24E688170();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6866DC(uint64_t a1)
{
  v2 = sub_24E688170();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E686730(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D756964656DLL;
  }

  else
  {
    v3 = 0x6C6C616D73;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6D756964656DLL;
  }

  else
  {
    v5 = 0x6C6C616D73;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24E6867D0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E68684C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24E6868B4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E68692C@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24E68698C(uint64_t *a1@<X8>)
{
  v2 = 0x6C6C616D73;
  if (*v1)
  {
    v2 = 0x6D756964656DLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_24E686A28()
{
  result = qword_27F2169F0;
  if (!qword_27F2169F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2169F0);
  }

  return result;
}

unint64_t sub_24E686A7C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1852793705;
      break;
    case 2:
      result = 0x676E6964616568;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x656C746974627573;
      break;
    case 5:
      result = 0x54676E696461656CLL;
      break;
    case 6:
      result = 0x7470697263736564;
      break;
    case 7:
      result = 0x4449656C646E7562;
      break;
    case 8:
      result = 0x44496D616461;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x656C797473;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x6575676573;
      break;
    case 13:
      result = 0x4D747865746E6F63;
      break;
    case 14:
      result = 0xD00000000000001BLL;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 16:
      result = 0xD000000000000016;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void sub_24E686CBC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v76);
  v77 = v74 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = v74 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216970, &unk_24F9435B0);
  MEMORY[0x28223BE20](v6 - 8);
  v79 = v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216968, &unk_24F9EDA20);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216960, &unk_24F9435A0);
  MEMORY[0x28223BE20](v10 - 8);
  v84 = v74 - v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A00, &unk_24F9437A8);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v13 = v74 - v12;
  v14 = type metadata accessor for GameLockup(0);
  MEMORY[0x28223BE20](v14);
  v16 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 20);
  v19 = type metadata accessor for TransitionalGameIcon(0);
  v20 = *(*(v19 - 8) + 56);
  v91 = v18;
  v20(&v16[v18], 1, 1, v19);
  v21 = v14[10];
  v22 = type metadata accessor for DescriptionLabelConfig(0);
  v23 = *(*(v22 - 8) + 56);
  *&v92 = v21;
  v23(&v16[v21], 1, 1, v22);
  v24 = v14[13];
  v25 = type metadata accessor for GameLockup.TrailingButtonType(0);
  v26 = *(*(v25 - 8) + 56);
  v90 = v24;
  v26(&v16[v24], 1, 1, v25);
  v27 = v14[15];
  v28 = sub_24F929608();
  v29 = *(*(v28 - 8) + 56);
  v89 = v27;
  v29(&v16[v27], 1, 1, v28);
  v30 = &v16[v14[16]];
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  *(v30 + 32) = 0;
  v88 = v30;
  sub_24E61DA68(&v95, v30, qword_27F21B590, &unk_24F93BE30);
  v31 = v14[17];
  v32 = sub_24F92A6D8();
  v33 = *(*(v32 - 8) + 56);
  v87 = v31;
  v33(&v16[v31], 1, 1, v32);
  *&v93 = v14;
  v34 = v14[21];
  v94 = v16;
  v35 = &v16[v34];
  *(v35 + 1) = 0u;
  *(v35 + 2) = 0u;
  *v35 = 0u;
  v36 = a1[3];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_24E687F28();
  v82 = v13;
  v37 = v85;
  sub_24F92D108();
  if (v37)
  {
    v38 = v91;
    __swift_destroy_boxed_opaque_existential_1(v86);
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v39 = v92;
    v40 = v94;
    sub_24E601704(v94 + v38, &qword_27F216960, &unk_24F9435A0);

    sub_24E601704(v40 + v39, &qword_27F216968, &unk_24F9EDA20);

    sub_24E601704(v40 + v90, &qword_27F216970, &unk_24F9435B0);
    sub_24E601704(v40 + v89, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v88, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(v40 + v87, &qword_27F215440, &unk_24F942BD0);
    sub_24E687F7C(*v35, v35[1], v35[2], v35[3], v35[4], v35[5]);
  }

  else
  {
    v74[2] = v22;
    v74[1] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v99 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v41 = v96;
    v42 = v94;
    *v94 = v95;
    v42[1] = v41;
    *(v42 + 4) = v97;
    LOBYTE(v95) = 1;
    sub_24E685944(&qword_27F216A10, type metadata accessor for TransitionalGameIcon, &protocol conformance descriptor for TransitionalGameIcon);
    v43 = v84;
    sub_24F92CC18();
    v44 = v93;
    sub_24E61DA68(v43, v42 + v91, &qword_27F216960, &unk_24F9435A0);
    LOBYTE(v95) = 2;
    v45 = sub_24F92CBC8();
    v46 = v92;
    v47 = (v42 + v44[6]);
    *v47 = v45;
    v47[1] = v48;
    LOBYTE(v95) = 3;
    v49 = sub_24F92CC28();
    v50 = (v42 + v44[7]);
    *v50 = v49;
    v50[1] = v51;
    LOBYTE(v95) = 4;
    v52 = sub_24F92CBC8();
    v53 = (v42 + v44[8]);
    *v53 = v52;
    v53[1] = v54;
    v74[0] = v54;
    LOBYTE(v95) = 5;
    v55 = sub_24F92CBC8();
    v56 = (v42 + v44[9]);
    *v56 = v55;
    v56[1] = v57;
    v85 = v57;
    LOBYTE(v95) = 6;
    sub_24E685944(&qword_27F216A18, type metadata accessor for DescriptionLabelConfig, &unk_24F9564D8);
    sub_24F92CC18();
    sub_24E61DA68(v83, v42 + v46, &qword_27F216968, &unk_24F9EDA20);
    LOBYTE(v95) = 7;
    v58 = sub_24F92CBC8();
    v59 = (v42 + v44[11]);
    *v59 = v58;
    v59[1] = v60;
    v84 = v60;
    LOBYTE(v95) = 8;
    v61 = sub_24F92CBC8();
    v62 = (v42 + v44[12]);
    *v62 = v61;
    v62[1] = v63;
    v83 = v63;
    LOBYTE(v95) = 9;
    sub_24E685944(&qword_27F216A20, type metadata accessor for GameLockup.TrailingButtonType, &unk_24F943608);
    sub_24F92CC18();
    sub_24E61DA68(v79, v94 + v90, &qword_27F216970, &unk_24F9435B0);
    v99 = 10;
    sub_24E687FCC();
    sub_24F92CC68();
    *(v94 + *(v93 + 56)) = v95;
    LOBYTE(v95) = 11;
    sub_24E685944(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    sub_24E61DA68(v78, v94 + v89, &qword_27F213E68, &unk_24F93BC80);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v99 = 12;
    sub_24E61D970();
    sub_24F92CC68();
    sub_24E61DA68(&v95, v88, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v95) = 13;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v77, v94 + v87, &qword_27F215440, &unk_24F942BD0);
    LOBYTE(v95) = 14;
    *(v94 + *(v93 + 72)) = sub_24F92CBD8();
    LOBYTE(v95) = 15;
    *(v94 + *(v93 + 76)) = sub_24F92CC38() & 1;
    LOBYTE(v95) = 16;
    *(v94 + *(v93 + 80)) = sub_24F92CC38() & 1;
    v99 = 17;
    sub_24E688020();
    sub_24F92CC18();
    (*(v80 + 8))(v82, v81);
    v64 = v97;
    v65 = v98;
    v66 = *v35;
    v67 = v35[1];
    v68 = v35[2];
    v69 = v35[3];
    v70 = v35[4];
    v71 = v35[5];
    v92 = v96;
    v93 = v95;
    sub_24E687F7C(v66, v67, v68, v69, v70, v71);
    v72 = v92;
    *v35 = v93;
    *(v35 + 1) = v72;
    v35[4] = v64;
    v35[5] = v65;
    v73 = v94;
    sub_24E68F818(v94, v75, type metadata accessor for GameLockup);
    __swift_destroy_boxed_opaque_existential_1(v86);
    sub_24E68F880(v73, type metadata accessor for GameLockup);
  }
}

uint64_t sub_24E687C94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E68F29C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E687CC8(uint64_t a1)
{
  v2 = sub_24E687F28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E687D04(uint64_t a1)
{
  v2 = sub_24E687F28();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E687D40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(v2 + *(a1 + 64), v6, qword_27F24EC90, &unk_24F93C1D0);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_24E687D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 68), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24E687E74(uint64_t a1)
{
  if (*(v1 + *(a1 + 80)) == 1)
  {
    return sub_24F921958();
  }

  else
  {
    return sub_24F921978();
  }
}

unint64_t sub_24E687F28()
{
  result = qword_27F216A08;
  if (!qword_27F216A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216A08);
  }

  return result;
}

void sub_24E687F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

unint64_t sub_24E687FCC()
{
  result = qword_27F216A28;
  if (!qword_27F216A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216A28);
  }

  return result;
}

unint64_t sub_24E688020()
{
  result = qword_27F216A30;
  if (!qword_27F216A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216A30);
  }

  return result;
}

unint64_t sub_24E688074()
{
  result = qword_27F216A38;
  if (!qword_27F216A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216A38);
  }

  return result;
}

unint64_t sub_24E6880C8()
{
  result = qword_27F216A58;
  if (!qword_27F216A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216A58);
  }

  return result;
}

unint64_t sub_24E68811C()
{
  result = qword_27F216A60;
  if (!qword_27F216A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216A60);
  }

  return result;
}

unint64_t sub_24E688170()
{
  result = qword_27F216A68;
  if (!qword_27F216A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216A68);
  }

  return result;
}

uint64_t sub_24E6881D8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A80, &unk_24F9437E0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24E688328(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A80, &unk_24F9437E0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24E688484(uint64_t a1)
{
  sub_24F928FD8();
  if (v1 <= 0x3F)
  {
    sub_24E68598C(319, &qword_27F216A98, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_24E68857C(319, &qword_27F254DC0, &qword_27F215598, &qword_24F945EF0, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E68857C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for OfferTitleType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OfferTitleType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24E688764()
{
  result = qword_27F216AA0;
  if (!qword_27F216AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216AA0);
  }

  return result;
}

unint64_t sub_24E6887BC()
{
  result = qword_27F216AA8;
  if (!qword_27F216AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216AA8);
  }

  return result;
}

unint64_t sub_24E688814()
{
  result = qword_27F216AB0;
  if (!qword_27F216AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216AB0);
  }

  return result;
}

unint64_t sub_24E68886C()
{
  result = qword_27F216AB8;
  if (!qword_27F216AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216AB8);
  }

  return result;
}

uint64_t sub_24E688940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B18, &qword_24F943D20);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B20, &qword_24F943D28);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B28, &qword_24F943D30);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  if (*(a1 + *(type metadata accessor for GameLockup(0) + 76)) == 1)
  {
    sub_24E688C10(a1, v10);
    v11 = &v10[*(v8 + 36)];
    v12 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
    v13 = type metadata accessor for GradientBackground(0);
    (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
    *v11 = swift_getKeyPath();
    v11[8] = 0;
    *(v11 + 1) = xmmword_24F93CFD0;
    *(v11 + 4) = 0x4030000000000000;
    *(v11 + 20) = 257;
    sub_24E60169C(v10, v7, &qword_27F216B28, &qword_24F943D30);
    swift_storeEnumTagMultiPayload();
    sub_24E68F8E0();
    sub_24E68F99C();
    sub_24F924E28();
    v14 = v10;
    v15 = &qword_27F216B28;
    v16 = &qword_24F943D30;
  }

  else
  {
    sub_24E688C10(a1, v4);
    sub_24E60169C(v4, v7, &qword_27F216B18, &qword_24F943D20);
    swift_storeEnumTagMultiPayload();
    sub_24E68F8E0();
    sub_24E68F99C();
    sub_24F924E28();
    v14 = v4;
    v15 = &qword_27F216B18;
    v16 = &qword_24F943D20;
  }

  return sub_24E601704(v14, v15, v16);
}

__n128 sub_24E688C10@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B78, &unk_24F943D50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B60, &qword_24F943D48);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B80, &qword_24F943D90);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v11 = &v35 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B58, &qword_24F943D40);
  MEMORY[0x28223BE20](v37);
  v13 = &v35 - v12;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B48, &qword_24F943D38);
  MEMORY[0x28223BE20](v39);
  v15 = &v35 - v14;
  *v6 = sub_24F9249A8();
  *(v6 + 1) = 0x4024000000000000;
  v6[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B88, &qword_24F943D98);
  sub_24E6895F8(a1, v2, &v6[*(v16 + 44)]);
  v17 = sub_24F925868();
  v18 = type metadata accessor for GameLockup(0);
  v19 = *(a1 + *(v18 + 80));
  v20 = 0uLL;
  v21 = 0uLL;
  if ((v19 & 1) == 0)
  {
    sub_24F923318();
    *(&v21 + 1) = v22;
    *(&v20 + 1) = v23;
  }

  v35 = v21;
  v36 = v20;
  sub_24E6009C8(v6, v9, &qword_27F216B78, &unk_24F943D50);
  v24 = &v9[*(v7 + 36)];
  *v24 = v17;
  *(v24 + 24) = v35;
  *(v24 + 8) = v36;
  v24[40] = v19;
  sub_24E60169C(a1 + *(v18 + 64), v49, qword_27F24EC90, &unk_24F93C1D0);
  sub_24E601704(v49, qword_27F21B590, &unk_24F93BE30);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v25 = sub_24F9248C8();
  __swift_project_value_buffer(v25, qword_27F39F078);
  sub_24E68FBA8();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v9, &qword_27F216B60, &qword_24F943D48);
  (*(v38 + 32))(v13, v11, v40);
  v13[*(v37 + 36)] = 0;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v13, v15, &qword_27F216B58, &qword_24F943D40);
  v26 = &v15[*(v39 + 36)];
  v27 = v47;
  *(v26 + 4) = v46;
  *(v26 + 5) = v27;
  *(v26 + 6) = v48;
  v28 = v43;
  *v26 = v42;
  *(v26 + 1) = v28;
  v29 = v45;
  *(v26 + 2) = v44;
  *(v26 + 3) = v29;
  sub_24F927628();
  sub_24F9242E8();
  v30 = v41;
  sub_24E6009C8(v15, v41, &qword_27F216B48, &qword_24F943D38);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B18, &qword_24F943D20) + 36);
  v32 = v49[5];
  *(v31 + 64) = v49[4];
  *(v31 + 80) = v32;
  *(v31 + 96) = v49[6];
  v33 = v49[1];
  *v31 = v49[0];
  *(v31 + 16) = v33;
  result = v49[3];
  *(v31 + 32) = v49[2];
  *(v31 + 48) = result;
  return result;
}

double sub_24E689164(uint64_t a1)
{
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = (&v24 - v16);
  if (*(a1 + *(type metadata accessor for GameLockup(0) + 56)) != 1)
  {
    return 40.0;
  }

  type metadata accessor for GameLockupComponent(0);
  sub_24F769764(v17);
  (*(v3 + 104))(v14, *MEMORY[0x277CE0558], v2);
  (*(v3 + 56))(v14, 0, 1, v2);
  v18 = *(v6 + 48);
  sub_24E60169C(v17, v8, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v14, &v8[v18], &qword_27F215598, &qword_24F945EF0);
  v19 = *(v3 + 48);
  if (v19(v8, 1, v2) == 1)
  {
    sub_24E601704(v14, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v17, &qword_27F215598, &qword_24F945EF0);
    if (v19(&v8[v18], 1, v2) == 1)
    {
      sub_24E601704(v8, &qword_27F215598, &qword_24F945EF0);
      return 60.0;
    }

LABEL_8:
    sub_24E601704(v8, &unk_27F254F20, &qword_24F940790);
    return 72.0;
  }

  sub_24E60169C(v8, v11, &qword_27F215598, &qword_24F945EF0);
  if (v19(&v8[v18], 1, v2) == 1)
  {
    sub_24E601704(v14, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v17, &qword_27F215598, &qword_24F945EF0);
    (*(v3 + 8))(v11, v2);
    goto LABEL_8;
  }

  (*(v3 + 32))(v5, &v8[v18], v2);
  sub_24E685944(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v22 = sub_24F92AFF8();
  v23 = *(v3 + 8);
  v23(v5, v2);
  sub_24E601704(v14, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v17, &qword_27F215598, &qword_24F945EF0);
  v23(v11, v2);
  sub_24E601704(v8, &qword_27F215598, &qword_24F945EF0);
  result = 72.0;
  if (v22)
  {
    return 60.0;
  }

  return result;
}

uint64_t sub_24E6895F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v150 = a2;
  v148 = a3;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B90, &qword_24F943DA0);
  MEMORY[0x28223BE20](v137);
  v151 = (&v118 - v4);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B98, &qword_24F943DA8);
  MEMORY[0x28223BE20](v140);
  v145 = &v118 - v5;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216BA0, &qword_24F943DB0);
  MEMORY[0x28223BE20](v144);
  v147 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v143 = &v118 - v8;
  MEMORY[0x28223BE20](v9);
  v146 = &v118 - v10;
  v11 = sub_24F9297D8();
  v135 = *(v11 - 8);
  v136 = v11;
  MEMORY[0x28223BE20](v11);
  v132 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F929888();
  v133 = *(v13 - 8);
  v134 = v13;
  MEMORY[0x28223BE20](v13);
  v131 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216BA8, &qword_24F943DB8);
  MEMORY[0x28223BE20](v130);
  v129 = &v118 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216BB0, &qword_24F943DC0);
  v141 = *(v16 - 8);
  v142 = v16;
  MEMORY[0x28223BE20](v16);
  v139 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v153 = &v118 - v19;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v125);
  v126 = &v118 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v118 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216BB8, &qword_24F943DC8);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v128 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v127 = &v118 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216BC0, &qword_24F943DD0);
  MEMORY[0x28223BE20](v30 - 8);
  v149 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v118 - v33;
  v35 = type metadata accessor for GameLockup(0);
  v36 = v35[9];
  v138 = a1;
  v37 = (a1 + v36);
  v38 = v37[1];
  v152 = v34;
  if (v38)
  {
    *&v165 = *v37;
    *(&v165 + 1) = v38;
    sub_24E600AEC();

    v39 = sub_24F925E18();
    v121 = v22;
    v122 = v25;
    v40 = v39;
    v123 = v26;
    v124 = v35;
    v42 = v41;
    v44 = v43;
    sub_24F925988();
    v45 = sub_24F925C98();
    v119 = v24;
    v120 = v21;
    v47 = v46;
    v49 = v48;
    v118 = v50;

    sub_24E600B40(v40, v42, v44 & 1);

    v51 = sub_24F9251C8();
    v52 = *(v125 + 36);
    v53 = *MEMORY[0x277CE13B8];
    v54 = sub_24F927748();
    v55 = v126;
    (*(*(v54 - 8) + 104))(&v126[v52], v53, v54);
    *v55 = v51;
    sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
    v56 = sub_24F925C58();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    sub_24E600B40(v45, v47, v49 & 1);

    sub_24E601704(v55, &qword_27F213F10, &unk_24F93BE10);
    *&v165 = v56;
    *(&v165 + 1) = v58;
    LOBYTE(v45) = v60 & 1;
    v35 = v124;
    LOBYTE(v166) = v45;
    *(&v166 + 1) = v62;
    v63 = v119;
    sub_24F9268B8();
    sub_24E600B40(v56, v58, v45);

    sub_24F927618();
    sub_24F9242E8();
    v64 = v128;
    (*(v121 + 32))(v128, v63, v120);
    v65 = v122;
    v66 = (v64 + *(v122 + 36));
    v67 = v160;
    v66[4] = v159;
    v66[5] = v67;
    v66[6] = v161;
    v68 = v156;
    *v66 = v155;
    v66[1] = v68;
    v69 = v158;
    v66[2] = v157;
    v66[3] = v69;
    v70 = v127;
    sub_24E6009C8(v64, v127, &qword_27F216BB8, &qword_24F943DC8);
    v71 = v70;
    v72 = v152;
    sub_24E6009C8(v71, v152, &qword_27F216BB8, &qword_24F943DC8);
    (*(v123 + 56))(v72, 0, 1, v65);
  }

  else
  {
    (*(v26 + 56))(v34, 1, 1, v25);
  }

  v73 = v138;
  v74 = (v138 + v35[11]);
  v76 = *v74;
  v75 = v74[1];
  v77 = v35[5];
  v78 = *(type metadata accessor for GameLockupIconView(0) + 24);
  v79 = v73 + v77;
  v80 = v129;
  sub_24E60169C(v79, &v129[v78], &qword_27F216960, &unk_24F9435A0);
  *v80 = swift_getKeyPath();
  *(v80 + 8) = 0;
  *(v80 + 16) = v76;
  *(v80 + 24) = v75;
  v81 = v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216BC8, &unk_24F943E00) + 36);
  *v81 = 0x3FF0000000000000;
  *(v81 + 8) = 0;

  sub_24E689164(v73);
  sub_24E689164(v73);
  sub_24F927618();
  sub_24F9238C8();
  v82 = (v80 + *(v130 + 36));
  v83 = v163;
  *v82 = v162;
  v82[1] = v83;
  v82[2] = v164;
  v85 = v135;
  v84 = v136;
  v86 = v132;
  (*(v135 + 104))(v132, *MEMORY[0x277D22040], v136);
  v165 = 0u;
  v166 = 0u;
  memset(v154, 0, sizeof(v154));
  v87 = v131;
  sub_24F929818();
  sub_24E601704(v154, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v165, &qword_27F2129B0, &unk_24F945320);
  (*(v85 + 8))(v86, v84);
  sub_24E68FC90();
  sub_24F925EE8();
  (*(v133 + 8))(v87, v134);
  sub_24E601704(v80, &qword_27F216BA8, &qword_24F943DB8);
  v165 = sub_24F9249A8();
  LOBYTE(v166) = 1;
  sub_24E68FDD8();
  v88 = sub_24F927738();
  v90 = v150;
  v89 = v151;
  *v151 = v88;
  sub_24E68A3A0(v73, v90, v89 + *(v137 + 44));
  sub_24E689164(v73);
  sub_24F927628();
  sub_24F9242E8();
  v91 = v145;
  sub_24E6009C8(v151, v145, &qword_27F216B90, &qword_24F943DA0);
  v92 = (v91 + *(v140 + 36));
  v93 = v170;
  v92[4] = v169;
  v92[5] = v93;
  v92[6] = v171;
  v94 = v166;
  *v92 = v165;
  v92[1] = v94;
  v95 = v168;
  v92[2] = v167;
  v92[3] = v95;
  LOBYTE(v90) = sub_24F925868();
  sub_24F923318();
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v104 = v91;
  v105 = v143;
  sub_24E6009C8(v104, v143, &qword_27F216B98, &qword_24F943DA8);
  v106 = v105 + *(v144 + 36);
  *v106 = v90;
  *(v106 + 8) = v97;
  *(v106 + 16) = v99;
  *(v106 + 24) = v101;
  *(v106 + 32) = v103;
  *(v106 + 40) = 0;
  v107 = v146;
  sub_24E6009C8(v105, v146, &qword_27F216BA0, &qword_24F943DB0);
  v108 = v149;
  sub_24E60169C(v152, v149, &qword_27F216BC0, &qword_24F943DD0);
  v110 = v141;
  v109 = v142;
  v111 = *(v141 + 16);
  v112 = v139;
  v111(v139, v153, v142);
  v113 = v147;
  sub_24E60169C(v107, v147, &qword_27F216BA0, &qword_24F943DB0);
  v114 = v148;
  sub_24E60169C(v108, v148, &qword_27F216BC0, &qword_24F943DD0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216BF0, &qword_24F943E10);
  v111((v114 + *(v115 + 48)), v112, v109);
  sub_24E60169C(v113, v114 + *(v115 + 64), &qword_27F216BA0, &qword_24F943DB0);
  sub_24E601704(v107, &qword_27F216BA0, &qword_24F943DB0);
  v116 = *(v110 + 8);
  v116(v153, v109);
  sub_24E601704(v152, &qword_27F216BC0, &qword_24F943DD0);
  sub_24E601704(v113, &qword_27F216BA0, &qword_24F943DB0);
  v116(v112, v109);
  return sub_24E601704(v149, &qword_27F216BC0, &qword_24F943DD0);
}