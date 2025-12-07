uint64_t sub_24EF7B7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return DeepLinkWithReferrerIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

unint64_t sub_24EF7B89C()
{
  result = qword_27F235078;
  if (!qword_27F235078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235070, &unk_24F9B5B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235078);
  }

  return result;
}

uint64_t sub_24EF7B958(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EF7B9FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235080, &unk_24F9B5BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EF7BADC(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EF7BC2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for FriendRequestOverlayHeader(uint64_t a1)
{
  result = qword_27F235088;
  if (!qword_27F235088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EF7BDB4(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
      if (v3 <= 0x3F)
      {
        sub_24E61C938(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24EF7BEA0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235110, &qword_24F9B5E30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EF7D968();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    type metadata accessor for FriendRequestOverlayHeader(0);
    v8[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    v8[12] = 3;
    sub_24F929608();
    sub_24EF7DA84(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    v8[11] = 4;
    sub_24F92CD08();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24EF7C1B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v31 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v33);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235100, &qword_24F9B5E28);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for FriendRequestOverlayHeader(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 40) = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 9) = 0;
  v37 = v12 + 40;
  sub_24E61DA68(&v41, (v12 + 40), qword_27F21B590, &unk_24F93BE30);
  v13 = v10[6];
  v14 = sub_24F92A6D8();
  v15 = *(*(v14 - 8) + 56);
  v40 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = v10[7];
  v17 = sub_24F929608();
  v18 = *(*(v17 - 8) + 56);
  v39 = v16;
  v18(&v12[v16], 1, 1, v17);
  v19 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24EF7D968();
  v20 = v36;
  sub_24F92D108();
  if (v20)
  {
    v21 = v37;
    __swift_destroy_boxed_opaque_existential_1(v38);
    sub_24E601704(v21, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v12[v40], &qword_27F215440, &unk_24F942BD0);
    return sub_24E601704(&v12[v39], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v36 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v44 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v22 = v42;
    *v12 = v41;
    *(v12 + 1) = v22;
    *(v12 + 4) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v44 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    v23 = v34;
    sub_24E61DA68(&v41, v37, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v41) = 2;
    sub_24E65CAA0();
    v24 = v35;
    sub_24F92CC68();
    sub_24E61DA68(v6, &v12[v40], &qword_27F215440, &unk_24F942BD0);
    LOBYTE(v41) = 3;
    sub_24EF7DA84(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v25 = v32;
    sub_24F92CC18();
    sub_24E61DA68(v25, &v12[v39], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v41) = 4;
    v26 = sub_24F92CC28();
    v28 = v27;
    (*(v23 + 8))(v9, v24);
    v29 = &v12[v10[8]];
    *v29 = v26;
    v29[1] = v28;
    sub_24EF7D9BC(v12, v31, type metadata accessor for FriendRequestOverlayHeader);
    __swift_destroy_boxed_opaque_existential_1(v38);
    return sub_24EF7DA24(v12, type metadata accessor for FriendRequestOverlayHeader);
  }
}

uint64_t sub_24EF7C7F0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x656C746974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6575676573;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24EF7C884@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EF7DCCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EF7C8AC(uint64_t a1)
{
  v2 = sub_24EF7D968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF7C8E8(uint64_t a1)
{
  v2 = sub_24EF7D968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF7C924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v7, a2);
}

unint64_t sub_24EF7CA54()
{
  result = qword_27F235098;
  if (!qword_27F235098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235098);
  }

  return result;
}

uint64_t sub_24EF7CAA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v60 = a2;
  v59 = sub_24F9248C8();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2350B8, &qword_24F9B5D78);
  MEMORY[0x28223BE20](v55);
  v56 = &v52 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2350C0, &qword_24F9B5D80);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v54 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2350C8, &qword_24F9B5D88);
  MEMORY[0x28223BE20](v6 - 8);
  v64 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v52 - v9;
  v10 = (a1 + *(type metadata accessor for FriendRequestOverlayHeader(0) + 32));
  v11 = v10[1];
  *&v72 = *v10;
  *(&v72 + 1) = v11;
  sub_24E600AEC();

  v12 = sub_24F925E18();
  v14 = v13;
  v16 = v15;
  sub_24F925898();
  v17 = sub_24F925C98();
  v19 = v18;
  v21 = v20;

  sub_24E600B40(v12, v14, v16 & 1);

  sub_24F925938();
  v22 = sub_24F925B78();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_24E600B40(v17, v19, v21 & 1);

  sub_24E60169C(a1 + 40, v74, qword_27F24EC90, &unk_24F93C1D0);
  if (v75)
  {
    sub_24E601704(v74, qword_27F21B590, &unk_24F93BE30);
    v29 = sub_24F9249A8();
    sub_24EF7D210(&v72);
    v31 = *(&v72 + 1);
    v30 = v72;
    v53 = v26;
    v32 = v73[0];
    v52 = *(v73 + 8);
    v71 = 1;
    v70 = v73[0];
    v33 = sub_24F925898();
    KeyPath = swift_getKeyPath();
    v65 = v29;
    LOBYTE(v66) = 1;
    *(&v66 + 1) = v30;
    *&v67 = v31;
    BYTE8(v67) = v32;
    v68 = v52;
    *&v69 = KeyPath;
    *(&v69 + 1) = v33;
    sub_24F925938();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2350D8, &qword_24F9B5DC8);
    sub_24EF7D6D0();
    v35 = v56;
    sub_24F9260C8();
    v73[1] = v67;
    v73[2] = v68;
    v73[3] = v69;
    v72 = v65;
    v73[0] = v66;
    sub_24E601704(&v72, &qword_27F2350D8, &qword_24F9B5DC8);
    v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2350E8, &unk_24F9B5DE0) + 36));
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A0, &unk_24F9B4DB0) + 28);
    sub_24F924CF8();
    v38 = sub_24F924D08();
    (*(*(v38 - 8) + 56))(v36 + v37, 0, 1, v38);
    *v36 = swift_getKeyPath();
    LODWORD(v36) = sub_24F9251C8();
    v39 = (v35 + *(v55 + 36));
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
    v41 = *MEMORY[0x277CE13B8];
    v42 = sub_24F927748();
    (*(*(v42 - 8) + 104))(&v39[v40], v41, v42);
    *v39 = v36;
    v43 = v57;
    sub_24F9248B8();
    sub_24EF7D7BC();
    v44 = v54;
    LOBYTE(v26) = v53;
    _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
    (*(v58 + 8))(v43, v59);
    sub_24E601704(v35, &qword_27F2350B8, &qword_24F9B5D78);
    v45 = v61;
    v46 = v63;
    v47 = v62;
    (*(v61 + 32))(v63, v44, v62);
    (*(v45 + 56))(v46, 0, 1, v47);
  }

  else
  {
    sub_24E601704(v74, qword_27F21B590, &unk_24F93BE30);
    v46 = v63;
    (*(v61 + 56))(v63, 1, 1, v62);
  }

  v48 = v64;
  sub_24EF7D658(v46, v64);
  v49 = v60;
  *v60 = v22;
  v49[1] = v24;
  *(v49 + 16) = v26 & 1;
  v49[3] = v28;
  v49[4] = 0;
  *(v49 + 40) = 1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2350D0, &qword_24F9B5D90);
  sub_24EF7D658(v48, v49 + *(v50 + 64));
  sub_24E5FD138(v22, v24, v26 & 1);

  sub_24E601704(v46, &qword_27F2350C8, &qword_24F9B5D88);
  sub_24E601704(v48, &qword_27F2350C8, &qword_24F9B5D88);
  sub_24E600B40(v22, v24, v26 & 1);
}

uint64_t sub_24EF7D210@<X0>(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0x535F4E4F49544341;
  v2._object = 0xEE004C4C415F4545;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  localizedString(_:comment:)(v2, v3);
  sub_24E600AEC();
  v4 = sub_24F925E18();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_24F926DF8();
  *a1 = v4;
  *(a1 + 8) = v6;
  v8 &= 1u;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  sub_24E5FD138(v4, v6, v8);

  sub_24E600B40(v4, v6, v8);
}

uint64_t sub_24EF7D304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24F9249A8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2350B0, &qword_24F9B5D70);
  return sub_24EF7CAA8(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_24EF7D35C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F924248();
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = sub_24F924258();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v9 = *(v8 + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_24F924B38();
  (*(*(v11 - 8) + 104))(&v7[v9], v10, v11);
  __asm { FMOV            V0.2D, #24.0 }

  *v7 = _Q0;
  *&v7[*(v2 + 20)] = 0xC014000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v17 = sub_24F926D08();

  v18 = MEMORY[0x277CDFBC8];
  sub_24EF7D9BC(v7, v4, MEMORY[0x277CDFBC8]);
  sub_24EF7DA84(&qword_27F214338, MEMORY[0x277CDFBC8], MEMORY[0x277CDFBC0]);
  v19 = sub_24F927348();
  result = sub_24EF7DA24(v7, v18);
  *(a1 + 40) = v19;
  *(a1 + 48) = v17;
  return result;
}

uint64_t sub_24EF7D510(uint64_t a1)
{
  sub_24EF7CA54();

  return sub_24F9218E8();
}

unint64_t sub_24EF7D5A0()
{
  result = qword_27F2350A8;
  if (!qword_27F2350A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2350A8);
  }

  return result;
}

uint64_t sub_24EF7D658(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2350C8, &qword_24F9B5D88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EF7D6D0()
{
  result = qword_27F2350E0;
  if (!qword_27F2350E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2350D8, &qword_24F9B5DC8);
    sub_24E602068(&qword_27F2282A0, &qword_27F2282A8, &unk_24F9B5DD0, MEMORY[0x277CE1138]);
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2350E0);
  }

  return result;
}

unint64_t sub_24EF7D7BC()
{
  result = qword_27F2350F0;
  if (!qword_27F2350F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2350B8, &qword_24F9B5D78);
    sub_24EF7D874();
    sub_24E602068(&qword_27F213F88, &qword_27F213F90, &qword_24F93BE60, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2350F0);
  }

  return result;
}

unint64_t sub_24EF7D874()
{
  result = qword_27F2350F8;
  if (!qword_27F2350F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2350E8, &unk_24F9B5DE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2350D8, &qword_24F9B5DC8);
    sub_24EF7D6D0();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F21A958, &qword_27F2365A0, &unk_24F9B4DB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2350F8);
  }

  return result;
}

unint64_t sub_24EF7D968()
{
  result = qword_27F235108;
  if (!qword_27F235108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235108);
  }

  return result;
}

uint64_t sub_24EF7D9BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EF7DA24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EF7DA84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EF7DAE0()
{
  result = qword_27F235118;
  if (!qword_27F235118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235120, &qword_24F9B5E48);
    sub_24E602068(&qword_27F235128, &qword_27F235130, &unk_24F9B5E50, MEMORY[0x277CE1138]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235118);
  }

  return result;
}

unint64_t sub_24EF7DBC8()
{
  result = qword_27F235138;
  if (!qword_27F235138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235138);
  }

  return result;
}

unint64_t sub_24EF7DC20()
{
  result = qword_27F235140;
  if (!qword_27F235140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235140);
  }

  return result;
}

unint64_t sub_24EF7DC78()
{
  result = qword_27F235148;
  if (!qword_27F235148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235148);
  }

  return result;
}

uint64_t sub_24EF7DCCC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_24EF7DEC8()
{
  if (!qword_27F21B190)
  {
    v0 = sub_24F923578();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21B190);
    }
  }
}

void sub_24EF7DF18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_24EF7DF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F927618();
  v6 = v5;
  KeyPath = swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235160, &qword_24F9B6000);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235168, &unk_24F9B6008) + 36);
  *v9 = KeyPath;
  *(v9 + 8) = 0;
  *(v9 + 16) = v4;
  *(v9 + 24) = v6;
  sub_24EF7E220(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B9C0, &qword_24F95B820);
  sub_24F926F28();
  v10 = v26[0];
  *(&v26[3] + 6) = v24[3];
  *(&v26[4] + 6) = v24[4];
  *(&v26[5] + 6) = v25[0];
  *(&v26[5] + 15) = *(v25 + 9);
  *(v26 + 6) = v24[0];
  *(&v26[1] + 6) = v24[1];
  *(&v26[2] + 6) = v24[2];
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235170, &qword_24F9B6018) + 36);
  v12 = v26[4];
  *(v11 + 50) = v26[3];
  *(v11 + 66) = v12;
  *(v11 + 82) = v26[5];
  *(v11 + 97) = *(&v26[5] + 15);
  *(v11 + 2) = v26[0];
  v13 = v26[2];
  *(v11 + 18) = v26[1];
  *v11 = 1;
  *(v11 + 34) = v13;
  *(v11 + 120) = v10;
  v14 = sub_24F927618();
  v16 = v15;
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235178, &qword_24F9B6020) + 36));
  v18 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235180, &qword_24F9B6028) + 36);
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = type metadata accessor for FadeOutMask(0);
  v20 = *(v19 + 20);
  *&v18[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  v21 = &v18[*(v19 + 24)];
  type metadata accessor for HeroSafeAreaMetrics(0);
  sub_24EF80DCC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  result = sub_24F923598();
  *v21 = result;
  v21[8] = v23 & 1;
  *v17 = v14;
  v17[1] = v16;
  return result;
}

__n128 sub_24EF7E220@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_24F923F78();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_24F924848();
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  if (*(v1 + 8) == 1)
  {
    v32 = *v1;
  }

  else
  {

    sub_24F92BDC8();
    v11 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v10, 0);
    (*(v7 + 8))(v9, v28);
    LOBYTE(v10) = v32;
  }

  if (v10 > 1u)
  {
    if (v10 == 2)
    {
      v14 = v1 + *(type metadata accessor for HeroMediaBlurModifier(0) + 24);
      v15 = *v14;
      if (*(v14 + 8) == 1)
      {
        v31 = *v14;
      }

      else
      {

        sub_24F92BDC8();
        v22 = sub_24F9257A8();
        v27 = v3;
        v23 = v22;
        sub_24F921FD8();

        v3 = v27;
        sub_24F924838();
        swift_getAtKeyPath();

        (*(v7 + 8))(v9, v28);
        v15 = v31;
      }

      sub_24F7699B0(v6);
      sub_24EF80134(v15, v6, v29);
      goto LABEL_19;
    }

LABEL_11:
    v16 = v1 + *(type metadata accessor for HeroMediaBlurModifier(0) + 24);
    v17 = *v16;
    if (*(v16 + 8) == 1)
    {
      v31 = *v16;
    }

    else
    {

      sub_24F92BDC8();
      v18 = sub_24F9257A8();
      v27 = v4;
      v19 = v3;
      v20 = v18;
      sub_24F921FD8();

      v3 = v19;
      v4 = v27;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v7 + 8))(v9, v28);
      v17 = v31;
    }

    sub_24F7699B0(v6);
    sub_24EF804B8(v17, v6, v29);
LABEL_19:

    (*(v4 + 8))(v6, v3);
    goto LABEL_20;
  }

  if (v10)
  {
    goto LABEL_11;
  }

  v12 = v1 + *(type metadata accessor for HeroMediaBlurModifier(0) + 24);
  v13 = *v12;
  if (*(v12 + 8) == 1)
  {
    v31 = *v12;
  }

  else
  {

    sub_24F92BDC8();
    v21 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v28);
    v13 = v31;
  }

  sub_24EF7FD44(v13, v29);

LABEL_20:
  v24 = v30[0];
  *(a1 + 64) = v29[4];
  *(a1 + 80) = v24;
  *(a1 + 89) = *(v30 + 9);
  v25 = v29[1];
  *a1 = v29[0];
  *(a1 + 16) = v25;
  result = v29[3];
  *(a1 + 32) = v29[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24EF7E724(uint64_t a1, char a2)
{
  v4 = type metadata accessor for BottomLeadingRadialDarkeningGradient(0);
  MEMORY[0x28223BE20](v4);
  v37 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for LeadingRadialDarkeningGradient(0);
  MEMORY[0x28223BE20](v38);
  v34 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2351E0, &qword_24F9B6208);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2351E8, &qword_24F9B6210);
  MEMORY[0x28223BE20](v35);
  v36 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2351F0, &qword_24F9B6218);
  MEMORY[0x28223BE20](v11);
  v39 = &v33 - v12;
  v13 = sub_24F924848();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    sub_24F92BDC8();
    v17 = sub_24F9257A8();
    v33 = v7;
    v18 = v4;
    v19 = v17;
    sub_24F921FD8();

    v4 = v18;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(a1, 0);
    (*(v14 + 8))(v16, v13);
    LOBYTE(a1) = v40;
  }

  if (a1 <= 1u)
  {
    if (!a1)
    {
      swift_storeEnumTagMultiPayload();
      sub_24EF80DCC(&qword_27F235200, type metadata accessor for LeadingRadialDarkeningGradient, &unk_24F9B62D8);
      v20 = v39;
      sub_24F924E28();
      sub_24EF80E7C(v20, v9);
      swift_storeEnumTagMultiPayload();
      sub_24EF80D10();
      sub_24EF80DCC(&qword_27F235208, type metadata accessor for BottomLeadingRadialDarkeningGradient, &unk_24F9B6288);
      sub_24F924E28();
      return sub_24EF80EEC(v20);
    }

    goto LABEL_8;
  }

  if (a1 != 2)
  {
LABEL_8:
    type metadata accessor for HeroSafeAreaMetrics(0);
    sub_24EF80DCC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
    v29 = sub_24F923598();
    v30 = v37;
    *v37 = v29;
    *(v30 + 8) = v31 & 1;
    v32 = *(v4 + 20);
    *(v30 + v32) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
    swift_storeEnumTagMultiPayload();
    v26 = type metadata accessor for BottomLeadingRadialDarkeningGradient;
    sub_24EF80E14(v30, v9, type metadata accessor for BottomLeadingRadialDarkeningGradient);
    swift_storeEnumTagMultiPayload();
    sub_24EF80D10();
    sub_24EF80DCC(&qword_27F235208, type metadata accessor for BottomLeadingRadialDarkeningGradient, &unk_24F9B6288);
    sub_24F924E28();
    v28 = v30;
    return sub_24EF80F54(v28, v26);
  }

  type metadata accessor for HeroSafeAreaMetrics(0);
  sub_24EF80DCC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  v22 = sub_24F923598();
  v23 = v34;
  *v34 = v22;
  *(v23 + 8) = v24 & 1;
  v25 = *(v38 + 20);
  *(v23 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  v26 = type metadata accessor for LeadingRadialDarkeningGradient;
  sub_24EF80E14(v23, v36, type metadata accessor for LeadingRadialDarkeningGradient);
  swift_storeEnumTagMultiPayload();
  sub_24EF80DCC(&qword_27F235200, type metadata accessor for LeadingRadialDarkeningGradient, &unk_24F9B62D8);
  v27 = v39;
  sub_24F924E28();
  sub_24EF80E7C(v27, v9);
  swift_storeEnumTagMultiPayload();
  sub_24EF80D10();
  sub_24EF80DCC(&qword_27F235208, type metadata accessor for BottomLeadingRadialDarkeningGradient, &unk_24F9B6288);
  sub_24F924E28();
  sub_24EF80EEC(v27);
  v28 = v23;
  return sub_24EF80F54(v28, v26);
}

uint64_t sub_24EF7EE28@<X0>(uint64_t a1@<X8>)
{
  sub_24EF7E724(*v1, *(v1 + 8));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2351D8, &qword_24F9B6200);
  *(a1 + *(result + 36)) = 0;
  return result;
}

void sub_24EF7EE70(uint64_t a1@<X8>)
{
  v3 = sub_24F923F78();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v49 = (&v45 - v6);
  v7 = sub_24F924848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = *(v1 + 8);
  v46 = v1;
  if (v12 == 1)
  {
    v50 = v11;

    v13 = v11;
  }

  else
  {

    sub_24F92BDC8();
    v14 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
    v13 = v50;
  }

  swift_getKeyPath();
  *&v51 = v13;
  sub_24EF80DCC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  sub_24F91FD88();

  v15 = *(v13 + 120);
  v16 = *(v13 + 128);
  v17 = *(v13 + 136);

  v18 = 0uLL;
  v19 = 0.0;
  if ((v17 & 1) == 0)
  {

    if ((v12 & 1) == 0)
    {
      sub_24F92BDC8();
      v24 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();

      (*(v8 + 8))(v10, v7);
      v11 = v51;
    }

    swift_getKeyPath();
    *&v51 = v11;
    sub_24F91FD88();

    v25 = *(v11 + 80);
    v26 = *(v11 + 88);
    v27 = *(v11 + 96);
    v28 = *(v11 + 104);
    v29 = *(v11 + 112);

    if (v29)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0uLL;
      v23 = 0uLL;
      v18 = 0uLL;
      goto LABEL_21;
    }

    v30 = v16 - v26;
    type metadata accessor for BottomLeadingRadialDarkeningGradient(0);
    v31 = v49;
    sub_24F7699B0(v49);
    v33 = v47;
    v32 = v48;
    v34 = *(v47 + 88);
    v35 = v34(v31, v48);
    v36 = *MEMORY[0x277CDFA88];
    v37 = MEMORY[0x277CDFA90];
    if (v35 != *MEMORY[0x277CDFA88])
    {
      if (v35 == *MEMORY[0x277CDFA90])
      {
        v54.origin.x = v25;
        v54.origin.y = v26;
        v54.size.width = v27;
        v54.size.height = v28;
        MaxX = v15 - CGRectGetMinX(v54);
        goto LABEL_15;
      }

      (*(v33 + 8))(v49, v32);
    }

    v55.origin.x = v25;
    v55.origin.y = v26;
    v55.size.width = v27;
    v55.size.height = v28;
    MaxX = CGRectGetMaxX(v55);
LABEL_15:
    v56.origin.x = v25;
    v56.origin.y = v26;
    v56.size.width = v27;
    v56.size.height = v28;
    CGRectGetHeight(v56);
    v39 = v45;
    sub_24F7699B0(v45);
    v40 = v34(v39, v32);
    if (v40 != v36)
    {
      if (v40 == *v37)
      {
        sub_24F927858();
LABEL_20:
        v19 = MaxX / v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_24F93A400;
        sub_24F926C88();
        *(v41 + 32) = sub_24F9273C8();
        *(v41 + 40) = v42;
        sub_24F926C98();
        *(v41 + 48) = sub_24F9273C8();
        *(v41 + 56) = v43;
        sub_24F9273D8();
        sub_24F923C78();
        sub_24F9278A8();
        v18 = v51;
        v22 = v52;
        v20 = v53;
        *(&v23 + 1) = v44;
        v21 = 0x3FF0000000000000;
        goto LABEL_21;
      }

      (*(v33 + 8))(v39, v32);
    }

    sub_24F927848();
    goto LABEL_20;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0uLL;
  v23 = 0uLL;
LABEL_21:
  *a1 = v18;
  *(a1 + 16) = v22;
  *(a1 + 32) = v20;
  *(a1 + 40) = v19;
  *(a1 + 48) = v21;
  *(a1 + 56) = v23;
}

void sub_24EF7F414(void *a1@<X8>)
{
  v42 = a1;
  v2 = sub_24F923F78();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v38 = (&v38 - v5);
  v6 = sub_24F924848();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *(v1 + 8);

  v12 = v10;
  if ((v11 & 1) == 0)
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v12 = v43;
  }

  swift_getKeyPath();
  v43 = v12;
  sub_24EF80DCC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  sub_24F91FD88();

  v14 = *(v12 + 136);

  v15 = 0uLL;
  if ((v14 & 1) == 0)
  {

    if ((v11 & 1) == 0)
    {
      sub_24F92BDC8();
      v18 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();

      (*(v7 + 8))(v9, v6);
      v10 = v43;
    }

    swift_getKeyPath();
    v43 = v10;
    sub_24F91FD88();

    v20 = *(v10 + 80);
    v19 = *(v10 + 88);
    v22 = *(v10 + 96);
    v21 = *(v10 + 104);
    v23 = *(v10 + 112);

    if (v23)
    {
      v16 = 0;
      v17 = 0uLL;
      v15 = 0uLL;
      goto LABEL_18;
    }

    type metadata accessor for LeadingRadialDarkeningGradient(0);
    v24 = v38;
    sub_24F7699B0(v38);
    v26 = v40;
    v25 = v41;
    v27 = *(v40 + 88);
    v28 = v27(v24, v41);
    v29 = *MEMORY[0x277CDFA88];
    v30 = MEMORY[0x277CDFA90];
    if (v28 != *MEMORY[0x277CDFA88] && v28 != *MEMORY[0x277CDFA90])
    {
      (*(v26 + 8))(v24, v25);
    }

    v31 = v39;
    sub_24F7699B0(v39);
    v32 = v27(v31, v25);
    if (v32 != v29)
    {
      if (v32 == *v30)
      {
        v46.origin.x = v20;
        v46.origin.y = v19;
        v46.size.width = v22;
        v46.size.height = v21;
        CGRectGetMinX(v46);
LABEL_17:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_24F9479A0;
        sub_24F926C88();
        *(v33 + 32) = sub_24F9273C8();
        *(v33 + 40) = v34;
        sub_24F926C88();
        *(v33 + 48) = sub_24F9273C8();
        *(v33 + 56) = v35;
        sub_24F926C98();
        *(v33 + 64) = sub_24F9273C8();
        *(v33 + 72) = v36;
        sub_24F9273D8();
        sub_24F923C78();
        v16 = v43;
        v15 = v44;
        v17 = v45;
        goto LABEL_18;
      }

      (*(v26 + 8))(v31, v25);
    }

    v47.origin.x = v20;
    v47.origin.y = v19;
    v47.size.width = v22;
    v47.size.height = v21;
    CGRectGetMaxX(v47);
    goto LABEL_17;
  }

  v16 = 0;
  v17 = 0uLL;
LABEL_18:
  v37 = v42;
  *v42 = v16;
  *(v37 + 1) = v15;
  *(v37 + 3) = v17;
}

double sub_24EF7F960@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = (v1 + *(type metadata accessor for FadeOutMask(0) + 24));
  v9 = *v8;
  v10 = *(v8 + 8);

  if ((v10 & 1) == 0)
  {
    sub_24F92BDC8();
    v11 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v9 = v25;
  }

  swift_getKeyPath();
  *&v25 = v9;
  sub_24EF80DCC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  sub_24F91FD88();

  v12 = *(v9 + 136);

  if (v12)
  {
    memset(v23, 0, sizeof(v23));
    v24 = 1;
  }

  else
  {
    v13 = *v2;
    if (*(v2 + 8) != 1)
    {

      sub_24F92BDC8();
      v14 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v13, 0);
      (*(v5 + 8))(v7, v4);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_24F9479A0;
    sub_24F926C88();
    *(v15 + 32) = sub_24F9273C8();
    *(v15 + 40) = v16;
    sub_24F926C88();
    *(v15 + 48) = sub_24F9273C8();
    *(v15 + 56) = v17;
    sub_24F926C98();
    *(v15 + 64) = sub_24F9273C8();
    *(v15 + 72) = v18;
    sub_24F927878();
    sub_24F927898();
    sub_24F9273D8();
    sub_24F923BD8();
    *v23 = v29;
    *&v23[8] = v30;
    *&v23[24] = v31;
    v24 = 0;
  }

  sub_24E86BC28();
  sub_24E760430();
  sub_24F924E28();
  result = *&v25;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  *a1 = v25;
  *(a1 + 16) = v20;
  *(a1 + 32) = v21;
  *(a1 + 40) = v22;
  return result;
}

void sub_24EF7FD44(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_24EF80DCC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  sub_24F91FD88();

  v4 = xmmword_24F950E90;
  v5 = 0uLL;
  if (*(a1 + 136))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0uLL;
  }

  else
  {
    swift_getKeyPath();
    sub_24F91FD88();

    if (*(a1 + 112) & 1) == 0 && (v10 = *(a1 + 96), v9 = *(a1 + 104), v12 = *(a1 + 80), v11 = *(a1 + 88), v24.origin.x = v12, v24.origin.y = v11, v24.size.width = v10, v24.size.height = v9, CGRectGetHeight(v24), v25.origin.x = v12, v25.origin.y = v11, v25.size.width = v10, v25.size.height = v9, CGRectGetMinY(v25), v26.origin.x = v12, v26.origin.y = v11, v26.size.width = v10, v26.size.height = v9, CGRectGetMinY(v26), MEMORY[0x253048030](0, 0, 0x3FF0000000000000, 0), (sub_24F9226B8()) && (MEMORY[0x253048030](0, 0, 0x3FF0000000000000, 0), (sub_24F9226B8()))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_24F93A070;
      sub_24F926C88();
      sub_24F926D08();

      *(v7 + 32) = sub_24F9273C8();
      *(v7 + 40) = v13;
      sub_24F926C88();
      sub_24F926D08();

      *(v7 + 48) = sub_24F9273C8();
      *(v7 + 56) = v14;
      sub_24F926C88();
      sub_24F926D08();

      *(v7 + 64) = sub_24F9273C8();
      *(v7 + 72) = v15;
      sub_24F926C88();
      sub_24F926D08();

      *(v7 + 80) = sub_24F9273C8();
      *(v7 + 88) = v16;
      sub_24F926C88();
      sub_24F926D08();

      *(v7 + 96) = sub_24F9273C8();
      *(v7 + 104) = v17;
      sub_24F926C88();
      sub_24F926D08();

      *(v7 + 112) = sub_24F9273C8();
      *(v7 + 120) = v18;
      sub_24F927878();
      v22 = v19;
      v23 = v20;
      sub_24F927898();
      *&v5 = v22;
      *(&v5 + 1) = v23;
      *(&v8 + 1) = v21;
      v6 = 0x4000000000000000;
      v4 = xmmword_24F9A8940;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = 0uLL;
      v5 = 0uLL;
      v4 = xmmword_24F950E90;
    }
  }

  *a2 = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = v6;
  *(a2 + 32) = 0;
  *(a2 + 40) = v7;
  *(a2 + 48) = v5;
  *(a2 + 64) = v8;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  *(a2 + 104) = 0;
}

void sub_24EF80134(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F923F78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v33 = a1;
  sub_24EF80DCC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  sub_24F91FD88();

  v10 = xmmword_24F950E90;
  v11 = 0uLL;
  v12 = 0.0;
  if ((*(a1 + 136) & 1) == 0)
  {
    v30 = xmmword_24F950E90;
    v19 = *(a1 + 120);
    swift_getKeyPath();
    v33 = a1;
    sub_24F91FD88();

    if (*(a1 + 112))
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v11 = 0uLL;
      v10 = v30;
      goto LABEL_11;
    }

    v21 = *(a1 + 96);
    v20 = *(a1 + 104);
    v23 = *(a1 + 80);
    v22 = *(a1 + 88);
    (*(v7 + 16))(v9, a2, v6);
    v24 = (*(v7 + 88))(v9, v6);
    if (v24 != *MEMORY[0x277CDFA88])
    {
      if (v24 == *MEMORY[0x277CDFA90])
      {
        v34.origin.x = v23;
        v34.origin.y = v22;
        v34.size.width = v21;
        v34.size.height = v20;
        MaxX = v19 - CGRectGetMinX(v34);
        v15 = 0x4000000000000000;
LABEL_10:
        v12 = v19 + MaxX;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_24F9479A0;
        sub_24F926C88();
        *(v14 + 32) = sub_24F9273C8();
        *(v14 + 40) = v26;
        sub_24F926C88();
        *(v14 + 48) = sub_24F9273C8();
        *(v14 + 56) = v27;
        sub_24F926C98();
        *(v14 + 64) = sub_24F9273C8();
        *(v14 + 72) = v28;
        sub_24F9278A8();
        v18 = 1;
        v31 = 1;
        LOBYTE(v33) = 0;
        v32 = 0;
        *(&v11 + 1) = v29;
        v17 = 0x3FF0000000000000;
        v16 = 0x3FE0000000000000;
        v13 = 0x4000000000000000;
        v10 = xmmword_24F9A8940;
        goto LABEL_11;
      }

      (*(v7 + 8))(v9, v6);
    }

    v35.origin.x = v23;
    v35.origin.y = v22;
    v35.size.width = v21;
    v35.size.height = v20;
    MaxX = CGRectGetMaxX(v35);
    v15 = 0xBFF0000000000000;
    goto LABEL_10;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
LABEL_11:
  *a3 = v10;
  *(a3 + 16) = 0;
  *(a3 + 24) = v13;
  *(a3 + 32) = 0;
  *(a3 + 40) = v14;
  *(a3 + 48) = v15;
  *(a3 + 56) = v16;
  *(a3 + 64) = 0;
  *(a3 + 72) = v12;
  *(a3 + 80) = v17;
  *(a3 + 88) = v11;
  *(a3 + 104) = v18;
}

void sub_24EF804B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v43 = a2;
  v5 = sub_24F923F78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  swift_getKeyPath();
  v46 = a1;
  sub_24EF80DCC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  sub_24F91FD88();

  v12 = xmmword_24F950E90;
  v13 = 0uLL;
  if ((*(a1 + 136) & 1) == 0)
  {
    v42 = xmmword_24F950E90;
    v19 = *(a1 + 120);
    v20 = *(a1 + 128);
    swift_getKeyPath();
    v46 = a1;
    sub_24F91FD88();

    if (*(a1 + 112))
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0uLL;
      v18 = 0uLL;
      v13 = 0uLL;
      v12 = v42;
      goto LABEL_16;
    }

    v22 = *(a1 + 96);
    v21 = *(a1 + 104);
    v24 = *(a1 + 80);
    v23 = *(a1 + 88);
    v25 = v20 - v23;
    v26 = *(v6 + 16);
    v26(v11, v43, v5);
    v27 = *(v6 + 88);
    v28 = v27(v11, v5);
    v29 = *MEMORY[0x277CDFA88];
    if (v28 != *MEMORY[0x277CDFA88])
    {
      if (v28 == *MEMORY[0x277CDFA90])
      {
        v47.origin.x = v24;
        v47.origin.y = v23;
        v47.size.width = v22;
        v47.size.height = v21;
        MaxX = v19 - CGRectGetMinX(v47);
        goto LABEL_10;
      }

      (*(v6 + 8))(v11, v5);
    }

    v48.origin.x = v24;
    v48.origin.y = v23;
    v48.size.width = v22;
    v48.size.height = v21;
    MaxX = CGRectGetMaxX(v48);
LABEL_10:
    v49.origin.x = v24;
    v49.origin.y = v23;
    v49.size.width = v22;
    v49.size.height = v21;
    *&v31 = v25 + CGRectGetHeight(v49) * 0.8;
    v42 = v31;
    *&v31 = MaxX / v25;
    v41 = v31;
    v26(v8, v43, v5);
    v32 = v27(v8, v5);
    if (v32 != v29)
    {
      if (v32 == *MEMORY[0x277CDFA90])
      {
        sub_24F927858();
LABEL_15:
        v43 = v33;
        v40 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_24F9479A0;
        sub_24F926C88();
        *(v15 + 32) = sub_24F9273C8();
        *(v15 + 40) = v35;
        sub_24F926C88();
        *(v15 + 48) = sub_24F9273C8();
        *(v15 + 56) = v36;
        sub_24F926C98();
        *(v15 + 64) = sub_24F9273C8();
        *(v15 + 72) = v37;
        sub_24F927848();
        v16 = 1;
        v44 = 1;
        LOBYTE(v46) = 0;
        v45 = 0;
        *&v38 = v43;
        *(&v38 + 1) = v40;
        *&v17 = v42;
        *(&v17 + 1) = v41;
        *(&v18 + 1) = v39;
        v14 = 0x4000000000000000;
        v12 = xmmword_24F9A8940;
        v13 = v38;
        goto LABEL_16;
      }

      (*(v6 + 8))(v8, v5);
    }

    sub_24F927848();
    goto LABEL_15;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0uLL;
  v18 = 0uLL;
LABEL_16:
  *a3 = v12;
  *(a3 + 16) = 0;
  *(a3 + 24) = v14;
  *(a3 + 32) = 0;
  *(a3 + 40) = v15;
  *(a3 + 48) = v13;
  *(a3 + 64) = 0;
  *(a3 + 72) = v17;
  *(a3 + 88) = v18;
  *(a3 + 104) = v16;
}

void sub_24EF80934(uint64_t a1)
{
  sub_24EF7DEC8();
  if (v1 <= 0x3F)
  {
    sub_24EF7DF18(319, &qword_27F2168D0, MEMORY[0x277CDFAA0]);
    if (v2 <= 0x3F)
    {
      sub_24EF7DF18(319, &qword_27F21EAF0, type metadata accessor for HeroSafeAreaMetrics);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24EF80A1C()
{
  result = qword_27F235198;
  if (!qword_27F235198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235178, &qword_24F9B6020);
    sub_24EF80AD4();
    sub_24E602068(&qword_27F2351D0, &qword_27F235180, &qword_24F9B6028, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235198);
  }

  return result;
}

unint64_t sub_24EF80AD4()
{
  result = qword_27F2351A0;
  if (!qword_27F2351A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235170, &qword_24F9B6018);
    sub_24EF80B60();
    sub_24EF80C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2351A0);
  }

  return result;
}

unint64_t sub_24EF80B60()
{
  result = qword_27F2351A8;
  if (!qword_27F2351A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235168, &unk_24F9B6008);
    sub_24E602068(&qword_27F2351B0, &qword_27F235160, &qword_24F9B6000, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F2351B8, &qword_27F2351C0, qword_24F9B6158, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2351A8);
  }

  return result;
}

unint64_t sub_24EF80C44()
{
  result = qword_27F2351C8;
  if (!qword_27F2351C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2351C8);
  }

  return result;
}

unint64_t sub_24EF80D10()
{
  result = qword_27F2351F8;
  if (!qword_27F2351F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2351F0, &qword_24F9B6218);
    sub_24EF80DCC(&qword_27F235200, type metadata accessor for LeadingRadialDarkeningGradient, &unk_24F9B62D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2351F8);
  }

  return result;
}

uint64_t sub_24EF80DCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EF80E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EF80E7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2351F0, &qword_24F9B6218);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF80EEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2351F0, &qword_24F9B6218);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EF80F54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EF81168(uint64_t a1)
{
  sub_24EF7DF18(319, &qword_27F21EAF0, type metadata accessor for HeroSafeAreaMetrics);
  if (v1 <= 0x3F)
  {
    sub_24EF7DF18(319, &qword_27F2168D0, MEMORY[0x277CDFAA0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24EF81228()
{
  result = qword_27F235230;
  if (!qword_27F235230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235238, &qword_24F9B6270);
    sub_24E86BC28();
    sub_24E760430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235230);
  }

  return result;
}

unint64_t sub_24EF812B8()
{
  result = qword_27F235240;
  if (!qword_27F235240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2351D8, &qword_24F9B6200);
    sub_24EF81344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235240);
  }

  return result;
}

unint64_t sub_24EF81344()
{
  result = qword_27F235248;
  if (!qword_27F235248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235250, &qword_24F9B6278);
    sub_24EF813C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235248);
  }

  return result;
}

unint64_t sub_24EF813C8()
{
  result = qword_27F235258;
  if (!qword_27F235258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235260, &qword_24F9B6280);
    sub_24EF80D10();
    sub_24EF80DCC(&qword_27F235208, type metadata accessor for BottomLeadingRadialDarkeningGradient, &unk_24F9B6288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235258);
  }

  return result;
}

uint64_t sub_24EF81544(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t GameDashboardDestination.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GameDashboardDestination(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24EF85EF8(v3, v10, type metadata accessor for GameDashboardDestination);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v62 = *v10;
      v63 = v10[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_24F93A400;
      *(v64 + 32) = 0x646E696B24;
      v65 = MEMORY[0x277D22580];
      *(v64 + 72) = MEMORY[0x277D837D0];
      *(v64 + 80) = v65;
      *(v64 + 40) = 0xE500000000000000;
      *(v64 + 48) = 0xD000000000000011;
      *(v64 + 56) = 0x800000024FA656A0;
      *(v64 + 88) = 0xD000000000000011;
      *(v64 + 96) = 0x800000024FA656A0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24F93DE60;
      *(inited + 32) = 0xD000000000000015;
      v67 = inited + 32;
      *(inited + 40) = 0x800000024FA4E090;
      *(inited + 48) = v62;
      *(inited + 56) = v63;
      v68 = sub_24E6086DC(inited);
      swift_setDeallocating();
      sub_24E601704(v67, &qword_27F219F90, &qword_24F955020);
      *(v64 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
      *(v64 + 136) = sub_24EA14AE4(&qword_27F21BD70, &qword_27F227A20, &qword_24F9482B0, MEMORY[0x277D22578]);
      *(v64 + 104) = v68;
      goto LABEL_14;
    case 2u:
      v91 = v2;
      v44 = *v10;
      v90 = v10[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_24F93A400;
      *(v45 + 32) = 0x646E696B24;
      v46 = MEMORY[0x277D22580];
      *(v45 + 72) = MEMORY[0x277D837D0];
      *(v45 + 80) = v46;
      *(v45 + 40) = 0xE500000000000000;
      *(v45 + 48) = 0x6F6272656461656CLL;
      *(v45 + 56) = 0xEB00000000647261;
      *(v45 + 88) = 0x6F6272656461656CLL;
      *(v45 + 96) = 0xEB00000000647261;
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_24F93DE60;
      strcpy((v47 + 32), "leaderboardId");
      *(v47 + 46) = -4864;
      *(v47 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
      *(v47 + 80) = sub_24EA14AE4(&qword_27F212F10, &unk_27F23B740, &qword_24F93EC10, MEMORY[0x277D225D8]);
      v48 = v90;
      *(v47 + 48) = v44;
      *(v47 + 56) = v48;
      v49 = sub_24E607E40(v47);
      swift_setDeallocating();
      sub_24E601704(v47 + 32, &qword_27F212FB0, &unk_24F93A440);
      swift_deallocClassInstance();
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
      *(v45 + 128) = v50;
      v51 = sub_24E6060B8();
      *(v45 + 136) = v51;
      *(v45 + 104) = v49;
      v52 = sub_24E607E40(v45);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
      swift_arrayDestroy();
      result = swift_deallocClassInstance();
      a1[3] = v50;
      a1[4] = v51;
      *a1 = v52;
      return result;
    case 3u:
      sub_24EF86440(v10, v7, type metadata accessor for Player);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
      v53 = swift_initStackObject();
      *(v53 + 16) = xmmword_24F93A400;
      *(v53 + 32) = 0x646E696B24;
      v54 = MEMORY[0x277D22580];
      *(v53 + 72) = MEMORY[0x277D837D0];
      *(v53 + 80) = v54;
      *(v53 + 40) = 0xE500000000000000;
      strcpy((v53 + 48), "playerProfile");
      *(v53 + 62) = -4864;
      strcpy((v53 + 88), "playerProfile");
      *(v53 + 102) = -4864;
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_24F93DE60;
      *(v55 + 32) = 0x726579616C70;
      *(v55 + 40) = 0xE600000000000000;
      *(v55 + 72) = v5;
      *(v55 + 80) = sub_24EF86158(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v55 + 48));
      sub_24EF85EF8(v7, boxed_opaque_existential_1, type metadata accessor for Player);
      v57 = sub_24E607E40(v55);
      swift_setDeallocating();
      sub_24E601704(v55 + 32, &qword_27F212FB0, &unk_24F93A440);
      swift_deallocClassInstance();
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
      *(v53 + 128) = v58;
      v59 = sub_24E6060B8();
      *(v53 + 136) = v59;
      *(v53 + 104) = v57;
      v60 = sub_24E607E40(v53);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
      swift_arrayDestroy();
      a1[3] = v58;
      a1[4] = v59;
      *a1 = v60;
      return sub_24E71BF38(v7);
    case 4u:
      v26 = v10[1];
      v90 = *v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_24F93A400;
      *(v27 + 32) = 0x646E696B24;
      v91 = v2;
      v28 = MEMORY[0x277D837D0];
      v29 = MEMORY[0x277D22580];
      *(v27 + 72) = MEMORY[0x277D837D0];
      *(v27 + 80) = v29;
      *(v27 + 40) = 0xE500000000000000;
      *(v27 + 48) = 0xD000000000000013;
      *(v27 + 56) = 0x800000024FA65680;
      *(v27 + 88) = 0xD000000000000013;
      *(v27 + 96) = 0x800000024FA65680;
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_24F93DE60;
      *(v30 + 32) = 0x7974697669746361;
      v31 = v30 + 32;
      *(v30 + 72) = v28;
      *(v30 + 80) = v29;
      v32 = v90;
      *(v30 + 40) = 0xEA00000000006449;
      *(v30 + 48) = v32;
      *(v30 + 56) = v26;
      v33 = sub_24E607E40(v30);
      swift_setDeallocating();
      sub_24E601704(v31, &qword_27F212FB0, &unk_24F93A440);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
      *(v27 + 128) = v34;
      v35 = sub_24E6060B8();
      *(v27 + 136) = v35;
      *(v27 + 104) = v33;
      v36 = sub_24E607E40(v27);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
      result = swift_arrayDestroy();
      a1[3] = v34;
      a1[4] = v35;
      *a1 = v36;
      return result;
    case 5u:
      v91 = v2;
      v70 = *v10;
      v69 = v10[1];
      v71 = v10[3];
      v90 = v10[2];
      v88 = v69;
      v89 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
      v72 = swift_initStackObject();
      v87 = xmmword_24F93A400;
      *(v72 + 32) = 0x646E696B24;
      *(v72 + 16) = xmmword_24F93A400;
      v73 = MEMORY[0x277D837D0];
      v74 = MEMORY[0x277D22580];
      *(v72 + 72) = MEMORY[0x277D837D0];
      *(v72 + 80) = v74;
      *(v72 + 40) = 0xE500000000000000;
      *(v72 + 48) = 0xD000000000000010;
      *(v72 + 56) = 0x800000024FA65660;
      *(v72 + 88) = 0xD000000000000010;
      *(v72 + 96) = 0x800000024FA65660;
      v75 = swift_initStackObject();
      *(v75 + 16) = v87;
      *(v75 + 32) = 0x65636E6174736E69;
      *(v75 + 72) = v73;
      *(v75 + 80) = v74;
      *(v75 + 40) = 0xEA00000000004449;
      *(v75 + 48) = v70;
      *(v75 + 56) = v88;
      strcpy((v75 + 88), "definitionID");
      *(v75 + 101) = 0;
      *(v75 + 102) = -5120;
      *(v75 + 128) = v73;
      *(v75 + 136) = v74;
      v76 = v89;
      *(v75 + 104) = v90;
      *(v75 + 112) = v76;
      v77 = sub_24E607E40(v75);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
      swift_arrayDestroy();
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
      *(v72 + 128) = v78;
      v79 = sub_24E6060B8();
      *(v72 + 136) = v79;
      *(v72 + 104) = v77;
      v80 = sub_24E607E40(v72);
      swift_setDeallocating();
      result = swift_arrayDestroy();
      a1[3] = v78;
      a1[4] = v79;
      *a1 = v80;
      return result;
    case 6u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_24F93A400;
      *(v64 + 32) = 0x646E696B24;
      v81 = MEMORY[0x277D22580];
      *(v64 + 72) = MEMORY[0x277D837D0];
      *(v64 + 80) = v81;
      *(v64 + 40) = 0xE500000000000000;
      strcpy((v64 + 48), "challengesHub");
      *(v64 + 62) = -4864;
      strcpy((v64 + 88), "challengesHub");
      *(v64 + 102) = -4864;
      *(v64 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
      *(v64 + 136) = sub_24EA14AE4(&qword_27F21BD70, &qword_27F227A20, &qword_24F9482B0, MEMORY[0x277D22578]);
      *(v64 + 104) = MEMORY[0x277D84F98];
LABEL_14:
      v82 = sub_24E607D0C(v64);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v83 = sub_24E80FFAC(v82);

      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
      result = sub_24E6060B8();
      a1[4] = result;
      *a1 = v83;
      return result;
    case 7u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
      v39 = swift_allocObject();
      v40 = v39;
      *(v39 + 16) = xmmword_24F93A400;
      *(v39 + 32) = 0x646E696B24;
      v61 = MEMORY[0x277D22580];
      *(v39 + 72) = MEMORY[0x277D837D0];
      *(v39 + 80) = v61;
      v42 = 0x72616F6268736164;
      *(v39 + 40) = 0xE500000000000000;
      *(v39 + 48) = 0x72616F6268736164;
      v43 = 0xE900000000000064;
      goto LABEL_17;
    case 8u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
      v39 = swift_allocObject();
      v40 = v39;
      *(v39 + 16) = xmmword_24F93A400;
      *(v39 + 32) = 0x646E696B24;
      v85 = MEMORY[0x277D22580];
      *(v39 + 72) = MEMORY[0x277D837D0];
      *(v39 + 80) = v85;
      v42 = 0x6E49646E65697266;
      *(v39 + 40) = 0xE500000000000000;
      *(v39 + 48) = 0x6E49646E65697266;
      v43 = 0xED00007365746976;
      goto LABEL_17;
    case 9u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
      v39 = swift_allocObject();
      v40 = v39;
      *(v39 + 16) = xmmword_24F93A400;
      *(v39 + 32) = 0x646E696B24;
      v41 = MEMORY[0x277D22580];
      *(v39 + 72) = MEMORY[0x277D837D0];
      *(v39 + 80) = v41;
      v42 = 0x6552646E65697266;
      *(v39 + 40) = 0xE500000000000000;
      *(v39 + 48) = 0x6552646E65697266;
      v43 = 0xEE00737473657571;
LABEL_17:
      *(v39 + 56) = v43;
      *(v39 + 88) = v42;
      *(v39 + 96) = v43;
      goto LABEL_18;
    case 0xAu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_24F93A400;
      *(v40 + 32) = 0x646E696B24;
      v84 = MEMORY[0x277D22580];
      *(v40 + 72) = MEMORY[0x277D837D0];
      *(v40 + 80) = v84;
      *(v40 + 40) = 0xE500000000000000;
      *(v40 + 48) = 0x4C73646E65697266;
      *(v40 + 56) = 0xEB00000000747369;
      *(v40 + 88) = 0x4C73646E65697266;
      *(v40 + 96) = 0xEB00000000747369;
LABEL_18:
      *(v40 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
      *(v40 + 136) = sub_24EA14AE4(&qword_27F21BD70, &qword_27F227A20, &qword_24F9482B0, MEMORY[0x277D22578]);
      *(v40 + 104) = MEMORY[0x277D84F98];
      v86 = sub_24E607E40(v40);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
      result = sub_24E6060B8();
      a1[4] = result;
      *a1 = v86;
      return result;
    case 0xBu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
      v21 = swift_initStackObject();
      v22 = v21;
      *(v21 + 16) = xmmword_24F93A400;
      *(v21 + 32) = 0x646E696B24;
      v23 = MEMORY[0x277D22580];
      *(v21 + 72) = MEMORY[0x277D837D0];
      *(v21 + 80) = v23;
      v24 = 0x697463416B636970;
      *(v21 + 40) = 0xE500000000000000;
      *(v21 + 48) = 0x697463416B636970;
      v25 = 0xEC00000079746976;
      goto LABEL_6;
    case 0xCu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
      v21 = swift_initStackObject();
      v22 = v21;
      *(v21 + 16) = xmmword_24F93A400;
      *(v21 + 32) = 0x646E696B24;
      v37 = MEMORY[0x277D22580];
      *(v21 + 72) = MEMORY[0x277D837D0];
      *(v21 + 80) = v37;
      v24 = 0x65536D6574737973;
      *(v21 + 40) = 0xE500000000000000;
      *(v21 + 48) = 0x65536D6574737973;
      v25 = 0xEE0073676E697474;
LABEL_6:
      *(v21 + 56) = v25;
      *(v21 + 88) = v24;
      *(v21 + 96) = v25;
      v22[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
      v22[17] = sub_24EA14AE4(&qword_27F21BD70, &qword_27F227A20, &qword_24F9482B0, MEMORY[0x277D22578]);
      v22[13] = MEMORY[0x277D84F98];
      v38 = sub_24E607E40(v22);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
      swift_arrayDestroy();
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
      result = sub_24E6060B8();
      a1[4] = result;
      *a1 = v38;
      break;
    default:
      v11 = *v10;
      v90 = v10[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_24F93A400;
      *(v12 + 32) = 0x646E696B24;
      v13 = MEMORY[0x277D22580];
      *(v12 + 72) = MEMORY[0x277D837D0];
      *(v12 + 80) = v13;
      *(v12 + 40) = 0xE500000000000000;
      *(v12 + 48) = 0x6D65766569686361;
      *(v12 + 56) = 0xEB00000000746E65;
      *(v12 + 88) = 0x6D65766569686361;
      *(v12 + 96) = 0xEB00000000746E65;
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_24F93DE60;
      strcpy((v14 + 32), "achievementId");
      *(v14 + 46) = -4864;
      v91 = v2;
      *(v14 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
      *(v14 + 80) = sub_24EA14AE4(&qword_27F212F10, &unk_27F23B740, &qword_24F93EC10, MEMORY[0x277D225D8]);
      v15 = v90;
      *(v14 + 48) = v11;
      *(v14 + 56) = v15;
      v16 = sub_24E607E40(v14);
      swift_setDeallocating();
      sub_24E601704(v14 + 32, &qword_27F212FB0, &unk_24F93A440);
      swift_deallocClassInstance();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
      *(v12 + 128) = v17;
      v18 = sub_24E6060B8();
      *(v12 + 136) = v18;
      *(v12 + 104) = v16;
      v19 = sub_24E607E40(v12);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
      swift_arrayDestroy();
      result = swift_deallocClassInstance();
      a1[3] = v17;
      a1[4] = v18;
      *a1 = v19;
      break;
  }

  return result;
}

unint64_t sub_24EF827A4(char a1)
{
  result = 0x6D65766569686361;
  switch(a1)
  {
    case 1:
      result = 0x676E656C6C616863;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x72616F6268736164;
      break;
    case 4:
      result = 0x6E49646E65697266;
      break;
    case 5:
      result = 0x6552646E65697266;
      break;
    case 6:
      result = 0x4C73646E65697266;
      break;
    case 7:
      result = 0x6F6272656461656CLL;
      break;
    case 8:
      result = 0x7250726579616C70;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x697463416B636970;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x65536D6574737973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24EF829C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D65766569686361 && a2 == 0xED00006449746E65)
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

uint64_t sub_24EF82A54(uint64_t a1)
{
  v2 = sub_24EF863EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF82A90(uint64_t a1)
{
  v2 = sub_24EF863EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF82ACC()
{
  if (*v0)
  {
    return 0x6974696E69666564;
  }

  else
  {
    return 0x65636E6174736E69;
  }
}

uint64_t sub_24EF82B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636E6174736E69 && a2 == 0xEA00000000004449;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEC00000044496E6FLL)
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

uint64_t sub_24EF82BFC(uint64_t a1)
{
  v2 = sub_24EF86008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF82C38(uint64_t a1)
{
  v2 = sub_24EF86008();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF82C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x800000024FA4E090 == a2)
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

uint64_t sub_24EF82D24(uint64_t a1)
{
  v2 = sub_24EF86344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF82D60(uint64_t a1)
{
  v2 = sub_24EF86344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF82D9C(uint64_t a1)
{
  v2 = sub_24EF86398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF82DD8(uint64_t a1)
{
  v2 = sub_24EF86398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF82E1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EF878FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EF82E44(uint64_t a1)
{
  v2 = sub_24EF85F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF82E80(uint64_t a1)
{
  v2 = sub_24EF85F60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF82EBC(uint64_t a1)
{
  v2 = sub_24EF862F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF82EF8(uint64_t a1)
{
  v2 = sub_24EF862F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF82F34(uint64_t a1)
{
  v2 = sub_24EF8629C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF82F70(uint64_t a1)
{
  v2 = sub_24EF8629C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF82FAC(uint64_t a1)
{
  v2 = sub_24EF86248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF82FE8(uint64_t a1)
{
  v2 = sub_24EF86248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF83024(uint64_t a1)
{
  v2 = sub_24EF861F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF83060(uint64_t a1)
{
  v2 = sub_24EF861F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF830C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F6272656461656CLL && a2 == 0xED00006449647261)
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

uint64_t sub_24EF83150(uint64_t a1)
{
  v2 = sub_24EF861A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF8318C(uint64_t a1)
{
  v2 = sub_24EF861A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF831E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7974697669746361 && a2 == 0xEA00000000006449)
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

uint64_t sub_24EF83274(uint64_t a1)
{
  v2 = sub_24EF860B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF832B0(uint64_t a1)
{
  v2 = sub_24EF860B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF832EC(uint64_t a1)
{
  v2 = sub_24EF8605C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF83328(uint64_t a1)
{
  v2 = sub_24EF8605C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF83364(uint64_t a1)
{
  v2 = sub_24EF86104();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF833A0(uint64_t a1)
{
  v2 = sub_24EF86104();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF833DC(uint64_t a1)
{
  v2 = sub_24EF85FB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF83418(uint64_t a1)
{
  v2 = sub_24EF85FB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameDashboardDestination.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235288, &qword_24F9B6378);
  v92 = *(v2 - 8);
  v93 = v2;
  MEMORY[0x28223BE20](v2);
  v91 = &v57 - v3;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235290, &qword_24F9B6380);
  v60 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235298, &qword_24F9B6388);
  v88 = *(v5 - 8);
  v89 = v5;
  MEMORY[0x28223BE20](v5);
  v85 = &v57 - v6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2352A0, &qword_24F9B6390);
  v59 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v86 = &v57 - v7;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2352A8, &qword_24F9B6398);
  v58 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v84 = &v57 - v8;
  v82 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v82);
  v83 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2352B0, &qword_24F9B63A0);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v57 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2352B8, &qword_24F9B63A8);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v57 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2352C0, &qword_24F9B63B0);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v57 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2352C8, &qword_24F9B63B8);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v57 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2352D0, &qword_24F9B63C0);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v65 = &v57 - v14;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2352D8, &qword_24F9B63C8);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v57 - v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2352E0, &qword_24F9B63D0);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2352E8, &qword_24F9B63D8);
  v61 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - v19;
  v21 = type metadata accessor for GameDashboardDestination(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2352F0, &qword_24F9B63E0);
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v25 = &v57 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EF85F60();
  v98 = v25;
  sub_24F92D128();
  sub_24EF85EF8(v96, v23, type metadata accessor for GameDashboardDestination);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v103 = 2;
      sub_24EF86344();
      v39 = v64;
      v41 = v98;
      v40 = v99;
      sub_24F92CC98();
      v42 = v67;
      sub_24F92CD08();

      v43 = &v98;
      goto LABEL_12;
    case 2u:
      v108 = 7;
      sub_24EF861A0();
      v39 = v79;
      v41 = v98;
      v40 = v99;
      sub_24F92CC98();
      v42 = v81;
      sub_24F92CCA8();

      v43 = &v116;
LABEL_12:
      (*(*(v43 - 32) + 1))(v39, v42);
      return (*(v97 + 8))(v41, v40);
    case 3u:
      v44 = v83;
      sub_24EF86440(v23, v83, type metadata accessor for Player);
      v109 = 8;
      sub_24EF86104();
      v45 = v84;
      v47 = v98;
      v46 = v99;
      sub_24F92CC98();
      sub_24EF86158(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
      v48 = v87;
      sub_24F92CD48();
      (*(v58 + 8))(v45, v48);
      sub_24E71BF38(v44);
      return (*(v97 + 8))(v47, v46);
    case 4u:
      v110 = 9;
      sub_24EF860B0();
      v34 = v86;
      v36 = v98;
      v35 = v99;
      sub_24F92CC98();
      v37 = v90;
      sub_24F92CD08();

      (*(v59 + 8))(v34, v37);
      return (*(v97 + 8))(v36, v35);
    case 5u:
      v114 = 11;
      sub_24EF86008();
      v50 = v94;
      v52 = v98;
      v51 = v99;
      sub_24F92CC98();
      v113 = 0;
      v53 = v95;
      v54 = v100;
      sub_24F92CD08();

      if (!v54)
      {
        v112 = 1;
        sub_24F92CD08();
      }

      (*(v60 + 8))(v50, v53);
      return (*(v97 + 8))(v52, v51);
    case 6u:
      v102 = 1;
      sub_24EF86398();
      v31 = v98;
      v30 = v99;
      sub_24F92CC98();
      (*(v62 + 8))(v17, v63);
      goto LABEL_20;
    case 7u:
      v104 = 3;
      sub_24EF862F0();
      v49 = v65;
      v31 = v98;
      v30 = v99;
      sub_24F92CC98();
      (*(v68 + 8))(v49, v69);
      goto LABEL_20;
    case 8u:
      v105 = 4;
      sub_24EF8629C();
      v56 = v70;
      v31 = v98;
      v30 = v99;
      sub_24F92CC98();
      (*(v71 + 8))(v56, v72);
      goto LABEL_20;
    case 9u:
      v106 = 5;
      sub_24EF86248();
      v38 = v73;
      v31 = v98;
      v30 = v99;
      sub_24F92CC98();
      (*(v74 + 8))(v38, v75);
      goto LABEL_20;
    case 0xAu:
      v107 = 6;
      sub_24EF861F4();
      v55 = v76;
      v31 = v98;
      v30 = v99;
      sub_24F92CC98();
      (*(v77 + 8))(v55, v78);
      goto LABEL_20;
    case 0xBu:
      v111 = 10;
      sub_24EF8605C();
      v29 = v85;
      v31 = v98;
      v30 = v99;
      sub_24F92CC98();
      v33 = v88;
      v32 = v89;
      goto LABEL_6;
    case 0xCu:
      v115 = 12;
      sub_24EF85FB4();
      v29 = v91;
      v31 = v98;
      v30 = v99;
      sub_24F92CC98();
      v33 = v92;
      v32 = v93;
LABEL_6:
      (*(v33 + 8))(v29, v32);
LABEL_20:
      result = (*(v97 + 8))(v31, v30);
      break;
    default:
      v101 = 0;
      sub_24EF863EC();
      v27 = v98;
      v26 = v99;
      sub_24F92CC98();
      sub_24F92CCA8();

      (*(v61 + 8))(v20, v18);
      result = (*(v97 + 8))(v27, v26);
      break;
  }

  return result;
}

uint64_t GameDashboardDestination.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235368, &qword_24F9B63E8);
  v170 = *(v3 - 8);
  v171 = v3;
  MEMORY[0x28223BE20](v3);
  v167 = &v128 - v4;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235370, &qword_24F9B63F0);
  v175 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v168 = &v128 - v5;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235378, &qword_24F9B63F8);
  v154 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v166 = &v128 - v6;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235380, &qword_24F9B6400);
  v139 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v165 = &v128 - v7;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235388, &qword_24F9B6408);
  v138 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v164 = &v128 - v8;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235390, &qword_24F9B6410);
  v137 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v163 = &v128 - v9;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235398, &qword_24F9B6418);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v162 = &v128 - v10;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2353A0, &qword_24F9B6420);
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v161 = &v128 - v11;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2353A8, &qword_24F9B6428);
  v147 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v174 = &v128 - v12;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2353B0, &qword_24F9B6430);
  v143 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v160 = &v128 - v13;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2353B8, &qword_24F9B6438);
  v136 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v173 = &v128 - v14;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2353C0, &qword_24F9B6440);
  v140 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v159 = &v128 - v15;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2353C8, &qword_24F9B6448);
  v135 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v158 = &v128 - v16;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2353D0, &unk_24F9B6450);
  v176 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v18 = &v128 - v17;
  v177 = type metadata accessor for GameDashboardDestination(0);
  MEMORY[0x28223BE20](v177);
  v133 = (&v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v134 = (&v128 - v21);
  MEMORY[0x28223BE20](v22);
  v24 = &v128 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v128 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v128 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v128 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v128 - v35;
  v37 = a1[3];
  v179 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_24EF85F60();
  v172 = v18;
  v38 = v180;
  sub_24F92D108();
  v180 = v38;
  if (v38)
  {
LABEL_8:
    v57 = v179;
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v128 = v33;
  v129 = v30;
  v130 = v27;
  v131 = v24;
  v40 = v173;
  v39 = v174;
  v41 = v175;
  v132 = v36;
  v42 = v172;
  v43 = sub_24F92CC78();
  v44 = (2 * *(v43 + 16)) | 1;
  v181 = v43;
  v182 = v43 + 32;
  v183 = 0;
  v184 = v44;
  v45 = sub_24E643438();
  if (v183 != v184 >> 1)
  {
LABEL_6:
    v51 = sub_24F92C918();
    v52 = swift_allocError();
    v54 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
    *v54 = v177;
    v55 = v42;
    v56 = v178;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v51 - 8) + 104))(v54, *MEMORY[0x277D84160], v51);
    v180 = v52;
    swift_willThrow();
    (*(v176 + 8))(v55, v56);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v46 = v170;
  v47 = v171;
  switch(v45)
  {
    case 0:
      v185 = 0;
      sub_24EF863EC();
      v48 = v158;
      v49 = v178;
      v50 = v180;
      sub_24F92CBA8();
      v180 = v50;
      if (v50)
      {
        (*(v176 + 8))(v42, v49);
        goto LABEL_7;
      }

      v96 = v42;
      v97 = v141;
      v98 = sub_24F92CBC8();
      v99 = v176;
      v180 = 0;
      v119 = v98;
      v121 = v120;
      (*(v135 + 8))(v48, v97);
      (*(v99 + 8))(v96, v49);
      swift_unknownObjectRelease();
      v112 = v128;
      *v128 = v119;
      v112[1] = v121;
      goto LABEL_40;
    case 1:
      v185 = 1;
      sub_24EF86398();
      v86 = v159;
      v64 = v178;
      v87 = v180;
      sub_24F92CBA8();
      v180 = v87;
      if (v87)
      {
        goto LABEL_32;
      }

      (*(v140 + 8))(v86, v142);
      (*(v176 + 8))(v42, v64);
      swift_unknownObjectRelease();
      v66 = v132;
      goto LABEL_37;
    case 2:
      v185 = 2;
      sub_24EF86344();
      v75 = v40;
      v70 = v178;
      v76 = v180;
      sub_24F92CBA8();
      v180 = v76;
      if (v76)
      {
        goto LABEL_34;
      }

      v77 = v144;
      v78 = sub_24F92CC28();
      v79 = v176;
      v180 = 0;
      v113 = v78;
      v115 = v114;
      (*(v136 + 8))(v75, v77);
      (*(v79 + 8))(v42, v70);
      swift_unknownObjectRelease();
      v112 = v129;
      *v129 = v113;
      v112[1] = v115;
      goto LABEL_40;
    case 3:
      v185 = 3;
      sub_24EF862F0();
      v80 = v160;
      v64 = v178;
      v81 = v180;
      sub_24F92CBA8();
      v180 = v81;
      if (v81)
      {
        goto LABEL_32;
      }

      (*(v143 + 8))(v80, v145);
      (*(v176 + 8))(v42, v64);
      swift_unknownObjectRelease();
      v66 = v132;
      goto LABEL_37;
    case 4:
      v185 = 4;
      sub_24EF8629C();
      v64 = v178;
      v65 = v180;
      sub_24F92CBA8();
      v180 = v65;
      if (v65)
      {
        goto LABEL_32;
      }

      (*(v147 + 8))(v39, v146);
      (*(v176 + 8))(v42, v64);
      swift_unknownObjectRelease();
      v66 = v132;
      goto LABEL_37;
    case 5:
      v185 = 5;
      sub_24EF86248();
      v88 = v161;
      v64 = v178;
      v89 = v180;
      sub_24F92CBA8();
      v180 = v89;
      if (v89)
      {
        goto LABEL_32;
      }

      (*(v148 + 8))(v88, v149);
      (*(v176 + 8))(v42, v64);
      swift_unknownObjectRelease();
      v66 = v132;
      goto LABEL_37;
    case 6:
      v185 = 6;
      sub_24EF861F4();
      v90 = v162;
      v64 = v178;
      v91 = v180;
      sub_24F92CBA8();
      v180 = v91;
      if (v91)
      {
        goto LABEL_32;
      }

      (*(v150 + 8))(v90, v151);
      (*(v176 + 8))(v42, v64);
      swift_unknownObjectRelease();
      v66 = v132;
      goto LABEL_37;
    case 7:
      v185 = 7;
      sub_24EF861A0();
      v82 = v163;
      v64 = v178;
      v83 = v180;
      sub_24F92CBA8();
      v180 = v83;
      if (v83)
      {
        goto LABEL_32;
      }

      v84 = v152;
      v85 = sub_24F92CBC8();
      v180 = 0;
      v116 = v85;
      v118 = v117;
      (*(v137 + 8))(v82, v84);
      (*(v176 + 8))(v42, v178);
      swift_unknownObjectRelease();
      v112 = v130;
      *v130 = v116;
      v112[1] = v118;
      goto LABEL_40;
    case 8:
      v185 = 8;
      sub_24EF86104();
      v94 = v164;
      v70 = v178;
      v95 = v180;
      sub_24F92CBA8();
      v180 = v95;
      if (v95)
      {
        goto LABEL_34;
      }

      type metadata accessor for Player(0);
      sub_24EF86158(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
      v100 = v131;
      v101 = v153;
      v102 = v180;
      sub_24F92CC68();
      v103 = v176;
      v180 = v102;
      if (v102)
      {
        (*(v138 + 8))(v94, v101);
        (*(v103 + 8))(v42, v70);
        goto LABEL_7;
      }

      (*(v138 + 8))(v94, v101);
      (*(v103 + 8))(v42, v70);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v127 = v100;
      goto LABEL_41;
    case 9:
      v185 = 9;
      sub_24EF860B0();
      v69 = v165;
      v70 = v178;
      v71 = v180;
      sub_24F92CBA8();
      v180 = v71;
      if (v71)
      {
LABEL_34:
        (*(v176 + 8))(v42, v70);
        goto LABEL_7;
      }

      v72 = v155;
      v73 = sub_24F92CC28();
      v74 = v176;
      v180 = 0;
      v109 = v73;
      v111 = v110;
      (*(v139 + 8))(v69, v72);
      (*(v74 + 8))(v42, v70);
      swift_unknownObjectRelease();
      v112 = v134;
      *v134 = v109;
      v112[1] = v111;
LABEL_40:
      swift_storeEnumTagMultiPayload();
      v127 = v112;
      goto LABEL_41;
    case 10:
      v185 = 10;
      sub_24EF8605C();
      v92 = v166;
      v64 = v178;
      v93 = v180;
      sub_24F92CBA8();
      v180 = v93;
      if (v93)
      {
        goto LABEL_32;
      }

      (*(v154 + 8))(v92, v156);
      (*(v176 + 8))(v42, v64);
      swift_unknownObjectRelease();
      v66 = v132;
      goto LABEL_37;
    case 11:
      v185 = 11;
      sub_24EF86008();
      v59 = v168;
      v60 = v178;
      v61 = v180;
      sub_24F92CBA8();
      v180 = v61;
      if (v61)
      {
        (*(v176 + 8))(v42, v60);
        goto LABEL_7;
      }

      v185 = 0;
      v62 = v157;
      v63 = sub_24F92CC28();
      v180 = 0;
      v174 = v63;
      v105 = v104;
      v185 = 1;
      v106 = sub_24F92CC28();
      v107 = (v41 + 8);
      v108 = (v176 + 8);
      v180 = 0;
      v123 = v106;
      v125 = v124;
      (*v107)(v59, v62);
      (*v108)(v42, v60);
      swift_unknownObjectRelease();
      v126 = v133;
      *v133 = v174;
      v126[1] = v105;
      v126[2] = v123;
      v126[3] = v125;
      swift_storeEnumTagMultiPayload();
      v127 = v126;
LABEL_41:
      v66 = v132;
      sub_24EF86440(v127, v132, type metadata accessor for GameDashboardDestination);
      goto LABEL_42;
    case 12:
      v185 = 12;
      sub_24EF85FB4();
      v67 = v167;
      v64 = v178;
      v68 = v180;
      sub_24F92CBA8();
      v180 = v68;
      if (v68)
      {
LABEL_32:
        (*(v176 + 8))(v42, v64);
        goto LABEL_7;
      }

      (*(v46 + 8))(v67, v47);
      (*(v176 + 8))(v42, v64);
      swift_unknownObjectRelease();
      v66 = v132;
LABEL_37:
      swift_storeEnumTagMultiPayload();
LABEL_42:
      v122 = v179;
      sub_24EF86440(v66, v169, type metadata accessor for GameDashboardDestination);
      v57 = v122;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

unint64_t sub_24EF85B7C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  *(inited + 32) = 0x756F72676B636162;
  *(inited + 40) = 0xEA0000000000646ELL;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  *(inited + 80) = sub_24E7D17FC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E60169C(v2, boxed_opaque_existential_1, &qword_27F21D8F8, &qword_24F95ADB0);
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v6 = type metadata accessor for DashboardDeepLinkIntent(0);
  v7 = v6[5];
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24EF86158(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v8 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24EF85EF8(v2 + v7, v8, type metadata accessor for Player);
  *(inited + 144) = 0xD000000000000016;
  *(inited + 152) = 0x800000024FA55B30;
  v9 = *(v2 + v6[6]);
  *(inited + 184) = &type metadata for CommonOnboardingStatus;
  v10 = sub_24EBB9898();
  *(inited + 160) = v9;
  *(inited + 192) = v10;
  *(inited + 200) = 1701667175;
  *(inited + 208) = 0xE400000000000000;
  v11 = v6[7];
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  *(inited + 248) = sub_24E736C00();
  v12 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E60169C(v2 + v11, v12, &qword_27F216FE0, &unk_24F959350);
  *(inited + 256) = 0x74616E6974736564;
  *(inited + 264) = 0xEB000000006E6F69;
  v13 = v6[8];
  *(inited + 296) = type metadata accessor for GameDashboardDestination(0);
  *(inited + 304) = sub_24EF86158(&qword_27F235538, type metadata accessor for GameDashboardDestination, &protocol conformance descriptor for GameDashboardDestination);
  v14 = __swift_allocate_boxed_opaque_existential_1((inited + 272));
  sub_24EF85EF8(v2 + v13, v14, type metadata accessor for GameDashboardDestination);
  *(inited + 312) = 0xD000000000000010;
  *(inited + 320) = 0x800000024FA46670;
  v15 = *(v2 + v6[9]);
  v16 = MEMORY[0x277D22598];
  *(inited + 352) = MEMORY[0x277D839B0];
  *(inited + 360) = v16;
  *(inited + 328) = v15;
  v17 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v18 = sub_24E80FFAC(v17);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v18;
  return result;
}

uint64_t sub_24EF85EF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EF85F60()
{
  result = qword_27F2352F8;
  if (!qword_27F2352F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2352F8);
  }

  return result;
}

unint64_t sub_24EF85FB4()
{
  result = qword_27F235300;
  if (!qword_27F235300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235300);
  }

  return result;
}

unint64_t sub_24EF86008()
{
  result = qword_27F235308;
  if (!qword_27F235308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235308);
  }

  return result;
}

unint64_t sub_24EF8605C()
{
  result = qword_27F235310;
  if (!qword_27F235310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235310);
  }

  return result;
}

unint64_t sub_24EF860B0()
{
  result = qword_27F235318;
  if (!qword_27F235318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235318);
  }

  return result;
}

unint64_t sub_24EF86104()
{
  result = qword_27F235320;
  if (!qword_27F235320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235320);
  }

  return result;
}

uint64_t sub_24EF86158(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EF861A0()
{
  result = qword_27F235328;
  if (!qword_27F235328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235328);
  }

  return result;
}

unint64_t sub_24EF861F4()
{
  result = qword_27F235330;
  if (!qword_27F235330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235330);
  }

  return result;
}

unint64_t sub_24EF86248()
{
  result = qword_27F235338;
  if (!qword_27F235338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235338);
  }

  return result;
}

unint64_t sub_24EF8629C()
{
  result = qword_27F235340;
  if (!qword_27F235340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235340);
  }

  return result;
}

unint64_t sub_24EF862F0()
{
  result = qword_27F235348;
  if (!qword_27F235348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235348);
  }

  return result;
}

unint64_t sub_24EF86344()
{
  result = qword_27F235350;
  if (!qword_27F235350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235350);
  }

  return result;
}

unint64_t sub_24EF86398()
{
  result = qword_27F235358;
  if (!qword_27F235358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235358);
  }

  return result;
}

unint64_t sub_24EF863EC()
{
  result = qword_27F235360;
  if (!qword_27F235360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235360);
  }

  return result;
}

uint64_t sub_24EF86440(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24EF864A8(uint64_t a1)
{
  sub_24EF865F0(319, &qword_27F2353E8, sub_24E6BCB04);
  if (v1 <= 0x3F)
  {
    sub_24EF865C0();
    if (v2 <= 0x3F)
    {
      sub_24EF865F0(319, &qword_27F2353F8, sub_24E6BCB04);
      if (v3 <= 0x3F)
      {
        sub_24EF865F0(319, &qword_27F214F80, type metadata accessor for Player);
        if (v4 <= 0x3F)
        {
          sub_24EF8663C();
          if (v5 <= 0x3F)
          {
            sub_24EF8666C();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24EF865C0()
{
  result = qword_27F2353F0;
  if (!qword_27F2353F0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F2353F0);
  }

  return result;
}

void sub_24EF865F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24EF8663C()
{
  result = qword_27F235400;
  if (!qword_27F235400)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F235400);
  }

  return result;
}

void sub_24EF8666C()
{
  if (!qword_27F235408)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F235408);
    }
  }
}

uint64_t sub_24EF866E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Player(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 254)
  {
    v15 = *(a1 + a3[6]);
    if (v15 >= 2)
    {
      return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[7];
    goto LABEL_5;
  }

  v17 = type metadata accessor for GameDashboardDestination(0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_24EF868D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for Player(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = type metadata accessor for GameDashboardDestination(0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

void sub_24EF86AC4(uint64_t a1)
{
  sub_24EF86BC0(319, &qword_27F21D948, type metadata accessor for Page.Background);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v2 <= 0x3F)
    {
      sub_24EF86BC0(319, &qword_27F21ADC8, type metadata accessor for Game);
      if (v3 <= 0x3F)
      {
        type metadata accessor for GameDashboardDestination(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24EF86BC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_24EF86CF8()
{
  result = qword_27F235420;
  if (!qword_27F235420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235420);
  }

  return result;
}

unint64_t sub_24EF86D50()
{
  result = qword_27F235428;
  if (!qword_27F235428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235428);
  }

  return result;
}

unint64_t sub_24EF86DA8()
{
  result = qword_27F235430;
  if (!qword_27F235430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235430);
  }

  return result;
}

unint64_t sub_24EF86E00()
{
  result = qword_27F235438;
  if (!qword_27F235438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235438);
  }

  return result;
}

unint64_t sub_24EF86E58()
{
  result = qword_27F235440;
  if (!qword_27F235440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235440);
  }

  return result;
}

unint64_t sub_24EF86EB0()
{
  result = qword_27F235448;
  if (!qword_27F235448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235448);
  }

  return result;
}

unint64_t sub_24EF86F08()
{
  result = qword_27F235450;
  if (!qword_27F235450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235450);
  }

  return result;
}

unint64_t sub_24EF86F60()
{
  result = qword_27F235458;
  if (!qword_27F235458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235458);
  }

  return result;
}

unint64_t sub_24EF86FB8()
{
  result = qword_27F235460;
  if (!qword_27F235460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235460);
  }

  return result;
}

unint64_t sub_24EF87010()
{
  result = qword_27F235468;
  if (!qword_27F235468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235468);
  }

  return result;
}

unint64_t sub_24EF87068()
{
  result = qword_27F235470;
  if (!qword_27F235470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235470);
  }

  return result;
}

unint64_t sub_24EF870C0()
{
  result = qword_27F235478;
  if (!qword_27F235478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235478);
  }

  return result;
}

unint64_t sub_24EF87118()
{
  result = qword_27F235480;
  if (!qword_27F235480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235480);
  }

  return result;
}

unint64_t sub_24EF87170()
{
  result = qword_27F235488;
  if (!qword_27F235488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235488);
  }

  return result;
}

unint64_t sub_24EF871C8()
{
  result = qword_27F235490;
  if (!qword_27F235490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235490);
  }

  return result;
}

unint64_t sub_24EF87220()
{
  result = qword_27F235498;
  if (!qword_27F235498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235498);
  }

  return result;
}

unint64_t sub_24EF87278()
{
  result = qword_27F2354A0;
  if (!qword_27F2354A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354A0);
  }

  return result;
}

unint64_t sub_24EF872D0()
{
  result = qword_27F2354A8;
  if (!qword_27F2354A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354A8);
  }

  return result;
}

unint64_t sub_24EF87328()
{
  result = qword_27F2354B0;
  if (!qword_27F2354B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354B0);
  }

  return result;
}

unint64_t sub_24EF87380()
{
  result = qword_27F2354B8;
  if (!qword_27F2354B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354B8);
  }

  return result;
}

unint64_t sub_24EF873D8()
{
  result = qword_27F2354C0;
  if (!qword_27F2354C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354C0);
  }

  return result;
}

unint64_t sub_24EF87430()
{
  result = qword_27F2354C8;
  if (!qword_27F2354C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354C8);
  }

  return result;
}

unint64_t sub_24EF87488()
{
  result = qword_27F2354D0;
  if (!qword_27F2354D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354D0);
  }

  return result;
}

unint64_t sub_24EF874E0()
{
  result = qword_27F2354D8;
  if (!qword_27F2354D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354D8);
  }

  return result;
}

unint64_t sub_24EF87538()
{
  result = qword_27F2354E0;
  if (!qword_27F2354E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354E0);
  }

  return result;
}

unint64_t sub_24EF87590()
{
  result = qword_27F2354E8;
  if (!qword_27F2354E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354E8);
  }

  return result;
}

unint64_t sub_24EF875E8()
{
  result = qword_27F2354F0;
  if (!qword_27F2354F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354F0);
  }

  return result;
}

unint64_t sub_24EF87640()
{
  result = qword_27F2354F8;
  if (!qword_27F2354F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354F8);
  }

  return result;
}

unint64_t sub_24EF87698()
{
  result = qword_27F235500;
  if (!qword_27F235500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235500);
  }

  return result;
}

unint64_t sub_24EF876F0()
{
  result = qword_27F235508;
  if (!qword_27F235508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235508);
  }

  return result;
}

unint64_t sub_24EF87748()
{
  result = qword_27F235510;
  if (!qword_27F235510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235510);
  }

  return result;
}

unint64_t sub_24EF877A0()
{
  result = qword_27F235518;
  if (!qword_27F235518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235518);
  }

  return result;
}

unint64_t sub_24EF877F8()
{
  result = qword_27F235520;
  if (!qword_27F235520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235520);
  }

  return result;
}

unint64_t sub_24EF87850()
{
  result = qword_27F235528;
  if (!qword_27F235528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235528);
  }

  return result;
}

unint64_t sub_24EF878A8()
{
  result = qword_27F235530;
  if (!qword_27F235530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235530);
  }

  return result;
}

uint64_t sub_24EF878FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D65766569686361 && a2 == 0xEB00000000746E65;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E656C6C616863 && a2 == 0xED00006275487365 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA656A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72616F6268736164 && a2 == 0xE900000000000064 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E49646E65697266 && a2 == 0xED00007365746976 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6552646E65697266 && a2 == 0xEE00737473657571 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4C73646E65697266 && a2 == 0xEB00000000747369 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xEB00000000647261 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7250726579616C70 && a2 == 0xED0000656C69666FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA65680 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x697463416B636970 && a2 == 0xEC00000079746976 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA65660 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x65536D6574737973 && a2 == 0xEE0073676E697474)
  {

    return 12;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

void sub_24EF87D84(uint64_t a1, unint64_t a2, __n128 a3)
{
  sub_24F91F958();
  if (a2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v5 = 0;
    while ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x253052270](v5, a2);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_12;
      }

LABEL_8:
      v8 = *(v6 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles);

      sub_24EBD48E0(a1, v8);
      v10 = v9;

      if ((v10 & 1) == 0)
      {
        sub_24F91F8F8();
      }

      ++v5;
      if (v7 == i)
      {
        return;
      }
    }

    if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v6 = *(a2 + 8 * v5 + 32);

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_24EF87EB0()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F01DD24();
  v5 = qword_27F232C48;
  if (*(v0 + qword_27F232C48))
  {
    v6 = v0 + qword_27F39CC30;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = v4;
      v7 = *(v6 + 1);
      ObjectType = swift_getObjectType();
      v25 = v2;
      v9 = v1;
      v10 = ObjectType;
      v11 = *(v7 + 24);
      v12 = *(v11 + 32);

      v14 = v10;
      v1 = v9;
      v2 = v25;
      v12(v13, v14, v11);
      v4 = v24;

      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v6 + 1);
      v16 = swift_getObjectType();
      (*(v15 + 32))(*(v0 + qword_27F232C80), v16, v15);
      swift_unknownObjectRelease();
    }

    v17 = *(*v0 + 704);

    v17(v18, 0);

    *(v0 + v5) = 0;
  }

  if (*(v0 + qword_27F232C78) == 1)
  {
    swift_beginAccess();
    v19 = v0[2];
    if (v19)
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v21 = v20;
      (*(v2 + 8))(v4, v1);
      v22 = v19 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
      swift_beginAccess();
      *v22 = v21;
      *(v22 + 8) = 0;
      v23 = *(v19 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
      swift_beginAccess();
      *(v23 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }
  }
}

void sub_24EF881B8(char a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_24F92A088();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21[-1] - v10;
  v12 = sub_24F91F4A8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v21[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((*(*v2 + 264))(v14) & 1) == 0)
  {
    v17 = qword_27F39CC70;
    swift_beginAccess();
    if (*(v3 + v17) != 1 && (*(v3 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) & 1) == 0)
    {
      sub_24E60169C(v3 + qword_27F39CC40, v11, &qword_27F228530, &unk_24F93C6E0);
      if ((*(v13 + 48))(v11, 1, v12) == 1)
      {
        sub_24E601704(v11, &qword_27F228530, &unk_24F93C6E0);
      }

      else
      {
        (*(v13 + 32))(v16, v11, v12);
        if (*(v3 + qword_27F232C78) != 1 || (a1 & 1) != 0)
        {
          (*(*v3 + 576))(1);
          swift_beginAccess();
          if (v3[3])
          {
            *v8 = 1;
            (*(v6 + 104))(v8, *MEMORY[0x277D222A0], v5);

            sub_24F92A0D8();

            (*(v6 + 8))(v8, v5);
          }

          (*(*v3 + 1136))(v16);
          v18 = sub_24E74EC40();
          swift_retain_n();
          v19 = sub_24F92BEF8();
          v21[3] = v18;
          v21[4] = MEMORY[0x277D225C0];
          v21[0] = v19;
          sub_24F92A958();

          (*(v13 + 8))(v16, v12);
          __swift_destroy_boxed_opaque_existential_1(v21);
        }

        else
        {
          (*(v13 + 8))(v16, v12);
        }
      }
    }
  }
}

double sub_24EF88600(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = a1;

  v2 = v1 + qword_27F39CC30;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    v6 = *(v5 + 8);

    v6(v7, ObjectType, v5);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24EF886E8(unint64_t a1, uint64_t a2)
{
  v5 = qword_27F39CC48;
  v6 = *(v2 + qword_27F39CC48);

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    result = sub_24ECDE964(v6);
    v6 = result;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = a2;

  v8 = *(v2 + v5);
  *(v2 + v5) = v6;
  sub_24EF8A06C(v8);
}

void sub_24EF887A8(uint64_t a1, char a2)
{
  v3 = v2;
  v27 = sub_24F91F648();
  v26 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) ^ 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = qword_27F232C78;
  *(v2 + qword_27F232C78) = v8 & 1;
  *(v2 + qword_27F232C80) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions);
  v11 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v10 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
  v12 = (v3 + qword_27F39CC68);
  swift_beginAccess();
  *v12 = v11;
  v12[1] = v10;

  v13 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  swift_beginAccess();
  v14 = *(a1 + v13);
  v15 = qword_27F39CC58;
  swift_beginAccess();
  *(v3 + v15) = v14;

  v16 = type metadata accessor for GenericPage(0);
  v29 = v16;
  v30 = &protocol witness table for BasePage;
  v17 = sub_24EF8F4E4(&qword_27F235598, type metadata accessor for GenericPage, &protocol conformance descriptor for BasePage);
  v31 = v17;
  v28[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v28, v3 + 40, &qword_27F224F98, &unk_24F974A70);
  swift_endAccess();
  sub_24EC832DC();
  sub_24E601704(v28, &qword_27F224F98, &unk_24F974A70);
  if (*(v3 + v9) == 1)
  {
    if ((a2 & 1) != 0 && (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
    {
      swift_beginAccess();
      if (*(v3 + 16))
      {

        sub_24F91F638();
        sub_24F91F5E8();
        v19 = v18;
        (*(v26 + 8))(v7, v27);
        PendingPageRender.initialRequestEndTime.setter(v19, 0);
      }
    }

    swift_beginAccess();
    if (*(v3 + 16))
    {
      v30 = &protocol witness table for BasePage;
      v31 = v17;
      v29 = v16;
      v28[0] = a1;

      PendingPageRender.use(pageRenderEventFrom:)(v28);

      sub_24E601704(v28, &qword_27F224F98, &unk_24F974A70);
    }

    v20 = (v3 + qword_27F39CC60);
    swift_beginAccess();
    v21 = *v20;
    if (*v20)
    {
      v22 = v20[1];

      v21(v23);
      sub_24E824448(v21, v22);
      v24 = *v20;
    }

    else
    {
      v24 = 0;
    }

    v25 = v20[1];
    *v20 = 0;
    v20[1] = 0;
    sub_24E824448(v24, v25);
  }
}

uint64_t sub_24EF88B94(uint64_t result)
{
  if (*(result + 16) && (*(v1 + qword_27F232C88) & 1) == 0)
  {
    if (*(v1 + qword_27F232C58))
    {
      *(v1 + qword_27F232C88) = 1;
      v2 = result;

      sub_24EBDFF44(v3);

      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      *(v4 + 24) = v2;
      v5 = sub_24E74EC40();
      swift_retain_n();

      v6 = sub_24F92BEF8();
      v7[3] = v5;
      v7[4] = MEMORY[0x277D225C0];
      v7[0] = v6;
      sub_24F92A958();

      return __swift_destroy_boxed_opaque_existential_1(v7);
    }
  }

  return result;
}

uint64_t sub_24EF88CE4(uint64_t a1, uint64_t a2)
{
  sub_24E615E00(a1, v30);
  sub_24E615E00(a2, &v31);
  v4 = qword_27F39CC48;
  v5 = *(v2 + qword_27F39CC48);
  v27 = v30;

  sub_24E8E26D0(sub_24EEB626C, v26, v5);
  v7 = v6;
  v9 = v8;

  if (v9)
  {
    return sub_24E601704(v30, &qword_27F222A30, &qword_24F9A7D00);
  }

  v11 = *(v2 + v4);
  if ((v11 & 0xC000000000000001) != 0)
  {

    v12 = MEMORY[0x253052270](v7, v11);

LABEL_6:
    v14 = *(v12 + 24);
    MEMORY[0x28223BE20](v13);
    v25 = v30;

    v15 = sub_24E8E27EC(sub_24EEB628C, v24, v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      v29 = *(v12 + 24);

      sub_24EA0E6B0(v15, v28);
      __swift_destroy_boxed_opaque_existential_1(v28);
      LOBYTE(v28[0]) = 104;
      v18 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v29, v28, 1, 2);

      v19 = v2 + qword_27F39CC30;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = *(v19 + 8);
        swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B20, &unk_24F9B7470);
        sub_24F91FA78();
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_24F93DE60;
        v22 = MEMORY[0x253045380](v15, v7);
        v23 = MEMORY[0x28223BE20](v22);
        v24[0] = v2;
        v24[1] = v7;
        v25 = v18;
        (*(v20 + 40))(v21, sub_24EF8F694, v23);

        swift_unknownObjectRelease();
        return sub_24E601704(v30, &qword_27F222A30, &qword_24F9A7D00);
      }
    }

    return sub_24E601704(v30, &qword_27F222A30, &qword_24F9A7D00);
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 8 * v7 + 32);

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

double sub_24EF89050(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_27F210038 != -1)
    {
      swift_once();
    }

    v2 = sub_24F9287F8();
    v3 = __swift_project_value_buffer(v2, qword_27F2230A0);
    sub_24ED47FDC(v3);
  }

  return result;
}

void sub_24EF890EC(uint64_t a1, void *a2)
{
  v4 = sub_24F92A078();
  v79 = *(v4 - 8);
  v80 = v4;
  MEMORY[0x28223BE20](v4);
  v78 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F91F648();
  v76 = *(v6 - 8);
  v77 = v6;
  MEMORY[0x28223BE20](v6);
  v75 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v82 = v8;
  v9 = *(a1 + v8);
  v10 = MEMORY[0x277D84F90];
  v86[0] = MEMORY[0x277D84F90];
  v11 = *(v9 + 16);
  v12 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  v83 = a1;
  swift_beginAccess();
  if (!v11)
  {
    goto LABEL_12;
  }

  v13 = 0;
  v14 = (v9 + 32);
  v74 = v11 - 1;
  v81 = (v9 + 32);
  do
  {
    v15 = &v14[5 * v13];
    v16 = v13;
    v17 = v83;
    while (1)
    {
      if (v16 >= *(v9 + 16))
      {
        goto LABEL_38;
      }

      sub_24E65864C(v15, v87);
      if (!*(*(v17 + v12) + 16))
      {
        goto LABEL_4;
      }

      sub_24E76D934(v87);
      if (v18)
      {
        break;
      }

LABEL_4:
      ++v16;
      sub_24E6585F8(v87);
      v15 += 40;
      if (v11 == v16)
      {
        goto LABEL_12;
      }
    }

    v19 = sub_24E6585F8(v87);
    MEMORY[0x253050F00](v19);
    if (*((v86[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v13 = v16 + 1;
    sub_24F92B638();
    v10 = v86[0];
    v14 = v81;
  }

  while (v74 != v16);
LABEL_12:

  v20 = *(a2 + qword_27F39CC48);
  *(a2 + qword_27F39CC48) = v10;
  sub_24EF8A06C(v20);

  v21 = *(v83 + v82);
  v22 = MEMORY[0x277D84F90];
  v85 = MEMORY[0x277D84F90];
  v23 = *(v21 + 16);

  swift_beginAccess();
  if (!v23)
  {
    v9 = v22;
    goto LABEL_26;
  }

  v24 = 0;
  v25 = (v21 + 32);
  v74 = v23 - 1;
  v9 = MEMORY[0x277D84F90];
  v81 = (v21 + 32);
  while (2)
  {
    v26 = &v25[5 * v24];
    v27 = v24;
    v28 = v83;
    while (2)
    {
      if (v27 >= *(v21 + 16))
      {
        goto LABEL_39;
      }

      sub_24E65864C(v26, v87);
      if (!*(*(v28 + v12) + 16))
      {
LABEL_16:
        ++v27;
        sub_24E6585F8(v87);
        v26 += 40;
        if (v23 == v27)
        {
          v22 = MEMORY[0x277D84F90];
          goto LABEL_26;
        }

        continue;
      }

      break;
    }

    sub_24E76D934(v87);
    if ((v29 & 1) == 0)
    {

      goto LABEL_16;
    }

    v30 = sub_24E6585F8(v87);
    MEMORY[0x253050F00](v30);
    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v24 = v27 + 1;
    sub_24F92B638();
    v9 = v85;
    v22 = MEMORY[0x277D84F90];
    v25 = v81;
    if (v74 != v27)
    {
      continue;
    }

    break;
  }

LABEL_26:
  v81 = a2;

  v87[0] = v22;
  if (v9 >> 62)
  {
    goto LABEL_41;
  }

  v31 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v31)
  {
LABEL_28:
    v32 = 0;
    v33 = v12;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x253052270](v32, v9);
        v12 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v32 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v34 = *(v9 + 8 * v32 + 32);

        v12 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          v31 = sub_24F92C738();
          if (!v31)
          {
            break;
          }

          goto LABEL_28;
        }
      }

      v35 = *(v34 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles);

      sub_24EA0B130(v35);
      ++v32;
      v36 = v12 == v31;
      v12 = v33;
    }

    while (!v36);
  }

  v37 = sub_24F45DB90(v87[0]);

  v38 = v81;
  v39 = *(v81 + qword_27F232C60);
  *(v81 + qword_27F232C60) = v37;

  v40 = sub_24EDD4C24(v39, v37);

  if ((v40 & 1) == 0)
  {

    sub_24EF88B94(v41);
  }

  v42 = v83;
  sub_24E60169C(v83 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, v87, &qword_27F2129B0, &unk_24F945320);
  v43 = qword_27F39CC50;
  swift_beginAccess();
  sub_24E8E7708(v87, v38 + v43);
  swift_endAccess();
  (*(*v38 + 1312))(v42, 0);
  v44 = v38 + qword_27F39CC30;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v45 = *(v44 + 1);
    ObjectType = swift_getObjectType();
    (*(v45 + 32))(*(v42 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions), ObjectType, v45);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v47 = *(v44 + 1);
    swift_getObjectType();
    sub_24EC9C404();
    (*(*(v47 + 24) + 32))();

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v48 = *(v44 + 1);
    v49 = swift_getObjectType();
    (*(*(*(v48 + 24) + 16) + 8))(v49);
    swift_unknownObjectRelease();
  }

  v50 = v83;

  sub_24EF88600(v51);
  v52 = *(v50 + v82);
  v53 = MEMORY[0x277D84F90];
  v84[0] = MEMORY[0x277D84F90];
  v54 = *(v52 + 16);

  swift_beginAccess();
  if (!v54)
  {
    goto LABEL_61;
  }

  v55 = 0;
  v56 = v52 + 32;
  v74 = v54 - 1;
  v82 = v52 + 32;
  while (2)
  {
    v57 = v56 + 40 * v55;
    v58 = v55;
    v59 = v83;
    while (2)
    {
      if (v58 >= *(v52 + 16))
      {
        __break(1u);
        return;
      }

      sub_24E65864C(v57, v87);
      if (!*(*(v59 + v12) + 16))
      {
LABEL_54:
        ++v58;
        sub_24E6585F8(v87);
        v57 += 40;
        if (v54 == v58)
        {
          goto LABEL_61;
        }

        continue;
      }

      break;
    }

    sub_24E76D934(v87);
    if ((v60 & 1) == 0)
    {

      goto LABEL_54;
    }

    v61 = sub_24E6585F8(v87);
    MEMORY[0x253050F00](v61);
    if (*((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v55 = v58 + 1;
    sub_24F92B638();
    v53 = v84[0];
    v56 = v82;
    if (v74 != v58)
    {
      continue;
    }

    break;
  }

LABEL_61:

  (*(*v38 + 704))(v53, 0);

  swift_beginAccess();
  v62 = v38[2];
  if (v62)
  {

    v63 = v75;
    sub_24F91F638();
    sub_24F91F5E8();
    v65 = v64;
    (*(v76 + 8))(v63, v77);
    v66 = v62 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v66 = v65;
    *(v66 + 8) = 0;
    v67 = *(v62 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v67 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  swift_beginAccess();
  if (v38[3])
  {
    v68 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    v69 = v83;
    swift_beginAccess();
    v70 = sub_24F928818();
    v71 = v78;
    (*(*(v70 - 8) + 16))(v78, v69 + v68, v70);
    v73 = v79;
    v72 = v80;
    (*(v79 + 104))(v71, *MEMORY[0x277D22290], v80);

    sub_24F92A0C8();

    (*(v73 + 8))(v71, v72);
  }

  (*(*v38 + 576))(0);
}

void sub_24EF89BD4(void *a1, void *a2)
{
  v4 = sub_24F92A078();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PresenterError(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(*a2 + 576))(0, v9);
  sub_24E60169C(a2 + qword_27F39CC40, v11 + *(v8 + 20), &qword_27F228530, &unk_24F93C6E0);
  *v11 = a1;
  swift_beginAccess();
  v12 = a2[2];
  if (v12)
  {
    v31 = v5;
    v32 = v4;
    sub_24EF8F4E4(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v13 = swift_allocError();
    sub_24EBDEC38(v11, v14);
    v15 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v16 = *(v12 + v15);
    v17 = a1;

    v18 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + v15) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_24E617130(0, v16[2] + 1, 1, v16);
      *(v12 + v15) = v16;
    }

    v21 = v16[2];
    v20 = v16[3];
    if (v21 >= v20 >> 1)
    {
      v16 = sub_24E617130((v20 > 1), v21 + 1, 1, v16);
    }

    v16[2] = v21 + 1;
    v16[v21 + 4] = v13;
    *(v12 + v15) = v16;
    swift_endAccess();

    v5 = v31;
    v4 = v32;
  }

  else
  {
    v22 = a1;
  }

  swift_beginAccess();
  if (a2[3])
  {
    sub_24EF8F4E4(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v23 = swift_allocError();
    sub_24EBDEC38(v11, v24);
    *v7 = v23;
    (*(v5 + 104))(v7, *MEMORY[0x277D22280], v4);

    sub_24F92A0C8();

    (*(v5 + 8))(v7, v4);
  }

  v25 = a2 + qword_27F39CC30;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = *(v25 + 1);
    ObjectType = swift_getObjectType();
    sub_24EF8F4E4(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v28 = swift_allocError();
    sub_24EBDEC38(v11, v29);
    (*(*(*(v26 + 24) + 24) + 24))(v28, ObjectType);
    swift_unknownObjectRelease();
    sub_24EF8F52C(v11, type metadata accessor for PresenterError);
  }

  else
  {
    sub_24EF8F52C(v11, type metadata accessor for PresenterError);
  }
}

uint64_t sub_24EF8A06C(unint64_t a1)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2133F0, &unk_24F963D50);
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v42 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = v34 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232D30, &unk_24F9AAF00);
  MEMORY[0x28223BE20](v40);
  v38 = v34 - v7;
  v8 = qword_27F232C40;
  swift_beginAccess();
  v39 = v1;
  v9 = *(v1 + v8);
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v10)
  {
    v11 = 0;
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    v36 = a1 & 0xC000000000000001;
    v34[1] = v3 + 32;
    v34[2] = v3 + 16;
    v34[0] = v3 + 8;
    do
    {
      if (v36)
      {
        v12 = MEMORY[0x253052270](v11, a1);
      }

      else
      {
        if (v11 >= *(v35 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v10 = sub_24F92C738();
          goto LABEL_3;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = *(v9 + 16);
      if (v11 == v13)
      {

        break;
      }

      if (v11 >= v13)
      {
        goto LABEL_33;
      }

      v14 = v8;
      v15 = a1;
      v16 = v9;
      v17 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11;
      v18 = v41;
      v19 = *(v40 + 48);
      v20 = v38;
      (*(v3 + 16))(&v38[v19], v17, v41);
      v21 = &v20[v19];
      v22 = v37;
      (*(v3 + 32))(v37, v21, v18);
      if (*(v12 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel))
      {

        sub_24F9280B8();

        (*v34[0])(v22, v18);
      }

      else
      {
        (*v34[0])(v22, v18);
      }

      a1 = v15;
      ++v11;
      v8 = v14;
      v9 = v16;
    }

    while (v10 != v11);
  }

  v23 = v39;
  *(v39 + v8) = MEMORY[0x277D84F90];

  v25 = *(v23 + qword_27F39CC48);
  if (v25 >> 62)
  {
    result = sub_24F92C738();
    v26 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      return result;
    }
  }

  if (v26 < 1)
  {
    __break(1u);
  }

  else
  {
    v40 = v25 & 0xC000000000000001;
    v38 = (v3 + 32);

    v27 = 0;
    v37 = v25;
    do
    {
      if (v40)
      {
        v28 = MEMORY[0x253052270](v27, v25);
      }

      else
      {
        v28 = *&v25[8 * v27 + 32];
      }

      if (*(v28 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel))
      {
        v29 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A50, &unk_24F97B600);
        sub_24E602068(&qword_27F222A58, &qword_27F222A50, &unk_24F97B600, MEMORY[0x277D21A98]);

        sub_24F9288B8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2355A0, &unk_24F9B7460);
        sub_24F9288C8();
        __swift_destroy_boxed_opaque_existential_1(v43);
        swift_beginAccess();
        v30 = *(v23 + v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v23 + v8) = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = sub_24E618BBC(0, v30[2] + 1, 1, v30);
          *(v23 + v8) = v30;
        }

        v33 = v30[2];
        v32 = v30[3];
        if (v33 >= v32 >> 1)
        {
          v30 = sub_24E618BBC((v32 > 1), v33 + 1, 1, v30);
        }

        v30[2] = v33 + 1;
        (*(v3 + 32))(v30 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v33, v42, v41);
        v23 = v39;
        *(v39 + v8) = v30;
        swift_endAccess();

        v26 = v29;
        v25 = v37;
      }

      ++v27;
    }

    while (v26 != v27);
  }

  return result;
}

uint64_t sub_24EF8A610(uint64_t a1, uint64_t a2)
{
  sub_24E615E00(a1, v6);
  sub_24E615E00(a2, &v7);
  sub_24E60169C(v6, v4, &qword_27F222A30, &qword_24F9A7D00);
  sub_24EF88CE4(v4, v5);
  sub_24E601704(v6, &qword_27F222A30, &qword_24F9A7D00);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t (*sub_24EF8A6B0(uint64_t a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EF8F628;
  *(v2 + 24) = a1;

  return sub_24EF8F668;
}

uint64_t sub_24EF8A728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = sub_24F91F968();
  v12 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = qword_27F39CC48;
  v16 = *(a5 + qword_27F39CC48);

  sub_24EF87D84(a6, v16, v17);
  *&v26 = a1;
  *(&v26 + 1) = a2;
  v27 = a3;
  v28 = a4;
  v18 = Array<A>.personalizedShelves(with:)(&v26, v16);

  v19 = *(a5 + v15);
  *(a5 + v15) = v18;
  sub_24EF8A06C(v19);

  v20 = a5 + qword_27F39CC30;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = *(v20 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v21 + 24) + 48))(v14, ObjectType);
    swift_unknownObjectRelease();
  }

  result = (*(v12 + 8))(v14, v25);
  *(a5 + qword_27F232C88) = 0;
  return result;
}

uint64_t sub_24EF8A8E8()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39D140);
  __swift_project_value_buffer(v4, qword_27F39D140);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t ArcadePagePresenter.init(objectGraph:arcadeSubscriptionManager:page:pageUrls:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v63 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v56 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - v14;
  v16 = (v4 + qword_27F39D158);
  *v16 = 0;
  v16[1] = 0;
  v17 = v4 + qword_27F39D160;
  *(v17 + 32) = 0;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 40) = 3;
  *(v4 + qword_27F235540) = 0;
  v18 = (v4 + qword_27F235548);
  *v18 = 0;
  v18[1] = 0;
  *(v4 + qword_27F39D168) = 0;
  *(v4 + qword_27F235550) = a2;
  v61 = a2;
  v19 = &a2[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
  swift_beginAccess();
  v20 = v19[8];
  v21 = v4 + qword_27F235558;
  v60 = *v19;
  *v21 = v60;
  *(v21 + 8) = v20;
  v22 = *v19;
  v23 = v19[8];
  v24 = v4 + qword_27F235560;
  *v24 = *v19;
  *(v24 + 8) = v23;
  v25 = a4;
  if ((v19[8] & 0xC0) != 0x80)
  {
    v25 = a4 + *(type metadata accessor for ArcadePageUrls(0) + 20);
  }

  v59 = a4;
  sub_24E60169C(v25, v12, &qword_27F228530, &unk_24F93C6E0);
  sub_24E911D90(v12, v15);
  v68 = 0;
  memset(v67, 0, sizeof(v67));
  v58 = v15;
  v26 = v62;
  sub_24E60169C(v15, v62, &qword_27F228530, &unk_24F93C6E0);
  sub_24E60169C(v67, v66, &qword_27F229490, &unk_24F984C40);
  *(v4 + qword_27F39CC30 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + qword_27F232C78) = 0;
  v27 = MEMORY[0x277D84F90];
  *(v4 + qword_27F39CC48) = MEMORY[0x277D84F90];
  *(v4 + qword_27F232C40) = v27;
  v28 = (v4 + qword_27F39CC50);
  *v28 = 0u;
  v28[1] = 0u;
  *(v4 + qword_27F232C48) = 0;
  *(v4 + qword_27F232C80) = 0;
  *(v4 + qword_27F39CC58) = 0;
  v29 = (v4 + qword_27F39CC60);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v4 + qword_27F39CC68);
  *v30 = 0;
  v30[1] = 0;
  *(v4 + qword_27F39CC70) = 0;
  v31 = MEMORY[0x277D84FA0];
  *(v4 + qword_27F232C60) = MEMORY[0x277D84FA0];
  *(v4 + qword_27F232C88) = 0;
  sub_24E60169C(v26, v4 + qword_27F39CC40, &qword_27F228530, &unk_24F93C6E0);
  *(v4 + qword_27F232C58) = 0;
  sub_24E60169C(v66, v4 + qword_27F39CC38, &qword_27F229490, &unk_24F984C40);
  v32 = &qword_27F231FE8[3];
  *(v4 + qword_27F232C50) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = v31;
  v33 = v63;
  swift_retain_n();
  v61 = v61;
  sub_24EB6CE50(v60, v20);
  sub_24EB6CE50(v22, v23);

  v34 = sub_24EC8415C(v33, 0, 0, 0);

  if (a3)
  {
    v35 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
    swift_beginAccess();
    v36 = *(a3 + v35);
    v65[0] = v27;
    v37 = v36[2];
    v38 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

    swift_beginAccess();
    if (!v37)
    {
      goto LABEL_15;
    }

    v39 = 0;
    v40 = v36 + 4;
    v57 = v37 - 1;
    v60 = v36 + 4;
    while (1)
    {
      v41 = v40 + 40 * v39;
      v42 = v39;
      while (1)
      {
        if (v42 >= v36[2])
        {
          __break(1u);
          goto LABEL_24;
        }

        sub_24E65864C(v41, v64);
        if (*(*(a3 + v38) + 16))
        {
          break;
        }

LABEL_7:
        ++v42;
        sub_24E6585F8(v64);
        v41 += 40;
        if (v37 == v42)
        {
          goto LABEL_15;
        }
      }

      sub_24E76D934(v64);
      if ((v43 & 1) == 0)
      {
        break;
      }

      v44 = sub_24E6585F8(v64);
      MEMORY[0x253050F00](v44);
      if (*((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v39 = v42 + 1;
      sub_24F92B638();
      v27 = v65[0];
      v40 = v60;
      if (v57 == v42)
      {
LABEL_15:

        *(v34 + qword_27F39CC48) = v27;

        v45 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage;
        v46 = qword_27F39CC50;
        swift_beginAccess();
        sub_24E9CBF30(a3 + v45, v34 + v46, &qword_27F2129B0, &unk_24F945320);
        swift_endAccess();
        *(v34 + qword_27F232C48) = sub_24EC9C404();

        (*(*v34 + 1312))(a3, 1);

        v32 = qword_27F231FE8 + 24;
        goto LABEL_17;
      }
    }

    goto LABEL_7;
  }

LABEL_17:
  swift_unknownObjectRetain();

  type metadata accessor for FastImpressionsTracker();
  v47 = swift_dynamicCastClass();
  v42 = v59;
  v37 = v61;
  if (v47)
  {
    v48 = v47;
    swift_beginAccess();
    *(v48 + 24) = &protocol witness table for BaseGenericPagePresenter<A>;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v49 = *(v34 + v32[394]);
    if (v49)
    {
      v50 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v51 = *(v49 + 32);
      v52 = *(v49 + 40);
      *(v49 + 32) = sub_24EEB6550;
      *(v49 + 40) = v50;

      sub_24E824448(v51, v52);
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v36 = [objc_opt_self() defaultCenter];
  if (qword_27F210F50 != -1)
  {
LABEL_24:
    swift_once();
  }

  [v36 addObserver:v34 selector:? name:? object:?];

  sub_24E601704(v66, &qword_27F229490, &unk_24F984C40);
  sub_24E601704(v62, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v67, &qword_27F229490, &unk_24F984C40);
  sub_24E601704(v58, &qword_27F228530, &unk_24F93C6E0);
  v53 = swift_allocObject();
  swift_weakInit();
  v54 = *&v37[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock];
  swift_retain_n();

  [v54 lock];
  sub_24F213714(v34, sub_24EF8EFD8, v53, v37);
  [v54 unlock];

  sub_24EF8F52C(v42, type metadata accessor for ArcadePageUrls);

  return v34;
}

void sub_24EF8B47C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = v2;
    v5 = v3;
    sub_24EB6CE50(v2, v3);
    sub_24EF8EBA8(&v4);

    sub_24EB6CE70(v2, v3);
  }
}

void sub_24EF8B508()
{

  sub_24EF43964(*(v0 + qword_27F39D160), *(v0 + qword_27F39D160 + 8), *(v0 + qword_27F39D160 + 16), *(v0 + qword_27F39D160 + 24), *(v0 + qword_27F39D160 + 32), *(v0 + qword_27F39D160 + 40));

  sub_24EB6CE70(*(v0 + qword_27F235558), *(v0 + qword_27F235558 + 8));
  sub_24E824448(*(v0 + qword_27F235548), *(v0 + qword_27F235548 + 8));
  v1 = *(v0 + qword_27F235560);
  v2 = *(v0 + qword_27F235560 + 8);

  sub_24EB6CE70(v1, v2);
}

uint64_t ArcadePagePresenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = sub_24EEAF5D4();

  sub_24EF43964(*(v2 + qword_27F39D160), *(v2 + qword_27F39D160 + 8), *(v2 + qword_27F39D160 + 16), *(v2 + qword_27F39D160 + 24), *(v2 + qword_27F39D160 + 32), *(v2 + qword_27F39D160 + 40));

  sub_24EB6CE70(*(v2 + qword_27F235558), *(v2 + qword_27F235558 + 8));
  sub_24E824448(*(v2 + qword_27F235548), *(v2 + qword_27F235548 + 8));
  sub_24EB6CE70(*(v2 + qword_27F235560), *(v2 + qword_27F235560 + 8));
  return v2;
}

uint64_t ArcadePagePresenter.__deallocating_deinit()
{
  ArcadePagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EF8B6EC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_27F39D158);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_24EF8B758()
{
  v1 = (v0 + qword_27F39D158);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id sub_24EF8B7B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + qword_27F39D160;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  v9 = *(v3 + 40);
  *(a2 + 40) = v9;
  return sub_24ED21BB0(v4, v5, v6, v7, v8, v9);
}

void *sub_24EF8B820(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2 + qword_27F39D160;
  v8 = *(a1 + 40);
  swift_beginAccess();
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v14 = *(v7 + 24);
  v15 = *v7;
  v13 = *(v7 + 32);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  v11 = *(v7 + 40);
  *(v7 + 40) = v8;
  sub_24ED21BB0(v2, v3, v4, v5, v6, v8);
  return sub_24EF43964(v15, v9, v10, v14, v13, v11);
}

id sub_24EF8B8F4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + qword_27F39D160;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v3 + 40);
  *(a1 + 40) = v9;
  return sub_24ED21BB0(v4, v5, v6, v7, v8, v9);
}

void sub_24EF8B960(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v15 = *a1;
  v16 = v3;
  v4 = v1 + qword_27F235558;
  v5 = *(v1 + qword_27F235558 + 8);
  v13 = *(v1 + qword_27F235558);
  v14 = v5;
  sub_24EB6CE50(v13, v5);
  v6 = static ArcadeState.== infix(_:_:)(&v15, &v13);
  sub_24EB6CE70(v13, v14);
  if (v6)
  {
    return;
  }

  v7 = *v4;
  v8 = *(v4 + 8);
  v9 = v8 >> 6;
  if (v8 >> 6 == 3 && (v7 & 1) != 0)
  {
    v10 = 0;
LABEL_10:
    sub_24EB6CE50(v2, v3);
    sub_24EB6CE50(v7, v8);
    sub_24EB6CE70(v2, v3);
    sub_24EB6CE70(v7, v8);

    sub_24EF8BEDC(v10);
    return;
  }

  if (v3 >> 6 == 3 || v9 == 2)
  {
LABEL_9:
    v10 = 1;
    goto LABEL_10;
  }

  if (v9)
  {
    sub_24EB6CE50(v2, v3);
    v11 = v7;
    v12 = v8;
  }

  else
  {
    if (v3 >> 6 == 2)
    {
      goto LABEL_9;
    }

    v11 = v2;
    v12 = v3;
  }

  sub_24EB6CE50(v11, v12);
  sub_24EB6CE70(v2, v3);

  sub_24EB6CE70(v7, v8);
}

uint64_t sub_24EF8BAE4()
{
  v1 = qword_27F39D168;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24EF8BB28(char a1)
{
  v3 = a1 & 1;
  v4 = qword_27F39D168;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong() && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235588, &qword_24F9B7448), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235590, &unk_24F9B7450), (swift_dynamicCast() & 1) != 0))
    {
      v6 = *(&v9 + 1);
      if (*(&v9 + 1))
      {
        v7 = v10;
        __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
        (*(v7 + 40))(v6, v7);
        __swift_destroy_boxed_opaque_existential_1(&v8);
        return;
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }

    sub_24E601704(&v8, &qword_27F235580, &qword_24F9B7440);
  }
}

void sub_24EF8BC70(char a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v2 + 32);
  *(v2 + 32) = a1;
  v5 = v2 + qword_27F39CC30;
  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(*(*(v6 + 24) + 24) + 8))(ObjectType);
LABEL_6:
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v5 + 8);
      v9 = swift_getObjectType();
      (*(*(*(v8 + 24) + 24) + 16))(v9);
      goto LABEL_6;
    }
  }

  sub_24F01DFD8(v4);
  if ((*(v2 + 32) & 1) == 0 && v4 == 1)
  {
    v10 = *(v2 + qword_27F235560 + 8);
    v15 = *(v2 + qword_27F235560);
    v16 = v10;
    v11 = *(v2 + qword_27F235558 + 8);
    v13 = *(v2 + qword_27F235558);
    v14 = v11;
    sub_24EB6CE50(v15, v10);
    sub_24EB6CE50(v13, v11);
    v12 = static ArcadeState.== infix(_:_:)(&v15, &v13);
    sub_24EB6CE70(v13, v14);
    sub_24EB6CE70(v15, v16);
    if ((v12 & 1) == 0)
    {
      sub_24EF8BEDC(1);
    }
  }
}

void (*sub_24EF8BDFC(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 32);
  return sub_24EF8BE88;
}

void sub_24EF8BE88(uint64_t a1)
{
  v1 = *a1;
  sub_24EF8BC70(*(*a1 + 32));

  free(v1);
}

void sub_24EF8BEDC(int a1)
{
  v48 = a1;
  v2 = sub_24F927D88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927DC8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F927D98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + qword_27F235540) != 1)
  {
    return;
  }

  swift_beginAccess();
  if (*(v1 + 32))
  {
    if (qword_27F210CD8 != -1)
    {
      swift_once();
    }

    v14 = sub_24F92AAE8();
    __swift_project_value_buffer(v14, qword_27F39D140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F9479A0;
    sub_24F9283A8();
    v53 = MEMORY[0x277D839B0];
    LOBYTE(aBlock) = v48 & 1;
    sub_24F928438();
    sub_24E601704(&aBlock, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    sub_24F92A588();

    return;
  }

  sub_24E74EC40();
  v47 = v1;
  (*(v11 + 104))(v13, *MEMORY[0x277D851C8], v10);
  v46 = sub_24F92BF48();
  (*(v11 + 8))(v13, v10);
  v54 = sub_24EF8EE10;
  v55 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_24EAF8248;
  v53 = &block_descriptor_96;
  v45 = _Block_copy(&aBlock);
  sub_24F927DA8();
  v49 = MEMORY[0x277D84F90];
  sub_24EF8F4E4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  v15 = v47;
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  v16 = v45;
  v17 = v46;
  MEMORY[0x2530518B0](0, v9, v5, v45);
  _Block_release(v16);

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);

  v18 = v15 + qword_27F235558;
  v19 = *(v15 + qword_27F235558 + 8) >> 6;
  if (v19 <= 1)
  {
    if (v19)
    {
      return;
    }

    goto LABEL_10;
  }

  if (v19 == 2)
  {
LABEL_10:
    sub_24EF8BB28(1);
    v20 = *v18;
    v21 = v15 + qword_27F235560;
    v22 = *(v15 + qword_27F235560);
    v23 = *(v18 + 8);
    *v21 = *v18;
    v24 = *(v21 + 8);
    *(v21 + 8) = v23;
    sub_24EB6CE50(v20, v23);
    sub_24EB6CE70(v22, v24);
    if (qword_27F210CD8 != -1)
    {
      swift_once();
    }

    v25 = sub_24F92AAE8();
    __swift_project_value_buffer(v25, qword_27F39D140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    v53 = &type metadata for ArcadeState;
    aBlock = *v21;
    LOBYTE(v51) = *(v21 + 8);
    sub_24EB6CE50(aBlock, v51);
    sub_24F928438();
    sub_24E601704(&aBlock, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    v26 = *(v15 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves);
    v53 = MEMORY[0x277D839B0];
    LOBYTE(aBlock) = v26;
    sub_24F928438();
    sub_24E601704(&aBlock, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A588();

    sub_24EF881B8(v48 & 1, v27);
    return;
  }

  if ((*v18 & 1) == 0)
  {
    v33 = v15 + qword_27F39CC30;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    v34 = *(v33 + 8);
    ObjectType = swift_getObjectType();
    (*(*(*(v34 + 24) + 24) + 8))(ObjectType);
LABEL_29:
    swift_unknownObjectRelease();
    return;
  }

  if (v48)
  {
    if (qword_27F210CD8 != -1)
    {
      swift_once();
    }

    v28 = sub_24F92AAE8();
    __swift_project_value_buffer(v28, qword_27F39D140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F9479A0;
    sub_24F9283A8();
    v53 = &type metadata for ArcadeState;
    v29 = v47;
    aBlock = *(v47 + qword_27F235560);
    LOBYTE(v51) = *(v47 + qword_27F235560 + 8);
    sub_24EB6CE50(aBlock, v51);
    sub_24F928438();
    sub_24E601704(&aBlock, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    sub_24F92A588();

    v30 = v29 + qword_27F39CC30;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v31 = *(v30 + 8);
      v32 = swift_getObjectType();
      (*(*(*(v31 + 24) + 24) + 8))(v32);
      swift_unknownObjectRelease();
    }

    LOBYTE(v49) = -63;
    ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(&v49);

    return;
  }

  if (qword_27F210CD8 != -1)
  {
    swift_once();
  }

  v36 = sub_24F92AAE8();
  __swift_project_value_buffer(v36, qword_27F39D140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v53 = &type metadata for ArcadeState;
  v37 = v47;
  aBlock = *(v47 + qword_27F235560);
  LOBYTE(v51) = *(v47 + qword_27F235560 + 8);
  sub_24EB6CE50(aBlock, v51);
  sub_24F928438();
  sub_24E601704(&aBlock, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A588();

  v38 = *(v37 + qword_27F39CC48);
  *(v37 + qword_27F39CC48) = MEMORY[0x277D84F90];
  sub_24EF8A06C(v38);

  v39 = v37 + qword_27F39CC30;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v40 = *(v39 + 8);
    v41 = swift_getObjectType();
    sub_24EF8EFF8();
    v42 = swift_allocError();
    (*(*(*(v40 + 24) + 24) + 24))(v42, v41);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v43 = *(v39 + 8);
    v44 = swift_getObjectType();
    (*(*(*(v43 + 24) + 16) + 8))(v44);
    goto LABEL_29;
  }
}

uint64_t sub_24EF8CB54(uint64_t a1)
{
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v29 = v5;
  v30 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ArcadePageIntent(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 16);
  v31 = a1;
  v28 = v13;
  v26 = v4 + 16;
  (v13)(v8, a1, v3, v10);
  v27 = v1;
  v14 = *(v1 + qword_27F235558 + 8);
  v15 = v14 <= 0x3F && *(v1 + qword_27F235558) == 1;
  v16 = (v14 & 0xC0) == 128;
  v17 = v14 == 129;
  v25 = *(v4 + 32);
  v25(v12, v8, v3);
  v12[v9[5]] = v16;
  v12[v9[6]] = v15;
  v12[v9[7]] = v17;
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  sub_24F929C28();

  sub_24F928FE8();
  swift_beginAccess();

  sub_24F929BF8();

  v18 = sub_24F929C08();

  sub_24EB4700C(v12, v18, "GameStoreKit/ArcadePagePresenter.swift", 38, 2);
  v19 = v30;
  v28(v30, v31, v3);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  v25((v21 + v20), v19, v3);
  v32[3] = sub_24F929638();
  v32[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v32);
  sub_24F929628();
  type metadata accessor for GenericPage(0);
  v22 = sub_24F92A938();

  sub_24EF8F52C(v12, type metadata accessor for ArcadePageIntent);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v22;
}

uint64_t sub_24EF8CF08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (qword_27F210CD8 != -1)
  {
    swift_once();
  }

  v6 = sub_24F92AAE8();
  __swift_project_value_buffer(v6, qword_27F39D140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v7 = sub_24F91F4A8();
  v10[3] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a2, v7);
  sub_24F928438();
  sub_24E601704(v10, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A588();

  *a3 = v5;
}

double sub_24EF8D0EC(uint64_t a1, char a2)
{
  sub_24EF887A8(a1, a2);
  type metadata accessor for ArcadePage(0);
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    return result;
  }

  v5 = *(v3 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_tabTitle);
  v6 = *(v3 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_tabTitle + 8);
  v7 = (v2 + qword_27F39D158);
  v8 = v3;
  v39 = v3;
  swift_beginAccess();
  *v7 = v5;
  v7[1] = v6;

  v9 = v8 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect;
  v10 = *(v8 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect);
  v11 = *(v8 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 8);
  v12 = *(v8 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 16);
  v13 = *(v8 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 24);
  v14 = *(v9 + 32);
  v15 = v2 + qword_27F39D160;
  v16 = *(v9 + 40);
  swift_beginAccess();
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v37 = *(v15 + 24);
  v38 = *v15;
  v36 = *(v15 + 32);
  *v15 = v10;
  *(v15 + 8) = v11;
  *(v15 + 16) = v12;
  *(v15 + 24) = v13;
  *(v15 + 32) = v14;
  LOBYTE(v5) = *(v15 + 40);
  *(v15 + 40) = v16;
  sub_24ED21BB0(v10, v11, v12, v13, v14, v16);
  sub_24EF43964(v38, v17, v18, v37, v36, v5);
  sub_24EC40820();
  v20 = v19;
  v21 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v19 >> 62)
  {
LABEL_34:
    v22 = sub_24F92C738();
  }

  else
  {
    v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = 0;
  do
  {
    v25 = v23;
    if (v22 == v23)
    {
      break;
    }

    if ((v20 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x253052270](v23, v20);
      if (__OFADD__(v25, 1))
      {
LABEL_15:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v23 >= *(v21 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      v26 = *(v20 + 8 * v23 + 32);

      if (__OFADD__(v25, 1))
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v40) = *(v26 + 16);
    if (Shelf.ContentType.rawValue.getter() == 0x6F46656461637261 && v27 == 0xEC0000007265746FLL)
    {

      goto LABEL_17;
    }

    v24 = sub_24F92CE08();

    v23 = v25 + 1;
  }

  while ((v24 & 1) == 0);

LABEL_17:
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235588, &qword_24F9B7448), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235590, &unk_24F9B7450), (swift_dynamicCast() & 1) == 0))
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    goto LABEL_22;
  }

  v28 = *(&v41 + 1);
  if (!*(&v41 + 1))
  {
LABEL_22:
    sub_24E601704(&v40, &qword_27F235580, &qword_24F9B7440);
    goto LABEL_23;
  }

  v29 = v42;
  __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
  (*(v29 + 8))(v22 != v25, v28, v29);
  __swift_destroy_boxed_opaque_existential_1(&v40);
LABEL_23:
  if (!swift_unknownObjectWeakLoadStrong() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235588, &qword_24F9B7448), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235590, &unk_24F9B7450), (swift_dynamicCast() & 1) == 0))
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    goto LABEL_28;
  }

  v30 = *(&v41 + 1);
  if (!*(&v41 + 1))
  {
LABEL_28:
    sub_24E601704(&v40, &qword_27F235580, &qword_24F9B7440);
    goto LABEL_29;
  }

  v31 = v42;
  __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
  v32 = *(v31 + 16);

  v32(v33, v30, v31);

  __swift_destroy_boxed_opaque_existential_1(&v40);
LABEL_29:
  if (*(v39 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_autoUpsellAction))
  {
    v34 = *(v39 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_shouldForceAutoUpsell);

    sub_24EF8D5AC(v35, v34);
  }

  return result;
}

void sub_24EF8D5AC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0, &qword_24F95E500);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v41 - v8;
  v10 = *(v2 + qword_27F235550) + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v11 = *(v10 + 8);
  if (v11 < 0xC0)
  {
    if (v11 > 0x3F)
    {
      if (qword_27F210CD8 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_33;
    }

    if (a2)
    {
      v18 = v3 + qword_27F39CC30;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v20 = *(v18 + 8), v47 = Strong, v48 = v20, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235588, &qword_24F9B7448), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235590, &unk_24F9B7450), (swift_dynamicCast() & 1) != 0))
      {
        v21 = *(&v50 + 1);
        if (*(&v50 + 1))
        {
          v22 = v51;
          __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
          v23 = swift_allocObject();
          swift_weakInit();
          v24 = swift_allocObject();
          *(v24 + 16) = v23;
          *(v24 + 24) = a1;
          v25 = *(v22 + 24);

          v25(sub_24EF8F444, v24, v21, v22);

          __swift_destroy_boxed_opaque_existential_1(&v49);
          goto LABEL_22;
        }
      }

      else
      {
        v51 = 0;
        v49 = 0u;
        v50 = 0u;
      }

      sub_24E601704(&v49, &qword_27F235580, &qword_24F9B7440);
LABEL_22:
      if (qword_27F210CD8 == -1)
      {
LABEL_23:
        v38 = sub_24F92AAE8();
        __swift_project_value_buffer(v38, qword_27F39D140);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93DE60;
        sub_24F9283A8();
        sub_24F92A588();

        return;
      }

LABEL_33:
      swift_once();
      goto LABEL_23;
    }

    type metadata accessor for ASKBagContract(0);
    sub_24F928FD8();
    sub_24F92A758();
    v26 = v49;
    v46 = [objc_opt_self() standardUserDefaults];
    v27 = NSUserDefaults.arcadeUpsellAutoPresentationCount.getter();
    v28 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
    if (qword_27F210A08 != -1)
    {
      swift_once();
    }

    v44 = qword_27F233968;
    v45 = v28;
    sub_24F92A398();
    sub_24F92A408();
    v29 = *(v7 + 8);
    v29(v9, v6);
    if (v27 >= v49)
    {
      if (qword_27F210CD8 != -1)
      {
        swift_once();
      }

      v39 = sub_24F92AAE8();
      __swift_project_value_buffer(v39, qword_27F39D140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A588();

      goto LABEL_32;
    }

    v30 = v3 + qword_27F39CC30;
    swift_beginAccess();
    v31 = swift_unknownObjectWeakLoadStrong();
    v43 = v26;
    if (v31 && (v32 = *(v30 + 8), v47 = v31, v48 = v32, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235588, &qword_24F9B7448), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235590, &unk_24F9B7450), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v50 + 1))
      {
        v33 = v51;
        v42 = *(&v50 + 1);
        v41[1] = __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
        v34 = swift_allocObject();
        swift_weakInit();
        v35 = swift_allocObject();
        v35[2] = v34;
        v35[3] = a1;
        v36 = v46;
        v35[4] = v46;
        v41[0] = *(v33 + 24);

        v37 = v36;
        (v41[0])(sub_24EF8F41C, v35, v42, v33);

        __swift_destroy_boxed_opaque_existential_1(&v49);
LABEL_29:
        if (qword_27F210CD8 != -1)
        {
          swift_once();
        }

        v40 = sub_24F92AAE8();
        v42 = __swift_project_value_buffer(v40, qword_27F39D140);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93A400;
        sub_24F9283A8();
        sub_24F92A398();
        sub_24F92A408();
        v29(v9, v6);
        *(&v50 + 1) = MEMORY[0x277D83B88];
        sub_24F928438();
        sub_24E601704(&v49, &qword_27F2129B0, &unk_24F945320);
        sub_24F92A588();

LABEL_32:

        return;
      }
    }

    else
    {
      v51 = 0;
      v49 = 0u;
      v50 = 0u;
    }

    sub_24E601704(&v49, &qword_27F235580, &qword_24F9B7440);
    goto LABEL_29;
  }

  if (qword_27F210CD8 != -1)
  {
    swift_once();
  }

  v12 = sub_24F92AAE8();
  __swift_project_value_buffer(v12, qword_27F39D140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2 & 1;
  v15 = (v3 + qword_27F235548);
  v16 = *(v3 + qword_27F235548);
  v17 = *(v3 + qword_27F235548 + 8);
  *v15 = sub_24EF8F468;
  v15[1] = v14;

  sub_24E824448(v16, v17);
}

double sub_24EF8E130(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24EF8D5AC(a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24EF8E1A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F927D88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F927DC8();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E74EC40();
  v16 = sub_24F92BEF8();
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;
  aBlock[4] = sub_24EF8F474;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_79;
  v12 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24EF8F4E4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  v13 = v16;
  MEMORY[0x2530518B0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v17);
}

void sub_24EF8E4D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong + qword_27F39CC30;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    v6 = *(v4 + 8);

    if (v5)
    {
      swift_beginAccess();
      v7 = swift_weakLoadStrong();
      v8 = v7;
      if (v7)
      {
        v7 = type metadata accessor for ArcadePagePresenter(0);
      }

      else
      {
        v10[1] = 0;
        v10[2] = 0;
      }

      v10[0] = v8;
      v10[3] = v7;
      ObjectType = swift_getObjectType();
      (*(*(*(v6 + 24) + 8) + 8))(a2, v10, ObjectType);
      swift_unknownObjectRelease();
      sub_24E601704(v10, &qword_27F2129B0, &unk_24F945320);
    }
  }
}

uint64_t sub_24EF8E604(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_24F927D88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F927DC8();
  v9 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E74EC40();
  v19 = sub_24F92BEF8();
  v12 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_24EF8F4C4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_86;
  v14 = _Block_copy(aBlock);

  v15 = a3;

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24EF8F4E4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  v16 = v19;
  MEMORY[0x2530518B0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v20);
}

void sub_24EF8E944(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong + qword_27F39CC30;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    v8 = *(v6 + 8);

    if (v7)
    {
      swift_beginAccess();
      v9 = swift_weakLoadStrong();
      v10 = v9;
      if (v9)
      {
        v9 = type metadata accessor for ArcadePagePresenter(0);
      }

      else
      {
        v15[1] = 0;
        v15[2] = 0;
      }

      v15[0] = v10;
      v15[3] = v9;
      ObjectType = swift_getObjectType();
      (*(*(*(v8 + 24) + 8) + 8))(a2, v15, ObjectType);
      swift_unknownObjectRelease();
      sub_24E601704(v15, &qword_27F2129B0, &unk_24F945320);
    }
  }

  v12 = NSUserDefaults.arcadeUpsellAutoPresentationCount.getter();
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
  }

  else
  {
    v14 = sub_24F92B098();
    [a3 setInteger:v13 forKey:v14];
  }
}

void sub_24EF8EAC8(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + qword_27F235560 + 8);
  v10 = *(v2 + qword_27F235560);
  v11 = v5;
  v6 = *(v2 + qword_27F235558 + 8);
  v8 = *(v2 + qword_27F235558);
  v9 = v6;
  sub_24EB6CE50(v10, v5);
  sub_24EB6CE50(v8, v6);
  v7 = static ArcadeState.== infix(_:_:)(&v10, &v8);
  sub_24EB6CE70(v8, v9);
  sub_24EB6CE70(v10, v11);
  if (v7)
  {

    sub_24F01B85C(a1, a2);
  }
}

double sub_24EF8EBA8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (qword_27F210CD8 != -1)
  {
    swift_once();
  }

  v4 = sub_24F92AAE8();
  __swift_project_value_buffer(v4, qword_27F39D140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v14 = &type metadata for ArcadeState;
  v12 = v2;
  v13 = v3;
  sub_24EB6CE50(v2, v3);
  sub_24F928438();
  sub_24E601704(&v12, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A588();

  v5 = v1 + qword_27F235558;
  v6 = *(v1 + qword_27F235558);
  *v5 = v2;
  v7 = *(v5 + 8);
  *(v5 + 8) = v3;
  sub_24EB6CE50(v2, v3);
  sub_24EB6CE50(v6, v7);
  sub_24EB6CE70(v6, v7);
  v12 = v6;
  v13 = v7;
  sub_24EF8B960(&v12);
  sub_24EB6CE70(v6, v7);
  v9 = (v1 + qword_27F235548);
  v10 = *(v1 + qword_27F235548);
  if (v10)
  {
    v11 = v9[1];
    *v9 = 0;
    v9[1] = 0;
    v10();
    return sub_24E824448(v10, v11);
  }

  return result;
}

void sub_24EF8EE10()
{
  if (qword_27F210CD8 != -1)
  {
    swift_once();
  }

  v0 = sub_24F92AAE8();
  __swift_project_value_buffer(v0, qword_27F39D140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  v1 = [objc_opt_self() daemonProxy];
}

uint64_t sub_24EF8EFA0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_96(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24EF8EFF8()
{
  result = qword_27F235568;
  if (!qword_27F235568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235568);
  }

  return result;
}

uint64_t sub_24EF8F04C()
{
  v1 = sub_24F91F4A8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

double sub_24EF8F150@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_27F39D158);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

void sub_24EF8F1B4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F39D168;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t type metadata accessor for ArcadePagePresenter(uint64_t a1)
{
  result = qword_27F235570;
  if (!qword_27F235570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroy_63Tm()
{

  return swift_deallocObject();
}

uint64_t sub_24EF8F4E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EF8F52C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_67Tm_0(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return swift_deallocObject();
}

uint64_t sub_24EF8F630()
{

  return swift_deallocObject();
}

uint64_t sub_24EF8F700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlayerAvatarView(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24EF8F7D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlayerAvatarView(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for CardCompactAvatarView(uint64_t a1)
{
  result = qword_27F2355A8;
  if (!qword_27F2355A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EF8F8D8(uint64_t a1)
{
  type metadata accessor for PlayerAvatarView(319);
  if (v1 <= 0x3F)
  {
    sub_24E7268F0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_24EF8F978@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2355B8, &qword_24F9B74E8);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = sub_24F925808();
  sub_24F923318();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_24EF8FCD0(v2, v10);
  v20 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A40, &qword_24F9B74F0) + 36)];
  *v20 = v11;
  *(v20 + 1) = v13;
  *(v20 + 2) = v15;
  *(v20 + 3) = v17;
  *(v20 + 4) = v19;
  v20[40] = 0;
  v21 = v2 + *(type metadata accessor for CardCompactAvatarView(0) + 20);
  v22 = *v21;
  v23 = *(v21 + 8);

  if ((v23 & 1) == 0)
  {
    sub_24F92BDC8();
    v24 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v22 = v35;
  }

  swift_getKeyPath();
  *&v35 = v22;
  sub_24EF8FEC8(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  sub_24F91FD88();

  v25 = *(v22 + 16);
  v33 = *(v22 + 32);
  v34 = v25;

  v26 = sub_24F925808();
  v27 = &v10[*(v8 + 36)];
  *v27 = v26;
  v28 = v34;
  *(v27 + 24) = v33;
  *(v27 + 8) = v28;
  v27[40] = 0;
  sub_24F927618();
  sub_24F9242E8();
  sub_24EF8FD3C(v10, a1);
  v29 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2355C0, &qword_24F9B7520) + 36);
  v30 = v40;
  *(v29 + 64) = v39;
  *(v29 + 80) = v30;
  *(v29 + 96) = v41;
  v31 = v36;
  *v29 = v35;
  *(v29 + 16) = v31;
  result = v38;
  *(v29 + 32) = v37;
  *(v29 + 48) = result;
  return result;
}

uint64_t sub_24EF8FCD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerAvatarView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF8FD3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2355B8, &qword_24F9B74E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EF8FDB0()
{
  result = qword_27F2355C8;
  if (!qword_27F2355C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2355C0, &qword_24F9B7520);
    sub_24EF8FE3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2355C8);
  }

  return result;
}

unint64_t sub_24EF8FE3C()
{
  result = qword_27F2355D0;
  if (!qword_27F2355D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2355B8, &qword_24F9B74E8);
    sub_24E63C068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2355D0);
  }

  return result;
}

uint64_t sub_24EF8FEC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24EF8FF10(unint64_t a1, unint64_t a2, __n128 a3)
{
  v4 = v3;
  v6 = a1;
  v32 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_3;
  }

  while (1)
  {
    v7 = sub_24F92C738();
LABEL_3:
    v30 = a2 >> 62;
    if (a2 >> 62)
    {
      v8 = sub_24F92C738();
    }

    else
    {
      v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v8 >= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v33[2] = MEMORY[0x277D84F90];
    sub_24F92C978();
    if (v9 < 0)
    {
      __break(1u);
LABEL_60:

      __break(1u);
      return;
    }

    v10 = v9;
    v27 = v6;
    v28 = a2;
    if (!v9)
    {
      break;
    }

    v31 = v6 & 0xC000000000000001;
    v11 = v6 & 0xFFFFFFFFFFFFFF8;
    v12 = a2 & 0xFFFFFFFFFFFFFF8;
    v26 = v4;
    v29 = a2 & 0xC000000000000001;
    v13 = 4;
    v25 = v10;
    v4 = v10;
    while (1)
    {
      v14 = v32 ? sub_24F92C738() : *(v11 + 16);
      v15 = v13 - 4;
      if (v13 - 4 == v14)
      {
        break;
      }

      if (v31)
      {
        v16 = MEMORY[0x253052270](v13 - 4, v6);
        if (!v30)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v15 >= *(v11 + 16))
        {
          goto LABEL_56;
        }

        v16 = *(v6 + 8 * v13);

        if (!v30)
        {
LABEL_17:
          v17 = *(v12 + 16);
          goto LABEL_21;
        }
      }

      v17 = sub_24F92C738();
LABEL_21:
      if (v15 == v17)
      {
        goto LABEL_60;
      }

      if (v29)
      {
        MEMORY[0x253052270](v13 - 4, a2);
      }

      else
      {
        if (v15 >= *(v12 + 16))
        {
          goto LABEL_52;
        }
      }

      v33[0] = *(v16 + 24);

      sub_24EA0AEC0(v18);
      v19 = v33[0];
      LOBYTE(v33[0]) = 104;
      Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v19, v33, 1, 2);

      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
      ++v13;
      --v4;
      v6 = v27;
      a2 = v28;
      if (!v4)
      {
        v10 = v25;
        v4 = v26;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }

  v11 = v6 & 0xFFFFFFFFFFFFFF8;
  v31 = v6 & 0xC000000000000001;
  v12 = a2 & 0xFFFFFFFFFFFFFF8;
  v29 = a2 & 0xC000000000000001;
LABEL_29:
  v20 = v10 + 4;
  if (!v32)
  {
LABEL_30:
    v21 = *(v11 + 16);
    goto LABEL_32;
  }

  while (1)
  {
    v21 = sub_24F92C738();
LABEL_32:
    v22 = v20 - 4;
    if (v20 - 4 == v21)
    {
      break;
    }

    if (v31)
    {
      v6 = MEMORY[0x253052270](v20 - 4, v6);
      if (__OFADD__(v22, 1))
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v22 >= *(v11 + 16))
      {
        goto LABEL_54;
      }

      v6 = *(v6 + 8 * v20);

      if (__OFADD__(v22, 1))
      {
        goto LABEL_53;
      }
    }

    if (v30)
    {
      if (v22 == sub_24F92C738())
      {
LABEL_49:

        return;
      }
    }

    else if (v22 == *(v12 + 16))
    {
      goto LABEL_49;
    }

    if (v29)
    {
      MEMORY[0x253052270](v20 - 4, a2);
    }

    else
    {
      if (v22 >= *(v12 + 16))
      {
        goto LABEL_55;
      }
    }

    v33[0] = *(v6 + 24);

    sub_24EA0AEC0(v23);
    v24 = v33[0];
    LOBYTE(v33[0]) = 104;
    Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v24, v33, 1, 2);

    sub_24F92C948();
    sub_24F92C988();
    sub_24F92C998();
    sub_24F92C958();
    ++v20;
    v6 = v27;
    a2 = v28;
    if (!v32)
    {
      goto LABEL_30;
    }
  }
}

GameStoreKit::ShelfHeader::ArtworkType_optional __swiftcall ShelfHeader.ArtworkType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ShelfHeader.ArtworkType.rawValue.getter()
{
  v1 = 0x79726F6765746163;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1852793705;
  }
}

uint64_t sub_24EF903EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x79726F6765746163;
  if (v2 != 1)
  {
    v4 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1852793705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x79726F6765746163;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1852793705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24EF904E8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EF90584(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EF9060C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EF906B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x79726F6765746163;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1852793705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ShelfHeader.Configuration.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v47 = a2;
  v48 = a3;
  v4 = sub_24F928388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v46 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v37 - v8;
  MEMORY[0x28223BE20](v9);
  v42 = &v37 - v10;
  MEMORY[0x28223BE20](v11);
  v40 = &v37 - v12;
  MEMORY[0x28223BE20](v13);
  v37 = &v37 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v37 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v37 - v25;
  sub_24F928398();
  v44 = JSONObject.appStoreColor.getter();
  v27 = *(v5 + 8);
  v27(v26, v4);
  sub_24F928398();
  v43 = JSONObject.appStoreColor.getter();
  v27(v23, v4);
  sub_24F928398();
  v41 = JSONObject.appStoreColor.getter();
  v27(v20, v4);
  sub_24F928398();
  v39 = JSONObject.appStoreColor.getter();
  v27(v17, v4);
  v28 = v37;
  sub_24F928398();
  v38 = JSONObject.appStoreColor.getter();
  v27(v28, v4);
  v29 = v40;
  sub_24F928398();
  v37 = JSONObject.appStoreColor.getter();
  v27(v29, v4);
  v30 = v42;
  sub_24F928398();
  LOBYTE(v17) = sub_24F928278();
  v27(v30, v4);
  v31 = v45;
  sub_24F928398();
  LOBYTE(v20) = sub_24F928278();
  v27(v31, v4);
  v32 = v46;
  sub_24F928398();
  v33 = sub_24F928278();
  v34 = sub_24F9285B8();
  (*(*(v34 - 8) + 8))(v47, v34);
  v27(a1, v4);
  result = (v27)(v32, v4);
  v36 = v48;
  *v48 = v44;
  v36[1] = v43;
  v36[2] = v41;
  v36[3] = v39;
  v36[4] = v38;
  v36[5] = v37;
  *(v36 + 48) = v17 & 1;
  *(v36 + 49) = v20 & 1;
  *(v36 + 50) = v33;
  return result;
}

uint64_t ShelfHeader.Configuration.init(eyebrowColor:eyebrowImageColor:titleColor:titleImageColor:subtitleColor:accessoryColor:includeSeparator:includeTrailingArtwork:prefersShelfHeader:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 49) = a8 & 1;
  *(a9 + 50) = a10;
  return result;
}

id ShelfHeader.Configuration.eyebrowColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *ShelfHeader.Configuration.eyebrowImageColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *ShelfHeader.Configuration.titleColor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *ShelfHeader.Configuration.titleImageColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *ShelfHeader.Configuration.subtitleColor.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *ShelfHeader.Configuration.accessoryColor.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

id sub_24EF90D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 40);
  v34 = *(a1 + 24);
  v35 = *(a1 + 32);
  v32 = *(a1 + 49);
  v33 = *(a1 + 48);
  v31 = *(a1 + 50);
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v28 = *(v2 + 24);
  v29 = *(v2 + 32);
  v10 = *a1;
  v30 = *(v2 + 40);
  if (*a1)
  {
    v11 = *(a1 + 8);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_12:
    v24 = v8;
    v11 = v8;
    v12 = v6;
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  v10 = *v2;
  v23 = *v2;
  v11 = v4;
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_3:
  v12 = v6;
  if (v6)
  {
    goto LABEL_4;
  }

LABEL_13:
  v25 = v9;
  v12 = v9;
LABEL_4:
  v13 = v34;
  if (!v34)
  {
    v13 = v28;
    v14 = v28;
  }

  v15 = v35;
  if (v35)
  {
    v16 = v7;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v15 = v29;
    v26 = v29;
    v16 = v7;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  v27 = v30;
  v16 = v30;
LABEL_8:
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v33;
  *(a2 + 49) = v32;
  *(a2 + 50) = v31;
  v17 = v7;
  v18 = v5;
  v19 = v4;
  v20 = v6;
  v21 = v34;

  return v35;
}

__n128 ShelfHeader.__allocating_init(eyebrow:eyebrowArtwork:eyebrowArtworkSize:eyebrowArtworkType:eyebrowAction:eyebrowTrailingArtwork:title:titleArtwork:titleArtworkType:titleAction:subtitle:trailingArtwork:accessoryAction:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char *a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, char *a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  v21 = swift_allocObject();
  v22 = *a6;
  v23 = *a11;
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  *(v21 + 48) = a5 & 1;
  *(v21 + 49) = v22;
  *(v21 + 56) = a7;
  *(v21 + 64) = a8;
  *(v21 + 72) = a9;
  *(v21 + 88) = a10;
  *(v21 + 96) = v23;
  *(v21 + 120) = a13;
  *(v21 + 104) = a12;
  *(v21 + 136) = a14;
  result = *a15;
  v25 = *(a15 + 16);
  v26 = *(a15 + 32);
  *(v21 + 191) = *(a15 + 47);
  *(v21 + 160) = v25;
  *(v21 + 176) = v26;
  *(v21 + 144) = result;
  return result;
}

uint64_t ShelfHeader.init(eyebrow:eyebrowArtwork:eyebrowArtworkSize:eyebrowArtworkType:eyebrowAction:eyebrowTrailingArtwork:title:titleArtwork:titleArtworkType:titleAction:subtitle:trailingArtwork:accessoryAction:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char *a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, char *a11, __int128 a12, __int128 a13, uint64_t a14, __int128 *a15)
{
  v16 = *a6;
  v17 = *a11;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *(v15 + 48) = a5 & 1;
  *(v15 + 49) = v16;
  *(v15 + 56) = a7;
  *(v15 + 64) = a8;
  *(v15 + 72) = a9;
  *(v15 + 88) = a10;
  *(v15 + 96) = v17;
  *(v15 + 120) = a13;
  *(v15 + 104) = a12;
  *(v15 + 136) = a14;
  v18 = *a15;
  v19 = a15[1];
  v20 = a15[2];
  *(v15 + 191) = *(a15 + 47);
  *(v15 + 160) = v19;
  *(v15 + 176) = v20;
  *(v15 + 144) = v18;
  return v15;
}

uint64_t ShelfHeader.eyebrow.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ShelfHeader.title.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t ShelfHeader.subtitle.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t ShelfHeader.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v7[0] = *(v1 + 144);
  v7[1] = v2;
  v8[0] = *(v1 + 176);
  v3 = v8[0];
  *(v8 + 15) = *(v1 + 191);
  v4 = *(v8 + 15);
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 47) = v4;
  return sub_24EF92B8C(v7, v6);
}

uint64_t ShelfHeader.shouldUseShelfHeader.getter()
{
  if ((*(v0 + 193) & 1) != 0 || *(v0 + 128))
  {
    LOBYTE(v1) = 0;
  }

  else
  {
    v1 = *(v0 + 194);
    if (v1 == 2)
    {
      v3[3] = &type metadata for Feature;
      v3[4] = sub_24EAEAC44();
      LOBYTE(v3[0]) = 8;
      LOBYTE(v1) = sub_24F91FE68();
      __swift_destroy_boxed_opaque_existential_1(v3);
    }
  }

  return v1 & 1;
}

uint64_t ShelfHeader.deinit()
{

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);

  return v0;
}

uint64_t ShelfHeader.__deallocating_deinit()
{
  ShelfHeader.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EF912DC@<X0>(uint64_t *a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EF915B4(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t _s12GameStoreKit11ShelfHeaderC13ConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (*a1)
  {
    if (!v6)
    {
      return 0;
    }

    v37 = *(a1 + 40);
    v38 = *(a1 + 32);
    v36 = *(a2 + 40);
    v34 = *(a2 + 48);
    v35 = *(a1 + 48);
    v32 = *(a2 + 49);
    v33 = *(a1 + 49);
    v30 = *(a2 + 50);
    v31 = *(a1 + 50);
    sub_24E77ACC8();
    v11 = v6;
    v12 = v2;
    v13 = sub_24F92C408();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v37 = *(a1 + 40);
    v38 = *(a1 + 32);
    v36 = *(a2 + 40);
    v34 = *(a2 + 48);
    v35 = *(a1 + 48);
    v32 = *(a2 + 49);
    v33 = *(a1 + 49);
    v30 = *(a2 + 50);
    v31 = *(a1 + 50);
    if (v6)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    sub_24E77ACC8();
    v14 = v7;
    v15 = v3;
    v16 = sub_24F92C408();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    sub_24E77ACC8();
    v17 = v9;
    v18 = v5;
    v19 = sub_24F92C408();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8)
    {
      return 0;
    }

    sub_24E77ACC8();
    v20 = v8;
    v21 = v4;
    v22 = sub_24F92C408();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v38)
  {
    if (!v10)
    {
      return 0;
    }

    sub_24E77ACC8();
    v23 = v10;
    v24 = v38;
    v25 = sub_24F92C408();

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (!v37)
  {
    result = 0;
    if (v36)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!v36)
  {
    return 0;
  }

  sub_24E77ACC8();
  v26 = v36;
  v27 = v37;
  v28 = sub_24F92C408();

  result = 0;
  if ((v28 & 1) == 0)
  {
    return result;
  }

LABEL_31:
  if (((v35 ^ v34) & 1) == 0 && ((v33 ^ v32) & 1) == 0)
  {
    if (v31 == 2)
    {
      if (v30 != 2)
      {
        return 0;
      }
    }

    else if (v30 == 2 || ((v30 ^ v31) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_24EF915B4(char *a1, uint64_t a2)
{
  v90 = a2;
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v78 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v63 - v8;
  v81 = sub_24F928388();
  v91 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v75 = &v63 - v12;
  MEMORY[0x28223BE20](v13);
  v73 = &v63 - v14;
  MEMORY[0x28223BE20](v15);
  v82 = &v63 - v16;
  MEMORY[0x28223BE20](v17);
  v74 = &v63 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v63 - v20;
  v22 = type metadata accessor for Artwork(0);
  sub_24F928398();
  v80 = v5;
  v23 = *(v5 + 16);
  v23(v9, a2, v4);
  v24 = sub_24E9838D4();
  sub_24F929548();
  v89 = v96;
  sub_24F928398();
  v92 = v4;
  v85 = v23;
  v86 = v5 + 16;
  v23(v9, v90, v4);
  v25 = a1;
  v87 = v9;
  v83 = v24;
  v84 = v22;
  v26 = v81;
  v27 = v91;
  sub_24F929548();
  v88 = v96;
  v28 = v74;
  sub_24F928398();
  v68 = sub_24F928348();
  v76 = v29;
  v32 = *(v27 + 8);
  v30 = v27 + 8;
  v31 = v32;
  v32(v28, v26);
  v33 = v82;
  sub_24F928398();
  v34 = sub_24F928338();
  v32(v33, v26);
  if (v34)
  {
    [v34 floatValue];
    v36 = v35;

    v37 = v36;
  }

  else
  {
    v37 = 0.0;
  }

  v67 = v34;
  v38 = v90;
  if (v89)
  {
    sub_24F928398();
    sub_24EF937FC();
    sub_24F928208();
    v31(v21, v26);
    v39 = v96;
  }

  else
  {
    v39 = 3;
  }

  v66 = v39;
  v40 = type metadata accessor for Action(0);
  sub_24F928398();
  v82 = v40;
  v74 = static Action.tryToMakeInstance(byDeserializing:using:)(v21, v38);
  v31(v21, v26);
  sub_24F928398();
  v85(v87, v38, v92);
  sub_24F929548();
  v72 = v96;
  v41 = v73;
  sub_24F928398();
  v65 = sub_24F928348();
  v71 = v42;
  v31(v41, v26);
  if (v88)
  {
    sub_24F928398();
    sub_24EF937FC();
    sub_24F928208();
    v31(v21, v26);
    v43 = v95;
  }

  else
  {
    v43 = 3;
  }

  v64 = v43;
  sub_24F928398();
  v73 = static Action.tryToMakeInstance(byDeserializing:using:)(v21, v38);
  v31(v21, v26);
  v44 = v75;
  sub_24F928398();
  v63 = sub_24F928348();
  v69 = v31;
  v70 = v45;
  v31(v44, v26);
  sub_24F928398();
  v91 = v30;
  v46 = v92;
  v47 = v85;
  v85(v87, v38, v92);
  sub_24F929548();
  v84 = v95;
  sub_24F928398();
  v83 = static Action.tryToMakeInstance(byDeserializing:using:)(v21, v38);
  v48 = v26;
  v49 = v69;
  v69(v21, v48);
  v50 = v77;
  v87 = v25;
  sub_24F928398();
  v51 = v78;
  v47(v78, v38, v46);
  v52 = v79;
  ShelfHeader.Configuration.init(deserializing:using:)(v50, v51, v93);
  if (v52)
  {

    (*(v80 + 8))(v38, v92);
    return v49(v87, v81);
  }

  else
  {
    v54 = v67 == 0;
    (*(v80 + 8))(v38, v92);
    v49(v87, v81);
    type metadata accessor for ShelfHeader();
    result = swift_allocObject();
    v55 = v76;
    *(result + 16) = v68;
    *(result + 24) = v55;
    *(result + 32) = v89;
    *(result + 40) = v37;
    *(result + 48) = v54;
    *(result + 49) = v66;
    v56 = v72;
    *(result + 56) = v74;
    *(result + 64) = v56;
    v57 = v71;
    *(result + 72) = v65;
    *(result + 80) = v57;
    *(result + 88) = v88;
    *(result + 96) = v64;
    v58 = v84;
    *(result + 120) = v70;
    *(result + 128) = v58;
    v59 = v63;
    *(result + 104) = v73;
    *(result + 112) = v59;
    *(result + 136) = v83;
    v60 = v93[0];
    v61 = v93[1];
    v62 = *v94;
    *(result + 191) = *&v94[15];
    *(result + 160) = v61;
    *(result + 176) = v62;
    *(result + 144) = v60;
  }

  return result;
}

void _s12GameStoreKit11ShelfHeaderC13deserializing5using13seeAllContextACSg9JetEngine10JSONObjectV_AH11JSONContextVALtcfC_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v112 = a3;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_24F928388();
  v110 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v93 = &v87 - v11;
  MEMORY[0x28223BE20](v12);
  v100 = &v87 - v13;
  MEMORY[0x28223BE20](v14);
  v98 = &v87 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v87 - v17;
  v19 = type metadata accessor for Artwork(0);
  sub_24F928398();
  v88 = v6;
  v20 = *(v6 + 16);
  v20(v8, a2, v5);
  v21 = sub_24E9838D4();
  sub_24F929548();
  v109 = v117;
  sub_24F928398();
  v113 = a2;
  v111 = v5;
  v22 = v5;
  v23 = a1;
  v107 = v6 + 16;
  v106 = v20;
  v20(v8, a2, v22);
  v24 = v110;
  v25 = v8;
  v104 = v21;
  v105 = v19;
  v26 = v103;
  sub_24F929548();
  v108 = v117;
  v27 = v98;
  sub_24F928398();
  v101 = sub_24F928348();
  v102 = v28;
  v31 = *(v24 + 8);
  v30 = v24 + 8;
  v29 = v31;
  v31(v27, v26);
  v32 = v100;
  sub_24F928398();
  v33 = sub_24F928338();
  v31(v32, v26);
  if (v33)
  {
    [v33 floatValue];
    v35 = v34;

    v36 = v35;
  }

  else
  {
    v36 = 0.0;
  }

  v100 = v33;
  if (v109)
  {
    sub_24F928398();
    sub_24EF937FC();
    sub_24F928208();
    v29(v18, v26);
    v37 = v117;
  }

  else
  {
    v37 = 3;
  }

  LODWORD(v98) = v37;
  v38 = type metadata accessor for Action(0);
  sub_24F928398();
  v39 = v113;
  v97 = static Action.tryToMakeInstance(byDeserializing:using:)(v18, v113);
  v29(v18, v26);
  sub_24F928398();
  v106(v25, v39, v111);
  sub_24F929548();
  v94 = v127;
  v40 = v93;
  sub_24F928398();
  v95 = sub_24F928348();
  v96 = v41;
  v29(v40, v26);
  if (v108)
  {
    sub_24F928398();
    sub_24EF937FC();
    sub_24F928208();
    v29(v18, v26);
    v42 = v117;
  }

  else
  {
    v42 = 3;
  }

  LODWORD(v93) = v42;
  sub_24F928398();
  v91 = static Action.tryToMakeInstance(byDeserializing:using:)(v18, v112);
  v29(v18, v26);
  v43 = v99;
  sub_24F928398();
  v90 = sub_24F928348();
  v92 = v44;
  v29(v43, v26);
  sub_24F928398();
  v45 = v25;
  v46 = v25;
  v47 = v29;
  v48 = v23;
  v49 = v26;
  v50 = v111;
  v110 = v38;
  v51 = v106;
  v106(v46, v113, v111);
  sub_24F929548();
  v104 = v126;
  sub_24F928398();
  v99 = static Action.tryToMakeInstance(byDeserializing:using:)(v18, v112);
  v110 = v30;
  v105 = v47;
  v47(v18, v49);
  v87 = v48;
  sub_24F928398();
  v51(v45, v113, v50);
  sub_24EF93850();
  sub_24F929548();
  v52 = v117;
  if (v117 == 1)
  {
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v89 = 0;
    v106 = 0;
    v56 = 0;
    v57 = 0;
    LODWORD(v107) = 2;
  }

  else
  {
    LODWORD(v107) = v125;
    v106 = v122;
    v89 = v121;
    v54 = v119;
    v55 = v120;
    v53 = v118;
    v57 = v124;
    v56 = v123;
  }

  v58 = v100 == 0;
  v59 = v56 & 1;
  v60 = v57 & 1;
  type metadata accessor for ShelfHeader();
  v61 = swift_allocObject();
  v62 = v101;
  v63 = v102;
  *(v61 + 16) = v101;
  *(v61 + 24) = v63;
  *(v61 + 32) = v109;
  *(v61 + 40) = v36;
  *(v61 + 48) = v58;
  *(v61 + 49) = v98;
  v64 = v94;
  *(v61 + 56) = v97;
  *(v61 + 64) = v64;
  v65 = v95;
  v66 = v96;
  *(v61 + 72) = v95;
  *(v61 + 80) = v66;
  *(v61 + 88) = v108;
  *(v61 + 96) = v93;
  v67 = v92;
  v68 = v104;
  *(v61 + 120) = v92;
  *(v61 + 128) = v68;
  v69 = v90;
  *(v61 + 104) = v91;
  *(v61 + 112) = v69;
  *(v61 + 136) = v99;
  *(v61 + 144) = v52;
  *(v61 + 152) = v53;
  *(v61 + 160) = v54;
  v70 = v89;
  *(v61 + 168) = v55;
  *(v61 + 176) = v70;
  *(v61 + 184) = v106;
  *(v61 + 192) = v59;
  *(v61 + 193) = v60;
  *(v61 + 194) = v107;
  v115 = v62;
  v116[0] = v63;
  v116[1] = v65;
  v116[2] = v66;
  v116[3] = v69;
  v116[4] = v67;

  v71 = 0;
  v72 = MEMORY[0x277D84F90];
  v73 = v105;
  do
  {
    if (v71 <= 3)
    {
      v74 = 3;
    }

    else
    {
      v74 = v71;
    }

    v75 = -v74;
    v76 = &v116[2 * v71++];
    while (1)
    {
      if (v75 + v71 == 1)
      {
        __break(1u);
        return;
      }

      v77 = *v76;
      if (*v76)
      {
        v78 = *(v76 - 1);
        v79 = HIBYTE(v77) & 0xF;
        if ((v77 & 0x2000000000000000) == 0)
        {
          v79 = v78 & 0xFFFFFFFFFFFFLL;
        }

        if (v79)
        {
          break;
        }
      }

      ++v71;
      v76 += 2;
      if (v71 == 4)
      {
        goto LABEL_29;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v114 = v72;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24F457ADC(0, *(v72 + 16) + 1, 1);
      v72 = v114;
    }

    v82 = *(v72 + 16);
    v81 = *(v72 + 24);
    if (v82 >= v81 >> 1)
    {
      sub_24F457ADC((v81 > 1), v82 + 1, 1);
      v72 = v114;
    }

    *(v72 + 16) = v82 + 1;
    v83 = v72 + 16 * v82;
    *(v83 + 32) = v78;
    *(v83 + 40) = v77;
    v73 = v105;
  }

  while (v71 != 3);
LABEL_29:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  swift_arrayDestroy();
  v84 = *(v88 + 8);
  v85 = v111;
  v84(v112, v111);
  v84(v113, v85);
  v73(v87, v103);
  v86 = *(v72 + 16);

  if (!v86)
  {
  }
}

unint64_t sub_24EF92BC8()
{
  result = qword_27F2355D8;
  if (!qword_27F2355D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2355D8);
  }

  return result;
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24EF92CD4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 51))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24EF92D30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_24EF92DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a3;
  v70 = a2;
  v81 = a1;
  v69 = v87;
  v74 = sub_24F9285B8();
  v79 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F928388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v65 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v59 - v8;
  sub_24F928398();
  v76 = sub_24F928348();
  v80 = v10;
  v11 = *(v5 + 8);
  v11(v9, v4);
  sub_24F928398();
  v75 = sub_24F928348();
  v13 = v12;
  v11(v9, v4);
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v11(v9, v4);
  v17 = type metadata accessor for Action(0);
  sub_24F928398();
  v64 = v17;
  v72 = static Action.tryToMakeInstance(byDeserializing:using:)(v9, v77);
  v71 = v4;
  v78 = v11;
  v77 = v5 + 8;
  v11(v9, v4);
  v86 = v76;
  v87[0] = v80;
  v87[1] = v75;
  v87[2] = v13;
  v66 = v14;
  v87[3] = v14;
  v87[4] = v16;
  v67 = v16;
  v18 = v69;

  v68 = v13;

  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  do
  {
    if (v19 <= 3)
    {
      v21 = 3;
    }

    else
    {
      v21 = v19;
    }

    v22 = -v21;
    v23 = &v18[2 * v19++];
    while (1)
    {
      if (v22 + v19 == 1)
      {
        __break(1u);
        return;
      }

      v24 = *v23;
      if (*v23)
      {
        v25 = *(v23 - 1);
        v26 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          v26 = v25 & 0xFFFFFFFFFFFFLL;
        }

        if (v26)
        {
          break;
        }
      }

      ++v19;
      v23 += 2;
      if (v19 == 4)
      {
        goto LABEL_17;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83[0] = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24F457ADC(0, *(v20 + 16) + 1, 1);
      v20 = v83[0];
    }

    v29 = *(v20 + 16);
    v28 = *(v20 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_24F457ADC((v28 > 1), v29 + 1, 1);
      v20 = v83[0];
    }

    *(v20 + 16) = v29 + 1;
    v30 = v20 + 16 * v29;
    *(v30 + 32) = v25;
    *(v30 + 40) = v24;
  }

  while (v19 != 3);
LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  swift_arrayDestroy();
  v31 = *(v20 + 16);

  if (v31 | v72)
  {
    v32 = type metadata accessor for Artwork(0);
    sub_24F928398();
    v33 = *(v79 + 16);
    v79 += 16;
    v63 = v33;
    v33(v73, v70, v74);
    v62 = sub_24E9838D4();
    v61 = v32;
    sub_24F929548();
    v69 = v83[0];
    v34 = v65;
    sub_24F928398();
    v35 = sub_24F928338();
    v78(v34, v71);
    v60 = v35;
    if (v35)
    {
      [v35 floatValue];
      v37 = v36;

      v38 = v37;
    }

    else
    {
      v38 = 0.0;
    }

    sub_24F928398();
    v39 = v73;
    v40 = v70;
    v41 = v74;
    v42 = v63;
    v63(v73, v70, v74);
    sub_24F929548();
    v65 = v83[0];
    sub_24F928398();
    v64 = static Action.tryToMakeInstance(byDeserializing:using:)(v9, v40);
    v78(v9, v71);
    sub_24F928398();
    v42(v39, v40, v41);
    sub_24F929548();
    v59 = v83[0];
    if (v69)
    {
      sub_24F928398();
      sub_24EF937FC();
      sub_24F928208();
      v43 = v71;
      v78(v9, v71);
      v44 = v83[0];
    }

    else
    {
      v44 = 3;
      v43 = v71;
    }

    v45 = v70;
    v46 = v72;
    if (v65)
    {
      sub_24F928398();
      sub_24EF937FC();
      sub_24F928208();
      v78(v9, v43);
      v47 = v83[0];
    }

    else
    {
      v47 = 3;
    }

    v84 = &type metadata for Feature;
    v48 = sub_24EAEAC44();
    v85 = v48;
    LOBYTE(v83[0]) = 8;
    v49 = sub_24F91FE68();
    __swift_destroy_boxed_opaque_existential_1(v83);
    if (v49)
    {

      v50 = v46;
    }

    else
    {
      v50 = 0;
    }

    sub_24F928398();
    v63(v73, v45, v74);
    sub_24F929548();
    v51 = v82;
    v84 = &type metadata for Feature;
    v85 = v48;
    LOBYTE(v83[0]) = 8;
    v52 = sub_24F91FE68();
    __swift_destroy_boxed_opaque_existential_1(v83);
    if (v52)
    {

      v46 = 0;
    }

    v53 = v60 == 0;
    type metadata accessor for ShelfHeader();
    v54 = swift_allocObject();
    v55 = v80;
    *(v54 + 16) = v76;
    *(v54 + 24) = v55;
    *(v54 + 32) = v69;
    *(v54 + 40) = v38;
    *(v54 + 48) = v53;
    *(v54 + 49) = v44;
    v56 = v59;
    *(v54 + 56) = v64;
    *(v54 + 64) = v56;
    v57 = v68;
    *(v54 + 72) = v75;
    *(v54 + 80) = v57;
    *(v54 + 88) = v65;
    *(v54 + 96) = v47;
    *(v54 + 120) = v67;
    *(v54 + 128) = v51;
    v58 = v66;
    *(v54 + 104) = v50;
    *(v54 + 112) = v58;
    *(v54 + 136) = v46;
    *(v54 + 144) = 0u;
    *(v54 + 160) = 0u;
    *(v54 + 176) = 0u;
    *(v54 + 192) = 0;
    *(v54 + 194) = 2;
  }

  else
  {
  }
}

unint64_t sub_24EF937FC()
{
  result = qword_27F2355E0;
  if (!qword_27F2355E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2355E0);
  }

  return result;
}

unint64_t sub_24EF93850()
{
  result = qword_27F2355E8;
  if (!qword_27F2355E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2355E8);
  }

  return result;
}

void *sub_24EF938A4(void *a1, void *a2)
{
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v181 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928AD8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v156 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v14 - 8);
  v180 = &v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v183 = (&v156 - v17);
  MEMORY[0x28223BE20](v18);
  v184 = (&v156 - v19);
  MEMORY[0x28223BE20](v20);
  v187 = &v156 - v21;
  v22 = sub_24F928818();
  v185 = *(v22 - 8);
  v186 = v22;
  MEMORY[0x28223BE20](v22);
  v182 = &v156 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v156 - v25;
  v27 = a1;
  if (a1)
  {
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v28 = &v156 - v25;

    v26 = v28;
    v27 = a2;
    if (!a2)
    {
LABEL_10:

      return v27;
    }
  }

  v178 = v26;
  v179 = type metadata accessor for FlowAction(0);
  v29 = swift_dynamicCastClass();
  if (!v29)
  {
    goto LABEL_10;
  }

  if (!a1)
  {
    return v27;
  }

  v177 = v27;
  v30 = v29;
  v176 = swift_dynamicCastClass();
  if (!v176)
  {

    return v177;
  }

  v168 = v5;
  v169 = v4;
  v170 = v13;
  v171 = v8;
  v172 = v7;
  v173 = v10;
  v31 = (v30 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData);
  swift_beginAccess();
  v32 = v31[3];
  if (v32)
  {
    v33 = v31[4];
    v34 = __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    v35 = *(v32 - 8);
    v36 = MEMORY[0x28223BE20](v34);
    v38 = &v156 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v38, v36);
    v39 = *(v33 + 8);
    swift_retain_n();

    v39(&v195, v32, v33);
    (*(v35 + 8))(v38, v32);
  }

  else
  {
    v195 = 0u;
    v196 = 0u;
    swift_retain_n();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
  v40 = type metadata accessor for GenericPage(0);
  v41 = swift_dynamicCast();
  v42 = MEMORY[0x277D84F78];
  if (v41)
  {
    if (v190)
    {
      v193[0] = v190;
      goto LABEL_19;
    }
  }

  else
  {
    *&v190 = 0;
  }

  *(&v196 + 1) = MEMORY[0x277D84F78] + 8;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v193[0] = 0;
  }

LABEL_19:

  if (!v193[0])
  {
    goto LABEL_45;
  }

  v175 = v193[0];
  v43 = (v176 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData);
  swift_beginAccess();
  v44 = v43[3];
  if (v44)
  {
    v45 = v43[4];
    v46 = __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    v47 = *(v44 - 8);
    v48 = MEMORY[0x28223BE20](v46);
    v50 = &v156 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v47 + 16))(v50, v48);
    v51 = *(v45 + 8);
    v52 = v45;
    v42 = MEMORY[0x277D84F78];
    v51(&v195, v44, v52);
    (*(v47 + 8))(v50, v44);
  }

  else
  {
    v195 = 0u;
    v196 = 0u;
  }

  v53 = v187;
  if (swift_dynamicCast())
  {
    v54 = v175;
    if (v190)
    {
      v193[0] = v190;
      goto LABEL_30;
    }
  }

  else
  {
    *&v190 = 0;
    v54 = v175;
  }

  *(&v196 + 1) = v42 + 8;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v193[0] = 0;
  }

LABEL_30:

  v174 = v193[0];
  if (!v193[0])
  {

LABEL_45:

    return v177;
  }

  v165 = v40;
  v55 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v56 = *(v54 + v55);
  v57 = MEMORY[0x277D84F90];
  v193[0] = MEMORY[0x277D84F90];
  v58 = *(v56 + 16);
  v59 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (!v58)
  {
    v167 = v57;
    goto LABEL_47;
  }

  v60 = 0;
  v61 = v56 + 32;
  v164 = v58 - 1;
  v166 = v56 + 32;
  v167 = MEMORY[0x277D84F90];
  do
  {
    v53 = v61 + 40 * v60;
    v62 = v60;
    v63 = v175;
    while (1)
    {
      if (v62 >= *(v56 + 16))
      {
        __break(1u);
        goto LABEL_82;
      }

      sub_24E65864C(v53, &v195);
      v64 = *(v63 + v59);
      if (*(v64 + 16))
      {
        break;
      }

LABEL_34:
      ++v62;
      sub_24E6585F8(&v195);
      v53 += 40;
      if (v58 == v62)
      {
        v53 = v187;
        goto LABEL_47;
      }
    }

    v65 = sub_24E76D934(&v195);
    if ((v66 & 1) == 0)
    {

      goto LABEL_34;
    }

    v167 = *(*(v64 + 56) + 8 * v65);

    v67 = sub_24E6585F8(&v195);
    MEMORY[0x253050F00](v67);
    if (*((v193[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v193[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v60 = v62 + 1;
    sub_24F92B638();
    v167 = v193[0];
    v53 = v187;
    v61 = v166;
  }

  while (v164 != v62);
LABEL_47:

  v68 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  v69 = v174;
  swift_beginAccess();
  v70 = *(v69 + v68);
  v71 = MEMORY[0x277D84F90];
  v193[0] = MEMORY[0x277D84F90];
  v72 = *(v70 + 16);
  v59 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (v72)
  {
    v73 = 0;
    v74 = v70 + 32;
    v163 = v72 - 1;
    v166 = MEMORY[0x277D84F90];
    v164 = v70 + 32;
LABEL_49:
    v53 = v74 + 40 * v73;
    v75 = v73;
    v76 = v174;
    while (v75 < *(v70 + 16))
    {
      sub_24E65864C(v53, &v195);
      v77 = *(v76 + v59);
      if (*(v77 + 16))
      {

        v78 = sub_24E76D934(&v195);
        if (v79)
        {
          v166 = *(*(v77 + 56) + 8 * v78);

          v80 = sub_24E6585F8(&v195);
          MEMORY[0x253050F00](v80);
          if (*((v193[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v193[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          v73 = v75 + 1;
          sub_24F92B638();
          v166 = v193[0];
          v74 = v164;
          v53 = v187;
          if (v163 != v75)
          {
            goto LABEL_49;
          }

          goto LABEL_61;
        }
      }

      ++v75;
      sub_24E6585F8(&v195);
      v53 += 40;
      if (v72 == v75)
      {
        v53 = v187;
        goto LABEL_61;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    v82 = sub_24F92C738();
  }

  else
  {
    v166 = v71;
LABEL_61:

    v59 = v167;
    if (v167 >> 62)
    {
      goto LABEL_83;
    }

    v82 = *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v84 = v185;
  v83 = v186;
  v85 = v166;
  if (v166 >> 62)
  {
    if (v82 != sub_24F92C738())
    {
      goto LABEL_85;
    }

LABEL_65:
    sub_24EF8FF10(v59, v85, v81);
    v159 = v86;

    v87 = v174;
    v88 = *(v174 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
    v161 = *(v174 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
    v162 = *(v174 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions);
    sub_24E60169C(v174 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &v195, &qword_27F2129B0, &unk_24F945320);
    v160 = *(v87 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete);
    v89 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
    swift_beginAccess();
    v167 = *(v87 + v89);
    v90 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v158 = *(v84 + 16);
    v158(v178, v87 + v90, v83);
    v157 = *(v87 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
    v163 = sub_24F9285B8();
    v166 = *(v163 - 8);
    (*(v166 + 56))(v53, 1, 1, v163);
    v91 = swift_allocObject();
    v92 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
    *(v91 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;

    v93 = sub_24EEF0A68(v159);
    v95 = v94;

    *(v91 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v93;
    *(v91 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v95;
    v96 = (v91 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
    v97 = v162;
    *v96 = v161;
    v96[1] = v88;
    *(v91 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = 0;
    *(v91 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v97;
    sub_24E60169C(&v195, v91 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);
    *(v91 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v160;
    swift_beginAccess();
    *(v91 + v92) = v167;

    *(v91 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
    v98 = v182;
    v99 = v186;
    v100 = v158;
    v158(v182, v178, v186);
    v101 = v184;
    sub_24E60169C(v187, v184, &qword_27F2218B0, &unk_24F975980);
    *(v91 + 16) = 0;
    v100(v91 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v98, v99);
    v164 = v91;
    *(v91 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v157;
    v102 = v183;
    sub_24E60169C(v101, v183, &qword_27F2218B0, &unk_24F975980);
    v103 = *(v166 + 48);
    if (v103(v102, 1, v163) == 1)
    {

      sub_24E601704(v101, &qword_27F2218B0, &unk_24F975980);
      v104 = v98;
      v105 = *(v185 + 8);
      v105(v104, v99);
      sub_24E601704(v187, &qword_27F2218B0, &unk_24F975980);
      v105(v178, v99);
      sub_24E601704(&v195, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v102, &qword_27F2218B0, &unk_24F975980);
    }

    else
    {
      v162 = v103;
      v106 = qword_27F2105F0;

      if (v106 != -1)
      {
        swift_once();
      }

      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
      __swift_project_value_buffer(v107, qword_27F22D8D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
      v108 = v183;
      sub_24F9285C8();
      v109 = v193[0];
      v110 = v184;
      if (v193[0])
      {
      }

      v111 = *(v166 + 8);
      v112 = v108;
      v113 = v163;
      v166 += 8;
      v183 = v111;
      (v111)(v112, v163);
      if (v109)
      {
        v114 = v180;
        sub_24E60169C(v110, v180, &qword_27F2218B0, &unk_24F975980);
        if (v162(v114, 1, v113) != 1)
        {
          sub_24ECDF110();

          sub_24E601704(v110, &qword_27F2218B0, &unk_24F975980);
          v122 = *(v185 + 8);
          v123 = v113;
          v124 = v186;
          v122(v182, v186);
          sub_24E601704(v187, &qword_27F2218B0, &unk_24F975980);
          v122(v178, v124);
          sub_24E601704(&v195, &qword_27F2129B0, &unk_24F945320);
          (v183)(v114, v123);
          goto LABEL_77;
        }

        sub_24E601704(v110, &qword_27F2218B0, &unk_24F975980);
        v115 = v186;
        v116 = *(v185 + 8);
        v116(v182, v186);
        sub_24E601704(v187, &qword_27F2218B0, &unk_24F975980);
        v116(v178, v115);
        sub_24E601704(&v195, &qword_27F2129B0, &unk_24F945320);
        v117 = v114;
        v118 = &qword_27F2218B0;
        v119 = &unk_24F975980;
      }

      else
      {

        v120 = v186;
        sub_24E601704(v110, &qword_27F2218B0, &unk_24F975980);
        v121 = *(v185 + 8);
        v121(v98, v120);
        sub_24E601704(v187, &qword_27F2218B0, &unk_24F975980);
        v121(v178, v120);
        v118 = &qword_27F2129B0;
        v119 = &unk_24F945320;
        v117 = &v195;
      }

      sub_24E601704(v117, v118, v119);
    }

LABEL_77:
    v125 = v171;
    v126 = v172;
    v197 = 0;
    v195 = 0u;
    v196 = 0u;
    v127 = v176;
    v128 = *(v176 + 24);
    v186 = *(v176 + 16);
    LODWORD(v183) = *(v176 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page);
    v129 = v170;
    sub_24E60169C(v176 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, v170, &qword_27F228530, &unk_24F93C6E0);
    v130 = *(v127 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl + 8);
    v182 = *(v127 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
    v194[3] = v165;
    v194[0] = v164;
    v184 = *(v125 + 16);
    (v184)(v173, v127 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v126);
    v131 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext;
    swift_beginAccess();
    LODWORD(v180) = *(v127 + v131);
    v132 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior;
    swift_beginAccess();
    LODWORD(v178) = *(v127 + v132);
    v133 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin;
    swift_beginAccess();
    LODWORD(v167) = *(v127 + v133);
    v185 = *(v127 + 40);

    v187 = v128;

    v134 = sub_24F929D18();
    v136 = v135;
    v137 = swift_allocObject();
    *(v137 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
    v138 = v137 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
    *v138 = 0u;
    *(v138 + 1) = 0u;
    *(v138 + 4) = 0;
    v139 = (v137 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
    *v139 = 0;
    v139[1] = 0;
    *(v137 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = v183;
    sub_24E60169C(v129, v137 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);
    v140 = (v137 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
    *v140 = v182;
    v140[1] = v130;
    v141 = v137 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
    *v141 = xmmword_24F9406F0;
    v141[40] = 0;
    *(v141 + 3) = 0;
    *(v141 + 4) = 0;
    *(v141 + 2) = 0;
    *(v137 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = v180;
    *(v137 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = v178;
    *(v137 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = v167;
    v142 = (v137 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
    *v142 = v134;
    v142[1] = v136;
    v143 = v172;
    sub_24E60169C(&v195, v193, &qword_27F235830, &qword_24F93B8C0);
    (v184)(v137 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v173, v143);
    v144 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
    v145 = sub_24F929608();
    (*(*(v145 - 8) + 56))(v137 + v144, 1, 1, v145);
    v146 = (v137 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v146 = 0u;
    v146[1] = 0u;
    v147 = v137 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    sub_24E60169C(v193, &v190, &qword_27F235830, &qword_24F93B8C0);
    if (*(&v191 + 1))
    {
      v148 = v191;
      *v147 = v190;
      *(v147 + 1) = v148;
      *(v147 + 4) = v192;
    }

    else
    {
      v149 = v181;
      sub_24F91F6A8();
      v150 = sub_24F91F668();
      v152 = v151;
      (*(v168 + 8))(v149, v169);
      v188 = v150;
      v189 = v152;
      sub_24F92C7F8();
      sub_24E601704(&v190, &qword_27F235830, &qword_24F93B8C0);
    }

    sub_24E601704(v193, &qword_27F235830, &qword_24F93B8C0);
    v153 = v187;
    v137[2] = v186;
    v137[3] = v153;
    v154 = v185;
    v137[4] = 0;
    v137[5] = v154;

    v27 = v137;
    FlowAction.setPageData(_:)(v194);

    (*(v171 + 8))(v173, v143);
    sub_24E601704(v170, &qword_27F228530, &unk_24F93C6E0);
    sub_24E601704(&v195, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(v194, &qword_27F2129B0, &unk_24F945320);
    return v27;
  }

  if (v82 == *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_65;
  }

LABEL_85:

  return v177;
}