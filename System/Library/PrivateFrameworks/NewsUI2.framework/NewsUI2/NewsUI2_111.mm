uint64_t sub_21934890C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2193451B0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21934897C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2193451B0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2193489FC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_219348A64(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  if (v2 == 1)
  {
    swift_getObjectType();
    swift_getKeyPath();
    sub_219BF6A94();
  }

  else
  {
    v6 = [objc_opt_self() currentDevice];
    [v6 userInterfaceIdiom];
  }

  return v5;
}

uint64_t sub_219348B64@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_219348A64(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_219348BAC()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8970);
  __swift_project_value_buffer(v0, qword_27CCD8970);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534(0);
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_219348E00()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8988);
  __swift_project_value_buffer(v0, qword_27CCD8988);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_219348FAC()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD89A0);
  __swift_project_value_buffer(v0, qword_27CCD89A0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534(0);
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_2193491FC()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD89B8);
  __swift_project_value_buffer(v0, qword_27CCD89B8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_2193493A4()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD89D0);
  __swift_project_value_buffer(v0, qword_27CCD89D0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

void sub_219349614(uint64_t a1, uint64_t a2, char a3)
{
  v82 = a2;
  v83 = a1;
  sub_21934AB64(0, qword_280ED0FF8, type metadata accessor for MagazineKnobsConfig);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v70 - v5;
  sub_21934AB64(0, qword_280ED37B0, type metadata accessor for MagazineFeedConfig);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v70 - v8;
  sub_21934AB64(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v70 - v11;
  v13 = type metadata accessor for MagazineFeedConfig(0);
  v80 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v70 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = (&v70 - v20);
  v22 = type metadata accessor for MagazineConfig(0);
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  v75 = &v70 - v24;
  MEMORY[0x28223BE20](v25);
  v28 = &v70 - v27;
  v81 = v6;
  v79 = v29;
  if (a3)
  {
    v30 = v83 + OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_contentConfig;
    sub_21934AC18();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_219C09BA0;
    v32 = swift_allocObject();
    *(v32 + 16) = v82;
    *(v31 + 32) = v32 | 0xE000000000000000;
    v33 = v80;
    v34 = MEMORY[0x277CC9578];
    sub_21934AAF8(v30 + v13[5], v12, &qword_280EE9C40, MEMORY[0x277CC9578]);
    sub_21934AAF8(v30 + v13[7], v21 + v13[7], &qword_280E91B80, MEMORY[0x277D32028]);
    *v21 = v31;
    sub_21934AAF8(v12, v21 + v13[5], &qword_280EE9C40, v34);

    sub_2189DD39C(v12);
    v35 = (v21 + v13[6]);
    v36 = MEMORY[0x277D84F90];
    *v35 = MEMORY[0x277D84F90];
    v35[1] = v36;
    sub_21934AA90(v21, v9, type metadata accessor for MagazineFeedConfig);
    (*(v33 + 56))(v9, 0, 1, v13);
    v37 = v81;
    sub_21934AA90(v30 + *(v79 + 20), v81, type metadata accessor for MagazineKnobsConfig);
    v38 = type metadata accessor for MagazineKnobsConfig(0);
    (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
    sub_21937C038(v9, v37, v28);
    sub_21934ABB8(v21, type metadata accessor for MagazineFeedConfig);
    goto LABEL_59;
  }

  v72 = v18;
  v73 = v13;
  v74 = v9;
  v39 = OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_contentConfig;
  v41 = v82;
  v40 = v83;
  v71 = v26;
  sub_21934AA90(v83 + OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_contentConfig, v26, type metadata accessor for MagazineConfig);
  sub_21934AA90(v40 + v39, v15, type metadata accessor for MagazineFeedConfig);
  v42 = *(v40 + v39);
  v43 = *(v42 + 16);
  v44 = MEMORY[0x277D84F90];
  v45 = v15;
  if (!v43)
  {
    goto LABEL_58;
  }

  v46 = 0;
  v47 = 0x69726F6765746163;
  v84 = *(v42 + 16);
  v85 = v42 + 32;
  v77 = 0x8000000219CD6680;
  v78 = 0x8000000219CD66C0;
  v76 = 0x8000000219CD66A0;
  v70 = v43 - 1;
  v48 = v41;
LABEL_5:
  v82 = v44;
  v49 = v46;
  while (2)
  {
    if (v49 >= *(v42 + 16))
    {
      __break(1u);
      return;
    }

    v50 = *(v85 + 8 * v49);
    v51 = v49 + 1;

    v52 = 0xEA00000000007365;
    v53 = sub_219151874(v50);
    v54 = v47;
    switch(v53)
    {
      case 1:
        v54 = 0xD000000000000010;
        v52 = v76;
        break;
      case 2:
        v54 = 0x6465727574616566;
        v52 = 0xEF656C6369747241;
        break;
      case 3:
        v54 = 0x6465727574616566;
        v52 = 0xED00006575737349;
        break;
      case 4:
        v54 = 0xD000000000000014;
        v52 = v77;
        break;
      case 5:
        v54 = 0x697A6167614D796DLL;
        v52 = 0xEB0000000073656ELL;
        break;
      case 6:
        v52 = 0xE800000000000000;
        v54 = 0x657573734977656ELL;
        break;
      case 7:
        v52 = 0xE700000000000000;
        v54 = 0x6C6C6177796170;
        break;
      case 8:
        v54 = 0xD000000000000011;
        v52 = v78;
        break;
      case 9:
        v52 = 0xE500000000000000;
        v54 = 0x6369706F74;
        break;
      case 10:
        v52 = 0xE800000000000000;
        v54 = 0x676E69646E657274;
        break;
      case 11:
        v54 = 0x7542664F74736562;
        v52 = 0xEC000000656C646ELL;
        break;
      case 12:
        v54 = 0x657061707377656ELL;
        v52 = 0xE900000000000072;
        break;
      case 13:
        v52 = 0xE700000000000000;
        v54 = 0x64657461727563;
        break;
      default:
        break;
    }

    v55 = v47;
    v56 = v47;
    v57 = 0xEA00000000007365;
    switch(v48)
    {
      case 1:
        v57 = v76;
        if (v54 == 0xD000000000000010)
        {
          goto LABEL_46;
        }

        goto LABEL_47;
      case 2:
        v57 = 0xEF656C6369747241;
        if (v54 != 0x6465727574616566)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 3:
        v57 = 0xED00006575737349;
        if (v54 != 0x6465727574616566)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 4:
        v57 = v77;
        if (v54 != 0xD000000000000014)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 5:
        v57 = 0xEB0000000073656ELL;
        if (v54 != 0x697A6167614D796DLL)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 6:
        v57 = 0xE800000000000000;
        if (v54 != 0x657573734977656ELL)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 7:
        v57 = 0xE700000000000000;
        if (v54 != 0x6C6C6177796170)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 8:
        v57 = v78;
        if (v54 != 0xD000000000000011)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 9:
        v57 = 0xE500000000000000;
        if (v54 != 0x6369706F74)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 10:
        v57 = 0xE800000000000000;
        v56 = 0x676E69646E657274;
        goto LABEL_45;
      case 11:
        v57 = 0xEC000000656C646ELL;
        if (v54 != 0x7542664F74736562)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 12:
        v57 = 0xE900000000000072;
        if (v54 != 0x657061707377656ELL)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 13:
        v57 = 0xE700000000000000;
        if (v54 != 0x64657461727563)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      default:
LABEL_45:
        if (v54 != v56)
        {
          goto LABEL_47;
        }

LABEL_46:
        if (v52 != v57)
        {
LABEL_47:
          v58 = sub_219BF78F4();

          if (v58)
          {
            goto LABEL_53;
          }

          ++v49;
          v47 = v55;
          if (v84 == v51)
          {
            v44 = v82;
            goto LABEL_58;
          }

          continue;
        }

LABEL_53:
        v59 = swift_allocObject();
        *(v59 + 16) = v50;
        v44 = v82;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_2191F8B04(0, *(v44 + 2) + 1, 1, v44);
        }

        v61 = *(v44 + 2);
        v60 = *(v44 + 3);
        if (v61 >= v60 >> 1)
        {
          v44 = sub_2191F8B04((v60 > 1), v61 + 1, 1, v44);
        }

        v46 = v49 + 1;
        *(v44 + 2) = v61 + 1;
        *&v44[8 * v61 + 32] = v59 | 0xE000000000000000;
        v47 = v55;
        if (v70 != v49)
        {
          goto LABEL_5;
        }

LABEL_58:
        v63 = v72;
        v62 = v73;
        sub_21934AAF8(v45 + v73[5], v72 + v73[5], &qword_280EE9C40, MEMORY[0x277CC9578]);
        sub_21934AAF8(v45 + v62[7], v63 + v62[7], &qword_280E91B80, MEMORY[0x277D32028]);
        *v63 = v44;
        v64 = (v63 + v62[6]);
        v65 = MEMORY[0x277D84F90];
        *v64 = MEMORY[0x277D84F90];
        v64[1] = v65;
        sub_21934ABB8(v45, type metadata accessor for MagazineFeedConfig);
        v66 = v74;
        sub_21934AA90(v63, v74, type metadata accessor for MagazineFeedConfig);
        (*(v80 + 56))(v66, 0, 1, v62);
        v67 = v71;
        v68 = v81;
        sub_21934AA90(v71 + *(v79 + 20), v81, type metadata accessor for MagazineKnobsConfig);
        v69 = type metadata accessor for MagazineKnobsConfig(0);
        (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
        v28 = v75;
        sub_21937C038(v66, v68, v75);
        sub_21934ABB8(v63, type metadata accessor for MagazineFeedConfig);
        sub_21934ABB8(v67, type metadata accessor for MagazineConfig);
LABEL_59:
        sub_219AA2A10(v28);
        sub_21934ABB8(v28, type metadata accessor for MagazineConfig);
        return;
    }
  }
}

uint64_t sub_21934A1CC(void *a1, uint64_t a2, char a3)
{
  v12[0] = a2;
  sub_21934B46C(0, &qword_280E8C220, sub_21934AED4, &type metadata for MagazineTodayFeedGroupConfigProcessor.CodingKeys, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21934AED4();
  sub_219BF7B44();
  if (a3)
  {
    v18 = 1;
    v17 = 0;
    sub_21934AFD0();
    sub_219BF7834();
    if (!v3)
    {
      v12[1] = v12[0];
      v16 = 1;
      sub_21915A308();
LABEL_6:
      sub_219BF7834();
    }
  }

  else
  {
    v15 = 0;
    sub_21934AFD0();
    sub_219BF7834();
    if (!v3)
    {
      v14 = v12[0];
      v13 = 1;
      sub_21934B024();
      goto LABEL_6;
    }
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_21934A3F8(void *a1, char a2)
{
  sub_21934B46C(0, &qword_280E8C218, sub_21934B418, &type metadata for MagazineTodayFeedGroupConfigProcessor.Filter.CodingKeys, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21934B418();
  sub_219BF7B44();
  v11 = a2;
  sub_218CD67F4();
  sub_219BF7834();
  return (*(v6 + 8))(v8, v5);
}

void sub_21934A57C(char *a3@<X8>)
{
  v4 = sub_219BF7614();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_21934A5E0(uint64_t a1)
{
  v2 = sub_21934AED4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21934A61C(uint64_t a1)
{
  v2 = sub_21934AED4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21934A658(_BYTE *a1, _BYTE *a2, __n128 a3)
{
  if (*a1)
  {
    v3 = 0x6769666E6F63;
  }

  else
  {
    v3 = 0x7265746C6966;
  }

  if (*a2)
  {
    v4 = 0x6769666E6F63;
  }

  else
  {
    v4 = 0x7265746C6966;
  }

  if (v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_219BF78F4();
  }

  swift_bridgeObjectRelease_n();
  return v5 & 1;
}

uint64_t sub_21934A6D8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_21934A748(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_21934A79C(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_21934A814(uint64_t *a1@<X8>)
{
  v2 = 0x7265746C6966;
  if (*v1)
  {
    v2 = 0x6769666E6F63;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

void sub_21934A8F4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_21934A97C(uint64_t a1)
{
  v2 = sub_21934B418();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21934A9B8(uint64_t a1)
{
  v2 = sub_21934B418();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21934A9F4@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_21934B25C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_21934AA3C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_21934AC68(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_21934AA90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21934AAF8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_21934AB64(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_21934AB64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21934ABB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21934AC18()
{
  if (!qword_280E8BA80)
  {
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8BA80);
    }
  }
}

unint64_t sub_21934AC68(void *a1)
{
  sub_21934B46C(0, &qword_280E8C7F0, sub_21934AED4, &type metadata for MagazineTodayFeedGroupConfigProcessor.CodingKeys, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21934AED4();
  v9 = v8;
  sub_219BF7B34();
  if (!v1)
  {
    v15 = 0;
    sub_21934AF28();
    sub_219BF7734();
    if (v16)
    {
      v14 = 1;
      sub_21915A2B0();
      sub_219BF7734();
      (*(v5 + 8))(v7, v4);
      v9 = v11[1];
    }

    else
    {
      v12 = 1;
      sub_21934AF7C();
      sub_219BF7734();
      (*(v5 + 8))(v7, v4);
      v9 = v13;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_21934AED4()
{
  result = qword_280E994B0;
  if (!qword_280E994B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E994B0);
  }

  return result;
}

unint64_t sub_21934AF28()
{
  result = qword_280E99488;
  if (!qword_280E99488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99488);
  }

  return result;
}

unint64_t sub_21934AF7C()
{
  result = qword_280E99460;
  if (!qword_280E99460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99460);
  }

  return result;
}

unint64_t sub_21934AFD0()
{
  result = qword_280E99498;
  if (!qword_280E99498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99498);
  }

  return result;
}

unint64_t sub_21934B024()
{
  result = qword_280E99468;
  if (!qword_280E99468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99468);
  }

  return result;
}

unint64_t sub_21934B0AC()
{
  result = qword_27CC19058;
  if (!qword_27CC19058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19058);
  }

  return result;
}

unint64_t sub_21934B104()
{
  result = qword_27CC19060;
  if (!qword_27CC19060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19060);
  }

  return result;
}

unint64_t sub_21934B15C()
{
  result = qword_280E994A0;
  if (!qword_280E994A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E994A0);
  }

  return result;
}

unint64_t sub_21934B1B4()
{
  result = qword_280E994A8;
  if (!qword_280E994A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E994A8);
  }

  return result;
}

unint64_t sub_21934B208()
{
  result = qword_280E99490;
  if (!qword_280E99490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99490);
  }

  return result;
}

unint64_t sub_21934B25C(void *a1)
{
  sub_21934B46C(0, &qword_280E8C7E8, sub_21934B418, &type metadata for MagazineTodayFeedGroupConfigProcessor.Filter.CodingKeys, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21934B418();
  v9 = v8;
  sub_219BF7B34();
  if (!v1)
  {
    sub_218CD679C();
    sub_219BF7734();
    (*(v5 + 8))(v7, v4);
    v9 = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_21934B418()
{
  result = qword_280E99480;
  if (!qword_280E99480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99480);
  }

  return result;
}

void sub_21934B46C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_21934B4E8()
{
  result = qword_27CC19068;
  if (!qword_27CC19068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19068);
  }

  return result;
}

unint64_t sub_21934B540()
{
  result = qword_280E99470;
  if (!qword_280E99470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99470);
  }

  return result;
}

unint64_t sub_21934B598()
{
  result = qword_280E99478;
  if (!qword_280E99478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99478);
  }

  return result;
}

uint64_t sub_21934B5EC(uint64_t a1)
{
  v3 = MEMORY[0x277D84560];
  sub_21934C31C(0, &qword_280E8C098, MEMORY[0x277D6CCC0], MEMORY[0x277D84560]);
  sub_219BE26D4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  sub_21934C31C(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], v3);
  v5 = sub_219BE2644();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  v9 = (v8 + v7);
  v10 = sub_219BF5414();
  v12 = v11;
  v13 = sub_219BF5414();
  *v9 = v10;
  v9[1] = v12;
  v9[2] = v13;
  v9[3] = v14;
  (*(v6 + 104))(v9, *MEMORY[0x277D6CC88], v5);
  sub_219897824(MEMORY[0x277D84F90]);
  sub_219BE2654();
  *(v1 + 16) = v4;
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_21934B828()
{
  sub_21934C31C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v28 = *(v0 - 8);
  v1 = *(v28 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v29 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - v3;
  v5 = sub_219BE22F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WebLinkViewControllerType(0);
  v9 = swift_allocBox();
  sub_21934C31C(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_219BE2594();
  sub_219BE22A4();
  (*(v6 + 8))(v8, v5);
  swift_storeEnumTagMultiPayload();
  v31 = v9;
  v10 = v9 | 0xB000000000000000;
  v11 = sub_218DB24B0();
  v12 = *(v30 + 24);
  if (v11)
  {
    v13 = sub_219BDFA44();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    memset(v40, 0, 40);
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    v37 = v12;
    sub_2187B1990(v38, &v33, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (*(&v34 + 1))
    {
      sub_21875F93C(&v33, v35);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v15 = qword_280ED32D8;
      v14 = qword_280ED32E0;
      v16 = qword_280ED32E8;

      sub_2188202A8(v14);
      __swift_destroy_boxed_opaque_existential_1(v35);
    }

    else
    {
      sub_2187456AC(&v33, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v15 = qword_280ED32D8;
      v14 = qword_280ED32E0;
      v16 = qword_280ED32E8;

      sub_2188202A8(v14);
    }

    v32 = v10;
    v34 = 0u;
    v33 = 0u;
    v17 = v29;
    sub_2187B1990(v4, v29, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_21934C31C);
    sub_2187B1990(v40, v35, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v18 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v19 = (v1 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v19 + 47) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    sub_2189B4EAC(v17, v21 + v18);
    v22 = v21 + v19;
    v23 = v35[1];
    *v22 = v35[0];
    *(v22 + 16) = v23;
    *(v22 + 32) = v36;
    v24 = (v21 + v20);
    v25 = (v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v24 = 0;
    v24[1] = 0;
    *v25 = v15;
    v25[1] = v14;
    v25[2] = v16;

    sub_2188202A8(v14);
    sub_2186CF94C(0);
    sub_21934C380(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
    sub_219BEB464();

    sub_2187FABEC(v14, v16);
    sub_2187456AC(v38, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_2187456AC(v40, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_2187456AC(v4, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_21934C31C);
    sub_2187456AC(&v33, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_21870F240);
  }

  else
  {
    v40[0] = *(v30 + 24);
    *&v38[0] = v9 | 0xB000000000000000;
    sub_2186CF94C(0);
    sub_21934C380(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
    sub_219BEB484();
  }

  return 1;
}

uint64_t sub_21934C25C()
{
  sub_21934B828();
  sub_21870F240(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_21934C31C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21934C380(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_21934C3C8(void *a1)
{
  sub_21934C31C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_21934C4BC()
{
  v1 = sub_219BE1724();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &v14 - v7;
  v9 = [v0 type];
  if (!v9)
  {
    v10 = MEMORY[0x277D2F898];
LABEL_5:
    (*(v2 + 104))(v8, *v10, v1);
    v11 = [v0 identifier];
    sub_219BF5414();

    [v0 isPaid];
    (*(v2 + 16))(v4, v8, v1);
    v12 = [v0 topicTagIDs];
    sub_219BF5924();

    sub_219BE16F4();
    return (*(v2 + 8))(v8, v1);
  }

  if (v9 == 1)
  {
    v10 = MEMORY[0x277D2F8A0];
    goto LABEL_5;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for PaywallMagazineFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EA89A0;
  if (!qword_280EA89A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21934C778(uint64_t a1)
{
  sub_218B87670(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PaywallMagazineFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_218783DA0();
      if (v3 <= 0x3F)
      {
        sub_2186C709C(319, qword_280EB4590, &protocol descriptor for FeedPaywallConfigFactoryType, 1);
        if (v4 <= 0x3F)
        {
          sub_2186C709C(319, &unk_280EE6480, MEMORY[0x277D34EA8], 0);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21934C874(uint64_t a1)
{
  sub_219BE4864();
  sub_219BE3204();
  v1 = sub_219BE2E54();
  sub_219BE3064();

  sub_21870F240(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE30B4();
  v2 = sub_219BE31C4();

  return v2;
}

uint64_t sub_21934C9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a1;
  v51 = a3;
  sub_218C5FB88(0);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v52 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PaywallMagazineFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for PaywallMagazineFeedGroup(0) - 8;
  MEMORY[0x28223BE20](v49);
  v10 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PaywallMagazineFeedGroupConfigData(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeedPaywallConfig(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v17;
  v18 = type metadata accessor for PaywallMagazineFeedGroupEmitter(0);
  v47 = v18;
  swift_getObjectType();
  v19 = sub_219BE3F64();
  __swift_project_boxed_opaque_existential_1((a2 + *(v18 + 28)), *(a2 + *(v18 + 28) + 24));
  sub_218B87670(0);
  sub_219BEDD14();
  v20 = *(v12 + 36);
  sub_219AE8FA8(v19 & 1, &v14[v20], v17);
  v21 = sub_219BE4034();
  (*(*(v21 - 8) + 8))(&v14[v20], v21);
  v22 = sub_219BEDCA4();
  v24 = v23;
  v25 = sub_219BE47D4();
  v27 = v26;
  v54 = v22;
  v55 = v24;

  MEMORY[0x21CECC330](v25, v27);

  v50 = v54;
  v45 = a2;
  v46 = v55;
  v28 = v49;
  sub_219BEDCC4();
  v29 = *(v47 + 20);
  sub_21934DC70(a2 + v29, v8, type metadata accessor for PaywallMagazineFeedGroupKnobs);
  sub_2186F909C(0, &qword_280E919C0, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D321A0]);
  v31 = v30;
  sub_219BEE9B4();
  v33 = v32;
  v34 = *(*(v31 - 8) + 8);
  v34(v8, v31);
  sub_21934DC70(v45 + v29, v8, type metadata accessor for PaywallMagazineFeedGroupKnobs);
  sub_219BEE984();
  v36 = v35;
  v34(v8, v31);
  v37 = v48;
  sub_21934DC70(v48, v10 + v28[11], type metadata accessor for FeedPaywallConfig);
  v38 = v46;
  *v10 = v50;
  v10[1] = v38;
  v39 = v28[8];
  v40 = *MEMORY[0x277D32640];
  v41 = sub_219BEF554();
  (*(*(v41 - 8) + 104))(v10 + v39, v40, v41);
  *(v10 + v28[9]) = v33;
  *(v10 + v28[10]) = v36;
  sub_21934DC70(v10, v52, type metadata accessor for PaywallMagazineFeedGroup);
  type metadata accessor for MagazineFeedGroup(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_21934DD04(0, &qword_280EE6C48, sub_218C5FB88, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v42 = sub_219BE3014();
  sub_21934DDB0(v10, type metadata accessor for PaywallMagazineFeedGroup);
  sub_21934DDB0(v37, type metadata accessor for FeedPaywallConfig);
  return v42;
}

uint64_t sub_21934CEE8(uint64_t a1)
{
  type metadata accessor for PaywallMagazineFeedGroupEmitter(0);
  swift_getObjectType();
  return sub_219BE3F74();
}

void sub_21934CF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + *(type metadata accessor for PaywallMagazineFeedGroupEmitter(0) + 24));
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2187A913C;
  *(v10 + 24) = v8;
  v12[4] = sub_21934DCFC;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_218C1CBB4;
  v12[3] = &block_descriptor_114;
  v11 = _Block_copy(v12);

  [v9 fetchAppConfigurationIfNeededWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_21934D084(uint64_t a1, id a2, uint64_t (*a3)(void))
{
  if (a2)
  {
    v6 = a2;
    if (qword_280E8D920 != -1)
    {
      swift_once();
    }

    v7 = qword_280F617C8;
    v8 = sub_219BF61F4();
    sub_2186F20D4(0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_219C09BA0;
    sub_2186C709C(0, &qword_280E8B580, MEMORY[0x277D84948], 1);
    sub_219BF7484();
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_2186FC3BC();
    *(v9 + 32) = 0;
    *(v9 + 40) = 0xE000000000000000;
    sub_219BE5314("Error fetching app configuration while emitting magazine feed paywall group: %{public}@", 87, 2, &dword_2186C1000, v7, v8, v9);
  }

  if (!a1)
  {
    if (qword_280E8D920 != -1)
    {
      swift_once();
    }

    v10 = qword_280F617C8;
    v11 = sub_219BF61F4();
    sub_219BE5314("Failed to retrieve paywall configuration while emitting magazine feed paywall group.", 84, 2, &dword_2186C1000, v10, v11, MEMORY[0x277D84F90]);
  }

  return a3();
}

uint64_t sub_21934D254(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = v2;
  sub_21934DAD4(0);
  sub_219BE3204();
  sub_21934DC70(v2, &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PaywallMagazineFeedGroupEmitter);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_21934DB40(&v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6);
  *(v7 + ((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21934DBA4;
  *(v8 + 24) = v7;

  v9 = sub_219BE2E54();
  sub_218C5FB88(0);
  v10 = sub_219BE2F64();

  return v10;
}

uint64_t sub_21934D40C@<X0>(uint64_t *a1@<X8>)
{
  sub_218B87670(0);
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x7000000000000000;
  return result;
}

uint64_t sub_21934D484@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for PaywallMagazineFeedGroupKnobs(0);
  a2[4] = sub_21934DD68(&qword_280EAF858, type metadata accessor for PaywallMagazineFeedGroupKnobs, &unk_219CA47A0);
  a2[5] = sub_21934DD68(&qword_280EAF860, type metadata accessor for PaywallMagazineFeedGroupKnobs, &unk_219CA4778);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21934DC70(v2 + v4, boxed_opaque_existential_1, type metadata accessor for PaywallMagazineFeedGroupKnobs);
}

uint64_t sub_21934D548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaywallMagazineFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21934DC70(v2 + *(a2 + 20), v6, type metadata accessor for PaywallMagazineFeedGroupKnobs);
  v17 = 7;
  sub_2186F909C(0, &qword_280E919C0, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D321A0]);
  v8 = v7;
  v9 = sub_219BEE964();
  (*(*(v8 - 8) + 8))(v6, v8);
  sub_21934DD04(0, &unk_280E8B8B0, sub_218C6086C, MEMORY[0x277D84560]);
  sub_218C6086C(0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C09BA0;
  (*(v12 + 104))(v14 + v13, *MEMORY[0x277D322F8], v11);
  v16 = v9;
  sub_2191EE154(v14);
  return v16;
}

uint64_t sub_21934D77C()
{
  sub_218B87670(0);

  return sub_219BEDCA4();
}

uint64_t sub_21934D7A8@<X0>(uint64_t *a2@<X8>)
{
  sub_21934DD04(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218B87670(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_21934DDB0(inited + 32, sub_2188317B0);
  sub_21934DD04(0, &qword_280EE7808, type metadata accessor for PaywallMagazineFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_21934DE10();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_21934D92C(uint64_t a1)
{
  sub_21934DD68(&qword_280EA89C0, type metadata accessor for PaywallMagazineFeedGroupEmitter, &unk_219C71290);

  return sub_219BE2324();
}

void sub_21934DAD4(uint64_t a1)
{
  if (!qword_280EE61E8)
  {
    sub_219BE4864();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE61E8);
    }
  }
}

uint64_t sub_21934DB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaywallMagazineFeedGroupEmitter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21934DBA4(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallMagazineFeedGroupEmitter(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21934C9A0(a1, v1 + v4, v5);
}

uint64_t sub_21934DC70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21934DD04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21934DD68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21934DDB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21934DE10()
{
  result = qword_280EE7810;
  if (!qword_280EE7810)
  {
    sub_21934DD04(255, &qword_280EE7808, type metadata accessor for PaywallMagazineFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE7810);
  }

  return result;
}

uint64_t sub_21934DE98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_21934DEE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21934DF3C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a2;
  v95 = a3;
  v108 = type metadata accessor for SharedWithYouFeedModel(0);
  v83 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v104 = v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v103 = v82 - v6;
  sub_218C40500(0);
  v106 = *(v7 - 8);
  v107 = v7;
  MEMORY[0x28223BE20](v7);
  v84 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21934EC04(0);
  MEMORY[0x28223BE20](v9 - 8);
  v94 = v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_219BF2094();
  v99 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v100 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_219BF2DA4();
  v102 = *(v105 - 1);
  MEMORY[0x28223BE20](v105);
  v13 = v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_219BF1904();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v15 = v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for SharedWithYouFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v93);
  v98 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v82 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v82 - v21;
  v23 = type metadata accessor for ArticleListSharedWithYouFeedGroup(0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = (v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v29 = v82 - v28;
  v30 = type metadata accessor for SharedWithYouFeedGroup(0);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21934F3CC(a1, v32, type metadata accessor for SharedWithYouFeedGroup);
  sub_218AC3514(v32, v29);
  sub_21934F3CC(v29, v22, type metadata accessor for ArticleListSharedWithYouFeedGroup);
  (*(v24 + 56))(v22, 0, 1, v23);
  v87 = *&v29[*(v23 + 24)];
  v92 = v29;
  sub_219BED874();
  v97 = v22;
  sub_21934F3CC(v22, v19, type metadata accessor for SharedWithYouFeedSectionDescriptor);
  if ((*(v24 + 48))(v19, 1, v23) == 1)
  {
    v86 = 0xE300000000000000;
    v85 = 7364967;
  }

  else
  {
    sub_218AC3514(v19, v26);
    v33 = v26[1];
    v85 = *v26;
    v86 = v33;

    sub_21934F434(v26, type metadata accessor for ArticleListSharedWithYouFeedGroup);
  }

  v34 = sub_219BF18F4();
  v35 = *(v34 + 16);
  v96 = v15;
  if (v35)
  {
    v36 = v102 + 16;
    v102 = *(v102 + 16);
    v37 = (*(v36 + 64) + 32) & ~*(v36 + 64);
    v82[1] = v34;
    v38 = v34 + v37;
    v101 = *(v36 + 56);
    v39 = (v36 - 8);
    v40 = MEMORY[0x277D84F90];
    while (1)
    {
      v41 = v105;
      (v102)(v13, v38, v105);
      v42 = sub_219BF2D94();
      (*v39)(v13, v41);
      v43 = *(v42 + 16);
      v44 = v40[2];
      v45 = v44 + v43;
      if (__OFADD__(v44, v43))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
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
        return;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v45 <= v40[3] >> 1)
      {
        if (*(v42 + 16))
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v44 <= v45)
        {
          v47 = v44 + v43;
        }

        else
        {
          v47 = v44;
        }

        v40 = sub_2191F7160(isUniquelyReferenced_nonNull_native, v47, 1, v40);
        if (*(v42 + 16))
        {
LABEL_17:
          if ((v40[3] >> 1) - v40[2] < v43)
          {
            goto LABEL_53;
          }

          swift_arrayInitWithCopy();

          if (v43)
          {
            v48 = v40[2];
            v49 = __OFADD__(v48, v43);
            v50 = v48 + v43;
            if (v49)
            {
              goto LABEL_55;
            }

            v40[2] = v50;
          }

          goto LABEL_7;
        }
      }

      if (v43)
      {
        goto LABEL_50;
      }

LABEL_7:
      v38 += v101;
      if (!--v35)
      {

        v15 = v96;
        v51 = v40[2];
        if (v51)
        {
          goto LABEL_22;
        }

        goto LABEL_40;
      }
    }
  }

  v40 = MEMORY[0x277D84F90];
  v51 = *(MEMORY[0x277D84F90] + 16);
  if (v51)
  {
LABEL_22:
    v105 = *(v99 + 16);
    v52 = v40 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
    v102 = *(v99 + 72);
    v53 = (v99 + 8);
    v54 = MEMORY[0x277D84F90];
    while (1)
    {
      v55 = v100;
      v56 = v109;
      (v105)(v100, v52, v109);
      v57 = sub_219BF2084();
      (*v53)(v55, v56);
      v58 = *(v57 + 16);
      v59 = v54[2];
      v60 = v59 + v58;
      if (__OFADD__(v59, v58))
      {
        goto LABEL_51;
      }

      v61 = swift_isUniquelyReferenced_nonNull_native();
      if (v61 && v60 <= v54[3] >> 1)
      {
        if (*(v57 + 16))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v59 <= v60)
        {
          v62 = v59 + v58;
        }

        else
        {
          v62 = v59;
        }

        v54 = sub_218855C7C(v61, v62, 1, v54);
        if (*(v57 + 16))
        {
LABEL_34:
          v63 = (v54[3] >> 1) - v54[2];
          sub_219BF3C84();
          if (v63 < v58)
          {
            goto LABEL_54;
          }

          swift_arrayInitWithCopy();

          if (v58)
          {
            v64 = v54[2];
            v49 = __OFADD__(v64, v58);
            v65 = v64 + v58;
            if (v49)
            {
              goto LABEL_56;
            }

            v54[2] = v65;
          }

          goto LABEL_24;
        }
      }

      if (v58)
      {
        goto LABEL_52;
      }

LABEL_24:
      v52 += v102;
      if (!--v51)
      {

        v15 = v96;
        goto LABEL_41;
      }
    }
  }

LABEL_40:

  v54 = MEMORY[0x277D84F90];
LABEL_41:
  MEMORY[0x28223BE20](v66);
  v67 = v90;
  v82[-6] = v87;
  v82[-5] = v67;
  v68 = v85;
  v82[-4] = v91;
  v82[-3] = v68;
  v82[-2] = v86;
  sub_218DE02BC(sub_21934F3A8, &v82[-8], v54);
  v70 = v69;

  (*(v88 + 8))(v15, v89);
  sub_21934F3CC(v97, v98, type metadata accessor for SharedWithYouFeedSectionDescriptor);
  v71 = *(v70 + 16);
  if (v71)
  {
    v110 = MEMORY[0x277D84F90];
    sub_218C37120(0, v71, 0);
    v72 = v110;
    v73 = *(v83 + 80);
    v109 = v70;
    v74 = v70 + ((v73 + 32) & ~v73);
    v75 = *(v83 + 72);
    v76 = v84;
    do
    {
      v77 = v103;
      sub_21934F3CC(v74, v103, type metadata accessor for SharedWithYouFeedModel);
      sub_21934F3CC(v77, v104, type metadata accessor for SharedWithYouFeedModel);
      sub_21934F4BC(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel, &unk_219C72588);
      sub_219BE5FB4();
      sub_21934F434(v77, type metadata accessor for SharedWithYouFeedModel);
      v110 = v72;
      v79 = *(v72 + 16);
      v78 = *(v72 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_218C37120((v78 > 1), v79 + 1, 1);
        v76 = v84;
        v72 = v110;
      }

      *(v72 + 16) = v79 + 1;
      (*(v106 + 32))(v72 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v79, v76, v107);
      v74 += v75;
      --v71;
    }

    while (v71);
  }

  else
  {

    v72 = MEMORY[0x277D84F90];
  }

  v80 = sub_21934F4BC(&qword_27CC19078, sub_218C40500, MEMORY[0x277D6D408]);
  v81 = sub_21934F4BC(&qword_27CC19080, sub_218C40500, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9170](v72, v107, v80, v81);
  sub_21934F4BC(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor, &unk_219C1903C);
  sub_21934F4BC(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel, &unk_219C72588);
  sub_219BE6924();
  sub_21934F434(v97, type metadata accessor for SharedWithYouFeedSectionDescriptor);
  sub_21934F434(v92, type metadata accessor for ArticleListSharedWithYouFeedGroup);
}

void sub_21934EC04(uint64_t a1)
{
  if (!qword_27CC19070)
  {
    sub_218C40500(255);
    sub_21934F4BC(&qword_27CC19078, sub_218C40500, MEMORY[0x277D6D408]);
    sub_21934F4BC(&qword_27CC19080, sub_218C40500, MEMORY[0x277D6D3F8]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC19070);
    }
  }
}

uint64_t sub_21934ECD0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v32 = a5;
  v33 = a6;
  v30 = a3;
  v31 = a4;
  v36 = a2;
  v9 = sub_219BF2164();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF3C84();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v13, v15);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == *MEMORY[0x277D34128] || v18 == *MEMORY[0x277D34108] || v18 == *MEMORY[0x277D34100] || v18 == *MEMORY[0x277D34130] || v18 == *MEMORY[0x277D34110])
  {
    result = (*(v14 + 8))(v17, v13);
    *a7 = MEMORY[0x277D84F90];
  }

  else if (v18 == *MEMORY[0x277D340F0])
  {
    (*(v14 + 96))(v17, v13);
    v24 = (*(v10 + 32))(v12, v17, v9);
    MEMORY[0x28223BE20](v24);
    v25 = v31;
    *(&v30 - 6) = v30;
    *(&v30 - 5) = v25;
    v26 = v33;
    *(&v30 - 4) = v32;
    *(&v30 - 3) = v26;
    *(&v30 - 2) = v12;
    *a7 = sub_21894A630(sub_21934F494, (&v30 - 8), v36);
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    sub_2186E8080(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_219C09BA0;
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_219BF7484();
    v28 = v34;
    v29 = v35;
    *(v27 + 56) = MEMORY[0x277D837D0];
    *(v27 + 64) = sub_2186FC3BC();
    *(v27 + 32) = v28;
    *(v27 + 40) = v29;
    MEMORY[0x21CEB8D80]("Unknown format item %{public}@ encountered. Please update this switch statement to handle the new case.", 103, 2, v27);

    *a7 = MEMORY[0x277D84F90];
    return (*(v14 + 8))(v17, v13);
  }

  return result;
}

uint64_t sub_21934F080@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a6;
  v23 = a3;
  v24 = a4;
  v9 = sub_219BF0BD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E8080(0, &unk_280E90C60, MEMORY[0x277D32FE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21 - v14;
  v16 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = v9;
    swift_getObjectType();
    v9 = v22;
    sub_219BEEFB4();
    swift_unknownObjectRelease();
    (*(v10 + 56))(v15, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v15, 1, 1, v9);
  }

  v17 = sub_21983F764(v16, v15);
  sub_218EA3B08(v15);
  v26 = v17;
  (*(v10 + 16))(v12, v23, v9);
  sub_21871D24C();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_219C09EC0;
  *(v18 + 32) = v24;
  *(v18 + 40) = a5;

  *(v18 + 48) = sub_219BF2154();
  *(v18 + 56) = v19;
  MEMORY[0x21CEC80A0](v18);

  type metadata accessor for HeadlineModel(0);
  sub_21934F4BC(&qword_280EDE358, type metadata accessor for HeadlineModel, &unk_219C5F62C);
  sub_21934F4BC(&qword_280EDE360, type metadata accessor for HeadlineModel, &unk_219C5F604);
  sub_219BF0844();
  type metadata accessor for SharedWithYouFeedModel(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21934F3CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21934F434(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21934F4BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SportsEventTopicTagFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EA1E28;
  if (!qword_280EA1E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21934F578(uint64_t a1)
{
  sub_2189AD5C8(319);
  if (v1 <= 0x3F)
  {
    sub_218BE9934(319);
    if (v2 <= 0x3F)
    {
      sub_2186F9548();
      if (v3 <= 0x3F)
      {
        sub_2186ECA28();
        if (v4 <= 0x3F)
        {
          sub_2186F95C4();
          if (v5 <= 0x3F)
          {
            sub_219BEF244();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21934F668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v55 = a8;
  v56 = a6;
  v59 = a3;
  v60 = a7;
  v57 = a5;
  v58 = a4;
  sub_219123FEC(0, &qword_280E916D0, MEMORY[0x277D324F0]);
  MEMORY[0x28223BE20](v14 - 8);
  v54 = &v50 - v15;
  v16 = sub_219BEF244();
  v51 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v52 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219123FEC(0, &qword_280E91A70, sub_2189AD5C8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v50 - v19;
  sub_2189AD5C8(0);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  sub_219124040(a1, v20, &qword_280E91A70, sub_2189AD5C8);
  v26 = *(v23 + 48);
  if (v26(v20, 1, v22) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    sub_21877CA68(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    sub_219BEE974();
    if (v26(v20, 1, v22) != 1)
    {
      sub_2191240AC(v20, &qword_280E91A70, sub_2189AD5C8);
    }
  }

  else
  {
    (*(v23 + 32))(v25, v20, v22);
  }

  (*(v23 + 32))(a9, v25, v22);
  v27 = v16;
  if (a2)
  {
    v28 = a2;
  }

  else
  {
    v29 = sub_219BF1F54();
    sub_218C3DB88(v29);

    sub_218BE9934(0);
    swift_allocObject();
    v28 = sub_219BEEE04();
  }

  v30 = v54;
  v31 = v58;
  v32 = type metadata accessor for SportsEventTopicTagFeedGroupKnobs(0);
  *(a9 + v32[5]) = v28;
  v33 = v51;
  v34 = v59;
  if (v59)
  {

    v35 = v34;
  }

  else
  {
    sub_218BE9934(0);
    swift_allocObject();

    v35 = sub_219BEEE04();
  }

  *(a9 + v32[6]) = v35;
  if (v31)
  {

    v36 = v31;
  }

  else
  {
    v61 = 30;
    sub_2186F9548();
    swift_allocObject();

    v36 = sub_219BEF534();
  }

  *(a9 + v32[7]) = v36;
  v37 = v57;
  if (v57)
  {

    v38 = v37;
  }

  else
  {
    v61 = 1;
    sub_2186F9548();
    swift_allocObject();

    v38 = sub_219BEF534();
  }

  *(a9 + v32[8]) = v38;
  v39 = v56;
  if (v56)
  {

    v40 = v39;
  }

  else
  {
    v61 = 5;
    sub_2186F9548();
    swift_allocObject();

    v40 = sub_219BEF534();
  }

  *(a9 + v32[9]) = v40;
  v41 = v60;
  if (v60)
  {

    v42 = v41;
  }

  else
  {

    sub_219BF5CE4();
    v61 = v43;
    sub_2186ECA28();
    swift_allocObject();
    v42 = sub_219BEF534();
  }

  v44 = a10;
  *(a9 + v32[10]) = v42;
  v45 = v55;
  if (v55)
  {

    v46 = v45;
  }

  else
  {
    LOBYTE(v61) = 1;
    sub_2186F95C4();
    swift_allocObject();

    v46 = sub_219BEF534();
  }

  *(a9 + v32[11]) = v46;
  if (a10)
  {
  }

  else
  {
    v61 = 0;
    sub_2186ECA28();
    swift_allocObject();

    v44 = sub_219BEF534();
  }

  *(a9 + v32[12]) = v44;
  sub_219124040(a11, v30, &qword_280E916D0, MEMORY[0x277D324F0]);
  v47 = *(v33 + 48);
  if (v47(v30, 1, v27) == 1)
  {
    v48 = v52;
    sub_219BEF1C4();

    sub_2191240AC(a11, &qword_280E916D0, MEMORY[0x277D324F0]);
    sub_2191240AC(v53, &qword_280E91A70, sub_2189AD5C8);
    if (v47(v30, 1, v27) != 1)
    {
      sub_2191240AC(v30, &qword_280E916D0, MEMORY[0x277D324F0]);
    }
  }

  else
  {

    sub_2191240AC(a11, &qword_280E916D0, MEMORY[0x277D324F0]);
    sub_2191240AC(v53, &qword_280E91A70, sub_2189AD5C8);
    v48 = v52;
    (*(v33 + 32))(v52, v30, v27);
  }

  return (*(v33 + 32))(a9 + v32[13], v48, v27);
}

uint64_t sub_21934FE90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v86 = sub_219BEF244();
  v81 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v80 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8(0);
  v84 = v4;
  v78 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v83 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for SportsEventTopicTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v79);
  v7 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219123FEC(0, &qword_280E916D0, MEMORY[0x277D324F0]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v85 = v64 - v12;
  sub_219123FEC(0, &qword_280E91A70, sub_2189AD5C8);
  MEMORY[0x28223BE20](v13 - 8);
  v87 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v88 = v64 - v16;
  sub_21935162C(0, &qword_27CC19088, MEMORY[0x277D844C8]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = v64 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219351574();
  v22 = v89;
  sub_219BF7B34();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v68 = v19;
  v69 = 0;
  v70 = v10;
  v89 = v7;
  v71 = a1;
  LOBYTE(v98) = 0;
  sub_21877CA68(&qword_280E91A88, sub_2189AD5C8, MEMORY[0x277D321B0]);
  v24 = v84;
  sub_219BF7674();
  sub_218BE9934(0);
  LOBYTE(v97) = 1;
  sub_21877CA68(&qword_280E917C0, sub_218BE9934, MEMORY[0x277D32448]);
  sub_219BF7674();
  v77 = v98;
  LOBYTE(v96) = 2;
  sub_219BF7674();
  v76 = v97;
  sub_2186F9548();
  LOBYTE(v95) = 3;
  v25 = MEMORY[0x277D32620];
  sub_21877CA68(&qword_280E913B8, sub_2186F9548, MEMORY[0x277D32620]);
  sub_219BF7674();
  v75 = v96;
  LOBYTE(v94) = 4;
  sub_219BF7674();
  v66 = v95;
  LOBYTE(v93) = 5;
  sub_219BF7674();
  v74 = v94;
  sub_2186ECA28();
  v27 = v26;
  LOBYTE(v92) = 6;
  sub_21877CA68(&qword_280E913D8, sub_2186ECA28, v25);
  sub_219BF7674();
  v73 = v93;
  sub_2186F95C4();
  v29 = v28;
  LOBYTE(v91) = 7;
  sub_21877CA68(&qword_280E913F8, sub_2186F95C4, v25);
  v64[0] = v29;
  sub_219BF7674();
  v72 = v92;
  LOBYTE(v90) = 8;
  v64[1] = v27;
  sub_219BF7674();
  v65 = v91;
  LOBYTE(v90) = 9;
  sub_21877CA68(&qword_280E916D8, MEMORY[0x277D324F0], MEMORY[0x277D32500]);
  v67 = v21;
  sub_219BF7674();
  v30 = v87;
  sub_219124040(v88, v87, &qword_280E91A70, sub_2189AD5C8);
  v31 = v78;
  v32 = *(v78 + 48);
  if (v32(v30, 1, v24) == 1)
  {
    v33 = v31;
    type metadata accessor for TagFeedServiceConfig(0);
    sub_21877CA68(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    v34 = v83;
    sub_219BEE974();
    v35 = v84;
    v36 = v32(v87, 1, v84);
    v37 = v34;
    v38 = v80;
    v39 = v89;
    if (v36 != 1)
    {
      sub_2191240AC(v87, &qword_280E91A70, sub_2189AD5C8);
      v37 = v83;
    }
  }

  else
  {
    v33 = v31;
    v37 = v83;
    v35 = v84;
    (*(v31 + 32))(v83, v87, v84);
    v38 = v80;
    v39 = v89;
  }

  v87 = v18;
  (*(v33 + 32))(v39, v37, v35);
  if (v77)
  {
    v40 = v77;
  }

  else
  {
    v41 = sub_219BF1F54();
    sub_218C3DB88(v41);

    swift_allocObject();
    v40 = sub_219BEEE04();
    v39 = v89;
  }

  v42 = v79;
  v43 = v85;
  *&v39[*(v79 + 20)] = v40;
  v44 = v76;
  if (v76)
  {

    v45 = v44;
  }

  else
  {
    swift_allocObject();

    v45 = sub_219BEEE04();
    v39 = v89;
  }

  v46 = v86;
  v47 = v81;
  *&v39[v42[6]] = v45;
  v48 = v75;
  if (v75)
  {

    v49 = v48;
  }

  else
  {
    v90 = 30;
    swift_allocObject();

    v49 = sub_219BEF534();
    v39 = v89;
  }

  *&v39[v42[7]] = v49;
  v50 = v66;
  if (v66)
  {

    v51 = v50;
  }

  else
  {
    v90 = 1;
    swift_allocObject();

    v51 = sub_219BEF534();
    v39 = v89;
  }

  *&v39[v42[8]] = v51;
  v52 = v74;
  if (v74)
  {

    v53 = v52;
  }

  else
  {
    v90 = 5;
    swift_allocObject();

    v53 = sub_219BEF534();
    v39 = v89;
  }

  *&v39[v42[9]] = v53;
  v54 = v73;
  if (v73)
  {

    v55 = v54;
  }

  else
  {

    sub_219BF5CE4();
    v90 = v56;
    swift_allocObject();
    v55 = sub_219BEF534();
    v39 = v89;
  }

  *&v39[v42[10]] = v55;
  v57 = v72;
  if (v72)
  {

    v58 = v57;
  }

  else
  {
    LOBYTE(v90) = 1;
    swift_allocObject();

    v58 = sub_219BEF534();
    v39 = v89;
  }

  *&v39[v42[11]] = v58;
  v59 = v65;
  if (v65)
  {
  }

  else
  {
    v90 = 0;
    swift_allocObject();

    v60 = sub_219BEF534();
    v39 = v89;
    v59 = v60;
  }

  *&v39[v42[12]] = v59;
  v61 = v70;
  sub_219124040(v43, v70, &qword_280E916D0, MEMORY[0x277D324F0]);
  v62 = *(v47 + 48);
  if (v62(v61, 1, v46) == 1)
  {
    sub_219BEF1C4();

    sub_2191240AC(v43, &qword_280E916D0, MEMORY[0x277D324F0]);
    sub_2191240AC(v88, &qword_280E91A70, sub_2189AD5C8);
    (*(v68 + 8))(v67, v87);
    if (v62(v61, 1, v46) != 1)
    {
      sub_2191240AC(v61, &qword_280E916D0, MEMORY[0x277D324F0]);
    }
  }

  else
  {

    sub_2191240AC(v43, &qword_280E916D0, MEMORY[0x277D324F0]);
    sub_2191240AC(v88, &qword_280E91A70, sub_2189AD5C8);
    (*(v68 + 8))(v67, v87);
    (*(v47 + 32))(v38, v61, v46);
  }

  v63 = v89;
  (*(v47 + 32))(&v89[v42[13]], v38, v46);
  sub_2193515C8(v63, v82);
  return __swift_destroy_boxed_opaque_existential_1(v71);
}

uint64_t sub_219350C78(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6F43657269707865;
    v6 = 0xD000000000000016;
    if (a1 != 8)
    {
      v6 = 0x676E6970756F7267;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    if (a1 != 5)
    {
      v7 = 0x6E69576863746566;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x73656C7572;
    v2 = 0xD000000000000015;
    v3 = 0xD000000000000012;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_219350DEC(void *a1)
{
  v3 = v1;
  sub_21935162C(0, &qword_27CC19098, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219351574();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8(0);
  sub_21877CA68(&qword_27CC0BEC8, sub_2189AD5C8, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for SportsEventTopicTagFeedGroupKnobs(0);
    v14 = *(v3 + v10[5]);
    v13 = 1;
    sub_218BE9934(0);
    sub_21877CA68(&qword_27CC0EE30, sub_218BE9934, MEMORY[0x277D32440]);
    sub_219BF7834();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_219BF7834();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_2186F9548();
    sub_21877CA68(&qword_280E913C0, sub_2186F9548, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_219BF7834();
    v14 = *(v3 + v10[9]);
    v13 = 5;
    sub_219BF7834();
    v14 = *(v3 + v10[10]);
    v13 = 6;
    sub_2186ECA28();
    sub_21877CA68(&qword_280E913E0, sub_2186ECA28, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v3 + v10[11]);
    v13 = 7;
    sub_2186F95C4();
    sub_21877CA68(&qword_280E91400, sub_2186F95C4, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v3 + v10[12]);
    v13 = 8;
    sub_219BF7834();
    LOBYTE(v14) = 9;
    sub_219BEF244();
    sub_21877CA68(&unk_280E916E0, MEMORY[0x277D324F0], MEMORY[0x277D324F8]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2193512FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2193517A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_219351324(uint64_t a1)
{
  v2 = sub_219351574();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219351360(uint64_t a1)
{
  v2 = sub_219351574();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2193513D0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TagFeedServiceConfig(0);
  sub_21877CA68(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
  if (sub_219BEE9F4())
  {
    sub_218BE9934(0);
    type metadata accessor for SportsEventTopicTagFeedGroupKnobs(0);
    if (sub_219BEEDE4() & 1) != 0 && (sub_219BEEDE4())
    {
      sub_2186F9548();
      if (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504())
      {
        sub_2186ECA28();
        if (sub_219BEF504())
        {
          sub_2186F95C4();
          if (sub_219BEF504() & 1) != 0 && (sub_219BEF504())
          {

            JUMPOUT(0x21CEC5FB0);
          }
        }
      }
    }
  }

  return 0;
}

unint64_t sub_219351574()
{
  result = qword_27CC19090;
  if (!qword_27CC19090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19090);
  }

  return result;
}

uint64_t sub_2193515C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsEventTopicTagFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21935162C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219351574();
    v7 = a3(a1, &type metadata for SportsEventTopicTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2193516A4()
{
  result = qword_27CC190A0;
  if (!qword_27CC190A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC190A0);
  }

  return result;
}

unint64_t sub_2193516FC()
{
  result = qword_27CC190A8;
  if (!qword_27CC190A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC190A8);
  }

  return result;
}

unint64_t sub_219351754()
{
  result = qword_27CC190B0;
  if (!qword_27CC190B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC190B0);
  }

  return result;
}

uint64_t sub_2193517A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CEB600 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CEB620 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CE9C20 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E69576863746566 && a2 == 0xEB00000000776F64 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F43657269707865 && a2 == 0xED0000746E65746ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CF3AA0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x676E6970756F7267 && a2 == 0xED000073656C7552)
  {

    return 9;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

id FeedNavImageAssetHandle.__allocating_init(tag:feedNavImageSize:feedNavImageStyler:scale:overrideFallbackColor:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v13[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
  *&v13[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = a1;
  v15 = swift_unknownObjectRetain();
  v16 = sub_219352488(v15);
  v17 = &v13[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
  *v17 = v16;
  v17[1] = v18;
  v19 = &v13[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
  *v19 = a4;
  v19[1] = a5;
  *&v13[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = a2;
  *&v13[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = a6;
  *&v13[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = a3;
  v22.receiver = v13;
  v22.super_class = v6;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  swift_unknownObjectRelease();
  return v20;
}

id FeedNavImageAssetHandle.__allocating_init(identifier:feedNavImage:feedNavImageSize:feedNavImageStyler:scale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage;
  *&v15[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
  swift_beginAccess();
  *&v15[v17] = a3;
  v18 = &v15[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v15[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
  *v19 = a5;
  v19[1] = a6;
  *&v15[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = a4;
  *&v15[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = 0;
  *&v15[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = a7;
  *&v15[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = 0;
  v21.receiver = v15;
  v21.super_class = v7;
  return objc_msgSendSuper2(&v21, sel_init);
}

UIImage_optional __swiftcall FeedNavImageAssetHandle.generateFallbackImage()()
{
  sub_218ED5B50(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF2CE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR___NEFeedNavImageAssetHandle_tag))
  {
    v10 = OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage;
    swift_beginAccess();
    v12 = *(v0 + v10);
    if (v12)
    {
      v13 = *(v0 + OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler);
      v14 = v12;
      [v13 cornerRadius];
      [v13 cornerRadius];
      v15 = sub_219BE5AD4();
      (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
      v16 = sub_219BF6D74();

      sub_218ED5C0C(v3);
      v17 = v16;
      goto LABEL_11;
    }

LABEL_8:
    v17 = 0;
    goto LABEL_11;
  }

  swift_getObjectType();
  if ([swift_unknownObjectRetain() tagType] - 1 > 1)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v8 = *(v0 + OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler);
  [v8 cornerRadius];
  v9 = *(v0 + OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor);
  if (!v9)
  {
    sub_219BF6264();
    v9 = 0;
  }

  v18 = v9;
  v19 = [v8 tagTitleFont];
  [v8 padding];
  sub_219BF2CD4();
  v20 = sub_219BF6224();
  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v4);
  v17 = v20;
LABEL_11:
  result.value.super.isa = v17;
  result.is_nil = v11;
  return result;
}

uint64_t FeedNavImageAssetHandle.filePath.getter()
{
  v1 = (v0 + OBJC_IVAR___NEFeedNavImageAssetHandle_filePath);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double FeedNavImageAssetHandle.filePath.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___NEFeedNavImageAssetHandle_filePath);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void *FeedNavImageAssetHandle.fallbackImage.getter()
{
  v1 = OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void FeedNavImageAssetHandle.fallbackImage.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t FeedNavImageAssetHandle.uniqueKey.getter()
{
  v1 = *(v0 + OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey);

  return v1;
}

id FeedNavImageAssetHandle.init(identifier:feedNavImage:feedNavImageSize:feedNavImageStyler:scale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  ObjectType = swift_getObjectType();
  v16 = &v7[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage;
  *&v7[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
  swift_beginAccess();
  *&v7[v17] = a3;
  v18 = &v7[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v7[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
  *v19 = a5;
  v19[1] = a6;
  *&v7[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = a4;
  *&v7[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = 0;
  *&v7[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = a7;
  *&v7[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = 0;
  v21.receiver = v7;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_init);
}

id FeedNavImageAssetHandle.init(tag:feedNavImageSize:feedNavImageStyler:scale:overrideFallbackColor:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v6 = sub_219352F04(a1, a2, a3, a4, a5, a6);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_219352488(void *a1)
{
  if ([a1 isSports])
  {
    v2 = [a1 identifier];
    v3 = sub_219BF5414();
    v5 = v4;

    MEMORY[0x21CECC330](v3, v5);

    return 0x2D7374726F7073;
  }

  else
  {
    v7 = [a1 identifier];
    v8 = sub_219BF5414();

    return v8;
  }
}

double FeedNavImageAssetHandle.assetDataProvider.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void FeedNavImageAssetHandle.download(withGroup:)(NSObject *a1, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR___NEFeedNavImageAssetHandle_tag];
  if (v3)
  {
    if ([swift_unknownObjectRetain() isLocal] && (*&v2[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize] >= 100.0 || *&v2[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize + 8] >= 100.0))
    {
      v5 = [v3 coverImageAssetHandle];
      if (v5)
      {
        v6 = v5;
        dispatch_group_enter(a1);
        v7 = swift_allocObject();
        v7[2] = v2;
        v7[3] = v6;
        v7[4] = a1;
        v41 = sub_219353094;
        v42 = v7;
        v37 = MEMORY[0x277D85DD0];
        v38 = 1107296256;
        v39 = sub_218793E0C;
        v40 = &block_descriptor_18_2;
        v8 = _Block_copy(&v37);
        v9 = v2;
        v10 = v6;
        v11 = a1;

        v12 = [v10 downloadIfNeededWithCompletion_];
LABEL_22:
        v33 = v12;
        swift_unknownObjectRelease();
        _Block_release(v8);

        swift_unknownObjectRelease();
        return;
      }
    }

    v13 = [v3 asSports];
    if (v13 && (v14 = [v13 sportsTheme], swift_unknownObjectRelease(), v14) && (v15 = objc_msgSend(v14, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), v15) || (v16 = objc_msgSend(v3, sel_asSports)) != 0 && (v17 = objc_msgSend(v16, sel_sportsTheme), swift_unknownObjectRelease(), v17) && (v15 = objc_msgSend(v17, sel_sportsLogoImageCompactAssetHandle), swift_unknownObjectRelease(), v15))
    {
      dispatch_group_enter(a1);
      v18 = swift_allocObject();
      v18[2] = v2;
      v18[3] = v15;
      v18[4] = a1;
      v41 = sub_219352FF8;
      v42 = v18;
      v37 = MEMORY[0x277D85DD0];
      v38 = 1107296256;
      v39 = sub_218793E0C;
      v40 = &block_descriptor_12_3;
      v8 = _Block_copy(&v37);
      v19 = v2;
      v20 = a1;
      v10 = v15;

      v12 = [v10 downloadIfNeededWithCompletion_];
      goto LABEL_22;
    }

    v21 = &v2[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
    v22 = *&v2[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
    if (v22 >= 100.0 || v21[1] >= 100.0)
    {
      v23 = [v3 feedNavImageHQAssetHandle];
      if (v23)
      {
        v24 = v23;
        dispatch_group_enter(a1);
        v25 = swift_allocObject();
        v25[2] = v2;
        v25[3] = v24;
        v25[4] = a1;
        v41 = sub_219353094;
        v42 = v25;
        v37 = MEMORY[0x277D85DD0];
        v38 = 1107296256;
        v39 = sub_218793E0C;
        v40 = &block_descriptor_6_1;
        v8 = _Block_copy(&v37);
        v26 = v2;
        v27 = a1;
        v10 = v24;

        v12 = [v10 downloadIfNeededWithCompletion_];
        goto LABEL_22;
      }
    }

    if (v22 < 100.0 || v21[1] < 100.0)
    {
      v28 = [v3 feedNavImageAssetHandle];
      if (v28)
      {
        v29 = v28;
        dispatch_group_enter(a1);
        v30 = swift_allocObject();
        v30[2] = v2;
        v30[3] = v29;
        v30[4] = a1;
        v41 = sub_219353094;
        v42 = v30;
        v37 = MEMORY[0x277D85DD0];
        v38 = 1107296256;
        v39 = sub_218793E0C;
        v40 = &block_descriptor_115;
        v8 = _Block_copy(&v37);
        v31 = v2;
        v32 = a1;
        v10 = v29;

        v12 = [v10 downloadIfNeededWithCompletion_];
        goto LABEL_22;
      }
    }

    if ([v3 tagType] - 1 > 1)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v34 = FeedNavImageAssetHandle.generateFallbackImage()();
      swift_unknownObjectRelease();
      v35 = OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage;
      swift_beginAccess();
      v36 = *&v2[v35];
      *&v2[v35] = v34;
    }
  }
}

void sub_219352BD4(uint64_t a1, id a2, NSObject *a3)
{
  v5 = [a2 filePath];
  if (v5)
  {
    v6 = v5;
    v7 = sub_219BF5414();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = (a1 + OBJC_IVAR___NEFeedNavImageAssetHandle_filePath);
  swift_beginAccess();
  *v10 = v7;
  v10[1] = v9;

  dispatch_group_leave(a3);
}

id FeedNavImageAssetHandle.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeedNavImageAssetHandle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_219352DE4()
{
  v1 = (*v0 + OBJC_IVAR___NEFeedNavImageAssetHandle_filePath);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_219352E40@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void *sub_219352E50()
{
  v1 = *v0;
  v2 = OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_219352EA0()
{
  v1 = *(*v0 + OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey);

  return v1;
}

id sub_219352F04(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v6[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
  *&v6[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = a1;
  v15 = swift_unknownObjectRetain();
  v16 = sub_219352488(v15);
  v17 = &v6[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
  *v17 = v16;
  v17[1] = v18;
  v19 = &v6[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
  *v19 = a4;
  v19[1] = a5;
  *&v6[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = a2;
  *&v6[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = a6;
  *&v6[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = a3;
  v21.receiver = v6;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_init);
}

uint64_t type metadata accessor for ChannelTagLayoutOptions(uint64_t a1)
{
  result = qword_27CC19100;
  if (!qword_27CC19100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_219353110()
{
  result = qword_27CC19110;
  if (!qword_27CC19110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19110);
  }

  return result;
}

uint64_t sub_219353164(uint64_t a1)
{
  v2 = sub_2193531A4();

  return MEMORY[0x2821D5688](a1, v2);
}

unint64_t sub_2193531A4()
{
  result = qword_27CC19118;
  if (!qword_27CC19118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19118);
  }

  return result;
}

uint64_t sub_219353208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v27 = a1;
  sub_218A74FF4(0);
  v26 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_219BEF2A4();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BEF974();
  v25 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SavedFeedLayoutModel(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A5AE84(0);
  sub_219BE75E4();
  (*(v12 + 32))(v14, v17, v11);
  v24[2] = *(v4 + 80);
  v24[1] = swift_getObjectType();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = v26;
  (*(v6 + 16))(v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v26);
  v20 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  (*(v6 + 32))(v21 + v20, v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19);

  sub_219BEECF4();

  v22 = sub_219BEF294();
  (*(v28 + 8))(v10, v29);
  (*(v12 + 8))(v14, v25);
  return v22;
}

double sub_219353558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_219BE8C14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF0894();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEDF44();
  if ((*(v9 + 88))(v11, v8) == *MEMORY[0x277D32F88])
  {
    (*(v9 + 96))(v11, v8);
    v12 = sub_219BF13B4();
    v13 = *(v12 - 8);
    if ((*(v13 + 88))(v11, v12) == *MEMORY[0x277D33338])
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v16 = *(Strong + OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_eventHandler);
          sub_219BE8C04();
          __swift_project_boxed_opaque_existential_1(v16 + 11, v16[14]);
          sub_218E30550();
          v17 = v16[5];
          ObjectType = swift_getObjectType();
          (*(v17 + 64))(a3, 1, v7, ObjectType, v17);

          (*(v5 + 8))(v7, v4);
          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }

    else
    {
      (*(v13 + 8))(v11, v12);
    }
  }

  else
  {
    (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_219353900(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219353948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_219353208(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

double sub_219353978(uint64_t a1)
{
  sub_218A74FF4(0);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  return sub_219353558(a1, v4, v5);
}

uint64_t sub_2193539EC@<X0>(uint64_t a1@<X8>)
{
  sub_218708A08(0, &unk_280EE68D0, sub_2187089D4, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC7NewsUI222MagazineSectionService____lazy_storage___appVersion;
  swift_beginAccess();
  sub_219355A5C(v1 + v9, v8, &unk_280EE68D0, sub_2187089D4);
  sub_2187089D4(0);
  v11 = v10;
  v12 = *(v10 - 8);
  if ((*(v12 + 48))(v8, 1, v10) != 1)
  {
    return sub_219356408(v8, a1, sub_2187089D4);
  }

  sub_219356304(v8, &unk_280EE68D0, sub_2187089D4);
  v13 = [objc_opt_self() mainBundle];
  sub_219BE3194();
  sub_2193557EC(a1, v5, sub_2187089D4);
  (*(v12 + 56))(v5, 0, 1, v11);
  swift_beginAccess();
  sub_219356374(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_219353C2C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  sub_219356304(v0 + OBJC_IVAR____TtC7NewsUI222MagazineSectionService____lazy_storage___appVersion, &unk_280EE68D0, sub_2187089D4);

  return swift_deallocClassInstance();
}

uint64_t sub_219353CD4()
{
  type metadata accessor for MagazineConfig(0);
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_219BE3084();

  v1 = sub_219BE2E54();
  sub_218708A08(0, &qword_280E8F1E8, type metadata accessor for MagazineSectionConfig, MEMORY[0x277D83940]);
  sub_219BE2F94();

  v2 = sub_219BE2E54();
  sub_2193541F4(0, &unk_280EE6EF0, &qword_280EDA340, &type metadata for MagazineSection, MEMORY[0x277D6CF30]);
  sub_21935425C();
  sub_219BE30E4();

  v3 = sub_219BE2E54();
  sub_2193541F4(0, &unk_280E8F328, &qword_280EDA340, &type metadata for MagazineSection, MEMORY[0x277D83940]);
  sub_219BE2F64();

  v4 = sub_219BE2E54();
  sub_219354D08();
  v5 = sub_219BE30C4();

  return v5;
}

uint64_t sub_219353F5C()
{
  v1 = v0[11];
  v2 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_219353FB8(uint64_t a1, void *a2)
{
  if (qword_27CC08538 != -1)
  {
    swift_once();
  }

  v3 = qword_27CCD8A00;
  v4 = sub_219BF61F4();
  sub_2186F20D4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_2186FC3BC();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_219BE5314("Failed to fetch magazine configuration with error=%{public}@", 60, 2, &dword_2186C1000, v3, v4, v5);

  v6 = a2[11];
  v7 = a2[12];
  __swift_project_boxed_opaque_existential_1(a2 + 8, v6);
  return (*(v7 + 8))(v6, v7);
}

void sub_219354130(uint64_t a1@<X1>, uint64_t *a2@<X8>, uint64_t a3@<X0>)
{
  v5 = (a3 + *(type metadata accessor for MagazineFeedConfig(0) + 24));
  v6 = *v5;
  v7 = v5[1];
  v8 = [*(a1 + 56) cachedSubscription];
  v9 = sub_2199FF68C(v8, v6, v7);

  *a2 = v9;
}

uint64_t sub_2193541B8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_2193542E4(a2);
  *a1 = result;
  return result;
}

void sub_2193541F4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2186DEEA0(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_21935425C()
{
  result = qword_280E8F1E0;
  if (!qword_280E8F1E0)
  {
    sub_218708A08(255, &qword_280E8F1E8, type metadata accessor for MagazineSectionConfig, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F1E0);
  }

  return result;
}

uint64_t sub_2193542E4(uint64_t a1)
{
  v60 = a1;
  v54 = *v1;
  v2 = type metadata accessor for MagazineSectionConfig(0);
  v51 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v52 = v3;
  v53 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_219BF0FB4();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187089D4(0);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v13 = sub_219BE3184();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v50 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v49 - v20;
  v55 = v1;
  sub_2193539EC(v12);
  v22 = *(v14 + 48);
  if (v22(v12, 1, v13) == 1)
  {
    v23 = sub_219354ECC(v12);
    v24 = v60;
  }

  else
  {
    v49 = v14;
    v25 = *(v14 + 32);
    v25(v21, v12, v13);
    sub_2193557EC(v60 + v2[10], v9, sub_2187089D4);
    if (v22(v9, 1, v13) == 1)
    {
      sub_219354ECC(v9);
      v26 = v49;
    }

    else
    {
      v25(v18, v9, v13);
      if (sub_219BE3144())
      {
        sub_2193541F4(0, &unk_280EE6EF0, &qword_280EDA340, &type metadata for MagazineSection, MEMORY[0x277D6CF30]);
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        memset(v70, 0, 25);
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        swift_allocObject();
        v27 = sub_219BE3014();
        v28 = *(v49 + 8);
        v28(v18, v13);
        v28(v21, v13);
        return v27;
      }

      v26 = v49;
      (*(v49 + 8))(v18, v13);
    }

    v24 = v60;
    v30 = v56;
    sub_2193557EC(v60 + v2[11], v56, sub_2187089D4);
    if (v22(v30, 1, v13) == 1)
    {
      (*(v26 + 8))(v21, v13);
      v23 = sub_219354ECC(v30);
    }

    else
    {
      v31 = v50;
      v25(v50, v30, v13);
      sub_219354E84(&qword_280EE68F0, MEMORY[0x277D6CF38], MEMORY[0x277D6CF48]);
      if (sub_219BF5334())
      {
        sub_2193541F4(0, &unk_280EE6EF0, &qword_280EDA340, &type metadata for MagazineSection, MEMORY[0x277D6CF30]);
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        memset(v70, 0, 25);
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        swift_allocObject();
        v32 = sub_219BE3014();
        v33 = *(v26 + 8);
        v33(v31, v13);
        v33(v21, v13);
        return v32;
      }

      v34 = *(v26 + 8);
      v34(v31, v13);
      v23 = (v34)(v21, v13);
    }
  }

  v35 = *(v24 + v2[12]);
  v36 = v59;
  v37 = v58;
  v38 = v57;
  if (*(v35 + 16) && (sub_219BF0FA4(), v39 = sub_218C31CFC(v38, v35), v23 = (*(v37 + 8))(v38, v36), (v39 & 1) == 0) || (v40 = *(v24 + v2[13]), *(v40 + 16)) && (sub_219BF0FA4(), v41 = sub_218C31CFC(v38, v40), v23 = (*(v37 + 8))(v38, v36), (v41 & 1) != 0))
  {
    sub_2193541F4(0, &unk_280EE6EF0, &qword_280EDA340, &type metadata for MagazineSection, MEMORY[0x277D6CF30]);
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    memset(v70, 0, 25);
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    MEMORY[0x28223BE20](v23);
    v42 = v55;
    *(&v49 - 2) = v24;
    *(&v49 - 1) = v42;
    sub_2186DEEA0(0, qword_280ED0F98, &type metadata for MagazineSectionKind);
    sub_219BE3204();
    v43 = v53;
    sub_2193557EC(v24, v53, type metadata accessor for MagazineSectionConfig);
    v44 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v45 = swift_allocObject();
    sub_219356408(v43, v45 + v44, type metadata accessor for MagazineSectionConfig);
    v46 = sub_219BE2E54();
    sub_2186DEEA0(0, &qword_280EDA340, &type metadata for MagazineSection);
    sub_219BE2F84();

    v47 = sub_219BE2E54();
    v48 = sub_219BE3054();

    return v48;
  }
}

uint64_t sub_219354C00(uint64_t *a1)
{
  sub_2193541F4(0, &unk_280EE6EF0, &qword_280EDA340, &type metadata for MagazineSection, MEMORY[0x277D6CF30]);
  v1 = sub_219BE2E54();
  sub_219354E00(0);
  sub_219354E84(&qword_280E8F590, sub_219354E00, MEMORY[0x277D83988]);
  v2 = sub_219BE2F34();

  return v2;
}

unint64_t sub_219354D08()
{
  result = qword_280E8F320;
  if (!qword_280E8F320)
  {
    sub_2193541F4(255, &unk_280E8F328, &qword_280EDA340, &type metadata for MagazineSection, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F320);
  }

  return result;
}

uint64_t sub_219354D8C(uint64_t a1, uint64_t a2)
{
  sub_2186DEEA0(0, &qword_280EDA340, &type metadata for MagazineSection);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_219354E00(uint64_t a1)
{
  if (!qword_280E8F598)
  {
    sub_2193541F4(255, &unk_280EE6EF0, &qword_280EDA340, &type metadata for MagazineSection, MEMORY[0x277D6CF30]);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8F598);
    }
  }
}

uint64_t sub_219354E84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219354ECC(uint64_t a1)
{
  sub_2187089D4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219354F28(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for MagazineSectionConfig(0);
  v4 = a1 + *(v3 + 36);
  v6 = *v4;
  v5 = *(v4 + 8);
  v7 = *(v4 + 16);
  if (v7)
  {
    if (v7 == 1)
    {
      MEMORY[0x28223BE20](v3);
      type metadata accessor for FeedAvailability(0);

      sub_219BE3204();
      v8 = sub_219BE2E54();
      sub_2186DEEA0(0, qword_280ED0F98, &type metadata for MagazineSectionKind);
      v9 = sub_219BE2F84();

      sub_21896755C(v6, v5, 1u);
      return v9;
    }

    sub_2193541F4(0, &qword_280EE6E98, qword_280ED0F98, &type metadata for MagazineSectionKind, MEMORY[0x277D6CF30]);
    swift_allocObject();
  }

  else
  {
    sub_2193541F4(0, &qword_280EE6E98, qword_280ED0F98, &type metadata for MagazineSectionKind, MEMORY[0x277D6CF30]);
    swift_allocObject();
  }

  return sub_219BE3014();
}

uint64_t sub_2193551D0(void **a1, void *a2, void *a3)
{
  v55 = a2;
  v5 = sub_219BDB954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218708A08(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v51 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  v67 = *(a1 + 16);
  if (v67 == 255)
  {
    sub_2193541F4(0, &unk_280EE6EF0, &qword_280EDA340, &type metadata for MagazineSection, MEMORY[0x277D6CF30]);
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    memset(v66, 0, 25);
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    v17 = *a1;
    v16 = a1[1];
    v18 = a3[3];
    v47 = a3[2];
    v19 = a3[1];
    v44 = *a3;
    v39 = v19;
    v40 = v13;
    v52 = type metadata accessor for MagazineSectionConfig(0);
    v20 = v52[6];
    v45 = a3;
    v21 = a3 + v20;
    v22 = v5;
    sub_219355A5C(v21, v15, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v53 = *(v6 + 48);
    v54 = v6 + 48;
    v23 = v53(v15, 1, v5);
    v49 = v17;
    v50 = v6;
    v48 = v16;
    v46 = v18;
    if (v23 == 1)
    {
      sub_219355ADC(v17, v16, v67);

      v42 = 0;
      v43 = 0;
      v41 = 0;
      v25 = v5;
      v26 = v24;
    }

    else
    {
      (*(v6 + 32))(v8, v15, v5);
      v28 = v55[5];
      v43 = v55[6];
      __swift_project_boxed_opaque_existential_1(v55 + 2, v28);
      sub_219355ADC(v17, v16, v67);

      v26 = v39;

      v43 = sub_219BF2FB4();
      v42 = sub_2186C6148(0, &qword_280E8E770, 0x277D30E08);
      v41 = sub_2189EB528();
      (*(v6 + 8))(v8, v22);
      v25 = v22;
    }

    v29 = v45;
    v30 = v40;
    sub_219355A5C(v45 + v52[7], v40, &unk_280EE9D00, MEMORY[0x277CC9260]);
    if (v53(v30, 1, v25) == 1)
    {
      v39 = 0;
      v40 = 0;
      v31 = 0;
    }

    else
    {
      v32 = v50;
      (*(v50 + 32))(v8, v30, v25);
      __swift_project_boxed_opaque_existential_1(v55 + 2, v55[5]);
      v40 = sub_219BF2FB4();
      v39 = sub_2186C6148(0, &qword_280E8E770, 0x277D30E08);
      v31 = sub_2189EB528();
      (*(v32 + 8))(v8, v25);
    }

    v33 = v51;
    sub_219355A5C(v29 + v52[8], v51, &unk_280EE9D00, MEMORY[0x277CC9260]);
    if (v53(v33, 1, v25) == 1)
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
    }

    else
    {
      v37 = v50;
      (*(v50 + 32))(v8, v33, v25);
      __swift_project_boxed_opaque_existential_1(v55 + 2, v55[5]);
      v36 = sub_219BF2FB4();
      v35 = sub_2186C6148(0, &qword_280E8E770, 0x277D30E08);
      v34 = sub_2189EB528();
      (*(v37 + 8))(v8, v25);
    }

    *&v57 = v47;
    *(&v57 + 1) = v46;
    *&v58 = v44;
    *(&v58 + 1) = v26;
    v59 = v43;
    *&v60 = 0;
    *(&v60 + 1) = v42;
    *&v61 = v41;
    *(&v61 + 1) = v40;
    v62 = 0uLL;
    *&v63 = v39;
    *(&v63 + 1) = v31;
    v64 = v36;
    *&v65 = 0;
    *(&v65 + 1) = v35;
    v66[0] = v34;
    v66[1] = v49;
    v66[2] = v48;
    LOBYTE(v66[3]) = v67;
    sub_218C04EF0(&v57, &v56);
    sub_2193541F4(0, &unk_280EE6EF0, &qword_280EDA340, &type metadata for MagazineSection, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v38 = sub_219BE3014();
    sub_218BBF734(&v57);
    return v38;
  }
}

uint64_t sub_2193557EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2193558D0(uint64_t a1)
{
  v1 = sub_219BF61F4();
  sub_2186F20D4(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09BA0;
  *&v5 = 0;
  *(&v5 + 1) = 0xE000000000000000;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = v5;
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v3 = sub_219BF6F44();
  sub_219BE5314("Failed to resolve section for magazine feed, error=%{public}@", 61, 2, &dword_2186C1000, v3, v1, v2);

  sub_2193541F4(0, &unk_280EE6EF0, &qword_280EDA340, &type metadata for MagazineSection, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219355A5C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218708A08(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_219355ADC(void *a1, id a2, char a3)
{
  if (a3 != -1)
  {
    sub_218C04F4C(a1, a2, a3);
  }
}

uint64_t sub_219355AF0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v1[16];
  v5 = v1[17];
  __swift_project_boxed_opaque_existential_1(v1 + 13, v4);
  memset(v7, 0, sizeof(v7));
  v8 = -1;
  return (*(v5 + 8))(v2, v3, 0, v7, v4, v5);
}

uint64_t sub_219355B88(uint64_t a1)
{
  v2 = type metadata accessor for FeedAvailability(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193557EC(a1, v4, type metadata accessor for FeedAvailability);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v35 = *v4;
      sub_218BFB73C(0);
      v37 = *(v36 + 48);
      v38 = sub_219BF61D4();
      sub_2186F20D4(0);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_219C09BA0;
      v40 = [v35 description];
      v41 = sub_219BF5414();
      v43 = v42;

      *(v39 + 56) = MEMORY[0x277D837D0];
      *(v39 + 64) = sub_2186FC3BC();
      *(v39 + 32) = v41;
      *(v39 + 40) = v43;
      sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
      v44 = sub_219BF6F44();
      sub_219BE5314("Feed descriptor for tagFeed embedded in magazine feed, feedDescriptor=%{public}@", 80, 2, &dword_2186C1000, v44, v38, v39);

      v57 = v35;
      v58 = 0;
      v59 = 1;
      sub_2193541F4(0, &qword_280EE6E98, qword_280ED0F98, &type metadata for MagazineSectionKind, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v45 = sub_219BE3014();
      sub_219356304(&v4[v37], &qword_280EE33F0, MEMORY[0x277D2D4E0]);
      return v45;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v16 = *v4;
      v17 = v4[8];
      v18 = sub_219BF61F4();
      sub_2186F20D4(0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_219C09EC0;
      v20 = [v16 description];
      v21 = sub_219BF5414();
      v23 = v22;

      v24 = MEMORY[0x277D837D0];
      *(v19 + 56) = MEMORY[0x277D837D0];
      v25 = sub_2186FC3BC();
      *(v19 + 64) = v25;
      *(v19 + 32) = v21;
      *(v19 + 40) = v23;
      v57 = 0;
      v58 = 0xE000000000000000;
      v60 = v17;
      sub_219BF7484();
      v26 = v57;
      v27 = v58;
      *(v19 + 96) = v24;
      *(v19 + 104) = v25;
      *(v19 + 72) = v26;
      *(v19 + 80) = v27;
      sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
      v28 = sub_219BF6F44();
      sub_219BE5314("Feed descriptor for tagFeed embedded in magazine feed is not available, feedDescriptor=%{public}@, reason=%{public}@", 116, 2, &dword_2186C1000, v28, v18, v19);

      v57 = 0;
      v58 = 0;
      v59 = -1;
      sub_2193541F4(0, &qword_280EE6E98, qword_280ED0F98, &type metadata for MagazineSectionKind, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v29 = sub_219BE3014();

      return v29;
    }

    v46 = *v4;
    v47 = *(v4 + 1);
    v48 = sub_219BF61F4();
    sub_2186F20D4(0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_219C09BA0;
    *(v49 + 56) = MEMORY[0x277D837D0];
    *(v49 + 64) = sub_2186FC3BC();
    *(v49 + 32) = v46;
    *(v49 + 40) = v47;
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v34 = sub_219BF6F44();
    v50 = "Feed descriptor for tagFeed embedded in magazine feed is deprecated, identifier=%{public}@";
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v6 = *v4;
      v7 = sub_219BF61F4();
      sub_2186F20D4(0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_219C09BA0;
      v9 = [v6 identifier];
      v10 = sub_219BF5414();
      v12 = v11;

      *(v8 + 56) = MEMORY[0x277D837D0];
      *(v8 + 64) = sub_2186FC3BC();
      *(v8 + 32) = v10;
      *(v8 + 40) = v12;
      sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
      v13 = sub_219BF6F44();
      sub_219BE5314("Feed descriptor for tagFeed embedded in magazine feed is deprecated sports event, identifier=%{public}@", 103, 2, &dword_2186C1000, v13, v7, v8);

      v57 = 0;
      v58 = 0;
      v59 = -1;
      sub_2193541F4(0, &qword_280EE6E98, qword_280ED0F98, &type metadata for MagazineSectionKind, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v14 = sub_219BE3014();
      swift_unknownObjectRelease();
      return v14;
    }

    v51 = *v4;
    v52 = *(v4 + 1);
    v48 = sub_219BF61F4();
    sub_2186F20D4(0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_219C09BA0;
    *(v49 + 56) = MEMORY[0x277D837D0];
    *(v49 + 64) = sub_2186FC3BC();
    *(v49 + 32) = v51;
    *(v49 + 40) = v52;
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v34 = sub_219BF6F44();
    v50 = "Feed descriptor for tagFeed embedded in magazine feed was not found, identifier=%{public}@";
LABEL_13:
    v53 = 90;
LABEL_15:
    sub_219BE5314(v50, v53, 2, &dword_2186C1000, v34, v48, v49);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 5)
  {
    v54 = *v4;
    v55 = *(v4 + 1);
    v48 = sub_219BF61F4();
    sub_2186F20D4(0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_219C09BA0;
    *(v49 + 56) = MEMORY[0x277D837D0];
    *(v49 + 64) = sub_2186FC3BC();
    *(v49 + 32) = v54;
    *(v49 + 40) = v55;
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v34 = sub_219BF6F44();
    v50 = "Feed descriptor for tagFeed embedded in magazine feed is not an allowed puzzle type, identifier=%{public}@";
    v53 = 106;
    goto LABEL_15;
  }

  v30 = *v4;
  v31 = *(v4 + 1);
  v32 = sub_219BF61F4();
  sub_2186F20D4(0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_219C09BA0;
  *(v33 + 56) = MEMORY[0x277D837D0];
  *(v33 + 64) = sub_2186FC3BC();
  *(v33 + 32) = v30;
  *(v33 + 40) = v31;
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v34 = sub_219BF6F44();
  sub_219BE5314("Feed descriptor for tagFeed embedded in magazine feed is not allowed in current storefront, identifier=%{public}@", 113, 2, &dword_2186C1000, v34, v32, v33);
LABEL_16:

  v57 = 0;
  v58 = 0;
  v59 = -1;
  sub_2193541F4(0, &qword_280EE6E98, qword_280ED0F98, &type metadata for MagazineSectionKind, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219356304(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218708A08(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219356374(uint64_t a1, uint64_t a2)
{
  sub_218708A08(0, &unk_280EE68D0, sub_2187089D4, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_219356408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI233SearchMoreLayoutSectionDescriptorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_219356488(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2193564D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_219356540()
{
  result = *v0;
  if (*v0)
  {
    v2 = v0[1];
    v3 = sub_219356E30(result, type metadata accessor for SearchMoreLayoutSectionDescriptor.Header, type metadata accessor for SearchMoreLayoutSectionDescriptor.Header);
    v4 = sub_219356E30(v2, type metadata accessor for SearchMoreLayoutSectionDescriptor.Footer, type metadata accessor for SearchMoreLayoutSectionDescriptor.Footer);
    sub_2191ED57C(v4);
    return v3;
  }

  return result;
}

uint64_t sub_2193565E0(uint64_t a1)
{
  v2 = sub_2193574D4();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_21935661C(uint64_t a1)
{
  v2 = sub_218FD8D9C();

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_21935665C()
{
  if (*v0)
  {
    return sub_2193570D8(v0[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21935668C(uint64_t a1)
{
  v2 = type metadata accessor for SearchMoreLayoutSectionDescriptor.Decoration(0);
  v68 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchMoreLayoutSectionDescriptor.Footer(0);
  v59 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SearchMoreLayoutSectionDescriptor.Header(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE9834();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *MEMORY[0x277D6E758];
  v61 = *(v13 + 104);
  v62 = v13 + 104;
  v61(v16, v17, v12, v14);
  v18 = sub_219BEE054();
  v20 = *(v13 + 8);
  v19 = v13 + 8;
  v63 = v16;
  v60 = v20;
  v20(v16, v12);
  v21 = *(v18 + 16);
  v22 = MEMORY[0x277D84F90];
  v64 = v4;
  v65 = a1;
  if (v21)
  {
    v56 = v19;
    v57 = v12;
    v58 = v7;
    v69 = MEMORY[0x277D84F90];
    sub_218C36668(0, v21, 0);
    v23 = v18;
    v24 = v69;
    v67 = sub_219BF00D4();
    v25 = *(v67 - 8);
    v66 = *(v25 + 16);
    v26 = v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v27 = *(v25 + 72);
    do
    {
      v66(v11, v26, v67);
      v69 = v24;
      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_218C36668((v28 > 1), v29 + 1, 1);
        v24 = v69;
      }

      *(v24 + 16) = v29 + 1;
      sub_219356DC8(v11, v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v29, type metadata accessor for SearchMoreLayoutSectionDescriptor.Header);
      v26 += v27;
      --v21;
    }

    while (v21);

    v4 = v64;
    a1 = v65;
    v12 = v57;
    v7 = v58;
    v22 = MEMORY[0x277D84F90];
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v30 = v63;
  (v61)(v63, *MEMORY[0x277D6E750], v12);
  v31 = sub_219BEE054();
  v32 = v30;
  v33 = v31;
  v60(v32, v12);
  v34 = *(v33 + 16);
  if (v34)
  {
    v69 = v22;
    sub_218C36618(0, v34, 0);
    v35 = v69;
    v67 = sub_219BF00D4();
    v36 = *(v67 - 8);
    v66 = *(v36 + 16);
    v37 = *(v36 + 80);
    v63 = v33;
    v38 = v33 + ((v37 + 32) & ~v37);
    v39 = *(v36 + 72);
    v40 = v59;
    do
    {
      v66(v7, v38, v67);
      v69 = v35;
      v41 = v7;
      v43 = *(v35 + 16);
      v42 = *(v35 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_218C36618((v42 > 1), v43 + 1, 1);
        v40 = v59;
        v35 = v69;
      }

      *(v35 + 16) = v43 + 1;
      sub_219356DC8(v41, v35 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v43, type metadata accessor for SearchMoreLayoutSectionDescriptor.Footer);
      v38 += v39;
      --v34;
      v7 = v41;
    }

    while (v34);

    v4 = v64;
    a1 = v65;
    v22 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  v44 = sub_219BEE044();
  v45 = *(v44 + 16);
  if (v45)
  {
    v69 = v22;
    sub_218C365C8(0, v45, 0);
    v46 = v69;
    v67 = sub_219BEE914();
    v47 = *(v67 - 8);
    v66 = *(v47 + 16);
    v48 = *(v47 + 80);
    v63 = v44;
    v49 = v44 + ((v48 + 32) & ~v48);
    v50 = *(v47 + 72);
    do
    {
      v66(v4, v49, v67);
      v69 = v46;
      v52 = *(v46 + 16);
      v51 = *(v46 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_218C365C8((v51 > 1), v52 + 1, 1);
        v46 = v69;
      }

      *(v46 + 16) = v52 + 1;
      sub_219356DC8(v4, v46 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v52, type metadata accessor for SearchMoreLayoutSectionDescriptor.Decoration);
      v49 += v50;
      --v45;
    }

    while (v45);
    v53 = sub_219BEE074();
    (*(*(v53 - 8) + 8))(v65, v53);
  }

  else
  {

    v54 = sub_219BEE074();
    (*(*(v54 - 8) + 8))(a1, v54);
  }

  return v24;
}

uint64_t sub_219356DC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219356E30(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v29 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_219BF00D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v33 = MEMORY[0x277D84F90];
    sub_218C34270(0, v14, 0);
    v15 = v33;
    v16 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v17 = *(v5 + 72);
    v26 = (v11 + 32);
    v27 = v17;
    v18 = (v11 + 16);
    v19 = (v11 + 8);
    do
    {
      v20 = v29;
      sub_21935740C(v16, v9, v29);
      v21 = v28;
      sub_21935740C(v9, v28, v20);
      (*v26)(v13, v21, v10);
      sub_219357474(v9, v20);
      v33 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_218C34270((v22 > 1), v23 + 1, 1);
      }

      v31 = v10;
      v32 = sub_21897FB18();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
      (*v18)(boxed_opaque_existential_1, v13, v10);
      v15 = v33;
      *(v33 + 16) = v23 + 1;
      sub_2186CB1F0(&v30, v15 + 40 * v23 + 32);
      (*v19)(v13, v10);
      v16 += v27;
      --v14;
    }

    while (v14);
  }

  return v15;
}

uint64_t sub_2193570D8(uint64_t a1)
{
  v32 = sub_219BEE914();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchMoreLayoutSectionDescriptor.Decoration(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v36 = MEMORY[0x277D84F90];
    sub_218C35B30(0, v11, 0);
    v12 = v36;
    v13 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    v29 = (v2 + 32);
    v30 = v14;
    v15 = (v2 + 8);
    do
    {
      sub_21935740C(v13, v10, type metadata accessor for SearchMoreLayoutSectionDescriptor.Decoration);
      v16 = v31;
      sub_21935740C(v10, v31, type metadata accessor for SearchMoreLayoutSectionDescriptor.Decoration);
      v17 = v16;
      v18 = v32;
      (*v29)(v4, v17, v32);
      sub_219BEE8F4();
      (*v15)(v4, v18);
      sub_219357474(v10, type metadata accessor for SearchMoreLayoutSectionDescriptor.Decoration);
      v36 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_218C35B30((v19 > 1), v20 + 1, 1);
      }

      v21 = v34;
      v22 = v35;
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      v24 = MEMORY[0x28223BE20](v23);
      v26 = &v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v26, v24);
      sub_218DD76AC(v20, v26, &v36, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(v33);
      v12 = v36;
      v13 += v30;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_21935740C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219357474(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2193574D4()
{
  result = qword_27CC19120;
  if (!qword_27CC19120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19120);
  }

  return result;
}

void __swiftcall AudioFeedModule.createViewController()(UIViewController *__return_ptr retstr)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for AudioFeedViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  v2 = sub_219BE1E04();

  swift_unownedRelease();
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for AudioFeedMastheadModelProvider();
  if (!sub_219BE1E24())
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_2186C709C(0, &qword_280EE05D8, &protocol descriptor for NewsMastheadViewProviderType, 0);

  sub_219BE1E14();

  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  swift_getObjectType();
  sub_219357DD8(0);
  v4 = objc_allocWithZone(v3);
  v5 = v2;
  swift_unknownObjectRetain();
  v6 = sub_219BE8344();
  *&v5[OBJC_IVAR____TtC7NewsUI223AudioFeedViewController_mastheadViewProviderDelegate + 8] = *(v8 + 8);
  swift_unknownObjectWeakAssign();
  if (sub_219BED0C4())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_219BE9D54();
    [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
    sub_219BE9CE4();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2193577C4(void *a1, void *a2)
{
  v22 = sub_219BE14C4();
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE14A4();
  v8 = *(v7 - 8);
  v23 = v7;
  v24 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE15B4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  v20 = a1[3];
  v21 = v15;
  v19[1] = __swift_project_boxed_opaque_existential_1(a1, v20);
  swift_unownedRetainStrong();
  (*(v12 + 104))(v14, *MEMORY[0x277D2F568], v11);
  sub_219BDD0F4();
  (*(v12 + 8))(v14, v11);
  (*(v4 + 104))(v6, *MEMORY[0x277D2F2F8], v22);
  sub_219BE1484();
  sub_219357F58(&qword_280EE8010, MEMORY[0x277D2F280], MEMORY[0x277D2F278]);
  v16 = v23;
  sub_219BDD1F4();

  (*(v24 + 8))(v10, v16);
  sub_219BDD274();
  sub_219BE1B94();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  __swift_project_boxed_opaque_existential_1(a2 + 8, a2[11]);
  sub_219BEC134();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  if (qword_280EE34F8 != -1)
  {
    swift_once();
  }

  v17 = sub_219BEBC84();
  __swift_project_value_buffer(v17, qword_280F623B0);
  sub_219357F58(&qword_280EE34B8, MEMORY[0x277D2D120], MEMORY[0x277D2D118]);
  sub_219BEC144();

  sub_2186C709C(0, &qword_280EE33B0, MEMORY[0x277D2D578], 1);
  sub_219BE1BA4();
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

double sub_219357C40(void *a1, uint64_t a2)
{
  sub_21875D3C8(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v18[0] = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v6 + 104))(v8, *MEMORY[0x277D30138], v5);
  LOBYTE(a2) = sub_2189A2E1C(a2);
  sub_218A6E4C8(0);
  v11 = v10;
  v12 = swift_allocBox();
  v14 = v13;
  v15 = (v13 + *(v11 + 48));
  v16 = *(v11 + 64);
  (*(v6 + 32))(v13, v8, v5);
  *v15 = 0;
  v15[1] = 0;
  *(v14 + v16) = a2 & 1;
  v18[1] = v12 | 0x5000000000000000;
  sub_219BE1BA4();

  return result;
}

void sub_219357DD8(uint64_t a1)
{
  if (!qword_280EE4CF8)
  {
    type metadata accessor for AudioFeedViewController();
    sub_219357F58(&qword_280EC5D20, type metadata accessor for AudioFeedViewController, &unk_219C9C958);
    v1 = sub_219BE8364();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4CF8);
    }
  }
}

uint64_t AudioFeedModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  return v0;
}

uint64_t AudioFeedModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_219357F58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_219357FA0(void *a1, uint64_t a2, uint64_t a3)
{
  v56 = a1;
  v54 = sub_219BDCAF4();
  v6 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + OBJC_IVAR____TtC7NewsUI29TitleView_backgroundView);
  v10 = type metadata accessor for TitleViewLayoutAttributes(0);
  v11 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  [v9 setFrame_];
  v12 = *(a3 + v10[11]);
  sub_2197570C0(v12, v9);
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v13 = *(a2 + OBJC_IVAR____TtC7NewsUI29TitleView_titleLabel);
  v14 = v10[10];
  v55 = a3;
  LODWORD(a3) = *(a3 + v14);
  v15 = sub_219756CB8(v12);
  [v13 setFont_];

  v16 = objc_opt_self();
  v17 = [v16 labelColor];
  [v13 setTextColor_];

  [v13 setNumberOfLines_];
  if (a3 == 1)
  {
    LODWORD(v18) = 1036831949;
    [v13 ts:v18 setHyphenationFactor:?];
  }

  [v13 setLineBreakMode_];
  v19 = v55;
  [v13 setFrame_];
  v20 = v56;
  v21 = sub_219BF53D4();
  [v13 setText_];

  v22 = *(a2 + OBJC_IVAR____TtC7NewsUI29TitleView_subtitleLabel);
  [v22 setFrame_];
  v23 = v20[5];
  if (v23)
  {
    v51[1] = v20[4];
    v51[0] = v23;
    sub_21899E550(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09EC0;
    v25 = *MEMORY[0x277D740C0];
    v52 = v22;
    *(inited + 32) = v25;
    v26 = v25;
    v27 = [v16 secondaryLabelColor];
    v28 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
    *(inited + 40) = v27;
    v29 = *MEMORY[0x277D740A8];
    *(inited + 64) = v28;
    *(inited + 72) = v29;
    sub_219BF0CD4();
    v30 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
    v53 = a2;
    v31 = v30;
    v32 = v29;
    v33 = sub_219BF6BD4();
    v34 = v6;
    v35 = *(v6 + 104);
    v36 = v54;
    v35(v8, *MEMORY[0x277D6D198], v54);
    v37 = sub_219BF0CB4();

    (*(v34 + 8))(v8, v36);
    v19 = v55;
    *(inited + 104) = v31;
    *(inited + 80) = v37;
    sub_2188195F4(inited);
    v11 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    swift_setDeallocating();
    sub_218819588(0);
    swift_arrayDestroy();
    v38 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v39 = sub_219BF53D4();
    type metadata accessor for Key(0);
    sub_21899E604();
    v40 = sub_219BF5204();

    v41 = v38;
    v20 = v56;
    v42 = [v41 initWithString:v39 attributes:v40];

    v22 = v52;
    a2 = v53;
  }

  else
  {
    v42 = 0;
  }

  [v22 setAttributedText_];

  v43 = v19 + v10[9];
  if ((*(v43 + 32) & 1) != 0 || !v20[8])
  {
    [*(a2 + OBJC_IVAR____TtC7NewsUI29TitleView_seeMoreButton) setHidden_];
  }

  else
  {
    v45 = *(v43 + 16);
    v44 = *(v43 + 24);
    v47 = *v43;
    v46 = *(v43 + 8);
    v48 = *(a2 + OBJC_IVAR____TtC7NewsUI29TitleView_seeMoreButton);
    sub_219130824(v48);
    [v48 v11[256]];
    v20 = v56;
    v49 = sub_219BF53D4();
    [v48 setTitle:v49 forState:0];

    [v48 sizeToFit];
    [v48 setHidden_];
  }

  return sub_219358588(v20, a2, v19);
}

id sub_219358588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  v5 = *(a2 + OBJC_IVAR____TtC7NewsUI29TitleView_chevron);
  if (v4)
  {
    v6 = v4;
    [v5 setContentMode_];
    [v5 setImage_];
    [v5 setHidden_];
    if (sub_219BED0C4())
    {
      v7 = [objc_opt_self() labelColor];
      [v5 setTintColor_];
    }

    else
    {
      if (qword_280E8DA88 != -1)
      {
        swift_once();
      }

      [v5 setTintColor_];
    }
  }

  else
  {
    [v5 setHidden_];
  }

  v8 = a3 + *(type metadata accessor for TitleViewLayoutAttributes(0) + 32);
  if (*(v8 + 32))
  {
    v9 = sel_setFrame_;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = v5;
  }

  else
  {
    v17 = *(v8 + 16);
    v16 = *(v8 + 24);
    v19 = *v8;
    v18 = *(v8 + 8);
    v22.origin.x = *v8;
    v22.origin.y = v18;
    v22.size.width = v17;
    v22.size.height = v16;
    Width = CGRectGetWidth(v22);
    v23.origin.x = v19;
    v23.origin.y = v18;
    v23.size.width = v17;
    v23.size.height = v16;
    [v5 setBounds_];
    sub_219BF6B44();
    v9 = sel_setCenter_;
    v14 = v5;
  }

  return [v14 v9];
}

uint64_t sub_2193587B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_2193587FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21935887C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = *a4;
  v10 = a4[1];
  v11 = off_282A34C30[0];
  type metadata accessor for ChannelSectionHeadlinesService();
  v11(a2, a3, v9, v10, 0, 0);
  sub_21935896C(a4, a1, a2, a3, a5);
  v12 = sub_219BE31C4();

  return v12;
}

uint64_t sub_21935896C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 16);
  v9 = (v8 + 40);
  v10 = *(v8 + 16) + 1;
  do
  {
    if (!--v10)
    {
      sub_21935D294(0, &unk_280EE6A40, sub_2187E7248, MEMORY[0x277D6CF30]);
      swift_allocObject();
      return sub_219BE3014();
    }

    v11 = v9 + 16;
    v12 = *v9;
    v9 += 16;
  }

  while ((v12 & 0x80000000) == 0);
  v13 = *(v11 - 3);
  __swift_project_boxed_opaque_existential_1((a2 + 40), *(a2 + 64));
  if (qword_280E8D7C8 != -1)
  {
    swift_once();
  }

  v14 = *MEMORY[0x277D30BC8];
  *&v19 = a3;
  *(&v19 + 1) = a4;
  *&v20 = qword_280F616F0;
  *(&v20 + 1) = v14;
  *&v21 = v13;
  *(&v21 + 1) = a5;
  *&v22 = MEMORY[0x277D84FA0];
  *(&v22 + 1) = MEMORY[0x277D84FA0];
  v23[2] = v21;
  v23[3] = v22;
  v23[0] = v19;
  v23[1] = v20;
  v15 = qword_280F616F0;
  v16 = v14;

  swift_unknownObjectRetain();
  v17 = sub_218C61998(v23);
  sub_218D06F24(&v19);
  return v17;
}

char *sub_219358B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v62 = a7;
  v63 = a8;
  v68 = a6;
  v77 = a5;
  v12 = type metadata accessor for NewspaperGroupKnobs(0);
  v69 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v70 = v13;
  v71 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NewspaperGroupConfig(0);
  v65 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v66 = v15;
  v67 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ChannelSectionsGroupPersonalizerRequest(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ChannelSectionsGroupModel(0);
  v58 = *(v19 - 8);
  MEMORY[0x28223BE20](v19 - 8);
  v64 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = (&v57 - v22);
  v24 = *a1;
  v25 = *(a1 + 8);
  v26 = *(a2 + v14[12]);
  v27 = v24;
  v75 = v27;
  v76 = v23;
  v61 = a3;
  v73 = v25;
  if (v26 == 1)
  {
    v28 = v27;
  }

  else
  {

    v28 = sub_218CFEE6C(a3);
  }

  v29 = *(a4 + 104);
  v60 = a4;
  v72 = __swift_project_boxed_opaque_existential_1((a4 + 80), v29);
  v30 = *(a2 + v14[14]);
  v31 = *(a2 + v14[15]);
  v32 = v14[19];
  v33 = *(a2 + v14[18]);
  v34 = *(a2 + v32);
  v35 = v16[9];
  v36 = sub_219BEFBD4();
  (*(*(v36 - 8) + 16))(&v18[v35], v77, v36);
  if (qword_280E8D7C8 != -1)
  {
    swift_once();
  }

  v37 = qword_280F616F0;
  sub_219BE5444();
  *v18 = v28;
  *(v18 + 1) = v30;
  *(v18 + 2) = v31;
  *(v18 + 3) = v33;
  *(v18 + 4) = v34;
  v38 = MEMORY[0x277D84FA0];
  *&v18[v16[10]] = MEMORY[0x277D84FA0];
  *&v18[v16[11]] = v38;
  v39 = v28;
  v40 = v76;
  v41 = v74;
  sub_219BA640C(v18, v76);
  v42 = sub_21935CEC0(v18, type metadata accessor for ChannelSectionsGroupPersonalizerRequest);
  if (v41)
  {
  }

  else
  {
    MEMORY[0x28223BE20](v42);
    v74 = v39;
    v43 = v61;
    *(&v57 - 10) = v60;
    *(&v57 - 9) = v40;
    *(&v57 - 8) = v73;
    *(&v57 - 7) = a2;
    v44 = v68;
    *(&v57 - 6) = v68;
    *(&v57 - 5) = v43;
    v46 = v62;
    v45 = v63;
    *(&v57 - 4) = v77;
    *(&v57 - 3) = v46;
    *(&v57 - 2) = v45;
    sub_219BF1904();
    v77 = sub_219BE3204();

    v47 = a2;
    v48 = v67;
    sub_21935CCB4(v47, v67, type metadata accessor for NewspaperGroupConfig);
    v49 = v71;
    sub_21935CCB4(v44, v71, type metadata accessor for NewspaperGroupKnobs);
    v50 = v64;
    sub_21935CCB4(v40, v64, type metadata accessor for ChannelSectionsGroupModel);
    v51 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v52 = (v66 + *(v69 + 80) + v51) & ~*(v69 + 80);
    v53 = (v70 + *(v58 + 80) + v52) & ~*(v58 + 80);
    v54 = swift_allocObject();
    sub_21935CD1C(v48, v54 + v51, type metadata accessor for NewspaperGroupConfig);
    sub_21935CD1C(v49, v54 + v52, type metadata accessor for NewspaperGroupKnobs);
    sub_21935CD1C(v50, v54 + v53, type metadata accessor for ChannelSectionsGroupModel);
    v55 = sub_219BE2E54();
    type metadata accessor for NewspaperGroup(0);
    v18 = sub_219BE2F74();

    sub_21935CEC0(v40, type metadata accessor for ChannelSectionsGroupModel);
  }

  return v18;
}

id *sub_2193590F8(void *a1, void **a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v147 = a8;
  v145 = a7;
  v146 = a5;
  v139 = a6;
  v150 = a3;
  v151 = a1;
  v127 = sub_219BF2034();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D83D88];
  sub_21935D294(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v124 = &v113 - v14;
  v15 = sub_219BDBD34();
  MEMORY[0x28223BE20](v15 - 8);
  v123 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_219BDBD64();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v115 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21935CFA0(0, &qword_280E8FF40, MEMORY[0x277D342A0]);
  v122 = v18;
  v121 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v120 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v129 = &v113 - v21;
  sub_21935D294(0, qword_280EC58B0, type metadata accessor for ChannelSupergroupConfig, v12);
  MEMORY[0x28223BE20](v22 - 8);
  v137 = &v113 - v23;
  v24 = MEMORY[0x277D83D88];
  sub_21935D03C(0, &unk_280E8FD50, &qword_280E8FD60, MEMORY[0x277D345E8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v25 - 8);
  v134 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v130 = &v113 - v28;
  v29 = MEMORY[0x277D339B0];
  sub_21935D03C(0, &unk_280E903D0, &qword_280E903E0, MEMORY[0x277D339B0], v24);
  MEMORY[0x28223BE20](v30 - 8);
  v140 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v141 = &v113 - v33;
  sub_21935CFA0(0, &qword_280E903E0, v29);
  v142 = *(v34 - 8);
  v143 = v34;
  MEMORY[0x28223BE20](v34);
  v132 = &v113 - v35;
  v144 = sub_219BEFBD4();
  v36 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v38 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for ChannelSectionsGroupModel(0);
  MEMORY[0x28223BE20](v114);
  v40 = &v113 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ChannelHeroServiceRequest(0);
  MEMORY[0x28223BE20](v41);
  v154 = (&v113 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v117 = sub_219BF1934();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v128 = &v113 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *a2;
  ObjectType = swift_getObjectType();
  v136 = v44;
  v45 = [v44 identifier];
  v131 = sub_219BF5414();
  v149 = v46;

  v133 = a2;
  sub_21935CCB4(a2, v40, type metadata accessor for ChannelSectionsGroupModel);
  v47 = type metadata accessor for NewspaperGroupConfig(0);
  v48 = a4;
  v49 = *&a4[*(v47 + 96)];
  v50 = *MEMORY[0x277D30BC8];
  v51 = v36;
  v52 = *(v36 + 16);
  v53 = v38;
  v54 = v38;
  v55 = v144;
  v52(v54, v145);
  v145 = v47;
  v56 = *(v47 + 52);
  v138 = v48;
  v57 = MEMORY[0x277D84FA0];
  if ((v48[v56] & 1) == 0)
  {
    v57 = v139;
  }

  v58 = v154;
  sub_21935CD1C(v40, v154, type metadata accessor for ChannelSectionsGroupModel);
  *(v58 + v41[5]) = v150;
  *(v58 + v41[6]) = v49;
  *(v58 + v41[7]) = v50;
  (*(v51 + 32))(v58 + v41[8], v53, v55);
  *(v58 + v41[9]) = v147;
  *(v58 + v41[10]) = v57;
  *(v58 + v41[11]) = MEMORY[0x277D84FA0];
  __swift_project_boxed_opaque_existential_1(v151 + 15, v151[18]);
  v59 = *(v146 + 16);
  v60 = v49;
  v61 = v50;

  swift_unknownObjectRetain();
  v62 = v148;
  sub_21959BEBC(v58, v59);
  if (v62)
  {
    sub_21935CEC0(v58, type metadata accessor for ChannelHeroServiceRequest);

    return v58;
  }

  v148 = v63;
  v64 = v137;
  sub_218F998B0(v137);
  v65 = type metadata accessor for ChannelSupergroupConfig(0);
  if ((*(*(v65 - 8) + 48))(v64, 1, v65) == 1)
  {
    sub_21935D0A4(v64, qword_280EC58B0, type metadata accessor for ChannelSupergroupConfig);
    v66 = v138;
    v67 = v143;
    v68 = v140;
LABEL_9:
    v75 = *(v142 + 56);
    v75(v68, 1, 1, v67);
    v76 = v134;
    sub_21935D114(&v66[*(v145 + 20)], v134);
    sub_21935CFA0(0, &qword_280E8FD60, MEMORY[0x277D345E8]);
    v78 = v77;
    v79 = *(v77 - 8);
    if ((*(v79 + 48))(v76, 1, v77) == 1)
    {
      sub_21935D1B0(v76, &unk_280E8FD50, &qword_280E8FD60, MEMORY[0x277D345E8]);
      v80 = 1;
      v81 = v141;
    }

    else
    {
      v81 = v141;
      sub_219BF4B64();
      (*(v79 + 8))(v76, v78);
      v80 = 0;
    }

    v67 = v143;
    v75(v81, v80, 1, v143);
    v82 = v142;
    v83 = *(v142 + 48);
    v84 = v140;
    if (v83(v140, 1, v67) != 1)
    {
      sub_21935D1B0(v84, &unk_280E903D0, &qword_280E903E0, MEMORY[0x277D339B0]);
    }

    v85 = v141;
    goto LABEL_16;
  }

  v69 = v64 + *(v65 + 20);
  v70 = v130;
  sub_21935D114(v69, v130);
  sub_21935CEC0(v64, type metadata accessor for ChannelSupergroupConfig);
  sub_21935CFA0(0, &qword_280E8FD60, MEMORY[0x277D345E8]);
  v72 = v71;
  v73 = *(v71 - 8);
  v74 = (*(v73 + 48))(v70, 1, v71);
  v67 = v143;
  v68 = v140;
  if (v74 == 1)
  {
    sub_21935D1B0(v70, &unk_280E8FD50, &qword_280E8FD60, MEMORY[0x277D345E8]);
    v66 = v138;
    goto LABEL_9;
  }

  sub_219BF4B64();
  (*(v73 + 8))(v70, v72);
  v82 = v142;
  v86 = *(v142 + 56);
  v86(v68, 0, 1, v67);
  v85 = v141;
  (*(v82 + 32))(v141, v68, v67);
  v86(v85, 0, 1, v67);
  v83 = *(v82 + 48);
LABEL_16:
  if (v83(v85, 1, v67) == 1)
  {

    sub_21935D1B0(v85, &unk_280E903D0, &qword_280E903E0, MEMORY[0x277D339B0]);
    v58 = sub_219BEEDD4();
    sub_2186DED34(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    *v87 = 0xD00000000000001ALL;
    v87[1] = 0x8000000219CF3590;
    (*(*(v58 - 1) + 13))(v87, *MEMORY[0x277D323D8], v58);
    swift_willThrow();

    sub_21935CEC0(v154, type metadata accessor for ChannelHeroServiceRequest);
  }

  else
  {
    v88 = v132;
    (*(v82 + 32))(v132, v85, v67);
    v89 = v149;
    v90 = v131;
    v91 = sub_21935AA10(v138, v148, v131, v149, v133, v88);
    v147 = a9;
    v146 = v91;
    sub_21935C76C(v92);
    v152 = 0;
    v153 = 0xE000000000000000;
    sub_219BF7314();

    v152 = 0x657061707377656ELL;
    v153 = 0xEB000000003A3A72;
    MEMORY[0x21CECC330](v90, v89);
    MEMORY[0x21CECC330](14906, 0xE200000000000000);
    v94 = v115;
    sub_219BDBD54();
    v95 = sub_219BDBD44();
    v97 = v96;
    (*(v118 + 8))(v94, v119);
    MEMORY[0x21CECC330](v95, v97);

    v140 = v153;
    v141 = v152;
    sub_219BDBD24();
    v144 = sub_219BEC004();
    v98 = *(v144 - 8);
    v142 = *(v98 + 56);
    v145 = v98 + 56;
    v99 = v124;
    (v142)(v124, 1, 1, v144);
    v100 = v121;
    v101 = v129;
    v102 = v122;
    (*(v121 + 16))(v120, v129, v122);
    v103 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84FA0];
    sub_219BF16F4();

    (*(v100 + 8))(v101, v102);
    (*(v82 + 8))(v132, v143);
    sub_21935CEC0(v154, type metadata accessor for ChannelHeroServiceRequest);
    sub_218CFD82C(*(v133 + *(v114 + 24)), v104);
    v154 = 0;
    v152 = v105;

    sub_2191ED6C8(v106);
    v150 = v152;
    sub_2192F7C88(v107);
    (v142)(v99, 1, 1, v144);
    sub_219A95188(v103);
    sub_219A95188(v103);
    sub_219A951A0(v103);
    sub_219A951B8(v103);
    sub_219A952CC(v103);
    sub_219A952E4(v103);
    sub_219A953F8(v103);
    v112 = v99;
    v108 = v128;
    v109 = v125;
    sub_219BF2024();
    v58 = v151[23];
    __swift_project_boxed_opaque_existential_1(v151 + 20, v58);
    v110 = v154;
    v111 = sub_219BF2194();
    if (!v110)
    {
      v58 = v111;
    }

    (*(v126 + 8))(v109, v127);
    (*(v116 + 8))(v108, v117);
  }

  return v58;
}

void sub_21935A320(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a5;
  v65 = a4;
  v58 = a3;
  v62 = a1;
  v7 = type metadata accessor for ChannelSectionsGroupSectionModel(0);
  v46[0] = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x277D32040];
  sub_21935D294(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v57 = v46 - v11;
  v12 = sub_219BEF554();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v64 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v46 - v16;
  v54 = v46 - v16;
  v18 = sub_219BF1904();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v21;
  v22 = sub_219BED8D4();
  v60 = *(v22 - 8);
  v61 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = (v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v21, v62, v18, v23);
  v26 = type metadata accessor for NewspaperGroupConfig(0);
  v27 = v26[10];
  v28 = (a2 + v26[9]);
  v30 = *v28;
  v29 = v28[1];
  v55 = v30;
  v50 = v29;
  v31 = *(v13 + 16);
  v31(v17, a2 + v27, v12);
  v31(v64, a2 + v26[11], v12);
  v32 = v58;
  v53 = *(v58 + 32);
  v52 = *(v58 + 40);
  v51 = *(v58 + 48);
  v49 = *(v58 + 56);
  v33 = v26[21];
  v34 = (a2 + v26[20]);
  v48 = *v34;
  v47 = *(v34 + 8);
  v46[1] = *(a2 + v33);
  v62 = a2;
  v35 = v32 + *(type metadata accessor for NewspaperGroupKnobs(0) + 40);
  sub_21935CF20(v35, v57, &unk_280E91B60, v59);

  v59 = v25;
  sub_219BED854();
  v36 = *(v65 + *(type metadata accessor for ChannelSectionsGroupModel(0) + 24));
  v37 = *(v36 + 16);
  v38 = MEMORY[0x277D84F90];
  if (v37)
  {
    v66 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v39 = v36 + ((*(v46[0] + 80) + 32) & ~*(v46[0] + 80));
    v40 = *(v46[0] + 72);
    do
    {
      sub_21935CCB4(v39, v9, type metadata accessor for ChannelSectionsGroupSectionModel);
      swift_unknownObjectRetain();
      sub_21935CEC0(v9, type metadata accessor for ChannelSectionsGroupSectionModel);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v39 += v40;
      --v37;
    }

    while (v37);
    v38 = v66;
  }

  v41 = v62;
  v42 = v63;
  sub_21935CCB4(v62, v63, type metadata accessor for NewspaperGroupConfig);
  v43 = *v65;
  v44 = *(v41 + v26[25]);
  v45 = type metadata accessor for NewspaperGroup(0);
  (*(v60 + 32))(v42 + v45[5], v59, v61);
  *(v42 + v45[6]) = v43;
  *(v42 + v45[7]) = v38;
  *(v42 + v45[8]) = v44;

  swift_unknownObjectRetain();
}

double sub_21935A8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + *(type metadata accessor for NewspaperGroupConfig(0) + 96));
  v7 = sub_219BF61F4();
  sub_2186F20D4(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09EC0;
  v9 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v10 = sub_2186FC3BC();
  *(v8 + 64) = v10;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);

  sub_219BF7484();
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0xE000000000000000;
  sub_219BE5314("Unable to create newspaper group for channel, channelID=%{public}@, error=%{public}@", 84, 2, &dword_2186C1000, v6, v7, v8);

  return result;
}

uint64_t sub_21935AA10(char *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v148 = a6;
  v159 = a5;
  v172 = a4;
  v179 = a3;
  v190 = a2;
  v7 = sub_219BF19F4();
  MEMORY[0x28223BE20](v7 - 8);
  v151 = v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21935CFA0(0, &qword_280E903E0, MEMORY[0x277D339B0]);
  v144 = v9;
  v143 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v145 = v142 - v10;
  sub_21935CFA0(0, &qword_280E8FD60, MEMORY[0x277D345E8]);
  MEMORY[0x28223BE20](v11 - 8);
  v146 = v142 - v12;
  v150 = sub_219BF2DE4();
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v147 = v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for ChannelSectionsGroupSectionModel(0);
  v166 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v173 = v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_219BF20B4();
  v175 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v165 = v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v193 = v142 - v17;
  v18 = MEMORY[0x277D83D88];
  sub_21935D294(0, &qword_280E8FEA0, MEMORY[0x277D343A0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v19 - 8);
  v183 = v142 - v20;
  v21 = sub_219BF3034();
  MEMORY[0x28223BE20](v21 - 8);
  v182 = v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_219BF3C94();
  v158 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v180 = (v142 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v186 = sub_219BF2D44();
  v184 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v185 = v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v191 = v142 - v26;
  v189 = sub_219BF1A44();
  v163 = *(v189 - 1);
  MEMORY[0x28223BE20](v189);
  v188 = v142 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = v142 - v29;
  v31 = MEMORY[0x277D339D0];
  sub_21935D294(0, &qword_280E903B0, MEMORY[0x277D339D0], v18);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = (v142 - v33);
  v35 = sub_219BF26F4();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = v142 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = v142 - v40;
  v197 = MEMORY[0x277D84FA0];
  v42 = type metadata accessor for NewspaperGroupConfig(0);
  sub_21935CF20(&a1[v42[8]], v34, &qword_280E903B0, v31);
  v43 = (*(v36 + 48))(v34, 1, v35);
  v162 = v38;
  v192 = v42;
  v156 = v36;
  if (v43 != 1)
  {
    (*(v36 + 32))(v41, v34, v35);
    (*(v36 + 16))(v38, v41, v35);
    sub_219BF1A04();
    v45 = sub_2191F8688(0, 1, 1, MEMORY[0x277D84F90]);
    v47 = *(v45 + 16);
    v50 = *(v45 + 24);
    v34 = (v47 + 1);
    if (v47 >= v50 >> 1)
    {
      v45 = sub_2191F8688((v50 > 1), v47 + 1, 1, v45);
    }

    v49 = v189;
    (*(v36 + 8))(v41, v35);
    v48 = v179;
    goto LABEL_8;
  }

  sub_21935D0A4(v34, &qword_280E903B0, MEMORY[0x277D339D0]);
  if (!*&a1[v42[7] + 8])
  {
    v152 = MEMORY[0x277D84F90];
    v48 = v179;
    goto LABEL_9;
  }

  v44 = v162;
  sub_219BF20F4();
  (*(v156 + 104))(v44, *MEMORY[0x277D339C8], v35);
  v30 = v188;
  sub_219BF1A04();
  v45 = sub_2191F8688(0, 1, 1, MEMORY[0x277D84F90]);
  v47 = *(v45 + 16);
  v46 = *(v45 + 24);
  v34 = (v47 + 1);
  if (v47 >= v46 >> 1)
  {
    goto LABEL_124;
  }

LABEL_4:
  v48 = v179;
  v49 = v189;
LABEL_8:
  *(v45 + 16) = v34;
  v51 = *(v163 + 32);
  v52 = (*(v163 + 80) + 32) & ~*(v163 + 80);
  v152 = v45;
  v51(v45 + v52 + *(v163 + 72) * v47, v30, v49);
  v42 = v192;
LABEL_9:
  v45 = *(v190 + 16);
  v53 = (v45 >> 62);
  if (!(v45 >> 62))
  {
    v54 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

  while (1)
  {
    v54 = sub_219BF7214();
    v42 = v192;
LABEL_11:
    if (v54 < *&a1[v42[16]])
    {

      if (qword_280E8D7C8 != -1)
      {
        swift_once();
      }

      v55 = qword_280F616F0;
      sub_2186F20D4(0);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_219C09EC0;
      if (v53)
      {
        v57 = sub_219BF7214();
      }

      else
      {
        v57 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v60 = MEMORY[0x277D83C10];
      *(v56 + 56) = MEMORY[0x277D83B88];
      *(v56 + 64) = v60;
      *(v56 + 32) = v57;
      *(v56 + 96) = MEMORY[0x277D837D0];
      *(v56 + 104) = sub_2186FC3BC();
      v61 = v172;
      *(v56 + 72) = v48;
      *(v56 + 80) = v61;

      v62 = sub_219BF6214();
      sub_219BE5314("Not enough hero articles=%ld for channelID=%{public}@", 53, 2, &dword_2186C1000, v55, v62, v56);

      v63 = 3;
      goto LABEL_113;
    }

    v46 = v42[17];
    v47 = *&a1[v46];
    if ((v47 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      v45 = sub_2191F8688((v46 > 1), v34, 1, v45);
      goto LABEL_4;
    }

    if (!v53)
    {
      v58 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v58 >= v47)
      {
        v46 = *&a1[v46];
      }

      else
      {
        v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v47)
      {
        v59 = v46;
      }

      else
      {
        v59 = 0;
      }

      goto LABEL_39;
    }

    v30 = (v45 & 0x8000000000000000) != 0 ? v45 : v45 & 0xFFFFFFFFFFFFFF8;
    v64 = sub_219BF7214();
    result = sub_219BF7214();
    if (result < 0)
    {
      break;
    }

    if (v64 >= v47)
    {
      v66 = v47;
    }

    else
    {
      v66 = v64;
    }

    if (v64 < 0)
    {
      v66 = v47;
    }

    if (v47)
    {
      v59 = v66;
    }

    else
    {
      v59 = 0;
    }

    v58 = sub_219BF7214();
LABEL_39:
    if (v58 < v59)
    {
      goto LABEL_123;
    }

    if ((v45 & 0xC000000000000001) != 0 && v59)
    {
      v30 = sub_218731D50();

      v67 = 0;
      do
      {
        v68 = v67 + 1;
        sub_219BF7334();
        v67 = v68;
      }

      while (v59 != v68);
    }

    else
    {
    }

    v188 = a1;
    v160 = v35;
    if (v53)
    {

      v157 = sub_219BF7564();
      v59 = v71 >> 1;
    }

    else
    {
      v69 = 0;
      v157 = v45 & 0xFFFFFFFFFFFFFF8;
      v70 = (v45 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v187 = MEMORY[0x277D84F90];
    if (v59 == v69)
    {
LABEL_50:
      swift_unknownObjectRelease();
      v72 = type metadata accessor for ChannelSectionsGroupModel(0);
      v45 = v142;
      v73 = *(v159 + *(v72 + 24));
      MEMORY[0x28223BE20](v72);
      v35 = v188;
      *&v141 = v188;

      v74 = v73;
      v75 = v164;
      sub_2195E6694(sub_21935D220, &v140, v74);
      v142[1] = v75;
      v77 = *(v76 + 16);
      if (v77 < *(v35 + v192[18]))
      {

        v63 = 4;
        v61 = v172;
        v48 = v179;
        goto LABEL_113;
      }

      v142[0] = *(v35 + v192[18]);
      v48 = v179;
      if (!v77)
      {

        v134 = 0;
LABEL_110:

        if (v134 >= v142[0])
        {
          v194 = 0;
          v195 = 0xE000000000000000;
          sub_219BF7314();

          v194 = 0xD000000000000013;
          v195 = 0x8000000219D19000;
          MEMORY[0x21CECC330](v48, v172);
          (*(v143 + 16))(v145, v148, v144);
          sub_219BF1944();
          sub_2186DED34(&unk_280E907F0, MEMORY[0x277D33498], MEMORY[0x277D33490]);
          sub_219BF4B74();
          v140 = 0u;
          v141 = 0u;
          v136 = v151;
          sub_219BF19E4();
          *&v141 = v136;
          *(&v141 + 1) = MEMORY[0x277D84F90];
          v137 = v147;
          sub_219BF2D54();
          sub_21935D294(0, &unk_280E8B7F0, MEMORY[0x277D33C00], MEMORY[0x277D84560]);
          v138 = v149;
          v139 = (*(v149 + 80) + 32) & ~*(v149 + 80);
          v63 = swift_allocObject();
          *(v63 + 16) = xmmword_219C09BA0;
          (*(v138 + 32))(v63 + v139, v137, v150);
          return v63;
        }

        v63 = 4;
        v61 = v172;
LABEL_113:
        sub_21935D240();
        swift_allocError();
        *v135 = v48;
        *(v135 + 8) = v61;
        *(v135 + 16) = v63;
        swift_willThrow();

        return v63;
      }

      v170 = 0;
      v102 = 0;
      *&v168 = *(v35 + v192[14]);
      v169 = (v76 + ((*(v166 + 80) + 32) & ~*(v166 + 80)));
      LODWORD(v178) = *MEMORY[0x277D340E0];
      v177 = (v158 + 104);
      v176 = v184 + 32;
      v158 = "}@, error=%{public}@";
      LODWORD(v157) = *MEMORY[0x277D339C8];
      v156 += 104;
      v155 = "newspaper-section-kicker-title";
      v154 = v175 + 32;
      v153 = xmmword_219C09EC0;
      *&v167 = v76;
      v164 = v77;
      while (v102 < *(v76 + 16))
      {
        v103 = *(v166 + 72);
        v171 = v102;
        v104 = v169 + v103 * v102;
        v105 = v173;
        sub_21935CCB4(v104, v173, type metadata accessor for ChannelSectionsGroupSectionModel);
        v106 = *(v105 + 48);
        if (v106 >> 62)
        {
          v53 = sub_219BF7214();
          if (v53)
          {
LABEL_73:
            v48 = 0;
            v193 = (v106 & 0xC000000000000001);
            v191 = (v106 & 0xFFFFFFFFFFFFFF8);
            v159 = v106;
            v190 = v106 + 32;
            v34 = MEMORY[0x277D84F90];
            v189 = v53;
            while (1)
            {
              if (v193)
              {
                v107 = MEMORY[0x21CECE0F0](v48, v159);
              }

              else
              {
                if (v48 >= *(v191 + 2))
                {
                  goto LABEL_116;
                }

                v107 = *(v190 + 8 * v48);
                swift_unknownObjectRetain();
              }

              v108 = __OFADD__(v48++, 1);
              if (v108)
              {
                break;
              }

              if (v34[2] >= *(v35 + v192[15]))
              {
                swift_unknownObjectRelease();
                goto LABEL_99;
              }

              v109 = v34;
              v110 = v197;
              v111 = [v107 identifier];
              v112 = sub_219BF5414();
              a1 = v113;

              if (*(v110 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v114 = sub_219BF7AE4(), v45 = v110 + 56, v115 = -1 << *(v110 + 32), v116 = v114 & ~v115, ((*(v110 + 56 + ((v116 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v116) & 1) != 0))
              {
                v30 = ~v115;
                while (1)
                {
                  v117 = (*(v110 + 48) + 16 * v116);
                  v118 = *v117 == v112 && v117[1] == a1;
                  if (v118 || (sub_219BF78F4() & 1) != 0)
                  {
                    break;
                  }

                  v116 = (v116 + 1) & v30;
                  if (((*(v45 + ((v116 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v116) & 1) == 0)
                  {
                    goto LABEL_89;
                  }
                }

                swift_unknownObjectRelease();

                v35 = v188;
                v53 = v189;
                v34 = v109;
                if (v48 == v189)
                {
                  goto LABEL_99;
                }
              }

              else
              {
LABEL_89:

                v119 = [v107 identifier];
                v120 = sub_219BF5414();
                v122 = v121;

                sub_219497B60(&v194, v120, v122);

                v123 = [v107 identifier];
                sub_219BF5414();
                a1 = v124;

                sub_219BF2FF4();
                sub_219BF16E4();
                swift_allocObject();
                v125 = sub_219BF1694();
                v126 = v180;
                *v180 = v125;
                (*v177)(v126, v178, v181);
                v127 = sub_219BF4324();
                (*(*(v127 - 8) + 56))(v183, 1, 1, v127);
                sub_219BF2D24();
                v34 = v109;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v34 = sub_2191F8620(0, v109[2] + 1, 1, v109);
                }

                v35 = v188;
                v53 = v189;
                v30 = v34[2];
                v128 = v34[3];
                v45 = v30 + 1;
                if (v30 >= v128 >> 1)
                {
                  v34 = sub_2191F8620((v128 > 1), v30 + 1, 1, v34);
                }

                swift_unknownObjectRelease();
                v34[2] = v45;
                (*(v184 + 32))(v34 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v30, v185, v186);
                if (v48 == v53)
                {
                  goto LABEL_99;
                }
              }
            }

            __break(1u);
LABEL_116:
            __break(1u);
            goto LABEL_117;
          }
        }

        else
        {
          v53 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v53)
          {
            goto LABEL_73;
          }
        }

        v34 = MEMORY[0x277D84F90];
LABEL_99:
        if (v34[2] < v168)
        {

          v48 = v179;
        }

        else
        {
          v194 = 0x2D6E6F6974636573;
          v195 = 0xE800000000000000;
          v196 = v170;
          v129 = sub_219BF7894();
          MEMORY[0x21CECC330](v129);

          v193 = v194;
          v191 = v195;
          sub_21935D294(0, &qword_280E8B850, MEMORY[0x277D334E0], MEMORY[0x277D84560]);
          v190 = *(v163 + 72);
          v30 = swift_allocObject();
          *(v30 + 16) = v153;
          a1 = v162;
          sub_219BF20F4();
          v53 = v156;
          v189 = v34;
          v34 = *v156;
          v130 = v157;
          v131 = v160;
          (*v156)(a1, v157, v160);
          sub_219BF1A04();
          sub_219BF20E4();
          (v34)(a1, v130, v131);
          sub_219BF1A04();
          sub_219BF2054();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v187 = sub_2191F8654(0, v187[2] + 1, 1, v187);
          }

          v45 = v187[2];
          v132 = v187[3];
          v48 = v179;
          if (v45 >= v132 >> 1)
          {
            v187 = sub_2191F8654((v132 > 1), v45 + 1, 1, v187);
          }

          v133 = v187;
          v187[2] = v45 + 1;
          (*(v175 + 32))(v133 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v45, v165, v174);
          v108 = __OFADD__(v170++, 1);
          if (v108)
          {
            goto LABEL_120;
          }
        }

        v102 = v171 + 1;
        sub_21935CEC0(v173, type metadata accessor for ChannelSectionsGroupSectionModel);
        v76 = v167;
        if (v102 == v164)
        {

          v134 = v170;
          goto LABEL_110;
        }
      }
    }

    else
    {
      v35 = 0;
      v189 = (v158 + 104);
      v178 = v184 + 16;
      LODWORD(v177) = *MEMORY[0x277D340E0];
      v176 = v175 + 32;
      v169 = (v184 + 8);
      v171 = v59 - v69;
      if (v59 <= v69)
      {
        v78 = v69;
      }

      else
      {
        v78 = v59;
      }

      v190 = v78 - v69;
      v170 = v70 + 8 * v69;
      a1 = MEMORY[0x277D83B88];
      v168 = xmmword_219C09BA0;
      v167 = xmmword_219C0B8C0;
      v187 = MEMORY[0x277D84F90];
      while (v190 != v35)
      {
        if (__OFADD__(v35, 1))
        {
          goto LABEL_118;
        }

        v48 = *(v170 + 8 * v35);
        v79 = [swift_unknownObjectRetain() identifier];
        v80 = sub_219BF5414();
        v82 = v81;

        sub_219497B60(&v194, v80, v82);

        v83 = [v48 identifier];
        sub_219BF5414();

        sub_219BF2FF4();
        sub_219BF16E4();
        swift_allocObject();
        v84 = sub_219BF1694();
        v85 = v180;
        *v180 = v84;
        (*v189)(v85, v177, v181);
        v86 = sub_219BF4324();
        (*(*(v86 - 8) + 56))(v183, 1, 1, v86);
        v87 = v191;
        sub_219BF2D24();
        v194 = 0x2D6F726568;
        v195 = 0xE500000000000000;
        v196 = v35;
        v88 = sub_219BF7894();
        MEMORY[0x21CECC330](v88);

        sub_21935D294(0, &unk_280E8B800, MEMORY[0x277D33BF0], MEMORY[0x277D84560]);
        v89 = v184;
        v90 = (*(v184 + 80) + 32) & ~*(v184 + 80);
        v91 = swift_allocObject();
        *(v91 + 16) = v168;
        (*(v89 + 16))(v91 + v90, v87, v186);
        sub_219BF2054();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v187 = sub_2191F8654(0, v187[2] + 1, 1, v187);
        }

        v93 = v187[2];
        v92 = v187[3];
        if (v93 >= v92 >> 1)
        {
          v187 = sub_2191F8654((v92 > 1), v93 + 1, 1, v187);
        }

        v94 = v187;
        v187[2] = v93 + 1;
        (*(v175 + 32))(v94 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v93, v193, v174);
        if (qword_280E8D7C8 != -1)
        {
          swift_once();
        }

        v45 = qword_280F616F0;
        sub_2186F20D4(0);
        v95 = swift_allocObject();
        *(v95 + 16) = v167;
        v34 = [v48 identifier];
        v96 = sub_219BF5414();
        v30 = v97;

        v53 = MEMORY[0x277D837D0];
        *(v95 + 56) = MEMORY[0x277D837D0];
        v98 = sub_2186FC3BC();
        *(v95 + 32) = v96;
        *(v95 + 40) = v30;
        a1 = MEMORY[0x277D83B88];
        *(v95 + 96) = MEMORY[0x277D83B88];
        v99 = MEMORY[0x277D83C10];
        *(v95 + 64) = v98;
        *(v95 + 72) = v35;
        *(v95 + 136) = v53;
        *(v95 + 144) = v98;
        v100 = v179;
        *(v95 + 104) = v99;
        *(v95 + 112) = v100;
        *(v95 + 120) = v172;

        v101 = sub_219BF6214();
        sub_219BE5314("Appended FormatContentSlot for hero articleID=%{public}@, index=%ld, channelID=%{public}@", 89, 2, &dword_2186C1000, v45, v101, v95);
        swift_unknownObjectRelease();

        (*v169)(v191, v186);
        if (v171 == ++v35)
        {
          goto LABEL_50;
        }
      }

LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
    }

    __break(1u);
LABEL_120:
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_21935C6F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (v3 >> 62)
  {
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4 >= *(a2 + *(type metadata accessor for NewspaperGroupConfig(0) + 56));
}

uint64_t sub_21935C76C(__n128 a1)
{
  sub_21935CFA0(0, &qword_280E8FF40, MEMORY[0x277D342A0]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - v4;
  sub_21935D294(0, qword_280EC58B0, type metadata accessor for ChannelSupergroupConfig, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = MEMORY[0x277D339B0];
  sub_21935D03C(0, &unk_280E903D0, &qword_280E903E0, MEMORY[0x277D339B0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - v11;
  sub_21935CFA0(0, &qword_280E903E0, v9);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  swift_getObjectType();
  sub_218F998B0(v8);
  v18 = type metadata accessor for ChannelSupergroupConfig(0);
  if ((*(*(v18 - 8) + 48))(v8, 1, v18) == 1)
  {
    sub_21935D0A4(v8, qword_280EC58B0, type metadata accessor for ChannelSupergroupConfig);
    (*(v15 + 56))(v12, 1, 1, v14);
LABEL_4:
    sub_21935D1B0(v12, &unk_280E903D0, &qword_280E903E0, MEMORY[0x277D339B0]);
    sub_219BF1944();
    sub_2186DED34(&unk_280E907F0, MEMORY[0x277D33498], MEMORY[0x277D33490]);
    return sub_219BF4064();
  }

  (*(v3 + 16))(v5, v8, v2);
  sub_21935CEC0(v8, type metadata accessor for ChannelSupergroupConfig);
  sub_219BF4054();
  (*(v3 + 8))(v5, v2);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    goto LABEL_4;
  }

  (*(v15 + 32))(v17, v12, v14);
  sub_21935D03C(0, &unk_280E8B810, &qword_280E903E0, MEMORY[0x277D339B0], MEMORY[0x277D84560]);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_219C09BA0;
  (*(v15 + 16))(v21 + v20, v17, v14);
  sub_219BF1944();
  sub_2186DED34(&unk_280E907F0, MEMORY[0x277D33498], MEMORY[0x277D33490]);
  sub_219BF4064();
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_21935CCB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21935CD1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21935CD84(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NewspaperGroupConfig(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for NewspaperGroupKnobs(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for ChannelSectionsGroupModel(0) - 8);
  sub_21935A320(a1, v2 + v6, v2 + v9, (v2 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80))), a2);
}

uint64_t sub_21935CEC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21935CF20(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_21935D294(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_21935CFA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_219BF1944();
    v7 = sub_2186DED34(&unk_280E907F0, MEMORY[0x277D33498], MEMORY[0x277D33490]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21935D03C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_21935CFA0(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_21935D0A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21935D294(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21935D114(uint64_t a1, uint64_t a2)
{
  sub_21935D03C(0, &unk_280E8FD50, &qword_280E8FD60, MEMORY[0x277D345E8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21935D1B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_21935D03C(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_21935D240()
{
  result = qword_27CC19158;
  if (!qword_27CC19158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19158);
  }

  return result;
}

void sub_21935D294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21935D344(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = *(a1 + *(type metadata accessor for AudioFeedTrack(0) + 44));

  return a4(v6, v7, a2, a3);
}

char *sub_21935D3C0(uint64_t a1)
{
  v1 = sub_219BE00C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE00B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *&result[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_eventHandler];
    v14 = result;
    swift_unknownObjectRetain();

    __swift_project_boxed_opaque_existential_1((v13 + 88), *(v13 + 112));
    (*(v2 + 104))(v4, *MEMORY[0x277D2E328], v1);
    sub_219BE00A4();
    (*(v6 + 16))(v8, v11, v5);
    v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v16 = swift_allocObject();
    (*(v6 + 32))(v16 + v15, v8, v5);
    sub_219BDD154();

    (*(v6 + 8))(v11, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_21935D644(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_conclusion] = 3;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *&result[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_eventHandler];
    v4 = result;
    swift_unknownObjectRetain();

    __swift_project_boxed_opaque_existential_1((v3 + 88), *(v3 + 112));
    sub_219BDD154();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21935D778(uint64_t a1, uint64_t a2, char a3)
{
  v6 = v3;
  v7 = *(*(v3 + OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_eventHandler) + 32);
  v8 = v7[9];
  v9 = v7[10];
  __swift_project_boxed_opaque_existential_1(v7 + 6, v8);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = *(v9 + 32);

  v11(a1, a2, v10, v8, v9);

  *(v6 + OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_conclusion) = a3;
  return result;
}

void sub_21935D9D8()
{
  v1 = v0;
  swift_getObjectType();
  [v0 setModalPresentationStyle_];
  v2 = [v0 contentView];
  [v2 setClipsToBounds_];

  v3 = *&v1[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_imageView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_218DF5180(v39);

  sub_218BAF928(v39);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_219BF53D4();

  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 compatibleWithTraitCollection:0];

  if (v7)
  {
    [v3 setImage_];

    [v3 setContentMode_];
    [v3 sizeToFit];
    v8 = [v1 contentView];
    [v8 addSubview_];

    v9 = objc_opt_self();
    sub_21935E4E8(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C24300;
    v11 = [v3 topAnchor];
    v12 = [v1 contentView];
    v13 = [v12 topAnchor];

    v14 = [v11 constraintEqualToAnchor_];
    *(v10 + 32) = v14;
    v15 = [v3 leadingAnchor];
    v16 = [v1 contentView];
    v17 = [v16 leadingAnchor];

    v18 = [v15 constraintEqualToAnchor_];
    *(v10 + 40) = v18;
    v19 = [v3 trailingAnchor];
    v20 = [v1 contentView];
    v21 = [v20 trailingAnchor];

    v22 = [v19 constraintEqualToAnchor_];
    *(v10 + 48) = v22;
    v23 = [v3 bottomAnchor];
    v24 = [v1 contentView];
    v25 = [v24 bottomAnchor];

    v26 = [v23 constraintEqualToAnchor_];
    *(v10 + 56) = v26;
    sub_218C264F8();
    v27 = sub_219BF5904();

    [v9 activateConstraints_];

    sub_218DF5180(v40);
    v44 = v41;
    sub_2189D2C04(&v44, v43);
    sub_218BAF928(v40);
    v28 = *(&v44 + 1);
    if (*(&v44 + 1))
    {
      v29 = v44;
      v30 = [v1 buttonTray];
      sub_21935E4E8(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_219C09BA0;
      *(v31 + 32) = v29;
      *(v31 + 40) = v28;
      v32 = sub_219BF5904();

      [v30 setPrivacyLinkForBundles_];
    }

    v33 = *&v1[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_confirmationButton];
    sub_218DF5180(v42);

    sub_218BAF928(v42);
    v34 = sub_219BF53D4();

    [v33 setTitle:v34 forState:0];

    [v33 addTarget:v1 action:sel_doConfirmationAction forControlEvents:64];
    v35 = [v1 buttonTray];
    [v35 addButton_];

    v36 = *&v1[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_deferButton];
    sub_218DF5180(v43);

    sub_218BAF928(v43);
    v37 = sub_219BF53D4();

    [v36 setTitle:v37 forState:0];

    [v36 addTarget:v1 action:sel_doDeferAction forControlEvents:64];
    v38 = [v1 buttonTray];
    [v38 addButton_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21935E0B8(char a1)
{
  v2 = v1;
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1 & 1);
  __swift_project_boxed_opaque_existential_1((*&v2[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_eventHandler] + 88), *(*&v2[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_eventHandler] + 112));
  sub_219BDD154();
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_app], *&v2[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_app + 24]);
  [sub_219BEA8D4() setIsActive_];
  return swift_unknownObjectRelease();
}

uint64_t sub_21935E1E0(char a1)
{
  v2 = v1;
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidDisappear_, a1 & 1);
  v4 = OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_conclusion;
  if (v2[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_conclusion] == 3)
  {
    v5 = 2;
  }

  else
  {
    v5 = v2[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_conclusion];
  }

  sub_218FA7C90(v5);
  v2[v4] = 3;
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_app], *&v2[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_app + 24]);
  [sub_219BEA8D4() setIsActive_];
  return swift_unknownObjectRelease();
}

void sub_21935E3CC()
{
  sub_218718690(v0 + OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_styler, v7);
  v1 = __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = *(*__swift_project_boxed_opaque_existential_1((*v1 + 16), *(*v1 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme);
    [v3 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v7);
    v5 = [v0 contentView];
    v6 = [objc_opt_self() clearColor];
    [v5 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_21935E4E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_21935E558(unsigned __int8 a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935E658(unsigned __int8 a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935E784(unsigned __int8 a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935E8A4(unsigned __int8 a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935E99C(unsigned __int8 a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935EAAC(unsigned __int8 a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935EBB0(unsigned __int8 a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935ECB0(unsigned __int8 a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935EDCC(unsigned __int8 a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935EEE8(unsigned __int8 a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935F004(unsigned __int8 a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935F124(unsigned __int8 a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935F234(unsigned __int8 a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_21935F364(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

unint64_t sub_21935F464@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_219362178(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21935F494(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0x656546664F706F74;
  v5 = 0xE600000000000000;
  v6 = 0x646568636163;
  v7 = 0xEC0000006C6F6F70;
  v8 = 0x6552646568636163;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x8000000219CD7F50;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x68736572666572;
  if (v2 != 1)
  {
    v10 = 0x646E61707865;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_21935F610()
{
  result = qword_27CC19198;
  if (!qword_27CC19198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19198);
  }

  return result;
}

id sub_21935F664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v53 = a3;
  v4 = sub_219BDB184();
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_219BEE3D4();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF0BD4();
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDBD34();
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x28223BE20](v11);
  v51 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v50 = &v50 - v14;
  MEMORY[0x28223BE20](v15);
  v64 = &v50 - v16;
  sub_219362040(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BEEAF4();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v23 + 16);
  v61 = a1;
  v27(v26, a1, v22, v24);
  v28 = (*(v23 + 88))(v26, v22);
  if (v28 == *MEMORY[0x277D32288])
  {
    v29 = v57;
    v30 = *(v57 + 24);

    sub_219BF0994();
    sub_219BEE374();

    v31 = sub_219BEFA14();
    (*(v19 + 8))(v21, v18);
    sub_2194796A0(v31, v30);
    v33 = v32;
    v34 = v29;
    v35 = v64;
  }

  else
  {
    v34 = v57;
    v33 = MEMORY[0x277D84FA0];
    if (v28 == *MEMORY[0x277D32270])
    {
      v35 = v64;
    }

    else
    {
      v35 = v64;
      if (v28 != *MEMORY[0x277D32280] && v28 != *MEMORY[0x277D32278])
      {
        (*(v23 + 8))(v26, v22);
      }
    }
  }

  sub_21935FCBC(v34, v35);
  v36 = *(v34 + 8);
  sub_219BF08F4();
  sub_219BF0BB4();
  (*(v58 + 8))(v10, v59);
  v37 = v63;
  v38 = sub_219BF5F24();
  if (v37)
  {

    (*(v60 + 8))(v7, v62);
    return (*(v54 + 8))(v35, v55);
  }

  else
  {
    v61 = v33;
    v63 = v38;
    (*(v60 + 8))(v7, v62);
    result = [v36 startDate];
    if (result)
    {
      v40 = result;
      sub_2186E2348();
      v41 = v50;
      sub_219BDBCA4();

      v42 = v51;
      sub_219BDBD24();
      sub_219BDB104();
      v43 = v55;
      v44 = *(v54 + 8);
      v44(v42, v55);
      v44(v41, v43);
      v45 = sub_219BF5F04();
      v46 = *(type metadata accessor for TodayFeedServiceContext(0) + 36);
      v47 = sub_219BEE754();
      v48 = v53;
      (*(*(v47 - 8) + 16))(v53 + v46, v34 + v46, v47);
      *v48 = 1;
      *(v48 + 8) = v63;
      result = (v44)(v64, v43);
      v49 = v61;
      *(v48 + 16) = v45;
      *(v48 + 24) = v49;
      *(v48 + 32) = MEMORY[0x277D84FA0];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_21935FCBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v25 = a2;
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  sub_2186DDBE0(0, &qword_280E90C58, MEMORY[0x277D32FE8]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_219BF0C04();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayPrewarmManager();
  sub_219BDBD24();
  sub_2187B8F4C(v10, v13);
  v18 = *(v3 + 8);
  v18(v10, v2);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_21936211C(v13, &qword_280E90C58, MEMORY[0x277D32FE8]);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_219BF0BE4();
    result = [*(v24 + 8) laterDate];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v20 = result;
    v21 = v23;
    sub_219BDBCA4();

    LOBYTE(v20) = sub_219BDBC14();
    v18(v7, v2);
    v18(v21, v2);
    if (v20)
    {
      sub_219BF0BE4();
      return (*(v15 + 8))(v17, v14);
    }

    (*(v15 + 8))(v17, v14);
  }

  return sub_219BDBD24();
}

id sub_219360004@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = sub_219BDBD34();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v42 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v41 = &v38 - v5;
  v6 = sub_219BDB184();
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_219BEE754();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46 - 8);
  v48 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEE3D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF0BD4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF08F4();
  sub_219BF0BB4();
  v17 = v16;
  v18 = v45;
  (*(v14 + 8))(v17, v13);
  v19 = sub_219BF5F14();
  (*(v10 + 8))(v12, v9);
  v20 = *(v1 + 24);
  v49 = MEMORY[0x277D84FA0];
  sub_2186E2394();

  sub_219BF08A4();
  sub_2194796A0(v50, v20);
  v39 = v21;
  sub_219BF0944();
  v22 = sub_21960A8D8();

  sub_2194796A0(v23, v22);
  v38 = v24;
  v25 = type metadata accessor for TodayFeedServiceContext(0);
  v26 = v47;
  v27 = v46;
  (*(v18 + 16))(v48, v1 + *(v25 + 36));
  *v26 = 2;
  *(v26 + 8) = v19;
  result = [v19 startDate];
  if (result)
  {
    v29 = result;
    sub_2186E2348();
    v30 = v41;
    sub_219BDBCA4();

    v31 = v42;
    sub_219BDBD24();
    sub_219BDB104();
    v32 = *(v43 + 8);
    v33 = v31;
    v34 = v44;
    v32(v33, v44);
    v32(v30, v34);
    v35 = sub_219BF5F04();
    v36 = v38;
    v37 = v39;
    *(v26 + 16) = v35;
    *(v26 + 24) = v37;
    *(v26 + 32) = v36;
    return (*(v18 + 32))(v26 + *(v25 + 36), v48, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2193604A4@<X0>(uint64_t a1@<X8>)
{
  v32 = sub_219BDBD34();
  v28 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = sub_219BDB184();
  MEMORY[0x28223BE20](v8 - 8);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEE754();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[1];
  v15 = v1[3];
  v16 = v1[4];
  v27 = type metadata accessor for TodayFeedServiceContext(0);
  v17 = *(v11 + 16);
  v18 = v1 + *(v27 + 36);
  v30 = v10;
  v17(v13, v18, v10);
  *a1 = 5;
  *(a1 + 8) = v14;
  v31 = v15;

  result = [v14 startDate];
  if (result)
  {
    v20 = result;
    sub_2186E2348();
    sub_219BDBCA4();

    sub_219BDBD24();
    sub_219BDB104();
    v21 = *(v28 + 8);
    v22 = v4;
    v23 = v32;
    v21(v22, v32);
    v21(v7, v23);
    v24 = sub_219BF5F04();
    v25 = v30;
    v26 = v31;
    *(a1 + 16) = v24;
    *(a1 + 24) = v26;
    *(a1 + 32) = v16;
    return (*(v11 + 32))(a1 + *(v27 + 36), v13, v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21936076C()
{
  sub_2186DDBE0(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v1);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v19[-v5];
  v20 = 0;
  v21 = 0xE000000000000000;
  v19[15] = *v0;
  sub_219BF7484();
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v7 = *(v0 + 8);
  v8 = [v7 startDate];
  if (v8)
  {
    v9 = v8;
    sub_219BDBCA4();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_219BDBD34();
  v12 = *(*(v11 - 8) + 56);
  v13 = 1;
  v12(v6, v10, 1, v11);
  v14 = sub_219BF5484();
  MEMORY[0x21CECC330](v14);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v15 = [v7 endDate];
  if (v15)
  {
    v16 = v15;
    sub_219BDBCA4();

    v13 = 0;
  }

  v12(v3, v13, 1, v11);
  v17 = sub_219BF5484();
  MEMORY[0x21CECC330](v17);

  return v20;
}

id sub_2193609A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_219BDBD34();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v35 - v6;
  v7 = sub_219BDB184();
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for TodayFeedServiceContext(0);
  MEMORY[0x28223BE20](v43);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BEE754();
  v44 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219361F88(0, &qword_280E8CDC0, MEMORY[0x277D844C8]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  v19 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_219361EE0();
  v20 = v49;
  sub_219BF7B34();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  v40 = v13;
  v21 = v16;
  v49 = v15;
  v22 = v47;
  v23 = v48;
  v39 = sub_219360F8C(v18);
  LOBYTE(v52) = 0;
  sub_219361F34();
  sub_219BF7734();
  v53 = v55;
  sub_2186E2394();
  v25 = v24;
  LOBYTE(v51) = 3;
  sub_218B9F868(&qword_280E8E9B8, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
  v38 = v25;
  sub_219BF7734();
  v37 = v52;
  v54 = 4;
  sub_219BF7734();
  v27 = v51;
  v54 = 5;
  sub_2193620D4(&qword_280E91B20, MEMORY[0x277D32158], MEMORY[0x277D32168]);
  sub_219BF7734();
  v36 = v11;
  v38 = v27;
  *v10 = v53;
  v28 = v39;
  *(v10 + 1) = v39;
  result = [v28 startDate];
  if (result)
  {
    v29 = result;
    v39 = sub_2186E2348();
    sub_219BDBCA4();

    sub_219BDBD24();
    sub_219BDB104();
    v30 = *(v41 + 8);
    v31 = v42;
    v30(v23, v42);
    v30(v22, v31);
    v32 = sub_219BF5F04();
    (*(v21 + 8))(v18, v49);
    v34 = v37;
    v33 = v38;
    *(v10 + 2) = v32;
    *(v10 + 3) = v34;
    *(v10 + 4) = v33;
    (*(v44 + 32))(&v10[*(v43 + 36)], v40, v36);
    sub_2187B9990(v10, v46);
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  __break(1u);
  return result;
}

uint64_t sub_219360F8C(uint64_t a1)
{
  sub_2186DDBE0(0, &qword_280E90978, MEMORY[0x277D33110]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_219BF10C4();
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  v18 = 2;
  sub_219361F88(0, &qword_280E8CDC0, MEMORY[0x277D844C8]);
  sub_2193620D4(&qword_280E90980, MEMORY[0x277D33110], MEMORY[0x277D33120]);
  sub_219BF76E4();
  if (!v1)
  {
    if ((*(v16 + 48))(v5, 1, v6) == 1)
    {
      sub_21936211C(v5, &qword_280E90978, MEMORY[0x277D33110]);
      v17 = 1;
      sub_219BF7734();
      sub_2186E2348();
      return sub_219BF5F44();
    }

    else
    {
      v13 = v16;
      (*(v16 + 32))(v12, v5, v6);
      sub_2186E2348();
      (*(v13 + 16))(v8, v12, v6);
      a1 = sub_219BF5F44();
      (*(v13 + 8))(v12, v6);
    }
  }

  return a1;
}

uint64_t sub_219361298(void *a1)
{
  v3 = v1;
  v5 = sub_219BF10C4();
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219361F88(0, &qword_280E8C578, MEMORY[0x277D84538]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219361EE0();
  sub_219BF7B44();
  LOBYTE(v21) = *v3;
  v22 = 0;
  sub_219361FEC();
  sub_219BF7834();
  if (v2)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v14 = v19;
  v15 = v10;
  v16 = *(v3 + 8);
  sub_219BF10B4();
  LOBYTE(v21) = 1;
  sub_2193620D4(&qword_280E90988, MEMORY[0x277D33110], MEMORY[0x277D33118]);
  v17 = v20;
  sub_219BF7834();
  (*(v14 + 8))(v7, v17);
  v21 = *(v3 + 24);
  v22 = 3;
  sub_2186E2394();
  sub_218B9F868(&unk_280E8E9D0, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
  sub_219BF7834();
  v21 = *(v3 + 32);
  v22 = 4;
  sub_219BF7834();
  type metadata accessor for TodayFeedServiceContext(0);
  LOBYTE(v21) = 5;
  sub_219BEE754();
  sub_2193620D4(&qword_280E91B28, MEMORY[0x277D32158], MEMORY[0x277D32160]);
  sub_219BF7834();
  return (*(v15 + 8))(v12, v9);
}

double sub_219361680(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

unint64_t sub_21936178C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_219362330(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2193617BC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684957547;
  v5 = 0x8000000219CD7F90;
  v6 = 0x8000000219CD7FB0;
  v7 = 0xD000000000000015;
  if (v2 != 4)
  {
    v7 = 0x4F65636976726573;
    v6 = 0xEE00736E6F697470;
  }

  if (v2 == 3)
  {
    v7 = 0xD000000000000019;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0xE900000000000065;
  v9 = 0x676E615265746164;
  if (v2 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = 0x8000000219CD7F70;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_219361890()
{
  v1 = *v0;
  v2 = 1684957547;
  v3 = 0xD000000000000015;
  if (v1 != 4)
  {
    v3 = 0x4F65636976726573;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000019;
  }

  v4 = 0x676E615265746164;
  if (v1 != 1)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v4;
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

unint64_t sub_219361960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219362330(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219361988(uint64_t a1)
{
  v2 = sub_219361EE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2193619C4(uint64_t a1)
{
  v2 = sub_219361EE0();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_219361A30()
{
  v1 = sub_219BDBD34();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD00000000000001DLL, 0x8000000219D19160);
  LOBYTE(v33) = *v0;
  sub_219BF7484();
  MEMORY[0x21CECC330](0x615265746164202CLL, 0xEC0000003D65676ELL);
  sub_219BEED34();
  v8 = sub_219BEED14();
  v32 = v0;
  v9 = *(v0 + 8);
  result = [v9 startDate];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = result;
  sub_219BDBCA4();

  v12 = sub_219BDBC04();
  v13 = *(v2 + 8);
  v13(v7, v1);
  v14 = [v8 stringFromDate_];

  v15 = sub_219BF5414();
  v17 = v16;

  MEMORY[0x21CECC330](v15, v17);

  MEMORY[0x21CECC330](544175136, 0xE400000000000000);
  v18 = sub_219BEED14();
  result = [v9 endDate];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v19 = result;
  sub_219BDBCA4();

  v20 = sub_219BDBC04();
  v13(v4, v1);
  v21 = [v18 stringFromDate_];

  v22 = sub_219BF5414();
  v24 = v23;

  MEMORY[0x21CECC330](v22, v24);

  MEMORY[0x21CECC330](0x697461727564202CLL, 0xEB000000003D6E6FLL);
  v25 = sub_219BEED24();
  [v9 absoluteTimeInterval];
  v26 = [v25 stringFromTimeInterval_];

  if (v26)
  {
    v27 = sub_219BF5414();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0xE000000000000000;
  }

  MEMORY[0x21CECC330](v27, v29);

  MEMORY[0x21CECC330](0xD000000000000016, 0x8000000219D19180);
  v33 = *(*(v32 + 24) + 16);
  v30 = sub_219BF7894();
  MEMORY[0x21CECC330](v30);

  MEMORY[0x21CECC330](0xD000000000000018, 0x8000000219D191A0);
  v31 = sub_219BF5D54();
  MEMORY[0x21CECC330](v31);

  return v34;
}

void sub_219361E60()
{
  sub_219BF09A4();
  if (v1)
  {
    v0 = *(v1 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);
  }

  else
  {
    v0 = MEMORY[0x277D84FA0];
  }

  sub_218DD88E0(v0);
}

unint64_t sub_219361EE0()
{
  result = qword_280EC2DC8[0];
  if (!qword_280EC2DC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC2DC8);
  }

  return result;
}

unint64_t sub_219361F34()
{
  result = qword_280EB6250;
  if (!qword_280EB6250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6250);
  }

  return result;
}

void sub_219361F88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219361EE0();
    v7 = a3(a1, &type metadata for TodayFeedServiceContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219361FEC()
{
  result = qword_280EB6260;
  if (!qword_280EB6260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6260);
  }

  return result;
}

void sub_219362040(uint64_t a1)
{
  if (!qword_280E91290)
  {
    type metadata accessor for TodayFeedServiceConfig(255);
    sub_2193620D4(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v1 = sub_219BEFA34();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91290);
    }
  }
}

uint64_t sub_2193620D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21936211C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186DDBE0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_219362178(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2193621C4()
{
  result = qword_280EB6258;
  if (!qword_280EB6258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6258);
  }

  return result;
}

unint64_t sub_21936222C()
{
  result = qword_27CC191A0;
  if (!qword_27CC191A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC191A0);
  }

  return result;
}

unint64_t sub_219362284()
{
  result = qword_280EC2DB8;
  if (!qword_280EC2DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC2DB8);
  }

  return result;
}

unint64_t sub_2193622DC()
{
  result = qword_280EC2DC0;
  if (!qword_280EC2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC2DC0);
  }

  return result;
}

unint64_t sub_219362330(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_219362404()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_2193624CC(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_219362580(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_219362644@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2193639B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_219362674(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x7370756F7267;
  v4 = 0x736E6F6974636573;
  if (*v1 != 2)
  {
    v4 = 0x617461646174656DLL;
  }

  if (*v1)
  {
    v3 = 0x446873696C627570;
    v2 = 0xEB00000000657461;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_2193626F8()
{
  v1 = 0x7370756F7267;
  v2 = 0x736E6F6974636573;
  if (*v0 != 2)
  {
    v2 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    v1 = 0x446873696C627570;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_219362778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2193639B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2193627A0(uint64_t a1)
{
  v2 = sub_219363464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2193627DC(uint64_t a1)
{
  v2 = sub_219363464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219362818@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v27 = type metadata accessor for MagazineFeedConfig(0);
  MEMORY[0x28223BE20](v27);
  v26 = (v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186DDC34(0, &qword_280E91B80, MEMORY[0x277D32028]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - v6;
  sub_2186DDC34(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v24 - v9;
  sub_219363570(0, &qword_280E8CF50, MEMORY[0x277D844C8]);
  v12 = v11;
  v25 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219363464();
  sub_219BF7B34();
  if (!v2)
  {
    LOBYTE(v29) = 0;
    sub_21915A2B0();
    v24[1] = 0;
    v15 = sub_219BF7684();
    sub_219BDBD34();
    LOBYTE(v29) = 1;
    sub_219363764(&unk_280EE9C70, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v16 = v10;
    sub_219BF7674();
    v31 = 2;
    sub_2193634B8();
    sub_219BF7674();
    v17 = v29;
    v24[0] = v30;
    sub_219BEE5B4();
    v31 = 3;
    sub_219363764(&qword_280E91B88, MEMORY[0x277D32028], MEMORY[0x277D32038]);
    sub_219BF7674();
    v18 = MEMORY[0x277D84F90];
    if (v15)
    {
      v19 = v15;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v21 = v26;
    v20 = v27;
    *v26 = v19;
    sub_21872AD5C(v16, v21 + v20[5], &qword_280EE9C40, MEMORY[0x277CC9578]);
    if (v17)
    {
      v18 = v24[0];
    }

    else
    {
      v17 = v18;
    }

    sub_2189DD39C(v16);
    (*(v25 + 8))(v14, v12);
    v22 = (v21 + v20[6]);
    *v22 = v17;
    v22[1] = v18;
    sub_2189A1E30(v7, v21 + v20[7]);
    sub_21936350C(v21, v28);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219362C34(void *a1)
{
  v3 = v1;
  sub_219363570(0, &qword_27CC191A8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219363464();
  sub_219BF7B44();
  *&v12 = *v3;
  v13 = 0;
  sub_2186E401C();
  sub_2193635D4();
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for MagazineFeedConfig(0);
    LOBYTE(v12) = 1;
    sub_2186DDC34(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
    sub_21897A904();
    sub_219BF7834();
    v12 = *(v3 + *(v10 + 24));
    v13 = 2;
    sub_21936364C();
    sub_219BF7834();
    LOBYTE(v12) = 3;
    sub_2186DDC34(0, &qword_280E91B80, MEMORY[0x277D32028]);
    sub_2193636A0();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

BOOL sub_219362EB0(uint64_t *a1, uint64_t a2, int a3)
{
  v32 = a3;
  sub_2193637D0(0);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEF554();
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MagazineFeedServiceContext(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - v17;
  v19 = *a1;
  sub_218AC566C(a2, &v29 - v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_219363838(v18, type metadata accessor for MagazineFeedServiceContext);
  if (EnumCaseMultiPayload == 1 && (sub_219150544(v19) & 1) == 0)
  {
    return 0;
  }

  sub_218AC566C(a2, v15);
  v21 = swift_getEnumCaseMultiPayload();
  sub_219363838(v15, type metadata accessor for MagazineFeedServiceContext);
  if (v21 != 1 && (sub_2191564A4(v19) & 1) == 0)
  {
    return 0;
  }

  sub_218AC566C(a2, v12);
  v22 = swift_getEnumCaseMultiPayload();
  sub_219363838(v12, type metadata accessor for MagazineFeedServiceContext);
  if (v22 != 1)
  {
    return 1;
  }

  sub_2191577D4(v9);
  v23 = v29;
  v24 = *(v30 + 48);
  v25 = v31;
  (*(v29 + 32))(v31, v9, v7);
  v26 = v32;
  *(v25 + v24) = v32 & 1;
  v27 = (*(v23 + 88))(v25, v7);
  if (v27 != *MEMORY[0x277D32630])
  {
    if (v27 == *MEMORY[0x277D32638])
    {
      if (v26)
      {
        return 0;
      }
    }

    else if (v27 != *MEMORY[0x277D32628])
    {
      if (v27 != *MEMORY[0x277D32640])
      {
        sub_219363838(v25, sub_2193637D0);
      }

      return 0;
    }

    return 1;
  }

  return (v26 & 1) != 0;
}

void sub_2193632D4(uint64_t a1, char a2)
{
  v3 = *v2;
  v4[2] = a1;
  v5 = a2;

  sub_2195E6DBC(sub_2193637AC, v4, v3);
}

uint64_t sub_219363338@<X0>(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v7 = MEMORY[0x277CC9578];
  sub_2186DDC34(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_21872AD5C(v3 + a2[5], &v14 - v9, &qword_280EE9C40, v7);
  sub_21872AD5C(v3 + a2[7], a3 + a2[7], &qword_280E91B80, MEMORY[0x277D32028]);
  *a3 = a1;
  sub_21872AD5C(v10, a3 + a2[5], &qword_280EE9C40, v7);

  result = sub_2189DD39C(v10);
  v12 = (a3 + a2[6]);
  v13 = MEMORY[0x277D84F90];
  *v12 = MEMORY[0x277D84F90];
  v12[1] = v13;
  return result;
}

unint64_t sub_219363464()
{
  result = qword_280ED3808;
  if (!qword_280ED3808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED3808);
  }

  return result;
}

unint64_t sub_2193634B8()
{
  result = qword_280EC79E8;
  if (!qword_280EC79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC79E8);
  }

  return result;
}

uint64_t sub_21936350C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219363570(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219363464();
    v7 = a3(a1, &type metadata for MagazineFeedConfig.Keys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2193635D4()
{
  result = qword_27CC191B0;
  if (!qword_27CC191B0)
  {
    sub_2186E401C();
    sub_21915A308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC191B0);
  }

  return result;
}

unint64_t sub_21936364C()
{
  result = qword_27CC191B8;
  if (!qword_27CC191B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC191B8);
  }

  return result;
}

unint64_t sub_2193636A0()
{
  result = qword_27CC14170;
  if (!qword_27CC14170)
  {
    sub_2186DDC34(255, &qword_280E91B80, MEMORY[0x277D32028]);
    sub_219363764(&unk_280E91B90, MEMORY[0x277D32028], MEMORY[0x277D32030]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14170);
  }

  return result;
}

uint64_t sub_219363764(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2193637D0(uint64_t a1)
{
  if (!qword_280E91378)
  {
    sub_219BEF554();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E91378);
    }
  }
}

uint64_t sub_219363838(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2193638AC()
{
  result = qword_27CC191C0;
  if (!qword_27CC191C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC191C0);
  }

  return result;
}

unint64_t sub_219363904()
{
  result = qword_280ED3810;
  if (!qword_280ED3810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED3810);
  }

  return result;
}

unint64_t sub_21936395C()
{
  result = qword_280ED3818[0];
  if (!qword_280ED3818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ED3818);
  }

  return result;
}

unint64_t sub_2193639B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

double sub_219363A20(char a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(swift_allocObject() + 16) = Strong;
    swift_unknownObjectRetain();
    sub_219BE3494();
    swift_unknownObjectRelease();
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_219363B20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_219363B68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_219363BE0(uint64_t a1, uint64_t a2)
{
  v3[437] = v2;
  v3[431] = a2;
  v3[425] = a1;
  v4 = type metadata accessor for ChannelSectionsGroupModel(0);
  v3[443] = v4;
  v5 = *(v4 - 8);
  v3[449] = v5;
  v3[455] = *(v5 + 64);
  v3[461] = swift_task_alloc();
  v3[467] = swift_task_alloc();
  v3[473] = swift_task_alloc();
  v6 = *(type metadata accessor for ChannelHeadlineServiceRequest(0) - 8);
  v3[479] = v6;
  v3[485] = *(v6 + 64);
  v3[491] = swift_task_alloc();
  v3[497] = swift_task_alloc();
  v3[503] = swift_task_alloc();
  v3[509] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219363D4C, 0, 0);
}

uint64_t sub_219363D4C()
{
  v1 = *(v0 + 4072);
  v2 = *(v0 + 3832);
  v28 = *(v0 + 3976);
  v26 = *(v0 + 3496);
  v27 = *(v0 + 4024);
  v3 = *(v0 + 3448);
  sub_219365028(v26, v0 + 2776);
  sub_21936596C(v3, v1, type metadata accessor for ChannelHeadlineServiceRequest);
  v4 = *(v2 + 80);
  *(v0 + 4320) = v4;
  v5 = (v4 + 176) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 4120) = v6;
  v7 = *(v0 + 2888);
  v6[7] = *(v0 + 2872);
  v6[8] = v7;
  v8 = *(v0 + 2920);
  v6[9] = *(v0 + 2904);
  v6[10] = v8;
  v9 = *(v0 + 2824);
  v6[3] = *(v0 + 2808);
  v6[4] = v9;
  v10 = *(v0 + 2856);
  v6[5] = *(v0 + 2840);
  v6[6] = v10;
  v11 = *(v0 + 2792);
  v6[1] = *(v0 + 2776);
  v6[2] = v11;
  sub_219365E24(v1, v6 + v5, type metadata accessor for ChannelHeadlineServiceRequest);
  sub_2187E7248(0);
  swift_asyncLet_begin();
  sub_219365028(v26, v0 + 2936);
  sub_21936596C(v3, v27, type metadata accessor for ChannelHeadlineServiceRequest);
  v12 = swift_allocObject();
  *(v0 + 4168) = v12;
  v13 = *(v0 + 3048);
  v12[7] = *(v0 + 3032);
  v12[8] = v13;
  v14 = *(v0 + 3080);
  v12[9] = *(v0 + 3064);
  v12[10] = v14;
  v15 = *(v0 + 2984);
  v12[3] = *(v0 + 2968);
  v12[4] = v15;
  v16 = *(v0 + 3016);
  v12[5] = *(v0 + 3000);
  v12[6] = v16;
  v17 = *(v0 + 2952);
  v12[1] = *(v0 + 2936);
  v12[2] = v17;
  sub_219365E24(v27, v12 + v5, type metadata accessor for ChannelHeadlineServiceRequest);
  swift_asyncLet_begin();
  sub_219365028(v26, v0 + 3096);
  sub_21936596C(v3, v28, type metadata accessor for ChannelHeadlineServiceRequest);
  v18 = swift_allocObject();
  *(v0 + 4216) = v18;
  v19 = *(v0 + 3208);
  v18[7] = *(v0 + 3192);
  v18[8] = v19;
  v20 = *(v0 + 3240);
  v18[9] = *(v0 + 3224);
  v18[10] = v20;
  v21 = *(v0 + 3144);
  v18[3] = *(v0 + 3128);
  v18[4] = v21;
  v22 = *(v0 + 3176);
  v18[5] = *(v0 + 3160);
  v18[6] = v22;
  v23 = *(v0 + 3112);
  v18[1] = *(v0 + 3096);
  v18[2] = v23;
  sub_219365E24(v28, v18 + v5, type metadata accessor for ChannelHeadlineServiceRequest);
  swift_asyncLet_begin();
  v24 = *(v0 + 3784);

  return MEMORY[0x282200930](v0 + 656, v24, sub_219364020, v0 + 3648);
}

uint64_t sub_219364020()
{
  v1[533] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_219364778, 0, 0);
  }

  else
  {
    sub_21936596C(v1[473], v1[467], type metadata accessor for ChannelSectionsGroupModel);

    return MEMORY[0x282200930](v1 + 242, v1 + 413, sub_2193640E4, v1 + 426);
  }
}

uint64_t sub_2193640E4()
{
  *(v1 + 4272) = v0;
  if (v0)
  {
    v2 = sub_219364930;
  }

  else
  {
    v2 = sub_219364118;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219364118()
{
  v1 = *(v0 + 3928);
  v2 = *(v0 + 3736);
  v3 = *(v0 + 3688);
  v17 = *(v0 + 3640);
  v4 = *(v0 + 3592);
  v5 = *(v0 + 3496);
  v6 = *(v0 + 3448);
  v18 = (*(v0 + 4320) + 176) & ~*(v0 + 4320);
  v7 = v18 + *(v0 + 3880);
  v8 = *(v0 + 3304);
  *(v0 + 4280) = v8;
  sub_219365028(v5, v0 + 2616);
  sub_21936596C(v6, v1, type metadata accessor for ChannelHeadlineServiceRequest);
  sub_21936596C(v2, v3, type metadata accessor for ChannelSectionsGroupModel);
  v9 = (v7 + *(v4 + 80)) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v0 + 4288) = v10;
  v11 = *(v0 + 2728);
  v10[7] = *(v0 + 2712);
  v10[8] = v11;
  v12 = *(v0 + 2760);
  v10[9] = *(v0 + 2744);
  v10[10] = v12;
  v13 = *(v0 + 2664);
  v10[3] = *(v0 + 2648);
  v10[4] = v13;
  v14 = *(v0 + 2696);
  v10[5] = *(v0 + 2680);
  v10[6] = v14;
  v15 = *(v0 + 2632);
  v10[1] = *(v0 + 2616);
  v10[2] = v15;
  sub_219365E24(v1, v10 + v18, type metadata accessor for ChannelHeadlineServiceRequest);
  sub_219365E24(v3, v10 + v9, type metadata accessor for ChannelSectionsGroupModel);
  *(v10 + ((v17 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
  swift_bridgeObjectRetain_n();
  type metadata accessor for ChannelHeroResult();
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16, v0 + 3352, sub_2193642FC, v0 + 3744);
}

uint64_t sub_2193642FC()
{
  v1[537] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 162, v1 + 407, sub_219364B48, v1 + 474, v2);
  }

  else
  {
    v1[538] = v1[419];

    return MEMORY[0x282200930](v1 + 162, v1 + 407, sub_2193643B8, v1 + 498);
  }
}

uint64_t sub_2193643B8()
{
  *(v1 + 4312) = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 1296, v1 + 3256, sub_219364D90, v1 + 4032, v2);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_219364470, 0, 0);
  }
}

uint64_t sub_219364470()
{
  v1 = v0[538];
  v2 = v0[535];
  v3 = v0[467];
  v4 = v0[425];
  v5 = v0[407];
  v6 = type metadata accessor for ChannelHeadlineServiceResult(0);
  sub_21936596C(v3, v4 + *(v6 + 24), type metadata accessor for ChannelSectionsGroupModel);
  *v4 = v1;
  v4[1] = v2;
  *(v4 + *(v6 + 28)) = v5;

  return MEMORY[0x282200920](v0 + 162, v0 + 407, sub_219364548, v0 + 528, v7);
}

uint64_t sub_219364564()
{
  sub_219366400(*(v0 + 3736), type metadata accessor for ChannelSectionsGroupModel);

  return MEMORY[0x282200920](v0 + 1936, v0 + 3304, sub_2193645E4, v0 + 2576, v1);
}

uint64_t sub_219364678()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21936482C()
{

  sub_2187FABEC(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219364930()
{
  sub_219366400(*(v0 + 3736), type metadata accessor for ChannelSectionsGroupModel);

  return MEMORY[0x282200920](v0 + 1936, v0 + 3304, sub_2193649B0, v0 + 3456, v1);
}

uint64_t sub_219364A44()
{

  sub_2187FABEC(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219364B64()
{
  sub_219366400(*(v0 + 3736), type metadata accessor for ChannelSectionsGroupModel);

  return MEMORY[0x282200920](v0 + 1936, v0 + 3304, sub_219364BE4, v0 + 3840, v1);
}

uint64_t sub_219364C78()
{
  v1 = *(v0 + 4288);

  sub_2187FABEC(&unk_219C72440, v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_219364DAC()
{
  sub_219366400(*(v0 + 3736), type metadata accessor for ChannelSectionsGroupModel);

  return MEMORY[0x282200920](v0 + 1936, v0 + 3304, sub_219364E2C, v0 + 4080, v1);
}

uint64_t sub_219364EC8()
{
  v1 = *(v0 + 4288);

  sub_2187FABEC(&unk_219C72440, v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_219365060(uint64_t a1)
{
  type metadata accessor for ChannelHeadlineServiceRequest(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_219364FE0(a1);
}

uint64_t sub_219365140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2187608D4;

  return sub_2193652D0(a1, a3);
}

uint64_t sub_2193651F0(uint64_t a1)
{
  v4 = *(type metadata accessor for ChannelHeadlineServiceRequest(0) - 8);
  v5 = (*(v4 + 80) + 176) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187608D4;

  return sub_219365140(a1, v1 + 16, v1 + v5);
}

uint64_t sub_2193652D0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = type metadata accessor for ChannelSectionsGroupPersonalizerRequest(0);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219365368, 0, 0);
}

uint64_t sub_219365368()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[5] + 40), *(v0[5] + 64));
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  LOBYTE(v1) = *(v1 + 32);
  v6 = off_282A34C30[0];
  type metadata accessor for ChannelSectionHeadlinesService();
  v0[8] = v6(v2, v3, v4, v5, v1, 0);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_21936548C;

  return MEMORY[0x2821D23D8](v0 + 2);
}

uint64_t sub_21936548C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_219365780;
  }

  else
  {

    v2 = sub_2193655A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2193655A8()
{
  v1 = *(v0 + 32);
  v17 = *(v0 + 16);
  if (*(v1 + 96) == 1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v2 = sub_218CFEE6C(*(v1 + 80));
    v1 = *(v0 + 32);
  }

  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v16 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 80), *(*(v0 + 40) + 104));
  v5 = type metadata accessor for ChannelHeadlineServiceRequest(0);
  v6 = *(v5 + 68);
  v7 = v4[9];
  v8 = sub_219BEFBD4();
  v14 = *(v1 + 56);
  v15 = *(v1 + 40);
  (*(*(v8 - 8) + 16))(v3 + v7, v1 + v6, v8);
  v9 = *(v1 + *(v5 + 76));
  sub_219BE5444();
  *v3 = v2;
  *(v3 + 24) = v14;
  *(v3 + 8) = v15;
  v10 = MEMORY[0x277D84FA0];
  *(v3 + v4[10]) = MEMORY[0x277D84FA0];
  *(v3 + v4[11]) = v10;
  v11 = v2;
  sub_219BA640C(v3, v16);
  sub_219366400(*(v0 + 56), type metadata accessor for ChannelSectionsGroupPersonalizerRequest);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_219365780()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2193657EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_218E5F004;

  return sub_2193659D4(a3);
}

uint64_t sub_21936588C(uint64_t a1)
{
  v4 = *(type metadata accessor for ChannelHeadlineServiceRequest(0) - 8);
  v5 = (*(v4 + 80) + 176) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187609C8;

  return sub_2193657EC(a1, v1 + 16, v1 + v5);
}

uint64_t sub_21936596C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2193659D4(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_2193659F4, 0, 0);
}

uint64_t sub_2193659F4()
{
  v1 = *(v0 + 152);
  v2 = v1[9];
  v3 = (v2 + 40);
  v4 = *(v2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 16;
    v6 = *v3;
    v3 += 16;
    if (v6 < 0)
    {
      v7 = *(v5 - 3);
      __swift_project_boxed_opaque_existential_1(*(v0 + 160), *(*(v0 + 160) + 24));
      v9 = *v1;
      v8 = v1[1];
      v10 = type metadata accessor for ChannelHeadlineServiceRequest(0);
      v11 = *(v1 + v10[19]);
      v12 = *(v1 + v10[20]);
      v13 = *(v1 + v10[18]);
      v14 = v1[10];
      v15 = v1[11];
      *(v0 + 80) = v9;
      *(v0 + 88) = v8;
      *(v0 + 96) = v11;
      *(v0 + 104) = v12;
      *(v0 + 112) = v7;
      *(v0 + 120) = v13;
      *(v0 + 128) = v14;
      *(v0 + 136) = v15;
      v16 = *(v0 + 96);
      v17 = *(v0 + 112);
      *(v0 + 16) = *(v0 + 80);
      *(v0 + 32) = v16;
      v18 = *(v0 + 128);
      *(v0 + 48) = v17;
      *(v0 + 64) = v18;

      v19 = v11;
      v20 = v12;
      swift_unknownObjectRetain();

      *(v0 + 168) = sub_218C61998((v0 + 16));
      sub_218D06F24(v0 + 80);
      v21 = swift_task_alloc();
      *(v0 + 176) = v21;
      *v21 = v0;
      v21[1] = sub_219365BD0;

      return MEMORY[0x2821D23D8](v0 + 144);
    }
  }

  v22 = *(v0 + 8);
  v23 = MEMORY[0x277D84F90];

  return v22(v23);
}

uint64_t sub_219365BD0()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_219365D08;
  }

  else
  {

    v2 = sub_219365CEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219365D08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219365D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_218D42644;

  return sub_219366004(a3, a4, a5);
}

uint64_t sub_219365E24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219365E8C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ChannelHeadlineServiceRequest(0) - 8);
  v6 = (*(v5 + 80) + 176) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ChannelSectionsGroupModel(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2187609C8;

  return sub_219365D6C(a1, v1 + 16, v1 + v6, v1 + v9, v10);
}

uint64_t sub_219366004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_219BEFBD4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for ChannelSectionsGroupModel(0);
  v4[9] = swift_task_alloc();
  v4[10] = type metadata accessor for ChannelHeroServiceRequest(0);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219366124, 0, 0);
}

uint64_t sub_219366124()
{
  v1 = v0[2];
  if (*(*(v1 + 72) + 16))
  {
    v26 = *(v1 + 72);
    v2 = v0[8];
    v3 = v0[6];
    v4 = v0[7];
    sub_21936596C(v0[3], v0[9], type metadata accessor for ChannelSectionsGroupModel);
    v5 = type metadata accessor for ChannelHeadlineServiceRequest(0);
    v24 = *(v1 + v5[19]);
    v25 = *(v1 + v5[20]);
    (*(v4 + 16))(v2, v1 + v5[17], v3);
    v23 = *(v1 + v5[18]);
    v6 = *(v1 + 112);
    v7 = v0[2];
    if (v6)
    {
      v22 = MEMORY[0x277D84FA0];
    }

    else
    {
      v22 = *(v7 + 104);
    }

    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[4];
    v15 = v0[5];
    v16 = *(v7 + 88);
    sub_219365E24(v0[9], v9, type metadata accessor for ChannelSectionsGroupModel);
    *(v9 + v10[5]) = v14;
    *(v9 + v10[6]) = v24;
    *(v9 + v10[7]) = v25;
    (*(v12 + 32))(v9 + v10[8], v11, v13);
    *(v9 + v10[9]) = v23;
    *(v9 + v10[10]) = v22;
    *(v9 + v10[11]) = v16;
    __swift_project_boxed_opaque_existential_1((v15 + 120), *(v15 + 144));
    v17 = v24;
    v18 = v25;
    swift_unknownObjectRetain();

    sub_21959BEBC(v9, v26);
    v8 = v19;
    sub_219366400(v9, type metadata accessor for ChannelHeroServiceRequest);
  }

  else
  {
    if (qword_27CC086A0 != -1)
    {
      swift_once();
    }

    v8 = qword_27CCD8D20;
  }

  v20 = v0[1];

  return v20(v8);
}

uint64_t sub_219366400(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219366480(uint64_t a1)
{
  sub_218EA89D8(319);
  if (v1 <= 0x3F)
  {
    sub_218EA8964(319);
    if (v2 <= 0x3F)
    {
      sub_218985EAC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_219366528(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219366598(uint64_t a1)
{
  sub_218EA8ABC(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_2193665F4()
{
  v1 = v0;
  sub_218985EAC(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF1584();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219369D1C(v1, v13, type metadata accessor for SharedWithYouFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218EA8964(0);
      (*(v8 + 32))(v10, v13 + *(v15 + 48), v7);
      v16 = sub_219BF1524();
      (*(v8 + 8))(v10, v7);
      sub_2193693A8(v13, type metadata accessor for SharedWithYouFeedGapLocation);
    }

    else
    {
      (*(v4 + 32))(v6, v13, v3);
      v16 = sub_219BF07B4();
      (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    v16 = *v13;
    sub_218EA89D8(0);
    sub_2193693A8(v13 + *(v17 + 48), type metadata accessor for SharedWithYouFeedGapLocation);
  }

  return v16;
}

uint64_t sub_2193668A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219366528(&qword_27CC19208, type metadata accessor for SharedWithYouFeedModel, &unk_219C72558);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_219366A44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_21936946C(0, &unk_280E92500, MEMORY[0x277D31DC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = v45 - v5;
  sub_21936946C(0, &qword_280E91C10, MEMORY[0x277D32010], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = v45 - v7;
  v8 = sub_219BF0EE4();
  MEMORY[0x28223BE20](v8 - 8);
  v50 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21936946C(0, &unk_280EE34A0, MEMORY[0x277D2D148], v3);
  MEMORY[0x28223BE20](v10 - 8);
  v49 = v45 - v11;
  v12 = sub_219BF0BD4();
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF0574();
  MEMORY[0x28223BE20](v15 - 8);
  v48 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC(0);
  v18 = v17;
  v53 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BF1584();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v25);
  v27 = v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219369D1C(v2, v27, type metadata accessor for SharedWithYouFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218EA8964(0);
      (*(v22 + 32))(v24, &v27[*(v29 + 48)], v21);
      sub_219BF1524();
      sub_219BF1554();
      sub_219BF1534();
      v30 = v54;
      sub_219BEDB14();
      (*(v22 + 8))(v24, v21);
      v31 = *MEMORY[0x277D32D10];
      v32 = sub_219BF0614();
      (*(*(v32 - 8) + 104))(v30, v31, v32);
      return sub_2193693A8(v27, type metadata accessor for SharedWithYouFeedGapLocation);
    }

    else
    {
      (*(v53 + 32))(v20, v27, v18);
      sub_2193665F4();
      v45[2] = v39;
      sub_219BF07D4();
      swift_unknownObjectRetain();

      sub_219BF07D4();
      v45[1] = v56;
      sub_219BF07E4();
      sub_219BF07D4();
      swift_unknownObjectRetain();

      sub_219BF07D4();

      sub_219BF0B94();
      swift_unknownObjectRelease();
      (*(v46 + 8))(v14, v47);
      v40 = sub_219BEBD44();
      (*(*(v40 - 8) + 56))(v49, 1, 1, v40);
      sub_219BF07D4();
      sub_21912D31C(v50);

      sub_219BF07D4();
      sub_218ED9B0C(v55 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_audioTrack, v51);

      v41 = sub_219BEDB44();
      (*(*(v41 - 8) + 56))(v52, 1, 1, v41);
      v42 = v54;
      sub_219BF0E34();
      (*(v53 + 8))(v20, v18);
      v43 = *MEMORY[0x277D32E10];
      v44 = sub_219BF0614();
      return (*(*(v44 - 8) + 104))(v42, v43, v44);
    }
  }

  else
  {
    sub_218EA89D8(0);
    v35 = *(v34 + 48);
    v36 = v54;
    sub_219BF03C4();
    v37 = *MEMORY[0x277D32DB8];
    v38 = sub_219BF0614();
    (*(*(v38 - 8) + 104))(v36, v37, v38);
    return sub_2193693A8(&v27[v35], type metadata accessor for SharedWithYouFeedGapLocation);
  }
}

uint64_t sub_219367248@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_218985EAC(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219369D1C(v2, v11, type metadata accessor for SharedWithYouFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_218EA89D8(0);
    v11 += *(v16 + 48);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218EA8964(0);
    v14 = *(v13 + 48);
    v15 = sub_219BF1584();
    (*(*(v15 - 8) + 8))(&v11[v14], v15);
LABEL_5:
    sub_2193693A8(v11, type metadata accessor for SharedWithYouFeedGapLocation);
    v17 = sub_219BEAF84();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

  (*(v6 + 32))(v8, v11, v5);
  sub_219BF07D4();
  sub_21912D94C(a1);

  return (*(v6 + 8))(v8, v5);
}