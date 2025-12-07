uint64_t sub_1DB2782C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, void (*a7)(uint64_t, uint64_t)@<X6>, uint64_t x8_0@<X8>)
{
  v14 = *(a4 + 16);
  swift_bridgeObjectRetain_n();

  if (v14)
  {
    v15 = sub_1DB141B30(a1, a2);
    if (v16)
    {
      v17 = v15;

      swift_bridgeObjectRelease_n();
      return sub_1DB27A918(*(*(a4 + 56) + 8 * v17), a5, a6, a7, x8_0);
    }
  }

  v62 = a6;
  v63 = a7;

  v19 = sub_1DB27B458(a4, a1, a2);
  v21 = v20;
  v23 = v22;
  v24 = ~v22;

  v71 = a1;
  if (v24)
  {

    v25 = sub_1DB29FCC4(v19, v21, v23 & 1, a4);
    if ((v27 & 1) == 0)
    {
      v28 = *(a4 + 36);
      if (v28 == v26)
      {
        v29 = 1 << *(a4 + 32);
        if (v29 >= v25)
        {
          v65 = v19;
          v66 = v21;
          v83[0] = v25;
          v83[1] = v26;
          v84 = 0;
          v85 = v29;
          v86 = v28;
          v87 = 0;
          sub_1DB29FBE0(v83, a4, &v74);

          v30 = sub_1DB27B66C(&v74, a1, a2);
          v67 = v31;
          v32 = v8;
          v61 = v33;
          v34 = ~v33;

          v81 = v74;
          v82 = v75;
          sub_1DB1445E0(&v81, &qword_1ECC29120, &qword_1DB2CE768);
          v79 = v76;
          v80 = v77;
          sub_1DB1445E0(&v79, &qword_1ECC29120, &qword_1DB2CE768);
          v88 = v78;
          sub_1DB1445E0(&v88, &qword_1ECC29128, &unk_1DB2CE770);
          if (v34)
          {
            v60 = v30;
            v70 = a2;
            v35 = 1 << *(a4 + 32);
            v36 = -1;
            if (v35 < 64)
            {
              v36 = ~(-1 << v35);
            }

            v37 = v36 & *(a4 + 64);
            v38 = (v35 + 63) >> 6;

            v39 = 0;
            v64 = MEMORY[0x1E69E7CC0];
            if (v37)
            {
              while (1)
              {
                v40 = v39;
LABEL_16:
                v41 = (*(a4 + 48) + ((v40 << 10) | (16 * __clz(__rbit64(v37)))));
                v43 = *v41;
                v42 = v41[1];
                v37 &= v37 - 1;
                v72[0] = 46;
                v72[1] = 0xE100000000000000;

                MEMORY[0x1E1283490](v71, v70);
                v44 = sub_1DB2BAF94();

                if (v44)
                {
                  v45 = v64;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1DB138470(0, *(v64 + 16) + 1, 1);
                    v45 = v64;
                  }

                  v47 = *(v45 + 16);
                  v46 = *(v45 + 24);
                  v48 = v47 + 1;
                  if (v47 >= v46 >> 1)
                  {
                    sub_1DB138470((v46 > 1), v47 + 1, 1);
                    v48 = v47 + 1;
                    v45 = v64;
                  }

                  *(v45 + 16) = v48;
                  v64 = v45;
                  v49 = v45 + 16 * v47;
                  *(v49 + 32) = v43;
                  *(v49 + 40) = v42;
                }

                else
                {
                }

                v39 = v40;
                v32 = v8;
                if (!v37)
                {
                  goto LABEL_13;
                }
              }
            }

            while (1)
            {
LABEL_13:
              v40 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                __break(1u);
                goto LABEL_36;
              }

              if (v40 >= v38)
              {
                break;
              }

              v37 = *(a4 + 64 + 8 * v40);
              ++v39;
              if (v37)
              {
                goto LABEL_16;
              }
            }

            v72[0] = v64;

            v8 = v32;
            sub_1DB2A2FBC(v72);
            if (v32)
            {
              goto LABEL_39;
            }

            v50 = v72[0];
            sub_1DB1F88FC();
            swift_allocError();
            *v51 = v71;
            *(v51 + 8) = v70;
            *(v51 + 16) = v50;
            *(v51 + 24) = 2;
            swift_willThrow();
            sub_1DB27C004(v60, v67, v61);
            v52 = v65;
            v53 = v66;
            v54 = v23;
            return sub_1DB27C004(v52, v53, v54);
          }

LABEL_30:

          sub_1DB29A590(v72, v65, v66, v23 & 1, a4);

          sub_1DB27A918(v72[0], a5, v62, v63, x8_0);
          v52 = v65;
          v53 = v66;
          v54 = v23;
          return sub_1DB27C004(v52, v53, v54);
        }
      }

      else
      {
LABEL_36:
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v55 = *(a4 + 16);
    if (v55)
    {
      v56 = sub_1DB1383EC(*(a4 + 16), 0);
      v57 = sub_1DB14A440();
      v23 = v73;

      sub_1DB149FCC(v72[0]);
      if (v57 != v55)
      {
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      v56 = MEMORY[0x1E69E7CC0];
    }

    v72[0] = v56;
    sub_1DB2A2FBC(v72);
    if (!v8)
    {
      v58 = v72[0];
      sub_1DB1F88FC();
      swift_allocError();
      *v59 = a1;
      *(v59 + 8) = a2;
      *(v59 + 16) = v58;
      *(v59 + 24) = 1;
      return swift_willThrow();
    }
  }

LABEL_39:
  MEMORY[0x1E1284A10](v8);

  __break(1u);
  return result;
}

unint64_t sub_1DB278884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *x8_0@<X8>)
{
  v12 = *(a4 + 16);
  swift_bridgeObjectRetain_n();

  if (v12)
  {
    v13 = sub_1DB141B30(a1, a2);
    if (v14)
    {
      v15 = v13;

      swift_bridgeObjectRelease_n();
      return sub_1DB27AAC4(*(*(a4 + 56) + 8 * v15), a5, x8_0);
    }
  }

  v64 = a5;

  v17 = sub_1DB27B458(a4, a1, a2);
  v19 = v18;
  v21 = v20;
  v67 = v6;
  v22 = ~v20;

  if (!v22)
  {

    v53 = *(a4 + 16);
    if (v53)
    {
      v54 = sub_1DB1383EC(*(a4 + 16), 0);
      v65 = sub_1DB14A440();
      v6 = v68[0];

      sub_1DB149FCC(v68[0]);
      if (v65 != v53)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    else
    {
      v54 = MEMORY[0x1E69E7CC0];
    }

    v6 = v67;
    v68[0] = v54;
    sub_1DB2A2FBC(v68);
    if (!v67)
    {
      v55 = v68[0];
      sub_1DB1F88FC();
      swift_allocError();
      *v56 = a1;
      *(v56 + 8) = a2;
      *(v56 + 16) = v55;
      *(v56 + 24) = 1;
      return swift_willThrow();
    }

    goto LABEL_40;
  }

  v23 = sub_1DB29FCC4(v17, v19, v21 & 1, a4);
  if (v25)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    MEMORY[0x1E1284A10](v6);

    __break(1u);
    return result;
  }

  v26 = *(a4 + 36);
  if (v26 != v24)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v27 = 1 << *(a4 + 32);
  if (v27 < v23)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v62 = v17;
  v63 = v19;
  v78[0] = v23;
  v78[1] = v24;
  v79 = 0;
  v80 = v27;
  v81 = v26;
  v82 = 0;
  sub_1DB29FBE0(v78, a4, &v69);

  v28 = sub_1DB27B66C(&v69, a1, a2);
  v60 = v29;
  v61 = v28;
  v30 = v6;
  v59 = v31;
  v32 = ~v31;

  v76 = v69;
  v77 = v70;
  sub_1DB1445E0(&v76, &qword_1ECC29120, &qword_1DB2CE768);
  v74 = v71;
  v75 = v72;
  sub_1DB1445E0(&v74, &qword_1ECC29120, &qword_1DB2CE768);
  v83 = v73;
  sub_1DB1445E0(&v83, &qword_1ECC29128, &unk_1DB2CE770);
  if (v32)
  {
    v57 = v21;
    v33 = 1 << *(a4 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(a4 + 64);
    v36 = (v33 + 63) >> 6;

    v37 = 0;
    v58 = MEMORY[0x1E69E7CC0];
    v66 = a2;
    if (v35)
    {
      while (1)
      {
        v38 = v37;
LABEL_16:
        v39 = (*(a4 + 48) + ((v38 << 10) | (16 * __clz(__rbit64(v35)))));
        v41 = *v39;
        v40 = v39[1];
        v35 &= v35 - 1;
        v68[0] = 46;
        v68[1] = 0xE100000000000000;

        MEMORY[0x1E1283490](a1, a2);
        v42 = sub_1DB2BAF94();

        if (v42)
        {
          v43 = v58;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DB138470(0, *(v58 + 16) + 1, 1);
            v43 = v58;
          }

          v45 = *(v43 + 16);
          v44 = *(v43 + 24);
          v46 = v45 + 1;
          if (v45 >= v44 >> 1)
          {
            sub_1DB138470((v44 > 1), v45 + 1, 1);
            v46 = v45 + 1;
            v43 = v58;
          }

          *(v43 + 16) = v46;
          v58 = v43;
          v47 = v43 + 16 * v45;
          *(v47 + 32) = v41;
          *(v47 + 40) = v40;
        }

        else
        {
        }

        v37 = v38;
        v30 = v6;
        a2 = v66;
        if (!v35)
        {
          goto LABEL_13;
        }
      }
    }

    while (1)
    {
LABEL_13:
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v38 >= v36)
      {
        break;
      }

      v35 = *(a4 + 64 + 8 * v38);
      ++v37;
      if (v35)
      {
        goto LABEL_16;
      }
    }

    v68[0] = v58;

    v6 = v30;
    sub_1DB2A2FBC(v68);
    if (v30)
    {
      goto LABEL_40;
    }

    v48 = v68[0];
    sub_1DB1F88FC();
    swift_allocError();
    *v49 = a1;
    *(v49 + 8) = a2;
    *(v49 + 16) = v48;
    *(v49 + 24) = 2;
    swift_willThrow();
    sub_1DB27C004(v61, v60, v59);
    v50 = v62;
    v51 = v63;
    v52 = v57;
  }

  else
  {

    sub_1DB29A590(v68, v62, v19, v21 & 1, a4);

    sub_1DB27AAC4(v68[0], v64, x8_0);
    v50 = v62;
    v51 = v19;
    v52 = v21;
  }

  return sub_1DB27C004(v50, v51, v52);
}

uint64_t sub_1DB278E40()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = sub_1DB2BBAA4();
  v6 = sub_1DB2B995C(34, 0xE100000000000000, v4, v5);
  v8 = v7;

  v9 = sub_1DB277694(v6, v8, MEMORY[0x1E69E7CC0], v2, v3);
  if (v1)
  {
    MEMORY[0x1E1284A10](v1);
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

unint64_t sub_1DB278F30()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = sub_1DB2BBAA4();
  v6 = sub_1DB2B995C(34, 0xE100000000000000, v4, v5);
  v8 = v7;

  sub_1DB275FBC(v6, v8, MEMORY[0x1E69E7CC0], v2, v3);
  if (v1)
  {
    MEMORY[0x1E1284A10](v1);

    v10 = 0;
  }

  else
  {
    v11 = v9;

    *&v12 = v11;
    v10 = v12;
  }

  return v10 | ((v1 != 0) << 32);
}

uint64_t sub_1DB279074(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = sub_1DB2BBAA4();
  v9 = sub_1DB2B995C(34, 0xE100000000000000, v7, v8);
  v11 = v10;

  v12 = sub_1DB277C64(v9, v11, MEMORY[0x1E69E7CC0], v5, v6, a2);
  if (v3)
  {
    MEMORY[0x1E1284A10](v3);

    return 0;
  }

  else
  {
    v14 = v12;

    return v14;
  }
}

uint64_t sub_1DB279198()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = sub_1DB2BBAA4();
  v6 = sub_1DB2B995C(34, 0xE100000000000000, v4, v5);
  v8 = v7;

  v9 = sub_1DB277034(v6, v8, MEMORY[0x1E69E7CC0], v2, v3);
  if (v1)
  {
    MEMORY[0x1E1284A10](v1);

    return 0;
  }

  else
  {
    v11 = v9;

    return v11;
  }
}

uint64_t sub_1DB2792AC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v67 = a4;
  v70 = a3;
  v71 = a2;
  v69 = a5;
  v7 = sub_1DB2BADE4();
  v68 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB2BA944();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DB2BA904();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_dynamicCastMetatype())
  {
    v16 = *(v6 + 24);
    v17 = *(v6 + 32);
    v18 = sub_1DB2BBAA4();
    v20 = sub_1DB2B995C(34, 0xE100000000000000, v18, v19);
    v22 = v21;

    v23 = v74;
    sub_1DB2760B4(v20, v22, v16, v17, &v73);
    if (!v23)
    {

      v72 = v73;
      v25 = v69;
      v24 = v70;
      v26 = swift_dynamicCast();
      return (*(*(v24 - 8) + 56))(v25, v26 ^ 1u, 1, v24);
    }

    goto LABEL_10;
  }

  v65 = v7;
  v66 = v12;
  v64 = v9;
  v28 = v74;
  if (swift_dynamicCastMetatype())
  {
    v29 = *(v6 + 24);
    v30 = *(v6 + 32);
    v31 = sub_1DB2BBAA4();
    v33 = sub_1DB2B995C(34, 0xE100000000000000, v31, v32);
    v35 = v34;

    v23 = v28;
    sub_1DB2761D0(v33, v35, v29, v30, v15);
    if (!v28)
    {

      v37 = v69;
      v36 = v70;
      v38 = swift_dynamicCast();
      v39 = *(*(v36 - 8) + 56);
      if (v38)
      {
        v40 = v37;
LABEL_16:
        v51 = 0;
        return v39(v40, v51, 1, v36);
      }

      v40 = v37;
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  v41 = swift_dynamicCastMetatype();
  v42 = *(v6 + 24);
  v63 = *(v6 + 32);
  v43 = sub_1DB2BBAA4();
  v45 = sub_1DB2B995C(34, 0xE100000000000000, v43, v44);
  v47 = v46;

  if (v41)
  {
    v23 = v28;
    sub_1DB2763E0(v45, v47, v42, v63, v66);
    if (!v28)
    {

      v49 = v69;
      v36 = v70;
      v50 = swift_dynamicCast();
      v39 = *(*(v36 - 8) + 56);
      if (v50)
      {
        v40 = v49;
        goto LABEL_16;
      }

      v40 = v49;
LABEL_21:
      v51 = 1;
      return v39(v40, v51, 1, v36);
    }

LABEL_10:
    MEMORY[0x1E1284A10](v23);

    return (*(*(v70 - 8) + 56))(v69, 1, 1);
  }

  sub_1DB277034(v45, v47, MEMORY[0x1E69E7CC0], v42, v63);
  if (v28)
  {
  }

  else
  {
    v52 = v48;

    if (v52)
    {
      v53 = v64;
      sub_1DB2BADD4();
      v54 = sub_1DB2BADA4();
      v56 = v55;

      (*(v68 + 8))(v53, v65);
      if (v56 >> 60 == 15)
      {
        v57 = sub_1DB2BB564();
        swift_allocError();
        v59 = v58;

        sub_1DB2BB554();
        (*(*(v57 - 8) + 104))(v59, *MEMORY[0x1E69E6B00], v57);
        return swift_willThrow();
      }

      else
      {
        sub_1DB2BA5C4();
        swift_allocObject();
        sub_1DB2BA5B4();
        v61 = v69;
        v60 = v70;
        sub_1DB2BA5A4();
        sub_1DB2351B8(v54, v56);

        return (*(*(v60 - 8) + 56))(v61, 0, 1);
      }
    }

    else
    {
      return (*(*(v70 - 8) + 56))(v69, 1, 1);
    }
  }
}

uint64_t sub_1DB279980()
{
  v0 = sub_1DB2BB564();
  swift_allocError();
  v2 = v1;

  sub_1DB2BB554();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6B00], v0);
  return swift_willThrow();
}

uint64_t sub_1DB279A40()
{
  v0 = sub_1DB2BB564();
  swift_allocError();
  v2 = v1;

  sub_1DB2BB554();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6B00], v0);
  return swift_willThrow();
}

uint64_t sub_1DB279B00()
{
  v0 = sub_1DB2BB564();
  swift_allocError();
  v2 = v1;

  sub_1DB2BB554();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6B00], v0);
  return swift_willThrow();
}

uint64_t sub_1DB279BC0()
{
  v0 = sub_1DB2BB564();
  swift_allocError();
  v2 = v1;

  sub_1DB2BB554();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6B00], v0);
  return swift_willThrow();
}

void *sub_1DB279C80()
{

  return v0;
}

uint64_t sub_1DB279CB8()
{
  sub_1DB279C80();

  return swift_deallocClassInstance();
}

uint64_t sub_1DB27A0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

unint64_t sub_1DB27A340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer(0, *(a2 + 80), *(a2 + 88), a4);
  v8 = a4(a1, v7, a3);
  return v8 | ((HIDWORD(v8) & 1) << 32);
}

uint64_t sub_1DB27A3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer(0, *(a2 + 80), *(a2 + 88), a4);
  result = a4(a1, v8, a3);
  if (v4)
  {
    return v10;
  }

  return result;
}

uint64_t sub_1DB27A478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer(0, *(a2 + 80), *(a2 + 88), a4);
  result = a4(a1, v8, a3);
  if (v4)
  {
    return v10;
  }

  return result;
}

uint64_t sub_1DB27A598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer(0, a2, a3, a4);
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v7 = swift_allocObject();
  v7[2] = MEMORY[0x1E69E7CC0];
  v7[3] = v6;
  v7[4] = v5;

  swift_getWitnessTable();
  return sub_1DB2BB7F4();
}

uint64_t sub_1DB27A650()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DB27A6D8()
{
  v0 = sub_1DB2BB564();
  swift_allocError();
  v2 = v1;

  sub_1DB2BB554();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6B00], v0);
  return swift_willThrow();
}

uint64_t sub_1DB27A79C()
{
  v0 = sub_1DB2BB564();
  swift_allocError();
  v2 = v1;

  sub_1DB2BB554();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6B00], v0);
  return swift_willThrow();
}

unint64_t sub_1DB27A860(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = v3;
  v8 = v4;
  sub_1DB1446A4(a3 + 40 * result + 32, v6, &qword_1ECC26E28, &unk_1DB2C2D70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  if (swift_dynamicCast())
  {
    return v5 != 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1DB27A918@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, void (*a4)(uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v10 = a3(0);
  v11 = *(v10 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = v16 - v13;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_1DB1446A4(a2 + 40 * a1 + 32, v17, &qword_1ECC26E28, &unk_1DB2C2D70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  if (swift_dynamicCast())
  {
    a4(v16[1], v16[2]);

    if (v5)
    {
      return result;
    }

    (*(v11 + 32))(a5, v14, v10);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v11 + 56))(a5, v15, 1, v10);
}

unint64_t sub_1DB27AAC4@<X0>(unint64_t result@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_1DB1446A4(a2 + 40 * result + 32, v7, &qword_1ECC26E28, &unk_1DB2C2D70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  if (swift_dynamicCast())
  {
    v4 = sub_1DB2B942C(v8);
    v6 = v5;
  }

  else
  {
    v8 = 0;

    v4 = 0;
    v6 = 0xF000000000000000;
  }

  *a3 = v4;
  a3[1] = v6;
  return result;
}

uint64_t sub_1DB27ABD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DB27ACF8(char a1)
{
  v2 = sub_1DB2BB584();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29118, &unk_1DB2CE758);
  *(v4 + 24) = MEMORY[0x1E69E7230];
  *v4 = a1;

  sub_1DB2BB554();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B30], v2);
  return swift_willThrow();
}

uint64_t sub_1DB27ADE4(__int16 a1)
{
  v2 = sub_1DB2BB584();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29118, &unk_1DB2CE758);
  *(v4 + 24) = MEMORY[0x1E69E7290];
  *v4 = a1;

  sub_1DB2BB554();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B30], v2);
  return swift_willThrow();
}

uint64_t sub_1DB27AED0(int a1)
{
  v2 = sub_1DB2BB584();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29118, &unk_1DB2CE758);
  *(v4 + 24) = MEMORY[0x1E69E72F0];
  *v4 = a1;

  sub_1DB2BB554();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B30], v2);
  return swift_willThrow();
}

uint64_t sub_1DB27AFBC(uint64_t a1)
{
  v2 = sub_1DB2BB584();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29118, &unk_1DB2CE758);
  v4[3] = MEMORY[0x1E69E6810];
  *v4 = a1;

  sub_1DB2BB554();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B30], v2);
  return swift_willThrow();
}

uint64_t sub_1DB27B0A8(char a1)
{
  v2 = sub_1DB2BB584();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29118, &unk_1DB2CE758);
  *(v4 + 24) = MEMORY[0x1E69E7508];
  *v4 = a1;

  sub_1DB2BB554();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B30], v2);
  return swift_willThrow();
}

uint64_t sub_1DB27B194(__int16 a1)
{
  v2 = sub_1DB2BB584();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29118, &unk_1DB2CE758);
  *(v4 + 24) = MEMORY[0x1E69E75F8];
  *v4 = a1;

  sub_1DB2BB554();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B30], v2);
  return swift_willThrow();
}

uint64_t sub_1DB27B280(int a1)
{
  v2 = sub_1DB2BB584();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29118, &unk_1DB2CE758);
  *(v4 + 24) = MEMORY[0x1E69E7668];
  *v4 = a1;

  sub_1DB2BB554();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B30], v2);
  return swift_willThrow();
}

uint64_t sub_1DB27B36C(uint64_t a1)
{
  v2 = sub_1DB2BB584();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29118, &unk_1DB2CE758);
  v4[3] = MEMORY[0x1E69E76D8];
  *v4 = a1;

  sub_1DB2BB554();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B30], v2);
  return swift_willThrow();
}

uint64_t sub_1DB27B458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 64;
  result = sub_1DB2BB464();
  v6 = 1 << *(a1 + 32);
  if (result == v6)
  {
    return 0;
  }

  else
  {
    v7 = result;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v6)
    {
      v9 = v7 >> 6;
      if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      v10 = *(a1 + 36);

      MEMORY[0x1E1283490](a2, a3);
      v11 = sub_1DB2BAF94();

      if (v11)
      {
        return v7;
      }

      v8 = 1 << *(a1 + 32);
      if (v7 >= v8)
      {
        goto LABEL_22;
      }

      v12 = *(v4 + 8 * v9);
      if ((v12 & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (v10 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v13 = v12 & (-2 << (v7 & 0x3F));
      if (v13)
      {
        v8 = __clz(__rbit64(v13)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = v9 << 6;
        v15 = v9 + 1;
        v16 = (a1 + 72 + 8 * v9);
        while (v15 < (v8 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            result = sub_1DB25CF78(v7, v10, 0);
            v8 = __clz(__rbit64(v17)) + v14;
            goto LABEL_5;
          }
        }

        result = sub_1DB25CF78(v7, v10, 0);
      }

LABEL_5:
      v6 = 1 << *(a1 + 32);
      v7 = v8;
      if (v8 == v6)
      {
        return 0;
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

  return result;
}

uint64_t sub_1DB27B66C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v27 = a1[4];
  v6 = *(a1 + 40);
  v25 = *a1;
  result = sub_1DB27C01C(*a1, v3, v4);
  if (v4 & 1) != 0 || (v6)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v8 = v27;
  if (v3 != v27)
  {
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
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v9 = v25;
  while (v9 != v5)
  {
    if (v9 < v25)
    {
      goto LABEL_27;
    }

    if (v9 >= v5)
    {
      goto LABEL_28;
    }

    if (v9 < 0)
    {
      goto LABEL_29;
    }

    v11 = a1[6];
    if (v9 >= 1 << *(v11 + 32))
    {
      goto LABEL_29;
    }

    v12 = v9 >> 6;
    if ((*(v11 + 64 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_30;
    }

    if (*(v11 + 36) != v8)
    {
      goto LABEL_31;
    }

    v26 = v3;
    v13 = v5;

    MEMORY[0x1E1283490](a2, a3);
    v14 = sub_1DB2BAF94();

    if (v14)
    {
      return v9;
    }

    v10 = 1 << *(v11 + 32);
    if (v9 >= v10)
    {
      goto LABEL_32;
    }

    v15 = *(v11 + 64 + 8 * v12);
    if ((v15 & (1 << v9)) == 0)
    {
      goto LABEL_33;
    }

    v8 = v27;
    if (*(v11 + 36) != v27)
    {
      goto LABEL_34;
    }

    v16 = v15 & (-2 << (v9 & 0x3F));
    if (v16)
    {
      v10 = __clz(__rbit64(v16)) | v9 & 0x7FFFFFFFFFFFFFC0;
      v5 = v13;
    }

    else
    {
      v17 = v12 << 6;
      v18 = v12 + 1;
      v19 = (v11 + 8 * v12 + 72);
      v5 = v13;
      while (v18 < (v10 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1DB25CF78(v9, v26, 0);
          v8 = v27;
          v10 = __clz(__rbit64(v20)) + v17;
          goto LABEL_6;
        }
      }

      result = sub_1DB25CF78(v9, v26, 0);
      v8 = v27;
    }

LABEL_6:
    v3 = *(v11 + 36);
    v9 = v10;
    if (v3 != v8)
    {
      goto LABEL_26;
    }
  }

  return 0;
}

uint64_t sub_1DB27B8E4()
{
  v0 = sub_1DB2BB564();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10);
  *v2 = MEMORY[0x1E69E7230];

  sub_1DB2BB554();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6AF8], v0);
  return swift_willThrow();
}

uint64_t sub_1DB27B9C8()
{
  v0 = sub_1DB2BB564();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10);
  *v2 = MEMORY[0x1E69E7290];

  sub_1DB2BB554();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6AF8], v0);
  return swift_willThrow();
}

uint64_t sub_1DB27BAAC()
{
  v0 = sub_1DB2BB564();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10);
  *v2 = MEMORY[0x1E69E72F0];

  sub_1DB2BB554();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6AF8], v0);
  return swift_willThrow();
}

uint64_t sub_1DB27BB90()
{
  v0 = sub_1DB2BB564();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10);
  *v2 = MEMORY[0x1E69E6810];

  sub_1DB2BB554();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6AF8], v0);
  return swift_willThrow();
}

uint64_t sub_1DB27BC74()
{
  v0 = sub_1DB2BB564();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10);
  *v2 = MEMORY[0x1E69E7508];

  sub_1DB2BB554();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6AF8], v0);
  return swift_willThrow();
}

uint64_t sub_1DB27BD58()
{
  v0 = sub_1DB2BB564();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10);
  *v2 = MEMORY[0x1E69E75F8];

  sub_1DB2BB554();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6AF8], v0);
  return swift_willThrow();
}

uint64_t sub_1DB27BE3C()
{
  v0 = sub_1DB2BB564();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10);
  *v2 = MEMORY[0x1E69E7668];

  sub_1DB2BB554();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6AF8], v0);
  return swift_willThrow();
}

uint64_t sub_1DB27BF20()
{
  v0 = sub_1DB2BB564();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10);
  *v2 = MEMORY[0x1E69E76D8];

  sub_1DB2BB554();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6AF8], v0);
  return swift_willThrow();
}

uint64_t sub_1DB27C004(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1DB25CF78(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1DB27C01C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1DB27C0E4(uint64_t a1)
{
  v2 = sub_1DB27C9C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB27C120(uint64_t a1)
{
  v2 = sub_1DB27C9C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB27C15C()
{
  v1 = 0x7972616E6962;
  v2 = 0x6D69727472;
  if (*v0 != 2)
  {
    v2 = 0x6D6F74737563;
  }

  if (*v0)
  {
    v1 = 0x657361636F6ELL;
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

uint64_t sub_1DB27C1C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB27D97C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB27C1EC(uint64_t a1)
{
  v2 = sub_1DB27C874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB27C228(uint64_t a1)
{
  v2 = sub_1DB27C874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB27C264(uint64_t a1)
{
  v2 = sub_1DB27C8C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB27C2A0(uint64_t a1)
{
  v2 = sub_1DB27C8C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB27C2DC(uint64_t a1)
{
  v2 = sub_1DB27C970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB27C318(uint64_t a1)
{
  v2 = sub_1DB27C970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB27C354(uint64_t a1)
{
  v2 = sub_1DB27C91C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB27C390(uint64_t a1)
{
  v2 = sub_1DB27C91C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Collation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29168, &qword_1DB2CE7E0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29170, &qword_1DB2CE7E8);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = v23 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29178, &qword_1DB2CE7F0);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29180, &qword_1DB2CE7F8);
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29188, &qword_1DB2CE800);
  v33 = *(v13 - 8);
  v34 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v23 - v14;
  v16 = v1[1];
  v23[1] = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB27C874();
  sub_1DB2BBA94();
  switch(v16)
  {
    case 0:
      v35 = 0;
      sub_1DB27C9C4();
      v18 = v34;
      sub_1DB2BB804();
      (*(v24 + 8))(v12, v10);
      return (*(v33 + 8))(v15, v18);
    case 1:
      v36 = 1;
      sub_1DB27C970();
      v18 = v34;
      sub_1DB2BB804();
      (*(v25 + 8))(v9, v26);
      return (*(v33 + 8))(v15, v18);
    case 2:
      v37 = 2;
      sub_1DB27C91C();
      v17 = v27;
      v18 = v34;
      sub_1DB2BB804();
      (*(v28 + 8))(v17, v29);
      return (*(v33 + 8))(v15, v18);
  }

  v38 = 3;
  sub_1DB27C8C8();
  v20 = v30;
  v21 = v34;
  sub_1DB2BB804();
  v22 = v32;
  sub_1DB2BB864();
  (*(v31 + 8))(v20, v22);
  return (*(v33 + 8))(v15, v21);
}

unint64_t sub_1DB27C874()
{
  result = qword_1ECC29190;
  if (!qword_1ECC29190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29190);
  }

  return result;
}

unint64_t sub_1DB27C8C8()
{
  result = qword_1ECC29198;
  if (!qword_1ECC29198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29198);
  }

  return result;
}

unint64_t sub_1DB27C91C()
{
  result = qword_1ECC291A0;
  if (!qword_1ECC291A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC291A0);
  }

  return result;
}

unint64_t sub_1DB27C970()
{
  result = qword_1ECC291A8;
  if (!qword_1ECC291A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC291A8);
  }

  return result;
}

unint64_t sub_1DB27C9C4()
{
  result = qword_1ECC291B0;
  if (!qword_1ECC291B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC291B0);
  }

  return result;
}

uint64_t Collation.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC291B8, &qword_1DB2CE808);
  v44 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v37 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC291C0, &qword_1DB2CE810);
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v37 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC291C8, &qword_1DB2CE818);
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC291D0, &qword_1DB2CE820);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC291D8, &unk_1DB2CE828);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  v14 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1DB27C874();
  v15 = v49;
  sub_1DB2BBA84();
  if (!v15)
  {
    v16 = v9;
    v37 = v7;
    v38 = 0;
    v17 = v6;
    v18 = v45;
    v19 = v46;
    v49 = v11;
    v20 = v47;
    v21 = sub_1DB2BB7D4();
    v22 = (2 * *(v21 + 16)) | 1;
    v51 = v21;
    v52 = v21 + 32;
    v53 = 0;
    v54 = v22;
    v23 = sub_1DB14B1E8();
    if (v23 == 4 || v53 != v54 >> 1)
    {
      v28 = sub_1DB2BB564();
      swift_allocError();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10);
      *v30 = &type metadata for Collation;
      sub_1DB2BB714();
      sub_1DB2BB554();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
LABEL_9:
      (*(v49 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v50);
    }

    if (v23 <= 1u)
    {
      if (v23)
      {
        v55 = 1;
        sub_1DB27C970();
        v34 = v38;
        sub_1DB2BB704();
        if (!v34)
        {
          (*(v41 + 8))(v17, v43);
          (*(v49 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v25 = 0;
          v26 = 1;
          v27 = v20;
          goto LABEL_21;
        }
      }

      else
      {
        v55 = 0;
        sub_1DB27C9C4();
        v24 = v38;
        sub_1DB2BB704();
        if (!v24)
        {
          (*(v40 + 8))(v16, v37);
          (*(v49 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v25 = 0;
          v26 = 0;
          v27 = v20;
LABEL_21:
          *v27 = v25;
          v27[1] = v26;
          return __swift_destroy_boxed_opaque_existential_1(v50);
        }
      }

      goto LABEL_9;
    }

    v27 = v20;
    v32 = v49;
    if (v23 == 2)
    {
      v55 = 2;
      sub_1DB27C91C();
      v33 = v38;
      sub_1DB2BB704();
      if (!v33)
      {
        (*(v39 + 8))(v18, v42);
        v27 = v20;
        (*(v32 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v25 = 0;
        v26 = 2;
        goto LABEL_21;
      }

      (*(v32 + 8))(v13, v10);
      goto LABEL_10;
    }

    v55 = 3;
    sub_1DB27C8C8();
    v35 = v38;
    sub_1DB2BB704();
    if (!v35)
    {
      v25 = sub_1DB2BB774();
      v26 = v36;
      (*(v44 + 8))(v19, v48);
      (*(v32 + 8))(v13, v10);
      swift_unknownObjectRelease();
      goto LABEL_21;
    }

    (*(v32 + 8))(v13, v10);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t Collation.expression.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0xE600000000000000;
      result = 0x455341434F4ELL;
    }

    else if (v2 == 2)
    {
      v3 = 0xE500000000000000;
      result = 0x4D49525452;
    }

    else
    {
      v5 = a1;
      result = sub_1DB2B995C(34, 0xE100000000000000, *v1, v2);
      a1 = v5;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    result = 0x5952414E4942;
  }

  *a1 = result;
  a1[1] = v3;
  a1[2] = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t Collation.description.getter()
{
  v1 = v0[1];
  switch(v1)
  {
    case 0:
      return 0x5952414E4942;
    case 1:
      return 0x455341434F4ELL;
    case 2:
      return 0x4D49525452;
  }

  return sub_1DB2B995C(34, 0xE100000000000000, *v0, v1);
}

uint64_t sub_1DB27D298@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0xE600000000000000;
      result = 0x455341434F4ELL;
    }

    else if (v2 == 2)
    {
      v3 = 0xE500000000000000;
      result = 0x4D49525452;
    }

    else
    {
      v5 = a1;
      result = sub_1DB2B995C(34, 0xE100000000000000, *v1, v2);
      a1 = v5;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    result = 0x5952414E4942;
  }

  *a1 = result;
  a1[1] = v3;
  a1[2] = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB27D330()
{
  v1 = v0[1];
  switch(v1)
  {
    case 0:
      return 0x5952414E4942;
    case 1:
      return 0x455341434F4ELL;
    case 2:
      return 0x4D49525452;
  }

  return sub_1DB2B995C(34, 0xE100000000000000, *v0, v1);
}

unint64_t sub_1DB27D3B4(uint64_t a1)
{
  *(a1 + 8) = sub_1DB165B9C();
  result = sub_1DB27D3E4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DB27D3E4()
{
  result = qword_1ECC291E0;
  if (!qword_1ECC291E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC291E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19OnDeviceStorageCore9CollationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB27D450(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB27D4AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1DB27D560()
{
  result = qword_1ECC291E8;
  if (!qword_1ECC291E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC291E8);
  }

  return result;
}

unint64_t sub_1DB27D5B8()
{
  result = qword_1ECC291F0;
  if (!qword_1ECC291F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC291F0);
  }

  return result;
}

unint64_t sub_1DB27D610()
{
  result = qword_1ECC291F8;
  if (!qword_1ECC291F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC291F8);
  }

  return result;
}

unint64_t sub_1DB27D668()
{
  result = qword_1ECC29200;
  if (!qword_1ECC29200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29200);
  }

  return result;
}

unint64_t sub_1DB27D6C0()
{
  result = qword_1ECC29208;
  if (!qword_1ECC29208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29208);
  }

  return result;
}

unint64_t sub_1DB27D718()
{
  result = qword_1ECC29210;
  if (!qword_1ECC29210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29210);
  }

  return result;
}

unint64_t sub_1DB27D770()
{
  result = qword_1ECC29218;
  if (!qword_1ECC29218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29218);
  }

  return result;
}

unint64_t sub_1DB27D7C8()
{
  result = qword_1ECC29220;
  if (!qword_1ECC29220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29220);
  }

  return result;
}

unint64_t sub_1DB27D820()
{
  result = qword_1ECC29228;
  if (!qword_1ECC29228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29228);
  }

  return result;
}

unint64_t sub_1DB27D878()
{
  result = qword_1ECC29230;
  if (!qword_1ECC29230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29230);
  }

  return result;
}

unint64_t sub_1DB27D8D0()
{
  result = qword_1ECC29238;
  if (!qword_1ECC29238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29238);
  }

  return result;
}

unint64_t sub_1DB27D928()
{
  result = qword_1ECC29240;
  if (!qword_1ECC29240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29240);
  }

  return result;
}

uint64_t sub_1DB27D97C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972616E6962 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657361636F6ELL && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D69727472 && a2 == 0xE500000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB2BB924();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DB27DAD0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1DB2BB1F4();
  if (!v19)
  {
    return sub_1DB2BB0F4();
  }

  v41 = v19;
  v45 = sub_1DB2BB654();
  v32 = sub_1DB2BB664();
  sub_1DB2BB604();
  result = sub_1DB2BB1E4();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1DB2BB234();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1DB2BB644();
      result = sub_1DB2BB204();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB27DEF0(char a1)
{
  result = 7561825;
  switch(a1)
  {
    case 1:
      result = 0x646E756F72;
      break;
    case 2:
      result = 0x6D6F646E6172;
      break;
    case 3:
      result = 0x6C626D6F646E6172;
      break;
    case 4:
      result = 0x626F6C626F72657ALL;
      break;
    case 5:
      result = 0x6874676E656CLL;
      break;
    case 6:
      result = 0x7265776F6CLL;
      break;
    case 7:
      result = 0x7265707075;
      break;
    case 8:
      result = 0x6D6972746CLL;
      break;
    case 9:
      result = 0x6D69727472;
      break;
    case 10:
      result = 1835627124;
      break;
    case 11:
      result = 0x6563616C706572;
      break;
    case 12:
      result = 0x727473627573;
      break;
    case 13:
      result = 1162561868;
      break;
    case 14:
      result = 20041;
      break;
    case 15:
      result = 1112493127;
      break;
    case 16:
      result = 0x484354414DLL;
      break;
    case 17:
      result = 0x505845474552;
      break;
    case 18:
      result = 0x4554414C4C4F43;
      break;
    case 19:
      result = 0x6C6C756E6669;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DB27E0A4@<X0>(void *a1@<X0>, char a2@<W1>, void *x8_0@<X8>)
{
  v6 = sub_1DB27DEF0(a2);
  sub_1DB2B9D5C(a1, v6, v7, x8_0);
}

uint64_t sub_1DB27E110@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *x8_0@<X8>)
{
  v6 = sub_1DB27DEF0(a2);
  v8 = v7;
  sub_1DB2B9A70(a1, v10);
  sub_1DB2B9D5C(v10, v6, v8, x8_0);

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t ExpressionType<>.absoluteValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 8);
  v9[3] = a1;
  v9[4] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v3, a1);
  swift_getAssociatedTypeWitness();
  sub_1DB27E0A4(v9, 0, a3);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

{
  v6 = *(a2 + 8);
  v9[3] = a1;
  v9[4] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v3, a1);
  swift_getAssociatedTypeWitness();
  sub_1DB27E0A4(v9, 0, a3);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t ExpressionType<>.round(_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  if (a2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BCC40;
    *(inited + 56) = a3;
    *(inited + 64) = *(a4 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
    (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, v4, a3);
    sub_1DB2B9A70(inited, v14);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
  }

  else
  {
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_1DB2BD5A0;
    *(v11 + 56) = a3;
    *(v11 + 64) = *(a4 + 8);
    v12 = __swift_allocate_boxed_opaque_existential_0((v11 + 32));
    (*(*(a3 - 8) + 16))(v12, v4, a3);
    *(v11 + 96) = MEMORY[0x1E69E6530];
    *(v11 + 104) = &protocol witness table for Int;
    *(v11 + 72) = a1;
    sub_1DB2B9A70(v11, v14);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
  }

  sub_1DB203564();
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

{
  if (a2)
  {
    v7 = *(a4 + 8);
    v13[3] = a3;
    v13[4] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
    (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, v4, a3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    *(inited + 56) = a3;
    *(inited + 64) = *(a4 + 8);
    v11 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
    (*(*(a3 - 8) + 16))(v11, v4, a3);
    *(inited + 96) = MEMORY[0x1E69E6530];
    *(inited + 104) = &protocol witness table for Int;
    *(inited + 72) = a1;
    sub_1DB2B9A70(inited, v13);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
  }

  sub_1DB203564();
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t static ExpressionType<>.random()@<X0>(void *x8_0@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = MEMORY[0x1E69E7CC0];

  return sub_1DB27E110(v4, 2, x8_0);
}

uint64_t sub_1DB27E6F0()
{
  sub_1DB2B9A70(MEMORY[0x1E69E7CC0], v1);
  sub_1DB203564();
  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t ExpressionType<>.length.getter(uint64_t a1, uint64_t a2)
{
  return sub_1DB27EDD0(a1, a2, 0x6874676E656CLL, 0xE600000000000000, sub_1DB203564);
}

{
  return sub_1DB27EDD0(a1, a2, 0x6874676E656CLL, 0xE600000000000000, sub_1DB203564);
}

uint64_t ExpressionType<>.lowercaseString.getter(uint64_t a1, uint64_t a2)
{
  return sub_1DB27EDD0(a1, a2, 0x7265776F6CLL, 0xE500000000000000, sub_1DB203564);
}

{
  return sub_1DB27EDD0(a1, a2, 0x7265776F6CLL, 0xE500000000000000, sub_1DB203564);
}

uint64_t ExpressionType<>.uppercaseString.getter(uint64_t a1, uint64_t a2)
{
  return sub_1DB27EDD0(a1, a2, 0x7265707075, 0xE500000000000000, sub_1DB203564);
}

{
  return sub_1DB27EDD0(a1, a2, 0x7265707075, 0xE500000000000000, sub_1DB203564);
}

void *ExpressionType<>.like(_:escape:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  return sub_1DB27EE90(a1, a2, a3, a4, a5, a6, sub_1DB2B57D4, a7);
}

{
  return sub_1DB27EE90(a1, a2, a3, a4, a5, a6, sub_1DB2B594C, a7);
}

uint64_t ExpressionType<>.like(_:escape:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  return sub_1DB27F134(a1, a2, a3, a4, a5, sub_1DB2B57D4, a6);
}

{
  return sub_1DB27F134(a1, a2, a3, a4, a5, sub_1DB2B594C, a6);
}

uint64_t ExpressionType<>.glob(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DB27F5A8(a1, a2, a3, a4, 1112493127, 0xE400000000000000, sub_1DB2B57D4);
}

{
  return sub_1DB27F5A8(a1, a2, a3, a4, 1112493127, 0xE400000000000000, sub_1DB2B594C);
}

uint64_t ExpressionType<>.regexp(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DB27F5A8(a1, a2, a3, a4, 0x505845474552, 0xE600000000000000, sub_1DB2B57D4);
}

{
  return sub_1DB27F5A8(a1, a2, a3, a4, 0x505845474552, 0xE600000000000000, sub_1DB2B594C);
}

uint64_t ExpressionType<>.collate(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  return sub_1DB27F720(a1, a2, a3, sub_1DB2B597C);
}

{
  return sub_1DB27F720(a1, a2, a3, sub_1DB2B59AC);
}

uint64_t ExpressionType<>.ltrim(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1DB27E908(a1, a2, a3, 0x6D6972746CLL, 0xE500000000000000, sub_1DB203564);
}

{
  return sub_1DB27E908(a1, a2, a3, 0x6D6972746CLL, 0xE500000000000000, sub_1DB203564);
}

uint64_t ExpressionType<>.rtrim(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1DB27E908(a1, a2, a3, 0x6D69727472, 0xE500000000000000, sub_1DB203564);
}

{
  return sub_1DB27E908(a1, a2, a3, 0x6D69727472, 0xE500000000000000, sub_1DB203564);
}

uint64_t sub_1DB27E908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *, uint64_t, uint64_t))
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    *(inited + 56) = a2;
    *(inited + 64) = *(a3 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v6, a2);
    v20[0] = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29250, &qword_1DB2CED98);
    sub_1DB1688F0(&qword_1ECC29258, &qword_1ECC29250, &qword_1DB2CED98, MEMORY[0x1E69E6508]);
    v15 = sub_1DB2BAFE4();
    *(inited + 96) = MEMORY[0x1E69E6158];
    *(inited + 104) = &protocol witness table for String;
    *(inited + 72) = v15;
    *(inited + 80) = v16;
    sub_1DB2B9A70(inited, v20);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
  }

  else
  {
    v17 = *(a3 + 8);
    v20[3] = a2;
    v20[4] = v17;
    v18 = __swift_allocate_boxed_opaque_existential_0(v20);
    (*(*(a2 - 8) + 16))(v18, v6, a2);
  }

  a6(v20, a4, a5);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t ExpressionType<>.trim(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    *(inited + 56) = a2;
    *(inited + 64) = *(a3 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v4, a2);
    v15[0] = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29250, &qword_1DB2CED98);
    sub_1DB1688F0(&qword_1ECC29258, &qword_1ECC29250, &qword_1DB2CED98, MEMORY[0x1E69E6508]);
    v10 = sub_1DB2BAFE4();
    *(inited + 96) = MEMORY[0x1E69E6158];
    *(inited + 104) = &protocol witness table for String;
    *(inited + 72) = v10;
    *(inited + 80) = v11;
    sub_1DB2B9A70(inited, v15);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1DB2BCC40;
    *(v12 + 56) = a2;
    *(v12 + 64) = *(a3 + 8);
    v13 = __swift_allocate_boxed_opaque_existential_0((v12 + 32));
    (*(*(a2 - 8) + 16))(v13, v4, a2);
    sub_1DB2B9A70(v12, v15);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((v12 + 32));
  }

  sub_1DB203564();
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

{
  return sub_1DB27E908(a1, a2, a3, 1835627124, 0xE400000000000000, sub_1DB203564);
}

uint64_t ExpressionType<>.replace(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1DB27F908(a1, a2, a3, a4, a5, a6, sub_1DB203564);
}

{
  return sub_1DB27F908(a1, a2, a3, a4, a5, a6, sub_1DB203564);
}

uint64_t ExpressionType<>.substring(_:length:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1DB27FA94(a1, a2, a3, a4, a5, sub_1DB203564);
}

{
  return sub_1DB27FA94(a1, a2, a3, a4, a5, sub_1DB203564);
}

uint64_t ExpressionType<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DB27FCC0(a1, a2, a3, a4, ExpressionType<>.substring(_:length:));
}

{
  return sub_1DB27FCC0(a1, a2, a3, a4, ExpressionType<>.substring(_:length:));
}

uint64_t sub_1DB27EDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t))
{
  v10 = *(a2 + 8);
  v13[3] = a1;
  v13[4] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v5, a1);
  a5(v13, a3, a4);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

void *sub_1DB27EE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t, uint64_t, uint64_t, unint64_t)@<X6>, void *a8@<X8>)
{
  if (a4)
  {

    sub_1DB2BB4F4();

    v26[0] = 40;
    v26[1] = 0xE100000000000000;
    v15 = (*(a6 + 32))(a5, a6);
    MEMORY[0x1E1283490](v15);

    MEMORY[0x1E1283490](0xD000000000000011, 0x80000001DB2D7600);
    v16 = (*(a6 + 40))(a5, a6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    inited = swift_initStackObject();
    v18 = MEMORY[0x1E69E6158];
    *(inited + 16) = xmmword_1DB2BD5A0;
    *(inited + 56) = v18;
    *(inited + 64) = &protocol witness table for String;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 96) = v18;
    *(inited + 104) = &protocol witness table for String;
    *(inited + 72) = a3;
    *(inited + 80) = a4;

    result = sub_1DB141510(inited);
    *a8 = 40;
    a8[1] = 0xE100000000000000;
    a8[2] = v16;
  }

  else
  {
    v21 = *(a6 + 8);
    v26[3] = a5;
    v26[4] = v21;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, v8, a5);
    v25[3] = MEMORY[0x1E69E6158];
    v25[4] = &protocol witness table for String;
    v25[0] = a1;
    v25[1] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_1DB2BD5A0;
    sub_1DB164980(v26, v23 + 32);
    sub_1DB164980(v25, v23 + 72);

    a7(v23, 1, 1162561868, 0xE400000000000000);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(v25);
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  return result;
}

uint64_t sub_1DB27F134@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t, unint64_t)@<X5>, uint64_t *a7@<X8>)
{
  v8 = v7;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  if (a3)
  {
    v16 = *(a5 + 8);
    v45 = a4;
    v46 = v16;
    v17 = __swift_allocate_boxed_opaque_existential_0(&v43);
    (*(*(a4 - 8) + 16))(v17, v8, a4);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
    v38 = v12;
    v39 = v11;
    v42 = sub_1DB1688F0(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30, &protocol conformance descriptor for Expression<A>);
    v40 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    sub_1DB164980(&v43, inited + 32);
    sub_1DB164980(&v38, inited + 72);
    v35[0] = 32;
    v35[1] = 0xE100000000000000;

    MEMORY[0x1E1283490](1162561868, 0xE400000000000000);
    MEMORY[0x1E1283490](32, 0xE100000000000000);
    sub_1DB2B9A70(inited, v35);

    v19 = v36;
    v20 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v20 + 24))(v34, v19, v20);
    v22 = v34[0];
    v21 = v34[1];
    v23 = v34[2];
    __swift_destroy_boxed_opaque_existential_1(v35);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(&v38);
    __swift_destroy_boxed_opaque_existential_1(&v43);
    v43 = 40;
    v44 = 0xE100000000000000;

    MEMORY[0x1E1283490](v22, v21);

    MEMORY[0x1E1283490](0x2045504143534520, 0xEA0000000000293FLL);
    v24 = v43;
    v25 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v26 = swift_initStackObject();
    v27 = MEMORY[0x1E69E6158];
    *(v26 + 16) = xmmword_1DB2BCC40;
    *(v26 + 56) = v27;
    *(v26 + 64) = &protocol witness table for String;
    *(v26 + 32) = a2;
    *(v26 + 40) = a3;
    v43 = v23;

    sub_1DB141510(v26);

    v29 = v43;
    *a7 = v24;
    a7[1] = v25;
    a7[2] = v29;
  }

  else
  {
    v31 = *(a5 + 8);
    v45 = a4;
    v46 = v31;
    v32 = __swift_allocate_boxed_opaque_existential_0(&v43);
    (*(*(a4 - 8) + 16))(v32, v8, a4);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
    v38 = v12;
    v39 = v11;
    v42 = sub_1DB1688F0(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30, &protocol conformance descriptor for Expression<A>);
    v40 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v33 = swift_initStackObject();
    *(v33 + 16) = xmmword_1DB2BD5A0;
    sub_1DB164980(&v43, v33 + 32);
    sub_1DB164980(&v38, v33 + 72);

    a6(v33, 1, 1162561868, 0xE400000000000000);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(&v38);
    return __swift_destroy_boxed_opaque_existential_1(&v43);
  }

  return result;
}

uint64_t sub_1DB27F5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = *(a4 + 8);
  v19[3] = a3;
  v19[4] = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, v7, a3);
  v18[3] = MEMORY[0x1E69E6158];
  v18[4] = &protocol witness table for String;
  v18[0] = a1;
  v18[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v19, inited + 32);
  sub_1DB164980(v18, inited + 72);

  a7(inited, 1, a5, a6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v18);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1DB27F720(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a3 + 8);
  v14[3] = a2;
  v14[4] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v4, a2);
  v13[3] = &type metadata for Collation;
  v13[4] = sub_1DB280C98();
  v13[0] = v7;
  v13[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v14, inited + 32);
  sub_1DB164980(v13, inited + 72);
  sub_1DB280CEC(v7, v8);
  a4(inited, 1, 0x4554414C4C4F43, 0xE700000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1DB27F908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *, uint64_t, unint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD590;
  *(inited + 56) = a5;
  *(inited + 64) = *(a6 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, v7, a5);
  v17 = MEMORY[0x1E69E6158];
  *(inited + 96) = MEMORY[0x1E69E6158];
  *(inited + 104) = &protocol witness table for String;
  *(inited + 72) = a1;
  *(inited + 80) = a2;
  *(inited + 136) = v17;
  *(inited + 144) = &protocol witness table for String;
  *(inited + 112) = a3;
  *(inited + 120) = a4;

  sub_1DB2B9A70(inited, v19);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  a7(v19, 0x6563616C706572, 0xE700000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1DB27FA94(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *, uint64_t, unint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  if (a3)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    *(inited + 56) = a4;
    *(inited + 64) = *(a5 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
    (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, v6, a4);
    *(inited + 96) = MEMORY[0x1E69E6530];
    *(inited + 104) = &protocol witness table for Int;
    *(inited + 72) = a1;
    sub_1DB2B9A70(inited, v19);
  }

  else
  {
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_1DB2BD590;
    *(v15 + 56) = a4;
    *(v15 + 64) = *(a5 + 8);
    v16 = __swift_allocate_boxed_opaque_existential_0((v15 + 32));
    (*(*(a4 - 8) + 16))(v16, v6, a4);
    v17 = MEMORY[0x1E69E6530];
    *(v15 + 96) = MEMORY[0x1E69E6530];
    *(v15 + 104) = &protocol witness table for Int;
    *(v15 + 72) = a1;
    *(v15 + 136) = v17;
    *(v15 + 144) = &protocol witness table for Int;
    *(v15 + 112) = a2;
    sub_1DB2B9A70(v15, v19);
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  a6(v19, 0x727473627573, 0xE600000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1DB27FCC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v5 = __OFSUB__(a2, result);
  v6 = a2 - result;
  if (!v5)
  {
    return a5(result, v6, 0, a3, a4);
  }

  __break(1u);
  return result;
}

uint64_t Collection<>.contains(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = sub_1DB2BB1F4();
  sub_1DB280D00(0x3F, 0xE100000000000000, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
  v12 = sub_1DB2BAD24();
  v14 = v13;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41[3] = type metadata accessor for Expression(0, AssociatedTypeWitness, v16, v17);
  v41[0] = v8;
  v41[1] = v9;
  v41[4] = swift_getWitnessTable();
  v41[2] = v10;
  v36 = 40;
  v37 = 0xE100000000000000;

  MEMORY[0x1E1283490](v12, v14);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v33 = a2;
  v34 = a3;
  v35 = a4;
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = KeyPath;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = sub_1DB280D9C;
  v32 = v19;

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  v22 = sub_1DB27DAD0(sub_1DB280DA4, v27, a2, v20, MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], v21);

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v23 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  v36 = 40;
  v37 = 0xE100000000000000;
  v40 = v23;
  v38 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v41, inited + 32);
  sub_1DB164980(&v36, inited + 72);
  sub_1DB2B57D4(inited, 1, 20041, 0xE200000000000000, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(&v36);
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = sub_1DB2BB1F4();
  sub_1DB280D00(0x3F, 0xE100000000000000, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
  v12 = sub_1DB2BAD24();
  v14 = v13;

  swift_getAssociatedTypeWitness();
  v15 = sub_1DB2BB364();
  v41[3] = type metadata accessor for Expression(0, v15, v16, v17);
  v41[0] = v8;
  v41[1] = v9;
  v41[4] = swift_getWitnessTable();
  v41[2] = v10;
  v36 = 40;
  v37 = 0xE100000000000000;

  MEMORY[0x1E1283490](v12, v14);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v33 = a2;
  v34 = a3;
  v35 = a4;
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = KeyPath;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = sub_1DB280E04;
  v32 = v19;

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  v22 = sub_1DB27DAD0(sub_1DB280DEC, v27, a2, v20, MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], v21);

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v23 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  v36 = 40;
  v37 = 0xE100000000000000;
  v40 = v23;
  v38 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v41, inited + 32);
  sub_1DB164980(&v36, inited + 72);
  sub_1DB2B594C(inited, 1, 20041, 0xE200000000000000, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(&v36);
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_1DB28001C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t *a6@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v15 - v11;
  a2(a1);
  a6[3] = AssociatedTypeWitness;
  a6[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a6);
  return (*(v10 + 32))(boxed_opaque_existential_0, v12, AssociatedTypeWitness);
}

uint64_t String.like(_:escape:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  if (a3)
  {
    v12 = MEMORY[0x1E69E6158];
    v36 = MEMORY[0x1E69E6158];
    v37 = &protocol witness table for String;
    v34 = a4;
    v35 = a5;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
    v29 = v8;
    v30 = v7;
    v33 = sub_1DB1688F0(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30, &protocol conformance descriptor for Expression<A>);
    v31 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    sub_1DB164980(&v34, inited + 32);
    sub_1DB164980(&v29, inited + 72);
    v26[0] = 32;
    v26[1] = 0xE100000000000000;

    MEMORY[0x1E1283490](1162561868, 0xE400000000000000);
    MEMORY[0x1E1283490](32, 0xE100000000000000);
    sub_1DB2B9A70(inited, v26);

    v14 = v27;
    v15 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v15 + 24))(v25, v14, v15);
    v17 = v25[0];
    v16 = v25[1];
    v18 = v25[2];
    __swift_destroy_boxed_opaque_existential_1(v26);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(&v29);
    __swift_destroy_boxed_opaque_existential_1(&v34);
    v34 = 40;
    v35 = 0xE100000000000000;

    MEMORY[0x1E1283490](v17, v16);

    MEMORY[0x1E1283490](0x2045504143534520, 0xEA0000000000293FLL);
    v19 = v34;
    v20 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_1DB2BCC40;
    *(v21 + 56) = v12;
    *(v21 + 64) = &protocol witness table for String;
    *(v21 + 32) = a2;
    *(v21 + 40) = a3;
    v34 = v18;

    sub_1DB141510(v21);

    v23 = v34;
    *a6 = v19;
    a6[1] = v20;
    a6[2] = v23;
  }

  else
  {
    v36 = MEMORY[0x1E69E6158];
    v37 = &protocol witness table for String;
    v34 = a4;
    v35 = a5;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
    v29 = v8;
    v30 = v7;
    v33 = sub_1DB1688F0(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30, &protocol conformance descriptor for Expression<A>);
    v31 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_1DB2BD5A0;
    sub_1DB164980(&v34, v24 + 32);
    sub_1DB164980(&v29, v24 + 72);

    sub_1DB2B57D4(v24, 1, 1162561868, 0xE400000000000000, a6);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(&v29);
    return __swift_destroy_boxed_opaque_existential_1(&v34);
  }

  return result;
}

uint64_t ?? infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  v13 = sub_1DB2BB364();
  *(inited + 56) = type metadata accessor for Expression(0, v13, v14, v15);
  WitnessTable = swift_getWitnessTable();
  *(inited + 32) = v10;
  *(inited + 64) = WitnessTable;
  *(inited + 40) = v9;
  *(inited + 48) = v11;
  *(inited + 96) = a3;
  *(inited + 104) = *(a4 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 72));
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a2, a3);

  sub_1DB27E110(inited, 19, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  return swift_arrayDestroy();
}

uint64_t ?? infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v9 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  v12 = sub_1DB2BB364();
  *(inited + 56) = type metadata accessor for Expression(0, v12, v13, v14);
  *(inited + 64) = swift_getWitnessTable();
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  *(inited + 96) = type metadata accessor for Expression(0, a3, v15, v16);
  *(inited + 104) = swift_getWitnessTable();
  *(inited + 72) = v9;
  *(inited + 80) = v8;
  *(inited + 88) = v10;

  sub_1DB27E110(inited, 19, a4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  return swift_arrayDestroy();
}

uint64_t ?? infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *x8_0@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  v11 = sub_1DB2BB364();
  v14 = type metadata accessor for Expression(0, v11, v12, v13);
  *(inited + 56) = v14;
  WitnessTable = swift_getWitnessTable();
  *(inited + 32) = v5;
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  *(inited + 96) = v14;
  *(inited + 104) = WitnessTable;
  *(inited + 64) = WitnessTable;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  *(inited + 88) = v9;

  sub_1DB27E110(inited, 19, x8_0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  return swift_arrayDestroy();
}

unint64_t sub_1DB280C98()
{
  result = qword_1ECC29248;
  if (!qword_1ECC29248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29248);
  }

  return result;
}

uint64_t sub_1DB280CEC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

void *sub_1DB280D00(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = result;
    v6 = sub_1DB2BB104();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t sub_1DB280E0C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t (*Connection.createFunction<A>(_:deterministic:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v11 = a3;
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a4;
  v14[5] = a5;

  v15 = sub_1DB2811F4(a1, a2, 0, v11, sub_1DB2811C4, v14, a6, a7);
  v17 = v16;

  if (!v20)
  {
    v19 = swift_allocObject();
    v19[2] = a6;
    v19[3] = a7;
    v19[4] = v15;
    v19[5] = v17;
    return sub_1DB281304;
  }

  return result;
}

{
  v11 = a3;
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a4;
  v14[5] = a5;

  v15 = sub_1DB281444(a1, a2, 0, v11, sub_1DB284E40, v14, a6, a7);
  v17 = v16;

  if (!v20)
  {
    v19 = swift_allocObject();
    v19[2] = a6;
    v19[3] = a7;
    v19[4] = v15;
    v19[5] = v17;
    return sub_1DB284E70;
  }

  return result;
}

uint64_t (*sub_1DB2811F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a5;
  v16[5] = a6;

  Connection.createFunction(_:argumentCount:deterministic:_:)(a1, a2, a3, 0, a4, sub_1DB284DB0, v16);

  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a1;
  v17[5] = a2;

  return sub_1DB284DBC;
}

uint64_t (*sub_1DB281444(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a5;
  v16[5] = a6;

  Connection.createFunction(_:argumentCount:deterministic:_:)(a1, a2, a3, 0, a4, sub_1DB284D98, v16);

  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a1;
  v17[5] = a2;

  return sub_1DB284DA4;
}

uint64_t (*Connection.createFunction<A, B>(_:deterministic:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(uint64_t a1)
{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a4;
  v16[7] = a5;

  v17 = sub_1DB2811F4(a1, a2, 1, a3, sub_1DB28168C, v16, a6, a8);
  v19 = v18;

  if (!v23)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = v17;
    v21[7] = v19;
    return sub_1DB2816A4;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a4;
  v16[7] = a5;

  v17 = sub_1DB2811F4(a1, a2, 1, a3, sub_1DB2817F4, v16, a6, a8);
  v19 = v18;

  if (!v23)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = v17;
    v21[7] = v19;
    return sub_1DB281878;
  }

  return result;
}

uint64_t (*Connection.createFunction<A, B>(_:deterministic:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(uint64_t)
{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a4;
  v16[7] = a5;

  v17 = sub_1DB281444(a1, a2, 1, a3, sub_1DB284DC8, v16, a6, a8);
  v19 = v18;

  if (!v23)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = v17;
    v21[7] = v19;
    return sub_1DB284E38;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a4;
  v16[7] = a5;

  v17 = sub_1DB281444(a1, a2, 1, a3, sub_1DB281F38, v16, a6, a8);
  v19 = v18;

  if (!v23)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = v17;
    v21[7] = v19;
    return sub_1DB284E3C;
  }

  return result;
}

uint64_t sub_1DB2819F4(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  result = MEMORY[0x1EEE9AC00](a1);
  v12 = &v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(result + 16))
  {
    result = sub_1DB2BA144(result + 32, a5, v10, &v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (!v5)
    {
      a2(v12);
      return (*(v8 + 8))(v12, a5);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB281B18(uint64_t *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DB2BCC40;
  *(v10 + 56) = type metadata accessor for Expression(0, a5, v11, v12);
  *(v10 + 64) = swift_getWitnessTable();
  *(v10 + 32) = v8;
  *(v10 + 40) = v7;
  *(v10 + 48) = v9;

  a2(v10);
}

uint64_t sub_1DB281D38@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>, uint64_t a10, void (*a11)(char *, char *))
{
  v32 = a6;
  v18 = sub_1DB2BB364();
  result = MEMORY[0x1EEE9AC00](v18);
  v22 = v27 - v21;
  if (*(a1 + 16))
  {
    v27[0] = v20;
    v27[1] = a9;
    v28 = result;
    v29 = a3;
    v30 = a2;
    v23 = swift_allocObject();
    v31 = v27;
    *(v23 + 16) = a5;
    *(v23 + 24) = a7;
    v24 = MEMORY[0x1EEE9AC00](v23);
    v27[-6] = a4;
    v27[-5] = a5;
    v27[-4] = v32;
    v27[-3] = a7;
    v27[-2] = a10;
    v27[-1] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27448, &qword_1DB2BFA70);
    v26 = v33;
    sub_1DB280E0C(a11, &v27[-8], v25, a5, &v34, v22);

    if (!v26)
    {
      v30(v22);
      return (*(v27[0] + 8))(v22, v28);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB281F80(uint64_t *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB2BCC40;
  v10 = sub_1DB2BB364();
  *(v9 + 56) = type metadata accessor for Expression(0, v10, v11, v12);
  *(v9 + 64) = swift_getWitnessTable();
  *(v9 + 32) = v7;
  *(v9 + 40) = v6;
  *(v9 + 48) = v8;

  a2(v9);
}

uint64_t (*Connection.createFunction<A, B, C>(_:deterministic:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11))(uint64_t a1, uint64_t a2)
{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_1DB2811F4(a1, a2, 2, a3, sub_1DB2821B0, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_1DB2821C8;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_1DB2811F4(a1, a2, 2, a3, sub_1DB28231C, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_1DB2823C4;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_1DB2811F4(a1, a2, 2, a3, sub_1DB282554, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_1DB2825B0;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_1DB2811F4(a1, a2, 2, a3, sub_1DB282F68, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_1DB282FD0;
  }

  return result;
}

uint64_t (*Connection.createFunction<A, B, C>(_:deterministic:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11))(uint64_t, uint64_t)
{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_1DB281444(a1, a2, 2, a3, sub_1DB284DE0, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_1DB284DF8;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_1DB281444(a1, a2, 2, a3, sub_1DB2833F8, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_1DB284DFC;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_1DB281444(a1, a2, 2, a3, sub_1DB2839C8, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_1DB284E00;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_1DB281444(a1, a2, 2, a3, sub_1DB284088, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_1DB284E04;
  }

  return result;
}

uint64_t sub_1DB282704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v23 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(result + 16);
  if (!v24)
  {
    __break(1u);
    goto LABEL_9;
  }

  v27 = v22;
  v26 = v19;
  result = sub_1DB2BA144(a1 + 32, a5, v20, &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v9)
  {
    return result;
  }

  if (v24 == 1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1DB2BA144(a1 + 72, a6, a9, v15);
  v26(v23, v15);
  (*(v27 + 8))(v15, a6);
  return (*(v17 + 8))(v23, a5);
}

uint64_t sub_1DB282910(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DB2BD5A0;
  *(v15 + 56) = type metadata accessor for Expression(0, a6, v16, v17);
  *(v15 + 64) = swift_getWitnessTable();
  *(v15 + 32) = v9;
  *(v15 + 40) = v10;
  *(v15 + 48) = v11;
  *(v15 + 96) = type metadata accessor for Expression(0, a7, v18, v19);
  *(v15 + 104) = swift_getWitnessTable();
  *(v15 + 72) = v12;
  *(v15 + 80) = v13;
  *(v15 + 88) = v14;

  a3(v15);
}

uint64_t sub_1DB282B8C@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v55 = a7;
  v56 = a8;
  v57 = a4;
  v16 = sub_1DB2BB364();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v40 - v18;
  v19 = sub_1DB2BB364();
  result = MEMORY[0x1EEE9AC00](v19);
  v23 = &v40 - v22;
  if (!*(a1 + 16))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v51 = *(a1 + 16);
  v48 = v21;
  v49 = result;
  v43 = v17;
  v44 = a9;
  v45 = v16;
  v46 = a3;
  v47 = a2;
  v24 = swift_allocObject();
  v53 = &v40;
  v25 = v56;
  *(v24 + 16) = a5;
  *(v24 + 24) = v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  *(&v40 - 8) = v57;
  *(&v40 - 7) = a5;
  v27 = v55;
  *(&v40 - 6) = a6;
  *(&v40 - 5) = v27;
  *(&v40 - 4) = v28;
  *(&v40 - 3) = a10;
  v50 = a10;
  *(&v40 - 2) = sub_1DB284E58;
  *(&v40 - 1) = v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27448, &qword_1DB2BFA70);
  v31 = v54;
  sub_1DB280E0C(sub_1DB284E08, (&v40 - 10), v30, a5, &v58, v23);

  if (!v31)
  {
    v41 = v23;
    v42 = v30;
    v54 = v29;
    v32 = v57;
    v33 = v50;
    if (v51 != 1)
    {
      v34 = swift_allocObject();
      *(v34 + 16) = a6;
      *(v34 + 24) = v33;
      v35 = MEMORY[0x1EEE9AC00](v34);
      *(&v40 - 8) = v32;
      *(&v40 - 7) = a5;
      v37 = v55;
      v36 = v56;
      *(&v40 - 6) = a6;
      *(&v40 - 5) = v37;
      *(&v40 - 4) = v36;
      *(&v40 - 3) = v33;
      *(&v40 - 2) = sub_1DB284E58;
      *(&v40 - 1) = v35;
      v38 = v52;
      sub_1DB280E0C(sub_1DB284E08, (&v40 - 10), v42, a6, &v58, v52);

      v39 = v41;
      v47(v41, v38);
      (*(v43 + 8))(v38, v45);
      return (*(v48 + 8))(v39, v49);
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1DB283124@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(char *, char *))
{
  v45 = a7;
  v44 = a4;
  v20 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DB2BB364();
  result = MEMORY[0x1EEE9AC00](v22);
  v26 = v34 - v25;
  v27 = *(a1 + 16);
  if (!v27)
  {
    __break(1u);
    goto LABEL_7;
  }

  v39 = result;
  v40 = v27;
  v37 = a2;
  v38 = v24;
  v34[1] = a9;
  v35 = v20;
  v36 = a3;
  v42 = a13;
  v28 = swift_allocObject();
  v43 = v34;
  *(v28 + 16) = a5;
  *(v28 + 24) = a8;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v30 = v45;
  v34[-8] = v44;
  v34[-7] = a5;
  v34[-6] = a6;
  v34[-5] = v30;
  v34[-4] = a8;
  v34[-3] = a10;
  v34[-2] = a12;
  v34[-1] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27448, &qword_1DB2BFA70);
  v32 = v46;
  sub_1DB280E0C(v42, &v34[-10], v31, a5, &v47, v26);

  if (v32)
  {
    return result;
  }

  if (v40 == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v33 = v41;
  sub_1DB2BA144(a1 + 72, a6, a10, v41);
  v37(v26, v33);
  (*(v35 + 8))(v33, a6);
  return (*(v38 + 8))(v26, v39);
}

uint64_t sub_1DB283454(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DB2BD5A0;
  v15 = sub_1DB2BB364();
  *(v14 + 56) = type metadata accessor for Expression(0, v15, v16, v17);
  *(v14 + 64) = swift_getWitnessTable();
  *(v14 + 32) = v8;
  *(v14 + 40) = v9;
  *(v14 + 48) = v10;
  *(v14 + 96) = type metadata accessor for Expression(0, a7, v18, v19);
  *(v14 + 104) = swift_getWitnessTable();
  *(v14 + 72) = v11;
  *(v14 + 80) = v12;
  *(v14 + 88) = v13;

  a3(v14);
}

uint64_t sub_1DB2836DC@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(char *, char *))
{
  v43 = a4;
  v44 = a7;
  v41 = a9;
  v20 = sub_1DB2BB364();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v45 = &v34 - v22;
  result = MEMORY[0x1EEE9AC00](v21);
  v27 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a1 + 16);
  if (!v28)
  {
    __break(1u);
    goto LABEL_7;
  }

  v42 = v26;
  v39 = v25;
  v40 = result;
  result = sub_1DB2BA144(a1 + 32, a5, a8, &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v13)
  {
    return result;
  }

  if (v28 == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v34 = a3;
  v35 = a2;
  v36 = a12;
  v37 = a13;
  v29 = swift_allocObject();
  v38 = &v34;
  *(v29 + 16) = a6;
  *(v29 + 24) = a10;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v31 = v44;
  *(&v34 - 8) = v43;
  *(&v34 - 7) = a5;
  *(&v34 - 6) = a6;
  *(&v34 - 5) = v31;
  *(&v34 - 4) = a8;
  *(&v34 - 3) = a10;
  *(&v34 - 2) = v36;
  *(&v34 - 1) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27448, &qword_1DB2BFA70);
  v33 = v45;
  sub_1DB280E0C(v37, (&v34 - 10), v32, a6, &v46, v45);

  v35(v27, v33);
  (*(v39 + 8))(v33, v40);
  return (*(v42 + 8))(v27, a5);
}

uint64_t sub_1DB283A24(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DB2BD5A0;
  *(v14 + 56) = type metadata accessor for Expression(0, a6, v15, v16);
  *(v14 + 64) = swift_getWitnessTable();
  *(v14 + 32) = v8;
  *(v14 + 40) = v9;
  *(v14 + 48) = v10;
  v17 = sub_1DB2BB364();
  *(v14 + 96) = type metadata accessor for Expression(0, v17, v18, v19);
  *(v14 + 104) = swift_getWitnessTable();
  *(v14 + 72) = v11;
  *(v14 + 80) = v12;
  *(v14 + 88) = v13;

  a3(v14);
}

uint64_t sub_1DB283CAC@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v55 = a7;
  v56 = a8;
  v57 = a4;
  v16 = sub_1DB2BB364();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v40 - v18;
  v19 = sub_1DB2BB364();
  result = MEMORY[0x1EEE9AC00](v19);
  v23 = &v40 - v22;
  if (!*(a1 + 16))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v51 = *(a1 + 16);
  v48 = v21;
  v49 = result;
  v43 = v17;
  v44 = a9;
  v45 = v16;
  v46 = a3;
  v47 = a2;
  v24 = swift_allocObject();
  v53 = &v40;
  v25 = v56;
  *(v24 + 16) = a5;
  *(v24 + 24) = v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  *(&v40 - 8) = v57;
  *(&v40 - 7) = a5;
  v27 = v55;
  *(&v40 - 6) = a6;
  *(&v40 - 5) = v27;
  *(&v40 - 4) = v28;
  *(&v40 - 3) = a10;
  v50 = a10;
  *(&v40 - 2) = sub_1DB284CDC;
  *(&v40 - 1) = v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27448, &qword_1DB2BFA70);
  v31 = v54;
  sub_1DB280E0C(sub_1DB284E08, (&v40 - 10), v30, a5, &v58, v23);

  if (!v31)
  {
    v41 = v23;
    v42 = v30;
    v54 = v29;
    v32 = v57;
    v33 = v50;
    if (v51 != 1)
    {
      v34 = swift_allocObject();
      *(v34 + 16) = a6;
      *(v34 + 24) = v33;
      v35 = MEMORY[0x1EEE9AC00](v34);
      *(&v40 - 8) = v32;
      *(&v40 - 7) = a5;
      v37 = v55;
      v36 = v56;
      *(&v40 - 6) = a6;
      *(&v40 - 5) = v37;
      *(&v40 - 4) = v36;
      *(&v40 - 3) = v33;
      *(&v40 - 2) = sub_1DB284E58;
      *(&v40 - 1) = v35;
      v38 = v52;
      sub_1DB280E0C(sub_1DB284CF8, (&v40 - 10), v42, a6, &v58, v52);

      v39 = v41;
      v47(v41, v38);
      (*(v43 + 8))(v38, v45);
      return (*(v48 + 8))(v39, v49);
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1DB2840B4(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DB2BD5A0;
  v14 = sub_1DB2BB364();
  *(v13 + 56) = type metadata accessor for Expression(0, v14, v15, v16);
  *(v13 + 64) = swift_getWitnessTable();
  *(v13 + 32) = v7;
  *(v13 + 40) = v8;
  *(v13 + 48) = v9;
  v17 = sub_1DB2BB364();
  *(v13 + 96) = type metadata accessor for Expression(0, v17, v18, v19);
  *(v13 + 104) = swift_getWitnessTable();
  *(v13 + 72) = v10;
  *(v13 + 80) = v11;
  *(v13 + 88) = v12;

  a3(v13);
}

uint64_t (*Connection.createFunction<A, B, C, D>(_:deterministic:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13))(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a9;
  v17[6] = a10;
  v17[7] = a11;
  v17[8] = a12;
  v17[9] = a13;
  v17[10] = a4;
  v17[11] = a5;

  v18 = a6;
  v19 = sub_1DB2811F4(a1, a2, 3, a3, sub_1DB28460C, v17, a6, a10);
  v21 = v20;

  if (!v28)
  {
    v23 = swift_allocObject();
    v23[2] = v18;
    v23[3] = a7;
    v23[4] = a8;
    v23[5] = a9;
    v23[6] = a10;
    v23[7] = a11;
    v23[8] = a12;
    v23[9] = a13;
    v23[10] = v19;
    v23[11] = v21;
    return sub_1DB2847DC;
  }

  return result;
}

uint64_t sub_1DB284370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v39 = a7;
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 - 8);
  result = MEMORY[0x1EEE9AC00](v18);
  v30 = v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(result + 16);
  if (!v31)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v34[1] = v29;
  v35 = v27;
  v37 = v24;
  v38 = v28;
  v36 = v25;
  result = sub_1DB2BA144(a1 + 32, a5, a9, v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v11)
  {
    return result;
  }

  if (v31 == 1)
  {
    goto LABEL_8;
  }

  result = sub_1DB2BA144(a1 + 72, a6, a10, v20);
  if (v31 < 3)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v32 = a1 + 112;
  v33 = v39;
  sub_1DB2BA144(v32, v39, a11, v17);
  v37(v30, v20, v17);
  (*(v35 + 8))(v17, v33);
  (*(v38 + 8))(v20, a6);
  return (*(v22 + 8))(v30, a5);
}

uint64_t sub_1DB28464C(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a2[1];
  v26 = *a2;
  v15 = a2[2];
  v16 = a3[1];
  v27 = *a3;
  v17 = a3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DB2BD590;
  *(v18 + 56) = type metadata accessor for Expression(0, a7, v19, v20);
  *(v18 + 64) = swift_getWitnessTable();
  *(v18 + 32) = v11;
  *(v18 + 40) = v12;
  *(v18 + 48) = v13;
  *(v18 + 96) = type metadata accessor for Expression(0, a8, v21, v22);
  *(v18 + 104) = swift_getWitnessTable();
  *(v18 + 72) = v26;
  *(v18 + 80) = v14;
  *(v18 + 88) = v15;
  *(v18 + 136) = type metadata accessor for Expression(0, a9, v23, v24);
  *(v18 + 144) = swift_getWitnessTable();
  *(v18 + 112) = v27;
  *(v18 + 120) = v16;
  *(v18 + 128) = v17;

  a4(v18);
}

uint64_t sub_1DB28481C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11(v8);
  v12 = *(a3 + 56);
  a4[3] = swift_getAssociatedTypeWitness();
  a4[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(a4);
  v12(a2, a3);
  return (*(v7 + 8))(v10, a2);
}

uint64_t sub_1DB28498C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *x8_0@<X8>)
{
  v7 = sub_1DB2B995C(34, 0xE100000000000000, a2, a3);
  v9 = v8;
  sub_1DB2B9A70(a1, v11);
  sub_1DB2B9D5C(v11, v7, v9, x8_0);

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_1DB284A24@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_1DB2BB364();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  a2(a1);
  v14 = *(a3 - 8);
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    result = (*(v11 + 8))(v13, v10);
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  else
  {
    v16 = *(a4 + 56);
    *(a5 + 24) = swift_getAssociatedTypeWitness();
    *(a5 + 32) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_0(a5);
    v16(a3, a4);
    return (*(v14 + 8))(v13, a3);
  }

  return result;
}

uint64_t sub_1DB284C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *x8_0@<X8>)
{
  v7 = sub_1DB2B995C(34, 0xE100000000000000, a2, a3);
  v9 = v8;
  sub_1DB2B9A70(a1, v11);
  sub_1DB2BB364();
  sub_1DB2B9D5C(v11, v7, v9, x8_0);

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_1DB284D10(uint64_t a1, void *a2)
{
  result = (*(v2 + 64))(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_1DB284D60(uint64_t a1, void *a2)
{
  result = (*(v2 + 48))(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t static DateFunctions.date(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 16);
  if (v7)
  {
    sub_1DB280D00(0x3F, 0xE100000000000000, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB138A00();
    v8 = sub_1DB2BAD24();
    v10 = v9;

    MEMORY[0x1E1283490](v8, v10);

    MEMORY[0x1E1283490](41, 0xE100000000000000);
    v12 = 0x202C3F2865746164;
    v11 = 0xE800000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BCC40;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    v17 = inited;

    sub_1DB1413F4(v14);
    v15 = sub_1DB20F850(v17);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DB2BCC40;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = &protocol witness table for String;
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;

    v11 = 0xE700000000000000;
    v12 = 0x293F2865746164;
  }

  *a4 = v12;
  a4[1] = v11;
  a4[2] = v15;
  return result;
}

uint64_t static DateFunctions.time(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 16);
  if (v7)
  {
    sub_1DB280D00(0x3F, 0xE100000000000000, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB138A00();
    v8 = sub_1DB2BAD24();
    v10 = v9;

    MEMORY[0x1E1283490](v8, v10);

    MEMORY[0x1E1283490](41, 0xE100000000000000);
    v12 = 0x202C3F28656D6974;
    v11 = 0xE800000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BCC40;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    v17 = inited;

    sub_1DB1413F4(v14);
    v15 = sub_1DB20F850(v17);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DB2BCC40;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = &protocol witness table for String;
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;

    v11 = 0xE700000000000000;
    v12 = 0x293F28656D6974;
  }

  *a4 = v12;
  a4[1] = v11;
  a4[2] = v15;
  return result;
}

uint64_t static DateFunctions.datetime(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 16);
  if (v7)
  {
    sub_1DB280D00(0x3F, 0xE100000000000000, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB138A00();
    v8 = sub_1DB2BAD24();
    v10 = v9;

    strcpy(v17, "datetime(?, ");
    BYTE5(v17[1]) = 0;
    HIWORD(v17[1]) = -5120;
    MEMORY[0x1E1283490](v8, v10);

    MEMORY[0x1E1283490](41, 0xE100000000000000);
    v12 = v17[0];
    v11 = v17[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BCC40;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    v17[0] = inited;

    sub_1DB1413F4(v14);
    v15 = sub_1DB20F850(v17[0]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DB2BCC40;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = &protocol witness table for String;
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;

    v11 = 0xEB00000000293F28;
    v12 = 0x656D697465746164;
  }

  *a4 = v12;
  a4[1] = v11;
  a4[2] = v15;
  return result;
}

uint64_t static DateFunctions.julianday(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 16);
  if (v7)
  {
    sub_1DB280D00(0x3F, 0xE100000000000000, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB138A00();
    v8 = sub_1DB2BAD24();
    v10 = v9;

    strcpy(v17, "julianday(?, ");
    HIWORD(v17[1]) = -4864;
    MEMORY[0x1E1283490](v8, v10);

    MEMORY[0x1E1283490](41, 0xE100000000000000);
    v12 = v17[0];
    v11 = v17[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BCC40;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    v17[0] = inited;

    sub_1DB1413F4(v14);
    v15 = sub_1DB20F850(v17[0]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DB2BCC40;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = &protocol witness table for String;
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;

    v11 = 0xEC000000293F2879;
    v12 = 0x61646E61696C756ALL;
  }

  *a4 = v12;
  a4[1] = v11;
  a4[2] = v15;
  return result;
}

uint64_t static DateFunctions.strftime(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *(a5 + 16);
  if (v11)
  {
    sub_1DB280D00(0x3F, 0xE100000000000000, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB138A00();
    v12 = sub_1DB2BAD24();
    v14 = v13;

    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v12, v14);

    MEMORY[0x1E1283490](41, 0xE100000000000000);
    v15 = 0xEF202C3F202C3F28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 48) = a3;
    *(inited + 56) = a4;
    v21 = inited;

    sub_1DB1413F4(v17);
    v18 = sub_1DB20F850(v21);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DB2BD5A0;
    v20 = MEMORY[0x1E69E6158];
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = &protocol witness table for String;
    *(v18 + 32) = a1;
    *(v18 + 40) = a2;
    *(v18 + 96) = v20;
    *(v18 + 104) = &protocol witness table for String;
    *(v18 + 72) = a3;
    *(v18 + 80) = a4;

    v15 = 0xEE00293F202C3F28;
  }

  *a6 = 0x656D697466727473;
  a6[1] = v15;
  a6[2] = v18;
  return result;
}

uint64_t sub_1DB285830(void (*a1)(uint64_t, uint64_t, void))
{
  type metadata accessor for DateFunctions();
  if (qword_1ECC26C50 != -1)
  {
    swift_once();
  }

  v2 = qword_1ECC29568;
  v3 = sub_1DB2BA8C4();
  v4 = [v2 stringFromDate_];

  v5 = sub_1DB2BAD94();
  v7 = v6;

  a1(v5, v7, MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1DB285970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];

  MEMORY[0x1E1283490](v5, v6);
  result = MEMORY[0x1E1283490](41, 0xE100000000000000);
  *a3 = a1;
  a3[1] = a2;
  a3[2] = v7;
  return result;
}

uint64_t Expression<A>.timestamp.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](v3, v4);
  result = MEMORY[0x1E1283490](0x544E492053412029, 0xED00002952454745);
  *a1 = 0xD000000000000015;
  a1[1] = 0x80000001DB2D7620;
  a1[2] = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB285AE4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DB2BA904();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E6158];
  *(v8 + 16) = xmmword_1DB2BCC40;
  *(v8 + 56) = v9;
  *(v8 + 64) = &protocol witness table for String;
  if (qword_1ECC26C50 != -1)
  {
    swift_once();
  }

  v10 = qword_1ECC29568;
  v11 = sub_1DB2BA8C4();
  v12 = [v10 stringFromDate_];

  v13 = sub_1DB2BAD94();
  v15 = v14;

  *(v8 + 32) = v13;
  *(v8 + 40) = v15;
  result = (*(v5 + 8))(v7, v4);
  *a1 = 63;
  a1[1] = 0xE100000000000000;
  a1[2] = v8;
  return result;
}

uint64_t sub_1DB285CA4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  v6 = a1(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  (*(v7 + 16))(&v13 - v8, v3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DB2BCC40;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = &protocol witness table for String;
  *(v10 + 32) = a2();
  *(v10 + 40) = v11;
  result = (*(v7 + 8))(v9, v6);
  *a3 = 63;
  a3[1] = 0xE100000000000000;
  a3[2] = v10;
  return result;
}

uint64_t sub_1DB285DFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB2BCC40;
  *(v4 + 56) = &type metadata for Blob;
  *(v4 + 64) = sub_1DB138CA8();
  *(v4 + 32) = a1;

  *a2 = 63;
  a2[1] = 0xE100000000000000;
  a2[2] = v4;
  return result;
}

double sub_1DB285E88@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1DB2BCC40;
  *(v4 + 56) = MEMORY[0x1E69E7360];
  *(v4 + 64) = &protocol witness table for Int64;
  *(v4 + 32) = a1;
  *a2 = 63;
  a2[1] = 0xE100000000000000;
  a2[2] = v4;
  return result;
}

double sub_1DB285F00@<D0>(void *a1@<X8>, double a2@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1DB2BCC40;
  *(v4 + 56) = MEMORY[0x1E69E63B0];
  *(v4 + 64) = &protocol witness table for Double;
  *(v4 + 32) = a2;
  *a1 = 63;
  a1[1] = 0xE100000000000000;
  a1[2] = v4;
  return result;
}

double sub_1DB285F80@<D0>(char a1@<W0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v4 = swift_allocObject();
  *&result = 1;
  v6 = MEMORY[0x1E69E7360];
  *(v4 + 16) = xmmword_1DB2BCC40;
  *(v4 + 56) = v6;
  *(v4 + 64) = &protocol witness table for Int64;
  *(v4 + 32) = a1 & 1;
  *a2 = 63;
  a2[1] = 0xE100000000000000;
  a2[2] = v4;
  return result;
}

uint64_t sub_1DB285FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB2BCC40;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = &protocol witness table for String;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *a3 = 63;
  a3[1] = 0xE100000000000000;
  a3[2] = v6;
}

uint64_t sub_1DB286094@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB2BCC40;
  *(v6 + 56) = &type metadata for Blob;
  *(v6 + 64) = sub_1DB138CA8();
  sub_1DB226094(a1, a2);
  result = sub_1DB2B8F38(a1, a2, a1, a2, (v6 + 32));
  *a3 = 63;
  a3[1] = 0xE100000000000000;
  a3[2] = v6;
  return result;
}

uint64_t Value.expression.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Expression(0, a1, v10, v11);
  (*(v7 + 16))(v9, v3, a1);
  WitnessTable = swift_getWitnessTable();
  ExpressionType<>.init(value:)(v9, v12, WitnessTable, a2);
  v19[0] = v19[3];
  v19[1] = v19[4];
  v19[2] = v19[5];
  v14 = (*(WitnessTable + 32))(v12, WitnessTable);
  v16 = v15;
  v17 = (*(WitnessTable + 40))(v12, WitnessTable);
  *a3 = v14;
  a3[1] = v16;
  a3[2] = v17;
}

uint64_t Expression.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1DB286324(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB2BAA34();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v61 - v9;
  if (qword_1EE13F6D8 != -1)
  {
LABEL_61:
    swift_once();
  }

  v11 = sub_1DB2BAA64();
  __swift_project_value_buffer(v11, qword_1EE14C880);
  sub_1DB2BAA24();
  v12 = sub_1DB2BAA44();
  v13 = sub_1DB2BB2F4();
  if (sub_1DB2BB314())
  {
    v14 = swift_slowAlloc();
    v67 = a2;
    v15 = v14;
    *v14 = 0;
    v16 = sub_1DB2BAA14();
    _os_signpost_emit_with_name_impl(&dword_1DB132000, v12, v13, v16, "asSQL", "", v15, 2u);
    a2 = v67;
    MEMORY[0x1E1284BF0](v15, -1, -1);
  }

  (*(v5 + 16))(v8, v10, v4);
  sub_1DB2BAAA4();
  swift_allocObject();
  v62 = sub_1DB2BAA94();
  (*(v5 + 8))(v10, v4);
  v84 = 0;
  v85 = 0xE000000000000000;
  (*(a2 + 24))(&v79, a1, a2);
  v4 = v79;
  v5 = v80;
  v17 = v81;
  if ((v80 & 0x2000000000000000) != 0)
  {
    v10 = (HIBYTE(v80) & 0xF);
  }

  else
  {
    v10 = (v79 & 0xFFFFFFFFFFFFLL);
  }

  v63 = v81;
  if (v10)
  {
    v67 = v80 & 0xFFFFFFFFFFFFFFLL;
    v66 = (v80 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v65 = v81 + 32;

    v18 = 0;
    a1 = 0;
    v8 = 0;
    v19 = &qword_1ECC26E28;
    v64 = v4;
    while (1)
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        v22 = sub_1DB2BB4E4();
        a2 = v23;
        if (v22 != 63)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v79 = v4;
          v80 = v67;
          v21 = &v79 + v8;
        }

        else
        {
          v20 = v66;
          if ((v4 & 0x1000000000000000) == 0)
          {
            v20 = sub_1DB2BB5B4();
          }

          v21 = &v8[v20];
        }

        v24 = *v21;
        if ((*v21 & 0x80000000) == 0)
        {
LABEL_20:
          a2 = 1;
          if (v24 != 63)
          {
            goto LABEL_9;
          }

          goto LABEL_21;
        }

        v30 = (__clz(v24 ^ 0xFF) - 24);
        if (v30 > 2)
        {
          if (v30 == 3)
          {
            a2 = 3;
            if ((((v24 & 0xF) << 12) | ((v21[1] & 0x3F) << 6) | v21[2] & 0x3F) != 0x3F)
            {
              goto LABEL_9;
            }
          }

          else
          {
            a2 = 4;
            if ((((v24 & 0xF) << 18) | ((v21[1] & 0x3F) << 12) | ((v21[2] & 0x3F) << 6) | v21[3] & 0x3F) != 0x3F)
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
          if (v30 == 1)
          {
            goto LABEL_20;
          }

          a2 = 2;
          if ((v21[1] & 0x3F | ((v24 & 0x1F) << 6)) != 0x3F)
          {
            goto LABEL_9;
          }
        }
      }

LABEL_21:
      if (v18 < *(v17 + 16))
      {
        if (v18 < 0)
        {
          goto LABEL_60;
        }

        sub_1DB1446A4(v65 + 40 * v18, &v79, v19, &unk_1DB2C2D70);
        sub_1DB1446A4(&v79, &v74, v19, &unk_1DB2C2D70);
        if (v75)
        {
          sub_1DB1355D0(&v74, &v76);
          sub_1DB164980(&v76, &v74);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
          v25 = v19;
          if (swift_dynamicCast())
          {
            v71 = 10104;
            v72 = 0xE200000000000000;
            v68 = v69;
            countAndFlagsBits = Blob.toHex()()._countAndFlagsBits;
            MEMORY[0x1E1283490](countAndFlagsBits);
            v17 = v63;

            MEMORY[0x1E1283490](39, 0xE100000000000000);

            v27 = v71;
            v28 = v72;
            __swift_destroy_boxed_opaque_existential_1(&v76);
            __swift_destroy_boxed_opaque_existential_1(&v74);
          }

          else
          {
            if (swift_dynamicCast())
            {
              v27 = sub_1DB2B995C(39, 0xE100000000000000, v71, v72);
              v28 = v31;

              __swift_destroy_boxed_opaque_existential_1(&v76);
              v32 = &v74;
            }

            else
            {
              sub_1DB1355D0(&v74, &v71);
              v69 = 0;
              v70 = 0xE000000000000000;
              __swift_project_boxed_opaque_existential_1(&v71, v73);
              sub_1DB2BB914();
              v27 = v69;
              v28 = v70;
              __swift_destroy_boxed_opaque_existential_1(&v76);
              v32 = &v71;
            }

            __swift_destroy_boxed_opaque_existential_1(v32);
            v17 = v63;
          }
        }

        else
        {
          sub_1DB1445E0(&v74, v19, &unk_1DB2C2D70);
          v25 = v19;
          v28 = 0xE400000000000000;
          v27 = 1280070990;
        }

        sub_1DB1445E0(&v79, v25, &unk_1DB2C2D70);
        v79 = v27;
        v80 = v28;
        sub_1DB2BAE54();

        ++v18;
        v19 = v25;
        v4 = v64;
        goto LABEL_10;
      }

      v29 = __OFADD__(a1++, 1);
      if (v29)
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

LABEL_9:
      sub_1DB2BAE64();
LABEL_10:
      v8 += a2;
      if (v8 >= v10)
      {

        if (a1 < 1)
        {
          goto LABEL_46;
        }

        v79 = 0;
        v80 = 0xE000000000000000;
        sub_1DB2BB4F4();
        MEMORY[0x1E1283490](0xD000000000000024, 0x80000001DB2D4740);
        *&v76 = a1;
        v33 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v33);

        MEMORY[0x1E1283490](0xD000000000000019, 0x80000001DB2D4770);
        v34 = *(v17 + 16);
        v29 = __OFADD__(v34, a1);
        v35 = v34 + a1;
        if (!v29)
        {
          *&v76 = v35;
          v36 = sub_1DB2BB8F4();
          MEMORY[0x1E1283490](v36);

          MEMORY[0x1E1283490](0x6C6175746361202CLL, 0xEA0000000000203ALL);
          *&v76 = *(v17 + 16);
          v37 = sub_1DB2BB8F4();
          MEMORY[0x1E1283490](v37);

          MEMORY[0x1E1283490](46, 0xE100000000000000);
          sub_1DB15B09C(v79, v80);

          goto LABEL_46;
        }

        __break(1u);
LABEL_64:
        swift_once();
LABEL_48:
        sub_1DB2BBAF4();
        v38 = v82;
        v39 = v83;
        __swift_project_boxed_opaque_existential_1(&v79, v82);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1DB2BCC40;
        v69 = sub_1DB156674(0, 76, 0, MEMORY[0x1E69E7CC0]);
        v41._countAndFlagsBits = 0xD00000000000003FLL;
        v41._object = 0x80000001DB2D4700;
        LogMessage.StringInterpolation.appendLiteral(_:)(v41);
        v42 = MEMORY[0x1E69E6530];
        v75 = MEMORY[0x1E69E6530];
        *&v74 = v18;
        sub_1DB1446A4(&v74, &v71, &qword_1ECC26F30, &unk_1DB2BFA90);
        v76 = 0u;
        v77 = 0u;
        sub_1DB156864(&v71, &v76);
        v78 = 0;
        v43 = v69;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1DB156674(0, *(v43 + 2) + 1, 1, v43);
        }

        v45 = *(v43 + 2);
        v44 = *(v43 + 3);
        if (v45 >= v44 >> 1)
        {
          v43 = sub_1DB156674((v44 > 1), v45 + 1, 1, v43);
        }

        *(v43 + 2) = v45 + 1;
        v46 = &v43[40 * v45];
        v47 = v76;
        v48 = v77;
        v46[64] = v78;
        *(v46 + 2) = v47;
        *(v46 + 3) = v48;
        v69 = v43;
        sub_1DB1445E0(&v74, &qword_1ECC26F30, &unk_1DB2BFA90);
        v49._countAndFlagsBits = 0x7365756C6176202CLL;
        v49._object = 0xEA0000000000203ALL;
        LogMessage.StringInterpolation.appendLiteral(_:)(v49);
        v50 = *(v63 + 16);
        v75 = v42;
        *&v74 = v50;
        sub_1DB1446A4(&v74, &v71, &qword_1ECC26F30, &unk_1DB2BFA90);
        v76 = 0u;
        v77 = 0u;
        sub_1DB156864(&v71, &v76);
        v78 = 0;
        v51 = v69;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1DB156674(0, *(v51 + 2) + 1, 1, v51);
          v69 = v51;
        }

        v52 = v62;
        v54 = *(v51 + 2);
        v53 = *(v51 + 3);
        if (v54 >= v53 >> 1)
        {
          v51 = sub_1DB156674((v53 > 1), v54 + 1, 1, v51);
        }

        *(v51 + 2) = v54 + 1;
        v55 = &v51[40 * v54];
        v57 = v76;
        v56 = v77;
        v55[64] = v78;
        *(v55 + 2) = v57;
        *(v55 + 3) = v56;
        v69 = v51;
        sub_1DB1445E0(&v74, &qword_1ECC26F30, &unk_1DB2BFA90);
        v58._countAndFlagsBits = 46;
        v58._object = 0xE100000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v58);
        *(v40 + 32) = v69;
        Logger.warning(_:)(v40, v38, v39);

        __swift_destroy_boxed_opaque_existential_1(&v79);
        goto LABEL_58;
      }
    }
  }

  v18 = 0;
LABEL_46:
  if (v18 < *(v17 + 16))
  {
    if (qword_1EE13F2E0 != -1)
    {
      goto LABEL_64;
    }

    goto LABEL_48;
  }

  v52 = v62;
LABEL_58:
  v59 = v84;
  sub_1DB2875A0("asSQL", 5, 2, v52);

  return v59;
}

uint64_t ExpressionType.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1DB2B995C(34, 0xE100000000000000, a1, a2);
  v8 = v7;

  v9 = *(a4 + 48);
  v10 = MEMORY[0x1E69E7CC0];

  return v9(v6, v8, v10, a3, a4);
}

uint64_t ExpressionType.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(a5 + 32))(a3, a5);
  v12 = v11;
  v13 = (*(a5 + 40))(a3, a5);
  (*(a4 + 48))(v10, v12, v13, a2, a4);
  v14 = *(*(a3 - 8) + 8);

  return v14(a1, a3);
}

uint64_t static ExpressionType<>.null.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1DB2BB364();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  (*(*(AssociatedTypeWitness - 8) + 56))(&v14 - v11, 1, 1, AssociatedTypeWitness);
  return ExpressionType<>.init(value:)(v12, a1, a2, a4, x8_0);
}

uint64_t ExpressionType<>.init(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DB2BCC40;
  v9 = *(a4 + 56);
  swift_getAssociatedTypeWitness();
  *(v8 + 56) = swift_getAssociatedTypeWitness();
  *(v8 + 64) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0((v8 + 32));
  v10 = swift_checkMetadataState();
  v9(v10, a4);
  (*(a3 + 48))(63, 0xE100000000000000, v8, a2, a3);
  v11 = *(*(v10 - 8) + 8);

  return v11(a1, v10);
}

uint64_t Expression.template.getter()
{
  v0 = sub_1DB288124();

  return v0;
}

uint64_t Expression.template.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Expression.bindings.getter()
{
  sub_1DB243A08();
}

uint64_t Expression.bindings.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1DB2873F4()
{
  v0 = sub_1DB288124();

  return v0;
}

uint64_t sub_1DB28742C()
{
  sub_1DB243A08();
}

uint64_t sub_1DB287458@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return ExpressionType.expression.getter(a1, WitnessTable, a2);
}

uint64_t ExpressionType.expression.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = (*(a2 + 32))();
  v8 = v7;
  result = (*(a2 + 40))(a1, a2);
  *a3 = v6;
  a3[1] = v8;
  a3[2] = result;
  return result;
}

uint64_t sub_1DB287534(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ExpressionType.description.getter(a1, WitnessTable);
}

uint64_t sub_1DB2875A0(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = sub_1DB2BAA74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB2BAA34();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE13F6D8 != -1)
  {
    swift_once();
  }

  v13 = sub_1DB2BAA64();
  __swift_project_value_buffer(v13, qword_1EE14C880);
  v14 = sub_1DB2BAA44();
  sub_1DB2BAA84();
  v19 = sub_1DB2BB2E4();
  result = sub_1DB2BB314();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_1DB2BAAB4();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x1E69E93E8])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_1DB2BAA14();
      _os_signpost_emit_with_name_impl(&dword_1DB132000, v14, v19, v18, a1, v16, v17, 2u);
      MEMORY[0x1E1284BF0](v17, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DB28789C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  *(inited + 56) = a1;
  *(inited + 64) = *(a2 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v8, a1);
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 104) = sub_1DB219960();
  *(inited + 72) = a3;
  *(inited + 80) = a4;
  *(inited + 88) = MEMORY[0x1E69E7CC0];
  sub_1DB2B9A70(inited, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  return swift_arrayDestroy();
}

uint64_t ExpressionType<>.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a5;
  v23 = a6;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1DB2BB364();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DB2BCC40;
  (*(v11 + 16))(v13, a1, v10);
  v15 = *(AssociatedTypeWitness - 8);
  if ((*(v15 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v13, v10);
    *(v14 + 64) = 0;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0u;
  }

  else
  {
    v19 = a3;
    v20 = a2;
    v16 = v22;
    v18 = *(v22 + 56);
    v21 = a1;
    *(v14 + 56) = swift_getAssociatedTypeWitness();
    *(v14 + 64) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_0((v14 + 32));
    v18(AssociatedTypeWitness, v16);
    a3 = v19;
    a2 = v20;
    a1 = v21;
    (*(v15 + 8))(v13, AssociatedTypeWitness);
  }

  (*(a3 + 48))(63, 0xE100000000000000, v14, a2, a3);
  return (*(v11 + 8))(a1, v10);
}

uint64_t sub_1DB287CA0()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 0x4449574F52, 0xE500000000000000);
  qword_1EE13E878 = result;
  unk_1EE13E880 = v1;
  qword_1EE13E888 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t rowid.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE13E870 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_1EE13E880;
  v2 = qword_1EE13E888;
  *a1 = qword_1EE13E878;
  a1[1] = v1;
  a1[2] = v2;
}

uint64_t cast<A, B>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];

  MEMORY[0x1E1283490](v7, v8);
  MEMORY[0x1E1283490](542327072, 0xE400000000000000);
  v10 = (*(a3 + 40))(a2, a3);
  MEMORY[0x1E1283490](v10);

  result = MEMORY[0x1E1283490](41, 0xE100000000000000);
  *a4 = 0x282054534143;
  a4[1] = 0xE600000000000000;
  a4[2] = v9;
  return result;
}

{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];

  MEMORY[0x1E1283490](v7, v8);
  MEMORY[0x1E1283490](542327072, 0xE400000000000000);
  v10 = (*(a3 + 40))(a2, a3);
  MEMORY[0x1E1283490](v10);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  result = sub_1DB2BB364();
  *a4 = 0x282054534143;
  a4[1] = 0xE600000000000000;
  a4[2] = v9;
  return result;
}

uint64_t sub_1DB287F38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return ExpressionType.expression.getter(a1, WitnessTable, a2);
}

uint64_t sub_1DB287FA0@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (*(v1 + 106))
  {
    result = sub_1DB1F43B8();
    v4 = result;
    v3 = v7;
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  return result;
}

uint64_t sub_1DB288054@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_1DB288184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DB288234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB2882B0(char a1)
{
  result = 43;
  switch(a1)
  {
    case 1:
      result = 45;
      break;
    case 2:
      result = 21071;
      break;
    case 3:
      result = 4476481;
      break;
    case 4:
      result = 542396238;
      break;
    case 5:
      result = 42;
      break;
    case 6:
      result = 47;
      break;
    case 7:
      result = 37;
      break;
    case 8:
      result = 15420;
      break;
    case 9:
      result = 15934;
      break;
    case 10:
      result = 38;
      break;
    case 11:
      result = 124;
      break;
    case 12:
      result = 126;
      break;
    case 13:
      result = 61;
      break;
    case 14:
      result = 15649;
      break;
    case 15:
      result = 62;
      break;
    case 16:
      result = 60;
      break;
    case 17:
      result = 15678;
      break;
    case 18:
      result = 15676;
      break;
    case 19:
      result = 31868;
      break;
    case 20:
      result = 21321;
      break;
    case 21:
      result = 0x544F4E205349;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DB2883C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = a3;
  v11 = sub_1DB2882B0(a4);
  sub_1DB2BA060(a1, a2, v7, v11, v12, a5, a6);
}

uint64_t sub_1DB288444@<X0>(void *a1@<X0>, char a2@<W1>, void *x8_0@<X8>)
{
  v6 = sub_1DB2882B0(a2);
  sub_1DB2B9D5C(a1, v6, v7, x8_0);
}

uint64_t sub_1DB2884B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 16);
  if (v7)
  {
    v32 = MEMORY[0x1E69E7CC0];

    sub_1DB138470(0, v7, 0);
    v8 = v32;
    v9 = a1 + 64;
    result = sub_1DB2BB464();
    v11 = result;
    v12 = 0;
    v29 = v7;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_23;
      }

      v30 = v12;
      v31 = *(a1 + 36);
      sub_1DB143508();
      result = sub_1DB2BB3D4();
      v15 = result;
      v17 = v16;
      v19 = *(v8 + 16);
      v18 = *(v8 + 24);
      v20 = v8;
      if (v19 >= v18 >> 1)
      {
        result = sub_1DB138470((v18 > 1), v19 + 1, 1);
        v20 = v8;
      }

      *(v20 + 16) = v19 + 1;
      v21 = v20 + 16 * v19;
      *(v21 + 32) = v15;
      *(v21 + 40) = v17;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_24;
      }

      v9 = a1 + 64;
      v22 = *(a1 + 64 + 8 * v14);
      if ((v22 & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      v8 = v20;
      if (v31 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v23 = v22 & (-2 << (v11 & 0x3F));
      if (v23)
      {
        v13 = __clz(__rbit64(v23)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v14 << 6;
        v25 = v14 + 1;
        v26 = (a1 + 72 + 8 * v14);
        while (v25 < (v13 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1DB25CF78(v11, v31, 0);
            v13 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_1DB25CF78(v11, v31, 0);
      }

LABEL_4:
      v12 = v30 + 1;
      v11 = v13;
      if (v30 + 1 == v29)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

double Insert.clauses.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1DB1446A4(v1, v8, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v10)
  {
    v3 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v3;
    *(a1 + 128) = v9;
    v4 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v4;
    v5 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v5;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
  }

  else
  {
    sub_1DB1445E0(v8, &qword_1ECC27CC8, &unk_1DB2C3860);
    *&v6 = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0;
  }

  return *&v6;
}

__n128 sub_1DB288840@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  *(a2 + 136) = 1;
  return result;
}

OnDeviceStorageCore::QueryClauses::SelectClause __swiftcall QueryClauses.SelectClause.init(distinct:columns:)(Swift::Bool distinct, Swift::OpaquePointer columns)
{
  *v2 = distinct;
  *(v2 + 8) = columns;
  result.columns = columns;
  result.distinct = distinct;
  return result;
}

void __swiftcall QueryClauses.FromClause.init(name:alias:database:)(OnDeviceStorageCore::QueryClauses::FromClause *__return_ptr retstr, Swift::String name, Swift::String_optional alias, Swift::String_optional database)
{
  retstr->name = name;
  retstr->alias = alias;
  retstr->database = database;
}

uint64_t QueryClauses.JoinClause.init(type:query:condition:)@<X0>(_BYTE *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  v5 = a4 + 48;
  sub_1DB1355D0(a2, (a4 + 8));

  return sub_1DB1355D0(a3, v5);
}

__n128 QueryClauses.GroupClause.init(by:having:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1].n128_u64[0];
  *a3 = a1;
  result = *a2;
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  return result;
}

uint64_t Insert.template.getter()
{
  sub_1DB1446A4(v0, v5, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v7)
  {
    v3[6] = v5[6];
    v3[7] = v5[7];
    v4 = v6;
    v3[2] = v5[2];
    v3[3] = v5[3];
    v3[4] = v5[4];
    v3[5] = v5[5];
    v3[0] = v5[0];
    v3[1] = v5[1];
    v1 = sub_1DB1F4E58();
    sub_1DB1F7130(v3);
  }

  else
  {
    v1 = *&v5[0];
  }

  return v1;
}

uint64_t Insert.bindings.getter()
{
  sub_1DB1446A4(v0, v3, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v4)
  {
    sub_1DB1445E0(v3, &qword_1ECC27CC8, &unk_1DB2C3860);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v1 = v3[2];
  }

  return v1;
}

uint64_t Insert.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 136) = 0;
  return result;
}

uint64_t OnConflict.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x4543414C504552;
  v3 = 0x54524F4241;
  v4 = 1279869254;
  if (v1 != 3)
  {
    v4 = 0x45524F4E4749;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4B4341424C4C4F52;
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

uint64_t sub_1DB288AD0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v22 = a2;
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_1DB164AE0(v8, v20);
      v10 = v6(v20);
      if (v3)
      {
        sub_1DB164B3C(v20);

        goto LABEL_15;
      }

      if (v10)
      {
        v17 = v20[2];
        v18 = v20[3];
        v19 = v20[4];
        v15 = v20[0];
        v16 = v20[1];
        result = swift_isUniquelyReferenced_nonNull_native();
        v21 = v9;
        if ((result & 1) == 0)
        {
          result = sub_1DB138680(0, *(v9 + 16) + 1, 1);
          v9 = v21;
        }

        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v12 >= v11 >> 1)
        {
          result = sub_1DB138680((v11 > 1), v12 + 1, 1);
          v9 = v21;
        }

        *(v9 + 16) = v12 + 1;
        v13 = (v9 + 80 * v12);
        v13[2] = v15;
        v13[5] = v18;
        v13[6] = v19;
        v13[3] = v16;
        v13[4] = v17;
        v6 = v14;
      }

      else
      {
        result = sub_1DB164B3C(v20);
      }

      ++v7;
      v8 += 80;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t Update.clauses.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 106);
  if (v3)
  {
    v4 = v1[1];
    v24 = *v1;
    v25 = v4;
    v5 = v1[3];
    v26 = v1[2];
    v27 = v5;
    v6 = *(v1 + 90);
    v7 = v1[5];
    v28 = v1[4];
    *v29 = v7;
    *&v29[10] = v6;
    v30 = v3;
    v21 = v24;
    v22 = v25;
    v19 = v26;
    v20 = v27;
    v17 = v28;
    v18 = *v29;
    v8 = v6 >> 48;
    v9 = HIWORD(v6);
    result = sub_1DB201A00(&v24, v23);
    v12 = v17;
    v11 = v18;
    v14 = v19;
    v13 = v20;
    v15 = v21;
    v16 = v22;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
    v14 = 0uLL;
    v13 = 0uLL;
    v12 = 0uLL;
    v11 = 0uLL;
  }

  *a1 = v15;
  *(a1 + 16) = v16;
  *(a1 + 32) = v14;
  *(a1 + 48) = v13;
  *(a1 + 64) = v12;
  *(a1 + 80) = v11;
  *(a1 + 96) = v8;
  *(a1 + 104) = v9;
  return result;
}

uint64_t sub_1DB288D3C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  (*(a3 + 16))(v36, a2, a3);
  v7 = v36[2];
  v6 = v36[3];
  v9 = v36[4];
  v8 = v36[5];
  v11 = v36[6];
  v10 = v36[7];

  sub_1DB17181C(v36);
  if (v8)
  {
    if (a1)
    {
      v35 = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DB2BD590;
      v34 = sub_1DB2B995C(34, 0xE100000000000000, v7, v6);
      v14 = v13;
      v15 = MEMORY[0x1E69E7CC0];
      if (v10)
      {
        v16 = swift_initStackObject();
        *(v16 + 16) = xmmword_1DB2BD5A0;
        v33 = v14;
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
        *(v16 + 56) = v17;
        v15 = MEMORY[0x1E69E7CC0];
        v18 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
        *(v16 + 64) = v18;
        *(v16 + 32) = sub_1DB2B995C(34, 0xE100000000000000, v11, v10);
        *(v16 + 40) = v19;
        *(v16 + 48) = v15;
        *(v16 + 96) = v17;
        *(v16 + 104) = v18;
        *(v16 + 72) = v34;
        *(v16 + 80) = v33;
        *(v16 + 88) = v15;
        sub_1DB2B9A70(v16, (inited + 32));
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
        swift_arrayDestroy();
      }

      else
      {
        *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
        *(inited + 64) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
        *(inited + 32) = v34;
        *(inited + 40) = v14;
        *(inited + 48) = v15;
      }

      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
      *(inited + 96) = v30;
      v31 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
      *(inited + 104) = v31;
      *(inited + 72) = 21313;
      *(inited + 80) = 0xE200000000000000;
      *(inited + 88) = v15;
      *(inited + 136) = v30;
      *(inited + 144) = v31;
      *(inited + 112) = sub_1DB2B995C(34, 0xE100000000000000, v9, v8);
      *(inited + 120) = v32;
      *(inited + 128) = v15;
      sub_1DB2B9A70(inited, v35);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      swift_arrayDestroy();
    }

    v7 = v9;
    v20 = v8;
  }

  else
  {

    v20 = v6;
  }

  v21 = sub_1DB2B995C(34, 0xE100000000000000, v7, v20);
  v23 = v22;

  if (!v10)
  {
    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    a4[4] = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);

    *a4 = v21;
    a4[1] = v23;
    a4[2] = MEMORY[0x1E69E7CC0];
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1DB2BD5A0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v24 + 56) = v25;
  v26 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *(v24 + 64) = v26;
  *(v24 + 32) = sub_1DB2B995C(34, 0xE100000000000000, v11, v10);
  v27 = MEMORY[0x1E69E7CC0];
  *(v24 + 40) = v28;
  *(v24 + 48) = v27;
  *(v24 + 96) = v25;
  *(v24 + 104) = v26;
  *(v24 + 72) = v21;
  *(v24 + 80) = v23;
  *(v24 + 88) = v27;
  sub_1DB2B9A70(v24, a4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
}

uint64_t QueryType.filter(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1[1];
  v8 = a1[2];
  v10[0] = *a1;
  v10[1] = v7;
  v10[2] = v8;

  QueryType.filter(_:)(v10, a2, a3, a4);
}

{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  (*(a3 + 16))(v25, a2, a3);
  v10 = v26;
  v11 = v27;
  v12 = v28;
  sub_1DB1757B0(v26, v27, v28);
  sub_1DB17181C(v25);
  if (v11)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    v21[0] = v10;
    v21[1] = v11;
    v23 = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
    v21[2] = v12;
    v20[3] = v22;
    v20[4] = v23;
    v20[0] = v8;
    v20[1] = v7;
    v20[2] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    sub_1DB164980(v21, inited + 32);
    sub_1DB164980(v20, inited + 72);
    sub_1DB1757B0(v10, v11, v12);

    sub_1DB2B594C(inited, 1, 4476481, 0xE300000000000000, v24);
    sub_1DB1718E4(v10, v11, v12);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v8 = v24[0];
    v7 = v24[1];
    v9 = v24[2];
  }

  else
  {
  }

  v14 = (*(a3 + 32))(v21, a2, a3);
  v16 = v15[9];
  v17 = v15[10];
  v18 = v15[11];
  v15[9] = v8;
  v15[10] = v7;
  v15[11] = v9;
  sub_1DB1718E4(v16, v17, v18);
  return v14(v21, 0);
}

void Connection.prepareRowIterator(_:bindings:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1DB2972D4(a1, a2, a3, a4);
}

{
  Connection.prepareRowIterator(_:bindings:)(a1, a2, a3, a4);
}

uint64_t Row.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *v4;
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = v5;
  return Row.get<A>(_:)(&v7, a2, a3, a4);
}

void *Row.subscript.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v5 = *v4;
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = v5;
  return Row.get<A>(_:)(&v7, a3, a4, a2);
}

void RowIterator.map<A>(_:)(void (*a1)(uint64_t *), uint64_t a2)
{
  v5 = v3;
  v51 = a1;
  v52 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v7 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v8 = v2[1];
  v50[1] = v10;
  v68 = sub_1DB2BACA4();
  v11 = sub_1DB143044();
  v55 = v8;
  v56 = v11;
  v58 = 0x80000001DB2D1D60;
  v53 = v9;
  v54 = v7;
  while (1)
  {
    v12 = *(v9 + 24);
    if (qword_1EE13F098 != -1)
    {
      swift_once();
    }

    sub_1DB2BB294();
    if ((v67 & 1) != 0 || v66 != v12)
    {
      sub_1DB2BB2C4(&v64);
      if (v5)
      {
        goto LABEL_60;
      }

      if (v64 != 1)
      {
        return;
      }
    }

    else
    {
      v13 = *(v9 + 16);
      os_unfair_lock_lock((v13 + 24));
      sub_1DB14A424((v13 + 16), &v66);
      os_unfair_lock_unlock((v13 + 24));
      if (v5)
      {
        goto LABEL_60;
      }

      if ((v66 & 1) == 0)
      {
        return;
      }
    }

    v57 = 0;
    Statement.row.getter(&v66);
    v15 = v66;
    v14 = v67;
    swift_retain_n();
    v60 = v15;
    v61 = v14;
    if (v14 >= 1)
    {
      break;
    }

    v17 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    v20 = v4;
LABEL_52:

    v45 = v18[3];
    v46 = v55;
    v9 = v53;
    if (v45 >= 2)
    {
      v47 = v45 >> 1;
      v44 = __OFSUB__(v47, v17);
      v48 = v47 - v17;
      if (v44)
      {
        goto LABEL_64;
      }

      v18[2] = v48;
    }

    v4 = v20;

    v66 = v46;
    v67 = v18;

    v49 = v57;
    v51(&v66);
    v5 = v49;
    if (v49)
    {

LABEL_60:

      return;
    }

    sub_1DB2BB154();
    sub_1DB2BB134();
  }

  v16 = 0;
  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v19 = (MEMORY[0x1E69E7CC0] + 32);
  v20 = v4;
  while (1)
  {
    os_unfair_lock_lock((v15 + 24));
    if (v16 == 0x80000000)
    {
      break;
    }

    v21 = sqlite3_column_type(*(v15 + 16), v16);
    os_unfair_lock_unlock((v15 + 24));
    if (v21 > 2)
    {
      if (v21 == 3)
      {
        os_unfair_lock_lock((v15 + 24));
        if (!sqlite3_column_text(*(v15 + 16), v16))
        {
          goto LABEL_65;
        }

        v27 = COERCE_DOUBLE(sub_1DB2BAF14());
        v20 = v33;
        os_unfair_lock_unlock((v15 + 24));
        v30 = MEMORY[0x1E69E6158];
        v31 = &protocol witness table for String;
        v32 = v18;
        if (v17)
        {
          goto LABEL_48;
        }

        goto LABEL_38;
      }

      if (v21 != 5)
      {
        if (v21 == 4)
        {
          v62 = sub_1DB138CA8();
          os_unfair_lock_lock((v15 + 24));
          v22 = *(v15 + 16);
          v23 = sqlite3_column_blob(v22, v16);
          if (v23 && (v24 = v23, (v25 = sqlite3_column_bytes(v22, v16)) != 0))
          {
            v26 = v25;
            if (v25 <= 0)
            {
              v27 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
              v27 = COERCE_DOUBLE(swift_allocObject());
              v28 = _swift_stdlib_malloc_size(*&v27);
              *(*&v27 + 16) = v26;
              *(*&v27 + 24) = 2 * v28 - 64;
            }

            memcpy((*&v27 + 32), v24, v26);
          }

          else
          {
            v27 = MEMORY[0x1E69E7CC0];
          }

          v15 = v60;
          os_unfair_lock_unlock(v60 + 6);
          v30 = &type metadata for Blob;
          v31 = v62;
          v32 = v18;
          if (v17)
          {
            goto LABEL_48;
          }

          goto LABEL_38;
        }

LABEL_31:
        v64 = 0;
        v65 = 0xE000000000000000;
        sub_1DB2BB4F4();

        v64 = 0xD000000000000019;
        v65 = v58;
        v63 = v21;
        v34 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v34);
        v15 = v60;

        sub_1DB15B09C(v64, v65);
      }

      v27 = 0.0;
      v20 = 0;
      v30 = 0;
      v31 = 0;
      v32 = v18;
      if (v17)
      {
        goto LABEL_48;
      }

      goto LABEL_38;
    }

    if (v21 == 1)
    {
      os_unfair_lock_lock((v15 + 24));
      v27 = COERCE_DOUBLE(sqlite3_column_int64(*(v15 + 16), v16));
      os_unfair_lock_unlock((v15 + 24));
      v30 = MEMORY[0x1E69E7360];
      v31 = &protocol witness table for Int64;
      v32 = v18;
      if (v17)
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v21 != 2)
      {
        goto LABEL_31;
      }

      os_unfair_lock_lock((v15 + 24));
      v29 = sqlite3_column_double(*(v15 + 16), v16);
      os_unfair_lock_unlock((v15 + 24));
      v27 = v29;
      v30 = MEMORY[0x1E69E63B0];
      v31 = &protocol witness table for Double;
      v32 = v18;
      if (v17)
      {
        goto LABEL_48;
      }
    }

LABEL_38:
    v35 = v32[3];
    if (((v35 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_63;
    }

    v62 = v31;
    v59 = v20;
    v36 = v35 & 0xFFFFFFFFFFFFFFFELL;
    if (v36 <= 1)
    {
      v37 = 1;
    }

    else
    {
      v37 = v36;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v32 = swift_allocObject();
    v38 = _swift_stdlib_malloc_size(v32) - 32;
    v39 = v18;
    v40 = v38 / 40;
    v32[2] = v37;
    v32[3] = 2 * (v38 / 40);
    v41 = (v32 + 4);
    v42 = v18[3] >> 1;
    if (v18[2])
    {
      v43 = v18 + 4;
      if (v32 != v18 || v41 >= v43 + 40 * v42)
      {
        memmove(v32 + 4, v43, 40 * v42);
        v39 = v18;
      }

      v39[2] = 0;
    }

    v19 = (v41 + 40 * v42);
    v17 = (v40 & 0x7FFFFFFFFFFFFFFFLL) - v42;

    v20 = v59;
    v15 = v60;
    v31 = v62;
LABEL_48:
    v44 = __OFSUB__(v17--, 1);
    if (v44)
    {
      goto LABEL_62;
    }

    v18 = v32;
    ++v16;
    *v19 = v27;
    *(v19 + 1) = v20;
    v19[2] = 0.0;
    *(v19 + 3) = v30;
    *(v19 + 4) = v31;
    v19 += 5;
    if (v61 == v16)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
}

uint64_t QueryType.where(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];

  v11[0] = v8;
  v11[1] = v7;
  v11[2] = v9;
  QueryType.filter(_:)(v11, a2, a3, a4);
}

uint64_t Connection.prepare(_:)(void *a1)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(*(v3 + 8) + 24))(v13, v4);
  v5 = v13[0];
  v6 = v13[1];
  v7 = v13[2];
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v8, v5, v6);
  if (v1)
  {
  }

  else
  {
    v10 = sub_1DB255E8C(v7);

    v11 = sub_1DB29611C(a1);
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29260, &unk_1DB2CEF10);
    result = swift_allocObject();
    *(result + 16) = sub_1DB2A03AC;
    *(result + 24) = v12;
  }

  return result;
}

void RowIterator.compactMap<A>(_:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v71 = a1;
  v72 = a2;
  v65 = sub_1DB2BB364();
  v7 = *(v65 - 8);
  v8 = MEMORY[0x1EEE9AC00](v65);
  v10 = &v59 - v9;
  v11 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v64 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v59 - v14;
  v15 = *v3;
  v69 = v3[1];
  v85 = sub_1DB2BACA4();
  v73 = sub_1DB143044();
  v75 = 0x80000001DB2D1D60;
  v66 = (v11 + 6);
  v62 = (v11 + 4);
  v61 = (v11 + 2);
  v60 = (v11 + 1);
  v59 = (v7 + 8);
  v16 = v15;
  v67 = v15;
  v68 = a3;
  v70 = v10;
  while (1)
  {
    v17 = *(v16 + 24);
    if (qword_1EE13F098 != -1)
    {
      swift_once();
    }

    sub_1DB2BB294();
    if ((v84 & 1) != 0 || v83 != v17)
    {
      sub_1DB2BB2C4(&v81);
      if (v5)
      {
        goto LABEL_65;
      }

      if (v81 != 1)
      {
        return;
      }
    }

    else
    {
      v18 = *(v16 + 16);
      os_unfair_lock_lock((v18 + 24));
      sub_1DB256240((v18 + 16), &v83);
      os_unfair_lock_unlock((v18 + 24));
      if (v5)
      {
        goto LABEL_65;
      }

      if ((v83 & 1) == 0)
      {
        return;
      }
    }

    v74 = 0;
    Statement.row.getter(&v83);
    v20 = v83;
    v19 = v84;
    swift_retain_n();
    v78 = v19;
    if (v19 >= 1)
    {
      break;
    }

    v22 = 0;
    v23 = MEMORY[0x1E69E7CC0];
    v25 = v11;
LABEL_56:

    v52 = v23[3];
    if (v52 >= 2)
    {
      v53 = v52 >> 1;
      v51 = __OFSUB__(v53, v22);
      v54 = v53 - v22;
      if (v51)
      {
        goto LABEL_69;
      }

      v23[2] = v54;
    }

    v11 = v25;

    v83 = v69;
    v84 = v23;

    v55 = v70;
    v56 = v74;
    v71(&v83);
    v5 = v56;
    if (v56)
    {

LABEL_65:

      return;
    }

    v57 = v68;
    if ((*v66)(v55, 1, v68) == 1)
    {
      (*v59)(v55, v65);
    }

    else
    {
      v58 = v63;
      (*v62)(v63, v55, v57);
      (*v61)(v64, v58, v57);
      sub_1DB2BB154();
      sub_1DB2BB134();
      (*v60)(v58, v57);
    }

    v16 = v67;
  }

  v21 = 0;
  v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  v24 = (MEMORY[0x1E69E7CC0] + 32);
  v25 = v11;
  while (1)
  {
    os_unfair_lock_lock((v20 + 24));
    if (v21 == 0x80000000)
    {
      break;
    }

    v26 = sqlite3_column_type(*(v20 + 16), v21);
    os_unfair_lock_unlock((v20 + 24));
    if (v26 > 2)
    {
      if (v26 == 3)
      {
        os_unfair_lock_lock((v20 + 24));
        if (!sqlite3_column_text(*(v20 + 16), v21))
        {
          goto LABEL_70;
        }

        *&v38 = COERCE_DOUBLE(sub_1DB2BAF14());
        v25 = v39;
        os_unfair_lock_unlock((v20 + 24));
        v35 = *&v38;
        v36 = MEMORY[0x1E69E6158];
        v37 = &protocol witness table for String;
        if (v22)
        {
          goto LABEL_52;
        }

        goto LABEL_42;
      }

      if (v26 != 5)
      {
        if (v26 == 4)
        {
          v77 = v23;
          v79 = sub_1DB138CA8();
          os_unfair_lock_lock((v20 + 24));
          v27 = *(v20 + 16);
          v28 = sqlite3_column_blob(v27, v21);
          if (v28)
          {
            v29 = v28;
            v30 = sqlite3_column_bytes(v27, v21);
            if (v30)
            {
              v31 = v30;
              if (v30 <= 0)
              {
                v32 = MEMORY[0x1E69E7CC0];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
                v32 = swift_allocObject();
                v33 = _swift_stdlib_malloc_size(v32);
                v32[2] = v31;
                v32[3] = 2 * v33 - 64;
              }

              v42 = *&v32;
              memcpy(v32 + 4, v29, v31);
            }

            else
            {
              v42 = MEMORY[0x1E69E7CC0];
            }

            v37 = v79;
            v23 = v77;
          }

          else
          {
            v42 = MEMORY[0x1E69E7CC0];
            v23 = v77;
            v37 = v79;
          }

          os_unfair_lock_unlock((v20 + 24));
          v36 = &type metadata for Blob;
          v35 = v42;
          if (v22)
          {
            goto LABEL_52;
          }

          goto LABEL_42;
        }

LABEL_33:
        v81 = 0;
        v82 = 0xE000000000000000;
        sub_1DB2BB4F4();

        v81 = 0xD000000000000019;
        v82 = v75;
        v80 = v26;
        v41 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v41);

        sub_1DB15B09C(v81, v82);
      }

      v35 = 0.0;
      v25 = 0;
      v36 = 0;
      v37 = 0;
      if (v22)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    }

    if (v26 == 1)
    {
      os_unfair_lock_lock((v20 + 24));
      *&v40 = COERCE_DOUBLE(sqlite3_column_int64(*(v20 + 16), v21));
      os_unfair_lock_unlock((v20 + 24));
      v35 = *&v40;
      v36 = MEMORY[0x1E69E7360];
      v37 = &protocol witness table for Int64;
      if (v22)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v26 != 2)
      {
        goto LABEL_33;
      }

      os_unfair_lock_lock((v20 + 24));
      v34 = sqlite3_column_double(*(v20 + 16), v21);
      os_unfair_lock_unlock((v20 + 24));
      v35 = v34;
      v36 = MEMORY[0x1E69E63B0];
      v37 = &protocol witness table for Double;
      if (v22)
      {
        goto LABEL_52;
      }
    }

LABEL_42:
    v43 = v23[3];
    if (((v43 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_68;
    }

    v76 = v35;
    v77 = v25;
    v79 = v37;
    v44 = v43 & 0xFFFFFFFFFFFFFFFELL;
    if (v44 <= 1)
    {
      v45 = 1;
    }

    else
    {
      v45 = v44;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v46 = swift_allocObject();
    v47 = (_swift_stdlib_malloc_size(v46) - 32) / 40;
    v46[2] = v45;
    v46[3] = 2 * v47;
    v48 = (v46 + 4);
    v49 = v23[3] >> 1;
    if (v23[2])
    {
      v50 = v23 + 4;
      if (v46 != v23 || v48 >= v50 + 40 * v49)
      {
        memmove(v46 + 4, v50, 40 * v49);
      }

      v23[2] = 0;
    }

    v24 = (v48 + 40 * v49);
    v22 = (v47 & 0x7FFFFFFFFFFFFFFFLL) - v49;

    v23 = v46;
    v35 = v76;
    v25 = v77;
    v37 = v79;
LABEL_52:
    v51 = __OFSUB__(v22--, 1);
    if (v51)
    {
      goto LABEL_67;
    }

    ++v21;
    *v24 = v35;
    *(v24 + 1) = v25;
    v24[2] = 0.0;
    *(v24 + 3) = v36;
    *(v24 + 4) = v37;
    v24 += 5;
    if (v78 == v21)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

double QueryType.insert(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA8, &unk_1DB2BCF10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DB2BCC40;
  *(v8 + 32) = a1;
  v9 = *(a3 + 16);

  v9(v20, a2, a3);
  v10 = v20[3];
  v11 = v20[5];
  v18 = v20[4];
  v19 = v20[2];
  v12 = v20[7];
  v17 = v20[6];

  sub_1DB17181C(v20);
  v9(v21, a2, a3);
  v13 = v22;
  v14 = v23;
  v15 = v24;
  sub_1DB1757B0(v22, v23, v24);
  sub_1DB17181C(v21);
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0;
  *(a4 + 96) = 0u;
  *a4 = v19;
  *(a4 + 8) = v10;
  *(a4 + 16) = v18;
  *(a4 + 24) = v11;
  *(a4 + 32) = v17;
  *(a4 + 40) = v12;
  *(a4 + 48) = 5;
  *(a4 + 56) = 0;
  *(a4 + 64) = v8;
  *(a4 + 72) = v13;
  *(a4 + 80) = v14;
  *(a4 + 88) = v15;
  sub_1DB1445E0(a4 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0;
  *(a4 + 136) = 1;
  return result;
}

double QueryType.upsert(_:onConflictOf:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a2;
  v46 = a2;

  v8 = sub_1DB288AD0(sub_1DB208758, v45, a1);
  v9 = *(v8 + 16);
  if (v9)
  {
    v37 = v6;
    v38 = a1;
    v40 = a4;
    v55 = MEMORY[0x1E69E7CC0];
    sub_1DB138680(0, v9, 0);
    v10 = v55;
    v11 = v8 + 32;
    do
    {
      sub_1DB164AE0(v11, v47);
      sub_1DB164980(v47, v52);
      v12 = sub_1DB2B995C(34, 0xE100000000000000, 0x646564756C637865, 0xE800000000000000);
      v14 = v13;
      sub_1DB164980(v52, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1DB2BD5A0;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
      *(v15 + 56) = v16;
      v17 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
      *(v15 + 64) = v17;
      *(v15 + 32) = v12;
      *(v15 + 40) = v14;
      *(v15 + 48) = MEMORY[0x1E69E7CC0];
      v19 = v53;
      v18 = v54;
      __swift_project_boxed_opaque_existential_1(v52, v53);
      v20 = *(v18 + 24);
      *(v15 + 96) = v16;
      *(v15 + 104) = v17;
      v20(v19, v18);
      sub_1DB2B9A70(v15, &v48[2] + 1);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1DB164B3C(v47);
      __swift_destroy_boxed_opaque_existential_1(v52);
      v55 = v10;
      v22 = *(v10 + 16);
      v21 = *(v10 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1DB138680((v21 > 1), v22 + 1, 1);
        v10 = v55;
      }

      *(v10 + 16) = v22 + 1;
      v23 = (v10 + 80 * v22);
      v23[2] = v48[0];
      v24 = v48[1];
      v25 = v48[2];
      v26 = v49;
      v23[5] = v48[3];
      v23[6] = v26;
      v23[3] = v24;
      v23[4] = v25;
      v11 += 80;
      --v9;
    }

    while (v9);

    a1 = v38;
    a4 = v40;
    v6 = v37;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA8, &unk_1DB2BCF10);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1DB2BCC40;
  *(v27 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1DB2BCC40;
  sub_1DB164980(v6, v28 + 32);
  *(v28 + 72) = v10;
  *(v28 + 80) = 0;
  *(v28 + 88) = 0;
  *(v28 + 96) = 0;
  v29 = *(a4 + 16);

  v29(v47, a3, a4);
  v30 = v47[3];
  v44 = v47[2];
  v31 = v47[5];
  v32 = v47[7];
  v39 = v47[6];
  v41 = v47[4];

  sub_1DB17181C(v47);
  v29(v48, a3, a4);
  v33 = *(&v49 + 1);
  v34 = v50;
  v35 = v51;
  sub_1DB1757B0(*(&v49 + 1), v50, v51);
  sub_1DB17181C(v48);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 96) = 0u;
  *a5 = v44;
  *(a5 + 8) = v30;
  *(a5 + 16) = v41;
  *(a5 + 24) = v31;
  *(a5 + 32) = v39;
  *(a5 + 40) = v32;
  *(a5 + 48) = 5;
  *(a5 + 56) = v28;
  *(a5 + 64) = v27;
  *(a5 + 72) = v33;
  *(a5 + 80) = v34;
  *(a5 + 88) = v35;
  sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA8, &unk_1DB2BCF10);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1DB2BCC40;
  *(v22 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
  v10 = swift_allocObject();
  v10[1] = xmmword_1DB2BCC40;
  sub_1DB164980(a2, (v10 + 2));
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  v11 = *(a4 + 16);

  v11(v23, a3, a4);
  v12 = v23[3];
  v13 = v23[5];
  v20 = v23[4];
  v21 = v23[2];
  v14 = v23[7];
  v19 = v23[6];

  sub_1DB17181C(v23);
  v11(v24, a3, a4);
  v15 = v25;
  v16 = v26;
  v17 = v27;
  sub_1DB1757B0(v25, v26, v27);
  sub_1DB17181C(v24);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 96) = 0u;
  *a5 = v21;
  *(a5 + 8) = v12;
  *(a5 + 16) = v20;
  *(a5 + 24) = v13;
  *(a5 + 32) = v19;
  *(a5 + 40) = v14;
  *(a5 + 48) = 5;
  *(a5 + 56) = v10;
  *(a5 + 64) = v22;
  *(a5 + 72) = v15;
  *(a5 + 80) = v16;
  *(a5 + 88) = v17;
  sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  return result;
}

double QueryType.upsert(_:onConflict:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA8, &unk_1DB2BCF10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB2BCC40;
  *(v9 + 32) = a1;
  v10 = *(a4 + 16);

  v10(v22, a3, a4);
  v11 = v22[3];
  v12 = v22[5];
  v19 = v22[4];
  v20 = v22[2];
  v13 = v22[7];
  v18 = v22[6];

  sub_1DB17181C(v22);
  v10(v23, a3, a4);
  v14 = v24;
  v15 = v25;
  v16 = v26;
  sub_1DB1757B0(v24, v25, v26);
  sub_1DB17181C(v23);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 96) = 0u;
  *a5 = v20;
  *(a5 + 8) = v11;
  *(a5 + 16) = v19;
  *(a5 + 24) = v12;
  *(a5 + 32) = v18;
  *(a5 + 40) = v13;
  *(a5 + 48) = 5;
  *(a5 + 56) = a2;
  *(a5 + 64) = v9;
  *(a5 + 72) = v14;
  *(a5 + 80) = v15;
  *(a5 + 88) = v16;

  sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  return result;
}

uint64_t QueryType.update(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);
  v7(v22, a2, a3);
  v19 = v22[4];
  v20 = v22[2];
  v15 = v22[5];
  v16 = v22[3];
  v17 = v22[7];
  v18 = v22[6];

  sub_1DB17181C(v22);
  v7(v23, a2, a3);
  v8 = v24;
  v9 = v25;
  v10 = v26;
  sub_1DB1757B0(v24, v25, v26);
  sub_1DB17181C(v23);
  v7(v27, a2, a3);
  v11 = v27[16];

  sub_1DB17181C(v27);
  v7(v28, a2, a3);
  sub_1DB17181C(v28);
  v12 = v30;
  v13 = v31;
  v32 = 1;
  *a4 = v20;
  *(a4 + 8) = v16;
  *(a4 + 16) = v19;
  *(a4 + 24) = v15;
  *(a4 + 32) = v18;
  *(a4 + 40) = v17;
  *(a4 + 48) = a1;
  *(a4 + 56) = v8;
  *(a4 + 64) = v9;
  *(a4 + 72) = v10;
  *(a4 + 80) = v11;
  *(a4 + 88) = v29;
  *(a4 + 104) = v12;
  *(a4 + 105) = v13;
  *(a4 + 106) = 1;
}

uint64_t QueryType.namespace<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = type metadata accessor for Expression(0, a3, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB292510(0, a2, a4, inited + 32);
  *(inited + 96) = v9;
  *(inited + 104) = swift_getWitnessTable();
  *(inited + 72) = v7;
  *(inited + 80) = v6;
  *(inited + 88) = v8;

  sub_1DB2B9A70(inited, v21);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  v11 = v22;
  v12 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v12 + 24))(&v19, v11, v12);
  v17 = v19;
  v18 = v20;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1DB1688F0(&qword_1EE13EF48, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  ExpressionType.init<A>(_:)(&v17, v9, v13, WitnessTable, v15);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1DB28B23C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = v3[1];
  v6 = sub_1DB2B995C(34, 0xE100000000000000, a1, a2);
  if (!*(v4 + 16))
  {

    return 0;
  }

  v8 = sub_1DB141B30(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v12 = *(*(v4 + 56) + 8 * v8);
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v12 < *(v5 + 16))
  {
    sub_1DB1446A4(v5 + 40 * v12 + 32, v14, &qword_1ECC26E28, &unk_1DB2C2D70);
    v13 = v15 != 0;
    sub_1DB1445E0(v14, &qword_1ECC26E28, &unk_1DB2C2D70);
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t Row.get<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v30 = a3;
  v7 = sub_1DB2BB364();
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v37 = *v4;
  v15 = type metadata accessor for Expression(0, v7, v13, v14);
  v31 = v11;
  v32 = v10;
  v33 = v12;
  v18 = type metadata accessor for Expression(0, a2, v16, v17);

  WitnessTable = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  ExpressionType.init<A>(_:)(&v31, v15, v18, WitnessTable, v20);
  v31 = v34;
  v32 = v35;
  v33 = v36;
  v21 = v38;
  Row.get<A>(_:)(&v31, a2, v30, v9);

  if (!v21)
  {
    v24 = v28;
    v23 = v29;
    v25 = *(a2 - 8);
    if ((*(v25 + 48))(v9, 1, a2) == 1)
    {
      (*(v24 + 8))(v9, v7);
      sub_1DB1F88FC();
      swift_allocError();
      *v26 = v11;
      *(v26 + 8) = v10;
      *(v26 + 16) = 0;
      *(v26 + 24) = 3;
      swift_willThrow();
    }

    else
    {
      return (*(v25 + 32))(v23, v9, a2);
    }
  }

  return result;
}

{
  v6 = v5;
  v11 = *a1;
  v10 = a1[1];
  v82 = a1[2];
  v12 = *v4;
  v13 = v4[1];
  v14 = *(*v4 + 16);
  swift_bridgeObjectRetain_n();

  if (v14)
  {
    v15 = sub_1DB141B30(v11, v10);
    if (v16)
    {
      v17 = v15;

      swift_bridgeObjectRelease_n();
      return sub_1DB299CB4(*(*(v12 + 56) + 8 * v17), v13, a2, a3, a4);
    }
  }

  v80 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v65 = a2;
  v66 = a3;
  v67 = v11;
  v68 = v10;
  v69 = v82;
  v19 = sub_1DB29A0E0(sub_1DB2A2FD4, &v64, v12);
  if (v21 == 0xFF)
  {

    v57 = *(v12 + 16);
    if (v57)
    {
      v81 = v5;
      v58 = sub_1DB1383EC(v57, 0);
      v82 = sub_1DB14A440();
      v5 = v83[0];

      sub_1DB149FCC(v5);
      if (v82 != v57)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v6 = v81;
    }

    else
    {
      v58 = MEMORY[0x1E69E7CC0];
    }

    v83[0] = v58;
    v5 = v6;
    sub_1DB148C3C(v83);
    if (!v6)
    {
      v62 = v83[0];
      sub_1DB1F88FC();
      swift_allocError();
      *v63 = v11;
      *(v63 + 8) = v10;
      *(v63 + 16) = v62;
      *(v63 + 24) = 1;
      return swift_willThrow();
    }

    goto LABEL_40;
  }

  v22 = v21;
  v79 = a4;
  v23 = v19;
  v24 = v20;

  v76 = v23;
  v77 = v24;
  v25 = sub_1DB29FCC4(v23, v24, v22 & 1, v12);
  if (v27)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    MEMORY[0x1E1284A10](v5);

    __break(1u);
    return result;
  }

  v28 = *(v12 + 36);
  if (v28 != v26)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v29 = 1 << *(v12 + 32);
  if (v29 < v25)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v75 = v22;
  v93[0] = v25;
  v93[1] = v26;
  v94 = 0;
  v95 = v29;
  v96 = v28;
  v97 = 0;
  sub_1DB29FBE0(v93, v12, &v84);

  MEMORY[0x1EEE9AC00](v30);
  v65 = a2;
  v66 = a3;
  v67 = v11;
  v68 = v10;
  v69 = v82;
  v74 = sub_1DB29A320(sub_1DB2A03B4);
  v73 = v31;
  v81 = v5;
  v32 = a2;
  v72 = v33;
  v34 = ~v33;
  v91 = v84;
  v92 = v85;
  sub_1DB1445E0(&v91, &qword_1ECC29120, &qword_1DB2CE768);
  v89 = v86;
  v90 = v87;
  sub_1DB1445E0(&v89, &qword_1ECC29120, &qword_1DB2CE768);
  v98 = v88;
  sub_1DB1445E0(&v98, &qword_1ECC29128, &unk_1DB2CE770);
  if (v34)
  {
    v78 = v32;
    v79 = a3;
    v80 = v11;
    v35 = 1 << *(v12 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v12 + 64);
    v38 = (v35 + 63) >> 6;

    v39 = 0;
    v40 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v41 = v81;
    v42 = v39;
    if (!v37)
    {
      goto LABEL_14;
    }

    do
    {
      v39 = v42;
LABEL_17:
      v43 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v44 = (*(v12 + 48) + ((v39 << 10) | (16 * v43)));
      v46 = *v44;
      v45 = v44[1];

      if (sub_1DB29A06C(v46, v45, v80, v10))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83[0] = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DB138470(0, *(v40 + 16) + 1, 1);
          v40 = v83[0];
        }

        v49 = *(v40 + 16);
        v48 = *(v40 + 24);
        v50 = v49 + 1;
        if (v49 >= v48 >> 1)
        {
          v71 = v49 + 1;
          v70 = v49;
          sub_1DB138470((v48 > 1), v49 + 1, 1);
          v50 = v71;
          v49 = v70;
          v40 = v83[0];
        }

        *(v40 + 16) = v50;
        v51 = v40 + 16 * v49;
        *(v51 + 32) = v46;
        *(v51 + 40) = v45;
        goto LABEL_12;
      }

      v42 = v39;
      v41 = v81;
    }

    while (v37);
    while (1)
    {
LABEL_14:
      v39 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v39 >= v38)
      {
        break;
      }

      v37 = *(v12 + 64 + 8 * v39);
      ++v42;
      if (v37)
      {
        goto LABEL_17;
      }
    }

    v83[0] = v40;

    v5 = v41;
    sub_1DB148C3C(v83);
    if (v41)
    {
      goto LABEL_40;
    }

    v52 = v83[0];
    sub_1DB1F88FC();
    swift_allocError();
    *v53 = v80;
    *(v53 + 8) = v10;
    *(v53 + 16) = v52;
    *(v53 + 24) = 2;
    swift_willThrow();
    sub_1DB27C004(v74, v73, v72);
    v54 = v76;
    v55 = v77;
    v56 = v75;
  }

  else
  {

    v59 = v75;
    v60 = v76;
    v61 = v77;
    sub_1DB29A590(v83, v76, v77, v75 & 1, v12);

    sub_1DB299CB4(v83[0], v80, v32, a3, v79);
    v54 = v60;
    v55 = v61;
    v56 = v59;
  }

  return sub_1DB27C004(v54, v55, v56);
}

uint64_t sub_1DB28BCB8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_1DB1446A4(v1, &v11, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v20)
  {
    v9[6] = v17;
    v9[7] = v18;
    v10 = v19;
    v9[2] = v13;
    v9[3] = v14;
    v9[4] = v15;
    v9[5] = v16;
    v9[0] = v11;
    v9[1] = v12;
    v4 = sub_1DB1F4E58();
    v6 = v5;
    sub_1DB1F7130(v9);
  }

  else
  {
    v6 = *(&v11 + 1);
    v4 = v11;
  }

  sub_1DB1446A4(v2, &v11, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v20)
  {
    result = sub_1DB1445E0(&v11, &qword_1ECC27CC8, &unk_1DB2C3860);
    v8 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v8 = v12;
  }

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  return result;
}

uint64_t sub_1DB28BDC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*(a1 - 8) + 16);
  v110 = a3;
  v6();
  v7 = *(a2 + 16);
  v111 = a1;
  v112 = a2;
  v7(&v136, a1, a2);
  v135[0] = *(&v136 + 1);
  *(v135 + 3) = HIDWORD(v136);
  v8 = v137;
  v133 = v144;
  v134 = v145;
  v96 = v147;
  v97 = v146;
  v94 = v149;
  v95 = v148;
  v102 = v150;
  v132 = v152;
  v131 = v151;
  *(v130 + 3) = *&v155[3];
  v130[0] = *v155;
  v108 = v156;
  v109 = v136;
  v9 = *(v137 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v106 = v141;
    v107 = v142;
    sub_1DB1754EC(&v136, &v116);
    v129 = v10;
    sub_1DB1384B0(0, v9, 0);
    v11 = v129;
    v12 = v8 + 32;
    do
    {
      sub_1DB164980(v12, v113);
      sub_1DB1732D4(v113, &v116);
      __swift_destroy_boxed_opaque_existential_1(v113);
      v129 = v11;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1DB1384B0((v13 > 1), v14 + 1, 1);
      }

      v15 = *(&v117 + 1);
      v16 = v118;
      v17 = __swift_mutable_project_boxed_opaque_existential_1(&v116, *(&v117 + 1));
      MEMORY[0x1EEE9AC00](v17);
      v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v19);
      sub_1DB16412C(v14, v19, &v129, v15, v16);
      __swift_destroy_boxed_opaque_existential_1(&v116);
      v11 = v129;
      v12 += 40;
      --v9;
    }

    while (v9);
  }

  else
  {
    sub_1DB1754EC(&v136, &v116);
    v11 = MEMORY[0x1E69E7CC0];
  }

  v21 = v143;

  v22 = v139;
  v104 = v140;
  v105 = v138;
  v106 = v141;

  v107 = v22;

  v23 = *(v21 + 16);
  if (v23)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v129 = MEMORY[0x1E69E7CC0];
    sub_1DB138660(0, v23, 0);
    v25 = v129;
    v26 = v21 + 32;
    do
    {
      sub_1DB175548(v26, v113);
      sub_1DB173060(v113, &v116);
      sub_1DB1755A4(v113);
      v129 = v25;
      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1DB138660((v27 > 1), v28 + 1, 1);
        v25 = v129;
      }

      *(v25 + 16) = v28 + 1;
      v29 = v25 + 88 * v28;
      v30 = v117;
      *(v29 + 32) = v116;
      *(v29 + 48) = v30;
      v31 = v118;
      v32 = v119;
      v33 = v120[0];
      *(v29 + 112) = *&v120[1];
      *(v29 + 80) = v32;
      *(v29 + 96) = v33;
      *(v29 + 64) = v31;
      v26 += 88;
      --v23;
    }

    while (v23);
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
    v24 = MEMORY[0x1E69E7CC0];
  }

  v103 = v25;
  v34 = v146;
  v100 = v148;
  v101 = v147;
  v99 = v149;
  if (v146)
  {
    v35 = *(v146 + 16);
    if (v35)
    {
      sub_1DB1757B0(v147, v148, v149);
      v129 = v24;
      sub_1DB1384B0(0, v35, 0);
      v36 = v129;
      v37 = v34 + 32;
      do
      {
        sub_1DB164980(v37, v113);
        sub_1DB1732D4(v113, &v116);
        __swift_destroy_boxed_opaque_existential_1(v113);
        v129 = v36;
        v39 = *(v36 + 16);
        v38 = *(v36 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1DB1384B0((v38 > 1), v39 + 1, 1);
        }

        v40 = *(&v117 + 1);
        v41 = v118;
        v42 = __swift_mutable_project_boxed_opaque_existential_1(&v116, *(&v117 + 1));
        MEMORY[0x1EEE9AC00](v42);
        v44 = &v93 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v45 + 16))(v44);
        sub_1DB16412C(v39, v44, &v129, v40, v41);
        __swift_destroy_boxed_opaque_existential_1(&v116);
        v36 = v129;
        v37 += 40;
        --v35;
      }

      while (v35);
      v98 = v129;
    }

    else
    {
      sub_1DB1757B0(v147, v148, v149);
      v98 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v98 = 0;
  }

  sub_1DB1755F8(v97, v96, v95, v94);
  v46 = v150;
  if (v150)
  {
    v47 = *(v150 + 16);
    v48 = MEMORY[0x1E69E7CC0];
    if (v47)
    {
      v129 = MEMORY[0x1E69E7CC0];
      sub_1DB1384B0(0, v47, 0);
      v48 = v129;
      v49 = v46 + 32;
      do
      {
        sub_1DB164980(v49, v113);
        sub_1DB1732D4(v113, &v116);
        __swift_destroy_boxed_opaque_existential_1(v113);
        v129 = v48;
        v51 = *(v48 + 16);
        v50 = *(v48 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_1DB1384B0((v50 > 1), v51 + 1, 1);
        }

        v52 = *(&v117 + 1);
        v53 = v118;
        v54 = __swift_mutable_project_boxed_opaque_existential_1(&v116, *(&v117 + 1));
        MEMORY[0x1EEE9AC00](v54);
        v56 = &v93 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v57 + 16))(v56);
        sub_1DB16412C(v51, v56, &v129, v52, v53);
        __swift_destroy_boxed_opaque_existential_1(&v116);
        v48 = v129;
        v49 += 40;
        --v47;
      }

      while (v47);
    }
  }

  else
  {
    v48 = 0;
  }

  v58 = v153;

  v59 = *(v58 + 16);
  if (v59)
  {
    v97 = v48;
    v102 = v11;
    v129 = v24;
    sub_1DB138640(0, v59, 0);
    v60 = v129;
    v96 = v58;
    v61 = v58 + 32;
    do
    {
      sub_1DB175650(v61, v113);
      v62 = v113[0];
      v63 = v114;
      v64 = v115;
      __swift_project_boxed_opaque_existential_1(v113 + 1, v114);
      v65 = *(v64 + 56);
      *&v118 = v63;
      *(&v118 + 1) = v64;
      __swift_allocate_boxed_opaque_existential_0(&v116 + 1);
      v65(v63, v64);
      LOBYTE(v116) = v62;
      sub_1DB1756AC(v113);
      v129 = v60;
      v67 = *(v60 + 16);
      v66 = *(v60 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_1DB138640((v66 > 1), v67 + 1, 1);
        v60 = v129;
      }

      *(v60 + 16) = v67 + 1;
      v68 = (v60 + 48 * v67);
      v69 = v116;
      v70 = v118;
      v68[3] = v117;
      v68[4] = v70;
      v68[2] = v69;
      v61 += 48;
      --v59;
    }

    while (v59);

    v11 = v102;
    v71 = MEMORY[0x1E69E7CC0];
    v48 = v97;
  }

  else
  {
    v71 = v24;

    v60 = MEMORY[0x1E69E7CC0];
  }

  v72 = v154;
  v73 = v156;
  v74 = *(v156 + 16);
  if (v74)
  {
    LODWORD(v102) = v154;
    v75 = v48;
    v129 = v71;
    sub_1DB138620(0, v74, 0);
    v76 = v129;
    v77 = v73 + 32;
    do
    {
      sub_1DB175700(v77, v113);
      sub_1DB1734CC(v113, &v116);
      sub_1DB17575C(v113);
      v129 = v76;
      v79 = *(v76 + 16);
      v78 = *(v76 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_1DB138620((v78 > 1), v79 + 1, 1);
        v76 = v129;
      }

      *(v76 + 16) = v79 + 1;
      v80 = (v76 + 240 * v79);
      v81 = v116;
      v82 = v118;
      v80[3] = v117;
      v80[4] = v82;
      v80[2] = v81;
      v83 = v119;
      v84 = v120[0];
      v85 = v121;
      v80[7] = v120[1];
      v80[8] = v85;
      v80[5] = v83;
      v80[6] = v84;
      v86 = v122;
      v87 = v123[0];
      v88 = v124;
      v80[11] = v123[1];
      v80[12] = v88;
      v80[9] = v86;
      v80[10] = v87;
      v89 = v125;
      v90 = v126;
      v91 = v128;
      v80[15] = v127;
      v80[16] = v91;
      v80[13] = v89;
      v80[14] = v90;
      v77 += 240;
      --v74;
    }

    while (v74);
    sub_1DB17181C(&v136);
    v48 = v75;
    v72 = v102;
  }

  else
  {
    sub_1DB17181C(&v136);
    v76 = MEMORY[0x1E69E7CC0];
  }

  LOBYTE(v116) = v109;
  *(&v116 + 1) = v135[0];
  DWORD1(v116) = *(v135 + 3);
  *(&v116 + 1) = v11;
  *&v117 = v105;
  *(&v117 + 1) = v107;
  *&v118 = v104;
  *(&v118 + 1) = v106;
  v119 = 0uLL;
  *&v120[0] = v103;
  *(v120 + 8) = v133;
  *(&v120[1] + 1) = v134;
  *&v121 = v98;
  *(&v121 + 1) = v101;
  *&v122 = v100;
  *(&v122 + 1) = v99;
  *&v123[0] = v48;
  *(v123 + 8) = v131;
  *(&v123[1] + 1) = v132;
  *&v124 = v60;
  BYTE8(v124) = v72;
  HIDWORD(v124) = *(v130 + 3);
  *(&v124 + 9) = v130[0];
  *&v125 = v76;
  return (*(v112 + 24))(&v116, v111);
}

uint64_t sub_1DB28C7C4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 + 16);
  v10(v22, a3, a5);
  v17 = v22[3];
  v18 = v22[2];

  sub_1DB17181C(v22);

  v10(v23, a3, a5);
  v11 = v23[6];
  v12 = v23[7];

  sub_1DB17181C(v23);

  (*(a6 + 40))(v18, v17, v11, v12, a4, a6);
  v10(v21, a3, a5);
  (*(a6 + 24))(v21, a4, a6);
  v13 = *(a6 + 32);

  v14 = v13(v21, a4, a6);
  *v15 = a1;
  *(v15 + 8) = a2;

  return v14(v21, 0);
}

uint64_t sub_1DB28C9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB2BCC40;
  sub_1DB164980(a1, v9 + 32);

  sub_1DB1414E8(v10);
  sub_1DB28C7C4(a5, v9, a3, a3, *(a4 + 8), *(a4 + 8));
}

uint64_t sub_1DB28CAEC(void (*a1)(void *, void *), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB2BCC40;
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v9 + 64) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  a1(v12, v11);
  sub_1DB28C7C4(a5, v9, a3, a3, *(a4 + 8), *(a4 + 8));
}

uint64_t SchemaType.select<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1DB28CC3C(a1, a2, a3, a4, a5, 0);
}

{
  return sub_1DB28CD78(a1, a2, a3, a4, a5, 0);
}

uint64_t SchemaType.select<A>(distinct:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1DB28CC3C(a1, a2, a3, a4, a5, 1);
}

{
  return sub_1DB28CD78(a1, a2, a3, a4, a5, 1);
}

uint64_t sub_1DB28CC3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DB2BCC40;
  *(v13 + 56) = type metadata accessor for Expression(0, a3, v14, v15);
  *(v13 + 64) = swift_getWitnessTable();
  *(v13 + 32) = v11;
  *(v13 + 40) = v10;
  *(v13 + 48) = v12;
  v18 = type metadata accessor for ScalarQuery(0, a3, v16, v17);
  v19 = *(a4 + 8);

  WitnessTable = swift_getWitnessTable();
  sub_1DB28C7C4(a6, v13, a2, v18, v19, WitnessTable);
}

uint64_t sub_1DB28CD78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DB2BCC40;
  v13 = sub_1DB2BB364();
  *(v12 + 56) = type metadata accessor for Expression(0, v13, v14, v15);
  *(v12 + 64) = swift_getWitnessTable();
  *(v12 + 32) = v10;
  *(v12 + 40) = v9;
  *(v12 + 48) = v11;
  v18 = type metadata accessor for ScalarQuery(0, v13, v16, v17);
  v19 = *(a4 + 8);

  WitnessTable = swift_getWitnessTable();
  sub_1DB28C7C4(a6, v12, a2, v18, v19, WitnessTable);
}

uint64_t SchemaType.count.getter(uint64_t a1, uint64_t a2)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v10 = 42;
  v11 = 0xE100000000000000;
  v14 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  v12 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v4 = __swift_project_boxed_opaque_existential_1(&v10, v13);
  v5 = v10;
  v6 = v11;

  MEMORY[0x1E1283490](v5, v6);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v7 = v4[2];

  __swift_destroy_boxed_opaque_existential_1(&v10);
  v10 = 0x746E756F63;
  v11 = 0xE500000000000000;
  v12 = v7;
  SchemaType.select<A>(_:)(&v10, a1, MEMORY[0x1E69E6530], a2, v8);
}

uint64_t QueryType.union(all:_:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  sub_1DB164980(a2, v22 + 8);
  LOBYTE(v22[0]) = a1;
  v10 = (*(a4 + 32))(v21, a3, a4);
  v12 = v11;
  v13 = *(v11 + 160);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v12 + 160) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1DB158530(0, *(v13 + 2) + 1, 1, v13);
    *(v12 + 160) = v13;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1DB158530((v15 > 1), v16 + 1, 1, v13);
    *(v12 + 160) = v13;
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[48 * v16];
  v18 = v22[0];
  v19 = v22[2];
  *(v17 + 3) = v22[1];
  *(v17 + 4) = v19;
  *(v17 + 2) = v18;
  return v10(v21, 0);
}

uint64_t QueryType.join(_:on:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];

  v14 = 1;
  v13[0] = v10;
  v13[1] = v9;
  v13[2] = v11;
  QueryType.join(_:_:on:)(&v14, a1, v13, a3, a4, a5);
}

{
  v5 = *a2;
  v9 = 1;
  v7 = v5;
  v8 = *(a2 + 1);
  return QueryType.join(_:_:on:)(&v9, a1, &v7, a3, a4, a5);
}

uint64_t QueryType.join(_:_:on:)@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = a3[1];
  v32 = *a3;
  v12 = a3[2];
  (*(*(a4 - 8) + 16))(a6, v6, a4);
  sub_1DB164980(a2, v38);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 16))(v44, v13, v14);
  v15 = v45;
  v16 = v46;
  v17 = v47;
  sub_1DB1757B0(v45, v46, v47);
  sub_1DB17181C(v44);
  if (v16 && (*&v34 = v32, *(&v34 + 1) = v11, v35 = v12, v33[0] = v15, v33[1] = v16, v33[2] = v17, *(&v40 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0), *&v41 = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>), static Expression<A>.&& infix(_:_:)(&v34, v33, &v39), sub_1DB1718E4(v15, v16, v17), *(&v40 + 1)))
  {
    sub_1DB1355D0(&v39, &v34);
  }

  else
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    v18 = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
    *&v34 = v32;
    *(&v34 + 1) = v11;
    v37 = v18;
    v35 = v12;
  }

  LOBYTE(v39) = v10;
  sub_1DB1355D0(v38, &v39 + 8);
  sub_1DB1355D0(&v34, v42);
  v19 = (*(a5 + 32))(v38, a4, a5);
  v21 = v20;
  v22 = *(v20 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 64) = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_1DB158650(0, *(v22 + 2) + 1, 1, v22);
    *(v21 + 64) = v22;
  }

  v25 = *(v22 + 2);
  v24 = *(v22 + 3);
  if (v25 >= v24 >> 1)
  {
    v22 = sub_1DB158650((v24 > 1), v25 + 1, 1, v22);
    *(v21 + 64) = v22;
  }

  *(v22 + 2) = v25 + 1;
  v26 = &v22[88 * v25];
  v27 = v40;
  *(v26 + 2) = v39;
  *(v26 + 3) = v27;
  v28 = v41;
  v29 = v42[0];
  v30 = v42[1];
  *(v26 + 14) = v43;
  *(v26 + 5) = v29;
  *(v26 + 6) = v30;
  *(v26 + 4) = v28;
  return v19(v38, 0);
}

{
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v15 = *a1;
  v14[0] = v10;
  v14[1] = v11;
  v14[2] = v12;

  QueryType.join(_:_:on:)(&v15, a2, v14, a4, a5, a6);
}

uint64_t QueryType.where(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  return QueryType.filter(_:)(&v5, a2, a3, a4);
}

uint64_t QueryType.group(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB2BCC40;
  sub_1DB164980(a1, v9 + 32);

  sub_1DB1414E8(v10);
  memset(v12, 0, sizeof(v12));
  sub_1DB28D76C(v9, v12, a3, a4, x8_0);
}

uint64_t sub_1DB28D76C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  (*(*(a3 - 8) + 16))(a5, v5);
  v12 = *(a4 + 32);
  sub_1DB1757B0(v9, v10, v11);

  v13 = v12(v20, a3, a4);
  v15 = v14[12];
  v16 = v14[13];
  v17 = v14[14];
  v18 = v14[15];
  v14[12] = a1;
  v14[13] = v9;
  v14[14] = v10;
  v14[15] = v11;
  sub_1DB1755F8(v15, v16, v17, v18);
  return v13(v20, 0);
}

uint64_t QueryType.group(_:having:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  return sub_1DB28D89C(a1, a2, a3, a4, QueryType.group(_:having:));
}

{
  return sub_1DB28D89C(a1, a2, a3, a4, QueryType.group(_:having:));
}

uint64_t sub_1DB28D89C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t))
{
  v10 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DB2BCC40;
  sub_1DB164980(a1, v11 + 32);
  v13 = v10;
  v14 = *(a2 + 1);
  a5(v11, &v13, a3, a4);
}

void _s19OnDeviceStorageCore9QueryTypePAAE5group_6havingxSayAA11Expressible_pG_AA10ExpressionVySbGtF_0(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a2[1];
  v10 = a2[2];
  v14 = *a2;
  v15 = v9;
  v16 = v10;

  sub_1DB28D76C(a1, &v14, a3, a4, a5);
  v11 = v14;
  v12 = v15;
  v13 = v16;

  sub_1DB1718E4(v11, v12, v13);
}

uint64_t QueryType.order(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  v8 = (*(a3 + 32))(v11, a2, a3);
  *(v9 + 128) = a1;

  return v8(v11, 0);
}

uint64_t QueryType.limit(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  if (a2)
  {
    a1 = 0;
  }

  v10 = (*(a4 + 32))(v13, a3, a4);
  *(v11 + 136) = a1;
  *(v11 + 144) = 0;
  *(v11 + 152) = (a2 & 1) == 0;
  *(v11 + 153) = a2 & 1;
  return v10(v13, 0);
}

uint64_t QueryType.limit(_:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  v10 = (*(a4 + 32))(v13, a3, a4);
  *(v11 + 136) = a1;
  *(v11 + 144) = a2;
  *(v11 + 152) = 0;
  return v10(v13, 0);
}

OnDeviceStorageCore::QueryClauses::LimitClause __swiftcall QueryClauses.LimitClause.init(length:offset:)(Swift::Int length, Swift::Int_optional offset)
{
  *v2 = length;
  *(v2 + 8) = offset.value;
  *(v2 + 16) = offset.is_nil;
  result.offset = offset;
  result.length = length;
  return result;
}

uint64_t sub_1DB28DC8C@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2C3A50;
  v6 = *(v2 + 8);
  if (*v2)
  {
    v7 = 0x44205443454C4553;
  }

  else
  {
    v7 = 0x5443454C4553;
  }

  if (*v2)
  {
    v8 = 0xEF54434E49545349;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 56) = v9;
  v10 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *(inited + 64) = v10;
  *(inited + 32) = v7;
  v11 = MEMORY[0x1E69E7CC0];
  *(inited + 40) = v8;
  *(inited + 48) = v11;
  sub_1DB2B9A70(v6, (inited + 72));
  *(inited + 136) = v9;
  *(inited + 144) = v10;
  *(inited + 112) = 1297044038;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = v11;
  a1(1);
  sub_1DB2B9A70(inited, a2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  return swift_arrayDestroy();
}

uint64_t sub_1DB28DE2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2C3A50;
  v14 = a2;
  v6 = *(a2 + 16);
  v6(v17, a1, a2);
  sub_1DB17181C(v17);
  if (LOBYTE(v17[0]))
  {
    v7 = 0x44205443454C4553;
  }

  else
  {
    v7 = 0x5443454C4553;
  }

  if (LOBYTE(v17[0]))
  {
    v8 = 0xEF54434E49545349;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 56) = v9;
  v10 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *(inited + 64) = v10;
  *(inited + 32) = v7;
  v11 = MEMORY[0x1E69E7CC0];
  *(inited + 40) = v8;
  *(inited + 48) = v11;
  v6(v16, a1, v14);
  v12 = v16[1];

  sub_1DB17181C(v16);
  sub_1DB2B9A70(v12, (inited + 72));

  *(inited + 136) = v9;
  *(inited + 144) = v10;
  *(inited + 112) = 1297044038;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = v11;
  sub_1DB288D3C(1, a1, v14, (inited + 152));
  sub_1DB2B9A70(inited, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  return swift_arrayDestroy();
}

double sub_1DB28E034@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v2 + 16);
  if (v3)
  {
    v29 = a1;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1DB1384B0(0, v3, 0);
    v4 = v35;
    v5 = v2 + 80;
    v30 = xmmword_1DB2C3A50;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      inited = swift_initStackObject();
      *(inited + 16) = v30;
      v31 = 0;
      v32 = 0xE000000000000000;
      v8 = *(v5 - 48);
      v9 = 0x52454E4E49;
      if (v8 != 1)
      {
        v9 = 0x54554F205446454CLL;
      }

      v10 = 0xEA00000000005245;
      if (v8 == 1)
      {
        v10 = 0xE500000000000000;
      }

      if (*(v5 - 48))
      {
        v11 = v9;
      }

      else
      {
        v11 = 0x53534F5243;
      }

      if (*(v5 - 48))
      {
        v12 = v10;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

      MEMORY[0x1E1283490](v11, v12);

      MEMORY[0x1E1283490](0x4E494F4A20, 0xE500000000000000);
      v13 = v31;
      v14 = v32;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
      *(inited + 56) = v15;
      v16 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
      *(inited + 64) = v16;
      *(inited + 32) = v13;
      *(inited + 40) = v14;
      *(inited + 48) = v6;
      v17 = *(v5 - 16);
      v18 = *(v5 - 8);
      __swift_project_boxed_opaque_existential_1((v5 - 40), v17);
      sub_1DB288D3C(1, v17, v18, (inited + 72));
      *(inited + 136) = v15;
      *(inited + 144) = v16;
      *(inited + 112) = 20047;
      *(inited + 120) = 0xE200000000000000;
      *(inited + 128) = v6;
      sub_1DB164980(v5, inited + 152);
      sub_1DB2B9A70(inited, &v31);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      swift_arrayDestroy();
      v35 = v4;
      v20 = *(v4 + 16);
      v19 = *(v4 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1DB1384B0((v19 > 1), v20 + 1, 1);
      }

      v21 = v33;
      v22 = v34;
      v23 = __swift_mutable_project_boxed_opaque_existential_1(&v31, v33);
      MEMORY[0x1EEE9AC00](v23);
      v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v25);
      sub_1DB16412C(v20, v25, &v35, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(&v31);
      v4 = v35;
      v5 += 88;
      --v3;
    }

    while (v3);
    sub_1DB2B9A70(v35, v29);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DB28E394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v6(v50);
  v7 = v50[8];

  sub_1DB17181C(v50);
  v8 = *(v7 + 16);

  if (v8)
  {
    v34 = a3;
    (v6)(v49, a1, a2);
    v10 = v49[8];

    sub_1DB17181C(v49);
    v11 = *(v10 + 16);
    if (v11)
    {
      v48 = MEMORY[0x1E69E7CC0];
      result = sub_1DB1384B0(0, v11, 0);
      v12 = 0;
      v13 = v10 + 32;
      v14 = v48;
      v35 = xmmword_1DB2C3A50;
      v36 = v10;
      v37 = v11;
      while (v12 < *(v10 + 16))
      {
        sub_1DB175548(v13, v39);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
        v15 = swift_allocObject();
        *(v15 + 16) = v35;
        v44 = 0;
        v45 = 0xE000000000000000;
        v38 = v13;
        if (v39[0])
        {
          if (v39[0] == 1)
          {
            v16 = 0x52454E4E49;
          }

          else
          {
            v16 = 0x54554F205446454CLL;
          }

          if (v39[0] == 1)
          {
            v17 = 0xE500000000000000;
          }

          else
          {
            v17 = 0xEA00000000005245;
          }
        }

        else
        {
          v17 = 0xE500000000000000;
          v16 = 0x53534F5243;
        }

        MEMORY[0x1E1283490](v16, v17);

        MEMORY[0x1E1283490](0x4E494F4A20, 0xE500000000000000);
        v18 = v44;
        v19 = v45;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
        *(v15 + 56) = v20;
        v21 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
        *(v15 + 64) = v21;
        *(v15 + 32) = v18;
        *(v15 + 40) = v19;
        v22 = MEMORY[0x1E69E7CC0];
        *(v15 + 48) = MEMORY[0x1E69E7CC0];
        v23 = v41;
        v24 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        sub_1DB288D3C(1, v23, v24, (v15 + 72));
        *(v15 + 136) = v20;
        *(v15 + 144) = v21;
        *(v15 + 112) = 20047;
        *(v15 + 120) = 0xE200000000000000;
        *(v15 + 128) = v22;
        sub_1DB164980(&v43, v15 + 152);
        sub_1DB2B9A70(v15, &v44);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_1DB1755A4(v39);
        v48 = v14;
        v26 = *(v14 + 16);
        v25 = *(v14 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1DB1384B0((v25 > 1), v26 + 1, 1);
        }

        ++v12;
        v27 = v46;
        v28 = v47;
        v29 = __swift_mutable_project_boxed_opaque_existential_1(&v44, v46);
        MEMORY[0x1EEE9AC00](v29);
        v31 = &v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v32 + 16))(v31);
        sub_1DB16412C(v26, v31, &v48, v27, v28);
        result = __swift_destroy_boxed_opaque_existential_1(&v44);
        v14 = v48;
        v13 = v38 + 88;
        v10 = v36;
        if (v37 == v12)
        {

          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
LABEL_19:
      sub_1DB2B9A70(v14, v34);
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t JoinType.rawValue.getter()
{
  v1 = 0x52454E4E49;
  if (*v0 != 1)
  {
    v1 = 0x54554F205446454CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53534F5243;
  }
}

double sub_1DB28E824@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[10];
  if (v3)
  {
    v4 = v1[11];
    v5 = v1[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v7 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
    *(inited + 32) = 0x4552454857;
    *(inited + 64) = v7;
    v8 = MEMORY[0x1E69E7CC0];
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v8;
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    *(inited + 104) = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
    *(inited + 72) = v5;
    *(inited + 80) = v3;
    *(inited + 88) = v4;

    sub_1DB2B9A70(inited, a1);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DB28E9C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v14);
  v3 = v15;
  if (v15)
  {
    v4 = v14[9];
    v5 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v7 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
    *(inited + 32) = 0x4552454857;
    *(inited + 64) = v7;
    v8 = MEMORY[0x1E69E7CC0];
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v8;
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    *(inited + 104) = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
    *(inited + 72) = v4;
    *(inited + 80) = v3;
    *(inited + 88) = v5;

    sub_1DB2B9A70(inited, &v11);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  v9 = v12;
  *a2 = v11;
  *(a2 + 16) = v9;
  *(a2 + 32) = v13;
  return sub_1DB17181C(v14);
}

void sub_1DB28EB8C(uint64_t a1@<X8>)
{
  v3 = v1[12];
  if (v3)
  {
    v4 = v1[14];
    v12 = v1[13];
    v5 = v1[15];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    *(inited + 56) = v7;
    v8 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
    *(inited + 32) = 0x59422050554F5247;
    *(inited + 64) = v8;
    v9 = MEMORY[0x1E69E7CC0];
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v9;
    sub_1DB2B9A70(v3, (inited + 72));
    sub_1DB2B9A70(inited, v13);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    if (v4)
    {
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_1DB2BD5A0;
      sub_1DB164980(v13, v10 + 32);
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_1DB2BD5A0;
      *(v11 + 56) = v7;
      *(v11 + 64) = v8;
      *(v11 + 32) = 0x474E49564148;
      *(v11 + 40) = 0xE600000000000000;
      *(v11 + 48) = v9;
      *(v11 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
      *(v11 + 104) = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
      *(v11 + 72) = v12;
      *(v11 + 80) = v4;
      *(v11 + 88) = v5;

      sub_1DB2B9A70(v11, (v10 + 72));
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_1DB2B9A70(v10, a1);
      swift_setDeallocating();
      swift_arrayDestroy();
      __swift_destroy_boxed_opaque_existential_1(v13);
    }

    else
    {
      sub_1DB1355D0(v13, a1);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

uint64_t sub_1DB28EE38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v15);
  v4 = v16;
  v3 = v17;
  v5 = v18;
  v6 = v19;
  sub_1DB211E8C(v16, v17, v18, v19);
  result = sub_1DB17181C(v15);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    *(inited + 56) = v9;
    v10 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
    *(inited + 32) = 0x59422050554F5247;
    *(inited + 64) = v10;
    v11 = MEMORY[0x1E69E7CC0];
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v11;
    sub_1DB2B9A70(v4, (inited + 72));
    sub_1DB2B9A70(inited, v14);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    if (v5)
    {
      sub_1DB1757B0(v3, v5, v6);
      sub_1DB1755F8(v4, v3, v5, v6);
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_1DB2BD5A0;
      sub_1DB164980(v14, v12 + 32);
      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_1DB2BD5A0;
      *(v13 + 56) = v9;
      *(v13 + 64) = v10;
      *(v13 + 32) = 0x474E49564148;
      *(v13 + 40) = 0xE600000000000000;
      *(v13 + 48) = MEMORY[0x1E69E7CC0];
      *(v13 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
      *(v13 + 104) = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
      *(v13 + 72) = v3;
      *(v13 + 80) = v5;
      *(v13 + 88) = v6;
      sub_1DB2B9A70(v13, (v12 + 72));
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_1DB2B9A70(v12, a2);
      swift_setDeallocating();
      swift_arrayDestroy();
      return __swift_destroy_boxed_opaque_existential_1(v14);
    }

    else
    {
      sub_1DB1755F8(v4, v3, 0, v6);
      return sub_1DB1355D0(v14, a2);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1DB28F144@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  if (v2 && *(v2 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v5 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
    *(inited + 32) = 0x594220524544524FLL;
    *(inited + 64) = v5;
    v6 = MEMORY[0x1E69E7CC0];
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v6;
    sub_1DB2B9A70(v2, (inited + 72));
    sub_1DB2B9A70(inited, a1);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DB28F290@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v8);
  v3 = v9;
  if (v9 && *(v9 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v5 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
    *(inited + 32) = 0x594220524544524FLL;
    *(inited + 64) = v5;
    v6 = MEMORY[0x1E69E7CC0];
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v6;
    sub_1DB2B9A70(v3, (inited + 72));
    sub_1DB2B9A70(inited, a2);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return sub_1DB17181C(v8);
}

void sub_1DB28F3FC(uint64_t a1@<X8>)
{
  if (*(v1 + 153))
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    v3 = *(v1 + 152);
    v4 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v4);

    if (v3)
    {
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
      *(a1 + 32) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
      *a1 = 0x2054494D494CLL;
      *(a1 + 8) = 0xE600000000000000;
      *(a1 + 16) = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DB2BD5A0;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
      *(inited + 56) = v6;
      v7 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
      *(inited + 64) = v7;
      *(inited + 32) = 0x2054494D494CLL;
      v8 = MEMORY[0x1E69E7CC0];
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = v8;
      v9 = sub_1DB2BB8F4();
      MEMORY[0x1E1283490](v9);

      *(inited + 96) = v6;
      *(inited + 104) = v7;
      *(inited + 72) = 0x2054455346464FLL;
      *(inited + 80) = 0xE700000000000000;
      *(inited + 88) = v8;
      sub_1DB2B9A70(inited, a1);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      swift_arrayDestroy();
    }
  }
}

uint64_t sub_1DB28F63C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v11);
  if (v13)
  {
    result = sub_1DB17181C(v11);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  else
  {
    v4 = v12;
    v5 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v5);

    if (v4)
    {
      *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
      *(a2 + 32) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
      result = sub_1DB17181C(v11);
      *a2 = 0x2054494D494CLL;
      *(a2 + 8) = 0xE600000000000000;
      *(a2 + 16) = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DB2BD5A0;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
      *(inited + 56) = v7;
      v8 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
      *(inited + 64) = v8;
      *(inited + 32) = 0x2054494D494CLL;
      v9 = MEMORY[0x1E69E7CC0];
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = v9;
      v10 = sub_1DB2BB8F4();
      MEMORY[0x1E1283490](v10);

      *(inited + 96) = v7;
      *(inited + 104) = v8;
      *(inited + 72) = 0x2054455346464FLL;
      *(inited + 80) = 0xE700000000000000;
      *(inited + 88) = v9;
      sub_1DB2B9A70(inited, a2);
      sub_1DB17181C(v11);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      return swift_arrayDestroy();
    }
  }

  return result;
}

void sub_1DB28F8AC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v2 + 16);
  if (!v3)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v56 = a1;
  v4 = MEMORY[0x1E69E7CC0];
  v75 = MEMORY[0x1E69E7CC0];
  sub_1DB1384B0(0, v3, 0);
  v5 = v2 + 32;
  v6 = v75;
  while (1)
  {
    sub_1DB175650(v5, v66);
    if (v66[0])
    {
      v7 = 0x4C41204E4F494E55;
    }

    else
    {
      v7 = 0x4E4F494E55;
    }

    if (v66[0])
    {
      v8 = 0xE90000000000004CLL;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v61 = v59;
    v9 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
    v60[0] = v7;
    v60[1] = v8;
    v60[2] = v4;
    v58 = v9;
    v62 = v9;
    v11 = v68;
    v10 = v69;
    v12 = __swift_project_boxed_opaque_existential_1(v67, v68);
    v64 = v11;
    v65 = *(v10 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v63);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, v12, v11);
    v14 = v61;
    v15 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    (*(v15 + 24))(&v70, v14, v15);
    v16 = v70;
    v17 = v71;
    v18 = v72;

    v19 = sub_1DB1572F0(0, 1, 1, v4);
    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    if (v21 >= v20 >> 1)
    {
      v19 = sub_1DB1572F0((v20 > 1), v21 + 1, 1, v19);
    }

    *(v19 + 2) = v21 + 1;
    v22 = &v19[16 * v21];
    *(v22 + 4) = v16;
    *(v22 + 5) = v17;
    v23 = v18[2];

    v24 = sub_1DB157420(0, v23, 1, v4);
    v25 = v24;
    if (!v18[2])
    {
      break;
    }

    if ((v24[3] >> 1) - v24[2] < v23)
    {
      goto LABEL_39;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
    swift_arrayInitWithCopy();

    if (v23)
    {
      v26 = v25[2];
      v27 = __OFADD__(v26, v23);
      v28 = v26 + v23;
      if (v27)
      {
        goto LABEL_41;
      }

      v25[2] = v28;
    }

LABEL_17:
    v57 = v3;

    v29 = v64;
    v30 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    (*(v30 + 24))(&v70, v29, v30);
    v31 = v70;
    v32 = v71;
    v33 = v72;
    v35 = *(v19 + 2);
    v34 = *(v19 + 3);

    if (v35 >= v34 >> 1)
    {
      v19 = sub_1DB1572F0((v34 > 1), v35 + 1, 1, v19);
    }

    *(v19 + 2) = v35 + 1;
    v36 = &v19[16 * v35];
    *(v36 + 4) = v31;
    *(v36 + 5) = v32;
    v37 = v33[2];
    v38 = v25[2];
    v39 = v38 + v37;
    if (__OFADD__(v38, v37))
    {
      goto LABEL_37;
    }

    v40 = v25[3] >> 1;

    if (v40 < v39)
    {
      if (v38 <= v39)
      {
        v43 = v38 + v37;
      }

      else
      {
        v43 = v38;
      }

      v25 = sub_1DB157420(1, v43, 1, v25);
      v38 = v25[2];
      v40 = v25[3] >> 1;
      if (v33[2])
      {
LABEL_22:
        if ((v40 - v38) < v37)
        {
          goto LABEL_40;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
        swift_arrayInitWithCopy();

        if (v37)
        {
          v41 = v25[2];
          v27 = __OFADD__(v41, v37);
          v42 = v41 + v37;
          if (v27)
          {
            goto LABEL_42;
          }

          v25[2] = v42;
        }

        goto LABEL_31;
      }
    }

    else if (v37)
    {
      goto LABEL_22;
    }

    if (v37)
    {
      goto LABEL_38;
    }

LABEL_31:

    v70 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
    v44 = sub_1DB2BAD24();
    v46 = v45;

    v73 = v59;
    v74 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    v70 = v44;
    v71 = v46;
    v72 = v25;
    sub_1DB1756AC(v66);
    v75 = v6;
    v48 = *(v6 + 16);
    v47 = *(v6 + 24);
    if (v48 >= v47 >> 1)
    {
      sub_1DB1384B0((v47 > 1), v48 + 1, 1);
    }

    v49 = v73;
    v50 = v74;
    v51 = __swift_mutable_project_boxed_opaque_existential_1(&v70, v73);
    MEMORY[0x1EEE9AC00](v51);
    v53 = &v55 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v54 + 16))(v53);
    sub_1DB16412C(v48, v53, &v75, v49, v50);
    __swift_destroy_boxed_opaque_existential_1(&v70);
    v6 = v75;
    v5 += 48;
    v3 = v57 - 1;
    v4 = MEMORY[0x1E69E7CC0];
    if (v57 == 1)
    {
      sub_1DB2B9A70(v75, v56);

      return;
    }
  }

  if (!v23)
  {
    goto LABEL_17;
  }

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