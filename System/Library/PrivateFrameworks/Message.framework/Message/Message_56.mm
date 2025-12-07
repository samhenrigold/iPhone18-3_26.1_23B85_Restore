uint64_t sub_1B0B910E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v27 = v2;

  v10 = sub_1B0E46138();
  v11 = swift_unknownObjectRetain();
  sub_1B0B02EE4(v11, v10);
  v13 = v12;
  v30 = v12;
  sub_1B0E46C28();
  v14 = *(*a2 + 96);
  swift_beginAccess();
  v28 = a2;
  v15 = v14;
  sub_1B03906B8(a2 + v14, v9, type metadata accessor for MoveAndCopyMessages.CommandID);

  sub_1B0B50244(v29);
  sub_1B0390514(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
  v16 = sub_1B0E46CB8();
  v17 = -1 << *(v13 + 32);
  v18 = v16 & ~v17;
  if ((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    while (1)
    {
      v20 = *(*(v13 + 48) + 8 * v18);
      v21 = *(*v20 + 96);
      swift_beginAccess();
      sub_1B03906B8(v20 + v21, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B03906B8(v28 + v15, v6, type metadata accessor for MoveAndCopyMessages.CommandID);
      v22 = sub_1B0B57E4C(v9, v6);
      sub_1B0390514(v6, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0390514(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      if (v22)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v23 = *(*(v13 + 48) + 8 * v18);
  sub_1B0B9192C(v18);
  sub_1B03906B8(v28 + v15, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
  v24 = *(*v23 + 96);
  swift_beginAccess();
  sub_1B03906B8(v23 + v24, v6, type metadata accessor for MoveAndCopyMessages.CommandID);
  v25 = sub_1B0B57E4C(v9, v6);
  sub_1B0390514(v6, type metadata accessor for MoveAndCopyMessages.CommandID);
  result = sub_1B0390514(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
  if (v25)
  {
    *v27 = v30;
    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0B91420(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B0E460C8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = 16 * v6;
        v11 = *(*(v3 + 48) + 16 * v6 + 8);
        sub_1B0E46C28();
        MEMORY[0x1B2728D70](v11 | (v11 << 32));
        v12 = sub_1B0E46CB8() & v7;
        if (v2 >= v9)
        {
          if (v12 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v12 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v12)
        {
LABEL_11:
          v13 = *(v3 + 48);
          v14 = (v13 + 16 * v2);
          v15 = (v13 + v10);
          if (16 * v2 != v10 || (v2 = v6, v14 >= v15 + 1))
          {
            *v14 = *v15;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1B0B915D8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B0E460C8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 16 * v6 + 8);
        sub_1B0E46C28();
        MEMORY[0x1B2728D70](v10);
        v11 = sub_1B0E46CB8() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1B0B91784(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B0E460C8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1B0E46C28();
        sub_1B0E46C88();
        v10 = sub_1B0E46CB8() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + 4 * v2);
          v13 = (v11 + 4 * v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1B0B9192C(int64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v58 = &v57 - v4;
  v68 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v68);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v57 - v8;
  v10 = *v1;
  v11 = *v1 + 56;
  v12 = -1 << *(*v1 + 32);
  v13 = (a1 + 1) & ~v12;
  if (((1 << v13) & *(v11 + 8 * (v13 >> 6))) != 0)
  {
    v14 = ~v12;

    v15 = sub_1B0E460C8();
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) != 0)
    {
      v63 = v10;
      v62 = v11;
      v61 = v6;
      v60 = v9;
      v67 = v14;
      v66 = (v15 + 1) & v14;
      do
      {
        v16 = *(*(v10 + 48) + 8 * v13);
        sub_1B0E46C28();
        v17 = *(*v16 + 96);
        swift_beginAccess();
        sub_1B03906B8(v16 + v17, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1B03906B8(v9, v6, type metadata accessor for MoveAndCopyMessages.CommandID);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v70 = v16;
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload == 2)
          {
            v64 = v13;
            v65 = a1;
            v69 = *v6;
            v20 = *(v6 + 2);
            v21 = *(v6 + 2);
            MEMORY[0x1B2728D70](3);
            MEMORY[0x1B2728D70](v20 | (v20 << 32));
            v22 = 1 << *(v21 + 32);
            if (v22 < 64)
            {
              v23 = ~(-1 << v22);
            }

            else
            {
              v23 = -1;
            }

            v24 = v23 & *(v21 + 64);
            v25 = (v22 + 63) >> 6;

            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v26 = 0;
            v27 = 0;
            if (v24)
            {
              while (1)
              {
                v28 = v27;
LABEL_18:
                v29 = (*(v21 + 56) + 16 * (__clz(__rbit64(v24)) | (v28 << 6)));
                v30 = *v29;
                v31 = v29[1];
                sub_1B03B2000(*v29, v31);
                if (v31 >> 60 == 15)
                {
                  break;
                }

                v24 &= v24 - 1;
                v73 = v78;
                v74 = v79;
                v75 = v80;
                v72 = v77;
                v71 = v76;
                sub_1B0E46C88();
                sub_1B0E42F48();
                sub_1B0391D50(v30, v31);
                v26 ^= sub_1B0E46CB8();
                v27 = v28;
                if (!v24)
                {
                  goto LABEL_15;
                }
              }
            }

            else
            {
              while (1)
              {
LABEL_15:
                v28 = v27 + 1;
                if (__OFADD__(v27, 1))
                {
                  goto LABEL_48;
                }

                if (v28 >= v25)
                {
                  break;
                }

                v24 = *(v21 + 64 + 8 * v28);
                ++v27;
                if (v24)
                {
                  goto LABEL_18;
                }
              }
            }

            MEMORY[0x1B2728D70](v26);

            a1 = v65;
            v10 = v63;
            v11 = v62;
            v6 = v61;
            v9 = v60;
            v13 = v64;
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
            v64 = v13;
            v65 = a1;
            v59 = *v6;
            v32 = *(v6 + 2);
            v33 = *(v6 + 2);
            MEMORY[0x1B2728D70](2);
            MEMORY[0x1B2728D70](v32 | (v32 << 32));
            v34 = v33 + 64;
            v35 = 1 << *(v33 + 32);
            if (v35 < 64)
            {
              v36 = ~(-1 << v35);
            }

            else
            {
              v36 = -1;
            }

            v37 = v36 & *(v33 + 64);
            v38 = (v35 + 63) >> 6;

            v69 = v33;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v39 = 0;
            for (i = 0; v37; v39 = sub_1B0E46CB8() ^ v41)
            {
              v41 = v39;
              v42 = i;
LABEL_30:
              v43 = __clz(__rbit64(v37));
              v37 &= v37 - 1;
              v44 = (*(v69 + 56) + 24 * (v43 | (v42 << 6)));
              v45 = *v44;
              v47 = *(v44 + 1);
              v46 = *(v44 + 2);
              sub_1B03B2000(v47, v46);
              v73 = v78;
              v74 = v79;
              v75 = v80;
              v72 = v77;
              v71 = v76;
              sub_1B0E46C88();
              MEMORY[0x1B2728D70](v45);
              sub_1B03B2000(v47, v46);
              sub_1B0E42F48();
              sub_1B0391D50(v47, v46);
              sub_1B0391D50(v47, v46);
            }

            while (1)
            {
              v42 = i + 1;
              if (__OFADD__(i, 1))
              {
                break;
              }

              if (v42 >= v38)
              {

                MEMORY[0x1B2728D70](v39);

                a1 = v65;
                v10 = v63;
                v11 = v62;
                v6 = v61;
                v9 = v60;
                v13 = v64;
                goto LABEL_35;
              }

              v37 = *(v34 + 8 * v42);
              ++i;
              if (v37)
              {
                v41 = v39;
                i = v42;
                goto LABEL_30;
              }
            }

            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            return;
          }

          v19 = v58;
          sub_1B074BA2C(v6, v58);
          MEMORY[0x1B2728D70](0);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
          sub_1B0B0D328();
          sub_1B0E447C8();
          sub_1B0398EFC(v19, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        }

LABEL_35:
        sub_1B0390514(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
        v48 = sub_1B0E46CB8();

        v49 = v67;
        v50 = v48 & v67;
        if (a1 >= v66)
        {
          if (v50 < v66)
          {
            goto LABEL_5;
          }
        }

        else if (v50 >= v66)
        {
          goto LABEL_40;
        }

        if (a1 >= v50)
        {
LABEL_40:
          v51 = *(v10 + 48);
          v52 = (v51 + 8 * a1);
          v53 = (v51 + 8 * v13);
          if (a1 != v13 || v52 >= v53 + 1)
          {
            *v52 = *v53;
            a1 = v13;
          }
        }

LABEL_5:
        v13 = (v13 + 1) & v49;
      }

      while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
    }

    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v54 = *(v10 + 16);
  v55 = __OFSUB__(v54, 1);
  v56 = v54 - 1;
  if (v55)
  {
    goto LABEL_49;
  }

  *(v10 + 16) = v56;
  ++*(v10 + 36);
}

void sub_1B0B920BC(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v61[0] = v61 - v4;
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v66 = v61 - v10;
  v11 = *v1;
  v12 = *v1 + 56;
  v13 = -1 << *(*v1 + 32);
  v14 = (a1 + 1) & ~v13;
  v15 = v14 >> 6;
  v16 = 1 << v14;
  if (((1 << v14) & *(v12 + 8 * (v14 >> 6))) != 0)
  {
    v17 = (a1 + 1) & ~v13;
    v18 = ~v13;

    v19 = sub_1B0E460C8();
    if ((*(v12 + 8 * v15) & v16) != 0)
    {
      v20 = *(v6 + 72);
      v65 = v11;
      v64 = v12;
      v63 = v5;
      v62 = v8;
      v21 = v66;
      v22 = v17;
      v69 = v18;
      v68 = (v19 + 1) & v18;
      v70 = v20;
      do
      {
        v23 = *(v11 + 48);
        v72 = v20 * v22;
        sub_1B03906B8(v23 + v20 * v22, v21, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1B0E46C28();
        sub_1B03906B8(v21, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v73 = v22;
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload != 2)
          {
            MEMORY[0x1B2728D70](1);
            goto LABEL_38;
          }

          v67 = a1;
          v71 = *v8;
          v26 = *(v8 + 2);
          v27 = *(v8 + 2);
          MEMORY[0x1B2728D70](3);
          MEMORY[0x1B2728D70](v26 | (v26 << 32));
          v28 = 1 << *(v27 + 32);
          if (v28 < 64)
          {
            v29 = ~(-1 << v28);
          }

          else
          {
            v29 = -1;
          }

          v30 = v29 & *(v27 + 64);
          v31 = (v28 + 63) >> 6;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v32 = 0;
          v33 = 0;
          if (v30)
          {
            while (1)
            {
              v34 = v33;
LABEL_19:
              v35 = (*(v27 + 56) + 16 * (__clz(__rbit64(v30)) | (v34 << 6)));
              v37 = *v35;
              v36 = v35[1];
              sub_1B03B2000(*v35, v36);
              if (v36 >> 60 == 15)
              {
                break;
              }

              v30 &= v30 - 1;
              v76 = v81;
              v77 = v82;
              v78 = v83;
              v74 = v79;
              v75 = v80;
              sub_1B0E46C88();
              sub_1B0E42F48();
              sub_1B0391D50(v37, v36);
              v32 ^= sub_1B0E46CB8();
              v33 = v34;
              if (!v30)
              {
                goto LABEL_16;
              }
            }
          }

          else
          {
            while (1)
            {
LABEL_16:
              v34 = v33 + 1;
              if (__OFADD__(v33, 1))
              {
                goto LABEL_52;
              }

              if (v34 >= v31)
              {
                break;
              }

              v30 = *(v27 + 64 + 8 * v34);
              ++v33;
              if (v30)
              {
                goto LABEL_19;
              }
            }
          }

          MEMORY[0x1B2728D70](v32);

LABEL_36:

          v11 = v65;
          a1 = v67;
          v12 = v64;
          v8 = v62;
        }

        else
        {
          if (EnumCaseMultiPayload)
          {
            v67 = a1;
            v61[1] = *v8;
            v38 = *(v8 + 2);
            v39 = *(v8 + 2);
            MEMORY[0x1B2728D70](2);
            MEMORY[0x1B2728D70](v38 | (v38 << 32));
            v40 = v39 + 64;
            v41 = 1 << *(v39 + 32);
            if (v41 < 64)
            {
              v42 = ~(-1 << v41);
            }

            else
            {
              v42 = -1;
            }

            v43 = v42 & *(v39 + 64);
            v44 = (v41 + 63) >> 6;
            v71 = v39;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v45 = 0;
            for (i = 0; v43; v45 ^= sub_1B0E46CB8())
            {
              v47 = i;
LABEL_31:
              v48 = __clz(__rbit64(v43));
              v43 &= v43 - 1;
              v49 = (*(v71 + 56) + 24 * (v48 | (v47 << 6)));
              v50 = *v49;
              v52 = *(v49 + 1);
              v51 = *(v49 + 2);
              sub_1B03B2000(v52, v51);
              v76 = v81;
              v77 = v82;
              v78 = v83;
              v74 = v79;
              v75 = v80;
              sub_1B0E46C88();
              MEMORY[0x1B2728D70](v50);
              sub_1B03B2000(v52, v51);
              sub_1B0E42F48();
              sub_1B0391D50(v52, v51);
              sub_1B0391D50(v52, v51);
            }

            while (1)
            {
              v47 = i + 1;
              if (__OFADD__(i, 1))
              {
                break;
              }

              if (v47 >= v44)
              {

                MEMORY[0x1B2728D70](v45);

                goto LABEL_36;
              }

              v43 = *(v40 + 8 * v47);
              ++i;
              if (v43)
              {
                i = v47;
                goto LABEL_31;
              }
            }

            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            return;
          }

          v25 = v61[0];
          sub_1B074BA2C(v8, v61[0]);
          MEMORY[0x1B2728D70](0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
          sub_1B0B0D328();
          sub_1B0E447C8();
          sub_1B0398EFC(v25, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        }

        v21 = v66;
LABEL_38:
        v53 = sub_1B0E46CB8();
        sub_1B0390514(v21, type metadata accessor for MoveAndCopyMessages.CommandID);
        v54 = v69;
        v55 = v53 & v69;
        if (a1 >= v68)
        {
          v56 = v73;
          v20 = v70;
          if (v55 < v68)
          {
            goto LABEL_6;
          }

LABEL_42:
          if (a1 < v55)
          {
            goto LABEL_6;
          }

          goto LABEL_43;
        }

        v56 = v73;
        v20 = v70;
        if (v55 < v68)
        {
          goto LABEL_42;
        }

LABEL_43:
        v57 = v20 * a1;
        if ((v20 * a1) < v72 || *(v11 + 48) + v20 * a1 >= *(v11 + 48) + v72 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v56;
          if (v57 == v72)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v20 = v70;
        a1 = v56;
LABEL_6:
        v22 = (v56 + 1) & v54;
      }

      while (((*(v12 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0);
    }

    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v58 = *(v11 + 16);
  v59 = __OFSUB__(v58, 1);
  v60 = v58 - 1;
  if (v59)
  {
    goto LABEL_53;
  }

  *(v11 + 16) = v60;
  ++*(v11 + 36);
}

unint64_t sub_1B0B927FC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B0E460C8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        sub_1B0E46C28();
        sub_1B03B2000(v11, v12);
        sub_1B0E42F48();
        v13 = sub_1B0E46CB8();
        sub_1B0391D50(v11, v12);
        v14 = v13 & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 16 * v2);
          v17 = (v15 + 16 * v6);
          if (v2 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1B0B92A00(uint64_t a1, void (*a2)(void))
{
  v4 = a1;
  v5 = *v2;
  sub_1B0E46C28();
  sub_1B0E46C88();
  v6 = sub_1B0E46CB8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != v4)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    v15 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      a2();
      v13 = v15;
    }

    v10 = *(*(v13 + 48) + 4 * v8);
    sub_1B0B91784(v8);
    v11 = 0;
    *v2 = v15;
  }

  else
  {
LABEL_5:
    v10 = 0;
    v11 = 1;
  }

  return v10 | (v11 << 32);
}

uint64_t sub_1B0B92B34(uint64_t a1)
{
  v3 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v10 = *v1;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v11 = sub_1B0E46178();

    if (v11)
    {
      v12 = sub_1B0B910E0(v10, a1);

      return v12;
    }

    return 0;
  }

  v27 = v1;
  sub_1B0E46C28();
  v14 = *(*a1 + 96);
  swift_beginAccess();
  v28 = v14;
  sub_1B03906B8(a1 + v14, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0B50244(v30);
  sub_1B0390514(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
  v15 = sub_1B0E46CB8();
  v16 = -1 << *(v9 + 32);
  v17 = v15 & ~v16;
  if (((*(v9 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
    return 0;
  }

  v18 = ~v16;
  while (1)
  {
    v19 = *(*(v9 + 48) + 8 * v17);
    v20 = *(*v19 + 96);
    swift_beginAccess();
    sub_1B03906B8(v19 + v20, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B03906B8(a1 + v28, v5, type metadata accessor for MoveAndCopyMessages.CommandID);
    v21 = sub_1B0B57E4C(v8, v5);
    sub_1B0390514(v5, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0390514(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    if (v21)
    {
      break;
    }

    v17 = (v17 + 1) & v18;
    if (((*(v9 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      return 0;
    }
  }

  v22 = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v22;
  v29 = *v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B0B077AC();
    v24 = v29;
  }

  v25 = *(*(v24 + 48) + 8 * v17);
  sub_1B0B9192C(v17);
  result = v25;
  *v27 = v29;
  return result;
}

uint64_t sub_1B0B92E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1B0E46C28();
  sub_1B0B50244(v24);
  v10 = sub_1B0E46CB8();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v21 = v2;
    v22 = v5;
    v23 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1B03906B8(*(v9 + 48) + v14 * v12, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      v15 = sub_1B0B57E4C(v8, a1);
      sub_1B0390514(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a2 = v23;
        goto LABEL_10;
      }
    }

    v17 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    v24[0] = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B0B07910();
      v19 = v24[0];
    }

    a2 = v23;
    sub_1B0B950AC(*(v19 + 48) + v14 * v12, v23, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B920BC(v12);
    v16 = 0;
    *v17 = v24[0];
LABEL_10:
    v5 = v22;
  }

  else
  {
    v16 = 1;
  }

  return (*(v6 + 56))(a2, v16, 1, v5);
}

uint64_t sub_1B0B93050@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v90 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  sub_1B0E46C28();
  sub_1B0E42F48();
  result = sub_1B0E46CB8();
  v8 = (v6 + 56);
  v9 = -1 << *(v6 + 32);
  v10 = result & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_140:
    *a3 = xmmword_1B0EC58F0;
    return result;
  }

  v11 = ~v9;
  v12 = a2 >> 62;
  if (a1)
  {
    v13 = 0;
  }

  else
  {
    v13 = a2 == 0xC000000000000000;
  }

  v14 = !v13;
  v82 = v14;
  v15 = __OFSUB__(HIDWORD(a1), a1);
  v79 = v15;
  v78 = v6;
  v75 = (a1 >> 32) - a1;
  v76 = a1 >> 32;
  v80 = (v6 + 56);
  v81 = v11;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || a2 >> 62 != 3;
      if (((v22 | v82) & 1) == 0)
      {
        goto LABEL_142;
      }

LABEL_36:
      v23 = 0;
      if (v12 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_33;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_146;
      }

      if (v12 > 1)
      {
        goto LABEL_37;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_145;
      }

      v23 = v23;
      if (v12 > 1)
      {
LABEL_37:
        if (v12 != 2)
        {
          if (!v23)
          {
            goto LABEL_142;
          }

          goto LABEL_13;
        }

        v29 = *(a1 + 16);
        v28 = *(a1 + 24);
        v26 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v26)
        {
          goto LABEL_144;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v12 > 1)
      {
        goto LABEL_37;
      }
    }

LABEL_33:
    v27 = BYTE6(a2);
    if (v12)
    {
      v27 = HIDWORD(a1) - a1;
      if (v79)
      {
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_142;
    }

    if (v19 > 1)
    {
      break;
    }

    if (v19)
    {
      v8 = v18;
      if (v18 > v18 >> 32)
      {
        goto LABEL_147;
      }

      sub_1B03B2000(v18, v17);
      v39 = sub_1B0E42A98();
      if (v39)
      {
        v40 = v39;
        v41 = sub_1B0E42AC8();
        if (__OFSUB__(v18, v41))
        {
          goto LABEL_149;
        }

        v38 = (v18 - v41 + v40);
      }

      else
      {
        v38 = 0;
      }

      sub_1B0E42AB8();
      v8 = v80;
      if (v12 == 2)
      {
        v64 = *(a1 + 16);
        v73 = *(a1 + 24);
        v48 = sub_1B0E42A98();
        if (v48)
        {
          v65 = sub_1B0E42AC8();
          if (__OFSUB__(v64, v65))
          {
            goto LABEL_165;
          }

          v48 += v64 - v65;
        }

        v26 = __OFSUB__(v73, v64);
        v66 = v73 - v64;
        if (v26)
        {
          goto LABEL_160;
        }

        result = sub_1B0E42AB8();
        if (result >= v66)
        {
          v50 = v66;
        }

        else
        {
          v50 = result;
        }

        if (!v38)
        {
          goto LABEL_180;
        }

        v8 = v80;
        if (!v48)
        {
          goto LABEL_179;
        }
      }

      else
      {
        if (v12 != 1)
        {
          *__s1 = a1;
          *&__s1[8] = a2;
          __s1[10] = BYTE2(a2);
          __s1[11] = BYTE3(a2);
          __s1[12] = BYTE4(a2);
          __s1[13] = BYTE5(a2);
          if (!v38)
          {
            goto LABEL_172;
          }

          goto LABEL_136;
        }

        if (v76 < a1)
        {
          goto LABEL_159;
        }

        v48 = sub_1B0E42A98();
        if (v48)
        {
          v51 = sub_1B0E42AC8();
          if (__OFSUB__(a1, v51))
          {
            goto LABEL_166;
          }

          v48 += a1 - v51;
        }

        result = sub_1B0E42AB8();
        v50 = (a1 >> 32) - a1;
        if (result < v75)
        {
          v50 = result;
        }

        if (!v38)
        {
          goto LABEL_182;
        }

        if (!v48)
        {
          goto LABEL_181;
        }
      }

      goto LABEL_133;
    }

    *__s1 = v18;
    *&__s1[8] = v17;
    __s1[10] = BYTE2(v17);
    __s1[11] = BYTE3(v17);
    __s1[12] = BYTE4(v17);
    __s1[13] = BYTE5(v17);
    if (!v12)
    {
      goto LABEL_69;
    }

    if (v12 == 1)
    {
      if (v76 < a1)
      {
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
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
      }

      sub_1B03B2000(v18, v17);
      v30 = sub_1B0E42A98();
      if (!v30)
      {
        goto LABEL_173;
      }

      v31 = v30;
      v32 = sub_1B0E42AC8();
      if (__OFSUB__(a1, v32))
      {
        goto LABEL_156;
      }

      v33 = (a1 - v32 + v31);
      v34 = sub_1B0E42AB8();
      if (!v33)
      {
        goto LABEL_171;
      }

      goto LABEL_108;
    }

    v53 = *(a1 + 16);
    v52 = *(a1 + 24);
    sub_1B03B2000(v18, v17);
    v44 = sub_1B0E42A98();
    if (v44)
    {
      v54 = sub_1B0E42AC8();
      if (__OFSUB__(v53, v54))
      {
        goto LABEL_162;
      }

      v44 += v53 - v54;
    }

    v26 = __OFSUB__(v52, v53);
    v46 = v52 - v53;
    if (v26)
    {
      goto LABEL_154;
    }

    v47 = sub_1B0E42AB8();
    v6 = v78;
    if (!v44)
    {
      goto LABEL_169;
    }

LABEL_100:
    if (v47 >= v46)
    {
      v55 = v46;
    }

    else
    {
      v55 = v47;
    }

    v56 = memcmp(__s1, v44, v55);
    result = sub_1B0391D50(v18, v17);
    v8 = v80;
LABEL_138:
    v11 = v81;
    if (!v56)
    {
      goto LABEL_142;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_140;
    }
  }

  if (v19 == 2)
  {
    v8 = *(v18 + 16);
    sub_1B03B2000(v18, v17);
    v35 = sub_1B0E42A98();
    if (v35)
    {
      v36 = v35;
      v37 = sub_1B0E42AC8();
      if (__OFSUB__(v8, v37))
      {
        goto LABEL_148;
      }

      v38 = v8 + v36 - v37;
    }

    else
    {
      v38 = 0;
    }

    result = sub_1B0E42AB8();
    v8 = v80;
    if (v12 != 2)
    {
      if (v12 == 1)
      {
        if (v76 < a1)
        {
          goto LABEL_153;
        }

        v48 = sub_1B0E42A98();
        if (v48)
        {
          v49 = sub_1B0E42AC8();
          if (__OFSUB__(a1, v49))
          {
            goto LABEL_164;
          }

          v48 += a1 - v49;
        }

        result = sub_1B0E42AB8();
        v50 = (a1 >> 32) - a1;
        if (result < v75)
        {
          v50 = result;
        }

        if (!v38)
        {
          goto LABEL_176;
        }

        if (!v48)
        {
          goto LABEL_175;
        }

        goto LABEL_133;
      }

      *__s1 = a1;
      *&__s1[8] = a2;
      __s1[10] = BYTE2(a2);
      __s1[11] = BYTE3(a2);
      __s1[12] = BYTE4(a2);
      __s1[13] = BYTE5(a2);
      if (!v38)
      {
        goto LABEL_174;
      }

LABEL_136:
      v69 = __s1;
      v68 = v38;
      v67 = BYTE6(a2);
LABEL_137:
      v56 = memcmp(v68, v69, v67);
      result = sub_1B0391D50(v18, v17);
      v6 = v78;
      goto LABEL_138;
    }

    v61 = *(a1 + 16);
    v72 = *(a1 + 24);
    v48 = sub_1B0E42A98();
    if (v48)
    {
      v62 = sub_1B0E42AC8();
      if (__OFSUB__(v61, v62))
      {
        goto LABEL_163;
      }

      v48 += v61 - v62;
    }

    v26 = __OFSUB__(v72, v61);
    v63 = v72 - v61;
    if (v26)
    {
      goto LABEL_158;
    }

    result = sub_1B0E42AB8();
    if (result >= v63)
    {
      v50 = v63;
    }

    else
    {
      v50 = result;
    }

    if (!v38)
    {
      goto LABEL_178;
    }

    v8 = v80;
    if (!v48)
    {
      goto LABEL_177;
    }

LABEL_133:
    if (v38 != v48)
    {
      v67 = v50;
      v68 = v38;
      v69 = v48;
      goto LABEL_137;
    }

    sub_1B0391D50(v18, v17);
LABEL_142:
    v8 = v74;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = *v74;
    *__s1 = *v74;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_143:
      *a3 = *(*(v71 + 48) + 16 * v10);
      result = sub_1B0B927FC(v10);
      *v8 = *__s1;
      return result;
    }

LABEL_150:
    sub_1B0B07650();
    v71 = *__s1;
    goto LABEL_143;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v12)
  {
LABEL_69:
    __s2 = a1;
    v84 = a2;
    v85 = BYTE2(a2);
    v86 = BYTE3(a2);
    v87 = BYTE4(a2);
    v88 = BYTE5(a2);
    result = memcmp(__s1, &__s2, BYTE6(a2));
    v11 = v81;
    if (!result)
    {
      goto LABEL_142;
    }

    goto LABEL_13;
  }

  if (v12 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    sub_1B03B2000(v18, v17);
    v44 = sub_1B0E42A98();
    if (v44)
    {
      v45 = sub_1B0E42AC8();
      if (__OFSUB__(v43, v45))
      {
        goto LABEL_161;
      }

      v44 += v43 - v45;
    }

    v26 = __OFSUB__(v42, v43);
    v46 = v42 - v43;
    if (v26)
    {
      goto LABEL_155;
    }

    v47 = sub_1B0E42AB8();
    v6 = v78;
    if (!v44)
    {
      goto LABEL_170;
    }

    goto LABEL_100;
  }

  if (v76 < a1)
  {
    goto LABEL_152;
  }

  sub_1B03B2000(v18, v17);
  v57 = sub_1B0E42A98();
  if (v57)
  {
    v58 = v57;
    v59 = sub_1B0E42AC8();
    if (__OFSUB__(a1, v59))
    {
      goto LABEL_157;
    }

    v33 = (a1 - v59 + v58);
    v34 = sub_1B0E42AB8();
    if (!v33)
    {
      goto LABEL_168;
    }

LABEL_108:
    if (v34 >= v75)
    {
      v60 = (a1 >> 32) - a1;
    }

    else
    {
      v60 = v34;
    }

    v56 = memcmp(__s1, v33, v60);
    result = sub_1B0391D50(v18, v17);
    goto LABEL_138;
  }

  sub_1B0E42AB8();
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
  result = sub_1B0E42AB8();
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
  return result;
}

uint64_t sub_1B0B9397C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a2);
  v6 = sub_1B0E46CB8();
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
    if (v10[1] == a2)
    {
      v11 = *v10;
      v12 = *(*v10 + 16);
      if (v12 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_3:
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  if (v12)
  {
    v13 = v11 == a1;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = (v11 + 32);
    v15 = (a1 + 32);
    while (v12)
    {
      if (*v14 != *v15)
      {
        goto LABEL_3;
      }

      ++v14;
      ++v15;
      if (!--v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_14:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_19:
    sub_1B0B0722C();
    v17 = v20;
  }

  v18 = *(*(v17 + 48) + 16 * v8);
  sub_1B0B915D8(v8);
  *v2 = v20;
  return v18;
}

uint64_t sub_1B0B93AEC(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = *v3;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a2 | (a2 << 32));
  v7 = sub_1B0E46CB8();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v6 + 48) + 16 * v9);
    if ((v11[2] | (v11[2] << 32)) == (a2 | (a2 << 32)))
    {
      v12 = *v11;
      v13 = *(*v11 + 16);
      if (v13 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_3:
    v9 = (v9 + 1) & v10;
    if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  if (v13)
  {
    v14 = v12 == a1;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = (v12 + 32);
    v16 = (a1 + 32);
    while (v13)
    {
      if (*v15 != *v16)
      {
        goto LABEL_3;
      }

      ++v15;
      ++v16;
      if (!--v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_14:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  v21 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_19:
    sub_1B0B070C8();
    v18 = v21;
  }

  v19 = *(*(v18 + 48) + 16 * v9);
  sub_1B0B91420(v9);
  *v3 = v21;
  return v19;
}

uint64_t sub_1B0B93C70(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1B0B9443C(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1B0B941BC((*a3 + 4 * *v77), (*a3 + 4 * *v79), (*a3 + 4 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 4 * v17);
            *(v20 + 4 * v17) = *(v20 + 4 * v16);
            *(v20 + 4 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0AFF300(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1B0AFF300((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1B0B941BC((*a3 + 4 * *v70), (*a3 + 4 * *v72), (*a3 + 4 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 4 * v7 - 4;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 4 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 4;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1B0B941BC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 4;
    v5 -= 4;
    v18 = v14;
    do
    {
      v19 = v5 + 4;
      v21 = *(v18 - 4);
      v18 -= 4;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 4, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 4;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFFCLL])
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t sub_1B0B943B0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B9443C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1B0B94450(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4300, &unk_1B0ED5CC0);
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

void sub_1B0B94778(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      if (sub_1B0E46118() != *(a4 + 36))
      {
        __break(1u);
        goto LABEL_23;
      }

      v27 = sub_1B0E46128();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
      swift_dynamicCast();
      v16 = v28[0];
      sub_1B0E46C28();
      a2 = *(*v16 + 96);
      swift_beginAccess();
      v26 = v16;
      v17 = a2;
      sub_1B03906B8(v16 + a2, v14, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B50244(v28);
      sub_1B0390514(v14, type metadata accessor for MoveAndCopyMessages.CommandID);
      v18 = sub_1B0E46CB8();
      v19 = a4 + 56;
      v20 = -1 << *(a4 + 32);
      a1 = v18 & ~v20;
      if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
      {
        v21 = ~v20;
        do
        {
          a2 = a4;
          v22 = *(*(a4 + 48) + 8 * a1);
          v23 = *(*v22 + 96);
          swift_beginAccess();
          sub_1B03906B8(v22 + v23, v14, type metadata accessor for MoveAndCopyMessages.CommandID);
          sub_1B03906B8(v26 + v17, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
          v24 = sub_1B0B57E4C(v14, v10);
          sub_1B0390514(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
          sub_1B0390514(v14, type metadata accessor for MoveAndCopyMessages.CommandID);
          if (v24)
          {
            goto LABEL_19;
          }

          a1 = (a1 + 1) & v21;
          a4 = a2;
        }

        while (((*(v19 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
      }

      __break(1u);
    }

    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 56) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
LABEL_20:

          return;
        }

        __break(1u);
LABEL_19:

        goto LABEL_20;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return;
  }

  if (a4 < 0)
  {
    v15 = a4;
  }

  else
  {
    v15 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  v27 = MEMORY[0x1B2728270](a1, a2, v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
  swift_dynamicCast();
}

void sub_1B0B94AEC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    v6 = a1 + 1;
    v4 = a1[1];
    v5 = v6[1];
    *a2 = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B0B94B10(uint64_t a1, uint64_t a2)
{
  if ((static WindowOfInterestSizes.__derived_struct_equals(_:_:)(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0 || *(a1 + 17) != *(a2 + 17) || *(a1 + 18) != *(a2 + 18))
  {
    return 0;
  }

  v4 = *(a1 + 25) ? 256 : 0;
  v5 = v4 | *(a1 + 24);
  v6 = *(a1 + 26) ? 0x10000 : 0;
  v7 = *(a2 + 25) ? 256 : 0;
  v8 = v7 | *(a2 + 24);
  v9 = *(a2 + 26) ? 0x10000 : 0;
  if (!static Environment.__derived_struct_equals(_:_:)(v5 | v6, *(a1 + 32), *(a1 + 40), *(a1 + 48), v8 | v9, *(a2 + 32), *(a2 + 40), *(a2 + 48)))
  {
    return 0;
  }

  if ((sub_1B0429CE0(*(a1 + 56), *(a2 + 56)) & 1) == 0)
  {
    return 0;
  }

  if ((_s13IMAP2Behavior19RunningSyncRequestsV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 64), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 120);
  v28[2] = *(a1 + 104);
  v28[3] = v10;
  v11 = *(a1 + 152);
  v28[4] = *(a1 + 136);
  v28[5] = v11;
  v12 = *(a1 + 88);
  v28[0] = *(a1 + 72);
  v28[1] = v12;
  v13 = *(a2 + 120);
  v27[2] = *(a2 + 104);
  v27[3] = v13;
  v14 = *(a2 + 152);
  v27[4] = *(a2 + 136);
  v27[5] = v14;
  v15 = *(a2 + 88);
  v27[0] = *(a2 + 72);
  v27[1] = v15;
  if ((sub_1B0B6DAF4(v28, v27) & 1) == 0)
  {
    return 0;
  }

  v16 = *(a1 + 184);
  v17 = *(a1 + 216);
  v25[2] = *(a1 + 200);
  v26[0] = v17;
  *(v26 + 12) = *(a1 + 228);
  v25[0] = *(a1 + 168);
  v25[1] = v16;
  v18 = *(a2 + 184);
  v19 = *(a2 + 216);
  v23[2] = *(a2 + 200);
  v24[0] = v19;
  *(v24 + 12) = *(a2 + 228);
  v23[0] = *(a2 + 168);
  v23[1] = v18;
  if ((sub_1B0B35FC8(v25, v23) & 1) == 0 || (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(*(a1 + 248), *(a2 + 248)) & 1) == 0)
  {
    return 0;
  }

  v20 = *(a1 + 256);
  v21 = *(a2 + 256);

  return sub_1B0AFDD30(v20, v21);
}

uint64_t sub_1B0B94D00(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1B0B94EE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1B0B94F28(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

unint64_t sub_1B0B94FA8()
{
  result = qword_1EB6E4DF0;
  if (!qword_1EB6E4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4DF0);
  }

  return result;
}

uint64_t sub_1B0B950AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B95114(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x1E69E7CC0];
  v27 = *(a1 + 16);
  sub_1B0B0A624(0, v1, 0);
  v2 = v30;
  v3 = a1 + 64;
  result = sub_1B0E460B8();
  v6 = v27;
  v5 = a1;
  v7 = 0;
  v8 = *(a1 + 36);
  v29 = v8;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v5 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_29;
    }

    if (v8 != *(v5 + 36))
    {
      goto LABEL_30;
    }

    v12 = *(*(v5 + 56) + 32 * result);
    switch(v12)
    {
      case 2:
        v13 = 0xE800000000000000;
        v14 = 0x6369646F69726570;
        break;
      case 4:
        v14 = 0x74696E4972657375;
        v13 = 0xED00006465746169;
        break;
      case 3:
        v13 = 0xE400000000000000;
        v14 = 1752397168;
        break;
      default:
        v13 = 0xE800000000000000;
        v14 = 0x6C6C69466B636162;
        break;
    }

    v15 = *(*(v5 + 48) + 4 * result);
    v17 = *(v30 + 16);
    v16 = *(v30 + 24);
    if (v17 >= v16 >> 1)
    {
      v26 = result;
      sub_1B0B0A624((v16 > 1), v17 + 1, 1);
      v5 = a1;
      v8 = v29;
      v6 = v27;
      result = v26;
    }

    *(v30 + 16) = v17 + 1;
    v18 = v30 + 24 * v17;
    *(v18 + 32) = v15;
    *(v18 + 40) = v14;
    *(v18 + 48) = v13;
    v9 = 1 << *(v5 + 32);
    if (result >= v9)
    {
      goto LABEL_31;
    }

    v3 = a1 + 64;
    v19 = *(a1 + 64 + 8 * v10);
    if ((v19 & v11) == 0)
    {
      goto LABEL_32;
    }

    if (v8 != *(v5 + 36))
    {
      goto LABEL_33;
    }

    v20 = v19 & (-2 << (result & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (a1 + 72 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          sub_1B0425168(result, v29, 0);
          v5 = a1;
          v8 = v29;
          v6 = v27;
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      sub_1B0425168(result, v29, 0);
      v5 = a1;
      v8 = v29;
      v6 = v27;
    }

LABEL_4:
    ++v7;
    result = v9;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1B0B95400(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x1E69E7CC0];
  sub_1B0B0A604(0, v1, 0);
  v2 = v29;
  v4 = a1 + 64;
  result = sub_1B0E460B8();
  v6 = result;
  v7 = 0;
  v8 = *(a1 + 36);
  v25 = v1;
  v26 = v8;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v27 = v7;
    v28 = *(*(a1 + 56) + 2 * v6);
    v11 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v12 = OpaqueMailboxID.description.getter(v11);
    v14 = v13;

    v16 = *(v29 + 16);
    v15 = *(v29 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_1B0B0A604((v15 > 1), v16 + 1, 1);
    }

    *(v29 + 16) = v16 + 1;
    v17 = (v29 + 24 * v16);
    v17[4] = v12;
    v17[5] = v14;
    v17[6] = v28;
    v9 = 1 << *(a1 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v18 = *(a1 + 64 + 8 * v10);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v26;
    if (v26 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (a1 + 72 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_1B0425168(v6, v26, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_1B0425168(v6, v26, 0);
    }

LABEL_4:
    v7 = v27 + 1;
    v6 = v9;
    if (v27 + 1 == v25)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1B0B95668(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1B0B0A644(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_1B0E460B8();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + 4 * result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1B0B0A644((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 4 * v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1B0425168(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1B0425168(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1B0B95884(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1B0B0A644(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1B0E460B8();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + 4 * result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1B0B0A644((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 4 * v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1B0425168(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1B0425168(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1B0B95AA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v29 = MEMORY[0x1E69E7CC0];
  sub_1B0B0A6E4(0, v1, 0);
  v2 = v29;
  v4 = v3 + 56;
  result = sub_1B0E460B8();
  v6 = result;
  v7 = 0;
  v24 = v3 + 64;
  v25 = v1;
  v26 = v3 + 56;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v27 = v7;
    v28 = *(v3 + 36);
    v10 = (*(v3 + 48) + 16 * v6);
    v11 = v3;
    v12 = *v10;
    v13 = v10[1];
    result = sub_1B03B2000(*v10, v13);
    v15 = *(v29 + 16);
    v14 = *(v29 + 24);
    if (v15 >= v14 >> 1)
    {
      result = sub_1B0B0A6E4((v14 > 1), v15 + 1, 1);
    }

    *(v29 + 16) = v15 + 1;
    v16 = v29 + 16 * v15;
    *(v16 + 32) = v12;
    *(v16 + 40) = v13;
    v8 = 1 << *(v11 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = v11;
    v4 = v26;
    v17 = *(v26 + 8 * v9);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v28 != *(v3 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (v24 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1B0425168(v6, v28, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_1B0425168(v6, v28, 0);
    }

LABEL_4:
    v7 = v27 + 1;
    v6 = v8;
    if (v27 + 1 == v25)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1B0B95CC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v35 = MEMORY[0x1E69E7CC0];
  sub_1B0B0A6C4(0, v1, 0);
  v2 = v35;
  v4 = v3 + 64;
  result = sub_1B0E460B8();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v28 = v3 + 72;
  v29 = v1;
  v30 = v8;
  v31 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v32 = v7;
    v11 = *(v3 + 56);
    v12 = (*(v3 + 48) + 16 * v6);
    v13 = v3;
    v14 = *v12;
    v15 = v12[1];
    v16 = (v11 + 24 * v6);
    v34 = *v16;
    if (*(v16 + 16))
    {
      v17 = -1;
    }

    else
    {
      v17 = *(v16 + 1);
    }

    v33 = v17;
    result = sub_1B03B2000(v14, v15);
    v19 = *(v35 + 16);
    v18 = *(v35 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_1B0B0A6C4((v18 > 1), v19 + 1, 1);
    }

    *(v35 + 16) = v19 + 1;
    v20 = v35 + 32 * v19;
    *(v20 + 32) = v14;
    *(v20 + 40) = v15;
    *(v20 + 48) = v34;
    *(v20 + 56) = v33;
    v9 = 1 << *(v13 + 32);
    if (v6 >= v9)
    {
      goto LABEL_27;
    }

    v3 = v13;
    v4 = v31;
    v21 = *(v31 + 8 * v10);
    if ((v21 & (1 << v6)) == 0)
    {
      goto LABEL_28;
    }

    v8 = v30;
    if (v30 != *(v3 + 36))
    {
      goto LABEL_29;
    }

    v22 = v21 & (-2 << (v6 & 0x3F));
    if (v22)
    {
      v9 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v10 << 6;
      v24 = v10 + 1;
      v25 = (v28 + 8 * v10);
      while (v24 < (v9 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1B0425168(v6, v30, 0);
          v9 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_1B0425168(v6, v30, 0);
    }

LABEL_4:
    v7 = v32 + 1;
    v6 = v9;
    if (v32 + 1 == v29)
    {
      return v2;
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
  return result;
}

unint64_t sub_1B0B95F44(uint64_t *a1, uint64_t a2)
{
  v16[2] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E50A0, &qword_1B0ECAF98);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v16 - v5);
  result = sub_1B03B5C80(a1, v16 - v5, &qword_1EB6E5098, &qword_1B0ECAF90);
  v8 = *a1;
  v9 = v6[1];
  if (v8 == v9)
  {
LABEL_14:
    *(v6 + *(v4 + 36)) = v8;
    return sub_1B0398EFC(v6, &qword_1EB6E50A0, &qword_1B0ECAF98);
  }

  else
  {
    v16[0] = v4;
    v16[1] = v2;
    while (v8 < v9 && v8 >= *v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5098, &qword_1B0ECAF90);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42A8, &qword_1B0EC49E0);
      MessageIdentifierSet.RangeView.subscript.getter(v10, v17);
      v11 = v17[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
      v12 = sub_1B0E46E18();
      result = sub_1B0E46E28();
      if (v8 < v12 || v8 >= result)
      {
        goto LABEL_16;
      }

      v17[0] = v11;
      v14 = sub_1B041B7F0();
      result = Range<>.init<A>(_:)(v17, &type metadata for SequenceNumber, v14);
      v17[4] = result;
      if (HIDWORD(result) != result)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        v15 = sub_1B0E46E88();
        sub_1B0E46E38();
        result = v15(v17, 0);
      }

      if (v9 == ++v8)
      {
        v8 = v9;
        v4 = v16[0];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0B96180(uint64_t *a1, uint64_t a2)
{
  v16[2] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FF8, &unk_1B0ECA310);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v16 - v5);
  result = sub_1B03B5C80(a1, v16 - v5, &qword_1EB6E4FF0, &unk_1B0ECA300);
  v8 = *a1;
  v9 = v6[1];
  if (v8 == v9)
  {
LABEL_14:
    *(v6 + *(v4 + 36)) = v8;
    return sub_1B0398EFC(v6, &qword_1EB6E4FF8, &unk_1B0ECA310);
  }

  else
  {
    v16[0] = v4;
    v16[1] = v2;
    while (v8 < v9 && v8 >= *v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FF0, &unk_1B0ECA300);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
      MessageIdentifierSet.RangeView.subscript.getter(v10, v17);
      v11 = v17[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
      v12 = sub_1B0E46E18();
      result = sub_1B0E46E28();
      if (v8 < v12 || v8 >= result)
      {
        goto LABEL_16;
      }

      v17[0] = v11;
      v14 = sub_1B041C1E8();
      result = Range<>.init<A>(_:)(v17, &type metadata for UID, v14);
      v17[4] = result;
      if (HIDWORD(result) != result)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        v15 = sub_1B0E46E88();
        sub_1B0E46E38();
        result = v15(v17, 0);
      }

      if (v9 == ++v8)
      {
        v8 = v9;
        v4 = v16[0];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B963BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FF0, &unk_1B0ECA300);
  MEMORY[0x1EEE9AC00](v0);
  v2 = (&v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v48 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v21 = sub_1B0E46E98();
  result = 0;
  if ((v21 & 1) == 0)
  {
    v51 = v11;
    v52 = v0;
    v49 = v2;
    v50 = v8;
    v53 = v6;
    MessageIdentifierSet.ranges.getter(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
    v23 = sub_1B0E46E18();
    v24 = sub_1B0E46E28();
    v25 = sub_1B0E46E18();
    result = sub_1B0E46E28();
    if (v23 < v25 || result < v23)
    {
      __break(1u);
    }

    else
    {
      v27 = sub_1B0E46E18();
      v28 = sub_1B0E46E28();
      result = sub_1B0398EFC(v20, &unk_1EB6E2780, &unk_1B0E9C5E0);
      if (v24 >= v27 && v28 >= v24)
      {
        if (!__OFSUB__(v24, v23))
        {
          if (v24 - v23 < 100)
          {
            return MessageIdentifierSet.debugDescription.getter();
          }

          MessageIdentifierSet.ranges.getter(v17);
          v29 = sub_1B0E46E18();
          v30 = sub_1B0E46E28();
          v31 = sub_1B0B9C898(v29, 45, v30);
          if (v32)
          {
            v31 = sub_1B0E46E28();
          }

          v33 = v31;
          v34 = v51;
          result = sub_1B0E46E18();
          if (v33 >= result)
          {
            v35 = result;
            v36 = sub_1B0E46E18();
            result = sub_1B0E46E28();
            if (result >= v36)
            {
              if (v35 >= v36)
              {
                if (result >= v33)
                {
                  sub_1B03C60A4(v17, v5 + *(v52 + 40), &unk_1EB6E2780, &unk_1B0E9C5E0);
                  *v5 = v35;
                  v5[1] = v33;
                  sub_1B03D06F8();
                  sub_1B0E46EE8();
                  sub_1B0B96180(v5, v34);
                  sub_1B0398EFC(v5, &qword_1EB6E4FF0, &unk_1B0ECA300);
                  MessageIdentifierSet.ranges.getter(v14);
                  v37 = sub_1B0E46E28();
                  v38 = sub_1B0E46E18();
                  v39 = sub_1B0B9C898(v37, -45, v38);
                  if (v40)
                  {
                    v41 = sub_1B0E46E18();
                  }

                  else
                  {
                    v41 = v39;
                  }

                  result = sub_1B0E46E28();
                  if (result >= v41)
                  {
                    v42 = result;
                    v43 = sub_1B0E46E18();
                    result = sub_1B0E46E28();
                    if (result >= v43)
                    {
                      if (v41 >= v43)
                      {
                        if (result >= v42)
                        {
                          v44 = v49;
                          sub_1B03C60A4(v14, v49 + *(v52 + 40), &unk_1EB6E2780, &unk_1B0E9C5E0);
                          *v44 = v41;
                          v44[1] = v42;
                          v45 = v50;
                          sub_1B0E46EE8();
                          sub_1B0B96180(v44, v45);
                          sub_1B0398EFC(v44, &qword_1EB6E4FF0, &unk_1B0ECA300);
                          v55 = 0;
                          v56 = 0xE000000000000000;
                          sub_1B0E46508();
                          MEMORY[0x1B2726E80](3026478, 0xE300000000000000);
                          sub_1B0E46508();
                          MEMORY[0x1B2726E80](10272, 0xE200000000000000);
                          v54 = MessageIdentifierSet.count.getter();
                          v46 = sub_1B0E469C8();
                          MEMORY[0x1B2726E80](v46);

                          MEMORY[0x1B2726E80](41, 0xE100000000000000);
                          v47 = v55;
                          sub_1B0398EFC(v45, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                          sub_1B0398EFC(v34, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                          return v47;
                        }

LABEL_36:
                        __break(1u);
                        return result;
                      }

LABEL_35:
                      __break(1u);
                      goto LABEL_36;
                    }

LABEL_34:
                    __break(1u);
                    goto LABEL_35;
                  }

LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }

LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_1B0B969A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5098, &qword_1B0ECAF90);
  MEMORY[0x1EEE9AC00](v0);
  v2 = (&v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v48 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4030, &qword_1B0EC2B00);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42A8, &qword_1B0EC49E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v21 = sub_1B0E46E98();
  result = 0;
  if ((v21 & 1) == 0)
  {
    v51 = v11;
    v52 = v0;
    v49 = v2;
    v50 = v8;
    v53 = v6;
    MessageIdentifierSet.ranges.getter(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
    v23 = sub_1B0E46E18();
    v24 = sub_1B0E46E28();
    v25 = sub_1B0E46E18();
    result = sub_1B0E46E28();
    if (v23 < v25 || result < v23)
    {
      __break(1u);
    }

    else
    {
      v27 = sub_1B0E46E18();
      v28 = sub_1B0E46E28();
      result = sub_1B0398EFC(v20, &qword_1EB6E42A8, &qword_1B0EC49E0);
      if (v24 >= v27 && v28 >= v24)
      {
        if (!__OFSUB__(v24, v23))
        {
          if (v24 - v23 < 100)
          {
            return MessageIdentifierSet.debugDescription.getter();
          }

          MessageIdentifierSet.ranges.getter(v17);
          v29 = sub_1B0E46E18();
          v30 = sub_1B0E46E28();
          v31 = sub_1B0B9C898(v29, 45, v30);
          if (v32)
          {
            v31 = sub_1B0E46E28();
          }

          v33 = v31;
          v34 = v51;
          result = sub_1B0E46E18();
          if (v33 >= result)
          {
            v35 = result;
            v36 = sub_1B0E46E18();
            result = sub_1B0E46E28();
            if (result >= v36)
            {
              if (v35 >= v36)
              {
                if (result >= v33)
                {
                  sub_1B03C60A4(v17, v5 + *(v52 + 40), &qword_1EB6E42A8, &qword_1B0EC49E0);
                  *v5 = v35;
                  v5[1] = v33;
                  sub_1B03D06F8();
                  sub_1B0E46EE8();
                  sub_1B0B95F44(v5, v34);
                  sub_1B0398EFC(v5, &qword_1EB6E5098, &qword_1B0ECAF90);
                  MessageIdentifierSet.ranges.getter(v14);
                  v37 = sub_1B0E46E28();
                  v38 = sub_1B0E46E18();
                  v39 = sub_1B0B9C898(v37, -45, v38);
                  if (v40)
                  {
                    v41 = sub_1B0E46E18();
                  }

                  else
                  {
                    v41 = v39;
                  }

                  result = sub_1B0E46E28();
                  if (result >= v41)
                  {
                    v42 = result;
                    v43 = sub_1B0E46E18();
                    result = sub_1B0E46E28();
                    if (result >= v43)
                    {
                      if (v41 >= v43)
                      {
                        if (result >= v42)
                        {
                          v44 = v49;
                          sub_1B03C60A4(v14, v49 + *(v52 + 40), &qword_1EB6E42A8, &qword_1B0EC49E0);
                          *v44 = v41;
                          v44[1] = v42;
                          v45 = v50;
                          sub_1B0E46EE8();
                          sub_1B0B95F44(v44, v45);
                          sub_1B0398EFC(v44, &qword_1EB6E5098, &qword_1B0ECAF90);
                          v55 = 0;
                          v56 = 0xE000000000000000;
                          sub_1B0E46508();
                          MEMORY[0x1B2726E80](3026478, 0xE300000000000000);
                          sub_1B0E46508();
                          MEMORY[0x1B2726E80](10272, 0xE200000000000000);
                          v54 = MessageIdentifierSet.count.getter();
                          v46 = sub_1B0E469C8();
                          MEMORY[0x1B2726E80](v46);

                          MEMORY[0x1B2726E80](41, 0xE100000000000000);
                          v47 = v55;
                          sub_1B0398EFC(v45, &qword_1EB6E4030, &qword_1B0EC2B00);
                          sub_1B0398EFC(v34, &qword_1EB6E4030, &qword_1B0EC2B00);
                          return v47;
                        }

LABEL_36:
                        __break(1u);
                        return result;
                      }

LABEL_35:
                      __break(1u);
                      goto LABEL_36;
                    }

LABEL_34:
                    __break(1u);
                    goto LABEL_35;
                  }

LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }

LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  return result;
}

double StateWithTasks.stateCaptureValue(logName:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for StateWithTasks(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0BA1F50(v3, v9, type metadata accessor for StateWithTasks);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B9E56C(v9, a1, a2, v16);
  v10 = v16[7];
  *(a3 + 96) = v16[6];
  *(a3 + 112) = v10;
  *(a3 + 128) = v16[8];
  *(a3 + 144) = v17;
  v11 = v16[3];
  *(a3 + 32) = v16[2];
  *(a3 + 48) = v11;
  v12 = v16[5];
  *(a3 + 64) = v16[4];
  *(a3 + 80) = v12;
  result = *v16;
  v14 = v16[1];
  *a3 = v16[0];
  *(a3 + 16) = v14;
  return result;
}

__n128 StateWithTasks.localDeselectedMailboxesCaptureValue()@<Q0>(char **a1@<X8>)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 216);
  v5[2] = *(v1 + 200);
  v6[0] = v3;
  *(v6 + 12) = *(v1 + 228);
  v5[0] = *(v1 + 168);
  v5[1] = v2;
  sub_1B0B970D8(v5, a1);
  return result;
}

void sub_1B0B970D8(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (*(a1 + 24))
  {
    v6 = *(v3 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = 0;
    v8 = v3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v10 = (v8 + 176 * v7);
    while (1)
    {
      if (v6 == v7)
      {
        sub_1B03BB638(v3, v4, v5, 1);
        a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FA0, &qword_1B0EC9FE0);
        a2[4] = sub_1B0BA49C8(&qword_1EB6DB4B0, &qword_1EB6E4FA0, &qword_1B0EC9FE0, sub_1B0BA11B8);
        *a2 = v9;
        return;
      }

      if (v7 >= v6)
      {
        break;
      }

      v11 = *v10;
      v12 = v10[2];
      v31[1] = v10[1];
      v31[2] = v12;
      v31[0] = v11;
      v13 = v10[3];
      v14 = v10[4];
      v15 = v10[6];
      v31[5] = v10[5];
      v32 = v15;
      v31[3] = v13;
      v31[4] = v14;
      v16 = v10[7];
      v17 = v10[8];
      v18 = v10[10];
      v35 = v10[9];
      v36 = v18;
      v33 = v16;
      v34 = v17;
      v19 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_16;
      }

      ++v7;
      v10 += 11;
      if (!v32)
      {
        v28 = v8;
        sub_1B03A35B8(v31, v29);
        sub_1B0BA0798(v31, __src);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B0B0169C(0, *(v9 + 2) + 1, 1, v9);
        }

        v21 = *(v9 + 2);
        v20 = *(v9 + 3);
        if (v21 >= v20 >> 1)
        {
          v9 = sub_1B0B0169C((v20 > 1), v21 + 1, 1, v9);
        }

        *(v9 + 2) = v21 + 1;
        memcpy(&v9[392 * v21 + 32], __src, 0x188uLL);
        v7 = v19;
        v8 = v28;
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
    sub_1B03B9A2C(*a1, v4, v5, 0);
    sub_1B0B9F200(v3, v4, v5);
    v23 = v22;
    v25 = v24;
    v27 = v26;
    a2[3] = &_s13CapturedStateV16UnknownMailboxesVN;
    a2[4] = sub_1B0BA1E40();
    *a2 = v23;
    a2[1] = v25;
    a2[2] = v27;
  }
}

char *StateWithTasks.localSelectedMailboxesCaptureValue()@<X0>(char **a1@<X8>)
{
  v3 = *(v1 + 184);
  v4 = *(v1 + 216);
  v6[2] = *(v1 + 200);
  v7[0] = v4;
  *(v7 + 12) = *(v1 + 228);
  v6[0] = *(v1 + 168);
  v6[1] = v3;
  result = sub_1B0BA0E0C(v6);
  *a1 = result;
  return result;
}

double StateWithTasks.remoteMailboxesCaptureValue()@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 120);
  v11[2] = *(v1 + 104);
  v11[3] = v3;
  v4 = *(v1 + 152);
  v11[4] = *(v1 + 136);
  v11[5] = v4;
  v5 = *(v1 + 88);
  v11[0] = *(v1 + 72);
  v11[1] = v5;
  sub_1B0BA1108(v11, v8);
  sub_1B0BA0F7C(v11, v8);
  v6 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v6;
  result = *&v9;
  *(a1 + 32) = v9;
  *(a1 + 48) = v10;
  return result;
}

uint64_t sub_1B0B973DC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FA8, &qword_1B0ECA2B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-1] - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA155C();
  sub_1B0E46D48();
  LOBYTE(v17) = 0;
  sub_1B0E46928();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    sub_1B0E46928();
    v9 = *(v3 + 48);
    v10 = *(v3 + 80);
    v23 = *(v3 + 64);
    v24 = v10;
    v11 = *(v3 + 48);
    v22[0] = *(v3 + 32);
    v22[1] = v11;
    v12 = *(v3 + 80);
    v19 = v23;
    v20 = v12;
    v25 = *(v3 + 96);
    v21 = *(v3 + 96);
    v17 = v22[0];
    v18 = v9;
    v27 = 2;
    sub_1B0BA15B0(v22, v15);
    sub_1B0BA160C();
    sub_1B0E46958();
    v15[2] = v19;
    v15[3] = v20;
    v16 = v21;
    v15[0] = v17;
    v15[1] = v18;
    sub_1B0BA1660(v15);
    LOBYTE(v14) = *(v3 + 104);
    v26 = 3;
    sub_1B0BA16B4();
    sub_1B0E46958();
    *&v14 = *(v3 + 112);
    v26 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FB0, &qword_1B0ECA2C0);
    sub_1B0BA49C8(&qword_1EB6DB4D8, &qword_1EB6E4FB0, &qword_1B0ECA2C0, sub_1B0BA1708);
    sub_1B0E46958();
    v14 = *(v3 + 120);
    v26 = 5;
    sub_1B0BA175C();
    sub_1B0E46958();
    *&v14 = *(v3 + 136);
    v26 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FB8, &qword_1B0ECA2C8);
    sub_1B0BA17B0();
    sub_1B0E46958();
    *&v14 = *(v3 + 144);
    v26 = 7;
    sub_1B0BA1834();
    sub_1B0E46958();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B0B9779C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000013;
    if (v1 != 6)
    {
      v5 = 0x736B736174;
    }

    v6 = 0xD000000000000013;
    if (v1 != 4)
    {
      v6 = 0xD000000000000011;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x656D614E676F6CLL;
    v3 = 0x6D6E6F7269766E65;
    if (v1 != 2)
    {
      v3 = 0xD000000000000018;
    }

    if (*v0)
    {
      v2 = 0x4449656E69676E65;
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
}

uint64_t sub_1B0B978AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0BA2E78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0B978E0(uint64_t a1)
{
  sub_1B0BA155C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9791C(uint64_t a1)
{
  sub_1B0BA155C();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B979B4(uint64_t a1, unsigned int a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = sub_1B0E44B88();
  v5 = MailboxName.inbox.unsafeMutableAddressor();
  if ((a2 | (a2 << 32)) == (*(v5 + 2) | (*(v5 + 2) << 32)))
  {
    v6 = sub_1B04520BC(a1, *v5);

    if (v6)
    {
      return v4;
    }
  }

  else
  {
  }

  if (sub_1B0E44CF8() >= 3)
  {
    sub_1B0E44D38();
    sub_1B0E46298();
    v7 = sub_1B0E44EE8();
    v8 = MEMORY[0x1B2726D00](v7);

    MEMORY[0x1B2726E80](0x6E656C202CA680E2, 0xAC0000003D687467);
    sub_1B0E44CF8();
    v9 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v9);

    return v8;
  }

  return v4;
}

uint64_t sub_1B0B97B48(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E50C0, &qword_1B0ECAFB8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA4DF4();
  sub_1B0E46D48();
  v8[15] = 0;
  sub_1B0E46928();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1B0E46928();
  v8[13] = 2;
  sub_1B0E46928();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1B0B97CE8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5038, &unk_1B0ECAF28);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA31BC();
  sub_1B0E46D48();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B0BA3210(&qword_1EB6DB080, &qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B0E46958();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5040, &qword_1B0ECAF38);
    sub_1B0BA49C8(&qword_1EB6DB4C8, &qword_1EB6E5040, &qword_1B0ECAF38, sub_1B0BA3278);
    sub_1B0E46958();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B0B97EF4()
{
  v1 = 0x786F626C69616DLL;
  if (*v0 != 1)
  {
    v1 = 0x6567617375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x697463656E6E6F63;
  }
}

uint64_t sub_1B0B97F50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0BA3374(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0B97F78(uint64_t a1)
{
  sub_1B0BA4DF4();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B97FB4(uint64_t a1)
{
  sub_1B0BA4DF4();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B9802C()
{
  if (*v0)
  {
    return 0x6567617375;
  }

  else
  {
    return 0x65786F626C69616DLL;
  }
}

uint64_t sub_1B0B98068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65786F626C69616DLL && a2 == 0xE900000000000073;
  if (v6 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B0B98148(uint64_t a1)
{
  sub_1B0BA31BC();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B98184(uint64_t a1)
{
  sub_1B0BA31BC();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B981FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69617274736E6F63 && a2 == 0xEB0000000064656ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B0E46A78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B0B98288(uint64_t a1)
{
  sub_1B0BA3114();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B982C4(uint64_t a1)
{
  sub_1B0BA3114();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B98300(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5028, &qword_1B0ECAF18);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA3114();
  sub_1B0E46D48();
  sub_1B0E468D8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B0B98438(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5030, &qword_1B0ECAF20);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA3168();
  sub_1B0E46D48();
  v13 = 0;
  sub_1B0E46988();
  if (!v4)
  {
    v12 = 1;
    sub_1B0E46928();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1B0B985CC()
{
  if (*v0)
  {
    return 1684957547;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1B0B985F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B0B986C8(uint64_t a1)
{
  sub_1B0BA3168();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B98704(uint64_t a1)
{
  sub_1B0BA3168();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B98760(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5080, &qword_1B0ECAF78);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA4B40();
  sub_1B0E46D48();
  v9[15] = 0;
  sub_1B0E468D8();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v9[14] = 1;
  sub_1B0E468D8();
  v9[13] = 2;
  sub_1B0E468D8();
  v9[12] = 3;
  sub_1B0E468D8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1B0B98920()
{
  v1 = 0x7374726F70707573;
  v2 = 0xD00000000000001BLL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_1B0B989AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0BA3490(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0B989D4(uint64_t a1)
{
  sub_1B0BA4B40();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B98A10(uint64_t a1)
{
  sub_1B0BA4B40();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B98A68(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5088, &qword_1B0ECAF80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA4B94();
  sub_1B0E46D48();
  v8[15] = 0;
  sub_1B0E46928();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1B0E468C8();
  v8[13] = 2;
  sub_1B0E468C8();
  v8[12] = 3;
  sub_1B0E468C8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1B0B98C28()
{
  v1 = 1701667182;
  v2 = 0x7475626972747461;
  if (*v0 != 2)
  {
    v2 = 0x556C616963657073;
  }

  if (*v0)
  {
    v1 = 0x6170655368746170;
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

uint64_t sub_1B0B98CB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0BA3604(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0B98CDC(uint64_t a1)
{
  sub_1B0BA4B94();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B98D18(uint64_t a1)
{
  sub_1B0BA4B94();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B98D90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5090, &qword_1B0ECAF88);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA4BE8();
  sub_1B0E46D48();
  v14 = 0;
  sub_1B0E46928();
  if (!v5)
  {
    v13 = 1;
    sub_1B0E46928();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B0B98F24(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FE0, &qword_1B0ECA2F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA19D8();
  sub_1B0E46D48();
  LODWORD(v11[0]) = *v3;
  v12 = 0;
  sub_1B0BA1A2C();
  sub_1B0E468F8();
  if (!v2)
  {
    *&v11[0] = *(v3 + 8);
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FE8, &qword_1B0ECA2F8);
    sub_1B0BA49C8(&qword_1EB6DB4D0, &qword_1EB6E4FE8, &qword_1B0ECA2F8, sub_1B0BA1A80);
    sub_1B0E468F8();
    LOBYTE(v11[0]) = 2;
    sub_1B0E46938();
    v9 = *(v3 + 40);
    v11[0] = *(v3 + 24);
    v11[1] = v9;
    v12 = 3;
    sub_1B0BA1AD4();
    sub_1B0E468F8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B0B99164()
{
  if (*v0)
  {
    return 0x6F74617261706573;
  }

  else
  {
    return 0x786966657270;
  }
}

uint64_t sub_1B0B991A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
  if (v6 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F74617261706573 && a2 == 0xE900000000000072)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B0B99280(uint64_t a1)
{
  sub_1B0BA4BE8();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B992BC(uint64_t a1)
{
  sub_1B0BA4BE8();

  return sub_1B0E46F38();
}

unint64_t sub_1B0B99318()
{
  v1 = 0x726576726573;
  v2 = 0xD000000000000018;
  if (*v0 != 2)
  {
    v2 = 0x63617073656D616ELL;
  }

  if (*v0)
  {
    v1 = 0x65786F626C69616DLL;
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

uint64_t sub_1B0B99398@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0BA377C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0B993C0(uint64_t a1)
{
  sub_1B0BA19D8();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B993FC(uint64_t a1)
{
  sub_1B0BA19D8();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B9947C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E50A8, &qword_1B0ECAFA0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA4C3C();
  sub_1B0E46D48();
  v15 = a2;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FD0, &qword_1B0ECA2E0);
  sub_1B0BA3210(&qword_1EB6DADE0, &qword_1EB6E4FD0, &qword_1B0ECA2E0);
  sub_1B0E468F8();
  if (!v4)
  {
    v15 = v13;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E50B0, &qword_1B0ECAFA8);
    sub_1B0BA4C90();
    sub_1B0E468F8();
    v15 = a4;
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E50B8, &qword_1B0ECAFB0);
    sub_1B0BA4D3C();
    sub_1B0E468F8();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1B0B996B4()
{
  v1 = 0x6552686372616573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53676E69646E6570;
  }
}

uint64_t sub_1B0B99728@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0BA38F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0B99750(uint64_t a1)
{
  sub_1B0BA4C3C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9978C(uint64_t a1)
{
  sub_1B0BA4C3C();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B997E8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5058, &qword_1B0ECAF50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA4824();
  sub_1B0E46D48();
  v9 = *(v3 + 4);
  v11[15] = 0;
  v11[12] = v9;
  sub_1B0E46908();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11[11] = 1;
  sub_1B0E468C8();
  v11[10] = 2;
  sub_1B0E46918();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B0B9999C()
{
  v1 = 0x5764656863746566;
  if (*v0 != 1)
  {
    v1 = 0x4D74736568676968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64696C6156646975;
  }
}

uint64_t sub_1B0B99A18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0BA3A1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0B99A40(uint64_t a1)
{
  sub_1B0BA4824();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B99A7C(uint64_t a1)
{
  sub_1B0BA4824();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B99AF4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5078, &qword_1B0ECAF70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA4AEC();
  sub_1B0E46D48();
  LOBYTE(v13) = 0;
  sub_1B0E46988();
  if (!v2)
  {
    v13 = *(v3 + 8);
    v14 = v13;
    v12 = 1;
    sub_1B09916E0(&v14, &v11);
    sub_1B0BA48CC();
    sub_1B0E46958();
    sub_1B0391D50(v13, *(&v13 + 1));
    LOBYTE(v13) = 2;
    sub_1B0E46928();
    LOBYTE(v13) = 3;
    sub_1B0E46988();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B0B99CD8()
{
  v1 = 25705;
  v2 = 1684957547;
  if (*v0 != 2)
  {
    v2 = 7565169;
  }

  if (*v0)
  {
    v1 = 0x6567617373656DLL;
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

uint64_t sub_1B0B99D38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0BA3B48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0B99D60(uint64_t a1)
{
  sub_1B0BA4AEC();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B99D9C(uint64_t a1)
{
  sub_1B0BA4AEC();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B99E14(void *a1, uint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5)
{
  v14[1] = a5;
  v17 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E50D8, &qword_1B0ECAFD0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA4FEC();
  sub_1B0E46D48();
  v15 = a2;
  v16 = a3;
  v18 = 0;
  sub_1B03B2000(a2, a3);
  sub_1B0BA48CC();
  sub_1B0E46958();
  sub_1B0391D50(v15, v16);
  if (!v5)
  {
    LOBYTE(v15) = 1;
    sub_1B0E46988();
    LOBYTE(v15) = 2;
    sub_1B0E46948();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1B0B99FE0()
{
  v1 = 6580597;
  if (*v0 != 1)
  {
    v1 = 1702521203;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1B0B9A020@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0BA3CA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0B9A048(uint64_t a1)
{
  sub_1B0BA4FEC();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9A084(uint64_t a1)
{
  sub_1B0BA4FEC();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B9A0E4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E50E0, &qword_1B0ECAFD8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA5040();
  sub_1B0E46D48();
  v12[15] = 0;
  sub_1B0E468D8();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12[14] = 1;
  sub_1B0E468C8();
  v12[13] = 2;
  sub_1B0E468C8();
  v9 = *(v3 + 44);
  v12[12] = 3;
  v12[8] = v9;
  sub_1B0E46908();
  v12[7] = 4;
  sub_1B0E468C8();
  v10 = *(v3 + 68);
  v12[6] = 5;
  v12[4] = v10;
  sub_1B0E46908();
  v12[3] = 6;
  sub_1B0E468D8();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B0B9A324(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x436567617373656DLL;
    v6 = 0x64696C6156646975;
    v7 = 0x4D74736568676968;
    if (a1 != 3)
    {
      v7 = 0x7473656867694879;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x4449557478656ELL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000019;
    v2 = 0x4D676E697373696DLL;
    if (a1 == 9)
    {
      v2 = 0xD000000000000019;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000016;
    if (a1 == 6)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 == 5)
    {
      v3 = 0x70657453636E7973;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B0B9A4C0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5060, &qword_1B0ECAF58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA4878();
  sub_1B0E46D48();
  LOBYTE(v31) = 0;
  sub_1B0E46948();
  if (!v2)
  {
    v9 = *(v3 + 12);
    LOBYTE(v31) = 1;
    LOBYTE(v28[0]) = v9;
    sub_1B0E46908();
    v10 = *(v3 + 20);
    LOBYTE(v31) = 2;
    LOBYTE(v28[0]) = v10;
    sub_1B0E46908();
    LOBYTE(v31) = 3;
    sub_1B0E46918();
    LOBYTE(v31) = 4;
    sub_1B0E46918();
    *&v31 = *(v3 + 56);
    LOBYTE(v28[0]) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B0BA3210(&qword_1EB6DB080, &qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B0E46958();
    *&v31 = *(v3 + 64);
    LOBYTE(v28[0]) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5068, &qword_1B0ECAF60);
    sub_1B0BA49C8(&qword_1EB6DB668, &qword_1EB6E5068, &qword_1B0ECAF60, sub_1B0BA48CC);
    sub_1B0E468F8();
    v11 = *(v3 + 88);
    v31 = *(v3 + 72);
    v32 = v11;
    v33 = *(v3 + 104);
    LOBYTE(v34) = *(v3 + 120);
    LOBYTE(v28[0]) = 7;
    sub_1B0BA4920();
    sub_1B0E46958();
    v12 = *(v3 + 176);
    v13 = *(v3 + 144);
    v41 = *(v3 + 160);
    v42 = v12;
    v14 = *(v3 + 176);
    v43 = *(v3 + 192);
    v15 = *(v3 + 144);
    v40[0] = *(v3 + 128);
    v40[1] = v15;
    v33 = v41;
    v34 = v14;
    v35 = *(v3 + 192);
    v44 = *(v3 + 208);
    v36 = *(v3 + 208);
    v31 = v40[0];
    v32 = v13;
    v30 = 8;
    sub_1B0BA1DD8(v40, v28);
    sub_1B0BA4974();
    sub_1B0E46958();
    v28[2] = v33;
    v28[3] = v34;
    v28[4] = v35;
    v29 = v36;
    v28[0] = v31;
    v28[1] = v32;
    sub_1B0BA1E10(v28);
    *&v24 = *(v3 + 216);
    LOBYTE(v21[0]) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5070, &qword_1B0ECAF68);
    sub_1B0BA49C8(&qword_1EB6DB4C0, &qword_1EB6E5070, &qword_1B0ECAF68, sub_1B0BA4A44);
    sub_1B0E46958();
    v16 = *(v3 + 240);
    v17 = *(v3 + 272);
    v38 = *(v3 + 256);
    v39[0] = v17;
    v18 = *(v3 + 240);
    v37[0] = *(v3 + 224);
    v37[1] = v18;
    v19 = *(v3 + 272);
    v26 = v38;
    v27[0] = v19;
    *(v39 + 14) = *(v3 + 286);
    *(v27 + 14) = *(v3 + 286);
    v24 = v37[0];
    v25 = v16;
    v23 = 10;
    sub_1B0BA1D70(v37, v21);
    sub_1B0BA4A98();
    sub_1B0E46958();
    v21[2] = v26;
    *v22 = v27[0];
    *&v22[14] = *(v27 + 14);
    v21[0] = v24;
    v21[1] = v25;
    sub_1B0BA1DA8(v21);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B0B9AA18()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x6574656C706D6F63;
  }

  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x5564656972657571;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x676E697373696DLL;
  if (v1 != 1)
  {
    v5 = 1701736292;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1B0B9AB00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0BA3DB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0B9AB28(uint64_t a1)
{
  sub_1B0BA5040();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9AB64(uint64_t a1)
{
  sub_1B0BA5040();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B9ABEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0BA4018(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0B9AC20(uint64_t a1)
{
  sub_1B0BA4878();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9AC5C(uint64_t a1)
{
  sub_1B0BA4878();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B9ACEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5178, &qword_1B0ECC190);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA6AE4();
  sub_1B0E46D48();
  v14 = 0;
  sub_1B0E468C8();
  if (!v5)
  {
    v13 = 1;
    sub_1B0E468C8();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B0B9AE80(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E50D0, &qword_1B0ECAFC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA4F44();
  sub_1B0E46D48();
  LOBYTE(v14) = 0;
  sub_1B0E46938();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1B0E46938();
    LOBYTE(v14) = 2;
    sub_1B0E46938();
    v9 = *(v3 + 24);
    v14 = *(v3 + 8);
    v15 = v9;
    v13 = 3;
    sub_1B0BA4F98();
    sub_1B0E468F8();
    v10 = *(v3 + 56);
    v14 = *(v3 + 40);
    v15 = v10;
    v13 = 4;
    sub_1B0E468F8();
    LOBYTE(v14) = 5;
    sub_1B0E468C8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B0B9B0E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FC0, &qword_1B0ECA2D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA1888();
  sub_1B0E46D48();
  v15[0] = 0;
  sub_1B0E46928();
  if (!v2)
  {
    v9 = *(v3 + 32);
    *v15 = *(v3 + 16);
    *&v15[16] = v9;
    v15[32] = *(v3 + 48);
    v14[0] = 1;
    sub_1B0BA18DC();
    sub_1B0E46958();
    v15[0] = 2;
    sub_1B0E468C8();
    memcpy(v16, (v3 + 72), 0x126uLL);
    memcpy(v15, (v3 + 72), sizeof(v15));
    v14[295] = 3;
    sub_1B03B5C80(v16, v14, &qword_1EB6E4FC8, &qword_1B0ECA2D8);
    sub_1B0BA1930();
    sub_1B0E468F8();
    memcpy(v14, v15, 0x126uLL);
    sub_1B0398EFC(v14, &qword_1EB6E4FC8, &qword_1B0ECA2D8);
    v13 = *(v3 + 368);
    v12 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FD0, &qword_1B0ECA2E0);
    sub_1B0BA3210(&qword_1EB6DADE0, &qword_1EB6E4FD0, &qword_1B0ECA2E0);
    sub_1B0E468F8();
    v13 = *(v3 + 376);
    v12 = 5;
    sub_1B0E468F8();
    v13 = *(v3 + 384);
    v12 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FD8, &qword_1B0ECA2E8);
    sub_1B0BA49C8(&qword_1EB6DB4B8, &qword_1EB6E4FD8, &qword_1B0ECA2E8, sub_1B0BA1984);
    sub_1B0E468F8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B0B9B488()
{
  if (*v0)
  {
    return 1701736292;
  }

  else
  {
    return 0x676E69646E6570;
  }
}

uint64_t sub_1B0B9B4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E69646E6570 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701736292 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B0B9B598(uint64_t a1)
{
  sub_1B0BA6AE4();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9B5D4(uint64_t a1)
{
  sub_1B0BA6AE4();

  return sub_1B0E46F38();
}

unint64_t sub_1B0B9B630()
{
  v1 = *v0;
  v2 = 0xD00000000000001CLL;
  if (v1 == 4)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (v1 == 3)
  {
    v3 = 0xD00000000000001ELL;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD00000000000001ALL;
  if (v1 == 1)
  {
    v4 = 0xD000000000000018;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B0B9B6D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0BA43D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0B9B700(uint64_t a1)
{
  sub_1B0BA4F44();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9B73C(uint64_t a1)
{
  sub_1B0BA4F44();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B9B7C4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000011;
    if (v1 != 1)
    {
      v5 = 0xD000000000000012;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 1701667182;
    }
  }

  else
  {
    v2 = 0xD000000000000016;
    if (v1 == 5)
    {
      v2 = 0xD000000000000015;
    }

    v3 = 0x74617453636E7973;
    if (v1 != 3)
    {
      v3 = 0x75716552636E7973;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B0B9B8AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0BA45CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0B9B8D4(uint64_t a1)
{
  sub_1B0BA1888();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9B910(uint64_t a1)
{
  sub_1B0BA1888();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B9B9A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a3;
  v15 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5168, &qword_1B0ECC180);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA6A3C();
  sub_1B0E46D48();
  v17 = a2;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B0BA3210(&qword_1EB6DB080, &qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B0E468F8();
  if (!v5)
  {
    v17 = v14;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4FD0, &qword_1B0ECA2E0);
    sub_1B0BA3210(&qword_1EB6DADE0, &qword_1EB6E4FD0, &qword_1B0ECA2E0);
    sub_1B0E468F8();
    LOBYTE(v17) = 2;
    sub_1B0E46948();
    LOBYTE(v17) = 3;
    sub_1B0E46948();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1B0B9BBFC()
{
  v1 = 0x43676E696E6E7572;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0x41676E696E6E7572;
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

uint64_t sub_1B0B9BC9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0BA66B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0B9BCC4(uint64_t a1)
{
  sub_1B0BA6A3C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9BD00(uint64_t a1)
{
  sub_1B0BA6A3C();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B9BD5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5170, &qword_1B0ECC188);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA6A90();
  sub_1B0E46D48();
  v14 = 0;
  sub_1B0E46928();
  if (!v5)
  {
    v13 = 1;
    sub_1B0E468C8();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B0B9BEF0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E50C8, &qword_1B0ECAFC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA4E48();
  sub_1B0E46D48();
  v9 = v3[1];
  v14 = *v3;
  v15 = v9;
  v13 = 0;
  sub_1B0BA4E9C();
  sub_1B0E46958();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1B0E46928();
    LOBYTE(v14) = 2;
    sub_1B0E468D8();
    v10 = *(v3 + 72);
    v14 = *(v3 + 56);
    v15 = v10;
    v13 = 3;
    sub_1B0BA4EF0();
    sub_1B0E468F8();
    LOBYTE(v14) = 4;
    sub_1B0E468D8();
    LOBYTE(v14) = 5;
    sub_1B0E468D8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B0B9C14C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5048, &qword_1B0ECAF40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0BA32CC();
  sub_1B0E46D48();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5050, &qword_1B0ECAF48);
  sub_1B0BA49C8(&qword_1EB6DB468, &qword_1EB6E5050, &qword_1B0ECAF48, sub_1B0BA3320);
  sub_1B0E46958();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B0B9C2D4()
{
  if (*v0)
  {
    return 0x697463656E6E6F63;
  }

  else
  {
    return 0x786F626C69616DLL;
  }
}

uint64_t sub_1B0B9C314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x786F626C69616DLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B0B9C3F8(uint64_t a1)
{
  sub_1B0BA6A90();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9C434(uint64_t a1)
{
  sub_1B0BA6A90();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B9C490()
{
  v1 = *v0;
  v2 = 0x79726F74736968;
  v3 = 0x54786F626C69616DLL;
  v4 = 0x6574656C706D6F63;
  if (v1 != 4)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 25705;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1B0B9C54C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0BA6838(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0B9C574(uint64_t a1)
{
  sub_1B0BA4E48();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9C5B0(uint64_t a1)
{
  sub_1B0BA4E48();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B9C64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736B736174 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B0E46A78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B0B9C6D0(uint64_t a1)
{
  sub_1B0BA32CC();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B9C70C(uint64_t a1)
{
  sub_1B0BA32CC();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B9C764(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0B94764(v2);
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

uint64_t sub_1B0B9C898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v6 = sub_1B0E46E18();
  result = sub_1B0E46E28();
  if (v6 > a1 || result < a1)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = sub_1B0E46E18();
  result = sub_1B0E46E28();
  if (v9 > a3 || result < a3)
  {
    goto LABEL_20;
  }

  v10 = a3 - a1;
  if (__OFSUB__(a3, a1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a2 >= 1)
  {
    if (v10 < 0 || v10 >= a2)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v10 <= 0 && v10 > a2)
  {
    return 0;
  }

LABEL_15:
  v12 = __OFADD__(a1, a2);
  v11 = a1 + a2;
  if (v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = sub_1B0E46E18();
  result = sub_1B0E46E28();
  if (v11 >= v13 && result >= v11)
  {
    return v11;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1B0B9C9AC(unsigned __int8 a1)
{
  if (a1)
  {
    return sub_1B0E44C78();
  }

  else
  {
    return 0;
  }
}

void sub_1B0B9CA38(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A664(0, v2, 0);
    v4 = a1 + 64;
    v5 = sub_1B0E460B8();
    v6 = 0;
    v21 = v2;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      v23 = *(a1 + 36);
      v9 = *(a1 + 48) + 16 * v5;
      v10 = *v9;
      v24 = *(v9 + 8);
      v12 = *(v25 + 16);
      v11 = *(v25 + 24);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v12 >= v11 >> 1)
      {
        sub_1B0B0A664((v11 > 1), v12 + 1, 1);
      }

      *(v25 + 16) = v12 + 1;
      v13 = v25 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v24;
      *(v13 + 44) = a2;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_22;
      }

      v4 = a1 + 64;
      v14 = *(a1 + 64 + 8 * v8);
      if ((v14 & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v23 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v15 = v14 & (-2 << (v5 & 0x3F));
      if (v15)
      {
        v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v8 << 6;
        v17 = v8 + 1;
        v18 = (a1 + 72 + 8 * v8);
        while (v17 < (v7 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            sub_1B0425168(v5, v23, 0);
            v7 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        sub_1B0425168(v5, v23, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v21)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

double sub_1B0B9CC70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  sub_1B03BB0B4(a1, v39);
  v11 = sub_1B0B979B4(v8, v9);
  v13 = v12;
  if (!a3)
  {
    goto LABEL_16;
  }

  v14 = sub_1B0B9C9AC(v10);
  if (!v15)
  {

    goto LABEL_10;
  }

  if (v14 == a2 && v15 == a3)
  {

    goto LABEL_16;
  }

  v17 = sub_1B0E46A78();

  if ((v17 & 1) == 0)
  {
LABEL_10:
    v18 = sub_1B0B9C9AC(v10);
    v20 = v19;
    if (v19)
    {
      v21 = v18;
    }

    else
    {
      v21 = 0;
    }

    v22 = *(a1 + 14);
    if (!v22)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

LABEL_16:
  v21 = 0;
  v20 = 0;
  v22 = *(a1 + 14);
  if (!v22)
  {
LABEL_22:
    v27 = 0;
    v25 = 0;
    goto LABEL_23;
  }

LABEL_17:
  LOWORD(v39[0]) = v22;
  v23 = sub_1B0E44BA8();
  v25 = v24;
  v26 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {

    goto LABEL_22;
  }

  v27 = v23;
LABEL_23:
  v28 = *(a1 + 16);
  sub_1B039E440(a1);
  v29 = qword_1B0ECC4B8[v28];
  v30 = qword_1B0ECC4F8[v28];
  *&v35 = v11;
  *(&v35 + 1) = v13;
  *&v36 = v21;
  *(&v36 + 1) = v20;
  *&v37 = v27;
  *(&v37 + 1) = v25;
  *&v38 = v29;
  *(&v38 + 1) = v30;
  v39[0] = v11;
  v39[1] = v13;
  v39[2] = v21;
  v39[3] = v20;
  v39[4] = v27;
  v39[5] = v25;
  v39[6] = v29;
  v39[7] = v30;
  sub_1B0BA1C04(&v35, v34);
  sub_1B0BA1C3C(v39);
  v31 = v36;
  *a4 = v35;
  a4[1] = v31;
  result = *&v37;
  v33 = v38;
  a4[2] = v37;
  a4[3] = v33;
  return result;
}

void sub_1B0B9CE3C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A6A4(0, v2, 0);
    v5 = v40;
    v6 = a1 + 64;
    v7 = sub_1B0E460B8();
    v8 = 0;
    v33 = v2;
    v34 = a2[9];
    v31 = a2[11];
    v32 = a2[10];
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v11 = v6;
      v35 = *(a1 + 36);
      v12 = *(a1 + 56) + 72 * v7;
      v38[0] = *v12;
      v14 = *(v12 + 32);
      v13 = *(v12 + 48);
      v15 = *(v12 + 16);
      v39 = *(v12 + 64);
      v38[2] = v14;
      v38[3] = v13;
      v38[1] = v15;
      if (v34)
      {
        v16 = v31;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v17 = v32;
      }

      else
      {
        v17 = 0;
        v16 = 0;
      }

      sub_1B03BB0B4(v38, v36);
      sub_1B0B9CC70(v38, v17, v16, v37);
      v40 = v5;
      v19 = *(v5 + 16);
      v18 = *(v5 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B0B0A6A4((v18 > 1), v19 + 1, 1);
        v5 = v40;
      }

      *(v5 + 16) = v19 + 1;
      v20 = (v5 + (v19 << 6));
      v21 = v37[0];
      v22 = v37[1];
      v23 = v37[3];
      v20[4] = v37[2];
      v20[5] = v23;
      v20[2] = v21;
      v20[3] = v22;
      v9 = 1 << *(a1 + 32);
      if (v7 >= v9)
      {
        goto LABEL_25;
      }

      v24 = *(v11 + 8 * v10);
      if ((v24 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      if (v35 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v6 = v11;
      v25 = v24 & (-2 << (v7 & 0x3F));
      if (v25)
      {
        v9 = __clz(__rbit64(v25)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v10 << 6;
        v27 = v10 + 1;
        v28 = (a1 + 72 + 8 * v10);
        while (v27 < (v9 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            sub_1B0425168(v7, v35, 0);
            v9 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        sub_1B0425168(v7, v35, 0);
      }

LABEL_4:
      ++v8;
      v7 = v9;
      if (v8 == v33)
      {
        return;
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
}

unsigned int *sub_1B0B9D0D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  sub_1B041D32C(0, v3, 0);
  v4 = v32;
  if (v3)
  {
    v29 = a1 + 32;
    v30 = *(a1 + 16);

    v6 = 0;
    while (v6 != v30)
    {
      v7 = (v29 + 16 * v6);
      v8 = *v7;
      v9 = *(v7 + 2);
      swift_bridgeObjectRetain_n();
      v10 = sub_1B0E44B88();
      v12 = v11;
      result = MailboxName.inbox.unsafeMutableAddressor();
      if ((v9 | (v9 << 32)) == (result[2] | (result[2] << 32)) && (v13 = *result, v14 = *(v8 + 16), v14 == *(*result + 16)))
      {
        if (v14)
        {
          v15 = v8 == v13;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          v16 = (v8 + 32);
          v17 = (v13 + 32);
          while (v14)
          {
            if (*v16 != *v17)
            {
              goto LABEL_15;
            }

            ++v16;
            ++v17;
            if (!--v14)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
          break;
        }
      }

      else
      {
LABEL_15:
        if (sub_1B0E44CF8() >= 3)
        {
          sub_1B0E44D38();
          sub_1B0E46298();
          v18 = sub_1B0E44EE8();
          v19 = MEMORY[0x1B2726D00](v18);
          v20 = v4;
          v21 = v3;
          v23 = v22;

          v31 = v23;
          v3 = v21;
          v4 = v20;
          MEMORY[0x1B2726E80](0x6E656C202CA680E2, 0xAC0000003D687467);
          sub_1B0E44CF8();
          v24 = sub_1B0E469C8();
          MEMORY[0x1B2726E80](v24);

          v10 = v19;
          v12 = v31;
        }
      }

LABEL_17:
      MEMORY[0x1B2726E80](v10, v12);

      MEMORY[0x1B2726E80](0x203E2D2027, 0xE500000000000000);
      v25 = sub_1B0E44BA8();
      MEMORY[0x1B2726E80](v25);

      v27 = *(v4 + 16);
      v26 = *(v4 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_1B041D32C((v26 > 1), v27 + 1, 1);
      }

      ++v6;
      *(v4 + 16) = v27 + 1;
      v28 = v4 + 16 * v27;
      *(v28 + 32) = 39;
      *(v28 + 40) = 0xE100000000000000;
      if (v6 == v3)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_22:

    return v4;
  }

  return result;
}

uint64_t sub_1B0B9D418(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 2;
  }

  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  v2 = sub_1B0E46CB8() & ~(-1 << *(a1 + 32));
  if ((*(a1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

unsigned int *sub_1B0B9D4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v7 = sub_1B0B9D0D8(a2, a3);

  v8 = MailboxesSelectionUsage.allConnections.getter(a4);
  v46 = *(v8 + 2);
  if (v46)
  {
    v44 = v7;
    v9 = 0;
    v45 = v8 + 32;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v12 = MailboxesSelectionUsage.subscript.getter(*&v45[4 * v9], a4);
      if (v12)
      {
        v16 = v12;
        v17 = v13;
        v18 = v14;
        v19 = v15;
        v47 = sub_1B0E44BA8();
        v48 = v20;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v21 = sub_1B0E44B88();
        v23 = v22;
        result = MailboxName.inbox.unsafeMutableAddressor();
        if ((v17 | (v17 << 32)) == (result[2] | (result[2] << 32)) && (v25 = *result, v26 = *(v16 + 16), v26 == *(*result + 16)))
        {
          if (v26)
          {
            v27 = v25 == v16;
          }

          else
          {
            v27 = 1;
          }

          if (!v27)
          {
            v28 = (v16 + 32);
            v29 = (v25 + 32);
            while (v26)
            {
              if (*v28 != *v29)
              {
                goto LABEL_17;
              }

              ++v28;
              ++v29;
              if (!--v26)
              {
                goto LABEL_19;
              }
            }

            __break(1u);
            return result;
          }
        }

        else
        {
LABEL_17:
          if (sub_1B0E44CF8() >= 3)
          {
            sub_1B0E44D38();
            sub_1B0E46298();
            v30 = sub_1B0E44EE8();
            v31 = MEMORY[0x1B2726D00](v30);
            v32 = v10;
            v33 = v19;
            v34 = a4;
            v36 = v35;

            v49 = v36;
            a4 = v34;
            v19 = v33;
            v10 = v32;
            MEMORY[0x1B2726E80](0x6E656C202CA680E2, 0xAC0000003D687467);
            sub_1B0E44CF8();
            v37 = sub_1B0E469C8();
            MEMORY[0x1B2726E80](v37);

            v21 = v31;
            v23 = v49;
          }
        }

LABEL_19:
        if (v19)
        {

          if (v18)
          {
            v38 = v47;
            if (v18 == 1)
            {
              v39 = 0x7953657669746361;
              v40 = 0xEA0000000000636ELL;
            }

            else
            {
              v40 = 0xEA00000000006B73;
              v39 = 0x6154657669746361;
            }
          }

          else
          {
            v40 = 0xE800000000000000;
            v39 = 0x6576697463616E69;
            v38 = v47;
          }
        }

        else
        {
          v41 = sub_1B0E469C8();
          MEMORY[0x1B2726E80](v41);

          v39 = 0x6576697463616E69;
          v40 = 0xE90000000000002DLL;
          v38 = v47;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1B0B01324(0, *(v10 + 2) + 1, 1, v10);
        }

        v43 = *(v10 + 2);
        v42 = *(v10 + 3);
        if (v43 >= v42 >> 1)
        {
          v10 = sub_1B0B01324((v42 > 1), v43 + 1, 1, v10);
        }

        *(v10 + 2) = v43 + 1;
        v11 = &v10[48 * v43];
        *(v11 + 4) = v38;
        *(v11 + 5) = v48;
        *(v11 + 6) = v21;
        *(v11 + 7) = v23;
        *(v11 + 8) = v39;
        *(v11 + 9) = v40;
      }

      if (++v9 == v46)
      {

        return v44;
      }
    }
  }

  return v7;
}

unint64_t sub_1B0B9D8C8(unint64_t result, char a2, void *a3)
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
  result = sub_1B0441038(v8, v7);
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
    sub_1B0B34818(v15, v5 & 1);
    result = sub_1B0441038(v8, v7);
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
    v21 = (v18[6] + 16 * result);
    *v21 = v8;
    v21[1] = v7;
    *(v18[7] + 8 * result) = v9;
    v22 = v18[2];
    v14 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v23;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v20 = result;
  sub_1B0B8F7F4();
  result = v20;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = result;

  *(v18[7] + 8 * v19) = v9;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v9 = *v5;
      v25 = *a3;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = sub_1B0441038(v7, v6);
      v27 = v25[2];
      v28 = (v26 & 1) == 0;
      v14 = __OFADD__(v27, v28);
      v29 = v27 + v28;
      if (v14)
      {
        goto LABEL_23;
      }

      v8 = v26;
      if (v25[3] < v29)
      {
        sub_1B0B34818(v29, 1);
        result = sub_1B0441038(v7, v6);
        if ((v8 & 1) != (v30 & 1))
        {
          goto LABEL_5;
        }
      }

      v31 = *a3;
      if (v8)
      {
        v24 = result;

        *(v31[7] + 8 * v24) = v9;
      }

      else
      {
        v31[(result >> 6) + 8] |= 1 << result;
        v32 = (v31[6] + 16 * result);
        *v32 = v7;
        v32[1] = v6;
        *(v31[7] + 8 * result) = v9;
        v33 = v31[2];
        v14 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v31[2] = v34;
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

char *sub_1B0B9DB20(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TaskHistory.Running(0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v42 = a1;
  if (v12)
  {
    v39[1] = v5;
    v40 = a2;
    v13 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v44 = *(v9 + 72);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v14 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B0BA1F50(v13, v11, type metadata accessor for TaskHistory.Running);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v17 = *v11;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B03E1BE8(*(v11 + 1));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1B0B017C4(0, *(v15 + 2) + 1, 1, v15);
        }

        v19 = *(v15 + 2);
        v18 = *(v15 + 3);
        if (v19 >= v18 >> 1)
        {
          v15 = sub_1B0B017C4((v18 > 1), v19 + 1, 1, v15);
        }

        *(v15 + 2) = v19 + 1;
        *&v15[4 * v19 + 32] = v17;
      }

      else
      {
        v43 = v15;
        v20 = v7;
        v21 = v8;
        v22 = *(v11 + 1);
        v47 = 0;
        v48 = 0xE000000000000000;
        v45[0] = v17;
        v46 = v22;
        sub_1B0E46508();
        v23 = v47;
        v24 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1B0AFF0E8(0, *(v14 + 2) + 1, 1, v14);
        }

        v26 = *(v14 + 2);
        v25 = *(v14 + 3);
        v27 = v14;
        if (v26 >= v25 >> 1)
        {
          v27 = sub_1B0AFF0E8((v25 > 1), v26 + 1, 1, v14);
        }

        v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0) + 64);
        *(v27 + 2) = v26 + 1;
        v14 = v27;
        v29 = &v27[16 * v26];
        *(v29 + 4) = v23;
        *(v29 + 5) = v24;
        sub_1B03BE2C4(&v11[v28], type metadata accessor for ClientCommand);
        v8 = v21;
        v7 = v20;
        v15 = v43;
      }

      v13 += v44;
      --v12;
    }

    while (v12);

    a2 = v40;
    if (!*(v14 + 2))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_16:

      v14 = 0;
    }
  }

  v30 = *(v15 + 2);

  if (!v30)
  {

    v31 = *(a2 + 16);
    if (v31)
    {
      goto LABEL_19;
    }

LABEL_29:

    return v14;
  }

  v31 = *(a2 + 16);
  if (!v31)
  {
    goto LABEL_29;
  }

LABEL_19:
  v32 = v14;
  v33 = 0;
  v34 = 0;
  v35 = a2 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
  v36 = *(v41 + 72);
  while (1)
  {
    sub_1B0BA1F50(v35, v7, type metadata accessor for TaskHistory.Previous);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      break;
    }

    v38 = __OFADD__(v34++, 1);
    if (v38)
    {
      goto LABEL_32;
    }

    sub_1B03BE2C4(v7, type metadata accessor for ClientCommand);
LABEL_21:
    v35 += v36;
    if (!--v31)
    {

      return v32;
    }
  }

  result = sub_1B03BE2C4(v7, type metadata accessor for TaskHistory.Previous);
  v38 = __OFADD__(v33++, 1);
  if (!v38)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

double sub_1B0B9DFA8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = sub_1B0B9DB20(v4, v5, v6);
  v40 = v8;
  v41 = v7;
  v38 = v10;
  v39 = v9;
  v48 = 91;
  v49 = 0xE100000000000000;
  v11 = a1 + *(type metadata accessor for RunningTask(0) + 28);
  v12 = (v11 + *(type metadata accessor for Task.Logger(0) + 20));
  v13 = v12[1];
  v14 = v12[2];
  LOBYTE(v43) = *v12;
  sub_1B0BA1E94();
  v15 = sub_1B0E44E98();
  v17 = v16;
  if (sub_1B0E44CF8() <= 1)
  {
    MEMORY[0x1B2726E80](48, 0xE100000000000000);
  }

  MEMORY[0x1B2726E80](v15, v17);

  MEMORY[0x1B2726E80](45, 0xE100000000000000);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1B2726E80](v13, v14);

  MEMORY[0x1B2726E80](93, 0xE100000000000000);
  v18 = v48;
  v19 = v49;
  sub_1B0450DB0(a1, &v62);
  if (v68)
  {
    if (v68 == 1)
    {
      v20 = v66;
      v21 = v67;
      sub_1B0450C74(&v62, &v48);
      v22 = v51;
      v23 = v52;
      __swift_project_boxed_opaque_existential_0(&v48, v51);
      (*(v23 + 32))(&v70, v22, v23);
      v24 = v71;
      LODWORD(v22) = v72;
      v73 = v70;
      sub_1B039E440(&v73);
      v25 = sub_1B0B979B4(v24, v22);
      v27 = v26;
      if (v21)
      {
        v28 = 0;
        v29 = 0;
      }

      else
      {
        v28 = ConnectionID.debugDescription.getter(v20);
        v29 = v34;
      }

      v33 = v41;
      sub_1B03BE2C4(a1, type metadata accessor for RunningTask);
      __swift_destroy_boxed_opaque_existential_0(&v48);
      v31 = 2;
      v30 = 2;
    }

    else
    {
      v33 = v41;
      if (v66 | (v67 << 32) || v64 | v65 | v62 | v63 | *(&v62 + 1))
      {
        sub_1B03BE2C4(a1, type metadata accessor for RunningTask);
        v25 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v32 = 1;
        v31 = 2;
        v30 = 2;
        goto LABEL_15;
      }

      sub_1B03BE2C4(a1, type metadata accessor for RunningTask);
      v25 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 1;
      v31 = 2;
    }

    v32 = 2;
  }

  else
  {
    sub_1B03BE2C4(a1, type metadata accessor for RunningTask);
    sub_1B0B7ABB4(&v62);
    v25 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 2;
    v31 = 1;
    v32 = 2;
    v33 = v41;
  }

LABEL_15:
  *&v43 = v33;
  *(&v43 + 1) = v40;
  *&v44 = v39;
  *(&v44 + 1) = v38;
  *&v45 = v18;
  *(&v45 + 1) = v19;
  LOBYTE(v46) = v31;
  *(&v46 + 1) = *v69;
  DWORD1(v46) = *&v69[3];
  *(&v46 + 1) = v25;
  *v47 = v27;
  *&v47[8] = v28;
  *&v47[16] = v29;
  v47[24] = v30;
  v47[25] = v32;
  v48 = v33;
  v49 = v40;
  v50 = v39;
  v51 = v38;
  v52 = v18;
  v53 = v19;
  v54 = v31;
  *v55 = *v69;
  *&v55[3] = *&v69[3];
  v56 = v25;
  v57 = v27;
  v58 = v28;
  v59 = v29;
  v60 = v30;
  v61 = v32;
  sub_1B0BA1EE8(&v43, v42);
  sub_1B0BA1F20(&v48);
  v35 = v46;
  a2[2] = v45;
  a2[3] = v35;
  a2[4] = *v47;
  *(a2 + 74) = *&v47[10];
  result = *&v43;
  v37 = v44;
  *a2 = v43;
  a2[1] = v37;
  return result;
}

uint64_t sub_1B0B9E368(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RunningTask(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = *(a2 + 16);
  if (v10)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A5E4(0, v10, 0);
    v11 = v23;
    v12 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_1B0BA1F50(v12, v9, type metadata accessor for RunningTask);
      sub_1B0BA1F50(v9, v6, type metadata accessor for RunningTask);
      sub_1B0B9DFA8(v6, v24);
      sub_1B03BE2C4(v9, type metadata accessor for RunningTask);
      v23 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1B0B0A5E4((v14 > 1), v15 + 1, 1);
        v11 = v23;
      }

      *(v11 + 16) = v15 + 1;
      v16 = (v11 + 96 * v15);
      v17 = v24[1];
      v16[2] = v24[0];
      v16[3] = v17;
      v18 = v24[2];
      v19 = v24[3];
      v20 = v25[0];
      *(v16 + 106) = *(v25 + 10);
      v16[5] = v19;
      v16[6] = v20;
      v16[4] = v18;
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v11;
}

uint64_t sub_1B0B9E56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  v6 = type metadata accessor for StateWithTasks(0);
  v7 = a1 + *(v6 + 28);
  LOBYTE(v64[0]) = *(v7 + *(type metadata accessor for State.Logger(0) + 20));
  sub_1B0BA1E94();
  v8 = sub_1B0E44E98();
  v10 = v9;
  if (sub_1B0E44CF8() <= 1)
  {
    MEMORY[0x1B2726E80](48, 0xE100000000000000);
  }

  MEMORY[0x1B2726E80](v8, v10);

  v56 = __dst[1];
  v57 = __dst[0];
  if (*(a1 + 25))
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 | *(a1 + 24);
  if (*(a1 + 26))
  {
    v13 = 0x10000;
  }

  else
  {
    v13 = 0;
  }

  Environment.capturedValue.getter(v12 | v13, *(a1 + 32), *(a1 + 40), v61);
  v55 = sub_1B0B9D418(*(a1 + 56));
  v54 = sub_1B0B95114(*(a1 + 64));
  v14 = sub_1B0398D1C();
  v17 = sub_1B0BC9560(v14, v16, v15 & 1);
  v19 = v18;
  v21 = v20;
  v22 = *(a1 + *(v6 + 32));
  *&v65[12] = *(a1 + 228);
  v23 = *(a1 + 216);
  v64[2] = *(a1 + 200);
  *v65 = v23;
  v24 = *(a1 + 184);
  v64[0] = *(a1 + 168);
  v64[1] = v24;
  sub_1B03A3668(v64, __dst);
  v53 = v17;
  sub_1B0BCC328(v17, v19, v21, v7, v22, v64);
  sub_1B03AD10C(v64);
  memcpy(__dst, a1, sizeof(__dst));
  v25 = sub_1B03A7A88();
  v26 = LOBYTE(__dst[3]);
  v27 = BYTE1(__dst[3]);
  v28 = __dst[4];
  v29 = __dst[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v30 = sub_1B0397D14();
  v31 = v30;
  if (v28 == 3 || v28 == 2)
  {

    v32 = 1;
    goto LABEL_12;
  }

  v51 = sub_1B0BAE1A4(v30);
  if (v27)
  {
    goto LABEL_23;
  }

  if (v28 == 1)
  {
    if (v26)
    {
      v32 = v26 == 1;
      goto LABEL_24;
    }

LABEL_23:
    v32 = v51 ^ 1;
    goto LABEL_24;
  }

  if (v28 || (v26 - 1) >= 2)
  {
    goto LABEL_23;
  }

  v32 = 0;
LABEL_24:
  sub_1B0397E04(&unk_1F2710548, v29);
  sub_1B0BAE1A4(v31);
  v52 = sub_1B039109C(v29);

  if (v52 & 1) == 0 && (v27)
  {
    sub_1B0BAE1A4(v31);
  }

LABEL_12:

  v33 = __dst[26];
  sub_1B03A8380(__dst[21], __dst[22], __dst[23], __dst[24] & 1, __dst[15], v25, v32 & 1, __dst[26]);
  v35 = v34;
  v37 = v36;

  rawValue = sub_1B03AC81C(v35, v37).elements._rawValue;

  v39 = sub_1B0B9D4A8(v53, v19, v21, rawValue);
  v41 = v40;

  v42 = sub_1B0B95400(v33);
  if (*(v42 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47E8, &qword_1B0EC5EC8);
    v43 = sub_1B0E466A8();
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC8];
  }

  v60 = v43;
  sub_1B0B9D8C8(v42, 1, &v60);

  v44 = v60;
  v45 = *(a1 + 272);
  v46 = *(a1 + 264);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v47 = sub_1B0B9E368(v46, v45);
  result = sub_1B03BE2C4(a1, type metadata accessor for StateWithTasks);
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = v57;
  *(a4 + 24) = v56;
  v49 = v61[3];
  *(a4 + 64) = v61[2];
  *(a4 + 80) = v49;
  *(a4 + 96) = v62;
  v50 = v61[1];
  *(a4 + 32) = v61[0];
  *(a4 + 48) = v50;
  *(a4 + 104) = v55;
  *(a4 + 112) = v54;
  *(a4 + 120) = v39;
  *(a4 + 128) = v41;
  *(a4 + 136) = v44;
  *(a4 + 144) = v47;
  return result;
}

void *sub_1B0B9E9B8(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v46 = MEMORY[0x1E69E7CC8];
  v41 = *(a1 + 16);
  if (!v41)
  {
    return v1;
  }

  v2 = 0;
  v40 = a1 + 32;
  while (1)
  {
    v4 = (v40 + 16 * v2);
    v5 = *v4;
    v7 = *(v4 + 2);
    v6 = *(v4 + 3);
    swift_bridgeObjectRetain_n();
    v8 = sub_1B0E44B88();
    v10 = v9;
    v11 = MailboxName.inbox.unsafeMutableAddressor();
    if ((v7 | (v7 << 32)) == (v11[2] | (v11[2] << 32)))
    {
      v12 = *v11;
      v13 = *(v5 + 16);
      if (v13 == *(*v11 + 16))
      {
        if (!v13 || v5 == v12)
        {
LABEL_12:

          goto LABEL_15;
        }

        v14 = 32;
        while (*(v5 + v14) == *(v12 + v14))
        {
          ++v14;
          if (!--v13)
          {
            goto LABEL_12;
          }
        }
      }
    }

    if (sub_1B0E44CF8() >= 3)
    {
      sub_1B0E44D38();
      sub_1B0E46298();
      v15 = sub_1B0E44EE8();
      v16 = v7;
      v7 = MEMORY[0x1B2726D00](v15);
      v42 = v6;
      v18 = v17;

      v44 = v7;
      v45 = v18;
      LODWORD(v7) = v16;
      MEMORY[0x1B2726E80](0x6E656C202CA680E2, 0xAC0000003D687467);
      sub_1B0E44CF8();
      v19 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v19);

      v6 = v42;

      v8 = v44;
      v10 = v45;
    }

LABEL_15:
    v21 = sub_1B0441038(v8, v10);
    v22 = v1[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (v1[3] < v24)
    {
      sub_1B0B34ACC(v24, 1);
      v1 = v46;
      v26 = sub_1B0441038(v8, v10);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_29;
      }

      v21 = v26;
    }

    if (v25)
    {
      v43 = v6;

      v28 = v1[7];
      v29 = *(v28 + 8 * v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v28 + 8 * v21) = v29;
      v31 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_1B0B01568(0, v29[2] + 1, 1, v29);
        *(v28 + 8 * v21) = v29;
      }

      v33 = v29[2];
      v32 = v29[3];
      if (v33 >= v32 >> 1)
      {
        v29 = sub_1B0B01568((v32 > 1), v33 + 1, 1, v29);
        *(v28 + 8 * v21) = v29;
      }

      v29[2] = v33 + 1;
      v3 = &v29[2 * v33];
      v3[4] = v5;
      *(v3 + 10) = v31;
      *(v3 + 11) = v43;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4430, &unk_1B0EC51A0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1B0EC1E70;
      *(v34 + 32) = v5;
      *(v34 + 40) = v7;
      *(v34 + 44) = v6;
      v1[(v21 >> 6) + 8] |= 1 << v21;
      v35 = (v1[6] + 16 * v21);
      *v35 = v8;
      v35[1] = v10;
      *(v1[7] + 8 * v21) = v34;
      v36 = v1[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_28;
      }

      v1[2] = v38;
    }

    if (++v2 == v41)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

void *sub_1B0B9ED88(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v54 = MEMORY[0x1E69E7CC8];
  v47 = *(a1 + 16);
  if (!v47)
  {
    return v1;
  }

  v2 = 0;
  v46 = a1 + 32;
  while (1)
  {
    v4 = (v46 + 56 * v2);
    v48 = *v4;
    v5 = *(v4 + 1);
    v6 = v4[4];
    v7 = *(v4 + 3);
    v8 = *(v4 + 4);
    v9 = *(v4 + 5);
    v10 = *(v4 + 48);
    swift_bridgeObjectRetain_n();
    sub_1B03B2000(v7, v8);
    v50 = v9;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = sub_1B0E44B88();
    v13 = v12;
    v14 = MailboxName.inbox.unsafeMutableAddressor();
    v52 = v8;
    v49 = v7;
    v51 = v10;
    if ((v6 | (v6 << 32)) == (v14[2] | (v14[2] << 32)))
    {
      v15 = *v14;
      v16 = *(v5 + 16);
      if (v16 == *(*v14 + 16))
      {
        if (!v16 || v5 == v15)
        {
LABEL_12:

          goto LABEL_15;
        }

        v17 = 32;
        while (*(v5 + v17) == *(v15 + v17))
        {
          ++v17;
          if (!--v16)
          {
            goto LABEL_12;
          }
        }
      }
    }

    if (sub_1B0E44CF8() >= 3)
    {
      sub_1B0E44D38();
      sub_1B0E46298();
      v18 = sub_1B0E44EE8();
      v19 = MEMORY[0x1B2726D00](v18);
      v20 = v1;
      v21 = v2;
      v22 = v6;
      v6 = v23;

      v53 = v6;
      LODWORD(v6) = v22;
      v2 = v21;
      v1 = v20;
      MEMORY[0x1B2726E80](0x6E656C202CA680E2, 0xAC0000003D687467);
      sub_1B0E44CF8();
      v24 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v24);

      v11 = v19;
      v13 = v53;
    }

LABEL_15:
    v25 = v11;
    v27 = sub_1B0441038(v11, v13);
    v28 = v1[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v1[3] >= v30)
    {
      if (v26)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1B0B34AB8(v30, 1);
      v1 = v54;
      v32 = sub_1B0441038(v25, v13);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_29;
      }

      v27 = v32;
      if (v31)
      {
LABEL_22:
        v39 = v5;

        v40 = v1[7];
        v41 = *(v40 + 8 * v27);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v40 + 8 * v27) = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v41 = sub_1B0B01444(0, *(v41 + 2) + 1, 1, v41);
          *(v40 + 8 * v27) = v41;
        }

        v44 = *(v41 + 2);
        v43 = *(v41 + 3);
        if (v44 >= v43 >> 1)
        {
          v41 = sub_1B0B01444((v43 > 1), v44 + 1, 1, v41);
          *(v40 + 8 * v27) = v41;
        }

        *(v41 + 2) = v44 + 1;
        v3 = &v41[56 * v44];
        *(v3 + 8) = v48;
        *(v3 + 5) = v39;
        *(v3 + 12) = v6;
        *(v3 + 7) = v49;
        *(v3 + 8) = v52;
        *(v3 + 9) = v50;
        v3[80] = v51;
        goto LABEL_4;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4428, &qword_1B0EC5198);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1B0EC1E70;
    *(v34 + 32) = v48;
    *(v34 + 40) = v5;
    *(v34 + 48) = v6;
    *(v34 + 56) = v49;
    *(v34 + 64) = v8;
    *(v34 + 72) = v50;
    *(v34 + 80) = v51;
    v1[(v27 >> 6) + 8] |= 1 << v27;
    v35 = (v1[6] + 16 * v27);
    *v35 = v25;
    v35[1] = v13;
    *(v1[7] + 8 * v27) = v34;
    v36 = v1[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_28;
    }

    v1[2] = v38;
LABEL_4:
    if (++v2 == v47)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

void sub_1B0B9F200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0B95668(a1);

  v4 = *(a2 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = 0;
    v7 = (a2 + 48);
    do
    {
      if (v6 >= *(a2 + 16))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v8 = *(v7 - 4);
      v9 = *(v7 - 1);
      v10 = *v7;
      if ((*v7 & 4) != 0)
      {
        v14 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B9CA38(v14, v8);
        v13 = v15;
      }

      else
      {
        sub_1B09AFB1C(*(v7 - 1), *v7);
        sub_1B09AFB1C(v9, v10);
        v11 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B9CA38(v11, v8);
        v13 = v12;

        sub_1B09AEA14(v10);
      }

      sub_1B09AFBA0(v9, v10);
      v16 = *(v13 + 16);
      v17 = v5[2];
      v18 = v17 + v16;
      if (__OFADD__(v17, v16))
      {
        goto LABEL_67;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v18 <= v5[3] >> 1)
      {
        if (!*(v13 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v17 <= v18)
        {
          v20 = v17 + v16;
        }

        else
        {
          v20 = v17;
        }

        v5 = sub_1B0B01568(isUniquelyReferenced_nonNull_native, v20, 1, v5);
        if (!*(v13 + 16))
        {
LABEL_3:

          if (v16)
          {
            goto LABEL_68;
          }

          goto LABEL_4;
        }
      }

      if ((v5[3] >> 1) - v5[2] < v16)
      {
        goto LABEL_69;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4438, &qword_1B0ECA320);
      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = v5[2];
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_70;
        }

        v5[2] = v23;
      }

LABEL_4:
      ++v6;
      v7 += 3;
    }

    while (v4 != v6);
  }

  v24 = sub_1B0B9E9B8(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5000, &qword_1B0ECA328);
  v25 = sub_1B0E46688();
  v26 = 0;
  v27 = 1 << *(v24 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v97 = v24 + 8;
  v29 = v28 & v24[8];
  v30 = (v27 + 63) >> 6;
  v101 = v25 + 64;
  v31 = MEMORY[0x1E69E7CC0];
  v103 = v25;
  for (i = v24; v29; v103[2] = v48)
  {
    v32 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
LABEL_31:
    v35 = v32 | (v26 << 6);
    v36 = (v24[6] + 16 * v35);
    v37 = *v36;
    v38 = *(v24[7] + 8 * v35);
    v39 = *(v38 + 16);
    if (v39)
    {
      v105 = *v36;
      v104 = v36[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B0A644(0, v39, 0);
      v40 = v31;
      v41 = *(v31 + 16);
      v42 = 44;
      do
      {
        v43 = *(v38 + v42);
        v44 = *(v40 + 24);
        if (v41 >= v44 >> 1)
        {
          sub_1B0B0A644((v44 > 1), v41 + 1, 1);
        }

        *(v40 + 16) = v41 + 1;
        *(v40 + 4 * v41 + 32) = v43;
        v42 += 16;
        ++v41;
        --v39;
      }

      while (v39);

      v31 = MEMORY[0x1E69E7CC0];
      v24 = i;
      v37 = v105;
      v45 = v104;
    }

    else
    {
      v45 = v36[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v40 = v31;
    }

    *(v101 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    v46 = (v103[6] + 16 * v35);
    *v46 = v37;
    v46[1] = v45;
    *(v103[7] + 8 * v35) = v40;
    v47 = v103[2];
    v22 = __OFADD__(v47, 1);
    v48 = v47 + 1;
    if (v22)
    {
      goto LABEL_71;
    }
  }

  v33 = v26;
  while (1)
  {
    v26 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (v26 >= v30)
    {
      break;
    }

    v34 = v97[v26];
    ++v33;
    if (v34)
    {
      v32 = __clz(__rbit64(v34));
      v29 = (v34 - 1) & v34;
      goto LABEL_31;
    }
  }

  v49 = sub_1B0B9ED88(a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5008, &qword_1B0ECA330);
  v50 = sub_1B0E46688();
  v51 = v50;
  v52 = 0;
  v53 = v49[8];
  v89 = v49 + 8;
  v54 = 1 << *(v49 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & v53;
  v57 = (v54 + 63) >> 6;
  v92 = v49;
  v93 = v50 + 64;
  v90 = v57;
  v91 = v50;
  if ((v55 & v53) == 0)
  {
LABEL_45:
    v59 = v52;
    while (1)
    {
      v52 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        goto LABEL_65;
      }

      if (v52 >= v57)
      {

        return;
      }

      v60 = v89[v52];
      ++v59;
      if (v60)
      {
        v58 = __clz(__rbit64(v60));
        v56 = (v60 - 1) & v60;
        goto LABEL_50;
      }
    }
  }

  while (1)
  {
    v58 = __clz(__rbit64(v56));
    v56 &= v56 - 1;
LABEL_50:
    v61 = v58 | (v52 << 6);
    v62 = (v49[6] + 16 * v61);
    v63 = *v62;
    v64 = *(v49[7] + 8 * v61);
    v65 = *(v64 + 16);
    if (v65)
    {
      v96 = *v62;
      v98 = v61;
      v100 = v56;
      v102 = v52;
      v94 = v62[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B0A684(0, v65, 0);
      v66 = 0;
      v67 = v31;
      v68 = v64;
      do
      {
        v107 = v67;
        v106 = *(v68 + v66 + 32);
        v69 = *(v68 + v66 + 56);
        v70 = *(v68 + v66 + 64);
        v71 = *(v68 + v66 + 80);
        if (*(v68 + v66 + 72))
        {
          sub_1B03B2000(v69, v70);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03B2000(v69, v70);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03B2000(v69, v70);
          v72 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v73 = SectionSpecifier.Part.debugDescription.getter(v72);
          v74 = v71;
          v76 = v75;

          MEMORY[0x1B2726E80](v73, v76);
          v71 = v74;

          sub_1B0391D50(v69, v70);

          sub_1B0391D50(v69, v70);

          v78 = 0x656D686361747461;
          v77 = 0xEB0000000020746ELL;
        }

        else
        {
          sub_1B03B2000(*(v68 + v66 + 56), *(v68 + v66 + 64));
          sub_1B03B2000(v69, v70);
          sub_1B0391D50(v69, v70);

          v77 = 0xE400000000000000;
          v78 = 1954047348;
        }

        v79 = dword_1B0ECC538[v71];
        v67 = v107;
        v81 = *(v107 + 16);
        v80 = *(v107 + 24);
        if (v81 >= v80 >> 1)
        {
          sub_1B0B0A684((v80 > 1), v81 + 1, 1);
          v67 = v107;
        }

        *(v67 + 16) = v81 + 1;
        v82 = v67 + 48 * v81;
        *(v82 + 32) = v106;
        *(v82 + 40) = v69;
        *(v82 + 48) = v70;
        *(v82 + 56) = v78;
        *(v82 + 64) = v77;
        *(v82 + 72) = v79;
        v66 += 56;
        --v65;
      }

      while (v65);
      v83 = v67;

      v84 = v83;
      v31 = MEMORY[0x1E69E7CC0];
      v51 = v91;
      v49 = v92;
      v56 = v100;
      v52 = v102;
      v57 = v90;
      v63 = v96;
      v61 = v98;
      v85 = v94;
    }

    else
    {
      v85 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v84 = v31;
    }

    *(v93 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
    v86 = (v51[6] + 16 * v61);
    *v86 = v63;
    v86[1] = v85;
    *(v51[7] + 8 * v61) = v84;
    v87 = v51[2];
    v22 = __OFADD__(v87, 1);
    v88 = v87 + 1;
    if (v22)
    {
      break;
    }

    v51[2] = v88;
    if (!v56)
    {
      goto LABEL_45;
    }
  }

LABEL_72:
  __break(1u);
}

uint64_t sub_1B0B9F970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B0B11AE0(a1);
  v5 = *(a1 + 32);
  v6 = *(a1 + 36);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  if (*(a1 + 48))
  {
    v9 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
    result = sub_1B0E46508();
    v9 = 0xE000000000000000;
  }

  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  *a2 = v10;
  *(a2 + 4) = v6 & 1;
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v8 & 1;
  return result;
}

double sub_1B0B9FA40@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for MessagesPendingDownload(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = *a1;
  v38 = a1[1];
  v39 = v13;
  v37 = a1[2];
  v36 = type metadata accessor for PendingPersistenceUpdates(0);
  v14 = &a1[*(v36 + 28)];
  sub_1B0BA1F50(v14, v12, type metadata accessor for MessagesPendingDownload);
  if (*(*v12 + 16) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270), (sub_1B0E46E98() & 1) == 0))
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B24198();
    v16 = sub_1B0B963BC();
    v34 = v17;
    v35 = v16;
    sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v33 = sub_1B0B963BC();
    v15 = v18;
  }

  else
  {
    v33 = 0;
    v15 = 0;
    v34 = 1;
    v35 = 0;
  }

  sub_1B03BE2C4(v12, type metadata accessor for MessagesPendingDownload);
  v19 = type metadata accessor for MessagesPendingDownloadPerPass(0);
  sub_1B0BA1F50(&v14[*(v19 + 20)], v9, type metadata accessor for MessagesPendingDownload);
  if (*(*v9 + 16) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270), (sub_1B0E46E98() & 1) == 0))
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B24198();
    v20 = sub_1B0B963BC();
    v23 = v24;
    sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v21 = sub_1B0B963BC();
    v22 = v25;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 1;
  }

  sub_1B03BE2C4(v9, type metadata accessor for MessagesPendingDownload);
  v26 = sub_1B0B963BC();
  v28 = v27;
  sub_1B03BE2C4(a1, type metadata accessor for PendingPersistenceUpdates);
  LOBYTE(v41) = v39;
  BYTE1(v41) = v38;
  BYTE2(v41) = v37;
  *(&v41 + 1) = v35;
  *&v42 = v34;
  *(&v42 + 1) = v33;
  *&v43 = v15;
  *(&v43 + 1) = v20;
  *&v44 = v23;
  *(&v44 + 1) = v21;
  *&v45 = v22;
  *(&v45 + 1) = v26;
  v46 = v28;
  v47[0] = v39;
  v47[1] = v38;
  v47[2] = v37;
  v48 = v35;
  v49 = v34;
  v50 = v33;
  v51 = v15;
  v52 = v20;
  v53 = v23;
  v54 = v21;
  v55 = v22;
  v56 = v26;
  v57 = v28;
  sub_1B0BA1DD8(&v41, &v40);
  sub_1B0BA1E10(v47);
  v29 = v44;
  v30 = v45;
  *(a2 + 32) = v43;
  *(a2 + 48) = v29;
  *(a2 + 64) = v30;
  *(a2 + 80) = v46;
  result = *&v41;
  v32 = v42;
  *a2 = v41;
  *(a2 + 16) = v32;
  return result;
}

__n128 sub_1B0B9FDD0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s15MissingMessagesO8CompleteVMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44[-v11];
  v13 = _s15MissingMessagesO10IncompleteVMa(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = _s15MissingMessagesOMa(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = 1;
  v64 = 1;
  sub_1B0BA1F50(a1, v18, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v46 = a1;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B03D3EF4(v18, v15, _s15MissingMessagesO10IncompleteVMa);
      sub_1B03B5C80(v15, v12, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v20 = sub_1B0B963BC();
      v22 = v21;
      sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v23 = _s15MissingMessagesO8ProgressVMa(0);
      v24 = sub_1B0B963BC();
      v26 = v25;
      v27 = *(v13 + 24);
      v28 = &v15[*(v13 + 20)];
      v29 = *v28;
      v30 = v28[4];
      if (v30)
      {
        v29 = 0;
      }

      v45 = v29;
      v65 = v30;
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_1B0BA1F50(&v15[v27], v9, _s15MissingMessagesO11QueriedUIDsVMa);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0E46508();
      sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v32 = v52;
      v31 = v53;
      sub_1B03BE2C4(v46, _s15MissingMessagesOMa);
      v33 = &v15[*(v23 + 24)];
      v34 = *v33;
      v35 = a2;
      v36 = v33[4];
      v37 = v15;
      v38 = v45;
      sub_1B03BE2C4(v37, _s15MissingMessagesO10IncompleteVMa);
      if (v36)
      {
        v39 = 0;
      }

      else
      {
        v39 = v34;
      }

      v64 = v36;
      a2 = v35;
      v40 = 2;
      v41 = 2;
    }

    else
    {
      sub_1B03D3EF4(v18, v6, _s15MissingMessagesO8CompleteVMa);
      if (v6[4])
      {
        v38 = 0;
      }

      else
      {
        v38 = *v6;
      }

      v65 = v6[4];
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_1B0BA1F50(&v6[*(v4 + 20)], v9, _s15MissingMessagesO11QueriedUIDsVMa);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0E46508();
      sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v32 = v52;
      v31 = v53;
      sub_1B03BE2C4(v46, _s15MissingMessagesOMa);
      sub_1B03BE2C4(v6, _s15MissingMessagesO8CompleteVMa);
      v26 = 0;
      v24 = 0;
      v22 = 0;
      v20 = 0;
      v39 = 0;
      v41 = 1;
      v40 = 2;
    }
  }

  else
  {
    sub_1B03BE2C4(a1, _s15MissingMessagesOMa);
    v31 = 0;
    v32 = 0;
    v38 = 0;
    v26 = 0;
    v24 = 0;
    v22 = 0;
    v20 = 0;
    v39 = 0;
    v41 = 2;
    v40 = 1;
  }

  LOBYTE(v48) = v40;
  *(&v48 + 1) = v20;
  v49.n128_u64[0] = v22;
  v49.n128_u64[1] = v24;
  *&v50 = v26;
  DWORD2(v50) = v38;
  BYTE12(v50) = v65;
  *v51 = v32;
  *&v51[8] = v31;
  *&v51[16] = v39;
  v51[20] = v64;
  v51[21] = v41;
  LOBYTE(v52) = v40;
  v53 = v20;
  v54 = v22;
  v55 = v24;
  v56 = v26;
  v57 = v38;
  v58 = v65;
  v59 = v32;
  v60 = v31;
  v61 = v39;
  v62 = v64;
  v63 = v41;
  sub_1B0BA1D70(&v48, v47);
  sub_1B0BA1DA8(&v52);
  v42 = *v51;
  *(a2 + 32) = v50;
  *(a2 + 48) = v42;
  *(a2 + 62) = *&v51[14];
  result = v49;
  *a2 = v48;
  *(a2 + 16) = result;
  return result;
}

void *sub_1B0BA0338@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = _s15MissingMessagesOMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PendingPersistenceUpdates(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 2);
  v12 = *(a1 + 12);
  v76 = *(a1 + 12);
  v13 = *(a1 + 4);
  v14 = *(a1 + 20);
  v75 = *(a1 + 20);
  v15 = a1[3];
  v16 = *(a1 + 32);
  v35 = v10;
  v36 = a2;
  v28 = v6;
  if (v16)
  {
    if (v16 == 1)
    {
      v33 = 0;
      v34 = v15;
      v74 = 1;
      v73 = 0;
    }

    else
    {
      v33 = 0;
      v34 = 0;
      v74 = 1;
      v73 = 1;
    }
  }

  else
  {
    v74 = 0;
    v73 = 1;
    v33 = v15;
    v34 = 0;
  }

  v32 = sub_1B0BAE8A0(a1[19], a1[20], a1[21]);
  v17 = sub_1B0B95AA0(a1[22]);
  if (*(v17 + 16))
  {
    v31 = v17;
  }

  else
  {

    v31 = 0;
  }

  if (v14)
  {
    v18 = 0;
  }

  else
  {
    v18 = v13;
  }

  if (v12)
  {
    v19 = 0;
  }

  else
  {
    v19 = v11;
  }

  v29 = v19;
  v30 = v18;
  v20 = type metadata accessor for MailboxSyncState(0);
  v21 = (a1 + v20[12]);
  v22 = v21[3];
  v23 = v21[4];
  __swift_project_boxed_opaque_existential_0(v21, v22);
  (*(v23 + 88))(&v69, v22, v23);
  sub_1B0BA1F50(a1 + v20[13], v9, type metadata accessor for PendingPersistenceUpdates);
  sub_1B0B9FA40(v9, v77);
  *(&v68[3] + 7) = v77[3];
  *(&v68[4] + 7) = v77[4];
  *(&v68[5] + 7) = v78;
  *(&v68[2] + 7) = v77[2];
  *(v68 + 7) = v77[0];
  *(&v68[1] + 7) = v77[1];
  v24 = sub_1B0B95CC8(*(a1 + v20[14]));
  v25 = v28;
  sub_1B0BA1F50(a1 + v20[17], v28, _s15MissingMessagesOMa);
  sub_1B0B9FDD0(v25, &v64);
  sub_1B03BE2C4(a1, type metadata accessor for MailboxSyncState);
  *&v38[104] = v71;
  *&v38[88] = v70;
  *&v38[72] = v69;
  *&v38[153] = v68[2];
  *&v38[169] = v68[3];
  *&v38[185] = v68[4];
  *&v38[200] = *(&v68[4] + 15);
  *&v38[121] = v68[0];
  *&v38[137] = v68[1];
  *&v38[286] = *&v67[14];
  *&v38[256] = v66;
  *&v38[272] = *v67;
  *&v38[224] = v64;
  *&v38[240] = v65;
  v52 = v71;
  v51 = v70;
  v50 = v69;
  v55 = v68[1];
  v54 = v68[0];
  *&v58[15] = *(&v68[4] + 15);
  *v58 = v68[4];
  v57 = v68[3];
  v56 = v68[2];
  *v38 = v35;
  *&v38[8] = v29;
  v38[12] = v76;
  *&v38[16] = v30;
  v38[20] = v75;
  *&v38[24] = v33;
  v38[32] = v74;
  *&v38[40] = v34;
  v38[48] = v73;
  *&v38[56] = v32;
  *&v38[64] = v31;
  v38[120] = v72;
  *&v38[216] = v24;
  v39 = v35;
  v40 = v29;
  v41 = v76;
  v42 = v30;
  v43 = v75;
  v44 = v33;
  v45 = v74;
  v46 = v34;
  v47 = v73;
  v48 = v32;
  v49 = v31;
  v53 = v72;
  v59 = v24;
  *(v63 + 14) = *&v67[14];
  v63[0] = *v67;
  v62 = v66;
  v60 = v64;
  v61 = v65;
  sub_1B0BA1D08(v38, &v37);
  sub_1B0BA1D40(&v39);
  return memcpy(v36, v38, 0x126uLL);
}

void *sub_1B0BA0798@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = _s19UserInitiatedSearchVMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for MailboxSyncState(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0BA1C6C(v81);
  memcpy(v70, v81, sizeof(v70));
  v11 = *a1;
  v76 = a1[1];
  v12 = a1[3];
  v77 = a1[2];
  v78 = v12;
  v79[0] = a1[4];
  *(v79 + 9) = *(a1 + 73);
  v75 = v11;
  v13 = DWORD2(v76);
  v14 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = sub_1B0B979B4(v14, v13);
  v59 = v16;
  v60 = v15;
  sub_1B0B11A84(&v75, v65);
  sub_1B0B9F970(&v75, &v72);
  v17 = *(a1 + 12);
  if (v17)
  {
    v18 = (v17 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped);
    swift_beginAccess();
    LODWORD(v65[0]) = *v18;
    v19 = sub_1B0E44BA8();
    v57 = v20;
    v58 = v19;
    v21 = _s13SelectedStateV7WrappedVMa(0);
    sub_1B0BA1F50(v18 + *(v21 + 20), v10, type metadata accessor for MailboxSyncState);
    sub_1B0BA0338(v10, v64);
    memcpy(v65, v64, 0x126uLL);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    memcpy(v80, v65, sizeof(v80));
  }

  else
  {
    memcpy(v80, v81, sizeof(v80));
    v57 = 0;
    v58 = 0;
  }

  memcpy(v69, v70, 0x126uLL);
  sub_1B0398EFC(v69, &qword_1EB6E4FC8, &qword_1B0ECA2D8);
  memcpy(v70, v80, sizeof(v70));
  v22 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23 = sub_1B0B95884(v22);

  *&v65[0] = v23;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B9C764(v65);

  v24 = *(*&v65[0] + 16);
  v61 = a2;
  if (v24)
  {
    v56 = *&v65[0];
  }

  else
  {

    v56 = 0;
  }

  v25 = *(a1 + 19);
  v26 = *(v25 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v28 = a1;
    *&v65[0] = MEMORY[0x1E69E7CC0];
    sub_1B0B0A644(0, v26, 0);
    v29 = *&v65[0];
    v30 = v25 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v31 = *(v5 + 72);
    do
    {
      sub_1B0BA1F50(v30, v7, _s19UserInitiatedSearchVMa);
      v32 = *v7;
      sub_1B03BE2C4(v7, _s19UserInitiatedSearchVMa);
      *&v65[0] = v29;
      v34 = *(v29 + 16);
      v33 = *(v29 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1B0B0A644((v33 > 1), v34 + 1, 1);
        v29 = *&v65[0];
      }

      *(v29 + 16) = v34 + 1;
      *(v29 + 4 * v34 + 32) = v32;
      v30 += v31;
      --v26;
    }

    while (v26);
    a1 = v28;
    v27 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {

      v29 = 0;
    }
  }

  v55 = v29;
  v35 = *(a1 + 18);
  v36 = *(v35 + 16);
  if (v36)
  {
    v54 = a1;
    *v64 = v27;
    sub_1B0B0A684(0, v36, 0);
    v37 = *v64;
    v38 = (v35 + 64);
    do
    {
      v62 = *(v38 - 8);
      v39 = *(v38 - 3);
      v40 = *(v38 - 2);
      v41 = *v38;
      if (*(v38 - 1))
      {
        *&v65[0] = 0x656D686361747461;
        *(&v65[0] + 1) = 0xEB0000000020746ELL;
        sub_1B03B2000(v39, v40);
        sub_1B03B2000(v39, v40);
        v42 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v43 = SectionSpecifier.Part.debugDescription.getter(v42);
        MEMORY[0x1B2726E80](v43);

        sub_1B0391D50(v39, v40);

        v44 = *(&v65[0] + 1);
        v45 = *&v65[0];
      }

      else
      {
        sub_1B03B2000(*(v38 - 3), *(v38 - 2));
        v44 = 0xE400000000000000;
        v45 = 1954047348;
      }

      v46 = dword_1B0ECC538[v41];
      *v64 = v37;
      v48 = *(v37 + 16);
      v47 = *(v37 + 24);
      if (v48 >= v47 >> 1)
      {
        v53 = v44;
        sub_1B0B0A684((v47 > 1), v48 + 1, 1);
        v44 = v53;
        v37 = *v64;
      }

      *(v37 + 16) = v48 + 1;
      v49 = v37 + 48 * v48;
      *(v49 + 32) = v62;
      v38 += 40;
      *(v49 + 40) = v39;
      *(v49 + 48) = v40;
      *(v49 + 56) = v45;
      *(v49 + 64) = v44;
      *(v49 + 72) = v46;
      --v36;
    }

    while (v36);
    sub_1B03A3614(v54);
    v50 = v37;
  }

  else
  {
    sub_1B03A3614(a1);
    v50 = MEMORY[0x1E69E7CC0];
  }

  if (!*(v50 + 16))
  {

    v50 = 0;
  }

  *v64 = v60;
  *&v64[8] = v59;
  *&v64[16] = v72;
  *&v64[32] = v73;
  v64[48] = v74;
  *&v64[49] = *v71;
  *&v64[52] = *&v71[3];
  *&v64[56] = v58;
  *&v64[64] = v57;
  memcpy(&v64[72], v70, 0x126uLL);
  *&v64[368] = v56;
  *&v64[376] = v55;
  *&v64[384] = v50;
  *&v65[0] = v60;
  *(&v65[0] + 1) = v59;
  v65[1] = v72;
  v65[2] = v73;
  LOBYTE(v65[3]) = v74;
  *(&v65[3] + 1) = *v71;
  DWORD1(v65[3]) = *&v71[3];
  *(&v65[3] + 1) = v58;
  *&v65[4] = v57;
  memcpy(&v65[4] + 8, v70, 0x126uLL);
  v66 = v56;
  v67 = v55;
  v68 = v50;
  sub_1B0BA1CA0(v64, &v63);
  sub_1B0BA1CD8(v65);
  return memcpy(v61, v64, 0x188uLL);
}

char *sub_1B0BA0E0C(char *result)
{
  if ((result[24] & 1) == 0)
  {
    return 0;
  }

  v1 = 0;
  v2 = *(*result + 16);
  v3 = *result + 32;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_3:
  v5 = (v3 + 176 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v6 = *v5;
    v7 = v5[2];
    v19[1] = v5[1];
    v19[2] = v7;
    v19[0] = v6;
    v8 = v5[3];
    v9 = v5[4];
    v10 = v5[6];
    v19[5] = v5[5];
    v20 = v10;
    v19[3] = v8;
    v19[4] = v9;
    v11 = v5[7];
    v12 = v5[8];
    v13 = v5[10];
    v23 = v5[9];
    v24 = v13;
    v21 = v11;
    v22 = v12;
    v14 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_16;
    }

    ++v1;
    v5 += 11;
    if (v20)
    {
      sub_1B03A35B8(v19, v17);
      sub_1B0BA0798(v19, __src);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1B0B0169C(0, *(v4 + 2) + 1, 1, v4);
      }

      v16 = *(v4 + 2);
      v15 = *(v4 + 3);
      if (v16 >= v15 >> 1)
      {
        v4 = sub_1B0B0169C((v15 > 1), v16 + 1, 1, v4);
      }

      *(v4 + 2) = v16 + 1;
      result = memcpy(&v4[392 * v16 + 32], __src, 0x188uLL);
      v1 = v14;
      goto LABEL_3;
    }
  }

  return v4;
}

uint64_t sub_1B0BA0F7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if ((*a1 & 0xFF0000) != 0)
  {
    v5 = 0x20000;
  }

  else
  {
    v5 = 0x10000;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v6 = 0x1000000;
  }

  else
  {
    v6 = 0x2000000;
  }

  if ((v4 & 0x100) != 0)
  {
    v7 = 512;
  }

  else
  {
    v7 = 256;
  }

  if (v4)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8 | v5 | v7 | v6;
  if (*a1 == 2)
  {
    v10 = 3;
  }

  else
  {
    v10 = v9;
  }

  if (a1[6])
  {
    v11 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B9CE3C(v11, a1);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 65);
  v15 = a1[9];
  if (v15)
  {
    v17 = a1[10];
    v16 = a1[11];
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = MailboxName.init(_:)(v15);
    v20 = sub_1B0B979B4(v18, v19);
    v22 = v21;
    sub_1B0BA1B28(a1);
  }

  else
  {
    sub_1B0BA1B28(a1);
    v20 = 0;
    v22 = 0;
    v17 = 0;
    v16 = 0;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0BA1B7C(v20, v22);

  result = sub_1B0BA1BC0(v20, v22);
  *a2 = v10;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v20;
  *(a2 + 32) = v22;
  *(a2 + 40) = v17;
  *(a2 + 48) = v16;
  return result;
}

unint64_t sub_1B0BA1164()
{
  result = qword_1EB6DDC60;
  if (!qword_1EB6DDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDC60);
  }

  return result;
}

unint64_t sub_1B0BA11B8()
{
  result = qword_1EB6DDC68;
  if (!qword_1EB6DDC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDC68);
  }

  return result;
}

unint64_t sub_1B0BA120C()
{
  result = qword_1EB6DDE00;
  if (!qword_1EB6DDE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE00);
  }

  return result;
}

uint64_t sub_1B0BA1260(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1B0BA12BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13IMAP2Behavior14StateWithTasksV08CapturedC033_EE00D354300B3A4BFC8C49B1137EE4E5LLV7MailboxV25PendingPersistenceUpdatesV08MessagesQ8DownloadVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_13IMAP2Behavior14StateWithTasksV08CapturedC033_EE00D354300B3A4BFC8C49B1137EE4E5LLV7MailboxV0p4SyncC0VSg(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}