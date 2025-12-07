id TTRParticipantModel.contactHandles.getter()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[9];
  if (v3)
  {
    v4 = v0[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_21DC08D00;
    *(v5 + 32) = v4;
    *(v5 + 40) = v3;
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
    if (v1)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21DC08D00;
      *(v6 + 32) = v2;
      *(v6 + 40) = v1;
      if (*(v5 + 16))
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  v6 = MEMORY[0x277D84F90];
  if (*(v5 + 16))
  {
    goto LABEL_8;
  }

LABEL_7:
  if (!*(v6 + 16))
  {
    sub_21DBF8E0C();
    sub_21DBF8E0C();

    return 0;
  }

LABEL_8:
  v7 = objc_allocWithZone(MEMORY[0x277D445D8]);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v8 = sub_21DBFA5DC();

  v9 = sub_21DBFA5DC();

  v10 = [v7 initWithPhones:v8 emails:v9];

  return v10;
}

Swift::String __swiftcall TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(Swift::Bool prefersFirstNameOnly)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[6];
  v7 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  if (prefersFirstNameOnly)
  {
    if (v5)
    {
      v3 = v1[3];
      v4 = v1[2];
      sub_21DBF8E0C();
      goto LABEL_18;
    }

    if (v3)
    {
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      goto LABEL_18;
    }
  }

  else
  {
    if (v3)
    {
      sub_21DBF8E0C();
      goto LABEL_18;
    }

    v12 = v1[4];
    v11 = v1[5];
    v13 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640, &unk_21DC09110);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC08D20;
    *(v14 + 32) = v6;
    *(v14 + 40) = v13;
    *(v14 + 48) = v12;
    *(v14 + 56) = v11;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90, &unk_21DC09D00);
    sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90, &unk_21DC09D00, MEMORY[0x277D83970]);
    v15 = sub_21DBFA41C();

    if (*(v15 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
      sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
      v4 = sub_21DBFA07C();
      v3 = v16;

      goto LABEL_18;
    }
  }

  if (v7)
  {
    sub_21DBF8E0C();
    v4 = v8;
    v3 = v7;
  }

  else if (v9)
  {
    sub_21DBF8E0C();
    v4 = v10;
    v3 = v9;
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF516C();
    v3 = v17;
  }

LABEL_18:
  v18 = v4;
  v19 = v3;
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

Swift::String_optional __swiftcall TTRParticipantModel.monogram()()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  if (!v1 || (v6 = sub_21D1954D0(*v0, v1), !v7))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A20, &unk_21DC09D10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_21DC08D20;
    if (v3)
    {
      *(v8 + 32) = sub_21D1954D0(v2, v3);
      *(v8 + 40) = v9;
      if (v5)
      {
LABEL_5:
        v10 = sub_21D1954D0(v4, v5);
        goto LABEL_8;
      }
    }

    else
    {
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      if (v5)
      {
        goto LABEL_5;
      }
    }

    v10 = 0;
    v11 = 0;
LABEL_8:
    *(v8 + 48) = v10;
    *(v8 + 56) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A28, &qword_21DC3AF20);
    sub_21D0D0F1C(&qword_27CE58A30, &qword_27CE58A28, &qword_21DC3AF20, MEMORY[0x277D83970]);
    v12 = sub_21DBFA41C();

    if (*(v12 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A38, &unk_21DC09D20);
      sub_21D0D0F1C(&qword_27CE58A40, &qword_27CE58A38, &unk_21DC09D20, MEMORY[0x277D83970]);
      v6 = sub_21DBFA3DC();
    }

    else
    {

      v6 = 0;
      v7 = 0;
    }
  }

  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

void __swiftcall TTRParticipantModel.updatingNames(with:)(RemindersUICore::TTRParticipantModel *__return_ptr retstr, CNContact with)
{
  v5 = v2[7];
  v6 = v2[9];
  v22 = v2[8];
  v24 = v2[6];
  v7 = [objc_opt_self() stringFromContact:with.super.isa style:0];
  if (v7)
  {
    v8 = v7;
    v9 = sub_21DBFA16C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [(objc_class *)with.super.isa givenName:v22];
  v13 = sub_21DBFA16C();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    v13 = 0;
    v15 = 0;
  }

  v17 = [(objc_class *)with.super.isa familyName];
  v18 = sub_21DBFA16C();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    v18 = 0;
    v20 = 0;
  }

  retstr->displayName.value._countAndFlagsBits = v9;
  retstr->displayName.value._object = v11;
  retstr->firstName.value._countAndFlagsBits = v13;
  retstr->firstName.value._object = v15;
  retstr->lastName.value._countAndFlagsBits = v18;
  retstr->lastName.value._object = v20;
  retstr->emailAddress.value._countAndFlagsBits = v25;
  retstr->emailAddress.value._object = v5;
  retstr->phoneNumber.value._countAndFlagsBits = v23;
  retstr->phoneNumber.value._object = v6;
  sub_21DBF8E0C();

  sub_21DBF8E0C();
}

uint64_t REMList.participantsToShowForSharingStatus(maxCount:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (![v2 isShared])
  {
    return MEMORY[0x277D84F90];
  }

  v6 = [v2 shareeContext];
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = v6;
    if ([v3 isOwnedByMe])
    {
      v9 = [v8 shareesExcludingOwner];
      v10 = sub_21D0D8CF0(0, &qword_280D17640, 0x277D447E8);
      v11 = sub_21DBFA5EC();

      if (a2)
      {
        goto LABEL_36;
      }

      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_63;
      }

      a2 = v11 >> 62;
      if (v11 >> 62)
      {
        goto LABEL_64;
      }

      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12 >= a1)
      {
        v13 = a1;
      }

      else
      {
        v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a1)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      if (v12 >= v14)
      {
        goto LABEL_14;
      }

LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      swift_unknownObjectRelease_n();
LABEL_28:
      sub_21D198A10(a1, a2, v10, v14, &qword_280D17640, 0x277D447E8);
      v11 = v30;
LABEL_35:
      swift_unknownObjectRelease();
      while (1)
      {
LABEL_36:
        if (v11 >> 62)
        {
          v10 = sub_21DBFBD7C();
          if (!v10)
          {
LABEL_59:

            return MEMORY[0x277D84F90];
          }
        }

        else
        {
          v10 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v10)
          {
            goto LABEL_59;
          }
        }

        v62 = v7;
        v7 = &v62;
        sub_21D18E75C(0, v10 & ~(v10 >> 63), 0);
        if ((v10 & 0x8000000000000000) == 0)
        {
          break;
        }

        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        v58 = sub_21DBFBD7C();
        result = sub_21DBFBD7C();
        if (result < 0)
        {
          __break(1u);
          return result;
        }

        if (v58 >= a1)
        {
          v59 = a1;
        }

        else
        {
          v59 = v58;
        }

        if (v58 < 0)
        {
          v59 = a1;
        }

        if (a1)
        {
          v14 = v59;
        }

        else
        {
          v14 = 0;
        }

        if (sub_21DBFBD7C() < v14)
        {
          goto LABEL_74;
        }

LABEL_14:
        if ((v11 & 0xC000000000000001) != 0)
        {
          sub_21DBF8E0C();
          if (v14)
          {
            v15 = 0;
            do
            {
              v16 = v15 + 1;
              sub_21DBFBF6C();
              v15 = v16;
            }

            while (v14 != v16);
          }
        }

        else
        {
          sub_21DBF8E0C();
        }

        if (a2)
        {
          a1 = sub_21DBFC3BC();
          a2 = v27;
          v10 = v28;
          v14 = v29;

          if ((v14 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v10 = 0;
          a1 = v11 & 0xFFFFFFFFFFFFFF8;
          a2 = (v11 & 0xFFFFFFFFFFFFFF8) + 32;
          v14 = (2 * v14) | 1;
          if ((v14 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        sub_21DBFC66C();
        swift_unknownObjectRetain_n();
        v31 = swift_dynamicCastClass();
        if (!v31)
        {
          swift_unknownObjectRelease();
          v31 = MEMORY[0x277D84F90];
        }

        v32 = *(v31 + 16);

        if (__OFSUB__(v14 >> 1, v10))
        {
          goto LABEL_75;
        }

        if (v32 != (v14 >> 1) - v10)
        {
          goto LABEL_76;
        }

        v11 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (!v11)
        {
          v11 = MEMORY[0x277D84F90];
          goto LABEL_35;
        }
      }

      v33 = 0;
      v7 = v62;
      if ((v11 & 0xC000000000000001) == 0)
      {
        goto LABEL_41;
      }

LABEL_40:
      for (i = MEMORY[0x223D44740](v33, v11); ; i = *(v11 + 8 * v33 + 32))
      {
        TTRParticipantModel.init(sharee:)(i, &v63);
        v62 = v7;
        v36 = v7[2];
        v35 = v7[3];
        if (v36 >= v35 >> 1)
        {
          sub_21D18E75C((v35 > 1), v36 + 1, 1);
          v7 = v62;
        }

        v7[2] = v36 + 1;
        v37 = &v7[10 * v36];
        v37[2] = v63;
        v38 = v64;
        v39 = v65;
        v40 = v67;
        v37[5] = v66;
        v37[6] = v40;
        v37[3] = v38;
        v37[4] = v39;
        if (v10 - 1 == v33)
        {
          break;
        }

        ++v33;
        if ((v11 & 0xC000000000000001) != 0)
        {
          goto LABEL_40;
        }

LABEL_41:
        ;
      }

      goto LABEL_57;
    }

    v17 = [v8 sharedOwner];
    if (v17)
    {
      TTRParticipantModel.init(sharee:)(v17, &v63);
      v19 = *(&v63 + 1);
      v18 = v63;
      v21 = *(&v64 + 1);
      v20 = v64;
      v60 = v66;
      v61 = v65;
      v23 = *(&v67 + 1);
      v22 = v67;
LABEL_56:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589C8, &qword_21DC34FC0);
      v7 = swift_allocObject();
      *(v7 + 1) = xmmword_21DC08D00;
      v7[4] = v18;
      v7[5] = v19;
      v7[6] = v20;
      v7[7] = v21;
      *(v7 + 4) = v61;
      *(v7 + 5) = v60;
      v7[12] = v22;
      v7[13] = v23;
      goto LABEL_57;
    }

    v24 = [v3 sharedOwnerName];
    if (v24)
    {
      v25 = v24;
      v18 = sub_21DBFA16C();
      v19 = v26;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    v41 = [v3 sharedOwnerAddress];
    if (v41)
    {
      v42 = v41;
      sub_21DBFA16C();

      sub_21DBFA1BC();

      v43 = sub_21DBFA12C();
      v44 = [v43 rem_hasMailto];

      v45 = sub_21DBFA12C();
      v46 = v45;
      if (v44)
      {

        v47 = [v46 rem_removingMailto];

        v48 = sub_21DBFA16C();
        v50 = v49;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589C8, &qword_21DC34FC0);
        v7 = swift_allocObject();
        *(v7 + 1) = xmmword_21DC08D00;
        v7[4] = v18;
        v7[5] = v19;
        *(v7 + 3) = 0u;
        *(v7 + 4) = 0u;
        v7[10] = v48;
        v7[11] = v50;
        v7[12] = 0;
        v7[13] = 0;
LABEL_57:

        return v7;
      }

      v51 = [v45 rem_hasTel];

      if (v51)
      {
        v52 = sub_21DBFA12C();

        v53 = [v52 rem_removingTel];

        v54 = sub_21DBFA16C();
        v56 = v55;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589C8, &qword_21DC34FC0);
        v7 = swift_allocObject();
        *(v7 + 1) = xmmword_21DC08D00;
        v7[4] = v18;
        v7[5] = v19;
        *(v7 + 3) = 0u;
        *(v7 + 4) = 0u;
        *(v7 + 5) = 0u;
        v7[12] = v54;
        v7[13] = v56;
        goto LABEL_57;
      }
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v60 = 0u;
    v61 = 0u;
    goto LABEL_56;
  }

  return v7;
}

uint64_t static TTRSharedWithYouModel.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v4 = [v2 remObjectID];
  v5 = [v3 remObjectID];
  LOBYTE(v3) = sub_21DBFB63C();

  return v3 & 1;
}

uint64_t TTRSharedWithYouModel.hashValue.getter()
{
  sub_21DBFC7DC();
  sub_21DBFB64C();
  return sub_21DBFC82C();
}

uint64_t sub_21D1970A4()
{
  sub_21DBFC7DC();
  sub_21DBFB64C();
  return sub_21DBFC82C();
}

uint64_t sub_21D19710C(uint64_t a1)
{
  sub_21DBFC7DC();
  sub_21DBFB64C();
  return sub_21DBFC82C();
}

uint64_t sub_21D19714C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v4 = [v2 remObjectID];
  v5 = [v3 remObjectID];
  LOBYTE(v3) = sub_21DBFB63C();

  return v3 & 1;
}

id REMList.highlightToShowForSharingStatus()@<X0>(void *a1@<X8>)
{
  result = [v1 isShared];
  if (result)
  {
    result = v1;
  }

  else
  {
    v1 = 0;
  }

  *a1 = v1;
  return result;
}

void REMList.fetchSectionLite(containingReminderWith:)(uint64_t (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, _OWORD *a2@<X8>)
{
  v102 = a1;
  v4 = sub_21DBF6F4C();
  v97 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v94 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v93 = &v77 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A48, &qword_21DC09D30);
  MEMORY[0x28223BE20](v8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v92 = &v77 - v12;
  MEMORY[0x28223BE20](v13);
  v96 = &v77 - v14;
  v15 = sub_21DBF6D7C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21DBF6F8C();
  v100 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v99 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A50, &qword_21DC09D38);
  MEMORY[0x28223BE20](v20 - 8);
  v90 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v91 = &v77 - v23;
  MEMORY[0x28223BE20](v24);
  v95 = &v77 - v25;
  *&v27 = MEMORY[0x28223BE20](v26).n128_u64[0];
  v29 = &v77 - v28;
  v30 = [v2 sectionContext];
  if (!v30)
  {
    goto LABEL_14;
  }

  v31 = v30;
  if (![v30 hasSections])
  {

LABEL_14:
    *a2 = 1;
    v41 = 0uLL;
    *(a2 + 8) = 0u;
LABEL_25:
    *(a2 + 24) = v41;
    return;
  }

  v32 = sub_21D197D70();
  v83 = *(v32 + 16);
  v88 = a2;
  v89 = v29;
  v86 = v4;
  v87 = v31;
  v79 = v8;
  v78 = v10;
  if (v83)
  {
    v33 = 0;
    v34 = v100;
    v35 = v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v101 = v16 + 16;
    v36 = (v16 + 8);
    v80 = (v100 + 8);
    v37 = v98;
    v85 = v32;
    v82 = v35;
    v81 = v100 + 16;
    while (2)
    {
      if (v33 >= *(v32 + 16))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v84 = v33 + 1;
      (*(v34 + 16))(v99, v35 + *(v34 + 72) * v33, v37);
      v10 = sub_21DBF6F7C();
      v38 = 0;
      v39 = *(v10 + 2);
      while (v39 != v38)
      {
        if (v38 >= *(v10 + 2))
        {
          __break(1u);
          goto LABEL_37;
        }

        (*(v16 + 16))(v18, &v10[((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v38++], v15);
        sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
        v8 = sub_21DBF6D5C();
        v40 = sub_21DBFB63C();

        (*(v16 + 8))(v18, v15);
        if (v40)
        {

          v42 = v100;
          v29 = v89;
          v37 = v98;
          (*(v100 + 32))(v89, v99, v98);
          v43 = 0;
          v31 = v87;
          a2 = v88;
          goto LABEL_16;
        }
      }

      v37 = v98;
      (*v80)(v99, v98);
      v33 = v84;
      v34 = v100;
      v32 = v85;
      v35 = v82;
      if (v84 != v83)
      {
        continue;
      }

      break;
    }

    v43 = 1;
    v42 = v34;
    a2 = v88;
    v29 = v89;
    v31 = v87;
  }

  else
  {

    v43 = 1;
    v37 = v98;
    v42 = v100;
  }

LABEL_16:
  (*(v42 + 56))(v29, v43, 1, v37);
  v44 = v95;
  sub_21D1993C8(v29, v95);
  v102 = *(v42 + 48);
  v45 = v102(v44, 1, v37);
  v46 = v97;
  if (v45 == 1)
  {
    sub_21D0CF7E0(v44, &qword_27CE58A50, &qword_21DC09D38);
    v47 = v96;
    v8 = v86;
    (v46[7])(v96, 1, 1, v86);
    sub_21D0CF7E0(v47, &qword_27CE58A48, &qword_21DC09D30);
    v48 = *MEMORY[0x277D453D8];
    v49 = *MEMORY[0x277D453E0];
    goto LABEL_18;
  }

  v56 = v96;
  sub_21DBF6F5C();
  v10 = *(v42 + 8);
  v100 = v42 + 8;
  (v10)(v44, v37);
  v8 = v86;
  v36 = v46[7];
  v36(v56, 0, 1, v86);
  v57 = v92;
  sub_21D199438(v56, v92);
  v58 = (v46[11])(v57, v8);
  v49 = *MEMORY[0x277D453E0];
  if (v58 == *MEMORY[0x277D453E0])
  {
    sub_21D0CF7E0(v89, &qword_27CE58A50, &qword_21DC09D38);

    (v46[12])(v57, v8);
    v59 = *(v57 + 16);
    a2 = v88;
    *v88 = *v57;
    *(a2 + 2) = v59;
    v41 = *(v57 + 24);
    goto LABEL_25;
  }

  v48 = v58;
  if (v58 != *MEMORY[0x277D453D8])
  {
    (v46[1])(v57, v8);
    if (qword_27CE56560 == -1)
    {
LABEL_29:
      v60 = sub_21DBF84BC();
      __swift_project_value_buffer(v60, qword_27CE58A08);
      v61 = v89;
      v62 = v91;
      sub_21D1993C8(v89, v91);
      v63 = sub_21DBF84AC();
      v64 = sub_21DBFAEBC();
      if (os_log_type_enabled(v63, v64))
      {
        LODWORD(v101) = v64;
        v65 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v103 = v97;
        v99 = v65;
        *v65 = 136315138;
        v66 = v90;
        sub_21D1993C8(v62, v90);
        v67 = v98;
        if (v102(v66, 1, v98) == 1)
        {
          sub_21D0CF7E0(v66, &qword_27CE58A50, &qword_21DC09D38);
          v68 = 1;
          v69 = v78;
        }

        else
        {
          v69 = v78;
          sub_21DBF6F5C();
          (v10)(v66, v67);
          v68 = 0;
        }

        v36(v69, v68, 1, v8);
        v71 = sub_21DBFA1AC();
        v73 = v72;
        sub_21D0CF7E0(v91, &qword_27CE58A50, &qword_21DC09D38);
        v74 = sub_21D0CDFB4(v71, v73, &v103);

        v75 = v99;
        *(v99 + 4) = v74;
        _os_log_impl(&dword_21D0C9000, v63, v101, "Unknown section type {type: %s}", v75, 0xCu);
        v76 = v97;
        __swift_destroy_boxed_opaque_existential_0(v97);
        MEMORY[0x223D46520](v76, -1, -1);
        MEMORY[0x223D46520](v75, -1, -1);

        v70 = v89;
      }

      else
      {

        sub_21D0CF7E0(v62, &qword_27CE58A50, &qword_21DC09D38);
        v70 = v61;
      }

      sub_21D0CF7E0(v70, &qword_27CE58A50, &qword_21DC09D38);
      a2 = v88;
      goto LABEL_14;
    }

LABEL_38:
    swift_once();
    goto LABEL_29;
  }

  a2 = v88;
  v29 = v89;
  v31 = v87;
LABEL_18:
  v50 = v93;
  (v46[13])(v93, v48, v8);
  v51 = v94;
  (v46[2])(v94, v50, v8);
  v52 = (v46[11])(v51, v8);
  if (v52 == v49)
  {

    (v46[1])(v50, v8);
    sub_21D0CF7E0(v29, &qword_27CE58A50, &qword_21DC09D38);
    (v46[12])(v51, v8);
    v53 = *v51;
    v54 = *(v51 + 1);
    v55 = *(v51 + 2);
    v41 = *(v51 + 24);
LABEL_24:
    *a2 = v53;
    *(a2 + 1) = v54;
    *(a2 + 2) = v55;
    goto LABEL_25;
  }

  if (v52 == v48)
  {

    (v46[1])(v50, v8);
    sub_21D0CF7E0(v29, &qword_27CE58A50, &qword_21DC09D38);
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v41 = 0uLL;
    goto LABEL_24;
  }

  sub_21DBFC63C();
  __break(1u);
}

uint64_t sub_21D197D70()
{
  v0 = sub_21DBF719C();
  v40 = *(v0 - 8);
  v41 = v0;
  MEMORY[0x28223BE20](v0);
  v39 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_21DBF6DBC();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A70, &unk_21DC09E80);
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v48 = &v33 - v4;
  v5 = sub_21DBF714C();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_21DBF734C();
  v7 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_21DBF71BC();
  v9 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_21DBF70DC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21DBF738C();
  v50 = *(v16 - 8);
  v51 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  *(inited + 32) = sub_21DBFADFC();
  sub_21D1CDECC(inited);
  v21 = v20;
  swift_setDeallocating();
  swift_arrayDestroy();
  v22 = v12;
  v23 = v49;
  (*(v13 + 104))(v15, *MEMORY[0x277D45420], v22);
  *v11 = v21;
  v24 = v18;
  (*(v9 + 104))(v11, *MEMORY[0x277D45480], v42);
  (*(v7 + 104))(v43, *MEMORY[0x277D45500], v44);
  (*(v46 + 104))(v45, *MEMORY[0x277D45458], v47);
  v25 = v48;
  sub_21DBF737C();
  v26 = [v23 store];
  sub_21DBF6D0C();

  v27 = v36;
  v28 = v35;
  sub_21DBF76DC();
  v29 = (*(v34 + 8))(v25, v28);
  v30 = v39;
  MEMORY[0x223D3F550](v29);
  (*(v37 + 8))(v27, v38);
  v31 = sub_21DBF718C();
  (*(v40 + 8))(v30, v41);
  (*(v50 + 8))(v24, v51);
  return v31;
}

unint64_t *sub_21D1984D0(unint64_t *result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  if (!(a4 >> 62))
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v10 = v8;
    v8 = 0;
    goto LABEL_25;
  }

LABEL_23:
  result = sub_21DBFBD7C();
  v8 = result;
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v10 = v8;
    v8 = 0;
LABEL_25:
    *v7 = a4;
    v7[1] = v10;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 1;
    v10 = v8;
    while (v10)
    {
      v11 = __OFSUB__(v10--, 1);
      if (v11)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x223D44740](v10, a4);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v10 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }
      }

      *v6 = v12;
      if (a3 == v9)
      {
        v8 = a3;
        goto LABEL_25;
      }

      ++v6;
      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D1985F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_21D1986C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58630, &qword_21DC0CAB0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_21D198784(unint64_t *a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_21D9D9774();
    sub_21DBF8E0C();
    v1 = sub_21D1984D0(&v5, (v3 + 32), v2, v1);

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_21DBFBD7C();
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_21D19885C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A68, &qword_21DC2F480);
      v7 = *(sub_21DBF5C4C() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_21DBF5C4C();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_21D198A10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
LABEL_7:
        sub_21D0D8CF0(0, a5, a6);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v13 = v12 - 32;
      if (v12 < 32)
      {
        v13 = v12 - 25;
      }

      v11[2] = v7;
      v11[3] = (2 * (v13 >> 3)) | 1;
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_21D198B78(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t (*)(uint64_t *, char *, uint64_t, uint64_t, __n128), uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_21DBFBD7C();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);
    sub_21DBF8E0C();
    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_21D0CFAF8(v8);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

char *sub_21D198C64(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t (*)(uint64_t *, char *, uint64_t, uint64_t, __n128), uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_21DBFBD7C();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);
    sub_21DBF8E0C();
    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_21D0CFAF8(v8);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

void (*sub_21D198D24(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D44740](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return destroy for TTRIStaticTableViewStandardCell.TextColor;
  }

  __break(1u);
  return result;
}

void (*sub_21D198DA4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D44740](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return destroy for TTREditingOption;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_21D198E24(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D44740](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return j__s15RemindersUICore29TTRRemindersListTreeViewModelC13AuxiliaryDataVwxx;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_21D198EA4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D44740](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return destroy for TTRIReminderLocationPickerViewController.Argument;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_21D198F2C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D44740](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return destroy for TTRRemindersListTreeViewModel.AuxiliaryData;
  }

  __break(1u);
  return result;
}

void sub_21D198FB4(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_21DBFC22C();
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_21DBFC26C() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_21DBFC27C();
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  swift_dynamicCast();
  v5 = sub_21D17E07C(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 48) + 8 * a1);

  v9 = v8;
}

uint64_t sub_21D199144(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t _s15RemindersUICore19TTRParticipantModelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v10 = a1[7];
  v9 = a1[8];
  v11 = a1[9];
  v12 = a2[1];
  v13 = a2[2];
  v15 = a2[3];
  v14 = a2[4];
  v17 = a2[5];
  v16 = a2[6];
  v18 = a2[7];
  v19 = a2[8];
  v20 = a2[9];
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v12)
    {
      v45 = a1[7];
      v47 = a2[7];
      v43 = a2[8];
      v44 = a1[6];
      v41 = a1[9];
      v42 = a2[9];
      v21 = a1[8];
      v22 = a2[6];
      v23 = a1[5];
      v24 = a1[4];
      v25 = a2[5];
      v26 = a2[4];
      v27 = a2[2];
      v28 = sub_21DBFC64C();
      v13 = v27;
      v14 = v26;
      v17 = v25;
      v5 = v24;
      v7 = v23;
      v16 = v22;
      v9 = v21;
      v11 = v41;
      v20 = v42;
      v19 = v43;
      v8 = v44;
      v10 = v45;
      v18 = v47;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != v13 || v6 != v15)
    {
      v46 = v9;
      v48 = v17;
      v29 = v16;
      v30 = v7;
      v31 = v5;
      v32 = v14;
      v33 = sub_21DBFC64C();
      v14 = v32;
      v9 = v46;
      v17 = v48;
      v5 = v31;
      v7 = v30;
      v16 = v29;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v7)
  {
    if (!v17)
    {
      return 0;
    }

    if (v5 != v14 || v7 != v17)
    {
      v34 = v18;
      v35 = v9;
      v36 = v16;
      v37 = sub_21DBFC64C();
      v16 = v36;
      v9 = v35;
      v18 = v34;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v10)
  {
    if (!v18)
    {
      return 0;
    }

    if (v8 != v16 || v10 != v18)
    {
      v38 = v9;
      v39 = sub_21DBFC64C();
      v9 = v38;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v11)
  {
    if (v20 && (v9 == v19 && v11 == v20 || (sub_21DBFC64C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v20)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21D1993C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A50, &qword_21DC09D38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D199438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A48, &qword_21DC09D30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21D1994AC()
{
  result = qword_27CE58A58;
  if (!qword_27CE58A58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRParticipantModel, &type metadata for TTRParticipantModel, v0, v1);
    atomic_store(result, &qword_27CE58A58);
  }

  return result;
}

unint64_t sub_21D199504()
{
  result = qword_27CE58A60;
  if (!qword_27CE58A60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRSharedWithYouModel, &type metadata for TTRSharedWithYouModel, v0, v1);
    atomic_store(result, &qword_27CE58A60);
  }

  return result;
}

double destroy for TTRParticipantModel(void *a1)
{

  return result;
}

void *initializeWithCopy for TTRParticipantModel(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for TTRParticipantModel(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  a1[3] = a2[3];
  sub_21DBF8E0C();

  a1[4] = a2[4];
  a1[5] = a2[5];
  sub_21DBF8E0C();

  a1[6] = a2[6];
  a1[7] = a2[7];
  sub_21DBF8E0C();

  a1[8] = a2[8];
  a1[9] = a2[9];
  sub_21DBF8E0C();

  return a1;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

void *assignWithTake for TTRParticipantModel(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;

  v7 = a2[7];
  a1[6] = a2[6];
  a1[7] = v7;

  v8 = a2[9];
  a1[8] = a2[8];
  a1[9] = v8;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRParticipantModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for TTRParticipantModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t TTRAnyReminderTextEditingSuggestion.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v59 = a3;
  v60 = a1;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v8;
  v10 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4[3] = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
  v14 = v7 + 16;
  v13 = *(v7 + 16);
  v54 = v13;
  v13(boxed_opaque_existential_0, a1, a2);
  v13(v10, a1, a2);
  v15 = *(v7 + 80);
  v55 = v9;
  v56 = v15;
  v16 = (v15 + 32) & ~v15;
  v17 = swift_allocObject();
  v18 = v59;
  *(v17 + 16) = a2;
  *(v17 + 24) = v18;
  v19 = *(v7 + 32);
  v58 = v7 + 32;
  v19(v17 + v16, v10, a2);
  v20 = v19;
  v52 = a4;
  a4[4] = sub_21D199DFC;
  a4[5] = v17;
  v21 = v54;
  v54(v10, v60, a2);
  v53 = v14;
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = v18;
  v20(v22 + v16, v10, a2);
  v23 = v52;
  v52[6] = sub_21D199E64;
  v23[7] = v22;
  v24 = v60;
  v21(v10, v60, a2);
  v25 = swift_allocObject();
  v26 = v59;
  *(v25 + 16) = a2;
  *(v25 + 24) = v26;
  v20(v25 + v16, v10, a2);
  v27 = v20;
  v57 = v20;
  v28 = v52;
  v52[8] = sub_21D199ECC;
  v28[9] = v25;
  v29 = v10;
  v30 = v10;
  v31 = v54;
  v54(v29, v24, a2);
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = v26;
  v27(v32 + v16, v30, a2);
  v28[10] = sub_21D199F34;
  v28[11] = v32;
  v33 = v60;
  v31(v30, v60, a2);
  v34 = swift_allocObject();
  v35 = v59;
  *(v34 + 16) = a2;
  *(v34 + 24) = v35;
  v36 = v30;
  v57(v34 + v16, v30, a2);
  v37 = v52;
  v52[12] = sub_21D199F9C;
  v37[13] = v34;
  v38 = v54;
  v54(v30, v33, a2);
  v39 = swift_allocObject();
  *(v39 + 16) = a2;
  *(v39 + 24) = v35;
  v40 = v57;
  v57(v39 + v16, v30, a2);
  v37[14] = sub_21D19A004;
  v37[15] = v39;
  v41 = v60;
  v38(v30, v60, a2);
  v42 = swift_allocObject();
  v43 = v59;
  *(v42 + 16) = a2;
  *(v42 + 24) = v43;
  v40(v42 + v16, v30, a2);
  v37[16] = sub_21D19A06C;
  v37[17] = v42;
  v44 = v54;
  v54(v36, v41, a2);
  v45 = swift_allocObject();
  *(v45 + 16) = a2;
  *(v45 + 24) = v43;
  v57(v45 + v16, v36, a2);
  v37[18] = sub_21D19A2F4;
  v37[19] = v45;
  v44(v36, v60, a2);
  v46 = swift_allocObject();
  v47 = v59;
  *(v46 + 16) = a2;
  *(v46 + 24) = v47;
  v48 = v57;
  v57(v46 + v16, v36, a2);
  v37[20] = sub_21D19A538;
  v37[21] = v46;
  v48(v36, v60, a2);
  v49 = swift_allocObject();
  *(v49 + 16) = a2;
  *(v49 + 24) = v47;
  result = (v48)(v49 + v16, v36, a2);
  v37[22] = sub_21D19A780;
  v37[23] = v49;
  return result;
}

uint64_t sub_21D19A0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-v8];
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0CEB98(a1, v18);
  v14 = swift_dynamicCast();
  v15 = *(v10 + 56);
  if (v14)
  {
    v15(v9, 0, 1, a3);
    (*(v10 + 32))(v13, v9, a3);
    v16 = sub_21DBFA10C();
    (*(v10 + 8))(v13, a3);
  }

  else
  {
    v15(v9, 1, 1, a3);
    (*(v7 + 8))(v9, v6);
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_21D19A30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20[-v10];
  v12 = *(a3 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0CEB98(a1, v20);
  v16 = swift_dynamicCast();
  v17 = *(v12 + 56);
  if (v16)
  {
    v17(v11, 0, 1, a3);
    (*(v12 + 32))(v15, v11, a3);
    v18 = (*(*(a4 + 8) + 16))(a2, v15, a3);
    (*(v12 + 8))(v15, a3);
  }

  else
  {
    v17(v11, 1, 1, a3);
    (*(v9 + 8))(v11, v8);
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_21D19A550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20[-v10];
  v12 = *(a3 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0CEB98(a1, v20);
  v16 = swift_dynamicCast();
  v17 = *(v12 + 56);
  if (v16)
  {
    v17(v11, 0, 1, a3);
    (*(v12 + 32))(v15, v11, a3);
    v18 = (*(*(*(a4 + 8) + 8) + 8))(a2, v15, a3);
    (*(v12 + 8))(v15, a3);
  }

  else
  {
    v17(v11, 1, 1, a3);
    (*(v9 + 8))(v11, v8);
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t TTRAnyReminderTextEditingSuggestion.isInlineHashtagSuggestion.getter()
{
  sub_21D0CEB98(v0, v3);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t TTRAnyReminderTextEditingSuggestion.isNLPSuggestion.getter()
{
  v1 = v0;
  v21 = sub_21DBF7A0C();
  v2 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF79FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A78, &qword_21DC09E90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0CEB98(v1, v22);
  v16 = swift_dynamicCast();
  v17 = *(v13 + 56);
  if (v16)
  {
    v17(v11, 0, 1, v12);
    sub_21D19AF08(v11, v15);
    (*(v2 + 104))(v4, *MEMORY[0x277D456F0], v21);
    sub_21DBF79EC();
    v18 = sub_21DBF79BC();
    (*(v6 + 8))(v8, v5);
    sub_21D19B204(v15, type metadata accessor for TTRReminderSuggestedAttribute);
  }

  else
  {
    v17(v11, 1, 1, v12);
    sub_21D19AEA0(v11);
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_21D19AEA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A78, &qword_21DC09E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D19AF08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL TTRAnyReminderTextEditingSuggestion.isAssigneeSuggestion.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A78, &qword_21DC09E90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16[-v6];
  v8 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0CEB98(v1, v16);
  v12 = swift_dynamicCast();
  v13 = *(v9 + 56);
  if (v12)
  {
    v13(v7, 0, 1, v8);
    sub_21D19AF08(v7, v11);
    sub_21D19B1A0(v11, v4);
    sub_21D19B204(v11, type metadata accessor for TTRReminderSuggestedAttribute);
    v14 = swift_getEnumCaseMultiPayload() == 5;
    sub_21D19B204(v4, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  }

  else
  {
    v13(v7, 1, 1, v8);
    sub_21D19AEA0(v7);
    return 0;
  }

  return v14;
}

uint64_t sub_21D19B1A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D19B204(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t TTRAnyReminderTextEditingSuggestion.isAutoCompleteSuggestion.getter()
{
  v1 = v0;
  v2 = sub_21DBF7A0C();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF79FC();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A78, &qword_21DC09E90);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0CEB98(v1, v26);
  v18 = swift_dynamicCast();
  v19 = *(v15 + 56);
  if (!v18)
  {
    v19(v13, 1, 1, v14);
    sub_21D19AEA0(v13);
LABEL_6:
    v20 = 0;
    return v20 & 1;
  }

  v19(v13, 0, 1, v14);
  sub_21D19AF08(v13, v17);
  sub_21D19B1A0(v17, v10);
  if (swift_getEnumCaseMultiPayload() != 10)
  {
    sub_21D19B204(v17, type metadata accessor for TTRReminderSuggestedAttribute);
    sub_21D19B204(v10, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    goto LABEL_6;
  }

  sub_21D19B204(v10, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  (*(v24 + 104))(v4, *MEMORY[0x277D45708], v25);
  sub_21DBF79EC();
  v20 = sub_21DBF79BC();
  (*(v23 + 8))(v7, v5);
  sub_21D19B204(v17, type metadata accessor for TTRReminderSuggestedAttribute);
  return v20 & 1;
}

void *TTRAnyReminderTextEditingSuggestion.autoCompleteSuggestionReminder.getter()
{
  v1 = v0;
  v2 = sub_21DBF7A0C();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF79FC();
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A78, &qword_21DC09E90);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0CEB98(v1, v27);
  v18 = swift_dynamicCast();
  v19 = *(v15 + 56);
  if (v18)
  {
    v19(v13, 0, 1, v14);
    sub_21D19AF08(v13, v17);
    sub_21D19B1A0(v17, v10);
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      v20 = *v10;

      (*(v25 + 104))(v4, *MEMORY[0x277D45708], v26);
      sub_21DBF79EC();
      v21 = sub_21DBF79BC();
      (*(v24 + 8))(v7, v5);
      sub_21D19B204(v17, type metadata accessor for TTRReminderSuggestedAttribute);
      if (v21)
      {
        return v20;
      }
    }

    else
    {
      sub_21D19B204(v17, type metadata accessor for TTRReminderSuggestedAttribute);
      sub_21D19B204(v10, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    }
  }

  else
  {
    v19(v13, 1, 1, v14);
    sub_21D19AEA0(v13);
  }

  return 0;
}

unint64_t sub_21D19B9E4(uint64_t a1)
{
  result = sub_21D19BA0C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21D19BA0C()
{
  result = qword_27CE58A80;
  if (!qword_27CE58A80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRAnyReminderTextEditingSuggestion, &type metadata for TTRAnyReminderTextEditingSuggestion, v0, v1);
    atomic_store(result, &qword_27CE58A80);
  }

  return result;
}

id sub_21D19BA60(id result, id a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (!a3)
    {
      v5 = result;
      v4 = a2;
      result = v5;

      return result;
    }

    if (a3 != 1)
    {
      if (a3 != 2)
      {
        return result;
      }

      result = a2;

      return result;
    }

LABEL_9:

    return result;
  }

  if (a3 - 3 < 2)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_21D19BAFC(id a1, id a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    if (a3 - 3 >= 2)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!a3)
  {

LABEL_9:
    a1 = a2;
    goto LABEL_10;
  }

  if (a3 != 1)
  {
    if (a3 != 2)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_10:
}

uint64_t sub_21D19BB70(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D19BA60(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRReminderTextEditingSuggestionIconInfo(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D19BA60(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_21D19BAFC(v6, v7, v8);
  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TTRReminderTextEditingSuggestionIconInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_21D19BAFC(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderTextEditingSuggestionIconInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderTextEditingSuggestionIconInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t destroy for TTRAnyReminderTextEditingSuggestion(void *a1)
{
  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t initializeWithCopy for TTRAnyReminderTextEditingSuggestion(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  v5 = *(a2 + 184);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = v5;

  return a1;
}

uint64_t *assignWithCopy for TTRAnyReminderTextEditingSuggestion(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_0(a1, a2);
  v4 = a2[5];
  a1[4] = a2[4];
  a1[5] = v4;

  v5 = a2[7];
  a1[6] = a2[6];
  a1[7] = v5;

  v6 = a2[9];
  a1[8] = a2[8];
  a1[9] = v6;

  v7 = a2[11];
  a1[10] = a2[10];
  a1[11] = v7;

  v8 = a2[13];
  a1[12] = a2[12];
  a1[13] = v8;

  v9 = a2[15];
  a1[14] = a2[14];
  a1[15] = v9;

  v10 = a2[17];
  a1[16] = a2[16];
  a1[17] = v10;

  v11 = a2[19];
  a1[18] = a2[18];
  a1[19] = v11;

  v12 = a2[21];
  a1[20] = a2[20];
  a1[21] = v12;

  v13 = a2[23];
  a1[22] = a2[22];
  a1[23] = v13;

  return a1;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t assignWithTake for TTRAnyReminderTextEditingSuggestion(uint64_t a1, _OWORD *a2)
{
  __swift_destroy_boxed_opaque_existential_0(a1);
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = a2[2];

  *(a1 + 48) = a2[3];

  *(a1 + 64) = a2[4];

  *(a1 + 80) = a2[5];

  *(a1 + 96) = a2[6];

  *(a1 + 112) = a2[7];

  *(a1 + 128) = a2[8];

  *(a1 + 144) = a2[9];

  *(a1 + 160) = a2[10];

  *(a1 + 176) = a2[11];

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAnyReminderTextEditingSuggestion(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t storeEnumTagSinglePayload for TTRAnyReminderTextEditingSuggestion(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21D19C268(unint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_21DBFBD7C();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v5 = sub_21D19F2B8(&qword_280D17870, &qword_280D17880, 0x277D44700);
  v18[1] = MEMORY[0x223D43280](v3, v4, v5);
  if (v2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v1 = sub_21DBFC21C() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v1 + 32);
    v6 = v1 + 64;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 64);
  }

  v12 = 0;
  while ((v1 & 0x8000000000000000) != 0)
  {
    if (!sub_21DBFC2EC() || (swift_dynamicCast(), (v17 = v18[0]) == 0))
    {
LABEL_21:
      sub_21D0CFAF8(v1);
      return;
    }

LABEL_11:
    sub_21D29B0D0(v18, v17);
  }

  v13 = v12;
  v14 = v8;
  v15 = v12;
  if (v8)
  {
LABEL_17:
    v16 = *(*(v1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v16)
    {
      goto LABEL_21;
    }

    v17 = v16;
    v8 = (v14 - 1) & v14;
    v12 = v15;
    goto LABEL_11;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_21D19C45C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v4 = sub_21D19F2B8(&qword_280D17870, &qword_280D17880, 0x277D44700);
  v5 = 0;
  v12[1] = MEMORY[0x223D43280](v2, v3, v4);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_21D29B0D0(v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11))));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t TTRRemindersBoardPresentationTreesManagementViewCapability.observableColumnPresentationTrees.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t TTRRemindersBoardPresentationTreesManagementViewCapability.__allocating_init(mainDataSource:makeUpdatesForReloadingView:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  TTRRemindersBoardPresentationTreesManagementViewCapability.init(mainDataSource:makeUpdatesForReloadingView:)(a1, a2, a3);
  return v6;
}

void *TTRRemindersBoardPresentationTreesManagementViewCapability.init(mainDataSource:makeUpdatesForReloadingView:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = 0;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A88, &unk_21DC09FB0);
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84F98];
  v7[3] = v6;
  v7[4] = v8;
  v7[2] = sub_21D19CB78;
  swift_beginAccess();
  v3[2] = v7;

  return v3;
}

uint64_t sub_21D19C7A0@<X0>(uint64_t a1@<X0>, void (*a2)(__n128)@<X2>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A98, &qword_21DC09FC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v30 - v17;
  a2(v16);
  sub_21D0D523C(v18, v14, &qword_27CE58A98, &qword_21DC09FC0);
  v19 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates(0);
  if ((*(*(v19 - 8) + 48))(v14, 1, v19) == 1)
  {
    sub_21D0CF7E0(v14, &qword_27CE58A98, &qword_21DC09FC0);
    v20 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdatesForColumn(0);
    return (*(*(v20 - 8) + 56))(a3, 1, 1, v20);
  }

  else
  {
    v33 = *v14;
    v22 = *(v19 + 20);
    v32 = type metadata accessor for TTRRemindersBoardPresentationTrees;
    sub_21D19FB04(&v14[v22], v11, type metadata accessor for TTRRemindersBoardPresentationTrees);
    v23 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdatesForColumn(0);
    v24 = &a3[*(v23 + 20)];
    v31 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
    v25 = *(v31 + 24);
    sub_21D19FB04(a1, &v24[v25], type metadata accessor for TTRRemindersListViewModel.ItemID);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AE8, &qword_21DC0A070);
    v26 = a3;
    v27 = swift_allocObject();
    v30 = *(v11 + 40);
    *(v27 + 16) = v30;
    sub_21D19FB04(&v24[v25], v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AF0, &qword_21DC0A078);
    v28 = swift_allocObject();
    v28[2] = v27;
    sub_21D19FB6C(v8, v28 + *(*v28 + 104), type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D19FB04(v11, v24, v32);
    *&v24[*(v31 + 20)] = v28;
    swift_unknownObjectRetain();
    sub_21D19FBD4(v11, type metadata accessor for TTRRemindersBoardPresentationTrees);
    v29 = *&v14[*(v19 + 24)];
    *v26 = v33;
    *&v26[*(v23 + 24)] = v29;
    sub_21DBF8E0C();
    sub_21D19FBD4(v14, type metadata accessor for TTRRemindersBoardPresentationTreeUpdates);
    return (*(*(v23 - 8) + 56))(v26, 0, 1, v23);
  }
}

void TTRRemindersBoardPresentationTreesManagementViewCapability.applyPresentationTrees(with:)(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A90, &unk_21DC2E2A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - v4;
  v6 = *(v1 + 24);
  v7 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates(0);
  sub_21D19FB04(&a1[*(v7 + 20)], v5, type metadata accessor for TTRRemindersBoardPresentationTrees);
  v8 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  v9 = qword_27CE8EB18;
  swift_beginAccess();
  sub_21D0F02F4(v5, v6 + v9, &qword_27CE58A90, &unk_21DC2E2A0);
  swift_endAccess();
  v10 = TTRRemindersBoardPresentationTrees.allColumnIDs.getter();
  v11 = sub_21D19EE98(v10);

  v12 = qword_27CE8EB20;
  swift_beginAccess();
  *(v6 + v12) = v11;

  v13 = *a1;
  if ((v13 - 3) >= 2)
  {
    v14 = swift_beginAccess();
    if (!*(v1 + 16))
    {
LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    if (v13 == 2)
    {

      sub_21D19D800(sub_21D19DA18, 0, sub_21D4B71B8, sub_21D2206B0);

      if (!*(v1 + 16))
      {
        goto LABEL_12;
      }
    }

    v15 = *(v6 + v12);
    MEMORY[0x28223BE20](v14);
    v17[-2] = v15;

    sub_21DBF8E0C();
    sub_21D19D800(sub_21D19F030, &v17[-4], sub_21D4B71B8, sub_21D2206B0);
  }

  v16 = swift_beginAccess();
  if (!*(v1 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  MEMORY[0x28223BE20](v16);
  v17[-2] = a1;

  sub_21D19DA20(0, sub_21D19F028, &v17[-4]);

  if (*a1 - 3 >= 2)
  {
    v18 = *a1;
    TTRRemindersBoardMainDiffableDataSource.applySnapshot(option:)(&v18);
  }
}

uint64_t sub_21D19CED4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  TTRRemindersBoardPresentationTreeUpdates.updates(forColumnID:)(a2, a1);
  v3 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdatesForColumn(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

Swift::Void __swiftcall TTRRemindersBoardPresentationTreesManagementViewCapability.reload()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A98, &qword_21DC09FC0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v0 + 32))(v6);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21D0CF7E0(v3, &qword_27CE58A98, &qword_21DC09FC0);
  }

  else
  {
    sub_21D19FB6C(v3, v8, type metadata accessor for TTRRemindersBoardPresentationTreeUpdates);
    TTRRemindersBoardPresentationTreesManagementViewCapability.applyPresentationTrees(with:)(v8);
    sub_21D19FBD4(v8, type metadata accessor for TTRRemindersBoardPresentationTreeUpdates);
  }
}

uint64_t TTRRemindersBoardPresentationTreesManagementViewCapability.deinit()
{

  return v0;
}

uint64_t TTRRemindersBoardPresentationTreesManagementViewCapability.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D19D150(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v27 = sub_21DBF5A5C();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA80, &qword_21DC0A040);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = sub_21DBF5B9C();
  v9 = MEMORY[0x277CC9A28];
  sub_21D19F498(&qword_280D1B830, MEMORY[0x277CC9A28], MEMORY[0x277CC9A48]);
  sub_21DBFA40C();
  sub_21D19F498(&qword_280D1B820, v9, MEMORY[0x277CC9A50]);
  v25 = (v3 + 8);
  v10 = MEMORY[0x277D84F90];
  v22[1] = v8;
  while (1)
  {
    v11 = v26;
    sub_21DBFACAC();
    sub_21D19F498(&qword_280D1B840, MEMORY[0x277CC9A08], MEMORY[0x277CC9A10]);
    v12 = v27;
    v13 = sub_21DBFA10C();
    (*v25)(v11, v12);
    if (v13)
    {
      sub_21D0CF7E0(v7, &qword_27CE5EA80, &qword_21DC0A040);
      return v10;
    }

    v14 = sub_21DBFAD3C();
    v16 = *v15;
    v14(v28, 0);
    sub_21DBFACBC();
    v29 = v16;
    v17 = v23(&v29);
    if (v2)
    {
      break;
    }

    if (v17)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21D18E658(0, *(v10 + 16) + 1, 1);
        v10 = v30;
      }

      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_21D18E658((v19 > 1), v20 + 1, 1);
        v10 = v30;
      }

      *(v10 + 16) = v20 + 1;
      *(v10 + 8 * v20 + 32) = v16;
    }
  }

  sub_21D0CF7E0(v7, &qword_27CE5EA80, &qword_21DC0A040);

  return v10;
}

void sub_21D19D4A8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = a2;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = 0;
  v37 = a3;
  v16 = *(a3 + 64);
  v15 = a3 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v33 = MEMORY[0x277D84F90];
  while (1)
  {
    v21 = v13;
    if (!v19)
    {
      break;
    }

LABEL_8:
    v22 = *(v36 + 72);
    sub_21D19FB04(*(v37 + 48) + v22 * (__clz(__rbit64(v19)) | (v13 << 6)), v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D19FB6C(v9, v12, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v23 = v34(v12);
    if (v3)
    {
      sub_21D19FBD4(v12, type metadata accessor for TTRRemindersListViewModel.ItemID);

      return;
    }

    v19 &= v19 - 1;
    if (v23)
    {
      sub_21D19FB6C(v12, v32, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v24 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21D18E77C(0, *(v24 + 16) + 1, 1);
        v24 = v38;
      }

      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v33 = v27 + 1;
        v31 = v27;
        sub_21D18E77C((v26 > 1), v27 + 1, 1);
        v28 = v33;
        v27 = v31;
        v24 = v38;
      }

      *(v24 + 16) = v28;
      v29 = *(v36 + 80);
      v33 = v24;
      sub_21D19FB6C(v32, v24 + ((v29 + 32) & ~v29) + v27 * v22, type metadata accessor for TTRRemindersListViewModel.ItemID);
    }

    else
    {
      sub_21D19FBD4(v12, type metadata accessor for TTRRemindersListViewModel.ItemID);
    }
  }

  while (1)
  {
    v13 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v13 >= v20)
    {

      return;
    }

    v19 = *(v15 + 8 * v13);
    ++v21;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

double sub_21D19D800(uint64_t (*a1)(char *), uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v7 = v4;
  v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = *(v7 + 32);
  sub_21DBF8E0C();
  sub_21D19D4A8(a1, a2, v14);
  v16 = *(v15 + 16);
  if (v16)
  {
    v26 = a4;
    v17 = v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = *(v11 + 72);
    do
    {
      sub_21D19FB04(v17, v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
      swift_beginAccess();
      v19 = sub_21D181E00();
      if (v20)
      {
        v21 = v19;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *(v7 + 32);
        v27 = v23;
        *(v7 + 32) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          v26();
          v23 = v27;
        }

        sub_21D19FBD4(*(v23 + 48) + v21 * v18, type metadata accessor for TTRRemindersListViewModel.ItemID);

        a3(v21, v23);
        *(v7 + 32) = v23;
      }

      swift_endAccess();
      sub_21D19FBD4(v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v17 += v18;
      --v16;
    }

    while (v16);
  }

  return result;
}

void sub_21D19DA20(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v123 = a3;
  v122 = a2;
  v141 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AC8, &qword_21DC0A048);
  MEMORY[0x28223BE20](v4 - 8);
  v121 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v120 = &v110 - v7;
  v119 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdatesForColumn(0);
  v8 = *(v119 - 8);
  MEMORY[0x28223BE20](v119 - 8);
  v113 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v110 - v11;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388, &unk_21DC0F470);
  MEMORY[0x28223BE20](v128);
  v127 = &v110 - v13;
  v126 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v126);
  v139 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v15 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v111 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v129 = &v110 - v18;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD0, &qword_21DC0A050);
  MEMORY[0x28223BE20](v143);
  v20 = &v110 - v19;
  v21 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v138 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v146 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v142 = (&v110 - v24);
  MEMORY[0x28223BE20](v25);
  v144 = &v110 - v26;
  MEMORY[0x28223BE20](v27);
  v145 = &v110 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v110 - v30;
  MEMORY[0x28223BE20](v32);
  v130 = &v110 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD8, &qword_21DC0A058);
  MEMORY[0x28223BE20](v34 - 8);
  v137 = &v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v135 = &v110 - v37;
  swift_beginAccess();
  v38 = *(v3 + 32);
  v39 = v38 + 64;
  v40 = 1 << *(v38 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v38 + 64);
  v117 = (v40 + 63) >> 6;
  v116 = 0x800000021DC43E30;
  v115 = 0x800000021DC43E00;
  v132 = 0x800000021DC43DE0;
  v124 = (v15 + 48);
  v43 = v31;
  v118 = (v8 + 48);
  v112 = (v8 + 56);
  v44 = v21;
  v131 = v38;
  sub_21DBF8E0C();
  v45 = 0;
  v147 = v44;
  v134 = v39;
  v114 = v12;
  v149 = v31;
  while (v42)
  {
    v46 = v45;
LABEL_16:
    v50 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    v51 = v50 | (v46 << 6);
    v52 = v131;
    v53 = v130;
    sub_21D19FB04(*(v131 + 48) + *(v138 + 72) * v51, v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v54 = *(*(v52 + 56) + 8 * v51);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AE0, &unk_21DC0A060);
    v56 = *(v55 + 48);
    v57 = v53;
    v49 = v137;
    sub_21D19FB6C(v57, v137, type metadata accessor for TTRRemindersListViewModel.ItemID);
    *(v49 + v56) = v54;
    (*(*(v55 - 8) + 56))(v49, 0, 1, v55);

    v43 = v149;
LABEL_17:
    v58 = v49;
    v59 = v135;
    sub_21D0D523C(v58, v135, &qword_27CE58AD8, &qword_21DC0A058);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AE0, &unk_21DC0A060);
    v61 = (*(*(v60 - 8) + 48))(v59, 1, v60);
    v62 = v143;
    if (v61 == 1)
    {

      return;
    }

    v140 = *(v59 + *(v60 + 48));
    sub_21D19FB6C(v59, v43, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v63 = v145;
    if (!v141)
    {
      goto LABEL_90;
    }

    v64 = *(v141 + 16);
    if (!v64)
    {
LABEL_4:
      v43 = v149;
      sub_21D19FBD4(v149, type metadata accessor for TTRRemindersListViewModel.ItemID);

      goto LABEL_5;
    }

    v65 = v141 + ((*(v138 + 80) + 32) & ~*(v138 + 80));
    v148 = *(v138 + 72);
    v133 = v42;
    while (1)
    {
      v66 = *(v62 + 48);
      sub_21D19FB04(v65, v20, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D19FB04(v149, &v20[v66], type metadata accessor for TTRRemindersListViewModel.ItemID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload != 2)
      {
        sub_21D19FB04(v20, v146, type metadata accessor for TTRRemindersListViewModel.ItemID);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_22;
        }

        v82 = *v146;
        if (v82 > 2)
        {
          if (v82 == 3)
          {
            v85 = 0xD00000000000001FLL;
            v91 = &v147;
          }

          else
          {
            if (v82 == 4)
            {
              v86 = 0xE700000000000000;
              v85 = 0x6D657449706974;
              goto LABEL_62;
            }

            v85 = 0xD00000000000001DLL;
            v91 = &v148;
          }

          v86 = *(v91 - 32);
        }

        else
        {
          v83 = 0xD000000000000012;
          if (v82 == 1)
          {
            v83 = 0x7367617468736168;
          }

          v84 = 0xEC0000006D657449;
          if (v82 != 1)
          {
            v84 = v132;
          }

          if (*v146)
          {
            v85 = v83;
          }

          else
          {
            v85 = 0x6574656C706D6F63;
          }

          if (*v146)
          {
            v86 = v84;
          }

          else
          {
            v86 = 0xED00006D65744964;
          }
        }

LABEL_62:
        v92 = v20[v66];
        if (v92 > 2)
        {
          if (v92 == 3)
          {
            v95 = 0xD00000000000001FLL;
            v96 = &v147;
          }

          else
          {
            if (v92 == 4)
            {
              v94 = 0xE700000000000000;
              if (v85 == 0x6D657449706974)
              {
                goto LABEL_81;
              }

              goto LABEL_82;
            }

            v95 = 0xD00000000000001DLL;
            v96 = &v148;
          }

          v94 = *(v96 - 32);
          if (v85 == v95)
          {
            goto LABEL_81;
          }
        }

        else
        {
          if (v20[v66])
          {
            if (v92 == 1)
            {
              v93 = 0x7367617468736168;
            }

            else
            {
              v93 = 0xD000000000000012;
            }

            if (v92 == 1)
            {
              v94 = 0xEC0000006D657449;
            }

            else
            {
              v94 = v132;
            }

            if (v85 != v93)
            {
              goto LABEL_82;
            }

LABEL_81:
            if (v86 == v94)
            {

              goto LABEL_89;
            }

            goto LABEL_82;
          }

          v94 = 0xED00006D65744964;
          if (v85 == 0x6574656C706D6F63)
          {
            goto LABEL_81;
          }
        }

LABEL_82:
        v97 = sub_21DBFC64C();

        if (v97)
        {
          goto LABEL_89;
        }

        sub_21D19FBD4(v20, type metadata accessor for TTRRemindersListViewModel.ItemID);
        goto LABEL_23;
      }

      v68 = v142;
      sub_21D19FB04(v20, v142, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v69 = *v68;
      if (swift_getEnumCaseMultiPayload() != 2)
      {

LABEL_22:
        sub_21D0CF7E0(v20, &qword_27CE58AD0, &qword_21DC0A050);
        goto LABEL_23;
      }

      v70 = *&v20[v66];
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      v71 = sub_21DBFB63C();

      sub_21D19FBD4(v20, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (v71)
      {
        goto LABEL_90;
      }

LABEL_23:
      v65 += v148;
      if (!--v64)
      {
        goto LABEL_4;
      }
    }

    if (!EnumCaseMultiPayload)
    {
      sub_21D19FB04(v20, v63, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_21D19FBD4(v63, type metadata accessor for TTRRemindersListViewModel.SectionID);
        goto LABEL_22;
      }

      v87 = v129;
      sub_21D19FB6C(&v20[v66], v129, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v88 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v63, v87);
      v89 = v87;
      v62 = v143;
      sub_21D19FBD4(v89, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D19FBD4(v63, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D19FBD4(v20, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (v88)
      {
        goto LABEL_90;
      }

      goto LABEL_23;
    }

    v72 = v144;
    sub_21D19FB04(v20, v144, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21D19FBD4(v72, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v63 = v145;
      goto LABEL_22;
    }

    v73 = &v20[v66];
    v74 = v139;
    sub_21D19FB6C(v73, v139, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    if ((sub_21DBFB63C() & 1) == 0)
    {
      goto LABEL_85;
    }

    v75 = *(v126 + 20);
    v76 = *(v128 + 48);
    v77 = v127;
    sub_21D0D3954(v72 + v75, v127, &unk_27CE5CD70, &unk_21DC09230);
    v136 = v76;
    sub_21D0D3954(v74 + v75, v77 + v76, &unk_27CE5CD70, &unk_21DC09230);
    v78 = *v124;
    v79 = v125;
    if ((*v124)(v77, 1, v125) != 1)
    {
      v90 = v114;
      sub_21D0D3954(v77, v114, &unk_27CE5CD70, &unk_21DC09230);
      if (v78(v77 + v136, 1, v79) == 1)
      {
        sub_21D19FBD4(v90, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v81 = v77;
        v42 = v133;
        goto LABEL_58;
      }

      v98 = v111;
      sub_21D19FB6C(v77 + v136, v111, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v99 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v90, v98);
      sub_21D19FBD4(v98, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D19FBD4(v90, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D0CF7E0(v77, &unk_27CE5CD70, &unk_21DC09230);
      v74 = v139;
      v62 = v143;
      v72 = v144;
      v42 = v133;
      if (v99)
      {
        goto LABEL_88;
      }

LABEL_85:
      sub_21D19FBD4(v74, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D19FBD4(v72, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D19FBD4(v20, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v63 = v145;
      goto LABEL_23;
    }

    v80 = v78(v77 + v136, 1, v79) == 1;
    v81 = v77;
    v42 = v133;
    if (!v80)
    {
LABEL_58:
      sub_21D0CF7E0(v81, &qword_27CE58388, &unk_21DC0F470);
      v74 = v139;
      v62 = v143;
      v72 = v144;
      goto LABEL_85;
    }

    sub_21D0CF7E0(v77, &unk_27CE5CD70, &unk_21DC09230);
    v74 = v139;
    v72 = v144;
LABEL_88:
    sub_21D19FBD4(v74, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D19FBD4(v72, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_89:
    sub_21D19FBD4(v20, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_90:
    v101 = v140;
    v102 = *(*v140 + 88);
    swift_beginAccess();
    v103 = v121;
    sub_21D0D3954(v101 + v102, v121, &qword_27CE58AC8, &qword_21DC0A048);
    v104 = v120;
    v122(v149, v103);
    v105 = v103;
    sub_21D0CF7E0(v103, &qword_27CE58AC8, &qword_21DC0A048);
    v106 = v119;
    if ((*v118)(v104, 1, v119) == 1)
    {
      v107 = v149;
      sub_21D19FBD4(v149, type metadata accessor for TTRRemindersListViewModel.ItemID);

      sub_21D0CF7E0(v104, &qword_27CE58AC8, &qword_21DC0A048);
      v43 = v107;
    }

    else
    {
      v108 = v104;
      v109 = v113;
      sub_21D19FB6C(v108, v113, type metadata accessor for TTRRemindersBoardPresentationTreeUpdatesForColumn);
      sub_21D19FB04(v109, v105, type metadata accessor for TTRRemindersBoardPresentationTreeUpdatesForColumn);
      (*v112)(v105, 0, 1, v106);
      swift_beginAccess();
      sub_21D0F02F4(v105, v101 + v102, &qword_27CE58AC8, &qword_21DC0A048);
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
      sub_21D0EAF6C();
      sub_21DBF912C();
      sub_21D19FBD4(v109, type metadata accessor for TTRRemindersBoardPresentationTreeUpdatesForColumn);
      v43 = v149;
      sub_21D19FBD4(v149, type metadata accessor for TTRRemindersListViewModel.ItemID);
    }

LABEL_5:
    v39 = v134;
  }

  if (v117 <= v45 + 1)
  {
    v47 = v45 + 1;
  }

  else
  {
    v47 = v117;
  }

  v48 = v47 - 1;
  v49 = v137;
  while (1)
  {
    v46 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v46 >= v117)
    {
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AE0, &unk_21DC0A060);
      (*(*(v100 - 8) + 56))(v49, 1, 1, v100);
      v42 = 0;
      v45 = v48;
      goto LABEL_17;
    }

    v42 = *(v39 + 8 * v46);
    ++v45;
    if (v42)
    {
      v45 = v46;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_21D19ED38(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
  {
    v4 = sub_21DBF634C();
    v5 = sub_21D19F498(&qword_27CE58AA0, MEMORY[0x277D44FB0], MEMORY[0x277D85378]);
    result = MEMORY[0x223D43280](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223D44740](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_21D29B308(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_21DBFBD7C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21D19EE98(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_21D19F498(&qword_280D19570, type metadata accessor for TTRRemindersListViewModel.ItemID, protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  result = MEMORY[0x223D43280](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_21D19FB04(v12, v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D29B520(v8, v5);
      sub_21D19FBD4(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_21D19F0A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_21D19FA5C();
  result = MEMORY[0x223D43280](v2, &type metadata for TTRReminderCellTextHighlights.Highlight, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_21D29B760(&v9, v6, v7, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_21D19F11C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for REMListBadgeEmblem(0);
  v4 = v3;
  v5 = sub_21D19F498(&qword_27CE57C08, type metadata accessor for REMListBadgeEmblem, byte_21DC07628);
  result = MEMORY[0x223D43280](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_21D29B8CC(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_21D19F1D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for _NSRange(0);
  v4 = v3;
  v5 = sub_21D19F498(&qword_280D0C1A8, type metadata accessor for _NSRange, MEMORY[0x277CC9E30]);
  result = MEMORY[0x223D43280](v2, v4, v5);
  v9 = result;
  if (v2)
  {
    v7 = (a1 + 40);
    do
    {
      sub_21D29C590(v8, *(v7 - 1), *v7);
      v7 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_21D19F2B8(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_21D0D8CF0(255, a2, a3);
    result = swift_getWitnessTable(MEMORY[0x277D85378], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D19F308(uint64_t a1)
{
  v2 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_21D19F498(&qword_27CE58AB0, type metadata accessor for TTRRecurrenceRuleModel, protocol conformance descriptor for TTRRecurrenceRuleModel);
  result = MEMORY[0x223D43280](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_21D19FB04(v12, v5, type metadata accessor for TTRRecurrenceRuleModel);
      sub_21D29CEE0(v8, v5);
      sub_21D19FBD4(v8, type metadata accessor for TTRRecurrenceRuleModel);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_21D19F498(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21D19F4E0(uint64_t a1)
{
  v2 = sub_21DBF70DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_21D19F498(&qword_27CE58AC0, MEMORY[0x277D45430], MEMORY[0x277D45438]);
  result = MEMORY[0x223D43280](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_21D29D7C4(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_21D19F67C(uint64_t a1)
{
  v2 = sub_21DBF5D5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_21D19F498(&qword_280D17160, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  result = MEMORY[0x223D43280](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_21D29E50C(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t *sub_21D19F848(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
  {
    v12 = sub_21D0D8CF0(0, a2, a3);
    v13 = sub_21D19F2B8(a4, a2, a3);
    result = MEMORY[0x223D43280](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x223D44740](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_21DBFBD7C();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21D19F9A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for Key(0);
  v4 = v3;
  v5 = sub_21D19F498(&qword_280D17790, type metadata accessor for Key, byte_21DC082E8);
  result = MEMORY[0x223D43280](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_21D29EA24(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_21D19FA5C()
{
  result = qword_280D18EA8[0];
  if (!qword_280D18EA8[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRReminderCellTextHighlights.Highlight, &type metadata for TTRReminderCellTextHighlights.Highlight, v0, v1);
    atomic_store(result, qword_280D18EA8);
  }

  return result;
}

unint64_t sub_21D19FAB0()
{
  result = qword_280D0E1E0;
  if (!qword_280D0E1E0)
  {
    result = swift_getWitnessTable(byte_21DC1FDC0, &type metadata for TTRIRemindersListReminderCell_collectionView.UpdateFlag, v0, v1);
    atomic_store(result, &qword_280D0E1E0);
  }

  return result;
}

uint64_t sub_21D19FB04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D19FB6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D19FBD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t TTRReminderDetailEditingResult.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D19FCC4()
{
  result = qword_27CE58AF8;
  if (!qword_27CE58AF8)
  {
    result = swift_getWitnessTable("I", &type metadata for TTRReminderDetailEditingResult, v0, v1);
    atomic_store(result, &qword_27CE58AF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListDataModelSourceCountCompleted(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TTRRemindersListDataModelSourceCountCompleted(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21D19FEA4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE58B00);
  v1 = __swift_project_value_buffer(v0, qword_27CE58B00);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRIMenuItem.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

void TTRIMenuItem.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void *TTRIMenuItem.image.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t TTRIMenuItem.selectedTitle.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));
  sub_21DBF8E0C();
  return v2;
}

void TTRIMenuItem.selectedTitle.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 44));

  *v6 = a1;
  v6[1] = a2;
}

uint64_t TTRIMenuItem.init(title:image:item:selectedTitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v17 = type metadata accessor for TTRIMenuItem(0, a7, a8, a4);
  v18 = &a9[*(v17 + 44)];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  result = (*(*(a7 - 8) + 32))(&a9[*(v17 + 40)], a4, a7);
  *v18 = a5;
  *(v18 + 1) = a6;
  return result;
}

uint64_t static TTRIInlineButtonAttachmentTextView.Option.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a1;
  v7 = type metadata accessor for TTRIMenuItem(0, a3, a4, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v30[0] = v30 - v9;
  v30[1] = a3;
  v30[2] = a4;
  v11 = type metadata accessor for TTRIInlineButtonAttachmentTextView.Option(0, a3, a4, v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v33 = v30 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v18 = v30 - v17;
  v20 = *(v19 + 48);
  v31 = v12;
  v21 = *(v12 + 16);
  v21(v30 - v17, v32, v11, v16);
  (v21)(&v18[v20], a2, v11);
  v32 = v8;
  v22 = *(v8 + 48);
  if (v22(v18, 1, v7) == 1)
  {
    v23 = 1;
    if (v22(&v18[v20], 1, v7) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v21)(v33, v18, v11);
    if (v22(&v18[v20], 1, v7) != 1)
    {
      v24 = v32;
      v25 = &v18[v20];
      v26 = v30[0];
      (*(v32 + 32))(v30[0], v25, v7);
      v27 = v33;
      v23 = sub_21DBFA10C();
      v28 = *(v24 + 8);
      v28(v26, v7);
      v28(v27, v7);
LABEL_8:
      v15 = v31;
      goto LABEL_9;
    }

    (*(v32 + 8))(v33, v7);
  }

  v23 = 0;
  v11 = TupleTypeMetadata2;
LABEL_9:
  (*(v15 + 8))(v18, v11);
  return v23 & 1;
}

uint64_t TTRIInlineButtonAttachmentTextView.AttachmentReplacementStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D1A06E8(uint64_t a1)
{
  sub_21DBFC7DC();
  TTRIInlineButtonAttachmentTextView.AttachmentReplacementStrategy.hash(into:)();
  return sub_21DBFC82C();
}

uint64_t TTRIInlineButtonAttachmentTextView.attachmentToken.getter()
{
  v1 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x60));
  swift_beginAccess();
  v2 = *v1;
  sub_21DBF8E0C();
  return v2;
}

double TTRIInlineButtonAttachmentTextView.attachmentToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x60));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void TTRIInlineButtonAttachmentTextView.attachmentReplacementStrategy.getter(_BYTE *a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void TTRIInlineButtonAttachmentTextView.attachmentReplacementStrategy.setter(char *a1)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  *(v1 + v3) = v2;
}

double TTRIInlineButtonAttachmentTextView.menuOptions.getter()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

double sub_21D1A0A50@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *((*MEMORY[0x277D85000] & **a1) + 0x70);
  swift_beginAccess();
  *a2 = *(v3 + v4);
  sub_21DBF8E0C();
  return result;
}

double TTRIInlineButtonAttachmentTextView.menuOptions.setter(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_21D1A0B48(v4);

  return result;
}

void sub_21D1A0B48(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  swift_beginAccess();
  v5 = type metadata accessor for TTRIInlineButtonAttachmentTextView.Option(0, *((v3 & v2) + 0x50), *((v3 & v2) + 0x58), v4);
  sub_21DBF8E0C();
  swift_getWitnessTable(protocol conformance descriptor for TTRIInlineButtonAttachmentTextView<A>.Option, v5);
  v6 = sub_21DBFA75C();

  if ((v6 & 1) == 0)
  {
    sub_21D1A0C3C();
  }
}

void sub_21D1A0C3C()
{
  v0 = sub_21D1A1A24();
  v1 = sub_21D1A4C90(v0);
  v2 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_menu;
  swift_beginAccess();
  v3 = *&v0[v2];
  *&v0[v2] = v1;
}

void (*TTRIInlineButtonAttachmentTextView.menuOptions.modify(uint64_t *a1))(void **a1, char a2)
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
  *(v3 + 32) = v1;
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D1A0D60;
}

void sub_21D1A0D60(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  if (a2)
  {
    v4 = sub_21DBF8E0C();
    TTRIInlineButtonAttachmentTextView.menuOptions.setter(v4);
  }

  else
  {
    TTRIInlineButtonAttachmentTextView.menuOptions.setter(v3);
  }

  free(v2);
}

uint64_t TTRIInlineButtonAttachmentTextView.selectedItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v4 = sub_21DBFBA8C();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_21D1A0E84@<X0>(char **a1@<X0>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *((*MEMORY[0x277D85000] & **a1) + 0x78);
  swift_beginAccess();
  v7 = sub_21DBFBA8C();
  return (*(*(v7 - 8) + 16))(a4, &v5[v6], v7);
}

uint64_t TTRIInlineButtonAttachmentTextView.selectedItem.setter(uint64_t a1)
{
  sub_21D1A6394(a1);
  v2 = sub_21DBFBA8C();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void sub_21D1A0FCC(uint64_t a1)
{
  v28 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v25[1] = *MEMORY[0x277D85000] & *v1;
  v4 = *((v3 & v2) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v25[0] = v25 - v6;
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v29 = v25 - v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v26 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v25 - v11;
  v13 = *((v3 & v2) + 0x78);
  swift_beginAccess();
  v14 = *(TupleTypeMetadata2 + 48);
  v27 = v8;
  v15 = *(v8 + 16);
  v15(v12, v1 + v13, v7);
  v15(&v12[v14], v28, v7);
  v28 = v5;
  v16 = *(v5 + 48);
  if (v16(v12, 1, v4) == 1)
  {
    if (v16(&v12[v14], 1, v4) == 1)
    {
      (*(v27 + 8))(v12, v7);
      return;
    }
  }

  else
  {
    v15(v29, v12, v7);
    if (v16(&v12[v14], 1, v4) != 1)
    {
      v20 = v28;
      v21 = v25[0];
      (*(v28 + 32))(v25[0], &v12[v14], v4);
      v22 = v29;
      v23 = sub_21DBFA10C();
      v24 = *(v20 + 8);
      v24(v21, v4);
      v24(v22, v4);
      (*(v27 + 8))(v12, v7);
      if (v23)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v28 + 8))(v29, v4);
  }

  (*(v26 + 8))(v12, TupleTypeMetadata2);
LABEL_7:
  v17 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  if (*(v1 + v17))
  {
    v18 = [v1 attributedText];
    if (v18)
    {
      v19 = v18;
      TTRIInlineButtonAttachmentTextView.applyAttributedText(_:forceUpdate:)(v18, 0);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_21D1A0C3C();
  }
}

Swift::Void __swiftcall TTRIInlineButtonAttachmentTextView.applyAttributedText(_:forceUpdate:)(NSAttributedString _, Swift::Bool forceUpdate)
{
  v3 = v2;
  if (forceUpdate || (v5 = [v2 attributedText]) == 0 || (v6 = v5, sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898), v7 = _.super.isa, v8 = sub_21DBFB63C(), v7, v6, (v8 & 1) == 0))
  {
    sub_21D1A25D8(_.super.isa);
    v9 = sub_21D1A2818(_.super.isa);
    [v3 setAttributedText_];
  }
}

void (*TTRIInlineButtonAttachmentTextView.selectedItem.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = MEMORY[0x277D85000];
  v7 = *MEMORY[0x277D85000];
  v8 = sub_21DBFBA8C();
  v5[4] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v5[5] = v9;
  v11 = *(v9 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
    v7 = *v6;
  }

  else
  {
    v5[6] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v5[7] = v12;
  v13 = *((v7 & *v1) + 0x78);
  swift_beginAccess();
  v14 = *(v10 + 16);
  v5[8] = v14;
  v5[9] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v12, &v1[v13], v8);
  return sub_21D1A16B4;
}

void sub_21D1A16B4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    sub_21D1A6394(v4);
    v7 = *(v6 + 8);
    v7(v4, v5);
    v7(v3, v5);
  }

  else
  {
    sub_21D1A6394(*(v2 + 56));
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

id sub_21D1A1790(void *a1)
{
  v1 = a1;
  v3 = TTRIInlineButtonAttachmentTextView.font.getter(v1, v2);

  return v3;
}

void sub_21D1A17E0(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = a1;
  sub_21D1A6304(a3, &selRef_font, &selRef_setFont_, sub_21D1A18BC);
}

void TTRIInlineButtonAttachmentTextView.font.setter(void *a1)
{
  sub_21D1A6304(a1, &selRef_font, &selRef_setFont_, sub_21D1A18BC);
}

void sub_21D1A18BC(void *a1, uint64_t a2)
{
  v3 = v2;
  v14.receiver = v3;
  v14.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v14, sel_font);
  if (v5)
  {
    v6 = v5;
    if (a1)
    {
      sub_21D0D8CF0(0, &qword_280D176B0, 0x277D74300);
      v7 = a1;
      v8 = sub_21DBFB63C();

      if (v8)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  v9 = sub_21D1A1A24();
  ObjectType = swift_getObjectType();
  v14.receiver = v3;
  v14.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v14, sel_font);
  if (!v11)
  {
    if (qword_280D176B8 != -1)
    {
      swift_once();
    }

    v11 = sub_21D900614(1);
  }

  v12 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_font;
  swift_beginAccess();
  v13 = *&v9[v12];
  *&v9[v12] = v11;
}

id sub_21D1A1A24()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for TTRIMenuButtonAttachment()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void (*TTRIInlineButtonAttachmentTextView.font.modify(objc_super *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  a1[1].super_class = v2;
  ObjectType = swift_getObjectType();
  a1->receiver = v2;
  a1->super_class = ObjectType;
  a1[1].receiver = [(objc_super *)a1 font];
  return sub_21D1A1B1C;
}

id sub_21D1A1B44(void *a1)
{
  v1 = a1;
  v3 = TTRIInlineButtonAttachmentTextView.textColor.getter(v1, v2);

  return v3;
}

id sub_21D1A1B94(SEL *a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  v4 = objc_msgSendSuper2(&v6, *a1);

  return v4;
}

void sub_21D1A1BE8(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = a1;
  sub_21D1A6304(a3, &selRef_textColor, &selRef_setTextColor_, sub_21D1A1CC4);
}

void TTRIInlineButtonAttachmentTextView.textColor.setter(void *a1)
{
  sub_21D1A6304(a1, &selRef_textColor, &selRef_setTextColor_, sub_21D1A1CC4);
}

void sub_21D1A1CC4(void *a1, uint64_t a2)
{
  v3 = v2;
  v14.receiver = v3;
  v14.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v14, sel_textColor);
  if (v5)
  {
    v6 = v5;
    if (a1)
    {
      sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
      v7 = a1;
      v8 = sub_21DBFB63C();

      if (v8)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  v9 = sub_21D1A1A24();
  ObjectType = swift_getObjectType();
  v14.receiver = v3;
  v14.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v14, sel_textColor);
  if (!v11)
  {
    v11 = [objc_opt_self() labelColor];
  }

  v12 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_textColor;
  swift_beginAccess();
  v13 = *&v9[v12];
  *&v9[v12] = v11;
}

void (*TTRIInlineButtonAttachmentTextView.textColor.modify(objc_super *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  a1[1].super_class = v2;
  ObjectType = swift_getObjectType();
  a1->receiver = v2;
  a1->super_class = ObjectType;
  a1[1].receiver = [(objc_super *)a1 textColor];
  return sub_21D1A1E74;
}

void sub_21D1A1E9C(uint64_t a1, char a2, SEL *a3, SEL *a4, void (*a5)(id))
{
  v10 = *(a1 + 16);
  if (a2)
  {
    v8 = v10;
    sub_21D1A6304(v10, a3, a4, a5);

    v9 = v8;
  }

  else
  {
    sub_21D1A6304(*(a1 + 16), a3, a4, a5);
    v9 = v10;
  }
}

id TTRIInlineButtonAttachmentTextView.rangeOfButtonAttachment.getter()
{
  result = [v0 attributedText];
  if (!result)
  {
    goto LABEL_8;
  }

  v2 = result;
  v3 = *MEMORY[0x277D74060];
  v15 = MEMORY[0x277D84F90];
  v4 = [result string];
  v5 = sub_21DBFA16C();
  v7 = v6;

  v8 = MEMORY[0x223D42B30](v5, v7);

  v9 = swift_allocObject();
  v9[2] = sub_21D1A2190;
  v9[3] = 0;
  v9[4] = &v15;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_21D1A6510;
  *(v10 + 24) = v9;
  aBlock[4] = sub_21D1A651C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D1A6068;
  aBlock[3] = &block_descriptor_1;
  v11 = _Block_copy(aBlock);

  [v2 enumerateAttribute:v3 inRange:0 options:v8 usingBlock:{0, v11}];

  _Block_release(v11);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v12 = v15;

  if (*(v12 + 16))
  {
    v13 = *(v12 + 32);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

BOOL sub_21D1A2190(uint64_t a1)
{
  sub_21D0DB414(a1, v5);
  if (!v6)
  {
    sub_21D1A8418(v5);
    goto LABEL_5;
  }

  type metadata accessor for TTRIMenuButtonAttachment();
  if (!swift_dynamicCast())
  {
LABEL_5:
    v1 = 0;
    goto LABEL_6;
  }

  v1 = v4;
LABEL_6:
  v2 = v1 != 0;

  return v2;
}

uint64_t sub_21D1A2214@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + *((*MEMORY[0x277D85000] & **a1) + 0x80);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D1A228C(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + *((*MEMORY[0x277D85000] & **a2) + 0x80);
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t TTRIInlineButtonAttachmentTextView.attachmentDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x80);
  swift_beginAccess();
  *(v4 + 1) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRIInlineButtonAttachmentTextView.attachmentDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x80);
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 1);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

Swift::Void __swiftcall TTRIInlineButtonAttachmentTextView.applyText(_:)(Swift::String a1)
{
  v2 = sub_21D1A250C(a1._countAndFlagsBits, a1._object);
  [v1 setAttributedText_];
}

uint64_t *sub_21D1A250C(uint64_t a1, uint64_t a2)
{
  sub_21D1A4324();
  v2 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v3 = sub_21DBFA12C();
  type metadata accessor for Key(0);
  sub_21D112874();
  v4 = sub_21DBF9E5C();

  v5 = [v2 initWithString:v3 attributes:v4];

  v6 = sub_21D1A2818(v5);
  return v6;
}

void sub_21D1A25D8(void *a1)
{
  v2 = [a1 string];
  v3 = sub_21DBFA16C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    if ([a1 attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0])
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12 = v10;
    v13 = v11;
    if (*(&v11 + 1))
    {
      sub_21D0D8CF0(0, &qword_280D176B0, 0x277D74300);
      if (swift_dynamicCast())
      {
        v7 = v9;
        sub_21D1A6304(v9, &selRef_font, &selRef_setFont_, sub_21D1A18BC);
      }
    }

    else
    {
      sub_21D1A8418(&v12);
    }

    if ([a1 attribute:*MEMORY[0x277D740C0] atIndex:0 effectiveRange:0])
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12 = v10;
    v13 = v11;
    if (*(&v11 + 1))
    {
      sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
      if (swift_dynamicCast())
      {
        v8 = v9;
        sub_21D1A6304(v9, &selRef_textColor, &selRef_setTextColor_, sub_21D1A1CC4);
      }
    }

    else
    {
      sub_21D1A8418(&v12);
    }
  }
}

uint64_t *sub_21D1A2818(uint64_t *a1)
{
  v2 = v1;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000] & *v1;
  v5 = v1 + *(v4 + 0x60);
  swift_beginAccess();
  if (*(v5 + 1))
  {
    sub_21DBF8E0C();
    v6 = [a1 string];
    if (!v6)
    {
      sub_21DBFA16C();
      v6 = sub_21DBFA12C();
    }

    v7 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];

    v8 = sub_21DBFA12C();

    v9 = [v7 rangeOfString_];
    v11 = v10;

    v12 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v14 = v9 == sub_21DBF4B4C() && v11 == 0;
    v15 = *((*v3 & *v2) + 0x68);
    swift_beginAccess();
    if (*(v2 + v15))
    {
      if (!v14)
      {
        v46 = v4;
        if (qword_27CE56568 != -1)
        {
          swift_once();
        }

        v16 = sub_21DBF84BC();
        __swift_project_value_buffer(v16, qword_27CE58B00);
        v17 = sub_21DBF84AC();
        v18 = sub_21DBFAEDC();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v44 = v12;
          v20 = swift_slowAlloc();
          v47[0] = v20;
          *v19 = 136315138;
          v21 = sub_21DBFB9BC();
          v23 = sub_21D0CDFB4(v21, v22, v47);

          *(v19 + 4) = v23;
          _os_log_impl(&dword_21D0C9000, v17, v18, "Applying selected item title to {range: %s}", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v20);
          v24 = v20;
          v12 = v44;
          MEMORY[0x223D46520](v24, -1, -1);
          MEMORY[0x223D46520](v19, -1, -1);
        }

        v25 = swift_beginAccess();
        MEMORY[0x28223BE20](v25);
        type metadata accessor for TTRIInlineButtonAttachmentTextView.Option(255, *(v46 + 80), *(v46 + 88), v26);
        v27 = sub_21DBFA74C();
        sub_21DBF8E0C();
        swift_getWitnessTable(MEMORY[0x277D83970], v27);
        v28 = sub_21DBFA4EC();

        if (*(v28 + 16))
        {
          sub_21DBF8E0C();
        }

        v40 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v41 = sub_21DBFA12C();

        v42 = [v40 initWithString_];

        v43 = [v42 length];
        [v12 replaceCharactersInRange:v9 withAttributedString:{v11, v42}];
        sub_21D1A44E8();
        type metadata accessor for Key(0);
        sub_21D112874();
        v39 = sub_21DBF9E5C();

        [v12 setAttributes:v39 range:{v9, v43}];

LABEL_28:
      }
    }

    else if (!v14)
    {
      if (qword_27CE56568 != -1)
      {
        swift_once();
      }

      v30 = sub_21DBF84BC();
      __swift_project_value_buffer(v30, qword_27CE58B00);
      v31 = sub_21DBF84AC();
      v32 = sub_21DBFAEDC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v47[0] = v34;
        *v33 = 136315138;
        v35 = sub_21DBFB9BC();
        v37 = sub_21D0CDFB4(v35, v36, v47);

        *(v33 + 4) = v37;
        _os_log_impl(&dword_21D0C9000, v31, v32, "Applying menu to {range: %s}", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x223D46520](v34, -1, -1);
        MEMORY[0x223D46520](v33, -1, -1);
      }

      sub_21D1A0C3C();
      v38 = sub_21D1A1A24();
      v39 = [objc_opt_self() attributedStringWithAttachment_];

      [v12 replaceCharactersInRange:v9 withAttributedString:{v11, v39}];
      goto LABEL_28;
    }

    return v12;
  }

  return a1;
}

id TTRIInlineButtonAttachmentTextView.__allocating_init(frame:textContainer:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 textContainer:{a2, a3, a4, a5}];

  return v7;
}

id TTRIInlineButtonAttachmentTextView.init(frame:textContainer:)(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  ObjectType = swift_getObjectType();
  v13 = *v6;
  v14 = MEMORY[0x277D85000];
  v15 = *MEMORY[0x277D85000];
  v16 = (v6 + *((*MEMORY[0x277D85000] & *v6) + 0x60));
  *v16 = 0;
  v16[1] = 0;
  *(v6 + *((*v14 & *v6) + 0x68)) = 0;
  v17 = *((*v14 & *v6) + 0x70);
  v18 = *((v15 & v13) + 0x50);
  type metadata accessor for TTRIInlineButtonAttachmentTextView.Option(0, v18, *((v15 & v13) + 0x58), v19);
  *(v6 + v17) = sub_21DBF9E3C();
  (*(*(v18 - 8) + 56))(v6 + *((*v14 & *v6) + 0x78), 1, 1, v18);
  *(v6 + *((*v14 & *v6) + 0x80) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + *((*v14 & *v6) + 0x88)) = 0;
  v26.receiver = v6;
  v26.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v26, sel_initWithFrame_textContainer_, a1, a3, a4, a5, a6);
  [v20 setEditable_];
  v21 = v20;
  [v21 setSelectable_];
  [v21 setScrollEnabled_];
  [v21 setShowsHorizontalScrollIndicator_];
  [v21 setShowsVerticalScrollIndicator_];

  [v21 setAdjustsFontForContentSizeCategory_];
  v22 = [objc_opt_self() preferredFontForTextStyle_];
  sub_21D1A6304(v22, &selRef_font, &selRef_setFont_, sub_21D1A18BC);

  [v21 setTextContainerInset_];
  v23 = [v21 textContainer];
  [v23 setLineFragmentPadding_];

  v24 = [objc_opt_self() clearColor];
  [v21 setBackgroundColor_];

  return v21;
}

id TTRIInlineButtonAttachmentTextView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_21D1A339C(void *a1)
{
  v1 = a1;
  v2 = TTRIInlineButtonAttachmentTextView.accessibilityAttributedLabel.getter();

  return v2;
}

uint64_t TTRIInlineButtonAttachmentTextView.accessibilityAttributedLabel.getter()
{
  v1 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x80);
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 1);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 16))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t (*TTRIInlineButtonAttachmentTextView.accessibilityValue.modify(void *a1))(uint64_t)
{
  *a1 = 0;
  a1[1] = 0;
  return destroy for TTRRemindersListViewModel.ListNameData;
}

id sub_21D1A3538(void *a1)
{
  v1 = a1;
  TTRIInlineButtonAttachmentTextView.accessibilityHint.getter();
  v3 = v2;

  if (v3)
  {
    v4 = sub_21DBFA12C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t TTRIInlineButtonAttachmentTextView.accessibilityHint.getter()
{
  v1 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x80);
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 1);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 24))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t (*TTRIInlineButtonAttachmentTextView.accessibilityHint.modify(uint64_t *a1))(uint64_t a1)
{
  *a1 = TTRIInlineButtonAttachmentTextView.accessibilityHint.getter();
  a1[1] = v2;
  return destroy for TTRRemindersBoardCellInfoButtonStates;
}

BOOL sub_21D1A36BC(void *a1)
{
  v1 = a1;
  v2 = TTRIInlineButtonAttachmentTextView.hasButtonAttachment.getter();

  return v2;
}

void (*TTRIInlineButtonAttachmentTextView.accessibilityRespondsToUserInteraction.modify(BOOL *a1))()
{
  TTRIInlineButtonAttachmentTextView.rangeOfButtonAttachment.getter();
  *a1 = (v2 & 1) == 0;
  return nullsub_1;
}

unint64_t sub_21D1A3744(void *a1)
{
  v1 = a1;
  v3 = TTRIInlineButtonAttachmentTextView.accessibilityTraits.getter(v1, v2);

  return v3;
}

unint64_t TTRIInlineButtonAttachmentTextView.accessibilityTraits.getter(uint64_t a1, uint64_t a2)
{
  v10.receiver = v2;
  v10.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v10, sel_accessibilityTraits);
  if (UIAccessibilityIsVoiceOverRunning())
  {
    TTRIInlineButtonAttachmentTextView.rangeOfButtonAttachment.getter();
    v5 = *MEMORY[0x277D76548];
    v6 = *MEMORY[0x277D76548] & v3;
    v7 = v3 & ~*MEMORY[0x277D76548];
    if (!v6)
    {
      v7 = v3;
    }

    if (v6 == v5)
    {
      v5 = 0;
    }

    v8 = v5 | v3;
    if (v4)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  return v3;
}

void sub_21D1A37FC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  TTRIInlineButtonAttachmentTextView.accessibilityTraits.setter(a3, v4);
}

id TTRIInlineButtonAttachmentTextView.accessibilityTraits.setter(uint64_t a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, sel_setAccessibilityTraits_, a1);
}

id (*TTRIInlineButtonAttachmentTextView.accessibilityTraits.modify(uint64_t a1, uint64_t a2))(objc_super *a1, uint64_t a2)
{
  *(a1 + 24) = v2;
  *(a1 + 16) = TTRIInlineButtonAttachmentTextView.accessibilityTraits.getter(a1, a2);
  return sub_21D1A38E0;
}

id sub_21D1A38E0(objc_super *a1, uint64_t a2)
{
  receiver = a1[1].receiver;
  super_class = a1[1].super_class;
  ObjectType = swift_getObjectType();
  a1->receiver = super_class;
  a1->super_class = ObjectType;

  return [(objc_super *)a1 setAccessibilityTraits:receiver];
}

double sub_21D1A3938(void *a1)
{
  v1 = a1;
  v3 = TTRIInlineButtonAttachmentTextView.accessibilityActivationPoint.getter(v1, v2);

  return v3;
}

double TTRIInlineButtonAttachmentTextView.accessibilityActivationPoint.getter(uint64_t a1, uint64_t a2)
{
  v9.receiver = v2;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_accessibilityActivationPoint);
  v4 = v3;
  v5 = sub_21D1A6104(v2, 0, 0);
  if (v5)
  {
    v6 = v5;
    [v5 accessibilityActivationPoint];
    v4 = v7;
  }

  return v4;
}

void sub_21D1A3A00(void *a1, double a2, double a3)
{
  v6 = a1;
  TTRIInlineButtonAttachmentTextView.accessibilityActivationPoint.setter(a2, a3, v6, v5);
}

id TTRIInlineButtonAttachmentTextView.accessibilityActivationPoint.setter(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v8.receiver = v4;
  v8.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v8, sel_setAccessibilityActivationPoint_, a1, a2);
}

void (*TTRIInlineButtonAttachmentTextView.accessibilityActivationPoint.modify(uint64_t *a1))(objc_super **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v5 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 16) = TTRIInlineButtonAttachmentTextView.accessibilityActivationPoint.getter(v3, v4);
  *(v5 + 24) = v6;
  return sub_21D1A3B28;
}

void sub_21D1A3B28(objc_super **a1, uint64_t a2)
{
  v2 = *a1;
  receiver = (*a1)[1].receiver;
  super_class = (*a1)[1].super_class;
  v5 = (*a1)[2].receiver;
  ObjectType = swift_getObjectType();
  v2->receiver = v5;
  v2->super_class = ObjectType;
  [(objc_super *)v2 setAccessibilityActivationPoint:*&receiver, *&super_class];

  free(v2);
}

id sub_21D1A3B90(void *a1)
{
  v1 = a1;
  v3 = TTRIInlineButtonAttachmentTextView.accessibilityCustomActions.getter(v1, v2);

  if (v3)
  {
    sub_21D0D8CF0(0, qword_27CE58B18, 0x277D75088);
    v4 = sub_21DBFA5DC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t TTRIInlineButtonAttachmentTextView.accessibilityCustomActions.getter(uint64_t a1, uint64_t a2)
{
  v18.receiver = v2;
  v18.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v18, sel_accessibilityCustomActions);
  if (v3)
  {
    v4 = v3;
    sub_21D0D8CF0(0, qword_27CE58B18, 0x277D75088);
    v5 = sub_21DBFA5EC();
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v19 = v5;
  v6 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x80);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 40))(ObjectType, v7);
    swift_unknownObjectRelease();
    if (v9)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      v11 = objc_allocWithZone(MEMORY[0x277D75088]);
      v12 = v9;
      v13 = sub_21DBFA12C();

      aBlock[4] = sub_21D1A66EC;
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D1A62AC;
      aBlock[3] = &block_descriptor_13;
      v14 = _Block_copy(aBlock);
      [v11 initWithName:v13 actionHandler:{v14, 0x800000021DC44A50}];

      _Block_release(v14);

      MEMORY[0x223D42D80](v15);
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();

      v5 = v19;
    }
  }

  if (v5 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      return v5;
    }

    goto LABEL_13;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:

    return 0;
  }

  return v5;
}

void sub_21D1A3F3C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    sub_21D0D8CF0(0, qword_27CE58B18, 0x277D75088);
    v3 = sub_21DBFA5EC();
  }

  v5 = a1;
  TTRIInlineButtonAttachmentTextView.accessibilityCustomActions.setter(v3, v5);
}

void TTRIInlineButtonAttachmentTextView.accessibilityCustomActions.setter(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (a1)
  {
    sub_21D0D8CF0(0, qword_27CE58B18, 0x277D75088);
    v5 = sub_21DBFA5DC();
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = v2;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, sel_setAccessibilityCustomActions_, v5);
}

uint64_t sub_21D1A4054(uint64_t a1, void *a2)
{
  v3 = sub_21DBF5D5C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = a2;
  v11 = [v10 superview];

  if (v11)
  {
    while (1)
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        break;
      }

      v13 = v11;
      v11 = [v13 superview];

      if (!v11)
      {
        return 0;
      }
    }

    v14 = v12;
    v15 = [v12 _tableView];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 indexPathForCell_];
      if (v17)
      {
        v18 = v17;
        sub_21DBF5CAC();

        (*(v4 + 32))(v9, v6, v3);
        v19 = sub_21DBF5C6C();
        [v16 scrollToRowAtIndexPath:v19 atScrollPosition:2 animated:1];

        UIAccessibilityPostNotification(*MEMORY[0x277D76488], v10);
        (*(v4 + 8))(v9, v3);
        return 1;
      }
    }
  }

  return 0;
}

void (*TTRIInlineButtonAttachmentTextView.accessibilityCustomActions.modify(unint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = TTRIInlineButtonAttachmentTextView.accessibilityCustomActions.getter(a1, a2);
  return sub_21D1A42CC;
}

void sub_21D1A42CC(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_21DBF8E0C();
    TTRIInlineButtonAttachmentTextView.accessibilityCustomActions.setter(v2, v3);
  }

  else
  {
    TTRIInlineButtonAttachmentTextView.accessibilityCustomActions.setter(*a1, a2);
  }
}

unint64_t sub_21D1A4324()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D20;
  v3 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v4 = v3;
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v12, sel_font);
  *(inited + 64) = sub_21D0D8CF0(0, &qword_280D176B0, 0x277D74300);
  if (!v5)
  {
    if (qword_280D176B8 != -1)
    {
      swift_once();
    }

    v5 = sub_21D900614(1);
  }

  *(inited + 40) = v5;
  v6 = *MEMORY[0x277D740C0];
  *(inited + 72) = *MEMORY[0x277D740C0];
  v7 = v6;
  ObjectType = swift_getObjectType();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v12, sel_textColor);
  *(inited + 104) = sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
  if (!v9)
  {
    v9 = [objc_opt_self() labelColor];
  }

  *(inited + 80) = v9;
  v10 = sub_21D11274C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0, &qword_21DC09050);
  swift_arrayDestroy();
  return v10;
}

unint64_t sub_21D1A44E8()
{
  v0 = sub_21D1A4324();
  v14 = v0;
  v1 = *(v0 + 16);
  v2 = *MEMORY[0x277D740A8];
  v3 = v2;
  if (v1 && (v4 = sub_21D10FE34(v2), (v5 & 1) != 0) && (sub_21D0CEB98(*(v0 + 56) + 32 * v4, &v12), v6 = sub_21D0D8CF0(0, &qword_280D176B0, 0x277D74300), (swift_dynamicCast() & 1) != 0))
  {
    isa = UIFont.withCustomWeight(_:)(*MEMORY[0x277D743F8]).super.isa;

    v13 = v6;
    *&v12 = isa;
    sub_21D0CF2E8(&v12, v11);
    v8 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21D476CE0(v11, v3, isUniquelyReferenced_nonNull_native);

    return v8;
  }

  else
  {
    sub_21D983190(v3, &v12);

    sub_21D1A8418(&v12);
    return v14;
  }
}

uint64_t sub_21D1A4618@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v70 = a1;
  v5 = *a2;
  v6 = *MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & *a2) + 0x50);
  v69 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v63 = &v57 - v8;
  v9 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v66 = &v57 - v10;
  v67 = v9;
  v71 = *(v9 - 8);
  MEMORY[0x28223BE20](v11);
  v64 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  v16 = a2;
  v17 = *((v6 & v5) + 0x58);
  v19 = type metadata accessor for TTRIMenuItem(0, v7, v17, v18);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v57 - v21;
  v23 = v7;
  v62 = v17;
  v25 = type metadata accessor for TTRIInlineButtonAttachmentTextView.Option(0, v7, v17, v24);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v57 - v27;
  (*(v29 + 16))(&v57 - v27, v70, v26);
  result = (*(v20 + 48))(v28, 1, v19);
  if (result == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  v70 = a3;
  v60 = v20;
  (*(v20 + 32))(v22, v28, v19);
  v61 = v19;
  v31 = *(v19 + 40);
  v32 = v69;
  v33 = *(v69 + 16);
  v59 = v22;
  v33(v15, &v22[v31], v7);
  (*(v32 + 56))(v15, 0, 1, v7);
  v34 = v16;
  v35 = *((*MEMORY[0x277D85000] & *v16) + 0x78);
  swift_beginAccess();
  v36 = v67;
  v37 = v15;
  v38 = *(TupleTypeMetadata2 + 48);
  v39 = *(v71 + 16);
  v40 = v66;
  v57 = v37;
  v39(v66);
  v58 = v38;
  (v39)(&v40[v38], v34 + v35, v36);
  v41 = *(v32 + 48);
  if (v41(v40, 1, v23) == 1)
  {
    v42 = *(v71 + 8);
    v42(v57, v36);
    v43 = v41(&v40[v58], 1, v23);
    v44 = v70;
    if (v43 == 1)
    {
      v42(v40, v36);
LABEL_11:
      v51 = v59;
      v47 = *v59;
      v48 = *(v59 + 1);
      sub_21DBF8E0C();
      v50 = v60;
      v49 = v61;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v45 = v64;
  (v39)();
  v46 = v58;
  if (v41(&v40[v58], 1, v23) == 1)
  {
    (*(v71 + 8))(v57, v36);
    (*(v69 + 8))(v45, v23);
    v44 = v70;
LABEL_8:
    (*(v65 + 8))(v40, TupleTypeMetadata2);
    goto LABEL_9;
  }

  v52 = v69;
  v53 = v63;
  (*(v69 + 32))(v63, &v40[v46], v23);
  v54 = sub_21DBFA10C();
  v55 = *(v52 + 8);
  v55(v53, v23);
  v56 = *(v71 + 8);
  v56(v57, v36);
  v55(v45, v23);
  v56(v40, v36);
  v44 = v70;
  if (v54)
  {
    goto LABEL_11;
  }

LABEL_9:
  v47 = 0;
  v48 = 0;
  v50 = v60;
  v49 = v61;
  v51 = v59;
LABEL_12:
  result = (*(v50 + 8))(v51, v49);
  *v44 = v47;
  v44[1] = v48;
  return result;
}

uint64_t sub_21D1A4C90(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v110 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v75 = &v73 - v5;
  v6 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v100 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v90 = &v73 - v7;
  v99 = *(v6 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v96 = &v73 - v12;
  v13 = *((v3 & v2) + 0x58);
  v112 = type metadata accessor for TTRIMenuItem(0, v4, v13, v14);
  v15 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v88 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v73 - v18;
  v94 = v13;
  v21 = type metadata accessor for TTRIInlineButtonAttachmentTextView.Option(0, v4, v13, v20);
  v108 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v107 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v22;
  MEMORY[0x28223BE20](v23);
  v111 = &v73 - v24;
  v25 = MEMORY[0x277D84F90];
  v114 = 0;
  v115 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v109 = sub_21DBF8E0C();
  v97 = v21;
  if (sub_21DBFA6DC())
  {
    v78 = v10;
    v26 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
    v103 = v1;
    v85 = v26;
    swift_beginAccess();
    v27 = 0;
    v91 = 0;
    v28 = v108;
    v105 = (v108 + 32);
    v106 = (v108 + 16);
    v104 = (v15 + 48);
    v101 = (v15 + 32);
    v84 = (v110 + 16);
    v83 = (v110 + 56);
    v82 = (v99 + 16);
    v81 = (v110 + 48);
    v74 = (v110 + 32);
    v77 = (v110 + 8);
    v93 = (v99 + 8);
    v76 = (v100 + 8);
    v79 = v15 + 16;
    v87 = v15;
    v86 = (v15 + 8);
    v92 = v25;
    v100 = v4;
    v80 = v6;
    v29 = v90;
    v30 = v96;
    v31 = v97;
    v32 = v109;
    v102 = v19;
    while (1)
    {
      v34 = sub_21DBFA6AC();
      sub_21DBFA61C();
      if (v34)
      {
        (*(v28 + 16))(v111, v32 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v27, v31);
      }

      else
      {
        result = sub_21DBFBF7C();
        if (v73 != 8)
        {
          __break(1u);
          return result;
        }

        v113 = result;
        (*v106)(v111, &v113, v31);
        swift_unknownObjectRelease();
      }

      v35 = MEMORY[0x277D84F90];
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_52;
      }

      v110 = v27 + 1;
      v36 = v107;
      (*v105)(v107, v111, v31);
      if ((*v104)(v36, 1, v112) != 1)
      {
        break;
      }

      if (v114)
      {
        sub_21D0D8CF0(0, &qword_280D0C1F0, 0x277D75710);
        sub_21DBF8E0C();
        sub_21DBFB58C();
        MEMORY[0x223D42D80]();
        if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
          v29 = v90;
        }

        sub_21DBFA6CC();
        v92 = v115;

        v31 = v97;
      }

      v114 = v35;
LABEL_5:
      v32 = v109;
      v33 = sub_21DBFA6DC();
      ++v27;
      v28 = v108;
      if (v110 == v33)
      {
        goto LABEL_34;
      }
    }

    v37 = v36;
    v38 = v112;
    v99 = *v101;
    (v99)(v19, v37, v112);
    (*v84)(v30, &v19[*(v38 + 40)], v4);
    (*v83)(v30, 0, 1, v4);
    v39 = *(TupleTypeMetadata2 + 48);
    v40 = *v82;
    (*v82)(v29, v30, v6);
    v40(&v29[v39], &v103[v85], v6);
    v41 = *v81;
    if ((*v81)(v29, 1, v4) == 1)
    {
      v42 = *v93;
      (*v93)(v30, v6);
      if (v41(&v29[v39], 1, v4) == 1)
      {
        v42(v29, v6);
        v43 = v87;
        if (v91)
        {
          goto LABEL_44;
        }

        v91 = 1;
        v44 = 1;
LABEL_22:
        v98 = v44;
        goto LABEL_23;
      }
    }

    else
    {
      v45 = v78;
      v40(v78, v29, v6);
      if (v41(&v29[v39], 1, v4) != 1)
      {
        v46 = v75;
        (*v74)(v75, &v29[v39], v4);
        v47 = sub_21DBFA10C();
        v48 = *v77;
        (*v77)(v46, v4);
        v49 = *v93;
        (*v93)(v96, v6);
        v48(v45, v4);
        v49(v29, v6);
        v43 = v87;
        if (v47 & v91)
        {
LABEL_44:

          v68 = v102;
          if (qword_27CE56568 != -1)
          {
            swift_once();
          }

          v69 = sub_21DBF84BC();
          __swift_project_value_buffer(v69, qword_27CE58B00);
          v70 = sub_21DBF84AC();
          v71 = sub_21DBFAEBC();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            *v72 = 0;
            _os_log_impl(&dword_21D0C9000, v70, v71, "Cannot build a valid UIMenu with multiple selected items", v72, 2u);
            MEMORY[0x223D46520](v72, -1, -1);
          }

          (*v86)(v68, v112);
LABEL_49:
          v63 = 0;
          goto LABEL_50;
        }

        v91 = v47 | v91;
        v44 = v47 & 1;
        goto LABEL_22;
      }

      (*v93)(v96, v6);
      (*v77)(v45, v4);
    }

    (*v76)(v29, TupleTypeMetadata2);
    v98 = 0;
    v43 = v87;
LABEL_23:
    v50 = v102;
    sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
    v51 = *(v50 + 2);
    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v53 = v88;
    v54 = v112;
    (*(v43 + 16))(v88, v50, v112);
    v55 = (*(v43 + 80) + 40) & ~*(v43 + 80);
    v56 = swift_allocObject();
    v57 = v94;
    v56[2] = v100;
    v56[3] = v57;
    v56[4] = v52;
    (v99)(v56 + v55, v53, v54);
    v58 = v51;
    sub_21DBF8E0C();
    v59 = sub_21DBFB77C();
    v60 = v114;
    v61 = v59;
    if (v60)
    {
      MEMORY[0x223D42D80]();
      if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();

      v19 = v102;
      (*v86)(v102, v112);
    }

    else
    {
      MEMORY[0x223D42D80]();
      if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();

      v19 = v102;
      (*v86)(v102, v112);
      v92 = v115;
    }

    v4 = v100;
    v6 = v80;
    v29 = v90;
    v30 = v96;
    v31 = v97;
    goto LABEL_5;
  }

  v91 = 0;
  v92 = v25;
LABEL_34:

  if (v114)
  {
    sub_21D0D8CF0(0, &qword_280D0C1F0, 0x277D75710);
    sub_21DBF8E0C();
    sub_21DBFB58C();
    MEMORY[0x223D42D80]();
    if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_52:
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
  }

  if ((v91 & 1) == 0)
  {

    if (qword_27CE56568 != -1)
    {
      swift_once();
    }

    v64 = sub_21DBF84BC();
    __swift_project_value_buffer(v64, qword_27CE58B00);
    v65 = sub_21DBF84AC();
    v66 = sub_21DBFAEBC();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_21D0C9000, v65, v66, "Cannot build a valid UIMenu with no selected items", v67, 2u);
      MEMORY[0x223D46520](v67, -1, -1);
    }

    goto LABEL_49;
  }

  sub_21D0D8CF0(0, &qword_280D0C1F0, 0x277D75710);
  v63 = sub_21DBFB58C();
LABEL_50:

  return v63;
}

void sub_21D1A5C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = *(type metadata accessor for TTRIMenuItem(0, a4, a5, v13) + 40);
    v16 = *(a4 - 8);
    v17 = *(v16 + 16);
    v17(v11, a3 + v15, a4);
    (*(v16 + 56))(v11, 0, 1, a4);
    sub_21D1A6394(v11);
    (*(v9 + 8))(v11, v8);
    v18 = [v14 attributedText];
    if (v18)
    {
      v19 = v18;
      TTRIInlineButtonAttachmentTextView.applyAttributedText(_:forceUpdate:)(v18, 1);

      v20 = v14 + *((*MEMORY[0x277D85000] & *v14) + 0x80);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v20 + 1);
        ObjectType = swift_getObjectType();
        v24[3] = a4;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
        v17(boxed_opaque_existential_0, a3 + v15, a4);
        (*(v21 + 8))(v24, ObjectType, v21);

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(v24);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id TTRIInlineButtonAttachmentTextView.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_21D1A5F00(char *a1)
{
  v2 = MEMORY[0x277D85000];

  v3 = *((*v2 & *a1) + 0x78);
  v4 = sub_21DBFBA8C();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  sub_21D157444(&a1[*((*v2 & *a1) + 0x80)]);
  v5 = *&a1[*((*v2 & *a1) + 0x88)];
}

uint64_t sub_21D1A6068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_21D0CF2E8(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_21D1A8418(v13);
}

uint64_t sub_21D1A6104(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
LABEL_5:
    v10 = [a1 subviews];
    sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
    v11 = sub_21DBFA5EC();

    if (v11 >> 62)
    {
LABEL_21:
      v12 = sub_21DBFBD7C();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v12 != i; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x223D44740](i, v11);
      }

      else
      {
        if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v14 = *(v11 + 8 * i + 32);
      }

      v15 = v14;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v7 = sub_21D1A6104(v14, a2, a3);

      if (v7)
      {

        return v7;
      }
    }

    return 0;
  }

  v7 = v6;
  if (!a2)
  {
    v16 = a1;
    return v7;
  }

  v8 = a1;
  sub_21D0D0E78(a2, a3);
  v9 = a2(v7);
  sub_21D0D0E88(a2, a3);
  if ((v9 & 1) == 0)
  {

    goto LABEL_5;
  }

  return v7;
}

uint64_t sub_21D1A62AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void sub_21D1A6304(uint64_t a1, SEL *a2, SEL *a3, void (*a4)(id))
{
  ObjectType = swift_getObjectType();
  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, *a2);
  v11.receiver = v4;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, *a3, a1);
  a4(v10);
}

uint64_t sub_21D1A6394(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  v9 = *((v4 & v3) + 0x78);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v9], v5);
  swift_beginAccess();
  (*(v6 + 24))(&v1[v9], a1, v5);
  swift_endAccess();
  sub_21D1A0FCC(v8);
  return (*(v6 + 8))(v8, v5);
}

void _s15RemindersUICore34TTRIInlineButtonAttachmentTextViewC5coderACyxGSgSo7NSCoderC_tcfc_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = MEMORY[0x277D85000];
  v7 = *MEMORY[0x277D85000];
  v8 = (v4 + *((*MEMORY[0x277D85000] & *v4) + 0x60));
  *v8 = 0;
  v8[1] = 0;
  *(v4 + *((*v6 & *v4) + 0x68)) = 0;
  v9 = *((*v6 & *v4) + 0x70);
  v10 = *((v7 & v5) + 0x50);
  type metadata accessor for TTRIInlineButtonAttachmentTextView.Option(0, v10, *((v7 & v5) + 0x58), a4);
  *(v4 + v9) = sub_21DBF9E3C();
  (*(*(v10 - 8) + 56))(v4 + *((*v6 & *v4) + 0x78), 1, 1, v10);
  *(v4 + *((*v6 & *v4) + 0x80) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + *((*v6 & *v4) + 0x88)) = 0;
  sub_21DBFC31C();
  __break(1u);
}

uint64_t sub_21D1A6724(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_21D1A67D0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || ((v7 + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v11 = a2[1];
    *a1 = *a2;
    a1[1] = v11;
    v12 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    v13 = *v12;
    v14 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v14 = *v12;
    v15 = *(v5 + 16);
    sub_21DBF8E0C();
    v16 = v13;
    v15(v14 + 1, v12 + 1, v4);
    v17 = ((v14 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((v12 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v18;
    v17[1] = v18[1];
    sub_21DBF8E0C();
  }

  return a1;
}

double sub_21D1A692C(uint64_t a1, uint64_t a2)
{

  v4 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);

  (*(*(*(a2 + 16) - 8) + 8))((v4 + *(*(*(a2 + 16) - 8) + 80) + 8) & ~*(*(*(a2 + 16) - 8) + 80));

  return result;
}

void *sub_21D1A69D4(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  *v5 = *v6;
  v8 = *(a3 + 16);
  v9 = *(*(v8 - 8) + 16);
  v10 = *(v8 - 8) + 16;
  v11 = *(*(v8 - 8) + 80);
  v12 = (v5 + v11 + 8) & ~v11;
  v13 = (v6 + v11 + 8) & ~v11;
  sub_21DBF8E0C();
  v14 = v7;
  v9(v12, v13, v8);
  v15 = *(v10 + 48) + 7;
  v16 = ((v15 + v12) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v16[1] = v17[1];
  sub_21DBF8E0C();
  return a1;
}

void *sub_21D1A6AB4(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  v6 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *v6;
  *v6 = *v7;
  v10 = v8;

  v11 = *(*(a3 + 16) - 8);
  v12 = v11 + 24;
  v13 = *(v11 + 80);
  v14 = (v6 + v13 + 8) & ~v13;
  v15 = (v7 + v13 + 8) & ~v13;
  (*(v11 + 24))(v14, v15);
  v16 = *(v12 + 40) + 7;
  v17 = ((v16 + v14) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + v15) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v17[1] = v18[1];
  sub_21DBF8E0C();

  return a1;
}

_OWORD *sub_21D1A6BB8(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (v4 + v8 + 8) & ~v8;
  v10 = (v5 + v8 + 8) & ~v8;
  (*(v6 + 32))(v9, v10);
  *((*(v7 + 32) + 7 + v9) & 0xFFFFFFFFFFFFFFF8) = *((*(v7 + 32) + 7 + v10) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_21D1A6C70(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v7;
  *v7 = *v8;

  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;
  (*(v10 + 40))(v13, v14);
  v15 = *(v11 + 24) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v16[1] = v17[1];

  return a1;
}

uint64_t sub_21D1A6D58(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_21D1A6EA8(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (((result + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_21D1A715C(uint64_t a1)
{
  result = sub_21DBFBA8C();
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

uint64_t sub_21D1A7240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TTRIMenuItem(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

void *sub_21D1A72BC(void *__dst, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = ((v7 + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || v8 > 0x18)
  {
    v11 = *a2;
    *__dst = *a2;
    __dst = (v11 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));

    return __dst;
  }

  if ((*(v5 + 84) & 0x80000000) == 0)
  {
    v12 = a2[1];
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    if (v12 != -1)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v14 = a2;
  v15 = (*(v5 + 48))(((a2 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, *(v5 + 84), v4);
  a2 = v14;
  if (!v15)
  {
LABEL_18:
    v16 = a2[1];
    *__dst = *a2;
    __dst[1] = v16;
    v17 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    v18 = *v17;
    v19 = ((__dst + 23) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v17;
    v20 = *(v5 + 16);
    sub_21DBF8E0C();
    v21 = v18;
    v20(v19 + 1, v17 + 1, v4);
    v22 = ((v19 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v17 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v23;
    v22[1] = v23[1];
    sub_21DBF8E0C();
    return __dst;
  }

LABEL_14:

  return memcpy(__dst, a2, v8);
}

double sub_21D1A749C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = ~v5;
  if ((*(v4 + 84) & 0x80000000) != 0)
  {
    if ((*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & v6))
    {
      return result;
    }

    goto LABEL_7;
  }

  v7 = *(a1 + 8);
  if (v7 >= 0xFFFFFFFF)
  {
    LODWORD(v7) = -1;
  }

  if (v7 == -1)
  {
LABEL_7:

    v9 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);

    (*(v4 + 8))((v9 + v5 + 8) & v6, v3);
  }

  return result;
}

void *sub_21D1A75DC(void *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = ~v5;
  if ((*(v4 + 84) & 0x80000000) == 0)
  {
    v8 = a2[1];
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v6 + 7;
    if (v8 != -1)
    {
      goto LABEL_5;
    }

LABEL_9:
    v15 = a2[1];
    *a1 = *a2;
    a1[1] = v15;
    v16 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    v18 = *v17;
    *v16 = *v17;
    v19 = v17 + v5;
    v20 = (v16 + v5 + 8) & v7;
    v21 = (v19 + 8) & v7;
    v22 = *(v4 + 16);
    v23 = a1;
    sub_21DBF8E0C();
    v24 = v18;
    v22(v20, v21, v3);
    v25 = ((v9 + v20) & 0xFFFFFFFFFFFFFFF8);
    v26 = ((v9 + v21) & 0xFFFFFFFFFFFFFFF8);
    *v25 = *v26;
    v25[1] = v26[1];
    sub_21DBF8E0C();
    return v23;
  }

  v11 = a1;
  v12 = a2;
  v13 = (*(v4 + 48))((((a2 + 23) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & v7, *(v4 + 84), v3);
  a2 = v12;
  v14 = v13;
  a1 = v11;
  v9 = v6 + 7;
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_5:

  return memcpy(a1, a2, ((v9 + ((v5 + 24) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 16);
}

void *sub_21D1A7798(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = *(v6 + 64);
  v11 = v10 + 7;
  v12 = (v10 + 7 + ((v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8;
  if ((v7 & 0x80000000) != 0)
  {
    v39 = v10 + 7;
    v17 = *(v6 + 48);
    v18 = v17((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v9, v7, v5);
    v15 = v17((((a2 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v9, v7, v5);
    v11 = v39;
    if (!v18)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    *a1 = *a2;
    a1[1] = a2[1];
    v20 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    v22 = *v21;
    *v20 = *v21;
    v23 = (v20 + v8 + 8) & v9;
    v24 = (v21 + v8 + 8) & v9;
    v25 = *(v6 + 16);
    sub_21DBF8E0C();
    v26 = v22;
    v25(v23, v24, v5);
    v27 = ((v11 + v23) & 0xFFFFFFFFFFFFFFF8);
    v28 = ((v11 + v24) & 0xFFFFFFFFFFFFFFF8);
    *v27 = *v28;
    v27[1] = v28[1];
    sub_21DBF8E0C();
    return a1;
  }

  v13 = a1[1];
  v14 = a2[1];
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 + 1;
  if (v13 <= 0xFFFFFFFE)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v15)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    sub_21DBF8E0C();

    v29 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v30 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    v31 = *v30;
    v32 = *v29;
    *v29 = *v30;
    v33 = v31;

    v34 = v30 + v8;
    v35 = (v29 + v8 + 8) & v9;
    v36 = (v34 + 8) & v9;
    (*(v6 + 24))(v35, v36, v5);
    v37 = ((v11 + v35) & 0xFFFFFFFFFFFFFFF8);
    v38 = ((v11 + v36) & 0xFFFFFFFFFFFFFFF8);
    *v37 = *v38;
    v37[1] = v38[1];
    sub_21DBF8E0C();

    return a1;
  }

  v16 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);

  (*(v6 + 8))((v16 + v8 + 8) & v9, v5);

LABEL_9:

  return memcpy(a1, a2, v12 + 16);
}

_OWORD *sub_21D1A7AB4(_OWORD *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = ~v5;
  if ((*(v4 + 84) & 0x80000000) == 0)
  {
    v8 = a2[1];
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v6 + 7;
    if (v8 != -1)
    {
      goto LABEL_5;
    }

LABEL_9:
    *a1 = *a2;
    v15 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v16;
    v17 = v16 + v5;
    v18 = (v15 + v5 + 8) & v7;
    v19 = (v17 + 8) & v7;
    v20 = a1;
    (*(v4 + 32))(v18, v19, v3);
    *((v9 + v18) & 0xFFFFFFFFFFFFFFF8) = *((v9 + v19) & 0xFFFFFFFFFFFFFFF8);
    return v20;
  }

  v11 = a1;
  v12 = a2;
  v13 = (*(v4 + 48))((((a2 + 23) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & v7, *(v4 + 84), v3);
  a2 = v12;
  v14 = v13;
  a1 = v11;
  v9 = v6 + 7;
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_5:

  return memcpy(a1, a2, ((v9 + ((v5 + 24) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 16);
}

void *sub_21D1A7C58(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = *(v6 + 64);
  v11 = v10 + 7;
  v12 = (v10 + 7 + ((v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8;
  if ((v7 & 0x80000000) != 0)
  {
    v33 = (v10 + 7 + ((v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8;
    v34 = v10 + 7;
    v17 = *(v6 + 48);
    v18 = v17((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v9, v7, v5);
    v15 = v17((((a2 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v9, v7, v5);
    v12 = v33;
    v11 = v34;
    if (!v18)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    *a1 = *a2;
    v20 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v21;
    v22 = (v20 + v8 + 8) & v9;
    v23 = (v21 + v8 + 8) & v9;
    (*(v6 + 32))(v22, v23, v5);
    *((v11 + v22) & 0xFFFFFFFFFFFFFFF8) = *((v11 + v23) & 0xFFFFFFFFFFFFFFF8);
    return a1;
  }

  v13 = a1[1];
  v14 = a2[1];
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 + 1;
  if (v13 <= 0xFFFFFFFE)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v15)
  {
    v24 = a2[1];
    *a1 = *a2;
    a1[1] = v24;

    v25 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v26 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    v27 = *v25;
    *v25 = *v26;

    v28 = v26 + v8;
    v29 = (v25 + v8 + 8) & v9;
    v30 = (v28 + 8) & v9;
    (*(v6 + 40))(v29, v30, v5);
    v31 = ((v11 + v29) & 0xFFFFFFFFFFFFFFF8);
    v32 = ((v11 + v30) & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v32;
    v31[1] = v32[1];

    return a1;
  }

  v16 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);

  (*(v6 + 8))((v16 + v8 + 8) & v9, v5);

LABEL_9:

  return memcpy(a1, a2, v12 + 16);
}

uint64_t sub_21D1A7F30(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 - 1 >= a2)
  {
    goto LABEL_27;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  v11 = v9 + 2;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    if ((v5 & 0x80000000) != 0)
    {
      v18 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    else
    {
      v17 = *(a1 + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      v18 = v17 + 1;
    }

    if (v18 >= 2)
    {
      return v18 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_27;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_27;
  }

LABEL_23:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return (v10 | v16) + v7;
}

unsigned int *sub_21D1A80A8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v7 - 1;
  v9 = *(v5 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 24) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 - 1 >= a3)
  {
    v13 = 0;
    if (v8 >= a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v11 = a3 - v7 + 2;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 24) & ~v9) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v8 >= a2)
    {
LABEL_16:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v10) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *(result + v10) = 0;
      }

      else if (v13)
      {
        *(result + v10) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if ((v6 & 0x80000000) != 0)
      {
        v17 = *(v5 + 56);
        v18 = (((result + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;
        v19 = a2 + 1;

        return v17(v18, v19);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *result = a2 - 0x7FFFFFFF;
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = a2;
      }

      return result;
    }
  }

  v14 = a2 - v7;
  if (((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 24) & ~v9) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 24) & ~v9) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = result;
    bzero(result, v10);
    result = v16;
    *v16 = v14;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v10) = v15;
    }

    else
    {
      *(result + v10) = v15;
    }
  }

  else if (v13)
  {
    *(result + v10) = v15;
  }

  return result;
}

uint64_t sub_21D1A8294(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  if ((*(v2 + 84) & 0x80000000) != 0)
  {
    return (*(v2 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v2 + 80) + 8) & ~*(v2 + 80));
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  return (v3 + 1);
}

void sub_21D1A8308(void *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(v4 + 80);
  v8 = ~v7;
  if (v6 >= a2)
  {
    if (a2)
    {
      if ((v5 & 0x80000000) != 0)
      {
        v12 = *(v4 + 56);
        v13 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & v8;

        v12(v13);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        a1[1] = 0;
      }

      else
      {
        a1[1] = a2 - 1;
      }
    }
  }

  else
  {
    v9 = ((((v7 + 24) & v8) + *(v4 + 64) + 7) & 0xFFFFFFF8) + 16;
    if (v9)
    {
      v10 = ~v6 + a2;
      bzero(a1, v9);
      *a1 = v10;
    }
  }
}

uint64_t sub_21D1A8418(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C690, &unk_21DC11AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21D1A849C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v8 = *(type metadata accessor for TTRIMenuItem(0, v6, v7, a4) - 8);
  v9 = v4[4];
  v10 = v4 + ((*(v8 + 80) + 40) & ~*(v8 + 80));

  sub_21D1A5C38(a1, v9, v10, v6, v7);
}

id _s15RemindersUICore24TTRIMenuButtonAttachmentCfD_0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for TTRIReminderCellQuickBarDateViewController(uint64_t a1)
{
  result = qword_27CE58D20;
  if (!qword_27CE58D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21D1A860C(uint64_t a1)
{
  result = sub_21D1A8634();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21D1A8634()
{
  result = qword_27CE58D30;
  if (!qword_27CE58D30)
  {
    v3 = type metadata accessor for TTRIReminderCellQuickBarDateViewController(255);
    result = swift_getWitnessTable(byte_21DC2AFE8, v3, v0, v1);
    atomic_store(result, &qword_27CE58D30);
  }

  return result;
}

uint64_t sub_21D1A868C()
{
  sub_21D157444(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21D1A86E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarDatePresenter_dateComponents;
  swift_beginAccess();
  sub_21D1A91F8(v0 + v7, v3);
  sub_21D1A88C0(v3, v6);
  sub_21D0CF7E0(v3, &qword_27CE58D60, &unk_21DC0A690);
  TTRRemindersListPostponeType.init(date:)(v6, &v15);
  v8 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D70, &unk_21DC0A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = v8;
  *(inited + 40) = 1;
  v10 = sub_21D177548(inited);
  swift_setDeallocating();
  v11 = swift_allocObject();
  swift_weakInit();
  v15 = 256;
  v16 = 1;
  v17 = v10;
  v18 = sub_21D1A9268;
  v19 = v11;
  v12 = _s15RemindersUICore39TTRIRemindersListContextualMenuAssemblyO018makeDueDateContextF013configurationSo6UIMenuCAC0ijkF13ConfigurationV_tFZ_0(&v15);

  return v12;
}

uint64_t sub_21D1A88C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF5A2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_21DBF509C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D1A91F8(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21D0CF7E0(v10, &qword_27CE58D60, &unk_21DC0A690);
    v15 = sub_21DBF563C();
    return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v17 = [objc_opt_self() currentCalendar];
    sub_21DBF596C();

    sub_21DBF597C();
    (*(v5 + 8))(v7, v4);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_21D1A8B60(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = v3;
    sub_21D1A8BCC(&v5);
  }

  return result;
}

void sub_21D1A8BCC(_BYTE *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D78, &qword_21DC18800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for TTRDateChangeType(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 > 4u)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      v18 = (*(*(v11 + 8) + 40))(ObjectType);
      swift_unknownObjectRelease();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        v19 = 1;
        v20 = v18;
        v21 = 0u;
        v22 = 0u;
        v23 = 1;
        v24 = 0;
        v25 = 1;
        v15 = v18;
        sub_21D1A9344(&v20, v14);

        swift_unknownObjectRelease();
        sub_21D1A9430(&v20);
      }

      else
      {
        v17 = v18;
      }
    }
  }

  else
  {
    LOBYTE(v20) = *a1;
    TTRRemindersListPostponeType.dateChangeType.getter(v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_21D0CF7E0(v6, &qword_27CE58D78, &qword_21DC18800);
    }

    else
    {
      sub_21D1A9484(v6, v10);
      v16 = swift_unknownObjectWeakLoadStrong();
      if (v16)
      {
        sub_21D1A9270(v10, v16);
        swift_unknownObjectRelease();
      }

      sub_21D1A94E8(v10);
    }
  }
}

uint64_t sub_21D1A8E2C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarDatePresenter_dateComponents;
  swift_beginAccess();
  sub_21D1A9544(a1, v1 + v12);
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    sub_21D1A91F8(v1 + v12, v8);
    sub_21D1A91F8(v8, v5);
    sub_21DAA48BC(v5, v11);
    sub_21D0CF7E0(v8, &qword_27CE58D60, &unk_21DC0A690);
    (*(*(v13 + 8) + 24))(v11, ObjectType);
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &qword_27CE58D60, &unk_21DC0A690);
}

uint64_t sub_21D1A8FF4()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarDatePresenter_dateComponents, &qword_27CE58D60, &unk_21DC0A690);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarDatePresenter_router));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIReminderCellQuickBarDatePresenter(uint64_t a1)
{
  result = qword_27CE58D48;
  if (!qword_27CE58D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D1A90EC(uint64_t a1)
{
  sub_21D1A919C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21D1A919C(uint64_t a1)
{
  if (!qword_27CE58D58)
  {
    sub_21DBF509C();
    v1 = sub_21DBFBA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE58D58);
    }
  }
}

uint64_t sub_21D1A91F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21D1A9270(uint64_t a1, uint64_t a2)
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
      (*(v8 + 72))(v6, a1, ObjectType, v8);
      swift_unknownObjectRelease();
    }
  }
}

void sub_21D1A9344(_OWORD *a1, uint64_t a2)
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
      (*(v8 + 80))(v6, v11, ObjectType, v8);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_21D1A9484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRDateChangeType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D1A94E8(uint64_t a1)
{
  v2 = type metadata accessor for TTRDateChangeType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D1A9544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D1A95B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TTRIReminderCellQuickBarDateInteractor();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  v6 = type metadata accessor for TTRIReminderCellQuickBarDateRouter();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25[3] = v6;
  v25[4] = &off_282EAAAD0;
  v25[0] = v7;
  type metadata accessor for TTRIReminderCellQuickBarDatePresenter(0);
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v25, v6);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = *v12;
  v15 = (v8 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarDatePresenter_router);
  v15[3] = v6;
  v15[4] = &off_282EAAAD0;
  *v15 = v14;
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 40) = 0;
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarDatePresenter_dateComponents;
  v17 = sub_21DBF509C();
  (*(*(v17 - 8) + 56))(v8 + v16, 1, 1, v17);
  v18 = (v8 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarDatePresenter_interactor);
  *v18 = v5;
  v18[1] = &off_282EAAA30;

  __swift_destroy_boxed_opaque_existential_0(v25);
  v19 = type metadata accessor for TTRIReminderCellQuickBarDateViewController(0);
  v20 = objc_allocWithZone(v19);

  v22 = sub_21D1A985C(v21, v20);

  *(v5 + 24) = &off_282EAAA58;
  swift_unknownObjectWeakAssign();
  *(v8 + 24) = sub_21D1A9F78();
  swift_unknownObjectWeakAssign();
  *(v8 + 40) = a3;
  swift_unknownObjectWeakAssign();
  a1[3] = v19;
  a1[4] = &off_282EAAA20;

  *a1 = v22;
  return v8;
}

void *sub_21D1A985C(uint64_t a1, void *a2)
{
  v4 = sub_21DBFB7EC();
  v52 = *(v4 - 1);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBFB95C();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7);
  v59 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  v18 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = off_282EAAA78;

  v22 = sub_21DBFA12C();
  v51 = [objc_opt_self() systemImageNamed_];

  v23 = sub_21DBF509C();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  sub_21D1A91F8(v17, v14);
  sub_21DAA48BC(v14, v20);
  sub_21D1A9FD0(v17);
  if (qword_27CE57450 != -1)
  {
    swift_once();
  }

  v25 = a1;
  v54 = *algn_27CE66FB8;
  v55 = qword_27CE66FB0;
  if (qword_27CE57458 != -1)
  {
    swift_once();
  }

  v56 = *algn_27CE66FC8;
  v57 = qword_27CE66FC0;
  v26 = MEMORY[0x277D85000];
  v27 = (a2 + *((*MEMORY[0x277D85000] & *a2) + 0x68));
  *v27 = v25;
  v27[1] = v21;
  *(a2 + *((*v26 & *a2) + 0x70)) = 1148846080;
  v28 = a2 + *((*v26 & *a2) + 0x60);
  v60 = v20;
  sub_21D1AA038(v20, v28, v24);
  v58 = v25;

  sub_21DBFB8EC();
  v29 = [objc_opt_self() quaternarySystemFillColor];
  v30 = sub_21DBFB79C();
  sub_21DBF883C();
  v30(v64, 0);
  (*(v52 + 104))(v6, *MEMORY[0x277D74FD8], v53);
  sub_21DBFB7FC();
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v31 = sub_21D900614(7);
  v32 = [objc_opt_self() configurationWithFont:v31 scale:2];

  sub_21DBFB78C();
  v53 = v51;
  sub_21DBFB8FC();
  sub_21DBFB80C();
  sub_21DBFB87C();
  type metadata accessor for TTRIReminderCellQuickBarPopoverAnchoringButton();
  v33 = v61;
  v34 = v62;
  (*(v61 + 16))(v59, v11, v62);
  *(a2 + *((*v26 & *a2) + 0x78)) = sub_21DBFB96C();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D88, &qword_21DC0A718);
  v63.receiver = a2;
  v63.super_class = v35;
  v36 = objc_msgSendSuper2(&v63, sel_init);
  v37 = *((*v26 & *v36) + 0x78);
  v38 = *(v36 + v37);
  v39 = v36;
  v40 = v38;
  sub_21D5D768C(v40);

  [*(v36 + v37) setShowsMenuAsPrimaryAction_];
  v41 = *(v36 + v37);
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v41;

  v44 = _sSo6UIMenuC15RemindersUICoreE12ttr_uncached7options_ABSo0A7OptionsV_ABSgyctFZ_0(0, sub_21D1AA09C, v42);

  [v43 setMenu_];

  [*(v36 + v37) setPreferredMenuElementOrder_];
  v45 = *(v36 + v37);
  v46 = sub_21DBFA12C();
  [v45 setAccessibilityLabel_];

  v47 = *(v36 + v37);
  v48 = sub_21DBFA12C();
  [v47 setAccessibilityHint_];

  v49.n128_f64[0] = (*(v33 + 8))(v11, v34);
  sub_21D1AA0A4(v60, v49);
  return v39;
}

unint64_t sub_21D1A9F78()
{
  result = qword_27CE58D80;
  if (!qword_27CE58D80)
  {
    v3 = type metadata accessor for TTRIReminderCellQuickBarDateViewController(255);
    result = swift_getWitnessTable(byte_21DC0A48C, v3, v0, v1);
    atomic_store(result, &qword_27CE58D80);
  }

  return result;
}

uint64_t sub_21D1A9FD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D1AA038(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D1AA0A4(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D1AA100()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocClassInstance();
}

void *sub_21D1AA184(void *a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = a1;
    v7 = sub_21DBFC2CC();

    if (v7)
    {
      sub_21D0D8CF0(0, a3, a4);
      swift_dynamicCast();
      return v14;
    }
  }

  else if (*(a2 + 16))
  {
    v10 = sub_21D17E07C(a1);
    if (v11)
    {
      v12 = *(*(a2 + 56) + 8 * v10);
      v13 = v12;
      return v12;
    }
  }

  return 0;
}

uint64_t sub_21D1AA2E0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_21DBFC2CC();

    if (v3)
    {
      type metadata accessor for TTRAccountEditor();
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_21D17E07C(a1);
    if (v5)
    {
    }
  }

  return 0;
}

uint64_t sub_21D1AA390()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE58D90);
  v1 = __swift_project_value_buffer(v0, qword_27CE58D90);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void REMSaveRequest.prepareForMutatingOrder(inListsWithIDs:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21D1AA628(a1);
  v4 = v3;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = sub_21DBFC21C();
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v4 = v5 | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v6 = v3 + 64;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 64);
  }

  v12 = 0;
  v13 = (v7 + 64) >> 6;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v12;
    v15 = v8;
    v16 = v12;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v4 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_18:
      sub_21D0CFAF8(v4);
      return;
    }

    while (1)
    {
      v19 = [v2 updateList_];

      v12 = v16;
      v8 = v17;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_21DBFC2DC())
      {
        swift_unknownObjectRelease();
        sub_21D0D8CF0(0, &qword_280D17690, 0x277D44660);
        swift_dynamicCast();
        v18 = v20;
        v16 = v12;
        v17 = v8;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_18;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t sub_21D1AA628(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_21DBFBD7C())
    {
LABEL_3:
      sub_21DBF7A4C();
      v2 = [v1 store];
      v4 = sub_21DBF7A3C();

      return v4;
    }
  }

  else if (*(a1 + 16))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84F90];

  return sub_21D17750C(v3);
}

Swift::Void __swiftcall REMSaveRequest.prepareForMutatingOrder(in:needsRefresh:)(Swift::OpaquePointer in, Swift::Bool needsRefresh)
{
  v4 = in._rawValue >> 62;
  if (in._rawValue >> 62)
  {
    v5 = sub_21DBFBD7C();
  }

  else
  {
    v5 = *((in._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_11;
  }

  v30 = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    do
    {
      if ((in._rawValue & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D44740](v7, in._rawValue);
      }

      else
      {
        v8 = *(in._rawValue + v7 + 4);
      }

      v9 = v8;
      ++v7;
      v10 = [v8 objectID];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v5 != v7);
    v6 = v30;
LABEL_11:
    v11 = sub_21D19ED08(v6);

    if (needsRefresh)
    {
      v12 = sub_21D1AA628(v11);
    }

    else
    {
      v12 = sub_21D17750C(MEMORY[0x277D84F90]);
    }

    v27 = v12;
    if (v4)
    {
      v13 = sub_21DBFBD7C();
      if (v13)
      {
LABEL_16:
        if (v13 >= 1)
        {
          v14 = 0;
          v15 = v27 & 0xFFFFFFFFFFFFFF8;
          if (v27 < 0)
          {
            v15 = v27;
          }

          v26 = v15;
          while (1)
          {
            if ((in._rawValue & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x223D44740](v14, in._rawValue);
            }

            else
            {
              v19 = *(in._rawValue + v14 + 4);
            }

            v18 = v19;
            v20 = [v19 objectID];
            v21 = sub_21D1AABD8(v20);

            if (!v21)
            {
              goto LABEL_22;
            }

            if ((v27 & 0xC000000000000001) != 0)
            {
              v22 = v21;
              v23 = sub_21DBFC2CC();

              if (v23)
              {
                sub_21D0D8CF0(0, &qword_280D17690, 0x277D44660);
                swift_dynamicCast();
                v16 = v29;
                if (v29)
                {
                  goto LABEL_21;
                }
              }
            }

            else if (*(v27 + 16))
            {
              v24 = sub_21D17E07C(v21);
              if (v25)
              {
                v16 = *(*(v27 + 56) + 8 * v24);
                if (v16)
                {
                  goto LABEL_21;
                }
              }
            }

            v16 = v18;
LABEL_21:
            v17 = [v28 updateList_];

            v18 = v21;
LABEL_22:
            ++v14;

            if (v13 == v14)
            {
              goto LABEL_37;
            }
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v13 = *((in._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_16;
      }
    }

LABEL_37:

    return;
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_21D1AABD8(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    sub_21DBF8E0C();
    v5 = a1;
    v6 = sub_21DBFBDCC();

    if (v6)
    {
      v7 = sub_21D1AC084(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v10 = sub_21DBFB62C();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_21DBFB63C();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21D8B1508();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_21D1AC1EC(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_21D1AAD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_21DBFC7DC();
  TTRRemindersListViewModel.ItemID.hash(into:)(v26);
  v10 = sub_21DBFC82C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v22 = v2;
    v23 = v6;
    v24 = v5;
    v25 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_21D1AD270(*(v9 + 48) + v14 * v12, v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v15 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v8, a1);
      sub_21D1AD2D8(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a2 = v25;
        goto LABEL_10;
      }
    }

    v17 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    v26[0] = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21D8B1530();
      v19 = v26[0];
    }

    a2 = v25;
    sub_21D1AD338(*(v19 + 48) + v14 * v12, v25, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D1AC550(v12, type metadata accessor for TTRRemindersListViewModel.ItemID, type metadata accessor for TTRRemindersListViewModel.ItemID, TTRRemindersListViewModel.ItemID.hash(into:));
    v16 = 0;
    *v17 = v26[0];
LABEL_10:
    v6 = v23;
    v5 = v24;
  }

  else
  {
    v16 = 1;
  }

  return (*(v6 + 56))(a2, v16, 1, v5);
}

uint64_t sub_21D1AAFC8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_21DBFC7DC();
  sub_21DBFA27C();
  v6 = sub_21DBFC82C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_21DBFC64C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21D8B16EC();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_21D1AC38C(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_21D1AB104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_21DBFC7DC();
  TTRRecurrenceRuleModel.hash(into:)(v26);
  v10 = sub_21DBFC82C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v22 = v2;
    v23 = v6;
    v24 = v5;
    v25 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_21D1AD270(*(v9 + 48) + v14 * v12, v8, type metadata accessor for TTRRecurrenceRuleModel);
      v15 = _s15RemindersUICore22TTRRecurrenceRuleModelV2eeoiySbAC_ACtFZ_0(v8, a1);
      sub_21D1AD2D8(v8, type metadata accessor for TTRRecurrenceRuleModel);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a2 = v25;
        goto LABEL_10;
      }
    }

    v17 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    v26[0] = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21D8B1E4C();
      v19 = v26[0];
    }

    a2 = v25;
    sub_21D1AD338(*(v19 + 48) + v14 * v12, v25, type metadata accessor for TTRRecurrenceRuleModel);
    sub_21D1AC550(v12, type metadata accessor for TTRRecurrenceRuleModel, type metadata accessor for TTRRecurrenceRuleModel, TTRRecurrenceRuleModel.hash(into:));
    v16 = 0;
    *v17 = v26[0];
LABEL_10:
    v6 = v23;
    v5 = v24;
  }

  else
  {
    v16 = 1;
  }

  return (*(v6 + 56))(a2, v16, 1, v5);
}

uint64_t sub_21D1AB35C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_21DBFC7DC();
  sub_21D621F3C(a1);
  sub_21DBFA27C();

  v5 = sub_21DBFC82C();
  v31 = v4 + 56;
  v32 = v4;
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v31 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 12;
  }

  v29 = v1;
  v30 = ~v6;
  v8 = a1;
  while (1)
  {
    v9 = *(*(v32 + 48) + v7);
    if (v9 > 5)
    {
      if (*(*(v32 + 48) + v7) > 8u)
      {
        if (v9 == 9)
        {
          v10 = 0xD00000000000001DLL;
          v11 = 0x800000021DC43890;
        }

        else if (v9 == 10)
        {
          v10 = 0xD000000000000017;
          v11 = 0x800000021DC438B0;
        }

        else
        {
          v10 = 0x726F737365636361;
          v11 = 0xEB00000000736569;
        }
      }

      else if (v9 == 6)
      {
        v10 = 0xD000000000000017;
        v11 = 0x800000021DC43840;
      }

      else if (v9 == 7)
      {
        v10 = 0xD000000000000013;
        v11 = 0x800000021DC43860;
      }

      else
      {
        v10 = 0x53746E65746E6F63;
        v11 = 0xEC0000006B636174;
      }
    }

    else if (*(*(v32 + 48) + v7) > 2u)
    {
      if (v9 == 3)
      {
        v11 = 0xE500000000000000;
        v10 = 0x656C746974;
      }

      else if (v9 == 4)
      {
        v10 = 0x6F6E6E4177656976;
        v11 = 0xEE006E6F69746174;
      }

      else
      {
        v10 = 0x65646E496C6C6563;
        v11 = 0xEF6E6F697461746ELL;
      }
    }

    else if (*(*(v32 + 48) + v7))
    {
      if (v9 == 1)
      {
        v10 = 0x6574656C706D6F63;
      }

      else
      {
        v10 = 0x797469726F697270;
      }

      if (v9 == 1)
      {
        v11 = 0xEF6E6F7474754264;
      }

      else
      {
        v11 = 0xE800000000000000;
      }
    }

    else
    {
      v10 = 0x656E6961746E6F63;
      v11 = 0xED00007765695672;
    }

    v12 = 0xD00000000000001DLL;
    v13 = 0x726F737365636361;
    if (v8 == 10)
    {
      v13 = 0xD000000000000017;
    }

    v14 = 0xEB00000000736569;
    if (v8 == 10)
    {
      v14 = 0x800000021DC438B0;
    }

    if (v8 == 9)
    {
      v15 = 0x800000021DC43890;
    }

    else
    {
      v12 = v13;
      v15 = v14;
    }

    v16 = 0xD000000000000013;
    if (v8 != 7)
    {
      v16 = 0x53746E65746E6F63;
    }

    v17 = 0xEC0000006B636174;
    if (v8 == 7)
    {
      v17 = 0x800000021DC43860;
    }

    if (v8 == 6)
    {
      v16 = 0xD000000000000017;
      v17 = 0x800000021DC43840;
    }

    if (v8 <= 8)
    {
      v12 = v16;
      v15 = v17;
    }

    v18 = 0x6F6E6E4177656976;
    if (v8 != 4)
    {
      v18 = 0x65646E496C6C6563;
    }

    v19 = 0xEF6E6F697461746ELL;
    if (v8 == 4)
    {
      v19 = 0xEE006E6F69746174;
    }

    if (v8 == 3)
    {
      v18 = 0x656C746974;
      v19 = 0xE500000000000000;
    }

    v20 = 0x797469726F697270;
    if (v8 == 1)
    {
      v20 = 0x6574656C706D6F63;
    }

    v21 = 0xEF6E6F7474754264;
    if (v8 != 1)
    {
      v21 = 0xE800000000000000;
    }

    if (!v8)
    {
      v20 = 0x656E6961746E6F63;
      v21 = 0xED00007765695672;
    }

    if (v8 <= 2)
    {
      v18 = v20;
      v19 = v21;
    }

    v22 = v8 <= 5 ? v18 : v12;
    v23 = v8 <= 5 ? v19 : v15;
    if (v10 == v22 && v11 == v23)
    {
      break;
    }

    v24 = sub_21DBFC64C();

    if (v24)
    {
      goto LABEL_70;
    }

    v7 = (v7 + 1) & v30;
    if (((*(v31 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 12;
    }
  }

LABEL_70:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v2;
  v33 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21D8B14F4();
    v27 = v33;
  }

  v25 = *(*(v27 + 48) + v7);
  sub_21D1AC814(v7);
  *v29 = v33;
  return v25;
}

uint64_t sub_21D1AB818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21DBF70DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_21D1AD228(&qword_27CE58AC0, MEMORY[0x277D45430], MEMORY[0x277D45438]);
  v31 = a1;
  v10 = sub_21DBF9FFC();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_21D1AD228(&qword_27CE58DB0, MEMORY[0x277D45430], MEMORY[0x277D45440]);
      v19 = sub_21DBFA10C();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21D8B204C();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_21D1ACF2C(v13, MEMORY[0x277D45430], &qword_27CE58AC0, MEMORY[0x277D45430], MEMORY[0x277D45438]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_21D1ABB04(uint64_t a1)
{
  v3 = *v1;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](a1);
  v4 = sub_21DBFC82C();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21D8B2204();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_21D1ACBA4(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_21D1ABC08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_21DBFA16C();
  sub_21DBFC7DC();
  sub_21DBFA27C();
  v4 = sub_21DBFC82C();

  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (1)
  {
    v8 = sub_21DBFA16C();
    v10 = v9;
    if (v8 == sub_21DBFA16C() && v10 == v11)
    {
      break;
    }

    v13 = sub_21DBFC64C();

    if (v13)
    {
      goto LABEL_11;
    }

    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v18 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21D8B254C();
    v16 = v18;
  }

  v14 = *(*(v16 + 48) + 8 * v6);
  sub_21D1ACD4C(v6);
  *v2 = v18;
  return v14;
}