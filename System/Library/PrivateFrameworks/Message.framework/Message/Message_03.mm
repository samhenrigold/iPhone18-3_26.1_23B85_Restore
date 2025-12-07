uint64_t sub_1B03C3A78()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_1B03C3AE8()
{

  return swift_deallocObject();
}

uint64_t sub_1B03C3B20()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 80));

  return swift_deallocObject();
}

uint64_t type metadata accessor for SearchMailbox(uint64_t a1)
{
  result = qword_1EB6DDEF0;
  if (!qword_1EB6DDEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PendingPersistenceUpdates(uint64_t a1)
{
  result = qword_1EB6DD540;
  if (!qword_1EB6DD540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B03C3D38(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *a1;
    if (v4 >= 6)
    {
      return v4 - 5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B03C3DEC@<X0>(_BYTE *a1@<X8>)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - v2;
  v4 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = sub_1B0E441D8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03C41C0(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1B0398EFC(v13, &unk_1EB6E5A90, &unk_1B0EDC020);
    v18 = 1;
    v19 = v24;
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v7, v17, v14);
    swift_storeEnumTagMultiPayload();
    sub_1B038CBB4(v7, v10, type metadata accessor for ConnectionStatus.Error.Details);
    (*(v5 + 56))(v10, 0, 1, v4);
    v20 = sub_1B0E43108();
    (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
    v19 = v24;
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(0, v10, v3, v24);
    (*(v15 + 8))(v17, v14);
    v18 = 0;
  }

  v21 = type metadata accessor for ConnectionStatus.Error(0);
  return (*(*(v21 - 8) + 56))(v19, v18, 1, v21);
}

uint64_t sub_1B03C41C0@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v87 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v88 = &v85 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v92 = &v85 - v7;
  v8 = sub_1B0E43DF8();
  v9 = *(v8 - 8);
  v98 = v8;
  v99 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v93 = &v85 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v95 = &v85 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v94 = &v85 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v100 = &v85 - v18;
  v19 = type metadata accessor for ConnectionState(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v85 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v85 - v27;
  v29 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v101 = *(v1 + v29);
  v30 = v101;
  v90 = v29;
  v91 = v1;
  if (v101 >> 62)
  {
    v84 = sub_1B0E46138();
    v30 = v101;
    v31 = v84;
  }

  else
  {
    v31 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = MEMORY[0x1E69E7CC0];
  v96 = v28;
  v97 = v19;
  if (v31)
  {
    v102 = MEMORY[0x1E69E7CC0];
    v33 = v30;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = sub_1B03C4E48(0, v31 & ~(v31 >> 63), 0);
    if (v31 < 0)
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v35 = 0;
    v32 = v102;
    v36 = v33 & 0xC000000000000001;
    v37 = v33;
    do
    {
      if (v36)
      {
        v38 = MEMORY[0x1B2728410](v35, v37);
      }

      else
      {
        v38 = *(v37 + 8 * v35 + 32);
      }

      (*(*v38 + 304))();

      v102 = v32;
      v40 = *(v32 + 16);
      v39 = *(v32 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1B03C4E48((v39 > 1), v40 + 1, 1);
        v32 = v102;
      }

      ++v35;
      *(v32 + 16) = v40 + 1;
      sub_1B038CBB4(v25, v32 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v40, type metadata accessor for ConnectionState);
      v37 = v101;
    }

    while (v31 != v35);

    v28 = v96;
  }

  v41 = *(v32 + 16);
  v42 = v98;
  if (v41)
  {
    v43 = v32 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v44 = *(v20 + 72);
    v45 = (v99 + 32);
    v46 = MEMORY[0x1E69E7CC0];
    v101 = v44;
    do
    {
      sub_1B03C623C(v43, v28, type metadata accessor for ConnectionState);
      sub_1B038CBB4(v28, v22, type metadata accessor for ConnectionState);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1B038C824(v22, type metadata accessor for ConnectionState);
      }

      else
      {
        v47 = *v45;
        v48 = v95;
        (*v45)(v95, v22, v42);
        v49 = v46;
        v50 = v94;
        v47(v94, v48, v42);
        v51 = v50;
        v46 = v49;
        v47(v100, v51, v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1B03C5068(0, v49[2] + 1, 1, v49);
        }

        v53 = v46[2];
        v52 = v46[3];
        if (v53 >= v52 >> 1)
        {
          v46 = sub_1B03C5068((v52 > 1), v53 + 1, 1, v46);
        }

        v46[2] = v53 + 1;
        v42 = v98;
        v47(v46 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v53, v100, v98);
        v28 = v96;
        v44 = v101;
      }

      v43 += v44;
      --v41;
    }

    while (v41);
  }

  else
  {

    v46 = MEMORY[0x1E69E7CC0];
  }

  v54 = v46[2];
  v55 = *(v91 + v90);
  v56 = v99;
  v57 = v93;
  if (!(v55 >> 62))
  {
    result = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54 == result)
    {
      goto LABEL_27;
    }

LABEL_35:
    v75 = sub_1B0E441D8();
    (*(*(v75 - 8) + 56))(v89, 1, 1, v75);
  }

  result = sub_1B0E46138();
  if (v54 != result)
  {
    goto LABEL_35;
  }

LABEL_27:
  v58 = v46[2];
  v100 = (v56 + 16);
  v59 = (v56 + 88);
  LODWORD(v101) = *MEMORY[0x1E6977C18];
  v60 = (v56 + 8);
  if (v58)
  {
    v61 = 0;
    v62 = v46 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v63 = *(v56 + 72);
    v64 = *(v56 + 16);
    v65 = v98;
    while (1)
    {
      v64(v57, v62, v65);
      v66 = (*v59)(v57, v65);
      if (v66 == v101)
      {
        break;
      }

      (*v60)(v57, v65);
      v67 = sub_1B0E441D8();
      v68 = v92;
      (*(*(v67 - 8) + 56))(v92, 1, 1, v67);
      v69 = v68;
      v57 = v93;
      result = sub_1B0398EFC(v69, &unk_1EB6E5A90, &unk_1B0EDC020);
      ++v61;
      v62 += v63;
      if (v58 == v61)
      {
        v61 = v58;
        v56 = v99;
        goto LABEL_34;
      }
    }

    v70 = v99;
    (*(v99 + 96))(v57, v65);
    v71 = sub_1B0E441D8();
    v72 = *(v71 - 8);
    v73 = v92;
    (*(v72 + 32))(v92, v57, v71);
    (*(v72 + 56))(v73, 0, 1, v71);
    v56 = v70;
    result = sub_1B0398EFC(v73, &unk_1EB6E5A90, &unk_1B0EDC020);
  }

  else
  {
    v61 = 0;
    v65 = v98;
  }

LABEL_34:
  v74 = v46[2];
  if (v61 == v74)
  {
    goto LABEL_35;
  }

  if (v61 >= v74)
  {
    goto LABEL_47;
  }

  v76 = v86;
  (*(v56 + 16))(v86, v46 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v61, v65);
  v77 = (*(v56 + 88))(v76, v65);
  if (v77 == v101)
  {
    (*(v56 + 96))(v76, v65);
    v78 = sub_1B0E441D8();
    v79 = *(v78 - 8);
    v80 = v88;
    (*(v79 + 32))(v88, v76, v78);
    (*(v79 + 56))(v80, 0, 1, v78);
  }

  else
  {
    (*v60)(v76, v65);
    v78 = sub_1B0E441D8();
    v80 = v88;
    (*(*(v78 - 8) + 56))(v88, 1, 1, v78);
  }

  v81 = v87;
  sub_1B03B5C80(v80, v87, &unk_1EB6E5A90, &unk_1B0EDC020);
  sub_1B0E441D8();
  v82 = *(v78 - 8);
  result = (*(v82 + 48))(v81, 1, v78);
  if (result != 1)
  {
    v83 = v89;
    (*(v82 + 32))(v89, v81, v78);
    sub_1B0398EFC(v80, &unk_1EB6E5A90, &unk_1B0EDC020);
    (*(v82 + 56))(v83, 0, 1, v78);
  }

LABEL_48:
  __break(1u);
  return result;
}

void *sub_1B03C4C6C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_1B03C4E48(void *a1, int64_t a2, char a3)
{
  result = sub_1B03C4C6C(a1, a2, a3, *v3, &qword_1EB6E5B60, &qword_1B0EDC5F8, type metadata accessor for ConnectionState);
  *v3 = result;
  return result;
}

void *sub_1B03C4E8C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

_BYTE *sub_1B03C50A4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *result = a2 + 5;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void StateWithTasks.makeActivity(makeStatus:accountError:)(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15[-v10 - 8];
  if (*(v4 + 192))
  {
    v12 = *(v4 + 168);
    memcpy(v15, v4, sizeof(v15));
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v13 = sub_1B03C5290();
    sub_1B03B5C80(a3, v11, &qword_1EB6E35A0, &qword_1B0E99850);
    sub_1B03C5604(v12, v13, a1, a2, v11, a4);
  }

  else
  {
    sub_1B03B5C80(a3, v11, &qword_1EB6E35A0, &qword_1B0E99850);
    Activity.init(mailboxesWithPendingWork:accountError:)(MEMORY[0x1E69E7CD0], v11, a4);
  }
}

uint64_t sub_1B03C5290()
{
  if (*(v0 + 192))
  {
    v1 = *(v0 + 168);
    v2 = *(v0 + 176);
    v3 = *(v0 + 184);
    v4 = *(v0 + 208);
    v5 = *(v0 + 120);
    v31 = v5;
    if (v5)
    {
      v6 = *(v0 + 24);
      v7 = *(v0 + 25);
      v8 = *(v0 + 32);
      v23 = *(v0 + 40);
      v9 = *(v0 + 56);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B9A2C(v1, v2, v3, 1);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B5C80(&v31, v24, &qword_1EB6E4870, &qword_1B0EC6000);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v10 = sub_1B0397D14();
      v11 = v10;
      if (v8 == 2 || v8 == 3)
      {

        sub_1B0397D14();

        v12 = 0;
        LOBYTE(v6) = 1;
LABEL_6:
        v13 = *(v0 + 17);
        v14 = swift_allocObject();
        memcpy((v14 + 16), v0, 0x108uLL);
        sub_1B03AD0B0(v0, v24);
        v15 = sub_1B03B9A74();
        *&v26 = v1;
        *(&v26 + 1) = v5;
        LOBYTE(v27) = v13;
        *(&v27 + 1) = v4;
        LOBYTE(v28) = v6 & 1;
        BYTE1(v28) = v12;
        *(&v28 + 1) = sub_1B0B389B8;
        *&v29 = v14;
        *(&v29 + 1) = 7;
        v30 = v15;
        v25 = v15;
        v24[2] = v28;
        v24[3] = v29;
        v24[0] = v26;
        v24[1] = v27;
        v16 = sub_1B03B9B68();
        sub_1B03BB608(&v26);
        return v16;
      }

      v18 = sub_1B0BAE1A4(v10);
      if (v7)
      {
        goto LABEL_16;
      }

      if (v8 == 1)
      {
        if (!v6)
        {
LABEL_16:
          LOBYTE(v6) = v18 ^ 1;
LABEL_17:
          sub_1B0397E04(&unk_1F2710548, v9);
          sub_1B0BAE1A4(v11);
          v19 = sub_1B039109C(v9);

          if (v19 & 1) == 0 && (v7)
          {
            sub_1B0BAE1A4(v11);
          }

          v20 = sub_1B0397D14();
          sub_1B0BAE1A4(v20);
          sub_1B0397E04(&unk_1F2710548, v9);
          sub_1B0BAE1A4(v20);
          v21 = sub_1B039109C(v9);

          if (v21)
          {

            v12 = 0;
          }

          else if (v7)
          {
            v22 = sub_1B0BAE1A4(v20);

            v12 = v22 & 1;
          }

          else
          {

            v12 = 1;
          }

          if (v23 >= 2)
          {
            if (v23 == 2)
            {
              v12 *= 2;
            }
          }

          else
          {
            v12 = 0;
          }

          goto LABEL_6;
        }

        if (v6 == 1)
        {
          goto LABEL_17;
        }
      }

      else if (v8 || (v6 - 1) >= 2)
      {
        goto LABEL_16;
      }

      LOBYTE(v6) = 0;
      goto LABEL_17;
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1B03C5568()
{

  if (*(v0 + 160))
  {
  }

  sub_1B03BB638(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208));

  return swift_deallocObject();
}

void sub_1B03C5604(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v87 = a5;
  v88 = a4;
  v86 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v85 = &v81 - v10;
  v11 = type metadata accessor for ConnectionStatus(0);
  v93 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v92 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v81 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB6E3DE0, &unk_1B0EC0F80);
  v89 = *(v15 - 8);
  v90 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v81 - v19;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = a1 + 32;
    v83 = v20 - 1;
    v23 = MEMORY[0x1E69E7CC0];
    v84 = a1 + 32;
    do
    {
      v24 = (v22 + 176 * v21);
      v25 = v21;
      while (1)
      {
        if (v25 >= *(a1 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v26 = v24[9];
        v104 = v24[8];
        v105 = v26;
        v106 = v24[10];
        v27 = v24[5];
        v100 = v24[4];
        v101 = v27;
        v28 = v24[7];
        v102 = v24[6];
        v103 = v28;
        v29 = v24[1];
        v96 = *v24;
        v97 = v29;
        v30 = v24[3];
        v98 = v24[2];
        v99 = v30;
        v21 = v25 + 1;
        if ((sub_1B03B5DDC(v29, DWORD2(v29), a2) & 1) != 0 || v102)
        {
          break;
        }

        v24 += 11;
        ++v25;
        if (v20 == v21)
        {
          goto LABEL_16;
        }
      }

      sub_1B03A35B8(&v96, v95);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = v23;
      v82 = a3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B0B09D24(0, *(v23 + 16) + 1, 1);
        v23 = v107;
      }

      v33 = *(v23 + 16);
      v32 = *(v23 + 24);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        sub_1B0B09D24((v32 > 1), v33 + 1, 1);
        v34 = v33 + 1;
        v23 = v107;
      }

      *(v23 + 16) = v34;
      v35 = (v23 + 176 * v33);
      v36 = v96;
      v37 = v98;
      v35[3] = v97;
      v35[4] = v37;
      v35[2] = v36;
      v38 = v99;
      v39 = v100;
      v40 = v102;
      v35[7] = v101;
      v35[8] = v40;
      v35[5] = v38;
      v35[6] = v39;
      v41 = v103;
      v42 = v104;
      v43 = v106;
      v35[11] = v105;
      v35[12] = v43;
      v35[9] = v41;
      v35[10] = v42;
      a3 = v82;
      v22 = v84;
    }

    while (v83 != v25);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:

  v45 = a3(v44);
  v46 = *(v23 + 16);
  if (v46)
  {
    v47 = 0;
    v48 = (v23 + 32);
    v49 = MEMORY[0x1E69E7CC0];
    while (v47 < *(v23 + 16))
    {
      v50 = *v48;
      v51 = v48[2];
      v97 = v48[1];
      v98 = v51;
      v52 = v48[3];
      v53 = v48[4];
      v54 = v48[6];
      v101 = v48[5];
      v102 = v54;
      v99 = v52;
      v100 = v53;
      v55 = v48[7];
      v56 = v48[8];
      v57 = v48[10];
      v105 = v48[9];
      v106 = v57;
      v103 = v55;
      v104 = v56;
      v96 = v50;
      if (*(v45 + 16))
      {
        v58 = sub_1B03AB888(v97, DWORD2(v97));
        if (v59)
        {
          v60 = v92;
          sub_1B041C8AC(*(v45 + 56) + *(v93 + 72) * v58, v92, type metadata accessor for ConnectionStatus);
          v61 = v60;
          v62 = v91;
          sub_1B041CE94(v61, v91, type metadata accessor for ConnectionStatus);
          v63 = *(v90 + 48);
          v64 = v105;
          v17[8] = v104;
          v17[9] = v64;
          v17[10] = v106;
          v65 = v101;
          v17[4] = v100;
          v17[5] = v65;
          v66 = v103;
          v17[6] = v102;
          v17[7] = v66;
          v67 = v97;
          *v17 = v96;
          v17[1] = v67;
          v68 = v99;
          v17[2] = v98;
          v17[3] = v68;
          sub_1B041CE94(v62, v17 + v63, type metadata accessor for ConnectionStatus);
          sub_1B0A8F7A4(v17, v94);
          sub_1B03A35B8(&v96, v95);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_1B0AFF0C4(0, v49[2] + 1, 1, v49);
          }

          v70 = v49[2];
          v69 = v49[3];
          if (v70 >= v69 >> 1)
          {
            v49 = sub_1B0AFF0C4((v69 > 1), v70 + 1, 1, v49);
          }

          v49[2] = v70 + 1;
          sub_1B0A8F7A4(v94, v49 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v70);
        }
      }

      ++v47;
      v48 += 11;
      if (v46 == v47)
      {
        goto LABEL_28;
      }
    }

LABEL_34:
    __break(1u);
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
LABEL_28:

    v71 = *(v23 + 16);
    v72 = sub_1B03B8BD8();
    v95[0] = MEMORY[0x1B2727570](v71, &type metadata for OpaqueMailboxID, v72);
    v73 = *(v23 + 16);
    if (!v73)
    {
LABEL_32:

      v78 = v95[0];
      v79 = v87;
      v80 = v85;
      sub_1B03B5C80(v87, v85, &qword_1EB6E35A0, &qword_1B0E99850);
      sub_1B03C7518(v49, v78, v80, v86);
      sub_1B03DD8D4(v79);
      return;
    }

    v74 = 0;
    v75 = (v23 + 40);
    while (v74 < *(v23 + 16))
    {
      ++v74;
      v77 = *(v75 - 1);
      v76 = *v75;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B019E4(&v96, v77, v76);

      v75 += 22;
      if (v73 == v74)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
}

unint64_t sub_1B03C5C30(uint64_t a1)
{
  v2 = sub_1B0E44468();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1B0E44488();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v10 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v13[0] = *(a1 + v10);
    v13[1] = sub_1B03C5FA4;
    v13[2] = 0;
    v13[3] = sub_1B03C71B0;
    v13[4] = 0;
    v13[5] = sub_1B03C7214;
    v13[6] = 0;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = sub_1B03C62A4(v13);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B03C5DCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A60, &qword_1B0EDBF30);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A68, &qword_1B0EDBF38);
    v7 = sub_1B0E466A8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1B03B5C80(v9, v5, &qword_1EB6E5A60, &qword_1B0EDBF30);
      v11 = *v5;
      v12 = *(v5 + 2);
      result = sub_1B03AB888(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v7[6] + 16 * result;
      *v16 = v11;
      *(v16 + 8) = v12;
      v17 = v7[7];
      v18 = type metadata accessor for ConnectionStatus(0);
      result = sub_1B03C7308(&v5[v8], v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

uint64_t sub_1B03C5FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ConnectionState(0);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**a1 + 304))(v5);
  return sub_1B03C6AB4(v7, a2);
}

uint64_t sub_1B03C60A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

Swift::Void __swiftcall RestartableTimer.stop()()
{
  v1 = sub_1B0E44468();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 32);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1B0E44488();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if ((*(v0 + 24) & 1) == 0)
    {
      swift_getObjectType();
      sub_1B0E45AB8();
      *(v0 + 24) = 1;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B03C623C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B03C62A4(unint64_t *a1)
{
  v68 = type metadata accessor for ConnectionStatus(0);
  v2 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68 - 8);
  v58 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v70 = &v55 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AC0, &qword_1B0EDC3A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v73 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v55 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AC8, &qword_1B0EDC3B0);
  v12 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v62 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v72 = &v55 - v21;
  v59 = sub_1B03C5DCC(MEMORY[0x1E69E7CC0]);
  v23 = *a1;
  v22 = a1[1];
  v24 = a1[2];
  v74 = a1[3];
  v75 = v22;
  v78 = a1[4];
  v79 = v24;
  v81[0] = v23;
  if (v23 >> 62)
  {
    goto LABEL_39;
  }

  v76 = v23 & 0xFFFFFFFFFFFFFF8;
  v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v26 = a1[6];
  v61 = a1[5];
  v60 = v26;
  sub_1B03B5C80(v81, &v80, &qword_1EB6E5AD0, &qword_1B0EDC3B8);
  v27 = v23;
  v77 = v23 & 0xC000000000000001;
  v65 = (v12 + 48);
  v66 = (v12 + 56);
  v64 = (v2 + 56);
  v57 = v2;
  v63 = (v2 + 48);

  v28 = 0;
  a1 = &qword_1EB6E5AC8;
  v2 = &qword_1B0EDC3B0;
  while (1)
  {
    while (1)
    {
      if (v28 != v25)
      {
        do
        {
          if (v77)
          {
            v31 = MEMORY[0x1B2728410](v28, v27);
            v23 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_37;
            }
          }

          else
          {
            if ((v28 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              v76 = v23 & 0xFFFFFFFFFFFFFF8;
              v25 = sub_1B0E46138();
              goto LABEL_3;
            }

            if (v28 >= *(v76 + 16))
            {
              goto LABEL_38;
            }

            v31 = *(v27 + 8 * v28 + 32);

            v23 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_37;
            }
          }

          v80 = v31;
          v75(&v80);

          sub_1B03C60A4(v16, v19, &qword_1EB6E5AC8, &qword_1B0EDC3B0);
          v12 = v78;
          if (v74(v19))
          {
            sub_1B03C60A4(v19, v69, &qword_1EB6E5AC8, &qword_1B0EDC3B0);
            v30 = 0;
            v28 = v23;
            goto LABEL_19;
          }

          sub_1B0398EFC(v19, &qword_1EB6E5AC8, &qword_1B0EDC3B0);
          ++v28;
        }

        while (v23 != v25);
      }

      v30 = 1;
      v28 = v25;
LABEL_19:
      v32 = v67;
      v33 = 1;
      v34 = v69;
      (*v66)(v69, v30, 1, v67);
      v35 = v34;
      v36 = v73;
      sub_1B03C60A4(v35, v73, &qword_1EB6E5AC0, &qword_1B0EDC3A8);
      if ((*v65)(v36, 1, v32) != 1)
      {
        v37 = v62;
        sub_1B03C60A4(v73, v62, &qword_1EB6E5AC8, &qword_1B0EDC3B0);
        v61(v37);
        sub_1B0398EFC(v37, &qword_1EB6E5AC8, &qword_1B0EDC3B0);
        v33 = 0;
      }

      v38 = v72;
      v39 = v33;
      v12 = v68;
      (*v64)(v72, v39, 1, v68);
      if ((*v63)(v38, 1, v12) == 1)
      {
        sub_1B0398EFC(v81, &qword_1EB6E5AD0, &qword_1B0EDC3B8);

        return v59;
      }

      v29 = v71;
      sub_1B03C7308(v38, v71);
      v23 = v70;
      sub_1B03903A8(v29, v70, type metadata accessor for ConnectionStatus);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 3) >= 2)
      {
        break;
      }

LABEL_5:
      sub_1B03C74B8(v29, type metadata accessor for ConnectionStatus);
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_1B03C74B8(v71, type metadata accessor for ConnectionStatus);
      v29 = v70;
      goto LABEL_5;
    }

    v41 = *(v70 + 8);
    v23 = *v70;
    sub_1B03903A8(v71, v58, type metadata accessor for ConnectionStatus);
    v42 = v59;
    LODWORD(v56) = swift_isUniquelyReferenced_nonNull_native();
    v80 = v42;
    v44 = sub_1B03AB888(v23, v41);
    v45 = *(v42 + 16);
    v46 = (v43 & 1) == 0;
    v47 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
      break;
    }

    if (*(v42 + 24) >= v47)
    {
      if (v56)
      {
        if ((v43 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v56 = v44;
        LODWORD(v59) = v43;
        sub_1B0C4B640();
        v44 = v56;
        if ((v59 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

LABEL_31:
      v12 = v44;

      v59 = v80;
      sub_1B0C498E8(v58, v80[7] + *(v57 + 9) * v12);
      sub_1B03C74B8(v71, type metadata accessor for ConnectionStatus);
    }

    else
    {
      LODWORD(v59) = v43;
      sub_1B0C4AEE0(v47, v56);
      v48 = sub_1B03AB888(v23, v41);
      if ((v59 & 1) != (v49 & 1))
      {
        goto LABEL_42;
      }

      v44 = v48;
      if (v59)
      {
        goto LABEL_31;
      }

LABEL_33:
      v12 = v80;
      v80[(v44 >> 6) + 8] |= 1 << v44;
      v50 = *(v12 + 48) + 16 * v44;
      *v50 = v23;
      *(v50 + 8) = v41;
      sub_1B03C7308(v58, *(v12 + 56) + *(v57 + 9) * v44);
      sub_1B03C74B8(v71, type metadata accessor for ConnectionStatus);
      v51 = *(v12 + 16);
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_41;
      }

      v59 = v12;
      *(v12 + 16) = v53;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

uint64_t sub_1B03C6AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = &v43 - v6;
  v7 = sub_1B0E441D8();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B0E43DF8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for ConnectionStatus(0);
  v19 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  sub_1B03C623C(a1, v18, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B038C824(v48, type metadata accessor for ConnectionState);
        v23 = v50;
        swift_storeEnumTagMultiPayload();
        sub_1B038C824(v18, type metadata accessor for ConnectionState);
LABEL_17:
        v25 = v49;
LABEL_18:
        sub_1B038CBB4(v21, v25, type metadata accessor for ConnectionStatus);
        v24 = 0;
        return (*(v19 + 56))(v25, v24, 1, v23);
      }

      memcpy(v51, v18, 0x162uLL);
      AuthenticatedState.mailboxSelection.getter();
      v38 = v37;
      v40 = v39;
      sub_1B0BE278C(v51);
      sub_1B038C824(v48, type metadata accessor for ConnectionState);
      if (BYTE4(v40))
      {
        v25 = v49;
        if (BYTE4(v40) == 1)
        {
          *v21 = v38;
          *(v21 + 2) = v40;
        }

        v23 = v50;
        swift_storeEnumTagMultiPayload();
        goto LABEL_18;
      }

      *v21 = v38;
      *(v21 + 2) = v40;
      v23 = v50;
    }

    else
    {
      v26 = v10;
      (*(v10 + 32))(v15, v18, v9);
      (*(v10 + 16))(v12, v15, v9);
      if ((*(v10 + 88))(v12, v9) != *MEMORY[0x1E6977C18])
      {
        sub_1B038C824(v48, type metadata accessor for ConnectionState);
        v41 = *(v10 + 8);
        v41(v15, v9);
        v23 = v50;
        swift_storeEnumTagMultiPayload();
        v41(v12, v9);
        goto LABEL_17;
      }

      (*(v10 + 96))(v12, v9);
      v27 = v44;
      v28 = v47;
      v29 = v12;
      v30 = v45;
      (*(v44 + 32))(v47, v29, v45);
      v31 = v43;
      v32 = v28;
      v33 = v30;
      (*(v27 + 16))(v43, v32, v30);
      v34 = type metadata accessor for ConnectionStatus.Error.Details(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v34 - 8) + 56))(v31, 0, 1, v34);
      v35 = sub_1B0E43108();
      v36 = v46;
      (*(*(v35 - 8) + 56))(v46, 1, 1, v35);
      ConnectionStatus.Error.init(kind:details:backedOffUntil:)(0, v31, v36, v21);
      sub_1B038C824(v48, type metadata accessor for ConnectionState);
      (*(v27 + 8))(v47, v33);
      (*(v26 + 8))(v15, v9);
      v23 = v50;
    }

    swift_storeEnumTagMultiPayload();
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1B038C824(v48, type metadata accessor for ConnectionState);
    sub_1B038C824(v18, type metadata accessor for ConnectionState);
    v24 = 1;
    v25 = v49;
    v23 = v50;
  }

  else
  {
    v23 = v50;
    sub_1B038C824(v48, type metadata accessor for ConnectionState);
    v24 = 1;
    v25 = v49;
  }

  return (*(v19 + 56))(v25, v24, 1, v23);
}

uint64_t sub_1B03C7214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AC8, &qword_1B0EDC3B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B03B5C80(a1, &v9 - v5, &qword_1EB6E5AC8, &qword_1B0EDC3B0);
  v7 = type metadata accessor for ConnectionStatus(0);
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result != 1)
  {
    return sub_1B03C7308(v6, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03C7308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ConnectionStatus.mailbox.getter()
{
  v1 = type metadata accessor for ConnectionStatus(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03C7450(v0, v3, type metadata accessor for ConnectionStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    return *v3;
  }

  if (EnumCaseMultiPayload - 3 >= 2)
  {
    sub_1B0CEAD60(v3, type metadata accessor for ConnectionStatus);
  }

  return 0;
}

uint64_t sub_1B03C7450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03C74B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03C7518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v89 = a2;
  v67 = a1;
  v6 = _s15MissingMessagesO10IncompleteVMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = _s15MissingMessagesOMa(0);
  MEMORY[0x1EEE9AC00](v74);
  v82 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for MailboxSyncState(0);
  MEMORY[0x1EEE9AC00](v73);
  v87 = (&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v86 = &v65 - v11;
  v12 = type metadata accessor for Activity.MailboxStatus(0);
  v88 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v65 - v15;
  v69 = type metadata accessor for ConnectionStatus(0);
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v65 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1668, &qword_1B0E99858);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v80 = &v65 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB6E3DE0, &unk_1B0EC0F80);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v65 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v65 - v26;
  v66 = a3;
  sub_1B03B5C80(a3, &v65 - v26, &qword_1EB6E35A0, &qword_1B0E99850);
  v81 = a4;
  Activity.init(mailboxesWithPendingWork:accountError:)(v89, v27, a4);
  v28 = *(v67 + 16);
  if (v28)
  {
    v29 = *(v21 + 48);
    v30 = v67 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v77 = *(v22 + 72);
    v78 = (v88 + 56);
    v79 = v29;
    v31 = v28 - 1;
    v72 = v12;
    v33 = v75;
    v32 = v76;
    while (1)
    {
      sub_1B03B5C80(v30, v24, qword_1EB6E3DE0, &unk_1B0EC0F80);
      v34 = v24[9];
      v94 = v24[8];
      v95 = v34;
      v96 = v24[10];
      v35 = v24[5];
      v91[4] = v24[4];
      v91[5] = v35;
      v36 = v24[7];
      v92 = v24[6];
      v93 = v36;
      v37 = v24[1];
      v91[0] = *v24;
      v91[1] = v37;
      v38 = v24[3];
      v91[2] = v24[2];
      v91[3] = v38;
      v88 = *(&v91[0] + 1);
      v89 = *&v91[0];
      sub_1B041CE94(v24 + v79, v33, type metadata accessor for ConnectionStatus);
      if (v92)
      {
        v84 = v31;
        v39 = v92 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        v40 = v39 + *(_s13SelectedStateV7WrappedVMa(0) + 20);
        v41 = v86;
        sub_1B041C8AC(v40, v86, type metadata accessor for MailboxSyncState);
        v42 = v41;
        v43 = v87;
        sub_1B041C8AC(v42, v87, type metadata accessor for MailboxSyncState);
        v45 = v43[19];
        v44 = v43[20];
        v46 = v43[21];
        v47 = (sub_1B0A94670(12, v45) & 1) == 0 || (sub_1B0A94670(12, v44) & 1) != 0 || (sub_1B03BE324(v45, v44) & 1) != 0 && (sub_1B0A94670(12, v46) & 1) != 0;
        sub_1B041C8AC(v87 + *(v73 + 68), v82, _s15MissingMessagesOMa);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v85 = v30;
        v83 = v47;
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v49 = v68;
            sub_1B041CE94(v82, v68, _s15MissingMessagesO10IncompleteVMa);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B03A35B8(v91, v90);

            v50 = sub_1B0B4BE48();
            v52 = v51;
            v54 = v53;
            sub_1B041CE34(v49, _s15MissingMessagesO10IncompleteVMa);
            v55 = (v54 & 1) == 0;
            if (v54)
            {
              v56 = 0;
            }

            else
            {
              v56 = v50;
            }

            if (v55)
            {
              v57 = v52;
            }

            else
            {
              v57 = 0;
            }

            v58 = !v55;
            goto LABEL_25;
          }

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03A35B8(v91, v90);

          sub_1B041CE34(v82, _s15MissingMessagesOMa);
        }

        else
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03A35B8(v91, v90);
        }

        v56 = 0;
        v57 = 0;
        v58 = 1;
LABEL_25:
        v61 = v87;
        v62 = sub_1B041CC20();

        sub_1B03A3614(v91);
        sub_1B041CE34(v86, type metadata accessor for MailboxSyncState);
        v33 = v75;
        sub_1B041CE34(v75, type metadata accessor for ConnectionStatus);
        sub_1B041CE34(v61, type metadata accessor for MailboxSyncState);
        v32 = v76;
        *v76 = v83;
        *(v32 + 8) = v56;
        *(v32 + 16) = v57;
        *(v32 + 24) = v58;
        *(v32 + 25) = v62 & 1;
        v12 = v72;
        swift_storeEnumTagMultiPayload();
        v31 = v84;
        v30 = v85;
        goto LABEL_35;
      }

      sub_1B041CE94(v33, v71, type metadata accessor for ConnectionStatus);
      v59 = swift_getEnumCaseMultiPayload();
      if (v59 <= 1)
      {
        break;
      }

      v60 = v70;
      if (v59 == 2)
      {
        sub_1B041CE94(v71, v70, type metadata accessor for ConnectionStatus.Error);
      }

      else if (v59 != 3)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        goto LABEL_33;
      }

      swift_storeEnumTagMultiPayload();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_34:
      sub_1B041CE94(v60, v32, type metadata accessor for Activity.MailboxStatus);
LABEL_35:
      v63 = v80;
      sub_1B041CE94(v32, v80, type metadata accessor for Activity.MailboxStatus);
      (*v78)(v63, 0, 1, v12);
      Activity.subscript.setter(v63, v89, v88);
      sub_1B03A3614(v91);
      if (!v31)
      {
        goto LABEL_37;
      }

      --v31;
      v30 += v77;
    }

    v60 = v70;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B041CE34(v71, type metadata accessor for ConnectionStatus);
LABEL_33:
    swift_storeEnumTagMultiPayload();
    goto LABEL_34;
  }

LABEL_37:

  return sub_1B03DD8D4(v66);
}

uint64_t MailboxesSelectionUsage.removing<A>(notContainedIn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v14 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = MailboxesSelectionUsage.allConnections.getter(v6);
  v9 = result;
  v10 = *(result + 16);
  if (v10)
  {
    v11 = 0;
    while (v11 < *(v9 + 16))
    {
      v12 = v11 + 1;
      v13 = *(v9 + 32 + 4 * v11);
      result = sub_1B0C0C020(&v13, &v14, a1, a3, a4);
      v11 = v12;
      if (v10 == v12)
      {
        v6 = v14;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return v6;
  }

  return result;
}

char *MailboxesSelectionUsage.allConnections.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = a1 + 40;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = *(v2 - 8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1B0C0C7D0(0, *(v3 + 2) + 1, 1, v3);
    }

    v6 = *(v3 + 2);
    v5 = *(v3 + 3);
    if (v6 >= v5 >> 1)
    {
      v3 = sub_1B0C0C7D0((v5 > 1), v6 + 1, 1, v3);
    }

    *(v3 + 2) = v6 + 1;
    *&v3[4 * v6 + 32] = v4;
    v2 += 40;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1B03C7FA8()
{
  v1 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v8 = *(v0 + v7);
  if (v8 >> 62)
  {
LABEL_19:
    v9 = sub_1B0E46138();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v9)
  {
    v10 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1B2728410](v10, v8);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v10 + 32);

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_15;
        }
      }

      (*(*v11 + 304))();

      sub_1B038CBB4(v6, v3, type metadata accessor for ConnectionState);
      v13 = 1 << swift_getEnumCaseMultiPayload();
      if ((v13 & 0xC) != 0)
      {
        sub_1B038C824(v3, type metadata accessor for ConnectionState);
      }

      else if ((v13 & 0x30) == 0)
      {

        sub_1B038C824(v3, type metadata accessor for ConnectionState);
        return 1;
      }

      ++v10;
    }

    while (v12 != v9);
  }

  return 0;
}

unint64_t sub_1B03C81E4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_1B03C8208()
{
  v0 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v1 = sub_1B0DDAFB4(v0);

  return v1;
}

uint64_t MailboxName.debugDescription.getter(uint64_t a1)
{
  v1 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = sub_1B0DDAFB4(v1);

  return v2;
}

uint64_t sub_1B03C829C(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = result;
  LODWORD(v5) = 0;
  v6 = 0;
  if (result)
  {
    v7 = (a2 + result);
  }

  else
  {
    v7 = 0;
  }

  while (1)
  {
    v18 = v5;
    v19 = v6;
    if (!v6)
    {
      break;
    }

    if ((v5 & 0x80) != 0)
    {
      if (!v4)
      {
        goto LABEL_21;
      }

      v11 = v4;
      if (v4 == v7)
      {
        goto LABEL_21;
      }

LABEL_9:
      v4 = v11 + 1;
      LODWORD(v5) = (*v11 << v6) | ((-255 << v6) - 1) & v5;
      v13 = v6 + 8;
      if ((v6 + 8) >= 0x20u)
      {
        goto LABEL_20;
      }

      if (v4 == v7)
      {
        goto LABEL_18;
      }

      v4 = v11 + 2;
      LODWORD(v5) = (v11[1] << (v6 + 8)) | ((-255 << (v6 + 8)) - 1) & v5;
      v13 = v6 + 16;
      if ((v6 + 16) > 0x1Fu)
      {
        goto LABEL_20;
      }

      if (v4 == v7)
      {
        goto LABEL_18;
      }

      v4 = v11 + 3;
      LODWORD(v5) = (v11[2] << v13) | ((-255 << v13) - 1) & v5;
      v13 = v6 + 24;
      if ((v6 + 24) > 0x1Fu)
      {
        goto LABEL_20;
      }

      if (v4 == v7)
      {
        goto LABEL_18;
      }

      v4 = v11 + 4;
      LODWORD(v5) = (v11[3] << v13) | ((-255 << v13) - 1) & v5;
      v13 = v6 + 32;
      if (v6 < 0xE0u)
      {
LABEL_20:
        v6 = v13;
        goto LABEL_21;
      }

      if (v4 == v7 || (v4 = v11 + 5, LODWORD(v5) = (v11[4] << v6) | ((-255 << v6) - 1) & v5, v13 = v6 + 40, v6 += 40, v6 < 0x20u))
      {
LABEL_18:
        v6 = v13;
        if (!v13)
        {
          return result;
        }
      }

LABEL_21:
      if ((v5 & 0xC0E0) == 0x80C0)
      {
        if ((v5 & 0x1E) != 0)
        {
          v14 = 16;
LABEL_24:
          v18 = v5 >> v14;
          v19 = v6 - v14;
          goto LABEL_25;
        }
      }

      else if ((v5 & 0xC0C0F0) == 0x8080E0)
      {
        if ((v5 & 0x200F) != 0 && (v5 & 0x200F) != 0x200D)
        {
          v14 = 24;
          goto LABEL_24;
        }
      }

      else if ((v5 & 0xC0C0C0F8) == 0x808080F0 && (v5 & 0x3007) != 0 && __rev16(v5 & 0x3007) <= 0x400)
      {
        v14 = 32;
        goto LABEL_24;
      }

      result = sub_1B0E46D58();
      v5 = v5 >> ((8 * result) & 0x38);
      v6 -= 8 * result;
    }

    else
    {
      sub_1B0CB1F34();
      v15 = sub_1B0C14AB0();
      sub_1B0CB1F88(0);
      (v15)(&v16, 0);
LABEL_25:
      LODWORD(v5) = v18;
      v6 = v19;
      v8 = a3[1];
      v16 = *a3;
      v17 = v8;
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      result = sub_1B0E44C58();
      v9 = v17;
      *a3 = v16;
      a3[1] = v9;
    }
  }

  if (v4 && v4 != v7)
  {
    v10 = *v4++;
    v11 = v4;
    v12 = v10;
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    LODWORD(v5) = v5 & 0xFFFFFF00 | v12;
    v6 = 8;
    if (v4 == v7)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  return result;
}

int64_t sub_1B03C86BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
  swift_beginAccess();
  v9 = *(v8 + 17);
  *(v8 + 17) = 0;
  if (v9 != 1)
  {
    return swift_endAccess();
  }

  if (*(v8 + 16))
  {
    swift_endAccess();
    v10 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(v1 + v10, v4, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v11 = sub_1B0E439A8();
    v12 = *(v11 - 8);
    result = (*(v12 + 48))(v4, 1, v11);
    if (result != 1)
    {

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v14 = sub_1B0E43988();
      v15 = sub_1B0E45908();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 68157952;
        *(v16 + 4) = 2;
        *(v16 + 8) = 256;
        *(v16 + 10) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        _os_log_impl(&dword_1B0389000, v14, v15, "[%.*hhx] Did clear wait-until-visible back-off.", v16, 0xBu);
        MEMORY[0x1B272C230](v16, -1, -1);
      }

      else
      {
      }

      return (*(v12 + 8))(v4, v11);
    }

    goto LABEL_22;
  }

  v17 = *(v8 + 8);
  result = static MonotonicTime.now()();
  v18 = __OFSUB__(v17, result);
  v19 = v17 - result;
  if (v17 >= result)
  {
LABEL_12:
    if (!v18)
    {
      goto LABEL_13;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v20 = result - v17;
  if (__OFSUB__(result, v17))
  {
    __break(1u);
    goto LABEL_21;
  }

  v18 = __OFSUB__(0, v20);
  v19 = v17 - result;
  if (__OFSUB__(0, v20))
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  swift_endAccess();
  v21 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(v1 + v21, v7, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v22 = sub_1B0E439A8();
  v23 = *(v22 - 8);
  result = (*(v23 + 48))(v7, 1, v22);
  if (result == 1)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v24 = sub_1B0E43988();
  v25 = sub_1B0E45908();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = v19 / 1000000000.0;
    v27 = swift_slowAlloc();
    *v27 = 68158464;
    *(v27 + 4) = 2;
    *(v27 + 8) = 256;
    *(v27 + 10) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v27 + 11) = 1040;
    *(v27 + 13) = 1;
    *(v27 + 17) = 2048;
    *(v27 + 19) = v26;
    _os_log_impl(&dword_1B0389000, v24, v25, "[%.*hhx] Did clear wait-until-visible back-off. Still backed-off for another %.*f seconds.", v27, 0x1Bu);
    MEMORY[0x1B272C230](v27, -1, -1);
  }

  else
  {
  }

  return (*(v23 + 8))(v7, v22);
}

void sub_1B03C8B98(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RunningTask(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1E69E7CD0];
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
LABEL_3:
    v11 = v9;
    while (v11 < v7)
    {
      v9 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_22;
      }

      sub_1B0450D48(v10 + *(v4 + 72) * v11, v6, type metadata accessor for RunningTask);
      sub_1B0450DB0(v6, v24);
      if (v25 == 1)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
      }

      else if (v25 != 2)
      {
        v12 = *(v6 + 6);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B7ABB4(v24);
        v16 = v12;
        v17 = 0;
        v18 = sub_1B0B7862C;
        v19 = 0;
        v20 = sub_1B0B7DE54;
        v21 = 0;
        v22 = sub_1B0B7DE64;
        v23 = 0;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        while (1)
        {
          sub_1B0B7DBA8();
          if ((v13 & 0x10000000000) != 0)
          {
            break;
          }

          if ((v13 & 0x100000000) != 0)
          {
            goto LABEL_23;
          }

          sub_1B0B01B6C(&v15 + 1, v13);
        }

        sub_1B0450ED8(v6, type metadata accessor for RunningTask);

        v8 = 1;
        if (v9 == v7)
        {
          v14 = v26;
LABEL_17:
          if (!*(v14 + 16))
          {
          }

          return;
        }

        goto LABEL_3;
      }

      sub_1B0450ED8(v6, type metadata accessor for RunningTask);
      ++v11;
      if (v9 == v7)
      {
        v14 = v26;
        if ((v8 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_19:
  }
}

void *sub_1B03C8E00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4760, &qword_1B0EC5E40);
  v3 = sub_1B0E466A8();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 52);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = sub_1B03B8A9C(v5, v4);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v3;
  }

  v12 = v10;
  result = v5;
  v14 = (a1 + 104);
  while (1)
  {
    *(v3 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v15 = (v3[6] + 16 * v12);
    *v15 = result;
    v15[1] = v4;
    v16 = v3[7] + 24 * v12;
    *v16 = v6;
    *(v16 + 4) = v7 & 1;
    *(v16 + 8) = v8;
    *(v16 + 16) = v9 & 1;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v20 = v14 + 40;
    v21 = *(v14 - 4);
    v4 = *(v14 - 3);
    v6 = *(v14 - 4);
    v7 = *(v14 - 12);
    v8 = *(v14 - 1);
    v9 = *v14;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v12 = sub_1B03B8A9C(v21, v4);
    v14 = v20;
    result = v21;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_13IMAP2Behavior4TaskOSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B03C8FC0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = sub_1B03C94F4(a1, a2, a3, a4, a5, a6);
  sub_1B03C9958(&v15);
  v6 = v15;
  v7 = *(v15 + 2);
  if (v7)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1B0452620(0, v7, 0);
    v8 = v14;
    v9 = *(v14 + 16);
    v10 = 32;
    do
    {
      v11 = *&v6[v10];
      v12 = *(v14 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_1B0452620((v12 > 1), v9 + 1, 1);
      }

      *(v14 + 16) = v9 + 1;
      *(v14 + 8 * v9 + 32) = v11;
      v10 += 16;
      ++v9;
      --v7;
    }

    while (v7);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1B03C90C0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a5;
  v53 = a3;
  v54 = a4;
  v51 = a1;
  v57 = type metadata accessor for RunningTask(0);
  v8 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v52 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E51A0, &qword_1B0ECC588);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v44 - v14;
  v64 = MEMORY[0x1E69E7CC0];
  result = sub_1B03C97C0(0, 0, 0);
  v16 = 0;
  v17 = 0;
  v18 = v64;
  v45 = v8;
  v46 = a2;
  v19 = *(a2 + 16);
  v55 = (v8 + 48);
  v56 = (v8 + 56);
  v49 = a6;
  v50 = v19;
  v47 = a6 + 32;
  v20 = v19 == 0;
  if (v19)
  {
    goto LABEL_3;
  }

LABEL_2:
  v21 = 1;
  v17 = v19;
  while (1)
  {
    v23 = v57;
    v24 = v58;
    (*v56)(v58, v21, 1, v57);
    sub_1B03C60A4(v24, v12, &qword_1EB6E51A0, &qword_1B0ECC588);
    if ((*v55)(v12, 1, v23) == 1)
    {
      return v18;
    }

    v25 = v52;
    sub_1B0423C80(v12, v52, type metadata accessor for RunningTask);
    v53(&v60, v25);
    result = sub_1B0390574(v25, type metadata accessor for RunningTask);
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    v59 = v16;
    v27 = v12;
    v28 = v62;
    v29 = v63;
    if (v60)
    {
      v30 = *(v49 + 16);
      if (v48)
      {
        v31 = sub_1B0BA7CA4(v60, v61, v47, v30, (v48 + 16), v48 + 32);
        v33 = v32;

        if ((v33 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v30)
        {
          v31 = 0;
          while (1)
          {
            v34 = (v47 + 16 * v31);
            if ((v34[2] | (v34[2] << 32)) == (v61 | (v61 << 32)))
            {
              v35 = *v34;
              v36 = *(*v34 + 16);
              if (v36 == *(v60 + 16))
              {
                break;
              }
            }

LABEL_14:
            if (++v31 == v30)
            {
              goto LABEL_27;
            }
          }

          if (v36)
          {
            v37 = v35 == v60;
          }

          else
          {
            v37 = 1;
          }

          if (!v37)
          {
            v38 = (v35 + 32);
            v39 = (v60 + 32);
            while (v36)
            {
              if (*v38 != *v39)
              {
                goto LABEL_14;
              }

              ++v38;
              ++v39;
              if (!--v36)
              {
                goto LABEL_25;
              }
            }

            __break(1u);
            break;
          }

LABEL_25:

LABEL_26:
          v40 = 0;
          goto LABEL_29;
        }

LABEL_27:
      }
    }

    v31 = 0;
    v40 = 1;
LABEL_29:
    if (v29)
    {
      v28 = v51;
    }

    v64 = v18;
    v42 = *(v18 + 16);
    v41 = *(v18 + 24);
    if (v42 >= v41 >> 1)
    {
      result = sub_1B03C97C0((v41 > 1), v42 + 1, 1);
      v18 = v64;
    }

    *(v18 + 16) = v42 + 1;
    v43 = v18 + 32 * v42;
    *(v43 + 32) = v59;
    *(v43 + 40) = v31;
    *(v43 + 48) = v40;
    *(v43 + 56) = v28;
    v16 = v26;
    v12 = v27;
    v19 = v50;
    v20 = v17 >= v50;
    if (v17 == v50)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v20)
    {
      goto LABEL_38;
    }

    result = sub_1B0390720(v46 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v17, v58, type metadata accessor for RunningTask);
    if (__OFADD__(v17++, 1))
    {
      goto LABEL_39;
    }

    v21 = 0;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1B03C94F4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_1B03C90C0(a1, a2, a3, a4, a5, a6);
  v8 = *(result + 16);
  if (v8)
  {
    v9 = v8 + 1;
    v10 = 1 - v8;
    v11 = (result + 48);
    v12 = 0.0;
    while (1)
    {
      if (*v11)
      {
        v12 = v12 + 1.0;
        if (!v10)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v13 = *(v11 - 1);
        v14 = __OFSUB__(v9, v13);
        v15 = v9 - v13;
        if (v14)
        {
          goto LABEL_25;
        }

        v12 = v12 + v15;
        if (!v10)
        {
LABEL_8:
          v27 = result;
          v28 = MEMORY[0x1E69E7CC0];
          sub_1B04524FC(0, v8, 0);
          result = v27;
          v16 = v28;
          v17 = (v27 + 56);
          do
          {
            v19 = *(v17 - 3);
            v18 = *(v17 - 2);
            v20 = *v17;
            if (*v17 <= a1)
            {
              v21 = a1 - v20;
              if (__OFSUB__(a1, v20))
              {
                goto LABEL_27;
              }
            }

            else
            {
              if (__OFSUB__(*v17, a1))
              {
                goto LABEL_26;
              }

              v21 = a1 - *v17;
              if (__OFSUB__(0, *v17 - a1))
              {
                goto LABEL_28;
              }
            }

            v22 = 5.0;
            if ((*(v17 - 1) & 1) == 0)
            {
              v14 = __OFSUB__(v9, v18);
              v23 = v9 - v18;
              if (v14)
              {
                goto LABEL_29;
              }

              v22 = v23 * 5.0;
            }

            v25 = *(v28 + 16);
            v24 = *(v28 + 24);
            if (v25 >= v24 >> 1)
            {
              sub_1B04524FC((v24 > 1), v25 + 1, 1);
              result = v27;
            }

            v17 += 4;
            *(v28 + 16) = v25 + 1;
            v26 = v28 + 16 * v25;
            *(v26 + 32) = v19;
            *(v26 + 40) = v21 / 1000000000.0 + v22 / v12;
            --v8;
          }

          while (v8);

          return v16;
        }
      }

      ++v10;
      v11 += 32;
      if (v10 == 1)
      {
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
        return result;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

char *sub_1B03C96BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE8, &qword_1B0EC9BC8);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1B03C97C0(char *a1, int64_t a2, char a3)
{
  result = sub_1B03C96BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B03C97F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Task.Logger(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B03C98AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Task.Logger(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B03C9958(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B03C9BAC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1B0E469A8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
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
    sub_1B0BA83B0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

char *sub_1B03C9AA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4380, &qword_1B0EC50C8);
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

uint64_t sub_1B03C9BC0()
{
  v1 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16[-v5];
  v7 = type metadata accessor for StateWithTasks(0);
  sub_1B0390720(v0 + *(v7 + 28), v6, type metadata accessor for State.Logger);
  v8 = *(*(v0 + 272) + 16);
  v17 = v0 + 264;
  v18 = v6;
  result = sub_1B03C9E58(sub_1B0455540, v16);
  v10 = *(*(v0 + 272) + 16);
  if (v10 < result)
  {
    __break(1u);
  }

  else
  {
    sub_1B03AD844(result, v10, sub_1B043B274, type metadata accessor for RunningTask);
    v11 = *(*(v0 + 272) + 16);
    if (v8 != v11)
    {
      sub_1B0390720(v6, v3, type metadata accessor for State.Logger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v12 = sub_1B0E43988();
      v13 = sub_1B0E458C8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 68158208;
        *(v14 + 4) = 2;
        *(v14 + 8) = 256;
        v15 = v3[*(v1 + 20)];
        sub_1B0390574(v3, type metadata accessor for State.Logger);
        *(v14 + 10) = v15;
        *(v14 + 11) = 2048;
        *(v14 + 13) = v8 - v11;
        _os_log_impl(&dword_1B0389000, v12, v13, "[%.*hhx] Pruned %ld completed tasks.", v14, 0x15u);
        MEMORY[0x1B272C230](v14, -1, -1);
      }

      else
      {
        sub_1B0390574(v3, type metadata accessor for State.Logger);
      }
    }

    sub_1B0390574(v6, type metadata accessor for State.Logger);
    return v8 == v11;
  }

  return result;
}

uint64_t sub_1B03C9E58(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for RunningTask(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = *v2;
  result = sub_1B03CA1BC(a1, a2, *v2, type metadata accessor for RunningTask);
  if (!v3)
  {
    if (v18)
    {
      return *(v16 + 16);
    }

    v36 = v15;
    v37 = a1;
    v33 = v12;
    v34 = v9;
    v38 = a2;
    v32 = v2;
    v40 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v40;
      }

      v35 = v7;
      while (v19 < v20)
      {
        v22 = v16;
        v39 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v39;
        v24 = *(v7 + 72);
        v25 = v36;
        sub_1B0390720(v23 + v24 * v19, v36, type metadata accessor for RunningTask);
        v26 = v37(v25);
        result = sub_1B0390574(v25, type metadata accessor for RunningTask);
        if (v26)
        {
          v7 = v35;
          v16 = v22;
        }

        else
        {
          v27 = v40;
          if (v19 == v40)
          {
            v7 = v35;
            v16 = v22;
          }

          else
          {
            if ((v40 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v28 = *v21;
            if (v40 >= *v21)
            {
              goto LABEL_25;
            }

            v29 = v24 * v40;
            result = sub_1B0390720(v23 + v24 * v40, v33, type metadata accessor for RunningTask);
            if (v19 >= v28)
            {
              goto LABEL_26;
            }

            v30 = v24 * v19;
            sub_1B0390720(v23 + v24 * v19, v34, type metadata accessor for RunningTask);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_1B0B8CA2C(v22);
            }

            v7 = v35;
            v31 = v16 + v39;
            result = sub_1B0450CE0(v34, v16 + v39 + v29, type metadata accessor for RunningTask);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_27;
            }

            result = sub_1B0450CE0(v33, v31 + v30, type metadata accessor for RunningTask);
            *v32 = v16;
            v27 = v40;
          }

          v40 = v27 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v40;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B03CA1BC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

void sub_1B03CA2AC(NSObject *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v67 = a2;
  v66 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a3;
  memcpy(v78, a3, sizeof(v78));
  v70 = v78[32];
  v8 = LOBYTE(v78[3]);
  v9 = BYTE1(v78[3]);
  v10 = v78[4];
  v11 = LOBYTE(v78[5]);
  v12 = v78[6];
  v13 = v78[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = sub_1B0397D14();
  v15 = v14;
  if ((v10 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v64 = v12;
    v17 = sub_1B0BAE1A4(v14);
    v18 = v17;
    v65 = a1;
    if ((v9 & 1) == 0)
    {
      if (v10 == 1)
      {
        if (v8)
        {
          if (v8 == 1)
          {
            v18 = 0;
            v19 = 0;
            v20 = 2;
            goto LABEL_16;
          }

          goto LABEL_61;
        }
      }

      else if (!v10 && v8)
      {
        if (v8 != 1)
        {
          v19 = 0;
          v20 = 0;
          v18 = 1;
          goto LABEL_16;
        }

LABEL_61:
        v19 = 0;
        v18 = 1;
        v20 = 1;
        goto LABEL_16;
      }
    }

    v19 = v17 ^ 1;
    if (v17)
    {
      v20 = 0;
    }

    else
    {
      v20 = 2;
    }

LABEL_16:
    v21 = sub_1B0397E04(&unk_1F2710548, v13) ^ 1 | v19;
    sub_1B0BAE1A4(v15);
    v22 = sub_1B039109C(v13);

    if (v22 & 1) == 0 && (v9)
    {
      sub_1B0BAE1A4(v15);
    }

    if (v11)
    {
      v23 = v21;
    }

    else
    {
      v23 = 1;
    }

    if (v11)
    {
      v24 = v20;
    }

    else
    {
      v24 = 2;
    }

    if (v11 <= 1)
    {
      v25 = v23;
    }

    else
    {
      v25 = v21;
    }

    if (v11 <= 1)
    {
      v26 = v24;
    }

    else
    {
      v26 = v20;
    }

    a1 = v65;
    v28 = v64 < 3989 && v26 != 2;
    v16 = v70;
    if (((v18 | v28) & 1) != 0 || (v25 & 1) == 0 || (v9 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  v16 = v70;
  if ((v9 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_40:
  v29 = *(a4 + 272);
  v30 = *(a4 + 264);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v31 = sub_1B03AC0B0(v30, v29);

  v32 = *(v31 + 16);
  if (!v32)
  {

LABEL_45:

    *(v69 + 32) = MEMORY[0x1E69E7CD0];
    return;
  }

  if (v32 <= a1[2].isa >> 3)
  {
    *&v74 = a1;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03DCB64(v31);

    v33 = v74;
  }

  else
  {

    v33 = sub_1B0455560(v31, a1);
  }

  v34 = v33 + 56;
  v35 = 1 << *(v33 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v33 + 56);
  v38 = (v35 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v39 = 0;
  *&v40 = 68158979;
  v61 = v40;
  v41 = v68;
  v63 = v33;
  while (v37)
  {
LABEL_56:
    v43 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v44 = *(v33 + 48) + ((v39 << 10) | (16 * v43));
    v45 = *v44;
    v46 = *(v44 + 8);
    if ((sub_1B03B5DDC(*v44, v46, v16) & 1) == 0)
    {
      v47 = *(v69 + 184);
      v48 = *(v69 + 216);
      v76 = *(v69 + 200);
      v77[0] = v48;
      *(v77 + 12) = *(v69 + 228);
      v74 = *(v69 + 168);
      v75 = v47;
      LODWORD(v64) = sub_1B0B29590(v45, v46);
      sub_1B03906B8(v67, v41, type metadata accessor for State.Logger);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v49 = v41;
      v50 = sub_1B0E43988();
      v51 = sub_1B0E45908();

      v65 = v50;
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v73 = v62;
        *v52 = v61;
        *(v52 + 4) = 2;
        *(v52 + 8) = 256;
        v53 = *(v68 + *(v66 + 20));
        sub_1B0390514(v68, type metadata accessor for State.Logger);
        *(v52 + 10) = v53;
        *(v52 + 11) = 1040;
        *(v52 + 13) = 2;
        *(v52 + 17) = 512;
        *(v52 + 19) = v64;
        *(v52 + 21) = 2160;
        *(v52 + 23) = 0x786F626C69616DLL;
        *(v52 + 31) = 2085;
        v71 = v45;
        v72 = v46;
        v54 = sub_1B0E44BA8();
        v56 = sub_1B0399D64(v54, v55, &v73);
        v41 = v68;

        *(v52 + 33) = v56;
        v57 = v51;
        v58 = v65;
        _os_log_impl(&dword_1B0389000, v65, v57, "[%.*hhx] [Background] Skipping mailbox {%.*hx} '%{sensitive,mask.mailbox}s' until next sync.", v52, 0x29u);
        v59 = v62;
        __swift_destroy_boxed_opaque_existential_0Tm(v62);
        MEMORY[0x1B272C230](v59, -1, -1);
        v60 = v52;
        v16 = v70;
        MEMORY[0x1B272C230](v60, -1, -1);

        v33 = v63;
      }

      else
      {
        sub_1B0390514(v49, type metadata accessor for State.Logger);

        v33 = v63;
        v41 = v49;
        v16 = v70;
      }
    }
  }

  while (1)
  {
    v42 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v42 >= v38)
    {

      sub_1B0455CE0(v33);
      return;
    }

    v37 = *(v34 + 8 * v42);
    ++v39;
    if (v37)
    {
      v39 = v42;
      goto LABEL_56;
    }
  }

  __break(1u);
}

unint64_t sub_1B03CA88C(uint64_t a1)
{
  v2 = sub_1B03A293C();
  if (*(v2 + 16) <= *(a1 + 16) >> 3)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03CAC4C(v2);

    v3 = a1;
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v3 = sub_1B0BA8B48(v2, a1);

    if (*(v3 + 16))
    {
LABEL_3:
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      return v4 | 0xA000000000000000;
    }
  }

  return 0xF000000000000007;
}

uint64_t sub_1B03CA958()
{

  return swift_deallocObject();
}

void sub_1B03CA990(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = (a1 + 32);
  while (1)
  {
    v5 = *v3++;
    v4 = v5;
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      break;
    }

    if (*(v4 + 24) >> 60 == 3)
    {
      type metadata accessor for UntaggedResponse(0);
      swift_projectBox();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_15;
      }
    }

LABEL_3:
    if (!--v2)
    {
      return;
    }
  }

  if (v6 != 1)
  {
    goto LABEL_3;
  }

  v7 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  if ((*(v7 + 24) & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = (*(v7 + 16) >> 59) & 0x1E | (*(v7 + 16) >> 2) & 1;
  if (v8 != 2 && v8 != 4)
  {
    goto LABEL_3;
  }

LABEL_15:
  v10 = *(v1 + 120);
  v11 = MEMORY[0x1E69E7CD0];
  if (!v10)
  {
    goto LABEL_35;
  }

  v12 = *(v10 + 64);
  v40 = MEMORY[0x1E69E7CD0];
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = 0;
  if (v15)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
    }

    else
    {
      if (v18 < v16)
      {
        v15 = *(v10 + 64 + 8 * v18);
        ++v17;
        if (!v15)
        {
          continue;
        }

LABEL_26:
        v19 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v20 = v19 | (v18 << 6);
        v21 = *(v10 + 48) + 16 * v20;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v10 + 56) + 72 * v20;
        v31[0] = *v24;
        v25 = *(v24 + 16);
        v26 = *(v24 + 32);
        v27 = *(v24 + 48);
        v32 = *(v24 + 64);
        v31[2] = v26;
        v31[3] = v27;
        v31[1] = v25;
        v33 = v22;
        v34 = v23;
        v37 = v26;
        v38 = v27;
        v39 = v32;
        v35 = v31[0];
        v36 = v25;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03BB0B4(v31, v30);
        v28 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
        v29 = *RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
        if (v28)
        {
          if ((v29 & ~v28) == 0)
          {
LABEL_31:
            if ((HIWORD(v31[0]) & v28) != 0)
            {
              sub_1B03B5C80(&v33, v30, &qword_1EB6E4CD8, &qword_1B0EC9BC0);
              sub_1B039E440(v31);
              sub_1B03AB2E0(v30, v22, v23);
              sub_1B0398EFC(&v33, &qword_1EB6E4CD8, &qword_1B0EC9BC0);

              v17 = v18;
              if (!v15)
              {
                continue;
              }

              goto LABEL_25;
            }

LABEL_20:
            sub_1B0398EFC(&v33, &qword_1EB6E4CD8, &qword_1B0EC9BC0);
            v17 = v18;
            if (!v15)
            {
              continue;
            }

LABEL_25:
            v18 = v17;
            goto LABEL_26;
          }
        }

        else if (!v29)
        {
          goto LABEL_20;
        }

        LOWORD(v28) = v29 | v28;
        goto LABEL_31;
      }

      v11 = v40;
LABEL_35:
      sub_1B040013C(v11);
    }

    break;
  }
}

void sub_1B03CAC64(uint64_t a1, void (*a2)(void, __n128))
{
  if (*(*v2 + 16))
  {
    v5 = a1 + 56;
    v6 = 1 << *(a1 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(a1 + 56);
    v9 = (v6 + 63) >> 6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = 0;
    if (v8)
    {
      while (1)
      {
        v11 = v10;
LABEL_10:
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        (a2)(*(*(a1 + 48) + ((v11 << 8) | (4 * v12))));
        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        return;
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_1B03CAD70(uint64_t result, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = 0;
  v15 = a4;
  v7 = result + 32;
  while (1)
  {
LABEL_6:
    v11 = *(v5 + 16);
    if (v6 == v11)
    {

      return v15;
    }

    if (v6 >= v11)
    {
      break;
    }

    v14 = *(v7 + 8 * v6);

    a2(&v13, &v14);

    v12 = v13;

    ++v6;
    if (v12)
    {
      v8 = *(v12 + 16);
      if (v8)
      {
        v9 = 0;
        while (v9 < v8)
        {
          v10 = v9 + 1;
          result = sub_1B0B02C80(&v14, *(v12 + 32 + 4 * v9));
          v8 = *(v12 + 16);
          v9 = v10;
          if (v10 == v8)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_1B03CAE90@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >> 62 == 1 && *((*result & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == 1 && (v2 = *((*result & 0x3FFFFFFFFFFFFFFFLL) + 0x10), ((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 0x14))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v4 = *(v3 + 16);
    v5 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v6 = a2;
      v11 = MEMORY[0x1E69E7CC0];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B0A3C4(0, v4, 0);
      v5 = v11;
      v7 = *(v11 + 16);
      v8 = 32;
      do
      {
        v9 = *(v3 + v8);
        v10 = *(v11 + 24);
        if (v7 >= v10 >> 1)
        {
          sub_1B0B0A3C4((v10 > 1), v7 + 1, 1);
        }

        *(v11 + 16) = v7 + 1;
        *(v11 + 4 * v7 + 32) = v9;
        v8 += 56;
        ++v7;
        --v4;
      }

      while (v4);

      a2 = v6;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v5;
  return result;
}

void sub_1B03CAFC4(uint64_t a1, uint64_t *a2)
{
  v43 = sub_1B0E43828();
  v4 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v46 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1B0E43868();
  v6 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *tracingLog.unsafeMutableAddressor();
  v10 = sub_1B0E45D38();

  if (v10)
  {
    v42 = v4;
    v11 = sub_1B03CB320(a2);
    v12 = v11;
    v44 = v13;
    v14 = *(v11 + 16);
    v15 = v46;
    if (v14)
    {
      v16 = 0;
      v17 = (v11 + 32);
      while (v16 < *(v12 + 16))
      {
        v18 = *v17;
        v19 = v17[2];
        v48[1] = v17[1];
        v48[2] = v19;
        v48[0] = v18;
        v20 = v17[3];
        v21 = v17[4];
        v22 = v17[6];
        v48[5] = v17[5];
        v48[6] = v22;
        v48[3] = v20;
        v48[4] = v21;
        v23 = v17[7];
        v24 = v17[8];
        v25 = v17[10];
        v48[9] = v17[9];
        v48[10] = v25;
        v48[7] = v23;
        v48[8] = v24;
        ++v16;
        sub_1B03A35B8(v48, &v47);
        sub_1B0400370(a1);
        sub_1B03A3614(v48);
        v17 += 11;
        if (v14 == v16)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
      v38[1] = v12;
      v26 = *(v44 + 16);
      if (v26)
      {
        v27 = tracingSignposter.unsafeMutableAddressor();
        v40 = a1 << 59;
        v41 = v27;
        v28 = v6 + 16;
        v39 = *(v6 + 16);
        v29 = (v42 + 8);
        v42 = v28;
        v30 = (v28 - 8);
        v31 = 32;
        v39(v8, v27, v45);
        while (1)
        {
          sub_1B0E43838();
          v33 = sub_1B0E43858();
          v34 = sub_1B0E45AE8();
          if (sub_1B0E45D38())
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            v36 = sub_1B0E43818();
            _os_signpost_emit_with_name_impl(&dword_1B0389000, v33, v34, v36, "LocalMailboxRemoved", "", v35, 2u);
            v37 = v35;
            v15 = v46;
            MEMORY[0x1B272C230](v37, -1, -1);
          }

          (*v29)(v15, v43);
          v32 = v45;
          (*v30)(v8, v45);
          v31 += 4;
          if (!--v26)
          {
            break;
          }

          v39(v8, v41, v32);
        }
      }
    }
  }
}

uint64_t sub_1B03CB320(uint64_t *a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v14[0] = MEMORY[0x1E69E7CC0];
  v14[1] = MEMORY[0x1E69E7CC0];
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  if (*(v1 + 24) == 1)
  {
    v3 = *v1;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v13[2] = v14;
  MEMORY[0x1EEE9AC00](v5);
  v12[2] = v6;
  MEMORY[0x1EEE9AC00](v7);
  v11[2] = v8;
  v9 = sub_1B03CBC7C();
  Array.findAppendOnlyDiff<A>(from:id:added:removed:update:)(v2, KeyPath, sub_1B0B363CC, v13, sub_1B0B363D4, v12, sub_1B03CBE40, v11, v3, v9);

  return v14[0];
}

uint64_t Array.findAppendOnlyDiff<A>(from:id:added:removed:update:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, void (*a7)(char *, char *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v74 = a7;
  v75 = a8;
  v71 = a6;
  v70 = a5;
  v69 = a4;
  v68 = a3;
  v83 = a2;
  v11 = *(*(*a2 + *MEMORY[0x1E69E77B0]) - 8);
  v86 = a10;
  MEMORY[0x1EEE9AC00](a9);
  v73 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v68 - v14;
  v87 = *(v16 + 8);
  v17 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v68 - v22;
  v84 = v24;
  v76 = v25;
  if (sub_1B0E452A8() < 1)
  {
    v27 = 0;
    v26 = 0;
    v79 = 0;
    v29 = v76;
  }

  else
  {
    v80 = a1;
    v81 = v15;
    v26 = 0;
    v27 = 0;
    v78 = v20;
    v79 = 0;
    v28 = (v11 + 8);
    v77 = (v17 + 8);
    v29 = v76;
    v82 = v23;
    v72 = (v11 + 8);
    while (v27 < sub_1B0E452A8())
    {
      v36 = v81;
      sub_1B0E453A8();
      swift_getAtKeyPath();
      v85 = v27;
      v37 = *v28;
      (*v28)(v36, v29);
      sub_1B0E453A8();
      swift_getAtKeyPath();
      v37(v36, v29);
      if (sub_1B0E44A28())
      {
        v30 = v26;
        v31 = v85;
        sub_1B0E453A8();
        v32 = v73;
        sub_1B0E453A8();
        v74(v36, v32);
        v33 = v78;
        v37(v32, v29);
        v37(v36, v29);
        v34 = *v77;
        v35 = v87;
        (*v77)(v33, v87);
        v34(v82, v35);
        v27 = v31 + 1;
        v26 = v30 + 1;
      }

      else
      {
        result = sub_1B0E452A8();
        if (result < v26)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v90 = sub_1B0E45388();
        v91 = v39;
        v92 = v40;
        v93 = v41;
        MEMORY[0x1EEE9AC00](v90);
        v42 = v82;
        v43 = v83;
        *(&v68 - 4) = v86;
        *(&v68 - 3) = v43;
        *(&v68 - 2) = v42;
        sub_1B0E45FF8();
        swift_getWitnessTable();
        v44 = v79;
        sub_1B0E456F8();
        result = swift_unknownObjectRelease();
        if (v89)
        {
          v79 = v44;
          v45 = v81;
          v46 = v85;
          sub_1B0E453A8();
          v70(v45);
          v28 = v72;
          v37(v45, v29);
          v47 = *v77;
          v48 = v87;
          (*v77)(v78, v87);
          v27 = v46 + 1;
        }

        else
        {
          v49 = v88;
          if (v88 < v26)
          {
            goto LABEL_18;
          }

          v50 = v76;
          v90 = sub_1B0E45388();
          v91 = v51;
          v92 = v52;
          v93 = v53;
          MEMORY[0x1EEE9AC00](v90);
          v54 = v86;
          v48 = v87;
          *(&v68 - 6) = v50;
          *(&v68 - 5) = v48;
          v55 = v68;
          *(&v68 - 4) = v54;
          *(&v68 - 3) = v55;
          *(&v68 - 2) = v69;
          swift_getWitnessTable();
          sub_1B0E45018();
          v79 = v44;
          swift_unknownObjectRelease();
          v47 = *v77;
          (*v77)(v78, v48);
          v26 = v49;
          v27 = v85;
          v28 = v72;
        }

        v47(v82, v48);
        v29 = v76;
      }

      if (v26 >= sub_1B0E452A8())
      {
        break;
      }
    }
  }

  result = sub_1B0E452A8();
  if (result < v26)
  {
LABEL_19:
    __break(1u);
  }

  else
  {
    v90 = sub_1B0E45388();
    v91 = v56;
    v92 = v57;
    v93 = v58;
    MEMORY[0x1EEE9AC00](v90);
    v60 = v86;
    v59 = v87;
    *(&v68 - 6) = v29;
    *(&v68 - 5) = v59;
    v61 = v68;
    *(&v68 - 4) = v60;
    *(&v68 - 3) = v61;
    *(&v68 - 2) = v69;
    sub_1B0E45FF8();
    swift_getWitnessTable();
    sub_1B0E45018();
    swift_unknownObjectRelease();
    result = sub_1B0E452A8();
    if (result >= v27)
    {
      v90 = sub_1B0E45388();
      v91 = v62;
      v92 = v63;
      v93 = v64;
      MEMORY[0x1EEE9AC00](v90);
      v66 = v86;
      v65 = v87;
      *(&v68 - 6) = v29;
      *(&v68 - 5) = v65;
      v67 = v70;
      *(&v68 - 4) = v66;
      *(&v68 - 3) = v67;
      *(&v68 - 2) = v71;
      sub_1B0E45018();
      return swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B03CBC7C()
{
  result = qword_1EB6DD210;
  if (!qword_1EB6DD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD210);
  }

  return result;
}

__n128 sub_1B03CBCE4(_OWORD *a1, __n128 *a2, char **a3)
{
  v4 = a1[9];
  v28[8] = a1[8];
  v28[9] = v4;
  v28[10] = a1[10];
  v5 = a1[5];
  v28[4] = a1[4];
  v28[5] = v5;
  v6 = a1[7];
  v28[6] = a1[6];
  v28[7] = v6;
  v7 = a1[1];
  v28[0] = *a1;
  v28[1] = v7;
  v8 = a1[3];
  v28[2] = a1[2];
  v28[3] = v8;
  v9 = a2[9];
  v37 = a2[8];
  v38 = v9;
  v39 = a2[10];
  v10 = a2[5];
  v33 = a2[4];
  v34 = v10;
  v11 = a2[7];
  v35 = a2[6];
  v36 = v11;
  v12 = a2[1];
  v29 = *a2;
  v30 = v12;
  v13 = a2[3];
  v31 = a2[2];
  v32 = v13;
  if (!sub_1B03B5F54(v28, &v29))
  {
    v15 = *a3;
    sub_1B03A35B8(&v29, &v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1B03D9FC4(0, *(v15 + 2) + 1, 1, v15);
      *a3 = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_1B03D9FC4((v17 > 1), v18 + 1, 1, v15);
      *a3 = v15;
    }

    *(v15 + 2) = v18 + 1;
    v19 = &v15[176 * v18];
    v20 = v29;
    v21 = v31;
    *(v19 + 3) = v30;
    *(v19 + 4) = v21;
    *(v19 + 2) = v20;
    v22 = v32;
    v23 = v33;
    v24 = v35;
    *(v19 + 7) = v34;
    *(v19 + 8) = v24;
    *(v19 + 5) = v22;
    *(v19 + 6) = v23;
    result = v36;
    v25 = v37;
    v26 = v39;
    *(v19 + 11) = v38;
    *(v19 + 12) = v26;
    *(v19 + 9) = result;
    *(v19 + 10) = v25;
  }

  return result;
}

uint64_t _s16IMAP2Persistence17MailboxOfInterestV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t *a2)
{
  if (*(result + 8) != a2[1])
  {
    return 0;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    if ((*(result + 24) | (*(result + 24) << 32)) != (*(a2 + 6) | (*(a2 + 6) << 32)))
    {
      return 0;
    }

    v9 = result;
    if ((sub_1B04520BC(*(result + 16), a2[2]) & 1) == 0)
    {
      return 0;
    }

    v10 = *(v9 + 48);
    v15[0] = *(v9 + 32);
    v15[1] = v10;
    v16 = *(v9 + 64);
    v11 = *(a2 + 3);
    v13[0] = *(a2 + 2);
    v13[1] = v11;
    v14 = *(a2 + 64);
    if (!_s16IMAP2Persistence15MailboxMetadataV23__derived_struct_equalsySbAC_ACtFZ_0(v15, v13) || (_s16IMAP2Persistence17MailboxOfInterestV17LocalModificationO21__derived_enum_equalsySbAE_AEtFZ_0(*(v9 + 72), *(v9 + 80), a2[9], *(a2 + 20)) & 1) == 0)
    {
      return 0;
    }

    v12 = *(a2 + 88);
    if (*(v9 + 88))
    {
      if ((a2[11] & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v9 + 84) != *(a2 + 21))
      {
        v12 = 1;
      }

      if (v12)
      {
        return 0;
      }
    }

    return 1;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

BOOL _s16IMAP2Persistence15MailboxMetadataV23__derived_struct_equalsySbAC_ACtFZ_0(_BOOL8 result, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(result + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*result != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 16);
  if (*(result + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8) != *(result + 8))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(result + 32))
  {
    return (*(a2 + 32) & 1) != 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v4 = *(result + 24);
  v5 = *(a2 + 24);
  if (((v5 | v4) & 0x8000000000000000) == 0)
  {
    return v5 == v4;
  }

  __break(1u);
  return result;
}

uint64_t _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03CC06C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B03CC0D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_1B03CC120()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22[-v3];
  v5 = sub_1B0E44468();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1B0E44488();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = sub_1B03CC488();
    if (!ConnectionIDsGroupedByState.containsActivelyConnecting.getter(v13))
    {
LABEL_8:
      v20 = static MonotonicTime.now()();
      v21 = ConnectionLimitsAndUsage.connectionsToBeCancelled(_:)(v13);

      swift_beginAccess();
      sub_1B03CD62C(v21, v20);
      swift_endAccess();

      return sub_1B0C51334(v20);
    }

    v14 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(v1 + v14, v4, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v15 = sub_1B0E439A8();
    v16 = *(v15 - 8);
    result = (*(v16 + 48))(v4, 1, v15);
    if (result != 1)
    {

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v17 = sub_1B0E43988();
      v18 = sub_1B0E458D8();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 68157952;
        *(v19 + 4) = 2;
        *(v19 + 8) = 256;
        *(v19 + 10) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        _os_log_impl(&dword_1B0389000, v17, v18, "[%.*hhx] Some connections are actively connecting.", v19, 0xBu);
        MEMORY[0x1B272C230](v19, -1, -1);
      }

      else
      {
      }

      (*(v16 + 8))(v4, v15);
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1B03CC488()
{
  v1 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (v5 >> 62)
  {
LABEL_25:
    v23 = v5 & 0xFFFFFFFFFFFFFF8;
    v6 = sub_1B0E46138();
  }

  else
  {
    v23 = v5 & 0xFFFFFFFFFFFFFF8;
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v6)
  {
    v7 = 0;
    v22 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = v7;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1B2728410](v8, v5);
          v7 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v8 >= *(v23 + 16))
          {
            goto LABEL_24;
          }

          v9 = *(v5 + 8 * v8 + 32);

          v7 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }
        }

        v10 = (*v9 + 304);
        v11 = *v10;
        (*v10)();
        v12 = ConnectionState.isClosedOrCancelled.getter();
        v13 = sub_1B038C824(v3, type metadata accessor for ConnectionState);
        if (!v12)
        {
          break;
        }

        ++v8;
        if (v7 == v6)
        {
          goto LABEL_22;
        }
      }

      HIDWORD(v21) = *(v9 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
      v14 = (*(*v9 + 424))(v13);
      v11();
      v15 = ConnectionState.isActivelyConnectingOrAuthenticating.getter();

      sub_1B038C824(v3, type metadata accessor for ConnectionState);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1B03CCA2C(0, *(v22 + 2) + 1, 1, v22);
      }

      v17 = *(v22 + 2);
      v16 = *(v22 + 3);
      if (v17 >= v16 >> 1)
      {
        v22 = sub_1B03CCA2C((v16 > 1), v17 + 1, 1, v22);
      }

      v18 = v22;
      *(v22 + 2) = v17 + 1;
      v19 = &v18[8 * v17];
      *(v19 + 8) = HIDWORD(v21);
      v19[36] = v14 & 1;
      v19[37] = !v15;
    }

    while (v7 != v6);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

LABEL_22:

  return v22;
}

uint64_t CommandConnection.constraint.getter()
{
  v1 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!*(v2 + 16))
  {
    return 0;
  }

  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  v3 = sub_1B0E46CB8() & ~(-1 << *(v2 + 32));
  return (*(v2 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v3) & 1;
}

BOOL ConnectionState.isActivelyConnectingOrAuthenticating.getter()
{
  v1 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  sub_1B038CA0C(v0, &v12 - v5, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload >= 2)
  {
LABEL_7:
    sub_1B038C704(v6, type metadata accessor for ConnectionState);
    return 0;
  }

  sub_1B038C704(v6, type metadata accessor for ConnectionState);
  sub_1B038CA0C(v0, v3, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B038C704(v3, type metadata accessor for ConnectionState);
    return 1;
  }

  else
  {
    v9 = sub_1B0E43DF8();
    v10 = *(v9 - 8);
    v11 = (*(v10 + 88))(v3, v9) != *MEMORY[0x1E6977C18];
    (*(v10 + 8))(v3, v9);
    return v11;
  }
}

char *sub_1B03CCA2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B08, "4z\b");
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
  v15 = 8 * v8;
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

BOOL ConnectionIDsGroupedByState.containsActivelyConnecting.getter(uint64_t a1)
{
  v1 = (a1 + 37);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v1 += 8;
  }

  while ((v3 & 1) != 0);
  return v2 != 0;
}

uint64_t ConnectionLimitsAndUsage.connectionsToBeCancelled(_:)(uint64_t a1)
{
  v2 = sub_1B0A93A4C(a1);
  sub_1B03CCBBC(v2, *(v1 + 32) != 0, *v1, *(v1 + 8), *(v1 + 16));
  v4 = v3;

  return v4;
}

void sub_1B03CCBBC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B03CCC38(a1, a3, a4, a5);
  if ((a2 & 1) != 0 && (v9 = *(v8 + 16)) != 0 && *(a1 + 16) <= v9)
  {

    sub_1B0B37CAC(v7, v8, 1, v9);
  }

  else
  {

    sub_1B03CD510(v7, v8);
  }
}

void sub_1B03CCC38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a1;
  if ((a4 & 1) == 0)
  {
    v7 = *(a1 + 16);
    if (v7 <= a2 && v7 <= a3)
    {
      sub_1B03CD35C(MEMORY[0x1E69E7CC0]);
      return;
    }
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03CD35C(MEMORY[0x1E69E7CC0]);
  v89 = v9;
  v90 = v10;
  v11 = *(v6 + 2);
  v84 = a3;
  if ((a4 & 1) != 0 && v11)
  {
    do
    {
      v12 = 0;
      v13 = 32;
      while (1)
      {
        v14 = &v6[v13];
        if ((v6[v13 + 17] & 1) != 0 || (v14[16] & 1) == 0 || !*(v14 + 1))
        {
          break;
        }

        ++v12;
        v13 += 24;
        if (v11 == v12)
        {
          goto LABEL_25;
        }
      }

      v15 = *&v6[v13];
      v16 = (v90 + 32);
      v17 = *(v90 + 16);
      if (v89)
      {
        sub_1B0BAE034();
        if ((v18 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else if (v17)
      {
        do
        {
          v19 = *v16++;
          if (v19 == v15)
          {
            goto LABEL_21;
          }
        }

        while (--v17);
      }

      sub_1B0BC9E7C(v15, v17);
LABEL_21:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1B0B8C89C(v6);
      }

      v20 = *(v6 + 2);
      if (v20 <= v12)
      {
        goto LABEL_122;
      }

      v11 = v20 - 1;
      memmove(&v6[v13], &v6[v13 + 24], 24 * (v20 - v12) - 24);
      *(v6 + 2) = v11;
    }

    while (v11);
  }

LABEL_25:
  v86 = v6;
  if (v11)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v21 = v6 + 49;
    v22 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(v21 - 13) == 1)
      {
        v26 = *(v21 - 17);
        v27 = *(v21 - 9);
        v28 = *(v21 - 1);
        v29 = *v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B03D4530(0, *(v22 + 2) + 1, 1);
        }

        v24 = *(v22 + 2);
        v23 = *(v22 + 3);
        if (v24 >= v23 >> 1)
        {
          sub_1B03D4530((v23 > 1), v24 + 1, 1);
        }

        *(v22 + 2) = v24 + 1;
        v25 = &v22[24 * v24];
        *(v25 + 8) = v26;
        v25[36] = 1;
        *(v25 + 5) = v27;
        v25[48] = v28;
        v25[49] = v29;
        v6 = v86;
      }

      v21 += 24;
      --v11;
    }

    while (v11);
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v22 = MEMORY[0x1E69E7CC0];
  }

  v91 = v22;
  for (i = *(v22 + 2); i > a2; i = *(v91 + 2))
  {
    if (!i)
    {
      break;
    }

    v31 = 0;
    v32 = (v22 + 32);
    while ((*(v32 + 17) & 1) == 0)
    {
      ++v31;
      v32 += 6;
      if (i == v31)
      {
        goto LABEL_49;
      }
    }

    v33 = *v32;
    v34 = (v90 + 32);
    v35 = *(v90 + 16);
    if (v89)
    {
      sub_1B0BAE034();
      if ((v36 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (v35)
    {
      do
      {
        v37 = *v34++;
        if (v37 == v33)
        {
          goto LABEL_48;
        }
      }

      while (--v35);
    }

    sub_1B0BC9E7C(v33, v35);
LABEL_48:
    sub_1B0BAFD0C(v31);
    v22 = v91;
  }

LABEL_49:
  while (i > a2)
  {
    if (!i)
    {
      break;
    }

    v38 = 0;
    v39 = 32;
    while (1)
    {
      v40 = &v22[v39];
      if ((v22[v39 + 17] & 1) != 0 || (v40[16] & 1) == 0 || !*(v40 + 1))
      {
        break;
      }

      ++v38;
      v39 += 24;
      if (i == v38)
      {
        goto LABEL_68;
      }
    }

    v41 = *&v22[v39];
    v42 = (v90 + 32);
    v43 = *(v90 + 16);
    if (v89)
    {
      sub_1B0BAE034();
      if ((v44 & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    else if (v43)
    {
      do
      {
        v45 = *v42++;
        if (v45 == v41)
        {
          goto LABEL_64;
        }
      }

      while (--v43);
    }

    sub_1B0BC9E7C(v41, v43);
LABEL_64:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1B0B8C89C(v22);
    }

    v46 = *(v22 + 2);
    if (v46 <= v38)
    {
      goto LABEL_123;
    }

    i = v46 - 1;
    memmove(&v22[v39], &v22[v39 + 24], 24 * (v46 - v38) - 24);
    *(v22 + 2) = i;
  }

LABEL_68:

  v47 = *(v6 + 2);
  if (!v47)
  {
    v50 = MEMORY[0x1E69E7CC0];
LABEL_85:
    swift_bridgeObjectRelease_n();
    v92 = v50;
    v65 = *(v50 + 2);
    for (j = v84; v65 > v84; v65 = *(v92 + 2))
    {
      if (!v65)
      {
        break;
      }

      v67 = 0;
      v68 = (v50 + 32);
      while ((*(v68 + 17) & 1) == 0)
      {
        ++v67;
        v68 += 6;
        if (v65 == v67)
        {
          goto LABEL_99;
        }
      }

      v69 = *v68;
      v70 = (v90 + 32);
      v71 = *(v90 + 16);
      if (v89)
      {
        sub_1B0BAE034();
        if ((v72 & 1) == 0)
        {
          goto LABEL_98;
        }
      }

      else if (v71)
      {
        do
        {
          v73 = *v70++;
          if (v73 == v69)
          {
            goto LABEL_98;
          }
        }

        while (--v71);
      }

      sub_1B0BC9E7C(v69, v71);
LABEL_98:
      sub_1B0BAFD0C(v67);
      v50 = v92;
    }

LABEL_99:
    if (v65 <= v84)
    {
LABEL_118:

      return;
    }

    while (1)
    {
      if (!v65)
      {
        goto LABEL_118;
      }

      v74 = j;
      v75 = 0;
      v76 = 32;
      while (1)
      {
        v77 = &v50[v76];
        if ((v50[v76 + 17] & 1) != 0 || (v77[16] & 1) == 0 || !*(v77 + 1))
        {
          break;
        }

        ++v75;
        v76 += 24;
        if (v65 == v75)
        {
          goto LABEL_118;
        }
      }

      v78 = *&v50[v76];
      v79 = (v90 + 32);
      v80 = *(v90 + 16);
      if (v89)
      {
        sub_1B0BAE034();
        if (v81)
        {
          goto LABEL_113;
        }
      }

      else
      {
        if (!v80)
        {
LABEL_113:
          sub_1B0BC9E7C(v78, v80);
          goto LABEL_114;
        }

        while (1)
        {
          v82 = *v79++;
          if (v82 == v78)
          {
            break;
          }

          if (!--v80)
          {
            goto LABEL_113;
          }
        }
      }

LABEL_114:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_1B0B8C89C(v50);
      }

      v83 = *(v50 + 2);
      if (v83 <= v75)
      {
        goto LABEL_124;
      }

      v65 = v83 - 1;
      memmove(&v50[v76], &v50[v76 + 24], 24 * (v83 - v75) - 24);
      *(v50 + 2) = v65;
      j = v74;
      if (v65 <= v74)
      {
        goto LABEL_118;
      }
    }
  }

  v48 = 0;
  v49 = v6 + 32;
  v50 = MEMORY[0x1E69E7CC0];
  v85 = v6 + 32;
  while (v48 < v47)
  {
    v52 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      goto LABEL_121;
    }

    v53 = &v49[24 * v48];
    v54 = *v53;
    v55 = v53[4];
    v88 = *(v53 + 1);
    v56 = v53[16];
    v57 = v53[17];
    ++v48;
    v58 = *(v90 + 16);
    if (v89)
    {
      sub_1B0BAE034();
      if (v51)
      {
        goto LABEL_78;
      }

LABEL_71:
      if (v52 == v47)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v59 = (v90 + 32);
      if (v58)
      {
        do
        {
          v60 = *v59++;
          if (v60 == v54)
          {
            goto LABEL_71;
          }
        }

        while (--v58);
      }

LABEL_78:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B03D4530(0, *(v50 + 2) + 1, 1);
      }

      v62 = *(v50 + 2);
      v61 = *(v50 + 3);
      v63 = v62 + 1;
      if (v62 >= v61 >> 1)
      {
        sub_1B03D4530((v61 > 1), v62 + 1, 1);
        v63 = v62 + 1;
      }

      *(v50 + 2) = v63;
      v64 = &v50[24 * v62];
      *(v64 + 8) = v54;
      v64[36] = v55;
      *(v64 + 5) = v88;
      v64[48] = v56;
      v64[49] = v57;
      v49 = v85;
      if (v52 == v47)
      {
        goto LABEL_85;
      }
    }
  }

  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
}

void sub_1B03CD35C(uint64_t a1)
{
  v2 = sub_1B03CD508();
  v3 = sub_1B03CD424(v8, a1, 0, 1, v2);
  v4 = *(a1 + 16);
  v5 = v8[0];
  if (v8[0] != v4)
  {
    if (v8[0] < 0)
    {
      __break(1u);
    }

    else if (v4 >= v8[0])
    {
      v6 = v3;
      sub_1B0B21B40(a1, a1 + 32, 0, (2 * v8[0]) | 1);
      v8[1] = v6;
      v8[2] = v7;
      if (*(a1 + 16) >= v4)
      {
        sub_1B0A94034(a1 + 32, v5, (2 * v4) | 1);

        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_1B03CD424(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x1B27256A0](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = MEMORY[0x1B27256B0]();
    sub_1B0A93CE4(a2 + 32, v8, (v14 + 16), v14 + 32);
    *a1 = v15;
    return v14;
  }

  else if (v8 >= 2)
  {
    v16 = sub_1B0A93BBC(a2 + 32, v8);
    result = 0;
    *a1 = v16;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

uint64_t sub_1B03CD510(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = sub_1B03CD5D8();
  result = MEMORY[0x1B2727570](v3, &type metadata for ConnectionID, v4);
  v11 = result;
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = 0;
    while (v7 < *(a2 + 16))
    {
      v8 = *(a2 + 4 * v7++ + 32);
      result = sub_1B0B01B6C(&v10, v8);
      if (v6 == v7)
      {

        return v11;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = result;

    return v9;
  }

  return result;
}

unint64_t sub_1B03CD5D8()
{
  result = qword_1EB6DD188;
  if (!qword_1EB6DD188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD188);
  }

  return result;
}

uint64_t sub_1B03CD62C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = sub_1B03CD85C(v6, a1);

  *v3 = v7;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = 0;
  while (v10)
  {
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = *(*(a1 + 48) + ((v12 << 8) | (4 * v14)));
    if (v7[2])
    {
      sub_1B03A2724();
      if (v16)
      {
        continue;
      }
    }

    v31 = a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    v32 = *v3;
    v19 = sub_1B03A2724();
    v21 = *(v18 + 16);
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      result = sub_1B0E46BA8();
      __break(1u);
      return result;
    }

    v25 = v20;
    if (*(v18 + 24) >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v27 = v19;
      sub_1B0C4B4F4();
      v19 = v27;
      a2 = v31;
      v7 = v32;
      if ((v25 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_17:
      *(v7[7] + 8 * v19) = a2;
      *v3 = v7;
    }

    else
    {
      sub_1B0C4AC60(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_1B03A2724();
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_27;
      }

LABEL_16:
      a2 = v31;
      v7 = v32;
      if (v25)
      {
        goto LABEL_17;
      }

LABEL_19:
      v7[(v19 >> 6) + 8] |= 1 << v19;
      *(v7[6] + 4 * v19) = v15;
      *(v7[7] + 8 * v19) = a2;
      v28 = v7[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      v7[2] = v29;
      *v3 = v7;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(a1 + 56 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }
}

void *sub_1B03CD85C(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](v9);
    bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);
    v10 = sub_1B03CDA0C(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, a1, a2);
    if (v2)
    {
      swift_willThrow();
      return swift_bridgeObjectRelease_n();
    }

    v12 = v10;
    swift_bridgeObjectRelease_n();
    return v12;
  }

  v13 = swift_slowAlloc();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = sub_1B0C4B878(v13, v7, a1, a2);
  MEMORY[0x1B272C230](v13, -1, -1);
  result = swift_bridgeObjectRelease_n();
  if (!v2)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1B03CDA0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = result;
  v23 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
LABEL_5:
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = v12 | (v5 << 6);
    if (*(a4 + 16))
    {
      v16 = *(*(a3 + 48) + 4 * v15);
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v17 = -1 << *(a4 + 32);
      v18 = result & ~v17;
      if ((*(v11 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        v19 = ~v17;
        while (*(*(a4 + 48) + 4 * v18) != v16)
        {
          v18 = (v18 + 1) & v19;
          if (((*(v11 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v22 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
          return sub_1B03CDBBC(v22, a2, v23, a3);
        }
      }
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1B03CDBBC(v22, a2, v23, a3);
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03CDBBC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A70, &qword_1B0EDBF40);
  result = sub_1B0E466A8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 4 * v16);
    v27 = *(*(v4 + 56) + 8 * v16);
    sub_1B0E46C28();
    sub_1B0E46C88();
    result = sub_1B0E46CB8();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 4 * v21) = v17;
    *(*(v9 + 56) + 8 * v21) = v27;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1B03CDDDC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  v10 = (v7 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    while (1)
    {
LABEL_12:
      v15 = __clz(__rbit64(v9)) | (v11 << 6);
      v16 = *(*(a2 + 56) + 8 * v15);
      if (v16 <= a1)
      {
        v13 = a1 - v16;
        if (__OFSUB__(a1, v16))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (__OFSUB__(v16, a1))
        {
          goto LABEL_26;
        }

        v13 = a1 - v16;
        if (__OFSUB__(0, v16 - a1))
        {
          goto LABEL_27;
        }
      }

      v9 &= v9 - 1;
      if (v13 / 1000000000.0 >= a3)
      {
        v17 = *(*(a2 + 48) + 4 * v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1B0C0C7D0(0, *(v12 + 2) + 1, 1, v12);
        }

        v18 = *(v12 + 2);
        v19 = *(v12 + 3);
        v20 = v18 + 1;
        if (v18 >= v19 >> 1)
        {
          v24 = v18 + 1;
          v21 = v12;
          v22 = *(v12 + 2);
          v23 = sub_1B0C0C7D0((v19 > 1), v18 + 1, 1, v21);
          v18 = v22;
          v20 = v24;
          v12 = v23;
        }

        *(v12 + 2) = v20;
        *&v12[4 * v18 + 32] = v17;
        if (!v9)
        {
          break;
        }
      }

      else if (!v9)
      {
        break;
      }
    }
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      sub_1B03CDFB4(v12);

      return;
    }

    v9 = *(v6 + 8 * v14);
    ++v11;
    if (v9)
    {
      v11 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_1B03CDFB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B03CD5D8();
  result = MEMORY[0x1B2727570](v2, &type metadata for ConnectionID, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1B0B01B6C(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection0B5UsageV010NonMailboxC0O(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

Swift::Void __swiftcall CommandConnection.flush()()
{
  v1 = sub_1B0E43828();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B0E44468();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + 24);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1B0E44488();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    _s6LoggerVMa_0(0);
    sub_1B0E43838();
    sub_1B03CE2E0(v4);
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B03CE2E0(uint64_t a1)
{
  v49 = a1;
  v1 = sub_1B0E443C8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v42 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v42 - v7;
  v8 = sub_1B0E43828();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v48 = v10;
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1B0E43CD8();
  v52 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v45 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  if (qword_1EB6DCDA8 != -1)
  {
    swift_once();
  }

  sub_1B0E44008();
  swift_allocObject();

  v21 = sub_1B0E43FE8();
  v54 = MEMORY[0x1E69E6370];
  v53[0] = 1;
  sub_1B0E44028();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49B0, &unk_1B0EC6FA0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B0EC6C30;
  *(v22 + 32) = v21;
  sub_1B0E43CC8();
  swift_allocObject();

  v47 = sub_1B0E43C98();
  sub_1B0E44378();
  (*(v2 + 56))(v20, 0, 1, v1);
  (*(v9 + 16))(v11, v49, v8);
  v23 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v24 = swift_allocObject();
  (*(v9 + 32))(v24 + v23, v11, v8);
  *v13 = sub_1B03D6B84;
  v13[1] = v24;
  v25 = v50;
  (*(v52 + 104))(v13, *MEMORY[0x1E6977BF8], v50);
  v26 = v51;
  sub_1B03B5C80(v20, v51, &qword_1EB6E2070, &qword_1B0E9F040);
  v27 = *(v2 + 48);
  v28 = v27(v26, 1, v1);
  v29 = v1;
  v30 = v2;
  v31 = v20;
  if (v28 == 1)
  {
    v49 = v21;
    sub_1B0398EFC(v51, &qword_1EB6E2070, &qword_1B0E9F040);
    v32 = v20;
    v33 = v45;
    sub_1B03B5C80(v32, v45, &qword_1EB6E2070, &qword_1B0E9F040);
    if (v27(v33, 1, v29) == 1)
    {
      sub_1B0398EFC(v33, &qword_1EB6E2070, &qword_1B0E9F040);
      sub_1B0E43DD8();
    }

    else
    {
      v36 = v44;
      (*(v2 + 32))(v44, v33, v29);
      v37 = v43;
      (*(v2 + 16))(v43, v36, v29);
      v38 = sub_1B0C01788(v37);
      v40 = v39;
      sub_1B0E43DD8();

      sub_1B0391D50(v38, v40);

      (*(v30 + 8))(v36, v29);
    }

    v34 = v50;
  }

  else
  {
    v34 = v25;
    v35 = v46;
    (*(v30 + 32))(v46, v51, v29);
    sub_1B0E43DC8();

    (*(v30 + 8))(v35, v29);
  }

  (*(v52 + 8))(v13, v34);
  return sub_1B0398EFC(v31, &qword_1EB6E2070, &qword_1B0E9F040);
}

uint64_t sub_1B03CE9B0()
{
  v1 = sub_1B0E43828();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t StateWithTasks.environment.getter()
{
  if (v0[25])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | v0[24];
  if (v0[26])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return v2 | v3;
}

uint64_t sub_1B03CEA90(char a1, void *a2, uint64_t a3)
{
  v67 = a3;
  v66 = type metadata accessor for Engine.Logger(0);
  MEMORY[0x1EEE9AC00](v66);
  v59 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1B0E43108();
  v61 = *(v62 - 8);
  v58 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  *&v63 = &v57 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - v11;
  v70 = static MonotonicTime.now()();
  sub_1B0E430F8();
  v13 = *(v3 + 8);
  v14 = *(v3 + 16);
  v68 = v3;
  v69 = v13;
  sub_1B03CF374(a1 & 1, a2, v72);
  v15 = swift_allocObject();
  v16 = __swift_project_boxed_opaque_existential_0(v72, v72[3]);
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v19 + 16))(&v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v15[5] = swift_getAssociatedTypeWitness();
  v15[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v15 + 2);
  v20 = v15;
  sub_1B0E44F08();
  v21 = swift_allocObject();
  v22 = __swift_project_boxed_opaque_existential_0(v73, v74);
  v23 = MEMORY[0x1EEE9AC00](v22);
  (*(v25 + 16))(&v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  v21[5] = swift_getAssociatedTypeWitness();
  v21[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v21 + 2);
  sub_1B0E44F08();
  v26 = v61;
  v27 = *(v61 + 32);
  v28 = v63;
  v29 = v62;
  v27(v63, v12, v62);
  v30 = *(v26 + 16);

  v30(v60, v28, v29);
  v31 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v32 = (v58 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = v70;
  *(v33 + 16) = v20;
  *(v33 + 24) = v34;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v35 = v33 + v31;
  v36 = v59;
  v27(v35, v63, v62);
  v37 = v60;
  v38 = (v33 + v32);
  v39 = v69;
  *v38 = v69;
  v38[1] = v14;
  *(v33 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8)) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B90, &qword_1B0EDC8E0);
  inited = swift_initStackObject();
  *(inited + 16) = sub_1B0C5B0C0;
  *(inited + 24) = v33;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03CFB38(v72);
  v58 = inited;

  sub_1B0C5AC1C(v20, v70, v37, v39, v14, v21, &v71);
  if (v71)
  {
    v42 = MEMORY[0x1E69E7CA0];
    *&v41 = 68158210;
    v63 = v41;
    v65 = v21;
    v64 = v20;
    do
    {
      v52 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C5A84C(v52);

      v53 = sub_1B0E44598();

      PPSSendTelemetry();

      sub_1B0C5B170(v67, v36);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v54 = sub_1B0E43988();
      v55 = sub_1B0E458D8();

      if (os_log_type_enabled(v54, v55))
      {
        v43 = swift_slowAlloc();
        v44 = v14;
        v45 = v37;
        v46 = swift_slowAlloc();
        *v43 = v63;
        *(v43 + 4) = 2;
        *(v43 + 8) = 256;
        v47 = v42;
        v48 = v36;
        v49 = *(v36 + *(v66 + 20));
        sub_1B0C5B39C(v48);
        *(v43 + 10) = v49;
        *(v43 + 11) = 2112;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B98, &qword_1B0EDC8E8);
        v50 = sub_1B0E44598();

        *(v43 + 13) = v50;
        *v46 = v50;
        v36 = v48;
        v42 = v47;
        _os_log_impl(&dword_1B0389000, v54, v55, "[%.*hhx] Sending power telemetry event: %@", v43, 0x15u);
        sub_1B0BD096C(v46);
        v51 = v46;
        v37 = v45;
        v14 = v44;
        v20 = v64;
        v21 = v65;
        MEMORY[0x1B272C230](v51, -1, -1);
        MEMORY[0x1B272C230](v43, -1, -1);
      }

      else
      {
        sub_1B0C5B39C(v36);
      }

      sub_1B0C5AC1C(v20, v70, v37, v69, v14, v21, &v71);
    }

    while (v71);
  }

  (*(v61 + 8))(v37, v62);
}

uint64_t sub_1B03CF23C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B03CF274()
{
  v1 = sub_1B0E43108();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B03CF374@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  *v3 = a2;
  swift_bridgeObjectRetain_n();
  RunningSyncRequests.Change.init(previous:current:)(v7, a2, v21);
  v8 = __swift_project_boxed_opaque_existential_0(v21, v21[3]);
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(&v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v9);
  v12 = a1 & 1;
  v20[48] = a1 & 1;
  v13 = sub_1B0E44FC8();
  v14 = __swift_project_boxed_opaque_existential_0(v22, v22[3]);
  v15 = MEMORY[0x1EEE9AC00](v14);
  (*(v17 + 16))(&v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)], v15);
  v20[16] = v12;
  v18 = sub_1B0E44FC8();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5BA8, &unk_1B0EDC900);
  a3[4] = sub_1B03CFB8C(&qword_1EB6DB488, &qword_1EB6E5BA8, &unk_1B0EDC900);
  *a3 = v13;
  a3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4B88, &qword_1B0EC8F98);
  a3[9] = sub_1B03CFB8C(&qword_1EB6DB480, &qword_1EB6E4B88, &qword_1B0EC8F98);
  a3[5] = v18;
  return sub_1B03CFB38(v21);
}

double RunningSyncRequests.Change.init(previous:current:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1B04007E4;
    *(v7 + 24) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B0400C30;
    *(v9 + 24) = v8;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4B90, &qword_1B0EC8FA0);
    v10 = MEMORY[0x1E69E6CC8];
    v11 = sub_1B039E3F8(&unk_1EB6DA410, &qword_1EB6E4B90, &qword_1B0EC8FA0, MEMORY[0x1E69E6CC8]);
    v12 = swift_allocObject();
    v12[2] = a2;
    v12[3] = sub_1B0400860;
    v12[4] = v7;
    v12[5] = sub_1B0400824;
    v12[6] = 0;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4B98, &qword_1B0EC8FA8);
    v14 = sub_1B039E3F8(&qword_1EB6DA408, &qword_1EB6E4B98, &qword_1B0EC8FA8, v10);
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = sub_1B0400C34;
    v15[4] = v9;
    v15[5] = sub_1B0B74D20;
    v15[6] = 0;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    a2 = v12;
    v16 = v18;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4B80, &qword_1B0EC8F90);
    v11 = sub_1B039E3F8(&qword_1EB6DA4A0, &qword_1EB6E4B80, &qword_1B0EC8F90, MEMORY[0x1E69E6CC8]);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4B88, &qword_1B0EC8F98);
    v14 = sub_1B039E3F8(&qword_1EB6DB480, &qword_1EB6E4B88, &qword_1B0EC8F98, MEMORY[0x1E69E6328]);
    v15 = MEMORY[0x1E69E7CC0];
  }

  *a3 = a2;
  a3[1] = sub_1B0400824;
  a3[2] = 0;
  a3[3] = v16;
  a3[4] = v11;
  a3[5] = v15;
  a3[8] = v13;
  a3[9] = v14;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B03CF8DC()
{

  return swift_deallocObject();
}

uint64_t sub_1B03CF914()
{

  return swift_deallocObject();
}

uint64_t sub_1B03CF95C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B03CF9B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for RunningSyncRequests.Change.Started(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 4) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RunningSyncRequests.Change.Started(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 5))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 4);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 4);
  }

  v5 = v4 - 5;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for RunningSyncRequests.Change.Completed(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RunningSyncRequests.Change.Completed(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 16))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 4);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 4);
  }

  v5 = v4 - 5;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1B03CFB8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_12Tm()
{

  return swift_deallocObject();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t block_destroy_helper_11(uint64_t a1)
{
}

{
}

uint64_t type metadata accessor for DetermineNewestMessages(uint64_t a1)
{
  result = qword_1EB6DD740;
  if (!qword_1EB6DD740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B03D008C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B03D00F4()
{
  v2 = qword_1EB6DCA18;
  if (!qword_1EB6DCA18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DCA18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B03D016C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4820, &qword_1B0EC5FB8);
    v3 = sub_1B0E466A8();

    for (i = (a1 + 65); ; i += 40)
    {
      v5 = *(i - 33);
      v6 = *(i - 25);
      v7 = *(i - 17);
      v8 = *(i - 9);
      v9 = *(i - 1);
      v10 = *i;
      sub_1B03B2000(v5, v6);
      result = sub_1B0AE002C(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = v3[7] + 24 * result;
      *v14 = v7;
      *(v14 + 8) = v8;
      *(v14 + 16) = v9;
      *(v14 + 17) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

uint64_t sub_1B03D0298(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
{
  v23 = result;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = (*(a3 + 56) + 24 * v15);
    v17 = *v16;
    v18 = *(v16 + 1);
    v19 = *(v16 + 16);
    if (*(v16 + 17))
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    result = a4(*(*(a3 + 48) + 4 * v15), v17, v18, v20 | v19);
    if (result)
    {
      *(v23 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_1B03D03F8(v23, a2, v24, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_1B03D03F8(v23, a2, v24, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03D03F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4638, &qword_1B0EC59D0);
  result = sub_1B0E466A8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 4 * v16);
    v18 = *(v4 + 56) + 24 * v16;
    v32 = *v18;
    v31 = *(v18 + 8);
    v29 = *(v18 + 17);
    v30 = *(v18 + 16);
    sub_1B0E46C28();
    sub_1B0E46C88();
    result = sub_1B0E46CB8();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 4 * v22) = v17;
    v27 = *(v9 + 56) + 24 * v22;
    *v27 = v32;
    *(v27 + 8) = v31;
    *(v27 + 16) = v30;
    *(v27 + 17) = v29;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B03D0650(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 172);
  v6 = *(a5 + 8);
  v7 = *(a5 + 16);
  v8 = *(a5 + 24);
  v10[0] = *a5;
  v10[1] = v6;
  v11 = v5;
  v12 = v7;
  v13 = v8;
  return sub_1B03D93EC(v10, a1 & 1, a2) & 1;
}

unint64_t sub_1B03D06A4()
{
  result = qword_1EB6DD1F0;
  if (!qword_1EB6DD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD1F0);
  }

  return result;
}

unint64_t sub_1B03D06F8()
{
  v2 = qword_1EB6DE228;
  if (!qword_1EB6DE228)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE228);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03D0770(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4360, &qword_1B0EC50A8);
    v3 = sub_1B0E46228();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v10);
      result = sub_1B0E46CB8();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1B03D08AC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 16))(a2, a1);
  return a2;
}

void *sub_1B03D091C(void *a1, void *a2)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *a2 = v4;
  a2[1] = a1[1];
  return result;
}

unint64_t sub_1B03D0964()
{
  result = qword_1EB6DD9B0;
  if (!qword_1EB6DD9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD9B0);
  }

  return result;
}

uint64_t sub_1B03D09B8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1B03D0A7C(uint64_t a1)
{
  PendingDownload = type metadata accessor for FindPendingDownload(0);
  (*(*(PendingDownload - 8) + 8))(a1, PendingDownload);
  return a1;
}

uint64_t sub_1B03D0AD8(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1B0E46C28();
  sub_1B0E461D8();
  v4 = sub_1B0E46CB8();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = *a1;
    do
    {
      sub_1B03D0A20(*(a2 + 48) + 48 * v6, &v11);
      if (v11 == v8)
      {
        v9 = MEMORY[0x1B27282E0](&v12, a1 + 1);
        sub_1B03B04BC(&v11);
        if (v9)
        {
          return 1;
        }
      }

      else
      {
        sub_1B03B04BC(&v11);
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return 0;
}

void sub_1B03D0BFC(uint64_t (*a1)(int *), uint64_t a2, uint64_t a3)
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
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v14 = *(*(a3 + 48) + ((v12 << 8) | (4 * __clz(__rbit64(v9)))));
      v13 = a1(&v14);
      if (v3 || (v13 & 1) != 0)
      {
        break;
      }

      v9 &= v9 - 1;
      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_12;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B03D0D24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03D0D84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_16Tm()
{

  if (*(v0 + 88) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B03D0E68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03D0ED0(uint64_t a1, uint64_t a2)
{
  v73 = type metadata accessor for NewestMessages(0);
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4068, &unk_1B0EC2D20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v68 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4888, &qword_1B0EC6330);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v68 - v10;
  v11 = type metadata accessor for MessageBatches(0);
  v74 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4010, &unk_1B0EC6220);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v68 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4890, &qword_1B0EC6338);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - v18;
  if (*a1 != *a2)
  {
    return 0;
  }

  v20 = *(a2 + 12);
  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8) != *(a1 + 8))
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  v21 = *(a2 + 20);
  if (*(a1 + 20))
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  v22 = *(a1 + 24);
  v23 = *(a2 + 24);
  v24 = *(a2 + 32);
  if (!*(a1 + 32))
  {
LABEL_19:
    if (v24)
    {
      return 0;
    }

    if ((v23 | v22) < 0)
    {
      __break(1u);
      goto LABEL_60;
    }

    goto LABEL_21;
  }

  if (*(a1 + 32) != 1)
  {
    result = 0;
    if (v24 != 2 || v23)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (v24 != 1)
  {
    return 0;
  }

  v24 = v23 | v22;
  if ((v23 | v22) < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

LABEL_21:
  if (v23 != v22)
  {
    return 0;
  }

LABEL_25:
  v26 = *(a1 + 88);
  v27 = *(a1 + 120);
  v76[4] = *(a1 + 104);
  v76[5] = v27;
  v77 = *(a1 + 136);
  v28 = *(a1 + 56);
  v76[0] = *(a1 + 40);
  v76[1] = v28;
  v29 = *(a1 + 72);
  v76[3] = v26;
  v76[2] = v29;
  v30 = *(a2 + 56);
  v31 = *(a2 + 72);
  v78[0] = *(a2 + 40);
  v78[1] = v30;
  v32 = *(a2 + 88);
  v33 = *(a2 + 104);
  v34 = *(a2 + 120);
  v79 = *(a2 + 136);
  v78[4] = v33;
  v78[5] = v34;
  v78[2] = v31;
  v78[3] = v32;
  if (!_s13IMAP2Behavior11FlagEncoderV23__derived_struct_equalsySbAC_ACtFZ_0(v76, v78))
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 144) != *(a2 + 144) || ((*(a1 + 145) ^ *(a2 + 145)) & 1) != 0 || ((*(a1 + 146) ^ *(a2 + 146)) & 1) != 0 || ((*(a1 + 147) ^ *(a2 + 147)) & 1) != 0 || ((*(a1 + 148) ^ *(a2 + 148)) & 1) != 0)
  {
    return result;
  }

  v35 = *(a1 + 152);
  v71 = *(a1 + 160);
  v69 = *(a1 + 168);
  v36 = *(a2 + 152);
  v70 = *(a2 + 160);
  v68 = *(a2 + 168);
  if ((sub_1B03D1C2C(v35, v36) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B03D1C2C(v71, v70) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B03D1C2C(v69, v68) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B03D1D9C(*(a1 + 176), *(a2 + 176)) & 1) == 0)
  {
    return 0;
  }

  v71 = type metadata accessor for MailboxSyncState(0);
  if ((sub_1B03D27C0(a1 + v71[12], a2 + v71[12]) & 1) == 0 || (sub_1B03D3038((a1 + v71[13]), (a2 + v71[13])) & 1) == 0 || (sub_1B03D3304(*(a1 + v71[14]), *(a2 + v71[14])) & 1) == 0)
  {
    return 0;
  }

  v70 = v71[15];
  v37 = *(v17 + 48);
  sub_1B03B5C80(a1 + v70, v19, &qword_1EB6E4010, &unk_1B0EC6220);
  v38 = a2 + v70;
  v70 = v37;
  sub_1B03B5C80(v38, &v19[v37], &qword_1EB6E4010, &unk_1B0EC6220);
  v74 = *(v74 + 48);
  if ((v74)(v19, 1, v11) != 1)
  {
    sub_1B03B5C80(v19, v16, &qword_1EB6E4010, &unk_1B0EC6220);
    if ((v74)(&v19[v70], 1, v11) != 1)
    {
      sub_1B03D008C(&v19[v70], v13, type metadata accessor for MessageBatches);
      v42 = sub_1B03D34B0(v16, v13);
      sub_1B03BD5FC(v13, type metadata accessor for MessageBatches);
      sub_1B03BD5FC(v16, type metadata accessor for MessageBatches);
      sub_1B0398EFC(v19, &qword_1EB6E4010, &unk_1B0EC6220);
      if (!v42)
      {
        return 0;
      }

      goto LABEL_45;
    }

    sub_1B03BD5FC(v16, type metadata accessor for MessageBatches);
LABEL_43:
    v39 = &qword_1EB6E4890;
    v40 = &qword_1B0EC6338;
    v41 = v19;
LABEL_66:
    sub_1B0398EFC(v41, v39, v40);
    return 0;
  }

  if ((v74)(&v19[v70], 1, v11) != 1)
  {
    goto LABEL_43;
  }

  sub_1B0398EFC(v19, &qword_1EB6E4010, &unk_1B0EC6220);
LABEL_45:
  v43 = v71[16];
  v9 = *(v9 + 48);
  v44 = v75;
  sub_1B03B5C80(a1 + v43, v75, &qword_1EB6E4068, &unk_1B0EC2D20);
  sub_1B03B5C80(a2 + v43, v44 + v9, &qword_1EB6E4068, &unk_1B0EC2D20);
  v45 = *(v72 + 48);
  if (v45(v44, 1, v73) == 1)
  {
    if (v45(v75 + v9, 1, v73) == 1)
    {
      sub_1B0398EFC(v75, &qword_1EB6E4068, &unk_1B0EC2D20);
      goto LABEL_48;
    }

    goto LABEL_58;
  }

  v64 = v75;
  sub_1B03B5C80(v75, v8, &qword_1EB6E4068, &unk_1B0EC2D20);
  if (v45(v64 + v9, 1, v73) == 1)
  {
    sub_1B03BD5FC(v8, type metadata accessor for NewestMessages);
LABEL_58:
    v39 = &qword_1EB6E4888;
    v40 = &qword_1B0EC6330;
LABEL_65:
    v41 = v75;
    goto LABEL_66;
  }

LABEL_60:
  sub_1B03D008C(v75 + v9, v5, type metadata accessor for NewestMessages);
  sub_1B03D06F8();
  if ((sub_1B0E46E08() & 1) == 0 || *&v8[*(v73 + 20)] != *&v5[*(v73 + 20)])
  {
    sub_1B03BD5FC(v5, type metadata accessor for NewestMessages);
    sub_1B03BD5FC(v8, type metadata accessor for NewestMessages);
    v39 = &qword_1EB6E4068;
    v40 = &unk_1B0EC2D20;
    goto LABEL_65;
  }

  v65 = *(v73 + 24);
  v66 = *&v8[v65];
  v67 = *&v5[v65];
  sub_1B03BD5FC(v5, type metadata accessor for NewestMessages);
  sub_1B03BD5FC(v8, type metadata accessor for NewestMessages);
  sub_1B0398EFC(v75, &qword_1EB6E4068, &unk_1B0EC2D20);
  if (v66 != v67)
  {
    return 0;
  }

LABEL_48:
  if ((sub_1B03D3850(a1 + v71[17], a2 + v71[17]) & 1) == 0)
  {
    return 0;
  }

  v46 = v71[18];
  v47 = a1 + v46;
  v48 = *(a1 + v46 + 9);
  v49 = a2 + v46;
  v50 = *(v49 + 9);
  if ((v48 & 1) == 0)
  {
    if (*(v49 + 9))
    {
      return 0;
    }

    v50 = *(v49 + 8);
    if ((*(v47 + 8) & 1) == 0)
    {
      result = 0;
      if ((*(v49 + 8) & 1) != 0 || *v47 != *v49)
      {
        return result;
      }

      goto LABEL_51;
    }
  }

  if ((v50 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  result = 0;
  v51 = v71[19];
  v52 = a1 + v51;
  v53 = *(a1 + v51);
  v54 = (a2 + v51);
  if (v53 == *v54 && *(v52 + 8) == v54[1])
  {
    v55 = v71[20];
    v56 = a1 + v55;
    v57 = *(a1 + v55);
    v58 = *(a1 + v55 + 8);
    v59 = *(v56 + 16);
    v60 = (a2 + v55);
    v61 = v60[1];
    v62 = v60[2];
    v63 = sub_1B03D3FBC(v57, *v60) & (v58 == v61);
    if (v59 == v62)
    {
      return v63;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL _s13IMAP2Behavior11FlagEncoderV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  if (*(a1 + 8))
  {
    if (!v4)
    {
      return 0;
    }

    v5 = sub_1B0E44BB8();
    v7 = v6;
    if (v5 == sub_1B0E44BB8() && v7 == v8)
    {
    }

    else
    {
      v10 = sub_1B0E46A78();

      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v4)
  {
    return 0;
  }

  v11 = a2[3];
  if (*(a1 + 24))
  {
    if (!v11)
    {
      return 0;
    }

    v12 = sub_1B0E44BB8();
    v14 = v13;
    if (v12 == sub_1B0E44BB8() && v14 == v15)
    {
    }

    else
    {
      v16 = sub_1B0E46A78();

      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (sub_1B03D1B3C(*(a1 + 32), a2[4]) & 1) == 0 || (sub_1B03D1B3C(*(a1 + 40), a2[5]) & 1) == 0 || (sub_1B03D1B3C(*(a1 + 48), a2[6]) & 1) == 0 || (sub_1B03D1B3C(*(a1 + 56), a2[7]) & 1) == 0 || (sub_1B03D1B3C(*(a1 + 64), a2[8]) & 1) == 0 || (sub_1B03D1B3C(*(a1 + 72), a2[9]) & 1) == 0 || ((*(a1 + 80) ^ *(a2 + 80)))
  {
    return 0;
  }

  v18 = a2[12];
  if (!*(a1 + 96))
  {
    return !v18;
  }

  if (!v18)
  {
    return 0;
  }

  v19 = sub_1B0E44BB8();
  v21 = v20;
  if (v19 != sub_1B0E44BB8() || v21 != v22)
  {
    v23 = sub_1B0E46A78();

    return (v23 & 1) != 0;
  }

  return 1;
}

uint64_t sub_1B03D1B3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 40;
    v4 = a2 + 40;
    do
    {
      v5 = sub_1B0E44BB8();
      v7 = v6;
      if (v5 == sub_1B0E44BB8() && v7 == v8)
      {
      }

      else
      {
        v10 = sub_1B0E46A78();

        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B03D1C2C(uint64_t result, uint64_t a2)
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
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v13);
    result = sub_1B0E46CB8();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03D1D9C(uint64_t a1, uint64_t a2)
{
  v104 = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v82 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v93 = a2 + 56;
  v83 = v7;
  v84 = a1;
  while (1)
  {
    if (v6)
    {
      v9 = __clz(__rbit64(v6));
      v85 = (v6 - 1) & v6;
    }

    else
    {
      v10 = v3;
      do
      {
        v3 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
        }

        if (v3 >= v7)
        {
          return 1;
        }

        v11 = *(v82 + 8 * v3);
        ++v10;
      }

      while (!v11);
      v9 = __clz(__rbit64(v11));
      v85 = (v11 - 1) & v11;
    }

    v12 = (*(a1 + 48) + 16 * (v9 | (v3 << 6)));
    v14 = *v12;
    v13 = v12[1];
    sub_1B0E46C28();
    sub_1B03B2000(v14, v13);
    sub_1B0E42F48();
    v15 = sub_1B0E46CB8();
    v16 = -1 << *(v2 + 32);
    v17 = v15 & ~v16;
    if (((*(v8 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
LABEL_157:
      sub_1B0391D50(v14, v13);
      return 0;
    }

    v18 = ~v16;
    v19 = v13 >> 62;
    v20 = !v14 && v13 == 0xC000000000000000;
    v21 = !v20;
    v96 = v21;
    v22 = __OFSUB__(HIDWORD(v14), v14);
    v92 = v22;
    v90 = (v14 >> 32) - v14;
    v91 = v14 >> 32;
    v95 = v18;
LABEL_27:
    v23 = (*(v2 + 48) + 16 * v17);
    v25 = *v23;
    v24 = v23[1];
    v26 = v24 >> 62;
    if (v24 >> 62 == 3)
    {
      if (v25)
      {
        v27 = 0;
      }

      else
      {
        v27 = v24 == 0xC000000000000000;
      }

      v29 = !v27 || v13 >> 62 != 3;
      if (((v29 | v96) & 1) == 0)
      {
        v78 = 0;
        v79 = 0xC000000000000000;
LABEL_154:
        sub_1B0391D50(v78, v79);
        v7 = v83;
        a1 = v84;
        v6 = v85;
        continue;
      }

LABEL_49:
      v30 = 0;
      if (v19 <= 1)
      {
        goto LABEL_46;
      }

      goto LABEL_50;
    }

    if (v26 > 1)
    {
      if (v26 != 2)
      {
        goto LABEL_49;
      }

      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      v33 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (v33)
      {
        goto LABEL_163;
      }

      if (v19 <= 1)
      {
        goto LABEL_46;
      }
    }

    else if (v26)
    {
      LODWORD(v30) = HIDWORD(v25) - v25;
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        goto LABEL_162;
      }

      v30 = v30;
      if (v19 <= 1)
      {
LABEL_46:
        v34 = BYTE6(v13);
        if (v19)
        {
          v34 = HIDWORD(v14) - v14;
          if (v92)
          {
            goto LABEL_161;
          }
        }

        goto LABEL_52;
      }
    }

    else
    {
      v30 = BYTE6(v24);
      if (v19 <= 1)
      {
        goto LABEL_46;
      }
    }

LABEL_50:
    if (v19 != 2)
    {
      if (!v30)
      {
        goto LABEL_153;
      }

      goto LABEL_26;
    }

    v36 = *(v14 + 16);
    v35 = *(v14 + 24);
    v33 = __OFSUB__(v35, v36);
    v34 = v35 - v36;
    if (v33)
    {
      goto LABEL_160;
    }

LABEL_52:
    if (v30 != v34)
    {
      goto LABEL_26;
    }

    if (v30 < 1)
    {
      goto LABEL_153;
    }

    if (v26 <= 1)
    {
      break;
    }

    if (v26 != 2)
    {
      *&__s1[6] = 0;
      *__s1 = 0;
      if (!v19)
      {
LABEL_82:
        __s2 = v14;
        v98 = v13;
        v99 = BYTE2(v13);
        v100 = BYTE3(v13);
        v101 = BYTE4(v13);
        v102 = BYTE5(v13);
        v53 = memcmp(__s1, &__s2, BYTE6(v13));
        v18 = v95;
        if (!v53)
        {
          goto LABEL_153;
        }

        goto LABEL_26;
      }

      if (v19 == 2)
      {
        v49 = *(v14 + 16);
        v88 = *(v14 + 24);
        sub_1B03B2000(v25, v24);
        v50 = sub_1B0E42A98();
        if (v50)
        {
          v51 = sub_1B0E42AC8();
          if (__OFSUB__(v49, v51))
          {
            goto LABEL_178;
          }

          v50 += v49 - v51;
        }

        v33 = __OFSUB__(v88, v49);
        v52 = v88 - v49;
        if (v33)
        {
          goto LABEL_169;
        }

        result = sub_1B0E42AB8();
        if (!v50)
        {
          goto LABEL_190;
        }

        goto LABEL_113;
      }

      if (v91 < v14)
      {
        goto LABEL_167;
      }

      sub_1B03B2000(v25, v24);
      v64 = sub_1B0E42A98();
      if (!v64)
      {
        goto LABEL_187;
      }

      v65 = v64;
      v66 = sub_1B0E42AC8();
      if (__OFSUB__(v14, v66))
      {
        goto LABEL_173;
      }

      v40 = (v14 - v66 + v65);
      result = sub_1B0E42AB8();
      if (!v40)
      {
        goto LABEL_188;
      }

      goto LABEL_121;
    }

    v42 = *(v25 + 16);
    sub_1B03B2000(v25, v24);
    v43 = sub_1B0E42A98();
    if (v43)
    {
      v44 = v43;
      v45 = sub_1B0E42AC8();
      if (__OFSUB__(v42, v45))
      {
        goto LABEL_165;
      }

      v86 = (v42 - v45 + v44);
    }

    else
    {
      v86 = 0;
    }

    sub_1B0E42AB8();
    v8 = v93;
    v2 = a2;
    if (v19 != 2)
    {
      if (v19 == 1)
      {
        if (v91 < v14)
        {
          goto LABEL_170;
        }

        v54 = sub_1B0E42A98();
        if (v54)
        {
          v55 = sub_1B0E42AC8();
          if (__OFSUB__(v14, v55))
          {
            goto LABEL_181;
          }

          v54 += v14 - v55;
        }

        v56 = sub_1B0E42AB8();
        v57 = (v14 >> 32) - v14;
        if (v56 < v90)
        {
          v57 = v56;
        }

        result = v86;
        if (!v86)
        {
          goto LABEL_198;
        }

        if (!v54)
        {
          goto LABEL_197;
        }

        goto LABEL_147;
      }

      result = v86;
      *__s1 = v14;
      *&__s1[8] = v13;
      __s1[10] = BYTE2(v13);
      __s1[11] = BYTE3(v13);
      __s1[12] = BYTE4(v13);
      __s1[13] = BYTE5(v13);
      if (!v86)
      {
        goto LABEL_184;
      }

LABEL_152:
      v77 = memcmp(result, __s1, BYTE6(v13));
      sub_1B0391D50(v25, v24);
      v18 = v95;
      if (!v77)
      {
        goto LABEL_153;
      }

      goto LABEL_26;
    }

    v69 = *(v14 + 16);
    v80 = *(v14 + 24);
    v54 = sub_1B0E42A98();
    if (v54)
    {
      v70 = sub_1B0E42AC8();
      if (__OFSUB__(v69, v70))
      {
        goto LABEL_179;
      }

      v54 += v69 - v70;
    }

    v33 = __OFSUB__(v80, v69);
    v71 = v80 - v69;
    if (v33)
    {
      goto LABEL_174;
    }

    v72 = sub_1B0E42AB8();
    if (v72 >= v71)
    {
      v57 = v71;
    }

    else
    {
      v57 = v72;
    }

    result = v86;
    if (!v86)
    {
      goto LABEL_194;
    }

    v2 = a2;
    if (!v54)
    {
      goto LABEL_193;
    }

LABEL_147:
    if (result != v54)
    {
      v63 = memcmp(result, v54, v57);
      sub_1B0391D50(v25, v24);
      goto LABEL_149;
    }

    sub_1B0391D50(v14, v13);
    sub_1B0391D50(v25, v24);
    v7 = v83;
    a1 = v84;
    v8 = v93;
    v6 = v85;
  }

  if (v26)
  {
    if (v25 > v25 >> 32)
    {
      goto LABEL_164;
    }

    sub_1B03B2000(v25, v24);
    v46 = sub_1B0E42A98();
    if (v46)
    {
      v47 = v46;
      v48 = sub_1B0E42AC8();
      if (__OFSUB__(v25, v48))
      {
        goto LABEL_166;
      }

      v87 = (v25 - v48 + v47);
    }

    else
    {
      v87 = 0;
    }

    sub_1B0E42AB8();
    v8 = v93;
    v2 = a2;
    if (v19 == 2)
    {
      v73 = *(v14 + 16);
      v81 = *(v14 + 24);
      v54 = sub_1B0E42A98();
      if (v54)
      {
        v74 = sub_1B0E42AC8();
        if (__OFSUB__(v73, v74))
        {
          goto LABEL_180;
        }

        v54 += v73 - v74;
      }

      v33 = __OFSUB__(v81, v73);
      v75 = v81 - v73;
      if (v33)
      {
        goto LABEL_176;
      }

      v76 = sub_1B0E42AB8();
      if (v76 >= v75)
      {
        v57 = v75;
      }

      else
      {
        v57 = v76;
      }

      result = v87;
      if (!v87)
      {
        goto LABEL_196;
      }

      v2 = a2;
      if (!v54)
      {
        goto LABEL_195;
      }
    }

    else
    {
      if (v19 != 1)
      {
        result = v87;
        *__s1 = v14;
        *&__s1[8] = v13;
        __s1[10] = BYTE2(v13);
        __s1[11] = BYTE3(v13);
        __s1[12] = BYTE4(v13);
        __s1[13] = BYTE5(v13);
        if (!v87)
        {
          goto LABEL_189;
        }

        goto LABEL_152;
      }

      if (v91 < v14)
      {
        goto LABEL_175;
      }

      v54 = sub_1B0E42A98();
      if (v54)
      {
        v58 = sub_1B0E42AC8();
        if (__OFSUB__(v14, v58))
        {
          goto LABEL_182;
        }

        v54 += v14 - v58;
      }

      v59 = sub_1B0E42AB8();
      v57 = (v14 >> 32) - v14;
      if (v59 < v90)
      {
        v57 = v59;
      }

      result = v87;
      if (!v87)
      {
        goto LABEL_192;
      }

      if (!v54)
      {
        goto LABEL_191;
      }
    }

    goto LABEL_147;
  }

  *__s1 = v25;
  *&__s1[8] = v24;
  __s1[10] = BYTE2(v24);
  __s1[11] = BYTE3(v24);
  __s1[12] = BYTE4(v24);
  __s1[13] = BYTE5(v24);
  if (!v19)
  {
    goto LABEL_82;
  }

  if (v19 != 1)
  {
    v60 = *(v14 + 16);
    v89 = *(v14 + 24);
    sub_1B03B2000(v25, v24);
    v50 = sub_1B0E42A98();
    if (v50)
    {
      v61 = sub_1B0E42AC8();
      if (__OFSUB__(v60, v61))
      {
        goto LABEL_177;
      }

      v50 += v60 - v61;
    }

    v33 = __OFSUB__(v89, v60);
    v52 = v89 - v60;
    if (v33)
    {
      goto LABEL_171;
    }

    result = sub_1B0E42AB8();
    if (!v50)
    {
      goto LABEL_186;
    }

LABEL_113:
    if (result >= v52)
    {
      v62 = v52;
    }

    else
    {
      v62 = result;
    }

    v63 = memcmp(__s1, v50, v62);
    sub_1B0391D50(v25, v24);
    v2 = a2;
LABEL_149:
    v8 = v93;
    v18 = v95;
    if (!v63)
    {
      goto LABEL_153;
    }

    goto LABEL_26;
  }

  if (v91 < v14)
  {
    goto LABEL_168;
  }

  sub_1B03B2000(v25, v24);
  v37 = sub_1B0E42A98();
  if (v37)
  {
    v38 = v37;
    v39 = sub_1B0E42AC8();
    if (__OFSUB__(v14, v39))
    {
      goto LABEL_172;
    }

    v40 = (v14 - v39 + v38);
    result = sub_1B0E42AB8();
    if (!v40)
    {
      goto LABEL_185;
    }

LABEL_121:
    if (result >= v90)
    {
      v67 = (v14 >> 32) - v14;
    }

    else
    {
      v67 = result;
    }

    v68 = memcmp(__s1, v40, v67);
    sub_1B0391D50(v25, v24);
    v2 = a2;
    v18 = v95;
    if (!v68)
    {
LABEL_153:
      v78 = v14;
      v79 = v13;
      goto LABEL_154;
    }

LABEL_26:
    v17 = (v17 + 1) & v18;
    if (((*(v8 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_27;
  }

  sub_1B0E42AB8();
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  result = sub_1B0E42AB8();
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
  return result;
}

uint64_t sub_1B03D27C0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  v3 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (*(result + 48))
  {
    if (v2 != v3)
    {
      v4 = 0;
    }

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 48))
    {
      return 0;
    }

    v5 = *(v2 + 16);
    if (v5 != *(v3 + 16))
    {
      return 0;
    }

    if (v5)
    {
      v6 = v2 == v3;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v12 = (v2 + 32);
      v13 = (v3 + 32);
      while (v5)
      {
        if (*v13 != *v12)
        {
          return 0;
        }

        ++v12;
        ++v13;
        if (!--v5)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }
  }

LABEL_13:
  sub_1B03D2CA8(result, v31);
  sub_1B03D2CA8(a2, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A20, &qword_1B0EC7688);
  if (swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v8 = *(v25 + 16);
      if (v8 != *(v18 + 16))
      {
        goto LABEL_37;
      }

      if (v8 && v25 != v18)
      {
        v9 = (v25 + 32);
        v10 = (v18 + 32);
        while (*v10 == *v9)
        {
          ++v9;
          ++v10;
          if (!--v8)
          {
            goto LABEL_21;
          }
        }

        goto LABEL_37;
      }

LABEL_21:
      if ((sub_1B03D2E18(v26, v19) & 1) == 0)
      {
LABEL_37:

        goto LABEL_38;
      }

      v16 = sub_1B03D2F14(v27, v20);

      if ((v16 & 1) == 0)
      {
LABEL_38:
        v11 = 0;
        goto LABEL_39;
      }

      if (v29)
      {
        if (v28)
        {
          if (v22)
          {
            v11 = v21 != 0;
LABEL_39:

            __swift_destroy_boxed_opaque_existential_0(v32);
            __swift_destroy_boxed_opaque_existential_0(v31);
            return v11;
          }
        }

        else if (v22)
        {
          v11 = v21 == 0;
          goto LABEL_39;
        }

LABEL_63:
        v11 = 0;
        goto LABEL_39;
      }

      if (v22)
      {
        goto LABEL_63;
      }

      if (((v21 | v28) & 0x8000000000000000) == 0)
      {
        if (v21 == v28)
        {
          v11 = 1;
          goto LABEL_39;
        }

        goto LABEL_63;
      }

      goto LABEL_65;
    }
  }

  if (!swift_dynamicCast())
  {
LABEL_41:
    sub_1B0398EFC(v31, &qword_1EB6E4A28, &qword_1B0EC7690);
    return 0;
  }

  if (!swift_dynamicCast())
  {

    goto LABEL_41;
  }

  if ((sub_1B03D2D68(v24, v17) & 1) == 0)
  {

LABEL_49:

    goto LABEL_50;
  }

  if ((sub_1B03D2D0C(v26, v19) & 1) == 0 || (sub_1B03D2E18(v27, v20) & 1) == 0)
  {

    goto LABEL_49;
  }

  v15 = sub_1B03D2F14(v28, v21);

  if ((v15 & 1) == 0)
  {
LABEL_50:
    v14 = 0;
LABEL_51:

    __swift_destroy_boxed_opaque_existential_0(v32);
    __swift_destroy_boxed_opaque_existential_0(v31);
    return v14;
  }

  if (v30)
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (v23)
  {
LABEL_60:
    v14 = 0;
    goto LABEL_51;
  }

  if (((v22 | v29) & 0x8000000000000000) == 0)
  {
    if (v22 == v29)
    {
LABEL_59:
      v14 = 1;
      goto LABEL_51;
    }

    goto LABEL_60;
  }

LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1B03D2CA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B03D2D0C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v4++;
    v5 = v6;
    v7 = *v3++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03D2D68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 32)
    {
      v6 = *(a1 + i + 56);
      v7 = *(a2 + i + 56);
      result = static ConnectionCommandIDSet.__derived_struct_equals(_:_:)(*(a1 + i + 32), *(a1 + i + 40), *(a1 + i + 48), *(a2 + i + 32), *(a2 + i + 40), *(a2 + i + 48));
      if ((result & 1) == 0)
      {
        break;
      }

      if ((v7 | v6) < 0)
      {
        __break(1u);
        return result;
      }

      if (v7 != v6)
      {
        return 0;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1B03D2E18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      v7 = *(v4 - 2);
      if (*(v3 - 2) == 2)
      {
        if (v7 != 2)
        {
          return 0;
        }
      }

      else if (v7 == 2 || (static FlagsUpdate.__derived_struct_equals(_:_:)(*(v3 - 2) & 0xFFFFFFFF01010101, *(v3 - 8), *(v4 - 2) & 0xFFFFFFFF01010101, *(v4 - 8)) & 1) == 0)
      {
        return 0;
      }

      if (v5)
      {
        if (!v6)
        {
          return 0;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v8 = sub_1B0AFDF14(v5, v6);

        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v6)
      {
        return 0;
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B03D2F14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); *(i - 6) == *(v3 - 6); i += 4)
    {
      v5 = *v3;
      v6 = *i;
      v7 = *(i - 2);
      if (*(v3 - 2) == 2)
      {
        if (v7 != 2)
        {
          return 0;
        }
      }

      else if (v7 == 2 || (static FlagsUpdate.__derived_struct_equals(_:_:)(*(v3 - 2) & 0xFFFFFFFF01010101, *(v3 - 8), *(i - 2) & 0xFFFFFFFF01010101, *(i - 8)) & 1) == 0)
      {
        return 0;
      }

      if (v5)
      {
        if (!v6)
        {
          return 0;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v8 = sub_1B0AFDF14(v5, v6);

        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v6)
      {
        return 0;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B03D3038(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  v4 = *(type metadata accessor for PendingPersistenceUpdates(0) + 28);
  v5 = &a1[v4];
  v6 = &a2[v4];
  if ((sub_1B03D3188(*&a1[v4], *&a2[v4]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MessagesPendingDownload(0);
  sub_1B03D06F8();
  if ((sub_1B0E46E08() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for MessagesPendingDownloadPerPass(0);
  if ((sub_1B03D3188(*&v5[*(v7 + 20)], *&v6[*(v7 + 20)]) & 1) == 0 || (sub_1B0E46E08() & 1) == 0)
  {
    return 0;
  }

  return sub_1B0E46E08();
}

uint64_t sub_1B03D3188(uint64_t result, uint64_t a2)
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
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v29 = (v8 - 1) & v8;
LABEL_13:
    v13 = v10 | (v4 << 6);
    v14 = v3;
    v15 = *(*(v3 + 48) + 4 * v13);
    v16 = (*(v3 + 56) + 24 * v13);
    v17 = *v16;
    v18 = *(v16 + 1);
    v19 = *(v16 + 16);
    v20 = *(v16 + 17);
    v21 = sub_1B03FE284(v15);
    if (v22)
    {
      v23 = (*(a2 + 56) + 24 * v21);
      v24 = *v23;
      v25 = *(v23 + 1);
      v26 = *(v23 + 16);
      v27 = *(v23 + 17) ? 256 : 0;
      v28 = v20 ? 256 : 0;
      result = static MessageToDownload.__derived_struct_equals(_:_:)(v24, v25, v27 | v26, v17, v18, v28 | v19);
      v3 = v14;
      v8 = v29;
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03D3304(uint64_t result, uint64_t a2)
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
  v30 = result + 64;
  v31 = result;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v29 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v32 = (v7 - 1) & v7;
LABEL_13:
    v11 = v8 | (v4 << 6);
    v12 = (*(v3 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = (*(v3 + 56) + 24 * v11);
    v16 = *v15;
    v17 = *(v15 + 1);
    v18 = *(v15 + 16);
    v19 = *(v15 + 17);
    sub_1B03B2000(*v12, v14);
    v20 = sub_1B0AE002C(v13, v14);
    v22 = v21;
    sub_1B0391D50(v13, v14);
    if (v22)
    {
      v23 = (*(a2 + 56) + 24 * v20);
      v24 = *v23;
      v25 = *(v23 + 1);
      v26 = *(v23 + 16);
      v27 = *(v23 + 17) ? 256 : 0;
      v28 = v19 ? 256 : 0;
      result = static MessageToDownload.__derived_struct_equals(_:_:)(v24, v25, v27 | v26, v16, v17, v28 | v18);
      v3 = v31;
      v7 = v32;
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v9 = v4;
  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v29)
    {
      return 1;
    }

    v10 = *(v30 + 8 * v4);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v32 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1B03D34B0(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42A0, "ְ\t");
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if (*a1 != *a2 || (sub_1B03D37DC(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for MessageBatches(0) + 24);
  v15 = a1 + v14;
  v16 = *(v11 + 48);
  sub_1B03B5C80(v15, v13, &unk_1EB6E3670, &unk_1B0E9B260);
  sub_1B03B5C80(a2 + v14, &v13[v16], &unk_1EB6E3670, &unk_1B0E9B260);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      sub_1B0398EFC(v13, &unk_1EB6E3670, &unk_1B0E9B260);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1B03B5C80(v13, v10, &unk_1EB6E3670, &unk_1B0E9B260);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    sub_1B0398EFC(v10, &unk_1EB6E26C0, &unk_1B0E9DE10);
LABEL_8:
    sub_1B0398EFC(v13, &qword_1EB6E42A0, "ְ\t");
    return 0;
  }

  sub_1B03C60A4(&v13[v16], v7, &unk_1EB6E26C0, &unk_1B0E9DE10);
  sub_1B03D06F8();
  v19 = sub_1B0E46E08();
  sub_1B0398EFC(v7, &unk_1EB6E26C0, &unk_1B0E9DE10);
  sub_1B0398EFC(v10, &unk_1EB6E26C0, &unk_1B0E9DE10);
  sub_1B0398EFC(v13, &unk_1EB6E3670, &unk_1B0E9B260);
  return (v19 & 1) != 0;
}

uint64_t sub_1B03D37DC(int32x2_t *a1, int32x2_t *a2)
{
  v2 = a1[2];
  if (*&v2 != *&a2[2])
  {
    return 0;
  }

  if (!*&v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 4;
  v4 = a2 + 4;
  do
  {
    v5 = *v4++;
    v6 = v5;
    v7 = *v3++;
    v8 = vceq_s32(v6, v7);
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --*&v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t sub_1B03D3850(uint64_t a1, uint64_t a2)
{
  v33 = _s15MissingMessagesO8CompleteVMa(0);
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s15MissingMessagesO10IncompleteVMa(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s15MissingMessagesOMa(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4968, &qword_1B0EC6B38);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v33 - v18;
  v21 = *(v20 + 56);
  sub_1B03D3DBC(a1, &v33 - v18, _s15MissingMessagesOMa);
  sub_1B03D3DBC(a2, &v19[v21], _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B03D3DBC(v19, v16, _s15MissingMessagesOMa);
    if (!swift_getEnumCaseMultiPayload())
    {
      v24 = *v16 ^ v19[v21];
      sub_1B03D3F5C(v19, _s15MissingMessagesOMa);
      v23 = v24 ^ 1;
      return v23 & 1;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1B03D3DBC(v19, v10, _s15MissingMessagesOMa);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v27 = _s15MissingMessagesO8CompleteVMa;
      v28 = v10;
      goto LABEL_13;
    }

    v25 = v34;
    sub_1B03D3E8C(&v19[v21], v34, _s15MissingMessagesO8CompleteVMa);
    v26 = *(v25 + 4);
    if (v10[4])
    {
      if (!*(v25 + 4))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (*v25 != *v10)
      {
        v26 = 1;
      }

      if (v26)
      {
        goto LABEL_21;
      }
    }

    sub_1B03D06F8();
    if (sub_1B0E46E08())
    {
      v29 = *(v33 + 24);
      v30 = v10[v29];
      v31 = *(v25 + v29);
      sub_1B03D3F5C(v25, _s15MissingMessagesO8CompleteVMa);
      if (v30 == v31)
      {
        sub_1B03D3F5C(v10, _s15MissingMessagesO8CompleteVMa);
        sub_1B03D3F5C(v19, _s15MissingMessagesOMa);
        v23 = 1;
        return v23 & 1;
      }

      goto LABEL_22;
    }

LABEL_21:
    sub_1B03D3F5C(v25, _s15MissingMessagesO8CompleteVMa);
LABEL_22:
    sub_1B03D3F5C(v10, _s15MissingMessagesO8CompleteVMa);
    sub_1B03D3F5C(v19, _s15MissingMessagesOMa);
    goto LABEL_23;
  }

  sub_1B03D3DBC(v19, v13, _s15MissingMessagesOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27 = _s15MissingMessagesO10IncompleteVMa;
    v28 = v13;
LABEL_13:
    sub_1B03D3F5C(v28, v27);
LABEL_14:
    sub_1B0398EFC(v19, &qword_1EB6E4968, &qword_1B0EC6B38);
LABEL_23:
    v23 = 0;
    return v23 & 1;
  }

  sub_1B03D3E8C(&v19[v21], v7, _s15MissingMessagesO10IncompleteVMa);
  v23 = sub_1B0B4DC88(v13, v7);
  sub_1B03D3F5C(v7, _s15MissingMessagesO10IncompleteVMa);
  sub_1B03D3F5C(v13, _s15MissingMessagesO10IncompleteVMa);
  sub_1B03D3F5C(v19, _s15MissingMessagesOMa);
  return v23 & 1;
}