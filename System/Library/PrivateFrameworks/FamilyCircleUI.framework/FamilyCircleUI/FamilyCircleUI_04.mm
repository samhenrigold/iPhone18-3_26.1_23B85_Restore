uint64_t sub_21BBEF180()
{
  v1 = v0[5];

  v2 = [*(v1 + qword_27CDD4168) aa_primaryAppleAccount];
  if (v2)
  {
    v3 = v0[5];
    v51 = v2;
    v4 = sub_21BC85A38();
    *(v3 + qword_27CDB64A8) = v4;

    if (v4[2])
    {
      v5 = sub_21BBB3108(0x41435F454C505041, 0xEA00000000004853);
      v6 = v0[17];
      if (v7)
      {
        v8 = v5;
        v9 = v4[7];
        v10 = sub_21BE25B9C();
        v11 = *(v10 - 8);
        (*(v11 + 16))(v6, v9 + *(v11 + 72) * v8, v10);

        (*(v11 + 56))(v6, 0, 1, v10);
        goto LABEL_10;
      }
    }

    else
    {
      v6 = v0[17];
    }

    v21 = sub_21BE25B9C();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
LABEL_10:
    v22 = sub_21BE290DC();
    v23 = v22;
    v24 = v22 & 0xFFFFFFFFFFFFFF8;
    if (v22 >> 62)
    {
LABEL_30:
      v25 = sub_21BE2951C();
      if (v25)
      {
LABEL_12:
        v26 = 0;
        v50 = v0[15];
        v49 = v0[14];
        v27 = &selRef_bundleURL;
        v53 = MEMORY[0x277D84F90];
        do
        {
          v28 = v26;
          while (1)
          {
            if ((v23 & 0xC000000000000001) != 0)
            {
              v29 = MEMORY[0x21CF047C0](v28, v23);
            }

            else
            {
              if (v28 >= *(v24 + 16))
              {
                goto LABEL_29;
              }

              v29 = *(v23 + 8 * v28 + 32);
            }

            v30 = v29;
            v26 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

            v31 = [v29 v27[490]];
            if (v31)
            {
              break;
            }

            ++v28;
            if (v26 == v25)
            {
              goto LABEL_32;
            }
          }

          v32 = v0[31];
          v33 = v0[16];
          v46 = v0[17];
          v47 = v0[30];
          v48 = v31;
          v0[4] = v31;
          v34 = swift_task_alloc();
          *(v34 + 16) = v0 + 4;
          v45 = sub_21BC9DAC4(sub_21BBF0CE4, v34, v32);

          sub_21BBF0D04(v46, &v33[v49[5]]);
          *v33 = v45 & 1;
          *&v33[v49[6]] = v30;
          *&v33[v49[7]] = v47;
          *&v33[v49[8]] = v28;
          v33[v49[9]] = 10;
          v35 = v47;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_21BBBCD00(0, v53[2] + 1, 1, v53);
          }

          v37 = v53[2];
          v36 = v53[3];
          v38 = v48;
          if (v37 >= v36 >> 1)
          {
            v53 = sub_21BBBCD00((v36 > 1), v37 + 1, 1, v53);
            v38 = v48;
          }

          v39 = v0[16];

          v53[2] = v37 + 1;
          sub_21BBF0B68(v39, v53 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v37);
          v27 = &selRef_bundleURL;
        }

        while (v26 != v25);
        goto LABEL_32;
      }
    }

    else
    {
      v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_12;
      }
    }

    v53 = MEMORY[0x277D84F90];
LABEL_32:
    v40 = v0[33];
    v41 = v0[30];
    v42 = v0[25];
    v43 = v0[17];

    sub_21BB3A4CC(v43, &unk_27CDB57F0, &qword_21BE328A0);
    sub_21BC852D8();

    v44 = v0[1];

    return v44(v53);
  }

  v12 = v0[33];
  v13 = v0[30];
  v52 = v0[25];
  v15 = v0[21];
  v14 = v0[22];
  v17 = v0[12];
  v16 = v0[13];
  v18 = v0[11];

  sub_21BE295EC();

  MEMORY[0x21CF03CA0](v15, v14);
  (*(v17 + 104))(v16, *MEMORY[0x277D07F68], v18);
  MEMORY[0x21CF01220](0xD000000000000015, 0x800000021BE573C0, v16, 0xD000000000000010, 0x800000021BE573A0, 0xD00000000000002ALL, 0x800000021BE57370);

  (*(v17 + 8))(v16, v18);
  swift_willThrow();

  sub_21BC852D8();

  v19 = v0[1];

  return v19();
}

uint64_t sub_21BBEF804()
{

  sub_21BE261BC();
  v1 = sub_21BE26A2C();
  v2 = sub_21BE28FDC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21BB35000, v1, v2, "Apple Cash no family found, bye", v3, 2u);
    MEMORY[0x21CF05C50](v3, -1, -1);
  }

  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  (*(v5 + 8))(v4, v6);
  sub_21BC852D8();

  v7 = v0[1];
  v8 = MEMORY[0x277D84F90];

  return v7(v8);
}

uint64_t sub_21BBEF968()
{
  v1 = *(v0 + 200);

  sub_21BC852D8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BBEFA40()
{
  v1 = v0[30];
  v2 = v0[25];

  sub_21BC852D8();

  v3 = v0[1];

  return v3();
}

uint64_t sub_21BBEFB20(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_21BE260AC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2[8] = swift_task_alloc();
  v2[9] = sub_21BE28D7C();
  v2[10] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[11] = v5;
  v2[12] = v4;

  return MEMORY[0x2822009F8](sub_21BBEFC50, v5, v4);
}

uint64_t sub_21BBEFC50()
{
  *(v0 + 104) = *__swift_project_boxed_opaque_existential_1Tm(*(v0 + 24), *(*(v0 + 24) + 24));
  *(v0 + 112) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();
  *(v0 + 120) = v2;
  *(v0 + 128) = v1;

  return MEMORY[0x2822009F8](sub_21BBEFCF0, v2, v1);
}

void sub_21BBEFCF0()
{
  v1 = *(v0[13] + 40);
  v0[17] = v1;
  if (v1)
  {
    v2 = v0[8];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v6 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_21BBEFE04;
    v5 = v0[8];

    v6(v0 + 2, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BBEFE04()
{
  v2 = *v1;
  (*v1)[19] = v0;

  sub_21BB3A4CC(v2[8], &qword_27CDB5790, &qword_21BE32800);

  v3 = v2[16];
  v4 = v2[15];
  if (v0)
  {
    v5 = sub_21BBF006C;
  }

  else
  {
    v5 = sub_21BBEFF84;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BBEFF84()
{

  v0[20] = v0[2];
  v1 = v0[11];
  v2 = v0[12];

  return MEMORY[0x2822009F8](sub_21BBEFFF0, v1, v2);
}

uint64_t sub_21BBEFFF0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 160);

  return v1(v2);
}

uint64_t sub_21BBF006C()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_21BBF00D0, v1, v2);
}

uint64_t sub_21BBF00D0()
{
  v1 = v0[19];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];

  sub_21BE295EC();

  v8 = *(v5 + qword_27CDB63F0);
  v9 = *(v5 + qword_27CDB63F0 + 8);

  MEMORY[0x21CF03CA0](0xD000000000000018, 0x800000021BE573E0);
  (*(v4 + 104))(v2, *MEMORY[0x277D07F90], v3);
  MEMORY[0x21CF01220](v8, v9, v2, 0xD000000000000010, 0x800000021BE573A0, 0xD000000000000020, 0x800000021BE57400);

  (*(v4 + 8))(v2, v3);
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BBF0268()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBCA564();
}

void sub_21BBF032C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_21BE28DAC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_21BE28D7C();
  v6 = a1;
  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_21BBA932C(0, 0, v4, &unk_21BE34D58, v8);
}

uint64_t sub_21BBF045C()
{
  v1 = qword_27CDB64A0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6590, &unk_21BE50860);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4158));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4160));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4170));
}

id sub_21BBF0520()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleCashItemProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BBF0558(uint64_t a1)
{
  v2 = qword_27CDB64A0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6590, &unk_21BE50860);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4158));
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4160));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4170));
}

void sub_21BBF0640(uint64_t a1)
{
  sub_21BBF06F4(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_21BBF06F4(uint64_t a1)
{
  if (!qword_27CDB64C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB64D0, &qword_21BE34BA0);
    v1 = sub_21BE26CCC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB64C8);
    }
  }
}

void sub_21BBF07A8(uint64_t a1)
{
  sub_21BBF088C(319);
  if (v1 <= 0x3F)
  {
    sub_21BB3A2A4(319, &qword_280BD8A40, 0x277D08268);
    if (v2 <= 0x3F)
    {
      sub_21BB3A2A4(319, &unk_27CDB6550, 0x277D08338);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21BBF088C(uint64_t a1)
{
  if (!qword_280BD89E0)
  {
    sub_21BE25B9C();
    v1 = sub_21BE2946C();
    if (!v2)
    {
      atomic_store(v1, &qword_280BD89E0);
    }
  }
}

uint64_t sub_21BBF092C(uint64_t a1)
{
  *(a1 + 8) = sub_21BBF09B0(&qword_27CDB6568, type metadata accessor for AppleCashItem, aQsF);
  result = sub_21BBF09B0(&qword_27CDB6570, type metadata accessor for AppleCashItem, byte_21BE34BE8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BBF09B0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21BBF09F8(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_21BE26CBC();
}

uint64_t sub_21BBF0A64(uint64_t a1)
{
  *(a1 + 8) = sub_21BBF09B0(&qword_27CDB6578, type metadata accessor for AppleCashItemProvider, byte_21BE34830);
  result = sub_21BBF09B0(&unk_27CDB6580, type metadata accessor for AppleCashItemProvider, byte_21BE34878);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BBF0B04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleCashItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BBF0B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleCashItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BBF0BCC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v4;
  return result;
}

uint64_t sub_21BBF0C4C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_21BE26CBC();
}

uint64_t sub_21BBF0D04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BBF0D74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BBF0268();
}

void *sub_21BBF0E28()
{
  if ([v0 isFirstResponder])
  {
    v1 = v0;
  }

  else
  {
    v2 = [v0 subviews];
    sub_21BB3A2A4(0, &qword_27CDB6670, 0x277D75D18);
    v3 = sub_21BE28C3C();

    if (v3 >> 62)
    {
LABEL_18:
      v4 = sub_21BE2951C();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v4 != i; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x21CF047C0](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v0 = sub_21BBF0E28();

      if (v0)
      {

        return v0;
      }
    }

    return 0;
  }

  return v0;
}

id sub_21BBF1028(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CreateContactView.ContactViewDelegate();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_21BBF1094(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_21BBF10DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_21BBF114C(void *a1, void *a2)
{
  v104[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v103 = v4;
  if (a1)
  {
    v5 = v4;
    v6 = [a1 contact];
    if (v6)
    {
      v7 = v6;
      v8 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC880, &qword_21BE32F40);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_21BE32770;
      v10 = [v7 identifier];
      v11 = sub_21BE28A0C();
      v13 = v12;

      *(v9 + 32) = v11;
      *(v9 + 40) = v13;
      v14 = sub_21BE28C1C();

      v15 = [v8 predicateForContactsWithIdentifiers_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_21BE34D60;
      v17 = objc_opt_self();
      *(v16 + 32) = [v17 descriptorForRequiredKeys];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB66B0, &qword_21BE40060);
      v18 = sub_21BE28C1C();

      v104[0] = 0;
      v19 = [v5 unifiedContactsMatchingPredicate:v15 keysToFetch:v18 error:v104];

      v20 = v104[0];
      if (v19)
      {
        sub_21BB3A2A4(0, &qword_27CDB66B8, 0x277CBDA58);
        v21 = sub_21BE28C3C();
        v22 = v20;

        if (v21 >> 62)
        {
          if (sub_21BE2951C())
          {
LABEL_6:
            if ((v21 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x21CF047C0](0, v21);
            }

            else
            {
              if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_58;
              }

              v23 = v21[4];
            }

            v24 = v23;

            v21 = [objc_allocWithZone(MEMORY[0x277CBDB38]) initWithContact_];
            v25 = [v21 imageData];
            v102 = v24;
            if (v25)
            {
              v26 = v25;
              v27 = sub_21BE25BFC();
              v28 = a2;
              v30 = v29;

              v31 = v30;
              a2 = v28;
              sub_21BBBEF94(v27, v31);
              goto LABEL_20;
            }

            v5 = a2;
            v34 = qword_280BD83C0;
            v20 = a1;
            if (v34 == -1)
            {
LABEL_13:
              swift_getKeyPath();
              swift_getKeyPath();
              sub_21BE26CAC();

              v35 = v104[0];
              if (qword_27CDB4E58 != -1)
              {
                swift_once();
              }

              v36 = 38.0;
              if (byte_27CDD41B0)
              {
                v36 = 40.0;
              }

              v37 = [v35 profilePictureForFamilyMember:v20 pictureDiameter:v36];

              if (v37)
              {
                v38 = sub_21BE25BFC();
                v40 = v39;

                sub_21BBBEF94(v38, v40);
                v20 = v37;
              }

              a2 = v5;

              [v21 setImageData_];
              v5 = v103;
LABEL_20:
              v41 = [v21 familyName];
              v42 = sub_21BE28A0C();
              v44 = v43;

              sub_21BB41E7C(v42, v44);
              v46 = v45;

              if (v46)
              {
              }

              else
              {
                v47 = [a1 lastName];
                if (v47)
                {
                  v48 = v47;
                  [v21 setFamilyName_];
                }
              }

              v49 = [v21 givenName];
              v50 = sub_21BE28A0C();
              v52 = v51;

              sub_21BB41E7C(v50, v52);
              v54 = v53;

              if (v54)
              {

                v55 = v102;
              }

              else
              {
                v56 = [a1 firstName];
                v55 = v102;
                if (v56)
                {
                  v57 = v56;
                  [v21 setGivenName_];
                }
              }

              v58 = [v17 viewControllerForContact_];

              v59 = &off_2782F5000;
              v60 = v58;
              if (!v58)
              {
                goto LABEL_54;
              }

              goto LABEL_55;
            }

LABEL_58:
            swift_once();
            goto LABEL_13;
          }
        }

        else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v32 = v104[0];
        v33 = sub_21BE25A8C();

        swift_willThrow();
      }
    }
  }

  v21 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  if (a1)
  {
    v61 = [a1 firstName];
    if (v61)
    {
      v62 = v61;
      sub_21BE28A0C();
    }

    v64 = sub_21BE289CC();

    [v21 setGivenName_];

    v65 = [a1 lastName];
    if (v65)
    {
      v66 = v65;
      sub_21BE28A0C();
    }
  }

  else
  {
    v63 = sub_21BE289CC();

    [v21 setGivenName_];
  }

  v67 = sub_21BE289CC();

  [v21 setFamilyName_];

  v68 = &off_2782F5000;
  if (a1)
  {
    v69 = qword_280BD83C0;
    v70 = a1;
    if (v69 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v71 = v104[0];
    if (qword_27CDB4E58 != -1)
    {
      swift_once();
    }

    v72 = 38.0;
    if (byte_27CDD41B0)
    {
      v72 = 40.0;
    }

    v73 = [v71 profilePictureForFamilyMember:v70 pictureDiameter:v72];

    v74 = v70;
    if (v73)
    {
      v75 = sub_21BE25BFC();
      v77 = v76;

      sub_21BBBEF94(v75, v77);
      v74 = v73;
    }

    v78 = [v70 appleID];
    if (v78)
    {
      v79 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_21BE34D60;
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v82 = [objc_opt_self() bundleForClass_];
      sub_21BE2599C();

      v83 = objc_allocWithZone(MEMORY[0x277CBDB20]);
      v84 = v79;
      v85 = sub_21BE289CC();
      v68 = &off_2782F5000;

      v86 = [v83 initWithLabel:v85 value:{v84, 0xED00006C69616D65}];

      *(v80 + 32) = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB66A0, &qword_21BE35088);
      v87 = sub_21BE28C1C();

      [v21 setEmailAddresses_];
    }

    if (*(sub_21BE291DC() + 16))
    {
      goto LABEL_50;
    }
  }

  else if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_50:

    v88 = objc_allocWithZone(MEMORY[0x277CBDB70]);
    v89 = sub_21BE289CC();

    v90 = [v88 initWithStringValue_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_21BE34D60;
    type metadata accessor for ConfirmChildAgeViewModel();
    v92 = swift_getObjCClassFromMetadata();
    v93 = [objc_opt_self() bundleForClass_];
    sub_21BE2599C();

    v94 = objc_allocWithZone(MEMORY[0x277CBDB20]);
    v95 = v90;
    v96 = sub_21BE289CC();

    v97 = [v94 v68[233]];

    *(v91 + 32) = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB66A0, &qword_21BE35088);
    v98 = sub_21BE28C1C();

    [v21 setPhoneNumbers_];

    goto LABEL_53;
  }

LABEL_53:
  v5 = v103;
  v59 = &off_2782F5000;
  v58 = [objc_opt_self() viewControllerForNewContact_];
  v60 = v58;
  if (!v58)
  {
LABEL_54:
    v60 = [objc_opt_self() v59[235]];
  }

LABEL_55:
  v99 = v58;
  [v60 setDelegate_];
  v100 = v5;
  [v60 setContactStore_];

  return v60;
}

id sub_21BBF1D94()
{
  v1 = sub_21BBF114C(*v0, v0[1]);
  v2 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  return v2;
}

uint64_t sub_21BBF1E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BBF3304();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21BBF1E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BBF3304();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21BBF1EEC(uint64_t a1)
{
  sub_21BBF3304();
  sub_21BE27ABC();
  __break(1u);
}

id sub_21BBF1F14(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  if (a2)
  {
    v4 = [a2 contact];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 identifier];

      sub_21BE28A0C();
    }
  }

  v7 = objc_opt_self();
  v8 = sub_21BE289CC();

  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v14[4] = sub_21BBF33AC;
  v14[5] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_21BBF23E4;
  v14[3] = &block_descriptor_3;
  v10 = _Block_copy(v14);
  v11 = v3;

  v12 = [v7 requestViewControllerWithContactID:v8 completion:v10];
  _Block_release(v10);

  return v11;
}

void sub_21BBF20B8(void *a1, void *a2, void *a3)
{
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_21BE295EC();

  v30 = 0xD000000000000013;
  v31 = 0x800000021BE57500;
  v29[1] = a1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6690, &qword_21BE35078);
  v11 = sub_21BE28A5C();
  MEMORY[0x21CF03CA0](v11);

  v12 = v31;
  if (a2)
  {
    sub_21BC51D50(a2, 0xD00000000000001ALL, 0x800000021BE574E0);
  }

  else
  {
    v13 = v30;

    v14 = sub_21BE26A2C();
    v15 = sub_21BE28FFC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v29[0] = a3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v19 = v13;
      v20 = v18;
      v30 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21BB3D81C(v19, v12, &v30);
      _os_log_impl(&dword_21BB35000, v14, v15, "%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x21CF05C50](v20, -1, -1);
      v21 = v17;
      a3 = v29[0];
      MEMORY[0x21CF05C50](v21, -1, -1);
    }
  }

  (*(v7 + 8))(v9, v6);
  if (a1)
  {
    v22 = v10;
    v23 = [v22 view];
    if (v23)
    {
      v24 = v23;
      [a3 addChildViewController_];
      v25 = [a3 view];
      if (v25)
      {
        v26 = v25;
        [v25 addSubview_];

        v27 = [a3 view];
        if (v27)
        {
          v28 = v27;
          sub_21BC47030(v27);

          [v22 didMoveToParentViewController_];
LABEL_12:

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    v24 = v22;
    goto LABEL_12;
  }
}

void sub_21BBF23E4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_21BBF2478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BBF3358();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21BBF24DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BBF3358();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21BBF2540(uint64_t a1)
{
  sub_21BBF3358();
  sub_21BE27ABC();
  __break(1u);
}

uint64_t sub_21BBF2568@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v21[1] = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6608, &qword_21BE34E78);
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6610, &unk_21BE34E80);
  (*(*(v15 - 8) + 16))(v13, a1, v15);
  v16 = &v13[*(v11 + 36)];
  *v16 = sub_21BBF2D9C;
  v16[1] = v14;
  v21[5] = a3;
  v21[6] = a4;
  v22 = a5;

  v17 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2856C();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  v19 = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6620, &qword_21BE34E90);
  sub_21BBF2DB4();
  sub_21BB3B038(&qword_27CDB6640, &qword_27CDB6620, &qword_21BE34E90, MEMORY[0x277CDDA18]);
  sub_21BE2812C();

  return sub_21BBF2E6C(v13);
}

uint64_t sub_21BBF27DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6648, &qword_21BE34E98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6650, &qword_21BE34EA0);
  sub_21BBF2EE4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB6660, &qword_21BE33470);
  sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21BE271BC();
}

void sub_21BBF2924(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6650, &qword_21BE34EA0);
  sub_21BBF2EE4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB6660, &qword_21BE33470);
  sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  sub_21BE2817C();
}

uint64_t sub_21BBF2A44(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_21BE278CC();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6660, &qword_21BE33470);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15[-v11];
  sub_21BE278AC();
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460, MEMORY[0x277CDF028]);
  sub_21BE26EDC();
  v13 = sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470, MEMORY[0x277CDD7A8]);
  MEMORY[0x21CF02AD0](v12, v9, v13);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_21BBF2C44(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  sub_21BB41FA4();
  v11 = a1;

  return sub_21BE2845C();
}

unint64_t sub_21BBF2DB4()
{
  result = qword_27CDB6628;
  if (!qword_27CDB6628)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6608, &qword_21BE34E78);
    v4[0] = sub_21BB3B038(&unk_27CDB6630, &unk_27CDB6610, &unk_21BE34E80, MEMORY[0x277CE04B0]);
    v4[1] = sub_21BBDD1FC();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6628);
  }

  return result;
}

uint64_t sub_21BBF2E6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6608, &qword_21BE34E78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BBF2EE4()
{
  result = qword_27CDB6658;
  if (!qword_27CDB6658)
  {
    result = swift_getWitnessTable(byte_21BE34FD8, &type metadata for ShowContactInSpotlight, v0, v1);
    atomic_store(result, &qword_27CDB6658);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return swift_deallocObject();
}

void sub_21BBF3004(void *a1, uint64_t a2)
{
  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21BBF0E28();

    if (v6)
    {
      [v6 resignFirstResponder];
    }
  }

  [a1 dismissViewControllerAnimated:1 completion:0];
  if (a2)
  {
    sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
    v7 = [swift_getObjCClassFromMetadata() defaultCenter];
    v8 = v7;
    if (qword_27CDB4EF8 != -1)
    {
      swift_once();
      v7 = v8;
    }

    [v7 postNotificationName:qword_27CDB7EA0 object:0];
  }
}

uint64_t sub_21BBF314C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_21BBF31A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21BBF3208(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BBF3250(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BBF32A0()
{
  result = qword_27CDB6678;
  if (!qword_27CDB6678)
  {
    result = swift_getWitnessTable(byte_21BE35028, &type metadata for CreateContactView, v0, v1);
    atomic_store(result, &qword_27CDB6678);
  }

  return result;
}

unint64_t sub_21BBF3304()
{
  result = qword_27CDB6680;
  if (!qword_27CDB6680)
  {
    result = swift_getWitnessTable(byte_21BE34EE8, &type metadata for CreateContactView, v0, v1);
    atomic_store(result, &qword_27CDB6680);
  }

  return result;
}

unint64_t sub_21BBF3358()
{
  result = qword_27CDB6688;
  if (!qword_27CDB6688)
  {
    result = swift_getWitnessTable(byte_21BE34F60, &type metadata for ShowContactInSpotlight, v0, v1);
    atomic_store(result, &qword_27CDB6688);
  }

  return result;
}

BOOL sub_21BBF3664(void *a1)
{
  v2 = sub_21BE2690C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = [a1 traitCollection];
  sub_21BE292AC();

  (*(v3 + 104))(v6, *MEMORY[0x277D40278], v2);
  sub_21BBF381C(&qword_27CDB66C8, MEMORY[0x277D40290], MEMORY[0x277D402C8]);
  sub_21BE28BDC();
  sub_21BE28BDC();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  return v12[1] == v12[0];
}

uint64_t sub_21BBF381C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21BBF3864()
{
  v1 = qword_27CDB66D0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6720, &unk_21BE50770);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4178));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4180));
  v3 = (v0 + qword_27CDD4188);

  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

id sub_21BBF3908()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for IcloudPlusItemProvider(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21BBF3980(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver_];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for IcloudPlusItemProvider(0);
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_21BBF3A0C(uint64_t a1)
{
  v2 = qword_27CDB66D0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6720, &unk_21BE50770);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4178));
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4180));
  v4 = (a1 + qword_27CDD4188);

  return __swift_destroy_boxed_opaque_existential_0Tm(v4);
}

uint64_t sub_21BBF3AB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BBF3B28(void *a1)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + qword_27CDD4188 + 24);
  v8 = *(v1 + qword_27CDD4188 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v1 + qword_27CDD4188), v7);
  v9 = (*(v8 + 8))(v7, v8);
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [v9 me];
  if (!v11)
  {
    v12 = v10;
LABEL_9:

LABEL_10:
    sub_21BE261BC();
    v19 = sub_21BE26A2C();
    v20 = sub_21BE28FDC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_21BB35000, v19, v20, "Invalid parameters", v21, 2u);
      MEMORY[0x21CF05C50](v21, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    return MEMORY[0x277D84F90];
  }

  v12 = v11;
  v13 = sub_21BE2911C();
  if (!v13)
  {

    goto LABEL_9;
  }

  v14 = v13;
  if (*(v1 + qword_27CDD4190))
  {
    v15 = [a1 purchaserDSID];
    if (v15)
    {
      v16 = v15;
      v17 = sub_21BBF3D98(v15);

      return v17;
    }

    if ([v12 isOrganizer])
    {
      v22 = sub_21BBF56A4();
    }

    else
    {
      v22 = sub_21BBF6490(v14);
    }
  }

  else
  {
    v22 = sub_21BBF6310();
  }

  v23 = v22;

  return v23;
}

uint64_t sub_21BBF3D98(uint64_t a1)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + qword_27CDD4188 + 24);
  v8 = *(v1 + qword_27CDD4188 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v1 + qword_27CDD4188), v7);
  v9 = (*(v8 + 8))(v7, v8);
  if (v9)
  {
    v10 = v9;
    v11 = [v9 me];
    if (v11)
    {
      v12 = v11;
      v13 = [v10 memberForDSID_];
      if (v13)
      {
        v14 = v13;
        sub_21BB3A2A4(0, &qword_27CDB6730, 0x277D82BB8);
        if (sub_21BE2940C())
        {
          v15 = sub_21BBF56A4();
        }

        else
        {
          v15 = sub_21BBF6490(v14);
        }

        v20 = v15;

        return v20;
      }
    }

    else
    {
      v12 = v10;
    }
  }

  sub_21BE261BC();
  v16 = sub_21BE26A2C();
  v17 = sub_21BE28FDC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_21BB35000, v16, v17, "Dont have the valid parameters in getHeadlineFromPurchaserDSID", v18, 2u);
    MEMORY[0x21CF05C50](v18, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  return MEMORY[0x277D84F90];
}

uint64_t sub_21BBF3FD0(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BBF421C();
}

uint64_t sub_21BBF4080(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBF4118, v4, v3);
}

uint64_t sub_21BBF4118()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_21BBCDD2C;

    return sub_21BBCA80C();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_21BBF421C()
{
  v1[7] = v0;
  v2 = sub_21BE260AC();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  sub_21BE28D7C();
  v1[11] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[12] = v4;
  v1[13] = v3;

  return MEMORY[0x2822009F8](sub_21BBF4310, v4, v3);
}

uint64_t sub_21BBF4310()
{
  v1 = v0[7];
  v2 = v1 + qword_27CDB63F0;
  v3 = *(v1 + qword_27CDB63F0);
  v0[14] = v3;
  v4 = *(v2 + 8);
  v0[15] = v4;
  type metadata accessor for FamilySignpost(0);
  swift_allocObject();

  v0[16] = sub_21BC84D18(v3, v4, "computeItems", 12, 2u);
  v5 = qword_27CDD4180;
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_21BBF4438;

  return sub_21BDEFF68(v1 + v5);
}

uint64_t sub_21BBF4438(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_21BBF4C20;
  }

  else
  {
    v4[19] = a1;
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_21BBF4560;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BBF4560()
{
  v1 = sub_21BCE6070(0x535F44554F4C4349, 0xEE00454741524F54, v0[19]);
  v0[20] = v1;

  if (v1)
  {
    sub_21BB3A35C(v0[7] + qword_27CDD4178, (v0 + 2));
    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v2);
    v4 = *MEMORY[0x277CED1A0];
    v13 = (*(v3 + 8) + **(v3 + 8));
    v5 = swift_task_alloc();
    v0[21] = v5;
    *v5 = v0;
    v5[1] = sub_21BBF4854;

    return v13(v4, v2, v3);
  }

  else
  {
    v7 = v0[15];
    v8 = v0[14];
    v9 = v0[10];
    v10 = v0[8];
    v11 = v0[9];

    sub_21BE295EC();

    MEMORY[0x21CF03CA0](v8, v7);
    (*(v11 + 104))(v9, *MEMORY[0x277D07F78], v10);
    MEMORY[0x21CF01220](0xD000000000000021, 0x800000021BE57630, v9, 0xD000000000000010, 0x800000021BE573A0, 0xD00000000000002BLL, 0x800000021BE57660);

    (*(v11 + 8))(v9, v10);
    swift_willThrow();
    sub_21BC852D8();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_21BBF4854(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 176) = a1;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);

  return MEMORY[0x2822009F8](sub_21BBF497C, v4, v3);
}

uint64_t sub_21BBF497C()
{
  v1 = *(v0 + 176);

  if (v1)
  {
    v2 = *(v0 + 176);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    if ([v2 aa_isCloudSubscriber])
    {
      v3 = [*(v0 + 160) subscriberDSIDs];
      if (v3)
      {
        v4 = v3;
        sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
        v5 = sub_21BE28C3C();

        if (!(v5 >> 62))
        {
LABEL_5:
          v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_6;
        }
      }

      else
      {
        v5 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
          goto LABEL_5;
        }
      }

      v6 = sub_21BE2951C();
LABEL_6:

      v8 = v6 - 1;
      if (__OFSUB__(v6, 1))
      {
        __break(1u);
      }

      else
      {
        v9 = *(v0 + 160);
        *(*(v0 + 56) + qword_27CDD4190) = v8 & ~(v8 >> 63);
        v10 = sub_21BBF3B28(v9);

        sub_21BC852D8();

        v11 = *(v0 + 8);

        return v11(v10);
      }

      return result;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  v12 = *(v0 + 160);
  v14 = *(v0 + 72);
  v13 = *(v0 + 80);
  v15 = *(v0 + 64);
  (*(v14 + 104))(v13, *MEMORY[0x277D07F78], v15);
  MEMORY[0x21CF01220](0xD000000000000031, 0x800000021BE57690, v13, 0xD000000000000010, 0x800000021BE573A0, 0xD00000000000002BLL, 0x800000021BE57660);
  (*(v14 + 8))(v13, v15);
  swift_willThrow();

  sub_21BC852D8();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_21BBF4C20()
{

  sub_21BC852D8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BBF4C9C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v9 = sub_21BE26A2C();
  v10 = sub_21BE28FCC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21BB35000, v9, v10, "IcloudPlusItemProvider icloud sub change", v11, 2u);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v12 = sub_21BE28DAC();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_21BE28D7C();
  v13 = v1;
  v14 = sub_21BE28D6C();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;
  sub_21BBA932C(0, 0, v4, &unk_21BE35320, v15);
}

uint64_t sub_21BBF4ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_21BE26A4C();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4[7] = swift_task_alloc();
  v4[8] = sub_21BE28D7C();
  v4[9] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x2822009F8](sub_21BBF5004, v7, v6);
}

uint64_t sub_21BBF5004()
{
  v0[12] = *__swift_project_boxed_opaque_existential_1Tm((v0[3] + qword_27CDD4180), *(v0[3] + qword_27CDD4180 + 24));
  v0[13] = sub_21BE28D6C();
  v2 = sub_21BE28D0C();
  v0[14] = v2;
  v0[15] = v1;

  return MEMORY[0x2822009F8](sub_21BBF50B0, v2, v1);
}

void sub_21BBF50B0()
{
  v1 = *(v0[12] + 40);
  v0[16] = v1;
  if (v1)
  {
    v2 = v0[7];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v6 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_21BBF51C4;
    v5 = v0[7];

    v6(v0 + 2, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BBF51C4()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  *(*v1 + 144) = v0;

  sub_21BBDE578(v3);

  v4 = *(v2 + 120);
  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_21BBF541C;
  }

  else
  {
    v6 = sub_21BBF5340;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBF5340()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_21BBF53AC, v1, v2);
}

uint64_t sub_21BBF53AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BBF541C()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_21BBF5480, v1, v2);
}

uint64_t sub_21BBF5480()
{
  v1 = v0[18];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];

  sub_21BE261BC();
  v5 = v1;
  sub_21BC51D50(v1, 0xD000000000000022, 0x800000021BE57600);

  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

void sub_21BBF5564(void *a1)
{
  v1 = a1;
  sub_21BBF4C9C();
}

uint64_t type metadata accessor for IcloudPlusItemProvider(uint64_t a1)
{
  result = qword_27CDB66D8;
  if (!qword_27CDB66D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BBF55F8(uint64_t a1)
{
  sub_21BBF59A4(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_21BBF56A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6728, &qword_21BE35310);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21BE32770;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  v5 = sub_21BE2599C();
  v24 = v6;
  v25 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21BE33260;
  v8 = *(v0 + qword_27CDD4190);
  v9 = MEMORY[0x277D83B88];
  v10 = MEMORY[0x277D83C10];
  *(v7 + 56) = MEMORY[0x277D83B88];
  *(v7 + 64) = v10;
  *(v7 + 32) = v8;
  v11 = *(v0 + qword_27CDD4188 + 24);
  v12 = *(v0 + qword_27CDD4188 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v0 + qword_27CDD4188), v11);
  v13 = (*(v12 + 8))(v11, v12);
  if (v13)
  {
    v14 = sub_21BE2905C();

    if (v14 >> 62)
    {
      v13 = sub_21BE2951C();
    }

    else
    {
      v13 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  *(v7 + 96) = v9;
  *(v7 + 104) = v10;
  *(v7 + 72) = v13;

  v15 = [v3 bundleForClass_];
  sub_21BE2599C();

  v16 = sub_21BE289DC();
  v18 = v17;

  v19 = [v3 bundleForClass_];
  v20 = sub_21BE2599C();
  v22 = v21;

  *(v1 + 32) = 1;
  *(v1 + 40) = v25;
  *(v1 + 48) = v24;
  *(v1 + 56) = v16;
  *(v1 + 64) = v18;
  *(v1 + 72) = v20;
  *(v1 + 80) = v22;
  *(v1 + 88) = 7;
  return v1;
}

void sub_21BBF59A4(uint64_t a1)
{
  if (!qword_27CDB66E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB66F0, &qword_21BE35120);
    v1 = sub_21BE26CCC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB66E8);
    }
  }
}

uint64_t sub_21BBF5A20(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_21BE26CBC();
}

uint64_t sub_21BBF5A94()
{
  v1 = *(v0 + 56);
  sub_21BE29ACC();
  sub_21BE28ABC();
  sub_21BC5C62C(v1);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BBF5B20(uint64_t a1)
{
  v2 = *(v1 + 56);
  sub_21BE28ABC();
  sub_21BC5C62C(v2);
  sub_21BE28ABC();
}

uint64_t sub_21BBF5B9C(uint64_t a1)
{
  v2 = *(v1 + 56);
  sub_21BE29ACC();
  sub_21BE28ABC();
  sub_21BC5C62C(v2);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BBF5C24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  v3 = sub_21BC5C62C(*(a1 + 56));
  v5 = v4;
  if (v3 == sub_21BC5C62C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21BE2995C();
  }

  return v8 & 1;
}

unint64_t sub_21BBF5CD8()
{
  result = qword_27CDB66F8;
  if (!qword_27CDB66F8)
  {
    result = swift_getWitnessTable(aOFt, &type metadata for IcloudPlusDataItem, v0, v1);
    atomic_store(result, &qword_27CDB66F8);
  }

  return result;
}

unint64_t sub_21BBF5D2C(uint64_t a1)
{
  *(a1 + 8) = sub_21BBF5D5C();
  result = sub_21BBF5DB0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21BBF5D5C()
{
  result = qword_27CDB6700;
  if (!qword_27CDB6700)
  {
    result = swift_getWitnessTable(byte_21BE351E4, &type metadata for IcloudPlusDataItem, v0, v1);
    atomic_store(result, &qword_27CDB6700);
  }

  return result;
}

unint64_t sub_21BBF5DB0()
{
  result = qword_27CDB6708;
  if (!qword_27CDB6708)
  {
    result = swift_getWitnessTable("%V@f", &type metadata for IcloudPlusDataItem, v0, v1);
    atomic_store(result, &qword_27CDB6708);
  }

  return result;
}

uint64_t sub_21BBF5E04@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 41);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_21BBF6224(v7, &v6);
}

uint64_t sub_21BBF5E50()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21BB35000, v4, v5, "IcloudPlusDataItem providing a destination", v6, 2u);
    MEMORY[0x21CF05C50](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_21BBF5FA4(uint64_t a1)
{
  result = sub_21BBF5D5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BBF5FE8(uint64_t a1)
{
  result = sub_21BBF6010();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BBF6010()
{
  result = qword_27CDB6710;
  if (!qword_27CDB6710)
  {
    result = swift_getWitnessTable(byte_21BE35240, &type metadata for IcloudPlusDataItem, v0, v1);
    atomic_store(result, &qword_27CDB6710);
  }

  return result;
}

uint64_t sub_21BBF6080(uint64_t a1)
{
  *(a1 + 8) = sub_21BBF60E8(&qword_27CDB6718, byte_21BE34830);
  result = sub_21BBF60E8(&qword_27CDB6028, byte_21BE34878);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BBF60E8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for IcloudPlusItemProvider(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BBF612C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v4;
  return result;
}

uint64_t sub_21BBF61AC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_21BE26CBC();
}

uint64_t sub_21BBF625C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BBF4ED4(a1, v4, v5, v6);
}

uint64_t sub_21BBF6310()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6728, &qword_21BE35310);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21BE32770;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  v4 = sub_21BE2599C();
  v6 = v5;

  v7 = [v2 bundleForClass_];
  v8 = sub_21BE2599C();
  v10 = v9;

  *(v0 + 32) = 0;
  *(v0 + 40) = v4;
  *(v0 + 48) = v6;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = v8;
  *(v0 + 80) = v10;
  *(v0 + 88) = 7;
  return v0;
}

uint64_t sub_21BBF6490(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6728, &qword_21BE35310);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21BE32770;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21BE32770;
  v4 = [a1 firstName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21BE28A0C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_21BBBEFE8();
  if (!v8)
  {
    v6 = sub_21BE2917C();
    v8 = v9;
  }

  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();

  v12 = [v11 bundleForClass_];
  sub_21BE2599C();

  v13 = sub_21BE289DC();
  v15 = v14;

  v16 = [v11 bundleForClass_];
  v17 = sub_21BE2599C();
  v19 = v18;

  *(v2 + 32) = 1;
  *(v2 + 40) = v13;
  *(v2 + 48) = v15;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = v17;
  *(v2 + 80) = v19;
  *(v2 + 88) = 7;
  return v2;
}

unint64_t sub_21BBF66F0()
{
  result = qword_27CDB6738;
  if (!qword_27CDB6738)
  {
    result = swift_getWitnessTable(byte_21BE4EC18, &type metadata for IcloudPlusView, v0, v1);
    atomic_store(result, &qword_27CDB6738);
  }

  return result;
}

unint64_t sub_21BBF6744()
{
  result = qword_27CDB6740;
  if (!qword_27CDB6740)
  {
    result = swift_getWitnessTable(byte_21BE4EBC8, &type metadata for IcloudPlusDestination, v0, v1);
    atomic_store(result, &qword_27CDB6740);
  }

  return result;
}

uint64_t type metadata accessor for FamilyPrivacyDisclosureView(uint64_t a1)
{
  result = qword_27CDB6748;
  if (!qword_27CDB6748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BBF680C(uint64_t a1)
{
  sub_21BBDAF50(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21BBF68A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2754C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FamilyPrivacyDisclosureView(0);
  sub_21BBF7908(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21BE27B0C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21BE28FEC();
    v13 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_21BBF6A94@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FamilyPrivacyDisclosureView(0);
  v38 = *(v3 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6758, &qword_21BE353B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v39 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6760, &unk_21BE353B8);
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = sub_21BE289CC();
  v12 = [objc_opt_self() bundleWithIdentifier_];

  if (v12)
  {
    v37 = v6;
    v13 = [v12 privacyFlow];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 localizedButtonCaption];
      if (v15)
      {
        v36 = v5;
        v16 = v15;
        v35 = sub_21BE28A0C();

        v17 = [v14 localizedButtonTitle];
        if (v17)
        {
          v18 = v17;
          sub_21BE28A0C();
          v30 = v10;
          v34 = a1;

          sub_21BBF6F38(&v41);

          v32 = v42;
          v33 = v41;
          v31 = v43;
          v35 = v44;
          sub_21BBF7704(v1, &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
          v19 = (*(v38 + 80) + 16) & ~*(v38 + 80);
          v20 = swift_allocObject();
          sub_21BBF7768(&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6768, &qword_21BE353C8);
          v22 = sub_21BBF7828();
          v23 = v39;
          sub_21BE27F4C();

          sub_21BBC7C7C(v33, v32, v31);

          v41 = v21;
          v42 = v22;
          swift_getOpaqueTypeConformance2();
          v24 = v30;
          v25 = v36;
          sub_21BE2809C();

          (*(v37 + 8))(v23, v25);
          v26 = v34;
          sub_21BB47834(v24, v34);
          return (*(v40 + 56))(v26, 0, 1, v8);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v28 = *(v40 + 56);

  return v28(a1, 1, 1, v8);
}

uint64_t sub_21BBF6F38@<X0>(uint64_t *a5@<X8>)
{
  v5 = sub_21BE2766C();
  MEMORY[0x28223BE20](v5 - 8);
  sub_21BB41FA4();

  v6 = sub_21BE27DBC();
  v8 = v7;
  v10 = v9;
  sub_21BE2833C();
  v11 = sub_21BE27D4C();
  v13 = v12;
  v15 = v14;

  sub_21BBC7C7C(v6, v8, v10 & 1);

  sub_21BE27CCC();
  v16 = sub_21BE27D9C();
  v40 = v17;
  v41 = v16;
  v38 = v18;

  sub_21BBC7C7C(v11, v13, v15 & 1);

  sub_21BE2765C();
  sub_21BE2764C();
  sub_21BE2763C();
  sub_21BE2764C();
  sub_21BE2768C();
  v19 = sub_21BE27DAC();
  v21 = v20;
  LOBYTE(v13) = v22;
  sub_21BE2827C();
  v23 = sub_21BE27D4C();
  v25 = v24;
  LOBYTE(v8) = v26;

  sub_21BBC7C7C(v19, v21, v13 & 1);

  sub_21BE27CCC();
  v27 = sub_21BE27D9C();
  v29 = v28;
  v31 = v30;

  sub_21BBC7C7C(v23, v25, v8 & 1);

  v32 = sub_21BE27D6C();
  v34 = v33;
  LOBYTE(v8) = v35;
  v39 = v36;
  sub_21BBC7C7C(v27, v29, v31 & 1);

  sub_21BBC7C7C(v41, v40, v38 & 1);

  *a5 = v32;
  a5[1] = v34;
  *(a5 + 16) = v8 & 1;
  a5[3] = v39;
  return result;
}

void sub_21BBF7234()
{
  v1 = type metadata accessor for FamilyPrivacyDisclosureView(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21BE27B0C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21BE289CC();
  v13 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v13)
  {
    v14 = v13;
    v15 = sub_21BBF68A4(v11);
    MEMORY[0x28223BE20](v15);
    *(&v23 - 2) = v14;
    sub_21BE27AFC();
    (*(v9 + 8))(v11, v8);
    [v14 present];
  }

  else
  {
    sub_21BE2614C();
    sub_21BBF7704(v0, v3);
    v16 = sub_21BE26A2C();
    v17 = sub_21BE28FDC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v20 = *v3;
      v21 = v3[1];

      sub_21BBF78A4(v3);
      v22 = sub_21BB3D81C(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_21BB35000, v16, v17, "Failed to create privacyPresenter for %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x21CF05C50](v19, -1, -1);
      MEMORY[0x21CF05C50](v18, -1, -1);
    }

    else
    {

      sub_21BBF78A4(v3);
    }

    (*(v5 + 8))(v7, v4);
  }
}

id sub_21BBF7588(uint64_t a1, void *a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    return [a2 setPresentingViewController_];
  }

  else
  {
    sub_21BE2614C();
    v9 = sub_21BE26A2C();
    v10 = sub_21BE28FDC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21BB35000, v9, v10, "No view controller to show privacy disclosure", v11, 2u);
      MEMORY[0x21CF05C50](v11, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_21BBF7704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyPrivacyDisclosureView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BBF7768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyPrivacyDisclosureView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BBF7828()
{
  result = qword_27CDB6770;
  if (!qword_27CDB6770)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6768, &qword_21BE353C8);
    v4[0] = MEMORY[0x277CE0BC8];
    result = swift_getWitnessTable(MEMORY[0x277CE0FB0], v3, v4);
    atomic_store(result, &qword_27CDB6770);
  }

  return result;
}

uint64_t sub_21BBF78A4(uint64_t a1)
{
  v2 = type metadata accessor for FamilyPrivacyDisclosureView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BBF7908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BBF7978()
{
  result = qword_27CDB6778;
  if (!qword_27CDB6778)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6780, &qword_21BE353D0);
    v4[0] = sub_21BBF79FC();
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27CDB6778);
  }

  return result;
}

unint64_t sub_21BBF79FC()
{
  result = qword_27CDB6788;
  if (!qword_27CDB6788)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6760, &unk_21BE353B8);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6768, &qword_21BE353C8);
    v4[3] = sub_21BBF7828();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_21BBF7AC4();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6788);
  }

  return result;
}

unint64_t sub_21BBF7AC4()
{
  result = qword_27CDB6790;
  if (!qword_27CDB6790)
  {
    v3 = sub_21BE27AEC();
    result = swift_getWitnessTable(MEMORY[0x277CDE458], v3, v0, v1);
    atomic_store(result, &qword_27CDB6790);
  }

  return result;
}

uint64_t sub_21BBF7B5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(aImF);
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_21BBF7BE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BBF7B38();
  *a1 = result;
  return result;
}

uint64_t (*sub_21BBF7C18(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = sub_21BBF7CEC(v7, *a2, *v3, *(a3 + 16));
  return sub_21BBF7CA4;
}

void sub_21BBF7CA4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_21BBF7CEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v5 = *(a4 - 8);
  *a1 = a4;
  a1[1] = v5;
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v5 + 64));
  }

  a1[2] = v6;
  sub_21BE28CDC();
  return sub_21BBF7DC0;
}

void sub_21BBF7DC0(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_21BBF7E10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aImF, a1);
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_21BBF7F08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(aImF);
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_21BBF7F90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable(aImF, a2, a3);
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_21BBF8014(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(")O@f", a1);

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21BBF8070(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(")O@f", a1);
  v4 = sub_21BBF8550(v1, a1, WitnessTable);

  return v4;
}

unint64_t sub_21BBF8150()
{
  result = qword_27CDB67A8;
  if (!qword_27CDB67A8)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83BB0], MEMORY[0x277D83B88], v0, v1);
    atomic_store(result, &qword_27CDB67A8);
  }

  return result;
}

uint64_t sub_21BBF82C4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB67A0, &qword_21BE4F050);
    v6 = sub_21BBF8150();
    v7[0] = MEMORY[0x277D83BC8];
    v7[1] = v6;
    result = swift_getWitnessTable(a2, v5, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BBF83A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_21BE2898C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_21BE28FAC();
  result = sub_21BE2898C();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_21BBF846C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_21BE2898C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_21BBF8554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21BBF85C4()
{
  swift_getKeyPath();
  sub_21BBFA054(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel, byte_21BE35698);
  sub_21BE25F1C();

  return *(v0 + 16);
}

uint64_t sub_21BBF8664(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBFA054(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel, byte_21BE35698);
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBF877C()
{
  swift_getKeyPath();
  sub_21BBFA054(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel, byte_21BE35698);
  sub_21BE25F1C();

  return *(v0 + 17);
}

uint64_t sub_21BBF881C(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBFA054(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel, byte_21BE35698);
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBF8934(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_21BE26A4C();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  sub_21BE28D7C();
  v2[7] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[8] = v5;
  v2[9] = v4;

  return MEMORY[0x2822009F8](sub_21BBF8A34, v5, v4);
}

uint64_t sub_21BBF8A34(uint64_t a1)
{
  v15 = v1;
  sub_21BE261BC();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[6];
  v6 = v1[3];
  v7 = v1[4];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21BB3D81C(0xD000000000000021, 0x800000021BE578A0, &v14);
    _os_log_impl(&dword_21BB35000, v2, v3, "%s Turning on iCloud Calendars sync", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[10] = v10;
  v11 = *MEMORY[0x277CB8958];
  v12 = swift_task_alloc();
  v1[11] = v12;
  *v12 = v1;
  v12[1] = sub_21BBF8BE8;

  return MEMORY[0x28215E638](v11);
}

uint64_t sub_21BBF8BE8()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_21BBF90BC;
  }

  else
  {
    v5 = sub_21BBF8D24;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BBF8D24(uint64_t a1)
{
  v14 = v1;
  sub_21BE261BC();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[10];
  v6 = v1[5];
  v7 = v1[3];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21BB3D81C(0xD000000000000021, 0x800000021BE578A0, &v13);
    _os_log_impl(&dword_21BB35000, v2, v3, "%s iCloud Calendars sync is now enabled", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  v5(v6, v7);

  v10 = swift_task_alloc();
  v1[13] = v10;
  *v10 = v1;
  v10[1] = sub_21BBF8F28;
  v11 = v1[2];
  v16 = MEMORY[0x277D839B0];

  return MEMORY[0x28215E468](v1 + 15, 5, 1000000000000000000, 0, 0x8AC7230489E80000, 0, &unk_21BE35710, v11);
}

uint64_t sub_21BBF8F28()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_21BBF9130;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_21BBF9044;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21BBF9044()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BBF90BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BBF9130()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BBF91B0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21BE28D7C();
  v2[4] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBF9248, v4, v3);
}

uint64_t sub_21BBF9248()
{
  v1 = v0[3];

  v2 = [*(v1 + 24) primaryAppleAccountSource];
  if (v2)
  {
    v3 = v0[2];

    *v3 = 1;
  }

  else
  {
    sub_21BE2637C();
    sub_21BBFA054(&qword_27CDB6868, MEMORY[0x277D08018], MEMORY[0x277D08020]);
    swift_allocError();
    sub_21BE2636C();
    swift_willThrow();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_21BBF9350()
{
  v1[4] = v0;
  v2 = sub_21BE26A4C();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v1[8] = swift_task_alloc();
  v3 = sub_21BE25D6C();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BBF94DC, 0, 0);
}

uint64_t sub_21BBF94DC()
{
  v1 = v0[4];
  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 1;
  }

  else
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 1;
    v0[2] = v1;
    sub_21BBFA054(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel, byte_21BE35698);
    sub_21BE25F0C();
  }

  sub_21BE28D7C();
  v0[13] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBF9650, v4, v3);
}

uint64_t sub_21BBF9650()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);

  (*(v6 + 56))(v1, 1, 1, v5);

  sub_21BE25D5C();
  sub_21BE25D2C();
  (*(v3 + 8))(v2, v4);
  *(v0 + 136) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6860, &qword_21BE35700);
  swift_allocObject();
  *(v0 + 112) = sub_21BE262AC();

  return MEMORY[0x2822009F8](sub_21BBF97AC, 0, 0);
}

uint64_t sub_21BBF97AC()
{
  v1 = *(v0 + 64);
  v2 = sub_21BE28DAC();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v5 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_21BBF9898;

  return v5();
}

uint64_t sub_21BBF9898()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  sub_21BBDE578(*(v2 + 64));

  if (v0)
  {
    v3 = sub_21BBF9B44;
  }

  else
  {
    v3 = sub_21BBF99E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21BBF99E8()
{
  v1 = v0[4];
  if (*(v1 + 16))
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 0;
    v0[3] = v1;
    sub_21BBFA054(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel, byte_21BE35698);
    sub_21BE25F0C();
  }

  else
  {
    *(v1 + 16) = 0;
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_21BBF9B44(uint64_t a1)
{
  v2 = v1[16];
  v4 = v1[6];
  v3 = v1[7];
  v5 = v1[5];
  sub_21BE261BC();
  v6 = v2;
  sub_21BE295EC();
  MEMORY[0x21CF03CA0](0xD000000000000012, 0x800000021BE57830);
  MEMORY[0x21CF03CA0](0xD000000000000046, 0x800000021BE57850);
  sub_21BC51D50(v2, 0, 0xE000000000000000);

  (*(v4 + 8))(v3, v5);
  v7 = v1[4];
  if (*(v7 + 16))
  {
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    v1[3] = v7;
    sub_21BBFA054(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel, byte_21BE35698);
    sub_21BE25F0C();
  }

  else
  {
    *(v7 + 16) = 0;
  }

  v9 = v1[1];

  return v9();
}

uint64_t sub_21BBF9D60()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI23SharedCalendarItemModel___observationRegistrar;
  v2 = sub_21BE25F5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharedCalendarItemModel(uint64_t a1)
{
  result = qword_27CDB6848;
  if (!qword_27CDB6848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BBF9E60(uint64_t a1)
{
  result = sub_21BE25F5C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21BBF9F1C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BBF8934(a1, v1);
}

uint64_t sub_21BBF9FB8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BBF91B0(a1, v1);
}

uint64_t sub_21BBFA054(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21BBFA0C4(uint64_t a1)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_21BBA3854(v1 + 192, &v18, &qword_27CDB6870, &qword_21BE357D8);
  if (v19)
  {
    sub_21BB3D104(&v18, v20);
    v7 = v21;
    v8 = v22;
    __swift_project_boxed_opaque_existential_1Tm(v20, v21);
    swift_beginAccess();
    v9 = *(v1 + 56);
    v10 = *(v8 + 8);

    v11 = v10(a1, v9, v7, v8);

    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    return v11;
  }

  else
  {
    sub_21BB3A4CC(&v18, &qword_27CDB6870, &qword_21BE357D8);
    sub_21BE2619C();
    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FDC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_21BB3D81C(0x7449646574726F73, 0xEF293A5F28736D65, v20);
      _os_log_impl(&dword_21BB35000, v13, v14, "%s Impossible, no sorter!", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x21CF05C50](v16, -1, -1);
      MEMORY[0x21CF05C50](v15, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    return sub_21BE2975C();
  }
}

BOOL sub_21BBFA348(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
    switch(*v4)
    {
      case 1:
        v9 = 0x696D694C6D6D6F63;
        v8 = 0xEE006D6574497374;
        break;
      case 2:
        v9 = 0xD000000000000013;
        v8 = 0x800000021BE543D0;
        break;
      case 3:
        v9 = 0xD000000000000014;
        v8 = 0x800000021BE543F0;
        break;
      case 4:
        v9 = 0x6E6F697461636F6CLL;
        v8 = 0xEC0000006D657449;
        break;
      case 5:
        v9 = 0xD000000000000013;
        v8 = 0x800000021BE54420;
        break;
      case 6:
        v9 = 0x69636966656E6562;
        v8 = 0xEF6D657449797261;
        break;
      case 7:
        v8 = 0xEE006D6574497375;
        v9 = 0x6C5064756F6C4369;
        break;
      case 8:
        v8 = 0xE800000000000000;
        v9 = 0x6D657449656D6F68;
        break;
      case 9:
        v9 = 0xD000000000000013;
        v8 = 0x800000021BE54460;
        break;
      case 0xA:
        v9 = 0x736143656C707061;
        v8 = 0xED00006D65744968;
        break;
      case 0xB:
        v9 = 0x49746361746E6F63;
        v8 = 0xEB000000006D6574;
        break;
      case 0xC:
        v9 = 0xD000000000000012;
        v8 = 0x800000021BE54490;
        break;
      case 0xD:
        v9 = 0xD000000000000015;
        v8 = 0x800000021BE544B0;
        break;
      case 0xE:
        v9 = 0xD000000000000018;
        v8 = 0x800000021BE544D0;
        break;
      case 0xF:
        v9 = 0xD000000000000012;
        v8 = 0x800000021BE544F0;
        break;
      default:
        break;
    }

    v10 = 0xE700000000000000;
    v11 = 0x6E776F6E6B6E75;
    switch(a1)
    {
      case 1:
        v10 = 0xEE006D6574497374;
        if (v9 == 0x696D694C6D6D6F63)
        {
          goto LABEL_50;
        }

        goto LABEL_2;
      case 2:
        v10 = 0x800000021BE543D0;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 3:
        v10 = 0x800000021BE543F0;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 4:
        v10 = 0xEC0000006D657449;
        if (v9 != 0x6E6F697461636F6CLL)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 5:
        v10 = 0x800000021BE54420;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 6:
        v10 = 0xEF6D657449797261;
        if (v9 != 0x69636966656E6562)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 7:
        v10 = 0xEE006D6574497375;
        if (v9 != 0x6C5064756F6C4369)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 8:
        v10 = 0xE800000000000000;
        if (v9 != 0x6D657449656D6F68)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 9:
        v10 = 0x800000021BE54460;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 10:
        v11 = 0x736143656C707061;
        v10 = 0xED00006D65744968;
        goto LABEL_49;
      case 11:
        v10 = 0xEB000000006D6574;
        if (v9 != 0x49746361746E6F63)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 12:
        v10 = 0x800000021BE54490;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 13:
        v10 = 0x800000021BE544B0;
        if (v9 != 0xD000000000000015)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 14:
        v10 = 0x800000021BE544D0;
        if (v9 != 0xD000000000000018)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 15:
        v10 = 0x800000021BE544F0;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      default:
LABEL_49:
        if (v9 != v11)
        {
          goto LABEL_2;
        }

LABEL_50:
        if (v8 != v10)
        {
LABEL_2:
          v5 = sub_21BE2995C();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

uint64_t sub_21BBFA818()
{
  type metadata accessor for ChecklistScoringEngine();
  swift_allocObject();
  result = sub_21BBFBA94();
  qword_280BDCB50 = result;
  return result;
}

uint64_t sub_21BBFA854()
{
  swift_beginAccess();
  v1 = MEMORY[0x277D84F98];
  v0[7] = MEMORY[0x277D84F98];

  swift_beginAccess();
  v0[6] = v1;

  swift_beginAccess();
  v0[5] = MEMORY[0x277D84FA0];

  v0[22] = v1;
}

uint64_t sub_21BBFA8F4(void *a1)
{
  v2 = sub_21BE25FCC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  sub_21BD24044(a1, v13[3], v13);

  (*(v3 + 104))(v5, *MEMORY[0x277D07F38], v2);
  v6 = MEMORY[0x21CF01150](v5);
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    sub_21BD72C54();
    v7 = &off_282D943C0;
    v8 = &type metadata for ChecklistItemSorter;
  }

  else
  {
    v12[0] = sub_21BD72D88();
    v12[1] = v9;
    v7 = &off_282D943D8;
    v8 = &type metadata for LegacyChecklistSorter;
  }

  v12[3] = v8;
  v12[4] = v7;
  sub_21BBFAAC4(a1, v13, v12);
  sub_21BBFD7AC(v13);
  return __swift_destroy_boxed_opaque_existential_0Tm(v12);
}

uint64_t sub_21BBFAAC4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v120 = sub_21BE26A4C();
  v119 = *(v120 - 8);
  v8 = MEMORY[0x28223BE20](v120);
  v10 = &v114[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v117 = &v114[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v116 = &v114[-v14];
  MEMORY[0x28223BE20](v13);
  v16 = &v114[-v15];
  v17 = [a1 me];
  if (!v17)
  {
    sub_21BE2619C();
    v56 = sub_21BE26A2C();
    v57 = sub_21BE28FFC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_21BB35000, v56, v57, "no me, can't compute scores", v58, 2u);
      MEMORY[0x21CF05C50](v58, -1, -1);
    }

    return (*(v119 + 8))(v10, v120);
  }

  v118 = v17;
  v115 = [v17 isOrganizer];
  sub_21BBFA854();
  v4[22] = a2[2];

  sub_21BBFD750(a2, v132);
  swift_beginAccess();
  sub_21BBFD920(v132, (v4 + 8), &qword_27CDB6878, &unk_21BE357E0);
  swift_endAccess();
  sub_21BB3A35C(a3, v132);
  swift_beginAccess();
  sub_21BBFD920(v132, (v4 + 24), &qword_27CDB6870, &qword_21BE357D8);
  swift_endAccess();
  v125 = a2[4];
  v124 = *(v125 + 16);
  if (!v124)
  {
LABEL_32:
    v51 = a2[1];
    if ([v118 isParent])
    {
      goto LABEL_45;
    }

    if (*(v51 + 16) && (v52 = sub_21BBB32FC(3), (v53 & 1) != 0))
    {
      v54 = *(*(v51 + 56) + 8 * v52);

      v55 = *(v54 + 16);
      if (!v55)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v54 = MEMORY[0x277D84F90];
      v55 = *(MEMORY[0x277D84F90] + 16);
      if (!v55)
      {
LABEL_44:

LABEL_45:
        if (v115)
        {
          goto LABEL_55;
        }

        if (*(v51 + 16) && (v63 = sub_21BBB32FC(0), (v64 & 1) != 0))
        {
          v65 = *(*(v51 + 56) + 8 * v63);

          v66 = *(v65 + 16);
          if (!v66)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v65 = MEMORY[0x277D84F90];
          v66 = *(MEMORY[0x277D84F90] + 16);
          if (!v66)
          {
LABEL_54:

LABEL_55:
            v70 = [v118 isChildAccount];
            v71 = *(v51 + 16);
            if (v70)
            {
              if (v71)
              {
                v72 = sub_21BBB32FC(1);
                if (v73)
                {
                  v74 = *(*(v51 + 56) + 8 * v72);

                  v75 = *(v74 + 16);
                  if (!v75)
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_65;
                }
              }

              v74 = MEMORY[0x277D84F90];
              v75 = *(MEMORY[0x277D84F90] + 16);
              if (v75)
              {
LABEL_65:
                swift_beginAccess();
                v80 = 32;
                do
                {
                  v81 = *(v74 + v80);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v131 = v4[5];
                  v4[5] = 0x8000000000000000;
                  sub_21BBFC7B4(v81, isUniquelyReferenced_nonNull_native);
                  v4[5] = v131;
                  ++v80;
                  --v75;
                }

                while (v75);
LABEL_71:
                swift_endAccess();
              }

LABEL_72:

              sub_21BE2619C();

              v86 = sub_21BE26A2C();
              v87 = sub_21BE28FCC();

              if (os_log_type_enabled(v86, v87))
              {
                v88 = swift_slowAlloc();
                v89 = swift_slowAlloc();
                v132[0] = v89;
                *v88 = 136315394;
                *(v88 + 4) = sub_21BB3D81C(0xD00000000000001FLL, 0x800000021BE57A20, v132);
                *(v88 + 12) = 2080;
                swift_beginAccess();
                sub_21BBFD988();

                v90 = sub_21BE28E5C();
                v91 = v16;
                v93 = v92;

                v94 = sub_21BB3D81C(v90, v93, v132);

                *(v88 + 14) = v94;
                _os_log_impl(&dword_21BB35000, v86, v87, "%s hiddenItems %s", v88, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x21CF05C50](v89, -1, -1);
                MEMORY[0x21CF05C50](v88, -1, -1);

                v95 = *(v119 + 8);
                v95(v91, v120);
              }

              else
              {

                v95 = *(v119 + 8);
                v95(v16, v120);
              }

              v96 = v116;
              sub_21BE2619C();

              v97 = sub_21BE26A2C();
              v98 = sub_21BE28FCC();

              if (os_log_type_enabled(v97, v98))
              {
                v99 = swift_slowAlloc();
                v100 = swift_slowAlloc();
                v132[0] = v100;
                *v99 = 136315394;
                *(v99 + 4) = sub_21BB3D81C(0xD00000000000001FLL, 0x800000021BE57A20, v132);
                *(v99 + 12) = 2080;
                swift_beginAccess();
                sub_21BBFD9DC();

                v101 = sub_21BE2891C();
                v103 = v102;

                v104 = sub_21BB3D81C(v101, v103, v132);

                *(v99 + 14) = v104;
                _os_log_impl(&dword_21BB35000, v97, v98, "%s categoryOrder %s", v99, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x21CF05C50](v100, -1, -1);
                MEMORY[0x21CF05C50](v99, -1, -1);
              }

              v95(v96, v120);
              v105 = v117;
              sub_21BE2619C();

              v106 = sub_21BE26A2C();
              v107 = sub_21BE28FCC();

              if (os_log_type_enabled(v106, v107))
              {
                v108 = swift_slowAlloc();
                v109 = swift_slowAlloc();
                v130 = v109;
                *v108 = 136315394;
                *(v108 + 4) = sub_21BB3D81C(0xD00000000000001FLL, 0x800000021BE57A20, &v130);
                *(v108 + 12) = 2080;
                swift_beginAccess();
                sub_21BBFD988();

                v110 = sub_21BE2891C();
                v112 = v111;

                v113 = sub_21BB3D81C(v110, v112, &v130);

                *(v108 + 14) = v113;
                _os_log_impl(&dword_21BB35000, v106, v107, "%s itemOrder %s", v108, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x21CF05C50](v109, -1, -1);
                MEMORY[0x21CF05C50](v108, -1, -1);
              }

              return (v95)(v105, v120);
            }

            if (v71 && (v76 = sub_21BBB32FC(2), (v77 & 1) != 0))
            {
              v78 = *(*(v51 + 56) + 8 * v76);

              v79 = *(v78 + 16);
              if (!v79)
              {
                goto LABEL_72;
              }
            }

            else
            {
              v78 = MEMORY[0x277D84F90];
              v79 = *(MEMORY[0x277D84F90] + 16);
              if (!v79)
              {
                goto LABEL_72;
              }
            }

            swift_beginAccess();
            v83 = 32;
            do
            {
              v84 = *(v78 + v83);
              v85 = swift_isUniquelyReferenced_nonNull_native();
              v131 = v4[5];
              v4[5] = 0x8000000000000000;
              sub_21BBFC7B4(v84, v85);
              v4[5] = v131;
              ++v83;
              --v79;
            }

            while (v79);
            goto LABEL_71;
          }
        }

        v67 = (v65 + 32);
        swift_beginAccess();
        do
        {
          v68 = *v67++;
          v69 = swift_isUniquelyReferenced_nonNull_native();
          v131 = v4[5];
          v4[5] = 0x8000000000000000;
          sub_21BBFC7B4(v68, v69);
          v4[5] = v131;
          --v66;
        }

        while (v66);
        swift_endAccess();
        goto LABEL_54;
      }
    }

    v60 = (v54 + 32);
    swift_beginAccess();
    do
    {
      v61 = *v60++;
      v62 = swift_isUniquelyReferenced_nonNull_native();
      v131 = v4[5];
      v4[5] = 0x8000000000000000;
      sub_21BBFC7B4(v61, v62);
      v4[5] = v131;
      --v55;
    }

    while (v55);
    swift_endAccess();
    goto LABEL_44;
  }

  v18 = 0;
  v123 = v125 + 32;
  v122 = v16;
  v121 = a2;
  while (v18 < *(v125 + 16))
  {
    v19 = v123 + 48 * v18;
    v20 = *(v19 + 8);
    if (v20)
    {
      v127 = v18;
      v21 = *(v19 + 16);
      v22 = *(v19 + 24);
      v23 = *(v19 + 32);
      v24 = *(v19 + 40);

      v126 = v20;
      v25 = sub_21BE2980C();
      if (v25 >= 7)
      {
      }

      else
      {
        v26 = v25;
        swift_beginAccess();
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v131 = v4[6];
        v4[6] = 0x8000000000000000;
        sub_21BC7FCB8(v21, v26, v27);
        v4[6] = v131;
        swift_endAccess();
        if (v24)
        {
          v28 = -1;
        }

        else
        {
          v28 = v23;
        }

        swift_beginAccess();
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v131 = v4[23];
        v4[23] = 0x8000000000000000;
        sub_21BC7FCB8(v28, v26, v29);
        v4[23] = v131;
        swift_endAccess();
        v30 = *(v22 + 16);

        if (v30)
        {
          v31 = 0;
          v32 = (v22 + 48);
          v128 = v30;
          while (v31 < *(v22 + 16))
          {
            if (*(v32 - 1))
            {
              v33 = *v32;
              swift_bridgeObjectRetain_n();
              v34 = sub_21BE2980C();

              if (v34 < 0x10)
              {
                v129 = v33;
                v35 = v22;
                swift_beginAccess();
                v36 = swift_isUniquelyReferenced_nonNull_native();
                v131 = v4[7];
                v37 = v131;
                v38 = v4;
                v4[7] = 0x8000000000000000;
                v40 = sub_21BBB3274(v34);
                v41 = v37[2];
                v42 = (v39 & 1) == 0;
                v43 = v41 + v42;
                if (__OFADD__(v41, v42))
                {
                  goto LABEL_81;
                }

                v44 = v39;
                if (v37[3] >= v43)
                {
                  if ((v36 & 1) == 0)
                  {
                    sub_21BC812DC();
                  }
                }

                else
                {
                  sub_21BC7CADC(v43, v36);
                  v45 = sub_21BBB3274(v34);
                  if ((v44 & 1) != (v46 & 1))
                  {
                    goto LABEL_84;
                  }

                  v40 = v45;
                }

                v22 = v35;
                v47 = v131;
                if (v44)
                {
                  *(v131[7] + 8 * v40) = v129;
                }

                else
                {
                  v131[(v40 >> 6) + 8] |= 1 << v40;
                  *(v47[6] + v40) = v34;
                  *(v47[7] + 8 * v40) = v129;
                  v48 = v47[2];
                  v49 = __OFADD__(v48, 1);
                  v50 = v48 + 1;
                  if (v49)
                  {
                    goto LABEL_83;
                  }

                  v47[2] = v50;
                }

                v4 = v38;
                v38[7] = v47;
                swift_endAccess();
                v30 = v128;
              }
            }

            ++v31;
            v32 += 3;
            if (v30 == v31)
            {
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_81:
          __break(1u);
          break;
        }

LABEL_31:
        swift_bridgeObjectRelease_n();
        v16 = v122;
        a2 = v121;
      }

      v18 = v127;
    }

    if (++v18 == v124)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  result = sub_21BE299FC();
  __break(1u);
  return result;
}

uint64_t sub_21BBFB8D0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 48) + (__clz(__rbit64(v9)) | (v13 << 6)));
      result = a1(&v14);
      if (v3)
      {
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void (*sub_21BBFB9C4(void (*result)(uint64_t *), uint64_t a2, uint64_t a3))(uint64_t *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 72); ; i += 48)
    {
      v7 = *i;
      v9 = *(i - 2);
      v8 = *(i - 1);
      v10 = *(i - 5);
      v11 = *(i - 2);
      v12 = v9;
      v13 = v8;
      v14 = v7;

      v5(&v10);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_21BBFBA94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  if (qword_280BD6CD0 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = qword_280BDCB48;
  *(v0 + 24) = xmmword_21BE35740;
  v4 = MEMORY[0x277D84FA0];
  *(v0 + 40) = MEMORY[0x277D84FA0];

  v5 = MEMORY[0x277D84F90];
  *(v0 + 48) = sub_21BBB6190(MEMORY[0x277D84F90]);
  *(v0 + 56) = sub_21BBB61B8(v5);
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = sub_21BBB62CC(v5);
  *(v0 + 184) = sub_21BBB6190(v5);
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0;
  if (v5 >> 62 && sub_21BE2951C())
  {
    v4 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  *(v0 + 232) = v4;
  v6 = sub_21BE28DAC();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;

  sub_21BBA932C(0, 0, v3, &unk_21BE357F8, v7);

  return v0;
}

uint64_t sub_21BBFBCA0()
{
  sub_21BE28D7C();
  *(v0 + 24) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBFBD34, v2, v1);
}

uint64_t sub_21BBFBD34()
{

  sub_21BBFBD98();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BBFBD98()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6880, &qword_21BE35800);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6888, &qword_21BE35808);
  sub_21BE26C7C();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_21BBFD8BC();
  sub_21BE26D1C();

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();
}

uint64_t sub_21BBFBF38(uint64_t *a1, uint64_t a2)
{
  v24 = a2;
  v22 = sub_21BE26A4C();
  v21 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21BE25FCC();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v9 = v26[0];
  if (v26[0])
  {
    sub_21BD24044(v26[0], v8, v26);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v10 = v23;
      (*(v23 + 104))(v7, *MEMORY[0x277D07F38], v5);
      v11 = MEMORY[0x21CF01150](v7);
      (*(v10 + 8))(v7, v5);
      if (v11)
      {
        sub_21BD72C54();
        v12 = &off_282D943C0;
        v13 = &type metadata for ChecklistItemSorter;
      }

      else
      {
        v25[0] = sub_21BD72D88();
        v25[1] = v19;
        v12 = &off_282D943D8;
        v13 = &type metadata for LegacyChecklistSorter;
      }

      v25[3] = v13;
      v25[4] = v12;
      sub_21BBFAAC4(v9, v26, v25);

      sub_21BBFD7AC(v26);
      return __swift_destroy_boxed_opaque_existential_0Tm(v25);
    }

    else
    {

      return sub_21BBFD7AC(v26);
    }
  }

  else
  {
    sub_21BE261BC();
    v14 = sub_21BE26A2C();
    v15 = sub_21BE28FFC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_21BB3D81C(0xD000000000000019, 0x800000021BE57A00, v26);
      _os_log_impl(&dword_21BB35000, v14, v15, "%s unable to get family circle from store", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x21CF05C50](v17, -1, -1);
      MEMORY[0x21CF05C50](v16, -1, -1);
    }

    return (*(v21 + 8))(v4, v22);
  }
}

uint64_t sub_21BBFC31C(char *a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  v6 = *a1;
  if (*(a2 + 16) && (v8 = sub_21BBB3230(*a1), (v9 & 1) != 0))
  {
    v10 = *(*(a2 + 56) + 8 * v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v11 = a3[3];
  v12 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v11);
  v13 = (*(v12 + 32))(v11, v12);
  v14 = sub_21BBFA348(v13, v10);

  if (v14)
  {
    *a4 = v6;
  }

  return result;
}

void *sub_21BBFC3E4()
{

  sub_21BB3A4CC(v0 + 64, &qword_27CDB6878, &unk_21BE357E0);

  sub_21BB3A4CC(v0 + 192, &qword_27CDB6870, &qword_21BE357D8);

  return v0;
}

uint64_t sub_21BBFC464()
{
  sub_21BBFC3E4();

  return swift_deallocClassInstance();
}

uint64_t sub_21BBFC4BC(uint64_t a1)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_21BBA3854(v1 + 192, &v24, &qword_27CDB6870, &qword_21BE357D8);
  if (v25)
  {
    sub_21BB3D104(&v24, v26);
    v7 = v27;
    v8 = v28;
    __swift_project_boxed_opaque_existential_1Tm(v26, v27);
    swift_beginAccess();
    v9 = *(v1 + 48);
    v10 = *(v8 + 16);

    v11 = v10(a1, v9, v7, v8);

    __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  else
  {
    sub_21BB3A4CC(&v24, &qword_27CDB6870, &qword_21BE357D8);
    sub_21BE2619C();
    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FDC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_21BB3D81C(0xD000000000000010, 0x800000021BE579C0, v26);
      _os_log_impl(&dword_21BB35000, v13, v14, "%s Impossible, no sorter!", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x21CF05C50](v16, -1, -1);
      MEMORY[0x21CF05C50](v15, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    v17 = *(a1 + 16);
    v11 = MEMORY[0x277D84F90];
    if (v17)
    {
      v26[0] = MEMORY[0x277D84F90];
      sub_21BC599FC(0, v17, 0);
      v11 = v26[0];
      v18 = (a1 + 56);
      v19 = *(v26[0] + 16);
      do
      {
        v21 = *v18;
        v18 += 32;
        v20 = v21;
        v26[0] = v11;
        v22 = *(v11 + 24);
        if (v19 >= v22 >> 1)
        {
          sub_21BC599FC((v22 > 1), v19 + 1, 1);
          v11 = v26[0];
        }

        *(v11 + 16) = v19 + 1;
        *(v11 + v19++ + 32) = v20;
        --v17;
      }

      while (v17);
    }
  }

  return v11;
}

uint64_t sub_21BBFC7B4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  sub_21BE29ACC();
  sub_21BC5C62C(a1);
  sub_21BE28ABC();

  v7 = sub_21BE29B0C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  v35 = v2;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    v16 = 0;
    v11 = 1;
    goto LABEL_58;
  }

  v34 = a2;
  v10 = ~v8;
  v11 = 1;
  while (2)
  {
    v12 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E75;
    switch(*(*(v6 + 48) + v9))
    {
      case 1:
        v13 = 0x696D694C6D6D6F63;
        v12 = 0xEE006D6574497374;
        break;
      case 2:
        v13 = 0xD000000000000013;
        v12 = 0x800000021BE543D0;
        break;
      case 3:
        v13 = 0xD000000000000014;
        v12 = 0x800000021BE543F0;
        break;
      case 4:
        v13 = 0x6E6F697461636F6CLL;
        v12 = 0xEC0000006D657449;
        break;
      case 5:
        v13 = 0xD000000000000013;
        v12 = 0x800000021BE54420;
        break;
      case 6:
        v13 = 0x69636966656E6562;
        v12 = 0xEF6D657449797261;
        break;
      case 7:
        v12 = 0xEE006D6574497375;
        v13 = 0x6C5064756F6C4369;
        break;
      case 8:
        v12 = 0xE800000000000000;
        v13 = 0x6D657449656D6F68;
        break;
      case 9:
        v13 = 0xD000000000000013;
        v12 = 0x800000021BE54460;
        break;
      case 0xA:
        v13 = 0x736143656C707061;
        v12 = 0xED00006D65744968;
        break;
      case 0xB:
        v13 = 0x49746361746E6F63;
        v12 = 0xEB000000006D6574;
        break;
      case 0xC:
        v13 = 0xD000000000000012;
        v12 = 0x800000021BE54490;
        break;
      case 0xD:
        v13 = 0xD000000000000015;
        v12 = 0x800000021BE544B0;
        break;
      case 0xE:
        v13 = 0xD000000000000018;
        v12 = 0x800000021BE544D0;
        break;
      case 0xF:
        v13 = 0xD000000000000012;
        v12 = 0x800000021BE544F0;
        break;
      default:
        break;
    }

    v14 = 0xE700000000000000;
    v15 = 0x6E776F6E6B6E75;
    switch(a1)
    {
      case 1:
        v14 = 0xEE006D6574497374;
        if (v13 == 0x696D694C6D6D6F63)
        {
          goto LABEL_48;
        }

        goto LABEL_49;
      case 2:
        v14 = 0x800000021BE543D0;
        if (v13 != 0xD000000000000013)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 3:
        v14 = 0x800000021BE543F0;
        if (v13 != 0xD000000000000014)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 4:
        v14 = 0xEC0000006D657449;
        if (v13 != 0x6E6F697461636F6CLL)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 5:
        v14 = 0x800000021BE54420;
        if (v13 != 0xD000000000000013)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 6:
        v14 = 0xEF6D657449797261;
        if (v13 != 0x69636966656E6562)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 7:
        v14 = 0xEE006D6574497375;
        if (v13 != 0x6C5064756F6C4369)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 8:
        v14 = 0xE800000000000000;
        if (v13 != 0x6D657449656D6F68)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 9:
        v14 = 0x800000021BE54460;
        if (v13 != 0xD000000000000013)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 10:
        v15 = 0x736143656C707061;
        v14 = 0xED00006D65744968;
        goto LABEL_47;
      case 11:
        v14 = 0xEB000000006D6574;
        if (v13 != 0x49746361746E6F63)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 12:
        v14 = 0x800000021BE54490;
        if (v13 != 0xD000000000000012)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 13:
        v14 = 0x800000021BE544B0;
        if (v13 != 0xD000000000000015)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 14:
        v14 = 0x800000021BE544D0;
        if (v13 != 0xD000000000000018)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 15:
        v14 = 0x800000021BE544F0;
        if (v13 != 0xD000000000000012)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      default:
LABEL_47:
        if (v13 != v15)
        {
          goto LABEL_49;
        }

LABEL_48:
        if (v12 == v14)
        {

          v11 = 0;
          v16 = 1;
          goto LABEL_57;
        }

LABEL_49:
        v16 = sub_21BE2995C();

        if ((v16 & 1) == 0)
        {
          v9 = (v9 + 1) & v10;
          if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_57;
          }

          continue;
        }

        v11 = 0;
LABEL_57:
        v3 = v35;
        a2 = v34;
LABEL_58:
        v17 = *(v6 + 16);
        v18 = v17 + v11;
        if (__OFADD__(v17, v11))
        {
          __break(1u);
          goto LABEL_130;
        }

        v19 = *(v6 + 24);
        if (v19 >= v18 && (a2 & 1) != 0)
        {
          if (v16)
          {
            goto LABEL_127;
          }

          goto LABEL_123;
        }

        if (a2)
        {
          sub_21BC66360(v18);
        }

        else
        {
          if (v19 >= v18)
          {
            sub_21BC66D18();
            if (v16)
            {
              goto LABEL_127;
            }

            goto LABEL_123;
          }

          sub_21BC670F4(v18);
        }

        v20 = *v3;
        sub_21BE29ACC();
        sub_21BC5C62C(a1);
        sub_21BE28ABC();

        v21 = sub_21BE29B0C();
        v22 = -1 << *(v20 + 32);
        v9 = v21 & ~v22;
        if (((*(v20 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
LABEL_122:
          v3 = v35;
          if (v16)
          {
LABEL_131:
            result = sub_21BE299EC();
            __break(1u);
            return result;
          }

LABEL_123:
          v28 = *v3;
          *(*v3 + 8 * (v9 >> 6) + 56) |= 1 << v9;
          *(*(v28 + 48) + v9) = a1;
          v29 = *(v28 + 16);
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (!v30)
          {
            *(v28 + 16) = v31;
            return 16;
          }

LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v36 = ~v22;
        while (2)
        {
          v23 = 0xE700000000000000;
          v24 = 0x6E776F6E6B6E75;
          switch(*(*(v20 + 48) + v9))
          {
            case 1:
              v24 = 0x696D694C6D6D6F63;
              v23 = 0xEE006D6574497374;
              break;
            case 2:
              v24 = 0xD000000000000013;
              v23 = 0x800000021BE543D0;
              break;
            case 3:
              v24 = 0xD000000000000014;
              v23 = 0x800000021BE543F0;
              break;
            case 4:
              v24 = 0x6E6F697461636F6CLL;
              v23 = 0xEC0000006D657449;
              break;
            case 5:
              v24 = 0xD000000000000013;
              v23 = 0x800000021BE54420;
              break;
            case 6:
              v24 = 0x69636966656E6562;
              v23 = 0xEF6D657449797261;
              break;
            case 7:
              v23 = 0xEE006D6574497375;
              v24 = 0x6C5064756F6C4369;
              break;
            case 8:
              v23 = 0xE800000000000000;
              v24 = 0x6D657449656D6F68;
              break;
            case 9:
              v24 = 0xD000000000000013;
              v23 = 0x800000021BE54460;
              break;
            case 0xA:
              v24 = 0x736143656C707061;
              v23 = 0xED00006D65744968;
              break;
            case 0xB:
              v24 = 0x49746361746E6F63;
              v23 = 0xEB000000006D6574;
              break;
            case 0xC:
              v24 = 0xD000000000000012;
              v23 = 0x800000021BE54490;
              break;
            case 0xD:
              v24 = 0xD000000000000015;
              v23 = 0x800000021BE544B0;
              break;
            case 0xE:
              v24 = 0xD000000000000018;
              v23 = 0x800000021BE544D0;
              break;
            case 0xF:
              v24 = 0xD000000000000012;
              v23 = 0x800000021BE544F0;
              break;
            default:
              break;
          }

          v25 = 0xE700000000000000;
          v26 = 0x6E776F6E6B6E75;
          switch(a1)
          {
            case 1:
              v25 = 0xEE006D6574497374;
              if (v24 == 0x696D694C6D6D6F63)
              {
                goto LABEL_116;
              }

              goto LABEL_117;
            case 2:
              v25 = 0x800000021BE543D0;
              if (v24 != 0xD000000000000013)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 3:
              v25 = 0x800000021BE543F0;
              if (v24 != 0xD000000000000014)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 4:
              v25 = 0xEC0000006D657449;
              if (v24 != 0x6E6F697461636F6CLL)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 5:
              v25 = 0x800000021BE54420;
              if (v24 != 0xD000000000000013)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 6:
              v25 = 0xEF6D657449797261;
              if (v24 != 0x69636966656E6562)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 7:
              v25 = 0xEE006D6574497375;
              if (v24 != 0x6C5064756F6C4369)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 8:
              v25 = 0xE800000000000000;
              if (v24 != 0x6D657449656D6F68)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 9:
              v25 = 0x800000021BE54460;
              if (v24 != 0xD000000000000013)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 10:
              v26 = 0x736143656C707061;
              v25 = 0xED00006D65744968;
              goto LABEL_115;
            case 11:
              v25 = 0xEB000000006D6574;
              if (v24 != 0x49746361746E6F63)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 12:
              v25 = 0x800000021BE54490;
              if (v24 != 0xD000000000000012)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 13:
              v25 = 0x800000021BE544B0;
              if (v24 != 0xD000000000000015)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 14:
              v25 = 0x800000021BE544D0;
              if (v24 != 0xD000000000000018)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 15:
              v25 = 0x800000021BE544F0;
              if (v24 != 0xD000000000000012)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            default:
LABEL_115:
              if (v24 != v26)
              {
                goto LABEL_117;
              }

LABEL_116:
              if (v23 != v25)
              {
LABEL_117:
                v27 = sub_21BE2995C();

                if (v27)
                {
                  goto LABEL_126;
                }

                v9 = (v9 + 1) & v36;
                if (((*(v20 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
                {
                  goto LABEL_122;
                }

                continue;
              }

LABEL_126:
              v3 = v35;
              if ((v16 & 1) == 0)
              {
                goto LABEL_131;
              }

LABEL_127:
              v33 = *(*v3 + 48);
              result = *(v33 + v9);
              *(v33 + v9) = a1;
              return result;
          }
        }
    }
  }
}

uint64_t sub_21BBFD378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21BE26A4C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[3] = a3;
  v42[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v41 = 7;
  v32 = *(a2 + 176);
  v13 = v32;
  v33 = v42;
  v34 = &v41;

  sub_21BBFB8D0(sub_21BBFD730, &v31, v13);

  v14 = v41;
  if (v41 == 7)
  {
    sub_21BE2619C();
    sub_21BB3A35C(v42, v38);

    v15 = sub_21BE26A2C();
    v16 = sub_21BE28FFC();

    if (os_log_type_enabled(v15, v16))
    {
      v30 = v16;
      v17 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v17 = 136315394;
      v18 = v39;
      v19 = v40;
      __swift_project_boxed_opaque_existential_1Tm(v38, v39);
      v20 = sub_21BBE7CF8(v18, v19);
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      v23 = sub_21BB3D81C(v20, v22, &v37);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2080;
      swift_beginAccess();
      sub_21BBA3854(a2 + 64, v36, &qword_27CDB6878, &unk_21BE357E0);
      if (v36[0])
      {
        sub_21BBFD750(v36, v35);
        sub_21BB3A4CC(v36, &qword_27CDB6878, &unk_21BE357E0);
        v25 = v35[7];
        v24 = v35[8];

        sub_21BBFD7AC(v35);
      }

      else
      {
        sub_21BB3A4CC(v36, &qword_27CDB6878, &unk_21BE357E0);
        v24 = 0x800000021BE579E0;
        v25 = 0xD000000000000012;
      }

      v26 = sub_21BB3D81C(v25, v24, &v37);

      *(v17 + 14) = v26;
      _os_log_impl(&dword_21BB35000, v15, v30, "%s was not found in any category defined by checklist '%s'", v17, 0x16u);
      v27 = v29;
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v27, -1, -1);
      MEMORY[0x21CF05C50](v17, -1, -1);

      (*(v9 + 8))(v11, v8);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v42);
  return v14;
}

uint64_t sub_21BBFD800(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BBFBC80(a1, v4, v5, v6);
}

unint64_t sub_21BBFD8BC()
{
  result = qword_280BD6AB8;
  if (!qword_280BD6AB8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6880, &qword_21BE35800);
    result = swift_getWitnessTable(MEMORY[0x277CBCEC8], v3, v0, v1);
    atomic_store(result, &qword_280BD6AB8);
  }

  return result;
}

uint64_t sub_21BBFD920(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_21BBFD988()
{
  result = qword_280BD72E8;
  if (!qword_280BD72E8)
  {
    result = swift_getWitnessTable(asc_21BE3A690, &type metadata for ChecklistItemType, v0, v1);
    atomic_store(result, &qword_280BD72E8);
  }

  return result;
}

unint64_t sub_21BBFD9DC()
{
  result = qword_27CDB6890;
  if (!qword_27CDB6890)
  {
    result = swift_getWitnessTable(a5, &type metadata for ChecklistCategory, v0, v1);
    atomic_store(result, &qword_27CDB6890);
  }

  return result;
}

uint64_t sub_21BBFDA64@<X0>(uint64_t *a2@<X8>)
{
  sub_21BB3A2A4(0, &qword_280BD6980, 0x277D08248);
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

id sub_21BBFDAB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  result = v1;
  if (!v1)
  {
    return [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  return result;
}

char *FAFamilyLandingPageViewModel.init(appleAccount:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v26 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore;
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  *&v2[v14] = qword_280BD79E0;
  if (MEMORY[0x277D84F90] >> 62 && sub_21BE2951C())
  {

    v15 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {

    v15 = MEMORY[0x277D84FA0];
  }

  *&v2[OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_cancellables] = v15;
  v25 = a1;
  *&v2[OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_familyPageSubscriptionsURLs] = sub_21BC85A38();
  v16 = type metadata accessor for FAFamilyLandingPageViewModel();
  v29.receiver = v2;
  v29.super_class = v16;
  v17 = objc_msgSendSuper2(&v29, sel_init);
  swift_beginAccess();
  v18 = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC710, &qword_21BE35920);
  sub_21BE26C7C();
  swift_endAccess();

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21BE2635C();
  swift_allocObject();
  v20 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180, MEMORY[0x277CBCEC8]);
  sub_21BB3CCDC();
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70, MEMORY[0x277CBCBE0]);
  sub_21BE26CFC();
  (*(v5 + 8))(v7, v4);
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = &unk_21BE35930;
  v21[4] = v19;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0, MEMORY[0x277CBCC18]);

  v22 = v28;
  sub_21BE26D1C();

  (*(v27 + 8))(v10, v22);
  (*(v26 + 8))(v13, v11);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  return v18;
}

uint64_t sub_21BBFE078(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a2;
  sub_21BE28D7C();
  *(v2 + 72) = sub_21BE28D6C();
  v4 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBFE110, v4, v3);
}

uint64_t sub_21BBFE110()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v3 = *(v0 + 40);
    if (v3)
    {

      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        v5 = v4;
        type metadata accessor for FAFamilyLandingPageViewModel();
        sub_21BC089F4(&qword_27CDB68F0, v6, type metadata accessor for FAFamilyLandingPageViewModel, protocol conformance descriptor for FAFamilyLandingPageViewModel);
        sub_21BE26C0C();

        sub_21BE26C4C();
      }
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

id FAFamilyLandingPageViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FAFamilyLandingPageViewModel.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FAFamilyLandingPageViewModel();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21BBFE3E4@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for FAFamilyLandingPageViewModel();
  result = sub_21BE26C0C();
  *a3 = result;
  return result;
}

uint64_t sub_21BBFE420@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2754C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FamilyLandingPageMainView(0);
  sub_21BBA3854(v1 + *(v10 + 32), v9, &unk_27CDBDC10, &unk_21BE35940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21BE2690C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21BE28FEC();
    v13 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_21BBFE628()
{
  type metadata accessor for FamilyLandingPageMainView(0);
  type metadata accessor for AppleCardFamilyCache();
  sub_21BC089F4(&qword_280BD8840, 255, type metadata accessor for AppleCardFamilyCache, protocol conformance descriptor for SimpleFamilyServerCache);
  sub_21BE26EAC();
  v4[0] = 0xD000000000000010;
  v4[1] = 0x800000021BE57B40;
  v0 = sub_21BE20000(v4);

  if (!v0)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {

LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  LOBYTE(v4[0]) = 2;
  MEMORY[0x21CF03EA0](v1, v4);

  v2 = v4[0];
  return v2 & 1;
}

uint64_t sub_21BBFE794(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_21BBFE7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = v3;
  sub_21BE283EC();
  type metadata accessor for NavigationManager(0);
  sub_21BC089F4(&qword_27CDB69B0, 255, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  v7 = sub_21BE26E9C();
  v9 = v8;

  result = swift_getKeyPath();
  *a2 = &unk_21BE35C70;
  *(a2 + 8) = v4;
  *(a2 + 16) = sub_21BC09614;
  *(a2 + 24) = v5;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v7;
  *(a2 + 56) = v9 & 1;
  *(a2 + 64) = 1;
  *(a2 + 72) = result;
  *(a2 + 80) = 0;
  return result;
}

uint64_t sub_21BBFE958(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21BE28D7C();
  v2[4] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBFE9F0, v4, v3);
}

uint64_t sub_21BBFE9F0()
{
  v1 = v0[3];

  v2 = [v1 altDSID];
  if (v2)
  {
    v3 = v2;
    v4 = sub_21BE28A0C();
    v6 = v5;
  }

  else
  {
    v6 = 0xE100000000000000;
    v4 = 45;
  }

  v7 = v0[2];
  *v7 = v4;
  v7[1] = v6;
  v8 = v0[1];

  return v8();
}

id sub_21BBFEAA0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for FamilyMemberViewModel();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = xmmword_21BE358A0;
  *(v4 + 40) = 0;
  *(a2 + 24) = v3;
  *(a2 + 32) = &off_282D96DE8;
  *a2 = v4;
  *(a2 + 40) = 0;

  return a1;
}

uint64_t sub_21BBFEB20()
{
  sub_21BBFE7F4(v0, v2);
  if (qword_27CDB4F88 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6968, &qword_21BE35C48);
  type metadata accessor for FAFamilyImageLoader(0);
  sub_21BC0B100(&qword_27CDB6970, &qword_27CDB6968, &qword_21BE35C48, sub_21BC09438);
  sub_21BC089F4(&qword_27CDB69A8, 255, type metadata accessor for FAFamilyImageLoader, protocol conformance descriptor for FAFamilyImageLoader);
  sub_21BE27EEC();
  v4[3] = v2[3];
  v4[4] = v2[4];
  v5 = v3;
  v4[0] = v2[0];
  v4[1] = v2[1];
  v4[2] = v2[2];
  return sub_21BB3A4CC(v4, &qword_27CDB6968, &qword_21BE35C48);
}

uint64_t sub_21BBFEC98()
{
  v0 = type metadata accessor for FamilyLandingPageMainView(0);
  v1 = sub_21BC06A8C(v0);
  v2 = [v1 members];

  sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
  v3 = sub_21BE28C3C();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:

    v7 = MEMORY[0x277D84F90];
LABEL_12:
    v9 = v7;

    sub_21BC07724(&v9);

    return v9;
  }

  v4 = sub_21BE2951C();
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  v9 = MEMORY[0x277D84F90];
  sub_21BE296DC();
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CF047C0](v5, v3);
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      ++v5;
      sub_21BE296BC();
      sub_21BE296EC();
      sub_21BE296FC();
      sub_21BE296CC();
    }

    while (v4 != v5);

    v7 = v9;
    goto LABEL_12;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_21BBFEE4C@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a1;
  v28 = a4;
  v6 = type metadata accessor for FamilyLandingPageMainView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = *a2;
  v11 = *(a3 + *(v7 + 52) + 8);
  sub_21BBB515C(a3, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  sub_21BC0B23C(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for FamilyLandingPageMainView);
  swift_unknownObjectWeakLoadStrong();
  v14 = (a3 + *(v7 + 48));
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v30) = v15;
  v31 = v16;
  v17 = v11;
  v26 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v18 = v32;
  v19 = v33;
  LOBYTE(v11) = v34;
  v20 = *(a3 + 32);
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0, protocol conformance descriptor for FAProfilePictureStore);
  v21 = v20;
  v32 = sub_21BE270CC();
  v33 = v22;
  v34 = sub_21BC0C420;
  v35 = v13;
  v36 = 0;
  v37 = v26;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v38 = v18;
  v39 = v19;
  v40 = v11;
  type metadata accessor for LocationViewModel(0);
  sub_21BC089F4(&qword_27CDBDC20, 255, type metadata accessor for LocationViewModel, protocol conformance descriptor for LocationViewModel);
  v41 = sub_21BE270CC();
  v42 = v23;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_21BE295EC();

  v30 = 0xD000000000000012;
  v31 = 0x800000021BE57BD0;
  v29 = v27;
  v24 = sub_21BE2992C();
  MEMORY[0x21CF03CA0](v24);

  sub_21BC0C0F4();
  sub_21BE2809C();

  return sub_21BC0C4AC(&v32);
}

uint64_t sub_21BBFF17C(uint64_t *a1)
{
  type metadata accessor for FAFamilyLandingPageViewModel();
  sub_21BC089F4(&qword_27CDB68F0, v1, type metadata accessor for FAFamilyLandingPageViewModel, protocol conformance descriptor for FAFamilyLandingPageViewModel);

  return sub_21BE26EAC();
}

uint64_t sub_21BBFF208@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FamilyLandingPageMainView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = *a1;
  sub_21BBB515C(a2, &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_21BC0B23C(&v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10, type metadata accessor for FamilyLandingPageMainView);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v17[15] = 0;
  v13 = v9;
  sub_21BE283EC();
  LOBYTE(v8) = v17[16];
  v14 = v18;
  type metadata accessor for NavigationManager(0);
  sub_21BC089F4(&qword_27CDB69B0, 255, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  result = sub_21BE26E9C();
  *a3 = &unk_21BE361A0;
  *(a3 + 8) = v11;
  *(a3 + 16) = sub_21BC0BF50;
  *(a3 + 24) = v12;
  *(a3 + 32) = v8;
  *(a3 + 40) = v14;
  *(a3 + 48) = result;
  *(a3 + 56) = v16 & 1;
  return result;
}

uint64_t sub_21BBFF3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  sub_21BE28D7C();
  v3[21] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v3[22] = v5;
  v3[23] = v4;

  return MEMORY[0x2822009F8](sub_21BBFF494, v5, v4);
}

uint64_t sub_21BBFF494()
{
  type metadata accessor for FamilyLandingPageMainView(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[20];
    v4 = v0[18];
    v0[2] = v0;
    v0[3] = sub_21BBFF620;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5948, &qword_21BE4DE90);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21BD44BD8;
    v0[13] = &block_descriptor_4;
    v0[14] = v5;
    [v2 loadMemberDetailsWithMember:v3 navigationController:v4 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21BBFF620()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_21BBFF728, v2, v1);
}

uint64_t sub_21BBFF728()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

void *sub_21BBFF798@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for PendingMemberViewModel();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = 1;
  *(v5 + 26) = 1;
  v6 = a2;
  result = sub_21BE2858C();
  if (qword_27CDB4E58 != -1)
  {
    result = swift_once();
  }

  v8 = byte_27CDD41B0 == 0;
  v9 = 38.0;
  *a3 = v5;
  *(a3 + 8) = v10;
  if (!v8)
  {
    v9 = 40.0;
  }

  *(a3 + 16) = v11;
  *(a3 + 24) = v12;
  *(a3 + 32) = v9;
  *(a3 + 40) = 0;
  return result;
}

uint64_t FamilyLandingPageMainView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FamilyLandingPageMainView(0);
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_21BE2690C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  sub_21BBFE420(&v20 - v11);
  (*(v7 + 104))(v10, *MEMORY[0x277D40278], v6);
  sub_21BC089F4(&qword_27CDB66C8, 255, MEMORY[0x277D40290], MEMORY[0x277D402C8]);
  sub_21BE28BDC();
  sub_21BE28BDC();
  v13 = *(v7 + 8);
  v13(v10, v6);
  v13(v12, v6);
  LOBYTE(v13) = v23 == v22;
  sub_21BBB515C(v2, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v15 = swift_allocObject();
  sub_21BC0B23C(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for FamilyLandingPageMainView);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68B8, &qword_21BE35950);
  v17 = *(v16 + 40);
  *(a1 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68C0, &qword_21BE4E940);
  swift_storeEnumTagMultiPayload();
  v18 = *(v16 + 44);
  *(a1 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationManager(0);
  swift_allocObject();
  result = NavigationManager.init(usesNavigationStack:path:)(v13, MEMORY[0x277D84F90]);
  *a1 = result;
  a1[1] = 0;
  a1[2] = sub_21BC08A3C;
  a1[3] = v15;
  return result;
}

uint64_t sub_21BBFFBC8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = type metadata accessor for FamilyLandingPageMainView(0);
  v4 = *(v3 - 8);
  v101 = v3;
  v102 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v5;
  v7 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69D0, &qword_21BE35CB0);
  MEMORY[0x28223BE20](v8);
  v10 = &v91 - v9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69D8, &qword_21BE35CB8);
  MEMORY[0x28223BE20](v97);
  v100 = &v91 - v11;
  v103 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69E0, &qword_21BE35CC0);
  sub_21BB3B038(&qword_27CDB69E8, &qword_27CDB69E0, &qword_21BE35CC0, MEMORY[0x277CE14C0]);
  sub_21BE27D1C();
  swift_beginAccess();
  v96 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69F0, &qword_21BE35CC8);
  sub_21BE26C7C();
  swift_endAccess();
  v12 = a1;
  sub_21BBB515C(a1, v7);
  v13 = (*(v102 + 80) + 16) & ~*(v102 + 80);
  v102 = *(v102 + 80);
  v14 = swift_allocObject();
  sub_21BC0B23C(v7, v14 + v13, type metadata accessor for FamilyLandingPageMainView);
  v15 = &v10[*(v8 + 56)];
  *v15 = sub_21BC0994C;
  v15[1] = v14;
  v16 = (v12 + *(v101 + 88));
  v17 = *v16;
  v18 = v16[1];
  v105 = v17;
  v106 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69F8, &qword_21BE35CD0);
  sub_21BE283FC();
  v92 = v7;
  v93 = v12;
  sub_21BBB515C(v12, v7);
  v99 = v6;
  v19 = swift_allocObject();
  v94 = type metadata accessor for FamilyLandingPageMainView;
  sub_21BC0B23C(v7, v19 + v13, type metadata accessor for FamilyLandingPageMainView);
  sub_21BB3B038(&qword_27CDB6A00, &qword_27CDB69D0, &qword_21BE35CB0, MEMORY[0x277CDDB50]);
  v20 = v100;
  sub_21BE281BC();

  sub_21BB3A4CC(v10, &qword_27CDB69D0, &qword_21BE35CB0);
  v21 = v92;
  sub_21BBB515C(v12, v92);
  v22 = swift_allocObject();
  sub_21BC0B23C(v21, v22 + v13, type metadata accessor for FamilyLandingPageMainView);
  v23 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A08, &qword_21BE35CD8) + 36)];
  v24 = v20;
  *v23 = sub_21BC09A34;
  v23[1] = v22;
  v25 = type metadata accessor for NavigationManager(0);
  v26 = sub_21BC089F4(&qword_27CDB69B0, 255, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  v23[2] = 0;
  v23[3] = 0;
  v27 = sub_21BE26E9C();
  LOBYTE(v12) = v28;
  LOBYTE(v104) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A10, &qword_21BE35CE0);
  sub_21BE283EC();
  v29 = v105;
  v30 = v106;
  v31 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A18, &qword_21BE35CE8) + 36)];
  *v31 = sub_21BC05DF4;
  *(v31 + 1) = 0;
  *(v31 + 2) = v27;
  v31[24] = v12 & 1;
  v31[32] = v29;
  *(v31 + 5) = v30;
  v32 = v93;
  sub_21BBB515C(v93, v21);
  v33 = swift_allocObject();
  v34 = v94;
  sub_21BC0B23C(v21, v33 + v13, v94);
  v95 = v26;
  v96 = v25;
  v35 = v32;
  v36 = sub_21BE26E9C();
  v38 = v37;
  LOBYTE(v104) = 0;
  sub_21BE283EC();
  LOBYTE(v22) = v105;
  v39 = v106;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A20, &qword_21BE35CF0);
  v41 = v100;
  v42 = &v100[*(v40 + 36)];
  *v42 = sub_21BC09A4C;
  *(v42 + 1) = v33;
  *(v42 + 2) = v36;
  v42[24] = v38 & 1;
  v42[32] = v22;
  *(v42 + 5) = v39;
  sub_21BBB515C(v35, v21);
  v43 = swift_allocObject();
  v44 = v43 + v13;
  v45 = v41;
  sub_21BC0B23C(v21, v44, v34);
  v46 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A28, &unk_21BE35CF8) + 36)];
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  v47 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_280BD7030 != -1)
  {
    swift_once();
  }

  sub_21BE2935C();

  v48 = type metadata accessor for ActiveStateChange(0);
  v49 = &v46[*(v48 + 20)];
  *v49 = sub_21BC09ACC;
  v49[1] = v43;
  v50 = &v46[*(v48 + 24)];
  *v50 = 0xD00000000000002ALL;
  *(v50 + 1) = 0x800000021BE57AD0;
  v51 = v101;
  v52 = v35 + *(v101 + 40);
  v53 = *v52;
  v54 = *(v52 + 8);
  LOBYTE(v105) = v53;
  v106 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  v55 = v104;
  *(v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A30, &qword_21BE35D08) + 36)) = (v55 & 1) == 0;
  type metadata accessor for FamilyChecklistStore();
  sub_21BC089F4(&qword_27CDB63D0, 255, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
  v56 = sub_21BE26EAC();
  v57 = sub_21BE26BFC();
  v58 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A38, &qword_21BE35D10) + 36));
  *v58 = v57;
  v58[1] = v56;
  v59 = *(v35 + 32);
  type metadata accessor for LocationViewModel(0);
  sub_21BC089F4(&qword_27CDBDC20, 255, type metadata accessor for LocationViewModel, protocol conformance descriptor for LocationViewModel);
  v60 = sub_21BE26BFC();
  v61 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A40, &qword_21BE35D18) + 36));
  *v61 = v60;
  v61[1] = v59;
  v62 = *(v35 + *(v51 + 44) + 8);
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0, protocol conformance descriptor for FAProfilePictureStore);
  v63 = v59;
  v64 = sub_21BE26BFC();
  v65 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A48, &qword_21BE35D20) + 36));
  *v65 = v64;
  v65[1] = v62;
  KeyPath = swift_getKeyPath();
  v67 = *(v35 + *(v51 + 48));
  v68 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A50, &qword_21BE35D50) + 36));
  *v68 = KeyPath;
  v68[1] = v67;
  type metadata accessor for FAFamilyLandingPageViewModel();
  sub_21BC089F4(&qword_27CDB68F0, v69, type metadata accessor for FAFamilyLandingPageViewModel, protocol conformance descriptor for FAFamilyLandingPageViewModel);
  v70 = v62;
  v71 = v67;
  v72 = sub_21BE26EAC();
  v73 = sub_21BE26BFC();
  v74 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A58, &qword_21BE35D58) + 36));
  *v74 = v73;
  v74[1] = v72;
  v75 = sub_21BE26EAC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v76 = v105;
  if (!v105)
  {
    v76 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  sub_21BB3A2A4(0, &qword_280BD6980, 0x277D08248);
  sub_21BB3CC48(&qword_27CDB6A60, &qword_280BD6980, 0x277D08248, protocol conformance descriptor for FAFamilyCircle);
  v77 = sub_21BE26BFC();
  v78 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A68, &qword_21BE35D60) + 36));
  *v78 = v77;
  v78[1] = v76;
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v79 = qword_280BD79E0;
  type metadata accessor for FamilyCircleStore(0);
  sub_21BC089F4(&qword_27CDB5C40, 255, type metadata accessor for FamilyCircleStore, protocol conformance descriptor for AsyncStore<A>);
  v80 = sub_21BE26BFC();
  v81 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A70, &qword_21BE35D68) + 36));
  *v81 = v80;
  v81[1] = v79;
  v82 = swift_getKeyPath();
  v83 = qword_27CDB4FD8;

  if (v83 != -1)
  {
    swift_once();
  }

  v84 = qword_27CDD4360;
  v85 = (v45 + *(v97 + 36));
  *v85 = v82;
  v85[1] = v84;
  sub_21BC09AE4();

  v86 = v98;
  sub_21BE27E3C();
  sub_21BB3A4CC(v45, &qword_27CDB69D8, &qword_21BE35CB8);
  v87 = sub_21BE26E9C();
  LOBYTE(v84) = v88;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6B80, &unk_21BE35DE8);
  v90 = v86 + *(result + 36);
  *v90 = v87;
  *(v90 + 8) = v84 & 1;
  return result;
}

void sub_21BC0086C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BA0, &qword_21BE35EC0);
  MEMORY[0x28223BE20](v120);
  v119 = &v105 - v3;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BA8, &qword_21BE35EC8);
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v141 = &v105 - v4;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BB0, &qword_21BE35ED0);
  v5 = MEMORY[0x28223BE20](v122);
  v127 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v121 = &v105 - v8;
  MEMORY[0x28223BE20](v7);
  v125 = &v105 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BB8, &qword_21BE35ED8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v126 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v142 = (&v105 - v13);
  v111 = sub_21BE2721C();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BC0, &qword_21BE35EE0);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v105 - v15;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BC8, &qword_21BE35EE8);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v139 = &v105 - v16;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BD0, &qword_21BE35EF0);
  v116 = *(v140 - 8);
  v17 = MEMORY[0x28223BE20](v140);
  v113 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v112 = &v105 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BD8, &qword_21BE35EF8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v118 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v143 = &v105 - v23;
  v134 = sub_21BE26E1C();
  v132 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v130 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BE0, &qword_21BE35F00);
  v133 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v26 = &v105 - v25;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BE8, &qword_21BE35F08);
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v129 = &v105 - v27;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BF0, &qword_21BE35F10);
  v28 = MEMORY[0x28223BE20](v136);
  v117 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v135 = &v105 - v31;
  MEMORY[0x28223BE20](v30);
  v144 = &v105 - v32;
  v145 = a1;
  v33 = type metadata accessor for FamilyLandingPageMainView(0);
  v34 = *(a1 + v33[11] + 8);
  type metadata accessor for FAFamilyLandingPageViewModel();
  sub_21BC089F4(&qword_27CDB68F0, v35, type metadata accessor for FAFamilyLandingPageViewModel, protocol conformance descriptor for FAFamilyLandingPageViewModel);
  v36 = v34;
  sub_21BE26EAC();
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0, protocol conformance descriptor for FAProfilePictureStore);
  v37 = sub_21BE270CC();
  v39 = v38;
  v40 = sub_21BE270CC();
  v42 = v41;
  v43 = (a1 + v33[22]);
  v44 = *v43;
  v45 = v43[1];
  v146[0] = v44;
  v146[1] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69F8, &qword_21BE35CD0);
  sub_21BE2841C();
  v46 = v147;
  v47 = v148;
  v48 = v149;
  v147 = v37;
  v148 = v39;
  v149 = v40;
  v150 = v42;
  v151 = xmmword_21BE358B0;
  v152 = v46;
  v153 = v47;
  v154 = v48;
  sub_21BC01CC4(v146);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BF8, &qword_21BE35F18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C00, &unk_21BE35F20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C08, &unk_21BE3F270);
  sub_21BC0AC1C();
  v49 = v129;
  sub_21BB3B038(&qword_27CDB6C28, &qword_27CDB6C00, &unk_21BE35F20, byte_21BE39238);
  sub_21BC0AD50();
  sub_21BE285FC();
  v50 = v132;
  v51 = v130;
  v52 = v134;
  (*(v132 + 104))(v130, *MEMORY[0x277CDF350], v134);
  sub_21BC0ADCC();
  v53 = v131;
  sub_21BE27FAC();
  (*(v50 + 8))(v51, v52);
  v54 = v26;
  v55 = v33;
  (*(v133 + 8))(v54, v53);
  v56 = *(a1 + v33[12]);
  v57 = [v56 accountStore];
  v58 = [v57 aa_primaryAppleAccount];

  if (v58)
  {
    v59 = sub_21BE2943C();
  }

  else
  {
    v59 = 0;
  }

  KeyPath = swift_getKeyPath();
  v61 = swift_allocObject();
  *(v61 + 16) = v59 & 1;
  v62 = v135;
  (*(v137 + 32))(v135, v49, v138);
  v63 = (v62 + *(v136 + 36));
  *v63 = KeyPath;
  v63[1] = sub_21BC0AE98;
  v63[2] = v61;
  sub_21BBB7D84(v62, v144, &qword_27CDB6BF0, &qword_21BE35F10);
  v64 = sub_21BC06A8C(v55);
  v65 = [v64 pendingMembers];

  v66 = v141;
  v67 = v143;
  v68 = v140;
  if (v65)
  {
    sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
    v69 = sub_21BE28C3C();

    if (v69 >> 62)
    {
      v70 = sub_21BE2951C();
    }

    else
    {
      v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v70)
    {
      MEMORY[0x28223BE20](v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C40, &qword_21BE35F60);
      sub_21BC0AEA8();
      v72 = v56;
      v73 = v106;
      sub_21BE2860C();
      v74 = v109;
      sub_21BE2720C();
      sub_21BC0B6C4(&qword_27CDB6C70, &qword_27CDB6BC0, &qword_21BE35EE0, sub_21BC0AEA8);
      sub_21BC089F4(&qword_27CDBC430, 255, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
      v75 = v108;
      v76 = v111;
      sub_21BE27ECC();
      (*(v110 + 8))(v74, v76);
      v77 = v73;
      v56 = v72;
      (*(v107 + 8))(v77, v75);
      v78 = [v72 &selRef_appleCardAccountStateWithCompletion_];
      v79 = [v78 &selRef_appleCardUtilities + 4];

      if (v79)
      {
        v80 = sub_21BE2943C();
      }

      else
      {
        v80 = 0;
      }

      v68 = v140;
      v82 = swift_getKeyPath();
      v83 = swift_allocObject();
      *(v83 + 16) = v80 & 1;
      v84 = v113;
      (*(v114 + 32))(v113, v139, v115);
      v85 = (v84 + *(v68 + 36));
      *v85 = v82;
      v85[1] = sub_21BC0C5A0;
      v85[2] = v83;
      v86 = v112;
      sub_21BBB7D84(v84, v112, &qword_27CDB6BD0, &qword_21BE35EF0);
      v87 = v86;
      v67 = v143;
      sub_21BBB7D84(v87, v143, &qword_27CDB6BD0, &qword_21BE35EF0);
      v81 = 0;
      v66 = v141;
    }

    else
    {
      v81 = 1;
    }

    (*(v116 + 56))(v67, v81, 1, v68);
    v88 = sub_21BC022B4(a1, v142);
    MEMORY[0x28223BE20](v88);
    sub_21BC04D68(v119);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C78, &qword_21BE35F78);
    sub_21BB3B038(&qword_27CDB6C80, &qword_27CDB6C78, &qword_21BE35F78, MEMORY[0x277CE14C0]);
    sub_21BC0AFEC();
    sub_21BE2861C();
    v89 = [v56 accountStore];
    v90 = [v89 aa_primaryAppleAccount];

    if (v90)
    {
      v91 = sub_21BE2943C();
    }

    else
    {
      v91 = 0;
    }

    v92 = swift_getKeyPath();
    v93 = swift_allocObject();
    *(v93 + 16) = v91 & 1;
    v94 = v121;
    (*(v123 + 32))(v121, v66, v124);
    v95 = (v94 + *(v122 + 36));
    *v95 = v92;
    v95[1] = sub_21BC0C5A0;
    v95[2] = v93;
    v96 = v125;
    sub_21BBB7D84(v94, v125, &qword_27CDB6BB0, &qword_21BE35ED0);
    v97 = v117;
    sub_21BBA3854(v144, v117, &qword_27CDB6BF0, &qword_21BE35F10);
    v98 = v143;
    v99 = v118;
    sub_21BBA3854(v143, v118, &qword_27CDB6BD8, &qword_21BE35EF8);
    v100 = v142;
    v101 = v126;
    sub_21BBA3854(v142, v126, &qword_27CDB6BB8, &qword_21BE35ED8);
    v102 = v127;
    sub_21BBA3854(v96, v127, &qword_27CDB6BB0, &qword_21BE35ED0);
    v103 = v128;
    sub_21BBA3854(v97, v128, &qword_27CDB6BF0, &qword_21BE35F10);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C98, &qword_21BE35F80);
    sub_21BBA3854(v99, v103 + v104[12], &qword_27CDB6BD8, &qword_21BE35EF8);
    sub_21BBA3854(v101, v103 + v104[16], &qword_27CDB6BB8, &qword_21BE35ED8);
    sub_21BBA3854(v102, v103 + v104[20], &qword_27CDB6BB0, &qword_21BE35ED0);
    sub_21BB3A4CC(v96, &qword_27CDB6BB0, &qword_21BE35ED0);
    sub_21BB3A4CC(v100, &qword_27CDB6BB8, &qword_21BE35ED8);
    sub_21BB3A4CC(v98, &qword_27CDB6BD8, &qword_21BE35EF8);
    sub_21BB3A4CC(v144, &qword_27CDB6BF0, &qword_21BE35F10);
    sub_21BB3A4CC(v102, &qword_27CDB6BB0, &qword_21BE35ED0);
    sub_21BB3A4CC(v101, &qword_27CDB6BB8, &qword_21BE35ED8);
    sub_21BB3A4CC(v99, &qword_27CDB6BD8, &qword_21BE35EF8);
    sub_21BB3A4CC(v97, &qword_27CDB6BF0, &qword_21BE35F10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BC01B18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FamilyLandingPageMainView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_21BBFEC98();
  sub_21BBB515C(a1, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_21BC0B23C(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for FamilyLandingPageMainView);
  v11[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6E28, &qword_21BE361C8);
  v11[1] = &type metadata for FamilyMemberForDisplay;
  v11[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6E30, &qword_21BE361D0);
  v11[3] = sub_21BB3B038(&qword_27CDB6E38, &qword_27CDB6E28, &qword_21BE361C8, MEMORY[0x277D83980]);
  v11[4] = sub_21BC0BFE0();
  v11[5] = sub_21BC0C034();
  result = swift_getKeyPath();
  *a2 = v7;
  a2[1] = result;
  a2[2] = sub_21BC0BF58;
  a2[3] = v9;
  return result;
}

double sub_21BC01CC4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_21BE25FCC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FamilyLandingPageMainView(0);
  v7 = sub_21BC06A8C(v6);
  v8 = [v7 me];

  if (v8)
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D07F40], v2);
    v9 = MEMORY[0x21CF01150](v5);
    (*(v3 + 8))(v5, v2);
    if ((v9 & 1) != 0 && ([v8 isGuardian] & 1) == 0)
    {
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v22 = [objc_opt_self() bundleForClass_];
      v23 = sub_21BE2599C();
      v25 = v24;

      *&v38 = v23;
      *(&v38 + 1) = v25;
      sub_21BB41FA4();
      v26 = sub_21BE27DBC();
      v28 = v27;
      v33 = v26;
      v34 = v27;
      v30 = v29 & 1;
      v35 = v29 & 1;
      v36 = v31;
      v37 = 0;
      sub_21BBA4A38(v26, v27, v29 & 1);

      sub_21BBA4A38(v26, v28, v30);

      sub_21BE2784C();

      sub_21BBC7C7C(v26, v28, v30);

      sub_21BBC7C7C(v26, v28, v30);

      goto LABEL_6;
    }
  }

  type metadata accessor for ConfirmChildAgeViewModel();
  v10 = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_21BE2599C();
  v14 = v13;

  *&v38 = v12;
  *(&v38 + 1) = v14;
  sub_21BB41FA4();
  v33 = sub_21BE27DBC();
  v34 = v16;
  v35 = v15 & 1;
  v36 = v17;
  v37 = 1;
  sub_21BE2784C();
LABEL_6:
  result = *&v38;
  v19 = v39;
  v20 = v40;
  *a1 = v38;
  *(a1 + 16) = v19;
  *(a1 + 32) = v20;
  return result;
}

void sub_21BC02050(uint64_t a1)
{
  v2 = type metadata accessor for FamilyLandingPageMainView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = sub_21BC06A8C(v5);
  v7 = [v6 pendingMembers];

  if (v7)
  {
    sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
    v8 = sub_21BE28C3C();

    v11[1] = v8;
    swift_getKeyPath();
    sub_21BBB515C(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v10 = swift_allocObject();
    sub_21BC0B23C(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for FamilyLandingPageMainView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CC8, &qword_21BE36190);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C58, &qword_21BE35F68);
    sub_21BB3B038(&qword_27CDB5CD0, &qword_27CDB5CC8, &qword_21BE36190, MEMORY[0x277D83980]);
    sub_21BB3CC48(&unk_280BD8A30, &qword_280BD8A40, 0x277D08268, MEMORY[0x277D85378]);
    sub_21BC0AF2C();
    sub_21BE285BC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BC022B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v69 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6D00, &qword_21BE36008);
  MEMORY[0x28223BE20](v67);
  v68 = v51 - v3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6D08, &qword_21BE36010);
  MEMORY[0x28223BE20](v54);
  v5 = v51 - v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6D10, &qword_21BE36018);
  MEMORY[0x28223BE20](v57);
  v56 = v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6D18, &qword_21BE36020);
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6D20, &qword_21BE36028);
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v59 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = v51 - v12;
  v13 = sub_21BE25FCC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6D28, &qword_21BE36030);
  MEMORY[0x28223BE20](v64);
  v63 = v51 - v17;
  v55 = type metadata accessor for FamilyLandingPageMainView(0);
  type metadata accessor for FamilyChecklistStore();
  sub_21BC089F4(&qword_27CDB63D0, 255, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
  sub_21BE26EAC();

  type metadata accessor for FAFamilyLandingPageViewModel();
  sub_21BC089F4(&qword_27CDB68F0, v18, type metadata accessor for FAFamilyLandingPageViewModel, protocol conformance descriptor for FAFamilyLandingPageViewModel);
  v19 = sub_21BE26EAC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v20 = v70;
  if (!v70)
  {
    v20 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  (*(v14 + 104))(v16, *MEMORY[0x277D07F38], v13);
  v21 = MEMORY[0x21CF01150](v16);
  (*(v14 + 8))(v16, v13);
  if (v21)
  {
    v22 = sub_21BE2900C();

    if (v22)
    {
      v24 = 1;
      v25 = v66;
      v26 = v63;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v53 = v51;
  MEMORY[0x28223BE20](v23);
  v51[1] = &v51[-4];
  v52 = a1;
  v51[-2] = a1;
  v73 = &type metadata for FamilyTip;
  v74 = sub_21BC0B2AC();
  sub_21BE26AAC();
  v27 = &v5[*(v54 + 36)];
  *v27 = xmmword_21BE358C0;
  *(v27 + 1) = xmmword_21BE358C0;
  v27[32] = 0;
  v28 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v70 = sub_21BE2826C();
  sub_21BC0B300();
  v29 = v56;
  sub_21BE27E1C();

  sub_21BB3A4CC(v5, &qword_27CDB6D08, &qword_21BE36010);
  v30 = &v29[*(v57 + 36)];
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2A0, &qword_21BE33660) + 28);
  v32 = sub_21BE27D7C();
  (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
  *v30 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6D60, &qword_21BE36080);
  sub_21BC0B3E4();
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D78, &qword_21BE36088);
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D80, &qword_21BE36090);
  v35 = sub_21BC0B4EC();
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6DA0, &qword_21BE360A0);
  v37 = type metadata accessor for ChecklistStateVars(255);
  v38 = sub_21BC0B5D8();
  v39 = sub_21BC089F4(&qword_27CDBDB60, 255, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
  v70 = v36;
  v71 = v37;
  v72 = v38;
  v73 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v70 = v33;
  v71 = v34;
  v72 = v35;
  v73 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v41 = v60;
  sub_21BE285EC();
  v42 = [*(v52 + *(v55 + 48)) accountStore];
  v43 = [v42 aa_primaryAppleAccount];

  if (v43)
  {
    v44 = sub_21BE2943C();
  }

  else
  {
    v44 = 0;
  }

  v25 = v66;
  v26 = v63;
  KeyPath = swift_getKeyPath();
  v46 = swift_allocObject();
  *(v46 + 16) = v44 & 1;
  v47 = v59;
  (*(v61 + 32))(v59, v41, v62);
  v48 = (v47 + *(v25 + 36));
  *v48 = KeyPath;
  v48[1] = sub_21BC0C5A0;
  v48[2] = v46;
  v49 = v58;
  sub_21BBB7D84(v47, v58, &qword_27CDB6D20, &qword_21BE36028);
  sub_21BBB7D84(v49, v26, &qword_27CDB6D20, &qword_21BE36028);
  v24 = 0;
LABEL_11:
  (*(v65 + 56))(v26, v24, 1, v25);
  sub_21BBA3854(v26, v68, &qword_27CDB6D28, &qword_21BE36030);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6DC0, &qword_21BE360B0);
  sub_21BC0B6C4(&qword_27CDB6DC8, &qword_27CDB6DC0, &qword_21BE360B0, sub_21BC0B74C);
  sub_21BC0B8C4();
  sub_21BE2784C();
  return sub_21BB3A4CC(v26, &qword_27CDB6D28, &qword_21BE36030);
}

uint64_t sub_21BC02CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for FamilyLandingPageMainView(0);
  v31 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v5;
  MEMORY[0x28223BE20](v4);
  v36 = &v31 - v6;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6D78, &qword_21BE36088);
  MEMORY[0x28223BE20](v34);
  v38 = &v31 - v7;
  v33 = v3;
  type metadata accessor for FamilyChecklistStore();
  sub_21BC089F4(&qword_27CDB63D0, 255, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
  sub_21BE26EAC();
  sub_21BE07D30(0);
  v9 = v8;

  v10 = 0;
  if (v9)
  {
    if (qword_280BD7FD8 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v10 = v41;
  }

  sub_21BE26EAC();
  sub_21BE07D30(0);
  v12 = v11;

  if (v12)
  {
    if (qword_280BD7FD8 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v13 = v41 ^ 1;
  }

  else
  {
    v13 = 1;
  }

  v14 = v36;
  sub_21BBB515C(a1, v36);
  v15 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v16 = swift_allocObject();
  v31 = type metadata accessor for FamilyLandingPageMainView;
  sub_21BC0B23C(v14, v16 + v15, type metadata accessor for FamilyLandingPageMainView);
  v17 = v32;
  sub_21BBB515C(a1, v32);
  v18 = swift_allocObject();
  sub_21BC0B23C(v17, v18 + v15, type metadata accessor for FamilyLandingPageMainView);
  KeyPath = swift_getKeyPath();
  v49 = 0;
  LOBYTE(v41) = v10;
  v42 = sub_21BC0BC24;
  v43 = v18;
  v44 = sub_21BC0BB98;
  v45 = v16;
  v46 = v13 & 1;
  v47 = KeyPath;
  v48 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6D98, &qword_21BE36098);
  sub_21BB3B038(&qword_27CDB6D90, &qword_27CDB6D98, &qword_21BE36098, byte_21BE50210);
  sub_21BE2809C();

  v20 = (a1 + *(v33 + 56));
  v21 = *v20;
  v22 = *(v20 + 1);
  v39 = v21;
  v40 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v23 = v36;
  sub_21BBB515C(a1, v36);
  v24 = swift_allocObject();
  sub_21BC0B23C(v23, v24 + v15, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6D80, &qword_21BE36090);
  sub_21BC0B4EC();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6DA0, &qword_21BE360A0);
  v26 = type metadata accessor for ChecklistStateVars(255);
  v27 = sub_21BC0B5D8();
  v28 = sub_21BC089F4(&qword_27CDBDB60, 255, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v44 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v38;
  sub_21BE2812C();

  return sub_21BB3A4CC(v29, &qword_27CDB6D78, &qword_21BE36088);
}

uint64_t sub_21BC032EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16[-v3];
  v5 = type metadata accessor for FamilyLandingPageMainView(0);
  type metadata accessor for FamilyChecklistStore();
  sub_21BC089F4(&qword_27CDB63D0, 255, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
  sub_21BE26EAC();
  sub_21BE07D30(0);
  v7 = v6;

  if (v7)
  {
    if (qword_280BD7FD8 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    if (v17 == 1)
    {
      v9 = (a1 + *(v5 + 56));
      v10 = *v9;
      v11 = *(v9 + 1);
      v17 = v10;
      v18 = v11;
      v16[15] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
      sub_21BE2840C();
      v12 = sub_21BE28DAC();
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
      sub_21BE28D7C();
      v13 = sub_21BE28D6C();
      v14 = swift_allocObject();
      v15 = MEMORY[0x277D85700];
      *(v14 + 16) = v13;
      *(v14 + 24) = v15;
      sub_21BBA932C(0, 0, v4, &unk_21BE36160, v14);
    }
  }

  return result;
}

uint64_t sub_21BC03578()
{
  sub_21BE28D7C();
  v0[2] = sub_21BE28D6C();
  v2 = sub_21BE28D0C();
  v0[3] = v2;
  v0[4] = v1;

  return MEMORY[0x2822009F8](sub_21BC0360C, v2, v1);
}

uint64_t sub_21BC0360C()
{
  if (qword_27CDB4E48 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6E20, &unk_21BE36168);
  __swift_project_value_buffer(v1, qword_27CDD4198);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_21BC036F0;

  return MEMORY[0x282134AA8]();
}

uint64_t sub_21BC036F0()
{
  v1 = *v0;

  v2 = *(v1 + 32);
  v3 = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_21BC03810, v3, v2);
}

uint64_t sub_21BC03810()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BC03870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FamilyLandingPageMainView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21BBB515C(a1, &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 1]);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21BC0B23C(&v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 1], v8 + v7, type metadata accessor for FamilyLandingPageMainView);
  type metadata accessor for FamilyChecklistStore();
  sub_21BC089F4(&qword_27CDB63D0, 255, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
  v9 = sub_21BE2727C();
  v11 = v10;
  sub_21BB3A2A4(0, &qword_280BD6980, 0x277D08248);
  sub_21BB3CC48(&qword_27CDB6A60, &qword_280BD6980, 0x277D08248, protocol conformance descriptor for FAFamilyCircle);
  result = sub_21BE2727C();
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = sub_21BC0BD04;
  *(a2 + 24) = v8;
  *(a2 + 32) = 0;
  *(a2 + 33) = *v15;
  *(a2 + 36) = *&v15[3];
  *(a2 + 40) = result;
  *(a2 + 48) = v13;
  *(a2 + 56) = sub_21BC9EB04;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_21BC03A74(uint64_t a1)
{
  type metadata accessor for FamilyLandingPageMainView(0);
  type metadata accessor for FamilyNetworkMonitor(0);
  sub_21BC089F4(&qword_27CDBC320, 255, type metadata accessor for FamilyNetworkMonitor, protocol conformance descriptor for FamilyNetworkMonitor);

  return sub_21BE26EAC();
}

uint64_t sub_21BC03B1C()
{
  if (qword_27CDB4E70 != -1)
  {
    swift_once();
  }

  return sub_21BC25284();
}

uint64_t sub_21BC03B74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6DA0, &qword_21BE360A0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v25 - v3);
  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for FamilyChecklistView(0);
  v6 = (v4 + v5[5]);
  type metadata accessor for FamilyChecklistStore();
  sub_21BC089F4(&qword_27CDB63D0, 255, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
  *v6 = sub_21BE2727C();
  v6[1] = v7;
  v8 = (v4 + v5[6]);
  type metadata accessor for FamilyNetworkMonitor(0);
  sub_21BC089F4(&qword_27CDBC320, 255, type metadata accessor for FamilyNetworkMonitor, protocol conformance descriptor for FamilyNetworkMonitor);
  *v8 = sub_21BE2727C();
  v8[1] = v9;
  v10 = (v4 + v5[7]);
  v26 = 0;
  sub_21BE283EC();
  v11 = v28;
  *v10 = v27;
  v10[1] = v11;
  v12 = v4 + v5[8];
  LOBYTE(v26) = 0;
  sub_21BE283EC();
  v13 = v28;
  *v12 = v27;
  *(v12 + 1) = v13;
  v14 = v5[9];
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v15 = (v4 + v14);
  type metadata accessor for FamilyCircleStore(0);
  sub_21BC089F4(&qword_27CDB5C40, 255, type metadata accessor for FamilyCircleStore, protocol conformance descriptor for AsyncStore<A>);

  *v15 = sub_21BE270CC();
  v15[1] = v16;
  v17 = type metadata accessor for FamilyLandingPageMainView(0);
  v18 = sub_21BE26EAC();
  v19 = sub_21BE26BFC();
  v20 = (v4 + *(v2 + 36));
  *v20 = v19;
  v20[1] = v18;
  v21 = (a1 + *(v17 + 84));
  v23 = *v21;
  v22 = v21[1];
  v27 = v23;
  v28 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6E18, &qword_21BE36150);
  sub_21BE283FC();
  type metadata accessor for ChecklistStateVars(0);
  sub_21BC0B5D8();
  sub_21BC089F4(&qword_27CDBDB60, 255, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
  sub_21BE27EEC();

  return sub_21BB3A4CC(v4, &qword_27CDB6DA0, &qword_21BE360A0);
}

uint64_t sub_21BC03F14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = type metadata accessor for AppleCardFamilySettingsCell(0);
  v79 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6CA0, &qword_21BE35FC0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v76 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = v70 - v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6CA8, &qword_21BE35FC8);
  MEMORY[0x28223BE20](v78);
  v77 = v70 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6CB0, &qword_21BE35FD0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v82 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v81 = v70 - v14;
  v15 = *a1;
  v16 = a1[1];
  v17 = *(a1 + 16);
  v18 = type metadata accessor for FAFamilyLandingPageViewModel();
  v20 = sub_21BC089F4(&qword_27CDB68F0, v19, type metadata accessor for FAFamilyLandingPageViewModel, protocol conformance descriptor for FAFamilyLandingPageViewModel);
  v86 = v17;
  v88 = v20;
  v89 = v18;
  v21 = sub_21BE26EAC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v22 = v121;
  v80 = v3;
  if (!v121)
  {
    v22 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v74 = v5;
  v23 = [v22 me];

  v84 = a1;
  v85 = v15;
  v87 = v16;
  if (v23)
  {
    v24 = type metadata accessor for FamilyLandingPageMainView(0);
    v73 = *(a1 + v24[9] + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v25 = sub_21BCE6070(0xD000000000000011, 0x800000021BE55910, v121);

    v26 = sub_21BE26EAC();
    v27 = *&v26[OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_familyPageSubscriptionsURLs];

    v28 = a1 + v24[10];
    LODWORD(v72) = *v28;
    v71 = *(v28 + 1);
    LOBYTE(v101) = v72;
    v102 = v71;
    v70[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    sub_21BE2841C();
    v29 = v121;
    v30 = v122;
    v70[1] = v24[13];
    swift_unknownObjectWeakLoadStrong();
    v104 = v25;
    v105 = v27;
    v106 = v29;
    LOBYTE(v107) = v30;
    v108 = sub_21BC5D6B0;
    v109 = 0;
    v110[0] = 0;
    swift_unknownObjectWeakInit();
    v31 = v23;
    swift_unknownObjectRelease();
    v112 = v31;
    LOBYTE(v101) = 0;
    sub_21BE283EC();
    v113 = v121;
    v114 = *(&v121 + 1);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v32 = sub_21BCE6070(0xD000000000000010, 0x800000021BE55930, v121);

    v33 = sub_21BE26EAC();
    v34 = *&v33[OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_familyPageSubscriptionsURLs];

    LOBYTE(v101) = v72;
    v102 = v71;
    sub_21BE2841C();
    v35 = v121;
    LOBYTE(v25) = v122;
    swift_unknownObjectWeakLoadStrong();
    v92[0] = v32;
    v92[1] = v34;
    v93 = v35;
    v94 = v25;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v95 = v31;
    v96 = sub_21BDE9DE8;
    v97 = 0;
    v98 = 0;
    LOBYTE(v101) = 0;
    sub_21BE283EC();
    v99 = v121;
    v100 = *(&v121 + 1);
    sub_21BBA3854(&v104, v91, &qword_27CDB6CE8, &qword_21BE35FF0);
    sub_21BBA3854(v92, v90, &qword_27CDB6CF0, &qword_21BE35FF8);
    sub_21BBA3854(v91, &v101, &qword_27CDB6CE8, &qword_21BE35FF0);
    sub_21BBA3854(v90, &v103, &qword_27CDB6CF0, &qword_21BE35FF8);
    sub_21BB3A4CC(v92, &qword_27CDB6CF0, &qword_21BE35FF8);
    sub_21BB3A4CC(&v104, &qword_27CDB6CE8, &qword_21BE35FF0);
    sub_21BB3A4CC(v90, &qword_27CDB6CF0, &qword_21BE35FF8);
    sub_21BB3A4CC(v91, &qword_27CDB6CE8, &qword_21BE35FF0);
    sub_21BBB7D84(&v101, &v121, &qword_27CDB6CF8, &qword_21BE36000);
  }

  else
  {
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
  }

  v36 = sub_21BE26EAC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v37 = v101;
  if (!v101)
  {
    v37 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v38 = v84;
  v39 = type metadata accessor for FamilyLandingPageMainView(0);
  v40 = *(v38 + v39[11] + 8);
  v41 = v38[4];
  v42 = *(v38 + v39[9] + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v43 = v40;
  v73 = v41;
  sub_21BE26CAC();

  v72 = sub_21BCE6070(0xD000000000000011, 0x800000021BE57B00, v101);

  v44 = sub_21BE26EAC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v45 = v101;
  if (!v101)
  {
    v45 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v46 = [v45 showLocationSplashScreen];
  v47 = v84;
  swift_unknownObjectWeakLoadStrong();
  LODWORD(v89) = *(v42 + qword_280BDCB88);
  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  v104 = v37;
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0, protocol conformance descriptor for FAProfilePictureStore);
  v48 = v43;

  v105 = sub_21BE270CC();
  *&v106 = v49;
  type metadata accessor for LocationViewModel(0);
  sub_21BC089F4(&qword_27CDBDC20, 255, type metadata accessor for LocationViewModel, protocol conformance descriptor for LocationViewModel);
  *(&v106 + 1) = sub_21BE270CC();
  v107 = v50;
  v108 = v72;
  LOBYTE(v109) = v46;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  LOBYTE(v92[0]) = 0;
  sub_21BE283EC();
  v111[0] = v101;
  v112 = v102;
  LOBYTE(v92[0]) = 0;
  sub_21BE283EC();
  v113 = v101;
  v114 = v102;
  LOBYTE(v92[0]) = v89;
  sub_21BE283EC();
  v115 = v101;
  v116 = v102;
  LOBYTE(v92[0]) = 0;
  sub_21BE283EC();
  v117 = v101;
  v118 = v102;
  type metadata accessor for ServicesStore(0);
  sub_21BC089F4(&qword_27CDB5750, 255, type metadata accessor for ServicesStore, protocol conformance descriptor for AsyncStore<A>);
  v119 = sub_21BE270CC();
  v120 = v51;
  v52 = *(v47 + v39[19] + 8);
  v53 = v80;
  v54 = *(v80 + 24);
  KeyPath = swift_getKeyPath();
  v56 = v74;
  *(v74 + v54) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AppleCardFamilySettingsViewModel(0);
  sub_21BC089F4(&unk_27CDB5760, 255, type metadata accessor for AppleCardFamilySettingsViewModel, protocol conformance descriptor for AppleCardFamilySettingsViewModel);
  v57 = v52;
  *v56 = sub_21BE270CC();
  v56[1] = v58;
  v56[2] = sub_21BE270CC();
  v56[3] = v59;
  if (sub_21BBFE628())
  {
    v60 = v76;
    sub_21BC0B23C(v56, v76, type metadata accessor for AppleCardFamilySettingsCell);
    v61 = 0;
  }

  else
  {
    sub_21BC0B0A4(v56);
    v61 = 1;
    v60 = v76;
  }

  (*(v79 + 56))(v60, v61, 1, v53);
  v62 = v60;
  v63 = v75;
  sub_21BBB7D84(v62, v75, &qword_27CDB6CA0, &qword_21BE35FC0);
  v64 = v77;
  sub_21BBB7D84(v63, v77, &qword_27CDB6CA0, &qword_21BE35FC0);
  sub_21BC0B100(&qword_27CDB6CB8, &qword_27CDB6CA8, &qword_21BE35FC8, sub_21BC0B184);
  v65 = v81;
  sub_21BE2809C();
  sub_21BB3A4CC(v64, &qword_27CDB6CA8, &qword_21BE35FC8);
  sub_21BBA3854(&v121, &v101, &qword_27CDB6CD0, &qword_21BE35FD8);
  sub_21BBA3854(&v104, v92, &qword_27CDB6CD8, &qword_21BE35FE0);
  v66 = v82;
  sub_21BBA3854(v65, v82, &qword_27CDB6CB0, &qword_21BE35FD0);
  v67 = v83;
  sub_21BBA3854(&v101, v83, &qword_27CDB6CD0, &qword_21BE35FD8);
  sub_21BBA3854(v92, v67 + 192, &qword_27CDB6CD8, &qword_21BE35FE0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6CE0, &qword_21BE35FE8);
  sub_21BBA3854(v66, v67 + *(v68 + 64), &qword_27CDB6CB0, &qword_21BE35FD0);
  sub_21BB3A4CC(v65, &qword_27CDB6CB0, &qword_21BE35FD0);
  sub_21BB3A4CC(&v104, &qword_27CDB6CD8, &qword_21BE35FE0);
  sub_21BB3A4CC(&v121, &qword_27CDB6CD0, &qword_21BE35FD8);
  sub_21BB3A4CC(v66, &qword_27CDB6CB0, &qword_21BE35FD0);
  sub_21BB3A4CC(v92, &qword_27CDB6CD8, &qword_21BE35FE0);
  return sub_21BB3A4CC(&v101, &qword_27CDB6CD0, &qword_21BE35FD8);
}

uint64_t sub_21BC04D68@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FamilyPrivacyDisclosureView(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_21BE25FCC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x277D07F28], v6);
  v10 = MEMORY[0x21CF01150](v9);
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    *(v5 + *(v2 + 20)) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
    swift_storeEnumTagMultiPayload();
    *v5 = 0xD000000000000022;
    v5[1] = 0x800000021BE56360;
    sub_21BC0B23C(v5, a1, type metadata accessor for FamilyPrivacyDisclosureView);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  return (*(v3 + 56))(a1, v11, 1, v2);
}

uint64_t sub_21BC04F80(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FamilyLandingPageMainView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_21BE28DAC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_21BBB515C(a2, v6);
  sub_21BE28D7C();
  v11 = sub_21BE28D6C();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_21BC0B23C(v6, v13 + v12, type metadata accessor for FamilyLandingPageMainView);
  sub_21BBA932C(0, 0, v9, &unk_21BE35EB8, v13);
}

uint64_t sub_21BC0514C()
{
  v1 = sub_21BE26A4C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = sub_21BE28D7C();
  v0[6] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v0[7] = v3;
  v0[8] = v2;

  return MEMORY[0x2822009F8](sub_21BC05240, v3, v2);
}

uint64_t sub_21BC05240(uint64_t a1)
{
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "Landing page fielding update", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v5 = v1[4];
  v6 = v1[2];
  v7 = v1[3];

  (*(v7 + 8))(v5, v6);
  v1[9] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC05370, v9, v8);
}

uint64_t sub_21BC05370()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_21BC053D4, v1, v2);
}

uint64_t sub_21BC053D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BC05440(uint64_t a1)
{
  v2 = type metadata accessor for FamilyLandingPageMainView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17[-v7];
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6976614E77656976;
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xEF6F546465746167;
  *(inited + 48) = 0xD000000000000019;
  *(inited + 56) = 0x800000021BE35AE0;

  v10 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(&v18, v10);

  sub_21BC0573C();
  v11 = sub_21BE28DAC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_21BBB515C(a1, &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  sub_21BE28D7C();
  v12 = sub_21BE28D6C();
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_21BC0B23C(v5, v14 + v13, type metadata accessor for FamilyLandingPageMainView);
  sub_21BC54908(0, 0, v8, &unk_21BE35E48, v14);
}

uint64_t sub_21BC0573C()
{
  v1 = type metadata accessor for FamilyLandingPageMainView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EA8 != -1)
  {
    swift_once();
  }

  [v8 postNotificationName:qword_27CDB7E58 object:0];

  v9 = sub_21BE28DAC();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_21BBB515C(v0, &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21BE28D7C();
  v10 = sub_21BE28D6C();
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_21BC0B23C(v4, v12 + v11, type metadata accessor for FamilyLandingPageMainView);
  sub_21BBA932C(0, 0, v7, &unk_21BE35E60, v12);
}

uint64_t sub_21BC05978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_21BE26B2C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_21BE28D7C();
  v4[6] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_21BC05A6C, v7, v6);
}

uint64_t sub_21BC05A6C()
{
  if (qword_27CDB4FD8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_21BC05B30;

  return sub_21BDA69F4();
}

uint64_t sub_21BC05B30()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21BC05C50, v3, v2);
}

uint64_t sub_21BC05C50()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6B98, &qword_21BE35E50);
  sub_21BE26B4C();
  *(swift_allocObject() + 16) = xmmword_21BE32770;
  sub_21BE26B1C();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_21BE26B3C();
  (*(v2 + 8))(v1, v3);
  sub_21BE26B7C();

  type metadata accessor for FamilyLandingPageMainView(0);
  sub_21BC852D8();

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BC05DF4@<X0>(void *a1@<X8>)
{
  type metadata accessor for ServicesStore(0);
  sub_21BC089F4(&qword_27CDB5750, 255, type metadata accessor for ServicesStore, protocol conformance descriptor for AsyncStore<A>);
  v2 = sub_21BE2727C();
  v4 = v3;
  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  v5 = qword_280BDCB98;
  v6 = sub_21BE26BFC();
  *a1 = 0xD000000000000011;
  a1[1] = 0x800000021BE55910;
  a1[2] = v2;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
}

uint64_t sub_21BC05F04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[1];
  v27 = *a1;
  type metadata accessor for FAFamilyLandingPageViewModel();
  sub_21BC089F4(&qword_27CDB68F0, v6, type metadata accessor for FAFamilyLandingPageViewModel, protocol conformance descriptor for FAFamilyLandingPageViewModel);

  v7 = sub_21BE2727C();
  v25 = v8;
  v26 = v7;
  type metadata accessor for LocationViewModel(0);
  sub_21BC089F4(&qword_27CDBDC20, 255, type metadata accessor for LocationViewModel, protocol conformance descriptor for LocationViewModel);
  v9 = sub_21BE2727C();
  v23 = v10;
  v24 = v9;
  KeyPath = swift_getKeyPath();
  v21 = sub_21BE26EAC();
  v11 = sub_21BE26BFC();
  v12 = *(a2 + 32);
  v13 = sub_21BE26BFC();
  v14 = swift_getKeyPath();
  type metadata accessor for FamilyLandingPageMainView(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = swift_getKeyPath();
  v17 = qword_27CDB4FD8;
  v18 = v12;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_27CDD4360;
  *a3 = v27;
  *(a3 + 8) = v5;
  *(a3 + 16) = v26;
  *(a3 + 24) = v25;
  *(a3 + 32) = v24;
  *(a3 + 40) = v23;
  *(a3 + 48) = KeyPath;
  *(a3 + 56) = 0;
  *(a3 + 64) = v11;
  *(a3 + 72) = v21;
  *(a3 + 80) = v13;
  *(a3 + 88) = v18;
  *(a3 + 96) = v14;
  *(a3 + 104) = Strong;
  *(a3 + 112) = v16;
  *(a3 + 120) = v19;
}

uint64_t sub_21BC06120(uint64_t *a1)
{
  sub_21BC0A610();
  swift_unknownObjectRetain();
  return sub_21BE2756C();
}

uint64_t sub_21BC06180(uint64_t a1)
{
  v2 = type metadata accessor for FamilyLandingPageMainView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_21BE28DAC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_21BBB515C(a1, v5);
  sub_21BE28D7C();
  v10 = sub_21BE28D6C();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_21BC0B23C(v5, v12 + v11, type metadata accessor for FamilyLandingPageMainView);
  sub_21BBA932C(0, 0, v8, &unk_21BE35E00, v12);
}

uint64_t sub_21BC0634C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_21BE26A4C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_21BE28D7C();
  v4[6] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_21BC06440, v7, v6);
}

uint64_t sub_21BC06440()
{
  v1 = *(v0 + 16);
  v2 = v1 + *(type metadata accessor for FamilyLandingPageMainView(0) + 64);
  *(v0 + 72) = *v2;
  *(v0 + 80) = *(v2 + 8);
  *(v0 + 120) = *(v2 + 16);
  *(v0 + 88) = type metadata accessor for FamilyChecklistStore();
  *(v0 + 96) = sub_21BC089F4(&qword_27CDB63D0, 255, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
  sub_21BE26EAC();
  sub_21BE07D30(0);
  v4 = v3;

  if (v4)
  {

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    sub_21BE261BC();
    v7 = sub_21BE26A2C();
    v8 = sub_21BE28FCC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21BB35000, v7, v8, "Waiting to retry checklist", v9, 2u);
      MEMORY[0x21CF05C50](v9, -1, -1);
    }

    v11 = *(v0 + 32);
    v10 = *(v0 + 40);
    v12 = *(v0 + 24);

    (*(v11 + 8))(v10, v12);
    *(v0 + 104) = sub_21BE26EAC();
    v13 = swift_task_alloc();
    *(v0 + 112) = v13;
    *v13 = v0;
    v13[1] = sub_21BC066AC;

    return sub_21BE05F3C();
  }
}

uint64_t sub_21BC066AC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_21BC0C58C;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_21BC067F0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21BC067F0()
{
  sub_21BE26EAC();
  sub_21BE07D30(0);
  v2 = v1;

  if (v2)
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_21BE261BC();
    v5 = sub_21BE26A2C();
    v6 = sub_21BE28FCC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21BB35000, v5, v6, "Waiting to retry checklist", v7, 2u);
      MEMORY[0x21CF05C50](v7, -1, -1);
    }

    v9 = v0[4];
    v8 = v0[5];
    v10 = v0[3];

    (*(v9 + 8))(v8, v10);
    v0[13] = sub_21BE26EAC();
    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = sub_21BC066AC;

    return sub_21BE05F3C();
  }
}

void *sub_21BC069DC@<X0>(void *a1@<X8>)
{
  sub_21BC0A470();
  result = sub_21BE2755C();
  *a1 = v3;
  return result;
}

uint64_t sub_21BC06A2C(id *a1)
{
  v1 = *a1;
  sub_21BC0A470();
  v2 = v1;
  return sub_21BE2756C();
}

id sub_21BC06A8C(uint64_t a1)
{
  type metadata accessor for FAFamilyLandingPageViewModel();
  sub_21BC089F4(&qword_27CDB68F0, v1, type metadata accessor for FAFamilyLandingPageViewModel, protocol conformance descriptor for FAFamilyLandingPageViewModel);
  v2 = sub_21BE26EAC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v3 = v5;
  if (!v5)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  return v3;
}

uint64_t sub_21BC06B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4[6] = swift_task_alloc();
  v4[7] = sub_21BE28D7C();
  v4[8] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x2822009F8](sub_21BC06C68, v6, v5);
}

uint64_t sub_21BC06C68()
{
  v1 = v0[5];
  v0[11] = *(v1 + *(type metadata accessor for FamilyLandingPageMainView(0) + 36) + 8);
  v0[12] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v0[13] = v3;
  v0[14] = v2;

  return MEMORY[0x2822009F8](sub_21BC06D10, v3, v2);
}

void sub_21BC06D10()
{
  v1 = *(v0[11] + 40);
  v0[15] = v1;
  if (v1)
  {
    v2 = v0[6];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v6 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_21BC06E24;
    v5 = v0[6];

    v6(v0 + 2, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BC06E24()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 48);
  if (v0)
  {

    sub_21BB3A4CC(v4, &qword_27CDB5790, &qword_21BE32800);
    v5 = *(v3 + 104);
    v6 = *(v3 + 112);
    v7 = sub_21BC070B4;
  }

  else
  {
    sub_21BB3A4CC(v4, &qword_27CDB5790, &qword_21BE32800);

    v5 = *(v3 + 104);
    v6 = *(v3 + 112);
    v7 = sub_21BC06FB4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BC06FB4()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_21BC07020, v1, v2);
}

uint64_t sub_21BC07020()
{
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_21BC07118;

  return sub_21BCD2AA8();
}

uint64_t sub_21BC070B4()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_21BC0C594, v1, v2);
}

uint64_t sub_21BC07118()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_21BC07238, v3, v2);
}

uint64_t sub_21BC07238()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v1 = sub_21BCE6070(0x535F44554F4C4349, 0xEE00454741524F54, v0[3]);

  if (v1)
  {

    type metadata accessor for FAFamilyLandingPageViewModel();
    sub_21BC089F4(&qword_27CDB68F0, v2, type metadata accessor for FAFamilyLandingPageViewModel, protocol conformance descriptor for FAFamilyLandingPageViewModel);
    v3 = sub_21BE26EAC();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v4 = v0[4];
    if (v4)
    {

      v3 = v4;
    }

    else
    {
    }

    v0[18] = sub_21BE28D6C();
    v8 = sub_21BE28D0C();

    return MEMORY[0x2822009F8](sub_21BC07480, v8, v7);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_21BC07480()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_21BC074E4, v1, v2);
}

uint64_t sub_21BC074E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BC0754C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v4;
  return result;
}

uint64_t sub_21BC075CC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_21BE26CBC();
}

uint64_t sub_21BC07668(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BBFE078(a1, v1);
}

uint64_t sub_21BC07724(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_21BDFE08C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_21BC077A0(v6);
  return sub_21BE296CC();
}

void sub_21BC077A0(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21BE2991C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_21BE28C7C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_21BC079F4(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21BC07898(0, v2, 1, a1);
  }
}

void sub_21BC07898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v25 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
    v6 = &selRef_fa_URLByAddingAirdropInviteParams;
LABEL_5:
    v23 = v4;
    v24 = a3;
    v7 = *(v25 + 8 * a3);
    v22 = v5;
    while (1)
    {
      v8 = *v4;
      v9 = v7;
      v10 = v8;
      v11 = [v9 memberSortOrder];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 v6[236]];
      }

      else
      {
        v13 = 0;
      }

      v14 = [v10 memberSortOrder];
      if (v14)
      {
        v15 = v14;
        v16 = v6;
        v17 = [v14 v6[236]];

        v18 = v13 < v17;
        v6 = v16;
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      else
      {

        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v25)
      {
        break;
      }

      v19 = *v4;
      v7 = *(v4 + 8);
      *v4 = v7;
      *(v4 + 8) = v19;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
LABEL_4:
        a3 = v24 + 1;
        v4 = v23 + 8;
        v5 = v22 - 1;
        if (v24 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_21BC079F4(id *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_107:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v94 = v4;
LABEL_110:
      v4 = *(v94 + 2);
      if (v4 >= 2)
      {
        do
        {
          v95 = *v7;
          if (!*v7)
          {
            goto LABEL_144;
          }

          v7 = (v4 - 1);
          v96 = *&v94[16 * v4];
          v97 = v94;
          v98 = *&v94[16 * v4 + 24];
          sub_21BC08190((v95 + 8 * v96), (v95 + 8 * *&v94[16 * v4 + 16]), (v95 + 8 * v98), v9);
          if (v6)
          {
            break;
          }

          if (v98 < v96)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = sub_21BDFD0AC(v97);
          }

          if (v4 - 2 >= *(v97 + 2))
          {
            goto LABEL_134;
          }

          v99 = &v97[16 * v4];
          *v99 = v96;
          *(v99 + 1) = v98;
          sub_21BDFD020(v4 - 1);
          v94 = v97;
          v4 = *(v97 + 2);
          v7 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v94 = sub_21BDFD0AC(v4);
    goto LABEL_110;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
LABEL_4:
  v11 = v9;
  v12 = v9 + 1;
  if (v9 + 1 < v8)
  {
    v103 = v10;
    v105 = v6;
    v4 = *v7;
    v13 = *(*v7 + 8 * v9);
    v14 = *(*v7 + 8 * v12);
    v15 = v13;
    v16 = [v14 memberSortOrder];
    if (v16)
    {
      v9 = v16;
      v112 = [v16 integerValue];
    }

    else
    {
      v112 = 0;
    }

    v17 = [v15 memberSortOrder];
    if (v17)
    {
      v9 = v17;
      v110 = [v17 integerValue];

      v14 = v15;
      v15 = v9;
    }

    else
    {
      v110 = 0;
    }

    v12 = v11 + 2;
    if (v11 + 2 < v8)
    {
      v100 = v11;
      v4 += 8 * v11 + 16;
      do
      {
        v18 = *(v4 - 8);
        v19 = *v4;
        v20 = v18;
        v21 = [v19 memberSortOrder];
        if (v21)
        {
          v9 = v21;
          v22 = [v21 integerValue];
        }

        else
        {
          v22 = 0;
        }

        v23 = [v20 memberSortOrder];
        if (v23)
        {
          v9 = v23;
          v24 = [v23 integerValue];

          if (v112 < v110 == v22 >= v24)
          {
LABEL_20:
            v7 = a3;
            goto LABEL_22;
          }
        }

        else
        {

          if (v112 < v110 == v22 >= 0)
          {
            goto LABEL_20;
          }
        }

        ++v12;
        v4 += 8;
        v7 = a3;
      }

      while (v8 != v12);
      v12 = v8;
LABEL_22:
      v11 = v100;
    }

    v10 = v103;
    v6 = v105;
    if (v112 < v110)
    {
      if (v12 < v11)
      {
        goto LABEL_137;
      }

      if (v11 < v12)
      {
        v25 = 8 * v12 - 8;
        v26 = 8 * v11;
        v27 = v12;
        v28 = v11;
        do
        {
          if (v28 != --v27)
          {
            v30 = *v7;
            if (!*v7)
            {
              goto LABEL_143;
            }

            v29 = *(v30 + v26);
            *(v30 + v26) = *(v30 + v25);
            *(v30 + v25) = v29;
          }

          ++v28;
          v25 -= 8;
          v26 += 8;
        }

        while (v28 < v27);
      }
    }
  }

  v31 = v7[1];
  if (v12 >= v31)
  {
    goto LABEL_55;
  }

  if (__OFSUB__(v12, v11))
  {
    goto LABEL_136;
  }

  if (v12 - v11 >= a4)
  {
    goto LABEL_55;
  }

  v32 = v11 + a4;
  if (__OFADD__(v11, a4))
  {
    goto LABEL_138;
  }

  if (v32 >= v31)
  {
    v32 = v7[1];
  }

  if (v32 < v11)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v12 == v32)
  {
    goto LABEL_55;
  }

  v104 = v10;
  v106 = v6;
  v33 = *v7;
  v34 = *v7 + 8 * v12 - 8;
  v101 = v11;
  v35 = v11 - v12;
  v108 = v32;
LABEL_42:
  v111 = v34;
  v113 = v12;
  v36 = *(v33 + 8 * v12);
  v4 = v35;
  while (1)
  {
    v37 = *v34;
    v38 = v36;
    v39 = v37;
    v40 = [v38 memberSortOrder];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 integerValue];
    }

    else
    {
      v42 = 0;
    }

    v43 = [v39 memberSortOrder];
    if (v43)
    {
      v44 = v43;
      v9 = [v43 integerValue];

      if (v42 >= v9)
      {
        goto LABEL_41;
      }
    }

    else
    {

      if ((v42 & 0x8000000000000000) == 0)
      {
        goto LABEL_41;
      }
    }

    if (!v33)
    {
      break;
    }

    v45 = *v34;
    v36 = *(v34 + 8);
    *v34 = v36;
    *(v34 + 8) = v45;
    v34 -= 8;
    if (__CFADD__(v4++, 1))
    {
LABEL_41:
      v12 = v113 + 1;
      v34 = v111 + 8;
      --v35;
      if (v113 + 1 != v108)
      {
        goto LABEL_42;
      }

      v12 = v108;
      v10 = v104;
      v6 = v106;
      v7 = a3;
      v11 = v101;
LABEL_55:
      if (v12 < v11)
      {
        goto LABEL_135;
      }

      v47 = v10;
      v9 = v12;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v10 = v47;
      }

      else
      {
        v10 = sub_21BBBCBFC(0, *(v47 + 2) + 1, 1, v47);
      }

      v4 = *(v10 + 2);
      v48 = *(v10 + 3);
      v49 = v4 + 1;
      if (v4 >= v48 >> 1)
      {
        v10 = sub_21BBBCBFC((v48 > 1), v4 + 1, 1, v10);
      }

      *(v10 + 2) = v49;
      v50 = &v10[16 * v4];
      *(v50 + 4) = v11;
      *(v50 + 5) = v12;
      v51 = *a1;
      if (!*a1)
      {
        goto LABEL_145;
      }

      if (v4)
      {
        while (1)
        {
          v52 = v49 - 1;
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v53 = *(v10 + 4);
            v54 = *(v10 + 5);
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_75:
            if (v56)
            {
              goto LABEL_124;
            }

            v69 = &v10[16 * v49];
            v71 = *v69;
            v70 = *(v69 + 1);
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_127;
            }

            v75 = &v10[16 * v52 + 32];
            v77 = *v75;
            v76 = *(v75 + 1);
            v63 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v63)
            {
              goto LABEL_130;
            }

            if (__OFADD__(v73, v78))
            {
              goto LABEL_131;
            }

            if (v73 + v78 >= v55)
            {
              if (v55 < v78)
              {
                v52 = v49 - 2;
              }

              goto LABEL_96;
            }

            goto LABEL_89;
          }

          v79 = &v10[16 * v49];
          v81 = *v79;
          v80 = *(v79 + 1);
          v63 = __OFSUB__(v80, v81);
          v73 = v80 - v81;
          v74 = v63;
LABEL_89:
          if (v74)
          {
            goto LABEL_126;
          }

          v82 = &v10[16 * v52];
          v84 = *(v82 + 4);
          v83 = *(v82 + 5);
          v63 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v63)
          {
            goto LABEL_129;
          }

          if (v85 < v73)
          {
            goto LABEL_3;
          }

LABEL_96:
          v4 = v52 - 1;
          if (v52 - 1 >= v49)
          {
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
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
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
            goto LABEL_139;
          }

          if (!*v7)
          {
            goto LABEL_142;
          }

          v90 = v10;
          v91 = *&v10[16 * v4 + 32];
          v92 = *&v10[16 * v52 + 40];
          sub_21BC08190((*v7 + 8 * v91), (*v7 + 8 * *&v10[16 * v52 + 32]), (*v7 + 8 * v92), v51);
          if (v6)
          {
            goto LABEL_118;
          }

          if (v92 < v91)
          {
            goto LABEL_120;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v90 = sub_21BDFD0AC(v90);
          }

          if (v4 >= *(v90 + 2))
          {
            goto LABEL_121;
          }

          v93 = &v90[16 * v4];
          *(v93 + 4) = v91;
          *(v93 + 5) = v92;
          sub_21BDFD020(v52);
          v10 = v90;
          v49 = *(v90 + 2);
          if (v49 <= 1)
          {
            goto LABEL_3;
          }
        }

        v57 = &v10[16 * v49 + 32];
        v58 = *(v57 - 64);
        v59 = *(v57 - 56);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_122;
        }

        v62 = *(v57 - 48);
        v61 = *(v57 - 40);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_123;
        }

        v64 = &v10[16 * v49];
        v66 = *v64;
        v65 = *(v64 + 1);
        v63 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v63)
        {
          goto LABEL_125;
        }

        v63 = __OFADD__(v55, v67);
        v68 = v55 + v67;
        if (v63)
        {
          goto LABEL_128;
        }

        if (v68 >= v60)
        {
          v86 = &v10[16 * v52 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v63 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v63)
          {
            goto LABEL_132;
          }

          if (v55 < v89)
          {
            v52 = v49 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_75;
      }

LABEL_3:
      v8 = v7[1];
      if (v9 >= v8)
      {
        goto LABEL_107;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_21BC08190(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a4;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
      v5 = __dst;
    }

    v15 = &v13[v9];
    if (v7 < 8 || v5 >= v4)
    {
LABEL_24:
      v28 = v6;
      goto LABEL_50;
    }

    v47 = v15;
    while (1)
    {
      v16 = v5;
      v17 = *v13;
      v18 = *v5;
      v19 = v17;
      v20 = [v18 memberSortOrder];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 integerValue];
      }

      else
      {
        v22 = 0;
      }

      v23 = [v19 memberSortOrder];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 integerValue];

        if (v22 >= v25)
        {
          goto LABEL_20;
        }
      }

      else
      {

        if ((v22 & 0x8000000000000000) == 0)
        {
LABEL_20:
          v26 = v13;
          v27 = v6 == v13++;
          v5 = v16;
          if (v27)
          {
            goto LABEL_22;
          }

LABEL_21:
          *v6 = *v26;
          goto LABEL_22;
        }
      }

      v26 = v16;
      v5 = v16 + 1;
      if (v6 != v16)
      {
        goto LABEL_21;
      }

LABEL_22:
      ++v6;
      v15 = v47;
      if (v13 >= v47 || v5 >= v4)
      {
        goto LABEL_24;
      }
    }
  }

  if (a4 != __dst || &__dst[v12] <= a4)
  {
    v29 = a4;
    memmove(a4, __dst, 8 * v12);
    v5 = __dst;
    a4 = v29;
  }

  v48 = a4;
  v15 = &a4[v12];
  if (v10 < 8)
  {
    v13 = a4;
    goto LABEL_49;
  }

  v13 = a4;
  if (v5 <= v6)
  {
LABEL_49:
    v28 = v5;
    goto LABEL_50;
  }

  v31 = &off_2782F5000;
  do
  {
    v45 = v5;
    v32 = v5 - 1;
    --v4;
    v33 = v15;
    v46 = v32;
    while (1)
    {
      v34 = *--v33;
      v35 = *v32;
      v36 = v34;
      v37 = v35;
      v38 = [v36 v31[257]];
      if (v38)
      {
        v39 = v38;
        v40 = [v38 integerValue];
      }

      else
      {
        v40 = 0;
      }

      v41 = [v37 v31[257]];
      if (!v41)
      {
        break;
      }

      v42 = v41;
      v43 = [v41 integerValue];

      if (v40 < v43)
      {
        goto LABEL_42;
      }

LABEL_40:
      v32 = v46;
      if (v4 + 1 != v15)
      {
        *v4 = *v33;
      }

      --v4;
      v15 = v33;
      v31 = &off_2782F5000;
      if (v33 <= v48)
      {
        v15 = v33;
        v13 = v48;
        v28 = v45;
        goto LABEL_50;
      }
    }

    if ((v40 & 0x8000000000000000) == 0)
    {
      goto LABEL_40;
    }

LABEL_42:
    v28 = v46;
    if (v4 + 1 != v45)
    {
      *v4 = *v46;
    }

    v13 = v48;
    v31 = &off_2782F5000;
    if (v15 <= v48)
    {
      break;
    }

    v5 = v46;
  }

  while (v46 > v6);
LABEL_50:
  if (v28 != v13 || v28 >= (v13 + ((v15 - v13 + (v15 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v28, v13, 8 * (v15 - v13));
  }

  return 1;
}

uint64_t sub_21BC0852C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = v6;
  v8 = v6;

  sub_21BE2633C();
}

uint64_t sub_21BC085C8()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_21BC086F4;
  }

  else
  {
    v2 = sub_21BC086DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

unint64_t sub_21BC0870C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_21BE2951C();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6E58, &qword_21BE361D8);
      result = sub_21BE295CC();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_21BE2951C();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x21CF047C0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_21BE26BDC();
    sub_21BC089F4(&qword_27CDB6E60, 255, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = sub_21BE2894C();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_21BC089F4(&qword_27CDB6E68, 255, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
      do
      {
        result = sub_21BE2899C();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for FamilyLandingPageMainView(uint64_t a1)
{
  result = qword_27CDB68D8;
  if (!qword_27CDB68D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BC089F4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BC08A3C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FamilyLandingPageMainView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BBFFBC8(v4, a1);
}

void sub_21BC08B78(uint64_t a1)
{
  sub_21BC08E1C(319);
  if (v1 <= 0x3F)
  {
    sub_21BC08EAC(319);
    if (v2 <= 0x3F)
    {
      sub_21BC09314(319, &qword_280BD6A00, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_21BC08F44(319);
        if (v4 <= 0x3F)
        {
          sub_21BC092B0(319, &qword_27CDB6908, MEMORY[0x277D40290], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_21BC08FA8(319);
            if (v6 <= 0x3F)
            {
              sub_21BBDAE70(319);
              if (v7 <= 0x3F)
              {
                sub_21BB3A2A4(319, &qword_27CDB6918, 0x277CED1D0);
                if (v8 <= 0x3F)
                {
                  sub_21BC09040(319);
                  if (v9 <= 0x3F)
                  {
                    sub_21BC090E8(319);
                    if (v10 <= 0x3F)
                    {
                      sub_21BC09180(319);
                      if (v11 <= 0x3F)
                      {
                        sub_21BBDADDC(319);
                        if (v12 <= 0x3F)
                        {
                          sub_21BC09218(319);
                          if (v13 <= 0x3F)
                          {
                            sub_21BC092B0(319, &qword_27CDB6950, type metadata accessor for ChecklistStateVars, MEMORY[0x277CE10B8]);
                            if (v14 <= 0x3F)
                            {
                              sub_21BC09314(319, &qword_27CDB6958, MEMORY[0x277D839F8]);
                              if (v15 <= 0x3F)
                              {
                                type metadata accessor for FamilySignpost(319);
                                if (v16 <= 0x3F)
                                {
                                  type metadata accessor for FAFamilySettingsViewControllerV2();
                                  if (v17 <= 0x3F)
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
            }
          }
        }
      }
    }
  }
}

void sub_21BC08E1C(uint64_t a1)
{
  if (!qword_27CDB68E8)
  {
    type metadata accessor for FAFamilyLandingPageViewModel();
    sub_21BC089F4(&qword_27CDB68F0, v1, type metadata accessor for FAFamilyLandingPageViewModel, protocol conformance descriptor for FAFamilyLandingPageViewModel);
    v2 = sub_21BE26EBC();
    if (!v3)
    {
      atomic_store(v2, &qword_27CDB68E8);
    }
  }
}

void sub_21BC08EAC(uint64_t a1)
{
  if (!qword_27CDB68F8)
  {
    type metadata accessor for LocationViewModel(255);
    sub_21BC089F4(&qword_27CDBDC20, 255, type metadata accessor for LocationViewModel, protocol conformance descriptor for LocationViewModel);
    v1 = sub_21BE270DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB68F8);
    }
  }
}

void sub_21BC08F44(uint64_t a1)
{
  if (!qword_27CDB6900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB68B0, &qword_21BE35938);
    v1 = sub_21BE26E8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB6900);
    }
  }
}

void sub_21BC08FA8(uint64_t a1)
{
  if (!qword_27CDB6910)
  {
    type metadata accessor for ServicesStore(255);
    sub_21BC089F4(&qword_27CDB5750, 255, type metadata accessor for ServicesStore, protocol conformance descriptor for AsyncStore<A>);
    v1 = sub_21BE270DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB6910);
    }
  }
}

void sub_21BC09040(uint64_t a1)
{
  if (!qword_27CDB6920)
  {
    sub_21BB3A2A4(255, &qword_27CDB6928, off_2782F0B80);
    sub_21BB3CC48(&qword_27CDB6930, &qword_27CDB6928, off_2782F0B80, protocol conformance descriptor for FAChecklistStore);
    v1 = sub_21BE26EBC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB6920);
    }
  }
}

void sub_21BC090E8(uint64_t a1)
{
  if (!qword_27CDB6938)
  {
    type metadata accessor for FamilyChecklistStore();
    sub_21BC089F4(&qword_27CDB63D0, 255, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
    v1 = sub_21BE26EBC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB6938);
    }
  }
}

void sub_21BC09180(uint64_t a1)
{
  if (!qword_27CDB6940)
  {
    type metadata accessor for FamilyNetworkMonitor(255);
    sub_21BC089F4(&qword_27CDBC320, 255, type metadata accessor for FamilyNetworkMonitor, protocol conformance descriptor for FamilyNetworkMonitor);
    v1 = sub_21BE26EBC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB6940);
    }
  }
}

void sub_21BC09218(uint64_t a1)
{
  if (!qword_27CDB6948)
  {
    type metadata accessor for AppleCardFamilyCache();
    sub_21BC089F4(&qword_280BD8840, 255, type metadata accessor for AppleCardFamilyCache, protocol conformance descriptor for SimpleFamilyServerCache);
    v1 = sub_21BE26EBC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB6948);
    }
  }
}

void sub_21BC092B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21BC09314(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21BE2842C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21BC0936C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}