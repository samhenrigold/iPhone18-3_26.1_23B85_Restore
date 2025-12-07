uint64_t sub_1D99FB8FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1D9C7B63C();
    if (v10)
    {
      v11 = sub_1D9C7B65C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1D9C7B64C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1D9C7B63C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1D9C7B65C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1D9C7B64C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D99FBB2C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1D99FBCBC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1D99A5748(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1D99FB8FC(v13, a3, a4, &v12);
  v10 = v4;
  sub_1D99A5748(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1D99FBCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1D9C7B63C();
  v11 = result;
  if (result)
  {
    result = sub_1D9C7B65C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1D9C7B64C();
  sub_1D99FB8FC(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1D99FBD74(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1D99AF2FC(a3, a4);
          return sub_1D99FBB2C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D99FBEDC(uint64_t a1, uint64_t a2)
{
  if (!sub_1D99FBD74(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !sub_1D99FBD74(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) || *(a1 + 32) != *(a2 + 32) || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Userfeedback_UserFeedbackOnDeviceSignals(0);
  sub_1D9C7D3CC();
  sub_1D99FBFD0(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D99FBFD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D99FC040(uint64_t a1)
{
  result = sub_1D9C7D3CC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t VisualSearchResult.visualUnderstanding.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[7];
  v25 = v1[8];
  v26 = v2;
  v4 = v1[9];
  v27 = v1[10];
  v5 = v1[5];
  v7 = v1[3];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  *(a1 + 128) = v25;
  *(a1 + 144) = v4;
  *(a1 + 160) = v1[10];
  *(a1 + 64) = v6;
  *(a1 + 80) = v8;
  *(a1 + 96) = v10;
  *(a1 + 112) = v3;
  *a1 = v14;
  *(a1 + 16) = v13;
  v28 = *(v1 + 22);
  *(a1 + 176) = *(v1 + 22);
  *(a1 + 32) = v15;
  *(a1 + 48) = v7;
  return sub_1D99BB40C(v18, v17);
}

uint64_t VisualSearchResult.userFeedbackPayload.getter()
{
  v1 = *(v0 + 192);
  sub_1D99DF410(v1, *(v0 + 200));
  return v1;
}

uint64_t sub_1D99FC1B0()
{
  v1 = sub_1D9C7D8DC();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v47 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v45[0] = v45 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v45[1] = v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519D0, &unk_1D9C881A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v45 - v8;
  v10 = sub_1D9C7CF3C();
  v48 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v46 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519C8, &unk_1D9C93AB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v45 - v13;
  v15 = sub_1D9C7CBEC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for VisualSearchResultInternal(0);
  sub_1D99AB100(v0 + *(v19 + 24), v14, &qword_1ECB519C8, &unk_1D9C93AB0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D99A6AE0(v14, &qword_1ECB519C8, &unk_1D9C93AB0);
    v20 = v47;
    static Logger.argos.getter(v47);
    v21 = sub_1D9C7D8BC();
    v22 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D9962000, v21, v22, "VisualSearchResult.userFeedbackPayload(): userFeedbackSearchRequest was nil", v23, 2u);
      MEMORY[0x1DA7405F0](v23, -1, -1);
    }

    (*(v49 + 8))(v20, v50);
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    sub_1D99AB100(v0 + *(v19 + 28), v9, &qword_1ECB519D0, &unk_1D9C881A0);
    v24 = v18;
    if ((*(v48 + 48))(v9, 1, v10) != 1)
    {
      v29 = v48;
      v30 = v46;
      (*(v48 + 32))();
      v31 = v0[9];
      v32 = v0[7];
      v72 = v0[8];
      v73 = v31;
      v33 = v0[9];
      v74 = v0[10];
      v34 = v0[5];
      v35 = v0[3];
      v68 = v0[4];
      v69 = v34;
      v36 = v0[5];
      v37 = v0[7];
      v70 = v0[6];
      v71 = v37;
      v38 = v0[1];
      v65[0] = *v0;
      v65[1] = v38;
      v39 = v0[3];
      v41 = *v0;
      v40 = v0[1];
      v66 = v0[2];
      v67 = v39;
      v61 = v72;
      v62 = v33;
      v63 = v0[10];
      v57 = v68;
      v58 = v36;
      v59 = v70;
      v60 = v32;
      v53 = v41;
      v54 = v40;
      v75 = *(v0 + 22);
      v64 = *(v0 + 22);
      v55 = v66;
      v56 = v35;
      sub_1D99BB40C(v65, v51);
      sub_1D9C00370(&v53, v24);
      v51[8] = v61;
      v51[9] = v62;
      v51[10] = v63;
      v52 = v64;
      v51[4] = v57;
      v51[5] = v58;
      v51[6] = v59;
      v51[7] = v60;
      v51[0] = v53;
      v51[1] = v54;
      v51[2] = v55;
      v51[3] = v56;
      v43 = v42;
      sub_1D9A0009C(v51);
      (*(v29 + 8))(v30, v10);
      (*(v16 + 8))(v24, v15);
      return v43;
    }

    sub_1D99A6AE0(v9, &qword_1ECB519D0, &unk_1D9C881A0);
    v25 = v45[0];
    static Logger.argos.getter(v45[0]);
    v26 = sub_1D9C7D8BC();
    v27 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1D9962000, v26, v27, "VisualSearchResult.userFeedbackPayload(): userFeedbackParseFlowIntermediateResults was nil", v28, 2u);
      MEMORY[0x1DA7405F0](v28, -1, -1);
    }

    (*(v49 + 8))(v25, v50);
    (*(v16 + 8))(v18, v15);
  }

  return 0;
}

double VisualSearchResultInternal.toVisualSearchResult()@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 23);
  v30 = *(v1 + 22);
  v4 = v1[9];
  v27 = v1[8];
  v28 = v4;
  v29 = v1[10];
  v5 = v1[5];
  v23 = v1[4];
  v24 = v5;
  v6 = v1[7];
  v25 = v1[6];
  v26 = v6;
  v7 = v1[1];
  v19 = *v1;
  v20 = v7;
  v8 = v1[3];
  v21 = v1[2];
  v22 = v8;
  sub_1D99BB40C(&v19, v18);

  v9 = sub_1D99FC1B0();
  v10 = v28;
  *(a1 + 128) = v27;
  *(a1 + 144) = v10;
  *(a1 + 160) = v29;
  v11 = v30;
  v12 = v24;
  *(a1 + 64) = v23;
  *(a1 + 80) = v12;
  v13 = v26;
  *(a1 + 96) = v25;
  *(a1 + 112) = v13;
  v14 = v20;
  *a1 = v19;
  *(a1 + 16) = v14;
  result = *&v21;
  v16 = v22;
  *(a1 + 32) = v21;
  *(a1 + 48) = v16;
  *(a1 + 176) = v11;
  *(a1 + 184) = v3;
  *(a1 + 192) = v9;
  *(a1 + 200) = v17;
  return result;
}

Swift::String __swiftcall VisualSearchResultInternal.shortDescriptionForConsumerLogging()()
{
  sub_1D9C7E40C();

  *&v41[0] = 0x6820746C75736572;
  *(&v41[0] + 1) = 0xEB00000000207361;
  v2 = *(v0 + 184);
  *&v35 = *(v2 + 16);
  v3 = sub_1D9C7E7AC();
  MEMORY[0x1DA73DF90](v3);

  MEMORY[0x1DA73DF90](0x286E6F6967657220, 0xEA00000000002973);
  v4 = 0xEB00000000207361;
  v5 = *(v2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v29 = *(&v41[0] + 1);
    v43 = MEMORY[0x1E69E7CC0];
    sub_1D99FE164(0, v5, 0);
    v7 = v2;
    if (!*(v2 + 16))
    {
LABEL_11:
      __break(1u);
      v27 = v1[3];
      v32 = v37;
      v33 = v27;
      v34 = v39;
      v30 = v35;
      v31 = v36;
      sub_1D99FE184(&v30);

      __break(1u);
      goto LABEL_12;
    }

    v8 = 0;
    v1 = &v35;
    v6 = v43;
    v9 = (v2 + 32);
    while (1)
    {
      v41[0] = *v9;
      v10 = v9[1];
      v11 = v9[2];
      v12 = v9[3];
      v42 = *(v9 + 8);
      v41[2] = v11;
      v41[3] = v12;
      v41[1] = v10;
      v36 = v9[1];
      v37 = v9[2];
      v38 = v9[3];
      v39 = *(v9 + 8);
      v35 = *v9;
      sub_1D99D0F10(v41, &v30);
      sub_1D99FCD18(&v35, v40);
      v32 = v37;
      v33 = v38;
      v34 = v39;
      v30 = v35;
      v31 = v36;
      sub_1D99FE184(&v30);
      v14 = v40[0];
      v13 = v40[1];
      v43 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D99FE164((v15 > 1), v16 + 1, 1);
        v7 = v2;
        v6 = v43;
      }

      *(v6 + 16) = v16 + 1;
      v17 = v6 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      if (v5 - 1 == v8)
      {
        break;
      }

      v9 = (v9 + 72);
      if (++v8 >= *(v7 + 16))
      {
        goto LABEL_11;
      }
    }

    v4 = v29;
  }

  *&v41[0] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51040, &qword_1D9C87F10);
  sub_1D99A584C();
  v18 = sub_1D9C7DC0C();
  v20 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54110, &qword_1D9C9C280);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D9C85EA0;
  *(v21 + 32) = 0x6820746C75736572;
  *(v21 + 40) = v4;
  *(v21 + 48) = v18;
  *(v21 + 56) = v20;
  *&v41[0] = v21;
  v22 = sub_1D9C7DC0C();
  v24 = v23;

  v25 = v22;
  v26 = v24;
LABEL_12:
  result._object = v26;
  result._countAndFlagsBits = v25;
  return result;
}

uint64_t sub_1D99FCD18@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[5];
  MEMORY[0x1DA73DF90](a1[7], a1[8]);
  MEMORY[0x1DA73DF90](539828317, 0xE400000000000000);
  v4 = sub_1D9C7E7AC();
  MEMORY[0x1DA73DF90](v4);

  MEMORY[0x1DA73DF90](8236, 0xE200000000000000);

  MEMORY[0x1DA73DF90](540693061, 0xE400000000000000);

  if (v3 >> 62)
  {
    sub_1D9C7E50C();
  }

  v5 = sub_1D9C7E7AC();
  MEMORY[0x1DA73DF90](v5);

  MEMORY[0x1DA73DF90](8236, 0xE200000000000000);

  MEMORY[0x1DA73DF90](540693330, 0xE400000000000000);

  v6 = sub_1D9C7E7AC();
  MEMORY[0x1DA73DF90](v6);

  MEMORY[0x1DA73DF90](41, 0xE100000000000000);

  MEMORY[0x1DA73DF90](540690770, 0xE400000000000000);

  *a2 = v8;
  a2[1] = 0xE200000000000000;
  return result;
}

uint64_t RegionSearchResult.ResultItem.caption.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

double RegionSearchResult.ResultItem.ontology.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1D99FE1B4(v2, v3, v4, v5);
}

uint64_t sub_1D99FD01C()
{
  v1 = *v0;
  v2 = 0x6E69616D6F64;
  v3 = 0x79676F6C6F746E6FLL;
  v4 = 0x6764656C776F6E6BLL;
  if (v1 != 3)
  {
    v4 = 0x6E656469666E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F6974706163;
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

uint64_t sub_1D99FD0BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D99FF978(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D99FD0F0(uint64_t a1)
{
  v2 = sub_1D99FEE88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D99FD12C(uint64_t a1)
{
  v2 = sub_1D99FEE88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RegionSearchResult.ResultItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51998, &qword_1D9C87F18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D99FEE88();
  sub_1D9C7E96C();
  LOBYTE(v14) = *v3;
  v18 = 0;
  sub_1D99FEEDC();
  sub_1D9C7E74C();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1D9C7E6EC();
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    v11 = *(v3 + 48);
    v14 = *(v3 + 24);
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v18 = 2;
    sub_1D99FE1B4(v14, v9, v10, v11);
    sub_1D99FEF30();
    sub_1D9C7E6DC();
    sub_1D99FEF84(v14, v15, v16, v17);
    type metadata accessor for RegionSearchResult.ResultItem(0);
    LOBYTE(v14) = 3;
    type metadata accessor for ObjectKnowledge(0);
    sub_1D99FF0D4(&qword_1ECB519A8, type metadata accessor for ObjectKnowledge, &protocol conformance descriptor for ObjectKnowledge);
    sub_1D9C7E6DC();
    LOBYTE(v14) = 4;
    sub_1D9C7E71C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RegionSearchResult.ResultItem.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for ObjectKnowledge(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51510, &qword_1D9C86540);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  sub_1D9A15C94(*v1);
  sub_1D9C7DD6C();

  sub_1D9C7DD6C();
  if (*(v1 + 32))
  {
    v13 = v4;
    sub_1D9C7E8FC();
    sub_1D9C7DD6C();
    v4 = v13;
    sub_1D9C7DD6C();
  }

  else
  {
    sub_1D9C7E8FC();
  }

  v10 = type metadata accessor for RegionSearchResult.ResultItem(0);
  sub_1D99AB100(v1 + *(v10 + 28), v9, &qword_1ECB51510, &qword_1D9C86540);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1D9C7E8FC();
  }

  else
  {
    sub_1D99FEFC8(v9, v6);
    sub_1D9C7E8FC();
    ObjectKnowledge.hash(into:)(a1);
    sub_1D99FF1F0(v6, type metadata accessor for ObjectKnowledge);
  }

  return sub_1D9C7E91C();
}

uint64_t RegionSearchResult.ResultItem.hashValue.getter()
{
  sub_1D9C7E8DC();
  RegionSearchResult.ResultItem.hash(into:)(v1);
  return sub_1D9C7E93C();
}

void RegionSearchResult.ResultItem.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51510, &qword_1D9C86540);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519B0, &qword_1D9C87F20);
  v7 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v20 - v8;
  v10 = type metadata accessor for RegionSearchResult.ResultItem(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v23 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D99FEE88();
  sub_1D9C7E95C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

  else
  {
    v20 = v6;
    v14 = v12;
    v26 = 0;
    sub_1D99FF02C();
    v15 = v22;
    sub_1D9C7E65C();
    *v14 = v24;
    LOBYTE(v24) = 1;
    *(v14 + 8) = sub_1D9C7E5FC();
    *(v14 + 16) = v16;
    v26 = 2;
    sub_1D99FF080();
    sub_1D9C7E5EC();
    v17 = v25;
    *(v14 + 24) = v24;
    *(v14 + 40) = v17;
    type metadata accessor for ObjectKnowledge(0);
    LOBYTE(v24) = 3;
    sub_1D99FF0D4(&qword_1ECB519B8, type metadata accessor for ObjectKnowledge, &protocol conformance descriptor for ObjectKnowledge);
    sub_1D9C7E5EC();
    sub_1D99FF11C(v20, v14 + *(v10 + 28));
    LOBYTE(v24) = 4;
    sub_1D9C7E62C();
    v19 = v18;
    (*(v7 + 8))(v9, v15);
    *(v14 + *(v10 + 32)) = v19;
    sub_1D99FF18C(v14, v21);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    sub_1D99FF1F0(v14, type metadata accessor for RegionSearchResult.ResultItem);
  }
}

uint64_t sub_1D99FDB30()
{
  sub_1D9C7E8DC();
  RegionSearchResult.ResultItem.hash(into:)(v1);
  return sub_1D9C7E93C();
}

uint64_t sub_1D99FDB74()
{
  sub_1D9C7E8DC();
  RegionSearchResult.ResultItem.hash(into:)(v1);
  return sub_1D9C7E93C();
}

__n128 RegionSearchResult.boundingBox.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

uint64_t RegionSearchResult.glyphName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1D99FDC04(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519F8, &unk_1D9C884D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D99FFB34();
  sub_1D9C7E96C();
  LOBYTE(v13) = 0;
  sub_1D9C7E6EC();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v13) = 1;
  sub_1D9C7E6BC();
  LOBYTE(v13) = 2;
  sub_1D9C7E6BC();
  v13 = *(v3 + 48);
  v14 = v13;
  v12[23] = 3;
  sub_1D99AB100(&v14, v12, &qword_1ECB534E0, &qword_1D9C95700);
  sub_1D99DF2FC();
  sub_1D9C7E6DC();
  v9 = sub_1D99B3C44(v13, *(&v13 + 1));
  return (*(v6 + 8))(v8, v5, v9);
}

uint64_t sub_1D99FDE2C(uint64_t a1)
{
  sub_1D9C7DD6C();
  if (v1[3])
  {
    sub_1D9C7E8FC();
    sub_1D9C7DD6C();
    if (v1[5])
    {
LABEL_3:
      sub_1D9C7E8FC();
      sub_1D9C7DD6C();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D9C7E8FC();
    if (v1[5])
    {
      goto LABEL_3;
    }
  }

  sub_1D9C7E8FC();
LABEL_6:
  if (v1[7] >> 60 == 15)
  {
    return sub_1D9C7E8FC();
  }

  sub_1D9C7E8FC();

  return sub_1D9C7B88C();
}

unint64_t sub_1D99FDF14()
{
  v1 = 0x4C52556567616D69;
  v2 = 0x69616E626D756874;
  if (*v0 != 2)
  {
    v2 = 0x617461646174656DLL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_1D99FDF9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D99FFB88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D99FDFC4(uint64_t a1)
{
  v2 = sub_1D99FFB34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D99FE000(uint64_t a1)
{
  v2 = sub_1D99FFB34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D99FE03C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D99FFCFC(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

BOOL sub_1D99FE098(_OWORD *a1, _OWORD *a2)
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
  return sub_1D99FE618(v7, v8);
}

uint64_t sub_1D99FE0E4()
{
  sub_1D9C7E8DC();
  sub_1D99FDE2C(v1);
  return sub_1D9C7E93C();
}

uint64_t sub_1D99FE128()
{
  sub_1D9C7E8DC();
  sub_1D99FDE2C(v1);
  return sub_1D9C7E93C();
}

char *sub_1D99FE164(char *a1, int64_t a2, char a3)
{
  result = sub_1D99E6B18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double sub_1D99FE1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

char *sub_1D99FE218(char *a1, int64_t a2, char a3)
{
  result = sub_1D99E6C38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D99FE238(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E6D3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D99FE258(char *a1, int64_t a2, char a3)
{
  result = sub_1D99E6D8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D99FE278(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E6E98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D99FE298(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E6EB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D99FE2B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E6D64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D99FE2D8(char *a1, int64_t a2, char a3)
{
  result = sub_1D99E6ED8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D99FE2F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E6FF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D99FE318(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E7160(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D99FE338(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E73B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D99FE358(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E73DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D99FE378(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E7404(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D99FE398(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E742C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D99FE3B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E7454(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D99FE3D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E747C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D99FE3F8(void *a1, int64_t a2, char a3)
{
  result = sub_1D99E74A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D99FE418(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E6C24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D99FE438(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E76EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D99FE458(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E7818(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D99FE478(char *a1, int64_t a2, char a3)
{
  result = sub_1D99E7834(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D99FE498(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E7938(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D99FE4B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E795C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D99FE4D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E7980(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D99FE4F8(char *a1, int64_t a2, char a3)
{
  result = sub_1D99E7AD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D99FE518(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E7E38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D99FE538(char *a1, int64_t a2, char a3)
{
  result = sub_1D99E7F70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D99FE558(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E807C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D99FE578(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E80A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D99FE598(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E81EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D99FE5B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E8214(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D99FE5D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E8358(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D99FE5F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D99E8380(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

BOOL sub_1D99FE618(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_1D9C7E7DC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = *(a2 + 40);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!v9 || (a1[4] != *(a2 + 32) || v8 != v9) && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v10 = *(a1 + 3);
  v16 = *(a2 + 48);
  v17 = v10;
  v11 = v10;
  v12 = v16;
  if (*(&v10 + 1) >> 60 == 15)
  {
    if (*(&v16 + 1) >> 60 == 15)
    {
      sub_1D99AB100(&v17, v15, &qword_1ECB534E0, &qword_1D9C95700);
      sub_1D99AB100(&v16, v15, &qword_1ECB534E0, &qword_1D9C95700);
      sub_1D99B3C44(v11, *(&v11 + 1));
      return 1;
    }

    goto LABEL_26;
  }

  if (*(&v16 + 1) >> 60 == 15)
  {
LABEL_26:
    sub_1D99AB100(&v17, v15, &qword_1ECB534E0, &qword_1D9C95700);
    sub_1D99AB100(&v16, v15, &qword_1ECB534E0, &qword_1D9C95700);
    sub_1D99B3C44(v11, *(&v11 + 1));
    sub_1D99B3C44(v12, *(&v12 + 1));
    return 0;
  }

  sub_1D99AB100(&v17, v15, &qword_1ECB534E0, &qword_1D9C95700);
  sub_1D99AB100(&v16, v15, &qword_1ECB534E0, &qword_1D9C95700);
  v14 = sub_1D99FBD74(v11, *(&v11 + 1), v12, *(&v12 + 1));
  sub_1D99B3C44(v12, *(&v12 + 1));
  sub_1D99B3C44(v11, *(&v11 + 1));
  return v14;
}

BOOL _s12VisualLookUp18RegionSearchResultV0F4ItemV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ObjectKnowledge(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51510, &qword_1D9C86540);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42[-v9];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51A10, &qword_1D9C884E8);
  MEMORY[0x1EEE9AC00](v49);
  v12 = &v42[-v11];
  v13 = *a2;
  v14 = sub_1D9A15C94(*a1);
  v16 = v15;
  if (v14 == sub_1D9A15C94(v13) && v16 == v17)
  {
  }

  else
  {
    v18 = sub_1D9C7E7DC();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if ((a1[1] != a2[1] || a1[2] != a2[2]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  v45 = v10;
  v46 = v5;
  v47 = v4;
  v48 = v12;
  v44 = v7;
  v20 = a1[3];
  v19 = a1[4];
  v22 = a1[5];
  v21 = a1[6];
  v24 = a2[3];
  v23 = a2[4];
  v25 = a2[5];
  v26 = a2[6];
  if (!v19)
  {
    sub_1D99FE1B4(a1[3], 0, a1[5], a1[6]);
    if (!v23)
    {
      sub_1D99FE1B4(v24, 0, v25, v26);
      v19 = 0;
      goto LABEL_24;
    }

    sub_1D99FE1B4(v24, v23, v25, v26);
    goto LABEL_19;
  }

  if (!v23)
  {
    sub_1D99FE1B4(a1[3], a1[4], a1[5], a1[6]);
    sub_1D99FE1B4(v24, 0, v25, v26);
    sub_1D99FE1B4(v20, v19, v22, v21);

LABEL_19:
    sub_1D99FEF84(v20, v19, v22, v21);
    v27 = v24;
    v28 = v23;
    v29 = v25;
    v30 = v26;
LABEL_20:
    sub_1D99FEF84(v27, v28, v29, v30);
    return 0;
  }

  if ((v20 != v24 || v19 != v23) && (sub_1D9C7E7DC() & 1) == 0)
  {
    sub_1D99FE1B4(v20, v19, v22, v21);
    sub_1D99FE1B4(v24, v23, v25, v26);
    sub_1D99FE1B4(v20, v19, v22, v21);
    sub_1D99FEF84(v24, v23, v25, v26);

    v27 = v20;
    v28 = v19;
    v29 = v22;
    v30 = v21;
    goto LABEL_20;
  }

  if (v22 != v25 || v21 != v26)
  {
    v43 = sub_1D9C7E7DC();
    sub_1D99FE1B4(v20, v19, v22, v21);
    sub_1D99FE1B4(v24, v23, v25, v26);
    sub_1D99FE1B4(v20, v19, v22, v21);
    sub_1D99FEF84(v24, v23, v25, v26);

    sub_1D99FEF84(v20, v19, v22, v21);
    if ((v43 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_25;
  }

  sub_1D99FE1B4(v20, v19, v22, v21);
  sub_1D99FE1B4(v24, v23, v22, v21);
  sub_1D99FE1B4(v20, v19, v22, v21);
  sub_1D99FEF84(v24, v23, v22, v21);

LABEL_24:
  sub_1D99FEF84(v20, v19, v22, v21);
LABEL_25:
  v31 = type metadata accessor for RegionSearchResult.ResultItem(0);
  v32 = *(v31 + 28);
  v33 = v48;
  v34 = *(v49 + 48);
  sub_1D99AB100(a1 + v32, v48, &qword_1ECB51510, &qword_1D9C86540);
  sub_1D99AB100(a2 + v32, v33 + v34, &qword_1ECB51510, &qword_1D9C86540);
  v35 = v47;
  v36 = *(v46 + 48);
  if (v36(v33, 1, v47) == 1)
  {
    if (v36(v33 + v34, 1, v35) == 1)
    {
      sub_1D99A6AE0(v33, &qword_1ECB51510, &qword_1D9C86540);
      return *(a1 + *(v31 + 32)) == *(a2 + *(v31 + 32));
    }

    goto LABEL_30;
  }

  v37 = v45;
  sub_1D99AB100(v33, v45, &qword_1ECB51510, &qword_1D9C86540);
  if (v36(v33 + v34, 1, v35) == 1)
  {
    sub_1D99FF1F0(v37, type metadata accessor for ObjectKnowledge);
LABEL_30:
    sub_1D99A6AE0(v33, &qword_1ECB51A10, &qword_1D9C884E8);
    return 0;
  }

  v39 = v33 + v34;
  v40 = v44;
  sub_1D99FEFC8(v39, v44);
  v41 = static ObjectKnowledge.== infix(_:_:)(v37, v40);
  sub_1D99FF1F0(v40, type metadata accessor for ObjectKnowledge);
  sub_1D99FF1F0(v37, type metadata accessor for ObjectKnowledge);
  sub_1D99A6AE0(v33, &qword_1ECB51510, &qword_1D9C86540);
  if (v41)
  {
    return *(a1 + *(v31 + 32)) == *(a2 + *(v31 + 32));
  }

  return 0;
}

unint64_t sub_1D99FEE88()
{
  result = qword_1ECB519A0;
  if (!qword_1ECB519A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB519A0);
  }

  return result;
}

unint64_t sub_1D99FEEDC()
{
  result = qword_1EDD2C0F0;
  if (!qword_1EDD2C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C0F0);
  }

  return result;
}

unint64_t sub_1D99FEF30()
{
  result = qword_1EDD2C0C0;
  if (!qword_1EDD2C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C0C0);
  }

  return result;
}

void sub_1D99FEF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_1D99FEFC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObjectKnowledge(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D99FF02C()
{
  result = qword_1EDD2C0E0;
  if (!qword_1EDD2C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C0E0);
  }

  return result;
}

unint64_t sub_1D99FF080()
{
  result = qword_1EDD2C0B0;
  if (!qword_1EDD2C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C0B0);
  }

  return result;
}

uint64_t sub_1D99FF0D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D99FF11C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51510, &qword_1D9C86540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99FF18C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegionSearchResult.ResultItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99FF1F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_12VisualLookUp13EmbeddingInfoVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_1D99FF2EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_1D99FF334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D99FF400(uint64_t a1)
{
  sub_1D99FF6BC(319, &qword_1EDD2A750, &type metadata for RegionSearchResult, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D99FF70C(319, &qword_1EDD2C2F0, MEMORY[0x1E69BD720]);
    if (v2 <= 0x3F)
    {
      sub_1D99FF70C(319, &qword_1EDD2C2E8, MEMORY[0x1E69BD9D0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D99FF508(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1D99FF550(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_1D99FF5D8(uint64_t a1)
{
  sub_1D99FF6BC(319, &unk_1EDD2C0A0, &type metadata for OntologyNode, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D99FF70C(319, qword_1EDD2BB38, type metadata accessor for ObjectKnowledge);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D99FF6BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D99FF70C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D9C7E27C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D99FF760(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1D99FF7A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D99FF81C()
{
  result = qword_1ECB519D8;
  if (!qword_1ECB519D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB519D8);
  }

  return result;
}

unint64_t sub_1D99FF874()
{
  result = qword_1ECB519E0;
  if (!qword_1ECB519E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB519E0);
  }

  return result;
}

unint64_t sub_1D99FF8CC()
{
  result = qword_1ECB519E8;
  if (!qword_1ECB519E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB519E8);
  }

  return result;
}

unint64_t sub_1D99FF924()
{
  result = qword_1ECB519F0;
  if (!qword_1ECB519F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB519F0);
  }

  return result;
}

uint64_t sub_1D99FF978(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79676F6C6F746E6FLL && a2 == 0xE800000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6764656C776F6E6BLL && a2 == 0xE900000000000065 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9C7E7DC();

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

unint64_t sub_1D99FFB34()
{
  result = qword_1ECB51A00;
  if (!qword_1ECB51A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51A00);
  }

  return result;
}

uint64_t sub_1D99FFB88(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D9CA55B0 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C52556567616D69 && a2 == 0xE800000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xEC0000004C52556CLL || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D9C7E7DC();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_1D99FFCFC(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51A08, &qword_1D9C884E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D99FFB34();
  sub_1D9C7E95C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    LOBYTE(v32[0]) = 0;
    v9 = sub_1D9C7E5FC();
    v27 = v10;
    LOBYTE(v32[0]) = 1;
    v11 = sub_1D9C7E5AC();
    v26 = v12;
    v24 = v11;
    LOBYTE(v32[0]) = 2;
    v23 = sub_1D9C7E5AC();
    v25 = v13;
    v34 = 3;
    sub_1D99DF350();
    sub_1D9C7E5EC();
    (*(v6 + 8))(v8, v5);
    v21 = *(&v33 + 1);
    v22 = v33;
    v15 = v26;
    v14 = v27;
    *&v28 = v9;
    *(&v28 + 1) = v27;
    v16 = v24;
    *&v29 = v24;
    *(&v29 + 1) = v26;
    v17 = v23;
    v18 = v25;
    *&v30 = v23;
    *(&v30 + 1) = v25;
    v31 = v33;
    sub_1D9A00034(&v28, v32);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v32[0] = v9;
    v32[1] = v14;
    v32[2] = v16;
    v32[3] = v15;
    v32[4] = v17;
    v32[5] = v18;
    v32[6] = v22;
    v32[7] = v21;
    sub_1D9A0006C(v32);
    v19 = v29;
    *a2 = v28;
    a2[1] = v19;
    v20 = v31;
    a2[2] = v30;
    a2[3] = v20;
  }
}

unint64_t sub_1D9A00104()
{
  result = qword_1ECB51A18;
  if (!qword_1ECB51A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51A18);
  }

  return result;
}

unint64_t sub_1D9A0015C()
{
  result = qword_1ECB51A20;
  if (!qword_1ECB51A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51A20);
  }

  return result;
}

unint64_t sub_1D9A001B4()
{
  result = qword_1ECB51A28;
  if (!qword_1ECB51A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51A28);
  }

  return result;
}

uint64_t sub_1D9A00250(uint64_t a1)
{
  result = sub_1D9C7D3CC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9A00314(uint64_t a1)
{
  sub_1D9A00650(319, &qword_1EDD2C620, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig);
  if (v1 <= 0x3F)
  {
    sub_1D9A003F4();
    if (v2 <= 0x3F)
    {
      sub_1D9C7D3CC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9A003F4()
{
  if (!qword_1EDD2C4C0)
  {
    v0 = sub_1D9C7DF8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD2C4C0);
    }
  }
}

uint64_t sub_1D9A0046C(uint64_t a1)
{
  result = sub_1D9C7D3CC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9A00538(uint64_t a1)
{
  sub_1D9A00650(319, &qword_1EDD2C628, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig);
  if (v1 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v2 <= 0x3F)
    {
      sub_1D9A006D4(319, qword_1EDD2F188, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
      if (v3 <= 0x3F)
      {
        sub_1D9A006D4(319, qword_1EDD2F0D8, type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D9A00650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D9C7DBAC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D9A006D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D9C7E27C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D9A00750(uint64_t a1)
{
  result = sub_1D9C7D3CC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D9A007D8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1D99ED894(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1D9C7E7DC();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9A0097C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 4 * v12);

    v17 = sub_1D99ED894(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1D9A00AB0(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
  v61 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v62 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v53 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AB8, &qword_1D9C88E18);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v53 - v14);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v16 = 0;
    v17 = *(a1 + 64);
    v54 = a1 + 64;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    v55 = v21;
    v56 = (&v53 - v14);
    v57 = a2;
    while (v20)
    {
      v60 = (v20 - 1) & v20;
      v24 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_17:
      v29 = (*(a1 + 48) + 16 * v24);
      v30 = *v29;
      v31 = v29[1];
      v32 = v59;
      sub_1D9A068B8(*(a1 + 56) + *(v61 + 72) * v24, v59, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AC0, &unk_1D9C88E20);
      v34 = *(v33 + 48);
      *v12 = v30;
      v12[1] = v31;
      sub_1D9A05E98(v32, v12 + v34, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
      (*(*(v33 - 8) + 56))(v12, 0, 1, v33);

LABEL_18:
      sub_1D99B1C20(v12, v15, &qword_1ECB51AB8, &qword_1D9C88E18);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AC0, &unk_1D9C88E20);
      if ((*(*(v35 - 8) + 48))(v15, 1, v35) == 1)
      {
        return;
      }

      v36 = *(v35 + 48);
      v38 = *v15;
      v37 = v15[1];
      sub_1D9A05E98(v15 + v36, v7, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
      v39 = v57;
      v40 = sub_1D99ED894(v38, v37);
      v42 = v41;

      if ((v42 & 1) == 0)
      {
        goto LABEL_34;
      }

      v43 = *(v39 + 56);
      v44 = v62;
      sub_1D9A068B8(v43 + *(v61 + 72) * v40, v62, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
      v45 = *v44;
      v46 = v7;
      v47 = *v7;
      v48 = *(*v44 + 16);
      if (v48 != *(*v7 + 16))
      {
        goto LABEL_33;
      }

      if (v48 && v45 != v47)
      {
        v49 = (v45 + 40);
        v50 = (v47 + 40);
        while (1)
        {
          v51 = *(v49 - 1) == *(v50 - 1) && *v49 == *v50;
          if (!v51 && (sub_1D9C7E7DC() & 1) == 0)
          {
            break;
          }

          v49 += 2;
          v50 += 2;
          if (!--v48)
          {
            goto LABEL_6;
          }
        }

LABEL_33:
        sub_1D9A05F00(v62, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
        v7 = v46;
LABEL_34:
        sub_1D9A05F00(v7, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
        return;
      }

LABEL_6:
      sub_1D9C7D3CC();
      sub_1D9A05940(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v22 = v62;
      v7 = v46;
      v23 = sub_1D9C7DC2C();
      sub_1D9A05F00(v22, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
      sub_1D9A05F00(v7, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
      v21 = v55;
      v15 = v56;
      v20 = v60;
      if ((v23 & 1) == 0)
      {
        return;
      }
    }

    if (v21 <= v16 + 1)
    {
      v25 = v16 + 1;
    }

    else
    {
      v25 = v21;
    }

    v26 = v25 - 1;
    while (1)
    {
      v27 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v27 >= v21)
      {
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AC0, &unk_1D9C88E20);
        (*(*(v52 - 8) + 56))(v12, 1, 1, v52);
        v60 = 0;
        v16 = v26;
        goto LABEL_18;
      }

      v28 = *(v54 + 8 * v27);
      ++v16;
      if (v28)
      {
        v60 = (v28 - 1) & v28;
        v24 = __clz(__rbit64(v28)) | (v27 << 6);
        v16 = v27;
        goto LABEL_17;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D9A01074(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 4 * v12);

    v17 = sub_1D99ED894(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1D9A011B0(uint64_t a1, uint64_t a2)
{
  v56 = type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig(0);
  v4 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v51 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51A78, &qword_1D9C88DF8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v57 = a2;
  if (a1 != a2 && *(a1 + 16) == *(v57 + 16))
  {
    v52 = a1;
    v53 = &v51 - v14;
    v55 = v15;
    v16 = 0;
    v17 = *(a1 + 64);
    v51 = a1 + 64;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    while (v20)
    {
      v58 = (v20 - 1) & v20;
      v22 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
      v28 = (*(v52 + 48) + 16 * v22);
      v30 = *v28;
      v29 = v28[1];
      v31 = v54;
      sub_1D9A068B8(*(v52 + 56) + *(v4 + 72) * v22, v54, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51A80, &qword_1D9C88E00);
      v33 = *(v32 + 48);
      v34 = v55;
      *v55 = v30;
      v34[1] = v29;
      v35 = v31;
      v25 = v34;
      sub_1D9A05E98(v35, v34 + v33, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig);
      (*(*(v32 - 8) + 56))(v25, 0, 1, v32);

LABEL_17:
      v36 = v25;
      v37 = v53;
      sub_1D99B1C20(v36, v53, &qword_1ECB51A78, &qword_1D9C88DF8);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51A80, &qword_1D9C88E00);
      if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
      {
        return;
      }

      v39 = v37;
      v40 = v6;
      v41 = *(v38 + 48);
      v42 = *v39;
      v43 = v39[1];
      sub_1D9A05E98(v39 + v41, v9, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig);
      v44 = v42;
      v45 = v57;
      v46 = sub_1D99ED894(v44, v43);
      v48 = v47;

      if ((v48 & 1) == 0)
      {
        goto LABEL_26;
      }

      v6 = v40;
      sub_1D9A068B8(*(v45 + 56) + *(v4 + 72) * v46, v40, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig);
      if (*v40 != *v9 || *(v40 + 4) != v9[4])
      {
        sub_1D9A05F00(v40, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig);
LABEL_26:
        sub_1D9A05F00(v9, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig);
        return;
      }

      sub_1D9C7D3CC();
      sub_1D9A05940(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v49 = sub_1D9C7DC2C();
      sub_1D9A05F00(v40, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig);
      sub_1D9A05F00(v9, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig);
      v20 = v58;
      if ((v49 & 1) == 0)
      {
        return;
      }
    }

    if (v21 <= v16 + 1)
    {
      v23 = v16 + 1;
    }

    else
    {
      v23 = v21;
    }

    v24 = v23 - 1;
    v25 = v55;
    while (1)
    {
      v26 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v26 >= v21)
      {
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51A80, &qword_1D9C88E00);
        (*(*(v50 - 8) + 56))(v25, 1, 1, v50);
        v58 = 0;
        v16 = v24;
        goto LABEL_17;
      }

      v27 = *(v51 + 8 * v26);
      ++v16;
      if (v27)
      {
        v58 = (v27 - 1) & v27;
        v22 = __clz(__rbit64(v27)) | (v26 << 6);
        v16 = v26;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_1D9A01720(uint64_t a1, uint64_t a2)
{
  v56 = type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig(0);
  v4 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v6 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v51 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51A88, &qword_1D9C88E08);
  MEMORY[0x1EEE9AC00](v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v58 = a2;
  if (a1 != a2 && *(a1 + 16) == *(v58 + 16))
  {
    v53 = &v51 - v14;
    v54 = v15;
    v16 = 0;
    v52 = a1;
    v17 = *(a1 + 64);
    v51 = a1 + 64;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    while (v20)
    {
      v57 = (v20 - 1) & v20;
      v22 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
      v28 = (*(v52 + 48) + 16 * v22);
      v30 = *v28;
      v29 = v28[1];
      v31 = v55;
      sub_1D9A068B8(*(v52 + 56) + *(v4 + 72) * v22, v55, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51A90, &qword_1D9C88E10);
      v33 = *(v32 + 48);
      v34 = v54;
      *v54 = v30;
      v34[1] = v29;
      v35 = v31;
      v25 = v34;
      sub_1D9A05E98(v35, v34 + v33, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig);
      (*(*(v32 - 8) + 56))(v25, 0, 1, v32);

LABEL_17:
      v36 = v25;
      v37 = v53;
      sub_1D99B1C20(v36, v53, &qword_1ECB51A88, &qword_1D9C88E08);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51A90, &qword_1D9C88E10);
      if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
      {
        return;
      }

      v39 = v37;
      v40 = v6;
      v41 = *(v38 + 48);
      v42 = *v39;
      v43 = v39[1];
      sub_1D9A05E98(v39 + v41, v9, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig);
      v44 = v42;
      v45 = v58;
      v46 = sub_1D99ED894(v44, v43);
      v48 = v47;

      if ((v48 & 1) == 0)
      {
        goto LABEL_28;
      }

      v6 = v40;
      sub_1D9A068B8(*(v45 + 56) + *(v4 + 72) * v46, v40, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig);
      if (*v40 != *v9 || *(v40 + 1) != *(v9 + 1) || *(v40 + 2) != *(v9 + 2) || v40[1] != v9[1])
      {
        sub_1D9A05F00(v40, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig);
LABEL_28:
        sub_1D9A05F00(v9, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig);
        return;
      }

      sub_1D9C7D3CC();
      sub_1D9A05940(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v49 = sub_1D9C7DC2C();
      sub_1D9A05F00(v40, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig);
      sub_1D9A05F00(v9, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig);
      v20 = v57;
      if ((v49 & 1) == 0)
      {
        return;
      }
    }

    if (v21 <= v16 + 1)
    {
      v23 = v16 + 1;
    }

    else
    {
      v23 = v21;
    }

    v24 = v23 - 1;
    v25 = v54;
    while (1)
    {
      v26 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v26 >= v21)
      {
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51A90, &qword_1D9C88E10);
        (*(*(v50 - 8) + 56))(v25, 1, 1, v50);
        v57 = 0;
        v16 = v24;
        goto LABEL_17;
      }

      v27 = *(v51 + 8 * v26);
      ++v16;
      if (v27)
      {
        v57 = (v27 - 1) & v27;
        v22 = __clz(__rbit64(v27)) | (v26 << 6);
        v16 = v26;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D9A01CB0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v25 = (v7 - 1) & v7;
LABEL_16:
    v13 = 16 * (v10 | (v3 << 6));
    v14 = result;
    v15 = (*(result + 48) + v13);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(result + 56) + v13;
    v19 = *v18;
    v20 = *(v18 + 8);

    v21 = sub_1D99ED894(v16, v17);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      return 0;
    }

    v24 = *(*(a2 + 56) + 16 * v21);
    if (v20)
    {
      if (v19 > 1)
      {
        if (v19 == 2)
        {
          v9 = v24 == 2;
        }

        else
        {
          v9 = v24 == 3;
        }

        goto LABEL_7;
      }

      if (v19)
      {
        v9 = v24 == 1;
        goto LABEL_7;
      }

      result = v14;
      v7 = v25;
      if (v24)
      {
        return 0;
      }
    }

    else
    {
      v9 = v24 == v19;
LABEL_7:
      result = v14;
      v7 = v25;
      if (!v9)
      {
        return 0;
      }
    }
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v25 = (v12 - 1) & v12;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_1D9A01E50(uint64_t a1, uint64_t a2)
{
  v57 = sub_1D9C7B98C();
  v52 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v53 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v50 = v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB513B8, &unk_1D9C862B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v51 = v47 - v9;
    v12 = 0;
    v48 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v19 = (v16 + 63) >> 6;
    v47[0] = v14;
    v47[1] = v52 + 16;
    v54 = v10;
    v55 = (v52 + 32);
    v49 = (v52 + 8);
    while (v18)
    {
      v56 = (v18 - 1) & v18;
      v20 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_17:
      v26 = v48;
      v27 = v52;
      (*(v52 + 16))(v50, *(v48 + 48) + *(v52 + 72) * v20, v57, v11);
      v28 = (*(v26 + 56) + 16 * v20);
      v30 = *v28;
      v29 = v28[1];
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB513C0, &qword_1D9C88E50);
      v32 = (v54 + *(v31 + 48));
      v23 = v54;
      (*(v27 + 32))();
      *v32 = v30;
      v32[1] = v29;
      (*(*(v31 - 8) + 56))(v23, 0, 1, v31);

LABEL_18:
      v33 = v51;
      sub_1D99B1C20(v23, v51, &qword_1ECB513B8, &unk_1D9C862B0);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB513C0, &qword_1D9C88E50);
      if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
      {
        return;
      }

      v35 = (v33 + *(v34 + 48));
      v36 = v53;
      v37 = v57;
      (*v55)(v53, v33, v57);
      v38 = *v35;
      v39 = v35[1];
      v40 = sub_1D99EDF30(v36);
      v42 = v41;
      (*v49)(v36, v37);
      if ((v42 & 1) == 0)
      {

        return;
      }

      v43 = (*(a2 + 56) + 16 * v40);
      if (*v43 == v38 && v43[1] == v39)
      {

        v18 = v56;
      }

      else
      {
        v45 = sub_1D9C7E7DC();

        v18 = v56;
        if ((v45 & 1) == 0)
        {
          return;
        }
      }
    }

    if (v19 <= v12 + 1)
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21 - 1;
    v23 = v54;
    while (1)
    {
      v24 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v24 >= v19)
      {
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB513C0, &qword_1D9C88E50);
        (*(*(v46 - 8) + 56))(v23, 1, 1, v46);
        v56 = 0;
        v12 = v22;
        goto LABEL_18;
      }

      v25 = *(v47[0] + 8 * v24);
      ++v12;
      if (v25)
      {
        v56 = (v25 - 1) & v25;
        v20 = __clz(__rbit64(v25)) | (v24 << 6);
        v12 = v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }
}

void sub_1D9A02310(uint64_t a1, uint64_t a2)
{
  v54 = sub_1D9C7B98C();
  v49 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v50 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB513A8, &unk_1D9C862A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v51 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v47 = v44 - v10;
    v12 = 0;
    v45 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v19 = (v16 + 63) >> 6;
    v44[0] = v14;
    v44[1] = v49 + 16;
    v52 = (v49 + 32);
    v46 = (v49 + 8);
    while (v18)
    {
      v53 = (v18 - 1) & v18;
      v20 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_16:
      v25 = v45;
      v26 = v48;
      v27 = v49;
      v28 = v54;
      (*(v49 + 16))(v48, *(v45 + 48) + *(v49 + 72) * v20, v54, v11);
      v29 = *(*(v25 + 56) + 8 * v20);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB513B0, &unk_1D9C88E40);
      v31 = *(v30 + 48);
      v32 = *(v27 + 32);
      v33 = v51;
      v32(v51, v26, v28);
      *(v33 + v31) = v29;
      (*(*(v30 - 8) + 56))(v33, 0, 1, v30);

LABEL_17:
      v34 = v47;
      sub_1D99B1C20(v33, v47, &qword_1ECB513A8, &unk_1D9C862A0);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB513B0, &unk_1D9C88E40);
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
      {
        return;
      }

      v36 = *(v35 + 48);
      v37 = v50;
      v38 = v54;
      (*v52)(v50, v34, v54);
      v39 = *(v34 + v36);
      sub_1D99EDF30(v37);
      LOBYTE(v36) = v40;
      (*v46)(v37, v38);
      if ((v36 & 1) == 0)
      {

        return;
      }

      v42 = sub_1D99E61B0(v41, v39);

      v18 = v53;
      if ((v42 & 1) == 0)
      {
        return;
      }
    }

    if (v19 <= v12 + 1)
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21 - 1;
    while (1)
    {
      v23 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v23 >= v19)
      {
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB513B0, &unk_1D9C88E40);
        v33 = v51;
        (*(*(v43 - 8) + 56))(v51, 1, 1, v43);
        v53 = 0;
        v12 = v22;
        goto LABEL_17;
      }

      v24 = *(v44[0] + 8 * v23);
      ++v12;
      if (v24)
      {
        v53 = (v24 - 1) & v24;
        v20 = __clz(__rbit64(v24)) | (v23 << 6);
        v12 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D9A0279C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = (*(v2 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v2 + 56) + 8 * v11);

    sub_1D99ED894(v13, v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v19 = sub_1D9A007D8(v18, v15);

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1D9A02904(uint64_t a1, uint64_t a2, double a3)
{
  v68 = type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig(0);
  v71 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v72 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v63 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AC8, &unk_1D9C93D60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v63 - v15);
  if (a1 == a2)
  {
    v69 = 1;
  }

  else if (*(a1 + 16) == *(a2 + 16))
  {
    v65 = a1;
    v66 = a2;
    v17 = 0;
    v20 = *(a1 + 64);
    v19 = a1 + 64;
    v18 = v20;
    v21 = 1 << *(v19 - 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v18;
    v63 = (v21 + 63) >> 6;
    v64 = v19;
    v24 = &qword_1ECB51AD0;
    v25 = &unk_1D9C88E30;
    v70 = (&v63 - v15);
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v29 = (v23 - 1) & v23;
      v30 = v28 | (v17 << 6);
LABEL_17:
      v35 = (*(v65 + 48) + 16 * v30);
      v37 = *v35;
      v36 = v35[1];
      v38 = v67;
      sub_1D9A068B8(*(v65 + 56) + *(v71 + 72) * v30, v67, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      v40 = *(v39 + 48);
      *v13 = v37;
      v13[1] = v36;
      sub_1D9A05E98(v38, v13 + v40, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
      (*(*(v39 - 8) + 56))(v13, 0, 1, v39);

      v16 = v70;
LABEL_18:
      sub_1D99B1C20(v13, v16, &qword_1ECB51AC8, &unk_1D9C93D60);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      v42 = (*(*(v41 - 8) + 48))(v16, 1, v41);
      v69 = v42 == 1;
      if (v42 == 1)
      {
        return;
      }

      v43 = v29;
      v44 = v25;
      v45 = v24;
      v46 = v13;
      v47 = *(v41 + 48);
      v48 = *v16;
      v49 = v16[1];
      sub_1D9A05E98(v16 + v47, v8, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
      v50 = v48;
      v51 = v66;
      v52 = v8;
      v53 = sub_1D99ED894(v50, v49);
      v55 = v54;

      if ((v55 & 1) == 0)
      {
        goto LABEL_25;
      }

      v56 = *(v51 + 56);
      v57 = v72;
      sub_1D9A068B8(v56 + *(v71 + 72) * v53, v72, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
      v58 = *(v68 + 20);
      v59 = *(v57 + v58);
      v60 = *(v52 + v58);
      v8 = v52;
      if (v59 != v60)
      {

        v61 = sub_1D9A801A4(v59, v60);

        if ((v61 & 1) == 0)
        {
          sub_1D9A05F00(v72, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
LABEL_25:
          sub_1D9A05F00(v52, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
          goto LABEL_26;
        }
      }

      sub_1D9C7D3CC();
      sub_1D9A05940(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v26 = v72;
      v27 = sub_1D9C7DC2C();
      sub_1D9A05F00(v26, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
      sub_1D9A05F00(v8, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
      v13 = v46;
      v16 = v70;
      v24 = v45;
      v25 = v44;
      v23 = v43;
      if ((v27 & 1) == 0)
      {
        return;
      }
    }

    if (v63 <= v17 + 1)
    {
      v31 = v17 + 1;
    }

    else
    {
      v31 = v63;
    }

    v32 = v31 - 1;
    while (1)
    {
      v33 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v33 >= v63)
      {
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
        (*(*(v62 - 8) + 56))(v13, 1, 1, v62);
        v29 = 0;
        v17 = v32;
        goto LABEL_18;
      }

      v34 = *(v64 + 8 * v33);
      ++v17;
      if (v34)
      {
        v29 = (v34 - 1) & v34;
        v30 = __clz(__rbit64(v34)) | (v33 << 6);
        v17 = v33;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_26:
    v69 = 0;
  }
}

uint64_t sub_1D9A02E98()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41D08);
  __swift_project_value_buffer(v0, qword_1EDD41D08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C86430;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "domain_configs";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "allow_ocr";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "enable_visual_fingerprint";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "server_search_config";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "user_feedback_config";
  *(v15 + 8) = 20;
  *(v15 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A03128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_1D9A03218(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
LABEL_12:
        sub_1D9C7D4EC();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_1D9A03310(a1, v5, a2, a3);
          break;
        case 4:
          goto LABEL_12;
        case 5:
          sub_1D9A033C4(a1, v5, a2, a3);
          break;
      }
    }
  }
}

uint64_t sub_1D9A03218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D9C7D39C();
  type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig(0);
  sub_1D9A05940(&qword_1EDD2F4E0, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig, &unk_1D9C88C04);
  sub_1D9A05940(&qword_1EDD2F4D8, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig, &unk_1D9C88B3C);
  return sub_1D9C7D4AC();
}

uint64_t sub_1D9A03310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig(0);
  sub_1D9A05940(&qword_1EDD2F1D8, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig, &unk_1D9C88A9C);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9A033C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig(0);
  sub_1D9A05940(&qword_1EDD2F120, type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig, &unk_1D9C887CC);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9A03478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_1D9C7D39C(), type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig(0), sub_1D9A05940(&qword_1EDD2F4E0, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig, &unk_1D9C88C04), sub_1D9A05940(&qword_1EDD2F4D8, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig, &unk_1D9C88B3C), v4 = v9, result = sub_1D9C7D6DC(), !v9))
  {
    if (v3[8] != 1 || (result = sub_1D9C7D74C(), !v4))
    {
      result = sub_1D9A03644(v3, a1, a2, a3);
      if (!v4)
      {
        if (v3[9] == 1)
        {
          sub_1D9C7D74C();
        }

        sub_1D9A03854(v3, a1, a2, a3);
        type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
        return sub_1D9C7D3AC();
      }
    }
  }

  return result;
}

uint64_t sub_1D9A03644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51538, &unk_1D9C86560);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  sub_1D99AB100(a1 + *(v12 + 32), v7, &qword_1ECB51538, &unk_1D9C86560);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB51538, &unk_1D9C86560);
  }

  sub_1D9A05E98(v7, v11, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
  sub_1D9A05940(&qword_1EDD2F1D8, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig, &unk_1D9C88A9C);
  sub_1D9C7D80C();
  return sub_1D9A05F00(v11, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
}

uint64_t sub_1D9A03854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51540, &unk_1D9C88670);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  sub_1D99AB100(a1 + *(v12 + 36), v7, &qword_1ECB51540, &unk_1D9C88670);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB51540, &unk_1D9C88670);
  }

  sub_1D9A05E98(v7, v11, type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig);
  sub_1D9A05940(&qword_1EDD2F120, type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig, &unk_1D9C887CC);
  sub_1D9C7D80C();
  return sub_1D9A05F00(v11, type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig);
}

uint64_t sub_1D9A03A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1D9A453D0(MEMORY[0x1E69E7CC0]);
  *(a2 + 8) = 0;
  sub_1D9C7D3BC();
  v4 = *(a1 + 32);
  v5 = type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 36);
  v7 = type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1D9A03BB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A05940(&qword_1ECB51A60, type metadata accessor for Argos_Protos_Queryflow_SearchConfig, &unk_1D9C88D34);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A03C54(uint64_t a1)
{
  v2 = sub_1D9A05940(&qword_1EDD30820, type metadata accessor for Argos_Protos_Queryflow_SearchConfig, &unk_1D9C88D6C);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A03CC0(uint64_t a1, uint64_t a2)
{
  sub_1D9A05940(&qword_1EDD30820, type metadata accessor for Argos_Protos_Queryflow_SearchConfig, &unk_1D9C88D6C);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A03D40()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41BE0);
  __swift_project_value_buffer(v0, qword_1EDD41BE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "should_perform_ocr";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "should_perform_barcode";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "should_perform_frame_selection";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "frame_selection_threshold";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A03F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_2;
      }

      if (result == 4)
      {
        sub_1D9C7D54C();
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      sub_1D9C7D4EC();
    }
  }
}

uint64_t sub_1D9A04040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1D9C7D74C(), !v4))
  {
    if (*(v3 + 1) != 1 || (result = sub_1D9C7D74C(), !v4))
    {
      if (*(v3 + 2) != 1 || (result = sub_1D9C7D74C(), !v4))
      {
        if (!*(v3 + 4) || (result = sub_1D9C7D77C(), !v4))
        {
          type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig(0);
          return sub_1D9C7D3AC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9A04140@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 2) = 0;
  *(a2 + 4) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A041B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A05940(&qword_1ECB51A98, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig, &unk_1D9C88BCC);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A04258(uint64_t a1)
{
  v2 = sub_1D9A05940(&qword_1EDD2F4E0, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig, &unk_1D9C88C04);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A042C4(uint64_t a1, uint64_t a2)
{
  sub_1D9A05940(&qword_1EDD2F4E0, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig, &unk_1D9C88C04);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A04344()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41B80);
  __swift_project_value_buffer(v0, qword_1EDD41B80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "domain_configs";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "remove_model_urn_suffix_patterns";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "location_significant_digits";
  *(v11 + 8) = 27;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A04554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        sub_1D9C7D55C();
        break;
      case 3:
        sub_1D9C7D57C();
        break;
      case 2:
        sub_1D9A04604(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_1D9A04604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D9C7D39C();
  type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig(0);
  sub_1D9A05940(&qword_1EDD2F298, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig, &unk_1D9C88934);
  sub_1D9A05940(&qword_1EDD2F290, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig, &unk_1D9C8886C);
  return sub_1D9C7D4AC();
}

uint64_t sub_1D9A046FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_1D9C7D39C(), type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig(0), sub_1D9A05940(&qword_1EDD2F298, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig, &unk_1D9C88934), sub_1D9A05940(&qword_1EDD2F290, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig, &unk_1D9C8886C), v4 = v6, result = sub_1D9C7D6DC(), !v6))
  {
    if (!*(*(v3 + 8) + 16) || (result = sub_1D9C7D7AC(), !v4))
    {
      if (!*(v3 + 16) || (result = sub_1D9C7D78C(), !v4))
      {
        type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig(0);
        return sub_1D9C7D3AC();
      }
    }
  }

  return result;
}

uint64_t sub_1D9A0488C@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = sub_1D9A446BC(MEMORY[0x1E69E7CC0]);
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A048F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1D9C7D3CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D9A0496C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1D9C7D3CC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D9A04A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A05940(&qword_1ECB51AA0, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig, &unk_1D9C88A64);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A04AB0(uint64_t a1)
{
  v2 = sub_1D9A05940(&qword_1EDD2F1D8, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig, &unk_1D9C88A9C);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A04B1C(uint64_t a1, uint64_t a2)
{
  sub_1D9A05940(&qword_1EDD2F1D8, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig, &unk_1D9C88A9C);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A04B9C()
{
  result = MEMORY[0x1DA73DF90](0x436E69616D6F442ELL, 0xED00006769666E6FLL);
  qword_1ECB70EC0 = 0xD000000000000029;
  *algn_1ECB70EC8 = 0x80000001D9CA5720;
  return result;
}

uint64_t sub_1D9A04C14()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41B98);
  __swift_project_value_buffer(v0, qword_1EDD41B98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "s2_cell_level";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "require_location";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A04DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9C7D55C();
    }

    else if (result == 2)
    {
      sub_1D9C7D4EC();
    }
  }

  return result;
}

uint64_t sub_1D9A04E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1D9C7D78C(), !v4))
  {
    if (*(v3 + 4) != 1 || (result = sub_1D9C7D74C(), !v4))
    {
      type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9A04F14@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 4) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A04F3C()
{
  if (qword_1ECB50978 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECB70EC0;

  return v0;
}

uint64_t sub_1D9A04FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A05940(&qword_1ECB51AA8, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig, &unk_1D9C888FC);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A05074(uint64_t a1)
{
  v2 = sub_1D9A05940(&qword_1EDD2F298, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig, &unk_1D9C88934);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A050E0(uint64_t a1, uint64_t a2)
{
  sub_1D9A05940(&qword_1EDD2F298, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig, &unk_1D9C88934);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A0515C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9A05940(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A0520C()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41B68);
  __swift_project_value_buffer(v0, qword_1EDD41B68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D9C85660;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "location_significant_digits";
  *(v4 + 8) = 27;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1D9C7D81C();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A05378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9C7D55C();
    }
  }

  return result;
}

uint64_t sub_1D9A053E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1D9C7D78C(), !v4))
  {
    type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A054AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1D9C7D3CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D9A05520(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1D9C7D3CC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D9A055E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A05940(&qword_1ECB51AB0, type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig, &unk_1D9C88794);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A05688@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1D9C7D84C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1D9A05724(uint64_t a1)
{
  v2 = sub_1D9A05940(&qword_1EDD2F120, type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig, &unk_1D9C887CC);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A05790(uint64_t a1, uint64_t a2)
{
  sub_1D9A05940(&qword_1EDD2F120, type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig, &unk_1D9C887CC);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A0580C(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9A05940(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A05940(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9A05E98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A05F00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9A05F60(uint64_t a1, uint64_t a2)
{
  sub_1D9A011B0(*a1, *a2);
  if ((v4 & 1) == 0 || (sub_1D9A1EF04(*(a1 + 8), *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig(0);
  sub_1D9C7D3CC();
  sub_1D9A05940(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A0602C(float *a1, float *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig(0);
  sub_1D9C7D3CC();
  sub_1D9A05940(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A06104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig(0);
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v47 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51540, &unk_1D9C88670);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = (&v43 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51A68, &qword_1D9C88DE8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51538, &unk_1D9C86560);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51A70, &qword_1D9C88DF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  sub_1D9A01720(*a1, *a2);
  if ((v21 & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9))
  {
    goto LABEL_22;
  }

  v45 = v10;
  v44 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v22 = *(v44 + 32);
  v23 = *(v18 + 48);
  sub_1D99AB100(a1 + v22, v20, &qword_1ECB51538, &unk_1D9C86560);
  v46 = v23;
  sub_1D99AB100(a2 + v22, &v20[v23], &qword_1ECB51538, &unk_1D9C86560);
  v24 = *(v12 + 48);
  if (v24(v20, 1, v11) == 1)
  {
    if (v24(&v20[v46], 1, v11) == 1)
    {
      sub_1D99A6AE0(v20, &qword_1ECB51538, &unk_1D9C86560);
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  sub_1D99AB100(v20, v17, &qword_1ECB51538, &unk_1D9C86560);
  v32 = v46;
  if (v24(&v20[v46], 1, v11) == 1)
  {
    sub_1D9A05F00(v17, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
LABEL_13:
    v33 = &qword_1ECB51A70;
    v34 = &qword_1D9C88DF0;
LABEL_20:
    v37 = v20;
LABEL_21:
    sub_1D99A6AE0(v37, v33, v34);
    goto LABEL_22;
  }

  sub_1D9A05E98(&v20[v32], v14, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
  sub_1D9A011B0(*v17, *v14);
  if ((v35 & 1) == 0 || (sub_1D9A1EF04(*(v17 + 1), *(v14 + 1)) & 1) == 0 || *(v17 + 4) != *(v14 + 4))
  {
    sub_1D9A05F00(v14, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
    sub_1D9A05F00(v17, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
    v33 = &qword_1ECB51538;
    v34 = &unk_1D9C86560;
    goto LABEL_20;
  }

  sub_1D9C7D3CC();
  sub_1D9A05940(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v36 = sub_1D9C7DC2C();
  sub_1D9A05F00(v14, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
  sub_1D9A05F00(v17, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
  sub_1D99A6AE0(v20, &qword_1ECB51538, &unk_1D9C86560);
  if ((v36 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_7:
  v25 = v45;
  v26 = *(v44 + 36);
  v27 = *(v8 + 48);
  sub_1D99AB100(a1 + v26, v45, &qword_1ECB51540, &unk_1D9C88670);
  v28 = v25;
  sub_1D99AB100(a2 + v26, v25 + v27, &qword_1ECB51540, &unk_1D9C88670);
  v29 = v50;
  v30 = *(v49 + 48);
  if (v30(v25, 1, v50) != 1)
  {
    v39 = v25;
    v40 = v48;
    sub_1D99AB100(v39, v48, &qword_1ECB51540, &unk_1D9C88670);
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_1D9A05F00(v40, type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig);
      goto LABEL_26;
    }

    v41 = v47;
    sub_1D9A05E98(v28 + v27, v47, type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig);
    if (*v40 != *v41)
    {
      sub_1D9A05F00(v41, type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig);
      sub_1D9A05F00(v40, type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig);
      v33 = &qword_1ECB51540;
      v34 = &unk_1D9C88670;
      v37 = v28;
      goto LABEL_21;
    }

    sub_1D9C7D3CC();
    sub_1D9A05940(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v42 = sub_1D9C7DC2C();
    sub_1D9A05F00(v41, type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig);
    sub_1D9A05F00(v40, type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig);
    sub_1D99A6AE0(v28, &qword_1ECB51540, &unk_1D9C88670);
    if (v42)
    {
      goto LABEL_10;
    }

LABEL_22:
    v31 = 0;
    return v31 & 1;
  }

  if (v30(v25 + v27, 1, v29) != 1)
  {
LABEL_26:
    v33 = &qword_1ECB51A68;
    v34 = &qword_1D9C88DE8;
    v37 = v28;
    goto LABEL_21;
  }

  sub_1D99A6AE0(v25, &qword_1ECB51540, &unk_1D9C88670);
LABEL_10:
  sub_1D9C7D3CC();
  sub_1D9A05940(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v31 = sub_1D9C7DC2C();
  return v31 & 1;
}

uint64_t sub_1D9A068B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1D9A0693C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v10;
  v54 = a6;
  v55 = a8;
  v51 = a5;
  v52 = a7;
  v50 = a3;
  v56 = a10;
  v53 = *v10;
  v16 = sub_1D9C7D8DC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(VIFaissIndex);

  v21 = sub_1D9A08274(a1, a2);
  if (v11)
  {

LABEL_13:

    swift_deallocPartialClassInstance();
    return v12;
  }

  v22 = v21;
  v45 = a1;
  v46 = v19;
  v47 = v17;
  v48 = v16;
  v49 = 0;
  v23 = v51;
  v12[4] = v50;
  v12[5] = a4;
  v24 = v54;
  v12[6] = v23;
  v12[7] = v24;
  v25 = v55;
  v12[8] = v52;
  v12[9] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AF8, &qword_1D9C88EB8);
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  *(v26 + 16) = v22;
  v12[2] = v26;
  v27 = v22;
  v28 = sub_1D9A06D64(a9, v56);
  v30 = v29;
  v32 = v31;

  if (!v32)
  {
    v34 = 4;
LABEL_12:

    sub_1D9A07C10();
    swift_allocError();
    *v35 = v34;
    swift_willThrow();

    goto LABEL_13;
  }

  v33 = a2;
  if (!*(v32 + 16))
  {
    v34 = 4;
LABEL_11:

    goto LABEL_12;
  }

  if (v30 != [v27 embeddingLength])
  {
    v34 = 0;
    goto LABEL_11;
  }

  v12[10] = v28;
  v12[11] = v30;
  v12[12] = v32;
  if ([v27 numberOfIndexedEmbeddings] < 101)
  {
    *(v12 + 24) = 0;
    v37 = v46;
    static Logger.argos.getter(v46);

    v38 = v27;
    v39 = sub_1D9C7D8BC();
    v40 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v57 = v42;
      *v41 = 136315394;
      v43 = sub_1D9A0E224(v45, v33, &v57);

      *(v41 + 4) = v43;
      *(v41 + 12) = 2048;
      *(v41 + 14) = [v38 numberOfIndexedEmbeddings];

      _os_log_impl(&dword_1D9962000, v39, v40, "FaissCodebook is using codebook in path%s\nwith size %ld", v41, 0x16u);
      v44 = __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x1DA7405F0](v42, -1, -1, v44);
      MEMORY[0x1DA7405F0](v41, -1, -1);
    }

    else
    {
    }

    (*(v47 + 8))(v37, v48);
  }

  else
  {

    *(v12 + 24) = 1;
  }

  return v12;
}

uint64_t sub_1D9A06D64(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D9C7B71C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v26 - v7;
  v9 = sub_1D9C7B80C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 56))(v8, 1, 1, v9, v11);
  (*(v3 + 104))(v5, *MEMORY[0x1E6968F70], v2);

  sub_1D9C7B7FC();
  v14 = sub_1D9C7B81C();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  sub_1D9C7B54C();
  swift_allocObject();
  sub_1D9C7B53C();
  sub_1D9A08658();
  sub_1D9C7B52C();

  v17 = v26[0];
  v18 = *(v26[0] + 16);
  if (v18)
  {
    v26[0] = MEMORY[0x1E69E7CC0];
    sub_1D99FE498(0, v18, 0);
    v19 = 32;
    v20 = v26[0];
    do
    {
      v21 = *(v17 + v19);
      v26[0] = v20;
      v22 = *(v20 + 16);
      v23 = *(v20 + 24);

      if (v22 >= v23 >> 1)
      {
        sub_1D99FE498((v23 > 1), v22 + 1, 1);
        v20 = v26[0];
      }

      *(v20 + 16) = v22 + 1;
      *(v20 + 8 * v22 + 32) = v21;
      v19 += 8;
      --v18;
    }

    while (v18);
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  v24 = sub_1D9A080EC(v20);
  sub_1D99A5748(v14, v16);
  return v24;
}

void sub_1D9A070F8(uint64_t a1, uint64_t a2)
{
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AD8, &qword_1D9C88EB0);
  v5 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v82 - v9;
  v10 = sub_1D9C7C8DC();
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v82 - v13;
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v19 = &v82 - v18;
  v20 = *(a1 + 16);
  if (v20)
  {
    v83 = v7;
    v84 = v5;
    v85 = v2;
    v86 = a2;
    v22 = *(v16 + 16);
    v21 = v16 + 16;
    v23 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v93 = *(v21 + 56);
    v91 = v21;
    v94 = v21 - 8;
    v95 = v22;
    v89 = v20;
    v24 = v20 + 1;
    v25 = v23;
    while (--v24)
    {
      v26 = v93 + v25;
      (v95)(v19, v17);
      v27 = *(sub_1D9C7C37C() + 16);

      v28 = v92[2];
      os_unfair_lock_lock((v28 + 24));
      v29 = [*(v28 + 16) embeddingLength];
      os_unfair_lock_unlock((v28 + 24));
      (*v94)(v19, v10);
      v25 = v26;
      if (v27 != v29)
      {
        sub_1D9A07C10();
        swift_allocError();
        v31 = 2;
LABEL_15:
        *v30 = v31;
        swift_willThrow();
        return;
      }
    }

    v32 = v23;
    v33 = v89;
    do
    {
      (v95)(v14, v32, v10, v17);
      if (sub_1D9C7C88C() == v92[8] && v35 == v92[9])
      {

        v34 = *v94;
        (*v94)(v14, v10);
      }

      else
      {
        v37 = sub_1D9C7E7DC();

        v34 = *v94;
        (*v94)(v14, v10);
        if ((v37 & 1) == 0)
        {
          sub_1D9A07C10();
          swift_allocError();
          v31 = 1;
          goto LABEL_15;
        }
      }

      v32 += v93;
      --v33;
    }

    while (v33);
    v38 = MEMORY[0x1E69E7CC0];
    v39 = v89;
    do
    {
      v41 = v90;
      (v95)(v90, v23, v10);
      v42 = sub_1D9C7C37C();
      v34(v41, v10);
      v43 = *(v42 + 16);
      v44 = *(v38 + 2);
      v45 = v44 + v43;
      if (__OFADD__(v44, v43))
      {
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v45 > *(v38 + 3) >> 1)
      {
        if (v44 <= v45)
        {
          v47 = v44 + v43;
        }

        else
        {
          v47 = v44;
        }

        v38 = sub_1D9AF84B8(isUniquelyReferenced_nonNull_native, v47, 1, v38);
      }

      if (*(v42 + 16))
      {
        v48 = *(v38 + 2);
        if ((*(v38 + 3) >> 1) - v48 < v43)
        {
          goto LABEL_72;
        }

        memcpy(&v38[4 * v48 + 32], (v42 + 32), 4 * v43);

        if (v43)
        {
          v49 = *(v38 + 2);
          v50 = __OFADD__(v49, v43);
          v51 = v49 + v43;
          if (v50)
          {
            goto LABEL_73;
          }

          *(v38 + 2) = v51;
        }
      }

      else
      {

        if (v43)
        {
          goto LABEL_71;
        }
      }

      v23 += v93;
      --v39;
    }

    while (v39);
    v96 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51700, &qword_1D9C86D90);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1D9C85EA0;
    *(v52 + 32) = v89;
    v53 = v92[2];
    os_unfair_lock_lock((v53 + 24));
    v54 = [*(v53 + 16) embeddingLength];
    os_unfair_lock_unlock((v53 + 24));
    *(v52 + 40) = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB517C0, &qword_1D9C86E60);
    sub_1D99C7C60(&qword_1ECB51AE0, &qword_1ECB517C0, &qword_1D9C86E60, MEMORY[0x1E69E6328]);
    v55 = v88;
    sub_1D9C7D8FC();
    sub_1D9A0835C(0, &qword_1EDD2C450, 0x1E695FED0);
    v56 = v84;
    v23 = v87;
    (*(v84 + 16))(v83, v55, v87);
    sub_1D99C7C60(&qword_1ECB51AE8, &qword_1ECB51AD8, &qword_1D9C88EB0, MEMORY[0x1E695FCF0]);
    v57 = sub_1D9C7E07C();
    MEMORY[0x1EEE9AC00](v57);
    v58 = v86;
    *(&v82 - 2) = v59;
    *(&v82 - 1) = v58;
    os_unfair_lock_lock((v53 + 24));
    v60 = v85;
    sub_1D9A08340((v53 + 16), &v96);
    os_unfair_lock_unlock((v53 + 24));
    v38 = v60;
    if (v60)
    {

      (*(v56 + 8))(v55, v23);
    }

    else
    {
      v90 = v57;
      v40 = v96;
      if (v96 >> 62)
      {
        goto LABEL_77;
      }

      for (i = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v81)
      {
        v62 = v38;
        v63 = v88;
        v38 = v90;
        if (!v86)
        {
          break;
        }

        sub_1D9A07EAC(0, i, v86, v40, v86);
        v65 = v64;
        v66 = v64[2];
        if (!v66)
        {

          (*(v84 + 8))(v63, v23);
          return;
        }

        v85 = v62;
        v96 = MEMORY[0x1E69E7CC0];
        sub_1D99FE4B8(0, v66, 0);
        v67 = 0;
        v68 = v96;
        v92 = v65;
        v93 = v65 + 4;
        v91 = v66;
        while (v67 < v65[2])
        {
          v69 = v93[v67];
          if (v69 >> 62)
          {
            v79 = v68;
            v38 = sub_1D9C7E50C();
            v68 = v79;
          }

          else
          {
            v38 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v94 = v68;

          if (v38)
          {
            v70 = 0;
            v95 = MEMORY[0x1E69E7CC0];
            while (1)
            {
              v23 = v70;
              while (1)
              {
                if ((v69 & 0xC000000000000001) != 0)
                {
                  v71 = MEMORY[0x1DA73E610](v23, v69);
                }

                else
                {
                  if (v23 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_69;
                  }

                  v71 = *(v69 + 8 * v23 + 32);
                }

                v72 = v71;
                v70 = (v23 + 1);
                if (__OFADD__(v23, 1))
                {
                  __break(1u);
LABEL_69:
                  __break(1u);
                  goto LABEL_70;
                }

                if ([v71 isValid])
                {
                  break;
                }

                ++v23;
                if (v70 == v38)
                {
                  goto LABEL_61;
                }
              }

              v23 = [v72 identifier];

              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_75;
              }

              if (HIDWORD(v23))
              {
                goto LABEL_76;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v95 = sub_1D9AF9FA8(0, *(v95 + 2) + 1, 1, v95);
              }

              v74 = *(v95 + 2);
              v73 = *(v95 + 3);
              v75 = v74 + 1;
              if (v74 >= v73 >> 1)
              {
                v89 = v74 + 1;
                v77 = sub_1D9AF9FA8((v73 > 1), v74 + 1, 1, v95);
                v75 = v89;
                v95 = v77;
              }

              v76 = v95;
              *(v95 + 2) = v75;
              *&v76[4 * v74 + 32] = v23;
              if (v70 == v38)
              {
                goto LABEL_61;
              }
            }
          }

          v95 = MEMORY[0x1E69E7CC0];
LABEL_61:

          v68 = v94;
          v96 = v94;
          v23 = *(v94 + 16);
          v78 = *(v94 + 24);
          v38 = (v23 + 1);
          if (v23 >= v78 >> 1)
          {
            sub_1D99FE4B8((v78 > 1), v23 + 1, 1);
            v68 = v96;
          }

          ++v67;
          *(v68 + 16) = v38;
          *(v68 + 8 * v23 + 32) = v95;
          v65 = v92;
          if (v67 == v91)
          {
            (*(v84 + 8))(v88, v87);

            return;
          }
        }

LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        v80 = v40;
        v81 = sub_1D9C7E50C();
        v40 = v80;
      }

      __break(1u);
    }
  }
}

void sub_1D9A07A98(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v12[0] = 0;
  v6 = [v5 searchWithQuery:a2 numberOfNearestNeighbors:a3 options:1 error:v12];
  v7 = v12[0];
  if (v6)
  {
    v8 = v6;
    sub_1D9A0835C(0, &qword_1ECB51AF0, off_1E85897D0);
    v9 = sub_1D9C7DF2C();
    v10 = v7;

    *a4 = v9;
  }

  else
  {
    v11 = v12[0];
    sub_1D9C7B70C();

    swift_willThrow();
  }
}

uint64_t sub_1D9A07B94()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D9A07C10()
{
  result = qword_1EDD2BFE0;
  if (!qword_1EDD2BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BFE0);
  }

  return result;
}

uint64_t sub_1D9A07C64(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = a1 + a3;
  if (__OFADD__(a1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    v4 = a1;
    v6 = a2 >> 62;
    if (!(a2 >> 62))
    {
      v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 < v7)
      {
        v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v7 < v4)
      {
        goto LABEL_38;
      }

      if (v8 >= v4)
      {
        goto LABEL_7;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  v20 = sub_1D9C7E50C();
  if (v20 < v7)
  {
    v7 = v20;
  }

  if (v7 < v4)
  {
    goto LABEL_38;
  }

  if (sub_1D9C7E50C() < v4)
  {
    goto LABEL_37;
  }

LABEL_7:
  if (v4 < 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v6)
  {
    v9 = sub_1D9C7E50C();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 < v7)
  {
    goto LABEL_40;
  }

  if (v7 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if ((v5 & 0xC000000000000001) == 0 || v7 == v4)
  {

    if (!v6)
    {
      goto LABEL_19;
    }

LABEL_22:

    v5 = sub_1D9C7E51C();
    v4 = v13;
    v7 = v14;
    if (v14)
    {
      goto LABEL_24;
    }

LABEL_23:
    sub_1D9A08564(v5, v12, v4, v7);
    v16 = v15;
LABEL_30:
    swift_unknownObjectRelease();
    return v16;
  }

  if (v7 <= v4)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_1D9A0835C(0, &qword_1ECB51AF0, off_1E85897D0);

  v10 = v4;
  do
  {
    v11 = v10 + 1;
    sub_1D9C7E42C();
    v10 = v11;
  }

  while (v7 != v11);
  if (v6)
  {
    goto LABEL_22;
  }

LABEL_19:
  v5 &= 0xFFFFFFFFFFFFFF8uLL;
  v12 = v5 + 32;
  v7 = (2 * v7) | 1;
  if ((v7 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  v6 = v12;
  sub_1D9C7E80C();
  swift_unknownObjectRetain_n();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = *(v17 + 16);

  if (__OFSUB__(v7 >> 1, v4))
  {
    goto LABEL_43;
  }

  if (v18 != (v7 >> 1) - v4)
  {
LABEL_44:
    swift_unknownObjectRelease();
    v12 = v6;
    goto LABEL_23;
  }

  v16 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v16)
  {
    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  return v16;
}

void sub_1D9A07EAC(int64_t a1, int64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = a1;
  while (1)
  {
    v12 = v11 <= a2;
    if (a3 > 0)
    {
      v12 = v11 >= a2;
    }

    if (v12)
    {
      break;
    }

    v13 = __OFADD__(v11, a3);
    v11 += a3;
    if (v13)
    {
      v11 = (v11 >> 63) ^ 0x8000000000000000;
    }

    v13 = __OFADD__(v10++, 1);
    if (v13)
    {
      __break(1u);
      break;
    }
  }

  v14 = a1;
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D99FE4D8(0, v10, 0);
  if (v10)
  {
    v15 = v14;
    while (1)
    {
      v16 = v15 <= a2;
      if (a3 > 0)
      {
        v16 = v15 >= a2;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v15, a3))
      {
        v14 = ((v15 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v14 = v15 + a3;
      }

      v17 = sub_1D9A07C64(v15, a4, a5);
      if (v5)
      {
        goto LABEL_37;
      }

      v19 = *(v28 + 16);
      v18 = *(v28 + 24);
      if (v19 >= v18 >> 1)
      {
        v26 = v17;
        sub_1D99FE4D8((v18 > 1), v19 + 1, 1);
        v17 = v26;
      }

      *(v28 + 16) = v19 + 1;
      *(v28 + 8 * v19 + 32) = v17;
      v15 = v14;
      if (!--v10)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    v20 = v14 <= a2;
    if (a3 > 0)
    {
      v20 = v14 >= a2;
    }

    if (v20)
    {
LABEL_25:

      return;
    }

    while (1)
    {
      v21 = __OFADD__(v14, a3) ? ((v14 + a3) >> 63) ^ 0x8000000000000000 : v14 + a3;
      v22 = sub_1D9A07C64(v14, a4, a5);
      if (v5)
      {
        break;
      }

      v24 = *(v28 + 16);
      v23 = *(v28 + 24);
      if (v24 >= v23 >> 1)
      {
        v27 = v22;
        sub_1D99FE4D8((v23 > 1), v24 + 1, 1);
        v22 = v27;
      }

      *(v28 + 16) = v24 + 1;
      *(v28 + 8 * v24 + 32) = v22;
      v25 = v21 <= a2;
      if (a3 > 0)
      {
        v25 = v21 >= a2;
      }

      v14 = v21;
      if (v25)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_37:

  __break(1u);
}

uint64_t sub_1D9A080EC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (!v2)
  {
LABEL_23:

    return v2;
  }

  v3 = 0;
  v4 = result + 32;
  while (v2 != v3)
  {
    v5 = *(v4 + 8 * v3++);
    if (*(v5 + 16) != *(*(result + 32) + 16))
    {
      __break(1u);
      break;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (v6 < *(v1 + 16))
  {
    v8 = *(v4 + 8 * v6);
    v9 = *(v8 + 16);
    v10 = *(v7 + 16);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      goto LABEL_25;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= *(v7 + 24) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = sub_1D9AF84B8(result, v12, 1, v7);
      v7 = result;
      if (*(v8 + 16))
      {
LABEL_19:
        v13 = *(v7 + 16);
        if ((*(v7 + 24) >> 1) - v13 < v9)
        {
          goto LABEL_27;
        }

        memcpy((v7 + 4 * v13 + 32), (v8 + 32), 4 * v9);

        if (v9)
        {
          v14 = *(v7 + 16);
          v15 = __OFADD__(v14, v9);
          v16 = v14 + v9;
          if (v15)
          {
            goto LABEL_28;
          }

          *(v7 + 16) = v16;
        }

        goto LABEL_8;
      }
    }

    if (v9)
    {
      goto LABEL_26;
    }

LABEL_8:
    if (v2 == ++v6)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

id sub_1D9A08274(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1D9C7DC4C();

  v8[0] = 0;
  v4 = [v2 initWithContentsOfFile:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1D9C7B70C();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1D9A0835C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1D9A083A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 16 * a3), 16 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51710, &qword_1D9C86DA0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1D9A08474(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51748, &qword_1D9C86DD8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 56);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1D9A08564(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1D9A0835C(0, &qword_1ECB51AF0, off_1E85897D0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512E8, &qword_1D9C94280);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_1D9A08658()
{
  result = qword_1EDD2B588;
  if (!qword_1EDD2B588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2B588);
  }

  return result;
}

unint64_t sub_1D9A086C0()
{
  result = qword_1ECB51B00;
  if (!qword_1ECB51B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51B00);
  }

  return result;
}

id VisualIntelligenceService.parseOnlyCameraEval(visualQueryContext:image:normalizedRegionOfInterest:annotation:groundingDetections:timestamp:searchHistoryEntries:previousVisualUnderstanding:completion:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v96 = a1;
  v88 = a4;
  v20 = sub_1D9C7DA2C();
  v93 = *(v20 - 8);
  v94 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v91 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1D9C7DA4C();
  v90 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v89 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v84 = *(v23 - 8);
  v24 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v85 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v98 = &v77 - v26;
  v27 = sub_1D9C7D8DC();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a2;
  v32 = *(a2 + 8);
  v33 = a3[1];
  v106 = *a3;
  v107 = v33;
  v34 = a3[3];
  v108 = a3[2];
  v109 = v34;
  v35 = type metadata accessor for CancelSession(0);
  v87 = [objc_allocWithZone(v35) init];
  v36 = swift_allocObject();
  *(v36 + 16) = a11;
  *(v36 + 24) = a12;
  v86 = v36;

  static Logger.argos.getter(v30);
  if (qword_1EDD2C988 != -1)
  {
    swift_once();
  }

  (*(v28 + 8))(v30, v27);
  __swift_project_value_buffer(v27, qword_1EDD2C990);
  v37 = sub_1D9C7D8BC();
  v38 = sub_1D9C7E09C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1D9962000, v37, v38, "parseCameraFrame with groundingDetections", v39, 2u);
    MEMORY[0x1DA7405F0](v39, -1, -1);
  }

  v40 = v95;
  v97 = *(v95 + 16);
  v83 = [objc_allocWithZone(v35) init];
  v114.origin.x = 0.0;
  v114.origin.y = 0.0;
  v114.size.width = 1.0;
  v114.size.height = 1.0;
  v112.origin.x = a5;
  v112.origin.y = a6;
  v112.size.width = a7;
  v112.size.height = a8;
  v113 = CGRectIntersection(v112, v114);
  x = v113.origin.x;
  y = v113.origin.y;
  width = v113.size.width;
  height = v113.size.height;
  v45 = *(v40 + 96);
  v46 = v96;
  v47 = v98;
  sub_1D9A0EC50(v96, v98, type metadata accessor for VisualQueryContext);
  Context = type metadata accessor for VisualQueryContext(0);
  (*(*(Context - 8) + 56))(v47, 0, 1, Context);
  v81 = sub_1D9B32C04(v46);
  v104 = &type metadata for PixelImage;
  v105 = &off_1F5533940;
  v102 = v31;
  v103 = v32;
  type metadata accessor for MetricsBucket();
  v49 = swift_allocObject();
  *(v49 + 16) = MEMORY[0x1E69E7CC0];
  v95 = v49;
  v110[0] = 0x6150202D20453245;
  v110[1] = 0xEB00000000657372;
  v110[2] = "Parse Overall";
  v110[3] = 13;
  v111 = 2;
  type metadata accessor for DurationMeasurement(0);
  swift_allocObject();
  v50 = v31;

  v80 = sub_1D9AFD4B8(v110, v49);

  v51 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
  v52 = sub_1D9C7B87C();
  v78 = v53;
  v79 = v52;

  v82 = *(v45 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_queue);
  v54 = swift_allocObject();
  v96 = v54;
  swift_weakInit();
  sub_1D99A17C8(&v102, v101);
  v55 = v85;
  sub_1D99AB100(v47, v85, &unk_1ECB51B10, &qword_1D9C86550);
  v56 = (*(v84 + 80) + 184) & ~*(v84 + 80);
  v57 = (v24 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + 23) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v97;
  *(v61 + 16) = v54;
  *(v61 + 24) = v62;
  *(v61 + 32) = v81;
  *(v61 + 40) = v95;
  sub_1D9979B9C(v101, v61 + 48);
  *(v61 + 88) = x;
  *(v61 + 96) = y;
  *(v61 + 104) = width;
  *(v61 + 112) = height;
  v63 = v107;
  *(v61 + 120) = v106;
  *(v61 + 136) = v63;
  v64 = v109;
  *(v61 + 152) = v108;
  *(v61 + 168) = v64;
  sub_1D9A0E758(v55, v61 + v56);
  *(v61 + v57) = v80;
  v65 = v83;
  *(v61 + v58) = v83;
  v66 = (v61 + v59);
  v67 = v78;
  v68 = v79;
  *v66 = v79;
  v66[1] = v67;
  *(v61 + v60) = v88;
  v69 = (v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8));
  v70 = v86;
  *v69 = sub_1D9A091BC;
  v69[1] = v70;
  v100[4] = sub_1D9A0E7C8;
  v100[5] = v61;
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 1107296256;
  v100[2] = sub_1D9A0A1E0;
  v100[3] = &block_descriptor_0;
  v85 = _Block_copy(v100);

  sub_1D99AB100(&v106, v99, &qword_1ECB514D0, &unk_1D9C86490);

  v97 = v65;
  v71 = v68;
  sub_1D99AF2FC(v68, v67);

  v72 = v89;
  sub_1D9C7DA3C();
  v99[0] = MEMORY[0x1E69E7CC0];
  sub_1D9A0E7E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D9A0E83C();
  v73 = v91;
  v74 = v94;
  sub_1D9C7E34C();
  v75 = v85;
  MEMORY[0x1DA73E300](0, v72, v73, v85);
  _Block_release(v75);

  sub_1D99A5748(v71, v67);

  (*(v93 + 8))(v73, v74);
  (*(v90 + 8))(v72, v92);
  sub_1D99A6AE0(v98, &unk_1ECB51B10, &qword_1D9C86550);

  __swift_destroy_boxed_opaque_existential_0Tm(&v102);
  return v87;
}

uint64_t sub_1D9A08FC0(uint64_t a1, void (*a2)(void **))
{
  v4 = type metadata accessor for ParseResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B20, &qword_1D9C95AE0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v16 - v11);
  sub_1D99AB100(a1, &v16 - v11, &unk_1ECB51B20, &qword_1D9C95AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    *v9 = *v12;
    swift_storeEnumTagMultiPayload();
    v14 = v13;
    a2(v9);

    return sub_1D99A6AE0(v9, &unk_1ECB51B20, &qword_1D9C95AE0);
  }

  else
  {
    sub_1D9A0ECC0(v12, v6, type metadata accessor for ParseResult);
    sub_1D9A0EC50(v6, v9, type metadata accessor for ParseResult);
    swift_storeEnumTagMultiPayload();
    a2(v9);
    sub_1D99A6AE0(v9, &unk_1ECB51B20, &qword_1D9C95AE0);
    return sub_1D9A0EE60(v6, type metadata accessor for ParseResult);
  }
}

id VisualIntelligenceService.parseAndSearchCameraEval(visualQueryContext:image:normalizedRegionOfInterest:annotation:groundingDetections:timestamp:searchHistoryEntries:previousVisualUnderstanding:completion:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13)
{
  v61 = a8;
  v59 = a7;
  v60 = a6;
  v62 = a5;
  v58 = a4;
  v67 = sub_1D9C7DA2C();
  v69 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1D9C7DA4C();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v63 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for VisualQueryContext(0);
  v25 = *(Context - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](Context - 8);
  v51 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *a2;
  v56 = *(a2 + 8);
  v27 = a3[1];
  v72 = *a3;
  v73 = v27;
  v28 = a3[3];
  v74 = a3[2];
  v75 = v28;
  v64 = [objc_allocWithZone(type metadata accessor for CancelSession(0)) init];
  v57 = *(v13 + 24);
  v54 = v13;
  sub_1D9A0EC50(a1, &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisualQueryContext);
  v29 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v30 = (v26 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 19) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 39) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v32 + 71) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = v13;
  sub_1D9A0ECC0(v51, v35 + v29, type metadata accessor for VisualQueryContext);
  v36 = v35 + v30;
  v37 = v55;
  *v36 = v55;
  *(v36 + 8) = v56;
  v38 = (v35 + v31);
  *v38 = a9;
  v38[1] = a10;
  v38[2] = a11;
  v38[3] = a12;
  v39 = (v35 + v32);
  v40 = v75;
  v39[2] = v74;
  v39[3] = v40;
  v41 = v73;
  *v39 = v72;
  v39[1] = v41;
  *(v35 + v53) = v58;
  v42 = (v35 + v33);
  v43 = v61;
  *v42 = v59;
  v42[1] = v43;
  *(v35 + v52) = v60;
  *(v35 + v34) = a13;
  *(v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = v62;
  aBlock[4] = sub_1D9A0E8A0;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9A0A1E0;
  aBlock[3] = &block_descriptor_12;
  v44 = _Block_copy(aBlock);

  v45 = v37;
  sub_1D99AB100(&v72, v70, &qword_1ECB514D0, &unk_1D9C86490);

  v46 = v63;
  sub_1D9C7DA3C();
  v70[0] = MEMORY[0x1E69E7CC0];
  sub_1D9A0E7E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D9A0E83C();
  v47 = v65;
  v48 = v67;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v46, v47, v44);
  _Block_release(v44);
  (*(v69 + 8))(v47, v48);
  (*(v66 + 8))(v46, v68);

  return v64;
}

void sub_1D9A09728(uint64_t a1, uint64_t a2, void *a3, int a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, double a13, uint64_t a14, void *a15)
{
  v99 = a7;
  v90 = a6;
  v89 = a5;
  LODWORD(v97) = a4;
  v98 = a3;
  v82 = a15;
  v96 = sub_1D9C7DA2C();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v93 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1D9C7DA4C();
  v92 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v85 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v88 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v100 = &v79 - v28;
  v80 = sub_1D9C7D8DC();
  v29 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for VisualQueryContext(0);
  v32 = *(Context - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](Context);
  v34 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a2;
  sub_1D9A0EC50(a2, v34, type metadata accessor for VisualQueryContext);
  v81 = v32;
  v35 = (*(v32 + 80) + 56) & ~*(v32 + 80);
  v36 = (v33 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = v99;
  *(v37 + 24) = a8;
  *(v37 + 32) = a14;
  *(v37 + 40) = a13;
  *(v37 + 48) = a1;
  sub_1D9A0ECC0(v34, v37 + v35, type metadata accessor for VisualQueryContext);
  v87 = v37;
  *(v37 + v36) = v82;

  static Logger.argos.getter(v31);
  if (qword_1EDD2C988 != -1)
  {
    swift_once();
  }

  v38 = v80;
  (*(v29 + 8))(v31, v80);
  __swift_project_value_buffer(v38, qword_1EDD2C990);
  v39 = sub_1D9C7D8BC();
  v40 = sub_1D9C7E09C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1D9962000, v39, v40, "parseCameraFrame with groundingDetections", v41, 2u);
    MEMORY[0x1DA7405F0](v41, -1, -1);
  }

  v99 = *(a1 + 16);
  v82 = [objc_allocWithZone(type metadata accessor for CancelSession(0)) init];
  v112.origin.x = 0.0;
  v112.origin.y = 0.0;
  v112.size.width = 1.0;
  v112.size.height = 1.0;
  v110.origin.x = a9;
  v110.origin.y = a10;
  v110.size.width = a11;
  v110.size.height = a12;
  v111 = CGRectIntersection(v110, v112);
  x = v111.origin.x;
  y = v111.origin.y;
  width = v111.size.width;
  height = v111.size.height;
  v46 = *(a1 + 96);
  v47 = v84;
  v48 = v100;
  sub_1D9A0EC50(v84, v100, type metadata accessor for VisualQueryContext);
  (*(v81 + 56))(v48, 0, 1, Context);
  LODWORD(Context) = sub_1D9B32C04(v47);
  v106 = &type metadata for PixelImage;
  v107 = &off_1F5533940;
  v49 = v98;
  v104 = v98;
  v105 = v97;
  type metadata accessor for MetricsBucket();
  v50 = swift_allocObject();
  *(v50 + 16) = MEMORY[0x1E69E7CC0];
  v108[0] = 0x6150202D20453245;
  v108[1] = 0xEB00000000657372;
  v108[2] = "Parse Overall";
  v108[3] = 13;
  v109 = 2;
  type metadata accessor for DurationMeasurement(0);
  swift_allocObject();
  v51 = v49;

  v81 = sub_1D9AFD4B8(v108, v50);
  v52 = v50;
  v97 = v50;

  v53 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
  v80 = sub_1D9C7B87C();
  v79 = v54;

  v84 = *(v46 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_queue);
  v55 = swift_allocObject();
  v98 = v55;
  swift_weakInit();
  sub_1D99A17C8(&v104, &v103);
  v56 = v88;
  sub_1D99AB100(v48, v88, &unk_1ECB51B10, &qword_1D9C86550);
  v57 = (*(v85 + 80) + 184) & ~*(v85 + 80);
  v58 = (v86 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  v63 = v99;
  *(v62 + 16) = v55;
  *(v62 + 24) = v63;
  *(v62 + 32) = Context;
  *(v62 + 40) = v52;
  sub_1D9979B9C(&v103, v62 + 48);
  *(v62 + 88) = x;
  *(v62 + 96) = y;
  *(v62 + 104) = width;
  *(v62 + 112) = height;
  v64 = v89;
  v65 = v89[1];
  *(v62 + 120) = *v89;
  *(v62 + 136) = v65;
  v66 = *(v64 + 48);
  *(v62 + 152) = *(v64 + 32);
  *(v62 + 168) = v66;
  sub_1D9A0E758(v56, v62 + v57);
  *(v62 + v58) = v81;
  v67 = v82;
  *(v62 + v59) = v82;
  v68 = (v62 + v60);
  v69 = v80;
  v70 = v79;
  *v68 = v80;
  v68[1] = v70;
  *(v62 + v61) = v90;
  v71 = (v62 + ((v61 + 15) & 0xFFFFFFFFFFFFFFF8));
  v72 = v87;
  *v71 = sub_1D9A0F848;
  v71[1] = v72;
  aBlock[4] = sub_1D9A1039C;
  aBlock[5] = v62;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9A0A1E0;
  aBlock[3] = &block_descriptor_74;
  v88 = _Block_copy(aBlock);

  sub_1D99AB100(v64, v101, &qword_1ECB514D0, &unk_1D9C86490);

  v73 = v67;
  v74 = v69;
  sub_1D99AF2FC(v69, v70);

  v75 = v91;
  sub_1D9C7DA3C();
  v101[0] = MEMORY[0x1E69E7CC0];
  sub_1D9A0E7E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D9A0E83C();
  v76 = v93;
  v77 = v96;
  sub_1D9C7E34C();
  v78 = v88;
  MEMORY[0x1DA73E300](0, v75, v76, v88);
  _Block_release(v78);

  sub_1D99A5748(v74, v70);

  (*(v95 + 8))(v76, v77);
  (*(v92 + 8))(v75, v94);
  sub_1D99A6AE0(v100, &unk_1ECB51B10, &qword_1D9C86550);

  __swift_destroy_boxed_opaque_existential_0Tm(&v104);
}

double sub_1D9A0A1E0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

id VisualIntelligenceService.parseAndSearchCameraEval(visualQueryContext:image:normalizedRegionOfInterest:annotation:cachedResults:timestamp:searchHistoryEntries:previousVisualUnderstanding:completion:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14)
{
  v65 = a8;
  v66 = a7;
  v67 = a6;
  v64 = a5;
  v63 = a4;
  v61 = a14;
  v72 = sub_1D9C7DA2C();
  v74 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1D9C7DA4C();
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v68 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for VisualQueryContext(0);
  v26 = *(Context - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](Context - 8);
  v55 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *a2;
  v60 = *(a2 + 8);
  v28 = a3[1];
  v77 = *a3;
  v78 = v28;
  v29 = a3[3];
  v79 = a3[2];
  v80 = v29;
  v69 = [objc_allocWithZone(type metadata accessor for CancelSession(0)) init];
  v62 = *(v14 + 24);
  v58 = v14;
  sub_1D9A0EC50(a1, &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisualQueryContext);
  v30 = (*(v26 + 80) + 24) & ~*(v26 + 80);
  v31 = (v27 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 19) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 39) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 71) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = v14;
  sub_1D9A0ECC0(v55, v37 + v30, type metadata accessor for VisualQueryContext);
  v38 = v37 + v31;
  v39 = v59;
  *v38 = v59;
  *(v38 + 8) = v60;
  v40 = (v37 + v32);
  *v40 = a9;
  v40[1] = a10;
  v40[2] = a11;
  v40[3] = a12;
  v41 = (v37 + v33);
  v42 = v80;
  v41[2] = v79;
  v41[3] = v42;
  v43 = v78;
  *v41 = v77;
  v41[1] = v43;
  v44 = (v37 + v34);
  v45 = v63;
  v46 = v64;
  *v44 = v63;
  v44[1] = v46;
  v47 = (v37 + v35);
  v48 = v61;
  *v47 = v65;
  v47[1] = v48;
  *(v37 + v57) = v66;
  *(v37 + v56) = a13;
  *(v37 + v36) = v67;
  aBlock[4] = sub_1D9A0E998;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9A0A1E0;
  aBlock[3] = &block_descriptor_18;
  v49 = _Block_copy(aBlock);

  v50 = v39;
  sub_1D99AB100(&v77, v75, &qword_1ECB514D0, &unk_1D9C86490);
  sub_1D99DF410(v45, v46);

  v51 = v68;
  sub_1D9C7DA3C();
  v75[0] = MEMORY[0x1E69E7CC0];
  sub_1D9A0E7E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D9A0E83C();
  v52 = v70;
  v53 = v72;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v51, v52, v49);
  _Block_release(v49);
  (*(v74 + 8))(v52, v53);
  (*(v71 + 8))(v51, v73);

  return v69;
}

void sub_1D9A0A7A4(uint64_t a1, uint64_t a2, void *a3, int a4, _OWORD *a5, uint64_t a6, unint64_t a7, void *a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, double a13, uint64_t a14, uint64_t a15, void *a16)
{
  v100 = a8;
  v86 = a7;
  v79[1] = a6;
  v91 = a5;
  LODWORD(v98) = a4;
  v99 = a3;
  v81 = a1;
  v85 = a16;
  v97 = sub_1D9C7DA2C();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v94 = v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1D9C7DA4C();
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v92 = v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v87 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v90 = v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v101 = v79 - v27;
  v80 = sub_1D9C7D8DC();
  v28 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v30 = v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for VisualQueryContext(0);
  v31 = *(Context - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](Context);
  v33 = v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a2;
  sub_1D9A0EC50(a2, v33, type metadata accessor for VisualQueryContext);
  v82 = v31;
  v34 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v35 = (v32 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v100;
  *(v36 + 24) = a14;
  *(v36 + 32) = a15;
  *(v36 + 40) = a13;
  v37 = v81;
  *(v36 + 48) = v81;
  sub_1D9A0ECC0(v33, v36 + v34, type metadata accessor for VisualQueryContext);
  v89 = v36;
  *(v36 + v35) = v85;

  static Logger.argos.getter(v30);
  if (qword_1EDD2C988 != -1)
  {
    swift_once();
  }

  v38 = v80;
  (*(v28 + 8))(v30, v80);
  __swift_project_value_buffer(v38, qword_1EDD2C990);
  v39 = sub_1D9C7D8BC();
  v40 = sub_1D9C7E09C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1D9962000, v39, v40, "parseCameraFrame with input image", v41, 2u);
    MEMORY[0x1DA7405F0](v41, -1, -1);
  }

  v100 = *(v37 + 16);
  v85 = [objc_allocWithZone(type metadata accessor for CancelSession(0)) init];
  v42 = *(v37 + 96);
  v113.origin.x = 0.0;
  v113.origin.y = 0.0;
  v113.size.width = 1.0;
  v113.size.height = 1.0;
  v111.origin.x = a9;
  v111.origin.y = a10;
  v111.size.width = a11;
  v111.size.height = a12;
  v112 = CGRectIntersection(v111, v113);
  x = v112.origin.x;
  y = v112.origin.y;
  width = v112.size.width;
  height = v112.size.height;
  v47 = v84;
  v48 = v101;
  sub_1D9A0EC50(v84, v101, type metadata accessor for VisualQueryContext);
  (*(v82 + 56))(v48, 0, 1, Context);
  LODWORD(Context) = sub_1D9B32C04(v47);
  v49 = 0;
  if (v86 >> 60 != 15)
  {
    v49 = sub_1D9C7B86C();
  }

  v107 = &type metadata for PixelImage;
  v108 = &off_1F5533940;
  v50 = v99;
  v105 = v99;
  v106 = v98;
  type metadata accessor for MetricsBucket();
  v51 = swift_allocObject();
  *(v51 + 16) = MEMORY[0x1E69E7CC0];
  v109[0] = 0x6150202D20453245;
  v109[1] = 0xEB00000000657372;
  v109[2] = "Parse Overall";
  v109[3] = 13;
  v110 = 2;
  type metadata accessor for DurationMeasurement(0);
  swift_allocObject();

  v52 = v50;
  v84 = sub_1D9AFD4B8(v109, v51);
  v53 = v51;

  if (v49)
  {
    v54 = v49;
  }

  else
  {
    v54 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
  }

  v86 = v49;
  v81 = sub_1D9C7B87C();
  v80 = v55;

  v82 = *(v42 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_queue);
  v56 = swift_allocObject();
  v99 = v56;
  swift_weakInit();
  sub_1D99A17C8(&v105, &v104);
  v57 = v90;
  sub_1D99AB100(v101, v90, &unk_1ECB51B10, &qword_1D9C86550);
  v58 = (*(v87 + 80) + 184) & ~*(v87 + 80);
  v59 = (v88 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v61 + 23) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  v64 = v100;
  *(v63 + 16) = v56;
  *(v63 + 24) = v64;
  *(v63 + 32) = Context;
  v98 = v53;
  *(v63 + 40) = v53;
  sub_1D9979B9C(&v104, v63 + 48);
  *(v63 + 88) = x;
  *(v63 + 96) = y;
  *(v63 + 104) = width;
  *(v63 + 112) = height;
  v65 = v91;
  v66 = v91[1];
  *(v63 + 120) = *v91;
  *(v63 + 136) = v66;
  v67 = *(v65 + 48);
  *(v63 + 152) = *(v65 + 32);
  *(v63 + 168) = v67;
  sub_1D9A0E758(v57, v63 + v58);
  *(v63 + v59) = v84;
  v68 = v85;
  *(v63 + v60) = v85;
  v69 = (v63 + v61);
  v70 = v81;
  v71 = v80;
  *v69 = v81;
  v69[1] = v71;
  *(v63 + v62) = 0;
  v72 = (v63 + ((v62 + 15) & 0xFFFFFFFFFFFFFFF8));
  v73 = v89;
  *v72 = sub_1D9A0F204;
  v72[1] = v73;
  aBlock[4] = sub_1D9A1039C;
  aBlock[5] = v63;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9A0A1E0;
  aBlock[3] = &block_descriptor_50;
  v74 = _Block_copy(aBlock);

  sub_1D99AB100(v65, v102, &qword_1ECB514D0, &unk_1D9C86490);

  v100 = v68;
  v75 = v70;
  sub_1D99AF2FC(v70, v71);

  v76 = v92;
  sub_1D9C7DA3C();
  v102[0] = MEMORY[0x1E69E7CC0];
  sub_1D9A0E7E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D9A0E83C();
  v77 = v94;
  v78 = v97;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v76, v77, v74);
  _Block_release(v74);

  sub_1D99A5748(v75, v71);

  (*(v96 + 8))(v77, v78);
  (*(v93 + 8))(v76, v95);
  sub_1D99A6AE0(v101, &unk_1ECB51B10, &qword_1D9C86550);

  __swift_destroy_boxed_opaque_existential_0Tm(&v105);
}

uint64_t sub_1D9A0B2B4(uint64_t a1, void (*a2)(_OWORD *), uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v138 = a8;
  v149 = a7;
  v144 = a6;
  v160 = a5;
  v135 = a4;
  v19 = sub_1D9C7DA2C();
  v155 = *(v19 - 8);
  v156 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v153 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_1D9C7DA4C();
  v152 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v151 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for VisualQueryContext(0);
  v23 = *(Context - 8);
  v140 = Context;
  v141 = v23;
  MEMORY[0x1EEE9AC00](Context);
  v142 = v24;
  v143 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v147 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v150 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v161 = &v126 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v145 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v158 = (&v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v159 = &v126 - v31;
  v32 = sub_1D9C7D8DC();
  v136 = *(v32 - 1);
  v137 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v126 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ParseResult(0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v126 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B20, &qword_1D9C95AE0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = (&v126 - v39);
  sub_1D99AB100(a1, &v126 - v39, &unk_1ECB51B20, &qword_1D9C95AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = *v40;
    *&v163[0] = v41;
    sub_1D9A0F620(v163);
    memcpy(v162, v163, 0x1B1uLL);
    v42 = v41;
    a2(v162);

    memcpy(v164, v162, sizeof(v164));
    return sub_1D99A6AE0(v164, &qword_1ECB51B58, &unk_1D9C88F80);
  }

  else
  {
    v157 = a3;
    sub_1D9A0ECC0(v40, v37, type metadata accessor for ParseResult);
    v44 = *(v37 + 9);
    v162[8] = *(v37 + 8);
    v162[9] = v44;
    v162[10] = *(v37 + 10);
    *&v162[11] = *(v37 + 22);
    v45 = *(v37 + 5);
    v162[4] = *(v37 + 4);
    v162[5] = v45;
    v46 = *(v37 + 7);
    v162[6] = *(v37 + 6);
    v162[7] = v46;
    v47 = *(v37 + 1);
    v162[0] = *v37;
    v162[1] = v47;
    v48 = *(v37 + 3);
    v162[2] = *(v37 + 2);
    v162[3] = v48;
    sub_1D9C7B59C();
    swift_allocObject();
    sub_1D9C7B58C();
    v189 = v162[8];
    v190 = v162[9];
    v191 = v162[10];
    v192 = *&v162[11];
    v185 = v162[4];
    v186 = v162[5];
    v187 = v162[6];
    v188 = v162[7];
    v181 = v162[0];
    v182 = v162[1];
    v183 = v162[2];
    v184 = v162[3];
    sub_1D9A0EBFC();
    v49 = sub_1D9C7B57C();
    v51 = v50;

    v52 = *(v37 + 9);
    *&v164[128] = *(v37 + 8);
    *&v164[144] = v52;
    *&v164[160] = *(v37 + 10);
    *&v164[176] = *(v37 + 22);
    v53 = *(v37 + 5);
    *&v164[64] = *(v37 + 4);
    *&v164[80] = v53;
    v54 = *(v37 + 7);
    *&v164[96] = *(v37 + 6);
    *&v164[112] = v54;
    v55 = *(v37 + 1);
    *v164 = *v37;
    *&v164[16] = v55;
    v56 = *(v37 + 3);
    *&v164[32] = *(v37 + 2);
    *&v164[48] = v56;
    VisualUnderstanding.imageRegions.getter();
    v58 = v57;
    *(v163 + 8) = 0u;
    *(&v163[1] + 8) = 0u;
    *(&v163[2] + 8) = 0u;
    *&v163[0] = 1;
    *(&v163[3] + 1) = 0;
    sub_1D99AF2FC(v49, v51);
    VisualUnderstanding.init(_:annotation:payload:)(v58, v163, v49, v51, &v167);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B48, &qword_1D9C88F70);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1D9C85660;
    v60 = v176;
    v179[8] = v175;
    v179[9] = v176;
    v61 = v177;
    v179[10] = v177;
    v62 = v171;
    v63 = v172;
    v179[4] = v171;
    v179[5] = v172;
    v64 = v173;
    v65 = v174;
    v179[6] = v173;
    v179[7] = v174;
    v66 = v167;
    v67 = v168;
    v179[0] = v167;
    v179[1] = v168;
    v68 = v169;
    v69 = v170;
    v179[2] = v169;
    v179[3] = v170;
    *(v59 + 168) = v175;
    *(v59 + 184) = v60;
    *(v59 + 200) = v61;
    *(v59 + 104) = v62;
    *(v59 + 120) = v63;
    *(v59 + 136) = v64;
    *(v59 + 152) = v65;
    *(v59 + 40) = v66;
    *(v59 + 56) = v67;
    *(v59 + 72) = v68;
    v70 = v178;
    v180 = v178;
    *(v59 + 32) = a9;
    *(v59 + 216) = v70;
    *(v59 + 88) = v69;
    *&v163[0] = v135;
    sub_1D99BB40C(v179, v164);

    sub_1D9A18E90(v59);
    v71 = *(*&v163[0] + 16);
    if (v71)
    {
      v72 = *(*&v163[0] + 176);
      *&v164[128] = *(*&v163[0] + 160);
      *&v164[144] = v72;
      v73 = *(*&v163[0] + 208);
      *&v164[160] = *(*&v163[0] + 192);
      *&v164[176] = v73;
      v74 = *(*&v163[0] + 112);
      *&v164[64] = *(*&v163[0] + 96);
      *&v164[80] = v74;
      v75 = *(*&v163[0] + 144);
      *&v164[96] = *(*&v163[0] + 128);
      *&v164[112] = v75;
      v76 = *(*&v163[0] + 48);
      *v164 = *(*&v163[0] + 32);
      *&v164[16] = v76;
      v77 = *(*&v163[0] + 80);
      *&v164[32] = *(*&v163[0] + 64);
      *&v164[48] = v77;
      sub_1D99AB100(v164, v163, &qword_1ECB51B50, &qword_1D9C88F78);

      v163[8] = v175;
      v163[9] = v176;
      v163[10] = v177;
      *&v163[11] = v178;
      v163[4] = v171;
      v163[5] = v172;
      v163[6] = v173;
      v163[7] = v174;
      v163[0] = v167;
      v163[1] = v168;
      v163[2] = v169;
      v163[3] = v170;
      sub_1D9A0009C(v163);
      v175 = *&v164[136];
      v176 = *&v164[152];
      v177 = *&v164[168];
      v178 = *&v164[184];
      v171 = *&v164[72];
      v172 = *&v164[88];
      v173 = *&v164[104];
      v174 = *&v164[120];
      v167 = *&v164[8];
      v168 = *&v164[24];
      v169 = *&v164[40];
      v170 = *&v164[56];
    }

    else
    {
    }

    v133 = v51;
    v163[8] = v175;
    v163[9] = v176;
    v163[10] = v177;
    v163[4] = v171;
    v163[5] = v172;
    v163[6] = v173;
    v163[7] = v174;
    v163[0] = v167;
    v163[1] = v168;
    v163[2] = v169;
    v163[3] = v170;
    *&v164[128] = v175;
    *&v164[144] = v176;
    *&v164[160] = v177;
    *&v164[64] = v171;
    *&v164[80] = v172;
    *&v164[96] = v173;
    *&v164[112] = v174;
    *v164 = v167;
    *&v164[16] = v168;
    v132 = a12;
    v128 = a10;
    *&v163[11] = v178;
    *&v164[176] = v178;
    *&v164[32] = v169;
    *&v164[48] = v170;
    v78 = swift_allocObject();
    v79 = v176;
    *(v78 + 152) = v175;
    *(v78 + 168) = v79;
    *(v78 + 184) = v177;
    v80 = v172;
    *(v78 + 88) = v171;
    *(v78 + 104) = v80;
    v81 = v174;
    *(v78 + 120) = v173;
    *(v78 + 136) = v81;
    v82 = v168;
    *(v78 + 24) = v167;
    *(v78 + 40) = v82;
    v83 = v170;
    *(v78 + 56) = v169;
    *(v78 + 16) = v160;
    *(v78 + 200) = v178;
    *(v78 + 72) = v83;
    *(v78 + 208) = v71 != 0;
    v84 = v157;
    v138 = v78;
    *(v78 + 216) = a2;
    *(v78 + 224) = v84;

    sub_1D99BB40C(v164, v166);

    sub_1D99BB40C(v164, v166);

    sub_1D99BB40C(v163, v166);
    static Logger.argos.getter(v34);
    if (qword_1EDD2C988 != -1)
    {
      swift_once();
    }

    v134 = v49;
    v135 = v37;
    v131 = a15;
    v130 = a14;
    v129 = a13;
    v127 = a11;
    v85 = v137;
    __swift_project_value_buffer(v137, qword_1EDD2C990);
    v136[1](v34, v85);
    v86 = sub_1D9C7D8BC();
    v87 = sub_1D9C7E09C();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_1D9962000, v86, v87, "searchCameraFrame with searchHistoryEntries", v88, 2u);
      MEMORY[0x1DA7405F0](v88, -1, -1);
    }

    v136 = [objc_allocWithZone(type metadata accessor for CancelSession(0)) init];
    v139 = swift_allocBox();
    v90 = v89;
    v91 = v160;
    sub_1D9A0EC50(v160 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchConfig, v89, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v92 = v144;
    v93 = v159;
    sub_1D9A0EC50(v144, v159, type metadata accessor for VisualQueryContext);
    v94 = v140;
    v96 = v141 + 56;
    v95 = *(v141 + 56);
    v95(v93, 0, 1, v140);
    sub_1D9A3D06C(v93);
    sub_1D99A6AE0(v93, &unk_1ECB51B10, &qword_1D9C86550);
    v141 = *(v91 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow);
    sub_1D9A0EC50(v92, v93, type metadata accessor for VisualQueryContext);
    v95(v93, 0, 1, v94);
    v137 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig;
    sub_1D9A0EC50(v90, v161, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v97 = v92;
    v98 = v143;
    sub_1D9A0EC50(v97, v143, type metadata accessor for VisualQueryContext);
    v99 = (*(v96 + 24) + 32) & ~*(v96 + 24);
    v100 = (v142 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
    v101 = (v100 + 15) & 0xFFFFFFFFFFFFFFF8;
    v102 = swift_allocObject();
    v144 = v102;
    v103 = v138;
    *(v102 + 16) = v127;
    *(v102 + 24) = v103;
    sub_1D9A0ECC0(v98, v102 + v99, type metadata accessor for VisualQueryContext);
    *(v102 + v100) = a9;
    *(v102 + v101) = v149;
    *(v102 + ((v101 + 15) & 0xFFFFFFFFFFFFFFF8)) = v139;
    type metadata accessor for MetricsBucket();
    v104 = swift_allocObject();
    *(v104 + 16) = MEMORY[0x1E69E7CC0];
    v105 = v104;
    strcpy(v193, "E2E - Search");
    BYTE5(v193[1]) = 0;
    HIWORD(v193[1]) = -5120;
    v193[2] = "Search Overall";
    v193[3] = 14;
    v194 = 2;
    type metadata accessor for DurationMeasurement(0);
    swift_allocObject();

    v140 = v105;

    v142 = sub_1D9AFD4B8(v193, v105);

    v149 = *(v141 + 56);
    v106 = swift_allocObject();
    swift_weakInit();
    sub_1D99AB100(v159, v158, &unk_1ECB51B10, &qword_1D9C86550);
    v107 = v150;
    sub_1D9A0EC50(v161, v150, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v108 = (*(v145 + 80) + 208) & ~*(v145 + 80);
    v109 = (v146 + *(v147 + 80) + v108) & ~*(v147 + 80);
    v110 = (v148 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
    v111 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
    v112 = (v111 + 15) & 0xFFFFFFFFFFFFFFF8;
    v113 = swift_allocObject();
    v114 = v163[9];
    *(v113 + 152) = v163[8];
    *(v113 + 168) = v114;
    *(v113 + 184) = v163[10];
    v115 = v163[5];
    *(v113 + 88) = v163[4];
    *(v113 + 104) = v115;
    v116 = v163[7];
    *(v113 + 120) = v163[6];
    *(v113 + 136) = v116;
    v117 = v163[1];
    *(v113 + 24) = v163[0];
    *(v113 + 40) = v117;
    v118 = v163[3];
    *(v113 + 56) = v163[2];
    *(v113 + 16) = v106;
    *(v113 + 200) = *&v163[11];
    *(v113 + 72) = v118;
    sub_1D9A0E758(v158, v113 + v108);
    sub_1D9A0ECC0(v107, v113 + v109, v137);
    *(v113 + v110) = v142;
    v119 = v136;
    *(v113 + v111) = v136;
    *(v113 + v112) = v140;
    v120 = (v113 + ((v112 + 15) & 0xFFFFFFFFFFFFFFF8));
    v121 = v144;
    *v120 = v129;
    v120[1] = v121;
    v165[4] = v130;
    v165[5] = v113;
    v165[0] = MEMORY[0x1E69E9820];
    v165[1] = 1107296256;
    v165[2] = sub_1D9A0A1E0;
    v165[3] = v131;
    v122 = _Block_copy(v165);
    sub_1D99BB40C(v163, v166);

    v143 = v106;

    v158 = v119;

    v123 = v151;
    sub_1D9C7DA3C();
    v166[0] = MEMORY[0x1E69E7CC0];
    sub_1D9A0E7E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
    sub_1D9A0E83C();
    v124 = v153;
    v125 = v156;
    sub_1D9C7E34C();
    MEMORY[0x1DA73E300](0, v123, v124, v122);
    _Block_release(v122);

    (*(v155 + 8))(v124, v125);
    (*(v152 + 8))(v123, v154);
    sub_1D9A0EE60(v161, v137);
    sub_1D99A6AE0(v159, &unk_1ECB51B10, &qword_1D9C86550);

    sub_1D9A0009C(v164);

    sub_1D9A0009C(v164);

    sub_1D99A5748(v134, v133);
    sub_1D9A0009C(v163);
    return sub_1D9A0EE60(v135, type metadata accessor for ParseResult);
  }
}

id VisualIntelligenceService.parseAndSearch(image:regionOfInterest:boundingBoxes:domains:annotation:queryContext:completion:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v70 = a3;
  v65 = a5;
  v66 = a8;
  v64 = a7;
  v76 = a1;
  v69 = sub_1D9C7DA2C();
  v75 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9C7DA4C();
  v73 = *(v12 - 8);
  v74 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for VisualQueryContext(0);
  v58 = *(Context - 8);
  v15 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](Context - 8);
  v63 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v19 = sub_1D9C7D8DC();
  v60 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a2;
  v61 = a2[1];
  v62 = v22;
  static Logger.argos.getter(v21);

  v23 = sub_1D9C7D8BC();
  v24 = sub_1D9C7E09C();
  v25 = os_log_type_enabled(v23, v24);
  v67 = a4;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v57 = a6;
    v27 = v26;
    v28 = swift_slowAlloc();
    v56 = v15;
    v29 = v28;
    aBlock[0] = v28;
    *v27 = 134218242;
    *(v27 + 4) = *(a4 + 16);

    *(v27 + 12) = 2080;
    sub_1D99E3A84(a4);
    v30 = MEMORY[0x1DA73E110]();
    v31 = v19;
    v33 = v32;

    v34 = sub_1D9A0E224(v30, v33, aBlock);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_1D9962000, v23, v24, "Parse and search domain count %ld, domains: %s", v27, 0x16u);
    v35 = __swift_destroy_boxed_opaque_existential_0Tm(v29);
    v15 = v56;
    MEMORY[0x1DA7405F0](v29, -1, -1, v35);
    v36 = v27;
    a6 = v57;
    MEMORY[0x1DA7405F0](v36, -1, -1);

    (*(v60 + 8))(v21, v31);
  }

  else
  {

    (*(v60 + 8))(v21, v19);
  }

  v57 = [objc_allocWithZone(type metadata accessor for CancelSession(0)) init];
  v37 = a6;
  VisualQueryContext.init(_:)(a6, v18);
  v38 = v18;
  v59 = v18;
  v39 = v71;
  v60 = *(v71 + 24);
  v40 = v63;
  sub_1D9A0EC50(v38, v63, type metadata accessor for VisualQueryContext);
  v41 = (*(v58 + 80) + 88) & ~*(v58 + 80);
  v42 = (v15 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = v70;
  *(v43 + 24) = v39;
  *(v43 + 32) = v76;
  *(v43 + 56) = v61;
  *(v43 + 40) = v62;
  v44 = v65;
  *(v43 + 72) = v67;
  *(v43 + 80) = v44;
  sub_1D9A0ECC0(v40, v43 + v41, type metadata accessor for VisualQueryContext);
  v45 = v57;
  *(v43 + v42) = v57;
  v46 = (v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8));
  v47 = v66;
  *v46 = v64;
  v46[1] = v47;
  aBlock[4] = sub_1D9A0EA98;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9A0A1E0;
  aBlock[3] = &block_descriptor_24;
  v48 = _Block_copy(aBlock);
  v49 = v44;
  v50 = v45;

  swift_unknownObjectRetain();
  v51 = v72;
  sub_1D9C7DA3C();
  v77 = MEMORY[0x1E69E7CC0];
  sub_1D9A0E7E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D9A0E83C();
  v53 = v68;
  v52 = v69;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v51, v53, v48);
  _Block_release(v48);
  (*(v75 + 8))(v53, v52);
  (*(v73 + 8))(v51, v74);
  sub_1D9A0EE60(v59, type metadata accessor for VisualQueryContext);

  return v50;
}

void sub_1D9A0CA54(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), uint64_t a4, uint64_t (*a5)(uint64_t a1), uint64_t a6, char *a7, void (*a8)(__int128 *), double a9, double a10, double a11, double a12, uint64_t a13)
{
  v108 = a8;
  v110 = a7;
  v107 = a6;
  v112 = a5;
  v21 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v113 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v114 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v97 - v24;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B20, &qword_1D9C95AE0);
  MEMORY[0x1EEE9AC00](v103);
  v27 = &v97 - v26;
  v102 = type metadata accessor for ParseResult(0);
  MEMORY[0x1EEE9AC00](v102);
  v104 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for VisualQueryContext(0);
  v106 = *(Context - 8);
  v29 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](Context);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v111 = &v97 - v31;
  v101 = a1;
  v32 = *(a1 + 16);
  *&v115 = a4;
  v109 = a13;
  if (v32)
  {
    v98 = v27;
    v99 = a3;
    v100 = a2;
    v33 = a4 + 56;
    v34 = 1 << *(a4 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(a4 + 56);
    v37 = (v34 + 63) >> 6;

    v39 = 0;
    v40 = MEMORY[0x1E69E7CC0];
    v41 = MEMORY[0x1E69E7CC0];
    if (v36)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v42 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        return;
      }

      if (v42 >= v37)
      {
        break;
      }

      v36 = *(v33 + 8 * v42);
      ++v39;
      if (v36)
      {
        v39 = v42;
        do
        {
LABEL_9:
          v43 = *(*(v38 + 48) + (__clz(__rbit64(v36)) | (v39 << 6)));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          LODWORD(v116) = v43;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v41 = sub_1D9AF8974(0, *(v41 + 2) + 1, 1, v41);
          }

          v46 = *(v41 + 2);
          v45 = *(v41 + 3);
          v47 = v46 + 1;
          if (v46 >= v45 >> 1)
          {
            v97 = v46 + 1;
            v51 = sub_1D9AF8974((v45 > 1), v46 + 1, 1, v41);
            v47 = v97;
            v41 = v51;
          }

          v36 &= v36 - 1;
          *(v41 + 2) = v47;
          v48 = &v41[160 * v46];
          v48[32] = v116;
          v49 = *(&v121 + 3);
          *(v48 + 33) = v121;
          *(v48 + 9) = v49;
          *(v48 + 40) = 0u;
          *(v48 + 56) = 0u;
          v48[72] = 0;
          v50 = *(&v117 + 3);
          *(v48 + 73) = v117;
          *(v48 + 19) = v50;
          *(v48 + 5) = 0u;
          *(v48 + 6) = 0u;
          *(v48 + 7) = 0u;
          *(v48 + 8) = 0u;
          *(v48 + 36) = 1065353216;
          v48[156] = 0;
          *(v48 + 148) = 0;
          v48[157] = 1;
          *(v48 + 158) = 0;
          LOWORD(v50) = WORD2(v128);
          *(v48 + 162) = v128;
          *(v48 + 83) = v50;
          *(v48 + 21) = 0;
          *(v48 + 22) = 0;
          *(v48 + 181) = 0;
          v38 = v115;
        }

        while (v36);
      }
    }

    v52 = (v101 + 32);
    __asm { FMOV            V8.2S, #1.0 }

    v58 = v40;
    v59 = v114;
    do
    {

      v60 = v52[1];
      v116 = *v52;
      v115 = v60;
      sub_1D9C7B92C();
      v61 = v115;
      *v25 = v116;
      *(v25 + 1) = v61;
      v25[32] = 1;
      *(v25 + 5) = v40;
      *(v25 + 6) = v41;
      *(v25 + 7) = v40;
      *(v25 + 8) = v40;
      *(v25 + 9) = _D8;
      *(v25 + 11) = 0;
      *(v25 + 12) = 0;
      *(v25 + 10) = 0;
      v25[104] = 0;
      *(v25 + 14) = v40;
      v25[*(v21 + 64)] = 0;
      *&v25[*(v21 + 68)] = v40;
      sub_1D9A0EC50(v25, v59, type metadata accessor for VisualUnderstanding.ImageRegion);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_1D9AF8A90(0, v58[2] + 1, 1, v58);
      }

      v63 = v58[2];
      v62 = v58[3];
      if (v63 >= v62 >> 1)
      {
        v58 = sub_1D9AF8A90((v62 > 1), v63 + 1, 1, v58);
      }

      sub_1D9A0EE60(v25, type metadata accessor for VisualUnderstanding.ImageRegion);
      v58[2] = v63 + 1;
      v64 = v58 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v63;
      v59 = v114;
      sub_1D9A0ECC0(v114, v64, type metadata accessor for VisualUnderstanding.ImageRegion);
      v52 += 2;
      --v32;
    }

    while (v32);

    v65 = Context;
    v66 = v107;
    v67 = *(v107 + *(Context + 52));
    LOBYTE(v121) = 1;
    v68 = *(v102 + 20);
    v69 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(0);
    v70 = v104;
    (*(*(v69 - 8) + 56))(&v104[v68], 1, 1, v69);
    *v70 = v58;
    *(v70 + 8) = 1;
    *(v70 + 16) = 0u;
    *(v70 + 32) = 0u;
    *(v70 + 48) = 0u;
    *(v70 + 64) = 0u;
    *(v70 + 80) = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *(v70 + 88) = _Q0;
    *(v70 + 104) = 0;
    *(v70 + 112) = 0;
    *(v70 + 120) = 1;
    *(v70 + 121) = v121;
    *(v70 + 124) = *(&v121 + 3);
    *(v70 + 128) = 0;
    *(v70 + 136) = 0xE000000000000000;
    *(v70 + 144) = v67;
    *(v70 + 152) = 0;
    *(v70 + 160) = 0;
    *(v70 + 168) = 0;
    *(v70 + 176) = v40;
    v72 = v111;
    sub_1D9A0EC50(v66, v111, type metadata accessor for VisualQueryContext);
    (*(v106 + 56))(v72, 0, 1, v65);
    v73 = v98;
    sub_1D9A0EC50(v70, v98, type metadata accessor for ParseResult);
    swift_storeEnumTagMultiPayload();
    sub_1D9A0D5E0(v99, v112, v72, v110, v73, v108, v109);
    sub_1D99A6AE0(v73, &unk_1ECB51B20, &qword_1D9C95AE0);
    sub_1D99A6AE0(v72, &unk_1ECB51B10, &qword_1D9C86550);
    sub_1D9A0EE60(v70, type metadata accessor for ParseResult);
  }

  else
  {
    v74 = *(a2 + 96);
    swift_getObjectType();
    v75 = a3;
    sub_1D9AF6CF8(&v128);
    *&v125 = a9;
    *(&v125 + 1) = a10;
    v126 = a11;
    v127 = a12;
    *&v116 = v74;
    if (v112)
    {
      VIAnnotation.mappedAnnotation.getter(&v121);
      v76 = v121;
      v77 = v122;
      v78 = v123;
      v79 = v124;
    }

    else
    {
      v76 = xmmword_1D9C86A60;
      v77 = 0uLL;
      v78 = 0uLL;
      v79 = 0uLL;
    }

    v80 = v107;
    v81 = v106;
    v117 = v76;
    v118 = v77;
    v119 = v78;
    v120 = v79;
    v82 = v111;
    sub_1D9A0EC50(v107, v111, type metadata accessor for VisualQueryContext);
    (*(v81 + 56))(v82, 0, 1, Context);
    sub_1D9A0EC50(v80, &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisualQueryContext);
    v83 = (*(v81 + 80) + 40) & ~*(v81 + 80);
    v84 = (v29 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
    v85 = swift_allocObject();
    v85[2] = a2;
    v85[3] = v75;
    v86 = v112;
    v85[4] = v112;
    sub_1D9A0ECC0(&v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v85 + v83, type metadata accessor for VisualQueryContext);
    v87 = v110;
    *(v85 + v84) = v110;
    v88 = (v85 + ((v84 + 15) & 0xFFFFFFFFFFFFFFF8));
    v89 = v109;
    *v88 = v108;
    v88[1] = v89;
    v90 = v129;
    v91 = v130;
    v92 = __swift_project_boxed_opaque_existential_1(&v128, v129);

    swift_unknownObjectRetain();
    v93 = v86;
    v94 = v87;

    v96 = v90;
    v95 = v111;
    sub_1D9B141C0(v92, &v125, v115, &v117, v111, v94, 0, 0, 0, sub_1D9A0EB48, v85, v116, v96, v91);

    sub_1D99A6AE0(v95, &unk_1ECB51B10, &qword_1D9C86550);
    v121 = v117;
    v122 = v118;
    v123 = v119;
    v124 = v120;
    sub_1D99A6AE0(&v121, &qword_1ECB514D0, &unk_1D9C86490);
    __swift_destroy_boxed_opaque_existential_0Tm(&v128);
  }
}

uint64_t sub_1D9A0D498(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), uint64_t (*a4)(uint64_t a1), uint64_t a5, char *a6, void (*a7)(__int128 *), uint64_t a8)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v20 - v16;
  sub_1D9A0EC50(a5, &v20 - v16, type metadata accessor for VisualQueryContext);
  Context = type metadata accessor for VisualQueryContext(0);
  (*(*(Context - 8) + 56))(v17, 0, 1, Context);
  sub_1D9A0D5E0(a3, a4, v17, a6, a1, a7, a8);
  return sub_1D99A6AE0(v17, &unk_1ECB51B10, &qword_1D9C86550);
}

uint64_t sub_1D9A0D5E0(uint64_t (*a1)(uint64_t a1), uint64_t (*a2)(uint64_t a1), uint64_t a3, char *a4, uint64_t a5, void (*a6)(__int128 *), uint64_t a7)
{
  v98 = a3;
  v108 = a6;
  v109 = a7;
  v91 = a2;
  v92 = a1;
  v9 = sub_1D9C7DA2C();
  v103 = *(v9 - 8);
  v104 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1D9C7DA4C();
  v100 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v99 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v95 = *(v12 - 8);
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v106 = &v88 - v13;
  v14 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v93 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v105 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v107 = &v88 - v17;
  v18 = sub_1D9C7D8DC();
  v90 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ParseResult(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B20, &qword_1D9C95AE0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v88 - v25);
  sub_1D99AB100(a5, &v88 - v25, &unk_1ECB51B20, &qword_1D9C95AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v124 = *v26;
    v27 = v124;
    sub_1D9A0EF14(&v124);
    v120 = v134;
    v121 = v135;
    v122 = v136;
    v123 = v137;
    v116 = v130;
    v117 = v131;
    v118 = v132;
    v119 = v133;
    v112 = v126;
    v113 = v127;
    v114 = v128;
    v115 = v129;
    v110 = v124;
    v111 = v125;
    v28 = v27;
    v108(&v110);

    v148 = v120;
    v149 = v121;
    v150 = v122;
    v151 = v123;
    v144 = v116;
    v145 = v117;
    v146 = v118;
    v147 = v119;
    v140 = v112;
    v141 = v113;
    v142 = v114;
    v143 = v115;
    v138 = v110;
    v139 = v111;
    return sub_1D99A6AE0(&v138, &qword_1ECB51B40, &unk_1D9C95AF0);
  }

  else
  {
    v31 = v108;
    v30 = v109;
    sub_1D9A0ECC0(v26, v23, type metadata accessor for ParseResult);
    v32 = *&a4[OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock];
    os_unfair_lock_lock(v32 + 4);
    v33 = a4[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled];
    os_unfair_lock_unlock(v32 + 4);
    if (v33 == 1)
    {
      static Logger.argos.getter(v20);
      v34 = sub_1D9C7D8BC();
      v35 = sub_1D9C7E09C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1D9962000, v34, v35, "parseAndSearchCompletion(): canceled", v36, 2u);
        MEMORY[0x1DA7405F0](v36, -1, -1);
      }

      (*(v90 + 8))(v20, v18);
      sub_1D9A0EEC0();
      v37 = swift_allocError();
      *v38 = 0;
      *&v124 = v37;
      sub_1D9A0EF14(&v124);
      v120 = v134;
      v121 = v135;
      v122 = v136;
      v123 = v137;
      v116 = v130;
      v117 = v131;
      v118 = v132;
      v119 = v133;
      v112 = v126;
      v113 = v127;
      v114 = v128;
      v115 = v129;
      v110 = v124;
      v111 = v125;
      v31(&v110);
      v148 = v120;
      v149 = v121;
      v150 = v122;
      v151 = v123;
      v144 = v116;
      v145 = v117;
      v146 = v118;
      v147 = v119;
      v140 = v112;
      v141 = v113;
      v142 = v114;
      v143 = v115;
      v138 = v110;
      v139 = v111;
      sub_1D99A6AE0(&v138, &qword_1ECB51B40, &unk_1D9C95AF0);
    }

    else
    {
      v39 = *(v23 + 9);
      v40 = *(v23 + 7);
      v132 = *(v23 + 8);
      v133 = v39;
      v41 = *(v23 + 9);
      v134 = *(v23 + 10);
      v42 = *(v23 + 5);
      v43 = *(v23 + 3);
      v128 = *(v23 + 4);
      v129 = v42;
      v44 = *(v23 + 5);
      v45 = *(v23 + 7);
      v130 = *(v23 + 6);
      v131 = v45;
      v46 = *(v23 + 1);
      v124 = *v23;
      v125 = v46;
      v47 = *(v23 + 3);
      v49 = *v23;
      v48 = *(v23 + 1);
      v126 = *(v23 + 2);
      v127 = v47;
      v146 = v132;
      v147 = v41;
      v148 = *(v23 + 10);
      v142 = v128;
      v143 = v44;
      v144 = v130;
      v145 = v40;
      v138 = v49;
      v139 = v48;
      *&v135 = *(v23 + 22);
      *&v149 = *(v23 + 22);
      v140 = v126;
      v141 = v43;
      VisualUnderstanding.imageRegions.getter();
      v51 = v50;
      v89 = a4;
      if (v91)
      {
        VIAnnotation.mappedAnnotation.getter(&v138);
        v52 = v138;
        v53 = v139;
        v54 = v140;
        v55 = v141;
      }

      else
      {
        v52 = xmmword_1D9C86A60;
        v53 = 0uLL;
        v54 = 0uLL;
        v55 = 0uLL;
      }

      v110 = v52;
      v111 = v53;
      v112 = v54;
      v113 = v55;
      sub_1D9C7B59C();
      swift_allocObject();
      sub_1D9C7B58C();
      v146 = v132;
      v147 = v133;
      v148 = v134;
      *&v149 = v135;
      v142 = v128;
      v143 = v129;
      v144 = v130;
      v145 = v131;
      v138 = v124;
      v139 = v125;
      v140 = v126;
      v141 = v127;
      sub_1D9A0EBFC();
      v56 = sub_1D9C7B57C();
      v58 = v57;

      VisualUnderstanding.init(_:annotation:payload:)(v51, &v110, v56, v58, &v138);
      v91 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig;
      v59 = v97;
      v60 = v107;
      sub_1D9A0EC50(v97 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchConfig, v107, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
      v61 = v98;
      sub_1D9A3D06C(v98);
      v62 = *(v59 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow);
      swift_getObjectType();
      sub_1D9AF6CF8(v155);
      v63 = swift_allocObject();
      v92 = v63;
      *(v63 + 2) = v59;
      *(v63 + 3) = v31;
      *(v63 + 4) = v30;
      type metadata accessor for MetricsBucket();
      v64 = swift_allocObject();
      *(v64 + 16) = MEMORY[0x1E69E7CC0];
      v65 = v64;
      strcpy(v156, "E2E - Search");
      BYTE5(v156[1]) = 0;
      HIWORD(v156[1]) = -5120;
      v156[2] = "Search Overall";
      v156[3] = 14;
      v157 = 2;
      type metadata accessor for DurationMeasurement(0);
      swift_allocObject();

      v108 = v65;
      v109 = sub_1D9AFD4B8(v156, v65);

      v97 = *(v62 + 56);
      v66 = swift_allocObject();
      v90 = v66;
      swift_weakInit();
      sub_1D99AB100(v155, v153, &qword_1ECB51B30, &qword_1D9C99390);
      sub_1D99AB100(v61, v106, &unk_1ECB51B10, &qword_1D9C86550);
      sub_1D9A0EC50(v60, v105, v91);
      v67 = (*(v95 + 80) + 248) & ~*(v95 + 80);
      v68 = (v96 + *(v93 + 80) + v67) & ~*(v93 + 80);
      v69 = (v94 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
      v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
      v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
      v72 = swift_allocObject();
      *(v72 + 16) = v66;
      v73 = v147;
      *(v72 + 152) = v146;
      *(v72 + 168) = v73;
      *(v72 + 184) = v148;
      *(v72 + 200) = v149;
      v74 = v143;
      *(v72 + 88) = v142;
      *(v72 + 104) = v74;
      v75 = v145;
      *(v72 + 120) = v144;
      *(v72 + 136) = v75;
      v76 = v139;
      *(v72 + 24) = v138;
      *(v72 + 40) = v76;
      v77 = v141;
      *(v72 + 56) = v140;
      *(v72 + 72) = v77;
      v78 = v153[1];
      *(v72 + 208) = v153[0];
      *(v72 + 224) = v78;
      *(v72 + 240) = v154;
      sub_1D9A0E758(v106, v72 + v67);
      sub_1D9A0ECC0(v105, v72 + v68, v91);
      v79 = v108;
      *(v72 + v69) = v109;
      v80 = v89;
      *(v72 + v70) = v89;
      *(v72 + v71) = v79;
      v81 = (v72 + ((v71 + 15) & 0xFFFFFFFFFFFFFFF8));
      v82 = v92;
      *v81 = sub_1D9A0ECB8;
      v81[1] = v82;
      v152[4] = sub_1D9A0ED28;
      v152[5] = v72;
      v152[0] = MEMORY[0x1E69E9820];
      v152[1] = 1107296256;
      v152[2] = sub_1D9A0A1E0;
      v152[3] = &block_descriptor_39;
      v83 = _Block_copy(v152);

      sub_1D99BB40C(&v138, &v110);

      v84 = v80;

      v85 = v99;
      sub_1D9C7DA3C();
      *&v110 = MEMORY[0x1E69E7CC0];
      sub_1D9A0E7E4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
      sub_1D9A0E83C();
      v86 = v101;
      v87 = v104;
      sub_1D9C7E34C();
      MEMORY[0x1DA73E300](0, v85, v86, v83);
      _Block_release(v83);

      sub_1D9A0009C(&v138);

      (*(v103 + 8))(v86, v87);
      (*(v100 + 8))(v85, v102);
      sub_1D99A6AE0(v155, &qword_1ECB51B30, &qword_1D9C99390);
      sub_1D9A0EE60(v107, v91);
    }

    return sub_1D9A0EE60(v23, type metadata accessor for ParseResult);
  }
}

unint64_t sub_1D9A0E224(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D9A0E2F0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1D99A579C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_1D9A0E2F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D9A0E3FC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1D9C7E47C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1D9A0E3FC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D9A0E448(a1, a2);
  sub_1D9A0E578(&unk_1F5527A48);
  return v3;
}

void *sub_1D9A0E448(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D99C5A88(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D9C7E47C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D9C7DDEC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D99C5A88(v10, 0);
        result = sub_1D9C7E3DC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D9A0E578(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D9A0E664(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1D9A0E664(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512A8, &qword_1D9C85E20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1D9A0E758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D9A0E7E4()
{
  result = qword_1EDD2C680;
  if (!qword_1EDD2C680)
  {
    sub_1D9C7DA2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C680);
  }

  return result;
}

unint64_t sub_1D9A0E83C()
{
  result = qword_1EDD2C4D0;
  if (!qword_1EDD2C4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB534D0, &qword_1D9C93AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C4D0);
  }

  return result;
}

void sub_1D9A0E8A0()
{
  v1 = *(type metadata accessor for VisualQueryContext(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 19) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 39) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 71) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1D9A09728(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), (v0 + v5), *(v0 + v6), *(v0 + v7), *(v0 + v7 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + v4 + 24), *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + v8), *(v0 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1D9A0E998()
{
  v1 = *(type metadata accessor for VisualQueryContext(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 19) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 39) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 71) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1D9A0A7A4(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), (v0 + v5), *(v0 + v6), *(v0 + v6 + 8), *(v0 + v7), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + v4 + 24), *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + v7 + 8), *(v0 + v8), *(v0 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1D9A0EA98()
{
  v1 = *(type metadata accessor for VisualQueryContext(0) - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D9A0CA54(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 72), *(v0 + 80), v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1D9A0EB48(uint64_t a1)
{
  v3 = *(type metadata accessor for VisualQueryContext(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[2];
  v7 = v1[3];
  v8 = *(v1 + v5);
  v9 = v1[4];
  v10 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 1);

  return sub_1D9A0D498(a1, v6, v7, v9, v1 + v4, v8, v11, v12);
}

unint64_t sub_1D9A0EBFC()
{
  result = qword_1EDD2C1B8;
  if (!qword_1EDD2C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C1B8);
  }

  return result;
}

uint64_t sub_1D9A0EC50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A0ECC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1D9A0ED28()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v2 = (*(v1 + 80) + 248) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9B982C4(*(v0 + 16), v0 + 24, v0 + 208, v0 + v2, v0 + v5, *(v0 + v6), *(v0 + v7), *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1D9A0EE60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D9A0EEC0()
{
  result = qword_1ECB51B38;
  if (!qword_1ECB51B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51B38);
  }

  return result;
}

uint64_t sub_1D9A0EF20(__int128 *a1, uint64_t *a2, void *a3, uint64_t a4, char a5, void (*a6)(_OWORD *))
{
  v8 = a1[11];
  v55[10] = a1[10];
  v55[11] = v8;
  v55[12] = a1[12];
  v9 = a1[7];
  v55[6] = a1[6];
  v55[7] = v9;
  v10 = a1[8];
  v55[9] = a1[9];
  v55[8] = v10;
  v11 = a1[3];
  v55[2] = a1[2];
  v55[3] = v11;
  v12 = a1[4];
  v55[5] = a1[5];
  v55[4] = v12;
  v13 = *a1;
  v55[1] = a1[1];
  v55[0] = v13;
  if (a3)
  {
    *&v40[0] = a3;
LABEL_9:
    sub_1D9A0F620(v40);
    goto LABEL_10;
  }

  v16 = *a2;
  v18 = a2[1];
  v17 = a2[2];
  v19 = a1[11];
  v51 = a1[10];
  v52 = v19;
  v53 = a1[12];
  v20 = a1[7];
  v47 = a1[6];
  v48 = v20;
  v21 = a1[9];
  v49 = a1[8];
  v50 = v21;
  v22 = a1[3];
  v43 = a1[2];
  v44 = v22;
  v23 = a1[5];
  v45 = a1[4];
  v46 = v23;
  v24 = a1[1];
  v41 = *a1;
  v42 = v24;
  if (sub_1D99EDCB0(&v41) == 1 || !v17)
  {
    v28 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v29 = sub_1D9C7DC4C();
    v30 = [v28 initWithDomain:v29 code:-1 userInfo:0];

    *&v40[0] = v30;
    goto LABEL_9;
  }

  if (a5)
  {
    v25 = a4;
    if (v18)
    {
      v26 = 0x80000001D9CA58D0;
      v27 = 0xD000000000000011;
    }

    else
    {
      v26 = 0xE800000000000000;
      v27 = 0x64657463656C6573;
    }
  }

  else
  {
    v26 = 0xE500000000000000;
    v27 = 0x6573726170;
    v25 = a4;
  }

  v40[10] = v51;
  v40[11] = v52;
  v40[12] = v53;
  v40[6] = v47;
  v40[7] = v48;
  v40[8] = v49;
  v40[9] = v50;
  v40[2] = v43;
  v40[3] = v44;
  v40[4] = v45;
  v40[5] = v46;
  v40[0] = v41;
  v40[1] = v42;
  v33 = *(v25 + 144);
  *(&v40[22] + 8) = *(v25 + 128);
  *(&v40[23] + 8) = v33;
  *(&v40[24] + 8) = *(v25 + 160);
  v34 = *(v25 + 80);
  *(&v40[18] + 8) = *(v25 + 64);
  *(&v40[19] + 8) = v34;
  v35 = *(v25 + 112);
  *(&v40[20] + 8) = *(v25 + 96);
  *(&v40[21] + 8) = v35;
  v36 = *(v25 + 48);
  *(&v40[16] + 8) = *(v25 + 32);
  *(&v40[17] + 8) = v36;
  v37 = *(v25 + 16);
  *(&v40[14] + 8) = *v25;
  v38 = *(v25 + 176);
  *(&v40[15] + 8) = v37;
  *&v40[13] = v16;
  BYTE8(v40[13]) = v18 & 1;
  *(&v40[25] + 1) = v38;
  *&v40[26] = v27;
  *&v40[14] = v17;
  *(&v40[26] + 1) = v26;
  v39 = v25;
  sub_1D9A0F62C(v40);
  sub_1D99AB100(v55, __dst, &unk_1ECB51B60, &unk_1D9C95B00);

  sub_1D99BB40C(v39, __dst);
LABEL_10:
  memcpy(__dst, v40, 0x1B1uLL);
  memcpy(v40, __dst, 0x1B1uLL);
  v31 = a3;
  a6(v40);
  return sub_1D99A6AE0(__dst, &qword_1ECB51B58, &unk_1D9C88F80);
}

uint64_t sub_1D9A0F204(uint64_t a1)
{
  v3 = *(type metadata accessor for VisualQueryContext(0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  return sub_1D9A0B2B4(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 48), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), &unk_1F552CD60, *(v1 + 40), &unk_1F552CD88, sub_1D9A0F5F4, &unk_1F552CDB0, sub_1D9A0F618, sub_1D9A0F61C, &block_descriptor_63);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 184) & ~v2;
  v4 = *(v1 + 64);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));
  if (*(v0 + 120) != 1)
  {
  }

  v5 = v0 + v3;
  Context = type metadata accessor for VisualQueryContext(0);
  if (!(*(*(Context - 1) + 48))(v0 + v3, 1, Context))
  {
    v15 = v4;

    v7 = Context[10];
    v8 = sub_1D9C7B80C();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    if (!v10(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }

    swift_unknownObjectRelease();
    v11 = Context[14];
    if (!v10(v5 + v11, 1, v8))
    {
      (*(v9 + 8))(v5 + v11, v8);
    }

    v4 = v15;
  }

  v12 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;

  sub_1D99A5748(*(v0 + v13), *(v0 + v13 + 8));

  return MEMORY[0x1EEE6BDD0](v0, ((((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t objectdestroy_41Tm()
{
  Context = type metadata accessor for VisualQueryContext(0);
  v2 = *(*(Context - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v11 = *(*(Context - 1) + 64);

  v4 = v0 + v3;

  v5 = Context[10];
  v6 = sub_1D9C7B80C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  swift_unknownObjectRelease();
  v9 = Context[14];
  if (!v8(v4 + v9, 1, v6))
  {
    (*(v7 + 8))(v4 + v9, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v11 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1D9A0F848(uint64_t a1)
{
  v3 = *(type metadata accessor for VisualQueryContext(0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  return sub_1D9A0B2B4(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 48), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), &unk_1F552CE78, *(v1 + 40), &unk_1F552CEA0, sub_1D9A103C8, &unk_1F552CEC8, sub_1D9A103C4, sub_1D9A103A0, &block_descriptor_89);
}

void sub_1D9A0F94C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v2 = (*(v1 + 80) + 184) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1D9B09C00(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + 48, (v0 + 120), v0 + v2, *(v0 + v3), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + v4), *(v0 + v5), *(v0 + v5 + 8), *(v0 + v6), *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_52Tm()
{

  if (*(v0 + 32) != 1)
  {
  }

  if (*(v0 + 176))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 232, 7);
}

uint64_t objectdestroy_55Tm()
{
  Context = type metadata accessor for VisualQueryContext(0);
  v2 = *(*(Context - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v11 = *(*(Context - 1) + 64);

  v4 = v0 + v3;

  v5 = Context[10];
  v6 = sub_1D9C7B80C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  swift_unknownObjectRelease();
  v9 = Context[14];
  if (!v8(v4 + v9, 1, v6))
  {
    (*(v7 + 8))(v4 + v9, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((((v11 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_1D9A0FD08(uint64_t a1)
{
  v3 = *(type metadata accessor for VisualQueryContext(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1D9B2B464(a1, v8, v9, v1 + v4, v10, v11, v7);
}

uint64_t objectdestroy_59Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 208) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = v4 + v6;
  v31 = *(*(v5 - 1) + 64);

  if (*(v0 + 32) != 1)
  {
  }

  v8 = v3 + v7;

  if (*(v0 + 176))
  {
  }

  v30 = v6;
  v9 = v8 & ~v6;

  v10 = v0 + v3;
  Context = type metadata accessor for VisualQueryContext(0);
  if (!(*(*(Context - 1) + 48))(v10, 1, Context))
  {
    v28 = v9;
    v29 = v2;

    v12 = Context[10];
    v13 = sub_1D9C7B80C();
    v14 = *(v13 - 8);
    v15 = *(v14 + 48);
    if (!v15(v10 + v12, 1, v13))
    {
      (*(v14 + 8))(v10 + v12, v13);
    }

    swift_unknownObjectRelease();
    v16 = Context[14];
    if (!v15(v10 + v16, 1, v13))
    {
      (*(v14 + 8))(v10 + v16, v13);
    }

    v9 = v28;
    v2 = v29;
  }

  v17 = v9;
  v18 = v0 + v9;

  v19 = v5[7];
  v20 = sub_1D9C7D3CC();
  v21 = *(*(v20 - 8) + 8);
  v21(v0 + v9 + v19, v20);
  v22 = v0 + v9 + v5[8];
  v23 = type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {

    v21(v22 + *(v23 + 28), v20);
  }

  v24 = v18 + v5[9];
  v25 = type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig(0);
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    v21(v24 + *(v25 + 20), v20);
  }

  v26 = (((v31 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, ((((v26 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | v30 | 7);
}

double sub_1D9A10248()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v2 = (*(v1 + 80) + 208) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9B98A1C(*(v0 + 16), v0 + 24, v0 + v2, v0 + v5, *(v0 + v6), *(v0 + v7), *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void *sub_1D9A103CC()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  if (v1 == 0xD000000000000019 && 0x80000001D9CA58F0 == v2)
  {
    return 0;
  }

  v5 = v0[3];
  if (sub_1D9C7E7DC())
  {
    return 0;
  }

  v7 = v5;
  return v5;
}

void *sub_1D9A10458()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  if (v1 == 0xD000000000000019 && 0x80000001D9CA58F0 == v2)
  {
    return 0;
  }

  v5 = *v0;
  if (sub_1D9C7E7DC())
  {
    return 0;
  }

  v7 = v5;
  return v5;
}

uint64_t sub_1D9A104D8()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D9A10510@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v59 - v10;
  v11 = sub_1D9C7B93C();
  v65 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v59 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v66 = &v59 - v20;
  v21 = a2[9];
  v22 = a2[7];
  v91 = a2[8];
  v92 = v21;
  v23 = a2[9];
  v93 = a2[10];
  v24 = a2[5];
  v25 = a2[3];
  v87 = a2[4];
  v88 = v24;
  v26 = a2[5];
  v27 = a2[7];
  v89 = a2[6];
  v90 = v27;
  v28 = a2[1];
  v83 = *a2;
  v84 = v28;
  v29 = a2[3];
  v31 = *a2;
  v30 = a2[1];
  v85 = a2[2];
  v86 = v29;
  v79 = v91;
  v80 = v23;
  v81 = a2[10];
  v75 = v87;
  v76 = v26;
  v77 = v89;
  v78 = v22;
  v71 = v31;
  v72 = v30;
  v94 = *(a2 + 22);
  v82 = *(a2 + 22);
  v73 = v85;
  v74 = v25;
  VisualUnderstanding.imageRegions.getter();
  v33 = *(v32 + 16);
  v69 = a3;
  if (v33)
  {
    v61 = v11;
    v62 = v8;
    v67 = a1;
    v70 = MEMORY[0x1E69E7CC0];
    v34 = v32;
    sub_1D9C7E4AC();
    v35 = *(v14 + 80);
    v59 = v34;
    v60 = v14;
    v36 = v34 + ((v35 + 32) & ~v35);
    v37 = *(v14 + 72);
    do
    {
      sub_1D99B1BBC(v36, v16);
      sub_1D9BD9A98(@"glyph");
      sub_1D9A10BC0(v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9C7E48C();
      sub_1D9C7E4BC();
      sub_1D9C7E4CC();
      sub_1D9C7E49C();
      v36 += v37;
      --v33;
    }

    while (v33);

    v38 = v70;
    a1 = v67;
    v11 = v61;
    v8 = v62;
    v14 = v60;
  }

  else
  {

    v38 = MEMORY[0x1E69E7CC0];
  }

  v67 = v38;
  v79 = v91;
  v80 = v92;
  v81 = v93;
  v82 = v94;
  v75 = v87;
  v76 = v88;
  v77 = v89;
  v78 = v90;
  v71 = v83;
  v72 = v84;
  v73 = v85;
  v74 = v86;
  VisualUnderstanding.imageRegions.getter();
  v40 = v39;
  sub_1D9A0009C(&v83);
  v41 = v68;
  if (*(v40 + 16))
  {
    v42 = v63;
    sub_1D99B1BBC(v40 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v63);

    v43 = v66;
    sub_1D99B1CE4(v42, v66);
    v44 = sub_1D9BD9A98(@"infoPanel");
    v45 = v64;
    sub_1D9C7B92C();
    sub_1D9C7B91C();
    (*(v65 + 8))(v45, v11);
    v46 = sub_1D9C7DC4C();

    [v44 setIdentifier_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512E8, &qword_1D9C94280);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1D9C88F90;
    *(v47 + 32) = v44;
    sub_1D9A10BC0(v43, type metadata accessor for VisualUnderstanding.ImageRegion);
  }

  else
  {

    v47 = MEMORY[0x1E69E7CC0];
  }

  sub_1D99A85E0(a1, v41);
  Context = type metadata accessor for VisualQueryContext(0);
  v49 = *(*(Context - 8) + 48);
  if (v49(v41, 1, Context) == 1)
  {
    sub_1D99A8650(v41);
    v50 = 0;
  }

  else
  {
    v50 = *(v41 + *(Context + 52));
    sub_1D9A10BC0(v41, type metadata accessor for VisualQueryContext);
  }

  v51 = v69;
  sub_1D99A85E0(a1, v8);
  if (v49(v8, 1, Context) == 1)
  {
    sub_1D99A8650(v8);
    v52 = v67;
LABEL_15:

    v54 = 0;
    v53 = 0xE000000000000000;
    goto LABEL_16;
  }

  v54 = *v8;
  v53 = v8[1];

  sub_1D9A10BC0(v8, type metadata accessor for VisualQueryContext);
  v52 = v67;
  if (!v53)
  {
    goto LABEL_15;
  }

LABEL_16:
  *&v71 = v47;
  sub_1D9A18F98(v52);
  v55 = objc_allocWithZone(MEMORY[0x1E69CA598]);
  sub_1D9A10B74();
  v56 = sub_1D9C7DF1C();

  v57 = [v55 initWithSuggestions_];

  result = sub_1D99A8650(a1);
  *v51 = v50;
  *(v51 + 8) = v54;
  *(v51 + 16) = v53;
  *(v51 + 24) = v57;
  *(v51 + 32) = 0;
  return result;
}

unint64_t sub_1D9A10B74()
{
  result = qword_1EDD2A698;
  if (!qword_1EDD2A698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD2A698);
  }

  return result;
}

uint64_t sub_1D9A10BC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D9A10C58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_1D9A10CA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9A10D0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1D9A10D54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9A10DC0(char *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v97 = a5;
  v100 = a1;
  v101 = a4;
  v104 = a2;
  v90 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement(0);
  v6 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v93 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v90 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v90 - v11;
  v12 = sub_1D9C7D8DC();
  v102 = *(v12 - 8);
  v103 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v99 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v90 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v90 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v96 = &v90 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v91 = &v90 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v95 = &v90 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v90 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B78, &unk_1D9C8BDC0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v90 - v29;
  v31 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a3;
  sub_1D99AB100(v101, v30, &qword_1ECB51B78, &unk_1D9C8BDC0);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_1D99A6AE0(v30, &qword_1ECB51B78, &unk_1D9C8BDC0);
LABEL_11:
    v46 = v102;
    v45 = v103;
    static Logger.argos.getter(v16);
    v47 = v99;
    sub_1D9A3E0E0(v99);
    v48 = v46[1];
    v48(v16, v45);
    v49 = sub_1D9C7D8BC();
    v50 = sub_1D9C7E09C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1D9962000, v49, v50, "Not enabled. Return true.", v51, 2u);
      MEMORY[0x1DA7405F0](v51, -1, -1);
    }

    v48(v47, v45);
    goto LABEL_14;
  }

  result = sub_1D9A142A8(v30, v34, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
  if (*v34 != 1)
  {
    sub_1D9A14378(v34, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
    goto LABEL_11;
  }

  v37 = *(v34 + 2);
  v38 = *(v37 + 16);
  v40 = v102;
  v39 = v103;
  if (!v38)
  {
    static Logger.argos.getter(v27);
    v53 = v95;
    sub_1D9A3E0E0(v95);
    v54 = v40[1];
    v54(v27, v39);
    v55 = sub_1D9C7D8BC();
    v56 = sub_1D9C7E09C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1D9962000, v55, v56, "No requirements is specified. Always keep the domain.", v57, 2u);
      MEMORY[0x1DA7405F0](v57, -1, -1);
    }

    v54(v53, v39);
LABEL_19:
    sub_1D9A14378(v34, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
LABEL_14:
    result = 1;
    v52 = 27;
LABEL_15:
    *v100 = v52;
    return result;
  }

  v41 = 0;
  v43 = v97;
  v42 = v98;
  while (v41 < *(v37 + 16))
  {
    sub_1D9A14310(v37 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v41, v42, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
    LOBYTE(v105) = v35;
    sub_1D9A12900(v104, &v105, v42, v43);
    if ((v44 & 1) == 0)
    {
      v104 = v34;
      v58 = v91;
      static Logger.argos.getter(v91);
      v59 = v96;
      sub_1D9A3E0E0(v96);
      v60 = v40[1];
      v60(v58, v39);
      v61 = v92;
      sub_1D9A14310(v42, v92, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
      v62 = sub_1D9C7D8BC();
      v63 = sub_1D9C7E09C();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = v61;
        v102 = swift_slowAlloc();
        v105 = v102;
        *v64 = 136315138;
        sub_1D9A141F8();
        v66 = v39;
        v67 = v60;
        v68 = sub_1D9C7E7EC();
        v70 = v69;
        sub_1D9A14378(v65, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
        v71 = v68;
        v60 = v67;
        v39 = v66;
        v72 = sub_1D9A0E224(v71, v70, &v105);

        *(v64 + 4) = v72;
        _os_log_impl(&dword_1D9962000, v62, v63, "Failed to satisfy requirement: %s", v64, 0xCu);
        v73 = v102;
        v74 = __swift_destroy_boxed_opaque_existential_0Tm(v102);
        MEMORY[0x1DA7405F0](v73, -1, -1, v74);
        MEMORY[0x1DA7405F0](v64, -1, -1);

        v75 = v96;
        v76 = v66;
      }

      else
      {

        sub_1D9A14378(v61, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
        v75 = v59;
        v76 = v39;
      }

      v60(v75, v76);
      v78 = v93;
      v77 = v94;
      v79 = *(v42 + 48);
      v80 = *(v42 + 56);
      v81 = HIBYTE(v80) & 0xF;
      if ((v80 & 0x2000000000000000) == 0)
      {
        v81 = v79 & 0xFFFFFFFFFFFFLL;
      }

      if (v81)
      {

        v52 = sub_1D9A163E0(v79, v80);
        if (v52 == 27)
        {
          static Logger.argos.getter(v77);
          sub_1D9A14310(v42, v78, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
          v82 = sub_1D9C7D8BC();
          v83 = sub_1D9C7E0AC();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v105 = v85;
            *v84 = 136315138;
            v86 = *(v78 + 56);
            v102 = *(v78 + 48);

            sub_1D9A14378(v78, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
            v87 = sub_1D9A0E224(v102, v86, &v105);

            *(v84 + 4) = v87;
            _os_log_impl(&dword_1D9962000, v82, v83, "Failed to parse new_domain_if_not_meet_requirement: %s", v84, 0xCu);
            v88 = __swift_destroy_boxed_opaque_existential_0Tm(v85);
            MEMORY[0x1DA7405F0](v85, -1, -1, v88);
            MEMORY[0x1DA7405F0](v84, -1, -1);

            v89 = v94;
          }

          else
          {

            sub_1D9A14378(v78, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
            v89 = v77;
          }

          v60(v89, v39);
          goto LABEL_31;
        }
      }

      else
      {
LABEL_31:
        v52 = 27;
      }

      sub_1D9A14378(v42, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
      sub_1D9A14378(v104, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
      result = 0;
      goto LABEL_15;
    }

    ++v41;
    result = sub_1D9A14378(v42, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
    if (v38 == v41)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9A11748(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = a2;
    v3 = result;
    if (result)
    {
      v4 = *(a2 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = 0;
        v7 = a2 + 48;
        v33 = *(a2 + 16);
        v29 = v4 - 1;
        v8 = MEMORY[0x1E69E7CC0];
        v32 = MEMORY[0x1E69E7CC0];
        v30 = a2 + 48;
        while (1)
        {
          v31 = v6;
          v9 = (v7 + 24 * v5);
          while (1)
          {
            if (v5 >= *(v2 + 16))
            {
              __break(1u);
              goto LABEL_32;
            }

            v10 = *(v9 - 2);
            v11 = *(v9 - 1);
            v12 = *v9;
            v13 = v5 + 1;
            v14 = *(v8 + 16);
            if (v14 >= v3)
            {
              break;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1D99FE278(0, v14 + 1, 1);
            }

            v16 = *(v8 + 16);
            v15 = *(v8 + 24);
            if (v16 >= v15 >> 1)
            {
              result = sub_1D99FE278((v15 > 1), v16 + 1, 1);
            }

            *(v8 + 16) = v16 + 1;
            v17 = v8 + 24 * v16;
            *(v17 + 32) = v10;
            *(v17 + 40) = v11;
            *(v17 + 48) = v12;
            v9 += 6;
            v5 = v13;
            if (v33 == v13)
            {
              goto LABEL_29;
            }
          }

          if (v31 >= v14)
          {
            goto LABEL_33;
          }

          v18 = v8 + 24 * v31;
          v19 = *(v18 + 40);
          v27 = *(v18 + 32);
          v20 = *(v18 + 48);

          v28 = v19;

          v21 = v32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D99FE278(0, *(v32 + 16) + 1, 1);
            v21 = v32;
          }

          v23 = *(v21 + 16);
          v22 = *(v21 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_1D99FE278((v22 > 1), v23 + 1, 1);
            v21 = v32;
          }

          *(v21 + 16) = v23 + 1;
          v32 = v21;
          v24 = v21 + 24 * v23;
          *(v24 + 32) = v27;
          *(v24 + 40) = v28;
          *(v24 + 48) = v20;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D99E9268(v8);
            v8 = result;
          }

          v7 = v30;
          if (v31 >= *(v8 + 16))
          {
            goto LABEL_34;
          }

          v25 = v8 + 24 * v31;
          *(v25 + 32) = v10;
          *(v25 + 40) = v11;
          *(v25 + 48) = v12;

          if ((v31 + 1) < v3)
          {
            v6 = v31 + 1;
          }

          else
          {
            v6 = 0;
          }

          if (v29 == v5++)
          {
            goto LABEL_29;
          }
        }
      }

      v32 = MEMORY[0x1E69E7CC0];
LABEL_29:

      return v32;
    }

    return v2;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1D9A119DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v95 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C0, &qword_1D9C8AF90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v89 - v11;
  v13 = _s14DetectedResultVMa(0);
  v93 = *(v13 - 8);
  v94 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v90 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v92 = &v89 - v16;
  v17 = sub_1D9C7D8DC();
  v18 = *(v17 - 8);
  v96 = v17;
  v97 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v91 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v89 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v89 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v89 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v89 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v89 - v33;
  v35 = *a5;
  if (!*(*a6 + 16) || !a3 || (sub_1D9A62460(*a6, a4), !v37))
  {
    v48 = a6[1];
    v49 = v95;
    if (*(v48 + 16))
    {
      v50 = *(v95 + 56);
      v98 = v35;
      v51 = sub_1D9A601D8(v48, &v98, v50);
      if (*(v51 + 16))
      {
        static Logger.argos.getter(v28);
        sub_1D9A3E0E0(v25);
        v52 = v96;
        v53 = v97 + 8;
        v54 = *(v97 + 8);
        v54(v28, v96);

        v55 = sub_1D9C7D8BC();
        v56 = sub_1D9C7E09C();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v97 = v53;
          v98 = v58;
          v59 = v58;
          *v57 = 136315138;
          v60 = MEMORY[0x1DA73E110](v51, v94);
          v62 = v61;

          v63 = sub_1D9A0E224(v60, v62, &v98);

          *(v57 + 4) = v63;
          _os_log_impl(&dword_1D9962000, v55, v56, "Satisfied detector label %s", v57, 0xCu);
          v64 = __swift_destroy_boxed_opaque_existential_0Tm(v59);
          MEMORY[0x1DA7405F0](v59, -1, -1, v64);
          MEMORY[0x1DA7405F0](v57, -1, -1);
        }

        else
        {
        }

        v54(v25, v52);
        return 1;
      }
    }

    v65 = a6[2];
    if (*(v65 + 16))
    {
      sub_1D9A606A4(v65, *(v49 + 56), *(v49 + 64), v12);
      v66 = v94;
      if ((*(v93 + 48))(v12, 1, v94) != 1)
      {
        v68 = v92;
        sub_1D9A142A8(v12, v92, _s14DetectedResultVMa);
        static Logger.argos.getter(v22);
        v69 = v91;
        sub_1D9A3E0E0(v91);
        v70 = v96;
        v71 = *(v97 + 8);
        v72 = v22;
        v73 = v97 + 8;
        v71(v72, v96);
        v74 = v90;
        sub_1D9A14310(v68, v90, _s14DetectedResultVMa);
        v75 = sub_1D9C7D8BC();
        v76 = sub_1D9C7E09C();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *v77 = 136315138;
          v79 = (v74 + *(v66 + 28));
          v97 = v73;
          v98 = 0;
          v80 = *v79;
          v81 = v79[1];
          v82 = v79[2];
          v83 = v79[3];
          v99 = 0xE000000000000000;
          v100 = v78;
          sub_1D9C7E40C();
          MEMORY[0x1DA73DF90](0xD00000000000001FLL, 0x80000001D9CA5340);
          MEMORY[0x1DA73DF90](v82, v83);
          MEMORY[0x1DA73DF90](0xD000000000000014, 0x80000001D9CA5360);
          MEMORY[0x1DA73DF90](v80, v81);
          v84 = v98;
          v85 = v99;
          sub_1D9A14378(v90, _s14DetectedResultVMa);
          v86 = sub_1D9A0E224(v84, v85, &v100);

          *(v77 + 4) = v86;
          _os_log_impl(&dword_1D9962000, v75, v76, "Satisfied detector result with DPN %s", v77, 0xCu);
          v87 = __swift_destroy_boxed_opaque_existential_0Tm(v78);
          MEMORY[0x1DA7405F0](v78, -1, -1, v87);
          MEMORY[0x1DA7405F0](v77, -1, -1);

          v71(v91, v96);
          v88 = v92;
        }

        else
        {

          v71(v69, v70);
          sub_1D9A14378(v68, _s14DetectedResultVMa);
          v88 = v74;
        }

        sub_1D9A14378(v88, _s14DetectedResultVMa);
        return 1;
      }

      sub_1D99A6AE0(v12, &qword_1ECB510C0, &qword_1D9C8AF90);
    }

    return 0;
  }

  v38 = v37;
  v39 = v36;
  static Logger.argos.getter(v34);
  sub_1D9A3E0E0(v31);
  v40 = v96;
  v41 = *(v97 + 8);
  v41(v34, v96);

  v42 = sub_1D9C7D8BC();
  v43 = sub_1D9C7E09C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v98 = v45;
    *v44 = 136315138;
    v46 = sub_1D9A0E224(v39, v38, &v98);

    *(v44 + 4) = v46;
    _os_log_impl(&dword_1D9962000, v42, v43, "Satisfied coarse label %s", v44, 0xCu);
    v47 = __swift_destroy_boxed_opaque_existential_0Tm(v45);
    MEMORY[0x1DA7405F0](v45, -1, -1, v47);
    MEMORY[0x1DA7405F0](v44, -1, -1);
  }

  else
  {
  }

  v41(v31, v40);
  return 1;
}