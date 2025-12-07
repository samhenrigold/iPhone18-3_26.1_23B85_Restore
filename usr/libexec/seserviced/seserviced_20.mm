void *sub_1001AA7A0(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = *(a2 + 16);

  v109 = v6;
  v83 = a1;
  if (!v6)
  {

    goto LABEL_14;
  }

  v7 = 0;
  v8 = a2 + 32;
  v79 = 96;
  v81 = v6 - 1;
  while (1)
  {
    v9 = (v8 + (v7 << 6));
    v10 = v9[1];
    v93 = *v9;
    v94 = v10;
    v11 = v9[3];
    v95 = v9[2];
    v96 = v11;
    *v97 = v93;
    *&v97[16] = v10;
    *&v97[32] = v95;
    *&v97[48] = v11;
    v85 = v10;
    v90 = BYTE8(v10);
    v12 = v95;
    v13 = v11;
    sub_1000938D4(&v93, &v99, &qword_1005053F0, &unk_10040CDE0);
    sub_1000938D4(v97, &v99, &qword_1005053F0, &unk_10040CDE0);

    sub_1001AF6EC(v12, *(&v12 + 1), v13);

    if (v90)
    {
      break;
    }

    v14 = v7 + 1;

    if (v14 == v109)
    {

      sub_100075768(v97, &qword_1005053F0, &unk_10040CDE0);
      goto LABEL_75;
    }

    v77 = v14;
    v84 = v4;
    v16 = v79;
    v15 = v81;
    do
    {
      v17 = *(a2 + v16 + 16);
      v99 = *(a2 + v16);
      v100 = v17;
      v18 = *(a2 + v16 + 48);
      v101 = *(a2 + v16 + 32);
      v102 = v18;
      v19 = v100;
      v91 = BYTE8(v100);
      v20 = v101;
      v21 = v18;
      sub_1000938D4(&v99, v98, &qword_1005053F0, &unk_10040CDE0);
      sub_1000938D4(&v99, v98, &qword_1005053F0, &unk_10040CDE0);

      sub_1001AF6EC(v20, *(&v20 + 1), v21);

      if ((v91 & 1) != 0 || v85 == v19)
      {

        sub_10007FC0C();
        swift_allocError();
        *(v22 + 8) = 0;
        *(v22 + 16) = 0;
        *v22 = 2;
        *(v22 + 24) = 3;
        swift_willThrow();
        sub_100075768(&v99, &qword_1005053F0, &unk_10040CDE0);
        sub_100075768(v97, &qword_1005053F0, &unk_10040CDE0);
      }

      sub_100075768(&v99, &qword_1005053F0, &unk_10040CDE0);
      v16 += 64;
      --v15;
    }

    while (v15);

    sub_100075768(v97, &qword_1005053F0, &unk_10040CDE0);
    v7 = v77;
    v79 += 64;
    --v81;
    v4 = v84;
    v8 = a2 + 32;
    if (v77 == v109)
    {
LABEL_75:

      if (v109 > 0x40)
      {
        sub_10007FC0C();
        swift_allocError();
        *(v71 + 8) = 0;
        *(v71 + 16) = 0;
        *v71 = 2;
        v72 = 3;
LABEL_70:
        *(v71 + 24) = v72;
        return swift_willThrow();
      }

LABEL_14:
      v86 = 0;
      v92 = (a2 + 32);
      v89 = _swiftEmptyDictionarySingleton;
      while (1)
      {
LABEL_15:
        v24 = *a1;
        v25 = a1[1];
        v26 = v25 >> 62;
        if ((v25 >> 62) > 1)
        {
          if (v26 != 2)
          {
            goto LABEL_56;
          }

          v29 = v24 + 16;
          v27 = *(v24 + 16);
          v28 = *(v29 + 8);
          v30 = __OFSUB__(v28, v27);
          v31 = v28 - v27;
          if (v30)
          {
            goto LABEL_81;
          }

          if (!v31)
          {
            goto LABEL_56;
          }
        }

        else if (v26)
        {
          v30 = __OFSUB__(HIDWORD(v24), v24);
          v32 = HIDWORD(v24) - v24;
          if (v30)
          {
            __break(1u);
LABEL_81:
            __break(1u);
            return result;
          }

          if (!v32)
          {
LABEL_56:
            if (!v109)
            {
              return v89;
            }

            v62 = 0;
            for (i = v92; ; i += 4)
            {
              v64 = i[1];
              v93 = *i;
              v94 = v64;
              v65 = i[3];
              v95 = i[2];
              v96 = v65;
              *v97 = v93;
              *&v97[16] = v64;
              *&v97[32] = v95;
              *&v97[48] = v65;
              sub_1000938D4(&v93, &v99, &qword_1005053F0, &unk_10040CDE0);
              sub_1000938D4(v97, &v99, &qword_1005053F0, &unk_10040CDE0);

              v66 = v97[25];
              sub_1001AF6EC(*&v97[32], *&v97[40], v97[48]);

              if ((v66 & 1) == 0 && ((v86 >> v62) & 1) == 0)
              {
                break;
              }

              sub_100075768(v97, &qword_1005053F0, &unk_10040CDE0);
              if (v109 == ++v62)
              {
                return v89;
              }
            }

            sub_10007FC0C();
            swift_allocError();
            *(v67 + 8) = 0;
            *(v67 + 16) = 0;
            *v67 = 3;
            *(v67 + 24) = 3;
            goto LABEL_72;
          }
        }

        else if (!BYTE6(v25))
        {
          goto LABEL_56;
        }

        v33 = sub_1001AC940(a1, 1);
        if (v4)
        {
        }

        v34 = v33;
        v35 = v109;
        if (v109)
        {
          v36 = 0;
          v37 = _swiftEmptyArrayStorage;
          do
          {
            v38 = &v92[4 * v36];
            v39 = v36;
            while (1)
            {
              if (v39 >= v35)
              {
                __break(1u);
LABEL_78:
                __break(1u);
                goto LABEL_79;
              }

              v40 = v38[1];
              v93 = *v38;
              v94 = v40;
              v41 = v38[3];
              v95 = v38[2];
              v96 = v41;
              v36 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                goto LABEL_78;
              }

              v42 = v38[2];
              *&v97[56] = v38[3];
              *&v97[40] = v42;
              v43 = *v38;
              *&v97[24] = v38[1];
              *&v97[8] = v43;
              *v97 = v39;
              if ((v97[32] & 1) != 0 || *&v97[24] == v34)
              {
                break;
              }

              sub_1000938D4(&v93, &v99, &qword_1005053F0, &unk_10040CDE0);
              sub_100075768(v97, &qword_100505400, &qword_10040CC90);
              ++v39;
              v38 += 4;
              v35 = v109;
              if (v36 == v109)
              {
                goto LABEL_42;
              }
            }

            sub_1000938D4(&v93, &v99, &qword_1005053F0, &unk_10040CDE0);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v98[0] = v37;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10019F5D4(0, v37[2] + 1, 1);
              v37 = v98[0];
            }

            v46 = v37[2];
            v45 = v37[3];
            if (v46 >= v45 >> 1)
            {
              sub_10019F5D4((v45 > 1), v46 + 1, 1);
              v37 = v98[0];
            }

            v37[2] = v46 + 1;
            v47 = &v37[9 * v46];
            *(v47 + 2) = *v97;
            v48 = *&v97[16];
            v49 = *&v97[32];
            v50 = *&v97[48];
            v47[12] = *&v97[64];
            *(v47 + 4) = v49;
            *(v47 + 5) = v50;
            *(v47 + 3) = v48;
            v35 = v109;
          }

          while (v36 != v109);
        }

        else
        {
          v37 = _swiftEmptyArrayStorage;
        }

LABEL_42:
        a1 = v83;
        if (v37[2] == 1)
        {
          break;
        }

        if ((a3 & 1) == 0)
        {

          v68 = 0;
          v69 = *v83;
          v70 = v83[1] >> 62;
          if (v70 > 1)
          {
            if (v70 == 2)
            {
              v68 = *(v69 + 16);
            }
          }

          else if (v70)
          {
            v68 = v69;
          }

          sub_10007FC0C();
          swift_allocError();
          *v71 = v34;
          *(v71 + 8) = v68;
          *(v71 + 16) = 0;
          v72 = 2;
          goto LABEL_70;
        }

        sub_1001AD294(v83, 0);
        v4 = 0;
        result = sub_10006A178(v51, v52);
      }

      v53 = *(v37 + 3);
      v54 = *(v37 + 5);
      *&v97[32] = *(v37 + 4);
      *&v97[48] = v54;
      *&v97[64] = v37[12];
      *v97 = *(v37 + 2);
      *&v97[16] = v53;
      sub_1000938D4(v97, &v93, &qword_100505400, &qword_10040CC90);

      if (*v97 > 0x40uLL)
      {
        v55 = 0;
        goto LABEL_49;
      }

      if (*v97 == 64)
      {
        v78 = 0;
      }

      else
      {
        v55 = 1 << v97[0];
LABEL_49:
        if ((v55 & v86) != 0)
        {
LABEL_79:

          sub_10007FC0C();
          swift_allocError();
          *(v76 + 8) = 0;
          *(v76 + 16) = 0;
          *v76 = 6;
          *(v76 + 24) = 3;
          swift_willThrow();
          v74 = &qword_100505400;
          v75 = &qword_10040CC90;
          return sub_100075768(v97, v74, v75);
        }

        if (*v97 <= 0x40uLL)
        {
          v56 = 1 << v97[0];
        }

        else
        {
          v56 = 0;
        }

        v78 = v56;
      }

      v80 = *&v97[8];
      v88 = *&v97[16];
      v57 = *&v97[40];
      v58 = *&v97[48];
      v103 = *&v97[24];
      v104 = *&v97[32];
      v105 = *&v97[40];
      v106 = *&v97[48];
      v59 = v97[56];
      v107 = v97[56];
      v108 = *&v97[64];
      sub_1000938D4(v97, &v93, &qword_100505400, &qword_10040CC90);
      sub_1001AF6EC(v57, v58, v59);

      v4 = 0;
      v60 = sub_1001A93E0(v83, &v103);
      v86 |= v78;
      v61 = swift_isUniquelyReferenced_nonNull_native();
      *&v93 = v89;
      sub_100316520(v60, v80, v88, v61);

      result = sub_100075768(v97, &qword_100505400, &qword_10040CC90);
      v89 = v93;
      goto LABEL_15;
    }
  }

  sub_10007FC0C();
  swift_allocError();
  *(v73 + 8) = 0;
  *(v73 + 16) = 0;
  *v73 = 2;
  *(v73 + 24) = 3;
LABEL_72:
  swift_willThrow();
  v74 = &qword_1005053F0;
  v75 = &unk_10040CDE0;
  return sub_100075768(v97, v74, v75);
}

uint64_t sub_1001AB134(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 32);
  v8 = *a2;
  if (v6)
  {
    if (v7 >= 0x40)
    {
      sub_10007FC0C();
      swift_allocError();
      v39 = 2;
LABEL_109:
      *(v38 + 8) = 0;
      *(v38 + 16) = 0;
      *v38 = v39;
      *(v38 + 24) = 3;
      return swift_willThrow();
    }

    v8 = 0;
  }

  v10 = a2[2];
  v9 = a2[3];
  v11 = v7 >> 6;
  if (v7 >> 6 <= 1)
  {
    if (v11)
    {
      if (a2[1])
      {
        goto LABEL_144;
      }

      v40 = result;
      result = sub_1001ABEBC(result, a2[2]);
      if (!v3)
      {
        v41 = result;
        sub_1001AE5BC(v8);
        sub_1001AE6D0(v41, a3);
        return sub_1001AF128(v40, v10, a3);
      }

      return result;
    }

    v12 = *(result + 24);
    v13 = sub_1000752B0(result, v12);
    *(&v85 + 1) = v12;
    v14 = sub_1000B9634(&v84);
    (*(*(v12 - 8) + 16))(v14, v13, v12);
    v15 = sub_1001ABB9C(v88, &v84);
    v17 = v16;
    result = sub_1000752F4(&v84);
    if (v3)
    {
      return result;
    }

    v80 = a3;
    v18 = *(v10 + 16);
    if (v18)
    {
      v19 = 0;
      v20 = v10 + 32;
      v21 = _swiftEmptyArrayStorage;
      v101 = v10 + 32;
      do
      {
        v22 = (v20 + (v19 << 6));
        v23 = v19;
        while (1)
        {
          if (v23 >= v18)
          {
            __break(1u);
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

          v24 = *v22;
          v25 = v22[1];
          v26 = v22[2];
          v87 = v22[3];
          v85 = v25;
          v86 = v26;
          v84 = v24;
          v19 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_134;
          }

          if (v84 == v15 && *(&v84 + 1) == v17)
          {
            break;
          }

          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if (result)
          {
            break;
          }

          ++v23;
          v22 += 4;
          if (v19 == v18)
          {
            goto LABEL_101;
          }
        }

        sub_1000938D4(&v84, &v82, &qword_1005053F0, &unk_10040CDE0);
        result = swift_isUniquelyReferenced_nonNull_native();
        v81[0] = v21;
        if ((result & 1) == 0)
        {
          result = sub_10019F5F4(0, v21[2] + 1, 1);
          v21 = v81[0];
        }

        v20 = v101;
        v29 = v21[2];
        v28 = v21[3];
        v30 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          result = sub_10019F5F4((v28 > 1), v29 + 1, 1);
          v30 = v29 + 1;
          v21 = v81[0];
        }

        v21[2] = v30;
        v31 = &v21[8 * v29];
        v32 = v84;
        v33 = v85;
        v34 = v87;
        v31[4] = v86;
        v31[5] = v34;
        v31[2] = v32;
        v31[3] = v33;
      }

      while (v19 != v18);
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

LABEL_101:

    if (v21[2])
    {
      v71 = *(v21 + 3);
      v84 = *(v21 + 2);
      v85 = v71;
      v72 = *(v21 + 5);
      v86 = *(v21 + 4);
      v87 = v72;
      sub_1000938D4(&v84, &v82, &qword_1005053F0, &unk_10040CDE0);

      v93 = v85;
      v94 = WORD4(v85);
      v95 = v86;
      v96 = v87;
      v97 = *(&v87 + 1);
      sub_1001AB134(v88, &v93, v80);
      sub_100075768(&v84, &qword_1005053F0, &unk_10040CDE0);
    }

    else
    {

      sub_10007FC0C();
      swift_allocError();
      *(v73 + 8) = 0;
      *(v73 + 16) = 0;
      *v73 = 2;
      *(v73 + 24) = 3;
      swift_willThrow();
    }

    v37 = v88;
    return sub_1000752F4(v37);
  }

  if (v11 == 2)
  {
    v35 = *(v10 + 48);
    v91 = *(v10 + 32);
    v92 = v35;
    v90 = *(v10 + 16);
    v98 = v91;
    v99 = *(v10 + 48);
    v100[0] = *(&v35 + 1);
    sub_1000BC094(result, &v82);
    sub_1001AF70C(&v98, v81);
    sub_1000938D4(v100, v81, &qword_100504EC8, &qword_10040C3B0);
    sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
    sub_100068FC4(&qword_1005054C8, &qword_10040CDF0);
    if (!swift_dynamicCast())
    {
      v89 = 0;
      memset(v88, 0, sizeof(v88));
      sub_100075768(v88, &qword_1005054D0, &qword_10040CDF8);
      sub_10007FC0C();
      swift_allocError();
      *(v63 + 8) = 0;
      *(v63 + 16) = 0;
      *v63 = 2;
      *(v63 + 24) = 3;
      swift_willThrow();
      sub_10018C454(&v98);
      return sub_100075768(v100, &qword_100504EC8, &qword_10040C3B0);
    }

    result = sub_1000BC104(v88, &v84);
    if (v6)
    {
      goto LABEL_145;
    }

    v36 = sub_1001AC450(&v84, &v90);
    if (!v3)
    {
      v64 = v36;
      sub_1001AE5BC(v8);
      sub_1001AE6D0(v64, a3);
      v65 = sub_1000752B0(&v84, *(&v85 + 1));
      result = sub_10034CD08(*v65);
      v66 = result;
      v67 = *(result + 16);
      if (v67)
      {
        v68 = 0;
        v69 = result + 32;
        while (v68 < *(v66 + 16))
        {
          sub_1000BC094(v69, &v82);
          sub_1001AB134(&v82, &v90, a3);
          ++v68;
          result = sub_1000752F4(&v82);
          v69 += 40;
          if (v67 == v68)
          {
            goto LABEL_95;
          }
        }

LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

LABEL_95:
      sub_10018C454(&v98);
      sub_100075768(v100, &qword_100504EC8, &qword_10040C3B0);

      v37 = &v84;
      return sub_1000752F4(v37);
    }

    goto LABEL_29;
  }

  if (!(v9 | v10) && v7 == 192)
  {
    v42 = a3;
    sub_1000BC094(result, &v84);
    sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
    result = swift_dynamicCast();
    if (result)
    {
      v45 = v82;
      v44 = v83;
      v46 = a2[5];
      v47 = *(v46 + 16);
      v48 = v83 >> 62;
      a3 = v42;
      if (!v47)
      {
LABEL_96:
        if (v6)
        {
          goto LABEL_146;
        }

        result = sub_1001AE5BC(v8);
        if (v48 > 1)
        {
          if (v48 == 2)
          {
            v77 = *(v82 + 16);
            v76 = *(v82 + 24);
            v70 = v76 - v77;
            if (__OFSUB__(v76, v77))
            {
              __break(1u);
              sub_1000752F4(&v82);

LABEL_29:
              sub_10018C454(&v98);
              sub_100075768(v100, &qword_100504EC8, &qword_10040C3B0);
              v37 = &v84;
              return sub_1000752F4(v37);
            }
          }

          else
          {
            v70 = 0;
          }
        }

        else
        {
          if (v48)
          {
            goto LABEL_121;
          }

          v70 = BYTE6(v83);
        }

LABEL_124:
        sub_1001AE6D0(v70, a3);
        Data.append(_:)();
        return sub_10006A178(v45, v44);
      }

      v49 = HIDWORD(v82) - v82;
      v7 = __OFSUB__(HIDWORD(v82), v82);
      v10 = BYTE6(v83);
      v50 = (v46 + 72);
      while (1)
      {
        v51 = *(v50 - 3);
        v52 = *(v50 - 1);
        if (*(v50 - 32))
        {
          goto LABEL_54;
        }

        v53 = *(v50 - 5);
        if (v48 <= 1)
        {
          break;
        }

        if (v48 == 2)
        {
          result = *(v82 + 16);
          v55 = *(v82 + 24);
          v56 = __OFSUB__(v55, result);
          v54 = v55 - result;
          if (v56)
          {
            goto LABEL_137;
          }

          goto LABEL_51;
        }

        if (v53 > 0)
        {
          goto LABEL_111;
        }

LABEL_54:
        if (*(v50 - 16))
        {
          goto LABEL_64;
        }

        if (v48 <= 1)
        {
          v57 = BYTE6(v83);
          if (v48)
          {
            v57 = v49;
            if (v7)
            {
              goto LABEL_139;
            }
          }

LABEL_61:
          if (v51 < v57)
          {
            goto LABEL_111;
          }

          goto LABEL_64;
        }

        if (v48 == 2)
        {
          v59 = *(v82 + 16);
          v58 = *(v82 + 24);
          v56 = __OFSUB__(v58, v59);
          v57 = v58 - v59;
          if (v56)
          {
            goto LABEL_140;
          }

          goto LABEL_61;
        }

        if (v51 < 0)
        {
          goto LABEL_111;
        }

LABEL_64:
        if ((*v50 & 1) == 0)
        {
          if (v48 > 1)
          {
            if (v48 == 2)
            {
              v62 = *(v82 + 16);
              v61 = *(v82 + 24);
              v56 = __OFSUB__(v61, v62);
              v60 = v61 - v62;
              if (v56)
              {
                goto LABEL_142;
              }
            }

            else
            {
              v60 = 0;
            }
          }

          else
          {
            v60 = BYTE6(v83);
            if (v48)
            {
              v60 = v49;
              if (v7)
              {
                goto LABEL_141;
              }
            }
          }

          if (!v52)
          {
            goto LABEL_136;
          }

          if (v60 == 0x8000000000000000 && v52 == -1)
          {
            __break(1u);
            goto LABEL_78;
          }

          if (v60 % v52)
          {
LABEL_111:
            if (v6)
            {
              sub_10007FC0C();
              swift_allocError();
              *(v74 + 8) = 0;
              *(v74 + 16) = 0;
              *v74 = 5;
              v75 = 3;
              goto LABEL_131;
            }

            if (v48 > 1)
            {
              if (v48 == 2)
              {
                v79 = *(v82 + 16);
                v78 = *(v82 + 24);
                v10 = v78 - v79;
                if (!__OFSUB__(v78, v79))
                {
                  goto LABEL_130;
                }

                __break(1u);
              }

              v10 = 0;
            }

            else if (v48)
            {
              v10 = v49;
              if (v7)
              {
                __break(1u);
LABEL_121:
                if (!__OFSUB__(HIDWORD(v82), v82))
                {
                  v70 = HIDWORD(v82) - v82;
                  goto LABEL_124;
                }

LABEL_143:
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
                return result;
              }
            }

LABEL_130:
            sub_10007FC0C();
            swift_allocError();
            *v74 = v5;
            *(v74 + 8) = v10;
            *(v74 + 16) = 0;
            v75 = 1;
LABEL_131:
            *(v74 + 24) = v75;
            swift_willThrow();
            return sub_10006A178(v45, v44);
          }
        }

        v50 += 48;
        if (!--v47)
        {
          goto LABEL_96;
        }
      }

      v54 = BYTE6(v83);
      if (v48)
      {
        v54 = v49;
        if (v7)
        {
          goto LABEL_138;
        }
      }

LABEL_51:
      if (v54 < v53)
      {
        goto LABEL_111;
      }

      goto LABEL_54;
    }

    goto LABEL_108;
  }

LABEL_78:
  if (v10 == 1 && !v9 && v7 == 192)
  {
    sub_1000BC094(result, &v84);
    sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
    result = swift_dynamicCast();
    if (result)
    {
      if (v6)
      {
        goto LABEL_147;
      }

      return sub_1001AEB24(v8, v82, a3);
    }

    goto LABEL_108;
  }

  if (v10 != 2 || v9 || v7 != 192)
  {
    sub_1000BC094(result, &v84);
    sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
    if (swift_dynamicCast())
    {
      Data.append(_:)();
      return sub_10006A178(v82, v83);
    }

    goto LABEL_108;
  }

  sub_1000BC094(result, &v84);
  sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
  result = swift_dynamicCast();
  if (!result)
  {
LABEL_108:
    sub_10007FC0C();
    swift_allocError();
    v39 = 4;
    goto LABEL_109;
  }

  if (v6)
  {
    goto LABEL_148;
  }

  return sub_1001AEFAC(v8, v82, a3);
}

uint64_t sub_1001ABB9C(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v3 = type metadata accessor for Mirror();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000754F0(a2, &v15);
  Mirror.init(reflecting:)();
  v7 = Mirror.children.getter();
  (*(v4 + 8))(v6, v3);
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  result = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v8 == result)
  {
    v10 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v10)
    {
      swift_unknownObjectRelease();

LABEL_8:
      sub_10007FC0C();
      swift_allocError();
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *v11 = 2;
      *(v11 + 24) = 3;
      swift_willThrow();
      return v7;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();
    swift_unknownObjectRelease();

    v17[0] = v15;
    v17[1] = v16[0];
    v17[2] = v16[1];
    sub_1000938D4(v17, &v15, &qword_1005054D8, &unk_10040CE00);

    sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_100075768(v17, &qword_1005054D8, &unk_10040CE00);
      memset(v12, 0, sizeof(v12));
      v13 = 0;
      sub_100075768(v12, &qword_1005054E0, &unk_10040CE10);
      goto LABEL_8;
    }

    sub_1000BC104(v12, v14);
    result = sub_1000938D4(v17, &v15, &qword_1005054D8, &unk_10040CE00);
    if (*(&v15 + 1))
    {
      v7 = v15;
      sub_100075768(v17, &qword_1005054D8, &unk_10040CE00);
      sub_1000BC104(v14, v18);
      sub_1000752F4(v16);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001ABEBC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = sub_1000752B0(a1, v10);
  v55[3] = v10;
  v12 = sub_1000B9634(v55);
  (*(*(v10 - 8) + 16))(v12, v11, v10);
  v46 = v9;
  result = Mirror.init(reflecting:)();
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = a2 + 88;
    v41 = v6;
    v40 = v7;
    v45 = v14;
    v39 = a2 + 88;
    while (2)
    {
      v42 = v15;
      v18 = (v17 + (v16 << 6));
      while (1)
      {
        if (v16 >= v14)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        if (__OFADD__(v16, 1))
        {
          goto LABEL_24;
        }

        v47 = v16 + 1;
        v19 = *(v18 - 6);
        v44 = *(v18 - 5);
        v43 = *(v18 - 32);
        v48 = *(v18 - 31);
        v21 = *(v18 - 3);
        v20 = *(v18 - 2);
        v22 = *(v18 - 8);
        v23 = *v18;
        v49 = v3;
        v24 = *(v18 - 7);

        v50 = v21;
        v51 = v20;
        v52 = v22;
        sub_1001AF744(v21, v20, v22);
        v57 = v23;

        v25 = Mirror.children.getter();
        __chkstk_darwin(v25);
        *(&v38 - 2) = v24;
        *(&v38 - 1) = v19;
        v26 = v49;
        v27 = dispatch thunk of _AnySequenceBox._filter(_:)();
        v3 = v26;

        if (*(v27 + 16) != 1)
        {

          sub_10007FC0C();
          swift_allocError();
          *(v33 + 8) = 0;
          *(v33 + 16) = 0;
          *v33 = 2;
          *(v33 + 24) = 3;
          swift_willThrow();
          sub_1001AF6EC(v50, v51, v52);
          goto LABEL_18;
        }

        sub_1000938D4(v27 + 32, v55, &qword_1005054D8, &unk_10040CE00);

        sub_100068FC4(&qword_100502420, &qword_10040F310);
        swift_dynamicCast();
        if (v54)
        {
          break;
        }

        sub_100075768(&v53, &qword_100502420, &qword_10040F310);
        if ((v48 & 1) == 0)
        {
          v34 = v52;
          v35 = v51;
          v36 = v50;
          sub_10007FC0C();
          swift_allocError();
          *(v37 + 8) = 0;
          *(v37 + 16) = 0;
          *v37 = 3;
          *(v37 + 24) = 3;
          swift_willThrow();
          sub_1001AF6EC(v36, v35, v34);
LABEL_18:

          (*(v40 + 8))(v46, v41);
          return v42;
        }

        sub_1001AF6EC(v50, v51, v52);

        ++v16;
        v18 += 8;
        v14 = v45;
        if (v47 == v45)
        {
          v6 = v41;
          v7 = v40;
          v15 = v42;
          goto LABEL_20;
        }
      }

      sub_100075D50(&v53, v56);
      sub_1000754F0(v56, &v53);
      sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
      swift_dynamicCast();
      v29 = v50;
      v28 = v51;
      v30 = v52;
      v31 = sub_1001ADEA8(v55, v44, v43, v50, v51, v52);
      if (v26)
      {
        sub_1001AF6EC(v29, v28, v30);

        sub_1000752F4(v56);
        (*(v40 + 8))(v46, v41);
        sub_1000752F4(v55);
        return v42;
      }

      v32 = v31;
      sub_1001AF6EC(v29, v28, v30);

      result = sub_1000752F4(v56);
      v15 = v42 + v32;
      v6 = v41;
      v7 = v40;
      if (!__OFADD__(v42, v32))
      {
        result = sub_1000752F4(v55);
        v16 = v47;
        v14 = v45;
        v17 = v39;
        if (v47 != v45)
        {
          continue;
        }

        goto LABEL_20;
      }

      break;
    }

LABEL_25:
    __break(1u);
  }

  else
  {
    v15 = 0;
LABEL_20:
    (*(v7 + 8))(v46, v6);
    return v15;
  }

  return result;
}

uint64_t sub_1001AC450(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1000752B0(a1, a1[3]);
  v6 = sub_10034CD08(*v5);
  v7 = v6[2];
  if (v7)
  {
    v24 = _swiftEmptyArrayStorage;
    result = sub_10019F654(0, v7, 0);
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v11 = (v6 + 4);
    while (v9 < v6[2])
    {
      sub_1000BC094(v11, v23);
      v12 = sub_1001ADEA8(v23, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
      if (v3)
      {
        sub_1000752F4(v23);

        return a2;
      }

      v13 = v12;
      v14 = v6;
      v15 = v7;
      result = sub_1000752F4(v23);
      v24 = v10;
      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_10019F654((v16 > 1), v17 + 1, 1);
        v10 = v24;
      }

      ++v9;
      v10[2] = v17 + 1;
      v10[v17 + 4] = v13;
      v11 += 40;
      v7 = v15;
      v18 = v15 == v9;
      v6 = v14;
      v3 = 0;
      if (v18)
      {

        v19 = v10[2];
        if (v19)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

    goto LABEL_20;
  }

  v10 = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage[2];
  if (v19)
  {
LABEL_11:
    a2 = 0;
    for (i = 4; ; ++i)
    {
      v21 = v10[i];
      v22 = __OFADD__(a2, v21);
      a2 += v21;
      if (v22)
      {
        break;
      }

      if (!--v19)
      {

        return a2;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

LABEL_17:

  return 0;
}

void *sub_1001AC648(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100068FC4(&qword_1005043F0, &unk_10040CDD0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_1001AC6BC(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_1001AC648(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove(result + 4, a1, v3);
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1001AC738(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      v12 = a3 | a2;
      if (a3 | a2 | a1)
      {
        if (a1 != 1 || v12)
        {
          if (a1 != 2 || v12)
          {
            if (a1 != 3 || v12)
            {
              if (a1 != 4 || v12)
              {
                if (a1 != 5 || v12)
                {
                  if (a1 != 6 || v12)
                  {
                    if (a1 != 7 || v12)
                    {
                      if (a8 == 3 && a5 == 8 && !(a7 | a6))
                      {
                        return 1;
                      }
                    }

                    else if (a8 == 3 && a5 == 7 && !(a7 | a6))
                    {
                      return 1;
                    }
                  }

                  else if (a8 == 3 && a5 == 6 && !(a7 | a6))
                  {
                    return 1;
                  }
                }

                else if (a8 == 3 && a5 == 5 && !(a7 | a6))
                {
                  return 1;
                }
              }

              else if (a8 == 3 && a5 == 4 && !(a7 | a6))
              {
                return 1;
              }
            }

            else if (a8 == 3 && a5 == 3 && !(a7 | a6))
            {
              return 1;
            }
          }

          else if (a8 == 3 && a5 == 2 && !(a7 | a6))
          {
            return 1;
          }
        }

        else if (a8 == 3 && a5 == 1 && !(a7 | a6))
        {
          return 1;
        }
      }

      else if (a8 == 3 && !(a7 | a6 | a5))
      {
        return 1;
      }

      return 0;
    }

    if (a8 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (!a4)
    {
      if (!a8)
      {
        return a1 == a5 && a2 == a6 && a3 == a7;
      }

      return 0;
    }

    if (a8 != 1)
    {
      return 0;
    }
  }

  return a1 == a5 && a2 == a6;
}

uint64_t sub_1001AC940(uint64_t a1, char a2)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_64;
    }

    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (v11)
    {
      goto LABEL_86;
    }

    if (!v12)
    {
      goto LABEL_64;
    }
  }

  else if (v8)
  {
    if (__OFSUB__(HIDWORD(v6), v6))
    {
      goto LABEL_87;
    }

    if (HIDWORD(v6) == v6)
    {
      goto LABEL_64;
    }
  }

  else if (!BYTE6(v7))
  {
LABEL_64:
    sub_10007FC0C();
    swift_allocError();
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
    *v35 = 0;
    *(v35 + 24) = 3;
    swift_willThrow();
    return v2;
  }

  v13 = Data._Representation.subscript.getter();
  v2 = v13;
  if ((~v13 & 0x1E) != 0)
  {
    if ((a2 & 1) == 0)
    {
      v18 = *a1;
      v19 = *(a1 + 8);
      v20 = v19 >> 62;
      if ((v19 >> 62) > 1)
      {
        v21 = 0;
        if (v20 == 2)
        {
          v21 = *(v18 + 16);
        }
      }

      else
      {
        v21 = v18;
        if (!v20)
        {
          v21 = 0;
        }
      }

      if (__OFADD__(v21, 1))
      {
        goto LABEL_89;
      }

      if (v20 > 1)
      {
        if (v20 == 2)
        {
          v25 = *(v18 + 24);
        }

        else
        {
          v25 = 0;
        }
      }

      else if (v20)
      {
        v25 = v18 >> 32;
      }

      else
      {
        v25 = BYTE6(v19);
      }

      if (v25 >= v21 + 1)
      {
        sub_100069E2C(*a1, *(a1 + 8));
        v41 = Data._Representation.subscript.getter();
        v43 = v42;
        sub_10006A178(v18, v19);
        sub_10006A178(*a1, *(a1 + 8));
        *a1 = v41;
        *(a1 + 8) = v43;
        return v2;
      }

LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }
  }

  else
  {
    v14 = *a1;
    v15 = *(a1 + 8);
    v16 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      v17 = 0;
      if (v16 == 2)
      {
        v17 = *(v14 + 16);
      }
    }

    else
    {
      v17 = v14;
      if (!v16)
      {
        v17 = 0;
      }
    }

    v22 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_88;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v24 = *(v14 + 24);
        if (v24 >= v22)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v24 = 0;
        if (v22 <= 0)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      v23 = BYTE6(v15);
      v14 >>= 32;
      if (v16)
      {
        v24 = v14;
      }

      else
      {
        v24 = v23;
      }

      if (v24 >= v22)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_42:
    for (i = *(v3 + v14); ; i = *(&v47 + v22))
    {
      v2 = i | (v2 << 8);
      ++v22;
      if ((i & 0x80) == 0)
      {
        break;
      }

LABEL_44:
      if (v24 == v22)
      {
        goto LABEL_64;
      }

      v27 = *a1;
      v28 = *(a1 + 8);
      v29 = v28 >> 62;
      if ((v28 >> 62) > 1)
      {
        if (v29 == 2)
        {
          if (v22 >= *(v27 + 16))
          {
            if (v22 < *(v27 + 24))
            {
              v30 = __DataStorage._bytes.getter();
              if (v30)
              {
                v3 = v30;
                v31 = __DataStorage._offset.getter();
                v14 = v22 - v31;
                if (!__OFSUB__(v22, v31))
                {
                  goto LABEL_42;
                }

LABEL_85:
                __break(1u);
LABEL_86:
                __break(1u);
LABEL_87:
                __break(1u);
LABEL_88:
                __break(1u);
LABEL_89:
                __break(1u);
                goto LABEL_90;
              }

LABEL_94:
              __break(1u);
            }

LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      if (v29)
      {
        if (v22 >= v27 >> 32 || v22 < v27)
        {
          goto LABEL_83;
        }

        v33 = __DataStorage._bytes.getter();
        if (!v33)
        {
          goto LABEL_93;
        }

        v3 = v33;
        v34 = __DataStorage._offset.getter();
        v14 = v22 - v34;
        if (__OFSUB__(v22, v34))
        {
          __break(1u);
          goto LABEL_64;
        }

        goto LABEL_42;
      }

      if (v22 >= BYTE6(v28))
      {
        goto LABEL_82;
      }

      v47 = *a1;
      v48 = BYTE2(v27);
      v49 = BYTE3(v27);
      v50 = BYTE4(v27);
      v51 = BYTE5(v27);
      v52 = BYTE6(v27);
      v53 = HIBYTE(v27);
      v54 = v28;
      v55 = BYTE2(v28);
      v56 = BYTE3(v28);
      v57 = BYTE4(v28);
      v58 = BYTE5(v28);
    }

    if ((a2 & 1) == 0)
    {
      v37 = *a1;
      v38 = *(a1 + 8);
      v39 = v38 >> 62;
      if ((v38 >> 62) > 1)
      {
        if (v39 == 2)
        {
          v40 = *(v37 + 24);
        }

        else
        {
          v40 = 0;
        }
      }

      else if (v39)
      {
        v40 = v37 >> 32;
      }

      else
      {
        v40 = BYTE6(v38);
      }

      if (v40 > v22 - 1)
      {
        v44 = Data._Representation.subscript.getter();
        v46 = v45;
        sub_10006A178(*a1, *(a1 + 8));
        *a1 = v44;
        *(a1 + 8) = v46;
        return v2;
      }

      goto LABEL_91;
    }
  }

  return v2;
}

uint64_t sub_1001ACD80(uint64_t a1)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_39;
    }

    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (v11)
    {
      goto LABEL_110;
    }

    if (!v12)
    {
      goto LABEL_39;
    }
  }

  else if (v8)
  {
    if (__OFSUB__(HIDWORD(v6), v6))
    {
      goto LABEL_111;
    }

    if (HIDWORD(v6) == v6)
    {
      goto LABEL_39;
    }
  }

  else if (!BYTE6(v7))
  {
    goto LABEL_39;
  }

  result = sub_1000CA97C(v6, v7);
  if ((result & 0x100) != 0)
  {
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
    return result;
  }

  v2 = result;
  if (result <= 0x7Fu)
  {
    v1 = *a1;
    v3 = *(a1 + 8);
    v14 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      v15 = 0;
      if (v14 == 2)
      {
        v15 = *(v1 + 16);
      }
    }

    else
    {
      v15 = v1;
      if (!v14)
      {
        v15 = 0;
      }
    }

    v4 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_112;
    }

    if (v14 <= 1)
    {
      if (v14)
      {
        v19 = v1 >> 32;
      }

      else
      {
        v19 = BYTE6(v3);
      }

      goto LABEL_42;
    }

LABEL_31:
    if (v14 == 2)
    {
      v19 = *(v1 + 24);
    }

    else
    {
      v19 = 0;
    }

LABEL_42:
    if (v19 < v4)
    {
      goto LABEL_113;
    }

    goto LABEL_43;
  }

  v16 = *a1;
  v17 = *(a1 + 8);
  v14 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v14 != 2)
    {
LABEL_39:
      sub_10007FC0C();
      swift_allocError();
      v24[2] = 0;
      v25 = v24 + 3;
      *v24 = 0;
LABEL_40:
      v24[1] = 0;
      *v25 = 3;
      swift_willThrow();
      return v2;
    }

    v21 = *(v16 + 16);
    v20 = *(v16 + 24);
    v11 = __OFSUB__(v20, v21);
    v18 = v20 - v21;
    if (v11)
    {
      __break(1u);
      goto LABEL_31;
    }
  }

  else if (v14)
  {
    LODWORD(v18) = HIDWORD(v16) - v16;
    if (__OFSUB__(HIDWORD(v16), v16))
    {
      goto LABEL_115;
    }

    v18 = v18;
  }

  else
  {
    v18 = BYTE6(v17);
  }

  v22 = result & 0x7F;
  if (v18 <= v22)
  {
    goto LABEL_39;
  }

  if (v14)
  {
    if (v14 == 2)
    {
      v23 = *(v16 + 16);
    }

    else
    {
      v23 = v16;
    }
  }

  else
  {
    v23 = 0;
  }

  if (__OFADD__(v23, 1))
  {
    goto LABEL_114;
  }

  result = Data._Representation.subscript.getter();
  if (!result)
  {
    sub_10007FC0C();
    swift_allocError();
    v24[2] = 0;
    v25 = v24 + 3;
    *v24 = 8;
    goto LABEL_40;
  }

  v29 = 0;
  v1 = *a1;
  v3 = *(a1 + 8);
  v30 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v30 == 2)
    {
      v29 = *(v1 + 16);
    }
  }

  else if (v30)
  {
    v29 = v1;
  }

  v31 = v29 + 1;
  if (__OFADD__(v29, 1))
  {
    goto LABEL_116;
  }

  v32 = 0;
  if (v30 > 1)
  {
    if (v30 == 2)
    {
      v32 = *(v1 + 16);
    }
  }

  else if (v30)
  {
    v32 = v1;
  }

  v33 = v32 + 1;
  if (__OFADD__(v32, 1))
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v11 = __OFADD__(v33, v22);
  v34 = v33 + v22;
  if (v11)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  if (v34 < v31)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  if (v31 == v34)
  {
    v2 = 0;
    goto LABEL_89;
  }

  v2 = 0;
  v35 = -v32 - v22;
  while (1)
  {
    v37 = *a1;
    v38 = *(a1 + 8);
    v39 = v38 >> 62;
    if ((v38 >> 62) > 1)
    {
      if (v39 != 2)
      {
        goto LABEL_122;
      }

      if (v31 < *(v37 + 16))
      {
        goto LABEL_105;
      }

      if (v31 >= *(v37 + 24))
      {
        goto LABEL_108;
      }

      result = __DataStorage._bytes.getter();
      if (!result)
      {
        goto LABEL_124;
      }

      v40 = result;
      result = __DataStorage._offset.getter();
      v41 = v31 - result;
      if (__OFSUB__(v31, result))
      {
        goto LABEL_109;
      }

      goto LABEL_67;
    }

    if (v39)
    {
      break;
    }

    if (v31 >= BYTE6(v38))
    {
      goto LABEL_106;
    }

    v46 = *a1;
    v47 = BYTE2(v37);
    v48 = BYTE3(v37);
    v49 = BYTE4(v37);
    v50 = BYTE5(v37);
    v51 = BYTE6(v37);
    v52 = HIBYTE(v37);
    v53 = v38;
    v54 = BYTE2(v38);
    v55 = BYTE3(v38);
    v56 = BYTE4(v38);
    v57 = BYTE5(v38);
    v36 = *(&v46 + v31);
LABEL_68:
    ++v31;
    v2 = v36 | (v2 << 8);
    if (v35 + v31 == 1)
    {
      goto LABEL_88;
    }
  }

  if (v31 >= v37 >> 32 || v31 < v37)
  {
    goto LABEL_107;
  }

  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_123;
  }

  v40 = result;
  result = __DataStorage._offset.getter();
  v41 = v31 - result;
  if (!__OFSUB__(v31, result))
  {
LABEL_67:
    v36 = *(v40 + v41);
    goto LABEL_68;
  }

  __break(1u);
LABEL_88:
  v1 = *a1;
  v3 = *(a1 + 8);
  v30 = v3 >> 62;
LABEL_89:
  v43 = v22 + 1;
  if (v30 > 1)
  {
    v44 = 0;
    if (v30 == 2)
    {
      v44 = *(v1 + 16);
    }
  }

  else
  {
    v44 = v1;
    if (!v30)
    {
      v44 = 0;
    }
  }

  if (__OFADD__(v44, v43))
  {
LABEL_120:
    __break(1u);
  }

  if (v30 > 1)
  {
    if (v30 == 2)
    {
      v45 = *(v1 + 24);
    }

    else
    {
      v45 = 0;
    }
  }

  else if (v30)
  {
    v45 = v1 >> 32;
  }

  else
  {
    v45 = BYTE6(v3);
  }

  if (v45 < v44 + v43)
  {
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
    goto LABEL_117;
  }

LABEL_43:
  sub_100069E2C(v1, v3);
  v26 = Data._Representation.subscript.getter();
  v28 = v27;
  sub_10006A178(v1, v3);
  sub_10006A178(*a1, *(a1 + 8));
  *a1 = v26;
  *(a1 + 8) = v28;
  return v2;
}

void sub_1001AD294(uint64_t *a1, char a2)
{
  v5 = *a1;
  v6 = a1[1];
  sub_100069E2C(*a1, v6);
  sub_1001AC940(a1, 0);
  if (v2)
  {
    goto LABEL_28;
  }

  v7 = sub_1001ACD80(a1);
  v8 = *a1;
  v9 = a1[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    v11 = 0;
    if (v10 == 2)
    {
      v11 = *(v8 + 16);
    }
  }

  else
  {
    v11 = v8;
    if (!v10)
    {
      v11 = 0;
    }
  }

  v12 = v11 + v7;
  if (__OFADD__(v11, v7))
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      if (*(v8 + 24) >= v12)
      {
        goto LABEL_14;
      }
    }

    else if (v12 <= 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

  if (v10)
  {
    v13 = v8 >> 32;
  }

  else
  {
    v13 = BYTE6(v9);
  }

  if (v13 < v12)
  {
LABEL_27:
    sub_10007FC0C();
    swift_allocError();
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *v18 = 0;
    *(v18 + 24) = 3;
    swift_willThrow();
LABEL_28:
    sub_10006A178(v5, v6);
    return;
  }

LABEL_14:
  v14 = 0;
  if (a2)
  {
    v15 = v5;
  }

  else
  {
    v15 = *a1;
  }

  if (a2)
  {
    v16 = v6;
  }

  else
  {
    v16 = a1[1];
  }

  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_32;
    }

    v14 = *(v15 + 16);
  }

  else
  {
    if (!v17)
    {
      goto LABEL_32;
    }

    v14 = v15;
  }

  sub_100069E2C(v15, v16);
LABEL_32:
  if (v12 < v14)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  Data._Representation.subscript.getter();
  sub_10006A178(v15, v16);
  v19 = *a1;
  v20 = a1[1];
  sub_100069E2C(*a1, v20);
  sub_10006A178(v19, v20);
  v21 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v21 == 2)
    {
      v22 = *(v19 + 24);
    }

    else
    {
      v22 = 0;
    }
  }

  else if (v21)
  {
    v22 = v19 >> 32;
  }

  else
  {
    v22 = BYTE6(v20);
  }

  if (v22 >= v12)
  {
    v23 = Data._Representation.subscript.getter();
    v25 = v24;
    sub_10006A178(v19, v20);
    sub_10006A178(v5, v6);
    *a1 = v23;
    a1[1] = v25;
    return;
  }

LABEL_44:
  __break(1u);
}

uint64_t sub_1001AD500(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v18 = a2;
  v17 = a1;
  sub_100069E2C(a1, a2);
  sub_1001AD294(&v17, 0);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_10006A178(v17, v18);
  if (!v3 && v8 != a3)
  {
    v13 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      v14 = 0;
      if (v13 == 2)
      {
        v14 = *(a1 + 16);
      }
    }

    else if (v13)
    {
      v14 = a1;
    }

    else
    {
      v14 = 0;
    }

    sub_10007FC0C();
    swift_allocError();
    *v15 = v8;
    *(v15 + 8) = a3;
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    swift_willThrow();
    sub_10006A178(v10, v12);
  }

  return v10;
}

uint64_t sub_1001AD600(uint64_t a1, unint64_t i)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = i >> 62;
  if ((i >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_18;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (!v12)
    {
      if (v13 < 1)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (!v9)
  {
    if (!BYTE6(i))
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (HIDWORD(a1) - a1 < 1)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (v9 == 2)
  {
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v12 = __OFSUB__(v14, v15);
    v16 = v14 - v15;
    if (v12)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v16 <= 8)
    {
      goto LABEL_20;
    }

LABEL_18:
    sub_10007FC0C();
    swift_allocError();
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *v17 = 0;
    *(v17 + 24) = 3;
    swift_willThrow();
    return i;
  }

  if (v9 != 1)
  {
    if (BYTE6(i) <= 8uLL)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(a1) - a1 > 8)
  {
    goto LABEL_18;
  }

LABEL_20:
  v18 = v6;
  v19 = sub_1000CA97C(a1, i);
  if ((v19 & 0x100) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((v19 & 0x80) == 0)
  {
    sub_100069E2C(a1, i);
    Data.Iterator.init(_:at:)();
    v20 = Data.Iterator.next()();
    for (i = 0; (*&v20 & 0x100) == 0; v20 = Data.Iterator.next()())
    {
      i = v20.value | (i << 8);
    }

    (*(v5 + 8))(v8, v18);
    if ((i & 0x8000000000000000) == 0)
    {
      return i;
    }

    goto LABEL_28;
  }

LABEL_32:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001AD89C(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_21;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 != 1)
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v2)
      {
        if (v2 == 2)
        {
          if (*(result + 16) == *(result + 24))
          {
            goto LABEL_21;
          }
        }

        else if (result == result >> 32)
        {
          goto LABEL_21;
        }
      }

      else if ((a2 & 0xFF000000000000) == 0)
      {
        goto LABEL_21;
      }

      v7 = Data._Representation.subscript.getter();
      if (!v7)
      {
        return v7 & 1;
      }

      if (v7 == 255)
      {
        LOBYTE(v7) = 1;
        return v7 & 1;
      }

LABEL_21:
      sub_10007FC0C();
      swift_allocError();
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = 7;
      *(v8 + 24) = 3;
      swift_willThrow();
      return v7 & 1;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      if (BYTE6(a2) != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001AD9C0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 >= 255)
  {
    if (a1 > 0xFFFE)
    {
LABEL_35:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_24;
    }

    v7 = *(a2 + 16);
    v6 = *(a2 + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a3);
    goto LABEL_14;
  }

  LODWORD(v5) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = v5;
LABEL_14:
  v9 = 1;
  if (v5 >= 127)
  {
    do
    {
      ++v9;
      v10 = v5 >= 0x100;
      v5 = v5 >> 8;
    }

    while (v10);
  }

  v8 = __OFADD__(v3, v9);
  v3 += v9;
  if (v8)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    LODWORD(v4) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_34;
    }

    v4 = v4;
  }

  else
  {
    while (v4 > 1)
    {
      if (v4 != 2)
      {
        v4 = 0;
        goto LABEL_30;
      }

      v12 = *(a2 + 16);
      v11 = *(a2 + 24);
      v8 = __OFSUB__(v11, v12);
      v4 = v11 - v12;
      if (!v8)
      {
        goto LABEL_30;
      }

      __break(1u);
LABEL_24:
      v8 = __OFADD__(v3++, 1);
      if (v8)
      {
        goto LABEL_26;
      }
    }

    if (v4)
    {
      goto LABEL_27;
    }

    v4 = BYTE6(a3);
  }

LABEL_30:
  result = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
    goto LABEL_33;
  }

  return result;
}

uint64_t sub_1001ADB18(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_66;
  }

  if (!a1)
  {
    return 1;
  }

  v40 = bswap64(a1);
  v1 = sub_1001E0BBC(&v40, 8uLL);
  v3 = v1;
  v4 = v2;
  v5 = v2 >> 62;
  v38 = v1;
  if ((v2 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v1 + 16);
    }
  }

  else if (v5)
  {
    v6 = v1;
  }

  else
  {
    v6 = 0;
  }

  v8 = v1 >> 32;
  v9 = BYTE6(v2);
  v36 = v1 >> 16;
  v37 = v1 >> 8;
  v34 = HIDWORD(v1);
  v35 = v1 >> 24;
  v32 = HIWORD(v1);
  v33 = v1 >> 40;
  v30 = v2 >> 8;
  v31 = HIBYTE(v1);
  v10 = v2 >> 16;
  v29 = v6;
  v11 = v2 >> 24;
  if (v5 > 1)
  {
    goto LABEL_13;
  }

LABEL_11:
  v12 = BYTE6(v4);
  if (v5)
  {
    v12 = v3 >> 32;
  }

  while (v6 != v12)
  {
    if (v5 == 2)
    {
      if (v6 < *(v3 + 16))
      {
        goto LABEL_54;
      }

      if (v6 >= *(v3 + 24))
      {
        goto LABEL_56;
      }

      v17 = __DataStorage._bytes.getter();
      if (!v17)
      {
        goto LABEL_64;
      }

      v14 = v17;
      v18 = __DataStorage._offset.getter();
      v16 = v6 - v18;
      if (__OFSUB__(v6, v18))
      {
        goto LABEL_58;
      }

      goto LABEL_28;
    }

    if (v5 == 1)
    {
      if (v6 < v38 || v6 >= v8)
      {
        goto LABEL_55;
      }

      v13 = __DataStorage._bytes.getter();
      if (!v13)
      {
        goto LABEL_63;
      }

      v14 = v13;
      v15 = __DataStorage._offset.getter();
      v16 = v6 - v15;
      if (__OFSUB__(v6, v15))
      {
        goto LABEL_57;
      }

LABEL_28:
      if (*(v14 + v16))
      {
        break;
      }

      goto LABEL_32;
    }

    if (v6 >= BYTE6(v4))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v39[0] = v3;
    v39[1] = v37;
    v39[2] = v36;
    v39[3] = v35;
    v39[4] = v34;
    v39[5] = v33;
    v39[6] = v32;
    v39[7] = v31;
    v39[8] = v4;
    v39[9] = v30;
    v39[10] = v10;
    v39[11] = v11;
    v39[12] = BYTE4(v4);
    v39[13] = BYTE5(v4);
    if (v39[v6])
    {
      break;
    }

LABEL_32:
    ++v6;
    if (v5 <= 1)
    {
      goto LABEL_11;
    }

LABEL_13:
    if (v5 != 2)
    {
      if (!v29)
      {
        goto LABEL_38;
      }

LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
    }

    v12 = *(v3 + 24);
  }

  if (v5)
  {
    v9 = v3 >> 32;
    if (v5 == 2)
    {
      v9 = *(v3 + 24);
    }
  }

  if (v9 < v6)
  {
    goto LABEL_59;
  }

LABEL_38:
  v19 = Data._Representation.subscript.getter();
  v21 = v20;
  sub_10006A178(v3, v4);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      v23 = v24 - v25;
      if (__OFSUB__(v24, v25))
      {
        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    if (!v22)
    {
      v23 = BYTE6(v21);
      goto LABEL_48;
    }

LABEL_45:
    if (__OFSUB__(HIDWORD(v19), v19))
    {
      goto LABEL_61;
    }

    v23 = HIDWORD(v19) - v19;
  }

LABEL_48:
  v26 = sub_1000CA97C(v19, v21);
  if ((v26 & 0x100) != 0)
  {
    __break(1u);
LABEL_66:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v27 = v26;
  sub_10006A178(v19, v21);
  v28 = (v27 >> 7) & 1;
  result = v23 + v28;
  if (__OFADD__(v23, v28))
  {
    goto LABEL_60;
  }

  return result;
}

uint64_t sub_1001ADEA8(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v8 = a3;
  if ((a6 >> 6) <= 1u)
  {
    if (!(a6 >> 6))
    {
      a2 = a1[3];
      v10 = sub_1000752B0(a1, a2);
      *(&v61 + 1) = a2;
      v11 = sub_1000B9634(&v60);
      (*(*(a2 - 8) + 16))(v11, v10, a2);
      v12 = sub_1001ABB9C(v65, &v60);
      v14 = v13;
      sub_1000752F4(&v60);
      if (!v6)
      {
        v15 = *(a4 + 16);
        if (v15)
        {
          v16 = 0;
          v17 = a4 + 32;
          a2 = _swiftEmptyArrayStorage;
LABEL_6:
          v18 = (v17 + (v16 << 6));
          v19 = v16;
          while (v19 < v15)
          {
            v20 = *v18;
            v21 = v18[1];
            v22 = v18[3];
            v62 = v18[2];
            v63 = v22;
            v60 = v20;
            v61 = v21;
            v16 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_84;
            }

            v23 = v60 == v12 && *(&v60 + 1) == v14;
            if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              sub_1000938D4(&v60, &v58, &qword_1005053F0, &unk_10040CDE0);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v64 = a2;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_10019F5F4(0, *(a2 + 16) + 1, 1);
                a2 = v64;
              }

              v26 = *(a2 + 16);
              v25 = *(a2 + 24);
              v27 = v26 + 1;
              if (v26 >= v25 >> 1)
              {
                sub_10019F5F4((v25 > 1), v26 + 1, 1);
                v27 = v26 + 1;
                a2 = v64;
              }

              *(a2 + 16) = v27;
              v28 = (a2 + (v26 << 6));
              v29 = v60;
              v30 = v61;
              v31 = v63;
              v28[4] = v62;
              v28[5] = v31;
              v28[2] = v29;
              v28[3] = v30;
              if (v16 != v15)
              {
                goto LABEL_6;
              }

              goto LABEL_50;
            }

            ++v19;
            v18 += 4;
            if (v16 == v15)
            {
              goto LABEL_50;
            }
          }

LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        goto LABEL_49;
      }

      return a2;
    }

    v34 = sub_1001ABEBC(a1, a4);
    if (v6)
    {
      return a2;
    }

    goto LABEL_59;
  }

  if (a6 >> 6 == 2)
  {
    v32 = *(a4 + 48);
    v67 = *(a4 + 32);
    v68 = v32;
    v66 = *(a4 + 16);
    v69 = v67;
    v70 = *(a4 + 48);
    v71 = *(&v32 + 1);
    sub_1000BC094(a1, &v60);
    sub_1001AF70C(&v69, v65);
    sub_1000938D4(&v71, v65, &qword_100504EC8, &qword_10040C3B0);
    sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
    sub_100068FC4(&qword_1005054C8, &qword_10040CDF0);
    swift_dynamicCast();
    v33 = sub_1001AC450(&v58, &v66);
    if (v6)
    {
      sub_10018C454(&v69);
      sub_100075768(&v71, &qword_100504EC8, &qword_10040C3B0);
      sub_1000752F4(&v58);
      return a2;
    }

    v36 = v33;
    sub_10018C454(&v69);
    sub_100075768(&v71, &qword_100504EC8, &qword_10040C3B0);
    sub_1000752F4(&v58);
    v34 = v36;
    if ((v8 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  if (a5 | a4 || a6 != 192)
  {
    if (a4 == 1 && !a5 && a6 == 192)
    {
      sub_1000BC094(a1, &v60);
      sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
      swift_dynamicCast();
      v34 = sub_1001ADB18(v58);
      if ((v8 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (a4 != 2 || a5 || a6 != 192)
      {
        sub_1000BC094(a1, &v60);
        sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
        swift_dynamicCast();
        v42 = v58;
        v43 = v59;
        v44 = v59 >> 62;
        if ((v59 >> 62) > 1)
        {
          if (v44 != 2)
          {
            sub_10006A178(v58, v59);
            return 0;
          }

          v55 = *(v58 + 16);
          v54 = *(v58 + 24);
          v42 = sub_10006A178(v58, v59);
          v51 = __OFSUB__(v54, v55);
          a2 = v54 - v55;
          if (!v51)
          {
            return a2;
          }

          __break(1u);
        }

        else if (!v44)
        {
          sub_10006A178(v58, v59);
          return BYTE6(v59);
        }

        v56 = HIDWORD(v42);
        v57 = v42;
        sub_10006A178(v42, v43);
        if (__OFSUB__(v56, v57))
        {
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        return v56 - v57;
      }

      v34 = 1;
      if ((a3 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    goto LABEL_60;
  }

  sub_1000BC094(a1, &v60);
  sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
  swift_dynamicCast();
  v35 = v59 >> 62;
  if ((v59 >> 62) <= 1)
  {
    if (v35)
    {
      sub_10006A178(v58, v59);
      if (__OFSUB__(HIDWORD(v58), v58))
      {
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v34 = HIDWORD(v58) - v58;
      goto LABEL_59;
    }

    sub_10006A178(v58, v59);
    v34 = BYTE6(v59);
    if ((v8 & 1) == 0)
    {
      goto LABEL_63;
    }

LABEL_60:
    sub_10007FC0C();
    swift_allocError();
    *(v45 + 8) = 0;
    *(v45 + 16) = 0;
    *v45 = 5;
    *(v45 + 24) = 3;
    swift_willThrow();
    return a2;
  }

  if (v35 != 2)
  {
    sub_10006A178(v58, v59);
    v34 = 0;
    if (v8)
    {
      goto LABEL_60;
    }

    goto LABEL_63;
  }

  v38 = *(v58 + 16);
  v37 = *(v58 + 24);
  sub_10006A178(v58, v59);
  v34 = v37 - v38;
  if (__OFSUB__(v37, v38))
  {
    __break(1u);
LABEL_49:
    a2 = _swiftEmptyArrayStorage;
LABEL_50:

    if (*(a2 + 16))
    {
      v39 = *(a2 + 48);
      v60 = *(a2 + 32);
      v61 = v39;
      v40 = *(a2 + 80);
      v62 = *(a2 + 64);
      v63 = v40;
      sub_1000938D4(&v60, &v58, &qword_1005053F0, &unk_10040CDE0);

      a2 = sub_1001ADEA8(v65, v61, BYTE8(v61), v62, *(&v62 + 1), v63);
      sub_100075768(&v60, &qword_1005053F0, &unk_10040CDE0);
    }

    else
    {

      sub_10007FC0C();
      swift_allocError();
      *(v41 + 8) = 0;
      *(v41 + 16) = 0;
      *v41 = 2;
      *(v41 + 24) = 3;
      swift_willThrow();
    }

    sub_1000752F4(v65);
    return a2;
  }

LABEL_59:
  if (v8)
  {
    goto LABEL_60;
  }

LABEL_63:
  if (a2 < 255)
  {
    v46 = 1;
    v47 = 1;
    if (v34 < 127)
    {
      goto LABEL_72;
    }

    goto LABEL_69;
  }

  if (a2 < 0xFFFF)
  {
    v47 = 2;
    if (v34 < 127)
    {
      v46 = 1;
LABEL_72:
      v51 = __OFADD__(v47, v46);
      v52 = v47 + v46;
      if (v51)
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      a2 = v52 + v34;
      if (__OFADD__(v52, v34))
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      return a2;
    }

LABEL_69:
    v48 = 1;
    v49 = v34;
    while (1)
    {
      v46 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      ++v48;
      v50 = v49 >= 0x100;
      v49 >>= 8;
      if (!v50)
      {
        goto LABEL_72;
      }
    }

    __break(1u);
    goto LABEL_83;
  }

LABEL_89:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001AE5BC(unint64_t a1)
{
  if (a1 > 254)
  {
    if (a1 > 0xFFFE)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v2 = bswap32(a1) >> 16;
      if (sub_1001AC6BC(&v2, &v3)[2])
      {
        Data._Representation.append(contentsOf:)();
      }
    }
  }

  else
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    return Data._Representation.append(contentsOf:)();
  }

  return result;
}

uint64_t sub_1001AE6D0(uint64_t a1, uint64_t *a2)
{
  if (a1 < 128)
  {
    if (a1 < 0)
    {
      goto LABEL_52;
    }

    v46 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v47 = sub_10007FBA8();
    LOBYTE(v39) = a1;
    LOBYTE(v38) = *sub_1000752B0(&v39, v46);
    Data._Representation.replaceSubrange(_:with:count:)();
    return sub_1000752F4(&v39);
  }

  v3 = 0;
  v4 = a1;
  do
  {
    ++v3;
    v5 = v4 >= 0x100;
    v4 >>= 8;
  }

  while (v5);
  if (v3 > 0xFF)
  {
    goto LABEL_51;
  }

  v6 = v3 | 0x80;
  v46 = sub_100068FC4(&qword_100502608, &qword_100409A28);
  v47 = sub_10007FBA8();
  LOBYTE(v39) = v6;
  LOBYTE(v38) = *sub_1000752B0(&v39, v46);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v39);
  if (a1 > 0xFFFFFFFFLL)
  {
    goto LABEL_53;
  }

  v38 = bswap32(a1);
  v7 = sub_1001E0BBC(&v38, 4uLL);
  v9 = v7;
  v10 = v8;
  v11 = 0;
  v12 = v8 >> 62;
  v37 = v7;
  if ((v8 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v11 = *(v7 + 16);
    }
  }

  else if (v12)
  {
    v11 = v7;
  }

  v13 = v7 >> 32;
  v14 = BYTE6(v8);
  v35 = v7 >> 16;
  v36 = v7 >> 8;
  v33 = HIDWORD(v7);
  v34 = v7 >> 24;
  v31 = HIWORD(v7);
  v32 = v7 >> 40;
  v29 = v8 >> 8;
  v30 = HIBYTE(v7);
  v15 = v8 >> 16;
  v28 = v11;
  v16 = v8 >> 24;
  if (v12 > 1)
  {
    goto LABEL_17;
  }

LABEL_15:
  v17 = BYTE6(v10);
  if (v12)
  {
    v17 = v9 >> 32;
  }

  while (v11 != v17)
  {
    if (v12 == 2)
    {
      if (v11 < *(v9 + 16))
      {
        goto LABEL_46;
      }

      if (v11 >= *(v9 + 24))
      {
        goto LABEL_48;
      }

      v22 = __DataStorage._bytes.getter();
      if (!v22)
      {
        goto LABEL_57;
      }

      v19 = v22;
      v23 = __DataStorage._offset.getter();
      v21 = v11 - v23;
      if (__OFSUB__(v11, v23))
      {
        goto LABEL_50;
      }

      goto LABEL_32;
    }

    if (v12 == 1)
    {
      if (v11 < v37 || v11 >= v13)
      {
        goto LABEL_47;
      }

      v18 = __DataStorage._bytes.getter();
      if (!v18)
      {
        goto LABEL_56;
      }

      v19 = v18;
      v20 = __DataStorage._offset.getter();
      v21 = v11 - v20;
      if (__OFSUB__(v11, v20))
      {
        goto LABEL_49;
      }

LABEL_32:
      if (*(v19 + v21))
      {
        break;
      }

      goto LABEL_36;
    }

    if (v11 >= BYTE6(v10))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    LOBYTE(v39) = v9;
    BYTE1(v39) = v36;
    BYTE2(v39) = v35;
    BYTE3(v39) = v34;
    BYTE4(v39) = v33;
    BYTE5(v39) = v32;
    BYTE6(v39) = v31;
    HIBYTE(v39) = v30;
    v40 = v10;
    v41 = v29;
    v42 = v15;
    v43 = v16;
    v44 = BYTE4(v10);
    v45 = BYTE5(v10);
    if (*(&v39 + v11))
    {
      break;
    }

LABEL_36:
    ++v11;
    if (v12 <= 1)
    {
      goto LABEL_15;
    }

LABEL_17:
    if (v12 != 2)
    {
      if (!v28)
      {
        goto LABEL_42;
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
    }

    v17 = *(v9 + 24);
  }

  if (v12)
  {
    v14 = v9 >> 32;
    if (v12 == 2)
    {
      v14 = *(v9 + 24);
    }
  }

  if (v14 < v11)
  {
    goto LABEL_54;
  }

LABEL_42:
  v24 = Data._Representation.subscript.getter();
  v26 = v25;
  sub_10006A178(v9, v10);
  Data.append(_:)();
  return sub_10006A178(v24, v26);
}

uint64_t sub_1001AEB24(unint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_1001AE5BC(a1);
  v5 = sub_1001ADB18(a2);
  sub_1001AE6D0(v5, a3);
  if (!a2)
  {
    v47 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v48 = sub_10007FBA8();
    LOBYTE(v40) = 0;
    LOBYTE(v39) = *sub_1000752B0(&v40, v47);
    Data._Representation.replaceSubrange(_:with:count:)();
    return sub_1000752F4(&v40);
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_54;
  }

  v39 = bswap64(a2);
  v6 = sub_1001E0BBC(&v39, 8uLL);
  v8 = v6;
  v9 = v7;
  v10 = 0;
  v11 = v7 >> 62;
  v38 = v6;
  if ((v7 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v10 = *(v6 + 16);
    }
  }

  else if (v11)
  {
    v10 = v6;
  }

  v12 = v6 >> 32;
  v13 = BYTE6(v7);
  v36 = v6 >> 16;
  v37 = v6 >> 8;
  v34 = HIDWORD(v6);
  v35 = v6 >> 24;
  v32 = HIWORD(v6);
  v33 = v6 >> 40;
  v30 = v7 >> 8;
  v31 = HIBYTE(v6);
  v14 = v7 >> 16;
  v29 = v10;
  v15 = v7 >> 24;
  if (v11 > 1)
  {
    goto LABEL_12;
  }

LABEL_10:
  v16 = BYTE6(v9);
  if (v11)
  {
    v16 = v8 >> 32;
  }

  while (v10 != v16)
  {
    if (v11 == 2)
    {
      if (v10 < *(v8 + 16))
      {
        goto LABEL_44;
      }

      if (v10 >= *(v8 + 24))
      {
        goto LABEL_46;
      }

      v21 = __DataStorage._bytes.getter();
      if (!v21)
      {
        goto LABEL_52;
      }

      v18 = v21;
      v22 = __DataStorage._offset.getter();
      v20 = v10 - v22;
      if (__OFSUB__(v10, v22))
      {
        goto LABEL_48;
      }

      goto LABEL_27;
    }

    if (v11 == 1)
    {
      if (v10 < v38 || v10 >= v12)
      {
        goto LABEL_45;
      }

      v17 = __DataStorage._bytes.getter();
      if (!v17)
      {
        goto LABEL_51;
      }

      v18 = v17;
      v19 = __DataStorage._offset.getter();
      v20 = v10 - v19;
      if (__OFSUB__(v10, v19))
      {
        goto LABEL_47;
      }

LABEL_27:
      if (*(v18 + v20))
      {
        break;
      }

      goto LABEL_31;
    }

    if (v10 >= BYTE6(v9))
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
      goto LABEL_49;
    }

    LOBYTE(v40) = v8;
    BYTE1(v40) = v37;
    BYTE2(v40) = v36;
    BYTE3(v40) = v35;
    BYTE4(v40) = v34;
    BYTE5(v40) = v33;
    BYTE6(v40) = v32;
    HIBYTE(v40) = v31;
    v41 = v9;
    v42 = v30;
    v43 = v14;
    v44 = v15;
    v45 = BYTE4(v9);
    v46 = BYTE5(v9);
    if (*(&v40 + v10))
    {
      break;
    }

LABEL_31:
    ++v10;
    if (v11 <= 1)
    {
      goto LABEL_10;
    }

LABEL_12:
    if (v11 != 2)
    {
      if (!v29)
      {
        goto LABEL_37;
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
    }

    v16 = *(v8 + 24);
  }

  if (v11)
  {
    v13 = v8 >> 32;
    if (v11 == 2)
    {
      v13 = *(v8 + 24);
    }
  }

  if (v13 < v10)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_37:
  v23 = Data._Representation.subscript.getter();
  v25 = v24;
  sub_10006A178(v8, v9);
  v26 = sub_1000CA97C(v23, v25);
  if ((v26 & 0x100) != 0)
  {
    __break(1u);
LABEL_54:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if ((v26 & 0x80) != 0)
  {
    v28 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v47 = v28;
    v48 = sub_10007FBA8();
    LOBYTE(v40) = 0;
    sub_1000752B0(&v40, v28);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(&v40);
  }

  Data.append(_:)();
  return sub_10006A178(v23, v25);
}

uint64_t sub_1001AEFAC(unint64_t a1, int a2, uint64_t *a3)
{
  sub_1001AE5BC(a1);
  v4 = sub_100068FC4(&qword_100502608, &qword_100409A28);
  v8 = v4;
  v5 = sub_10007FBA8();
  v9 = v5;
  LOBYTE(v7[0]) = 1;
  sub_1000752B0(v7, v4);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(v7);
  v8 = v4;
  v9 = v5;
  LOBYTE(v7[0]) = a2 << 31 >> 31;
  sub_1000752B0(v7, v4);
  Data._Representation.replaceSubrange(_:with:count:)();
  return sub_1000752F4(v7);
}

uint64_t sub_1001AF128(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v38 = type metadata accessor for Mirror();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = sub_1000752B0(a1, v7);
  v49[3] = v7;
  v9 = sub_1000B9634(v49);
  (*(*(v7 - 8) + 16))(v9, v8, v7);
  v40 = v6;
  Mirror.init(reflecting:)();
  v10 = *(a2 + 16);
  if (!v10)
  {
    return (*(v37 + 8))(v40, v38);
  }

  v11 = a2 + 48;
  v12 = &qword_100502420;
  while (1)
  {
    v13 = v12;
    v41 = v10;
    v14 = *(v11 - 8);
    v42 = *(v11 - 16);
    v15 = *(v11 + 8);
    v16 = *(v11 + 9);
    v18 = *(v11 + 16);
    v17 = *(v11 + 24);
    v19 = *(v11 + 32);
    v20 = *(v11 + 40);
    v51 = *v11;
    v52 = v15;
    v53 = v16;
    v54 = v18;
    v55 = v17;
    v56 = v19;
    v57 = v20;

    v43 = v18;
    v44 = v17;
    v45 = v19;
    sub_1001AF744(v18, v17, v19);
    v46 = v20;

    v21 = Mirror.children.getter();
    __chkstk_darwin(v21);
    *(&v36 - 2) = v42;
    *(&v36 - 1) = v14;
    v22 = v58;
    v23 = dispatch thunk of _AnySequenceBox._filter(_:)();
    v58 = v22;

    if (*(v23 + 16) != 1)
    {

      sub_10007FC0C();
      v28 = swift_allocError();
      *(v29 + 8) = 0;
      *(v29 + 16) = 0;
      *v29 = 2;
      *(v29 + 24) = 3;
      v58 = v28;
      swift_willThrow();
      sub_1001AF6EC(v43, v44, v45);
      goto LABEL_13;
    }

    sub_1000938D4(v23 + 32, v49, &qword_1005054D8, &unk_10040CE00);

    v12 = v13;
    sub_100068FC4(v13, &qword_10040F310);
    swift_dynamicCast();
    if (!v48)
    {
      break;
    }

    sub_100075D50(&v47, v50);
    sub_1000754F0(v50, &v47);
    sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
    swift_dynamicCast();
    v24 = v58;
    sub_1001AB134(v49, &v51, v39);
    v25 = v45;
    v26 = v44;
    v27 = v43;
    v58 = v24;
    if (v24)
    {
      sub_1001AF6EC(v43, v44, v45);

      sub_1000752F4(v50);
      (*(v37 + 8))(v40, v38);
      return sub_1000752F4(v49);
    }

    sub_1000752F4(v50);
    sub_1001AF6EC(v27, v26, v25);

    sub_1000752F4(v49);
LABEL_3:
    v11 += 64;
    v10 = v41 - 1;
    if (v41 == 1)
    {
      return (*(v37 + 8))(v40, v38);
    }
  }

  sub_100075768(&v47, v13, &qword_10040F310);
  if (v16)
  {
    sub_1001AF6EC(v43, v44, v45);

    goto LABEL_3;
  }

  v31 = v45;
  v32 = v44;
  v33 = v43;
  sub_10007FC0C();
  v34 = swift_allocError();
  *(v35 + 8) = 0;
  *(v35 + 16) = 0;
  *v35 = 3;
  *(v35 + 24) = 3;
  v58 = v34;
  swift_willThrow();
  sub_1001AF6EC(v33, v32, v31);
LABEL_13:

  return (*(v37 + 8))(v40, v38);
}

uint64_t sub_1001AF63C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v9 = xmmword_1004098D0;
  result = sub_1001AE5BC(a1);
  v6 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v6 != 2)
    {
      result = 0;
      goto LABEL_11;
    }

    v8 = *(a2 + 16);
    v7 = *(a2 + 24);
    result = v7 - v8;
    if (!__OFSUB__(v7, v8))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v6)
  {
    result = BYTE6(a3);
LABEL_11:
    sub_1001AE6D0(result, &v9);
    Data.append(_:)();
    return v9;
  }

  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    result = HIDWORD(a2) - a2;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001AF6EC(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) <= 1u)
  {
  }

  if (a3 >> 6 == 2)
  {
  }

  return v3;
}

uint64_t sub_1001AF744(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) <= 1u)
  {
  }

  if (a3 >> 6 == 2)
  {
  }

  return v3;
}

uint64_t sub_1001AF780(uint64_t *a1)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  if (*a1 == *(v1 + 16) && v2 == *(v1 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1001AF7DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001AF834()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001AF86C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001AF8BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1001AF918(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

__n128 initializeWithCopy for ASN1Error(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ASN1Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ASN1Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001AFA40(uint64_t a1)
{
  if (*(a1 + 24) <= 2u)
  {
    return *(a1 + 24);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1001AFA58(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1001AFA84(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001AFAA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001AFAE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s10seserviced9ASN1ErrorOwCP_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 initializeWithCopy for ASN1ItemSpec.Constraint(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ASN1ItemSpec.Constraint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ASN1ItemSpec.Constraint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

uint64_t sub_1001AFBF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1001AFC44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1001AFCA8(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SERequest.ActionPostRequest(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SERequest.ActionPostRequest(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SERequest.ActionPostRequest(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1001AFD48(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001AFD64(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1001AFD94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1001AFDDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASN1SequenceSpec.DecodeMode(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ASN1SequenceSpec.DecodeMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001AFF00()
{
  result = qword_1005054E8;
  if (!qword_1005054E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005054E8);
  }

  return result;
}

unint64_t sub_1001AFF58()
{
  result = qword_1005054F0;
  if (!qword_1005054F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005054F0);
  }

  return result;
}

unint64_t sub_1001AFFB0()
{
  result = qword_1005054F8;
  if (!qword_1005054F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005054F8);
  }

  return result;
}

unint64_t sub_1001B0008()
{
  result = qword_100505500;
  if (!qword_100505500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505500);
  }

  return result;
}

unint64_t sub_1001B0060()
{
  result = qword_100505508;
  if (!qword_100505508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505508);
  }

  return result;
}

unint64_t sub_1001B00B8()
{
  result = qword_100505510;
  if (!qword_100505510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505510);
  }

  return result;
}

unint64_t sub_1001B0110()
{
  result = qword_100505518;
  if (!qword_100505518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505518);
  }

  return result;
}

unint64_t sub_1001B0168()
{
  result = qword_100505520;
  if (!qword_100505520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505520);
  }

  return result;
}

uint64_t sub_1001B0228()
{
  qword_10051B388 = type metadata accessor for BlessedUserControllerDefault(0);
  unk_10051B390 = &off_1004CA408;
  sub_1000B9634(qword_10051B370);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

uint64_t type metadata accessor for BlessedUserControllerDefault(uint64_t a1)
{
  result = qword_100505580;
  if (!qword_100505580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001B0300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001B0380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1001B03F0(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1001B045C(uint64_t a1, uint64_t a2)
{
  if (!*(v2[2] + 16) && !*v2)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000958E4(v3, qword_10051B2C8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Deinitializing session-presence related singletons", v6, 2u);
    }

    if (qword_100501D50 != -1)
    {
      swift_once();
    }

    v7 = swift_beginAccess();
    v8 = off_10050A868;
    __chkstk_darwin(v7);
    os_unfair_lock_lock(v8 + 6);
    sub_1001B2140(&v8[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v8 + 6);
    swift_endAccess();
  }
}

double sub_1001B05F8()
{
  type metadata accessor for SECQueueManager();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = _swiftEmptyArrayStorage;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  qword_10051B398 = v0;
  return result;
}

void sub_1001B0644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_10012F404(0, v6[2] + 1, 1, v6);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_10012F404((v7 > 1), v8 + 1, 1, v6);
  }

  v6[2] = v8 + 1;
  v9 = &v6[2 * v8];
  v9[4] = a2;
  v9[5] = a3;
  *(a1 + 16) = v6;
  v10 = qword_1005019D8;
  swift_unknownObjectRetain();
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000958E4(v11, qword_10051B2C8);
  swift_unknownObjectRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    ObjectType = swift_getObjectType();
    (*(a3 + 8))(v22, ObjectType, a3);
    v17 = sub_10013F33C();
    v19 = v18;
    sub_10012E3A0(v22);
    v20 = sub_1002FFA0C(v17, v19, &v21);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Queued SECSession with client info %s", v14, 0xCu);
    sub_1000752F4(v15);
  }
}

void sub_1001B0864(uint64_t a1, void *a2)
{
  v2 = a2;
  sub_1001A2648(0, 0, v2, &off_1004CE768);

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Queued Admin Session", v6, 2u);
  }
}

void sub_1001B0970()
{
  v1 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v1 - 8);
  v3 = &v6 - v2;
  os_unfair_lock_lock((v0 + 16));
  sub_1001B0E90((v0 + 24), &v7);
  os_unfair_lock_unlock((v0 + 16));
  if (v7)
  {
    v6 = v7;
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = v6;
    sub_1001F9BE8(0, 0, v3, &unk_10040D620, v5);
  }
}

uint64_t sub_1001B0AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = a5;
  return _swift_task_switch(sub_1001B0AC4, 0, 0);
}

uint64_t sub_1001B0AC4(uint64_t a1, uint64_t a2)
{
  v23 = v2;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  swift_unknownObjectRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v2 + 160);
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136315394;
    swift_getObjectType();
    v8 = _typeName(_:qualified:)();
    v10 = sub_1002FFA0C(v8, v9, &v22);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, v6);
    v12 = sub_10013F33C();
    v14 = v13;
    sub_10012E3A0(v2 + 16);
    v15 = sub_1002FFA0C(v12, v14, &v22);

    *(v7 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Starting next session %s for client %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v21 = *(v2 + 160);
  v16 = swift_getObjectType();
  v20 = (*(v21 + 24) + **(v21 + 24));
  v17 = swift_task_alloc();
  *(v2 + 168) = v17;
  *v17 = v2;
  v17[1] = sub_1001B0D9C;
  v18 = *(v2 + 160);

  return v20(v16, v18);
}

uint64_t sub_1001B0D9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1001B0E90(void *a1@<X0>, void *a3@<X8>)
{
  if (*a1)
  {
    v5 = a1[1];
    v6 = qword_1005019D8;
    swift_unknownObjectRetain();
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000958E4(v7, qword_10051B2C8);
    swift_unknownObjectRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26 = v11;
      *v10 = 136315138;
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v25, ObjectType, v5);
      v13 = sub_10013F33C();
      v15 = v14;
      sub_10012E3A0(v25);
      v16 = sub_1002FFA0C(v13, v15, &v26);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "Current session with clientInfo %s is active", v10, 0xCu);
      sub_1000752F4(v11);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

LABEL_16:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v17 = a1[2];
  if (!v17[2])
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000958E4(v21, qword_10051B2C8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Pending Session Queue is empty; no session to start", v24, 2u);
    }

    goto LABEL_16;
  }

  v18 = v17[4];
  v19 = v17[5];
  swift_unknownObjectRetain();
  sub_1001A1AB4(0, 1);
  *a1 = v18;
  a1[1] = v19;
  v20 = a1[3];
  swift_unknownObjectRetain();
  if (!v20)
  {
    a1[3] = os_transaction_create();
  }

  *a3 = v18;
  a3[1] = v19;
}

void sub_1001B1178(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v6 = a3;
  v8 = *a1;
  v114 = a3;
  if (v8)
  {
    v81 = a5;
    v9 = a1[1];
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 8);
    swift_unknownObjectRetain();
    v86 = v11;
    v87 = ObjectType;
    v85 = v9;
    v11(v93, ObjectType, v9);
    v113[0] = v93[0];
    v12 = v93[0];

    sub_10012E3A0(v93);
    v13 = swift_getObjectType();
    (*(v6 + 8))(v94, v13, v6);
    v112 = v94[0];
    v14 = v94[0];

    sub_10012E3A0(v94);
    if (v12 == v14)
    {
      sub_1000B6B54(&v112);
      sub_1000B6B54(v113);
LABEL_5:
      if (qword_1005019D8 != -1)
      {
LABEL_54:
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000958E4(v16, qword_10051B2C8);
      swift_unknownObjectRetain();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v104[0] = v20;
        *v19 = 136315138;
        (v86)(v103, v87, v85);
        v21 = sub_10013F33C();
        v23 = v22;
        sub_10012E3A0(v103);
        v24 = sub_1002FFA0C(v21, v23, v104);

        *(v19 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v17, v18, "Removing current session with client info %s", v19, 0xCu);
        sub_1000752F4(v20);
      }

      v25 = a1;
      type metadata accessor for SECUserSession(0);
      v26 = swift_dynamicCastClass();
      if (v26)
      {
        *(*(v26 + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics) + 32) = a4;
        swift_unknownObjectRetain();

        sub_10028C5B8();
        swift_unknownObjectRelease_n();
      }

      else
      {
        v27 = swift_unknownObjectRelease();
      }

      *a1 = 0;
      a1[1] = 0;
      sub_1001B045C(v27, v28);
      (v86)(v104, v87, v85);
      v102 = v111;
      v100 = v109;
      v101 = v110;
      v96 = v105;
      v97 = v106;
      v98 = v107;
      v99 = v108;
      if (v111 >= 2u)
      {
        sub_10012E3A0(v104);
      }

      else
      {
        v92 = v110;
        v90[0] = v96;
        v90[1] = v97;
        v90[2] = v98;
        v90[3] = v99;
        v90[4] = v100;
        v91 = v110;
        sub_10012E3F4(&v96, &atoken);
        atoken = v92;
        v29 = audit_token_to_pid(&atoken);
        sub_10012E450(v90);
        sub_10012E3A0(v104);
        swift_beginAccess();
        sub_1001B2068(v81 + 56, &atoken);
        if (*&atoken.val[6])
        {
          sub_1000BC094(&atoken, &v88);
          sub_1001B20D8(&atoken);
          sub_1000752B0(&v88, v89);
          sub_1001421F8(v29, v30);
          sub_1000752F4(&v88);
        }

        else
        {
          sub_1001B20D8(&atoken);
        }
      }

      v69 = (*(v85 + 16))(v87, v85);
      if (v69)
      {
        v70 = v69;
        if (a6)
        {
          v71 = _convertErrorToNSError(_:)();
        }

        else
        {
          v71 = 0;
        }

        [v70 sessionEndedWithError:v71];

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      goto LABEL_50;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1000B6B54(&v112);
    sub_1000B6B54(v113);
    if (v15)
    {
      goto LABEL_5;
    }

    swift_unknownObjectRelease();
    v6 = v114;
  }

  v31 = a1[2];
  a4 = a1 + 16;
  v86 = v31;
  v87 = v6 + 8;
  v32 = (v31 + 40);
  v33 = -*(v31 + 16);
  v34 = -1;
  while (1)
  {
    if (v33 + v34 == -1)
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_1000958E4(v53, qword_10051B2C8);
      swift_unknownObjectRetain();
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.info.getter();
      swift_unknownObjectRelease();
      v25 = a1;
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v103[0] = v57;
        *v56 = 136315138;
        v58 = swift_getObjectType();
        (*(v114 + 8))(v104, v58);
        v59 = sub_10013F33C();
        v61 = v60;
        sub_10012E3A0(v104);
        v62 = sub_1002FFA0C(v59, v61, v103);

        *(v56 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v54, v55, "Session with client info %s is not active nor pending", v56, 0xCu);
        sub_1000752F4(v57);
      }

      goto LABEL_50;
    }

    if (++v34 >= *(v86 + 16))
    {
      __break(1u);
      goto LABEL_54;
    }

    v36 = *v32;
    v37 = swift_getObjectType();
    v38 = *(v36 + 8);
    swift_unknownObjectRetain();
    v38(&atoken, v37, v36);
    v90[0] = *atoken.val;
    v39 = *atoken.val;

    sub_10012E3A0(&atoken);
    v40 = swift_getObjectType();
    v85 = *(v114 + 8);
    (v85)(&v96);
    v88 = v96;
    v41 = v96;

    sub_10012E3A0(&v96);
    if (v39 == v41)
    {
      break;
    }

    v32 += 2;
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1000B6B54(&v88);
    sub_1000B6B54(v90);
    swift_unknownObjectRelease();
    if (v35)
    {
      goto LABEL_22;
    }
  }

  sub_1000B6B54(&v88);
  sub_1000B6B54(v90);
  swift_unknownObjectRelease();
LABEL_22:
  (v85)(v103, v40, v114);
  v42 = sub_1001B1F38(v86, v103);
  if (v43)
  {
    sub_10012E3A0(v103);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000958E4(v44, qword_10051B2C8);
    swift_unknownObjectRetain();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v92.val = v48;
      *v47 = 136315138;
      (v85)(v104, v40, v114);
      v49 = sub_10013F33C();
      v51 = v50;
      sub_10012E3A0(v104);
      v52 = sub_1002FFA0C(v49, v51, &v92);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "Unable to retrieve queued session with client info %s", v47, 0xCu);
      sub_1000752F4(v48);
    }

    return;
  }

  sub_100196798(v42);
  v64 = v63;
  sub_10012E3A0(v103);
  v65 = swift_getObjectType();
  v66 = (*(v64 + 16))(v65, v64);
  v25 = a1;
  if (v66)
  {
    v67 = v66;
    if (a6)
    {
      v68 = _convertErrorToNSError(_:)();
    }

    else
    {
      v68 = 0;
    }

    [v67 sessionEndedWithError:v68];

    swift_unknownObjectRelease();
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  sub_1000958E4(v72, qword_10051B2C8);
  swift_unknownObjectRetain();
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v92.val = v76;
    *v75 = 136315138;
    (v85)(v104, v40, v114);
    v77 = sub_10013F33C();
    v79 = v78;
    sub_10012E3A0(v104);
    v80 = sub_1002FFA0C(v77, v79, &v92);

    *(v75 + 4) = v80;
    _os_log_impl(&_mh_execute_header, v73, v74, "Removing pending session with client info %s", v75, 0xCu);
    sub_1000752F4(v76);
  }

  swift_unknownObjectRelease();

LABEL_50:
  if (!*(v25[2] + 16))
  {
    swift_unknownObjectRelease();
    v25[3] = 0;
  }
}

uint64_t sub_1001B1CAC()
{
  sub_1001B228C(v0 + 24);
  sub_1001B20D8(v0 + 56);

  return swift_deallocClassInstance();
}

void *sub_1001B1D10()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100068FC4(qword_1005056C0, &unk_10040D500);
  }

  else
  {
    return &type metadata for () + 1;
  }
}

uint64_t sub_1001B1D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001B1D7C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001B1D94(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1001B1DF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1001B1E58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1001B1EA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001B1EF0(void *a1, uint64_t *a2)
{
  v3 = *a2;

  *a1 = v3;
}

uint64_t sub_1001B1F38(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v6 = *i;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    swift_unknownObjectRetain();
    v8(v13, ObjectType, v6);
    v14 = v13[0];
    v9 = v13[0];

    sub_10012E3A0(v13);
    if (v9 == *a2 && *(&v9 + 1) == a2[1])
    {
      break;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1000B6B54(&v14);
    swift_unknownObjectRelease();
    if (v11)
    {
      return v4;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  sub_1000B6B54(&v14);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1001B2068(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100504848, &qword_10040BD10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B20D8(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100504848, &qword_10040BD10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B2140(void *a1)
{
  v3 = **(v1 + 16);

  *a1 = v3;
}

uint64_t sub_1001B218C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001B21CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000C288C;

  return sub_1001B0AA4(a1, v4, v5, v7, v6);
}

unint64_t sub_1001B22BC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001B25A8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001B2344()
{

  sub_100075768(v0 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v0 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken, &qword_100502438, &qword_100409990);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SERequest(uint64_t a1)
{
  result = qword_100505770;
  if (!qword_100505770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B2458(uint64_t a1)
{
  sub_10019EEF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1001B2550()
{
  result = qword_100505840;
  if (!qword_100505840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505840);
  }

  return result;
}

unint64_t sub_1001B25A8(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_1001B25BC()
{
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(192);
  v49 = 0;
  v50 = 0xE000000000000000;
  v1._countAndFlagsBits = 0xD000000000000016;
  v1._object = 0x8000000100465A60;
  String.append(_:)(v1);
  if (*(v0 + 16))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  v5._countAndFlagsBits = 0xD000000000000017;
  v5._object = 0x8000000100465A80;
  String.append(_:)(v5);
  if (*(v0 + 17))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + 17))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  v9._countAndFlagsBits = 0xD000000000000029;
  v9._object = 0x8000000100465AA0;
  String.append(_:)(v9);
  if (*(v0 + 18))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + 18))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  v13._countAndFlagsBits = 0xD000000000000029;
  v13._object = 0x8000000100465AD0;
  String.append(_:)(v13);
  if (*(v0 + 19))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(v0 + 19))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  v16 = v15;
  String.append(_:)(*&v14);

  v17._object = 0x8000000100465B00;
  v17._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v17);
  if (*(v0 + 20))
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (*(v0 + 20))
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  v20 = v19;
  String.append(_:)(*&v18);

  v21._object = 0x8000000100465B20;
  v21._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v21);
  if (*(v0 + 21))
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (*(v0 + 21))
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  v24 = v23;
  String.append(_:)(*&v22);

  v25._countAndFlagsBits = 0x6469646E6163200ALL;
  v25._object = 0xED00002073657461;
  String.append(_:)(v25);
  v26 = *(v0 + 24);
  v27 = *(v26 + 16);
  v28 = _swiftEmptyArrayStorage;
  if (v27)
  {
    v48 = _swiftEmptyArrayStorage;

    sub_10019F3E0(0, v27, 0);
    v28 = _swiftEmptyArrayStorage;
    v29 = (v26 + 64);
    do
    {
      v30 = *(v29 - 4);
      v31 = *(v29 - 3);
      v33 = *(v29 - 2);
      v32 = *(v29 - 1);
      v34 = *v29;
      *&v44 = 0;
      *(&v44 + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(32);

      *&v44 = 0x4920656C646E7542;
      *(&v44 + 1) = 0xEA00000000002044;
      v35._countAndFlagsBits = v30;
      v35._object = v31;
      String.append(_:)(v35);
      v36._countAndFlagsBits = 0x20656D614E202CLL;
      v36._object = 0xE700000000000000;
      String.append(_:)(v36);
      v37._countAndFlagsBits = v32;
      v37._object = v34;
      String.append(_:)(v37);
      v38._countAndFlagsBits = 0x6E69616D6F44202CLL;
      v38._object = 0xE900000000000020;
      String.append(_:)(v38);
      v47 = v33;
      v39._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v39);

      v40 = v44;
      v48 = v28;
      v42 = v28[2];
      v41 = v28[3];
      if (v42 >= v41 >> 1)
      {
        sub_10019F3E0((v41 > 1), v42 + 1, 1);
        v28 = v48;
      }

      v45 = &type metadata for String;
      v46 = &protocol witness table for String;
      v44 = v40;
      v28[2] = v42 + 1;
      sub_1000BC104(&v44, &v28[5 * v42 + 4]);
      v29 += 5;
      --v27;
    }

    while (v27);
  }

  sub_100288EC8(v28);

  return v49;
}

uint64_t sub_1001B29C4()
{
  *(v0 + 20) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1001B29E0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001B2A18()
{
  v1 = v0;
  memset(v47, 0, sizeof(v47));
  v48 = 1;
  v2 = sub_100306124(6, v47, 0, 0);
  v3 = sub_100306124(5, v47, 0, 0);
  v4 = sub_100306124(4, v47, 0, 0);
  v5 = sub_100306124(3, v47, 0, 0);
  if (v2)
  {
    if (v3)
    {
      if (v4)
      {
        v6 = 0;
      }

      else
      {
        v6 = 4;
      }

      if (v5)
      {
        goto LABEL_21;
      }

LABEL_20:
      v6 |= 8uLL;
      goto LABEL_21;
    }

    v7 = 6;
    v8 = 2;
  }

  else
  {
    if (v3)
    {
      if (v4)
      {
        v6 = 1;
      }

      else
      {
        v6 = 5;
      }

      if ((v5 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v7 = 7;
    v8 = 3;
  }

  if (v4)
  {
    v6 = v8;
  }

  else
  {
    v6 = v7;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  v9 = *(v1 + 24);
  *(v9 + 20) = (v6 & 1) == 0;
  *(v9 + 21) = (v6 & 4) == 0;
  if (qword_100501978 != -1)
  {
    swift_once();
  }

  if ((sub_100130A24() & 1) == 0)
  {
    sub_100326DF8(&v41);
    v16 = v42;
    if (v42)
    {
      v17 = v41;
      if (v43 == 2 || v43 == 1)
      {
        TCCContext.DefaultAppCapableTCCService.tccService.getter();
        TCCContext.checkTCCAccess(to:for:)();
        v18 = TCCContext.TCCAccess.rawValue.getter();
        if (v18 == TCCContext.TCCAccess.rawValue.getter())
        {
          v39 = v44;

          sub_1000B6AF8(&v39, &v46);
          v19 = Logger.logObject.getter();
          v20 = static os_log_type_t.info.getter();

          sub_1000B6B54(&v39);
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            v22 = swift_slowAlloc();
            *&v46 = v22;
            *v21 = 136315138;
            sub_1000B6B54(&v39);
            v23 = sub_1002FFA0C(v17, v16, &v46);

            *(v21 + 4) = v23;
            _os_log_impl(&_mh_execute_header, v19, v20, "External default app %s found on restore", v21, 0xCu);
            sub_1000752F4(v22);
          }

          else
          {

            sub_1000B6B54(&v39);
          }

          sub_1001B3830();
          goto LABEL_47;
        }
      }

      else
      {
        v45[0] = v41;
        v45[1] = v42;
        sub_1000B6B54(v45);
      }

      v46 = v44;
      sub_1000B6B54(&v46);
    }

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v24, v25, "Reconciling with ineligibility %ld", v26, 0xCu);
    }

    v27 = sub_1001B2FEC(0, v6);
    v29 = v28;
    v30 = sub_1001B2FEC(2uLL, v6);
    v31 = *(v1 + 24);
    v31[16] = HIBYTE(v27) & 1;
    v31[17] = HIBYTE(v30) & 1;
    v31[18] = v27 & 1;
    v31[19] = v30 & 1;
    v40 = &_swiftEmptySetSingleton;
    sub_1002A3660(v32);
    sub_1002A3660(v29);
    v33 = *(v1 + 24);
    v34 = *(&_swiftEmptySetSingleton + 2);
    if (v34)
    {
      v35 = sub_1000C024C(v40[2], 0);
      v36 = sub_100358484(&v39, (v35 + 4), v34, &_swiftEmptySetSingleton);
      v37 = v39;

      sub_100093854(v37);
      if (v36 == v34)
      {
LABEL_44:
        *(v33 + 24) = v35;

LABEL_47:

        sub_100328B10(v38);
      }

      __break(1u);
    }

    v35 = _swiftEmptyArrayStorage;
    goto LABEL_44;
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v41 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1002FFA0C(0x6C69636E6F636572, 0xEB00000000292865, &v41);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: Pending migration -- should not show default contactless pane", v12, 0xCu);
    sub_1000752F4(v13);
  }

  *(*(v1 + 24) + 18) = 0;

  sub_100328B10(v14);
}

uint64_t sub_1001B2FEC(unint64_t a1, uint64_t a2)
{
  v5 = sub_1001B3FD0(*(v2 + 16), a1);
  v6 = TCCContext.TCCService.rawValue.getter();
  v7 = TCCContext.TCCService.rawValue.getter();
  v8 = 4;
  if (v6 == v7)
  {
    v8 = 1;
  }

  if ((v8 & a2) == 0)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v69[0] = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_1002FFA0C(0xD00000000000001DLL, 0x8000000100465BB0, v69);
      *(v16 + 12) = 2080;
      v17 = TCCContext.TCCService.tccString.getter();
      v19 = sub_1002FFA0C(v17, v18, v69);

      *(v16 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s Set Default is eligible for service %s, doing regular reconciliation for this service", v16, 0x16u);
      swift_arrayDestroy();
    }

    sub_1001B47F4(a1, v20);
    v21 = v5;
    return v21 & 1 | ((v5 > 0xFFu) << 8);
  }

  v60 = v5;
  v9 = TCCContext.TCCService.rawValue.getter();
  v10 = TCCContext.TCCService.rawValue.getter();
  v11 = 8;
  if (v9 == v10)
  {
    v11 = 2;
  }

  v12 = v11 & a2;
  v62 = &_swiftEmptySetSingleton;
  v13 = objc_allocWithZone(LSApplicationRecord);
  v22 = sub_10013FCB4(0xD000000000000012, 0x8000000100465B40, 0);
  v23 = [v22 localizedName];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v69[0] = 0xD000000000000012;
  v69[1] = 0x8000000100465B40;
  v69[2] = 3;
  v69[3] = v24;
  v69[4] = v26;
  sub_1000D7A08(&v63, v69);

  if (v12)
  {
    goto LABEL_26;
  }

  sub_100326DF8(&v63);
  v27 = v64;
  if (!v64)
  {
    goto LABEL_26;
  }

  v28 = v63;
  v29 = v65;
  v67 = v66;
  if (v63 == 0xD000000000000012 && v64 == 0x8000000100465B40)
  {
    if (v65 != 1)
    {
      if (v65 != 2)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

LABEL_21:
    v58 = v28;
    goto LABEL_23;
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && v29 == 3)
  {
    goto LABEL_25;
  }

  if (v29 != 2)
  {
    if (v29 != 1)
    {
LABEL_25:

      v68 = v66;
      sub_1000B6B54(&v68);
LABEL_26:
      v33 = v62[2];
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();
      v36 = os_log_type_enabled(v34, v35);
      if (v33)
      {
        v5 = v60;
        if (v36)
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v34, v35, "One of the out of region eligibility conditions not satisfied and but exist candidates, show default app pane", v37, 2u);
        }

        v21 = 1;
      }

      else
      {
        v5 = v60;
        if (v36)
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v34, v35, "One of the out of region eligibility conditions not satisfied and no candidates, should not show default app pane", v38, 2u);
        }

        v21 = 0;
      }

      return v21 & 1 | ((v5 > 0xFFu) << 8);
    }

    goto LABEL_21;
  }

LABEL_22:
  v58 = v28;
LABEL_23:
  TCCContext.DefaultAppCapableTCCService.tccService.getter();
  v30 = TCCContext.TCCService.rawValue.getter();
  if (v30 != TCCContext.TCCService.rawValue.getter())
  {
    goto LABEL_25;
  }

  v57 = v29;
  v31 = objc_allocWithZone(LSApplicationRecord);
  v32 = sub_10013FCB4(0xD000000000000012, 0x8000000100465B40, 0);
  v40 = v32;
  v41 = [v32 localizedName];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v43;

  TCCContext.DefaultAppCapableTCCService.tccService.getter();
  v44 = TCCContext.checkTCCAccess(to:for:)();
  v68 = v66;

  sub_1000B6AF8(&v68, v61);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.info.getter();

  sub_1000B6B54(&v68);
  if (os_log_type_enabled(v45, v46))
  {
    v59 = v44;
    v47 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v47 = 136316162;
    *(v47 + 4) = sub_1002FFA0C(0xD00000000000001DLL, 0x8000000100465BB0, v61);
    *(v47 + 12) = 2048;
    *(v47 + 14) = a2;
    *(v47 + 22) = 2080;

    v48 = sub_1002FFA0C(v58, v27, v61);

    *(v47 + 24) = v48;
    *(v47 + 32) = 2080;
    v49 = TCCContext.TCCAccess.description.getter();
    v51 = sub_1002FFA0C(v49, v50, v61);

    *(v47 + 34) = v51;
    *(v47 + 42) = 2080;
    TCCContext.DefaultAppCapableTCCService.tccService.getter();
    v52 = TCCContext.TCCService.tccString.getter();
    v54 = sub_1002FFA0C(v52, v53, v61);

    *(v47 + 44) = v54;
    _os_log_impl(&_mh_execute_header, v45, v46, "%s Ineligibility %ld Default app %s TCC access %s to service %s", v47, 0x34u);
    swift_arrayDestroy();

    v44 = v59;
  }

  v5 = v60;
  if (v44 < 2)
  {

    sub_100068FC4(&qword_100503208, "|e\a");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100409900;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x8000000100465B40;
    *(inited + 48) = 3;
    *(inited + 56) = v42;
    *(inited + 64) = v56;
    *(inited + 72) = v58;
    *(inited + 80) = v27;
    *(inited + 88) = v57;
    *(inited + 96) = v67;
    sub_1000E2130(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v21 = 1;
    return v21 & 1 | ((v5 > 0xFFu) << 8);
  }

  if (v44 - 2 <= 1)
  {

    sub_1000B6B54(&v68);

    v21 = 0;
    return v21 & 1 | ((v5 > 0xFFu) << 8);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

int8x8_t sub_1001B3830()
{
  v1 = v0;
  sub_100326DF8(&v56);
  v2 = v57;
  if (v57)
  {
    v3 = v56;
    v4 = v58;
    switch(v58)
    {
      case 3:
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          *&v61 = v17;
          *v16 = 136315138;
          *(v16 + 4) = sub_1002FFA0C(0xD000000000000016, 0x8000000100465B90, &v61);
          v18 = "%s: Default app is passbook -- should show no panes";
LABEL_17:
          _os_log_impl(&_mh_execute_header, v14, v15, v18, v16, 0xCu);
          sub_1000752F4(v17);
        }

        break;
      case 2:
        v5 = 1;
LABEL_12:
        v54 = v5;
        sub_100068FC4(&qword_100503208, "|e\a");
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1004098F0;
        *(v12 + 32) = v3;
        *(v12 + 40) = v2;
        *(v12 + 48) = v4;
        *(v12 + 56) = v59;
        v13 = objc_allocWithZone(LSApplicationRecord);
        v24 = sub_10013FCB4(0xD000000000000012, 0x8000000100465B40, 0);
        v25 = [v24 localizedName];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = *(v12 + 16);
        if (v29)
        {
          v30 = (v12 + 48);
          v31 = *(v12 + 16);
          while (1)
          {
            v32 = *v30;
            v33 = *(v30 - 2) == 0xD000000000000012 && 0x8000000100465B40 == *(v30 - 1);
            if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v32 == 3)
            {
              break;
            }

            v30 += 5;
            if (!--v31)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {
LABEL_31:
          v34 = *(v12 + 24);
          if (v29 >= v34 >> 1)
          {
            v12 = sub_10012F2E4((v34 > 1), v29 + 1, 1, v12);
          }

          *(v12 + 16) = v29 + 1;
          v35 = (v12 + 40 * v29);
          v35[4] = 0xD000000000000012;
          v35[5] = 0x8000000100465B40;
          v35[6] = 3;
          v35[7] = v26;
          v35[8] = v28;
        }

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *&v61 = swift_slowAlloc();
          *v38 = 136315394;
          *(v38 + 4) = sub_1002FFA0C(0xD000000000000016, 0x8000000100465B90, &v61);
          *(v38 + 12) = 2080;
          v39 = *(v12 + 16);
          if (v39)
          {
            v52 = v37;
            v53 = v36;
            v60[0] = _swiftEmptyArrayStorage;
            sub_10019F3C0(0, v39, 0);
            v40 = v60[0];
            v41 = (v12 + 40);
            do
            {
              v42 = *(v41 - 1);
              v43 = *v41;
              v60[0] = v40;
              v44 = *(v40 + 16);
              v45 = *(v40 + 24);

              if (v44 >= v45 >> 1)
              {
                sub_10019F3C0((v45 > 1), v44 + 1, 1);
                v40 = v60[0];
              }

              *(v40 + 16) = v44 + 1;
              v46 = v40 + 16 * v44;
              *(v46 + 32) = v42;
              *(v46 + 40) = v43;
              v41 += 5;
              --v39;
            }

            while (v39);
            v36 = v53;
            v37 = v52;
          }

          v47 = Array.description.getter();
          v49 = v48;

          v50 = sub_1002FFA0C(v47, v49, &v61);

          *(v38 + 14) = v50;

          _os_log_impl(&_mh_execute_header, v36, v37, "%s: Overwriting %s to default app candidate list due to default app found upon restore", v38, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        *(*(v1 + 24) + 24) = v12;

        v23 = v54;
        goto LABEL_45;
      case 1:
        v5 = &_mh_execute_header;
        goto LABEL_12;
      default:
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          *&v61 = v17;
          *v16 = 136315138;
          *(v16 + 4) = sub_1002FFA0C(0xD000000000000016, 0x8000000100465B90, &v61);
          v18 = "%s: Missing domain when reconciling panes -- showing no panes";
          goto LABEL_17;
        }

        break;
    }

    v60[0] = v3;
    v60[1] = v2;
    sub_1000B6B54(v60);
    v61 = v59;
    sub_1000B6B54(&v61);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v55 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1002FFA0C(0xD000000000000016, 0x8000000100465B90, &v55);
      _os_log_impl(&_mh_execute_header, v19, v20, "%s: Overwriting empty list to default app candidate list due to no default app found upon restore", v21, 0xCu);
      sub_1000752F4(v22);
    }

    *(*(v1 + 24) + 24) = _swiftEmptyArrayStorage;

    v23 = 0;
LABEL_45:
    v51 = vand_s8(vuzp1_s16(v23, v23), 0x1000100010001);
    result = vuzp1_s8(v51, v51);
    *(*(v1 + 24) + 16) = result.i32[0];
    return result;
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v61 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1002FFA0C(0xD000000000000016, 0x8000000100465B90, &v61);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: Unexpected no default app found on restore, nuke UD", v8, 0xCu);
    sub_1000752F4(v9);
  }

  v10 = *(v1 + 24);
  *(v10 + 20) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = _swiftEmptyArrayStorage;

  return result;
}

uint64_t sub_1001B3FD0(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  if (a2 >= 2)
  {
    if (a2 != 2)
    {
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *&v58[0] = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_1002FFA0C(0xD000000000000027, 0x8000000100465B60, v58);
        _os_log_impl(&_mh_execute_header, v41, v42, "%s Unsupported TCC service", v44, 0xCu);
        sub_1000752F4(v45);
      }

      v39 = 0;
      v40 = 0;
      return v40 | v39 & 1u;
    }

    v48 = 2;
    v6 = TCCContext.getTCCKnownBundleIds(for:filter:)();
    v47 = sub_1001B4720;
  }

  else
  {
    v48 = a2;
    v3 = TCCContext.getTCCKnownBundleIds(for:filter:)();
    v5 = TCCContext.getTCCKnownBundleIds(for:filter:)();
    v6 = sub_10016373C(v5, v3);
    v47 = sub_1001B4754;
  }

  v7 = 0;
  v51 = v6 + 56;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 56);
  v49 = 0;
  v50 = (v8 + 63) >> 6;
  v52 = v2;
  v54 = v6;
LABEL_9:
  v11 = v7;
  while (v10)
  {
    v7 = v11;
LABEL_17:
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v13 = (*(v6 + 48) + ((v7 << 10) | (16 * v12)));
    v15 = *v13;
    v14 = v13[1];
    v16 = objc_allocWithZone(LSApplicationRecord);

    v17 = String._bridgeToObjectiveC()();
    *&v58[0] = 0;
    v3 = [v16 initWithBundleIdentifier:v17 allowPlaceholder:0 error:v58];

    if (v3)
    {
      v25 = *&v58[0];
      v26 = TCCContext.checkTCCAccess(to:for:)();
      if (v48 >= 2)
      {
        v27 = 0;
        v28 = 1;
      }

      else
      {
        v27 = TCCContext.checkTCCAccess(to:for:)();
        v28 = 0;
      }

      if ((v49 & 0x100000000) != 0)
      {
        if ((v49 & 1) == 0)
        {
          HIDWORD(v49) = 1;
          goto LABEL_30;
        }

LABEL_51:
      }

      else
      {
        v29 = v47(v26, v27, v28);
        v30 = v29;
        if (v49)
        {

          v49 = 1;
          if ((v30 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          HIDWORD(v49) = v29;
LABEL_30:
          TCCContext.TCCService.defaultAppTCCService.getter();
          if (v31)
          {

            LOBYTE(v49) = 0;
            goto LABEL_9;
          }

          v53 = v26;
          v32 = v6;
          v33 = v4;
          TCCContext.DefaultAppCapableTCCService.defaultAppEntitlement.getter();
          v34 = [v3 entitlements];
          v35 = String._bridgeToObjectiveC()();

          sub_100156F48();
          v36 = [v34 objectForKey:v35 ofClass:swift_getObjCClassFromMetadata()];

          if (v36)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v56 = 0u;
            v57 = 0u;
          }

          v58[0] = v56;
          v58[1] = v57;
          v4 = v33;
          v6 = v32;
          if (!*(&v57 + 1))
          {

            sub_1001B5024(v58);
            LOBYTE(v49) = 0;
            goto LABEL_9;
          }

          if ((swift_dynamicCast() & 1) == 0)
          {

            LOBYTE(v49) = 0;
            goto LABEL_9;
          }

          v37 = [v55 BOOLValue];

          if ((v37 & 1) == 0)
          {

            LOBYTE(v49) = 0;
            v4 = v33;
            goto LABEL_9;
          }

          v38 = (sub_1001B508C)(v53);

          LOBYTE(v49) = (BYTE4(v49) ^ 1) & v38;
          v4 = v33;
          if ((HIDWORD(v49) & v38 & 1) == 0)
          {
            goto LABEL_9;
          }
        }
      }

      v40 = 256;
      v39 = 1;
      return v40 | v39 & 1u;
    }

    v18 = *&v58[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v19))
    {
      v20 = swift_slowAlloc();
      *&v58[0] = swift_slowAlloc();
      *v20 = 136315394;
      swift_getErrorValue();
      v21 = Error.localizedDescription.getter();
      v23 = sub_1002FFA0C(v21, v22, v58);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v24 = sub_1002FFA0C(v15, v14, v58);

      *(v20 + 14) = v24;
      v4 = v52;
      _os_log_impl(&_mh_execute_header, v3, v19, "computeShouldShowPanes: Error %s when initializing LSApplicationRecord for %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v11 = v7;
    v6 = v54;
  }

  while (1)
  {
    v7 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v7 >= v50)
    {
      break;
    }

    v10 = *(v51 + 8 * v7);
    ++v11;
    if (v10)
    {
      goto LABEL_17;
    }
  }

  v39 = v49;
  if ((v49 & 0x100000000) != 0)
  {
    v40 = 256;
  }

  else
  {
    v40 = 0;
  }

  return v40 | v39 & 1u;
}

BOOL sub_1001B4754(uint64_t a1, uint64_t a2, char a3)
{
  v4 = TCCContext.TCCAccess.rawValue.getter();
  if (v4 != TCCContext.TCCAccess.rawValue.getter() || (a3 & 1) != 0)
  {
    return 1;
  }

  v6 = TCCContext.TCCAccess.rawValue.getter();
  return v6 != TCCContext.TCCAccess.rawValue.getter();
}

void *sub_1001B47F4(uint64_t a1, __n128 a2)
{
  v2 = &_swiftEmptySetSingleton;
  if ((a1 | 2) == 2)
  {
    v2 = TCCContext.getTCCKnownBundleIds(for:filter:)();
  }

  v3 = 0;
  v4 = v2 + 56;
  v5 = 1 << v2[32];
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 7);
  v8 = (v5 + 63) >> 6;
  a2.n128_u64[0] = 136315394;
  v48 = a2;
  v50 = v2;
  v51 = v8;
  v52 = v2 + 56;
  while (v7)
  {
    v9 = v3;
LABEL_14:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 6) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    v14 = objc_allocWithZone(LSApplicationRecord);

    v15 = String._bridgeToObjectiveC()();
    *&v57 = 0;
    v16 = [v14 initWithBundleIdentifier:v15 allowPlaceholder:0 error:&v57];

    if (v16)
    {
      v17 = v57;
      v18 = v12;
      TCCContext.checkTCCAccess(to:for:)();
      v19 = TCCContext.TCCAccess.rawValue.getter();
      if (v19 != TCCContext.TCCAccess.rawValue.getter() && (v20 = TCCContext.TCCAccess.rawValue.getter(), v20 != TCCContext.TCCAccess.rawValue.getter()) || (TCCContext.TCCService.defaultAppTCCService.getter(), (v21 & 1) != 0))
      {

LABEL_7:
        v3 = v9;
        goto LABEL_8;
      }

      TCCContext.DefaultAppCapableTCCService.defaultAppEntitlement.getter();
      v22 = v16;
      v23 = [v22 entitlements];
      v24 = String._bridgeToObjectiveC()();

      sub_100156F48();
      v25 = [v23 objectForKey:v24 ofClass:swift_getObjCClassFromMetadata()];

      if (v25)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v55 = 0u;
        v56 = 0u;
      }

      v57 = v55;
      v58 = v56;
      v2 = v50;
      if (!*(&v56 + 1))
      {

        sub_1001B5024(&v57);
        goto LABEL_7;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_7;
      }

      v34 = [v53 BOOLValue];

      if (v34)
      {
        v35 = TCCContext.TCCService.rawValue.getter();
        if (v35 == TCCContext.TCCService.rawValue.getter())
        {
          v36 = 1;
        }

        else
        {
          v36 = 2;
        }

        v37 = [v22 localizedName];

        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v54[0] = v18;
        v54[1] = v13;
        v54[2] = v36;
        v54[3] = v38;
        v54[4] = v40;
        sub_1000D7A08(&v57, v54);
      }

      else
      {
      }
    }

    else
    {
      v49 = v12;
      v26 = v57;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      swift_errorRetain();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *&v57 = swift_slowAlloc();
        *v29 = v48.n128_u32[0];
        swift_getErrorValue();
        v30 = Error.localizedDescription.getter();
        v32 = sub_1002FFA0C(v30, v31, &v57);

        *(v29 + 4) = v32;
        *(v29 + 12) = 2080;
        v33 = sub_1002FFA0C(v49, v13, &v57);

        *(v29 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v27, v28, "defaultAppCandidates: Error %s when initializing LSApplicationRecord for %s", v29, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }

    v3 = v9;
    v2 = v50;
LABEL_8:
    v8 = v51;
    v4 = v52;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *&v4[8 * v9];
    ++v3;
    if (v7)
    {
      goto LABEL_14;
    }
  }

  v41 = objc_allocWithZone(LSApplicationRecord);
  v42 = sub_10013FCB4(0xD000000000000012, 0x8000000100465B40, 0);
  v43 = [v42 localizedName];
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  *&v57 = 0xD000000000000012;
  *(&v57 + 1) = 0x8000000100465B40;
  *&v58 = 3;
  *(&v58 + 1) = v44;
  v59 = v46;
  sub_1000D7A08(&v55, &v57);

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1001B4E54()
{

  v1 = OBJC_IVAR____TtC10seserviced25SECSettingsPaneReconciler_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SECSettingsPaneReconciler(uint64_t a1)
{
  result = qword_100505878;
  if (!qword_100505878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001B4F54(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001B5024(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100502420, &qword_10040F310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B5090()
{
  v1[31] = v0;
  v2 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[36] = v3;
  v1[37] = *(v3 - 8);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = sub_100068FC4(&qword_100505C98, &unk_10040D970);
  v1[41] = swift_task_alloc();
  sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v4 = type metadata accessor for ProvisioningDevice();
  v1[46] = v4;
  v1[47] = *(v4 - 8);
  v1[48] = swift_task_alloc();
  v1[49] = type metadata accessor for SEStorageManagementPassProvider.DeviceConfiguration(0);
  v1[50] = swift_task_alloc();

  return _swift_task_switch(sub_1001B52E8, 0, 0);
}

uint64_t sub_1001B52E8()
{
  v175 = v0;
  sub_1001BC1A4(v0[31] + OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_deviceConfiguration, v0[50]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[50];
    v2 = *v1;
    v0[51] = *v1;
    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_1001B6730;
    v3 = swift_continuation_init();
    v0[17] = sub_100068FC4(&qword_100505CA0, &unk_10040D980);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1001BB96C;
    v0[13] = &unk_1004CA758;
    v0[14] = v3;
    [v2 allPaymentApplicationUsageSummariesWithCompletion:v0 + 10];
    v4 = v0 + 2;

    return _swift_continuation_await(v4);
  }

  (*(v0[47] + 32))(v0[48], v0[50], v0[46]);
  v5 = ProvisioningDevice.target.getter();
  if (([v5 respondsToSelector:"allPaymentApplicationUsageSummaries"] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v6 = [v5 allPaymentApplicationUsageSummaries];
  swift_unknownObjectRelease();
  if (!v6)
  {
LABEL_9:
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  sub_10009393C(0, &qword_100505CB8, PKPaymentApplicationUsageSummary_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_10:
  (*(v0[47] + 8))(v0[48], v0[46]);
  v173 = _swiftEmptyDictionarySingleton;
  v8 = v7;
  v164 = v7;
  if (v7 >> 62)
  {
    goto LABEL_22;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
    do
    {
      v10 = 0;
      v11 = v8 & 0xC000000000000001;
      v12 = v8 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v11)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *(v12 + 16))
          {
            goto LABEL_21;
          }

          v13 = *(v8 + 8 * v10 + 32);
        }

        v14 = v13;
        v15 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v174[0] = v13;
        sub_1001B7A80(&v173, v174);

        ++v10;
        v8 = v164;
        if (v15 == v9)
        {
          v16 = v173;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v17 = _CocoaArrayWrapper.endIndex.getter();
      v8 = v164;
      v9 = v17;
    }

    while (v17);
  }

  v16 = _swiftEmptyDictionarySingleton;
LABEL_24:
  v18 = v0[31];
  v19 = OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_pkPasses;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = *(v18 + v19);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_127;
  }

  v21 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
LABEL_128:
    v171 = _swiftEmptyArrayStorage;
LABEL_129:

    v145 = v0[1];

    return v145(v171);
  }

LABEL_26:
  v150 = v0[40];
  v151 = v0[41];
  v22 = v0[37];
  v163 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v158 = isUniquelyReferenced_nonNull_native + 32;
  v159 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v161 = (v22 + 56);
  v154 = v22;
  v147 = (v22 + 32);
  v160 = v0[33];
  v162 = v21;

  v23 = 0;
  v171 = _swiftEmptyArrayStorage;
  v172 = v0;
  v169 = v16;
  while (1)
  {
    if (v163)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v23 >= *(v159 + 16))
      {
        goto LABEL_125;
      }

      isUniquelyReferenced_nonNull_native = *(v158 + 8 * v23);
    }

    v24 = isUniquelyReferenced_nonNull_native;
    v25 = __OFADD__(v23, 1);
    v26 = v23 + 1;
    if (v25)
    {
      goto LABEL_124;
    }

    v27 = [isUniquelyReferenced_nonNull_native devicePaymentApplications];
    v170 = v26;
    if (v27)
    {
      v28 = v27;
      sub_10009393C(0, &qword_100505CA8, PKPaymentApplication_ptr);
      sub_1001BC678();
      v29 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v166 = v24;
      if ((v29 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        isUniquelyReferenced_nonNull_native = Set.Iterator.init(_cocoa:)();
        v30 = v172[18];
        v31 = v172[19];
        v32 = v172[20];
        v33 = v172[21];
        v34 = v172[22];
      }

      else
      {
        v36 = -1 << *(v29 + 32);
        v31 = v29 + 56;
        v32 = ~v36;
        v37 = -v36;
        if (v37 < 64)
        {
          v38 = ~(-1 << v37);
        }

        else
        {
          v38 = -1;
        }

        v34 = v38 & *(v29 + 56);

        v33 = 0;
        v30 = v29;
      }

      v0 = ((v32 + 64) >> 6);
      v168 = _swiftEmptyArrayStorage;
      while (1)
      {
        v16 = v33;
        if (v30 < 0)
        {
          v42 = __CocoaSet.Iterator.next()();
          if (!v42 || (v172[30] = v42, swift_dynamicCast(), (v41 = v172[29]) == 0))
          {
LABEL_59:
            sub_100093854(v30);

            v0 = v172;
            v35 = v168;
            v16 = v169;
            v24 = v166;
            goto LABEL_60;
          }
        }

        else
        {
          v39 = v33;
          v40 = v34;
          if (!v34)
          {
            while (1)
            {
              v33 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                break;
              }

              if (v33 >= v0)
              {
                goto LABEL_59;
              }

              v40 = *(v31 + 8 * v33);
              ++v39;
              if (v40)
              {
                goto LABEL_48;
              }
            }

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
            v144 = isUniquelyReferenced_nonNull_native;
            v21 = _CocoaArrayWrapper.endIndex.getter();
            isUniquelyReferenced_nonNull_native = v144;
            if (!v21)
            {
              goto LABEL_128;
            }

            goto LABEL_26;
          }

LABEL_48:
          v34 = (v40 - 1) & v40;
          v41 = *(*(v30 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v40)))));
          if (!v41)
          {
            goto LABEL_59;
          }
        }

        v43 = [v41 applicationIdentifier];
        if (v43)
        {
          v44 = v43;
          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v156 = v46;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_10012EA44(0, v168[2] + 1, 1, v168);
            v168 = isUniquelyReferenced_nonNull_native;
          }

          v48 = v168[2];
          v47 = v168[3];
          if (v48 >= v47 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_10012EA44((v47 > 1), v48 + 1, 1, v168);
            v168 = isUniquelyReferenced_nonNull_native;
          }

          v168[2] = v48 + 1;
          v49 = &v168[2 * v48];
          v49[4] = v45;
          v49[5] = v156;
        }

        else
        {
        }
      }
    }

    v35 = _swiftEmptyArrayStorage;
LABEL_60:
    if ([v24 isHomeKeyPass])
    {
      break;
    }

    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_1000958E4(v63, qword_10051B240);
    v51 = v24;

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v174[0] = swift_slowAlloc();
      *v66 = 136315906;
      v67 = [v51 uniqueID];

      if (!v67)
      {
        goto LABEL_135;
      }

      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      v71 = sub_1002FFA0C(v68, v70, v174);

      *(v66 + 4) = v71;
      *(v66 + 12) = 2080;
      v72 = [v51 localizedDescription];
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;

      v76 = sub_1002FFA0C(v73, v75, v174);

      *(v66 + 14) = v76;
      *(v66 + 22) = 1024;
      LODWORD(v76) = [v51 isUserDeletable];

      *(v66 + 24) = v76;
      *(v66 + 28) = 2080;
      v0[27] = v35;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v77 = BidirectionalCollection<>.joined(separator:)();
      v79 = sub_1002FFA0C(v77, v78, v174);

      *(v66 + 30) = v79;
      _os_log_impl(&_mh_execute_header, v64, v65, "Processing pass %s named %s, user deletable: %{BOOL}d, instance AIDs: %s", v66, 0x26u);
      swift_arrayDestroy();

      v16 = v169;
    }

    else
    {
    }

    if ([v51 isUserDeletable] && v35[2])
    {
      SESnapshot.appletTypes(forAIDs:)();
      v167 = v51;
      v4 = [v167 uniqueID];
      if (!v4)
      {
        goto LABEL_136;
      }

      v95 = v4;
      v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v98 = v97;

      if (v16[2])
      {
        v99 = sub_10008C908(v96, v98);
        v101 = v100;

        if (v101)
        {
          v102 = *(v16[7] + 8 * v99);
          v103 = v102 + 64;
          v104 = -1 << *(v102 + 32);
          if (-v104 < 64)
          {
            v105 = ~(-1 << -v104);
          }

          else
          {
            v105 = -1;
          }

          v106 = v105 & *(v102 + 64);
          v0 = ((63 - v104) >> 6);
          v155 = v102;
          isUniquelyReferenced_nonNull_native = swift_bridgeObjectRetain_n();
          v148 = _swiftEmptyArrayStorage;
          v152 = v0;
          v153 = v103;
          v107 = 0;
          if (!v106)
          {
            goto LABEL_90;
          }

          do
          {
            while (1)
            {
              v108 = v107;
LABEL_93:
              v165 = v172[44];
              v109 = v172[41];
              v16 = v172[36];
              v110 = __clz(__rbit64(v106));
              v106 &= v106 - 1;
              v111 = v110 | (v108 << 6);
              v112 = (*(v155 + 48) + 16 * v111);
              v113 = v112[1];
              v157 = *v112;
              v149 = *(v154 + 72);
              v114 = *(v150 + 48);
              v115 = *(v154 + 16);
              v115(&v109[v114], *(v155 + 56) + v149 * v111, v16);
              *v109 = v157;
              *(v151 + 8) = v113;
              v115(v165, &v109[v114], v16);
              (*(v154 + 56))(v165, 0, 1, v16);

              sub_100075768(v109, &qword_100505C98, &unk_10040D970);
              if ((*(v154 + 48))(v165, 1, v16) != 1)
              {
                break;
              }

              isUniquelyReferenced_nonNull_native = sub_100075768(v172[44], &qword_1005031F0, &unk_10040C4C0);
              v107 = v108;
              v0 = v152;
              v103 = v153;
              if (!v106)
              {
                goto LABEL_90;
              }
            }

            v117 = v172[38];
            v116 = v172[39];
            v16 = v172[36];
            v118 = *v147;
            (*v147)(v116, v172[44], v16);
            v118(v117, v116, v16);
            v0 = v152;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v148 = sub_10012FA80(0, *(v148 + 2) + 1, 1, v148);
            }

            v103 = v153;
            v120 = *(v148 + 2);
            v119 = *(v148 + 3);
            if (v120 >= v119 >> 1)
            {
              v148 = sub_10012FA80((v119 > 1), v120 + 1, 1, v148);
            }

            v121 = v172[38];
            v122 = v172[36];
            *(v148 + 2) = v120 + 1;
            isUniquelyReferenced_nonNull_native = v118(&v148[((*(v154 + 80) + 32) & ~*(v154 + 80)) + v120 * v149], v121, v122);
            v107 = v108;
          }

          while (v106);
LABEL_90:
          while (1)
          {
            v108 = v107 + 1;
            if (__OFADD__(v107, 1))
            {
              goto LABEL_123;
            }

            if (v108 >= v0)
            {
              v0 = v172;
              v136 = v172[45];

              sub_1001B7EF0(v148, v136);

              goto LABEL_114;
            }

            v106 = *(v103 + 8 * v108);
            ++v107;
            if (v106)
            {
              goto LABEL_93;
            }
          }
        }
      }

      else
      {
      }

      (*v161)(v0[45], 1, 1, v0[36]);
LABEL_114:
      v4 = [v167 uniqueID];
      if (!v4)
      {
        goto LABEL_137;
      }

      v137 = v4;
      v138 = v0[45];
      v139 = v0[43];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v140 = [v167 localizedDescription];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000938D4(v138, v139, &qword_1005031F0, &unk_10040C4C0);
      SEStorageManagementViewModel.WalletUsageGroup.PassEntry.init(passUniqueID:instanceAIDs:appletTypes:title:usage:isDeletable:lastUsedDate:)();
      v141 = v171;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v141 = sub_10012FA58(0, v171[2] + 1, 1, v171);
      }

      v130 = v141[2];
      v142 = v141[3];
      v171 = v141;
      v131 = v130 + 1;
      v0 = v172;
      v16 = v169;
      if (v130 >= v142 >> 1)
      {
        v171 = sub_10012FA58((v142 > 1), v130 + 1, 1, v171);
      }

      v143 = v172[45];
      v133 = v172[35];
      v134 = v172[32];

      v135 = v143;
LABEL_120:
      sub_100075768(v135, &qword_1005031F0, &unk_10040C4C0);
      v171[2] = v131;
      isUniquelyReferenced_nonNull_native = (*(v160 + 32))(v171 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v130, v133, v134);
      goto LABEL_28;
    }

LABEL_28:
    v23 = v170;
    if (v170 == v162)
    {

      goto LABEL_129;
    }
  }

  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_1000958E4(v50, qword_10051B240);
  v51 = v24;

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v174[0] = swift_slowAlloc();
    *v54 = 136315394;
    v55 = [v51 uniqueID];

    if (!v55)
    {
      goto LABEL_134;
    }

    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    v59 = sub_1002FFA0C(v56, v58, v174);

    *(v54 + 4) = v59;
    *(v54 + 12) = 2080;
    v0[28] = v35;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v60 = BidirectionalCollection<>.joined(separator:)();
    v62 = sub_1002FFA0C(v60, v61, v174);

    *(v54 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v52, v53, "Processing Home Pass %s with aids %s", v54, 0x16u);
    swift_arrayDestroy();

    v16 = v169;
  }

  else
  {
  }

  v51 = v51;
  v80 = [v51 uniqueID];
  if (v80)
  {
    v81 = v80;
    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v83;

    if (v16[2])
    {
      v85 = sub_10008C908(v82, v84);
      v87 = v86;

      if ((v87 & 1) == 0)
      {
        goto LABEL_106;
      }

      if (!v35[2])
      {
        goto LABEL_126;
      }

      v88 = *(v16[7] + 8 * v85);
      if (!*(v88 + 16))
      {
        goto LABEL_106;
      }

      v89 = v35[4];
      v90 = v35[5];

      v91 = sub_10008C908(v89, v90);
      v93 = v92;

      if (v93)
      {
        (*(v154 + 16))(v0[42], *(v88 + 56) + *(v154 + 72) * v91, v0[36]);

        v94 = 0;
LABEL_107:
        (*v161)(v0[42], v94, 1, v0[36]);
        v123 = [v51 uniqueID];
        if (!v123)
        {
          goto LABEL_133;
        }

        v124 = v123;
        v126 = v0[42];
        v125 = v0[43];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        SESnapshot.appletTypes(forAIDs:)();
        v127 = [v51 localizedDescription];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000938D4(v126, v125, &qword_1005031F0, &unk_10040C4C0);
        SEStorageManagementViewModel.WalletUsageGroup.PassEntry.init(passUniqueID:instanceAIDs:appletTypes:title:usage:isDeletable:lastUsedDate:)();
        v128 = v171;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v128 = sub_10012FA58(0, v171[2] + 1, 1, v171);
        }

        v130 = v128[2];
        v129 = v128[3];
        v171 = v128;
        v131 = v130 + 1;
        v0 = v172;
        v16 = v169;
        if (v130 >= v129 >> 1)
        {
          v171 = sub_10012FA58((v129 > 1), v130 + 1, 1, v171);
        }

        v132 = v172[42];
        v133 = v172[34];
        v134 = v172[32];

        v135 = v132;
        goto LABEL_120;
      }
    }

LABEL_106:
    v94 = 1;
    goto LABEL_107;
  }

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
  return _swift_continuation_await(v4);
}

uint64_t sub_1001B6730()
{

  return _swift_task_switch(sub_1001B6810, 0, 0);
}

void sub_1001B6810()
{
  v170 = v0;
  if (*(v0 + 208))
  {
    v1 = *(v0 + 208);
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v2 = v1;
  v168 = _swiftEmptyDictionarySingleton;
  v159 = v1;
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      v4 = 0;
      v5 = v2 & 0xC000000000000001;
      v6 = v2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v5)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_15;
          }

          v7 = *(v2 + 8 * v4 + 32);
        }

        v8 = v7;
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v169[0] = v7;
        sub_1001B7A80(&v168, v169);

        ++v4;
        v2 = v159;
        if (v9 == v3)
        {
          v10 = v168;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v11 = _CocoaArrayWrapper.endIndex.getter();
      v2 = v159;
      v3 = v11;
    }

    while (v11);
  }

  v10 = _swiftEmptyDictionarySingleton;
LABEL_18:
  v12 = *(v0 + 248);
  v13 = OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_pkPasses;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = *(v12 + v13);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_121;
  }

  v15 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_122:
    v166 = _swiftEmptyArrayStorage;
LABEL_123:

    v141 = *(v0 + 8);

    v141(v166);
    return;
  }

LABEL_20:
  v145 = *(v0 + 320);
  v146 = *(v0 + 328);
  v16 = *(v0 + 296);
  v158 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v153 = isUniquelyReferenced_nonNull_native + 32;
  v154 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v156 = (v16 + 56);
  v149 = v16;
  v142 = (v16 + 32);
  v155 = *(v0 + 264);
  v157 = v15;

  v17 = 0;
  v166 = _swiftEmptyArrayStorage;
  v167 = v0;
  v164 = v10;
  while (1)
  {
    if (v158)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *(v154 + 16))
      {
        goto LABEL_119;
      }

      isUniquelyReferenced_nonNull_native = *(v153 + 8 * v17);
    }

    v18 = isUniquelyReferenced_nonNull_native;
    v19 = __OFADD__(v17, 1);
    v20 = v17 + 1;
    if (v19)
    {
      goto LABEL_118;
    }

    v21 = [isUniquelyReferenced_nonNull_native devicePaymentApplications];
    v165 = v20;
    if (v21)
    {
      v22 = v21;
      sub_10009393C(0, &qword_100505CA8, PKPaymentApplication_ptr);
      sub_1001BC678();
      v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v161 = v18;
      if ((v23 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        isUniquelyReferenced_nonNull_native = Set.Iterator.init(_cocoa:)();
        v24 = v167[18];
        v25 = v167[19];
        v26 = v167[20];
        v27 = v167[21];
        v28 = v167[22];
      }

      else
      {
        v30 = -1 << *(v23 + 32);
        v25 = v23 + 56;
        v26 = ~v30;
        v31 = -v30;
        if (v31 < 64)
        {
          v32 = ~(-1 << v31);
        }

        else
        {
          v32 = -1;
        }

        v28 = v32 & *(v23 + 56);

        v27 = 0;
        v24 = v23;
      }

      v0 = (v26 + 64) >> 6;
      v163 = _swiftEmptyArrayStorage;
      while (1)
      {
        v10 = v27;
        if (v24 < 0)
        {
          v36 = __CocoaSet.Iterator.next()();
          if (!v36 || (v167[30] = v36, swift_dynamicCast(), (v35 = v167[29]) == 0))
          {
LABEL_53:
            sub_100093854(v24);

            v0 = v167;
            v29 = v163;
            v10 = v164;
            v18 = v161;
            goto LABEL_54;
          }
        }

        else
        {
          v33 = v27;
          v34 = v28;
          if (!v28)
          {
            while (1)
            {
              v27 = v33 + 1;
              if (__OFADD__(v33, 1))
              {
                break;
              }

              if (v27 >= v0)
              {
                goto LABEL_53;
              }

              v34 = *(v25 + 8 * v27);
              ++v33;
              if (v34)
              {
                goto LABEL_42;
              }
            }

            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            v140 = isUniquelyReferenced_nonNull_native;
            v15 = _CocoaArrayWrapper.endIndex.getter();
            isUniquelyReferenced_nonNull_native = v140;
            if (!v15)
            {
              goto LABEL_122;
            }

            goto LABEL_20;
          }

LABEL_42:
          v28 = (v34 - 1) & v34;
          v35 = *(*(v24 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v34)))));
          if (!v35)
          {
            goto LABEL_53;
          }
        }

        v37 = [v35 applicationIdentifier];
        if (v37)
        {
          v38 = v37;
          v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v151 = v40;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_10012EA44(0, v163[2] + 1, 1, v163);
            v163 = isUniquelyReferenced_nonNull_native;
          }

          v42 = v163[2];
          v41 = v163[3];
          if (v42 >= v41 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_10012EA44((v41 > 1), v42 + 1, 1, v163);
            v163 = isUniquelyReferenced_nonNull_native;
          }

          v163[2] = v42 + 1;
          v43 = &v163[2 * v42];
          v43[4] = v39;
          v43[5] = v151;
        }

        else
        {
        }
      }
    }

    v29 = _swiftEmptyArrayStorage;
LABEL_54:
    if ([v18 isHomeKeyPass])
    {
      break;
    }

    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_1000958E4(v57, qword_10051B240);
    v45 = v18;

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v169[0] = swift_slowAlloc();
      *v60 = 136315906;
      v61 = [v45 uniqueID];

      if (!v61)
      {
        goto LABEL_129;
      }

      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v65 = sub_1002FFA0C(v62, v64, v169);

      *(v60 + 4) = v65;
      *(v60 + 12) = 2080;
      v66 = [v45 localizedDescription];
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      v70 = sub_1002FFA0C(v67, v69, v169);

      *(v60 + 14) = v70;
      *(v60 + 22) = 1024;
      LODWORD(v70) = [v45 isUserDeletable];

      *(v60 + 24) = v70;
      *(v60 + 28) = 2080;
      *(v0 + 216) = v29;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v71 = BidirectionalCollection<>.joined(separator:)();
      v73 = sub_1002FFA0C(v71, v72, v169);

      *(v60 + 30) = v73;
      _os_log_impl(&_mh_execute_header, v58, v59, "Processing pass %s named %s, user deletable: %{BOOL}d, instance AIDs: %s", v60, 0x26u);
      swift_arrayDestroy();

      v10 = v164;
    }

    else
    {
    }

    if ([v45 isUserDeletable] && v29[2])
    {
      SESnapshot.appletTypes(forAIDs:)();
      v162 = v45;
      v89 = [v162 uniqueID];
      if (!v89)
      {
        goto LABEL_130;
      }

      v90 = v89;
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;

      if (v10[2])
      {
        v94 = sub_10008C908(v91, v93);
        v96 = v95;

        if (v96)
        {
          v97 = *(v10[7] + 8 * v94);
          v98 = v97 + 64;
          v99 = -1 << *(v97 + 32);
          if (-v99 < 64)
          {
            v100 = ~(-1 << -v99);
          }

          else
          {
            v100 = -1;
          }

          v101 = v100 & *(v97 + 64);
          v0 = (63 - v99) >> 6;
          v150 = v97;
          isUniquelyReferenced_nonNull_native = swift_bridgeObjectRetain_n();
          v102 = 0;
          v143 = _swiftEmptyArrayStorage;
          v147 = v0;
          v148 = v98;
LABEL_83:
          v103 = v102;
          if (!v101)
          {
            goto LABEL_85;
          }

          do
          {
            v102 = v103;
LABEL_88:
            v160 = v167[44];
            v104 = v167[41];
            v10 = v167[36];
            v105 = __clz(__rbit64(v101));
            v101 &= v101 - 1;
            v106 = v105 | (v102 << 6);
            v107 = (*(v150 + 48) + 16 * v106);
            v108 = v107[1];
            v152 = *v107;
            v144 = *(v149 + 72);
            v109 = *(v145 + 48);
            v110 = *(v149 + 16);
            v110(&v104[v109], *(v150 + 56) + v144 * v106, v10);
            *v104 = v152;
            *(v146 + 8) = v108;
            v110(v160, &v104[v109], v10);
            (*(v149 + 56))(v160, 0, 1, v10);

            sub_100075768(v104, &qword_100505C98, &unk_10040D970);
            if ((*(v149 + 48))(v160, 1, v10) != 1)
            {
              v112 = v167[38];
              v111 = v167[39];
              v10 = v167[36];
              v113 = *v142;
              (*v142)(v111, v167[44], v10);
              v113(v112, v111, v10);
              v0 = v147;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v143 = sub_10012FA80(0, *(v143 + 2) + 1, 1, v143);
              }

              v98 = v148;
              v115 = *(v143 + 2);
              v114 = *(v143 + 3);
              if (v115 >= v114 >> 1)
              {
                v143 = sub_10012FA80((v114 > 1), v115 + 1, 1, v143);
              }

              v116 = v167[38];
              v117 = v167[36];
              *(v143 + 2) = v115 + 1;
              isUniquelyReferenced_nonNull_native = v113(&v143[((*(v149 + 80) + 32) & ~*(v149 + 80)) + v115 * v144], v116, v117);
              goto LABEL_83;
            }

            isUniquelyReferenced_nonNull_native = sub_100075768(v167[44], &qword_1005031F0, &unk_10040C4C0);
            v103 = v102;
            v0 = v147;
            v98 = v148;
          }

          while (v101);
LABEL_85:
          while (1)
          {
            v102 = v103 + 1;
            if (__OFADD__(v103, 1))
            {
              goto LABEL_117;
            }

            if (v102 >= v0)
            {
              v0 = v167;
              v131 = v167[45];

              sub_1001B7EF0(v143, v131);

              goto LABEL_108;
            }

            v101 = *(v98 + 8 * v102);
            ++v103;
            if (v101)
            {
              goto LABEL_88;
            }
          }
        }
      }

      else
      {
      }

      (*v156)(*(v0 + 360), 1, 1, *(v0 + 288));
LABEL_108:
      v132 = [v162 uniqueID];
      if (!v132)
      {
        goto LABEL_131;
      }

      v133 = v132;
      v134 = *(v0 + 360);
      v135 = *(v0 + 344);
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v136 = [v162 localizedDescription];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000938D4(v134, v135, &qword_1005031F0, &unk_10040C4C0);
      SEStorageManagementViewModel.WalletUsageGroup.PassEntry.init(passUniqueID:instanceAIDs:appletTypes:title:usage:isDeletable:lastUsedDate:)();
      v137 = v166;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v137 = sub_10012FA58(0, v166[2] + 1, 1, v166);
      }

      v125 = v137[2];
      v138 = v137[3];
      v166 = v137;
      v126 = v125 + 1;
      v0 = v167;
      v10 = v164;
      if (v125 >= v138 >> 1)
      {
        v166 = sub_10012FA58((v138 > 1), v125 + 1, 1, v166);
      }

      v139 = v167[45];
      v128 = v167[35];
      v129 = v167[32];

      v130 = v139;
LABEL_114:
      sub_100075768(v130, &qword_1005031F0, &unk_10040C4C0);
      v166[2] = v126;
      isUniquelyReferenced_nonNull_native = (*(v155 + 32))(v166 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v125, v128, v129);
      goto LABEL_22;
    }

LABEL_22:
    v17 = v165;
    if (v165 == v157)
    {

      goto LABEL_123;
    }
  }

  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_1000958E4(v44, qword_10051B240);
  v45 = v18;

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v169[0] = swift_slowAlloc();
    *v48 = 136315394;
    v49 = [v45 uniqueID];

    if (!v49)
    {
      goto LABEL_128;
    }

    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = sub_1002FFA0C(v50, v52, v169);

    *(v48 + 4) = v53;
    *(v48 + 12) = 2080;
    *(v0 + 224) = v29;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v54 = BidirectionalCollection<>.joined(separator:)();
    v56 = sub_1002FFA0C(v54, v55, v169);

    *(v48 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v46, v47, "Processing Home Pass %s with aids %s", v48, 0x16u);
    swift_arrayDestroy();

    v10 = v164;
  }

  else
  {
  }

  v45 = v45;
  v74 = [v45 uniqueID];
  if (v74)
  {
    v75 = v74;
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;

    if (v10[2])
    {
      v79 = sub_10008C908(v76, v78);
      v81 = v80;

      if ((v81 & 1) == 0)
      {
        goto LABEL_100;
      }

      if (!v29[2])
      {
        goto LABEL_120;
      }

      v82 = *(v10[7] + 8 * v79);
      if (!*(v82 + 16))
      {
        goto LABEL_100;
      }

      v83 = v29[4];
      v84 = v29[5];

      v85 = sub_10008C908(v83, v84);
      v87 = v86;

      if (v87)
      {
        (*(v149 + 16))(*(v0 + 336), *(v82 + 56) + *(v149 + 72) * v85, *(v0 + 288));

        v88 = 0;
LABEL_101:
        (*v156)(*(v0 + 336), v88, 1, *(v0 + 288));
        v118 = [v45 uniqueID];
        if (!v118)
        {
          goto LABEL_127;
        }

        v119 = v118;
        v121 = *(v0 + 336);
        v120 = *(v0 + 344);
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        SESnapshot.appletTypes(forAIDs:)();
        v122 = [v45 localizedDescription];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000938D4(v121, v120, &qword_1005031F0, &unk_10040C4C0);
        SEStorageManagementViewModel.WalletUsageGroup.PassEntry.init(passUniqueID:instanceAIDs:appletTypes:title:usage:isDeletable:lastUsedDate:)();
        v123 = v166;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_10012FA58(0, v166[2] + 1, 1, v166);
        }

        v125 = v123[2];
        v124 = v123[3];
        v166 = v123;
        v126 = v125 + 1;
        v0 = v167;
        v10 = v164;
        if (v125 >= v124 >> 1)
        {
          v166 = sub_10012FA58((v124 > 1), v125 + 1, 1, v166);
        }

        v127 = v167[42];
        v128 = v167[34];
        v129 = v167[32];

        v130 = v127;
        goto LABEL_114;
      }
    }

LABEL_100:
    v88 = 1;
    goto LABEL_101;
  }

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
}

uint64_t sub_1001B7A80(uint64_t *a1, id *a2)
{
  v53 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  __chkstk_darwin(v7 - 8);
  v52 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  __chkstk_darwin(v12);
  v14 = &v51 - v13;
  v16 = __chkstk_darwin(v15);
  v18 = &v51 - v17;
  v19 = *a2;
  v20 = [*a2 lastUsed];
  if (v20)
  {
    v21 = v20;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = v4[4];
    v22(v14, v6, v3);
    v24 = v4[7];
    v23 = v4 + 56;
    v24(v14, 0, 1, v3);
    v22(v18, v14, v3);
    v24(v18, 0, 1, v3);
  }

  else
  {
    v25 = v4[7];
    v26 = 1;
    v25(v14, 1, 1, v3);
    v27 = [v19 lastUsedTransaction];
    if (v27)
    {
      v28 = v27;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = 0;
    }

    v25(v11, v26, 1, v3);
    sub_1001BC6E0(v11, v18);
    v29 = v4[6];
    v23 = v4 + 48;
    if (v29(v14, 1, v3) != 1)
    {
      sub_100075768(v14, &qword_1005031F0, &unk_10040C4C0);
    }
  }

  v30 = [v19 passUniqueIdentifier];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = [v19 paymentApplicationIdentifier];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  sub_1000938D4(v18, v52, &qword_1005031F0, &unk_10040C4C0);
  v38 = v53;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v38;
  v40 = v54;
  v42 = sub_10008C908(v31, v33);
  v43 = v40[2];
  v44 = (v41 & 1) == 0;
  v45 = v43 + v44;
  if (__OFADD__(v43, v44))
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v41;
  if (v40[3] >= v45)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

LABEL_17:
    sub_100312ECC();
    goto LABEL_12;
  }

  sub_10030D5E4(v45, isUniquelyReferenced_nonNull_native);
  v46 = sub_10008C908(v31, v33);
  if ((v23 & 1) != (v47 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v42 = v46;
LABEL_12:
  v48 = v54;
  *v53 = v54;
  if (v23)
  {
  }

  else
  {
    v49 = sub_1000919FC(_swiftEmptyArrayStorage);
    sub_10031785C(v42, v31, v33, v49, v48);
  }

  sub_1000C5B04(v52, v35, v37);
  return sub_100075768(v18, &qword_1005031F0, &unk_10040C4C0);
}

uint64_t sub_1001B7EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  __chkstk_darwin(*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = __chkstk_darwin(v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10.n128_f64[0]);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_1001BC264(&qword_100505CC0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v21 = dispatch thunk of static Comparable.< infix(_:_:)();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

uint64_t sub_1001B81A0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for SERXPCInternalErrors();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for SEStorageManagementPassProvider.DeviceConfiguration(0);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for SESnapshot.TargetDevice();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_1001B82F8, 0, 0);
}

uint64_t sub_1001B82F8()
{
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *(v1 + 16) = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_1001B83DC;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1001B83DC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1001B8B94;
  }

  else
  {

    v2 = sub_1001B84F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B84F8()
{
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_1001B85CC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1, 0, 0, 0x5F286574656C6564, 0xEA0000000000293ALL, sub_1001B9D2C, 0, &type metadata for () + 1);
}

uint64_t sub_1001B85CC()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1001B8C28;
  }

  else
  {
    v2 = sub_1001B86E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B86E0(uint64_t a1, uint64_t a2)
{
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B240);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Deletion TSM succeeded", v6, 2u);
  }

  v7 = v2[5];
  v8 = v2[6];

  v9 = OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_pkPasses;
  swift_beginAccess();

  v10 = sub_1001BBD04((v8 + v9), v7);

  v12 = *(v8 + v9);
  if (v12 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v13 = result;
    if (result >= v10)
    {
      goto LABEL_7;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13 < v10)
  {
    goto LABEL_14;
  }

LABEL_7:
  v14 = v2[11];
  v15 = v2[6];
  sub_1001A2724(v10, v13);
  swift_endAccess();
  sub_1001BC1A4(v15 + OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_deviceConfiguration, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = v2[13];
  v17 = v2[14];
  v19 = v2[11];
  v20 = v2[12];
  if (EnumCaseMultiPayload == 1)
  {
    sub_1001BC208(v2[11]);
    (*(v18 + 104))(v17, enum case for SESnapshot.TargetDevice.pairedWatch(_:), v20);
  }

  else
  {
    (*(v18 + 104))(v2[14], enum case for SESnapshot.TargetDevice.currentDevice(_:), v2[12]);
    v21 = type metadata accessor for ProvisioningDevice();
    (*(*(v21 - 8) + 8))(v19, v21);
  }

  (*(v2[13] + 32))(v2[15], v2[14], v2[12]);
  type metadata accessor for SERXPCServer();
  v22 = swift_task_alloc();
  v2[21] = v22;
  *v22 = v2;
  v22[1] = sub_1001B89C4;
  v23 = v2[15];
  v24 = v2[9];

  return sub_1002BC9B0(0, 0xF000000000000000, v23, v24);
}

uint64_t sub_1001B89C4(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = sub_1001B8EA4;
  }

  else
  {
    *(v4 + 176) = a1;
    v5 = sub_1001B8AE8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001B8AE8()
{
  (*(v0[13] + 8))(v0[15], v0[12]);

  v1 = v0[1];
  v2 = v0[22];

  return v1(v2);
}

uint64_t sub_1001B8B94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001B8C28(uint64_t a1, uint64_t a2)
{
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B240);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Deletion failed with error %@", v6, 0xCu);
    sub_100075768(v7, &unk_100503F70, &unk_10040B2E0);
  }

  v9 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  sub_1001BC264(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
  swift_allocError();
  *v10 = 0xD000000000000013;
  v10[1] = 0x8000000100465CD0;
  (*(*(v9 - 8) + 104))(v10, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v9);
  swift_willThrow();

  v11 = *(v2 + 8);

  return v11();
}

uint64_t sub_1001B8EA4()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  sub_1001BC264(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_allocError();
  (*(v5 + 32))(v7, v4, v6);
  (*(v3 + 8))(v1, v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001B8FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  sub_100068FC4(&qword_100504250, &qword_10040D610);
  v4[8] = swift_task_alloc();
  v5 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_1001B90D8, 0, 0);
}

void sub_1001B90D8()
{
  v57 = v0;
  v1 = v0[6];
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_13:
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    ThrowingTaskGroup.cancelAll()();

    v31 = v0[1];
LABEL_21:

    v31();
    return;
  }

  v3 = v0[10];
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v52 = OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_pkPasses;
  v53 = v0[7];
  swift_beginAccess();
  v5 = 0;
  v54 = *(v3 + 16);
  v6 = (v3 + 8);
  v51 = *(v3 + 72);
  while (1)
  {
    v8 = v0[12];
    v54(v8, v4, v0[9]);
    v9 = *(v53 + v52);
    v10 = swift_task_alloc();
    *(v10 + 16) = v8;

    v11 = sub_10011F6D0(sub_1001BC3D4, v10, v9);

    v55 = v5;
    if (!v11)
    {
      if (qword_100501938 != -1)
      {
        swift_once();
      }

      v19 = v0[11];
      v18 = v0[12];
      v20 = v0[9];
      v21 = type metadata accessor for Logger();
      sub_1000958E4(v21, qword_10051B240);
      v54(v19, v18, v20);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      v24 = os_log_type_enabled(v22, v23);
      v25 = v0[11];
      v26 = v0[9];
      if (v24)
      {
        v27 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v56[0] = v50;
        *v27 = 136315138;
        v48 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
        v29 = v28;
        v49 = v23;
        v7 = *v6;
        (*v6)(v25, v26);
        v30 = sub_1002FFA0C(v48, v29, v56);

        *(v27 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v22, v49, "PK Pass not found during deletion %s", v27, 0xCu);
        sub_1000752F4(v50);
      }

      else
      {

        v7 = *v6;
        (*v6)(v25, v26);
      }

      v7(v0[12], v0[9]);
      goto LABEL_4;
    }

    v12 = v0[7];
    v13 = v0[8];
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v12;
    v15[5] = v11;

    v16 = v11;
    v17 = sub_1001B9B0C(v13, &unk_10040D968, v15);
    sub_100075768(v13, &qword_100504250, &qword_10040D610);
    if ((v17 & 1) == 0)
    {
      break;
    }

    (*v6)(v0[12], v0[9]);
LABEL_4:
    v4 += v51;
    --v2;
    v5 = v55;
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_1000958E4(v32, qword_10051B240);
  v33 = v16;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  v36 = v6;
  if (!os_log_type_enabled(v34, v35))
  {

LABEL_20:
    v44 = v0[12];
    v45 = v0[9];
    v46 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    sub_1001BC264(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
    swift_allocError();
    *v47 = 0xD00000000000001BLL;
    v47[1] = 0x8000000100465D10;
    (*(*(v46 - 8) + 104))(v47, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v46);
    swift_willThrow();

    (*v36)(v44, v45);
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    ThrowingTaskGroup.cancelAll()();

    v31 = v0[1];
    goto LABEL_21;
  }

  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v56[0] = v38;
  *v37 = 136315138;
  v39 = [v33 uniqueID];

  if (v39)
  {
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = sub_1002FFA0C(v40, v42, v56);

    *(v37 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v34, v35, "Unable to schedule deletion for pass %s", v37, 0xCu);
    sub_1000752F4(v38);

    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_1001B97A8(id *a1)
{
  v1 = [*a1 uniqueID];
  if (!v1)
  {
    SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
    goto LABEL_9;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
  if (!v5)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_11;
  }

  if (v3 == v6 && v5 == v7)
  {

    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_11:

  return v9 & 1;
}

uint64_t sub_1001B9878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1001B9898, 0, 0);
}

uint64_t sub_1001B9898()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1001B998C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0x70286574656C6564, 0xED0000293A737361, sub_1001BC4FC, v1, &type metadata for () + 1);
}

uint64_t sub_1001B998C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1001B9AA8;
  }

  else
  {

    v2 = sub_100133C30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B9AA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001B9B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - v7;
  v9 = *v3;
  v10 = swift_taskGroup_addPending();
  if (v10)
  {
    sub_1000938D4(a1, v8, &qword_100504250, &qword_10040D610);
    v11 = type metadata accessor for TaskPriority();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v8, 1, v11) == 1)
    {
      sub_100075768(v8, &qword_100504250, &qword_10040D610);
      if (*(a3 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v12 + 8))(v8, v11);
      if (*(a3 + 16))
      {
LABEL_4:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v13 = dispatch thunk of Actor.unownedExecutor.getter();
        v15 = v14;
        swift_unknownObjectRelease();
        v16 = (v15 | v13);
        if (v15 | v13)
        {
          v19[0] = 0;
          v19[1] = 0;
          v16 = v19;
          v19[2] = v13;
          v19[3] = v15;
        }

        goto LABEL_6;
      }
    }

    v16 = 0;
LABEL_6:
    v18[1] = 1;
    v18[2] = v16;
    v18[3] = v9;
    swift_task_create();
  }

  return v10 & 1;
}