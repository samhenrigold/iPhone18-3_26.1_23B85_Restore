void sub_1C465D0F0(void *a1)
{
  if (a1[2])
  {
    sub_1C456902C(&unk_1EC0C47B0, &qword_1C4F14670);
    v1 = sub_1C4404D2C();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  sub_1C43FD030();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;
  sub_1C4418354();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = 0;
  while (v4)
  {
    v8 = v7;
LABEL_10:
    sub_1C43FFB74();
    v10 = v9 | (v8 << 6);
    v11 = (a1[6] + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    sub_1C442E860(a1[7] + v10 * v14, v42);
    *&v41 = v12;
    *(&v41 + 1) = v13;
    v38 = v41;
    v39[0] = v42[0];
    v39[1] = v42[1];
    v40 = v43;
    v15 = v41;
    sub_1C441D670(v39, v30);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
    sub_1C456902C(&qword_1EC0B9038, &unk_1C4F231C0);
    swift_dynamicCast();
    v35 = v32;
    v36 = v33;
    v37 = v34;
    v31 = v32;
    v32 = v33;
    *&v33 = v34;
    v16 = sub_1C445FAA8(v15, *(&v15 + 1));
    if (v17)
    {
      sub_1C4414510();
      *v18 = v15;

      sub_1C44141A0();
      sub_1C44408D4(&v31, v19 + v16 * v20, &qword_1EC0B9038, &unk_1C4F231C0);
      v7 = v8;
    }

    else
    {
      sub_1C441D17C();
      if (v21)
      {
        goto LABEL_17;
      }

      *(v28 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_1C4414510();
      *v22 = v15;
      v23 = *(v1 + 56) + 40 * v16;
      v24 = v31;
      v25 = v32;
      *(v23 + 32) = v33;
      *v23 = v24;
      *(v23 + 16) = v25;
      sub_1C442F124();
      if (v27)
      {
        goto LABEL_18;
      }

      *(v1 + 16) = v26;
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

      return;
    }

    v4 = a1[v8 + 8];
    ++v7;
    if (v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C465D378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_1C447F4E4();
  a33 = v37;
  a34 = v38;
  sub_1C43FEAE0();
  if (v35)
  {
    sub_1C456902C(&qword_1EC0B86B8, &unk_1C4F58C00);
    v39 = sub_1C4404D2C();
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC8];
  }

  sub_1C43FD030();
  v42 = v41 & v40;
  sub_1C44016F4();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v43 = 0;
  while (v42)
  {
    v44 = v43;
LABEL_10:
    v42 &= v42 - 1;
    sub_1C44601BC();
    v47 = *v45;
    v46 = v45[1];
    v50 = *(v49 + 8 * v48);
    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v51 = v50;
    swift_dynamicCast();
    sub_1C44482AC(&a13, &a17);
    sub_1C44482AC(&a17, &a20);
    sub_1C44482AC(&a20, &a16);
    v52 = sub_1C445FAA8(v47, v46);
    if (v53)
    {
      sub_1C445C128();
      v54 = (*(v39 + 56) + 32 * v52);
      sub_1C440962C(v54);
      sub_1C44482AC(&a16, v54);
      v43 = v44;
    }

    else
    {
      sub_1C441D17C();
      if (v55)
      {
        goto LABEL_17;
      }

      sub_1C4404D48();
      sub_1C442FC18(v56);
      sub_1C4440CDC(v57);
      sub_1C44482AC(&a16, v58);
      sub_1C442F124();
      if (v60)
      {
        goto LABEL_18;
      }

      *(v39 + 16) = v59;
      v43 = v44;
    }
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v44 >= v36)
    {

      sub_1C449DA64();
      return;
    }

    v42 = *(v34 + 64 + 8 * v44);
    ++v43;
    if (v42)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

unint64_t sub_1C465D560(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C456902C(&qword_1EC0BA970, &qword_1C4F14838);
    v1 = sub_1C4F02558();
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

  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = 0;
  for (i = &qword_1EC0BCD10; v4; i = v14)
  {
    v9 = v7;
LABEL_11:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v11 = (*(a1 + 48) + 16 * (v10 | (v9 << 6)));
    v13 = *v11;
    v12 = v11[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(i, &qword_1C4F0C8C0);
    v14 = i;
    swift_dynamicCast();
    v28 = v26;
    v29 = v27;
    v25 = v26;
    v26 = v27;
    result = sub_1C445FAA8(v13, v12);
    v15 = result;
    if (v16)
    {
      v17 = (v1[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;

      result = sub_1C44408D4(&v25, v1[7] + 32 * v15, v14, &qword_1C4F0C8C0);
    }

    else
    {
      if (v1[2] >= v1[3])
      {
        goto LABEL_20;
      }

      *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v1[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      v19 = (v1[7] + 32 * result);
      v20 = v26;
      *v19 = v25;
      v19[1] = v20;
      v21 = v1[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_21;
      }

      v1[2] = v23;
    }

    v7 = v9;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1C465D7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_1C447F4E4();
  a33 = v37;
  a34 = v38;
  sub_1C43FEAE0();
  if (v35)
  {
    sub_1C456902C(&qword_1EC0B86B8, &unk_1C4F58C00);
    v39 = sub_1C4404D2C();
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC8];
  }

  sub_1C43FD030();
  v42 = v41 & v40;
  sub_1C44BBDD0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v43 = 0;
  while (v42)
  {
    v44 = v43;
LABEL_10:
    sub_1C43FFB74();
    v46 = (*(v34 + 48) + ((v44 << 10) | (16 * v45)));
    v48 = *v46;
    v47 = v46[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_dynamicCast();
    sub_1C44482AC(&a13, &a17);
    sub_1C44482AC(&a17, &a20);
    sub_1C44482AC(&a20, &a16);
    v49 = sub_1C445FAA8(v48, v47);
    if (v50)
    {
      sub_1C441B334();
      *v51 = v48;
      v51[1] = v47;

      v52 = (*(v39 + 56) + 32 * v49);
      sub_1C440962C(v52);
      sub_1C44482AC(&a16, v52);
      v43 = v44;
    }

    else
    {
      sub_1C441D17C();
      if (v53)
      {
        goto LABEL_17;
      }

      sub_1C440BBAC();
      *(v39 + 64 + v54) |= v55;
      sub_1C441B334();
      *v56 = v48;
      v56[1] = v47;
      sub_1C44482AC(&a16, (*(v39 + 56) + 32 * v49));
      sub_1C442F124();
      if (v58)
      {
        goto LABEL_18;
      }

      *(v39 + 16) = v57;
      v43 = v44;
    }
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v44 >= v36)
    {

      sub_1C449DA64();
      return;
    }

    v42 = *(v34 + 64 + 8 * v44);
    ++v43;
    if (v42)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C465D9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_1C447F4E4();
  a32 = v34;
  a33 = v35;
  v62 = v36;
  if (*(v36 + 16))
  {
    sub_1C456902C(&unk_1EC0C47B0, &qword_1C4F14670);
    v37 = sub_1C4404D2C();
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC8];
  }

  sub_1C43FD030();
  v40 = v39 & v38;
  sub_1C44016F4();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v41 = 0;
  while (v40)
  {
    v42 = v41;
LABEL_10:
    sub_1C43FE644();
    v44 = (*(v62 + 48) + ((v42 << 10) | (16 * v43)));
    v46 = *v44;
    v45 = v44[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0B9038, &unk_1C4F231C0);
    swift_dynamicCast();
    a19 = a14;
    a20 = a15;
    a21 = a16;
    a13 = a14;
    a14 = a15;
    *&a15 = a16;
    v47 = sub_1C445FAA8(v46, v45);
    v48 = v47;
    if (v49)
    {
      v50 = (*(v37 + 48) + 16 * v47);
      *v50 = v46;
      v50[1] = v45;

      sub_1C44141A0();
      sub_1C44408D4(&a13, v51 + v48 * v52, &qword_1EC0B9038, &unk_1C4F231C0);
      v41 = v42;
    }

    else
    {
      sub_1C441D17C();
      if (v53)
      {
        goto LABEL_17;
      }

      *(v37 + 64 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      v54 = (*(v37 + 48) + 16 * v48);
      *v54 = v46;
      v54[1] = v45;
      sub_1C44141A0();
      v57 = v55 + v48 * v56;
      v58 = a13;
      v59 = a14;
      *(v57 + 32) = a15;
      *v57 = v58;
      *(v57 + 16) = v59;
      sub_1C442F124();
      if (v61)
      {
        goto LABEL_18;
      }

      *(v37 + 16) = v60;
      v41 = v42;
    }
  }

  while (1)
  {
    v42 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v42 >= v33)
    {

      sub_1C449DA64();
      return;
    }

    v40 = *(v62 + 64 + 8 * v42);
    ++v41;
    if (v40)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C465DBBC()
{
  sub_1C44158A0();
  sub_1C43FEAE0();
  if (v1)
  {
    sub_1C456902C(&qword_1EC0BA8B0, &qword_1C4F14798);
    v3 = sub_1C4404D2C();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  sub_1C43FD030();
  v6 = v5 & v4;
  sub_1C44BBDD0();
  sub_1C4418354();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = 0;
  while (v6)
  {
    v8 = v7;
LABEL_10:
    v6 &= v6 - 1;
    sub_1C44601BC();
    v11 = *v9;
    v10 = v9[1];
    v14 = *(v13 + 8 * v12);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v15 = sub_1C445FAA8(v11, v10);
    if (v16)
    {
      sub_1C441B334();
      *v17 = v11;
      v17[1] = v10;

      v18 = (*(v3 + 56) + 16 * v15);
      *v18 = v14;
      v18[1] = &off_1F43EF890;
      swift_unknownObjectRelease();
      v7 = v8;
    }

    else
    {
      sub_1C441D17C();
      if (v19)
      {
        goto LABEL_17;
      }

      sub_1C440BBAC();
      sub_1C442FC18(v20);
      v22 = (v21 + 16 * v15);
      *v22 = v11;
      v22[1] = v10;
      v23 = (*(v3 + 56) + 16 * v15);
      *v23 = v14;
      v23[1] = &off_1F43EF890;
      sub_1C442F124();
      if (v25)
      {
        goto LABEL_18;
      }

      *(v3 + 16) = v24;
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

    if (v8 >= v2)
    {

      sub_1C4410198();
      return;
    }

    v6 = *(v0 + 64 + 8 * v8);
    ++v7;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C465DD4C()
{
  sub_1C43FEAE0();
  if (v1)
  {
    sub_1C456902C(&qword_1EC0BA768, &qword_1C4F146A0);
    v3 = sub_1C4404D2C();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = 1 << *(v0 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v0 + 64);
  sub_1C44BBDD0();
  v7 = v3 + 64;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    sub_1C44601BC();
    v12 = *v10;
    v11 = v10[1];
    sub_1C442B870(v14 + 32 * v13, v39);
    *&v38 = v12;
    *(&v38 + 1) = v11;
    v36[2] = v38;
    v37[0] = v39[0];
    v37[1] = v39[1];
    v36[0] = v38;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_dynamicCast();
    sub_1C44482AC(v37, v31);
    v32 = v25;
    v33 = v27;
    v34 = v29;
    sub_1C44482AC(v31, v35);
    v26 = v32;
    v28 = v33;
    v30 = v34;
    sub_1C44482AC(v35, v36);
    v15 = sub_1C4F02178() & ~(-1 << *(v3 + 32));
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) == 0)
    {
      sub_1C43FFBF0();
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        if (*(v7 + 8 * v16) != -1)
        {
          sub_1C43FCF98();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_1C43FFC04();
LABEL_21:
    v6 &= v6 - 1;
    sub_1C44064EC();
    *(v7 + v20) |= v21;
    sub_1C444FCAC(v22, v26, v28, v30);
    sub_1C44482AC(v36, (v24 + 32 * v23));
    ++*(v3 + 16);
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v2)
    {

      return;
    }

    v6 = *(v0 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1C465DFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  v21 = v20;
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v88 = v22;
  v89 = v23;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v87 = v25 - v24;
  v86 = sub_1C456902C(&qword_1EC0BA810, &qword_1C4F14738);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  v85 = v73 - v27;
  v84 = sub_1C456902C(&qword_1EC0BA818, &qword_1C4F14740);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  v83 = v73 - v29;
  v82 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FCDF8();
  v74 = v30;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v73 - v32;
  v81 = sub_1C456902C(&qword_1EC0BA820, &unk_1C4F613D0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v34);
  v79 = v73 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v78 = v73 - v37;
  v90 = v21;
  if (*(v21 + 16))
  {
    sub_1C456902C(&qword_1EC0BA828, &qword_1C4F14748);
    v38 = sub_1C4404D2C();
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC8];
  }

  v39 = v90 + 64;
  v40 = 1 << *(v90 + 32);
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  else
  {
    v41 = -1;
  }

  v42 = v41 & *(v90 + 64);
  v43 = (v40 + 63) >> 6;
  v76 = v89 + 16;
  v75 = v89 + 32;
  v73[4] = 0x80000001C4F879A0;
  v73[3] = 0x80000001C4F87980;
  v73[2] = 0x80000001C4F87960;
  v73[1] = 0x80000001C4F87940;
  v44 = v38 + 64;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v45 = 0;
  v80 = v33;
  v77 = v38;
  if (!v42)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v47 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    v48 = v47 | (v45 << 6);
    v49 = v89;
    v50 = *(*(v90 + 48) + v48);
    v51 = v81;
    v52 = v78;
    v53 = v88;
    (*(v89 + 16))(&v78[*(v81 + 48)], *(v90 + 56) + *(v89 + 72) * v48, v88);
    *v52 = v50;
    v54 = v52;
    v55 = v79;
    sub_1C44CDA30(v54, v79, &qword_1EC0BA820, &unk_1C4F613D0);
    v56 = *(v51 + 48);
    v57 = v85;
    v58 = *(v86 + 48);
    *v85 = *v55;
    (*(v49 + 32))(v87, &v55[v56], v53);
    swift_dynamicCast();
    v59 = v83;
    v60 = *(v84 + 48);
    *v83 = *v57;
    sub_1C44CDA30(&v57[v58], &v59[v60], &unk_1EC0B84E0, qword_1C4F0D2D0);
    v61 = *v59;
    v62 = &v59[v60];
    v63 = v80;
    sub_1C44CDA30(v62, v80, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v64 = v77;
    sub_1C4F02AF8();
    sub_1C4F01298();

    v65 = sub_1C4F02B68() & ~(-1 << *(v64 + 32));
    if (((-1 << v65) & ~*(v44 + 8 * (v65 >> 6))) == 0)
    {
      sub_1C43FFBF0();
      while (++v66 != v68 || (v67 & 1) == 0)
      {
        v69 = v66 == v68;
        if (v66 == v68)
        {
          v66 = 0;
        }

        v67 |= v69;
        if (*(v44 + 8 * v66) != -1)
        {
          sub_1C43FCF98();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_1C43FFC04();
LABEL_21:
    sub_1C44064EC();
    *(v44 + v70) |= v71;
    *(*(v64 + 48) + v72) = v61;
    sub_1C44CDA30(v63, *(v64 + 56) + *(v74 + 72) * v72, &unk_1EC0B84E0, qword_1C4F0D2D0);
    ++*(v64 + 16);
  }

  while (v42);
LABEL_8:
  while (1)
  {
    v46 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v46 >= v43)
    {

      sub_1C43FE9F0();
      return;
    }

    v42 = *(v39 + 8 * v46);
    ++v45;
    if (v42)
    {
      v45 = v46;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1C465E5D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1C43FEAE0();
  if (v4)
  {
    sub_1C456902C(&qword_1EC0B86B8, &unk_1C4F58C00);
    v6 = sub_1C4404D2C();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  sub_1C43FD030();
  v9 = v8 & v7;
  sub_1C44016F4();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = 0;
  while (v9)
  {
    v11 = v10;
LABEL_10:
    v9 &= v9 - 1;
    sub_1C44601BC();
    v14 = *v12;
    v13 = v12[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(a2, a3);
    swift_dynamicCast();
    sub_1C44482AC(&v26, v28);
    sub_1C44482AC(v28, v29);
    sub_1C44482AC(v29, &v27);
    v15 = sub_1C445FAA8(v14, v13);
    if (v16)
    {
      sub_1C445C128();
      v17 = (v6[7] + 32 * v15);
      sub_1C440962C(v17);
      sub_1C44482AC(&v27, v17);
      v10 = v11;
    }

    else
    {
      sub_1C441D17C();
      if (v18)
      {
        goto LABEL_17;
      }

      sub_1C4404D48();
      *(v6 + v20 + 64) |= v19 << v15;
      sub_1C4440CDC(v6[6]);
      sub_1C44482AC(&v27, v21);
      sub_1C442F124();
      if (v23)
      {
        goto LABEL_18;
      }

      v6[2] = v22;
      v10 = v11;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return;
    }

    v9 = *(v3 + 64 + 8 * v11);
    ++v10;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C465E7E0()
{
  sub_1C44158A0();
  sub_1C43FEAE0();
  if (v1)
  {
    sub_1C456902C(&qword_1EC0BA880, &unk_1C4F21960);
    v3 = sub_1C4404D2C();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  sub_1C43FD030();
  v6 = v5 & v4;
  sub_1C44BBDD0();
  sub_1C4418354();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = 0;
  while (v6)
  {
    v8 = v7;
LABEL_10:
    v6 &= v6 - 1;
    sub_1C44601BC();
    v11 = *v9;
    v10 = v9[1];
    v14 = *(v13 + 8 * v12);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = v14;
    v16 = sub_1C4405814();
    v18 = sub_1C445FAA8(v16, v17);
    if (v19)
    {
      sub_1C441B334();
      *v20 = v11;
      v20[1] = v10;

      v21 = *(v3 + 56);
      v22 = *(v21 + 8 * v18);
      *(v21 + 8 * v18) = v15;

      v7 = v8;
    }

    else
    {
      sub_1C441D17C();
      if (v23)
      {
        goto LABEL_17;
      }

      sub_1C440BBAC();
      sub_1C442FC18(v24);
      v26 = (v25 + 16 * v18);
      *v26 = v11;
      v26[1] = v10;
      *(*(v3 + 56) + 8 * v18) = v15;
      sub_1C442F124();
      if (v28)
      {
        goto LABEL_18;
      }

      *(v3 + 16) = v27;
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

    if (v8 >= v2)
    {

      sub_1C4410198();
      return;
    }

    v6 = *(v0 + 64 + 8 * v8);
    ++v7;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C465E94C()
{
  sub_1C43FEAE0();
  if (v1)
  {
    sub_1C456902C(&qword_1EC0BA7B0, &qword_1C4F146E0);
    v2 = sub_1C4404D2C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  sub_1C43FD030();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  sub_1C4418354();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    sub_1C43FE644();
    sub_1C44601BC();
    v12 = *v10;
    v11 = v10[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0BA7B8, &qword_1C4F627A0);
    v13 = sub_1C456902C(&unk_1EC0C5D60, &unk_1C4F5BC70);
    sub_1C445BF00(v13, v14, v15);
    v16 = sub_1C43FD018();
    v18 = sub_1C445FAA8(v16, v17);
    if (v19)
    {
      sub_1C4414510();
      *v20 = v12;
      v20[1] = v11;

      *(*(v2 + 56) + 8 * v18) = v27;

      v8 = v9;
    }

    else
    {
      sub_1C441D17C();
      if (v21)
      {
        goto LABEL_17;
      }

      sub_1C4404D48();
      sub_1C442FC18(v22);
      v24 = (v23 + 16 * v18);
      *v24 = v12;
      v24[1] = v11;
      *(*(v2 + 56) + 8 * v18) = v27;
      sub_1C442F124();
      if (v26)
      {
        goto LABEL_18;
      }

      *(v2 + 16) = v25;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v5 = *(v0 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C465EB08()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  v17 = 0;
  v25 = v4;
  v26 = v2;
  v18 = v4 + 56;
  sub_1C43FD030();
  v21 = v20 & v19;
  sub_1C44016F4();
  v24[2] = v7 + 32;
  v24[3] = v7 + 16;
  v24[1] = v7 + 8;
  while (v21)
  {
    v22 = v17;
LABEL_7:
    v23 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    (*(v7 + 16))(v16, *(v25 + 48) + *(v7 + 72) * (v23 | (v22 << 6)), v5);
    (*(v7 + 32))(v10, v16, v5);
    sub_1C44CB508();
    (*(v7 + 8))(v13, v5);
  }

  while (1)
  {
    v22 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v22 >= v0)
    {

      sub_1C43FE9F0();
      return;
    }

    v21 = *(v18 + 8 * v22);
    ++v17;
    if (v21)
    {
      v17 = v22;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1C465ED98()
{
  sub_1C43FBD3C();
  v22[1] = v0;
  v23 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8(0);
  v22[0] = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1C43FC0C8();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v14 = 0;
  v24 = v5;
  sub_1C43FD030();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;
  if ((v16 & v15) != 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v20 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      sub_1C43FE9F0();
      return;
    }

    v17 = *(v7 + 56 + 8 * v20);
    ++v14;
    if (v17)
    {
      v14 = v20;
      do
      {
LABEL_7:
        v17 &= v17 - 1;
        sub_1C46631E8();
        sub_1C4471DEC();
        v21 = sub_1C43FD018();
        v23(v21);
        sub_1C447E8C0(v12, v3);
      }

      while (v17);
      continue;
    }
  }

  __break(1u);
}

void *sub_1C465EF40(void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v49 = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  v10 = &qword_1C4F0C8C0;
  v47 = v4;
  for (i = v8; v7; v8 = i)
  {
    v11 = v9;
LABEL_8:
    v12 = __clz(__rbit64(v7)) | (v11 << 6);
    v13 = (*(v49 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1C4460108(*(v49 + 56) + 32 * v12, &v58, &qword_1EC0BCD10, v10);
    v50 = v58;
    v51 = v59;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v52 = v14;
    if (!v14)
    {
      goto LABEL_39;
    }

    v7 &= v7 - 1;
    v58 = v50;
    v59 = v51;
    if (a1[2])
    {
      v16 = sub_1C445FAA8(v15, v14);
      if (v17)
      {
        sub_1C4460108(a1[7] + 32 * v16, &v54, &qword_1EC0BCD10, v10);
        v56 = v54;
        v57 = v55;
        if (*(&v55 + 1))
        {
          v18 = v15;
          v19 = sub_1C456902C(&qword_1EC0BA6D0, &qword_1C4F14648);
          if (swift_dynamicCast())
          {
            sub_1C4460108(&v58, &v56, &qword_1EC0BCD10, v10);
            if (*(&v57 + 1))
            {
              if (swift_dynamicCast())
              {
                v20 = sub_1C465EF40(v53, v54);

                *&v56 = v20;
                *(&v57 + 1) = v19;
                swift_isUniquelyReferenced_nonNull_native();
                *&v54 = a1;
                v21 = sub_1C445FAA8(v18, v52);
                if (__OFADD__(a1[2], (v22 & 1) == 0))
                {
                  goto LABEL_43;
                }

                v23 = v21;
                v24 = v22;
                sub_1C456902C(&qword_1EC0BA6D8, &qword_1C4F14650);
                if (sub_1C4F02458())
                {
                  v25 = sub_1C445FAA8(v18, v52);
                  if ((v24 & 1) != (v26 & 1))
                  {
                    goto LABEL_45;
                  }

                  v23 = v25;
                  if ((v24 & 1) == 0)
                  {
LABEL_19:
                    a1 = v54;
                    *(v54 + 8 * (v23 >> 6) + 64) |= 1 << v23;
                    v27 = (a1[6] + 16 * v23);
                    *v27 = v18;
                    v27[1] = v52;
                    v28 = (a1[7] + 32 * v23);
                    v29 = v57;
                    *v28 = v56;
                    v28[1] = v29;
                    v10 = &qword_1C4F0C8C0;
                    sub_1C4420C3C(&v58, &qword_1EC0BCD10, &qword_1C4F0C8C0);
                    v30 = a1[2];
                    v31 = __OFADD__(v30, 1);
                    v32 = v30 + 1;
                    if (v31)
                    {
                      goto LABEL_44;
                    }

LABEL_34:
                    a1[2] = v32;
                    goto LABEL_35;
                  }
                }

                else if ((v24 & 1) == 0)
                {
                  goto LABEL_19;
                }

                a1 = v54;
                v10 = &qword_1C4F0C8C0;
                sub_1C44408D4(&v56, *(v54 + 56) + 32 * v23, &qword_1EC0BCD10, &qword_1C4F0C8C0);
                v41 = &qword_1C4F0C8C0;
                goto LABEL_32;
              }

              v10 = &qword_1C4F0C8C0;
            }

            else
            {

              sub_1C4420C3C(&v56, &qword_1EC0BCD10, v10);
            }
          }

          v15 = v18;
        }

        else
        {
          sub_1C4420C3C(&v56, &qword_1EC0BCD10, v10);
        }
      }
    }

    v33 = v10;
    sub_1C4460108(&v58, &v56, &qword_1EC0BCD10, v10);
    swift_isUniquelyReferenced_nonNull_native();
    *&v54 = a1;
    v34 = v15;
    v35 = sub_1C445FAA8(v15, v14);
    if (__OFADD__(a1[2], (v36 & 1) == 0))
    {
      goto LABEL_41;
    }

    v37 = v35;
    v38 = v36;
    sub_1C456902C(&qword_1EC0BA6D8, &qword_1C4F14650);
    if (sub_1C4F02458())
    {
      v39 = sub_1C445FAA8(v34, v14);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_45;
      }

      v37 = v39;
    }

    v4 = v47;
    if ((v38 & 1) == 0)
    {
      a1 = v54;
      *(v54 + 8 * (v37 >> 6) + 64) |= 1 << v37;
      v42 = (a1[6] + 16 * v37);
      *v42 = v34;
      v42[1] = v14;
      v43 = (a1[7] + 32 * v37);
      v44 = v57;
      *v43 = v56;
      v43[1] = v44;
      v10 = v33;
      sub_1C4420C3C(&v58, &qword_1EC0BCD10, v33);
      v45 = a1[2];
      v31 = __OFADD__(v45, 1);
      v32 = v45 + 1;
      if (v31)
      {
        goto LABEL_42;
      }

      goto LABEL_34;
    }

    a1 = v54;
    v10 = v33;
    sub_1C44408D4(&v56, *(v54 + 56) + 32 * v37, &qword_1EC0BCD10, v33);
    v41 = v33;
LABEL_32:
    sub_1C4420C3C(&v58, &qword_1EC0BCD10, v41);
LABEL_35:
    v9 = v11;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
LABEL_39:

      return a1;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void BMContextualUnderstandingSoundAnalysis.asHierarchicalDictionary()()
{
  sub_1C43FBD3C();
  sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
  sub_1C4F00F28();
  v0 = BMContextualUnderstandingSoundAnalysis.asFlatDictionary()();
  v1 = sub_1C4F00F28();
  v2 = v0 + 64;
  sub_1C43FD030();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
  v96 = v1;
  v89 = v7;
  v90 = v0 + 64;
  if (!v5)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    v91 = v5;
    v92 = v8;
    v10 = (*(v0 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v12 = *v10;
    v11 = v10[1];
    sub_1C443F580();
    sub_1C4460108(v13, v14, v15, v16);
    v93 = v101;
    v94 = v102;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!v11)
    {
LABEL_58:

      sub_1C43FE9F0();
      return;
    }

    v101 = v93;
    v102 = v94;
    v99 = v12;
    v100 = v11;
    v17 = *(v1 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v17)
    {
      v18 = v11;
      sub_1C445FAA8(v12, v11);
      if (v19)
      {
        sub_1C4434540();
        v11 = *v20;
        v1 = v20[1];
        swift_bridgeObjectRetain_n();
        goto LABEL_12;
      }
    }

    else
    {
      v18 = v11;
    }

    sub_1C4416730();
LABEL_12:
    v21 = sub_1C4F00F28();
    v22 = v11 == 1953460082 && v1 == 0xE400000000000000;
    if (v22)
    {
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v23 = sub_1C4461C24();

      if ((v23 & 1) == 0)
      {
        v95 = v0;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        swift_beginAccess();
        v24 = v18;
        while (1)
        {
          v25 = v1;
          v26 = v11;
          sub_1C456902C(&qword_1EC0BA6C8, &qword_1C4F14640);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1C4F0D130;
          *(inited + 32) = v12;
          *(inited + 40) = v24;
          sub_1C443F580();
          sub_1C4460108(v28, v29, v30, v31);
          v32 = sub_1C4F00F28();
          v33 = sub_1C456902C(&qword_1EC0BA6D0, &qword_1C4F14648);
          *&v97 = v32;
          *(&v98 + 1) = v33;
          swift_isUniquelyReferenced_nonNull_native();
          v34 = sub_1C445FAA8(v11, v25);
          if (__OFADD__(v21[2], (v35 & 1) == 0))
          {
            goto LABEL_60;
          }

          v36 = v34;
          v37 = v35;
          v11 = sub_1C456902C(&qword_1EC0BA6D8, &qword_1C4F14650);
          if (sub_1C4F02458())
          {
            v38 = sub_1C442A8D0();
            sub_1C445FAA8(v38, v39);
            sub_1C43FED0C();
            if (!v22)
            {
              goto LABEL_64;
            }

            v36 = v40;
          }

          if (v37)
          {
            sub_1C443F580();
            sub_1C44408D4(v41, v42, v43, v44);
          }

          else
          {
            sub_1C4401D38(&v21[v36 >> 6]);
            v45 = (v21[6] + 16 * v36);
            *v45 = v26;
            v45[1] = v25;
            v46 = (v21[7] + 32 * v36);
            v47 = v98;
            *v46 = v97;
            v46[1] = v47;
            v48 = v21[2];
            v49 = __OFADD__(v48, 1);
            v50 = v48 + 1;
            if (v49)
            {
              goto LABEL_63;
            }

            v21[2] = v50;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          }

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v51 = sub_1C445FAA8(v12, v24);
          v53 = v52;

          if (v53)
          {
            swift_isUniquelyReferenced_nonNull_native();
            sub_1C4F02458();

            v54 = (v21[7] + 32 * v51);
            v55 = v54[1];
            v97 = *v54;
            v98 = v55;
            sub_1C4F02478();
          }

          else
          {
            v97 = 0uLL;
            *&v98 = 0;
            *(&v98 + 1) = 1;
          }

          sub_1C4420C3C(&v97, &qword_1EC0BA6E0, &unk_1C4F5E2C0);
          v99 = v26;
          v100 = v25;

          if (!v21[2])
          {
            goto LABEL_61;
          }

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v56 = sub_1C442A8D0();
          sub_1C445FAA8(v56, v57);
          if ((v58 & 1) == 0)
          {
            goto LABEL_62;
          }

          sub_1C443F580();
          sub_1C4460108(v59, v60, v61, v62);
          sub_1C4420C3C(&v101, &qword_1EC0BCD10, &qword_1C4F0C8C0);
          v101 = v97;
          v102 = v98;
          if (*(v96 + 16) && (_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), v63 = sub_1C442A8D0(), v1 = v96, sub_1C445FAA8(v63, v64), v66 = v65, , , (v66 & 1) != 0))
          {
            if (*(v96 + 16) && (_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), v67 = sub_1C442A8D0(), v69 = sub_1C445FAA8(v67, v68), v1 = v70, , (v1 & 1) != 0))
            {
              v71 = (*(v96 + 56) + 16 * v69);
              v11 = *v71;
              v1 = v71[1];
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            }

            else
            {
              sub_1C4416730();
            }

            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          }

          else
          {
            if (qword_1EDDFECB0 != -1)
            {
              swift_once();
            }

            v72 = sub_1C4F00978();
            sub_1C442B738(v72, qword_1EDDFECB8);
            v73 = sub_1C4F00968();
            v1 = sub_1C4F01CD8();
            if (os_log_type_enabled(v73, v1))
            {
              v74 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              *&v97 = v75;
              *v74 = 136315138;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v76 = sub_1C442A8D0();
              v79 = sub_1C441D828(v76, v77, v78);

              *(v74 + 4) = v79;
              _os_log_impl(&dword_1C43F8000, v73, v1, "Soundname: %s is not contained in hierarchy dictionary", v74, 0xCu);
              sub_1C440962C(v75);
              MEMORY[0x1C6942830](v75, -1, -1);
              MEMORY[0x1C6942830](v74, -1, -1);
            }

            sub_1C4416730();
          }

          if (v11 == 1953460082 && v1 == 0xE400000000000000)
          {
            break;
          }

          v81 = sub_1C4461C24();

          v12 = v26;
          v24 = v25;
          if (v81)
          {

LABEL_53:
            v12 = v26;
            v18 = v25;
            v0 = v95;
            goto LABEL_54;
          }
        }

        swift_bridgeObjectRelease_n();
        goto LABEL_53;
      }
    }

LABEL_54:
    if (!v21[2])
    {
      sub_1C456902C(&qword_1EC0BA6C8, &qword_1C4F14640);
      v82 = swift_initStackObject();
      *(v82 + 16) = xmmword_1C4F0D130;
      *(v82 + 32) = v12;
      *(v82 + 40) = v18;
      sub_1C443F580();
      sub_1C4460108(v83, v84, v85, v86);
      sub_1C4F00F28();
    }

    v5 = (v91 - 1) & v91;
    v87 = sub_1C44191B8();
    sub_1C465EF40(v87, v88);

    sub_1C4420C3C(&v101, &qword_1EC0BCD10, &qword_1C4F0C8C0);

    v1 = v96;
    v7 = v89;
    v2 = v90;
    v8 = v92;
  }

  while (v5);
LABEL_2:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      goto LABEL_58;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  sub_1C4F029F8();
  __break(1u);
}

unint64_t BMContextualUnderstandingSoundAnalysis.asFlatDictionary()()
{
  sub_1C443F580();
  v1 = sub_1C4F00F28();
  sub_1C443F580();
  v2 = sub_1C4F00F28();
  v3 = [v0 classifiedSounds];
  sub_1C4461BB8(0, &qword_1EC0BA6E8, 0x1E698EB78);
  v4 = sub_1C4F01678();

  v65 = sub_1C443156C(v4);
  v5 = 0;
  v64 = v4 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v65 == v5)
    {

      v62 = sub_1C465D560(v1);

      return v62;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1C6940F90](v5, v4);
    }

    else
    {
      if (v5 >= *(v64 + 16))
      {
        goto LABEL_40;
      }

      v6 = *(v4 + 8 * v5 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v8 = sub_1C4663178(v6);
    if (!v9)
    {
      goto LABEL_47;
    }

    v10 = v8;
    v11 = v9;
    v12 = 0.0;
    if (v1[2])
    {
      v13 = sub_1C44191B8();
      v15 = sub_1C445FAA8(v13, v14);
      if (v16)
      {
        v12 = *(v1[7] + 8 * v15);
      }
    }

    v66 = v7;
    if (v2[2])
    {
      v17 = sub_1C44191B8();
      v19 = sub_1C445FAA8(v17, v18);
      v20 = 1.0;
      v21 = 1.0;
      if (v22)
      {
        v21 = *(v2[7] + 8 * v19);
      }

      v12 = v12 * v21;
      if (v2[2])
      {
        v23 = sub_1C44191B8();
        v25 = sub_1C445FAA8(v23, v24);
        if (v26)
        {
          v20 = *(v2[7] + 8 * v25) + 1.0;
        }
      }
    }

    else
    {
      v20 = 1.0;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v27 = sub_1C44191B8();
    v29 = sub_1C445FAA8(v27, v28);
    if (__OFADD__(v2[2], (v30 & 1) == 0))
    {
      goto LABEL_41;
    }

    v31 = v29;
    v32 = v30;
    sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
    if (sub_1C4F02458())
    {
      v33 = sub_1C44191B8();
      v35 = sub_1C445FAA8(v33, v34);
      if ((v32 & 1) != (v36 & 1))
      {
        goto LABEL_48;
      }

      v31 = v35;
    }

    if (v32)
    {
      *(v2[7] + 8 * v31) = v20;
    }

    else
    {
      sub_1C4401D38(&v2[v31 >> 6]);
      v37 = (v2[6] + 16 * v31);
      *v37 = v10;
      v37[1] = v11;
      *(v2[7] + 8 * v31) = v20;
      v38 = v2[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_45;
      }

      v2[2] = v40;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    [v66 confidence];
    if (!v2[2])
    {
      goto LABEL_42;
    }

    v42 = v41;
    v43 = sub_1C44191B8();
    v45 = sub_1C445FAA8(v43, v44);
    if ((v46 & 1) == 0)
    {
      goto LABEL_43;
    }

    v47 = *(v2[7] + 8 * v45);
    swift_isUniquelyReferenced_nonNull_native();
    v48 = sub_1C44191B8();
    v50 = sub_1C445FAA8(v48, v49);
    v52 = v51;
    if (__OFADD__(v1[2], (v51 & 1) == 0))
    {
      goto LABEL_44;
    }

    v53 = v50;
    if (sub_1C4F02458())
    {
      v54 = sub_1C44191B8();
      v56 = sub_1C445FAA8(v54, v55);
      if ((v52 & 1) != (v57 & 1))
      {
        goto LABEL_48;
      }

      v53 = v56;
    }

    if (v52)
    {
      *(v1[7] + 8 * v53) = (v12 + v42) / v47;
    }

    else
    {
      sub_1C4401D38(&v1[v53 >> 6]);
      v58 = (v1[6] + 16 * v53);
      *v58 = v10;
      v58[1] = v11;
      *(v1[7] + 8 * v53) = v59;
      v60 = v1[2];
      v39 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v39)
      {
        goto LABEL_46;
      }

      v1[2] = v61;
    }

    ++v5;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
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
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void sub_1C466018C()
{
  swift_isUniquelyReferenced_nonNull_native();
  v1 = *v0;
  sub_1C4405814();
  sub_1C4660594();
  *v0 = v1;
}

_OWORD *sub_1C46601FC()
{
  sub_1C442F0C4();
  sub_1C4416E4C(v3, v4, v5);
  sub_1C442C5D8();
  if (v6)
  {
    __break(1u);
LABEL_14:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  sub_1C4460A24();
  sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    v7 = sub_1C4405814();
    sub_1C445FAA8(v7, v8);
    sub_1C44331E4();
    if (!v10)
    {
      goto LABEL_14;
    }

    v2 = v9;
  }

  if (v1)
  {
    sub_1C440962C((*(*v0 + 56) + 32 * v2));
    sub_1C43FBC98();
    sub_1C4422220();

    return sub_1C44482AC(v11, v12);
  }

  else
  {
    sub_1C441C874();
    sub_1C457DC88(v15, v16, v17, v18, v19);
    sub_1C4422220();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C466033C()
{
  sub_1C43FBD3C();
  sub_1C440A7AC();
  sub_1C4EFDAF8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C4406908();
  sub_1C457AAB4();
  sub_1C442C5D8();
  if (v2)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C441020C();
  sub_1C456902C(&qword_1EC0BA780, &qword_1C4F146B8);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C4426A50();
    sub_1C457AAB4();
    sub_1C440F418();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    sub_1C43FC0B4();
    sub_1C43FE9F0();
  }

  else
  {
    v6 = sub_1C4411960();
    v7(v6);
    v8 = sub_1C4412E2C();
    sub_1C457DD10(v8, v9, v10, v11);
    sub_1C43FE9F0();
  }
}

void sub_1C4660468()
{
  sub_1C43FBD3C();
  sub_1C440A7AC();
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C4406908();
  sub_1C457AB64();
  sub_1C442C5D8();
  if (v2)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C441020C();
  sub_1C456902C(&qword_1EC0BA838, &unk_1C4F54220);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C4426A50();
    sub_1C457AB64();
    sub_1C440F418();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    sub_1C43FC0B4();
    sub_1C43FE9F0();
  }

  else
  {
    v5 = sub_1C4411960();
    v6(v5);
    v7 = sub_1C4412E2C();
    sub_1C457DD28(v7, v8, v9, v10);
    sub_1C43FE9F0();
  }
}

void sub_1C4660594()
{
  sub_1C4424FA4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1C445FAA8(v5, v3);
  sub_1C442C5D8();
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C44690DC();
  v10 = sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
  if (sub_1C440D17C(v10))
  {
    v11 = sub_1C440C3B4();
    sub_1C445FAA8(v11, v4);
    sub_1C43FED0C();
    if (!v13)
    {
      goto LABEL_12;
    }

    v2 = v12;
  }

  v14 = *v0;
  if (v1)
  {
    *(*(v14 + 56) + 8 * v2) = v8;
  }

  else
  {
    sub_1C457DBD8(v2, v6, v4, v14);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C46606B8()
{
  sub_1C43FBD3C();
  v6 = v5;
  sub_1C448F0D8();
  sub_1C457AC14(v7);
  sub_1C442C5D8();
  if (v10)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = v9;
  v13 = sub_1C456902C(&qword_1EC0BA7E0, &qword_1C4F14708);
  if (sub_1C44951A0(v13))
  {
    sub_1C457AC14(v6);
    sub_1C4404D54();
    if (!v15)
    {
      goto LABEL_12;
    }

    v11 = v14;
  }

  if (v12)
  {
    v16 = (*(*v1 + 56) + 32 * v11);
    *v16 = v4;
    v16[1] = v3;
    v16[2] = v2;
    v16[3] = v0;
    sub_1C43FE9F0();
  }

  else
  {
    sub_1C43FE9F0();

    sub_1C457DD40(v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1C46607A8()
{
  sub_1C442F0C4();
  v4 = sub_1C441F5D8(v2, v3);
  sub_1C457AC14(v4);
  sub_1C442C5D8();
  if (v5)
  {
    __break(1u);
LABEL_13:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  sub_1C44690DC();
  v6 = sub_1C456902C(&qword_1EC0BA7D8, &qword_1C4F14700);
  v7 = sub_1C440D17C(v6);
  if (v7)
  {
    v10 = sub_1C440C3B4();
    sub_1C457AC14(v10);
    sub_1C43FED0C();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_1C442AB6C(v7, v8, v9, *v0);
    sub_1C4422220();
  }

  else
  {
    sub_1C4409AF8();
    sub_1C4422220();

    return sub_1C457EB24();
  }
}

void sub_1C4660870()
{
  sub_1C43FBD3C();
  sub_1C440A7AC();
  sub_1C4EFDAB8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4406908();
  sub_1C457AD28();
  sub_1C442C5D8();
  if (v5)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C441020C();
  sub_1C456902C(&qword_1EC0B9A48, &unk_1C4F10BA0);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C4426A50();
    sub_1C457AD28();
    sub_1C440F418();
    if (!v7)
    {
      goto LABEL_11;
    }

    v2 = v6;
  }

  if (v3)
  {
    sub_1C44408D4(v0, *(*v1 + 56) + 48 * v2, &qword_1EC0B9A20, &unk_1C4F10DF0);
  }

  else
  {
    v8 = sub_1C4411960();
    v9(v8);
    v10 = sub_1C4412E2C();
    sub_1C457DD8C(v10, v11, v12, v13);
  }

  sub_1C43FE9F0();
}

void sub_1C466099C()
{
  sub_1C43FBD3C();
  sub_1C440A7AC();
  sub_1C4EFDAB8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C4406908();
  sub_1C457AD28();
  sub_1C442C5D8();
  if (v2)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C441020C();
  sub_1C456902C(&qword_1EC0BA708, &qword_1C4F14668);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C4426A50();
    sub_1C457AD28();
    sub_1C440F418();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    sub_1C43FC0B4();
    sub_1C43FE9F0();
  }

  else
  {
    v5 = sub_1C4411960();
    v6(v5);
    v7 = sub_1C4412E2C();
    sub_1C457DE14(v7, v8, v9, v10);
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C4660AC8()
{
  sub_1C442F0C4();
  v4 = sub_1C441F5D8(v2, v3);
  sub_1C457ADD8(v4);
  sub_1C442C5D8();
  if (v5)
  {
    __break(1u);
LABEL_13:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  sub_1C44690DC();
  v6 = sub_1C456902C(&qword_1EC0BA7D0, &qword_1C4F146F8);
  v7 = sub_1C440D17C(v6);
  if (v7)
  {
    v10 = sub_1C440C3B4();
    sub_1C457ADD8(v10);
    sub_1C43FED0C();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_1C442AB6C(v7, v8, v9, *v0);
    sub_1C4422220();
  }

  else
  {
    sub_1C4409AF8();
    sub_1C4422220();

    return sub_1C457EB24();
  }
}

void sub_1C4660B90()
{
  sub_1C442F0C4();
  v6 = sub_1C441F5D8(v4, v5);
  sub_1C457AE04(v6);
  sub_1C442C5D8();
  if (v7)
  {
    __break(1u);
LABEL_12:
    type metadata accessor for PHPersonAgeType(0);
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C44690DC();
  v8 = sub_1C456902C(&qword_1EC0B8D90, &qword_1C4F0E330);
  if (sub_1C440D17C(v8))
  {
    v9 = sub_1C440C3B4();
    sub_1C457AE04(v9);
    sub_1C43FED0C();
    if (!v11)
    {
      goto LABEL_12;
    }

    v3 = v10;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    sub_1C4422220();
  }

  else
  {
    sub_1C4409AF8();
    sub_1C4422220();

    sub_1C457DE2C(v12, v13, v14, v15);
  }
}

void sub_1C4660C74()
{
  sub_1C442F0C4();
  sub_1C444B080();
  v5 = v4;
  v7 = sub_1C440DFB8(v4, v6);
  sub_1C445FAA8(v7, v8);
  sub_1C442C5D8();
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C4460A24();
  sub_1C456902C(&qword_1EC0B9E10, &unk_1C4F12D68);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C444C21C();
    sub_1C44331E4();
    if (!v11)
    {
      goto LABEL_12;
    }

    v3 = v10;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 2 * v3) = v5;
    sub_1C4422220();
  }

  else
  {
    v12 = sub_1C44158DC();
    sub_1C457DE68(v12, v13, v0, v5, v14);
    sub_1C4422220();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4660D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1C440D19C();
  a25 = v29;
  a26 = v30;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_1C457AF68(v37);
  sub_1C442C5D8();
  if (v41)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C443DF54();
  sub_1C456902C(v36, v34);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C457AF68(v38);
    sub_1C4410A40();
    if (!v43)
    {
      goto LABEL_12;
    }

    v27 = v42;
  }

  v44 = *v26;
  if (v28)
  {
    *(*(v44 + 56) + 8 * v27) = v40;
    sub_1C4405950();
  }

  else
  {
    v32(v27, v38, v40, v44);
    sub_1C45A2358(v38, &a9);
    sub_1C4405950();
  }
}

uint64_t sub_1C4660EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C442F0C4();
  sub_1C4416E4C(v11, v12, v13);
  sub_1C442C5D8();
  if (v16)
  {
    __break(1u);
LABEL_14:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v17 = v14;
  v18 = v15;
  sub_1C456902C(&qword_1EC0B8D78, &qword_1C4F0E308);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    v10 = *v10;
    v19 = sub_1C4405814();
    sub_1C445FAA8(v19, v20);
    sub_1C4410A40();
    if (!v22)
    {
      goto LABEL_14;
    }

    v17 = v21;
  }

  if (v18)
  {
    sub_1C4413ECC();
    sub_1C4EFF0C8();
    sub_1C43FBCE0();
    sub_1C443F124(v10 + *(v23 + 72) * v17);
    sub_1C4422220();

    return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }

  else
  {
    sub_1C441C874();
    sub_1C457DEE8(v33, v34, v35, v36, v37);
    sub_1C4422220();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4660FFC()
{
  sub_1C44158A0();
  v4 = v3;
  v6 = v5;
  v26 = v7;
  sub_1C446060C();
  v9 = v8;
  sub_1C445FAA8(v10, v11);
  sub_1C442C5D8();
  if (v14)
  {
    __break(1u);
LABEL_14:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v15 = v12;
  v16 = v13;
  sub_1C456902C(&qword_1EC0BA928, &qword_1C4F14800);
  if (sub_1C4F02458())
  {
    v17 = sub_1C44158DC();
    sub_1C445FAA8(v17, v18);
    sub_1C440F418();
    if (!v20)
    {
      goto LABEL_14;
    }

    v15 = v19;
  }

  v21 = *v0;
  if (v16)
  {
    v22 = (*(v21 + 56) + 32 * v15);
    *v22 = v9;
    v22[1] = v2;
    v22[2] = v1;
    v22[3] = v26;

    sub_1C4410198();
  }

  else
  {
    sub_1C457DF64(v15, v6, v4, v9, v2, v1, v26, v21);
    sub_1C4410198();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4661148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBD3C();
  sub_1C440A7AC();
  sub_1C4EFF428();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4406908();
  sub_1C457B070();
  sub_1C442C5D8();
  if (v16)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C441020C();
  sub_1C456902C(&qword_1EC0BA920, &unk_1C4F3A6B0);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C4426A50();
    sub_1C457B070();
    sub_1C440F418();
    if (!v18)
    {
      goto LABEL_12;
    }

    v13 = v17;
  }

  if (v14)
  {
    v19 = *(*v12 + 56);
    sub_1C4EFF0C8();
    sub_1C43FBCE0();
    sub_1C443F124(v19 + *(v20 + 72) * v13);
    sub_1C43FE9F0();

    v24(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
  }

  else
  {
    v29 = sub_1C4411960();
    v30(v29);
    v31 = sub_1C4412E2C();
    sub_1C457DFB4(v31, v32, v33, v34);
    sub_1C43FE9F0();
  }
}

void sub_1C46612A8()
{
  sub_1C43FBD3C();
  sub_1C44305B0(v3, v4);
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C440593C();
  sub_1C457AB64();
  sub_1C442C5D8();
  if (v6)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C443EEC4();
  sub_1C456902C(&qword_1EC0BA730, &qword_1C4F14678);
  sub_1C4408720();
  if (sub_1C4F02458())
  {
    sub_1C447F8EC();
    sub_1C457AB64();
    sub_1C447EF98();
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  v8 = *v1;
  if (v2)
  {
    sub_1C4422A54();
    sub_1C43FE9F0();
  }

  else
  {
    v10 = sub_1C44158DC();
    v11(v10);
    v12 = sub_1C43FD018();
    sub_1C457DFF8(v12, v13, v0, v14, v8);
    sub_1C43FE9F0();
  }
}

id sub_1C46613F0()
{
  sub_1C44041A4();
  v13 = v2;
  sub_1C457EB50();
  sub_1C442C5D8();
  if (v5)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for NLLanguage(0);
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v6 = v3;
  v7 = v4;
  v8 = sub_1C456902C(&qword_1EC0BA760, &qword_1C4F14698);
  if (sub_1C4423638(v8))
  {
    sub_1C457EB50();
    sub_1C43FED0C();
    if (!v10)
    {
      goto LABEL_14;
    }

    v6 = v9;
  }

  v11 = *v1;
  if (v7)
  {
    *(*(v11 + 56) + 8 * v6) = v0;
  }

  else
  {
    sub_1C457EB30(v6, v13, v0, v11);

    return v13;
  }
}

void sub_1C46614F4()
{
  sub_1C442F0C4();
  sub_1C4424FA4();
  sub_1C44041A4();
  sub_1C457B350(v4);
  sub_1C442C5D8();
  if (v5)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C44690DC();
  v6 = sub_1C456902C(&qword_1EC0BA868, &qword_1C4F14768);
  if (sub_1C440D17C(v6))
  {
    v7 = sub_1C440C3B4();
    sub_1C457B350(v7);
    sub_1C43FED0C();
    if (!v9)
    {
      goto LABEL_12;
    }

    v3 = v8;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    sub_1C4422220();
  }

  else
  {
    sub_1C4422220();

    sub_1C4457B50(v10, v11, v12, v13);
  }
}

uint64_t sub_1C46615C4(uint64_t a1, double a2)
{
  sub_1C457B394(a1);
  sub_1C442C5D8();
  if (v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v5;
  v9 = v6;
  v10 = sub_1C456902C(&qword_1EC0BA8D8, &qword_1C4F147C0);
  result = sub_1C4423638(v10);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1C457B394(a1);
  if ((v9 & 1) != (v13 & 1))
  {
LABEL_11:
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v8 = result;
LABEL_5:
  v14 = *v2;
  if (v9)
  {
    *(*(v14 + 56) + 8 * v8) = a2;
  }

  else
  {
    v12.n128_f64[0] = a2;
    sub_1C457EB34(v8, a1, v14, v12);

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

void sub_1C46616C8()
{
  sub_1C43FBD3C();
  sub_1C440A7AC();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4406908();
  sub_1C44E3664();
  sub_1C442C5D8();
  if (v4)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C441020C();
  sub_1C456902C(&qword_1EC0B8DB0, &qword_1C4F0E348);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C4426A50();
    sub_1C44E3664();
    sub_1C440F418();
    if (!v6)
    {
      goto LABEL_11;
    }

    v1 = v5;
  }

  if (v2)
  {
    v7 = *(*v0 + 56);
    v8 = type metadata accessor for EntityMatch(0);
    v9 = sub_1C43FBD18(v8);
    sub_1C443E2D8(v9, v7 + *(v10 + 72) * v1);
  }

  else
  {
    v11 = sub_1C4411960();
    v12(v11);
    v13 = sub_1C4412E2C();
    sub_1C457E06C(v13, v14, v15, v16);
  }

  sub_1C43FE9F0();
}

void sub_1C466182C()
{
  sub_1C43FBD3C();
  sub_1C4434074(v5, v6, v7, v8, v9, v10);
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  sub_1C440593C();
  sub_1C44E3664();
  sub_1C442C5D8();
  if (v12)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C443EEC4();
  sub_1C456902C(v1, v0);
  sub_1C4408720();
  if (sub_1C4F02458())
  {
    sub_1C447F8EC();
    sub_1C44E3664();
    sub_1C447EF98();
    if (!v14)
    {
      goto LABEL_11;
    }

    v3 = v13;
  }

  if (v4)
  {
    *(*(*v2 + 56) + 8 * v3) = v19;
  }

  else
  {
    v15 = sub_1C44158DC();
    v16(v15);
    v17 = sub_1C43FD018();
    v18(v17);
  }

  sub_1C43FE9F0();
}

void sub_1C4661954()
{
  sub_1C43FBD3C();
  sub_1C440A7AC();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C4406908();
  sub_1C44E3664();
  sub_1C442C5D8();
  if (v2)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C441020C();
  sub_1C456902C(&qword_1EC0BA848, &unk_1C4F4F970);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C4426A50();
    sub_1C44E3664();
    sub_1C440F418();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    sub_1C43FC0B4();
    sub_1C43FE9F0();
  }

  else
  {
    v5 = sub_1C4411960();
    v6(v5);
    v7 = sub_1C4412E2C();
    sub_1C457EB2C(v7, v8, v9, v10);
    sub_1C43FE9F0();
  }
}

void sub_1C4661AA8()
{
  sub_1C43FBD3C();
  sub_1C44305B0(v3, v4);
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C440593C();
  sub_1C457AC78();
  sub_1C442C5D8();
  if (v6)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C443EEC4();
  sub_1C456902C(&qword_1EC0BA710, &unk_1C4F17420);
  sub_1C4408720();
  if (sub_1C4F02458())
  {
    sub_1C447F8EC();
    sub_1C457AC78();
    sub_1C447EF98();
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  v8 = *v1;
  if (v2)
  {
    sub_1C4422A54();
    sub_1C43FE9F0();
  }

  else
  {
    v10 = sub_1C44158DC();
    v11(v10);
    v12 = sub_1C43FD018();
    sub_1C457E114(v12, v13, v0, v14, v8);
    sub_1C43FE9F0();
  }
}

void sub_1C4661C40()
{
  sub_1C442F0C4();
  v5 = sub_1C441F5D8(v3, v4);
  sub_1C457ADD8(v5);
  sub_1C442C5D8();
  if (v6)
  {
    __break(1u);
LABEL_14:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C4411974();
  v7 = sub_1C456902C(&qword_1EC0BA750, &qword_1C4F61360);
  if (sub_1C440D17C(v7))
  {
    v8 = sub_1C440C3B4();
    sub_1C457ADD8(v8);
    sub_1C44331E4();
    if (!v10)
    {
      goto LABEL_14;
    }

    v1 = v9;
  }

  if (v2)
  {
    sub_1C440962C((*(*v0 + 56) + 40 * v1));
    sub_1C43FBC98();
    sub_1C4422220();

    sub_1C441D670(v11, v12);
  }

  else
  {
    sub_1C4459B10();
    sub_1C4422220();

    sub_1C457E1C8(v14, v15, v16, v17);
  }
}

void sub_1C4661D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1C440D19C();
  a25 = v31;
  a26 = v32;
  sub_1C448F0D8();
  sub_1C457AF68(v33);
  sub_1C442C5D8();
  if (v36)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  v37 = v34;
  v38 = v35;
  sub_1C456902C(&qword_1EC0BA718, &qword_1C4F541F0);
  sub_1C4408720();
  if (sub_1C4F02458())
  {
    sub_1C457AF68(v26);
    sub_1C4404D54();
    if (!v40)
    {
      goto LABEL_12;
    }

    v37 = v39;
  }

  v41 = *v27;
  if (v38)
  {
    v42 = (*(v41 + 56) + 24 * v37);
    *v42 = v30;
    v42[1] = v29;
    v42[2] = v28;
    sub_1C4405950();
  }

  else
  {
    sub_1C457E1E0(v37, v26, v30, v29, v28, v41);
    sub_1C45A2358(v26, &a9);
    sub_1C4405950();
  }
}

void sub_1C4661F14()
{
  sub_1C43FBD3C();
  sub_1C440A7AC();
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4406908();
  sub_1C457AB64();
  sub_1C442C5D8();
  if (v4)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C441020C();
  sub_1C456902C(&qword_1EC0BA8A8, &qword_1C4F14790);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C4426A50();
    sub_1C457AB64();
    sub_1C440F418();
    if (!v6)
    {
      goto LABEL_12;
    }

    v1 = v5;
  }

  if (v2)
  {
    sub_1C440962C((*(*v0 + 56) + 32 * v1));
    sub_1C43FBC98();
    sub_1C43FE9F0();

    sub_1C44482AC(v7, v8);
  }

  else
  {
    v10 = sub_1C4411960();
    v11(v10);
    v12 = sub_1C4412E2C();
    sub_1C457E244(v12, v13, v14, v15);
    sub_1C43FE9F0();
  }
}

void sub_1C466207C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBD3C();
  sub_1C440A7AC();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4406908();
  sub_1C44E3664();
  sub_1C442C5D8();
  if (v16)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C441020C();
  sub_1C456902C(&qword_1EC0B8DD8, qword_1C4F0E370);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C4426A50();
    sub_1C44E3664();
    sub_1C440F418();
    if (!v18)
    {
      goto LABEL_12;
    }

    v13 = v17;
  }

  if (v14)
  {
    v19 = *(*v12 + 56);
    sub_1C4EF9D38();
    sub_1C43FBCE0();
    sub_1C443F124(v19 + *(v20 + 72) * v13);
    sub_1C43FE9F0();

    v24(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
  }

  else
  {
    v29 = sub_1C4411960();
    v30(v29);
    v31 = sub_1C4412E2C();
    sub_1C457E2C0(v31, v32, v33, v34);
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C46621DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBD3C();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_1C440DFB8(v21, v19);
  sub_1C457EB3C();
  sub_1C442C5D8();
  if (v25)
  {
    __break(1u);
LABEL_14:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v26 = v23;
  v27 = v24;
  v28 = sub_1C456902C(&qword_1EC0B8DD0, &qword_1C4F0E368);
  if (sub_1C44951A0(v28))
  {
    sub_1C457EB3C();
    sub_1C440F418();
    if (!v30)
    {
      goto LABEL_14;
    }

    v26 = v29;
  }

  v31 = *v12;
  if (v27)
  {
    v32 = *(v31 + 56);
    sub_1C4EFF8A8();
    sub_1C43FBCE0();
    sub_1C443F124(v32 + *(v33 + 72) * v26);
    sub_1C43FE9F0();

    return v37(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
  }

  else
  {
    sub_1C457E3B0(v26, v20, v18, v16, v14, v22, v31);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FE9F0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4662330()
{
  sub_1C442F0C4();
  sub_1C444B080();
  v5 = v4;
  v7 = sub_1C440DFB8(v4, v6);
  sub_1C445FAA8(v7, v8);
  sub_1C442C5D8();
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C4460A24();
  sub_1C456902C(&qword_1EC0B9800, &qword_1C4F0FAE0);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C444C21C();
    sub_1C44331E4();
    if (!v11)
    {
      goto LABEL_12;
    }

    v3 = v10;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v5;
    sub_1C4422220();
  }

  else
  {
    v12 = sub_1C44158DC();
    sub_1C44686AC(v12, v13, v0, v5, v14);
    sub_1C4422220();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4662408()
{
  sub_1C4424FA4();
  v5 = v4;
  sub_1C44041A4();
  sub_1C457B530(v6);
  sub_1C442C5D8();
  if (v7)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C4411974();
  v8 = sub_1C456902C(&qword_1EC0BA878, &qword_1C4F14778);
  if (sub_1C440D17C(v8))
  {
    v9 = sub_1C440C3B4();
    sub_1C457B530(v9);
    sub_1C44331E4();
    if (!v11)
    {
      goto LABEL_11;
    }

    v2 = v10;
  }

  v12 = *v1;
  if (v3)
  {
    *(*(v12 + 56) + 8 * v2) = v0;
  }

  else
  {
    v13 = *v5;
    v16 = v5[1];
    v17 = v13;
    v15 = v5[2];
    sub_1C457E490(v2, v5, v0, v12);
    sub_1C448DB48(&v17, v14);
    sub_1C448DB48(&v16, v14);
    sub_1C448DB48(&v15, v14);
  }
}

void sub_1C4662550()
{
  sub_1C442F0C4();
  v6 = sub_1C441F5D8(v4, v5);
  sub_1C457B5CC(v6);
  sub_1C442C5D8();
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C44690DC();
  v8 = sub_1C456902C(&qword_1EC0BA950, &qword_1C4F14818);
  if (sub_1C440D17C(v8))
  {
    v9 = sub_1C440C3B4();
    sub_1C457B5CC(v9);
    sub_1C43FED0C();
    if (!v11)
    {
      goto LABEL_12;
    }

    v3 = v10;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    sub_1C4422220();
  }

  else
  {
    sub_1C4409AF8();
    sub_1C4422220();

    sub_1C457E4E0(v12, v13, v14, v15);
  }
}

uint64_t sub_1C466260C()
{
  sub_1C442F0C4();
  v4 = sub_1C441F5D8(v2, v3);
  sub_1C457B5CC(v4);
  sub_1C442C5D8();
  if (v5)
  {
    __break(1u);
LABEL_13:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  sub_1C44690DC();
  v6 = sub_1C456902C(&qword_1EC0BA958, &qword_1C4F14820);
  v7 = sub_1C440D17C(v6);
  if (v7)
  {
    v10 = sub_1C440C3B4();
    sub_1C457B5CC(v10);
    sub_1C43FED0C();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_1C442AB6C(v7, v8, v9, *v0);
    sub_1C4422220();
  }

  else
  {
    sub_1C4409AF8();
    sub_1C4422220();

    return sub_1C457EB24();
  }
}

void sub_1C466288C()
{
  sub_1C442F0C4();
  sub_1C4416E4C(v0, v1, v2);
  sub_1C442C5D8();
  if (v4)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  v5 = v3;
  sub_1C456902C(&qword_1EC0B8D80, &qword_1C4F0E318);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    v6 = sub_1C4405814();
    sub_1C445FAA8(v6, v7);
    sub_1C4410A40();
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  if (v5)
  {
    v9 = sub_1C456902C(&qword_1EC0B8588, &qword_1C4F0E310);
    sub_1C43FBD18(v9);
    sub_1C440BBC0();
    sub_1C44408D4(v10, v11, v12, v13);
    sub_1C4422220();
  }

  else
  {
    sub_1C441C874();
    sub_1C457E63C(v14, v15, v16, v17, v18);
    sub_1C4422220();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C46629C4()
{
  sub_1C442F0C4();
  v5 = sub_1C441F5D8(v3, v4);
  sub_1C457B724(v5);
  sub_1C442C5D8();
  if (v6)
  {
    __break(1u);
LABEL_14:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C4411974();
  v7 = sub_1C456902C(&qword_1EC0BA758, &qword_1C4F14690);
  if (sub_1C440D17C(v7))
  {
    v8 = sub_1C440C3B4();
    sub_1C457B724(v8);
    sub_1C44331E4();
    if (!v10)
    {
      goto LABEL_14;
    }

    v1 = v9;
  }

  if (v2)
  {
    sub_1C440962C((*(*v0 + 56) + 40 * v1));
    sub_1C43FBC98();
    sub_1C4422220();

    sub_1C441D670(v11, v12);
  }

  else
  {
    sub_1C4459B10();
    sub_1C4422220();

    sub_1C457E1C8(v14, v15, v16, v17);
  }
}

void sub_1C4662AA0()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  type metadata accessor for EntityEdge(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C457B750(v2);
  sub_1C442C5D8();
  if (v11)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  sub_1C456902C(&qword_1EC0BA740, &qword_1C4F14688);
  sub_1C4408720();
  if (sub_1C4F02458())
  {
    v14 = sub_1C440C3B4();
    sub_1C457B750(v14);
    sub_1C4404D54();
    if (!v16)
    {
      goto LABEL_12;
    }

    v12 = v15;
  }

  v17 = *v0;
  if (v13)
  {
    sub_1C43FC0B4();
    sub_1C43FE9F0();
  }

  else
  {
    sub_1C46631E8();
    sub_1C457E6B4(v12, v8, v4, v17);
    sub_1C43FE9F0();
  }
}

void sub_1C4662C0C()
{
  sub_1C442F0C4();
  sub_1C4416E4C(v3, v4, v5);
  sub_1C442C5D8();
  if (v6)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C443DF54();
  sub_1C456902C(&qword_1EC0BA770, &qword_1C4F146A8);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    v0 = *v0;
    v7 = sub_1C4405814();
    sub_1C445FAA8(v7, v8);
    sub_1C4410A40();
    if (!v10)
    {
      goto LABEL_12;
    }

    v1 = v9;
  }

  if (v2)
  {
    v11 = sub_1C4413ECC();
    v12 = _s14ViewConfigInfoVMa(v11);
    v13 = sub_1C43FBD18(v12);
    sub_1C443E2D8(v13, v0 + *(v14 + 72) * v1);
    sub_1C4422220();
  }

  else
  {
    sub_1C441C874();
    sub_1C457E728(v15, v16, v17, v18, v19);
    sub_1C4422220();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4662D08()
{
  sub_1C442F0C4();
  v5 = sub_1C441F5D8(v3, v4);
  sub_1C444F264(v5);
  sub_1C442C5D8();
  if (v6)
  {
    __break(1u);
LABEL_14:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C4411974();
  v7 = sub_1C456902C(&qword_1EC0BA6F0, &qword_1C4F61340);
  if (sub_1C440D17C(v7))
  {
    v8 = sub_1C440C3B4();
    sub_1C444F264(v8);
    sub_1C44331E4();
    if (!v10)
    {
      goto LABEL_14;
    }

    v1 = v9;
  }

  if (v2)
  {
    sub_1C440962C((*(*v0 + 56) + 40 * v1));
    sub_1C43FBC98();
    sub_1C4422220();

    sub_1C441D670(v11, v12);
  }

  else
  {
    sub_1C4459B10();
    sub_1C4422220();

    sub_1C457E1C8(v14, v15, v16, v17);
  }
}

void sub_1C4662E0C()
{
  sub_1C43FBD3C();
  sub_1C440A7AC();
  sub_1C4EF98F8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C4406908();
  sub_1C43FE83C();
  sub_1C442C5D8();
  if (v3)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C441020C();
  sub_1C456902C(&qword_1EC0B8DA0, &qword_1C4F0E338);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C4426A50();
    sub_1C43FE83C();
    sub_1C440F418();
    if (!v5)
    {
      goto LABEL_12;
    }

    v0 = v4;
  }

  if (v1)
  {
    sub_1C44141A0();
    sub_1C440962C((v7 + v0 * v6));
    sub_1C43FBC98();
    sub_1C43FE9F0();

    sub_1C441D670(v8, v9);
  }

  else
  {
    v11 = sub_1C4411960();
    v12(v11);
    v13 = sub_1C4412E2C();
    sub_1C457E938(v13, v14, v15, v16);
    sub_1C43FE9F0();
  }
}

void sub_1C4662F4C()
{
  sub_1C442F0C4();
  sub_1C4416E4C(v3, v4, v5);
  sub_1C442C5D8();
  if (v6)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C443DF54();
  sub_1C456902C(&qword_1EC0B8D88, &qword_1C4F0E328);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    v0 = *v0;
    v7 = sub_1C4405814();
    sub_1C445FAA8(v7, v8);
    sub_1C4410A40();
    if (!v10)
    {
      goto LABEL_12;
    }

    v1 = v9;
  }

  if (v2)
  {
    v11 = sub_1C4413ECC();
    v12 = _s15NameAndRequestsVMa(v11);
    v13 = sub_1C43FBD18(v12);
    sub_1C443E2D8(v13, v0 + *(v14 + 72) * v1);
    sub_1C4422220();
  }

  else
  {
    sub_1C441C874();
    sub_1C457E9B8(v15, v16, v17, v18, v19);
    sub_1C4422220();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4663098()
{
  sub_1C44158A0();
  sub_1C446060C();
  v4 = sub_1C440DFB8(v2, v3);
  sub_1C445FAA8(v4, v5);
  sub_1C442C5D8();
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  sub_1C4423AC0();
  sub_1C4408720();
  v7 = sub_1C4F02458();
  if (v7)
  {
    sub_1C4451290();
    sub_1C4410A40();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_1C4440968(v7, v8, v9, v10, *v0);
    sub_1C4410198();
  }

  else
  {
    v14 = sub_1C441E240();
    v15(v14);
    sub_1C4410198();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4663178(void *a1)
{
  v1 = [a1 soundName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C46631DC(uint64_t a1, char a2)
{
  if (a2)
  {
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C46631E8()
{
  v1 = sub_1C43FECE0();
  v2(v1);
  sub_1C43FBCE0();
  v3 = sub_1C43FBC98();
  v4(v3);
  return v0;
}

uint64_t sub_1C4663250(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C46632A8(v1, a1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C46632A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = sub_1C4EF9CD8();
  sub_1C440BAA8(v11, 1, 1, v13);
  (*(*(v13 - 8) + 16))(v8, a2, v13);
  sub_1C440BAA8(v8, 0, 1, v13);
  v14 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v15 = sub_1C457A86C(v11, v8, 1, 1, 0);
  v16 = [a1 publisherWithOptions_];

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  v30 = sub_1C4663A20;
  v31 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1C44405F8;
  v29 = &unk_1F43E5ED0;
  v18 = _Block_copy(&aBlock);
  v19 = a1;

  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v12;
  v30 = sub_1C4663A28;
  v31 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1C443EC24;
  v29 = &unk_1F43E5F20;
  v21 = _Block_copy(&aBlock);
  v22 = v19;

  v23 = [v16 sinkWithCompletion:v18 receiveInput:v21];

  _Block_release(v21);
  _Block_release(v18);

  swift_beginAccess();
  *a3 = *(v12 + 16);
  swift_unknownObjectRetain();
}

void sub_1C46635CC(void *a1, void *a2)
{
  v3 = [a1 error];
  if (v3)
  {
    v4 = v3;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = a2;
    v7 = v4;
    oslog = sub_1C4F00968();
    v8 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136315394;
      v11 = [v6 description];
      v12 = sub_1C4F01138();
      v14 = v13;

      v15 = sub_1C441D828(v12, v14, &v21);

      *(v9 + 4) = v15;
      *(v9 + 12) = 2080;
      v16 = v7;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v17 = sub_1C4F01198();
      v19 = sub_1C441D828(v17, v18, &v21);

      *(v9 + 14) = v19;
      _os_log_impl(&dword_1C43F8000, oslog, v8, "Unable to fetch events from stream %s with error: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v10, -1, -1);
      MEMORY[0x1C6942830](v9, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1C4663814(void *a1, void *a2, uint64_t a3)
{
  if ([a1 respondsToSelector_])
  {
    v6 = [a1 eventBody];
    if (v6)
    {
      v7 = v6;
      swift_beginAccess();
      *(a3 + 16) = v7;
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v8 = sub_1C4F00978();
      sub_1C442B738(v8, qword_1EDDFECB8);
      v9 = a2;
      oslog = sub_1C4F00968();
      v10 = sub_1C4F01CF8();

      if (os_log_type_enabled(oslog, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v19[0] = v12;
        *v11 = 136315138;
        v13 = [v9 description];
        v14 = sub_1C4F01138();
        v16 = v15;

        v17 = sub_1C441D828(v14, v16, v19);

        *(v11 + 4) = v17;
        _os_log_impl(&dword_1C43F8000, oslog, v10, "Unable to parse event body from stream: %s", v11, 0xCu);
        sub_1C440962C(v12);
        MEMORY[0x1C6942830](v12, -1, -1);
        MEMORY[0x1C6942830](v11, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_1C4663A38()
{
  type metadata accessor for BMWalletOrderMonitor();
  v0 = swift_allocObject();
  result = sub_1C4663A74();
  qword_1EDE2CC28 = v0;
  return result;
}

uint64_t *sub_1C4663A74()
{
  v2 = v0;
  v3 = *v0;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDDFECB8);
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    swift_slowAlloc();
    sub_1C440D1D4();
    *v7 = 136315138;
    v8 = sub_1C46655C4(v3);
    v10 = sub_1C441D828(v8, v9, &v12);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_1C43F8000, v5, v6, "<%s: Init>", v7, 0xCu);
    sub_1C440962C(v1);
    sub_1C43FFD4C();
    sub_1C43FEA20();
  }

  return v2;
}

uint64_t sub_1C4663BC0()
{

  return v0;
}

uint64_t sub_1C4663BE8()
{
  sub_1C4663BC0();

  return swift_deallocClassInstance();
}

void sub_1C4663C1C(uint64_t a1)
{
  v60 = a1;
  v2 = *v1;
  v3 = type metadata accessor for Configuration(0);
  v4 = sub_1C43FCF7C(v3);
  v62 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v63 = v6;
  v64 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4F01D98();
  v59 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v58 = (v9 - v8);
  sub_1C4F01D58();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v11 = sub_1C4F00D88();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1C43FBCC4();
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v12 = sub_1C4F00978();
  sub_1C442B738(v12, qword_1EDDFECB8);
  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CB8();
  v15 = os_log_type_enabled(v13, v14);
  v61 = v2;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock = v17;
    *v16 = 136315138;
    v18 = sub_1C46655C4(v2);
    v20 = sub_1C441D828(v18, v19, &aBlock);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1C43F8000, v13, v14, "<%s: Starting observe notification>", v16, 0xCu);
    sub_1C440962C(v17);
    sub_1C43FEA20();
    MEMORY[0x1C6942830](v16, -1, -1);
  }

  v21 = [BiomeLibrary() WalletPaymentsCommerce];
  swift_unknownObjectRelease();
  v22 = [v21 FoundIn];
  swift_unknownObjectRelease();
  sub_1C4665684();
  sub_1C4F00D78();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1C46656C8(&qword_1EDDF0418, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1C456902C(&qword_1EC0B8498, &qword_1C4F0CD40);
  sub_1C4573E04();
  sub_1C4F020C8();
  v59[13](v58, *MEMORY[0x1E69E8090], v7);
  v23 = sub_1C4F01DC8();
  type metadata accessor for BMWalletOrderMonitor.WalletOrderTask();
  v24 = swift_allocObject();
  *(v24 + 16) = 0xD000000000000033;
  *(v24 + 24) = 0x80000001C4F8F090;
  *(v24 + 32) = 0;
  *(v24 + 40) = MEMORY[0x1E69E7CD0];
  sub_1C456902C(&qword_1EC0BA990, &qword_1C4F148C8);
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  *(v25 + 16) = v24;
  v26 = objc_allocWithZone(MEMORY[0x1E698F258]);
  v27 = v23;
  v28 = sub_1C4665710(0xD000000000000030, 0x80000001C4F8EFD0, v27, 1);
  v57 = v28;
  v29 = objc_allocWithZone(MEMORY[0x1E698F258]);
  v30 = v27;
  v31 = sub_1C4665710(0xD000000000000032, 0x80000001C4F8F010, v30, 1);
  v58 = v31;
  v32 = objc_allocWithZone(MEMORY[0x1E698F258]);
  v59 = v30;
  v33 = sub_1C4665710(0xD000000000000036, 0x80000001C4F8F050, v59, 1);
  v55 = v33;
  v34 = [v22 ClassicOrder];
  v35 = [v34 DSLPublisher];

  v36 = [v35 subscribeOn_];
  v53 = v36;

  v56 = v22;
  v37 = [v22 OrderEmail];
  v38 = [v37 DSLPublisher];

  v39 = [v38 subscribeOn_];
  v54 = v39;

  v40 = [v22 Transaction];
  v41 = [v40 DSLPublisher];

  v42 = [v41 subscribeOn_];
  v43 = [v39 mergeWithOther_];
  v44 = [v43 mergeWithOther_];

  v69 = nullsub_1;
  v70 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v66 = 1107296256;
  v67 = sub_1C44405F8;
  v68 = &unk_1F43E5F48;
  v45 = _Block_copy(&aBlock);
  v46 = v64;
  sub_1C4430958(v60, v64, type metadata accessor for Configuration);
  v47 = (*(v62 + 80) + 24) & ~*(v62 + 80);
  v48 = (v63 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v25;
  sub_1C4665AA8(v46, v49 + v47, type metadata accessor for Configuration);
  *(v49 + v48) = v61;
  v69 = sub_1C4665784;
  v70 = v49;
  aBlock = MEMORY[0x1E69E9820];
  v66 = 1107296256;
  v67 = sub_1C443EC24;
  v68 = &unk_1F43E5F98;
  v50 = _Block_copy(&aBlock);

  v51 = [v44 sinkWithCompletion:v45 receiveInput:v50];
  _Block_release(v50);
  _Block_release(v45);
  swift_unknownObjectRelease();
}

uint64_t sub_1C4664464(void *a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v38 = a2;
  v6 = type metadata accessor for Configuration(0);
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = v7;
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocBox();
  v13 = v12;
  if (qword_1EDDFD288 != -1)
  {
    swift_once();
  }

  v14 = sub_1C442B738(v8, &qword_1EDDFD290);
  sub_1C4430958(v14, v13, type metadata accessor for Source);
  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_eventBody))
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (qword_1EDDFD1A0 != -1)
        {
          swift_once();
        }

        v15 = &qword_1EDDFD1A8;
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
LABEL_16:
          swift_unknownObjectRelease();
          goto LABEL_17;
        }

        if (qword_1EDDFD1F0 != -1)
        {
          swift_once();
        }

        v15 = &qword_1EDDFD1F8;
      }

      v14 = sub_1C442B738(v8, v15);
    }

    sub_1C4665A44(v14, v13);
    goto LABEL_16;
  }

LABEL_17:
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v16 = sub_1C4F00978();
  sub_1C442B738(v16, qword_1EDDFECB8);

  v17 = sub_1C4F00968();
  v18 = sub_1C4F01CB8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v39[0] = v20;
    *v19 = 136315394;
    v21 = sub_1C46655C4(a4);
    v23 = sub_1C441D828(v21, v22, v39);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    swift_beginAccess();
    sub_1C4430958(v13, v10, type metadata accessor for Source);
    v24 = *v10;
    v25 = v10[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C448D818(v10);
    v26 = sub_1C441D828(v24, v25, v39);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_1C43F8000, v17, v18, "<%s: Received notification for %{public}s>", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v20, -1, -1);
    MEMORY[0x1C6942830](v19, -1, -1);
  }

  swift_beginAccess();
  sub_1C4430958(v13, v10, type metadata accessor for Source);
  v27 = v38;
  sub_1C46649E0(v10, v38);
  sub_1C448D818(v10);
  v28 = v37;
  sub_1C4430958(v36, v37, type metadata accessor for Configuration);
  v29 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v30 = (v35 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = sub_1C4665AA8(v28, v31 + v29, type metadata accessor for Configuration);
  *(v31 + v30) = v11;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
  MEMORY[0x1EEE9AC00](v32);
  *(&v34 - 4) = v27;
  *(&v34 - 3) = &unk_1C4F148D8;
  *(&v34 - 2) = v31;

  os_unfair_lock_lock(v27 + 6);
  sub_1C4665A24(&v27[4]);
  os_unfair_lock_unlock(v27 + 6);
}

uint64_t sub_1C46649E0(uint64_t a1, os_unfair_lock_s *a2)
{
  v4 = sub_1C456902C(&qword_1EC0BA998, &qword_1C4F53200);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-v6];
  v10 = a1;
  os_unfair_lock_lock(a2 + 6);
  sub_1C4665B08(v7);
  os_unfair_lock_unlock(a2 + 6);
  return sub_1C448D818(&v7[*(v5 + 56)]);
}

uint64_t sub_1C4664AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v4[10] = *(type metadata accessor for Source(0) - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4664B78, 0, 0);
}

uint64_t sub_1C4664B78()
{
  v29 = v0;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v2 = sub_1C4F00978();
  *(v0 + 112) = sub_1C442B738(v2, qword_1EDDFECB8);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 72);
    v6 = swift_slowAlloc();
    swift_slowAlloc();
    sub_1C440D1D4();
    *v6 = 136315138;
    v7 = sub_1C46655C4(v5);
    v9 = sub_1C441D828(v7, v8, &v28);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_1C43F8000, v3, v4, "<%s: Starting delta update>", v6, 0xCu);
    sub_1C440962C(v1);
    sub_1C43FFD4C();
    MEMORY[0x1C6942830](v6, -1, -1);
  }

  v10 = *(v0 + 48);
  v11 = *(v10 + 32);
  *(v0 + 160) = v11;
  v12 = -1;
  v13 = -1 << v11;
  if (-(-1 << v11) < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v10 + 56);
  v15 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v17 = 0;
    do
    {
      if (((63 - v13) >> 6) - 1 == v17)
      {

        sub_1C43FBDA0();
        sub_1C43FD0C0();

        __asm { BRAA            X1, X16 }
      }

      v16 = v17 + 1;
      v14 = *(v15 + 8 * v17++ + 64);
    }

    while (!v14);
  }

  *(v0 + 120) = v14;
  *(v0 + 128) = v16;
  v18 = *(v0 + 96);
  v19 = *(v0 + 104);
  v20 = sub_1C440A7C4(__clz(__rbit64(v14)) | (v16 << 6));
  v22 = v21;
  sub_1C4430958(v20, v19, v21);
  sub_1C4665AA8(v19, v18, v22);
  if (qword_1EDDF0AB0 != -1)
  {
    sub_1C4402D88(&qword_1EDDF0AB0);
  }

  *(v0 + 136) = sub_1C4468E90();
  v23 = swift_task_alloc();
  *(v0 + 144) = v23;
  *v23 = v0;
  sub_1C441F5F4(v23);
  sub_1C43FD0C0();

  return sub_1C4ACB9F0();
}

uint64_t sub_1C4664F8C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1C46653D0;
  }

  else
  {
    v2 = sub_1C46650C0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C46650C0()
{
  v31 = v0;
  sub_1C448D818(*(v0 + 96));
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = (*(v0 + 120) - 1) & *(v0 + 120);
  if (v6)
  {
LABEL_6:
    *(v0 + 120) = v6;
    *(v0 + 128) = v5;
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);
    v10 = sub_1C440A7C4(__clz(__rbit64(v6)) | (v5 << 6));
    v1 = v11;
    sub_1C4430958(v10, v9, v11);
    sub_1C4665AA8(v9, v8, v1);
    if (qword_1EDDF0AB0 == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v7 >= (((1 << *(v0 + 160)) + 63) >> 6))
      {

LABEL_15:

        sub_1C43FBDA0();
        sub_1C43FD0C0();

        __asm { BRAA            X1, X16 }
      }

      v6 = *(*(v0 + 48) + 8 * v7 + 56);
      ++v5;
      if (v6)
      {
        v5 = v7;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  sub_1C4402D88(&qword_1EDDF0AB0);
LABEL_7:
  *(v0 + 136) = sub_1C4468E90();
  if (v4)
  {
    sub_1C448D818(*(v0 + 96));

    sub_1C44331F4();
    v12 = v4;
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CD8();

    if (os_log_type_enabled(v13, v14))
    {
      sub_1C4402DA8();
      sub_1C43FED1C();
      sub_1C440D1D4();
      *v1 = 136315650;
      v15 = sub_1C46655C4(v3);
      sub_1C441D828(v15, v16, v30);

      v17 = sub_1C43FD324();
      sub_1C4416E78(v17);
      sub_1C44192A0();
      v18 = *v2;
      v19 = v2[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C448D818(v2);
      sub_1C441D828(v18, v19, v30);

      sub_1C440DFC8();
      *(v0 + 40) = v4;
      v20 = v4;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v21 = sub_1C4F01198();
      v23 = sub_1C441D828(v21, v22, v30);

      *(v1 + 3) = v23;
      sub_1C440D1B8(&dword_1C43F8000, v24, v14, "<%s: Error running delta updates for BMWalletOrder Streams with srcType %{public}s: %s>");
      sub_1C4410A50();
      sub_1C43FFD4C();
      sub_1C43FEA20();
    }

    else
    {
    }

    goto LABEL_15;
  }

  v25 = swift_task_alloc();
  *(v0 + 144) = v25;
  *v25 = v0;
  sub_1C441F5F4(v25);
  sub_1C43FD0C0();

  return sub_1C4ACB9F0();
}

uint64_t sub_1C46653D0()
{
  v22 = v0;
  v4 = v0[12];

  sub_1C448D818(v4);
  v5 = v0[19];
  sub_1C44331F4();
  v6 = v5;
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CD8();

  if (os_log_type_enabled(v7, v8))
  {
    sub_1C4402DA8();
    v21 = sub_1C43FED1C();
    *v1 = 136315650;
    v9 = sub_1C46655C4(v3);
    sub_1C441D828(v9, v10, &v21);

    v11 = sub_1C43FD324();
    sub_1C4416E78(v11);
    sub_1C44192A0();
    v12 = *v2;
    v13 = v2[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C448D818(v2);
    sub_1C441D828(v12, v13, &v21);

    sub_1C440DFC8();
    v0[5] = v5;
    v14 = v5;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v15 = sub_1C4F01198();
    v17 = sub_1C441D828(v15, v16, &v21);

    *(v1 + 24) = v17;
    sub_1C440D1B8(&dword_1C43F8000, v18, v8, "<%s: Error running delta updates for BMWalletOrder Streams with srcType %{public}s: %s>");
    sub_1C4410A50();
    sub_1C43FFD4C();
    sub_1C43FEA20();
  }

  else
  {
  }

  sub_1C43FBDA0();

  return v19();
}

unint64_t sub_1C4665684()
{
  result = qword_1EDDFA4A0;
  if (!qword_1EDDFA4A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDFA4A0);
  }

  return result;
}

uint64_t sub_1C46656C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1C4665710(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v7 = sub_1C4F01108();

  v8 = [v4 initWithIdentifier:v7 targetQueue:a3 waking:a4 & 1];

  return v8;
}

uint64_t sub_1C4665784(void *a1)
{
  v3 = type metadata accessor for Configuration(0);
  sub_1C43FCF7C(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C4664464(a1, v9, v1 + v8, v10);
}

uint64_t sub_1C466581C(uint64_t a1)
{
  v4 = type metadata accessor for Configuration(0);
  sub_1C43FCF7C(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v8);
  v10 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C4665934;

  return sub_1C4664AA0(a1, v1 + v6, v9, v10);
}

uint64_t sub_1C4665934()
{

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4665A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Source(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4665AA8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4665B2C()
{
  sub_1C456902C(&qword_1EC0BA9A0, &qword_1C4F14910);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4F148E0;
  *(v0 + 32) = 1701869940;
  *(v0 + 40) = 0xE400000000000000;
  *(v0 + 48) = swift_getKeyPath();
  *(v0 + 56) = 0x696669746E656469;
  *(v0 + 64) = 0xEA00000000007265;
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = 0x69746167654E7369;
  *(v0 + 88) = 0xEA00000000006576;
  *(v0 + 96) = swift_getKeyPath();
  strcpy((v0 + 104), "sequenceNumber");
  *(v0 + 119) = -18;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 120) = v1;
  *(v0 + 128) = 0xD000000000000010;
  *(v0 + 136) = v2;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 144) = v3;
  *(v0 + 152) = 0xD000000000000022;
  *(v0 + 160) = v4;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 168) = v5;
  *(v0 + 176) = 0xD000000000000010;
  *(v0 + 184) = v6;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 192) = v7;
  *(v0 + 200) = 0xD000000000000010;
  *(v0 + 208) = v8;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 216) = v9;
  *(v0 + 224) = 0xD000000000000012;
  *(v0 + 232) = v10;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 240) = v11;
  *(v0 + 248) = 0xD00000000000001BLL;
  *(v0 + 256) = v12;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 264) = v13;
  *(v0 + 272) = 0xD00000000000001ALL;
  *(v0 + 280) = v14;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 288) = v15;
  *(v0 + 296) = 0xD00000000000001FLL;
  *(v0 + 304) = v16;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 312) = v17;
  *(v0 + 320) = 0xD00000000000001FLL;
  *(v0 + 328) = v18;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 336) = v19;
  *(v0 + 344) = 0xD000000000000028;
  *(v0 + 352) = v20;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 360) = v21;
  *(v0 + 368) = 0xD00000000000002ELL;
  *(v0 + 376) = v22;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 384) = v23;
  *(v0 + 392) = 0xD000000000000028;
  *(v0 + 400) = v24;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 408) = v25;
  *(v0 + 416) = 0xD000000000000022;
  *(v0 + 424) = v26;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 432) = v27;
  *(v0 + 440) = 0xD00000000000002CLL;
  *(v0 + 448) = v28;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 456) = v29;
  *(v0 + 464) = 0xD00000000000002ELL;
  *(v0 + 472) = v30;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 480) = v31;
  *(v0 + 488) = 0xD00000000000002CLL;
  *(v0 + 496) = v32;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 504) = v33;
  *(v0 + 512) = 0xD00000000000002BLL;
  *(v0 + 520) = v34;
  *(v0 + 528) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 536) = 0xD000000000000023;
  *(v0 + 544) = v35;
  *(v0 + 552) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 560) = 0xD000000000000028;
  *(v0 + 568) = v36;
  *(v0 + 576) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 584) = 0xD00000000000002ALL;
  *(v0 + 592) = v37;
  *(v0 + 600) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 608) = 0xD000000000000028;
  *(v0 + 616) = v38;
  *(v0 + 624) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 632) = 0xD00000000000002ELL;
  *(v0 + 640) = v39;
  *(v0 + 648) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 656) = 0xD000000000000028;
  *(v0 + 664) = v40;
  *(v0 + 672) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 680) = 0xD000000000000022;
  *(v0 + 688) = v41;
  *(v0 + 696) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 704) = 0xD00000000000002CLL;
  *(v0 + 712) = v42;
  *(v0 + 720) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 728) = 0xD00000000000002ELL;
  *(v0 + 736) = v43;
  *(v0 + 744) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 752) = 0xD00000000000002CLL;
  *(v0 + 760) = v44;
  *(v0 + 768) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 776) = 0xD00000000000002BLL;
  *(v0 + 784) = v45;
  *(v0 + 792) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 800) = 0xD000000000000023;
  *(v0 + 808) = v46;
  *(v0 + 816) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 824) = 0xD000000000000028;
  *(v0 + 832) = v47;
  *(v0 + 840) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 848) = 0xD00000000000002ALL;
  *(v0 + 856) = v48;
  *(v0 + 864) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 872) = 0;
  *(v0 + 880) = 0xE000000000000000;
  *(v0 + 888) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 896) = 0;
  *(v0 + 904) = 0xE000000000000000;
  *(v0 + 912) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 920) = 0;
  *(v0 + 928) = 0xE000000000000000;
  *(v0 + 936) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 944) = 0;
  *(v0 + 952) = 0xE000000000000000;
  *(v0 + 960) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 968) = 0;
  *(v0 + 976) = 0xE000000000000000;
  *(v0 + 984) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 992) = 0;
  *(v0 + 1000) = 0xE000000000000000;
  *(v0 + 1008) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1016) = 0;
  *(v0 + 1024) = 0xE000000000000000;
  *(v0 + 1032) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1040) = 0;
  *(v0 + 1048) = 0xE000000000000000;
  *(v0 + 1056) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1064) = 0;
  *(v0 + 1072) = 0xE000000000000000;
  *(v0 + 1080) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1088) = 0;
  *(v0 + 1096) = 0xE000000000000000;
  *(v0 + 1104) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1112) = 0;
  *(v0 + 1120) = 0xE000000000000000;
  *(v0 + 1128) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1136) = 0;
  *(v0 + 1144) = 0xE000000000000000;
  *(v0 + 1152) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1160) = 0;
  *(v0 + 1168) = 0xE000000000000000;
  *(v0 + 1176) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1184) = 0;
  *(v0 + 1192) = 0xE000000000000000;
  *(v0 + 1200) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1208) = 0;
  *(v0 + 1216) = 0xE000000000000000;
  *(v0 + 1224) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1232) = 0;
  *(v0 + 1240) = 0xE000000000000000;
  *(v0 + 1248) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1256) = 0;
  *(v0 + 1264) = 0xE000000000000000;
  *(v0 + 1272) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1280) = 0;
  *(v0 + 1288) = 0xE000000000000000;
  *(v0 + 1296) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1304) = 0;
  *(v0 + 1312) = 0xE000000000000000;
  *(v0 + 1320) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1328) = 0;
  *(v0 + 1336) = 0xE000000000000000;
  *(v0 + 1344) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1352) = 0;
  *(v0 + 1360) = 0xE000000000000000;
  *(v0 + 1368) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1376) = 0;
  *(v0 + 1384) = 0xE000000000000000;
  *(v0 + 1392) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1400) = 0;
  *(v0 + 1408) = 0xE000000000000000;
  *(v0 + 1416) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1424) = 0;
  *(v0 + 1432) = 0xE000000000000000;
  *(v0 + 1440) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1448) = 0;
  *(v0 + 1456) = 0xE000000000000000;
  *(v0 + 1464) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1472) = 0;
  *(v0 + 1480) = 0xE000000000000000;
  *(v0 + 1488) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1496) = 0;
  *(v0 + 1504) = 0xE000000000000000;
  *(v0 + 1512) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1520) = 0;
  *(v0 + 1528) = 0xE000000000000000;
  *(v0 + 1536) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1544) = 0;
  *(v0 + 1552) = 0xE000000000000000;
  *(v0 + 1560) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1568) = 0;
  *(v0 + 1576) = 0xE000000000000000;
  *(v0 + 1584) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1592) = 0;
  *(v0 + 1600) = 0xE000000000000000;
  *(v0 + 1608) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1616) = 0;
  *(v0 + 1624) = 0xE000000000000000;
  *(v0 + 1632) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1640) = 0;
  *(v0 + 1648) = 0xE000000000000000;
  *(v0 + 1656) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1664) = 0;
  *(v0 + 1672) = 0xE000000000000000;
  *(v0 + 1680) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1688) = 0;
  *(v0 + 1696) = 0xE000000000000000;
  *(v0 + 1704) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1712) = 0;
  *(v0 + 1720) = 0xE000000000000000;
  *(v0 + 1728) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1736) = 0;
  *(v0 + 1744) = 0xE000000000000000;
  *(v0 + 1752) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1760) = 0;
  *(v0 + 1768) = 0xE000000000000000;
  *(v0 + 1776) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1784) = 0;
  *(v0 + 1792) = 0xE000000000000000;
  *(v0 + 1800) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1808) = 0;
  *(v0 + 1816) = 0xE000000000000000;
  *(v0 + 1824) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1832) = 0;
  *(v0 + 1840) = 0xE000000000000000;
  *(v0 + 1848) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1856) = 0;
  *(v0 + 1864) = 0xE000000000000000;
  *(v0 + 1872) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1880) = 0;
  *(v0 + 1888) = 0xE000000000000000;
  *(v0 + 1896) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1904) = 0;
  *(v0 + 1912) = 0xE000000000000000;
  *(v0 + 1920) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1928) = 0;
  *(v0 + 1936) = 0xE000000000000000;
  *(v0 + 1944) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1952) = 0;
  *(v0 + 1960) = 0xE000000000000000;
  *(v0 + 1968) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1976) = 0;
  *(v0 + 1984) = 0xE000000000000000;
  *(v0 + 1992) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2000) = 0;
  *(v0 + 2008) = 0xE000000000000000;
  *(v0 + 2016) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2024) = 0;
  *(v0 + 2032) = 0xE000000000000000;
  *(v0 + 2040) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2048) = 0;
  *(v0 + 2056) = 0xE000000000000000;
  *(v0 + 2064) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2072) = 0;
  *(v0 + 2080) = 0xE000000000000000;
  *(v0 + 2088) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2096) = 0;
  *(v0 + 2104) = 0xE000000000000000;
  *(v0 + 2112) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2120) = 0;
  *(v0 + 2128) = 0xE000000000000000;
  *(v0 + 2136) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2144) = 0;
  *(v0 + 2152) = 0xE000000000000000;
  *(v0 + 2160) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2168) = 0;
  *(v0 + 2176) = 0xE000000000000000;
  *(v0 + 2184) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2192) = 0;
  *(v0 + 2200) = 0xE000000000000000;
  *(v0 + 2208) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2216) = 0;
  *(v0 + 2224) = 0xE000000000000000;
  *(v0 + 2232) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2240) = 0;
  *(v0 + 2248) = 0xE000000000000000;
  *(v0 + 2256) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2264) = 0;
  *(v0 + 2272) = 0xE000000000000000;
  *(v0 + 2280) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2288) = 0;
  *(v0 + 2296) = 0xE000000000000000;
  *(v0 + 2304) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2312) = 0;
  *(v0 + 2320) = 0xE000000000000000;
  *(v0 + 2328) = swift_getKeyPath();
  sub_1C4D50668();
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2336) = 0;
  *(v0 + 2344) = 0xE000000000000000;
  *(v0 + 2352) = swift_getKeyPath();
  sub_1C456902C(&qword_1EC0BA9A8, &qword_1C4F16768);

  return sub_1C4F00F28();
}

uint64_t sub_1C4667624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  sub_1C466A714(a1, &v14 - v11, a6);
  return a7(v12);
}

uint64_t sub_1C4668774()
{
  sub_1C456902C(&qword_1EC0BA9B0, &qword_1C4F16770);
  v0 = sub_1C456902C(&qword_1EC0BA9B8, &qword_1C4F16778);
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = v0 - 8;
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1C4F148F0;
  v5 = v83 + v4;
  v6 = v83 + v4 + *(v3 + 56);
  sub_1C440F428();
  sub_1C4EFDAC8();
  *v6 = 2;
  *(v6 + 8) = 0;
  sub_1C4410A6C();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  *v6 = 2;
  *(v6 + 8) = 0;
  sub_1C4410A6C();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  *v6 = 3;
  *(v6 + 8) = 0;
  sub_1C4410A6C();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  *v6 = 3;
  *(v6 + 8) = 0;
  sub_1C4410A6C();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4410A6C();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  *v6 = 3;
  *(v6 + 8) = 0;
  sub_1C4410A6C();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C44041B0();
  sub_1C4410A6C();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C44041B0();
  sub_1C4410A6C();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C44041B0();
  sub_1C4410A6C();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  *v6 = 3;
  *(v6 + 8) = 0;
  sub_1C4411980();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4410A6C();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4410A6C();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4410A6C();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980();
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  *v6 = 3;
  *(v6 + 8) = 0;
  sub_1C45979B8(&unk_1F43D7860);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C43FBDF0();
  v116 = v7;
  sub_1C441B7C0();
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C442C5EC();
  sub_1C45979B8(&unk_1F43D7888);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C44259B4();
  sub_1C45979B8(&unk_1F43D78B0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C44259B4();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D78D8);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C441EADC();
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C442C5EC();
  sub_1C4412E40();
  sub_1C45979B8(&unk_1F43D7900);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C442C5EC();
  sub_1C45979B8(&unk_1F43D7928);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C440596C();
  sub_1C45979B8(&unk_1F43D7950);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C4433210();
  sub_1C4412E40();
  sub_1C45979B8(&unk_1F43D7978);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C442C5EC();
  sub_1C4412E40();
  sub_1C45979B8(&unk_1F43D79A0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C442DDE4();
  sub_1C43FC0E4();

  sub_1C4432060(v8, v9, v10, v11, v12, v13, v14, v15, v76, v83, v3, v97, v2, 0xD000000000000021, v116, "tyGivenContext:motionState");
  sub_1C442C5EC();
  sub_1C4412E40();
  sub_1C45979B8(&unk_1F43D79C8);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C442DDE4();
  sub_1C43FC0E4();

  sub_1C43FD344();
  sub_1C442C5EC();
  sub_1C4412E40();
  sub_1C45979B8(&unk_1F43D79F0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C441EADC();
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C442C5EC();
  sub_1C4412E40();
  sub_1C45979B8(&unk_1F43D7A18);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4416E98();
  sub_1C442C5EC();
  sub_1C4412E40();
  sub_1C45979B8(&unk_1F43D7A40);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C4424FB0();
  sub_1C43FC0E4();

  sub_1C4402DC8();
  sub_1C442C5EC();
  sub_1C441E258();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7A68);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C4424FB0();
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  sub_1C4412E40();
  sub_1C45979B8(&unk_1F43D7A90);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C441B7C0();
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C442C5EC();
  sub_1C4412E40();
  sub_1C45979B8(&unk_1F43D7AB8);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C442DDE4();
  sub_1C43FC0E4();

  sub_1C4416E98();
  sub_1C442C5EC();
  sub_1C4412E40();
  sub_1C45979B8(&unk_1F43D7AE0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4416E98();
  sub_1C442C5EC();
  sub_1C4412E40();
  sub_1C45979B8(&unk_1F43D7B08);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C441B7C0();
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C442C5EC();
  v16 = v105;
  sub_1C4412E40();
  sub_1C45979B8(&unk_1F43D7B30);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C441EADC();
  sub_1C43FC0E4();

  sub_1C4432060(v17, v18, v19, v20, v21, v22, v23, v24, v77, v84, v90, v98, v105, v111, v117, v122);
  sub_1C442C5EC();
  v25 = v5 + 50 * v16 + *(v3 + 56);
  sub_1C45979B8(&unk_1F43D7B58);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  *v25 = 3;
  *(v25 + 8) = 0;
  sub_1C441E258();
  sub_1C45979B8(&unk_1F43D7B80);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C440596C();
  sub_1C4412E40();
  sub_1C45979B8(&unk_1F43D7BA8);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C4404D64();
  sub_1C43FC0E4();

  sub_1C4432060(v26, v27, v28, v29, v30, v31, v32, v33, v78, v85, v91, v99, v106, v112, v118, v123);
  sub_1C442C5EC();
  sub_1C4412E40();
  sub_1C45979B8(&unk_1F43D7BD0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C4404D64();
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  sub_1C441E258();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7BF8);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C4404D64();
  sub_1C43FC0E4();

  sub_1C442B9C8();
  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  sub_1C4412E40();
  sub_1C45979B8(&unk_1F43D7C20);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C4404D64();
  sub_1C43FC0E4();

  sub_1C43FD344();
  sub_1C442C5EC();
  sub_1C45979B8(&unk_1F43D7C48);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C44259B4();
  sub_1C441E258();
  sub_1C45979B8(&unk_1F43D7C70);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C4433210();
  sub_1C45979B8(&unk_1F43D7C98);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4402DC8();
  sub_1C442C5EC();
  sub_1C45979B8(&unk_1F43D7CC0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4402DC8();
  sub_1C4433210();
  sub_1C45979B8(&unk_1F43D7CE8);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4402DC8();
  sub_1C44259B4();
  v100 = v5;
  sub_1C4409B08();
  sub_1C45979B8(&unk_1F43D7D10);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4416E98();
  sub_1C442C5EC();
  sub_1C4409B08();
  sub_1C45979B8(&unk_1F43D7D38);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  sub_1C4409B08();
  sub_1C45979B8(&unk_1F43D7D60);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  sub_1C4409B08();
  sub_1C45979B8(&unk_1F43D7D88);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C4404D64();
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  v34 = v107;
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7DB0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C43FD344();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7DD8);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C442C5EC();
  v35 = v100;
  v36 = v100 + 67 * v107 + *(v3 + 56);
  sub_1C45979B8(&unk_1F43D7E00);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4432060(v37, v38, v39, v40, v41, v42, v43, v44, v79, v86, v92, v100, v107, 0x80000001C4F8D7E0, 0xD00000000000001DLL, v124);
  *v36 = 3;
  *(v36 + 8) = 0;
  v45 = v35 + 68 * v34 + *(v3 + 56);
  sub_1C45979B8(&unk_1F43D7E28);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4416E98();
  *v45 = 3;
  *(v45 + 8) = 0;
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7E50);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4402DC8();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7E78);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4402DC8();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7EA0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4402DC8();
  sub_1C442C5EC();
  sub_1C45979B8(&unk_1F43D7EC8);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4432060(v46, v47, v48, v49, v50, v51, v52, v53, v80, v87, v93, v101, v108, v113, v119, v125);
  sub_1C440596C();
  sub_1C45979B8(&unk_1F43D7EF0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4416E98();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7F18);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7F40);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C442B9C8();
  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  sub_1C45979B8(&unk_1F43D7F68);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C442B9C8();
  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7F90);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C442DDE4();
  sub_1C43FC0E4();

  sub_1C4416E98();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7FB8);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C4424FB0();
  sub_1C43FC0E4();

  sub_1C4402DC8();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7FE0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C4424FB0();
  sub_1C43FC0E4();

  sub_1C4432060(v54, v55, v56, v57, v58, v59, v60, v61, v81, v88, v94, v102, v109, v114, v120, v126);
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D8008);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C442DDE4();
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  sub_1C45979B8(&unk_1F43D8030);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C442DDE4();
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C4433210();
  sub_1C45979B8(&unk_1F43D8058);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  v62 = v110;
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D8080);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D80A8);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C442DDE4();
  sub_1C43FC0E4();

  sub_1C4432060(v63, v64, v65, v66, v67, v68, v69, v70, v82, v89, v95, v103, v110, v115, v121, v127);
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D80D0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C442DDE4();
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D80F8);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C442B9C8();
  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D8120);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C43FD344();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D8148);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D8170);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C441B7C0();
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D8198);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C442DDE4();
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  v71 = v104 + 91 * v62 + *(v96 + 56);
  sub_1C45979B8(&unk_1F43D81C0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C442B9C8();
  sub_1C440F428();
  sub_1C4EFDAC8();
  *v71 = 3;
  *(v71 + 8) = 0;
  v72 = v104 + 92 * v62 + *(v96 + 56);
  v73 = sub_1C45979B8(&unk_1F43D81E8);
  sub_1C4F02248();

  v74 = sub_1C45FE854(v73);
  MEMORY[0x1C6940010](v74);

  sub_1C442B9C8();
  sub_1C440F428();
  sub_1C4EFDAC8();
  *v72 = 3;
  *(v72 + 8) = 0;
  sub_1C4EFDAF8();
  sub_1C466A77C();

  return sub_1C4F00F28();
}

void sub_1C466A4CC()
{
  sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
  v0 = sub_1C4EFDAB8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F14900;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  (v6)(v5, *MEMORY[0x1E69A9468], v0);
  (v6)(v5 + v2, *MEMORY[0x1E69A9460], v0);
  (v6)(v5 + 2 * v2, *MEMORY[0x1E69A93C8], v0);
  v7 = sub_1C4414970(3 * v2);
  v6(v7);
  (v6)(v5 + 4 * v2, *MEMORY[0x1E69A9438], v0);
  v8 = sub_1C4414970(5 * v2);
  v6(v8);
  (v6)(v5 + 6 * v2, *MEMORY[0x1E69A9400], v0);
  v9 = sub_1C4414970(7 * v2);
  v6(v9);
  (v6)(v5 + 8 * v2, *MEMORY[0x1E69A9448], v0);
  v10 = sub_1C4414970(9 * v2);
  v6(v10);
  (v6)(v5 + 10 * v2, *MEMORY[0x1E69A9420], v0);
  sub_1C4D524E0();
  qword_1EC151B48 = v11;
}

uint64_t sub_1C466A714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C466A77C()
{
  result = qword_1EDDEFFA8;
  if (!qword_1EDDEFFA8)
  {
    sub_1C4EFDAF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEFFA8);
  }

  return result;
}

uint64_t sub_1C466A824(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C4409B14(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate, a2);
  v5 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v7 = *(v6 + 24);
  sub_1C4426A5C();
  v7();
  swift_endAccess();
  v8 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate;
  sub_1C4409B14(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate, v9);
  (v7)(v3 + v8, a2, v5);
  swift_endAccess();
  v10 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastBehaviorEventDigested;
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastBehaviorEventDigested) = 0;

  sub_1C4409B14(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedBehaviorEventsByType, v11);
  sub_1C456902C(&unk_1EC0BA9C0, &unk_1C4F16810);
  sub_1C4F00F88();
  swift_endAccess();
  *(v3 + v10) = 0;

  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastMotionStateEventBeforeStartDate) = 0;

  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedMotionStateEvents) = 0;
}

void sub_1C466A96C()
{
  sub_1C43FBD3C();
  v47 = v1;
  v48 = v2;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBFDC();
  v49 = v5;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - v7;
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v52 = v10;
  v53 = v9;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v51 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v47 - v13;
  v14 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBD08();
  v20 = v18 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - v23;
  v25 = *MEMORY[0x1E69A9420];
  v26 = *(v16 + 104);
  v26(&v47 - v23, v25, v14, v22);
  sub_1C466E268(v24);
  v27 = *(v16 + 8);
  v27(v24, v14);
  (v26)(v20, v25, v14);
  v28 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedBehaviorEventsByType;
  swift_beginAccess();
  v29 = sub_1C465C170(v20, *(v0 + v28));
  if (!v29)
  {
    swift_endAccess();
    v27(v20, v14);
LABEL_8:
    v37 = objc_allocWithZone(MEMORY[0x1E698F0E8]);
    type metadata accessor for BehaviorEvent();
    v38 = sub_1C4F01658();
    [v37 initWithSequence_];

    goto LABEL_15;
  }

  v30 = v29;
  swift_endAccess();
  v27(v20, v14);
  if (!sub_1C4428DA0(v30))
  {

    goto LABEL_8;
  }

  sub_1C446C964(v47, v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v31 = v53;
  if (sub_1C44157D4(v8, 1, v53) == 1)
  {
    v32 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate;
    sub_1C440D164(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate, &v55);
    v33 = v52;
    v34 = v50;
    (*(v52 + 16))(v50, v0 + v32, v31);
    sub_1C43FC0FC(v8);
    v35 = v49;
    if (!v36)
    {
      sub_1C4420C3C(v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }
  }

  else
  {
    v33 = v52;
    v34 = v50;
    (*(v52 + 32))(v50, v8, v31);
    v35 = v49;
  }

  sub_1C446C964(v48, v35, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FC0FC(v35);
  if (v36)
  {
    v39 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate;
    sub_1C440D164(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate, &v54);
    v40 = v51;
    (*(v33 + 16))(v51, v0 + v39, v31);
    v42 = sub_1C43FC0FC(v35);
    if (!v36)
    {
      v42 = sub_1C4420C3C(v35, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }
  }

  else
  {
    v40 = v51;
    sub_1C4426A5C();
    v42 = v41();
  }

  MEMORY[0x1EEE9AC00](v42);
  *(&v47 - 2) = v34;
  *(&v47 - 1) = v40;
  sub_1C4B341F0(sub_1C466F434, (&v47 - 4), v30);
  v43 = objc_allocWithZone(MEMORY[0x1E698F0E8]);
  type metadata accessor for BehaviorEvent();
  v44 = sub_1C4F01658();

  [v43 initWithSequence_];

  v45 = *(v33 + 8);
  v46 = sub_1C44158DC();
  v45(v46);
  (v45)(v34, v31);
LABEL_15:
  sub_1C43FE9F0();
}

void sub_1C466AE74()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v85 = v4;
  v5 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  v81 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v83 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  v80 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C440D164(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate, &v88);
  v16 = *(v7 + 16);
  v17 = sub_1C440597C();
  v16(v17);
  sub_1C44192E0();
  sub_1C4498E70(v18, v19, MEMORY[0x1E6969548]);
  v20 = sub_1C4F01068();
  v21 = *(v7 + 8);
  v22 = sub_1C43FE99C();
  (v21)(v22);
  if ((v20 & 1) == 0)
  {
    sub_1C440D164(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate, &v87);
    v43 = sub_1C440597C();
    v16(v43);
    v82 = v3;
    v44 = sub_1C4F01068();
    v45 = sub_1C43FE99C();
    (v21)(v45);
    if (v44)
    {
      v84 = v21;
      if (qword_1EDDFA668 != -1)
      {
        goto LABEL_58;
      }

      goto LABEL_7;
    }

    sub_1C466DE10();
    v63 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedMotionStateEvents);
    if (!v63)
    {
      goto LABEL_30;
    }

    (v16)(v80, v3, v5);
    (v16)(v83, v3, v5);
    v86 = 1;
    type metadata accessor for MotionStateEvent(0);
    swift_allocObject();
    sub_1C46229B8(v80, v83, &v86);
    if (sub_1C4428DA0(v63))
    {
      v64 = sub_1C4428DA0(v63);
      if (v64 > 0)
      {
        v78 = v1;
        v16 = OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_startDate;
        v65 = v63 & 0xC000000000000001;
        v82 = v63 + 32;
        v84 = (v63 & 0xFFFFFFFFFFFFFF8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v5 = 0;
        v81 = v64;
        v66 = v64;
        while (1)
        {
          if (__OFSUB__(v66, v5))
          {
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

          v67 = (v66 - v5) / 2;
          v21 = v5 + v67;
          if (__OFADD__(v5, v67))
          {
            goto LABEL_53;
          }

          if (v65)
          {
            v64 = MEMORY[0x1C6940F90](v5 + v67, v63);
          }

          else
          {
            if (v21 < 0)
            {
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              sub_1C4406728(&qword_1EDDFA668);
LABEL_7:
              v46 = sub_1C4F00978();
              sub_1C43FCEE8(v46, qword_1EDE2DDE0);
              (v16)(v81, v82, v5);

              v25 = sub_1C4F00968();
              v47 = sub_1C4F01CE8();

              if (os_log_type_enabled(v25, v47))
              {
                v48 = sub_1C440F274();
                v86 = sub_1C43FC11C();
                *v48 = 136315394;
                sub_1C44192E0();
                sub_1C4498E70(v49, v50, MEMORY[0x1E6969570]);
                v77 = v47;
                v51 = sub_1C4F02858();
                v53 = v52;
                v54 = sub_1C4404084();
                v84(v54);
                sub_1C441D828(v51, v53, &v86);
                sub_1C4408758();

                *(v48 + 4) = v51;
                *(v48 + 12) = 2080;
                v55 = sub_1C440597C();
                v56(v55);
                sub_1C4F02858();
                v57 = sub_1C43FE99C();
                v84(v57);
                v58 = sub_1C43FBC98();
                v61 = sub_1C441D828(v58, v59, v60);

                *(v48 + 14) = v61;
                sub_1C440BBCC(&dword_1C43F8000, "CachedContextProvider: motionState(at:) input date out of bound (input date %s >= end date %s). Returning nil.", v77);
LABEL_9:
                swift_arrayDestroy();
                sub_1C4402DEC();
                sub_1C43FBE2C();
              }

              else
              {

                v69 = sub_1C4404084();
                v84(v69);
              }

              goto LABEL_30;
            }

            if (v21 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }

            v64 = *(v82 + 8 * v21);
          }

          if (sub_1C4EF9C18())
          {

            v5 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              goto LABEL_54;
            }

            v21 = v66;
          }

          else
          {
            v68 = sub_1C4EF9C08();

            if ((v68 & 1) == 0)
            {
              goto LABEL_44;
            }
          }

          v66 = v21;
          if (v5 >= v21)
          {
            v64 = v81;
            v1 = v78;
            if (v5 != v81)
            {
              goto LABEL_35;
            }

            goto LABEL_34;
          }
        }
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v64)
      {
        v5 = 0;
      }

      else
      {
LABEL_34:
        v5 = v64 - 1;
      }

LABEL_35:
      v65 = v63 & 0xC000000000000001;
      sub_1C4431590(v5, (v63 & 0xC000000000000001) == 0, v63);
      if ((v63 & 0xC000000000000001) != 0)
      {
        v64 = MEMORY[0x1C6940F90](v5, v63);
      }

      else
      {
        sub_1C440C3C0();
      }

      if (sub_1C4EF9C18())
      {

LABEL_45:
        v72 = v85;
        sub_1C4431590(v5, v65 == 0, v63);
        if (v65)
        {
          v76 = MEMORY[0x1C6940F90](v5, v63);

          v70 = *(v76 + OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_motionState);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1C440C3C0();

          v70 = *(v64 + OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_motionState);
        }

        v71 = 0;
        goto LABEL_31;
      }

      v73 = sub_1C4EF9C08();

      if ((v73 & 1) == 0)
      {
        goto LABEL_45;
      }

      if (v5)
      {
        if (__OFSUB__(v5--, 1))
        {
          __break(1u);
LABEL_44:
          v5 = v21;
        }

        goto LABEL_45;
      }
    }

    v75 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastMotionStateEventBeforeStartDate);
    v72 = v85;
    if (v75)
    {
      v71 = 0;
      v70 = *(v75 + OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_motionState);
    }

    else
    {
      v70 = 0;
      v71 = 1;
    }

    goto LABEL_31;
  }

  v84 = v21;
  if (qword_1EDDFA668 != -1)
  {
LABEL_55:
    sub_1C4406728(&qword_1EDDFA668);
  }

  v23 = sub_1C4F00978();
  sub_1C43FCEE8(v23, qword_1EDE2DDE0);
  v24 = sub_1C43FE990();
  v16(v24);

  v25 = sub_1C4F00968();
  v26 = sub_1C4F01CE8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = sub_1C440F274();
    v87 = sub_1C43FC11C();
    *v27 = 136315394;
    sub_1C44192E0();
    sub_1C4498E70(v28, v29, MEMORY[0x1E6969570]);
    v79 = v26;
    v30 = sub_1C4F02858();
    v32 = v31;
    v33 = sub_1C44158DC();
    v84(v33);
    v34 = sub_1C441C89C();
    sub_1C441D828(v34, v32, v35);
    sub_1C4408758();

    *(v27 + 4) = v30;
    *(v27 + 12) = 2080;
    v36 = sub_1C440597C();
    v37(v36);
    sub_1C4F02858();
    v38 = sub_1C43FE99C();
    v84(v38);
    v39 = sub_1C43FBC98();
    v42 = sub_1C441D828(v39, v40, v41);

    *(v27 + 14) = v42;
    sub_1C440BBCC(&dword_1C43F8000, "CachedContextProvider: motionState(at:) input date out of bound (input date %s < start date %s). Returning nil.", v79);
    goto LABEL_9;
  }

  v62 = sub_1C44158DC();
  v84(v62);
LABEL_30:
  v70 = 0;
  v71 = 1;
  v72 = v85;
LABEL_31:
  *v72 = v70;
  *(v72 + 8) = v71;
  sub_1C43FE9F0();
}

void sub_1C466B77C()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  sub_1C441B7D8(v4);
  v5 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v108 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  v107 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  v104 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v98 - v15;
  v17 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate;
  sub_1C440D164(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate, &v115);
  v18 = *(v7 + 16);
  v106 = v17;
  v19 = sub_1C440D1F8();
  v18(v19);
  sub_1C44192E0();
  sub_1C4498E70(v20, v21, MEMORY[0x1E6969548]);
  LOBYTE(v17) = sub_1C4F01068();
  v22 = *(v7 + 8);
  v23 = sub_1C4404C28();
  v22(v23);
  v109 = v22;
  v110 = v7 + 8;
  v111 = v7 + 16;
  if ((v17 & 1) == 0)
  {
    v46 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate;
    sub_1C440D164(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate, &v114);
    v108 = v46;
    v47 = sub_1C440D1F8();
    v18(v47);
    LOBYTE(v46) = sub_1C4F01068();
    v48 = sub_1C4404C28();
    v22(v48);
    v49 = v3;
    if (v46)
    {
      if (qword_1EDDFA668 != -1)
      {
        goto LABEL_55;
      }

      goto LABEL_7;
    }

    v74 = v105;
    sub_1C466E268(v105);
    v75 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedBehaviorEventsByType;
    swift_beginAccess();
    v76 = sub_1C465C170(v74, *(v1 + v75));
    if (!v76)
    {
      swift_endAccess();
      goto LABEL_30;
    }

    v77 = v76;
    swift_endAccess();
    if (!sub_1C4428DA0(v77))
    {

      goto LABEL_30;
    }

    type metadata accessor for BehaviorEvent();
    memset(v116, 0, sizeof(v116));
    v117 = 21;
    v78 = sub_1C4404084();
    v49 = v111;
    v18(v78);
    sub_1C45D644C(v116, v16);
    v80 = v79;
    v113 = v79;
    v81 = sub_1C4428DA0(v77);
    if (v81 > 0)
    {
      v82 = 0;
      v103 = v77 & 0xC000000000000001;
      v101 = v77 & 0xFFFFFFFFFFFFFF8;
      v102 = v77;
      v100 = v77 + 32;
      v99 = v81;
      v83 = v104;
      v107 = v80;
      while (1)
      {
        if (__OFSUB__(v81, v82))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v84 = (v81 - v82) / 2;
        v1 = v82 + v84;
        if (__OFADD__(v82, v84))
        {
          goto LABEL_50;
        }

        v106 = v82;
        v105 = v81;
        if (v103)
        {
          v85 = MEMORY[0x1C6940F90](v1, v102);
        }

        else
        {
          if (v1 < 0)
          {
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            sub_1C4406728(&qword_1EDDFA668);
LABEL_7:
            v50 = sub_1C4F00978();
            sub_1C43FCEE8(v50, qword_1EDE2DDE0);
            v51 = v107;
            (v18)(v107, v49, v5);

            v52 = sub_1C4F00968();
            v53 = sub_1C4F01CE8();

            if (os_log_type_enabled(v52, v53))
            {
              v54 = sub_1C440F274();
              v106 = sub_1C43FC11C();
              v116[0] = v106;
              *v54 = 136315394;
              sub_1C44192E0();
              sub_1C4498E70(v55, v56, MEMORY[0x1E6969570]);
              v105 = v52;
              sub_1C443F134();
              v104 = v1;
              v58 = v57;
              v59 = sub_1C4402E08();
              LODWORD(v107) = v53;
              v60 = v18;
              v61 = v109;
              v109(v59);
              v62 = sub_1C443FB14();
              v64 = sub_1C441D828(v62, v58, v63);

              *(v54 + 4) = v64;
              *(v54 + 12) = 2080;
              v65 = sub_1C440D1F8();
              v60(v65);
              sub_1C443F134();
              v67 = v66;
              v68 = sub_1C4404C28();
              v61(v68);
              v69 = sub_1C443FB14();
              v71 = sub_1C441D828(v69, v67, v70);

              *(v54 + 14) = v71;
              v72 = v105;
              _os_log_impl(&dword_1C43F8000, v105, v107, "CachedContextProvider: lastBehaviorEvent input date out of bound (input date %s >= end date %s). Returning nil.", v54, 0x16u);
              swift_arrayDestroy();
              sub_1C4402DEC();
              sub_1C43FBE2C();

              goto LABEL_30;
            }

            v73 = v51;
LABEL_29:
            (v109)(v73, v5);
            goto LABEL_30;
          }

          if (v1 >= *(v101 + 16))
          {
            goto LABEL_54;
          }
        }

        v108 = v85;
        sub_1C441C160();
        v86 = sub_1C440D1F8();
        v18(v86);
        sub_1C441C160();
        v18(v83);
        v87 = sub_1C4EF9C18();
        v88 = sub_1C4402E08();
        v89 = v109;
        v109(v88);
        v90 = sub_1C4404C28();
        v89(v90);
        if (v87)
        {

          v82 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            goto LABEL_51;
          }

          v1 = v105;
          v83 = v104;
        }

        else
        {
          sub_1C441C160();
          v91 = sub_1C440D1F8();
          v18(v91);
          sub_1C441C160();
          v18(v83);
          v92 = sub_1C4EF9C08();

          v93 = sub_1C4402E08();
          v89(v93);
          v94 = sub_1C4404C28();
          v89(v94);
          v82 = v106;
          if ((v92 & 1) == 0)
          {
            v77 = v102;
            goto LABEL_45;
          }
        }

        v81 = v1;
        v49 = v111;
        if (v82 >= v1)
        {
          v81 = v99;
          v77 = v102;
          if (v82 == v99)
          {
            goto LABEL_35;
          }

          goto LABEL_36;
        }
      }
    }

    if (v81)
    {
      v82 = 0;
    }

    else
    {
LABEL_35:
      v82 = &v81[-1].isa + 7;
    }

LABEL_36:
    v95 = v77 & 0xC000000000000001;
    sub_1C4431590(v82, (v77 & 0xC000000000000001) == 0, v77);
    v103 = v77 & 0xC000000000000001;
    if ((v77 & 0xC000000000000001) != 0)
    {
      v95 = MEMORY[0x1C6940F90](v82, v77);
    }

    else
    {
      sub_1C440C3C0();
    }

    v112 = v95;
    v96 = sub_1C466E870(&v112, &v113);

    if (v96 == 2)
    {
      if (!v82)
      {
LABEL_47:

        goto LABEL_30;
      }

      v1 = v82 - 1;
      if (!__OFSUB__(v82, 1))
      {
LABEL_45:
        v97 = v103;
        sub_1C4431590(v1, v103 == 0, v77);
        if (v97)
        {
          MEMORY[0x1C6940F90](v1, v77);
        }

        else
        {
          sub_1C440C3C0();
        }

        goto LABEL_47;
      }

      __break(1u);
    }

    v1 = v82;
    goto LABEL_45;
  }

  if (qword_1EDDFA668 != -1)
  {
LABEL_52:
    sub_1C4406728(&qword_1EDDFA668);
  }

  v24 = sub_1C4F00978();
  sub_1C43FCEE8(v24, qword_1EDE2DDE0);
  v25 = v108;
  v26 = sub_1C43FE990();
  v18(v26);

  v27 = sub_1C4F00968();
  v28 = sub_1C4F01CE8();

  if (!os_log_type_enabled(v27, v28))
  {

    v73 = v25;
    goto LABEL_29;
  }

  v29 = sub_1C440F274();
  v104 = v18;
  v30 = v29;
  v107 = sub_1C43FC11C();
  v116[0] = v107;
  *v30 = 136315394;
  sub_1C44192E0();
  sub_1C4498E70(v31, v32, MEMORY[0x1E6969570]);
  LODWORD(v105) = v28;
  sub_1C443F134();
  v34 = v33;
  v35 = v109;
  (v109)(v25, v5);
  v36 = sub_1C443FB14();
  v38 = sub_1C441D828(v36, v34, v37);

  *(v30 + 4) = v38;
  *(v30 + 12) = 2080;
  v39 = sub_1C440D1F8();
  v104(v39);
  sub_1C443F134();
  v41 = v40;
  v42 = sub_1C4404C28();
  v35(v42);
  v43 = sub_1C443FB14();
  v45 = sub_1C441D828(v43, v41, v44);

  *(v30 + 14) = v45;
  _os_log_impl(&dword_1C43F8000, v27, v105, "CachedContextProvider: lastBehaviorEvent input date out of bound (input date %s < start date %s). Returning nil.", v30, 0x16u);
  swift_arrayDestroy();
  sub_1C4402DEC();
  sub_1C43FBE2C();

LABEL_30:
  sub_1C43FE9F0();
}

void sub_1C466C14C()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider____lazy_storage___calendar;
  sub_1C440D164(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider____lazy_storage___calendar, &v18);
  sub_1C446C964(v1 + v12, v11, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
  v13 = sub_1C4EF9F88();
  if (sub_1C44157D4(v11, 1, v13) == 1)
  {
    sub_1C4420C3C(v11, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
    v14 = objc_autoreleasePoolPush();
    v15 = v1[5];
    v16 = v1[6];
    sub_1C4409678(v1 + 2, v15);
    (*(v16 + 8))(v15, v16);
    objc_autoreleasePoolPop(v14);
    (*(*(v13 - 8) + 16))(v8, v3, v13);
    sub_1C440BAA8(v8, 0, 1, v13);
    swift_beginAccess();
    sub_1C4630E08(v8, v1 + v12);
    swift_endAccess();
  }

  else
  {
    (*(*(v13 - 8) + 32))(v3, v11, v13);
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C466C344(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider____lazy_storage___calendar;
  v7 = sub_1C4EF9F88();
  sub_1C440BAA8(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastBehaviorEventDigested) = 0;
  v8 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedBehaviorEventsByType;
  sub_1C4EFDAB8();
  sub_1C456902C(&unk_1EC0BA9D0, &unk_1C4F16820);
  sub_1C442C5FC();
  sub_1C4498E70(v9, v10, MEMORY[0x1E69A9488]);
  *(v3 + v8) = sub_1C4F00F28();
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastMotionStateEventBeforeStartDate) = 0;
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedMotionStateEvents) = 0;
  sub_1C443FA18(a1, v3 + 16);
  v11 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v13 = *(v12 + 32);
  sub_1C4426A5C();
  v13();
  (v13)(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate, a3, v11);
  return v3;
}

void sub_1C466C4B4()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v223 = v4;
  v6 = v5;
  v7 = sub_1C4EFDAB8();
  sub_1C441B7D8(v7);
  sub_1C43FCDF8();
  v215 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v214 = &v207 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C43FE99C();
  v13 = sub_1C456902C(v11, v12);
  v14 = sub_1C43FBD18(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  v219 = v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF38();
  v218 = v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v207 - v19;
  v21 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBFDC();
  v211 = v25;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  v209 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  v217 = v29;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  v213 = v31;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  v210 = v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v207 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v207 - v38;
  v220 = v6;
  sub_1C446C964(v6, v20, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v40 = sub_1C44157D4(v20, 1, v21);
  v41 = &dword_1EDE2D000;
  v221 = v23;
  v222 = v3;
  if (v40 == 1)
  {
    v42 = v36;
    sub_1C4420C3C(v20, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v43 = v1;
    v44 = v223;
    v45 = v21;
LABEL_3:
    v46 = v219;
    sub_1C446C964(v44, v219, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (sub_1C44157D4(v46, 1, v45) == 1)
    {
      sub_1C4420C3C(v46, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v47 = v222;
      goto LABEL_5;
    }

    v88 = v221;
    v89 = v41;
    v90 = v45;
    v91 = v217;
    (*(v221 + 32))(v217, v46, v45);
    v92 = *(v89 + 418);
    sub_1C440D164(&v92[v43], v227);
    v93 = *(v88 + 16);
    v213 = v92;
    v93(v42, &v92[v43], v90);
    sub_1C44192E0();
    sub_1C4498E70(v94, v95, MEMORY[0x1E6969548]);
    sub_1C44158DC();
    LOBYTE(v92) = sub_1C4F01068();
    v98 = *(v88 + 8);
    v96 = v88 + 8;
    v97 = v98;
    v98(v42, v90);
    if (v92)
    {
      v99 = v91;
      v219 = v42;
      v216 = v97;
      v221 = v96;
      v100 = v43;
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406728(&qword_1EDDFA668);
      }

      v101 = sub_1C4F00978();
      sub_1C43FCEE8(v101, qword_1EDE2DDE0);
      v93(v211, v91, v90);

      v102 = sub_1C4F00968();
      v103 = sub_1C4F01CE8();

      v104 = os_log_type_enabled(v102, v103);
      v223 = v93;
      if (v104)
      {
        v105 = sub_1C440F274();
        v215 = sub_1C43FC11C();
        v226[0] = v215;
        *v105 = 136315394;
        sub_1C44192E0();
        sub_1C4498E70(v106, v107, MEMORY[0x1E6969570]);
        LODWORD(v214) = v103;
        v212 = v102;
        sub_1C4404084();
        v108 = sub_1C4F02858();
        v109 = v219;
        v111 = v110;
        sub_1C43FD364();
        v79 = *(v112 - 256);
        v79();
        v113 = sub_1C441D828(v108, v111, v226);

        *(v105 + 4) = v113;
        *(v105 + 12) = 2080;
        v223(v109, &v213[v100], v90);
        sub_1C4404084();
        v114 = sub_1C4F02858();
        v116 = v115;
        v117 = v109;
        v99 = v217;
        (v79)(v117, v90);
        v118 = sub_1C441D828(v114, v116, v226);

        *(v105 + 14) = v118;
        sub_1C440873C();
        _os_log_impl(v119, v120, v121, v122, v105, 0x16u);
        sub_1C441E264();
        sub_1C4402DEC();
        sub_1C43FBE2C();
      }

      else
      {

        sub_1C43FD364();
        v79 = *(v192 - 256);
        v79();
      }

      v193 = v100[5];
      v194 = v100[6];
      sub_1C4404D7C(v100 + 2);
      v195 = v218;
    }

    else
    {
      v153 = v93;
      v154 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate;
      sub_1C440D164(v43 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate, v226);
      v213 = v43;
      v219 = v154;
      v155 = v43 + v154;
      v156 = v153;
      v153(v42, v155, v90);
      LOBYTE(v153) = sub_1C4F01068();
      v97(v42, v90);
      if ((v153 & 1) == 0)
      {
        v97(v91, v90);
        v47 = v222;
        v44 = v223;
        v43 = v213;
LABEL_5:
        (*(v215 + 104))(v214, *MEMORY[0x1E69A9420], v216);
        sub_1C442C5FC();
        sub_1C4498E70(v48, v49, MEMORY[0x1E69A9498]);
        sub_1C4F01578();
        sub_1C4F01578();
        v50 = sub_1C4402E08();
        v51(v50);
        if (v228[0] == v227[3])
        {
          sub_1C466A96C();
        }

        else
        {
          v151 = v43[5];
          v152 = v43[6];
          sub_1C4404D7C(v43 + 2);
          (*(v152 + 24))(v220, v44, v47, v151, v152);
        }

        goto LABEL_40;
      }

      v157 = v42;
      v216 = v97;
      v221 = v96;
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406728(&qword_1EDDFA668);
      }

      v158 = sub_1C4F00978();
      sub_1C43FCEE8(v158, qword_1EDE2DDE0);
      v223 = v156;
      v156(v209, v217, v90);
      v159 = v213;

      v160 = sub_1C4F00968();
      v161 = sub_1C4F01CE8();

      if (os_log_type_enabled(v160, v161))
      {
        v162 = sub_1C440F274();
        LODWORD(v214) = v161;
        v163 = v162;
        v215 = sub_1C43FC11C();
        v228[0] = v215;
        *v163 = 136315394;
        sub_1C44192E0();
        sub_1C4498E70(v164, v165, MEMORY[0x1E6969570]);
        v212 = v160;
        v166 = sub_1C4F02858();
        v167 = v157;
        v169 = v168;
        sub_1C43FD364();
        v171 = *(v170 - 256);
        v171();
        v172 = sub_1C441D828(v166, v169, v228);

        *(v163 + 4) = v172;
        *(v163 + 12) = 2080;
        v223(v167, &v219[v159], v90);
        v173 = sub_1C4F02858();
        v175 = v174;
        (v171)(v167, v90);
        v176 = sub_1C441D828(v173, v175, v228);
        v79 = v171;

        *(v163 + 14) = v176;
        sub_1C440873C();
        _os_log_impl(v177, v178, v179, v180, v163, 0x16u);
        sub_1C441E264();
        sub_1C4402DEC();
        sub_1C43FBE2C();
      }

      else
      {

        sub_1C43FD364();
        v79 = *(v203 - 256);
        v79();
      }

      v193 = *(v159 + 5);
      v194 = *(v159 + 6);
      sub_1C4404D7C(v159 + 2);
      v99 = v217;
      v195 = v218;
    }

    v223(v195, v99, v90);
    v204 = sub_1C4416DDC();
    sub_1C440BAA8(v204, v205, v206, v90);
    (*(v194 + 24))(v220, v195, v222, v193, v194);
    sub_1C4420C3C(v195, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v190 = v99;
    v191 = v90;
LABEL_39:
    (v79)(v190, v191);
    goto LABEL_40;
  }

  (*(v23 + 32))(v39, v20, v21);
  v52 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate;
  sub_1C440D164(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate, &v225);
  v53 = v23 + 16;
  v54 = *(v23 + 16);
  v208 = v52;
  v55 = sub_1C4415840();
  (v54)(v55);
  sub_1C44192E0();
  sub_1C4498E70(v56, v57, MEMORY[0x1E6969548]);
  v58 = sub_1C4F01068();
  v61 = *(v23 + 8);
  v59 = (v23 + 8);
  v60 = v61;
  v62 = sub_1C43FBC98();
  (v61)(v62);
  v212 = v54;
  if (v58)
  {
    v63 = v21;
    v217 = v60;
    v219 = v36;
    v220 = v39;
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728(&qword_1EDDFA668);
    }

    v64 = sub_1C4F00978();
    sub_1C43FCEE8(v64, qword_1EDE2DDE0);
    v65 = v213;
    v66 = v212;
    v221 = v53;
    (v212)(v213, v220, v21);
    v67 = v1;

    v68 = sub_1C4F00968();
    v69 = sub_1C4F01CE8();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = sub_1C440F274();
      v71 = sub_1C43FC11C();
      v227[0] = sub_1C441B7D8(v71);
      *v70 = 136315394;
      sub_1C44192E0();
      sub_1C4498E70(v72, v73, MEMORY[0x1E6969570]);
      v74 = v63;
      LODWORD(v215) = v69;
      v75 = sub_1C4F02858();
      v77 = v76;
      v78 = v65;
      v79 = v217;
      (v217)(v78, v63);
      v80 = sub_1C441C89C();
      sub_1C441D828(v80, v77, v81);
      sub_1C4408758();
      v66 = v212;

      *(v70 + 4) = v75;
      *(v70 + 12) = 2080;
      v82 = v219;
      (v66)(v219, v67 + v208, v63);
      sub_1C4F02858();
      v84 = v83;
      (v79)(v82, v74);
      v85 = sub_1C441C89C();
      v87 = sub_1C441D828(v85, v84, v86);

      *(v70 + 14) = v87;
      _os_log_impl(&dword_1C43F8000, v68, v215, "CachedContextProvider: behaviorEventPublisher input dates out of bound (input date %s < start date %s). Not utilizing cache for this query.", v70, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {

      v181 = v65;
      v79 = v217;
      (v217)(v181, v63);
      v74 = v63;
    }

    v182 = v223;
    v183 = v67[5];
    v184 = v67[6];
    sub_1C4404D7C(v67 + 2);
    v185 = v218;
    v186 = v220;
    (v66)(v218, v220, v74);
    v187 = sub_1C4416DDC();
    sub_1C440BAA8(v187, v188, v189, v74);
    (*(v184 + 24))(v185, v182, v222, v183, v184);
    sub_1C4420C3C(v185, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v190 = v186;
    v191 = v74;
    goto LABEL_39;
  }

  v123 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate;
  sub_1C440D164(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate, &v224);
  v213 = v1;
  v208 = v123;
  v124 = sub_1C4415840();
  (v54)(v124);
  v125 = sub_1C4F01068();
  v42 = v36;
  v126 = sub_1C43FBC98();
  (v60)(v126);
  v127 = v60;
  v45 = v21;
  if ((v125 & 1) == 0)
  {
    (v60)(v39, v21);
    v43 = v213;
    v44 = v223;
    v41 = &dword_1EDE2D000;
    goto LABEL_3;
  }

  v220 = v59;
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728(&qword_1EDDFA668);
  }

  v128 = sub_1C4F00978();
  sub_1C43FCEE8(v128, qword_1EDE2DDE0);
  v129 = v210;
  (v212)(v210, v39, v21);
  v130 = v213;

  v131 = sub_1C4F00968();
  v132 = sub_1C4F01CE8();

  if (os_log_type_enabled(v131, v132))
  {
    v133 = v127;
    v134 = sub_1C440F274();
    v219 = sub_1C43FC11C();
    v227[0] = v219;
    *v134 = 136315394;
    sub_1C44192E0();
    v215 = sub_1C4498E70(v135, v136, MEMORY[0x1E6969570]);
    v217 = v131;
    v137 = sub_1C4F02858();
    v221 = v53;
    v138 = v130;
    v140 = v139;
    LODWORD(v216) = v132;
    (v133)(v129, v45);
    v141 = sub_1C441C89C();
    sub_1C441D828(v141, v140, v142);
    sub_1C4408758();
    v130 = v138;

    *(v134 + 4) = v137;
    *(v134 + 12) = 2080;
    (v212)(v42, &v138[v208], v45);
    sub_1C4F02858();
    v143 = v39;
    v145 = v144;
    v146 = v45;
    (v133)(v42, v45);
    v147 = sub_1C441C89C();
    v149 = sub_1C441D828(v147, v145, v148);
    v39 = v143;

    *(v134 + 14) = v149;
    v150 = v217;
    _os_log_impl(&dword_1C43F8000, v217, v216, "CachedContextProvider: behaviorEventPublisher input dates out of bound (input date %s >= end date %s). Not utilizing cache for this query.", v134, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C4402DEC();
  }

  else
  {

    v196 = v129;
    v146 = v45;
    (v127)(v196, v45);
    v133 = v127;
  }

  v197 = *(v130 + 5);
  v198 = *(v130 + 6);
  sub_1C4404D7C(v130 + 2);
  v199 = v218;
  (v212)(v218, v39, v146);
  v200 = sub_1C4416DDC();
  sub_1C440BAA8(v200, v201, v202, v146);
  (*(v198 + 24))(v199, v223, v222, v197, v198);
  sub_1C4420C3C(v199, &unk_1EC0B84E0, qword_1C4F0D2D0);
  (v133)(v39, v146);
LABEL_40:
  sub_1C43FE9F0();
}

void sub_1C466D624()
{
  sub_1C43FBD3C();
  v42[2] = v1;
  v43 = v0;
  v53 = v2;
  v4 = v3;
  sub_1C441B7D8(v5);
  v6 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v50 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v42 - v13;
  v58 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v15 = sub_1C4EFDA88();
  }

  else
  {
    v15 = sub_1C4EFDA58();
  }

  v49 = *(v15 + 16);
  if (v49)
  {
    v16 = 0;
    v47 = v15 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v54 = v50 + 16;
    v46 = *MEMORY[0x1E69A9450];
    v51 = v50 + 104;
    v55 = v50 + 8;
    v44 = MEMORY[0x1E69E7CC0];
    v45 = *MEMORY[0x1E69A9418];
    v52 = v53 + 56;
    v48 = v15;
    while (v16 < *(v15 + 16))
    {
      v17 = v50;
      v4 = *(v50 + 72);
      v18 = *(v50 + 16);
      v18(v14, v47 + v4 * v16, v6);
      v19 = *(v17 + 104);
      v19(v11, v46, v6);
      sub_1C442C5FC();
      sub_1C4498E70(&qword_1EDDEFFB8, v20, MEMORY[0x1E69A9498]);
      sub_1C43FE990();
      sub_1C4F01578();
      sub_1C43FE990();
      sub_1C4F01578();
      v21 = *(v17 + 8);
      v22 = sub_1C442FC44();
      v21(v22);
      if (v56[0] == v57 || (v19(v11, v45, v6), sub_1C43FE990(), sub_1C4F01578(), sub_1C43FE990(), sub_1C4F01578(), v23 = sub_1C442FC44(), v21(v23), v56[0] == v57))
      {
LABEL_13:
        (v21)(v14, v6);
      }

      else
      {
        if (*(v53 + 16))
        {
          v24 = v53;
          sub_1C442C5FC();
          sub_1C4498E70(&qword_1EDDEFFD0, v25, MEMORY[0x1E69A9488]);
          v26 = sub_1C4F00FD8();
          v27 = ~(-1 << *(v24 + 32));
          while (1)
          {
            v28 = v26 & v27;
            if (((*(v52 + (((v26 & v27) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v26 & v27)) & 1) == 0)
            {
              break;
            }

            v18(v11, *(v53 + 48) + v28 * v4, v6);
            sub_1C442C5FC();
            sub_1C4498E70(&unk_1EDDEFFC0, v29, MEMORY[0x1E69A9490]);
            v30 = sub_1C4F010B8();
            v31 = sub_1C442FC44();
            v21(v31);
            v26 = v28 + 1;
            if (v30)
            {
              goto LABEL_13;
            }
          }
        }

        sub_1C466C4B4();
        v4 = v32;
        MEMORY[0x1C6940330]();
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C4F016D8();
        }

        sub_1C4402E08();
        sub_1C4F01748();

        (v21)(v14, v6);
        v44 = v58;
      }

      v15 = v48;
      if (++v16 == v49)
      {

        v33 = v44;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&unk_1EC0B9FF0, &unk_1C4F133B0);
    sub_1C4F024B8();

    goto LABEL_22;
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v34 = objc_allocWithZone(MEMORY[0x1E698F0E8]);
  type metadata accessor for BehaviorEvent();
  v35 = sub_1C4F01658();
  v36 = sub_1C4415840();
  v4 = [v36 v37];

  if (v33 >> 62)
  {
    goto LABEL_24;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F02988();
LABEL_22:
  sub_1C456902C(&unk_1EC0B9FF0, &unk_1C4F133B0);
  v38 = sub_1C4F01658();

  v56[4] = sub_1C4623614;
  v56[5] = 0;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 1107296256;
  v56[2] = sub_1C46237BC;
  v56[3] = &unk_1F43E6098;
  v39 = _Block_copy(v56);
  v40 = sub_1C4415840();
  [v40 v41];

  _Block_release(v39);

  sub_1C43FE9F0();
}

uint64_t sub_1C466DBD4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26[-v7 - 8];
  v9 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1C466DE10();
  v13 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedMotionStateEvents);
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C446C964(a1, v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FC0FC(v8);
  if (v14)
  {
    sub_1C440D164(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate, v26);
    v15 = sub_1C440597C();
    v16(v15);
    v17 = sub_1C44157D4(v8, 1, v9);
    v20 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v17 != 1)
    {
      v20 = sub_1C4420C3C(v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }
  }

  else
  {
    sub_1C4426A5C();
    v19();
    v20 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  MEMORY[0x1EEE9AC00](v20);
  *(&v25 - 2) = v12;
  *(&v25 - 1) = a2;
  sub_1C4B341F0(sub_1C466F454, (&v25 - 4), v13);
  v18 = v21;
  v22 = sub_1C43FE99C();
  v23(v22);
  return v18;
}

void sub_1C466DE10()
{
  v1 = v0;
  v2 = sub_1C4EF9CD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedMotionStateEvents;
  if (!*&v0[OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedMotionStateEvents])
  {
    v10 = *(v0 + 6);
    v25 = *(v0 + 5);
    v24 = sub_1C4409678(v0 + 2, v25);
    v11 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate;
    v26 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate;
    swift_beginAccess();
    v12 = *(v3 + 16);
    v12(v8, &v1[v11], v2);
    v23 = v12;
    sub_1C440BAA8(v8, 0, 1, v2);
    v13 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate;
    swift_beginAccess();
    v12(v5, &v1[v13], v2);
    v14 = (*(v10 + 40))(v8, v5, 1, 1000, v25, v10);
    v22 = *(v3 + 8);
    v22(v5, v2);
    sub_1C4420C3C(v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
    *&v1[v9] = v14;

    v15 = *(v1 + 6);
    v25 = *(v1 + 5);
    v21 = v15;
    v24 = sub_1C4409678(v1 + 2, v25);
    v16 = v26;
    v17 = v23;
    v23(v5, &v1[v26], v2);
    sub_1C4EF9BE8();
    v18 = v22;
    v22(v5, v2);
    sub_1C440BAA8(v8, 0, 1, v2);
    v17(v5, &v1[v16], v2);
    v19 = (*(v21 + 40))(v8, v5, 1, 1, v25);
    v18(v5, v2);
    sub_1C4420C3C(v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (sub_1C4428DA0(v19))
    {
      sub_1C4431590(0, (v19 & 0xC000000000000001) == 0, v19);
      if ((v19 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1C6940F90](0, v19);
      }

      else
      {
        v20 = *(v19 + 32);
      }
    }

    else
    {

      v20 = 0;
    }

    *&v1[OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastMotionStateEventBeforeStartDate] = v20;
  }
}

uint64_t sub_1C466E19C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1C4EF9CD8();
  sub_1C4498E70(&qword_1EDDFCD70, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1C4F01068())
  {
    return 0;
  }

  else
  {
    return sub_1C4EF9C18() & 1;
  }
}

uint64_t sub_1C466E268(uint64_t a1)
{
  v3 = sub_1C4EFDAB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EF9CD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedBehaviorEventsByType;
  swift_beginAccess();
  if (*(*(v1 + v11) + 16))
  {
    sub_1C457AD28();
    if (v12)
    {
      return swift_endAccess();
    }
  }

  v62 = v6;
  v63 = v4;
  v61 = v3;
  v65 = v11;
  swift_endAccess();
  v14 = swift_allocObject();
  v64 = v14;
  *(v14 + 16) = MEMORY[0x1E69E7CC0];
  v15 = v14 + 16;
  v17 = *(v1 + 40);
  v16 = *(v1 + 48);
  sub_1C4409678((v1 + 16), v17);
  v18 = v8;
  v19 = v7;
  v20 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate;
  swift_beginAccess();
  v21 = *(v18 + 16);
  v67 = v1;
  v60 = v21;
  v21(v10, (v1 + v20), v19);
  v22 = *(v16 + 16);
  v66 = a1;
  v23 = v22(v10, a1, v17, v16);
  v26 = *(v18 + 8);
  v25 = v18 + 8;
  v24 = v26;
  v27 = (v26)(v10, v19);
  if (v23)
  {
    MEMORY[0x1C6940330](v27);
    sub_1C4427EF0();
    sub_1C4F01748();
    v28 = v65;
    v29 = v66;
  }

  else
  {
    v56 = v25;
    v57 = v20;
    v59 = v15;
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v30 = sub_1C4F00978();
    sub_1C442B738(v30, qword_1EDE2DDE0);
    v29 = v66;
    v31 = v61;
    (*(v63 + 16))(v62, v66, v61);
    v32 = v67;

    v33 = sub_1C4F00968();
    v34 = sub_1C4F01CB8();

    v58 = v34;
    v35 = os_log_type_enabled(v33, v34);
    v28 = v65;
    if (v35)
    {
      v36 = v19;
      v37 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v69[0] = v55;
      *v37 = 136315394;
      v38 = v10;
      v60(v10, &v32[v57], v36);
      sub_1C4498E70(&qword_1EDDFCD50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v39 = v33;
      v40 = sub_1C4F02858();
      v41 = v31;
      v43 = v42;
      v24(v38, v36);
      v44 = sub_1C441D828(v40, v43, v69);

      *(v37 + 4) = v44;
      *(v37 + 12) = 2080;
      sub_1C4498E70(&qword_1EDDEFFB0, MEMORY[0x1E69A9478], MEMORY[0x1E69A94A8]);
      v45 = v62;
      v46 = sub_1C4F02858();
      v48 = v47;
      (*(v63 + 8))(v45, v41);
      v49 = sub_1C441D828(v46, v48, v69);

      *(v37 + 14) = v49;
      _os_log_impl(&dword_1C43F8000, v39, v58, "CachedContextProvider: Unable to find last event before start date %s for behavior type %s", v37, 0x16u);
      v50 = v55;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v50, -1, -1);
      v51 = v37;
      v29 = v66;
      MEMORY[0x1C6942830](v51, -1, -1);
    }

    else
    {

      (*(v63 + 8))(v62, v31);
    }
  }

  v52 = objc_autoreleasePoolPush();
  v53 = v67;
  sub_1C466EA7C(v67, v29, v64);
  objc_autoreleasePoolPop(v52);
  swift_beginAccess();
  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  swift_isUniquelyReferenced_nonNull_native();
  v68 = *&v53[v28];
  sub_1C466099C();
  *&v53[v28] = v68;
  swift_endAccess();
}

uint64_t sub_1C466E870(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = *a1;
  v13 = *a2;
  v14 = *(v5 + 16);
  v14(&v18 - v10, *(*a1 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v4, v9);
  (v14)(v7, *(v13 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v4);
  LOBYTE(a2) = sub_1C4EF9C18();
  v15 = *(v5 + 8);
  v15(v7, v4);
  v15(v11, v4);
  if (a2)
  {
    return 0;
  }

  (v14)(v11, *(v12 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v4);
  (v14)(v7, *(v13 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v4);
  v17 = sub_1C4EF9C08();
  v15(v7, v4);
  v15(v11, v4);
  if (v17)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_1C466EA7C(char *a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v21 = a2;
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v11 = *(a1 + 5);
  v10 = *(a1 + 6);
  v20 = sub_1C4409678(a1 + 2, v11);
  v12 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate;
  swift_beginAccess();
  v13 = sub_1C4EF9CD8();
  v14 = *(*(v13 - 8) + 16);
  v14(v9, &a1[v12], v13);
  sub_1C440BAA8(v9, 0, 1, v13);
  v15 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate;
  swift_beginAccess();
  v14(v6, &a1[v15], v13);
  sub_1C440BAA8(v6, 0, 1, v13);
  v16 = (*(v10 + 24))(v9, v6, v21, v11, v10);
  sub_1C4420C3C(v6, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C4420C3C(v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v27 = sub_1C466ED7C;
  v28 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1C44405F8;
  v26 = &unk_1F43E6048;
  v17 = _Block_copy(&aBlock);
  v27 = sub_1C463086C;
  v28 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1C45DFE08;
  v26 = &unk_1F43E6070;
  v18 = _Block_copy(&aBlock);

  v19 = [v16 sinkWithCompletion:v17 receiveInput:v18];
  _Block_release(v18);
  _Block_release(v17);
}

void sub_1C466ED7C(void *a1)
{
  v1 = [a1 error];
  if (v1)
  {
    v2 = v1;
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDE2DDE0);
    v4 = v2;
    oslog = sub_1C4F00968();
    v5 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_1C4F02A38();
      v10 = sub_1C441D828(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1C43F8000, oslog, v5, "CachedContextProvider: Biome sink completed with error- %s", v6, 0xCu);
      sub_1C440962C(v7);
      MEMORY[0x1C6942830](v7, -1, -1);
      MEMORY[0x1C6942830](v6, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1C466EF30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v15[1] = a3;
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(v5 + 16);
  v10(v8, *(*a1 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v4, v6);
  sub_1C4498E70(&qword_1EDDFCD70, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v11 = sub_1C4F01068();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    (v10)(v8, *(v9 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v4);
    v13 = sub_1C4EF9C18();
    v12(v8, v4);
  }

  return v13 & 1;
}

uint64_t sub_1C466F0EC()
{
  sub_1C440962C((v0 + 16));
  sub_1C4420C3C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider____lazy_storage___calendar, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate;
  v2 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate, v2);

  return v0;
}

uint64_t sub_1C466F1DC()
{
  sub_1C466F0EC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CachedContextProvider(uint64_t a1)
{
  result = qword_1EDDF4478;
  if (!qword_1EDDF4478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C466F288(uint64_t a1)
{
  sub_1C4630784(319);
  if (v1 <= 0x3F)
  {
    sub_1C4EF9CD8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C466F484(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = sub_1C4428DA0(a1);
  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1C6940F90](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v10 = *(a1 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v13 = v10;
    sub_1C4673488(&v13, a2, a3, a4);
    if (v4)
    {

      return;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_1C466F588()
{
  sub_1C43FEC28();
  sub_1C4403FC0();
  sub_1C4EF9F88();
  sub_1C43FCDF8();
  v66 = v2;
  v67 = v1;
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FD2D8();
  v63 = v3;
  sub_1C4EF9648();
  sub_1C43FCDF8();
  v64 = v5;
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FD2D8();
  v62 = v6;
  v7 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60 - v9;
  v11 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  v70 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v60 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  v72 = v0;
  v22 = sub_1C4428DA0(v0);
  v23 = MEMORY[0x1E69E7CC0];
  v71 = v22;
  if (v22)
  {
    v73 = MEMORY[0x1E69E7CC0];
    sub_1C43FED38();
    sub_1C459D270();
    if (v22 < 0)
    {
      __break(1u);
      goto LABEL_26;
    }

    v68 = v22 & ~(v22 >> 63);
    v69 = v10;
    v24 = v21;
    v25 = 0;
    v23 = v73;
    v26 = v72 & 0xC000000000000001;
    do
    {
      if (v26)
      {
        v27 = MEMORY[0x1C6940F90](v25, v72);
      }

      else
      {
        v27 = *(v72 + 8 * v25 + 32);
      }

      v28 = v27;
      v29 = [v28 startDate];
      sub_1C4EF9C78();

      v73 = v23;
      v31 = *(v23 + 16);
      v30 = *(v23 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1C43FCFE8(v30);
        sub_1C459D270();
        v23 = v73;
      }

      ++v25;
      *(v23 + 16) = v31 + 1;
      (*(v13 + 32))(v23 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v31, v18, v11);
      v22 = v71;
    }

    while (v71 != v25);
    v21 = v24;
    v10 = v69;
  }

  sub_1C466FC1C(v23, v10);

  if (sub_1C44157D4(v10, 1, v11) == 1)
  {
    sub_1C4420C3C(v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
LABEL_24:
    sub_1C44086C4();
    return;
  }

  (*(v13 + 32))(v21, v10, v11);
  v69 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C496C3A0(0x2D4D4D2D59595959, 0xEA00000000004444, v69);
  if (!v22)
  {
LABEL_23:
    sub_1C4499940();
    v51 = v63;
    sub_1C4EF9F58();
    sub_1C456902C(&unk_1EC0BAD80, qword_1C4F16920);
    sub_1C4403FC0();
    v52 = sub_1C4EF9F68();
    sub_1C43FCDF8();
    v54 = v53;
    v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1C4F0D130;
    (*(v54 + 104))(v56 + v55, *MEMORY[0x1E6969A48], v52);
    sub_1C4D51F7C();
    v57 = v70;
    sub_1C4EF9C88();
    v58 = v62;
    sub_1C4EF9E98();

    v59 = *(v13 + 8);
    v59(v57, v11);
    (*(v66 + 8))(v51, v67);
    sub_1C4EF95A8();

    (*(v64 + 8))(v58, v65);
    v59(v21, v11);

    goto LABEL_24;
  }

  v73 = MEMORY[0x1E69E7CC0];
  v32 = sub_1C43FED38();
  sub_1C44CD9C0(v32, v33, v34);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v61 = v21;
    v35 = 0;
    v36 = v73;
    v68 = v72 & 0xC000000000000001;
    do
    {
      if (v68)
      {
        v37 = MEMORY[0x1C6940F90](v35, v72);
      }

      else
      {
        v37 = *(v72 + 8 * v35 + 32);
      }

      v38 = v37;
      v39 = [v37 startDate];
      v40 = v70;
      sub_1C4EF9C78();

      v41 = sub_1C4EF9BF8();
      v42 = v11;
      (*(v13 + 8))(v40, v11);
      v43 = [v69 stringFromDate_];

      v44 = sub_1C4F01138();
      v46 = v45;

      v73 = v36;
      v48 = *(v36 + 16);
      v47 = *(v36 + 24);
      if (v48 >= v47 >> 1)
      {
        v50 = sub_1C43FCFE8(v47);
        sub_1C44CD9C0(v50, v48 + 1, 1);
        v36 = v73;
      }

      ++v35;
      *(v36 + 16) = v48 + 1;
      v49 = v36 + 16 * v48;
      *(v49 + 32) = v44;
      *(v49 + 40) = v46;
      v11 = v42;
    }

    while (v71 != v35);
    v21 = v61;
    goto LABEL_23;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_1C466FC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v20 = a2;
    v12 = *(v5 + 16);
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12(&v20 - v9, v13, v4, v10);
    v14 = (v5 + 32);
    for (i = 1; v21 != i; ++i)
    {
      (v12)(v7, v13 + *(v5 + 72) * i, v4);
      sub_1C4502254(&qword_1EDDFCD70, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v16 = sub_1C4F01068();
      v17 = *(v5 + 8);
      if (v16)
      {
        v17(v11, v4);
        (*v14)(v11, v7, v4);
      }

      else
      {
        v17(v7, v4);
      }
    }

    v18 = v20;
    (*v14)(v20, v11, v4);
    return sub_1C440BAA8(v18, 0, 1, v4);
  }

  else
  {

    return sub_1C440BAA8(a2, 1, 1, v4);
  }
}

uint64_t sub_1C466FEB0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v6[2] = v0[4];
  v6[3] = v3;
  v6[4] = v4;
  v6[5] = v1;
  v6[6] = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C446C37C(sub_1C4673AF0, v6);
}

uint64_t sub_1C466FF44()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView____lazy_storage___featureNames;
  v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView____lazy_storage___featureNames);
  if (v2)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C44CD9C0(0, 9, 0);
    v3 = 0;
    sub_1C441EAF8();
    sub_1C44041C0();
    sub_1C442DDFC();
    sub_1C4405988();
    sub_1C442B9D4();
    sub_1C4433220();
    sub_1C443FB20();
    sub_1C4415FA8();
    do
    {
      v16 = 0xEC00000079616468;
      v17 = 0x747269426C6C6163;
      switch(byte_1F43D8210[v3 + 32])
      {
        case 1:
          v17 = v12;
          v16 = v11;
          break;
        case 2:
          v16 = 0xE90000000000006CLL;
          v17 = v12;
          break;
        case 3:
          v16 = 0xEA00000000007275;
          v17 = v13;
          break;
        case 4:
          v17 = 0xD000000000000011;
          v16 = v10;
          break;
        case 5:
          v17 = v15;
          v16 = v14;
          break;
        case 6:
          v17 = v5;
          goto LABEL_12;
        case 7:
          v17 = v6;
LABEL_12:
          v16 = v9;
          break;
        case 8:
          v17 = v8;
          v16 = v7;
          break;
        default:
          break;
      }

      v27 = v4;
      v19 = *(v4 + 16);
      v18 = *(v4 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1C43FCFE8(v18);
        sub_1C441B7E4();
        v26 = v21;
        sub_1C44CD9C0(v22, v23, v24);
        sub_1C4415FA8();
        sub_1C443FB20();
        sub_1C4433220();
        sub_1C442B9D4();
        sub_1C4405988();
        sub_1C442DDFC();
        sub_1C44041C0();
        sub_1C441EAF8();
        v11 = 0xEC0000007275446CLL;
        v10 = v26;
        v9 = 0xEC000000736B6565;
        v4 = v27;
      }

      ++v3;
      *(v4 + 16) = v19 + 1;
      v20 = v4 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
    }

    while (v3 != 9);
    v2 = sub_1C4499940();
    *(v0 + v1) = v2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return v2;
}

void sub_1C4670190()
{
  sub_1C43FEC28();
  v1 = v0;
  v31 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBFDC();
  v30 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v26 - v7;
  v32 = MEMORY[0x1E69E7CC0];
  v8 = sub_1C4428DA0(v1);
  v9 = 0;
  v10 = v1 & 0xC000000000000001;
  v11 = v1 & 0xFFFFFFFFFFFFFF8;
  v26 = v1;
  v27 = v8;
  v12 = v1 + 32;
  v28 = (v3 + 8);
  v13 = 0x1EC0B6000uLL;
  while (1)
  {
LABEL_2:
    if (v9 == v8)
    {
      sub_1C4428DA0(v32);

      sub_1C44086C4();
      return;
    }

    if (v10)
    {
      v14 = MEMORY[0x1C6940F90](v9, v26);
    }

    else
    {
      if (v9 >= *(v11 + 16))
      {
        goto LABEL_21;
      }

      v14 = *(v12 + 8 * v9);
    }

    v15 = v14;
    if (__OFADD__(v9++, 1))
    {
      break;
    }

    if (*(v13 + 2248) != -1)
    {
      sub_1C4412E50();
      swift_once();
    }

    v17 = qword_1EC151B50;
    v18 = [v15 mechanism];
    if (*(v17 + 16))
    {
      v19 = v18;
      sub_1C4F02AF8();
      MEMORY[0x1C69417F0](v19);
      sub_1C4F02B68();
      while (1)
      {
        sub_1C44259C4();
        if ((v21 & 1) == 0)
        {
          break;
        }

        if (*(*(v17 + 48) + 8 * v20) == v19)
        {
          v22 = [v15 startDate];
          sub_1C4EF9C78();

          v23 = v30;
          sub_1C4EF9C38();
          sub_1C4404A98();
          LOBYTE(v22) = sub_1C4EF9C18();
          v24 = *v28;
          (*v28)(v23, v31);
          v25 = sub_1C4404A98();
          v24(v25);
          if (v22)
          {
            sub_1C4F02318();
            sub_1C4F02358();
            sub_1C4F02368();
            sub_1C4F02328();
          }

          else
          {
          }

          v8 = v27;
          v13 = 0x1EC0B6000;
          goto LABEL_2;
        }
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

id sub_1C4670458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v36 = a6;
  v33 = a4;
  v34 = a5;
  v35 = a3;
  v9 = sub_1C4EF9E58();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  v37 = sub_1C4EF9F88();
  sub_1C43FCDF8();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  v22 = *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_config);
  v23 = *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_config + 8);
  v24 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4433220();
  v26 = sub_1C4673B1C(v22, v23, v25 | 0x7472694200000000, 0xEC00000079616468, a1, a2);
  (*(v11 + 104))(v15, *MEMORY[0x1E6969868], v9);
  sub_1C4EF9E68();
  v27 = (*(v11 + 8))(v15, v9);
  v31 = 0;
  if ((v36 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v27);
    v29 = v33;
    v28 = v34;
    *(&v33 - 4) = v21;
    *(&v33 - 3) = v29;
    *(&v33 - 2) = v28;
    sub_1C479B4B4(sub_1C4673C40, (&v33 - 6), v35);
    if (v30)
    {
      v31 = 1;
    }
  }

  [objc_opt_self() featureValueWithInt64_];
  (*(v17 + 8))(v21, v37);
  return v26;
}

BOOL sub_1C46706D8(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v27 = a3;
  v29 = a2;
  v30 = sub_1C4EF9CD8();
  v5 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4EF9648();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a1;
  sub_1C456902C(&unk_1EC0BAD80, qword_1C4F16920);
  v11 = sub_1C4EF9F68();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C4F0CE60;
  v16 = v15 + v14;
  v17 = *(v12 + 104);
  v17(v16, *MEMORY[0x1E6969A78], v11);
  v17(v16 + v13, *MEMORY[0x1E6969A48], v11);
  sub_1C4D51F7C();
  v18 = [v28 startDate];
  sub_1C4EF9C78();

  sub_1C4EF9EA8();

  (*(v5 + 8))(v7, v30);
  v19 = sub_1C4EF95E8();
  if ((v20 & 1) != 0 || v19 != v27)
  {
    (*(v31 + 8))(v10, v32);
  }

  else
  {
    v21 = sub_1C4EF95A8();
    v23 = v22;
    (*(v31 + 8))(v10, v32);
    if ((v23 & 1) == 0)
    {
      return v21 == v26;
    }
  }

  return 0;
}

void sub_1C46709D8()
{
  sub_1C43FEC28();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C4408644();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C440D100();
  v50 = v5;
  v15 = sub_1C4428DA0(v5);
  v49 = v9;
  v51 = v15;
  v48 = v3;
  if (v15)
  {
    v16 = v15;
    v52 = MEMORY[0x1E69E7CC0];
    sub_1C459D100(0, v15 & ~(v15 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
      return;
    }

    v17 = 0;
    v18 = v52;
    v19 = (v12 + 8);
    do
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1C6940F90](v17, v50);
      }

      else
      {
        v20 = *(v50 + 8 * v17 + 32);
      }

      v21 = v20;
      v22 = [v20 endDate];
      sub_1C4EF9C78();

      sub_1C4EF9AD8();
      v24 = v23;
      v25 = *v19;
      (*v19)(v2, v10);
      v26 = [v21 startDate];
      sub_1C4EF9C78();

      sub_1C4EF9AD8();
      v28 = v27;

      v25(v1, v10);
      v30 = *(v52 + 16);
      v29 = *(v52 + 24);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        sub_1C43FCFE8(v29);
        sub_1C441B7E4();
        sub_1C459D100(v32, v33, v34);
      }

      ++v17;
      *(v52 + 16) = v31;
      *(v52 + 8 * v30 + 32) = v24 - v28;
    }

    while (v51 != v17);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
    v31 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v31)
    {
      v35 = 0.0;
      goto LABEL_14;
    }
  }

  v35 = 0.0;
  v36 = 32;
  do
  {
    v35 = v35 + *(v18 + v36);
    v36 += 8;
    --v31;
  }

  while (v31);
LABEL_14:
  v37 = COERCE_DOUBLE(sub_1C46134D4(v18));
  v39 = v38;

  if (v39)
  {
    v40 = 0.0;
  }

  else
  {
    v40 = v37;
  }

  sub_1C456902C(&qword_1EC0B87D8, &qword_1C4F0DBC8);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1C4F0C890;
  v42 = *(v48 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_config);
  v43 = *(v48 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_config + 8);
  v44 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  *(v41 + 32) = sub_1C4673B1C(v42, v43, 0x61746F546C6C6163, 0xEC0000007275446CLL, v49, v7);
  v45 = objc_opt_self();
  *(v41 + 40) = [v45 featureValueWithDouble_];
  v46 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  *(v41 + 48) = sub_1C4673B1C(v42, v43, 0x61746F546C6C6163, 0xE90000000000006CLL, v49, v7);
  *(v41 + 56) = [v45 featureValueWithInt64_];
  objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  sub_1C4433220();
  *(v41 + 64) = sub_1C4673B1C(v42, v43, v47 | 0x4478614D00000000, 0xEA00000000007275, v49, v7);
  *(v41 + 72) = [v45 featureValueWithDouble_];
  sub_1C44086C4();
}

void sub_1C4670DD0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = v4;
  v12 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4408644();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440D100();
  v17 = sub_1C4428DA0(a3);
  v18 = MEMORY[0x1E69E7CC0];
  v67 = a1;
  v68 = a2;
  v66 = v7;
  v69 = v17;
  if (v17)
  {
    v19 = v17;
    sub_1C459D100(0, v17 & ~(v17 >> 63), 0);
    if (v19 < 0)
    {
LABEL_36:
      __break(1u);
      return;
    }

    v20 = 0;
    v21 = v18;
    v22 = (v14 + 8);
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v23 = sub_1C4404B44();
        v24 = MEMORY[0x1C6940F90](v23);
      }

      else
      {
        v24 = *(a3 + 8 * v20 + 32);
      }

      v25 = v24;
      v26 = [v24 endDate];
      sub_1C4EF9C78();

      sub_1C4EF9AD8();
      v28 = v27;
      v29 = *v22;
      (*v22)(v6, v12);
      v30 = [v25 startDate];
      sub_1C4EF9C78();

      sub_1C4EF9AD8();
      v32 = v31;

      v29(v5, v12);
      v34 = *(v21 + 16);
      v33 = *(v21 + 24);
      v35 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        sub_1C43FCFE8(v33);
        sub_1C441B7E4();
        sub_1C459D100(v36, v37, v38);
      }

      ++v20;
      *(v21 + 16) = v35;
      *(v21 + 8 * v34 + 32) = v28 - v32;
    }

    while (v69 != v20);
  }

  else
  {
    v35 = *(MEMORY[0x1E69E7CC0] + 16);
    v21 = MEMORY[0x1E69E7CC0];
    if (!v35)
    {
      goto LABEL_20;
    }
  }

  v39 = a4 + a4;
  v18 = MEMORY[0x1E69E7CC0];
  v40 = 32;
  do
  {
    v41 = *(v21 + v40);
    if (v39 < v41)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C459D100(0, *(v18 + 16) + 1, 1);
      }

      v43 = *(v18 + 16);
      v42 = *(v18 + 24);
      if (v43 >= v42 >> 1)
      {
        v44 = sub_1C43FCFE8(v42);
        sub_1C459D100(v44, v43 + 1, 1);
      }

      *(v18 + 16) = v43 + 1;
      *(v18 + 8 * v43 + 32) = v41;
    }

    v40 += 8;
    --v35;
  }

  while (v35);
LABEL_20:

  v45 = *(v18 + 16);

  v70 = MEMORY[0x1E69E7CC0];
  v46 = sub_1C4428DA0(a3);
  for (i = 0; v46 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v50 = sub_1C4404B44();
      v48 = MEMORY[0x1C6940F90](v50);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v48 = *(a3 + 8 * i + 32);
    }

    v49 = v48;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if ([v48 direction] == 1)
    {
      sub_1C4F02318();
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
    }

    else
    {
    }
  }

  v51 = sub_1C4428DA0(v70);

  sub_1C456902C(&qword_1EC0B87D8, &qword_1C4F0DBC8);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1C4F0CE60;
  v53 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  swift_bridgeObjectRetain_n();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v54 = sub_1C4404B44();
  *(v52 + 32) = sub_1C4673B1C(v54, v55, 0xD000000000000011, v56, v67, v68);
  v57 = v69;
  if (v69 <= 1)
  {
    v57 = 1;
  }

  v58 = v57;
  v59 = v51 / v57;
  v60 = objc_opt_self();
  *(v52 + 40) = [v60 featureValueWithDouble_];
  v61 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4433220();
  v62 = sub_1C4404B44();
  *(v52 + 48) = sub_1C4673B1C(v62, v63, v64, v65, v67, v68);
  *(v52 + 56) = [v60 featureValueWithDouble_];
}

uint64_t sub_1C46712D0(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C456902C(&qword_1EC0B8850, &unk_1C4F0DC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0C890;
  strcpy((inited + 32), "callTwoWeeks");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = 0x4132750000000000;
  strcpy((inited + 56), "callSixWeeks");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = 0x414BAF8000000000;
  *(inited + 80) = 0x6C6577546C6C6163;
  *(inited + 88) = 0xEF736B6565576576;
  *(inited + 96) = 0x415BAF8000000000;
  v38 = objc_opt_self();
  v10 = 0;
  v11 = *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_config);
  v12 = *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_config + 8);
  v13 = MEMORY[0x1E69E7CC0];
  do
  {
    v14 = *(inited + v10 + 32);
    v15 = *(inited + v10 + 40);
    objc_allocWithZone(MEMORY[0x1E69A9EA8]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = sub_1C4673B1C(v11, v12, v14, v15, a1, a2);
    sub_1C4670190();
    v18 = [v38 featureValueWithInt64_];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458B740();
      v13 = v22;
    }

    v20 = *(v13 + 16);
    v19 = *(v13 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1C43FCFE8(v19);
      sub_1C441B7E4();
      sub_1C458B740();
      v13 = v23;
    }

    *(v13 + 16) = v20 + 1;
    v21 = v13 + 16 * v20;
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;
    v10 += 24;
  }

  while (v10 != 72);
  swift_setDeallocating();
  sub_1C49E15B0();
  sub_1C4410A78();
  sub_1C46709D8();
  sub_1C49D39CC(v24);
  sub_1C456902C(&qword_1EC0B87D8, &qword_1C4F0DBC8);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1C4F0D130;
  v26 = sub_1C4410A78();
  *(v25 + 32) = sub_1C4670458(v26, v27, v28, a5, a6, v29);
  *(v25 + 40) = v30;
  sub_1C49D39CC(v25);
  v31 = sub_1C4410A78();
  sub_1C4670DD0(v31, v32, v33, a3);
  sub_1C49D39CC(v34);
  return v13;
}

uint64_t sub_1C4671594()
{
  v2 = v0;
  v270 = sub_1C456902C(&qword_1EC0BA9F8, &unk_1C4F168D0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBC74();
  v269 = v4;
  v5 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBC74();
  sub_1C43FD2C8(v7);
  v263 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v253 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v10);
  v12 = sub_1C43FD2C8(&v246 - v11);
  v13 = type metadata accessor for GDInteractionEnumeration.GDInteractionIterator(v12);
  v14 = sub_1C43FBD18(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  v279 = v15;
  v16 = sub_1C456902C(&unk_1EC0BAD50, &unk_1C4F168E0);
  sub_1C43FBD18(v16);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBC74();
  sub_1C43FD2C8(v18);
  v283 = sub_1C4EF9648();
  sub_1C43FCDF8();
  v250 = v19;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v21);
  v289 = sub_1C4F01188();
  sub_1C43FCDF8();
  v249 = v22;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD2D8();
  v25 = sub_1C43FD2C8(v24);
  v251 = type metadata accessor for Configuration(v25);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FD2D8();
  v28 = sub_1C43FD2C8(v27);
  v247 = type metadata accessor for GraphTriple(v28);
  sub_1C43FCDF8();
  v248 = v29;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBCC4();
  v33 = v32 - v31;
  v34 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  sub_1C43FBD18(v34);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBC74();
  sub_1C43FD2C8(v36);
  v37 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v291 = v38;
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v246 - v43;
  v45 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v45);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBC74();
  sub_1C43FD2C8(v47);
  v276 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v287 = v48;
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v246 - v53;
  v286 = (&v246 - v53);
  MEMORY[0x1EEE9AC00](v55);
  sub_1C440D100();
  v294 = v1;
  v275 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v285 = v56;
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v58);
  v290 = &v246 - v59;
  v60 = MEMORY[0x1E69E7CC0];
  v302 = MEMORY[0x1E69E7CC0];
  v273 = v2;
  v265 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_store);
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  sub_1C4403FC0();
  v61 = *(sub_1C4EFEEF8() - 8);
  v62 = *(v61 + 72);
  v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v257 = *(v61 + 80);
  v268 = v2;
  *(swift_allocObject() + 16) = xmmword_1C4F0C890;
  v260 = v63;
  sub_1C4EFE518();
  sub_1C4EFE478();
  *&v258 = v62;
  sub_1C4EFEA18();
  sub_1C4D504A4();
  v259 = v64;
  v65 = *MEMORY[0x1E69A95C0];
  v67 = v287 + 104;
  v66 = *(v287 + 104);
  v68 = v1;
  v69 = v276;
  (v66)(v68, v65, v276);
  (v66)(v54, v65, v69);
  (v66)(v281, v65, v69);
  v70 = v69;
  (v66)(v284, v65, v69);
  v71 = v274;
  LODWORD(v267) = v65;
  v266 = v67;
  v261 = v66;
  (v66)(v274, v65, v70);
  v244 = v71;
  v245 = 0;
  v72 = v284;
  sub_1C4EFDCD8();

  v74 = v287 + 8;
  v73 = *(v287 + 8);
  v75 = v71;
  v76 = v276;
  v73(v75, v276);
  v73(v72, v76);
  v77 = sub_1C4404A98();
  (v73)(v77);
  v78 = sub_1C4418370();
  v73(v78, v76);
  v79 = sub_1C43FFF1C();
  v287 = v74;
  v259 = v73;
  v73(v79, v76);
  v80 = sub_1C4EFD678();
  sub_1C44158E8(v80, &v287);
  v296 = &v302;
  v81 = v290;
  sub_1C48687D0(v290, v73, sub_1C4673BE0, v295);
  sub_1C4420C3C(v73, &unk_1EC0C07E0, &unk_1C4F168F0);
  v82 = *(v285 + 1);
  v285 = v285 + 8;
  v256 = v82;
  v82(v81, v275);
  v83 = v302;
  v84 = *(v302 + 16);
  v293 = v37;
  v290 = v302;
  if (v84)
  {
    v255 = v33;
    v301 = v60;
    sub_1C43FED38();
    sub_1C459D178();
    v85 = v301;
    v86 = v83 + 32;
    do
    {
      sub_1C442E860(v86, &v297);
      sub_1C4409678(&v297, v298);
      sub_1C4EFF7E8();
      sub_1C440962C(&v297);
      v301 = v85;
      v88 = *(v85 + 16);
      v87 = *(v85 + 24);
      if (v88 >= v87 >> 1)
      {
        sub_1C43FCFE8(v87);
        sub_1C459D178();
        v85 = v301;
      }

      *(v85 + 16) = v88 + 1;
      sub_1C4409B30();
      (*(v90 + 32))(v85 + v89 + *(v90 + 72) * v88, v44, v293);
      v86 += 40;
      --v84;
    }

    while (v84);
    v33 = v255;
  }

  sub_1C45972E0();
  v255 = v91;
  v92 = swift_allocObject();
  v258 = xmmword_1C4F0D130;
  *(v92 + 16) = xmmword_1C4F0D130;
  sub_1C4EFE3D8();
  sub_1C4D504A4();
  v268 = v93;
  v94 = sub_1C43FFF1C();
  v95 = v276;
  v96 = v261;
  (v261)(v94, v267, v276);
  sub_1C4418370();
  sub_1C441497C();
  v96();
  v97 = v281;
  sub_1C441497C();
  v96();
  v98 = v284;
  sub_1C441497C();
  v96();
  v99 = v274;
  sub_1C441497C();
  v96();
  v244 = v99;
  v245 = 0;
  v100 = v286;
  sub_1C4EFDCD8();

  v101 = v99;
  v102 = v287;
  v103 = v259;
  v259(v101, v95);
  v103(v98, v95);
  v103(v97, v95);
  v103(v100, v95);
  v104 = sub_1C43FFF1C();
  v103(v104, v95);
  v105 = sub_1C4EFF8F8();
  sub_1C44158E8(v105, &v299);
  v106 = v272;
  v107 = sub_1C498DB80();
  sub_1C4420C3C(v102, &qword_1EC0BAA00, &unk_1C4F17400);
  v256(v106, v275);
  sub_1C4EF9348();
  swift_allocObject();
  v281 = sub_1C4EF9338();
  sub_1C456902C(&qword_1EC0BAA08, &unk_1C4F16900);
  sub_1C4502254(&qword_1EDDFE820, MEMORY[0x1E69A9810], MEMORY[0x1E69A9820]);
  v284 = sub_1C4F00F28();
  v108 = *(v107 + 16);
  v109 = v279;
  if (!v108)
  {
LABEL_31:

    v117 = v291;
    sub_1C4409678((v273 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_handleView), *(v273 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_handleView + 24));
    v289 = sub_1C4EFF2B8();
    v151 = v252;
    sub_1C449EDC8(v265 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config, v252, type metadata accessor for Configuration);
    v152 = (v151 + *(v251 + 20));
    v108 = *v152;
    v133 = v152[1];
    v111 = v263;
    v113 = v262;
    if (qword_1EDDFEC70 != -1)
    {
      goto LABEL_99;
    }

    goto LABEL_32;
  }

  v287 = v33 + v247[8];
  sub_1C4409B30();
  v261 = v107;
  v111 = v107 + v110;
  v286 = (v249 + 8);
  v268 = (v250 + 32);
  v285 = *(v112 + 72);
  v272 = v291 + 16;
  v267 = v291 + 8;
  v266 = v250 + 8;
  while (1)
  {
    v113 = v33;
    sub_1C449EDC8(v111, v33, type metadata accessor for GraphTriple);
    v294 = objc_autoreleasePoolPush();
    v114 = v288;
    sub_1C4F01178();
    v115 = sub_1C4F01148();
    v117 = v116;
    sub_1C4402C08();
    v118(v114, v289);
    if (v117 >> 60 == 15)
    {
      v33 = v113;
LABEL_29:
      v123 = sub_1C43FFF1C();
      goto LABEL_30;
    }

    v119 = v109;
    sub_1C4502254(&qword_1EC0BAA18, MEMORY[0x1E6968278], MEMORY[0x1E6968298]);
    v120 = v280;
    v121 = v283;
    v109 = v115;
    v122 = v292;
    sub_1C4EF9328();
    if (!v122)
    {
      break;
    }

    sub_1C441DFEC(v115, v117);
    sub_1C440BAA8(v120, 1, 1, v121);
    sub_1C4420C3C(v120, &unk_1EC0BAD50, &unk_1C4F168E0);
    v292 = 0;
    v33 = v113;
    v123 = sub_1C43FFF1C();
    v109 = v119;
LABEL_30:
    objc_autoreleasePoolPop(v123);
    sub_1C449F128();
    v111 += v285;
    if (!--v108)
    {
      goto LABEL_31;
    }
  }

  v274 = v115;
  v292 = 0;
  sub_1C440BAA8(v120, 0, 1, v121);
  sub_1C4402C08();
  v124(v277, v120, v121);
  v125 = sub_1C4404A98();
  v271 = v126;
  (v126)(v125);
  v127 = sub_1C4EF95E8();
  if (v128)
  {
    v129 = -1;
  }

  else
  {
    v129 = v127;
  }

  v276 = v129;
  v130 = sub_1C4EF95A8();
  if (v131)
  {
    v132 = -1;
  }

  else
  {
    v132 = v130;
  }

  v275 = v132;
  v133 = v284;
  swift_isUniquelyReferenced_nonNull_native();
  v297 = v133;
  sub_1C44E3664();
  if (!__OFADD__(*(v133 + 16), (v135 & 1) == 0))
  {
    v136 = v134;
    v109 = v135;
    sub_1C456902C(&qword_1EC0BAA20, &qword_1C4F16918);
    if (sub_1C4F02458())
    {
      sub_1C44E3664();
      v139 = v293;
      if ((v109 & 1) != (v138 & 1))
      {
        goto LABEL_101;
      }

      v136 = v137;
      v33 = v113;
      v133 = v283;
    }

    else
    {
      v139 = v293;
      v133 = v283;
      v33 = v113;
    }

    v140 = v297;
    v284 = v297;
    if (v109)
    {
      v141 = (*(v297 + 56) + 16 * v136);
      v142 = v275;
      *v141 = v276;
      v141[1] = v142;
    }

    else
    {
      *(v297 + 8 * (v136 >> 6) + 64) |= 1 << v136;
      v271(*(v140 + 48) + *(v291 + 72) * v136, v282, v139);
      v143 = v284;
      v144 = (*(v284 + 56) + 16 * v136);
      v145 = v275;
      *v144 = v276;
      v144[1] = v145;
      v146 = *(v143 + 16);
      v147 = __OFADD__(v146, 1);
      v148 = v146 + 1;
      if (v147)
      {
        goto LABEL_97;
      }

      *(v143 + 16) = v148;
    }

    sub_1C441DFEC(v274, v117);
    sub_1C4402C08();
    v149(v282, v139);
    sub_1C4402C08();
    v150(v277, v133);
    v109 = v279;
    goto LABEL_29;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  swift_once();
LABEL_32:
  v153 = xmmword_1EDDFEC78;
  sub_1C449F128();
  if (v153 & ~v108 | *(&v153 + 1) & ~v133)
  {
    v154 = 2000;
  }

  else
  {
    v154 = 200;
  }

  v155 = [objc_opt_self() interactionHistoryEnumeratorWithBatchSize_];
  v301 = MEMORY[0x1E69E7CC8];
  v285 = v155;
  sub_1C4EF97F8();
  v286 = 0;
  v156 = (v253 + 8);
  v288 = v117 + 32;
  v287 = v117 + 16;
  v283 = v117 + 8;
  v294 = MEMORY[0x1E69E7CC0];
  v157 = v254;
  while (1)
  {
    v133 = v109;
    sub_1C4EF97D8(&v297);
    if (!v298)
    {
      sub_1C4432088();

      sub_1C4420C3C(&v297, &qword_1EC0BCD10, &qword_1C4F0C8C0);
      goto LABEL_68;
    }

    sub_1C4461BB8(0, &qword_1EDDF0578, off_1E81EC5C8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v158 = v300;
    if ([v300 mechanism] == 16)
    {
      v159 = [v158 endDate];
      v160 = v278;
      sub_1C4EF9C78();

      sub_1C4EF9AD8();
      v162 = v161;
      v163 = *v156;
      (*v156)(v160, v111);
      v164 = [v158 startDate];
      sub_1C4EF9C78();

      sub_1C4EF9AD8();
      v166 = v165;
      v163(v113, v111);
      sub_1C43FFF1C();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v167 = v294;
      }

      else
      {
        sub_1C458A6E0();
        v167 = v201;
      }

      v169 = *(v167 + 2);
      v168 = *(v167 + 3);
      if (v169 >= v168 >> 1)
      {
        sub_1C43FCFE8(v168);
        sub_1C458A6E0();
        v167 = v202;
      }

      *(v167 + 2) = v169 + 1;
      v294 = v167;
      *&v167[8 * v169 + 32] = v162 - v166;
    }

    if (qword_1EC0B68C8 != -1)
    {
      sub_1C4412E50();
      swift_once();
    }

    v170 = qword_1EC151B50;
    v171 = [v158 mechanism];
    if (*(v170 + 16))
    {
      v172 = v171;
      sub_1C4F02AF8();
      MEMORY[0x1C69417F0](v172);
      sub_1C4F02B68();
      do
      {
        sub_1C44259C4();
        if ((v174 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      while (*(*(v170 + 48) + 8 * v173) != v172);
      v175 = [v158 sender];
      if (!v175)
      {
        goto LABEL_64;
      }

      v172 = v175;
      v176 = [v175 handle];
      sub_1C4F01138();

      v177 = String.normalizedContactHandle()();

      if (!v177.value._object)
      {

        goto LABEL_63;
      }

      sub_1C465C294(v177.value._countAndFlagsBits, v177.value._object, v289);

      if (sub_1C44157D4(v157, 1, v293) == 1)
      {

        sub_1C4420C3C(v157, &unk_1EC0BA0E0, &qword_1C4F105A0);
        goto LABEL_63;
      }

      sub_1C4402C08();
      v178 = sub_1C4404B44();
      v179(v178);
      v180 = sub_1C4418370();
      sub_1C44239FC(v180, 0);
      v181 = v301;
      swift_isUniquelyReferenced_nonNull_native();
      v297 = v181;
      sub_1C44E3664();
      if (!__OFADD__(*(v181 + 16), (v183 & 1) == 0))
      {
        v184 = v182;
        v185 = v183;
        sub_1C456902C(&qword_1EC0BAA10, &qword_1C4F16910);
        v186 = sub_1C4F02458();
        v187 = v297;
        if (v186)
        {
          sub_1C44E3664();
          if ((v185 & 1) != (v189 & 1))
          {
            goto LABEL_101;
          }

          v184 = v188;
        }

        v301 = v187;
        if ((v185 & 1) == 0)
        {
          sub_1C4402C08();
          v190 = v246;
          v191(v246, v264, v293);
          sub_1C457EB2C(v184, v190, MEMORY[0x1E69E7CC0], v187);
        }

        v192 = v158;
        MEMORY[0x1C6940330]();
        sub_1C4427EF0();
        sub_1C4F01748();

        sub_1C4402C08();
        v193(v264, v293);
        v286 = sub_1C455B584;
        v111 = v263;
        v113 = v262;
LABEL_63:
        v109 = v279;
LABEL_64:
        v194 = [v158 recipients];
        v195 = sub_1C4403FC0();
        sub_1C4461BB8(v195, &qword_1EDDF0360, off_1E81EC590);
        v196 = sub_1C4F01678();

        v197 = v158;
        v198 = v289;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v199 = v198;
        v200 = v292;
        sub_1C466F484(v196, v199, &v301, v197);
        v292 = v200;

        continue;
      }

      __break(1u);
LABEL_101:
      result = sub_1C4F029F8();
      __break(1u);
      return result;
    }

LABEL_54:
  }

  sub_1C4432088();

LABEL_68:
  v203 = *(v294 + 2);
  if (v203)
  {
    v204 = (v294 + 32);
    v205 = 0.0;
    v206 = *(v294 + 2);
    do
    {
      v207 = *v204++;
      v205 = v205 + v207;
      --v206;
    }

    while (v206);
  }

  else
  {
    v205 = 0.0;
  }

  v208 = v205 / v203;
  v109 = v301;
  v209 = v301 + 64;
  v210 = 1 << *(v301 + 32);
  v211 = -1;
  if (v210 < 64)
  {
    v211 = ~(-1 << v210);
  }

  v117 = v211 & *(v301 + 64);
  v212 = (v210 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v108 = 0;
  v289 = MEMORY[0x1E69E7CC0];
  v288 = v109;
  do
  {
    while (2)
    {
      if (v117)
      {
        goto LABEL_81;
      }

      do
      {
        v213 = v108 + 1;
        if (__OFADD__(v108, 1))
        {
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        if (v213 >= v212)
        {
          goto LABEL_92;
        }

        v117 = *(v209 + 8 * v213);
        ++v108;
      }

      while (!v117);
      v108 = v213;
LABEL_81:
      v214 = __clz(__rbit64(v117)) | (v108 << 6);
      v215 = v269;
      (*(v291 + 16))(v269, *(v109 + 48) + *(v291 + 72) * v214, v293);
      v216 = *(*(v109 + 56) + 8 * v214);
      *(v215 + *(v270 + 48)) = v216;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v217 = sub_1C4EFF048();
      v219 = v218;
      v220 = sub_1C465C650(v215, v284);
      v113 = sub_1C46712D0(v217, v219, v208, v216, v220, v221);

      sub_1C4420C3C(v215, &qword_1EC0BA9F8, &unk_1C4F168D0);
      v133 = *(v113 + 16);
      v109 = *(v289 + 16);
      v111 = v109 + v133;
      if (__OFADD__(v109, v133))
      {
        goto LABEL_94;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v223 = v289;
      if (!isUniquelyReferenced_nonNull_native || v111 > *(v289 + 24) >> 1)
      {
        sub_1C458B740();
        v223 = v224;
      }

      v117 &= v117 - 1;
      v225 = *(v113 + 16);
      v289 = v223;
      if (v225)
      {
        v226 = *(v223 + 16);
        if ((*(v223 + 24) >> 1) - v226 < v133)
        {
          goto LABEL_96;
        }

        v109 = v223 + 16 * v226;
        sub_1C456902C(&qword_1EC0B87E0, &qword_1C4F0DBD0);
        swift_arrayInitWithCopy();

        sub_1C441E288();
        if (v133)
        {
          v227 = *(v289 + 16);
          v147 = __OFADD__(v227, v133);
          v228 = v227 + v133;
          if (v147)
          {
            goto LABEL_98;
          }

          *(v289 + 16) = v228;
        }

        continue;
      }

      break;
    }

    sub_1C441E288();
  }

  while (!v133);
  __break(1u);
LABEL_92:

  v229 = v273[2];
  v230 = v273[3];
  v232 = v273[4];
  v231 = v273[5];
  v233 = v273[6];
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = v258;
  *(inited + 32) = v229;
  *(inited + 40) = v230;
  MEMORY[0x1EEE9AC00](inited);
  *(&v246 - 6) = v235;
  *(&v246 - 5) = v232;
  *(&v246 - 4) = v231;
  *(&v246 - 3) = v233;
  v244 = v289;
  swift_bridgeObjectRetain_n();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4418704(sub_1C4673BE8, (&v246 - 8), v236, v237, v238, v239, v240, v241, v246, v247);

  swift_setDeallocating();
  sub_1C44DEE40();

  v242 = sub_1C4418370();
  return sub_1C44239FC(v242, 0);
}