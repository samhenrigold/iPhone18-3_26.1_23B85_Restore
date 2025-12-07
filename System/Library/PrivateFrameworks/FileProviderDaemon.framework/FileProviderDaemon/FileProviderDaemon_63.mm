uint64_t sub_1CF6D9D30(uint64_t a1)
{
  if (*(v1 + 8) == 255)
  {
    v4 = 0xE200000000000000;
    v2 = 16191;
    v5 = *(v1 + 248);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = VFSItemID.description.getter(a1);
    v4 = v3;
    v5 = *(v1 + 248);
    if (v5)
    {
LABEL_3:
      v6 = NSFileProviderItemIdentifier.description.getter(v5);
      v8 = v7;
      goto LABEL_6;
    }
  }

  v8 = 0xE200000000000000;
  v6 = 16191;
LABEL_6:
  v9 = *(v1 + 456);
  v10 = 6516580;
  v11 = 0xE700000000000000;
  v12 = 0x6B6E696C6D7973;
  v13 = 0xE500000000000000;
  v14 = 0x7361696C61;
  if (v9 != 3)
  {
    v14 = 0;
    v13 = 0xE000000000000000;
  }

  if (v9 != 2)
  {
    v12 = v14;
    v11 = v13;
  }

  if (*(v1 + 456))
  {
    v10 = 7498084;
  }

  if (*(v1 + 456) <= 1u)
  {
    v15 = v10;
  }

  else
  {
    v15 = v12;
  }

  if (*(v1 + 456) <= 1u)
  {
    v16 = 0xE300000000000000;
  }

  else
  {
    v16 = v11;
  }

  sub_1CF9E7948();
  0xE000000000000000, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1D3868CC0](v2, v4);
  v4, v24, v25, v26, v27, v28, v29, v30;
  MEMORY[0x1D3868CC0](0x663C203E2D3C203ELL, 0xEA00000000003A70);
  MEMORY[0x1D3868CC0](v6, v8);
  v8, v31, v32, v33, v34, v35, v36, v37;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  MEMORY[0x1D3868CC0](v15, v16);
  v16, v38, v39, v40, v41, v42, v43, v44;
  return 980641340;
}

void sub_1CF6D9EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a5;
  v8 = a4;
  v10 = a1;
  v11 = 0;
  v31 = a3;
  while (1)
  {
    v12 = (*(**(v10 + 24) + 512))(89, 256, v11, 0, a3, v8, v7);
    v27 = v13;
    if (v6)
    {
      return;
    }

    v20 = v12;
    v26 = v14;
    if (v12 >> 62)
    {
      break;
    }

    v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_5;
    }

LABEL_15:
    v20, v13, v14, v15, v16, v17, v18, v19;
    if ((v26 & 1) == 0)
    {
      v8 = a4;
      v7 = a5;
      v10 = a1;
      a3 = v31;
      v11 = v27;
      if ((v27 & 0x8000000000000000) == 0)
      {
        continue;
      }
    }

    return;
  }

  v21 = sub_1CF9E7818();
  if (!v21)
  {
    goto LABEL_15;
  }

LABEL_5:
  v22 = 0;
  while ((v20 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x1D3869C30](v22, v20);
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_19;
    }

LABEL_9:
    v25 = objc_autoreleasePoolPush();
    sub_1CF6DA0BC(v23, a2, v31, a1, v29, a4, a5, &v34);
    v6 = 0;
    objc_autoreleasePoolPop(v25);

    ++v22;
    if (v24 == v21)
    {
      goto LABEL_15;
    }
  }

  if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

  v23 = *(v20 + 8 * v22 + 32);

  v24 = v22 + 1;
  if (!__OFADD__(v22, 1))
  {
    goto LABEL_9;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1CF6DA0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v96 = a5;
  if (sub_1CF388E8C() == 3)
  {
    v15 = *(a1 + 152);
    v93 = *(a1 + 144);
    v94 = v15;
    sub_1CF68DDB0(&v93, a3, a6, a7, __src);
    if (v8)
    {
      *a8 = v8;
    }

    else
    {
      v80 = a7;
      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v92, __src, sizeof(v92));
      if (sub_1CF08B99C(v92) == 1)
      {
        v16 = *(a4 + 24);
        v17 = *(a1 + 152);
        *&v90[0] = *(a1 + 144);
        BYTE8(v90[0]) = v17;
        v18 = a7;
        v19 = (*(*v16 + 384))(v90, 89, 0, 1, a3, a6, a7);
        v27 = *v19->tree;
        if (v27)
        {
          v79 = a3;
          v28 = 0;
          v81 = v27 - 1;
          v82 = a1;
          v29 = 32;
          v83 = v19;
          while (1)
          {
            v30 = *(&v19[2].super.isa + v29);
            v31 = *&v19[2].tree[v29];
            v32 = *(&v19[1].super.isa + v29);
            v90[3] = *&v19[1].tree[v29];
            v33 = *&v19->tree[v29];
            v90[0] = *(&v19->super.isa + v29);
            v90[1] = v33;
            *&v90[5] = v31;
            v90[4] = v30;
            v90[2] = v32;
            v34 = *(&v90[3] + 1);
            v35 = *&v90[0];
            v36 = BYTE8(v90[0]);
            v37 = BYTE9(v90[0]);
            v85 = v33;
            sub_1CEFCCBDC(v90, v89, qword_1EC4C2060, &unk_1CFA0EC30);
            sub_1CEFCCBDC(v90, v89, qword_1EC4C2060, &unk_1CFA0EC30);
            sub_1CEFD0994(v35, v36, v37);
            v84 = v34;

            v31, v38, v39, v40, v41, v42, v43, v44;
            if (v85 == 1)
            {
              sub_1CEFCCBDC(v90, v89, qword_1EC4C2060, &unk_1CFA0EC30);
              sub_1CEFD0994(v35, v36, v37);
              v45 = v34;

              v31, v46, v47, v48, v49, v50, v51, v52;
              if (v34)
              {
                break;
              }
            }

            sub_1CEFCCC44(v90, qword_1EC4C2060, &unk_1CFA0EC30);
            a1 = v82;
            if (v81 == v28)
            {
              goto LABEL_14;
            }

            ++v28;
            v19 = v83;
            v29 += 88;
            if (v28 >= *v83->tree)
            {
              __break(1u);
LABEL_14:
              v83, v53, v54, v55, v56, v57, v58, v59;
              v84 = 0;
              a3 = v79;
              v18 = v80;
              goto LABEL_17;
            }
          }

          v83, v60, v61, v62, v63, v64, v65, v66;
          sub_1CEFD0994(v35, v36, v37);
          v67 = v34;

          v31, v68, v69, v70, v71, v72, v73, v74;
          a3 = v79;
          v18 = v80;
          a1 = v82;
        }

        else
        {
          v19, v20, v21, v22, v23, v24, v25, v26;
          v84 = 0;
        }

LABEL_17:
        sub_1CF4858E8(v90);
        memcpy(v89, v90, sizeof(v89));
        memcpy(v88, v90, sizeof(v88));
        v75 = *(a1 + 152);
        v86 = *(a1 + 144);
        v87 = v75;
        if (v84)
        {
          v76 = v84;
        }

        else
        {
          sub_1CF6FC3E4();
          v76 = swift_allocError();
          v84 = 0;
          *v77 = 29;
          *(v77 + 8) = 18;
        }

        v78 = v84;
        sub_1CF6D6C14(v89, v88, &v86, v76, 1, 3, 3, 0, a3, a6, v18);
      }

      else
      {
        sub_1CEFCCC44(__dst, &unk_1EC4BFC20, &unk_1CFA0A290);
      }
    }
  }
}

void sub_1CF6DA510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a5;
  v8 = a4;
  v10 = a1;
  v11 = 0;
  v31 = a3;
  while (1)
  {
    v12 = (*(**(v10 + 24) + 520))(89, 256, v11, 0, a3, v8, v7);
    v27 = v13;
    if (v6)
    {
      return;
    }

    v20 = v12;
    v26 = v14;
    if (v12 >> 62)
    {
      break;
    }

    v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_5;
    }

LABEL_15:
    v20, v13, v14, v15, v16, v17, v18, v19;
    if ((v26 & 1) == 0)
    {
      v8 = a4;
      v7 = a5;
      v10 = a1;
      a3 = v31;
      v11 = v27;
      if ((v27 & 0x8000000000000000) == 0)
      {
        continue;
      }
    }

    return;
  }

  v21 = sub_1CF9E7818();
  if (!v21)
  {
    goto LABEL_15;
  }

LABEL_5:
  v22 = 0;
  while ((v20 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x1D3869C30](v22, v20);
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_19;
    }

LABEL_9:
    v25 = objc_autoreleasePoolPush();
    sub_1CF6DA6EC(v23, a2, v31, a1, v29, a4, a5, &v34);
    v6 = 0;
    objc_autoreleasePoolPop(v25);

    ++v22;
    if (v24 == v21)
    {
      goto LABEL_15;
    }
  }

  if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

  v23 = *(v20 + 8 * v22 + 32);

  v24 = v22 + 1;
  if (!__OFADD__(v22, 1))
  {
    goto LABEL_9;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1CF6DA6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (sub_1CF387EDC() == 3)
  {
    v95 = *(a1 + 144);
    v15 = v95;
    sub_1CF68E230(&v95, a3, a6, a7, __src);
    if (v8)
    {

      *a8 = v8;
    }

    else
    {
      v82 = a7;

      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v93, __src, sizeof(v93));
      if (sub_1CF08B99C(v93) == 1)
      {
        v16 = *(a4 + 24);
        *&v91[0] = v15;
        v17 = *(*v16 + 376);
        v18 = v15;
        v19 = a7;
        v20 = v17(v91, 89, 0, 1, a3, a6, a7);

        v81 = a3;
        v28 = *v20->tree;
        if (v28)
        {
          v80 = a6;
          v29 = 0;
          v83 = v28 - 1;
          v84 = v20;
          v30 = 32;
          while (1)
          {
            v31 = *(&v20[2].super.isa + v30);
            v32 = *&v20[2].tree[v30];
            v33 = *(&v20[1].super.isa + v30);
            v91[3] = *&v20[1].tree[v30];
            v34 = *&v20->tree[v30];
            v91[0] = *(&v20->super.isa + v30);
            v91[1] = v34;
            *&v91[5] = v32;
            v91[4] = v31;
            v91[2] = v33;
            v35 = *(&v91[3] + 1);
            v36 = *&v91[0];
            v37 = BYTE8(v91[0]);
            v38 = BYTE9(v91[0]);
            v86 = v34;
            sub_1CEFCCBDC(v91, v90, &qword_1EC4BE5B8, &qword_1CF9FDE98);
            sub_1CEFCCBDC(v91, v90, &qword_1EC4BE5B8, &qword_1CF9FDE98);
            sub_1CF1E53F8(v36, v37, v38);
            v85 = v35;

            v32, v39, v40, v41, v42, v43, v44, v45;
            if (v86 == 1)
            {
              sub_1CEFCCBDC(v91, v90, &qword_1EC4BE5B8, &qword_1CF9FDE98);
              sub_1CF1E53F8(v36, v37, v38);
              v46 = v35;

              v32, v47, v48, v49, v50, v51, v52, v53;
              if (v35)
              {
                break;
              }
            }

            sub_1CEFCCC44(v91, &qword_1EC4BE5B8, &qword_1CF9FDE98);
            if (v83 == v29)
            {
              v84, v54, v55, v56, v57, v58, v59, v60;
              v85 = 0;
              goto LABEL_16;
            }

            ++v29;
            v20 = v84;
            v30 += 88;
            if (v29 >= *v84->tree)
            {
              __break(1u);
              goto LABEL_12;
            }
          }

          v84, v62, v63, v64, v65, v66, v67, v68;
          sub_1CF1E53F8(v36, v37, v38);
          v69 = v35;

          v32, v70, v71, v72, v73, v74, v75, v76;
LABEL_16:
          a6 = v80;
          v61 = v81;
          v19 = v82;
        }

        else
        {
          v20, v21, v22, v23, v24, v25, v26, v27;
          v85 = 0;
          v61 = a3;
        }

        sub_1CF4858E8(v91);
        memcpy(v90, v91, sizeof(v90));
        memcpy(v89, v91, sizeof(v89));
        v87 = 0;
        v88 = -1;
        if (v85)
        {
          v77 = v85;
        }

        else
        {
          sub_1CF6FC3E4();
          v77 = swift_allocError();
          v85 = 0;
          *v78 = 29;
          *(v78 + 8) = 18;
        }

        v79 = v85;
        sub_1CF6D6C14(v90, v89, &v87, v77, 1, 4, 3, 1, v61, a6, v19);
      }

      else
      {
LABEL_12:
        sub_1CEFCCC44(__dst, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      }
    }
  }
}

void sub_1CF6DAB2C(__int128 *a1, void *a2, uint64_t a3, int a4, unsigned int a5, int a6, uint64_t a7, char a8, char a9, uint64_t a10, _TtC18FileProviderDaemon8FSTester *a11, uint64_t a12)
{
  v16 = &OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetItemPayload;
  v17 = *(a1 + 31);
  if (v17)
  {
    v16 = &OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetItemPayload;
  }

  v18 = *(v12 + *v16);
  if (!v18 || (v19 = a1[13], v88 = a1[12], v89 = v19, v90 = a1[14], v20 = *(a1 + 30), v21 = a1[9], v84 = a1[8], v85 = v21, v22 = a1[11], v86 = a1[10], v87 = v22, v23 = a1[5], v80 = a1[4], v81 = v23, v24 = a1[7], v82 = a1[6], v83 = v24, v25 = a1[1], v76 = *a1, v77 = v25, v26 = a1[3], v78 = a1[2], v79 = v26, v91 = v20, v92 = v17, memcpy(v93, a1 + 16, sizeof(v93)), , v27 = sub_1CF6F9188(&v76, a2, a3, 0, v18), v18, v28, v29, v30, v31, v32, v33, v34, v27))
  {
    v35 = a1[13];
    v88 = a1[12];
    v89 = v35;
    v90 = a1[14];
    v36 = *(a1 + 30);
    v37 = a1[9];
    v84 = a1[8];
    v85 = v37;
    v38 = a1[11];
    v86 = a1[10];
    v87 = v38;
    v39 = a1[5];
    v80 = a1[4];
    v81 = v39;
    v40 = a1[7];
    v82 = a1[6];
    v83 = v40;
    v41 = a1[1];
    v76 = *a1;
    v77 = v41;
    v42 = a1[3];
    v78 = a1[2];
    v79 = v42;
    v91 = v36;
    v92 = v17;
    memcpy(v93, a1 + 16, sizeof(v93));
    sub_1CF6D3E88(&v76, a2, a4, a3, 0, a5, a6, a7, a8 & 1, v17 == 0, a10, a11, a12);
    v51 = v43;
    if (v43)
    {
      if (a9)
      {
        v52 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v54 = v52;
        v55 = v53;
        if (*(v51 + 16) && (sub_1CEFE4328(v52, v53), (v56 & 1) != 0) && (objc_opt_self(), (v57 = swift_dynamicCastObjCClass()) != 0))
        {
          v58 = [v57 integerValue] | 0x80000000;
        }

        else
        {
          v58 = 0x80000000;
        }

        v59 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v76 = v51;
        sub_1CF1D1950(v59, v54, v55, isUniquelyReferenced_nonNull_native);
        v55, v61, v62, v63, v64, v65, v66, v67;
        v51 = v76;
      }

      if (v17)
      {
        v68 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetItemPayload;
      }

      else
      {
        v68 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetItemPayload;
      }

      v69 = *(v75 + v68);
      *(v75 + v68) = v51;

      v69, v44, v45, v46, v47, v48, v49, v50;
    }
  }
}

uint64_t sub_1CF6DAE10@<X0>(char *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(char *)@<X4>, uint64_t a6@<X5>, char *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v206 = a8;
  v207 = a7;
  v186 = a6;
  v185 = a5;
  v203 = a4;
  v184 = a3;
  v210 = a9;
  v205 = a2;
  v10 = *a2;
  v11 = sub_1CF9E6118();
  v208 = *(v11 - 8);
  v209 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v215 = &v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v201 = &v179 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v192 = &v179 - v16;
  v17 = *(v10 + 80);
  v212 = *(v10 + 96);
  v213 = v17;
  v216 = v17;
  v217 = v212;
  v18 = type metadata accessor for ItemReconciliation(255, &v216);
  v189 = sub_1CF9E75D8();
  v188 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v197 = &v179 - v19;
  v211 = v18;
  v204 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v202 = &v179 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v214 = &v179 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v183 = &v179 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v191 = &v179 - v27;
  v194 = v212;
  v195 = v213;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = sub_1CF9E75D8();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  *&v212 = &v179 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  *&v213 = &v179 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v179 - v35;
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v38);
  v196 = &v179 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v193 = &v179 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v190 = &v179 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v187 = &v179 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v198 = &v179 - v47;
  v49 = MEMORY[0x1EEE9AC00](v48);
  v51 = &v179 - v50;
  v200 = *(v30 + 16);
  v200(v36, a1, v29, v49);
  v199 = *(v37 + 48);
  if (v199(v36, 1, AssociatedTypeWitness) != 1)
  {
    v215 = a1;
    v182 = v29;
    v181 = v30;
    v74 = *(v37 + 32);
    v74(v51, v36, AssociatedTypeWitness);
    v75 = v203;
    v76 = v219;
    (*(*v205[4] + 288))(v51, v203, v207, v206);
    if (v76)
    {
      return (*(v37 + 8))(v51, AssociatedTypeWitness);
    }

    v214 = v74;
    v180 = v51;
    v79 = v37;
    v219 = 0;
    v80 = v212;
    v81 = v182;
    (v200)(v212, v213, v182);
    if (v199(v80, 1, AssociatedTypeWitness) == 1)
    {
      v82 = v181 + 8;
      v215 = *(v181 + 8);
      (v215)(v80, v81);
      v83 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v84 = *(v37 + 16);
      v85 = v196;
      v86 = v180;
      v84(v196, v180, AssociatedTypeWitness);
      v87 = sub_1CF9E6108();
      v88 = sub_1CF9E72A8();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v181 = v82;
        v90 = v89;
        v91 = swift_slowAlloc();
        *&v216 = v91;
        *v90 = 136315138;
        LODWORD(v214) = v88;
        v92 = v193;
        v84(v193, v85, AssociatedTypeWitness);
        v93 = *(v79 + 8);
        v93(v85, AssociatedTypeWitness);
        swift_getAssociatedConformanceWitness();
        v94 = sub_1CF9E7F98();
        v96 = v95;
        v93(v92, AssociatedTypeWitness);
        v97 = sub_1CEFD0DF0(v94, v96, &v216);
        v96, v98, v99, v100, v101, v102, v103, v104;
        *(v90 + 4) = v97;
        _os_log_impl(&dword_1CEFC7000, v87, v214, "no parent ID in snapshot for %s", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v91);
        MEMORY[0x1D386CDC0](v91, -1, -1);
        MEMORY[0x1D386CDC0](v90, -1, -1);

        v208[1](v201, v209);
        (v215)(v213, v182);
        v93(v180, AssociatedTypeWitness);
      }

      else
      {
        v110 = *(v79 + 8);
        v110(v85, AssociatedTypeWitness);

        v208[1](v201, v209);
        (v215)(v213, v182);
        v110(v86, AssociatedTypeWitness);
      }

LABEL_15:
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C27E0, &qword_1CFA12A00);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      return (*(*(TupleTypeMetadata3 - 8) + 56))(v210, 1, 1, TupleTypeMetadata3);
    }

    v105 = v198;
    (v214)(v198, v80, AssociatedTypeWitness);
    v106 = v197;
    v107 = v219;
    sub_1CF68DDB0(v105, v75, v207, v206, v197);
    v108 = v181;
    if (v107)
    {
      v109 = *(v79 + 8);
      v109(v105, AssociatedTypeWitness);
      (*(v108 + 8))(v213, v182);
    }

    else
    {
      v112 = v204;
      v113 = v211;
      v114 = (*(v204 + 48))(v106, 1, v211);
      v219 = 0;
      if (v114 == 1)
      {
        (*(v188 + 8))(v106, v189);
        v115 = fpfs_current_or_default_log();
        v116 = v192;
        sub_1CF9E6128();
        v117 = v105;
        v118 = *(v79 + 16);
        v119 = v187;
        v118(v187, v117, AssociatedTypeWitness);
        v120 = v190;
        v118(v190, v180, AssociatedTypeWitness);
        v121 = sub_1CF9E6108();
        LODWORD(v214) = sub_1CF9E72A8();
        v215 = v121;
        if (os_log_type_enabled(v121, v214))
        {
          v122 = swift_slowAlloc();
          v207 = v122;
          *&v212 = swift_slowAlloc();
          *&v216 = v212;
          *v122 = 136315394;
          v123 = v193;
          v118(v193, v119, AssociatedTypeWitness);
          v124 = *(v79 + 8);
          (v124)(v119, AssociatedTypeWitness);
          v205 = v124;
          v125 = AssociatedTypeWitness;
          v206 = *(swift_getAssociatedConformanceWitness() + 16);
          v126 = sub_1CF9E7F98();
          v127 = v120;
          v129 = v128;
          (v124)(v123, v125);
          v130 = sub_1CEFD0DF0(v126, v129, &v216);
          v129, v131, v132, v133, v134, v135, v136, v137;
          v138 = v207;
          *(v207 + 4) = v130;
          *(v138 + 6) = 2080;
          v118(v123, v127, v125);
          v139 = v205;
          (v205)(v127, v125);
          v140 = sub_1CF9E7F98();
          v142 = v141;
          (v139)(v123, v125);
          v143 = sub_1CEFD0DF0(v140, v142, &v216);
          v142, v144, v145, v146, v147, v148, v149, v150;
          *(v138 + 14) = v143;
          v151 = v215;
          _os_log_impl(&dword_1CEFC7000, v215, v214, "no parentRec in RT for parent %s of %s", v138, 0x16u);
          v152 = v212;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v152, -1, -1);
          MEMORY[0x1D386CDC0](v138, -1, -1);

          v208[1](v192, v209);
          (v139)(v198, v125);
          (*(v181 + 8))(v213, v182);
          (v139)(v180, v125);
        }

        else
        {
          v165 = *(v79 + 8);
          v165(v120, AssociatedTypeWitness);
          v165(v119, AssociatedTypeWitness);

          v208[1](v116, v209);
          v165(v198, AssociatedTypeWitness);
          (*(v108 + 8))(v213, v182);
          v165(v180, AssociatedTypeWitness);
        }

        goto LABEL_15;
      }

      v153 = v106;
      v154 = v191;
      (*(v112 + 32))(v191, v153, v113);
      if ((*(v154 + *(type metadata accessor for ItemReconciliationHalf(0, v195, v194, v155) + 36)) & 2) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        v156 = v154;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C27E0, &qword_1CFA12A00);
        v157 = swift_getTupleTypeMetadata3();
        v158 = *(v157 + 48);
        v159 = v210;
        v160 = AssociatedTypeWitness;
        v214 = (v210 + *(v157 + 64));
        v161 = v215;
        (*(v112 + 16))(v210, v215, v113);
        sub_1CF6FC3E4();
        *(v159 + v158) = swift_allocError();
        *v162 = 0;
        *(v162 + 8) = 3;
        (*(v112 + 8))(v156, v113);
        v163 = *(v79 + 8);
        v163(v198, v160);
        (*(v181 + 8))(v213, v182);
        v163(v180, v160);
        v164 = v214;
        *v214 = *&v161[*(v113 + 64) + 8];
        v164[8] = 0;
        return (*(*(v157 - 8) + 56))(v159, 0, 1, v157);
      }

      v166 = v183;
      v167 = v219;
      sub_1CF6DC314(v183, v154, v205, v184, v75, v185, v186, v207, &v216, v206);
      v168 = v213;
      if (!v167)
      {
        v208 = v216;
        v215 = *(&v217 + 1);
        LODWORD(v214) = v218;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        v219 = 0;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C27E0, &qword_1CFA12A00);
        v169 = swift_getTupleTypeMetadata3();
        *&v212 = *(v169 + 48);
        v170 = v210;
        v209 = (v210 + *(v169 + 64));
        v171 = v204;
        (*(v204 + 16))(v210, v166, v113);
        sub_1CF6FC3E4();
        v172 = swift_allocError();
        v206 = v172;
        v173 = v208;
        *v174 = v208;
        *(v174 + 8) = 4;
        v175 = v173;
        v207 = sub_1CF72AC6C(v172, v173);
        v176 = *(v171 + 8);
        v176(v166, v113);
        v176(v191, v113);
        v177 = *(v79 + 8);
        v177(v198, AssociatedTypeWitness);
        (*(v181 + 8))(v213, v182);
        v177(v180, AssociatedTypeWitness);

        *(v170 + v212) = v207;
        v178 = v209;
        *v209 = v215;
        *(v178 + 8) = v214;
        return (*(*(v169 - 8) + 56))(v170, 0, 1, v169);
      }

      (*(v204 + 8))(v154, v113);
      v109 = *(v79 + 8);
      v109(v105, AssociatedTypeWitness);
      (*(v181 + 8))(v168, v182);
    }

    return (v109)(v180, AssociatedTypeWitness);
  }

  (*(v30 + 8))(v36, v29);
  v52 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v53 = v204;
  v54 = *(v204 + 16);
  v55 = v211;
  v54(v214, a1, v211);
  v56 = sub_1CF9E6108();
  v57 = sub_1CF9E72A8();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *&v213 = swift_slowAlloc();
    *&v216 = v213;
    *v58 = 136315138;
    v59 = v202;
    v60 = v214;
    v54(v202, v214, v55);
    v61 = *(v53 + 8);
    v61(v60, v55);
    v62 = sub_1CF082CB0(v55);
    v64 = v63;
    v61(v59, v55);
    v65 = sub_1CEFD0DF0(v62, v64, &v216);
    v64, v66, v67, v68, v69, v70, v71, v72;
    *(v58 + 4) = v65;
    _os_log_impl(&dword_1CEFC7000, v56, v57, "no entry.a.id for entry: %s", v58, 0xCu);
    v73 = v213;
    __swift_destroy_boxed_opaque_existential_1(v213);
    MEMORY[0x1D386CDC0](v73, -1, -1);
    MEMORY[0x1D386CDC0](v58, -1, -1);
  }

  else
  {
    (*(v53 + 8))(v214, v55);
  }

  v208[1](v215, v209);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C27E0, &qword_1CFA12A00);
  v78 = swift_getTupleTypeMetadata3();
  return (*(*(v78 - 8) + 56))(v210, 1, 1, v78);
}

uint64_t sub_1CF6DC314@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char **a5@<X4>, uint64_t (*a6)(char *)@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t *a9@<X8>, char *a10)
{
  v246 = a2;
  v233 = a8;
  v234 = a6;
  v235 = a7;
  v232 = a5;
  v245 = a4;
  v238 = a1;
  v239 = a9;
  v11 = *a3;
  v12 = *(*a3 + 96);
  v248 = *(*a3 + 80);
  v285 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1CF9E75D8();
  v214 = *(v14 - 8);
  v215 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v217 = &v200 - v15;
  v218 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v213 = &v200 - v17;
  v18 = *(v11 + 104);
  v231 = a3;
  v19 = *(v11 + 88);
  v20 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v242 = AssociatedConformanceWitness;
  v22 = v248;
  v23 = swift_getAssociatedConformanceWitness();
  *&v257 = v20;
  *(&v257 + 1) = AssociatedTypeWitness;
  v24 = AssociatedTypeWitness;
  *&v258 = AssociatedConformanceWitness;
  *(&v258 + 1) = v23;
  v210 = type metadata accessor for ThrottlingKey(255, &v257);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = sub_1CF9E75D8();
  v208 = *(v25 - 8);
  v209 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v212 = &v200 - v26;
  v27 = sub_1CF9E75D8();
  v220 = *(v27 - 8);
  v221 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v222 = &v200 - v28;
  v223 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v216 = &v200 - v30;
  *&v31 = v22;
  *(&v31 + 1) = v19;
  v244 = v31;
  *&v31 = v285;
  *(&v31 + 1) = v18;
  v243 = v31;
  v236 = v19;
  v237 = v18;
  *&v31 = v19;
  *(&v31 + 1) = v22;
  *&v32 = v18;
  *(&v32 + 1) = v285;
  v257 = v31;
  v258 = v32;
  v33 = type metadata accessor for ItemReconciliation(0, &v257);
  v34 = *(v33 - 8);
  v228 = v33;
  v229 = v34;
  MEMORY[0x1EEE9AC00](v33);
  v226 = &v200 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v225 = &v200 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v200 - v39;
  v257 = v244;
  v258 = v243;
  v41 = type metadata accessor for ItemReconciliation(0, &v257);
  v240 = *(v41 - 8);
  v241 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v227 = &v200 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v200 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v200 - v47;
  v219 = v24;
  *&v257 = v24;
  *(&v257 + 1) = v20;
  v224 = v20;
  *&v258 = v23;
  *(&v258 + 1) = v242;
  v230 = type metadata accessor for ReconciliationID(0, &v257);
  v242 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v50 = &v200 - v49;
  v51 = sub_1CF9E6118();
  v52 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v200 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v200 - v56;
  if (v245 >= 10)
  {
    v84 = v246;
    v85 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v86 = sub_1CF9E6108();
    v87 = sub_1CF9E72A8();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_1CEFC7000, v86, v87, "Recursion too deep - aborting", v88, 2u);
      MEMORY[0x1D386CDC0](v88, -1, -1);
    }

    (*(v52 + 8))(v57, v51);
    (*(v240 + 16))(v238, v84, v241);
    sub_1CF6FC3E4();
    result = swift_allocError();
    v89 = 0;
    v90 = 0;
    *v91 = 15;
    *(v91 + 8) = 18;
    v92 = 1;
    v93 = 2;
    v94 = 89;
    v95 = 5;
    goto LABEL_9;
  }

  type metadata accessor for FPCK(0);
  v58 = v247;
  result = sub_1CF6E2A6C(v246, v248, v236, v285, v237, v50);
  if (v58)
  {
    return result;
  }

  v205 = v40;
  v247 = 0;
  v207 = v50;
  if (v234(v50))
  {
    v285 = v51;
    v206 = a10;
    v60 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v61 = v240;
    v63 = v240 + 16;
    v62 = *(v240 + 16);
    v62(v48, v246, v241);
    v64 = sub_1CF9E6108();
    LODWORD(v245) = sub_1CF9E72A8();
    v248 = v64;
    v65 = os_log_type_enabled(v64, v245);
    *&v244 = v63;
    *&v243 = v62;
    if (v65)
    {
      v66 = swift_slowAlloc();
      v236 = v66;
      v237 = swift_slowAlloc();
      *&v257 = v237;
      *v66 = 136315138;
      v62(v45, v48, v241);
      v67 = *(v61 + 8);
      v67(v48, v241);
      v68 = v248;
      v69 = sub_1CF082CB0(v241);
      v71 = v70;
      v67(v45, v241);
      v72 = sub_1CEFD0DF0(v69, v71, &v257);
      v71, v73, v74, v75, v76, v77, v78, v79;
      v80 = v236;
      *(v236 + 1) = v72;
      v81 = v80;
      _os_log_impl(&dword_1CEFC7000, v68, v245, "Cycle detected for %s!", v80, 0xCu);
      v82 = v237;
      __swift_destroy_boxed_opaque_existential_1(v237);
      MEMORY[0x1D386CDC0](v82, -1, -1);
      v83 = v241;
      MEMORY[0x1D386CDC0](v81, -1, -1);
    }

    else
    {
      v83 = v241;
      (*(v61 + 8))(v48, v241);
    }

    (*(v52 + 8))(v54, v285);
    v103 = v246;
    v102 = v247;
    v104 = v207;
    v105 = sub_1CF6E2768(*&v246[*(v83 + 64) + 8], v231, v232, v233, v206);
    if (v102)
    {
      return (*(v242 + 8))(v104, v230);
    }

    v109 = v105;
    v110 = v106;
    (v243)(v238, v103, v83);
    sub_1CF6FC3E4();
    v111 = swift_allocError();
    *v112 = v109;
    *(v112 + 8) = v110;
    (*(v242 + 8))(v104, v230);
    result = v111;
    v89 = 0;
    v90 = 0;
    v92 = 1;
    v93 = 2;
    v94 = 89;
    v95 = 5;
    goto LABEL_9;
  }

  v97 = v247;
  v98 = v231;
  v99 = v232;
  v100 = v233;
  sub_1CF6DE894(v246, v231, v232, v233, a10, v261);
  if (v97)
  {
    return (*(v242 + 8))(v207, v230);
  }

  if (!v261[0])
  {
    v113 = v205;
    v247 = 0;
    v114 = sub_1CF07EE34(v241, v101, v205);
    v115 = *(*v98 + 176);
    v203 = *v98 + 176;
    v204 = v115;
    v116 = (v115)(v114);
    v206 = a10;
    v117 = v247;
    sub_1CF6DE894(v113, v116, v99, v100, a10, v267);
    if (v117)
    {

      (*(v229 + 8))(v113, v228);
      return (*(v242 + 8))(v207, v230);
    }

    v119 = v229 + 8;
    v118 = *(v229 + 8);
    v118(v113, v228);

    if (v267[0])
    {
      v120 = v267[0];
      v121 = v272;
      v90 = v271;
      v93 = v270;
      v94 = v269;
      v95 = v268;
      v89 = v267[1];
      (*(v242 + 8))(v207, v230);
LABEL_23:
      (*(v240 + 16))(v238, v246, v241);
      v92 = v121;
      result = v120;
      goto LABEL_9;
    }

    sub_1CF6E1A6C(v246, v98, v99, v100, v206, v273);
    if (v273[0])
    {
      v120 = v273[0];
      v121 = v278;
      v90 = v277;
      v93 = v276;
      v94 = v275;
      v95 = v274;
      v89 = v273[1];
      (*(v242 + 8))(v207, v230);
      goto LABEL_23;
    }

    v122 = v227;
    sub_1CF6DF4BC(v227, v246, v98, v245 + 1, v99, v234, v235, v100, &v257, v206);
    v205 = v118;
    v229 = v119;
    v247 = 0;
    v89 = *(&v257 + 1);
    v95 = v258;
    v94 = BYTE1(v258);
    v93 = BYTE2(v258);
    v201 = *(&v258 + 1);
    v202 = v257;
    LODWORD(v246) = v259;
    if (v260)
    {
      v124 = sub_1CF07EE34(v241, v123, v226);
      v125 = (v204)(v124);
      v204 = &v200;
      MEMORY[0x1EEE9AC00](v125);
      v126 = v236;
      *(&v200 - 8) = v248;
      *(&v200 - 7) = v126;
      v127 = v233;
      v128 = v285;
      *(&v200 - 6) = v233;
      *(&v200 - 5) = v128;
      v129 = v206;
      *(&v200 - 4) = v237;
      *(&v200 - 3) = v129;
      v199 = v235;
      v130 = v247;
      sub_1CF6DF4BC(v225, v226, v125, v245 + 1, v232, sub_1CF6FC438, (&v200 - 10), v127, v250, v129);
      v247 = v130;
      if (v130)
      {

        sub_1CEFCCC44(&v257, &qword_1EC4C27D8, &qword_1CFA129F8);
        v205(v226, v228);
        (*(v240 + 8))(v227, v241);
        return (*(v242 + 8))(v207, v230);
      }

      v205(v226, v228);

      if ((v256 & 1) == 0)
      {
        LODWORD(v246) = v255;
        v135 = v254;
        v93 = v253;
        v94 = v252;
        v95 = v251;
        v136 = v250[0];
        v89 = v250[1];
        v137 = v228;
        v138 = v225;
        sub_1CF07EE34(v228, v131, v238);
        sub_1CEFCCC44(&v257, &qword_1EC4C27D8, &qword_1CFA129F8);
        v205(v138, v137);
        (*(v240 + 8))(v227, v241);
        (*(v242 + 8))(v207, v230);
        result = v136;
        v90 = v135;
        v92 = v246;
        goto LABEL_9;
      }

      if (sub_1CF07F1A0(v241))
      {
        v133 = v222;
        (*(v220 + 16))(v222, v227 + *(v241 + 52), v221);
        if ((*(v223 + 48))(v133, 1, v224) == 1)
        {
          (*(v220 + 8))(v222, v221);
        }

        else
        {
          v141 = v216;
          (*(v223 + 32))(v216, v222, v224);
          v142 = v247;
          v143 = (*(*v231[3] + 376))(v141, 23, 0, 1, v232, v233, v206);
          v247 = v142;
          if (v142)
          {
            sub_1CEFCCC44(&v257, &qword_1EC4C27D8, &qword_1CFA129F8);
            sub_1CEFCCC44(v250, &qword_1EC4C27D8, &qword_1CFA129F8);
            (*(v223 + 8))(v216, v224);
LABEL_47:
            v205(v225, v228);
            (*(v240 + 8))(v227, v241);
            return (*(v242 + 8))(v207, v230);
          }

          v147 = v143;
          *&v249[0] = v143;
          v148 = TupleTypeMetadata2;
          sub_1CF9E6E58();
          swift_getWitnessTable();
          v149 = v212;
          sub_1CF9E7118();
          v147, v150, v151, v152, v153, v154, v155, v156;
          if ((*(*(v148 - 8) + 48))(v149, 1, v148) == 1)
          {
            (*(v208 + 8))(v212, v209);
            (*(v223 + 8))(v216, v224);
          }

          else
          {
            v157 = &v212[*(TupleTypeMetadata2 + 48)];
            v158 = *v157;
            v160 = *(v157 + 4);
            v159 = *(v157 + 5);
            v161 = *(v157 + 8);
            (*(*(v210 - 8) + 8))();
            if (v158 == 2)
            {
              if (v160 >= *(v227 + *(v241 + 64) + 8))
              {
                sub_1CF6FC3E4();
                v189 = swift_allocError();
                *v190 = v159;
                *(v190 + 8) = 14;
                v191 = v159;

                v161, v192, v193, v194, v195, v196, v197, v198;
                (*(v223 + 8))(v216, v224);
                v159 = v189;
                goto LABEL_61;
              }

              (*(v223 + 8))(v216, v224);

              v161, v162, v163, v164, v165, v166, v167, v168;
            }

            else
            {
              (*(v223 + 8))(v216, v224);
              v171 = v159;

              v161, v172, v173, v174, v175, v176, v177, v178;
              if (v159)
              {
                goto LABEL_61;
              }
            }
          }
        }

        v134 = v217;
        (*(v214 + 16))(v217, v227, v215);
        if ((*(v218 + 48))(v134, 1, v219) == 1)
        {
          (*(v214 + 8))(v217, v215);
LABEL_60:
          v159 = 0;
          goto LABEL_61;
        }

        (*(v218 + 32))(v213, v217, v219);
        v249[1] = v243;
        v249[0] = v244;
        type metadata accessor for SQLDatabase(0, v249);
        if (!swift_dynamicCastClass())
        {
          (*(v218 + 8))(v213, v219);
          goto LABEL_60;
        }

        sub_1CF478C28();

        v144 = v247;
        sub_1CF354C98(v213, v232, v248, v236, v233, v285, v237, v206);
        v247 = v144;
        if (v144)
        {
          sub_1CEFCCC44(&v257, &qword_1EC4C27D8, &qword_1CFA129F8);

          sub_1CEFCCC44(v250, &qword_1EC4C27D8, &qword_1CFA129F8);

          (*(v218 + 8))(v213, v219);
          goto LABEL_47;
        }

        v169 = v145;

        if ((v169 & 1) == 0)
        {
          (*(v218 + 8))(v213, v219);

          goto LABEL_60;
        }

        sub_1CF6FC3E4();
        v159 = swift_allocError();
        *v170 = 38;
        *(v170 + 8) = 18;

        (*(v218 + 8))(v213, v219);
LABEL_61:
        v179 = v241;
        v180 = v227;
        v181 = *(v227 + *(v241 + 64) + 8);
        v182 = sub_1CF72A344(v181, 3, v159, 16);
        v184 = v183;
        v185 = v240;
        (*(v240 + 16))(v238, v180, v179);
        sub_1CF6FC3E4();
        v186 = swift_allocError();
        *v187 = v182;
        *(v187 + 8) = v184;
        sub_1CEFCCC44(&v257, &qword_1EC4C27D8, &qword_1CFA129F8);
        sub_1CEFCCC44(v250, &qword_1EC4C27D8, &qword_1CFA129F8);

        v205(v225, v228);
        v188 = v179;
        v90 = v181;
        (*(v185 + 8))(v180, v188);
        (*(v242 + 8))(v207, v230);
        result = v186;
        v89 = 0;
        v92 = 0;
        v93 = 1;
        v94 = 23;
        v95 = 2;
        goto LABEL_9;
      }

      v139 = type metadata accessor for ItemReconciliationHalf(0, v248, v285, v132);
      if (*(v227 + *(v139 + 76)))
      {
        v140 = v247;
        sub_1CF6F3FE4(v227, v248, v236, v285, v237, v279);
        if (v140)
        {
          sub_1CEFCCC44(&v257, &qword_1EC4C27D8, &qword_1CFA129F8);
          sub_1CEFCCC44(v250, &qword_1EC4C27D8, &qword_1CFA129F8);
          v205(v225, v228);
          (*(v240 + 8))(v227, v241);
          return (*(v242 + 8))(v207, v230);
        }

        v89 = v279[1];
        v95 = v280;
        v94 = v281;
        v93 = v282;
        v201 = v283;
        v202 = v279[0];
        v146 = v284;
        sub_1CEFCCC44(&v257, &qword_1EC4C27D8, &qword_1CFA129F8);
        sub_1CEFCCC44(v250, &qword_1EC4C27D8, &qword_1CFA129F8);
        v205(v225, v228);
        (*(v242 + 8))(v207, v230);
        (*(v240 + 32))(v238, v227, v241);
        v92 = v146;
        v90 = v201;
        result = v202;
        goto LABEL_9;
      }

      sub_1CEFCCC44(v250, &qword_1EC4C27D8, &qword_1CFA129F8);
      v205(v225, v228);
      (*(v242 + 8))(v207, v230);
      (*(v240 + 32))(v238, v227, v241);
    }

    else
    {
      (*(v242 + 8))(v207, v230);
      (*(v240 + 32))(v238, v122, v241);
    }

    v90 = v201;
    result = v202;
    v92 = v246;
    goto LABEL_9;
  }

  v107 = v261[0];
  v108 = v266;
  v90 = v265;
  v93 = v264;
  v94 = v263;
  v95 = v262;
  v89 = v261[1];
  (*(v242 + 8))(v207, v230);
  (*(v240 + 16))(v238, v246, v241);
  v92 = v108;
  result = v107;
LABEL_9:
  v96 = v239;
  *v239 = result;
  v96[1] = v89;
  *(v96 + 16) = v95;
  *(v96 + 17) = v94;
  *(v96 + 18) = v93;
  v96[3] = v90;
  *(v96 + 32) = v92 & 1;
  return result;
}

uint64_t sub_1CF6DDC04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v117 = a8;
  v115 = a7;
  v102 = a6;
  v101 = a5;
  v118 = a4;
  v100 = a3;
  v119 = a9;
  v120 = a1;
  v10 = *a2;
  v11 = *(*a2 + 96);
  v12 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(v10 + 104);
  v116 = a2;
  v15 = *(v10 + 88);
  v125 = AssociatedTypeWitness;
  v126 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v128 = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for ReconciliationID(0, &v125);
  v109 = *(v16 - 8);
  v110 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v107 = &v96 - v17;
  v125 = v12;
  v126 = v15;
  AssociatedConformanceWitness = v11;
  v128 = v14;
  v18 = type metadata accessor for ItemReconciliation(255, &v125);
  v99 = sub_1CF9E75D8();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v108 = &v96 - v19;
  v105 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v103 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v104 = &v96 - v23;
  v25 = type metadata accessor for SnapshotItem(255, v12, v11, v24);
  v26 = sub_1CF9E75D8();
  v106 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v96 - v27;
  v113 = v25;
  v114 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v112 = &v96 - v30;
  v31 = sub_1CF9E75D8();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v96 - v33;
  v35 = *AssociatedTypeWitness[-1].tester;
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v96 - v38;
  (*(v32 + 16))(v34, v120, v31, v37);
  if ((*(v35 + 48))(v34, 1, AssociatedTypeWitness) == 1)
  {
    (*(v32 + 8))(v34, v31);
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C27E0, &qword_1CFA12A00);
LABEL_4:
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    return (*(*(TupleTypeMetadata3 - 8) + 56))(v119, 1, 1, TupleTypeMetadata3);
  }

  v42 = *(v35 + 32);
  v111 = AssociatedTypeWitness;
  v42(v39, v34, AssociatedTypeWitness);
  v43 = v121;
  v44 = (*(*v116[4] + 496))(v39, 0, v118, v115, v117);
  v121 = v43;
  if (!v43)
  {
    v46 = v44;
    v97 = v39;

    v125 = v46;
    v47 = v113;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    sub_1CF9E7118();
    v48 = v114;
    if ((*(v114 + 48))(v28, 1, v47) == 1)
    {
      (*(v35 + 8))(v97, v111);
      (*(v106 + 8))(v28, v26);
      v46, v49, v50, v51, v52, v53, v54, v55;
      goto LABEL_3;
    }

    v56 = v112;
    (*(v48 + 32))(v112, v28, v47);
    v57 = v46;
    v58 = v56;
    v57, v59, v60, v61, v62, v63, v64, v65;
    v66 = v107;
    (*(v35 + 16))(v107, v56, v111);
    v67 = v110;
    swift_storeEnumTagMultiPayload();
    v68 = v108;
    v69 = v121;
    sub_1CF68DB40(v66, v118, v115, v117, v108);
    v121 = v69;
    if (v69)
    {
      (*(v109 + 8))(v66, v67);
      (*(v48 + 8))(v58, v47);
LABEL_14:
      v45 = v111;
      v39 = v97;
      return (*(v35 + 8))(v39, v45);
    }

    (*(v109 + 8))(v66, v67);
    v70 = v105;
    v71 = v18;
    if ((*(v105 + 48))(v68, 1, v18) == 1)
    {
      (*(v114 + 8))(v112, v47);
      (*(v35 + 8))(v97, v111);
      (*(v98 + 8))(v68, v99);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C27E0, &qword_1CFA12A00);
      goto LABEL_4;
    }

    v72 = v104;
    (*(v70 + 32))(v104, v68, v71);
    v73 = v121;
    sub_1CF6DC314(v103, v72, v116, v100, v118, v101, v102, v115, &v125, v117);
    v121 = v73;
    if (v73)
    {
      (*(v70 + 8))(v72, v71);
      (*(v114 + 8))(v112, v47);
      goto LABEL_14;
    }

    v74 = v125;
    v75 = v128;
    v76 = v129;
    v130 = v125;
    v77 = v125;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v78 = swift_dynamicCast();
    v79 = v119;
    if (!v78)
    {
      goto LABEL_31;
    }

    if (v126 != 11)
    {
      if (v126 != 18 || v125)
      {
        sub_1CF6FC470(v125, v126);
LABEL_31:
        LODWORD(v118) = v76;
        v120 = v75;

        v85 = v74;
        v83 = v74;
        goto LABEL_32;
      }

LABEL_28:

      v120 = *(v120 + *(v71 + 64) + 8);
      v80 = sub_1CF72A344(v120, 1, 0x1B, 18);
      v82 = v81;
      sub_1CF6FC3E4();
      v83 = swift_allocError();
      LODWORD(v118) = 0;
      *v84 = v80;
      *(v84 + 8) = v82;
      v79 = v119;
LABEL_32:
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C27E0, &qword_1CFA12A00);
      v86 = swift_getTupleTypeMetadata3();
      v119 = *(v86 + 48);
      v87 = v71;
      v117 = v79 + *(v86 + 64);
      v88 = v105;
      v89 = v103;
      (*(v105 + 16))(v79, v103, v87);
      sub_1CF6FC3E4();
      v90 = swift_allocError();
      *v91 = v83;
      *(v91 + 8) = 2;
      v92 = v83;
      v116 = sub_1CF72AC6C(v90, v83);

      v93 = *(v88 + 8);
      v93(v89, v87);
      v93(v104, v87);
      (*(v114 + 8))(v112, v113);
      (*(v35 + 8))(v97, v111);

      v94 = v120;
      v95 = v117;
      *(v79 + v119) = v116;
      *v95 = v94;
      *(v95 + 8) = v118;
      return (*(*(v86 - 8) + 56))(v79, 0, 1, v86);
    }

    v124 = v125;
    if (swift_dynamicCast())
    {
      if (v123 == 18 && !v122)
      {

        goto LABEL_28;
      }

      sub_1CF6FC470(v122, v123);
    }

    goto LABEL_31;
  }

  v45 = v111;
  return (*(v35 + 8))(v39, v45);
}

void sub_1CF6DE894(uint64_t a1@<X0>, void *a2@<X1>, char **a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v179 = a6;
  v175 = a5;
  v176 = a3;
  v177 = a4;
  v174 = *a2;
  v7 = v174[12];
  v178 = a2;
  v8 = v174[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1CF9E75D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v166 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v166 - v17;
  (*(v11 + 16))(v13, a1, v10, v16);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v13, v10);
LABEL_3:
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = v179;
LABEL_4:
    *v22 = v19;
    *(v22 + 8) = 0;
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
    *(v22 + 32) = 0;
    return;
  }

  (*(v14 + 32))(v18, v13, AssociatedTypeWitness);
  v23 = sub_1CF6FC3E4();
  v24 = swift_allocError();
  *v25 = 0;
  *(v25 + 8) = 18;
  v27 = type metadata accessor for ItemReconciliationHalf(0, v8, v7, v26);
  v28 = AssociatedTypeWitness;
  if (*(a1 + *(v27 + 52)) == 1)
  {
    v170 = v23;
    v171 = AssociatedTypeWitness;
    v172 = v24;
    v173 = v14;
    v169 = a1;
    v29 = v18;
    v30 = v178[3];
    v31 = v174[11];
    v32 = v174[13];
    v181 = v8;
    v182 = v31;
    v183 = v7;
    v184 = v32;
    v174 = type metadata accessor for ItemJob(255, &v181);
    MetatypeMetadata = swift_getMetatypeMetadata();
    sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
    swift_allocObject();
    v34 = sub_1CF9E6D68();
    v36 = v35;
    v181 = v8;
    v182 = v31;
    v183 = v7;
    v184 = v32;
    *v35 = type metadata accessor for Ingestion.FetchContent(0, &v181);
    v181 = v8;
    v182 = v31;
    v183 = v7;
    v184 = v32;
    v36[1] = type metadata accessor for Ingestion.FetchChildrenMetadata(0, &v181);
    v37 = sub_1CF045898(v34, MetatypeMetadata);
    v38 = v175;
    v39 = v180;
    v40 = (*(*v30 + 312))(v29, v37, v176, v177, v175);
    if (v39)
    {
      (*(v173 + 8))(v29, v171);
      v37, v48, v49, v50, v51, v52, v53, v54;
      v55 = v172;
LABEL_11:

      return;
    }

    v167 = v32;
    v168 = v29;
    v180 = 0;
    v60 = v40;
    v37, v41, v42, v43, v44, v45, v46, v47;
    v181 = v60;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    sub_1CF9E7118();
    v61 = v186;
    v60, v62, v63, v64, v65, v66, v67, v68;
    if (v61)
    {
      v181 = v8;
      v182 = v31;
      v174 = v31;
      v69 = v167;
      v183 = v7;
      v184 = v167;
      v70 = type metadata accessor for ItemReconciliation(0, &v181);
      v71 = v169;
      v72 = *(v169 + *(v70 + 64) + 8);

      v74 = v72;
      v75 = v38;
      v76 = v178;
      v77 = v180;
      sub_1CF72A56C(v73, v74, v178, v176, v177, v75);
      v79 = v172;
      v80 = (v173 + 8);
      v180 = v77;
      if (v77)
      {

        (*v80)(v168, v171);
        return;
      }

      v19 = v78;
      v94 = v78;

      v95 = sub_1CF03D760();

      (*v80)(v168, v171);

      v93 = v95 << 8;
      v22 = v179;
      v91 = v174;
    }

    else
    {
      v19 = swift_allocError();
      *v90 = 23;
      *(v90 + 8) = 18;

      (*(v173 + 8))(v168, v171);
      v181 = v8;
      v182 = v31;
      v91 = v31;
      v69 = v167;
      v183 = v7;
      v184 = v167;
      v92 = type metadata accessor for ItemReconciliation(0, &v181);
      v71 = v169;
      if (*(v169 + *(v92 + 56)) == 1)
      {
        v93 = 1536;
      }

      else
      {
        v93 = 5888;
      }

      v76 = v178;
      v22 = v179;
    }

    v181 = v8;
    v182 = v91;
    v183 = v7;
    v184 = v69;
    v21 = *(v71 + *(type metadata accessor for ItemReconciliation(0, &v181) + 64) + 8);
    v96 = v76[4];
    v97 = sub_1CF056558();
    v98 = 1;
    if (!v97)
    {
      v98 = 2;
    }

    v99 = 0x10000;
    if (!*(v96 + 32))
    {
      v99 = 0;
    }

    v20 = v98 | v99 | v93;
    goto LABEL_4;
  }

  v56 = v178;
  if (*(a1 + *(v27 + 64) + 16) != 2)
  {
    (*(v14 + 8))(v18, v28);

    goto LABEL_3;
  }

  v170 = v23;
  v173 = v14;
  v57 = v178[3];
  v58 = v180;
  v59 = (*(*v57 + 264))(v18, v176, v177, v175);
  if (v58)
  {
    (*(v173 + 8))(v18, v28);
    v55 = v24;
    goto LABEL_11;
  }

  v168 = v18;
  if (v59)
  {
    v171 = v28;
    v172 = v24;
    v180 = 0;
    v181 = v8;
    v81 = v174[11];
    v82 = v174[13];
    v182 = v81;
    v183 = v7;
    v174 = v82;
    v184 = v82;
    v83 = v59;
    v84 = *(a1 + *(type metadata accessor for ItemReconciliation(0, &v181) + 64) + 8);
    v85 = *(*v56 + 176);

    v87 = v85(v86);
    v88 = v180;
    sub_1CF72A56C(v83, v84, v87, v176, v177, v175);
    v180 = v88;
    if (v88)
    {

      (*(v173 + 8))(v168, v171);
      return;
    }

    v19 = v89;
    v167 = v81;
    v169 = a1;

    v118 = v19;

    v119 = sub_1CF03D760();

    v22 = v179;
    v28 = v171;
    goto LABEL_33;
  }

  v100 = (*(*v57 + 296))(v168, v176, v177, v175);
  v171 = v57;
  v172 = v24;
  v169 = a1;
  v180 = 0;
  v181 = v8;
  v186 = v100;
  v101 = v174[11];
  v102 = v174[13];
  v182 = v101;
  v183 = v7;
  v184 = v102;
  v103 = v100;
  type metadata accessor for Ingestion.MergeItems(255, &v181);
  sub_1CF9E6E58();
  swift_getWitnessTable();
  sub_1CF9E7118();
  v104 = v185;
  v103, v105, v106, v107, v108, v109, v110, v111;
  if (v104)
  {
    v181 = v8;
    v182 = v101;
    v183 = v7;
    v184 = v102;
    v112 = type metadata accessor for ItemReconciliation(0, &v181);
    v113 = *(v169 + *(v112 + 64) + 8);

    v115 = v113;
    v116 = v180;
    sub_1CF72A56C(v114, v115, v56, v176, v177, v175);
    v180 = v116;
    if (!v116)
    {
      v19 = v117;
      v167 = v101;
      v147 = v117;

      v119 = sub_1CF03D760();

      v22 = v179;
      goto LABEL_34;
    }

LABEL_31:

    (*(v173 + 8))(v168, v28);
    return;
  }

  v181 = v8;
  v182 = v101;
  v183 = v7;
  v184 = v102;
  v166[1] = type metadata accessor for ItemJob(255, &v181);
  v125 = swift_getMetatypeMetadata();
  sub_1CF656CD8(v125, v125);
  swift_allocObject();
  v126 = sub_1CF9E6D68();
  v181 = v8;
  v182 = v101;
  v183 = v7;
  v184 = v102;
  *v127 = type metadata accessor for Ingestion.DeleteRejectedItemInTree(0, &v181);
  v128 = sub_1CF045898(v126, v125);
  v129 = v101;
  v130 = v168;
  v131 = v180;
  v132 = (*(*v171 + 312))(v168, v128, v176, v177, v175);
  v180 = v131;
  if (!v131)
  {
    v174 = v102;
    v167 = v129;
    v148 = v132;
    v128, v133, v134, v135, v136, v137, v138, v139;
    v181 = v148;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    sub_1CF9E7118();
    v149 = v186;
    v148, v150, v151, v152, v153, v154, v155, v156;
    if (!v149)
    {
      v19 = swift_allocError();
      *v164 = 22;
      *(v164 + 8) = 18;

      v165 = v19;
      v119 = 89;
      v22 = v179;
LABEL_33:
      v102 = v174;
LABEL_34:
      (*(v173 + 8))(v168, v28);

      v181 = v8;
      v182 = v167;
      v183 = v7;
      v184 = v102;
      v120 = type metadata accessor for ItemReconciliation(0, &v181);
      v21 = *(v169 + *(v120 + 64) + 8);
      v121 = sub_1CF056558();
      v122 = 1;
      if (!v121)
      {
        v122 = 2;
      }

      v123 = v122 | (v119 << 8);
      v124 = 0x10000;
      if (!*(v56[5] + 32))
      {
        v124 = 0;
      }

      v20 = v124 | v123;
      goto LABEL_4;
    }

    v181 = v8;
    v182 = v167;
    v102 = v174;
    v183 = v7;
    v184 = v174;
    v157 = type metadata accessor for ItemReconciliation(0, &v181);
    v158 = *(v169 + *(v157 + 64) + 8);

    v160 = v158;
    v161 = v180;
    sub_1CF72A56C(v159, v160, v56, v176, v177, v175);
    v180 = v161;
    v22 = v179;
    if (!v161)
    {
      v19 = v162;
      v163 = v162;

      v119 = sub_1CF03D760();

      goto LABEL_34;
    }

    goto LABEL_31;
  }

  (*(v173 + 8))(v130, v28);
  v128, v140, v141, v142, v143, v144, v145, v146;
}

void sub_1CF6DF4BC(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char **a5@<X4>, uint64_t (*a6)(char *)@<X5>, uint64_t a7@<X6>, char *a8@<X7>, void *a9@<X8>, void *a10)
{
  v407 = a4;
  v412 = a8;
  v408 = a6;
  v409 = a7;
  v414 = a5;
  v417 = a2;
  v405 = a9;
  v406 = a1;
  v11 = *a3;
  v12 = *(*a3 + 104);
  v13 = *(*a3 + 88);
  v413 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1CF9E75D8();
  v370 = *(v15 - 8);
  v371 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v410 = &v364 - v16;
  v372 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v367 = &v364 - v18;
  v19 = *(v11 + 96);
  v415 = a3;
  v20 = *(v11 + 80);
  v21 = v19;
  v22 = swift_getAssociatedTypeWitness();
  v23 = sub_1CF9E75D8();
  v374 = *(v23 - 8);
  v375 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v368 = &v364 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v369 = &v364 - v26;
  v376 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v365 = &v364 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v366 = &v364 - v30;
  v31.i64[0] = v20;
  v31.i64[1] = v13;
  v32.i64[0] = v21;
  v416 = v21;
  v32.i64[1] = v12;
  v419 = v32;
  v420 = v31;
  *v424 = v31;
  *&v424[16] = v32;
  v418 = type metadata accessor for ItemReconciliation(255, v424);
  v33 = sub_1CF9E75D8();
  v380 = *(v33 - 8);
  v381 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v387 = &v364 - v34;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v402 = v13;
  v403 = v12;
  v36 = v20;
  v37 = v417;
  v38 = swift_getAssociatedConformanceWitness();
  v378 = v22;
  *v424 = v22;
  v373 = AssociatedTypeWitness;
  *&v424[8] = AssociatedTypeWitness;
  *&v424[16] = AssociatedConformanceWitness;
  *&v424[24] = v38;
  v39 = type metadata accessor for ReconciliationID(0, v424);
  v411 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v388 = &v364 - v40;
  *v424 = v420;
  *&v424[16] = v419;
  v393 = type metadata accessor for PersistenceTrigger(255, v424);
  v41 = sub_1CF9E75D8();
  v394 = *(v41 - 8);
  v395 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v400 = &v364 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v383 = &v364 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v401 = &v364 - v46;
  v390 = v39;
  v47 = sub_1CF9E75D8();
  v391 = *(v47 - 8);
  v392 = v47;
  MEMORY[0x1EEE9AC00](v47);
  v384 = &v364 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v385 = &v364 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v389 = &v364 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v396 = &v364 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C27E0, &qword_1CFA12A00);
  v56 = v418;
  v377 = v55;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v57 = sub_1CF9E75D8();
  v58 = *(v57 - 8);
  v398 = v57;
  v399 = v58;
  MEMORY[0x1EEE9AC00](v57);
  v397 = &v364 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v364 - v61;
  v63 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v386 = &v364 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v382 = &v364 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v379 = &v364 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v364 - v71;
  v73 = v416;
  v75 = type metadata accessor for ItemReconciliationHalf(0, v20, v416, v74);
  if ((v37[*(v75 + 36)] & 4) != 0)
  {
    v364 = v63;
    v89 = v446;
    sub_1CF6DDC04(v37, v415, v407, v414, v408, v409, v412, v413, v62);
    if (v89)
    {
      return;
    }

    v446 = 0;
    v90 = TupleTypeMetadata3;
    if ((*(*(TupleTypeMetadata3 - 8) + 48))(v62, 1, TupleTypeMetadata3) != 1)
    {
      v97 = *&v62[*(v90 + 48)];
      v98 = &v62[*(v90 + 64)];
      v86 = *v98;
      v88 = v98[8];
      v99 = *(v364 + 32);
      v100 = v62;
      v101 = v418;
      v99(v72, v100, v418);
      if (sub_1CF056558())
      {
        v83 = 1;
      }

      else
      {
        v83 = 2;
      }

      v102 = v101;
      v81 = v97;
      v99(v406, v72, v102);
      goto LABEL_13;
    }

    (*(v399 + 8))(v62, v398);
    v63 = v364;
  }

  v76 = &v37[*(v75 + 64)];
  v78 = v419;
  v77 = v420;
  v79 = v410;
  v80 = v411;
  if (v76[16])
  {
    (*(v63 + 16))(v406, v37, v418, v420, v419);
    sub_1CF6E176C(v37, v36, v402, v73, v403, v426);
    v81 = v426[0];
    v82 = v426[1];
    v83 = v427;
    v84 = v428;
    v85 = v429;
    v86 = v430;
    v87 = 1;
    v88 = v431;
    goto LABEL_39;
  }

  v416 = *v76;
  v91 = v416;
  if (!v416)
  {
LABEL_32:
    sub_1CF6FC3E4();
    v118 = swift_allocError();
    *v117 = v416;
    v119 = 17;
LABEL_33:
    *(v117 + 8) = v119;
    v114 = v63;
    v115 = v37;
    if (sub_1CF056558())
    {
      v83 = 1;
    }

    else
    {
      v83 = 2;
    }

    v86 = *&v115[*(v418 + 64) + 8];
    (*(v114 + 16))(v406, v115);
    v81 = v118;
    goto LABEL_37;
  }

  v92 = v400;
  v402 = (v399 + 8);
  v403 = TupleTypeMetadata3 - 8;
  v93 = v408;
  v94 = v409;
  v95 = v407;
  v96 = v401;
  v364 = v63;
  while (1)
  {
    v104 = v91 & -v91;
    if (v104 > 1023)
    {
      if (v104 >= 0x4000)
      {
        if (v104 == 0x4000)
        {
          v120 = v418;
          v121 = v446;
          sub_1CF95B47C(v415, v414, v418, v412, v413, v424);
          if (v121)
          {
            return;
          }

          v122 = v37;
          v446 = 0;
          if (*v424 == 1)
          {
            v123 = 0;
          }

          else
          {
            v440 = *v424;
            v442 = *&v424[24];
            v443 = *&v424[40];
            v444 = *&v424[56];
            v445 = *&v424[72];
            v441 = *&v424[8];
            sub_1CEFCCBDC(v424, v422, &qword_1EC4C27E8, &qword_1CFA12A08);
            v123 = sub_1CF6C7130();
            sub_1CEFCCC44(v424, &qword_1EC4C27E8, &qword_1CFA12A08);
          }

          sub_1CF6FC3E4();
          v138 = swift_allocError();
          *v139 = v123;
          *(v139 + 8) = 10;
          sub_1CEFCCC44(v424, &qword_1EC4C27E8, &qword_1CFA12A08);
          if (sub_1CF056558())
          {
            v83 = 1;
          }

          else
          {
            v83 = 2;
          }

          v86 = *&v122[*(v120 + 64) + 8];
          v140 = v120;
          v81 = v138;
          (*(v63 + 16))(v406, v122, v140);
          goto LABEL_37;
        }

        if (v104 == 0x100000)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v104 == 1024)
        {
          goto LABEL_30;
        }

        if (v104 == 4096)
        {
          sub_1CF6FC3E4();
          v118 = swift_allocError();
          *v117 = 19;
          v119 = 18;
          goto LABEL_33;
        }
      }

      goto LABEL_15;
    }

    if (v104 == 512)
    {
      v105 = v397;
      v106 = v95;
      v107 = v93;
      v108 = v94;
      v109 = v446;
      sub_1CF6DAE10(v37, v415, v95, v414, v93, v94, v412, v413, v397);
      if (v109)
      {
        return;
      }

      v446 = 0;
      if ((*(*(TupleTypeMetadata3 - 8) + 48))(v105, 1) != 1)
      {
        v149 = *(v105 + *(TupleTypeMetadata3 + 48));
        v150 = v105 + *(TupleTypeMetadata3 + 64);
        v86 = *v150;
        v88 = *(v150 + 8);
        v151 = v364;
        v153 = v364 + 32;
        v152 = *(v364 + 32);
        v154 = v386;
        v416 = v149;
        v417 = v152;
        (v152)(v386);
        *v424 = v420;
        *&v424[16] = v419;
        type metadata accessor for ReconciliationTable(0, v424);
        v155 = v383;
        v156.n128_f64[0] = (*(*(v393 - 8) + 56))(v383, 1, 1);
        v157 = v446;
        v158 = sub_1CF6A5608(v385, 512, v154, v155, 0, v415, v414, v412, v156, v413);
        v159 = (v394 + 8);
        v446 = v157;
        if (v157)
        {

          (*v159)(v155, v395);
          (*(v151 + 8))(v386, v418);
          return;
        }

        v420.i64[0] = v153;
        v174 = BYTE1(v158);
        (*v159)(v155, v395);
        (*(v391 + 8))(v385, v392);
        if (sub_1CF670F38(v174) == 0x65526D6165727473 && v175 == 0xEB00000000746573)
        {
          0xEB00000000746573, 0xEB00000000746573, v176, v177, v178, v179, v180, v181;
          goto LABEL_84;
        }

        v187 = v175;
        v188 = sub_1CF9E8048();
        v187, v189, v190, v191, v192, v193, v194, v195;
        v81 = v416;
        v196 = v417;
        v197 = v386;
        if (v188)
        {
LABEL_84:
          v198 = sub_1CF9E57E8();
          v199 = [v198 underlyingErrors];
          v200 = sub_1CF9E6D48();

          sub_1CF6FC3E4();
          v201 = swift_allocError();
          *v202 = 18;
          *(v202 + 8) = 18;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v200 = sub_1CF1F6CD4(0, (*v200->tree + 1), 1, v200, v203, v204, v205, v206);
          }

          v208 = *v200->tree;
          v207 = *v200->tester;
          if (v208 >= v207 >> 1)
          {
            v200 = sub_1CF1F6CD4((v207 > 1), (v208 + 1), 1, v200, v203, v204, v205, v206);
          }

          *v200->tree = v208 + 1;
          *(&v200[1].super.isa + v208) = v201;
          v209 = [v198 userInfo];
          v210 = sub_1CF9E6638();

          v211 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v213 = v212;
          *&v424[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27F0, &unk_1CFA12A10);
          *v424 = v200;
          sub_1CEFE9EB8(v424, v422);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v421[0] = v210;
          sub_1CF1D154C(v422, v211, v213, isUniquelyReferenced_nonNull_native);
          v213, v215, v216, v217, v218, v219, v220, v221;
          v222 = [v198 domain];
          if (!v222)
          {
            _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v224 = v223;
            v222 = sub_1CF9E6888();
            v224, v225, v226, v227, v228, v229, v230, v231;
          }

          v232 = [v198 code];
          v233 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v234 = sub_1CF9E6618();

          v81 = [v233 initWithDomain:v222 code:v232 userInfo:v234];

          if (sub_1CF056558())
          {
            v83 = 1;
          }

          else
          {
            v83 = 2;
          }

          (v417)(v406, v386, v418);
        }

        else
        {
          if (sub_1CF056558())
          {
            v83 = 1;
          }

          else
          {
            v83 = 2;
          }

          (v196)(v406, v197, v418);
        }

LABEL_13:
        v82 = 0;
LABEL_38:
        v87 = 0;
        v85 = 2;
        v84 = 89;
        goto LABEL_39;
      }

      (*v402)(v105, v398);
      v78 = v419;
      v77 = v420;
      v94 = v108;
      v93 = v107;
      v95 = v106;
      v79 = v410;
      v80 = v411;
      v92 = v400;
      v96 = v401;
      v63 = v364;
      goto LABEL_15;
    }

    if (v104 <= 0x10 && ((1 << v104) & 0x10114) != 0)
    {
LABEL_30:
      *v424 = v77;
      *&v424[16] = v78;
      type metadata accessor for ReconciliationTable(0, v424);
      v110.n128_f64[0] = (*(*(v393 - 8) + 56))(v96, 1, 1);
      v111 = v396;
      v112 = v412;
      v113 = v446;
      sub_1CF6A5608(v396, v104, v37, v96, 0, v415, v414, v412, v110, v413);
      v446 = v113;
      if (v113)
      {
        (*(v394 + 8))(v401, v395);
        return;
      }

      (*(v394 + 8))(v401, v395);
      v124 = v111;
      v126 = v391;
      v125 = v392;
      v127 = v389;
      (*(v391 + 16))(v389, v124, v392);
      v128 = *(v80 + 48);
      v129 = v80;
      v130 = v390;
      if (v128(v127, 1, v390) == 1)
      {
        (*(v126 + 8))(v127, v125);
        v131 = v418;
        goto LABEL_46;
      }

      v133 = v388;
      (*(v129 + 32))(v388, v127, v130);
      v134 = v387;
      v135 = v413;
      v136 = v446;
      sub_1CF68DB40(v133, v414, v112, v413, v387);
      v446 = v136;
      v137 = v135;
      v131 = v418;
      if (v136)
      {
        (*(v129 + 8))(v133, v130);
        goto LABEL_52;
      }

      v141 = v134;
      v142 = v364;
      if ((*(v364 + 48))(v141, 1, v418) != 1)
      {
        v160 = *(v142 + 32);
        v161 = v379;
        v420.i64[0] = v142 + 32;
        v419.i64[0] = v160;
        v160(v379, v141, v131);
        v162 = v446;
        sub_1CF6DC314(v382, v161, v415, v407, v414, v408, v409, v412, v424, v137);
        v446 = v162;
        v163 = v411;
        if (!v162)
        {
          v182 = *v424;
          v86 = *&v424[24];
          v183 = v131;
          v88 = v424[32];
          v184 = *v424;
          v185 = v104;
          v186 = v182;
          v416 = sub_1CF72ADB4(v185, v182);

          (*(v364 + 8))(v161, v183);
          (*(v163 + 8))(v388, v130);
          (*(v391 + 8))(v396, v392);
          LOBYTE(v182) = sub_1CF056558();

          if (v182)
          {
            v83 = 1;
          }

          else
          {
            v83 = 2;
          }

          (v419.i64[0])(v406, v382, v183);
          v81 = v416;
          goto LABEL_13;
        }

        (*(v142 + 8))(v161, v131);
        (*(v163 + 8))(v388, v130);
LABEL_52:
        (*(v391 + 8))(v396, v392);
        return;
      }

      (*(v411 + 8))(v388, v130);
      (*(v380 + 8))(v141, v381);
      v126 = v391;
      v125 = v392;
LABEL_46:
      v132 = sub_1CF72ADB4(v104, 0);
      (*(v126 + 8))(v396, v125);
      if (sub_1CF056558())
      {
        v83 = 1;
      }

      else
      {
        v83 = 2;
      }

      v86 = *&v417[*(v131 + 64) + 8];
      (*(v364 + 16))(v406);
      v81 = v132;
LABEL_37:
      v82 = 0;
      v88 = 0;
      goto LABEL_38;
    }

    if (v104 == 256)
    {
      break;
    }

LABEL_15:
    v103 = v91 == v104;
    v91 ^= v104;
    if (v103)
    {
      goto LABEL_32;
    }
  }

  *v424 = v77;
  *&v424[16] = v78;
  type metadata accessor for ReconciliationTable(0, v424);
  v143.n128_f64[0] = (*(*(v393 - 8) + 56))(v92, 1, 1);
  v144 = v384;
  v145 = v415;
  v146 = v412;
  v147 = v446;
  v148 = sub_1CF6A5608(v384, 256, v37, v92, 0, v415, v414, v412, v143, v413);
  v446 = v147;
  if (v147)
  {
    (*(v394 + 8))(v400, v395);
    return;
  }

  v164 = BYTE1(v148);
  (*(v394 + 8))(v400, v395);
  (*(v391 + 8))(v144, v392);
  if (v164 == 20)
  {
    v242 = v374;
    v241 = v375;
    v243 = v368;
    (*(v374 + 16))(v368, v417, v375);
    v244 = v376;
    v245 = v378;
    if ((*(v376 + 48))(v243, 1, v378) == 1)
    {
      (*(v242 + 8))(v243, v241);
    }

    else
    {
      v275 = v365;
      (*(v244 + 32))(v365, v243, v245);
      v276 = v145[3];
      *v424 = v420;
      *&v424[16] = v419;
      type metadata accessor for ItemJob(255, v424);
      v277 = v244;
      MetatypeMetadata = swift_getMetatypeMetadata();
      sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
      swift_allocObject();
      v279 = sub_1CF9E6D68();
      *v424 = v420;
      *&v424[16] = v419;
      *v280 = type metadata accessor for Ingestion.FaultDirectoryInTree(0, v424);
      v258 = sub_1CF045898(v279, MetatypeMetadata);
      v281 = v446;
      v282 = (*(*v276 + 312))(v275, v258, v414, v412, v413);
      v446 = v281;
      if (v281)
      {
        (*(v277 + 8))(v275, v378);
        goto LABEL_126;
      }

      v319 = v282;
      v258, v283, v284, v285, v286, v287, v288, v289;
      *v424 = v319;
      sub_1CF9E6E58();
      swift_getWitnessTable();
      sub_1CF9E7118();
      v327 = *&v422[0];
      if (*&v422[0])
      {
        v319, v320, v321, v322, v323, v324, v325, v326;
        v328 = v446;
        sub_1CF72A56C(v327, *&v417[*(v418 + 64) + 8], v145, v414, v412, v413);
        v446 = v328;
        if (v328)
        {

          (*(v376 + 8))(v365, v378);
          return;
        }

        v81 = v329;

        (*(v376 + 8))(v365, v378);
        v246 = v418;
LABEL_105:
        v248 = v145[4];
        if (sub_1CF056558())
        {
          v83 = 1;
        }

        else
        {
          v83 = 2;
        }

        v85 = *(v248 + 32);
        v86 = *&v417[*(v246 + 64) + 8];
        (*(v364 + 16))(v406);
        v82 = 0;
        v88 = 0;
        v87 = 0;
        v84 = 14;
        goto LABEL_39;
      }

      (*(v376 + 8))(v365, v378);
      v319, v348, v349, v350, v351, v352, v353, v354;
    }

    v246 = v418;
    sub_1CF6FC3E4();
    v81 = swift_allocError();
    *v247 = 26;
    *(v247 + 8) = 18;
    goto LABEL_105;
  }

  v165 = v418;
  if (v164 == 19)
  {
    v236 = v370;
    v235 = v371;
    (*(v370 + 16))(v79, &v417[*(v418 + 52)], v371);
    v238 = v372;
    v237 = v373;
    if ((*(v372 + 48))(v79, 1, v373) == 1)
    {
      (*(v236 + 8))(v79, v235);
    }

    else
    {
      v253 = v367;
      (*(v238 + 32))(v367, v79, v237);
      v254 = v415[3];
      v419 = vextq_s8(v419, v419, 8uLL);
      v420 = vextq_s8(v420, v420, 8uLL);
      *v424 = v420;
      *&v424[16] = v419;
      type metadata accessor for ItemJob(255, v424);
      v255 = swift_getMetatypeMetadata();
      sub_1CF656CD8(v255, v255);
      swift_allocObject();
      v256 = sub_1CF9E6D68();
      *v424 = v420;
      *&v424[16] = v419;
      *v257 = type metadata accessor for Ingestion.FetchItemMetadata(0, v424);
      v258 = sub_1CF045898(v256, v255);
      v259 = v446;
      v260 = (*(*v254 + 304))(v253, v258, v414, v146, v413);
      v446 = v259;
      if (v259)
      {
        (*(v238 + 8))(v253, v373);
        goto LABEL_126;
      }

      v305 = v260;
      v258, v261, v262, v263, v264, v265, v266, v267;
      *v424 = v305;
      sub_1CF9E6E58();
      swift_getWitnessTable();
      sub_1CF9E7118();
      v313 = *&v422[0];
      if (*&v422[0])
      {
        v305, v306, v307, v308, v309, v310, v311, v312;
        v314 = *&v417[*(v418 + 64) + 8];
        v315 = v415;
        v316 = (*(*v415 + 176))();
        v317 = v446;
        sub_1CF72A56C(v313, v314, v316, v414, v146, v413);
        v446 = v317;
        if (v317)
        {

          (*(v372 + 8))(v367, v373);
          return;
        }

        v363 = v318;

        (*(v372 + 8))(v367, v373);
        v165 = v418;
        v240 = v315;
        v63 = v364;
        v81 = v363;
        goto LABEL_97;
      }

      (*(v372 + 8))(v367, v373);
      v305, v341, v342, v343, v344, v345, v346, v347;
      v165 = v418;
      v63 = v364;
    }

    sub_1CF6FC3E4();
    v81 = swift_allocError();
    *v239 = 26;
    *(v239 + 8) = 18;
    v240 = v415;
LABEL_97:
    if (sub_1CF056558())
    {
      v83 = 2;
    }

    else
    {
      v83 = 1;
    }

    v85 = *(v240[5] + 32);
    goto LABEL_101;
  }

  if (v164 != 18)
  {
    v249 = v446;
    sub_1CF95B47C(v145, v414, v418, v146, v413, v424);
    if (!v249)
    {
      v446 = 0;
      v82 = *&v424[8];
      v250 = v424[16];
      v84 = v425;
      if (*v424 != 1)
      {
        v251 = v145;
        v432 = *v424;
        v433 = *&v424[8];
        v434 = v424[16];
        *v435 = *&v424[17];
        *&v435[3] = *&v424[20];
        v86 = *&v424[24];
        v436 = *&v424[24];
        v88 = v424[32];
        v437 = v424[32];
        v438 = *&v424[33];
        *v439 = *&v424[49];
        *&v439[9] = *&v424[58];
        *(v423 + 10) = *&v424[58];
        v422[2] = *&v424[32];
        v423[0] = *&v424[48];
        v422[0] = *v424;
        v422[1] = *&v424[16];
        sub_1CEFF8D38(v422, v421);
        v416 = sub_1CF6C7130();
        if (v416)
        {
          sub_1CEFCCC44(v424, &qword_1EC4C27E8, &qword_1CFA12A08);
          v85 = *(v251[4] + 32);
          v252 = sub_1CF056558();
          sub_1CEFCCC44(v424, &qword_1EC4C27E8, &qword_1CFA12A08);
          if (v252)
          {
            v83 = 1;
          }

          else
          {
            v83 = 2;
          }

          (*(v364 + 16))(v406, v417, v418);
          v87 = 0;
          v84 = v250;
          v81 = v416;
          goto LABEL_39;
        }

        sub_1CEFCCC44(v424, &qword_1EC4C27E8, &qword_1CFA12A08);
        v165 = v418;
      }

      sub_1CF6FC3E4();
      v81 = swift_allocError();
      *v355 = 26;
      *(v355 + 8) = 18;
      sub_1CEFCCC44(v424, &qword_1EC4C27E8, &qword_1CFA12A08);
      if (sub_1CF056558())
      {
        v83 = 1;
      }

      else
      {
        v83 = 2;
      }

      v86 = *&v417[*(v165 + 64) + 8];
      (*(v364 + 16))(v406);
      v82 = 0;
      v88 = 0;
      v87 = 0;
      v85 = 2;
LABEL_39:
      v116 = v405;
      *v405 = v81;
      v116[1] = v82;
      *(v116 + 16) = v83;
      *(v116 + 17) = v84;
      *(v116 + 18) = v85;
      v116[3] = v86;
      *(v116 + 32) = v88 & 1;
      *(v116 + 33) = v87;
    }

    return;
  }

  v167 = v374;
  v166 = v375;
  v168 = v369;
  (*(v374 + 16))(v369, v417, v375);
  v169 = v376;
  v170 = v378;
  if ((*(v376 + 48))(v168, 1, v378) == 1)
  {
    (*(v167 + 8))(v168, v166);
    goto LABEL_71;
  }

  v290 = v168;
  v291 = v366;
  (*(v169 + 32))(v366, v290, v170);
  v292 = v415[3];
  *v424 = v420;
  *&v424[16] = v419;
  type metadata accessor for ItemJob(255, v424);
  v293 = swift_getMetatypeMetadata();
  sub_1CF656CD8(v293, v293);
  swift_allocObject();
  v294 = sub_1CF9E6D68();
  *v424 = v420;
  *&v424[16] = v419;
  *v295 = type metadata accessor for Ingestion.FetchItemMetadata(0, v424);
  v258 = sub_1CF045898(v294, v293);
  v296 = v446;
  v297 = (*(*v292 + 312))(v291, v258, v414, v146, v413);
  v446 = v296;
  if (!v296)
  {
    v330 = v297;
    v258, v298, v299, v300, v301, v302, v303, v304;
    *v424 = v330;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    sub_1CF9E7118();
    v338 = *&v422[0];
    if (*&v422[0])
    {
      v330, v331, v332, v333, v334, v335, v336, v337;
      v172 = v415;
      v339 = v446;
      sub_1CF72A56C(v338, *&v417[*(v418 + 64) + 8], v415, v414, v146, v413);
      v446 = v339;
      if (v339)
      {

        (*(v376 + 8))(v366, v378);
        return;
      }

      v81 = v340;

      (*(v376 + 8))(v366, v378);
      v165 = v418;
      v63 = v364;
    }

    else
    {
      (*(v376 + 8))(v366, v378);
      v330, v356, v357, v358, v359, v360, v361, v362;
      v165 = v418;
      v63 = v364;
LABEL_71:
      sub_1CF6FC3E4();
      v81 = swift_allocError();
      *v171 = 26;
      *(v171 + 8) = 18;
      v172 = v415;
    }

    v173 = v172[4];
    if (sub_1CF056558())
    {
      v83 = 1;
    }

    else
    {
      v83 = 2;
    }

    v85 = *(v173 + 32);
LABEL_101:
    v86 = *&v417[*(v165 + 64) + 8];
    (*(v63 + 16))(v406);
    v82 = 0;
    v88 = 0;
    v87 = 0;
    v84 = 3;
    goto LABEL_39;
  }

  (*(v169 + 8))(v291, v378);
LABEL_126:
  v258, v268, v269, v270, v271, v272, v273, v274;
}

void sub_1CF6E176C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  v8 = type metadata accessor for ItemReconciliation(0, v16);
  v9 = qword_1CFA12DB0[sub_1CF083B80(v8)];
  v10 = *(a1 + *(v8 + 64) + 8);
  v11 = sub_1CF72A344(v10, 1, v9, 18);
  v13 = v12;
  sub_1CF6FC3E4();
  v14 = swift_allocError();
  *v15 = v11;
  *(v15 + 8) = v13;
  sub_1CF6FC470(v9, 0x12u);
  *a6 = v14;
  *(a6 + 8) = 0;
  *(a6 + 16) = 22789;
  *(a6 + 18) = 2;
  *(a6 + 24) = v10;
  *(a6 + 32) = 0;
}

void sub_1CF6E184C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, unsigned __int8 a5@<W4>, char **a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a1;
  v18 = (*(*a1[3] + 280))(a2, a6, a7, a8);
  if (!v9)
  {
    v37 = a8;
    v36 = a4;
    v41 = v18;
    v19 = *(v17 + 96);
    v39[0] = *(v17 + 80);
    v39[1] = v19;
    v20 = v18;
    type metadata accessor for Bouncing.BounceItem(255, v39);
    sub_1CF9E6E58();
    swift_getWitnessTable();
    sub_1CF9E7118();
    v21 = v40;
    v20, v22, v23, v24, v25, v26, v27, v28;
    if (v21)
    {
      sub_1CF6FC3E4();
      v29 = swift_allocError();
      *v30 = 0;
      *(v30 + 8) = 18;
      sub_1CF72A56C(v21, a3, a1, a6, a7, v37);
      v32 = v31;
      v33 = swift_allocError();
      *v34 = v32;
      *(v34 + 8) = 8;

      v35 = a5 | ((v36 & 1) << 16) | 0xA00;
    }

    else
    {
      v33 = 0;
      v35 = 0;
      a3 = 0;
    }

    *a9 = v33;
    *(a9 + 8) = 0;
    *(a9 + 16) = v35;
    *(a9 + 24) = a3;
    *(a9 + 32) = 0;
  }
}

void sub_1CF6E1A6C(uint64_t a1@<X0>, uint64_t *a2@<X1>, char **a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v122 = a5;
  v121 = a4;
  v120 = a3;
  v115 = a1;
  v109 = a6;
  v7 = *a2;
  v8 = *(*a2 + 80);
  v119 = *(*a2 + 96);
  v112 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(v7 + 104);
  v123 = a2;
  v11 = *(v7 + 88);
  v12 = swift_getAssociatedTypeWitness();
  v124 = AssociatedTypeWitness;
  v125 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v127 = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for ReconciliationID(0, &v124);
  v118 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v114 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v136 = &v98 - v16;
  v107 = sub_1CF9E75D8();
  v106 = *(v107 - 1);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v98 - v17;
  v116 = v12;
  v108 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v117 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v103 = &v98 - v21;
  v22 = sub_1CF9E75D8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v98 - v24;
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v27);
  v111 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v98 - v30;
  v124 = v112;
  v125 = v11;
  AssociatedConformanceWitness = v119;
  v127 = v10;
  v32 = v115;
  v33 = type metadata accessor for ItemReconciliation(0, &v124);
  v119 = *(v32 + v33[15]);
  v104 = v13;
  if (sub_1CF9E6DF8() < 1)
  {
    v62 = 0;
    v72 = 0uLL;
    v73 = 0uLL;
LABEL_29:
    v83 = v109;
LABEL_34:
    *v83 = v72;
    *(v83 + 16) = v73;
    *(v83 + 32) = v62;
    return;
  }

  (*(v23 + 16))(v25, v32, v22);
  if ((*(v26 + 48))(v25, 1, AssociatedTypeWitness) == 1)
  {
    v99 = v26;
    v102 = AssociatedTypeWitness;
    (*(v23 + 8))(v25, v22);
    v34 = v113;
    v35 = v123;
    v36 = v119;
  }

  else
  {
    (*(v26 + 32))(v31, v25, AssociatedTypeWitness);
    v74 = v113;
    sub_1CF6E184C(v123, v31, *(v32 + v33[16] + 8), 0, 2u, v120, v121, v122, v128);
    v34 = v74;
    if (v74)
    {
      (*(v26 + 8))(v31, AssociatedTypeWitness);
      return;
    }

    v110 = v128[1];
    v113 = v128[0];
    v62 = v129;
    (*(v26 + 8))(v31);
    if (*&v128[0])
    {
      goto LABEL_33;
    }

    v99 = v26;
    v102 = AssociatedTypeWitness;
    v35 = v123;
    v36 = v119;
  }

  v37 = v106;
  v38 = v105;
  v39 = v107;
  (*(v106 + 16))(v105, v32 + v33[13], v107);
  v40 = v108;
  v41 = (*(v108 + 48))(v38, 1, v116);
  v42 = v33;
  v43 = v114;
  v112 = v42;
  if (v41 == 1)
  {
    (*(v37 + 8))(v38, v39);
    goto LABEL_6;
  }

  v75 = v42;
  v76 = v103;
  v77 = v38;
  v78 = v116;
  v79 = (*(v40 + 32))(v103, v77, v116);
  v80 = (*(*v35 + 176))(v79);
  sub_1CF6E184C(v80, v76, *(v32 + v75[16] + 8), 0, 2u, v120, v121, v122, v130);
  if (v34)
  {
    (*(v40 + 8))(v76, v78);

    return;
  }

  v110 = v130[1];
  v113 = v130[0];
  v62 = v131;
  (*(v40 + 8))(v76, v78);

  if (*&v130[0])
  {
LABEL_33:
    v83 = v109;
    v72 = v113;
    v73 = v110;
    goto LABEL_34;
  }

  v35 = v123;
  v36 = v119;
LABEL_6:

  if (!sub_1CF9E6DF8())
  {
LABEL_28:
    v36, v44, v45, v46, v47, v48, v49, v50;
    sub_1CF6FC3E4();
    v81 = swift_allocError();
    v62 = 0;
    *v82 = 24;
    *(v82 + 8) = 18;
    v72 = v81;
    *&v73 = vdupq_n_s64(0x25905uLL).u64[0];
    *(&v73 + 1) = *(v115 + v112[16] + 8);
    goto LABEL_29;
  }

  v51 = 0;
  v106 = v32 + 8;
  v107 = (v118 + 16);
  v105 = (v118 + 32);
  v100 = (v99 + 4);
  v103 = (v99 + 1);
  v99 = (v108 + 32);
  v108 += 8;
  v52 = v111;
  v53 = v104;
  while (1)
  {
    v55 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v55)
    {
      (*(v118 + 16))(v136, v36 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v51, v53);
    }

    else
    {
      v71 = sub_1CF9E7998();
      if (v101 != 8)
      {
        goto LABEL_39;
      }

      v124 = v71;
      (*v107)(v136, &v124, v53);
      swift_unknownObjectRelease();
    }

    v56 = v51 + 1;
    v57 = v117;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    (*v105)(v43, v136, v53);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v58 = v43;
      v59 = v116;
      v60 = (*v99)(v57, v58, v116);
      v61 = (*(*v35 + 176))(v60);
      sub_1CF6E184C(v61, v57, *(v106 + v112[16]), 1, 1u, v120, v121, v122, v134);
      if (v34)
      {
        (*v108)(v57, v59);
        v36, v91, v92, v93, v94, v95, v96, v97;

        return;
      }

      v110 = v134[1];
      v113 = v134[0];
      v62 = v135;
      (*v108)(v57, v59);

      if (*&v134[0])
      {
        goto LABEL_32;
      }

      v43 = v114;
      v52 = v111;
    }

    else
    {
      v70 = v102;
      (*v100)(v52, v43, v102);
      sub_1CF6E184C(v35, v52, *(v106 + v112[16]), 0, 2u, v120, v121, v122, v132);
      if (v34)
      {
        (*v103)(v52, v70);
        v36, v84, v85, v86, v87, v88, v89, v90;
        return;
      }

      v110 = v132[1];
      v113 = v132[0];
      v62 = v133;
      (*v103)(v52, v70);
      if (*&v132[0])
      {
LABEL_32:
        v119, v63, v64, v65, v66, v67, v68, v69;
        goto LABEL_33;
      }
    }

    v36 = v119;
    v54 = sub_1CF9E6DF8();
    ++v51;
    v35 = v123;
    if (v56 == v54)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_1CF6E2768(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = *a2;
  v11 = v32[12];
  v12 = v32[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v27 - v17;
  if (byte_1EC4C23F0 != 2)
  {
    if (byte_1EC4C23F0)
    {
      return sub_1CF72A344(a1, 1, 0x12, 18);
    }

    return 16;
  }

  v28 = v15;
  v29 = v14;
  v30 = a1;
  v19 = a2[3];
  result = (*(*v19 + 584))(a3, a4, a5, v16);
  if (!v5)
  {
    v27 = a5;
    if (result)
    {
      byte_1EC4C23F0 = 1;
      a1 = v30;
      return sub_1CF72A344(a1, 1, 0x12, 18);
    }

    v21 = v29;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 48))(v21, AssociatedConformanceWitness);
    v23 = v32[11];
    v24 = v32[13];
    v31[0] = v12;
    v31[1] = v23;
    v31[2] = v11;
    v31[3] = v24;
    v25 = type metadata accessor for Ingestion.DeferredRescan(0, v31);
    v26 = (*(*v19 + 328))(v18, v25, 0x8000, a3, a4, v27);
    (*(v28 + 8))(v18, v21);
    byte_1EC4C23F0 = v26 & 1;
    a1 = v30;
    if (v26)
    {
      return sub_1CF72A344(a1, 1, 0x12, 18);
    }

    return 16;
  }

  return result;
}

uint64_t sub_1CF6E2A6C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v94 = a1;
  v99 = a6;
  v10 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v82 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E5268();
  v83 = *(v12 - 8);
  v84 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = a2;
  v96 = a3;
  v97 = a4;
  v98 = a5;
  v89 = type metadata accessor for ItemReconciliation(0, &v95);
  v78 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v75 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v77 = &v75 - v16;
  v17 = sub_1CF9E6118();
  v79 = *(v17 - 8);
  v80 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = a5;
  v93 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = sub_1CF9E75D8();
  v87 = *(v20 - 8);
  v88 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v75 - v21;
  v86 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23);
  v76 = &v75 - v24;
  v90 = a4;
  v91 = a2;
  v25 = swift_getAssociatedTypeWitness();
  v26 = sub_1CF9E75D8();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v75 - v28;
  v30 = *(v25 - 1);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v75 - v33;
  v35 = v94;
  (*(v27 + 16))(v29, v32);
  if ((*(v30 + 48))(v29, 1, v25) != 1)
  {
    v65 = *(v30 + 32);
    v65(v34, v29, v25);
    v65(v99, v34, v25);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v67 = swift_getAssociatedConformanceWitness();
    v95 = v25;
    v96 = AssociatedTypeWitness;
    v97 = AssociatedConformanceWitness;
    v98 = v67;
    type metadata accessor for ReconciliationID(0, &v95);
    return swift_storeEnumTagMultiPayload();
  }

  v36 = v99;
  (*(v27 + 8))(v29, v26);
  v37 = v89;
  v38 = v87;
  v39 = v35;
  v40 = v35 + *(v89 + 52);
  v41 = v88;
  (*(v87 + 16))(v22, v40, v88);
  v42 = v86;
  if ((*(v86 + 48))(v22, 1, AssociatedTypeWitness) != 1)
  {
    v68 = *(v42 + 32);
    v69 = v76;
    v68(v76, v22, AssociatedTypeWitness);
    v68(v36, v69, AssociatedTypeWitness);
    v70 = swift_getAssociatedConformanceWitness();
    v71 = swift_getAssociatedConformanceWitness();
    v95 = v25;
    v96 = AssociatedTypeWitness;
    v97 = v70;
    v98 = v71;
    type metadata accessor for ReconciliationID(0, &v95);
    return swift_storeEnumTagMultiPayload();
  }

  (*(v38 + 8))(v22, v41);
  v43 = fpfs_current_or_default_log();
  v44 = v85;
  sub_1CF9E6128();
  v45 = v78;
  v46 = *(v78 + 16);
  v47 = v77;
  v46(v77, v39, v37);
  v48 = sub_1CF9E6108();
  v49 = sub_1CF9E72A8();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v95 = v99;
    *v50 = 136315138;
    v51 = v75;
    v46(v75, v47, v37);
    v52 = *(v45 + 8);
    v52(v47, v37);
    v53 = sub_1CF082CB0(v37);
    v55 = v54;
    v52(v51, v37);
    v56 = sub_1CEFD0DF0(v53, v55, &v95);
    v55, v57, v58, v59, v60, v61, v62, v63;
    *(v50 + 4) = v56;
    _os_log_impl(&dword_1CEFC7000, v48, v49, "RT entry without ID on either side: %s", v50, 0xCu);
    v64 = v99;
    __swift_destroy_boxed_opaque_existential_1(v99);
    MEMORY[0x1D386CDC0](v64, -1, -1);
    MEMORY[0x1D386CDC0](v50, -1, -1);

    (*(v79 + 8))(v85, v80);
  }

  else
  {
    (*(v45 + 8))(v47, v37);

    (*(v79 + 8))(v44, v80);
  }

  sub_1CF9E5148();
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF00BCE0(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
  v73 = v81;
  v74 = v84;
  sub_1CF9E57D8();
  sub_1CF9E50D8();
  (*(v83 + 8))(v73, v74);
  return swift_willThrow();
}

uint64_t sub_1CF6E3340(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v20 = AssociatedTypeWitness;
  v21 = v9;
  v22 = AssociatedConformanceWitness;
  v23 = v11;
  v12 = type metadata accessor for ReconciliationID(0, &v20);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - v14;
  v20 = v9;
  v21 = AssociatedTypeWitness;
  v22 = v11;
  v23 = AssociatedConformanceWitness;
  v16 = type metadata accessor for ReconciliationID(0, &v20);
  sub_1CF050768(v16, v15);
  LOBYTE(v11) = v19(v15);
  (*(v13 + 8))(v15, v12);
  return v11 & 1;
}

BOOL sub_1CF6E34F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[0] = swift_getAssociatedTypeWitness();
  v17[1] = swift_getAssociatedTypeWitness();
  v17[2] = swift_getAssociatedConformanceWitness();
  v17[3] = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for ReconciliationID(0, v17);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v17 - v14;
  (*(v9 + 16))(v11, a1, v8, v13);
  swift_getWitnessTable();
  sub_1CF9E7068();
  LOBYTE(a1) = sub_1CF9E6FF8();
  (*(v9 + 8))(v15, v8);
  return (a1 & 1) == 0;
}

void sub_1CF6E36F8(const void *a1, char **a2, char *a3, char *a4)
{
  v36 = a3;
  v37 = a2;
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v42, a1, 0x208uLL);
  v12 = *(v4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase);
  if (v12)
  {
    v35 = v4;
    v43 = MEMORY[0x1E69E7CD0];
    type metadata accessor for FPCK(0);
    v13 = memcpy(v40, a1, sizeof(v40));
    MEMORY[0x1EEE9AC00](v13);

    sub_1CF6DC314(v41, v40, v12, 0, v37, sub_1CF6FC3DC, &v30, v36, v39, a4);
    if (v5)
    {
    }

    else
    {
      v25 = v39[0];
      v34 = v39[1];
      v32 = BYTE1(v39[2]);
      v33 = LOBYTE(v39[2]);
      v26 = BYTE2(v39[2]);
      v27 = v39[3];
      v28 = v39[4];
      memcpy(v39, v41, sizeof(v39));
      memcpy(v38, v41, sizeof(v38));
      v29 = v25;
      sub_1CF6E3AAC(v38, v42, v25, v34, v33, v32, v26, v27, v28, 2, v37, v36, a4);

      sub_1CEFCCC44(v39, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    }

    v43, v14, v15, v16, v17, v18, v19, v20;
  }

  else
  {
    v21 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v22 = sub_1CF9E6108();
    v23 = sub_1CF9E72A8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1CEFC7000, v22, v23, "Update for pending set, db is not a sql db", v24, 2u);
      MEMORY[0x1D386CDC0](v24, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
  }
}

BOOL sub_1CF6E3A34(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  sub_1CEFD0988(*a1, v2, v3);
  LOBYTE(v1) = sub_1CF6E9D5C(&v5, v1, v2 | (v3 << 8));
  sub_1CEFD0994(v5, v6, v7);
  return (v1 & 1) == 0;
}

void *sub_1CF6E3AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, uint64_t a11, _TtC18FileProviderDaemon8FSTester *a12, uint64_t a13)
{
  MEMORY[0x1EEE9AC00](a1);
  v15 = v14;
  v40 = v16;
  v41 = v17;
  v29 = v18;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = a10;
  memcpy(__dst, v25, sizeof(__dst));
  result = memcpy(v39, v24, 0x208uLL);
  if ((*(v13 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions) & 0x80) == 0)
  {
    if (!v22)
    {
LABEL_9:
      __break(1u);
      return result;
    }

    sub_1CF6DAB2C(v26, v22, v20, v29, v40, v41, v15, a9 & 1, a10 != 2, a11, a12, a13);
  }

  memcpy(__src, __dst, sizeof(__src));
  nullsub_1();
  memcpy(v35, __src, sizeof(v35));
  memcpy(v37, v39, sizeof(v37));
  nullsub_1();
  result = memcpy(v34, v37, sizeof(v34));
  v32 = 0;
  v33 = -1;
  if (!v22)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a10 == 2)
  {
    v27 = __dst[31] == 0;
  }

  sub_1CEFCCBDC(__dst, v31, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CEFCCBDC(v39, v31, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CF6D6C14(v35, v34, &v32, v22, v27 & 1, v29, v40, v41, a11, a12, a13);
  memcpy(v30, v34, sizeof(v30));
  sub_1CEFCCC44(v30, &unk_1EC4BFC20, &unk_1CFA0A290);
  memcpy(v31, v35, sizeof(v31));
  return sub_1CEFCCC44(v31, &unk_1EC4BFC20, &unk_1CFA0A290);
}

uint64_t sub_1CF6E3CE8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v194 = v1;
  v214 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v192 = v9;
  v195 = v11;
  v196 = v10;
  v13 = v12;
  v14 = sub_1CF9E6118();
  v191 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v186 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v190 = &v186 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v188 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v189 = (&v186 - v20);
  result = sub_1CF6CF224("FSSnapshotAndFPSnapshotCheck()", 30, 2, 2930);
  if ((result & 1) == 0)
  {
    *v6 = 0;
    return result;
  }

  if (v13 & 1) != 0 || (swift_beginAccess(), (sub_1CF052620()))
  {
    v13 = 0;
    v193 = 1;
  }

  else
  {
    v22 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
    v23 = swift_beginAccess();
    v24 = *(v8 + v22);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_135;
    }

    v193 = 0;
    *(v8 + v22) = v26;
    v13 = 0x20000000;
  }

  v27 = v214;
  swift_beginAccess();
  v28 = *(v27 + 24);
  v29 = *v28->tree;
  v187 = v13;
  if (!v29)
  {
    goto LABEL_16;
  }

  sub_1CEFE863C(v195);
  if ((v30 & 1) == 0)
  {
    v28, v30, v31, v32, v33, v34, v35, v36;
LABEL_16:
    sub_1CF4858E8(v212);
LABEL_17:
    memcpy(v213, v212, sizeof(v213));
    v4 = 0;
    v214 = 1;
    goto LABEL_18;
  }

  v28, v37, v38, v39, v40, v41, v42, v43;
  sub_1CEFCCBDC(v192, v208, &qword_1EC4C0700, &qword_1CFA05B10);
  if (!*(&v208[1] + 1))
  {

    sub_1CEFCCC44(v208, &qword_1EC4C0700, &qword_1CFA05B10);
    goto LABEL_16;
  }

  sub_1CF054EA0(v208, v209);
  v44 = v210;
  v45 = v211;
  v46 = __swift_project_boxed_opaque_existential_1(v209, v210);
  v47 = *(v196 + 8);
  v206 = *v196;
  v207 = v47;
  v48 = v194;
  sub_1CF20A25C(&v206, 0, v46, v44, v45, v208);
  v49 = v48;
  if (v48)
  {
    v50 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v51 = v48;
    v52 = sub_1CF9E6108();
    v53 = sub_1CF9E72A8();

    if (os_log_type_enabled(v52, v53))
    {
      v19 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v214 = v52;
      v55 = v54;
      *v19 = 138543362;
      swift_getErrorValue();
      v194 = v48;
      v56 = Error.prettyDescription.getter(v205[67], v205[68]);
      *(v19 + 4) = v56;
      *v55 = v56;
      v57 = v214;
      _os_log_impl(&dword_1CEFC7000, v214, v53, "FPCK: error fetching the item in the reconciliation table: %{public}@", v19, 0xCu);
      sub_1CEFCCC44(v55, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v55, -1, -1);
      MEMORY[0x1D386CDC0](v19, -1, -1);
    }

    else
    {
    }

    v13 = v187;
    v191[1](v16, v14);
    sub_1CF4858E8(v208);
    __swift_destroy_boxed_opaque_existential_1(v209);
    memcpy(v212, v208, sizeof(v212));
    v194 = 0;
    goto LABEL_17;
  }

  memcpy(v204, v208, sizeof(v204));
  memcpy(v205, v208, 0x210uLL);
  if (sub_1CF08B99C(v205) == 1)
  {
    v194 = 0;
    sub_1CF4858E8(v199);
    __swift_destroy_boxed_opaque_existential_1(v209);
    memcpy(v212, v199, sizeof(v212));
    v13 = v187;
    goto LABEL_17;
  }

  memcpy(v203, v205, sizeof(v203));
  nullsub_1();
  __swift_destroy_boxed_opaque_existential_1(v209);
  sub_1CEFCCBDC(v192, v199, &qword_1EC4C0700, &qword_1CFA05B10);
  v13 = v187;
  if (!*(&v199[1] + 1))
  {
    v194 = 0;
    sub_1CEFCCC44(v199, &qword_1EC4C0700, &qword_1CFA05B10);
    memcpy(v212, v203, sizeof(v212));
    goto LABEL_17;
  }

  sub_1CF054EA0(v199, v200);
  sub_1CEFCCBDC(v204, v199, &unk_1EC4BFD20, &unk_1CFA05440);
  if (qword_1EDEABDE0 != -1)
  {
    swift_once();
  }

  if ((v205[3] & (qword_1EDEABDE8 | 0x10)) != 0 || (v205[2] & 0x51) != 0 || (v205[33] & (qword_1EDEABDE8 | 0x10)) != 0 || (v205[32] & 0x51) != 0 || LOBYTE(v205[17]) == 1 || LOBYTE(v205[43]) == 1)
  {
    sub_1CEFCCC44(v204, &unk_1EC4BFD20, &unk_1CFA05440);
    goto LABEL_122;
  }

  if (LOBYTE(v205[4]) != 5 || BYTE1(v205[17]) != 6 || LOBYTE(v205[1]) != 255 && v205[31] && !LOBYTE(v205[43]) && (v205[24] & 0xF000000000000000) != 0xB000000000000000 || LOBYTE(v205[20]) != 3 && (LOBYTE(v205[20]) != 4 || v205[18] & 0xFFFFFFFFFFFFFFFELL | v205[19]) || LOBYTE(v205[46]) != 3 && (LOBYTE(v205[46]) != 4 || v205[44] & 0xFFFFFFFFFFFFFFFELL | v205[45]))
  {
    sub_1CEFCCC44(v204, &unk_1EC4BFD20, &unk_1CFA05440);
    v13 = v187;
    goto LABEL_122;
  }

  v173 = v201;
  v174 = v202;
  v175 = __swift_project_boxed_opaque_existential_1(v200, v201);
  v176 = *(v196 + 8);
  *&v199[0] = *v196;
  BYTE8(v199[0]) = v176;
  v177 = sub_1CF70258C(v199, v195, v175, v173, v174, v190);
  v194 = v48;
  if ((*(v188 + 48))(v190, 1, v19, v177) == 1)
  {
    sub_1CEFCCC44(v204, &unk_1EC4BFD20, &unk_1CFA05440);
    sub_1CEFCCC44(v190, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v49 = v194;
    v13 = v187;
LABEL_122:
    __swift_destroy_boxed_opaque_existential_1(v200);
    if (v193)
    {
      return sub_1CEFCCC44(v204, &unk_1EC4BFD20, &unk_1CFA05440);
    }

    goto LABEL_160;
  }

  v178 = v189;
  sub_1CEFE55D0(v190, v189, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v179 = v201;
  v180 = v202;
  v181 = __swift_project_boxed_opaque_existential_1(v200, v201);
  v182 = v194;
  v183 = sub_1CF702E04(v197, *v178, v195, v181, v179, v180);
  v194 = v182;
  if (v182)
  {
    sub_1CEFCCC44(v204, &unk_1EC4BFD20, &unk_1CFA05440);
    sub_1CEFCCC44(v204, &unk_1EC4BFD20, &unk_1CFA05440);
    sub_1CEFCCC44(v189, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    return __swift_destroy_boxed_opaque_existential_1(v200);
  }

  v199[12] = v197[12];
  v199[13] = v197[13];
  v199[14] = v197[14];
  *&v199[15] = v198;
  v199[8] = v197[8];
  v199[9] = v197[9];
  v199[10] = v197[10];
  v199[11] = v197[11];
  v199[4] = v197[4];
  v199[5] = v197[5];
  v199[6] = v197[6];
  v199[7] = v197[7];
  v199[0] = v197[0];
  v199[1] = v197[1];
  v199[2] = v197[2];
  v199[3] = v197[3];
  v184 = v189;
  v185 = sub_1CF6E6314(v196, v189, v197, *(v214 + 32), v183);
  sub_1CEFCCC44(v204, &unk_1EC4BFD20, &unk_1CFA05440);
  sub_1CEFCCC44(v199, &qword_1EC4BECF0, &unk_1CF9FEEB0);
  sub_1CEFCCC44(v184, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  __swift_destroy_boxed_opaque_existential_1(v200);
  v214 = v185;
  if (v185)
  {
    memcpy(v213, v203, sizeof(v213));
    v4 = 0;
    v13 = v187;
    goto LABEL_18;
  }

  v49 = v194;
  v13 = v187;
  if (v193)
  {
    return sub_1CEFCCC44(v204, &unk_1EC4BFD20, &unk_1CFA05440);
  }

LABEL_160:
  v194 = v49;
  memcpy(v213, v203, sizeof(v213));
  v214 = 0;
  v4 = 1;
LABEL_18:
  v58 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck;
  v23 = swift_beginAccess();
  v59 = *(v8 + v58);
  v25 = __OFADD__(v59, 1);
  v60 = v59 + 1;
  if (v25)
  {
    goto LABEL_134;
  }

  LODWORD(v195) = v4;
  *(v8 + v58) = v60;
  v61 = v13;
  v4 = *(v8 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler);
  v62 = *(v196 + 24);
  v204[0] = *(v196 + 16);
  LOBYTE(v204[1]) = v62;

  v205[0] = VFSItemID.description.getter(v63);
  v205[1] = v64;
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v65 = sub_1CF9E6888();
  v66 = [v65 fp_obfuscatedFilename];

  v67 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v69 = v68;

  MEMORY[0x1D3868CC0](v67, v69);
  v69, v70, v71, v72, v73, v74, v75, v76;
  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
  v77 = sub_1CF7F5394(v13);
  v79 = v78;
  MEMORY[0x1D3868CC0](v77);
  v79, v80, v81, v82, v83, v84, v85, v86;
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v87 = sub_1CF7F57DC(v214);
  v89 = v88;
  MEMORY[0x1D3868CC0](v87);
  v89, v90, v91, v92, v93, v94, v95, v96;
  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  v19 = v205[1];
  (v4)(v205[0], v205[1]);

  v19, v97, v98, v99, v100, v101, v102, v103;
  if (v193)
  {
    v104 = 0;
    goto LABEL_48;
  }

  v14 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredDiskVsFSSnapshotDiffCounters;
  v105 = __clz(__rbit64(v13));
  v13 = 1 << v105;
  v106 = ~(1 << v105);
  if ((v13 & v61) != 0)
  {
    v4 = v106;
  }

  else
  {
    v4 = 0x20000000;
  }

  swift_beginAccess();
  sub_1CEFF7124(0, 0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v204[0] = *(v8 + v14);
  v108 = v204[0];
  *(v8 + v14) = 0x8000000000000000;
  v23 = sub_1CF7D52B4(v13);
  v110 = v108[2];
  v111 = (v109 & 1) == 0;
  v25 = __OFADD__(v110, v111);
  v112 = v110 + v111;
  if (v25)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  LOBYTE(v19) = v109;
  if (v108[3] < v112)
  {
    sub_1CF7C7708(v112, isUniquelyReferenced_nonNull_native);
    v108 = v204[0];
    v23 = sub_1CF7D52B4(v13);
    if ((v19 & 1) == (v113 & 1))
    {
      goto LABEL_29;
    }

LABEL_27:
    v23 = sub_1CF9E8108();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_136;
  }

LABEL_29:
  *(v8 + v14) = v108;
  if ((v19 & 1) == 0)
  {
    goto LABEL_30;
  }

  while (1)
  {
LABEL_32:
    v116 = v108[7];
    v117 = *(v116 + 8 * v23);
    v25 = __OFADD__(v117, 1);
    v118 = v117 + 1;
    if (v25)
    {
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    v4 &= v187;
    *(v116 + 8 * v23) = v118;
    swift_endAccess();
    v104 = sub_1CF193338;
    if (v4)
    {
      while (1)
      {
        v13 = v4 & -v4;
        swift_beginAccess();
        sub_1CEFF7124(sub_1CF193338, 0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v204[0] = *(v8 + v14);
        v108 = v204[0];
        *(v8 + v14) = 0x8000000000000000;
        v23 = sub_1CF7D52B4(v13);
        v120 = v108[2];
        v121 = (v119 & 1) == 0;
        v25 = __OFADD__(v120, v121);
        v122 = v120 + v121;
        if (v25)
        {
          goto LABEL_125;
        }

        LOBYTE(v19) = v119;
        if (v108[3] < v122)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_39;
        }

        v130 = v23;
        sub_1CF7D1218();
        v23 = v130;
        v108 = v204[0];
        *(v8 + v14) = v204[0];
        if ((v19 & 1) == 0)
        {
LABEL_40:
          v108[(v23 >> 6) + 8] |= 1 << v23;
          *(v108[6] + 8 * v23) = v13;
          *(v108[7] + 8 * v23) = 0;
          v124 = v108[2];
          v25 = __OFADD__(v124, 1);
          v125 = v124 + 1;
          if (v25)
          {
            goto LABEL_129;
          }

          v108[2] = v125;
        }

LABEL_42:
        v126 = v108[7];
        v127 = *(v126 + 8 * v23);
        v25 = __OFADD__(v127, 1);
        v128 = v127 + 1;
        if (v25)
        {
          goto LABEL_126;
        }

        *(v126 + 8 * v23) = v128;
        swift_endAccess();
        v104 = sub_1CF193338;
        v129 = v13 == v4;
        v4 ^= v13;
        if (v129)
        {
          goto LABEL_48;
        }
      }

      sub_1CF7C7708(v122, isUniquelyReferenced_nonNull_native);
      v108 = v204[0];
      v23 = sub_1CF7D52B4(v4 & -v4);
      if ((v19 & 1) != (v123 & 1))
      {
        goto LABEL_27;
      }

LABEL_39:
      *(v8 + v14) = v108;
      if ((v19 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_42;
    }

LABEL_48:
    v192 = v104;
    if (v195)
    {
      v131 = 0;
      goto LABEL_85;
    }

    v14 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredFSSnapshotVsFPSnapshotDiffCounters;
    v132 = __clz(__rbit64(v214));
    v133 = v214 & ~(1 << v132);
    if (((1 << v132) & v214) == 0)
    {
      v133 = v214;
    }

    if (v132 <= 0x3F)
    {
      v13 = 1 << v132;
    }

    else
    {
      v13 = 0;
    }

    if (v132 <= 0x3F)
    {
      v134 = v133;
    }

    else
    {
      v134 = v214;
    }

    swift_beginAccess();
    sub_1CEFF7124(0, 0);
    v135 = swift_isUniquelyReferenced_nonNull_native();
    v204[0] = *(v8 + v14);
    v136 = v204[0];
    *(v8 + v14) = 0x8000000000000000;
    v23 = sub_1CF7D52B4(v13);
    v138 = v136[2];
    v139 = (v137 & 1) == 0;
    v25 = __OFADD__(v138, v139);
    v140 = v138 + v139;
    if (v25)
    {
      goto LABEL_127;
    }

    LOBYTE(v19) = v137;
    if (v136[3] < v140)
    {
      sub_1CF7C7780(v140, v135);
      v136 = v204[0];
      v23 = sub_1CF7D52B4(v13);
      if ((v19 & 1) == (v141 & 1))
      {
        goto LABEL_63;
      }

LABEL_61:
      v23 = sub_1CF9E8108();
      __break(1u);
    }

    if (v135)
    {
LABEL_63:
      *(v8 + v14) = v136;
      if (v19)
      {
        goto LABEL_66;
      }

      goto LABEL_64;
    }

    v4 = v23;
    sub_1CF7D1254();
    v23 = v4;
    v136 = v204[0];
    *(v8 + v14) = v204[0];
    if (v19)
    {
      goto LABEL_66;
    }

LABEL_64:
    v136[(v23 >> 6) + 8] |= 1 << v23;
    *(v136[6] + 8 * v23) = v13;
    *(v136[7] + 8 * v23) = 0;
    v142 = v136[2];
    v25 = __OFADD__(v142, 1);
    v143 = v142 + 1;
    if (!v25)
    {
      break;
    }

LABEL_130:
    while (1)
    {
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      v172 = v23;
      sub_1CF7D1218();
      v23 = v172;
      v108 = v204[0];
      *(v8 + v14) = v204[0];
      if (v19)
      {
        break;
      }

LABEL_30:
      v108[(v23 >> 6) + 8] |= 1 << v23;
      *(v108[6] + 8 * v23) = v13;
      *(v108[7] + 8 * v23) = 0;
      v114 = v108[2];
      v25 = __OFADD__(v114, 1);
      v115 = v114 + 1;
      if (!v25)
      {
        v108[2] = v115;
        goto LABEL_32;
      }

LABEL_129:
      __break(1u);
    }
  }

  v136[2] = v143;
LABEL_66:
  v144 = v136[7];
  v145 = *(v144 + 8 * v23);
  v25 = __OFADD__(v145, 1);
  v146 = v145 + 1;
  if (v25)
  {
    goto LABEL_128;
  }

  *(v144 + 8 * v23) = v146;
  swift_endAccess();
  if (v134)
  {
    v4 = 0x8000000000000000;
    while (1)
    {
      v13 = v134 & -v134;
      if (v13)
      {
        v134 ^= v13;
      }

      swift_beginAccess();
      sub_1CEFF7124(sub_1CF193338, 0);
      v135 = swift_isUniquelyReferenced_nonNull_native();
      v204[0] = *(v8 + v14);
      v136 = v204[0];
      *(v8 + v14) = 0x8000000000000000;
      v23 = sub_1CF7D52B4(v13);
      v148 = v136[2];
      v149 = (v147 & 1) == 0;
      v25 = __OFADD__(v148, v149);
      v150 = v148 + v149;
      if (v25)
      {
        goto LABEL_127;
      }

      LOBYTE(v19) = v147;
      if (v136[3] < v150)
      {
        break;
      }

      if (v135)
      {
        goto LABEL_76;
      }

      v157 = v23;
      sub_1CF7D1254();
      v23 = v157;
      v136 = v204[0];
      *(v8 + v14) = v204[0];
      if ((v19 & 1) == 0)
      {
LABEL_77:
        v136[(v23 >> 6) + 8] |= 1 << v23;
        *(v136[6] + 8 * v23) = v13;
        *(v136[7] + 8 * v23) = 0;
        v152 = v136[2];
        v25 = __OFADD__(v152, 1);
        v153 = v152 + 1;
        if (v25)
        {
          goto LABEL_130;
        }

        v136[2] = v153;
      }

LABEL_79:
      v154 = v136[7];
      v155 = *(v154 + 8 * v23);
      v25 = __OFADD__(v155, 1);
      v156 = v155 + 1;
      if (v25)
      {
        goto LABEL_128;
      }

      *(v154 + 8 * v23) = v156;
      swift_endAccess();
      if (!v134)
      {
        goto LABEL_84;
      }
    }

    sub_1CF7C7780(v150, v135);
    v136 = v204[0];
    v23 = sub_1CF7D52B4(v13);
    if ((v19 & 1) != (v151 & 1))
    {
      goto LABEL_61;
    }

LABEL_76:
    *(v8 + v14) = v136;
    if ((v19 & 1) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_79;
  }

LABEL_84:
  v131 = sub_1CF193338;
  v104 = v192;
LABEL_85:
  v195 = *(v8 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsRepair);
  if (v195)
  {
    v191 = v131;
    if (v193)
    {
      sub_1CEFCCC44(v213, &unk_1EC4BFC20, &unk_1CFA0A290);
      sub_1CEFF7124(v192, 0);
      v158 = v191;
      return sub_1CEFF7124(v158, 0);
    }

    v214 = *v196;
    LODWORD(v196) = *(v196 + 8);
    v19 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairedDiskVsFSSnapshotDiffCounters;

    v14 = 0;
    v160 = v187;
    do
    {
      isUniquelyReferenced_nonNull_native = 1 << __clz(__rbit64(v160));
      if ((isUniquelyReferenced_nonNull_native & v160) != 0)
      {
        v4 = ~isUniquelyReferenced_nonNull_native;
      }

      else
      {
        v4 = -1;
      }

      v205[0] = v214;
      LOBYTE(v205[1]) = v196;
      if (sub_1CF707D94(isUniquelyReferenced_nonNull_native, v205))
      {
        swift_beginAccess();
        sub_1CEFF7124(v14, 0);
        v13 = swift_isUniquelyReferenced_nonNull_native();
        v204[0] = *(v8 + v19);
        v108 = v204[0];
        *(v8 + v19) = 0x8000000000000000;
        v23 = sub_1CF7D52B4(isUniquelyReferenced_nonNull_native);
        v162 = v108[2];
        v163 = (v161 & 1) == 0;
        v25 = __OFADD__(v162, v163);
        v164 = v162 + v163;
        if (v25)
        {
          goto LABEL_131;
        }

        v14 = v161;
        if (v108[3] >= v164)
        {
          if ((v13 & 1) == 0)
          {
            v171 = v23;
            sub_1CF7D1218();
            v23 = v171;
            v108 = v204[0];
          }
        }

        else
        {
          sub_1CF7C7708(v164, v13);
          v108 = v204[0];
          v23 = sub_1CF7D52B4(isUniquelyReferenced_nonNull_native);
          if ((v14 & 1) != (v165 & 1))
          {
            goto LABEL_27;
          }
        }

        v13 = v195;
        *(v8 + v19) = v108;
        if ((v14 & 1) == 0)
        {
          v108[(v23 >> 6) + 8] |= 1 << v23;
          *(v108[6] + 8 * v23) = isUniquelyReferenced_nonNull_native;
          *(v108[7] + 8 * v23) = 0;
          v166 = v108[2];
          v25 = __OFADD__(v166, 1);
          v167 = v166 + 1;
          if (v25)
          {
            goto LABEL_133;
          }

          v108[2] = v167;
        }

        v168 = v108[7];
        v169 = *(v168 + 8 * v23);
        v25 = __OFADD__(v169, 1);
        v170 = v169 + 1;
        if (v25)
        {
          goto LABEL_132;
        }

        *(v168 + 8 * v23) = v170;
        swift_endAccess();
        v14 = sub_1CF193338;
      }

      v160 &= v4;
    }

    while (v160);

    sub_1CEFCCC44(v213, &unk_1EC4BFC20, &unk_1CFA0A290);
    sub_1CEFF7124(v192, 0);
    sub_1CEFF7124(v191, 0);
    return sub_1CEFF7124(v14, 0);
  }

  else
  {
    v159 = v104;
    sub_1CEFCCC44(v213, &unk_1EC4BFC20, &unk_1CFA0A290);
    sub_1CEFF7124(v159, 0);
    v158 = v131;
    return sub_1CEFF7124(v158, 0);
  }
}

uint64_t sub_1CF6E512C(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v338 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v331 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v331 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v335 = (&v331 - v14);
  v336 = v12;
  v16 = (a1 + 5);
  v15 = *(a1 + 10);
  if (v15 == 1)
  {
    v17 = *(a1 + 36) > 1u;
    if (!a1[3])
    {
      v52 = 0;
      goto LABEL_16;
    }

    v337 = a4;
  }

  else
  {
    if (!a1[3])
    {
      v52 = 0;
      if (v15 == 4)
      {
LABEL_34:
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
        v71 = v52 | 8;
        v72 = *(a2 + *(v73 + 48)) == 2;
LABEL_35:
        if (!v72)
        {
          v52 = v71;
        }

        goto LABEL_41;
      }

      if (v15 == 3)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    v337 = a4;
    v17 = 0;
  }

  v18 = sub_1CF9E6A58();
  v20 = v19;
  v21 = *(a2 + 136);
  *&v345 = *(a2 + 128);
  *(&v345 + 1) = v21;
  v343 = 47;
  v344 = 0xE100000000000000;
  v341 = 58;
  v342 = 0xE100000000000000;
  sub_1CEFE4E68();
  v23 = sub_1CF9E7668();
  v29 = v22;
  if (v18 == v23 && v20 == v22)
  {
    v20, v22, v23, v24, v25, v26, v27, v28;
    v29, v30, v31, v32, v33, v34, v35, v36;
    goto LABEL_10;
  }

  v37 = sub_1CF9E8048();
  v20, v38, v39, v40, v41, v42, v43, v44;
  v29, v45, v46, v47, v48, v49, v50, v51;
  if ((v37 & 1) == 0)
  {
    v62 = *(a1 + 27);
    v355 = *(a1 + 25);
    v356 = v62;
    v63 = *(a1 + 31);
    v357 = *(a1 + 29);
    v358 = v63;
    v64 = *(a1 + 19);
    v351 = *(a1 + 17);
    v352 = v64;
    v65 = *(a1 + 23);
    v353 = *(a1 + 21);
    v354 = v65;
    v66 = *(a1 + 11);
    v347 = *(a1 + 9);
    v348 = v66;
    v67 = *(a1 + 15);
    v349 = *(a1 + 13);
    v350 = v67;
    v68 = *(a1 + 7);
    v345 = *v16;
    v346 = v68;
    v69 = sub_1CEFE47B0(&v345);
    v15 = *v16;
    if (v69)
    {
      v52 = 0;
    }

    else if (v17)
    {
      v52 = 0;
    }

    else
    {
      v52 = 2;
    }

    LOBYTE(a4) = v337;
    if (v15 > 2)
    {
      if (v15 == 3)
      {
        goto LABEL_38;
      }

      goto LABEL_33;
    }

    if (v15 != 1)
    {
LABEL_30:
      if (v15 != 2)
      {
        goto LABEL_41;
      }

      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      v71 = v52 | 8;
      v72 = *(a2 + *(v70 + 48)) == 1;
      goto LABEL_35;
    }

LABEL_16:
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48);
    v54 = *(a2 + v53);
    if (*(a2 + v53))
    {
      v55 = *(a1 + 27);
      v355 = *(a1 + 25);
      v356 = v55;
      v56 = *(a1 + 31);
      v357 = *(a1 + 29);
      v358 = v56;
      v57 = *(a1 + 19);
      v351 = *(a1 + 17);
      v352 = v57;
      v58 = *(a1 + 23);
      v353 = *(a1 + 21);
      v354 = v58;
      v59 = *(a1 + 11);
      v347 = *(a1 + 9);
      v348 = v59;
      v60 = *(a1 + 15);
      v349 = *(a1 + 13);
      v350 = v60;
      v61 = *(a1 + 7);
      v345 = *v16;
      v346 = v61;
      if (((v54 > 2) & sub_1CF1ADD54(&v345)) == 0)
      {
        v52 |= 8uLL;
      }
    }

    goto LABEL_41;
  }

LABEL_10:
  v52 = 0;
  v15 = *v16;
  if (*v16 <= 2)
  {
    LOBYTE(a4) = v337;
    if (v15 == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

  LOBYTE(a4) = v337;
  if (v15 != 3)
  {
LABEL_33:
    if (v15 != 4)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

LABEL_38:
  v74 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48));
  if (*v74 || (v74[*(type metadata accessor for ItemMetadata(0) + 112)] & 1) == 0)
  {
    v52 |= 8uLL;
  }

LABEL_41:
  v75 = fpfs_supports_parent_mtime_iopolicy();
  v76 = *v16;
  v340 = a1;
  if ((v75 & 1) != 0 || v76 != 2)
  {
    v337 = a2;
    v334 = v9;
    if (v76 == 3 || (a4 & 1) != 0)
    {
      v77 = v335;
      v82 = v336;
    }

    else
    {
      v77 = v335;
      sub_1CF9E5C88();
      v78 = sub_1CF9E5CF8();
      v79 = *(v78 - 8);
      v333 = *(v79 + 56);
      (v333)(v77, 0, 1, v78);
      v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48);
      v81 = type metadata accessor for ItemMetadata(0);
      v82 = v336;
      v83 = v337 + *(v81 + 32) + v80;
      a2 = v337;
      (*(v79 + 16))(v336, v83, v78);
      (v333)(v82, 0, 1, v78);
      LOBYTE(v78) = sub_1CF51586C(v82);
      sub_1CEFCCC44(v82, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFCCC44(v77, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      if ((v78 & 1) == 0)
      {
        v52 |= 0x10uLL;
      }
    }

    v333 = v52;
    sub_1CF9E5C88();
    v84 = sub_1CF9E5CF8();
    v85 = *(v84 - 8);
    v86 = *(v85 + 56);
    v86(v77, 0, 1, v84);
    v87 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48);
    v335 = type metadata accessor for ItemMetadata(0);
    v88 = v335[7];
    v89 = *(v85 + 16);
    v332 = v87;
    v89(v82, v87 + v88, v84);
    v86(v82, 0, 1, v84);
    LOBYTE(v85) = sub_1CF51586C(v82);
    sub_1CEFCCC44(v82, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v77, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v90 = 1;
    v91 = v334;
    if (v85)
    {
      v52 = v333;
    }

    else
    {
      v52 = v333 | 0x20;
    }

    if (*(v340 + 6) != 0)
    {
      sub_1CF9E5C88();
      v90 = 0;
    }

    v86(v91, v90, 1, v84);
    v92 = v335;
    v93 = sub_1CF51586C(v332 + v335[30]);
    sub_1CEFCCC44(v91, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    if ((v93 & 1) == 0)
    {
      v52 |= 0x40uLL;
    }

    v94 = *v16;
    a1 = v340;
    a2 = v337;
    if (*v16 != 2)
    {
      v95 = v340[7];
      v96 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48);
      if (v95 != *(v96 + v92[26]))
      {
        v52 |= 0x100uLL;
      }

      v97 = v16[11];
      v355 = v16[10];
      v356 = v97;
      v98 = v16[13];
      v357 = v16[12];
      v358 = v98;
      v99 = v16[7];
      v351 = v16[6];
      v352 = v99;
      v100 = v16[9];
      v353 = v16[8];
      v354 = v100;
      v101 = v16[3];
      v347 = v16[2];
      v348 = v101;
      v102 = v16[5];
      v349 = v16[4];
      v350 = v102;
      v103 = v16[1];
      v345 = *v16;
      v346 = v103;
      if (sub_1CEFE478C(&v345) && (*(v96 + v92[13]) & 1) == 0)
      {
        v52 |= 0x800000uLL;
      }

      else
      {
        v104 = v16[11];
        v355 = v16[10];
        v356 = v104;
        v105 = v16[13];
        v357 = v16[12];
        v358 = v105;
        v106 = v16[7];
        v351 = v16[6];
        v352 = v106;
        v107 = v16[9];
        v353 = v16[8];
        v354 = v107;
        v108 = v16[3];
        v347 = v16[2];
        v348 = v108;
        v109 = v16[5];
        v349 = v16[4];
        v350 = v109;
        v110 = v16[1];
        v345 = *v16;
        v346 = v110;
        if ((sub_1CEFE478C(&v345) & 1) == 0 && *(v96 + v92[13]))
        {
          v52 |= 0x1000000uLL;
        }
      }

      if (*(a1 + 5) != *(a2 + 40) && !(*(v96 + v92[20]) & 1 | (v94 == 4) | (v52 >> 13) & 1))
      {
        v52 |= 0x2000uLL;
      }
    }
  }

  v111 = *(a1 + 24);
  v112 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48);
  if (((*(v112 + 10) ^ v111) & 0x1C0) != 0)
  {
    v113 = v52 | 0x200;
  }

  else
  {
    v113 = v52;
  }

  v114 = type metadata accessor for ItemMetadata(0);
  v115 = v112 + v114[32];
  if (*(v115 + 8))
  {
    if (!a1[14])
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  if (a1[14] != *v115)
  {
LABEL_74:
    v113 |= 0x400uLL;
  }

LABEL_75:
  v116 = sub_1CF661030(a1[15], a1[16], *(a1 + 136));
  if (v116)
  {
    v117 = v116;
    v118 = sub_1CF6601AC(v116);
    v117, v119, v120, v121, v122, v123, v124, v125;
    sub_1CEFD57E0(0, &unk_1EC4C1190, 0x1E6967428);
    v126 = sub_1CF9E6D28();
    v118, v127, v128, v129, v130, v131, v132, v133;
    v134 = FPGetTagsDataForTags();

    v135 = sub_1CF9E5B88();
    v137 = v136;

    v138 = *(v112 + v114[31]);
    if (!v138)
    {
      if (v137 >> 60 != 15)
      {
        v139 = 0;
        v140 = 0xF000000000000000;
LABEL_87:
        sub_1CEFE48D8(v135, v137);
        sub_1CEFE48D8(v139, v140);
        goto LABEL_89;
      }

      goto LABEL_84;
    }
  }

  else
  {
    v135 = 0;
    v138 = *(v112 + v114[31]);
    v137 = 0xF000000000000000;
    if (!v138)
    {
LABEL_84:
      sub_1CEFE48D8(v135, v137);
      goto LABEL_85;
    }
  }

  v141 = sub_1CF6601AC(v138);
  sub_1CEFD57E0(0, &unk_1EC4C1190, 0x1E6967428);
  v142 = sub_1CF9E6D28();
  v141, v143, v144, v145, v146, v147, v148, v149;
  v150 = FPGetTagsDataForTags();

  v139 = sub_1CF9E5B88();
  v140 = v151;

  if (v137 >> 60 == 15)
  {
    if (v140 >> 60 != 15)
    {
      goto LABEL_87;
    }

    goto LABEL_84;
  }

  if (v140 >> 60 == 15)
  {
    goto LABEL_87;
  }

  sub_1CEFF05F4(v135, v137);
  sub_1CEFF05F4(v139, v140);
  v153 = sub_1CF328660(v135, v137, v139, v140);
  sub_1CEFE48D8(v139, v140);
  sub_1CEFE48D8(v135, v137);
  sub_1CEFE48D8(v139, v140);
  sub_1CEFE48D8(v135, v137);
  if (v153)
  {
LABEL_85:
    v152 = v340;
    goto LABEL_91;
  }

LABEL_89:
  v152 = v340;
  if ((v113 & 0x800) == 0)
  {
    v113 |= 0x800uLL;
  }

LABEL_91:
  v154 = (v112 + v114[14]);
  if (v152[22])
  {
    v155 = v154[1];
    if (v155)
    {
      v156 = *v154;

      if (sub_1CF9E6A58() == v156 && v155 == v157)
      {
        v157, v157, v158, v159, v160, v161, v162, v163;
        v155, v164, v165, v166, v167, v168, v169, v170;
      }

      else
      {
        v171 = v157;
        v172 = sub_1CF9E8048();
        v171, v173, v174, v175, v176, v177, v178, v179;
        v155, v180, v181, v182, v183, v184, v185, v186;
        if ((v172 & 1) == 0)
        {
          v113 |= 0x4000uLL;
        }
      }

      goto LABEL_101;
    }
  }

  else if (!v154[1])
  {
    goto LABEL_101;
  }

  if ((v113 & 0x4000) == 0)
  {
    v113 |= 0x4000uLL;
  }

LABEL_101:
  v187 = v16[11];
  v355 = v16[10];
  v356 = v187;
  v188 = v16[13];
  v357 = v16[12];
  v358 = v188;
  v189 = v16[7];
  v351 = v16[6];
  v352 = v189;
  v190 = v16[9];
  v353 = v16[8];
  v354 = v190;
  v191 = v16[3];
  v347 = v16[2];
  v348 = v191;
  v192 = v16[5];
  v349 = v16[4];
  v350 = v192;
  v193 = v16[1];
  v345 = *v16;
  v346 = v193;
  if (sub_1CEFE47F8(&v345) && (*(v112 + v114[20]) & 1) == 0)
  {
    v113 |= 0x8000uLL;
  }

  else
  {
    v194 = v16[11];
    v355 = v16[10];
    v356 = v194;
    v195 = v16[13];
    v357 = v16[12];
    v358 = v195;
    v196 = v16[7];
    v351 = v16[6];
    v352 = v196;
    v197 = v16[9];
    v353 = v16[8];
    v354 = v197;
    v198 = v16[3];
    v347 = v16[2];
    v348 = v198;
    v199 = v16[5];
    v349 = v16[4];
    v350 = v199;
    v200 = v16[1];
    v345 = *v16;
    v346 = v200;
    if ((sub_1CEFE47F8(&v345) & 1) == 0 && (*(v112 + v114[20]) & ((v113 & 0x10000) == 0)) != 0)
    {
      v113 |= 0x10000uLL;
    }
  }

  v201 = v16[11];
  v355 = v16[10];
  v356 = v201;
  v202 = v16[13];
  v357 = v16[12];
  v358 = v202;
  v203 = v16[7];
  v351 = v16[6];
  v352 = v203;
  v204 = v16[9];
  v353 = v16[8];
  v354 = v204;
  v205 = v16[3];
  v347 = v16[2];
  v348 = v205;
  v206 = v16[5];
  v349 = v16[4];
  v350 = v206;
  v207 = v16[1];
  v345 = *v16;
  v346 = v207;
  if ((sub_1CEFE47F8(&v345) & 1) == 0)
  {
    v208 = v16[11];
    v355 = v16[10];
    v356 = v208;
    v209 = v16[13];
    v357 = v16[12];
    v358 = v209;
    v210 = v16[7];
    v351 = v16[6];
    v352 = v210;
    v211 = v16[9];
    v353 = v16[8];
    v354 = v211;
    v212 = v16[3];
    v347 = v16[2];
    v348 = v212;
    v213 = v16[5];
    v349 = v16[4];
    v350 = v213;
    v214 = v16[1];
    v345 = *v16;
    v346 = v214;
    if (sub_1CF198AD4(&v345) && !*(v112 + v114[21]))
    {
      v113 |= 0x20000uLL;
    }

    else
    {
      v215 = v16[11];
      v355 = v16[10];
      v356 = v215;
      v216 = v16[13];
      v357 = v16[12];
      v358 = v216;
      v217 = v16[7];
      v351 = v16[6];
      v352 = v217;
      v218 = v16[9];
      v353 = v16[8];
      v354 = v218;
      v219 = v16[3];
      v347 = v16[2];
      v348 = v219;
      v220 = v16[5];
      v349 = v16[4];
      v350 = v220;
      v221 = v16[1];
      v345 = *v16;
      v346 = v221;
      if ((sub_1CF198AD4(&v345) & 1) == 0 && (v113 & 0x40000) == 0 && *(v112 + v114[21]) != 0)
      {
        v113 |= 0x40000uLL;
      }
    }
  }

  v223 = v16[11];
  v355 = v16[10];
  v356 = v223;
  v224 = v16[13];
  v357 = v16[12];
  v358 = v224;
  v225 = v16[7];
  v351 = v16[6];
  v352 = v225;
  v226 = v16[9];
  v353 = v16[8];
  v354 = v226;
  v227 = v16[3];
  v347 = v16[2];
  v348 = v227;
  v228 = v16[5];
  v349 = v16[4];
  v350 = v228;
  v229 = v16[1];
  v345 = *v16;
  v346 = v229;
  if (sub_1CEFE47A4(&v345) && (*(v112 + v114[15]) & 1) == 0)
  {
    v113 |= 0x80000uLL;
  }

  else
  {
    v230 = v16[11];
    v355 = v16[10];
    v356 = v230;
    v231 = v16[13];
    v357 = v16[12];
    v358 = v231;
    v232 = v16[7];
    v351 = v16[6];
    v352 = v232;
    v233 = v16[9];
    v353 = v16[8];
    v354 = v233;
    v234 = v16[3];
    v347 = v16[2];
    v348 = v234;
    v235 = v16[5];
    v349 = v16[4];
    v350 = v235;
    v236 = v16[1];
    v345 = *v16;
    v346 = v236;
    if ((sub_1CEFE47A4(&v345) & 1) == 0 && (*(v112 + v114[15]) & ((v113 & 0x100000) == 0)) != 0)
    {
      v113 |= 0x100000uLL;
    }
  }

  v237 = v16[11];
  v355 = v16[10];
  v356 = v237;
  v238 = v16[13];
  v357 = v16[12];
  v358 = v238;
  v239 = v16[7];
  v351 = v16[6];
  v352 = v239;
  v240 = v16[9];
  v353 = v16[8];
  v354 = v240;
  v241 = v16[3];
  v347 = v16[2];
  v348 = v241;
  v242 = v16[5];
  v349 = v16[4];
  v350 = v242;
  v243 = v16[1];
  v345 = *v16;
  v346 = v243;
  if (sub_1CEFE47BC(&v345) != *(v112 + v114[11]))
  {
    v244 = v16[11];
    v355 = v16[10];
    v356 = v244;
    v245 = v16[13];
    v357 = v16[12];
    v358 = v245;
    v246 = v16[7];
    v351 = v16[6];
    v352 = v246;
    v247 = v16[9];
    v353 = v16[8];
    v354 = v247;
    v248 = v16[3];
    v347 = v16[2];
    v348 = v248;
    v249 = v16[5];
    v349 = v16[4];
    v350 = v249;
    v250 = v16[1];
    v345 = *v16;
    v346 = v250;
    if (sub_1CEFE47BC(&v345))
    {
      v113 |= 0x200000uLL;
    }

    else
    {
      v113 |= 0x400000uLL;
    }
  }

  v251 = v16[11];
  v355 = v16[10];
  v356 = v251;
  v252 = v16[13];
  v357 = v16[12];
  v358 = v252;
  v253 = v16[7];
  v351 = v16[6];
  v352 = v253;
  v254 = v16[9];
  v353 = v16[8];
  v354 = v254;
  v255 = v16[3];
  v347 = v16[2];
  v348 = v255;
  v256 = v16[5];
  v349 = v16[4];
  v350 = v256;
  v257 = v16[1];
  v345 = *v16;
  v346 = v257;
  if (sub_1CEFE4768(&v345) && (*(v112 + v114[10]) & 1) == 0)
  {
    v113 |= 0x2000000uLL;
  }

  else
  {
    v258 = v16[11];
    v355 = v16[10];
    v356 = v258;
    v259 = v16[13];
    v357 = v16[12];
    v358 = v259;
    v260 = v16[7];
    v351 = v16[6];
    v352 = v260;
    v261 = v16[9];
    v353 = v16[8];
    v354 = v261;
    v262 = v16[3];
    v347 = v16[2];
    v348 = v262;
    v263 = v16[5];
    v349 = v16[4];
    v350 = v263;
    v264 = v16[1];
    v345 = *v16;
    v346 = v264;
    if ((sub_1CEFE4768(&v345) & 1) == 0 && *(v112 + v114[10]))
    {
      v113 |= 0x4000000uLL;
    }
  }

  v265 = v16[11];
  v355 = v16[10];
  v356 = v265;
  v266 = v16[13];
  v357 = v16[12];
  v358 = v266;
  v267 = v16[7];
  v351 = v16[6];
  v352 = v267;
  v268 = v16[9];
  v353 = v16[8];
  v354 = v268;
  v269 = v16[3];
  v347 = v16[2];
  v348 = v269;
  v270 = v16[5];
  v349 = v16[4];
  v350 = v270;
  v271 = v16[1];
  v345 = *v16;
  v346 = v271;
  if (sub_1CEFE4774(&v345) && (*(v112 + v114[9]) & 1) == 0)
  {
    v113 |= 0x8000000uLL;
    if (v152[27])
    {
      goto LABEL_143;
    }
  }

  else
  {
    v272 = v16[11];
    v355 = v16[10];
    v356 = v272;
    v273 = v16[13];
    v357 = v16[12];
    v358 = v273;
    v274 = v16[7];
    v351 = v16[6];
    v352 = v274;
    v275 = v16[9];
    v353 = v16[8];
    v354 = v275;
    v276 = v16[3];
    v347 = v16[2];
    v348 = v276;
    v277 = v16[5];
    v349 = v16[4];
    v350 = v277;
    v278 = v16[1];
    v345 = *v16;
    v346 = v278;
    if ((sub_1CEFE4774(&v345) & 1) == 0 && *(v112 + v114[9]))
    {
      v113 |= 0x10000000uLL;
    }

    if (v152[27])
    {
LABEL_143:
      v279 = sub_1CF9E6878();
      v286 = (v112 + v114[38]);
      v287 = v286[1];
      if (v280)
      {
        if (v287)
        {
          if (v279 == *v286 && v280 == v287)
          {
            v280, v280, *v286, v287, v282, v283, v284, v285;
            goto LABEL_157;
          }

          v288 = v280;
          v289 = sub_1CF9E8048();
          v288, v290, v291, v292, v293, v294, v295, v296;
          if (v289)
          {
            goto LABEL_157;
          }
        }

        else
        {
          v280, v280, v281, 0, v282, v283, v284, v285;
        }
      }

      else if (!v287)
      {
        goto LABEL_157;
      }

      v113 |= 0x80000000uLL;
      goto LABEL_157;
    }
  }

  if (*(v112 + v114[38] + 8))
  {
    v113 |= 0x80000000uLL;
  }

LABEL_157:
  v297 = v16[11];
  v355 = v16[10];
  v356 = v297;
  v298 = v16[13];
  v357 = v16[12];
  v358 = v298;
  v299 = v16[7];
  v351 = v16[6];
  v352 = v299;
  v300 = v16[9];
  v353 = v16[8];
  v354 = v300;
  v301 = v16[3];
  v347 = v16[2];
  v348 = v301;
  v302 = v16[5];
  v349 = v16[4];
  v350 = v302;
  v303 = v16[1];
  v345 = *v16;
  v346 = v303;
  if (sub_1CEFE47B0(&v345) && (*(v112 + v114[18]) & 1) == 0)
  {
    v113 |= 0x100000000uLL;
  }

  else
  {
    v304 = v16[11];
    v355 = v16[10];
    v356 = v304;
    v305 = v16[13];
    v357 = v16[12];
    v358 = v305;
    v306 = v16[7];
    v351 = v16[6];
    v352 = v306;
    v307 = v16[9];
    v353 = v16[8];
    v354 = v307;
    v308 = v16[3];
    v347 = v16[2];
    v348 = v308;
    v309 = v16[5];
    v349 = v16[4];
    v350 = v309;
    v310 = v16[1];
    v345 = *v16;
    v346 = v310;
    if ((sub_1CEFE47B0(&v345) & 1) == 0 && *(v112 + v114[18]))
    {
      v113 |= 0x200000000uLL;
    }
  }

  if ((*(v112 + v114[20]) & 1) == 0 && v152[30] != qword_1CFA12DF8[*(v112 + v114[21])])
  {
    v113 |= 0x400000000uLL;
  }

  if ((v338 & 1) != 0 && (*(v112 + v114[21]) & 0xFE) == 2)
  {
    v113 |= 0x2000000000uLL;
  }

  v311 = v16[11];
  v355 = v16[10];
  v356 = v311;
  v312 = v16[13];
  v357 = v16[12];
  v358 = v312;
  v313 = v16[7];
  v351 = v16[6];
  v352 = v313;
  v314 = v16[9];
  v353 = v16[8];
  v354 = v314;
  v315 = v16[3];
  v347 = v16[2];
  v348 = v315;
  v316 = v16[5];
  v349 = v16[4];
  v350 = v316;
  v317 = v16[1];
  v345 = *v16;
  v346 = v317;
  result = sub_1CEFE47F8(&v345);
  if (!result)
  {
LABEL_174:
    v319 = v339;
    v320 = (v339 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_totalMaterializedItems);
    v324 = *(v339 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_totalMaterializedItems);
    v322 = __OFADD__(v324, 1);
    v323 = v324 + 1;
    if (v322)
    {
      goto LABEL_180;
    }

    goto LABEL_175;
  }

  v319 = v339;
  v320 = (v339 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_totalDatalessItems);
  v321 = *(v339 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_totalDatalessItems);
  v322 = __OFADD__(v321, 1);
  v323 = v321 + 1;
  if (v322)
  {
    __break(1u);
    goto LABEL_174;
  }

LABEL_175:
  *v320 = v323;
  v325 = v152[7];
  v326 = *(v319 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedFileSizes);
  v322 = __OFADD__(v326, v325);
  v327 = v326 + v325;
  if (v322)
  {
    __break(1u);
  }

  else
  {
    *(v319 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedFileSizes) = v327;
    v328 = v152[21];
    v329 = *(v319 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedSizeOfDisk);
    v322 = __OFADD__(v329, v328);
    v330 = v329 + v328;
    if (!v322)
    {
      *(v319 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedSizeOfDisk) = v330;
      return v113;
    }
  }

  __break(1u);
LABEL_180:
  __break(1u);
  return result;
}

uint64_t sub_1CF6E6314(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int a4, int a5)
{
  v10 = sub_1CF9E7FC8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v202 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E5CF8();
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v20 = 0;
  v239 = *(a3 + 30);
  v21 = a3[13];
  v236 = a3[12];
  v237 = v21;
  v238 = a3[14];
  v22 = a3[9];
  v232 = a3[8];
  v233 = v22;
  v23 = a3[11];
  v234 = a3[10];
  v235 = v23;
  v24 = a3[5];
  v228 = a3[4];
  v229 = v24;
  v25 = a3[7];
  v230 = a3[6];
  v231 = v25;
  v26 = a3[1];
  v224 = *a3;
  v225 = v26;
  v27 = a3[3];
  v226 = a3[2];
  v227 = v27;
  if (*(a1 + 8) > 1u)
  {
    return v20;
  }

  v213 = v16;
  v214 = &v202 - v17;
  v211 = v19;
  v212 = v18;
  v210 = v10;
  v28 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48));
  v217 = type metadata accessor for ItemMetadata(0);
  v29 = *(v217 + 56);
  v219 = v28;
  v30 = &v28[v29];
  v31 = v30[1];
  v216 = a5;
  v215 = v11;
  v209 = v13;
  if (v31)
  {
    v32 = *v30;
    v33 = v31;
  }

  else
  {
    v32 = *(a1 + 128);
    v33 = *(a1 + 136);
  }

  v34 = a2;
  v35 = *(a2 + 80);
  v36 = *(v34 + 88);

  v37 = sub_1CEFE7394(v32, v33);
  v208 = a4;
  if (!v38)
  {
    goto LABEL_11;
  }

  if (v37 != 12565487 || v38 != 0xA300000000000000)
  {
    v45 = v38;
    v46 = sub_1CF9E8048();
    v45, v47, v48, v49, v50, v51, v52, v53;
    if (v46)
    {
      goto LABEL_10;
    }

LABEL_11:

    v59 = v33;
    goto LABEL_12;
  }

  0xA300000000000000, 0xA300000000000000, v39, v40, v41, v42, v43, v44;
LABEL_10:
  v54 = sub_1CF9E69E8();
  v55 = sub_1CF025150(v54, v32, v33);
  v57 = v56;
  v32 = MEMORY[0x1D3868C10](v55);
  v59 = v58;
  v57, v58, v60, v61, v62, v63, v64, v65;
LABEL_12:
  v66 = sub_1CEFE7394(v35, v36);
  if (!v67)
  {
    goto LABEL_19;
  }

  v74 = v67;
  if (v66 == 12565487 && v67 == 0xA300000000000000)
  {
    0xA300000000000000, 0xA300000000000000, v68, v69, v70, v71, v72, v73;
    goto LABEL_17;
  }

  v75 = sub_1CF9E8048();
  v74, v76, v77, v78, v79, v80, v81, v82;
  if ((v75 & 1) == 0)
  {
LABEL_19:

    if (v32 != v35)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

LABEL_17:
  v83 = sub_1CF9E69E8();
  v84 = sub_1CF025150(v83, v35, v36);
  v86 = v85;
  v87 = MEMORY[0x1D3868C10](v84);
  v36 = v88;
  v86, v88, v89, v90, v91, v92, v93, v94;
  if (v32 != v87)
  {
LABEL_22:
    v117 = sub_1CF9E8048();
    v36, v118, v119, v120, v121, v122, v123, v124;
    v59, v125, v126, v127, v128, v129, v130, v131;
    v33, v132, v133, v134, v135, v136, v137, v138;
    if (v117)
    {
      v116 = 0;
    }

    else
    {
      v116 = 2;
    }

    goto LABEL_25;
  }

LABEL_20:
  if (v59 != v36)
  {
    goto LABEL_22;
  }

  v36, v95, v96, v97, v98, v99, v100, v101;
  v59, v102, v103, v104, v105, v106, v107, v108;
  v33, v109, v110, v111, v112, v113, v114, v115;
  v116 = 0;
LABEL_25:
  v140 = v217;
  v139 = v218;
  v141 = *v219;
  v142 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) + 48));
  if (qword_1CFA12E28[v141] == qword_1CFA12E28[*v142])
  {
    v20 = v116;
  }

  else
  {
    v20 = v116 | 8;
  }

  if (v141 != 1)
  {
    v143 = v219[v140[28]];
    v144 = *MEMORY[0x1E69E7020];
    v205 = v142;
    v204 = v144;
    if (v143 == 1)
    {
      v145 = v214;
      v146 = *(v215 + 104);
      v206 = (v215 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v207 = v146;
      v147 = v209;
      v148 = v210;
      v203 = v20;
    }

    else
    {
      v203 = v140[8];
      v149 = v215;
      v150 = *(v215 + 104);
      v206 = (v215 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v147 = v209;
      v148 = v210;
      v150(v209, v144, v210);
      sub_1CF515680(v147);
      v202 = *(v149 + 8);
      v202(v147, v148);
      v207 = v150;
      v150(v147, v144, v148);
      v140 = v217;
      v151 = v211;
      sub_1CF515680(v147);
      v202(v147, v148);
      v203 = sub_1CF9E5CD8();
      v152 = *(v212 + 8);
      (v152)(v151, v213);
      v145 = v214;
      v152();
      v153 = v20 | 0x10;
      if (!v203)
      {
        v153 = v20;
      }

      if (*&v219[v140[26]] != *&v142[v140[26]])
      {
        v153 |= 0x100uLL;
      }

      v154 = v140[13];
      v155 = v219[v154];
      LODWORD(v154) = v142[v154];
      v156 = v154 == 0;
      if (v154)
      {
        v157 = v153 | 0x1000000;
      }

      else
      {
        v157 = v153;
      }

      if (v156)
      {
        v153 |= 0x800000uLL;
      }

      if (v155 != 1)
      {
        v153 = v157;
      }

      v203 = v153;
    }

    v214 = v140[7];
    v158 = v204;
    v159 = v207;
    v207(v147, v204, v148);
    sub_1CF515680(v147);
    v160 = *(v215 + 8);
    v160(v147, v148);
    v159(v147, v158, v148);
    v142 = v205;
    v161 = v211;
    sub_1CF515680(v147);
    v160(v147, v148);
    v140 = v217;
    v162 = sub_1CF9E5CD8();
    v163 = *(v212 + 8);
    v164 = v161;
    v165 = v213;
    v163(v164, v213);
    v163(v145, v165);
    if (v162)
    {
      v20 = v203 | 0x20;
    }

    else
    {
      v20 = v203;
    }

    if ((sub_1CF51586C(&v142[v140[30]]) & 1) == 0)
    {
      v20 |= 0x40uLL;
    }

    v139 = v218;
  }

  v166 = v140[32];
  v167 = &v219[v166];
  v168 = v219[v166 + 8];
  v169 = &v142[v166];
  v170 = v142[v166 + 8];
  if (v168)
  {
    if (v170)
    {
      goto LABEL_57;
    }

LABEL_56:
    v20 |= 0x400uLL;
    goto LABEL_57;
  }

  if (*v167 != *v169)
  {
    v170 = 1;
  }

  if (v170)
  {
    goto LABEL_56;
  }

LABEL_57:
  v171 = v140[31];
  v172 = *&v219[v171];
  v173 = *&v142[v171];
  if (v172)
  {
    if (v173)
    {

      sub_1CF6BEA9C(v174, v173);
      v176 = v175;
      v172, v177, v178, v179, v180, v181, v182, v183;
      v173, v184, v185, v186, v187, v188, v189, v190;
      if (v176)
      {
        goto LABEL_63;
      }
    }

    goto LABEL_62;
  }

  if (v173)
  {
LABEL_62:
    v20 |= 0x800uLL;
  }

LABEL_63:
  v191 = v140[15];
  v192 = v219[v191];
  v193 = v142[v191];
  v194 = v216;
  if (v192 == 1)
  {
    if ((v193 & 1) == 0 && !v219[v140[18]])
    {
      v20 |= 0x80000uLL;
    }
  }

  else if (v193)
  {
    v20 |= 0x100000uLL;
  }

  if ((*(v139 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions) & 0x40) == 0)
  {
    v195 = v140[10];
    v196 = v219[v195];
    v197 = v142[v195];
    if (v196 == 1)
    {
      if (!v197)
      {
        v20 |= 0x2000000uLL;
      }
    }

    else if (v197)
    {
      v20 |= 0x4000000uLL;
    }
  }

  if ((v219[v140[20]] & 1) == 0)
  {
    v220[12] = v236;
    v221 = v237;
    v222 = v238;
    v223 = v239;
    v220[8] = v232;
    v220[9] = v233;
    v220[10] = v234;
    v220[11] = v235;
    v220[4] = v228;
    v220[5] = v229;
    v220[6] = v230;
    v220[7] = v231;
    v220[0] = v224;
    v220[1] = v225;
    v220[2] = v226;
    v220[3] = v227;
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v220) != 1 && (v194 & 1) != 0)
    {
      v198 = *v219;
      if (v198 != 1 && v198 != 2 && v219[v140[12]] != 1 && (v219[v140[11]] & 1) == 0)
      {
        v199 = v140[21];
        if ((v220[0] & 0x40) != 0)
        {
          if (v219[v199])
          {
            v200 = sub_1CEFF8538(v221, *(&v221 + 1), 0, v208, 0, 1u);
            if ((v200 == 1002 || v200 == 3) && v219[v199] != 5)
            {
              return v20 | 0x100000000;
            }
          }

          else
          {
            return v20 | 0x80000000;
          }
        }

        else if (v219[v199])
        {
          return v20 | 0x40000000;
        }
      }
    }
  }

  return v20;
}

uint64_t sub_1CF6E6D28()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v49 - v3;
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v55 = v49 - v10;
  v11 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_rootURL;
  swift_beginAccess();
  sub_1CEFCCBDC(v0 + v11, v4, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    goto LABEL_14;
  }

  v12 = objc_opt_self();
  v13 = sub_1CF9E5928();
  v14 = *(v6 + 8);
  v14(v4, v5);
  v15 = [v12 fp:v13 supportDirectoryForVolume:?];

  if (!v15)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1CF9E59D8();

  sub_1CF9E5958();
  v53 = v14;
  v14(v8, v5);
  if (qword_1EDEA70C8 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDEA70D0;
  if (qword_1EDEA70E0 != -1)
  {
    swift_once();
  }

  v54 = v1;
  v17 = qword_1EDEA70E8;
  v18 = fpfs_current_log();
  v52 = v49;
  MEMORY[0x1EEE9AC00](v18);
  v19 = v55;
  v49[-2] = v16;
  v49[-1] = v19;
  v21 = v20;
  if (!v20)
  {
    v21 = fpfs_current_log();
  }

  v50 = v18;
  v51 = fpfs_adopt_log();
  v63 = 0;
  v64 = 1;
  aBlock = sub_1CF9E73C8();
  v57 = v22;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v23 = sub_1CF9E7988();
  v25 = v24;
  MEMORY[0x1D3868CC0](v23);
  v25, v26, v27, v28, v29, v30, v31, v32;
  v33 = v57;
  sub_1CF9E6978();
  v33, v34, v35, v36, v37, v38, v39, v40;
  v41 = __fp_log_fork();

  v49[1] = v49;
  v63 = v41;
  v64 = 0;
  MEMORY[0x1EEE9AC00](v42);
  v49[-8] = v21;
  v49[-7] = &v63;
  v49[-6] = v17;
  v49[-5] = "purgeAndWait(at:)";
  v49[-4] = 17;
  LOBYTE(v49[-3]) = 2;
  v49[-2] = sub_1CF6FC3C0;
  v49[-1] = &v49[-4];
  v65 = 1;
  v62 = 0;
  v43 = swift_allocObject();
  v43[2] = &v65;
  v43[3] = sub_1CF2B1698;
  v43[4] = &v49[-10];
  v43[5] = &v62;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1CF2B16B0;
  *(v44 + 24) = v43;
  v60 = sub_1CEFFD054;
  v61 = v44;
  aBlock = MEMORY[0x1E69E9820];
  v57 = 1107296256;
  v58 = sub_1CEFFD02C;
  v59 = &block_descriptor_309;
  v45 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v17, v45);
  _Block_release(v45);
  LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

  if (v45)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!v62)
  {
    if ((v65 & 1) == 0)
    {

      v46 = v51;
      v47 = fpfs_adopt_log();

      v53(v55, v5);
      return 1;
    }

    goto LABEL_16;
  }

LABEL_17:
  swift_willThrow();

  result = fpfs_adopt_log();
  __break(1u);
  return result;
}

void sub_1CF6E7300(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v124 = a1;
  v10 = sub_1CF9E5248();
  v118 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E5268();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = a5;
  v17 = sub_1CF6CF224("checkBackupManifest()", 21, 2, 3432);
  if ((v17 & 1) == 0)
  {
    sub_1CF9E5228();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00BCE0(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v14 + 8))(v16, v13);
    swift_willThrow();
    return;
  }

  if (a2)
  {
    v18 = v124;
    v19 = *(v124 + 8);
    if (v19 != 2 || *v124)
    {
      v20 = v6;
      if (v19 == 1)
      {
        MEMORY[0x1EEE9AC00](v17);
        *(&v117 - 2) = a6;
        *(&v117 - 1) = v26;
        sub_1CF1E87A4(5, sub_1CF6FCACC, (&v117 - 4));
        if (!v6)
        {
          v24 = v28;
          v118 = v27;
          0xE000000000000000, v27, v28, v29, v30, v31, v32, v33;
          v25 = 1;
          goto LABEL_17;
        }
      }

      else
      {
        if (*(v124 + 8))
        {
          v24 = 0;
          v25 = 1;
          v118 = 0xE000000000000000;
          goto LABEL_17;
        }

        MEMORY[0x1EEE9AC00](v17);
        *(&v117 - 2) = a6;
        *(&v117 - 2) = v21;
        sub_1CF1E87A4(5, sub_1CF6FCAE8, (&v117 - 4));
        if (!v6)
        {
          v24 = v23;
          v118 = v22;
          v25 = 1;
LABEL_17:
          v44 = 2;
          v34 = v119;
          goto LABEL_18;
        }
      }

      v34 = v119;
      v35 = v6;
      sub_1CF9E50F8();
      sub_1CF00BCE0(&qword_1EDEAB460, MEMORY[0x1E6967E70], MEMORY[0x1E6967E68]);
      v36 = sub_1CF9E5658();

      (*(v118 + 8))(v12, v10);
      if ((v36 & 1) == 0)
      {
        v45 = 0xE000000000000000;
LABEL_43:
        v45, v37, v38, v39, v40, v41, v42, v43;
        return;
      }

      v24 = 0;
      v25 = 0;
      v20 = 0;
      v118 = 0xE000000000000000;
      v44 = 3;
LABEL_18:
      v46 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48));
      if (*v46 - 1 < 2 || (v46[*(type metadata accessor for ItemMetadata(0) + 80)] & 1) != 0)
      {
        if ((v25 & 1) == 0)
        {
          v117 = v20;
          v47 = 1;
          goto LABEL_30;
        }
      }

      else
      {
        v48 = *(v18 + 40);
        v49 = v48 == v24;
        if (v48 == v24)
        {
          v50 = v25;
        }

        else
        {
          v50 = 0;
        }

        if (v49)
        {
          v47 = 1;
        }

        else
        {
          v47 = v44;
        }

        if ((v50 & 1) == 0)
        {
          v117 = v20;
LABEL_30:
          v51 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredBackupManifestVsFSSnapshotDiffCounters;
          v119 = v47;
          v52 = v47 & -v47;
          swift_beginAccess();
          sub_1CEFF7124(0, 0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v122 = *(v34 + v51);
          v54 = v122;
          *(v34 + v51) = 0x8000000000000000;
          v55 = sub_1CF7D52B4(v52);
          v57 = v54[2];
          v58 = (v56 & 1) == 0;
          v59 = __OFADD__(v57, v58);
          v60 = v57 + v58;
          if (v59)
          {
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

          LOBYTE(v18) = v56;
          if (v54[3] < v60)
          {
            sub_1CF7C8980(v60, isUniquelyReferenced_nonNull_native);
            v54 = v122;
            v55 = sub_1CF7D52B4(v52);
            if ((v18 & 1) == (v61 & 1))
            {
LABEL_35:
              *(v34 + v51) = v54;
              if ((v18 & 1) == 0)
              {
                goto LABEL_36;
              }

LABEL_38:
              while (1)
              {
                v64 = v54[7];
                v65 = *(v64 + 8 * v55);
                v59 = __OFADD__(v65, 1);
                v66 = v65 + 1;
                if (!v59)
                {
                  break;
                }

LABEL_60:
                __break(1u);
LABEL_61:
                while (1)
                {
                  __break(1u);
LABEL_62:
                  __break(1u);
LABEL_63:
                  v116 = v55;
                  sub_1CF7D17DC();
                  v55 = v116;
                  v54 = v122;
                  *(v34 + v51) = v122;
                  if (v18)
                  {
                    break;
                  }

LABEL_36:
                  v54[(v55 >> 6) + 8] |= 1 << v55;
                  *(v54[6] + 8 * v55) = v52;
                  *(v54[7] + 8 * v55) = 0;
                  v62 = v54[2];
                  v59 = __OFADD__(v62, 1);
                  v63 = v62 + 1;
                  if (!v59)
                  {
                    v54[2] = v63;
                    goto LABEL_38;
                  }
                }
              }

              *(v64 + 8 * v55) = v66;
              swift_endAccess();
              if (v119 == v52)
              {
LABEL_40:
                v67 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInBackupManifestCheck;
                v55 = swift_beginAccess();
                v68 = *(v34 + v67);
                v59 = __OFADD__(v68, 1);
                v69 = v68 + 1;
                if (v59)
                {
                  goto LABEL_62;
                }

                *(v34 + v67) = v69;
                v70 = *(v34 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler);
                v71 = *(v124 + 24);
                v120 = *(v124 + 16);
                v121 = v71;

                v122 = VFSItemID.description.getter(v72);
                v123 = v73;
                MEMORY[0x1D3868CC0](47, 0xE100000000000000);
                v74 = sub_1CF9E6888();
                v75 = [v74 fp_obfuscatedFilename];

                v76 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v78 = v77;

                MEMORY[0x1D3868CC0](v76, v78);
                v78, v79, v80, v81, v82, v83, v84, v85;
                MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
                v86 = sub_1CF7F55BC(v119);
                v88 = v87;
                MEMORY[0x1D3868CC0](v86);
                v88, v89, v90, v91, v92, v93, v94, v95;
                MEMORY[0x1D3868CC0](2592, 0xE200000000000000);
                v96 = v123;
                v70(v122, v123);

                v96, v97, v98, v99, v100, v101, v102, v103;
                goto LABEL_42;
              }

              v104 = v52 ^ v119;
              while (1)
              {
                v52 = v104 & -v104;
                swift_beginAccess();
                sub_1CEFF7124(sub_1CF193338, 0);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v122 = *(v34 + v51);
                v54 = v122;
                *(v34 + v51) = 0x8000000000000000;
                v55 = sub_1CF7D52B4(v52);
                v106 = v54[2];
                v107 = (v105 & 1) == 0;
                v59 = __OFADD__(v106, v107);
                v108 = v106 + v107;
                if (v59)
                {
                  goto LABEL_59;
                }

                LOBYTE(v18) = v105;
                if (v54[3] < v108)
                {
                  break;
                }

                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_50;
                }

                v115 = v55;
                sub_1CF7D17DC();
                v55 = v115;
                v54 = v122;
                *(v34 + v51) = v122;
                if ((v18 & 1) == 0)
                {
LABEL_51:
                  v54[(v55 >> 6) + 8] |= 1 << v55;
                  *(v54[6] + 8 * v55) = v52;
                  *(v54[7] + 8 * v55) = 0;
                  v110 = v54[2];
                  v59 = __OFADD__(v110, 1);
                  v111 = v110 + 1;
                  if (v59)
                  {
                    goto LABEL_61;
                  }

                  v54[2] = v111;
                }

LABEL_53:
                v112 = v54[7];
                v113 = *(v112 + 8 * v55);
                v59 = __OFADD__(v113, 1);
                v114 = v113 + 1;
                if (v59)
                {
                  goto LABEL_60;
                }

                *(v112 + 8 * v55) = v114;
                swift_endAccess();
                v49 = v104 == v52;
                v104 ^= v52;
                if (v49)
                {
                  goto LABEL_40;
                }
              }

              sub_1CF7C8980(v108, isUniquelyReferenced_nonNull_native);
              v54 = v122;
              v55 = sub_1CF7D52B4(v104 & -v104);
              if ((v18 & 1) != (v109 & 1))
              {
                goto LABEL_33;
              }

LABEL_50:
              *(v34 + v51) = v54;
              if ((v18 & 1) == 0)
              {
                goto LABEL_51;
              }

              goto LABEL_53;
            }

LABEL_33:
            v55 = sub_1CF9E8108();
            __break(1u);
          }

          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_35;
        }
      }

LABEL_42:
      v45 = v118;
      goto LABEL_43;
    }
  }
}

uint64_t BrokenInvariants.bitDescription.getter(uint64_t a1)
{
  if (a1 > 0x1FFFFFFF)
  {
    if (a1 > 0x7FFFFFFFFFFLL)
    {
      if (a1 <= 0x3FFFFFFFFFFFFLL)
      {
        if (a1 > 0x3FFFFFFFFFFFLL)
        {
          if (a1 > 0xFFFFFFFFFFFFLL)
          {
            v4 = 0x1000000000000;
            v5 = 0xD000000000000024;
            v6 = 0x2000000000000;
          }

          else
          {
            v4 = 0x400000000000;
            v5 = 0xD000000000000016;
            v6 = 0x800000000000;
          }

          v7 = 0xD000000000000021;
          goto LABEL_109;
        }

        if (a1 != 0x80000000000)
        {
          v4 = 0x100000000000;
          v5 = 0xD000000000000016;
          v6 = 0x200000000000;
          v7 = 0xD000000000000020;
          goto LABEL_109;
        }

        return 0xD000000000000018;
      }

      if (a1 <= 0x1FFFFFFFFFFFFFLL)
      {
        switch(a1)
        {
          case 0x4000000000000:
            return 0xD000000000000023;
          case 0x8000000000000:
            return 0x797375625F736168;
          case 0x10000000000000:
            return 0xD00000000000001CLL;
        }

        return 0;
      }

      if (a1 <= 0x7FFFFFFFFFFFFFLL)
      {
        v4 = 0x20000000000000;
        v5 = 0xD000000000000020;
        v6 = 0x40000000000000;
        v7 = 0xD000000000000022;
        goto LABEL_109;
      }

      v23 = 0x80000000000000;
      if (a1 == 0x100000000000000)
      {
        v24 = 0xD000000000000019;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      if (a1 <= 0xFFFFFFFFFLL)
      {
        if (a1 > 0xFFFFFFFFLL)
        {
          if (a1 > 0x3FFFFFFFFLL)
          {
            v4 = 0x400000000;
            v5 = 0xD000000000000019;
            v6 = 0x800000000;
            v7 = 0xD000000000000036;
          }

          else
          {
            v4 = 0x100000000;
            v5 = 0xD000000000000020;
            v6 = 0x200000000;
            v7 = 0xD000000000000024;
          }

          goto LABEL_109;
        }

        if (a1 != 0x20000000)
        {
          v14 = 0x40000000;
          v15 = 0xD000000000000019;
          v16 = 0x80000000;
LABEL_80:
          v19 = 0xD00000000000001FLL;
          if (a1 != v16)
          {
            v19 = 0;
          }

          if (a1 == v14)
          {
            return v15;
          }

          else
          {
            return v19;
          }
        }

        return 0xD000000000000018;
      }

      if (a1 <= 0x7FFFFFFFFFLL)
      {
        if (a1 == 0x1000000000)
        {
          return 0xD000000000000019;
        }

        v14 = 0x2000000000;
        v15 = 0xD00000000000001ELL;
        v16 = 0x4000000000;
        goto LABEL_80;
      }

      if (a1 <= 0x1FFFFFFFFFFLL)
      {
        v4 = 0x8000000000;
        v5 = 0xD00000000000001ELL;
        v6 = 0x10000000000;
        v7 = 0xD00000000000002ALL;
        goto LABEL_109;
      }

      v23 = 0x20000000000;
      if (a1 == 0x40000000000)
      {
        v24 = 0xD00000000000001ALL;
      }

      else
      {
        v24 = 0;
      }
    }

    if (a1 == v23)
    {
      return 0xD00000000000001ALL;
    }

    else
    {
      return v24;
    }
  }

  if (a1 < 0x4000)
  {
    if (a1 <= 127)
    {
      if (a1 > 7)
      {
        v1 = 0xD00000000000001FLL;
        if (a1 != 64)
        {
          v1 = 0;
        }

        if (a1 == 32)
        {
          v1 = 0xD00000000000001ALL;
        }

        v2 = 0xD000000000000022;
        if (a1 != 16)
        {
          v2 = 0;
        }

        if (a1 == 8)
        {
          v2 = 0xD000000000000023;
        }

        if (a1 <= 31)
        {
          return v2;
        }

        else
        {
          return v1;
        }
      }

      if (a1 == 1)
      {
        return 0x6F6E5F646C756F63;
      }

      v8 = 0xD000000000000019;
      v9 = 0xD00000000000001ELL;
      if (a1 != 4)
      {
        v9 = 0;
      }

      v10 = a1 == 2;
LABEL_57:
      if (v10)
      {
        return v8;
      }

      else
      {
        return v9;
      }
    }

    if (a1 <= 1023)
    {
      v18 = 0xD00000000000001ALL;
      if (a1 != 512)
      {
        v18 = 0;
      }

      if (a1 == 256)
      {
        v18 = 0xD000000000000014;
      }

      if (a1 == 128)
      {
        return 0xD000000000000014;
      }

      else
      {
        return v18;
      }
    }

    else
    {
      v11 = 0xD00000000000001CLL;
      if (a1 == 0x2000)
      {
        v12 = 0xD00000000000001CLL;
      }

      else
      {
        v12 = 0;
      }

      if (a1 == 4096)
      {
        v12 = 0xD00000000000001ALL;
      }

      v13 = 0xD000000000000019;
      if (a1 != 2048)
      {
        v11 = 0;
      }

      if (a1 != 1024)
      {
        v13 = v11;
      }

      if (a1 <= 4095)
      {
        return v13;
      }

      else
      {
        return v12;
      }
    }
  }

  if (a1 >= 0x200000)
  {
    if (a1 <= 0xFFFFFF)
    {
      v20 = 0xD00000000000001BLL;
      v21 = 0xD00000000000001ALL;
      if (a1 != 0x800000)
      {
        v21 = 0;
      }

      if (a1 != 0x400000)
      {
        v20 = v21;
      }

      if (a1 == 0x200000)
      {
        return 0xD000000000000010;
      }

      else
      {
        return v20;
      }
    }

    if (a1 > 0x7FFFFFF)
    {
      v4 = 0x8000000;
      v5 = 0xD000000000000016;
      v6 = 0x10000000;
      v7 = 0xD000000000000014;
    }

    else
    {
      v4 = 0x1000000;
      v5 = 0xD00000000000002ALL;
      v6 = 0x4000000;
      v7 = 0xD000000000000011;
    }

LABEL_109:
    if (a1 != v6)
    {
      v7 = 0;
    }

    if (a1 == v4)
    {
      return v5;
    }

    else
    {
      return v7;
    }
  }

  if (a1 < 0x20000)
  {
    v17 = 0xD00000000000001ELL;
    if (a1 != 0x10000)
    {
      v17 = 0;
    }

    if (a1 == 0x8000)
    {
      v17 = 0xD00000000000001DLL;
    }

    if (a1 == 0x4000)
    {
      return 0xD00000000000001FLL;
    }

    else
    {
      return v17;
    }
  }

  else
  {
    if (a1 < 0x80000)
    {
      v8 = 0xD000000000000010;
      v9 = 0xD000000000000011;
      if (a1 != 0x40000)
      {
        v9 = 0;
      }

      v10 = a1 == 0x20000;
      goto LABEL_57;
    }

    v22 = 0x7974706D655F7369;
    if (a1 != 0x100000)
    {
      v22 = 0;
    }

    if (a1 == 0x80000)
    {
      return 0x5F656469735F7369;
    }

    else
    {
      return v22;
    }
  }
}

uint64_t FPCKOptions.description.getter(uint64_t a1)
{
  if (a1 > 15)
  {
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        return 0xD000000000000023;
      }

      if (a1 == 128)
      {
        return 0xD00000000000001BLL;
      }
    }

    else
    {
      if (a1 == 16)
      {
        return 0x75705F7261656C63;
      }

      if (a1 == 32)
      {
        return 0xD000000000000018;
      }
    }
  }

  else if (a1 > 3)
  {
    if (a1 == 4)
    {
      return 0xD000000000000015;
    }

    if (a1 == 8)
    {
      return 0xD000000000000018;
    }
  }

  else if (a1 == 1 || a1 == 2)
  {
    return 0xD000000000000021;
  }

  return 0;
}

unint64_t sub_1CF6E8598(uint64_t a1)
{
  if (a1 >= 0x80000)
  {
    if (a1 <= 0xFFFFFFF)
    {
      if (a1 < 0x800000)
      {
        v19 = 0xD000000000000028;
        if (a1 == 0x400000)
        {
          v20 = 0xD000000000000028;
        }

        else
        {
          v20 = 0;
        }

        if (a1 != 0x200000)
        {
          v19 = v20;
        }

        v21 = 0xD00000000000002BLL;
        if (a1 == 0x100000)
        {
          v22 = 0xD00000000000002BLL;
        }

        else
        {
          v22 = 0;
        }

        if (a1 != 0x80000)
        {
          v21 = v22;
        }

        if (a1 < 0x200000)
        {
          return v21;
        }

        else
        {
          return v19;
        }
      }

      else if (a1 <= 0x1FFFFFF)
      {
        if (a1 == 0x1000000)
        {
          v23 = 0xD000000000000032;
        }

        else
        {
          v23 = 0;
        }

        if (a1 == 0x800000)
        {
          return 0xD000000000000032;
        }

        else
        {
          return v23;
        }
      }

      else
      {
        if (a1 == 0x8000000)
        {
          v13 = 0xD000000000000028;
        }

        else
        {
          v13 = 0;
        }

        if (a1 == 0x4000000)
        {
          v14 = 0xD000000000000028;
        }

        else
        {
          v14 = v13;
        }

        if (a1 == 0x2000000)
        {
          return 0xD000000000000028;
        }

        else
        {
          return v14;
        }
      }
    }

    if (a1 > 0x1FFFFFFFFLL)
    {
      if (a1 <= 0x7FFFFFFFFLL)
      {
        v3 = 0x200000000;
        v4 = 0xD00000000000002FLL;
        v8 = 0xD000000000000026;
        if (a1 != 0x400000000)
        {
          v8 = 0;
        }

        goto LABEL_99;
      }

      v3 = 0x800000000;
      v4 = 0xD00000000000002BLL;
      v5 = 0x1000000000;
      v6 = 0xD000000000000030;
      v7 = 0x2000000000;
      v8 = 0xD000000000000022;
    }

    else
    {
      if (a1 <= 0x3FFFFFFF)
      {
        if (a1 == 0x20000000)
        {
          v24 = 0xD000000000000021;
        }

        else
        {
          v24 = 0;
        }

        if (a1 == 0x10000000)
        {
          return 0xD000000000000028;
        }

        else
        {
          return v24;
        }
      }

      v3 = 0x40000000;
      v4 = 0xD000000000000025;
      v5 = 0x80000000;
      v6 = 0xD000000000000022;
      v7 = 0x100000000;
      v8 = 0xD00000000000002FLL;
    }

    if (a1 != v7)
    {
      v8 = 0;
    }

    if (a1 == v5)
    {
      v8 = v6;
    }

LABEL_99:
    if (a1 == v3)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  if (a1 > 511)
  {
    if (a1 >= 0x4000)
    {
      if (a1 < 0x10000)
      {
        v9 = 0xD000000000000021;
        v10 = 0xD00000000000002ALL;
        if (a1 != 0x8000)
        {
          v10 = 0;
        }

        v12 = a1 == 0x4000;
      }

      else
      {
        v9 = 0xD00000000000002ALL;
        v10 = 0xD00000000000002BLL;
        if (a1 == 0x40000)
        {
          v15 = 0xD00000000000002BLL;
        }

        else
        {
          v15 = 0;
        }

        if (a1 != 0x20000)
        {
          v10 = v15;
        }

        v12 = a1 == 0x10000;
      }
    }

    else
    {
      if (a1 > 2047)
      {
        v1 = 0xD000000000000013;
        if (a1 != 0x2000)
        {
          v1 = 0;
        }

        if (a1 == 4096)
        {
          v1 = 0xD000000000000018;
        }

        if (a1 == 2048)
        {
          return 0xD000000000000012;
        }

        else
        {
          return v1;
        }
      }

      v9 = 0xD000000000000015;
      v10 = 0xD000000000000017;
      if (a1 != 1024)
      {
        v10 = 0;
      }

      v12 = a1 == 512;
    }

LABEL_94:
    if (v12)
    {
      return v9;
    }

    else
    {
      return v10;
    }
  }

  if (a1 > 15)
  {
    if (a1 <= 63)
    {
      v9 = 0xD000000000000023;
      v10 = 0xD000000000000017;
      if (a1 != 32)
      {
        v10 = 0;
      }

      v12 = a1 == 16;
    }

    else
    {
      v9 = 0xD000000000000018;
      v10 = 0xD000000000000017;
      if (a1 == 256)
      {
        v11 = 0xD000000000000017;
      }

      else
      {
        v11 = 0;
      }

      if (a1 != 128)
      {
        v10 = v11;
      }

      v12 = a1 == 64;
    }

    goto LABEL_94;
  }

  v16 = 0xD000000000000014;
  v17 = 0x6E65726566666964;
  if (a1 != 8)
  {
    v17 = 0;
  }

  if (a1 != 4)
  {
    v16 = v17;
  }

  v18 = 0xD000000000000013;
  if (a1 != 2)
  {
    v18 = 0;
  }

  if (a1 == 1)
  {
    v18 = 0xD000000000000021;
  }

  if (a1 <= 3)
  {
    return v18;
  }

  else
  {
    return v16;
  }
}

unint64_t sub_1CF6E8B90(uint64_t a1)
{
  if (a1 >= 0x10000)
  {
    if (a1 > 0x3FFFFFF)
    {
      if (a1 > 0x3FFFFFFF)
      {
        if (a1 > 0xFFFFFFFFLL)
        {
          v25 = 0x100000000;
          v26 = 0xD000000000000025;
          v27 = 0x200000000;
          v28 = 0xD00000000000001CLL;
        }

        else
        {
          v25 = 0x40000000;
          v26 = 0xD00000000000001FLL;
          v27 = 0x80000000;
          v28 = 0xD00000000000001BLL;
        }
      }

      else
      {
        if (a1 <= 0xFFFFFFF)
        {
          if (a1 == 0x8000000)
          {
            v12 = 0xD00000000000002FLL;
          }

          else
          {
            v12 = 0;
          }

          if (a1 == 0x4000000)
          {
            return 0xD00000000000002FLL;
          }

          else
          {
            return v12;
          }
        }

        v25 = 0x10000000;
        v26 = 0xD00000000000002FLL;
        v27 = 0x20000000;
        v28 = 0xD000000000000022;
      }

      if (a1 != v27)
      {
        v28 = 0;
      }

      if (a1 == v25)
      {
        return v26;
      }

      else
      {
        return v28;
      }
    }

    else if (a1 >= 0x100000)
    {
      v17 = 0xD000000000000039;
      if (a1 == 0x2000000)
      {
        v18 = 0xD00000000000002FLL;
      }

      else
      {
        v18 = 0;
      }

      if (a1 == 0x1000000)
      {
        v19 = 0xD000000000000039;
      }

      else
      {
        v19 = v18;
      }

      v20 = 0xD000000000000032;
      if (a1 != 0x800000)
      {
        v17 = 0;
      }

      if (a1 != 0x100000)
      {
        v20 = v17;
      }

      if (a1 <= 0xFFFFFF)
      {
        return v20;
      }

      else
      {
        return v19;
      }
    }

    else
    {
      v5 = 0xD000000000000032;
      if (a1 == 0x80000)
      {
        v6 = 0xD000000000000032;
      }

      else
      {
        v6 = 0;
      }

      if (a1 == 0x40000)
      {
        v6 = 0xD000000000000032;
      }

      v7 = 0xD000000000000031;
      if (a1 != 0x20000)
      {
        v5 = 0;
      }

      if (a1 != 0x10000)
      {
        v7 = v5;
      }

      if (a1 < 0x40000)
      {
        return v7;
      }

      else
      {
        return v6;
      }
    }
  }

  else if (a1 > 255)
  {
    if (a1 > 4095)
    {
      v21 = 0xD000000000000021;
      v22 = 0xD000000000000031;
      if (a1 != 0x8000)
      {
        v22 = 0;
      }

      if (a1 != 0x4000)
      {
        v21 = v22;
      }

      v23 = 0xD000000000000013;
      if (a1 != 0x2000)
      {
        v23 = 0;
      }

      if (a1 == 4096)
      {
        v24 = 0xD000000000000018;
      }

      else
      {
        v24 = v23;
      }

      if (a1 < 0x4000)
      {
        return v24;
      }

      else
      {
        return v21;
      }
    }

    else
    {
      v8 = 0xD000000000000017;
      v9 = 0xD000000000000012;
      if (a1 != 2048)
      {
        v9 = 0;
      }

      if (a1 != 1024)
      {
        v8 = v9;
      }

      v10 = 0xD000000000000017;
      v11 = 0xD000000000000015;
      if (a1 != 512)
      {
        v11 = 0;
      }

      if (a1 != 256)
      {
        v10 = v11;
      }

      if (a1 <= 1023)
      {
        return v10;
      }

      else
      {
        return v8;
      }
    }
  }

  else if (a1 > 15)
  {
    if (a1 == 128)
    {
      v13 = 0xD000000000000017;
    }

    else
    {
      v13 = 0;
    }

    if (a1 == 64)
    {
      v14 = 0xD000000000000018;
    }

    else
    {
      v14 = v13;
    }

    v15 = 0xD000000000000023;
    v16 = 0xD000000000000017;
    if (a1 != 32)
    {
      v16 = 0;
    }

    if (a1 != 16)
    {
      v15 = v16;
    }

    if (a1 <= 63)
    {
      return v15;
    }

    else
    {
      return v14;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    v2 = 0x6E65726566666964;
    if (a1 != 8)
    {
      v2 = 0;
    }

    if (a1 != 4)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 != 2)
    {
      v3 = 0;
    }

    if (a1 == 1)
    {
      v3 = 0xD000000000000028;
    }

    if (a1 <= 3)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1CF6E90B8(uint64_t a1)
{
  if (a1 <= 127)
  {
    if (a1 <= 7)
    {
      v11 = 0xD00000000000001ELL;
      if (a1 != 4)
      {
        v11 = 0;
      }

      if (a1 == 2)
      {
        v11 = 0xD000000000000020;
      }

      if (a1 == 1)
      {
        return 0xD000000000000014;
      }

      else
      {
        return v11;
      }
    }

    else
    {
      v5 = 0xD000000000000025;
      v6 = 0xD000000000000023;
      if (a1 != 64)
      {
        v6 = 0;
      }

      if (a1 == 32)
      {
        v6 = 0xD000000000000025;
      }

      v7 = 0xD000000000000031;
      if (a1 != 16)
      {
        v5 = 0;
      }

      if (a1 != 8)
      {
        v7 = v5;
      }

      if (a1 <= 31)
      {
        return v7;
      }

      else
      {
        return v6;
      }
    }
  }

  else if (a1 > 2047)
  {
    v8 = 0xD000000000000026;
    if (a1 != 0x4000)
    {
      v8 = 0;
    }

    if (a1 == 0x2000)
    {
      v8 = 0xD000000000000015;
    }

    v9 = 0xD000000000000012;
    v10 = 0xD000000000000015;
    if (a1 != 4096)
    {
      v10 = 0;
    }

    if (a1 != 2048)
    {
      v9 = v10;
    }

    if (a1 < 0x2000)
    {
      return v9;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v1 = 0xD000000000000030;
    if (a1 == 1024)
    {
      v2 = 0xD000000000000012;
    }

    else
    {
      v2 = 0;
    }

    if (a1 != 512)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000030;
    if (a1 != 256)
    {
      v3 = 0;
    }

    if (a1 == 128)
    {
      v3 = 0xD000000000000023;
    }

    if (a1 <= 511)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1CF6E9320()
{
  v1 = *v0;
  v2 = 0xD000000000000012;
  v3 = 0xD000000000000025;
  if (*v0 != 1)
  {
    v3 = 0;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1 == 4)
  {
    return 0xD000000000000028;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CF6E9394(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1CF9E81D8();
  a3(v5);
  return sub_1CF9E8228();
}

uint64_t sub_1CF6E93EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1CF9E81D8();
  a4(v6);
  return sub_1CF9E8228();
}

uint64_t sub_1CF6E9478(char a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  if (v3 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v3 < a2)
    {
      v4 = a2;
      v5 = 0;
      goto LABEL_9;
    }

    sub_1CF7D1218();
    return 0;
  }

  v4 = a2;
  v5 = 1;
LABEL_9:
  sub_1CF7C7708(v4, v5);
  return 1;
}

uint64_t sub_1CF6E9500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = *v3;
  sub_1CF9E81D8();
  if (v4)
  {
    if (v4 == 1)
    {
      MEMORY[0x1D386A470](1);
      MEMORY[0x1D386A4A0](a2);
    }

    else
    {
      if (a2)
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      MEMORY[0x1D386A470](v8);
    }
  }

  else
  {
    MEMORY[0x1D386A470](0);
    sub_1CF9E8208();
  }

  v9 = sub_1CF9E8228();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = a2 == 1 && v4 == 2;
    if (a2)
    {
      v14 = 0;
    }

    else
    {
      v14 = v4 == 2;
    }

    do
    {
      v15 = *(v7 + 48) + 16 * v11;
      v16 = *v15;
      v17 = *(v15 + 8);
      if (v17)
      {
        if (v17 == 1)
        {
          if (v4 == 1 && v16 == a2)
          {
            result = 0;
            goto LABEL_30;
          }
        }

        else if (v16)
        {
          if (v13)
          {
            goto LABEL_28;
          }
        }

        else if (v14)
        {
          a2 = 0;
          result = 0;
          goto LABEL_30;
        }
      }

      else if (!v4 && v16 == a2)
      {
LABEL_28:
        result = 0;
        a2 = v16;
        goto LABEL_30;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  sub_1CF6ED354(a2, v4, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  result = 1;
  LOBYTE(v17) = v4;
LABEL_30:
  *a1 = a2;
  *(a1 + 8) = v17;
  return result;
}

uint64_t sub_1CF6E96F4(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1CF9E7828();

    if (v9)
    {
      v6, v10, v11, v12, v13, v14, v15, v16;

      sub_1CEFD57E0(0, &unk_1EDEA3640, 0x1E696ABF8);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
      return result;
    }

    result = sub_1CF9E7818();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v26 = sub_1CF4766C4(v7, result + 1);
    v27 = *(v26 + 16);
    if (*(v26 + 24) <= v27)
    {
      sub_1CF6EC52C(v27 + 1, qword_1EC4C0728, &qword_1CFA05B38);
    }

    v25 = v8;
    sub_1CF485A90();
    v6, v28, v29, v30, v31, v32, v33, v34;
    *v3 = v26;
    goto LABEL_16;
  }

  sub_1CEFD57E0(0, &unk_1EDEA3640, 0x1E696ABF8);
  v18 = sub_1CF9E7558();
  v19 = -1 << *(v6 + 32);
  v20 = v18 & ~v19;
  if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v3;
    v25 = a2;
    sub_1CF6EE120(v25, v20, isUniquelyReferenced_nonNull_native, qword_1EC4C0728, &qword_1CFA05B38, &unk_1EDEA3640, 0x1E696ABF8);
    *v3 = v38;
LABEL_16:
    *a1 = v25;
    return 1;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v20);
    v23 = sub_1CF9E7568();

    if (v23)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v35 = *(*(v6 + 48) + 8 * v20);
  *a1 = v35;
  v36 = v35;
  return 0;
}

uint64_t sub_1CF6E995C(uint64_t a1, uint64_t a2, uint64_t a3, _TtC18FileProviderDaemon8FSTester *a4)
{
  v8 = *v4;
  sub_1CF9E81D8();
  MEMORY[0x1D386A4A0](a2);
  sub_1CF9E69C8();
  v9 = sub_1CF9E8228();
  v16 = -1 << *(v8 + 32);
  v17 = v9 & ~v16;
  if ((*(v8 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = *(v8 + 48);
    while (1)
    {
      v20 = (v19 + 24 * v17);
      if (*v20 == a2)
      {
        v21 = v20[2];
        v22 = v20[1] == a3 && v21 == a4;
        if (v22 || (sub_1CF9E8048() & 1) != 0)
        {
          break;
        }
      }

      v17 = (v17 + 1) & v18;
      if (((*(v8 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    a4, v21, v10, v11, v12, v13, v14, v15;
    v23 = *(v8 + 48) + 24 * v17;
    v24 = *(v23 + 16);
    *a1 = *v23;
    *(a1 + 16) = v24;

    return 0;
  }

  else
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v4;

    sub_1CF6ED564(a2, a3, a4, v17, isUniquelyReferenced_nonNull_native);
    *v4 = v28;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }
}

uint64_t sub_1CF6E9AF0(void *a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3)
{
  v7 = *v3;
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  v8 = sub_1CF9E8228();
  v15 = -1 << *(v7 + 32);
  v16 = v8 & ~v15;
  if ((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (1)
    {
      v18 = (*(v7 + 48) + 16 * v16);
      v19 = v18[1];
      v20 = *v18 == a2 && v19 == a3;
      if (v20 || (sub_1CF9E8048() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    a3, v19, v9, v10, v11, v12, v13, v14;
    v23 = (*(v7 + 48) + 16 * v16);
    v24 = v23[1];
    *a1 = *v23;
    a1[1] = v24;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;

    sub_1CF6ED718(a2, a3, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1CF6E9C5C(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  v12 = sub_1CF9E81C8();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + 8 * v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_1CF6ED898(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1CF6E9D5C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *v3;
  sub_1CF9E81D8();
  sub_1CEFF47E0(v73, a2, a3 & 0x1FF);
  v8 = sub_1CF9E8228();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  v71 = v7 + 56;
  v11 = (a3 >> 8) & 1;
  v69 = a1;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_33:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73[0] = *v68;
    sub_1CEFD0988(a2, a3, v11);
    sub_1CF6ED9D4(a2, a3 | (((a3 >> 8) & 1) << 8), v10, isUniquelyReferenced_nonNull_native);
    *v68 = v73[0];
    *v69 = a2;
    *(v69 + 8) = a3;
    *(v69 + 9) = v11;
    return 1;
  }

  v72 = ~v9;
  v12 = a3 == 2;
  v13 = a2 == 1 && a3 == 2;
  if (a2)
  {
    v12 = 0;
  }

  v66 = v12;
  v67 = v13;
  v14 = v7 + 56;
  v70 = v7;
  while (1)
  {
    v18 = *(v7 + 48) + 16 * v10;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 9);
    if ((v21 & 1) == 0)
    {
      break;
    }

    if ((a3 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    v22 = v11;
    v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v25 = v24;
    v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v28 = v27;
    if (v23 == v26 && v25 == v27)
    {
      sub_1CEFD0988(a2, a3, 1);
      sub_1CEFD0988(v19, v20, 1);
      v25, v47, v48, v49, v50, v51, v52, v53;
      v28, v54, v55, v56, v57, v58, v59, v60;
      sub_1CEFD0994(a2, a3, 1);
LABEL_35:
      sub_1CEFD0994(a2, a3, 1);
      sub_1CEFD0994(v19, v20, 1);
      v61 = v69;
      v7 = v70;
      goto LABEL_38;
    }

    v30 = sub_1CF9E8048();
    sub_1CEFD0988(a2, a3, 1);
    sub_1CEFD0988(v19, v20, 1);
    v25, v31, v32, v33, v34, v35, v36, v37;
    v28, v38, v39, v40, v41, v42, v43, v44;
    sub_1CEFD0994(a2, a3, 1);
    if (v30)
    {
      goto LABEL_35;
    }

    sub_1CEFD0994(v19, v20, 1);
    v11 = v22;
    v7 = v70;
    v14 = v71;
LABEL_10:
    v10 = (v10 + 1) & v72;
    if (((*(v14 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  if ((a3 & 0x100) != 0)
  {
LABEL_8:
    sub_1CEFD0988(a2, a3, v11);
    sub_1CEFD0988(v19, v20, v21);
    sub_1CEFD0994(v19, v20, v21);
    v15 = a2;
    v16 = a3;
    v17 = v11;
LABEL_9:
    sub_1CEFD0994(v15, v16, v17);
    goto LABEL_10;
  }

  if (!*(v18 + 8))
  {
    if (!a3 && v19 == a2)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (v20 == 1)
  {
    if (a3 == 1 && v19 == a2)
    {
      v19 = a2;
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (v19)
  {
    if (v67)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (!v66)
  {
LABEL_32:
    sub_1CEFD0988(a2, a3, 0);
    sub_1CEFD0988(v19, v20, 0);
    v15 = v19;
    v16 = v20;
    v17 = 0;
    goto LABEL_9;
  }

  v19 = 0;
LABEL_37:
  sub_1CEFD0988(v19, v20, 0);
  sub_1CEFD0994(v19, v20, 0);
  v61 = v69;
LABEL_38:
  v62 = *(v7 + 48) + 16 * v10;
  v63 = *v62;
  v64 = *(v62 + 9);
  *v61 = *v62;
  v65 = *(v62 + 8);
  *(v61 + 8) = v65;
  *(v61 + 9) = v64;
  sub_1CEFD0988(v63, v65, v64);
  return 0;
}

uint64_t sub_1CF6EA118(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v6 = a5;
  v10 = *v5;
  sub_1CF9E81D8();
  v30 = a2;
  v31 = a4;
  v32 = v6;
  sub_1CF7BD790(v33, a2, a3, a4, v6);
  v11 = sub_1CF9E8228();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = *(v10 + 48) + 32 * v13;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      v19 = *(v15 + 24);
      sub_1CF1FB2C0(*v15, v17, v18, v19);
      v20 = sub_1CF7BCC38(v16, v17, v18, v19, v30, a3, v31, v32);
      sub_1CF484340(v16, v17, v18, v19);
      if (v20)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1CF484340(v30, a3, v31, v32);
    v23 = *(v10 + 48) + 32 * v13;
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = *(v23 + 16);
    *a1 = *v23;
    *(a1 + 8) = v25;
    *(a1 + 16) = v26;
    v27 = *(v23 + 24);
    *(a1 + 24) = v27;
    sub_1CF1FB2C0(v24, v25, v26, v27);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33[0] = *v28;
    sub_1CF1FB2C0(v30, a3, v31, v32);
    sub_1CF6EDD90(v30, a3, v31, v32, v13, isUniquelyReferenced_nonNull_native);
    *v28 = v33[0];
    *a1 = v30;
    *(a1 + 8) = a3;
    *(a1 + 16) = v31;
    *(a1 + 24) = v32;
    return 1;
  }
}

__n128 sub_1CF6EA310(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1CF9E81D8();
  sub_1CF7BDAE8();
  v6 = sub_1CF9E8228();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = (*(v5 + 48) + 48 * v8);
      v11 = v10[1];
      v20 = *v10;
      v21[0] = v11;
      *(v21 + 10) = *(v10 + 26);
      if (sub_1CF7BD478(&v20, a2))
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v5 + 48) + 48 * v8;
    v16 = *(v15 + 32);
    v17 = *(v15 + 40);
    result = *v15;
    v18 = *(v15 + 16);
    *a1 = *v15;
    *(a1 + 16) = v18;
    *(a1 + 32) = v16;
    *(a1 + 40) = v17;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_1CF6EDF74(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    result = *(a2 + 26);
    *(a1 + 26) = result;
  }

  return result;
}

uint64_t sub_1CF6EA45C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1CF9E7828();

    if (v9)
    {
      v6, v10, v11, v12, v13, v14, v15, v16;

      sub_1CEFD57E0(0, &unk_1EDEAB630, 0x1E696AE38);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
      return result;
    }

    result = sub_1CF9E7818();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v26 = sub_1CF476A94(v7, result + 1);
    v27 = *(v26 + 16);
    if (*(v26 + 24) <= v27)
    {
      sub_1CF6EC52C(v27 + 1, &qword_1EC4C0658, &qword_1CFA05A68);
    }

    v25 = v8;
    sub_1CF485A90();
    v6, v28, v29, v30, v31, v32, v33, v34;
    *v3 = v26;
    goto LABEL_16;
  }

  sub_1CEFD57E0(0, &unk_1EDEAB630, 0x1E696AE38);
  v18 = sub_1CF9E7558();
  v19 = -1 << *(v6 + 32);
  v20 = v18 & ~v19;
  if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v3;
    v25 = a2;
    sub_1CF6EE120(v25, v20, isUniquelyReferenced_nonNull_native, &qword_1EC4C0658, &qword_1CFA05A68, &unk_1EDEAB630, 0x1E696AE38);
    *v3 = v38;
LABEL_16:
    *a1 = v25;
    return 1;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v20);
    v23 = sub_1CF9E7568();

    if (v23)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v35 = *(*(v6 + 48) + 8 * v20);
  *a1 = v35;
  v36 = v35;
  return 0;
}

uint64_t sub_1CF6EA6EC(void *a1, void *a2, uint64_t *a3, uint64_t *a4, _TtC18FileProviderDaemon8FSTester *a5)
{
  v6 = v5;
  v9 = *v5;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  v12 = sub_1CF9E8228();
  v11, v13, v14, v15, v16, v17, v18, v19;
  v20 = -1 << *(v9 + 32);
  v21 = v12 & ~v20;
  if ((*(v9 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v22 = ~v20;
    while (1)
    {
      v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v25 = v24;
      v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v28 = v23;
      v29 = v26;
      if (v28 == v27 && v25 == v26)
      {

        v25, v51, v52, v53, v54, v55, v56, v57;
        v29, v58, v59, v60, v61, v62, v63, v64;
        goto LABEL_12;
      }

      v31 = sub_1CF9E8048();
      v25, v32, v33, v34, v35, v36, v37, v38;
      v29, v39, v40, v41, v42, v43, v44, v45;
      if (v31)
      {
        break;
      }

      v21 = (v21 + 1) & v22;
      if (((*(v9 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v65 = *(*(v9 + 48) + 8 * v21);
    *a1 = v65;
    v66 = v65;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *v6;
    v47 = a2;
    sub_1CF6EE2B0(v47, v21, isUniquelyReferenced_nonNull_native, a3, a4, a5, v48, v49);
    *v6 = v70;
    *a1 = v47;
    return 1;
  }
}

uint64_t sub_1CF6EA8A8(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = *v4;
  sub_1CF9E81D8();
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  sub_1CF9E69C8();
  v10, v11, v12, v13, v14, v15, v16, v17;
  v69 = a4;
  sub_1CF9E81F8();
  if ((a4 & 1) == 0)
  {
    MEMORY[0x1D386A470](a3);
  }

  v18 = sub_1CF9E8228();
  v19 = -1 << *(v8 + 32);
  v20 = v18 & ~v19;
  if ((*(v8 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    do
    {
      v22 = *(v8 + 48) + 24 * v20;
      v23 = *(v22 + 8);
      v24 = *(v22 + 16);
      v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v27 = v26;
      v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v35 = v25;
      v36 = v28;
      if (v35 == v29 && v27 == v28)
      {
        v27, v28, v29, v30, v31, v32, v33, v34;
        v36, v53, v54, v55, v56, v57, v58, v59;
        if (v24)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v38 = sub_1CF9E8048();
        v27, v39, v40, v41, v42, v43, v44, v45;
        v36, v46, v47, v48, v49, v50, v51, v52;
        if ((v38 & 1) == 0)
        {
          goto LABEL_6;
        }

        if (v24)
        {
LABEL_5:
          if (v69)
          {
            goto LABEL_17;
          }

          goto LABEL_6;
        }
      }

      if ((v69 & 1) == 0 && v23 == a3)
      {
LABEL_17:

        v60 = *(v8 + 48) + 24 * v20;
        v61 = *v60;
        v62 = *(v60 + 8);
        LOBYTE(v60) = *(v60 + 16);
        *a1 = v61;
        *(a1 + 8) = v62;
        *(a1 + 16) = v60;
        v63 = v61;
        return 0;
      }

LABEL_6:
      v20 = (v20 + 1) & v21;
    }

    while (((*(v8 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v67;
  v66 = a2;
  sub_1CF6EE4BC(v66, a3, v69 & 1, v20, isUniquelyReferenced_nonNull_native);
  *v67 = v70;
  *a1 = v66;
  *(a1 + 8) = a3;
  *(a1 + 16) = v69 & 1;
  return 1;
}

uint64_t sub_1CF6EAAF0(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1CF9E81D8();
  sub_1CF82009C(v16, a2);
  v7 = sub_1CF9E8228();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      sub_1CEFD09A0(v11);
      v12 = sub_1CF81C5BC(v11, a2);
      sub_1CEFD0A98(v11);
      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1CEFD0A98(a2);
    v15 = *(*(v6 + 48) + 8 * v9);
    *a1 = v15;
    sub_1CEFD09A0(v15);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16[0] = *v3;
    sub_1CEFD09A0(a2);
    sub_1CF6EE72C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v16[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_1CF6EAC38(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4FB0, &unk_1CFA17180);
  MEMORY[0x1EEE9AC00](v66);
  v5 = &v55 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v58 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v64 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v55 = &v55 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v55 - v27;
  v56 = v2;
  v68 = *v2;
  sub_1CF9E81D8();
  v67 = a2;
  sub_1CEFCCBDC(a2, v28, &unk_1EC4BF650, &unk_1CF9FCB40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = &qword_1CFA12AC0;
    sub_1CEFE55D0(v28, v10, &unk_1EC4BFD70, &qword_1CFA12AC0);
    MEMORY[0x1D386A470](1);
    sub_1CF1CE0C8(v69);
    v30 = v10;
    v31 = &unk_1EC4BFD70;
  }

  else
  {
    v29 = &unk_1CF9FCB50;
    sub_1CEFE55D0(v28, v15, &unk_1EC4BFCC0, &unk_1CF9FCB50);
    MEMORY[0x1D386A470](0);
    sub_1CF1CDC08(v69);
    v30 = v15;
    v31 = &unk_1EC4BFCC0;
  }

  sub_1CEFCCC44(v30, v31, v29);
  v32 = sub_1CF9E8228();
  v33 = -1 << *(v68 + 32);
  v34 = v32 & ~v33;
  v65 = v68 + 56;
  v35 = v63;
  if (((*(v68 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
  {
LABEL_17:
    v50 = v56;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v67;
    v53 = v55;
    sub_1CEFCCBDC(v67, v55, &unk_1EC4BF650, &unk_1CF9FCB40);
    v69[0] = *v50;
    sub_1CF6EE8BC(v53, v34, isUniquelyReferenced_nonNull_native);
    *v50 = v69[0];
    sub_1CEFE55D0(v52, v57, &unk_1EC4BF650, &unk_1CF9FCB40);
    return 1;
  }

  v62 = v20;
  v36 = ~v33;
  v37 = *(v64 + 72);
  v60 = ~v33;
  v61 = v37;
  while (1)
  {
    v41 = *(v68 + 48);
    v64 = v37 * v34;
    sub_1CEFCCBDC(v41 + v37 * v34, v23, &unk_1EC4BF650, &unk_1CF9FCB40);
    v42 = *(v66 + 48);
    sub_1CEFCCBDC(v23, v5, &unk_1EC4BF650, &unk_1CF9FCB40);
    sub_1CEFCCBDC(v67, &v5[v42], &unk_1EC4BF650, &unk_1CF9FCB40);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1CEFCCBDC(v5, v35, &unk_1EC4BF650, &unk_1CF9FCB40);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = v59;
      sub_1CEFE55D0(&v5[v42], v59, &unk_1EC4BFD70, &qword_1CFA12AC0);
      v44 = sub_1CF469E78(v63, v43);
      v45 = v43;
      v35 = v63;
      sub_1CEFCCC44(v45, &unk_1EC4BFD70, &qword_1CFA12AC0);
      sub_1CEFCCC44(v23, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CEFCCC44(v35, &unk_1EC4BFD70, &qword_1CFA12AC0);
      if (v44)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    sub_1CEFCCC44(v23, &unk_1EC4BF650, &unk_1CF9FCB40);
    sub_1CEFCCC44(v35, &unk_1EC4BFD70, &qword_1CFA12AC0);
LABEL_7:
    v38 = v5;
    v39 = &qword_1EC4C4FB0;
    v40 = &unk_1CFA17180;
LABEL_8:
    sub_1CEFCCC44(v38, v39, v40);
    v34 = (v34 + 1) & v36;
    if (((*(v65 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v46 = v62;
  sub_1CEFCCBDC(v5, v62, &unk_1EC4BF650, &unk_1CF9FCB40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v23, &unk_1EC4BF650, &unk_1CF9FCB40);
    sub_1CEFCCC44(v46, &unk_1EC4BFCC0, &unk_1CF9FCB50);
    v36 = v60;
    v37 = v61;
    goto LABEL_7;
  }

  v47 = v58;
  sub_1CEFE55D0(&v5[v42], v58, &unk_1EC4BFCC0, &unk_1CF9FCB50);
  v48 = sub_1CF4692CC(v46, v47);
  v49 = v47;
  v35 = v63;
  sub_1CEFCCC44(v49, &unk_1EC4BFCC0, &unk_1CF9FCB50);
  sub_1CEFCCC44(v23, &unk_1EC4BF650, &unk_1CF9FCB40);
  sub_1CEFCCC44(v46, &unk_1EC4BFCC0, &unk_1CF9FCB50);
  v36 = v60;
  v37 = v61;
  if (!v48)
  {
LABEL_15:
    v38 = v5;
    v39 = &unk_1EC4BF650;
    v40 = &unk_1CF9FCB40;
    goto LABEL_8;
  }

LABEL_18:
  sub_1CEFCCC44(v5, &unk_1EC4BF650, &unk_1CF9FCB40);
  sub_1CEFCCC44(v67, &unk_1EC4BF650, &unk_1CF9FCB40);
  sub_1CEFCCBDC(*(v68 + 48) + v64, v57, &unk_1EC4BF650, &unk_1CF9FCB40);
  return 0;
}

void sub_1CF6EB350(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2768, &qword_1CFA12980);
  v4 = sub_1CF9E78E8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 16 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      sub_1CF9E81D8();
      if (v20)
      {
        if (v20 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v19);
        }

        else
        {
          if (v19)
          {
            v21 = 3;
          }

          else
          {
            v21 = 2;
          }

          MEMORY[0x1D386A470](v21);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      v22 = sub_1CF9E8228();
      v23 = -1 << *(v5 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1CF6EB610(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2870, &qword_1CFA12AA0);
  v4 = sub_1CF9E78E8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v31 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 24 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      sub_1CF9E81D8();
      MEMORY[0x1D386A4A0](v19);
      sub_1CF9E69C8();
      v22 = sub_1CF9E8228();
      v23 = -1 << *(v5 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 24 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1CF6EB890(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27A8, &unk_1CFA129B0);
  v4 = sub_1CF9E78E8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v21 = sub_1CF9E8228();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1CF6EBAF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1CF9E78E8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    v28 = v4;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = sub_1CF9E81C8();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v10 >= 64)
    {
      bzero((v5 + 56), 8 * v13);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v4 = v28;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_1CF6EBD20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27B0, &qword_1CFA129C0);
  v4 = sub_1CF9E78E8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v41 = v1;
    v42 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 16 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 9);
      sub_1CF9E81D8();
      if (v21)
      {
        MEMORY[0x1D386A470](1);
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v23 = v22;
        sub_1CF9E69C8();
        v23, v24, v25, v26, v27, v28, v29, v30;
      }

      else
      {
        MEMORY[0x1D386A470](0);
        if (v20)
        {
          if (v20 == 1)
          {
            MEMORY[0x1D386A470](1);
            MEMORY[0x1D386A4A0](v19);
          }

          else
          {
            if (v19)
            {
              v31 = 3;
            }

            else
            {
              v31 = 2;
            }

            MEMORY[0x1D386A470](v31);
          }
        }

        else
        {
          MEMORY[0x1D386A470](0);
          sub_1CF9E8208();
        }
      }

      v32 = sub_1CF9E8228();
      v33 = -1 << *(v5 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v12 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v12 + 8 * v35);
          if (v39 != -1)
          {
            v13 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v34) & ~*(v12 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 9) = v21;
      ++*(v5 + 16);
      v3 = v42;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v40 = 1 << *(v3 + 32);
    if (v40 >= 64)
    {
      bzero(v7, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v40;
    }

    v2 = v41;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}