void sub_1B0B84E7C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C40, &qword_1B0EC98A0);
  MEMORY[0x1EEE9AC00](v66);
  v61 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v52 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v52 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v69 = a1;
  v68 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v34 = a4 + v20;
    if (v20 >= 1)
    {
      v35 = -v16;
      v36 = v34;
      v64 = a4;
      v65 = a1;
      v54 = -v16;
      while (2)
      {
        while (1)
        {
          v52 = v34;
          v37 = a2 + v35;
          v55 = a2;
          v56 = a2 + v35;
          while (1)
          {
            if (a2 <= a1)
            {
              v69 = a2;
              v67 = v52;
              goto LABEL_59;
            }

            v39 = a3;
            v53 = v34;
            v63 = a3 + v35;
            v40 = v36 + v35;
            v41 = v36 + v35;
            v42 = v58;
            sub_1B03B5C80(v41, v58, &qword_1EB6E4C40, &qword_1B0EC98A0);
            v43 = v59;
            sub_1B03B5C80(v37, v59, &qword_1EB6E4C40, &qword_1B0EC98A0);
            v44 = v60;
            sub_1B03B5C80(v42, v60, &qword_1EB6E4C40, &qword_1B0EC98A0);
            v45 = v66;
            v46 = (v44 + *(v66 + 48));
            v62 = *v46;
            v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B8, &qword_1B0EC4100);
            v57 = *(v47 + 48);
            v48 = v61;
            sub_1B03B5C80(v43, v61, &qword_1EB6E4C40, &qword_1B0EC98A0);
            v49 = (v48 + *(v45 + 48));
            LODWORD(v45) = *v49;
            sub_1B0398EFC(v49 + *(v47 + 48), &qword_1EB6E2070, &qword_1B0E9F040);
            sub_1B0398EFC(v46 + v57, &qword_1EB6E2070, &qword_1B0E9F040);
            sub_1B0398EFC(v43, &qword_1EB6E4C40, &qword_1B0EC98A0);
            sub_1B0398EFC(v42, &qword_1EB6E4C40, &qword_1B0EC98A0);
            if (v62 < v45)
            {
              break;
            }

            v34 = v40;
            a3 = v63;
            v50 = v64;
            if (v39 < v36 || v63 >= v36)
            {
              swift_arrayInitWithTakeFrontToBack();
              v37 = v56;
              a1 = v65;
              v35 = v54;
            }

            else
            {
              v37 = v56;
              a1 = v65;
              v35 = v54;
              if (v39 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v36 = v40;
            v38 = v40 > v50;
            a2 = v55;
            if (!v38)
            {
              goto LABEL_57;
            }
          }

          a3 = v63;
          v51 = v64;
          if (v39 < v55 || v63 >= v55)
          {
            break;
          }

          a2 = v56;
          a1 = v65;
          v34 = v53;
          v35 = v54;
          if (v39 != v55)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v36 <= v51)
          {
            goto LABEL_57;
          }
        }

        a2 = v56;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v65;
        v34 = v53;
        v35 = v54;
        if (v36 > v51)
        {
          continue;
        }

        break;
      }
    }

LABEL_57:
    v69 = a2;
    v67 = v34;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = a4 + v19;
    v67 = a4 + v19;
    if (v19 >= 1 && a2 < a3)
    {
      v63 = a3;
      v56 = v16;
      v22 = v58;
      do
      {
        v64 = a4;
        v65 = a1;
        sub_1B03B5C80(a2, v22, &qword_1EB6E4C40, &qword_1B0EC98A0);
        v23 = v59;
        sub_1B03B5C80(a4, v59, &qword_1EB6E4C40, &qword_1B0EC98A0);
        v24 = v60;
        sub_1B03B5C80(v22, v60, &qword_1EB6E4C40, &qword_1B0EC98A0);
        v25 = v66;
        v26 = (v24 + *(v66 + 48));
        v62 = *v26;
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B8, &qword_1B0EC4100);
        v28 = *(v27 + 48);
        v29 = v61;
        sub_1B03B5C80(v23, v61, &qword_1EB6E4C40, &qword_1B0EC98A0);
        v30 = (v29 + *(v25 + 48));
        LODWORD(v25) = *v30;
        sub_1B0398EFC(v30 + *(v27 + 48), &qword_1EB6E2070, &qword_1B0E9F040);
        sub_1B0398EFC(v26 + v28, &qword_1EB6E2070, &qword_1B0E9F040);
        sub_1B0398EFC(v23, &qword_1EB6E4C40, &qword_1B0EC98A0);
        sub_1B0398EFC(v22, &qword_1EB6E4C40, &qword_1B0EC98A0);
        if (v62 >= v25)
        {
          v31 = v56;
          v32 = v65;
          a4 = v64 + v56;
          if (v65 < v64 || v65 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v33 = v63;
          }

          else
          {
            v33 = v63;
            if (v65 != v64)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v68 = a4;
        }

        else
        {
          v31 = v56;
          a4 = v64;
          v32 = v65;
          if (v65 < a2 || v65 >= a2 + v56)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v31;
            v33 = v63;
          }

          else
          {
            v33 = v63;
            if (v65 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v31;
          }
        }

        a1 = v32 + v31;
        v69 = a1;
      }

      while (a4 < v57 && a2 < v33);
    }
  }

LABEL_59:
  sub_1B0BC10E4(&v69, &v68, &v67);
}

uint64_t sub_1B0B85580(uint64_t a1)
{
  v1 = sub_1B0E443C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1B0B855D8(uint64_t a1)
{
  sub_1B0B856D0();
  if (v1 <= 0x3F)
  {
    sub_1B0B85700();
    if (v2 <= 0x3F)
    {
      sub_1B0B85730(319);
      if (v3 <= 0x3F)
      {
        sub_1B0B857B0(319);
        if (v4 <= 0x3F)
        {
          sub_1B0B85884(319, &qword_1EB6E4C80, "knownLength offset ");
          if (v5 <= 0x3F)
          {
            sub_1B0B8581C();
            if (v6 <= 0x3F)
            {
              sub_1B0B85884(319, &qword_1EB6E4C90, "minimum max ");
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B0B856D0()
{
  result = qword_1EB6E4C58;
  if (!qword_1EB6E4C58)
  {
    result = MEMORY[0x1E69E7668];
    atomic_store(MEMORY[0x1E69E7668], &qword_1EB6E4C58);
  }

  return result;
}

uint64_t sub_1B0B85700()
{
  result = qword_1EB6E4C60;
  if (!qword_1EB6E4C60)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1EB6E4C60);
  }

  return result;
}

void sub_1B0B85730(uint64_t a1)
{
  if (!qword_1EB6E4C68)
  {
    sub_1B0E43308();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E4C70, "X{\t");
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6E4C68);
    }
  }
}

void sub_1B0B857B0(uint64_t a1)
{
  if (!qword_1EB6E4C78)
  {
    sub_1B0E43308();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6E4C78);
    }
  }
}

void sub_1B0B8581C()
{
  if (!qword_1EB6E4C88)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB6E4C88);
    }
  }
}

void sub_1B0B85884(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SegmentResequencer.ByteCount(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SegmentResequencer.ByteCount(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0B8597C(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1B0B85994(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t sub_1B0B859BC(uint64_t *a1, uint64_t *a2)
{
  v4 = _s13SelectedStateV7WrappedVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15[-v8];
  v10 = *a1;
  v11 = *a2;
  v12 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  sub_1B0B85D10(v10 + v12, v9);
  v13 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  sub_1B0B85D10(v11 + v13, v6);
  LOBYTE(v11) = sub_1B0B85D74(v9, v6);
  sub_1B0B85E18(v6);
  sub_1B0B85E18(v9);
  return v11 & 1;
}

uint64_t sub_1B0B85AD8()
{
  sub_1B0B85E18(v0 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped);

  return swift_deallocClassInstance();
}

uint64_t sub_1B0B85B64(uint64_t a1)
{
  result = _s13SelectedStateV7WrappedVMa(319);
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

void sub_1B0B85C2C(uint64_t a1)
{
  type metadata accessor for MailboxSyncState(319);
  if (v1 <= 0x3F)
  {
    sub_1B0B85CC0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0B85CC0()
{
  if (!qword_1EB6DC970)
  {
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DC970);
    }
  }
}

uint64_t sub_1B0B85D10(uint64_t a1, uint64_t a2)
{
  v4 = _s13SelectedStateV7WrappedVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B85D74(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = _s13SelectedStateV7WrappedVMa(0);
  if ((sub_1B03D0ED0(a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B0B85E18(uint64_t a1)
{
  v2 = _s13SelectedStateV7WrappedVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0B85E9C(uint64_t a1)
{
  result = sub_1B0E439A8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0B85F28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
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

uint64_t sub_1B0B85F70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0B86000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  result = swift_beginAccess();
  if (v5)
  {
    v7 = 0;
    v8 = a2 + 32;
LABEL_3:
    v9 = (v8 + 176 * v7);
    while (v7 < v5)
    {
      v10 = v9[9];
      v21 = v9[8];
      v22 = v10;
      v23 = v9[10];
      v11 = v9[5];
      v20[4] = v9[4];
      v20[5] = v11;
      v12 = v9[7];
      v20[6] = v9[6];
      v20[7] = v12;
      v13 = v9[1];
      v20[0] = *v9;
      v20[1] = v13;
      v14 = v9[3];
      v20[2] = v9[2];
      v20[3] = v14;
      v15 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_13;
      }

      v16 = *(&v21 + 1);
      sub_1B03A35B8(v20, &v19);
      v17 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      LOBYTE(v16) = sub_1B0B8715C(v17, v16);

      result = sub_1B03A3614(v20);
      if ((v16 & 1) == 0)
      {
        if (!__OFADD__(a1++, 1))
        {
          ++v7;
          if (v15 != v5)
          {
            goto LABEL_3;
          }

          return a1;
        }

LABEL_14:
        __break(1u);
        return result;
      }

      ++v7;
      v9 += 11;
      if (v15 == v5)
      {
        return a1;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return a1;
}

uint64_t sub_1B0B86138(uint64_t **a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1B03D0E54(v5);
  v5 = result;
  a1[1] = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5[2] > a2)
  {
    return sub_1B0B861CC;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1B0B861D8(uint64_t a1, unsigned int a2, void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v5 = BYTE1(__dst[3]);
  v6 = __dst[4];
  v7 = BYTE2(__dst[2]);
  v8 = __dst[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = sub_1B0397D14();
  v10 = v9;
  v19 = v7;
  if (v6 == 3 || v6 == 2)
  {

    if ((__dst[24] & 1) == 0)
    {
      return result;
    }

    goto LABEL_4;
  }

  sub_1B0BAE1A4(v9);
  sub_1B0397E04(&unk_1F2710548, v8);
  sub_1B0BAE1A4(v10);
  v16 = sub_1B039109C(v8);

  if (v16 & 1) == 0 && (v5)
  {
    sub_1B0BAE1A4(v10);
  }

  if (__dst[24])
  {
LABEL_4:
    v13 = __dst[22];
    v12 = __dst[23];
    v14 = __dst[21];
    v18 = __dst[21];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2AE44(&v18, a1, a2, 0);
    result = sub_1B03BB638(v14, v13, v12, 1);
    v15 = v18;
    *(__src + 22) = 0;
    *(__src + 23) = 0;
    *(__src + 21) = v15;
    *(__src + 192) = 1;
  }

  return result;
}

uint64_t sub_1B0B86564(uint64_t a1, unsigned int a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v5 = v4;
  memcpy(__dst, v4, sizeof(__dst));
  v7 = LOBYTE(__dst[3]);
  v8 = BYTE1(__dst[3]);
  v9 = __dst[4];
  v10 = LOBYTE(__dst[5]);
  v11 = BYTE2(__dst[2]);
  v12 = __dst[6];
  v13 = __dst[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = sub_1B0397D14();
  v15 = v14;
  v49 = v11;
  v46 = a4;
  if (v9 == 3 || v9 == 2)
  {

    v16 = 0;
    v17 = 0;
    v18 = 0x100000000000000;
    v19 = 0x100000000;
    v20 = 0x1000000;
    v21 = 512;
    v22 = 1;
    goto LABEL_71;
  }

  v23 = sub_1B0BAE1A4(v14);
  if ((v8 & 1) == 0)
  {
    if (v9 == 1)
    {
      if (v7)
      {
        if (v7 == 1)
        {
          v24 = 0;
          v19 = 0x100000000;
          v25 = 512;
LABEL_77:
          v41 = v25;
          goto LABEL_19;
        }

LABEL_76:
        v24 = 0;
        v19 = 0;
        v7 = 1;
        v25 = 256;
        goto LABEL_77;
      }
    }

    else if (!v9 && v7)
    {
      if (v7 != 1)
      {
        v7 = 0;
        v41 = 0;
        v24 = 0;
        v19 = 0;
        goto LABEL_19;
      }

      goto LABEL_76;
    }
  }

  v7 = (v23 & 1) == 0;
  if (v23)
  {
    v19 = 0;
  }

  else
  {
    v19 = 0x100000000;
  }

  v26 = 512;
  if (v23)
  {
    v26 = 0;
  }

  v41 = v26;
  v24 = (v23 & 1) == 0;
LABEL_19:
  v27 = sub_1B0397E04(&unk_1F2710548, v13);
  if (v27)
  {
    v28 = v7;
  }

  else
  {
    v28 = 1;
  }

  v42 = v28;
  v29 = (v27 & 1) == 0 || v24;
  v40 = v29;
  v30 = sub_1B0BAE1A4(v15);
  v31 = sub_1B039109C(v13);

  v32 = v31 ^ 1;
  if (v31 & 1) == 0 && (v8)
  {
    v32 = sub_1B0BAE1A4(v15);
    v31 = v32 ^ 1;
  }

  v33 = *(v15 + 16);

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v35 = 0x10000;
      if ((v32 & 1) == 0)
      {
        v35 = 0;
      }

      if (v31)
      {
        v16 = v35;
      }

      else
      {
        v16 = 0x20000;
      }
    }

    else if (v32)
    {
      v16 = 0x10000;
    }

    else
    {
      v16 = 0;
    }

    if (v12 >= 3989)
    {
      v21 = 512;
    }

    else
    {
      v21 = v41;
    }

    if (((v33 == 0) & v8) != 0)
    {
      v18 = 0x100000000000000;
    }

    else
    {
      v18 = 0;
    }

    if (v30)
    {
      v17 = 0x10000000000;
    }

    else
    {
      v17 = 0;
    }

    if ((v40 & 1) == 0)
    {
      v20 = 0;
      v34 = v42;
      goto LABEL_70;
    }

    v34 = v42;
  }

  else
  {
    v16 = 0;
    if (v10)
    {
      v20 = 0;
      if (v12 >= 3989)
      {
        v21 = 512;
      }

      else
      {
        v21 = v41;
      }

      if (((v33 == 0) & v8) != 0)
      {
        v18 = 0x100000000000000;
      }

      else
      {
        v18 = 0;
      }

      if (v30)
      {
        v17 = 0x10000000000;
      }

      else
      {
        v17 = 0;
      }

      v34 = v42;
      if ((v40 & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (((v33 == 0) & v8) != 0)
      {
        v18 = 0x100000000000000;
      }

      else
      {
        v18 = 0;
      }

      if (v30)
      {
        v17 = 0x10000000000;
      }

      else
      {
        v17 = 0;
      }

      v34 = 1;
      v21 = 512;
    }
  }

  v20 = 0x1000000;
LABEL_70:
  v22 = v34;
LABEL_71:
  *v51 = *&__dst[21];
  *&v51[9] = *(&__dst[22] + 1);
  if (__dst[24])
  {
    v36 = v49;
    v48 = *v51;
    sub_1B0B94FFC(v51, v47);
    v37 = 0x1000000000000;
    if ((v36 & 1) == 0)
    {
      v37 = 0;
    }

    sub_1B0B2B14C(&v48, a1, a2, 0, a3, v46, v16 | v21 | v22 | v20 | v19 | v17 | v18 | v37);
    result = sub_1B0B95058(v51);
    v39 = v48;
    v5[22] = 0;
    v5[23] = 0;
    v5[21] = v39;
    *(v5 + 192) = 1;
  }

  else
  {
    sub_1B0B94FFC(v51, v47);
  }

  return result;
}

uint64_t sub_1B0B86910(uint64_t a1)
{
  v2 = sub_1B0E460B8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1B0A9CD58(&v4, v2, *(a1 + 36), 0, a1);
  }
}

void sub_1B0B86998(uint64_t a1)
{
  v2 = sub_1B0E460B8();
  if (v2 != 1 << *(a1 + 32))
  {
    sub_1B0A9CDFC(&v3, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1B0B86A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B0E460B8();
  if (v4 == 1 << *(a1 + 32))
  {
    result = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    result = sub_1B0A9CE80(&v11, v4, *(a1 + 36), 0, a1);
    v7 = v11;
    v8 = v12;
    v9 = v13;
    v10 = v14;
  }

  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  return result;
}

double sub_1B0B86AC8(uint64_t a1)
{
  v2 = sub_1B0E460B8();
  if (v2 != 1 << *(a1 + 32))
  {
    sub_1B0B94D00(v2, *(a1 + 36), 0, a1);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0B86B3C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v55[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55[-v8];
  memcpy(v69, v1, sizeof(v69));
  v10 = sub_1B03B9A74();
  memcpy(v68, v1, sizeof(v68));
  v11 = sub_1B0B87F18(v10);
  v12 = v11;
  if (!*(v11 + 16))
  {
LABEL_11:

    goto LABEL_14;
  }

  sub_1B0B86AC8(v11);
  if (!v13)
  {
LABEL_8:
    sub_1B03906B8(a1, v6, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v32 = sub_1B0E43988();
    v33 = sub_1B0E45908();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v60 = a1;
      v35 = v34;
      v36 = swift_slowAlloc();
      v63[0] = v36;
      *v35 = 68158466;
      *(v35 + 4) = 2;
      *(v35 + 8) = 256;
      v37 = v6[*(v4 + 20)];
      sub_1B0390514(v6, type metadata accessor for State.Logger);
      *(v35 + 10) = v37;
      *(v35 + 11) = 2082;
      v38 = sub_1B0B88A40(v10);
      v40 = v39;

      v41 = sub_1B0399D64(v38, v40, v63);

      *(v35 + 13) = v41;
      *(v35 + 21) = 2048;
      v42 = *(v12 + 16);

      *(v35 + 23) = v42;

      _os_log_impl(&dword_1B0389000, v32, v33, "[%.*hhx] Push sync %{public}s for %ld mailbox(es)", v35, 0x1Fu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x1B272C230](v36, -1, -1);
      v43 = v35;
      a1 = v60;
      MEMORY[0x1B272C230](v43, -1, -1);

      goto LABEL_14;
    }

    sub_1B0390514(v6, type metadata accessor for State.Logger);

    goto LABEL_11;
  }

  if (*(v12 + 16) != 1)
  {

    goto LABEL_8;
  }

  v15 = *(v1 + 184);
  v16 = *(v1 + 216);
  v66 = *(v1 + 200);
  v67[0] = v16;
  *(v67 + 12) = *(v1 + 228);
  v64 = *(v1 + 168);
  v65 = v15;
  v17 = v13;
  v58 = v14;
  v18 = sub_1B0B29590(v13, v14);
  sub_1B03906B8(a1, v9, type metadata accessor for State.Logger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v60 = a1;
  v19 = sub_1B0E43988();
  v20 = sub_1B0E45908();
  v59 = v17;

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v56 = v18;
    v22 = v21;
    v57 = swift_slowAlloc();
    v62[0] = v57;
    *v22 = 68159235;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    v23 = v9[*(v4 + 20)];
    sub_1B0390514(v9, type metadata accessor for State.Logger);
    *(v22 + 10) = v23;
    *(v22 + 11) = 2082;
    v24 = sub_1B0B88A40(v10);
    v26 = v25;

    v27 = sub_1B0399D64(v24, v26, v62);

    *(v22 + 13) = v27;
    *(v22 + 21) = 1040;
    *(v22 + 23) = 2;
    *(v22 + 27) = 512;
    *(v22 + 29) = v56;
    *(v22 + 31) = 2160;
    *(v22 + 33) = 0x786F626C69616DLL;
    *(v22 + 41) = 2085;
    v63[0] = v59;
    LODWORD(v63[1]) = v58;
    v28 = sub_1B0E44BA8();
    v30 = sub_1B0399D64(v28, v29, v62);

    *(v22 + 43) = v30;
    _os_log_impl(&dword_1B0389000, v19, v20, "[%.*hhx] Push sync %{public}s for mailbox {%.*hx} '%{sensitive,mask.mailbox}s'", v22, 0x33u);
    v31 = v57;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v31, -1, -1);
    MEMORY[0x1B272C230](v22, -1, -1);
  }

  else
  {
    sub_1B0390514(v9, type metadata accessor for State.Logger);
  }

  a1 = v60;
LABEL_14:
  memcpy(v63, v2, sizeof(v63));
  v44 = sub_1B03C5290();
  memcpy(v62, v2, sizeof(v62));
  v45 = v62[21];
  v46 = v62[22];
  v47 = v62[23];
  v48 = v62[24];
  v49 = sub_1B0B88020();
  v50 = sub_1B0BA73DC(v49, v44);
  v51 = sub_1B0BA73DC(v12, v50);
  if ((v48 & 1) == 0)
  {
  }

  v61 = v45;
  v52 = v51;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B28FD0(&v61, v52, a1);

  result = sub_1B03BB638(v45, v46, v47, 1);
  v54 = v61;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  *(v2 + 168) = v54;
  *(v2 + 192) = 1;
  return result;
}

uint64_t sub_1B0B8715C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + ((v4 << 8) | (4 * __clz(__rbit64(v12)))));
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      if ((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (*(*(v6 + 48) + 4 * v16) != v14)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B872CC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + (__clz(__rbit64(v12)) | (v4 << 6)));
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v14);
      result = sub_1B0E46CB8();
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      if ((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (*(*(v6 + 48) + v16) != v14)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B87438(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + ((v4 << 8) | (4 * __clz(__rbit64(v12)))));
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      if ((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (v14 != *(*(v6 + 48) + 4 * v16))
        {
          v16 = (v16 + 1) & v17;
          if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B875A8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *v0;
  sub_1B0E46C28();
  SyncRequest.hash(into:)(v6, v4, v1, v2);
  MEMORY[0x1B2728DB0](v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B87618(__int128 *a1)
{
  v2 = *(v1 + 24);
  SyncRequest.hash(into:)(a1, *v1, *(v1 + 8), *(v1 + 16));
  return MEMORY[0x1B2728DB0](v2);
}

uint64_t sub_1B0B87660(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *v1;
  sub_1B0E46C28();
  SyncRequest.hash(into:)(v7, v5, v2, v3);
  MEMORY[0x1B2728DB0](v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B876CC(unsigned __int8 *a1, unsigned __int8 *a2, __n128 a3)
{
  v3 = *(a1 + 3);
  v4 = *(a2 + 3);
  return static SyncRequest.__derived_struct_equals(_:_:)(*a1, *(a1 + 1), a1[16], *a2, *(a2 + 1), a2[16], a3) & (v3 == v4);
}

uint64_t sub_1B0B8771C(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1B0B94B10(v4, __dst) & 1;
}

unint64_t sub_1B0B87778()
{
  result = qword_1EB6E4C98;
  if (!qword_1EB6E4C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4C98);
  }

  return result;
}

void sub_1B0B877CC(uint64_t a1, char *a2)
{
  v3 = v2;
  v7 = *(v2 + 168);
  v8 = *(v2 + 176);
  v6 = v2 + 168;
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  sub_1B03B9A2C(v7, v8, v9, *(v6 + 24));
  v50 = a2;
  sub_1B0B2648C(a1, a2);
  if (v10 == 1)
  {
    v46 = v9;
    v47 = v8;
    v11 = *(v7 + 16);
    v12 = MEMORY[0x1E69E7CC0];
    v48 = v7;
    if (v11)
    {
      v51 = MEMORY[0x1E69E7CC0];
      sub_1B0B0A5C4(0, v11, 0);
      v12 = v51;
      v13 = (v7 + 40);
      do
      {
        v15 = *(v13 - 1);
        v14 = *v13;
        v16 = *(v51 + 16);
        v17 = *(v51 + 24);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v16 >= v17 >> 1)
        {
          sub_1B0B0A5C4((v17 > 1), v16 + 1, 1);
        }

        v13 += 22;
        *(v51 + 16) = v16 + 1;
        v18 = v51 + 16 * v16;
        *(v18 + 32) = v15;
        *(v18 + 40) = v14;
        --v11;
      }

      while (v11);
    }

    v20 = sub_1B0B388CC(v12);

    v21 = *(a1 + 16);
    v22 = MEMORY[0x1E69E7CC0];
    v49 = v3;
    if (v21)
    {
      v52 = MEMORY[0x1E69E7CC0];
      sub_1B0B0A5C4(0, v21, 0);
      v22 = v52;
      v23 = (a1 + 40);
      do
      {
        v25 = *(v23 - 1);
        v24 = *v23;
        v26 = *(v52 + 16);
        v27 = *(v52 + 24);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v26 >= v27 >> 1)
        {
          sub_1B0B0A5C4((v27 > 1), v26 + 1, 1);
        }

        v23 += 12;
        *(v52 + 16) = v26 + 1;
        v28 = v52 + 16 * v26;
        *(v28 + 32) = v25;
        *(v28 + 40) = v24;
        --v21;
      }

      while (v21);
      v3 = v49;
    }

    v29 = sub_1B0B388CC(v22);

    if (*(v20 + 16) <= *(v29 + 16) >> 3)
    {
      sub_1B0BA8288(v20);
    }

    else
    {
      sub_1B0BA9058(v20, v29);
    }

    v30 = *(v3 + 64);
    v31 = 1 << *(v30 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v30 + 64);
    v34 = (v31 + 63) >> 6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v35 = 0;
    while (v33)
    {
LABEL_29:
      v38 = __clz(__rbit64(v33)) | (v35 << 6);
      v39 = *(*(v30 + 48) + 4 * v38);
      v40 = (*(v30 + 56) + 32 * v38);
      v41 = *v40;
      v42 = *(v40 + 1);
      v43 = v40[16];
      if (v42)
      {
        swift_bridgeObjectRetain_n();
        v44 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v36 = sub_1B0BA74E4(v44, v42);
      }

      else
      {
        v36 = 0;
      }

      v33 &= v33 - 1;
      sub_1B03FE6A0(v39, v41, v42, v43, v36, v50);
    }

    while (1)
    {
      v37 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        return;
      }

      if (v37 >= v34)
      {
        break;
      }

      v33 = *(v30 + 64 + 8 * v37);
      ++v35;
      if (v33)
      {
        v35 = v37;
        goto LABEL_29;
      }
    }

    sub_1B03BB638(v48, v47, v46, 1);

    v3 = v49;
    v19 = *(v49 + 120);
    if (!v19)
    {
      return;
    }
  }

  else
  {
    sub_1B03BB638(v7, v8, v9, 0);
    v19 = *(v3 + 120);
    if (!v19)
    {
      return;
    }
  }

  if (*(v3 + 192) == 1)
  {
    sub_1B0B87B60(v19);
    sub_1B0B2E008(v45);
  }
}

void sub_1B0B87B60(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC8];
  v6 = a1 + 64;
  v5 = *(a1 + 64);
  v55 = MEMORY[0x1E69E7CC8];
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = 0;
  while (1)
  {
    v12 = v11;
    if (!v9)
    {
      break;
    }

LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = *(a1 + 48) + 16 * v14;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(a1 + 56) + 72 * v14;
    LOWORD(v15) = *(v18 + 64);
    v20 = *(v18 + 32);
    v19 = *(v18 + 48);
    v51 = *(v18 + 16);
    v52 = v20;
    v53 = v19;
    v54 = v15;
    v50 = *v18;
    if ((v15 & 0x100) != 0)
    {
      v43 = v16;
      v44 = v17;
      v47 = v52;
      v48 = v53;
      v49 = v54;
      v45 = v50;
      v46 = v51;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03BB0B4(&v50, v41);
      sub_1B0398EFC(&v43, &qword_1EB6E4CD8, &qword_1B0EC9BC0);
    }

    else
    {
      v36 = *(&v51 + 1);
      v37 = v52;
      v21 = v53;
      v39 = v2;
      v38 = v54;
      v45 = *v18;
      v49 = *(v18 + 64);
      v48 = *(v18 + 48);
      v47 = *(v18 + 32);
      v46 = *(v18 + 16);
      v22 = *(v4 + 16);
      v40 = v16;
      if (*(v4 + 24) <= v22)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03BB0B4(&v50, v41);
        sub_1B0B34270(v22 + 1, 1);
        v4 = v55;
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03BB0B4(&v50, v41);
      }

      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v17 | (v17 << 32));
      v23 = sub_1B0E46CB8();
      v24 = v4 + 64;
      v25 = -1 << *(v4 + 32);
      v26 = v23 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v4 + 64 + 8 * (v26 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v25) >> 6;
        v2 = v39;
        v29 = v40;
        while (++v27 != v31 || (v30 & 1) == 0)
        {
          v32 = v27 == v31;
          if (v27 == v31)
          {
            v27 = 0;
          }

          v30 |= v32;
          v33 = *(v24 + 8 * v27);
          if (v33 != -1)
          {
            v28 = __clz(__rbit64(~v33)) + (v27 << 6);
            goto LABEL_24;
          }
        }

        goto LABEL_27;
      }

      v28 = __clz(__rbit64((-1 << v26) & ~*(v4 + 64 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v2 = v39;
      v29 = v40;
LABEL_24:
      *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v34 = *(v4 + 48) + 16 * v28;
      *v34 = v29;
      *(v34 + 8) = v17;
      v35 = *(v4 + 56) + 48 * v28;
      *v35 = v36;
      *(v35 + 8) = v37;
      *(v35 + 24) = v21 & 1;
      *(v35 + 32) = *(&v21 + 1);
      *(v35 + 40) = v38 & 1;
      ++*(v4 + 16);
      v41[2] = v47;
      v41[3] = v48;
      v42 = v49;
      v41[0] = v45;
      v41[1] = v46;
      sub_1B039E440(v41);
    }
  }

  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v11);
    ++v12;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1B0B87EC0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 81))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 8);
    v3 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
}

uint64_t sub_1B0B87F18(uint64_t a1)
{
  result = MEMORY[0x1E69E7CD0];
  if (*(v1 + 192))
  {
    v4 = *(v1 + 168);
    v30 = MEMORY[0x1E69E7CD0];
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = (v4 + 32);
      do
      {
        v7 = *v6;
        v8 = v6[2];
        v20 = v6[1];
        v21 = v8;
        v19 = v7;
        v9 = v6[3];
        v10 = v6[4];
        v11 = v6[6];
        v24 = v6[5];
        v25 = v11;
        v22 = v9;
        v23 = v10;
        v12 = v6[7];
        v13 = v6[8];
        v14 = v6[10];
        v28 = v6[9];
        v29 = v14;
        v26 = v12;
        v27 = v13;
        v15 = *(&v13 + 1);
        sub_1B03A35B8(&v19, v18);
        if (sub_1B0B8715C(a1, v15))
        {
          sub_1B03A3614(&v19);
        }

        else
        {
          v16 = v20;
          v17 = DWORD2(v20);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03AB2E0(v18, v16, v17);
          sub_1B03A3614(&v19);
        }

        v6 += 11;
        --v5;
      }

      while (v5);
      return v30;
    }
  }

  return result;
}

uint64_t sub_1B0B88020()
{
  result = MEMORY[0x1E69E7CD0];
  if (*(v0 + 192))
  {
    v2 = *(v0 + 168);
    v29 = MEMORY[0x1E69E7CD0];
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = (v2 + 32);
      do
      {
        v5 = *v4;
        v6 = v4[2];
        v19 = v4[1];
        v20 = v6;
        v18 = v5;
        v7 = v4[3];
        v8 = v4[4];
        v9 = v4[6];
        v23 = v4[5];
        v24 = v9;
        v21 = v7;
        v22 = v8;
        v10 = v4[7];
        v11 = v4[8];
        v12 = v4[10];
        v27 = v4[9];
        v28 = v12;
        v25 = v10;
        v26 = v11;
        v13 = v19;
        v14 = DWORD2(v19);
        v15 = v23;
        v16 = *(&v22 + 1);
        sub_1B03A35B8(&v18, v17);
        if (static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(v16, v15, 0, 0))
        {
          sub_1B03A3614(&v18);
        }

        else
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03AB2E0(v17, v13, v14);
          sub_1B03A3614(&v18);
        }

        v4 += 11;
        --v3;
      }

      while (v3);
      return v29;
    }
  }

  return result;
}

BOOL sub_1B0B88130(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0xFE) != 2)
  {
    return 0;
  }

  v6 = a6 - a5;
  if (a6 >= a5)
  {
    if (!__OFSUB__(a6, a5))
    {
      return v6 / 1000000000.0 > 60.0;
    }
  }

  else
  {
    if (!__OFSUB__(a5, a6))
    {
      v6 = a6 - a5;
      if (!__OFSUB__(0, a5 - a6))
      {
        return v6 / 1000000000.0 > 60.0;
      }

      __break(1u);
      return 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1B0B88194(uint64_t a1, uint64_t a2)
{
  v41 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v41);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + 64);
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v11 = 1 << *(*(v2 + 64) + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v15 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = 0;
  *&v17 = 68158722;
  v40 = v17;
  v42 = a2;
  v44 = v15;
  v45 = a1;
  v39 = v6;
  while (v13)
  {
LABEL_11:
    v19 = __clz(__rbit64(v13)) | (v16 << 6);
    v20 = *(*(v15 + 48) + 4 * v19);
    v21 = (*(v15 + 56) + 32 * v19);
    v22 = *v21;
    v23 = *(v21 + 3);
    if (v23 <= a1)
    {
      v24 = a1 - v23;
      if (__OFSUB__(a1, v23))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (__OFSUB__(v23, a1))
      {
        goto LABEL_29;
      }

      v24 = a1 - v23;
      if (__OFSUB__(0, v23 - a1))
      {
        goto LABEL_30;
      }
    }

    v25 = v24 / 1000000000.0;
    if (COERCE__INT64(fabs(v25)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_25;
    }

    if (v25 <= -9.22337204e18)
    {
      goto LABEL_26;
    }

    if (v25 >= 9.22337204e18)
    {
      goto LABEL_27;
    }

    v13 &= v13 - 1;
    v26 = v25;
    if (v25 >= 301)
    {
      v46 = v20;
      v47 = v22;
      sub_1B03906B8(a2, v6, type metadata accessor for State.Logger);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v27 = sub_1B0E43988();
      v28 = v6;
      v29 = sub_1B0E45908();

      if (os_log_type_enabled(v27, v29))
      {
        v30 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v48 = v43;
        *v30 = v40;
        *(v30 + 4) = 2;
        *(v30 + 8) = 256;
        v31 = v28;
        v32 = *(v28 + *(v41 + 20));
        sub_1B0390514(v31, type metadata accessor for State.Logger);
        *(v30 + 10) = v32;
        *(v30 + 11) = 1024;
        *(v30 + 13) = v46;
        *(v30 + 17) = 2082;

        v33 = sub_1B0E462C8();
        v35 = sub_1B0399D64(v33, v34, &v48);

        *(v30 + 19) = v35;
        *(v30 + 27) = 2048;
        *(v30 + 29) = v26;
        _os_log_impl(&dword_1B0389000, v27, v29, "[%.*hhx] Sync #%u (%{public}s) still running after %ld seconds.", v30, 0x25u);
        v36 = v43;
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
        MEMORY[0x1B272C230](v36, -1, -1);
        v37 = v30;
        a2 = v42;
        MEMORY[0x1B272C230](v37, -1, -1);

        a1 = v45;
        v6 = v39;
      }

      else
      {
        sub_1B0390514(v28, type metadata accessor for State.Logger);

        a1 = v45;
        v6 = v28;
      }

      v15 = v44;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      return;
    }

    v13 = *(v9 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_11;
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
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_1B0B88598(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B0E46298();
  sub_1B0E46508();
  MEMORY[0x1B2726E80](0x6E616D6D6F63202CLL, 0xED00007B203A7364);
  v6 = *(a3 + 16);
  if (v6)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v6, 0);
    v7 = a3 + 36;
    do
    {
      sub_1B0E46508();
      v9 = *(v28 + 16);
      v8 = *(v28 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1B041D32C((v8 > 1), v9 + 1, 1);
      }

      v7 += 8;
      *(v28 + 16) = v9 + 1;
      v10 = v28 + 16 * v9;
      *(v10 + 32) = 0;
      *(v10 + 40) = 0xE000000000000000;
      --v6;
    }

    while (v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0, MEMORY[0x1E69E6310]);
  v11 = sub_1B0E448E8();
  v13 = v12;

  MEMORY[0x1B2726E80](v11, v13);

  MEMORY[0x1B2726E80](0x6F69746361202C7DLL, 0xED00007B203A736ELL);
  v14 = *(a4 + 16);
  if (v14)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v14, 0);
    v15 = v29;
    v16 = a4 + 32;
    sub_1B07467B8();
    do
    {
      v16 += 4;
      v17 = sub_1B0E44E98();
      v30 = v15;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        v27 = v17;
        v22 = v18;
        sub_1B041D32C((v19 > 1), v20 + 1, 1);
        v18 = v22;
        v17 = v27;
        v15 = v30;
      }

      *(v15 + 16) = v20 + 1;
      v21 = v15 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      --v14;
    }

    while (v14);
  }

  v23 = sub_1B0E448E8();
  v25 = v24;

  MEMORY[0x1B2726E80](v23, v25);

  MEMORY[0x1B2726E80](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_1B0B8890C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0B94554(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1B0E469A8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B0E45278();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1B0B93C70(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1B0B88A40(unint64_t a1)
{
  v3 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = sub_1B0B88FC8(*(a1 + 16), 0);
    v6 = sub_1B0B8C130(&v46, v5 + 8, v4, v3);
    v7 = v46;
    v1 = v47;
    v2 = v48;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03D91F8(v7);
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v46 = v5;
  v8 = 0;
  sub_1B0B8890C(&v46);
  v9 = v46;
  v10 = *(v3 + 16);
  if (v10)
  {
    v43 = v46;
    v11 = sub_1B0B88FC8(v10, 0);
    v1 = sub_1B0B8C130(&v46, v11 + 8, v10, v3);
    v2 = v46;
    v9 = v48;
    v12 = v49;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03D91F8(v2);
    if (v1 != v10)
    {
      __break(1u);
      goto LABEL_38;
    }

    v9 = v43;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v46 = v11;
  sub_1B0B8890C(&v46);
  v14 = v46;
  v12 = *(v46 + 16);
  if (v12 >= 7)
  {
    v15 = 7;
  }

  else
  {
    v15 = *(v46 + 16);
  }

  if (v15 >= *(v9 + 16))
  {

    v33 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v34 = v14 + 32;
      v45 = MEMORY[0x1E69E7CC0];
      sub_1B0A18B88(0, v15, 0);
      v33 = v45;
      do
      {
        v34 += 4;
        v46 = 35;
        v47 = 0xE100000000000000;
        v35 = String.init(_:)();
        MEMORY[0x1B2726E80](v35);

        v36 = v46;
        v37 = v47;
        v39 = *(v45 + 16);
        v38 = *(v45 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1B0A18B88(v38 > 1, v39 + 1, 1);
        }

        *(v45 + 16) = v39 + 1;
        v40 = v45 + 16 * v39;
        *(v40 + 32) = v36;
        *(v40 + 40) = v37;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
    if (!v12)
    {
      goto LABEL_29;
    }

    if (v12 >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = *(v46 + 16);
    }

    v44 = MEMORY[0x1E69E7CC0];

    sub_1B0A18B88(0, v17, 0);
    v16 = v44;
    v46 = 35;
    v47 = 0xE100000000000000;
    v18 = String.init(_:)();
    MEMORY[0x1B2726E80](v18);

    v1 = v46;
    v2 = v47;
    v3 = *(v44 + 16);
    v13 = *(v44 + 24);
    v8 = v3 + 1;
    if (v3 >= v13 >> 1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      *(v16 + 16) = v8;
      v19 = v16 + 16 * v3;
      *(v19 + 32) = v1;
      *(v19 + 40) = v2;
      if (v12 != 1)
      {
        v46 = 35;
        v47 = 0xE100000000000000;
        v20 = String.init(_:)();
        MEMORY[0x1B2726E80](v20);

        v1 = v46;
        v2 = v47;
        v44 = v16;
        v3 = *(v16 + 16);
        v21 = *(v16 + 24);
        v8 = v3 + 1;
        if (v3 >= v21 >> 1)
        {
          sub_1B0A18B88(v21 > 1, v3 + 1, 1);
        }

        *(v16 + 16) = v8;
        v22 = v16 + 16 * v3;
        *(v22 + 32) = v1;
        *(v22 + 40) = v2;
        if (v12 != 2)
        {
          v46 = 35;
          v47 = 0xE100000000000000;
          v23 = String.init(_:)();
          MEMORY[0x1B2726E80](v23);

          v1 = v46;
          v2 = v47;
          v44 = v16;
          v3 = *(v16 + 16);
          v24 = *(v16 + 24);
          v8 = v3 + 1;
          if (v3 >= v24 >> 1)
          {
            sub_1B0A18B88(v24 > 1, v3 + 1, 1);
          }

          *(v16 + 16) = v8;
          v25 = v16 + 16 * v3;
          *(v25 + 32) = v1;
          *(v25 + 40) = v2;
          if (v12 != 3)
          {
            v46 = 35;
            v47 = 0xE100000000000000;
            v26 = String.init(_:)();
            MEMORY[0x1B2726E80](v26);

            v12 = v46;
            v1 = v47;
            v44 = v16;
            v3 = *(v16 + 16);
            v27 = *(v16 + 24);
            v8 = v3 + 1;
            if (v3 >= v27 >> 1)
            {
              sub_1B0A18B88(v27 > 1, v3 + 1, 1);
            }

            *(v16 + 16) = v8;
            v28 = v16 + 16 * v3;
            *(v28 + 32) = v12;
            *(v28 + 40) = v1;
          }
        }
      }

LABEL_29:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E37F8, &qword_1B0EA2E00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B0EC3500;
      *(inited + 32) = 10911970;
      *(inited + 40) = 0xA300000000000000;
      v46 = 35;
      v47 = 0xE100000000000000;
      v13 = *(v9 + 16);
      if (v13)
      {
        break;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      sub_1B0A18B88(v13 > 1, v8, 1);
      v16 = v44;
    }

    v30 = inited;

    v31 = String.init(_:)();
    MEMORY[0x1B2726E80](v31);

    v32 = v47;
    *(v30 + 48) = v46;
    *(v30 + 56) = v32;
    v46 = v16;
    sub_1B0A19AA0(v30);
    v33 = v46;
  }

  v46 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0, MEMORY[0x1E69E6310]);
  v41 = sub_1B0E448E8();

  return v41;
}

void *sub_1B0B88FC8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CA0, &qword_1B0EDC600);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_1B0B8904C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4328, &unk_1B0EC5070);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2E8BA2E8BA2E8BA3) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *sub_1B0B890F8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4388, &qword_1B0EC50D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1B0B8919C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size_0(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

char *sub_1B0B89218(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4328, &unk_1B0EC5070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0B8937C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4E50, &qword_1B0EC9E88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4E58, &qword_1B0EC9E90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0B894C0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4E18, &qword_1B0EC9E50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4E20, &qword_1B0EC9E58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0B89654(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4E60, &qword_1B0EC9E98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4E68, &qword_1B0EC9EA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0B897EC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4E40, &qword_1B0EC9E78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4E48, &qword_1B0EC9E80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0B89934(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D68, &qword_1B0EC9C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D70, &qword_1B0EC9C38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B89A68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42D0, &unk_1B0EC5990);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B0B89BB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4EC0, &qword_1B0EC9EF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1B0B89CD0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4E08, &qword_1B0EC9E40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A50, &qword_1B0EC77A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B89E04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4F10, &qword_1B0EC9F48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1B0B89F40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D00, &qword_1B0EC9BE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1B0B8A0A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41A0, &unk_1B0EF9FA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B8A1BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4F40, &qword_1B0EC9F78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B0B8A370(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 12);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 12 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

void *sub_1B0B8A4C4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1B0B8A6FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D90, &qword_1B0EC9C58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B8A81C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D98, &unk_1B0EF9F00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B8A928(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4E00, &qword_1B0EC9E38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B0B8AA40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4500, &qword_1B0EC5280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0B8AB68(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D78, &qword_1B0EC9C40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[24 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 192 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47B0, &qword_1B0EC5E90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0B8ACB0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D80, &qword_1B0EC9C48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[14 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 112 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47B8, &qword_1B0EC5E98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B8AE24(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

void *sub_1B0B8AF7C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size_0(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1B0B8B128(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1B0B8B368(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 8 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

void *sub_1B0B8B460(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4F88, &qword_1B0EC9FC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49D8, &unk_1B0EC6FD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B8B60C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size_0(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1B0B8B734(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size_0(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 96);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[96 * v11])
    {
      memmove(v15, v16, 96 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1B0B8B850(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4DC8, &qword_1B0EC9C88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4DD0, &qword_1B0EC9C90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B8B998(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4DD8, &qword_1B0EC9C98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B8BAB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4440, &qword_1B0EC51B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_1B0B8BBBC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4430, &unk_1B0EC51A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4438, &qword_1B0ECA320);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B8BCF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4DB8, &qword_1B0EC9C78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B8BE0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4DA0, &qword_1B0EC9C60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B8BF18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4DA8, &qword_1B0EC9C68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B8C024(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4DB0, &qword_1B0EC9C70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0B8C130(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1B0B8C230(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = *(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9))));
      v18 = *v17;
      LODWORD(v17) = *(v17 + 8);
      v9 &= v9 - 1;
      *v11 = v18;
      *(v11 + 8) = v17;
      if (v14 == v10)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        goto LABEL_24;
      }

      v11 += 16;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1B0B8C390(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = *(a4 + 56) + 24 * (v14 | (v9 << 6));
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      LOBYTE(v15) = *(v15 + 17);
      *a2 = v16;
      *(a2 + 8) = v17;
      *(a2 + 16) = v18;
      *(a2 + 17) = v15;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 24;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v20 = v9 + 1;
    }

    else
    {
      v20 = (63 - v6) >> 6;
    }

    v9 = v20 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1B0B8C4AC(void *result, char *__dst, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!__dst)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v10 = a3;
  if (!a3)
  {
LABEL_12:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v10;
    return v10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = *(a6 + 16);
    if (v11)
    {
      v12 = __dst;
      v13 = 0;
      v14 = (a6 + 32);
      v15 = a3 - 1;
      while (v13 < *(a6 + 16))
      {
        v16 = v14[9];
        v22[8] = v14[8];
        v22[9] = v16;
        v22[10] = v14[10];
        v17 = v14[5];
        v22[4] = v14[4];
        v22[5] = v17;
        v18 = v14[7];
        v22[6] = v14[6];
        v22[7] = v18;
        v19 = v14[1];
        v22[0] = *v14;
        v22[1] = v19;
        v20 = v14[3];
        v22[2] = v14[2];
        v22[3] = v20;
        memmove(v12, v14, 0xB0uLL);
        if (v15 == v13)
        {
          sub_1B03A35B8(v22, v21);
          goto LABEL_12;
        }

        v12 += 176;
        result = sub_1B03A35B8(v22, v21);
        ++v13;
        v14 += 11;
        if (v11 == v13)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v10 = v11;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *sub_1B0B8C5CC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        goto LABEL_24;
      }

      v11 += 2;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1B0B8C724(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        sub_1B03B2000(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      sub_1B03B2000(v18, *(&v18 + 1));
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1B0B8C9A0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1B0E46138();
  }

  return sub_1B0E46308();
}

void sub_1B0B8CA40(void *a1, char a2, void *a3)
{
  v3 = a1[2];
  v53 = a1[3];
  v54 = a1[1];
  v5 = (*a1 + 64);
  v4 = *v5;
  v66[0] = *a1;
  v55 = v66[0];
  v6 = -1 << *(v66[0] + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v4;
  v9 = a1[4];
  v50 = a1[5];
  sub_1B03B5C80(v66, v63, &qword_1EB6E4860, &qword_1B0EC5FE8);
  v10 = (63 - v6) >> 6;

  v66[4] = v9;

  v11 = 0;
  while (1)
  {
    v12 = v11;
    if (!v8)
    {
LABEL_7:
      v13 = v12;
      while (1)
      {
        v11 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v11 >= v10)
        {
          sub_1B03D91F8(v55);

          sub_1B0398EFC(v66, &qword_1EB6E4860, &qword_1B0EC5FE8);

          return;
        }

        v8 = v5[v11];
        ++v13;
        if (v8)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      sub_1B0E46BA8();
      __break(1u);
      goto LABEL_31;
    }

    while (1)
    {
      v11 = v12;
LABEL_11:
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v15 = v14 | (v11 << 6);
      v16 = *(v55 + 48) + 16 * v15;
      v17 = *v16;
      LODWORD(v16) = *(v16 + 8);
      v18 = *(v55 + 56) + 72 * v15;
      v60[0] = *v18;
      v20 = *(v18 + 32);
      v19 = *(v18 + 48);
      v21 = *(v18 + 16);
      v61 = *(v18 + 64);
      v60[2] = v20;
      v60[3] = v19;
      v60[1] = v21;
      v22 = *(v18 + 16);
      *&v62[4] = *v18;
      v23 = *(v18 + 32);
      v24 = *(v18 + 48);
      *&v62[68] = *(v18 + 64);
      *&v62[52] = v24;
      *&v62[36] = v23;
      *&v62[20] = v22;
      *v59 = v17;
      *&v59[8] = v16;
      *&v59[28] = *&v62[16];
      *&v59[44] = *&v62[32];
      *&v59[60] = *&v62[48];
      *&v59[74] = *&v62[62];
      *&v59[12] = *v62;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03BB0B4(v60, &v56);
      v25 = v3;
      v54(&v56, v59);
      v63[2] = *&v59[32];
      v63[3] = *&v59[48];
      v63[4] = *&v59[64];
      v64 = *&v59[80];
      v63[0] = *v59;
      v63[1] = *&v59[16];
      sub_1B0398EFC(v63, &qword_1EB6E4CD8, &qword_1B0EC9BC0);
      v26 = v56;
      v27 = v57;
      v28 = v58;
      v65[0] = v56;
      v65[1] = v57;
      v65[2] = v58;
      if (v53(v65))
      {
        break;
      }

      v12 = v11;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    *v59 = v26;
    *&v59[8] = v27;
    *&v59[16] = v28;
    v50(&v56, v59);

    v29 = v56;
    v49 = v58;
    v30 = *a3;
    v31 = v57;
    v33 = sub_1B03AB888(v56, v57);
    v34 = v30[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_28;
    }

    v37 = v30[3];
    v3 = v25;
    if (v37 < v36)
    {
      break;
    }

    if (a2)
    {
      if (v32)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v45 = v32;
      sub_1B0B8F684();
      if (v45)
      {
        goto LABEL_24;
      }
    }

LABEL_21:
    v40 = *a3;
    *(*a3 + 8 * (v33 >> 6) + 64) |= 1 << v33;
    v41 = v40[6] + 16 * v33;
    *v41 = v29;
    *(v41 + 8) = v31;
    *(v40[7] + 8 * v33) = v49;
    v42 = v40[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_29;
    }

    v40[2] = v44;
    a2 = 1;
  }

  v48 = v32;
  sub_1B0B34570(v36, a2 & 1);
  v38 = sub_1B03AB888(v29, v31);
  if ((v48 & 1) != (v39 & 1))
  {
    goto LABEL_30;
  }

  v33 = v38;
  v3 = v25;
  if ((v48 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_24:
  v46 = swift_allocError();
  swift_willThrow();
  sub_1B0398EFC(v66, &qword_1EB6E4860, &qword_1B0EC5FE8);

  v47 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1B03D91F8(v55);

    return;
  }

LABEL_31:
  *v59 = 0;
  *&v59[8] = 0xE000000000000000;
  sub_1B0E46298();
  MEMORY[0x1B2726E80](0xD00000000000001BLL, 0x80000001B0F2B570);
  sub_1B0E46508();
  MEMORY[0x1B2726E80](39, 0xE100000000000000);
  sub_1B0E465B8();
  __break(1u);
}

void sub_1B0B8D048()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4770, &qword_1B0EC5E50);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        LODWORD(v21) = *(v21 + 8);
        v23 = (*(v4 + 48) + v17);
        *v23 = v19;
        v23[1] = v20;
        v24 = *(v4 + 56) + v17;
        *v24 = v22;
        *(v24 + 8) = v21;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1B0B8D1C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47F8, &qword_1B0EC5F90);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_1B0B8D330()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4730, qword_1B0EC5B90);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 48) + 16 * v17;
        v20 = *v19;
        LODWORD(v19) = *(v19 + 8);
        v17 *= 72;
        v21 = *(v2 + 56) + v17;
        v23 = *(v21 + 16);
        v22 = *(v21 + 32);
        v24 = *(v21 + 48);
        v35 = *(v21 + 64);
        v34 = v24;
        v31 = *v21;
        v32 = v23;
        v33 = v22;
        v25 = *(v4 + 48) + v18;
        *v25 = v20;
        *(v25 + 8) = v19;
        v26 = *(v4 + 56) + v17;
        *v26 = v31;
        v27 = v32;
        v28 = v33;
        v29 = v34;
        *(v26 + 64) = v35;
        *(v26 + 32) = v28;
        *(v26 + 48) = v29;
        *(v26 + 16) = v27;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result = sub_1B03BB0B4(&v31, v30);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1B0B8D4FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4760, &qword_1B0EC5E40);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 4);
        v25 = *(v22 + 8);
        LOBYTE(v22) = *(v22 + 16);
        v26 = (*(v4 + 48) + v18);
        *v26 = v20;
        v26[1] = v21;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 4) = v24;
        *(v27 + 8) = v25;
        *(v27 + 16) = v22;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1B0B8D6A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47F0, &qword_1B0EC5F88);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_1B0B8D810()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45C0, &unk_1B0EC5930);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_1B075DC38(&v39, v38))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 4 * v16);
      v18 = *(v2 + 56) + 184 * v16;
      v19 = *(v18 + 112);
      v21 = *(v18 + 64);
      v20 = *(v18 + 80);
      v45 = *(v18 + 96);
      v46 = v19;
      v43 = v21;
      v44 = v20;
      v23 = *(v18 + 144);
      v22 = *(v18 + 160);
      v24 = *(v18 + 128);
      v50 = *(v18 + 176);
      v48 = v23;
      v49 = v22;
      v47 = v24;
      v26 = *v18;
      v25 = *(v18 + 16);
      v27 = *(v18 + 48);
      v41 = *(v18 + 32);
      v42 = v27;
      v39 = v26;
      v40 = v25;
      *(*(v4 + 48) + 4 * v16) = v17;
      v28 = *(v4 + 56) + 184 * v16;
      v29 = v39;
      v30 = v40;
      v31 = v42;
      *(v28 + 32) = v41;
      *(v28 + 48) = v31;
      *v28 = v29;
      *(v28 + 16) = v30;
      v32 = v43;
      v33 = v44;
      v34 = v46;
      *(v28 + 96) = v45;
      *(v28 + 112) = v34;
      *(v28 + 64) = v32;
      *(v28 + 80) = v33;
      v35 = v47;
      v36 = v48;
      v37 = v49;
      *(v28 + 176) = v50;
      *(v28 + 144) = v36;
      *(v28 + 160) = v37;
      *(v28 + 128) = v35;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B0B8DA00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4818, &qword_1B0EC5FB0);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v19 + 8) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 12 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v19 = *(v4 + 56) + 12 * v14;
      *v19 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B0B8DB64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4118, &qword_1B0EC3318);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 9) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 16 * v14;
      v18 = *v17;
      v19 = *(v17 + 8);
      LOBYTE(v17) = *(v17 + 9);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
      v20 = *(v4 + 56) + 16 * v14;
      *v20 = v18;
      *(v20 + 8) = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B0B8DCCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4638, &qword_1B0EC59D0);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 17) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 24 * v14;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      LOBYTE(v17) = *(v17 + 17);
      result = *(v4 + 48);
      *(result + v14) = *(*(v2 + 48) + 4 * v14);
      v21 = *(v4 + 56) + 24 * v14;
      *v21 = v18;
      *(v21 + 8) = v19;
      *(v21 + 16) = v20;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B0B8DE40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4820, &qword_1B0EC5FB8);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v17 *= 24;
        v19 = *(v2 + 56) + v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        LOBYTE(v19) = *(v19 + 17);
        v23 = *(*(v2 + 48) + v18);
        *(*(v4 + 48) + v18) = v23;
        v24 = *(v4 + 56) + v17;
        *v24 = v20;
        *(v24 + 8) = v21;
        *(v24 + 16) = v22;
        *(v24 + 17) = v19;
        result = sub_1B03B2000(v23, *(&v23 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1B0B8DFD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47D0, &qword_1B0EC5EB0);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 2 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 2 * v17) = v21;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1B0B8E14C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1B0E46688();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(v4 + 48) + 16 * v19;
        v21 = *v20;
        LODWORD(v20) = *(v20 + 8);
        v22 = *(*(v4 + 56) + v19);
        v23 = *(v6 + 48) + 16 * v19;
        *v23 = v21;
        *(v23 + 8) = v20;
        *(*(v6 + 56) + v19) = v22;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1B0B8E2AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4768, &qword_1B0EC5E48);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        LODWORD(v22) = *(v22 + 24);
        v26 = (*(v4 + 48) + v18);
        *v26 = v20;
        v26[1] = v21;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v25;
        *(v27 + 24) = v22;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_1B0B8E450()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4790, &qword_1B0EC5E70);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_1B0B11A84(&v32, &v31))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = *(v2 + 48) + 16 * v16;
      v19 = *v18;
      LODWORD(v18) = *(v18 + 8);
      v16 *= 96;
      v20 = (*(v2 + 56) + v16);
      v21 = v20[2];
      v22 = v20[3];
      v23 = v20[4];
      *(v36 + 9) = *(v20 + 73);
      v35 = v22;
      v36[0] = v23;
      v24 = v20[1];
      v32 = *v20;
      v33 = v24;
      v34 = v21;
      v25 = *(v4 + 48) + v17;
      *v25 = v19;
      *(v25 + 8) = v18;
      v26 = (*(v4 + 56) + v16);
      v27 = v33;
      *v26 = v32;
      v26[1] = v27;
      v28 = v34;
      v29 = v35;
      v30 = v36[0];
      *(v26 + 73) = *(v36 + 9);
      v26[3] = v29;
      v26[4] = v30;
      v26[2] = v28;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1B0B8E628()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4710, &unk_1B0EC5A90);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v19;
        *(v21 + 8) = v20;
        *(v21 + 16) = v18;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_1B0B8E7A4()
{
  v1 = v0;
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4838, &unk_1B0EC5FD0);
  v5 = *v0;
  v6 = sub_1B0E46688();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1B03906B8(*(v5 + 48) + v21, v4, type metadata accessor for MoveAndCopyMessages.CommandID);
        v22 = *(*(v5 + 56) + v20);
        result = sub_1B0B950AC(v4, *(v7 + 48) + v21, type metadata accessor for MoveAndCopyMessages.CommandID);
        *(*(v7 + 56) + v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void sub_1B0B8E9DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4828, &qword_1B0EC5FC0);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1B0B8EB40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4800, &qword_1B0EC5F98);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_1B0B8EC9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4840, &qword_1B0EC6FD0);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        v19 = *(v2 + 48) + 40 * v17;
        v20 = *v19;
        v21 = *(v19 + 4);
        v22 = *(v19 + 8);
        v23 = *(v19 + 16);
        v24 = *(v19 + 24);
        v25 = *(v19 + 32);
        v17 *= 12;
        v26 = *(v2 + 56) + v17;
        v27 = *v26;
        LOBYTE(v26) = *(v26 + 8);
        v28 = *(v4 + 48) + v18;
        *v28 = v20;
        *(v28 + 4) = v21;
        *(v28 + 8) = v22;
        *(v28 + 16) = v23;
        *(v28 + 24) = v24;
        *(v28 + 32) = v25;
        v29 = *(v4 + 56) + v17;
        *v29 = v27;
        *(v29 + 8) = v26;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result = sub_1B03B2000(v24, v25);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B0B8EE54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4830, &qword_1B0EC5FC8);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 4 * v17;
        v19 = *(*(v2 + 48) + 4 * v17);
        v17 *= 40;
        v20 = *(v2 + 56) + v17;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 32);
        v24 = *(v20 + 16);
        *(*(v4 + 48) + v18) = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v21;
        *(v25 + 8) = v22;
        *(v25 + 16) = v24;
        *(v25 + 32) = v23;
        result = sub_1B03B2000(v22, v24);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B0B8EFE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4850, &qword_1B0EC6FC0);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = sub_1B03B2000(v18, *(&v18 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B0B8F148()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4848, &qword_1B0EC6FB0);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = sub_1B03B2000(v20, v21);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1B0B8F2BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4780, &qword_1B0EC5E60);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        LODWORD(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
        *(*(v4 + 56) + 8 * v17) = v20;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1B0B8F434()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4778, &qword_1B0EC5E58);
  v4 = *v0;
  v5 = sub_1B0E46688();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = *(v4 + 48) + 16 * v20;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1B03B5C80(*(v4 + 56) + v26, v30, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v27 = v32;
        v28 = *(v32 + 48) + v21;
        *v28 = v23;
        *(v28 + 8) = v24;
        sub_1B074BA2C(v25, *(v27 + 56) + v26);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v15);
    }

    v18 = v10;
    v6 = v32;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1B0B8F684()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47C8, &qword_1B0EC5EA8);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        LODWORD(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
        *(*(v4 + 56) + 8 * v17) = v20;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1B0B8F7F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47E8, &qword_1B0EC5EC8);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1B0B8F95C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4810, &qword_1B0EC5FA8);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1B0B8FAD8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v25 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4808, &qword_1B0EC5FA0);
  v6 = *v0;
  v7 = sub_1B0E46688();
  v8 = v7;
  if (*(v6 + 16))
  {
    v26 = v1;
    v9 = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    v15 = *(v6 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = 16 * v21;
        v23 = *(v6 + 56);
        v24 = *(v3 + 72) * v21;
        v27 = *(*(v6 + 48) + 16 * v21);
        sub_1B03B5C80(v23 + v24, v5, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        *(*(v8 + 48) + v22) = v27;
        sub_1B074BA2C(v5, *(v8 + 56) + v24);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v26;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

double sub_1B0B8FD1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1B03AB888(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B0B8D330();
      v10 = v15;
    }

    v11 = *(v10 + 56) + 72 * v8;
    v12 = *(v11 + 48);
    *(a3 + 32) = *(v11 + 32);
    *(a3 + 48) = v12;
    *(a3 + 64) = *(v11 + 64);
    v13 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v13;
    sub_1B0B900C4(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 64) = 0;
    result = 0.0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B0B8FDDC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1B03FE284(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1B0B8E628();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 24 * v5);
  sub_1B0B907A4(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_1B0B8FE8C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1B0AE00C4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1B0B8E9DC();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_1B0B90958(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_1B0B8FF20(uint64_t result, uint64_t a2)
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
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v9);
      result = sub_1B0E46CB8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (16 * v3 != 16 * v6 || (v3 = v6, v15 >= v16 + 1))
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B0B900C4(unint64_t result, uint64_t a2)
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
      v9 = 16 * v6;
      v10 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v10 | (v10 << 32));
      result = sub_1B0E46CB8();
      v11 = result & v7;
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
        v13 = (v12 + 16 * v3);
        v14 = (v12 + v9);
        if (16 * v3 != v9 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        result = v15 + 72 * v3;
        v16 = (v15 + 72 * v6);
        if (72 * v3 < (72 * v6) || result >= v16 + 72 || v3 != v6)
        {
          result = memmove(result, v16, 0x48uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B0B9027C(uint64_t result, uint64_t a2)
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
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 4 * v3);
        v13 = (v11 + 4 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v9 = v16[1];
          *v15 = *v16;
          v15[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B0B90414(uint64_t result, uint64_t a2)
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
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1B0E46C28();
      sub_1B03B2000(v11, v12);
      sub_1B0E42F48();
      v13 = sub_1B0E46CB8();
      result = sub_1B0391D50(v11, v12);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = v18 + 24 * v3;
        v20 = (v18 + 24 * v6);
        if (24 * v3 < (24 * v6) || v19 >= v20 + 24 || v3 != v6)
        {
          v9 = *v20;
          *(v19 + 16) = *(v20 + 2);
          *v19 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B0B905EC(unint64_t result, uint64_t a2)
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
      v9 = 16 * v6;
      v10 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v10 | (v10 << 32));
      result = sub_1B0E46CB8();
      v11 = result & v7;
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
        v13 = (v12 + 16 * v3);
        v14 = (v12 + v9);
        if (16 * v3 != v9 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        result = v15 + 96 * v3;
        v16 = (v15 + 96 * v6);
        if (96 * v3 < (96 * v6) || result >= v16 + 96 || v3 != v6)
        {
          result = memmove(result, v16, 0x60uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B0B907A4(uint64_t result, uint64_t a2)
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
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 4 * v3);
        v13 = (v11 + 4 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = v14 + 24 * v3;
        v16 = (v14 + 24 * v6);
        if (24 * v3 < (24 * v6) || v15 >= v16 + 24 || v3 != v6)
        {
          v9 = *v16;
          *(v15 + 16) = *(v16 + 2);
          *v15 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1B0B90958(int64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = &v59 - v5;
  v6 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v59 - v10;
  v12 = a2 + 64;
  v13 = -1 << *(a2 + 32);
  v14 = (a1 + 1) & ~v13;
  if ((*(a2 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = sub_1B0E460C8();
    v65 = a2;
    v70 = v6;
    v64 = a2 + 64;
    v63 = v8;
    v62 = v11;
    v66 = v15;
    v69 = (v16 + 1) & v15;
    do
    {
      v17 = *(*(a2 + 48) + 8 * v14);
      sub_1B0E46C28();
      v18 = *(*v17 + 96);
      swift_beginAccess();
      v72 = v17;
      sub_1B03906B8(v17 + v18, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B03906B8(v11, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v67 = v14;
          v68 = a1;
          v71 = *v8;
          v21 = *(v8 + 2);
          v22 = *(v8 + 2);
          MEMORY[0x1B2728D70](3);
          MEMORY[0x1B2728D70](v21 | (v21 << 32));
          v23 = 1 << *(v22 + 32);
          if (v23 < 64)
          {
            v24 = ~(-1 << v23);
          }

          else
          {
            v24 = -1;
          }

          v25 = v24 & *(v22 + 64);
          v26 = (v23 + 63) >> 6;

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v27 = 0;
          v28 = 0;
          if (v25)
          {
            while (1)
            {
              v29 = v28;
LABEL_17:
              v30 = (*(v22 + 56) + 16 * (__clz(__rbit64(v25)) | (v29 << 6)));
              v31 = *v30;
              v32 = v30[1];
              sub_1B03B2000(*v30, v32);
              if (v32 >> 60 == 15)
              {
                break;
              }

              v25 &= v25 - 1;
              v75 = v80;
              v76 = v81;
              v77 = v82;
              v74 = v79;
              v73 = v78;
              sub_1B0E46C88();
              sub_1B0E42F48();
              sub_1B0391D50(v31, v32);
              v27 ^= sub_1B0E46CB8();
              v28 = v29;
              if (!v25)
              {
                goto LABEL_14;
              }
            }
          }

          else
          {
            while (1)
            {
LABEL_14:
              v29 = v28 + 1;
              if (__OFADD__(v28, 1))
              {
                goto LABEL_49;
              }

              if (v29 >= v26)
              {
                break;
              }

              v25 = *(v22 + 64 + 8 * v29);
              ++v28;
              if (v25)
              {
                goto LABEL_17;
              }
            }
          }

          MEMORY[0x1B2728D70](v27);

          a2 = v65;
          a1 = v68;
          v12 = v64;
          v8 = v63;
          v11 = v62;
          v14 = v67;
          v15 = v66;
        }

        else
        {
          MEMORY[0x1B2728D70](1);
        }
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          v67 = v14;
          v68 = a1;
          v61 = *v8;
          v33 = *(v8 + 2);
          v34 = *(v8 + 2);
          MEMORY[0x1B2728D70](2);
          MEMORY[0x1B2728D70](v33 | (v33 << 32));
          v35 = v34 + 64;
          v36 = 1 << *(v34 + 32);
          if (v36 < 64)
          {
            v37 = ~(-1 << v36);
          }

          else
          {
            v37 = -1;
          }

          v38 = v37 & *(v34 + 64);
          v39 = (v36 + 63) >> 6;

          v71 = v34;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v40 = 0;
          for (i = 0; v38; v40 ^= sub_1B0E46CB8())
          {
            v42 = i;
LABEL_29:
            v43 = __clz(__rbit64(v38));
            v38 &= v38 - 1;
            v44 = (*(v71 + 56) + 24 * (v43 | (v42 << 6)));
            v45 = *v44;
            v46 = *(v44 + 1);
            v47 = *(v44 + 2);
            sub_1B03B2000(v46, v47);
            v75 = v80;
            v76 = v81;
            v77 = v82;
            v74 = v79;
            v73 = v78;
            sub_1B0E46C88();
            MEMORY[0x1B2728D70](v45);
            sub_1B03B2000(v46, v47);
            sub_1B0E42F48();
            sub_1B0391D50(v46, v47);
            sub_1B0391D50(v46, v47);
          }

          while (1)
          {
            v42 = i + 1;
            if (__OFADD__(i, 1))
            {
              break;
            }

            if (v42 >= v39)
            {

              MEMORY[0x1B2728D70](v40);

              a2 = v65;
              a1 = v68;
              v12 = v64;
              v8 = v63;
              v11 = v62;
              v14 = v67;
              goto LABEL_34;
            }

            v38 = *(v35 + 8 * v42);
            ++i;
            if (v38)
            {
              i = v42;
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          return;
        }

        v20 = v60;
        sub_1B074BA2C(v8, v60);
        MEMORY[0x1B2728D70](0);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_34:
        v15 = v66;
      }

      sub_1B0390514(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
      v48 = sub_1B0E46CB8();

      v49 = v48 & v15;
      if (a1 >= v69)
      {
        if (v49 < v69)
        {
          goto LABEL_4;
        }
      }

      else if (v49 >= v69)
      {
        goto LABEL_40;
      }

      if (a1 >= v49)
      {
LABEL_40:
        v50 = *(a2 + 48);
        v51 = (v50 + 8 * a1);
        v52 = (v50 + 8 * v14);
        if (a1 != v14 || v51 >= v52 + 1)
        {
          *v51 = *v52;
        }

        v53 = *(a2 + 56);
        v54 = (v53 + 8 * a1);
        v55 = (v53 + 8 * v14);
        if (a1 != v14 || v54 >= v55 + 1)
        {
          *v54 = *v55;
          a1 = v14;
        }
      }

LABEL_4:
      v14 = (v14 + 1) & v15;
    }

    while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v56 = *(a2 + 16);
  v57 = __OFSUB__(v56, 1);
  v58 = v56 - 1;
  if (v57)
  {
    goto LABEL_50;
  }

  *(a2 + 16) = v58;
  ++*(a2 + 36);
}