uint64_t sub_1BD2FCB58(void *a1, uint64_t a2)
{
  v3 = sub_1BE051F54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v11 = sub_1BE052D54();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1BD2FE040;
  v26 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_132_0;
  v14 = _Block_copy(aBlock);
  v15 = v26;
  v16 = a1;
  v15, v17, v18, v19, v20, v21, v22, v23;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v10, v6, v14);
  _Block_release(v14);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

double sub_1BD2FCE14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_updateUserInfoRequest);
    v4, v6, v7, v8, v9, v10, v11, v12;
    [v5 setDeviceMetadata_];
  }

  swift_beginAccess();
  v13 = swift_weakLoadStrong();
  if (v13)
  {
    v13[OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_didFetchDeviceMetadata] = 1;
    v13, v14, v15, v16, v17, v18, v19, v20;
  }

  swift_beginAccess();
  v21 = swift_weakLoadStrong();
  if (v21)
  {
    v23 = v21;
    sub_1BD2FBA68();
    v23, v24, v25, v26, v27, v28, v29, v30;
  }

  return result;
}

void sub_1BD2FCF04()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_assessmentManager;
  v7 = *&v1[OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_assessmentManager];
  if (v7)
  {
    goto LABEL_5;
  }

  sub_1BE04D1E4();
  v8 = sub_1BE04D204();
  v9 = sub_1BE052C54();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1BD026000, v8, v9, "ODI assessment was not prewarmed", v10, 2u);
    MEMORY[0x1BFB45F20](v10, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v11 = [objc_allocWithZone(MEMORY[0x1E69B9178]) initWithType_];
  v12 = *&v1[v6];
  *&v1[v6] = v11;

  v7 = *&v1[v6];
  if (v7)
  {
LABEL_5:
    aBlock[4] = sub_1BD2FD5E0;
    v24 = v1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD858AA4;
    aBlock[3] = &block_descriptor_49;
    v13 = _Block_copy(aBlock);
    v14 = v24;
    v15 = v7;
    sub_1BE048964();
    v14, v16, v17, v18, v19, v20, v21, v22;
    [v15 waitForAssessmentWithCompletion_];
    _Block_release(v13);
  }
}

uint64_t sub_1BD2FD138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BE051F54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE051FA4();
  v9 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_1BD2FD918;
  v28 = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_57_1;
  v15 = _Block_copy(aBlock);
  v16 = v28;
  sub_1BE048C84();
  v16, v17, v18, v19, v20, v21, v22, v23;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v8, v15);
  _Block_release(v15);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v26);
}

double sub_1BD2FD400(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_updateUserInfoRequest);
    v6 = Strong;
    v7 = v5;
    v6, v8, v9, v10, v11, v12, v13, v14;
    if (v5)
    {
      if (a3)
      {
        a3 = sub_1BE052404();
      }

      [v7 setOdiAssessment_];
    }
  }

  swift_beginAccess();
  v15 = swift_weakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = *(v15 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_assessmentManager);
    v16, v18, v19, v20, v21, v22, v23, v24;
    [v17 provideSessionFeedbackIngested];
  }

  swift_beginAccess();
  v25 = swift_weakLoadStrong();
  if (v25)
  {
    v33 = *&v25[OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_assessmentManager];
    *&v25[OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_assessmentManager] = 0;
    v25, v26, v27, v28, v29, v30, v31, v32;
  }

  swift_beginAccess();
  v34 = swift_weakLoadStrong();
  if (v34)
  {
    v34[OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_didFetchODIAssessment] = 1;
    v34, v35, v36, v37, v38, v39, v40, v41;
  }

  swift_beginAccess();
  v42 = swift_weakLoadStrong();
  if (v42)
  {
    v44 = v42;
    sub_1BD2FBA68();
    v44, v45, v46, v47, v48, v49, v50, v51;
  }

  return result;
}

uint64_t sub_1BD2FD5A0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AccountUserInfoModel(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

uint64_t sub_1BD2FD5E8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
  return sub_1BE048C84();
}

uint64_t sub_1BD2FD5F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1BD2FD980(v7, v8) & 1;
}

double sub_1BD2FD640@<D0>(_OWORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v20);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  result = *&v20;
  *a2 = v20;
  return result;
}

uint64_t sub_1BD2FD6C0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BD2FDFF4(v2, v3);
  return sub_1BE04D8C4();
}

uint64_t sub_1BD2FD810(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  sub_1BD23C2BC(a1, &v14 - v11);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD23C2BC(v12, v9);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD23C32C(v12);
}

uint64_t sub_1BD2FD980(uint64_t a1, uint64_t a2)
{
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
  if ((sub_1BE053074() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || (*(a1 + 8) != *(a2 + 8) || v4 != v5) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((MEMORY[0x1BFB40440](*(a1 + 24), *(a1 + 32), *(a1 + 40), *(a2 + 24), *(a2 + 32), *(a2 + 40)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    return 1;
  }

  return sub_1BE053B84();
}

uint64_t sub_1BD2FDA74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = 0;
  if (v2)
  {
    v4 = *(a2 + 48);
    v5 = *(a2 + 56);
    for (i = (a1 + 88); ; i += 8)
    {
      v7 = *(i - 1) == v4 && *i == v5;
      if (v7 || (sub_1BE053B84() & 1) != 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        return 0;
      }
    }
  }

  return v3;
}

char *sub_1BD2FDB10(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 beneficiaries];
  sub_1BD0E5E8C(0, &qword_1EBD417F0, 0x1E69B8340);
  v2 = sub_1BE052744();

  if (v2 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v11 = 0;
    v37 = v2 & 0xFFFFFFFFFFFFFF8;
    v38 = v2 & 0xC000000000000001;
    v12 = MEMORY[0x1E69E7CC0];
    v35 = i;
    v36 = v2;
    while (1)
    {
      if (v38)
      {
        v13 = MEMORY[0x1BFB40900](v11, v2);
      }

      else
      {
        if (v11 >= *(v37 + 16))
        {
          goto LABEL_21;
        }

        v13 = *(v2 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v41 = [v13 contact];
      v16 = [v14 displayableRelationshipString];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1BE052434();
        v39 = v19;
        v40 = v18;
      }

      else
      {
        v39 = 0;
        v40 = 0;
      }

      v20 = [v14 allocation];
      v21 = sub_1BE0533F4();
      v23 = v22;
      v25 = v24;

      v26 = [v14 identifier];
      v27 = sub_1BE052434();
      v29 = v28;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1BD1D8468(0, *(v12 + 2) + 1, 1, v12, v6, v7, v8, v9);
      }

      v31 = *(v12 + 2);
      v30 = *(v12 + 3);
      if (v31 >= v30 >> 1)
      {
        v12 = sub_1BD1D8468((v30 > 1), v31 + 1, 1, v12, v6, v7, v8, v9);
      }

      *(v12 + 2) = v31 + 1;
      v32 = &v12[64 * v31];
      *(v32 + 4) = v41;
      *(v32 + 5) = v40;
      *(v32 + 6) = v39;
      *(v32 + 7) = v21;
      *(v32 + 8) = v23;
      *(v32 + 18) = v25;
      ++v11;
      *(v32 + 10) = v27;
      *(v32 + 11) = v29;
      v2 = v36;
      if (v15 == v35)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v2, v3, v4, v5, v6, v7, v8, v9;

  return v12;
}

uint64_t sub_1BD2FDD98(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = sub_1BD2FDA74(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    return *(v5 + 16);
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v10 = *(v5 + 16);
    if (v9 == v10)
    {
      return v8;
    }

    v11 = result << 6;
    while (v9 < v10)
    {
      v12 = (v5 + v11);
      result = *(v5 + v11 + 144);
      if (result != *(a2 + 48) || *(v5 + v11 + 152) != *(a2 + 56))
      {
        result = sub_1BE053B84();
        if ((result & 1) == 0)
        {
          if (v9 != v8)
          {
            if (v8 >= v10)
            {
              goto LABEL_24;
            }

            v14 = (v5 + 32 + (v8 << 6));
            v15 = *v14;
            v16 = v14[1];
            v17 = v14[3];
            v46 = v14[2];
            v47 = v17;
            v44 = v15;
            v45 = v16;
            v18 = v12[6];
            v19 = v12[7];
            v20 = v12[9];
            v50 = v12[8];
            v51 = v20;
            v48 = v18;
            v49 = v19;
            sub_1BD2FD934(&v44, v43);
            sub_1BD2FD934(&v48, v43);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1BD4FFF7C(v5, v21, v22, v23, v24, v25, v26, v27);
              v5 = result;
            }

            if (v8 >= *(v5 + 16))
            {
              goto LABEL_25;
            }

            v28 = (v5 + (v8 << 6));
            v29 = v28[2];
            v30 = v28[3];
            v31 = v28[5];
            v42[2] = v28[4];
            v42[3] = v31;
            v42[0] = v29;
            v42[1] = v30;
            v32 = v48;
            v33 = v49;
            v34 = v51;
            v28[4] = v50;
            v28[5] = v34;
            v28[2] = v32;
            v28[3] = v33;
            result = sub_1BD2FDF68(v42);
            if (v9 >= *(v5 + 16))
            {
              goto LABEL_26;
            }

            v35 = (v5 + v11);
            v36 = *(v5 + v11 + 96);
            v37 = *(v5 + v11 + 112);
            v38 = *(v5 + v11 + 144);
            v43[2] = *(v5 + v11 + 128);
            v43[3] = v38;
            v43[0] = v36;
            v43[1] = v37;
            v39 = v44;
            v40 = v45;
            v41 = v47;
            v35[8] = v46;
            v35[9] = v41;
            v35[6] = v39;
            v35[7] = v40;
            result = sub_1BD2FDF68(v43);
            *a1 = v5;
          }

          ++v8;
        }
      }

      ++v9;
      v10 = *(v5 + 16);
      v11 += 64;
      if (v9 == v10)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD2FDFF4(id result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    sub_1BE048C84();

    return v2;
  }

  return result;
}

uint64_t objectdestroy_93Tm(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[5], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

void destroy for Beneficiary(uint64_t a1)
{
  *(a1 + 16), v2, v3, v4, v5, v6, v7, v8;
  v16 = *(a1 + 56);

  v16, v9, v10, v11, v12, v13, v14, v15;
}

uint64_t initializeWithCopy for Beneficiary(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  v6 = v3;
  sub_1BE048C84();
  sub_1BE048C84();
  return a1;
}

uint64_t assignWithCopy for Beneficiary(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  v7 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  sub_1BE048C84();
  v7, v8, v9, v10, v11, v12, v13, v14;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 30) = *(a2 + 30);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 38) = *(a2 + 38);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 48) = *(a2 + 48);
  v15 = *(a2 + 56);
  v16 = *(a1 + 56);
  *(a1 + 56) = v15;
  sub_1BE048C84();
  v16, v17, v18, v19, v20, v21, v22, v23;
  return a1;
}

uint64_t assignWithTake for Beneficiary(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  v6 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;
  v6, v7, v8, v9, v10, v11, v12, v13;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v14 = *(a2 + 56);
  v15 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v14;
  v15, v16, v17, v18, v19, v20, v21, v22;
  return a1;
}

void sub_1BD2FE310()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v161 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v163 = &v154 - v7;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v154 - v10;
  v171.receiver = v1;
  v171.super_class = ObjectType;
  objc_msgSendSuper2(&v171, sel_loadView, v9);
  v12 = sub_1BE04BC84();
  v13 = [v1 explanationView];
  if (!v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  v15 = [objc_opt_self() systemBackgroundColor];
  [v14 setTopBackgroundColor_];

  [v1 setShowDoneButton_];
  [v1 setShowCancelButton_];
  [v1 setPrivacyLinkController_];
  v16 = [objc_allocWithZone(PKHeroCardExplanationHeaderView) initWithImage_];
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16;
  v162 = v3;
  [v16 setHideBackground_];
  [v17 setPadding_];
  v164 = v14;
  [v14 setHeroView_];
  [objc_opt_self() recommendedCardImageSize];
  v19 = v18;
  v21 = v20;
  v22 = [objc_opt_self() sharedInstance];
  if (!v22)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = v17;
  v169 = sub_1BD2FF064;
  v170 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v166 = 1107296256;
  v167 = sub_1BD20815C;
  v168 = &block_descriptor_50;
  v25 = _Block_copy(&aBlock);
  v26 = v170;
  v27 = v12;
  v28 = v17;
  v26, v29, v30, v31, v32, v33, v34, v35;
  [v23 snapshotWithPass:v27 size:v25 completion:{v19, v21}];
  _Block_release(v25);

  v36 = [*&v1[OBJC_IVAR____TtC9PassKitUI49ProvisioningCarInvitationActivationViewController_invitation] activationOptions];
  v37 = v36;
  v38 = v11;
  if (v36)
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1BE0B7020;
  *(v39 + 32) = [objc_opt_self() vehicleEnteredPin];
  v40 = objc_allocWithZone(MEMORY[0x1E69B8A80]);
  sub_1BD0E5E8C(0, &qword_1EBD41828, 0x1E69B8A78);
  v41 = sub_1BE052724();
  v39, v42, v43, v44, v45, v46, v47, v48;
  v49 = [v40 initWithOptions_];

  if (v49)
  {
    v37 = v49;
    v36 = 0;
LABEL_7:
    v156 = v28;
    v157 = v27;
    v50 = v36;
    v51 = [v37 primaryOption];
    v155 = v37;

    aBlock = 0;
    v166 = 0xE000000000000000;
    sub_1BE053834();
    v166, v52, v53, v54, v55, v56, v57, v58;
    aBlock = 0xD000000000000020;
    v166 = 0x80000001BE1226F0;
    v59 = [v51 localizationKeyPostfixForInitiation];
    v60 = sub_1BE052434();
    v62 = v61;

    MEMORY[0x1BFB3F610](v60, v62);
    v62, v63, v64, v65, v66, v67, v68, v69;
    v70 = v166;
    v71 = *(v4 + 104);
    v72 = v11;
    v160 = *MEMORY[0x1E69B80F8];
    v73 = v162;
    v71(v72);
    v74 = PKPassKitBundle();
    if (v74)
    {
      v75 = v74;
      sub_1BE04B6F4();
      v77 = v76;
      v70, v76, v78, v79, v80, v81, v82, v83;

      v85 = *(v4 + 8);
      v84 = (v4 + 8);
      v159 = v85;
      v85(v38, v73);
      v86 = sub_1BE052404();
      v77, v87, v88, v89, v90, v91, v92, v93;
      v94 = v164;
      [v164 setTitleText_];

      aBlock = 0;
      v166 = 0xE000000000000000;
      sub_1BE053834();
      v166, v95, v96, v97, v98, v99, v100, v101;
      aBlock = 0xD000000000000021;
      v166 = 0x80000001BE122720;
      v158 = v51;
      v102 = [v51 localizationKeyPostfix];
      v103 = sub_1BE052434();
      v105 = v104;

      MEMORY[0x1BFB3F610](v103, v105);
      v105, v106, v107, v108, v109, v110, v111, v112;
      v113 = v166;
      v114 = v163;
      (v71)(v163, v160, v73);
      v115 = PKPassKitBundle();
      if (v115)
      {
        v116 = v115;
        v117 = v71;
        sub_1BE04B6F4();
        v118 = v114;
        v120 = v119;
        v113, v119, v121, v122, v123, v124, v125, v126;

        v127 = v118;
        v163 = v84;
        v128 = v159;
        v159(v127, v73);
        v129 = sub_1BE052404();
        v120, v130, v131, v132, v133, v134, v135, v136;
        [v94 setBodyText_];

        v137 = [v94 dockView];
        if (v137)
        {
          v138 = v137;
          v139 = [v137 primaryButton];

          v140 = v161;
          v141 = v158;
          if (v139)
          {
            (v117)(v161, *MEMORY[0x1E69B8038], v73);
            v142 = PKPassKitBundle();
            if (v142)
            {
              v143 = v142;
              sub_1BE04B6F4();
              v145 = v144;

              v128(v140, v73);
              v146 = sub_1BE052404();
              v145, v147, v148, v149, v150, v151, v152, v153;
              [v139 setTitle:v146 forStates:0];

              return;
            }

            goto LABEL_20;
          }

LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_1BD2FEB2C(void *a1, void *a2)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE051FA4();
  v8 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v11 = sub_1BE052D54();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1BD2FF06C;
  v28 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_7_0;
  v13 = _Block_copy(aBlock);
  v14 = v28;
  v15 = a1;
  v16 = a2;
  v14, v17, v18, v19, v20, v21, v22, v23;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v10, v7, v13);
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v26);
}

uint64_t sub_1BD2FEFBC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD8659A4(v1, &off_1F3B9FE30, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD2FF084(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v19[0] = *(v7 - 1);
      v19[1] = v8;
      sub_1BE048C84();
      v9 = a1(v19);
      v8, v10, v11, v12, v13, v14, v15, v16;
      if (v3)
      {
        break;
      }

      v17 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v17) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1BD2FF130(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v19 = *v6;
      v8 = *(&v19 + 1);
      sub_1BE048C84();
      v9 = a1(&v19);
      v8, v10, v11, v12, v13, v14, v15, v16;
      if (v3)
      {
        break;
      }

      v17 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v17) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1BD2FF1E0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1BFB40900](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1BE053704();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

char *sub_1BD2FF308(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController_hostingVC] = 0;
  v10 = &v4[OBJC_IVAR____TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController_selectionHandler];
  *v10 = a3;
  *(v10 + 1) = a4;
  v26.receiver = v4;
  v26.super_class = ObjectType;
  sub_1BE048964();
  v11 = objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, 0, 0);
  sub_1BE048964();
  v12 = v11;
  sub_1BD437E54(a1, a2, a3, a4, v27);
  v25[4] = v27[0];
  v25[5] = v27[1];
  v25[6] = v27[2];
  v25[7] = v27[3];
  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41878, &unk_1BE0CB290));
  sub_1BD300E80(v27, v25);
  v14 = sub_1BE04F894();
  v15 = *&v12[OBJC_IVAR____TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController_hostingVC];
  *&v12[OBJC_IVAR____TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController_hostingVC] = v14;
  v16 = v14;

  [v12 addChildViewController_];
  sub_1BD300EDC(v27);

  a4, v17, v18, v19, v20, v21, v22, v23;
  return v12;
}

void sub_1BD2FF524(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1BD0E5E8C(0, &qword_1EBD41880, 0x1E69B8880);
    v3 = sub_1BE052724();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_1BD2FF614()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_loadView);
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController_hostingVC];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 view];
      if (v5)
      {
        v6 = v5;
        [v4 addSubview_];

        [v2 didMoveToParentViewController_];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1BD2FF734()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewWillLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController_hostingVC];
    if (v11)
    {
      v12 = [v11 view];
    }

    else
    {
      v12 = 0;
    }

    [v12 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD2FF914(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t))
{
  v2 = sub_1BE04B944();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BB94();
  v6 = sub_1BE04B8E4();
  (*(v3 + 8))(v5, v2);
  v7 = [v6 paymentSetupSupportedInRegion];

  if (v7 == 2)
  {
    v8 = 0x7220666F2074756FLL;
    v9 = 0xED00006E6F696765;
    v10 = 1;
  }

  else
  {
    v9 = 0x80000001BE1228F0;
    v8 = 0xD000000000000019;
    v10 = 0;
  }

  return a1(v8, v9, 0, v10);
}

void sub_1BD2FFA74(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_context);
  if (a1 >> 62)
  {
    sub_1BD0E5E8C(0, &qword_1EBD444C0, 0x1E69B8BC8);
    sub_1BE048C84();
    v13 = sub_1BE0539A4();
    v3, v14, v15, v16, v17, v18, v19, v20;
    v3 = v13;
  }

  else
  {
    sub_1BE048C84();
    sub_1BE053BA4();
    sub_1BD0E5E8C(0, &qword_1EBD444C0, 0x1E69B8BC8);
  }

  v5 = type metadata accessor for ProvisioningMultiCredentialFlowSection();
  v6 = objc_allocWithZone(v5);
  v7 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_foregroundCredentialsToProvision] = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_backgroundPendingProvisionings] = v7;
  v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_isPreflightingBackgroundPendingProvisioningsInProcess] = 0;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_blockingFlowItem] = 0;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_provisionedPassesGroups] = v7;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection__hasRemainingCredentialsToProvision] = &type metadata for HasRemainingCredentialsToProvision;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection__isCardsOnFileProvisioning] = &type metadata for IsCardsOnFileProvisioning;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_identifier];
  *v8 = 0xD00000000000001ALL;
  v8[1] = 0x80000001BE1228D0;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_context] = v4;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_credentials] = v3;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_product] = 0;
  v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_allowManualEntry] = 0;
  v21.receiver = v6;
  v21.super_class = v5;
  sub_1BE048964();
  v9 = objc_msgSendSuper2(&v21, sel_init);
  v10 = v2 + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v2, &off_1F3B9DA20, v9, &off_1F3BA3CD0, ObjectType, v11);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

char *sub_1BD2FFD98()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_ineligibleCredentials);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = objc_allocWithZone(type metadata accessor for AutoFillCredentialSelectionHostingViewController());
  sub_1BE048C84();
  v4 = sub_1BE048C84();
  return sub_1BD2FF308(v4, v1, sub_1BD300E78, v2);
}

void sub_1BD2FFE38(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      if (*(Strong + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_needsEligibilityCheck))
      {
        v5 = *(Strong + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_autoFillManager);
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v7 = swift_allocObject();
        *(v7 + 16) = v6;
        *(v7 + 24) = a1;
        v32 = sub_1BD300F30;
        v33 = v7;
        *&v30 = MEMORY[0x1E69E9820];
        *(&v30 + 1) = 1107296256;
        *&v31 = sub_1BD3006EC;
        *(&v31 + 1) = &block_descriptor_51;
        v8 = _Block_copy(&v30);
        v9 = v33;
        sub_1BE048C84();
        v10 = v5;
        v9, v11, v12, v13, v14, v15, v16, v17;
        [v10 checkActiveFPANCardsForEligibilityWithCompletion_];
        _Block_release(v8);
      }

      else
      {
        v22 = sub_1BE048C84();
        sub_1BD2FFA74(v22);

        a1, v23, v24, v25, v26, v27, v28, v29;
      }
    }

    else
    {
      v18 = Strong + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v19 = *(v18 + 8);
        ObjectType = swift_getObjectType();
        v30 = 0u;
        v31 = 0u;
        LOBYTE(v32) = 2;
        v21 = v4;
        sub_1BD865A00(v21, &off_1F3B9DA20, &v30, ObjectType, v19);
        swift_unknownObjectRelease();

        sub_1BD12FF7C(&v30);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1BD300034(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v10 = sub_1BE051F54();
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BE051FA4();
  v13 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v30 = sub_1BE052D54();
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a1;
  *(v16 + 32) = a4;
  *(v16 + 40) = a2;
  *(v16 + 48) = v29;
  aBlock[4] = sub_1BD300F38;
  v34 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_16_1;
  v17 = _Block_copy(aBlock);
  v18 = v34;
  sub_1BE048964();
  v19 = a4;
  sub_1BE048C84();
  sub_1BE048C84();
  v18, v20, v21, v22, v23, v24, v25, v26;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v27 = v30;
  MEMORY[0x1BFB3FDF0](0, v15, v12, v17);
  _Block_release(v17);

  (*(v32 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v31);
}

void sub_1BD300308(uint64_t a1, char a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  if ((a2 & 1) == 0 || a3)
  {
    goto LABEL_41;
  }

  if (a4 >> 62)
  {
    goto LABEL_38;
  }

  v76 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v76)
  {
LABEL_41:
    v67 = &v9[OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v68 = *(v67 + 1);
      ObjectType = swift_getObjectType();
      memset(v79, 0, sizeof(v79));
      v80 = 2;
      v70 = v9;
      sub_1BD865A00(v70, &off_1F3B9DA20, v79, ObjectType, v68);
      swift_unknownObjectRelease();

      sub_1BD12FF7C(v79);
    }

    else
    {
    }

    return;
  }

  v72 = Strong;
  *&v79[0] = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = 0;
    v74 = a4 & 0xFFFFFFFFFFFFFF8;
    v75 = a4 & 0xC000000000000001;
    v71 = a4;
    v73 = a4 + 32;
    v11 = &selRef_currentPassbookState;
LABEL_10:
    if (v75)
    {
      v12 = MEMORY[0x1BFB40900](v10, v71);
    }

    else
    {
      if (v10 >= *(v74 + 16))
      {
        goto LABEL_37;
      }

      v12 = *(v73 + 8 * v10);
    }

    v13 = v12;
    v14 = __OFADD__(v10, 1);
    v15 = v10 + 1;
    if (!v14)
    {
      break;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    if (sub_1BE053704() <= 0)
    {
      goto LABEL_41;
    }

    v72 = v9;
    v59 = MEMORY[0x1E69E7CC0];
    *&v79[0] = MEMORY[0x1E69E7CC0];
    v76 = sub_1BE053704();
    if (!v76)
    {
      goto LABEL_33;
    }
  }

  v77 = v15;
  if (a5 >> 62)
  {
    v16 = sub_1BE053704();
  }

  else
  {
    v16 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  while (1)
  {
    if (v16 == v17)
    {

      goto LABEL_9;
    }

    a4 = &selRef_hoursOfDay;
    if ((a5 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x1BFB40900](v17, a5);
    }

    else
    {
      if (v17 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v32 = *(a5 + 8 * v17 + 32);
    }

    v33 = v32;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v34 = [v32 v11[254]];
    if (!v34)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      return;
    }

    v35 = v34;
    v36 = [v34 identifier];

    v9 = sub_1BE052434();
    v38 = v37;
    v39 = v11;
    v40 = [v13 v11[254]];
    if (!v40)
    {
      goto LABEL_46;
    }

    v41 = v40;

    a4 = [v41 identifier];
    v42 = sub_1BE052434();
    v44 = v43;

    if (v9 == v42 && v38 == v44)
    {
      break;
    }

    a4 = sub_1BE053B84();

    v38, v18, v19, v20, v21, v22, v23, v24;
    v44, v25, v26, v27, v28, v29, v30, v31;
    ++v17;
    v11 = v39;
    if (a4)
    {
      goto LABEL_29;
    }
  }

  v38, v45, v46, v47, v48, v49, v50, v51;
  v44, v52, v53, v54, v55, v56, v57, v58;
  v11 = v39;
LABEL_29:
  sub_1BE0538C4();
  sub_1BE0538F4();
  sub_1BE053904();
  sub_1BE0538D4();
LABEL_9:
  v10 = v77;
  if (v77 != v76)
  {
    goto LABEL_10;
  }

  v59 = *&v79[0];
LABEL_33:
  sub_1BD2FFA74(v59);
  v59, v60, v61, v62, v63, v64, v65, v66;
}

void sub_1BD3006EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1BD0E5E8C(0, &qword_1EBD41880, 0x1E69B8880);
  v9 = sub_1BE052744();
  v10 = sub_1BE052744();
  sub_1BE048964();
  v32 = a5;
  v8(a2, v9, v10, a5);
  v7, v11, v12, v13, v14, v15, v16, v17;
  v9, v18, v19, v20, v21, v22, v23, v24;
  v10, v25, v26, v27, v28, v29, v30, v31;
}

void sub_1BD3007D0(void (*a1)(uint64_t), uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_eligibleCredentials) || *(v2 + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_ineligibleCredentials))
  {
    a1(1);
  }

  else
  {
    v4 = *(v2 + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_autoFillManager);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = a1;
    v7[4] = a2;
    v17[4] = sub_1BD300F4C;
    v18 = v7;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1BD3006EC;
    v17[3] = &block_descriptor_23_2;
    v8 = _Block_copy(v17);
    v9 = v18;
    sub_1BE048964();
    v9, v10, v11, v12, v13, v14, v15, v16;
    [v4 checkActiveFPANCardsForEligibilityWithCompletion_];
    _Block_release(v8);
  }
}

char *sub_1BD300920(char a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v57 = a6;
  v12 = sub_1BE051F54();
  v59 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1BE051FA4();
  v15 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0 || a4)
  {
    goto LABEL_12;
  }

  if (a2 >> 62)
  {
    if (sub_1BE053704() > 0)
    {
      goto LABEL_7;
    }

LABEL_5:
    if (a3 >> 62)
    {
      if (sub_1BE053704() >= 1)
      {
        goto LABEL_7;
      }
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_7;
    }

LABEL_12:
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v36 = sub_1BE052D54();
    v47 = swift_allocObject();
    *(v47 + 16) = v57;
    *(v47 + 24) = a7;
    v64 = sub_1BD1B5F6C;
    v65 = v47;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    v62 = sub_1BD126964;
    v63 = &block_descriptor_29_2;
    v48 = _Block_copy(&aBlock);
    v49 = v65;
    sub_1BE048964();
    v49, v50, v51, v52, v53, v54, v55, v56;
    sub_1BE051F74();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v17, v14, v48);
    _Block_release(v48);
    goto LABEL_13;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
  {
    goto LABEL_5;
  }

LABEL_7:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v26 = *&result[OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_eligibleCredentials];
  *&result[OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_eligibleCredentials] = a2;
  v27 = result;
  v26, v19, v20, v21, v22, v23, v24, v25;
  v28 = *&v27[OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_ineligibleCredentials];
  *&v27[OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_ineligibleCredentials] = a3;
  sub_1BE048C84();
  v28, v29, v30, v31, v32, v33, v34, v35;
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  sub_1BE048C84();
  v36 = sub_1BE052D54();
  v37 = swift_allocObject();
  *(v37 + 16) = v57;
  *(v37 + 24) = a7;
  v64 = sub_1BD19E0B8;
  v65 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v61 = 1107296256;
  v62 = sub_1BD126964;
  v63 = &block_descriptor_35;
  v38 = _Block_copy(&aBlock);
  v39 = v65;
  sub_1BE048964();
  v39, v40, v41, v42, v43, v44, v45, v46;
  sub_1BE051F74();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v17, v14, v38);
  _Block_release(v38);

LABEL_13:
  (*(v59 + 8))(v14, v12);
  return (*(v15 + 8))(v17, v58);
}

uint64_t sub_1BD300DE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD300E20(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD300F60(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_autoFillManager;
  v10 = objc_allocWithZone(MEMORY[0x1E69B8680]);
  v11 = v3;
  *&v4[v9] = [v10 init];
  v12 = OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_eligibleCredentials;
  *&v11[OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_eligibleCredentials] = 0;
  v13 = OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_ineligibleCredentials;
  *&v11[OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_ineligibleCredentials] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v14 = &v11[OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_identifier];
  *v14 = 0xD00000000000001FLL;
  *(v14 + 1) = 0x80000001BE1229B0;
  *&v11[OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_context] = a1;
  v15 = *&v11[v12];
  *&v11[v12] = a2;
  sub_1BE048964();
  sub_1BE048C84();
  v15, v16, v17, v18, v19, v20, v21, v22;
  v23 = *&v11[v13];
  *&v11[v13] = a3;
  sub_1BE048C84();
  v23, v24, v25, v26, v27, v28, v29, v30;
  v38 = *&v11[v12];
  if (v38)
  {
    sub_1BE048C84();
    a2, v39, v40, v41, v42, v43, v44, v45;
    a3, v46, v47, v48, v49, v50, v51, v52;
    if (v38 >> 62)
    {
      v60 = sub_1BE053704();
    }

    else
    {
      v60 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38, v53, v54, v55, v56, v57, v58, v59;
    if (v60)
    {

      goto LABEL_9;
    }
  }

  else
  {
    a2, v31, v32, v33, v34, v35, v36, v37;
    a3, v61, v62, v63, v64, v65, v66, v67;
  }

  v68 = *&v11[v13];
  sub_1BE048C84();

  if (!v68)
  {
    v76 = 0;
    goto LABEL_11;
  }

  v68, v69, v70, v71, v72, v73, v74, v75;
LABEL_9:
  v76 = 1;
LABEL_11:
  v11[OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_needsEligibilityCheck] = v76;
  v78.receiver = v11;
  v78.super_class = ObjectType;
  return objc_msgSendSuper2(&v78, sel_init);
}

void sub_1BD30117C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69B86A8]) initWithType_];
  v4 = *(a2 + 48);
  v5 = [v4 account];
  if (!v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  if ([v4 featureIdentifier] != 2)
  {
    goto LABEL_6;
  }

  v7 = [v6 creditDetails];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 countryCode];

    if (v9)
    {
      sub_1BE052434();
      v11 = v10;

      goto LABEL_7;
    }

LABEL_6:
    v11 = 0xE200000000000000;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD41910, qword_1BE0CB3C0);
    sub_1BE050154();
    v12 = objc_allocWithZone(PKAddBankAccountInformationViewController);
    v13 = v6;
    v14 = v3;
    v15 = sub_1BE052404();
    v16 = [v12 initWithDelegate:v24 bankInformation:v14 accountCountryCode:v15 featureAccount:v13];

    if (v16)
    {
      [v16 setOfferKeychainPreFill_];
      [objc_allocWithZone(PKNavigationController) initWithRootViewController_];

      v11, v17, v18, v19, v20, v21, v22, v23;
      return;
    }

    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
}

void sub_1BD301360(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(*(Strong + OBJC_IVAR____TtCV9PassKitUI35AccountAutomaticPaymentsAddBankView11Coordinator_model) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BE0B7020;
    if (a2)
    {
      *(v6 + 32) = a2;
      v7 = v6;
      sub_1BD0E5E8C(0, &qword_1EBD4E090, 0x1E69B83A8);
      v8 = v5;
      v9 = a2;
      v10 = sub_1BE052724();
      v7, v11, v12, v13, v14, v15, v16, v17;
      [v8 setFundingSources_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD301560(void *a1, void *a2)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1BE051FA4();
  v8 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v11 = sub_1BE052D54();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a2;
  v13[4] = a1;
  aBlock[4] = sub_1BD301A8C;
  v29 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_52;
  v14 = _Block_copy(aBlock);
  v15 = v29;
  v16 = a2;
  v17 = a1;
  v15, v18, v19, v20, v21, v22, v23, v24;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v10, v7, v14);
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v27);
}

void sub_1BD30182C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2)
    {
      v7 = sub_1BE04A844();
    }

    else
    {
      v7 = 0;
    }

    v8 = [objc_opt_self() displayableErrorForError:v7 featureIdentifier:objc_msgSend(*(*&v6[OBJC_IVAR____TtCV9PassKitUI35AccountAutomaticPaymentsAddBankView11Coordinator_model] + 48) genericErrorTitle:sel_featureIdentifier) genericErrorMessage:{0, 0}];

    if (v8)
    {
      v9 = v8;
      v10 = sub_1BE04A844();
    }

    else
    {
      v10 = 0;
    }

    v11 = PKAlertForDisplayableError(v10, 0);

    if (v11)
    {
      if (a3)
      {
        [a3 presentViewController:v11 animated:1 completion:0];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_1BD301A24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountAutomaticPaymentsAddBankView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1BD301AA0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for AccountAutomaticPaymentsAddBankView.Coordinator();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCV9PassKitUI35AccountAutomaticPaymentsAddBankView11Coordinator_model] = v3;
  v7.receiver = v5;
  v7.super_class = v4;
  sub_1BE048964();
  result = objc_msgSendSuper2(&v7, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BD301B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD301F2C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD301B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD301F2C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD301BD8(uint64_t a1)
{
  sub_1BD301F2C();
  sub_1BE0500A4();
  __break(1u);
}

uint64_t sub_1BD301C00(void *a1)
{
  v2 = sub_1BE051F54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v10 = sub_1BE052D54();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1BD301EBC;
  v25 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_15_2;
  v13 = _Block_copy(aBlock);
  v14 = v25;
  v15 = a1;
  v14, v16, v17, v18, v19, v20, v21, v22;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v9, v5, v13);
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1BD301ED8()
{
  result = qword_1EBD41900;
  if (!qword_1EBD41900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41900);
  }

  return result;
}

unint64_t sub_1BD301F2C()
{
  result = qword_1EBD41908;
  if (!qword_1EBD41908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41908);
  }

  return result;
}

id sub_1BD302060()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BC34();
  v6 = sub_1BE04B9A4();
  (*(v3 + 8))(v5, v2);
  v7 = *MEMORY[0x1E69BC650];
  v8 = objc_allocWithZone(PKNewDevicePasscodeViewController);
  v9 = sub_1BE052404();
  v10 = [v8 initWithContext:v6 minimumPasscodeLength:v7 currentPasscode:v9 delegate:v1];

  sub_1BE052434();
  v12 = v11;
  v13 = sub_1BE04BB74();
  v12, v14, v15, v16, v17, v18, v19, v20;
  [v10 setReporter_];

  return v10;
}

uint64_t sub_1BD3021F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeNewPasscodeFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD302234(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeNewPasscodeFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD302300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeNewPasscodeFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeNewPasscodeFlowItem_identifier];
  *v9 = 0xD00000000000002ELL;
  *(v9 + 1) = 0x80000001BE0CB3C0;
  *&v4[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeNewPasscodeFlowItem_context] = a1;
  v10 = &v4[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeNewPasscodeFlowItem_currentPasscode];
  *v10 = a2;
  *(v10 + 1) = a3;
  swift_unknownObjectWeakAssign();
  v12.receiver = v4;
  v12.super_class = ObjectType;
  sub_1BE048964();
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_1BD3023F4(char a1, void *a2)
{
  v3 = v2;
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  if (a2 || (a1 & 1) == 0)
  {
    sub_1BE04D0E4();
    v18 = a2;
    v19 = sub_1BE04D204();
    v20 = sub_1BE052C54();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v43 = a2;
      v44 = v22;
      *v21 = 136315138;
      v23 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD419B0, &unk_1BE0CB420);
      v24 = sub_1BE0524A4();
      v26 = v25;
      v27 = sub_1BD123690(v24, v25, &v44);
      v26, v28, v29, v30, v31, v32, v33, v34;
      *(v21 + 4) = v27;
      _os_log_impl(&dword_1BD026000, v19, v20, "Failed to change passcode with error: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22, v35, v36, v37, v38, v39, v40, v41);
      MEMORY[0x1BFB45F20](v22, -1, -1);
      MEMORY[0x1BFB45F20](v21, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      sub_1BD25EEEC();
      goto LABEL_11;
    }
  }

  else
  {
    sub_1BE04D0E4();
    v13 = sub_1BE04D204();
    v14 = sub_1BE052C54();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1BD026000, v13, v14, "Successfully changed passcode", v15, 2u);
      MEMORY[0x1BFB45F20](v15, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      sub_1BD25EBA0(v3, v16);
LABEL_11:
    }
  }
}

uint64_t type metadata accessor for FinanceKitFoundInMailRowView(uint64_t a1)
{
  result = qword_1EBD419C0;
  if (!qword_1EBD419C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD302744(uint64_t a1)
{
  sub_1BD302840(319, &qword_1EBD36A40, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    sub_1BD1C86BC();
    if (v2 <= 0x3F)
    {
      sub_1BD302840(319, &qword_1EBD45140, MEMORY[0x1E6968FB0]);
      if (v3 <= 0x3F)
      {
        sub_1BD0FA9D0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD302840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_1BD3028B0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD419D0, &qword_1BE0CB4A8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = (v32 - v4);
  v5 = type metadata accessor for FinanceKitFoundInMailRowView(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD419D8, &qword_1BE0CB4B0);
  v10 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v12 = v32 - v11;
  v13 = (v2 + *(v6 + 52));
  v14 = *v13;
  if (*v13)
  {
    v32[2] = a1;
    v15 = v13[1];
    sub_1BD30443C(v2, v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    v19 = sub_1BD3044A0(v9, v18 + v16);
    v32[1] = v32;
    v20 = (v18 + v17);
    *v20 = v14;
    v20[1] = v15;
    MEMORY[0x1EEE9AC00](v19);
    v32[-2] = v2;
    sub_1BD0D44B8(v14, v15);
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD419E8, &qword_1BE0CB4C0);
    sub_1BD0DE4F4(&qword_1EBD419F8, &qword_1EBD419E8, &qword_1BE0CB4C0, MEMORY[0x1E69817F8]);
    sub_1BE051704();
    v21 = v35;
    (*(v10 + 16))(v33, v12, v35);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD419F0, &qword_1EBD419D8, &qword_1BE0CB4B0, MEMORY[0x1E697D680]);
    sub_1BE04F9A4();
    sub_1BD0D4744(v14, v15, v22, v23, v24, v25, v26, v27);
    return (*(v10 + 8))(v12, v21);
  }

  else
  {
    v29 = sub_1BE04F504();
    v39 = 1;
    sub_1BD30301C(v2, v37);
    memcpy(v40, v37, sizeof(v40));
    memcpy(v41, v37, 0x1E8uLL);
    sub_1BD0DE19C(v40, &v36, &qword_1EBD419E0, &qword_1BE0CB4B8);
    sub_1BD0DE53C(v41, &qword_1EBD419E0, &qword_1BE0CB4B8);
    memcpy(&v38[7], v40, 0x1E8uLL);
    v30 = v39;
    v31 = v33;
    *v33 = v29;
    v31[1] = 0;
    *(v31 + 16) = v30;
    memcpy(v31 + 17, v38, 0x1EFuLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD419E8, &qword_1BE0CB4C0);
    sub_1BD0DE4F4(&qword_1EBD419F0, &qword_1EBD419D8, &qword_1BE0CB4B0, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&qword_1EBD419F8, &qword_1EBD419E8, &qword_1BE0CB4C0, MEMORY[0x1E69817F8]);
    return sub_1BE04F9A4();
  }
}

uint64_t sub_1BD302D80(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1BE04AA64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FinanceKitFoundInMailRowView(0);
  sub_1BD0DE19C(a1 + *(v11 + 40), v6, &unk_1EBD3CF70, &qword_1BE0BA000);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1BD0DE53C(v6, &unk_1EBD3CF70, &qword_1BE0BA000);
  }

  (*(v8 + 32))(v10, v6, v7);
  a2(v10);
  return (*(v8 + 8))(v10, v7);
}

void *sub_1BD302F40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F504();
  v10 = 1;
  sub_1BD30301C(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_1BD0DE19C(__dst, v7, &qword_1EBD419E0, &qword_1BE0CB4B8);
  sub_1BD0DE53C(v12, &qword_1EBD419E0, &qword_1BE0CB4B8);
  memcpy(&v9[7], __dst, 0x1E8uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x1EFuLL);
}

uint64_t sub_1BD30301C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v3 = *a1;
  v25 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v44[0] = 0;
  LOBYTE(v44[1]) = -1;
  sub_1BE048C84();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41A00, &qword_1BE0CB4C8);
  sub_1BE051694();
  v6 = __src[0];
  v24 = __src[0];
  v7 = __src[1];
  v23 = __src[1];
  v8 = __src[2];
  v22 = __src[2];
  v20 = sub_1BE04F7C4();
  v27.i8[0] = 1;
  sub_1BD303304(v2, __src);
  memcpy(__dst, __src, 0x141uLL);
  memcpy(v38, __src, 0x141uLL);
  sub_1BD0DE19C(__dst, v44, &qword_1EBD41A08, &qword_1BE0CB4D0);
  sub_1BD0DE53C(v38, &qword_1EBD41A08, &qword_1BE0CB4D0);
  memcpy(&v36[7], __dst, 0x141uLL);
  LOBYTE(v2) = sub_1BE050204();
  sub_1BE04E1F4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  LOBYTE(__src[0]) = 0;
  v17 = sub_1BE051464();
  KeyPath = swift_getKeyPath();
  v21 = vdupq_n_s64(0x4046800000000000uLL);
  v39 = v21;
  *&v40 = v6;
  BYTE8(v40) = v7;
  *&v41 = v8;
  *(&v41 + 1) = v3;
  *&v42 = v25;
  *(&v42 + 1) = v5;
  v43 = v4;
  *&v35[64] = v4;
  *&v35[32] = v41;
  *&v35[48] = v42;
  *v35 = v21;
  *&v35[16] = v40;
  v44[0] = v20;
  v44[1] = 0;
  LOBYTE(v44[2]) = 1;
  memcpy(&v44[2] + 1, v36, 0x148uLL);
  LOBYTE(v44[44]) = v2;
  v44[45] = v10;
  v44[46] = v12;
  v44[47] = v14;
  v44[48] = v16;
  LOBYTE(v44[49]) = 0;
  v44[50] = KeyPath;
  v44[51] = v17;
  memcpy(&v35[72], v44, 0x1A0uLL);
  memcpy(a2, v35, 0x1E8uLL);
  __src[0] = v20;
  __src[1] = 0;
  LOBYTE(__src[2]) = 1;
  memcpy(&__src[2] + 1, v36, 0x148uLL);
  v46 = v2;
  v47 = v10;
  v48 = v12;
  v49 = v14;
  v50 = v16;
  v51 = 0;
  v52 = KeyPath;
  v53 = v17;
  sub_1BD3065EC(&v39, &v27);
  sub_1BD0DE19C(v44, &v27, &qword_1EBD41A10, &qword_1BE0CB508);
  sub_1BD0DE53C(__src, &qword_1EBD41A10, &qword_1BE0CB508);
  v27 = v21;
  v28 = v24;
  v29 = v23;
  v30 = v22;
  v31 = v3;
  v32 = v25;
  v33 = v5;
  v34 = v4;
  return sub_1BD306624(&v27);
}

uint64_t sub_1BD303304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1BE04F504();
  LOBYTE(v143) = 1;
  sub_1BD303B80(a1, &v172);
  v167 = *&v173[112];
  v168 = *&v173[128];
  v169 = *&v173[144];
  v170 = *&v173[160];
  v163 = *&v173[48];
  v164 = *&v173[64];
  v165 = *&v173[80];
  v166 = *&v173[96];
  v159 = v172;
  v160 = *v173;
  v161 = *&v173[16];
  v162 = *&v173[32];
  v171[8] = *&v173[112];
  v171[9] = *&v173[128];
  v171[10] = *&v173[144];
  v171[11] = *&v173[160];
  v171[4] = *&v173[48];
  v171[5] = *&v173[64];
  v171[6] = *&v173[80];
  v171[7] = *&v173[96];
  v171[0] = v172;
  v171[1] = *v173;
  v171[2] = *&v173[16];
  v171[3] = *&v173[32];
  sub_1BD0DE19C(&v159, v157, &qword_1EBD41A18, &qword_1BE0CB510);
  sub_1BD0DE53C(v171, &qword_1EBD41A18, &qword_1BE0CB510);
  *&v157[135] = v167;
  *&v157[151] = v168;
  *&v157[167] = v169;
  *&v157[183] = v170;
  *&v157[71] = v163;
  *&v157[87] = v164;
  *&v157[103] = v165;
  *&v157[119] = v166;
  *&v157[7] = v159;
  *&v157[23] = v160;
  *&v157[39] = v161;
  *&v157[55] = v162;
  *&v173[145] = *&v157[144];
  *&v173[161] = *&v157[160];
  *&v173[177] = *&v157[176];
  *&v173[81] = *&v157[80];
  *&v173[97] = *&v157[96];
  *&v173[113] = *&v157[112];
  *&v173[129] = *&v157[128];
  *&v173[17] = *&v157[16];
  *&v173[33] = *&v157[32];
  *&v173[49] = *&v157[48];
  *&v173[65] = *&v157[64];
  v172 = v3;
  v173[0] = 1;
  *&v173[192] = *(&v170 + 1);
  *&v173[1] = *v157;
  v4 = type metadata accessor for FinanceKitFoundInMailRowView(0);
  v5 = (a1 + *(v4 + 32));
  v6 = v5[1];
  if (v6)
  {
    *v157 = *v5;
    *&v157[8] = v6;
    v120 = a1;
    v7 = v4;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v8 = sub_1BE0506C4();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = sub_1BE050454();
    v16 = sub_1BE0505F4();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v15, v17, v19, v21, v23, v24, v25, v26;
    sub_1BD0DDF10(v8, v10, (v12 & 1), v27, v28, v29, v30, v31);
    v14, v32, v33, v34, v35, v36, v37, v38;
    KeyPath = swift_getKeyPath();
    v125 = v18;
    v126 = v16;
    v123 = v20 & 1;
    sub_1BD0D7F18(v16, v18, v20 & 1);
    v124 = v22;
    sub_1BE048C84();
    v119 = KeyPath;
    sub_1BE048964();
    v4 = v7;
    a1 = v120;
    v122 = 1;
  }

  else
  {
    v125 = 0;
    v126 = 0;
    v123 = 0;
    v124 = 0;
    v119 = 0;
    v122 = 0;
  }

  v40 = (a1 + *(v4 + 36));
  v41 = v40[1];
  if (v41)
  {
    *v157 = *v40;
    *&v157[8] = v41;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v42 = sub_1BE0506C4();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = sub_1BE050454();
    v50 = sub_1BE0505F4();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v49, v51, v53, v55, v57, v58, v59, v60;
    sub_1BD0DDF10(v42, v44, (v46 & 1), v61, v62, v63, v64, v65);
    v48, v66, v67, v68, v69, v70, v71, v72;
    v73 = [objc_opt_self() secondaryLabelColor];
    v74 = sub_1BE0511C4();
    *v157 = v74;
    v75 = v52;
    v76 = sub_1BE050574();
    v78 = v77;
    LOBYTE(v44) = v79;
    v81 = v80;
    sub_1BD0DDF10(v50, v75, (v54 & 1), v80, v82, v83, v84, v85);
    v74, v86, v87, v88, v89, v90, v91, v92;
    v56, v93, v94, v95, v96, v97, v98, v99;
    v100 = swift_getKeyPath();
    v118 = v76;
    v121 = v78;
    v101 = v44 & 1;
    sub_1BD0D7F18(v76, v78, v44 & 1);
    v102 = v81;
    sub_1BE048C84();
    v116 = v100;
    sub_1BE048964();
    v115 = 1;
  }

  else
  {
    v118 = 0;
    v121 = 0;
    v101 = 0;
    v102 = 0;
    v115 = 0;
    v116 = 0;
  }

  v138 = *&v173[160];
  v139 = *&v173[176];
  v133 = *&v173[80];
  v134 = *&v173[96];
  v135 = *&v173[112];
  v136 = *&v173[128];
  v137 = *&v173[144];
  v129 = *&v173[16];
  v130 = *&v173[32];
  v131 = *&v173[48];
  v132 = *&v173[64];
  v127 = v172;
  v128 = *v173;
  v141[10] = *&v173[144];
  v141[11] = *&v173[160];
  v141[12] = *&v173[176];
  v141[6] = *&v173[80];
  v141[7] = *&v173[96];
  v141[8] = *&v173[112];
  v141[9] = *&v173[128];
  v141[2] = *&v173[16];
  v141[3] = *&v173[32];
  v141[4] = *&v173[48];
  v141[5] = *&v173[64];
  v141[0] = v172;
  v141[1] = *v173;
  v153 = *&v173[144];
  v154 = *&v173[160];
  v155 = *&v173[176];
  v149 = *&v173[80];
  v150 = *&v173[96];
  v151 = *&v173[112];
  v152 = *&v173[128];
  v145 = *&v173[16];
  v146 = *&v173[32];
  v147 = *&v173[48];
  v148 = *&v173[64];
  v140 = *&v173[192];
  v142 = *&v173[192];
  v156 = *&v173[192];
  v143 = v172;
  v144 = *v173;
  sub_1BD0DE19C(&v172, v157, &qword_1EBD41A20, &qword_1BE0CB518);
  sub_1BD0DE19C(v141, v157, &qword_1EBD41A20, &qword_1BE0CB518);
  sub_1BD2B5270(v126, v125, v123, v124);
  sub_1BD2B5270(v118, v121, v101, v102);
  sub_1BD2B52C0(v126, v125, v123, v124, v119, v122, 0, v103);
  sub_1BD2B52C0(v118, v121, v101, v102, v116, v115, 0, v104);
  sub_1BD0DE53C(&v172, &qword_1EBD41A20, &qword_1BE0CB518);
  v105 = v154;
  *(a2 + 160) = v153;
  *(a2 + 176) = v105;
  *(a2 + 192) = v155;
  v106 = v156;
  v107 = v150;
  *(a2 + 96) = v149;
  *(a2 + 112) = v107;
  v108 = v152;
  *(a2 + 128) = v151;
  *(a2 + 144) = v108;
  v109 = v146;
  *(a2 + 32) = v145;
  *(a2 + 48) = v109;
  v110 = v148;
  *(a2 + 64) = v147;
  *(a2 + 80) = v110;
  v111 = v144;
  *a2 = v143;
  *(a2 + 16) = v111;
  *(a2 + 208) = v106;
  *(a2 + 216) = v126;
  *(a2 + 224) = v125;
  *(a2 + 232) = v123;
  *(a2 + 240) = v124;
  *(a2 + 248) = v119;
  *(a2 + 256) = v122;
  *(a2 + 264) = 0;
  *(a2 + 272) = v118;
  *(a2 + 280) = v121;
  *(a2 + 288) = v101;
  *(a2 + 296) = v102;
  *(a2 + 304) = v116;
  *(a2 + 312) = v115;
  *(a2 + 320) = 0;
  sub_1BD2B52C0(v118, v121, v101, v102, v116, v115, 0, v112);
  sub_1BD2B52C0(v126, v125, v123, v124, v119, v122, 0, v113);
  *&v157[160] = v137;
  *&v157[176] = v138;
  *&v157[192] = v139;
  *&v157[96] = v133;
  *&v157[112] = v134;
  v158 = v140;
  *&v157[128] = v135;
  *&v157[144] = v136;
  *&v157[32] = v129;
  *&v157[48] = v130;
  *&v157[64] = v131;
  *&v157[80] = v132;
  *v157 = v127;
  *&v157[16] = v128;
  return sub_1BD0DE53C(v157, &qword_1EBD41A20, &qword_1BE0CB518);
}

void sub_1BD303B80(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v197 = a1;
  v193 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v190 = v180 - v4;
  v5 = sub_1BE04AB24();
  v185 = *(v5 - 8);
  v186 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v183 = v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_1BE04AB54();
  v182 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v181 = v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v187 = v180 - v9;
  v10 = sub_1BE04AF64();
  v11 = *(v10 - 8);
  v194 = v10;
  v195 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v189 = v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for FinanceKitFoundInMailRowView(0);
  v13 = (a1 + v196[7]);
  v14 = v13[1];
  v208 = *v13;
  v209 = v14;
  v15 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v180[1] = v15;
  v16 = sub_1BE0506C4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = sub_1BE050324();
  v24 = sub_1BE0505F4();
  v26 = v25;
  LOBYTE(v15) = v27;
  v29 = v28;
  v23, v25, v27, v28, v30, v31, v32, v33;
  sub_1BD0DDF10(v16, v18, (v20 & 1), v34, v35, v36, v37, v38);
  v22, v39, v40, v41, v42, v43, v44, v45;
  v199 = sub_1BE0505D4();
  v191 = v46;
  v192 = v47;
  v188 = v48;
  v49 = v26;
  v50 = v187;
  sub_1BD0DDF10(v24, v49, (v15 & 1), v47, v51, v52, v53, v54);
  v29, v55, v56, v57, v58, v59, v60, v61;
  KeyPath = swift_getKeyPath();
  sub_1BD0DE19C(v197 + v196[6], v50, &unk_1EBD39970, &unk_1BE0B9F80);
  v62 = v195;
  if ((*(v195 + 48))(v50, 1) == 1)
  {
    sub_1BD0DE53C(v50, &unk_1EBD39970, &unk_1BE0B9F80);
    v63 = 0;
    v64 = 0;
    v194 = 0;
    v195 = 0;
    v65 = 0;
    v66 = 0;
  }

  else
  {
    (*(v62 + 32))();
    v67 = v181;
    sub_1BE04AB14();
    v68 = v183;
    sub_1BE04AB04();
    v69 = sub_1BE04AF24();
    v71 = v70;
    (*(v185 + 8))(v68, v186);
    (*(v182 + 8))(v67, v184);
    v208 = v69;
    v209 = v71;
    v72 = sub_1BE0506C4();
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v79 = sub_1BE050454();
    v80 = sub_1BE0505F4();
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v79, v81, v83, v85, v87, v88, v89, v90;
    sub_1BD0DDF10(v72, v74, (v76 & 1), v91, v92, v93, v94, v95);
    v78, v96, v97, v98, v99, v100, v101, v102;
    v103 = [objc_opt_self() secondaryLabelColor];
    v104 = sub_1BE0511C4();
    v208 = v104;
    v105 = v86;
    v106 = sub_1BE050574();
    v108 = v107;
    v110 = v109;
    v112 = v111;
    sub_1BD0DDF10(v80, v82, (v84 & 1), v111, v113, v114, v115, v116);
    v104, v117, v118, v119, v120, v121, v122, v123;
    v105, v124, v125, v126, v127, v128, v129, v130;
    (*(v195 + 8))(v189, v194);
    v131 = swift_getKeyPath();
    v132 = v110 & 1;
    v63 = v106;
    v64 = v108;
    v194 = v132;
    sub_1BD0D7F18(v106, v108, v132);
    v65 = v112;
    sub_1BE048C84();
    v195 = v131;
    sub_1BE048964();
    v66 = 1;
  }

  v133 = v190;
  sub_1BD0DE19C(v197 + v196[10], v190, &unk_1EBD3CF70, &qword_1BE0BA000);
  v134 = sub_1BE04AA64();
  v135 = (*(*(v134 - 8) + 48))(v133, 1, v134);
  sub_1BD0DE53C(v133, &unk_1EBD3CF70, &qword_1BE0BA000);
  v136 = 0;
  v137 = 0;
  v138 = 0;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  v142 = 0;
  if (v135 != 1)
  {
    v136 = sub_1BE04F7B4();
    LOBYTE(v208) = 1;
    v137 = sub_1BE051574();
    v139 = sub_1BE050454();
    v143 = swift_getKeyPath();
    v144 = [objc_opt_self() tertiaryLabelColor];
    v145 = sub_1BE0511C4();
    v140 = swift_getKeyPath();
    v141 = v145;
    v138 = v143;
    v142 = v208;
  }

  v184 = v137;
  v185 = v142;
  v186 = v136;
  v187 = v138;
  v189 = v139;
  v190 = v140;
  v196 = v141;
  v203 = v188 & 1;
  LODWORD(v197) = v188 & 1;
  v202 = 0;
  v201 = 1;
  v204 = v136;
  *&v205 = v142;
  *(&v205 + 1) = v137;
  *&v206 = v138;
  *(&v206 + 1) = v139;
  *&v207 = v140;
  *(&v207 + 1) = v141;
  v146 = v199;
  v147 = v191;
  sub_1BD0D7F18(v199, v191, v188 & 1);
  v148 = v192;
  sub_1BE048C84();
  sub_1BE048964();
  v150 = v194;
  v149 = v195;
  sub_1BD2B5270(v63, v64, v194, v65);
  sub_1BD0DE19C(&v204, &v208, &qword_1EBD41A28, &qword_1BE0CB550);
  sub_1BD2B52C0(v63, v64, v150, v65, v149, v66, 0, v151);
  *&v200[7] = v204;
  *&v200[23] = v205;
  *&v200[39] = v206;
  *&v200[55] = v207;
  v152 = *v200;
  v153 = v193;
  *(v193 + 137) = *&v200[16];
  v154 = *&v200[48];
  *(v153 + 153) = *&v200[32];
  *(v153 + 169) = v154;
  v155 = v203;
  v156 = v202;
  v157 = v201;
  *v153 = v146;
  *(v153 + 8) = v147;
  *(v153 + 16) = v155;
  v158 = v148;
  *(v153 + 24) = v148;
  v159 = KeyPath;
  *(v153 + 32) = KeyPath;
  *(v153 + 40) = 1;
  *(v153 + 48) = v156;
  *(v153 + 56) = 0;
  *(v153 + 64) = v157;
  *(v153 + 72) = v63;
  *(v153 + 80) = v64;
  *(v153 + 88) = v150;
  *(v153 + 96) = v65;
  *(v153 + 104) = v149;
  *(v153 + 112) = v66;
  *(v153 + 120) = 0;
  *(v153 + 184) = *&v200[63];
  *(v153 + 121) = v152;
  v208 = v186;
  v209 = 0;
  v210 = v185;
  v211 = v184;
  v212 = v187;
  v213 = v189;
  v214 = v190;
  v215 = v196;
  sub_1BD0DE53C(&v208, &qword_1EBD41A28, &qword_1BE0CB550);
  sub_1BD2B52C0(v63, v64, v150, v65, v149, v66, 0, v160);
  sub_1BD0DDF10(v199, v147, v197, v161, v162, v163, v164, v165);
  v159, v166, v167, v168, v169, v170, v171, v172;
  v158, v173, v174, v175, v176, v177, v178, v179;
}

uint64_t sub_1BD30443C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitFoundInMailRowView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3044A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitFoundInMailRowView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD304504()
{
  v1 = *(type metadata accessor for FinanceKitFoundInMailRowView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BD302D80(v0 + v2, v3);
}

uint64_t sub_1BD30459C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41A40, &qword_1BE0CB708);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v30 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41A48, &qword_1BE0CB710);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41A50, &qword_1BE0CB718);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v30 - v11);
  v31 = *(v1 + 16);
  *&v32 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41A58, &qword_1BE0CB720);
  sub_1BE0516A4();
  v13 = v35;
  if (v35 == 255)
  {
    v30[0] = sub_1BE051404();
    KeyPath = swift_getKeyPath();
    v21 = swift_allocObject();
    v22 = *(v2 + 48);
    *(v21 + 48) = *(v2 + 32);
    *(v21 + 64) = v22;
    *(v21 + 80) = *(v2 + 64);
    v23 = *(v2 + 16);
    *(v21 + 16) = *v2;
    *(v21 + 32) = v23;
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41A60, &qword_1BE0CB738) + 36);
    v30[1] = a1;
    v25 = (v6 + v24);
    sub_1BE04E7B4();
    sub_1BD3065EC(v2, &v31);
    sub_1BE0528B4();
    *v25 = &unk_1BE0CB730;
    v25[1] = v21;
    v26 = v30[0];
    *v6 = KeyPath;
    v6[1] = v26;
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v27 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41A68, &qword_1BE0CB740) + 36));
    v28 = v32;
    *v27 = v31;
    v27[1] = v28;
    v27[2] = v33;
    *(v6 + *(v4 + 36)) = 257;
    sub_1BD0DE19C(v6, v9, &qword_1EBD41A40, &qword_1BE0CB708);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD41A70, &qword_1EBD41A50, &qword_1BE0CB718, MEMORY[0x1E6981880]);
    sub_1BD306D6C(&qword_1EBD41A78, &qword_1EBD41A40, &qword_1BE0CB708, sub_1BD306978);
    sub_1BE04F9A4();
    v17 = v6;
    v18 = &qword_1EBD41A40;
    v19 = &qword_1BE0CB708;
  }

  else
  {
    v14 = v34;
    *v12 = sub_1BE051CB4();
    v12[1] = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41AA8, &qword_1BE0CB758);
    sub_1BD3049E0(v2, v14, v13 & 1, v12 + *(v16 + 44));
    sub_1BD0DE19C(v12, v9, &qword_1EBD41A50, &qword_1BE0CB718);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD41A70, &qword_1EBD41A50, &qword_1BE0CB718, MEMORY[0x1E6981880]);
    sub_1BD306D6C(&qword_1EBD41A78, &qword_1EBD41A40, &qword_1BE0CB708, sub_1BD306978);
    sub_1BE04F9A4();
    sub_1BD306BF4(v14, v13);
    v17 = v12;
    v18 = &qword_1EBD41A50;
    v19 = &qword_1BE0CB718;
  }

  return sub_1BD0DE53C(v17, v18, v19);
}

uint64_t sub_1BD3049E0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41AB0, &qword_1BE0CB760);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32.i8[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32.i8[-v13];
  sub_1BD304C50(a2, a3 & 1, (v32.i64 - v13));
  sub_1BE051E54();
  v15 = &v14[*(v9 + 44)];
  *v15 = vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL);
  v15[1].i64[0] = v16;
  v15[1].i64[1] = v17;
  v18 = sub_1BE052434();
  v20 = v19;
  v21 = *a1;
  v22 = a1[1];
  v23 = swift_allocObject();
  v23[2] = v18;
  v23[3] = v20;
  v23[4] = v21;
  v23[5] = v22;
  sub_1BE051E74();
  v25 = v24;
  v27 = v26;
  LOBYTE(v37[0]) = 0;
  sub_1BD0DE19C(v14, v11, &qword_1EBD41AB0, &qword_1BE0CB760);
  sub_1BD0DE19C(v11, a4, &qword_1EBD41AB0, &qword_1BE0CB760);
  v28 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41AB8, &qword_1BE0CB768) + 48);
  *&v33 = sub_1BD306C0C;
  *(&v33 + 1) = v23;
  LOBYTE(v34) = 0;
  *(&v34 + 1) = v21;
  *v35 = v22;
  v32 = vdupq_n_s64(0x3FDD70A3D70A3D71uLL);
  *&v35[8] = v32;
  *&v35[24] = v25;
  v36 = v27;
  v29 = v34;
  *v28 = v33;
  *(v28 + 16) = v29;
  v30 = *&v35[16];
  *(v28 + 32) = *v35;
  *(v28 + 48) = v30;
  *(v28 + 64) = v36;
  sub_1BD0DE19C(&v33, v37, &qword_1EBD41AC0, &qword_1BE0CB770);
  sub_1BD0DE53C(v14, &qword_1EBD41AB0, &qword_1BE0CB760);
  v37[0] = sub_1BD306C0C;
  v37[1] = v23;
  v38 = 0;
  v39 = v21;
  v40 = v22;
  v41 = v32;
  v42 = v25;
  v43 = v27;
  sub_1BD0DE53C(v37, &qword_1EBD41AC0, &qword_1BE0CB770);
  return sub_1BD0DE53C(v11, &qword_1EBD41AB0, &qword_1BE0CB760);
}

id sub_1BD304C50@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v69 = a3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41AC8, &qword_1BE0CB778);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v64 - v5;
  v6 = sub_1BE051584();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41AD0, &unk_1BE0CB780);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v64 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v64 - v17;
  if ((a2 & 1) == 0)
  {
    v44 = a1;
    v45 = sub_1BE051544();
    (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
    v66 = sub_1BE0515E4();
    v45, v46, v47, v48, v49, v50, v51, v52;
    (*(v7 + 8))(v9, v6);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v65 = v72;
    v53 = v73;
    v54 = v74;
    v55 = v75;
    v56 = v76;
    v57 = v77;
    v71 = v73;
    v70 = v75;
    v58 = &v18[*(v10 + 36)];
    v59 = *(sub_1BE04EDE4() + 20);
    v60 = *MEMORY[0x1E697F468];
    v61 = sub_1BE04F684();
    (*(*(v61 - 8) + 104))(&v58[v59], v60, v61);
    __asm { FMOV            V0.2D, #8.0 }

    *v58 = _Q0;
    *&v58[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)] = 256;
    v63 = v65;
    *v18 = v66;
    *(v18 + 1) = v63;
    v18[16] = v53;
    *(v18 + 3) = v54;
    v18[32] = v55;
    *(v18 + 5) = v56;
    *(v18 + 6) = v57;
    *(v18 + 28) = 257;
    sub_1BD0DE19C(v18, v67, &qword_1EBD41AD0, &unk_1BE0CB780);
    swift_storeEnumTagMultiPayload();
    sub_1BD306C88();
    sub_1BE04F9A4();
    v43 = v18;
    return sub_1BD0DE53C(v43, &qword_1EBD41AD0, &unk_1BE0CB780);
  }

  sub_1BE049874();
  result = PKMapsIconForMerchantCategory();
  if (result)
  {
    v20 = sub_1BE051544();
    (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
    v66 = sub_1BE0515E4();
    v20, v21, v22, v23, v24, v25, v26, v27;
    (*(v7 + 8))(v9, v6);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v28 = v73;
    v29 = v74;
    v30 = v75;
    v31 = v76;
    v64 = v77;
    v65 = v72;
    v71 = v73;
    v70 = v75;
    v32 = &v12[*(v10 + 36)];
    v33 = *(sub_1BE04EDE4() + 20);
    v34 = *MEMORY[0x1E697F468];
    v35 = sub_1BE04F684();
    (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
    __asm { FMOV            V0.2D, #8.0 }

    *v32 = _Q0;
    *&v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)] = 256;
    v41 = v65;
    *v12 = v66;
    *(v12 + 1) = v41;
    v12[16] = v28;
    *(v12 + 3) = v29;
    v12[32] = v30;
    v42 = v64;
    *(v12 + 5) = v31;
    *(v12 + 6) = v42;
    *(v12 + 28) = 257;
    sub_1BD306C18(v12, v15);
    sub_1BD0DE19C(v15, v67, &qword_1EBD41AD0, &unk_1BE0CB780);
    swift_storeEnumTagMultiPayload();
    sub_1BD306C88();
    sub_1BE04F9A4();
    v43 = v15;
    return sub_1BD0DE53C(v43, &qword_1EBD41AD0, &unk_1BE0CB780);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD3051E0(uint64_t a1)
{
  v1[7] = a1;
  v1[8] = sub_1BE0528A4();
  v1[9] = sub_1BE052894();
  v1[10] = sub_1BE052894();
  v2 = swift_task_alloc();
  v1[11] = v2;
  *v2 = v1;
  v2[1] = sub_1BD305298;

  return sub_1BD305748();
}

uint64_t sub_1BD305298(uint64_t a1)
{
  v2 = *v1;
  v2[12] = a1;

  v4 = sub_1BE052844();
  v2[13] = v4;
  v2[14] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD3053E4, v4, v3);
}

uint64_t sub_1BD3053E4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (*(v8 + 96))
  {
    *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;
    *(v8 + 136) = *(v8 + 96);
    v10 = sub_1BE052844();

    return MEMORY[0x1EEE6DFA0](sub_1BD30568C, v10, v9);
  }

  else
  {
    v11 = swift_task_alloc();
    *(v8 + 120) = v11;
    *v11 = v8;
    v11[1] = sub_1BD3054DC;

    return sub_1BD305C98();
  }
}

uint64_t sub_1BD3054DC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 128) = a1;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1BD305604, v4, v3);
}

uint64_t sub_1BD305604(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 136) = *(v8 + 128);
  v10 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD30568C, v10, v9);
}

uint64_t sub_1BD30568C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 136);
  v10 = *(v8 + 96);
  v11 = *(v8 + 56);
  *(v8 + 72), a2, a3, a4, a5, a6, a7, a8;
  v12 = *(v11 + 16);
  *(v8 + 32) = *(v11 + 32);
  *(v8 + 16) = v12;
  *(v8 + 40) = v9;
  *(v8 + 48) = v10 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41A58, &qword_1BE0CB720);
  sub_1BE0516B4();
  v13 = *(v8 + 8);

  return v13();
}

uint64_t sub_1BD305748()
{
  v1[2] = v0;
  v2 = sub_1BE04D214();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1BE0528A4();
  v1[6] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD30583C, v4, v3);
}

uint64_t sub_1BD30583C()
{
  v1 = v0[2];
  sub_1BE0490F4();
  v0[9] = sub_1BE0490B4();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1BD305900;

  return MEMORY[0x1EEDC14F8](v2, v3, 1);
}

uint64_t sub_1BD305900(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 88) = a1;
  *(v4 + 96) = a2;
  *(v4 + 104) = v2;

  if (v2)
  {
    v12 = *(v4 + 56);
    v13 = *(v4 + 64);
    v14 = sub_1BD305AF8;
  }

  else
  {
    *(v4 + 72), v5, v6, v7, v8, v9, v10, v11;
    v12 = *(v4 + 56);
    v13 = *(v4 + 64);
    v14 = sub_1BD305A20;
  }

  return MEMORY[0x1EEE6DFA0](v14, v12, v13);
}

uint64_t sub_1BD305A20(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 96);
  *(v8 + 48), a2, a3, a4, a5, a6, a7, a8;
  if (v9 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v12 = *(v8 + 88);
    v11 = *(v8 + 96);
    v13 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    v14 = sub_1BE04AAB4();
    v10 = [v13 initWithData_];

    sub_1BD030220(v12, v11, v15, v16, v17, v18, v19, v20);
  }

  v21 = *(v8 + 8);

  return v21(v10);
}

uint64_t sub_1BD305AF8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 104);
  v10 = *(v8 + 72);
  *(v8 + 48), a2, a3, a4, a5, a6, a7, a8;
  v10, v11, v12, v13, v14, v15, v16, v17;
  sub_1BE04D054();
  v18 = v9;
  v19 = sub_1BE04D204();
  v20 = sub_1BE052C34();

  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v8 + 104);
  if (v21)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = v22;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v24 = v26;
    _os_log_impl(&dword_1BD026000, v19, v20, "Could not generate icon for mail item: %@", v23, 0xCu);
    sub_1BD0DE53C(v24, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v24, -1, -1);
    MEMORY[0x1BFB45F20](v23, -1, -1);
  }

  else
  {
  }

  (*(*(v8 + 32) + 8))(*(v8 + 40), *(v8 + 24));

  v27 = *(v8 + 8);

  return v27(0);
}

uint64_t sub_1BD305C98()
{
  v1[3] = v0;
  v2 = sub_1BE04D214();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = sub_1BE0528A4();
  v1[8] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[9] = v4;
  v1[10] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD305D90, v4, v3);
}

uint64_t sub_1BD305D90()
{
  v1 = objc_allocWithZone(MEMORY[0x1E699B240]);
  v2 = sub_1BE052404();
  v3 = [v1 initWithString_];

  if (v3 && (v11 = [v3 highLevelDomain], v3, v11))
  {
    v12 = sub_1BE052434();
    v14 = v13;

    *(v0 + 88) = v14;
    v15 = sub_1BE052894();
    *(v0 + 96) = v15;
    v16 = swift_task_alloc();
    *(v0 + 104) = v16;
    *(v16 + 16) = v12;
    *(v16 + 24) = v14;
    v17 = swift_task_alloc();
    *(v0 + 112) = v17;
    type metadata accessor for PKMerchantCategory(0);
    *v17 = v0;
    v17[1] = sub_1BD305F74;
    v19 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DE38](v0 + 16, v15, v19, 0xD000000000000010, 0x80000001BE122AF0, sub_1BD306DF0, v16, v18);
  }

  else
  {
    *(v0 + 64), v4, v5, v6, v7, v8, v9, v10;

    v20 = *(v0 + 8);

    return v20(0);
  }
}

uint64_t sub_1BD305F74()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v10 = *(v2 + 72);
    v11 = *(v2 + 80);
    v12 = sub_1BD30611C;
  }

  else
  {
    v13 = *(v2 + 96);
    *(v2 + 88), v3, v4, v5, v6, v7, v8, v9;
    v13, v14, v15, v16, v17, v18, v19, v20;

    v10 = *(v2 + 72);
    v11 = *(v2 + 80);
    v12 = sub_1BD3060AC;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

uint64_t sub_1BD3060AC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 64), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 16);

  v10 = *(v8 + 8);

  return v10(v9);
}

uint64_t sub_1BD30611C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 120);
  v10 = *(v8 + 96);
  v11 = *(v8 + 88);
  *(v8 + 64), a2, a3, a4, a5, a6, a7, a8;
  v11, v12, v13, v14, v15, v16, v17, v18;
  v10, v19, v20, v21, v22, v23, v24, v25;

  sub_1BE04D054();
  v26 = v9;
  v27 = sub_1BE04D204();
  v28 = sub_1BE052C34();

  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v8 + 120);
  if (v29)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    v33 = v30;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_1BD026000, v27, v28, "Could not generate category for mail item: %@", v31, 0xCu);
    sub_1BD0DE53C(v32, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v32, -1, -1);
    MEMORY[0x1BFB45F20](v31, -1, -1);
  }

  else
  {
  }

  (*(*(v8 + 40) + 8))(*(v8 + 48), *(v8 + 32));

  v35 = *(v8 + 8);

  return v35(0);
}

void sub_1BD3062D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41AF0, &qword_1BE0CB7B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  v8 = objc_opt_self();
  v9 = sub_1BE052404();
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(&v11[v10], v7, v4);
  aBlock[4] = sub_1BD306DF8;
  v21 = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD306530;
  aBlock[3] = &block_descriptor_53;
  v12 = _Block_copy(aBlock);
  v21, v13, v14, v15, v16, v17, v18, v19;
  [v8 merchantCategoryForDomain:v9 completion:v12];
  _Block_release(v12);
}

uint64_t sub_1BD3064B0(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41AF0, &qword_1BE0CB7B8);
    return sub_1BE052854();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41AF0, &qword_1BE0CB7B8);
    return sub_1BE052864();
  }
}

void sub_1BD306530(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1BE048964();
  v14 = a3;
  v6(a2, a3);
  v5, v7, v8, v9, v10, v11, v12, v13;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1BD306674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1BD3066BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI12MailItemIcon33_2C6649BC22EC7149CAD523C6E3265ED4LLV0F4TypeOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD306730(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD306778(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

unint64_t sub_1BD3067D8()
{
  result = qword_1EBD41A30;
  if (!qword_1EBD41A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41A38, qword_1BE0CB6B0);
    sub_1BD0DE4F4(&qword_1EBD419F0, &qword_1EBD419D8, &qword_1BE0CB4B0, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&qword_1EBD419F8, &qword_1EBD419E8, &qword_1BE0CB4C0, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41A30);
  }

  return result;
}

void sub_1BD3068D8(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

uint64_t sub_1BD3068E4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BD0F985C;

  return sub_1BD3051E0(v0 + 16);
}

unint64_t sub_1BD306978()
{
  result = qword_1EBD41A80;
  if (!qword_1EBD41A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41A68, &qword_1BE0CB740);
    sub_1BD306A04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41A80);
  }

  return result;
}

unint64_t sub_1BD306A04()
{
  result = qword_1EBD41A88;
  if (!qword_1EBD41A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41A60, &qword_1BE0CB738);
    sub_1BD306A90();
    sub_1BD306B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41A88);
  }

  return result;
}

unint64_t sub_1BD306A90()
{
  result = qword_1EBD41A90;
  if (!qword_1EBD41A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41A98, &unk_1BE0CB748);
    sub_1BD306B48();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41A90);
  }

  return result;
}

unint64_t sub_1BD306B48()
{
  result = qword_1EBD41AA0;
  if (!qword_1EBD41AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41AA0);
  }

  return result;
}

unint64_t sub_1BD306B9C()
{
  result = qword_1EBD37148;
  if (!qword_1EBD37148)
  {
    sub_1BE04E7B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD37148);
  }

  return result;
}

void sub_1BD306BF4(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1BD3068D8(a1, a2 & 1);
  }
}

uint64_t sub_1BD306C18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41AD0, &unk_1BE0CB780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD306C88()
{
  result = qword_1EBD41AD8;
  if (!qword_1EBD41AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41AD0, &unk_1BE0CB780);
    sub_1BD306D6C(&qword_1EBD41AE0, &qword_1EBD41AE8, &unk_1BE0CB790, sub_1BD1A3410);
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50, &unk_1BE0B7D20, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41AD8);
  }

  return result;
}

uint64_t sub_1BD306D6C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t sub_1BD306DF8(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41AF0, &qword_1BE0CB7B8);

  return sub_1BD3064B0(a1, a2);
}

unint64_t sub_1BD306E84()
{
  result = qword_1EBD41AF8;
  if (!qword_1EBD41AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41B00, &unk_1BE0CB7C0);
    sub_1BD0DE4F4(&qword_1EBD41A70, &qword_1EBD41A50, &qword_1BE0CB718, MEMORY[0x1E6981880]);
    sub_1BD306D6C(&qword_1EBD41A78, &qword_1EBD41A40, &qword_1BE0CB708, sub_1BD306978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41AF8);
  }

  return result;
}

uint64_t sub_1BD306F68(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  sub_1BD0D4534((v8 + 5));
  v8[8], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocClassInstance();
}

void sub_1BD306FDC(void (*a1)(unint64_t, unint64_t, void, uint64_t, __n128), uint64_t a2)
{
  v118 = a1;
  v119 = a2;
  v3 = sub_1BE04BAC4();
  v115 = *(v3 - 8);
  v116 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v114 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v117 = v2;
  v6 = sub_1BD187C30(v2, KeyPath);
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v21 = v6[2];
  v22 = v6 + 4;
  v123 = 0x80000001BE1182F0;
  v124 = 0x80000001BE118310;
  v121 = 0x80000001BE118280;
  v122 = 0x80000001BE1182A0;
  v120 = 0x80000001BE118260;
  while (2)
  {
    if (v21)
    {
      v23 = 0xEF65636976654420;
      switch(*v22)
      {
        case 1:
          v23 = 0x80000001BE118230;
          goto LABEL_3;
        case 2:
          v23 = 0xE90000000000006FLL;
          goto LABEL_3;
        case 3:
          v23 = 0xEC0000006E6F6974;
          goto LABEL_3;
        case 4:
          v23 = v120;
          goto LABEL_3;
        case 5:
          v23 = v121;
          goto LABEL_3;
        case 6:
          v23 = v122;
          goto LABEL_3;
        case 7:
          v23 = 0xEC000000746C7561;
          goto LABEL_3;
        case 8:
          v23 = 0xEE00746E656D6C6CLL;
          goto LABEL_3;
        case 9:
          v23 = 0xE90000000000006ELL;
          goto LABEL_3;
        case 0xA:
          v23 = 0xED00006E6F697461;
          goto LABEL_3;
        case 0xB:
          v23 = v123;
          goto LABEL_3;
        case 0xC:
          v6, v14, v15, v16, v17, v18, v19, v20;
          v6 = 0xEC00000068637461;
          goto LABEL_31;
        case 0xD:
          v23 = v124;
          goto LABEL_3;
        default:
LABEL_3:
          v24 = sub_1BE053B84();
          v23, v25, v26, v27, v28, v29, v30, v31;
          ++v22;
          --v21;
          if ((v24 & 1) == 0)
          {
            continue;
          }

LABEL_31:
          v6, v14, v15, v16, v17, v18, v19, v20;
          v41 = 0x6F63206775626564;
          v42 = 0xEC0000006769666ELL;
          v43 = 0;
          break;
      }

      goto LABEL_32;
    }

    break;
  }

  v6, v14, v15, v16, v17, v18, v19, v20;
  v32 = swift_getKeyPath();
  v33 = sub_1BD187DFC(v117, v32);
  v32, v34, v35, v36, v37, v38, v39, v40;
  if (v33)
  {
    v41 = 0xD00000000000001DLL;
    v42 = 0x80000001BE122BF0;
    v43 = 1;
LABEL_32:
    (v118)(v41, v42, 0, v43);
    return;
  }

  v124 = sub_1BE04BC84();
  if (![v124 passActivationState])
  {
    if ([v124 isCarKeyPass])
    {
      v44 = 0x2079656B20726163;
      v45 = 0xEC00000073736170;
      goto LABEL_24;
    }

    v47 = sub_1BE04BCE4();
    v49 = v47;
    if (v48)
    {
      if (v48 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630, &unk_1BE0CB870);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_1BE0B69E0;
        v51 = [v49 serialNumber];
        v52 = sub_1BE052434();
        v54 = v53;

        *(v50 + 32) = v52;
        *(v50 + 40) = v54;
        sub_1BD307F28(v49, 1u);
        goto LABEL_49;
      }

      if (v47)
      {
        v44 = 0xD000000000000026;
        v45 = 0x80000001BE122BA0;
        goto LABEL_24;
      }

LABEL_48:
      v50 = MEMORY[0x1E69E7CC0];
      goto LABEL_49;
    }

    v55 = [v47 devices];
    sub_1BD0E5E8C(0, &qword_1EBD41B08, 0x1E69B8870);
    v56 = sub_1BE052744();

    if (v56 >> 62)
    {
      v64 = sub_1BE053704();
      if (v64)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v64 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v64)
      {
LABEL_35:
        v122 = v49;
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1BD03B254(0, v64 & ~(v64 >> 63), 0, v59, v60, v61, v62, v63);
        if (v64 < 0)
        {
          __break(1u);
          return;
        }

        v65 = 0;
        v50 = aBlock[0];
        v66 = v56;
        v123 = v56 & 0xC000000000000001;
        v67 = v56;
        v68 = v64;
        do
        {
          if (v123)
          {
            v69 = MEMORY[0x1BFB40900](v65, v66);
          }

          else
          {
            v69 = v66[v65 + 4];
          }

          v70 = v69;
          v71 = [v70 serialNumber];
          v72 = sub_1BE052434();
          v74 = v73;

          aBlock[0] = v50;
          v81 = *(v50 + 16);
          v80 = *(v50 + 24);
          if (v81 >= v80 >> 1)
          {
            sub_1BD03B254((v80 > 1), v81 + 1, 1, v75, v76, v77, v78, v79);
            v50 = aBlock[0];
          }

          ++v65;
          *(v50 + 16) = v81 + 1;
          v82 = v50 + 16 * v81;
          *(v82 + 32) = v72;
          *(v82 + 40) = v74;
          v66 = v67;
        }

        while (v68 != v65);
        sub_1BD307F28(v122, 0);
        v67, v83, v84, v85, v86, v87, v88, v89;
LABEL_49:
        v90 = objc_opt_self();
        v91 = v124;
        v92 = v114;
        sub_1BE04BC34();
        v93 = sub_1BE04B9A4();
        (*(v115 + 8))(v92, v116);
        v94 = sub_1BE052724();
        v50, v95, v96, v97, v98, v99, v100, v101;
        v102 = swift_allocObject();
        v103 = v119;
        *(v102 + 16) = v118;
        *(v102 + 24) = v103;
        aBlock[4] = sub_1BD307F3C;
        v126 = v102;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD307AA0;
        aBlock[3] = &block_descriptor_11;
        v104 = _Block_copy(aBlock);
        v105 = v126;
        sub_1BE048964();
        v105, v106, v107, v108, v109, v110, v111, v112;
        [v90 shouldShowAddToWatchOfferForPass:v91 inContext:v93 externalProvisioningDeviceSerialNumbers:v94 completion:v104];

        _Block_release(v104);
        return;
      }
    }

    v56, v57, v58, v59, v60, v61, v62, v63;
    sub_1BD307F28(v49, 0);
    goto LABEL_48;
  }

  v44 = 0x746F6E2073736170;
  v45 = 0xEF65766974636120;
LABEL_24:
  (v118)(v44, v45, 0, 1);
  v46 = v124;
}

uint64_t sub_1BD3077E8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a2;
  v8 = sub_1BE051F54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BE051FA4();
  v12 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v15 = sub_1BE052D54();
  v16 = swift_allocObject();
  v17 = v30;
  *(v16 + 16) = v29;
  *(v16 + 24) = a5;
  *(v16 + 32) = a1;
  *(v16 + 40) = v17;
  *(v16 + 48) = a3;
  aBlock[4] = sub_1BD307F44;
  v33 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_17_0;
  v18 = _Block_copy(aBlock);
  v19 = v33;
  sub_1BE048C84();
  sub_1BE048964();
  v19, v20, v21, v22, v23, v24, v25, v26;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v14, v11, v18);
  _Block_release(v18);

  (*(v9 + 8))(v11, v8);
  return (*(v12 + 8))(v14, v31);
}

void sub_1BD307AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a3)
  {
    v6 = sub_1BE052434();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  sub_1BE048964();
  v5(a2, v6, v8);
  v4, v9, v10, v11, v12, v13, v14, v15;

  v8, v16, v17, v18, v19, v20, v21, v22;
}

unint64_t sub_1BD307B2C()
{
  v0 = sub_1BE04BAC4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BE04BD44();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:
    result, v5, v6, v7, v8, v9, v10, v11;
    return 2;
  }

  v54 = result;
  v55 = sub_1BE053704();
  result = v54;
  if (!v55)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v12 = result;
    v13 = MEMORY[0x1BFB40900](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = result;
    v13 = *(result + 32);
LABEL_6:
    v21 = v13;
    v12, v14, v15, v16, v17, v18, v19, v20;
    v22 = v21;
    sub_1BE04BC34();
    v23 = sub_1BE04B9A4();
    (*(v1 + 8))(v3, v0);
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = objc_allocWithZone(PKPaymentSetupAddToWatchOfferViewController);
    aBlock[4] = sub_1BD307F20;
    v57 = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD307EA8;
    aBlock[3] = &block_descriptor_54;
    v26 = _Block_copy(aBlock);
    v27 = v57;
    sub_1BE048964();
    v27, v28, v29, v30, v31, v32, v33, v34;
    v35 = [v25 initWithPaymentPass:v22 context:v23 dismissalHandler:v26];
    _Block_release(v26);
    v24, v36, v37, v38, v39, v40, v41, v42;

    if (v35)
    {
      sub_1BE052434();
      v44 = v43;
      v45 = v35;
      v46 = sub_1BE04BB74();
      v44, v47, v48, v49, v50, v51, v52, v53;
      [v45 setReporter_];
    }

    return v35;
  }

  __break(1u);
  return result;
}

double sub_1BD307DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = v5[6];
      ObjectType = swift_getObjectType();
      v15 = sub_1BE048964();
      sub_1BD8659A4(v15, &off_1F3B9DF80, ObjectType, v13);

      swift_unknownObjectRelease();
    }

    else
    {
      v5, v6, v7, v8, v9, v10, v11, v12;
    }
  }

  return result;
}

void sub_1BD307EA8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1BE048964();
  v14 = a2;
  v6(a2, a3);
  v5, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1BD307F28(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

void sub_1BD307F44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  if (v3)
  {
    v4 = *(v0 + 40);
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  sub_1BE048C84();
  v1(v2, v4, v5, 2);

  v5, v6, v7, v8, v9, v10, v11, v12;
}

id PKDataReleaseRelyingPartyCellConfiguration.__allocating_init(name:icon:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration_name];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration_icon] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id PKDataReleaseRelyingPartyCellConfiguration.init(name:icon:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration_name];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v3[OBJC_IVAR____TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration_icon] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id PKDataReleaseRelyingPartyCellConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *PKDataReleaseRelyingPartyCell.configuration.getter()
{
  v1 = OBJC_IVAR____TtC9PassKitUI29PKDataReleaseRelyingPartyCell_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PKDataReleaseRelyingPartyCell.configuration.setter(void *a1)
{
  sub_1BD308A68(a1);
}

void (*PKDataReleaseRelyingPartyCell.configuration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41B28, &qword_1BE0CB880);
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtC9PassKitUI29PKDataReleaseRelyingPartyCell_configuration;
  v5[11] = v8;
  v5[12] = v9;
  swift_beginAccess();
  return sub_1BD30844C;
}

void sub_1BD30844C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if (a2)
  {
    v5 = *(v3 + 88);
  }

  else
  {
    if (*(*(v3 + 64) + *(v3 + 96)))
    {
      v7 = *(v3 + 80);
      v6 = *(v3 + 88);
      v8 = *(v3 + 72);
      MEMORY[0x1EEE9AC00](v4);
      v10 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41B30, &qword_1BE0CB888);
      sub_1BD308C6C();
      sub_1BE04FCE4();
      sub_1BE0501D4();
      *(v3 + 24) = v8;
      *(v3 + 32) = sub_1BD0DE4F4(&qword_1EBD41B78, &qword_1EBD41B28, &qword_1BE0CB880, MEMORY[0x1E697C858]);
      __swift_allocate_boxed_opaque_existential_1(v3);
      sub_1BE04FCD4();

      (*(v7 + 8))(v6, v8);
    }

    else
    {
      *(v3 + 32) = 0;
      *v3 = 0u;
      *(v3 + 16) = 0u;
    }

    v11 = *(v3 + 88);
    MEMORY[0x1BFB3FEF0](v3);
    v5 = v11;
  }

  free(v5);
  free(v3);
}

double sub_1BD3085D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = *(a1 + OBJC_IVAR____TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration_name + 8);
  v23 = *(a1 + OBJC_IVAR____TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration_name);
  v3 = *(a1 + OBJC_IVAR____TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration_icon);
  sub_1BE048C84();
  if (v3)
  {
    v4 = v3;
    v21 = sub_1BE051544();
  }

  else
  {
    v21 = 0;
  }

  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = sub_1BE0501C4();
  sub_1BE04E1F4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_1BE0501F4();
  v17 = sub_1BE050324();
  v18 = swift_getKeyPath();
  v19 = sub_1BE051464();
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  *(a2 + 24) = 0;
  *(a2 + 32) = v23;
  *(a2 + 40) = v22;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = v21;
  *(a2 + 72) = 1;
  *(a2 + 80) = v7;
  *(a2 + 88) = v9;
  *(a2 + 96) = v11;
  *(a2 + 104) = v13;
  *(a2 + 112) = v15;
  *(a2 + 120) = 0;
  *(a2 + 128) = v16;
  result = 0.0;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 168) = 1;
  *(a2 + 176) = v18;
  *(a2 + 184) = v17;
  *(a2 + 192) = v19;
  return result;
}

id PKDataReleaseRelyingPartyCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PKDataReleaseRelyingPartyCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9PassKitUI29PKDataReleaseRelyingPartyCell_configuration] = 0;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id PKDataReleaseRelyingPartyCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKDataReleaseRelyingPartyCell.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9PassKitUI29PKDataReleaseRelyingPartyCell_configuration] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_1BD308A68(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41B28, &qword_1BE0CB880);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = OBJC_IVAR____TtC9PassKitUI29PKDataReleaseRelyingPartyCell_configuration;
  swift_beginAccess();
  v8 = *(v1 + v7);
  *(v1 + v7) = a1;
  v9 = a1;

  if (a1)
  {
    MEMORY[0x1EEE9AC00](v10);
    *(&v12 - 2) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41B30, &qword_1BE0CB888);
    sub_1BD308C6C();
    sub_1BE04FCE4();
    sub_1BE0501D4();
    *(&v13 + 1) = v3;
    v14 = sub_1BD0DE4F4(&qword_1EBD41B78, &qword_1EBD41B28, &qword_1BE0CB880, MEMORY[0x1E697C858]);
    __swift_allocate_boxed_opaque_existential_1(&v12);
    sub_1BE04FCD4();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
  }

  return MEMORY[0x1BFB3FEF0](&v12);
}

unint64_t sub_1BD308C6C()
{
  result = qword_1EBD41B38;
  if (!qword_1EBD41B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41B30, &qword_1BE0CB888);
    sub_1BD308D24();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210, &qword_1BE0C5180, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41B38);
  }

  return result;
}

unint64_t sub_1BD308D24()
{
  result = qword_1EBD41B40;
  if (!qword_1EBD41B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41B48, &qword_1BE0CB890);
    sub_1BD308E38(&qword_1EBD41B50, &qword_1EBD41B58, &qword_1BE0CB898, sub_1BD308E08);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41B40);
  }

  return result;
}

uint64_t sub_1BD308E38(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD308EBC()
{
  result = qword_1EBD41B70;
  if (!qword_1EBD41B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41B70);
  }

  return result;
}

uint64_t sub_1BD308F8C()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

id sub_1BD309000()
{
  *&v0[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accounts] = 0;
  *&v0[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_cardController] = 0;
  *&v0[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accountUserCollection] = 0;
  *&v0[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_recurringPayments] = 0;
  *&v0[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_familyMembers] = 0;
  *&v0[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accountUsers] = 0;
  v1 = &v0[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol];
  *v1 = 0xD000000000000015;
  *(v1 + 1) = 0x80000001BE118FF0;
  v2 = OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkColor;
  *&v0[v2] = [objc_opt_self() systemGreenColor];
  *&v0[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accountCardNumbersPresenter] = 0;
  *&v0[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager____lazy_storage___percentFormatter] = 0;
  swift_beginAccess();
  v9 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41C00, &qword_1BE0CB9F8);
  sub_1BE04D874();
  swift_endAccess();
  result = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  if (result)
  {
    *&v0[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_paymentDataProvider] = result;
    v8.receiver = v0;
    v8.super_class = type metadata accessor for AppleCardFeaturesAndBenefitsManager(0);
    v4 = objc_msgSendSuper2(&v8, sel_init);
    v5 = objc_opt_self();
    v6 = v4;
    result = [v5 sharedInstance];
    if (result)
    {
      v7 = result;
      [result registerObserver_];

      sub_1BD309550();
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD3091FC()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    [result unregisterObserver_];

    v3.receiver = v0;
    v3.super_class = type metadata accessor for AppleCardFeaturesAndBenefitsManager(0);
    return objc_msgSendSuper2(&v3, sel_dealloc);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for AppleCardFeaturesAndBenefitsManager(uint64_t a1)
{
  result = qword_1EBD41BE8;
  if (!qword_1EBD41BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD309490(uint64_t a1)
{
  sub_1BD3128D8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BD309550()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69B8658]) init];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = sub_1BD3145AC;
  v71 = v1;
  v66 = MEMORY[0x1E69E9820];
  v67 = 1107296256;
  v68 = sub_1BD3B2110;
  v69 = &block_descriptor_89;
  v2 = _Block_copy(&v66);
  v71, v3, v4, v5, v6, v7, v8, v9;
  [v0 addOperation_];
  _Block_release(v2);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = sub_1BD3145B4;
  v71 = v10;
  v66 = MEMORY[0x1E69E9820];
  v67 = 1107296256;
  v68 = sub_1BD3B2110;
  v69 = &block_descriptor_93_0;
  v11 = _Block_copy(&v66);
  v71, v12, v13, v14, v15, v16, v17, v18;
  [v0 addOperation_];
  _Block_release(v11);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = sub_1BD3145BC;
  v71 = v19;
  v66 = MEMORY[0x1E69E9820];
  v67 = 1107296256;
  v68 = sub_1BD3B2110;
  v69 = &block_descriptor_97_0;
  v20 = _Block_copy(&v66);
  v71, v21, v22, v23, v24, v25, v26, v27;
  [v0 addOperation_];
  _Block_release(v20);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = sub_1BD3145C4;
  v71 = v28;
  v66 = MEMORY[0x1E69E9820];
  v67 = 1107296256;
  v68 = sub_1BD3B2110;
  v69 = &block_descriptor_101;
  v29 = _Block_copy(&v66);
  v71, v30, v31, v32, v33, v34, v35, v36;
  [v0 addOperation_];
  _Block_release(v29);
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = sub_1BD3145CC;
  v71 = v37;
  v66 = MEMORY[0x1E69E9820];
  v67 = 1107296256;
  v68 = sub_1BD3B2110;
  v69 = &block_descriptor_105;
  v38 = _Block_copy(&v66);
  v71, v39, v40, v41, v42, v43, v44, v45;
  [v0 addOperation_];
  _Block_release(v38);
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = sub_1BD3145D4;
  v71 = v46;
  v66 = MEMORY[0x1E69E9820];
  v67 = 1107296256;
  v68 = sub_1BD3B2110;
  v69 = &block_descriptor_109;
  v47 = _Block_copy(&v66);
  v71, v48, v49, v50, v51, v52, v53, v54;
  [v0 addOperation_];
  _Block_release(v47);
  v55 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = sub_1BD3145DC;
  v71 = v56;
  v66 = MEMORY[0x1E69E9820];
  v67 = 1107296256;
  v68 = sub_1BD3B21E4;
  v69 = &block_descriptor_113;
  v57 = _Block_copy(&v66);
  v71, v58, v59, v60, v61, v62, v63, v64;
  v65 = [v0 evaluateWithInput:v55 completion:v57];
  _Block_release(v57);

  swift_unknownObjectRelease();
}

void sub_1BD309A14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v12 = swift_allocObject();
    v12[2] = v10;
    v12[3] = a3;
    v12[4] = a4;
    v12[5] = a2;
    aBlock[4] = sub_1BD314738;
    v24 = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD309FF0;
    aBlock[3] = &block_descriptor_186;
    v13 = _Block_copy(aBlock);
    v14 = v24;
    sub_1BE048964();
    v15 = a2;
    v14, v16, v17, v18, v19, v20, v21, v22;
    [v9 accountsWithCompletion_];
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD309B84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v50 = a5;
  v51 = a6;
  v49 = a1;
  v9 = sub_1BE051F54();
  v54 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE051FA4();
  v52 = *(v12 - 8);
  v53 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04D214();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v47 = a4;
    v48 = a3;
    v19 = a2;
    sub_1BE04D184();
    v20 = a2;
    v21 = sub_1BE04D204();
    v22 = sub_1BE052C34();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v46 = v9;
      v24 = v23;
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = a2;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_1BD026000, v21, v22, "error loading accounts info: %@", v24, 0xCu);
      sub_1BD0DE53C(v25, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v25, -1, -1);
      v28 = v24;
      v9 = v46;
      MEMORY[0x1BFB45F20](v28, -1, -1);
    }

    else
    {
    }

    (*(v16 + 8))(v18, v15);
    a4 = v47;
    a3 = v48;
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v29 = sub_1BE052D54();
  v30 = swift_allocObject();
  v31 = v49;
  v32 = v50;
  v30[2] = a3;
  v30[3] = v31;
  v30[4] = a4;
  v30[5] = v32;
  v33 = v51;
  v30[6] = v51;
  aBlock[4] = sub_1BD3147AC;
  v56 = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_192;
  v34 = _Block_copy(aBlock);
  v35 = v56;
  sub_1BE048C84();
  sub_1BE048964();
  v36 = v33;
  sub_1BE048964();
  v35, v37, v38, v39, v40, v41, v42, v43;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v14, v11, v34);
  _Block_release(v34);

  (*(v54 + 8))(v11, v9);
  return (*(v52 + 8))(v14, v53);
}

void sub_1BD30A004(uint64_t a1, void *a2, void (*a3)(void *, void), uint64_t a4, uint64_t a5)
{
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v13 = Strong, v14 = sub_1BD30C28C(), v13, v14))
  {
    v15 = [objc_opt_self() sharedInstance];
    if (v15)
    {
      v16 = v15;
      v17 = [v14 accountIdentifier];
      v18 = swift_allocObject();
      swift_beginAccess();
      v19 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v20 = swift_allocObject();
      v20[2] = v18;
      v20[3] = a3;
      v20[4] = a4;
      v20[5] = a2;
      aBlock[4] = sub_1BD3146FC;
      v35 = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD30A6F0;
      aBlock[3] = &block_descriptor_173;
      v21 = _Block_copy(aBlock);
      v22 = v35;
      sub_1BE048964();
      v23 = a2;
      v22, v24, v25, v26, v27, v28, v29, v30;
      [v16 accountUsersForAccountWithIdentifier:v17 completion:v21];
      _Block_release(v21);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1BE04D184();
    v31 = sub_1BE04D204();
    v32 = sub_1BE052C34();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1BD026000, v31, v32, "no card account", v33, 2u);
      MEMORY[0x1BFB45F20](v33, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    a3(a2, 0);
  }
}

uint64_t sub_1BD30A304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v29 = a5;
  v9 = sub_1BE051F54();
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BE051FA4();
  v12 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v30 = sub_1BE052D54();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v16 = v29;
  v15[6] = v29;
  aBlock[4] = sub_1BD314708;
  v34 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_179;
  v17 = _Block_copy(aBlock);
  v18 = v34;
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  v19 = v16;
  v18, v20, v21, v22, v23, v24, v25, v26;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v27 = v30;
  MEMORY[0x1BFB3FDF0](0, v14, v11, v17);
  _Block_release(v17);

  (*(v32 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v31);
}

uint64_t sub_1BD30A5D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = objc_allocWithZone(MEMORY[0x1E69B8450]);
      sub_1BD0E5E8C(0, &qword_1EBD41C18, 0x1E69B8448);
      sub_1BD214890(&qword_1EBD41C20, &qword_1EBD41C18, 0x1E69B8448);
      v10 = sub_1BE052A24();
      v11 = [v9 initWithAccountUsers_];

      v12 = *&v8[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accountUserCollection];
      *&v8[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accountUserCollection] = v11;
    }
  }

  return (a3)(a5, 0, a3, a4);
}

void sub_1BD30A70C(uint64_t a1, void *a2, void (*a3)(void *, void), uint64_t a4, uint64_t a5)
{
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accountUserCollection);
    v14 = Strong;
    v15 = v13;

    if (v13)
    {
      v16 = [v15 currentAccountUser];

      if (v16)
      {
        swift_beginAccess();
        v17 = swift_unknownObjectWeakLoadStrong();
        if (v17)
        {
          v18 = v17;
          v19 = sub_1BD30C28C();

          if (v19)
          {
            v20 = [objc_opt_self() sharedInstance];
            if (v20)
            {
              v21 = v20;
              v22 = [v19 accountIdentifier];
              v23 = swift_allocObject();
              swift_beginAccess();
              v24 = swift_unknownObjectWeakLoadStrong();
              swift_unknownObjectWeakInit();

              v25 = swift_allocObject();
              v25[2] = v23;
              v25[3] = v19;
              v25[4] = v16;
              v25[5] = a3;
              v25[6] = a4;
              v25[7] = a2;
              aBlock[4] = sub_1BD3146D8;
              v43 = v25;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1BD30AEC0;
              aBlock[3] = &block_descriptor_160;
              v26 = _Block_copy(aBlock);
              v27 = v43;
              v28 = v19;
              v29 = v16;
              sub_1BE048964();
              v30 = a2;
              v27, v31, v32, v33, v34, v35, v36, v37;
              [v21 physicalCardsForAccountWithIdentifier:v22 completion:v26];
              _Block_release(v26);
            }

            else
            {
              __break(1u);
            }

            return;
          }
        }
      }
    }
  }

  sub_1BE04D184();
  v38 = sub_1BE04D204();
  v39 = sub_1BE052C34();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1BD026000, v38, v39, "no accountUserCollection or card account", v40, 2u);
    MEMORY[0x1BFB45F20](v40, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  a3(a2, 0);
}

uint64_t sub_1BD30AA88(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v35 = a6;
  v36 = a7;
  v34 = a5;
  v37 = sub_1BE051F54();
  v41 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE051FA4();
  v39 = *(v13 - 8);
  v40 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v38 = sub_1BE052D54();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a1;
  v17 = v35;
  v16[6] = v34;
  v16[7] = v17;
  v18 = v36;
  v16[8] = v36;
  aBlock[4] = sub_1BD3146E8;
  v43 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_166;
  v19 = _Block_copy(aBlock);
  v20 = v43;
  sub_1BE048C84();
  sub_1BE048964();
  v21 = v18;
  sub_1BE048964();
  v22 = a3;
  v23 = a4;
  v20, v24, v25, v26, v27, v28, v29, v30;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  v31 = v37;
  sub_1BE053664();
  v32 = v38;
  MEMORY[0x1BFB3FDF0](0, v15, v12, v19);
  _Block_release(v19);

  (*(v41 + 8))(v12, v31);
  return (*(v39 + 8))(v15, v40);
}

uint64_t sub_1BD30AD68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, void), uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [objc_opt_self() sharedInstance];
    if (a4)
    {
      sub_1BD0E5E8C(0, &qword_1EBD41C08, 0x1E69B9060);
      sub_1BD214890(&qword_1EBD41C10, &qword_1EBD41C08, 0x1E69B9060);
      a4 = sub_1BE052A24();
    }

    v15 = [objc_allocWithZone(PKPhysicalCardController) initWithAccountService:v14 paymentPass:0 account:a2 accountUser:a3 physicalCards:a4];

    v16 = *&v13[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_cardController];
    *&v13[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_cardController] = v15;
  }

  return a5(a7, 0);
}

void sub_1BD30AEDC(uint64_t a1, void *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v5 = a2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    sub_1BD0E5E8C(0, a3, a4);
    sub_1BD214890(a5, a3, a4);
    v5 = sub_1BE052A34();
  }

  sub_1BE048964();
  v7(v5);
  v6, v11, v12, v13, v14, v15, v16, v17;

  v5, v18, v19, v20, v21, v22, v23, v24;
}

void sub_1BD30AF90(uint64_t a1, void *a2, void (*a3)(void *, void), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v9 = Strong, v10 = sub_1BD30C28C(), v9, v10))
  {
    v11 = [objc_opt_self() sharedInstance];
    if (v11)
    {
      v12 = v11;
      v13 = [v10 accountIdentifier];
      v14 = swift_allocObject();
      swift_beginAccess();
      v15 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v16 = swift_allocObject();
      v16[2] = v14;
      v16[3] = a3;
      v16[4] = a4;
      v16[5] = a2;
      v27[4] = sub_1BD3146C0;
      v28 = v16;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 1107296256;
      v27[2] = sub_1BD30B550;
      v27[3] = &block_descriptor_147;
      v17 = _Block_copy(v27);
      v18 = v28;
      sub_1BE048964();
      v19 = a2;
      v18, v20, v21, v22, v23, v24, v25, v26;
      [v12 scheduledPaymentsWithAccountIdentifier:v13 includeFailedRecurringPayments:1 completion:v17];
      _Block_release(v17);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    a3(a2, 0);
  }
}

uint64_t sub_1BD30B184(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v45 = a3;
  v46 = a5;
  v44 = a4;
  v8 = sub_1BE051F54();
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE051FA4();
  v13 = *(v12 - 8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v47 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v16;
  if (a1)
  {
    v41 = v13;
    v42 = v11;
    v43 = v9;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    if (a1 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
    {
      v39 = a6;
      v40 = v8;
      a6 = 0;
      v8 = &selRef_initWithVerificationController_fieldsModel_;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1BFB40900](a6, a1, v14);
        }

        else
        {
          if (a6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v18 = *(a1 + 8 * a6 + 32);
        }

        v19 = v18;
        v20 = a6 + 1;
        if (__OFADD__(a6, 1))
        {
          break;
        }

        if ([v18 isRecurring])
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        else
        {
        }

        ++a6;
        if (v20 == i)
        {
          v21 = aBlock[0];
          a6 = v39;
          v8 = v40;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v21 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v11 = v42;
    v9 = v43;
    v13 = v41;
  }

  else
  {
    v21 = 0;
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v22 = sub_1BE052D54();
  v23 = swift_allocObject();
  v24 = v44;
  v23[2] = v45;
  v23[3] = v21;
  v25 = v46;
  v23[4] = v24;
  v23[5] = v25;
  v23[6] = a6;
  aBlock[4] = sub_1BD3146CC;
  v50 = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_153;
  v26 = a6;
  v27 = _Block_copy(aBlock);
  v28 = v50;
  sub_1BE048964();
  sub_1BE048964();
  v29 = v26;
  v28, v30, v31, v32, v33, v34, v35, v36;
  v37 = v47;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v37, v11, v27);
  _Block_release(v27);

  (*(v9 + 8))(v11, v8);
  return (*(v13 + 8))(v37, v48);
}

void sub_1BD30B564(uint64_t a1, void *a2, void *a3, unint64_t *a4, void *a5)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_1BD0E5E8C(0, a4, a5);
    v6 = sub_1BE052744();
  }

  sub_1BE048964();
  v9 = a3;
  v8(v6, a3);
  v7, v10, v11, v12, v13, v14, v15, v16;

  v6, v17, v18, v19, v20, v21, v22, v23;
}

void sub_1BD30B600(uint64_t a1, void *a2, void (*a3)(void *, void), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v10 = Strong, v11 = sub_1BD30C28C(), v10, v11))
  {
    v12 = [objc_opt_self() sharedInstance];
    if (v12)
    {
      v13 = v12;
      v14 = [v11 accountIdentifier];
      v15 = swift_allocObject();
      v15[2] = a5;
      v15[3] = a3;
      v15[4] = a4;
      v15[5] = a2;
      aBlock[4] = sub_1BD314648;
      v27 = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD30A6F0;
      aBlock[3] = &block_descriptor_134_0;
      v16 = _Block_copy(aBlock);
      v17 = v27;
      sub_1BE048964();
      sub_1BE048964();
      v18 = a2;
      v17, v19, v20, v21, v22, v23, v24, v25;
      [v13 accountUsersForAccountWithIdentifier:v14 completion:v16];
      _Block_release(v16);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    a3(a2, 0);
  }
}

uint64_t sub_1BD30B7B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void), uint64_t a4, uint64_t a5, uint64_t *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *a6;
    v12 = *(Strong + *a6);
    *(Strong + v11) = a2;
    v13 = Strong;
    sub_1BE048C84();

    v12, v14, v15, v16, v17, v18, v19, v20;
  }

  return a3(a5, 0);
}

void sub_1BD30B850(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_paymentDataProvider);

    v12 = swift_allocObject();
    v12[2] = a5;
    v12[3] = a3;
    v12[4] = a4;
    v12[5] = a2;
    aBlock[4] = sub_1BD3145EC;
    v24 = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD30BE08;
    aBlock[3] = &block_descriptor_122;
    v13 = _Block_copy(aBlock);
    v14 = v24;
    sub_1BE048964();
    sub_1BE048964();
    v15 = a2;
    v14, v16, v17, v18, v19, v20, v21, v22;
    [v11 familyMembersWithCompletion_];
    _Block_release(v13);
  }
}

uint64_t sub_1BD30B990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v33 = a5;
  v34 = a7;
  v32 = a3;
  v11 = sub_1BE051F54();
  v38 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1BE051FA4();
  v14 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v35 = sub_1BE052D54();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a1;
  v18 = v33;
  v17[4] = v32;
  v17[5] = a4;
  v17[6] = v18;
  aBlock[4] = v34;
  v40 = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = v36;
  v19 = _Block_copy(aBlock);
  v20 = v40;
  sub_1BE048C84();
  sub_1BE048964();
  v21 = v18;
  sub_1BE048964();
  v20, v22, v23, v24, v25, v26, v27, v28;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v29 = v35;
  MEMORY[0x1BFB3FDF0](0, v16, v13, v19);
  _Block_release(v19);

  (*(v38 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v37);
}

uint64_t sub_1BD30BC50(uint64_t a1, unint64_t a2, uint64_t (*a3)(void, void), uint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v26 = MEMORY[0x1E69E7CC0];
      if (a2 >> 62)
      {
        goto LABEL_19;
      }

      for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; Strong = v13)
      {
        v23 = Strong;
        v24 = a5;
        v25 = a3;
        v10 = 0;
        a3 = (a2 & 0xC000000000000001);
        while (1)
        {
          if (a3)
          {
            Strong = MEMORY[0x1BFB40900](v10, a2);
          }

          else
          {
            if (v10 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }

            Strong = *(a2 + 8 * v10 + 32);
          }

          v11 = Strong;
          a5 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if ([Strong status])
          {
            sub_1BE0538C4();
            sub_1BE0538F4();
            sub_1BE053904();
            Strong = sub_1BE0538D4();
          }

          else
          {
          }

          ++v10;
          if (a5 == i)
          {
            a3 = v25;
            v12 = v26;
            a5 = v24;
            Strong = v23;
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        v13 = Strong;
        i = sub_1BE053704();
      }

      v12 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v12 = 0;
    }

LABEL_21:
    v14 = *&Strong[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_familyMembers];
    *&Strong[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_familyMembers] = v12;

    v14, v15, v16, v17, v18, v19, v20, v21;
  }

  return a3(a5, 0);
}

void sub_1BD30BE08(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD41C28, 0x1E69B8898);
    v2 = sub_1BE052744();
  }

  sub_1BE048964();
  v4(v2);
  v3, v5, v6, v7, v8, v9, v10, v11;

  v2, v12, v13, v14, v15, v16, v17, v18;
}

uint64_t sub_1BD30BE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1BE051F54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FA4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v13 = sub_1BE052D54();
  aBlock[4] = sub_1BD3145E4;
  v25 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_116;
  v14 = _Block_copy(aBlock);
  v15 = v25;
  sub_1BE048964();
  v15, v16, v17, v18, v19, v20, v21, v22;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v10 + 8))(v12, v9);
}

void sub_1BD30C110(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1BD30C390();
  }
}

void *sub_1BD30C164()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accounts);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
    {
      sub_1BE048C84();
      if (!i)
      {
        break;
      }

      v10 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1BFB40900](v10, v1);
        }

        else
        {
          if (v10 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v11 = *(v1 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if ([v11 type] == 4 && objc_msgSend(v12, sel_state) != 4)
        {
          v1, v14, v15, v16, v17, v18, v19, v20;
          return v12;
        }

        ++v10;
        if (v13 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_15:
    v1, v3, v4, v5, v6, v7, v8, v9;
  }

  return 0;
}

void *sub_1BD30C28C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accounts);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
    {
      sub_1BE048C84();
      if (!i)
      {
        break;
      }

      v10 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1BFB40900](v10, v1);
        }

        else
        {
          if (v10 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v11 = *(v1 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if ([v11 type] == 1)
        {
          v1, v14, v15, v16, v17, v18, v19, v20;
          return v12;
        }

        ++v10;
        if (v13 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_14:
    v1, v3, v4, v5, v6, v7, v8, v9;
  }

  return 0;
}

uint64_t sub_1BD30C390()
{
  if (PKIsPhone())
  {
    sub_1BD30E87C(v38);
    v9 = sub_1BD1D8694(0, 1, 1, MEMORY[0x1E69E7CC0], v1, v2, v3, v4);
    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1BD1D8694((v10 > 1), v11 + 1, 1, v9, v5, v6, v7, v8);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[56 * v11];
    v13 = v38[1];
    *(v12 + 2) = v38[0];
    *(v12 + 3) = v13;
    *(v12 + 4) = v38[2];
    *(v12 + 10) = v39;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  sub_1BD310F80(v40);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1BD1D8694(0, *(v9 + 2) + 1, 1, v9, v14, v15, v16, v17);
  }

  v19 = *(v9 + 2);
  v18 = *(v9 + 3);
  if (v19 >= v18 >> 1)
  {
    v9 = sub_1BD1D8694((v18 > 1), v19 + 1, 1, v9, v14, v15, v16, v17);
  }

  *(v9 + 2) = v19 + 1;
  v20 = &v9[56 * v19];
  v21 = v40[0];
  v22 = v40[1];
  v23 = v40[2];
  *(v20 + 10) = v41;
  *(v20 + 3) = v22;
  *(v20 + 4) = v23;
  *(v20 + 2) = v21;
  v24 = sub_1BD30C28C();
  if (v24)
  {
    v25 = v24;
    if ([objc_opt_self() canInviteAccountUserWithAccount_])
    {
      sub_1BD312178(v42);
      v31 = *(v9 + 2);
      v30 = *(v9 + 3);
      if (v31 >= v30 >> 1)
      {
        v9 = sub_1BD1D8694((v30 > 1), v31 + 1, 1, v9, v26, v27, v28, v29);
      }

      *(v9 + 2) = v31 + 1;
      v32 = &v9[56 * v31];
      v33 = v42[0];
      v34 = v42[1];
      v35 = v42[2];
      *(v32 + 10) = v43;
      *(v32 + 3) = v34;
      *(v32 + 4) = v35;
      *(v32 + 2) = v33;
    }

    else
    {
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v0;
  return sub_1BE04D8C4();
}

id sub_1BD30C5B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = *MEMORY[0x1E69B80B0];
  v12 = *(v4 + 104);
  v12(&v29 - v9, v11, v3, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v29 = v16;
    v30 = v15;

    v17 = *(v4 + 8);
    v17(v10, v3);
    (v12)(v6, v11, v3);
    result = PKPassKitBundle();
    if (result)
    {
      v18 = result;
      v19 = sub_1BE04B6F4();
      v21 = v20;

      v17(v6, v3);
      v23 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol);
      v22 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol + 8);
      v24 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkColor);
      sub_1BE048C84();
      v25 = v24;
      v26 = sub_1BD313F8C();
      v27 = swift_allocObject();
      result = swift_unknownObjectWeakInit();
      v32 = 0;
      *a1 = 0xD000000000000012;
      *(a1 + 8) = 0x80000001BE123780;
      v28 = v29;
      *(a1 + 16) = v30;
      *(a1 + 24) = v28;
      *(a1 + 32) = v19;
      *(a1 + 40) = v21;
      *(a1 + 48) = v23;
      *(a1 + 56) = v22;
      *(a1 + 64) = v24;
      *(a1 + 72) = v26;
      *(a1 + 80) = xmmword_1BE0CB9B0;
      *(a1 + 96) = 0;
      *(a1 + 97) = *v31;
      *(a1 + 100) = *&v31[3];
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = sub_1BD31457C;
      *(a1 + 128) = v27;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD30C854()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accounts);
  if (!v1)
  {
    return 0;
  }

  if (v1 >> 62)
  {
LABEL_25:
    v2 = sub_1BE053704();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1BE048C84();
  if (!v2)
  {
LABEL_15:
    v1, v3, v4, v5, v6, v7, v8, v9;
    return 0;
  }

  v10 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1BFB40900](v10, v1);
    }

    else
    {
      if (v10 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v11 = *(v1 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if ([v11 type] == 4 && objc_msgSend(v12, sel_state) != 4)
    {
      break;
    }

    ++v10;
    if (v13 == v2)
    {
      goto LABEL_15;
    }
  }

  v1, v14, v15, v16, v17, v18, v19, v20;
  v21 = [objc_allocWithZone(PKAccountViewInterfaceConfiguration) init];
  [v21 setAccount_];
  result = [v12 savingsDetails];
  if (result)
  {
    v23 = result;
    v24 = [result fccStepUpDetails];

    if (v24 && (v25 = [v24 thresholdExceeded], v24, (v25 & 1) != 0))
    {
      v26 = 11;
    }

    else
    {
      v26 = 0;
    }

    [v21 setDestination_];
    v27 = [objc_opt_self() initialAccountViewControllerWithConfiguration_];

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD30CA54()
{
  v1 = OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager____lazy_storage___percentFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager____lazy_storage___percentFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager____lazy_storage___percentFormatter);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v5 setNumberStyle_];
    [v5 setMinimumFractionDigits_];
    sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
    v6 = sub_1BE053054();
    [v5 setMultiplier_];

    v7 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1BD30CB34(uint64_t a1@<X8>)
{
  v94 = sub_1BE04BD74();
  v3 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v86 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v86 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v86 - v12;
  v14 = sub_1BD30C28C();
  v92 = v1;
  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = v14;
  v16 = [v14 redeemRewardsFeatureDescriptor];

  if (!v16)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = [v16 productForFeature_];

  if (!v17)
  {
LABEL_11:
    v91 = 0;
    goto LABEL_13;
  }

  v18 = sub_1BE052434();
  v20 = v19;
  v95 = v18;
  v96 = v19;
  sub_1BE048C84();
  v21 = v17;
  sub_1BE0537C4();
  v22 = [v21 clientInfo];
  if (v22)
  {
    v23 = v22;
    v91 = v21;

    v20, v24, v25, v26, v27, v28, v29, v30;
    v31 = sub_1BE052244();

    if (v31[2])
    {
      v39 = sub_1BD149040(v97);
      if (v32)
      {
        sub_1BD038CD0(v31[7] + 32 * v39, &v98);
        sub_1BD149CE8(v97);
        v31, v40, v41, v42, v43, v44, v45, v46;
        if (*(&v99 + 1))
        {
          sub_1BD0E5E8C(0, &qword_1EBD38840, 0x1E696AB90);
          if (swift_dynamicCast())
          {
            v47 = v97[0];
            v48 = sub_1BD30CA54();
            v49 = [v48 stringFromNumber_];

            v90 = v47;
            if (v49)
            {
              v50 = sub_1BE052434();
              v88 = v51;
              v89 = v50;

              v87 = "EFITS_SAVINGS_SET_UP_ACTION";
              v52 = *MEMORY[0x1E69B80B0];
              v53 = v3;
              v54 = v47;
              v55 = *(v3 + 104);
              v56 = v94;
              v55(v13, v52, v94);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
              v57 = swift_allocObject();
              *(v57 + 16) = xmmword_1BE0B69E0;
              *(v57 + 56) = MEMORY[0x1E69E6158];
              *(v57 + 64) = sub_1BD110550();
              v58 = v88;
              *(v57 + 32) = v89;
              *(v57 + 40) = v58;
              v59 = sub_1BE04B714();
              v88 = v60;
              v89 = v59;

              v57, v61, v62, v63, v64, v65, v66, v67;
              v10 = v13;
              goto LABEL_18;
            }

LABEL_16:
            v52 = *MEMORY[0x1E69B80B0];
            v53 = v3;
            v55 = *(v3 + 104);
            v56 = v94;
            v55(v10, v52, v94);
            v68 = PKPassKitBundle();
            if (!v68)
            {
LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

            v69 = v68;
            v70 = sub_1BE04B6F4();
            v88 = v71;
            v89 = v70;

LABEL_18:
            v72 = *(v53 + 8);
            v72(v10, v56);
            v55(v7, v52, v56);
            v73 = PKPassKitBundle();
            if (v73)
            {
              v74 = v73;
              v94 = sub_1BE04B6F4();
              v87 = v75;

              v72(v7, v56);
              v76 = sub_1BD313F8C();
              v77 = v93;
              v55(v93, v52, v56);
              v78 = PKPassKitBundle();
              if (v78)
              {
                v79 = v78;
                v80 = sub_1BE04B6F4();
                v82 = v81;

                v72(v77, v56);
                v83 = swift_allocObject();
                swift_unknownObjectWeakInit();
                LOBYTE(v98) = 0;
                *a1 = 0xD000000000000013;
                *(a1 + 8) = 0x80000001BE123700;
                v84 = v87;
                *(a1 + 16) = v94;
                *(a1 + 24) = v84;
                v85 = v88;
                *(a1 + 32) = v89;
                *(a1 + 40) = v85;
                *(a1 + 48) = 0;
                *(a1 + 56) = 0;
                *(a1 + 64) = 0;
                *(a1 + 72) = v76;
                *(a1 + 80) = xmmword_1BE0CB9B0;
                *(a1 + 96) = 0;
                *(a1 + 97) = v97[0];
                *(a1 + 100) = *(v97 + 3);
                *(a1 + 104) = v80;
                *(a1 + 112) = v82;
                *(a1 + 120) = sub_1BD31454C;
                *(a1 + 128) = v83;
                return;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            goto LABEL_24;
          }

LABEL_15:
          v90 = 0;
          goto LABEL_16;
        }

LABEL_14:
        sub_1BD0DE53C(&v98, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        goto LABEL_15;
      }
    }

    v31, v32, v33, v34, v35, v36, v37, v38;
    sub_1BD149CE8(v97);
LABEL_13:
    v98 = 0u;
    v99 = 0u;
    goto LABEL_14;
  }

LABEL_26:
  __break(1u);
}

void sub_1BD30D15C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accounts);
  if (v1)
  {
    if (v1 >> 62)
    {
LABEL_27:
      v2 = sub_1BE053704();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1BE048C84();
    if (v2)
    {
      v10 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1BFB40900](v10, v1);
        }

        else
        {
          if (v10 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v11 = *(v1 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        if ([v11 type] == 1)
        {
          break;
        }

        ++v10;
        if (v13 == v2)
        {
          goto LABEL_14;
        }
      }

      v1, v14, v15, v16, v17, v18, v19, v20;
      v21 = [v12 redeemRewardsFeatureDescriptor];

      if (!v21)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      v22 = [v21 productForFeature_];

      if (!v22)
      {
        return;
      }

      v23 = [objc_opt_self() sharedService];
      v24 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService_];

      v25 = [v22 onboardingItems];
      if (!v25)
      {
        goto LABEL_34;
      }

      v26 = v25;
      sub_1BD0E5E8C(0, &unk_1EBD41C48, 0x1E69B8818);
      v27 = sub_1BE052744();

      if (v27 >> 62)
      {
        if (sub_1BE053704())
        {
          goto LABEL_21;
        }
      }

      else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_21:
        if ((v27 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x1BFB40900](0, v27);
          goto LABEL_24;
        }

        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v35 = *(v27 + 32);
LABEL_24:
          v36 = v35;
LABEL_30:
          v27, v28, v29, v30, v31, v32, v33, v34;
          v37 = objc_allocWithZone(PKFeatureOnBoardingViewController);
          v38 = v22;
          [v37 initWithParentFlowController:0 setupDelegate:0 setupContext:0 onboardingContext:0 featureIdentifier:5 provisioningController:v24 paymentSetupProduct:v38 currentPage:v36];

          return;
        }

        __break(1u);
        goto LABEL_33;
      }

      v36 = 0;
      goto LABEL_30;
    }

LABEL_14:
    v1, v3, v4, v5, v6, v7, v8, v9;
  }
}

id sub_1BD30D414@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - v11;
  v13 = *MEMORY[0x1E69B80B0];
  v14 = *(v3 + 104);
  v14(&v32 - v11, v13, v2, v10);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v16 = result;
  v17 = sub_1BE04B6F4();
  v37 = v18;
  v38 = v17;

  v19 = *(v3 + 8);
  v19(v12, v2);
  (v14)(v8, v13, v2);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v20 = result;
  v21 = sub_1BE04B6F4();
  v35 = v22;
  v36 = v21;

  v19(v8, v2);
  v34 = sub_1BD314128(0xD000000000000015, 0x80000001BE123530);
  v33 = [objc_opt_self() blackColor];
  (v14)(v5, v13, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v23 = result;
    v24 = sub_1BE04B6F4();
    v26 = v25;

    v19(v5, v2);
    v27 = swift_allocObject();
    result = swift_unknownObjectWeakInit();
    v40 = 0;
    *a1 = 0xD000000000000015;
    *(a1 + 8) = 0x80000001BE123640;
    v28 = v37;
    *(a1 + 16) = v38;
    *(a1 + 24) = v28;
    v29 = v35;
    *(a1 + 32) = v36;
    *(a1 + 40) = v29;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v31 = v33;
    v30 = v34;
    *(a1 + 64) = 0;
    *(a1 + 72) = v30;
    *(a1 + 80) = v31;
    *(a1 + 88) = 4;
    *(a1 + 96) = 0;
    *(a1 + 97) = *v39;
    *(a1 + 100) = *&v39[3];
    *(a1 + 104) = v24;
    *(a1 + 112) = v26;
    *(a1 + 120) = sub_1BD314544;
    *(a1 + 128) = v27;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1BD30D760(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    v7[2] = a1;
    v7[3] = a2;
    sub_1BE048964();
    v8 = sub_1BD30C28C();
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_self() sharedInstance];
      if (!v10)
      {
        __break(1u);
        goto LABEL_15;
      }

      v11 = v10;
      v12 = [v9 associatedPassUniqueID];
      v13 = [v11 passWithUniqueID_];

      if (v13)
      {
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v15 = [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithPaymentPass_];
          v16 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
          v17 = [objc_opt_self() sharedInstance];
          if (v17)
          {
            v18 = v17;
            v19 = objc_allocWithZone(PKRewardsHubViewController);
            v20 = v16;
            v21 = v9;
            v22 = [v19 initWithAccount:v21 transactionSourceCollection:v20 accountService:v18];

            v23 = swift_allocObject();
            v23[2] = sub_1BD1B6F54;
            v23[3] = v7;
            v23[4] = v22;
            aBlock[4] = sub_1BD314814;
            v49 = v23;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1BD3F08C0;
            aBlock[3] = &block_descriptor_81;
            v24 = _Block_copy(aBlock);
            v25 = v49;
            sub_1BE048964();
            v26 = v22;
            v25, v27, v28, v29, v30, v31, v32, v33;
            [v26 preflightWithCompletion_];
            v7, v34, v35, v36, v37, v38, v39, v40;

            _Block_release(v24);
            v6 = v26;
LABEL_12:

            return;
          }

LABEL_15:
          __break(1u);
          return;
        }
      }

      else
      {
        v13 = v9;
      }
    }

    a1(0);
    v7, v41, v42, v43, v44, v45, v46, v47;
    goto LABEL_12;
  }
}

void sub_1BD30DA68(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BD30C28C();
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  v9 = [v7 creditDetails];

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [v9 rewardsDestination];

  if (v10)
  {
    v11 = sub_1BD30DD1C(v10);
    v29 = v12;
    v30 = v11;
  }

  else
  {
LABEL_5:
    v29 = 0;
    v30 = 0;
  }

  (*(v4 + 104))(v6, *MEMORY[0x1E69B80B0], v3);
  v13 = PKPassKitBundle();
  if (v13)
  {
    v14 = v13;
    v28 = 0x80000001BE1234E0;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v4 + 8))(v6, v3);
    v19 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol);
    v18 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol + 8);
    v20 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkColor);
    sub_1BE048C84();
    v21 = v20;
    v22 = sub_1BD314128(0xD000000000000015, 0x80000001BE123530);
    v23 = [objc_opt_self() blackColor];
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = 0;
    *a1 = 0xD000000000000014;
    *(a1 + 8) = v28;
    *(a1 + 16) = v15;
    v25 = v29;
    v26 = v30;
    *(a1 + 24) = v17;
    *(a1 + 32) = v26;
    *(a1 + 40) = v25;
    *(a1 + 48) = v19;
    *(a1 + 56) = v18;
    *(a1 + 64) = v20;
    *(a1 + 72) = v22;
    *(a1 + 80) = v23;
    *(a1 + 88) = 4;
    *(a1 + 96) = 0;
    *(a1 + 97) = *v31;
    *(a1 + 100) = *&v31[3];
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = sub_1BD31453C;
    *(a1 + 128) = v24;
    return;
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

id sub_1BD30DD1C(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v10;
  if (a1 == 3)
  {
    (*(v3 + 104))(v5, *MEMORY[0x1E69B80B0], v2, v11);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
      v12 = v5;
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a1 == 2)
  {
    (*(v3 + 104))(v8, *MEMORY[0x1E69B80B0], v2, v11);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
      v12 = v8;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (a1 != 1)
  {
    return 0;
  }

  (*(v3 + 104))(&v16 - v10, *MEMORY[0x1E69B80B0], v2, v11);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
LABEL_10:

    (*(v3 + 8))(v12, v2);
    return v15;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1BD30DFB4(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    v7[2] = a1;
    v7[3] = a2;
    sub_1BE048964();
    v8 = sub_1BD30C28C();
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_self() sharedInstance];
      if (!v10)
      {
        __break(1u);
        goto LABEL_15;
      }

      v11 = v10;
      v12 = [v9 associatedPassUniqueID];
      v13 = [v11 passWithUniqueID_];

      if (v13)
      {
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v15 = [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithPaymentPass_];
          v16 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
          v17 = [objc_opt_self() sharedInstance];
          if (v17)
          {
            v18 = v17;
            v19 = objc_allocWithZone(PKRewardsHubViewController);
            v20 = v16;
            v21 = v9;
            v22 = [v19 initWithAccount:v21 transactionSourceCollection:v20 accountService:v18];

            v23 = swift_allocObject();
            v23[2] = sub_1BD1B6F54;
            v23[3] = v7;
            v23[4] = v22;
            aBlock[4] = sub_1BD314814;
            v49 = v23;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1BD3F08C0;
            aBlock[3] = &block_descriptor_70;
            v24 = _Block_copy(aBlock);
            v25 = v49;
            sub_1BE048964();
            v26 = v22;
            v25, v27, v28, v29, v30, v31, v32, v33;
            [v26 preflightWithCompletion_];
            v7, v34, v35, v36, v37, v38, v39, v40;

            _Block_release(v24);
            v6 = v26;
LABEL_12:

            return;
          }

LABEL_15:
          __break(1u);
          return;
        }
      }

      else
      {
        v13 = v9;
      }
    }

    a1(0);
    v7, v41, v42, v43, v44, v45, v46, v47;
    goto LABEL_12;
  }
}

id sub_1BD30E2BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = *MEMORY[0x1E69B80B0];
  v11 = *(v3 + 104);
  v11(&v25 - v8, v10, v2, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v26 = v15;
    v27 = v14;

    v16 = *(v3 + 8);
    v16(v9, v2);
    (v11)(v5, v10, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v17 = result;
      v18 = sub_1BE04B6F4();
      v20 = v19;

      v16(v5, v2);
      v21 = sub_1BD314128(0x6C69662E72617473, 0xE90000000000006CLL);
      v22 = [objc_opt_self() blackColor];
      v23 = swift_allocObject();
      result = swift_unknownObjectWeakInit();
      v29 = 0;
      *a1 = 0x4973647261776572;
      *(a1 + 8) = 0xEB000000006D6574;
      v24 = v26;
      *(a1 + 16) = v27;
      *(a1 + 24) = v24;
      *(a1 + 32) = v18;
      *(a1 + 40) = v20;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 72) = v21;
      *(a1 + 80) = v22;
      *(a1 + 88) = 4;
      *(a1 + 96) = 0;
      *(a1 + 97) = *v28;
      *(a1 + 100) = *&v28[3];
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = sub_1BD314504;
      *(a1 + 128) = v23;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD30E574(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    v7[2] = a1;
    v7[3] = a2;
    sub_1BE048964();
    v8 = sub_1BD30C28C();
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_self() sharedInstance];
      if (!v10)
      {
        __break(1u);
        goto LABEL_15;
      }

      v11 = v10;
      v12 = [v9 associatedPassUniqueID];
      v13 = [v11 passWithUniqueID_];

      if (v13)
      {
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v15 = [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithPaymentPass_];
          v16 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
          v17 = [objc_opt_self() sharedInstance];
          if (v17)
          {
            v18 = v17;
            v19 = objc_allocWithZone(PKRewardsHubViewController);
            v20 = v16;
            v21 = v9;
            v22 = [v19 initWithAccount:v21 transactionSourceCollection:v20 accountService:v18];

            v23 = swift_allocObject();
            v23[2] = sub_1BD1B6CB0;
            v23[3] = v7;
            v23[4] = v22;
            aBlock[4] = sub_1BD31450C;
            v49 = v23;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1BD3F08C0;
            aBlock[3] = &block_descriptor_59;
            v24 = _Block_copy(aBlock);
            v25 = v49;
            sub_1BE048964();
            v26 = v22;
            v25, v27, v28, v29, v30, v31, v32, v33;
            [v26 preflightWithCompletion_];
            v7, v34, v35, v36, v37, v38, v39, v40;

            _Block_release(v24);
            v6 = v26;
LABEL_12:

            return;
          }

LABEL_15:
          __break(1u);
          return;
        }
      }

      else
      {
        v13 = v9;
      }
    }

    a1(0);
    v7, v41, v42, v43, v44, v45, v46, v47;
    goto LABEL_12;
  }
}

void sub_1BD30E87C(void *a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v124 = &v113 - v7;
  v8 = sub_1BD30C28C();
  v123 = a1;
  if (!v8 || (v9 = v8, v10 = [v8 redeemRewardsFeatureDescriptor], v9, !v10))
  {
    v40 = MEMORY[0x1E69E7CC0];
    v41 = sub_1BD30C28C();
    if (!v41)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v121 = v5;
  v122 = v2;
  v11 = [v10 supportedDestinations];
  if (!v11)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v12 = v11;
  v13 = v3;
  v14 = sub_1BE052744();

  v15 = PKAccountRewardRedemptionTypeToString();
  if (v15)
  {
    v16 = v15;
    v17 = sub_1BE052434();
    v19 = v18;

    *&v147[0] = v17;
    *(&v147[0] + 1) = v19;
    MEMORY[0x1EEE9AC00](v20);
    *(&v113 - 2) = v147;
    LOBYTE(v17) = sub_1BD2FF084(sub_1BD20DFC4, (&v113 - 2), v14);
    v19, v21, v22, v23, v24, v25, v26, v27;
    v14, v28, v29, v30, v31, v32, v33, v34;
    if (v17)
    {
      v35 = sub_1BD30C164();
      if (v35)
      {

        sub_1BD30C5B0(v133);
      }

      else
      {
        sub_1BD30CB34(v133);
      }

      v119 = v142;
      v120 = v141;
      v117 = v138;
      v118 = v139;
      v115 = v137;
      v116 = v136;
      v113 = v135;
      v114 = v134;
      v42 = v133[0];
      v43 = v133[1];
      LOBYTE(v147[0]) = v140;
      v40 = sub_1BD1D8574(0, 1, 1, MEMORY[0x1E69E7CC0], v36, v37, v38, v39);
      v49 = *(v40 + 2);
      v48 = *(v40 + 3);
      if (v49 >= v48 >> 1)
      {
        v40 = sub_1BD1D8574((v48 > 1), v49 + 1, 1, v40, v44, v45, v46, v47);
      }

      *(v40 + 2) = v49 + 1;
      v50 = &v40[136 * v49];
      *(v50 + 4) = v42;
      *(v50 + 5) = v43;
      v51 = v113;
      *(v50 + 3) = v114;
      *(v50 + 4) = v51;
      v52 = v115;
      *(v50 + 5) = v116;
      *(v50 + 6) = v52;
      v53 = v118;
      *(v50 + 14) = v117;
      *(v50 + 15) = v53;
      v50[128] = v147[0];
      v54 = v120;
      *(v50 + 152) = v119;
      *(v50 + 136) = v54;
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
    }

    v3 = v13;
    v5 = v121;
    v2 = v122;
    v41 = sub_1BD30C28C();
    if (!v41)
    {
      goto LABEL_18;
    }

LABEL_16:
    v55 = v41;
    v56 = [v41 creditDetails];

    if (!v56)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v57 = [v56 rewardsDestination];

    if (!v57)
    {
      sub_1BD30D414(v143);
      goto LABEL_20;
    }

LABEL_18:
    sub_1BD30DA68(v143);
LABEL_20:
    v126 = v143[0];
    v127 = v143[1];
    v128 = v143[2];
    v129 = v143[3];
    v130 = v143[4];
    v131 = v143[5];
    v132[0] = v144;
    *&v132[8] = v145;
    *&v132[24] = v146;
    sub_1BD31435C(&v126, v147);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_1BD1D8574(0, *(v40 + 2) + 1, 1, v40, v58, v59, v60, v61);
    }

    v63 = *(v40 + 2);
    v62 = *(v40 + 3);
    if (v63 >= v62 >> 1)
    {
      v40 = sub_1BD1D8574((v62 > 1), v63 + 1, 1, v40, v58, v59, v60, v61);
    }

    *(v40 + 2) = v63 + 1;
    v64 = &v40[136 * v63];
    *(v64 + 2) = v126;
    v65 = v127;
    v66 = v128;
    v67 = v130;
    *(v64 + 5) = v129;
    *(v64 + 6) = v67;
    *(v64 + 3) = v65;
    *(v64 + 4) = v66;
    v68 = v131;
    v69 = *v132;
    v70 = *&v132[16];
    *(v64 + 20) = *&v132[32];
    *(v64 + 8) = v69;
    *(v64 + 9) = v70;
    *(v64 + 7) = v68;
    sub_1BD30E2BC(v147);
    v76 = *(v40 + 2);
    v75 = *(v40 + 3);
    if (v76 >= v75 >> 1)
    {
      v40 = sub_1BD1D8574((v75 > 1), v76 + 1, 1, v40, v71, v72, v73, v74);
    }

    *(v40 + 2) = v76 + 1;
    v77 = &v40[136 * v76];
    *(v77 + 2) = v147[0];
    v78 = v147[1];
    v79 = v147[2];
    v80 = v147[4];
    *(v77 + 5) = v147[3];
    *(v77 + 6) = v80;
    *(v77 + 3) = v78;
    *(v77 + 4) = v79;
    v81 = v147[5];
    v82 = v147[6];
    v83 = v147[7];
    *(v77 + 20) = v148;
    *(v77 + 8) = v82;
    *(v77 + 9) = v83;
    *(v77 + 7) = v81;
    v125 = v40;
    sub_1BE048C84();
    sub_1BD312F2C(&v125);
    v40, v84, v85, v86, v87, v88, v89, v90;
    v122 = v125;
    v91 = *MEMORY[0x1E69B80B0];
    v92 = v3;
    v93 = *(v3 + 104);
    v94 = v124;
    v93(v124, v91, v2);
    v95 = PKPassKitBundle();
    if (v95)
    {
      v96 = v95;
      v121 = sub_1BE04B6F4();
      *&v120 = v97;

      v98 = *(v92 + 8);
      v98(v94, v2);
      v93(v5, v91, v2);
      v99 = PKPassKitBundle();
      if (v99)
      {
        v100 = v99;
        v101 = sub_1BE04B6F4();
        v103 = v102;

        sub_1BD3143B8(&v126);
        v98(v5, v2);
        v104 = v123;
        *v123 = 0xD000000000000010;
        v104[1] = 0x80000001BE123430;
        v105 = v120;
        v104[2] = v121;
        v104[3] = v105;
        v104[4] = v101;
        v104[5] = v103;
        v104[6] = v122;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_33:
  __break(1u);

  v125, v106, v107, v108, v109, v110, v111, v112;
  __break(1u);
}

id sub_1BD30EEE0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  v12 = *MEMORY[0x1E69B80B0];
  v13 = *(v3 + 104);
  v13(&v32 - v10, v12, v2, v9);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v15 = result;
  v16 = sub_1BE04B6F4();
  v36 = v17;
  v37 = v16;

  v18 = *(v3 + 8);
  v18(v11, v2);
  (v13)(v7, v12, v2);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v19 = result;
  v20 = sub_1BE04B6F4();
  v34 = v21;
  v35 = v20;

  v18(v7, v2);
  v22 = sub_1BE052404();
  v33 = PKUIImageNamed(v22);

  v23 = v38;
  (v13)(v38, v12, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v24 = result;
    v25 = sub_1BE04B6F4();
    v27 = v26;

    v18(v23, v2);
    v28 = swift_allocObject();
    result = swift_unknownObjectWeakInit();
    v40 = 0;
    *a1 = 0xD000000000000015;
    *(a1 + 8) = 0x80000001BE1233A0;
    v29 = v36;
    *(a1 + 16) = v37;
    *(a1 + 24) = v29;
    v30 = v34;
    *(a1 + 32) = v35;
    *(a1 + 40) = v30;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v31 = v33;
    *(a1 + 64) = 0;
    *(a1 + 72) = v31;
    *(a1 + 80) = xmmword_1BE0CB9B0;
    *(a1 + 96) = 0;
    *(a1 + 97) = *v39;
    *(a1 + 100) = *&v39[3];
    *(a1 + 104) = v25;
    *(a1 + 112) = v27;
    *(a1 + 120) = sub_1BD3144D4;
    *(a1 + 128) = v28;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_1BD30F22C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accounts);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
    {
      sub_1BE048C84();
      if (!i)
      {
        break;
      }

      v10 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1BFB40900](v10, v1);
        }

        else
        {
          if (v10 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v11 = *(v1 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if ([v11 type] == 1)
        {
          v1, v14, v15, v16, v17, v18, v19, v20;
          v22 = [objc_opt_self() sharedInstance];
          v23 = [objc_opt_self() sharedService];
          v24 = [objc_allocWithZone(PKOrderPhysicalCardController) initWithAccountService:v22 paymentWebService:v23 paymentPass:0 account:v12 accountUser:0 orderReason:0 context:0 currentPhysicalCard:0];

          v25 = [objc_allocWithZone(PKOrderPhysicalCardViewController) initWithController_];
          return v25;
        }

        ++v10;
        if (v13 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_14:
    v1, v3, v4, v5, v6, v7, v8, v9;
  }

  return 0;
}

void sub_1BD30F3E8(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  v11 = *MEMORY[0x1E69B80B0];
  v12 = *(v4 + 104);
  v12(&v30 - v9, v11, v3, v8);
  v13 = PKPassKitBundle();
  if (v13)
  {
    v14 = v13;
    v15 = sub_1BE04B6F4();
    v30 = v16;
    v31 = v15;

    v17 = *(v4 + 8);
    v17(v10, v3);
    (v12)(v6, v11, v3);
    v18 = PKPassKitBundle();
    if (v18)
    {
      v19 = v18;
      v20 = sub_1BE04B6F4();
      v22 = v21;

      v17(v6, v3);
      v24 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol);
      v23 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol + 8);
      v25 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkColor);
      sub_1BE048C84();
      v26 = v25;
      v27 = sub_1BE052404();
      v28 = PKUIImageNamed(v27);

      v33 = 0;
      *a1 = 0xD000000000000017;
      *(a1 + 8) = 0x80000001BE123320;
      v29 = v30;
      *(a1 + 16) = v31;
      *(a1 + 24) = v29;
      *(a1 + 32) = v20;
      *(a1 + 40) = v22;
      *(a1 + 48) = v24;
      *(a1 + 56) = v23;
      *(a1 + 64) = v25;
      *(a1 + 72) = v28;
      *(a1 + 80) = xmmword_1BE0CB9B0;
      *(a1 + 96) = 0;
      *(a1 + 97) = *v32;
      *(a1 + 100) = *&v32[3];
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BD30F68C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v13 = *MEMORY[0x1E69B80B0];
  v14 = *(v3 + 104);
  v14(&v33 - v11, v13, v2, v10);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v16 = result;
  v39 = v5;
  v17 = sub_1BE04B6F4();
  v37 = v18;
  v38 = v17;

  v19 = *(v3 + 8);
  v19(v12, v2);
  (v14)(v8, v13, v2);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v20 = result;
  v21 = sub_1BE04B6F4();
  v35 = v22;
  v36 = v21;

  v19(v8, v2);
  v34 = sub_1BD314128(0xD000000000000018, 0x80000001BE11B4B0);
  v33 = [objc_opt_self() blackColor];
  v23 = v39;
  (v14)(v39, v13, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v24 = result;
    v25 = sub_1BE04B6F4();
    v27 = v26;

    v19(v23, v2);
    v28 = swift_allocObject();
    result = swift_unknownObjectWeakInit();
    v41 = 0;
    *a1 = 0xD000000000000011;
    *(a1 + 8) = 0x80000001BE123290;
    v29 = v37;
    *(a1 + 16) = v38;
    *(a1 + 24) = v29;
    v30 = v35;
    *(a1 + 32) = v36;
    *(a1 + 40) = v30;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v32 = v33;
    v31 = v34;
    *(a1 + 64) = 0;
    *(a1 + 72) = v31;
    *(a1 + 80) = v32;
    *(a1 + 88) = 4;
    *(a1 + 96) = 0;
    *(a1 + 97) = *v40;
    *(a1 + 100) = *&v40[3];
    *(a1 + 104) = v25;
    *(a1 + 112) = v27;
    *(a1 + 120) = sub_1BD3144CC;
    *(a1 + 128) = v28;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1BD30F9D4(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1BD30FA44(a1);
  }
}

void sub_1BD30FA44(void (*a1)(void))
{
  v10 = sub_1BD30C28C();
  if (v10)
  {
    v2 = [objc_opt_self() sharedInstance];
    v3 = [objc_opt_self() sharedService];
    v4 = [objc_allocWithZone(PKAccountAutomaticPaymentsController) initWithAccountService:v2 paymentWebService:v3 account:v10 context:0];

    if (v4)
    {
      v5 = type metadata accessor for AccountAutomaticPaymentsViewController();
      v6 = objc_allocWithZone(v5);
      *&v6[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_hostingVC] = 0;
      type metadata accessor for AccountAutomaticPaymentsModel(0);
      swift_allocObject();
      v7 = v4;
      AccountAutomaticPaymentsModel.init(controller:)(v7);
      *&v6[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_model] = v8;
      v6[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_showSetupPrompt] = 0;
      v11.receiver = v6;
      v11.super_class = v5;
      v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
      a1();
    }

    else
    {
      (a1)(0);
    }
  }

  else
  {
    a1();
  }
}

id sub_1BD30FC08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  v10 = *MEMORY[0x1E69B80B0];
  v11 = *(v3 + 104);
  v11(&v30 - v8, v10, v2, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v33 = v15;
    v34 = v14;

    v16 = *(v3 + 8);
    v16(v9, v2);
    (v11)(v5, v10, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v17 = result;
      v32 = 0x80000001BE123210;
      v31 = sub_1BE04B6F4();
      v19 = v18;

      v16(v5, v2);
      v20 = *(v35 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol);
      v21 = *(v35 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol + 8);
      v22 = *(v35 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkColor);
      sub_1BE048C84();
      v23 = v22;
      v24 = sub_1BD314128(0xD000000000000018, 0x80000001BE11B4B0);
      v25 = [objc_opt_self() blackColor];
      v26 = swift_allocObject();
      result = swift_unknownObjectWeakInit();
      v37 = 0;
      *a1 = 0xD000000000000017;
      v28 = v33;
      v27 = v34;
      *(a1 + 8) = v32;
      *(a1 + 16) = v27;
      v29 = v31;
      *(a1 + 24) = v28;
      *(a1 + 32) = v29;
      *(a1 + 40) = v19;
      *(a1 + 48) = v20;
      *(a1 + 56) = v21;
      *(a1 + 64) = v22;
      *(a1 + 72) = v24;
      *(a1 + 80) = v25;
      *(a1 + 88) = 4;
      *(a1 + 96) = 0;
      *(a1 + 97) = *v36;
      *(a1 + 100) = *&v36[3];
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = sub_1BD31449C;
      *(a1 + 128) = v26;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD30FF00()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accounts);
  if (!v1)
  {
    return 0;
  }

  if (v1 >> 62)
  {
LABEL_24:
    v2 = sub_1BE053704();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1BE048C84();
  if (!v2)
  {
LABEL_14:
    v1, v3, v4, v5, v6, v7, v8, v9;
    return 0;
  }

  v10 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1BFB40900](v10, v1);
    }

    else
    {
      if (v10 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v11 = *(v1 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if ([v11 type] == 1)
    {
      break;
    }

    ++v10;
    if (v13 == v2)
    {
      goto LABEL_14;
    }
  }

  v1, v14, v15, v16, v17, v18, v19, v20;
  v21 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_recurringPayments);
  if (!v21)
  {
    goto LABEL_26;
  }

  if (!(v21 >> 62))
  {
    result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_18;
    }

LABEL_26:

    return 0;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_26;
  }

LABEL_18:
  if ((v21 & 0xC000000000000001) != 0)
  {
    sub_1BE048C84();
    v23 = MEMORY[0x1BFB40900](0, v21);
    v21, v28, v29, v30, v31, v32, v33, v34;
    goto LABEL_21;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v21 + 32);
LABEL_21:
    v24 = [objc_opt_self() sharedService];
    v25 = objc_allocWithZone(PKCreditAccountPaymentDetailsViewController);
    v26 = v12;
    v27 = [v25 initWithAccount:v26 payment:v23 paymentWebService:v24 detailViewStyle:0];

    return v27;
  }

  __break(1u);
  return result;
}

id sub_1BD3100FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - v11;
  v13 = *MEMORY[0x1E69B80B0];
  v14 = *(v3 + 104);
  v14(&v32 - v11, v13, v2, v10);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v16 = result;
  v17 = sub_1BE04B6F4();
  v37 = v18;
  v38 = v17;

  v19 = *(v3 + 8);
  v19(v12, v2);
  (v14)(v8, v13, v2);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v20 = result;
  v21 = sub_1BE04B6F4();
  v35 = v22;
  v36 = v21;

  v19(v8, v2);
  v34 = sub_1BD314128(0x6968732E6B636F6CLL, 0xEB00000000646C65);
  v33 = [objc_opt_self() blackColor];
  (v14)(v5, v13, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v23 = result;
    v24 = sub_1BE04B6F4();
    v26 = v25;

    v19(v5, v2);
    v27 = swift_allocObject();
    result = swift_unknownObjectWeakInit();
    v40 = 0;
    *a1 = 0xD000000000000021;
    *(a1 + 8) = 0x80000001BE123180;
    v28 = v37;
    *(a1 + 16) = v38;
    *(a1 + 24) = v28;
    v29 = v35;
    *(a1 + 32) = v36;
    *(a1 + 40) = v29;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v31 = v33;
    v30 = v34;
    *(a1 + 64) = 0;
    *(a1 + 72) = v30;
    *(a1 + 80) = v31;
    *(a1 + 88) = 4;
    *(a1 + 96) = 0;
    *(a1 + 97) = *v39;
    *(a1 + 100) = *&v39[3];
    *(a1 + 104) = v24;
    *(a1 + 112) = v26;
    *(a1 + 120) = sub_1BD31447C;
    *(a1 + 128) = v27;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1BD31044C(int a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v124 = *MEMORY[0x1E69E9840];
  v8 = sub_1BD30C28C();
  if (!v8)
  {
    goto LABEL_33;
  }

  v9 = v8;
  v10 = [v8 creditDetails];
  if (!v10)
  {
    __break(1u);
    goto LABEL_64;
  }

  v11 = v10;
  v12 = [v10 virtualCards];

  if (!v12)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  sub_1BD0E5E8C(0, &qword_1EBD41C30, 0x1E69B9338);
  sub_1BD214890(&qword_1EBD41C38, &qword_1EBD41C30, 0x1E69B9338);
  v13 = sub_1BE052A34();

  v14 = sub_1BD960F14(v13);
  v13, v15, v16, v17, v18, v19, v20, v21;
  if (!v14)
  {
LABEL_32:

    goto LABEL_33;
  }

  v22 = [objc_opt_self() sharedInstance];
  if (!v22)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v23 = v22;
  v24 = [v9 associatedPassUniqueID];
  v25 = [v23 passWithUniqueID_];

  if (!v25)
  {

    goto LABEL_32;
  }

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (!v26 || (v27 = *(v4 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_cardController)) == 0)
  {

LABEL_33:
    a2(0);
    return;
  }

  v118 = v25;
  v119 = a1;
  v114 = v26;
  v28 = [v27 physicalCards];
  if (!v28)
  {
LABEL_66:
    __break(1u);
    return;
  }

  v29 = v28;
  sub_1BD0E5E8C(0, &qword_1EBD41C08, 0x1E69B9060);
  sub_1BD214890(&qword_1EBD41C10, &qword_1EBD41C08, 0x1E69B9060);
  v30 = sub_1BE052A34();

  v115 = a3;
  v116 = v14;
  v117 = a2;
  if ((v30 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x1E69E7CD0];
    aBlock[0] = MEMORY[0x1E69E7CD0];
    v33 = sub_1BE0536B4();
    for (i = sub_1BE053744(); i; i = sub_1BE053744())
    {
      v120 = i;
      swift_dynamicCast();
      if ([v121 state] == 1 || objc_msgSend(v121, sel_state) == 2)
      {
        v48 = v121;
        v49 = v32[2];
        if (v32[3] <= v49)
        {
          sub_1BD2A81F0(v49 + 1);
        }

        v32 = aBlock[0];
        v30 = v121;
        v42 = sub_1BE053064();
        v43 = aBlock[0] + 56;
        v44 = -1 << *(aBlock[0] + 32);
        v45 = v42 & ~v44;
        v46 = v45 >> 6;
        if (((-1 << v45) & ~*(aBlock[0] + 56 + 8 * (v45 >> 6))) != 0)
        {
          v47 = __clz(__rbit64((-1 << v45) & ~*(aBlock[0] + 56 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v50 = 0;
          v51 = (63 - v44) >> 6;
          do
          {
            if (++v46 == v51 && (v50 & 1) != 0)
            {
              __break(1u);
              goto LABEL_59;
            }

            v52 = v46 == v51;
            if (v46 == v51)
            {
              v46 = 0;
            }

            v50 |= v52;
            v53 = *(v43 + 8 * v46);
          }

          while (v53 == -1);
          v47 = __clz(__rbit64(~v53)) + (v46 << 6);
        }

        *(v43 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
        *(v32[6] + 8 * v47) = v48;
        ++v32[2];
      }

      else
      {
      }
    }

    v33, v35, v36, v37, v38, v39, v40, v41;
    LOBYTE(v33) = v119;
    goto LABEL_54;
  }

  v54 = *(v30 + 32);
  v111 = (((1 << v54) + 63) >> 6);
  if ((v54 & 0x3Fu) > 0xD)
  {
    goto LABEL_60;
  }

  while (2)
  {
    v110[1] = v110;
    MEMORY[0x1EEE9AC00](v31);
    v112 = v110 - ((v55 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v112, v55);
    v113 = 0;
    v60 = 0;
    v61 = 1 << *(v30 + 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v33 = v62 & *(v30 + 56);
    v63 = (v61 + 63) >> 6;
    while (v33)
    {
      v64 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v65 = v64 | (v60 << 6);
      v66 = &selRef_startPrecursorPassFlowWithNavController_context_pass_precursorController_parentNavController_presentNavController_completion_;
LABEL_46:
      v69 = *(*(v30 + 48) + 8 * v65);
      if ([v69 v66[24]] == 1)
      {

LABEL_50:
        *&v112[(v65 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v65;
        if (__OFADD__(v113++, 1))
        {
          __break(1u);
LABEL_53:
          v32 = sub_1BD2AF0E8(v112, v111, v113, v30, v56, v57, v58, v59);
          goto LABEL_54;
        }
      }

      else
      {
        v70 = [v69 v66[24]];

        if (v70 == 2)
        {
          goto LABEL_50;
        }
      }
    }

    v67 = v60;
    LOBYTE(v33) = v119;
    v66 = &selRef_startPrecursorPassFlowWithNavController_context_pass_precursorController_parentNavController_presentNavController_completion_;
    while (1)
    {
      v60 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      if (v60 >= v63)
      {
        goto LABEL_53;
      }

      v68 = *(v30 + 56 + 8 * v60);
      ++v67;
      if (v68)
      {
        v33 = (v68 - 1) & v68;
        v65 = __clz(__rbit64(v68)) | (v60 << 6);
        goto LABEL_46;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    sub_1BE048C84();
    if (swift_stdlib_isStackAllocationSafe())
    {
      v30, v96, v97, v98, v99, v100, v101, v102;
      continue;
    }

    break;
  }

  v33 = swift_slowAlloc();
  v32 = sub_1BD313EEC(v33, v111, v30, sub_1BD3129B4, 0, sub_1BD2AF0E8);
  v30, v103, v104, v105, v106, v107, v108, v109;
  MEMORY[0x1BFB45F20](v33, -1, -1);
  LOBYTE(v33) = v119;
LABEL_54:
  v72 = sub_1BD961014(v32);
  v32, v73, v74, v75, v76, v77, v78, v79;
  v80 = v116;
  a2 = v117;
  if (!v72)
  {

    goto LABEL_33;
  }

  v81 = objc_allocWithZone(PKAccountCardNumbersPresenter);
  v82 = [v81 initWithVirtualCard:v80 physicalCard:v72 account:v9 peerPaymentAccount:0 pass:v114 context:0];
  v83 = *(v4 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accountCardNumbersPresenter);
  *(v4 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accountCardNumbersPresenter) = v82;
  v84 = v82;

  if (v84)
  {
    v85 = swift_allocObject();
    *(v85 + 16) = v33 & 1;
    v86 = v115;
    *(v85 + 24) = a2;
    *(v85 + 32) = v86;
    aBlock[4] = sub_1BD314468;
    v123 = v85;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD20815C;
    aBlock[3] = &block_descriptor_55;
    v87 = _Block_copy(aBlock);
    v88 = v123;
    sub_1BE048964();
    v88, v89, v90, v91, v92, v93, v94, v95;
    [v84 presentCardNumbersWithCompletion_];

    _Block_release(v87);
  }

  else
  {
  }
}

id sub_1BD310C18@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  v10 = *MEMORY[0x1E69B80B0];
  v11 = *(v3 + 104);
  v11(&v30 - v8, v10, v2, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v31 = v15;
    v32 = v14;

    v16 = *(v3 + 8);
    v16(v9, v2);
    (v11)(v5, v10, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v17 = result;
      v30 = 0x80000001BE1230D0;
      v18 = sub_1BE04B6F4();
      v20 = v19;

      v16(v5, v2);
      v21 = *(v33 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol);
      v22 = *(v33 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol + 8);
      v23 = *(v33 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkColor);
      sub_1BE048C84();
      v24 = v23;
      v25 = sub_1BD314128(0x6968732E6B636F6CLL, 0xEB00000000646C65);
      v26 = [objc_opt_self() blackColor];
      v27 = swift_allocObject();
      result = swift_unknownObjectWeakInit();
      v35 = 0;
      *a1 = 0xD000000000000027;
      v28 = v31;
      v29 = v32;
      *(a1 + 8) = v30;
      *(a1 + 16) = v29;
      *(a1 + 24) = v28;
      *(a1 + 32) = v18;
      *(a1 + 40) = v20;
      *(a1 + 48) = v21;
      *(a1 + 56) = v22;
      *(a1 + 64) = v23;
      *(a1 + 72) = v25;
      *(a1 + 80) = v26;
      *(a1 + 88) = 4;
      *(a1 + 96) = 0;
      *(a1 + 97) = *v34;
      *(a1 + 100) = *&v34[3];
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = sub_1BD314448;
      *(a1 + 128) = v27;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD310F08(void (*a1)(void), uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1BD31044C(a4 & 1, a1, a2);
  }
}

void sub_1BD310F80(void *a1@<X8>)
{
  v109 = a1;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v111 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_cardController);
  v6 = MEMORY[0x1E69E7CC0];
  v112 = v7;
  v110 = v3;
  if (!v5)
  {
    v14 = MEMORY[0x1E69E7CC0];
    v15 = sub_1BD30C28C();
    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  v8 = v5;
  if ([v8 canRequestNewPhysicalCard] && (objc_msgSend(v8, sel_canReplacePhysicalCard) & 1) == 0)
  {
    sub_1BD30EEE0(v115);
  }

  else
  {
    if (([v8 hasPrimaryPhysicalCard] & 1) == 0)
    {
      v9 = [v8 unactivatedPhysicalCard];
      if (!v9)
      {

        v14 = MEMORY[0x1E69E7CC0];
        v15 = sub_1BD30C28C();
        if (!v15)
        {
          goto LABEL_29;
        }

        goto LABEL_14;
      }
    }

    sub_1BD30F3E8(v115);
  }

  v14 = sub_1BD1D8574(0, 1, 1, MEMORY[0x1E69E7CC0], v10, v11, v12, v13);
  v21 = *(v14 + 2);
  v20 = *(v14 + 3);
  if (v21 >= v20 >> 1)
  {
    v14 = sub_1BD1D8574((v20 > 1), v21 + 1, 1, v14, v16, v17, v18, v19);
  }

  *(v14 + 2) = v21 + 1;
  v22 = &v14[136 * v21];
  v23 = v115[7];
  *(v22 + 8) = v115[6];
  *(v22 + 9) = v23;
  *(v22 + 20) = v116;
  v24 = v115[3];
  *(v22 + 4) = v115[2];
  *(v22 + 5) = v24;
  v25 = v115[5];
  *(v22 + 6) = v115[4];
  *(v22 + 7) = v25;
  v26 = v115[1];
  *(v22 + 2) = v115[0];
  *(v22 + 3) = v26;
  v2 = v112;
  v15 = sub_1BD30C28C();
  if (v15)
  {
LABEL_14:
    v27 = v15;
    if ([v15 supportsScheduleRecurringPayments])
    {
      if (*(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_recurringPayments))
      {
        v28 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_recurringPayments);
      }

      else
      {
        v28 = v6;
      }

      if (v28 >> 62)
      {
        v29 = sub_1BE053704();
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1BE048C84();
      v28, v30, v31, v32, v33, v34, v35, v36;
      if (v29)
      {
        sub_1BD30FC08(v117);
      }

      else
      {
        sub_1BD30F68C(v117);
      }

      v107 = v126;
      v108 = v125;
      v38 = v122;
      v37 = v123;
      v105 = v121;
      v106 = v120;
      v103 = v119;
      v104 = v118;
      v39 = v117[0];
      v40 = v117[1];
      LOBYTE(v114) = v124;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1BD1D8574(0, *(v14 + 2) + 1, 1, v14, v41, v42, v43, v44);
      }

      v46 = *(v14 + 2);
      v45 = *(v14 + 3);
      if (v46 >= v45 >> 1)
      {
        v14 = sub_1BD1D8574((v45 > 1), v46 + 1, 1, v14, v41, v42, v43, v44);
      }

      *(v14 + 2) = v46 + 1;
      v47 = &v14[136 * v46];
      *(v47 + 4) = v39;
      *(v47 + 5) = v40;
      v48 = v103;
      *(v47 + 3) = v104;
      *(v47 + 4) = v48;
      v49 = v105;
      *(v47 + 5) = v106;
      *(v47 + 6) = v49;
      *(v47 + 14) = v38;
      *(v47 + 15) = v37;
      v47[128] = v114;
      v50 = v127[0];
      *(v47 + 33) = *(v127 + 3);
      *(v47 + 129) = v50;
      v51 = v108;
      *(v47 + 152) = v107;
      *(v47 + 136) = v51;
      v2 = v112;
    }

    else
    {
    }
  }

LABEL_29:
  v52 = sub_1BD30C28C();
  if (!v52)
  {
LABEL_45:
    v114 = v14;
    sub_1BE048C84();
    sub_1BD312F2C(&v114);
    v14, v81, v82, v83, v84, v85, v86, v87;
    v88 = v114;
    v89 = v110;
    v53 = v111;
    (*(v110 + 104))(v111, *MEMORY[0x1E69B80B0], v2);
    v90 = PKPassKitBundle();
    if (v90)
    {
      v91 = v90;
      v92 = sub_1BE04B6F4();
      v94 = v93;

      (*(v89 + 8))(v53, v2);
      v95 = v109;
      *v109 = 0xD00000000000001ALL;
      v95[1] = 0x80000001BE123050;
      v95[2] = v92;
      v95[3] = v94;
      v95[4] = 0;
      v95[5] = 0;
      v95[6] = v88;
      return;
    }

    __break(1u);
    goto LABEL_51;
  }

  v53 = v52;
  if (![v52 supportsDynamicSecurityCodes])
  {

    goto LABEL_45;
  }

  v54 = [v53 creditDetails];
  if (!v54)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v55 = v54;
  v56 = [v54 virtualCards];

  if (v56)
  {
    sub_1BD0E5E8C(0, &qword_1EBD41C30, 0x1E69B9338);
    sub_1BD214890(&qword_1EBD41C38, &qword_1EBD41C30, 0x1E69B9338);
    v57 = sub_1BE052A34();

    v58 = sub_1BD960F14(v57);
    v57, v59, v60, v61, v62, v63, v64, v65;
    if (v58)
    {
      if ([v58 hasDynamicSecurityCode])
      {
        sub_1BD310C18(v127);
      }

      else
      {
        sub_1BD3100FC(v127);
      }

      v107 = v136;
      v108 = v135;
      v67 = v132;
      v66 = v133;
      v105 = v131;
      v106 = v130;
      v103 = v129;
      v104 = v128;
      v68 = v127[0];
      v69 = v127[1];
      v113 = v134;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1BD1D8574(0, *(v14 + 2) + 1, 1, v14, v70, v71, v72, v73);
      }

      v75 = *(v14 + 2);
      v74 = *(v14 + 3);
      if (v75 >= v74 >> 1)
      {
        v14 = sub_1BD1D8574((v74 > 1), v75 + 1, 1, v14, v70, v71, v72, v73);
      }

      *(v14 + 2) = v75 + 1;
      v76 = &v14[136 * v75];
      *(v76 + 4) = v68;
      *(v76 + 5) = v69;
      v77 = v103;
      *(v76 + 3) = v104;
      *(v76 + 4) = v77;
      v78 = v105;
      *(v76 + 5) = v106;
      *(v76 + 6) = v78;
      *(v76 + 14) = v67;
      *(v76 + 15) = v66;
      v76[128] = v113;
      v79 = v114;
      *(v76 + 33) = *(&v114 + 3);
      *(v76 + 129) = v79;
      v80 = v108;
      *(v76 + 152) = v107;
      *(v76 + 136) = v80;
    }

    else
    {
    }

    v2 = v112;
    goto LABEL_45;
  }

LABEL_52:
  __break(1u);

  v114, v96, v97, v98, v99, v100, v101, v102;
  __break(1u);
}

id sub_1BD3115CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v13 = *MEMORY[0x1E69B80B0];
  v14 = *(v3 + 104);
  v14(&v33 - v11, v13, v2, v10);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v16 = result;
  v39 = v5;
  v17 = sub_1BE04B6F4();
  v37 = v18;
  v38 = v17;

  v19 = *(v3 + 8);
  v19(v12, v2);
  (v14)(v8, v13, v2);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v20 = result;
  v21 = sub_1BE04B6F4();
  v35 = v22;
  v36 = v21;

  v19(v8, v2);
  v34 = sub_1BD314128(0xD00000000000001DLL, 0x80000001BE122F80);
  v33 = [objc_opt_self() blackColor];
  v23 = v39;
  (v14)(v39, v13, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v24 = result;
    v25 = sub_1BE04B6F4();
    v27 = v26;

    v19(v23, v2);
    v28 = swift_allocObject();
    result = swift_unknownObjectWeakInit();
    v41 = 0;
    *a1 = 0xD000000000000015;
    *(a1 + 8) = 0x80000001BE123000;
    v29 = v37;
    *(a1 + 16) = v38;
    *(a1 + 24) = v29;
    v30 = v35;
    *(a1 + 32) = v36;
    *(a1 + 40) = v30;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v32 = v33;
    v31 = v34;
    *(a1 + 64) = 0;
    *(a1 + 72) = v31;
    *(a1 + 80) = v32;
    *(a1 + 88) = 4;
    *(a1 + 96) = 0;
    *(a1 + 97) = *v40;
    *(a1 + 100) = *&v40[3];
    *(a1 + 104) = v25;
    *(a1 + 112) = v27;
    *(a1 + 120) = sub_1BD314418;
    *(a1 + 128) = v28;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1BD311914(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a4();
  }

  else
  {
    v8 = 0;
  }

  a1(v8);
}

id sub_1BD3119A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accounts);
  if (v1)
  {
    if (v1 >> 62)
    {
LABEL_21:
      v2 = sub_1BE053704();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1BE048C84();
    if (v2)
    {
      v10 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1BFB40900](v10, v1);
        }

        else
        {
          if (v10 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v11 = *(v1 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        if ([v11 type] == 1)
        {
          break;
        }

        ++v10;
        if (v13 == v2)
        {
          goto LABEL_14;
        }
      }

      v1, v14, v15, v16, v17, v18, v19, v20;
      v22 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_familyMembers);
      if (v22)
      {
        v23 = objc_allocWithZone(MEMORY[0x1E69B88A0]);
        sub_1BD0E5E8C(0, &qword_1EBD41C28, 0x1E69B8898);
        sub_1BE048C84();
        v24 = v12;
        v25 = sub_1BE052724();
        v22, v26, v27, v28, v29, v30, v31, v32;
        v33 = [v23 initWithFamilyMembers_];

        v34 = [objc_allocWithZone(PKAccountInvitationController) initWithAccount:v24 context:0 familyMemberCollection:v33];
        v35 = [objc_allocWithZone(PKAccountInvitationOnboardingViewController) initWithController_];

        return v35;
      }
    }

    else
    {
LABEL_14:
      v1, v3, v4, v5, v6, v7, v8, v9;
    }
  }

  return 0;
}

_BYTE *sub_1BD311B8C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v49 - v10;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - v13;
  v15 = *(v6 + 104);
  (v15)(&v49 - v13, *MEMORY[0x1E69B80D0], v5, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E6530];
  *(v16 + 16) = xmmword_1BE0B69E0;
  v18 = MEMORY[0x1E69E65A8];
  *(v16 + 56) = v17;
  *(v16 + 64) = v18;
  *(v16 + 32) = a1;
  v19 = sub_1BE04B714();
  v51 = v20;
  v52 = v19;
  v16, v20, v21, v22, v23, v24, v25, v26;
  v27 = *(v6 + 8);
  v27(v14, v5);
  v28 = 0;
  v55 = 0;
  v29 = *MEMORY[0x1E69B80B0];
  if (v56)
  {
    v30 = *MEMORY[0x1E69B80B0];
    v50 = v15;
    v15(v54, v30, v5);
    result = PKPassKitBundle();
    if (!result)
    {
      goto LABEL_7;
    }

    v32 = result;
    v33 = v54;
    v28 = sub_1BE04B6F4();
    v55 = v34;

    v27(v33, v5);
    v15 = v50;
  }

  v54 = v28;
  v15(v8, v29, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v35 = result;
    v50 = 0x80000001BE122F30;
    v36 = sub_1BE04B6F4();
    v38 = v37;

    v27(v8, v5);
    v39 = *(v53 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol);
    v40 = *(v53 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol + 8);
    v41 = *(v53 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkColor);
    sub_1BE048C84();
    v42 = v41;
    v43 = sub_1BD314128(0xD00000000000001DLL, 0x80000001BE122F80);
    v44 = [objc_opt_self() blackColor];
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = swift_allocObject();
    result[16] = v56 & 1;
    *(result + 3) = v45;
    v58 = 0;
    v46 = v50;
    *a3 = 0xD000000000000014;
    *(a3 + 8) = v46;
    *(a3 + 16) = v36;
    *(a3 + 24) = v38;
    v47 = v51;
    *(a3 + 32) = v52;
    *(a3 + 40) = v47;
    *(a3 + 48) = v39;
    *(a3 + 56) = v40;
    *(a3 + 64) = v41;
    *(a3 + 72) = v43;
    *(a3 + 80) = v44;
    *(a3 + 88) = 4;
    *(a3 + 96) = 0;
    LODWORD(v47) = *v57;
    *(a3 + 100) = *&v57[3];
    *(a3 + 97) = v47;
    v48 = v55;
    *(a3 + 104) = v54;
    *(a3 + 112) = v48;
    *(a3 + 120) = sub_1BD31440C;
    *(a3 + 128) = result;
    return result;
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

void sub_1BD311FA0(void (*a1)(void *), uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = sub_1BD31204C();
      goto LABEL_6;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = sub_1BD3119A0();
LABEL_6:
  v9 = v7;

LABEL_8:
  a1(v9);
}

id sub_1BD31204C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accounts);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
    {
      sub_1BE048C84();
      if (!i)
      {
        break;
      }

      v10 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1BFB40900](v10, v1);
        }

        else
        {
          if (v10 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v11 = *(v1 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if ([v11 type] == 1)
        {
          v1, v14, v15, v16, v17, v18, v19, v20;
          v22 = [objc_allocWithZone(PKAccountUserLimitReachedViewController) initWithAccount:v12 context:0];

          return v22;
        }

        ++v10;
        if (v13 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_14:
    v1, v3, v4, v5, v6, v7, v8, v9;
  }

  return 0;
}

void sub_1BD312178(void *a1@<X8>)
{
  v3 = 0;
  v127[17] = *MEMORY[0x1E69E9840];
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accountUsers);
  if (!v8)
  {
LABEL_52:
    v20 = v127;
    sub_1BD3115CC(v127);
    v24 = sub_1BD1D8574(0, 1, 1, MEMORY[0x1E69E7CC0], v74, v75, v76, v77);
    v21 = *(v24 + 2);
    v30 = *(v24 + 3);
    v8 = v21 + 1;
    if (v21 < v30 >> 1)
    {
      goto LABEL_53;
    }

    goto LABEL_57;
  }

  v124 = v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v4;
  v122 = v5;
  v123 = 0;
  v121 = v1;
  if ((v8 & 0xC000000000000001) == 0)
  {
    v46 = *(v8 + 32);
    v47 = v46 & 0x3F;
    v48 = ((1 << v46) + 63) >> 6;
    v49 = 8 * v48;
    v50 = sub_1BE048C84();
    if (v47 > 0xD)
    {
      sub_1BE048C84();
      if (!swift_stdlib_isStackAllocationSafe())
      {
        v103 = swift_slowAlloc();
        v9 = sub_1BD313EEC(v103, v48, v8, sub_1BD31293C, 0, sub_1BD2AF0D4);
        v123 = 0;
        v8, v104, v105, v106, v107, v108, v109, v110;
        MEMORY[0x1BFB45F20](v103, -1, -1);
        goto LABEL_38;
      }

      v8, v96, v97, v98, v99, v100, v101, v102;
    }

    v119 = v48;
    v118[1] = v118;
    MEMORY[0x1EEE9AC00](v50);
    v4 = v118 - ((v49 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v4, v49);
    v7 = 0;
    v3 = 0;
    v21 = v8 + 56;
    v51 = 1 << *(v8 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v20 = v52 & *(v8 + 56);
    v5 = ((v51 + 63) >> 6);
    v24 = &selRef_initWithVerificationController_fieldsModel_;
    while (v20)
    {
      v53 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_33:
      v55 = v53 | (v3 << 6);
      if (([*(*(v8 + 48) + 8 * v55) isCurrentUser] & 1) == 0)
      {
        *&v4[(v55 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v55;
        if (__OFADD__(v7++, 1))
        {
          __break(1u);
LABEL_37:
          v9 = sub_1BD2AF0D4(v4, v119, v7, v8, v26, v27, v28, v29);
          goto LABEL_38;
        }
      }
    }

    v30 = v3;
    while (1)
    {
      v3 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v3 >= v5)
      {
        goto LABEL_37;
      }

      v54 = *(v21 + 8 * v3);
      ++v30;
      if (v54)
      {
        v53 = __clz(__rbit64(v54));
        v20 = (v54 - 1) & v54;
        goto LABEL_33;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    v24 = sub_1BD1D8574((v30 > 1), v8, 1, v24, v26, v27, v28, v29);
    goto LABEL_53;
  }

  v9 = MEMORY[0x1E69E7CD0];
  v127[0] = MEMORY[0x1E69E7CD0];
  sub_1BE048C84();
  v4 = sub_1BE0536B4();
  v10 = sub_1BE053744();
  if (v10)
  {
    v18 = v10;
    v7 = sub_1BD0E5E8C(0, &qword_1EBD41C18, 0x1E69B8448);
    v19 = v18;
    v20 = MEMORY[0x1E69E7C98];
    v8 = &selRef_initWithVerificationController_fieldsModel_;
    v21 = -1;
    v3 = 1;
    do
    {
      v125 = v19;
      swift_dynamicCast();
      v22 = [v126 isCurrentUser];
      v5 = v126;
      if (v22)
      {
      }

      else
      {
        v23 = *(v9 + 16);
        if (*(v9 + 24) <= v23)
        {
          sub_1BD2A81DC(v23 + 1);
        }

        v9 = v127[0];
        v24 = v5;
        v25 = sub_1BE053064();
        v30 = v9 + 56;
        v31 = -1 << *(v9 + 32);
        v32 = v25 & ~v31;
        v33 = v32 >> 6;
        if (((-1 << v32) & ~*(v9 + 56 + 8 * (v32 >> 6))) != 0)
        {
          v34 = __clz(__rbit64((-1 << v32) & ~*(v9 + 56 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v35 = 0;
          v36 = (63 - v31) >> 6;
          do
          {
            if (++v33 == v36 && (v35 & 1) != 0)
            {
              __break(1u);
              goto LABEL_56;
            }

            v37 = v33 == v36;
            if (v33 == v36)
            {
              v33 = 0;
            }

            v35 |= v37;
            v38 = *(v30 + 8 * v33);
          }

          while (v38 == -1);
          v34 = __clz(__rbit64(~v38)) + (v33 << 6);
        }

        *(v30 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
        *(*(v9 + 48) + 8 * v34) = v5;
        ++*(v9 + 16);
      }

      v19 = sub_1BE053744();
    }

    while (v19);
  }

  v4, v11, v12, v13, v14, v15, v16, v17;
LABEL_38:
  v5 = v122;
  v7 = v124;
  v3 = v123;
  if ((v9 & 0xC000000000000001) != 0)
  {
    v57 = sub_1BE053704();
  }

  else
  {
    v57 = *(v9 + 16);
  }

  v9, v39, v40, v41, v42, v43, v44, v45;
  if (!v57)
  {
    v4 = v120;
    goto LABEL_52;
  }

  v58 = sub_1BD30C28C();
  if (!v58)
  {
    goto LABEL_47;
  }

  v59 = v58;
  v60 = [v58 accountUserInvitationAllowedFeatureDescriptor];
  if (!v60)
  {
    __break(1u);
    goto LABEL_63;
  }

  v61 = v60;
  v62 = [v60 maximumAccountUsers];

  v63 = v57 < v62;
  v7 = v124;
  if (v63)
  {
    v64 = 1;
  }

  else
  {
LABEL_47:
    v64 = 0;
  }

  v20 = v127;
  sub_1BD311B8C(v57, v64, v127);
  v24 = sub_1BD1D8574(0, 1, 1, MEMORY[0x1E69E7CC0], v65, v66, v67, v68);
  v21 = *(v24 + 2);
  v73 = *(v24 + 3);
  v8 = v21 + 1;
  if (v21 >= v73 >> 1)
  {
    v24 = sub_1BD1D8574((v73 > 1), v21 + 1, 1, v24, v69, v70, v71, v72);
  }

  v4 = v120;
LABEL_53:
  *(v24 + 2) = v8;
  v78 = &v24[136 * v21];
  v79 = *(v20 + 112);
  *(v78 + 8) = *(v20 + 96);
  *(v78 + 9) = v79;
  *(v78 + 20) = *(v20 + 128);
  v80 = *(v20 + 48);
  *(v78 + 4) = *(v20 + 32);
  *(v78 + 5) = v80;
  v81 = *(v20 + 80);
  *(v78 + 6) = *(v20 + 64);
  *(v78 + 7) = v81;
  v82 = *(v20 + 16);
  *(v78 + 2) = *v20;
  *(v78 + 3) = v82;
  v126 = v24;
  sub_1BE048C84();
  v59 = v3;
  sub_1BD312F2C(&v126);
  if (v3)
  {
LABEL_63:

    v126, v111, v112, v113, v114, v115, v116, v117;
    __break(1u);
    return;
  }

  v24, v83, v84, v85, v86, v87, v88, v89;
  v90 = v126;
  (*(v5 + 13))(v7, *MEMORY[0x1E69B80B0], v4);
  v91 = PKPassKitBundle();
  if (!v91)
  {
    __break(1u);
  }

  v92 = v91;
  v93 = sub_1BE04B6F4();
  v95 = v94;

  (*(v5 + 1))(v7, v4);
  *a1 = 0xD000000000000014;
  a1[1] = 0x80000001BE122EB0;
  a1[2] = v93;
  a1[3] = v95;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = v90;
}

void sub_1BD3128D8(uint64_t a1)
{
  if (!qword_1EBD41BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41C00, &qword_1BE0CB9F8);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD41BF8);
    }
  }
}

uint64_t sub_1BD312974@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AppleCardFeaturesAndBenefitsManager(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

id sub_1BD3129B4(id *a1)
{
  v1 = *a1;
  result = [*a1 state];
  if (result != 1)
  {
    return ([v1 state] == 2);
  }

  return result;
}

uint64_t sub_1BD312A10(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  if (a1 && (a2 & 1) != 0)
  {
    v4 = a1;
    v5 = a1;
    v6 = [v5 navigationItem];
    sub_1BD0E5E8C(0, &qword_1EBD41C40, 0x1E69DC708);
    sub_1BD0E5E8C(0, &qword_1EBD3ECB0, 0x1E69DC628);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE0530B4();
    v8 = sub_1BE052C74();
    [v6 setLeftBarButtonItem_];

    a1 = v4;
  }

  return a3(a1, a2);
}

void sub_1BD312B64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1BD312BC8(void *a1)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  v1 = [a1 accountIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1BE052434();
    v5 = v4;

    v6 = sub_1BD30C28C();
    if (!v6)
    {
LABEL_10:
      v16 = 0;
      v18 = 0;
      if (v5)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v6 = sub_1BD30C28C();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  v14 = v6;
  v15 = [v6 accountIdentifier];

  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = sub_1BE052434();
  v18 = v17;

  if (v5)
  {
LABEL_11:
    if (v18)
    {
      if (v3 == v16 && v5 == v18)
      {
        v5, v7, v8, v9, v10, v11, v12, v13;
        v18, v20, v21, v22, v23, v24, v25, v26;
      }

      else
      {
        v27 = sub_1BE053B84();
        v5, v28, v29, v30, v31, v32, v33, v34;
        v18, v35, v36, v37, v38, v39, v40, v41;
        if ((v27 & 1) == 0)
        {
          return;
        }
      }

      goto LABEL_20;
    }

    v19 = v5;
    goto LABEL_16;
  }

LABEL_8:
  if (!v18)
  {
LABEL_20:

    sub_1BD309550();
    return;
  }

  v19 = v18;
LABEL_16:

  v19, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1BD312E50(void *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v8 = a3;
  if (a3)
  {
    sub_1BD0E5E8C(0, a5, a6);
    sub_1BD214890(a7, a5, a6);
    v8 = sub_1BE052A34();
  }

  if (a4)
  {
    a4 = sub_1BE052434();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = a1;
  sub_1BD314240(a4, v14);

  v8, v16, v17, v18, v19, v20, v21, v22;

  v14, v23, v24, v25, v26, v27, v28, v29;
}