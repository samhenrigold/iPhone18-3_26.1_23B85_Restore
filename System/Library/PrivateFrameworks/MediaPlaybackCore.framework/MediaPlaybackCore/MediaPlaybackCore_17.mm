uint64_t sub_1C5DF1850(int *a1, int a2)
{
  v4 = *(a1 + 1);
  v6 = *(a1 + 2);
  v5 = *(a1 + 3);
  v7 = *(a1 + 4);
  v72 = *a1;
  v73 = *(a1 + 5);
  v9 = *(a1 + 6);
  v8 = *(a1 + 7);
  v10 = *(a1 + 8);
  if (((v10 >> 1) & 2 | (v10 >> 58) & 0x3C) == 4)
  {
    v11 = v4;
    sub_1C6014D30();

    v12 = swift_beginAccess();
    MEMORY[0x1C69535C0](v12);
    sub_1C5C68934(*((*(v2 + 232) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1C6016B70();
    swift_endAccess();
  }

  sub_1C5DF09CC(__src);
  memcpy(__dst, __src, sizeof(__dst));
  v85 = v72;
  v86 = v4;
  v87 = v6;
  v88 = v5;
  v89 = v7;
  v90 = v73;
  v91 = v9;
  v92 = v8;
  v93 = v10;
  v13 = LOWORD(__src[8]) | (BYTE2(__src[8]) << 16);
  if ((~v13 & 0xFEFEFE) == 0)
  {
LABEL_4:
    sub_1C5D5D5AC(a1, &v95);
LABEL_5:
    sub_1C5DF4818();
    return 0;
  }

  v64 = v9;
  v65 = v7;
  v16 = *(&__src[1] + 1) | ((*(&__src[1] + 5) | (HIBYTE(__src[1]) << 16)) << 32);
  v17 = __src[3];
  v18 = __src[4];
  switch(v13 >> 20)
  {
    case 1u:
      v19 = (*(a1 + 8) >> 58) & 0x3C | (*(a1 + 8) >> 1) & 3;
      if (v19 == 3)
      {
        if ((__src[1] & 1) == 0)
        {
LABEL_46:
          v95 = *&v72;
          v96 = v4;
          v97 = v6;
          v98 = v5;
          v99 = v7;
          v100 = v73;
          v101 = v9;
          v102 = v8;
          v103 = v10;
          v14 = 1;
          v104 = 1;
          swift_unknownObjectRetain();
          goto LABEL_95;
        }

        goto LABEL_87;
      }

      if (v19 != 22)
      {
        if (v19 != 21)
        {
          goto LABEL_4;
        }

        if (__src[1])
        {
          v95 = *&v72;
          v96 = v4;
          v97 = v6;
          v98 = v5;
          v99 = v7;
          v100 = v73;
          v101 = v9;
          v102 = v8;
          v103 = v10;
          v14 = 1;
          v104 = 1;
          v75 = v72;
          v76 = v4;
          v77 = v6;
          v78 = v5;
          v79 = v7;
          v80 = v73;
          v81 = v9;
          v82 = v8;
          v83 = v10 & 0xFFFFFFFFFFFFFF9;
          sub_1C5DF444C(&v75, v74);
          goto LABEL_96;
        }

        v95 = *&v72;
        v96 = v4;
        v97 = v6;
        v98 = v5;
        v99 = v7;
        v100 = v73;
        v101 = v9;
        v102 = v8;
        v103 = v10 & 0xFFFFFFFFFFFFFF9;
        goto LABEL_92;
      }

      if ((__src[1] & 1) == 0 || *(a1 + 2) != 1 || *(a1 + 3) != 11)
      {
        goto LABEL_76;
      }

      sub_1C5D5D5AC(a1, &v95);
      swift_unknownObjectRetain();
      sub_1C5DF4818();
      v48 = a2;
      if ((~a2 & 0xFEF8) == 0)
      {
        goto LABEL_74;
      }

      v49 = a2 >> 14;
      if (a2 >> 14)
      {
        goto LABEL_72;
      }

      if ((a2 & 0x100) != 0 || (a2 & 1) == 0)
      {
        goto LABEL_111;
      }

      goto LABEL_110;
    case 2u:
      v21 = (*(a1 + 8) >> 58) & 0x3C | (*(a1 + 8) >> 1) & 3;
      if (v21 == 22)
      {
        if (*(a1 + 2) != 1 || *(a1 + 3) != 11)
        {
LABEL_76:
          swift_unknownObjectRetain();
          sub_1C5D8B86C(v4, v6);
          sub_1C5D869C0(v5);
LABEL_88:

          goto LABEL_5;
        }

        sub_1C5D5D5AC(a1, &v95);
        swift_unknownObjectRetain();
        sub_1C5DF4818();
        v48 = a2;
        if ((~a2 & 0xFEF8) != 0)
        {
          v49 = a2 >> 14;
          if (!(a2 >> 14))
          {
            if (a2 & 0x100) == 0 && (a2)
            {
              goto LABEL_110;
            }

LABEL_111:
            v71 = v8;
            if ((v48 & 0x100) == 0 && (v48 & 1) == 0)
            {
LABEL_110:
              swift_unknownObjectRelease();
              return 0;
            }

LABEL_75:
            sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
            sub_1C6016940();
            v95 = 11;
            sub_1C6016880();
            _s3__C4CodeOMa_6();
            sub_1C5DF5240(&qword_1ED7DCDE0, _s3__C4CodeOMa_6, &unk_1C6035958);
            v50 = sub_1C6017280();

            swift_unknownObjectRelease();
            v95 = *&v72;
            v96 = v4;
            v97 = v6;
            v98 = v5;
            v99 = v65;
            v100 = v73;
            v101 = v9;
            v102 = v71;
            v103 = v10;
            v14 = 1;
            v104 = 1;
            sub_1C5DF0A74(v50, &v95);

            return v14;
          }

LABEL_72:
          if (v49 != 1 && v48 >= -32763)
          {
            goto LABEL_110;
          }
        }

LABEL_74:
        v71 = v8;
        goto LABEL_75;
      }

      if (v21 != 21)
      {
        goto LABEL_4;
      }

      v95 = *&v72;
      v96 = v4;
      v97 = v6;
      v98 = v5;
      v99 = v7;
      v100 = v73;
      v101 = v9;
      v102 = v8;
      v103 = v10 & 0xFFFFFFFFFFFFFF9;
LABEL_63:
      v45 = v73;
      v46 = *&v72;
      sub_1C5DF444C(&v95, &v75);
LABEL_64:
      sub_1C5DF4818();
LABEL_65:
      v95 = v46;
      v96 = v4;
      v97 = v6;
      v98 = v5;
      v99 = v7;
      v100 = v45;
      v101 = v9;
      v102 = v8;
      v103 = v10;
      v14 = 1;
      v104 = 1;
      sub_1C5DF0A74(0, &v95);
      return v14;
    case 3u:
      v44 = (*(a1 + 8) >> 58) & 0x3C | (*(a1 + 8) >> 1) & 3;
      if (v44 != 35)
      {
        if (v44 != 22)
        {
          goto LABEL_4;
        }

        v45 = v73;
        v46 = *&v72;
        swift_unknownObjectRetain();
        sub_1C5D8B86C(v4, v6);
        sub_1C5D869C0(v5);
        goto LABEL_50;
      }

      v70 = *a1;
      v45 = v73;
      v46 = *&v72;

      sub_1C5DF4818();
      if (v70 != 0.0)
      {
        return 0;
      }

      goto LABEL_65;
    case 4u:
      if (((*(a1 + 8) >> 58) & 0x3C | (*(a1 + 8) >> 1) & 3) != 0x19)
      {
        goto LABEL_4;
      }

      if (vabds_f32(*(a1 + 2), *__src) < 0.00000011921)
      {
        goto LABEL_46;
      }

      goto LABEL_87;
    case 5u:
      v47 = (*(a1 + 8) >> 58) & 0x3C | (*(a1 + 8) >> 1) & 3;
      if (v47 == 29)
      {
        v95 = *&v72;
        v96 = v4;
        v97 = v6;
        v98 = v5;
        goto LABEL_62;
      }

      if (v47 != 25)
      {
        goto LABEL_4;
      }

      goto LABEL_49;
    case 6u:
      v20 = (*(a1 + 8) >> 58) & 0x3C | (*(a1 + 8) >> 1) & 3;
      if (v20 == 22)
      {
        v45 = v73;
        v46 = *&v72;
        swift_unknownObjectRetain();
        sub_1C5D8B86C(v4, v6);
        sub_1C5D869C0(v5);

        sub_1C5DF4818();
        goto LABEL_65;
      }

      if (v20 == 29)
      {
        v95 = *&v72;
        v96 = v4;
        v97 = v6;
        v98 = v5;
LABEL_62:
        v99 = v7;
        v100 = v73;
        v101 = v9;
        v102 = v8;
        v103 = v10 & 0xFFFFFFFFFFFFFF9;
        goto LABEL_63;
      }

      if (v20 != 25)
      {
        goto LABEL_4;
      }

LABEL_49:
      v45 = v73;
      v46 = *&v72;
      swift_unknownObjectRetain();
LABEL_50:

      goto LABEL_64;
    case 8u:
      if (((*(a1 + 8) >> 58) & 0x3C | (*(a1 + 8) >> 1) & 3) != 0x1D)
      {
        goto LABEL_4;
      }

      v60 = __src[4];
      v62 = __src[3];
      v67 = *(a1 + 1);
      v69 = v8;
      v22 = *(a1 + 5);
      v23 = *(a1 + 6);
      v24 = *a1;
      if ((LOBYTE(__src[1]) | (v16 << 8)) != v22 || __src[2] != v23)
      {
        v59 = *a1;
        v26 = sub_1C6017860();
        LOBYTE(v24) = v59;
        if ((v26 & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      if (v24)
      {
        sub_1C5D5D5AC(a1, &v95);

        v27 = v60;
        sub_1C5C74C28(v62, v60);
        swift_unknownObjectRetain();
        v28 = 0;
      }

      else
      {
        v75 = 0.0;
        v76 = 0xE000000000000000;
        sub_1C5D5D5AC(a1, &v95);

        sub_1C5C74C28(v62, v60);
        swift_unknownObjectRetain();

        sub_1C6017540();
        MEMORY[0x1C69534E0](0x6F206F546B656553, 0xEA0000000000206ELL);
        if (v67)
        {
          ObjectType = swift_getObjectType();
          v52 = v67;
        }

        else
        {
          v52 = 0;
          ObjectType = 0;
          v96 = 0;
          v97 = 0;
        }

        v95 = v52;
        v98 = ObjectType;
        swift_unknownObjectRetain();
        DefaultStringInterpolation.appendInterpolation(describing:default:)(&v95, 7104878, 0xE300000000000000);
        sub_1C5DF47C8();
        MEMORY[0x1C69534E0](0xD000000000000016, 0x80000001C60557C0);
        sub_1C6016D10();
        MEMORY[0x1C69534E0](0xD000000000000012, 0x80000001C60557E0);
        MEMORY[0x1C69534E0](v22, v23);

        MEMORY[0x1C69534E0](93, 0xE100000000000000);
        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        v95 = 10;
        sub_1C6016880();
        _s3__C4CodeOMa_6();
        sub_1C5DF5240(&qword_1ED7DCDE0, _s3__C4CodeOMa_6, &unk_1C6035958);
        v28 = sub_1C6017280();

        v27 = v60;
      }

      v95 = *&v72;
      v96 = v4;
      v97 = v6;
      v98 = v5;
      v99 = v65;
      v100 = v73;
      v101 = v64;
      v102 = v69;
      v103 = v10;
      v14 = 1;
      v104 = 1;
      sub_1C5DF0A74(v28, &v95);
      swift_unknownObjectRelease();

      v54 = v62;
      v55 = v27;
      goto LABEL_102;
    case 0xAu:
      v69 = v8;
      *&v29 = LODWORD(__src[0]) | (HIDWORD(__src[0]) << 32);
      v30 = v29;
      v31 = *a1;
      v32 = (*(a1 + 8) >> 58) & 0x3C | (*(a1 + 8) >> 1) & 3;
      if (v32 != 8)
      {
        switch(v32)
        {
          case 24:
            if ((~HIDWORD(__src[0]) & 0x7FF00000) == 0 && (*&v29 & 0xFFFFFFFFFFFFFLL) != 0 || vabdd_f64(v31, v29) >= 1.0)
            {
              swift_unknownObjectRetain();
              sub_1C5D8B86C(v6, v5);
              goto LABEL_88;
            }

            v95 = *&v72;
            v96 = v4;
            v97 = v6;
            v98 = v5;
            v99 = v7;
            v100 = v73;
            v101 = v9;
            v102 = v69;
            v103 = v10;
            v14 = 1;
            v104 = 1;
            swift_unknownObjectRetain();
            sub_1C5D8B86C(v6, v5);
LABEL_95:

            break;
          case 30:
            v95 = *&v72;
            v96 = v4;
            v97 = v6;
            v98 = v5;
            v99 = v7;
            v100 = v73;
            v101 = v9;
            v102 = v69;
            v103 = v10;
            v14 = 1;
            v104 = 1;
            swift_unknownObjectRetain();

            swift_unknownObjectRetain();
            break;
          case 29:
            v33 = LOBYTE(__src[1]) | (v16 << 8);
            v34 = *(a1 + 1);
            v35 = *(a1 + 5);
            v36 = *(a1 + 6);
            v37 = v33 == v35 && __src[2] == v36;
            v61 = __src[4];
            v63 = __src[3];
            v68 = *(a1 + 1);
            if (!v37 && (v38 = *(a1 + 5), v39 = *(a1 + 6), v40 = sub_1C6017860(), v36 = v39, v35 = v38, v18 = v61, v17 = v63, v34 = v68, (v40 & 1) == 0) || !v34)
            {
LABEL_80:
              v95 = *&v72;
              v96 = v4;
              v97 = v6;
              v98 = v5;
              v99 = v65;
              v100 = v73;
              v101 = v64;
              v102 = v69;
              v103 = v10 & 0xFFFFFFFFFFFFFF9;
LABEL_92:
              sub_1C5DF444C(&v95, &v75);
              goto LABEL_5;
            }

            v41 = v18;
            v42 = v17;
            if (LOBYTE(v31))
            {
              sub_1C5D5D5AC(a1, &v95);

              sub_1C5C74C28(v42, v41);
              swift_unknownObjectRetain();
              v43 = 0;
            }

            else
            {
              v75 = 0.0;
              v76 = 0xE000000000000000;
              v56 = a1;
              v57 = v35;
              v58 = v36;
              sub_1C5D5D5AC(v56, &v95);

              sub_1C5C74C28(v42, v41);
              swift_unknownObjectRetain();
              sub_1C6017540();
              MEMORY[0x1C69534E0](0x6F206F54706D754ALL, 0xEA0000000000206ELL);
              v98 = swift_getObjectType();
              v95 = v68;
              swift_unknownObjectRetain();
              DefaultStringInterpolation.appendInterpolation(describing:default:)(&v95, 7104878, 0xE300000000000000);
              sub_1C5DF47C8();
              MEMORY[0x1C69534E0](0xD000000000000016, 0x80000001C60557C0);
              sub_1C6016D10();
              MEMORY[0x1C69534E0](0xD000000000000012, 0x80000001C60557E0);
              MEMORY[0x1C69534E0](v57, v58);
              MEMORY[0x1C69534E0](93, 0xE100000000000000);
              sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
              sub_1C6016940();
              v95 = 10;
              sub_1C6016880();
              _s3__C4CodeOMa_6();
              sub_1C5DF5240(&qword_1ED7DCDE0, _s3__C4CodeOMa_6, &unk_1C6035958);
              v43 = sub_1C6017280();
            }

            v95 = *&v72;
            v96 = v4;
            v97 = v6;
            v98 = v5;
            v99 = v65;
            v100 = v73;
            v101 = v9;
            v102 = v69;
            v103 = v10;
            v14 = 1;
            v104 = 1;
            sub_1C5DF0A74(v43, &v95);
            swift_unknownObjectRelease();

            v55 = v61;
            v54 = v63;
LABEL_102:
            sub_1C5C74C18(v54, v55);
            goto LABEL_103;
          default:
            goto LABEL_4;
        }

LABEL_96:
        sub_1C5DF0A74(0, &v95);
        goto LABEL_103;
      }

      if ((~HIDWORD(__src[0]) & 0x7FF00000) == 0 && (*&v29 & 0xFFFFFFFFFFFFFLL) != 0)
      {
LABEL_87:
        swift_unknownObjectRetain();
        goto LABEL_88;
      }

      sub_1C5D5D5AC(a1, &v95);
      [swift_unknownObjectRetain() time];
      if (vabdd_f64(v53, v30) >= 1.0)
      {
        swift_unknownObjectRelease();
        goto LABEL_5;
      }

      v95 = *&v72;
      v96 = v4;
      v97 = v6;
      v98 = v5;
      v99 = v7;
      v100 = v73;
      v101 = v9;
      v102 = v69;
      v103 = v10;
      v14 = 1;
      v104 = 1;
      sub_1C5DF0A74(0, &v95);
      swift_unknownObjectRelease();
LABEL_103:
      sub_1C5DF4818();
      return v14;
    default:
      goto LABEL_4;
  }
}

uint64_t sub_1C5DF2928(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C5DF09CC(__src);
  memcpy(__dst, __src, sizeof(__dst));
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v7 = LOWORD(__src[8]) | (BYTE2(__src[8]) << 16);
  if ((~v7 & 0xFEFEFE) != 0)
  {
    v8 = v7 >> 20;
    if (v8 != 2)
    {
      if (v8 != 1 || a3 != 2)
      {
        goto LABEL_12;
      }

      v10 = __src[0];
      v11 = __src[2];
      v12 = __src[3];
      swift_beginAccess();
      v13 = *(v3 + 232);
      sub_1C5D95E1C(a1, a2, 2);

      v14 = sub_1C5DBB1CC(v11, v12, v10, v13);

      v20 = a1;
      v21 = a2;
      v22 = 2;
      v23 = 2;
LABEL_11:
      sub_1C5DF0A74(v14, &v20);
      sub_1C5DF4818();

      return 1;
    }

    if (a3 == 2)
    {
      v15 = __src[4];
      v16 = __src[5];
      swift_beginAccess();
      v17 = *(v3 + 232);
      sub_1C5D95E1C(a1, a2, 2);

      v14 = sub_1C5DBB1CC(v15, v16, 0, v17);

      v20 = a1;
      v21 = a2;
      v22 = 2;
      v23 = 2;
      goto LABEL_11;
    }
  }

LABEL_12:
  sub_1C5D95E1C(a1, a2, a3);
  sub_1C5DF4818();
  return 0;
}

uint64_t sub_1C5DF2B04(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1C5DF09CC(v8);
    v4 = v9 | (v10 << 16);
    if ((~v4 & 0xFEFEFE) != 0)
    {
      v11[0] = v8[0];
      v11[1] = v8[1];
      v11[2] = v8[2];
      v11[3] = v8[3];
      v12 = v9;
      v13 = BYTE2(v4);
      memcpy(v6, (v3 + 32), sizeof(v6));
      *(v3 + 32) = 0u;
      *(v3 + 48) = 0u;
      *(v3 + 64) = 0u;
      *(v3 + 80) = 0u;
      *(v3 + 98) = -2;
      *(v3 + 96) = -258;
      sub_1C5DF47C8();
      memcpy(__dst, (v3 + 104), sizeof(__dst));
      *(v3 + 104) = 0u;
      *(v3 + 120) = 0u;
      *(v3 + 136) = 0u;
      *(v3 + 152) = 0u;
      *(v3 + 170) = -2;
      *(v3 + 168) = -258;
      sub_1C5DF47C8();
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1C5DEFA4C(v3, v11);
        swift_unknownObjectRelease();
      }

      sub_1C5DF47C8();
    }
  }

  return sub_1C5DF2C80(a1);
}

uint64_t sub_1C5DF2C80(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 184))
    {
      swift_unknownObjectRetain();

      swift_getObjectType();
      sub_1C6017060();
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 184) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DF2D40(uint64_t a1)
{
  memcpy(v3, (a1 + 32), sizeof(v3));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 98) = -2;
  *(a1 + 96) = -258;
  sub_1C5DF47C8();
  memcpy(__dst, (a1 + 104), sizeof(__dst));
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 170) = -2;
  *(a1 + 168) = -258;
  sub_1C5DF47C8();
  if (*(a1 + 184))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1C6017060();
    swift_unknownObjectRelease();
  }

  *(a1 + 184) = 0;
  return swift_unknownObjectRelease();
}

unint64_t sub_1C5DF2E44()
{
  sub_1C5DF09CC(v6);
  v0 = v7 | (v8 << 16);
  if ((~v0 & 0xFEFEFE) == 0)
  {
    return 0xD000000000000012;
  }

  v3 = v6[0];
  v2 = v6[1];
  v1 = v6[2];
  v4 = v6[4];
  switch(v0 >> 20)
  {
    case 2u:
    case 3u:

      sub_1C5DF47C8();
      v1 = v4;
      break;
    case 4u:
    case 8u:
    case 0xAu:
    case 0xCu:

      sub_1C5DF47C8();
      v1 = v2;
      break;
    case 6u:
    case 7u:
    case 9u:

      sub_1C5DF47C8();
      v1 = v3;
      break;
    default:

      sub_1C5DF47C8();
      break;
  }

  return v1;
}

uint64_t sub_1C5DF2F94(uint64_t a1)
{
  sub_1C5DF2E44();
  sub_1C60169F0();
}

uint64_t sub_1C5DF2FE4()
{
  sub_1C60179F0();
  sub_1C5DF2E44();
  sub_1C60169F0();

  return sub_1C6017A20();
}

uint64_t sub_1C5DF3088(uint64_t a1)
{
  sub_1C60179F0();
  sub_1C5DF2E44();
  sub_1C60169F0();

  return sub_1C6017A20();
}

unint64_t sub_1C5DF30E4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C5DF2E44();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1C5DF3164(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_8_34(a1, &qword_1ED7DC220);
    v2 = sub_1C6017500();
    sub_1C6017400();
    while (1)
    {
      if (!sub_1C6017470())
      {

        return;
      }

      v3 = type metadata accessor for UserEventCompletionMonitor();
      OUTLINED_FUNCTION_39_9(v3, v4);
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1C5DF3688();
      }

      OUTLINED_FUNCTION_48_9();
      v5 = sub_1C5DF2E44();
      OUTLINED_FUNCTION_25_14(v5, v6, v7);

      sub_1C6017A20();
      OUTLINED_FUNCTION_28_12();
      if (v11)
      {
        break;
      }

      OUTLINED_FUNCTION_45_8();
LABEL_15:
      OUTLINED_FUNCTION_22_20(v12);
    }

    v13 = 0;
    v14 = (63 - v10) >> 6;
    while (++v9 != v14 || (v13 & 1) == 0)
    {
      v15 = v9 == v14;
      if (v9 == v14)
      {
        v9 = 0;
      }

      v13 |= v15;
      if (*(v8 + 8 * v9) != -1)
      {
        OUTLINED_FUNCTION_43_12();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1C5DF32BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1C5DF5118(0);
    v2 = sub_1C6017500();
    sub_1C6017400();
    while (1)
    {
      if (!sub_1C6017470())
      {

        return;
      }

      v3 = type metadata accessor for BackgroundTask();
      OUTLINED_FUNCTION_39_9(v3, v4);
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1C5DF379C();
      }

      OUTLINED_FUNCTION_48_9();
      sub_1C5DB789C();
      sub_1C6017A20();
      OUTLINED_FUNCTION_28_12();
      if (v8)
      {
        break;
      }

      OUTLINED_FUNCTION_45_8();
LABEL_15:
      OUTLINED_FUNCTION_22_20(v9);
    }

    v10 = 0;
    v11 = (63 - v7) >> 6;
    while (++v6 != v11 || (v10 & 1) == 0)
    {
      v12 = v6 == v11;
      if (v6 == v11)
      {
        v6 = 0;
      }

      v10 |= v12;
      if (*(v5 + 8 * v6) != -1)
      {
        OUTLINED_FUNCTION_43_12();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1C5DF3408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_29_14();
  OUTLINED_FUNCTION_5_38();
  sub_1C5DF5288(0);
  OUTLINED_FUNCTION_15_24();
  OUTLINED_FUNCTION_35_15();
  if (v34)
  {
    v35 = 0;
    OUTLINED_FUNCTION_4_45();
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v39 = v38 & v36;
    v40 = (v37 + 63) >> 6;
    v41 = v32 + 56;
    if ((v38 & v36) == 0)
    {
      goto LABEL_6;
    }

    do
    {
LABEL_10:
      sub_1C60179F0();
      sub_1C60169F0();
      v43 = sub_1C6017A20() & ~(-1 << *(v32 + 32));
      if (((-1 << v43) & ~*(v41 + 8 * (v43 >> 6))) == 0)
      {
        OUTLINED_FUNCTION_6_7();
        while (1)
        {
          OUTLINED_FUNCTION_26_2();
          if (v48)
          {
            if (v46)
            {
              break;
            }
          }

          if (v45 == v47)
          {
            v45 = 0;
          }

          if (*(v41 + 8 * v45) != -1)
          {
            OUTLINED_FUNCTION_5();
            goto LABEL_20;
          }
        }

LABEL_28:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
LABEL_20:
      v39 &= v39 - 1;
      *(v41 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
      ++*(v32 + 16);
    }

    while (v39);
    while (1)
    {
LABEL_6:
      v42 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v42 >= v40)
      {
        break;
      }

      v39 = *(v33 + 8 * v42);
      ++v35;
      if (v39)
      {
        v35 = v42;
        goto LABEL_10;
      }
    }

    OUTLINED_FUNCTION_10_30();
    if (v49 >= 64)
    {
      OUTLINED_FUNCTION_18_23(v49);
    }

    else
    {
      OUTLINED_FUNCTION_17_24(v49);
    }

    *(v31 + 16) = 0;
  }

  *v30 = v32;
  OUTLINED_FUNCTION_30_14();
}

void sub_1C5DF3580()
{
  OUTLINED_FUNCTION_29_14();
  OUTLINED_FUNCTION_5_38();
  sub_1C5DF51AC(0);
  OUTLINED_FUNCTION_15_24();
  OUTLINED_FUNCTION_35_15();
  if (!v6)
  {
LABEL_23:

    *v0 = v1;
    OUTLINED_FUNCTION_30_14();
    return;
  }

  OUTLINED_FUNCTION_2_46();
  if (!v0)
  {
LABEL_4:
    v7 = v4;
    while (1)
    {
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v4 >= v5)
      {
        break;
      }

      ++v7;
      if (*(v2 + 8 * v4))
      {
        OUTLINED_FUNCTION_9_2();
        v0 = (v9 & v8);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_10_30();
    if (v13 >= 64)
    {
      OUTLINED_FUNCTION_18_23(v13);
    }

    else
    {
      OUTLINED_FUNCTION_17_24(v13);
    }

    OUTLINED_FUNCTION_44_12();
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_27_20();
LABEL_9:
    OUTLINED_FUNCTION_26_16();
    MEMORY[0x1C69544E0](v3);
    sub_1C6017A20();
    OUTLINED_FUNCTION_14_26();
    if (v10)
    {
      break;
    }

    OUTLINED_FUNCTION_7();
LABEL_17:
    OUTLINED_FUNCTION_6_33(v11);
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_6_7();
  while (1)
  {
    OUTLINED_FUNCTION_26_2();
    if (v10)
    {
      if (v12)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_32_9();
    if (!v10)
    {
      OUTLINED_FUNCTION_5();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_1C5DF3688()
{
  OUTLINED_FUNCTION_29_14();
  OUTLINED_FUNCTION_5_38();
  OUTLINED_FUNCTION_8_34(v5, &qword_1ED7DC220);
  OUTLINED_FUNCTION_15_24();
  OUTLINED_FUNCTION_35_15();
  if (!v6)
  {
LABEL_23:

    *v0 = v1;
    OUTLINED_FUNCTION_30_14();
    return;
  }

  OUTLINED_FUNCTION_2_46();
  if (!v0)
  {
LABEL_4:
    v7 = v3;
    while (1)
    {
      v3 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v3 >= v4)
      {
        break;
      }

      ++v7;
      if (*(v2 + 8 * v3))
      {
        OUTLINED_FUNCTION_9_2();
        v0 = (v9 & v8);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_10_30();
    if (v16 >= 64)
    {
      OUTLINED_FUNCTION_18_23(v16);
    }

    else
    {
      OUTLINED_FUNCTION_17_24(v16);
    }

    OUTLINED_FUNCTION_44_12();
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_27_20();
LABEL_9:
    OUTLINED_FUNCTION_26_16();
    v10 = sub_1C5DF2E44();
    OUTLINED_FUNCTION_25_14(v10, v11, v12);

    sub_1C6017A20();
    OUTLINED_FUNCTION_14_26();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_7();
LABEL_17:
    OUTLINED_FUNCTION_6_33(v14);
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_6_7();
  while (1)
  {
    OUTLINED_FUNCTION_26_2();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_32_9();
    if (!v13)
    {
      OUTLINED_FUNCTION_5();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_1C5DF379C()
{
  OUTLINED_FUNCTION_29_14();
  OUTLINED_FUNCTION_5_38();
  sub_1C5DF5118(0);
  OUTLINED_FUNCTION_15_24();
  OUTLINED_FUNCTION_35_15();
  if (!v5)
  {
LABEL_23:

    *v0 = v1;
    OUTLINED_FUNCTION_30_14();
    return;
  }

  OUTLINED_FUNCTION_2_46();
  if (!v0)
  {
LABEL_4:
    v6 = v3;
    while (1)
    {
      v3 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v3 >= v4)
      {
        break;
      }

      ++v6;
      if (*(v2 + 8 * v3))
      {
        OUTLINED_FUNCTION_9_2();
        v0 = (v8 & v7);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_10_30();
    if (v12 >= 64)
    {
      OUTLINED_FUNCTION_18_23(v12);
    }

    else
    {
      OUTLINED_FUNCTION_17_24(v12);
    }

    OUTLINED_FUNCTION_44_12();
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_27_20();
LABEL_9:
    OUTLINED_FUNCTION_26_16();
    sub_1C5DB789C();
    sub_1C6017A20();
    OUTLINED_FUNCTION_14_26();
    if (v9)
    {
      break;
    }

    OUTLINED_FUNCTION_7();
LABEL_17:
    OUTLINED_FUNCTION_6_33(v10);
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_6_7();
  while (1)
  {
    OUTLINED_FUNCTION_26_2();
    if (v9)
    {
      if (v11)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_32_9();
    if (!v9)
    {
      OUTLINED_FUNCTION_5();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

unint64_t sub_1C5DF38A4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_49_8(a1, a2);
  v2 = sub_1C5DF2E44();
  OUTLINED_FUNCTION_25_14(v2, v3, v4);

  sub_1C6017A20();
  OUTLINED_FUNCTION_20_25();
  v5 = sub_1C60173E0();
  return OUTLINED_FUNCTION_21_23(v5);
}

unint64_t sub_1C5DF3910(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_49_8(a1, a2);
  sub_1C5DB789C();
  sub_1C6017A20();
  OUTLINED_FUNCTION_20_25();
  v2 = sub_1C60173E0();
  return OUTLINED_FUNCTION_21_23(v2);
}

void sub_1C5DF3974()
{
  v3 = OUTLINED_FUNCTION_99();
  sub_1C5DF5288(v3);
  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_1_58();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      OUTLINED_FUNCTION_41_9(v5, v6);
    }

    OUTLINED_FUNCTION_19_26();
    if (v12)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        goto LABEL_15;
      }

      v12 = *(v2 + 8 * v13);
      ++v10;
      if (v12)
      {
        v10 = v13;
        do
        {
LABEL_13:
          v12 &= v12 - 1;
        }

        while (v12);
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v0 = v1;
  }
}

void sub_1C5DF3A04()
{
  OUTLINED_FUNCTION_99();
  sub_1C5C8FF08();
  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_34_13();
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_1_58();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      OUTLINED_FUNCTION_41_9(v8, v9);
    }

    OUTLINED_FUNCTION_3_46();
    while (v6)
    {
      OUTLINED_FUNCTION_24_21();
LABEL_15:
      v17 = v13 | (v4 << 6);
      v18 = (*(v2 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = (*(v1 + 48) + 16 * v17);
      *v20 = *v18;
      v20[1] = v19;
    }

    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v4 >= v5)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v3 + 8 * v4))
      {
        OUTLINED_FUNCTION_9_2();
        v6 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v1;
  }
}

void sub_1C5DF3ACC()
{
  v4 = OUTLINED_FUNCTION_99();
  sub_1C5DF51AC(v4);
  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_34_13();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_1_58();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_41_9(v6, v7);
    }

    OUTLINED_FUNCTION_19_26();
    for (; v13; *(*(v1 + 48) + 8 * v15) = *(*(v2 + 48) + 8 * v15))
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v15 = v14 | (v11 << 6);
LABEL_15:
      ;
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v12)
      {
        goto LABEL_17;
      }

      v17 = *(v3 + 8 * v11);
      ++v16;
      if (v17)
      {
        v13 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v11 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v1;
  }
}

void sub_1C5DF3B90(uint64_t a1)
{
  OUTLINED_FUNCTION_8_34(a1, &qword_1ED7DC220);
  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_34_13();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_1_58();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      OUTLINED_FUNCTION_41_9(v7, v8);
    }

    OUTLINED_FUNCTION_3_46();
    while (v5)
    {
      OUTLINED_FUNCTION_24_21();
LABEL_15:
      OUTLINED_FUNCTION_38_10(v12);
    }

    v13 = v3;
    while (1)
    {
      v3 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      ++v13;
      if (*(v2 + 8 * v3))
      {
        OUTLINED_FUNCTION_9_2();
        v5 = v15 & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v1;
  }
}

void sub_1C5DF3C44()
{
  v6 = OUTLINED_FUNCTION_99();
  sub_1C5DF5118(v6);
  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_34_13();
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_1_58();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      OUTLINED_FUNCTION_41_9(v8, v9);
    }

    OUTLINED_FUNCTION_3_46();
    while (v5)
    {
      OUTLINED_FUNCTION_24_21();
LABEL_15:
      OUTLINED_FUNCTION_38_10(v13);
    }

    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + 8 * v3))
      {
        OUTLINED_FUNCTION_9_2();
        v5 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v1;
  }
}

uint64_t sub_1C5DF3CF0(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_1C60179F0();
    sub_1C5DF2E44();
    sub_1C60169F0();

    v7 = sub_1C6017A20();
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v9 = v7 & v8;
      if (((*(v3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 8 * v9) == a1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = *v1;
        v13 = *v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C5DF3B90(isUniquelyReferenced_nonNull_native);
          v11 = v13;
        }

        v6 = *(*(v11 + 48) + 8 * v9);
        sub_1C5DF4204(v9);
        *v1 = v13;
        return v6;
      }

      v7 = v9 + 1;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_1C6017480();

  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = sub_1C5DF3FB4(v4, a1);

  return v6;
}

uint64_t sub_1C5DF3E60(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_1C60179F0();
    sub_1C5DB789C();
    v7 = sub_1C6017A20();
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v9 = v7 & v8;
      if (((*(v3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 8 * v9) == a1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = *v1;
        v13 = *v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C5DF3C44();
          v11 = v13;
        }

        v6 = *(*(v11 + 48) + 8 * v9);
        sub_1C5DF48E0(v9);
        *v1 = v13;
        return v6;
      }

      v7 = v9 + 1;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_1C6017480();

  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = sub_1C5DF40EC(v4, a1);

  return v6;
}

uint64_t sub_1C5DF3FB4(uint64_t a1, uint64_t a2)
{

  v4 = sub_1C6017440();
  v5 = swift_unknownObjectRetain();
  sub_1C5DF3164(v5, v4);
  v7 = v6;
  v13 = v6;
  sub_1C60179F0();

  sub_1C5DF2E44();
  sub_1C60169F0();

  v8 = sub_1C6017A20();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    if (((*(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
    {
      break;
    }

    if (*(*(v7 + 48) + 8 * v10) == a2)
    {

      v11 = *(*(v13 + 48) + 8 * v10);
      sub_1C5DF4204(v10);
      if (v11 == a2)
      {
        *v2 = v13;
        return v11;
      }

      __break(1u);
      break;
    }

    v8 = v10 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5DF40EC(uint64_t a1, uint64_t a2)
{

  v4 = sub_1C6017440();
  v5 = swift_unknownObjectRetain();
  sub_1C5DF32BC(v5, v4);
  v7 = v6;
  v13 = v6;
  sub_1C60179F0();

  sub_1C5DB789C();
  v8 = sub_1C6017A20();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    if (((*(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
    {
      break;
    }

    if (*(*(v7 + 48) + 8 * v10) == a2)
    {

      v11 = *(*(v7 + 48) + 8 * v10);
      sub_1C5DF48E0(v10);
      if (v11 == a2)
      {
        *v2 = v13;
        return v11;
      }

      __break(1u);
      break;
    }

    v8 = v10 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C5DF4204(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C60173D0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1C60179F0();

        sub_1C5DF2E44();
        sub_1C60169F0();

        v10 = sub_1C6017A20();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

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

void sub_1C5DF43E4()
{
  if (!qword_1EC1ABAF8)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC1ABAF8);
    }
  }
}

uint64_t sub_1C5DF444C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_107();
  v5(v4);
  OUTLINED_FUNCTION_105();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C5DF44A8(uint64_t a1)
{
  sub_1C5D2A9A0(0, &qword_1EC1ABB00, &type metadata for UserEvent, &type metadata for UserEvent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5DF4518()
{
  v1 = OUTLINED_FUNCTION_68();
  v2(v1);
  OUTLINED_FUNCTION_105();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_1C5DF456C(uint64_t a1)
{
  if (!qword_1EC1ABB08)
  {
    sub_1C5C67444(255, &qword_1ED7DC2D0, &type metadata for UserEvent);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1ABB08);
    }
  }
}

void sub_1C5DF45E0(uint64_t a1)
{
  if (!qword_1EC1ABB18)
  {
    MEMORY[0x1EEE9AC00](0);
    sub_1C5DF4760(255);
    sub_1C5C67444(255, &unk_1EC1A93F0, MEMORY[0x1E69E63B0]);
    type metadata accessor for EventTime();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC1ABB18);
    }
  }
}

void sub_1C5DF4760(uint64_t a1)
{
  if (!qword_1EC1ABB20)
  {
    sub_1C5D2AA10(255, &qword_1ED7DC870, &protocolRef_MFPlayerItem);
    v1 = sub_1C6017350();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1ABB20);
    }
  }
}

uint64_t sub_1C5DF47C8()
{
  v1 = OUTLINED_FUNCTION_68();
  sub_1C5C67444(v1, v2, v3);
  OUTLINED_FUNCTION_105();
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C5DF4818()
{
  v1 = OUTLINED_FUNCTION_68();
  sub_1C5DF4868(v1, v2, v3);
  OUTLINED_FUNCTION_105();
  (*(v4 + 8))(v0);
  return v0;
}

void sub_1C5DF4868(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1C5C67444(255, &qword_1ED7DC2D0, &type metadata for UserEvent);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1C5DF48E0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C60173D0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1C60179F0();

        sub_1C5DB789C();
        v10 = sub_1C6017A20();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

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

uint64_t sub_1C5DF4ACC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1C60173F0();
  }

  else
  {
    return sub_1C60173C0();
  }
}

uint64_t sub_1C5DF4B2C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v5 = a4;
      }

      else
      {
        v5 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1C6953F40](result, a2, v5);
      type metadata accessor for UserEventCompletionMonitor();
      swift_dynamicCast();
      return v9;
    }

LABEL_25:
    __break(1u);
    return result;
  }

  if (a3)
  {
    if (sub_1C6017420() == *(a4 + 36))
    {
      sub_1C6017430();
      type metadata accessor for UserEventCompletionMonitor();
      swift_dynamicCast();
      sub_1C60179F0();
      sub_1C5DF2E44();
      sub_1C60169F0();

      v6 = sub_1C6017A20();
      v7 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v8 = v6 & v7;
        if (((*(a4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
        {
          goto LABEL_24;
        }

        if (*(*(a4 + 48) + 8 * v8) == v9)
        {
          goto LABEL_18;
        }

        v6 = v8 + 1;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }
}

uint64_t sub_1C5DF4D00(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  memcpy(v21, __src, sizeof(v21));
  v9 = type metadata accessor for EventReporter();
  v20[3] = v9;
  v20[4] = &off_1F4544D18;
  v20[0] = a2;
  type metadata accessor for UserEventCompletionMonitor();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v20, v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v19[3] = v9;
  v19[4] = &off_1F4544D18;
  v19[0] = v15;
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 98) = -2;
  *(v10 + 96) = -258;
  *(v10 + 104) = 0u;
  *(v10 + 120) = 0u;
  *(v10 + 136) = 0u;
  *(v10 + 152) = 0u;
  *(v10 + 170) = -2;
  *(v10 + 168) = -258;
  *(v10 + 184) = 0;
  *(v10 + 232) = MEMORY[0x1E69E7CC0];
  *(v10 + 176) = a5;
  sub_1C5CDAF64(v19, v10 + 192);
  memcpy(__dst, (v10 + 32), sizeof(__dst));
  memcpy((v10 + 32), v21, 0x43uLL);
  sub_1C5D95E74(__src, &v18);
  sub_1C5DF47C8();
  sub_1C5DEFADC(__src);
  sub_1C5DE8B2C(__src);
  __swift_destroy_boxed_opaque_existential_0(v19);
  *(v10 + 24) = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v20);
  return v10;
}

void sub_1C5DF4F4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C5DF4FC0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1C5DF4F4C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C5DF5024(uint64_t a1)
{
  if (!qword_1EC1A9458)
  {
    sub_1C5C67444(255, &qword_1EC1A9480, MEMORY[0x1E69E6158]);
    v1 = sub_1C6016B80();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1A9458);
    }
  }
}

void sub_1C5DF508C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for UserEventCompletionMonitor();
    OUTLINED_FUNCTION_0_72();
    v9 = sub_1C5DF5240(v7, v8, &unk_1C6043B28);
    v10 = a3(a1, v6, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1C5DF5118(uint64_t a1)
{
  if (!qword_1EC1ABB30)
  {
    type metadata accessor for BackgroundTask();
    sub_1C5DF5240(qword_1ED7DF4E0, type metadata accessor for BackgroundTask, &unk_1C60414F4);
    v1 = sub_1C6017520();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1ABB30);
    }
  }
}

void sub_1C5DF51AC(uint64_t a1)
{
  if (!qword_1EC1ABB40)
  {
    type metadata accessor for MPServerObjectDatabaseAssetFlavor();
    sub_1C5DF5240(&qword_1EC1ABB48, type metadata accessor for MPServerObjectDatabaseAssetFlavor, &unk_1C6035788);
    v1 = sub_1C6017520();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1ABB40);
    }
  }
}

uint64_t sub_1C5DF5240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C5DF5288(uint64_t a1)
{
  if (!qword_1EC1A89B0)
  {
    sub_1C5C66884();
    v1 = sub_1C6017520();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1A89B0);
    }
  }
}

void OUTLINED_FUNCTION_8_34(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69E6A10];

  sub_1C5DF508C(0, a2, v3);
}

uint64_t OUTLINED_FUNCTION_18_23@<X0>(uint64_t a1@<X8>)
{

  return sub_1C5CEA868(0, (a1 + 63) >> 6, v1);
}

__n128 OUTLINED_FUNCTION_23_16()
{
  v1 = *(v0 + 304);
  *(v0 + 64) = *(v0 + 288);
  *(v0 + 80) = v1;
  result = *(v0 + 320);
  v3 = *(v0 + 336);
  *(v0 + 96) = result;
  *(v0 + 112) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_8()
{

  return sub_1C5C8C7F4(v0);
}

uint64_t OUTLINED_FUNCTION_38_10@<X0>(uint64_t a1@<X8>)
{
  *(*(v1 + 48) + 8 * (a1 | (v3 << 6))) = *(*(v2 + 48) + 8 * (a1 | (v3 << 6)));
}

uint64_t OUTLINED_FUNCTION_42_11()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_49_8(uint64_t a1, uint64_t a2)
{

  return sub_1C60179F0();
}

double OUTLINED_FUNCTION_51_9()
{

  swift_beginAccess();
  return result;
}

uint64_t dispatch thunk of MPCDialogHandling.performDialogAction(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C5D01CC4;

  return v9(a1, a2, a3);
}

uint64_t sub_1C5DF5574(uint64_t a1, uint64_t a2)
{
  sub_1C5C74680(0, &qword_1ED7DCAE0, MEMORY[0x1E69E7280]);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_1C5DF560C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

uint64_t sub_1C5DF562C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 64) + 40);
  *v2 = *a2;
  *(v2 + 8) = *(a2 + 8);
  *(v2 + 24) = *(a2 + 24);
  return swift_continuation_throwingResume();
}

uint64_t sub_1C5DF5680(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (!a3)
  {
    return sub_1C5DF55E4(*v5, a2, MEMORY[0x1E69E8968]);
  }

  v6 = a3;
  v7 = OUTLINED_FUNCTION_34_4();
  return sub_1C5DF5574(v7, v8);
}

uint64_t sub_1C5DF573C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v33 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    sub_1C5CE34A8(*(a1 + 48) + 40 * v12, __src);
    sub_1C5C653C8(*(a1 + 56) + 32 * v12, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1C5C653C8(&__dst[40], v28);
    if (swift_dynamicCast())
    {
      v13 = v30;
      if (!v30)
      {
        goto LABEL_17;
      }

      v14 = v29;
      memcpy(v28, __dst, sizeof(v28));
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1C5CEA4D8();
        v2 = v33;
      }

      result = sub_1C60174A0();
      v15 = v2 + 64;
      v16 = -1 << *(v2 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v2 + 64 + 8 * (v17 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v16) >> 6;
        while (++v18 != v21 || (v20 & 1) == 0)
        {
          v22 = v18 == v21;
          if (v18 == v21)
          {
            v18 = 0;
          }

          v20 |= v22;
          v23 = *(v15 + 8 * v18);
          if (v23 != -1)
          {
            v19 = __clz(__rbit64(~v23)) + (v18 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v2 + 64 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v24 = *(v2 + 48) + 40 * v19;
      v25 = *v28;
      v26 = *&v28[16];
      *(v24 + 32) = *&v28[32];
      *v24 = v25;
      *(v24 + 16) = v26;
      v27 = (*(v2 + 56) + 16 * v19);
      *v27 = v14;
      v27[1] = v13;
      ++*(v2 + 16);
      result = __swift_destroy_boxed_opaque_existential_0(&v28[40]);
    }

    else
    {
      v29 = 0;
      v30 = 0;
LABEL_17:
      result = sub_1C5E00F78();
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_1C5DF59E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C5E01538(0);
    OUTLINED_FUNCTION_34_4();
    v2 = sub_1C60176F0();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_1C5CE34A8(*(a1 + 48) + 40 * v9, __src);
    sub_1C5C653C8(*(a1 + 56) + 32 * v9, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1C5CE34A8(__dst, v22);
    if (!swift_dynamicCast())
    {
      sub_1C5E00F78();

LABEL_22:

      return;
    }

    sub_1C5C653C8(&__dst[40], v22);
    sub_1C5E00F78();
    sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_22;
    }

    v5 &= v5 - 1;
    v10 = sub_1C5CE2084(v20, v21);
    v11 = v10;
    if (v12)
    {
      v13 = (v2[6] + 16 * v10);
      *v13 = v20;
      v13[1] = v21;

      v14 = v2[7];
      v15 = *(v14 + 8 * v11);
      *(v14 + 8 * v11) = v20;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_24;
      }

      *(v2 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
      v16 = (v2[6] + 16 * v10);
      *v16 = v20;
      v16[1] = v21;
      *(v2[7] + 8 * v10) = v20;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_25;
      }

      v2[2] = v19;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      goto LABEL_22;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t sub_1C5DF5CA8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C5E012F0(0, &qword_1EC1ABB80, MEMORY[0x1E69E6158], MEMORY[0x1E69E6EC8]);
    v1 = sub_1C60176F0();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  for (i = 0; ; i = v8)
  {
    if (!v4)
    {
      while (1)
      {
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v8 >= v5)
        {

          return v1;
        }

        v4 = *(a1 + 64 + 8 * v8);
        ++i;
        if (v4)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v8 = i;
LABEL_12:
    v9 = __clz(__rbit64(v4)) | (v8 << 6);
    sub_1C5CE34A8(*(a1 + 48) + 40 * v9, v30);
    v10 = (*(a1 + 56) + 16 * v9);
    v11 = v10[1];
    *(&v31 + 1) = *v10;
    v32 = v11;
    v27[0] = v30[0];
    v27[1] = v30[1];
    v28 = v31;
    v29 = v11;
    sub_1C5CE34A8(v27, v26);

    if (!swift_dynamicCast())
    {
      break;
    }

    v4 &= v4 - 1;
    v12 = *(&v28 + 1);
    v13 = v29;

    sub_1C5E00F78();
    result = sub_1C5CE2084(v24, v25);
    v14 = result;
    if (v15)
    {
      v16 = (v1[6] + 16 * result);
      *v16 = v24;
      v16[1] = v25;

      v17 = (v1[7] + 16 * v14);
      *v17 = v12;
      v17[1] = v13;
    }

    else
    {
      if (v1[2] >= v1[3])
      {
        goto LABEL_23;
      }

      *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v1[6] + 16 * result);
      *v18 = v24;
      v18[1] = v25;
      v19 = (v1[7] + 16 * result);
      *v19 = v12;
      v19[1] = v13;
      v20 = v1[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_24;
      }

      v1[2] = v22;
    }
  }

  sub_1C5E00F78();

  return 0;
}

unint64_t sub_1C5DF5F48(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CA0];
  if (*(a1 + 16))
  {
    sub_1C5E012F0(0, &qword_1EC1A8930, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6EC8]);
    v2 = sub_1C60176F0();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_11:
      v10 = __clz(__rbit64(v5)) | (v9 << 6);
      sub_1C5CE34A8(*(a1 + 48) + 40 * v10, __src);
      sub_1C5C653C8(*(a1 + 56) + 32 * v10, &__src[40]);
      memcpy(__dst, __src, sizeof(__dst));
      sub_1C5CE34A8(__dst, v21);
      if (!swift_dynamicCast())
      {
        break;
      }

      v5 &= v5 - 1;
      sub_1C5C653C8(&__dst[40], v22);
      v11 = v1;
      sub_1C5E00F78();
      v23 = v20;
      sub_1C5C70758(v22, v24);
      v12 = v23;
      sub_1C5C70758(v24, v25);
      sub_1C5C70758(v25, &v23);
      result = sub_1C5CE2084(v12, *(&v12 + 1));
      v13 = result;
      if (v14)
      {
        *(v2[6] + 16 * result) = v12;

        v15 = (v2[7] + 32 * v13);
        __swift_destroy_boxed_opaque_existential_0(v15);
        result = sub_1C5C70758(&v23, v15);
      }

      else
      {
        if (v2[2] >= v2[3])
        {
          goto LABEL_23;
        }

        *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        *(v2[6] + 16 * result) = v12;
        result = sub_1C5C70758(&v23, (v2[7] + 32 * result));
        v16 = v2[2];
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          goto LABEL_24;
        }

        v2[2] = v18;
      }

      v8 = v9;
      v1 = v11;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    sub_1C5E00F78();

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5DF6228(uint64_t a1, uint64_t a2)
{
  if (qword_1ED7DD2B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1C60162D0();
  __swift_project_value_buffer(v3, qword_1ED7E1690);

  v4 = sub_1C60162B0();
  v5 = sub_1C6016F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12[0] = v7;
    *v6 = 136315138;
    v8 = sub_1C6016870();
    v10 = sub_1C5C6AB10(v8, v9, v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C5C61000, v4, v5, "MPCMusicDialogHandler: - metrics=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1C6956920](v7, -1, -1);
    MEMORY[0x1C6956920](v6, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 64) = a1;
  }

  return result;
}

id sub_1C5DF6420(void *a1, void *a2)
{
  v3 = v2;
  v5 = sub_1C60150D0();
  OUTLINED_FUNCTION_25();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_146();
  v11 = v10 - v9;
  if ([a1 type] == 3)
  {
    v12 = [a2 mpc_clientPreferredLanguages];
    v13 = sub_1C6016B10();

    if (*(v13 + 16))
    {
    }

    else
    {

      sub_1C60150C0();
      sub_1C6015080();
      (*(v7 + 8))(v11, v5);
    }

    OUTLINED_FUNCTION_12_33();
    sub_1C5DF9F80();
    if (v14 || (OUTLINED_FUNCTION_12_33(), sub_1C5DFC6D4(), v15) || (v16 = OUTLINED_FUNCTION_12_33(), sub_1C5DFA32C(v16, v17, v18)) || (v11 = v3, sub_1C5DFB400(a1)) || (OUTLINED_FUNCTION_12_33(), sub_1C5DFBA94(), v19) || (v20 = OUTLINED_FUNCTION_12_33(), sub_1C5DFCF00(v20)))
    {
      OUTLINED_FUNCTION_81_3();

      return v11;
    }

    v11 = v3;
    sub_1C5DFD280();
    OUTLINED_FUNCTION_81_3();

    if (v3)
    {
      return v11;
    }
  }

  return a1;
}

uint64_t sub_1C5DF6614()
{
  OUTLINED_FUNCTION_248();
  v0[32] = v1;
  v2 = sub_1C6014F20();
  v0[33] = v2;
  v0[34] = *(v2 - 8);
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  OUTLINED_FUNCTION_0_73();
  sub_1C5E00D30(0, v3, v4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v5);
  v0[38] = swift_task_alloc();
  v0[39] = swift_task_alloc();
  v0[40] = swift_task_alloc();
  v6 = type metadata accessor for MPCMusicDialogHandler.MPCDialogActionOptions(0);
  v0[41] = v6;
  OUTLINED_FUNCTION_13_3(v6);
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5DF677C()
{
  v1 = sub_1C5E00EA4(*(v0 + 256));
  v2 = MEMORY[0x1E69E7CA0];
  if (!v1)
  {
    goto LABEL_8;
  }

  v3 = sub_1C5DF5F48(v1);

  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = sub_1C6016940();
  sub_1C5CFF290(v4, v5, v3, (v0 + 144));

  if (!*(v0 + 168))
  {

    OUTLINED_FUNCTION_1_59();
    sub_1C5E01024();
LABEL_8:
    v10 = *(v0 + 256);
    sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
    sub_1C6016940();
    *(v0 + 192) = 6001;
    OUTLINED_FUNCTION_49();
    sub_1C6017540();

    OUTLINED_FUNCTION_89();
    *(v0 + 200) = sub_1C5E00EA4(v10);
    sub_1C5E00D30(0, &qword_1EC1AB160, sub_1C5E0110C, MEMORY[0x1E69E6720]);
    v11 = sub_1C60169A0();
    MEMORY[0x1C69534E0](v11);

    sub_1C6016880();
    OUTLINED_FUNCTION_8_30();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_2_47();
    sub_1C5C662A4(v12, v13);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_69_7();
    sub_1C6017280();
    OUTLINED_FUNCTION_66();

    swift_willThrow();
LABEL_9:

    OUTLINED_FUNCTION_172();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3_47();
  sub_1C5E012F0(0, v6, v2 + 8, v7);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_8;
  }

  v8 = *(v0 + 344);

  sub_1C5DF805C(v9, v8);
  v16 = *(v0 + 336);
  sub_1C5E00AA4(*(v0 + 344), v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v38 = *(v0 + 336);

      sub_1C5C64D74(0, &qword_1EC1ABB98, 0x1E69E45D8);
      sub_1C5E10B28();
      OUTLINED_FUNCTION_126();

      v39 = sub_1C5DFBA10(v38, &selRef_initWithResponseButtonActionDictionary_);
      *(v0 + 384) = v39;
      if ([v39 type] != 2)
      {
        v64 = [objc_allocWithZone(MEMORY[0x1E69E45E0]) init];
        *(v0 + 408) = v64;
        v65 = [objc_opt_self() activeAccount];
        v66 = [objc_allocWithZone(MEMORY[0x1E69E4618]) initWithIdentity_];
        *(v0 + 416) = v66;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 432;
        *(v0 + 24) = sub_1C5DF7B74;
        swift_continuation_init();
        v67 = OUTLINED_FUNCTION_8_30();
        sub_1C5CBD170(v67);
        *(v0 + 136) = v68;
        *(v0 + 80) = MEMORY[0x1E69E9820];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_1C5DF5680;
        *(v0 + 104) = &block_descriptor_34_0;
        *(v0 + 112) = v65;
        [v64 handleButtonAction:v39 usingRequestContext:v66 withCompletionHandler:v0 + 80];
        OUTLINED_FUNCTION_14_0();

        return MEMORY[0x1EEE6DEC8](v28);
      }

      sub_1C5CD41FC(v39, &selRef_URLString);
      if (!v40)
      {
LABEL_30:
        v41 = *(v0 + 344);
        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        *(v0 + 240) = 6002;
        OUTLINED_FUNCTION_49();
        sub_1C6017540();
        MEMORY[0x1C69534E0](0xD000000000000016, 0x80000001C6055EC0);
        *(v0 + 176) = sub_1C5CD41FC(v39, &selRef_URLString);
        *(v0 + 184) = v42;
        OUTLINED_FUNCTION_1_59();
        sub_1C5E0119C(0, v43, v44, v45);
        v46 = sub_1C60169A0();
        MEMORY[0x1C69534E0](v46);

        MEMORY[0x1C69534E0](0xD000000000000027, 0x80000001C6055EE0);
        sub_1C6016880();
        _s3__C4CodeOMa_1();
        v48 = v47;
        OUTLINED_FUNCTION_2_47();
        v92 = sub_1C5C662A4(v49, v50);
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_93_1(v51, v52, v53, v54, v55, v56, v57, v58, v48, v92);

        swift_willThrow();

LABEL_38:
        v73 = v41;
LABEL_41:
        sub_1C5E00D94(v73);
        goto LABEL_9;
      }

      sub_1C6014F00();

      if (OUTLINED_FUNCTION_61_5() == 1)
      {
        OUTLINED_FUNCTION_0_73();
        sub_1C5E01024();
        goto LABEL_30;
      }

      (*(*(v0 + 272) + 32))(*(v0 + 280), *(v0 + 304), *(v0 + 264));
      v91 = swift_task_alloc();
      *(v0 + 392) = v91;
      *v91 = v0;
      v91[1] = sub_1C5DF79C4;
LABEL_23:
      OUTLINED_FUNCTION_14_0();

      return sub_1C5DF8944(v35);
    case 2:
      v25 = **(v0 + 336);
      v26 = [objc_allocWithZone(MEMORY[0x1E69705D0]) initWithPersistentID_];
      if (!v26)
      {
        v41 = *(v0 + 344);

        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        *(v0 + 216) = 6003;
        OUTLINED_FUNCTION_49();
        sub_1C6017540();

        OUTLINED_FUNCTION_89();
        *(v0 + 224) = v25;
        v70 = sub_1C60177D0();
        MEMORY[0x1C69534E0](v70);

        sub_1C6016880();
        _s3__C4CodeOMa_1();
        OUTLINED_FUNCTION_2_47();
        sub_1C5C662A4(v71, v72);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_100();
        sub_1C6017280();
        OUTLINED_FUNCTION_66();

        swift_willThrow();
        goto LABEL_38;
      }

      v27 = v26;
      v28 = [v26 mediaLibrary];
      if (v28)
      {
        OUTLINED_FUNCTION_126();

        OUTLINED_FUNCTION_8_35();
        sub_1C5E0119C(0, v29, v2 + 8, v30);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1C60311E0;
        *(v31 + 56) = sub_1C5C64D74(0, &qword_1EC1A8CB0, 0x1E69705D0);
        *(v31 + 32) = v27;
        v32 = v27;
        v33 = sub_1C6016AF0();

        LOBYTE(v31) = [v16 deleteItems_];

        v22 = *(v0 + 344);
        if (v31)
        {
          sub_1C5E00D94(*(v0 + 344));

LABEL_33:
          OUTLINED_FUNCTION_18_24();

          OUTLINED_FUNCTION_14_3();
LABEL_10:
          OUTLINED_FUNCTION_14_0();

          __asm { BRAA            X1, X16 }
        }

        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        *(v0 + 232) = 6003;
        OUTLINED_FUNCTION_49();
        sub_1C6017540();

        OUTLINED_FUNCTION_89();
        v74 = v32;
        v75 = [v74 description];
        v76 = sub_1C6016940();
        v78 = v77;

        MEMORY[0x1C69534E0](v76, v78);

        MEMORY[0x1C69534E0](0x696C206D6F726620, 0xED00007972617262);
        sub_1C6016880();
        _s3__C4CodeOMa_1();
        v80 = v79;
        OUTLINED_FUNCTION_2_47();
        v93 = sub_1C5C662A4(v81, v82);
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_93_1(v83, v84, v85, v86, v87, v88, v89, v90, v80, v93);

        swift_willThrow();

LABEL_40:
        v73 = v22;
        goto LABEL_41;
      }

LABEL_44:
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v28);
    case 3:
      OUTLINED_FUNCTION_109();
      sub_1C6014F00();
      v28 = OUTLINED_FUNCTION_61_5();
      if (v28 != 1)
      {

        v34 = swift_task_alloc();
        *(v0 + 352) = v34;
        *v34 = v0;
        v34[1] = sub_1C5DF766C;
        goto LABEL_23;
      }

      __break(1u);
      goto LABEL_44;
    case 4:

      sub_1C6014F00();
      v21 = OUTLINED_FUNCTION_61_5();
      v22 = *(v0 + 344);
      if (v21 != 1)
      {
        (*(*(v0 + 272) + 32))(*(v0 + 288), *(v0 + 312), *(v0 + 264));
        v59 = [objc_allocWithZone(MEMORY[0x1E6963608]) init];
        v60 = sub_1C6014EA0();
        v61 = sub_1C6016880();
        sub_1C5E011EC(v60, v61, v59);

        v62 = OUTLINED_FUNCTION_85_0();
        v63(v62);
        sub_1C5E00D94(v22);
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_0_73();
      sub_1C5E01024();
      sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
      sub_1C6016940();
      *(v0 + 248) = 6004;
      sub_1C6016880();
      _s3__C4CodeOMa_1();
      OUTLINED_FUNCTION_2_47();
      sub_1C5C662A4(v23, v24);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_100();
      sub_1C6017280();
      OUTLINED_FUNCTION_66();

      swift_willThrow();
      goto LABEL_40;
    case 5:
      sub_1C5E00D94(*(v0 + 344));

      goto LABEL_33;
    default:

      v18 = OUTLINED_FUNCTION_80();
      v19(v18);
      v20 = swift_task_alloc();
      *(v0 + 368) = v20;
      *v20 = v0;
      v20[1] = sub_1C5DF781C;
      goto LABEL_23;
  }
}

uint64_t sub_1C5DF766C()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  v3[45] = v0;

  if (!v0)
  {
    (*(v3[34] + 8))(v3[40], v3[33]);
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5DF7780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  sub_1C5E00D94(*(v10 + 344));
  OUTLINED_FUNCTION_18_24();

  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_31();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1C5DF781C()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  *(v6 + 376) = v0;

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5DF7918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  v11 = OUTLINED_FUNCTION_70_2();
  v12(v11);
  sub_1C5E00D94(v10);
  OUTLINED_FUNCTION_18_24();

  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_31();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C5DF79C4()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  *(v6 + 400) = v0;

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5DF7AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_87_3();
  v11 = OUTLINED_FUNCTION_252();
  v12(v11);
  sub_1C5E00D94(v10);
  OUTLINED_FUNCTION_18_24();

  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_31();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C5DF7B74()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 424) = *(v3 + 48);
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5DF7C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  v12 = *(v10 + 408);
  v11 = *(v10 + 416);
  v13 = *(v10 + 344);

  sub_1C5E00D94(v13);
  OUTLINED_FUNCTION_18_24();

  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_31();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1C5DF7D28()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[40];
  v2 = v0[33];
  v3 = v0[34];
  sub_1C5E00D94(v0[43]);
  (*(v3 + 8))(v1, v2);
  OUTLINED_FUNCTION_27_21();

  OUTLINED_FUNCTION_172();

  return v4();
}

uint64_t sub_1C5DF7DF8()
{
  OUTLINED_FUNCTION_23();
  v1 = OUTLINED_FUNCTION_70_2();
  v2(v1);
  sub_1C5E00D94(v0);
  OUTLINED_FUNCTION_27_21();

  OUTLINED_FUNCTION_172();

  return v3();
}

uint64_t sub_1C5DF7EB8()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_87_3();
  v1 = OUTLINED_FUNCTION_252();
  v2(v1);
  sub_1C5E00D94(v0);
  OUTLINED_FUNCTION_27_21();

  OUTLINED_FUNCTION_172();

  return v3();
}

uint64_t sub_1C5DF7F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8[52];
  v10 = v8[51];
  v11 = v8[48];
  v12 = v8[43];
  swift_willThrow();

  sub_1C5E00D94(v12);
  OUTLINED_FUNCTION_27_21();

  OUTLINED_FUNCTION_172();

  return v13();
}

uint64_t sub_1C5DF805C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_0_73();
  sub_1C5E00D30(0, v4, v5, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v6);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v61 - v8;
  v10 = sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_146();
  v16 = (v15 - v14);
  if (!a1)
  {
    goto LABEL_14;
  }

  v17 = sub_1C6016940();
  v19 = v18;

  sub_1C5CFF290(v17, v19, a1, &v65);

  if (!v66)
  {

    OUTLINED_FUNCTION_1_59();
    OUTLINED_FUNCTION_65_9();
    sub_1C5E01024();
    goto LABEL_14;
  }

  v23 = OUTLINED_FUNCTION_26_17(v20, v21, v22, MEMORY[0x1E69E6158]);

  if ((v23 & 1) == 0)
  {
LABEL_14:
    sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
    sub_1C6016940();
    v63 = 6001;
    *&v65 = 0;
    *(&v65 + 1) = 0xE000000000000000;
    sub_1C6017540();

    OUTLINED_FUNCTION_15_25();
    *&v65 = v31 + 19;
    *(&v65 + 1) = v30;
    v67 = a1;
    sub_1C5E01270(0);
    v32 = sub_1C60169A0();
    MEMORY[0x1C69534E0](v32);

    sub_1C6016880();
    OUTLINED_FUNCTION_8_30();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_2_47();
    sub_1C5C662A4(v33, v34);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_69_7();
    sub_1C6017280();

LABEL_15:

    return swift_willThrow();
  }

  v24 = v63;
  v25 = v63 == 0x4C52556E65706FLL && v64 == 0xE700000000000000;
  v62 = v64;
  if (!v25)
  {
    v61 = v63;
    v26 = sub_1C6017860();
    v24 = v61;
    if ((v26 & 1) == 0)
    {
      v39 = v61 == 0x6973754D6E65706FLL && v62 == 0xE900000000000063;
      if (v39 || (v40 = v62, (sub_1C6017860() & 1) != 0) || (v24 == 0x747465536E65706FLL ? (v42 = v40 == 0xEC00000073676E69) : (v42 = 0), v42 || (sub_1C6017860() & 1) != 0))
      {

        type metadata accessor for MPCMusicDialogHandler.MPCDialogActionOptions(0);
        OUTLINED_FUNCTION_34_4();
        return swift_storeEnumTagMultiPayload();
      }

      v43 = v24 == 0x74634165726F7473 && v40 == 0xEB000000006E6F69;
      if (v43 || (v44 = sub_1C6017860(), v45 = v61, v46 = v62, (v44 & 1) != 0))
      {
        sub_1C5CFF290(0xD00000000000001ELL, 0x80000001C6055950, a1, &v65);

        if (v66)
        {
          OUTLINED_FUNCTION_3_47();
          sub_1C5E012F0(0, v47, v48, v49);
          if (OUTLINED_FUNCTION_26_17(v50, v51, v52, v50))
          {
LABEL_42:

            *a2 = v63;
            type metadata accessor for MPCMusicDialogHandler.MPCDialogActionOptions(0);
            OUTLINED_FUNCTION_34_4();
            return swift_storeEnumTagMultiPayload();
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_59();
          OUTLINED_FUNCTION_65_9();
          sub_1C5E01024();
        }

        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        OUTLINED_FUNCTION_7_36();
        sub_1C6017540();
        OUTLINED_FUNCTION_77_5();
        v53 = "ID for action key: ";
        v54 = 0xD000000000000065;
      }

      else
      {
        OUTLINED_FUNCTION_109();
        v56 = v45 == 0xD000000000000015 && v55 == v46;
        if (!v56 && (sub_1C6017860() & 1) == 0)
        {

          sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
          sub_1C6016940();
          OUTLINED_FUNCTION_7_36();
          sub_1C6017540();
          OUTLINED_FUNCTION_77_5();
          MEMORY[0x1C69534E0](0xD000000000000042, 0x80000001C6055FA0);
          v60 = OUTLINED_FUNCTION_11_0();
          MEMORY[0x1C69534E0](v60);
          goto LABEL_20;
        }

        sub_1C5CFF290(0x6574736973726570, 0xEC0000004449746ELL, a1, &v65);

        if (v66)
        {
          if (OUTLINED_FUNCTION_26_17(v57, v58, v59, MEMORY[0x1E69E76D8]))
          {
            goto LABEL_42;
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_59();
          OUTLINED_FUNCTION_65_9();
          sub_1C5E01024();
        }

        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        OUTLINED_FUNCTION_7_36();
        sub_1C6017540();
        OUTLINED_FUNCTION_77_5();
        v53 = "known action key: ";
        v54 = 0xD000000000000053;
      }

      MEMORY[0x1C69534E0](v54, v53 | 0x8000000000000000);
      v36 = v61;
      goto LABEL_19;
    }
  }

  sub_1C5CFF290(7107189, 0xE300000000000000, a1, &v65);

  if (!v66)
  {
    OUTLINED_FUNCTION_1_59();
    OUTLINED_FUNCTION_65_9();
    goto LABEL_17;
  }

  if ((OUTLINED_FUNCTION_26_17(v27, v28, v29, MEMORY[0x1E69E6158]) & 1) == 0)
  {
LABEL_18:
    sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
    sub_1C6016940();
    OUTLINED_FUNCTION_7_36();
    sub_1C6017540();
    OUTLINED_FUNCTION_77_5();
    MEMORY[0x1C69534E0](0xD00000000000004ALL, 0x80000001C60560C0);
    v36 = v24;
LABEL_19:
    MEMORY[0x1C69534E0](v36, v62);
LABEL_20:

    sub_1C6016880();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_2_47();
    sub_1C5C662A4(v37, v38);
    OUTLINED_FUNCTION_100();
    sub_1C6017280();

    goto LABEL_15;
  }

  sub_1C6014F00();

  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    OUTLINED_FUNCTION_0_73();
LABEL_17:
    sub_1C5E01024();
    goto LABEL_18;
  }

  v41 = *(v12 + 32);
  v41(v16, v9, v10);
  v41(a2, v16, v10);
  type metadata accessor for MPCMusicDialogHandler.MPCDialogActionOptions(0);
  OUTLINED_FUNCTION_34_4();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C5DF8944(uint64_t a1)
{
  v1[18] = a1;
  sub_1C6016C10();
  v1[19] = sub_1C6016C00();
  v3 = sub_1C6016BA0();
  v1[20] = v3;
  v1[21] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C5DF89DC, v3, v2);
}

uint64_t sub_1C5DF89DC(uint64_t a1)
{
  v2 = MPUIApplication();
  v1[22] = v2;
  if (!v2)
  {
LABEL_7:

    sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
    sub_1C6016940();
    v1[10] = 6004;
    OUTLINED_FUNCTION_49();
    sub_1C6017540();

    OUTLINED_FUNCTION_15_25();
    sub_1C6014F20();
    OUTLINED_FUNCTION_9_32();
    sub_1C5C662A4(v12, v13);
    v14 = sub_1C60177D0();
    MEMORY[0x1C69534E0](v14);

    MEMORY[0x1C69534E0](39, 0xE100000000000000);
    sub_1C6016880();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_2_47();
    sub_1C5C662A4(v15, v16);
    OUTLINED_FUNCTION_100();
    sub_1C6017280();
    OUTLINED_FUNCTION_62_8();

    swift_willThrow();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_14_0();

    __asm { BRAA            X1, X16 }
  }

  v3 = v2;
  v4 = sub_1C6014EA0();
  v5 = [v3 canOpenURL_];

  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = sub_1C6014EA0();
  v1[23] = v6;
  type metadata accessor for OpenExternalURLOptionsKey();
  v7 = sub_1C5C662A4(&qword_1EC1AA398, type metadata accessor for OpenExternalURLOptionsKey);
  sub_1C6016880();
  v8 = sub_1C6016840();
  v1[24] = v8;

  v1[2] = v1;
  v1[7] = v1 + 25;
  v1[3] = sub_1C5DF8D74;
  swift_continuation_init();
  OUTLINED_FUNCTION_8_30();
  sub_1C5CCB6B0();
  v1[17] = v9;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1C5DF56F0;
  v1[13] = &block_descriptor_40_1;
  v1[14] = v7;
  [v3 openURL:v6 options:v8 completionHandler:v1 + 10];
  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6DEC8](v10);
}

uint64_t sub_1C5DF8D74()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v1 = v0;
  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1C5DF8E70, v4, v3);
}

uint64_t sub_1C5DF8E70()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);

  OUTLINED_FUNCTION_14_3();

  return v3();
}

void sub_1C5DF8EEC()
{
  OUTLINED_FUNCTION_247();
  v2 = v1;
  sub_1C60150D0();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  sub_1C5E00B54(v0 + 24, v33);
  if (!*(&v33[1] + 1))
  {
    sub_1C5E00BE4(v33);
LABEL_10:
    sub_1C6016880();
    goto LABEL_11;
  }

  sub_1C5C6BEFC(v33, v31);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = [Strong playbackEngine];

  if (!v5)
  {
    __swift_destroy_boxed_opaque_existential_0(v31);
    goto LABEL_10;
  }

  sub_1C60150C0();
  v6 = sub_1C6015080();
  v8 = v7;
  v9 = OUTLINED_FUNCTION_32();
  v10(v9);
  v11 = swift_allocObject();
  sub_1C5E02D40(0, v6, v8, v32);
  memcpy((v11 + 16), v32, 0x70uLL);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;

  v29 = v5;
  v13 = [v5 eventStream];
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v11;
  v14[4] = v2;
  *&v33[2] = sub_1C5E01350;
  *(&v33[2] + 1) = v14;
  *&v33[0] = MEMORY[0x1E69E9820];
  *(&v33[0] + 1) = 1107296256;
  *&v33[1] = sub_1C5DF9F20;
  *(&v33[1] + 1) = &block_descriptor_49;
  v15 = _Block_copy(v33);

  v16 = v2;

  [v13 performQuery_];
  _Block_release(v15);

  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  memcpy(v33, (v11 + 16), sizeof(v33));
  sub_1C5E00C80(v33, &v30);
  sub_1C5E0305C();
  sub_1C5E00CDC(v33);
  __swift_project_boxed_opaque_existential_0(v31, v31[3]);
  OUTLINED_FUNCTION_37_9();
  sub_1C60151B0();
  OUTLINED_FUNCTION_37_9();

  v17 = sub_1C6015160();
  if (!v18)
  {
    OUTLINED_FUNCTION_109();
    v17 = sub_1C5DFE520(0xD000000000000017);
  }

  v19 = v17;
  v20 = v18;
  v21 = sub_1C6015140();
  if (!v22)
  {
    v23 = OUTLINED_FUNCTION_56_8();
    v21 = sub_1C5DFE520(v23);
  }

  v24 = v21;
  v25 = v22;

  sub_1C5E00B08(0, &qword_1ED7DCB58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035C00;
  *(inited + 32) = sub_1C6016940();
  *(inited + 40) = v27;
  *(inited + 48) = v19;
  *(inited + 56) = v20;
  *(inited + 64) = sub_1C6016940();
  *(inited + 72) = v28;
  *(inited + 80) = v24;
  *(inited + 88) = v25;
  sub_1C6016880();

  __swift_destroy_boxed_opaque_existential_0(v31);
LABEL_11:
  OUTLINED_FUNCTION_237();
}

void sub_1C5DF9318(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [a1 findPreviousEventWithType:@"remote-control-begin" matchingPayload:0];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = (a2 + 16);
  v10 = [a1 cursorUntilEvent_];
  v11 = swift_allocObject();
  *(v11 + 2) = a2 + 16;
  v12 = swift_allocObject();
  v12[2] = sub_1C5E013B0;
  v12[3] = v11;
  v67 = sub_1C5CC5AF0;
  v68 = v12;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v65 = sub_1C5D378E4;
  v66 = &block_descriptor_59;
  v13 = _Block_copy(&aBlock);

  [v10 enumeratePreviousEventsWithType:@"queue-add" usingBlock:v13];
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    goto LABEL_58;
  }

  v59 = a4;
  v14 = [v10 findPreviousEventWithType:@"session-reuse" matchingPayload:0];
  if (v14)
  {

    swift_beginAccess();
    *v9 = 1;
  }

  sub_1C5E00D30(0, qword_1ED7DCB30, type metadata accessor for MPCPlaybackEngineEventType, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C6035C00;
  *(v15 + 32) = @"container-begin";
  *(v15 + 40) = @"container-end";
  type metadata accessor for MPCPlaybackEngineEventType();
  v16 = @"container-begin";
  v17 = @"container-end";
  v18 = sub_1C6016AF0();

  v19 = [a1 findPreviousEventWithTypes:v18 matchingPayload:0];

  if (!v19)
  {
    goto LABEL_23;
  }

  v20 = [v19 type];
  v21 = sub_1C6016940();
  v23 = v22;
  if (v21 == sub_1C6016940() && v23 == v24)
  {
  }

  else
  {
    v26 = sub_1C6017860();

    if ((v26 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v27 = [v19 payload];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5C662A4(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
  v28 = sub_1C6016860();

  sub_1C5CFF1CC(v28, &aBlock);

  if (!v66)
  {
LABEL_20:

    sub_1C5E01024();
    goto LABEL_23;
  }

  sub_1C5C64D74(0, &unk_1EC1A8C90, 0x1E69706A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v29 = [v19 payload];
  v30 = sub_1C6016860();

  sub_1C5CFF1CC(v30, &aBlock);

  if (!v66)
  {

    goto LABEL_20;
  }

  sub_1C5C64D74(0, &qword_1ED7DCE70, 0x1E6970550);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_22:
    goto LABEL_23;
  }

  v31 = v63;
  v32 = sub_1C5E02D74(v31);
  swift_beginAccess();
  *(a3 + 16) = v32;
  v33 = [v63 prioritizedStoreStringIdentifiersForPersonID_];
  v58 = sub_1C6016B10();

  swift_beginAccess();
  *(a3 + 32) = v58;

LABEL_23:
  swift_beginAccess();
  if (*v9 == 1)
  {
    swift_beginAccess();
    *(a3 + 16) = 0;
  }

  v34 = [a1 findPreviousEventWithType:@"session-begin" matchingPayload:0];
  if (!v34)
  {

    swift_unknownObjectRelease();
    return;
  }

  v9 = v34;
  v35 = [a1 cursorUntilEvent_];
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1C6035C00;
  *(v36 + 32) = @"item-begin";
  *(v36 + 40) = @"item-end";
  v37 = @"item-begin";
  v38 = @"item-end";
  v39 = sub_1C6016AF0();

  v11 = [v35 findPreviousEventWithTypes:v39 matchingPayload:0];

  if (v11)
  {
    v12 = &selRef_timeZoneWithName_;
    v40 = [v11 type];
    v41 = sub_1C6016940();
    v43 = v42;
    if (v41 == sub_1C6016940() && v43 == v44)
    {
    }

    else
    {
      v46 = sub_1C6017860();

      if ((v46 & 1) == 0)
      {
        if (qword_1ED7DD2B0 == -1)
        {
LABEL_33:
          v47 = sub_1C60162D0();
          __swift_project_value_buffer(v47, qword_1ED7E1690);
          v48 = sub_1C60162B0();
          v49 = sub_1C6016F20();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&dword_1C5C61000, v48, v49, "[MPCMusicDialogHandler] - ❗️Current item is outside of an item event", v50, 2u);
            MEMORY[0x1C6956920](v50, -1, -1);
          }

          v51 = [v59 v12 + 504];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          if (v51 == 2)
          {
            swift_beginAccess();
            *(a3 + 16) = 4;
            *(a3 + 48) = 0;
          }

          goto LABEL_53;
        }

LABEL_58:
        swift_once();
        goto LABEL_33;
      }
    }

    v52 = [v11 payload];
    type metadata accessor for MPCPlaybackEngineEventPayloadKey();
    sub_1C5C662A4(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
    v53 = sub_1C6016860();

    sub_1C5CFF1CC(v53, &aBlock);

    if (v66)
    {
      sub_1C5C64D74(0, &qword_1ED7DCE70, 0x1E6970550);
      if (swift_dynamicCast())
      {
        v54 = [v61 prioritizedStoreStringIdentifiersForPersonID_];
        v55 = sub_1C6016B10();

        swift_beginAccess();
        *(a3 + 24) = v55;
      }
    }

    else
    {
      sub_1C5E01024();
    }

    v56 = [v11 payload];
    v57 = sub_1C6016860();

    sub_1C5CFF1CC(v57, &aBlock);

    if (!v66)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

LABEL_52:
      sub_1C5E01024();
LABEL_53:

      return;
    }

    sub_1C5CC59D8(0);
    if (swift_dynamicCast())
    {
      sub_1C5CFF1CC(v62, &aBlock);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      if (v66)
      {
        if ((swift_dynamicCast() & 1) != 0 && v62 == 1)
        {
          swift_beginAccess();
          *(a3 + 16) = 4;
          *(a3 + 48) = 0;
        }

        goto LABEL_53;
      }

      goto LABEL_52;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C5DF9F20(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_1C5DF9F80()
{
  OUTLINED_FUNCTION_247();
  v1 = OUTLINED_FUNCTION_68();
  type metadata accessor for MPCMusicDialogHandler.MPCDialogActionOptions(v1);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_146();
  v3 = [v0 error];
  if (v3)
  {
    v4 = v3;
    swift_getErrorValue();
    sub_1C6016940();
    sub_1C6017950();
    OUTLINED_FUNCTION_81_3();

    if (v25)
    {

      sub_1C5C64D74(0, &qword_1EC1ABB58, 0x1E69708E8);
      v5 = OUTLINED_FUNCTION_94_2(0xD000000000000026);
      v7 = v6;
      v8 = OUTLINED_FUNCTION_94_2(0xD000000000000028);
      v10 = sub_1C5DFA200(v5, v7, v8, v9);
      sub_1C5C64D74(0, &qword_1EC1ABB60, 0x1E69708F0);
      v11 = OUTLINED_FUNCTION_85_4();
      OUTLINED_FUNCTION_94_2(v11);
      OUTLINED_FUNCTION_84_2();
      v16 = sub_1C5DFA2AC(v12, v13, v14, v15);
      OUTLINED_FUNCTION_94_2(0x53554D5F4E45504FLL);
      swift_storeEnumTagMultiPayload();
      sub_1C5E00730();
      v17 = OUTLINED_FUNCTION_37_9();
      sub_1C5E00D94(v17);
      OUTLINED_FUNCTION_80_5();
      v22 = sub_1C5DFA2AC(v18, v19, v20, v21);
      [v10 addAction_];
      [v10 addAction_];
      sub_1C5C64D74(0, &qword_1EC1ABB68, 0x1E69708F8);
      v23 = [v0 statusCode];
      v24 = v4;
      sub_1C5E025B0(v23, v10, v4);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_237();
}

id sub_1C5DFA200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v5 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = sub_1C6016900();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = sub_1C6016900();

LABEL_6:
  v7 = [swift_getObjCClassFromMetadata() dialogWithTitle:v5 message:v6];

  return v7;
}

id sub_1C5DFA2AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1C6016900();

  v7 = [swift_getObjCClassFromMetadata() actionWithTitle:v6 type:a3 commandEvent:a4];

  return v7;
}

void *sub_1C5DFA32C(void *a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = [Strong playbackEngine];

  if (v5)
  {
    v6 = [a1 error];
    if (v6)
    {
      v7 = v6;
      swift_getErrorValue();
      sub_1C6016940();
      v8 = sub_1C6017960();

      if (!v8)
      {
        goto LABEL_19;
      }

      swift_getErrorValue();
      v8 = v22;
      sub_1C6016940();
      sub_1C6017950();
      OUTLINED_FUNCTION_250();

      if (!v22)
      {
        swift_getErrorValue();
        sub_1C6016940();
        v8 = sub_1C6017950();

        if (!v8)
        {
          swift_getErrorValue();
          v8 = v21;
          sub_1C6016940();
          sub_1C6017950();
          OUTLINED_FUNCTION_37_9();

          if (!v21)
          {
            goto LABEL_19;
          }
        }
      }

      v9 = [v5 queueController];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 currentItem];

        if (v11)
        {
          sub_1C5DFA654();
          v8 = v12;
          if (v12)
          {
            sub_1C5C64D74(0, &qword_1EC1ABB68, 0x1E69708F8);
            v13 = [a1 statusCode];
            v14 = v7;
            v8 = sub_1C5E025B0(v13, v8, v7);

LABEL_20:
            return v8;
          }

LABEL_19:
          goto LABEL_20;
        }
      }

      if (qword_1ED7DD2B0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v15 = sub_1C60162D0();
      __swift_project_value_buffer(v15, qword_1ED7E1690);
      v16 = sub_1C60162B0();
      v17 = sub_1C6016F30();
      if (OUTLINED_FUNCTION_52_3(v17))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_7_2(&dword_1C5C61000, v18, v19, "[MPCMusicDialogHandler] - ❗️No currentItem in QueueController");
        OUTLINED_FUNCTION_4();
      }
    }
  }

  return 0;
}

void sub_1C5DFA654()
{
  OUTLINED_FUNCTION_247();
  v3 = v1;
  v5 = v4;
  v117 = v6;
  OUTLINED_FUNCTION_68();
  v7 = sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_72_4();
  OUTLINED_FUNCTION_0_73();
  sub_1C5E00D30(0, v11, v12, MEMORY[0x1E69E6720]);
  v14 = OUTLINED_FUNCTION_13_3(v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v112 = &v100 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v113 = &v100 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v100 - v22;
  v116 = type metadata accessor for MPCMusicDialogHandler.MPCDialogActionOptions(0);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_146();
  v114 = v0;
  v115 = (v26 - v25);
  v27 = [v0 mediaItem];
  v28 = v27;
  if (v27)
  {
    v29 = [v27 mediaLibrary];
  }

  else
  {
    v29 = 0;
  }

  v30 = [objc_opt_self() deviceMediaLibrary];
  v31 = v30;
  if (!v29)
  {
    v110 = v17;
    if (!v30)
    {
      goto LABEL_11;
    }

LABEL_10:
    goto LABEL_59;
  }

  if (!v30)
  {

    goto LABEL_59;
  }

  v110 = v17;
  sub_1C5C64D74(0, &qword_1ED7DBB70, 0x1E69705E8);
  OUTLINED_FUNCTION_252();
  v32 = sub_1C60172D0();

  if ((v32 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  v102 = v2;
  if (!v28)
  {
    if ([v114 type] == 2)
    {
      v33 = 65280;
    }

    else
    {
      v33 = 255;
    }

    v120 = 0u;
    v121 = 0u;
    goto LABEL_25;
  }

  v33 = [v28 mediaType];
  if ([v28 valueForProperty_])
  {
    sub_1C6017390();
    swift_unknownObjectRelease();
  }

  else
  {
    v118 = 0u;
    v119 = 0u;
  }

  v120 = v118;
  v121 = v119;
  if (!*(&v119 + 1))
  {
LABEL_25:
    OUTLINED_FUNCTION_1_59();
    sub_1C5E01024();
    goto LABEL_26;
  }

  sub_1C5C64D74(0, &qword_1EC1A92B0, 0x1E696AEC0);
  if (swift_dynamicCast())
  {
    v34 = v118;
    v35 = v33;
    v36 = [v118 longLongValue];

    v37 = v36 == 0;
    v33 = v35;
    v38 = v37;
    goto LABEL_27;
  }

LABEL_26:
  v38 = 0;
LABEL_27:
  v111 = v5;
  v108 = v7;
  v103 = v9;
  v104 = v3;
  v109 = v23;
  v101 = v33;
  if ((v33 & 0x800) != 0)
  {
    v39 = 0xEB000000004F4544;
    v40 = 0x49565F434953554DLL;
  }

  else if ((v33 & 0x402) != 0)
  {
    v39 = 0xE700000000000000;
    v40 = 0x54534143444F50;
  }

  else
  {
    v41 = 0xE500000000000000;
    v42 = 0x4549564F4DLL;
    v43 = 0x4F4F424F49445541;
    v44 = 1196314451;
    if ((v33 & 1) == 0)
    {
      v44 = 0x4B43415254;
    }

    v45 = 0xE400000000000000;
    if ((v33 & 1) == 0)
    {
      v45 = 0xE500000000000000;
    }

    if ((v33 & 4) != 0)
    {
      v46 = 0xE90000000000004BLL;
    }

    else
    {
      v43 = v44;
      v46 = v45;
    }

    if ((v33 & 0x100) == 0)
    {
      v42 = v43;
      v41 = v46;
    }

    if ((v33 & 0x200) != 0)
    {
      v40 = 0x45444F53495045;
    }

    else
    {
      v40 = v42;
    }

    if ((v33 & 0x200) != 0)
    {
      v39 = 0xE700000000000000;
    }

    else
    {
      v39 = v41;
    }
  }

  LODWORD(v107) = v38;
  *&v120 = 0;
  *(&v120 + 1) = 0xE000000000000000;
  sub_1C6017540();

  *&v120 = 0xD000000000000013;
  *(&v120 + 1) = 0x80000001C6055D40;
  v47 = OUTLINED_FUNCTION_55_2();
  MEMORY[0x1C69534E0](v47);
  MEMORY[0x1C69534E0](0x5F454C5449545FLL, 0xE700000000000000);
  MEMORY[0x1C69534E0](v40, v39);
  v48 = v117;
  v106 = sub_1C5DFE520(v120);
  v105 = v49;

  *&v120 = 0;
  *(&v120 + 1) = 0xE000000000000000;
  sub_1C6017540();

  *&v120 = 0xD000000000000013;
  *(&v120 + 1) = 0x80000001C6055D40;
  v50 = OUTLINED_FUNCTION_55_2();
  MEMORY[0x1C69534E0](v50);

  MEMORY[0x1C69534E0](0x4547415353454D5FLL, 0xE90000000000005FLL);
  MEMORY[0x1C69534E0](v40, v39);
  v51 = OUTLINED_FUNCTION_86_2();
  v53 = v52;

  *&v120 = 0;
  *(&v120 + 1) = 0xE000000000000000;
  sub_1C6017540();

  OUTLINED_FUNCTION_89();
  *&v120 = 0xD000000000000021;
  *(&v120 + 1) = v54;
  MEMORY[0x1C69534E0](v40, v39);

  OUTLINED_FUNCTION_86_2();

  sub_1C5C64D74(0, &qword_1EC1ABB58, 0x1E69708E8);
  v55 = sub_1C5DFA200(v106, v105, v51, v53);
  if (v28)
  {
    v48 = sub_1C5C64D74(0, &qword_1EC1ABB60, 0x1E69708F0);
    v56 = v28;
    v57 = [v56 persistentID];
    *v115 = v57;
    swift_storeEnumTagMultiPayload();
    sub_1C5E00730();
    v58 = OUTLINED_FUNCTION_81_3();
    sub_1C5E00D94(v58);
    OUTLINED_FUNCTION_80_5();
    v63 = sub_1C5DFA2AC(v59, v60, v61, v62);
    OUTLINED_FUNCTION_42_12(v63);
  }

  else
  {
  }

  v64 = v109;
  v65 = sub_1C5C64D74(0, &qword_1EC1ABB60, 0x1E69708F0);
  v66 = v108;
  if (v107)
  {
    v67 = OUTLINED_FUNCTION_55_8();
    sub_1C5DFE520(v67);
    OUTLINED_FUNCTION_84_2();
    v72 = sub_1C5DFA2AC(v68, v69, v70, v71);
    OUTLINED_FUNCTION_42_12(v72);
  }

  else
  {
    v73 = OUTLINED_FUNCTION_85_4();
    sub_1C5DFE520(v73);
    OUTLINED_FUNCTION_84_2();
    v107 = v65;
    v78 = sub_1C5DFA2AC(v74, v75, v76, v77);
    OUTLINED_FUNCTION_42_12(v78);

    __swift_storeEnumTagSinglePayload(v64, 1, 1, v66);
    v79 = [v114 storeItemID];
    v80 = v79;
    if (v79)
    {
      *&v120 = 0;
      *(&v120 + 1) = 0xE000000000000000;
      v81 = v79;
      sub_1C6017540();

      OUTLINED_FUNCTION_89();
      *&v120 = 0xD00000000000001ALL;
      *(&v120 + 1) = v82;
      v83 = [v81 description];
      v84 = sub_1C6016940();
      v86 = v85;

      MEMORY[0x1C69534E0](v84, v86);

      v87 = v113;
      sub_1C6014F00();

      OUTLINED_FUNCTION_0_73();
      sub_1C5E01024();
      sub_1C5E01078(v87, v64);
    }

    v88 = v112;
    sub_1C5CB5CB0(v64, v112);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v88, 1, v66);
    OUTLINED_FUNCTION_0_73();
    sub_1C5E01024();
    if (EnumTagSinglePayload == 1)
    {
      v90 = v113;
      sub_1C5DFB1C0(v101, v113);
      OUTLINED_FUNCTION_0_73();
      sub_1C5E01024();
      sub_1C5E01078(v90, v64);
    }

    v91 = v110;
    sub_1C5CB5CB0(v64, v110);
    if (__swift_getEnumTagSinglePayload(v91, 1, v66) == 1)
    {
      sub_1C5E01024();
    }

    else
    {
      v92 = v103;
      v93 = v102;
      (*(v103 + 32))(v102, v91, v66);
      sub_1C5DFE520(0xD000000000000026);
      (*(v92 + 16))(v115, v93, v66);
      swift_storeEnumTagMultiPayload();
      sub_1C5E00730();
      v94 = OUTLINED_FUNCTION_250();
      sub_1C5E00D94(v94);
      OUTLINED_FUNCTION_252();
      OUTLINED_FUNCTION_80_5();
      v99 = sub_1C5DFA2AC(v95, v96, v97, v98);
      [v55 addAction_];

      (*(v92 + 8))(v93, v66);
      OUTLINED_FUNCTION_0_73();
    }

    sub_1C5E01024();
  }

LABEL_59:
  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5DFB1C0@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 4) != 0)
  {
    v3 = 0xEA0000000000736BLL;
    v4 = 0x6F6F626F69647561;
  }

  else
  {
    v3 = 0xE800000000000000;
    if ((a1 & 0x1008) != 0)
    {
      v4 = 0x752D73656E757469;
    }

    else
    {
      v5 = 0xEC000000736F6564;
      v6 = 0x69762D636973756DLL;
      v7 = 0x73776F68732D7674;
      if ((a1 & 0x200) == 0)
      {
        v7 = 0x636973756DLL;
      }

      v8 = 0xE500000000000000;
      if ((a1 & 0x200) != 0)
      {
        v8 = 0xE800000000000000;
      }

      v9 = 0xE800000000000000;
      if ((a1 & 0x402) != 0)
      {
        v7 = 0x7374736163646F70;
      }

      else
      {
        v9 = v8;
      }

      if ((a1 & 0x800) == 0)
      {
        v6 = v7;
        v5 = v9;
      }

      if ((a1 & 0x100) != 0)
      {
        v4 = 0x736569766F6DLL;
      }

      else
      {
        v4 = v6;
      }

      if ((a1 & 0x100) != 0)
      {
        v3 = 0xE600000000000000;
      }

      else
      {
        v3 = v5;
      }
    }
  }

  v10 = [objc_opt_self() mainBundle];
  v11 = sub_1C5E00E38(v10);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    sub_1C6017540();

    MEMORY[0x1C69534E0](v4, v3);

    MEMORY[0x1C69534E0](0x7972617262696C26, 0xEB000000003D6469);
    MEMORY[0x1C69534E0](v13, v14);

    sub_1C6014F00();
  }

  else
  {

    v16 = sub_1C6014F20();

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v16);
  }
}

id sub_1C5DFB400(void *a1)
{
  result = [a1 error];
  if (result)
  {
    sub_1C5C74680(0, &qword_1ED7DCAE0, MEMORY[0x1E69E7280]);
    sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
    v4 = swift_dynamicCast();
    if (v4)
    {
      if (sub_1C5E44688(v4, v5))
      {
        sub_1C5DFB514();
        OUTLINED_FUNCTION_62_8();
        if (v1)
        {
          sub_1C5C64D74(0, &qword_1EC1ABB68, 0x1E69708F8);
          return sub_1C5E025B0([a1 statusCode], v1, v6);
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_1C5DFB514()
{
  OUTLINED_FUNCTION_247();
  v0 = OUTLINED_FUNCTION_68();
  type metadata accessor for MPCMusicDialogHandler.MPCDialogActionOptions(v0);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_146();
  v41 = (v3 - v2);
  sub_1C5C64D74(0, &qword_1EC1ABB70, 0x1E69E45C8);

  v5 = sub_1C5DFBA10(v4, &selRef_initWithResponseDictionary_);
  sub_1C5CD41FC(v5, &selRef_message);
  if (!v6)
  {
    sub_1C5CD41FC(v5, &selRef_explanation);
    if (!v7)
    {

LABEL_24:
      OUTLINED_FUNCTION_237();
      return;
    }
  }

  sub_1C5C64D74(0, &qword_1EC1ABB58, 0x1E69708E8);
  sub_1C5CD41FC(v5, &selRef_message);
  sub_1C5CD41FC(v5, &selRef_explanation);
  v8 = OUTLINED_FUNCTION_252();
  v12 = sub_1C5DFA200(v8, v9, v10, v11);
  v13 = [v5 buttons];
  sub_1C5C64D74(0, &qword_1EC1ABB78, 0x1E69E45D0);
  v14 = sub_1C6016B10();

  v15 = sub_1C5C6AA20();
  if (!v15)
  {

LABEL_23:

    goto LABEL_24;
  }

  v16 = v15;
  if (v15 >= 1)
  {
    v39 = v5;
    v17 = 0;
    v43 = v14 & 0xC000000000000001;
    v40 = v14;
    v42 = v15;
    while (1)
    {
      if (v43)
      {
        v18 = MEMORY[0x1C6954040](v17, v14);
      }

      else
      {
        v18 = *(v14 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = sub_1C5CD41FC(v18, &selRef_title);
      if (!v21)
      {
        goto LABEL_20;
      }

      v22 = v21;
      v45 = v20;
      v44 = [v19 type] == 2;
      v46 = [v19 action];
      v23 = [v46 actionDictionary];
      v24 = sub_1C6016860();

      v25 = sub_1C5DF573C(v24);

      sub_1C5DF5CA8(v25);
      OUTLINED_FUNCTION_62_8();
      if (!v23)
      {
        goto LABEL_14;
      }

      if (!v23[2])
      {
        break;
      }

      *v41 = v23;
      swift_storeEnumTagMultiPayload();
      v26 = sub_1C5E00730();
      sub_1C5E00D94(v41);
LABEL_19:
      sub_1C5C64D74(0, &qword_1EC1ABB60, 0x1E69708F0);
      v37 = v26;
      v38 = sub_1C5DFA2AC(v45, v22, v44, v26);
      [v12 addAction_];

      v19 = v37;
LABEL_20:
      ++v17;

      if (v16 == v17)
      {

        goto LABEL_23;
      }
    }

LABEL_14:
    if (qword_1ED7DD2B0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v27 = sub_1C60162D0();
    __swift_project_value_buffer(v27, qword_1ED7E1690);
    v28 = v46;
    v29 = sub_1C60162B0();
    v30 = sub_1C6016F20();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v31 = 136315138;
      v32 = [v28 actionDictionary];
      sub_1C6016860();

      sub_1C6016870();

      v33 = OUTLINED_FUNCTION_11_0();
      v36 = sub_1C5C6AB10(v33, v34, v35);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_1C5C61000, v29, v30, "[MPCMusicDialogHandler] - ❗️Failed to create MPCDialogActionOptions for %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      OUTLINED_FUNCTION_4();
      v14 = v40;
      OUTLINED_FUNCTION_4();
    }

    v26 = 0;
    v16 = v42;
    goto LABEL_19;
  }

  __break(1u);
}

id sub_1C5DFBA10(uint64_t a1, SEL *a2)
{
  OUTLINED_FUNCTION_126();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_1C6016840();

  v5 = [v3 *a2];

  return v5;
}

void sub_1C5DFBA94()
{
  OUTLINED_FUNCTION_247();
  OUTLINED_FUNCTION_68();
  v1 = sub_1C60153C0();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_146();
  v7 = v6 - v5;
  v8 = sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  v76 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_146();
  v13 = v12 - v11;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v15 = [Strong playbackEngine];

  if (!v15)
  {
    goto LABEL_36;
  }

  v75 = v3;
  v16 = [v0 error];
  if (!v16)
  {
    goto LABEL_35;
  }

  v17 = v16;
  swift_getErrorValue();
  sub_1C6016940();
  v18 = sub_1C6017950();

  if (v18)
  {

    OUTLINED_FUNCTION_63_5();
LABEL_21:

    goto LABEL_36;
  }

  v74 = v17;
  v17 = v15;
  v19 = [v15 queueController];
  if (!v19 || (v20 = v19, v21 = [v19 currentItem], v20, !v21))
  {
    if (qword_1ED7DD2B0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v51 = sub_1C60162D0();
    __swift_project_value_buffer(v51, qword_1ED7E1690);
    v52 = sub_1C60162B0();
    v53 = sub_1C6016F30();
    if (OUTLINED_FUNCTION_52_3(v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1C5C61000, v52, v82, "[MPCMusicDialogHandler] - ❗️No currentItem in QueueController", v54, 2u);
      OUTLINED_FUNCTION_4();
    }

    goto LABEL_21;
  }

  v73 = v21;
  swift_getErrorValue();
  sub_1C6016940();
  sub_1C6017960();
  OUTLINED_FUNCTION_62_8();
  if (!v81)
  {

    OUTLINED_FUNCTION_63_5();
    goto LABEL_36;
  }

  swift_getErrorValue();
  v22 = sub_1C6017970();
  v23 = v21;
  if (!v22 || (v22, ([v21 usesSubscriptionLease] & 1) == 0))
  {
LABEL_22:

LABEL_23:
    OUTLINED_FUNCTION_63_5();
    goto LABEL_36;
  }

  swift_getErrorValue();
  sub_1C6016940();
  sub_1C6017950();
  OUTLINED_FUNCTION_62_8();
  if (!v79)
  {
    v55 = [objc_opt_self() sharedMonitor];
    v56 = [v55 networkType];

    if (v56)
    {

      goto LABEL_23;
    }

    v23 = v73;
    if ([v73 isAssetLoaded])
    {
      v57 = [v73 asset];
      if (v57)
      {
        v15 = v57;
        objc_opt_self();
        v58 = swift_dynamicCastObjCClass();
        if (v58)
        {
          v59 = [v58 URL];
          sub_1C6014EC0();

          LOBYTE(v59) = sub_1C6014E20();
          (*(v76 + 8))(v13, v8);
          if (v59)
          {
            v72 = v15;
            v26 = 0xD000000000000021;
            sub_1C60153B0();
            sub_1C6015390();
            v60 = *(v75 + 8);
            v60(v7, v1);
            sub_1C60153B0();
            sub_1C60153A0();
            v60(v7, v1);
            OUTLINED_FUNCTION_89();
            MEMORY[0x1C69534E0]();

            v61 = OUTLINED_FUNCTION_11_0();
            MEMORY[0x1C69534E0](v61);

            MEMORY[0x1C69534E0](0x5F4547415353454DLL, 0xE800000000000000);

            [v73 type];

            v62 = OUTLINED_FUNCTION_11_0();
            MEMORY[0x1C69534E0](v62);

            sub_1C5DFE520(0xD000000000000021);
            OUTLINED_FUNCTION_75();

            swift_getErrorValue();
            sub_1C6016940();
            sub_1C6017950();
            OUTLINED_FUNCTION_62_8();
            if (v78)
            {

              OUTLINED_FUNCTION_78_4();
              v77 = sub_1C5DFE520(v63);
              v25 = v64;

              OUTLINED_FUNCTION_71_4();
            }

            else
            {
              [v73 type];
              v23 = 0xD000000000000021;
              OUTLINED_FUNCTION_78_4();
              v66 = sub_1C5DFE520(v65);
              v25 = v67;
              v68 = [objc_opt_self() sharedController];
              v69 = [v68 isCloudLibraryEnabled];

              v77 = v66;
              if (v69)
              {
                v26 = OUTLINED_FUNCTION_48_10(0xD00000000000002CLL);
                v71 = v70;

                v1 = v71;
              }

              else
              {
              }

              OUTLINED_FUNCTION_71_4();
            }

            goto LABEL_15;
          }
        }

        OUTLINED_FUNCTION_63_5();
LABEL_35:

        goto LABEL_36;
      }
    }

    goto LABEL_22;
  }

  v77 = OUTLINED_FUNCTION_48_10(0xD000000000000028);
  v25 = v24;
  v26 = sub_1C5DFE520(0xD00000000000002ALL);
  sub_1C5C72C04(0, &qword_1ED7DCB08, &qword_1ED7DCAC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1C60311E0;
  v23 = v21;
  v28 = sub_1C5D297B8(v21);
  if (v29)
  {
    v1 = v28;
    v30 = v29;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1C5DBC6E4();
    *(v27 + 32) = v1;
    *(v27 + 40) = v30;
    sub_1C6016910();
    OUTLINED_FUNCTION_75();

    v31 = [v21 mediaItem];
    OUTLINED_FUNCTION_71_4();
    if (!v32)
    {
LABEL_15:
      sub_1C5C64D74(0, &qword_1EC1ABB58, 0x1E69708E8);
      OUTLINED_FUNCTION_37_9();

      v42 = sub_1C5DFA200(v77, v25, v26, v1);
      sub_1C5C64D74(0, &qword_1EC1ABB60, 0x1E69708F0);
      v43 = OUTLINED_FUNCTION_55_8();
      sub_1C5DFE520(v43);
      OUTLINED_FUNCTION_31_2();
      v48 = sub_1C5DFA2AC(v44, v45, v46, v47);
      [v42 addAction_];

      sub_1C5C64D74(0, &qword_1EC1ABB68, 0x1E69708F8);
      v49 = [v23 statusCode];
      v50 = v74;
      sub_1C5E025B0(v49, v42, v74);

      OUTLINED_FUNCTION_63_5();

LABEL_36:
      OUTLINED_FUNCTION_237();
      return;
    }

    v33 = v32;
    v34 = [v32 mediaLibrary];
    if (v34)
    {
      v35 = v34;
      OUTLINED_FUNCTION_8_35();
      sub_1C5E0119C(0, v37, v36 + 8, v38);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1C60311E0;
      *(v39 + 56) = sub_1C5C64D74(0, &qword_1EC1A8CB0, 0x1E69705D0);
      *(v39 + 32) = v33;
      v40 = v33;
      v41 = OUTLINED_FUNCTION_126();
      sub_1C5E00F10(v41, v35);

      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

BOOL sub_1C5DFC5E4(void *a1)
{
  v2 = [a1 domain];
  v3 = sub_1C6016940();
  v5 = v4;

  if (v3 == sub_1C6016940() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1C6017860();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if ([a1 code] > -42584)
  {
    return 0;
  }

  return [a1 code] > -42591;
}

void sub_1C5DFC6D4()
{
  OUTLINED_FUNCTION_247();
  v2 = v1;
  type metadata accessor for MPCMusicDialogHandler.MPCDialogActionOptions(0);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_146();
  v4 = sub_1C60153C0();
  OUTLINED_FUNCTION_25();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_72_4();
  v8 = [v2 error];
  if (v8)
  {
    v9 = v8;
    swift_getErrorValue();
    sub_1C6016940();
    sub_1C6017960();
    OUTLINED_FUNCTION_250();

    if (v63)
    {
      *&v59 = v63;
      sub_1C5C74680(0, &qword_1ED7DCAE0, MEMORY[0x1E69E7280]);
      sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
      if (swift_dynamicCast())
      {
        if ([v61 code] == -1004)
        {
          v58 = sub_1C5DFE520(0xD00000000000001FLL);
          v57 = v10;
          sub_1C60153B0();
          v11 = sub_1C6015390();
          (*(v6 + 8))(v0, v4);
          if (v11)
          {
            v12 = 0xD000000000000026;
          }

          else
          {
            v12 = 0xD000000000000021;
          }

          v13 = sub_1C5DFE520(v12);
          v15 = v14;

          sub_1C5C64D74(0, &qword_1EC1ABB58, 0x1E69708E8);

          v16 = sub_1C5DFA200(v58, v57, v13, v15);
          sub_1C5C64D74(0, &qword_1EC1ABB60, 0x1E69708F0);
          sub_1C5DFE520(0x53474E4954544553);
          swift_storeEnumTagMultiPayload();
          sub_1C5E00730();
          v17 = OUTLINED_FUNCTION_37_9();
          sub_1C5E00D94(v17);
          OUTLINED_FUNCTION_80_5();
          v22 = sub_1C5DFA2AC(v18, v19, v20, v21);
          v23 = OUTLINED_FUNCTION_55_8();
          sub_1C5DFE520(v23);
          OUTLINED_FUNCTION_31_2();
          v28 = sub_1C5DFA2AC(v24, v25, v26, v27);
          [v16 addAction_];
          [v16 addAction_];
          sub_1C5C64D74(0, &qword_1EC1ABB68, 0x1E69708F8);
          v29 = [v2 statusCode];
          v30 = v9;
          sub_1C5E025B0(v29, v16, v9);

          goto LABEL_24;
        }
      }
    }

    swift_getErrorValue();
    sub_1C6016940();
    sub_1C6017960();
    OUTLINED_FUNCTION_250();

    if (!v62 || (*&v59 = v62, sub_1C5C74680(0, &qword_1ED7DCAE0, MEMORY[0x1E69E7280]), sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0), (OUTLINED_FUNCTION_60_8() & 1) == 0))
    {

      goto LABEL_18;
    }

    v31 = v61;
    v32 = [v61 code];
    if (v32 == 120)
    {
      swift_getErrorValue();
      sub_1C6016940();
      v51 = sub_1C6017950();

      if (v51)
      {
        *&v59 = v51;
        if (OUTLINED_FUNCTION_60_8())
        {
          v52 = v61;
          v53 = [v61 userInfo];
          v54 = sub_1C6016860();

          sub_1C5CFF290(0xD00000000000001BLL, 0x80000001C6055AB0, v54, &v59);

          if (!v60)
          {

            OUTLINED_FUNCTION_1_59();
            sub_1C5E01024();
            goto LABEL_18;
          }

          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_34:

            goto LABEL_32;
          }

          switch(v61)
          {
            case 0uLL:
            case 3uLL:
              OUTLINED_FUNCTION_109();
              v55 = 0xD000000000000026;
              break;
            case 1uLL:
              v55 = 0xD00000000000002CLL;
              break;
            case 2uLL:
              v55 = 0xD00000000000002DLL;
              break;
            default:
              goto LABEL_34;
          }

          v36 = OUTLINED_FUNCTION_95_1(v55);
          v38 = v56;

          goto LABEL_21;
        }
      }
    }

    else
    {
      if (v32 != 125)
      {
        if (v32 != 141)
        {
          if (v32 == 140)
          {

            v33 = v2;
            goto LABEL_18;
          }

          goto LABEL_31;
        }

        v39 = OUTLINED_FUNCTION_95_1(0xD000000000000020);
        v40 = v41;
        v36 = 0;
        v38 = 0;
LABEL_23:
        sub_1C5C64D74(0, &qword_1EC1ABB58, 0x1E69708E8);

        v42 = sub_1C5DFA200(v39, v40, v36, v38);
        sub_1C5C64D74(0, &qword_1EC1ABB60, 0x1E69708F0);
        v43 = OUTLINED_FUNCTION_55_8();
        OUTLINED_FUNCTION_95_1(v43);
        OUTLINED_FUNCTION_31_2();
        v48 = sub_1C5DFA2AC(v44, v45, v46, v47);
        [v42 addAction_];
        sub_1C5C64D74(0, &qword_1EC1ABB68, 0x1E69708F8);
        v49 = [v2 statusCode];
        v50 = v9;
        sub_1C5E025B0(v49, v42, v9);

LABEL_24:

        goto LABEL_18;
      }

      v34 = [objc_opt_self() sharedRestrictionsMonitor];
      v35 = [v34 allowsExplicitContent];

      if ((v35 & 1) == 0)
      {
        v36 = OUTLINED_FUNCTION_95_1(0xD000000000000036);
        v38 = v37;
LABEL_21:
        v39 = 0;
        v40 = 0;
        goto LABEL_23;
      }
    }

LABEL_31:

LABEL_32:
  }

LABEL_18:
  OUTLINED_FUNCTION_237();
}

id sub_1C5DFCF00(void *a1)
{
  v2 = [a1 error];
  if (v2)
  {
    swift_getErrorValue();
    sub_1C6016940();
    sub_1C6017960();
    OUTLINED_FUNCTION_37_9();

    if (v40 && (sub_1C5C74680(0, &qword_1ED7DCAE0, MEMORY[0x1E69E7280]), v3 = sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0), (OUTLINED_FUNCTION_59_7(v3, v4, v5) & 1) != 0))
    {
      v37 = v38;
      sub_1C5C64D74(0, &qword_1EC1ABB58, 0x1E69708E8);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_90_2();
      OUTLINED_FUNCTION_75();
      v6 = [v38 localizedDescription];
      sub_1C6016940();

      OUTLINED_FUNCTION_55_2();
      OUTLINED_FUNCTION_78_4();
      v11 = sub_1C5DFA200(v7, v8, v9, v10);
      sub_1C5C64D74(0, &qword_1EC1ABB60, 0x1E69708F0);
      OUTLINED_FUNCTION_46_6();
      OUTLINED_FUNCTION_31_2();
      v16 = sub_1C5DFA2AC(v12, v13, v14, v15);
      [v11 addAction_];
    }

    else
    {
      swift_getErrorValue();
      sub_1C6016940();
      sub_1C6017960();
      OUTLINED_FUNCTION_37_9();

      if (!v39 || (sub_1C5C74680(0, &qword_1ED7DCAE0, MEMORY[0x1E69E7280]), v17 = sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0), (OUTLINED_FUNCTION_59_7(v17, v18, v19) & 1) == 0))
      {

        return 0;
      }

      v37 = v38;
      sub_1C5C64D74(0, &qword_1EC1ABB58, 0x1E69708E8);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_90_2();
      OUTLINED_FUNCTION_75();
      v20 = [v38 localizedDescription];
      sub_1C6016940();

      OUTLINED_FUNCTION_55_2();
      OUTLINED_FUNCTION_78_4();
      v11 = sub_1C5DFA200(v21, v22, v23, v24);
      sub_1C5C64D74(0, &qword_1EC1ABB60, 0x1E69708F0);
      sub_1C6016940();
      OUTLINED_FUNCTION_31_2();
      v29 = sub_1C5DFA2AC(v25, v26, v27, v28);
      [v11 addAction_];

      OUTLINED_FUNCTION_46_6();
      OUTLINED_FUNCTION_31_2();
      v16 = sub_1C5DFA2AC(v30, v31, v32, v33);
      [v11 addAction_];
    }

    sub_1C5C64D74(0, &qword_1EC1ABB68, 0x1E69708F8);
    v34 = [a1 statusCode];
    v35 = v2;
    v2 = sub_1C5E025B0(v34, v11, v2);
  }

  return v2;
}

void sub_1C5DFD280()
{
  OUTLINED_FUNCTION_247();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  sub_1C5E00B54(v0 + 24, v56);
  if (!*(&v56[1] + 1))
  {
    sub_1C5E00BE4(v56);
    goto LABEL_17;
  }

  sub_1C5C6BEFC(v56, v54);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = [Strong playbackEngine];

  if (!v10)
  {
LABEL_16:
    __swift_destroy_boxed_opaque_existential_0(v54);
    goto LABEL_17;
  }

  v11 = [v8 error];
  if (!v11)
  {
LABEL_15:

    goto LABEL_16;
  }

  v12 = v11;
  OUTLINED_FUNCTION_8_35();
  sub_1C5E0119C(0, v13, v14, v15);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60379A0;
  *(inited + 32) = xmmword_1C6043BB0;
  *(inited + 48) = 131;
  v17 = sub_1C5D137F0([v6 mediaRemoteCommandType], inited);
  swift_setDeallocating();
  if (!v17)
  {

    goto LABEL_16;
  }

  v52 = v12;
  v18 = swift_allocObject();
  sub_1C5E02D40(0, v4, v2, __src);
  memcpy((v18 + 16), __src, 0x70uLL);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = 1;

  v21 = [v10 eventStream];
  v22 = swift_allocObject();
  v22[2] = v19;
  v22[3] = v6;
  v22[4] = v18;
  v22[5] = v20;
  *&v56[2] = sub_1C5E00C6C;
  *(&v56[2] + 1) = v22;
  *&v56[0] = MEMORY[0x1E69E9820];
  *(&v56[0] + 1) = 1107296256;
  *&v56[1] = sub_1C5DF9F20;
  *(&v56[1] + 1) = &block_descriptor_28;
  v23 = _Block_copy(v56);

  v24 = v6;

  [v21 performQuery_];
  _Block_release(v23);

  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  if ((*(v20 + 16) & 1) == 0)
  {
    if (qword_1ED7DD2B0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v34 = sub_1C60162D0();
    __swift_project_value_buffer(v34, qword_1ED7E1690);
    v35 = sub_1C60162B0();
    v36 = sub_1C6016F30();
    if (OUTLINED_FUNCTION_52_3(v36))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_7_2(&dword_1C5C61000, v37, v38, "[MPCDialogHandler] - ❗️No current item in player, no QOS dialog will be shown");
      OUTLINED_FUNCTION_4();
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  memcpy(v56, (v18 + 16), sizeof(v56));
  sub_1C5E00C80(v56, v53);
  sub_1C5E0305C();
  sub_1C5E00CDC(v56);
  __swift_project_boxed_opaque_existential_0(v54, v54[3]);
  v25 = sub_1C6014D30();
  v26 = sub_1C60151B0();

  v27 = OUTLINED_FUNCTION_55_8();
  sub_1C5DFE520(v27);
  v28 = sub_1C6015160();
  v30 = v29;
  v51 = v26;
  v31 = sub_1C6015140();
  v33 = v32;
  if (!v30)
  {
    OUTLINED_FUNCTION_109();
    v28 = sub_1C5DFE520(0xD000000000000017);
    v30 = v39;
  }

  if (!v33)
  {
    v40 = OUTLINED_FUNCTION_56_8();
    v31 = sub_1C5DFE520(v40);
    v33 = v41;
  }

  sub_1C5C64D74(0, &qword_1EC1ABB58, 0x1E69708E8);
  v42 = sub_1C5DFA200(v28, v30, v31, v33);
  sub_1C5C64D74(0, &qword_1EC1ABB60, 0x1E69708F0);
  OUTLINED_FUNCTION_31_2();
  v47 = sub_1C5DFA2AC(v43, v44, v45, v46);
  [v42 addAction_];
  sub_1C5C64D74(0, &qword_1EC1ABB68, 0x1E69708F8);
  [v8 statusCode];
  v48 = v52;
  v49 = OUTLINED_FUNCTION_11_0();
  sub_1C5E025B0(v49, v50, v52);

  __swift_destroy_boxed_opaque_existential_0(v54);
LABEL_17:
  OUTLINED_FUNCTION_237();
}

void sub_1C5DFD82C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = [a1 findPreviousEventWithType:@"remote-control-begin" matchingPayload:0];
  if (v10)
  {
    v11 = v10;
    v63 = a5;
    v64 = a4;
    v12 = (a2 + 16);
    v13 = [a1 cursorUntilEvent_];
    v14 = swift_allocObject();
    *(v14 + 16) = a2 + 16;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C5E02318;
    *(v15 + 24) = v14;
    v70 = sub_1C5CC58A0;
    v71 = v15;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v68 = sub_1C5D378E4;
    v69 = &block_descriptor_30_0;
    v16 = _Block_copy(&aBlock);

    [v13 enumeratePreviousEventsWithType:@"queue-add" usingBlock:v16];
    _Block_release(v16);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if (v16)
    {
      __break(1u);
      return;
    }

    sub_1C5E0119C(0, &qword_1EC1ABB50, MEMORY[0x1E69E7668], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C6031150;
    *(inited + 32) = 0x400000000;
    *(inited + 40) = 131;
    v18 = sub_1C5D137F0([a3 mediaRemoteCommandType], inited);
    swift_setDeallocating();
    if (!v18)
    {
      v19 = [v13 findPreviousEventWithType:@"session-reuse" matchingPayload:0];
      if (!v19)
      {
        goto LABEL_7;
      }
    }

    swift_beginAccess();
    *v12 = 1;
LABEL_7:
    sub_1C5E00D30(0, qword_1ED7DCB30, type metadata accessor for MPCPlaybackEngineEventType, MEMORY[0x1E69E6F90]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C6035C00;
    *(v20 + 32) = @"container-begin";
    *(v20 + 40) = @"container-end";
    type metadata accessor for MPCPlaybackEngineEventType();
    v21 = @"container-begin";
    v22 = @"container-end";
    v23 = sub_1C6016AF0();

    v24 = [a1 findPreviousEventWithTypes:v23 matchingPayload:0];

    if (!v24)
    {
      goto LABEL_25;
    }

    v25 = [v24 type];
    v26 = sub_1C6016940();
    v28 = v27;
    if (v26 == sub_1C6016940() && v28 == v29)
    {
    }

    else
    {
      v31 = sub_1C6017860();

      if ((v31 & 1) == 0)
      {

        goto LABEL_25;
      }
    }

    v62 = v12;
    v32 = [v24 payload];
    type metadata accessor for MPCPlaybackEngineEventPayloadKey();
    sub_1C5C662A4(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
    v33 = sub_1C6016860();

    sub_1C5CFF1CC(v33, &aBlock);

    if (v69)
    {
      sub_1C5C64D74(0, &unk_1EC1A8C90, 0x1E69706A0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_23;
      }

      v34 = [v24 payload];
      v35 = sub_1C6016860();

      sub_1C5CFF1CC(v35, &aBlock);

      if (v69)
      {
        sub_1C5C64D74(0, &qword_1ED7DCE70, 0x1E6970550);
        if (swift_dynamicCast())
        {
          v36 = v66;
          v37 = sub_1C5E02D74(v36);
          swift_beginAccess();
          *(v64 + 16) = v37;
          v38 = [v66 prioritizedStoreStringIdentifiersForPersonID_];
          v39 = sub_1C6016B10();

          swift_beginAccess();
          *(v64 + 32) = v39;

LABEL_24:
          v12 = v62;
LABEL_25:
          v40 = [a1 findPreviousEventWithType:@"session-begin" matchingPayload:0];
          if (!v40)
          {

            swift_unknownObjectRelease();
            return;
          }

          v41 = v40;
          v42 = [a1 cursorUntilEvent_];
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_1C6035C00;
          *(v43 + 32) = @"item-begin";
          *(v43 + 40) = @"item-end";
          v44 = @"item-begin";
          v45 = @"item-end";
          v46 = sub_1C6016AF0();

          v47 = [v42 findPreviousEventWithTypes:v46 matchingPayload:0];

          if (!v47)
          {

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
LABEL_54:

            return;
          }

          v48 = [v47 type];
          v49 = sub_1C6016940();
          v51 = v50;
          if (v49 == sub_1C6016940() && v51 == v52)
          {
          }

          else
          {
            v54 = sub_1C6017860();

            if ((v54 & 1) == 0)
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              swift_beginAccess();
              *(v63 + 16) = 0;
LABEL_52:

              return;
            }
          }

          v55 = [v47 payload];
          type metadata accessor for MPCPlaybackEngineEventPayloadKey();
          sub_1C5C662A4(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
          v56 = sub_1C6016860();

          sub_1C5CFF1CC(v56, &aBlock);

          if (v69)
          {
            sub_1C5C64D74(0, &qword_1ED7DCE70, 0x1E6970550);
            if (swift_dynamicCast())
            {
              v57 = [v66 prioritizedStoreStringIdentifiersForPersonID_];
              v58 = sub_1C6016B10();

              swift_beginAccess();
              *(v64 + 24) = v58;
              v59 = v64;

LABEL_41:
              swift_beginAccess();
              if (*v12 == 1)
              {
                swift_beginAccess();
                *(v59 + 16) = 0;
              }

              v60 = [v47 payload];
              v61 = sub_1C6016860();

              sub_1C5CFF1CC(v61, &aBlock);

              if (!v69)
              {
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

LABEL_51:
                sub_1C5E01024();
                goto LABEL_52;
              }

              sub_1C5CC59D8(0);
              if (swift_dynamicCast())
              {
                sub_1C5CFF1CC(v65, &aBlock);
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                if (v69)
                {
                  if ((swift_dynamicCast() & 1) != 0 && v65 == 1)
                  {
                    swift_beginAccess();
                    *(v59 + 16) = 4;
                    *(v59 + 48) = 0;
                  }

                  goto LABEL_52;
                }

                goto LABEL_51;
              }

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              goto LABEL_54;
            }
          }

          else
          {
            sub_1C5E01024();
          }

          v59 = v64;
          goto LABEL_41;
        }

LABEL_23:
        goto LABEL_24;
      }
    }

    sub_1C5E01024();
    goto LABEL_24;
  }
}

void sub_1C5DFE3CC(void *a1, uint64_t a2, _BYTE *a3)
{
  v4 = [a1 payload];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5C662A4(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
  OUTLINED_FUNCTION_85_0();
  v5 = sub_1C6016860();

  sub_1C5CFF1CC(v5, &v7);

  if (v8)
  {
    sub_1C5C64D74(0, &qword_1ED7DCE70, 0x1E6970550);
    if (swift_dynamicCast())
    {

      OUTLINED_FUNCTION_84_2();
      swift_beginAccess();
      *a3 = 1;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_59();
    sub_1C5E01024();
  }
}

id sub_1C5DFE520(void *a1)
{
  result = [objc_opt_self() mediaPlaybackCoreBundle];
  if (result)
  {
    v3 = result;
    OUTLINED_FUNCTION_32();
    v4 = sub_1C6016900();
    OUTLINED_FUNCTION_109();
    sub_1C6016900();
    OUTLINED_FUNCTION_66();
    v5 = sub_1C6016900();
    v6 = [v3 localizedStringForKey:v4 value:0 table:a1 localization:v5];

    v7 = sub_1C6016940();
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C5DFE614(char a1)
{
  result = 0x4C52556E65706FLL;
  switch(a1)
  {
    case 1:
      result = 0x6973754D6E65706FLL;
      break;
    case 2:
      result = 0x747465536E65706FLL;
      break;
    case 3:
      result = 0x74634165726F7473;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 1701736302;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C5DFE6D8()
{
  v1 = sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_146();
  v7 = v6 - v5;
  type metadata accessor for MPCMusicDialogHandler.MPCDialogActionOptions(0);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_72_4();
  v9 = OUTLINED_FUNCTION_32();
  sub_1C5E00AA4(v9, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v26 = *v0;
      v35 = MEMORY[0x1E69E6158];
      OUTLINED_FUNCTION_45_9(EnumCaseMultiPayload, &qword_1EC1A9230, &qword_1EC1A9470);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C6035C00;
      *(inited + 32) = sub_1C6016940();
      *(inited + 40) = v36;
      *(inited + 48) = 0x74634165726F7473;
      *(inited + 56) = 0xEB000000006E6F69;
      OUTLINED_FUNCTION_15_25();
      *(inited + 72) = v35;
      *(inited + 80) = v37 + 9;
      *(inited + 88) = v38;
      OUTLINED_FUNCTION_3_47();
      sub_1C5E012F0(0, v39, v35, v40);
      *(inited + 120) = v41;
      goto LABEL_8;
    case 2:
      v26 = *v0;
      v27 = MEMORY[0x1E69E6158];
      OUTLINED_FUNCTION_45_9(EnumCaseMultiPayload, &qword_1EC1A9230, &qword_1EC1A9470);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C6035C00;
      *(inited + 32) = sub_1C6016940();
      *(inited + 40) = v29;
      OUTLINED_FUNCTION_15_25();
      *(inited + 48) = v31;
      *(inited + 56) = v30;
      *(inited + 72) = v27;
      strcpy((inited + 80), "persistentID");
      *(inited + 120) = MEMORY[0x1E69E76D8];
      *(inited + 93) = 0;
      *(inited + 94) = -5120;
LABEL_8:
      *(inited + 96) = v26;
      goto LABEL_9;
    case 3:
      OUTLINED_FUNCTION_45_9(EnumCaseMultiPayload, &qword_1EC1A9230, &qword_1EC1A9470);
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_1C60311E0;
      v32 = sub_1C6016940();
      OUTLINED_FUNCTION_67_6(v32, v33);
      v24 = v34 | 0x6973754D00000000;
      v25 = 0xE900000000000063;
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_45_9(EnumCaseMultiPayload, &qword_1EC1A9230, &qword_1EC1A9470);
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_1C60311E0;
      v21 = sub_1C6016940();
      OUTLINED_FUNCTION_67_6(v21, v22);
      v24 = v23 | 0x7474655300000000;
      v25 = 0xEC00000073676E69;
LABEL_6:
      *(v20 + 48) = v24;
      *(v20 + 56) = v25;
      goto LABEL_9;
    case 5:
LABEL_9:
      v17 = sub_1C6016880();
      break;
    default:
      (*(v3 + 32))(v7, v0, v1);
      v12 = MEMORY[0x1E69E6158];
      sub_1C5E00B08(0, &qword_1EC1A9230);
      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_1C6035C00;
      *(v13 + 32) = sub_1C6016940();
      *(v13 + 40) = v14;
      *(v13 + 48) = 0x4C52556E65706FLL;
      *(v13 + 56) = 0xE700000000000000;
      *(v13 + 72) = v12;
      *(v13 + 80) = 7107189;
      *(v13 + 88) = 0xE300000000000000;
      v15 = sub_1C6014E70();
      *(v13 + 120) = v12;
      *(v13 + 96) = v15;
      *(v13 + 104) = v16;
      OUTLINED_FUNCTION_32();
      v17 = sub_1C6016880();
      v18 = OUTLINED_FUNCTION_85_0();
      v19(v18);
      break;
  }

  return v17;
}

uint64_t sub_1C5DFEB30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C52556E65706FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1C6017860() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6973754D6E65706FLL && a2 == 0xE900000000000063;
    if (v6 || (sub_1C6017860() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x747465536E65706FLL && a2 == 0xEC00000073676E69;
      if (v7 || (sub_1C6017860() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74634165726F7473 && a2 == 0xEB000000006E6F69;
        if (v8 || (sub_1C6017860() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x80000001C6055930 == a2;
          if (v9 || (sub_1C6017860() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 1701736302 && a2 == 0xE400000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C6017860();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C5DFED44(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6574736973726570 && a2 == 0xEC0000004449746ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C6017860();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C5DFEDEC(uint64_t a1, uint64_t a2)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C6017860();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C5DFEE74(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616E6F6974636964 && a2 == 0xEA00000000007972)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C6017860();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C5DFEF10(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_23_17();
  v4 = MEMORY[0x1E69E6F58];
  sub_1C5E01990(0, v5, v6, v7, MEMORY[0x1E69E6F58]);
  OUTLINED_FUNCTION_25();
  v112 = v9;
  v113 = v8;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_24_22();
  v109 = v11;
  v12 = OUTLINED_FUNCTION_21_24();
  sub_1C5E01990(v12, v13, v14, v15, v4);
  v111 = v16;
  OUTLINED_FUNCTION_25();
  v108 = v17;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_24_22();
  v106 = v19;
  v20 = OUTLINED_FUNCTION_21_24();
  sub_1C5E01990(v20, v21, v22, v23, v4);
  v110 = v24;
  OUTLINED_FUNCTION_25();
  v107 = v25;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_24_22();
  v105 = v27;
  v28 = OUTLINED_FUNCTION_21_24();
  sub_1C5E01990(v28, v29, v30, v31, v4);
  OUTLINED_FUNCTION_25();
  v103 = v33;
  v104 = v32;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_24_22();
  v102 = v35;
  v36 = OUTLINED_FUNCTION_21_24();
  sub_1C5E01990(v36, v37, v38, v39, v4);
  v99 = v40;
  OUTLINED_FUNCTION_25();
  v97 = v41;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_24_22();
  v95 = v43;
  v44 = OUTLINED_FUNCTION_21_24();
  sub_1C5E01990(v44, v45, v46, v47, v4);
  OUTLINED_FUNCTION_25();
  v100 = v49;
  v101 = v48;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v94 - v51;
  v98 = sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  v96 = v53;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_146();
  v57 = v56 - v55;
  type metadata accessor for MPCMusicDialogHandler.MPCDialogActionOptions(0);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_146();
  v61 = (v60 - v59);
  v62 = OUTLINED_FUNCTION_21_24();
  sub_1C5E01990(v62, v63, v64, &type metadata for MPCMusicDialogHandler.MPCDialogActionOptions.CodingKeys, v4);
  OUTLINED_FUNCTION_25();
  v114 = v65;
  v115 = v66;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v67);
  v68 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v68);
  sub_1C5E017A8();
  sub_1C6017A90();
  sub_1C5E00AA4(v116, v61);
  OUTLINED_FUNCTION_55_2();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v84 = *v61;
      v121 = 3;
      sub_1C5E01658();
      v85 = v105;
      OUTLINED_FUNCTION_92_2(&type metadata for MPCMusicDialogHandler.MPCDialogActionOptions.StoreActionCodingKeys, &v121);
      v117 = v84;
      OUTLINED_FUNCTION_3_47();
      sub_1C5E012F0(0, v86, v87, v88);
      sub_1C5E019F8(&qword_1EC1ABCA0, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
      v89 = v110;
      sub_1C60177A0();
      (*(v107 + 8))(v85, v89);
      v90 = OUTLINED_FUNCTION_35_16();
      v91(v90, v68);

    case 2u:
      v122 = 4;
      sub_1C5E01604();
      v80 = v106;
      OUTLINED_FUNCTION_92_2(&type metadata for MPCMusicDialogHandler.MPCDialogActionOptions.DeleteItemFromLibraryCodingKeys, &v122);
      v81 = v111;
      sub_1C60177B0();
      (*(v108 + 8))(v80, v81);
      v74 = OUTLINED_FUNCTION_35_16();
      v76 = v68;
      goto LABEL_5;
    case 3u:
      v119 = 1;
      sub_1C5E01700();
      v83 = v95;
      OUTLINED_FUNCTION_29_15(&type metadata for MPCMusicDialogHandler.MPCDialogActionOptions.OpenMusicCodingKeys, &v119);
      (*(v97 + 8))(v83, v99);
      goto LABEL_10;
    case 4u:
      v120 = 2;
      sub_1C5E016AC();
      v77 = v102;
      OUTLINED_FUNCTION_29_15(&type metadata for MPCMusicDialogHandler.MPCDialogActionOptions.OpenSettingsCodingKeys, &v120);
      v79 = v103;
      v78 = v104;
      goto LABEL_9;
    case 5u:
      v123 = 5;
      sub_1C5E015B0();
      v77 = v109;
      OUTLINED_FUNCTION_29_15(&type metadata for MPCMusicDialogHandler.MPCDialogActionOptions.NoneCodingKeys, &v123);
      v79 = v112;
      v78 = v113;
LABEL_9:
      (*(v79 + 8))(v77, v78);
LABEL_10:
      v92 = OUTLINED_FUNCTION_35_16();
      result = v93(v92, &type metadata for MPCMusicDialogHandler.MPCDialogActionOptions.CodingKeys);
      break;
    default:
      v69 = v96;
      v70 = v98;
      (*(v96 + 32))(v57, v61, v98);
      v118 = 0;
      sub_1C5E01754();
      OUTLINED_FUNCTION_29_15(&type metadata for MPCMusicDialogHandler.MPCDialogActionOptions.OpenURLCodingKeys, &v118);
      OUTLINED_FUNCTION_9_32();
      sub_1C5C662A4(v71, v72);
      v73 = v101;
      sub_1C60177A0();
      (*(v100 + 8))(v52, v73);
      (*(v69 + 8))(v57, v70);
      v74 = OUTLINED_FUNCTION_35_16();
      v76 = &type metadata for MPCMusicDialogHandler.MPCDialogActionOptions.CodingKeys;
LABEL_5:
      result = v75(v74, v76);
      break;
  }

  return result;
}

uint64_t sub_1C5DFF720@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v150 = a3;
  OUTLINED_FUNCTION_23_17();
  v5 = MEMORY[0x1E69E6F48];
  sub_1C5E01990(0, v6, v7, v8, MEMORY[0x1E69E6F48]);
  v147 = v9;
  OUTLINED_FUNCTION_25();
  v137 = v10;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_24_22();
  v145 = v12;
  v13 = OUTLINED_FUNCTION_21_24();
  sub_1C5E01990(v13, v14, v15, v16, v5);
  v136 = v17;
  OUTLINED_FUNCTION_25();
  v140 = v18;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_24_22();
  v144 = v20;
  v21 = OUTLINED_FUNCTION_21_24();
  sub_1C5E01990(v21, v22, v23, v24, v5);
  v135 = v25;
  OUTLINED_FUNCTION_25();
  v139 = v26;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_24_22();
  v146 = v28;
  v29 = OUTLINED_FUNCTION_21_24();
  sub_1C5E01990(v29, v30, v31, v32, v5);
  OUTLINED_FUNCTION_25();
  v133 = v34;
  v134 = v33;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_24_22();
  v143 = v36;
  v37 = OUTLINED_FUNCTION_21_24();
  sub_1C5E01990(v37, v38, v39, v40, v5);
  v131 = v41;
  OUTLINED_FUNCTION_25();
  v130 = v42;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_24_22();
  v141 = v44;
  v45 = OUTLINED_FUNCTION_21_24();
  sub_1C5E01990(v45, v46, v47, v48, v5);
  v132 = v49;
  OUTLINED_FUNCTION_25();
  v138 = v50;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_24_22();
  v142 = v52;
  v53 = OUTLINED_FUNCTION_21_24();
  sub_1C5E01990(v53, v54, v55, v56, v5);
  OUTLINED_FUNCTION_25();
  v148 = v58;
  v149 = v57;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_72_4();
  v60 = type metadata accessor for MPCMusicDialogHandler.MPCDialogActionOptions(0);
  OUTLINED_FUNCTION_105();
  v62 = MEMORY[0x1EEE9AC00](v61);
  v64 = (v126 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = MEMORY[0x1EEE9AC00](v62);
  v67 = v126 - v66;
  v68 = MEMORY[0x1EEE9AC00](v65);
  v70 = v126 - v69;
  MEMORY[0x1EEE9AC00](v68);
  v72 = v126 - v71;
  v73 = a1[3];
  v151 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v73);
  sub_1C5E017A8();
  v74 = v152;
  sub_1C6017A80();
  if (v74)
  {
    goto LABEL_9;
  }

  v127 = v64;
  v129 = v70;
  v128 = v67;
  v152 = v72;
  v75 = v60;
  v77 = v149;
  v76 = v150;
  v78 = v3;
  v79 = sub_1C6017780();
  result = sub_1C5E00DF0(v79, 0);
  if (v82 == v83 >> 1)
  {
LABEL_8:
    v93 = sub_1C60175A0();
    swift_allocError();
    v95 = v94;
    sub_1C5E01878(0);
    *v95 = v75;
    sub_1C6017740();
    sub_1C6017580();
    (*(*(v93 - 8) + 104))(v95, *MEMORY[0x1E69E6AF8], v93);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v148 + 8))(v78, v77);
LABEL_9:
    v96 = v151;
    return __swift_destroy_boxed_opaque_existential_0(v96);
  }

  v126[1] = 0;
  if (v82 < (v83 >> 1))
  {
    v84 = *(v81 + v82);
    sub_1C5E017FC(v82 + 1, v83 >> 1, result, v81, v82, v83);
    v86 = v85;
    v88 = v87;
    swift_unknownObjectRelease();
    if (v86 == v88 >> 1)
    {
      v89 = v76;
      v90 = v147;
      switch(v84)
      {
        case 1:
          v155 = 1;
          sub_1C5E01700();
          OUTLINED_FUNCTION_16_25(&type metadata for MPCMusicDialogHandler.MPCDialogActionOptions.OpenMusicCodingKeys, &v155);
          swift_unknownObjectRelease();
          v105 = OUTLINED_FUNCTION_68_5();
          v106(v105, v131);
          v107 = OUTLINED_FUNCTION_10_31();
          v108(v107);
          OUTLINED_FUNCTION_51_10();
          goto LABEL_16;
        case 2:
          v156 = 2;
          sub_1C5E016AC();
          OUTLINED_FUNCTION_16_25(&type metadata for MPCMusicDialogHandler.MPCDialogActionOptions.OpenSettingsCodingKeys, &v156);
          swift_unknownObjectRelease();
          v98 = OUTLINED_FUNCTION_68_5();
          v99(v98);
          v100 = OUTLINED_FUNCTION_10_31();
          v101(v100);
          OUTLINED_FUNCTION_51_10();
          goto LABEL_16;
        case 3:
          v157 = 3;
          sub_1C5E01658();
          OUTLINED_FUNCTION_16_25(&type metadata for MPCMusicDialogHandler.MPCDialogActionOptions.StoreActionCodingKeys, &v157);
          OUTLINED_FUNCTION_3_47();
          sub_1C5E012F0(0, v102, v103, v104);
          sub_1C5E019F8(&qword_1EC1ABC58, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
          sub_1C6017760();
          swift_unknownObjectRelease();
          v116 = OUTLINED_FUNCTION_31_11();
          v117(v116);
          v118 = OUTLINED_FUNCTION_10_31();
          v119(v118);
          v124 = v128;
          *v128 = v153;
          goto LABEL_17;
        case 4:
          v158 = 4;
          sub_1C5E01604();
          OUTLINED_FUNCTION_16_25(&type metadata for MPCMusicDialogHandler.MPCDialogActionOptions.DeleteItemFromLibraryCodingKeys, &v158);
          v97 = v136;
          v147 = sub_1C6017770();
          swift_unknownObjectRelease();
          v112 = OUTLINED_FUNCTION_68_5();
          v113(v112, v97);
          v114 = OUTLINED_FUNCTION_64();
          v115(v114);
          v124 = v127;
          *v127 = v147;
          goto LABEL_17;
        case 5:
          v159 = 5;
          sub_1C5E015B0();
          v109 = v145;
          OUTLINED_FUNCTION_16_25(&type metadata for MPCMusicDialogHandler.MPCDialogActionOptions.NoneCodingKeys, &v159);
          swift_unknownObjectRelease();
          (*(v137 + 8))(v109, v90);
          v110 = OUTLINED_FUNCTION_10_31();
          v111(v110);
          OUTLINED_FUNCTION_51_10();
LABEL_16:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          v154 = 0;
          sub_1C5E01754();
          OUTLINED_FUNCTION_16_25(&type metadata for MPCMusicDialogHandler.MPCDialogActionOptions.OpenURLCodingKeys, &v154);
          sub_1C6014F20();
          OUTLINED_FUNCTION_9_32();
          sub_1C5C662A4(v91, v92);
          sub_1C6017760();
          swift_unknownObjectRelease();
          v120 = OUTLINED_FUNCTION_31_11();
          v121(v120);
          v122 = OUTLINED_FUNCTION_64();
          v123(v122);
          v124 = v129;
LABEL_17:
          swift_storeEnumTagMultiPayload();
          v84 = v152;
          sub_1C5E0192C(v124, v152);
          break;
      }

      v125 = v151;
      sub_1C5E0192C(v84, v89);
      v96 = v125;
      return __swift_destroy_boxed_opaque_existential_0(v96);
    }

    v78 = v3;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5E0026C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C5DFEB30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C5E002B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5DFED30();
  *a1 = result;
  return result;
}

uint64_t sub_1C5E002DC(uint64_t a1)
{
  v2 = sub_1C5E017A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C5E00318(uint64_t a1)
{
  v2 = sub_1C5E017A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C5E00358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C5DFED44(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C5E003A0@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_64_1();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C5E003CC(uint64_t a1)
{
  v2 = sub_1C5E01604();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C5E00408(uint64_t a1)
{
  v2 = sub_1C5E01604();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C5E00448(uint64_t a1)
{
  v2 = sub_1C5E015B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C5E00484(uint64_t a1)
{
  v2 = sub_1C5E015B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C5E004C0(uint64_t a1)
{
  v2 = sub_1C5E01700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C5E004FC(uint64_t a1)
{
  v2 = sub_1C5E01700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C5E00538(uint64_t a1)
{
  v2 = sub_1C5E016AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C5E00574(uint64_t a1)
{
  v2 = sub_1C5E016AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C5E005B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C5DFEDEC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C5E005E0(uint64_t a1)
{
  v2 = sub_1C5E01754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C5E0061C(uint64_t a1)
{
  v2 = sub_1C5E01754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C5E0065C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C5DFEE74(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C5E00688(uint64_t a1)
{
  v2 = sub_1C5E01658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C5E006C4(uint64_t a1)
{
  v2 = sub_1C5E01658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1C5E00730()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [Strong commandCenter];

  v2 = [v1 performDialogActionCommand];
  v3 = MEMORY[0x1E69E7CA0];
  sub_1C5E00B08(0, &qword_1EC1A9220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  sub_1C6016940();
  sub_1C60174C0();
  v5 = sub_1C5DFE6D8();
  OUTLINED_FUNCTION_3_47();
  sub_1C5E012F0(0, v6, v3 + 8, v7);
  *(inited + 96) = v8;
  *(inited + 72) = v5;
  OUTLINED_FUNCTION_80();
  v9 = sub_1C6016880();
  v10 = objc_allocWithZone(MEMORY[0x1E69708E0]);
  result = sub_1C5E009B4(v2, 145, v9);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5E00898()
{
  swift_unknownObjectUnownedDestroy();
  sub_1C5E00BE4(v0 + 24);

  return v0;
}

uint64_t sub_1C5E008C8()
{
  sub_1C5E00898();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_1C5E00920()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C5CBCD24;

  return sub_1C5DF6614();
}

id sub_1C5E009B4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v7 = sub_1C6016840();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithCommand:a1 mediaRemoteType:a2 options:v7];

  return v8;
}

uint64_t type metadata accessor for MPCMusicDialogHandler.MPCDialogActionOptions(uint64_t a1)
{
  result = qword_1EC1ABBA8;
  if (!qword_1EC1ABBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5E00AA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MPCMusicDialogHandler.MPCDialogActionOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C5E00B08(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = OUTLINED_FUNCTION_43();
    sub_1C5E0135C(v3, v4);
    OUTLINED_FUNCTION_34_4();
    v5 = sub_1C60177E0();
    if (!v6)
    {
      atomic_store(v5, v2);
    }
  }
}

uint64_t sub_1C5E00B54(uint64_t a1, uint64_t a2)
{
  sub_1C5C72C04(0, &qword_1EC1A9708, &unk_1EC1A9710, MEMORY[0x1E69C66E8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5E00BE4(uint64_t a1)
{
  sub_1C5C72C04(0, &qword_1EC1A9708, &unk_1EC1A9710, MEMORY[0x1E69C66E8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C5E00D30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C5E00D94(uint64_t a1)
{
  v2 = type metadata accessor for MPCMusicDialogHandler.MPCDialogActionOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5E00DF0(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5E00E38(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (v2)
  {
    sub_1C6016940();
  }

  return OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1C5E00EA4(void *a1)
{
  v1 = [a1 mediaRemoteOptions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C6016860();

  return v3;
}

id sub_1C5E00F10(uint64_t a1, void *a2)
{
  v3 = sub_1C6016AF0();

  v4 = [a2 removeItems_];

  return v4;
}

uint64_t sub_1C5E00F78()
{
  v1 = OUTLINED_FUNCTION_68();
  sub_1C5E00FC8(v1, v2, v3);
  OUTLINED_FUNCTION_105();
  (*(v4 + 8))(v0);
  return v0;
}

void sub_1C5E00FC8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1C5E01024()
{
  v1 = OUTLINED_FUNCTION_68();
  v2(v1);
  OUTLINED_FUNCTION_105();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C5E01078(uint64_t a1, uint64_t a2)
{
  sub_1C5E00D30(0, &unk_1ED7E01F0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C5E0110C()
{
  if (!qword_1EC1AAC40)
  {
    v0 = sub_1C60168A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AAC40);
    }
  }
}

void sub_1C5E0119C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_1C5E011EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C6016840();

  v6 = [a3 openSensitiveURL:a1 withOptions:v5];

  return v6;
}

void sub_1C5E01270(uint64_t a1)
{
  if (!qword_1EC1ABBA0)
  {
    sub_1C5E012F0(255, &qword_1EC1A9490, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
    v1 = sub_1C6017350();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1ABBA0);
    }
  }
}

void sub_1C5E012F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69E6158], a3, MEMORY[0x1E69E6168]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C5E0135C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_100();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1C5E013D4(uint64_t a1)
{
  sub_1C5E0145C();
  if (v1 <= 0x3F)
  {
    sub_1C5E014A4();
    if (v2 <= 0x3F)
    {
      sub_1C5E01510();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1C5E0145C()
{
  if (!qword_1EC1ABBB8)
  {
    v0 = sub_1C6014F20();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1ABBB8);
    }
  }
}

void sub_1C5E014A4()
{
  if (!qword_1EC1ABBC0)
  {
    sub_1C5E012F0(0, &qword_1EC1AB550, MEMORY[0x1E69E6158], MEMORY[0x1E69E5E28]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1ABBC0);
    }
  }
}

uint64_t sub_1C5E01510()
{
  result = qword_1EC1ABBC8;
  if (!qword_1EC1ABBC8)
  {
    result = MEMORY[0x1E69E76D8];
    atomic_store(MEMORY[0x1E69E76D8], &qword_1EC1ABBC8);
  }

  return result;
}

void sub_1C5E01538(uint64_t a1)
{
  if (!qword_1EC1ABBD0)
  {
    sub_1C5C64D74(255, &qword_1ED7DCCD0, 0x1E696AD98);
    v1 = sub_1C6017700();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1ABBD0);
    }
  }
}

unint64_t sub_1C5E015B0()
{
  result = qword_1EC1ABBE0;
  if (!qword_1EC1ABBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABBE0);
  }

  return result;
}

unint64_t sub_1C5E01604()
{
  result = qword_1EC1ABBF0;
  if (!qword_1EC1ABBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABBF0);
  }

  return result;
}

unint64_t sub_1C5E01658()
{
  result = qword_1EC1ABC00;
  if (!qword_1EC1ABC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABC00);
  }

  return result;
}

unint64_t sub_1C5E016AC()
{
  result = qword_1EC1ABC10;
  if (!qword_1EC1ABC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABC10);
  }

  return result;
}

unint64_t sub_1C5E01700()
{
  result = qword_1EC1ABC20;
  if (!qword_1EC1ABC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABC20);
  }

  return result;
}

unint64_t sub_1C5E01754()
{
  result = qword_1EC1ABC30;
  if (!qword_1EC1ABC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABC30);
  }

  return result;
}

unint64_t sub_1C5E017A8()
{
  result = qword_1EC1ABC40;
  if (!qword_1EC1ABC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABC40);
  }

  return result;
}

uint64_t sub_1C5E017FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1C5E01878(uint64_t a1)
{
  if (!qword_1EC1ABC48)
  {
    sub_1C5E018E8();
    sub_1C6017590();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1ABC48);
    }
  }
}

unint64_t sub_1C5E018E8()
{
  result = qword_1EC1ABC50;
  if (!qword_1EC1ABC50)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EC1ABC50);
  }

  return result;
}

uint64_t sub_1C5E0192C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MPCMusicDialogHandler.MPCDialogActionOptions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C5E01990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1C5E019F8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_3_47();
    sub_1C5E012F0(255, v5, v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MPCMusicDialogHandler.MPCDialogActionOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MPCMusicDialogHandler.MPCDialogActionOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C5E01C10(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C5E01CD0()
{
  result = qword_1EC1ABCB0;
  if (!qword_1EC1ABCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABCB0);
  }

  return result;
}

unint64_t sub_1C5E01D28()
{
  result = qword_1EC1ABCB8;
  if (!qword_1EC1ABCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABCB8);
  }

  return result;
}

unint64_t sub_1C5E01D80()
{
  result = qword_1EC1ABCC0;
  if (!qword_1EC1ABCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABCC0);
  }

  return result;
}

unint64_t sub_1C5E01DD8()
{
  result = qword_1EC1ABCC8;
  if (!qword_1EC1ABCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABCC8);
  }

  return result;
}

unint64_t sub_1C5E01E30()
{
  result = qword_1EC1ABCD0;
  if (!qword_1EC1ABCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABCD0);
  }

  return result;
}

unint64_t sub_1C5E01E88()
{
  result = qword_1EC1ABCD8;
  if (!qword_1EC1ABCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABCD8);
  }

  return result;
}

unint64_t sub_1C5E01EE0()
{
  result = qword_1EC1ABCE0;
  if (!qword_1EC1ABCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABCE0);
  }

  return result;
}

unint64_t sub_1C5E01F38()
{
  result = qword_1EC1ABCE8;
  if (!qword_1EC1ABCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABCE8);
  }

  return result;
}

unint64_t sub_1C5E01F90()
{
  result = qword_1EC1ABCF0;
  if (!qword_1EC1ABCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABCF0);
  }

  return result;
}

unint64_t sub_1C5E01FE8()
{
  result = qword_1EC1ABCF8;
  if (!qword_1EC1ABCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABCF8);
  }

  return result;
}

unint64_t sub_1C5E02040()
{
  result = qword_1EC1ABD00;
  if (!qword_1EC1ABD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABD00);
  }

  return result;
}

unint64_t sub_1C5E02098()
{
  result = qword_1EC1ABD08;
  if (!qword_1EC1ABD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABD08);
  }

  return result;
}

unint64_t sub_1C5E020F0()
{
  result = qword_1EC1ABD10;
  if (!qword_1EC1ABD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABD10);
  }

  return result;
}

unint64_t sub_1C5E02148()
{
  result = qword_1EC1ABD18;
  if (!qword_1EC1ABD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABD18);
  }

  return result;
}

unint64_t sub_1C5E021A0()
{
  result = qword_1EC1ABD20;
  if (!qword_1EC1ABD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABD20);
  }

  return result;
}

unint64_t sub_1C5E021F8()
{
  result = qword_1EC1ABD28;
  if (!qword_1EC1ABD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABD28);
  }

  return result;
}

unint64_t sub_1C5E02250()
{
  result = qword_1EC1ABD30;
  if (!qword_1EC1ABD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABD30);
  }

  return result;
}

unint64_t sub_1C5E022A8()
{
  result = qword_1EC1ABD38;
  if (!qword_1EC1ABD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABD38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_25(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6AC30](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_18_24()
{
}

uint64_t OUTLINED_FUNCTION_27_21()
{
}

id OUTLINED_FUNCTION_42_12(uint64_t a1)
{

  return [v2 (v1 + 4088)];
}

id OUTLINED_FUNCTION_46_6()
{

  return sub_1C5DFE520(0xD00000000000002ELL);
}

uint64_t OUTLINED_FUNCTION_60_8()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_63_5()
{
  v2 = *(v0 - 280);
}

uint64_t OUTLINED_FUNCTION_67_6(uint64_t result, uint64_t a2)
{
  v3[4] = result;
  v3[5] = a2;
  v3[9] = v2;
  return result;
}

void OUTLINED_FUNCTION_77_5()
{
  v1 = *(v0 - 104);
  *(v0 - 112) = *(v0 - 112);
  *(v0 - 104) = v1;
}

id OUTLINED_FUNCTION_86_2()
{
  v2 = *(v0 - 128);

  return sub_1C5DFE520(v2);
}

id OUTLINED_FUNCTION_90_2()
{

  return sub_1C5DFE520(0xD00000000000002DLL);
}

uint64_t OUTLINED_FUNCTION_92_2(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 128);

  return MEMORY[0x1EEE6AD70](a1, a2, v4, a1);
}

uint64_t OUTLINED_FUNCTION_93_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1C6017280();
}

id OUTLINED_FUNCTION_94_2(void *a1)
{

  return sub_1C5DFE520(a1);
}

id OUTLINED_FUNCTION_95_1(void *a1)
{

  return sub_1C5DFE520(a1);
}

id sub_1C5E025B0(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v6 = sub_1C6014D30();
  }

  else
  {
    v6 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() statusWithCode:a1 dialog:a2 error:v6];

  return v7;
}

id sub_1C5E02644(void *a1)
{
  v29 = a1;
  OUTLINED_FUNCTION_0_74();
  sub_1C5E02C40(0, v1, v2);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30[-1] - v4;
  v6 = sub_1C6015E20();
  OUTLINED_FUNCTION_5_18();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v30[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30[-1] - v13;
  if ([v29 type] == 3)
  {
    v15 = [v29 error];
    if (v15)
    {
      v16 = v15;
      sub_1C6015EF0();
      if (!v31)
      {

        sub_1C5E02CF0(v30, &qword_1EC1ABD48, sub_1C5E02C94);
        v18 = sub_1C6015E30();
        __swift_storeEnumTagSinglePayload(v5, 1, 1, v18);
        goto LABEL_7;
      }

      __swift_project_boxed_opaque_existential_0(v30, v31);
      sub_1C6015AB0();
      __swift_destroy_boxed_opaque_existential_0(v30);
      v17 = sub_1C6015E30();
      if (__swift_getEnumTagSinglePayload(v5, 1, v17) == 1)
      {

LABEL_7:
        OUTLINED_FUNCTION_0_74();
        sub_1C5E02CF0(v5, v19, v20);
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_5_18();
      v24 = v23;
      if ((*(v25 + 88))(v5, v17) == *MEMORY[0x1E69C4D68])
      {
        (*(v24 + 96))(v5, v17);
        (*(v8 + 32))(v14, v5, v6);
        sub_1C5C64D74(0, &qword_1EC1ABB68, 0x1E69708F8);
        v26 = [v29 statusCode];
        sub_1C5C64D74(0, &qword_1EC1ABB58, 0x1E69708E8);
        (*(v8 + 16))(v12, v14, v6);
        v27 = sub_1C5E02A08(v12);
        v28 = sub_1C5E025B0(v26, v27, v16);
        (*(v8 + 8))(v14, v6);
        return v28;
      }

      (*(v24 + 8))(v5, v17);
    }
  }

LABEL_8:
  v21 = v29;

  return v21;
}

id sub_1C5E02A08(uint64_t a1)
{
  sub_1C6015E00();
  if (v2)
  {
    v3 = sub_1C6016900();
  }

  else
  {
    v3 = 0;
  }

  sub_1C6015E10();
  if (v4)
  {
    v5 = sub_1C6016900();
  }

  else
  {
    v5 = 0;
  }

  v6 = [swift_getObjCClassFromMetadata() dialogWithTitle:v3 message:v5];

  v7 = sub_1C6015E20();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

uint64_t sub_1C5E02AF0()
{
  swift_unknownObjectUnownedDestroy();
  v1 = OBJC_IVAR____TtC17MediaPlaybackCore24MPCPodcastsDialogHandler_errorTransformer;
  sub_1C6015F10();
  OUTLINED_FUNCTION_6_1();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C5E02BB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C5D01CC4;

  return OUTLINED_FUNCTION_54_5();
}

void sub_1C5E02C40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6017350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C5E02C94()
{
  result = qword_1EC1ABD50;
  if (!qword_1EC1ABD50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC1ABD50);
  }

  return result;
}

uint64_t sub_1C5E02CF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C5E02C40(0, a2, a3);
  OUTLINED_FUNCTION_6_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C5E02D40@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  v4 = MEMORY[0x1E69E7CC0];
  *(a4 + 8) = MEMORY[0x1E69E7CC0];
  *(a4 + 16) = v4;
  *(a4 + 24) = v4;
  *(a4 + 32) = 1;
  *(a4 + 40) = v4;
  *(a4 + 48) = v4;
  *(a4 + 56) = v4;
  *(a4 + 64) = v4;
  *(a4 + 72) = v4;
  *(a4 + 80) = v4;
  *(a4 + 88) = v4;
  *(a4 + 96) = a2;
  *(a4 + 104) = a3;
  return result;
}

uint64_t sub_1C5E02D74(void *a1)
{
  v3 = [a1 identityKind];
  sub_1C5C64D74(0, &qword_1EC1A9FD0, 0x1E6970778);
  swift_getObjCClassFromMetadata();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_202();
  sub_1C5C64D74(0, &unk_1EC1A8C90, 0x1E69706A0);
  v6 = sub_1C60172D0();

  if (v6)
  {

    return 0;
  }

  else
  {
    sub_1C5C64D74(0, &unk_1EC1AB408, 0x1E6970758);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = v1;
    v10 = OUTLINED_FUNCTION_202();
    v11 = OUTLINED_FUNCTION_343(v10);

    if (v11)
    {

      return 2;
    }

    else
    {
      sub_1C5C64D74(0, &qword_1EC1A8BF0, 0x1E6970638);
      v12 = swift_getObjCClassFromMetadata();
      v13 = v1;
      v14 = OUTLINED_FUNCTION_202();
      v15 = OUTLINED_FUNCTION_343(v14);

      if (v15)
      {

        return 1;
      }

      else
      {
        sub_1C5C64D74(0, &qword_1EC1A8B78, 0x1E6970730);
        v16 = swift_getObjCClassFromMetadata();
        v17 = v1;
        v18 = OUTLINED_FUNCTION_202();
        v19 = OUTLINED_FUNCTION_343(v18);

        if (v19)
        {

          return 3;
        }

        else
        {
          sub_1C5C64D74(0, &qword_1EC1ABD68, 0x1E69706F0);
          v20 = swift_getObjCClassFromMetadata();
          v21 = v1;
          v22 = OUTLINED_FUNCTION_202();
          v23 = OUTLINED_FUNCTION_343(v22);

          if (v23 & 1) != 0 || (sub_1C5C64D74(0, &qword_1EC1ABD70, 0x1E69707D0), v24 = swift_getObjCClassFromMetadata(), v25 = v1, v26 = OUTLINED_FUNCTION_202(), v27 = OUTLINED_FUNCTION_343(v26), v1, v24, (v27) || (sub_1C5C64D74(0, &qword_1EC1ABD78, 0x1E69707C0), v28 = swift_getObjCClassFromMetadata(), v29 = v1, v30 = OUTLINED_FUNCTION_202(), v31 = OUTLINED_FUNCTION_343(v30), v1, v28, (v31))
          {

            return 4;
          }

          else
          {
            sub_1C5C64D74(0, &qword_1EC1ABD80, 0x1E69707B0);
            v32 = [swift_getObjCClassFromMetadata() identityKind];
            v33 = OUTLINED_FUNCTION_343(v32);

            if (v33)
            {
              return 4;
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C5E0305C()
{
  v0 = sub_1C60151D0();
  v88 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v92 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5E03914(0);
  sub_1C5E0396C(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v93 = *(v5 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v91 = v7;
  *(v7 + 16) = xmmword_1C6031150;
  v8 = v7 + v6;
  v89 = *(v4 + 56);
  v9 = *MEMORY[0x1E69C6740];
  v10 = sub_1C60151C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 104);
  v98 = v11 + 104;
  v96 = v10;
  v12(v8, v9, v10);
  v13 = *MEMORY[0x1E69C6750];
  v94 = v1;
  v99 = *(v1 + 104);
  v97 = v13;
  v99(v8, v13, v0);
  sub_1C5E039F8(0, &qword_1ED7DCB60, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  v95 = xmmword_1C60311E0;
  *(v14 + 16) = xmmword_1C60311E0;
  v15 = v90;
  *(v14 + 32) = sub_1C5E0380C(*v90);
  *(v14 + 40) = v16;
  *(v8 + v89) = v14;
  v17 = v93;
  v18 = v93 + v8;
  v12(v93 + v8, *MEMORY[0x1E69C66F0], v10);
  v19 = v13;
  v20 = v88;
  v99(v17 + v8, v19, v88);
  v21 = swift_allocObject();
  *(v21 + 16) = v95;
  v22 = 0x6F65646956;
  if (v15[32])
  {
    v22 = 0x6F69647541;
  }

  *&v18[*(v4 + 56)] = v21;
  *(v21 + 32) = v22;
  *(v21 + 40) = 0xE500000000000000;
  v23 = v8 + 2 * v17;
  v24 = *(v4 + 56);
  v25 = *MEMORY[0x1E69C6730];
  v93 = v12;
  v12(v23, v25, v96);
  v99(v23, v97, v20);
  v26 = swift_allocObject();
  *(v26 + 16) = v95;
  v27 = *(v15 + 13);
  *(v26 + 32) = *(v15 + 12);
  *(v26 + 40) = v27;
  *(v23 + v24) = v26;
  sub_1C5E039F8(0, &qword_1ED7DCF10, MEMORY[0x1E69E62F8]);
  sub_1C5E03A4C();

  v28 = v20;
  v29 = sub_1C6016880();
  v30 = v15;
  v101 = *(v15 + 1);
  v102 = v101;
  sub_1C5E03AA4(&v102, v100);

  sub_1C5D0CCE4(v31);
  if (*(v101 + 16))
  {
    v32 = v92;
    v33 = v93;
    v34 = OUTLINED_FUNCTION_2_48();
    v33(v34);
    v35 = OUTLINED_FUNCTION_0_75();
    v36(v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_48(isUniquelyReferenced_nonNull_native);
    v38 = v94;
    v39 = OUTLINED_FUNCTION_1_60();
    v40(v39);
    v29 = v101;
  }

  else
  {

    v33 = v93;
    v38 = v94;
    v32 = v92;
  }

  if (*(*(v30 + 3) + 16))
  {
    v41 = OUTLINED_FUNCTION_2_48();
    v33(v41);
    v42 = OUTLINED_FUNCTION_0_75();
    v43(v42);

    v44 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_48(v44);
    v45 = OUTLINED_FUNCTION_1_60();
    v46(v45);
    v29 = v101;
  }

  if (*(*(v30 + 5) + 16))
  {
    v47 = OUTLINED_FUNCTION_2_48();
    v33(v47);
    v48 = OUTLINED_FUNCTION_0_75();
    v49(v48);

    v50 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_48(v50);
    v51 = OUTLINED_FUNCTION_1_60();
    v52(v51);
    v29 = v101;
  }

  if (*(*(v30 + 6) + 16))
  {
    v53 = OUTLINED_FUNCTION_2_48();
    v33(v53);
    v54 = OUTLINED_FUNCTION_0_75();
    v55(v54);

    v56 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_48(v56);
    v57 = OUTLINED_FUNCTION_1_60();
    v58(v57);
    v29 = v101;
  }

  if (*(*(v30 + 7) + 16))
  {
    v59 = OUTLINED_FUNCTION_2_48();
    v33(v59);
    v60 = OUTLINED_FUNCTION_0_75();
    v61(v60);

    v62 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_48(v62);
    v63 = OUTLINED_FUNCTION_1_60();
    v64(v63);
    v29 = v101;
  }

  if (*(*(v30 + 8) + 16))
  {
    v65 = OUTLINED_FUNCTION_2_48();
    v33(v65);
    v66 = OUTLINED_FUNCTION_0_75();
    v67(v66);

    v68 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_48(v68);
    v69 = OUTLINED_FUNCTION_1_60();
    v70(v69);
    v29 = v101;
  }

  if (*(*(v30 + 9) + 16))
  {
    v71 = OUTLINED_FUNCTION_2_48();
    v33(v71);
    v72 = OUTLINED_FUNCTION_0_75();
    v73(v72);

    v74 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_48(v74);
    v75 = OUTLINED_FUNCTION_1_60();
    v76(v75);
    v29 = v101;
  }

  if (*(*(v30 + 10) + 16))
  {
    v77 = OUTLINED_FUNCTION_2_48();
    v33(v77);
    v78 = OUTLINED_FUNCTION_0_75();
    v79(v78);

    v80 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_48(v80);
    v81 = OUTLINED_FUNCTION_1_60();
    v82(v81);
    v29 = v101;
  }

  if (*(*(v30 + 11) + 16))
  {
    v83 = OUTLINED_FUNCTION_2_48();
    v33(v83);
    v84 = OUTLINED_FUNCTION_0_75();
    v85(v84);

    swift_isUniquelyReferenced_nonNull_native();
    v101 = v29;
    sub_1C5E36D50();
    (*(v38 + 8))(v32, v28);
    return v101;
  }

  return v29;
}

unint64_t sub_1C5E037C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C6017720();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C5E0380C(char a1)
{
  result = 1735290707;
  switch(a1)
  {
    case 1:
      result = 0x6D75626C41;
      break;
    case 2:
      result = 0x6E6F6974617453;
      break;
    case 3:
      result = 0x7473696C79616C50;
      break;
    case 4:
      result = 0x6F65646956;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C5E03898(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C6017720();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5E038EC(char a1)
{
  if (a1)
  {
    return 0x6F69647541;
  }

  else
  {
    return 0x6F65646956;
  }
}

void sub_1C5E03914(uint64_t a1)
{
  if (!qword_1EC1ABD58)
  {
    sub_1C5E0396C(255);
    v1 = sub_1C60177E0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1ABD58);
    }
  }
}

void sub_1C5E0396C(uint64_t a1)
{
  if (!qword_1EC1ABD60)
  {
    sub_1C60151D0();
    sub_1C5E039F8(255, &qword_1ED7DCF10, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1ABD60);
    }
  }
}

void sub_1C5E039F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C5E03A4C()
{
  result = qword_1EC1AAA50;
  if (!qword_1EC1AAA50)
  {
    sub_1C60151D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AAA50);
  }

  return result;
}

uint64_t sub_1C5E03AA4(uint64_t a1, uint64_t a2)
{
  sub_1C5E039F8(0, &qword_1ED7DCF10, MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C5E03B48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C5E037C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C5E03B78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5E0380C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C5E03BC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C5E03898(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C5E03BF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5E038EC(*v1);
  *a1 = result;
  a1[1] = 0xE500000000000000;
  return result;
}

uint64_t sub_1C5E03C30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5E03C70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QOSMusicItems.QOSMediaType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for QOSMusicItems.QOSItemType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C5E03E98()
{
  result = qword_1EC1ABD88;
  if (!qword_1EC1ABD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABD88);
  }

  return result;
}

unint64_t sub_1C5E03EF0()
{
  result = qword_1EC1ABD90;
  if (!qword_1EC1ABD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABD90);
  }

  return result;
}

BOOL sub_1C5E03F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1C60179F0();
  sub_1C60169F0();
  v6 = sub_1C6017A20();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_1C6017860();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_1C5E04058()
{
  v0 = sub_1C60162D0();
  __swift_allocate_value_buffer(v0, qword_1EC1A8FC0);
  v1 = __swift_project_value_buffer(v0, qword_1EC1A8FC0);
  if (qword_1EC1A97A8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC1BE500);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1C5E04120()
{
  sub_1C6017540();

  MEMORY[0x1C69534E0](*v0, v0[1]);
  MEMORY[0x1C69534E0](0x44496D657469202CLL, 0xEA0000000000203ALL);
  if (v0[3])
  {
    v1 = v0[2];
    v2 = v0[3];
  }

  else
  {
    v1 = 7104878;
    v2 = 0xE300000000000000;
  }

  MEMORY[0x1C69534E0](v1, v2);

  MEMORY[0x1C69534E0](0x6D6574497661202CLL, 0xEC000000203A4449);
  if (v0[5])
  {
    v3 = v0[4];
    v4 = v0[5];
  }

  else
  {
    v3 = 7104878;
    v4 = 0xE300000000000000;
  }

  MEMORY[0x1C69534E0](v3, v4);

  return 0x496E6F6974636573;
}

uint64_t sub_1C5E04258(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C5E04278, 0, 0);
}

uint64_t sub_1C5E04278()
{
  if (qword_1EC1A8FB8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_1C60162D0();
  __swift_project_value_buffer(v2, qword_1EC1A8FC0);
  v3 = v1;
  v4 = sub_1C60162B0();
  v5 = sub_1C6016F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1C5C61000, v4, v5, "🕵🏻‍♂️ Opening investigation for: %{public}@", v7, 0xCu);
    sub_1C5CB5700(v8);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();
  }

  v10 = v0[12];
  v11 = v0[13];

  Strong = swift_unknownObjectUnownedLoadStrong();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  v0[6] = sub_1C5E1017C;
  v0[7] = v13;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C5E0550C;
  v0[5] = &block_descriptor_29;
  v14 = _Block_copy(v0 + 2);
  v15 = v10;
  v16 = v11;

  v17 = [Strong performQueryReturningObject_];
  _Block_release(v14);

  sub_1C6017390();
  swift_unknownObjectRelease();
  sub_1C5C64D74(0, &qword_1EC1ABB68, 0x1E69708F8);
  swift_dynamicCast();
  v18 = v0[2];
  v19 = v15;
  v20 = v18;
  v21 = sub_1C60162B0();
  v22 = sub_1C6016F30();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v0[12];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138543618;
    *(v24 + 4) = v23;
    *(v24 + 12) = 2114;
    *(v24 + 14) = v20;
    *v25 = v23;
    v25[1] = v20;
    v26 = v23;
    v27 = v20;
    _os_log_impl(&dword_1C5C61000, v21, v22, "🧑‍⚖️ Verdict for: %{public}@ => %{public}@", v24, 0x16u);
    sub_1C5CC55A0(0);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();
  }

  v28 = v0[1];

  return v28(v20);
}

void sub_1C5E045DC(NSObject *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  sub_1C5E04814(a2, a1);
  v5 = sub_1C5C64D74(0, &qword_1EC1ABB68, 0x1E69708F8);
  sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
  sub_1C6016940();
  sub_1C6017540();

  v6 = [a2 description];
  v7 = sub_1C6016940();
  v9 = v8;

  MEMORY[0x1C69534E0](v7, v9);

  sub_1C6016880();
  _s3__C4CodeOMa_1();
  sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1, &unk_1C6032C88);
  v10 = sub_1C6017280();

  v11 = sub_1C5E1182C(555, v10);
  a3[3] = v5;
  *a3 = v11;
}

void sub_1C5E04814(void *a1, NSObject *a2)
{
  v3 = v2;
  if (qword_1EC1A8FB8 != -1)
  {
    swift_once();
  }

  v6 = sub_1C60162D0();
  __swift_project_value_buffer(v6, qword_1EC1A8FC0);
  v7 = a1;
  v8 = sub_1C60162B0();
  v9 = sub_1C6016F30();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v69 = v11;
    *v10 = 136446210;
    v12 = sub_1C5E20954(v7);
    v14 = v13;

    if (!v14)
    {
LABEL_49:
      __break(1u);
      return;
    }

    v15 = sub_1C5C6AB10(v12, v14, &v69);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1C5C61000, v8, v9, "— 􀊫 Searching for commandBegin %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1C6956920](v11, -1, -1);
    MEMORY[0x1C6956920](v10, -1, -1);

    v3 = v2;
  }

  else
  {
  }

  v16 = sub_1C5E20954(v7);
  if (!v17)
  {
    __break(1u);
    goto LABEL_49;
  }

  v18 = v16;
  v19 = v17;
  ObjectType = swift_getObjectType();
  v21 = sub_1C5CD6588(v18, v19, ObjectType);

  v22 = MEMORY[0x1E69E7CA0];
  if (!v21)
  {
LABEL_26:
    v47 = v7;
    v48 = sub_1C60162B0();
    v49 = sub_1C6016F20();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      *(v50 + 4) = v47;
      *v51 = v47;
      v52 = v47;
      _os_log_impl(&dword_1C5C61000, v48, v49, "—— 􀁠 Failed to find commandBegin for %@", v50, 0xCu);
      sub_1C5CB5700(v51);
      MEMORY[0x1C6956920](v51, -1, -1);
      MEMORY[0x1C6956920](v50, -1, -1);
    }

    sub_1C5E0586C(v47, a2);
    if (!v3)
    {
      sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
      sub_1C6016940();
      v84 = 5001;
      *&v69 = 0;
      *(&v69 + 1) = 0xE000000000000000;
      sub_1C6017540();

      *&v69 = 0xD000000000000026;
      *(&v69 + 1) = 0x80000001C60562C0;
      v53 = [v47 description];
      v54 = sub_1C6016940();
      v56 = v55;

      MEMORY[0x1C69534E0](v54, v56);

      sub_1C6016880();
      _s3__C4CodeOMa_1();
      sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1, &unk_1C6032C88);
      sub_1C6017280();

      swift_willThrow();
    }

    return;
  }

  v23 = [v21 payload];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey, &unk_1C6032C48);
  v24 = sub_1C6016860();

  sub_1C5CFF1CC(v24, &v69);

  if (!v70)
  {

    sub_1C5E101E4(&v69, &qword_1ED7E0200, v22 + 8);
    goto LABEL_26;
  }

  sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_26;
  }

  v68 = v84;
  v25 = v21;
  v26 = sub_1C60162B0();
  v27 = sub_1C6016F30();
  v67 = v25;

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = v3;
    v30 = swift_slowAlloc();
    *v28 = 138543362;
    *(v28 + 4) = v67;
    *v30 = v21;
    v31 = v67;
    _os_log_impl(&dword_1C5C61000, v26, v27, "—— 􀁢 Found event: %{public}@", v28, 0xCu);
    sub_1C5CB5700(v30);
    v32 = v30;
    v3 = v29;
    MEMORY[0x1C6956920](v32, -1, -1);
    MEMORY[0x1C6956920](v28, -1, -1);
  }

  v33 = [v68 integerValue];
  v34 = sub_1C60162B0();
  v35 = sub_1C6016F30();
  v36 = os_log_type_enabled(v34, v35);
  if (!v33)
  {
    if (v36)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1C5C61000, v34, v35, "— 􀊄 Play Command", v57, 2u);
      MEMORY[0x1C6956920](v57, -1, -1);
    }

    sub_1C5C676C0(0, &qword_1EC1ABDB8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C6031150;
    *(inited + 32) = xmmword_1C60445C0;
    *(inited + 48) = 121;
    v59 = sub_1C5CD63C4(inited);
    swift_setDeallocating();
    if (v59)
    {
      a2 = [a2 cursorUntilEvent:v59];
    }

    else
    {
      swift_unknownObjectRetain();
    }

    sub_1C5E05E64(a2, v74);
    if (v3)
    {
      swift_unknownObjectRelease();

      return;
    }

    sub_1C5E065CC(v74, v67, a2);
    swift_unknownObjectRelease();

    v83 = v74[0];
    sub_1C5CC583C(&v83);
    v82 = v74[1];
    v65 = MEMORY[0x1E69E6158];
    sub_1C5E101E4(&v82, &qword_1EC1A9480, MEMORY[0x1E69E6158]);
    v81 = v74[2];
    v66 = &v81;
    goto LABEL_47;
  }

  if (v33 == 122)
  {
    if (v36)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1C5C61000, v34, v35, "— 􀢽 SetQueue Command", v37, 2u);
      MEMORY[0x1C6956920](v37, -1, -1);
    }

    v38 = [a2 cursorUntilEvent:v67];
    sub_1C5E05E64(v38, &v71);
    if (v3)
    {

      swift_unknownObjectRelease();
      return;
    }

    v39 = [v67 payload];
    v40 = MEMORY[0x1E69E7CA0];
    v41 = sub_1C6016860();

    sub_1C5CFF1CC(v41, &v69);

    if (v70)
    {
      if (swift_dynamicCast())
      {
        v42 = v84;
        v43 = [v84 BOOLValue];

        if (v43)
        {
          v44 = sub_1C60162B0();
          v45 = sub_1C6016F30();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&dword_1C5C61000, v44, v45, "— 􀊄 SetQueue > Play", v46, 2u);
            MEMORY[0x1C6956920](v46, -1, -1);
          }

          sub_1C5E065CC(&v71, v67, v38);
          swift_unknownObjectRelease();

          v77 = v71;
          sub_1C5CC583C(&v77);
          v76 = v72;
          v65 = MEMORY[0x1E69E6158];
          sub_1C5E101E4(&v76, &qword_1EC1A9480, MEMORY[0x1E69E6158]);
          v75 = v73;
          v66 = &v75;
LABEL_47:
          sub_1C5E101E4(v66, &qword_1EC1A9480, v65);
          return;
        }
      }
    }

    else
    {
      sub_1C5E101E4(&v69, &qword_1ED7E0200, v40 + 8);
    }

    v61 = sub_1C60162B0();
    v62 = sub_1C6016F30();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1C5C61000, v61, v62, "— 􀪆 SetQueue > Wait", v63, 2u);
      MEMORY[0x1C6956920](v63, -1, -1);
    }

    sub_1C5E06A28(&v71, a2);
    v64 = sub_1C5E079C0(&v71, a2);

    swift_unknownObjectRelease();
    v80 = v71;
    sub_1C5CC583C(&v80);
    v79 = v72;
    v65 = MEMORY[0x1E69E6158];
    sub_1C5E101E4(&v79, &qword_1EC1A9480, MEMORY[0x1E69E6158]);
    v78 = v73;
    v66 = &v78;
    goto LABEL_47;
  }

  if (v36)
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_1C5C61000, v34, v35, "— 􀄢 Detected Unspecialized Command", v60, 2u);
    MEMORY[0x1C6956920](v60, -1, -1);
  }
}

id sub_1C5E0550C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v5, v2);

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  v3 = sub_1C6017850();
  __swift_destroy_boxed_opaque_existential_0(v5);

  return v3;
}