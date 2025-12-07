id DynamicTypeTextField.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeTextField(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E93585C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit20DynamicTypeTextField_fontUseCase;
  swift_beginAccess();
  return sub_24E934D5C(v3 + v4, a2);
}

uint64_t sub_24E9358BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit20DynamicTypeTextField_directionalTextAlignment;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_24E935920(uint64_t a1)
{
  sub_24E935B08(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24E935B08(uint64_t a1)
{
  if (!qword_27F222050)
  {
    sub_24F922378();
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F222050);
    }
  }
}

uint64_t sub_24E935B84(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for PlayerAvatar(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_24E935D1C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for PlayerAvatar(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for FriendRequestOverlayLockup(uint64_t a1)
{
  result = qword_27F222058;
  if (!qword_27F222058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E935EEC(uint64_t a1)
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
          type metadata accessor for PlayerAvatar(319);
          if (v5 <= 0x3F)
          {
            sub_24E6BCB04();
            if (v6 <= 0x3F)
            {
              sub_24E65B038(319, &qword_27F21C120, &qword_27F213840, &unk_24F93B3C0);
              if (v7 <= 0x3F)
              {
                sub_24E6CFC68(319);
                if (v8 <= 0x3F)
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

uint64_t sub_24E936058(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 0x4D747865746E6F63;
    v8 = 0xD000000000000011;
    if (a1 != 3)
    {
      v8 = 0x76417265646E6573;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6575676573;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 1970169197;
    v2 = 0x6341747065636361;
    if (a1 != 9)
    {
      v2 = 0x634165726F6E6769;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6954656E696C6E69;
    v4 = 0xD000000000000011;
    if (a1 != 6)
    {
      v4 = 0xD000000000000013;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24E9361CC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222180, &qword_24F968DB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E939E5C();
  sub_24F92D128();
  LOBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v13) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
  sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
  sub_24F92CD48();
  v9 = type metadata accessor for FriendRequestOverlayLockup(0);
  LOBYTE(v13) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  sub_24E65CD0C();
  sub_24F92CD48();
  LOBYTE(v13) = 3;
  sub_24F929608();
  sub_24E939FE0(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
  sub_24F92CCF8();
  LOBYTE(v13) = 4;
  type metadata accessor for PlayerAvatar(0);
  sub_24E939FE0(&qword_27F218A38, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
  sub_24F92CD48();
  LOBYTE(v13) = 5;
  sub_24F92CCA8();
  LOBYTE(v13) = 6;
  sub_24F92CD08();
  LOBYTE(v13) = 7;
  sub_24F92CCA8();
  v13 = *(v3 + *(v9 + 48));
  v12 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0, &qword_24F9576D0);
  sub_24E7AA500();
  sub_24F92CD48();
  v11 = v6;
  LOBYTE(v13) = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8, &qword_24F943600);
  sub_24E602068(&qword_27F218310, &qword_27F2169E8, &qword_24F943600, MEMORY[0x277D21AA8]);
  sub_24F92CD48();
  LOBYTE(v13) = 10;
  sub_24F92CD48();
  return (*(v11 + 8))(v8, v5);
}

uint64_t sub_24E9366E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v45 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v45);
  v44 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222170, &qword_24F968DA8);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v11 = &v41 - v10;
  v12 = type metadata accessor for FriendRequestOverlayLockup(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 40) = 0u;
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 9) = 0;
  v54 = v14 + 40;
  sub_24E61DA68(&v55, (v14 + 40), qword_27F21B590, &unk_24F93BE30);
  v15 = *(v12 + 24);
  v16 = sub_24F92A6D8();
  v17 = *(*(v16 - 8) + 56);
  v53 = v15;
  v17(&v14[v15], 1, 1, v16);
  v51 = v12;
  v18 = *(v12 + 28);
  v19 = sub_24F929608();
  v20 = *(*(v19 - 8) + 56);
  v52 = v18;
  v20(&v14[v18], 1, 1, v19);
  v21 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24E939E5C();
  v47 = v11;
  v22 = v49;
  sub_24F92D108();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v50);
    sub_24E601704(v54, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v14[v53], &qword_27F215440, &unk_24F942BD0);
    sub_24E601704(&v14[v52], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v49 = v7;
    v42 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v58 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v23 = v56;
    *v14 = v55;
    *(v14 + 1) = v23;
    *(v14 + 4) = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v58 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v55, v54, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v55) = 2;
    sub_24E65CAA0();
    sub_24F92CC68();
    v24 = v51;
    sub_24E61DA68(v9, &v14[v53], &qword_27F215440, &unk_24F942BD0);
    LOBYTE(v55) = 3;
    sub_24E939FE0(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v25 = v42;
    sub_24F92CC18();
    sub_24E61DA68(v25, &v14[v52], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v55) = 4;
    sub_24E939FE0(&qword_27F2185A0, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    v26 = v44;
    sub_24F92CC68();
    sub_24E939EB0(v26, &v14[v24[8]], type metadata accessor for PlayerAvatar);
    LOBYTE(v55) = 5;
    v27 = sub_24F92CBC8();
    v28 = &v14[v24[9]];
    *v28 = v27;
    v28[1] = v29;
    LOBYTE(v55) = 6;
    v30 = sub_24F92CC28();
    v31 = &v14[v24[10]];
    *v31 = v30;
    v31[1] = v32;
    LOBYTE(v55) = 7;
    v33 = sub_24F92CBC8();
    v34 = &v14[v24[11]];
    *v34 = v33;
    v34[1] = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0, &qword_24F9576D0);
    v58 = 8;
    sub_24E7AA3E4();
    sub_24F92CC68();
    *&v14[v51[12]] = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8, &qword_24F943600);
    v58 = 9;
    sub_24E602068(&qword_27F243830, &qword_27F2169E8, &qword_24F943600, MEMORY[0x277D21AB0]);
    sub_24F92CC68();
    v36 = &v14[v51[13]];
    v37 = v56;
    *v36 = v55;
    *(v36 + 1) = v37;
    *(v36 + 4) = v57;
    v58 = 10;
    sub_24F92CC68();
    (*(v46 + 8))(v47, v48);
    v38 = &v14[v51[14]];
    v39 = v56;
    *v38 = v55;
    *(v38 + 1) = v39;
    *(v38 + 4) = v57;
    sub_24E939F18(v14, v43, type metadata accessor for FriendRequestOverlayLockup);
    __swift_destroy_boxed_opaque_existential_1(v50);
    return sub_24E939F80(v14, type metadata accessor for FriendRequestOverlayLockup);
  }
}

uint64_t sub_24E9371F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E93A228(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E937218(uint64_t a1)
{
  v2 = sub_24E939E5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E937254(uint64_t a1)
{
  v2 = sub_24E939E5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E937290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

unint64_t sub_24E9373D0()
{
  result = qword_27F222068;
  if (!qword_27F222068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222068);
  }

  return result;
}

uint64_t sub_24E937424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v107 = a2;
  v5 = sub_24F9241F8();
  v105 = *(v5 - 8);
  v106 = v5;
  MEMORY[0x28223BE20](v5);
  v104 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_24F923D48();
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v95 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v91 = &v85 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222088, &qword_24F968BF0);
  MEMORY[0x28223BE20](v94);
  v93 = (&v85 - v10);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222090, &qword_24F968BF8);
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v96 = &v85 - v11;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222098, &qword_24F968C00);
  MEMORY[0x28223BE20](v97);
  v103 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v102 = &v85 - v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2220A0, &qword_24F968C08) - 8;
  MEMORY[0x28223BE20](v89);
  v16 = (&v85 - v15);
  v88 = sub_24F9248C8();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2236E0, &unk_24F968C10);
  MEMORY[0x28223BE20](v85);
  v20 = &v85 - v19;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2236D0, &unk_24F96E770);
  v21 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v23 = &v85 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2220A8, &qword_24F968C20);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v85 - v25;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2220B0, &qword_24F968C28);
  MEMORY[0x28223BE20](v90);
  v92 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v85 - v29;
  *v20 = sub_24F9249A8();
  *(v20 + 1) = 0x4020000000000000;
  v20[16] = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2220B8, &qword_24F968C30);
  sub_24E937F5C(a1, &v20[*(v31 + 44)]);
  sub_24F9248B8();
  sub_24E602068(&qword_27F2220C0, &unk_27F2236E0, &unk_24F968C10, MEMORY[0x277CE1138]);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v87 + 8))(v18, v88);
  sub_24E601704(v20, &unk_27F2236E0, &unk_24F968C10);
  v32 = type metadata accessor for FriendRequestOverlayLockup(0);
  sub_24E9932E0(*(a1 + *(v32 + 48)));
  (*(v21 + 8))(v23, v86);
  v33 = *(sub_24F924258() + 20);
  v34 = *MEMORY[0x277CE0118];
  v35 = sub_24F924B38();
  v36 = v16 + v33;
  v37 = v30;
  (*(*(v35 - 8) + 104))(v36, v34, v35);
  __asm { FMOV            V0.2D, #12.0 }

  *v16 = _Q0;
  *(v16 + *(sub_24F924248() + 20)) = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v43 = sub_24F926D08();

  *(v16 + *(v89 + 60)) = v43;
  sub_24E60169C(v16, v37, &qword_27F2220A0, &qword_24F968C08);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2220C8, &qword_24F968C38);
  sub_24E60169C(v26, v37 + v44[9], &qword_27F2220A8, &qword_24F968C20);
  v45 = v37 + v44[10];
  *v45 = sub_24F923398() & 1;
  *(v45 + 8) = v46;
  *(v45 + 16) = v47 & 1;
  v48 = v37 + v44[11];
  *v48 = swift_getKeyPath();
  *(v48 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v49 = qword_27F24E488;
  v50 = sub_24F923398();
  v52 = v51;
  v54 = v53;
  v55 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2220D0, &qword_24F968C68) + 36);
  *v55 = v49;
  *(v55 + 8) = v50 & 1;
  *(v55 + 16) = v52;
  *(v55 + 24) = v54 & 1;
  LOBYTE(v49) = sub_24F923398();
  v57 = v56;
  LOBYTE(v52) = v58;
  sub_24E601704(v16, &qword_27F2220A0, &qword_24F968C08);
  sub_24E601704(v26, &qword_27F2220A8, &qword_24F968C20);
  v59 = v37 + *(v90 + 36);
  *v59 = v49 & 1;
  *(v59 + 8) = v57;
  *(v59 + 16) = v52 & 1;
  v60 = sub_24F9249A8();
  v61 = v93;
  *v93 = v60;
  *(v61 + 8) = 0x4030000000000000;
  *(v61 + 16) = 0;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2220D8, &qword_24F968C70);
  sub_24E939328(a1, (v61 + *(v62 + 44)));
  v63 = v91;
  sub_24F923D38();
  v64 = v95;
  sub_24F923D18();
  v65 = *(v98 + 8);
  v66 = v100;
  v65(v63, v100);
  v67 = sub_24E602068(&qword_27F2220E0, &qword_27F222088, &qword_24F968BF0, MEMORY[0x277CE1138]);
  v98 = v37;
  v68 = v67;
  v69 = v96;
  v70 = v94;
  sub_24F926338();
  v65(v64, v66);
  sub_24E601704(v61, &qword_27F222088, &qword_24F968BF0);
  v71 = v104;
  sub_24F9241E8();
  v108 = v70;
  v109 = v68;
  swift_getOpaqueTypeConformance2();
  sub_24E939FE0(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v72 = v101;
  v73 = v102;
  v74 = v106;
  sub_24F926178();
  (*(v105 + 8))(v71, v74);
  (*(v99 + 8))(v69, v72);
  v75 = sub_24F925888();
  KeyPath = swift_getKeyPath();
  v77 = v98;
  v78 = (v73 + *(v97 + 36));
  *v78 = KeyPath;
  v78[1] = v75;
  v79 = v92;
  sub_24E60169C(v77, v92, &qword_27F2220B0, &qword_24F968C28);
  v80 = v103;
  sub_24E60169C(v73, v103, &qword_27F222098, &qword_24F968C00);
  v81 = v107;
  sub_24E60169C(v79, v107, &qword_27F2220B0, &qword_24F968C28);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2220E8, &unk_24F968CA8);
  v83 = v81 + *(v82 + 48);
  *v83 = 0;
  *(v83 + 8) = 1;
  sub_24E60169C(v80, v81 + *(v82 + 64), &qword_27F222098, &qword_24F968C00);
  sub_24E601704(v73, &qword_27F222098, &qword_24F968C00);
  sub_24E601704(v77, &qword_27F2220B0, &qword_24F968C28);
  sub_24E601704(v80, &qword_27F222098, &qword_24F968C00);
  return sub_24E601704(v79, &qword_27F2220B0, &qword_24F968C28);
}

uint64_t sub_24E937F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222110, &unk_24F968CE0);
  MEMORY[0x28223BE20](v4);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v34[-v8];
  v10 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PlayerAvatarView(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222118, &qword_24F9F1990);
  MEMORY[0x28223BE20](v16);
  v18 = &v34[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v21 = &v34[-v20];
  MEMORY[0x28223BE20](v22);
  v24 = &v34[-v23];
  v25 = type metadata accessor for FriendRequestOverlayLockup(0);
  sub_24E939F18(a1 + *(v25 + 32), v12, type metadata accessor for PlayerAvatar);
  LOBYTE(v36[0]) = 7;
  sub_24F8319B8(v12, v36, v15);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E939EB0(v15, v21, type metadata accessor for PlayerAvatarView);
  v26 = &v21[*(v16 + 36)];
  v27 = v36[5];
  v26[4] = v36[4];
  v26[5] = v27;
  v26[6] = v36[6];
  v28 = v36[1];
  *v26 = v36[0];
  v26[1] = v28;
  v29 = v36[3];
  v26[2] = v36[2];
  v26[3] = v29;
  sub_24E6009C8(v21, v24, &qword_27F222118, &qword_24F9F1990);
  *v9 = sub_24F924C98();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222120, &qword_24F968CF0);
  sub_24E9383A0(a1, &v9[*(v30 + 44)]);
  *&v9[*(v4 + 36)] = 256;
  sub_24E60169C(v24, v18, &qword_27F222118, &qword_24F9F1990);
  sub_24E60169C(v9, v6, &qword_27F222110, &unk_24F968CE0);
  v31 = v35;
  sub_24E60169C(v18, v35, &qword_27F222118, &qword_24F9F1990);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222128, &qword_24F968CF8);
  sub_24E60169C(v6, v31 + *(v32 + 48), &qword_27F222110, &unk_24F968CE0);
  sub_24E601704(v9, &qword_27F222110, &unk_24F968CE0);
  sub_24E601704(v24, &qword_27F222118, &qword_24F9F1990);
  sub_24E601704(v6, &qword_27F222110, &unk_24F968CE0);
  return sub_24E601704(v18, &qword_27F222118, &qword_24F9F1990);
}

uint64_t sub_24E9383A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v168 = a2;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222130, &qword_24F968D00);
  MEMORY[0x28223BE20](v167);
  v4 = &v158 - v3;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222138, &unk_24F968D08);
  MEMORY[0x28223BE20](v165);
  v166 = &v158 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v6);
  v8 = &v158 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222140, &qword_24F968D18);
  MEMORY[0x28223BE20](v9);
  v11 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v158 - v13;
  v15 = type metadata accessor for FriendRequestOverlayLockup(0);
  v16 = (a1 + *(v15 + 36));
  v17 = v16[1];
  v164 = v8;
  v169 = v6;
  v170 = a1;
  v171 = v15;
  if (v17)
  {
    *&v217 = *v16;
    *(&v217 + 1) = v17;
    v163 = sub_24E600AEC();

    v18 = sub_24F925E18();
    v20 = v19;
    v22 = v21;
    sub_24F925898();
    v23 = sub_24F925C98();
    v25 = v24;
    v27 = v26;

    sub_24E600B40(v18, v20, v22 & 1);

    sub_24F925938();
    v28 = sub_24F925B78();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    sub_24E600B40(v23, v25, v27 & 1);

    KeyPath = swift_getKeyPath();
    v36 = swift_getKeyPath();
    LOBYTE(v207) = v32 & 1;
    LOBYTE(v202) = 0;
    *&v212 = v28;
    *(&v212 + 1) = v30;
    LOBYTE(v213) = v32 & 1;
    *(&v213 + 1) = v217;
    DWORD1(v213) = *(&v217 + 3);
    *(&v213 + 1) = v34;
    *&v214 = KeyPath;
    *(&v214 + 1) = 0x3FE8000000000000;
    *&v215 = v36;
    *(&v215 + 1) = 1;
    v216 = 0;
    v37 = (v170 + *(v171 + 40));
    v38 = v37[1];
    *&v217 = *v37;
    *(&v217 + 1) = v38;

    v39 = sub_24F925E18();
    v41 = v40;
    LOBYTE(v28) = v42;
    sub_24F925A18();
    v43 = sub_24F925C98();
    v45 = v44;
    v47 = v46;

    sub_24E600B40(v39, v41, v28 & 1);

    sub_24F925938();
    v48 = sub_24F925B78();
    v50 = v49;
    LOBYTE(v28) = v51;
    sub_24E600B40(v43, v45, v47 & 1);

    LODWORD(v43) = sub_24F9251C8();
    v52 = *(v169 + 36);
    v53 = *MEMORY[0x277CE13B8];
    v54 = sub_24F927748();
    v55 = *(v54 - 8);
    v56 = *(v55 + 104);
    v57 = v164;
    LODWORD(v162) = v53;
    v160 = v56;
    v161 = v54;
    v159 = v55 + 104;
    (v56)(v164 + v52, v53);
    *v57 = v43;
    v158 = sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
    v58 = sub_24F925C58();
    v60 = v59;
    LOBYTE(v52) = v61;
    v63 = v62;
    sub_24E600B40(v48, v50, v28 & 1);

    sub_24E601704(v57, &qword_27F213F10, &unk_24F93BE10);
    v64 = swift_getKeyPath();
    v65 = swift_getKeyPath();
    LOBYTE(v202) = v52 & 1;
    LOBYTE(v200[0]) = 0;
    *&v217 = v58;
    *(&v217 + 1) = v60;
    LOBYTE(v218) = v52 & 1;
    *(&v218 + 1) = v207;
    DWORD1(v218) = *(&v207 + 3);
    *(&v218 + 1) = v63;
    *&v219 = v64;
    *(&v219 + 1) = 0x3FE8000000000000;
    *&v220 = v65;
    *(&v220 + 1) = 1;
    v221 = 0;
    v66 = (v170 + *(v171 + 44));
    v67 = v66[1];
    if (v67)
    {
      *&v207 = *v66;
      *(&v207 + 1) = v67;

      v68 = sub_24F925E18();
      v70 = v69;
      v72 = v71;
      sub_24F925A18();
      v73 = sub_24F925C98();
      v75 = v74;
      v77 = v76;
      v171 = v78;

      sub_24E600B40(v68, v70, v72 & 1);

      LODWORD(v68) = sub_24F9251C8();
      (v160)(v57 + *(v169 + 36), v162, v161);
      *v57 = v68;
      v79 = sub_24F925C58();
      v81 = v80;
      v83 = v82;
      v85 = v84;
      sub_24E600B40(v73, v75, v77 & 1);

      sub_24E601704(v57, &qword_27F213F10, &unk_24F93BE10);
      v86 = swift_getKeyPath();
      v87 = swift_getKeyPath();
      LOBYTE(v202) = 0;
      *&v207 = v79;
      *(&v207 + 1) = v81;
      LOBYTE(v208) = v83 & 1;
      *(&v208 + 1) = v85;
      *&v209 = v86;
      v88 = 1;
      *(&v209 + 1) = 0x3FE8000000000000;
      *&v210 = v87;
    }

    else
    {
      v88 = 0;
      *&v210 = 0;
      v209 = 0u;
      v208 = 0u;
      v207 = 0u;
    }

    *(&v210 + 1) = v88;
    v189 = v214;
    v190 = v215;
    v187 = v212;
    v188 = v213;
    v184 = v219;
    v185 = v220;
    v182 = v217;
    v183 = v218;
    v198[2] = v209;
    v198[3] = v210;
    v198[0] = v207;
    v198[1] = v208;
    v192[2] = v214;
    v192[3] = v215;
    v192[0] = v212;
    v192[1] = v213;
    v174 = v214;
    v175 = v215;
    v172 = v212;
    v173 = v213;
    v194[2] = v219;
    v194[3] = v220;
    v194[0] = v217;
    v194[1] = v218;
    *(v176 + 8) = v217;
    *(&v176[3] + 8) = v220;
    *(&v176[2] + 8) = v219;
    *(&v176[1] + 8) = v218;
    v196[2] = v209;
    v196[3] = v210;
    v196[0] = v207;
    v196[1] = v208;
    v211 = 0;
    v191 = v216;
    v186 = v221;
    v199 = 0;
    v193 = v216;
    LOBYTE(v176[0]) = v216;
    v195 = v221;
    BYTE8(v176[4]) = v221;
    v197 = 0;
    v181 = 0;
    v179 = v209;
    v180 = v210;
    v177 = v207;
    v178 = v208;
    sub_24E60169C(&v212, &v202, &qword_27F221A98, &unk_24F9680E0);
    sub_24E60169C(&v217, &v202, &qword_27F221A98, &unk_24F9680E0);
    sub_24E60169C(&v207, &v202, &qword_27F221A88, &unk_24F967BA0);
    sub_24E60169C(v192, &v202, &qword_27F221A98, &unk_24F9680E0);
    sub_24E60169C(v194, &v202, &qword_27F221A98, &unk_24F9680E0);
    sub_24E60169C(v196, &v202, &qword_27F221A88, &unk_24F967BA0);
    sub_24E601704(v198, &qword_27F221A88, &unk_24F967BA0);
    v200[2] = v184;
    v200[3] = v185;
    v201 = v186;
    v200[0] = v182;
    v200[1] = v183;
    sub_24E601704(v200, &qword_27F221A98, &unk_24F9680E0);
    v204 = v189;
    v205 = v190;
    v206 = v191;
    v202 = v187;
    v203 = v188;
    sub_24E601704(&v202, &qword_27F221A98, &unk_24F9680E0);
    v140 = v179;
    v141 = v166;
    *(v166 + 160) = v178;
    *(v141 + 176) = v140;
    *(v141 + 192) = v180;
    *(v141 + 208) = v181;
    v142 = v176[3];
    *(v141 + 96) = v176[2];
    *(v141 + 112) = v142;
    v143 = v177;
    *(v141 + 128) = v176[4];
    *(v141 + 144) = v143;
    v144 = v175;
    *(v141 + 32) = v174;
    *(v141 + 48) = v144;
    v145 = v176[1];
    *(v141 + 64) = v176[0];
    *(v141 + 80) = v145;
    v146 = v173;
    *v141 = v172;
    *(v141 + 16) = v146;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222158, &unk_24F968D98);
    v147 = MEMORY[0x277CE14C0];
    sub_24E602068(&qword_27F222160, &qword_27F222158, &unk_24F968D98, MEMORY[0x277CE14C0]);
    sub_24E602068(&qword_27F222168, &qword_27F222130, &qword_24F968D00, v147);
    sub_24F924E28();
    sub_24E601704(&v207, &qword_27F221A88, &unk_24F967BA0);
    sub_24E601704(&v217, &qword_27F221A98, &unk_24F9680E0);
    return sub_24E601704(&v212, &qword_27F221A98, &unk_24F9680E0);
  }

  else
  {
    v161 = v11;
    v162 = v4;
    v89 = (a1 + *(v15 + 40));
    v90 = v89[1];
    *&v217 = *v89;
    *(&v217 + 1) = v90;
    v91 = sub_24E600AEC();

    v159 = v91;
    v92 = sub_24F925E18();
    v94 = v93;
    v96 = v95;
    sub_24F925898();
    v163 = v14;
    v160 = v9;
    v97 = sub_24F925C98();
    v99 = v98;
    LOBYTE(v91) = v100;
    v101 = v163;

    sub_24E600B40(v92, v94, v96 & 1);

    sub_24F925938();
    v102 = sub_24F925B78();
    v104 = v103;
    LOBYTE(v92) = v105;
    v107 = v106;
    sub_24E600B40(v97, v99, v91 & 1);

    *&v217 = v102;
    *(&v217 + 1) = v104;
    LOBYTE(v218) = v92 & 1;
    *(&v218 + 1) = v107;
    sub_24F9268B8();
    sub_24E600B40(v102, v104, v92 & 1);

    v108 = swift_getKeyPath();
    v109 = (v101 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222148, &qword_24F968D50) + 36));
    *v109 = v108;
    v109[1] = 0x3FE8000000000000;
    v110 = swift_getKeyPath();
    v111 = v101 + v160[9];
    *v111 = v110;
    *(v111 + 8) = 1;
    *(v111 + 16) = 0;
    v112 = (v170 + *(v171 + 44));
    v113 = v112[1];
    if (v113)
    {
      *&v217 = *v112;
      *(&v217 + 1) = v113;

      v114 = sub_24F925E18();
      v116 = v115;
      v118 = v117;
      sub_24F925898();
      v119 = sub_24F925C98();
      v121 = v120;
      v123 = v122;
      v171 = v124;

      sub_24E600B40(v114, v116, v118 & 1);

      LODWORD(v114) = sub_24F9251C8();
      v125 = *(v169 + 36);
      v126 = *MEMORY[0x277CE13B8];
      v127 = sub_24F927748();
      v128 = v164;
      (*(*(v127 - 8) + 104))(v164 + v125, v126, v127);
      *v128 = v114;
      sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
      v129 = sub_24F925C58();
      v131 = v130;
      v133 = v132;
      v135 = v134;
      v136 = v123 & 1;
      v101 = v163;
      sub_24E600B40(v119, v121, v136);

      sub_24E601704(v128, &qword_27F213F10, &unk_24F93BE10);
      v137 = swift_getKeyPath();
      v138 = swift_getKeyPath();
      LOBYTE(v212) = 0;
      *&v217 = v129;
      *(&v217 + 1) = v131;
      LOBYTE(v218) = v133 & 1;
      *(&v218 + 1) = v135;
      *&v219 = v137;
      v139 = 1;
      *(&v219 + 1) = 0x3FE8000000000000;
      *&v220 = v138;
    }

    else
    {
      v139 = 0;
      *&v220 = 0;
      v218 = 0u;
      v219 = 0u;
      v217 = 0u;
    }

    *(&v220 + 1) = v139;
    v221 = 0;
    v149 = v161;
    sub_24E60169C(v101, v161, &qword_27F222140, &qword_24F968D18);
    v204 = v219;
    v205 = v220;
    v206 = v221;
    v202 = v217;
    v203 = v218;
    v150 = v162;
    sub_24E60169C(v149, v162, &qword_27F222140, &qword_24F968D18);
    v151 = v150 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222150, &unk_24F968D88) + 48);
    v152 = v206;
    v211 = v206;
    v154 = v204;
    v153 = v205;
    v210 = v205;
    v209 = v204;
    v156 = v202;
    v155 = v203;
    v208 = v203;
    v207 = v202;
    *(v151 + 32) = v204;
    *(v151 + 48) = v153;
    *(v151 + 64) = v152;
    *v151 = v156;
    *(v151 + 16) = v155;
    v216 = v152;
    v215 = v153;
    v214 = v154;
    v213 = v155;
    v212 = v156;
    sub_24E60169C(&v217, v200, &qword_27F221A88, &unk_24F967BA0);
    sub_24E60169C(&v207, v200, &qword_27F221A88, &unk_24F967BA0);
    sub_24E601704(&v212, &qword_27F221A88, &unk_24F967BA0);
    sub_24E601704(v149, &qword_27F222140, &qword_24F968D18);
    sub_24E60169C(v150, v166, &qword_27F222130, &qword_24F968D00);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222158, &unk_24F968D98);
    v157 = MEMORY[0x277CE14C0];
    sub_24E602068(&qword_27F222160, &qword_27F222158, &unk_24F968D98, MEMORY[0x277CE14C0]);
    sub_24E602068(&qword_27F222168, &qword_27F222130, &qword_24F968D00, v157);
    sub_24F924E28();
    sub_24E601704(&v217, &qword_27F221A88, &unk_24F967BA0);
    sub_24E601704(v150, &qword_27F222130, &qword_24F968D00);
    return sub_24E601704(v163, &qword_27F222140, &qword_24F968D18);
  }
}

uint64_t sub_24E939328@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a1;
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2220F0, &qword_24F968CB8);
  MEMORY[0x28223BE20](v7);
  v9 = v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2220F8, &unk_24F968CC0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v41 = v35 - v14;
  MEMORY[0x28223BE20](v15);
  v40 = v35 - v16;
  MEMORY[0x28223BE20](v17);
  v44 = v35 - v18;
  v19 = sub_24F9232F8();
  v20 = *(v19 - 8);
  v38 = *(v20 + 56);
  v39 = v20 + 56;
  v38(v6, 1, 1, v19);
  v37 = type metadata accessor for FriendRequestOverlayLockup(0);
  sub_24E60169C(a1 + *(v37 + 56), v53, &qword_27F2169E8, &qword_24F943600);
  sub_24E612C80(v53, &v45);
  v35[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217BD8, &qword_24F957690);
  *&v53[0] = MEMORY[0x277CE1088];
  *(&v53[0] + 1) = MEMORY[0x277CE1078];
  v35[1] = swift_getOpaqueTypeConformance2();
  sub_24F921788();
  sub_24F927618();
  sub_24F9238C8();
  v21 = &v9[*(v7 + 36)];
  v22 = v51;
  *v21 = v50;
  *(v21 + 1) = v22;
  *(v21 + 2) = v52;
  v46 = 0u;
  v45 = 0u;
  v47 = 0;
  v48 = MEMORY[0x277CE1120];
  v23 = sub_24E63E454();
  v49 = v23;
  sub_24E939D94();
  sub_24E620DE8();
  sub_24F926178();
  sub_24E6A56E8(&v45);
  sub_24E601704(v9, &qword_27F2220F0, &qword_24F968CB8);
  v38(v6, 1, 1, v19);
  sub_24E60169C(v36 + *(v37 + 52), v53, &qword_27F2169E8, &qword_24F943600);
  sub_24E612C80(v53, &v45);
  sub_24F921788();
  sub_24F927618();
  sub_24F9238C8();
  v24 = &v9[*(v7 + 36)];
  v25 = v53[1];
  *v24 = v53[0];
  *(v24 + 1) = v25;
  *(v24 + 2) = v53[2];
  v46 = 0u;
  v45 = 0u;
  v47 = 0;
  v48 = MEMORY[0x277CE1120];
  v49 = v23;
  v26 = v40;
  sub_24F926178();
  sub_24E6A56E8(&v45);
  sub_24E601704(v9, &qword_27F2220F0, &qword_24F968CB8);
  v27 = *(v11 + 16);
  v28 = v41;
  v29 = v44;
  v27(v41, v44, v10);
  v30 = v42;
  v27(v42, v26, v10);
  v31 = v43;
  v27(v43, v28, v10);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222108, &unk_24F968CD0);
  v27(&v31[*(v32 + 48)], v30, v10);
  v33 = *(v11 + 8);
  v33(v26, v10);
  v33(v29, v10);
  v33(v30, v10);
  return (v33)(v28, v10);
}

double sub_24E939988(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F9248C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214410, &unk_24F9576A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v12 - v7;
  sub_24F926DF8();
  sub_24F924CF8();
  v9 = sub_24F924D08();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_24F926E58();

  sub_24E601704(v8, &qword_27F214410, &unk_24F9576A0);
  sub_24F9248B8();
  v12[1] = v10;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v2);

  return result;
}

uint64_t sub_24E939B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  *a2 = sub_24F9249A8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222080, &qword_24F968BE8);
  return sub_24E937424(a1, a2 + *(v7 + 44), v5, v6);
}

unint64_t sub_24E939C84()
{
  result = qword_27F222078;
  if (!qword_27F222078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222078);
  }

  return result;
}

unint64_t sub_24E939D94()
{
  result = qword_27F222100;
  if (!qword_27F222100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2220F0, &qword_24F968CB8);
    sub_24E602068(&qword_27F21CD60, &qword_27F21CD50, &qword_24F957678, MEMORY[0x277D7EB00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222100);
  }

  return result;
}

unint64_t sub_24E939E5C()
{
  result = qword_27F222178;
  if (!qword_27F222178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222178);
  }

  return result;
}

uint64_t sub_24E939EB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E939F18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E939F80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E939FE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E93A03C()
{
  result = qword_27F222188;
  if (!qword_27F222188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222190, &qword_24F968DC8);
    sub_24E602068(&qword_27F222198, &qword_27F2221A0, &unk_24F968DD0, MEMORY[0x277CE1138]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222188);
  }

  return result;
}

unint64_t sub_24E93A124()
{
  result = qword_27F2221A8;
  if (!qword_27F2221A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2221A8);
  }

  return result;
}

unint64_t sub_24E93A17C()
{
  result = qword_27F2221B0;
  if (!qword_27F2221B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2221B0);
  }

  return result;
}

unint64_t sub_24E93A1D4()
{
  result = qword_27F2221B8[0];
  if (!qword_27F2221B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F2221B8);
  }

  return result;
}

uint64_t sub_24E93A228(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x76417265646E6573 && a2 == 0xEC00000072617461 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6954656E696C6E69 && a2 == 0xEB00000000656C74 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA47300 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA47320 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1970169197 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6341747065636361 && a2 == 0xEC0000006E6F6974 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x634165726F6E6769 && a2 == 0xEC0000006E6F6974)
  {

    return 10;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

unint64_t sub_24E93A5CC()
{
  result = qword_27F216258;
  if (!qword_27F216258)
  {
    type metadata accessor for CompleteOnboardProfileCreationAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216258);
  }

  return result;
}

uint64_t sub_24E93A624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v9 = sub_24F92A9E8();
  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_24F968F88;
  v11[5] = v8;
  v11[6] = v9;

  sub_24E6959D8(0, 0, v7, &unk_24F94D7B0, v11);

  return v9;
}

uint64_t sub_24E93A7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24E93A7CC, 0, 0);
}

id sub_24E93A7CC()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_24F92B098();
  [v1 setBool:0 forKey:v2];

  v3 = objc_opt_self();
  result = [v3 shared];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  [result setForceDefaultNickname_];

  result = [v3 shared];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  [result setForceDefaultPrivacy_];

  v7 = objc_opt_self();
  v8 = [v7 proxyForLocalPlayer];
  v9 = [v8 accountService];

  v10 = objc_opt_self();
  result = [v10 currentDevice];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = result;
  v12 = [result platformBuildVersion];

  [v9 setLastPersonalizationVersionDisplayedForSignedInPlayer_];
  swift_unknownObjectRelease();
  v13 = [v7 proxyForLocalPlayer];
  v14 = [v13 accountService];

  result = [v10 currentDevice];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v15 = result;
  v16 = [result platformBuildVersion];

  [v14 setLastProfilePrivacyVersionDisplayedForSignedInPlayer_];
  swift_unknownObjectRelease();
  v17 = swift_task_alloc();
  *(v0 + 40) = v17;
  *v17 = v0;
  v17[1] = sub_24E93AA94;

  return sub_24E93AD6C();
}

uint64_t sub_24E93AA94()
{

  return MEMORY[0x2822009F8](sub_24E93AB90, 0, 0);
}

uint64_t sub_24E93AB90()
{
  v1 = *(v0 + 16);
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_24F928AE8();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24E93AC40()
{

  return swift_deallocObject();
}

uint64_t sub_24E93AC78(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E614970;

  return sub_24E93A7A8(a1, v4, v5);
}

uint64_t sub_24E93AD24()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E93AD6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  v0[12] = swift_task_alloc();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v0[13] = v1;
  v0[14] = *(v1 - 8);
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v2 = sub_24F921338();
  v0[17] = v2;
  v0[18] = *(v2 - 8);
  v3 = swift_task_alloc();
  v0[19] = v3;
  v0[20] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_24E93AF38;

  return MEMORY[0x28217F228](v3, v2, v2);
}

uint64_t sub_24E93AF38()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_24E93B7F4;
  }

  else
  {
    v2 = sub_24E93B04C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E93B04C()
{
  (*(v0[18] + 32))(v0[20], v0[19], v0[17]);
  sub_24F921318();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_24E93B124;

  return MEMORY[0x282165230](v1, v2);
}

uint64_t sub_24E93B124(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_24E93B9B8;
  }

  else
  {
    v4 = sub_24E93B238;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24E93B238()
{
  v1 = v0[24];
  if (*(v1 + 16))
  {
    v2 = v0[15];
    v3 = v0[16];
    v4 = v0[13];
    v5 = v0[14];
    (*(v5 + 16))(v2, v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    (*(v5 + 32))(v3, v2, v4);
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v6 = sub_24F9220D8();
    v0[26] = __swift_project_value_buffer(v6, qword_27F39E8E0);
    v7 = sub_24F9220B8();
    v8 = sub_24F92BDB8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24E5DD000, v7, v8, "CompleteOnboardProfileCreationActionImplementation: Refreshing onboarding state after completing the profile...", v9, 2u);
      MEMORY[0x2530542D0](v9, -1, -1);
    }

    sub_24F9212E8();
    v10 = v0[10];
    v11 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v10);
    v12 = swift_task_alloc();
    v0[27] = v12;
    *v12 = v0;
    v12[1] = sub_24E93B578;
    v13 = v0[16];

    return MEMORY[0x2821651F8](v13, v10, v11);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v14 = sub_24F9220D8();
    __swift_project_value_buffer(v14, qword_27F39E8E0);
    v15 = sub_24F9220B8();
    v16 = sub_24F92BDB8();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[20];
    v19 = v0[17];
    v20 = v0[18];
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24E5DD000, v15, v16, "CompleteOnboardProfileCreationActionImplementation: No authenticated player is found. This should not happen.", v21, 2u);
      MEMORY[0x2530542D0](v21, -1, -1);
    }

    (*(v20 + 8))(v18, v19);

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_24E93B578()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_24E93BB9C;
  }

  else
  {
    v2 = sub_24E93B68C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E93B68C()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  v7 = v0[12];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v8 = [objc_opt_self() standardUserDefaults];
  sub_24F91F638();
  v9 = sub_24F91F648();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_24F005A08(v7);

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24E93B7F4()
{
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 176);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "CompleteOnboardProfileCreationActionImplementation: Failed to get ShimGameServicesRoot, reason: %@", v8, 0xCu);
    sub_24E6D44CC(v9);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24E93B9B8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[25];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "CompleteOnboardProfileCreationActionImplementation: Failed to get an authenticated player, reason: %@", v8, 0xCu);
    sub_24E6D44CC(v9);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[18] + 8))(v0[20], v0[17]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_24E93BB9C()
{
  v1 = v0[28];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[28];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v3, v4, "CompleteOnboardProfileCreationActionImplementation: Failed to refresh onboarding state, reason: %@", v6, 0xCu);
    sub_24E6D44CC(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = v0[28];
  v11 = v0[20];
  v12 = v0[17];
  v13 = v0[18];
  v14 = v0[16];
  v15 = v0[13];
  v16 = v0[14];

  (*(v16 + 8))(v14, v15);
  (*(v13 + 8))(v11, v12);

  v17 = v0[1];

  return v17();
}

unint64_t sub_24E93BD64()
{
  result = qword_27F222240;
  if (!qword_27F222240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222240);
  }

  return result;
}

uint64_t sub_24E93BDB8()
{
  sub_24E93BE64();
  sub_24F924858();
  return v1;
}

id sub_24E93BE08@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  result = [a1 userInterfaceIdiom];
  if (result == 1)
  {
    result = [a1 horizontalSizeClass];
    v5 = result == 2;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

unint64_t sub_24E93BE64()
{
  result = qword_27F222248;
  if (!qword_27F222248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222248);
  }

  return result;
}

uint64_t sub_24E93BEC8()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39B138);
  __swift_project_value_buffer(v4, qword_27F39B138);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

id sub_24E93C01C()
{
  result = [objc_allocWithZone(ASKAtomicBox) init];
  qword_27F39B150 = result;
  return result;
}

uint64_t sub_24E93C050(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();
  v4[3] = sub_24F929638();
  v4[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v4);
  swift_retain_n();
  sub_24F929628();
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_24E93C118(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v104 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v5 - 8);
  v106 = &v79 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v79 - v9;
  v11 = sub_24F92A498();
  v115 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v113 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v12;
  MEMORY[0x28223BE20](v13);
  v117 = &v79 - v14;
  v111 = v15;
  sub_24F928F28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222250, &unk_24F969080);
  sub_24F928F28();
  v16 = v126;
  v17 = type metadata accessor for JSMediaTokenServiceObject();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC12GameStoreKit25JSMediaTokenServiceObject_tokenService] = v16;
  v127.receiver = v18;
  v127.super_class = v17;
  v103 = objc_msgSendSuper2(&v127, sel_init);
  sub_24E69A5C4(0, &qword_27F222258, 0x277CEE498);
  sub_24F928F28();
  v112 = v126;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222260, &unk_24F93B540);
  sub_24F928F28();
  swift_beginAccess();
  v19 = *(*__swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40)) + OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher_virtualMachine);

  v102 = v19;
  v20 = sub_24E93DCE8(v3);

  swift_beginAccess();
  v21 = *__swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v124 = type metadata accessor for JSJetpackFetcher(0);
  v125 = &off_2861EE928;
  *&v123 = v21;
  sub_24E615E00(&v123, &v122);
  v22 = swift_allocObject();
  sub_24E612C80(&v122, v22 + 16);

  __swift_destroy_boxed_opaque_existential_1(&v123);
  swift_endAccess();
  v114 = sub_24F929638();
  v124 = v114;
  v125 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v123);
  sub_24F929628();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222268, &qword_24F969090);
  v24 = a1;
  v25 = sub_24E602068(&qword_27F222270, &qword_27F222268, &qword_24F969090, MEMORY[0x277D224B8]);
  v100 = v23;
  v99 = v25;
  v116 = v20;
  v101 = sub_24F92A9B8();

  __swift_destroy_boxed_opaque_existential_1(&v123);
  type metadata accessor for ASKBagContract(0);
  sub_24F928F28();
  v26 = v123;
  v27 = type metadata accessor for JSResilientDeepLinks();
  v28 = objc_allocWithZone(v27);
  *&v28[OBJC_IVAR____TtC12GameStoreKit20JSResilientDeepLinks_bag] = v26;
  v121.receiver = v28;
  v121.super_class = v27;

  v110 = objc_msgSendSuper2(&v121, &selRef_writeDataForAssetResource_toFile_options_completionHandler_);
  type metadata accessor for Restrictions();
  sub_24F928F28();
  v118 = v123;
  type metadata accessor for GameCenter();
  sub_24F928F28();
  v95 = v123;
  type metadata accessor for AppleSilicon();
  sub_24F928F28();
  v109 = v123;
  type metadata accessor for AdsService();
  sub_24F928F28();
  v29 = v123;
  v30 = type metadata accessor for JSAdsObject();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC12GameStoreKit11JSAdsObject_backingService] = v29;
  v120.receiver = v31;
  v120.super_class = v30;
  v107 = objc_msgSendSuper2(&v120, &selRef_writeDataForAssetResource_toFile_options_completionHandler_);
  type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  sub_24F928F28();
  v92 = v123;
  type metadata accessor for OnDeviceSearchHistoryManager();
  sub_24F928F28();
  v91 = v123;
  type metadata accessor for OnDevicePersonalizationDataManager();
  sub_24F928F28();
  v90 = v123;
  type metadata accessor for AppStoreLocalizerFactory(0);
  sub_24F928F28();
  v32 = v123;
  if (qword_27F210B38 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A3F8();
  (*(v8 + 8))(v10, v7);
  v34 = v123;
  v105 = (v34 >> 64);
  v33 = v34;
  v89 = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222278, &qword_24F9690A8);

  v35 = sub_24F92A9E8();
  v36 = v32;
  v96 = v32;
  v37 = v35;
  v38 = sub_24F92B858();
  v39 = *(v38 - 8);
  v97 = v26;
  v40 = *(v39 + 56);
  v41 = v106;
  v40(v106, 1, 1, v38);
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = &unk_24F9690A0;
  v42[5] = v36;
  v108 = v37;
  v42[6] = v37;

  sub_24E6959D8(0, 0, v41, &unk_24F9690B0, v42);

  v43 = swift_allocObject();
  v43[2] = v36;
  v43[3] = v33;
  v43[4] = v105;

  v44 = sub_24F92A9E8();
  v40(v41, 1, 1, v38);
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = &unk_24F9690C0;
  v45[5] = v43;
  v45[6] = v44;
  v94 = v44;

  sub_24E6959D8(0, 0, v41, &unk_24F9690C8, v45);

  type metadata accessor for MetricsIdStore();
  sub_24F928F28();
  v106 = v123;
  v46 = MEMORY[0x277D224B8];
  v87 = MEMORY[0x277D224B8];
  sub_24E602068(&qword_27F222280, &qword_27F222278, &qword_24F9690A8, MEMORY[0x277D224B8]);
  v93 = sub_24F92A948();
  type metadata accessor for JSTimeoutManager();
  sub_24F928F28();
  v85 = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222288, &qword_24F9690D0);
  sub_24E602068(&qword_27F222290, &qword_27F222288, &qword_24F9690D0, v46);
  v88 = sub_24F92A948();
  v47 = v115;
  v48 = v111;
  (*(v115 + 16))(v113, v117, v111);
  sub_24E615E00(&v126, &v123);
  v79 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v80 = &v98[v79 + 7] & 0xFFFFFFFFFFFFFFF8;
  v84 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
  v98 = ((v84 + 47) & 0xFFFFFFFFFFFFFFF8);
  v83 = (v98 + 15) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
  v86 = v24;
  v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v53 + 23) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  (*(v47 + 32))(v55 + v79, v113, v48);
  *(v55 + v80) = v112;
  sub_24E612C80(&v123, v55 + v84);
  v56 = v95;
  *&v98[v55] = v95;
  *(v55 + v83) = v109;
  *(v55 + v82) = v107;
  *(v55 + v81) = v118;
  *(v55 + v49) = v110;
  v57 = v92;
  *(v55 + v50) = v92;
  v58 = v91;
  *(v55 + v51) = v91;
  v59 = v90;
  *(v55 + v52) = v90;
  v60 = (v55 + v53);
  v61 = v105;
  *v60 = v89;
  v60[1] = v61;
  v62 = v85;
  *(v55 + v54) = v85;
  *(v55 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8)) = v106;
  v63 = swift_allocObject();
  *(v63 + 16) = sub_24E93ECA4;
  *(v63 + 24) = v55;
  v124 = v114;
  v125 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v123);
  v113 = v112;
  v112 = v56;
  v109 = v109;
  v107 = v107;

  v110 = v110;
  v105 = v57;
  v98 = v58;
  v95 = v59;
  v92 = v62;

  sub_24F929628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222298, &qword_24F9690D8);
  sub_24E602068(&qword_27F2222A0, &qword_27F222298, &qword_24F9690D8, v87);
  sub_24F92A9B8();

  __swift_destroy_boxed_opaque_existential_1(&v123);
  sub_24E69A5C4(0, &qword_27F2222A8, 0x277CEE620);
  sub_24F928FD8();

  sub_24F92A758();
  v64 = v122;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2222B0, &qword_24F9690E0);
  sub_24F92A758();
  v65 = type metadata accessor for JSCampaignAttribution();
  v66 = objc_allocWithZone(v65);
  *&v66[OBJC_IVAR____TtC12GameStoreKit21JSCampaignAttribution_process] = v64;
  sub_24E615E00(&v123, &v66[OBJC_IVAR____TtC12GameStoreKit21JSCampaignAttribution_accounts]);
  v119.receiver = v66;
  v119.super_class = v65;
  v67 = v64;
  v68 = objc_msgSendSuper2(&v119, sel_init);

  __swift_destroy_boxed_opaque_existential_1(&v123);
  sub_24F92A948();
  v69 = swift_allocObject();
  v70 = v102;
  v69[2] = v102;
  v69[3] = v68;
  v71 = v103;
  v72 = v104;
  v69[4] = v103;
  v69[5] = v72;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_24E93EEB4;
  *(v73 + 24) = v69;
  v124 = v114;
  v125 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v123);
  v74 = v70;
  v75 = v68;
  v76 = v71;

  sub_24F929628();
  v77 = sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1(&v126);
  (*(v115 + 8))(v117, v111);
  __swift_destroy_boxed_opaque_existential_1(&v123);
  return v77;
}

uint64_t sub_24E93D150(uint64_t a1)
{
  swift_beginAccess();
  sub_24E615E00(a1 + 16, v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v2 = off_2861EE940[0];
  type metadata accessor for JSJetpackFetcher(0);
  v3 = v2();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_24E93D1E8(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2222D0, &qword_24F9690F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2222D8, &qword_24F969100);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24ECF5F48(v10);
  sub_24ECF6718(v6);
  sub_24E602068(&qword_27F2222E0, &qword_27F2222D8, &qword_24F969100, MEMORY[0x277D21D90]);
  v11 = sub_24F928A28();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v14[1] = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2222E8, &qword_24F969108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2222F0, &unk_24F969110);
  sub_24E602068(&qword_27F2222F8, &qword_27F2222E8, &qword_24F969108, MEMORY[0x277D21E68]);
  sub_24F928A18();

  v12 = sub_24F929088();

  return v12;
}

uint64_t sub_24E93D494(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E614970;

  return AppStoreLocalizerFactory.localizer(forLanguage:)(a1, 0, 0);
}

uint64_t sub_24E93D53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24E6541E4;

  return AppStoreLocalizerFactory.localizer(forLanguage:)(a1, a3, a4);
}

uint64_t sub_24E93D5F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  v81 = a5;
  v82 = a8;
  v75 = a7;
  v69 = a6;
  v79 = sub_24F92A498();
  v74 = *(v79 - 8);
  v22 = *(v74 + 64);
  MEMORY[0x28223BE20](v79);
  v80 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v60 - v25;
  sub_24E615E00(a1, v91);
  sub_24E615E00(a2, &v92);
  sub_24E93EEF8(v91, &v86);
  sub_24E612C80(&v86, v90);
  __swift_destroy_boxed_opaque_existential_1(v89);
  sub_24E93EEF8(v91, &v86);
  sub_24E612C80(v89, v85);
  __swift_destroy_boxed_opaque_existential_1(&v86);
  v27 = a3[3];
  v28 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v27);
  v65 = (*(v28 + 24))(v27, v28);
  if (qword_27F210838 != -1)
  {
    swift_once();
  }

  v78 = a18;
  v73 = a17;
  v76 = a16;
  v63 = a15;
  v77 = a14;
  v72 = a13;
  v71 = a12;
  v70 = a11;
  v68 = a10;
  v67 = a9;
  sub_24F92A448();
  v29 = sub_24F92A418();
  v30 = *(v24 + 8);
  v30(v26, v23);
  if (qword_27F210830 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  v66 = sub_24F92A418();
  v30(v26, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2222C0, &qword_24F9690F0);
  sub_24E602068(&qword_27F2222C8, &qword_27F2222C0, &qword_24F9690F0, MEMORY[0x277D224B8]);
  v64 = sub_24F92A948();
  sub_24E615E00(v90, &v86);
  sub_24E615E00(v85, v84);
  sub_24E615E00(v69, v83);
  v31 = v74;
  (*(v74 + 16))(v80, a4, v79);
  v60 = (*(v31 + 80) + 176) & ~*(v31 + 80);
  v62 = (v22 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v69 = v29;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  sub_24E612C80(&v86, (v38 + 16));
  sub_24E612C80(v84, (v38 + 56));
  v39 = v76;
  *(v38 + 12) = v63;
  *(v38 + 13) = v39;
  *(v38 + 14) = v81;
  sub_24E612C80(v83, (v38 + 120));
  v40 = v78;
  *(v38 + 20) = v77;
  *(v38 + 21) = v40;
  (*(v31 + 32))(&v38[v60], v80, v79);
  *&v38[v62] = v65;
  v41 = v75;
  *&v38[v61] = v75;
  *&v38[v32] = v82;
  v42 = v67;
  *&v38[v33] = v67;
  *&v38[v34] = v68;
  v43 = v70;
  *&v38[v35] = v70;
  v44 = v71;
  *&v38[v36] = v71;
  v46 = v72;
  v45 = v73;
  *&v38[v37] = v72;
  *&v38[(v37 + 15) & 0xFFFFFFFFFFFFFFF8] = v45;
  v47 = v45;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_24E93F128;
  *(v48 + 24) = v38;
  v87 = sub_24F929638();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v86);

  v49 = v81;
  v50 = v77;

  v51 = v41;
  v52 = v82;
  v53 = v42;

  v54 = v43;
  v55 = v44;
  v56 = v46;
  v57 = v47;
  sub_24F929628();
  type metadata accessor for ASKGlobal();
  v58 = sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1(v85);
  __swift_destroy_boxed_opaque_existential_1(v90);
  sub_24E601704(v91, &qword_27F2222B8, &qword_24F9690E8);
  __swift_destroy_boxed_opaque_existential_1(&v86);
  return v58;
}

double sub_24E93DC08@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  sub_24E615E00(a2, (a7 + 4));
  *a7 = a3;
  a7[1] = a1;
  a7[2] = a4;
  a7[3] = a5;
  a7[9] = a6;
  v13 = a3;
  v14 = a1;
  v15 = a4;
  v16 = a5;

  return result;
}

uint64_t sub_24E93DC8C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_24E93DCE8(uint64_t a1)
{
  v2 = sub_24F927D88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927DC8();
  v45 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v44 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_24F927DE8();
  v43 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v34 - v11;
  v12 = sub_24F927D98();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = qword_27F20FFE8;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = [qword_27F39B150 value];
  if (v17)
  {
    v18 = v17;
    v38 = v5;
    v39 = v6;
    v40 = v3;
    v41 = v2;
    v42 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222288, &qword_24F9690D0);
    v37 = sub_24F92A9E8();
    sub_24EC158E4();
    v20 = v19;
    v36 = v18;
    if (qword_27F20FFE0 != -1)
    {
      swift_once();
    }

    v21 = sub_24F92AAE8();
    __swift_project_value_buffer(v21, qword_27F39B138);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F9479A0;
    sub_24F9283A8();
    v49 = MEMORY[0x277D839F8];
    aBlock[0] = v20;
    sub_24F928438();
    sub_24E601704(aBlock, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    sub_24F92A588();

    sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
    (*(v13 + 104))(v15, *MEMORY[0x277D851C8], v12);
    v35 = sub_24F92BF48();
    (*(v13 + 8))(v15, v12);
    sub_24F927DD8();
    sub_24F927E58();
    v43 = *(v43 + 8);
    (v43)(v9, v47);
    v22 = swift_allocObject();
    v23 = v42;
    v22[2] = sub_24E93F2E4;
    v22[3] = v23;
    v24 = v37;
    v22[4] = v37;
    v50 = sub_24E93F32C;
    v51 = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    v49 = &block_descriptor_27;
    v25 = _Block_copy(aBlock);

    v26 = v44;
    sub_24F927DA8();
    v52 = MEMORY[0x277D84F90];
    sub_24E858250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
    v27 = v38;
    v28 = v41;
    sub_24F92C6A8();
    v29 = v46;
    v30 = v35;
    MEMORY[0x253051820](v46, v26, v27, v25);
    _Block_release(v25);

    (*(v40 + 8))(v27, v28);
    (*(v45 + 8))(v26, v39);
    (v43)(v29, v47);

    return v24;
  }

  else
  {
    swift_beginAccess();
    sub_24E615E00(a1 + 16, aBlock);
    __swift_project_boxed_opaque_existential_1(aBlock, v49);
    v32 = off_2861EE940[0];
    type metadata accessor for JSJetpackFetcher(0);
    v33 = v32();
    __swift_destroy_boxed_opaque_existential_1(aBlock);

    return v33;
  }
}

double sub_24E93E448(uint64_t a1)
{
  if (qword_27F20FFE0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39B138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v2 = sub_24F91F268();
  v3 = AMSLogableError();

  v4 = sub_24F92B0D8();
  v6 = v5;

  v12 = MEMORY[0x277D837D0];
  v10 = v4;
  v11 = v6;
  sub_24F928438();
  sub_24E601704(&v10, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();

  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  if (qword_27F2104F8 != -1)
  {
    swift_once();
  }

  [qword_27F22C4F0 setValue_];
  if (qword_27F20FFE8 != -1)
  {
    swift_once();
  }

  v7 = qword_27F39B150;
  if (![qword_27F39B150 value])
  {
    type metadata accessor for JitterBackoff();
    v8 = swift_allocObject();
    *(v8 + 32) = 0;
    *(v8 + 16) = xmmword_24F969030;
    [v7 setValue_];
  }

  return result;
}

uint64_t sub_24E93E728()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_24E93E768(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E614970;

  return sub_24E93D494(a1);
}

uint64_t sub_24E93E804(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E6541E4;

  return sub_24E694B6C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24E93E8E0()
{

  return swift_deallocObject();
}

uint64_t sub_24E93E920(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24E93D53C(a1, v4, v5, v6);
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E93EA20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24E694B6C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24E93EAFC()
{
  v1 = sub_24F92A498();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + v5));

  return swift_deallocObject();
}

uint64_t sub_24E93ECA4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(sub_24F92A498() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 47) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_24E93D5F8(a1, a2, a3, v3 + v8, *(v3 + v9), v3 + v10, *(v3 + v11), *(v3 + v12), *(v3 + v13), *(v3 + v14), *(v3 + v15), *(v3 + v16), *(v3 + v17), *(v3 + v18), *(v3 + v19), *(v3 + v19 + 8), *(v3 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v19 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_24E93EDFC()
{

  return swift_deallocObject();
}

uint64_t sub_24E93EE64()
{

  return swift_deallocObject();
}

uint64_t sub_24E93EEF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2222B8, &qword_24F9690E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E93EF68()
{
  v1 = sub_24F92A498();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 176) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  __swift_destroy_boxed_opaque_existential_1((v0 + 120));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_24E93F128(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(sub_24F92A498() - 8);
  v10 = (*(v9 + 80) + 176) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_24EA26EE0(a1, a2, a3, a4, (v4 + 16), (v4 + 56), *(v4 + 96), *(v4 + 104), *(v4 + 112), (v4 + 120), *(v4 + 160), *(v4 + 168), (v4 + v10), *(v4 + v11), *(v4 + v12), *(v4 + v13), *(v4 + v14), *(v4 + v15), *(v4 + v16), *(v4 + v17), *(v4 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_24E93F27C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  return result;
}

uint64_t sub_24E93F2EC()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_24E93F37C(uint64_t a1)
{
  v2 = sub_24F928AE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_isSensitive);
  result = [objc_opt_self() defaultWorkspace];
  v8 = result;
  if (v6 == 1)
  {
    if (result)
    {
      v9 = &selRef_openSensitiveURL_withOptions_;
LABEL_6:
      v10 = sub_24F91F3B8();
      [v8 *v9];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
      (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
      return sub_24F92A988();
    }

    __break(1u);
  }

  else if (result)
  {
    v9 = &selRef_openURL_withOptions_;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t sub_24E93F504()
{
  result = qword_27F222318[0];
  if (!qword_27F222318[0])
  {
    type metadata accessor for ExternalUrlAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F222318);
  }

  return result;
}

uint64_t sub_24E93F588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E93F614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for GamesArcadeFooterView(uint64_t a1)
{
  result = qword_27F2223A0;
  if (!qword_27F2223A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E93F6DC(uint64_t a1)
{
  sub_24E6CAF48(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24E93F7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v183 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2223D0, &qword_24F969270);
  v173 = *(v3 - 8);
  v174 = v3;
  MEMORY[0x28223BE20](v3);
  v172 = &v149 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2223D8, &qword_24F969278);
  v166 = *(v5 - 8);
  v167 = v5;
  MEMORY[0x28223BE20](v5);
  v164 = &v149 - v6;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2223E0, &qword_24F969280);
  MEMORY[0x28223BE20](v165);
  v168 = &v149 - v7;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2223E8, &qword_24F969288);
  MEMORY[0x28223BE20](v169);
  v171 = &v149 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2223F0, &qword_24F969290);
  v185 = *(v9 - 8);
  v186 = v9;
  MEMORY[0x28223BE20](v9);
  v170 = &v149 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2223F8, &qword_24F969298);
  MEMORY[0x28223BE20](v11 - 8);
  v187 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v189 = &v149 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222400, &qword_24F9692A0);
  v162 = *(v15 - 8);
  v163 = v15;
  MEMORY[0x28223BE20](v15);
  v159 = &v149 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D0A8, &qword_24F958848);
  MEMORY[0x28223BE20](v17);
  v19 = (&v149 - v18);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D158, &qword_24F9589C0);
  MEMORY[0x28223BE20](v153);
  v21 = &v149 - v20;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222408, &qword_24F9692A8);
  MEMORY[0x28223BE20](v155);
  v154 = &v149 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222410, &qword_24F9692B0);
  v160 = *(v23 - 8);
  v161 = v23;
  MEMORY[0x28223BE20](v23);
  v158 = &v149 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222418, &qword_24F9692B8);
  v175 = *(v25 - 8);
  v176 = v25;
  MEMORY[0x28223BE20](v25);
  v157 = &v149 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v156 = &v149 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222420, &qword_24F9692C0);
  MEMORY[0x28223BE20](v29 - 8);
  v184 = &v149 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v193 = &v149 - v32;
  v33 = sub_24F923E98();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v149 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v149 - v38;
  v188 = *(a1 + 16);
  v192 = *(v188 + 32);
  if (v192)
  {
    v40 = *(a1 + 32);

    v191 = v40;

    LOBYTE(v40) = sub_24F925828();
    sub_24F923318();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    LOBYTE(v218) = 0;
    v182 = 0x4054000000000000;
    *&v190 = 1;
    *(&v190 + 1) = v40;
  }

  else
  {
    v182 = 0;
    v191 = 0;
    v190 = 0uLL;
    v42 = 0;
    v44 = 0;
    v46 = 0;
    v48 = 0;
  }

  sub_24F769788(v39);
  (*(v34 + 104))(v36, *MEMORY[0x277CDF988], v33);
  v177 = sub_24F923E88();
  v49 = *(v34 + 8);
  v49(v36, v33);
  v49(v39, v33);
  v50 = sub_24F927618();
  v180 = v51;
  v181 = v50;
  v179 = sub_24F925828();
  sub_24F923318();
  v55 = v52;
  v56 = v53;
  v57 = v54;
  v178 = v58;
  v210 = 0;
  v59 = v188;
  v60 = *(v188 + 16);
  if (!v60)
  {
    v112 = 1;
    v62 = v193;
LABEL_11:
    v108 = v176;
    goto LABEL_12;
  }

  v61 = *(v60 + 24);
  v62 = v193;
  if (!v61)
  {
    v112 = 1;
    goto LABEL_11;
  }

  v150 = v54;
  v151 = v53;
  v152 = v52;
  v63 = *(v60 + 16);
  v19[3] = type metadata accessor for Action(0);
  v19[4] = sub_24E941660(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  *v19 = v60;
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  *(v64 + 24) = v61;
  v65 = *(v17 + 44);
  *(v19 + v65) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
  swift_storeEnumTagMultiPayload();
  v19[5] = sub_24E941364;
  v19[6] = v64;
  v19[7] = sub_24E678F24;
  v19[8] = 0;
  *(&v219 + 1) = sub_24F9271D8();
  *&v220 = sub_24E941660(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v218);
  v67 = *MEMORY[0x277CE0118];
  v68 = sub_24F924B38();
  (*(*(v68 - 8) + 104))(boxed_opaque_existential_1, v67, v68);
  sub_24E60169C(&v218, v21, &qword_27F21D140, &unk_24F958980);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D148, &unk_24F9A6F30);
  sub_24E60169C(v19, &v21[v69[9]], &qword_27F21D0A8, &qword_24F958848);
  v70 = &v21[v69[10]];
  swift_retain_n();

  *v70 = sub_24F923398() & 1;
  *(v70 + 1) = v71;
  v70[16] = v72 & 1;
  v73 = &v21[v69[11]];
  *v73 = swift_getKeyPath();
  v73[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v74 = qword_27F24E488;
  v75 = sub_24F923398();
  v77 = v76;
  v79 = v78;
  v80 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D150, &qword_24F9589B8) + 36)];
  *v80 = v74;
  v80[8] = v75 & 1;
  *(v80 + 2) = v77;
  v80[24] = v79 & 1;
  LOBYTE(v74) = sub_24F923398();
  v82 = v81;
  LOBYTE(v77) = v83;
  sub_24E601704(&v218, &qword_27F21D140, &unk_24F958980);
  sub_24E601704(v19, &qword_27F21D0A8, &qword_24F958848);
  v84 = &v21[*(v153 + 36)];
  *v84 = v74 & 1;
  *(v84 + 1) = v82;
  v84[16] = v77 & 1;
  sub_24F927618();
  sub_24F9242E8();
  v85 = v154;
  sub_24E6009C8(v21, v154, &qword_27F21D158, &qword_24F9589C0);
  v86 = v155;
  v87 = (v85 + *(v155 + 36));
  v88 = v216;
  v87[4] = v215;
  v87[5] = v88;
  v87[6] = v217;
  v89 = v212;
  *v87 = v211;
  v87[1] = v89;
  v90 = v214;
  v87[2] = v213;
  v87[3] = v90;
  v91 = sub_24E94137C();
  v92 = v159;
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222488, &unk_24F9693D0);
  *&v218 = v86;
  *(&v218 + 1) = v91;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v94 = sub_24E8F20E4();
  v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222490, &unk_24F9A6F20);
  v96 = sub_24E94154C();
  v97 = v163;
  *&v218 = v163;
  *(&v218 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
  *&v219 = v95;
  *(&v219 + 1) = OpaqueTypeConformance2;
  *&v220 = v94;
  *(&v220 + 1) = v96;
  swift_getOpaqueTypeConformance2();
  v98 = v158;
  sub_24F926B08();
  (*(v162 + 8))(v92, v97);
  sub_24E601704(v85, &qword_27F222408, &qword_24F9692A8);
  LOBYTE(v74) = sub_24F925828();
  sub_24F923318();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;

  v107 = v157;
  (*(v160 + 32))(v157, v98, v161);
  v108 = v176;
  v109 = &v107[*(v176 + 36)];
  *v109 = v74;
  *(v109 + 1) = v100;
  *(v109 + 2) = v102;
  *(v109 + 3) = v104;
  *(v109 + 4) = v106;
  v109[40] = 0;
  v110 = v107;
  v111 = v156;
  sub_24E6009C8(v110, v156, &qword_27F222418, &qword_24F9692B8);
  v62 = v193;
  sub_24E6009C8(v111, v193, &qword_27F222418, &qword_24F9692B8);
  v112 = 0;
  v56 = v151;
  v55 = v152;
  v57 = v150;
  v59 = v188;
LABEL_12:
  v113 = 1;
  (*(v175 + 56))(v62, v112, 1, v108);
  if (*(v59 + 24))
  {
    *&v218 = *(v59 + 24);
    sub_24E66D28C();

    v114 = v164;
    sub_24F921D38();
    sub_24F927618();
    sub_24F9242E8();
    v115 = v168;
    (*(v166 + 32))(v168, v114, v167);
    v116 = (v115 + *(v165 + 36));
    v117 = v223;
    v116[4] = v222;
    v116[5] = v117;
    v116[6] = v224;
    v118 = v219;
    *v116 = v218;
    v116[1] = v118;
    v119 = v221;
    v116[2] = v220;
    v116[3] = v119;
    KeyPath = swift_getKeyPath();
    v121 = swift_getKeyPath();
    v122 = v169;
    v123 = v171;
    v124 = &v171[*(v169 + 36)];
    *v124 = 0;
    *(v124 + 1) = 0;
    v124[16] = 1;
    *(v124 + 3) = KeyPath;
    v124[32] = 0;
    *(v124 + 5) = v121;
    v125 = type metadata accessor for PageMarginsViewModifier(0);
    *(v124 + 7) = 0;
    *(v124 + 8) = 0;
    *(v124 + 6) = 0;
    v124[72] = 0;
    v126 = *(v125 + 36);
    *&v124[v126] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
    swift_storeEnumTagMultiPayload();
    sub_24E6009C8(v115, v123, &qword_27F2223E0, &qword_24F969280);
    v127 = sub_24E9410C4();
    v128 = v172;
    sub_24F9262E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222450, &qword_24F969360);
    v200 = v122;
    v201 = v127;
    v129 = swift_getOpaqueTypeConformance2();
    v130 = sub_24E8F20E4();
    v131 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222458, &unk_24F9A6F40);
    v132 = sub_24E941238();
    v133 = v174;
    v200 = v174;
    v201 = &type metadata for IsDebugFocusOverlayEnabled;
    v202 = v131;
    v203 = v129;
    *&v204 = v130;
    *(&v204 + 1) = v132;
    swift_getOpaqueTypeConformance2();
    v134 = v170;
    sub_24F926B08();

    (*(v173 + 8))(v128, v133);
    v62 = v193;
    sub_24E601704(v123, &qword_27F2223E8, &qword_24F969288);
    v136 = v185;
    v135 = v186;
    (*(v185 + 32))(v189, v134, v186);
    v113 = 0;
  }

  else
  {
    v136 = v185;
    v135 = v186;
  }

  v137 = v189;
  (*(v136 + 56))(v189, v113, 1, v135);
  if (v177)
  {
    v138 = 14.0;
  }

  else
  {
    v138 = 24.0;
  }

  v139 = v184;
  sub_24E60169C(v62, v184, &qword_27F222420, &qword_24F9692C0);
  v140 = v187;
  sub_24E60169C(v137, v187, &qword_27F2223F8, &qword_24F969298);
  v142 = v182;
  v141 = v183;
  *&v194 = v182;
  *(&v194 + 1) = v182;
  *&v195 = v192;
  *(&v195 + 1) = v191;
  v196 = v190;
  *&v197 = v42;
  *(&v197 + 1) = v44;
  *&v198 = v46;
  *(&v198 + 1) = v48;
  v199 = 0;
  *(v183 + 80) = 0;
  v143 = v197;
  *(v141 + 32) = v196;
  *(v141 + 48) = v143;
  *(v141 + 64) = v198;
  v144 = v195;
  *v141 = v194;
  *(v141 + 16) = v144;
  *(v141 + 88) = v138;
  v145 = v180;
  *(v141 + 96) = v181;
  *(v141 + 104) = v145;
  *(v141 + 112) = v179;
  *(v141 + 120) = v55;
  *(v141 + 128) = v56;
  v146 = v178;
  *(v141 + 136) = v57;
  *(v141 + 144) = v146;
  *(v141 + 152) = 0;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222428, &qword_24F9692C8);
  sub_24E60169C(v139, v141 + *(v147 + 64), &qword_27F222420, &qword_24F9692C0);
  sub_24E60169C(v140, v141 + *(v147 + 80), &qword_27F2223F8, &qword_24F969298);
  sub_24E940FD4(&v194, &v200);
  sub_24E601704(v137, &qword_27F2223F8, &qword_24F969298);
  sub_24E601704(v193, &qword_27F222420, &qword_24F9692C0);
  sub_24E601704(v140, &qword_27F2223F8, &qword_24F969298);
  sub_24E601704(v139, &qword_27F222420, &qword_24F9692C0);
  v200 = v142;
  v201 = v142;
  v202 = v192;
  v203 = v191;
  v204 = v190;
  v205 = v42;
  v206 = v44;
  v207 = v46;
  v208 = v48;
  v209 = 0;
  return sub_24E941044(&v200);
}

uint64_t sub_24E940A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v5 = sub_24F9248C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CapsuleButtonContent(0);
  MEMORY[0x28223BE20](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CapsuleButtonContent.Symbol(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  v13(&v11[v9[6]], 1, 1, v12);
  *&v11[v9[9]] = 0x4010000000000000;
  v14 = v9[10];
  *&v11[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
  swift_storeEnumTagMultiPayload();
  v15 = v9[11];
  *&v11[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v16 = v9[12];
  *&v11[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398, &qword_24F96B8D0);
  swift_storeEnumTagMultiPayload();
  v17 = &v11[v9[13]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v9[14];
  *&v11[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8, &unk_24F96B930);
  swift_storeEnumTagMultiPayload();
  v19 = &v11[v9[5]];
  *v19 = a1;
  *(v19 + 1) = a2;
  v11[v9[7]] = 5;
  v20 = &v11[v9[8]];
  *v20 = xmmword_24F943570;
  *(v20 + 2) = 0;

  sub_24F9248B8();
  sub_24E941660(&qword_27F21D160, type metadata accessor for CapsuleButtonContent, &unk_24F96B9C8);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v6 + 8))(v8, v5);
  return sub_24E9416A8(v11);
}

uint64_t sub_24E940D60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2223C0, &qword_24F969260);
  sub_24E93F7C8(v3, a2 + *(v4 + 44));
  v5 = sub_24F925818();
  sub_24F923318();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2223C8, &qword_24F969268);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_24E940E1C(uint64_t a1)
{
  MEMORY[0x28223BE20](v1);
  sub_24E941704(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24E941660(&qword_27F215CD8, type metadata accessor for GamesArcadeFooterView, &unk_24F9691F8);
  return sub_24F9218E8();
}

uint64_t sub_24E940FD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222430, &qword_24F9692D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E941044(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222430, &qword_24F9692D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E9410C4()
{
  result = qword_27F222438;
  if (!qword_27F222438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2223E8, &qword_24F969288);
    sub_24E941180();
    sub_24E941660(&qword_27F222448, type metadata accessor for PageMarginsViewModifier, &unk_24F9F5C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222438);
  }

  return result;
}

unint64_t sub_24E941180()
{
  result = qword_27F222440;
  if (!qword_27F222440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2223E0, &qword_24F969280);
    sub_24E66D28C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222440);
  }

  return result;
}

unint64_t sub_24E941238()
{
  result = qword_27F222460;
  if (!qword_27F222460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222458, &unk_24F9A6F40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2223E8, &qword_24F969288);
    sub_24E9410C4();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222460);
  }

  return result;
}

uint64_t sub_24E94132C()
{

  return swift_deallocObject();
}

unint64_t sub_24E94137C()
{
  result = qword_27F222468;
  if (!qword_27F222468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222408, &qword_24F9692A8);
    sub_24E941408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222468);
  }

  return result;
}

unint64_t sub_24E941408()
{
  result = qword_27F222470;
  if (!qword_27F222470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D158, &qword_24F9589C0);
    sub_24E941494();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222470);
  }

  return result;
}

unint64_t sub_24E941494()
{
  result = qword_27F222478;
  if (!qword_27F222478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D150, &qword_24F9589B8);
    sub_24E602068(&qword_27F222480, &qword_27F21D148, &unk_24F9A6F30, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222478);
  }

  return result;
}

unint64_t sub_24E94154C()
{
  result = qword_27F222498;
  if (!qword_27F222498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222490, &unk_24F9A6F20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222408, &qword_24F9692A8);
    sub_24E94137C();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222498);
  }

  return result;
}

uint64_t sub_24E941660(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E9416A8(uint64_t a1)
{
  v2 = type metadata accessor for CapsuleButtonContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E941704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GamesArcadeFooterView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E94176C()
{
  result = qword_27F2224A0;
  if (!qword_27F2224A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2223C8, &qword_24F969268);
    sub_24E602068(&qword_27F2224A8, &qword_27F2224B0, &unk_24F9694B0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2224A0);
  }

  return result;
}

uint64_t UniversalFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UniversalFieldsProvider.category.setter(uint64_t a1)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_24E941914()
{
  v0 = sub_24F92A538();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92A528();
  v5 = MEMORY[0x25304FE60](v4);
  v7 = v6;
  result = (*(v1 + 8))(v3, v0);
  qword_27F2224B8 = *&v5;
  qword_27F2224C0 = v7;
  return result;
}

uint64_t sub_24E9419F4()
{
  v0 = sub_24F92A538();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92A528();
  v5 = MEMORY[0x25304FE80](v4);
  result = (*(v1 + 8))(v3, v0);
  qword_27F2224C8 = *&v5;
  return result;
}

uint64_t UniversalFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0, &unk_24F9694C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - v4;
  v6 = [objc_allocWithZone(ASKCapacityData) init];
  v7 = [v6 totalSystemCapacity];
  v8 = sub_24E9421D0();
  v37 = v8;
  v35 = v7;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_24F929A28();
  if (!v1)
  {
    v38 = v5;
    __swift_destroy_boxed_opaque_existential_1(&v35);
    v9 = [v6 totalSystemAvailable];
    v37 = v8;
    v35 = v9;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    v10 = [v6 totalDataCapacity];
    v37 = v8;
    v35 = v10;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    v11 = [v6 totalDataAvailable];
    v37 = v8;
    v35 = v11;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    v13 = ASKMetricsGetNetworkConnectionTypeString();
    if (v13)
    {
      v14 = v13;
      v15 = sub_24F92B0D8();
      v17 = v16;

      v37 = MEMORY[0x277D837D0];
      v35 = v15;
      v36 = v17;
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      sub_24F929A28();
      __swift_destroy_boxed_opaque_existential_1(&v35);
    }

    v18 = [v6 totalDiskCapacity];
    v37 = v8;
    v35 = v18;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    v19 = ASKMetricsGetCookieString();
    v20 = sub_24F92B0D8();
    v22 = v21;

    v23 = MEMORY[0x277D837D0];
    v37 = MEMORY[0x277D837D0];
    v35 = v20;
    v36 = v22;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    sub_24F92AB98();
    sub_24F92AB88();
    v24 = v38;
    MEMORY[0x2530504F0]();

    v25 = sub_24F92AB18();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      sub_24E94221C(v24);
    }

    else
    {
      v27 = sub_24F92AB08();
      (*(v26 + 8))(v24, v25);
      v28 = [v27 ams_DSID];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 stringValue];
        v31 = sub_24F92B0D8();
        v33 = v32;

        v37 = v23;
        v35 = v31;
        v36 = v33;
        __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
        sub_24F929A28();

        __swift_destroy_boxed_opaque_existential_1(&v35);
      }

      else
      {
      }
    }

    if (qword_27F20FFF8 != -1)
    {
      swift_once();
    }

    v34 = MEMORY[0x277D85048];
    v37 = MEMORY[0x277D85048];
    v35 = qword_27F2224C8;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    if (qword_27F20FFF0 != -1)
    {
      swift_once();
    }

    v37 = v34;
    v35 = qword_27F2224C0;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    v37 = v34;
    v35 = qword_27F2224B8;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
  }

  return __swift_destroy_boxed_opaque_existential_1(&v35);
}

unint64_t sub_24E9421D0()
{
  result = qword_27F22BD50;
  if (!qword_27F22BD50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F22BD50);
  }

  return result;
}

uint64_t sub_24E94221C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0, &unk_24F9694C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s12GameStoreKit29MetricsActivityFieldsProviderV8category9JetEngine0dfG8CategoryOvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24E942318(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E942398(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for UniversalFieldsProvider(uint64_t a1)
{
  result = qword_27F2224D0;
  if (!qword_27F2224D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E942454(uint64_t a1)
{
  result = sub_24F92A2D8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = a1;
  *(a3 + 9) = a2;
  result = 4.0;
  *(a3 + 16) = xmmword_24F969540;
  return result;
}

double InAppPurchaseIconLayout.Metrics.overallSize.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (*v0 >= 30.0)
  {
    v5 = floor(v1 / 30.0) * v3;
    v6 = v1 + v2 * v5 + v2 * v5;
    result = v6;
    if ((*(v0 + 8) & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v6 = v1 + v2 * v3 + v2 * v3;
  result = v6;
  if (*(v0 + 8))
  {
LABEL_5:
    sub_24F92C238();
    return v6;
  }

  return result;
}

__n128 InAppPurchaseIconLayout.init(metrics:artworkView:artworkContainingView:backgroundView:plusView:tileArtworkView:tileArtworkBackgroundView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *(a1 + 8);
  v15 = *(a1 + 9);
  *(a8 + 240) = *a1;
  *(a8 + 248) = v14;
  *(a8 + 249) = v15;
  *(a8 + 256) = *(a1 + 16);
  sub_24E612E28(a2, a8);
  sub_24E612E28(a3, a8 + 40);
  sub_24E612E28(a4, a8 + 80);
  sub_24E612E28(a5, a8 + 120);
  sub_24E612E28(a6, a8 + 160);
  result = *a7;
  v17 = *(a7 + 16);
  *(a8 + 200) = *a7;
  *(a8 + 216) = v17;
  *(a8 + 232) = *(a7 + 32);
  return result;
}

double InAppPurchaseIconLayout.Metrics.mainIconBorderWidth.getter()
{
  v1 = v0[3];
  if (*v0 >= 30.0)
  {
    v1 = v1 * floor(*v0 / 30.0);
  }

  return v0[2] * v1;
}

double InAppPurchaseIconLayout.Metrics.tileOffset.getter()
{
  v1 = v0[3];
  if (*v0 >= 30.0)
  {
    v1 = v1 * floor(*v0 / 30.0);
  }

  return v1 + v1;
}

uint64_t sub_24E94275C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229780, &unk_24F965BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double InAppPurchaseIconLayout.Metrics.tileIconWidth.getter()
{
  v1 = v0[3];
  if (*v0 >= 30.0)
  {
    v1 = v1 * floor(*v0 / 30.0);
  }

  return v1 * 12.0;
}

BOOL InAppPurchaseIconLayout.Metrics.displaysPlus.getter()
{
  v1 = v0[3];
  if (*v0 >= 30.0)
  {
    v1 = v1 * floor(*v0 / 30.0);
  }

  return v1 > 1.0;
}

double InAppPurchaseIconLayout.Metrics.plusLineWidth.getter()
{
  result = v0[3];
  if (*v0 >= 30.0)
  {
    result = result * floor(*v0 / 30.0);
  }

  if (result <= 1.0)
  {
    return 1.0;
  }

  return result;
}

double InAppPurchaseIconLayout.Metrics.plusOverallWidth.getter()
{
  v1 = v0[3];
  if (*v0 >= 30.0)
  {
    v1 = v1 * floor(*v0 / 30.0);
  }

  if (v1 <= 1.0)
  {
    v1 = 1.0;
  }

  return v1 * 4.0;
}

__n128 InAppPurchaseIconLayout.metrics.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[15].n128_u8[8];
  v3 = v1[15].n128_u8[9];
  a1->n128_u64[0] = v1[15].n128_u64[0];
  a1->n128_u8[8] = v2;
  a1->n128_u8[9] = v3;
  result = v1[16];
  a1[1] = result;
  return result;
}

uint64_t InAppPurchaseIconLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = *(v4 + 248);
  MinX = CGRectGetMinX(*&a1);
  if (v10 == 1)
  {
    v12 = *(v5 + 240);
    v13 = v12 < 30.0;
    v14 = *(v5 + 264) * floor(v12 / 30.0);
    if (v13)
    {
      v14 = *(v5 + 264);
    }

    MinX = MinX + v14 + v14;
  }

  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  Width = CGRectGetWidth(v37);
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  Height = CGRectGetHeight(v38);
  if (Height >= Width)
  {
    v17 = Width;
  }

  else
  {
    v17 = Height;
  }

  v18 = *(v5 + 249);
  v33 = v17;
  if ((v18 & 1) == 0)
  {
    v19 = *(v5 + 240);
    v20 = *(v5 + 264);
    if (v19 >= 30.0)
    {
      v20 = v20 * floor(v19 / 30.0);
    }

    v17 = v19 + *(v5 + 256) * v20 + *(v5 + 256) * v20;
  }

  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  MinY = CGRectGetMinY(v39);
  __swift_project_boxed_opaque_existential_1((v5 + 80), *(v5 + 104));
  v34 = MinY;
  sub_24F922228();
  if (v18)
  {
    v22 = *(v5 + 264);
    v23 = *(v5 + 256) * (floor(v33 / 30.0) * v22);
  }

  else
  {
    v24 = *(v5 + 240);
    v22 = *(v5 + 264);
    v25 = v22;
    if (v24 >= 30.0)
    {
      v25 = v22 * floor(v24 / 30.0);
    }

    v23 = *(v5 + 256) * v25;
  }

  v26 = v17 - (v23 + v23);
  v40.origin.x = MinX;
  v40.origin.y = v34;
  v40.size.width = v17;
  v40.size.height = v17;
  v27 = v23 + CGRectGetMinX(v40);
  v41.origin.x = MinX;
  v41.origin.y = v34;
  v41.size.width = v17;
  v41.size.height = v17;
  v28 = v23 + CGRectGetMinY(v41);
  __swift_project_boxed_opaque_existential_1((v5 + 40), *(v5 + 64));
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v5, *(v5 + 24));
  v42.origin.x = v27;
  v42.origin.y = v28;
  v42.size.width = v26;
  v42.size.height = v26;
  CGRectGetWidth(v42);
  v43.origin.x = v27;
  v43.origin.y = v28;
  v43.size.width = v26;
  v43.size.height = v26;
  CGRectGetHeight(v43);
  sub_24F922228();
  v29 = *(v5 + 240);
  v30 = v22 * floor(v29 / 30.0);
  if (v29 >= 30.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = v22;
  }

  if (v31 > 1.0)
  {
    v44.origin.x = MinX;
    v44.origin.y = v34;
    v44.size.width = v17;
    v44.size.height = v17;
    CGRectGetMaxX(v44);
    v45.origin.x = MinX;
    v45.origin.y = v34;
    v45.size.width = v17;
    v45.size.height = v17;
    CGRectGetMinY(v45);
  }

  __swift_project_boxed_opaque_existential_1((v5 + 120), *(v5 + 144));
  sub_24F922248();
  __swift_project_boxed_opaque_existential_1((v5 + 120), *(v5 + 144));
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1((v5 + 160), *(v5 + 184));
  if ((sub_24F922238() & 1) == 0)
  {
    v46.origin.x = MinX;
    v46.origin.y = v34;
    v46.size.width = v17;
    v46.size.height = v17;
    CGRectGetMinX(v46);
    v47.origin.x = MinX;
    v47.origin.y = v34;
    v47.size.width = v17;
    v47.size.height = v17;
    CGRectGetMaxY(v47);
    sub_24E94275C(v5 + 200, v35);
    sub_24E942EA8(v35);
  }

  __swift_project_boxed_opaque_existential_1((v5 + 160), *(v5 + 184));
  sub_24F922228();
  sub_24E94275C(v5 + 200, v35);
  if (v36)
  {
    __swift_project_boxed_opaque_existential_1(v35, v36);
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    sub_24E942EA8(v35);
  }

  return sub_24F922128();
}

__n128 sub_24E942DE4@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[15].n128_u8[8];
  v3 = v1[15].n128_u8[9];
  a1->n128_u64[0] = v1[15].n128_u64[0];
  a1->n128_u8[8] = v2;
  a1->n128_u8[9] = v3;
  result = v1[16];
  a1[1] = result;
  return result;
}

double _s12GameStoreKit23InAppPurchaseIconLayoutV12measurements7fitting2inSo14JUMeasurementsVSo6CGSizeV_So18UITraitEnvironment_ptF_0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  if (v1 >= 30.0)
  {
    v5 = floor(v1 / 30.0) * v3;
    v6 = v1 + v2 * v5 + v2 * v5;
    result = v6;
    if ((*(v0 + 248) & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v6 = v1 + v2 * v3 + v2 * v3;
  result = v6;
  if (*(v0 + 248))
  {
LABEL_5:
    sub_24F92C238();
    return v6;
  }

  return result;
}

uint64_t sub_24E942EA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229780, &unk_24F965BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_5JetUI10LayoutView_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24E942F30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_24E942F78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E94300C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24E943060(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t ArcadeSubscriptionRepresentation.product.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double ArcadeSubscriptionRepresentation.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;

  return result;
}

void *ArcadeSubscriptionRepresentation.__allocating_init(product:adamId:buyParams:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  result = swift_allocObject();
  v9 = *a3;
  v10 = a3[1];
  result[2] = a1;
  result[3] = a2;
  result[4] = v9;
  result[5] = v10;
  result[6] = a4;
  return result;
}

void *ArcadeSubscriptionRepresentation.init(product:adamId:buyParams:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v6 = a3[1];
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = a4;
  return v4;
}

uint64_t ArcadeSubscriptionRepresentation.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ArcadeSubscriptionRepresentation.init(deserializing:using:)(a1, a2);
  return v4;
}

void *ArcadeSubscriptionRepresentation.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v46 = a2;
  v5 = *v2;
  v44 = v3;
  v45 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = &v41 - v7;
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  sub_24F928398();
  v18 = sub_24F928348();
  v20 = v19;
  v21 = *(v9 + 8);
  v21(v17, v8);
  if (!v20)
  {
    v33 = 0x746375646F7270;
    v25 = v47;
    v34 = 0xE700000000000000;
LABEL_7:
    v35 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v36 = v33;
    v36[1] = v34;
    v36[2] = v45;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    v37 = sub_24F9285B8();
    (*(*(v37 - 8) + 8))(v46, v37);
    v21(a1, v8);
    swift_deallocPartialClassInstance();
    return v25;
  }

  v42 = v18;
  sub_24F928398();
  v22 = sub_24F928348();
  v24 = v23;
  v21(v14, v8);
  if (!v24)
  {
    v33 = 0x64496D616461;

    v34 = 0xE600000000000000;
    v25 = v47;
    goto LABEL_7;
  }

  v25 = v47;
  v47[2] = v42;
  v25[3] = v20;
  v25[4] = v22;
  v25[5] = v24;
  sub_24F928398();
  v26 = v43;
  sub_24F9281F8();
  v21(v11, v8);
  v27 = sub_24F928E68();
  v28 = a1;
  v29 = v8;
  v30 = v26;
  v31 = *(v27 - 8);
  if ((*(v31 + 48))(v30, 1, v27) == 1)
  {
    v32 = sub_24F9285B8();
    (*(*(v32 - 8) + 8))(v46, v32);
    v21(v28, v29);
    sub_24E9182E0(v30);
    v25[6] = 0;
  }

  else
  {
    v38 = sub_24F928E48();
    v39 = sub_24F9285B8();
    (*(*(v39 - 8) + 8))(v46, v39);
    v21(v28, v29);
    (*(v31 + 8))(v30, v27);
    v25[6] = v38;
  }

  return v25;
}

uint64_t ArcadeSubscriptionRepresentation.deinit()
{

  return v0;
}

uint64_t ArcadeSubscriptionRepresentation.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_24E943728@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = ArcadeSubscriptionRepresentation.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t PageTab.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PageTab.id.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t PageTab.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PageTab.init(deserializing:using:)(a1, a2);
  return v4;
}

void *PageTab.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v42 = a2;
  v38 = *v2;
  v43 = sub_24F9285B8();
  v40 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = 25705;
  v14 = 0xE200000000000000;
  sub_24F928398();
  v35 = sub_24F928348();
  v16 = v15;
  v17 = v12;
  v18 = v5;
  v19 = *(v6 + 8);
  v19(v17, v18);
  v39 = v18;
  if (!v16)
  {
    v29 = v19;
LABEL_7:
    v23 = v40;
LABEL_8:
    v30 = sub_24F92AC38();
    sub_24E9449A4(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v31 = v13;
    v31[1] = v14;
    v31[2] = v38;
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D22530], v30);
    swift_willThrow();
    (*(v23 + 8))(v42, v43);
    v29(a1, v39);
    v26 = v41;
    swift_deallocPartialClassInstance();
    return v26;
  }

  v36 = v16;
  v13 = 0x656C746974;
  sub_24F928398();
  v20 = sub_24F928348();
  v22 = v21;
  v19(v9, v18);
  if (!v22)
  {
    v29 = v19;

    v14 = 0xE500000000000000;
    goto LABEL_7;
  }

  v33 = v20;
  v34 = v22;
  v13 = 0x6E6F69746361;
  type metadata accessor for PageTabChangeAction(0);
  sub_24F928398();
  v23 = v40;
  v24 = v42;
  (*(v40 + 16))(v37, v42, v43);
  sub_24E9449A4(&qword_27F2224E0, 255, type metadata accessor for PageTabChangeAction, &protocol conformance descriptor for Action);
  sub_24F929548();
  v25 = v44;
  if (!v44)
  {
    v29 = v19;

    v14 = 0xE600000000000000;
    goto LABEL_8;
  }

  (*(v23 + 8))(v24, v43);
  v19(a1, v39);
  v26 = v41;
  v27 = v36;
  v28 = v34;
  v41[5] = v35;
  v26[6] = v27;
  v26[3] = v33;
  v26[4] = v28;
  v26[2] = v25;
  return v26;
}

uint64_t PageTab.hash(into:)(uint64_t a1)
{
  sub_24F92B218();
  sub_24F92B218();
  sub_24E65864C(*(v1 + 16) + OBJC_IVAR____TtC12GameStoreKit6Action_id, v3);
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24E6585F8(v3);
}

uint64_t PageTab.deinit()
{

  return v0;
}

uint64_t PageTab.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PageTab.hashValue.getter()
{
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92B218();
  sub_24E65864C(*(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit6Action_id, v2);
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  sub_24E6585F8(v2);
  return sub_24F92D0B8();
}

double sub_24E943EE4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_24E943F24@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 48);
  *a1 = *(*v1 + 40);
  a1[1] = v2;

  return result;
}

uint64_t sub_24E943F58(uint64_t a1)
{
  v2 = *v1;
  sub_24F92B218();
  sub_24F92B218();
  sub_24E65864C(*(v2 + 16) + OBJC_IVAR____TtC12GameStoreKit6Action_id, v4);
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24E6585F8(v4);
}

uint64_t sub_24E943FC8()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92B218();
  sub_24E65864C(*(v1 + 16) + OBJC_IVAR____TtC12GameStoreKit6Action_id, v3);
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  sub_24E6585F8(v3);
  return sub_24F92D0B8();
}

uint64_t PageTabs.selectedTabId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PageTabs.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PageTabs.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t PageTabs.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v40 = *v2;
  v43 = sub_24F9285B8();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  sub_24F928398();
  v13 = sub_24F928348();
  v15 = v14;
  v18 = *(v6 + 8);
  v16 = v6 + 8;
  v17 = v18;
  v18(v12, v5);
  if (!v15)
  {
    v22 = v41;
    v29 = 0xE200000000000000;
    v30 = 25705;
LABEL_8:
    v31 = sub_24F92AC38();
    sub_24E9449A4(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v32 = v30;
    v32[1] = v29;
    v32[2] = v40;
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    (*(v22 + 8))(v49, v43);
    v17(a1, v5);
    v27 = v42;
    swift_deallocPartialClassInstance();
    return v27;
  }

  v38 = v13;
  sub_24F928398();
  v19 = sub_24F928348();
  v21 = v20;
  v17(v9, v5);
  if (!v21)
  {

    v29 = 0xE200000000000000;
    v30 = 25705;
    v22 = v41;
    goto LABEL_8;
  }

  v34 = v19;
  v35 = v21;
  v36 = v17;
  v37 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2224E8, &qword_24F969738);
  sub_24F928398();
  v22 = v41;
  v23 = v49;
  v24 = v43;
  (*(v41 + 16))(v39, v49, v43);
  sub_24E9447F4();
  sub_24F929548();
  v25 = v46;
  if (!v46)
  {

    v29 = 0xE500000000000000;
    v30 = 0x656C746974;
    v17 = v36;
    goto LABEL_8;
  }

  v44 = v38;
  v45 = v15;
  sub_24F92C7F8();
  (*(v22 + 8))(v23, v24);
  v36(a1, v5);
  v26 = v47;
  v27 = v42;
  *(v42 + 40) = v46;
  *(v27 + 56) = v26;
  *(v27 + 72) = v48;
  v28 = v35;
  *(v27 + 16) = v34;
  *(v27 + 24) = v28;
  *(v27 + 32) = v25;
  return v27;
}

uint64_t PageTabs.deinit()
{

  sub_24E6585F8(v0 + 40);
  return v0;
}

uint64_t PageTabs.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_24E94464C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a4)(uint64_t, uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  v10 = swift_allocObject();
  result = a4(a1, a2);
  if (!v5)
  {
    *a5 = v10;
  }

  return result;
}

uint64_t sub_24E9446BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F929608();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t _s12GameStoreKit7PageTabC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[5] == a2[5] && a1[6] == a2[6];
  if (v4 || (sub_24F92CE08()) && (a1[3] == a2[3] ? (v5 = a1[4] == a2[4]) : (v5 = 0), v5 || (sub_24F92CE08()))
  {
    sub_24E65864C(a1[2] + OBJC_IVAR____TtC12GameStoreKit6Action_id, v9);
    sub_24E65864C(a2[2] + OBJC_IVAR____TtC12GameStoreKit6Action_id, v8);
    v6 = MEMORY[0x253052150](v9, v8);
    sub_24E6585F8(v8);
    sub_24E6585F8(v9);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_24E9447F4()
{
  result = qword_27F2224F0;
  if (!qword_27F2224F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2224E8, &qword_24F969738);
    sub_24E9449A4(&qword_27F2224F8, v1, type metadata accessor for PageTab, &protocol conformance descriptor for PageTab);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2224F0);
  }

  return result;
}

uint64_t sub_24E9449A4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

GameStoreKit::AlertActionStyle_optional __swiftcall AlertActionStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
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

  *v2 = v5;
  return result;
}

uint64_t AlertActionStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x7473616F74;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_24E944B40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7473616F74;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x7473616F74;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
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

uint64_t sub_24E944BE4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E944C64(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24E944CD0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E944D4C@<X0>(char *a2@<X8>)
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

void sub_24E944DAC(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x7473616F74;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

char *AlertAction.__allocating_init(title:message:isCancelable:cancelTitle:cancelAction:buttonActions:destructiveActionIndex:style:artwork:toastDuration:presentationStyle:imageName:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, char a19, char *a20, uint64_t a21, double a22, unsigned __int8 a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v61 = a7;
  v68 = a1;
  v69 = a2;
  v67 = a24;
  v63 = a8;
  v64 = a25;
  v62 = a23;
  v65 = a26;
  v66 = a21;
  v60 = sub_24F91F6B8();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = swift_allocObject();
  v33 = v32;
  v34 = *a20;
  v35 = (v32 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_message);
  *v35 = a3;
  v35[1] = a4;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_isCancelable) = a5;
  v36 = (v32 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_cancelTitle);
  v37 = v61;
  *v36 = a6;
  v36[1] = v37;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_cancelAction) = v63;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_buttonActions) = a17;
  v38 = v32 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_destructiveActionIndex;
  *v38 = a18;
  *(v38 + 8) = a19 & 1;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_style) = v34;
  if (v62)
  {
    a22 = 1.5;
  }

  *(v32 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_toastDuration) = a22;
  v40 = (v32 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_imageName);
  v41 = v65;
  *v40 = v64;
  v40[1] = v41;
  v76 = 0;
  memset(v75, 0, sizeof(v75));
  v42 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v43 = sub_24F928AD8();
  v44 = *(v43 - 8);
  (*(v44 + 16))(&v33[v42], a27, v43);
  v45 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v46 = sub_24F929608();
  (*(*(v46 - 8) + 56))(&v33[v45], 1, 1, v46);
  v47 = &v33[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v47 = 0u;
  *(v47 + 1) = 0u;
  v48 = &v33[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v75, &v72);
  if (*(&v73 + 1))
  {
    v49 = v73;
    *v48 = v72;
    *(v48 + 1) = v49;
    *(v48 + 4) = v74;
  }

  else
  {
    v50 = v58;
    sub_24F91F6A8();
    v51 = sub_24F91F668();
    v53 = v52;
    (*(v59 + 8))(v50, v60);
    v70 = v51;
    v71 = v53;
    sub_24F92C7F8();
    sub_24E601704(&v72, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v44 + 8))(a27, v43);
  sub_24E601704(v75, &qword_27F235830, &qword_24F93B8C0);
  v54 = v69;
  *(v33 + 2) = v68;
  *(v33 + 3) = v54;
  v55 = v67;
  *(v33 + 4) = v66;
  *(v33 + 5) = v55;
  return v33;
}

void *AlertAction.init(title:message:isCancelable:cancelTitle:cancelAction:buttonActions:destructiveActionIndex:style:artwork:toastDuration:presentationStyle:imageName:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, _BYTE *a20, uint64_t a21, double a22, unsigned __int8 a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v28 = v27;
  v67 = a8;
  v65 = a7;
  v64 = a6;
  v61 = a5;
  v72 = a1;
  v73 = a2;
  v69 = a26;
  v71 = a24;
  v68 = a25;
  v66 = a23;
  v63 = a19;
  v62 = a18;
  v60 = a17;
  v70 = a21;
  v59 = sub_24F91F6B8();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v32 = &v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v57 - v34;
  v36 = sub_24F928AD8();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v57 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v38) = *a20;
  v40 = (v28 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_message);
  *v40 = a3;
  v40[1] = a4;
  *(v28 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_isCancelable) = v61;
  v41 = (v28 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_cancelTitle);
  v42 = v65;
  *v41 = v64;
  v41[1] = v42;
  *(v28 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_cancelAction) = v67;
  *(v28 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_buttonActions) = v60;
  v43 = v28 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_destructiveActionIndex;
  *v43 = v62;
  v43[8] = v63 & 1;
  *(v28 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_style) = v38;
  if (v66)
  {
    a22 = 1.5;
  }

  *(v28 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_toastDuration) = a22;
  v45 = (v28 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_imageName);
  v46 = v69;
  *v45 = v68;
  v45[1] = v46;
  v83 = 0;
  memset(v82, 0, sizeof(v82));
  (*(v37 + 16))(v39, a27, v36);
  v47 = sub_24F929608();
  (*(*(v47 - 8) + 56))(v35, 1, 1, v47);
  v48 = (v28 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v48 = 0u;
  v48[1] = 0u;
  sub_24E65E064(v82, &v76);
  if (*(&v77 + 1))
  {
    v79 = v76;
    v80 = v77;
    v81 = v78;
  }

  else
  {
    sub_24F91F6A8();
    v49 = sub_24F91F668();
    v51 = v50;
    (*(v58 + 8))(v32, v59);
    v74 = v49;
    v75 = v51;
    sub_24F92C7F8();
    sub_24E601704(&v76, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v37 + 8))(a27, v36);
  sub_24E601704(v82, &qword_27F235830, &qword_24F93B8C0);
  v52 = v28 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v52 + 4) = v81;
  v53 = v80;
  *v52 = v79;
  *(v52 + 1) = v53;
  sub_24E65E0D4(v35, v28 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v54 = v73;
  v28[2] = v72;
  v28[3] = v54;
  v55 = v71;
  v28[4] = v70;
  v28[5] = v55;
  (*(v37 + 32))(v28 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v39, v36);
  return v28;
}

uint64_t AlertAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v127 = v2;
  v128 = a2;
  v132 = *v3;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  v125 = v5;
  v126 = v6;
  MEMORY[0x28223BE20](v5);
  v118 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v8 - 8);
  v131 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v129 = &v113 - v11;
  v12 = sub_24F92AC28();
  v13 = *(v12 - 8);
  v122 = v12;
  v123 = v13;
  MEMORY[0x28223BE20](v12);
  v115 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v114 = &v113 - v16;
  v17 = sub_24F928388();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v117 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v130 = &v113 - v21;
  MEMORY[0x28223BE20](v22);
  v121 = &v113 - v23;
  MEMORY[0x28223BE20](v24);
  v120 = &v113 - v25;
  MEMORY[0x28223BE20](v26);
  v119 = &v113 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v113 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v113 - v32;
  v133 = 0xE500000000000000;
  v34 = 0x656C746974;
  v35 = a1;
  sub_24F928398();
  LOBYTE(a1) = sub_24F928328();
  v116 = v18;
  v38 = *(v18 + 8);
  v36 = (v18 + 8);
  v37 = v38;
  v39 = v17;
  (v38)(v33, v17);
  if (a1)
  {
    goto LABEL_8;
  }

  v34 = 0x6567617373656DLL;
  sub_24F928398();
  v40 = sub_24F928348();
  v42 = v41;
  (v37)(v30, v39);
  v43 = v37;
  if (!v42)
  {
    v133 = 0xE700000000000000;
LABEL_8:
    v74 = v39;
    v75 = v35;
    v76 = v125;
    v77 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v79 = v132;
    v78 = v133;
    *v80 = v34;
    v80[1] = v78;
    v80[2] = v79;
    (*(*(v77 - 8) + 104))(v80, *MEMORY[0x277D22530], v77);
    swift_willThrow();
    (v37)(v75, v74);
    (*(v126 + 8))(v128, v76);
    swift_deallocPartialClassInstance();
    return v77;
  }

  v44 = v127;
  v45 = (v127 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_message);
  *v45 = v40;
  v45[1] = v42;
  v46 = v35;
  sub_24F928398();
  v47 = sub_24F928258();
  v49 = v48;
  (v37)(v33, v39);
  v50 = v44 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_destructiveActionIndex;
  *v50 = v47;
  *(v50 + 8) = v49 & 1;
  sub_24F928398();
  sub_24E946360();
  sub_24F928208();
  (v37)(v33, v39);
  *(v44 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_style) = v134;
  v51 = v119;
  sub_24F928398();
  LOBYTE(v47) = sub_24F928278();
  v43(v51, v39);
  *(v44 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_isCancelable) = (v47 == 2) | v47 & 1;
  sub_24F928398();
  v52 = sub_24F928348();
  v54 = v53;
  v43(v33, v39);
  v55 = (v44 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_cancelTitle);
  *v55 = v52;
  v55[1] = v54;
  v56 = v36;
  v57 = type metadata accessor for Action(0);
  sub_24F928398();
  v132 = v57;
  v58 = static Action.tryToMakeInstance(byDeserializing:using:)(v33, v128);
  v43(v33, v39);
  *(v44 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_cancelAction) = v58;
  v59 = v120;
  sub_24F928398();
  v60 = sub_24F928308();
  LOBYTE(v57) = v61;
  v43(v59, v39);
  v62 = *&v60;
  if (v57)
  {
    v62 = 1.5;
  }

  *(v44 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_toastDuration) = v62;
  sub_24F928398();
  v63 = v43;
  v64 = sub_24F928348();
  v66 = v65;
  v63(v33, v39);
  v67 = (v44 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_imageName);
  *v67 = v64;
  v67[1] = v66;
  v68 = v121;
  sub_24F928398();
  v69 = v129;
  sub_24F9282B8();
  v120 = v63;
  v121 = v56;
  v63(v68, v39);
  v71 = v122;
  v70 = v123;
  v72 = *(v123 + 48);
  v73 = v46;
  if (v72(v69, 1, v122) == 1)
  {
    sub_24E601704(v69, &qword_27F2213B0, &qword_24F965EC0);
    v133 = MEMORY[0x277D84F90];
  }

  else
  {
    v81 = v114;
    (*(v70 + 32))(v114, v69, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
    v82 = v124;
    v133 = sub_24F92ABD8();
    v124 = v82;
    (*(v70 + 8))(v81, v71);
  }

  v83 = v130;
  v84 = v131;
  v119 = v73;
  sub_24F928398();
  sub_24F9282B8();
  v114 = v39;
  (v120)(v83, v39);
  v85 = v72(v84, 1, v71);
  v86 = v126;
  if (v85 != 1)
  {
    v89 = (*(v123 + 32))(v115, v84, v71);
    MEMORY[0x28223BE20](v89);
    v90 = v128;
    *(&v113 - 2) = v132;
    *(&v113 - 1) = v90;
    v91 = v124;
    v92 = sub_24F92ABB8();
    v93 = v92;
    v124 = v91;
    if (v92 >> 62)
    {
      goto LABEL_32;
    }

    v94 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v94)
    {
LABEL_33:
      v87 = MEMORY[0x277D84F90];
LABEL_34:

      (*(v123 + 8))(v115, v122);
      v44 = v127;
      v88 = v128;
      v86 = v126;
      goto LABEL_35;
    }

LABEL_14:
    v95 = 0;
    v131 = (v93 & 0xFFFFFFFFFFFFFF8);
    v132 = v93 & 0xC000000000000001;
    v96 = (v133 + 40);
    v87 = MEMORY[0x277D84F90];
    v129 = v94;
    v130 = v93;
    while (1)
    {
      if (v132)
      {
        v97 = MEMORY[0x253052270](v95, v93);
        v98 = (v95 + 1);
        if (__OFADD__(v95, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v95 >= *(v131 + 2))
        {
          goto LABEL_31;
        }

        v97 = *(v93 + 8 * v95 + 32);

        v98 = (v95 + 1);
        if (__OFADD__(v95, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          v94 = sub_24F92C738();
          if (!v94)
          {
            goto LABEL_33;
          }

          goto LABEL_14;
        }
      }

      if (v95 < *(v133 + 16) && (v99 = *v96) != 0)
      {
        v100 = *(v96 - 1);
      }

      else
      {
        v100 = *(v97 + 16);
        v99 = *(v97 + 24);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = sub_24E616378(0, v87[2] + 1, 1, v87);
      }

      v102 = v87[2];
      v101 = v87[3];
      if (v102 >= v101 >> 1)
      {
        v87 = sub_24E616378((v101 > 1), v102 + 1, 1, v87);
      }

      v87[2] = v102 + 1;
      v103 = &v87[5 * v102];
      v103[4] = v100;
      v103[5] = v99;
      v103[7] = 0;
      v103[8] = 0;
      v103[6] = v97;
      ++v95;
      v96 += 2;
      v93 = v130;
      if (v98 == v129)
      {
        goto LABEL_34;
      }
    }
  }

  sub_24E601704(v84, &qword_27F2213B0, &qword_24F965EC0);
  v87 = MEMORY[0x277D84F90];
  v88 = v128;
LABEL_35:
  *(v44 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_buttonActions) = v87;
  v104 = v117;
  v105 = v119;
  v106 = v114;
  (*(v116 + 16))(v117, v119, v114);
  v107 = v118;
  v108 = v125;
  (*(v86 + 16))(v118, v88, v125);
  v109 = v104;
  v77 = v44;
  v110 = v124;
  v111 = Action.init(deserializing:using:)(v109, v107);
  if (!v110)
  {
    v77 = v111;
  }

  (v120)(v105, v106);
  (*(v86 + 8))(v88, v108);
  return v77;
}

unint64_t sub_24E946360()
{
  result = qword_27F222518;
  if (!qword_27F222518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222518);
  }

  return result;
}

uint64_t AlertAction.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_message);

  return v1;
}

uint64_t AlertAction.cancelTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_cancelTitle);

  return v1;
}

uint64_t AlertAction.imageName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_imageName);

  return v1;
}

uint64_t sub_24E946504()
{
}

uint64_t AlertAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t AlertAction.__deallocating_deinit()
{
  AlertAction.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24E946724()
{
  result = qword_27F222520;
  if (!qword_27F222520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222520);
  }

  return result;
}

uint64_t type metadata accessor for AlertAction(uint64_t a1)
{
  result = qword_27F222528;
  if (!qword_27F222528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NewToMajorOSVersionCardTrigger.__allocating_init(adamId:)(uint64_t *a1)
{
  result = swift_allocObject();
  v3 = *a1;
  v4 = a1[1];
  *(result + 16) = 3;
  *(result + 40) = 1;
  *(result + 24) = v3;
  *(result + 32) = v4;
  return result;
}

uint64_t NewToMajorOSVersionCardTrigger.init(adamId:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  *(v1 + 16) = 3;
  *(v1 + 40) = 1;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return v1;
}

id sub_24E946954()
{
  v1 = sub_24F92B098();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_24E9421D0();
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_24E857CC8(v8);
  }

  return 0;
}

double NewToMajorOSVersionCardTrigger.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;

  return result;
}

void sub_24E946A74(void (*a1)(uint64_t))
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24E946954();
  v5 = v4;

  if (v5)
  {
    v6 = 1;
LABEL_5:
    a1(v6);
    return;
  }

  v7 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    v8 = [objc_opt_self() processInfo];
    v10[1] = 0;
    v10[2] = 0;
    v10[0] = v7;
    v9 = [v8 isOperatingSystemAtLeastVersion_];

    v6 = v9;
    goto LABEL_5;
  }

  __break(1u);
}

void sub_24E946B54()
{
  v0 = [objc_opt_self() processInfo];
  [v0 operatingSystemVersion];

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_24F92B098();
  [v1 setInteger:v3 forKey:v2];
}

void sub_24E946C28()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_24F92B098();
  [v0 removeObjectForKey_];
}

uint64_t sub_24E946CBC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

void sub_24E946D4C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_24E946954();
  v3 = v2;

  if ((v3 & 1) == 0)
  {
    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
    }

    else
    {
      v5 = [objc_opt_self() processInfo];
      v6[1] = 0;
      v6[2] = 0;
      v6[0] = v4;
      [v5 isOperatingSystemAtLeastVersion_];
    }
  }
}

uint64_t NewToMajorOSVersionCardTrigger.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_24E946E74@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 32);
  *a1 = *(*v1 + 24);
  a1[1] = v2;

  return result;
}

uint64_t sub_24E946E84()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 40);
}

uint64_t sub_24E946EC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_24E946F0C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t Copyable.copyWithOverrides(in:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v4, v9);
  (*(a3 + 8))(v11, a2, a3);
  return a1(a4);
}

void *OfferAlertAction.__allocating_init(title:message:footerMessage:isCancelable:checkRestrictionsForContentRating:shouldCheckForAvailableDiskSpace:remoteControllerRequirement:spatialControllerRequirement:shouldIncludeActiveAccountInFooterMessage:shouldPromptForConfirmation:completionAction:artwork:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, char a10, char *a11, char *a12, unsigned __int8 a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v49 = a8;
  v54 = a1;
  v55 = a2;
  v52 = a16;
  v53 = a17;
  v51 = a15;
  v50 = a14;
  v47 = a7;
  v48 = a13;
  v46 = sub_24F91F6B8();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v24 = *a11;
  v25 = *a12;
  v26 = (v23 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_message);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_footerMessage);
  *v27 = a5;
  v27[1] = a6;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_isCancelable) = v47;
  v28 = v23 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_checkRestrictionsForContentRating;
  *v28 = v49;
  v28[8] = a9 & 1;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_shouldCheckForAvailableDiskSpace) = a10;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_remoteControllerRequirement) = v24;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_spatialControllerRequirement) = v25;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_shouldIncludeActiveAccountInFooterMessage) = v48;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_shouldPromptForConfirmation) = v50;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_completionAction) = v51;
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  v29 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v30 = sub_24F928AD8();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v23 + v29, a18, v30);
  v32 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v33 = sub_24F929608();
  (*(*(v33 - 8) + 56))(v23 + v32, 1, 1, v33);
  v34 = (v23 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v34 = 0u;
  v34[1] = 0u;
  v35 = v23 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v61, &v58);
  if (*(&v59 + 1))
  {
    v36 = v59;
    *v35 = v58;
    *(v35 + 1) = v36;
    *(v35 + 4) = v60;
  }

  else
  {
    v37 = v44;
    sub_24F91F6A8();
    v38 = sub_24F91F668();
    v40 = v39;
    (*(v45 + 8))(v37, v46);
    v56 = v38;
    v57 = v40;
    sub_24F92C7F8();
    sub_24E601704(&v58, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v31 + 8))(a18, v30);
  sub_24E601704(v61, &qword_27F235830, &qword_24F93B8C0);
  v41 = v55;
  v23[2] = v54;
  v23[3] = v41;
  v42 = v53;
  v23[4] = v52;
  v23[5] = v42;
  return v23;
}

void *OfferAlertAction.init(title:message:footerMessage:isCancelable:checkRestrictionsForContentRating:shouldCheckForAvailableDiskSpace:remoteControllerRequirement:spatialControllerRequirement:shouldIncludeActiveAccountInFooterMessage:shouldPromptForConfirmation:completionAction:artwork:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, _BYTE *a11, char *a12, unsigned __int8 a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18;
  v54 = a8;
  v52 = a7;
  v51 = a6;
  v49 = a5;
  v47 = a4;
  v59 = a1;
  v60 = a2;
  v58 = a17;
  v57 = a16;
  v56 = a15;
  v55 = a14;
  v53 = a13;
  v50 = a10;
  v48 = a9;
  v46 = sub_24F91F6B8();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v45 - v24;
  v26 = sub_24F928AD8();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v28) = *a11;
  v30 = *a12;
  v31 = (v19 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_message);
  v32 = v47;
  *v31 = a3;
  v31[1] = v32;
  v33 = (v19 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_footerMessage);
  *v33 = v49;
  v33[1] = v51;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_isCancelable) = v52;
  v34 = v19 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_checkRestrictionsForContentRating;
  *v34 = v54;
  v34[8] = v48 & 1;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_shouldCheckForAvailableDiskSpace) = v50;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_remoteControllerRequirement) = v28;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_spatialControllerRequirement) = v30;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_shouldIncludeActiveAccountInFooterMessage) = v53;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_shouldPromptForConfirmation) = v55;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_completionAction) = v56;
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  (*(v27 + 16))(v29, a18, v26);
  v35 = sub_24F929608();
  (*(*(v35 - 8) + 56))(v25, 1, 1, v35);
  v36 = (v19 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v36 = 0u;
  v36[1] = 0u;
  sub_24E65E064(v69, &v63);
  if (*(&v64 + 1))
  {
    v66 = v63;
    v67 = v64;
    v68 = v65;
  }

  else
  {
    sub_24F91F6A8();
    v37 = sub_24F91F668();
    v39 = v38;
    (*(v45 + 8))(v22, v46);
    v61 = v37;
    v62 = v39;
    sub_24F92C7F8();
    sub_24E601704(&v63, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v27 + 8))(a18, v26);
  sub_24E601704(v69, &qword_27F235830, &qword_24F93B8C0);
  v40 = v19 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v40 + 4) = v68;
  v41 = v67;
  *v40 = v66;
  *(v40 + 1) = v41;
  sub_24E65E0D4(v25, v19 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v42 = v60;
  v19[2] = v59;
  v19[3] = v42;
  v43 = v58;
  v19[4] = v57;
  v19[5] = v43;
  (*(v27 + 32))(v19 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v29, v26);
  return v19;
}

char *OfferAlertAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v57 = sub_24F9285B8();
  v61 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v62 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v64 = *(v6 - 8);
  v7 = v64;
  MEMORY[0x28223BE20](v6);
  v60 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = &v55 - v10;
  MEMORY[0x28223BE20](v11);
  v58 = &v55 - v12;
  MEMORY[0x28223BE20](v13);
  v56 = &v55 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  sub_24F928398();
  v21 = sub_24F928348();
  v23 = v22;
  v24 = *(v7 + 8);
  v65 = v6;
  v24(v20, v6);
  v25 = (v3 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_message);
  *v25 = v21;
  v25[1] = v23;
  sub_24F928398();
  v26 = sub_24F928348();
  v28 = v27;
  v24(v20, v6);
  v29 = v3;
  v30 = (v3 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_footerMessage);
  *v30 = v26;
  v30[1] = v28;
  sub_24F928398();
  LOBYTE(v26) = sub_24F928278();
  v31 = v65;
  v24(v17, v65);
  *(v29 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_isCancelable) = (v26 == 2) | v26 & 1;
  sub_24F928398();
  v32 = sub_24F928258();
  LOBYTE(v28) = v33;
  v24(v20, v31);
  v34 = v29 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_checkRestrictionsForContentRating;
  *v34 = v32;
  *(v34 + 8) = v28 & 1;
  v35 = v56;
  sub_24F928398();
  LOBYTE(v32) = sub_24F928278();
  v36 = v35;
  v37 = v31;
  v24(v36, v31);
  v38 = v29;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_shouldCheckForAvailableDiskSpace) = v32 & 1;
  sub_24F928398();
  sub_24E9480E0();
  sub_24F928248();
  v24(v20, v37);
  *(v29 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_remoteControllerRequirement) = v67;
  v39 = a1;
  sub_24F928398();
  sub_24E948134();
  sub_24F928248();
  v40 = v37;
  v24(v20, v37);
  *(v38 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_spatialControllerRequirement) = v66;
  v41 = v58;
  sub_24F928398();
  LOBYTE(v32) = sub_24F928278();
  v24(v41, v40);
  *(v38 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_shouldIncludeActiveAccountInFooterMessage) = v32 & 1;
  v42 = v59;
  sub_24F928398();
  LOBYTE(v32) = sub_24F928278();
  v24(v42, v40);
  *(v38 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_shouldPromptForConfirmation) = v32 & 1;
  type metadata accessor for Action(0);
  v43 = v61;
  sub_24F928398();
  v44 = v63;
  v45 = static Action.tryToMakeInstance(byDeserializing:using:)(v20, v63);
  v46 = v20;
  v47 = v65;
  v59 = v24;
  v24(v46, v65);
  *(v38 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_completionAction) = v45;
  v48 = *(v64 + 16);
  v49 = v60;
  v50 = v47;
  v64 = v39;
  v48(v60, v39, v47);
  v51 = v62;
  v52 = v57;
  (*(v43 + 16))(v62, v44);
  v53 = Action.init(deserializing:using:)(v49, v51);
  (*(v43 + 8))(v44, v52);
  (v59)(v64, v50);
  return v53;
}

unint64_t sub_24E9480E0()
{
  result = qword_27F222538;
  if (!qword_27F222538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222538);
  }

  return result;
}

unint64_t sub_24E948134()
{
  result = qword_27F222540;
  if (!qword_27F222540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222540);
  }

  return result;
}

uint64_t OfferAlertAction.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_message);

  return v1;
}

uint64_t OfferAlertAction.footerMessage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_footerMessage);

  return v1;
}

double sub_24E9482C0()
{

  return result;
}

uint64_t OfferAlertAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t OfferAlertAction.__deallocating_deinit()
{
  OfferAlertAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OfferAlertAction(uint64_t a1)
{
  result = qword_27F222548;
  if (!qword_27F222548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SocialProviderContainer.preferredAudioProvider.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SocialProviderContainer.preferredVideoProvider.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SocialProviderContainer.providerIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

unint64_t SocialProviderContainer.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v15 = v1[1];
  v3 = v1[2];
  v4 = v1[4];
  v16 = v1[3];
  v17 = v1[5];
  v5 = v1[6];
  v18 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  strcpy((inited + 32), "callProviders");
  *(inited + 46) = -4864;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  *(inited + 72) = v7;
  v8 = sub_24E61B71C(&qword_27F213798, MEMORY[0x277D22580], MEMORY[0x277D22590]);
  *(inited + 48) = v2;
  *(inited + 80) = v8;
  *(inited + 88) = 0xD000000000000016;
  *(inited + 96) = 0x800000024FA4A540;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  *(inited + 128) = v9;
  v10 = sub_24E605DB4();
  *(inited + 104) = v15;
  *(inited + 112) = v3;
  *(inited + 136) = v10;
  *(inited + 144) = 0xD000000000000016;
  *(inited + 184) = v9;
  *(inited + 192) = v10;
  *(inited + 152) = 0x800000024FA4A560;
  *(inited + 160) = v16;
  *(inited + 168) = v4;
  *(inited + 200) = 0xD000000000000012;
  *(inited + 208) = 0x800000024FA4A580;
  *(inited + 240) = MEMORY[0x277D837D0];
  v11 = MEMORY[0x277D22580];
  *(inited + 216) = v17;
  *(inited + 224) = v5;
  *(inited + 248) = v11;
  *(inited + 256) = 0xD00000000000001BLL;
  *(inited + 296) = v7;
  *(inited + 304) = v8;
  *(inited + 264) = 0x800000024FA4A5A0;
  *(inited + 272) = v18;

  v12 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v13 = sub_24E80FFAC(v12);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v13;
  return result;
}

unint64_t sub_24E9488E8()
{
  v1 = *v0;
  v2 = 0x766F72506C6C6163;
  v3 = 0xD000000000000016;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000016;
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

uint64_t sub_24E948998@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E94C154(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E9489C0(uint64_t a1)
{
  v2 = sub_24E94B18C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9489FC(uint64_t a1)
{
  v2 = sub_24E94B18C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SocialProviderContainer.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222558, &qword_24F969C98);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v15[5] = v1[2];
  v15[6] = v8;
  v11 = v1[5];
  v15[3] = v1[4];
  v15[4] = v10;
  v13 = v1[6];
  v12 = v1[7];
  v15[1] = v11;
  v15[2] = v13;
  v15[0] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E94B18C();

  sub_24F92D128();
  v17 = v9;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  sub_24E61B71C(&qword_27F2137A0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_24F92CD48();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v17) = 1;
    sub_24F92CCA8();
    LOBYTE(v17) = 2;
    sub_24F92CCA8();
    LOBYTE(v17) = 3;
    sub_24F92CD08();
    v17 = v15[0];
    v16 = 4;
    sub_24F92CD48();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SocialProviderContainer.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222568, &unk_24F969CA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E94B18C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  LOBYTE(v30) = 0;
  sub_24E61B71C(&qword_27F216420, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_24F92CC68();
  v29 = v34[0];
  LOBYTE(v34[0]) = 1;
  v9 = sub_24F92CBC8();
  v28 = v10;
  v24 = v9;
  LOBYTE(v34[0]) = 2;
  v27 = 0;
  v23 = sub_24F92CBC8();
  v26 = v11;
  LOBYTE(v34[0]) = 3;
  v22 = sub_24F92CC28();
  v25 = v12;
  v35 = 4;
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v27 = v36;
  v14 = v28;
  v13 = v29;
  v15 = v24;
  *&v30 = v29;
  *(&v30 + 1) = v24;
  v16 = v23;
  *&v31 = v28;
  *(&v31 + 1) = v23;
  v17 = v26;
  *&v32 = v26;
  *(&v32 + 1) = v22;
  v18 = v25;
  *&v33 = v25;
  *(&v33 + 1) = v36;
  v19 = v31;
  *a2 = v30;
  a2[1] = v19;
  v20 = v33;
  a2[2] = v32;
  a2[3] = v20;
  sub_24E94B1E0(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v13;
  v34[1] = v15;
  v34[2] = v14;
  v34[3] = v16;
  v34[4] = v17;
  v34[5] = v22;
  v34[6] = v18;
  v34[7] = v27;
  return sub_24E94B218(v34);
}

unint64_t SocialIntegrationIdentifier.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  if (v3)
  {
    v4 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    *(inited + 32) = 0x646E696B24;
    v6 = MEMORY[0x277D22580];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v6;
    *(inited + 40) = 0xE500000000000000;
    strcpy((inited + 48), "socialProvider");
    *(inited + 63) = -18;
    strcpy((inited + 88), "socialProvider");
    *(inited + 103) = -18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_24F93DE60;
    *(v7 + 32) = 0xD000000000000012;
    *(v7 + 40) = 0x800000024FA4A580;
    *(v7 + 48) = v4;
    *(v7 + 56) = v3;

    v8 = sub_24E6086DC(v7);
    swift_setDeallocating();
    v9 = (v7 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    *(inited + 32) = 0x646E696B24;
    v10 = MEMORY[0x277D22580];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v10;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = 0x73746361746E6F63;
    *(inited + 56) = 0xE800000000000000;
    *(inited + 88) = 0x73746361746E6F63;
    *(inited + 96) = 0xE800000000000000;
    v8 = sub_24E6086DC(&unk_2861C01F8);
    v9 = &unk_2861C0218;
  }

  sub_24E601704(v9, &qword_27F219F90, &qword_24F955020);
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
  *(inited + 136) = sub_24E776F6C();
  *(inited + 104) = v8;
  v11 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v12 = sub_24E80FFAC(v11);

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[3] = v13;
  a1[4] = result;
  *a1 = v12;
  return result;
}

uint64_t sub_24E94939C()
{
  if (*v0)
  {
    return 0x72506C6169636F73;
  }

  else
  {
    return 0x73746361746E6F63;
  }
}

uint64_t sub_24E9493E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73746361746E6F63 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72506C6169636F73 && a2 == 0xEE0072656469766FLL)
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

uint64_t sub_24E9494C8(uint64_t a1)
{
  v2 = sub_24E94B248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E949504(uint64_t a1)
{
  v2 = sub_24E94B248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E949540(uint64_t a1)
{
  v2 = sub_24E94B2F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E94957C(uint64_t a1)
{
  v2 = sub_24E94B2F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E9495D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024FA4A580 == a2)
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

uint64_t sub_24E949668(uint64_t a1)
{
  v2 = sub_24E94B29C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9496A4(uint64_t a1)
{
  v2 = sub_24E94B29C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SocialIntegrationIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222570, &qword_24F969CB0);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222578, &qword_24F969CB8);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v17 = &v16 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222580, &qword_24F969CC0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = v1[1];
  v20 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E94B248();
  sub_24F92D128();
  if (v12)
  {
    v24 = 1;
    sub_24E94B29C();
    sub_24F92CC98();
    v13 = v22;
    sub_24F92CD08();
    (*(v21 + 8))(v5, v13);
  }

  else
  {
    v23 = 0;
    sub_24E94B2F0();
    v15 = v17;
    sub_24F92CC98();
    (*(v18 + 8))(v15, v19);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t SocialIntegrationIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2225A0, &qword_24F969CC8);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2225A8, &qword_24F969CD0);
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2225B0, &qword_24F969CD8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24E94B248();
  v13 = v35;
  sub_24F92D108();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v30 = v5;
  v14 = v34;
  v35 = v9;
  v15 = sub_24F92CC78();
  v16 = (2 * *(v15 + 16)) | 1;
  v37 = v15;
  v38 = v15 + 32;
  v39 = 0;
  v40 = v16;
  v17 = sub_24E643430();
  if (v17 == 2 || v39 != v40 >> 1)
  {
    v22 = sub_24F92C918();
    swift_allocError();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
    *v24 = &type metadata for SocialIntegrationIdentifier;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v35 + 8))(v11, v8);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  if (v17)
  {
    v41 = 1;
    sub_24E94B29C();
    sub_24F92CBA8();
    v18 = v35;
    v19 = v33;
    v20 = sub_24F92CC28();
    v21 = v4;
    v28 = v27;
    (*(v32 + 8))(v21, v14);
    (*(v18 + 8))(v11, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0;
    sub_24E94B2F0();
    sub_24F92CBA8();
    v20 = 0;
    v26 = v35;
    v19 = v33;
    (*(v31 + 8))(v7, v30);
    (*(v26 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v28 = 0;
  }

  *v19 = v20;
  v19[1] = v28;
  return __swift_destroy_boxed_opaque_existential_1(v36);
}

void SocialIntegrationClassification.jsRepresentation(in:)(uint64_t *a1@<X8>)
{
  v2 = 0x7261507473726966;
  if (*v1)
  {
    v2 = 0x7261506472696874;
  }

  v3 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v3;
  *a1 = v2;
  a1[1] = 0xEA00000000007974;
}

uint64_t SocialIntegrationClassification.rawValue.getter()
{
  if (*v0)
  {
    return 0x7261506472696874;
  }

  else
  {
    return 0x7261507473726966;
  }
}

GameStoreKit::SocialIntegrationClassification_optional __swiftcall SocialIntegrationClassification.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
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

  *v2 = v5;
  return result;
}

uint64_t sub_24E94A010(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x7261506472696874;
  }

  else
  {
    v2 = 0x7261507473726966;
  }

  if (*a2)
  {
    v3 = 0x7261506472696874;
  }

  else
  {
    v3 = 0x7261507473726966;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_24F92CE08();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_24E94A0A4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E94A124(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24E94A188()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E94A204@<X0>(char *a2@<X8>)
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

void sub_24E94A264(uint64_t *a1@<X8>)
{
  v2 = 0x7261507473726966;
  if (*v1)
  {
    v2 = 0x7261506472696874;
  }

  *a1 = v2;
  a1[1] = 0xEA00000000007974;
}

void sub_24E94A350(uint64_t *a1@<X8>)
{
  v2 = 0x7261507473726966;
  if (*v1)
  {
    v2 = 0x7261506472696874;
  }

  v3 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v3;
  *a1 = v2;
  a1[1] = 0xEA00000000007974;
}

uint64_t SocialIntegration.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SocialIntegration.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SocialIntegration.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SocialIntegration(0) + 24);

  return sub_24E6F66C4(v3, a1);
}

double SocialIntegration.identifier.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SocialIntegration(0) + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return result;
}

uint64_t SocialIntegration.classification.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SocialIntegration(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t SocialIntegration.rootContainer.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SocialIntegration(0) + 36));
  v5 = v3[3];
  v10 = v3[2];
  v4 = v10;
  v11 = v5;
  v6 = v3[1];
  v9[0] = *v3;
  v9[1] = v6;
  *a1 = v9[0];
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v5;
  return sub_24E94B1E0(v9, &v8);
}

unint64_t SocialIntegration.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x656C746974627573;
  *(inited + 96) = 0xE800000000000000;
  v8 = v1[2];
  v7 = v1[3];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  v9 = sub_24E605DB4();
  *(inited + 104) = v8;
  *(inited + 112) = v7;
  *(inited + 136) = v9;
  *(inited + 144) = 1852793705;
  *(inited + 152) = 0xE400000000000000;
  v10 = type metadata accessor for SocialIntegration(0);
  v11 = v10[6];
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  *(inited + 192) = sub_24E7F1D38();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24E6F66C4(v1 + v11, boxed_opaque_existential_1);
  *(inited + 200) = 0x696669746E656469;
  *(inited + 208) = 0xEA00000000007265;
  v13 = (v1 + v10[7]);
  v14 = *v13;
  v15 = v13[1];
  *(inited + 240) = &type metadata for SocialIntegrationIdentifier;
  v16 = sub_24E94B390();
  *(inited + 216) = v14;
  *(inited + 224) = v15;
  *(inited + 248) = v16;
  strcpy((inited + 256), "classification");
  *(inited + 271) = -18;
  LOBYTE(v14) = *(v1 + v10[8]);
  *(inited + 296) = &type metadata for SocialIntegrationClassification;
  v17 = sub_24E94B3E4();
  *(inited + 272) = v14;
  *(inited + 304) = v17;
  strcpy((inited + 312), "rootContainer");
  *(inited + 326) = -4864;
  v18 = (v1 + v10[9]);
  v19 = v18[3];
  v30 = v18[2];
  v31 = v19;
  v20 = v18[1];
  v28 = *v18;
  v29 = v20;
  *(inited + 352) = &type metadata for SocialProviderContainer;
  *(inited + 360) = sub_24E94B438();
  v21 = swift_allocObject();
  *(inited + 328) = v21;
  v22 = v31;
  v21[3] = v30;
  v21[4] = v22;
  v23 = v29;
  v21[1] = v28;
  v21[2] = v23;

  sub_24E94B1E0(&v28, &v27);
  v24 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v25 = sub_24E80FFAC(v24);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v25;
  return result;
}

uint64_t sub_24E94A7EC()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x696669746E656469;
  v4 = 0x6966697373616C63;
  if (v1 != 4)
  {
    v4 = 0x746E6F43746F6F72;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974627573;
  if (v1 != 1)
  {
    v5 = 1852793705;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24E94A8B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E94C314(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E94A8DC(uint64_t a1)
{
  v2 = sub_24E94B4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E94A918(uint64_t a1)
{
  v2 = sub_24E94B4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SocialIntegration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2225D0, &qword_24F969CE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E94B4E4();
  sub_24F92D128();
  LOBYTE(v24[0]) = 0;
  sub_24F92CD08();
  if (!v2)
  {
    LOBYTE(v24[0]) = 1;
    sub_24F92CCA8();
    v9 = type metadata accessor for SocialIntegration(0);
    LOBYTE(v24[0]) = 2;
    sub_24F9289E8();
    sub_24E94B634(&qword_27F214060, MEMORY[0x277D21C50]);
    sub_24F92CCF8();
    v10 = (v3 + v9[7]);
    v11 = v10[1];
    *&v24[0] = *v10;
    *(&v24[0] + 1) = v11;
    LOBYTE(v20) = 3;
    sub_24E94B538();

    sub_24F92CD48();

    v27 = *(v3 + v9[8]);
    v26 = 4;
    sub_24E94B58C();
    sub_24F92CD48();
    v12 = (v3 + v9[9]);
    v13 = v12[1];
    v24[0] = *v12;
    v24[1] = v13;
    v14 = v12[3];
    v16 = *v12;
    v15 = v12[1];
    v24[2] = v12[2];
    v24[3] = v14;
    v20 = v16;
    v21 = v15;
    v17 = v12[3];
    v22 = v12[2];
    v23 = v17;
    v25 = 5;
    sub_24E94B1E0(v24, v19);
    sub_24E94B5E0();
    sub_24F92CD48();
    v19[0] = v20;
    v19[1] = v21;
    v19[2] = v22;
    v19[3] = v23;
    sub_24E94B218(v19);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SocialIntegration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2225F8, &qword_24F969CE8);
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = &v20 - v8;
  v10 = type metadata accessor for SocialIntegration(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v23 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24E94B4E4();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  LOBYTE(v24) = 0;
  *v12 = sub_24F92CC28();
  v12[1] = v14;
  LOBYTE(v24) = 1;
  v12[2] = sub_24F92CBC8();
  v12[3] = v15;
  sub_24F9289E8();
  LOBYTE(v24) = 2;
  sub_24E94B634(&qword_27F214018, MEMORY[0x277D21C60]);
  sub_24F92CC18();
  sub_24E94B678(v6, v12 + v10[6]);
  v28 = 3;
  sub_24E94B6E8();
  sub_24F92CC68();
  *(v12 + v10[7]) = v24;
  v28 = 4;
  sub_24E94B73C();
  sub_24F92CC68();
  *(v12 + v10[8]) = v24;
  v28 = 5;
  sub_24E94B790();
  sub_24F92CC68();
  (*(v7 + 8))(v9, v22);
  v16 = (v12 + v10[9]);
  v17 = v25;
  *v16 = v24;
  v16[1] = v17;
  v18 = v27;
  v16[2] = v26;
  v16[3] = v18;
  sub_24E94B7E4(v12, v21);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_24E94B848(v12);
}

unint64_t sub_24E94B18C()
{
  result = qword_27F222560;
  if (!qword_27F222560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222560);
  }

  return result;
}

unint64_t sub_24E94B248()
{
  result = qword_27F222588;
  if (!qword_27F222588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222588);
  }

  return result;
}

unint64_t sub_24E94B29C()
{
  result = qword_27F222590;
  if (!qword_27F222590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222590);
  }

  return result;
}

unint64_t sub_24E94B2F0()
{
  result = qword_27F222598;
  if (!qword_27F222598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222598);
  }

  return result;
}

uint64_t type metadata accessor for SocialIntegration(uint64_t a1)
{
  result = qword_27F222620;
  if (!qword_27F222620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24E94B390()
{
  result = qword_27F2225B8;
  if (!qword_27F2225B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2225B8);
  }

  return result;
}

unint64_t sub_24E94B3E4()
{
  result = qword_27F2225C0;
  if (!qword_27F2225C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2225C0);
  }

  return result;
}

unint64_t sub_24E94B438()
{
  result = qword_27F2225C8;
  if (!qword_27F2225C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2225C8);
  }

  return result;
}

uint64_t sub_24E94B48C()
{

  return swift_deallocObject();
}

unint64_t sub_24E94B4E4()
{
  result = qword_27F2225D8;
  if (!qword_27F2225D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2225D8);
  }

  return result;
}

unint64_t sub_24E94B538()
{
  result = qword_27F2225E0;
  if (!qword_27F2225E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2225E0);
  }

  return result;
}

unint64_t sub_24E94B58C()
{
  result = qword_27F2225E8;
  if (!qword_27F2225E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2225E8);
  }

  return result;
}

unint64_t sub_24E94B5E0()
{
  result = qword_27F2225F0;
  if (!qword_27F2225F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2225F0);
  }

  return result;
}

uint64_t sub_24E94B634(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_24F9289E8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E94B678(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E94B6E8()
{
  result = qword_27F222600;
  if (!qword_27F222600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222600);
  }

  return result;
}

unint64_t sub_24E94B73C()
{
  result = qword_27F222608;
  if (!qword_27F222608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222608);
  }

  return result;
}

unint64_t sub_24E94B790()
{
  result = qword_27F222610;
  if (!qword_27F222610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222610);
  }

  return result;
}

uint64_t sub_24E94B7E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialIntegration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E94B848(uint64_t a1)
{
  v2 = type metadata accessor for SocialIntegration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E94B8A8()
{
  result = qword_27F222618;
  if (!qword_27F222618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222618);
  }

  return result;
}

uint64_t sub_24E94B90C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E94B95C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_24E94B9B0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_24E94BA04(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E94BAD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E94BB84(uint64_t a1)
{
  sub_24E6BCB04();
  if (v1 <= 0x3F)
  {
    sub_24E6A7820(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24E94BC88()
{
  result = qword_27F222630;
  if (!qword_27F222630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222630);
  }

  return result;
}

unint64_t sub_24E94BCE0()
{
  result = qword_27F222638;
  if (!qword_27F222638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222638);
  }

  return result;
}

unint64_t sub_24E94BD38()
{
  result = qword_27F222640;
  if (!qword_27F222640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222640);
  }

  return result;
}

unint64_t sub_24E94BD90()
{
  result = qword_27F222648;
  if (!qword_27F222648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222648);
  }

  return result;
}

unint64_t sub_24E94BDE8()
{
  result = qword_27F222650;
  if (!qword_27F222650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222650);
  }

  return result;
}

unint64_t sub_24E94BE40()
{
  result = qword_27F222658;
  if (!qword_27F222658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222658);
  }

  return result;
}

unint64_t sub_24E94BE98()
{
  result = qword_27F222660;
  if (!qword_27F222660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222660);
  }

  return result;
}

unint64_t sub_24E94BEF0()
{
  result = qword_27F222668;
  if (!qword_27F222668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222668);
  }

  return result;
}

unint64_t sub_24E94BF48()
{
  result = qword_27F222670;
  if (!qword_27F222670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222670);
  }

  return result;
}

unint64_t sub_24E94BFA0()
{
  result = qword_27F222678;
  if (!qword_27F222678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222678);
  }

  return result;
}

unint64_t sub_24E94BFF8()
{
  result = qword_27F222680;
  if (!qword_27F222680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222680);
  }

  return result;
}

unint64_t sub_24E94C050()
{
  result = qword_27F222688;
  if (!qword_27F222688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222688);
  }

  return result;
}

unint64_t sub_24E94C0A8()
{
  result = qword_27F222690;
  if (!qword_27F222690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222690);
  }

  return result;
}

unint64_t sub_24E94C100()
{
  result = qword_27F222698;
  if (!qword_27F222698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222698);
  }

  return result;
}

uint64_t sub_24E94C154(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x766F72506C6C6163 && a2 == 0xED00007372656469;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA4A540 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA4A560 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA4A580 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000024FA4A5A0 == a2)
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

uint64_t sub_24E94C314(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6966697373616C63 && a2 == 0xEE006E6F69746163 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E6F43746F6F72 && a2 == 0xED000072656E6961)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_24E94C528()
{
  result = qword_27F2226A0;
  if (!qword_27F2226A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2226A0);
  }

  return result;
}

uint64_t ReviewsDiffablePageContentPresenter.__allocating_init(objectGraph:sidePackedPage:pendingPageRender:pageRenderMetrics:sortOption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  ReviewsDiffablePageContentPresenter.init(objectGraph:sidePackedPage:pendingPageRender:pageRenderMetrics:sortOption:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t ReviewsDiffablePageContentPresenter.init(objectGraph:sidePackedPage:pendingPageRender:pageRenderMetrics:sortOption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v88 = a5;
  v84 = a1;
  v85 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v82 - v10;
  v83 = v82 - v10;
  *(v6 + qword_27F2226A8) = 0;
  v12 = sub_24F91F4A8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  *(v6 + qword_27F22F198) = 0;
  v13 = MEMORY[0x277D84F90];
  *(v6 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v14 = qword_27F39C780;
  v87 = a4;

  v86 = a3;

  *(v6 + v14) = sub_24E60986C(v13);
  v15 = (v6 + qword_27F22F1A8);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v6 + qword_27F22F1B0);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v6 + qword_27F22F1B8);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v6 + qword_27F22F1C0);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v6 + qword_27F22F1C8);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v6 + qword_27F39C788);
  *v20 = 0u;
  v20[1] = 0u;
  *(v20 + 25) = 0u;
  *(v6 + qword_27F39C790) = 0;
  *(v6 + qword_27F22F1D0) = 0;
  *(v6 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v6 + qword_27F39C798) = 0;
  v21 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B0, &qword_24F989DF0);
  swift_allocObject();
  *(v6 + v21) = sub_24F92ADA8();
  v22 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v6 + v22) = sub_24F92ADA8();
  v23 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C0, &qword_24F989E00);
  swift_allocObject();
  *(v6 + v23) = sub_24F92ADA8();
  v24 = qword_27F39C7B8;
  swift_allocObject();
  *(v6 + v24) = sub_24F92ADA8();
  v25 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v6 + v25) = sub_24F92ADA8();
  v26 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  *(v6 + v26) = sub_24F92ADA8();
  v27 = qword_27F22F1E0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v29 = *(*(v28 - 8) + 56);
  v29(v6 + v27, 1, 1, v28);
  v29(v6 + qword_27F22F1E8, 1, 1, v28);
  v30 = v83;
  v31 = v84;
  *(v6 + 16) = v84;
  sub_24E911D90(v30, v6 + qword_27F39C7D0);
  v32 = *v15;
  v33 = v15[1];
  *v15 = 0;
  v15[1] = 0;
  sub_24E824448(v32, v33);
  v34 = *v17;
  v35 = v17[1];
  *v17 = 0;
  v17[1] = 0;
  v36 = v85;
  sub_24E824448(v34, v35);
  if (v36)
  {
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    v38 = sub_24E94E064;
  }

  else
  {
    v38 = 0;
    v37 = 0;
  }

  v40 = *v16;
  v39 = v16[1];
  *v16 = v38;
  v16[1] = v37;
  sub_24E824448(v40, v39);
  v41 = *v18;
  v42 = v18[1];
  *v18 = 0;
  v18[1] = 0;
  sub_24E824448(v41, v42);
  v43 = *v19;
  v44 = v19[1];
  *v19 = 0;
  v19[1] = 0;
  sub_24E824448(v43, v44);
  v45 = v87;
  *(v6 + qword_27F22F1F0) = v86;
  *(v6 + qword_27F39C7D8) = v45;
  v46 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
  sub_24F928FD8();
  swift_retain_n();
  v47 = v31;
  sub_24F92A758();
  v48 = v89;
  v49 = v90;
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = swift_allocObject();
  v82[0] = v51;
  v82[1] = v48;
  v51[2] = v50;
  v51[3] = v36;
  v51[4] = v48;
  v51[5] = v49;
  v52 = swift_allocObject();
  v52[2] = v88;
  v52[3] = v36;
  v52[4] = v47;
  v52[5] = v6;
  v52[6] = v48;
  v52[7] = v49;
  v53 = swift_allocObject();
  swift_weakInit();
  v54 = swift_allocObject();
  *(v54 + 16) = v47;
  *(v54 + 24) = v46;
  v55 = swift_allocObject();
  v83 = v55;
  *(v55 + 16) = sub_24E94DE4C;
  *(v55 + 24) = v47;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_24E94DDEC;
  *(v56 + 24) = v52;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_24E94DEE8;
  *(v57 + 24) = v56;
  v58 = (v6 + qword_27F22F1A8);
  v59 = *(v6 + qword_27F22F1A8);
  v60 = *(v6 + qword_27F22F1A8 + 8);
  *v58 = sub_24E94DF18;
  v58[1] = v57;

  v61 = v82[0];

  swift_retain_n();
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();

  sub_24E824448(v59, v60);
  v62 = swift_allocObject();
  *(v62 + 16) = sub_24E94DD64;
  *(v62 + 24) = v61;
  v63 = swift_allocObject();
  *(v63 + 16) = sub_24E94DF50;
  *(v63 + 24) = v62;
  v64 = (v6 + qword_27F22F1B0);
  v65 = *(v6 + qword_27F22F1B0);
  v66 = *(v6 + qword_27F22F1B0 + 8);
  *v64 = sub_24E94DF80;
  v64[1] = v63;

  sub_24E824448(v65, v66);
  v67 = swift_allocObject();
  *(v67 + 16) = sub_24E94DDFC;
  *(v67 + 24) = v53;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_24E94DFB8;
  *(v68 + 24) = v67;
  v69 = (v6 + qword_27F22F1B8);
  v70 = *(v6 + qword_27F22F1B8);
  v71 = *(v6 + qword_27F22F1B8 + 8);
  *v69 = sub_24E94DFEC;
  v69[1] = v68;

  sub_24E824448(v70, v71);
  v72 = (v6 + qword_27F22F1C0);
  v73 = *(v6 + qword_27F22F1C0);
  v74 = *(v6 + qword_27F22F1C0 + 8);
  *v72 = sub_24E94DE44;
  v72[1] = v54;

  sub_24E824448(v73, v74);
  v75 = swift_allocObject();
  v76 = v83;
  *(v75 + 16) = sub_24E94DE8C;
  *(v75 + 24) = v76;
  v77 = swift_allocObject();
  *(v77 + 16) = sub_24E94DEE8;
  *(v77 + 24) = v75;
  v78 = (v6 + qword_27F22F1C8);
  v79 = *(v6 + qword_27F22F1C8);
  v80 = *(v6 + qword_27F22F1C8 + 8);
  *v78 = sub_24E94DF18;
  v78[1] = v77;

  sub_24E824448(v79, v80);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_24E94CEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222720, &qword_24F96A6A0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23[-1] - v13;
  if (a2)
  {
    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();

    sub_24F92A758();
    v15 = OBJC_IVAR____TtCC12GameStoreKit11ReviewsPage10SortOption_url;
    v16 = sub_24F91F4A8();
    (*(*(v16 - 8) + 16))(v14, a2 + v15, v16);
    sub_24EB45FC8(v14, a4, "GameStoreKit/ReviewsDiffablePageContentPresenter.swift", 54, 2);
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = a6;
    v18[4] = a7;
    v23[3] = sub_24F929638();
    v23[4] = MEMORY[0x277D21FB0];
    __swift_allocate_boxed_opaque_existential_1(v23);
    swift_unknownObjectRetain();
    sub_24F929628();
    type metadata accessor for ReviewsPage(0);
    v19 = sub_24F92A938();

    sub_24E601704(v14, &qword_27F222720, &qword_24F96A6A0);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return v19;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226F8, &qword_24F96A680);
    if (a3)
    {
      v23[0] = a3;

      return sub_24F92A988();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222700, &qword_24F96A688);
      sub_24E94E1EC();
      swift_allocError();
      *v21 = 0;
      return sub_24F92A978();
    }
  }
}

uint64_t sub_24E94D188@<X0>(uint64_t *a1@<X0>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    ObjectType = swift_getObjectType();
    v11 = *(v7 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId + 8);
    *&v22 = *(v7 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId);
    *(&v22 + 1) = v11;
    v12 = *(a4 + 56);

    v12(&v22, ObjectType, a4);
    v14 = v13;

    v15 = swift_getObjectType();
    (*(v14 + 16))(v20, v15, v14);
    swift_unknownObjectRelease();
    v22 = v20[0];
    v23 = v20[1];
    v24 = v20[2];
    v25 = v21;
    if (v21 >> 60)
    {
      if (v21 >> 60 != 8)
      {
LABEL_9:
        sub_24E88D2AC(&v22);
LABEL_12:
        LOBYTE(v18) = 1;
        goto LABEL_13;
      }

      v16 = *(&v24 + 1) | *(&v25 + 1);
      v17 = *(&v23 + 1) | v23 | *(&v22 + 1);
      if (v21 != 0x8000000000000000 || v16 | *&v20[0] | v24 | v17)
      {
        if (v21 == 0x8000000000000000 && *&v20[0] == 4)
        {
          v18 = v16 | v24 | v17;
          if (!v18)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_9;
      }
    }

    else if (LOBYTE(v20[0]) != 1)
    {
      goto LABEL_12;
    }

    LOBYTE(v18) = 0;
LABEL_13:
    *(v9 + qword_27F2226A8) = v18;
  }

  *a5 = v7;
}

uint64_t sub_24E94D348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  sub_24F929C28();

  sub_24F928FE8();
  sub_24F929BF8();

  v4 = sub_24F929C18();

  v5 = sub_24EB46264(a1, v4, "GameStoreKit/ReviewsDiffablePageContentPresenter.swift", 54, 2);

  return v5;
}

uint64_t sub_24E94D438(uint64_t a1, uint64_t a2)
{
  sub_24E94E17C(a1, &v6);
  if (v7)
  {
    sub_24E612B0C(&v6, v8);
    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    sub_24E643A9C(v8, &v6);
    v3 = sub_24EB462B0(&v6, a2, "GameStoreKit/ReviewsDiffablePageContentPresenter.swift", 54, 2);

    sub_24E601704(&v6, &qword_27F222710, &unk_24F96A690);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v3;
  }

  else
  {
    sub_24E601704(&v6, &qword_27F2129B0, &unk_24F945320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226F8, &qword_24F96A680);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222700, &qword_24F96A688);
    sub_24E94E1EC();
    swift_allocError();
    *v5 = 2;
    return sub_24F92A978();
  }
}

uint64_t sub_24E94D660(void (*a1)(void, void), void (*a2)(void, void), void (*a3)(void, void), void (*a4)(void, void, double))
{

  sub_24E601704(v4 + qword_27F39C7D0, &qword_27F228530, &unk_24F93C6E0);

  a1(*(v4 + qword_27F22F1A8), *(v4 + qword_27F22F1A8 + 8));
  a2(*(v4 + qword_27F22F1B0), *(v4 + qword_27F22F1B0 + 8));
  a3(*(v4 + qword_27F22F1B8), *(v4 + qword_27F22F1B8 + 8));
  v9 = sub_24E824448(*(v4 + qword_27F22F1C0), *(v4 + qword_27F22F1C0 + 8));
  a4(*(v4 + qword_27F22F1C8), *(v4 + qword_27F22F1C8 + 8), v9);

  sub_24E94E128(v4 + qword_27F39C788);

  sub_24E601704(v4 + qword_27F22F1E0, &qword_27F2226F0, &unk_24F96A670);
  sub_24E601704(v4 + qword_27F22F1E8, &qword_27F2226F0, &unk_24F96A670);
  return v4;
}

uint64_t ReviewsDiffablePageContentPresenter.__deallocating_deinit()
{
  sub_24E94D660(sub_24E94E5C8, sub_24E94E5C8, sub_24E94E5C8, sub_24E94E5C8);

  return swift_deallocClassInstance();
}

void sub_24E94D92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_24E824448(a10, a11);
  sub_24E824448(a6, a7);
  sub_24E824448(a4, a5);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_24E94D994(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v32 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = v10 | (v8 << 6);
      sub_24E65864C(*(a1 + 48) + 40 * v11, &v29);
      *(&v31 + 1) = *(*(a1 + 56) + 8 * v11);
      v28[1] = v30;
      v28[2] = v31;
      v28[0] = v29;
      v12 = *(&v31 + 1);
      if ((*(*(&v31 + 1) + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints + 1) & 0x40) == 0)
      {
        break;
      }

      sub_24E601704(v28, &qword_27F222718, &qword_24F9C4E00);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v26 = v30;
    v27 = v31;
    v25 = v29;
    v13 = *(v2 + 16);
    if (*(v2 + 24) <= v13)
    {

      sub_24E899884(v13 + 1, 1);
      v2 = v32;
    }

    else
    {
    }

    v14 = sub_24F92C7B8();
    v15 = v2 + 64;
    v16 = -1 << *(v2 + 32);
    v17 = v14 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v2 + 64 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v15 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_29;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v2 + 64 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    *(*(v2 + 56) + 8 * v19) = v12;
    ++*(v2 + 16);
  }

  while (v6);
LABEL_7:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_24E94DCA4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return v3;
}

uint64_t sub_24E94DCE4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24E94DD1C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E94DD64()
{
  sub_24E94E250(v0[2], v0[3], v0[4], v0[5]);
}

uint64_t sub_24E94DD94()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E94DDFC(uint64_t a1)
{
  sub_24E94E41C(a1, v1);
}

uint64_t sub_24E94DE54()
{

  return swift_deallocObject();
}

uint64_t sub_24E94DE8C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_24E643A9C(a1, v5);
  v3 = v2(v5);
  sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
  return v3;
}

uint64_t sub_24E94DEE8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_24E94DF50@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_24E94DFB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_24E94DFEC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_24E94E02C()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for ReviewsDiffablePageContentPresenter(uint64_t a1)
{
  result = qword_27F2226E0;
  if (!qword_27F2226E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E94E17C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E94E1EC()
{
  result = qword_27F222708;
  if (!qword_27F222708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222700, &qword_24F96A688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222708);
  }

  return result;
}

uint64_t sub_24E94E250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (!a2)
    {
LABEL_15:

      return a2;
    }

    v7 = Strong;
    ObjectType = swift_getObjectType();
    v9 = *(a2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId + 8);
    *&v21 = *(a2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId);
    *(&v21 + 1) = v9;
    v10 = *(a4 + 56);

    v10(&v21, ObjectType, a4);
    v12 = v11;

    v13 = swift_getObjectType();
    (*(v12 + 16))(v19, v13, v12);

    swift_unknownObjectRelease();
    v21 = v19[0];
    v22 = v19[1];
    v23 = v19[2];
    v24 = v20;
    if (v20 >> 60)
    {
      if (v20 >> 60 != 8)
      {
LABEL_10:
        sub_24E88D2AC(&v21);
        v14 = v7;
LABEL_13:
        LOBYTE(v17) = 1;
        goto LABEL_14;
      }

      v14 = v7;
      v15 = *(&v23 + 1) | *(&v24 + 1);
      v16 = *(&v22 + 1) | v22 | *(&v21 + 1);
      if (v20 != 0x8000000000000000 || v15 | *&v19[0] | v23 | v16)
      {
        if (v20 == 0x8000000000000000 && *&v19[0] == 4)
        {
          v17 = v15 | v23 | v16;
          if (!v17)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_10;
      }
    }

    else
    {
      v14 = v7;
      if (LOBYTE(v19[0]) != 1)
      {
        goto LABEL_13;
      }
    }

    LOBYTE(v17) = 0;
LABEL_14:
    *(v14 + qword_27F2226A8) = v17;
    goto LABEL_15;
  }

  return a2;
}

uint64_t sub_24E94E41C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + qword_27F2226A8) == 1 || *(a1 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_alwaysAllowReviews) == 1)
    {
    }

    else
    {
      v4 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;
      swift_beginAccess();

      sub_24E94D994(v5);
      v7 = v6;

      *(a1 + v4) = v7;
    }
  }

  return a1;
}

uint64_t objectdestroy_9Tm_0(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return swift_deallocObject();
}

unint64_t SearchOrigin.rawValue.getter()
{
  result = 0x676E69646E657274;
  switch(*v0)
  {
    case 1:
      result = 0x6574736567677573;
      break;
    case 2:
      result = 0x73746E65636572;
      break;
    case 3:
      result = 0x73746E6968;
      break;
    case 4:
      result = 0x6C616E7265747865;
      break;
    case 5:
      result = 0x7463416B63697571;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 7630960;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 0xA:
      result = 0x7478655472657375;
      break;
    case 0xB:
      result = 0x6570795472657375;
      break;
    case 0xC:
      result = 0x6E694874736F6867;
      break;
    case 0xD:
      result = 0x6F54646564697567;
      break;
    case 0xE:
      result = 0x726142626174;
      break;
    default:
      return result;
  }

  return result;
}

void SearchOrigin.jsRepresentation(in:)(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x676E69646E657274;
  switch(*v1)
  {
    case 1:
      v3 = 0x6574736567677573;
      v2 = 0xE900000000000064;
      break;
    case 2:
      v2 = 0xE700000000000000;
      v3 = 0x73746E65636572;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x73746E6968;
      break;
    case 4:
      v2 = 0xEB000000006C7255;
      v3 = 0x6C616E7265747865;
      break;
    case 5:
      v2 = 0xEB000000006E6F69;
      v3 = 0x7463416B63697571;
      break;
    case 6:
      v3 = 0xD000000000000010;
      v2 = 0x800000024FA40380;
      break;
    case 7:
      v2 = 0xE300000000000000;
      v3 = 7630960;
      break;
    case 8:
      v2 = 0x800000024FA403A0;
      v3 = 0xD000000000000013;
      break;
    case 9:
      v2 = 0x800000024FA403C0;
      v3 = 0xD000000000000014;
      break;
    case 0xA:
      v3 = 0x7478655472657375;
      break;
    case 0xB:
      v2 = 0xED0000746E694864;
      v3 = 0x6570795472657375;
      break;
    case 0xC:
      v2 = 0xE900000000000074;
      v3 = 0x6E694874736F6867;
      break;
    case 0xD:
      v3 = 0x6F54646564697567;
      v2 = 0xEB000000006E656BLL;
      break;
    case 0xE:
      v2 = 0xE600000000000000;
      v3 = 0x726142626174;
      break;
    default:
      break;
  }

  v4 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v4;
  *a1 = v3;
  a1[1] = v2;
}

GameStoreKit::SearchOrigin_optional __swiftcall SearchOrigin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24E94EA5C()
{
  v0 = SearchOrigin.rawValue.getter();
  v2 = v1;
  if (v0 == SearchOrigin.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24F92CE08();
  }

  return v5 & 1;
}

unint64_t sub_24E94EAFC()
{
  result = qword_27F222728;
  if (!qword_27F222728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222728);
  }

  return result;
}

uint64_t sub_24E94EB50()
{
  sub_24F92D068();
  SearchOrigin.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E94EBB8(uint64_t a1)
{
  SearchOrigin.rawValue.getter();
  sub_24F92B218();
}

uint64_t sub_24E94EC1C()
{
  sub_24F92D068();
  SearchOrigin.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24E94EC8C@<X0>(unint64_t *a1@<X8>)
{
  result = SearchOrigin.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SearchOrigin(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchOrigin(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Brick.artwork.getter()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  if (v1 >> 62)
  {
    result = sub_24F92C738();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x253052270](0, v1);
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  __break(1u);
  return result;
}

uint64_t Brick.__allocating_init(id:isMediaDark:isRTLMediaDark:artworks:rtlArtwork:accessibilityLabel:shortEditorialDescription:caption:title:subtitle:collectionIcons:editorialDisplayOptions:clickAction:shelfBackground:personalizationStyle:originalModel:flowPreviewActionsConfiguration:impressionMetrics:artworkSafeArea:textSafeArea:backgroundColor:placementStyle:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 *a17, uint64_t a18, __int128 *a19, char *a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 *a24, __int128 *a25, uint64_t a26, char *a27)
{
  v81 = a8;
  v80 = a7;
  v79 = a6;
  v73 = a5;
  v78 = a4;
  v77 = a2;
  v63 = a1;
  v85 = a22;
  v84 = a21;
  v74 = a9;
  v64 = a27;
  v86 = a26;
  v72 = a23;
  v83 = a18;
  v82 = a16;
  v62 = sub_24F91F6B8();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);

  v29 = swift_allocObject();
  v71 = *a17;
  v70 = a17[1];
  v69 = a17[2];
  v68 = a17[3];
  v67 = a17[4];
  v66 = a17[5];
  v65 = a17[6];
  v30 = *a19;
  v75 = a19[1];
  v76 = v30;
  v31 = *(a19 + 16);
  v32 = v63;
  v33 = *a20;
  v34 = a24[1];
  v92 = *a24;
  v93 = v34;
  *v94 = a24[2];
  *&v94[10] = *(a24 + 42);
  v35 = a25[1];
  v95 = *a25;
  v36 = a25[2];
  v96 = v35;
  *v97 = v36;
  *&v97[10] = *(a25 + 42);
  v37 = *v64;
  v38 = v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_originalModel;
  *v38 = 0u;
  *(v38 + 16) = 0u;
  v39 = v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_id;
  *(v38 + 32) = 0;
  sub_24E60169C(v32, &v89, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v90 + 1))
  {
    v40 = v90;
    *v39 = v89;
    *(v39 + 16) = v40;
    *(v39 + 32) = v91;
  }

  else
  {
    sub_24F91F6A8();
    v41 = v31;
    v42 = sub_24F91F668();
    v43 = v33;
    v45 = v44;
    (*(v61 + 8))(v28, v62);
    v87 = v42;
    v31 = v41;
    v88 = v45;
    v33 = v43;
    sub_24F92C7F8();
    sub_24E601704(&v89, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v32, &qword_27F235830, &qword_24F93B8C0);
  sub_24E6009C8(v72, v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  *(v29 + 16) = v78;
  *(v29 + 24) = v77;
  v46 = v80;
  *(v29 + 32) = v79;
  *(v29 + 40) = v46;
  v47 = v74;
  *(v29 + 48) = v81;
  *(v29 + 56) = v47;
  *(v29 + 64) = 0;
  *(v29 + 72) = 0;
  v48 = OBJC_IVAR____TtC12GameStoreKit5Brick_caption;
  v49 = sub_24F91F008();
  v50 = *(*(v49 - 8) + 56);
  v50(v29 + v48, 1, 1, v49);
  v50(v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_title, 1, 1, v49);
  v50(v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_subtitle, 1, 1, v49);
  *(v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_collectionIcons) = v82;
  v51 = (v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions);
  *v51 = v71;
  v51[1] = v70;
  v51[2] = v69;
  v51[3] = v68;
  v51[4] = v67;
  v51[5] = v66;
  v51[6] = v65;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_clickAction) = v83;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_personalizationStyle) = v33;
  swift_beginAccess();
  sub_24E951B7C(v84, v38);
  swift_endAccess();
  v52 = v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground;
  v53 = v75;
  *v52 = v76;
  *(v52 + 16) = v53;
  *(v52 + 32) = v31;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_flowPreviewActionsConfiguration) = v85;
  v54 = (v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_artworkSafeArea);
  v55 = v93;
  *v54 = v92;
  v54[1] = v55;
  v54[2] = *v94;
  *(v54 + 42) = *&v94[10];
  v56 = (v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_textSafeArea);
  v57 = v96;
  v58 = *v97;
  *v56 = v95;
  v56[1] = v57;
  v56[2] = v58;
  *(v56 + 42) = *&v97[10];
  *(v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_backgroundColor) = v86;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_placementStyle) = v37;
  return v29;
}

uint64_t Brick.init(id:isMediaDark:isRTLMediaDark:artworks:rtlArtwork:accessibilityLabel:shortEditorialDescription:caption:title:subtitle:collectionIcons:editorialDisplayOptions:clickAction:shelfBackground:personalizationStyle:originalModel:flowPreviewActionsConfiguration:impressionMetrics:artworkSafeArea:textSafeArea:backgroundColor:placementStyle:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 *a17, uint64_t a18, __int128 *a19, char *a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 *a24, __int128 *a25, uint64_t a26, char *a27)
{
  v28 = v27;
  v77 = a8;
  v76 = a7;
  v75 = a6;
  v63 = a5;
  v74 = a4;
  v73 = a2;
  v62 = a1;
  v83 = a22;
  v82 = a21;
  v72 = a9;
  v61 = a27;
  v84 = a26;
  v64 = a23;
  v81 = a18;
  v80 = a16;
  v60 = sub_24F91F6B8();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);

  v71 = *a17;
  v70 = a17[1];
  v69 = a17[2];
  v68 = a17[3];
  v67 = a17[4];
  v66 = a17[5];
  v65 = a17[6];
  v31 = *a19;
  v78 = a19[1];
  v79 = v31;
  v32 = *(a19 + 16);
  v33 = *a20;
  v34 = v62;
  v35 = a24[1];
  v93 = *a24;
  v94 = v35;
  *v95 = a24[2];
  *&v95[10] = *(a24 + 42);
  v36 = a25[1];
  v96 = *a25;
  v97 = v36;
  *v98 = a25[2];
  *&v98[10] = *(a25 + 42);
  v37 = *v61;
  v38 = v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_originalModel;
  *v38 = 0u;
  *(v38 + 16) = 0u;
  *(v38 + 32) = 0;
  sub_24E60169C(v34, &v87, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v88 + 1))
  {
    v90 = v87;
    v91 = v88;
    v92 = v89;
  }

  else
  {
    sub_24F91F6A8();
    v39 = v32;
    v40 = sub_24F91F668();
    v41 = v33;
    v43 = v42;
    (*(v59 + 8))(v30, v60);
    v85 = v40;
    v32 = v39;
    v86 = v43;
    v33 = v41;
    sub_24F92C7F8();
    sub_24E601704(&v87, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v34, &qword_27F235830, &qword_24F93B8C0);
  v44 = v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_id;
  v45 = v91;
  *v44 = v90;
  *(v44 + 16) = v45;
  *(v44 + 32) = v92;
  sub_24E6009C8(v64, v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  *(v28 + 16) = v74;
  *(v28 + 24) = v73;
  v46 = v76;
  *(v28 + 32) = v75;
  *(v28 + 40) = v46;
  v47 = v72;
  *(v28 + 48) = v77;
  *(v28 + 56) = v47;
  *(v28 + 64) = 0;
  *(v28 + 72) = 0;
  v48 = OBJC_IVAR____TtC12GameStoreKit5Brick_caption;
  v49 = sub_24F91F008();
  v50 = *(*(v49 - 8) + 56);
  v50(v28 + v48, 1, 1, v49);
  v50(v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_title, 1, 1, v49);
  v50(v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_subtitle, 1, 1, v49);
  *(v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_collectionIcons) = v80;
  v51 = (v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions);
  *v51 = v71;
  v51[1] = v70;
  v51[2] = v69;
  v51[3] = v68;
  v51[4] = v67;
  v51[5] = v66;
  v51[6] = v65;
  *(v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_clickAction) = v81;
  *(v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_personalizationStyle) = v33;
  swift_beginAccess();
  sub_24E951B7C(v82, v38);
  swift_endAccess();
  v52 = v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground;
  v53 = v78;
  *v52 = v79;
  *(v52 + 16) = v53;
  *(v52 + 32) = v32;
  *(v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_flowPreviewActionsConfiguration) = v83;
  v54 = (v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_artworkSafeArea);
  v55 = v94;
  *v54 = v93;
  v54[1] = v55;
  v54[2] = *v95;
  *(v54 + 42) = *&v95[10];
  v56 = (v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_textSafeArea);
  v57 = v97;
  *v56 = v96;
  v56[1] = v57;
  v56[2] = *v98;
  *(v56 + 42) = *&v98[10];
  *(v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_backgroundColor) = v84;
  *(v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_placementStyle) = v37;
  return v28;
}

uint64_t Brick.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Brick.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t Brick.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v173 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v166 = v156 - v5;
  v6 = sub_24F92AC28();
  v167 = *(v6 - 8);
  v168 = v6;
  MEMORY[0x28223BE20](v6);
  v157 = v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v158 = v156 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v163 = v156 - v14;
  MEMORY[0x28223BE20](v15);
  v170 = v156 - v16;
  v181 = sub_24F9285B8();
  v172 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v180 = v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v174 = v156 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v20 - 8);
  v171 = v156 - v21;
  v22 = sub_24F91F6B8();
  v178 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = v156 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_24F928388();
  v25 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v164 = v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v162 = v156 - v28;
  MEMORY[0x28223BE20](v29);
  v161 = v156 - v30;
  MEMORY[0x28223BE20](v31);
  v169 = v156 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = v156 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = v156 - v37;
  v182 = v2;
  v39 = v2 + OBJC_IVAR____TtC12GameStoreKit5Brick_originalModel;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  *(v39 + 32) = 0;
  v211 = a1;
  sub_24F928398();
  v40 = sub_24F928348();
  v165 = v12;
  if (v41)
  {
    *&v203 = v40;
    *(&v203 + 1) = v41;
  }

  else
  {
    sub_24F91F6A8();
    v43 = sub_24F91F668();
    v45 = v44;
    v178[1](v24, v22);
    *&v203 = v43;
    *(&v203 + 1) = v45;
  }

  sub_24F92C7F8();
  v42 = *(v25 + 8);
  v177 = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v178 = v42;
  (v42)(v38, v179);
  v46 = v182 + OBJC_IVAR____TtC12GameStoreKit5Brick_id;
  v47 = v182;
  v48 = v209;
  *v46 = v208;
  *(v46 + 16) = v48;
  *(v46 + 32) = v210;
  sub_24F929608();
  sub_24F928398();
  v49 = v173;
  v50 = v172 + 16;
  v176 = *(v172 + 16);
  v51 = v174;
  v176(v174, v173, v181);
  v52 = v171;
  sub_24F929548();
  sub_24E6009C8(v52, v47 + OBJC_IVAR____TtC12GameStoreKit5Brick_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v53 = v180;
  v54 = v181;
  v55 = v49;
  v56 = v176;
  v175 = v50;
  v176(v180, v55, v181);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219650, qword_24F974DB0);
  sub_24F928398();
  v56(v51, v53, v54);
  sub_24E705AFC();
  sub_24F929548();
  v57 = v182;
  *(v182 + 16) = v203;
  sub_24F928398();
  v58 = sub_24F928278();
  v59 = v179;
  (v178)(v35, v179);
  *(v57 + 24) = v58;
  sub_24F928398();
  v60 = sub_24F928348();
  v62 = v61;
  v63 = v178;
  (v178)(v35, v59);
  *(v57 + 32) = v60;
  *(v57 + 40) = v62;
  sub_24F928398();
  v64 = sub_24F928348();
  v66 = v65;
  (v63)(v35, v59);
  *(v57 + 48) = v64;
  *(v57 + 56) = v66;
  v67 = type metadata accessor for Artwork(0);
  sub_24F928398();
  v176(v174, v180, v181);
  v156[1] = sub_24E952434(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v156[2] = v67;
  sub_24F929548();
  *(v57 + 64) = v203;
  sub_24F928398();
  LOBYTE(v64) = sub_24F928278();
  v171 = v35;
  v68 = v178;
  (v178)(v35, v59);
  *(v57 + 72) = v64;
  v69 = v169;
  sub_24F928398();
  v70 = sub_24F928348();
  v72 = v71;
  (v68)(v69, v59);
  v73 = v68;
  v160 = objc_opt_self();
  v74 = [v160 systemFontOfSize_];
  v75 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
  v76 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
  v77 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

  *&v203 = 10;
  *(&v203 + 1) = 0xE100000000000000;
  *&v204 = v74;
  *(&v204 + 1) = v75;
  *&v205 = 161644770;
  *(&v205 + 1) = 0xA400000000000000;
  *&v206 = v76;
  *(&v206 + 1) = 606245;
  *&v207 = 0xE300000000000000;
  *(&v207 + 1) = v77;
  if (v72)
  {
    v200 = v205;
    v201 = v206;
    v202 = v207;
    v198 = v203;
    v199 = v204;
    v78 = objc_allocWithZone(type metadata accessor for NqmlAttributedStringGenerator(0));
    v79 = sub_24ECB3C7C(v70, v72, &v198);
    v80 = v170;
    sub_24ECB3F40(v170);

    v81 = 0;
  }

  else
  {
    sub_24E951D6C(&v203);
    v81 = 1;
    v80 = v170;
  }

  v82 = sub_24F91F008();
  v83 = *(v82 - 8);
  v84 = *(v83 + 56);
  v169 = (v83 + 56);
  v170 = v84;
  (v84)(v80, v81, 1, v82);
  sub_24E6009C8(v80, v182 + OBJC_IVAR____TtC12GameStoreKit5Brick_caption, &qword_27F215340, &qword_24F943530);
  v85 = v161;
  sub_24F928398();
  v159 = sub_24F928348();
  v87 = v86;
  (v73)(v85, v179);
  v88 = v160;
  v89 = [v160 systemFontOfSize_];
  v90 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
  v91 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
  v92 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

  *&v198 = 10;
  *(&v198 + 1) = 0xE100000000000000;
  *&v199 = v89;
  *(&v199 + 1) = v90;
  *&v200 = 161644770;
  *(&v200 + 1) = 0xA400000000000000;
  *&v201 = v91;
  *(&v201 + 1) = 606245;
  *&v202 = 0xE300000000000000;
  *(&v202 + 1) = v92;
  if (v87)
  {
    v195 = v200;
    v196 = v201;
    v197 = v202;
    v193 = v198;
    v194 = v199;
    v93 = objc_allocWithZone(type metadata accessor for NqmlAttributedStringGenerator(0));
    v94 = sub_24ECB3C7C(v159, v87, &v193);
    v95 = v163;
    sub_24ECB3F40(v163);

    v96 = 0;
  }

  else
  {
    sub_24E951D6C(&v198);
    v96 = 1;
    v95 = v163;
  }

  (v170)(v95, v96, 1, v82);
  sub_24E6009C8(v95, v182 + OBJC_IVAR____TtC12GameStoreKit5Brick_title, &qword_27F215340, &qword_24F943530);
  v97 = v162;
  sub_24F928398();
  v163 = sub_24F928348();
  v99 = v98;
  (v73)(v97, v179);
  v100 = [v88 systemFontOfSize_];
  v101 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
  v102 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
  v103 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

  *&v193 = 10;
  *(&v193 + 1) = 0xE100000000000000;
  *&v194 = v100;
  *(&v194 + 1) = v101;
  *&v195 = 161644770;
  *(&v195 + 1) = 0xA400000000000000;
  *&v196 = v102;
  *(&v196 + 1) = 606245;
  *&v197 = 0xE300000000000000;
  *(&v197 + 1) = v103;
  if (v99)
  {
    v185[0] = v195;
    v185[1] = v196;
    v185[2] = v197;
    v183 = v193;
    v184 = v194;
    v104 = objc_allocWithZone(type metadata accessor for NqmlAttributedStringGenerator(0));
    v105 = sub_24ECB3C7C(v163, v99, &v183);
    v106 = v165;
    sub_24ECB3F40(v165);

    v107 = 0;
    v108 = v181;
    v109 = v174;
    v110 = v167;
  }

  else
  {
    sub_24E951D6C(&v193);
    v107 = 1;
    v108 = v181;
    v109 = v174;
    v110 = v167;
    v106 = v165;
  }

  (v170)(v106, v107, 1, v82);
  sub_24E6009C8(v106, v182 + OBJC_IVAR____TtC12GameStoreKit5Brick_subtitle, &qword_27F215340, &qword_24F943530);
  v111 = v164;
  sub_24F928398();
  v112 = v166;
  sub_24F9282B8();
  v113 = v112;
  (v178)(v111, v179);
  v114 = v168;
  v115 = (*(v110 + 48))(v112, 1, v168);
  v116 = v176;
  if (v115 == 1)
  {
    sub_24E601704(v113, &qword_27F2213B0, &qword_24F965EC0);
    v117 = 0;
    v118 = v180;
  }

  else
  {
    v119 = v158;
    (*(v110 + 32))(v158, v113, v114);
    (*(v110 + 16))(v157, v119, v114);
    v118 = v180;
    v176(v109, v180, v108);
    v117 = sub_24F92B6A8();
    v116 = v176;
    (*(v110 + 8))(v119, v114);
  }

  *(v182 + OBJC_IVAR____TtC12GameStoreKit5Brick_collectionIcons) = v117;
  sub_24F928398();
  v116(v109, v118, v108);
  sub_24E951DC0();
  sub_24F929548();
  v120 = v190 | ((v191 | (v192 << 16)) << 32);
  if (v190 == 2)
  {
    if (qword_27F2110F8 != -1)
    {
      swift_once();
    }

    LOBYTE(v120) = dword_27F23E728;
    LOBYTE(v121) = BYTE1(dword_27F23E728);
    LOBYTE(v122) = BYTE2(dword_27F23E728);
    LOBYTE(v123) = HIBYTE(dword_27F23E728);
    LOBYTE(v124) = byte_27F23E72C;
    LOBYTE(v125) = byte_27F23E72D;
    LOBYTE(v126) = byte_27F23E72E;
  }

  else
  {
    v121 = (v120 >> 8) & 1;
    v122 = (v120 >> 16) & 1;
    v123 = (v120 >> 24) & 1;
    v124 = HIDWORD(v120) & 1;
    v125 = (v120 >> 40) & 1;
    v126 = HIWORD(v120) & 1;
  }

  v127 = v182;
  v128 = (v182 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions);
  *v128 = v120 & 1;
  v128[1] = v121;
  v128[2] = v122;
  v128[3] = v123;
  v128[4] = v124;
  v128[5] = v125;
  v128[6] = v126;
  type metadata accessor for Action(0);
  v129 = v171;
  sub_24F928398();
  v130 = static Action.tryToMakeInstance(byDeserializing:using:)(v129, v180);
  v131 = v178;
  v132 = v179;
  v133 = v177;
  (v178)(v129, v179);
  v177 = v133;
  v178 = v131;
  *(v127 + OBJC_IVAR____TtC12GameStoreKit5Brick_clickAction) = v130;
  sub_24F928398();
  sub_24E951E14();
  sub_24F928208();
  (v131)(v129, v132);
  *(v127 + OBJC_IVAR____TtC12GameStoreKit5Brick_personalizationStyle) = v183;
  sub_24F928398();
  v134 = v180;
  v135 = v176;
  v176(v109, v180, v181);
  sub_24EAFF164(v129, v109, &v183);
  v136 = v185[0];
  v137 = v127 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground;
  v138 = v184;
  *v137 = v183;
  *(v137 + 16) = v138;
  *(v137 + 32) = v136;
  type metadata accessor for FlowPreviewActionsConfiguration();
  sub_24F928398();
  v139 = v134;
  v140 = v181;
  v135(v109, v139, v181);
  sub_24E952434(&qword_27F222748, type metadata accessor for FlowPreviewActionsConfiguration, &protocol conformance descriptor for FlowPreviewActionsConfiguration);
  sub_24F929548();
  v141 = v182;
  *(v182 + OBJC_IVAR____TtC12GameStoreKit5Brick_flowPreviewActionsConfiguration) = v183;
  v142 = v211;
  sub_24F928398();
  v143 = v180;
  v176(v109, v180, v140);
  sub_24E951E68();
  sub_24F929548();
  v144 = (v141 + OBJC_IVAR____TtC12GameStoreKit5Brick_artworkSafeArea);
  v145 = v188;
  *v144 = v187;
  v144[1] = v145;
  v144[2] = v189[0];
  *(v144 + 42) = *(v189 + 10);
  sub_24F928398();
  v146 = v143;
  v147 = v181;
  v176(v109, v146, v181);
  sub_24F929548();
  v148 = v141;
  v149 = (v141 + OBJC_IVAR____TtC12GameStoreKit5Brick_textSafeArea);
  v150 = v184;
  *v149 = v183;
  v149[1] = v150;
  v149[2] = v185[0];
  *(v149 + 42) = *(v185 + 10);
  sub_24F928398();
  v151 = JSONObject.appStoreColor.getter();
  v152 = v178;
  v153 = v179;
  (v178)(v129, v179);
  *(v148 + OBJC_IVAR____TtC12GameStoreKit5Brick_backgroundColor) = v151;
  sub_24F928398();
  sub_24E951EBC();
  sub_24F928208();
  v154 = *(v172 + 8);
  v154(v173, v147);
  (v152)(v142, v153);
  (v152)(v129, v153);
  v154(v180, v147);
  result = v182;
  *(v182 + OBJC_IVAR____TtC12GameStoreKit5Brick_placementStyle) = v186;
  return result;
}

uint64_t Brick.accessibilityLabel.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Brick.shortEditorialDescription.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void Brick.editorialDisplayOptions.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions + 1);
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions + 2);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions + 3);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions + 4);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions + 5);
  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions + 6);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

uint64_t Brick.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t Brick.originalModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit5Brick_originalModel;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F222730, &unk_24F9E1470);
}

uint64_t Brick.originalModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit5Brick_originalModel;
  swift_beginAccess();
  sub_24E951B7C(a1, v1 + v3);
  return swift_endAccess();
}

double Brick.shelfBackground.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 32);
  *(a1 + 32) = v8;
  return sub_24E951F10(v4, v5, v6, v7, v8);
}

__n128 Brick.shelfBackground.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v9;
  v10 = *(v4 + 32);
  *(v4 + 32) = v3;
  sub_24E951FEC(v5, v6, v7, v8, v10);
  return result;
}

uint64_t Brick.brickTitle.getter()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

__n128 Brick.artworkSafeArea.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_artworkSafeArea;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_artworkSafeArea + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_artworkSafeArea);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

__n128 Brick.textSafeArea.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_textSafeArea;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_textSafeArea + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_textSafeArea);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

void *Brick.backgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_backgroundColor);
  v2 = v1;
  return v1;
}

uint64_t Brick.deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_caption, &qword_27F215340, &qword_24F943530);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_title, &qword_27F215340, &qword_24F943530);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_subtitle, &qword_27F215340, &qword_24F943530);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_originalModel, &qword_27F222730, &unk_24F9E1470);
  sub_24E951FEC(*(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground), *(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground + 32));

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_id);

  return v0;
}