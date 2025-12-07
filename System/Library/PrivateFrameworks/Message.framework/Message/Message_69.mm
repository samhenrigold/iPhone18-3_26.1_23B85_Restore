uint64_t sub_1B0C63FAC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  if (!a4 || (a3 & 1) != 0)
  {
    goto LABEL_9;
  }

  v5 = *a5;
  v6 = a5[1];
  v7 = a5[2];
  v8 = *(a5 + 32);
  if (result)
  {
    if (result == 1)
    {
      if (!a5[5])
      {
        goto LABEL_20;
      }

      goto LABEL_11;
    }

LABEL_9:
    v9 = 0;
    return v9 & 1;
  }

  if (!a5[5])
  {
LABEL_20:
    v9 = 1;
    return v9 & 1;
  }

  if ((v8 & 0xF0) == 0x50)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (v8 <= 0xF)
  {
    v9 = (v7 & 0x80) == 0 && *a5 == 1;
    return v9 & 1;
  }

  if (v8 & 0xF0) != 0x10 || (v7)
  {
    goto LABEL_20;
  }

  if (v5)
  {
    v11 = v6 - v5;
  }

  else
  {
    v11 = 0;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    if ((sub_1B0CB4C28("pkcs7-", 6, 2, 0, v11, v5, v6) & 1) == 0)
    {
      v9 = sub_1B0CB4C28("x-pkcs7-", 8, 2, 0, v11, v5, v6) ^ 1;
      return v9 & 1;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

unint64_t BodyStructure.makeAttachmentFilenames(cache:)(void *a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v4 = sub_1B0C64BBC(MEMORY[0x1E69E7CC0]);
  sub_1B0C64110(&v4, v2, a1);
  return v4;
}

void *sub_1B0C64110(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *(v3 + 9);
  v9 = *(v3 + 7);
  v94 = *(v3 + 8);
  v95 = v8;
  v10 = *(v3 + 9);
  v96 = *(v3 + 10);
  v11 = *(v3 + 5);
  v12 = *(v3 + 3);
  v90 = *(v3 + 4);
  v91 = v11;
  v13 = *(v3 + 5);
  v14 = *(v3 + 7);
  v92 = *(v3 + 6);
  v93 = v14;
  v15 = *(v3 + 1);
  v86 = *v3;
  v87 = v15;
  v16 = *(v3 + 3);
  v18 = *v3;
  v17 = *(v3 + 1);
  v88 = *(v3 + 2);
  v89 = v16;
  v68[8] = v94;
  v68[9] = v10;
  v68[10] = *(v3 + 10);
  v68[4] = v90;
  v68[5] = v13;
  v68[6] = v92;
  v68[7] = v9;
  v68[0] = v18;
  v68[1] = v17;
  v97 = *(v3 + 176);
  v69 = *(v3 + 176);
  v68[2] = v88;
  v68[3] = v12;
  if (sub_1B0717014(v68) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    *&v66[48] = v94;
    *&v66[64] = v95;
    *&v66[80] = v96;
    v67 = v97;
    v65 = v90;
    *v66 = v91;
    *&v66[16] = v92;
    *&v66[32] = v93;
    v61 = v86;
    v62 = v87;
    v63 = v88;
    v64 = v89;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v20 = *v19;
    v21 = *(*v19 + 16);
    sub_1B07169CC(v4, &__dst);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v21)
    {
      v22 = (v20 + 32);
      v23 = 1;
      do
      {
        v24 = *v22;
        v25 = v22[1];
        v26 = v22[3];
        v59[2] = v22[2];
        v59[3] = v26;
        v59[0] = v24;
        v59[1] = v25;
        v27 = v22[4];
        v28 = v22[5];
        v29 = v22[7];
        v59[6] = v22[6];
        v59[7] = v29;
        v59[4] = v27;
        v59[5] = v28;
        v30 = v22[8];
        v31 = v22[9];
        v32 = v22[10];
        v60 = *(v22 + 176);
        v59[9] = v31;
        v59[10] = v32;
        v59[8] = v30;
        memmove(&__dst, v22, 0xB1uLL);
        sub_1B07169CC(v59, &v54);
        v33.array._rawValue = SectionSpecifier.Part.appending(_:)(v23).array._rawValue;
        sub_1B0C64110(a1, v33.array._rawValue, a3);

        sub_1B075E648(&__dst);
        ++v23;
        v22 = (v22 + 184);
      }

      while (v23 - v21 != 1);
    }

    sub_1B075E648(v4);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    if (*(v35 + 96) != 1)
    {
      v36 = *(v35 + 112);
      if (v36 != 1)
      {
        v37 = *(v35 + 104);
        v82[0] = v37;
        v82[1] = v36;
        v83 = *(v35 + 120);
        v84 = *(v35 + 136);
        if (v36)
        {
          v38 = v84;
          v39 = *(&v83 + 1);
          v40 = v83;
          v85[0] = v37;
          v85[1] = v36;
          sub_1B07169CC(v4, &__dst);
          sub_1B0C65024(v82, &__dst);
          sub_1B0C65094(v85);
          __dst = 0uLL;

          sub_1B0CADA88(v40, v39, v38, &__dst, a3, v41);

          sub_1B075E648(v4);
          v42 = *(&__dst + 1);
          if (*(&__dst + 1))
          {
            v43 = __dst;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0C64500(v43, v42, a2);
          }
        }
      }
    }

    v78 = v94;
    v79 = v95;
    v80 = v96;
    v81 = v97;
    v74 = v90;
    v75 = v91;
    v76 = v92;
    v77 = v93;
    __dst = v86;
    v71 = v87;
    v72 = v88;
    v73 = v89;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v45 = *(v44 + 10);
    v47 = v44[3];
    v46 = v44[4];
    v49 = v44[1];
    v48 = v44[2];
    v50 = *v44;
    v51 = *(v44 + 136);
    v55 = *(v44 + 120);
    v56 = v51;
    v57 = *(v44 + 152);
    v58 = *(v44 + 21);
    v52 = *(v44 + 104);
    v54 = *(v44 + 88);
    v61 = v50;
    v62 = v49;
    v63 = v48;
    v64 = v47;
    v65 = v46;
    *&v66[40] = v55;
    *&v66[56] = v56;
    *&v66[72] = v57;
    *v66 = v45;
    *&v66[88] = v58;
    *&v66[8] = v54;
    *&v66[24] = v52;
    v81 = v97;
    v79 = v95;
    v80 = v96;
    v77 = v93;
    v78 = v94;
    v75 = v91;
    v76 = v92;
    v73 = v89;
    v74 = v90;
    v71 = v87;
    v72 = v88;
    __dst = v86;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    sub_1B07AD43C(v53, v59);
    return sub_1B071728C(&v61);
  }
}

uint64_t sub_1B0C64500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1B0CA4FB4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1B0CA7EF4(a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1B0CA5288();
        v14 = v16;
      }

      result = sub_1B0C64A14(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t Message.makeAttachmentFilenames(cache:)(void *a1)
{

  v3 = sub_1B0CA13C0(v1, a1);

  if (v3[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5CF0, &qword_1B0EDD280);
    v4 = sub_1B0E466A8();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v6 = v4;
  sub_1B0C64DB4(v3, 1, &v6);

  return v6;
}

uint64_t sub_1B0C646B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  result = sub_1B0CB0F14(a5, a1, a2, a3, a4);
  v10 = *(result + 16);
  if (!v10)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  v11 = 0;
  v12 = result + 40;
  v13 = -v10;
  v14 = MEMORY[0x1E69E7CC0];
  do
  {
    v15 = *(result + 16);
    if (v11 > v15)
    {
      v15 = v11;
    }

    v16 = -v15;
    v17 = v12 + 48 * v11++;
    while (1)
    {
      if (v16 + v11 == 1)
      {
        __break(1u);
        return result;
      }

      v19 = *v17;
      v20 = *(v17 + 8);
      v21 = *(v17 + 16);
      v22 = *(v17 + 24);
      v23 = *(v17 + 32);
      if (v23 > 1)
      {
        break;
      }

      if (*(v17 + 32))
      {
        v18 = 1;
      }

      else
      {
        v18 = v20 == 0;
      }

      if (!v18)
      {
        v31 = v12;
        v32 = v7;
        v33 = result;
        v29 = *(v17 + 8);
        v30 = *v17;
        goto LABEL_17;
      }

LABEL_11:
      ++v11;
      v17 += 48;
      if (v13 + v11 == 1)
      {
        goto LABEL_24;
      }
    }

    if (v23 != 2 || !v22)
    {
      goto LABEL_11;
    }

    v31 = v12;
    v32 = v7;
    v33 = result;
    v29 = *(v17 + 24);
    v30 = *(v17 + 16);
LABEL_17:
    v24 = *(v17 - 8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07B0B1C(v19, v20, v21, v22, v23);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1B0C80D00(0, v14[2] + 1, 1, v14);
    }

    v26 = v14[2];
    v25 = v14[3];
    result = v33;
    v12 = v31;
    if (v26 >= v25 >> 1)
    {
      v28 = sub_1B0C80D00((v25 > 1), v26 + 1, 1, v14);
      v12 = v31;
      v14 = v28;
      result = v33;
    }

    v14[2] = v26 + 1;
    v27 = &v14[3 * v26];
    v27[4] = v24;
    v27[5] = v30;
    v27[6] = v29;
    v7 = v32;
  }

  while (v13 + v11);
LABEL_24:

  *a6 = v14;
  return result;
}

double variable initialization expression of UnsafeExtractedAttachment.mediaType@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  return result;
}

uint64_t variable initialization expression of IndexableMessageInfo.date@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B0E43108();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double variable initialization expression of IndexableMessageInfo.from@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1B0C64A14(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B0E460C8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_1B0E46C28();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      SectionSpecifier.Part.hash(into:)(v21, v9);
      v10 = sub_1B0E46CB8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B0C64BBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5CF0, &qword_1B0EDD280);
    v3 = sub_1B0E466A8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = sub_1B0CA7EF4(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B0C64CBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5CF8, &unk_1B0EDD290);
    v3 = sub_1B0E466A8();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0452640(v5);
      result = sub_1B0CA7EF4(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B0C64DB4(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B0CA7EF4(v8);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_1B0CA4A74(v15, v5 & 1);
    result = sub_1B0CA7EF4(v8);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_1B0E46BA8();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + 8 * result) = v8;
    v22 = (v18[7] + 16 * result);
    *v22 = v7;
    v22[1] = v9;
    v23 = v18[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v24;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v21 = result;
  sub_1B0CA5288();
  result = v21;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = result;

  v20 = (v18[7] + 16 * v19);
  *v20 = v7;
  v20[1] = v9;

  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v9 = *(v5 - 2);
      v7 = *(v5 - 1);
      v6 = *v5;
      v27 = *a3;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = sub_1B0CA7EF4(v9);
      v29 = v27[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v8 = v28;
      if (v27[3] < v31)
      {
        sub_1B0CA4A74(v31, 1);
        result = sub_1B0CA7EF4(v9);
        if ((v8 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      v33 = *a3;
      if (v8)
      {
        v25 = result;

        v26 = (v33[7] + 16 * v25);
        *v26 = v7;
        v26[1] = v6;
      }

      else
      {
        v33[(result >> 6) + 8] |= 1 << result;
        *(v33[6] + 8 * result) = v9;
        v34 = (v33[7] + 16 * result);
        *v34 = v7;
        v34[1] = v6;
        v35 = v33[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v33[2] = v36;
      }

      v5 += 3;
      if (!--v16)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1B0C65024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5D00, &qword_1B0EF1FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C65110(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - 1;
  if (a2 >= 1)
  {
    v7 = 0;
    v8 = a5 - 3;
    for (i = (result + 1); ; ++i)
    {
      if (*(v5 + 1))
      {
        goto LABEL_46;
      }

      v10 = *(result + v7);
      if (v10 < 0 || (v11 = byte_1F2722538[*(result + v7) + 32], v11 < 0))
      {
        if (a3)
        {
          goto LABEL_4;
        }

        v26 = 1;
LABEL_56:
        *v5 = v26;
        return result;
      }

      if (qword_1EB6E5CC0 != -1)
      {
        v34 = a2;
        v35 = result;
        v33 = a3;
        v31 = a5;
        v32 = a4;
        swift_once();
        a5 = v31;
        a4 = v32;
        a2 = v34;
        result = v35;
        a3 = v33;
      }

      v12 = byte_1EB6E5D20;
      v13 = *(v5 + 24);
      if (v10 == byte_1EB6E5D20)
      {
        v14 = __OFADD__(v13++, 1);
        if (v14)
        {
          goto LABEL_61;
        }

        *(v5 + 24) = v13;
      }

      else if (v13 >= 1 && (a3 & 1) == 0)
      {
LABEL_44:
        v26 = 2;
        goto LABEL_56;
      }

      v15 = v11 + (*(v5 + 32) << 6);
      if (__CFADD__(v11, *(v5 + 32) << 6))
      {
        goto LABEL_59;
      }

      *(v5 + 32) = v15;
      v16 = *(v5 + 16);
      v14 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v14)
      {
        goto LABEL_60;
      }

      *(v5 + 16) = v17;
      if (v17 != 4)
      {
        goto LABEL_4;
      }

      if (a5 < 3 || (v18 = *(v5 + 8), v8 < v18))
      {
        v26 = 3;
        goto LABEL_56;
      }

      if (v13 == 3)
      {
        goto LABEL_44;
      }

      v19 = v7 + 1 >= a2;
      if (v7 + 1 >= a2 || v13 < 1)
      {
        goto LABEL_32;
      }

      v20 = i;
      v21 = v6;
      do
      {
        if (!v21)
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v22 = *v20;
        if (v22 != v12 && ((a3 & 1) == 0 || (v22 & 0x80) == 0 && (byte_1F2722538[v22 + 32] & 0x80000000) == 0))
        {
          v23 = (a4 + v18);
          *v23 = BYTE2(v15);
          v23[1] = BYTE1(v15);
          v24 = v18 + 2;
          goto LABEL_38;
        }

        ++v20;
        --v21;
      }

      while (v21);
      v19 = 1;
LABEL_32:
      *(a4 + v18) = BYTE2(v15);
      *(v5 + 8) = v18 + 1;
      if (!v19 || v13 <= 1)
      {
        *(a4 + v18 + 1) = BYTE1(v15);
        v24 = v18 + 2;
        *(v5 + 8) = v18 + 2;
        if (v13 <= 0 || !v19)
        {
LABEL_38:
          *(a4 + v24) = v15;
          *(v5 + 8) = v24 + 1;
        }
      }

      *(v5 + 16) = 0;
      if (v13 >= 1 && (a3 & 1) == 0)
      {
        break;
      }

      *(v5 + 24) = 0;
LABEL_4:
      ++v7;
      --v6;
      if (v7 == a2)
      {
        return result;
      }
    }

    *(v5 + 1) = 1;
LABEL_46:
    if (!*v5)
    {
      if (qword_1EB6E5CC0 == -1)
      {
LABEL_51:
        while (1)
        {
          v27 = *(result + v7);
          if (((a3 & 1) == 0 || (v27 & 0x80) == 0 && (byte_1F2722538[v27 + 32] & 0x80000000) == 0) && v27 != byte_1EB6E5D20)
          {
            break;
          }

          if (++v7 >= a2)
          {
            return result;
          }
        }

        v26 = 4;
        goto LABEL_56;
      }

LABEL_62:
      v28 = result;
      v29 = a2;
      v30 = a3;
      swift_once();
      result = v28;
      a2 = v29;
      LOBYTE(a3) = v30;
      goto LABEL_51;
    }
  }

  return result;
}

unint64_t sub_1B0C65408()
{
  if (sub_1B0E46A78())
  {
    result = 10;
    goto LABEL_7;
  }

  result = sub_1B0E44818();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_1B0C04CF0(0x3DuLL, 0xE100000000000000);
  if ((result & 0x100000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((result & 0xFFFFFF80) != 0)
  {
    goto LABEL_10;
  }

  result = sub_1B0C04CF0(0x3DuLL, 0xE100000000000000);
  if ((result & 0x100000000) == 0)
  {
    if ((result & 0xFFFFFF00) == 0)
    {
LABEL_7:
      byte_1EB6E5D20 = result;
      return result;
    }

    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1B0C6549C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  if (a1)
  {
    v9 = a2 - a1;
    if (a3)
    {
      v10 = a4 - a3;
      v21 = 0;
      v23 = 0;
      v24 = 0;
      v22 = 0;
      v25 = 0;
      v6 = &v21;
      sub_1B0C65110(a1, v9, a5 & 1, a3, a4 - a3);
      if (v21)
      {
        if (v21 == 3 && v23 == 4)
        {
          goto LABEL_17;
        }
      }

      else if (!v23)
      {
LABEL_17:
        v11 = v22;
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    if (v9 >= 1)
    {
      v6 = (a1 + 3);
      v10 = 4;
      while (1)
      {
        if ((*(v6 - 3) & 0x80000000) == 0)
        {
          v5 = byte_1F2722538[*(v6 - 3) + 32];
          if ((v5 & 0x80000000) == 0)
          {
            v5 = *(v6 - 3);
            if (qword_1EB6E5CC0 != -1)
            {
              goto LABEL_58;
            }

            goto LABEL_22;
          }
        }

        if ((a5 & 1) == 0)
        {
          break;
        }

        ++v10;
        ++v6;
        if (a1 - a2 + v10 == 4)
        {
          goto LABEL_14;
        }
      }

LABEL_16:
      sub_1B0C65780();
      v7 = swift_allocError();
      swift_willThrow();
      return v7;
    }

LABEL_14:
    v10 = 0;
    v11 = 0;
LABEL_18:
    while (v11 < 0 || v10 < v11)
    {
      __break(1u);
LABEL_58:
      v20 = v9;
      v18 = a5;
      v19 = v5;
      swift_once();
      v5 = v19;
      v9 = v20;
      a5 = v18;
LABEL_22:
      v13 = v5 == byte_1EB6E5D20;
      if (v10 - 3 < v9)
      {
        while (*(v6 - 2) < 0 || byte_1F2722538[*(v6 - 2) + 32] < 0)
        {
          if (a5)
          {
            v14 = v10 - 2;
            ++v10;
            ++v6;
            if (v14 < v9)
            {
              continue;
            }
          }

          goto LABEL_16;
        }

        if (*(v6 - 2) == byte_1EB6E5D20)
        {
          v13 = 1;
          if (v5 == byte_1EB6E5D20)
          {
            v13 = 2;
          }
        }

        else if (v5 == byte_1EB6E5D20 && (a5 & 1) == 0)
        {
          goto LABEL_16;
        }

        if (v10 - 2 >= v9)
        {
          goto LABEL_16;
        }

        while (*(v6 - 1) < 0 || byte_1F2722538[*(v6 - 1) + 32] < 0)
        {
          if (a5)
          {
            v15 = v10++ - 1;
            ++v6;
            if (v15 < v9)
            {
              continue;
            }
          }

          goto LABEL_16;
        }

        if (*(v6 - 1) == byte_1EB6E5D20)
        {
          ++v13;
        }

        else if (v13 && (a5 & 1) == 0)
        {
          goto LABEL_16;
        }

        if (v10 - 1 < v9)
        {
          while (1)
          {
            v16 = *v6++;
            v5 = v16;
            if ((v16 & 0x80000000) == 0 && (byte_1F2722538[v5 + 32] & 0x80000000) == 0)
            {
              break;
            }

            if (a5)
            {
              v17 = v10++ < v9;
              if (v17)
              {
                continue;
              }
            }

            goto LABEL_16;
          }

          v10 = 0;
          v11 = 0;
          v17 = v5 == byte_1EB6E5D20 || v13 < 1;
          if (v17 || (a5 & 1) != 0)
          {
            continue;
          }
        }
      }

      goto LABEL_16;
    }
  }

  return v7;
}

unint64_t sub_1B0C65780()
{
  result = qword_1EB6E5D28;
  if (!qword_1EB6E5D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5D28);
  }

  return result;
}

uint64_t sub_1B0C657E4(void *a1)
{
  __dst[41] = *MEMORY[0x1E69E9840];
  v2 = *a1 >> 62;
  if (v2)
  {
    if (v2 == 1)
    {
      memcpy(__dst, ((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 16), 0x148uLL);
      sub_1B0C6700C(__dst, &v15);
      sub_1B0C66C3C(__dst);
      sub_1B0C67068(__dst);
      goto LABEL_7;
    }

    v6 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v7 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    __dst[0] = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    __dst[1] = v6;
    swift_bridgeObjectRetain_n();
    sub_1B0C66F44(__dst);

    __dst[0] = v7;
    MEMORY[0x1B2726640](__dst, &__dst[1]);
  }

  else
  {
    v3 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v5 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v4 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    __dst[0] = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    __dst[1] = v3;
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C66F44(__dst);

    __dst[0] = v5;
    __dst[1] = v4;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C66F44(__dst);
  }

LABEL_7:
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = a1[9];
  v13 = a1[10];
  if (v8)
  {
    v15 = a1[4];
    v16[0] = v8;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C66F44(&v15);
  }

  if (v10)
  {
    v15 = v9;
    v16[0] = v10;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C66F44(&v15);
  }

  if (v12)
  {
    v15 = v11;
    v16[0] = v12;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C66F44(&v15);
  }

  v15 = v13;
  return MEMORY[0x1B2726640](&v15, v16);
}

uint64_t sub_1B0C659D8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v215 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = (*v1 + 32);
    v169 = 0;
    v166 = v1;
    for (i = v2 - 1; ; --i)
    {
      v5 = *v3;
      v6 = v3[1];
      v7 = v3[2];
      v192 = v3[3];
      v191 = v7;
      v190 = v6;
      v189 = v5;
      v8 = v3[4];
      v9 = v3[5];
      v10 = v3[6];
      v196 = v3[7];
      v195 = v10;
      v194 = v9;
      v193 = v8;
      v11 = v3[8];
      v12 = v3[9];
      v13 = v3[10];
      v200 = *(v3 + 176);
      v199 = v13;
      v198 = v12;
      v197 = v11;
      memmove(__dst, v3, 0xB1uLL);
      if (sub_1B0717014(__dst) == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v15 = *(v14 + 80);
        v213[4] = *(v14 + 64);
        v213[5] = v15;
        v213[6] = *(v14 + 96);
        v16 = *(v14 + 16);
        v213[0] = *v14;
        v213[1] = v16;
        v17 = *(v14 + 48);
        v213[2] = *(v14 + 32);
        v214 = *(v14 + 112);
        v213[3] = v17;
        v188[8] = v197;
        v188[9] = v198;
        v188[10] = v199;
        LOBYTE(v188[11]) = v200;
        v188[4] = v193;
        v188[5] = v194;
        v188[6] = v195;
        v188[7] = v196;
        v188[0] = v189;
        v188[1] = v190;
        v188[2] = v191;
        v188[3] = v192;
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        sub_1B07AD120(v18, v187);
        sub_1B0C659D8(v213);
        sub_1B075E648(&v189);
        if (!i)
        {
          goto LABEL_153;
        }

        goto LABEL_145;
      }

      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v20 = v19;
      v21 = *v19;
      v22 = *v19 >> 62;
      v171 = i;
      if (!v22)
      {
        v30 = *(v21 + 16);
        v29 = *(v21 + 24);
        v32 = *(v21 + 32);
        v31 = *(v21 + 40);
        swift_bridgeObjectRetain_n();
        if ((v29 & 0x1000000000000000) != 0)
        {
          sub_1B07169CC(&v189, v188);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v30 = sub_1B0A6C2B0(v30, v29);
          v33 = v103;

          if ((v33 & 0x2000000000000000) != 0)
          {
            goto LABEL_61;
          }

LABEL_18:
          if ((v30 & 0x1000000000000000) != 0)
          {
            v34 = (v33 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v35 = v30 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = sub_1B0E46368();
          }

          if (v34)
          {
            v36 = v35 + v34;
          }

          else
          {
            v36 = 0;
          }

          MEMORY[0x1B2726640](v34, v36);
        }

        else
        {
          sub_1B07169CC(&v189, v188);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v33 = v29;
          if ((v29 & 0x2000000000000000) == 0)
          {
            goto LABEL_18;
          }

LABEL_61:
          *&v188[0] = v30;
          *(&v188[0] + 1) = v33 & 0xFFFFFFFFFFFFFFLL;
          MEMORY[0x1B2726640](v188, v188 + (HIBYTE(v33) & 0xF));
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if ((v31 & 0x1000000000000000) != 0)
        {
          v32 = sub_1B0A6C2B0(v32, v31);
          v104 = v108;

          if ((v104 & 0x2000000000000000) != 0)
          {
            goto LABEL_70;
          }

LABEL_64:
          if ((v32 & 0x1000000000000000) != 0)
          {
            v105 = ((v104 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v106 = v32 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v105 = sub_1B0E46368();
          }

          if (v105)
          {
            v107 = v105 + v106;
          }

          else
          {
            v107 = 0;
          }
        }

        else
        {
          v104 = v31;
          if ((v31 & 0x2000000000000000) == 0)
          {
            goto LABEL_64;
          }

LABEL_70:
          *&v188[0] = v32;
          *(&v188[0] + 1) = v104 & 0xFFFFFFFFFFFFFFLL;
          v105 = v188;
          v107 = v188 + (HIBYTE(v104) & 0xF);
        }

        MEMORY[0x1B2726640](v105, v107);

        goto LABEL_75;
      }

      v23 = (v21 & 0x3FFFFFFFFFFFFFFFLL);
      if (v22 != 1)
      {
        v38 = v23[2];
        v37 = v23[3];
        v39 = v23[4];
        if ((v37 & 0x1000000000000000) != 0)
        {
          sub_1B07169CC(&v189, v188);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v38 = sub_1B0A6C2B0(v38, v37);
          v40 = v109;
          if ((v109 & 0x2000000000000000) != 0)
          {
            goto LABEL_73;
          }

LABEL_26:
          if ((v38 & 0x1000000000000000) != 0)
          {
            v41 = ((v40 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v42 = v38 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v41 = sub_1B0E46368();
          }

          if (v41)
          {
            v43 = v41 + v42;
          }

          else
          {
            v43 = 0;
          }
        }

        else
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B07169CC(&v189, v188);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v40 = v37;
          if ((v37 & 0x2000000000000000) == 0)
          {
            goto LABEL_26;
          }

LABEL_73:
          *&v188[0] = v38;
          *(&v188[0] + 1) = v40 & 0xFFFFFFFFFFFFFFLL;
          v41 = v188;
          v43 = v188 + (HIBYTE(v40) & 0xF);
        }

        MEMORY[0x1B2726640](v41, v43);

        *&v188[0] = v39;
        MEMORY[0x1B2726640](v188, v188 + 8);
LABEL_75:

        goto LABEL_111;
      }

      memcpy(v188, v23 + 2, 0x148uLL);
      v24 = *(&v188[0] + 1);
      v25 = *&v188[0];
      if ((*(&v188[0] + 1) & 0x1000000000000000) != 0)
      {
        sub_1B07169CC(&v189, v187);
        sub_1B0C6700C(v188, v187);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v25 = sub_1B0A6C2B0(v25, v24);
        v102 = v101;

        v24 = v102;
      }

      else
      {
        sub_1B07169CC(&v189, v187);
        sub_1B0C6700C(v188, v187);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      if ((v24 & 0x2000000000000000) != 0)
      {
        *v187 = v25;
        *&v187[8] = v24 & 0xFFFFFFFFFFFFFFLL;
        v26 = v187;
        v28 = &v187[HIBYTE(v24) & 0xF];
      }

      else
      {
        if ((v25 & 0x1000000000000000) != 0)
        {
          v26 = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v27 = v25 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = sub_1B0E46368();
        }

        v28 = v26 ? &v26[v27] : 0;
      }

      MEMORY[0x1B2726640](v26, v28);

      v185[8] = *(&v188[16] + 8);
      v185[9] = *(&v188[17] + 8);
      v185[10] = *(&v188[18] + 8);
      v185[4] = *(&v188[12] + 8);
      v185[5] = *(&v188[13] + 8);
      v185[6] = *(&v188[14] + 8);
      v185[7] = *(&v188[15] + 8);
      v185[0] = *(&v188[8] + 8);
      v185[1] = *(&v188[9] + 8);
      v185[2] = *(&v188[10] + 8);
      v186 = BYTE8(v188[19]);
      v185[3] = *(&v188[11] + 8);
      if (sub_1B0717014(v185) != 1)
      {
        break;
      }

      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v45 = *(v44 + 80);
      v211[4] = *(v44 + 64);
      v211[5] = v45;
      v211[6] = *(v44 + 96);
      v46 = *(v44 + 16);
      v211[0] = *v44;
      v211[1] = v46;
      v47 = *(v44 + 48);
      v211[2] = *(v44 + 32);
      v212 = *(v44 + 112);
      v211[3] = v47;
      sub_1B0C659D8(v211);
LABEL_110:
      *v187 = *&v188[20];
      MEMORY[0x1B2726640](v187, &v187[8]);
      sub_1B0C67068(v188);
LABEL_111:
      v140 = v20[5];
      v139 = v20[6];
      v142 = v20[7];
      v141 = v20[8];
      v144 = v20[9];
      v143 = v20[10];
      if (!v140)
      {
        goto LABEL_122;
      }

      v145 = v20[4];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if ((v140 & 0x1000000000000000) != 0)
      {
        v145 = sub_1B0A6C2B0(v145, v140);
        v168 = v149;

        v140 = v168;
        if ((v168 & 0x2000000000000000) == 0)
        {
LABEL_114:
          if ((v145 & 0x1000000000000000) != 0)
          {
            v146 = ((v140 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v147 = v145 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v146 = sub_1B0E46368();
          }

          if (v146)
          {
            v148 = v146 + v147;
          }

          else
          {
            v148 = 0;
          }

          goto LABEL_121;
        }
      }

      else if ((v140 & 0x2000000000000000) == 0)
      {
        goto LABEL_114;
      }

      *&v188[0] = v145;
      *(&v188[0] + 1) = v140 & 0xFFFFFFFFFFFFFFLL;
      v146 = v188;
      v148 = v188 + (HIBYTE(v140) & 0xF);
LABEL_121:
      MEMORY[0x1B2726640](v146, v148);

LABEL_122:
      if (!v142)
      {
        goto LABEL_133;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if ((v142 & 0x1000000000000000) != 0)
      {
        v139 = sub_1B0A6C2B0(v139, v142);
        v154 = v153;

        v142 = v154;
        if ((v154 & 0x2000000000000000) == 0)
        {
LABEL_125:
          if ((v139 & 0x1000000000000000) != 0)
          {
            v150 = ((v142 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v151 = v139 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v150 = sub_1B0E46368();
          }

          if (v150)
          {
            v152 = v150 + v151;
          }

          else
          {
            v152 = 0;
          }

          goto LABEL_132;
        }
      }

      else if ((v142 & 0x2000000000000000) == 0)
      {
        goto LABEL_125;
      }

      *&v188[0] = v139;
      *(&v188[0] + 1) = v142 & 0xFFFFFFFFFFFFFFLL;
      v150 = v188;
      v152 = v188 + (HIBYTE(v142) & 0xF);
LABEL_132:
      MEMORY[0x1B2726640](v150, v152);

LABEL_133:
      if (!v144)
      {
        goto LABEL_144;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if ((v144 & 0x1000000000000000) != 0)
      {
        v141 = sub_1B0A6C2B0(v141, v144);
        v159 = v158;

        v144 = v159;
        if ((v159 & 0x2000000000000000) == 0)
        {
LABEL_136:
          if ((v141 & 0x1000000000000000) != 0)
          {
            v155 = ((v144 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v156 = v141 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v155 = sub_1B0E46368();
          }

          if (v155)
          {
            v157 = v155 + v156;
          }

          else
          {
            v157 = 0;
          }

          goto LABEL_143;
        }
      }

      else if ((v144 & 0x2000000000000000) == 0)
      {
        goto LABEL_136;
      }

      *&v188[0] = v141;
      *(&v188[0] + 1) = v144 & 0xFFFFFFFFFFFFFFLL;
      v155 = v188;
      v157 = v188 + (HIBYTE(v144) & 0xF);
LABEL_143:
      MEMORY[0x1B2726640](v155, v157);

LABEL_144:
      *&v188[0] = v143;
      MEMORY[0x1B2726640](v188, v188 + 8);
      sub_1B075E648(&v189);
      i = v171;
      if (!v171)
      {
LABEL_153:
        v1 = v166;
        goto LABEL_154;
      }

LABEL_145:
      v3 = (v3 + 184);
    }

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v167 = v48;
    v49 = *v48;
    v50 = *v48 >> 62;
    if (v50)
    {
      v51 = (v49 & 0x3FFFFFFFFFFFFFFFLL);
      if (v50 == 1)
      {
        memcpy(v187, v51 + 2, sizeof(v187));
        *v179 = *v187;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0C6700C(v187, v182);
        v52 = v169;
        sub_1B0C66F44(v179);

        v183[8] = *&v187[264];
        v183[9] = *&v187[280];
        v183[10] = *&v187[296];
        v183[4] = *&v187[200];
        v183[5] = *&v187[216];
        v183[6] = *&v187[232];
        v183[7] = *&v187[248];
        v183[0] = *&v187[136];
        v183[1] = *&v187[152];
        v183[2] = *&v187[168];
        v184 = v187[312];
        v183[3] = *&v187[184];
        if (sub_1B0717014(v183) == 1)
        {
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
          v54 = *(v53 + 80);
          v209[4] = *(v53 + 64);
          v209[5] = v54;
          v209[6] = *(v53 + 96);
          v55 = *(v53 + 16);
          v209[0] = *v53;
          v209[1] = v55;
          v56 = *(v53 + 48);
          v209[2] = *(v53 + 32);
          v210 = *(v53 + 112);
          v209[3] = v56;
          sub_1B0C659D8(v209);
LABEL_101:
          v182[0] = *&v187[320];
          MEMORY[0x1B2726640](v182, &v182[1]);
          sub_1B0C67068(v187);
          goto LABEL_102;
        }

        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v63 = *v62;
        v64 = *v62 >> 62;
        v170 = v62;
        if (v64)
        {
          v65 = (v63 & 0x3FFFFFFFFFFFFFFFLL);
          if (v64 == 1)
          {
            memcpy(v182, v65 + 2, sizeof(v182));
            v176[0] = v182[0];
            v176[1] = v182[1];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0C6700C(v182, v179);
            sub_1B0C66F44(v176);

            v180[8] = *&v182[33];
            v180[9] = *&v182[35];
            v180[10] = *&v182[37];
            v180[4] = *&v182[25];
            v180[5] = *&v182[27];
            v180[6] = *&v182[29];
            v180[7] = *&v182[31];
            v180[0] = *&v182[17];
            v180[1] = *&v182[19];
            v180[2] = *&v182[21];
            v181 = v182[39];
            v180[3] = *&v182[23];
            if (sub_1B0717014(v180) == 1)
            {
              __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
              v67 = *(v66 + 80);
              v207[4] = *(v66 + 64);
              v207[5] = v67;
              v207[6] = *(v66 + 96);
              v68 = *(v66 + 16);
              v207[0] = *v66;
              v207[1] = v68;
              v69 = *(v66 + 48);
              v207[2] = *(v66 + 32);
              v208 = *(v66 + 112);
              v207[3] = v69;
              sub_1B0C659D8(v207);
LABEL_93:
              *v179 = v182[40];
              MEMORY[0x1B2726640](v179, &v179[8]);
              sub_1B0C67068(v182);
              goto LABEL_94;
            }

            __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
            v76 = *v75;
            v77 = *v75 >> 62;
            v165 = v75;
            if (v77)
            {
              v78 = (v76 & 0x3FFFFFFFFFFFFFFFLL);
              if (v77 == 1)
              {
                memcpy(v179, v78 + 2, sizeof(v179));
                v174[0] = *v179;
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B0C6700C(v179, v176);
                sub_1B0C66F44(v174);

                v177[8] = *&v179[264];
                v177[9] = *&v179[280];
                v177[10] = *&v179[296];
                v178 = v179[312];
                v177[4] = *&v179[200];
                v177[5] = *&v179[216];
                v177[6] = *&v179[232];
                v177[7] = *&v179[248];
                v177[0] = *&v179[136];
                v177[1] = *&v179[152];
                v177[2] = *&v179[168];
                v177[3] = *&v179[184];
                if (sub_1B0717014(v177) == 1)
                {
                  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
                  v80 = *(v79 + 80);
                  v205[4] = *(v79 + 64);
                  v205[5] = v80;
                  v205[6] = *(v79 + 96);
                  v81 = *(v79 + 16);
                  v205[0] = *v79;
                  v205[1] = v81;
                  v82 = *(v79 + 48);
                  v205[2] = *(v79 + 32);
                  v206 = *(v79 + 112);
                  v205[3] = v82;
                  sub_1B0C659D8(v205);
                }

                else
                {
                  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
                  v163 = v88;
                  v89 = *v88;
                  v90 = *v88 >> 62;
                  if (v90)
                  {
                    v91 = (v89 & 0x3FFFFFFFFFFFFFFFLL);
                    if (v90 == 1)
                    {
                      memcpy(v176, v91 + 2, sizeof(v176));
                      v172 = v176[0];
                      v173 = v176[1];
                      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                      sub_1B0C6700C(v176, v174);
                      sub_1B0C66F44(&v172);

                      v174[9] = *&v176[35];
                      v174[10] = *&v176[37];
                      v174[4] = *&v176[25];
                      v174[5] = *&v176[27];
                      v174[6] = *&v176[29];
                      v175 = v176[39];
                      v174[7] = *&v176[31];
                      v174[8] = *&v176[33];
                      v174[0] = *&v176[17];
                      v174[1] = *&v176[19];
                      v174[2] = *&v176[21];
                      v174[3] = *&v176[23];
                      if (sub_1B0717014(v174) == 1)
                      {
                        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
                        v93 = *(v92 + 80);
                        v203[4] = *(v92 + 64);
                        v203[5] = v93;
                        v203[6] = *(v92 + 96);
                        v94 = *(v92 + 16);
                        v203[0] = *v92;
                        v203[1] = v94;
                        v95 = *(v92 + 48);
                        v203[2] = *(v92 + 32);
                        v204 = *(v92 + 112);
                        v203[3] = v95;
                        sub_1B0C659D8(v203);
                      }

                      else
                      {
                        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
                        v111 = v110[6];
                        v202[7] = v110[7];
                        v112 = v110[9];
                        v202[8] = v110[8];
                        v202[9] = v112;
                        v202[10] = v110[10];
                        v113 = v110[2];
                        v202[3] = v110[3];
                        v114 = v110[5];
                        v202[4] = v110[4];
                        v202[5] = v114;
                        v202[6] = v111;
                        v115 = v110[1];
                        v202[0] = *v110;
                        v202[1] = v115;
                        v202[2] = v113;
                        sub_1B0C657E4(v202);
                      }

                      v172 = v176[40];
                      MEMORY[0x1B2726640](&v172, &v173);
                      sub_1B0C67068(v176);
                    }

                    else
                    {
                      v99 = v91[3];
                      v100 = v91[4];
                      v176[0] = v91[2];
                      v176[1] = v99;
                      swift_bridgeObjectRetain_n();
                      sub_1B0C66F44(v176);

                      v176[0] = v100;
                      MEMORY[0x1B2726640](v176, &v176[1]);
                    }
                  }

                  else
                  {
                    v96 = *(v89 + 24);
                    v97 = *(v89 + 32);
                    v98 = *(v89 + 40);
                    v176[0] = *(v89 + 16);
                    v176[1] = v96;
                    swift_bridgeObjectRetain_n();
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    sub_1B0C66F44(v176);

                    v176[0] = v97;
                    v176[1] = v98;
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    sub_1B0C66F44(v176);
                  }

                  v116 = v163[5];
                  v117 = v163[6];
                  v119 = v163[7];
                  v118 = v163[8];
                  v121 = v163[9];
                  v120 = v163[10];
                  if (v116)
                  {
                    v176[0] = v163[4];
                    v176[1] = v116;
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    sub_1B0C66F44(v176);
                  }

                  if (v119)
                  {
                    v176[0] = v117;
                    v176[1] = v119;
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    sub_1B0C66F44(v176);
                  }

                  if (v121)
                  {
                    v176[0] = v118;
                    v176[1] = v121;
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    sub_1B0C66F44(v176);
                  }

                  v176[0] = v120;
                  MEMORY[0x1B2726640](v176, &v176[1]);
                }

                v176[0] = *&v179[320];
                MEMORY[0x1B2726640](v176, &v176[1]);
                sub_1B0C67068(v179);
                goto LABEL_86;
              }

              v86 = v78[3];
              v87 = v78[4];
              *v179 = v78[2];
              *&v179[8] = v86;
              swift_bridgeObjectRetain_n();
              sub_1B0C66F44(v179);

              *v179 = v87;
              MEMORY[0x1B2726640](v179, &v179[8]);
            }

            else
            {
              v83 = *(v76 + 24);
              v84 = *(v76 + 32);
              v85 = *(v76 + 40);
              *v179 = *(v76 + 16);
              *&v179[8] = v83;
              swift_bridgeObjectRetain_n();
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0C66F44(v179);

              *v179 = v84;
              *&v179[8] = v85;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0C66F44(v179);
            }

LABEL_86:
            v122 = v165[5];
            v123 = v165[6];
            v124 = v165[7];
            v164 = v165[8];
            v126 = v165[9];
            v125 = v165[10];
            if (v122)
            {
              *v179 = v165[4];
              *&v179[8] = v122;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0C66F44(v179);
            }

            if (v124)
            {
              *v179 = v123;
              *&v179[8] = v124;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0C66F44(v179);
            }

            if (v126)
            {
              *v179 = v164;
              *&v179[8] = v126;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0C66F44(v179);
            }

            *v179 = v125;
            MEMORY[0x1B2726640](v179, &v179[8]);
            goto LABEL_93;
          }

          v73 = v65[3];
          v74 = v65[4];
          v182[0] = v65[2];
          v182[1] = v73;
          swift_bridgeObjectRetain_n();
          sub_1B0C66F44(v182);

          v182[0] = v74;
          MEMORY[0x1B2726640](v182, &v182[1]);
        }

        else
        {
          v70 = *(v63 + 24);
          v71 = *(v63 + 32);
          v72 = *(v63 + 40);
          v182[0] = *(v63 + 16);
          v182[1] = v70;
          swift_bridgeObjectRetain_n();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0C66F44(v182);

          v182[0] = v71;
          v182[1] = v72;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0C66F44(v182);
        }

LABEL_94:
        v127 = v170[5];
        v128 = v170[6];
        v130 = v170[7];
        v129 = v170[8];
        v132 = v170[9];
        v131 = v170[10];
        if (v127)
        {
          v182[0] = v170[4];
          v182[1] = v127;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0C66F44(v182);
        }

        if (v130)
        {
          v182[0] = v128;
          v182[1] = v130;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0C66F44(v182);
        }

        if (v132)
        {
          v182[0] = v129;
          v182[1] = v132;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0C66F44(v182);
        }

        v182[0] = v131;
        MEMORY[0x1B2726640](v182, &v182[1]);
        goto LABEL_101;
      }

      v60 = v51[3];
      v61 = v51[4];
      *v187 = v51[2];
      *&v187[8] = v60;
      swift_bridgeObjectRetain_n();
      v52 = v169;
      sub_1B0C66F44(v187);

      *v187 = v61;
      MEMORY[0x1B2726640](v187, &v187[8]);
    }

    else
    {
      v57 = *(v49 + 24);
      v58 = *(v49 + 32);
      v59 = *(v49 + 40);
      *v187 = *(v49 + 16);
      *&v187[8] = v57;
      swift_bridgeObjectRetain_n();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v52 = v169;
      sub_1B0C66F44(v187);

      *v187 = v58;
      *&v187[8] = v59;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C66F44(v187);
    }

LABEL_102:
    v133 = v167[5];
    v134 = v167[6];
    v135 = v167[7];
    v136 = v167[8];
    v137 = v167[9];
    v138 = v167[10];
    if (v133)
    {
      *v187 = v167[4];
      *&v187[8] = v133;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C66F44(v187);
    }

    if (v135)
    {
      *v187 = v134;
      *&v187[8] = v135;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C66F44(v187);
    }

    if (v137)
    {
      *v187 = v136;
      *&v187[8] = v137;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C66F44(v187);
      v169 = v52;
    }

    else
    {
      v169 = v52;
    }

    *v187 = v138;
    MEMORY[0x1B2726640](v187, &v187[8]);
    goto LABEL_110;
  }

LABEL_154:
  v161 = v1[1];
  v160 = v1[2];
  *&v188[0] = v161;
  *(&v188[0] + 1) = v160;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C66F44(v188);
}

uint64_t sub_1B0C66C3C(uint64_t *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = a1[1];
  *&__dst[0] = v3;
  *(&__dst[0] + 1) = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C66F44(__dst);

  v4 = *(a1 + 35);
  v28[8] = *(a1 + 33);
  v28[9] = v4;
  v28[10] = *(a1 + 37);
  v29 = *(a1 + 312);
  v5 = *(a1 + 27);
  v28[4] = *(a1 + 25);
  v28[5] = v5;
  v6 = *(a1 + 31);
  v28[6] = *(a1 + 29);
  v28[7] = v6;
  v7 = *(a1 + 19);
  v28[0] = *(a1 + 17);
  v28[1] = v7;
  v8 = *(a1 + 23);
  v28[2] = *(a1 + 21);
  v28[3] = v8;
  if (sub_1B0717014(v28) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    __dst[4] = *(v9 + 64);
    __dst[5] = *(v9 + 80);
    __dst[6] = *(v9 + 96);
    *&__dst[7] = *(v9 + 112);
    __dst[0] = *v9;
    __dst[1] = *(v9 + 16);
    __dst[2] = *(v9 + 32);
    __dst[3] = *(v9 + 48);
    sub_1B0C659D8(__dst);
    goto LABEL_16;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v12 = v10[4];
  v11 = v10[5];
  v13 = v10[7];
  v14 = v10[9];
  v22 = v10[6];
  v23 = v10[8];
  v24 = v10[10];
  v15 = *v10 >> 62;
  if (v15)
  {
    if (v15 == 1)
    {
      memcpy(__dst, ((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 16), 0x148uLL);
      sub_1B0C6700C(__dst, &v25);
      sub_1B0C66C3C(__dst);
      sub_1B0C67068(__dst);
      if (!v11)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v19 = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v20 = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    *&__dst[0] = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    *(&__dst[0] + 1) = v19;
    swift_bridgeObjectRetain_n();
    sub_1B0C66F44(__dst);

    *&__dst[0] = v20;
    MEMORY[0x1B2726640](__dst, __dst + 8);
  }

  else
  {
    v16 = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v18 = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v17 = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    *&__dst[0] = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    *(&__dst[0] + 1) = v16;
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C66F44(__dst);

    *&__dst[0] = v18;
    *(&__dst[0] + 1) = v17;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C66F44(__dst);
  }

  if (v11)
  {
LABEL_10:
    v25 = v12;
    v26[0] = v11;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C66F44(&v25);
  }

LABEL_11:
  if (v13)
  {
    v25 = v22;
    v26[0] = v13;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C66F44(&v25);
  }

  if (v14)
  {
    v25 = v23;
    v26[0] = v14;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C66F44(&v25);
  }

  v25 = v24;
  MEMORY[0x1B2726640](&v25, v26);
LABEL_16:
  v25 = a1[40];
  return MEMORY[0x1B2726640](&v25, v26);
}

uint64_t sub_1B0C66F44(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if ((v3 & 0x1000000000000000) != 0)
  {
    v9 = sub_1B0A6C2B0(v2, v3);
    v11 = v10;

    v2 = v9;
    *a1 = v9;
    a1[1] = v11;
    v3 = v11;
    if ((v11 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v13[0] = v2;
    v13[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    v8 = v13;
    v7 = v13 + (HIBYTE(v3) & 0xF);
    return MEMORY[0x1B2726640](v8, v7);
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v2 & 0x1000000000000000) != 0)
  {
    v5 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_1B0E46368();
  }

  if (v5)
  {
    v7 = (v6 + v5);
  }

  else
  {
    v7 = 0;
  }

  v8 = v5;
  return MEMORY[0x1B2726640](v8, v7);
}

char *sub_1B0C670BC(uint64_t a1, uint64_t a2)
{
  v3 = PCG32Random.next()();
  swift_beginAccess();
  v4 = *(a2 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v4;
  if ((result & 1) == 0)
  {
    result = sub_1B0C0C114(0, *(v4 + 2) + 1, 1, v4);
    v4 = result;
  }

  v6 = 10;
  do
  {
    v7 = a0123456789abcd[v3 % 0x3E];
    *(a2 + 16) = v4;
    v9 = *(v4 + 2);
    v8 = *(v4 + 3);
    if (v9 >= v8 >> 1)
    {
      result = sub_1B0C0C114((v8 > 1), v9 + 1, 1, v4);
      v4 = result;
    }

    *(v4 + 2) = v9 + 1;
    v4[v9 + 32] = v7;
    *(a2 + 16) = v4;
    v3 /= 0x3EuLL;
    --v6;
  }

  while (v6);
  return result;
}

uint64_t sub_1B0C671E0(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    result = sub_1B0E44DC8();
    v3 = result;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || *(v4 + 3) >> 1 < v6)
    {
      if (v5 <= v6)
      {
        v8 = v5 + v3;
      }

      else
      {
        v8 = v5;
      }

      v4 = sub_1B0C0C114(isUniquelyReferenced_nonNull_native, v8, 1, v4);
    }

    result = sub_1B0E462A8();
    if (v9)
    {
      goto LABEL_22;
    }

    v10 = result;

    if (v10 >= v3)
    {
      if (v10 < 1)
      {
LABEL_17:
        *v2 = v4;
        return result;
      }

      v11 = *(v4 + 2);
      v12 = __OFADD__(v11, v10);
      v13 = v11 + v10;
      if (!v12)
      {
        *(v4 + 2) = v13;
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t static Message.makeSparse(messageHeaders:bodyStructure:lineEnding:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, unsigned int a3@<W2>, __int128 *a4@<X8>)
{
  v97 = a3;
  v95 = a1;
  v96 = a4;
  v5 = a2[9];
  v153 = a2[8];
  v154 = v5;
  v155 = a2[10];
  v6 = a2[5];
  v149 = a2[4];
  v150 = v6;
  v7 = a2[7];
  v151 = a2[6];
  v152 = v7;
  v8 = a2[1];
  v145 = *a2;
  v146 = v8;
  v9 = a2[3];
  v147 = a2[2];
  v156 = *(a2 + 176);
  v148 = v9;
  v91 = sub_1B0E443C8();
  v89 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v88 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for Message.Data(0);
  MEMORY[0x1EEE9AC00](v98);
  v90 = (&v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = type metadata accessor for Message(0);
  v12 = *(v94 - 1);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v99 = &v87 - v18;
  v19 = sub_1B0E44558();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1B0E444E8();
  v23 = *(v93 - 1);
  MEMORY[0x1EEE9AC00](v93);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = xmmword_1B0ECF4A0;
  sub_1B07169CC(a2, v131);
  sub_1B0E44548();
  v26 = a2[9];
  v131[8] = a2[8];
  v131[9] = v26;
  v131[10] = a2[10];
  v132 = *(a2 + 176);
  v27 = a2[5];
  v131[4] = a2[4];
  v131[5] = v27;
  v28 = a2[7];
  v131[6] = a2[6];
  v131[7] = v28;
  v29 = a2[1];
  v131[0] = *a2;
  v131[1] = v29;
  v30 = a2[3];
  v131[2] = a2[2];
  v131[3] = v30;
  if (sub_1B0717014(v131) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v32 = v31[5];
    v137 = v31[4];
    v138 = v32;
    v139 = v31[6];
    v33 = v31[1];
    v133 = *v31;
    v134 = v33;
    v34 = v31[3];
    v135 = v31[2];
    *&v140 = *(v31 + 14);
    v136 = v34;
    sub_1B0C659D8(&v133);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v36 = v35[6];
    v140 = v35[7];
    v37 = v35[9];
    v141 = v35[8];
    v142 = v37;
    v143 = v35[10];
    v38 = v35[2];
    v136 = v35[3];
    v39 = v35[5];
    v137 = v35[4];
    v138 = v39;
    v139 = v36;
    v40 = v35[1];
    v133 = *v35;
    v134 = v40;
    v135 = v38;
    sub_1B0C657E4(&v133);
  }

  sub_1B0E44538();
  (*(v20 + 8))(v22, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3C20, &qword_1B0EA3F40);
  sub_1B0E444D8();
  sub_1B075E648(a2);
  (*(v23 + 8))(v25, v93);
  v103 = v129[0];
  v41 = v99;
  sub_1B0C74DAC(v95, v99, type metadata accessor for Message);
  v42 = v94;
  v43 = (*(v12 + 56))(v41, 0, 1, v94);
  MEMORY[0x1EEE9AC00](v43);
  v85 = &v104;
  sub_1B03B5C80(v41, v16, &unk_1EB6E2E10, &qword_1B0E9B598);
  if ((*(v12 + 48))(v16, 1, v42) == 1)
  {
    sub_1B0398EFC(v16, &unk_1EB6E2E10, &qword_1B0E9B598);
    v44 = v97;
    v45 = sub_1B0C68AEC(v97, &v103, a2, &v104);
    sub_1B0C68BDC(v44, a2, &v104);
    sub_1B0C68F64(v44, a2, &v104);
    sub_1B0C69348(v44, a2, &v104);
    v46 = a2[9];
    v129[8] = a2[8];
    v129[9] = v46;
    v129[10] = a2[10];
    v130 = *(a2 + 176);
    v47 = a2[5];
    v129[4] = a2[4];
    v129[5] = v47;
    v48 = a2[7];
    v129[6] = a2[6];
    v129[7] = v48;
    v49 = a2[1];
    v129[0] = *a2;
    v129[1] = v49;
    v50 = a2[3];
    v129[2] = a2[2];
    v129[3] = v50;
    if (sub_1B0717014(v129) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v144 = *(v56 + 48);
      v57 = *(&v144 + 1);
      if (*(&v144 + 1))
      {
        v95 = v144;
        LOBYTE(v101[0]) = v44;
        v58 = MEMORY[0x1E69E6290];
        *(&v106 + 1) = MEMORY[0x1E69E6290];
        *&v107 = MEMORY[0x1E6969DF8];
        *&v105 = "Content-Description";
        *(&v105 + 1) = "";
        __swift_project_boxed_opaque_existential_0(&v105, MEMORY[0x1E69E6290]);
        sub_1B07169CC(a2, &v117);
        sub_1B03B5C80(&v144, &v117, &qword_1EB6E3850, &qword_1B0E9B600);
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v105);
        *(&v118 + 1) = v58;
        *&v119 = MEMORY[0x1E6969DF8];
        *&v117 = ": ";
        *(&v117 + 1) = "";
        v59 = v58;
        v44 = v97;
        __swift_project_boxed_opaque_existential_0(&v117, v59);
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v117);
        *(&v101[0] + 1) = 21;
        sub_1B0C6D3A8(v95, v57, v101, &v104);
        sub_1B0398EFC(&v144, &qword_1EB6E3850, &qword_1B0E9B600);
        sub_1B0C74C44(v44);
        sub_1B075E648(a2);
      }
    }

    sub_1B0C697EC(v44, a2, &v104);
    sub_1B0C69968(v44, a2, &v104);
    v60 = a2[9];
    v125 = a2[8];
    v126 = v60;
    v127 = a2[10];
    v128 = *(a2 + 176);
    v61 = a2[5];
    v121 = a2[4];
    v122 = v61;
    v62 = a2[7];
    v123 = a2[6];
    v124 = v62;
    v63 = a2[1];
    v117 = *a2;
    v118 = v63;
    v64 = a2[3];
    v119 = a2[2];
    v120 = v64;
    if (sub_1B0717014(&v117) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v70 = *(v69 + 80);
      if (v70 > 0)
      {
        sub_1B0C6FEFC(v44, v70, &v104);
      }
    }

    sub_1B0C74C44(v44);
  }

  else
  {
    v95 = &v87;
    v51 = v16;
    v52 = v92;
    v53 = sub_1B0C74D18(v51, v92);
    MEMORY[0x1EEE9AC00](v53);
    *(&v87 - 48) = 3;
    *(&v87 - 5) = a2;
    v44 = v97;
    *(&v87 - 32) = v97;
    *(&v87 - 3) = &v103;
    MEMORY[0x1EEE9AC00](v54);
    v85 = sub_1B0C74D7C;
    v86 = v55;
    sub_1B07169CC(a2, v129);
    sub_1B07169CC(a2, v129);
    sub_1B07169CC(a2, v129);
    if (Message.isEmpty.getter())
    {
      sub_1B07169CC(a2, v129);
      sub_1B0C682CC(0, 0, 0, 0, 3, a2, v44, &v103, v129, sub_1B0C67FD0, &v87 - 4);
      sub_1B075E648(a2);
      sub_1B075E648(a2);
      sub_1B075E648(a2);
      v45 = *&v129[0];
      sub_1B075E648(a2);
    }

    else
    {
      v94 = &v87;
      v65 = v90;
      sub_1B0C74DAC(v52, v90, type metadata accessor for Message.Data);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v66 = v88;
        v67 = v89;
        v68 = (*(v89 + 32))(v88, v65, v91);
        v93 = &v87;
        MEMORY[0x1EEE9AC00](v68);
        *(&v87 - 4) = v66;
        *(&v87 - 3) = sub_1B0C74D94;
        v85 = (&v87 - 4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5D30, &qword_1B0EDD3E0);
        sub_1B0E44328();
        (*(v67 + 8))(v66, v91);
        sub_1B075E648(a2);
        sub_1B075E648(a2);
        sub_1B075E648(a2);
        v45 = *&v129[0];
      }

      else
      {
        v71 = v65;
        v72 = *v65;
        v73 = v71[1];
        sub_1B07169CC(a2, v129);
        v45 = sub_1B0C744C8(v72, v73, 3, a2, v44, &v103, sub_1B0C67FD0, &v87 - 4);
        sub_1B075E648(a2);
        sub_1B0391D50(v72, v73);
        sub_1B075E648(a2);
        sub_1B075E648(a2);
        sub_1B075E648(a2);
      }
    }

    sub_1B0C74E2C(v52);
  }

  v74 = a2[9];
  v113 = a2[8];
  v114 = v74;
  v115 = a2[10];
  v116 = *(a2 + 176);
  v75 = a2[5];
  v109 = a2[4];
  v110 = v75;
  v76 = a2[7];
  v111 = a2[6];
  v112 = v76;
  v77 = a2[1];
  v105 = *a2;
  v106 = v77;
  v78 = a2[3];
  v107 = a2[2];
  v108 = v78;
  if (sub_1B0717014(&v105) != 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    goto LABEL_24;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  if (v45)
  {
    v80 = *v79;
    v101[9] = v154;
    v101[10] = v155;
    v102 = v156;
    v101[5] = v150;
    v101[6] = v151;
    v101[7] = v152;
    v101[8] = v153;
    v101[0] = v145;
    v101[1] = v146;
    v101[2] = v147;
    v101[3] = v148;
    v101[4] = v149;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    sub_1B07AD120(v81, v100);
    sub_1B0C69B14(v44, v80, v45, &v103, &v104);
    sub_1B075E648(a2);
LABEL_24:
  }

  sub_1B0398EFC(v99, &unk_1EB6E2E10, &qword_1B0E9B598);
  v82 = v104;
  *v96 = v104;
  swift_storeEnumTagMultiPayload();
  v83 = v104;
  sub_1B03B2000(v82, *(&v82 + 1));
  return sub_1B0391D50(v83, *(&v83 + 1));
}

uint64_t sub_1B0C67F70(uint64_t a1, uint64_t a2)
{
  v3[3] = MEMORY[0x1E69E6290];
  v3[4] = MEMORY[0x1E6969DF8];
  v3[0] = a1;
  v3[1] = a2;
  __swift_project_boxed_opaque_existential_0(v3, MEMORY[0x1E69E6290]);
  sub_1B0E42EF8();
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

BOOL BodyStructure.containsMultipartPartWithMissingBoundary.getter()
{
  v1 = *(v0 + 144);
  v28[8] = *(v0 + 128);
  v28[9] = v1;
  v28[10] = *(v0 + 160);
  v29 = *(v0 + 176);
  v2 = *(v0 + 80);
  v28[4] = *(v0 + 64);
  v28[5] = v2;
  v3 = *(v0 + 112);
  v28[6] = *(v0 + 96);
  v28[7] = v3;
  v4 = *(v0 + 16);
  v28[0] = *v0;
  v28[1] = v4;
  v5 = *(v0 + 48);
  v28[2] = *(v0 + 32);
  v28[3] = v5;
  if (sub_1B0717014(v28) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v7 = v6[5];
    v34 = v6[4];
    v35 = v7;
    v36 = v6[6];
    v37 = *(v6 + 14);
    v8 = v6[1];
    v30 = *v6;
    v31 = v8;
    v9 = v6[3];
    v32 = v6[2];
    v33 = v9;
    v10 = sub_1B0C68134();
    if (v11)
    {
      sub_1B0BA1BC0(v10, v11);
      v12 = (v30 + 32);
      v13 = *(v30 + 16) + 1;
      do
      {
        v14 = --v13 != 0;
        if (!v13)
        {
          break;
        }

        v15 = (v12 + 184);
        v16 = *v12;
        v17 = v12[1];
        v18 = v12[3];
        v38[2] = v12[2];
        v38[3] = v18;
        v38[0] = v16;
        v38[1] = v17;
        v19 = v12[4];
        v20 = v12[5];
        v21 = v12[7];
        v38[6] = v12[6];
        v38[7] = v21;
        v38[4] = v19;
        v38[5] = v20;
        v22 = v12[8];
        v23 = v12[9];
        v24 = v12[10];
        v39 = *(v12 + 176);
        v38[9] = v23;
        v38[10] = v24;
        v38[8] = v22;
        sub_1B07169CC(v38, v27);
        v25 = BodyStructure.containsMultipartPartWithMissingBoundary.getter();
        sub_1B075E648(v38);
        v12 = v15;
      }

      while ((v25 & 1) == 0);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    return 0;
  }

  return v14;
}

uint64_t sub_1B0C68134()
{
  v12 = *(v0 + 32);
  if (!v12)
  {
    return 0;
  }

  v13 = *(v0 + 40);
  v1 = *(v13 + 16);

  if (!v1)
  {
    v7 = 0;
LABEL_15:
    sub_1B0398EFC(&v13, &qword_1EB6E5578, &qword_1B0ED2740);
    return v7;
  }

  v3 = 0;
  v4 = 0x797261646E756F62;
  v5 = result + 40;
  v6 = v12 + 40;
  while (v3 < *(v12 + 16))
  {
    v7 = *(v6 - 8);
    if (sub_1B0E44B98() == v4 && v8 == 0xE800000000000000)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      goto LABEL_15;
    }

    v10 = v4;
    v11 = sub_1B0E46A78();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    if (v11)
    {
      goto LABEL_15;
    }

    ++v3;

    v5 += 16;
    v6 += 16;
    v4 = v10;
    if (v1 == v3)
    {
      v7 = 0;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_1B0C682CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t (*a10)(uint64_t, uint64_t), uint64_t *a11)
{
  v11 = a7;
  v115 = *MEMORY[0x1E69E9840];
  sub_1B0C946BC(a5, a1, a2, a3);
  if (v20)
  {
    v21 = a2;
  }

  else
  {
    v21 = v19;
  }

  sub_1B0CA3370(a5, a1, a2, a3, a4, v21);
  v91 = v22;
  v94 = v23;
  v86 = v24;
  v26 = v25;
  v27 = *(a6 + 144);
  v113[8] = *(a6 + 128);
  v113[9] = v27;
  v113[10] = *(a6 + 160);
  v114 = *(a6 + 176);
  v28 = *(a6 + 80);
  v113[4] = *(a6 + 64);
  v113[5] = v28;
  v29 = *(a6 + 112);
  v113[6] = *(a6 + 96);
  v113[7] = v29;
  v30 = *(a6 + 16);
  v113[0] = *a6;
  v113[1] = v30;
  v31 = *(a6 + 48);
  v113[2] = *(a6 + 32);
  v113[3] = v31;
  v32 = sub_1B0717014(v113);
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  if (v26 < 0)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v94)
  {
    v33 = v94 + v26;
  }

  else
  {
    v33 = 0;
  }

  sub_1B0CB7368(v94, v33, v91, v106);
  sub_1B07169CC(a6, &v103);
  v103 = 0u;
  v104 = 0u;
  *&v105[0] = 0x1FFFFFFF0ELL;
  memset(v105 + 8, 0, 33);
  v34 = sub_1B0CB8540();
  if (v37 == 2)
  {
    v89 = 0;
    v38 = *&v105[0];
    if ((*&v105[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
    {
      v87 = 0uLL;
      v88 = 0uLL;
      v39 = a10;
LABEL_48:
      LOBYTE(v99) = v11;
      v39("Content-Type", "");
      v39(": ", "");
      *(&v99 + 1) = 14;
      sub_1B0C6ECE0(&v99, a6, v39, a11, a8, v98);
      sub_1B0C72700(v11, v39);
      v68 = 0;
      goto LABEL_51;
    }

    v84 = v32;
    v71 = *(&v105[1] + 1);
    v70 = *&v105[1];
    v88 = 0uLL;
    v87 = 0uLL;
    v93 = 0;
  }

  else
  {
    v40 = v34;
    v41 = v35;
    v42 = v36;
    v43 = v37;
    v84 = v32;
    v90 = v11;
    v82 = a6;
    v83 = a9;
    v93 = 0;
    v89 = 0;
    v88 = 0uLL;
    v87 = 0uLL;
    v44 = 0;
    do
    {
      sub_1B0CB7ED8(v40, v41, v42, v43 & 1, &v107);
      v95 = v107;
      v48 = v108;
      v49 = v109;
      v50 = v110;
      v51 = v111;
      v52 = v112;
      if (v111 >> 59 == 9)
      {
        v53 = v109;
        v54 = v108;
        v92 = v40;
        v55 = v43;
        v56 = v111;
        v57 = v112;
        v58 = v42;
        v59 = v41;
        v60 = v110;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

        v50 = v60;
        v41 = v59;
        v42 = v58;
        v52 = v57;
        v51 = v56;
        v43 = v55;
        v40 = v92;
        v48 = v54;
        v49 = v53;
        *&v87 = v95;
        *(&v87 + 1) = v48;
        *&v88 = v53;
        *(&v88 + 1) = v50;
        v89 = v51;
        v93 = v52;
      }

      if (!(v44 & 1 | (v40 == 0)) && v94 && &v40[-v94] >= 1)
      {
        v61 = v48;
        v62 = v42;
        v63 = v41;
        v64 = v50;
        sub_1B0C92F04(v91, v90, 1, a10, a11, 0, &v40[-v94], v94, v86);
        v50 = v64;
        v41 = v63;
        v42 = v62;
        v48 = v61;
      }

      if ((*&v105[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
      {
        if (*&v105[1])
        {
          v65 = (*(&v105[1] + 1) - *&v105[1]);
        }

        else
        {
          v65 = 0;
        }

        if ((v65 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_77;
        }

        v66 = v48;
        v67 = v50;
        sub_1B0C92F04(v91, v90, 1, a10, a11, 0, v65, *&v105[1], *(&v105[1] + 1));
        sub_1B0398EFC(&v103, &qword_1EB6E5D38, &qword_1B0EE0240);
        v50 = v67;
        v48 = v66;
      }

      *&v103 = v95;
      *(&v103 + 1) = v48;
      *&v104 = v49;
      *(&v104 + 1) = v50;
      *&v105[0] = v51;
      *(&v105[0] + 1) = v52;
      *&v105[1] = v40;
      *(&v105[1] + 1) = v41;
      *&v105[2] = v42;
      BYTE8(v105[2]) = v43 & 1;
      v40 = sub_1B0CB8540();
      v41 = v45;
      v42 = v46;
      v43 = v47;
      v44 = 1;
    }

    while (v47 != 2);
    v38 = *&v105[0];
    if ((*&v105[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
    {
      a6 = v82;
      v11 = v90;
      v39 = a10;
      v68 = v93;
      if (!v93)
      {
        a9 = v83;
        goto LABEL_48;
      }

      v69 = 0;
      a9 = v83;
LABEL_34:
      v72 = v11;
      if (v11)
      {
        goto LABEL_52;
      }

      goto LABEL_35;
    }

    v71 = *(&v105[1] + 1);
    v70 = *&v105[1];
    a9 = v83;
    a6 = v82;
    v11 = v90;
  }

  v39 = a10;
  if (v38 >> 59)
  {
    sub_1B0398EFC(&v103, &qword_1EB6E5D38, &qword_1B0EE0240);
    if (v70)
    {
      v73 = v71 - v70;
    }

    else
    {
      v73 = 0;
    }

    if ((v73 & 0x8000000000000000) == 0)
    {
      v74 = a11;
      sub_1B0C92F04(v91, v11, 1, a10, a11, 0, v73, v70, v71);
      v68 = v93;
      if (v93)
      {
        v69 = 0;
        v72 = v11;
        if (v11)
        {
          goto LABEL_52;
        }

        goto LABEL_35;
      }

      LOBYTE(v99) = v11;
      goto LABEL_50;
    }

    goto LABEL_78;
  }

  if (v84 == 1)
  {
    v68 = v93;
    if (v93)
    {
      v69 = 0;
      goto LABEL_34;
    }

    LOBYTE(v99) = v11;
    v74 = a11;
LABEL_50:
    a10("Content-Type", "");
    a10(": ", "");
    *(&v99 + 1) = 14;
    sub_1B0C6ECE0(&v99, a6, a10, v74, a8, v98);
    sub_1B0C72700(v11, a10);
LABEL_51:
    v69 = v98[0];
    v72 = v11;
    if (v11)
    {
      goto LABEL_52;
    }

    goto LABEL_35;
  }

  if (v93)
  {
    v101 = v105[0];
    v102[0] = v105[1];
    *(v102 + 9) = *(&v105[1] + 9);
    v99 = v103;
    v100 = v104;
    sub_1B03B5C80(&v99, v98, &qword_1EB6E5D40, &qword_1B0EE0250);
    v69 = 0;
  }

  else
  {
    v96[0] = v11;
    v101 = v105[0];
    v102[0] = v105[1];
    *(v102 + 9) = *(&v105[1] + 9);
    v99 = v103;
    v100 = v104;
    sub_1B03B5C80(&v99, v98, &qword_1EB6E5D40, &qword_1B0EE0250);
    a10("Content-Type", "");
    a10(": ", "");
    v97 = 14;
    sub_1B0C6ECE0(v96, a6, a10, a11, a8, v98);
    sub_1B0C72700(v11, a10);
    v69 = v98[0];
  }

  if (v70)
  {
    v81 = v71 - v70;
  }

  else
  {
    v81 = 0;
  }

  if (v81 < 0)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  sub_1B0C92F04(v91, v11, 1, a10, a11, 0, v81, v70, v71);
  v68 = v93;
  v72 = v11;
  if (v11)
  {
LABEL_52:
    if (v72 == 1)
    {
      v75 = 13;
    }

    else
    {
      v75 = 10;
    }

    LOBYTE(v99) = v75;
    v39(&v99, &v99 + 1);
    if (v69)
    {
      goto LABEL_56;
    }

LABEL_57:
    if (!v68)
    {
LABEL_60:
      sub_1B075E648(a6);
      v69 = 0;
      goto LABEL_61;
    }

    v99 = v87;
    v100 = v88;
    LOBYTE(v101) = v89;
    *(&v101 + 1) = v68;
    v76 = sub_1B0C7EB6C();
    if (v78 == 2)
    {

      goto LABEL_60;
    }

    v79 = v77;
    if ((v78 & 1) == 0)
    {
      v69 = sub_1B0CAB06C(v76, v77);
      goto LABEL_56;
    }

    if (v76)
    {
      v80 = v77 - v76;
    }

    else
    {
      v80 = 0;
    }

    if ((v80 & 0x8000000000000000) == 0)
    {
      v69 = sub_1B0C93CE8(0, v80, v76, v79);
      goto LABEL_56;
    }

LABEL_80:
    __break(1u);
  }

LABEL_35:
  v39("\r\n", "");
  if (!v69)
  {
    goto LABEL_57;
  }

LABEL_56:

  sub_1B075E648(a6);
LABEL_61:
  *a9 = v69;
}

const char *sub_1B0C68AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v15[0] = a1;
  v8 = MEMORY[0x1E69E6290];
  v9 = MEMORY[0x1E6969DF8];
  v13 = MEMORY[0x1E69E6290];
  v14 = MEMORY[0x1E6969DF8];
  v11 = "Content-Type";
  v12 = "";
  __swift_project_boxed_opaque_existential_0(&v11, MEMORY[0x1E69E6290]);
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v11);
  v13 = v8;
  v14 = v9;
  v11 = ": ";
  v12 = "";
  __swift_project_boxed_opaque_existential_0(&v11, v8);
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v11);
  v16 = 14;
  sub_1B0C6E584(v15, a3, a2, a4, &v11);
  sub_1B0C74C44(v7);
  return v11;
}

void sub_1B0C68BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v29 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 144);
  v26[8] = *(a2 + 128);
  v26[9] = v5;
  v26[10] = *(a2 + 160);
  v27 = *(a2 + 176);
  v6 = *(a2 + 80);
  v26[4] = *(a2 + 64);
  v26[5] = v6;
  v7 = *(a2 + 112);
  v26[6] = *(a2 + 96);
  v26[7] = v7;
  v8 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v8;
  v9 = *(a2 + 48);
  v26[2] = *(a2 + 32);
  v26[3] = v9;
  if (sub_1B0717014(v26) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    return;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v28 = *(v10 + 64);
  v11 = *(&v28 + 1);
  if (*(&v28 + 1))
  {
    v12 = v28;
    if (v12 == sub_1B0E44BB8() && v11 == v13)
    {

      return;
    }

    v14 = sub_1B0E46A78();
    sub_1B07169CC(a2, &v22);
    sub_1B03B5C80(&v28, &v22, &qword_1EB6E5D48, &unk_1B0EDD3F0);

    if (v14)
    {
      sub_1B0398EFC(&v28, &qword_1EB6E5D48, &unk_1B0EDD3F0);
LABEL_17:
      sub_1B075E648(a2);
      return;
    }

    v15 = MEMORY[0x1E69E6290];
    v16 = MEMORY[0x1E6969DF8];
    v24 = MEMORY[0x1E69E6290];
    v25 = MEMORY[0x1E6969DF8];
    v22 = "Content-Transfer-Encoding";
    v23 = "";
    __swift_project_boxed_opaque_existential_0(&v22, MEMORY[0x1E69E6290]);
    sub_1B0E42EF8();
    __swift_destroy_boxed_opaque_existential_0(&v22);
    v24 = v15;
    v25 = v16;
    v22 = ": ";
    v23 = "";
    __swift_project_boxed_opaque_existential_0(&v22, v15);
    sub_1B0E42EF8();
    __swift_destroy_boxed_opaque_existential_0(&v22);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1B0EDD3B0;
    v18 = (v17 + 16);
    *(v17 + 32) = v21;
    *(v17 + 40) = &v22;
    sub_1B0C7495C(v12, v11, v17);
    sub_1B0398EFC(&v28, &qword_1EB6E5D48, &unk_1B0EDD3F0);
    swift_beginAccess();
    v19 = *v18;
    if (__OFADD__(*v18, 27))
    {
      __break(1u);
    }

    else
    {
      if ((*v18 + 27) < 79)
      {
        goto LABEL_14;
      }

      sub_1B0C74C44(v4);
      v24 = v15;
      v20 = MEMORY[0x1E6969DF8];
      v25 = MEMORY[0x1E6969DF8];
      v22 = "\t";
      v23 = "";
      __swift_project_boxed_opaque_existential_0(&v22, v15);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v22);
      if ((v19 & 0x8000000000000000) == 0)
      {
        v24 = v15;
        v25 = v20;
        v22 = v21;
        v23 = &v21[v19];
        __swift_project_boxed_opaque_existential_0(&v22, v15);
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v22);

        if (v19 <= 0xA0)
        {
LABEL_16:
          sub_1B0C74C44(v4);
          goto LABEL_17;
        }

        __break(1u);
LABEL_14:
        if ((v19 & 0x8000000000000000) == 0)
        {
          v24 = v15;
          v25 = MEMORY[0x1E6969DF8];
          v22 = v21;
          v23 = &v21[v19];
          __swift_project_boxed_opaque_existential_0(&v22, v15);
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v22);

          if (v19 <= 0xA0)
          {
            goto LABEL_16;
          }

LABEL_22:
          __break(1u);
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }
}

void sub_1B0C68F64(char a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 144);
  v42[8] = *(a2 + 128);
  v42[9] = v5;
  v42[10] = *(a2 + 160);
  v43 = *(a2 + 176);
  v6 = *(a2 + 80);
  v42[4] = *(a2 + 64);
  v42[5] = v6;
  v7 = *(a2 + 112);
  v42[6] = *(a2 + 96);
  v42[7] = v7;
  v8 = *(a2 + 16);
  v42[0] = *a2;
  v42[1] = v8;
  v9 = *(a2 + 48);
  v42[2] = *(a2 + 32);
  v42[3] = v9;
  if (sub_1B0717014(v42) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    if (!v10[4])
    {
      return;
    }

    v11 = v10 + 10;
    v12 = v10 + 9;
    v13 = v10 + 8;
    v14 = v10 + 7;
    v15 = v10 + 6;
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    if (v16[12] == 1)
    {
      return;
    }

    v11 = v16 + 17;
    v15 = v16 + 13;
    v12 = v16 + 16;
    v13 = v16 + 15;
    v14 = v16 + 14;
  }

  v17 = *v14;
  if (*v14 >= 2)
  {
    v18 = *v13;
    v19 = *v15;
    v20 = *v12;
    v21 = *v11;
    v34 = a1;
    v35[0] = a1;
    v22 = MEMORY[0x1E69E6290];
    v23 = MEMORY[0x1E6969DF8];
    v40 = MEMORY[0x1E69E6290];
    v41 = MEMORY[0x1E6969DF8];
    v38 = "Content-Disposition";
    v39 = "";
    __swift_project_boxed_opaque_existential_0(&v38, MEMORY[0x1E69E6290]);
    v33 = v18;
    sub_1B0716E6C(v19, v17);
    sub_1B0E42EF8();
    __swift_destroy_boxed_opaque_existential_0(&v38);
    v40 = v22;
    v41 = v23;
    v38 = ": ";
    v39 = "";
    __swift_project_boxed_opaque_existential_0(&v38, v22);
    sub_1B0E42EF8();
    __swift_destroy_boxed_opaque_existential_0(&v38);
    v36 = 21;
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1B0EDD3B0;
    v25 = (v24 + 16);
    *(v24 + 32) = v37;
    *(v24 + 40) = &v38;
    v38 = v19;
    v39 = v17;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v26 = sub_1B0E44ED8();
    sub_1B0C7495C(v26, v27, v24);

    if (*(v21 + 16))
    {
      LOBYTE(v38) = 59;
      sub_1B0C72368(&v38, &v38 + 1, v24);
    }

    swift_beginAccess();
    v28 = *v25;
    v29 = __OFADD__(*v25, 21);
    v30 = *v25 + 21;
    if (v29)
    {
      __break(1u);
    }

    else
    {
      if (v30 < 79)
      {
        v31 = v34;
        if ((v28 & 0x8000000000000000) == 0)
        {
          v40 = v22;
          v41 = MEMORY[0x1E6969DF8];
          v38 = v37;
          v39 = &v37[v28];
          __swift_project_boxed_opaque_existential_0(&v38, v22);
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v38);

          if (v28 <= 0xA0)
          {
            goto LABEL_16;
          }

LABEL_22:
          __break(1u);
        }

        goto LABEL_20;
      }

      v31 = v34;
      sub_1B0C74C44(v34);
      v40 = v22;
      v32 = MEMORY[0x1E6969DF8];
      v41 = MEMORY[0x1E6969DF8];
      v38 = "\t";
      v39 = "";
      __swift_project_boxed_opaque_existential_0(&v38, v22);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v38);
      if ((v28 & 0x8000000000000000) == 0)
      {
        v40 = v22;
        v41 = v32;
        v38 = v37;
        v39 = &v37[v28];
        __swift_project_boxed_opaque_existential_0(&v38, v22);
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v38);

        if (v28 <= 0xA0)
        {
          v30 = v28 + 1;
LABEL_16:
          v36 = v30;
          sub_1B0C6D6A8(v33, v20, v21, v35, a3);
          sub_1B0C74C44(v31);

          return;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }
}

void sub_1B0C69348(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 144);
  v40[8] = *(a2 + 128);
  v40[9] = v6;
  v40[10] = *(a2 + 160);
  v41 = *(a2 + 176);
  v7 = *(a2 + 80);
  v40[4] = *(a2 + 64);
  v40[5] = v7;
  v8 = *(a2 + 112);
  v40[6] = *(a2 + 96);
  v40[7] = v8;
  v9 = *(a2 + 16);
  v40[0] = *a2;
  v40[1] = v9;
  v10 = *(a2 + 48);
  v40[2] = *(a2 + 32);
  v40[3] = v10;
  if (sub_1B0717014(v40) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    return;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v42 = *(v11 + 32);
  v12 = *(&v42 + 1);
  if (*(&v42 + 1))
  {
    v13 = v42;
    v33[0] = a1;
    v14 = MEMORY[0x1E69E6290];
    v15 = MEMORY[0x1E6969DF8];
    v39[3] = MEMORY[0x1E69E6290];
    v39[4] = MEMORY[0x1E6969DF8];
    v39[0] = "Content-ID";
    v39[1] = "";
    __swift_project_boxed_opaque_existential_0(v39, MEMORY[0x1E69E6290]);
    sub_1B07169CC(a2, &v35);
    sub_1B03B5C80(&v42, &v35, &qword_1EB6E3850, &qword_1B0E9B600);
    sub_1B0E42EF8();
    __swift_destroy_boxed_opaque_existential_0(v39);
    v37 = v14;
    v38 = v15;
    v35 = ": ";
    v36 = "";
    __swift_project_boxed_opaque_existential_0(&v35, v14);
    sub_1B0E42EF8();
    __swift_destroy_boxed_opaque_existential_0(&v35);
    v34 = 12;
    v16 = sub_1B0E44CF8();
    v20 = v16 + 2;
    if (__OFADD__(v16, 2))
    {
      __break(1u);
    }

    else
    {
      if (v20 < 0)
      {
        goto LABEL_21;
      }

      v32 = a1;
      v18 = &qword_1EB6E3850;
      v19 = &qword_1B0E9B600;
      v16 = &v42;
      v17 = &v35;
      if (v20 < 1025)
      {
        isStackAllocationSafe = sub_1B03B5C80(&v42, &v35, &qword_1EB6E3850, &qword_1B0E9B600);
LABEL_8:
        v31[1] = v31;
        MEMORY[0x1EEE9AC00](isStackAllocationSafe);
        v23 = v31 - v22;
        v24 = v31 + v20 - v22;
        v25 = swift_allocObject();
        v25[2] = 0;
        v25[3] = v20;
        v25[4] = v23;
        v25[5] = v24;
        LOBYTE(v35) = 60;
        sub_1B0C72368(&v35, &v35 + 1, v25);
        sub_1B0C742B8(v13, v12, v25);
        LOBYTE(v35) = 62;
        sub_1B0C72368(&v35, &v35 + 1, v25);
        swift_beginAccess();
        v26 = v25[2];
        if (!__OFADD__(v26, 12))
        {
          if (v26 + 12 < 79)
          {
            goto LABEL_13;
          }

          v27 = v32;
          sub_1B0C74C44(v32);
          v28 = MEMORY[0x1E69E6290];
          v37 = MEMORY[0x1E69E6290];
          v29 = MEMORY[0x1E6969DF8];
          v38 = MEMORY[0x1E6969DF8];
          v35 = "\t";
          v36 = "";
          __swift_project_boxed_opaque_existential_0(&v35, MEMORY[0x1E69E6290]);
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v35);
          if ((v26 & 0x8000000000000000) == 0)
          {
            v37 = v28;
            v38 = v29;
            v35 = v23;
            v36 = &v23[v26];
            __swift_project_boxed_opaque_existential_0(&v35, v28);
            sub_1B0E42EF8();
            __swift_destroy_boxed_opaque_existential_0(&v35);

            if (v20 >= v26)
            {
LABEL_15:
              sub_1B0398EFC(&v42, &qword_1EB6E3850, &qword_1B0E9B600);
              sub_1B0398EFC(&v42, &qword_1EB6E3850, &qword_1B0E9B600);
              sub_1B0C74C44(v27);
              sub_1B075E648(a2);
              return;
            }

            __break(1u);
LABEL_13:
            v27 = v32;
            if ((v26 & 0x8000000000000000) == 0)
            {
              v37 = MEMORY[0x1E69E6290];
              v38 = MEMORY[0x1E6969DF8];
              v35 = v23;
              v36 = &v23[v26];
              __swift_project_boxed_opaque_existential_0(&v35, MEMORY[0x1E69E6290]);
              sub_1B0E42EF8();
              __swift_destroy_boxed_opaque_existential_0(&v35);

              if (v20 >= v26)
              {
                goto LABEL_15;
              }

LABEL_24:
              __break(1u);
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    sub_1B03B5C80(v16, v17, v18, v19);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v30 = swift_slowAlloc();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C71E78(v30, &v30[v20], 0, v33, v13, v12, a3);
      MEMORY[0x1B272C230](v30, -1, -1);
      v27 = v32;
      goto LABEL_15;
    }

    goto LABEL_8;
  }
}

void sub_1B0C697EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a2 + 128);
  v6 = *(a2 + 160);
  v25[9] = *(a2 + 144);
  v25[10] = v6;
  v7 = *(a2 + 64);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v25[5] = *(a2 + 80);
  v25[6] = v8;
  v26 = *(a2 + 176);
  v25[7] = v9;
  v25[8] = v5;
  v10 = *(a2 + 16);
  v25[0] = *a2;
  v25[1] = v10;
  v11 = *(a2 + 48);
  v25[2] = *(a2 + 32);
  v25[3] = v11;
  v25[4] = v7;
  if (sub_1B0717014(v25) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    if (!v12[4])
    {
      return;
    }

    v13 = v12 + 11;
    v14 = v12 + 7;
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    if (v15[12] == 1)
    {
      return;
    }

    v13 = v15 + 18;
    v14 = v15 + 14;
  }

  if (*v14 != 1)
  {
    v16 = *v13;
    if (*v13)
    {
      if (*(v16 + 16))
      {
        v23[0] = v4;
        v17 = MEMORY[0x1E69E6290];
        v18 = MEMORY[0x1E6969DF8];
        v21 = MEMORY[0x1E69E6290];
        v22 = MEMORY[0x1E6969DF8];
        v19 = "Content-Language";
        v20 = "";
        __swift_project_boxed_opaque_existential_0(&v19, MEMORY[0x1E69E6290]);
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v19);
        v21 = v17;
        v22 = v18;
        v19 = ": ";
        v20 = "";
        __swift_project_boxed_opaque_existential_0(&v19, v17);
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v19);
        v24 = 18;
        sub_1B0C6E240(v23, v16, a3);
        sub_1B0C74C44(v4);
      }
    }
  }
}

void sub_1B0C69968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a2 + 128);
  v6 = *(a2 + 160);
  v29[9] = *(a2 + 144);
  v29[10] = v6;
  v7 = *(a2 + 64);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v29[5] = *(a2 + 80);
  v29[6] = v8;
  v30 = *(a2 + 176);
  v29[7] = v9;
  v29[8] = v5;
  v10 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v10;
  v11 = *(a2 + 48);
  v29[2] = *(a2 + 32);
  v29[3] = v11;
  v29[4] = v7;
  if (sub_1B0717014(v29) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    if (!v12[4])
    {
      return;
    }

    v13 = v12 + 14;
    v14 = v12 + 13;
    v15 = v12 + 12;
    v16 = v12 + 11;
    v17 = v12 + 7;
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    if (v18[12] == 1)
    {
      return;
    }

    v13 = v18 + 21;
    v14 = v18 + 20;
    v15 = v18 + 19;
    v16 = v18 + 18;
    v17 = v18 + 14;
  }

  if (*v17 != 1 && *v16 && *v13)
  {
    v19 = *v14;
    if (*v14)
    {
      v20 = *v15;
      v27[0] = v4;
      v21 = MEMORY[0x1E69E6290];
      v22 = MEMORY[0x1E6969DF8];
      v25 = MEMORY[0x1E69E6290];
      v26 = MEMORY[0x1E6969DF8];
      v23 = "Content-Location";
      v24 = "";
      __swift_project_boxed_opaque_existential_0(&v23, MEMORY[0x1E69E6290]);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v23);
      v25 = v21;
      v26 = v22;
      v23 = ": ";
      v24 = "";
      __swift_project_boxed_opaque_existential_0(&v23, v21);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v23);
      v28 = 18;
      sub_1B0C6D3A8(v20, v19, v27, a3);
      sub_1B0C74C44(v4);
    }
  }
}

void sub_1B0C69B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), uint64_t a5)
{
  v485 = *MEMORY[0x1E69E9840];
  v356 = sub_1B0E443C8();
  v10 = *(v356 - 8);
  MEMORY[0x1EEE9AC00](v356);
  v12 = &v341[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v351 = &v341[-v14];
  v359 = type metadata accessor for Message.Data(0);
  MEMORY[0x1EEE9AC00](v359);
  v349 = &v341[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v357 = &v341[-v17];
  v367 = type metadata accessor for Message(0);
  v18 = *(v367 - 8);
  MEMORY[0x1EEE9AC00](v367);
  v371 = &v341[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v368 = &v341[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v374 = &v341[-v23];
  v386[2] = a5;
  v366 = *(a2 + 16);
  if (v366)
  {
    v350 = 0;
    v24 = a2 + 32;
    v25 = 0;
    v358 = &v387 + 1;
    v364 = (a3 + 32);
    v365 = v24;
    v372 = &v391 + 1;
    v362 = (v18 + 48);
    v363 = (v18 + 56);
    v354 = (v10 + 32);
    v355 = (v10 + 8);
    v353 = &v394[1];
    v369 = a3;
    v26 = MEMORY[0x1E69E6290];
    v346 = a5;
    v380 = a1;
    v370 = a4;
    v361 = v12;
    while (1)
    {
      v27 = (v365 + 184 * v25);
      v28 = v27[9];
      v29 = v27[7];
      v407 = v27[8];
      v408 = v28;
      v30 = v27[9];
      v409 = v27[10];
      v31 = v27[5];
      v32 = v27[3];
      v403 = v27[4];
      v404 = v31;
      v33 = v27[5];
      v34 = v27[7];
      v405 = v27[6];
      v406 = v34;
      v35 = v27[1];
      v399 = *v27;
      v400 = v35;
      v36 = v27[3];
      v38 = *v27;
      v37 = v27[1];
      v401 = v27[2];
      v402 = v36;
      v446 = v407;
      v447 = v30;
      v448 = v27[10];
      v442 = v403;
      v443 = v33;
      v444 = v405;
      v445 = v29;
      v438 = v38;
      v439 = v37;
      v410 = *(v27 + 176);
      v449 = *(v27 + 176);
      v440 = v401;
      v441 = v32;
      v373 = v25;
      if (v25)
      {
        if (a1)
        {
          if (a1 == 1)
          {
            v39 = 13;
          }

          else
          {
            v39 = 10;
          }

          LOBYTE(v387) = v39;
          *(&v392 + 1) = v26;
          v40 = MEMORY[0x1E6969DF8];
          *&v393[0] = MEMORY[0x1E6969DF8];
          *&v391 = &v387;
          v41 = v358;
        }

        else
        {
          *(&v392 + 1) = v26;
          v40 = MEMORY[0x1E6969DF8];
          *&v393[0] = MEMORY[0x1E6969DF8];
          v41 = "";
          *&v391 = "\r\n";
        }

        *(&v391 + 1) = v41;
        __swift_project_boxed_opaque_existential_0(&v391, v26);
        sub_1B07169CC(&v399, &v395);
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v391);
      }

      else
      {
        sub_1B07169CC(&v399, &v395);
        v40 = MEMORY[0x1E6969DF8];
      }

      *(&v396 + 1) = v26;
      *&v397 = v40;
      *&v395 = "--";
      *(&v395 + 1) = "";
      __swift_project_boxed_opaque_existential_0(&v395, v26);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v395);
      v42 = *(v369 + 16);
      v43 = v364;
      for (i = v372; v42; --v42)
      {
        v48 = *v43++;
        v47 = v48;
        if ((v48 - 127) > 0xFFFFFFA0)
        {
          LOBYTE(v391) = v47;
          *(&v396 + 1) = MEMORY[0x1E69E6290];
          *&v397 = MEMORY[0x1E6969DF8];
          *&v395 = &v391;
          *(&v395 + 1) = i;
          __swift_project_boxed_opaque_existential_0(&v395, MEMORY[0x1E69E6290]);
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v395);
        }
      }

      if (a1)
      {
        v45 = v368;
        v46 = a1 == 1 ? 13 : 10;
        LOBYTE(v391) = v46;
        *(&v396 + 1) = MEMORY[0x1E69E6290];
        *&v397 = MEMORY[0x1E6969DF8];
        *&v395 = &v391;
        *(&v395 + 1) = i;
        __swift_project_boxed_opaque_existential_0(&v395, MEMORY[0x1E69E6290]);
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v395);
      }

      else
      {
        *(&v396 + 1) = MEMORY[0x1E69E6290];
        *&v397 = MEMORY[0x1E6969DF8];
        *&v395 = "\r\n";
        *(&v395 + 1) = "";
        __swift_project_boxed_opaque_existential_0(&v395, MEMORY[0x1E69E6290]);
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v395);
        v45 = v368;
      }

      v49 = v374;
      v50 = v367;
      (*v363)(v374, 1, 1, v367);
      sub_1B03B5C80(v49, v45, &unk_1EB6E2E10, &qword_1B0E9B598);
      if ((*v362)(v45, 1, v50) != 1)
      {
        break;
      }

      sub_1B0398EFC(v45, &unk_1EB6E2E10, &qword_1B0E9B598);
      LOBYTE(v391) = a1;
      v26 = MEMORY[0x1E69E6290];
      *(&v396 + 1) = MEMORY[0x1E69E6290];
      v51 = MEMORY[0x1E6969DF8];
      *&v397 = MEMORY[0x1E6969DF8];
      *&v395 = "Content-Type";
      *(&v395 + 1) = "";
      __swift_project_boxed_opaque_existential_0(&v395, MEMORY[0x1E69E6290]);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v395);
      *(&v396 + 1) = v26;
      *&v397 = v51;
      *&v395 = ": ";
      *(&v395 + 1) = "";
      __swift_project_boxed_opaque_existential_0(&v395, v26);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v395);
      *(&v391 + 1) = 14;
      sub_1B0C6E584(&v391, &v438, a4, a5, &v387);
      if (a1)
      {
        if (a1 == 1)
        {
          v52 = 13;
        }

        else
        {
          v52 = 10;
        }

        v394[0] = v52;
        *(&v396 + 1) = v26;
        *&v397 = v51;
        *&v395 = v394;
        *(&v395 + 1) = v353;
        __swift_project_boxed_opaque_existential_0(&v395, v26);
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v395);
      }

      else
      {
        *(&v396 + 1) = v26;
        *&v397 = v51;
        *&v395 = "\r\n";
        *(&v395 + 1) = "";
        __swift_project_boxed_opaque_existential_0(&v395, v26);
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v395);
      }

      v69 = v387;
      sub_1B0C68BDC(a1, &v438, a5);
      sub_1B0C68F64(a1, &v438, a5);
      sub_1B0C69348(a1, &v438, a5);
      v480[8] = v446;
      v480[9] = v447;
      v480[10] = v448;
      v480[4] = v442;
      v480[5] = v443;
      v480[6] = v444;
      v480[7] = v445;
      v480[0] = v438;
      v480[1] = v439;
      v480[2] = v440;
      v481 = v449;
      v480[3] = v441;
      v70 = sub_1B0717014(v480);
      v71 = v372;
      if (v70 == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      }

      else
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v484 = *(v72 + 48);
        v73 = *(&v484 + 1);
        if (*(&v484 + 1))
        {
          v382 = v484;
          LOBYTE(v387) = a1;
          *(&v392 + 1) = v26;
          v74 = MEMORY[0x1E6969DF8];
          *&v393[0] = MEMORY[0x1E6969DF8];
          *&v391 = "Content-Description";
          *(&v391 + 1) = "";
          __swift_project_boxed_opaque_existential_0(&v391, v26);
          sub_1B07169CC(&v438, &v395);
          sub_1B03B5C80(&v484, &v395, &qword_1EB6E3850, &qword_1B0E9B600);
          a4 = v370;
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v391);
          *(&v396 + 1) = v26;
          *&v397 = v74;
          *&v395 = ": ";
          *(&v395 + 1) = "";
          __swift_project_boxed_opaque_existential_0(&v395, v26);
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v395);
          v388 = 21;
          v71 = v372;
          sub_1B0C6D3A8(v382, v73, &v387, a5);
          sub_1B0398EFC(&v484, &qword_1EB6E3850, &qword_1B0E9B600);
          sub_1B0C74C44(a1);
          sub_1B075E648(&v438);
        }
      }

      sub_1B0C697EC(a1, &v438, a5);
      sub_1B0C69968(a1, &v438, a5);
      v482[8] = v446;
      v482[9] = v447;
      v482[10] = v448;
      v482[4] = v442;
      v482[5] = v443;
      v482[6] = v444;
      v482[7] = v445;
      v482[0] = v438;
      v482[1] = v439;
      v482[2] = v440;
      v483 = v449;
      v482[3] = v441;
      if (sub_1B0717014(v482) == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      }

      else
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v76 = *(v75 + 80);
        if (v76 > 0)
        {
          sub_1B0C6FEFC(a1, v76, a5);
        }
      }

      if (a1)
      {
        if (a1 == 1)
        {
          v77 = 13;
        }

        else
        {
          v77 = 10;
        }

        LOBYTE(v391) = v77;
        *(&v396 + 1) = v26;
        *&v397 = MEMORY[0x1E6969DF8];
        *&v395 = &v391;
        *(&v395 + 1) = v71;
      }

      else
      {
        *(&v396 + 1) = v26;
        *&v397 = MEMORY[0x1E6969DF8];
        *&v395 = "\r\n";
        *(&v395 + 1) = "";
      }

      __swift_project_boxed_opaque_existential_0(&v395, v26);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v395);
      v78 = v373;
LABEL_397:
      v470[8] = v446;
      v470[9] = v447;
      v470[10] = v448;
      v470[4] = v442;
      v470[5] = v443;
      v470[6] = v444;
      v470[7] = v445;
      v470[0] = v438;
      v470[1] = v439;
      v470[2] = v440;
      v471 = v449;
      v470[3] = v441;
      if (sub_1B0717014(v470) == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        if (!v69)
        {
          sub_1B075E648(&v438);
          goto LABEL_5;
        }

        sub_1B0C69B14(a1, *v335, v69, a4, a5);
      }

      else
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      }

      sub_1B075E648(&v438);

LABEL_5:
      v12 = v361;
      v25 = v78 + 1;
      sub_1B0398EFC(v374, &unk_1EB6E2E10, &qword_1B0E9B598);
      if (v25 == v366)
      {
        goto LABEL_406;
      }
    }

    v53 = v371;
    v54 = sub_1B0C74D18(v45, v371);
    a1 = v341;
    MEMORY[0x1EEE9AC00](v54);
    LOBYTE(v337) = v55;
    v338 = a4;
    MEMORY[0x1EEE9AC00](v56);
    v339 = sub_1B0C76E44;
    v340 = v57;
    v58 = v53;
    v59 = v357;
    sub_1B0C74DAC(v58, v357, type metadata accessor for Message.Data);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v60 = v59;
      v61 = v351;
      v62 = v356;
      (*v354)(v351, v60, v356);
      sub_1B075CEE0();
      sub_1B0E45668();
      sub_1B0E456C8();
      (*v355)(v61, v62);
      if (v395 == v391)
      {
LABEL_69:
        v468[8] = v446;
        v468[9] = v447;
        v468[10] = v448;
        v468[4] = v442;
        v468[5] = v443;
        v468[6] = v444;
        v468[7] = v445;
        v468[0] = v438;
        v468[1] = v439;
        v468[2] = v440;
        v469 = v449;
        v468[3] = v441;
        LODWORD(v352) = sub_1B0717014(v468);
        v360 = v341;
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v26 = MEMORY[0x1E69E6290];
        v93 = MEMORY[0x1E6969DF8];
        memset(v394, 0, 64);
        v394[64] = 3;
        sub_1B07169CC(&v438, &v395);
        v391 = 0u;
        v392 = 0u;
        *&v393[0] = 0x1FFFFFFF0ELL;
        *(v393 + 8) = 0u;
        *(&v393[1] + 8) = 0u;
        BYTE8(v393[2]) = 0;
        v94 = sub_1B0CB8540();
        if (v97 == 2)
        {
          v379 = 0;
          if ((*&v393[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
          {
            v375 = 0;
            v376 = 0;
            v377 = 0;
            v378 = 0;
            v98 = v380;
            v99 = v370;
            goto LABEL_86;
          }

          v119 = *(&v393[1] + 1);
          v118 = *&v393[1];
          v377 = 0;
          v378 = 0;
          v375 = 0;
          v376 = 0;
          v381 = 0;
          v113 = v370;
          if (!(*&v393[0] >> 59))
          {
            goto LABEL_89;
          }
        }

        else
        {
          v100 = v95;
          v101 = v96;
          v102 = v97;
          v381 = 0;
          v378 = 0;
          v379 = 0;
          v376 = 0;
          v377 = 0;
          v375 = 0;
          do
          {
            v382 = v94;
            sub_1B0CB7ED8(v94, v100, v101, v102 & 1, v411);
            v106 = v411[0];
            v107 = v411[1];
            v108 = v411[2];
            v109 = v411[3];
            v110 = v412;
            v111 = v413;
            if (v412 >> 59 == 9)
            {
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

              v375 = v106;
              v376 = v107;
              v377 = v108;
              v378 = v109;
              v379 = v110;
              v381 = v111;
            }

            if ((*&v393[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
            {
              if (*&v393[1])
              {
                v112 = (*(&v393[1] + 1) - *&v393[1]);
              }

              else
              {
                v112 = 0;
              }

              if ((v112 & 0x8000000000000000) != 0)
              {
                __break(1u);
                goto LABEL_408;
              }

              sub_1B0C92F04(3, v380, 1, sub_1B0C76E40, v386, 0, v112, *&v393[1], *(&v393[1] + 1));
              sub_1B0398EFC(&v391, &qword_1EB6E5D38, &qword_1B0EE0240);
            }

            *&v391 = v106;
            *(&v391 + 1) = v107;
            *&v392 = v108;
            *(&v392 + 1) = v109;
            *&v393[0] = v110;
            *(&v393[0] + 1) = v111;
            *&v393[1] = v382;
            *(&v393[1] + 1) = v100;
            *&v393[2] = v101;
            BYTE8(v393[2]) = v102 & 1;
            v94 = sub_1B0CB8540();
            v100 = v103;
            v101 = v104;
            v102 = v105;
          }

          while (v105 != 2);
          v113 = v370;
          if ((*&v393[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
          {
            a5 = v346;
            v98 = v380;
            v26 = MEMORY[0x1E69E6290];
            v114 = v381;
            if (!v381)
            {
              v93 = MEMORY[0x1E6969DF8];
              v99 = v370;
LABEL_86:
              LOBYTE(v387) = v98;
              *(&v396 + 1) = v26;
              *&v397 = v93;
              *&v395 = "Content-Type";
              *(&v395 + 1) = "";
              __swift_project_boxed_opaque_existential_0(&v395, v26);
              sub_1B0E42EF8();
              __swift_destroy_boxed_opaque_existential_0(&v395);
              *(&v396 + 1) = v26;
              *&v397 = v93;
              *&v395 = ": ";
              *(&v395 + 1) = "";
              __swift_project_boxed_opaque_existential_0(&v395, v26);
              sub_1B0E42EF8();
              __swift_destroy_boxed_opaque_existential_0(&v395);
              v388 = 14;
              sub_1B0C6ECE0(&v387, &v438, sub_1B0C76E40, v386, v99, &v395);
              sub_1B0C72700(v98, sub_1B0C76E40);
              v115 = v395;
              v114 = 0;
              v116 = v98;
              if (!v98)
              {
LABEL_87:
                *(&v396 + 1) = v26;
                *&v397 = v93;
                v117 = "";
                *&v395 = "\r\n";
LABEL_105:
                *(&v395 + 1) = v117;
                __swift_project_boxed_opaque_existential_0(&v395, v26);
                sub_1B0E42EF8();
                __swift_destroy_boxed_opaque_existential_0(&v395);
                v78 = v373;
                if (v115)
                {

                  sub_1B075E648(&v438);
                }

                else if (v114)
                {
                  v122 = v373;
                  v432 = v375;
                  v433 = v376;
                  v434 = v377;
                  v435 = v378;
                  v436 = v379;
                  v437 = v114;
                  v123 = sub_1B0C7EB6C();
                  if (v125 == 2)
                  {

                    sub_1B075E648(&v438);
                    v115 = 0;
                    v78 = v122;
                  }

                  else
                  {
                    v149 = v124;
                    if (v125)
                    {
                      if (v123)
                      {
                        v150 = v124 - v123;
                      }

                      else
                      {
                        v150 = 0;
                      }

                      if (v150 < 0)
                      {
                        goto LABEL_429;
                      }

                      v151 = v350;
                      v115 = sub_1B0C93CE8(0, v150, v123, v149);
                      v350 = v151;
                    }

                    else
                    {
                      v115 = sub_1B0CAB06C(v123, v124);
                    }

                    sub_1B075E648(&v438);
                    v78 = v122;
                  }
                }

                else
                {
                  sub_1B075E648(&v438);
                  v115 = 0;
                }

                *&v395 = v115;
                sub_1B0C74E2C(v371);
                goto LABEL_396;
              }

LABEL_101:
              if (v116 == 1)
              {
                v121 = 13;
              }

              else
              {
                v121 = 10;
              }

              LOBYTE(v387) = v121;
              *(&v396 + 1) = v26;
              *&v397 = v93;
              *&v395 = &v387;
              v117 = v358;
              goto LABEL_105;
            }

            goto LABEL_98;
          }

          v119 = *(&v393[1] + 1);
          v118 = *&v393[1];
          a5 = v346;
          v26 = MEMORY[0x1E69E6290];
          if (!(*&v393[0] >> 59))
          {
LABEL_89:
            if (v352 != 1)
            {
              if (v381)
              {
                v397 = v393[0];
                v398[0] = v393[1];
                *(v398 + 9) = *(&v393[1] + 9);
                v395 = v391;
                v396 = v392;
                sub_1B03B5C80(&v395, &v387, &qword_1EB6E5D40, &qword_1B0EE0250);
                v115 = 0;
              }

              else
              {
                v242 = v380;
                v384[0] = v380;
                v389 = v26;
                v243 = MEMORY[0x1E6969DF8];
                v390 = MEMORY[0x1E6969DF8];
                v387 = "Content-Type";
                v388 = "";
                __swift_project_boxed_opaque_existential_0(&v387, v26);
                sub_1B03B5C80(&v391, &v395, &qword_1EB6E5D38, &qword_1B0EE0240);
                v244 = v370;
                sub_1B0E42EF8();
                __swift_destroy_boxed_opaque_existential_0(&v387);
                *(&v396 + 1) = v26;
                *&v397 = v243;
                *&v395 = ": ";
                *(&v395 + 1) = "";
                __swift_project_boxed_opaque_existential_0(&v395, v26);
                sub_1B0E42EF8();
                __swift_destroy_boxed_opaque_existential_0(&v395);
                v385 = 14;
                sub_1B0C6ECE0(v384, &v438, sub_1B0C76E40, v386, v244, &v395);
                sub_1B0C72700(v242, sub_1B0C76E40);
                v115 = v395;
              }

              if (v118)
              {
                v245 = v119 - v118;
              }

              else
              {
                v245 = 0;
              }

              if (v245 < 0)
              {
                goto LABEL_418;
              }

              v246 = v380;
              sub_1B0C92F04(3, v380, 1, sub_1B0C76E40, v386, 0, v245, v118, v119);
              v93 = MEMORY[0x1E6969DF8];
              v114 = v381;
              v116 = v246;
              if (!v246)
              {
                goto LABEL_87;
              }

              goto LABEL_101;
            }

            v114 = v381;
            if (v381)
            {
              v115 = 0;
              v98 = v380;
LABEL_99:
              v93 = MEMORY[0x1E6969DF8];
              goto LABEL_100;
            }

            v98 = v380;
            LOBYTE(v387) = v380;
            *(&v396 + 1) = v26;
            v93 = MEMORY[0x1E6969DF8];
            *&v397 = MEMORY[0x1E6969DF8];
            *&v395 = "Content-Type";
            *(&v395 + 1) = "";
            __swift_project_boxed_opaque_existential_0(&v395, v26);
            sub_1B0E42EF8();
            __swift_destroy_boxed_opaque_existential_0(&v395);
            *(&v396 + 1) = v26;
            *&v397 = v93;
            *&v395 = ": ";
            *(&v395 + 1) = "";
            __swift_project_boxed_opaque_existential_0(&v395, v26);
            sub_1B0E42EF8();
            __swift_destroy_boxed_opaque_existential_0(&v395);
            v388 = 14;
            sub_1B0C6ECE0(&v387, &v438, sub_1B0C76E40, v386, v113, &v395);
            sub_1B0C72700(v98, sub_1B0C76E40);
            v115 = v395;
LABEL_100:
            v116 = v98;
            if (!v98)
            {
              goto LABEL_87;
            }

            goto LABEL_101;
          }
        }

        sub_1B0398EFC(&v391, &qword_1EB6E5D38, &qword_1B0EE0240);
        if (v118)
        {
          v120 = v119 - v118;
        }

        else
        {
          v120 = 0;
        }

        if (v120 < 0)
        {
          goto LABEL_411;
        }

        v98 = v380;
        sub_1B0C92F04(3, v380, 1, sub_1B0C76E40, v386, 0, v120, v118, v119);
        v114 = v381;
        if (!v381)
        {
          LOBYTE(v387) = v98;
          *(&v396 + 1) = v26;
          v93 = MEMORY[0x1E6969DF8];
          *&v397 = MEMORY[0x1E6969DF8];
          *&v395 = "Content-Type";
          *(&v395 + 1) = "";
          __swift_project_boxed_opaque_existential_0(&v395, v26);
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v395);
          *(&v396 + 1) = v26;
          *&v397 = v93;
          *&v395 = ": ";
          *(&v395 + 1) = "";
          __swift_project_boxed_opaque_existential_0(&v395, v26);
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v395);
          v388 = 14;
          sub_1B0C6ECE0(&v387, &v438, sub_1B0C76E40, v386, v113, &v395);
          sub_1B0C72700(v98, sub_1B0C76E40);
          v115 = v395;
          goto LABEL_100;
        }

LABEL_98:
        v115 = 0;
        goto LABEL_99;
      }
    }

    else
    {
      v63 = *v59;
      v64 = v59[1];
      v65 = v64 >> 62;
      if ((v64 >> 62) > 1)
      {
        if (v65 != 2)
        {
          sub_1B0391D50(v63, v64);
          goto LABEL_69;
        }

        v67 = *(v63 + 16);
        v68 = *(v63 + 24);
        sub_1B0391D50(v63, v64);
      }

      else if (v65)
      {
        v79 = *v59;
        sub_1B0391D50(v63, v64);
        v67 = v79;
        v68 = v79 >> 32;
      }

      else
      {
        v66 = v59[1];
        sub_1B0391D50(v63, v64);
        v67 = 0;
        v68 = BYTE6(v66);
      }

      if (v67 == v68)
      {
        goto LABEL_69;
      }
    }

    v80 = v349;
    sub_1B0C74DAC(v371, v349, type metadata accessor for Message.Data);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v81 = v356;
      v82 = (*v354)(v12, v80, v356);
      v83 = v12;
      v84 = v81;
      MEMORY[0x1EEE9AC00](v82);
      v337 = v83;
      v338 = sub_1B0C76E28;
      v339 = &v337;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5D30, &qword_1B0EDD3E0);
      v85 = v350;
      sub_1B0E44328();
      v350 = v85;
      if (v85)
      {

        (*v355)(v83, v84);
        __break(1u);
        return;
      }

      sub_1B0C74E2C(v371);
      (*v355)(v83, v84);
      v26 = MEMORY[0x1E69E6290];
      v78 = v373;
      goto LABEL_396;
    }

    v87 = *v80;
    v86 = v80[1];
    v88 = v86 >> 62;
    v360 = v341;
    v344 = v87;
    v345 = v86;
    if ((v86 >> 62) <= 1)
    {
      if (!v88)
      {
        v383[0] = v87;
        LOWORD(v383[1]) = v86;
        BYTE2(v383[1]) = BYTE2(v86);
        BYTE3(v383[1]) = BYTE3(v86);
        BYTE4(v383[1]) = BYTE4(v86);
        BYTE5(v383[1]) = BYTE5(v86);
        v89 = memchr(v383, 10, BYTE6(v86));
        if (!v89 || (v90 = v89 - v383, v89 - v383 < 0))
        {
          v92 = BYTE6(v86);
          goto LABEL_279;
        }

        v91 = v90 + 1;
        if (__OFADD__(v90, 1))
        {
          goto LABEL_412;
        }

        if (BYTE6(v86) < v91)
        {
          v92 = BYTE6(v86);
          a5 = v346;
          goto LABEL_279;
        }

        if (v91 < v90)
        {
          goto LABEL_413;
        }

        if (v89 == v383)
        {
          v256 = 0;
        }

        else if (*(v383 + v90 - 1) == 13)
        {
          v256 = v90 - 1;
        }

        else
        {
          v256 = v89 - v383;
        }

        while (1)
        {
          v259 = v383 + v91;
          v260 = memchr(v383 + v91, 10, BYTE6(v86) - v91);
          if (!v260)
          {
            goto LABEL_278;
          }

          v261 = v260 - v259;
          if (v260 - v259 < 0)
          {
            goto LABEL_278;
          }

          v262 = v261 + 1;
          if (__OFADD__(v261, 1))
          {
            goto LABEL_412;
          }

          if (BYTE6(v86) - v91 < v262)
          {
LABEL_278:
            v92 = BYTE6(v86);
            a5 = v346;
            goto LABEL_279;
          }

          v263 = v261 + v91;
          if (__OFADD__(v261, v91))
          {
            goto LABEL_414;
          }

          v92 = v262 + v91;
          if (__OFADD__(v262, v91))
          {
            goto LABEL_415;
          }

          if (v262 < v261 || v92 < v263)
          {
            goto LABEL_413;
          }

          if (v91 < v263)
          {
            if (v263 > BYTE6(v86))
            {
              goto LABEL_426;
            }

            if (*(v383 + v263 - 1) == 13)
            {
              --v263;
            }
          }

          if (v91 == v263)
          {
            break;
          }

          if (BYTE6(v86) < v92)
          {
            goto LABEL_416;
          }

          v256 = v263;
          v264 = v92 < v91;
          v91 += v262;
          if (v264)
          {
            goto LABEL_417;
          }
        }

        if (v92 < v256 || BYTE6(v86) < v92)
        {
          goto LABEL_439;
        }

        v264 = v92 < v91;
        a5 = v346;
        v26 = 0x1FFFFFFF0ELL;
        if (v264)
        {
          __break(1u);
LABEL_406:
          sub_1B0C74C44(a1);
          *(&v400 + 1) = v26;
          v336 = MEMORY[0x1E6969DF8];
          *&v401 = MEMORY[0x1E6969DF8];
          *&v399 = "--";
          *(&v399 + 1) = "";
          __swift_project_boxed_opaque_existential_0(&v399, v26);
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v399);
          sub_1B0C76D34(v369);
          *(&v400 + 1) = v26;
          *&v401 = v336;
          *&v399 = "--";
          *(&v399 + 1) = "";
          __swift_project_boxed_opaque_existential_0(&v399, v26);
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v399);
          sub_1B0C74C44(a1);
          return;
        }

LABEL_279:
        sub_1B0CA3370(3, 0, BYTE6(v86), v383, v383 + BYTE6(v86), v92);
        LODWORD(v377) = v265;
        v381 = v266;
        v343 = v267;
        v269 = v268;
        v474[8] = v446;
        v474[9] = v447;
        v474[10] = v448;
        v474[4] = v442;
        v474[5] = v443;
        v474[6] = v444;
        v474[7] = v445;
        v474[0] = v438;
        v474[1] = v439;
        v474[2] = v440;
        v475 = v449;
        v474[3] = v441;
        v270 = sub_1B0717014(v474);
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        if (v269 < 0)
        {
          goto LABEL_425;
        }

        if (v381)
        {
          v271 = v381 + v269;
        }

        else
        {
          v271 = 0;
        }

        sub_1B0CB7368(v381, v271, v377, v394);
        sub_1B07169CC(&v438, &v395);
        v391 = 0u;
        v392 = 0u;
        *&v393[0] = 0x1FFFFFFF0ELL;
        *(v393 + 8) = 0u;
        *(&v393[1] + 8) = 0u;
        BYTE8(v393[2]) = 0;
        v382 = sub_1B0CB8540();
        if (v274 == 2)
        {
          v376 = 0;
          v275 = 0;
          if ((*&v393[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
          {
            v347 = 0;
            v348 = 0;
            v352 = 0;
            v375 = 0;
            v276 = v380;
            v277 = v370;
            v26 = MEMORY[0x1E69E6290];
            goto LABEL_320;
          }

          v342 = v270;
          v303 = *(&v393[1] + 1);
          v302 = *&v393[1];
          v375 = 0;
          v352 = 0;
          v347 = 0;
          v348 = 0;
          if (!(*&v393[0] >> 59))
          {
LABEL_305:
            if (v342 == 1)
            {
              if (v275)
              {
                v239 = 0;
                v26 = MEMORY[0x1E69E6290];
                goto LABEL_308;
              }

              v306 = v380;
              goto LABEL_369;
            }

            if (v275)
            {
              v397 = v393[0];
              v398[0] = v393[1];
              *(v398 + 9) = *(&v393[1] + 9);
              v395 = v391;
              v396 = v392;
              sub_1B03B5C80(&v395, &v387, &qword_1EB6E5D40, &qword_1B0EE0250);
              v239 = 0;
            }

            else
            {
              v328 = v380;
              v384[0] = v380;
              v329 = MEMORY[0x1E69E6290];
              v389 = MEMORY[0x1E69E6290];
              v390 = MEMORY[0x1E6969DF8];
              v387 = "Content-Type";
              v388 = "";
              __swift_project_boxed_opaque_existential_0(&v387, MEMORY[0x1E69E6290]);
              v379 = 0;
              sub_1B03B5C80(&v391, &v395, &qword_1EB6E5D38, &qword_1B0EE0240);
              v275 = v379;
              sub_1B0E42EF8();
              __swift_destroy_boxed_opaque_existential_0(&v387);
              *(&v396 + 1) = v329;
              *&v397 = MEMORY[0x1E6969DF8];
              *&v395 = ": ";
              *(&v395 + 1) = "";
              __swift_project_boxed_opaque_existential_0(&v395, v329);
              sub_1B0E42EF8();
              __swift_destroy_boxed_opaque_existential_0(&v395);
              v385 = 14;
              sub_1B0C6ECE0(v384, &v438, sub_1B0C76E40, v386, v370, &v395);
              sub_1B0C72700(v328, sub_1B0C76E40);
              v239 = v395;
            }

            if (v302)
            {
              v330 = v303 - v302;
            }

            else
            {
              v330 = 0;
            }

            if (v330 < 0)
            {
              goto LABEL_435;
            }

            v306 = v380;
            sub_1B0C92F04(v377, v380, 1, sub_1B0C76E40, v386, 0, v330, v302, v303);
            goto LABEL_376;
          }
        }

        else
        {
          v278 = v272;
          v279 = v273;
          v280 = v274;
          v342 = v270;
          v379 = 0;
          v375 = 0;
          v376 = 0;
          v352 = 0;
          v347 = 0;
          v348 = 0;
          v281 = 0;
          do
          {
            sub_1B0CB7ED8(v382, v278, v279, v280 & 1, &v420);
            v287 = v420;
            v288 = v421;
            v283 = v422;
            v289 = v423;
            v290 = v424;
            v291 = v425;
            if (v424 >> 59 == 9)
            {
              v378 = v425;
              v292 = v280;
              v293 = v424;
              v294 = v279;
              v295 = v278;
              v296 = v423;
              v297 = v420;
              v298 = v421;
              v299 = v422;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

              v283 = v299;
              v288 = v298;
              v287 = v297;
              v289 = v296;
              v278 = v295;
              v279 = v294;
              v290 = v293;
              v280 = v292;
              v291 = v378;
              v347 = v287;
              v348 = v288;
              v352 = v283;
              v375 = v289;
              v376 = v290;
              v379 = v378;
            }

            if (!(v281 & 1 | (v382 == 0)) && v381 && &v382[-v381] >= 1)
            {
              v300 = v283;
              sub_1B0C92F04(v377, v380, 1, sub_1B0C76E40, v386, 0, &v382[-v381], v381, v343);
              v283 = v300;
            }

            if ((*&v393[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
            {
              if (*&v393[1])
              {
                v301 = (*(&v393[1] + 1) - *&v393[1]);
              }

              else
              {
                v301 = 0;
              }

              if ((v301 & 0x8000000000000000) != 0)
              {
                goto LABEL_410;
              }

              v282 = v283;
              sub_1B0C92F04(v377, v380, 1, sub_1B0C76E40, v386, 0, v301, *&v393[1], *(&v393[1] + 1));
              sub_1B0398EFC(&v391, &qword_1EB6E5D38, &qword_1B0EE0240);
              v283 = v282;
            }

            *&v391 = v287;
            *(&v391 + 1) = v288;
            *&v392 = v283;
            *(&v392 + 1) = v289;
            *&v393[0] = v290;
            *(&v393[0] + 1) = v291;
            *&v393[1] = v382;
            *(&v393[1] + 1) = v278;
            *&v393[2] = v279;
            BYTE8(v393[2]) = v280 & 1;
            v382 = sub_1B0CB8540();
            v278 = v284;
            v279 = v285;
            v280 = v286;
            v281 = 1;
          }

          while (v286 != 2);
          if ((*&v393[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
          {
            a5 = v346;
            v26 = MEMORY[0x1E69E6290];
            v275 = v379;
            if (!v379)
            {
              v276 = v380;
              v277 = v370;
LABEL_320:
              LOBYTE(v387) = v276;
              *(&v396 + 1) = v26;
              v307 = MEMORY[0x1E6969DF8];
              *&v397 = MEMORY[0x1E6969DF8];
              *&v395 = "Content-Type";
              *(&v395 + 1) = "";
              __swift_project_boxed_opaque_existential_0(&v395, v26);
              sub_1B0E42EF8();
              __swift_destroy_boxed_opaque_existential_0(&v395);
              *(&v396 + 1) = v26;
              *&v397 = v307;
              *&v395 = ": ";
              *(&v395 + 1) = "";
              __swift_project_boxed_opaque_existential_0(&v395, v26);
              sub_1B0E42EF8();
              __swift_destroy_boxed_opaque_existential_0(&v395);
              v388 = 14;
              sub_1B0C6ECE0(&v387, &v438, sub_1B0C76E40, v386, v277, &v395);
              sub_1B0C72700(v276, sub_1B0C76E40);
              v239 = v395;
              v275 = 0;
              v304 = v276;
              if (!v276)
              {
LABEL_321:
                *(&v396 + 1) = v26;
                *&v397 = MEMORY[0x1E6969DF8];
                v308 = "";
                *&v395 = "\r\n";
                goto LABEL_382;
              }

LABEL_378:
              if (v304 == 1)
              {
                v331 = 13;
              }

              else
              {
                v331 = 10;
              }

              LOBYTE(v387) = v331;
              *(&v396 + 1) = v26;
              *&v397 = MEMORY[0x1E6969DF8];
              *&v395 = &v387;
              v308 = v358;
LABEL_382:
              *(&v395 + 1) = v308;
              __swift_project_boxed_opaque_existential_0(&v395, v26);
              sub_1B0E42EF8();
              __swift_destroy_boxed_opaque_existential_0(&v395);
              v78 = v373;
              if (!v239)
              {
                if (v275)
                {
                  v314 = v373;
                  v456 = v347;
                  v457 = v348;
                  v458 = v352;
                  v459 = v375;
                  v460 = v376;
                  v461 = v275;
                  v315 = sub_1B0C7EB6C();
                  if (v333 == 2)
                  {
                    goto LABEL_385;
                  }

                  v318 = v332;
                  if (v333)
                  {
                    if (v315)
                    {
                      v319 = v332 - v315;
                    }

                    else
                    {
                      v319 = 0;
                    }

                    if (v319 < 0)
                    {
                      goto LABEL_438;
                    }

                    goto LABEL_392;
                  }

LABEL_393:
                  v239 = sub_1B0CAB06C(v315, v318);
                  v78 = v314;
                  goto LABEL_394;
                }

LABEL_386:
                sub_1B075E648(&v438);
                v239 = 0;
                goto LABEL_395;
              }

LABEL_394:

              sub_1B075E648(&v438);
              goto LABEL_395;
            }

            v239 = 0;
LABEL_308:
            v304 = v380;
            if (!v380)
            {
              goto LABEL_321;
            }

            goto LABEL_378;
          }

          v303 = *(&v393[1] + 1);
          v302 = *&v393[1];
          a5 = v346;
          v275 = v379;
          if (!(*&v393[0] >> 59))
          {
            goto LABEL_305;
          }
        }

        sub_1B0398EFC(&v391, &qword_1EB6E5D38, &qword_1B0EE0240);
        if (v302)
        {
          v305 = v303 - v302;
        }

        else
        {
          v305 = 0;
        }

        if (v305 < 0)
        {
          goto LABEL_432;
        }

        v306 = v380;
        sub_1B0C92F04(v377, v380, 1, sub_1B0C76E40, v386, 0, v305, v302, v303);
        if (!v275)
        {
LABEL_369:
          LOBYTE(v387) = v306;
          v26 = MEMORY[0x1E69E6290];
          *(&v396 + 1) = MEMORY[0x1E69E6290];
          v327 = MEMORY[0x1E6969DF8];
          *&v397 = MEMORY[0x1E6969DF8];
          *&v395 = "Content-Type";
          *(&v395 + 1) = "";
          __swift_project_boxed_opaque_existential_0(&v395, MEMORY[0x1E69E6290]);
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v395);
          *(&v396 + 1) = v26;
          *&v397 = v327;
          *&v395 = ": ";
          *(&v395 + 1) = "";
          __swift_project_boxed_opaque_existential_0(&v395, v26);
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v395);
          v388 = 14;
          sub_1B0C6ECE0(&v387, &v438, sub_1B0C76E40, v386, v370, &v395);
          sub_1B0C72700(v306, sub_1B0C76E40);
          v239 = v395;
          goto LABEL_377;
        }

        v239 = 0;
LABEL_376:
        v26 = MEMORY[0x1E69E6290];
LABEL_377:
        v304 = v306;
        if (!v306)
        {
          goto LABEL_321;
        }

        goto LABEL_378;
      }

      if (v87 >> 32 < v87)
      {
        goto LABEL_420;
      }

      v152 = sub_1B0E42A98();
      if (v152)
      {
        v153 = sub_1B0E42AC8();
        if (__OFSUB__(v87, v153))
        {
          goto LABEL_428;
        }

        v152 += v87 - v153;
      }

      v154 = sub_1B0E42AB8();
      if (v154 >= (v87 >> 32) - v87)
      {
        v155 = (v87 >> 32) - v87;
      }

      else
      {
        v155 = v154;
      }

      if (v152)
      {
        v156 = v155;
      }

      else
      {
        v156 = 0;
      }

      if (v156 < 0)
      {
        goto LABEL_422;
      }

      v157 = v155 + v152;
      if (v152)
      {
        v158 = v157;
      }

      else
      {
        v158 = 0;
      }

      sub_1B0C946BC(3u, 0, v156, v152);
      if (v160)
      {
        v161 = v156;
      }

      else
      {
        v161 = v159;
      }

      sub_1B0CA3370(3, 0, v156, v152, v158, v161);
      LODWORD(v377) = v162;
      v381 = v163;
      v343 = v164;
      v166 = v165;
      v476[8] = v446;
      v476[9] = v447;
      v476[10] = v448;
      v476[4] = v442;
      v476[5] = v443;
      v476[6] = v444;
      v476[7] = v445;
      v476[0] = v438;
      v476[1] = v439;
      v476[2] = v440;
      v477 = v449;
      v476[3] = v441;
      v167 = sub_1B0717014(v476);
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      if (v166 < 0)
      {
        goto LABEL_424;
      }

      if (v381)
      {
        v205 = v381 + v166;
      }

      else
      {
        v205 = 0;
      }

      sub_1B0CB7368(v381, v205, v377, v394);
      sub_1B07169CC(&v438, &v395);
      v391 = 0u;
      v392 = 0u;
      *&v393[0] = 0x1FFFFFFF0ELL;
      *(v393 + 8) = 0u;
      *(&v393[1] + 8) = 0u;
      BYTE8(v393[2]) = 0;
      v382 = sub_1B0CB8540();
      if (v208 == 2)
      {
        v376 = 0;
        v209 = 0;
        if ((*&v393[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
        {
          v347 = 0;
          v348 = 0;
          v352 = 0;
          v375 = 0;
          v210 = v380;
          v211 = v370;
          v26 = MEMORY[0x1E69E6290];
          goto LABEL_258;
        }

        v342 = v167;
        v250 = *(&v393[1] + 1);
        v249 = *&v393[1];
        v375 = 0;
        v352 = 0;
        v347 = 0;
        v348 = 0;
        if (!(*&v393[0] >> 59))
        {
LABEL_229:
          if (v342 == 1)
          {
            if (v209)
            {
              v239 = 0;
              v26 = MEMORY[0x1E69E6290];
              goto LABEL_232;
            }

            v255 = v380;
            goto LABEL_346;
          }

          if (v209)
          {
            v397 = v393[0];
            v398[0] = v393[1];
            *(v398 + 9) = *(&v393[1] + 9);
            v395 = v391;
            v396 = v392;
            sub_1B03B5C80(&v395, &v387, &qword_1EB6E5D40, &qword_1B0EE0250);
            v239 = 0;
          }

          else
          {
            v321 = v380;
            v384[0] = v380;
            v322 = MEMORY[0x1E69E6290];
            v389 = MEMORY[0x1E69E6290];
            v390 = MEMORY[0x1E6969DF8];
            v387 = "Content-Type";
            v388 = "";
            __swift_project_boxed_opaque_existential_0(&v387, MEMORY[0x1E69E6290]);
            v379 = 0;
            sub_1B03B5C80(&v391, &v395, &qword_1EB6E5D38, &qword_1B0EE0240);
            v209 = v379;
            sub_1B0E42EF8();
            __swift_destroy_boxed_opaque_existential_0(&v387);
            *(&v396 + 1) = v322;
            *&v397 = MEMORY[0x1E6969DF8];
            *&v395 = ": ";
            *(&v395 + 1) = "";
            __swift_project_boxed_opaque_existential_0(&v395, v322);
            sub_1B0E42EF8();
            __swift_destroy_boxed_opaque_existential_0(&v395);
            v385 = 14;
            sub_1B0C6ECE0(v384, &v438, sub_1B0C76E40, v386, v370, &v395);
            sub_1B0C72700(v321, sub_1B0C76E40);
            v239 = v395;
          }

          if (v249)
          {
            v323 = v250 - v249;
          }

          else
          {
            v323 = 0;
          }

          if (v323 < 0)
          {
            goto LABEL_434;
          }

          v255 = v380;
          sub_1B0C92F04(v377, v380, 1, sub_1B0C76E40, v386, 0, v323, v249, v250);
          goto LABEL_353;
        }
      }

      else
      {
        v212 = v206;
        v213 = v207;
        v214 = v208;
        v342 = v167;
        v379 = 0;
        v375 = 0;
        v376 = 0;
        v352 = 0;
        v347 = 0;
        v348 = 0;
        v215 = 0;
        do
        {
          sub_1B0CB7ED8(v382, v212, v213, v214 & 1, &v426);
          v219 = v426;
          v220 = v427;
          v221 = v428;
          v222 = v429;
          v223 = v430;
          v224 = v431;
          if (v430 >> 59 == 9)
          {
            v378 = v431;
            v225 = v214;
            v226 = v430;
            v227 = v213;
            v228 = v212;
            v229 = v427;
            v230 = v426;
            v231 = v429;
            v232 = v428;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

            v221 = v232;
            v222 = v231;
            v219 = v230;
            v220 = v229;
            v212 = v228;
            v213 = v227;
            v223 = v226;
            v214 = v225;
            v224 = v378;
            v347 = v219;
            v348 = v220;
            v352 = v221;
            v375 = v222;
            v376 = v223;
            v379 = v378;
          }

          if (!(v215 & 1 | (v382 == 0)) && v381 && &v382[-v381] >= 1)
          {
            v233 = v221;
            sub_1B0C92F04(v377, v380, 1, sub_1B0C76E40, v386, 0, &v382[-v381], v381, v343);
            v221 = v233;
          }

          if ((*&v393[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
          {
            if (*&v393[1])
            {
              v234 = (*(&v393[1] + 1) - *&v393[1]);
            }

            else
            {
              v234 = 0;
            }

            if ((v234 & 0x8000000000000000) != 0)
            {
              goto LABEL_409;
            }

            v235 = v221;
            sub_1B0C92F04(v377, v380, 1, sub_1B0C76E40, v386, 0, v234, *&v393[1], *(&v393[1] + 1));
            sub_1B0398EFC(&v391, &qword_1EB6E5D38, &qword_1B0EE0240);
            v221 = v235;
          }

          *&v391 = v219;
          *(&v391 + 1) = v220;
          *&v392 = v221;
          *(&v392 + 1) = v222;
          *&v393[0] = v223;
          *(&v393[0] + 1) = v224;
          *&v393[1] = v382;
          *(&v393[1] + 1) = v212;
          *&v393[2] = v213;
          BYTE8(v393[2]) = v214 & 1;
          v382 = sub_1B0CB8540();
          v212 = v216;
          v213 = v217;
          v214 = v218;
          v215 = 1;
        }

        while (v218 != 2);
        if ((*&v393[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
        {
          a5 = v346;
          v26 = MEMORY[0x1E69E6290];
          v209 = v379;
          if (!v379)
          {
            v210 = v380;
            v211 = v370;
LABEL_258:
            LOBYTE(v387) = v210;
            *(&v396 + 1) = v26;
            v257 = MEMORY[0x1E6969DF8];
            *&v397 = MEMORY[0x1E6969DF8];
            *&v395 = "Content-Type";
            *(&v395 + 1) = "";
            __swift_project_boxed_opaque_existential_0(&v395, v26);
            sub_1B0E42EF8();
            __swift_destroy_boxed_opaque_existential_0(&v395);
            *(&v396 + 1) = v26;
            *&v397 = v257;
            *&v395 = ": ";
            *(&v395 + 1) = "";
            __swift_project_boxed_opaque_existential_0(&v395, v26);
            sub_1B0E42EF8();
            __swift_destroy_boxed_opaque_existential_0(&v395);
            v388 = 14;
            sub_1B0C6ECE0(&v387, &v438, sub_1B0C76E40, v386, v211, &v395);
            sub_1B0C72700(v210, sub_1B0C76E40);
            v239 = v395;
            v209 = 0;
            v251 = v210;
            if (!v210)
            {
LABEL_259:
              *(&v396 + 1) = v26;
              *&v397 = MEMORY[0x1E6969DF8];
              v258 = "";
              *&v395 = "\r\n";
              goto LABEL_359;
            }

LABEL_355:
            if (v251 == 1)
            {
              v324 = 13;
            }

            else
            {
              v324 = 10;
            }

            LOBYTE(v387) = v324;
            *(&v396 + 1) = v26;
            *&v397 = MEMORY[0x1E6969DF8];
            *&v395 = &v387;
            v258 = v358;
LABEL_359:
            *(&v395 + 1) = v258;
            __swift_project_boxed_opaque_existential_0(&v395, v26);
            sub_1B0E42EF8();
            __swift_destroy_boxed_opaque_existential_0(&v395);
            v78 = v373;
            if (v239)
            {
              goto LABEL_394;
            }

            if (!v209)
            {
              goto LABEL_386;
            }

            v314 = v373;
            v462 = v347;
            v463 = v348;
            v464 = v352;
            v465 = v375;
            v466 = v376;
            v467 = v209;
            v315 = sub_1B0C7EB6C();
            if (v326 != 2)
            {
              v318 = v325;
              if ((v326 & 1) == 0)
              {
                goto LABEL_393;
              }

              if (v315)
              {
                v319 = v325 - v315;
              }

              else
              {
                v319 = 0;
              }

              if (v319 < 0)
              {
                goto LABEL_437;
              }

              goto LABEL_392;
            }

            goto LABEL_385;
          }

          v239 = 0;
LABEL_232:
          v251 = v380;
          if (!v380)
          {
            goto LABEL_259;
          }

          goto LABEL_355;
        }

        v250 = *(&v393[1] + 1);
        v249 = *&v393[1];
        a5 = v346;
        v209 = v379;
        if (!(*&v393[0] >> 59))
        {
          goto LABEL_229;
        }
      }

      sub_1B0398EFC(&v391, &qword_1EB6E5D38, &qword_1B0EE0240);
      if (v249)
      {
        v254 = v250 - v249;
      }

      else
      {
        v254 = 0;
      }

      if (v254 < 0)
      {
        goto LABEL_431;
      }

      v255 = v380;
      sub_1B0C92F04(v377, v380, 1, sub_1B0C76E40, v386, 0, v254, v249, v250);
      if (!v209)
      {
LABEL_346:
        LOBYTE(v387) = v255;
        v26 = MEMORY[0x1E69E6290];
        *(&v396 + 1) = MEMORY[0x1E69E6290];
        v320 = MEMORY[0x1E6969DF8];
        *&v397 = MEMORY[0x1E6969DF8];
        *&v395 = "Content-Type";
        *(&v395 + 1) = "";
        __swift_project_boxed_opaque_existential_0(&v395, MEMORY[0x1E69E6290]);
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v395);
        *(&v396 + 1) = v26;
        *&v397 = v320;
        *&v395 = ": ";
        *(&v395 + 1) = "";
        __swift_project_boxed_opaque_existential_0(&v395, v26);
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v395);
        v388 = 14;
        sub_1B0C6ECE0(&v387, &v438, sub_1B0C76E40, v386, v370, &v395);
        sub_1B0C72700(v255, sub_1B0C76E40);
        v239 = v395;
        goto LABEL_354;
      }

      v239 = 0;
LABEL_353:
      v26 = MEMORY[0x1E69E6290];
LABEL_354:
      v251 = v255;
      if (!v255)
      {
        goto LABEL_259;
      }

      goto LABEL_355;
    }

    if (v88 == 2)
    {
      v126 = *(v87 + 16);
      v127 = *(v87 + 24);
      v128 = sub_1B0E42A98();
      if (v128)
      {
        v129 = sub_1B0E42AC8();
        if (__OFSUB__(v126, v129))
        {
          goto LABEL_427;
        }

        v128 += v126 - v129;
      }

      v130 = __OFSUB__(v127, v126);
      v131 = v127 - v126;
      if (v130)
      {
        goto LABEL_421;
      }

      v132 = sub_1B0E42AB8();
      if (v132 >= v131)
      {
        v133 = v131;
      }

      else
      {
        v133 = v132;
      }

      if (v128)
      {
        v134 = v133;
      }

      else
      {
        v134 = 0;
      }

      if (v134 < 0)
      {
        goto LABEL_423;
      }

      v135 = v133 + v128;
      if (v128)
      {
        v136 = v135;
      }

      else
      {
        v136 = 0;
      }

      sub_1B0C946BC(3u, 0, v134, v128);
      if (v138)
      {
        v139 = v134;
      }

      else
      {
        v139 = v137;
      }

      sub_1B0CA3370(3, 0, v134, v128, v136, v139);
      v141 = v140;
      v143 = v142;
      v145 = v144;
      v147 = v146;
      v478[8] = v446;
      v478[9] = v447;
      v478[10] = v448;
      v478[4] = v442;
      v478[5] = v443;
      v478[6] = v444;
      v478[7] = v445;
      v478[0] = v438;
      v478[1] = v439;
      v478[2] = v440;
      v479 = v449;
      v478[3] = v441;
      if (sub_1B0717014(v478) == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v148 = 0;
      }

      else
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v148 = 1;
      }

      v26 = MEMORY[0x1E69E6290];
      *&v391 = 0;
      v202 = swift_allocObject();
      *(v202 + 16) = &v391;
      sub_1B07169CC(&v438, &v395);
      sub_1B0CAB0E8(v380, v148, 1, sub_1B0C76CF4, v202, sub_1B0C76E40, v386, v141, v203, v143, v145, v147, &v438, v380, v370, sub_1B0C76E40, v386);
      sub_1B075E648(&v438);

      sub_1B0391D50(v344, v345);
      v204 = v391;
      sub_1B0C74E2C(v371);
      *&v395 = v204;
      v78 = v373;
      goto LABEL_396;
    }

    memset(v383, 0, 14);
    sub_1B0CA3370(3, 0, 0, v383, v383, 0);
    LODWORD(v377) = v168;
    v381 = v169;
    v343 = v170;
    v172 = v171;
    v472[8] = v446;
    v472[9] = v447;
    v472[10] = v448;
    v472[4] = v442;
    v472[5] = v443;
    v472[6] = v444;
    v472[7] = v445;
    v472[0] = v438;
    v472[1] = v439;
    v472[2] = v440;
    v473 = v449;
    v472[3] = v441;
    v342 = sub_1B0717014(v472);
    v26 = MEMORY[0x1E69E6290];
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    if (v172 < 0)
    {
      goto LABEL_419;
    }

    if (v381)
    {
      v173 = v381 + v172;
    }

    else
    {
      v173 = 0;
    }

    sub_1B0CB7368(v381, v173, v377, v394);
    sub_1B07169CC(&v438, &v395);
    v391 = 0u;
    v392 = 0u;
    *&v393[0] = 0x1FFFFFFF0ELL;
    *(v393 + 8) = 0u;
    *(&v393[1] + 8) = 0u;
    BYTE8(v393[2]) = 0;
    v382 = sub_1B0CB8540();
    if (v176 == 2)
    {
      v376 = 0;
      v177 = 0;
      if ((*&v393[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
      {
        v347 = 0;
        v348 = 0;
        v352 = 0;
        v375 = 0;
        goto LABEL_210;
      }

      v248 = *(&v393[1] + 1);
      v247 = *&v393[1];
      v375 = 0;
      v352 = 0;
      v347 = 0;
      v348 = 0;
      if (!(*&v393[0] >> 59))
      {
LABEL_224:
        if (v342 == 1)
        {
          if (v177)
          {
            goto LABEL_226;
          }

          v253 = v380;
          goto LABEL_323;
        }

        if (v177)
        {
          v397 = v393[0];
          v398[0] = v393[1];
          *(v398 + 9) = *(&v393[1] + 9);
          v395 = v391;
          v396 = v392;
          sub_1B03B5C80(&v395, &v387, &qword_1EB6E5D40, &qword_1B0EE0250);
          v239 = 0;
        }

        else
        {
          v310 = v380;
          v384[0] = v380;
          v311 = MEMORY[0x1E69E6290];
          v389 = MEMORY[0x1E69E6290];
          v390 = MEMORY[0x1E6969DF8];
          v387 = "Content-Type";
          v388 = "";
          __swift_project_boxed_opaque_existential_0(&v387, MEMORY[0x1E69E6290]);
          v379 = 0;
          sub_1B03B5C80(&v391, &v395, &qword_1EB6E5D38, &qword_1B0EE0240);
          v177 = v379;
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v387);
          *(&v396 + 1) = v311;
          *&v397 = MEMORY[0x1E6969DF8];
          *&v395 = ": ";
          *(&v395 + 1) = "";
          __swift_project_boxed_opaque_existential_0(&v395, v311);
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v395);
          v385 = 14;
          sub_1B0C6ECE0(v384, &v438, sub_1B0C76E40, v386, v370, &v395);
          sub_1B0C72700(v310, sub_1B0C76E40);
          v239 = v395;
        }

        if (v247)
        {
          v312 = v248 - v247;
        }

        else
        {
          v312 = 0;
        }

        if (v312 < 0)
        {
          goto LABEL_433;
        }

        v253 = v380;
        sub_1B0C92F04(v377, v380, 1, sub_1B0C76E40, v386, 0, v312, v247, v248);
        goto LABEL_330;
      }
    }

    else
    {
      v178 = v174;
      v179 = v175;
      v180 = v176;
      v379 = 0;
      v375 = 0;
      v376 = 0;
      v352 = 0;
      v347 = 0;
      v348 = 0;
      v181 = 0;
      do
      {
        sub_1B0CB7ED8(v382, v178, v179, v180 & 1, &v414);
        v185 = v414;
        v186 = v415;
        v187 = v416;
        v188 = v417;
        v189 = v418;
        v190 = v419;
        if (v418 >> 59 == 9)
        {
          v378 = v419;
          v191 = v180;
          v192 = v418;
          v193 = v179;
          v194 = v178;
          v195 = v417;
          v196 = v416;
          v197 = v414;
          v198 = v415;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

          v186 = v198;
          v185 = v197;
          v187 = v196;
          v188 = v195;
          v178 = v194;
          v179 = v193;
          v189 = v192;
          v180 = v191;
          v190 = v378;
          v347 = v185;
          v348 = v186;
          v352 = v187;
          v375 = v188;
          v376 = v189;
          v379 = v378;
        }

        if (!(v181 & 1 | (v382 == 0)) && v381 && &v382[-v381] >= 1)
        {
          v199 = v186;
          sub_1B0C92F04(v377, v380, 1, sub_1B0C76E40, v386, 0, &v382[-v381], v381, v343);
          v186 = v199;
        }

        if ((*&v393[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
        {
          if (*&v393[1])
          {
            v200 = (*(&v393[1] + 1) - *&v393[1]);
          }

          else
          {
            v200 = 0;
          }

          if ((v200 & 0x8000000000000000) != 0)
          {
LABEL_408:
            __break(1u);
LABEL_409:
            __break(1u);
LABEL_410:
            __break(1u);
LABEL_411:
            __break(1u);
LABEL_412:
            __break(1u);
LABEL_413:
            __break(1u);
LABEL_414:
            __break(1u);
LABEL_415:
            __break(1u);
LABEL_416:
            __break(1u);
LABEL_417:
            __break(1u);
LABEL_418:
            __break(1u);
LABEL_419:
            __break(1u);
LABEL_420:
            __break(1u);
LABEL_421:
            __break(1u);
LABEL_422:
            __break(1u);
LABEL_423:
            __break(1u);
LABEL_424:
            __break(1u);
LABEL_425:
            __break(1u);
LABEL_426:
            __break(1u);
LABEL_427:
            __break(1u);
LABEL_428:
            __break(1u);
LABEL_429:
            __break(1u);
LABEL_430:
            __break(1u);
LABEL_431:
            __break(1u);
LABEL_432:
            __break(1u);
LABEL_433:
            __break(1u);
LABEL_434:
            __break(1u);
LABEL_435:
            __break(1u);
LABEL_436:
            __break(1u);
LABEL_437:
            __break(1u);
LABEL_438:
            __break(1u);
LABEL_439:
            __break(1u);
          }

          v201 = v186;
          sub_1B0C92F04(v377, v380, 1, sub_1B0C76E40, v386, 0, v200, *&v393[1], *(&v393[1] + 1));
          sub_1B0398EFC(&v391, &qword_1EB6E5D38, &qword_1B0EE0240);
          v186 = v201;
        }

        *&v391 = v185;
        *(&v391 + 1) = v186;
        *&v392 = v187;
        *(&v392 + 1) = v188;
        *&v393[0] = v189;
        *(&v393[0] + 1) = v190;
        *&v393[1] = v382;
        *(&v393[1] + 1) = v178;
        *&v393[2] = v179;
        BYTE8(v393[2]) = v180 & 1;
        v382 = sub_1B0CB8540();
        v178 = v182;
        v179 = v183;
        v180 = v184;
        v181 = 1;
      }

      while (v184 != 2);
      if ((*&v393[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
      {
        a5 = v346;
        v177 = v379;
        if (!v379)
        {
          v26 = MEMORY[0x1E69E6290];
LABEL_210:
          v236 = v380;
          v237 = v370;
          LOBYTE(v387) = v380;
          *(&v396 + 1) = v26;
          v238 = MEMORY[0x1E6969DF8];
          *&v397 = MEMORY[0x1E6969DF8];
          *&v395 = "Content-Type";
          *(&v395 + 1) = "";
          __swift_project_boxed_opaque_existential_0(&v395, v26);
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v395);
          *(&v396 + 1) = v26;
          *&v397 = v238;
          *&v395 = ": ";
          *(&v395 + 1) = "";
          __swift_project_boxed_opaque_existential_0(&v395, v26);
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v395);
          v388 = 14;
          sub_1B0C6ECE0(&v387, &v438, sub_1B0C76E40, v386, v237, &v395);
          sub_1B0C72700(v236, sub_1B0C76E40);
          v239 = v395;
          v177 = 0;
          v240 = v236;
          if (!v236)
          {
LABEL_211:
            *(&v396 + 1) = v26;
            *&v397 = MEMORY[0x1E6969DF8];
            v241 = "";
            *&v395 = "\r\n";
            goto LABEL_336;
          }

LABEL_332:
          if (v240 == 1)
          {
            v313 = 13;
          }

          else
          {
            v313 = 10;
          }

          LOBYTE(v387) = v313;
          *(&v396 + 1) = v26;
          *&v397 = MEMORY[0x1E6969DF8];
          *&v395 = &v387;
          v241 = v358;
LABEL_336:
          *(&v395 + 1) = v241;
          __swift_project_boxed_opaque_existential_0(&v395, v26);
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v395);
          v78 = v373;
          if (v239)
          {
            goto LABEL_394;
          }

          if (!v177)
          {
            goto LABEL_386;
          }

          v314 = v373;
          v450 = v347;
          v451 = v348;
          v452 = v352;
          v453 = v375;
          v454 = v376;
          v455 = v177;
          v315 = sub_1B0C7EB6C();
          if (v317 != 2)
          {
            v318 = v316;
            if ((v317 & 1) == 0)
            {
              goto LABEL_393;
            }

            if (v315)
            {
              v319 = v316 - v315;
            }

            else
            {
              v319 = 0;
            }

            if (v319 < 0)
            {
              goto LABEL_436;
            }

LABEL_392:
            v334 = v350;
            v239 = sub_1B0C93CE8(0, v319, v315, v318);
            v350 = v334;
            v78 = v314;
            goto LABEL_394;
          }

LABEL_385:

          sub_1B075E648(&v438);
          v239 = 0;
          v78 = v314;
LABEL_395:
          sub_1B0391D50(v344, v345);
          sub_1B0C74E2C(v371);
          *&v395 = v239;
LABEL_396:
          v69 = v395;
          a1 = v380;
          a4 = v370;
          goto LABEL_397;
        }

LABEL_226:
        v239 = 0;
        v26 = MEMORY[0x1E69E6290];
        v240 = v380;
        if (!v380)
        {
          goto LABEL_211;
        }

        goto LABEL_332;
      }

      v248 = *(&v393[1] + 1);
      v247 = *&v393[1];
      a5 = v346;
      v177 = v379;
      if (!(*&v393[0] >> 59))
      {
        goto LABEL_224;
      }
    }

    sub_1B0398EFC(&v391, &qword_1EB6E5D38, &qword_1B0EE0240);
    if (v247)
    {
      v252 = v248 - v247;
    }

    else
    {
      v252 = 0;
    }

    if (v252 < 0)
    {
      goto LABEL_430;
    }

    v253 = v380;
    sub_1B0C92F04(v377, v380, 1, sub_1B0C76E40, v386, 0, v252, v247, v248);
    if (!v177)
    {
LABEL_323:
      LOBYTE(v387) = v253;
      v26 = MEMORY[0x1E69E6290];
      *(&v396 + 1) = MEMORY[0x1E69E6290];
      v309 = MEMORY[0x1E6969DF8];
      *&v397 = MEMORY[0x1E6969DF8];
      *&v395 = "Content-Type";
      *(&v395 + 1) = "";
      __swift_project_boxed_opaque_existential_0(&v395, MEMORY[0x1E69E6290]);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v395);
      *(&v396 + 1) = v26;
      *&v397 = v309;
      *&v395 = ": ";
      *(&v395 + 1) = "";
      __swift_project_boxed_opaque_existential_0(&v395, v26);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v395);
      v388 = 14;
      sub_1B0C6ECE0(&v387, &v438, sub_1B0C76E40, v386, v370, &v395);
      sub_1B0C72700(v253, sub_1B0C76E40);
      v239 = v395;
      goto LABEL_331;
    }

    v239 = 0;
LABEL_330:
    v26 = MEMORY[0x1E69E6290];
LABEL_331:
    v240 = v253;
    if (!v253)
    {
      goto LABEL_211;
    }

    goto LABEL_332;
  }
}

uint64_t sub_1B0C6D3A8(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v22 = a3;
  v29 = *MEMORY[0x1E69E9840];
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v21[0] = a1;
  v21[1] = a2;
  v23[0] = a1;
  v23[1] = a2;
  v23[2] = 0;
  v23[3] = v5;
  v24 = 256;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = MEMORY[0x1E69E6290];
  v7 = MEMORY[0x1E6969DF8];
  do
  {
    while (1)
    {
      isStackAllocationSafe = sub_1B0E44CF8();
      if (isStackAllocationSafe < 0)
      {
        goto LABEL_26;
      }

      v9 = isStackAllocationSafe;
      if (isStackAllocationSafe >= 1025)
      {
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if ((isStackAllocationSafe & 1) == 0)
        {
          break;
        }
      }

      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v11 = v21 - v10;
      v12 = v21 + v9 - v10;
      v13 = swift_allocObject();
      v13[2] = 0;
      v14 = v13 + 2;
      v13[3] = v9;
      v13[4] = v11;
      v13[5] = v12;
      sub_1B0C769AC(&v24, v15, v23, v13);
      swift_beginAccess();
      v16 = *v14;
      v17 = *(v22 + 1);
      if (v17 < 1)
      {
        goto LABEL_14;
      }

      if (__OFADD__(v17, v16))
      {
        goto LABEL_25;
      }

      if (v17 + v16 < 79)
      {
LABEL_14:
        if (v16 < 0)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
        }

        v27 = v6;
        v28 = v7;
        v25 = v11;
        v26 = &v11[v16];
        __swift_project_boxed_opaque_existential_0(&v25, v6);
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v25);

        if (v9 < v16)
        {
          goto LABEL_23;
        }

        v18 = v17 + v16;
        if (__OFADD__(v17, v16))
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1B0C74C44(*v22);
        v27 = v6;
        v28 = v7;
        v25 = "\t";
        v26 = "";
        __swift_project_boxed_opaque_existential_0(&v25, v6);
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v25);
        if (v16 < 0)
        {
          goto LABEL_27;
        }

        v27 = v6;
        v28 = v7;
        v25 = v11;
        v26 = &v11[v16];
        __swift_project_boxed_opaque_existential_0(&v25, v6);
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v25);

        if (v9 < v16)
        {
          goto LABEL_28;
        }

        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_29;
        }
      }

      *(v22 + 1) = v18;
      if ((v24 & 0x100) != 0)
      {
      }
    }

    v19 = swift_slowAlloc();
    sub_1B0C7212C(v19, &v19[v9], 0, v22, &v24, v23, a4);
    MEMORY[0x1B272C230](v19, -1, -1);
  }

  while ((v24 & 0x100) == 0);
}

uint64_t sub_1B0C6D6A8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 16);

  v46 = a3;

  if (v8)
  {
    v9 = 0;
    v10 = a2 + 32;
    v11 = a3 + 32;
    v47 = a2 + 32;
    v48 = a2;
    v52 = a5;
    v50 = v8;
    do
    {
      if (v9 >= *(a2 + 16))
      {
        goto LABEL_40;
      }

      v12 = (v10 + 16 * v9);
      v14 = *v12;
      v13 = v12[1];
      v15 = (v11 + 16 * v9);
      v16 = *v15;
      v17 = v15[1];
      v59 = 0;
      LOBYTE(v58) = 0;
      swift_bridgeObjectRetain_n();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v53 = v14;
      v54 = v13;
      sub_1B0C727A8(v14, v13, &v58, &v59);
      LOBYTE(v58) = 61;
      if (__OFADD__(v59, 1))
      {
        goto LABEL_41;
      }

      ++v9;
      ++v59;
      sub_1B0C72C88(v16, v17, &v58, &v59);

      v18 = v59;
      if (v9 != v8)
      {
        v18 = (v59 + 1);
        if (__OFADD__(v59, 1))
        {
          goto LABEL_42;
        }
      }

      if (v18 < 79)
      {
        sub_1B0C75798(160, 1, a4, v14, v13, v16, v17, v9 == v8, a5);

        continue;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v19 = sub_1B0E44EE8();
      v21 = v20;
      v23 = v22;
      v25 = v24;

      if ((v19 ^ v21) < 0x4000)
      {

        a5 = v52;
        continue;
      }

      v55 = v23;
      v56 = v21;
      v57 = v19;
      v51 = v9;
      v26 = 0;
      v27 = *(a4 + 1);
      do
      {
        v59 = v53;
        v60 = v54;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        MEMORY[0x1B2726E80](42, 0xE100000000000000);
        v58 = v26;
        v28 = sub_1B0E469C8();
        MEMORY[0x1B2726E80](v28);

        v30 = v59;
        v29 = v60;
        v31 = swift_allocObject();
        *(v31 + 16) = 77;
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1B0EDD3C0;
        *(v32 + 32) = v63;
        *(v32 + 40) = &v64;
        sub_1B0C72368(" ", "", v32);

        sub_1B0C75BB8(v30, v29, v31, v32);
        LOBYTE(v59) = 61;
        swift_beginAccess();
        v33 = *(v31 + 16) - 1;
        if (__OFSUB__(*(v31 + 16), 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
        }

        *(v31 + 16) = v33;
        sub_1B0C72368(&v59, &v59 + 1, v32);
        if (__OFSUB__(v33, 1))
        {
          goto LABEL_32;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v34 = sub_1B0C73A84(v57, v56, v55, v25, v33 - 1, v32);
        v36 = v35;
        v55 = v37;
        v39 = v38;
        swift_bridgeObjectRelease_n();
        v56 = v36;
        v57 = v34;
        v40 = (v34 ^ v36) >> 14;
        if (v51 != v50 || v40)
        {
          LOBYTE(v59) = 59;
          sub_1B0C72368(&v59, &v59 + 1, v32);
        }

        swift_beginAccess();
        v41 = *(v32 + 16);
        v42 = MEMORY[0x1E69E6290];
        if (v27 < 1)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v27, v41))
        {
          goto LABEL_37;
        }

        if (v27 + v41 < 79)
        {
LABEL_24:
          if (v41 < 0)
          {
            goto LABEL_34;
          }

          v61 = MEMORY[0x1E69E6290];
          v62 = MEMORY[0x1E6969DF8];
          v59 = v63;
          v60 = &v63[v41];
          __swift_project_boxed_opaque_existential_0(&v59, MEMORY[0x1E69E6290]);
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v59);

          if (v41 > 0xA1)
          {
            goto LABEL_35;
          }

          v44 = __OFADD__(v27, v41);
          v41 += v27;
          if (v44)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_1B0C74C44(*a4);
          v61 = v42;
          v43 = MEMORY[0x1E6969DF8];
          v62 = MEMORY[0x1E6969DF8];
          v59 = "\t";
          v60 = "";
          __swift_project_boxed_opaque_existential_0(&v59, v42);
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v59);
          if (v41 < 1)
          {
            goto LABEL_38;
          }

          v61 = v42;
          v62 = v43;
          v59 = &v63[1];
          v60 = &v63[v41];
          __swift_project_boxed_opaque_existential_0(&v59, v42);
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v59);

          if (v41 > 0xA1)
          {
            goto LABEL_39;
          }
        }

        if (__OFADD__(v26, 1))
        {
          goto LABEL_33;
        }

        ++v26;
        v27 = v41;
        v25 = v39;
      }

      while (v40);

      *(a4 + 1) = v41;
      v10 = v47;
      a2 = v48;
      v9 = v51;
      a5 = v52;
      v8 = v50;
      v11 = v46 + 32;
    }

    while (v9 != v8);
  }
}

uint64_t sub_1B0C6DC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v9 = *(a3 + 16);

  v44 = a3;

  if (v9)
  {
    v10 = 0;
    v46 = a2 + 32;
    v11 = a3 + 32;
    v45 = a2;
    v50 = a4;
    v51 = a5;
    v48 = v9;
    do
    {
      if (v10 >= *(a2 + 16))
      {
        goto LABEL_40;
      }

      v12 = (v46 + 16 * v10);
      v14 = *v12;
      v13 = v12[1];
      v15 = (v11 + 16 * v10);
      v16 = *v15;
      v17 = v15[1];
      v58 = 0;
      LOBYTE(v57) = 0;
      swift_bridgeObjectRetain_n();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v52 = v14;
      v53 = v13;
      sub_1B0C727A8(v14, v13, &v57, &v58);
      LOBYTE(v57) = 61;
      if (__OFADD__(v58, 1))
      {
        goto LABEL_41;
      }

      ++v10;
      ++v58;
      sub_1B0C72C88(v16, v17, &v57, &v58);

      v18 = v58;
      if (v10 != v9)
      {
        v18 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_42;
        }
      }

      if (v18 <= 78)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0C73418(a4, a5, 160, 1, v47, v14, v13, v16, v17, v10 == v9);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        continue;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v19 = sub_1B0E44EE8();
      v21 = v20;
      v23 = v22;
      v25 = v24;

      if ((v19 ^ v21) < 0x4000)
      {

        a4 = v50;
        a5 = v51;
        continue;
      }

      v54 = v23;
      v55 = v21;
      v56 = v19;
      v49 = v10;
      v26 = 0;
      v27 = *(v47 + 8);
      do
      {
        v58 = v52;
        v59 = v53;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        MEMORY[0x1B2726E80](42, 0xE100000000000000);
        v57 = v26;
        v28 = sub_1B0E469C8();
        MEMORY[0x1B2726E80](v28);

        v29 = v58;
        v30 = v59;
        v31 = swift_allocObject();
        *(v31 + 16) = 77;
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1B0EDD3C0;
        *(v32 + 32) = v60;
        *(v32 + 40) = &v61;
        sub_1B0C72368(" ", "", v32);
        sub_1B0C737EC(v29, v30, v31, sub_1B0C76E5C);
        LOBYTE(v58) = 61;
        swift_beginAccess();
        v33 = *(v31 + 16) - 1;
        if (__OFSUB__(*(v31 + 16), 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
        }

        *(v31 + 16) = v33;
        sub_1B0C72368(&v58, &v58 + 1, v32);
        if (__OFSUB__(v33, 1))
        {
          goto LABEL_32;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v34 = sub_1B0C73A84(v56, v55, v54, v25, v33 - 1, v32);
        v36 = v35;
        v54 = v37;
        v39 = v38;
        swift_bridgeObjectRelease_n();
        v55 = v36;
        v56 = v34;
        v40 = v34 ^ v36;
        if (v49 != v48 || v40 >> 14)
        {
          LOBYTE(v58) = 59;
          sub_1B0C72368(&v58, &v58 + 1, v32);
        }

        swift_beginAccess();
        v41 = *(v32 + 16);
        if (v27 <= 0)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v27, v41))
        {
          goto LABEL_37;
        }

        if (v27 + v41 < 79)
        {
LABEL_24:
          if (v41 < 0)
          {
            goto LABEL_34;
          }

          v50(v60, &v60[v41]);

          if (v41 > 0xA1)
          {
            goto LABEL_35;
          }

          v42 = __OFADD__(v27, v41);
          v41 += v27;
          if (v42)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_1B0C72700(*v47, v50);
          v50("\t", "");
          if (v41 < 1)
          {
            goto LABEL_38;
          }

          v50(&v60[1], &v60[v41]);

          if (v41 > 0xA1)
          {
            goto LABEL_39;
          }
        }

        if (__OFADD__(v26, 1))
        {
          goto LABEL_33;
        }

        ++v26;
        v27 = v41;
        v25 = v39;
      }

      while (v40 >= 0x4000);

      *(v47 + 8) = v41;
      v11 = v44 + 32;
      a2 = v45;
      a4 = v50;
      a5 = v51;
      v9 = v48;
      v10 = v49;
    }

    while (v10 != v9);
  }
}

uint64_t sub_1B0C6E240(uint64_t result, uint64_t a2, uint64_t a3)
{
  v21 = result;
  v27 = *MEMORY[0x1E69E9840];
  v22 = *(a2 + 16);
  if (v22)
  {
    v3 = 0;
    v4 = (a2 + 40);
    do
    {
      v7 = *(v4 - 1);
      v8 = *v4;
      if (v3)
      {
        v9 = 161;
      }

      else
      {
        v9 = 160;
      }

      v10 = swift_bridgeObjectRetain_n();
      v20 = &v20;
      MEMORY[0x1EEE9AC00](v10);
      v12 = &v20 - v11;
      v13 = &v20 + v9 - v11;
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = v9;
      v14[4] = v12;
      v14[5] = v13;
      if (v3)
      {
        sub_1B0C72368(" ", "", v14);
      }

      v23 = v7;
      v24 = v8;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v15 = sub_1B0E44ED8();
      sub_1B0C7495C(v15, v16, v14);

      if (--v22)
      {
        LOBYTE(v23) = 44;
        sub_1B0C72368(&v23, &v23 + 1, v14);
      }

      swift_beginAccess();
      v17 = v14[2];
      v18 = *(v21 + 8);
      if (v18 < 1)
      {
        goto LABEL_18;
      }

      if (__OFADD__(v18, v17))
      {
        goto LABEL_29;
      }

      if (v18 + v17 < 79)
      {
LABEL_18:
        if (v17 < 0)
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
        }

        v25 = MEMORY[0x1E69E6290];
        v26 = MEMORY[0x1E6969DF8];
        v23 = v12;
        v24 = &v12[v17];
        __swift_project_boxed_opaque_existential_0(&v23, MEMORY[0x1E69E6290]);
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v23);

        if (v9 < v17)
        {
          goto LABEL_27;
        }

        v6 = v18 + v17;
        if (__OFADD__(v18, v17))
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_1B0C74C44(*v21);
        v25 = MEMORY[0x1E69E6290];
        v26 = MEMORY[0x1E6969DF8];
        v23 = "\t";
        v24 = "";
        __swift_project_boxed_opaque_existential_0(&v23, MEMORY[0x1E69E6290]);
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v23);
        if (v3)
        {
          if (v17 < 1)
          {
            goto LABEL_31;
          }

          v19 = 1;
        }

        else
        {
          if (v17 < 0)
          {
            goto LABEL_32;
          }

          v19 = 0;
        }

        v25 = MEMORY[0x1E69E6290];
        v26 = MEMORY[0x1E6969DF8];
        v23 = &v12[v19];
        v24 = &v12[v17];
        __swift_project_boxed_opaque_existential_0(&v23, MEMORY[0x1E69E6290]);
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v23);
        v5 = sub_1B0433338(v19, v17, v12, v13);

        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_30;
        }
      }

      *(v21 + 8) = v6;
      result = swift_bridgeObjectRelease_n();
      --v3;
      v4 += 2;
    }

    while (v22);
  }

  return result;
}

uint64_t sub_1B0C6E584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = a2;
  v85 = *MEMORY[0x1E69E9840];
  v13 = *(a2 + 144);
  v71[8] = *(a2 + 128);
  v71[9] = v13;
  v71[10] = *(a2 + 160);
  v72 = *(a2 + 176);
  v14 = *(a2 + 80);
  v71[4] = *(a2 + 64);
  v71[5] = v14;
  v15 = *(a2 + 112);
  v71[6] = *(a2 + 96);
  v71[7] = v15;
  v16 = *(a2 + 16);
  v71[0] = *a2;
  v71[1] = v16;
  v17 = *(a2 + 48);
  v71[2] = *(a2 + 32);
  v71[3] = v17;
  if (sub_1B0717014(v71) != 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v80 = v26[7];
    v81 = v26[8];
    v82 = v26[9];
    v83 = v26[10];
    v76 = v26[3];
    v77 = v26[4];
    v78 = v26[5];
    v79 = v26[6];
    v73 = *v26;
    v74 = v26[1];
    v75 = v26[2];
    if (!(v73 >> 62))
    {
      v7 = a1;
      a3 = a4;
      a4 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v5 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      a1 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v6 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      if ((v5 & 0x1000000000000000) == 0)
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v44 = HIBYTE(v5) & 0xF;
          if ((v6 & 0x1000000000000000) != 0)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v44 = a4 & 0xFFFFFFFFFFFFLL;
          if ((v6 & 0x1000000000000000) != 0)
          {
LABEL_66:
            v59 = sub_1B0E44DC8();
            v48 = v44 + v59;
            if (!__OFADD__(v44, v59))
            {
LABEL_50:
              v50 = (v48 + 2);
              if (!__OFADD__(v48, 2))
              {
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B07169CC(v10, __dst);
                sub_1B0C74E90(v50, 0, v7, a4, v5, a1, v6, &v73, a3);
                sub_1B075E648(v10);

                v51 = *(&v73 + 1);
                v53 = *(&v74 + 1);
                v52 = v74;
                v54 = v7;
                v55 = a3;
LABEL_54:
                result = sub_1B0C6D6A8(v51, v52, v53, v54, v55);
                goto LABEL_55;
              }

LABEL_72:
              __break(1u);
            }

            goto LABEL_68;
          }
        }

LABEL_45:
        if ((v6 & 0x2000000000000000) != 0)
        {
          v49 = HIBYTE(v6) & 0xF;
          v48 = v44 + v49;
          if (!__OFADD__(v44, v49))
          {
            goto LABEL_50;
          }
        }

        else
        {
          v48 = v44 + (a1 & 0xFFFFFFFFFFFFLL);
          if (!__OFADD__(v44, a1 & 0xFFFFFFFFFFFFLL))
          {
            goto LABEL_50;
          }
        }

LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

LABEL_65:
      v44 = sub_1B0E44DC8();
      if ((v6 & 0x1000000000000000) != 0)
      {
        goto LABEL_66;
      }

      goto LABEL_45;
    }

    if (v73 >> 62 != 1)
    {
      v5 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v44 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v6 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      if ((v44 & 0x1000000000000000) == 0)
      {
        if ((v44 & 0x2000000000000000) != 0)
        {
          v56 = HIBYTE(v44) & 0xF;
          v45 = (v56 + 6);
          if (__OFADD__(v56, 6))
          {
            goto LABEL_71;
          }
        }

        else
        {
          v45 = ((v5 & 0xFFFFFFFFFFFFLL) + 6);
          if (__OFADD__(v5 & 0xFFFFFFFFFFFFLL, 6))
          {
            goto LABEL_71;
          }
        }

LABEL_53:
        sub_1B07169CC(v10, __dst);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0C7625C(v45, 0, a1, v5, v44, v6, &v73, a4);
        sub_1B075E648(v10);

        v51 = *(&v73 + 1);
        v53 = *(&v74 + 1);
        v52 = v74;
        v54 = a1;
        v55 = a4;
        goto LABEL_54;
      }

LABEL_69:
      v60 = sub_1B0E44DC8();
      v45 = (v60 + 6);
      if (!__OFADD__(v60, 6))
      {
        goto LABEL_53;
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    memcpy(__dst, ((v73 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
    if ((*&__dst[8] & 0x1000000000000000) != 0)
    {
      goto LABEL_62;
    }

    if ((*&__dst[8] & 0x2000000000000000) != 0)
    {
      v47 = HIBYTE(*&__dst[8]) & 0xFLL;
      v27 = v47 + 9;
      if (!__OFADD__(v47, 9))
      {
LABEL_43:
        sub_1B07169CC(v10, &v66);
        sub_1B0C6700C(__dst, &v66);
        sub_1B0C75E98(v27, 0, a1, __dst, &v73, a4);
        sub_1B075E648(v10);
        sub_1B0C6D6A8(*(&v73 + 1), v74, *(&v74 + 1), a1, a4);
        result = sub_1B0C67068(__dst);
LABEL_55:
        *a5 = 0;
        return result;
      }
    }

    else
    {
      v27 = (*__dst & 0xFFFFFFFFFFFFLL) + 9;
      if (!__OFADD__(*__dst & 0xFFFFFFFFFFFFLL, 9))
      {
        goto LABEL_43;
      }
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v19 = *(v18 + 32);
  v20 = *(v18 + 48);
  v21 = *(v18 + 16);
  *__dst = *v18;
  *&__dst[16] = v21;
  *&__dst[32] = v19;
  *&__dst[48] = v20;
  v23 = *(v18 + 80);
  v22 = *(v18 + 96);
  v24 = *(v18 + 64);
  *&__dst[112] = *(v18 + 112);
  *&__dst[80] = v23;
  *&__dst[96] = v22;
  *&__dst[64] = v24;
  if ((*&__dst[16] & 0x1000000000000000) != 0)
  {
    goto LABEL_59;
  }

  if ((*&__dst[16] & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(*&__dst[16]) & 0xFLL;
    v25 = (v28 + 10);
    if (!__OFADD__(v28, 10))
    {
      goto LABEL_15;
    }

    goto LABEL_61;
  }

  v25 = ((*&__dst[8] & 0xFFFFFFFFFFFFLL) + 10);
  if (__OFADD__(*&__dst[8] & 0xFFFFFFFFFFFFLL, 10))
  {
LABEL_61:
    __break(1u);
LABEL_62:
    v58 = sub_1B0E44DC8();
    v27 = v58 + 9;
    if (!__OFADD__(v58, 9))
    {
      goto LABEL_43;
    }

    goto LABEL_64;
  }

LABEL_15:
  sub_1B07AD120(__dst, &v66);
  v62 = a1;
  sub_1B0C76660(v25, 0, a1, __dst, a4);
  sub_1B075E648(v10);
  LOBYTE(v73) = 59;
  v69 = MEMORY[0x1E69E6290];
  v70 = MEMORY[0x1E6969DF8];
  v66 = &v73;
  v67 = &v73 + 1;
  __swift_project_boxed_opaque_existential_0(&v66, MEMORY[0x1E69E6290]);
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v66);
  a1 = *&__dst[32];
  v63 = a4;
  v64 = a5;
  v61 = a3;
  if (*&__dst[32])
  {
    v10 = *&__dst[40];
    v29 = *&__dst[24];
  }

  else
  {
    sub_1B0C740DC(MEMORY[0x1E69E7CC0]);
    v29 = v30;
    a1 = v31;
    v10 = v32;
  }

  v5 = 0x797261646E756F62;
  v66 = v29;
  v67 = a1;
  v68 = v10;
  a5 = v10[2];
  swift_retain_n();

  v65 = a5;
  if (!a5)
  {
LABEL_28:

    v38 = swift_allocObject();
    *(v38 + 16) = MEMORY[0x1E69E7CC0];
    v39 = v5;
    sub_1B0C670BC(v61, v38);
    sub_1B0C670BC(v61, v38);
    swift_beginAccess();
    sub_1B0C671E0(0xD000000000000016, 0x80000001B0F2E630);
    swift_endAccess();
    sub_1B0C670BC(v61, v38);
    v40 = *(v38 + 16);
    swift_bridgeObjectRetain_n();

    v41 = sub_1B0E44C68();
    v43 = v42;

    sub_1B0C6FCDC(v41, v43, v39, 0xE800000000000000);
    goto LABEL_41;
  }

  a4 = 0;
  v6 = 0;
  while (1)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      v57 = sub_1B0E44DC8();
      v25 = (v57 + 10);
      if (__OFADD__(v57, 10))
      {
        goto LABEL_61;
      }

      goto LABEL_15;
    }

    if (v6 >= v10[2])
    {
      goto LABEL_58;
    }

    v33 = *(v10 + a4 + 32);
    v7 = *(v10 + a4 + 40);
    v34 = sub_1B0E44B98();
    a3 = v35;
    if (v34 == v5 && v35 == 0xE800000000000000)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      goto LABEL_40;
    }

    a5 = v5;
    v37 = sub_1B0E46A78();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    if (v37)
    {
      break;
    }

    ++v6;

    a4 += 16;
    v5 = a5;
    if (v65 == v6)
    {
      goto LABEL_28;
    }
  }

LABEL_40:

  v40 = sub_1B03B7B80(v33, v7);

LABEL_41:
  sub_1B0C6D6A8(v66, v67, v68, v62, v63);

  *v64 = v40;
  return result;
}

uint64_t sub_1B0C6ECE0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v97 = a5;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = a6;
  v121 = *MEMORY[0x1E69E9840];
  v11 = *(a2 + 144);
  v107[8] = *(a2 + 128);
  v107[9] = v11;
  v107[10] = *(a2 + 160);
  v108 = *(a2 + 176);
  v12 = *(a2 + 80);
  v107[4] = *(a2 + 64);
  v107[5] = v12;
  v13 = *(a2 + 112);
  v107[6] = *(a2 + 96);
  v107[7] = v13;
  v14 = *(a2 + 16);
  v107[0] = *a2;
  v107[1] = v14;
  v15 = *(a2 + 48);
  v107[2] = *(a2 + 32);
  v107[3] = v15;
  v99 = a4;
  v100 = a3;
  v98 = a6;
  v101 = a1;
  if (sub_1B0717014(v107) != 1)
  {
    goto LABEL_7;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v17 = *(v16 + 32);
  v18 = *(v16 + 48);
  v19 = *(v16 + 16);
  v120[0] = *v16;
  v120[1] = v19;
  v120[2] = v17;
  v120[3] = v18;
  v21 = *(v16 + 80);
  v20 = *(v16 + 96);
  v22 = *(v16 + 64);
  *&v120[7] = *(v16 + 112);
  v120[5] = v21;
  v120[6] = v20;
  v120[4] = v22;
  v23 = *&v120[1];
  if ((*&v120[1] & 0x1000000000000000) != 0)
  {
    goto LABEL_109;
  }

  if ((*&v120[1] & 0x2000000000000000) != 0)
  {
    goto LABEL_14;
  }

  v24 = (*(&v120[0] + 1) & 0xFFFFFFFFFFFFLL) + 10;
  if (__OFADD__(*(&v120[0] + 1) & 0xFFFFFFFFFFFFLL, 10))
  {
    goto LABEL_6;
  }

  do
  {
LABEL_15:
    sub_1B07AD120(v120, &v104);
    sub_1B0C73DDC(v7, v6, v24, 0, v9, v120);
    sub_1B075E648(v8);
    LOBYTE(v104) = 59;
    v7(&v104, &v104 + 1);
    v31 = *&v120[2];
    if (*&v120[2])
    {
      v32 = *(&v120[2] + 1);
      v33 = *(&v120[1] + 1);
    }

    else
    {
      sub_1B0C740DC(MEMORY[0x1E69E7CC0]);
      v33 = v34;
      v31 = v35;
      v32 = v36;
    }

    v37 = 0x797261646E756F62;
    v104 = v33;
    v105 = v31;
    v106 = v32;
    v9 = *(v32 + 16);
    swift_retain_n();
    v96 = v33;

    v103 = v9;
    if (!v9)
    {
LABEL_28:

      v43 = swift_allocObject();
      *(v43 + 16) = MEMORY[0x1E69E7CC0];
      sub_1B0C670BC(v97, v43);
      sub_1B0C670BC(v97, v43);
      swift_beginAccess();
      sub_1B0C671E0(0xD000000000000016, 0x80000001B0F2E630);
      swift_endAccess();
      sub_1B0C670BC(v97, v43);
      v44 = *(v43 + 16);
      swift_bridgeObjectRetain_n();

      v45 = sub_1B0E44C68();
      v47 = v46;

      sub_1B0C6FCDC(v45, v47, v37, 0xE800000000000000);
      goto LABEL_44;
    }

    v10 = 0;
    v8 = 0;
    while (v8 < *(v31 + 16))
    {
      if (v8 >= *(v32 + 16))
      {
        goto LABEL_108;
      }

      v6 = *(v10 + v32 + 32);
      v9 = *(v10 + v32 + 40);
      v38 = sub_1B0E44B98();
      v7 = v39;
      if (v38 == v37 && v39 == 0xE800000000000000)
      {
        goto LABEL_41;
      }

      v102 = v6;
      v6 = v32;
      v41 = v37;
      v42 = sub_1B0E46A78();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      if (v42)
      {

        v6 = v102;
        goto LABEL_43;
      }

      v8 = (v8 + 1);

      v10 += 2;
      v37 = v41;
      v32 = v6;
      if (v103 == v8)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    v90 = sub_1B0E44DC8();
    v24 = v90 + 10;
  }

  while (!__OFADD__(v90, 10));
  while (1)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v116 = v26[7];
    v117 = v26[8];
    v118 = v26[9];
    v119 = v26[10];
    v112 = v26[3];
    v113 = v26[4];
    v114 = v26[5];
    v115 = v26[6];
    v109 = *v26;
    v110 = v26[1];
    v111 = v26[2];
    v27 = (v109 & 0x3FFFFFFFFFFFFFFFLL);
    if (!(v109 >> 62))
    {
      v28 = *((v109 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v48 = *((v109 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v49 = *((v109 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v50 = *((v109 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      if ((v48 & 0x1000000000000000) != 0)
      {
        v51 = sub_1B0E44DC8();
        if ((v50 & 0x1000000000000000) != 0)
        {
          goto LABEL_65;
        }
      }

      else
      {
        if ((v48 & 0x2000000000000000) == 0)
        {
          v51 = v28 & 0xFFFFFFFFFFFFLL;
          if ((v50 & 0x1000000000000000) == 0)
          {
            goto LABEL_32;
          }

LABEL_65:
          v52 = sub_1B0E44DC8();
          v27 = (v52 + v51);
          if (!__OFADD__(v51, v52))
          {
LABEL_69:
            v29 = v27 + 2;
            if (__OFADD__(v27, 2))
            {
              __break(1u);
              goto LABEL_121;
            }

            if (v29 < 0)
            {
              goto LABEL_141;
            }

            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            v103 = v49;
            if (v29 >= 1025)
            {
              sub_1B07169CC(v8, v120);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B07169CC(v8, v120);
              isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
              if ((isStackAllocationSafe & 1) == 0)
              {
                v95 = swift_slowAlloc();
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B07169CC(v8, v120);
                sub_1B0C71C3C(v95, v95 + v29, 0, v101, v100, v99, v28, v48, v103, v50, &v109);
                MEMORY[0x1B272C230](v95, -1, -1);
                v29 = v98;
                goto LABEL_85;
              }
            }

            else
            {
              sub_1B07169CC(v8, v120);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              isStackAllocationSafe = sub_1B07169CC(v8, v120);
            }

            v102 = &v96;
            MEMORY[0x1EEE9AC00](isStackAllocationSafe);
            v73 = &v96 - v72;
            v74 = &v96 + v29 - v72;
            v75 = swift_allocObject();
            v75[2] = 0;
            v76 = v75 + 2;
            v75[3] = v29;
            v75[4] = v73;
            v75[5] = v74;
            sub_1B0C6FBFC(sub_1B0C76E5C, v75, v28, v48, v103, v50, &v109);
            swift_beginAccess();
            v77 = *v76;
            v78 = *(v101 + 1);
            if (v78 >= 1)
            {
              if (__OFADD__(v78, v77))
              {
LABEL_138:
                __break(1u);
                goto LABEL_139;
              }

              if (v78 + v77 >= 79)
              {
                v78 = v100;
                sub_1B0C72700(*v101, v100);
                (v78)("\t", "");
                if (v77 < 0)
                {
LABEL_145:
                  __break(1u);
                  goto LABEL_146;
                }

                (v78)(v73, &v73[v77]);

                if (v29 < v77)
                {
                  goto LABEL_147;
                }

                v79 = v77 + 1;
                v29 = v98;
                if (!__OFADD__(v77, 1))
                {
LABEL_84:
                  *(v101 + 1) = v79;
LABEL_85:

                  sub_1B075E648(v8);
                  sub_1B075E648(v8);
                  swift_bridgeObjectRelease_n();
                  swift_bridgeObjectRelease_n();
                  result = sub_1B0C6DC98(*(&v109 + 1), v110, *(&v110 + 1), v100, v99);
                  goto LABEL_106;
                }

                __break(1u);
              }
            }

            if (v77 < 0)
            {
LABEL_130:
              __break(1u);
              goto LABEL_131;
            }

            v100(v73, &v73[v77]);

            if (v29 < v77)
            {
LABEL_133:
              __break(1u);
              goto LABEL_134;
            }

            v79 = v78 + v77;
            v29 = v98;
            if (__OFADD__(v78, v77))
            {
LABEL_135:
              __break(1u);
              goto LABEL_136;
            }

            goto LABEL_84;
          }

          goto LABEL_35;
        }

        v51 = HIBYTE(v48) & 0xF;
        if ((v50 & 0x1000000000000000) != 0)
        {
          goto LABEL_65;
        }
      }

LABEL_32:
      if ((v50 & 0x2000000000000000) != 0)
      {
        v52 = (HIBYTE(v50) & 0xF);
        v27 = (v52 + v51);
        if (!__OFADD__(v51, v52))
        {
          goto LABEL_69;
        }
      }

      else
      {
        v52 = (v49 & 0xFFFFFFFFFFFFLL);
        v27 = (v51 + (v49 & 0xFFFFFFFFFFFFLL));
        if (!__OFADD__(v51, v49 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_69;
        }
      }

LABEL_35:
      __break(1u);
LABEL_36:
      v53 = v27[2];
      v54 = v27[3];
      v9 = v27[4];
      if ((v54 & 0x1000000000000000) != 0)
      {
        v92 = sub_1B0E44DC8();
        v55 = v92 + 6;
        if (!__OFADD__(v92, 6))
        {
LABEL_87:
          if (v55 < 0)
          {
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

          if (v55 >= 1025)
          {
            sub_1B07169CC(v8, v120);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B07169CC(v8, v120);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v81 = swift_stdlib_isStackAllocationSafe();
            if ((v81 & 1) == 0)
            {
              v94 = swift_slowAlloc();
              sub_1B07169CC(v8, v120);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0C71208(v94, &v94[v55], 0, v101, v100, v99, v53, v54, v9, &v109);
              MEMORY[0x1B272C230](v94, -1, -1);

              sub_1B075E648(v8);
              sub_1B075E648(v8);

              v86 = *(&v110 + 1);
              goto LABEL_104;
            }
          }

          else
          {
            sub_1B07169CC(v8, v120);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B07169CC(v8, v120);
            v81 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          }

          v103 = &v96;
          MEMORY[0x1EEE9AC00](v81);
          v83 = &v96 - v82;
          v84 = &v96 + v55 - v82;
          v85 = swift_allocObject();
          v85[2] = 0;
          v85[3] = v55;
          v85[4] = v83;
          v85[5] = v84;
          sub_1B0C72368("text/", "", v85);
          sub_1B0C724CC(v53, v54, sub_1B0C74E88);
          v86 = *(&v110 + 1);
          if (*(*(&v110 + 1) + 16))
          {
            LOBYTE(v120[0]) = 59;
            sub_1B0C72368(v120, v120 + 1, v85);
          }

          swift_beginAccess();
          v87 = v85[2];
          v88 = *(v101 + 1);
          if (v88 >= 1)
          {
            if (__OFADD__(v88, v87))
            {
LABEL_137:
              __break(1u);
              goto LABEL_138;
            }

            if (v88 + v87 >= 79)
            {
              v88 = v100;
              sub_1B0C72700(*v101, v100);
              (v88)("\t", "");
              if (v87 < 0)
              {
LABEL_143:
                __break(1u);
                goto LABEL_144;
              }

              (v88)(v83, &v83[v87]);

              if (v55 < v87)
              {
LABEL_146:
                __break(1u);
LABEL_147:
                __break(1u);
              }

              v89 = v87 + 1;
              if (!__OFADD__(v87, 1))
              {
LABEL_103:
                *(v101 + 1) = v89;

                sub_1B075E648(v8);
                sub_1B075E648(v8);

LABEL_104:
                result = sub_1B0C6DC98(*(&v109 + 1), v110, v86, v100, v99);
                goto LABEL_105;
              }

              __break(1u);
            }
          }

          if (v87 < 0)
          {
            goto LABEL_128;
          }

          v100(v83, &v83[v87]);

          if (v55 < v87)
          {
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
            goto LABEL_133;
          }

          v89 = v88 + v87;
          if (__OFADD__(v88, v87))
          {
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

          goto LABEL_103;
        }
      }

      else if ((v54 & 0x2000000000000000) != 0)
      {
        v80 = HIBYTE(v54) & 0xF;
        v55 = v80 + 6;
        if (!__OFADD__(v80, 6))
        {
          goto LABEL_87;
        }
      }

      else
      {
        v55 = (v53 & 0xFFFFFFFFFFFFLL) + 6;
        if (!__OFADD__(v53 & 0xFFFFFFFFFFFFLL, 6))
        {
          goto LABEL_87;
        }
      }

      __break(1u);
LABEL_41:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

LABEL_43:

      v44 = sub_1B03B7B80(v6, v9);

LABEL_44:
      sub_1B0C6DC98(v104, v105, v106, v100, v99);

      *v98 = v44;
      return result;
    }

    if (v109 >> 62 != 1)
    {
      goto LABEL_36;
    }

    memcpy(v120, v27 + 2, 0x148uLL);
    v10 = *(&v120[0] + 1);
    v28 = *&v120[0];
    if ((*(&v120[0] + 1) & 0x1000000000000000) == 0)
    {
      if ((*(&v120[0] + 1) & 0x2000000000000000) != 0)
      {
        v57 = HIBYTE(*(&v120[0] + 1)) & 0xFLL;
        v29 = v57 + 9;
        if (!__OFADD__(v57, 9))
        {
          break;
        }
      }

      else
      {
        v29 = (*&v120[0] & 0xFFFFFFFFFFFFLL) + 9;
        if (!__OFADD__(*&v120[0] & 0xFFFFFFFFFFFFLL, 9))
        {
          break;
        }
      }

      goto LABEL_13;
    }

    v91 = sub_1B0E44DC8();
    v29 = v91 + 9;
    if (!__OFADD__(v91, 9))
    {
      break;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    v30 = HIBYTE(v23) & 0xF;
    v24 = v30 + 10;
    if (!__OFADD__(v30, 10))
    {
      goto LABEL_15;
    }
  }

  if (v29 < 0)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v25 = &v104;
  v52 = v8;
  if (v29 < 1025)
  {
    sub_1B07169CC(v8, &v104);
    sub_1B0C6700C(v120, &v104);
    sub_1B07169CC(v8, &v104);
    v58 = sub_1B0C6700C(v120, &v104);
    goto LABEL_49;
  }

LABEL_121:
  sub_1B07169CC(v52, v25);
  sub_1B0C6700C(v120, &v104);
  sub_1B07169CC(v8, &v104);
  sub_1B0C6700C(v120, &v104);
  v58 = swift_stdlib_isStackAllocationSafe();
  if (v58)
  {
LABEL_49:
    MEMORY[0x1EEE9AC00](v58);
    v60 = &v96 - v59;
    v61 = &v96 + v29 - v59;
    v62 = swift_allocObject();
    v62[2] = 0;
    v62[3] = v29;
    v62[4] = v60;
    v62[5] = v61;
    sub_1B0C72368("message/", "", v62);
    sub_1B0C724CC(v28, v10, sub_1B0C76E5C);
    v63 = *(&v110 + 1);
    if (*(*(&v110 + 1) + 16))
    {
      LOBYTE(v104) = 59;
      sub_1B0C72368(&v104, &v104 + 1, v62);
    }

    swift_beginAccess();
    v64 = v62[2];
    v65 = *(v101 + 1);
    if (v65 >= 1)
    {
      if (__OFADD__(v65, v64))
      {
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }

      if (v65 + v64 >= 79)
      {
        v65 = v100;
        v66 = v99;
        sub_1B0C72700(*v101, v100);
        (v65)("\t", "");
        if (v64 < 0)
        {
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        (v65)(v60, &v60[v64]);

        if (v29 < v64)
        {
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        v60 = v66;
        v67 = v64 + 1;
        v68 = v101;
        if (!__OFADD__(v64, 1))
        {
          goto LABEL_62;
        }

        __break(1u);
      }
    }

    if ((v64 & 0x8000000000000000) == 0)
    {
      v69 = &v60[v64];
      v70 = v60;
      v60 = v99;
      v100(v70, v69);

      if (v29 >= v64)
      {
        v67 = v65 + v64;
        v68 = v101;
        if (!__OFADD__(v65, v64))
        {
LABEL_62:
          *(v68 + 1) = v67;
          sub_1B0C67068(v120);
          sub_1B075E648(v8);
          sub_1B075E648(v8);
          goto LABEL_63;
        }

        goto LABEL_132;
      }

      goto LABEL_129;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v93 = swift_slowAlloc();
  sub_1B07169CC(v8, &v104);
  sub_1B0C6700C(v120, &v104);
  sub_1B0C71748(v93, &v93[v29], 0, v101, v100, v99, v120, &v109);
  MEMORY[0x1B272C230](v93, -1, -1);
  sub_1B0C67068(v120);
  sub_1B075E648(v8);
  sub_1B075E648(v8);
  v63 = *(&v110 + 1);
  v60 = v99;
LABEL_63:
  sub_1B0C6DC98(*(&v109 + 1), v110, v63, v100, v60);
  result = sub_1B0C67068(v120);
LABEL_105:
  v29 = v98;
LABEL_106:
  *v29 = 0;
  return result;
}

uint64_t sub_1B0C6FBFC(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v14 = *MEMORY[0x1E69E9840];
  sub_1B0C724CC(a3, a4, a1);
  v13 = 47;
  a1(&v13, &v14);
  result = sub_1B0C724CC(a5, a6, a1);
  if (*(*(a7 + 24) + 16))
  {
    v12 = 59;
    return a1(&v12, &v13);
  }

  return result;
}

uint64_t sub_1B0C6FCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v10 + 16);
  if (*v4)
  {

    v12 = sub_1B0C08B5C(a3, a4, v10 + 32, v11, (v9 + 16), v9 + 32);
    v14 = v13;
    v11 = v15;

    if ((v14 & 1) == 0)
    {

      if (!a2)
      {
        goto LABEL_28;
      }

LABEL_22:
      v25 = v4[2];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0C0E064(v25);
        v25 = result;
      }

      if ((v12 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v12 < *(v25 + 16))
      {
        v26 = v25 + 16 * v12;
        *(v26 + 32) = a1;
        *(v26 + 40) = a2;

        v4[2] = v25;
        return result;
      }

      __break(1u);
      return result;
    }
  }

  else if (v11)
  {
    v12 = 0;
    v16 = (v10 + 40);
    while (1)
    {
      v17 = *(v16 - 1) == a3 && *v16 == a4;
      if (v17 || (sub_1B0E46A78() & 1) != 0)
      {
        break;
      }

      ++v12;
      v16 += 2;
      if (v11 == v12)
      {
        v11 = 0;
        goto LABEL_14;
      }
    }

    if (!a2)
    {
      v11 = 0;
LABEL_28:
      sub_1B0C07FE0(v12, v11);

      sub_1B0C081D0(v12);
LABEL_29:
    }

    goto LABEL_22;
  }

LABEL_14:
  if (!a2)
  {
    goto LABEL_29;
  }

  sub_1B0C07E68(a3, a4, v11);

  v20 = v4[2];
  v18 = v4 + 2;
  v19 = v20;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v18 = v20;
  if ((result & 1) == 0)
  {
    result = sub_1B041D32C(0, *(v19 + 16) + 1, 1);
    v19 = *v18;
  }

  v23 = *(v19 + 16);
  v22 = *(v19 + 24);
  if (v23 >= v22 >> 1)
  {
    result = sub_1B041D32C((v22 > 1), v23 + 1, 1);
    v19 = *v18;
  }

  *(v19 + 16) = v23 + 1;
  v24 = v19 + 16 * v23;
  *(v24 + 32) = a1;
  *(v24 + 40) = a2;
  *v18 = v19;
  return result;
}

uint64_t sub_1B0C6FEFC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = a1;
  v17 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69E6290];
  v6 = MEMORY[0x1E6969DF8];
  v15 = MEMORY[0x1E69E6290];
  v16 = MEMORY[0x1E6969DF8];
  v13 = "X-Apple-Content-Length";
  v14 = "";
  __swift_project_boxed_opaque_existential_0(&v13, MEMORY[0x1E69E6290]);
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v15 = v5;
  v16 = v6;
  v13 = ": ";
  v14 = "";
  __swift_project_boxed_opaque_existential_0(&v13, v5);
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B0EDD3D0;
  *(v7 + 32) = v12;
  *(v7 + 40) = &v13;
  v13 = a2;
  v8 = sub_1B0E469C8();
  sub_1B0C742B8(v8, v9, v7);

  swift_beginAccess();
  v10 = *(v7 + 16);
  if (__OFADD__(v10, 24))
  {
    __break(1u);
    goto LABEL_10;
  }

  if ((v10 + 24) < 79)
  {
    goto LABEL_6;
  }

  sub_1B0C74C44(v4);
  v15 = v5;
  v16 = v6;
  v13 = "\t";
  v14 = "";
  __swift_project_boxed_opaque_existential_0(&v13, v5);
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v13);
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v5;
  v16 = v6;
  v13 = v12;
  v14 = &v12[v10];
  __swift_project_boxed_opaque_existential_0(&v13, v5);
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v13);

  if (v10 > 0x46)
  {
    __break(1u);
LABEL_6:
    if ((v10 & 0x8000000000000000) == 0)
    {
      v15 = v5;
      v16 = v6;
      v13 = v12;
      v14 = &v12[v10];
      __swift_project_boxed_opaque_existential_0(&v13, v5);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v13);

      if (v10 <= 0x46)
      {
        return sub_1B0C74C44(v4);
      }

LABEL_12:
      __break(1u);
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  return sub_1B0C74C44(v4);
}

uint64_t sub_1B0C70174(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *), uint64_t a4)
{
  v5 = a1;
  v12 = *MEMORY[0x1E69E9840];
  a3("X-Apple-Content-Length", "");
  a3(": ", "");
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B0EDD3D0;
  *(v6 + 32) = v11;
  *(v6 + 40) = &v12;
  v7 = sub_1B0E469C8();
  sub_1B0C742B8(v7, v8, v6);

  swift_beginAccess();
  v9 = *(v6 + 16);
  if (__OFADD__(v9, 24))
  {
    __break(1u);
    goto LABEL_10;
  }

  if ((v9 + 24) < 79)
  {
    goto LABEL_6;
  }

  sub_1B0C72700(v5, a3);
  a3("\t", "");
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a3(v11, &v11[v9]);

  if (v9 > 0x46)
  {
    __break(1u);
LABEL_6:
    if ((v9 & 0x8000000000000000) == 0)
    {
      a3(v11, &v11[v9]);

      if (v9 <= 0x46)
      {
        return sub_1B0C72700(v5, a3);
      }

LABEL_12:
      __break(1u);
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  return sub_1B0C72700(v5, a3);
}

unint64_t sub_1B0C7034C()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  while (1)
  {
    v0 = sub_1B0E44DB8();
    v2 = v1;
    if (!v1)
    {
      goto LABEL_24;
    }

    v3 = v0;
    if (v0 == 2573 && v1 == 0xE200000000000000)
    {
      goto LABEL_17;
    }

    result = sub_1B0E46A78();
    if (result)
    {
      goto LABEL_17;
    }

    v5 = (v2 & 0x2000000000000000) != 0 ? HIBYTE(v2) & 0xF : v3 & 0xFFFFFFFFFFFFLL;
    if (!v5)
    {
      break;
    }

    if ((v2 & 0x1000000000000000) != 0)
    {
      v6 = sub_1B0E44C18();
    }

    else
    {
      v6 = sub_1B0E46278() << 16;
    }

    if (v6 >> 14 != 4 * v5)
    {
      goto LABEL_23;
    }

    result = sub_1B0C04CF0(v3, v2);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_27;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_23:

LABEL_24:

      return v2 == 0;
    }

    result = sub_1B0C04CF0(v3, v2);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_28;
    }

    if ((result & 0xFFFFFF00) != 0)
    {
      goto LABEL_26;
    }

LABEL_17:
    v7 = sub_1B0C704E4(v3, v2);

    if ((v7 & 0x100) != 0 || v7 - 127 < 0xFFFFFFA2 || v7 - 34 <= 0x3B && ((1 << (v7 - 34)) & 0xE0000007F0024C1) != 0)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1B0C704E4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = a1;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = sub_1B0E44E08();
    }

    else if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v5 = sub_1B0E46368();
      }

      v4 = *v5;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 8);
}

uint64_t sub_1B0C70574(const char *a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v16 = a2 - a1;
  }

  else
  {
    v16 = 0;
  }

  v17 = swift_allocObject();
  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v18 = v17;
  v19 = a9;
  v17[2] = 0;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = a2;
  if (a3)
  {
    sub_1B0C72368(" ", "", v17);
  }

  sub_1B0C7495C(a5, a6, v18);
  LOBYTE(v35) = 61;
  sub_1B0C72368(&v35, &v35 + 1, v18);
  sub_1B0C75534(a7, a8, v18);
  if ((a9 & 1) == 0)
  {
    LOBYTE(v35) = 59;
    sub_1B0C72368(&v35, &v35 + 1, v18);
  }

  swift_beginAccess();
  v20 = v18[2];
  v21 = *(a4 + 1);
  if (v21 >= 1)
  {
    v22 = __OFADD__(v21, v20);
    v23 = v21 + v20;
    if (v22)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v23 >= 79)
    {
      sub_1B0C74C44(*a4);
      v19 = MEMORY[0x1E69E6290];
      v37 = MEMORY[0x1E69E6290];
      v38 = MEMORY[0x1E6969DF8];
      v35 = "\t";
      v36 = "";
      __swift_project_boxed_opaque_existential_0(&v35, MEMORY[0x1E69E6290]);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v35);
      if (a3)
      {
        if (v20 < 1)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
        }

        v24 = 1;
        goto LABEL_23;
      }

LABEL_21:
      if (v20 < 0)
      {
        goto LABEL_34;
      }

      v24 = 0;
LABEL_23:
      v29 = &a1[v24];
      v30 = &a1[v20];
      if (!a1)
      {
        v30 = 0;
      }

      v37 = v19;
      v38 = MEMORY[0x1E6969DF8];
      if (!a1)
      {
        v29 = 0;
      }

      v35 = v29;
      v36 = v30;
      __swift_project_boxed_opaque_existential_0(&v35, v19);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v35);
      v31 = sub_1B0433338(v24, v20, a1, a2);
      v28 = v31 + 1;
      if (!__OFADD__(v31, 1))
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    }
  }

  if (v20 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v25 = &a1[v20];
  if (!a1)
  {
    v25 = 0;
  }

  v37 = MEMORY[0x1E69E6290];
  v38 = MEMORY[0x1E6969DF8];
  v35 = a1;
  v36 = v25;
  __swift_project_boxed_opaque_existential_0(&v35, MEMORY[0x1E69E6290]);
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v35);
  v26 = sub_1B0433338(0, v20, a1, a2);
  v27 = *(a4 + 1);
  v22 = __OFADD__(v27, v26);
  v28 = v27 + v26;
  if (v22)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_28:
  *(a4 + 1) = v28;
}

uint64_t sub_1B0C7084C(char *a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, char a11)
{
  *&v39[23] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v17 = a2 - a1;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  if (v17 < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v19 = v18;
  v20 = a3;
  v21 = a5;
  v22 = a4;
  v18[2] = 0;
  v18[3] = v17;
  v18[4] = a1;
  v18[5] = a2;
  v36 = v20;
  if (v20)
  {
    sub_1B0C72368(" ", "", v18);
  }

  sub_1B0C724CC(a7, a8, sub_1B0C76E5C);
  v38 = 61;
  sub_1B0C72368(&v38, v39, v19);
  sub_1B0C731A0(a9, a10, sub_1B0C76E5C);
  if ((a11 & 1) == 0)
  {
    v38 = 59;
    sub_1B0C72368(&v38, v39, v19);
  }

  swift_beginAccess();
  v23 = v19[2];
  v24 = *(a4 + 1);
  if (v24 >= 1)
  {
    v25 = __OFADD__(v24, v23);
    v26 = v24 + v23;
    if (v25)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v26 >= 79)
    {
      sub_1B0C72700(*a4, v21);
      v21("\t", "");
      if (v36)
      {
        if (v23 < 1)
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
        }

        v27 = 1;
        goto LABEL_24;
      }

LABEL_22:
      if (v23 < 0)
      {
        goto LABEL_37;
      }

      v27 = 0;
LABEL_24:
      if (a1)
      {
        v32 = &a1[v23];
      }

      else
      {
        v32 = 0;
      }

      if (a1)
      {
        v33 = &a1[v27];
      }

      else
      {
        v33 = 0;
      }

      v21(v33, v32);
      v34 = sub_1B0433338(v27, v23, a1, a2);
      v31 = v34 + 1;
      if (!__OFADD__(v34, 1))
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }
  }

  if (v23 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a1)
  {
    v28 = &a1[v23];
  }

  else
  {
    v28 = 0;
  }

  v21(a1, v28);
  v29 = sub_1B0433338(0, v23, a1, a2);
  v30 = *(a4 + 1);
  v25 = __OFADD__(v30, v29);
  v31 = v30 + v29;
  if (v25)
  {
    __break(1u);
    goto LABEL_22;
  }

LABEL_31:
  *(v22 + 1) = v31;
}

void sub_1B0C70AEC(const char *a1, uint64_t a2, char a3, unsigned __int8 *a4, void *a5, uint64_t a6)
{
  if (a1)
  {
    v11 = a2 - a1;
  }

  else
  {
    v11 = 0;
  }

  v12 = swift_allocObject();
  if (v11 < 0)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = v12;
  v12[2] = 0;
  v12[3] = v11;
  v12[4] = a1;
  v12[5] = a2;
  if (a3)
  {
    sub_1B0C72368(" ", "", v12);
  }

  sub_1B0C72368("multipart/", "", v13);
  sub_1B0C7495C(a5[1], a5[2], v13);
  swift_beginAccess();
  v14 = v13[2];
  v15 = *(a4 + 1);
  if (v15 < 1)
  {
    goto LABEL_13;
  }

  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (v16)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v17 < 79)
  {
LABEL_13:
    if ((v14 & 0x8000000000000000) == 0)
    {
      v19 = &a1[v14];
      if (!a1)
      {
        v19 = 0;
      }

      v28 = MEMORY[0x1E69E6290];
      v29 = MEMORY[0x1E6969DF8];
      v26 = a1;
      v27 = v19;
      __swift_project_boxed_opaque_existential_0(&v26, MEMORY[0x1E69E6290]);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v26);
      v20 = sub_1B0433338(0, v14, a1, a2);
      v21 = *(a4 + 1);
      v16 = __OFADD__(v21, v20);
      v22 = v21 + v20;
      if (!v16)
      {
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  sub_1B0C74C44(*a4);
  v11 = MEMORY[0x1E69E6290];
  v28 = MEMORY[0x1E69E6290];
  v29 = MEMORY[0x1E6969DF8];
  v26 = "\t";
  v27 = "";
  __swift_project_boxed_opaque_existential_0(&v26, MEMORY[0x1E69E6290]);
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v26);
  if (a3)
  {
    if (v14 < 1)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v18 = 1;
    goto LABEL_21;
  }

LABEL_19:
  if ((v14 & 0x8000000000000000) == 0)
  {
    v18 = 0;
LABEL_21:
    v23 = &a1[v18];
    v24 = &a1[v14];
    if (!a1)
    {
      v24 = 0;
    }

    v28 = v11;
    v29 = MEMORY[0x1E6969DF8];
    if (!a1)
    {
      v23 = 0;
    }

    v26 = v23;
    v27 = v24;
    __swift_project_boxed_opaque_existential_0(&v26, v11);
    sub_1B0E42EF8();
    __swift_destroy_boxed_opaque_existential_0(&v26);
    v25 = sub_1B0433338(v18, v14, a1, a2);
    v22 = v25 + 1;
    if (!__OFADD__(v25, 1))
    {
LABEL_26:
      *(a4 + 1) = v22;

      sub_1B0717020(a5);
      return;
    }

    goto LABEL_30;
  }

LABEL_32:
  __break(1u);
}