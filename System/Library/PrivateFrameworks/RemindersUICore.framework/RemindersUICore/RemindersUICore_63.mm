uint64_t sub_21D6CAB08()
{
  v1 = [v0 accessibilityContainer];
  v2 = MEMORY[0x277D84FA0];
  if (!v1)
  {
    return v2;
  }

  ObjectType = swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (!v4)
  {
    swift_unknownObjectRelease();
    return v2;
  }

  (*(v4 + 32))(&v26, ObjectType, v4);
  if (!v27)
  {
    swift_unknownObjectRelease();
    sub_21D0CF7E0(&v26, &unk_27CE5FAE0, &unk_21DC18590);
    return v2;
  }

  sub_21D0D0FD0(&v26, v28);
  *&v26 = v2;
  v5 = v29;
  v6 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  if ((*(v6 + 40))(v5, v6))
  {
    sub_21D29D4CC(&v25, 0);
  }

  v7 = v29;
  v8 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  if ((*(v8 + 184))(v7, v8))
  {
    v9 = v29;
    v10 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    (*(v10 + 176))(&v25, v9, v10);
    if (v25 != 2 && (v25 & 1) != 0)
    {
      sub_21D29D4CC(&v24, 2);
    }
  }

  v11 = v29;
  v12 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v13 = (*(v12 + 192))(v11, v12);
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = 4;
      goto LABEL_25;
    }

    if (v13 == 3)
    {
      v14 = 5;
      goto LABEL_25;
    }

LABEL_19:
    if (qword_280D1B930 != -1)
    {
      swift_once();
    }

    v15 = sub_21DBF84BC();
    __swift_project_value_buffer(v15, qword_280D21CC8);
    v16 = sub_21DBF84AC();
    v17 = sub_21DBFAEBC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21D0C9000, v16, v17, "unknown priority level", v18, 2u);
      MEMORY[0x223D46520](v18, -1, -1);
    }

    goto LABEL_26;
  }

  if (!v13)
  {
    goto LABEL_26;
  }

  if (v13 != 1)
  {
    goto LABEL_19;
  }

  v14 = 3;
LABEL_25:
  sub_21D29D4CC(&v25, v14);
LABEL_26:
  v19 = v29;
  v20 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v20 + 136))(&v25, v19, v20);
  if (v25 != 2 && (v25 & 1) != 0)
  {
    sub_21D29D4CC(&v25, 6);
  }

  v21 = v29;
  v22 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  if ((*(v22 + 72))(v21, v22))
  {
    sub_21D29D4CC(&v25, 7);
  }

  swift_unknownObjectRelease();
  v2 = v26;
  __swift_destroy_boxed_opaque_existential_0(v28);
  return v2;
}

id sub_21D6CAEA4(char a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v5 = sub_21DBFA12C();
  v6 = [v4 initWithString_];

  sub_21D6CAB08();
  if (sub_21D22D5B8())
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF516C();
    sub_21D6CB938(v7, v8, 0, v6, v2);
  }

  v9 = sub_21D6CBB8C();
  sub_21D6CB938(v9, v10, 0, v6, v2);

  if (a1)
  {
    if (sub_21D22D5B8())
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_10;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
LABEL_10:
      v11 = sub_21DBF516C();
      sub_21D6CB938(v11, v12, 1, v6, v2);

      goto LABEL_11;
    }

    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  v13 = sub_21D6CBD1C();
  sub_21D6CB938(v13, v14, 0, v6, v2);

  v15 = &selRef_setDisplayText_;
  if ([v2 accessibilityContainer])
  {
    ObjectType = swift_getObjectType();
    v17 = swift_conformsToProtocol2();
    if (v17)
    {
      (*(v17 + 32))(v68, ObjectType, v17);
      swift_unknownObjectRelease();
      v18 = v69;
      if (v69)
      {
        v19 = v70;
        __swift_project_boxed_opaque_existential_1(v68, v69);
        v20 = *(v19 + 232);
        v21 = v19;
        v15 = &selRef_setDisplayText_;
        v20(v66, v18, v21);
        v23 = v66[0];
        v22 = v66[1];
        v24 = v67;
        __swift_destroy_boxed_opaque_existential_0(v68);
        if (v22)
        {
          if (v24)
          {
            if (qword_280D1BAA8 != -1)
            {
              swift_once();
            }

            sub_21DBF516C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
            v25 = swift_allocObject();
            *(v25 + 16) = xmmword_21DC08D00;
            *(v25 + 56) = MEMORY[0x277D837D0];
            *(v25 + 64) = sub_21D17A884();
            *(v25 + 32) = v23;
            *(v25 + 40) = v22;
            v26 = sub_21DBFA17C();
            v28 = v27;

            sub_21D6CB938(v26, v28, 0, v6, v2);

            v15 = &selRef_setDisplayText_;
          }

          else
          {
          }
        }
      }

      else
      {
        sub_21D0CF7E0(v68, &unk_27CE5FAE0, &unk_21DC18590);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v29 = sub_21D6CC27C();
  sub_21D6CB938(v29, v30, 0, v6, v2);

  v31 = sub_21D6CC574();
  sub_21D6CB938(v31, v32, 0, v6, v2);

  if (sub_21D22D5B8())
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v33 = sub_21DBF516C();
    sub_21D6CB938(v33, v34, 1, v6, v2);
  }

  v35 = sub_21D6CC68C();
  sub_21D6CB938(v35, v36, 0, v6, v2);

  v37 = sub_21D6CC7E0();
  sub_21D6CB938(v37, v38, 0, v6, v2);

  v39 = sub_21D6CC92C();
  sub_21D6CB938(v39, v40, 1, v6, v2);

  v41 = sub_21D6CCD74();
  sub_21D6CB938(v41, v42, 1, v6, v2);

  v43 = sub_21D6CCF50();
  sub_21D6CB938(v43, v44, 0, v6, v2);

  if (sub_21D22D5B8())
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v45 = sub_21DBF516C();
    sub_21D6CB938(v45, v46, 0, v6, v2);
  }

  if (sub_21D22D5B8())
  {

    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  if (sub_21D22D5B8())
  {

    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  v47 = sub_21D22D5B8();

  if ((v47 & 1) == 0)
  {
    goto LABEL_39;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_50:
    swift_once();
  }

LABEL_38:
  v48 = sub_21DBF516C();
  sub_21D6CB938(v48, v49, 0, v6, v2);

LABEL_39:
  v50 = sub_21D6CD25C();
  sub_21D6CB938(v50, v51, 1, v6, v2);

  v52 = sub_21D6CD5A8();
  sub_21D6CB938(v52, v53, 0, v6, v2);

  v54 = sub_21D6CD74C();
  sub_21D6CB938(v54, v55, 0, v6, v2);

  if ([v2 v15[89]])
  {
    v56 = swift_getObjectType();
    v57 = swift_conformsToProtocol2();
    if (v57)
    {
      (*(v57 + 32))(v68, v56, v57);
      swift_unknownObjectRelease();
      v58 = v69;
      if (v69)
      {
        v59 = v70;
        __swift_project_boxed_opaque_existential_1(v68, v69);
        v60 = (*(v59 + 56))(v58, v59);
        v62 = v61;
        __swift_destroy_boxed_opaque_existential_0(v68);
        if (v62)
        {
          sub_21D6CB938(v60, v62, 0, v6, v2);
        }
      }

      else
      {
        sub_21D0CF7E0(v68, &unk_27CE5FAE0, &unk_21DC18590);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v63 = sub_21D6CD988();
  sub_21D6CB938(v63, v64, 0, v6, v2);

  return v6;
}

void sub_21D6CB938(uint64_t a1, unint64_t a2, char a3, id a4, uint64_t a5)
{
  if (a2)
  {
    v5 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v9 = [a4 string];
      v10 = sub_21DBFA16C();
      v12 = v11;

      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        [a4 appendAttributedString_];
      }

      if (a3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21DC08D00;
        if (qword_280D177A8 != -1)
        {
          swift_once();
        }

        v15 = qword_280D177B0;
        *(inited + 32) = qword_280D177B0;
        *(inited + 64) = MEMORY[0x277D839B0];
        *(inited + 40) = 1;
        v16 = v15;
        sub_21D11274C(inited);
        swift_setDeallocating();
        sub_21D0CF7E0(inited + 32, &unk_27CE5F2C0, &qword_21DC09050);
      }

      else
      {
        sub_21D11274C(MEMORY[0x277D84F90]);
      }

      v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v18 = sub_21DBFA12C();
      type metadata accessor for Key(0);
      sub_21D0F1D88(&qword_280D17790, type metadata accessor for Key, byte_21DC082E8);
      v19 = sub_21DBF9E5C();

      v20 = [v17 initWithString:v18 attributes:v19];

      [a4 appendAttributedString_];
    }
  }
}

uint64_t sub_21D6CBB8C()
{
  if ([v0 accessibilityContainer])
  {
    ObjectType = swift_getObjectType();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      (*(v2 + 32))(v10, ObjectType, v2);
      swift_unknownObjectRelease();
      v3 = v11;
      if (v11)
      {
        v4 = v12;
        __swift_project_boxed_opaque_existential_1(v10, v11);
        v5 = (*(v4 + 32))(v3, v4);
        if (v5)
        {
          v6 = v5;
          v7 = [v5 string];

          v8 = sub_21DBFA16C();
          __swift_destroy_boxed_opaque_existential_0(v10);
          return v8;
        }

        __swift_destroy_boxed_opaque_existential_0(v10);
      }

      else
      {
        sub_21D0CF7E0(v10, &unk_27CE5FAE0, &unk_21DC18590);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if (qword_280D1AA28 != -1)
  {
    swift_once();
  }

  v8 = qword_280D1AA30;
  sub_21DBF8E0C();
  return v8;
}

uint64_t sub_21D6CBD1C()
{
  if (![v0 accessibilityContainer])
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  (*(v2 + 32))(v112, ObjectType, v2);
  swift_unknownObjectRelease();
  v3 = v113;
  if (!v113)
  {
    v14 = &unk_27CE5FAE0;
    v15 = &unk_21DC18590;
    v16 = v112;
LABEL_12:
    sub_21D0CF7E0(v16, v14, v15);
    return 0;
  }

  v4 = v114;
  __swift_project_boxed_opaque_existential_1(v112, v113);
  (*(v4 + 264))(&v82, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v112);
  v109 = v94;
  v110 = v95;
  v111 = v96;
  v105 = v90;
  v106 = v91;
  v108 = v93;
  v107 = v92;
  v101 = v86;
  v102 = v87;
  v104 = v89;
  v103 = v88;
  v97 = v82;
  v98 = v83;
  v100 = v85;
  v99 = v84;
  if (sub_21D4B9498(&v97) == 1)
  {
    return 0;
  }

  if ((v111 & 2) == 0)
  {
    v70 = v107;
    v71 = v108;
    v72 = v109;
    v73 = v110;
    v66 = v103;
    v67 = v104;
    v68 = v105;
    v69 = v106;
    v62 = v99;
    v63 = v100;
    v64 = v101;
    v65 = v102;
    v60 = v97;
    v61 = v98;
    if (sub_21D157494(&v60) != 1)
    {
      v5 = *(&v66 + 1);
      v6 = v66;
      v7 = *(&v60 + 1);
      v8 = v60;
      v10 = v64;
      v9 = v65;
      v12 = v62;
      v11 = v63;
      v13 = v61;
      v79 = v71;
      v80 = v72;
      v81 = v73;
      v75 = v67;
      v76 = v68;
      v77 = v69;
      v78 = v70;
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  v70 = v107;
  v71 = v108;
  v72 = v109;
  v73 = v110;
  v66 = v103;
  v67 = v104;
  v68 = v105;
  v69 = v106;
  v62 = v99;
  v63 = v100;
  v64 = v101;
  v65 = v102;
  v60 = v97;
  v61 = v98;
  if (sub_21D157494(&v60) == 1)
  {
LABEL_11:
    v14 = &unk_27CE5FB50;
    v15 = &qword_21DC1FAE0;
    v16 = &v82;
    goto LABEL_12;
  }

  v42 = v71;
  v43 = v72;
  v44 = v73;
  v38 = v67;
  v39 = v68;
  v40 = v69;
  v41 = v70;
  v18 = v67;
  if (v67)
  {
    v35 = v70;
    v36 = v71;
    v37 = v72;
    v33 = v68;
    v34 = v69;
    sub_21D1D9B34(&v39, &v45);
    v19 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(1);
    countAndFlagsBits = v19._countAndFlagsBits;
    object = v19._object;
    v47 = v35;
    v48 = v36;
    v49 = v37;
    v45 = v33;
    v46 = v34;
    sub_21D1D9B90(&v45);
    v18 = v73;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  v22 = sub_21DACF058(v66, v18 & 1, countAndFlagsBits, object);
  v24 = v23;

  if (v24)
  {
    sub_21D0CF7E0(&v82, &unk_27CE5FB50, &qword_21DC1FAE0);
    return v22;
  }

  v7 = *(&v97 + 1);
  v8 = v97;
  v12 = v99;
  v13 = v98;
  v10 = v101;
  v11 = v100;
  v9 = v102;
  v5 = *(&v103 + 1);
  v79 = v108;
  v80 = v109;
  v81 = v110;
  v75 = v104;
  v76 = v105;
  v77 = v106;
  v78 = v107;
  v6 = v103;
LABEL_20:
  v28 = v12;
  v29 = v13;
  v30 = v10;
  v31 = v11;
  v32 = v9;
  *&v45 = v8;
  *(&v45 + 1) = v7;
  v46 = v13;
  v47 = v12;
  v48 = v11;
  v49 = v10;
  v50 = v9;
  v51 = v6 & 1;
  v52 = v5;
  v57 = v79;
  v58 = v80;
  v59 = v81;
  v53 = v75;
  v54 = v76;
  v55 = v77;
  v56 = v78;
  v72 = v94;
  v73 = v95;
  v74 = v96;
  v68 = v90;
  v69 = v91;
  v70 = v92;
  v71 = v93;
  v64 = v86;
  v65 = v87;
  v66 = v88;
  v67 = v89;
  v60 = v82;
  v61 = v83;
  v62 = v84;
  v63 = v85;
  sub_21D6BF990(&v60, &v38);
  if (qword_27CE57410 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_21DC08D00;
  v38 = v29;
  v39 = v28;
  v40 = v31;
  v41 = v30;
  v42 = v32;
  v26 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
  *(v25 + 56) = MEMORY[0x277D837D0];
  *(v25 + 64) = sub_21D17A884();
  *(v25 + 32) = v26;
  v27 = sub_21DBFA17C();
  sub_21D30DA58(&v45);
  sub_21D0CF7E0(&v82, &unk_27CE5FB50, &qword_21DC1FAE0);
  return v27;
}

uint64_t sub_21D6CC27C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21[-1] - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v0 accessibilityContainer])
  {
    goto LABEL_11;
  }

  ObjectType = swift_getObjectType();
  v10 = swift_conformsToProtocol2();
  if (!v10)
  {
    swift_unknownObjectRelease();
LABEL_11:
    (*(v5 + 56))(v3, 1, 1, v4);
    goto LABEL_12;
  }

  (*(v10 + 32))(v21, ObjectType, v10);
  swift_unknownObjectRelease();
  v11 = v22;
  if (!v22)
  {
    sub_21D0CF7E0(v21, &unk_27CE5FAE0, &unk_21DC18590);
    goto LABEL_11;
  }

  v12 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v12 + 64))(v11, v12);
  __swift_destroy_boxed_opaque_existential_0(v21);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
LABEL_12:
    sub_21D0CF7E0(v3, &unk_27CE5F2B0, &unk_21DC14C00);
    return 0;
  }

  sub_21D3DA2C4(v3, v8);
  v13 = [objc_opt_self() currentRequest];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 technology];

    LOBYTE(v14) = AXTechnology.ttrShouldUseSpeakableStrings.getter(v15);
    v16 = 16;
    if ((v14 & 1) == 0)
    {
      v16 = 0;
    }

    v17 = &v8[v16];
  }

  else
  {
    v17 = v8;
  }

  v19 = *v17;
  sub_21DBF8E0C();
  sub_21D6D14FC(v8, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
  return v19;
}

id sub_21D6CC574()
{
  result = [v0 accessibilityContainer];
  if (result)
  {
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      (*(v3 + 32))(v7, ObjectType, v3);
      swift_unknownObjectRelease();
      v4 = v8;
      if (v8)
      {
        v5 = v9;
        __swift_project_boxed_opaque_existential_1(v7, v8);
        v6 = (*(v5 + 88))(v4, v5);
        __swift_destroy_boxed_opaque_existential_0(v7);
        return v6;
      }

      sub_21D0CF7E0(v7, &unk_27CE5FAE0, &unk_21DC18590);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

id sub_21D6CC68C()
{
  result = [v0 accessibilityContainer];
  if (result)
  {
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      (*(v3 + 32))(v10, ObjectType, v3);
      swift_unknownObjectRelease();
      v4 = v11;
      if (v11)
      {
        v5 = v12;
        __swift_project_boxed_opaque_existential_1(v10, v11);
        v6 = (*(v5 + 112))(v4, v5);
        if (v6)
        {
          v7 = v6;
          v8 = [v6 string];

          v9 = sub_21DBFA16C();
          __swift_destroy_boxed_opaque_existential_0(v10);
          return v9;
        }

        __swift_destroy_boxed_opaque_existential_0(v10);
      }

      else
      {
        sub_21D0CF7E0(v10, &unk_27CE5FAE0, &unk_21DC18590);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

id sub_21D6CC7E0()
{
  result = [v0 accessibilityContainer];
  if (result)
  {
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      (*(v3 + 32))(v8, ObjectType, v3);
      swift_unknownObjectRelease();
      v4 = v9;
      if (v9)
      {
        v5 = v10;
        __swift_project_boxed_opaque_existential_1(v8, v9);
        (*(v5 + 272))(&v7, v4, v5);
        v11.value = 5;
        v11.is_nil = 0;
        countAndFlagsBits = TTRReminderHashtagData.ttrAccessibilityTagSummary(withTagLimit:)(v11)._countAndFlagsBits;

        __swift_destroy_boxed_opaque_existential_0(v8);
        return countAndFlagsBits;
      }

      sub_21D0CF7E0(v8, &unk_27CE5FAE0, &unk_21DC18590);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

void *sub_21D6CC92C()
{
  v1 = v0;
  if ([v0 accessibilityContainer])
  {
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      (*(v3 + 32))(v45, ObjectType, v3);
      swift_unknownObjectRelease();
      v4 = v46;
      if (v46)
      {
        v5 = v47;
        __swift_project_boxed_opaque_existential_1(v45, v46);
        (*(v5 + 104))(&v38, v4, v5);
        v7 = v38;
        v6 = v39;
        v9 = v40;
        v8 = v41;
        v11 = v42;
        v10 = v43;
        v12 = v44;
        __swift_destroy_boxed_opaque_existential_0(v45);
        if (v8)
        {
          if (v12)
          {
            v37 = v6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
            v13 = swift_allocObject();
            *(v13 + 16) = xmmword_21DC08D00;
            *(v13 + 56) = MEMORY[0x277D837D0];
            *(v13 + 64) = sub_21D17A884();
            *(v13 + 32) = v11;
            *(v13 + 40) = v10;
            sub_21DBF8E0C();
            v14 = sub_21DBFA17C();
            v16 = v15;
            if (qword_280D1AA40 != -1)
            {
              v36 = v14;
              swift_once();
              v14 = v36;
            }

            v18 = qword_280D1AA48;
            v17 = *algn_280D1AA50;
            v38 = v14;
            v39 = v16;
            sub_21DBF8E0C();
            MEMORY[0x223D42AA0](v18, v17);

            v19 = v38;
            v20 = v39;
            if (qword_27CE57548 != -1)
            {
              swift_once();
            }

            v21 = qword_27CE67180;
            v22 = *algn_27CE67188;
            v38 = v19;
            v39 = v20;
            sub_21DBF8E0C();
            MEMORY[0x223D42AA0](v21, v22);

            sub_21D4B94BC(v7, v37, v9, v8);
            return v38;
          }

          sub_21D4B94BC(v7, v6, v9, v8);
        }
      }

      else
      {
        sub_21D0CF7E0(v45, &unk_27CE5FAE0, &unk_21DC18590);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if ([v1 accessibilityContainer])
  {
    v24 = swift_getObjectType();
    v25 = swift_conformsToProtocol2();
    if (v25)
    {
      (*(v25 + 32))(v45, v24, v25);
      swift_unknownObjectRelease();
      v26 = v46;
      if (v46)
      {
        v27 = v47;
        __swift_project_boxed_opaque_existential_1(v45, v46);
        (*(v27 + 104))(&v38, v26, v27);
        v28 = v41;
        if (v41)
        {
          v30 = v42;
          v29 = v43;
          v32 = v39;
          v31 = v40;
          v33 = v38;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_21DC08D00;
          *(v34 + 56) = MEMORY[0x277D837D0];
          *(v34 + 64) = sub_21D17A884();
          *(v34 + 32) = v30;
          *(v34 + 40) = v29;
          sub_21DBF8E0C();
          v35 = sub_21DBFA17C();
          sub_21D4B94BC(v33, v32, v31, v28);
          __swift_destroy_boxed_opaque_existential_0(v45);
          return v35;
        }

        __swift_destroy_boxed_opaque_existential_0(v45);
      }

      else
      {
        sub_21D0CF7E0(v45, &unk_27CE5FAE0, &unk_21DC18590);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

uint64_t sub_21D6CCD74()
{
  if (![v0 accessibilityContainer])
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  (*(v2 + 32))(v13, ObjectType, v2);
  swift_unknownObjectRelease();
  v3 = v14;
  if (!v14)
  {
    sub_21D0CF7E0(v13, &unk_27CE5FAE0, &unk_21DC18590);
    return 0;
  }

  v4 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v4 + 248))(&v10, v3, v4);
  v5 = v11;
  if (!v11)
  {
    __swift_destroy_boxed_opaque_existential_0(v13);
    return 0;
  }

  v6 = v10;
  v7 = v12;
  sub_21DBF8E0C();
  sub_21D1576C8(v6, v5, v7);
  __swift_destroy_boxed_opaque_existential_0(v13);
  if (qword_27CE573F8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21DC08D00;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_21D17A884();
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  return sub_21DBFA17C();
}

id sub_21D6CCF50()
{
  result = [v0 accessibilityContainer];
  if (result)
  {
    swift_getObjectType();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      v3 = v2;
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 32);
      v5((v18 + 1), ObjectType, v3);
      v6 = v19;
      if (!v19)
      {
        goto LABEL_14;
      }

      v7 = v20;
      __swift_project_boxed_opaque_existential_1((v18 + 1), v19);
      v8 = (*(v7 + 160))(v6, v7);
      v10 = v9;
      __swift_destroy_boxed_opaque_existential_0((v18 + 1));
      if ((v10 & 1) == 0)
      {
        v5((v18 + 1), ObjectType, v3);
        v11 = v19;
        if (v19)
        {
          v12 = v20;
          __swift_project_boxed_opaque_existential_1((v18 + 1), v19);
          (*(v12 + 176))(v18, v11, v12);
          v13 = LOBYTE(v18[0]);
          __swift_destroy_boxed_opaque_existential_0((v18 + 1));
          if (v13 != 2 && v8 > 0)
          {
            if ((v13 & 1) == 0)
            {
              if (qword_27CE573E8 == -1)
              {
                goto LABEL_20;
              }

              goto LABEL_21;
            }

            (*(v3 + 72))(v18 + 1, ObjectType, v3);
            if (BYTE1(v18[0]))
            {
              if (BYTE1(v18[0]) == 1)
              {
                if (qword_27CE573E0 == -1)
                {
                  goto LABEL_20;
                }
              }

              else if (qword_27CE573D8 == -1)
              {
LABEL_20:
                sub_21DBF8E0C();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
                v14 = swift_allocObject();
                v15 = MEMORY[0x277D83B88];
                *(v14 + 16) = xmmword_21DC08D00;
                v16 = MEMORY[0x277D83C10];
                *(v14 + 56) = v15;
                *(v14 + 64) = v16;
                *(v14 + 32) = v8;
                v17 = sub_21DBFA17C();

                swift_unknownObjectRelease();
                return v17;
              }

LABEL_21:
              swift_once();
              goto LABEL_20;
            }
          }

          goto LABEL_13;
        }

LABEL_14:
        swift_unknownObjectRelease();
        sub_21D0CF7E0(v18 + 1, &unk_27CE5FAE0, &unk_21DC18590);
        return 0;
      }
    }

LABEL_13:
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t sub_21D6CD25C()
{
  v26 = type metadata accessor for TTRRemindersListViewModel.LinkAttachment(0);
  v1 = *(v26 - 8);
  *&v2 = MEMORY[0x28223BE20](v26).n128_u64[0];
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v0 accessibilityContainer])
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (!v6)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  (*(v6 + 32))(v27, ObjectType, v6);
  swift_unknownObjectRelease();
  v7 = v28;
  if (!v28)
  {
    sub_21D0CF7E0(v27, &unk_27CE5FAE0, &unk_21DC18590);
    return 0;
  }

  v8 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v9 = (*(v8 + 120))(v7, v8);
  __swift_destroy_boxed_opaque_existential_0(v27);
  if (!v9)
  {
    return 0;
  }

  v10 = *(v9 + 16);
  if (!v10)
  {

    return 0;
  }

  v27[0] = MEMORY[0x277D84F90];
  sub_21D18E678(0, v10, 0);
  v12 = v27[0];
  v13 = *(v1 + 80);
  v25[1] = v9;
  v14 = v9 + ((v13 + 32) & ~v13);
  v15 = *(v1 + 72);
  do
  {
    sub_21D6D1498(v14, v4, v11);
    v16 = sub_21DBF53EC();
    if (!v17)
    {
      v16 = sub_21DBF535C();
    }

    v18 = v16;
    v19 = v17;
    sub_21D6D14FC(v4, type metadata accessor for TTRRemindersListViewModel.LinkAttachment);
    v27[0] = v12;
    v21 = *(v12 + 16);
    v20 = *(v12 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_21D18E678((v20 > 1), v21 + 1, 1);
      v12 = v27[0];
    }

    *(v12 + 16) = v21 + 1;
    v22 = v12 + 16 * v21;
    *(v22 + 32) = v18;
    *(v22 + 40) = v19;
    v14 += v15;
    --v10;
  }

  while (v10);

  v27[0] = v12;
  if (qword_280D1B938 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
  v23 = sub_21DBFA07C();

  return v23;
}

uint64_t sub_21D6CD5A8()
{
  if (![v0 accessibilityContainer])
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  (*(v2 + 32))(v10, ObjectType, v2);
  swift_unknownObjectRelease();
  v3 = v11;
  if (!v11)
  {
    sub_21D0CF7E0(v10, &unk_27CE5FAE0, &unk_21DC18590);
    return 0;
  }

  v4 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v5 = (*(v4 + 152))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v10);
  if (v5 < 1)
  {
    return 0;
  }

  if (qword_280D1AB10 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D83B88];
  *(v6 + 16) = xmmword_21DC08D00;
  v8 = MEMORY[0x277D83C10];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = v5;
  return sub_21DBFA17C();
}

uint64_t sub_21D6CD74C()
{
  if (![v0 accessibilityContainer])
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  (*(v2 + 32))(v15, ObjectType, v2);
  swift_unknownObjectRelease();
  v3 = v16;
  if (!v16)
  {
    sub_21D0CF7E0(v15, &unk_27CE5FAE0, &unk_21DC18590);
    return 0;
  }

  v4 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v4 + 240))(v14, v3, v4);
  v6 = v14[0];
  v5 = v14[1];
  v7 = v14[2];
  __swift_destroy_boxed_opaque_existential_0(v15);
  if (!v6)
  {
    return 0;
  }

  if (v7)
  {
    v8 = v5;
    v9 = v7;
  }

  else
  {
    if (qword_27CE572D8 != -1)
    {
      swift_once();
    }

    v8 = qword_27CE66D00;
    v9 = *algn_27CE66D08;
    sub_21DBF8E0C();
  }

  v11 = qword_27CE57400;
  sub_21DBF8E0C();
  if (v11 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21DC08D00;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_21D17A884();
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  v13 = sub_21DBFA17C();
  sub_21D6388A4(v6);
  return v13;
}

id sub_21D6CD988()
{
  result = [objc_opt_self() currentRequest];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result technology];

  LOBYTE(v2) = AXTechnology.ttrShouldProvideAdditionalContext.getter(v3);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  result = [v0 accessibilityContainer];
  if (!result)
  {
    return result;
  }

  ObjectType = swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (!v5)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v6 = (*(v5 + 80))(ObjectType, v5);
  v8 = v7;
  swift_unknownObjectRelease();
  if (!v8)
  {
    return 0;
  }

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    return 0;
  }

  if (qword_27CE57408 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC08D00;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_21D17A884();
  *(v10 + 32) = v6;
  *(v10 + 40) = v8;
  v11 = sub_21DBFA13C();

  return v11;
}

uint64_t sub_21D6CDB64()
{
  if (![v0 accessibilityContainer])
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  (*(v2 + 32))(v11, ObjectType, v2);
  swift_unknownObjectRelease();
  v3 = v12;
  if (!v12)
  {
    sub_21D0CF7E0(v11, &unk_27CE5FAE0, &unk_21DC18590);
    return 0;
  }

  v4 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v4 + 288))(v10, v3, v4);
  v5 = v10[0];
  v6 = v10[1];
  v7 = v10[2];
  v8 = v10[3];
  __swift_destroy_boxed_opaque_existential_0(v11);
  if (v6 < 2)
  {
    return 0;
  }

  if (!v8)
  {
    return v5;
  }

  return v7;
}

double TTRIRemindersListReminderCellAccessibilityElement.accessibilityFrame.getter()
{
  v1 = [v0 accessibilityContainer];
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      [v3 accessibilityFrame];
      v2 = v4;
    }

    swift_unknownObjectRelease();
  }

  return v2;
}

void (*TTRIRemindersListReminderCellAccessibilityElement.accessibilityFrame.modify(void *a1))()
{
  v3 = [v1 accessibilityContainer];
  v4 = 0;
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = v3;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    swift_unknownObjectRelease();
LABEL_5:
    v8 = 0;
    v10 = 0;
    v12 = 0;
    goto LABEL_6;
  }

  [v5 accessibilityFrame];
  v4 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRelease();
LABEL_6:
  *a1 = v4;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v12;
  return nullsub_1;
}

double TTRIRemindersListReminderCellAccessibilityElement.accessibilityActivationPoint.getter()
{
  v1 = [v0 accessibilityContainer];
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      [v3 accessibilityActivationPoint];
      v2 = v4;
    }

    swift_unknownObjectRelease();
  }

  return v2;
}

void (*TTRIRemindersListReminderCellAccessibilityElement.accessibilityActivationPoint.modify(void *a1))()
{
  v3 = [v1 accessibilityContainer];
  v4 = 0;
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = v3;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    swift_unknownObjectRelease();
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  [v5 accessibilityActivationPoint];
  v4 = v6;
  v8 = v7;
  swift_unknownObjectRelease();
LABEL_6:
  *a1 = v4;
  a1[1] = v8;
  return nullsub_1;
}

uint64_t TTRIRemindersListReminderCellAccessibilityElement.accessibilityUserInputLabels.getter()
{
  sub_21D6CA954(v11);
  v1 = v11[0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21DC08D00;
  if (v1 < 0)
  {
    if ([v0 accessibilityContainer])
    {
      ObjectType = swift_getObjectType();
      v7 = swift_conformsToProtocol2();
      if (v7)
      {
        v8 = (*(v7 + 88))(ObjectType, v7);
        swift_unknownObjectRelease();
        if (v8)
        {
          if (qword_27CE572F8 != -1)
          {
            swift_once();
          }

          v9 = &qword_27CE66D30;
LABEL_13:
          v3 = *v9;
          v5 = sub_21DBF8E0C();
          goto LABEL_14;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    if (qword_27CE572E8 != -1)
    {
      swift_once();
    }

    v9 = &qword_27CE66D10;
    goto LABEL_13;
  }

  v3 = sub_21D6CBB8C();
  v5 = v4;
LABEL_14:
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  return v2;
}

unint64_t TTRIRemindersListReminderCellAccessibilityElement.accessibilityTraits.getter()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v13, sel_accessibilityTraits);
  v2 = *MEMORY[0x277D765D0];
  if ((*MEMORY[0x277D765D0] & ~v1) == 0)
  {
    v2 = 0;
  }

  v3 = v2 | v1;
  sub_21D6CA954(v12);
  v4 = v12[0];

  if (v4 < 0)
  {
    v5 = *MEMORY[0x277D76548];
    if ((*MEMORY[0x277D76548] & ~v3) == 0)
    {
      v5 = 0;
    }

    v3 |= v5;
  }

  if (![v0 accessibilityContainer])
  {
    goto LABEL_16;
  }

  ObjectType = swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (!v7 || (v8 = v7, ((*(v7 + 40))(ObjectType, v7) & 1) == 0) || ((*(v8 + 48))(ObjectType, v8) & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_16:
    if ((*MEMORY[0x277D76598] & v3) != 0)
    {
      return v3 & ~*MEMORY[0x277D76598];
    }

    else
    {
      return v3;
    }
  }

  v9 = *MEMORY[0x277D76598];
  swift_unknownObjectRelease();
  if ((v9 & ~v3) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10 | v3;
}

id TTRIRemindersListReminderCellAccessibilityElement.accessibilityHint.getter()
{
  v1 = v0;
  result = [v0 accessibilityContainer];
  if (!result)
  {
    return result;
  }

  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (!v3)
  {
LABEL_5:
    swift_unknownObjectRelease();
    return 0;
  }

  v4 = v3;
  ObjectType = swift_getObjectType();
  v87 = *(v4 + 32);
  v87(&v119, ObjectType, v4);
  v6 = *(&v120 + 1);
  if (*(&v120 + 1))
  {
    v7 = ObjectType;
    v8 = v121;
    __swift_project_boxed_opaque_existential_1(&v119, *(&v120 + 1));
    v9 = *(v8 + 16);
    v10 = v8;
    ObjectType = v7;
    v9(&v104, v6, v10);
    v11 = BYTE9(v105);

    __swift_destroy_boxed_opaque_existential_0(&v119);
    if (v11 != 1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_21D0CF7E0(&v119, &unk_27CE5FAE0, &unk_21DC18590);
  }

  v137 = MEMORY[0x277D84F90];
  v12 = *(v4 + 40);
  v85 = ObjectType;
  if ((v12(ObjectType, v4) & 1) != 0 && ((*(v4 + 56))(ObjectType, v4) & 1) == 0)
  {
    if ((*(v4 + 48))(ObjectType, v4))
    {
      if (qword_27CE56BD8 != -1)
      {
        swift_once();
      }

      v23 = &qword_27CE601A0;
    }

    else
    {
      if (qword_27CE56BD0 != -1)
      {
        swift_once();
      }

      v23 = &qword_27CE60190;
    }

    v29 = *v23;
    v28 = v23[1];
    sub_21DBF8E0C();
    v14 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v31 = *(v14 + 2);
    v30 = *(v14 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v14 = sub_21D210A84((v30 > 1), v31 + 1, 1, v14);
    }

    LODWORD(v13) = 0;
    goto LABEL_55;
  }

  if (v12(ObjectType, v4))
  {
    LODWORD(v13) = 0;
    v14 = MEMORY[0x277D84F90];
    goto LABEL_56;
  }

  v15 = sub_21D6CDB64();
  v83 = v16 != 0;
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    v19 = sub_21D2142F8(0, 1, 1, MEMORY[0x277D84F90]);
    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    if (v21 >= v20 >> 1)
    {
      v19 = sub_21D2142F8((v20 > 1), v21 + 1, 1, v19);
    }

    *(v19 + 2) = v21 + 1;
    v22 = &v19[16 * v21];
    *(v22 + 4) = v17;
    *(v22 + 5) = v18;
    v137 = v19;
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  sub_21D6CA954(&v119);
  v24 = v119;

  LODWORD(v13) = v83;
  if (v24 >> 6)
  {
    if (v24 >> 6 == 1)
    {
      if (v24)
      {
        if (qword_27CE56BC8 != -1)
        {
          swift_once();
        }

        v25 = &qword_27CE60180;
      }

      else
      {
        if (qword_27CE56BC0 != -1)
        {
          swift_once();
        }

        v25 = &qword_27CE60170;
      }

LABEL_53:
      v29 = *v25;
      v28 = v25[1];
      sub_21DBF8E0C();
      v14 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
      v31 = *(v14 + 2);
      v36 = *(v14 + 3);
      v32 = v31 + 1;
      if (v31 >= v36 >> 1)
      {
        v14 = sub_21D210A84((v36 > 1), v31 + 1, 1, v14);
      }

LABEL_55:
      *(v14 + 2) = v32;
      v37 = &v14[16 * v31];
      *(v37 + 4) = v29;
      *(v37 + 5) = v28;
      goto LABEL_56;
    }

    if ([v1 accessibilityContainer])
    {
      v33 = swift_getObjectType();
      v34 = swift_conformsToProtocol2();
      if (v34)
      {
        v35 = (*(v34 + 88))(v33, v34);
        swift_unknownObjectRelease();
        if (v35)
        {
          if (qword_27CE56BE8 != -1)
          {
            swift_once();
          }

          v25 = &qword_27CE601C0;
          goto LABEL_53;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    if (qword_27CE56BE0 != -1)
    {
      swift_once();
    }

    v25 = &qword_27CE601B0;
    goto LABEL_53;
  }

  if ((v24 & 1) != 0 || (sub_21D6CA954(&v104), v26 = BYTE2(v104), , v26 != 1))
  {
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    if ((*(v4 + 64))(v85, v4))
    {
      if (qword_27CE56BB8 != -1)
      {
        swift_once();
      }

      v27 = &qword_27CE60160;
    }

    else
    {
      if (qword_27CE56BB0 != -1)
      {
        swift_once();
      }

      v27 = &qword_27CE60150;
    }

    v72 = *v27;
    v71 = v27[1];
    sub_21DBF8E0C();
    v14 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v74 = *(v14 + 2);
    v73 = *(v14 + 3);
    if (v74 >= v73 >> 1)
    {
      v14 = sub_21D210A84((v73 > 1), v74 + 1, 1, v14);
    }

    *(v14 + 2) = v74 + 1;
    v75 = &v14[16 * v74];
    *(v75 + 4) = v72;
    *(v75 + 5) = v71;
    LODWORD(v13) = v83;
  }

  (*(v4 + 72))(&v104, v85, v4);
  if (v104 == 1)
  {
    v76 = &unk_282EA75F8;
LABEL_126:
    sub_21D563124(v76);
    LODWORD(v13) = 1;
    goto LABEL_56;
  }

  sub_21D6CD25C();
  if (v77)
  {

    v76 = &unk_282EA7638;
    goto LABEL_126;
  }

  sub_21D6CD5A8();
  if (v78)
  {

    v76 = &unk_282EA7678;
    goto LABEL_126;
  }

  sub_21D6CA954(&v104);
  v79 = BYTE2(v104);

  if (v79 == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_21D2142F8(0, *(v19 + 2) + 1, 1, v19);
    }

    v81 = *(v19 + 2);
    v80 = *(v19 + 3);
    if (v81 >= v80 >> 1)
    {
      v19 = sub_21D2142F8((v80 > 1), v81 + 1, 1, v19);
    }

    *(v19 + 2) = v81 + 1;
    v82 = &v19[16 * v81];
    *(v82 + 4) = 0;
    *(v82 + 5) = 0;
    v137 = v19;
  }

LABEL_56:
  sub_21D6CA954(&v119);
  v38 = BYTE2(v119);

  if (v38 != 1)
  {
    goto LABEL_87;
  }

  v84 = v13;
  v39 = v137;
  v13 = *(v137 + 16);
  if (v13)
  {
    v40 = 0;
    v41 = 0;
    while (*(v137 + v40 + 40))
    {
      ++v41;
      v40 += 16;
      if (v13 == v41)
      {
        goto LABEL_61;
      }
    }

    v42 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      goto LABEL_65;
    }

    while (v42 != v13)
    {
      if (v42 >= v13)
      {
        __break(1u);
        goto LABEL_134;
      }

      v46 = *&v39[v40 + 56];
      if (v46)
      {
        if (v42 != v41)
        {
          v86 = *&v39[v40 + 48];
          if (v41 >= v13)
          {
            __break(1u);
LABEL_136:
            __break(1u);
            goto LABEL_137;
          }

          v47 = &v39[16 * v41 + 32];
          v38 = *v47;
          v13 = v47[1];
          sub_21D6D1380(*v47, v13);
          sub_21D6D1380(v86, v46);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_21D256D80(v39);
          }

          v48 = &v39[16 * v41];
          v49 = *(v48 + 4);
          v50 = *(v48 + 5);
          *(v48 + 2) = v86;
          sub_21D6D1394(v49, v50);
          if (v42 >= *(v39 + 2))
          {
            goto LABEL_136;
          }

LABEL_65:
          v43 = &v39[v40];
          v44 = *&v39[v40 + 48];
          v45 = *&v39[v40 + 56];
          *(v43 + 6) = v38;
          *(v43 + 7) = v13;
          sub_21D6D1394(v44, v45);
          v13 = *(v39 + 2);
        }

        ++v41;
      }

      ++v42;
      v40 += 16;
    }

    if (v13 < v41)
    {
      goto LABEL_139;
    }

    if (v41 < 0)
    {
      goto LABEL_140;
    }
  }

  else
  {
LABEL_61:
    v41 = *(v137 + 16);
  }

  v38 = v41;
  if (__OFADD__(v13, v41 - v13))
  {
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v137 = v39;
  if (!isUniquelyReferenced_nonNull_native || v41 > *(v39 + 3) >> 1)
  {
    if (v13 <= v41)
    {
      v52 = v41;
    }

    else
    {
      v52 = v13;
    }

    v39 = sub_21D2142F8(isUniquelyReferenced_nonNull_native, v52, 1, v39);
    v137 = v39;
  }

  sub_21D5068C8(v41, v13, 0);
  v137 = v39;
  LODWORD(v13) = v84;
LABEL_87:
  v87(v134, v85, v4);
  v53 = v135;
  if (v135)
  {
    v54 = v136;
    __swift_project_boxed_opaque_existential_1(v134, v135);
    (*(v54 + 264))(&v104, v53, v54);
    __swift_destroy_boxed_opaque_existential_0(v134);
    v131 = v116;
    v132 = v117;
    v133 = v118;
    v127 = v112;
    v128 = v113;
    v129 = v114;
    v130 = v115;
    v123 = v108;
    v124 = v109;
    v125 = v110;
    v126 = v111;
    v119 = v104;
    v120 = v105;
    v121 = v106;
    v122 = v107;
    if (sub_21D4B9498(&v119) != 1)
    {
      if ((v133 & 2) != 0)
      {
        v100 = v129;
        v101 = v130;
        v102 = v131;
        v103 = v132;
        v96 = v125;
        v97 = v126;
        v98 = v127;
        v99 = v128;
        v95[2] = v121;
        v95[3] = v122;
        v95[4] = v123;
        v95[5] = v124;
        v95[0] = v119;
        v95[1] = v120;
        if (sub_21D157494(v95) != 1)
        {
          v94[3] = v101;
          v94[4] = v102;
          v94[5] = v103;
          v93[5] = v97;
          v94[0] = v98;
          v94[1] = v99;
          v94[2] = v100;
          v55 = v97;
          if (v97)
          {
            v90 = v100;
            v91 = v101;
            v92 = v102;
            v88 = v98;
            v89 = v99;
            sub_21D1D9B34(v94, v93);
            v56 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(1);
            countAndFlagsBits = v56._countAndFlagsBits;
            object = v56._object;
            v93[2] = v90;
            v93[3] = v91;
            v93[4] = v92;
            v93[0] = v88;
            v93[1] = v89;
            sub_21D1D9B90(v93);
            v55 = v103;
          }

          else
          {
            countAndFlagsBits = 0;
            object = 0;
          }

          sub_21DACF058(v96, v55 & 1, countAndFlagsBits, object);
          v60 = v59;

          if (v60)
          {
            sub_21D0CF7E0(&v104, &unk_27CE5FB50, &qword_21DC1FAE0);

            goto LABEL_101;
          }
        }
      }

      v38 = v137;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_98:
        v62 = *(v38 + 16);
        v61 = *(v38 + 24);
        if (v62 >= v61 >> 1)
        {
          v38 = sub_21D2142F8((v61 > 1), v62 + 1, 1, v38);
        }

        sub_21D0CF7E0(&v104, &unk_27CE5FB50, &qword_21DC1FAE0);
        *(v38 + 16) = v62 + 1;
        *(v38 + 16 * v62 + 32) = xmmword_21DC22F10;
        v137 = v38;
        goto LABEL_101;
      }

LABEL_141:
      v38 = sub_21D2142F8(0, *(v38 + 16) + 1, 1, v38);
      goto LABEL_98;
    }
  }

  else
  {
    sub_21D0CF7E0(v134, &unk_27CE5FAE0, &unk_21DC18590);
  }

LABEL_101:
  v63 = v137;
  if (v13)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v63 = sub_21D2142F8(0, *(v63 + 2) + 1, 1, v63);
    }

    v65 = *(v63 + 2);
    v64 = *(v63 + 3);
    if (v65 >= v64 >> 1)
    {
      v63 = sub_21D2142F8((v64 > 1), v65 + 1, 1, v63);
    }

    *(v63 + 2) = v65 + 1;
    *&v63[16 * v65 + 32] = xmmword_21DC19C40;
    v137 = v63;
  }

  v4 = sub_21D6D0CD4(v63);
  v42 = v66;

  if (v42)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_137:
      v14 = sub_21D210A84(0, *(v14 + 2) + 1, 1, v14);
    }

    v68 = *(v14 + 2);
    v67 = *(v14 + 3);
    if (v68 >= v67 >> 1)
    {
      v14 = sub_21D210A84((v67 > 1), v68 + 1, 1, v14);
    }

    *(v14 + 2) = v68 + 1;
    v69 = &v14[16 * v68];
    *(v69 + 4) = v4;
    *(v69 + 5) = v42;
  }

  *&v119 = v14;
  if (qword_280D1AA40 != -1)
  {
LABEL_134:
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
  v70 = sub_21DBFA07C();

  swift_unknownObjectRelease();
  return v70;
}

uint64_t (*TTRIRemindersListReminderCellAccessibilityElement.accessibilityHint.modify(id *a1))(uint64_t a1)
{
  *a1 = TTRIRemindersListReminderCellAccessibilityElement.accessibilityHint.getter();
  a1[1] = v2;
  return destroy for TTRRemindersBoardCellInfoButtonStates;
}

uint64_t TTRIRemindersListReminderCellAccessibilityElement.accessibilityCustomRotors.getter()
{
  v1 = v0;
  if ([v0 accessibilityContainer])
  {
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      v4 = (*(v3 + 96))(ObjectType, v3);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v4 = 0;
LABEL_6:
  v5 = [v1 _accessibilityInternalTextLinkCustomRotors];
  if (v5)
  {
    v6 = v5;
    sub_21D0D8CF0(0, &qword_27CE5DE78, 0x277D75090);
    v7 = sub_21DBFA5EC();

    if (v4)
    {
      sub_21D563218(v7);
    }

    else
    {
    }
  }

  return v4;
}

uint64_t TTRIRemindersListReminderCellAccessibilityElement._accessibilityInternalTextLinks()()
{
  v1 = [v0 accessibilityContainer];
  if (v1)
  {
    v2 = v1;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v3 = [v2 _accessibilityInternalTextLinks];
      swift_unknownObjectRelease();
      if (v3)
      {
        sub_21D0D8CF0(0, &unk_27CE5F130, 0x277D74008);
        v4 = sub_21DBFA5EC();

        return v4;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return MEMORY[0x277D84F90];
}

id sub_21D6CF7E8(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void *a5)
{
  v8 = a1;
  v9 = a3();

  if (v9)
  {
    sub_21D0D8CF0(0, a4, a5);
    v10 = sub_21DBFA5DC();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id TTRIRemindersListReminderCellAccessibilityElement.accessibilityDragSourceDescriptors.getter()
{
  result = [v0 accessibilityContainer];
  if (result)
  {
    v2 = result;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v3 = [v2 accessibilityDragSourceDescriptors];
      swift_unknownObjectRelease();
      if (v3)
      {
        sub_21D0D8CF0(0, &unk_27CE5FB40, 0x277D750B8);
        v4 = sub_21DBFA5EC();

        return v4;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

double (*TTRIRemindersListReminderCellAccessibilityElement.accessibilityDragSourceDescriptors.modify(void *a1))(void *a1)
{
  v3 = [v1 accessibilityContainer];
  if (v3)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v4 = [v3 accessibilityDragSourceDescriptors];
      swift_unknownObjectRelease();
      if (v4)
      {
        sub_21D0D8CF0(0, &unk_27CE5FB40, 0x277D750B8);
        v3 = sub_21DBFA5EC();

        goto LABEL_7;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v3 = 0;
  }

LABEL_7:
  *a1 = v3;
  return destroy for TTRReminderDetailViewModel.LocationQuickPicksState;
}

id TTRIRemindersListReminderCellAccessibilityElement.accessibilityDropPointDescriptors.getter()
{
  result = [v0 accessibilityContainer];
  if (result)
  {
    v7 = result;
    swift_getObjectType();
    if (!swift_conformsToProtocol2() || (v8 = [v7 accessibilityDropPointDescriptors]) == 0)
    {
LABEL_12:
      swift_unknownObjectRelease();
      return 0;
    }

    v9 = v8;
    sub_21D0D8CF0(0, &unk_27CE5FB40, 0x277D750B8);
    v10 = sub_21DBFA5EC();

    if (v10 >> 62)
    {
      if (sub_21DBFBD7C())
      {
        goto LABEL_6;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x223D44740](0, v10);
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v11 = *(v10 + 32);
      }

      v12 = v11;

      v10 = [v12 view];

      if (v10)
      {
        [swift_unknownObjectRetain() bounds];
        [v7 convertRect:v10 toCoordinateSpace:?];
        v2 = v13;
        v3 = v14;
        v4 = v15;
        v5 = v16;
        swift_unknownObjectRelease();
        v1 = 0x800000021DC67CE0;
        if (qword_280D1BAA8 == -1)
        {
LABEL_11:
          sub_21DBF516C();
          v37.origin.x = v2;
          v37.origin.y = v3;
          v37.size.width = v4;
          v37.size.height = v5;
          MidX = CGRectGetMidX(v37);
          v38.origin.x = v2;
          v38.origin.y = v3;
          v38.size.width = v4;
          v38.size.height = v5;
          CGRectGetMidY(v38);
          v39.origin.x = v2;
          v39.origin.y = v3;
          v39.size.width = v4;
          v39.size.height = v5;
          v18 = CGRectGetMinY(v39) + 5.0;
          v19 = objc_allocWithZone(MEMORY[0x277D750B8]);
          v20 = v10;
          v21 = sub_21DBFA12C();

          v36 = [v19 initWithName:v21 point:v20 inView:{MidX, v18, v1}];

          sub_21DBF516C();
          v40.origin.x = v2;
          v40.origin.y = v3;
          v40.size.width = v4;
          v40.size.height = v5;
          v22 = CGRectGetMidX(v40);
          v41.origin.x = v2;
          v41.origin.y = v3;
          v41.size.width = v4;
          v41.size.height = v5;
          MidY = CGRectGetMidY(v41);
          v24 = objc_allocWithZone(MEMORY[0x277D750B8]);
          v25 = v20;
          v26 = sub_21DBFA12C();

          v27 = [v24 initWithName:v26 point:v25 inView:{v22, MidY, 0x800000021DC67D40}];

          sub_21DBF516C();
          v42.origin.x = v2;
          v42.origin.y = v3;
          v42.size.width = v4;
          v42.size.height = v5;
          v28 = CGRectGetMidX(v42);
          v43.origin.x = v2;
          v43.origin.y = v3;
          v43.size.width = v4;
          v43.size.height = v5;
          CGRectGetMidY(v43);
          v44.origin.x = v2;
          v44.origin.y = v3;
          v44.size.width = v4;
          v44.size.height = v5;
          v29 = CGRectGetMaxY(v44) + -5.0;
          v30 = objc_allocWithZone(MEMORY[0x277D750B8]);
          v31 = v25;
          v32 = sub_21DBFA12C();

          v33 = [v30 initWithName:v32 point:v31 inView:{v28, v29, 0x800000021DC67D70}];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_21DC0BFD0;
          *(v34 + 32) = v36;
          *(v34 + 40) = v27;
          *(v34 + 48) = v33;
          v35 = v36;

          swift_unknownObjectRelease();
          return v34;
        }

LABEL_19:
        swift_once();
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    swift_unknownObjectRelease();

    return 0;
  }

  return result;
}

id sub_21D6D0020(SEL *a1)
{
  v3 = [v1 accessibilityContainer];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v5 = [v4 *a1];
  }

  else
  {
    v5 = 0;
  }

  swift_unknownObjectRelease();
  return v5;
}

id sub_21D6D00C0(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 accessibilityContainer];
  if (v5)
  {
    v6 = v5;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v7 = [v6 *a3];
      swift_unknownObjectRelease();

      return v7;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_21D6D0168()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE60150 = result;
  *algn_27CE60158 = v1;
  return result;
}

uint64_t sub_21D6D022C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE60160 = result;
  *algn_27CE60168 = v1;
  return result;
}

uint64_t sub_21D6D02F4()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE60170 = result;
  *algn_27CE60178 = v1;
  return result;
}

uint64_t sub_21D6D03B8()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE60180 = result;
  *algn_27CE60188 = v1;
  return result;
}

uint64_t sub_21D6D047C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE60190 = result;
  *algn_27CE60198 = v1;
  return result;
}

uint64_t sub_21D6D0540()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE601A0 = result;
  *algn_27CE601A8 = v1;
  return result;
}

uint64_t sub_21D6D0604()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE601B0 = result;
  *algn_27CE601B8 = v1;
  return result;
}

uint64_t sub_21D6D06C8()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE601C0 = result;
  *algn_27CE601C8 = v1;
  return result;
}

void *TTRIRemindersListReminderCellAccessibilityElement.init(accessibilityContainer:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC15RemindersUICore49TTRIRemindersListReminderCellAccessibilityElement_ttriAccessibilityLabelSeparator;
  if (qword_280D1B938 != -1)
  {
    swift_once();
  }

  v5 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v6 = sub_21DBFA12C();
  v7 = [v5 initWithString_];

  *&v1[v4] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_21DBFC62C();
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithAccessibilityContainer_, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

id TTRIRemindersListReminderCellAccessibilityElement.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIRemindersListReminderCellAccessibilityElement.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC15RemindersUICore49TTRIRemindersListReminderCellAccessibilityElement_ttriAccessibilityLabelSeparator;
  if (qword_280D1B938 != -1)
  {
    swift_once();
  }

  v3 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v4 = sub_21DBFA12C();
  v5 = [v3 initWithString_];

  *&v0[v2] = v5;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id TTRIRemindersListReminderCellAccessibilityElement.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D6D0C14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        return a4 == 3;
      case 4:
        return a4 == 4;
      case 5:
        return a4 == 5;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        return !a4;
      case 1:
        return a4 == 1;
      case 2:
        return a4 == 2;
    }
  }

  if (a4 < 6)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_21DBFC64C();
  }
}

uint64_t sub_21D6D0CD4(uint64_t a1)
{
  v1 = 0xEB00000000656C62;
  v2 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  if (v3)
  {
    v23 = MEMORY[0x277D84F90];
    sub_21D18E678(0, v3, 0);
    v2 = v23;
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      if (*v5 > 2)
      {
        switch(v6)
        {
          case 3uLL:
            if (qword_280D1BAA8 == -1)
            {
              break;
            }

            goto LABEL_29;
          case 4uLL:
            if (qword_280D1BAA8 != -1)
            {
              goto LABEL_29;
            }

            break;
          case 5uLL:
            if (qword_280D1BAA8 != -1)
            {
              goto LABEL_29;
            }

            break;
          default:
LABEL_18:
            sub_21D6D1380(*(v5 - 1), *v5);
            v8 = qword_280D1BAA8;
            sub_21DBF8E0C();
            if (v8 != -1)
            {
              swift_once();
            }

            sub_21DBF516C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
            v9 = v1;
            v10 = swift_allocObject();
            *(v10 + 16) = xmmword_21DC08D00;
            *(v10 + 56) = MEMORY[0x277D837D0];
            *(v10 + 64) = sub_21D17A884();
            *(v10 + 32) = v7;
            *(v10 + 40) = v6;
            v11 = sub_21DBFA13C();
            v13 = v12;
            sub_21D6D1394(v7, v6);

            v1 = v9;

            goto LABEL_25;
        }
      }

      else
      {
        if (!v6)
        {
          if (qword_280D1BAA8 == -1)
          {
            goto LABEL_24;
          }

          goto LABEL_29;
        }

        if (v6 == 1)
        {
          if (qword_280D1BAA8 == -1)
          {
            goto LABEL_24;
          }

LABEL_29:
          swift_once();
          goto LABEL_24;
        }

        if (v6 != 2)
        {
          goto LABEL_18;
        }

        if (qword_280D1BAA8 != -1)
        {
          goto LABEL_29;
        }
      }

LABEL_24:
      v11 = sub_21DBF516C();
      v13 = v14;
LABEL_25:
      v16 = v23[2];
      v15 = v23[3];
      if (v16 >= v15 >> 1)
      {
        sub_21D18E678((v15 > 1), v16 + 1, 1);
      }

      v5 += 2;
      v23[2] = v16 + 1;
      v17 = &v23[2 * v16];
      v17[4] = v11;
      v17[5] = v13;
      --v3;
    }

    while (v3);
  }

  v18 = Array<A>.ttrAccessibilitySpeakableList.getter(v2);
  v20 = v19;

  if (v20)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_21DC08D00;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = sub_21D17A884();
    *(v21 + 32) = v18;
    *(v21 + 40) = v20;
    v18 = sub_21DBFA13C();
  }

  return v18;
}

double sub_21D6D1380(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
    sub_21DBF8E0C();
  }

  return result;
}

double sub_21D6D1394(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_21D6D1498(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.LinkAttachment(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D6D14FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListReminderCellAccessibilityElement.AccessibilityHints.ActionsRotor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersListReminderCellAccessibilityElement.AccessibilityHints.ActionsRotor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_21D6D163C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TTRIReminderCellQuickBarTimeInteractor();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  v6 = type metadata accessor for TTRIReminderCellQuickBarTimeRouter();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25[3] = v6;
  v25[4] = &off_282ECD170;
  v25[0] = v7;
  type metadata accessor for TTRIReminderCellQuickBarTimePresenter(0);
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v25, v6);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = *v12;
  v15 = (v8 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarTimePresenter_router);
  v15[3] = v6;
  v15[4] = &off_282ECD170;
  *v15 = v14;
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 40) = 0;
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarTimePresenter_dateComponents;
  v17 = sub_21DBF509C();
  (*(*(v17 - 8) + 56))(v8 + v16, 1, 1, v17);
  v18 = (v8 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarTimePresenter_interactor);
  *v18 = v5;
  v18[1] = &off_282ECD168;

  __swift_destroy_boxed_opaque_existential_0(v25);
  v19 = type metadata accessor for TTRIReminderCellQuickBarTimeViewController(0);
  v20 = objc_allocWithZone(v19);

  v22 = sub_21D6D18E4(v21, v20);

  *(v5 + 24) = &off_282ECD198;
  swift_unknownObjectWeakAssign();
  *(v8 + 24) = sub_21D6D1ECC();
  swift_unknownObjectWeakAssign();
  *(v8 + 40) = a3;
  swift_unknownObjectWeakAssign();
  a1[3] = v19;
  a1[4] = &off_282ECD220;

  *a1 = v22;
  return v8;
}

void *sub_21D6D18E4(void *a1, void *a2)
{
  v41[0] = sub_21DBFB7EC();
  v4 = *(v41[0] - 1);
  MEMORY[0x28223BE20](v41[0]);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBFB95C();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v41 - v11;
  v13 = off_282ECD1B8;

  v14 = sub_21DBFA12C();
  v15 = [objc_opt_self() systemImageNamed_];

  if (qword_27CE57478 != -1)
  {
    swift_once();
  }

  v41[2] = *algn_27CE66FE8;
  v41[3] = qword_27CE66FE0;
  if (qword_27CE57480 != -1)
  {
    swift_once();
  }

  v41[4] = *algn_27CE66FF8;
  v41[5] = qword_27CE66FF0;
  v16 = MEMORY[0x277D85000];
  v17 = (a2 + *((*MEMORY[0x277D85000] & *a2) + 0x68));
  *v17 = a1;
  v17[1] = v13;
  *(a2 + *((*v16 & *a2) + 0x70)) = 1148846080;
  v18 = (a2 + *((*v16 & *a2) + 0x60));
  *v18 = 0;
  v18[1] = 0;

  sub_21DBFB8EC();
  v19 = [objc_opt_self() quaternarySystemFillColor];
  v41[1] = a1;
  v20 = sub_21DBFB79C();
  sub_21DBF883C();
  v20(v45, 0);
  (*(v4 + 104))(v6, *MEMORY[0x277D74FD8], v41[0]);
  sub_21DBFB7FC();
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v21 = sub_21D900614(7);
  v22 = [objc_opt_self() configurationWithFont:v21 scale:2];

  sub_21DBFB78C();
  v41[0] = v15;
  sub_21DBFB8FC();
  sub_21DBFB80C();
  sub_21DBFB87C();
  type metadata accessor for TTRIReminderCellQuickBarPopoverAnchoringButton();
  v23 = v42;
  (*(v42 + 16))(v9, v12, v43);
  v24 = sub_21DBFB96C();
  v25 = MEMORY[0x277D85000];
  *(a2 + *((*MEMORY[0x277D85000] & *a2) + 0x78)) = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE601E0, "rw\n");
  v44.receiver = a2;
  v44.super_class = v26;
  v27 = objc_msgSendSuper2(&v44, sel_init);
  v28 = *((*v25 & *v27) + 0x78);
  v29 = *(v27 + v28);
  v30 = v27;
  v31 = v29;
  sub_21D5D8F60();

  [*(v27 + v28) setShowsMenuAsPrimaryAction_];
  v32 = *(v27 + v28);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = v32;

  v35 = _sSo6UIMenuC15RemindersUICoreE12ttr_uncached7options_ABSo0A7OptionsV_ABSgyctFZ_0(0, sub_21D1AA09C, v33);

  [v34 setMenu_];

  [*(v27 + v28) setPreferredMenuElementOrder_];
  v36 = *(v27 + v28);
  v37 = sub_21DBFA12C();
  [v36 setAccessibilityLabel_];

  v38 = *(v27 + v28);
  v39 = sub_21DBFA12C();
  [v38 setAccessibilityHint_];

  (*(v23 + 8))(v12, v43);
  return v30;
}

unint64_t sub_21D6D1ECC()
{
  result = qword_27CE601D8;
  if (!qword_27CE601D8)
  {
    v3 = type metadata accessor for TTRIReminderCellQuickBarTimeViewController(255);
    result = swift_getWitnessTable(aU_1, v3, v0, v1);
    atomic_store(result, &qword_27CE601D8);
  }

  return result;
}

uint64_t sub_21D6D1F6C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v2 - 8);
  v67 = &v62 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0, &unk_21DC18C20);
  MEMORY[0x28223BE20](v4 - 8);
  v66 = &v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v6 - 8);
  v77 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = &v62 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  v13 = sub_21DBF509C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21DBFA12C();
  v18 = objc_opt_self();
  v19 = &off_278331000;
  v80 = [v18 systemImageNamed_];

  v20 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarTimePresenter_dateComponents;
  swift_beginAccess();
  v21 = *(v14 + 48);
  v81 = 1;
  v22 = v21(v1 + v20, 1, v13);
  v79 = v14 + 48;
  if (v22)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_21DBF4F5C();
    v81 = v23;
  }

  sub_21D1A91F8(v1 + v20, v12);
  swift_endAccess();
  if (v21(v12, 1, v13) == 1)
  {
    sub_21D0CF7E0(v12, &qword_27CE58D60, &unk_21DC0A690);
    v68 = 0;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v24 = sub_21DBF4FCC();
    if ((v25 & 1) != 0 || !v24) && ((v26 = sub_21DBF4FEC(), (v27) || !v26))
    {
      v28 = sub_21DBF4DEC();
      v30 = v29;
      (*(v14 + 8))(v16, v13);
      v31 = (v30 & 1) != 0 || v28 == 0;
      v68 = v31;
    }

    else
    {
      (*(v14 + 8))(v16, v13);
      v68 = 0;
    }
  }

  v32 = off_27CE601F0;
  v33 = *(off_27CE601F0 + 2);
  v34 = MEMORY[0x277D84F90];
  v83 = v1;
  if (v33)
  {
    v74 = v21;
    v62 = v18;
    v84 = MEMORY[0x277D84F90];
    sub_21DBF8E0C();
    sub_21DBFC01C();
    v72 = sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
    v78 = 0;
    v65 = (v14 + 32);
    v64 = v68;
    v70 = (v14 + 56);
    v71 = (v14 + 16);
    v35 = 32;
    v36 = v81;
    v75 = v20;
    v73 = v32;
    while (1)
    {
      v42 = *&v32[v35];
      v82 = swift_allocBox();
      v44 = v43;
      v45 = v76;
      sub_21D1A91F8(v1 + v20, v76);
      v46 = v74;
      if (v74(v45, 1, v13) == 1)
      {
        v47 = sub_21DBF5A2C();
        v48 = *(*(v47 - 8) + 56);
        v69 = v42;
        v48(v66, 1, 1, v47);
        v49 = sub_21DBF5C4C();
        (*(*(v49 - 8) + 56))(v67, 1, 1, v49);
        v42 = v69;
        sub_21DBF504C();
        if (v46(v45, 1, v13) != 1)
        {
          sub_21D0CF7E0(v45, &qword_27CE58D60, &unk_21DC0A690);
        }
      }

      else
      {
        (*v65)(v44, v45, v13);
      }

      sub_21DBFB39C();
      sub_21DBF4F6C();
      sub_21DBF4FDC();
      sub_21DBF4FFC();
      sub_21DBF4DFC();
      v50 = sub_21DBF4F5C();
      if (v36)
      {
        if ((v51 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else if ((v51 & 1) != 0 || v63 != v50)
      {
        goto LABEL_18;
      }

      v78 |= v68;
LABEL_18:
      v37 = v77;
      (*v71)(v77, v44, v13);
      (*v70)(v37, 0, 1, v13);
      sub_21D6D3434(v37, 1);
      sub_21D0CF7E0(v37, &qword_27CE58D60, &unk_21DC0A690);
      _s15RemindersUICore21TTRLocalizableStringsO14InCellQuickBarO9timeOfDayySSSo016REMLocalizedTimejK0VFZ_0(v42);
      v38 = swift_allocObject();
      swift_weakInit();
      v39 = swift_allocObject();
      v40 = v82;
      *(v39 + 16) = v38;
      *(v39 + 24) = v40;
      v41 = v80;
      v1 = v83;
      sub_21DBFB77C();
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v35 += 8;
      --v33;
      v36 = v81;
      v20 = v75;
      v32 = v73;
      if (!v33)
      {

        v34 = v84;
        v18 = v62;
        v19 = &off_278331000;
        break;
      }
    }
  }

  v84 = v34;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v52 = sub_21DBFA12C();
  v53 = [v18 v19[482]];

  sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
  swift_allocObject();
  swift_weakInit();
  v54 = sub_21DBFB77C();
  MEMORY[0x223D42D80]();
  if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21DBFA63C();
  }

  sub_21DBFA6CC();
  v55 = v84;
  sub_21DBF516C();
  swift_allocObject();
  swift_weakInit();
  v56 = sub_21DBFB77C();
  sub_21D0D8CF0(0, &qword_280D0C1F0, 0x277D75710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_21DC09CF0;
  *(v57 + 32) = v56;
  v58 = v56;
  v59 = sub_21DBFB58C();
  if (v55 >> 62 && (result = sub_21DBFBD7C(), result < 0))
  {
    __break(1u);
  }

  else
  {
    sub_21DBD1730(0, 0, v59);
    v60 = sub_21DBFB58C();

    return v60;
  }

  return result;
}

uint64_t sub_21D6D2B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for TTRDateChangeType(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_21DBF509C();
  v7 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    (*(*(v6 - 8) + 16))(v5, v7, v6);
    swift_storeEnumTagMultiPayload();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;

      sub_21D1A9270(v5, v10);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return sub_21D1A94E8(v5);
  }

  return result;
}

void sub_21D6D2CD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      v6 = (*(*(v4 + 8) + 40))(ObjectType);
      swift_unknownObjectRelease();
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        v10 = v6;
        v11 = 0u;
        v12 = 0u;
        v13 = 1;
        v14 = 0;
        v15 = 1;

        v9 = v6;
        sub_21D6D3F04(&v10, v8);

        swift_unknownObjectRelease();
        sub_21D1A9430(&v10);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_21D6D2DF0(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for TTRDateChangeType(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19[-v6];
  v8 = sub_21DBF509C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarTimePresenter_dateComponents;
    swift_beginAccess();
    sub_21D1A91F8(v13 + v14, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      return sub_21D0CF7E0(v7, &qword_27CE58D60, &unk_21DC0A690);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      v15 = sub_21DBF4EDC();
      v16 = [v15 rem_allDayDateComponents];

      sub_21DBF4EFC();
      swift_storeEnumTagMultiPayload();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v18 = Strong;

        sub_21D1A9270(v4, v18);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_21D1A94E8(v4);
      return (*(v9 + 8))(v11, v8);
    }
  }

  return result;
}

uint64_t sub_21D6D30A0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15[-v4];
  v6 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarTimePresenter_dateComponents;
  swift_beginAccess();
  sub_21D1A9544(a1, v1 + v6);
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    sub_21D1A91F8(v1 + v6, v5);
    v9 = sub_21D6D3434(v5, 0);
    v11 = v10;
    sub_21D0CF7E0(v5, &qword_27CE58D60, &unk_21DC0A690);
    v12 = (*(*(v7 + 8) + 32))(v15, ObjectType);
    *v13 = v9;
    v13[1] = v11;

    v12(v15, 0);
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &qword_27CE58D60, &unk_21DC0A690);
}

id sub_21D6D3224()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_27CE601E8 = v0;
  return result;
}

uint64_t sub_21D6D3288()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarTimePresenter_dateComponents, &qword_27CE58D60, &unk_21DC0A690);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarTimePresenter_router));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIReminderCellQuickBarTimePresenter(uint64_t a1)
{
  result = qword_27CE60208;
  if (!qword_27CE60208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D6D3380(uint64_t a1)
{
  sub_21D1A919C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21D6D3434(uint64_t a1, int a2)
{
  v93 = a2;
  v3 = sub_21DBF5C4C();
  v97 = *(v3 - 8);
  v98 = v3;
  MEMORY[0x28223BE20](v3);
  v89 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v78 - v6;
  v8 = sub_21DBF604C();
  v95 = *(v8 - 8);
  v96 = v8;
  MEMORY[0x28223BE20](v8);
  v94 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v10 - 8);
  v92 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v78 - v13;
  v99 = sub_21DBF5A2C();
  v15 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v18 - 8);
  v91 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v78 - v21;
  v23 = sub_21DBF563C();
  v101 = *(v23 - 8);
  v102 = v23;
  MEMORY[0x28223BE20](v23);
  v90 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v100 = &v78 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v78 - v28;
  v30 = sub_21DBF509C();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D1A91F8(a1, v29);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    v34 = &qword_27CE58D60;
    v35 = &unk_21DC0A690;
    v36 = v29;
LABEL_3:
    sub_21D0CF7E0(v36, v34, v35);
    return 0;
  }

  (*(v31 + 32))(v33, v29, v30);
  v37 = sub_21DBF4EDC();
  v38 = [v37 rem_isAllDayDateComponents];

  if (v38)
  {
    (*(v31 + 8))(v33, v30);
    return 0;
  }

  v87 = objc_opt_self();
  v40 = [v87 currentCalendar];
  sub_21DBF596C();

  sub_21DBF597C();
  v41 = *(v15 + 8);
  v88 = v15 + 8;
  v86 = v41;
  v41(v17, v99);
  v42 = v101;
  v43 = v102;
  v44 = v101 + 48;
  v85 = *(v101 + 48);
  if (v85(v22, 1, v102) == 1)
  {
    (*(v31 + 8))(v33, v30);
    v34 = &qword_27CE58D68;
    v35 = &unk_21DC0C060;
    v36 = v22;
    goto LABEL_3;
  }

  v82 = v7;
  v45 = *(v42 + 32);
  v80 = v42 + 32;
  v79 = v45;
  v45(v100, v22, v43);
  if (qword_27CE56BF0 != -1)
  {
    swift_once();
  }

  v46 = qword_27CE601E8;
  sub_21DBF507C();
  v47 = v97;
  v48 = v98;
  v49 = *(v97 + 48);
  v84 = v97 + 48;
  v83 = v49;
  v50 = v49(v14, 1, v98);
  v81 = v44;
  if (v50 == 1)
  {
    v51 = 0;
  }

  else
  {
    v51 = sub_21DBF5C0C();
    (*(v47 + 8))(v14, v48);
  }

  [v46 setTimeZone_];

  v52 = qword_27CE601E8;
  v53 = v100;
  v54 = sub_21DBF55BC();
  v55 = [v52 stringFromDate_];

  v56 = sub_21DBFA16C();
  v58 = v57;

  v105 = v56;
  v106 = v58;
  v59 = v94;
  v60 = v95;
  v61 = v96;
  (*(v95 + 104))(v94, *MEMORY[0x277D44DC0], v96);
  LOBYTE(v56) = sub_21DBF603C();
  (*(v60 + 8))(v59, v61);
  if ((v56 & 1) == 0 || (v93 & 1) == 0)
  {
    (*(v101 + 8))(v53, v102);
LABEL_19:
    (*(v31 + 8))(v33, v30);
    return v105;
  }

  v62 = v92;
  sub_21DBF507C();
  v63 = v98;
  if (v83(v62, 1, v98) != 1)
  {
    v64 = v97;
    v65 = v82;
    (*(v97 + 32))(v82, v62, v63);
    v66 = [v87 currentCalendar];
    sub_21DBF596C();

    v67 = v91;
    sub_21DBF597C();
    v86(v17, v99);
    v68 = v102;
    if (v85(v67, 1, v102) == 1)
    {
      (*(v64 + 8))(v65, v63);
      (*(v101 + 8))(v100, v68);
      (*(v31 + 8))(v33, v30);
      sub_21D0CF7E0(v67, &qword_27CE58D68, &unk_21DC0C060);
      return v105;
    }

    v69 = v90;
    v79(v90, v67, v68);
    v70 = v68;
    v71 = sub_21DBF5BDC();
    if (v72)
    {
      v73 = v72;
      v99 = v71;
      v74 = [objc_opt_self() defaultTimeZone];
      v75 = v89;
      sub_21DBF5C2C();

      sub_21D5B60BC();
      LOBYTE(v74) = sub_21DBFA10C();
      v76 = *(v64 + 8);
      v76(v75, v63);
      if ((v74 & 1) == 0)
      {
        v103 = 32;
        v104 = 0xE100000000000000;
        MEMORY[0x223D42AA0](v99, v73);

        MEMORY[0x223D42AA0](v103, v104);
      }

      v70 = v102;
      v77 = *(v101 + 8);
      v77(v90, v102);
      v76(v65, v63);
    }

    else
    {
      v77 = *(v101 + 8);
      v77(v69, v70);
      (*(v64 + 8))(v65, v63);
    }

    v77(v100, v70);
    goto LABEL_19;
  }

  (*(v101 + 8))(v53, v102);
  (*(v31 + 8))(v33, v30);
  sub_21D0CF7E0(v62, &unk_27CE60DB0, qword_21DC0BF70);
  return v105;
}

void sub_21D6D3F04(_OWORD *a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_quickBarDelegate);
  swift_beginAccess();
  v4 = v3[3];
  if (v4)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v3, v4);
    v6 = *v5;
    v7 = *v5 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      v10 = a1[1];
      v11[0] = *a1;
      v11[1] = v10;
      v12[0] = a1[2];
      *(v12 + 9) = *(a1 + 41);
      (*(v8 + 88))(v6, v11, ObjectType, v8);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t type metadata accessor for TTRIReminderCellQuickBarTimeViewController(uint64_t a1)
{
  result = qword_27CE60218;
  if (!qword_27CE60218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21D6D4044(uint64_t a1)
{
  result = sub_21D6D406C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21D6D406C()
{
  result = qword_27CE60228;
  if (!qword_27CE60228)
  {
    v3 = type metadata accessor for TTRIReminderCellQuickBarTimeViewController(255);
    result = swift_getWitnessTable(byte_21DC2AFE8, v3, v0, v1);
    atomic_store(result, &qword_27CE60228);
  }

  return result;
}

void sub_21D6D40C4(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_contact);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_contact) = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v7 = v3;
    goto LABEL_8;
  }

  v7 = v3;
  if (!v3)
  {
    a1 = a1;
    goto LABEL_8;
  }

  sub_21D0D8CF0(0, &qword_280D0C1A0, 0x277CBDA58);
  a1 = a1;
  v4 = v7;
  v5 = sub_21DBFB63C();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    sub_21D6D4234();

    v6 = v7;
    goto LABEL_9;
  }

  v6 = v4;
LABEL_9:
}

double sub_21D6D41B4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_name);
  v4 = *(v2 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_name);
  v5 = *(v2 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_name + 8);
  *v3 = a1;
  v3[1] = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == a1 && v5 == a2;
      if (v6 || (sub_21DBFC64C() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  sub_21D6D43D8();
LABEL_11:

  return result;
}

void sub_21D6D4234()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_contact;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_contact);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_avatarViewController);
    v4 = v2;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = sub_21D6D4760(v0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_21DC09CF0;
    *(v9 + 32) = v2;
    sub_21D0D8CF0(0, &qword_280D0C1A0, 0x277CBDA58);
    v10 = v2;
    v11 = v3;
    v12 = sub_21DBFA5DC();

    [v5 setContacts_];
  }

  else
  {
    v6 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_avatarViewController;
    v7 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_avatarViewController);
    if (v7)
    {
      v8 = [v7 viewIfLoaded];
    }

    else
    {
      v8 = 0;
    }

    [v8 removeFromSuperview];

    v12 = *(v0 + v6);
    *(v0 + v6) = 0;
  }

  v13 = *(v0 + v1) == 0;
  v14 = *(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_iconViewHidden);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_iconViewHidden) = v13;
  if (v13 != v14)
  {

    sub_21D6B0314();
  }
}

void sub_21D6D43D8()
{
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_name + 8))
  {
    v1 = qword_280D1BAA8;
    sub_21DBF8E0C();
    if (v1 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    sub_21D6AFAB0();
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_labelView);
    if (v2)
    {
      v3 = v2;
      v4 = sub_21DBFA12C();
      [v3 setText_];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_21D6D45FC(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_contact] = 0;
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_name];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_avatarViewController] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_21D6D4234();
    sub_21D6D43D8();
  }

  return v6;
}

id sub_21D6D46C0()
{
  sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
  v0 = sub_21DBFA5DC();
  v1 = [objc_opt_self() containerBoxViewWithArrangedSubviews_];

  [v1 setHorizontalAlignment_];
  [v1 setVerticalAlignment_];
  return v1;
}

id sub_21D6D4760(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBDBF0]) init];
  [v2 setThreeDTouchEnabled_];
  v3 = *(a1 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_avatarViewController);
  *(a1 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_avatarViewController) = v2;
  v4 = v2;

  v5 = [v4 view];
  v6 = *(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_iconView);
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_21DC09CF0;
      *(v9 + 32) = v5;
      sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
      v10 = v6;
      v11 = v5;
      v12 = sub_21DBFA5DC();

      [v8 setArrangedSubviews_];
    }
  }

  return v4;
}

void sub_21D6D48C0()
{

  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_avatarViewController);
}

double TTRIShowRemindersEditableCellScrollingTargetProviding<>.rectForScrolling(to:)(void *a1)
{
  [a1 bounds];
  [v1 convertRect:a1 fromCoordinateSpace:?];

  return TTRIShowRemindersEditableCellScrollingTargetProviding<>.expandRectForScrolling(_:)(v3, v4, v5, v6);
}

void TTRIShowRemindersEditableCellScrollingTargetProviding<>.rectForScrolling(toCaretIn:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = [a1 selectedTextRange];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 end];
    [a1 caretRectForPosition_];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v2 convertRect:a1 fromCoordinateSpace:{v9, v11, v13, v15}];
    v26 = TTRIShowRemindersEditableCellScrollingTargetProviding<>.expandRectForScrolling(_:)(v16, v17, v18, v19);
    v27 = v20;
    v25 = v21;
    v28 = v22;

    *&v24 = v25;
    *&v23 = v26;
    *(&v23 + 1) = v27;
    *(&v24 + 1) = v28;
  }

  else
  {
    v23 = 0uLL;
    v24 = 0uLL;
  }

  *a2 = v23;
  *(a2 + 16) = v24;
  *(a2 + 32) = v6 == 0;
}

double TTRIShowRemindersEditableCellScrollingTargetProviding<>.expandRectForScrolling(_:)(double a1, double a2, double a3, double a4)
{
  v23 = CGRectInset(*&a1, 0.0, -12.0);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  [v4 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;

  *&result = CGRectIntersection(*&v17, *&v10);
  return result;
}

uint64_t TTRIShowRemindersEditableCell.attachmentAndView(at:)(double a1, double a2)
{
  v5 = sub_21D6D4C90();
  if (!v5)
  {
    return 0;
  }

  v7 = v6;
  v8 = v5;
  ObjectType = swift_getObjectType();
  [v8 convertPoint:v2 fromCoordinateSpace:{a1, a2}];
  v10 = (*(v7 + 8))(ObjectType, v7);

  return v10;
}

id sub_21D6D4C90()
{
  v1 = [v0 hitTest:0 withEvent:?];
  if (v1)
  {
    while (v1 != v0)
    {
      swift_getObjectType();
      if (!swift_conformsToProtocol2())
      {
        v2 = [v1 superview];

        v1 = v2;
        if (v2)
        {
          continue;
        }
      }

      return v1;
    }

    return 0;
  }

  return v1;
}

unint64_t sub_21D6D4D4C()
{
  result = qword_27CE60248;
  if (!qword_27CE60248)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget, &type metadata for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget, v0, v1);
    atomic_store(result, &qword_27CE60248);
  }

  return result;
}

unint64_t sub_21D6D4DA4()
{
  result = qword_27CE60250;
  if (!qword_27CE60250)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRIShowRemindersEditableCellScrollingTarget, &type metadata for TTRIShowRemindersEditableCellScrollingTarget, v0, v1);
    atomic_store(result, &qword_27CE60250);
  }

  return result;
}

uint64_t sub_21D6D4E9C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE60258);
  v1 = __swift_project_value_buffer(v0, qword_27CE60258);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRTreeStorageSubtreeView.rootItemID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a1, v1 + v3, AssociatedTypeWitness);
}

uint64_t TTRTreeStorageSubtreeView.__allocating_init(upstreamTree:rootItemID:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TTRTreeStorageSubtreeView.init(upstreamTree:rootItemID:)(a1, a2);
  return v4;
}

char *TTRTreeStorageSubtreeView.init(upstreamTree:rootItemID:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v2 + 2) = a1;
  v5 = *(v4 + 104);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&v2[v5], a2, AssociatedTypeWitness);
  return v2;
}

uint64_t TTRTreeStorageSubtreeView.numberOfChildren(of:)(uint64_t a1)
{
  v3 = *(*(*(*v1 + 88) + 8) + 8);
  v31 = *(*v1 + 80);
  v32 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v29 - v18;
  v20 = *(v6 + 16);
  v33 = v21;
  v20(v14, a1, v17);
  v22 = *(v15 + 48);
  if (v22(v14, 1, AssociatedTypeWitness) == 1)
  {
    v30 = *(v6 + 8);
    v30(v14, v33);
    v34 = *(v1 + 2);
    v23 = *(*v1 + 104);
    v24 = v32;
    v29 = *(v32 + 40);
    swift_unknownObjectRetain();
    v29(&v1[v23], v31, v24);
    swift_unknownObjectRelease();
    v25 = v22(v8, 1, AssociatedTypeWitness) != 1;
    v30(v8, v33);
  }

  else
  {
    (*(v15 + 32))(v19, v14, AssociatedTypeWitness);
    v34 = *(v1 + 2);
    (*(v15 + 16))(v11, v19, AssociatedTypeWitness);
    (*(v15 + 56))(v11, 0, 1, AssociatedTypeWitness);
    v26 = v32;
    v27 = *(v32 + 24);
    swift_unknownObjectRetain();
    v25 = v27(v11, v31, v26);
    (*(v6 + 8))(v11, v33);
    swift_unknownObjectRelease();
    (*(v15 + 8))(v19, AssociatedTypeWitness);
  }

  return v25;
}

void TTRTreeStorageSubtreeView.child(_:of:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v45 = a3;
  v5 = *(*v3 + 80);
  v42 = *(*(*(*v3 + 88) + 8) + 8);
  v44 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v37 - v19;
  (*(v8 + 16))(v15, a2, v7, v18);
  v21 = *(v16 + 48);
  if (v21(v15, 1, AssociatedTypeWitness) == 1)
  {
    v22 = v42;
    v23 = *(v8 + 8);
    v39 = v8 + 8;
    v40 = v7;
    v38 = v23;
    v23(v15, v7);
    if (v43)
    {
      if (qword_27CE56BF8 != -1)
      {
        swift_once();
      }

      v29 = sub_21DBF84BC();
      __swift_project_value_buffer(v29, qword_27CE60258);
      v30 = MEMORY[0x277D84F90];
      v31 = sub_21D17716C(MEMORY[0x277D84F90]);
      v32 = sub_21D17716C(v30);
      sub_21DAEAB00("TTRTreeStorageSubtreeView: invalid index for top level", 54, 2, v31, v32);
    }

    else
    {
      v46 = v3[2];
      v24 = *(*v3 + 104);
      v25 = *(v22 + 40);
      swift_unknownObjectRetain();
      v26 = v3 + v24;
      v27 = v41;
      v25(v26, v44, v22);
      swift_unknownObjectRelease();
      if (v21(v27, 1, AssociatedTypeWitness) != 1)
      {
        (*(v16 + 32))(v45, v27, AssociatedTypeWitness);
        return;
      }

      v38(v27, v40);
      if (qword_27CE56BF8 != -1)
      {
        swift_once();
      }

      v33 = sub_21DBF84BC();
      __swift_project_value_buffer(v33, qword_27CE60258);
      v34 = MEMORY[0x277D84F90];
      v35 = sub_21D17716C(MEMORY[0x277D84F90]);
      v36 = sub_21D17716C(v34);
      sub_21DAEAB00("TTRTreeStorageSubtreeView: missing root item", 44, 2, v35, v36);
    }

    __break(1u);
  }

  else
  {
    (*(v16 + 32))(v20, v15, AssociatedTypeWitness);
    v46 = v3[2];
    (*(v16 + 16))(v12, v20, AssociatedTypeWitness);
    (*(v16 + 56))(v12, 0, 1, AssociatedTypeWitness);
    v28 = v42;
    v41 = *(v42 + 32);
    swift_unknownObjectRetain();
    (v41)(v43, v12, v44, v28);
    (*(v8 + 8))(v12, v7);
    swift_unknownObjectRelease();
    (*(v16 + 8))(v20, AssociatedTypeWitness);
  }
}

uint64_t TTRTreeStorageSubtreeView.item(withID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v43 = a2;
  v3 = *(*(*(*v2 + 88) + 8) + 8);
  v4 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_21DBFBA8C();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v42 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v35 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v12);
  v37 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v16 = v2[2];
  v44 = v35 - v17;
  v45 = v16;
  v18 = *(v3 + 40);
  v19 = v41;
  v38 = v4;
  v41 = v3;
  v18(v19, v4, v3, v15);
  v20 = *(v11 + 48);
  if (v20(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v39 + 8))(v10, v40);
LABEL_5:
    v26 = 1;
    v27 = v43;
    return (*(v11 + 56))(v27, v26, 1, AssociatedTypeWitness);
  }

  v35[0] = *(v11 + 32);
  v35[1] = v11 + 32;
  (v35[0])(v44, v10, AssociatedTypeWitness);
  v45 = v16;
  v21 = *(*v2 + 104);
  swift_unknownObjectRetain();
  v22 = v2 + v21;
  v36 = v11;
  v23 = v41;
  v24 = v42;
  v25 = v38;
  (v18)(v22, v38, v41);
  swift_unknownObjectRelease();
  if (v20(v24, 1, AssociatedTypeWitness) == 1)
  {
    v11 = v36;
    (*(v36 + 8))(v44, AssociatedTypeWitness);
    (*(v39 + 8))(v42, v40);
    goto LABEL_5;
  }

  v28 = v37;
  v29 = v35[0];
  (v35[0])(v37, v42, AssociatedTypeWitness);
  v45 = v16;
  v30 = TTRTreeContentsQueryable.contains(_:inSubtreeAtRoot:)(v44, v28, v25, v23);
  v31 = v36;
  v32 = *(v36 + 8);
  v32(v28, AssociatedTypeWitness);
  if (v30)
  {
    v33 = v43;
    v29(v43, v44, AssociatedTypeWitness);
    v27 = v33;
    v26 = 0;
  }

  else
  {
    v32(v44, AssociatedTypeWitness);
    v26 = 1;
    v27 = v43;
  }

  v11 = v31;
  return (*(v11 + 56))(v27, v26, 1, AssociatedTypeWitness);
}

uint64_t TTRTreeStorageSubtreeView.parent(of:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v23 = a1;
  v24 = a2;
  v22 = *v2;
  v3 = *(*(*(v22 + 88) + 8) + 8);
  v4 = *(v22 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  v25 = v2[2];
  (*(v3 + 48))(v23, v4, v3, v12);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v9, v6);
LABEL_6:
    v20 = 1;
    v19 = v24;
    return (*(v10 + 56))(v19, v20, 1, AssociatedTypeWitness);
  }

  v15 = *(v10 + 32);
  v15(v14, v9, AssociatedTypeWitness);
  v25 = v2;
  v16 = v22;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRTreeStorageSubtreeView<A>, v22);
  if (!TTRTreeContentsQueryable.contains(_:)(v14, v16, WitnessTable))
  {
    (*(v10 + 8))(v14, AssociatedTypeWitness);
    goto LABEL_6;
  }

  v18 = v24;
  v15(v24, v14, AssociatedTypeWitness);
  v19 = v18;
  v20 = 0;
  return (*(v10 + 56))(v19, v20, 1, AssociatedTypeWitness);
}

uint64_t TTRTreeStorageSubtreeView.convertFromImmediateUpstream(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v160 = a2;
  v153 = *v2;
  v5 = *(*(*(v153 + 88) + 8) + 8);
  v6 = *(v153 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v154 = v6;
  v155 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v150 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v128 = &v124 - v10;
  v149 = v11;
  v12 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v130 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v137 = &v124 - v13;
  v138 = v12;
  v143 = *(v12 - 8);
  MEMORY[0x28223BE20](v14);
  v129 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v141 = &v124 - v17;
  MEMORY[0x28223BE20](v18);
  v148 = &v124 - v19;
  v20 = sub_21DBFBA8C();
  v147 = swift_getTupleTypeMetadata2();
  v134 = sub_21DBFBA8C();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v146 = &v124 - v21;
  v132 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](v132);
  v131 = &v124 - v22;
  v23 = *(v20 - 8);
  MEMORY[0x28223BE20](v24);
  v127 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v136 = &v124 - v27;
  MEMORY[0x28223BE20](v28);
  v135 = &v124 - v29;
  MEMORY[0x28223BE20](v30);
  v151 = &v124 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v124 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v124 - v36;
  v38 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v39);
  v152 = &v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v124 - v42;
  v140 = AssociatedConformanceWitness;
  v45 = type metadata accessor for TTRDerivedTreeLocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v44);
  MEMORY[0x28223BE20](v45);
  v126 = &v124 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v47);
  v157 = &v124 - v49;
  v158 = v50;
  v51 = *(v50 + 16);
  v159 = v52;
  v51(v48);
  v53 = *(v23 + 16);
  v139 = a1;
  v144 = v53;
  v145 = v23 + 16;
  v53(v37, a1, v20);
  v161 = *(v38 + 48);
  v54 = v161(v37, 1, AssociatedTypeWitness);
  v156 = v23;
  if (v54 == 1)
  {
    (*(v23 + 8))(v37, v20);
    v55 = AssociatedTypeWitness;
    goto LABEL_6;
  }

  (*(v38 + 32))(v43, v37, AssociatedTypeWitness);
  v162 = v3;
  v56 = v153;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRTreeStorageSubtreeView<A>, v153);
  v58 = TTRTreeContentsQueryable.contains(_:)(v43, v56, WitnessTable);
  (*(v38 + 8))(v43, AssociatedTypeWitness);
  v55 = AssociatedTypeWitness;
  if (!v58)
  {
LABEL_6:
    v153 = v20;
    v66 = v3[2];
    v162 = v66;
    v67 = *(*v3 + 104);
    v68 = v155;
    v69 = *(v155 + 40);
    swift_unknownObjectRetain();
    v70 = v3 + v67;
    v71 = v154;
    v69(v70, v154, v68);
    swift_unknownObjectRelease();
    if (v161(v34, 1, v55) == 1)
    {
      v59 = v158;
      v60 = v159;
      (*(v158 + 8))(v157, v159);
      (*(v156 + 8))(v34, v153);
LABEL_23:
      v65 = 1;
      v64 = v160;
      return (*(v59 + 56))(v64, v65, 1, v60);
    }

    v72 = v68;
    v73 = v152;
    (*(v38 + 32))(v152, v34, v55);
    v162 = v66;
    v74 = v146;
    TTRTreeContentsQueryable.parentAndChildIndex(for:)(v73, v71, v72, v146);
    v75 = v147;
    v76 = (*(*(v147 - 8) + 48))(v74, 1, v147);
    v77 = v153;
    if (v76 == 1)
    {
      (*(v133 + 8))(v74, v134);
      (*(v38 + 8))(v73, v55);
      v59 = v158;
      v60 = v159;
      (*(v158 + 8))(v157, v159);
      goto LABEL_23;
    }

    v125 = v38;
    v78 = *(v74 + *(v75 + 48));
    v79 = v132;
    v80 = *(v132 + 48);
    v81 = v156;
    v82 = v74;
    v83 = *(v156 + 32);
    v84 = v131;
    v83(v131, v82, v153);
    *&v84[v80] = v78;
    v155 = *&v84[*(v79 + 48)];
    v83(v151, v84, v77);
    v85 = v135;
    v144(v135, v139, v77);
    v86 = 1;
    if (v161(v85, 1, v55) == 1)
    {
      v87 = v81;
      v88 = v77;
      v89 = v148;
      v90 = v136;
      v91 = v125;
    }

    else
    {
      v89 = v148;
      (*(v140 + 24))(v55);
      v86 = 0;
      v91 = v125;
      v87 = v125;
      v88 = v55;
      v90 = v136;
    }

    (*(v87 + 8))(v85, v88);
    v92 = *(v150 + 56);
    v93 = 1;
    v92(v89, v86, 1, v149);
    v144(v90, v151, v77);
    v94 = v161(v90, 1, v55);
    v124 = v55;
    if (v94 == 1)
    {
      v95 = v156;
      v96 = v77;
      v97 = v143;
      v98 = v141;
    }

    else
    {
      v98 = v141;
      (*(v140 + 24))(v55);
      v93 = 0;
      v95 = v91;
      v96 = v55;
      v97 = v143;
    }

    (*(v95 + 8))(v90, v96);
    v99 = v149;
    v92(v98, v93, 1, v149);
    v100 = *(TupleTypeMetadata2 + 48);
    v101 = *(v97 + 16);
    v102 = v137;
    v103 = v138;
    v101(v137, v89, v138);
    v101(&v102[v100], v98, v103);
    v104 = *(v150 + 48);
    if (v104(v102, 1, v99) == 1)
    {
      v105 = *(v97 + 8);
      v105(v98, v103);
      v105(v148, v103);
      v106 = v104(&v102[v100], 1, v99);
      v107 = v153;
      v108 = v102;
      v60 = v159;
      v62 = v157;
      if (v106 == 1)
      {
        v105(v108, v103);
LABEL_26:
        v118 = v107;
        v119 = v160;
        v120 = v125;
        v121 = v124;
        if (*(v139 + *(v60 + 36)) != v155)
        {
          (*(v156 + 8))(v151, v118);
          (*(v120 + 8))(v152, v121);
          v59 = v158;
          (*(v158 + 8))(v62, v60);
          v65 = 1;
          v64 = v119;
          return (*(v59 + 56))(v64, v65, 1, v60);
        }

        v122 = v127;
        (*(v125 + 56))(v127, 1, 1, v124);
        v123 = v126;
        TTRDerivedTreeLocation.init(parent:index:)(v122, 0, v121, v140, v126);
        (*(v156 + 8))(v151, v118);
        (*(v120 + 8))(v152, v121);
        v59 = v158;
        (*(v158 + 8))(v62, v60);
        v61 = *(v59 + 32);
        v61(v62, v123, v60);
        v63 = v119;
        goto LABEL_5;
      }
    }

    else
    {
      v109 = v129;
      v101(v129, v102, v103);
      v110 = v104(&v102[v100], 1, v99);
      v107 = v153;
      v108 = v102;
      if (v110 != 1)
      {
        v113 = v150;
        v114 = v128;
        (*(v150 + 32))(v128, &v108[v100], v99);
        swift_getAssociatedConformanceWitness();
        v115 = sub_21DBFA10C();
        v116 = *(v113 + 8);
        v116(v114, v99);
        v117 = *(v143 + 8);
        v117(v141, v103);
        v117(v148, v103);
        v116(v109, v99);
        v117(v108, v103);
        v60 = v159;
        v62 = v157;
        if (v115)
        {
          goto LABEL_26;
        }

LABEL_22:
        (*(v156 + 8))(v151, v107);
        (*(v125 + 8))(v152, v124);
        v59 = v158;
        (*(v158 + 8))(v62, v60);
        goto LABEL_23;
      }

      v111 = *(v143 + 8);
      v111(v141, v103);
      v111(v148, v103);
      (*(v150 + 8))(v109, v99);
      v60 = v159;
      v62 = v157;
    }

    (*(v130 + 8))(v108, TupleTypeMetadata2);
    goto LABEL_22;
  }

  v59 = v158;
  v60 = v159;
  v61 = *(v158 + 32);
  v62 = v157;
  v63 = v160;
LABEL_5:
  v61(v63, v62, v60);
  v64 = v63;
  v65 = 0;
  return (*(v59 + 56))(v64, v65, 1, v60);
}

void TTRTreeStorageSubtreeView.convertToImmediateUpstream(_:for:)(char *a1, void (*a2)(char *, uint64_t))
{
  v94 = a2;
  v4 = *(*(*(*v2 + 88) + 8) + 8);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v84 = sub_21DBFBA8C();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v86 = v68 - v8;
  v81 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](v81);
  v80 = v68 - v9;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v89 = v68 - v12;
  v13 = *(v7 - 8);
  MEMORY[0x28223BE20](v14);
  v77 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v83 = v68 - v17;
  MEMORY[0x28223BE20](v18);
  v90 = v68 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v68 - v21;
  v92 = v5;
  v93 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = type metadata accessor for TTRDerivedTreeLocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v23);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v74 = v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = v68 - v29;
  v78 = *v94;
  (*(v25 + 16))(v68 - v29, a1, v24, v28);
  v31 = *(v13 + 16);
  v85 = a1;
  v75 = v31;
  v76 = v13 + 16;
  v31(v22, a1, v7);
  v88 = v10;
  v32 = *(v10 + 48);
  LODWORD(v4) = v32(v22, 1, AssociatedTypeWitness);
  v79 = v13;
  v34 = *(v13 + 8);
  v33 = v13 + 8;
  v94 = v34;
  v34(v22, v7);
  if (v4 == 1)
  {
    v68[1] = v33;
    v70 = v25;
    v69 = v30;
    v71 = v24;
    v72 = v7;
    v35 = v91;
    v36 = *(v91 + 2);
    v95 = v36;
    v37 = *(*v91 + 104);
    v38 = v93;
    v39 = AssociatedTypeWitness;
    v40 = *(v93 + 40);
    swift_unknownObjectRetain();
    v41 = v90;
    v40(&v35[v37], v92, v38);
    v42 = v39;
    swift_unknownObjectRelease();
    if (v32(v41, 1, v39) == 1)
    {
      v94(v41, v72);
LABEL_6:
      v49 = v71;
      v50 = v70;
      sub_21DBFA68C();
      (*(v50 + 8))(v69, v49);
      return;
    }

    v44 = v88;
    v43 = v89;
    (*(v88 + 32))(v89, v41, v39);
    v95 = v36;
    v45 = v86;
    TTRTreeContentsQueryable.parentAndChildIndex(for:)(v43, v92, v93, v86);
    v46 = TupleTypeMetadata2;
    v47 = (*(*(TupleTypeMetadata2 - 8) + 48))(v45, 1, TupleTypeMetadata2);
    v48 = v72;
    if (v47 == 1)
    {
      (*(v44 + 8))(v43, v39);
      (*(v82 + 8))(v45, v84);
      goto LABEL_6;
    }

    v51 = *(v45 + *(v46 + 48));
    v53 = v80;
    v52 = v81;
    v54 = *(v81 + 48);
    v55 = *(v79 + 32);
    v55(v80, v45, v72);
    *&v53[v54] = v51;
    v56 = *&v53[*(v52 + 48)];
    v57 = v83;
    v55(v83, v53, v48);
    v24 = v71;
    if (v78)
    {
      v58 = v77;
      v75(v77, v57, v48);
      v59 = *&v85[*(v24 + 36)];
      v25 = v70;
      if (__OFADD__(v56, v59))
      {
        __break(1u);
        return;
      }

      v60 = v74;
      TTRDerivedTreeLocation.init(parent:index:)(v58, v56 + v59, v42, AssociatedConformanceWitness, v74);
      v94(v57, v48);
      (*(v44 + 8))(v89, v42);
    }

    else
    {
      v61 = (v44 + 8);
      v25 = v70;
      v62 = (v70 + 8);
      if (*&v85[*(v71 + 36)])
      {
        sub_21DBFA68C();
        v94(v57, v48);
        (*v61)(v89, v42);
        (*v62)(v69, v24);
        return;
      }

      v63 = v77;
      v75(v77, v57, v48);
      v64 = v63;
      v60 = v74;
      TTRDerivedTreeLocation.init(parent:index:)(v64, v56, v42, AssociatedConformanceWitness, v74);
      v94(v57, v48);
      (*v61)(v89, v42);
    }

    v65 = v69;
    (*(v25 + 8))(v69, v24);
    (*(v25 + 32))(v65, v60, v24);
    v30 = v65;
  }

  sub_21DBFC5CC();
  swift_allocObject();
  v66 = sub_21DBFA60C();
  (*(v25 + 32))(v67, v30, v24);
  sub_21D23C8B4(v66, v24);
}

char *TTRTreeStorageSubtreeView.deinit()
{
  swift_unknownObjectRelease();
  v1 = *(*v0 + 104);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  return v0;
}

uint64_t TTRTreeStorageSubtreeView.__deallocating_deinit()
{
  TTRTreeStorageSubtreeView.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D6D7CDC(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for TTRTreeStorageSubtreeView<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D6D7D18(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for TTRTreeStorageSubtreeView<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D6D7D54(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

BOOL static TTRSnapshotApplicationOption.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

double TTRSnapshotApplicationOption.hash(into:)()
{
  if (*v0 == 2)
  {
    MEMORY[0x223D44FA0](1);
  }

  else
  {
    MEMORY[0x223D44FA0](0);
    sub_21DBFC7FC();
  }

  return result;
}

uint64_t TTRSnapshotApplicationOption.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  if (v1 == 2)
  {
    MEMORY[0x223D44FA0](1);
  }

  else
  {
    MEMORY[0x223D44FA0](0);
    sub_21DBFC7FC();
  }

  return sub_21DBFC82C();
}

uint64_t sub_21D6D7FA4()
{
  v1 = *v0;
  sub_21DBFC7DC();
  if (v1 == 2)
  {
    MEMORY[0x223D44FA0](1);
  }

  else
  {
    MEMORY[0x223D44FA0](0);
    sub_21DBFC7FC();
  }

  return sub_21DBFC82C();
}

double sub_21D6D800C()
{
  if (*v0 == 2)
  {
    MEMORY[0x223D44FA0](1);
  }

  else
  {
    MEMORY[0x223D44FA0](0);
    sub_21DBFC7FC();
  }

  return result;
}

uint64_t sub_21D6D8058(uint64_t a1)
{
  v2 = *v1;
  sub_21DBFC7DC();
  if (v2 == 2)
  {
    MEMORY[0x223D44FA0](1);
  }

  else
  {
    MEMORY[0x223D44FA0](0);
    sub_21DBFC7FC();
  }

  return sub_21DBFC82C();
}

unint64_t sub_21D6D80C0()
{
  result = qword_27CE602F0;
  if (!qword_27CE602F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRSnapshotApplicationOption, &type metadata for TTRSnapshotApplicationOption, v0, v1);
    atomic_store(result, &qword_27CE602F0);
  }

  return result;
}

double ceil(_:toScale:)(double a1, double a2)
{
  if (a2 == 1.0)
  {
    return ceil(a1);
  }

  else
  {
    return ceil(a1 * a2) / a2;
  }
}

double round(_:toScale:)(double a1, double a2)
{
  if (a2 == 1.0)
  {
    return round(a1);
  }

  else
  {
    return round(a1 * a2) / a2;
  }
}

void adjust(_:toScale:with:)(void (*a1)(double), double a2, double a3)
{
  if (a3 == 1.0)
  {
    a1(a2);
  }

  else
  {
    (a1)(a2 * a3);
  }
}

double floor(_:toScale:)(double a1, double a2)
{
  if (a2 == 1.0)
  {
    return floor(a1);
  }

  else
  {
    return floor(a1 * a2) / a2;
  }
}

uint64_t TTRIViewControllerDismissalState.description.getter()
{
  if (*v0)
  {
    return 0x6574736575716572;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t TTRIViewControllerDismissalState.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D6D82C4()
{
  result = qword_27CE602F8;
  if (!qword_27CE602F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRIViewControllerDismissalState, &type metadata for TTRIViewControllerDismissalState, v0, v1);
    atomic_store(result, &qword_27CE602F8);
  }

  return result;
}

uint64_t sub_21D6D8318()
{
  if (*v0)
  {
    return 0x6574736575716572;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void (*TTRICollectionViewPresentationTreeManagementViewCapability.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t TTRICollectionViewPresentationTreeManagementViewCapability.__allocating_init(diffableDataSource:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TTRICollectionViewPresentationTreeManagementViewCapability.init(diffableDataSource:)(a1);
  return v2;
}

double sub_21D6D847C(uint64_t a1)
{
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v1 = sub_21DBFAB4C();

  if ((v1 & 1) == 0)
  {
    v2 = sub_21DBFABAC();
    sub_21DBF8E0C();
    swift_getWitnessTable(MEMORY[0x277D83B68], v2);
    sub_21DBFAB8C();
    swift_beginAccess();
    sub_21DBFAB9C();
    swift_endAccess();
  }

  if ((sub_21DBFAB4C() & 1) == 0)
  {
    sub_21D6D87B8(a1);
  }

  return result;
}

Swift::Void __swiftcall TTRICollectionViewPresentationTreeManagementViewCapability.processPendingReminderViewModelUpdates()()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = sub_21DBFA68C();
  if (sub_21DBFA6DC())
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v3 = sub_21D495A08(v1, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
  }

  sub_21D6D847C(v3);
}

void sub_21D6D87B8(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_beginAccess();
  if (v1[4])
  {
    v9 = a1;
    MEMORY[0x28223BE20](v4);
    v5 = *(v3 + 96);
    v8[1] = *(v3 + 80);
    v8[2] = v5;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v6 = sub_21DBFABAC();

    WitnessTable = swift_getWitnessTable(MEMORY[0x277D83B68], v6);
    TTRObservableViewModelCollection.updateAndPublish<A>(forItemIDs:using:)(&v9, sub_21D6D8B1C, v8, v6, WitnessTable);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21D6D8970@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X5>, void *a4@<X8>)
{
  v6 = type metadata accessor for TTRCollectionViewItemObservedViewModel(255, a2, a3, a2);
  v7 = sub_21DBFBA8C();
  (*(*(v7 - 8) + 16))(a4, a1, v7);
  result = (*(*(v6 - 8) + 48))(a4, 1, v6);
  if (!result)
  {
    ++*a4;
  }

  return result;
}

uint64_t TTRICollectionViewPresentationTreeManagementViewCapability.deinit()
{
  sub_21D157444(v0 + 16);

  return v0;
}

uint64_t TTRICollectionViewPresentationTreeManagementViewCapability.__deallocating_deinit()
{
  TTRICollectionViewPresentationTreeManagementViewCapability.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D6D8B3C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  while (*(a2 + 32 + result) != a1)
  {
    if (v2 == ++result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_21D6D8B84(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v7 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v8 = sub_21DBFBD7C();
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x223D44740](v9, a2);
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v10 = *(a2 + 8 * v9 + 32);
    }

    v11 = v10;
    sub_21D0D8CF0(0, a3, a4);
    v12 = sub_21DBFB63C();

    if (v12)
    {
      return v9;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_21D6D8C8C(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 + 32;
  if (a1)
  {
    v5 = 0x736E6D756C6F63;
  }

  else
  {
    v5 = 1953720684;
  }

  if (a1)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  while (1)
  {
    v7 = *(v4 + v3) ? 0x736E6D756C6F63 : 1953720684;
    v8 = *(v4 + v3) ? 0xE700000000000000 : 0xE400000000000000;
    if (v7 == v5 && v8 == v6)
    {
      break;
    }

    v10 = sub_21DBFC64C();

    if (v10)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_21D6D8D9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_21DBF54CC() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_21D17A744();
  v7 = 0;
  while ((sub_21DBFA10C() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void TTRReminderEditor.update(metadata:for:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 16);
  v12 = [v11 attachmentContext];
  if (!v12)
  {
    if (qword_27CE56C00 != -1)
    {
      swift_once();
    }

    v27 = sub_21DBF84BC();
    __swift_project_value_buffer(v27, qword_27CE60300);

    v70 = sub_21DBF84AC();
    v28 = sub_21DBFAECC();

    if (os_log_type_enabled(v70, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v71 = v30;
      *v29 = 136315138;
      v31 = [v11 description];
      v32 = sub_21DBFA16C();
      v34 = v33;

      v35 = sub_21D0CDFB4(v32, v34, &v71);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_21D0C9000, v70, v28, "attempted to update metadata on a reminder that does not support attachments %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x223D46520](v30, -1, -1);
      MEMORY[0x223D46520](v29, -1, -1);
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  v69 = v7;
  v70 = v12;
  v13 = [v12 attachments];
  sub_21D0D8CF0(0, &qword_280D0C310, 0x277D445A0);
  v14 = sub_21DBFA5EC();

  v15 = sub_21D6D8B84(a2, v14, &qword_280D0C310, 0x277D445A0);
  if ((v16 & 1) == 0)
  {
    v36 = v15;
    v37 = v15 < 1;
    v38 = v15 - 1;
    if (v37)
    {
      v67 = 0;
    }

    else
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x223D44740](v38, v14);
      }

      else
      {
        if (v36 > *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v39 = *(v14 + 8 * v38 + 32);
      }

      v67 = v39;
    }

    v41 = [a2 objectID];
    v42 = [v41 entityName];

    v43 = sub_21DBFA16C();
    v45 = v44;

    ObjCClassFromMetadata = objc_opt_self();
    v47 = [ObjCClassFromMetadata cdEntityNameForSavedAttachment];
    v48 = sub_21DBFA16C();
    v50 = v49;

    v68 = v6;
    if (v43 == v48 && v45 == v50)
    {
    }

    else
    {
      v51 = sub_21DBFC64C();

      if ((v51 & 1) == 0)
      {
        sub_21D0D8CF0(0, &qword_280D17820, 0x277D448E8);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v52 = &selRef_newObjectID;
        goto LABEL_28;
      }
    }

    v52 = &selRef_newObjectIDForSavedAttachment;
LABEL_28:
    v53 = [ObjCClassFromMetadata *v52];
    v54 = [a2 accountID];
    v55 = [a2 reminderID];
    v56 = [a2 url];
    sub_21DBF546C();

    v57 = [a1 dataRepresentation];
    v58 = sub_21DBF551C();
    v60 = v59;

    v61 = objc_allocWithZone(MEMORY[0x277D448E8]);
    v62 = sub_21DBF53FC();
    v63 = sub_21DBF54FC();
    sub_21D17B8A8(v58, v60);
    v64 = [v61 initWithObjectID:v53 accountID:v54 reminderID:v55 url:v62 metadata:v63];

    (*(v69 + 8))(v10, v68);
    [v70 removeAttachment:a2];
    v65 = v67;
    [v70 insertAttachment:v64 afterAttachment:v67];

    return;
  }

  if (qword_27CE56C00 != -1)
  {
    swift_once();
  }

  v17 = sub_21DBF84BC();
  __swift_project_value_buffer(v17, qword_27CE60300);

  v18 = sub_21DBF84AC();
  v19 = sub_21DBFAECC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v71 = v21;
    *v20 = 136315138;
    v22 = [v11 description];
    v23 = sub_21DBFA16C();
    v25 = v24;

    v26 = sub_21D0CDFB4(v23, v25, &v71);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_21D0C9000, v18, v19, "attempted to update metadata on an attachment that does not exist in this reminder %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x223D46520](v21, -1, -1);
    MEMORY[0x223D46520](v20, -1, -1);

LABEL_11:
    return;
  }

LABEL_18:
  v40 = v70;
}

uint64_t sub_21D6D9584()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE60300);
  v1 = __swift_project_value_buffer(v0, qword_27CE60300);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMReminder.isSiriFoundInApps.getter()
{
  sub_21D1B2ABC();
  v1 = [v0 list];
  v2 = [v1 objectID];

  v3 = [objc_opt_self() siriFoundInAppsListID];
  v4 = sub_21DBFB63C();

  return v4 & 1;
}

uint64_t static TTRDebugMenuUtilities.objectIDContextualActions(provideObjectID:)(void (*a1)(__int128 *__return_ptr))
{
  if ([objc_opt_self() isInternalInstall])
  {
    v2 = [objc_opt_self() daemonUserDefaults];
    v3 = [v2 enableInAppDebugMenu];

    if (v3)
    {
      a1(&aBlock);
      if (v26)
      {
        sub_21D0D0FD0(&aBlock, v29);
        v4 = v30;
        v5 = v31;
        __swift_project_boxed_opaque_existential_1(v29, v30);
        v6 = (*(v5 + 8))(v4, v5);
        if (v6)
        {
          v7 = v6;
          v8 = swift_allocObject();
          *(v8 + 16) = v7;
          v9 = v7;
          v10 = sub_21DBFA12C();
          v27 = sub_21D6D9AE0;
          v28 = v8;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v25 = sub_21D6D9B28;
          v26 = &block_descriptor_81;
          v11 = _Block_copy(&aBlock);
          v12 = objc_opt_self();
          v13 = [v12 contextualActionWithStyle:0 title:v10 handler:v11];

          _Block_release(v11);

          v14 = objc_opt_self();
          v15 = [v14 systemPurpleColor];
          [v13 setBackgroundColor_];

          v16 = swift_allocObject();
          *(v16 + 16) = v9;
          v17 = v9;
          v18 = sub_21DBFA12C();
          v27 = sub_21D6D9D80;
          v28 = v16;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v25 = sub_21D6D9B28;
          v26 = &block_descriptor_6_4;
          v19 = _Block_copy(&aBlock);
          v20 = [v12 contextualActionWithStyle:0 title:v18 handler:v19];

          _Block_release(v19);

          v21 = [v14 systemPurpleColor];
          [v20 setBackgroundColor_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_21DC0AA00;
          *(v22 + 32) = v13;
          *(v22 + 40) = v20;

          __swift_destroy_boxed_opaque_existential_0(v29);
          return v22;
        }

        __swift_destroy_boxed_opaque_existential_0(v29);
      }

      else
      {
        sub_21D6D9A78(&aBlock);
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21D6D9A78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60320, &unk_21DC23948);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21D6D9B28(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_21D6D9EE4, v8);
}

uint64_t sub_21D6D9BFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *a5, void (*a6)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60398, &unk_21DC23960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 56) = sub_21D37FB1C();
  *(inited + 64) = &protocol witness table for REMObjectID;
  *(inited + 32) = a5;
  v10 = a5;
  a6(inited);
  v12 = v11;
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((inited + 32));
  if (v12)
  {
    v13 = [objc_opt_self() generalPasteboard];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC09CF0;
    v15 = sub_21DBFA12C();

    *(v14 + 32) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60390, &qword_21DC23958);
    v16 = sub_21DBFA5DC();

    [v13 setObjects_];
  }

  return a3(1);
}

void sub_21D6D9DC8(uint64_t a1, void (*a2)(uint64_t))
{
  a2(a1);
  if (v2)
  {
    v3 = [objc_opt_self() generalPasteboard];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_21DC09CF0;
    v5 = sub_21DBFA12C();

    *(v4 + 32) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60390, &qword_21DC23958);
    v6 = sub_21DBFA5DC();

    [v3 setObjects_];
  }
}

uint64_t sub_21D6D9F04()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE603A0);
  v1 = __swift_project_value_buffer(v0, qword_27CE603A0);
  if (qword_280D17A48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_21D6D9FCC()
{
  result = [objc_allocWithZone(type metadata accessor for TTRAutoCategorizationActivityMonitor()) init];
  qword_27CE603B8 = result;
  return result;
}

id static TTRAutoCategorizationActivityMonitor.shared.getter()
{
  if (qword_27CE56C10 != -1)
  {
    swift_once();
  }

  v1 = qword_27CE603B8;

  return v1;
}

id TTRAutoCategorizationActivityMonitor.currentActivity.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_currentActivity;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t TTRAutoCategorizationActivityMonitor.activityPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE603C8, &qword_21DC23970);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - v3;
  v7[1] = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_currentActivitySubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE603D8, &unk_21DC23978);
  sub_21D0D0F1C(&qword_27CE603E0, &qword_27CE603D8, &unk_21DC23978, MEMORY[0x277CBCE48]);
  sub_21D6DA5C8(&qword_27CE603E8, sub_21D6DA270, MEMORY[0x277D85380]);
  sub_21DBF93AC();
  sub_21D0D0F1C(&qword_27CE603F8, &qword_27CE603C8, &qword_21DC23970, MEMORY[0x277CBCBE0]);
  v5 = sub_21DBF920C();
  (*(v2 + 8))(v4, v1);
  return v5;
}

unint64_t sub_21D6DA270()
{
  result = qword_27CE603F0;
  if (!qword_27CE603F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE603F0);
  }

  return result;
}

Swift::Void __swiftcall TTRAutoCategorizationActivityMonitor.startMonitoringIfNeeded()()
{
  v1 = sub_21DBF9D2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF9D5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v0[OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_isMonitoring] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_isMonitoring] = 1;
    v13[1] = *&v0[OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_backgroundQueue];
    v14 = v7;
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    aBlock[4] = sub_21D6DA5A0;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_82;
    v11 = _Block_copy(aBlock);
    v12 = v0;
    sub_21DBF9D4C();
    v15 = MEMORY[0x277D84F90];
    sub_21D6DA5C8(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0, MEMORY[0x277D83970]);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v9, v4, v11);
    _Block_release(v11);
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v14);
  }
}

uint64_t sub_21D6DA5C8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21D6DA610()
{
  v1 = v0;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_backgroundQueue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2, v4);
  v8 = v7;
  v9 = sub_21DBF9DAC();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v6 = [objc_opt_self() weakSharedInstance];
  v10 = sub_21DBFA12C();
  aBlock[4] = sub_21D6DAC3C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D182340;
  aBlock[3] = &block_descriptor_10_2;
  v11 = _Block_copy(aBlock);
  v9 = [v6 syncSyncInterfacePerformerWithReason:v10 errorHandler:v11];
  _Block_release(v11);

  if (!v9)
  {

    return;
  }

  if (qword_27CE56C08 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_27CE603A0);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAEDC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_21D0C9000, v13, v14, "TTRAutoCategorizationActivityMonitor start observing auto categorization activity", v15, 2u);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  [v6 setAutoCategorizationActivityObserver_];
  [v9 observeAutoCategorizationActivityChanges];

  swift_unknownObjectRelease();
}

void sub_21D6DA8F0()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = sub_21DBF9D8C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_backgroundQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1, v3);
  v7 = v6;
  v8 = sub_21DBF9DAC();
  (*(v2 + 8))(v5, v1);
  if ((v8 & 1) == 0)
  {
    __break(1u);
  }

  v9 = OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_daemonDidLaunchToken;
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_daemonDidLaunchToken) == -1)
  {
    out_token = -1;
    v10 = *MEMORY[0x277D44CA0];
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_21D6DB03C;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0ECCF0;
    aBlock[3] = &block_descriptor_7_2;
    v12 = _Block_copy(aBlock);

    v13 = notify_register_dispatch(v10, &out_token, v7, v12);
    _Block_release(v12);
    if (!v13 && out_token != -1)
    {
      *(v0 + v9) = out_token;
    }
  }
}

id sub_21D6DAB1C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_currentActivity;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D445A8]) init];
  v4 = OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_backgroundQueue;
  sub_21DBF60DC();
  *&v1[v4] = sub_21DBF60CC();
  v1[OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_isMonitoring] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_daemonDidLaunchToken] = -1;
  v5 = OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_currentActivitySubject;
  v8 = [objc_allocWithZone(MEMORY[0x277D445A8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE603D8, &unk_21DC23978);
  swift_allocObject();
  *&v1[v5] = sub_21DBF90AC();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_21D6DAC3C(void *a1)
{
  if (qword_27CE56C08 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE603A0);
  v3 = a1;
  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAECC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_21DBFC74C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21D0C9000, oslog, v4, "Unable to get syncPerformer. {error: %s}", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

void sub_21D6DADD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_27CE56C08 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE603A0);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAEDC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v5, v6, "TTRAutoCategorizationActivityMonitor: received daemonDidLaunch notification", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }

    sub_21D6DA610();
  }
}

id TTRAutoCategorizationActivityMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void static CNContactStore.requestContactsAuthorizationIfNeeded()()
{
  if (![objc_opt_self() authorizationStatusForEntityType_])
  {
    v0 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    v1 = [v0 requestAccessForEntityType_];
  }
}

uint64_t TTREditSectionsViewModel.SectionIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTREditSectionsViewModel.ItemIdentifier.hash(into:)(uint64_t a1)
{
  if (!*v1)
  {
    return MEMORY[0x223D44FA0](0);
  }

  MEMORY[0x223D44FA0](1);
  return sub_21DBFB64C();
}

uint64_t TTREditSectionsViewModel.ItemIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  if (v1)
  {
    MEMORY[0x223D44FA0](1);
    sub_21DBFB64C();
  }

  else
  {
    MEMORY[0x223D44FA0](0);
  }

  return sub_21DBFC82C();
}

uint64_t sub_21D6DB250()
{
  v1 = *v0;
  sub_21DBFC7DC();
  if (v1)
  {
    MEMORY[0x223D44FA0](1);
    sub_21DBFB64C();
  }

  else
  {
    MEMORY[0x223D44FA0](0);
  }

  return sub_21DBFC82C();
}

uint64_t sub_21D6DB2B4(uint64_t a1)
{
  if (!*v1)
  {
    return MEMORY[0x223D44FA0](0);
  }

  MEMORY[0x223D44FA0](1);
  return sub_21DBFB64C();
}

uint64_t sub_21D6DB30C(uint64_t a1)
{
  v2 = *v1;
  sub_21DBFC7DC();
  if (v2)
  {
    MEMORY[0x223D44FA0](1);
    sub_21DBFB64C();
  }

  else
  {
    MEMORY[0x223D44FA0](0);
  }

  return sub_21DBFC82C();
}

uint64_t TTREditSectionsViewModel.SectionItem.displayName.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

void TTREditSectionsViewModel.SectionItem.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t TTREditSectionsViewModel.SectionItem.canonicalName.getter()
{
  v1 = *(v0 + 24);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTREditSectionsViewModel.SectionItem.init(sectionLite:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF56BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF6F4C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21DBF6F5C();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == *MEMORY[0x277D453E0])
  {
    (*(v9 + 96))(v11, v8);
    v14 = *v11;
    v13 = v11[1];
    v16 = v11[2];
    v15 = v11[3];
    v17 = v11[4];
LABEL_5:
    v21 = sub_21DBF6F6C();
    v22 = sub_21DBF6F8C();
    result = (*(*(v22 - 8) + 8))(a1, v22);
    *a2 = v14;
    *(a2 + 8) = v13;
    *(a2 + 16) = v16;
    *(a2 + 24) = v15;
    *(a2 + 32) = v17;
    *(a2 + 40) = v21 & 1;
    return result;
  }

  if (v12 == *MEMORY[0x277D453D8])
  {
    sub_21DBF56AC();
    v18 = objc_allocWithZone(MEMORY[0x277D44700]);
    v19 = sub_21DBF566C();
    v16 = 0xE000000000000000;
    v20 = sub_21DBFA12C();
    v14 = [v18 initWithUUID:v19 entityName:v20];

    (*(v5 + 8))(v7, v4);
    v15 = 0;
    v13 = 0;
    v17 = 0;
    goto LABEL_5;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

double TTREditSectionsViewModel.OptimisticApply.renamedSections.getter()
{
  type metadata accessor for TTREditSectionsViewModel.OptimisticApply(0);

  sub_21DBF8E0C();
  return result;
}

void TTREditSectionsViewModel.OptimisticApply.renamedSections.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTREditSectionsViewModel.OptimisticApply(0) + 20);

  *(v1 + v3) = a1;
}

BOOL TTREditSectionsViewModel.OptimisticApply.isEmpty.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478, &unk_21DC23A20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  sub_21D6DD788(v1, &v9 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480, &qword_21DC3C4A0);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21D6DD8B4(v4);
    return *(*(v1 + *(type metadata accessor for TTREditSectionsViewModel.OptimisticApply(0) + 20)) + 16) == 0;
  }

  v7 = sub_21DBF5EBC();
  (*(v6 + 8))(v4, v5);
  if (v7)
  {
    return *(*(v1 + *(type metadata accessor for TTREditSectionsViewModel.OptimisticApply(0) + 20)) + 16) == 0;
  }

  return 0;
}

uint64_t TTREditSectionsViewModel.OptimisticApply.init(sectionOrdering:renamedSections:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480, &qword_21DC3C4A0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  sub_21D6DD7F8(a1, a3);
  result = type metadata accessor for TTREditSectionsViewModel.OptimisticApply(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

BOOL TTREditSectionsViewModel.isEmpty.getter()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == 0;
}

uint64_t TTREditSectionsViewModel.__allocating_init(shouldHideEmptySections:editSectionViewModels:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:)(char a1, uint64_t a2, char a3, char a4)
{
  v4 = sub_21D6DD91C(a1, a2, a3, a4);

  return v4;
}

uint64_t TTREditSectionsViewModel.__allocating_init(shouldHideEmptySections:sections:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:)(int a1, void (**a2)(void *, uint64_t), int a3, int a4)
{
  v116 = a4;
  v115 = a3;
  v118 = a1;
  v123 = sub_21DBF56BC();
  v114 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v122 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF6F4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v121 = (&v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v120 = &v113 - v10;
  MEMORY[0x28223BE20](v11);
  v137 = &v113 - v12;
  MEMORY[0x28223BE20](v13);
  v136 = &v113 - v14;
  v15 = sub_21DBF6F8C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v133 = (&v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v132 = (&v113 - v19);
  MEMORY[0x28223BE20](v20);
  v131 = (&v113 - v21);
  MEMORY[0x28223BE20](v22);
  v130 = (&v113 - v23);
  MEMORY[0x28223BE20](v24);
  v135 = &v113 - v25;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v113 - v28;
  v30 = a2[2];
  v140 = v16;
  v141 = v6;
  v143 = v31;
  v134 = v30;
  v117 = v7;
  if (v30)
  {
    v32 = 0;
    v128 = v16 + 16;
    v127 = *MEMORY[0x277D453D8];
    v125 = v7 + 8;
    v126 = (v7 + 104);
    v124 = (v16 + 32);
    v119 = (v16 + 8);
    v142 = MEMORY[0x277D84F90];
    v129 = a2;
    v33 = v137;
    v34 = (v7 + 8);
    while (v32 < a2[2])
    {
      v139 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v138 = *(v16 + 72);
      (*(v16 + 16))(v29, a2 + v139 + v138 * v32, v15, v27);
      v35 = v136;
      v36 = v15;
      sub_21DBF6F5C();
      (*v126)(v33, v127, v6);
      sub_21D6DDC90();
      v37 = sub_21DBFA10C();
      v38 = *v34;
      (*v34)(v33, v6);
      v38(v35, v6);
      if (v37)
      {
        (*v119)(v29, v36);
        v15 = v36;
        a2 = v129;
      }

      else
      {
        v39 = *v124;
        (*v124)(v135, v29, v36);
        v40 = v142;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v144 = v40;
        if (isUniquelyReferenced_nonNull_native)
        {
          v15 = v36;
        }

        else
        {
          sub_21D18F288(0, *(v40 + 16) + 1, 1);
          v15 = v143;
          v40 = v144;
        }

        a2 = v129;
        v43 = *(v40 + 16);
        v42 = *(v40 + 24);
        v44 = v40;
        if (v43 >= v42 >> 1)
        {
          sub_21D18F288((v42 > 1), v43 + 1, 1);
          v15 = v143;
          v44 = v144;
        }

        *(v44 + 16) = v43 + 1;
        v142 = v44;
        v39((v44 + v139 + v43 * v138), v135, v15);
        v16 = v140;
        v6 = v141;
      }

      if (v134 == ++v32)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v142 = MEMORY[0x277D84F90];
LABEL_14:

  v45 = *(v142 + 16);
  v139 = v45;
  if ((v118 & 1) == 0)
  {
    v71 = v117;
    if (v45)
    {
      v144 = MEMORY[0x277D84F90];
      sub_21D18F3B8(0, v45, 0);
      v72 = v143;
      v73 = v144;
      v74 = 0;
      v137 = (v142 + ((*(v16 + 80) + 32) & ~*(v16 + 80)));
      v135 = (v71 + 88);
      v136 = (v16 + 16);
      LODWORD(v134) = *MEMORY[0x277D453E0];
      v129 = (v71 + 96);
      v130 = (v114 + 8);
      LODWORD(v128) = *MEMORY[0x277D453D8];
      v131 = (v16 + 8);
      while (v74 < *(v142 + 16))
      {
        v75 = *(v16 + 16);
        v76 = v132;
        v75(v132, &v137[*(v16 + 72) * v74], v72);
        v75(v133, v76, v72);
        v77 = v121;
        sub_21DBF6F5C();
        v78 = (*v135)(v77, v6);
        if (v78 == v134)
        {
          (*v129)(v77, v6);
          v79 = *v77;
          v80 = v77[1];
          v81 = v77[3];
          v138 = v77[2];
          v82 = v77[4];
        }

        else
        {
          if (v78 != v128)
          {
            goto LABEL_55;
          }

          v83 = v122;
          sub_21DBF56AC();
          v84 = objc_allocWithZone(MEMORY[0x277D44700]);
          v85 = sub_21DBF566C();
          v138 = 0xE000000000000000;
          v86 = sub_21DBFA12C();
          v79 = [v84 initWithUUID:v85 entityName:v86];

          (*v130)(v83, v123);
          v80 = 0;
          v81 = 0;
          v82 = 0;
        }

        v87 = v133;
        v88 = sub_21DBF6F6C();
        v89 = *v131;
        v90 = v87;
        v91 = v143;
        (*v131)(v90, v143);
        v89(v132, v91);
        v144 = v73;
        v93 = *(v73 + 16);
        v92 = *(v73 + 24);
        if (v93 >= v92 >> 1)
        {
          sub_21D18F3B8((v92 > 1), v93 + 1, 1);
          v73 = v144;
        }

        ++v74;
        *(v73 + 16) = v93 + 1;
        v94 = v73 + 48 * v93;
        *(v94 + 32) = v79;
        *(v94 + 40) = v80;
        *(v94 + 48) = v138;
        *(v94 + 56) = v81;
        *(v94 + 64) = v82;
        *(v94 + 72) = v88 & 1;
        v16 = v140;
        v6 = v141;
        v72 = v143;
        if (v139 == v74)
        {

          goto LABEL_50;
        }
      }

      goto LABEL_54;
    }

    v73 = MEMORY[0x277D84F90];
LABEL_50:
    v111 = sub_21D6DD91C(v118 & 1, v73, v115 & 1, v116 & 1);

    return v111;
  }

  v46 = v117;
  if (!v45)
  {

    v48 = MEMORY[0x277D84F90];
LABEL_38:
    v95 = 0;
    v96 = *(v48 + 16);
    v73 = MEMORY[0x277D84F90];
LABEL_39:
    v97 = 48 * v95;
    while (v96 != v95)
    {
      if (v95 >= *(v48 + 16))
      {
        goto LABEL_52;
      }

      ++v95;
      v98 = v97 + 48;
      v99 = *(v48 + v97 + 72);
      v97 += 48;
      if ((v99 & 1) == 0)
      {
        v101 = *(v48 + v98 - 16);
        v100 = *(v48 + v98 - 8);
        v102 = *(v48 + v98);
        v142 = *(v48 + v98 + 8);
        v143 = v100;
        v103 = *(v48 + v98 + 16);
        sub_21DBF8E0C();
        v104 = v101;
        sub_21DBF8E0C();
        v105 = swift_isUniquelyReferenced_nonNull_native();
        v144 = v73;
        if ((v105 & 1) == 0)
        {
          sub_21D18F3B8(0, *(v73 + 16) + 1, 1);
          v73 = v144;
        }

        v107 = *(v73 + 16);
        v106 = *(v73 + 24);
        if (v107 >= v106 >> 1)
        {
          sub_21D18F3B8((v106 > 1), v107 + 1, 1);
          v73 = v144;
        }

        *(v73 + 16) = v107 + 1;
        v108 = v73 + 48 * v107;
        v109 = v142;
        v110 = v143;
        *(v108 + 32) = v104;
        *(v108 + 40) = v110;
        *(v108 + 48) = v102;
        *(v108 + 56) = v109;
        *(v108 + 64) = v103;
        *(v108 + 72) = 0;
        goto LABEL_39;
      }
    }

    goto LABEL_50;
  }

  v144 = MEMORY[0x277D84F90];
  sub_21D18F3B8(0, v45, 0);
  v47 = 0;
  v48 = v144;
  v137 = (v142 + ((*(v16 + 80) + 32) & ~*(v16 + 80)));
  v135 = (v46 + 88);
  v136 = (v16 + 16);
  LODWORD(v134) = *MEMORY[0x277D453E0];
  v129 = (v46 + 96);
  LODWORD(v128) = *MEMORY[0x277D453D8];
  v132 = (v114 + 8);
  v133 = (v16 + 8);
  while (v47 < *(v142 + 16))
  {
    v49 = *(v16 + 16);
    v50 = v130;
    v51 = v143;
    v49(v130, &v137[*(v16 + 72) * v47], v143);
    v49(v131, v50, v51);
    v52 = v120;
    sub_21DBF6F5C();
    v53 = (*v135)(v52, v6);
    if (v53 == v134)
    {
      (*v129)(v52, v6);
      v54 = v52;
      v55 = *v52;
      v56 = v54[1];
      v138 = v54[2];
      v58 = v54[3];
      v57 = v54[4];
    }

    else
    {
      if (v53 != v128)
      {
        goto LABEL_55;
      }

      v59 = v122;
      sub_21DBF56AC();
      v60 = objc_allocWithZone(MEMORY[0x277D44700]);
      v61 = sub_21DBF566C();
      v138 = 0xE000000000000000;
      v62 = sub_21DBFA12C();
      v55 = [v60 initWithUUID:v61 entityName:v62];

      (*v132)(v59, v123);
      v57 = 0;
      v58 = 0;
      v56 = 0;
    }

    v63 = v131;
    v64 = sub_21DBF6F6C();
    v65 = *v133;
    v66 = v63;
    v67 = v143;
    (*v133)(v66, v143);
    v65(v130, v67);
    v144 = v48;
    v69 = *(v48 + 16);
    v68 = *(v48 + 24);
    if (v69 >= v68 >> 1)
    {
      sub_21D18F3B8((v68 > 1), v69 + 1, 1);
      v48 = v144;
    }

    ++v47;
    *(v48 + 16) = v69 + 1;
    v70 = v48 + 48 * v69;
    *(v70 + 32) = v55;
    *(v70 + 40) = v56;
    *(v70 + 48) = v138;
    *(v70 + 56) = v58;
    *(v70 + 64) = v57;
    *(v70 + 72) = v64 & 1;
    v16 = v140;
    v6 = v141;
    if (v139 == v47)
    {

      goto LABEL_38;
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

double TTREditSectionsViewModel.section(with:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    v5 = *(v2 + 32);
    if (*(v5 + 16) && (v6 = sub_21D17E07C(v4), (v7 & 1) != 0))
    {
      v8 = *(v5 + 56) + 48 * v6;
      v10 = *v8;
      v9 = *(v8 + 8);
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      v13 = *(v8 + 32);
      LOBYTE(v8) = *(v8 + 40);
      *a2 = v10;
      *(a2 + 8) = v9;
      *(a2 + 16) = v12;
      *(a2 + 24) = v11;
      *(a2 + 32) = v13;
      *(a2 + 40) = v8;
      sub_21DBF8E0C();
      v14 = v10;
      sub_21DBF8E0C();
    }

    else
    {
      *(a2 + 25) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    swift_endAccess();
  }

  else
  {
    result = 0.0;
    *(a2 + 25) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void TTREditSectionsViewModel.snapshot(previousViewModel:)(uint64_t a1)
{
  v3 = v1;
  sub_21D6DDCE8();
  sub_21D6DDD3C();
  sub_21DBF8AFC();
  v5 = *(v1 + 17);
  if ((v5 & 1) != 0 || *(v1 + 18) == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60498, &unk_21DC23A30);
    sub_21DBF8A6C();
    sub_21DBF8A2C();
  }

  v6 = *(v1 + 24);
  if (!(v6 >> 62))
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60498, &unk_21DC23A30);
    sub_21DBF8A6C();
    if (v6 >> 62)
    {
      v7 = sub_21DBFBD7C();
      v23 = v5;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v23 = v5;
      if (v7)
      {
LABEL_8:
        if (v7 < 1)
        {
          __break(1u);
          goto LABEL_39;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          v8 = 0;
          v9 = MEMORY[0x277D84F90];
          do
          {
            v10 = MEMORY[0x223D44740](v8, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_21D214404(0, *(v9 + 2) + 1, 1, v9);
            }

            v12 = *(v9 + 2);
            v11 = *(v9 + 3);
            if (v12 >= v11 >> 1)
            {
              v9 = sub_21D214404((v11 > 1), v12 + 1, 1, v9);
            }

            ++v8;
            *(v9 + 2) = v12 + 1;
            *&v9[8 * v12 + 32] = v10;
          }

          while (v7 != v8);
        }

        else
        {
          v18 = (v6 + 32);
          v19 = MEMORY[0x277D84F90];
          do
          {
            v20 = *v18;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = sub_21D214404(0, *(v19 + 2) + 1, 1, v19);
            }

            v22 = *(v19 + 2);
            v21 = *(v19 + 3);
            if (v22 >= v21 >> 1)
            {
              v19 = sub_21D214404((v21 > 1), v22 + 1, 1, v19);
            }

            *(v19 + 2) = v22 + 1;
            *&v19[8 * v22 + 32] = v20;
            ++v18;
            --v7;
          }

          while (v7);
        }
      }
    }

    sub_21DBF8A2C();

    v5 = v23;
    goto LABEL_19;
  }

  if (sub_21DBFBD7C())
  {
    goto LABEL_6;
  }

LABEL_19:
  if (!a1)
  {
    return;
  }

  sub_21D6DCBD8(v13);
  v2 = v14;
  if ((v5 & 1) != 0 || *(v3 + 18) == 1)
  {
    swift_beginAccess();
    v15 = *(a1 + 16);
    swift_beginAccess();
    if (v15 != *(v3 + 16))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_24:
        v17 = *(v2 + 16);
        v16 = *(v2 + 24);
        if (v17 >= v16 >> 1)
        {
          v2 = sub_21D214404((v16 > 1), v17 + 1, 1, v2);
        }

        *(v2 + 16) = v17 + 1;
        *(v2 + 8 * v17 + 32) = 0;
        goto LABEL_27;
      }

LABEL_39:
      v2 = sub_21D214404(0, *(v2 + 16) + 1, 1, v2);
      goto LABEL_24;
    }
  }

LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60498, &unk_21DC23A30);
  sub_21DBF8ACC();
}

void sub_21D6DCBD8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(v1 + 32);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v1 + 32) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v47 = *(v1 + 32);
  sub_21DBF8E0C();
  v10 = 0;
  v39 = MEMORY[0x277D84F90];
  if (v8)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = v12 | (v10 << 6);
        v14 = *(*(v47 + 48) + 8 * v13);
        v15 = *(v47 + 56) + 48 * v13;
        v16 = *v15;
        v46 = *(v15 + 8);
        v17 = *(v15 + 16);
        v43 = *(v15 + 24);
        v18 = *(v15 + 32);
        v45 = *(v15 + 40);
        swift_beginAccess();
        v19 = *(a1 + 32);
        v20 = *(v19 + 16);
        sub_21DBF8E0C();
        v21 = v14;
        v22 = v16;
        sub_21DBF8E0C();
        if (v20)
        {
          v23 = sub_21D17E07C(v21);
          if (v24)
          {
            break;
          }
        }

        swift_endAccess();
LABEL_6:

        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v41 = v21;
      v25 = *(v19 + 56) + 48 * v23;
      v26 = v22;
      v27 = *v25;
      v28 = *(v25 + 8);
      v29 = *(v25 + 16);
      v38 = *(v25 + 24);
      v42 = v17;
      v30 = *(v25 + 32);
      v40 = *(v25 + 40);
      swift_endAccess();
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      sub_21DBF8E0C();
      v31 = v27;
      v32 = v18;
      v33 = v31;
      sub_21DBF8E0C();
      if ((sub_21DBFB63C() & 1) == 0)
      {
        goto LABEL_31;
      }

      v34 = v28 == v46 && v29 == v42;
      if (!v34 && (sub_21DBFC64C() & 1) == 0)
      {
        goto LABEL_31;
      }

      if (!v30)
      {
        break;
      }

      if (!v32)
      {
        goto LABEL_31;
      }

      if (v38 != v43 || v30 != v32)
      {
        if ((sub_21DBFC64C() & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_28:
        if (((v45 ^ v40) & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_31;
      }

      if (v45 == v40)
      {
LABEL_29:

        v22 = v26;
        v21 = v41;
        goto LABEL_6;
      }

LABEL_31:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_21D214404(0, *(v39 + 2) + 1, 1, v39);
      }

      v37 = *(v39 + 2);
      v36 = *(v39 + 3);
      if (v37 >= v36 >> 1)
      {
        v39 = sub_21D214404((v36 > 1), v37 + 1, 1, v39);
      }

      *(v39 + 2) = v37 + 1;
      *&v39[8 * v37 + 32] = v41;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    if (v32)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

LABEL_7:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v4 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t TTREditSectionsViewModel.applying(_:)(uint64_t a1)
{
  v2 = v1;
  v69 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478, &unk_21DC23A20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v67 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480, &qword_21DC3C4A0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v67 - v9;
  v11 = v1[3];
  sub_21D6DD788(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v68 = v11;
    sub_21DBF8E0C();
    sub_21D6DD8B4(v6);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v79 = v11;
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858, &unk_21DC09AA0);
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    sub_21D6DDD90();
    sub_21D183A0C();
    v12 = sub_21DBFA45C();

    (*(v8 + 8))(v10, v7);
    v68 = v12;
  }

  v13 = *(a1 + *(type metadata accessor for TTREditSectionsViewModel.OptimisticApply(0) + 20));
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  sub_21DBF8E0C();
  v19 = 0;
  v70 = v13;
  v71 = v1;
  while (v17)
  {
LABEL_15:
    v21 = __clz(__rbit64(v17)) | (v19 << 6);
    v22 = *(*(v13 + 48) + 8 * v21);
    v23 = (*(v13 + 56) + 16 * v21);
    v24 = v23[1];
    v77 = *v23;
    swift_beginAccess();
    v25 = v2[4];
    v26 = *(v25 + 16);
    v27 = v22;
    v28 = v27;
    if (!v26)
    {
      sub_21DBF8E0C();
LABEL_8:
      swift_endAccess();
      goto LABEL_9;
    }

    v76 = v27;
    v29 = v27;
    sub_21DBF8E0C();
    v30 = sub_21D17E07C(v29);
    if ((v31 & 1) == 0)
    {

      v28 = v76;
      goto LABEL_8;
    }

    v32 = *(v25 + 56) + 48 * v30;
    v33 = *v32;
    v73 = *(v32 + 24);
    v34 = *(v32 + 32);
    v74 = *(v32 + 40);
    v35 = v33;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    swift_endAccess();

    sub_21DBF8E0C();

    swift_beginAccess();
    v36 = v29;
    v37 = v2;
    v38 = v36;
    v72 = v35;
    sub_21DBF8E0C();
    v75 = v34;
    sub_21DBF8E0C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v37[4];
    v40 = v78;
    v37[4] = 0x8000000000000000;
    v42 = sub_21D17E07C(v38);
    v43 = v40[2];
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_32;
    }

    v46 = v41;
    if (v40[3] >= v45)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v49 = v78;
        if ((v41 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_21D2249EC();
        v49 = v78;
        if ((v46 & 1) == 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      sub_21D21CE1C(v45, isUniquelyReferenced_nonNull_native);
      v47 = sub_21D17E07C(v38);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_34;
      }

      v42 = v47;
      v49 = v78;
      if ((v46 & 1) == 0)
      {
LABEL_27:
        v49[(v42 >> 6) + 8] |= 1 << v42;
        *(v49[6] + 8 * v42) = v38;
        v55 = v49[7] + 48 * v42;
        v52 = v72;
        v56 = v77;
        *v55 = v72;
        *(v55 + 8) = v56;
        v57 = v73;
        *(v55 + 16) = v24;
        *(v55 + 24) = v57;
        *(v55 + 32) = v75;
        *(v55 + 40) = v74;
        v58 = v49[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_33;
        }

        v49[2] = v60;
        goto LABEL_29;
      }
    }

    v50 = v49[7] + 48 * v42;
    v51 = *(v50 + 32);
    v67[0] = *v50;
    v67[1] = v51;
    v52 = v72;
    v53 = v77;
    *v50 = v72;
    *(v50 + 8) = v53;
    v54 = v73;
    *(v50 + 16) = v24;
    *(v50 + 24) = v54;
    *(v50 + 32) = v75;
    *(v50 + 40) = v74;

LABEL_29:
    v2 = v71;
    v71[4] = v49;
    swift_endAccess();

    v13 = v70;
    v28 = v76;
LABEL_9:
    v17 &= v17 - 1;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v18)
    {

      swift_beginAccess();
      v61 = *(v2 + 16);
      swift_beginAccess();
      v62 = v2[4];
      v63 = *(v2 + 17);
      v64 = *(v2 + 18);
      v65 = swift_allocObject();
      *(v65 + 16) = v61;
      *(v65 + 24) = v68;
      *(v65 + 32) = v62;
      *(v65 + 17) = v63;
      *(v65 + 18) = v64;
      sub_21DBF8E0C();
      return v65;
    }

    v17 = *(v14 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

uint64_t TTREditSectionsViewModel.deinit()
{

  return v0;
}

uint64_t TTREditSectionsViewModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _s15RemindersUICore24TTREditSectionsViewModelC11SectionItemV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v11 = *(a2 + 40);
  v12 = *(a1 + 40);
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  if (sub_21DBFB63C() & 1) != 0 && (v2 == v6 && v4 == v8 || (sub_21DBFC64C()))
  {
    if (v5)
    {
      if (v9 && (v3 == v7 && v5 == v9 || (sub_21DBFC64C() & 1) != 0))
      {
        return v12 ^ v11 ^ 1u;
      }
    }

    else if (!v9)
    {
      return v12 ^ v11 ^ 1u;
    }
  }

  return 0;
}

BOOL _s15RemindersUICore24TTREditSectionsViewModelC14ItemIdentifierO2eeoiySbAE_AEtFZ_0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      v4 = v3;
      v5 = v2;
      v6 = sub_21DBFB63C();

      return v6 & 1;
    }

    return 0;
  }

  return !v3;
}

uint64_t sub_21D6DD788(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478, &unk_21DC23A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D6DD7F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478, &unk_21DC23A20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TTREditSectionsViewModel.OptimisticApply(uint64_t a1)
{
  result = qword_27CE604B0;
  if (!qword_27CE604B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D6DD8B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478, &unk_21DC23A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D6DD91C(char a1, uint64_t a2, char a3, char a4)
{
  LOBYTE(v4) = a4;
  LOBYTE(v5) = a3;
  v6 = a2;
  LOBYTE(isUniquelyReferenced_nonNull_native) = a1;
  v36 = MEMORY[0x277D84F98];
  v8 = *(a2 + 16);
  if (MEMORY[0x277D84F90] >> 62)
  {
LABEL_24:
    sub_21DBFBD7C();
  }

  v9 = sub_21DBFBF9C();
  v37 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE604C8, &unk_21DC23C20);
  sub_21DBF9EAC();
  if (v8)
  {
    v29 = isUniquelyReferenced_nonNull_native;
    v30 = v5;
    v31 = v4;
    v10 = v36;
    v11 = (v6 + 72);
    v12 = v8 & ~(v8 >> 63);
    while (1)
    {
      if (!v12)
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v14 = *(v11 - 5);
      v32 = v8;
      v33 = *(v11 - 4);
      v6 = *(v11 - 3);
      v34 = *(v11 - 2);
      v8 = *(v11 - 1);
      v35 = *v11;
      sub_21DBF8E0C();
      v15 = v14;
      v16 = sub_21DBF8E0C();
      MEMORY[0x223D42D80](v16);
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v5 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v17 = v15;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4 = sub_21D17E07C(v17);
      v19 = v36[2];
      v20 = (v18 & 1) == 0;
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        goto LABEL_22;
      }

      LOBYTE(v5) = v18;
      if (v36[3] >= v21)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21D2249EC();
        }
      }

      else
      {
        sub_21D21CE1C(v21, isUniquelyReferenced_nonNull_native);
        v22 = sub_21D17E07C(v17);
        if ((v5 & 1) != (v23 & 1))
        {
          sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
          result = sub_21DBFC70C();
          __break(1u);
          return result;
        }

        v4 = v22;
      }

      if (v5)
      {
        v13 = v36[7] + 48 * v4;
        v5 = *v13;
        v4 = *(v13 + 16);
        *v13 = v17;
        *(v13 + 8) = v33;
        *(v13 + 16) = v6;
        *(v13 + 24) = v34;
        *(v13 + 32) = v8;
        *(v13 + 40) = v35;
      }

      else
      {
        v36[(v4 >> 6) + 8] |= 1 << v4;
        *(v36[6] + 8 * v4) = v17;
        v24 = v36[7] + 48 * v4;
        *v24 = v17;
        *(v24 + 8) = v33;
        *(v24 + 16) = v6;
        *(v24 + 24) = v34;
        *(v24 + 32) = v8;
        *(v24 + 40) = v35;

        v25 = v36[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_23;
        }

        v36[2] = v27;
      }

      --v12;
      v11 += 48;
      v8 = v32 - 1;
      if (v32 == 1)
      {
        LOBYTE(v5) = v30;
        LOBYTE(v4) = v31;
        LOBYTE(isUniquelyReferenced_nonNull_native) = v29;
        v9 = v37;
        goto LABEL_20;
      }
    }
  }

  v10 = v36;
LABEL_20:
  type metadata accessor for TTREditSectionsViewModel();
  result = swift_allocObject();
  *(result + 16) = isUniquelyReferenced_nonNull_native & 1;
  *(result + 24) = v9;
  *(result + 32) = v10;
  *(result + 17) = v5 & 1;
  *(result + 18) = v4 & 1;
  return result;
}

unint64_t sub_21D6DDC90()
{
  result = qword_27CE5EC78;
  if (!qword_27CE5EC78)
  {
    v3 = sub_21DBF6F4C();
    result = swift_getWitnessTable(MEMORY[0x277D453F0], v3, v0, v1);
    atomic_store(result, &qword_27CE5EC78);
  }

  return result;
}

unint64_t sub_21D6DDCE8()
{
  result = qword_27CE60488;
  if (!qword_27CE60488)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTREditSectionsViewModel.SectionIdentifier, &type metadata for TTREditSectionsViewModel.SectionIdentifier, v0, v1);
    atomic_store(result, &qword_27CE60488);
  }

  return result;
}

unint64_t sub_21D6DDD3C()
{
  result = qword_27CE60490;
  if (!qword_27CE60490)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTREditSectionsViewModel.ItemIdentifier, &type metadata for TTREditSectionsViewModel.ItemIdentifier, v0, v1);
    atomic_store(result, &qword_27CE60490);
  }

  return result;
}

unint64_t sub_21D6DDD90()
{
  result = qword_27CE59838;
  if (!qword_27CE59838)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE58858, &unk_21DC09AA0);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_27CE59838);
  }

  return result;
}

unint64_t sub_21D6DDDF8()
{
  result = qword_27CE604A0;
  if (!qword_27CE604A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTREditSectionsViewModel.SectionIdentifier, &type metadata for TTREditSectionsViewModel.SectionIdentifier, v0, v1);
    atomic_store(result, &qword_27CE604A0);
  }

  return result;
}

unint64_t sub_21D6DDE50()
{
  result = qword_27CE604A8;
  if (!qword_27CE604A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTREditSectionsViewModel.ItemIdentifier, &type metadata for TTREditSectionsViewModel.ItemIdentifier, v0, v1);
    atomic_store(result, &qword_27CE604A8);
  }

  return result;
}

uint64_t initializeWithCopy for TTREditSectionsViewModel.SectionItem(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v6 = v3;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTREditSectionsViewModel.SectionItem(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for TTREditSectionsViewModel.SectionItem(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTREditSectionsViewModel.SectionItem(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for TTREditSectionsViewModel.SectionItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTREditSectionsViewModel.OptimisticApply(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480, &qword_21DC3C4A0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478, &unk_21DC23A20);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    sub_21DBF8E0C();
  }

  return a1;
}

double destroy for TTREditSectionsViewModel.OptimisticApply(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480, &qword_21DC3C4A0);
  v3 = *(v2 - 8);
  if (!(*(v3 + 48))(a1, 1, v2))
  {
    (*(v3 + 8))(a1, v2);
  }

  return result;
}

char *initializeWithCopy for TTREditSectionsViewModel.OptimisticApply(char *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480, &qword_21DC3C4A0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478, &unk_21DC23A20);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  sub_21DBF8E0C();
  return a1;
}

char *assignWithCopy for TTREditSectionsViewModel.OptimisticApply(char *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480, &qword_21DC3C4A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478, &unk_21DC23A20);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  sub_21DBF8E0C();

  return a1;
}

char *initializeWithTake for TTREditSectionsViewModel.OptimisticApply(char *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480, &qword_21DC3C4A0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478, &unk_21DC23A20);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *assignWithTake for TTREditSectionsViewModel.OptimisticApply(char *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480, &qword_21DC3C4A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478, &unk_21DC23A20);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

void sub_21D6DE950(uint64_t a1)
{
  sub_21D6DE9E8(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21D6DE9E8(uint64_t a1)
{
  if (!qword_27CE604C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE60480, &qword_21DC3C4A0);
    v1 = sub_21DBFBA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE604C0);
    }
  }
}

void sub_21D6DEA4C(double *a1, char **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_preferredMaxLayoutWidth;
  swift_beginAccess();
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  if (v2 != v5)
  {
    [v3 invalidateIntrinsicContentSize];
  }
}

double sub_21D6DEABC()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_preferredMaxLayoutWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21D6DEB00(double a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_preferredMaxLayoutWidth;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (v4 != a1)
  {
    [v1 invalidateIntrinsicContentSize];
  }
}

void (*sub_21D6DEB6C(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_preferredMaxLayoutWidth;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_21D6DEC00;
}

void sub_21D6DEC00(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  if (v2 != v5)
  {
    [v1[4] invalidateIntrinsicContentSize];
  }

  free(v1);
}

uint64_t (*sub_21D6DEC78(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D6E0538;
}

uint64_t sub_21D6DECE8(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

id sub_21D6DED3C(uint64_t a1, char a2, void *a3)
{
  v6 = &v3[*a3];
  swift_beginAccess();
  *v6 = a1;
  v6[8] = a2 & 1;
  return [v3 invalidateIntrinsicContentSize];
}

uint64_t (*sub_21D6DEDA8(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D6E0538;
}

double sub_21D6DEE0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_arrangedSubviews;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_21DBF8E0C();
  sub_21D6DEE7C(v5);

  return result;
}

void sub_21D6DEE7C(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_arrangedSubviews;
  swift_beginAccess();
  v4 = sub_21DBF8E0C();
  v5 = sub_21D114F14(v4, a1);

  if ((v5 & 1) == 0)
  {
    if (a1 >> 62)
    {
      v6 = sub_21DBFBD7C();
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    if (v6 < 1)
    {
      __break(1u);
      goto LABEL_25;
    }

    for (i = 0; i != v6; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D44740](i, a1);
      }

      else
      {
        v8 = *(a1 + 8 * i + 32);
      }

      v9 = v8;
      [v8 removeFromSuperview];
    }

LABEL_11:
    v10 = *&v1[v3];
    if (v10 >> 62)
    {
      v11 = sub_21DBFBD7C();
      if (v11)
      {
LABEL_13:
        if (v11 >= 1)
        {
          sub_21DBF8E0C();
          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x223D44740](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            v14 = v13;
            [v1 addSubview_];
          }

          goto LABEL_20;
        }

LABEL_25:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_13;
      }
    }

LABEL_20:
    [v1 invalidateIntrinsicContentSize];
    [v1 setNeedsLayout];
  }
}

double sub_21D6DF044()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

double sub_21D6DF08C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_arrangedSubviews;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_21D6DEE7C(v4);

  return result;
}

void (*sub_21D6DF0F0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_arrangedSubviews;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D6DF18C;
}

void sub_21D6DF18C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 24);
  if (a2)
  {
    sub_21DBF8E0C();
    sub_21D6DEE7C(v5);
  }

  else
  {
    sub_21D6DEE7C(v5);
  }

  free(v2);
}

double sub_21D6DF210()
{
  sub_21D6DF960();

  return sub_21D6DFAB0(v0);
}

id TTRListAppearanceGridView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRListAppearanceGridView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_preferredMaxLayoutWidth] = 0;
  v9 = &v4[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_horizontalMargins];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v4[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_topMargin];
  *v10 = 0;
  v10[8] = 1;
  *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_arrangedSubviews] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_badgeSize] = vdupq_n_s64(0x4045800000000000uLL);
  *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_minimumGap] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_verticalGap] = 0x4030000000000000;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for TTRListAppearanceGridView();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  [v11 setClipsToBounds_];
  return v11;
}

id TTRListAppearanceGridView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRListAppearanceGridView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_preferredMaxLayoutWidth] = 0;
  v3 = &v1[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_horizontalMargins];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_topMargin];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_arrangedSubviews] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_badgeSize] = vdupq_n_s64(0x4045800000000000uLL);
  *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_minimumGap] = 0x4030000000000000;
  *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_verticalGap] = 0x4030000000000000;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for TTRListAppearanceGridView();
  v5 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    [v7 setClipsToBounds_];
  }

  return v6;
}

double sub_21D6DF5D4()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_badgeSize;
  swift_beginAccess();
  return *v1;
}

id sub_21D6DF688(double a1, double a2)
{
  v5 = &v2[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_badgeSize];
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return [v2 invalidateIntrinsicContentSize];
}

uint64_t (*sub_21D6DF6F0(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D6E0538;
}

double sub_21D6DF79C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_minimumGap;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_21D6DF844(double a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_minimumGap;
  swift_beginAccess();
  *&v1[v3] = a1;
  return [v1 invalidateIntrinsicContentSize];
}

uint64_t (*sub_21D6DF8A4(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D6DF908;
}

id sub_21D6DF90C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 invalidateIntrinsicContentSize];
  }

  return result;
}

void sub_21D6DF960()
{
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
}

double sub_21D6DFAB0(double a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_arrangedSubviews;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    v5 = sub_21DBFBD7C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = ceil(v5 / a1);
  v7 = v1 + OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_badgeSize;
  swift_beginAccess();
  v8 = *(v7 + 8);
  v9 = v1 + OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_topMargin;
  swift_beginAccess();
  v10 = *v9;
  if (*(v9 + 8))
  {
    v10 = 16.0;
  }

  return v6 * (v8 + 16.0) + v10;
}

void sub_21D6DFBB8()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  [v5 displayScale];
  v7 = v6;

  if (v7 == 0.0)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = v7;
  }

  v9 = &v0[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_badgeSize];
  swift_beginAccess();
  v35 = v9[1];
  v36 = *v9;
  sub_21D6DF960();
  v34 = v10;
  Height = v11;
  v13 = &v0[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_horizontalMargins];
  swift_beginAccess();
  if (*(v13 + 8))
  {
    v14 = Height;
  }

  else
  {
    v14 = *v13;
  }

  v15 = &v0[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_topMargin];
  swift_beginAccess();
  if (*(v15 + 8))
  {
    v16 = 16.0;
  }

  else
  {
    v16 = *v15;
  }

  v17 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_arrangedSubviews;
  swift_beginAccess();
  v18 = *&v0[v17];
  if (v18 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v4 = v4 + v16;
    v20 = v2 + v14;
    v21 = v36 + Height;
    v2 = Height * -0.5;
    sub_21DBF8E0C();
    v22 = 0;
    v16 = 1.0;
LABEL_13:
    v14 = 0.0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x223D44740](v22, v18);
      }

      else
      {
        if (v22 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v23 = *(v18 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      Height = v20 + v21 * v14;
      [v23 frameForAlignmentRect_];
      if (v8 == 1.0)
      {
        v30 = floor(v26);
        v31 = floor(v27);
        v32 = ceil(v28);
        v33 = ceil(v29);
      }

      else
      {
        v30 = floor(v8 * v26) / v8;
        v31 = floor(v8 * v27) / v8;
        v32 = ceil(v8 * v28) / v8;
        v33 = ceil(v8 * v29) / v8;
      }

      [v24 setFrame_];
      [v24 setHitTestInsets_];
      v14 = v14 + 1.0;
      if (v34 <= v14)
      {
        v37.origin.x = Height;
        v37.origin.y = v4;
        v37.size.height = v35;
        v37.size.width = v36;
        Height = CGRectGetHeight(v37);

        v4 = v4 + Height + 16.0;
        ++v22;
        if (v25 != i)
        {
          goto LABEL_13;
        }

LABEL_26:

        return;
      }

      ++v22;
      if (v25 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }
}

id TTRListAppearanceGridView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRListAppearanceGridView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void keypath_get_3Tm(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  v5 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v5;
}

id keypath_set_4Tm(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2;
  v8 = *a2 + *a5;
  swift_beginAccess();
  *v8 = v5;
  v8[8] = v6;
  return [v7 invalidateIntrinsicContentSize];
}

uint64_t TTRTimeProvider.isDateInToday(_:calendar:now:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v24 = a3;
  v25 = a4;
  v28 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v27 = sub_21DBF563C();
  v9 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0, &unk_21DC18C20);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  v15 = sub_21DBF5A2C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(a2, v14, &qword_27CE5A8B0, &unk_21DC18C20);
  v19 = *(v16 + 48);
  if (v19(v14, 1, v15) == 1)
  {
    (*(v26 + 16))(v25);
    if (v19(v14, 1, v15) != 1)
    {
      sub_21D0CF7E0(v14, &qword_27CE5A8B0, &unk_21DC18C20);
    }
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
  }

  sub_21D0D3954(v24, v8, &qword_27CE58D68, &unk_21DC0C060);
  v20 = *(v9 + 48);
  v21 = v27;
  if (v20(v8, 1, v27) == 1)
  {
    (*(v26 + 8))(v25);
    if (v20(v8, 1, v21) != 1)
    {
      sub_21D0CF7E0(v8, &qword_27CE58D68, &unk_21DC0C060);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v8, v21);
  }

  v22 = sub_21DBF59AC();
  (*(v9 + 8))(v11, v21);
  (*(v16 + 8))(v18, v15);
  return v22 & 1;
}

void TTRCurrentTimeProvider.timeZone.getter()
{
  v0 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();
}

uint64_t sub_21D6E0A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  (*(*(a3 - 8) + 56))(a6, 1, 1, a3);
  v12 = sub_21DBFBA8C();
  (*(*(v12 - 8) + 40))(a6, a1, v12);
  result = a5(0, a3, a4);
  *(a6 + *(result + 36)) = a2;
  return result;
}

uint64_t TTRTreeStorageTreeDeriving.derivedTreeLocation(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21DBFBA8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v27 = v4;
  (*(v7 + 48))(a1, a2, v7, v14);
  v27 = v4;
  v17 = TTRTreeContentsQueryable.childIndex(of:inParent:)(a1, v16, a2, v7);
  if (v18)
  {
    (*(v10 + 8))(v16, v9);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v21 = 1;
    v22 = v26;
  }

  else
  {
    v23 = v17;
    (*(v10 + 16))(v12, v16, v9);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v22 = v26;
    TTRDerivedTreeLocation.init(parent:index:)(v12, v23, AssociatedTypeWitness, AssociatedConformanceWitness, v26);
    (*(v10 + 8))(v16, v9);
    v21 = 0;
  }

  v24 = type metadata accessor for TTRDerivedTreeLocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
  return (*(*(v24 - 8) + 56))(v22, v21, 1, v24);
}

unint64_t TTRTreeStorageTreeDeriving.item(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 8);
  result = (*(v6 + 24))(a1, a2, v6);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    if (*(a1 + *(type metadata accessor for TTRDerivedTreeLocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11) + 36)) >= v8)
    {
      v12 = 1;
    }

    else
    {
      (*(v6 + 32))();
      v12 = 0;
    }

    return (*(*(AssociatedTypeWitness - 8) + 56))(a4, v12, 1, AssociatedTypeWitness);
  }

  return result;
}

void (*sub_21D6E0F9C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = TTRBaseTreeLocation.parent.modify();
  return sub_21D4C3D30;
}

void (*sub_21D6E100C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = TTRBaseTreeLocation.index.modify();
  return sub_21D4C30A8;
}

uint64_t sub_21D6E10B4(uint64_t a1, const char *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(a2, a1);
  v6 = sub_21D4C24B0(a1, WitnessTable);
  MEMORY[0x223D42AA0](v6);

  return a3;
}

BOOL sub_21D6E1124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRBaseTreeLocation<A>, a3);

  return static TTRTreeLocationType.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

uint64_t _s15RemindersUICore19TTRBaseTreeLocationV6parentxSgvg_0@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_21DBFBA8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t _s15RemindersUICore19TTRBaseTreeLocationV6parentxSgvs_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBFBA8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

void (*sub_21D6E12AC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = TTRDerivedTreeLocation.parent.modify();
  return sub_21D4C3D30;
}

void (*sub_21D6E131C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = TTRDerivedTreeLocation.index.modify();
  return sub_21D4C3D30;
}

BOOL sub_21D6E13A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRDerivedTreeLocation<A>, a3);

  return static TTRTreeLocationType.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

uint64_t TTRTreeLocationPurpose.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D6E14A8()
{
  result = qword_27CE60508;
  if (!qword_27CE60508)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTreeLocationPurpose, &type metadata for TTRTreeLocationPurpose, v0, v1);
    atomic_store(result, &qword_27CE60508);
  }

  return result;
}

uint64_t TTRComposableUndoAction.__allocating_init(action:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t TTRComposableUndoAction.init(action:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void *TTRComposableUndoAction.init(combining:)()
{
  v1 = v0;
  v2 = *v0;
  sub_21DBFBA8C();
  v3 = sub_21DBFA74C();
  swift_getWitnessTable(MEMORY[0x277D83970], v3);
  v4 = sub_21DBFA41C();

  v5 = sub_21DBFA74C();
  swift_getWitnessTable(MEMORY[0x277D83988], v5);
  if (sub_21DBFACFC())
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v6 = swift_allocObject();
    v6[2] = *(v2 + 80);
    v6[3] = *(v2 + 88);
    v6[4] = v4;
    v0[2] = sub_21D6E18E4;
    v0[3] = v6;
  }

  return v1;
}

void *sub_21D6E177C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TTRComposableUndoAction(255, a3, a4, a4);
  v4 = sub_21DBFA74C();
  swift_getWitnessTable(MEMORY[0x277D83970], v4);
  v8[2] = sub_21DBFA4EC();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D83958], v4);
  MEMORY[0x223D42810](v8, v4, WitnessTable);
  v6 = sub_21DBFC39C();
  swift_getWitnessTable(MEMORY[0x277D84440], v6);
  sub_21DBFA76C();
  sub_21DBFBA8C();
  sub_21DBFC13C();

  swift_allocObject();
  return TTRComposableUndoAction.init(combining:)();
}

uint64_t TTRComposableUndoAction.register(with:)()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);

  TTRUndoableEditing.registerUndo(handler:)(sub_21D6E1A0C, v0, v1, v2);
}

uint64_t sub_21D6E19B0(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 16))();
  if (result)
  {
    TTRComposableUndoAction.register(with:)();
  }

  return result;
}

uint64_t TTRComposableUndoAction.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D6E1B0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*a1 + 16))(*(v2 + 32));
  *a2 = result;
  return result;
}

Swift::Void __swiftcall UIView.removeAssociatedAppEntity()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE60510, &qword_21DC23F08);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - v1;
  v3 = sub_21DBF4B3C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_21DBFB59C();
}

char *TTRTreeStorageDerivedTreeWithDesignatedInitialItems.__allocating_init(upstreamTree:designatedItemTree:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *v4;
  *(v4 + 2) = a1;
  (*(*(*(v5 + 88) - 8) + 32))(&v4[*(v5 + 120)], a2);
  return v4;
}

char *TTRTreeStorageDerivedTreeWithDesignatedInitialItems.init(upstreamTree:designatedItemTree:)(uint64_t a1)
{
  v2 = *v1;
  *(v1 + 2) = a1;
  (*(*(*(v2 + 88) - 8) + 32))(&v1[*(v2 + 120)]);
  return v1;
}

uint64_t TTRTreeStorageDerivedTreeWithDesignatedInitialItems.numberOfChildren(of:)(uint64_t a1)
{
  v2 = v1;
  v31 = *v2;
  v4 = *(*(v31[12] + 8) + 8);
  v33 = v31[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  (*(v7 + 16))(v11, a1, v6, v14);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    v17 = *(v7 + 8);
    v7 += 8;
    v17(v11, v6);
    swift_beginAccess();
    v34 = v2[2];
    AssociatedTypeWitness = (*(v4 + 24))(a1, v33, v4);
    v18 = sub_21D6E21D4();
    v19 = __OFADD__(AssociatedTypeWitness, v18);
    result = AssociatedTypeWitness + v18;
    if (!v19)
    {
      return result;
    }

    __break(1u);
  }

  v29 = v4;
  v30 = v6;
  (*(v12 + 32))(v16, v11, AssociatedTypeWitness);
  v21 = v31[11];
  v22 = v31[13];
  if (TTRTreeContentsQueryable.contains(_:)(v16, v21, v22))
  {
    v23 = v32;
    (*(v12 + 16))(v32, v16, AssociatedTypeWitness);
    (*(v12 + 56))(v23, 0, 1, AssociatedTypeWitness);
    v24 = (*(v22 + 24))(v23, v21, v22);
    (*(v7 + 8))(v23, v30);
  }

  else
  {
    swift_beginAccess();
    v34 = v2[2];
    v25 = v32;
    (*(v12 + 16))(v32, v16, AssociatedTypeWitness);
    (*(v12 + 56))(v25, 0, 1, AssociatedTypeWitness);
    v26 = v29;
    v27 = *(v29 + 24);
    swift_unknownObjectRetain();
    v24 = v27(v25, v33, v26);
    (*(v7 + 8))(v25, v30);
    swift_unknownObjectRelease();
  }

  (*(v12 + 8))(v16, AssociatedTypeWitness);
  return v24;
}

uint64_t sub_21D6E21D4()
{
  v1 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_21DBFBA8C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  (*(*(AssociatedTypeWitness - 8) + 56))(&v10 - v6, 1, 1, AssociatedTypeWitness, v5);
  v8 = (*(*(v1 + 104) + 24))(v7, *(v1 + 88));
  (*(v4 + 8))(v7, v3);
  return v8;
}

unint64_t TTRTreeStorageDerivedTreeWithDesignatedInitialItems.child(_:of:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v24 = a1;
  v22[1] = a3;
  v6 = *v3;
  v7 = *(*(*(*v3 + 96) + 8) + 8);
  v22[0] = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21DBFBA8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v22 - v16;
  v18 = *(v10 + 16);
  v23 = a2;
  v18(v12, a2, v9, v15);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v12, v9);
    result = sub_21D6E21D4();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    v20 = v24;
    if (result > v24)
    {
      return (*(*(v6 + 104) + 32))(v20, v23, *(v6 + 88));
    }

    v20 = v24 - result;
    if (!__OFSUB__(v24, result))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  (*(v13 + 32))(v17, v12, AssociatedTypeWitness);
  v21 = TTRTreeContentsQueryable.contains(_:)(v17, *(v6 + 88), *(v6 + 104));
  (*(v13 + 8))(v17, AssociatedTypeWitness);
  v20 = v24;
  if (v21)
  {
    return (*(*(v6 + 104) + 32))(v20, v23, *(v6 + 88));
  }

LABEL_9:
  swift_beginAccess();
  v25 = v4[2];
  return (*(v7 + 32))(v20, v23, v22[0]);
}

uint64_t TTRTreeStorageDerivedTreeWithDesignatedInitialItems.item(withID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*(*(*v2 + 96) + 8) + 8);
  v7 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21DBFBA8C();
  v16 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  swift_beginAccess();
  v17 = v2[2];
  (*(v6 + 40))(a1, v7, v6);
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 48);
  if (v13(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(*(v5 + 104) + 40))(a1, *(v5 + 88));
    result = v13(v11, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v16 + 8))(v11, v9);
    }
  }

  else
  {
    (*(v12 + 32))(a2, v11, AssociatedTypeWitness);
    return (*(v12 + 56))(a2, 0, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t TTRTreeStorageDerivedTreeWithDesignatedInitialItems.parent(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*(*(*v2 + 96) + 8) + 8);
  v7 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21DBFBA8C();
  v16 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  swift_beginAccess();
  v17 = v2[2];
  (*(v6 + 48))(a1, v7, v6);
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 48);
  if (v13(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(*(v5 + 104) + 48))(a1, *(v5 + 88));
    result = v13(v11, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v16 + 8))(v11, v9);
    }
  }

  else
  {
    (*(v12 + 32))(a2, v11, AssociatedTypeWitness);
    return (*(v12 + 56))(a2, 0, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t TTRTreeStorageDerivedTreeWithDesignatedInitialItems.isExpandSuppressed(_:)(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(*(v3 + 96) + 8);
  v5 = *(v4 + 16);
  v6 = *(v3 + 80);
  swift_unknownObjectRetain();
  LOBYTE(a1) = v5(a1, v6, v4);
  swift_unknownObjectRelease();
  return a1 & 1;
}

uint64_t TTRTreeStorageDerivedTreeWithDesignatedInitialItems.convertFromImmediateUpstream(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for TTRDerivedTreeLocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  (*(v12 + 16))(&v21 - v14, a1, v11, v13);
  (*(v6 + 16))(v8, v15, v5);
  LODWORD(a1) = (*(*(AssociatedTypeWitness - 8) + 48))(v8, 1, AssociatedTypeWitness);
  (*(v6 + 8))(v8, v5);
  if (a1 != 1)
  {
    goto LABEL_4;
  }

  result = sub_21D6E21D4();
  v17 = *(v11 + 36);
  v18 = *&v15[v17];
  v19 = __OFADD__(v18, result);
  v20 = v18 + result;
  if (!v19)
  {
    *&v15[v17] = v20;
LABEL_4:
    (*(v12 + 32))(a2, v15, v11);
    return (*(v12 + 56))(a2, 0, 1, v11);
  }

  __break(1u);
  return result;
}

void TTRTreeStorageDerivedTreeWithDesignatedInitialItems.convertToImmediateUpstream(_:for:)(uint64_t a1)
{
  v36 = a1;
  v2 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_21DBFBA8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v14 = *(v2 + 88);
  v34 = *(v2 + 104);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = type metadata accessor for TTRDerivedTreeLocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  v33 = *(v35 - 8);
  v16 = MEMORY[0x28223BE20](v35);
  v32 = &v29 - v17;
  v18 = *(v5 + 16);
  v18(v9, v36, v4, v16);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) != 1)
  {
    (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
    if (TTRTreeContentsQueryable.contains(_:)(v13, v14, v34))
    {
      sub_21DBFA68C();
      (*(v10 + 8))(v13, AssociatedTypeWitness);
      return;
    }

    (*(v10 + 8))(v13, AssociatedTypeWitness);
    v24 = v32;
    v23 = v33;
    v21 = v35;
    (*(v33 + 16))(v32, v36, v35);
    goto LABEL_10;
  }

  (*(v5 + 8))(v9, v4);
  v19 = sub_21D6E21D4();
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = v35;
  v22 = *(v36 + *(v35 + 36));
  if (v22 < v19)
  {
    sub_21DBFA68C();
    return;
  }

  v25 = v31;
  (v18)(v31);
  v26 = v22 - v20;
  if (__OFSUB__(v22, v20))
  {
    goto LABEL_13;
  }

  v24 = v32;
  TTRDerivedTreeLocation.init(parent:index:)(v25, v26, AssociatedTypeWitness, AssociatedConformanceWitness, v32);
  v23 = v33;
LABEL_10:
  sub_21DBFC5CC();
  swift_allocObject();
  v27 = sub_21DBFA60C();
  (*(v23 + 32))(v28, v24, v21);
  sub_21D23C8B4(v27, v21);
}

char *TTRTreeStorageDerivedTreeWithDesignatedInitialItems.deinit()
{
  v1 = *v0;
  swift_unknownObjectRelease();
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 120));
  return v0;
}

uint64_t TTRTreeStorageDerivedTreeWithDesignatedInitialItems.__deallocating_deinit()
{
  TTRTreeStorageDerivedTreeWithDesignatedInitialItems.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D6E35A8(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for TTRTreeStorageDerivedTreeWithDesignatedInitialItems<A, B>);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D6E35E4(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for TTRTreeStorageDerivedTreeWithDesignatedInitialItems<A, B>);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D6E3640(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_21D6E3724(int a1)
{
  if ((a1 - 1) > 0x1A)
  {
    v2 = MEMORY[0x277CDA5C0];
  }

  else
  {
    v2 = qword_27832E7E0[a1 - 1];
  }

  v3 = *v2;
  v4 = objc_allocWithZone(MEMORY[0x277CD9EA0]);

  return [v4 initWithType_];
}

void *TTRLocationQuickPicksInteractor.__allocating_init(geoService:locationOptionsProvider:)(void *a1, void *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = a2[3];
  v9 = a2[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v8);
  v11 = sub_21D6E5C48(v7, v10, v2, v5, v8, v6, v9);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

uint64_t TTRLocationQuickPicksInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRLocationQuickPicksInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

double TTRLocationQuickPicksInteractor.quickPickItems.getter()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

void *TTRLocationQuickPicksInteractor.init(geoService:locationOptionsProvider:)(void *a1, void *a2)
{
  v3 = v2;
  v7 = a1[3];
  v6 = a1[4];
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = sub_21D6E5864(v11, v18, v3, v7, v13, v6, v14);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v20;
}

void sub_21D6E3B40(char a1)
{
  v2 = v1;
  v3 = v1[13];
  v4 = v1[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v6 = v5;
  if (v5)
  {

    v7 = 1;
  }

  else
  {
    v7 = 6;
  }

  v8 = v1[13];
  v9 = v1[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v8);
  v10 = (*(v9 + 24))(v8, v9);
  v11 = v10;
  if (v10)
  {

    v12 = 2;
  }

  else
  {
    v12 = 6;
  }

  v13 = v1[13];
  v14 = v1[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v13);
  v15 = (*(v14 + 32))(v13, v14);
  v16 = v1[13];
  v17 = v1[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v16);
  v18 = (*(v17 + 32))(v16, v17);
  v19 = sub_21D2137B4(0, 1, 1, MEMORY[0x277D84F90]);
  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_21D2137B4((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v19[v21 + 32] = 0;
  if (v6)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_21D2137B4(0, *(v19 + 2) + 1, 1, v19);
    }

    v23 = *(v19 + 2);
    v22 = *(v19 + 3);
    if (v23 >= v22 >> 1)
    {
      v19 = sub_21D2137B4((v22 > 1), v23 + 1, 1, v19);
    }

    *(v19 + 2) = v23 + 1;
    v19[v23 + 32] = v7;
  }

  if (v11)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_21D2137B4(0, *(v19 + 2) + 1, 1, v19);
    }

    v25 = *(v19 + 2);
    v24 = *(v19 + 3);
    if (v25 >= v24 >> 1)
    {
      v19 = sub_21D2137B4((v24 > 1), v25 + 1, 1, v19);
    }

    *(v19 + 2) = v25 + 1;
    v19[v25 + 32] = v12;
  }

  if (v15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_21D2137B4(0, *(v19 + 2) + 1, 1, v19);
    }

    v27 = *(v19 + 2);
    v26 = *(v19 + 3);
    if (v27 >= v26 >> 1)
    {
      v19 = sub_21D2137B4((v26 > 1), v27 + 1, 1, v19);
    }

    *(v19 + 2) = v27 + 1;
    v19[v27 + 32] = 3;
  }

  if (v18)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_21D2137B4(0, *(v19 + 2) + 1, 1, v19);
    }

    v29 = *(v19 + 2);
    v28 = *(v19 + 3);
    if (v29 >= v28 >> 1)
    {
      v19 = sub_21D2137B4((v28 > 1), v29 + 1, 1, v19);
    }

    *(v19 + 2) = v29 + 1;
    v19[v29 + 32] = 4;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_21D2137B4(0, *(v19 + 2) + 1, 1, v19);
  }

  v31 = *(v19 + 2);
  v30 = *(v19 + 3);
  if (v31 >= v30 >> 1)
  {
    v19 = sub_21D2137B4((v30 > 1), v31 + 1, 1, v19);
  }

  *(v19 + 2) = v31 + 1;
  v19[v31 + 32] = 5;
  swift_beginAccess();
  v2[4] = v19;

  if (a1)
  {
    v32 = v2[16];
    if (!v32 || (v33 = v2[4], sub_21DBF8E0C(), sub_21DBF8E0C(), sub_21D1D5448(v33, v32), v35 = v34, , , (v35 & 1) == 0))
    {
      v2[16] = v2[4];
      sub_21DBF8E0C();

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v36 = v2[3];
        ObjectType = swift_getObjectType();
        (*(v36 + 8))(ObjectType, v36);
        swift_unknownObjectRelease();
      }
    }
  }
}