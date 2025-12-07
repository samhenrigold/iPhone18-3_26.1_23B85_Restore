uint64_t sub_1C4C0B024(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1C43FBCC4();
  v12 = (v11 - v10);
  v62 = MEMORY[0x1E69E7CC0];
  v13 = *(a2 + 128);
  if (!v13)
  {
    v18 = *a2;
    v19 = *(a2 + 8);
    v20 = sub_1C450B034();
    sub_1C43FFB2C(&unk_1F44064D8, v20);
    *v21 = v18;
    *(v21 + 8) = v19;
    *(v21 + 16) = 0xD000000000000010;
    *(v21 + 24) = 0x80000001C4F86960;
    *(v21 + 32) = 0;
    *(v21 + 40) = 0xE000000000000000;
    *(v21 + 48) = v59;
    *(v21 + 64) = 1;
    swift_willThrow();
LABEL_22:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    goto LABEL_23;
  }

  v53 = a1;
  v14 = *(a2 + 120);
  v15 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4C07CD8(v15, v14 & 1, &v62);
  v17 = *a2;
  v16 = *(a2 + 8);
  ViewGeneration.ViewClients.storage(for:fullRebuild:)(v17, v16, a4 & 1);
  if (v4)
  {

LABEL_23:

    return v13;
  }

  sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
  sub_1C456902C(&qword_1EC0C4B88, &qword_1C4F5D790);
  if (!swift_dynamicCast())
  {

    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    sub_1C4420C3C(&v56, &qword_1EC0C4B90, qword_1C4F5D798);
    v40 = sub_1C450B034();
    v41 = sub_1C43FFB2C(&unk_1F44064D8, v40);
    v42->n128_u64[0] = v17;
    v42->n128_u64[1] = v16;
    v42[1].n128_u64[0] = 0xD000000000000026;
    v42[1].n128_u64[1] = 0x80000001C4FB9B40;
    sub_1C4411340(v54, v55, v41, v42);
    goto LABEL_22;
  }

  v47 = v17;
  v48 = v16;
  result = sub_1C460986C(&v56, &v59);
  v23 = v62;
  v50 = *(v62 + 16);
  if (!v50)
  {
LABEL_20:
    v36 = v60;
    v37 = v61;
    v38 = sub_1C4409678(&v59, v60);
    v53[3] = v36;
    v53[4] = v37;
    v39 = sub_1C4422F90(v53);
    (*(*(v36 - 8) + 16))(v39, v38, v36);
    sub_1C440962C(&v59);

    return v13;
  }

  v24 = 0;
  v51 = v62 + 32;
  v49 = v62;
  while (2)
  {
    if (v24 < *(v23 + 16))
    {
      v25 = (v51 + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v52 = v24 + 1;
      v28 = v60;
      v29 = v61;
      sub_1C4409678(&v59, v60);
      v30 = *(v29 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      result = v30(v28, v29);
      v31 = result;
      v32 = 0;
      v33 = *(result + 16);
      while (1)
      {
        if (v33 == v32)
        {

          v56.n128_u64[0] = 0;
          v56.n128_u64[1] = 0xE000000000000000;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4F02248();

          v56.n128_u64[0] = 0xD000000000000023;
          v56.n128_u64[1] = 0x80000001C4FB9B70;
          MEMORY[0x1C6940010](v26, v27);

          v43 = v56;
          v44 = sub_1C450B034();
          v45 = sub_1C43FFB2C(&unk_1F44064D8, v44);
          v46->n128_u64[0] = v47;
          v46->n128_u64[1] = v48;
          v46[1] = v43;
          sub_1C4411340(v56, v57, v45, v46);
          sub_1C440962C(&v59);
          goto LABEL_23;
        }

        if (v32 >= *(v31 + 16))
        {
          __break(1u);
          goto LABEL_27;
        }

        sub_1C4C0B7DC(v31 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v32, v12);
        if (*v12 == v26 && v12[1] == v27)
        {
          break;
        }

        ++v32;
        v35 = sub_1C4F02938();
        result = sub_1C4412828();
        if (v35)
        {
          goto LABEL_19;
        }
      }

      sub_1C4412828();
LABEL_19:

      v24 = v52;
      v23 = v49;
      if (v52 != v50)
      {
        continue;
      }

      goto LABEL_20;
    }

    break;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C4C0B52C(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = a1[1];
  v18 = *a1;
  if (a1[2])
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C443D664();
    v6 = v5;
    sub_1C4C079AC();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 40);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      if (a2)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        MEMORY[0x1C6940010](95, 0xE100000000000000);
        MEMORY[0x1C6940010](v10, v9);

        v10 = v18;
        v9 = v4;
        v11 = *a3;
      }

      else
      {
        v11 = *a3;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C443D664();
        v11 = v15;
        *a3 = v15;
      }

      v13 = *(v11 + 16);
      if (v13 >= *(v11 + 24) >> 1)
      {
        sub_1C443D664();
        v11 = v16;
        *a3 = v16;
      }

      *(v11 + 16) = v13 + 1;
      v14 = v11 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v9;
      v8 += 2;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_1C4C0B6E4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_1C4C0A438(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t type metadata accessor for EntityEdge(uint64_t a1)
{
  result = qword_1EDDED1E0;
  if (!qword_1EDDED1E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4C0B7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C4C0B838(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v9 = sub_1C4EFB258();
  v28 = v9;
  v29 = MEMORY[0x1E699FE38];
  v10 = sub_1C4422F90(&v27);
  (*(*(v9 - 8) + 32))(v10, a1, v9);
  v11 = *a5;
  v12 = sub_1C445FAA8(a2, a3);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v12;
  v15 = v13;
  sub_1C456902C(&qword_1EC0C47D0, &qword_1C4F10DE0);
  if ((sub_1C4F02458() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_1C445FAA8(a2, a3);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_10:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *a5;
  if (v15)
  {
    v19 = (v18[7] + 40 * v14);
    sub_1C440962C(v19);
    return sub_1C441D670(&v27, v19);
  }

  else
  {
    v21 = sub_1C4418280(&v27, v28);
    v22 = MEMORY[0x1EEE9AC00](v21);
    v24 = &v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v24, v22);
    sub_1C4C0BCD0(v14, a2, a3, v24, v18);
    sub_1C440962C(&v27);
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4C0BA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v9 = MEMORY[0x1E69E6158];
  v27 = MEMORY[0x1E69E6158];
  v28 = MEMORY[0x1E69A0138];
  *&v26 = a1;
  *(&v26 + 1) = a2;
  v10 = *a6;
  v11 = sub_1C445FAA8(a3, a4);
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  sub_1C456902C(&qword_1EC0C47D0, &qword_1C4F10DE0);
  if ((sub_1C4F02458() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_1C445FAA8(a3, a4);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_10:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *a6;
  if (v14)
  {
    v18 = (v17[7] + 40 * v13);
    sub_1C440962C(v18);
    return sub_1C441D670(&v26, v18);
  }

  else
  {
    v20 = sub_1C4418280(&v26, v9);
    v21 = MEMORY[0x1EEE9AC00](v20);
    v23 = (&v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    sub_1C4C0BC40(v13, a3, a4, *v23, v23[1], v17);
    sub_1C440962C(&v26);
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4C0BC40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x1E69E6158];
  v14 = MEMORY[0x1E69A0138];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_1C441D670(&v12, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_1C4C0BCD0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1C4EFB258();
  v18 = v10;
  v19 = MEMORY[0x1E699FE38];
  v11 = sub_1C4422F90(&v17);
  (*(*(v10 - 8) + 32))(v11, a4, v10);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v12 = (a5[6] + 16 * a1);
  *v12 = a2;
  v12[1] = a3;
  result = sub_1C441D670(&v17, a5[7] + 40 * a1);
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void sub_1C4C0BDE0(uint64_t a1)
{
  sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    sub_1C4C0BE64(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4C0BE64(uint64_t a1)
{
  if (!qword_1EDDFCC90)
  {
    sub_1C4EFF0C8();
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDFCC90);
    }
  }
}

uint64_t sub_1C4C0BF14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1C4C0BF5C(void *a1)
{
  v116[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1C442B870(a1, v116);
  sub_1C440925C(v4, v5, v6, MEMORY[0x1E69E6530], v7, v8, v9, v10, v102, v109);
  v11 = swift_dynamicCast();
  if ((v11 & 1) == 0)
  {
    sub_1C447F344(v11, v12, v13, v14, v15, v16);
    v18 = sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    sub_1C440925C(v18, v19, v20, v21, v22, v23, v24, v25, v103, v110);
    v26 = swift_dynamicCast();
    if (v26)
    {
      sub_1C4418C40();
      sub_1C43FCFC0();
      sub_1C4F019B8();
      v32 = [v1 featureValueWithDouble_];
    }

    else
    {
      v33 = sub_1C447F344(v26, v27, v28, v29, v30, v31);
      sub_1C440925C(v33, v34, v35, MEMORY[0x1E69E6158], v36, v37, v38, v39, v104, v111);
      v40 = swift_dynamicCast();
      if ((v40 & 1) == 0)
      {
        sub_1C447F344(v40, v41, v42, v43, v44, v45);
        v47 = sub_1C456902C(&qword_1EC0C4B98, &unk_1C4F5D8D0);
        sub_1C440925C(v47, v48, v49, v47, v50, v51, v52, v53, v105, v112);
        v54 = swift_dynamicCast();
        if (v54)
        {
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v61 = sub_1C4F00EC8();

          v116[0] = 0;
          v17 = [ObjCClassFromMetadata featureValueWithDictionary:v61 error:v116];

          if (v17)
          {
            v62 = v116[0];
            goto LABEL_8;
          }

          v93 = v116[0];
          sub_1C43FCFC0();
          v94 = sub_1C4EF97A8();

          swift_willThrow();
        }

        else
        {
          sub_1C447F344(v54, v55, v56, v57, v58, v59);
          v63 = sub_1C456902C(&qword_1EC0C4B50, &qword_1C4F5D518);
          sub_1C440925C(v63, v64, v65, v63, v66, v67, v68, v69, v106, v113);
          v70 = swift_dynamicCast();
          if (v70)
          {
            v76 = sub_1C4418C40();
            sub_1C4461BB8(0, &qword_1EC0C1C18, 0x1E695FF10);
            v77 = sub_1C43FCFC0();
            v18 = sub_1C4C0C460(v77);
            v32 = [v76 featureValueWithSequence_];
            goto LABEL_7;
          }

          sub_1C447F344(v70, v71, v72, v73, v74, v75);
          v78 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
          sub_1C440925C(v78, v79, v80, v78, v81, v82, v83, v84, v107, v114);
          v85 = swift_dynamicCast();
          if (v85)
          {
            v91 = sub_1C4418C40();
            sub_1C4461BB8(0, &qword_1EC0C1C18, 0x1E695FF10);
            v92 = sub_1C43FCFC0();
            v18 = sub_1C4C0C4E4(v92);
            v32 = [v91 featureValueWithSequence_];
            goto LABEL_7;
          }

          sub_1C447F344(v85, v86, v87, v88, v89, v90);
          v95 = sub_1C4461BB8(0, &qword_1EC0C4B58, 0x1E695FED0);
          sub_1C440925C(v95, v96, v97, v95, v98, v99, v100, v101, v108, v115);
          if (swift_dynamicCast())
          {
            v32 = [sub_1C4418C40() featureValueWithMultiArray_];
            goto LABEL_7;
          }
        }

        sub_1C440962C(a1);
        return 0;
      }

      swift_getObjCClassFromMetadata();
      sub_1C43FCFC0();
      v18 = sub_1C4F01108();

      v32 = [v1 featureValueWithString_];
    }

LABEL_7:
    v17 = v32;

    goto LABEL_8;
  }

  v17 = [sub_1C4418C40() featureValueWithInt64_];
LABEL_8:
  sub_1C440962C(a1);
  return v17;
}

void sub_1C4C0C2D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C4C81AA0(a1, a2, 0);
  if (!v3)
  {
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    if (swift_dynamicCast())
    {
      *a3 = v10;
      *(a3 + 16) = v11;
      *(a3 + 24) = v12;
    }

    else
    {
      v7 = sub_1C450B034();
      sub_1C43FFB2C(&unk_1F44064D8, v7);
      *v8 = a1;
      *(v8 + 8) = a2;
      *(v8 + 16) = 0xD000000000000011;
      *(v8 + 24) = 0x80000001C4FB9E10;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0xE000000000000000;
      *(v8 + 48) = v9;
      *(v8 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4C0C3D4(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 16))();
  v7[2] = a1;
  v7[3] = a2;
  v8 = v2;
  v6 = sub_1C45DAF78(sub_1C4C11118, v7, v5);

  sub_1C4598364(v6);
}

id sub_1C4C0C460(uint64_t a1)
{
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  v1 = sub_1C4F01658();

  v2 = [swift_getObjCClassFromMetadata() sequenceWithInt64Array_];

  return v2;
}

id sub_1C4C0C4E4(uint64_t a1)
{
  v1 = sub_1C4F01658();

  v2 = [swift_getObjCClassFromMetadata() sequenceWithStringArray_];

  return v2;
}

uint64_t sub_1C4C0C550(uint64_t a1, uint64_t a2)
{
  v4 = _s10ViewConfigVMa(0);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = (v7 - v6);
  (*(a2 + 8))(a1, a2);
  v9 = *v8;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4407E80();
  sub_1C443C0C8(v8, v10);
  return v9;
}

uint64_t sub_1C4C0C5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + qword_1EC0C4998) = 0;
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  *(v3 + 48) = *(a1 + 32);
  sub_1C441A81C();
  sub_1C4C110B8(v8, v3 + v6, v7);
  *(v3 + qword_1EC152D20) = a3;
  return v3;
}

uint64_t ViewGeneration.FeatureViewClient.storage.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  a1[3] = &type metadata for ViewFeatureDatabaseTable;
  a1[4] = &protocol witness table for ViewFeatureDatabaseTable;
  sub_1C44006A8();
  v8 = swift_allocObject();
  *a1 = v8;
  v8[2] = v4;
  v8[3] = v3;
  v8[4] = v6;
  v8[5] = v5;
  v8[6] = v7;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t ViewGeneration.FeatureViewClient.featureViewStorage.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

__n128 sub_1C4C0C764@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a6@<X8>)
{
  sub_1C4C0C7F4(a1, a2, &v13);
  if (!v6)
  {
    v9 = v14;
    v11 = v15;
    v12 = v13;
    a6[3] = &type metadata for ViewGeneration.FeatureViewClient;
    a6[4] = &off_1F4403470;
    sub_1C44006A8();
    v10 = swift_allocObject();
    *a6 = v10;
    result = v11;
    *(v10 + 16) = v12;
    *(v10 + 32) = v9;
    *(v10 + 40) = v11;
  }

  return result;
}

void sub_1C4C0C7F4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1C44E9220();
  if (!v3)
  {
    a3[2] = 30315;
    a3[3] = 0xE200000000000000;
    a3[4] = v7;
    *a3 = a1;
    a3[1] = a2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4C0C860(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = &type metadata for ViewFeatureDatabaseTable;
  a3[4] = &protocol witness table for ViewFeatureDatabaseTable;
  sub_1C44006A8();
  v7 = swift_allocObject();
  *a3 = v7;
  sub_1C4C0C7F4(a1, a2, (v7 + 16));
  if (v3)
  {
    sub_1C47C41F8(a3);
  }
}

void sub_1C4C0C90C(uint64_t a1, uint64_t a2)
{
  sub_1C4C0C7F4(a1, a2, v3);
  if (!v2)
  {
    v3[0] = v4;
    v3[1] = v5;
    v4 = v6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C47D35E0();
  }
}

void sub_1C4C0C9A8(uint64_t a1, uint64_t a2)
{
  sub_1C4C0C7F4(a1, a2, v10);
  if (!v2)
  {
    v4 = v10[1];
    v5 = v10[3];
    v6 = v10[4];
    MEMORY[0x1EEE9AC00](v3);
    v9[2] = v7;
    v9[3] = v5;
    v9[4] = v6;
    v9[5] = v8;
    v9[6] = v4;
    sub_1C446C37C(sub_1C4C10B24, v9);
  }
}

uint64_t sub_1C4C0CA68(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4FB9C80);
  sub_1C446C0B8();
  MEMORY[0x1C6940010](0xD00000000000002ALL, 0x80000001C4FB9CA0);
  sub_1C446C0B8();
  MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4FB9CD0);
  sub_1C446C0B8();
  MEMORY[0x1C6940010](0xD00000000000002BLL, 0x80000001C4FB9CF0);
  sub_1C446C0B8();
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FB9D20);
  sub_1C44412A4();
  sub_1C44E9220();
  if (v2)
  {
  }

  sub_1C44412A4();
  sub_1C44E9220();
  MEMORY[0x1EEE9AC00](v5);
  v20[2] = v6;
  v20[3] = 0;
  v20[4] = 0xE000000000000000;
  v20[5] = a1;
  v20[6] = a2;

  sub_1C4418704(sub_1C4C10AF8, v20, v7, v8, v9, v10, v11, v12, v20[0], v20[1]);

  sub_1C4418704(sub_1C4C0D094, 0, v13, v14, v15, v16, v17, v18, v21, v22);

  type metadata accessor for ErrorHandlingDatabasePool(0);
  sub_1C46BC6FC();

  sub_1C4EFB2E8();

  sub_1C4EFAEB8();
}

uint64_t sub_1C4C0CD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a4;
  v32 = a6;
  v33 = a3;
  v30 = a5;
  v38 = sub_1C4EFB768();
  v7 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = sub_1C4EF98F8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_1C4F02248();

  v36 = 0xD000000000000016;
  v37 = 0x80000001C4FB9D60;
  (*(v13 + 16))(v15, *(a2 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL, v12);
  v16 = sub_1C4EF98D8();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  MEMORY[0x1C6940010](v16, v18);

  MEMORY[0x1C6940010](0x68746F2053412027, 0xEA00000000007265);
  sub_1C4EFB758();
  v19 = v35;
  sub_1C4EFBFF8();
  if (v19)
  {
    (*(v7 + 8))(v11, v38);
  }

  else
  {
    v21 = *(v7 + 8);
    v22 = v11;
    v23 = v38;
    v21(v22, v38);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1C4F0C890;
    v25 = MEMORY[0x1E69E6158];
    v26 = MEMORY[0x1E69A0138];
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = v26;
    v27 = v30;
    *(v24 + 32) = v30;
    v28 = v32;
    *(v24 + 40) = v32;
    *(v24 + 96) = v25;
    *(v24 + 104) = v26;
    *(v24 + 72) = v27;
    *(v24 + 80) = v28;
    *(v24 + 136) = v25;
    *(v24 + 144) = v26;
    *(v24 + 112) = v27;
    *(v24 + 120) = v28;
    swift_bridgeObjectRetain_n();
    v29 = v31;
    sub_1C4EFB728();
    sub_1C4EFBFF8();
    return (v21)(v29, v23);
  }
}

uint64_t sub_1C4C0D094()
{
  v0 = sub_1C4EFB768();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  return (*(v1 + 8))(v3, v0);
}

void *sub_1C4C0D25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  v3[2] = a1;
  v3[3] = a2;
  swift_unknownObjectWeakAssign();
  v3[4] = a3;
  return v3;
}

__int128 *sub_1C4C0D2B0(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v685) = a3;
  v709 = a2;
  v5 = sub_1C4EF9CD8();
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v677 = v8 - v7;
  v9 = sub_1C43FBE44();
  v10 = type metadata accessor for Configuration(v9);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  v676 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  v675 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  v672 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBF38();
  v673 = v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  v681 = &v660 - v20;
  sub_1C43FBE44();
  v684 = sub_1C4EF9E58();
  sub_1C43FCE64();
  v668 = v21;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v667 = v24 - v23;
  sub_1C43FBE44();
  sub_1C4EF9F88();
  sub_1C43FCE64();
  v670 = v26;
  v671 = v25;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  v669 = v28 - v27;
  v29 = sub_1C43FBE44();
  v30 = type metadata accessor for DateFetcher(v29);
  v31 = sub_1C43FBD18(v30);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBCC4();
  v666 = v33 - v32;
  sub_1C43FBE44();
  v683 = sub_1C4EFCE48();
  sub_1C43FCE64();
  v679 = v34;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBCC4();
  v678 = v37 - v36;
  v38 = sub_1C43FBE44();
  v39 = _s10ViewConfigVMa(v38);
  v40 = sub_1C43FBD18(v39);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  v674 = v41;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  v680 = v43;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v660 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v660 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v660 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v660 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v660 - v57;
  v682 = v3;
  v59 = *(v3 + 16);
  v60 = *(v59 + 16);

  v686 = a1;
  v61 = v687;
  sub_1C443A738(a1, v709, v62, v63, v64, v65, v66, v67);
  if (v61)
  {

    return v60;
  }

  v662 = v46;
  v663 = v49;
  v664 = v52;
  v665 = v55;
  v69 = v683;
  v68 = v684;
  v687 = v58;

  v70 = v686;
  v71 = v709;
  v60 = v59;
  ViewGeneration.ViewClients.storage(for:fullRebuild:)(v686, v709, v685 & 1);
  v72 = sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
  if (!swift_dynamicCast())
  {
    sub_1C44206C8();
    v90 = sub_1C450B034();
    sub_1C43FFB2C(&unk_1F44064D8, v90);
    *v91 = v70;
    *(v91 + 8) = v71;
    *(v91 + 16) = xmmword_1C4F5B670;
    *(v91 + 32) = 0xD000000000000025;
    *(v91 + 40) = v60;
    *(v91 + 48) = v700[0];
    *(v91 + 64) = 0;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_7:
    sub_1C4407E80();
    v93 = v687;
LABEL_8:
    sub_1C443C0C8(v93, v92);
    return v60;
  }

  v707[0] = v701[0];
  v707[1] = v701[1];
  v708 = *&v701[2];
  v73 = v687[112];
  v709 = v72;
  v74 = *(v687 + 10);
  v75 = *(v687 + 11);
  v77 = *(v687 + 12);
  v76 = *(v687 + 13);
  switch(v73)
  {
    case 0:
      v78 = *(v687 + 11);
      sub_1C440B604();
      sub_1C442D6E0();
      v79 = v74;
      v81 = v80;
      v82 = v680;
      sub_1C4431074(v80, v680, v83);
      sub_1C4401144();
      v85 = v681;
      sub_1C4431074(v60 + v84, v681, v86);
      v87 = *(v60 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
      v88 = type metadata accessor for BehaviorSequenceSignalView(0);
      sub_1C44099C4(v88);
      v60 = sub_1C4BCDEB8(&v702, v82, v79, v85, v87, v78, *&v77);
      sub_1C4407E80();
      sub_1C443C0C8(v81, v89);
      return v60;
    case 1:
      sub_1C440B604();
      sub_1C441A81C();
      v146 = v665;
      sub_1C4C110B8(v147, v665, v148);
      v149 = type metadata accessor for BiomeSignalView(0);
      sub_1C44099C4(v149);
      v150 = sub_1C441CEB0();
      v60 = sub_1C463E1A0(v150, v146, v74, v75, v77);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      return v60;
    case 2:
      sub_1C440B604();
      sub_1C442D6E0();
      v116 = v115;
      v117 = v665;
      sub_1C4431074(v115, v665, v118);
      v119 = sub_1C4412850();
      sub_1C4C10C14(v119, v120, v121, v122, 2);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v123 = sub_1C4499940();
      sub_1C4407E80();
      sub_1C443C0C8(v116, v124);
      v125 = type metadata accessor for BiomeSQLView(0);
      sub_1C44099C4(v125);
      v60 = sub_1C4BD1CD4(&v702, v117, v74, v123);
      v126 = sub_1C4412850();
      sub_1C4C10CD0(v126, v127, v128, v129, 2);
      return v60;
    case 3:
      sub_1C440B604();
      sub_1C442D6E0();
      v131 = v130;
      sub_1C440A1B8();
      sub_1C4431074(v132, v133, v134);
      v135 = type metadata accessor for CurrentTimeSignalView(0);
      sub_1C44099C4(v135);
      v136 = sub_1C441CEB0();
      v60 = sub_1C46A60E8(v136, v74, v74, v75 & 1);
      sub_1C4407E80();
      sub_1C443C0C8(v131, v137);
      return v60;
    case 4:
      v99 = sub_1C4412850();
      sub_1C4C10C28(v99, v100, v101, v102, 4);
      v103 = sub_1C43FD2BC();
      sub_1C4BEB8E0(v103, v104, v105);
      v683 = v60;
      v684 = v76;
      v685 = v74;
      sub_1C4405430();
      v172 = *(v77 + 16);
      v68 = MEMORY[0x1E69E7CC0];
      v686 = v75;
      if (!v172)
      {
        goto LABEL_35;
      }

      *&v697 = MEMORY[0x1E69E7CC0];
      v60 = &v697;
      v709 = v172;
      sub_1C459DC38();
      v174 = 0;
      v68 = v697;
      v175 = (v77 + 40);
      do
      {
        v106 = *(v77 + 16);
        if (v174 >= v106)
        {
          __break(1u);
          goto LABEL_94;
        }

        v60 = *v175;
        *&v700[0] = *(v175 - 1);
        *(&v700[0] + 1) = v60;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4C105B8(v700, &v694, v701);
        v74 = v77;

        *&v697 = v68;
        v176 = *(v68 + 16);
        if (v176 >= *(v68 + 24) >> 1)
        {
          v60 = &v697;
          sub_1C459DC38();
          v68 = v697;
        }

        ++v174;
        *(v68 + 16) = v176 + 1;
        sub_1C441D670(v701, v68 + 40 * v176 + 32);
        ++v175;
        v77 = v74;
      }

      while (v709 != v174);
LABEL_35:
      v217 = *(v683 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
      v218 = type metadata accessor for BehaviorHistoryUtility(0);
      sub_1C44099C4(v218);

      v219 = sub_1C441E7B4(v217);
      v661 = v77;
      v296 = v219;
      sub_1C46DA590(v705, v700);
      if (*(&v700[1] + 1))
      {
        sub_1C441D670(v700, v701);
        v297 = type metadata accessor for ContextTimeIntervalAggregator();
        sub_1C44692E0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v364 = sub_1C4695EE4(v68, v700, &v697);
        sub_1C44692E0();
        sub_1C442E860(v701, &v694);
        v365 = *(v682 + 32);
        sub_1C4418280(&v697, *(&v698 + 1));
        sub_1C44354F0();
        v709 = v366;
        sub_1C43FCE64();
        MEMORY[0x1EEE9AC00](v367);
        v369 = sub_1C44206A8(v368, v660);
        v370(v369);
        v296 = *v296;
        v371 = type metadata accessor for BehaviorDatabaseEventTracker();
        v692 = v371;
        v693 = &off_1F43E2390;
        v691[0] = v296;
        v689 = v297;
        v690 = &off_1F43E6990;
        *&v688 = v364;
        type metadata accessor for BehaviorFeaturizer();
        v372 = swift_allocObject();
        sub_1C4418280(v691, v371);
        sub_1C43FCE64();
        MEMORY[0x1EEE9AC00](v373);
        v375 = sub_1C44206A8(v374, v660);
        v376(v375);
        v377 = *v296;
        v372[10] = v371;
        v372[11] = &off_1F43E2390;
        v372[7] = v377;
        v372[18] = 0x413BAF8000000000;

        sub_1C440962C(v701);
        v372[19] = 0xD000000000000023;
        v372[20] = 0x80000001C4F8DA80;
        sub_1C441D670(v700, (v372 + 2));
        sub_1C441D670(&v694, (v372 + 12));
        v372[17] = v365;
        sub_1C441D670(&v688, (v372 + 21));
        sub_1C440962C(v691);
        sub_1C440962C(&v697);
      }

      else
      {

        sub_1C4420C3C(v700, &qword_1EC0BB460, &qword_1C4F5D900);
        v372 = 0;
      }

      sub_1C442D6E0();
      v220 = v687;
      v221 = v665;
      sub_1C4431074(v687, v665, v222);
      v223 = sub_1C440258C();
      sub_1C442E860(v223, v701);
      v224 = *(v682 + 32);
      sub_1C4418280(v701, *(&v701[1] + 1));
      sub_1C44354F0();
      v709 = v225;
      sub_1C43FCE64();
      MEMORY[0x1EEE9AC00](v226);
      v228 = sub_1C44206A8(v227, v660);
      v229(v228);
      v230 = *v296;
      sub_1C4C10D8C(v707, v700);

      v60 = sub_1C4C10DE8(v707, v221, v68, v372, v230, v224);

      v231 = sub_1C4426158();
      sub_1C4434758(v231, v232, v233, v234, 4);
      sub_1C4707ED4(&v702);
      sub_1C4407E80();
      sub_1C443C0C8(v220, v235);
      sub_1C440962C(v701);
      return v60;
    case 5:
      v151 = sub_1C4412850();
      sub_1C4C10C28(v151, v152, v153, v154, 5);
      v155 = sub_1C43FD2BC();
      sub_1C4BEB8E0(v155, v156, v157);
      v684 = v76;
      v685 = v74;
      v686 = v75;
      sub_1C4405430();
      v205 = v682;
      v206 = *(v682 + 24);
      v207 = *(v60 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
      v208 = type metadata accessor for BehaviorHistoryUtility(0);
      sub_1C44099C4(v208);

      v209 = sub_1C4624330(v206, v207);
      v661 = v77;
      v255 = v209;
      v709 = 0;
      sub_1C46DA590(v705, v700);
      if (*(&v700[1] + 1))
      {
        sub_1C441D670(v700, v701);
        v683 = type metadata accessor for BehaviorFeaturizer();
        sub_1C442E860(v706, v700);
        sub_1C442E860(v701, &v697);
        v206 = *(v205 + 32);
        sub_1C4418280(v700, *(&v700[1] + 1));
        sub_1C44354F0();
        v681 = v256;
        sub_1C43FCE64();
        MEMORY[0x1EEE9AC00](v257);
        v259 = sub_1C44206A8(v258, v660);
        v260(v259);
        v261 = *(&v698 + 1);
        v262 = v699;
        sub_1C4418280(&v697, *(&v698 + 1));
        sub_1C43FCE64();
        MEMORY[0x1EEE9AC00](v263);
        v265 = sub_1C43FD7EC(v264, v660);
        v266(v265);
        *&v694 = v255;
        v267 = type metadata accessor for BehaviorDatabaseEventTracker();

        v268 = v261;
        v205 = v682;
        v269 = sub_1C460784C(&v694, v207, 0, v206, v683, v208, v268, v267, &off_1F43E41D8, v262, &off_1F43E2390);
        sub_1C440962C(v701);
        sub_1C440962C(&v697);
        sub_1C440962C(v700);
        v683 = v269;
      }

      else
      {

        sub_1C4420C3C(v700, &qword_1EC0BB460, &qword_1C4F5D900);
        v683 = 0;
      }

      sub_1C442D6E0();
      v317 = v687;
      sub_1C4431074(v687, v665, v318);
      v319 = sub_1C440258C();
      sub_1C442E860(v319, v701);
      v320 = *(v205 + 32);
      v321 = sub_1C4418280(v701, *(&v701[1] + 1));
      sub_1C4430284(v321, v322, v323, v324, v325, v326, v327, v328, v660);
      sub_1C43FCE64();
      MEMORY[0x1EEE9AC00](v329);
      sub_1C43FBCC4();
      v331 = sub_1C4408C64(v330);
      v332(v331);
      v60 = *v206;
      v333 = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
      *(&v700[1] + 1) = v333;
      *&v700[2] = &off_1F43E2510;
      *&v700[0] = v60;
      v334 = type metadata accessor for EntityRelevanceFeatureView(0);
      sub_1C44099C4(v334);
      v335 = sub_1C442EDA0();
      sub_1C4418280(v335, v333);
      sub_1C43FCE64();
      MEMORY[0x1EEE9AC00](v336);
      v338 = sub_1C44206A8(v337, v660);
      v339(v338);
      v340 = *v207;
      v341 = (v60 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_histogramKeyProvider);
      v341[3] = v333;
      v341[4] = &off_1F43E2510;

      v342 = v683;

      v343 = sub_1C4426158();
      sub_1C4C10CD0(v343, v344, v345, v346, 5);
      *v341 = v340;
      sub_1C4707ED4(&v702);
      sub_1C4407E80();
      sub_1C443C0C8(v317, v347);
      sub_1C44113A8();
      sub_1C441A81C();
      sub_1C4C110B8(v665, v60 + v348, v349);
      *(v60 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_featurizer) = v342;
      *(v60 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_keyValueStore) = v320;
      sub_1C440962C(v700);
      sub_1C440962C(v701);
      sub_1C4426ED8();
      return v60;
    case 6:
      v158 = sub_1C4412850();
      sub_1C4C10C14(v158, v159, v160, v161, 6);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v162 = sub_1C43FD2BC();
      sub_1C4BEB8E0(v162, v163, v164);
      sub_1C4405430();
      sub_1C4450068();
      v270 = v60;
      v684 = v76;
      v60 = sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
      v271 = sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
      if (sub_1C440C02C(v271))
      {
        v272 = v74;
        v68 = *(&v695 + 1);
        v273 = v696;
        sub_1C4409678(&v694, *(&v695 + 1));
        v274 = sub_1C43FBD30();
        v275(v274, v273);
        v276 = sub_1C440962C(&v694);
        if (*(&v698 + 1))
        {
          if (sub_1C4460448(v276, v277, v278, &unk_1F43E6C38))
          {
            if (*(&v700[0] + 1))
            {
              v661 = v77;
              v685 = v272;
              v686 = v75;

              memcpy(v701, v700, 0x50uLL);
              v279 = *(v682 + 24);
              v280 = *(v270 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
              v281 = type metadata accessor for BehaviorHistoryUtility(0);
              v282 = sub_1C44099C4(v281);

              sub_1C441E7B4(v280);
              sub_1C443F3B4();
              if (*(&v698 + 1))
              {
                sub_1C441D670(&v697, v700);
                v683 = type metadata accessor for BehaviorFeaturizer();
                sub_1C442E860((v280 + 16), &v697);
                sub_1C442E860(v700, &v694);
                v391 = sub_1C441C560();
                sub_1C4430284(v391, v392, v393, v394, v395, v396, v397, v398, v660);
                sub_1C43FCE64();
                MEMORY[0x1EEE9AC00](v399);
                v401 = sub_1C44206A8(v400, v660);
                v402(v401);
                v282 = v696;
                sub_1C4418280(&v694, *(&v695 + 1));
                sub_1C444B34C();
                sub_1C43FCE64();
                MEMORY[0x1EEE9AC00](v403);
                v405 = sub_1C43FD7EC(v404, v660);
                v406(v405);
                v691[0] = v279;
                type metadata accessor for BehaviorDatabaseEventTracker();

                sub_1C441F014(&off_1F43E41D8, v658, v659, &off_1F43E2390);
                v407 = sub_1C442EDA0();
                sub_1C440962C(v407);
                sub_1C440962C(&v694);
                sub_1C440962C(&v697);
                sub_1C4426ED8();
                v683 = v279;
              }

              else
              {

                sub_1C4420C3C(&v697, &qword_1EC0BB460, &qword_1C4F5D900);
                v683 = 0;
              }

              sub_1C442D6E0();
              sub_1C4431074(v687, v665, v432);
              v433 = sub_1C440258C();
              sub_1C442E860(v433, v700);
              sub_1C442E860(&v701[2] + 8, &v697);
              v434 = sub_1C4418280(v700, *(&v700[1] + 1));
              sub_1C4430284(v434, v435, v436, v437, v438, v439, v440, v441, v660);
              sub_1C43FCE64();
              MEMORY[0x1EEE9AC00](v442);
              v444 = sub_1C4413A08(v443, v660);
              v445(v444);
              sub_1C4418280(&v697, *(&v698 + 1));
              sub_1C44354F0();
              v681 = v446;
              sub_1C43FCE64();
              MEMORY[0x1EEE9AC00](v447);
              sub_1C43FBCC4();
              v449 = sub_1C4408C64(v448);
              v450(v449);
              v451 = *v282;
              v452 = *v280;
              v453 = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
              *(&v695 + 1) = v453;
              v696 = &off_1F43E2510;
              *&v694 = v451;
              v454 = type metadata accessor for BehaviorDatabaseEventTracker();
              v692 = v454;
              v693 = &off_1F43E2390;
              v691[0] = v452;
              v455 = type metadata accessor for PersonEntityTaggingView(0);
              v60 = sub_1C44099C4(v455);
              sub_1C4418280(&v694, v453);
              sub_1C444B34C();
              sub_1C43FCE64();
              MEMORY[0x1EEE9AC00](v456);
              v458 = sub_1C44206A8(v457, v660);
              v459(v458);
              sub_1C4418280(v691, v692);
              sub_1C43FCE64();
              MEMORY[0x1EEE9AC00](v460);
              v462 = sub_1C43FD7EC(v461, v660);
              v463(v462);
              v464 = *v272;
              v465 = (v60 + OBJC_IVAR____TtC24IntelligencePlatformCore23PersonEntityTaggingView_histogramKeyProvider);
              v465[3] = v453;
              v465[4] = &off_1F43E2510;
              *v465 = v464;
              v466 = (v60 + OBJC_IVAR____TtC24IntelligencePlatformCore23PersonEntityTaggingView_loiEventTracker);
              v466[3] = v454;
              sub_1C441BD8C(v466);
              sub_1C441A81C();
              sub_1C4C110B8(v665, v60 + v467, v468);
              *(v60 + 7) = v683;
              sub_1C4C10D8C(v707, &v688);
              sub_1C440962C(v691);
              sub_1C440962C(&v694);

              v469 = sub_1C4426158();
              sub_1C4434758(v469, v470, v471, v472, 6);
              sub_1C4AF9C44(v701);
              sub_1C4707ED4(&v702);
              sub_1C4407E80();
              sub_1C443C0C8(v687, v473);
              sub_1C440962C(&v697);
              sub_1C440962C(v700);
              sub_1C4426ED8();
              return v60;
            }
          }

          else
          {
            sub_1C442F414();
          }

LABEL_59:
          sub_1C4420C3C(v700, &qword_1EC0BAFF8, qword_1C4F1D680);
          sub_1C44206C8();
          v306 = sub_1C450B034();
          v307 = sub_1C43FFB2C(&unk_1F44064D8, v306);
          sub_1C44047EC(v307, v308);
          v309 = sub_1C44179C4();
          v312 = v68;
          v313 = 6;
          goto LABEL_63;
        }
      }

      else
      {
        v696 = 0;
        v694 = 0u;
        v695 = 0u;
        sub_1C4420C3C(&v694, &unk_1EC0C06B0, &qword_1C4F5FBA0);
        v697 = 0u;
        v698 = 0u;
        v699 = 0;
      }

      sub_1C4420C3C(&v697, &qword_1EC0C4BA0, &unk_1C4F5D8F0);
      sub_1C4422504();
      goto LABEL_59;
    case 7:
      v138 = sub_1C4412850();
      sub_1C4C10C28(v138, v139, v140, v141, 7);
      v142 = sub_1C43FD2BC();
      v143 = v76;
      sub_1C4BEB8E0(v142, v144, v145);
      sub_1C4405430();
      sub_1C442D6E0();
      v685 = v74;
      v185 = v665;
      sub_1C4431074(v687, v665, v186);
      v684 = *(v682 + 24);
      sub_1C442E860(v706, v701);
      sub_1C4418280(v701, *(&v701[1] + 1));
      sub_1C44354F0();
      v709 = v187;
      sub_1C43FCE64();
      MEMORY[0x1EEE9AC00](v188);
      v190 = sub_1C4413A08(v189, v660);
      v191(v190);
      v60 = *v74;
      v192 = type metadata accessor for BehaviorDatabaseEventTracker();
      v661 = v77;
      *(&v700[1] + 1) = v192;
      *&v700[2] = &off_1F43E2390;
      *&v700[0] = v60;
      v193 = type metadata accessor for PersonEntityTaggingFactsView(0);
      sub_1C44099C4(v193);
      v194 = sub_1C442EDA0();
      sub_1C4418280(v194, v192);
      sub_1C44354F0();
      v683 = v195;
      sub_1C43FCE64();
      MEMORY[0x1EEE9AC00](v196);
      sub_1C43FBCC4();
      v198 = sub_1C4408C64(v197);
      v199(v198);
      v200 = *v75;
      v201 = (v60 + OBJC_IVAR____TtC24IntelligencePlatformCore28PersonEntityTaggingFactsView_eventTracker);
      v201[3] = v192;
      v201[4] = &off_1F43E2390;
      *v201 = v200;
      sub_1C44113A8();
      sub_1C441A81C();
      sub_1C4C110B8(v185, v60 + v202, v203);
      *(v60 + OBJC_IVAR____TtC24IntelligencePlatformCore28PersonEntityTaggingFactsView_graphStore) = v684;
      sub_1C4C10D8C(v707, &v697);

      sub_1C440962C(v700);
      sub_1C4434758(v685, v75, v661, v143, 7);
      sub_1C4707ED4(&v702);
      sub_1C4407E80();
      sub_1C443C0C8(v687, v204);
      sub_1C440962C(v701);
      return v60;
    case 8:
      v165 = sub_1C4412850();
      sub_1C4C10C14(v165, v166, v167, v168, 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v169 = sub_1C43FD2BC();
      sub_1C4BEB8E0(v169, v170, v171);
      sub_1C4405430();
      sub_1C4450068();
      v283 = v60;
      v684 = v76;
      v60 = sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
      v284 = sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
      if (sub_1C440C02C(v284))
      {
        v285 = v74;
        v68 = *(&v695 + 1);
        v286 = v696;
        sub_1C4409678(&v694, *(&v695 + 1));
        v287 = sub_1C43FBD30();
        v288(v287, v286);
        v289 = sub_1C440962C(&v694);
        if (*(&v698 + 1))
        {
          if (sub_1C4460448(v289, v290, v291, &unk_1F43E6C38))
          {
            if (*(&v700[0] + 1))
            {
              v661 = v77;
              v685 = v285;
              v686 = v75;

              memcpy(v701, v700, 0x50uLL);
              v292 = *(v682 + 24);
              v293 = *(v283 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
              v294 = type metadata accessor for BehaviorHistoryUtility(0);
              v295 = sub_1C44099C4(v294);

              sub_1C441E7B4(v293);
              sub_1C443F3B4();
              if (*(&v698 + 1))
              {
                sub_1C441D670(&v697, v700);
                v683 = type metadata accessor for BehaviorFeaturizer();
                sub_1C442E860((v293 + 16), &v697);
                sub_1C442E860(v700, &v694);
                v408 = sub_1C441C560();
                sub_1C4430284(v408, v409, v410, v411, v412, v413, v414, v415, v660);
                sub_1C43FCE64();
                MEMORY[0x1EEE9AC00](v416);
                v418 = sub_1C44206A8(v417, v660);
                v419(v418);
                v295 = v696;
                sub_1C4418280(&v694, *(&v695 + 1));
                sub_1C444B34C();
                sub_1C43FCE64();
                MEMORY[0x1EEE9AC00](v420);
                v422 = sub_1C43FD7EC(v421, v660);
                v423(v422);
                v691[0] = v292;
                type metadata accessor for BehaviorDatabaseEventTracker();

                sub_1C441F014(&off_1F43E41D8, v658, v659, &off_1F43E2390);
                v424 = sub_1C442EDA0();
                sub_1C440962C(v424);
                sub_1C440962C(&v694);
                sub_1C440962C(&v697);
                sub_1C4426ED8();
                v683 = v292;
              }

              else
              {

                sub_1C4420C3C(&v697, &qword_1EC0BB460, &qword_1C4F5D900);
                v683 = 0;
              }

              sub_1C442D6E0();
              sub_1C4431074(v687, v665, v474);
              v475 = sub_1C440258C();
              sub_1C442E860(v475, v700);
              sub_1C442E860(&v701[2] + 8, &v697);
              v476 = sub_1C4418280(v700, *(&v700[1] + 1));
              sub_1C4430284(v476, v477, v478, v479, v480, v481, v482, v483, v660);
              sub_1C43FCE64();
              MEMORY[0x1EEE9AC00](v484);
              v486 = sub_1C4413A08(v485, v660);
              v487(v486);
              sub_1C4418280(&v697, *(&v698 + 1));
              sub_1C44354F0();
              v681 = v488;
              sub_1C43FCE64();
              MEMORY[0x1EEE9AC00](v489);
              sub_1C43FBCC4();
              v491 = sub_1C4408C64(v490);
              v492(v491);
              v493 = *v295;
              v494 = *v293;
              v495 = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
              *(&v695 + 1) = v495;
              v696 = &off_1F43E2510;
              *&v694 = v493;
              v496 = type metadata accessor for BehaviorDatabaseEventTracker();
              v692 = v496;
              v693 = &off_1F43E2390;
              v691[0] = v494;
              v497 = type metadata accessor for PhotosPersonEntityTaggingView(0);
              v60 = sub_1C44099C4(v497);
              sub_1C4418280(&v694, v495);
              sub_1C444B34C();
              sub_1C43FCE64();
              MEMORY[0x1EEE9AC00](v498);
              v500 = sub_1C44206A8(v499, v660);
              v501(v500);
              sub_1C4418280(v691, v692);
              sub_1C43FCE64();
              MEMORY[0x1EEE9AC00](v502);
              v504 = sub_1C43FD7EC(v503, v660);
              v505(v504);
              v506 = *v285;
              v507 = (v60 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_histogramKeyProvider);
              v507[3] = v495;
              v507[4] = &off_1F43E2510;
              *v507 = v506;
              v508 = (v60 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_loiEventTracker);
              v508[3] = v496;
              sub_1C441BD8C(v508);
              sub_1C441A81C();
              sub_1C4C110B8(v665, v60 + v509, v510);
              *(v60 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_featurizer) = v683;
              sub_1C4C10D8C(v707, &v688);
              sub_1C440962C(v691);
              sub_1C440962C(&v694);

              v511 = sub_1C4426158();
              sub_1C4434758(v511, v512, v513, v514, 8);
              sub_1C4AF9C44(v701);
              sub_1C4707ED4(&v702);
              sub_1C4407E80();
              sub_1C443C0C8(v687, v515);
              sub_1C440962C(&v697);
              sub_1C440962C(v700);
              sub_1C4426ED8();
              return v60;
            }
          }

          else
          {
            sub_1C442F414();
          }

LABEL_62:
          sub_1C4420C3C(v700, &qword_1EC0BAFF8, qword_1C4F1D680);
          sub_1C44206C8();
          v314 = sub_1C450B034();
          v315 = sub_1C43FFB2C(&unk_1F44064D8, v314);
          sub_1C44047EC(v315, v316);
          v309 = sub_1C44179C4();
          v312 = v68;
          v313 = 8;
LABEL_63:
          sub_1C4434758(v309, v310, v311, v312, v313);
          sub_1C4707ED4(&v702);
          goto LABEL_7;
        }
      }

      else
      {
        v696 = 0;
        v694 = 0u;
        v695 = 0u;
        sub_1C4420C3C(&v694, &unk_1EC0C06B0, &qword_1C4F5FBA0);
        v697 = 0u;
        v698 = 0u;
        v699 = 0;
      }

      sub_1C4420C3C(&v697, &qword_1EC0C4BA0, &unk_1C4F5D8F0);
      sub_1C4422504();
      goto LABEL_62;
    case 9:
      if (!(v77 | v75 | v74 | v76))
      {
        sub_1C442D6E0();
        v178 = v177;
        v179 = v664;
        sub_1C4431074(v177, v664, v180);
        v181 = *(v682 + 24);
        v182 = *(v60 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
        v703 = v69;
        v704 = MEMORY[0x1E69A9230];
        v183 = sub_1C4422F90(&v702);

        v184 = v182;
        sub_1C4EFDA08();

        sub_1C4407E80();
        sub_1C443C0C8(v178, v245);
        sub_1C4418280(&v702, v703);
        sub_1C43FCE64();
        MEMORY[0x1EEE9AC00](v246);
        v248 = sub_1C4413A08(v247, v660);
        v249(v248);
        v250 = type metadata accessor for CallInteractionSignalView(0);
        v60 = sub_1C44099C4(v250);
        v251 = (v60 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_handleView);
        v251[3] = v69;
        v251[4] = MEMORY[0x1E69A9230];
        v252 = sub_1C4422F90(v251);
        (*(v679 + 32))(v252, v183, v69);
        *(v60 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView____lazy_storage___featureNames) = 0;
        sub_1C44113A8();
        sub_1C441A81C();
        sub_1C4C110B8(v179, v60 + v253, v254);
        *(v60 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_store) = v181;
        sub_1C440962C(&v702);
        return v60;
      }

      v106 = v77 | v75 | v76;
      if (v74 == 1 && !v106)
      {
        sub_1C440B604();
        sub_1C441A81C();
        sub_1C440A1B8();
        sub_1C4C110B8(v107, v108, v109);
        v110 = sub_1C43FCA44();
        v111 = type metadata accessor for InstalledAppSignal(v110);
        sub_1C44099C4(v111);
        v112 = sub_1C440FD94();
        sub_1C4945FCC(v112, v113, v114);
        sub_1C43FBD30();

        return v60;
      }

      v173 = *(v687 + 10);
      v210 = v74 == 2;
      v211 = v665;
      v74 = v682;
      if (v210 && !v106)
      {
        sub_1C440B604();
        sub_1C441A81C();
        sub_1C4C110B8(v212, v211, v213);
        v214 = *(v74 + 24);
        v215 = type metadata accessor for MatchingWorkEmailAddressSignal(0);
        sub_1C44099C4(v215);
        v216 = sub_1C441CEB0();
        sub_1C4A32790(v216, v211, v214);
        sub_1C43FBD30();

        return v60;
      }

      if (v173 == 3 && !v106)
      {
        sub_1C442D6E0();
        v237 = v236;
        v238 = v663;
        sub_1C4431074(v236, v663, v239);
        v240 = *(v74 + 24);
        v241 = *(v60 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
        v242 = MEMORY[0x1E69A9230];
        v703 = v69;
        v704 = MEMORY[0x1E69A9230];
        v243 = sub_1C4422F90(&v702);

        v244 = v241;
        sub_1C4EFDA08();

        sub_1C4407E80();
        sub_1C443C0C8(v237, v354);
        sub_1C4418280(&v702, v703);
        sub_1C43FCE64();
        MEMORY[0x1EEE9AC00](v355);
        v357 = sub_1C4413A08(v356, v660);
        v358(v357);
        v359 = type metadata accessor for MessagingInteractionSignalView(0);
        v60 = sub_1C44099C4(v359);
        v360 = (v60 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_handleView);
        v360[3] = v69;
        v360[4] = v242;
        v361 = sub_1C4422F90(v360);
        (*(v679 + 32))(v361, v243, v69);
        *(v60 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView____lazy_storage___featureNames) = 0;
        sub_1C44113A8();
        sub_1C441A81C();
        sub_1C4C110B8(v238, v60 + v362, v363);
        *(v60 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_store) = v240;
        sub_1C440962C(&v702);
        return v60;
      }

      if (v173 == 4 && !v106)
      {
        sub_1C440B604();
        sub_1C442D6E0();
        v299 = v298;
        v300 = v662;
        sub_1C4431074(v298, v662, v301);
        v302 = *(v74 + 24);
        v303 = *(v60 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

        v304 = v303;
        v305 = v678;
        sub_1C4EFDA08();

        sub_1C4407E80();
        sub_1C443C0C8(v299, v382);
        v383 = type metadata accessor for ModeInteractionSignal(0);
        sub_1C44099C4(v383);
        v384 = sub_1C441CEB0();
        return sub_1C4A3B994(v384, v300, v302, v305);
      }

      if (v173 == 5 && !v106)
      {
        type metadata accessor for ActivityIntervalSignal();
        v350 = sub_1C4572E34();
        sub_1C441A81C();
        sub_1C4C110B8(v687, v211, v351);
        v352 = &unk_1EC0C4BC8;
        v353 = &unk_1C4F5D928;
LABEL_75:
        v380 = sub_1C456902C(v352, v353);
        sub_1C44099C4(v380);
        v381 = v211;
        return sub_1C4C0C5F8(v707, v381, v350);
      }

      v175 = v60;
      if (v173 == 6 && !v106)
      {
        type metadata accessor for AmbientLightDistributionSignal();
        sub_1C457ECF0();
        v350 = v378;
        sub_1C441A81C();
        sub_1C4C110B8(v687, v211, v379);
        v352 = &unk_1EC0C4BB0;
        v353 = &unk_1C4F5D910;
        goto LABEL_75;
      }

      if (v173 != 7 || v106)
      {
        if (v173 != 8 || v106)
        {
          if (v173 != 9 || v106)
          {
LABEL_94:
            if (v173 != 10 || v106)
            {
              if (v173 == 11 && !v106)
              {
                sub_1C440B604();
                sub_1C441A81C();
                sub_1C440A1B8();
                sub_1C4C110B8(v520, v521, v522);
                v523 = sub_1C43FCA44();
                v524 = type metadata accessor for ContactRelationshipSignal(v523);
                sub_1C44099C4(v524);
                v525 = sub_1C440FD94();
                sub_1C468DF8C(v525, v526, v527);
                sub_1C43FBD30();

                return v60;
              }

              if (v173 != 12 || v106)
              {
                if (v173 != 13 || v106)
                {
                  if (v173 != 14 || v106)
                  {
                    if (v173 == 15 && !v106)
                    {
                      sub_1C440B604();
                      sub_1C441A81C();
                      sub_1C440A1B8();
                      sub_1C4C110B8(v539, v540, v541);
                      v542 = sub_1C43FCA44();
                      v543 = type metadata accessor for FamilyNameEquivalencySignalView(v542);
                      sub_1C44099C4(v543);
                      v544 = sub_1C440FD94();
                      sub_1C47CF270(v544, v545, v546);
                      sub_1C43FBD30();

                      return v60;
                    }

                    if (v173 != 16 || v106)
                    {
                      if (v173 != 17 || v106)
                      {
                        if (v173 != 18 || v106)
                        {
                          if (v173 != 19 || v106)
                          {
                            if (v173 != 20 || v106)
                            {
                              if (v173 != 21 || v106)
                              {
                                if (v173 == 22 && !v106)
                                {
                                  sub_1C440B604();
                                  sub_1C441A81C();
                                  sub_1C440A1B8();
                                  sub_1C4C110B8(v571, v572, v573);
                                  v574 = sub_1C43FCA44();
                                  v575 = type metadata accessor for PeopleEmailSignal(v574);
                                  sub_1C44099C4(v575);
                                  v576 = sub_1C440FD94();
                                  sub_1C4A8B1E0(v576, v577, v578);
                                  sub_1C43FBD30();

                                  return v60;
                                }

                                if (v173 == 23 && !v106)
                                {
                                  sub_1C440B604();
                                  sub_1C442D6E0();
                                  v579 = v687;
                                  sub_1C440A1B8();
                                  sub_1C4431074(v580, v581, v582);
                                  v583 = *(v682 + 24);
                                  v584 = type metadata accessor for PeopleNameSignal(0);
                                  sub_1C44099C4(v584);

                                  v60 = sub_1C4A95A6C(&v702, v74, v583);
                                  sub_1C4407E80();
                                  sub_1C443C0C8(v579, v585);
                                  return v60;
                                }

                                if (v173 != 24 || v106)
                                {
                                  if (v173 != 25 || v106)
                                  {
                                    if (v173 == 26 && !v106)
                                    {
                                      sub_1C440B604();
                                      sub_1C441A81C();
                                      sub_1C440A1B8();
                                      sub_1C4C110B8(v595, v596, v597);
                                      v598 = sub_1C43FCA44();
                                      v599 = type metadata accessor for SameEmployerSignal(v598);
                                      sub_1C44099C4(v599);
                                      v600 = sub_1C440FD94();
                                      sub_1C4AE6B94(v600, v601, v602);
                                      sub_1C43FBD30();

                                      return v60;
                                    }

                                    if (v173 != 27 || v106)
                                    {
                                      if (v173 != 28 || v106)
                                      {
                                        if (v173 != 29 || v106)
                                        {
                                          if (v173 != 30 || v106)
                                          {
                                            if (v173 != 31 || v106)
                                            {
                                              if (v173 != 32 || v106)
                                              {
                                                if (v173 != 33 || v106)
                                                {
                                                  sub_1C440B604();
                                                  sub_1C441A81C();
                                                  sub_1C43FF788(v636, v637, v638);
                                                  sub_1C4401144();
                                                  v640 = v673;
                                                  sub_1C4431074(v175 + v639, v673, v641);
                                                  v642 = type metadata accessor for EntityRelevanceDataCollectionView(0);
                                                  sub_1C44099C4(v642);
                                                  v643 = sub_1C441CEB0();
                                                  return sub_1C4BEE9F8(v643, v68, v640);
                                                }

                                                else
                                                {
                                                  v631 = OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_config;
                                                  sub_1C4401144();
                                                  v632 = v672;
                                                  sub_1C4431074(v175 + v631, v672, v633);
                                                  v634 = *(v175 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
                                                  v635 = type metadata accessor for BehaviorHistoryUtility(0);
                                                  sub_1C44099C4(v635);
                                                  v644 = sub_1C4623CF4(v632, v634);
                                                  type metadata accessor for BehaviorFeaturizer();
                                                  sub_1C4401144();
                                                  v645 = v675;
                                                  sub_1C4431074(v175 + v631, v675, v646);
                                                  v704 = &off_1F43E41D8;
                                                  v703 = v635;
                                                  *&v702 = v644;

                                                  v647 = sub_1C4601538(v645, &v702);
                                                  sub_1C4401144();
                                                  sub_1C4431074(v175 + v631, v676, v648);
                                                  if (qword_1EDDE7308 != -1)
                                                  {
                                                    swift_once();
                                                  }

                                                  v649 = sub_1C4ABF81C();
                                                  sub_1C442C024();
                                                  sub_1C440B604();
                                                  sub_1C442D6E0();
                                                  v650 = v674;
                                                  sub_1C4431074(v687, v674, v651);
                                                  v652 = *(v682 + 24);

                                                  v653 = v677;
                                                  sub_1C4EF9C88();
                                                  v654 = type metadata accessor for EntitySimilarityFeatureView(0);
                                                  v655 = sub_1C44099C4(v654);
                                                  v656 = v649;
                                                  v60 = v655;
                                                  sub_1C4BFD59C(&v702, v650, v652, v647, v656, v653);
                                                  sub_1C43FBD30();

                                                  sub_1C4407E80();
                                                  sub_1C443C0C8(v687, v657);
                                                }

                                                return v60;
                                              }

                                              type metadata accessor for VirtualInteractionsDistributionSignal();
                                              sub_1C4401144();
                                              v68 = v673;
                                              sub_1C4431074(v625 + v626, v673, v627);
                                              v350 = sub_1C4D2F82C(v68);
                                              sub_1C441A81C();
                                              sub_1C43FF788(v628, v629, v630);
                                              v389 = &unk_1EC0C4BC0;
                                              v390 = &unk_1C4F5D920;
                                            }

                                            else
                                            {
                                              v620 = type metadata accessor for WorkoutSignal();
                                              v621 = sub_1C440C428(v620);
                                              v350 = sub_1C4D61394(v621);
                                              sub_1C441A81C();
                                              sub_1C43FF788(v622, v623, v624);
                                              v389 = &unk_1EC0C4BE8;
                                              v390 = &unk_1C4F5D948;
                                            }
                                          }

                                          else
                                          {
                                            type metadata accessor for UserFocusComputedModeSignal();
                                            swift_allocObject();
                                            v350 = sub_1C4B9269C(0);
                                            sub_1C441A81C();
                                            sub_1C43FF788(v617, v618, v619);
                                            v389 = &unk_1EC0C4BF0;
                                            v390 = &unk_1C4F5D950;
                                          }
                                        }

                                        else
                                        {
                                          v609 = v666;
                                          sub_1C4EF9C88();
                                          v611 = v667;
                                          v610 = v668;
                                          v612 = v68;
                                          (*(v668 + 104))(v667, *MEMORY[0x1E6969868], v68);
                                          v68 = v669;
                                          sub_1C4EF9E68();
                                          (*(v610 + 8))(v611, v612);
                                          v613 = type metadata accessor for TimeAndDateSignal(0);
                                          v350 = sub_1C44099C4(v613);
                                          sub_1C4C110B8(v609, v350 + OBJC_IVAR____TtC24IntelligencePlatformCore17TimeAndDateSignal_dateFetcher, type metadata accessor for DateFetcher);
                                          (*(v670 + 32))(v350 + OBJC_IVAR____TtC24IntelligencePlatformCore17TimeAndDateSignal_calendar, v68, v671);
                                          sub_1C441A81C();
                                          sub_1C43FF788(v614, v615, v616);
                                          v389 = &unk_1EC0C4BF8;
                                          v390 = &unk_1C4F5D958;
                                        }
                                      }

                                      else
                                      {
                                        type metadata accessor for SoundAnalysisSignal();
                                        swift_allocObject();
                                        v350 = sub_1C4B2F78C();
                                        sub_1C441A81C();
                                        sub_1C43FF788(v606, v607, v608);
                                        v389 = &unk_1EC0C4C00;
                                        v390 = &unk_1C4F5D960;
                                      }
                                    }

                                    else
                                    {
                                      type metadata accessor for SemanticLocationSignal();
                                      swift_allocObject();
                                      v350 = sub_1C4AFAB8C(0);
                                      sub_1C441A81C();
                                      sub_1C43FF788(v603, v604, v605);
                                      v389 = &unk_1EC0C4C58;
                                      v390 = &unk_1C4F5D9B8;
                                    }
                                  }

                                  else
                                  {
                                    v591 = type metadata accessor for PoiCategorySignal();
                                    v350 = sub_1C440C428(v591);
                                    *(v350 + 16) = [objc_allocWithZone(MEMORY[0x1E698F2C0]) init];
                                    sub_1C441A81C();
                                    sub_1C43FF788(v592, v593, v594);
                                    v389 = &unk_1EC0C4C08;
                                    v390 = &unk_1C4F5D968;
                                  }
                                }

                                else
                                {
                                  v586 = type metadata accessor for PhysicalSocialSignal();
                                  v587 = sub_1C440C428(v586);
                                  v350 = sub_1C4ABB214(v587);
                                  sub_1C441A81C();
                                  sub_1C43FF788(v588, v589, v590);
                                  v389 = &unk_1EC0C4C10;
                                  v390 = &unk_1C4F5D970;
                                }
                              }

                              else
                              {
                                v566 = type metadata accessor for NowPlayingSignal();
                                v567 = sub_1C440C428(v566);
                                v350 = sub_1C4A4B19C(v567);
                                sub_1C441A81C();
                                sub_1C43FF788(v568, v569, v570);
                                v389 = &unk_1EC0C4C18;
                                v390 = &unk_1C4F5D978;
                              }
                            }

                            else
                            {
                              type metadata accessor for MotionStateSignal();
                              sub_1C4434164();
                              swift_allocObject();
                              v350 = sub_1C4A450C4(1, 600.0);
                              sub_1C441A81C();
                              sub_1C43FF788(v563, v564, v565);
                              v389 = &unk_1EC0C4C20;
                              v390 = &unk_1C4F5D980;
                            }
                          }

                          else
                          {
                            type metadata accessor for MotionStateDistributionSignal();
                            sub_1C4A4134C();
                            v350 = v559;
                            sub_1C441A81C();
                            sub_1C43FF788(v560, v561, v562);
                            v389 = &unk_1EC0C4BD0;
                            v390 = &unk_1C4F5D930;
                          }
                        }

                        else
                        {
                          v555 = type metadata accessor for MicroLocationSignal(0);
                          sub_1C44099C4(v555);
                          v350 = sub_1C4A394B0();
                          sub_1C441A81C();
                          sub_1C43FF788(v556, v557, v558);
                          v389 = &unk_1EC0C4C28;
                          v390 = &unk_1C4F5D988;
                        }
                      }

                      else
                      {
                        v550 = type metadata accessor for LocationMetadataSignal();
                        v551 = sub_1C440C428(v550);
                        v350 = sub_1C49FA08C(v551);
                        sub_1C441A81C();
                        sub_1C43FF788(v552, v553, v554);
                        v389 = &unk_1EC0C4C30;
                        v390 = &unk_1C4F5D990;
                      }
                    }

                    else
                    {
                      type metadata accessor for InferredModeSignal();
                      swift_allocObject();
                      v350 = sub_1C493B648(1, 0);
                      sub_1C441A81C();
                      sub_1C43FF788(v547, v548, v549);
                      v389 = &unk_1EC0C4C38;
                      v390 = &unk_1C4F5D998;
                    }
                  }

                  else
                  {
                    type metadata accessor for DeviceWirelessSignal();
                    sub_1C4434164();
                    v535 = swift_allocObject();
                    v350 = sub_1C46C776C(v535);
                    sub_1C441A81C();
                    sub_1C43FF788(v536, v537, v538);
                    v389 = &unk_1EC0C4C40;
                    v390 = &unk_1C4F5D9A0;
                  }
                }

                else
                {
                  type metadata accessor for DevicePowerSignal();
                  sub_1C4434164();
                  v531 = swift_allocObject();
                  v350 = sub_1C46C47FC(v531);
                  sub_1C441A81C();
                  sub_1C43FF788(v532, v533, v534);
                  v389 = &unk_1EC0C4C48;
                  v390 = &unk_1C4F5D9A8;
                }
              }

              else
              {
                type metadata accessor for DeviceDisplaySignal();
                sub_1C4434164();
                swift_allocObject();
                v350 = sub_1C46C3CE0(0);
                sub_1C441A81C();
                sub_1C43FF788(v528, v529, v530);
                v389 = &unk_1EC0C4BB8;
                v390 = &unk_1C4F5D918;
              }
            }

            else
            {
              type metadata accessor for CarPlaySignal();
              swift_allocObject();
              v350 = sub_1C4677E18(0);
              sub_1C441A81C();
              sub_1C43FF788(v516, v517, v518);
              v389 = &unk_1EC0C4BA8;
              v390 = &unk_1C4F5D908;
            }
          }

          else
          {
            type metadata accessor for AppLaunchSignal();
            swift_allocObject();
            v350 = sub_1C4595FC0();
            sub_1C441A81C();
            sub_1C43FF788(v429, v430, v431);
            v389 = &unk_1EC0C4C50;
            v390 = &unk_1C4F5D9B0;
          }
        }

        else
        {
          type metadata accessor for AppCategoryDistributionSignal();
          sub_1C4590E94();
          v350 = v425;
          sub_1C441A81C();
          sub_1C43FF788(v426, v427, v428);
          v389 = &unk_1EC0C4BD8;
          v390 = &unk_1C4F5D938;
        }
      }

      else
      {
        v385 = type metadata accessor for AmbientLightSignal();
        sub_1C440C428(v385);
        v350 = sub_1C4585984();
        sub_1C441A81C();
        sub_1C43FF788(v386, v387, v388);
        v389 = &unk_1EC0C4BE0;
        v390 = &unk_1C4F5D940;
      }

      v519 = sub_1C456902C(v389, v390);
      sub_1C44099C4(v519);
      v381 = v68;
      return sub_1C4C0C5F8(v707, v381, v350);
    default:
      sub_1C44206C8();
      v96 = v95;
      v97 = sub_1C450B034();
      sub_1C43FFB2C(&unk_1F44064D8, v97);
      *v98 = v75;
      *(v98 + 8) = v74;
      *(v98 + 16) = 0xD00000000000001ALL;
      *(v98 + 24) = v60;
      *(v98 + 32) = 0;
      *(v98 + 40) = 0xE000000000000000;
      *(v98 + 48) = v702;
      *(v98 + 64) = 1;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4C10BC0(v707);
      sub_1C4407E80();
      v93 = v96;
      goto LABEL_8;
  }
}

uint64_t sub_1C4C105B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = _s10ViewConfigVMa(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = sub_1C4CB19CC(v11);
  if (v12 == 249)
  {
    sub_1C450B034();
    v13 = swift_allocError();
    *v14 = v11;
    *(v14 + 8) = v10;
    *(v14 + 16) = 0xD000000000000023;
    *(v14 + 24) = 0x80000001C4F5D860;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0xE000000000000000;
    *(v14 + 48) = v34[0];
    *(v14 + 64) = 0;
    swift_willThrow();
    *a2 = v13;
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  v16 = v12;

  sub_1C443A738(v11, v10, v17, v18, v19, v20, v21, v22);
  if (v3)
  {

    *a2 = v3;
    return result;
  }

  sub_1C4C81AA0(v11, v10, 0);
  sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
  sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
  if (swift_dynamicCast())
  {
    v24 = *(&v29 + 1);
    v23 = v30;
    sub_1C4409678(&v28, *(&v29 + 1));
    (*(v23 + 16))(&v31, v24, v23);
    sub_1C440962C(&v28);
    if (*(&v32 + 1))
    {
      sub_1C441D670(&v31, v34);
      sub_1C46A5A4C(v16, v9, v34, a3);
      sub_1C440962C(v34);
      return sub_1C443C0C8(v9, _s10ViewConfigVMa);
    }
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_1C4420C3C(&v28, &unk_1EC0C06B0, &qword_1C4F5FBA0);
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
  }

  sub_1C4420C3C(&v31, &qword_1EC0C4BA0, &unk_1C4F5D8F0);
  sub_1C450B034();
  v25 = swift_allocError();
  *v26 = v11;
  *(v26 + 8) = v10;
  *(v26 + 16) = 0xD000000000000023;
  *(v26 + 24) = 0x80000001C4F5D860;
  *(v26 + 32) = 0xD000000000000022;
  *(v26 + 40) = 0x80000001C4FB9DE0;
  *(v26 + 48) = v28;
  *(v26 + 64) = 0;
  swift_willThrow();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C443C0C8(v9, _s10ViewConfigVMa);
  *a2 = v25;
  return result;
}

uint64_t sub_1C4C10930()
{

  MEMORY[0x1C6942920](v0 + 40);
  return v0;
}

uint64_t sub_1C4C10968()
{
  sub_1C4C10930();
  sub_1C4434164();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C109BC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_1C4C0D2B0(a1, a2, a3);
  v5 = *(v3 + 8);

  return v5(v4);
}

id sub_1C4C10A68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = sub_1C4C0C550(a2, a3);
  v9 = v8;
  v10 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C4673B1C(v7, v9, v5, v6, 0, 0);
  *a4 = result;
  return result;
}

uint64_t sub_1C4C10B7C()
{

  sub_1C44006A8();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4C10C14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 254)
  {
    return sub_1C4C10C28(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1C4C10C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1C4C10C3C(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1C4C10C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = a2;
  switch(a5)
  {
    case 1:
    case 2:
    case 4:
    case 6:
    case 8:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      goto LABEL_3;
    case 5:
    case 7:
LABEL_3:

      result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4C10CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 254)
  {
    return sub_1C4C10CE4(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1C4C10CE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1C4C10CF8(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1C4C10CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = a2;
  switch(a5)
  {
    case 1:
    case 2:
    case 4:
    case 6:
    case 8:

      goto LABEL_3;
    case 5:
    case 7:
LABEL_3:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4C10DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  v39[3] = v12;
  v39[4] = &off_1F43E2510;
  v39[0] = a5;
  type metadata accessor for EntityRelevanceContextualFeatureView(0);
  v13 = swift_allocObject();
  v14 = sub_1C4418280(v39, v12);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = *v17;
  v37 = v12;
  v38 = &off_1F43E2510;
  *&v36 = v19;
  v20 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v20;
  *(v13 + 48) = *(a1 + 32);
  sub_1C4431074(a2, v13 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_config, _s10ViewConfigVMa);
  v21 = *(a3 + 16);
  if (v21)
  {
    v30 = a4;
    v31 = a6;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1C459E8C8(0, v21, 0);
    v22 = v35;
    v23 = a3 + 32;
    do
    {
      sub_1C442E860(v23, v32);
      v24 = v33;
      v25 = v34;
      sub_1C4409678(v32, v33);
      v26 = (*(v25 + 8))(v24, v25);
      sub_1C440962C(v32);
      v35 = v22;
      v28 = *(v22 + 16);
      v27 = *(v22 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1C459E8C8(v27 > 1, v28 + 1, 1);
        v22 = v35;
      }

      *(v22 + 16) = v28 + 1;
      *(v22 + v28 + 32) = v26;
      v23 += 40;
      --v21;
    }

    while (v21);
    sub_1C443C0C8(a2, _s10ViewConfigVMa);
    a4 = v30;
    a6 = v31;
  }

  else
  {
    sub_1C443C0C8(a2, _s10ViewConfigVMa);
    v22 = MEMORY[0x1E69E7CC0];
  }

  *(v13 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_contextAspects) = v22;
  *(v13 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_contextViews) = a3;
  *(v13 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_featurizer) = a4;
  sub_1C441D670(&v36, v13 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_histogramKeyProvider);
  *(v13 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_keyValueStore) = a6;
  sub_1C440962C(v39);
  return v13;
}

uint64_t sub_1C4C110B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4C1113C()
{
  v0 = sub_1C4EFBE38();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
  v4 = (type metadata accessor for ViewDatabaseArtifact.Property(0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4F23100;
  v8 = (v7 + v6);
  sub_1C4EFBE08();
  *v8 = 0x7463656A627573;
  v8[1] = 0xE700000000000000;
  v9 = *(v1 + 32);
  v9(v7 + v6 + v4[7], v3, v0);
  v10 = (v7 + v6 + v5);
  sub_1C4EFBDD8();
  *v10 = 0x7461636964657270;
  v10[1] = 0xE900000000000065;
  v9(v10 + v4[7], v3, v0);
  v11 = (v7 + v6 + 2 * v5);
  sub_1C4EFBE08();
  strcpy(v11, "relationshipId");
  v11[15] = -18;
  v9(&v11[v4[7]], v3, v0);
  v12 = (v7 + v6 + 3 * v5);
  sub_1C4EFBDD8();
  *v12 = 0xD000000000000015;
  v12[1] = 0x80000001C4F86600;
  v9(v12 + v4[7], v3, v0);
  v13 = (v7 + v6 + 4 * v5);
  sub_1C4EFBDD8();
  *v13 = 0x7463656A626FLL;
  v13[1] = 0xE600000000000000;
  v9(v13 + v4[7], v3, v0);
  v14 = (v7 + v6 + 5 * v5);
  sub_1C4EFBE08();
  *v14 = 0x73656372756F73;
  v14[1] = 0xE700000000000000;
  v9(v14 + v4[7], v3, v0);
  v15 = (v7 + v6 + 6 * v5);
  sub_1C4EFBDE8();
  *v15 = 0x6E656469666E6F63;
  v15[1] = 0xEA00000000006563;
  v9(v15 + v4[7], v3, v0);
  v16 = (v7 + v6 + 7 * v5);
  sub_1C4EFBDD8();
  *v16 = 0xD000000000000010;
  v16[1] = 0x80000001C4F86630;
  v9(v16 + v4[7], v3, v0);
  v17 = (v7 + v6 + 8 * v5);
  sub_1C4EFBDE8();
  *v17 = 0x6D617473656D6974;
  v17[1] = 0xE900000000000070;
  result = (v9)(v17 + v4[7], v3, v0);
  qword_1EC0C4C60 = v7;
  return result;
}

void sub_1C4C11520()
{
  v1 = sub_1C4EF98F8();
  v2 = MEMORY[0x1EEE9AC00](v1);
  (*(v4 + 16))(v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL, v2);
  type metadata accessor for ViewDatabaseArtifact();
  v5[0] = 0;
  v5[1] = 0;
  swift_allocObject();
  sub_1C4BC40B8();
}

void *sub_1C4C1162C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a6@<X8>)
{
  result = sub_1C4C116A8(a1, a2, v10);
  if (!v6)
  {
    a6[3] = &_s15GraphViewClientVN;
    a6[4] = &off_1F4403780;
    v9 = swift_allocObject();
    *a6 = v9;
    return sub_1C441D670(v10, v9 + 16);
  }

  return result;
}

uint64_t sub_1C4C116A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = a1 == 0x7247656C62617473 && a2 == 0xEB00000000687061;
  if (v7 || (sub_1C4F02938() & 1) != 0)
  {
    v9 = qword_1EC0B7188;

    if (v9 != -1)
    {
      sub_1C441A834(&qword_1EC0B7188);
    }

    v10 = qword_1EC0C4C60;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4C11520();
    if (v4)
    {
LABEL_9:
    }

    v13 = v11;

    a3[3] = &_s18GraphDatabaseTableVN;
    a3[4] = &off_1F4403750;
    result = swift_allocObject();
    *a3 = result;
    strcpy((result + 16), "stable_graph");
    *(result + 29) = 0;
    *(result + 30) = -5120;
    *(result + 32) = v13;
    *(result + 40) = v10;
    goto LABEL_11;
  }

  v14 = a1 == 0x617247746E657665 && a2 == 0xEA00000000006870;
  if (v14 || (sub_1C4F02938() & 1) != 0)
  {
    v15 = qword_1EC0B7188;

    if (v15 != -1)
    {
      sub_1C441A834(&qword_1EC0B7188);
    }

    v16 = qword_1EC0C4C60;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4C11520();
    if (v4)
    {
      goto LABEL_9;
    }

    v18 = v17;

    a3[3] = &_s18GraphDatabaseTableVN;
    a3[4] = &off_1F4403750;
    result = swift_allocObject();
    *a3 = result;
    *(result + 16) = 0x72675F746E657665;
    *(result + 24) = 0xEB00000000687061;
    *(result + 32) = v18;
    *(result + 40) = v16;
LABEL_11:
    *(result + 48) = 0x7463656A627573;
    *(result + 56) = 0xE700000000000000;
    return result;
  }

  sub_1C450B034();
  swift_allocError();
  *v19 = a1;
  *(v19 + 8) = a2;
  *(v19 + 16) = 0xD000000000000013;
  *(v19 + 24) = 0x80000001C4F5D9B0;
  *(v19 + 32) = 0xD000000000000017;
  *(v19 + 40) = 0x80000001C4FB9E80;
  *(v19 + 48) = v20;
  *(v19 + 64) = 0;
  swift_willThrow();
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4C119E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unownedRetainStrong();
  sub_1C4C81AA0(a1, a2, a3);

  if (!v4)
  {
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    if (swift_dynamicCast())
    {
      memcpy(__dst, __src, sizeof(__dst));
      _s19HandleViewGeneratorCMa();
      a4 = swift_allocObject();
      sub_1C4C11BD8(__dst);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v9 = a1;
      *(v9 + 8) = a2;
      *(v9 + 16) = xmmword_1C4F5B670;
      *(v9 + 32) = 0xD000000000000025;
      *(v9 + 40) = 0x80000001C4FB83A0;
      *(v9 + 48) = v11;
      *(v9 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4C11B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C119E0(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C11BD8(const void *a1)
{
  sub_1C4B756E8(&unk_1F43DA990, v5);
  v3 = v5[1];
  *(v1 + 144) = v5[0];
  *(v1 + 160) = v3;
  *(v1 + 176) = v6;
  memcpy((v1 + 16), a1, 0x80uLL);
  return v1;
}

uint64_t sub_1C4C11C38(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (sub_1C4428DA0(v2))
  {
    sub_1C4431590(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1C6940F90](0, v2);
    }

    else
    {
    }

    MEMORY[0x1EEE9AC00](v3);

    sub_1C49A56B8();
    v5 = v4;
    v7 = v6;
    v9 = v8;

    sub_1C4D0E5C0();
    if (*(*(a1 + 56) + 80) == 1)
    {
    }

    else
    {
      v16 = sub_1C4F02938();

      if ((v16 & 1) == 0)
      {
      }
    }

    if (v9)
    {
      v17 = 0;
      v18 = 0xF000000000000000;
    }

    else
    {
      v17 = sub_1C44F95AC(v5, v7);
      v18 = v19;
    }

    sub_1C4CCDA9C(v17, v18);
    sub_1C441DFEC(v17, v18);
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDDFECB8);
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CD8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C43F8000, v11, v12, "Expected at least one KG config", v13, 2u);
    MEMORY[0x1C6942830](v13, -1, -1);
  }

  sub_1C446D0DC();
  swift_allocError();
  *v14 = 0xD00000000000001FLL;
  *(v14 + 8) = 0x80000001C4FB9EF0;
  *(v14 + 16) = 2;
  return swift_willThrow();
}

void sub_1C4C11F1C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v10 = a2;
  v12 = a2[12];
  if (v12)
  {
    v57 = a4;
    v13 = a2[17];
    v15 = a2[15];
    v14 = a2[16];
    v17 = a2[14];
    v18 = a2[13];
    v64 = a2[11];
    v65 = v12;
    v66 = v18;
    v67 = v17;
    v68 = v15;
    v69 = v14;
    v70 = v13;
    _s23UpdatedObjectDiffWriterCMa();
    swift_allocObject();
    sub_1C4BC3C1C(v64, v12);

    sub_1C4B8B458();
    v8 = v7;
    if (v7)
    {
      return;
    }

    v20 = v19;
    v21 = a1;
    v22 = a2;

    sub_1C4B8B8EC();

    v56 = v21;
    v24 = a3;
    v23 = a5;
    v10 = v22;
    a4 = v57;
  }

  else
  {
    v23 = a5;
    v24 = a3;
    v56 = a1;
    v20 = 0;
  }

  v71 = MEMORY[0x1E69E7CD0];
  v25 = *v24;
  v26 = *(a4 + 64);
  if (v25 >= sub_1C4428DA0(v26))
  {
LABEL_29:
    if (v20)
    {
      v43 = v8;
      v44 = v71;
      v61[3] = sub_1C456902C(&qword_1EC0C4C68, qword_1C4F5DB38);
      v61[4] = sub_1C4401CBC(&qword_1EC0C4C70, &qword_1EC0C4C68, qword_1C4F5DB38, MEMORY[0x1E69E6CC8]);
      v61[0] = v44;
      v61[1] = sub_1C4C13B78;
      v61[2] = 0;

      sub_1C4B8C0BC();

      if (v43)
      {

        sub_1C440962C(v61);
      }

      else
      {
        sub_1C440962C(v61);

        sub_1C4B8BB5C();
        v46 = v45;
        v48 = v47;

        *a7 = v46;
        *(a7 + 8) = v48;
        *(a7 + 16) = 0;
      }
    }

    else
    {

      *a7 = 0;
      *(a7 + 8) = 0;
      *(a7 + 16) = 1;
    }

    return;
  }

  v27 = *(v10 + 10);
  v62[0] = *(v10 + 9);
  v62[1] = v27;
  v63 = v10[22];
  v50 = v26 + 32;
  v51 = a6;
  v59 = v26 & 0xC000000000000001;
  v60 = v26 & 0xFFFFFFFFFFFFFF8;
  v58 = v26 >> 62;
  v52 = v20;
  v55 = v26;
  while (1)
  {
    v28 = *v24;
    if (v59)
    {
      v29 = MEMORY[0x1C6940F90](v28, v26);
      goto LABEL_12;
    }

    if ((v28 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v28 >= *(v60 + 16))
    {
      goto LABEL_38;
    }

    v29 = *(v50 + 8 * v28);

LABEL_12:
    *v23 = v29;

    v30 = sub_1C4CDFB34(*a6, 0, v62, 0, 1);
    v32 = v31;
    v33 = v30;

    *a6 = v32;
    if (*(v33 + 16))
    {
      sub_1C4C123DC(v56, v33, v20);
      if (v8)
      {

        return;
      }

      v34 = v10;
      v35 = *(v33 + 16);
      if (v35)
      {
        v61[0] = MEMORY[0x1E69E7CC0];
        sub_1C459D380(0, v35, 0);
        v36 = v61[0];
        v37 = *(v61[0] + 16);
        v38 = 72;
        do
        {
          v39 = *(v33 + v38);
          v61[0] = v36;
          v40 = *(v36 + 24);
          if (v37 >= v40 >> 1)
          {
            sub_1C459D380(v40 > 1, v37 + 1, 1);
            v36 = v61[0];
          }

          *(v36 + 16) = v37 + 1;
          *(v36 + 8 * v37 + 32) = v39;
          v38 += 152;
          ++v37;
          --v35;
        }

        while (v35);

        a6 = v51;
        v20 = v52;
        v24 = a3;
        v23 = a5;
      }

      else
      {

        v36 = MEMORY[0x1E69E7CC0];
      }

      sub_1C4D403C8(v36);
      v10 = v34;
      v8 = 0;
      v26 = v55;
    }

    else
    {

      if (__OFADD__(*v24, 1))
      {
        goto LABEL_37;
      }

      ++*v24;
      *a6 = 0;
    }

    v41 = *v24;
    if (v58)
    {
      v42 = sub_1C4F02128();
    }

    else
    {
      v42 = *(v60 + 16);
    }

    if (v41 >= v42)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_1C4C123DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v188 = a3;
  v206 = a2;
  v201 = a1;
  v3 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v196 = &v186 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v195 = &v186 - v6;
  v194 = sub_1C4EF9488();
  v187 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v193 = &v186 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_1C4EFBC98();
  v204 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v189 = &v186 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v199 = &v186 - v10;
  v11 = sub_1C4EFEEF8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v186 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v186 - v16;
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v18 = swift_allocObject();
  v198 = xmmword_1C4F0CE60;
  *(v18 + 16) = xmmword_1C4F0CE60;
  sub_1C4EFE518();
  v19 = sub_1C4EFEB68();
  v21 = v20;
  v22 = *(v12 + 8);
  v22(v17, v11);
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  sub_1C4EFE478();
  v23 = sub_1C4EFEB68();
  v25 = v24;
  v22(v14, v11);
  *(v18 + 48) = v23;
  *(v18 + 56) = v25;
  v26 = sub_1C4499940();
  v205 = swift_allocObject();
  *(v205 + 16) = v26;
  v202 = *(v206 + 16);
  v27 = v202;
  v211 = v206 + 32;
  v28 = v26 + 56;
  swift_bridgeObjectRetain_n();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v29 = 0;
  v207 = v27;
  while (v29 != v27)
  {
    memcpy(v210, (v211 + 152 * v29), 0x92uLL);
    if (*(v26 + 16))
    {
      v30 = v210[6];
      v31 = v210[7];
      sub_1C4F02AF8();
      sub_1C45E8CE0(v210, v209);
      sub_1C4F01298();
      v32 = sub_1C4F02B68();
      v33 = ~(-1 << *(v26 + 32));
      while (1)
      {
        v14 = v32 & v33;
        if (((*(v28 + (((v32 & v33) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v32 & v33)) & 1) == 0)
        {
          break;
        }

        v34 = (*(v26 + 48) + 16 * v14);
        if (*v34 != v30 || v34[1] != v31)
        {
          v36 = sub_1C4F02938();
          v32 = v14 + 1;
          if ((v36 & 1) == 0)
          {
            continue;
          }
        }

LABEL_23:
        sub_1C45E8D3C(v210);
        v27 = v207;
        goto LABEL_24;
      }
    }

    else
    {
      sub_1C45E8CE0(v210, v209);
    }

    if (*(v26 + 16))
    {
      v37 = v210[9];
      v38 = v210[10];
      sub_1C4F02AF8();
      sub_1C4F01298();
      v39 = sub_1C4F02B68();
      v40 = ~(-1 << *(v26 + 32));
      while (1)
      {
        v14 = v39 & v40;
        if (((*(v28 + (((v39 & v40) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v39 & v40)) & 1) == 0)
        {
          break;
        }

        v41 = (*(v26 + 48) + 16 * v14);
        if (*v41 != v37 || v41[1] != v38)
        {
          v43 = sub_1C4F02938();
          v39 = v14 + 1;
          if ((v43 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

    sub_1C45E8D3C(v210);
    ++v29;
    v27 = v207;
  }

  v29 = v202;
  while (1)
  {
LABEL_24:
    if (v29 == v27)
    {
      v58 = v202;
      v29 = v202;
      goto LABEL_54;
    }

    if (v29 >= v27)
    {
      __break(1u);
LABEL_220:
      __break(1u);
      goto LABEL_221;
    }

    memcpy(v210, (v211 + 152 * v29), 0x92uLL);
    v14 = BYTE1(v210[18]);
    sub_1C45E8CE0(v210, v209);
    String.normalizedContactHandle()();
    sub_1C45E8D3C(v210);

    if (v14)
    {
      break;
    }

    while (1)
    {
      if (++v29 == v27)
      {
        v29 = v202;
        goto LABEL_24;
      }

      memcpy(v209, (v211 + 152 * v29), 0x92uLL);
      if (*(v26 + 16))
      {
        break;
      }

      sub_1C45E8CE0(v209, v208);
LABEL_39:
      if (*(v26 + 16))
      {
        v51 = v209[9];
        v52 = v209[10];
        sub_1C4F02AF8();
        sub_1C4F01298();
        v53 = sub_1C4F02B68();
        v54 = ~(-1 << *(v26 + 32));
        while (1)
        {
          v14 = v53 & v54;
          if (((*(v28 + (((v53 & v54) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v53 & v54)) & 1) == 0)
          {
            break;
          }

          v55 = (*(v26 + 48) + 16 * v14);
          if (*v55 != v51 || v55[1] != v52)
          {
            v57 = sub_1C4F02938();
            v53 = v14 + 1;
            if ((v57 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_50;
        }

        v27 = v207;
      }

      sub_1C45E8D3C(v209);
    }

    v44 = v209[6];
    v45 = v209[7];
    sub_1C4F02AF8();
    sub_1C45E8CE0(v209, v208);
    sub_1C4F01298();
    v46 = sub_1C4F02B68();
    v47 = ~(-1 << *(v26 + 32));
    do
    {
      v14 = v46 & v47;
      if (((*(v28 + (((v46 & v47) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v46 & v47)) & 1) == 0)
      {
        v27 = v207;
        goto LABEL_39;
      }

      v48 = (*(v26 + 48) + 16 * v14);
      if (*v48 == v44 && v48[1] == v45)
      {
        break;
      }

      v50 = sub_1C4F02938();
      v46 = v14 + 1;
    }

    while ((v50 & 1) == 0);
LABEL_50:
    sub_1C45E8D3C(v209);
    v27 = v207;
  }

  v58 = v202;
LABEL_54:
  v14 = v206;
  v210[26] = v206;
  v210[27] = sub_1C4C145A0;
  v210[28] = v205;
  v210[29] = sub_1C4C14254;
  v210[30] = 0;
  v210[31] = sub_1C4C1429C;
  v210[32] = 0;
  v192 = sub_1C4C145A8(v29, v58);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  for (i = 0; i != v27; ++i)
  {
    memcpy(v210, (v211 + 152 * i), 0x92uLL);
    if (*(v26 + 16))
    {
      v60 = v210[6];
      v61 = v210[7];
      sub_1C4F02AF8();
      sub_1C45E8CE0(v210, v209);
      sub_1C4F01298();
      v62 = sub_1C4F02B68();
      v63 = ~(-1 << *(v26 + 32));
      while (1)
      {
        v14 = v62 & v63;
        if (((*(v28 + (((v62 & v63) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v62 & v63)) & 1) == 0)
        {
          break;
        }

        v64 = (*(v26 + 48) + 16 * v14);
        if (*v64 != v60 || v64[1] != v61)
        {
          v66 = sub_1C4F02938();
          v62 = v14 + 1;
          if ((v66 & 1) == 0)
          {
            continue;
          }
        }

LABEL_78:
        sub_1C45E8D3C(v210);
        v27 = v207;
        goto LABEL_79;
      }

      v27 = v207;
    }

    else
    {
      sub_1C45E8CE0(v210, v209);
    }

    if (*(v26 + 16))
    {
      v67 = v210[9];
      v68 = v210[10];
      sub_1C4F02AF8();
      sub_1C4F01298();
      v69 = sub_1C4F02B68();
      v70 = ~(-1 << *(v26 + 32));
      while (1)
      {
        v14 = v69 & v70;
        if (((*(v28 + (((v69 & v70) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v69 & v70)) & 1) == 0)
        {
          break;
        }

        v71 = (*(v26 + 48) + 16 * v14);
        if (*v71 != v67 || v71[1] != v68)
        {
          v73 = sub_1C4F02938();
          v69 = v14 + 1;
          if ((v73 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_78;
      }

      v27 = v207;
    }

    sub_1C45E8D3C(v210);
  }

  i = v202;
  while (1)
  {
LABEL_79:
    if (i == v27)
    {
      v88 = v202;
      i = v202;
      goto LABEL_109;
    }

    if (i >= v27)
    {
      goto LABEL_220;
    }

    memcpy(v210, (v211 + 152 * i), 0x92uLL);
    v14 = BYTE1(v210[18]);
    sub_1C45E8CE0(v210, v209);
    String.normalizedContactHandle()();
    sub_1C45E8D3C(v210);

    if (v14 != 1)
    {
      break;
    }

    while (1)
    {
      if (++i == v27)
      {
        i = v202;
        goto LABEL_79;
      }

      memcpy(v209, (v211 + 152 * i), 0x92uLL);
      if (*(v26 + 16))
      {
        break;
      }

      sub_1C45E8CE0(v209, v208);
LABEL_94:
      if (*(v26 + 16))
      {
        v81 = v209[9];
        v82 = v209[10];
        sub_1C4F02AF8();
        sub_1C4F01298();
        v83 = sub_1C4F02B68();
        v84 = ~(-1 << *(v26 + 32));
        while (1)
        {
          v14 = v83 & v84;
          if (((*(v28 + (((v83 & v84) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v83 & v84)) & 1) == 0)
          {
            break;
          }

          v85 = (*(v26 + 48) + 16 * v14);
          if (*v85 != v81 || v85[1] != v82)
          {
            v87 = sub_1C4F02938();
            v83 = v14 + 1;
            if ((v87 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_105;
        }

        v27 = v207;
      }

      sub_1C45E8D3C(v209);
    }

    v74 = v209[6];
    v75 = v209[7];
    sub_1C4F02AF8();
    sub_1C45E8CE0(v209, v208);
    sub_1C4F01298();
    v76 = sub_1C4F02B68();
    v77 = ~(-1 << *(v26 + 32));
    do
    {
      v14 = v76 & v77;
      if (((*(v28 + (((v76 & v77) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v76 & v77)) & 1) == 0)
      {
        v27 = v207;
        goto LABEL_94;
      }

      v78 = (*(v26 + 48) + 16 * v14);
      if (*v78 == v74 && v78[1] == v75)
      {
        break;
      }

      v80 = sub_1C4F02938();
      v76 = v14 + 1;
    }

    while ((v80 & 1) == 0);
LABEL_105:
    sub_1C45E8D3C(v209);
    v27 = v207;
  }

  v88 = v202;
LABEL_109:
  v210[19] = v206;
  v210[20] = sub_1C4C145A0;
  v210[21] = v205;
  v210[22] = sub_1C4C14254;
  v210[23] = 0;
  v210[24] = sub_1C4C142A4;
  v210[25] = 0;
  v191 = sub_1C4C145A8(i, v88);

  v14 = v200;
  v27 = v199;
  if (qword_1EDDFECD0 != -1)
  {
    goto LABEL_225;
  }

  while (1)
  {
    v89 = sub_1C4F00978();
    sub_1C442B738(v89, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v90 = sub_1C4F00968();
    HIDWORD(v190) = sub_1C4F01CB8();
    if (!os_log_type_enabled(v90, BYTE4(v190)))
    {
      break;
    }

    v27 = 0;
    v186 = swift_slowAlloc();
    *v186 = 134218496;
    v91 = v204;
    v203 = v90;
    while (1)
    {
      if (v27 == v207)
      {
        v14 = 0;
LABEL_169:
        v125 = v186;
        *(v186 + 4) = v14;

        *(v125 + 12) = 2048;
        *(v125 + 14) = v192;
        *(v125 + 22) = 2048;
        *(v125 + 24) = v191;
        _os_log_impl(&dword_1C43F8000, v90, BYTE4(v190), "HandleMap: Processing %ld relevant triples. %ld removes, %ld adds.", v125, 0x20u);
        MEMORY[0x1C6942830](v125, -1, -1);

        v14 = v200;
        v27 = v199;
        goto LABEL_170;
      }

      memcpy(v210, (v211 + 152 * v27), 0x92uLL);
      if (*(v26 + 16))
      {
        break;
      }

      sub_1C45E8CE0(v210, v209);
LABEL_124:
      if (*(v26 + 16))
      {
        v100 = v210[9];
        v101 = v210[10];
        sub_1C4F02AF8();
        sub_1C4F01298();
        v102 = sub_1C4F02B68();
        v103 = ~(-1 << *(v26 + 32));
        while (1)
        {
          v104 = v102 & v103;
          if (((*(v28 + (((v102 & v103) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v102 & v103)) & 1) == 0)
          {
            break;
          }

          v105 = (*(v26 + 48) + 16 * v104);
          if (*v105 != v100 || v105[1] != v101)
          {
            v107 = sub_1C4F02938();
            v102 = v104 + 1;
            if ((v107 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_136;
        }

        v90 = v203;
        v91 = v204;
      }

      sub_1C45E8D3C(v210);
      ++v27;
    }

    v92 = v210[6];
    v93 = v210[7];
    sub_1C4F02AF8();
    sub_1C45E8CE0(v210, v209);
    sub_1C4F01298();
    v94 = sub_1C4F02B68();
    v95 = ~(-1 << *(v26 + 32));
    do
    {
      v96 = v94 & v95;
      if (((*(v28 + (((v94 & v95) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v94 & v95)) & 1) == 0)
      {
        v90 = v203;
        v91 = v204;
        goto LABEL_124;
      }

      v97 = (*(v26 + 48) + 16 * v96);
      if (*v97 == v92 && v97[1] == v93)
      {
        break;
      }

      v99 = sub_1C4F02938();
      v94 = v96 + 1;
    }

    while ((v99 & 1) == 0);
LABEL_136:
    sub_1C45E8D3C(v210);
    v14 = 0;
LABEL_137:
    v90 = v203;
    v108 = __OFADD__(v14++, 1);
    if (!v108)
    {
      if (v27 == v207)
      {
        goto LABEL_224;
      }

      v91 = v204;
      while (1)
      {
        v108 = __OFADD__(v27++, 1);
        if (v108)
        {
          break;
        }

        if (v27 == v207)
        {
          goto LABEL_169;
        }

        if (v27 >= v207)
        {
          goto LABEL_222;
        }

        memcpy(v210, (v211 + 152 * v27), 0x92uLL);
        if (*(v26 + 16))
        {
          v109 = v210[6];
          v110 = v210[7];
          sub_1C4F02AF8();
          sub_1C45E8CE0(v210, v209);
          sub_1C4F01298();
          v111 = sub_1C4F02B68();
          v112 = ~(-1 << *(v26 + 32));
          do
          {
            v113 = v111 & v112;
            if (((*(v28 + (((v111 & v112) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v111 & v112)) & 1) == 0)
            {
              v90 = v203;
              v91 = v204;
              goto LABEL_154;
            }

            v114 = (*(v26 + 48) + 16 * v113);
            if (*v114 == v109 && v114[1] == v110)
            {
              break;
            }

            v116 = sub_1C4F02938();
            v111 = v113 + 1;
          }

          while ((v116 & 1) == 0);
LABEL_165:
          sub_1C45E8D3C(v210);
          goto LABEL_137;
        }

        sub_1C45E8CE0(v210, v209);
LABEL_154:
        if (*(v26 + 16))
        {
          v117 = v210[9];
          v118 = v210[10];
          sub_1C4F02AF8();
          sub_1C4F01298();
          v119 = sub_1C4F02B68();
          v120 = ~(-1 << *(v26 + 32));
          while (1)
          {
            v121 = v119 & v120;
            if (((*(v28 + (((v119 & v120) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v119 & v120)) & 1) == 0)
            {
              break;
            }

            v122 = (*(v26 + 48) + 16 * v121);
            if (*v122 != v117 || v122[1] != v118)
            {
              v124 = sub_1C4F02938();
              v119 = v121 + 1;
              if ((v124 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_165;
          }

          v90 = v203;
          v91 = v204;
        }

        sub_1C45E8D3C(v210);
      }

LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
    }

    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    swift_once();
  }

  v91 = v204;
LABEL_170:
  MEMORY[0x1C693A960](0xD000000000000023, 0x80000001C4FB9F10);
  v126 = v197;
  v127 = sub_1C4EFBEE8();
  if (v126)
  {
    v91[1](v27, v14);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v203 = v127;
    v204 = v91[1];
    (v204)(v27, v14);
    v128 = v189;
    MEMORY[0x1C693A960](0xD000000000000031, 0x80000001C4FB9F40);
    v201 = sub_1C4EFBEE8();
    (v204)(v128, v14);
    if (v188)
    {
      v208[0] = MEMORY[0x1E69E7CD0];

      v130 = 32;
      for (j = v202; j; j = (j - 1))
      {
        memcpy(v210, (v206 + v130), 0x92uLL);
        v208[19] = v210[5];
        sub_1C45E8CE0(v210, v209);
        v132 = sub_1C4F02858();
        sub_1C44869B4(v209, v132, v133, v133, v134, v135, v136, v137, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, *(&v198 + 1), v199, v200, v201, v202, v203, v204, v205, v206);
        sub_1C45E8D3C(v210);

        v130 += 152;
      }

      v138 = v208[0];
      v210[3] = sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
      v210[4] = sub_1C4401CBC(&qword_1EDDFCEA0, &qword_1EC0B9178, &qword_1C4F11B50, MEMORY[0x1E69E6508]);
      v210[0] = v138;
      sub_1C4B8C0BC();

      sub_1C440962C(v210);
    }

    v202 = (v187 + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v139 = 0;
    while (v139 != v207)
    {
      memcpy(v210, (v211 + 152 * v139++), 0x92uLL);
      if (*(v26 + 16))
      {
        v140 = v210[6];
        v141 = v210[7];
        sub_1C4F02AF8();
        sub_1C45E8CE0(v210, v209);
        sub_1C4F01298();
        v142 = sub_1C4F02B68();
        v143 = ~(-1 << *(v26 + 32));
        do
        {
          v144 = v142 & v143;
          if (((*(v28 + (((v142 & v143) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v142 & v143)) & 1) == 0)
          {
            goto LABEL_188;
          }

          v145 = (*(v26 + 48) + 16 * v144);
          if (*v145 == v140 && v145[1] == v141)
          {
            break;
          }

          v147 = sub_1C4F02938();
          v142 = v144 + 1;
        }

        while ((v147 & 1) == 0);
LABEL_196:
        v204 = 0;
        v156 = v210[11];
        v157 = v210[12];
        v158 = [objc_allocWithZone(MEMORY[0x1E6996728]) init];
        v159 = sub_1C4F01108();
        v160 = [v158 typeOfHandleString_];

        if (v160 == 1)
        {
          v161 = objc_autoreleasePoolPush();
          v209[0] = sub_1C4F00FF8();
          v209[1] = v162;
          v163 = v193;
          sub_1C4EF9448();
          sub_1C4415EA8();
          v164 = sub_1C4F01FF8();
          v166 = v165;
          (*v202)(v163, v194);

          objc_autoreleasePoolPop(v161);
          goto LABEL_204;
        }

        sub_1C44CFDB0(58, 0xE100000000000000, v156, v157);
        if (v167)
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        else
        {
          v168 = sub_1C4F012B8();
          v169 = sub_1C44DBF14(v168, v156, v157);
          v156 = MEMORY[0x1C693FEF0](v169);
          v157 = v170;
        }

        sub_1C4C14660();
        v171 = sub_1C44D0148(v156, v157);
        v172 = [v171 unformattedInternationalStringValue];
        if (v172)
        {
          v173 = v172;
          v164 = sub_1C4F01138();
          v166 = v174;

LABEL_204:
          sub_1C45E8D3C(v210);
        }

        else
        {

          sub_1C45E8D3C(v210);
          v164 = 0;
          v166 = 0;
        }

        v175 = v210[5];
        v176 = BYTE1(v210[18]);
        sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
        v177 = swift_allocObject();
        *(v177 + 16) = v198;
        if (v176)
        {
          if (v166)
          {
            v178 = MEMORY[0x1E69E6158];
            v179 = MEMORY[0x1E69A0138];
          }

          else
          {
            v164 = 0;
            v178 = 0;
            v179 = 0;
            *(v177 + 48) = 0;
          }

          v182 = v204;
          *(v177 + 32) = v164;
          *(v177 + 40) = v166;
          *(v177 + 56) = v178;
          *(v177 + 64) = v179;
          *(v177 + 96) = MEMORY[0x1E69E7360];
          *(v177 + 104) = MEMORY[0x1E69A01D0];
          *(v177 + 72) = v175;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v183 = v196;
          sub_1C4EFB728();
          v184 = sub_1C4EFB768();
          sub_1C440BAA8(v183, 0, 1, v184);
        }

        else
        {
          if (v166)
          {
            v180 = MEMORY[0x1E69E6158];
            v181 = MEMORY[0x1E69A0138];
          }

          else
          {
            v164 = 0;
            v180 = 0;
            v181 = 0;
            *(v177 + 48) = 0;
          }

          v182 = v204;
          *(v177 + 32) = v164;
          *(v177 + 40) = v166;
          *(v177 + 56) = v180;
          *(v177 + 64) = v181;
          *(v177 + 96) = MEMORY[0x1E69E7360];
          *(v177 + 104) = MEMORY[0x1E69A01D0];
          *(v177 + 72) = v175;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v183 = v195;
          sub_1C4EFB728();
          v185 = sub_1C4EFB768();
          sub_1C440BAA8(v183, 0, 1, v185);
        }

        sub_1C4EFC0A8();
        if (!v182)
        {

          sub_1C4AE5118(v183);
          continue;
        }

        swift_bridgeObjectRelease_n();

        swift_bridgeObjectRelease_n();
        return sub_1C4AE5118(v183);
      }

      sub_1C45E8CE0(v210, v209);
LABEL_188:
      if (*(v26 + 16))
      {
        v148 = v210[9];
        v149 = v210[10];
        sub_1C4F02AF8();
        sub_1C4F01298();
        v150 = sub_1C4F02B68();
        v151 = ~(-1 << *(v26 + 32));
        while (1)
        {
          v152 = v150 & v151;
          if (((*(v28 + (((v150 & v151) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v150 & v151)) & 1) == 0)
          {
            break;
          }

          v153 = (*(v26 + 48) + 16 * v152);
          if (*v153 != v148 || v153[1] != v149)
          {
            v155 = sub_1C4F02938();
            v150 = v152 + 1;
            if ((v155 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_196;
        }
      }

      sub_1C45E8D3C(v210);
    }

    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_1C4C13B78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4F02858();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1C4C13BC4(uint64_t a1)
{
  v4 = sub_1C4D0E2C0();
  if (v4)
  {
    sub_1C4C13EF8();
    sub_1C4D0E478();
    return;
  }

  sub_1C4D0E664(v4, v5, v6, v7, v8, v9, v10, v11, v43, v44, v45, v47, v49, v51, v52, v54, v55, v56, v57, *(&v57 + 1), v58, *(&v58 + 1), v59, v60, v61, v62);
  if (v12)
  {
    sub_1C4C11C38(a1);
    return;
  }

  v13 = *(a1 + 56);
  v15 = *(v13 + 88);
  v14 = *(v13 + 96);
  if (*(v13 + 80) == 1)
  {
    v16 = v14 >> 60 == 15;
    if (v14 >> 60 == 15)
    {
      v48 = *(v13 + 96);
      v50 = v1;
      v46 = *(v13 + 88);
      v17 = 0.0;
      v18 = 0.0;
    }

    else
    {
      v21 = sub_1C440BB4C();
      sub_1C4431E64(v21, v22);
      v23 = sub_1C440BB4C();
      sub_1C44344B8(v23, v24);
      v25 = sub_1C440BB4C();
      sub_1C44F9344(v25, v26);
      if (v2)
      {
        v29 = v15;
LABEL_31:
        sub_1C441DFEC(v29, v14);
        return;
      }

      v48 = v14;
      v50 = v1;
      v46 = v15;
      v17 = v27;
      v18 = v28;
    }
  }

  else
  {
    v48 = *(v13 + 96);
    v50 = v1;
    v46 = *(v13 + 88);
    v16 = 1;
    v19 = sub_1C440BB4C();
    sub_1C4431E64(v19, v20);
    v17 = 0.0;
    v18 = 0.0;
  }

  v53 = *(a1 + 64);
  v30 = sub_1C4428DA0(v53);
  if (!v30)
  {
LABEL_25:
    if (*(v13 + 80) != 1)
    {
      sub_1C444F17C();
      sub_1C441DFEC(v46, v48);
      return;
    }

    if (v16)
    {
      v41 = 0;
      v14 = 0xF000000000000000;
    }

    else
    {
      v41 = sub_1C44F95AC(v17, v18);
      v14 = v42;
    }

    sub_1C4CCDA9C(v41, v14);
    sub_1C441DFEC(v46, v48);
    v29 = v41;
    goto LABEL_31;
  }

  v31 = v30;
  if (v30 >= 1)
  {
    for (i = 0; i != v31; ++i)
    {
      if ((v53 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1C6940F90](i, v53);
      }

      else
      {
        v33 = *(v53 + 8 * i + 32);
      }

      if (*(v13 + 32) & 1) != 0 || *(v33 + 32) == 1 && (sub_1C4C13F58())
      {
        v34 = *(v50 + 160);
        v57 = *(v50 + 144);
        v58 = v34;
        v59 = *(v50 + 176);
        v35 = sub_1C4CDFB34(0, 1, &v57, 0, 1);
        v37 = v36;
        MEMORY[0x1EEE9AC00](v35);

        sub_1C49A56B8();
        v18 = v38;
        v16 = v39;
        v17 = v40;

        sub_1C4CDF41C(v37);
      }

      else
      {
        *(v33 + 34) = 1;
      }
    }

    goto LABEL_25;
  }

  __break(1u);
}

uint64_t sub_1C4C13EF8()
{

  sub_1C446C37C(sub_1C4C149AC, v0);
}

uint64_t sub_1C4C13F58()
{
  v1 = *(v0 + 33);
  v2 = 1;
  switch(v1)
  {
    case 3:
      break;
    default:
      v2 = sub_1C4F02938();
      break;
  }

  return v2 & 1;
}

void sub_1C4C14050(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = a1;
  v6 = a4;
  v7 = *(a2 + 96);
  if (v7)
  {
    v15 = a3;
    v8 = *(a2 + 88);
    _s23UpdatedObjectDiffWriterCMa();
    swift_allocObject();
    v5 = a1;
    sub_1C4BC3C1C(v8, v7);

    sub_1C4B8B458();
    if (v4)
    {
      return;
    }

    v10 = v9;
    a3 = v15;
    v6 = a4;
  }

  else
  {
    v10 = 0;
  }

  sub_1C4C123DC(v5, a3, v10);
  if (v4)
  {
  }

  else if (v10)
  {

    sub_1C4B8BB5C();
    v12 = v11;
    v14 = v13;

    *v6 = v12;
    *(v6 + 8) = v14;
    *(v6 + 16) = 0;
  }

  else
  {
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 1;
  }
}

BOOL sub_1C4C141E4(uint64_t *a1, uint64_t a2)
{
  v3 = a1[9];
  v4 = a1[10];
  if (sub_1C4499AD0(a1[6], a1[7], a2))
  {
    return 1;
  }

  return sub_1C4499AD0(v3, v4, a2);
}

uint64_t sub_1C4C14254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 145);
  v6 = String.normalizedContactHandle()();
  result = v6.value._countAndFlagsBits;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

void sub_1C4C142B4(uint64_t a1, void *a2)
{
  memcpy(__dst, a2 + 2, sizeof(__dst));
  sub_1C4D03CE4();
  if (!v2)
  {
    v4 = a2[12];
    if (v4)
    {
      v5 = a2[11];
      _s23UpdatedObjectDiffWriterCMa();
      v7 = swift_allocObject();
      sub_1C4BC3C1C(v5, v4);

      sub_1C4B8B458();
      sub_1C4B8B8EC();
    }
  }
}

uint64_t sub_1C4C143E0()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  sub_1C4BCDE54(v2);

  return v0;
}

uint64_t sub_1C4C14434()
{
  sub_1C4C143E0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C1448C(uint64_t a1)
{
  sub_1C4C13BC4(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C4C14504(uint64_t a1)
{
  sub_1C4C11C38(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C4C145A8(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = v2[1];
  v11 = *v2;
  v12 = v5;
  v13 = *(v2 + 4);
  result = sub_1C4C14844(a1, a2);
  if (v3 < a1)
  {
    v10 = v3;
    v7 = -1;
    v3 = a1;
    goto LABEL_6;
  }

  v10 = a1;
  if (a1 != v3)
  {
    v7 = 1;
LABEL_6:
    v9 = 0;
    while (1)
    {
      v8 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        break;
      }

      result = sub_1C4C146A4(&v10);
      v9 += v7;
      if (v10 == v3)
      {
        return v8;
      }
    }

    __break(1u);
    return result;
  }

  return 0;
}

unint64_t sub_1C4C14660()
{
  result = qword_1EDDFA538;
  if (!qword_1EDDFA538)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDFA538);
  }

  return result;
}

unint64_t *sub_1C4C146A4(unint64_t *result)
{
  v2 = *result;
  v3 = *(*v1 + 16);
  if (*result != v3)
  {
    v4 = v1[1];
    v11 = v1[3];
    v10 = result;
    v5 = *v1 + 32;
    v6 = v1[5];
    while (1)
    {
      v7 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v7 == v3)
      {
        goto LABEL_10;
      }

      if (v7 >= v3)
      {
        goto LABEL_12;
      }

      memcpy(__dst, (v5 + 152 * v7), 0x92uLL);
      memcpy(__src, (v5 + 152 * v7), 0x92uLL);
      sub_1C45E8CE0(__dst, v16);
      v8 = v4(__src);
      memcpy(v19, __src, 0x92uLL);
      result = sub_1C45E8D3C(v19);
      if (v8)
      {
        memcpy(v16, (v5 + 152 * v7), 0x92uLL);
        memcpy(v12, (v5 + 152 * v7), 0x92uLL);
        sub_1C45E8CE0(v16, __src);
        v11(&v13, v12);
        memcpy(__src, v12, 0x92uLL);
        sub_1C45E8D3C(__src);
        v12[0] = v13;
        *&v12[1] = v14;
        LOBYTE(v12[3]) = v15;
        v9 = v6(v12);

        if (v9)
        {
          v3 = v2 + 1;
LABEL_10:
          *v10 = v3;
          return result;
        }
      }

      ++v2;
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C14844(uint64_t result, uint64_t a2)
{
  v3 = a2;
  if (a2 >= result)
  {
    if (result == a2)
    {
      return 0;
    }

    v12 = 1;
    v4 = a2;
    v3 = result;
  }

  else
  {
    v12 = -1;
    v4 = result;
  }

  v5 = 0;
  v6 = v2[1];
  v7 = *(*v2 + 16);
  v8 = *v2 + 32;
  while (2)
  {
    v9 = __OFADD__(v5, v12);
    v5 += v12;
    if (v9)
    {
LABEL_19:
      __break(1u);
    }

    else if (v3 != v7)
    {
      while (1)
      {
        v10 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        if (v10 == v7)
        {
          break;
        }

        if (v10 >= v7)
        {
          goto LABEL_18;
        }

        memcpy(__dst, (v8 + 152 * v10), 0x92uLL);
        memcpy(__src, (v8 + 152 * v10), 0x92uLL);
        sub_1C45E8CE0(__dst, v15);
        v11 = v6(__src);
        memcpy(v15, __src, 0x92uLL);
        result = sub_1C45E8D3C(v15);
        ++v3;
        if (v11)
        {
          v3 = v10;
          goto LABEL_15;
        }
      }

      v3 = v7;
LABEL_15:
      if (v3 != v4)
      {
        continue;
      }

      return v5;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C149DC()
{
  v1 = v0[9];
  v2 = v0[10];
  sub_1C4409678(v0 + 6, v1);
  (*(v2 + 16))(v6, v1, v2);
  v3 = v7;
  v4 = v8;
  sub_1C4409678(v6, v7);
  (*(v4 + 32))(v3, v4);
  return sub_1C440962C(v6);
}

uint64_t sub_1C4C14A7C(uint64_t a1)
{
  v3 = v1[9];
  v4 = v1[10];
  sub_1C4409678(v1 + 6, v3);
  (*(v4 + 16))(v11, v3, v4);
  v5 = v12;
  v6 = v13;
  sub_1C4409678(v11, v12);
  (*(v6 + 16))(v5, v6);

  v9 = v1;
  v10 = a1;
  sub_1C446C37C(sub_1C4C15CF4, &v8);

  return sub_1C440962C(v11);
}

uint64_t sub_1C4C14B6C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v109 = *MEMORY[0x1E69E9840];
  v7 = sub_1C456902C(&qword_1EC0C4C78, &unk_1C4F5FAF0);
  MEMORY[0x1EEE9AC00](v7);
  v94 = (&v86 - v8);
  v9 = sub_1C456902C(&qword_1EC0C4C80, &unk_1C4F5DC90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v86 - v13;
  v15 = sub_1C4F00588();
  v97 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v101 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v98 = (&v86 - v18);
  v92 = sub_1C4EFBF08();
  if (!v92)
  {
    sub_1C446D0DC();
    swift_allocError();
    *v40 = 0xD000000000000014;
    *(v40 + 8) = 0x80000001C4FB9FE0;
LABEL_9:
    *(v40 + 16) = 2;
    return swift_willThrow();
  }

  v99 = v11;
  v100 = v7;
  v91 = a3;
  v103 = 0;
  v104 = 0xE000000000000000;
  sub_1C4F02248();
  ppStmt = v103;
  v108 = v104;
  MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4FB3840);
  v19 = a2[9];
  v20 = a2[10];
  sub_1C4409678(a2 + 6, v19);
  (*(v20 + 16))(&v103, v19, v20);
  v21 = v105;
  v22 = v106;
  sub_1C4409678(&v103, v105);
  v23 = (*(v22 + 8))(v21, v22);
  MEMORY[0x1C6940010](v23);

  sub_1C440962C(&v103);
  MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4FB3860);
  MEMORY[0x1C6940010](a2[4], a2[5]);
  MEMORY[0x1C6940010](0x3F203D2022, 0xE500000000000000);
  v93 = ppStmt;
  v88 = v108;
  v103 = 0;
  v104 = 0xE000000000000000;
  sub_1C4F02248();
  ppStmt = v103;
  v108 = v104;
  MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4FBA000);
  v24 = a2[9];
  v25 = a2[10];
  sub_1C4409678(a2 + 6, v24);
  (*(v25 + 16))(&v103, v24, v25);
  v26 = v105;
  v27 = v106;
  sub_1C4409678(&v103, v105);
  v28 = (*(v27 + 8))(v26, v27);
  MEMORY[0x1C6940010](v28);

  sub_1C440962C(&v103);
  MEMORY[0x1C6940010](0xD000000000000017, 0x80000001C4FBA020);
  v29 = a2[9];
  v30 = a2[10];
  sub_1C4409678(a2 + 6, v29);
  (*(v30 + 16))(&v103, v29, v30);
  v31 = v105;
  v32 = v106;
  sub_1C4409678(&v103, v105);
  v33 = *((*(v32 + 24))(v31, v32) + 16);
  if (v33)
  {
    v95 = v15;
    v96 = v3;
    v102 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v33, 0);
    v34 = v102;
    v35 = *(v102 + 16);
    v36 = 16 * v35;
    do
    {
      v102 = v34;
      v37 = *(v34 + 24);
      v38 = v35 + 1;
      if (v35 >= v37 >> 1)
      {
        sub_1C44CD9C0(v37 > 1, v35 + 1, 1);
        v34 = v102;
      }

      *(v34 + 16) = v38;
      v39 = v34 + v36;
      *(v39 + 32) = 63;
      *(v39 + 40) = 0xE100000000000000;
      v36 += 16;
      v35 = v38;
      --v33;
    }

    while (v33);

    v15 = v95;
    v4 = v96;
  }

  else
  {

    v34 = MEMORY[0x1E69E7CC0];
  }

  sub_1C440962C(&v103);
  v103 = v34;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  v42 = sub_1C4F01048();
  v44 = v43;

  MEMORY[0x1C6940010](v42, v44);

  MEMORY[0x1C6940010](0x29202020200ALL, 0xE600000000000000);
  v87 = ppStmt;
  ppStmt = 0;
  v45 = v88;
  v46 = sub_1C4F011C8();
  LODWORD(v42) = sqlite3_prepare_v2(v92, (v46 + 32), -1, &ppStmt, 0);

  if (v42 || (v51 = ppStmt) == 0)
  {

    v103 = 0;
    v104 = 0xE000000000000000;
    sub_1C4F02248();

    v103 = 0xD00000000000001CLL;
    v104 = 0x80000001C4FBA040;
    MEMORY[0x1C6940010](v93, v45);

    v47 = v103;
    v48 = v104;
    sub_1C446D0DC();
    swift_allocError();
    *v49 = v47;
    *(v49 + 8) = v48;
    *(v49 + 16) = 2;
    swift_willThrow();
LABEL_13:
    v50 = ppStmt;
    return sqlite3_finalize(v50);
  }

  sub_1C4F006D8();
  v52 = sub_1C4F006B8();

  if (!*(v52 + 16))
  {
    goto LABEL_48;
  }

  v53 = *(v97 + 16);
  v86 = (*(v97 + 80) + 32) & ~*(v97 + 80);
  v90 = v97 + 16;
  v89 = v53;
  v53(v98, (v52 + v86), v15);

  while (1)
  {
    sub_1C4F006D8();
    v54 = sub_1C4F006A8();
    if (v4)
    {
      (*(v97 + 8))(v98, v15);

      goto LABEL_13;
    }

    v55 = v54;

    if ((v55 & 1) == 0)
    {
      break;
    }

    sqlite3_reset(v51);
    v56 = sub_1C4F00568();
    sqlite3_bind_value(v51, 1, v56);
    if ((sqlite3_step(v51) & 0xFFFFFFFE) != 0x64)
    {

      v103 = 0;
      v104 = 0xE000000000000000;
      sub_1C4F02248();

      v103 = 0x747320726F727265;
      v104 = 0xEF20676E69707065;
      MEMORY[0x1C6940010](v93, v45);

      v57 = v103;
      v58 = v104;
      sub_1C446D0DC();
      swift_allocError();
      *v59 = v57;
      *(v59 + 8) = v58;
      *(v59 + 16) = 2;
      swift_willThrow();
      (*(v97 + 8))(v98, v15);
      goto LABEL_13;
    }
  }

  v95 = *(v97 + 8);
  v96 = v97 + 8;
  v95(v98, v15);
  sqlite3_finalize(ppStmt);
  ppStmt = 0;
  v60 = sub_1C4F011C8();

  v61 = sqlite3_prepare_v2(v92, (v60 + 32), -1, &ppStmt, 0);

  if (v61 || (v98 = ppStmt) == 0)
  {
    v103 = 0;
    v104 = 0xE000000000000000;
    sub_1C4F02248();

    v103 = 0xD00000000000001CLL;
    v104 = 0x80000001C4FBA040;
    MEMORY[0x1C6940010](v93, v45);

    v62 = v103;
    v63 = v104;
    sub_1C446D0DC();
    swift_allocError();
    *v40 = v62;
    *(v40 + 8) = v63;
    goto LABEL_9;
  }

  v64 = (v97 + 32);
  while (1)
  {
    sub_1C4F006E8();
    v65 = sub_1C4F006A8();

    if ((v65 & 1) == 0)
    {
      break;
    }

    v66 = v98;
    sqlite3_reset(v98);
    sqlite3_clear_bindings(v66);
    sub_1C4F006E8();
    v67 = sub_1C4F006B8();

    v68 = 0;
    v69 = *(v67 + 2);
    v92 = v67;
    v87 = (v67 + v86);
    while (1)
    {
      v70 = v100;
      if (v68 == v69)
      {
        v71 = 1;
        v68 = v69;
        v72 = v99;
      }

      else
      {
        if ((v68 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        if (v68 >= *(v92 + 2))
        {
          goto LABEL_47;
        }

        v73 = v87 + *(v97 + 72) * v68;
        v74 = *(v100 + 48);
        v75 = v94;
        *v94 = v68;
        v89(v75 + v74, v73, v15);
        v76 = v75;
        v72 = v99;
        sub_1C482D820(v76, v99, &qword_1EC0C4C78, &unk_1C4F5FAF0);
        v71 = 0;
        ++v68;
      }

      sub_1C440BAA8(v72, v71, 1, v70);
      sub_1C482D820(v72, v14, &qword_1EC0C4C80, &unk_1C4F5DC90);
      if (sub_1C44157D4(v14, 1, v70) == 1)
      {
        break;
      }

      v77 = *v14;
      (*v64)(v101, &v14[*(v70 + 48)], v15);
      v78 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      if (v78 < 0xFFFFFFFF80000000)
      {
        goto LABEL_44;
      }

      if (v78 > 0x7FFFFFFF)
      {
        goto LABEL_45;
      }

      v79 = v101;
      v80 = sub_1C4F00568();
      sqlite3_bind_value(v98, v77 + 1, v80);
      v95(v79, v15);
    }

    v81 = sqlite3_step(v98);
    v82 = v93;
    if ((v81 & 0xFFFFFFFE) != 0x64)
    {
      v103 = 0;
      v104 = 0xE000000000000000;
      sub_1C4F02248();

      v103 = 0x747320726F727265;
      v104 = 0xEF20676E69707065;
      MEMORY[0x1C6940010](v82, v88);

      v83 = v103;
      v84 = v104;
      sub_1C446D0DC();
      swift_allocError();
      *v85 = v83;
      *(v85 + 8) = v84;
      *(v85 + 16) = 2;
      swift_willThrow();
      goto LABEL_42;
    }
  }

LABEL_42:
  v50 = v98;
  return sqlite3_finalize(v50);
}

uint64_t sub_1C4C157CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C4FB3A10 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C15898(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7972657571;
  }
}

uint64_t sub_1C4C158D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_1C456902C(&qword_1EC0C4C98, &qword_1C4F5DCA8);
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v14 - v11;
  sub_1C4409678(a1, a1[3]);
  sub_1C4C16098();
  sub_1C4F02BF8();
  v16 = 0;
  sub_1C4F02798();
  if (!v5)
  {
    v15 = 1;
    sub_1C4F02798();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_1C4C15A3C(void *a1)
{
  sub_1C456902C(&qword_1EC0C4C88, &qword_1C4F5DCA0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4C16098();
  sub_1C4F02BC8();
  if (!v1)
  {
    v4 = sub_1C4F02678();
    sub_1C4F02678();
    v6 = sub_1C4402F74();
    v7(v6);
  }

  sub_1C440962C(a1);
  return v4;
}

uint64_t sub_1C4C15C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C157CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4C15C2C(uint64_t a1)
{
  v2 = sub_1C4C16098();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C15C68(uint64_t a1)
{
  v2 = sub_1C4C16098();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C15CA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4C15A3C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void *sub_1C4C15D10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = _s10ViewConfigVMa(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v26[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_unownedRetainStrong();
  sub_1C4C81AA0(a1, a2, a3);
  if (v4)
  {
  }

  else
  {

    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
    if (swift_dynamicCast())
    {
      sub_1C441D670(v26, v29);
      swift_unownedRetainStrong();

      sub_1C443A738(a1, a2, v11, v12, v13, v14, v15, v16);

      v19 = v10[22];
      if (v19)
      {
        v21 = v10[23];
        v20 = v10[24];
        v22 = v10[21];
        sub_1C441D670(v29, v28);
        _s31IncrementalObjectViewGenerationCMa();
        a2 = swift_allocObject();
        sub_1C441D670(v28, (a2 + 6));
        a2[4] = v21;
        a2[5] = v20;
        a2[2] = v22;
        a2[3] = v19;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        sub_1C450B034();
        swift_allocError();
        *v23 = a1;
        *(v23 + 8) = a2;
        *(v23 + 16) = 0xD000000000000041;
        *(v23 + 24) = 0x80000001C4FB2690;
        v24 = v28[1];
        *(v23 + 32) = v28[0];
        *(v23 + 48) = v24;
        *(v23 + 64) = 3;
        swift_willThrow();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C440962C(v29);
      }

      sub_1C445F57C(v10);
    }

    else
    {
      memset(v26, 0, sizeof(v26));
      v27 = 0;
      sub_1C4C162E0(v26);
      sub_1C450B034();
      swift_allocError();
      *v17 = a1;
      *(v17 + 8) = a2;
      *(v17 + 16) = xmmword_1C4F5B670;
      *(v17 + 32) = 0xD000000000000025;
      *(v17 + 40) = 0x80000001C4FB83A0;
      *(v17 + 48) = v25;
      *(v17 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a2;
}

uint64_t sub_1C4C15FEC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1C4C15D10(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

unint64_t sub_1C4C16098()
{
  result = qword_1EC0C4C90;
  if (!qword_1EC0C4C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4C90);
  }

  return result;
}

_BYTE *_s17IncrementalObjectV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4C161DC()
{
  result = qword_1EC0C4CA0;
  if (!qword_1EC0C4CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4CA0);
  }

  return result;
}

unint64_t sub_1C4C16234()
{
  result = qword_1EC0C4CA8;
  if (!qword_1EC0C4CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4CA8);
  }

  return result;
}

unint64_t sub_1C4C1628C()
{
  result = qword_1EC0C4CB0;
  if (!qword_1EC0C4CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4CB0);
  }

  return result;
}

uint64_t sub_1C4C162E0(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0C06B0, &qword_1C4F5FBA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4C16384()
{
  v1 = sub_1C4C16348();
  v2 = *(v0 + 8);

  return v2(v1, &off_1F4403A58);
}

void sub_1C4C163F8()
{
  v0 = sub_1C4EF98F8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v32[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DF70);
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CB8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C43F8000, v8, v9, "initializeGlobalKnowledgeAssetsViewGenerator: triggering global asset load...", v10, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDFFA78 != -1)
  {
    swift_once();
  }

  v34[0] = xmmword_1EDDFFA80;
  if (qword_1EDDFFA40 != -1)
  {
    swift_once();
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v34[1] = xmmword_1EDDFFA48;
  do
  {
    v15 = v13;
    v16 = &v34[v14];
    v18 = *v16;
    v17 = v16[1];
    if ((v18 & ~v11) != 0 || (v17 & v12) != v17)
    {
      v11 |= v18;
      v12 |= v17;
    }

    v13 = 1;
    v14 = 1;
  }

  while ((v15 & 1) == 0);
  sub_1C4F001A8();
  (*(v1 + 16))(v6, v3, v0);
  static Features.optionsForEnabledFeatures.getter(v33);
  (*(v1 + 8))(v3, v0);
  v20 = v33[1] | v12;
  v21 = &v6[*(v4 + 20)];
  *v21 = v33[0] | v11;
  v21[1] = v20;
  type metadata accessor for GlobalKnowledgeDatabase(0);
  swift_allocObject();
  GlobalKnowledgeDatabase.init(config:)();
  GlobalKnowledgeDatabase.checkAndLoadAssets()();

  if (!v22)
  {
    v24 = sub_1C4F00968();
    v30 = sub_1C4F01CB8();
    if (os_log_type_enabled(v24, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1C43F8000, v24, v30, "initializeGlobalKnowledgeAssetsViewGenerator: done global asset load...", v31, 2u);
      sub_1C43FBE2C();
    }

    goto LABEL_19;
  }

  v23 = v22;
  v24 = sub_1C4F00968();
  v25 = sub_1C4F01CD8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v22;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_1C43F8000, v24, v25, "initializeGlobalKnowledgeAssetsViewGenerator: failed to load global asset: %@", v26, 0xCu);
    sub_1C45B4B90(v27);
    sub_1C43FBE2C();
    sub_1C43FBE2C();

LABEL_19:
    return;
  }
}

uint64_t sub_1C4C16884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, a2, a3);

  if (!v5)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      _s28K2TLifeEventMapViewGeneratorCMa();
      a4 = swift_allocObject();
      *(a4 + 16) = a5;
      memcpy((a4 + 24), __src, 0x48uLL);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v11 = a1;
      *(v11 + 8) = a2;
      *(v11 + 16) = xmmword_1C4F5B670;
      *(v11 + 32) = 0xD000000000000025;
      *(v11 + 40) = 0x80000001C4FB83A0;
      *(v11 + 48) = v13;
      *(v11 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4C169D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C16884(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C16A84(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0C0CC8, &unk_1C4F405F0);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FCE30(&v146 - v6);
  v7 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v8 = sub_1C43FBD18(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FCE30(&v146 - v10);
  v161 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v166 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FCE30(&v146 - v14);
  v177 = sub_1C4EFEFD8();
  sub_1C43FCDF8();
  v165 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FCE30(&v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_1C456902C(&qword_1EC0C4CB8, &qword_1C4F5DF20);
  v19 = sub_1C43FBD18(v18);
  MEMORY[0x1EEE9AC00](v19);
  v181 = &v146 - v20;
  v182 = sub_1C456902C(&qword_1EC0C4CC0, &qword_1C4F5DF28);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v146 - v23;
  v25 = sub_1C456902C(&qword_1EC0C4CC8, &qword_1C4F5DF30);
  v26 = sub_1C43FBD18(v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v146 - v30;
  v184 = sub_1C456902C(&qword_1EC0C4CD0, &qword_1C4F5DF38);
  sub_1C43FCDF8();
  v167 = v32;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FCE30(&v146 - v34);
  v170 = sub_1C456902C(&qword_1EC0C4CD8, &unk_1C4F5DF40);
  sub_1C43FCDF8();
  v169 = v35;
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v146 - v38;
  v173 = v1;
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  sub_1C4EFEEF8();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1C4F0C890;
  sub_1C4EFEBB8();
  sub_1C4EFE308();
  sub_1C4EFECF8();
  v174 = a1;
  v41 = sub_1C486F58C(a1, v40, 0.0);

  __dst[0] = v41;
  sub_1C456902C(&qword_1EC0BD3F8, &unk_1C4F5B800);
  sub_1C4401CBC(&qword_1EDDF06C8, &qword_1EC0BD3F8, &unk_1C4F5B800, MEMORY[0x1E69E6328]);
  sub_1C4C17E38(&qword_1EDDFE2F0, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  v42 = sub_1C4F01498();

  v176 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C496C3A0(0xD000000000000013, 0x80000001C4FAA9C0, v176);
  v175 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C496C3A0(0x2D4D4D2D79797979, 0xEA00000000006464, v175);
  v172 = v42;
  __dst[0] = v42;
  v43 = sub_1C456902C(&qword_1EC0C4730, &qword_1C4F5E5D0);
  v44 = sub_1C4401CBC(&qword_1EDDEFF78, &qword_1EC0C4730, &qword_1C4F5E5D0, MEMORY[0x1E69A99D8]);
  v45 = sub_1C4C17E38(&qword_1EC0C4CE0, MEMORY[0x1E69A97F8], MEMORY[0x1E69A97F0]);
  v46 = sub_1C4C17CE0();
  v47 = AssociatedConformanceWitness;
  sub_1C4EFFDC8();
  v171 = v47;
  if (!v47)
  {
    v57 = *(v169 + 16);
    v154 = v39;
    v57(v163, v39, v170);
    __dst[0] = v43;
    __dst[1] = v177;
    __dst[2] = v44;
    __dst[3] = v45;
    v151 = v45;
    __dst[4] = v46;
    swift_getOpaqueTypeConformance2();
    v58 = v164;
    sub_1C4F01478();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v163 = v165 + 32;
    v153 = (v166 + 32);
    v152 = (v166 + 8);
    v166 = MEMORY[0x1E69E7CC0];
    v59 = &qword_1EC0C4CC0;
    v150 = xmmword_1C4F0F830;
    v165 += 8;
    v60 = v58;
    v61 = v168;
    v178 = v24;
    v179 = v28;
    while (1)
    {
      while (1)
      {
        v62 = v60;
        sub_1C4F01FA8();
        sub_1C49328EC(v28, v31, &qword_1EC0C4CC8, &qword_1C4F5DF30);
        v63 = sub_1C456902C(&qword_1EC0C4CE8, &qword_1C4F5DF60);
        if (sub_1C44157D4(v31, 1, v63) == 1)
        {
          (*(v167 + 8))(v62, v184);
          (*(v169 + 8))(v154, v170);
          v138 = v166;
          goto LABEL_33;
        }

        v64 = v59;
        v65 = v181;
        sub_1C49328EC(&v31[*(v63 + 48)], v181, &qword_1EC0C4CB8, &qword_1C4F5DF20);
        if (sub_1C44157D4(v65, 1, v182) == 1)
        {
          sub_1C4420C3C(v65, &qword_1EC0C4CB8, &qword_1C4F5DF20);
          goto LABEL_12;
        }

        v66 = v65;
        v67 = v178;
        sub_1C49328EC(v66, v178, v59, &qword_1C4F5DF28);
        sub_1C4C17DC8(v67, v61);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1C4420C3C(v67, v59, &qword_1C4F5DF28);
        sub_1C4420C3C(v61, v59, &qword_1C4F5DF28);
LABEL_12:
        sub_1C456902C(&qword_1EC0C4CF0, qword_1C4F5DF68);
        sub_1C43FBCE0();
        (*(v68 + 8))(v31);
        v60 = v62;
        v28 = v179;
      }

      sub_1C4402C08();
      v69 = v162;
      v70 = v177;
      v71(v162, v61, v177);
      v72 = v160;
      sub_1C4EFEFC8();
      v73 = sub_1C4EFFC68();
      if (sub_1C44157D4(v72, 1, v73) == 1)
      {
        break;
      }

      v164 = v73;
      v78 = v159;
      sub_1C4EFFC58();
      v69 = v78;
      v79 = *(v164 - 8);
      v59 = *(v79 + 8);
      v149 = v79 + 8;
      (v59)(v72);
      v80 = v161;
      if (sub_1C44157D4(v69, 1, v161) == 1)
      {
        v81 = sub_1C4407F0C();
        v82(v81);
        v83 = sub_1C440B618();
        goto LABEL_17;
      }

      v148 = v59;
      v85 = v80;
      v147 = *v153;
      v147(v158, v69, v80);
      v86 = v157;
      v69 = v162;
      sub_1C4EFEFC8();
      v59 = v164;
      if (sub_1C44157D4(v86, 1, v164) == 1)
      {
        sub_1C4402C08();
        v87(v158, v85);
        sub_1C4402C08();
        v88(v69, v177);
        v89 = sub_1C440B618();
        sub_1C4420C3C(v89, v90, &qword_1C4F5DF28);
        sub_1C4420C3C(v86, &qword_1EC0C0CC8, &unk_1C4F405F0);
        v91 = sub_1C44039C0(&__dst[4]);
        sub_1C440BAA8(v91, v92, v93, v85);
        goto LABEL_20;
      }

      v95 = v59;
      v59 = v155;
      sub_1C4EFFC48();
      v69 = v59;
      (v148)(v157, v95);
      if (sub_1C44157D4(v59, 1, v85) == 1)
      {
        sub_1C4402C08();
        v96(v158, v85);
        v97 = sub_1C4407F0C();
        v98(v97);
        v83 = sub_1C440B618();
LABEL_17:
        sub_1C4420C3C(v83, v84, &qword_1C4F5DF28);
LABEL_20:
        sub_1C4420C3C(v69, &unk_1EC0B84E0, qword_1C4F0D2D0);
        goto LABEL_21;
      }

      v147(v156, v59, v85);
      sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
      v99 = swift_allocObject();
      *(v99 + 16) = v150;
      *(v99 + 56) = sub_1C4EFF0C8();
      *(v99 + 64) = sub_1C4C17E38(&qword_1EDDFA1C8, MEMORY[0x1E69A9810], MEMORY[0x1E69A9808]);
      sub_1C4422F90((v99 + 32));
      sub_1C4EFD5A8();
      sub_1C4EF9AD8();
      v100 = MEMORY[0x1E69E63B0];
      *(v99 + 96) = MEMORY[0x1E69E63B0];
      v101 = MEMORY[0x1E69A0168];
      *(v99 + 104) = MEMORY[0x1E69A0168];
      *(v99 + 72) = v102;
      sub_1C4EF9AD8();
      *(v99 + 136) = v100;
      *(v99 + 144) = v101;
      *(v99 + 112) = v103;
      v104 = sub_1C4EF9BF8();
      v105 = sub_1C44039D4(v104, sel_stringFromDate_);

      v106 = sub_1C4F01138();
      v164 = v107;

      *(v99 + 176) = MEMORY[0x1E69E6158];
      v108 = MEMORY[0x1E69A0138];
      *(v99 + 184) = MEMORY[0x1E69A0138];
      v109 = v164;
      *(v99 + 152) = v106;
      *(v99 + 160) = v109;
      v110 = sub_1C4EF9BF8();
      v111 = sub_1C44039D4(v110, sel_stringFromDate_);

      v112 = sub_1C4F01138();
      v114 = v113;

      *(v99 + 216) = MEMORY[0x1E69E6158];
      *(v99 + 224) = v108;
      *(v99 + 192) = v112;
      *(v99 + 200) = v114;
      v115 = sub_1C4EF9BF8();
      v116 = sub_1C44039D4(v115, sel_stringFromDate_);

      v117 = sub_1C4F01138();
      v164 = v118;

      *(v99 + 256) = MEMORY[0x1E69E6158];
      *(v99 + 264) = v108;
      v119 = v164;
      *(v99 + 232) = v117;
      *(v99 + 240) = v119;
      v120 = sub_1C4EF9BF8();
      v121 = v99;
      v122 = sub_1C44039D4(v120, sel_stringFromDate_);

      v123 = sub_1C4F01138();
      v125 = v124;

      v121[37] = MEMORY[0x1E69E6158];
      v121[38] = v108;
      v121[34] = v123;
      v121[35] = v125;
      v126 = v166;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458B824();
        v126 = v136;
      }

      v127 = *(v126 + 16);
      v128 = v127 >= *(v126 + 24) >> 1;
      v61 = v168;
      v164 = v127;
      v149 = v127 + 1;
      if (v128)
      {
        sub_1C458B824();
        v166 = v137;
      }

      else
      {
        v166 = v126;
      }

      v59 = v152;
      v129 = *v152;
      v130 = v161;
      (*v152)(v156, v161);
      v129(v158, v130);
      v131 = sub_1C4407F0C();
      v132(v131);
      v133 = sub_1C440B618();
      sub_1C4420C3C(v133, v134, &qword_1C4F5DF28);
      v135 = v166;
      *(v166 + 16) = v149;
      *(v135 + 8 * v164 + 32) = v121;
LABEL_21:
      v28 = v179;
      sub_1C456902C(&qword_1EC0C4CF0, qword_1C4F5DF68);
      sub_1C43FBCE0();
      (*(v94 + 8))(v31);
      v60 = v62;
    }

    sub_1C4402C08();
    v74(v69, v70);
    sub_1C4420C3C(v178, v64, &qword_1C4F5DF28);
    sub_1C4420C3C(v72, &qword_1EC0C0CC8, &unk_1C4F405F0);
    v75 = sub_1C44039C0(&__dst[8]);
    sub_1C440BAA8(v75, v76, v77, v161);
    v59 = v64;
    goto LABEL_20;
  }

  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v48 = sub_1C4F00978();
  sub_1C442B738(v48, qword_1EDE2DF70);
  v49 = v171;
  v50 = v171;
  v51 = sub_1C4F00968();
  v52 = sub_1C4F01CD8();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138412290;
    v55 = v49;
    v56 = _swift_stdlib_bridgeErrorToNSError();
    *(v53 + 4) = v56;
    *v54 = v56;
    _os_log_impl(&dword_1C43F8000, v51, v52, "error with context.allGraphObjectsOfType: %@", v53, 0xCu);
    sub_1C4420C3C(v54, &qword_1EC0BDA00, &qword_1C4F10D30);
    MEMORY[0x1C6942830](v54, -1, -1);
    MEMORY[0x1C6942830](v53, -1, -1);
  }

  else
  {
  }

  v138 = MEMORY[0x1E69E7CC0];
LABEL_33:
  memcpy(__dst, (v173 + 24), sizeof(__dst));
  sub_1C4BE3DEC(v138, v174, v139, v140, v141, v142, v143, v144);
}

unint64_t sub_1C4C17CE0()
{
  result = qword_1EDDDBD90;
  if (!qword_1EDDDBD90)
  {
    sub_1C4572308(&qword_1EC0C4720, &unk_1C4F5DF50);
    sub_1C4401CBC(&qword_1EDDF06C8, &qword_1EC0BD3F8, &unk_1C4F5B800, MEMORY[0x1E69E6328]);
    sub_1C4C17E38(&qword_1EDDFE2F0, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBD90);
  }

  return result;
}

uint64_t sub_1C4C17DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C4CC0, &qword_1C4F5DF28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4C17E38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4C17E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, a2, a3);

  if (!v4)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      memcpy(__dst, __src, sizeof(__dst));
      _s36K2TSemanticEntitySearchViewGeneratorCMa();
      a4 = swift_allocObject();

      sub_1C4C18094(v9, __dst);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v10 = a1;
      *(v10 + 8) = a2;
      *(v10 + 16) = xmmword_1C4F5B670;
      *(v10 + 32) = 0xD000000000000025;
      *(v10 + 40) = 0x80000001C4FB83A0;
      *(v10 + 48) = v12;
      *(v10 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4C17FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C17E90(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

void *sub_1C4C18094(uint64_t a1, const void *a2)
{
  v2[2] = a1;
  memcpy(v2 + 3, a2, 0x48uLL);
  v4 = objc_allocWithZone(MEMORY[0x1E696AB78]);

  sub_1C46A9810(a2, v9);
  v5 = [v4 init];
  v2[12] = v5;
  v6 = v5;
  v7 = sub_1C4F01108();
  [v6 setDateFormat_];

  sub_1C4AF99F4(a2);

  return v2;
}

void sub_1C4C18170(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C4409678(a1, a1[3]);
  v4 = type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple(0);
  sub_1C4EFF7E8();
  sub_1C43FE064();
  sub_1C440115C();
  sub_1C4EFF7F8();
  sub_1C43FE064();
  sub_1C440115C();
  sub_1C4EFF7B8();
  sub_1C43FE064();
  sub_1C440115C();
  sub_1C4EFF7C8();
  sub_1C43FE064();
  v5 = sub_1C4EFF7D8();
  v7 = v6;
  sub_1C4433950();
  v8 = sub_1C43FEF2C();
  v9(v8);
  v10 = a1[4];
  sub_1C4433950();
  v11 = sub_1C43FEF2C();
  v13 = v12(v11, v10);
  v14 = a1[4];
  sub_1C4433950();
  v15 = sub_1C43FEF2C();
  v16(v15, v14);
  sub_1C4433950();
  v17 = sub_1C43FEF2C();
  v19 = v18(v17);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  v20 = (a2 + v4[9]);
  *v20 = v5;
  v20[1] = v7;
  *(a2 + v4[10]) = v24;
  *(a2 + v4[11]) = v13;
  v21 = (a2 + v4[12]);
  *v21 = v22;
  v21[1] = v23;
  *(a2 + v4[13]) = v19;
}

uint64_t sub_1C4C18328@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  if (sub_1C4F01278())
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFF0D8();
    v8 = sub_1C4EFF0C8();
    if (sub_1C44157D4(v7, 1, v8) != 1)
    {
      (*(*(v8 - 8) + 32))(a3, v7, v8);
      v10 = a3;
      v11 = 0;
      v9 = v8;
      return sub_1C440BAA8(v10, v11, 1, v9);
    }

    sub_1C4420C3C(v7, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  v9 = sub_1C4EFF0C8();
  v10 = a3;
  v11 = 1;
  return sub_1C440BAA8(v10, v11, 1, v9);
}

uint64_t sub_1C4C1846C(uint64_t a1)
{
  v215 = sub_1C4EFB258();
  sub_1C43FCDF8();
  v201 = v3;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FD2D8();
  v214 = v5;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = sub_1C43FBD18(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD230();
  sub_1C43FD2C8(v9);
  v196 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v200 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD230();
  v183 = v13;
  v14 = sub_1C456902C(&qword_1EC0C4CF8, &unk_1C4F5E060);
  v15 = sub_1C43FBD18(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD2C8(&v180 - v16);
  v206 = sub_1C4EFF248();
  sub_1C43FCDF8();
  *&v199 = v17;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD2D8();
  v20 = sub_1C43FD2C8(v19);
  v217 = type metadata accessor for GraphTriple(v20);
  sub_1C43FCDF8();
  v194 = v21;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD2D8();
  v212 = v23;
  v182 = sub_1C4F002D8();
  sub_1C43FCDF8();
  v181 = v24;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD2D8();
  v205 = v26;
  v27 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v28 = sub_1C43FBD18(v27);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD2C8(&v180 - v29);
  v30 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v220 = v31;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBFDC();
  v213 = v33;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD230();
  v211 = v36;
  v210 = type metadata accessor for EventTriple(0);
  sub_1C43FCDF8();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v180 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple(0);
  sub_1C43FCDF8();
  v219 = v43;
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v180 - v46;
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD230();
  v218 = v49;
  v198 = v1;
  v50 = *(v1 + 16);
  v186 = a1;
  v202 = v50;
  v51 = sub_1C486EC90(a1);
  v52 = *(v51 + 16);
  v216 = v30;
  if (v52)
  {
    v209 = v42;
    sub_1C440FDA8(MEMORY[0x1E69E7CC0]);
    v53 = v222;
    v54 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v192 = v51;
    v55 = v38;
    v56 = v51 + v54;
    v57 = *(v55 + 72);
    v58 = v210;
    do
    {
      sub_1C4C199B4(v56, v41, type metadata accessor for EventTriple);
      __dst[3] = v58;
      __dst[4] = sub_1C4C19A6C(&qword_1EDDEBC08, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
      v59 = sub_1C4422F90(__dst);
      sub_1C4C199B4(v41, v59, type metadata accessor for EventTriple);
      sub_1C4C18170(__dst, v47);
      sub_1C4C19A14(v41, type metadata accessor for EventTriple);
      sub_1C440962C(__dst);
      v222 = v53;
      v61 = *(v53 + 16);
      v60 = *(v53 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_1C43FCFE8(v60);
        sub_1C4401DCC();
        sub_1C459D9C8();
        v58 = v210;
        v53 = v222;
      }

      *(v53 + 16) = v61 + 1;
      sub_1C43FBF6C();
      sub_1C4C19950(v47, v53 + v62 + *(v63 + 72) * v61);
      v56 += v57;
      --v52;
    }

    while (v52);

    v30 = v216;
  }

  else
  {

    v53 = MEMORY[0x1E69E7CC0];
  }

  v64 = *(v53 + 16);
  v65 = MEMORY[0x1E69E7CC0];
  v66 = v207;
  if (v64)
  {
    sub_1C43FBF6C();
    v68 = v53 + v67;
    v70 = *(v69 + 72);
    v209 = (v220 + 32);
    v210 = v70;
    do
    {
      v71 = v218;
      sub_1C4C199B4(v68, v218, type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple);
      sub_1C4C18328(v66);
      sub_1C4C19A14(v71, type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple);
      if (sub_1C44157D4(v66, 1, v30) == 1)
      {
        sub_1C4420C3C(v66, &unk_1EC0BA0E0, &qword_1C4F105A0);
      }

      else
      {
        v72 = v66;
        v73 = *v209;
        (*v209)(v211, v72, v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44D45E4(0, *(v65 + 16) + 1, 1, v65);
          v65 = v79;
        }

        v75 = *(v65 + 16);
        v74 = *(v65 + 24);
        if (v75 >= v74 >> 1)
        {
          sub_1C43FCFE8(v74);
          sub_1C4401DCC();
          sub_1C44D45E4(v80, v81, v82, v65);
          v65 = v83;
        }

        *(v65 + 16) = v75 + 1;
        sub_1C43FBF6C();
        v78 = v65 + v76 + *(v77 + 72) * v75;
        v30 = v216;
        v73(v78, v211, v216);
        v66 = v207;
      }

      v68 += v210;
      --v64;
    }

    while (v64);
  }

  v84 = v186;
  __dst[0] = v186;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3B44(v65);
  v85 = sub_1C4872610(__dst[0]);

  v86 = v85[2];
  if (v86)
  {
    sub_1C440FDA8(MEMORY[0x1E69E7CC0]);
    v87 = v222;
    sub_1C43FBF6C();
    v218 = v85;
    v89 = v85 + v88;
    v91 = *(v90 + 72);
    v92 = v193;
    do
    {
      v93 = v212;
      sub_1C4C199B4(v89, v212, type metadata accessor for GraphTriple);
      __dst[3] = v217;
      __dst[4] = sub_1C4C19A6C(&qword_1EC0BAA28, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
      v94 = sub_1C4422F90(__dst);
      sub_1C4C199B4(v93, v94, type metadata accessor for GraphTriple);
      sub_1C4C18170(__dst, v92);
      sub_1C4C19A14(v93, type metadata accessor for GraphTriple);
      sub_1C440962C(__dst);
      v222 = v87;
      v96 = *(v87 + 16);
      v95 = *(v87 + 24);
      if (v96 >= v95 >> 1)
      {
        sub_1C43FCFE8(v95);
        sub_1C4401DCC();
        sub_1C459D9C8();
        v87 = v222;
      }

      *(v87 + 16) = v96 + 1;
      sub_1C43FBF6C();
      sub_1C4C19950(v92, v87 + v97 + *(v98 + 72) * v96);
      v89 += v91;
      v86 = (v86 - 1);
    }

    while (v86);

    v84 = v186;
  }

  else
  {

    v87 = MEMORY[0x1E69E7CC0];
  }

  __dst[0] = v87;
  sub_1C49D3B18(v53);
  sub_1C456902C(&qword_1EC0C4D00, &qword_1C4F5E070);
  sub_1C4401CBC(&qword_1EC0C4D08, &qword_1EC0C4D00, &qword_1C4F5E070, MEMORY[0x1E69E6328]);
  sub_1C4C19A6C(&qword_1EC0C3E70, type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple, &unk_1C4F56690);
  v99 = sub_1C4F01498();

  __dst[3] = sub_1C456902C(&qword_1EC0C4D10, qword_1C4F5E078);
  __dst[4] = sub_1C4401CBC(&qword_1EC0C4D18, &qword_1EC0C4D10, qword_1C4F5E078, MEMORY[0x1E69A99D8]);
  __dst[0] = v99;
  v180 = v99;

  v100 = v205;
  sub_1C4F002C8();
  v101 = v203;
  v102 = v197;
  v103 = v196;
  v104 = v187;
  v210 = *(v84 + 16);
  if (v210)
  {
    v105 = 0;
    v219 = *(v220 + 16);
    v185 = (*(v220 + 80) + 32) & ~*(v220 + 80);
    v209 = (v84 + v185);
    v220 += 16;
    v217 = *(v220 + 56);
    v218 = (v220 - 8);
    v192 = v199 + 32;
    v191 = v200 + 32;
    v190 = v200 + 8;
    v212 = (v201 + 8);
    v189 = v199 + 8;
    *(&v106 + 1) = 10;
    v188 = xmmword_1C4F13950;
    *&v106 = 138412290;
    v199 = v106;
    v207 = MEMORY[0x1E69E7CC0];
    v107 = v204;
    v108 = v216;
    do
    {
      v219(v104, &v209[v217 * v105], v108);
      sub_1C4F002B8();
      v211 = v105;
      if (v101)
      {
        if (qword_1EDDFECD0 != -1)
        {
          swift_once();
        }

        v109 = sub_1C4F00978();
        sub_1C442B738(v109, qword_1EDE2DF70);
        v110 = sub_1C43FEF2C();
        v111 = sub_1C4F00968();
        v112 = sub_1C4F01CD8();

        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          *v113 = v199;
          v115 = v101;
          v116 = _swift_stdlib_bridgeErrorToNSError();
          *(v113 + 4) = v116;
          *v114 = v116;
          _os_log_impl(&dword_1C43F8000, v111, v112, "error whilst textualizing: %@", v113, 0xCu);
          sub_1C4420C3C(v114, &qword_1EC0BDA00, &qword_1C4F10D30);
          v117 = v114;
          v100 = v205;
          MEMORY[0x1C6942830](v117, -1, -1);
          v118 = v113;
          v107 = v204;
          MEMORY[0x1C6942830](v118, -1, -1);
        }

        else
        {
        }

        v122 = sub_1C440B628();
        v123(v122);
        v101 = 0;
      }

      else
      {
        v119 = v206;
        if (sub_1C44157D4(v107, 1, v206) == 1)
        {
          v120 = sub_1C440B628();
          v121(v120);
          sub_1C4420C3C(v107, &qword_1EC0C4CF8, &unk_1C4F5E060);
        }

        else
        {
          sub_1C4402C08();
          v124(v208, v107, v119);
          sub_1C4EFF238();
          if (sub_1C44157D4(v102, 1, v103) == 1)
          {
            sub_1C4420C3C(v102, &unk_1EC0B84E0, qword_1C4F0D2D0);
            v125 = 0;
            v202 = 0xE000000000000000;
          }

          else
          {
            sub_1C4402C08();
            v126 = v183;
            v127(v183, v102, v103);
            v128 = sub_1C440DA5C();
            v129 = [v119 stringFromDate_];

            v125 = sub_1C4F01138();
            v202 = v130;

            sub_1C4402C08();
            v131(v126, v103);
          }

          v132 = v195;
          sub_1C4EFF228();
          if (sub_1C44157D4(v132, 1, v103) == 1)
          {
            sub_1C4420C3C(v132, &unk_1EC0B84E0, qword_1C4F0D2D0);
            v201 = 0;
            v200 = 0xE000000000000000;
          }

          else
          {
            sub_1C4402C08();
            v133 = v184;
            v134(v184, v132, v103);
            v135 = sub_1C440DA5C();
            v136 = [v132 stringFromDate_];

            v201 = sub_1C4F01138();
            v200 = v137;

            sub_1C4402C08();
            v138(v133, v103);
          }

          v139 = MEMORY[0x1E69E7CC0];
          v203 = 0;
          v140 = sub_1C4EFF208();
          v141 = *(v140 + 16);
          if (v141)
          {
            v194 = v125;
            __dst[0] = v139;
            sub_1C44CD9C0(0, v141, 0);
            v142 = __dst[0];
            v193 = v140;
            v143 = v140 + v185;
            do
            {
              v144 = v213;
              v219(v213, v143, v108);
              v145 = v214;
              sub_1C4EFF058();
              sub_1C4C19A6C(&qword_1EC0C35A0, MEMORY[0x1E699FE40], MEMORY[0x1E699FE48]);
              v146 = v108;
              v147 = v215;
              v148 = sub_1C4F02858();
              v150 = v149;
              (*v212)(v145, v147);
              (*v218)(v144, v146);
              __dst[0] = v142;
              v152 = *(v142 + 16);
              v151 = *(v142 + 24);
              if (v152 >= v151 >> 1)
              {
                v154 = sub_1C43FCFE8(v151);
                sub_1C44CD9C0(v154, v152 + 1, 1);
                v142 = __dst[0];
              }

              *(v142 + 16) = v152 + 1;
              v153 = v142 + 16 * v152;
              *(v153 + 32) = v148;
              *(v153 + 40) = v150;
              v108 = v216;
              v143 += v217;
              --v141;
            }

            while (v141);

            v104 = v187;
            v125 = v194;
          }

          else
          {

            v142 = v139;
          }

          __dst[0] = v142;
          sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
          sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6310]);
          v155 = sub_1C4F01048();
          v157 = v156;

          sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
          v158 = swift_allocObject();
          *(v158 + 16) = v188;
          *(v158 + 56) = v108;
          *(v158 + 64) = sub_1C4C19A6C(&qword_1EDDFA1C8, MEMORY[0x1E69A9810], MEMORY[0x1E69A9808]);
          v159 = sub_1C4422F90((v158 + 32));
          v219(v159, v104, v108);
          v160 = sub_1C4EFF218();
          v161 = MEMORY[0x1E69E6158];
          *(v158 + 96) = MEMORY[0x1E69E6158];
          v162 = MEMORY[0x1E69A0138];
          *(v158 + 104) = MEMORY[0x1E69A0138];
          *(v158 + 112) = v125;
          *(v158 + 72) = v160;
          *(v158 + 80) = v163;
          *(v158 + 136) = v161;
          *(v158 + 144) = v162;
          *(v158 + 120) = v202;
          *(v158 + 176) = v161;
          *(v158 + 184) = v162;
          v164 = v200;
          *(v158 + 152) = v201;
          *(v158 + 160) = v164;
          *(v158 + 216) = v161;
          *(v158 + 224) = v162;
          *(v158 + 192) = v155;
          *(v158 + 200) = v157;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C458B824();
            v207 = v171;
          }

          v101 = v203;
          v102 = v197;
          v107 = v204;
          v166 = *(v207 + 16);
          v165 = *(v207 + 24);
          v103 = v196;
          if (v166 >= v165 >> 1)
          {
            sub_1C43FCFE8(v165);
            sub_1C4401DCC();
            sub_1C458B824();
            v207 = v172;
          }

          sub_1C4402C08();
          v167(v208, v206);
          v168 = sub_1C440B628();
          v169(v168);
          v170 = v207;
          *(v207 + 16) = v166 + 1;
          *(v170 + 8 * v166 + 32) = v158;
          v100 = v205;
        }
      }

      v105 = v211 + 1;
    }

    while (v211 + 1 != v210);
  }

  else
  {
    v207 = MEMORY[0x1E69E7CC0];
  }

  memcpy(__dst, (v198 + 24), 0x48uLL);
  sub_1C4BE3DEC(v207, v186, v173, v174, v175, v176, v177, v178);

  return (*(v181 + 8))(v100, v182);
}

uint64_t sub_1C4C1987C()
{

  return v0;
}

uint64_t sub_1C4C198F8()
{
  sub_1C4C1987C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C19950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4C199B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4C19A14(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4C19A6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4C19AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a1 + 16);
  if (v5)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1C459D930();
    v7 = v15;
    v8 = *(type metadata accessor for ViewDatabaseArtifact.Property(0) - 8);
    v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    while (1)
    {
      sub_1C4C1CCE4(&v13, v14);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v15 = v7;
      v11 = *(v7 + 16);
      if (v11 >= *(v7 + 24) >> 1)
      {
        sub_1C459D930();
        v7 = v15;
      }

      *(v7 + 16) = v11 + 1;
      sub_1C441D670(v14, v7 + 40 * v11 + 32);
      v9 += v10;
      if (!--v5)
      {

        return v7;
      }
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

uint64_t sub_1C4C19C58(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461AFEC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C4C1ECF0(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C4C19CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - v5;
  sub_1C4BCAD0C();
  v7 = sub_1C4EFBE98();
  v8 = v2;
  if (v2)
  {
  }

  v18[1] = v7;

  v20 = *(a2 + 16);
  if (v20)
  {
    v10 = 0;
    v19 = a2 + 32;
    v18[0] = v6;
    do
    {
      v11 = *(v19 + 8 * v10);
      v12 = *(v11 + 16);
      if (v12)
      {
        v22 = v10;
        v23 = 0;
        v26 = MEMORY[0x1E69E7CC0];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C459D088(0, v12, 0);
        v13 = v11;
        v14 = v26;
        v21 = v13;
        v15 = v13 + 32;
        do
        {
          sub_1C442E860(v15, v24);
          sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
          swift_dynamicCast();
          v26 = v14;
          v17 = *(v14 + 16);
          v16 = *(v14 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_1C459D088((v16 > 1), v17 + 1, 1);
            v14 = v26;
          }

          *(v14 + 16) = v17 + 1;
          sub_1C44482AC(&v25, (v14 + 32 * v17 + 32));
          v15 += 40;
          --v12;
        }

        while (v12);

        v10 = v22;
        v8 = v23;
        v6 = v18[0];
      }

      sub_1C4EFB788();
      sub_1C4EFC0A8();
      sub_1C4423A0C(v6, &unk_1EC0C06C0, &unk_1C4F10DB0);
      if (v8)
      {
        break;
      }

      ++v10;
    }

    while (v10 != v20);
  }
}

uint64_t sub_1C4C19F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v6[2] = v7;
  v6[3] = a1;

  sub_1C446C37C(sub_1C4C1F2B4, v6);
}

uint64_t sub_1C4C19FCC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, char a8, double a9)
{
  v10 = v9;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v19 = sub_1C4F00978();
  sub_1C442B738(v19, qword_1EDE2DF70);
  v20 = sub_1C4F00968();
  v21 = sub_1C4F01CB8();
  if (os_log_type_enabled(v20, v21))
  {
    sub_1C43FD1A8();
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1C43F8000, v20, v21, "KTSCadenceViewGenerator: Created", v22, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C441D670(a1, v10 + 32);
  *(v10 + 128) = a2;
  *(v10 + 136) = a3;
  *(v10 + 144) = a4;
  *(v10 + 152) = a5;
  sub_1C4C1F3D0(a6, v10 + 72);
  *(v10 + 160) = a7;
  *(v10 + 16) = a8;
  *(v10 + 24) = a9;
  return v10;
}

uint64_t sub_1C4C1A148()
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - v5;
  v7 = sub_1C4EF9CD8();
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C44164BC();
  v8 = v1[12];
  v9 = v1[13];
  sub_1C4409678(v1 + 9, v8);
  result = (*(v9 + 8))(v8, v9);
  v11 = v2;
  if (v2)
  {
    return result;
  }

  v12 = result;
  v39 = v0;
  v40 = v6;
  v41 = 0;
  v42 = v7;
  v43 = v1;
  v13 = sub_1C4428DA0(result);
  v14 = 0;
  v45 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v13 == v14)
    {

      v46 = v45;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v22 = v41;
      sub_1C4C19C58(&v46);
      v11 = v22;
      if (v22)
      {
        goto LABEL_36;
      }

      v24 = v42;
      v23 = v43;
      v25 = v44;
      v27 = v39;
      v26 = v40;
      if (*(v46 + 16))
      {

        sub_1C4EF9AC8();
        sub_1C4D07BE0(v27, v26);
        v28 = *(v25 + 8);
        v28(v27, v24);
        if (sub_1C44157D4(v26, 1, v24) == 1)
        {
          sub_1C4423A0C(v26, &unk_1EC0B84E0, qword_1C4F0D2D0);
          v46 = 0;
          v47 = 0xE000000000000000;
          sub_1C4F02248();
          MEMORY[0x1C6940010](0xD000000000000042, 0x80000001C4FBA200);
          v29 = 0xE700000000000000;
          v30 = 0x796C68746E6F6DLL;
          if (*(v23 + 16) != 1)
          {
            v30 = 0x6C61756E6E61;
            v29 = 0xE600000000000000;
          }

          if (*(v23 + 16))
          {
            v31 = v30;
          }

          else
          {
            v31 = 0x796C6B656577;
          }

          if (*(v23 + 16))
          {
            v32 = v29;
          }

          else
          {
            v32 = 0xE600000000000000;
          }

          MEMORY[0x1C6940010](v31, v32);

          MEMORY[0x1C6940010](0xD000000000000024, 0x80000001C4FBA250);
          v33 = v46;
          v34 = v47;
          sub_1C446D0DC();
          sub_1C441C114();
          swift_allocError();
          *v35 = v33;
          *(v35 + 8) = v34;
          *(v35 + 16) = 3;
          return swift_willThrow();
        }

        sub_1C4EF9AD8();
        v37 = v38;
        result = (v28)(v26, v24);
      }

      else
      {

        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v37 = v36;
        result = (*(v25 + 8))(v27, v24);
      }

      v23[3] = v37;
      return result;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6940F90](v14, v12);
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }
    }

    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    sub_1C4EFBC68();

    if (v48)
    {
      sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      v15 = v49;
      v16 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C458A6E0();
        v16 = v20;
      }

      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      v45 = v16;
      if (v18 >= v17 >> 1)
      {
        sub_1C458A6E0();
        v45 = v21;
      }

      v19 = v45;
      *(v45 + 16) = v18 + 1;
      *(v19 + 8 * v18 + 32) = v15;
      v14 = v11;
    }

    else
    {
      sub_1C4423A0C(&v46, &qword_1EC0B9038, &unk_1C4F231C0);
LABEL_16:
      ++v14;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:

  __break(1u);
  return result;
}

uint64_t sub_1C4C1A620()
{
  sub_1C43FBCD4();
  v1[4] = v0;
  v1[2] = v2;
  v1[3] = v3;
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v4);
  v1[5] = sub_1C43FE604();
  v1[6] = swift_task_alloc();
  v5 = sub_1C4EF9CD8();
  v1[7] = v5;
  sub_1C43FCF7C(v5);
  v1[8] = v6;
  v1[9] = sub_1C43FE604();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v7 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4C1AA98()
{
  sub_1C43FBCD4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBE64();
  *v5 = v4;
  *(v6 + 144) = v0;

  if (v0)
  {
    v7 = sub_1C4C1AFA4;
  }

  else
  {
    v7 = sub_1C4C1ABA0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C4C1ABA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C4441100();
  v71 = v20;
  v26 = *(v20 + 96);
  v25 = *(v20 + 104);
  v27 = ceil((*(v20 + 128) - v26) / v25);
  (*(v20 + 112))(*(v20 + 88), *(v20 + 56));
  v28 = v26 + v25 * v27;
  *(v20 + 96) = v28;
  v29 = *(v20 + 88);
  if (v28 >= *(v20 + 24))
  {

    sub_1C43FC1B0();
    goto LABEL_13;
  }

  sub_1C4EF9AC8();
  v30 = sub_1C4D08790(v29);
  if (v31)
  {
LABEL_6:
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v34 = sub_1C445EA3C();
    sub_1C442B738(v34, qword_1EDE2DF70);
    v35 = sub_1C44206D4();
    v36(v35);
    v37 = sub_1C4F00968();
    v38 = sub_1C4F01CD8();
    v39 = sub_1C4400B94(v38);
    v40 = *(v20 + 72);
    if (v39)
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      v69 = sub_1C440E550();
      *&v70[0] = v69;
      *v21 = 136315138;
      sub_1C441A854();
      v43 = sub_1C4C1F314(v41, v42, MEMORY[0x1E6969570]);
      v44 = sub_1C4402598(v43);
      v46 = v45;
      v47 = sub_1C442D6F8();
      (v23)(v47);
      sub_1C441D828(v44, v46, v70);
      sub_1C4441528();
      *(v21 + 4) = v40;
      sub_1C4404638(&dword_1C43F8000, v48, v49, "KTSCadenceViewGenerator: Bad historic date %s");
      sub_1C440962C(v69);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v50 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v50);
    }

    else
    {

      v51 = sub_1C442D6F8();
      (v23)(v51);
    }

    *&v70[0] = 0;
    *(&v70[0] + 1) = 0xE000000000000000;
    sub_1C4F02248();

    sub_1C4411F0C();
    *&v70[0] = v53;
    *(&v70[0] + 1) = v52;
    sub_1C441A854();
    v56 = sub_1C4C1F314(v54, v55, MEMORY[0x1E6969570]);
    v57 = sub_1C441503C(v56);
    MEMORY[0x1C6940010](v57);

    v58 = v70[0];
    sub_1C450B034();
    sub_1C441C114();
    swift_allocError();
    *v59 = 0;
    *(v59 + 8) = 0xE000000000000000;
    *(v59 + 16) = v58;
    v60 = v70[1];
    *(v59 + 32) = v70[0];
    *(v59 + 48) = v60;
    *(v59 + 64) = 9;
    swift_willThrow();
    v61 = sub_1C442C04C();
    (v23)(v61);

    sub_1C43FBDA0();
LABEL_13:
    sub_1C4433E50();

    __asm { BRAA            X1, X16 }
  }

  sub_1C43FCA54(v30);
  sub_1C43FF7A4();
  if (v32 || (sub_1C441BDA8(), v33 = sub_1C4430294(), v24(v33), sub_1C4EF9C28(), sub_1C4D07BE0(v21, v29), (v24)(v21, v22), sub_1C44157D4(v29, 1, v22) == 1))
  {
    sub_1C4423A0C(*v23, &unk_1EC0B84E0, qword_1C4F0D2D0);
    goto LABEL_6;
  }

  sub_1C4EF9AD8();
  *(v20 + 128) = v64;
  v65 = sub_1C4402120();
  v24(v65);
  v66 = swift_task_alloc();
  *(v20 + 136) = v66;
  *v66 = v20;
  sub_1C43FE080(v66);
  sub_1C4433E50();

  return sub_1C4C1B05C();
}

uint64_t sub_1C4C1AFA4()
{
  (*(v0 + 112))(*(v0 + 88), *(v0 + 56));

  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4C1B05C()
{
  sub_1C43FBCD4();
  v1[5] = v0;
  v1[3] = v2;
  v1[4] = v3;
  v4 = sub_1C4EF9CD8();
  v1[6] = v4;
  sub_1C43FCF7C(v4);
  v1[7] = v5;
  v1[8] = swift_task_alloc();
  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4C1B10C()
{
  v1 = v0[5];
  v3 = *(v0 + 3);
  v2 = *(v0 + 4);
  v4 = objc_autoreleasePoolPush();
  sub_1C4C1B22C(v1, v0 + 2, v3, v2);
  v5 = v0[8];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];
  v9 = *(v0 + 4);
  objc_autoreleasePoolPop(v4);
  sub_1C4EF9C88();
  sub_1C4EF9AD8();
  v11 = v10;
  (*(v7 + 8))(v5, v6);
  if (*(v8 + 24) < v9 && v11 > v9)
  {
    *(v8 + 24) = v0[4];
  }

  sub_1C43FC1B0();

  return v13();
}

uint64_t sub_1C4C1B22C(void *a1, uint64_t *a2, double a3, double a4)
{
  v182 = a2;
  v7 = sub_1C456902C(&qword_1EC0C27B0, &unk_1C4F5E170);
  v166 = *(v7 - 8);
  v167 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v165 = &v162 - v8;
  v9 = sub_1C456902C(&qword_1EC0C4D20, &qword_1C4F5E300);
  v163 = *(v9 - 8);
  v164 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v162 = &v162 - v10;
  v11 = sub_1C4EFE0D8();
  v174 = *(v11 - 8);
  v175 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v173 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&qword_1EC0C4D28, &qword_1C4F5E180);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v171 = &v162 - v14;
  v172 = sub_1C4EFDB78();
  v169 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v168 = &v162 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&qword_1EC0C4D30, &qword_1C4F5E188);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v179 = &v162 - v17;
  v18 = sub_1C4EFE228();
  v180 = *(v18 - 8);
  v181 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v170 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v177 = &v162 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v176 = &v162 - v23;
  v24 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v186 = (&v162 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v185 = &v162 - v27;
  v28 = sub_1C456902C(&qword_1EC0C4D38, &qword_1C4F5E2E0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v162 - v29;
  v31 = sub_1C456902C(&qword_1EC0C4D40, &qword_1C4F5E190);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v162 - v32;
  v34 = sub_1C4EFE248();
  v188 = *(v34 - 8);
  v189 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v178 = &v162 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v192 = &v162 - v37;
  v191 = sub_1C456902C(&qword_1EC0C4D48, &qword_1C4F5E198);
  v183 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v39 = &v162 - v38;
  v190 = a1;
  v40 = a1[7];
  v41 = a1[8];
  sub_1C4409678(a1 + 4, v40);
  (*(v41 + 8))(v40, v41);

  sub_1C4EFF138();
  v42 = MEMORY[0x1E69A9860];
  sub_1C4C1F314(&qword_1EC0C4D50, MEMORY[0x1E69A9860], MEMORY[0x1E69A9858]);
  sub_1C4C1F314(&qword_1EC0C4D58, v42, MEMORY[0x1E69A9850]);
  sub_1C4EFF268();
  v184 = *&a4;
  v43 = *MEMORY[0x1E69A9600];
  v44 = sub_1C4EFE098();
  (*(*(v44 - 8) + 104))(v33, v43, v44);
  sub_1C440BAA8(v33, 0, 1, v44);
  v45 = sub_1C4F00258();
  sub_1C440BAA8(v30, 1, 1, v45);
  v46 = sub_1C4EFF0C8();
  sub_1C440BAA8(v185, 1, 1, v46);
  sub_1C440BAA8(v186, 1, 1, v46);
  v48 = v191;
  v47 = v192;
  sub_1C4EFE238();
  v49 = v190[19];
  sub_1C4EF93D8();
  swift_allocObject();
  v50 = sub_1C4EF93C8();
  v51 = v187;
  v52 = sub_1C4EFF258();
  v53 = v51;
  if (v51)
  {

    (*(v188 + 8))(v47, v189);
    result = (*(v183 + 8))(v39, v48);
    *v182 = v51;
  }

  else
  {
    v55 = v52;
    v186 = v49;
    v187 = v39;
    if (v52)
    {
      v185 = v50;
      v56 = *(v52 + 16);
      if (v56)
      {
        v197 = MEMORY[0x1E69E7CC0];
        sub_1C459EFF8();
        v57 = 0;
        v58 = v197;
        v59 = v55 + 32;
        do
        {
          if (v57 >= *(v55 + 16))
          {
            __break(1u);
            goto LABEL_35;
          }

          v47 = v55;
          sub_1C4609884(v59, &v193);
          sub_1C4409678(&v193, v195);
          sub_1C4EFF278();
          sub_1C440962C(&v193);
          v197 = v58;
          v53 = *(v58 + 16);
          if (v53 >= *(v58 + 24) >> 1)
          {
            sub_1C459EFF8();
            v58 = v197;
          }

          ++v57;
          *(v58 + 16) = v53 + 1;
          sub_1C441D670(&v196, v58 + 40 * v53 + 32);
          v59 += 48;
        }

        while (v56 != v57);

        (*(v188 + 16))(v178, v192, v189);
        v102 = sub_1C4EFE208();
        sub_1C440BAA8(v179, 1, 1, v102);
        sub_1C4EFE1F8();
        v103 = v190[20];
        sub_1C456902C(&qword_1EC0BFC90, &qword_1C4F5E1A0);
        swift_allocObject();
        v104 = v103;
        v109 = sub_1C4EFF738();
        sub_1C4EFE218();
        v179 = v109;
        v110 = v173;
        v111 = v174;
        v112 = v175;
        (*(v174 + 104))(v173, *MEMORY[0x1E69A9610]);

        sub_1C4EFE0C8();
        v184 = 0;
        (*(v111 + 8))(v110, v112);

        if (v195)
        {
          sub_1C456902C(&qword_1EC0B8F88, &qword_1C4F0EA60);
          v113 = v171;
          v114 = v172;
          v115 = swift_dynamicCast();
          sub_1C440BAA8(v113, v115 ^ 1u, 1, v114);
          if (sub_1C44157D4(v113, 1, v114) != 1)
          {
            v116 = v168;
            (*(v169 + 32))(v168, v113, v114);
            v178 = sub_1C4EFDB68();
            v117 = sub_1C4EFDB58();
            v118 = v162;
            sub_1C4EFF5C8();
            v119 = v164;
            sub_1C4EF9408();
            v121 = v120;
            v122 = *(v163 + 8);
            v122(v118, v119);
            sub_1C4EFF5E8();
            sub_1C4EF9408();
            v124 = v123;
            v122(v118, v119);
            v125 = v165;
            sub_1C4EFF5D8();
            v126 = v167;
            sub_1C4EF9408();
            v128 = v127;
            (*(v166 + 8))(v125, v126);
            sub_1C456902C(&qword_1EC0BA6C8, &qword_1C4F14640);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1C4F17D00;
            *(inited + 32) = 0x696669746E656469;
            *(inited + 40) = 0xEA00000000007265;
            v130 = sub_1C4EFDB48();
            v131 = MEMORY[0x1E69E6158];
            *(inited + 48) = v130;
            *(inited + 56) = v132;
            *(inited + 72) = v131;
            *(inited + 80) = 0x6D69547472617473;
            *(inited + 88) = 0xE900000000000065;
            v133 = MEMORY[0x1E69E63B0];
            *(inited + 96) = a3;
            *(inited + 120) = v133;
            *(inited + 128) = 0x656D6954646E65;
            *(inited + 136) = 0xE700000000000000;
            *(inited + 144) = a4;
            *(inited + 168) = v133;
            *(inited + 176) = 0x65726F6373;
            *(inited + 184) = 0xE500000000000000;
            sub_1C4EFDB58();
            sub_1C4EFF5F8();
            v135 = v134;

            *(inited + 192) = v135;
            *(inited + 216) = v133;
            *(inited + 224) = 0x65636E6174736964;
            *(inited + 232) = 0xE800000000000000;
            *(inited + 240) = v121;
            *(inited + 264) = v133;
            strcpy((inited + 272), "elevationGain");
            *(inited + 286) = -4864;
            *(inited + 288) = v124;
            *(inited + 312) = v133;
            *(inited + 320) = 0x6E6F697461727564;
            *(inited + 328) = 0xE800000000000000;
            *(inited + 336) = v128;
            *(inited + 360) = v133;
            *(inited + 368) = 0x6177686769487369;
            v53 = v184;
            *(inited + 376) = 0xE900000000000079;
            v136 = MEMORY[0x1E69E6370];
            *(inited + 384) = 0;
            *(inited + 408) = v136;
            *(inited + 416) = 0x797469437369;
            *(inited + 424) = 0xE600000000000000;
            *(inited + 432) = 0;
            *(inited + 456) = v136;
            *(inited + 464) = 0x656D614E64616F72;
            *(inited + 472) = 0xE900000000000073;
            *(inited + 480) = 0u;
            *(inited + 496) = 0u;
            *(inited + 512) = 0x65746E6F4373746BLL;
            *(inited + 520) = 0xEA00000000007478;
            *(inited + 552) = sub_1C4EFFFB8();
            *(inited + 528) = v178;
            *(inited + 560) = 0x6174614473746BLL;
            *(inited + 568) = 0xE700000000000000;
            *(inited + 600) = sub_1C4EFFE08();
            *(inited + 576) = v117;

            sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
            v96 = sub_1C4F00F28();

            (*(v169 + 8))(v116, v114);
            (*(v180 + 8))(v177, v181);
            goto LABEL_19;
          }
        }

        else
        {
          sub_1C4423A0C(&v193, &qword_1EC0C4D60, &qword_1C4F5E1A8);
          v113 = v171;
          sub_1C440BAA8(v171, 1, 1, v172);
        }

        sub_1C4423A0C(v113, &qword_1EC0C4D28, &qword_1C4F5E180);
        if (qword_1EDDFECD0 != -1)
        {
          swift_once();
        }

        v137 = sub_1C4F00978();
        sub_1C442B738(v137, qword_1EDE2DF70);
        v138 = v180;
        v139 = v181;
        v140 = *(v180 + 16);
        v141 = v170;
        v140(v170, v177, v181);
        v142 = sub_1C4F00968();
        v143 = sub_1C4F01CD8();
        if (os_log_type_enabled(v142, v143))
        {
          v144 = swift_slowAlloc();
          LODWORD(v190) = v143;
          v145 = v138;
          v146 = v144;
          v184 = v144;
          v186 = swift_slowAlloc();
          v193 = v186;
          *v146 = 136315138;
          v140(v176, v141, v139);
          v147 = v139;
          v148 = sub_1C4F01198();
          v150 = v149;
          v151 = *(v145 + 8);
          v151(v141, v147);
          v152 = sub_1C441D828(v148, v150, &v193);

          v153 = v184;
          *(v184 + 4) = v152;
          v154 = v151;
          _os_log_impl(&dword_1C43F8000, v142, v190, "KTSError: Could not combine result for request %s", v153, 0xCu);
          v155 = v186;
          sub_1C440962C(v186);
          MEMORY[0x1C6942830](v155, -1, -1);
          MEMORY[0x1C6942830](v153, -1, -1);
        }

        else
        {

          v154 = *(v138 + 8);
          v154(v141, v139);
          v147 = v139;
        }

        v156 = sub_1C4F001F8();
        sub_1C4C1F314(&qword_1EC0C4D68, MEMORY[0x1E69A9DA8], MEMORY[0x1E69A9DB0]);
        v157 = swift_allocError();
        v159 = v158;
        v193 = 0;
        v194 = 0xE000000000000000;
        sub_1C4F02248();
        MEMORY[0x1C6940010](0xD00000000000002FLL, 0x80000001C4FBA2B0);
        v160 = v177;
        sub_1C4F02438();
        v161 = v194;
        *v159 = v193;
        v159[1] = v161;
        (*(*(v156 - 8) + 104))(v159, *MEMORY[0x1E69A9DA0], v156);
        swift_willThrow();

        v154(v160, v147);
        (*(v188 + 8))(v192, v189);
        result = (*(v183 + 8))(v187, v191);
        *v182 = v157;
      }

      else
      {

        if (qword_1EDDFECD0 != -1)
        {
          swift_once();
        }

        v71 = sub_1C4F00978();
        sub_1C442B738(v71, qword_1EDE2DF70);
        v72 = sub_1C4F00968();
        v73 = sub_1C4F01CB8();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v193 = v75;
          *v74 = 136315394;
          v76 = sub_1C4F019E8();
          v78 = sub_1C441D828(v76, v77, &v193);

          *(v74 + 4) = v78;
          *(v74 + 12) = 2080;
          v79 = sub_1C4F019E8();
          v81 = sub_1C441D828(v79, v80, &v193);

          *(v74 + 14) = v81;
          _os_log_impl(&dword_1C43F8000, v72, v73, "KTSCadenceViewGenerator: no results for query from %s to %s", v74, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1C6942830](v75, -1, -1);
          MEMORY[0x1C6942830](v74, -1, -1);
        }

        v82 = v176;
        v83 = v179;
        (*(v188 + 16))(v178, v192, v189);
        v84 = sub_1C4EFE208();
        sub_1C440BAA8(v83, 1, 1, v84);
        sub_1C4EFE1F8();
        v85 = sub_1C4EFFE08();
        v86 = sub_1C4EFFDF8();

        sub_1C4EFF628();
        sub_1C4EFF608();

        sub_1C456902C(&qword_1EC0BA6C8, &qword_1C4F14640);
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_1C4F17D00;
        *(v87 + 32) = 0x696669746E656469;
        *(v87 + 40) = 0xEA00000000007265;
        v88 = sub_1C4EFE218();
        v89 = MEMORY[0x1E69E6158];
        *(v87 + 48) = v88;
        *(v87 + 56) = v90;
        *(v87 + 72) = v89;
        *(v87 + 80) = 0x6D69547472617473;
        *(v87 + 88) = 0xE900000000000065;
        v91 = MEMORY[0x1E69E63B0];
        *(v87 + 96) = a3;
        *(v87 + 120) = v91;
        *(v87 + 128) = 0x656D6954646E65;
        *(v87 + 136) = 0xE700000000000000;
        *(v87 + 144) = a4;
        *(v87 + 168) = v91;
        *(v87 + 176) = 0x65726F6373;
        v92 = MEMORY[0x1E69E6530];
        *(v87 + 184) = 0xE500000000000000;
        *(v87 + 192) = 0;
        *(v87 + 216) = v92;
        *(v87 + 224) = 0x65636E6174736964;
        *(v87 + 232) = 0xE800000000000000;
        *(v87 + 240) = 0;
        *(v87 + 264) = v92;
        strcpy((v87 + 272), "elevationGain");
        *(v87 + 286) = -4864;
        *(v87 + 288) = 0;
        *(v87 + 312) = v92;
        *(v87 + 320) = 0x6E6F697461727564;
        *(v87 + 328) = 0xE800000000000000;
        *(v87 + 336) = 0;
        *(v87 + 360) = v92;
        *(v87 + 368) = 0x6177686769487369;
        *(v87 + 376) = 0xE900000000000079;
        v93 = MEMORY[0x1E69E6370];
        *(v87 + 384) = 0;
        *(v87 + 408) = v93;
        *(v87 + 416) = 0x797469437369;
        *(v87 + 424) = 0xE600000000000000;
        *(v87 + 432) = 0;
        *(v87 + 456) = v93;
        *(v87 + 464) = 0x656D614E64616F72;
        *(v87 + 472) = 0xE900000000000073;
        *(v87 + 480) = 0u;
        *(v87 + 496) = 0u;
        *(v87 + 512) = 0x65746E6F4373746BLL;
        *(v87 + 520) = 0xEA00000000007478;
        v94 = sub_1C4EFFFB8();
        v95 = sub_1C4EFFFA8();
        *(v87 + 552) = v94;
        *(v87 + 528) = v95;
        *(v87 + 560) = 0x6174614473746BLL;
        *(v87 + 568) = 0xE700000000000000;
        *(v87 + 600) = v85;
        *(v87 + 576) = v86;
        sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
        v96 = sub_1C4F00F28();
        (*(v180 + 8))(v82, v181);
LABEL_19:
        v198 = v96;
        v97 = v185;

        v98 = v53;
        v99 = sub_1C4C19AC4(v186, &v198, v97);
        v100 = v183;
        v101 = v191;
        if (v98)
        {

          (*(v188 + 8))(v192, v189);
          (*(v100 + 8))(v187, v101);

          *v182 = v98;
        }

        else
        {
          v105 = v99;
          v106 = v190[17];
          v184 = v190[16];
          v182 = v106;
          v107 = v190[18];
          sub_1C456902C(&qword_1EC0B8870, &unk_1C4F0DC60);
          v108 = swift_initStackObject();
          *(v108 + 16) = xmmword_1C4F0D130;
          *(v108 + 32) = v105;
          sub_1C4C19F38(v108, v184, v182, v107, v186);

          swift_setDeallocating();
          sub_1C49E1600();
          (*(v188 + 8))(v192, v189);
          (*(v100 + 8))(v187, v101);
        }
      }
    }

    else
    {
      v184 = 0;
      v53 = v183;
      if (qword_1EDDFECD0 != -1)
      {
LABEL_35:
        swift_once();
      }

      v60 = sub_1C4F00978();
      sub_1C442B738(v60, qword_1EDE2DF70);
      v61 = sub_1C4F00968();
      v62 = sub_1C4F01CB8();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v193 = v64;
        *v63 = 136315394;
        v65 = sub_1C4F019E8();
        v67 = sub_1C441D828(v65, v66, &v193);

        *(v63 + 4) = v67;
        *(v63 + 12) = 2080;
        v68 = sub_1C4F019E8();
        v70 = sub_1C441D828(v68, v69, &v193);

        *(v63 + 14) = v70;
        _os_log_impl(&dword_1C43F8000, v61, v62, "KTSCadenceViewGenerator: no results for query from %s to %s", v63, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v64, -1, -1);
        MEMORY[0x1C6942830](v63, -1, -1);

        (*(v188 + 8))(v192, v189);
      }

      else
      {

        (*(v188 + 8))(v47, v189);
      }

      return (*(v53 + 8))(v187, v191);
    }
  }

  return result;
}

uint64_t sub_1C4C1CCE4@<X0>(void *a1@<X3>, uint64_t *a2@<X8>)
{
  sub_1C465C2C4();
  if (*(&v31 + 1) == 1)
  {
    v5 = &qword_1EC0BA6E0;
    v6 = &unk_1C4F5E2C0;
    v7 = &v30;
LABEL_7:
    sub_1C4423A0C(v7, v5, v6);
    goto LABEL_8;
  }

  v27 = v30;
  v28 = v31;
  if (!*(&v31 + 1))
  {
    v5 = &qword_1EC0BCD10;
    v6 = &qword_1C4F0C8C0;
    v7 = &v27;
    goto LABEL_7;
  }

  sub_1C4EFFE08();
  if (swift_dynamicCast())
  {
    *&v27 = v25;
    v8 = &unk_1EC0C4D78;
    v9 = MEMORY[0x1E69A9BE0];
    v10 = MEMORY[0x1E69A9958];
    goto LABEL_13;
  }

LABEL_8:
  sub_1C465C2C4();
  if (*(&v31 + 1) == 1)
  {
    v11 = &qword_1EC0BA6E0;
    v12 = &unk_1C4F5E2C0;
    v13 = &v30;
LABEL_16:
    sub_1C4423A0C(v13, v11, v12);
LABEL_17:
    sub_1C465C2C4();
    if (*(&v26 + 1) == 1)
    {
      v17 = &qword_1EC0BA6E0;
      v18 = &unk_1C4F5E2C0;
      v19 = &v25;
    }

    else
    {
      v30 = v25;
      v31 = v26;
      if (*(&v26 + 1))
      {
        sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
        if (swift_dynamicCast())
        {
          if (*(&v28 + 1))
          {
            return sub_1C441D670(&v27, a2);
          }
        }

        else
        {
          v29 = 0;
          v27 = 0u;
          v28 = 0u;
        }

        goto LABEL_25;
      }

      v17 = &qword_1EC0BCD10;
      v18 = &qword_1C4F0C8C0;
      v19 = &v30;
    }

    sub_1C4423A0C(v19, v17, v18);
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
LABEL_25:
    v20 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
    result = sub_1C4C1F2D0();
    v21 = MEMORY[0x1E69A0190];
    a2[3] = result;
    a2[4] = v21;
    *a2 = v20;
    if (*(&v28 + 1))
    {
      return sub_1C4423A0C(&v27, &qword_1EC0B9038, &unk_1C4F231C0);
    }

    return result;
  }

  v27 = v30;
  v28 = v31;
  if (!*(&v31 + 1))
  {
    v11 = &qword_1EC0BCD10;
    v12 = &qword_1C4F0C8C0;
    v13 = &v27;
    goto LABEL_16;
  }

  sub_1C4EFFFB8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  *&v27 = v25;
  v8 = &unk_1EC0C4D70;
  v9 = MEMORY[0x1E69A9C60];
  v10 = MEMORY[0x1E69A9C68];
LABEL_13:
  sub_1C4C1F314(v8, v9, v10);
  v14 = sub_1C4EF93B8();
  if (v2)
  {

    *a1 = v2;
  }

  else
  {
    v22 = v14;
    v23 = v15;
    v24 = MEMORY[0x1E699FD70];
    a2[3] = MEMORY[0x1E6969080];
    a2[4] = v24;

    *a2 = v22;
    a2[1] = v23;
  }

  return result;
}

uint64_t sub_1C4C1D044()
{
  sub_1C43FBCD4();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v3);
  v1[12] = sub_1C43FE604();
  v1[13] = swift_task_alloc();
  v4 = sub_1C4EF9CD8();
  v1[14] = v4;
  sub_1C43FCF7C(v4);
  v1[15] = v5;
  v1[16] = sub_1C43FE604();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4C1D748()
{
  sub_1C43FBCD4();
  v2 = *v1;
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBE64();
  *v5 = v4;
  *(v2 + 192) = v0;

  if (v0)
  {

    v6 = sub_1C4C1DCC4;
  }

  else
  {
    v6 = sub_1C4C1D858;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C4C1DCC4()
{
  (*(v0 + 160))(*(v0 + 144), *(v0 + 112));

  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4C1DD7C()
{
  sub_1C43FBCD4();
  v1[2] = v0;
  v2 = sub_1C4EF9CD8();
  v1[3] = v2;
  sub_1C43FCF7C(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v4 = sub_1C4F00978();
  v1[6] = v4;
  sub_1C43FCF7C(v4);
  v1[7] = v5;
  v1[8] = swift_task_alloc();
  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4C1DE7C()
{
  sub_1C4C1A148();
  sub_1C4CFDBF8(*(*(v0 + 16) + 128), *(*(v0 + 16) + 136), *(*(v0 + 16) + 144), *(*(v0 + 16) + 152));

  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4C1E060()
{
  sub_1C440962C((v0 + 32));
  sub_1C440962C((v0 + 72));

  return v0;
}

uint64_t sub_1C4C1E0BC()
{
  sub_1C4C1E060();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C1E114(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = v5;
  LOBYTE(v80) = a3;
  v10 = _s10ViewConfigVMa(0);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C44164BC();
  if (qword_1EDDFECD0 != -1)
  {
LABEL_57:
    sub_1C4400FC0();
    swift_once();
  }

  v12 = sub_1C4F00978();
  sub_1C442B738(v12, qword_1EDE2DF70);
  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CB8();
  if (sub_1C441E1F8(v14))
  {
    sub_1C43FD1A8();
    v15 = swift_slowAlloc();
    sub_1C441F048(v15);
    sub_1C441CEBC(&dword_1C43F8000, v16, v17, "KTSCadenceViewGenerationProvider: Giving the listener");
    sub_1C444007C();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C443A738(a1, a2, v18, v19, v20, v21, v22, v23);
  if (v5)
  {
    goto LABEL_15;
  }

  v78 = a2;
  v24 = sub_1C4F00968();
  v25 = sub_1C4F01CB8();
  if (sub_1C441E1F8(v25))
  {
    sub_1C43FD1A8();
    v26 = swift_slowAlloc();
    sub_1C441F048(v26);
    sub_1C441CEBC(&dword_1C43F8000, v27, v28, "KTSCadenceViewGenerationProvider: Got the config");
    sub_1C444007C();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v29 = *(v4 + 160);
  v30 = *(v4 + 152);
  if (v29)
  {
    v31 = *(v4 + 152) == 3;
  }

  else
  {
    v31 = 1;
  }

  if (v31)
  {
    v33 = *v4;
    v32 = *(v4 + 8);
    sub_1C450B034();
    sub_1C441C114();
    v6 = swift_allocError();
    *v34 = v33;
    *(v34 + 8) = v32;
    *(v34 + 16) = 0x65636E65646163;
    *(v34 + 24) = 0xE700000000000000;
    *(v34 + 32) = 0;
    *(v34 + 40) = 0xE000000000000000;
    *(v34 + 48) = v88;
    *(v34 + 64) = 1;
    swift_willThrow();
LABEL_13:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    goto LABEL_14;
  }

  ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, v78, v80 & 1);
  sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
  if (!swift_dynamicCast())
  {
    sub_1C450B034();
    sub_1C441C114();
    v6 = swift_allocError();
    *v59 = a1;
    *(v59 + 8) = v78;
    *(v59 + 16) = xmmword_1C4F5B670;
    *(v59 + 32) = 0xD000000000000025;
    *(v59 + 40) = 0x80000001C4FB83A0;
    *(v59 + 48) = v82;
    *(v59 + 64) = 0;
    swift_willThrow();
    goto LABEL_13;
  }

  v77 = v29;
  v76 = v30;
  v79 = a4;
  v80 = v12;
  v43 = v84;
  v44 = v85;
  v45 = sub_1C4F00968();
  v46 = sub_1C4F01CB8();
  if (sub_1C441E1F8(v46))
  {
    sub_1C43FD1A8();
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1C43F8000, v45, v30, "KTSCadenceViewGenerationProvider: Got the object client", v47, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  *&v88 = 0;
  *(&v88 + 1) = 0xE000000000000000;

  sub_1C4F02248();

  strcpy(&v88, "SELECT * FROM ");
  HIBYTE(v88) = -18;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v43, *(&v43 + 1));

  v48 = sub_1C4C8CE18(v88, *(&v88 + 1), *(&v44 + 1), 0);

  v49 = 0;
  a4 = MEMORY[0x1E69E7CC0];
  v50 = *(v48 + 16);
  a2 = 0x6D69547472617473;
  a1 = MEMORY[0x1E69E63B0];
  while (v50 != v49)
  {
    if (v49 >= *(v48 + 16))
    {
      __break(1u);
      goto LABEL_57;
    }

    v51 = *(v48 + 8 * v49 + 32);
    if (*(v51 + 16))
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v52 = sub_1C445FAA8(0x6D69547472617473, 0xE900000000000065);
      if ((v53 & 1) == 0)
      {

        goto LABEL_36;
      }

      sub_1C442B870(*(v51 + 56) + 32 * v52, &v88);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_36;
      }

      v54 = v84;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C458A6E0();
        a4 = v57;
      }

      v55 = *(a4 + 16);
      v56 = v55 + 1;
      if (v55 >= *(a4 + 24) >> 1)
      {
        sub_1C458A6E0();
        v56 = v55 + 1;
        a4 = v58;
      }

      ++v49;
      *(a4 + 16) = v56;
      *(a4 + 8 * v55 + 32) = v54;
    }

    else
    {
LABEL_36:
      ++v49;
    }
  }

  v60 = COERCE_DOUBLE(sub_1C46134D4(a4));
  v62 = v61;

  if (v62)
  {
    v63 = 0.0;
  }

  else
  {
    v63 = v60;
  }

  v89 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  v90 = sub_1C4C1F36C();
  *&v88 = v77;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v64 = sub_1C4C81ADC(&v88);
  sub_1C440962C(&v88);
  sub_1C4C83D3C(v64);
  v12 = v80;
  if (*(v64 + 16))
  {
    sub_1C465C324();

    if (v83)
    {
      sub_1C456902C(&qword_1EC0C4D88, &qword_1C4F5E230);
      sub_1C456902C(&qword_1EC0C4D90, &qword_1C4F5E238);
      if (swift_dynamicCast())
      {
        if (*(&v85 + 1))
        {
          sub_1C4C1F3D0(&v84, &v88);
          v65 = sub_1C4F00968();
          v66 = sub_1C4F01CB8();
          if (sub_1C441E1F8(v66))
          {
            sub_1C43FD1A8();
            *swift_slowAlloc() = 0;
            sub_1C441CEBC(&dword_1C43F8000, v67, v68, "KTSCadenceViewGenerationProvider: Got the KTS table");
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
          }

          sub_1C4C687F0(v64, &v82);

          sub_1C442E860(&v82, v81);
          sub_1C4C1F3F0(&v88, &v84);
          v75 = *(v79 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
          _s23KTSCadenceViewGeneratorCMa();
          v37 = swift_allocObject();
          sub_1C4C19FCC(v81, v43, *(&v43 + 1), v44, *(&v44 + 1), &v84, v75, v76, v63);
          sub_1C440962C(&v82);
          sub_1C440962C(&v88);
          sub_1C445F57C(v4);
          return v37;
        }
      }

      else
      {
        v87 = 0;
        v85 = 0u;
        v86 = 0u;
        v84 = 0u;
      }
    }

    else
    {

      sub_1C4423A0C(&v82, &qword_1EC0C4868, &qword_1C4F5E220);
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0;
    }

    sub_1C4423A0C(&v84, &qword_1EC0C4D80, &qword_1C4F5E228);
  }

  else
  {
  }

  v69 = sub_1C4F00968();
  v70 = sub_1C4F01CD8();
  if (sub_1C441E1F8(v70))
  {
    sub_1C43FD1A8();
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_1C43F8000, v69, v62, "KTSCadenceViewGenerationProvider: No KTS segment table could be found in dependency stores", v71, 2u);
    v72 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v72);
  }

  v73 = sub_1C4F001F8();
  sub_1C4C1F314(&qword_1EC0C4D68, MEMORY[0x1E69A9DA8], MEMORY[0x1E69A9DB0]);
  sub_1C441C114();
  v6 = swift_allocError();
  *v74 = 0xD00000000000005ALL;
  v74[1] = 0x80000001C4FBA2E0;
  (*(*(v73 - 8) + 104))(v74, *MEMORY[0x1E69A9DA0], v73);
  swift_willThrow();

  sub_1C44247D0();

LABEL_14:
  sub_1C445F57C(v4);
LABEL_15:
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v12, qword_1EDDFECB8);
  v35 = v6;
  v36 = sub_1C4F00968();
  v37 = sub_1C4F01CD8();

  if (os_log_type_enabled(v36, v37))
  {
    sub_1C43FECF0();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    v40 = v6;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 4) = v41;
    *v39 = v41;
    _os_log_impl(&dword_1C43F8000, v36, v37, "KTSCadenceViewGenerationProvider error: %@", v38, 0xCu);
    sub_1C4423A0C(v39, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  swift_willThrow();
  return v37;
}

uint64_t sub_1C4C1EC44(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1C4C1E114(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C1ECF0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4F02828();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C4C1EDE4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1C45E7BE4(0, v2, 1, a1);
  }

  return result;
}

void sub_1C4C1EDE4(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v79 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v74 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (v24 >= *v26)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v76 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C458A358();
        v7 = v72;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_1C458A358();
        v7 = v73;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v77 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_1C45E821C((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v77);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v76;
      a4 = v74;
      if (v76 >= v5)
      {
        v79 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C45E80F0(&v79, *a1, a3);
LABEL_89:
}

unint64_t sub_1C4C1F2D0()
{
  result = qword_1EC0C4778;
  if (!qword_1EC0C4778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0C4778);
  }

  return result;
}

uint64_t sub_1C4C1F314(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C4C1F36C()
{
  result = qword_1EDDFCEC0;
  if (!qword_1EDDFCEC0)
  {
    sub_1C4572308(&unk_1EC0B9620, &unk_1C4F0E870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCEC0);
  }

  return result;
}

uint64_t sub_1C4C1F3D0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

uint64_t sub_1C4C1F3F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C4C1F45C(uint64_t a1)
{
  v3 = sub_1C4EFE288();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v12[1] = v1;
    v15 = MEMORY[0x1E69E7CC0];
    sub_1C4F02348();
    v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = sub_1C4461BB8(0, &qword_1EC0C4F10, 0x1E6985C40);
    v13 = *(v4 + 16);
    v14 = v10;
    v11 = *(v4 + 72);
    do
    {
      v13(v6, v9, v3);
      sub_1C4F01C28();
      sub_1C4F02318();
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
      v9 += v11;
      --v7;
    }

    while (v7);
    return v15;
  }

  return result;
}

void sub_1C4C1F5EC()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v62 = sub_1C456902C(&qword_1EC0C4F00, &unk_1C4F5E3B0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v60 = v6;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v48 - v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD230();
  v61 = v13;
  v14 = v2;
  v15 = v2 + 64;
  sub_1C43FD030();
  v19 = v18 & v17;
  if (v19)
  {
    v48 = v4;
    v49 = v0;
    v20 = 0;
    v55 = __clz(__rbit64(v19));
    v21 = (v19 - 1) & v19;
    v22 = (v16 + 63) >> 6;
LABEL_7:
    v25 = *(v14 + 48);
    sub_1C4F00258();
    sub_1C43FBCE0();
    v27 = *(v26 + 16);
    v56 = *(v26 + 72);
    v57 = v26 + 16;
    v28 = v55;
    v29 = v25 + v56 * v55;
    v30 = v50;
    v58 = v27;
    v59 = v31;
    (v27)(v50, v29);
    v54 = *(v14 + 56);
    sub_1C456902C(&qword_1EC0C4D20, &qword_1C4F5E300);
    sub_1C43FBCE0();
    v33 = *(v32 + 16);
    v52 = *(v32 + 72);
    v53 = v32 + 16;
    v34 = &v54[v52 * v28];
    v35 = &v30[*(v62 + 48)];
    v54 = v33;
    v55 = v36;
    (v33)(v35, v34);
    v37 = v30;
    v38 = &qword_1EC0C4F00;
    sub_1C44CD9E0(v37, v61, &qword_1EC0C4F00, &unk_1C4F5E3B0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v51 = v14;
    if (!v21)
    {
      goto LABEL_9;
    }

    do
    {
      v39 = v9;
      v40 = v20;
LABEL_13:
      v41 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v42 = v41 | (v40 << 6);
      v43 = v60;
      v58(v60, *(v14 + 48) + v42 * v56, v59);
      (v54)(v43 + *(v62 + 48), *(v14 + 56) + v42 * v52, v55);
      v44 = v43;
      v9 = v39;
      sub_1C44CD9E0(v44, v39, v38, &unk_1C4F5E3B0);
      sub_1C4461BB8(0, &qword_1EC0C4E28, 0x1E696B058);
      v45 = v38;
      v46 = v61;
      if (sub_1C4EF93E8())
      {
        sub_1C4420C3C(v46, v45, &unk_1C4F5E3B0);
        sub_1C44CD9E0(v9, v46, v45, &unk_1C4F5E3B0);
      }

      else
      {
        sub_1C4420C3C(v9, v45, &unk_1C4F5E3B0);
      }

      v20 = v40;
      v38 = v45;
      v14 = v51;
    }

    while (v21);
LABEL_9:
    while (1)
    {
      v40 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v40 >= v22)
      {

        v47 = v48;
        sub_1C44CD9E0(v61, v48, &qword_1EC0C4F00, &unk_1C4F5E3B0);
        sub_1C440BAA8(v47, 0, 1, v62);
        goto LABEL_19;
      }

      v21 = *(v15 + 8 * v40);
      ++v20;
      if (v21)
      {
        v39 = v9;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v23 = 0;
    v22 = (v16 + 63) >> 6;
    while (1)
    {
      v20 = v23 + 1;
      if (v23 + 1 >= v22)
      {
        break;
      }

      v24 = *(v14 + 72 + 8 * v23);
      v19 += 64;
      ++v23;
      if (v24)
      {
        v48 = v4;
        v49 = v0;
        v21 = (v24 - 1) & v24;
        v55 = __clz(__rbit64(v24)) + v19;
        goto LABEL_7;
      }
    }

    sub_1C440BAA8(v4, 1, 1, v62);
LABEL_19:
    sub_1C43FBC80();
  }
}

uint64_t sub_1C4C1F9D0(char *a1)
{
  v60 = a1;
  v1 = sub_1C4EFFA28();
  v59 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v50 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v46 - v4;
  v5 = sub_1C456902C(&qword_1EC0C4F78, &unk_1C4F5E420);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v46 - v8;
  v9 = sub_1C456902C(&qword_1EC0C4F80, &qword_1C4F5E5B0);
  MEMORY[0x1EEE9AC00](v9);
  v49 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v53 = (&v46 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v46 - v14;
  v48 = sub_1C456902C(&qword_1EC0C4DE0, &qword_1C4F5E318);
  AssociatedConformanceWitness = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v16 = &v46 - v15;
  v61 = sub_1C456902C(&qword_1EC0C4F98, qword_1C4F5E440);
  v47 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v18 = &v46 - v17;
  v19 = sub_1C4572308(&qword_1EC0C0CE0, &unk_1C4F40610);
  v20 = sub_1C4401CBC(&qword_1EDDEFF80, &qword_1EC0C0CE0, &unk_1C4F40610, MEMORY[0x1E69A99D8]);
  v62 = v19;
  v63 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v60;
  v22 = sub_1C4F01488();
  v62 = MEMORY[0x1E69E7CC0];
  sub_1C459F038();
  v23 = v62;
  (*(AssociatedConformanceWitness + 16))(v16, v21, v48);
  v60 = v18;
  result = sub_1C4F01478();
  if (v22 < 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v57 = v9;
  if (v22)
  {
    v56 = v23;
    v25 = (v59 + 32);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v26 = &qword_1EC0C4F80;
    v23 = v52;
    while (1)
    {
      sub_1C4F01FA8();
      result = sub_1C44157D4(v23, 1, v9);
      if (result == 1)
      {
        goto LABEL_22;
      }

      v27 = v49;
      sub_1C4460050(v23, v49, v26, &qword_1C4F5E5B0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v29 = v50;
      if (EnumCaseMultiPayload == 1)
      {
        v64 = *v27;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        swift_willThrowTypedImpl();
        (*(v47 + 8))(v60, v61);

        sub_1C4420C3C(v23, &qword_1EC0C4F80, &qword_1C4F5E5B0);
        return v23;
      }

      v30 = v26;
      v31 = *v25;
      (*v25)(v50, v27, v1);
      v32 = v30;
      sub_1C4420C3C(v23, v30, &qword_1C4F5E5B0);
      v33 = v56;
      v62 = v56;
      v34 = v1;
      v35 = *(v56 + 16);
      if (v35 >= *(v56 + 24) >> 1)
      {
        sub_1C459F038();
        v29 = v50;
        v33 = v62;
      }

      *(v33 + 16) = v35 + 1;
      v36 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v56 = v33;
      v31((v33 + v36 + *(v59 + 72) * v35), v29, v34);
      --v22;
      v1 = v34;
      v9 = v57;
      v26 = v32;
      v23 = v52;
      if (!v22)
      {
        v38 = v54;
        v37 = v55;
        v23 = v56;
        goto LABEL_12;
      }
    }
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = v54;
  v37 = v55;
LABEL_12:
  v39 = (v59 + 32);
  while (1)
  {
    sub_1C4F01FA8();
    if (sub_1C44157D4(v37, 1, v9) == 1)
    {
      (*(v47 + 8))(v60, v61);
      sub_1C4420C3C(v37, &qword_1EC0C4F78, &unk_1C4F5E420);
      return v23;
    }

    sub_1C44CD9E0(v37, v38, &qword_1EC0C4F80, &qword_1C4F5E5B0);
    v40 = v53;
    sub_1C4460050(v38, v53, &qword_1EC0C4F80, &qword_1C4F5E5B0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v41 = *v39;
    v42 = v40;
    v43 = v51;
    (*v39)(v51, v42, v1);
    sub_1C4420C3C(v38, &qword_1EC0C4F80, &qword_1C4F5E5B0);
    v62 = v23;
    v44 = v1;
    v45 = *(v23 + 16);
    if (v45 >= *(v23 + 24) >> 1)
    {
      sub_1C459F038();
      v43 = v51;
      v23 = v62;
    }

    *(v23 + 16) = v45 + 1;
    v41(v23 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v45, v43, v44);
    v1 = v44;
    v38 = v54;
    v37 = v55;
    v9 = v57;
  }

  v64 = *v40;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();
  sub_1C4420C3C(v38, &qword_1EC0C4F80, &qword_1C4F5E5B0);
  (*(v47 + 8))(v60, v61);

  return v23;
}

uint64_t sub_1C4C201BC(char *a1)
{
  v60 = a1;
  v1 = sub_1C4EFFA28();
  v59 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v50 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v46 - v4;
  v5 = sub_1C456902C(&qword_1EC0C4F78, &unk_1C4F5E420);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v46 - v8;
  v9 = sub_1C456902C(&qword_1EC0C4F80, &qword_1C4F5E5B0);
  MEMORY[0x1EEE9AC00](v9);
  v49 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v53 = (&v46 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v46 - v14;
  v48 = sub_1C456902C(&qword_1EC0C4DD8, &qword_1C4F5E310);
  AssociatedConformanceWitness = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v16 = &v46 - v15;
  v61 = sub_1C456902C(&qword_1EC0C4F90, &qword_1C4F5E438);
  v47 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v18 = &v46 - v17;
  v19 = sub_1C4572308(&qword_1EC0C0CE0, &unk_1C4F40610);
  v20 = sub_1C4401CBC(&qword_1EDDEFF80, &qword_1EC0C0CE0, &unk_1C4F40610, MEMORY[0x1E69A99D8]);
  v62 = v19;
  v63 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v60;
  v22 = sub_1C4F01488();
  v62 = MEMORY[0x1E69E7CC0];
  sub_1C459F038();
  v23 = v62;
  (*(AssociatedConformanceWitness + 16))(v16, v21, v48);
  v60 = v18;
  result = sub_1C4F01478();
  if (v22 < 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v57 = v9;
  if (v22)
  {
    v56 = v23;
    v25 = (v59 + 32);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v26 = &qword_1EC0C4F80;
    v23 = v52;
    while (1)
    {
      sub_1C4F01FA8();
      result = sub_1C44157D4(v23, 1, v9);
      if (result == 1)
      {
        goto LABEL_22;
      }

      v27 = v49;
      sub_1C4460050(v23, v49, v26, &qword_1C4F5E5B0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v29 = v50;
      if (EnumCaseMultiPayload == 1)
      {
        v64 = *v27;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        swift_willThrowTypedImpl();
        (*(v47 + 8))(v60, v61);

        sub_1C4420C3C(v23, &qword_1EC0C4F80, &qword_1C4F5E5B0);
        return v23;
      }

      v30 = v26;
      v31 = *v25;
      (*v25)(v50, v27, v1);
      v32 = v30;
      sub_1C4420C3C(v23, v30, &qword_1C4F5E5B0);
      v33 = v56;
      v62 = v56;
      v34 = v1;
      v35 = *(v56 + 16);
      if (v35 >= *(v56 + 24) >> 1)
      {
        sub_1C459F038();
        v29 = v50;
        v33 = v62;
      }

      *(v33 + 16) = v35 + 1;
      v36 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v56 = v33;
      v31((v33 + v36 + *(v59 + 72) * v35), v29, v34);
      --v22;
      v1 = v34;
      v9 = v57;
      v26 = v32;
      v23 = v52;
      if (!v22)
      {
        v38 = v54;
        v37 = v55;
        v23 = v56;
        goto LABEL_12;
      }
    }
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = v54;
  v37 = v55;
LABEL_12:
  v39 = (v59 + 32);
  while (1)
  {
    sub_1C4F01FA8();
    if (sub_1C44157D4(v37, 1, v9) == 1)
    {
      (*(v47 + 8))(v60, v61);
      sub_1C4420C3C(v37, &qword_1EC0C4F78, &unk_1C4F5E420);
      return v23;
    }

    sub_1C44CD9E0(v37, v38, &qword_1EC0C4F80, &qword_1C4F5E5B0);
    v40 = v53;
    sub_1C4460050(v38, v53, &qword_1EC0C4F80, &qword_1C4F5E5B0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v41 = *v39;
    v42 = v40;
    v43 = v51;
    (*v39)(v51, v42, v1);
    sub_1C4420C3C(v38, &qword_1EC0C4F80, &qword_1C4F5E5B0);
    v62 = v23;
    v44 = v1;
    v45 = *(v23 + 16);
    if (v45 >= *(v23 + 24) >> 1)
    {
      sub_1C459F038();
      v43 = v51;
      v23 = v62;
    }

    *(v23 + 16) = v45 + 1;
    v41(v23 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v45, v43, v44);
    v1 = v44;
    v38 = v54;
    v37 = v55;
    v9 = v57;
  }

  v64 = *v40;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();
  sub_1C4420C3C(v38, &qword_1EC0C4F80, &qword_1C4F5E5B0);
  (*(v47 + 8))(v60, v61);

  return v23;
}

void *sub_1C4C209A8(__int128 *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDE2DF70);
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CB8();
  if (os_log_type_enabled(v11, v12))
  {
    sub_1C43FD1A8();
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C43F8000, v11, v12, "KTSSegmentViewGenerator: Created", v13, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C441D670(a1, (v5 + 2));
  memcpy(v5 + 8, a2, 0x48uLL);
  v5[7] = a3;
  v5[17] = a4;
  return v5;
}

void sub_1C4C20AB8()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = v0;
  v80 = v4;
  v5 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  sub_1C43FCDF8();
  v91 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  if (qword_1EDDFECD0 != -1)
  {
LABEL_49:
    sub_1C4400FC0();
    swift_once();
  }

  v11 = sub_1C4F00978();
  sub_1C442B738(v11, qword_1EDE2DF70);
  v12 = sub_1C4F00968();
  v13 = sub_1C4F01CB8();
  if (sub_1C43FDD64(v13))
  {
    sub_1C43FD1A8();
    *swift_slowAlloc() = 0;
    sub_1C440A5A8();
    _os_log_impl(v14, v15, v16, v17, v18, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  if (!*(v3[7] + 16))
  {
    v33 = sub_1C4F00968();
    v34 = sub_1C4F01CD8();
    if (sub_1C43FDD64(v34))
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  sub_1C465C324();
  if (!v96)
  {
    v35 = &v95;
    goto LABEL_13;
  }

  v89 = v10;
  sub_1C460986C(&v95, v97);
  sub_1C465C324();
  if (!v94)
  {
    sub_1C440962C(v97);
    v35 = &v93;
LABEL_13:
    sub_1C4420C3C(v35, &qword_1EC0C4868, &qword_1C4F5E220);
    v33 = sub_1C4F00968();
    v36 = sub_1C4F01CD8();
    if (sub_1C43FDD64(v36))
    {
LABEL_14:
      sub_1C43FD1A8();
      *swift_slowAlloc() = 0;
      sub_1C440A5A8();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

LABEL_15:

    goto LABEL_46;
  }

  sub_1C460986C(&v93, &v95);
  v19 = v3[5];
  v88 = v3[6];
  v81 = v3;
  sub_1C4409678(v3 + 2, v19);
  sub_1C456902C(&qword_1EC0C4D98, &unk_1C4F5E2B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001C4FBA3C0;
  sub_1C4609884(v97, inited + 48);
  *(inited + 96) = 0xD000000000000016;
  *(inited + 104) = 0x80000001C4FBA3E0;
  sub_1C4609884(&v95, inited + 112);
  sub_1C456902C(&qword_1EC0C4D88, &qword_1C4F5E230);
  sub_1C4F00F28();
  sub_1C4403A1C();
  v24 = sub_1C4BDEB08(v21, v80, v22, v23, 0, v19, v88);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v25 = sub_1C4F00968();
  v26 = sub_1C4F01CB8();
  if (sub_1C43FDD64(v26))
  {
    v27 = sub_1C43FD084();
    *v27 = 134217984;
    *(v27 + 4) = *(v24 + 16);

    sub_1C440A5A8();
    _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  v42 = v5;
  v43 = v3[17];
  sub_1C456902C(&qword_1EC0BFC90, &qword_1C4F5E1A0);
  swift_allocObject();
  v44 = v43;
  v45 = sub_1C4EFF738();
  if (v2)
  {

    goto LABEL_45;
  }

  v83 = v45;
  v10 = v3[11];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v46 = sub_1C4F00968();
  v47 = sub_1C4F01CC8();

  v90 = v10;
  if (os_log_type_enabled(v46, v47))
  {
    v48 = sub_1C43FD084();
    v49 = swift_slowAlloc();
    *&v93 = v49;
    *v48 = 136315138;
    v50 = MEMORY[0x1C6940380](v90, v42);
    v52 = sub_1C441D828(v50, v51, &v93);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_1C43F8000, v46, v47, "Schema: kts_segment \n %s", v48, 0xCu);
    sub_1C440962C(v49);
    v10 = v90;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v3 = v81;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v5 = v89;
  sub_1C4EF9348();
  swift_allocObject();
  v84 = sub_1C4EF9338();
  sub_1C4EF93D8();
  swift_allocObject();
  sub_1C4EF93C8();
  v53 = 0;
  v85 = *(v24 + 16);
  v79 = MEMORY[0x1E69E7CC0];
  v82 = v24;
  while (v53 != v85)
  {
    if (v53 >= *(v24 + 16))
    {
      goto LABEL_48;
    }

    v87 = v53 + 1;
    v86 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4C2146C(v86, v84, v54, v83);
    if (!*(v55 + 16))
    {

      goto LABEL_35;
    }

    v3 = *(v10 + 16);
    if (v3)
    {
      v99 = MEMORY[0x1E69E7CC0];
      sub_1C459D930();
      v56 = 0;
      v57 = v99;
      v58 = v10 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
      while (v56 < *(v10 + 16))
      {
        sub_1C443CCBC(v58 + *(v91 + 72) * v56, v5);
        sub_1C4C21504(v5, v92, &v93);
        v2 = 0;
        sub_1C4413A2C();
        v60 = *(v99 + 16);
        v59 = *(v99 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_1C43FCFE8(v59);
          sub_1C459D930();
        }

        ++v56;
        *(v99 + 16) = v60 + 1;
        sub_1C441D670(&v93, v99 + 40 * v60 + 32);
        v5 = v89;
        v10 = v90;
        if (v3 == v56)
        {

          v24 = v82;
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v57 = MEMORY[0x1E69E7CC0];
LABEL_34:
    v3 = v81;
    if (*(v57 + 16))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458B824();
        v79 = v63;
      }

      v62 = *(v79 + 16);
      v61 = *(v79 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1C43FCFE8(v61);
        sub_1C458B824();
        v79 = v64;
      }

      *(v79 + 16) = v62 + 1;
      *(v79 + 8 * v62 + 32) = v57;
      v53 = v87;
    }

    else
    {
LABEL_35:

      v53 = v87;
    }
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v65 = sub_1C4F00968();
  v66 = sub_1C4F01CB8();
  if (sub_1C43FDD64(v66))
  {
    v67 = sub_1C43FD084();
    *v67 = 134217984;
    *(v67 + 4) = *(v79 + 16);

    sub_1C440A5A8();
    _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  memcpy(v98, v3 + 8, sizeof(v98));
  sub_1C4BE3D80(v79, v80, v73, v74, v75, v76, v77, v78);

LABEL_45:
  sub_1C440962C(&v95);
  sub_1C440962C(v97);
LABEL_46:
  sub_1C43FBC80();
}