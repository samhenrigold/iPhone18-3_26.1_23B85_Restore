BOOL sub_1A39D6400(uint64_t a1)
{
  v3 = (v1 + *(a1 + 92));
  if (v3[2])
  {
    v4 = 0;
  }

  else
  {
    v6 = *v3;
    v5 = v3[1];
    sub_1A39D629C(a1);
    v8 = v7;
    sub_1A39D5EC8(a1);
    v4 = v8 >= v6 && v5 >= v8 && v9 >= v6 && v5 >= v9;
  }

  v13 = (v1 + *(a1 + 100));
  v14 = *v13;
  v15 = v13[1];
  LOBYTE(v13) = *(v13 + 16);
  v20 = v14;
  v21 = v15;
  v22 = v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
  MEMORY[0x1A58F7010](&v19, v16);
  return (v19 & 1) == 0 && !sub_1A39D4F90(a1) && v4;
}

uint64_t sub_1A39D64E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = (v2 + *(v8 + 136));
  v10 = *v9;
  v11 = *(v9 + 1);
  v13[16] = v10;
  v14 = v11;
  v13[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A3A30FA0();
  (*(v5 + 16))(v7, a1, v4);
  sub_1A3A311E0();
  return sub_1A3A311A0();
}

void *sub_1A39D661C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, __int128 a11, uint64_t a12, uint64_t a13)
{
  v37 = a7;
  v38 = a8;
  v39 = a11;
  v40 = a12;
  v41 = a13;
  result = type metadata accessor for ModeWheel(0, &v37);
  v21 = result;
  if ((*(a2 + *(result + 23) + 16) & 1) != 0 || (v23 = (a2 + *(result + 39)), v24 = *v23, v25 = v23[1], v26 = *(v23 + 1), LOBYTE(v37) = v24, BYTE1(v37) = v25, v38 = v26, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1008B0, &qword_1A3A81828), result = sub_1A3A30F90(), v36 != 1) || v35)
  {
    if (a4)
    {
      v33 = a6;
      v22 = 0;
      goto LABEL_8;
    }

LABEL_12:
    *(a9 + 32) = 0u;
    *(a9 + 48) = 0u;
    *a9 = 0u;
    *(a9 + 16) = 0u;
    goto LABEL_13;
  }

  v33 = a6;
  v32 = a1;
  sub_1A3A31A40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1006E0, &unk_1A3A80F20);
  swift_getWitnessTable();
  sub_1A38A08F8(&qword_1ED998FB8, &qword_1EB1006E0, &unk_1A3A80F20, MEMORY[0x1E69E5FB8]);
  sub_1A3A31780();
  v27 = sub_1A3A31E70();
  WitnessTable = swift_getWitnessTable();
  v22 = sub_1A3907BFC(a3, v27, WitnessTable, *(*(&a11 + 1) + 8));
  result = swift_unknownObjectRelease();
  if ((a4 & 1) == 0)
  {
    if (v22)
    {
      *(a9 + 32) = 0u;
      *(a9 + 48) = 0u;
      *a9 = 0u;
      *(a9 + 16) = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1008C8, &unk_1A3A81880);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1A3A681C0;
      *(v31 + 32) = v32;
      *(a9 + 64) = v31;
      return sub_1A3A2EA60();
    }

    goto LABEL_12;
  }

  a1 = v32;
LABEL_8:
  sub_1A3A32110();
  v29 = sub_1A39D31D8(a3, v21);
  v30 = sub_1A39D31D8(a3, v21);
  result = sub_1A3A31A10();
  if (!__OFSUB__(result, 1))
  {
    v41 = a1;
    v42 = v22 & 1;
    v43 = v29 == 0;
    v44 = v30 == (result - 1);
    v45 = a5 & 1;
    v46 = v33 & 1;
    v47 = a10;
    sub_1A39DD354(&v37, a9);
    sub_1A3A2EA60();
    result = sub_1A39DD38C(&v37);
LABEL_13:
    *(a9 + 64) = MEMORY[0x1E69E7CC0];
    return result;
  }

  __break(1u);
  return result;
}

void sub_1A39D6968(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v4 = v3;
  if (*a2 == 1)
  {
    if (qword_1ED996480 != -1)
    {
      swift_once();
    }

    v6 = off_1ED997FE0;
    swift_getKeyPath(aX_22);
    v21 = v6;
    sub_1A39DA768(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
    sub_1A3A2F080();

    v7 = v6[2];
    swift_getKeyPath(aX_23);
    v21 = v7;
    sub_1A39DA768(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
    sub_1A3A2EA60();
    sub_1A3A2F080();

    v8 = *(v7 + 48);

    v9 = 0.0;
    if (v8 >= 2)
    {
      if (v8 == 2)
      {
        swift_getKeyPath(aX_22);
        v21 = v6;
        sub_1A3A2F080();

        sub_1A3A2EA60();
        v9 = sub_1A39529E4();

        v10 = 1;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 1;
    }

    v18 = v4 + *(a3 + 172);
    v21 = *v18;
    v22 = *(v18 + 8);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB0, &unk_1A3A6F650);
    MEMORY[0x1A58F7010](&v20, v19);
    v17 = v10;
    v16 = v9;
    goto LABEL_15;
  }

  if (*a1 == 1)
  {
    if (qword_1ED996480 != -1)
    {
      swift_once();
    }

    v11 = off_1ED997FE0;
    swift_getKeyPath(aX_22);
    v21 = v11;
    sub_1A39DA768(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
    sub_1A3A2F080();

    v12 = v11[2];
    swift_getKeyPath(aX_23);
    v21 = v12;
    sub_1A39DA768(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
    sub_1A3A2EA60();
    sub_1A3A2F080();

    v13 = *(v12 + 48);

    if ((v13 - 1) <= 1)
    {
      v14 = v4 + *(a3 + 172);
      v21 = *v14;
      v22 = *(v14 + 8);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB0, &unk_1A3A6F650);
      MEMORY[0x1A58F7010](&v20, v15);
      v16 = *(v4 + *(a3 + 124));
      v17 = 0;
LABEL_15:
      sub_1A38E01D4(v17, v16);
    }
  }
}

void sub_1A39D6D48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  if ((*v7 & 1) == 0)
  {
    v11 = (v2 + *(a2 + 128));
    v13 = *v11;
    v12 = v11[1];
    v29 = v13;
    v30 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBF0, &qword_1A3A6F6E0);
    sub_1A3A30F90();
    if (*(v32 + 16))
    {
      sub_1A3A2EA60();
      sub_1A3A316C0();
    }

    *(v32 + 16) = 0;

    v14 = v2 + *(a2 + 100);
    v15 = *v14;
    v16 = *(v14 + 8);
    LOBYTE(v14) = *(v14 + 16);
    v29 = v15;
    v30 = v16;
    v31 = v14;
    LOBYTE(v32) = 0;
    goto LABEL_7;
  }

  if (v7[1] == 1)
  {
    v8 = v2 + *(a2 + 100);
    v9 = *v8;
    v10 = *(v8 + 8);
    LOBYTE(v8) = *(v8 + 16);
    v29 = v9;
    v30 = v10;
    v31 = v8;
    LOBYTE(v32) = 1;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
    sub_1A3A311A0();
    return;
  }

  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v17 = off_1ED997FE0;
  swift_getKeyPath(aX_22);
  v18 = OBJC_IVAR____TtC8CameraUIP33_AD1680641DDDA8199D384A5228EC6D4815SettingsManager___observationRegistrar;
  v29 = v17;
  v28[0] = sub_1A39DA768(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  v28[1] = v18;
  sub_1A3A2F080();

  v19 = v17[2];
  swift_getKeyPath(byte_1A3A81800, v28[0], v18, v17);
  v29 = v19;
  sub_1A39DA768(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  LOBYTE(v18) = sub_1A394FC58(17);

  if (v18)
  {
    v20 = v3 + *(a2 + 100);
    v21 = *v20;
    v22 = *(v20 + 8);
    LOBYTE(v20) = *(v20 + 16);
    v29 = v21;
    v30 = v22;
    v31 = v20;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
    MEMORY[0x1A58F7010](&v32, v23);
    if ((v32 & 1) == 0)
    {
      v30 = *(v3 + *(a2 + 128) + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBF0, &qword_1A3A6F6E0);
      sub_1A3A30F90();
      swift_getKeyPath(aX_22);
      v29 = v17;
      sub_1A3A2F080();

      sub_1A3A2EA60();
      v24 = sub_1A39529E4();

      (*(v5 + 16))(v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
      v25 = (*(v5 + 80) + 64) & ~*(v5 + 80);
      v26 = swift_allocObject();
      v27 = *(a2 + 32);
      *(v26 + 1) = *(a2 + 16);
      *(v26 + 2) = v27;
      *(v26 + 3) = *(a2 + 48);
      (*(v5 + 32))(&v26[v25], v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
      sub_1A3904E64(sub_1A39DCE20, v26, v24);
    }
  }
}

uint64_t sub_1A39D7188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v7 = a1 + *(type metadata accessor for ModeWheel(0, &v11) + 100);
  v8 = *v7;
  v9 = *(v7 + 8);
  LOBYTE(v7) = *(v7 + 16);
  v11 = v8;
  v12 = v9;
  LOBYTE(v13) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
  return sub_1A3A311A0();
}

void sub_1A39D720C(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12[0] = a4;
  v12[1] = a5;
  v12[2] = a6;
  v12[3] = a7;
  v12[4] = a8;
  v12[5] = a9;
  v11 = type metadata accessor for ModeWheel(0, v12);
  sub_1A39D6968(a2, a3, v11);
  sub_1A39D6D48(a3, v11);
}

uint64_t sub_1A39D7290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v7 = (a1 + *(type metadata accessor for ModeWheel(0, &v11) + 132));
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v11) = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  return sub_1A3A30FA0();
}

void sub_1A39D7310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (*(a2 + 1) != 1)
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  v6 = sub_1A3A30F90();
  if ((v12 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v6);
    sub_1A3A314E0();
    sub_1A3A2F8A0();
  }

  v7 = *(v3 + *(a3 + 184));
  sub_1A3A2EA60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0, &qword_1A3A6C6C0);
  sub_1A3A30F90();
  sub_1A3A30FA0();

  sub_1A3A30F90();
  if (v7 >= -sub_1A39D40D8(a3))
  {
    sub_1A3A30F90();
    if (sub_1A39D40D8(a3) >= v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD720, &unk_1A3A6ED80);
      sub_1A3A30F90();
      v11 = *&v7;
LABEL_18:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD720, &unk_1A3A6ED80);
      sub_1A3A30F90();
      if (v11 != *&v7)
      {
        sub_1A3A30FA0();
        sub_1A3A30FA0();
        sub_1A3A30FA0();
      }

      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD720, &unk_1A3A6ED80);
    sub_1A3A30F90();
    v8 = *&v7 - 1;
    if (!__OFSUB__(*&v7, 1))
    {
      v10 = sub_1A3A31A10();
      v9 = v10 - 1;
      if (!__OFSUB__(v10, 1))
      {
LABEL_14:
        if (v9 >= v8)
        {
          v9 = v8;
        }

        v11 = v9 & ~(v9 >> 63);
        goto LABEL_18;
      }

LABEL_23:
      __break(1u);
      return;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD720, &unk_1A3A6ED80);
  sub_1A3A30F90();
  v8 = *&v7 + 1;
  if (__OFADD__(*&v7, 1))
  {
    __break(1u);
    goto LABEL_22;
  }

  a1 = sub_1A3A31A10();
  v9 = a1 - 1;
  if (!__OFSUB__(a1, 1))
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_9:
  if (*(v5 + 1) == 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1A3A314E0();
    sub_1A3A2F8A0();
  }
}

void sub_1A39D7714(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    if (a2[1] == 1)
    {
      sub_1A39D629C(a3);
      sub_1A39D40D8(a3);
      if (__OFSUB__(sub_1A3A31A10(), 1))
      {
        __break(1u);
      }

      else
      {
        sub_1A39D40D8(a3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0, &qword_1A3A6C6C0);
        sub_1A3A30FA0();
        sub_1A39D5EC8(a3);
        v5 = v4;
        sub_1A39D629C(a3);
        if (v5 != v6)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
          sub_1A3A30FA0();
        }
      }
    }
  }

  else if (*a1 == 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1A3A314E0();
    sub_1A3A2F8A0();
  }
}

uint64_t sub_1A39D7954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v13 = a2;
  *(&v13 + 1) = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v8 = type metadata accessor for ModeWheel(0, &v13);
  v9 = (a1 + *(v8 + 176));
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v13) = v10;
  *(&v13 + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A3A30FA0();
  sub_1A39D629C(v8);
  v13 = *(a1 + *(v8 + 180));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD720, &unk_1A3A6ED80);
  return sub_1A3A30FA0();
}

void sub_1A39D7A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  *&v56 = v11;
  *(&v56 + 1) = v12;
  v57 = v13;
  v58 = v14;
  v15 = v14;
  v59 = v16;
  v60 = v17;
  v18 = type metadata accessor for ModeWheel(0, &v56);
  v19 = (a1 + *(v18 + 168));
  v20 = *v19;
  v21 = *(v19 + 1);
  v52 = v20;
  LOBYTE(v56) = v20;
  v53 = v21;
  *(&v56 + 1) = v21;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A3A30F90();
  if (v61)
  {
    goto LABEL_5;
  }

  v22 = 0;
  if (fabs(*(a2 + 16)) != fabs(*(a2 + 24)))
  {
    v23 = sub_1A3A305F0();
    if (v23 == sub_1A3A305F0())
    {
      v22 = *(a2 + 2);
      goto LABEL_6;
    }

LABEL_5:
    v22 = 0;
  }

LABEL_6:
  v47 = v22;
  v46 = a2;
  sub_1A39D5EC8(v18);
  v48 = v24;
  sub_1A39D5EC8(v18);
  v51 = *(v18 + 16);
  sub_1A3A31A50();
  v25 = *(v18 + 96);
  v26 = sub_1A3A311E0();
  v49 = v25;
  MEMORY[0x1A58F7010]();
  v50 = *(v15 + 8);
  LOBYTE(v25) = sub_1A3A31790();
  v28 = v55 + 8;
  v27 = *(v55 + 8);
  v27(v7, a3);
  v55 = v28;
  v27(v10, a3);
  if ((v25 & 1) != 0 && v47)
  {
    v29 = 16;
    if (*(a1 + *(v18 + 76)))
    {
      v29 = 24;
    }

    v30 = *(v46 + v29);
    if (v30 <= 100.0)
    {
      v35 = v48;
      if (v30 >= -100.0)
      {
        goto LABEL_22;
      }

      sub_1A39D5EC8(v18);
      v32 = v36 + 1;
      if (!__OFADD__(v36, 1))
      {
        v37 = sub_1A3A31A10();
        v34 = v37 - 1;
        if (!__OFSUB__(v37, 1))
        {
LABEL_19:
          if (v34 >= v32)
          {
            v34 = v32;
          }

          v35 = v34 & ~(v34 >> 63);
          goto LABEL_22;
        }

LABEL_27:
        __break(1u);
        return;
      }
    }

    else
    {
      sub_1A39D5EC8(v18);
      v32 = v31 - 1;
      if (!__OFSUB__(v31, 1))
      {
        v33 = sub_1A3A31A10();
        v34 = v33 - 1;
        if (!__OFSUB__(v33, 1))
        {
          goto LABEL_19;
        }

        __break(1u);
        goto LABEL_15;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_15:
  v35 = v48;
LABEL_22:
  v56 = *(a1 + *(v18 + 180));
  v61 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD720, &unk_1A3A6ED80);
  sub_1A3A30FA0();
  MEMORY[0x1A58F7010](v26);
  sub_1A39D5EC8(v18);
  sub_1A3A31A50();
  v38 = sub_1A3A31790();
  v27(v7, a3);
  v27(v10, a3);
  if ((v38 & 1) == 0)
  {
    sub_1A39D5EC8(v18);
    sub_1A3A31A50();
    sub_1A39D64E4(v10, v18);
    v27(v10, a3);
  }

  v39 = (a1 + *(v18 + 184));
  v40 = *v39;
  v41 = v39[1];
  *&v56 = v40;
  *(&v56 + 1) = v41;
  v61 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0, &qword_1A3A6C6C0);
  sub_1A3A30FA0();
  LOBYTE(v56) = v52;
  *(&v56 + 1) = v53;
  LOBYTE(v61) = 0;
  sub_1A3A30FA0();
  v42 = (a1 + *(v18 + 176));
  v43 = *v42;
  v44 = *(v42 + 1);
  LOBYTE(v56) = v43;
  *(&v56 + 1) = v44;
  LOBYTE(v61) = 0;
  sub_1A3A30FA0();
}

uint64_t sub_1A39D7ED4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v7;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  v13 = type metadata accessor for ModeWheel(0, &v23);
  v14 = (a1 + *(v13 + 168));
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v23) = v15;
  v24 = v16;
  LOBYTE(v22) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A3A30FA0();
  sub_1A39D5EC8(v13);
  sub_1A3A31A50();
  sub_1A39D64E4(v6, v13);
  (*(v4 + 8))(v6, a2);
  v17 = (a1 + *(v13 + 188));
  v18 = *v17;
  v19 = v17[1];
  v23 = v18;
  v24 = v19;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0, &qword_1A3A6C6C0);
  return sub_1A3A30FA0();
}

void sub_1A39D8070(int *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA48, &qword_1A3A78090);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = sub_1A39D8694(a1);
  sub_1A39D5EC8(a1);
  v13 = v12;
  if (v11)
  {
    sub_1A39D5EC8(a1);
    v15 = v1 + a1[23];
    v16 = 0.0;
    if ((*(v15 + 16) & 1) == 0)
    {
      v17 = *v15;
      v18 = *(v15 + 8);
      if (v17 <= v14 && v18 >= v14)
      {
        v20 = __OFADD__(v17, v18);
        v21 = v17 + v18;
        if (v20)
        {
LABEL_21:
          __break(1u);
          return;
        }

        v16 = vcvtd_n_f64_s64(v21, 1uLL) - v14;
      }
    }

    v13 = v16 + v13;
  }

  v22 = (v1 + a1[46]);
  v23 = *v22;
  v24 = v22[1];
  v44 = v23;
  v45 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0, &qword_1A3A6C6C0);
  sub_1A3A30F90();
  v25 = -v43;
  v26 = v25 / sub_1A39D40D8(a1);
  sub_1A39D5EC8(a1);
  if (!v27 && v26 < 0.0)
  {
    goto LABEL_15;
  }

  sub_1A39D5EC8(a1);
  v29 = v28;
  v30 = sub_1A3A31A10();
  if (__OFSUB__(v30, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v29 == v30 - 1 && v26 > 0.0)
  {
LABEL_15:
    CEKClamp();
    v26 = v31;
  }

  v32 = v13 + v26;
  if (v13 == v32 && (v33 = (v2 + a1[42]), v34 = *v33, v35 = *(v33 + 1), LOBYTE(v44) = v34, v45 = v35, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090), sub_1A3A30F90(), LOBYTE(v43) != 1))
  {
    sub_1A3A310D0();
    *&v10[*(v4 + 44)] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA40, &unk_1A3A6F290);
    v40 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1A3A681C0;
    sub_1A39CF810(v10, v41 + v40);
  }

  else
  {
    sub_1A3A310D0();
    *&v10[*(v4 + 44)] = v13;
    sub_1A3A310D0();
    *&v7[*(v4 + 44)] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA40, &unk_1A3A6F290);
    v36 = *(v5 + 72);
    v37 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1A3A70140;
    v39 = v38 + v37;
    sub_1A388F6D8(v10, v39, &qword_1EB0FDA48, &qword_1A3A78090);
    sub_1A39CF810(v7, v39 + v36);
    sub_1A388F740(v10, &qword_1EB0FDA48, &qword_1A3A78090);
  }
}

void sub_1A39D8450(int *a1)
{
  v3 = 0.0;
  if (!sub_1A39D8694(a1))
  {
    goto LABEL_9;
  }

  sub_1A39D5EC8(a1);
  v5 = v1 + a1[23];
  if (*(v5 + 16))
  {
    goto LABEL_9;
  }

  v6 = *v5;
  v7 = *(v5 + 8);
  if (v6 > v4 || v7 < v4)
  {
    goto LABEL_9;
  }

  v9 = __OFADD__(v6, v7);
  v10 = v6 + v7;
  if (!v9)
  {
    v3 = vcvtd_n_f64_s64(v10, 1uLL) - v4;
LABEL_9:
    sub_1A39D5EC8(a1);
    v12 = v3 + v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA40, &unk_1A3A6F290);
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA48, &qword_1A3A78090) - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1A3A681C0;
    sub_1A39D891C(v15 + v14, v12);
    return;
  }

  __break(1u);
}

void sub_1A39D8588(int *a1)
{
  if (sub_1A39D8694(a1))
  {
    v2 = 0;
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA40, &unk_1A3A6F290);
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA48, &qword_1A3A78090) - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A3A681C0;
    sub_1A39D891C(v8 + v7, v2);
    return;
  }

  sub_1A39D5EC8(a1);
  v4 = v3;
  sub_1A39D629C(a1);
  v2 = v4 - v5;
  if (!__OFSUB__(v4, v5))
  {
    goto LABEL_4;
  }

  __break(1u);
}

BOOL sub_1A39D8694(int *a1)
{
  v2 = v1;
  result = 0;
  if ((sub_1A39D4A20() & 1) == 0 || (v4 = (v1 + a1[42]), v5 = *v4, v6 = *(v4 + 1), LOBYTE(v24) = v5, *&v25 = v6, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090), sub_1A3A30F90(), (v23[0] & 1) == 0))
  {
    if (sub_1A39D4A20())
    {
      return 1;
    }

    v7 = (v1 + a1[43]);
    v24 = *v7;
    v25 = *(v7 + 1);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB0, &unk_1A3A6F650);
    v9 = MEMORY[0x1A58F7010](v23, v8);
    v10 = v23[0];
    *&v11 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
    v12 = MEMORY[0x1E69E6370];
    v13 = MEMORY[0x1E69E6388];
    swift_getKeyPath(byte_1A3A81780, v11, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
    v24 = v10;
    sub_1A38A08F8(&qword_1ED996E70, &qword_1EB0FDA08, &unk_1A3A6F500, &unk_1A3A6BA14);
    sub_1A3A2F080();

    swift_beginAccess();
    v14 = *(v10 + 18);

    if (v14 != 1)
    {
      return 1;
    }

    v15 = (v2 + a1[35]);
    v17 = *v15;
    v16 = v15[1];
    v23[0] = v17;
    v23[1] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE910, &qword_1A3A75398);
    v18 = sub_1A3A30F90();
    v19 = v23[3];
    *&v20 = MEMORY[0x1EEE9AC00](v18).n128_u64[0];
    swift_getKeyPath(byte_1A3A81780, v20, v12, v13);
    v23[0] = v19;
    sub_1A3A2F080();

    swift_beginAccess();
    v21 = *(v19 + 18);

    if ((v21 & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1A39D891C@<X0>(uint64_t a2@<X8>, double a3@<D0>)
{
  sub_1A3A310D0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA48, &qword_1A3A78090);
  *(a2 + *(result + 44)) = a3;
  return result;
}

uint64_t sub_1A39D89A8@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = type metadata accessor for ModeWheelGesture(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = v4;
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1A3A30220();
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A3A2F630();
  v38 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD748, &qword_1A3A818F0);
  v39 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v24 - v10;
  v40 = 0x77656956746F6F52;
  v41 = 0xE800000000000000;
  sub_1A3A30350();
  sub_1A3A2F5C0();
  v27 = v1;
  sub_1A39DD4CC(v1, v5, type metadata accessor for ModeWheelGesture);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_1A39DD534(v5, v13 + v12);
  v33 = sub_1A39DA768(&qword_1ED996CD0, MEMORY[0x1E697BEA8], MEMORY[0x1E697BEA0]);
  v32 = sub_1A39DA768(&qword_1ED996CD8, MEMORY[0x1E697BE90], MEMORY[0x1E697BE98]);
  v28 = v7;
  sub_1A3A31250();

  v14 = *(v38 + 8);
  v38 += 8;
  v31 = v14;
  v14(v9, v7);
  v25 = type metadata accessor for ModeWheelGesture;
  sub_1A39DD4CC(v1, v5, type metadata accessor for ModeWheelGesture);
  v15 = swift_allocObject();
  sub_1A39DD534(v5, v15 + v12);
  v30 = sub_1A38A08F8(&qword_1ED996CE0, &qword_1EB0FD748, &qword_1A3A818F0, MEMORY[0x1E697E8D0]);
  v16 = v36;
  sub_1A3A31240();

  v17 = *(v39 + 8);
  v39 += 8;
  v29 = v17;
  v17(v11, v16);
  v40 = 0x77656956746F6F52;
  v41 = 0xE800000000000000;
  sub_1A3A30350();
  sub_1A3A2F5C0();
  v18 = v27;
  sub_1A39DD4CC(v27, v5, type metadata accessor for ModeWheelGesture);
  v19 = swift_allocObject();
  sub_1A39DD534(v5, v19 + v12);
  v20 = v28;
  sub_1A3A31250();

  v31(v9, v20);
  sub_1A39DD4CC(v18, v5, v25);
  v21 = swift_allocObject();
  sub_1A39DD534(v5, v21 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1008E0, &unk_1A3A818F8);
  v22 = v36;
  sub_1A3A31240();

  return v29(v11, v22);
}

uint64_t sub_1A39D8F90(uint64_t a1, double *a2)
{
  v4 = type metadata accessor for ModeWheelGestureState(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 24);
  type metadata accessor for ModeWheelGesture(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00, &unk_1A3A6F250);
  MEMORY[0x1A58F7010]();
  sub_1A39D9084(a1, v5, v8, v6, v7);
  return sub_1A3A311A0();
}

uint64_t sub_1A39D9084(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  v85 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1007A8, &qword_1A3A813B8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v87 = &v80 - v10;
  v11 = sub_1A3A2F620();
  v88 = *(v11 - 8);
  v89 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A3A2ECE0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v80 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v80 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v93 = &v80 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF428, &qword_1A3A784B0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v83 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v80 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v80 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v80 - v31;
  sub_1A3A2F5D0();
  v35 = v33;
  v36 = v34;
  v96 = a2;
  if (a2)
  {
    v37 = v34;
  }

  else
  {
    v37 = v33;
  }

  v38 = type metadata accessor for ModeWheelGestureState(0);
  v39 = *(v38 + 36);
  v94 = v38;
  v95 = v39;
  v40 = v92;
  sub_1A388F6D8(v92 + v39, v32, &qword_1EB0FF428, &qword_1A3A784B0);
  v41 = *(v14 + 48);
  v90 = v14 + 48;
  v91 = v41;
  v42 = v41(v32, 1, v13);
  result = sub_1A388F740(v32, &qword_1EB0FF428, &qword_1A3A784B0);
  if (v42 == 1)
  {
    sub_1A3A2F600();
    (*(v14 + 56))(v29, 0, 1, v13);
    result = sub_1A39DD8C0(v29, v40 + v95, &qword_1EB0FF428, &qword_1A3A784B0);
  }

  v44 = v93;
  if ((*(v40 + 1) & 1) == 0)
  {
    if (qword_1EB0FC220 != -1)
    {
      result = swift_once();
    }

    v45 = fabs(v37);
    if (v96)
    {
      if (v45 < 10.0)
      {
        return result;
      }
    }

    else if (v45 < 15.0)
    {
      return result;
    }
  }

  *(v40 + 1) = 1;
  if ((*(v40 + 2) & 1) == 0)
  {
    if (qword_1EB0FC220 != -1)
    {
      swift_once();
    }

    v46 = fabs(v37);
    if (v96)
    {
      if (v46 < 15.0)
      {
        goto LABEL_21;
      }
    }

    else if (v46 < 25.0)
    {
      goto LABEL_21;
    }

    *(v40 + 2) = 1;
  }

LABEL_21:
  sub_1A3A2F600();
  sub_1A388F6D8(v40 + v95, v26, &qword_1EB0FF428, &qword_1A3A784B0);
  result = v91(v26, 1, v13);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_49;
  }

  sub_1A3A2EC70();
  v48 = v47;
  v49 = *(v14 + 8);
  v49(v44, v13);
  v49(v26, v13);
  if (qword_1EB0FC228 != -1)
  {
    swift_once();
  }

  v51 = v88;
  v50 = v89;
  v52 = v94;
  v53 = v87;
  if ((v96 & 1) == 0)
  {
    a5 = a4;
    if (v48 <= 0.13)
    {
      if (qword_1EB0FC220 != -1)
      {
        swift_once();
      }

      CEKClamp();
      v37 = v55;
      goto LABEL_36;
    }
  }

  sub_1A388F6D8(v40 + *(v94 + 40), v87, &qword_1EB1007A8, &qword_1A3A813B8);
  if ((*(v51 + 48))(v53, 1, v50) != 1)
  {
    v54 = v86;
    (*(v51 + 32))(v86, v53, v50);
    if (v96)
    {
      (*(v51 + 8))(v54, v50);
      v37 = v36;
LABEL_35:
      v52 = v94;
      goto LABEL_36;
    }

    if (a5 == 0.0)
    {
      (*(v51 + 8))(v86, v50);
      v37 = v35;
      goto LABEL_35;
    }

    sub_1A3A2F5D0();
    v65 = v64;
    v66 = v81;
    sub_1A3A2F600();
    v67 = v82;
    sub_1A3A2F600();
    sub_1A3A2EC70();
    v69 = v68;
    v49(v67, v13);
    v49(v66, v13);
    v70 = v84;
    sub_1A3A2F600();
    v71 = v83;
    sub_1A388F6D8(v40 + v95, v83, &qword_1EB0FF428, &qword_1A3A784B0);
    result = v91(v71, 1, v13);
    if (result != 1)
    {
      v72 = v35 - v65;
      sub_1A3A2EC70();
      v74 = v73;
      v49(v70, v13);
      v49(v71, v13);
      v75 = 1.0;
      if (v74 < 0.13)
      {
        CEKProgressClamped();
        v75 = 1.0 - v76;
      }

      sub_1A3A2F610();
      CEKProgressClamped();
      v52 = v94;
      v78 = 1.0;
      if ((COERCE_UNSIGNED_INT64(v77 + v77 + -1.0) & 0x8000000000000000) != 0)
      {
        if ((*&v72 & 0x8000000000000000) == 0)
        {
LABEL_47:
          (*(v51 + 8))(v86, v50);
          v37 = v72 * v75 * v78 + *(v40 + 8);
          goto LABEL_36;
        }
      }

      else if ((*&v72 & 0x8000000000000000) != 0)
      {
        goto LABEL_47;
      }

      if (v69 < 0.0183333333)
      {
        CEKProgressClamped();
        v78 = pow(v79, 1.5) * 1.5 + 1.0;
      }

      goto LABEL_47;
    }

LABEL_49:
    __break(1u);
    return result;
  }

  sub_1A388F740(v53, &qword_1EB1007A8, &qword_1A3A813B8);
LABEL_36:
  *(v40 + 8) = v37;
  sub_1A3A2F5F0();
  v57 = v56;
  v59 = v58;
  sub_1A3A2F610();
  v61 = (v57 - v60) * 4.0;
  sub_1A3A2F610();
  *(v40 + 16) = v61;
  *(v40 + 24) = (v59 - v62) * 4.0;
  v63 = *(v52 + 40);
  sub_1A388F740(v40 + v63, &qword_1EB1007A8, &qword_1A3A813B8);
  (*(v51 + 16))(v40 + v63, a1, v50);
  return (*(v51 + 56))(v40 + v63, 0, 1, v50);
}

uint64_t sub_1A39D999C()
{
  v0 = type metadata accessor for ModeWheelGestureState(0);
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModeWheelGesture(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00, &unk_1A3A6F250);
  MEMORY[0x1A58F7010]();
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 1) = 0;
  v4 = *(v1 + 44);
  sub_1A388F740(&v3[v4], &qword_1EB0FF428, &qword_1A3A784B0);
  v5 = sub_1A3A2ECE0();
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  v6 = *(v1 + 48);
  sub_1A388F740(&v3[v6], &qword_1EB1007A8, &qword_1A3A813B8);
  v7 = sub_1A3A2F620();
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  return sub_1A3A311A0();
}

uint64_t sub_1A39D9B1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for ModeWheelGestureState(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModeWheelGesture(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00, &unk_1A3A6F250);
  MEMORY[0x1A58F7010]();
  *v6 = a3;
  return sub_1A3A311A0();
}

uint64_t sub_1A39D9BE4()
{
  v0 = type metadata accessor for ModeWheelGestureState(0);
  __swift_allocate_value_buffer(v0, qword_1EB101B38);
  v1 = __swift_project_value_buffer(v0, qword_1EB101B38);
  v2 = *(v0 + 36);
  v3 = sub_1A3A2ECE0();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = *(v0 + 40);
  v5 = sub_1A3A2F620();
  result = (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *v1 = 0;
  *(v1 + 2) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 8) = 0;
  return result;
}

void sub_1A39D9D14(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_1A39D9E2C(319, &qword_1EB0FFB78, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A39D9E2C(319, &qword_1EB1007C0, MEMORY[0x1E697BE90], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A39D9E2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A39D9E94(CGFloat *a2@<X8>)
{
  type metadata accessor for CGRect(0);
  sub_1A3A2F820();
  *a2 = CGRectGetWidth(v3);
}

double sub_1A39D9EFC()
{
  result = 0.0;
  xmmword_1ED99D8D0 = 0u;
  unk_1ED99D8E0 = 0u;
  xmmword_1ED99D8B0 = 0u;
  unk_1ED99D8C0 = 0u;
  qword_1ED99D8F0 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1A39D9F20@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EB0FC218 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1A38DE880(&xmmword_1ED99D8B0, v2);
}

void sub_1A39D9F94(CGFloat *a1@<X8>)
{
  v2 = sub_1A3A30210();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3A30340();
  sub_1A3A2F810();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v15.origin.x = v7;
  v15.origin.y = v9;
  v15.size.width = v11;
  v15.size.height = v13;
  *a1 = CGRectGetWidth(v15);
}

BOOL sub_1A39DA0B0(double *a1, double *a2)
{
  v4 = sub_1A3A2F620();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1007A8, &qword_1A3A813B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1007C8, &qword_1A3A81400);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = sub_1A3A2ECE0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF428, &qword_1A3A784B0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1007D0, &qword_1A3A81408);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  if (__PAIR64__(*(a1 + 1), *a1) != __PAIR64__(*(a2 + 1), *a2) || *(a1 + 2) != *(a2 + 2) || a1[1] != a2[1])
  {
    return 0;
  }

  result = 0;
  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    v39 = type metadata accessor for ModeWheelGestureState(0);
    v41 = *(v39 + 36);
    v22 = *(v18 + 48);
    sub_1A388F6D8(a1 + v41, v20, &qword_1EB0FF428, &qword_1A3A784B0);
    v23 = a2 + v41;
    v41 = v22;
    sub_1A388F6D8(v23, &v20[v22], &qword_1EB0FF428, &qword_1A3A784B0);
    v40 = *(v12 + 48);
    if (v40(v20, 1, v11) == 1)
    {
      if (v40(&v20[v41], 1, v11) == 1)
      {
        sub_1A388F740(v20, &qword_1EB0FF428, &qword_1A3A784B0);
LABEL_13:
        v28 = *(v39 + 40);
        v29 = *(v8 + 48);
        sub_1A388F6D8(a1 + v28, v10, &qword_1EB1007A8, &qword_1A3A813B8);
        sub_1A388F6D8(a2 + v28, &v10[v29], &qword_1EB1007A8, &qword_1A3A813B8);
        v31 = v44;
        v30 = v45;
        v32 = *(v44 + 48);
        if (v32(v10, 1, v45) == 1)
        {
          if (v32(&v10[v29], 1, v30) == 1)
          {
            sub_1A388F740(v10, &qword_1EB1007A8, &qword_1A3A813B8);
            return 1;
          }
        }

        else
        {
          v33 = v43;
          sub_1A388F6D8(v10, v43, &qword_1EB1007A8, &qword_1A3A813B8);
          if (v32(&v10[v29], 1, v30) != 1)
          {
            v34 = &v10[v29];
            v35 = v42;
            (*(v31 + 32))(v42, v34, v30);
            sub_1A39DA768(&qword_1ED996CD8, MEMORY[0x1E697BE90], MEMORY[0x1E697BE98]);
            v36 = sub_1A3A31790();
            v37 = *(v31 + 8);
            v37(v35, v30);
            v37(v33, v30);
            sub_1A388F740(v10, &qword_1EB1007A8, &qword_1A3A813B8);
            return (v36 & 1) != 0;
          }

          (*(v31 + 8))(v33, v30);
        }

        v24 = &qword_1EB1007C8;
        v25 = &qword_1A3A81400;
        v26 = v10;
        goto LABEL_19;
      }
    }

    else
    {
      sub_1A388F6D8(v20, v17, &qword_1EB0FF428, &qword_1A3A784B0);
      if (v40(&v20[v41], 1, v11) != 1)
      {
        (*(v12 + 32))(v14, &v20[v41], v11);
        sub_1A39DA768(&qword_1EB1007D8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
        LODWORD(v41) = sub_1A3A31790();
        v27 = *(v12 + 8);
        v27(v14, v11);
        v27(v17, v11);
        sub_1A388F740(v20, &qword_1EB0FF428, &qword_1A3A784B0);
        if ((v41 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_13;
      }

      (*(v12 + 8))(v17, v11);
    }

    v24 = &qword_1EB1007D0;
    v25 = &qword_1A3A81408;
    v26 = v20;
LABEL_19:
    sub_1A388F740(v26, v24, v25);
    return 0;
  }

  return result;
}

uint64_t sub_1A39DA768(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_s11AnyHashableVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8CameraUI14ModeLoupeStateVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A39DA7E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A39DA828(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A39DA89C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1A39DA8E4(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1A39DA954(uint64_t a1, void (*a2)(void *__return_ptr))
{
  a2(v9);
  sub_1A388F6D8(v9, v5, &qword_1EB0FDA10, &qword_1A3A6F260);
  if (*(&v6 + 1))
  {
    v8[0] = v5[0];
    v8[1] = v5[1];
    v8[2] = v6;
    v8[3] = v7;
  }

  else
  {
    sub_1A388F6D8(a1, v8, &qword_1EB0FDA10, &qword_1A3A6F260);
    if (*(&v6 + 1))
    {
      sub_1A388F740(v5, &qword_1EB0FDA10, &qword_1A3A6F260);
    }
  }

  sub_1A39DD8C0(v8, a1, &qword_1EB0FDA10, &qword_1A3A6F260);
  v3 = sub_1A3A2EA50();
  sub_1A3955D5C(v3);
  return sub_1A39DAA34(v9);
}

void sub_1A39DAA6C(uint64_t a1)
{
  sub_1A39D9E2C(319, &qword_1ED996DF0, type metadata accessor for ModeWheelGestureState, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    sub_1A39DBC8C(319, &qword_1ED999098, MEMORY[0x1E69E6370], MEMORY[0x1E697BF20]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        sub_1A3A31A40();
        if (v4 <= 0x3F)
        {
          sub_1A39DBC28(319, &qword_1ED9990A0, &qword_1EB1006E0, &unk_1A3A80F20, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1A3A311E0();
            if (v6 <= 0x3F)
            {
              sub_1A39DBC8C(319, &qword_1ED996DF8, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
              if (v7 <= 0x3F)
              {
                sub_1A39DBC28(319, qword_1ED996A70, &qword_1EB0FD160, qword_1A3A81580, MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1A38BF120();
                  if (v9 <= 0x3F)
                  {
                    sub_1A39D9E2C(319, qword_1ED996E08, type metadata accessor for Debouncer, MEMORY[0x1E6981790]);
                    if (v10 <= 0x3F)
                    {
                      sub_1A39DBC8C(319, qword_1ED996958, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                      if (v11 <= 0x3F)
                      {
                        sub_1A39DBC28(319, &qword_1EB0FE800, &qword_1EB0FDA08, &unk_1A3A6F500, MEMORY[0x1E6981790]);
                        if (v12 <= 0x3F)
                        {
                          sub_1A39DBC8C(319, &qword_1ED996950, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
                          if (v13 <= 0x3F)
                          {
                            sub_1A39DBC8C(319, &qword_1EB0FDB78, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
                            if (v14 <= 0x3F)
                            {
                              sub_1A39DBC8C(319, &qword_1EB1007E0, &type metadata for ListLayoutCenteredGroupFit, MEMORY[0x1E6981790]);
                              if (v15 <= 0x3F)
                              {
                                sub_1A39DBC28(319, qword_1ED999010, &qword_1EB0FDA50, &qword_1A3A6F2A0, MEMORY[0x1E6981790]);
                                if (v16 <= 0x3F)
                                {
                                  sub_1A39DBC28(319, &qword_1ED996E00, &qword_1EB0FDA08, &unk_1A3A6F500, MEMORY[0x1E6981948]);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1A39DBC8C(319, &qword_1ED996C40, MEMORY[0x1E69E6530], MEMORY[0x1E6981790]);
                                    if (v18 <= 0x3F)
                                    {
                                      type metadata accessor for ChromeScenePhase(319);
                                      if (v19 <= 0x3F)
                                      {
                                        swift_cvw_initStructMetadataWithLayoutString();
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A39DAF24(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v39 = sub_1A3A2ECE0();
  v4 = *(v39 - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v40 = sub_1A3A2F620();
  v7 = *(v40 - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v6 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v10 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = v10;
  }

  v41 = v11;
  v42 = v6;
  v43 = v10;
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10;
  }

  v13 = *(*(a3 + 16) - 8);
  v14 = *(v13 + 84);
  v44 = v12;
  v45 = v14;
  if (v14 <= v12)
  {
    v14 = v12;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v46 = v15;
  v16 = *(sub_1A3A2F540() - 8);
  if (*(v16 + 64) <= 8uLL)
  {
    v17 = 8;
  }

  else
  {
    v17 = *(v16 + 64);
  }

  v18 = *(v4 + 80);
  v19 = *(v7 + 80);
  if (v5)
  {
    v20 = *(v4 + 64);
  }

  else
  {
    v20 = *(v4 + 64) + 1;
  }

  v21 = *(v13 + 80);
  if (v8)
  {
    v22 = 0;
  }

  else
  {
    v22 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v19 | v18 | 7;
  v24 = v20 + v19;
  v25 = v22 - *(v7 + 64) + ((-17 - (v19 | v18)) | v23) + ((((-33 - v18) | v18) - v24) | v19);
  v26 = v21 | 7;
  if (a2 <= v46)
  {
    goto LABEL_50;
  }

  v27 = *(v16 + 80) & 0xF8 | 7;
  v28 = v17 + ~(((-10 - v27) | v27) + ((-33 - v27 - ((((((((((((((((((((((((((((((((((((((*(v13 + 64) - ((-17 - v21) | v21) - ((-18 - v26 - ((((((5 - v25) & 0xFFFFFFFFFFFFFFF8) + 65) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v26) + 29) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v27));
  v29 = 8 * v28;
  if (v28 <= 3)
  {
    v31 = ((a2 - v46 + ~(-1 << v29)) >> v29) + 1;
    if (HIWORD(v31))
    {
      v30 = *(a1 + v28);
      if (!v30)
      {
        goto LABEL_50;
      }

      goto LABEL_39;
    }

    if (v31 > 0xFF)
    {
      v30 = *(a1 + v28);
      if (!*(a1 + v28))
      {
        goto LABEL_50;
      }

      goto LABEL_39;
    }

    if (v31 < 2)
    {
LABEL_50:
      if (v45 > v44)
      {
        v33 = *(v13 + 48);

        return v33((v21 + ((((v26 + ((((((a1 - v25 + 5) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v26) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v21);
      }

      v35 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v43 & 0x80000000) == 0)
      {
        v36 = *v35;
        if (v36 >= 0xFFFFFFFF)
        {
          LODWORD(v36) = -1;
        }

        return (v36 + 1);
      }

      v37 = (v18 + ((((((v35 + v23 + 8) & ~v23) + 10) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v18;
      if (v42 == v41)
      {
        if (v5 < 2)
        {
          return 0;
        }

        v38 = (*(v4 + 48))(v37, v5, v39);
      }

      else
      {
        v38 = (*(v7 + 48))((v24 + v37) & ~v19, v8, v40);
      }

      if (v38 >= 2)
      {
        return v38 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v30 = *(a1 + v28);
  if (!*(a1 + v28))
  {
    goto LABEL_50;
  }

LABEL_39:
  v32 = (v30 - 1) << v29;
  if (v28 > 3)
  {
    v32 = 0;
  }

  if (v28)
  {
    if (v28 > 3)
    {
      LODWORD(v28) = 4;
    }

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        LODWORD(v28) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v28) = *a1;
      }
    }

    else if (v28 == 1)
    {
      LODWORD(v28) = *a1;
    }

    else
    {
      LODWORD(v28) = *a1;
    }
  }

  return v46 + (v28 | v32) + 1;
}

void sub_1A39DB4A0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_1A3A2ECE0() - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v60 = sub_1A3A2F620();
  v8 = *(v60 - 8);
  v70 = v8;
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v7 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v11;
  }

  v61 = v7;
  v62 = v12;
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v11;
  }

  v63 = *(a4 + 16);
  v14 = *(v63 - 8);
  v71 = v14;
  v65 = *(v14 + 84);
  v66 = v13;
  if (v65 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = *(v14 + 84);
  }

  v64 = v15;
  if (v15 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v15;
  }

  v17 = sub_1A3A2F540();
  v18 = v6;
  v19 = 0;
  v20 = *(v17 - 8);
  if (*(v20 + 64) <= 8uLL)
  {
    v21 = 8;
  }

  else
  {
    v21 = *(v20 + 64);
  }

  v22 = *(v5 + 64);
  if (!v18)
  {
    ++v22;
  }

  v23 = *(v5 + 80);
  v24 = *(v8 + 80);
  v25 = v24 | v23 | 7;
  v26 = v22 + v24;
  v27 = (v22 + v24 + ((v23 + 32) & ~v23)) & ~v24;
  v28 = *(v8 + 64);
  if (!v9)
  {
    ++v28;
  }

  v29 = v27 + v28;
  v30 = v27 + v28 + (((v24 | v23) + 16) & ~v25);
  v31 = *(v14 + 80);
  v32 = (v31 | 7) + 17;
  v33 = *(v14 + 64);
  v34 = ((v31 + 16) & ~v31) + v33;
  v35 = *(v20 + 80) & 0xF8 | 7;
  v36 = v21 + ~(((-10 - v35) | v35) + ((-33 - v35 - ((((((((((((((((((((((((((((((((((((((v34 + ((v32 + ((((((v30 + 7) & 0xFFFFFFFFFFFFFFF8) + 65) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~(v31 | 7)) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v35));
  if (a3 > v16)
  {
    if (v36 <= 3)
    {
      v37 = ((a3 - v16 + ~(-1 << (8 * v36))) >> (8 * v36)) + 1;
      if (HIWORD(v37))
      {
        v19 = 4;
      }

      else
      {
        if (v37 < 0x100)
        {
          v38 = 1;
        }

        else
        {
          v38 = 2;
        }

        if (v37 >= 2)
        {
          v19 = v38;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  if (v16 < a2)
  {
    v39 = ~v16 + a2;
    if (v36 >= 4)
    {
      bzero(a1, v36);
      *a1 = v39;
      v40 = 1;
      if (v19 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_92;
    }

    v40 = (v39 >> (8 * v36)) + 1;
    if (v36)
    {
      v42 = v39 & ~(-1 << (8 * v36));
      bzero(a1, v36);
      if (v36 != 3)
      {
        if (v36 == 2)
        {
          *a1 = v42;
          if (v19 > 1)
          {
            goto LABEL_42;
          }
        }

        else
        {
          *a1 = v39;
          if (v19 > 1)
          {
LABEL_42:
            if (v19 == 2)
            {
              *&a1[v36] = v40;
            }

            else
            {
              *&a1[v36] = v40;
            }

            return;
          }
        }

LABEL_92:
        if (v19)
        {
          a1[v36] = v40;
        }

        return;
      }

      *a1 = v42;
      a1[2] = BYTE2(v42);
    }

    if (v19 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_92;
  }

  v41 = a1;
  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v36] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_56;
    }

    *&a1[v36] = 0;
  }

  else if (v19)
  {
    a1[v36] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_56;
  }

  if (!a2)
  {
    return;
  }

LABEL_56:
  if (v65 > v66)
  {
    v43 = ((v32 + (((((&a1[v30 + 7] & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~(v31 | 7));
    if (v64 < a2)
    {
      if (v34 <= 3)
      {
        v44 = ~(-1 << (8 * v34));
      }

      else
      {
        v44 = -1;
      }

      if (v34)
      {
        v45 = v44 & (~v64 + a2);
        if (v34 <= 3)
        {
          v46 = ((v31 + 16) & ~v31) + v33;
        }

        else
        {
          v46 = 4;
        }

        bzero(v43, ((v31 + 16) & ~v31) + v33);
        if (v46 > 2)
        {
          if (v46 == 3)
          {
            *v43 = v45;
            v43[2] = BYTE2(v45);
          }

          else
          {
            *v43 = v45;
          }
        }

        else if (v46 == 1)
        {
          *v43 = v45;
        }

        else
        {
          *v43 = v45;
        }
      }

      return;
    }

    v50 = *(v71 + 56);
    v51 = (v31 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v31;
    v52 = a2;
    v53 = v65;
    v54 = v63;
    goto LABEL_83;
  }

  if (v66 < a2)
  {
    if (v30 <= 3)
    {
      v47 = ~(-1 << (8 * v30));
    }

    else
    {
      v47 = -1;
    }

    if (!v30)
    {
      return;
    }

    v48 = v47 & (~v66 + a2);
    if (v30 <= 3)
    {
      v49 = v30;
    }

    else
    {
      v49 = 4;
    }

    bzero(a1, v30);
    if (v49 <= 2)
    {
      if (v49 == 1)
      {
LABEL_78:
        *v41 = v48;
        return;
      }

LABEL_107:
      *v41 = v48;
      return;
    }

    goto LABEL_108;
  }

  v55 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v56 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v56 = a2 - 1;
    }

    *v55 = v56;
    return;
  }

  v41 = ((v55 + v25 + 8) & ~v25);
  if (v62 < a2)
  {
    if (v29 <= 3)
    {
      v57 = ~(-1 << (8 * v29));
    }

    else
    {
      v57 = -1;
    }

    if (!v29)
    {
      return;
    }

    v48 = v57 & (~v62 + a2);
    if (v29 <= 3)
    {
      v49 = v29;
    }

    else
    {
      v49 = 4;
    }

    bzero(v41, v29);
    if (v49 <= 2)
    {
      if (v49 == 1)
      {
        goto LABEL_78;
      }

      goto LABEL_107;
    }

LABEL_108:
    if (v49 == 3)
    {
      *v41 = v48;
      v41[2] = BYTE2(v48);
    }

    else
    {
      *v41 = v48;
    }

    return;
  }

  v58 = (v23 + ((((v41 + 10) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v23;
  if (v61 != v62)
  {
    v50 = *(v70 + 56);
    v51 = (v26 + v58) & ~v24;
    v52 = a2 + 1;
    v53 = v9;
    v54 = v60;
LABEL_83:

    v50(v51, v52, v53, v54);
    return;
  }

  v59 = *(v5 + 56);

  v59(v58, a2 + 1);
}

void sub_1A39DBC28(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A39DBC8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A39DBD34()
{
  result = qword_1EB1007F8;
  if (!qword_1EB1007F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1007F8);
  }

  return result;
}

unint64_t sub_1A39DBDD4()
{
  result = qword_1EB100840;
  if (!qword_1EB100840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100800, &qword_1A3A816B0);
    sub_1A38A08F8(&qword_1EB100848, &qword_1EB100850, &qword_1A3A816F0, MEMORY[0x1E697BD70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100840);
  }

  return result;
}

unint64_t sub_1A39DBE84()
{
  result = qword_1EB100860;
  if (!qword_1EB100860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100858, &unk_1A3A816F8);
    sub_1A38A08F8(&qword_1EB100868, &qword_1EB0FDA48, &qword_1A3A78090, &unk_1A3A82820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100860);
  }

  return result;
}

uint64_t sub_1A39DBF34@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v11 = v3[7];
  v15[0] = v3[2];
  v6 = v15[0];
  v15[1] = v7;
  v15[2] = v8;
  v15[3] = v9;
  v15[4] = v10;
  v15[5] = v11;
  v12 = *(type metadata accessor for ModeWheel(0, v15) - 8);
  v13 = v3 + ((*(v12 + 80) + 64) & ~*(v12 + 80));

  return sub_1A39D2AFC(v13, v6, v7, v8, v9, v10, v11, a1, a2);
}

uint64_t objectdestroyTm_15()
{
  v1 = v0[2];
  v18 = v0[1];
  v19[0] = v18;
  v19[1] = v1;
  v19[2] = v0[3];
  v2 = type metadata accessor for ModeWheel(0, v19);
  v3 = v0 + ((*(*(v2 - 1) + 80) + 64) & ~*(*(v2 - 1) + 80));

  v4 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00, &unk_1A3A6F250) + 32)];
  v5 = type metadata accessor for ModeWheelGestureState(0);
  v6 = *(v5 + 36);
  v7 = sub_1A3A2ECE0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&v4[v6], 1, v7))
  {
    (*(v8 + 8))(&v4[v6], v7);
  }

  v9 = *(v5 + 40);
  v10 = sub_1A3A2F620();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(&v4[v9], 1, v10))
  {
    (*(v11 + 8))(&v4[v9], v10);
  }

  v12 = &v3[v2[24]];

  v13 = sub_1A3A311E0();
  (*(*(v18 - 8) + 8))(&v12[*(v13 + 32)], v18);

  if (*&v3[v2[26]])
  {
  }

  if (*&v3[v2[27]])
  {
  }

  v14 = &v3[v2[48]];
  j__swift_release(*v14);
  v15 = *(type metadata accessor for ChromeScenePhase(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670, &qword_1A3A6F6C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1A3A2F540();
    (*(*(v16 - 8) + 8))(v14 + v15, v16);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A39DC4D4(char *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = *(type metadata accessor for ModeWheel(0, v12) - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_1A39D4168(a1, v10, v3, v4, v5, v6, v7, v8);
}

unint64_t sub_1A39DC598()
{
  result = qword_1EB100878;
  if (!qword_1EB100878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100878);
  }

  return result;
}

void sub_1A39DC5EC(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = v9;
  v12[5] = v10;
  v11 = *(type metadata accessor for ModeWheel(0, v12) - 8);
  sub_1A39D4204(a1, a2, v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80)), v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1A39DC6C8()
{
  result = qword_1ED9990C8;
  if (!qword_1ED9990C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100880, &qword_1A3A81718);
    sub_1A39DC74C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9990C8);
  }

  return result;
}

unint64_t sub_1A39DC74C()
{
  result = qword_1ED9990D0[0];
  if (!qword_1ED9990D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9990D0);
  }

  return result;
}

void sub_1A39DC7B8(_BYTE *a1, _BYTE *a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v12 = v2[2];
  v5 = v12;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  type metadata accessor for ModeWheel(0, &v12);
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = type metadata accessor for ModeWheel(0, &v12);
  sub_1A39D5604(a1, a2, v11);
}

uint64_t sub_1A39DC884(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A39DC914(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(v3 + 3);
  v9 = *(v3 + 4);
  v10 = *(v3 + 5);
  v11 = *(v3 + 6);
  v12 = *(v3 + 7);
  v15[0] = *(v3 + 2);
  v7 = v15[0];
  v15[1] = v8;
  v15[2] = v9;
  v15[3] = v10;
  v15[4] = v11;
  v15[5] = v12;
  v13 = *(type metadata accessor for ModeWheel(0, v15) - 8);
  return a3(a1, a2, &v3[(*(v13 + 80) + 64) & ~*(v13 + 80)], v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1A39DC9E4()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v11 = v0[2];
  v1 = v11;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v7 = *(*(type metadata accessor for ModeWheel(0, &v11) - 8) + 80);
  v11 = v1;
  v12 = v2;
  v8 = (v7 + 64) & ~v7;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  result = type metadata accessor for ModeWheel(0, &v11);
  v10 = (v0 + *(result + 108) + v8);
  if (*v10)
  {
    return (*v10)();
  }

  return result;
}

uint64_t sub_1A39DCADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(v3 + 3);
  v9 = *(v3 + 4);
  v10 = *(v3 + 5);
  v11 = *(v3 + 6);
  v12 = *(v3 + 7);
  v15[0] = *(v3 + 2);
  v7 = v15[0];
  v15[1] = v8;
  v15[2] = v9;
  v15[3] = v10;
  v15[4] = v11;
  v15[5] = v12;
  v13 = *(type metadata accessor for ModeWheel(0, v15) - 8);
  return a3(a1, a2, &v3[(*(v13 + 80) + 64) & ~*(v13 + 80)], v7, v8, v9, v10, v11, v12);
}

unint64_t sub_1A39DCBAC()
{
  result = qword_1EB100898;
  if (!qword_1EB100898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100890, &qword_1A3A81778);
    sub_1A39DCC30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100898);
  }

  return result;
}

unint64_t sub_1A39DCC30()
{
  result = qword_1EB1008A0;
  if (!qword_1EB1008A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1008A0);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A3A2EA60();
}

uint64_t sub_1A39DCE38(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v12[0] = v1[2];
  v2 = v12[0];
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v8 = *(type metadata accessor for ModeWheel(0, v12) - 8);
  v9 = v1 + ((*(v8 + 80) + 64) & ~*(v8 + 80));

  return a1(v9, v2, v3, v4, v5, v6, v7);
}

unint64_t sub_1A39DCF00()
{
  result = qword_1EB1008B8;
  if (!qword_1EB1008B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1008B8);
  }

  return result;
}

uint64_t sub_1A39DCFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = v9;
  v12[5] = v10;
  type metadata accessor for ModeWheel(0, v12);

  return sub_1A39D3274(a1, v5, a2);
}

double sub_1A39DD088(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = *(type metadata accessor for ModeWheel(0, v12) - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_1A39D3EE0(a1, v10, v3, v4, v5, v6, v7, v8);
}

void *sub_1A39DD14C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  v5[0] = *(v0 + 16);
  v5[1] = v2;
  v5[2] = *(v0 + 48);
  v3 = type metadata accessor for ModeWheel(0, v5);
  return sub_1A39D3F58(v1, v3);
}

void *sub_1A39DD1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v17[0] = v2[2];
  v5 = v17[0];
  v17[1] = v6;
  v17[2] = v7;
  v17[3] = v8;
  v17[4] = v9;
  v17[5] = v10;
  v11 = *(type metadata accessor for ModeWheel(0, v17) - 8);
  v12 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v13 = *(v5 - 8);
  v14 = (v12 + *(v11 + 64) + *(v13 + 80)) & ~*(v13 + 80);
  *&v16 = v7;
  *(&v16 + 1) = v8;
  return sub_1A39D661C(a1, v2 + v12, v2 + v14, *(v2 + v14 + *(v13 + 64)), *(v2 + v14 + *(v13 + 64) + 1), *(v2 + v14 + *(v13 + 64) + 2), v5, v6, a2, *(v2 + ((v14 + *(v13 + 64) + 10) & 0xFFFFFFFFFFFFFFF8)), v16, v9, v10);
}

unint64_t sub_1A39DD300()
{
  result = qword_1EB1008C0;
  if (!qword_1EB1008C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1008C0);
  }

  return result;
}

void sub_1A39DD3E4(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_1A39D9E2C(319, &qword_1ED996DF0, type metadata accessor for ModeWheelGestureState, MEMORY[0x1E6981948]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A39DD4CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A39DD534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModeWheelGesture(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_107Tm()
{
  v1 = type metadata accessor for ModeWheelGesture(0);
  v2 = v0 + *(v1 + 28) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00, &unk_1A3A6F250) + 32);
  v4 = type metadata accessor for ModeWheelGestureState(0);
  v5 = *(v4 + 36);
  v6 = sub_1A3A2ECE0();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = *(v4 + 40);
  v9 = sub_1A3A2F620();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_1A39DD7B8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ModeWheelGesture(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1A39DD8C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A39DD928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A3A2F6B0();
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  sub_1A3A2F6C0();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_1A3A2F890();
}

__n128 sub_1A39DDAE4@<Q0>(char a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, char a6@<W5>, unint64_t a7@<X6>, char a8@<W7>, __n128 *a9@<X8>, double a10@<D0>, double a11@<D1>, __n128 a12, unint64_t a13, unint64_t a14, uint64_t a15)
{
  v23 = a1 & 1;
  sub_1A3A2EA50();
  v24 = sub_1A3A31A10();

  v25 = v24;
  if (v24 >= a10)
  {
    v25 = a10;
  }

  a9->n128_u8[0] = v23;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_f64[1] = fmax(v25, -1.0);
  a9[2].n128_u64[0] = a4;
  a9[2].n128_u64[1] = a5;
  a9[3].n128_u8[0] = a6 & 1;
  a9[3].n128_u64[1] = a7;
  a9[4].n128_u8[0] = a8 & 1;
  a9[4].n128_f64[1] = a11;
  result = a12;
  a9[5] = a12;
  a9[6].n128_u64[0] = a13;
  a9[6].n128_u64[1] = a14;
  return result;
}

uint64_t sub_1A39DDBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegn_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A39DDC34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1A39DDC7C(uint64_t result, int a2, int a3)
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

uint64_t sub_1A39DDD34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  *&v64 = a1[2];
  v3 = v64;
  *(&v64 + 1) = v4;
  *&v65 = v5;
  *(&v65 + 1) = v6;
  _s10ListLayoutVMa(255, &v64);
  swift_getWitnessTable();
  v44 = sub_1A3A2F6B0();
  v7 = sub_1A3A31A40();
  sub_1A3A2FA90();
  v8 = sub_1A3A2FA90();
  v62 = v6;
  v63 = MEMORY[0x1E697EBE0];
  v42 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v61 = MEMORY[0x1E697FB08];
  v40 = v8;
  v9 = swift_getWitnessTable();
  *&v64 = v8;
  *(&v64 + 1) = v9;
  v38 = MEMORY[0x1E6981218];
  v39 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = swift_getWitnessTable();
  *&v64 = v7;
  *(&v64 + 1) = v3;
  *&v65 = OpaqueTypeMetadata2;
  *(&v65 + 1) = v11;
  *&v66 = v5;
  v37 = sub_1A3A31220();
  swift_getWitnessTable();
  v31 = sub_1A3A2F880();
  v41 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v13 = &v31 - v12;
  *&v64 = v3;
  *(&v64 + 1) = v4;
  *&v65 = v5;
  *(&v65 + 1) = v6;
  type metadata accessor for ListLayoutCenteredGroupFitReporter(255, &v64);
  v14 = sub_1A3A31DE0();
  v59 = swift_getWitnessTable();
  v33 = v14;
  v34 = swift_getWitnessTable();
  v35 = sub_1A3A301D0();
  v15 = sub_1A3A2FA90();
  v36 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v32 = &v31 - v19;
  sub_1A39DF914(*v2, *(v2 + 2), *(v2 + 4), *(v2 + 5), v2[48], *(v2 + 7), v2[64], &v64, *(v2 + 3), *(v2 + 9));
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  *(v20 + 24) = v4;
  *(v20 + 32) = v5;
  *(v20 + 40) = v6;
  v21 = v67;
  *(v20 + 80) = v66;
  *(v20 + 96) = v21;
  *(v20 + 112) = v68;
  v22 = v65;
  *(v20 + 48) = v64;
  *(v20 + 64) = v22;
  v50[2] = v3;
  v50[3] = v4;
  v50[4] = v5;
  v50[5] = v6;
  v51 = v2;
  sub_1A39DE2E0(sub_1A39DF318, v50, (v20 + 48), v3, v4, v5, v6, v13);

  v45 = v3;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v2;
  sub_1A3A31480();
  v23 = swift_getWitnessTable();
  v57 = v40;
  v58 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = swift_getWitnessTable();
  v54 = v23;
  v55 = v24;
  v25 = v31;
  v26 = swift_getWitnessTable();
  sub_1A3A30920();
  (*(v41 + 8))(v13, v25);
  v27 = swift_getWitnessTable();
  v52 = v26;
  v53 = v27;
  swift_getWitnessTable();
  v28 = v32;
  sub_1A3964BD0();
  v29 = *(v36 + 8);
  v29(v17, v15);
  sub_1A3964BD0();
  return (v29)(v28, v15);
}

uint64_t sub_1A39DE2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = a3[3];
  v37 = a3[2];
  v38 = v13;
  v39 = *(a3 + 8);
  v14 = a3[1];
  v35 = *a3;
  v36 = v14;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v15 = _s10ListLayoutVMa(0, &v26);
  v16 = sub_1A3A31A40();
  sub_1A3A2FA90();
  v17 = sub_1A3A2FA90();
  v33 = a7;
  v34 = MEMORY[0x1E697EBE0];
  WitnessTable = swift_getWitnessTable();
  v32 = MEMORY[0x1E697FB08];
  v18 = swift_getWitnessTable();
  v26 = v17;
  v27 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = swift_getWitnessTable();
  v26 = v16;
  v27 = a4;
  v28 = OpaqueTypeMetadata2;
  v29 = v20;
  v30 = a6;
  v21 = sub_1A3A31220();
  v22 = swift_getWitnessTable();
  v26 = v17;
  v27 = v18;
  swift_getOpaqueTypeConformance2();
  v23 = swift_getWitnessTable();
  return sub_1A39DD928(a1, a2, v15, v21, v22, v23, a8);
}

uint64_t sub_1A39DE4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a6;
  v11 = sub_1A3A31A40();
  v12 = a3;
  sub_1A3A2FA90();
  v13 = sub_1A3A2FA90();
  v48[3] = a5;
  v48[4] = MEMORY[0x1E697EBE0];
  v48[1] = swift_getWitnessTable();
  v48[2] = MEMORY[0x1E697FB08];
  v40 = v13;
  WitnessTable = swift_getWitnessTable();
  v35 = MEMORY[0x1E6981218];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v33 = v11;
  v37 = swift_getWitnessTable();
  v43 = v11;
  v44 = a2;
  v45 = OpaqueTypeMetadata2;
  v46 = v37;
  v47 = a4;
  v14 = sub_1A3A31220();
  v39 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v20 = &v32 - v19;
  v49 = *(a1 + 8);
  v48[0] = v49;
  v42[0] = a2;
  v21 = v12;
  v42[1] = v12;
  v42[2] = a4;
  v42[3] = a5;
  KeyPath = swift_getKeyPath(byte_1A3A81A48, v42, v18);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = v12;
  *(v22 + 32) = a4;
  *(v22 + 40) = a5;
  v23 = a5;
  v24 = *(a1 + 80);
  *(v22 + 112) = *(a1 + 64);
  *(v22 + 128) = v24;
  *(v22 + 144) = *(a1 + 96);
  v25 = *(a1 + 16);
  *(v22 + 48) = *a1;
  *(v22 + 64) = v25;
  v26 = *(a1 + 48);
  *(v22 + 80) = *(a1 + 32);
  *(v22 + 96) = v26;
  v27 = v33;
  (*(*(v33 - 8) + 16))(&v43, &v49, v33);
  v43 = a2;
  v44 = v21;
  v45 = a4;
  v46 = v23;
  v28 = type metadata accessor for ModeWheelListView(0, &v43);
  (*(*(v28 - 8) + 16))(&v43, a1, v28);
  v43 = v40;
  v44 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A3A31200(v48, KeyPath, sub_1A39DF338, v22, v27, OpaqueTypeMetadata2, v37, a4, OpaqueTypeConformance2);
  v42[4] = OpaqueTypeConformance2;
  swift_getWitnessTable();
  sub_1A3964BD0();
  v30 = *(v39 + 8);
  v30(v16, v14);
  sub_1A3964BD0();
  return (v30)(v20, v14);
}

void sub_1A39DE904(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23[1] = a6;
  v35 = a5;
  v33 = a3;
  v36 = a7;
  v31 = *(a3 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v30 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A3A2FA90();
  v23[4] = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1A3A2FA90();
  v34 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v23[2] = v23 - v18;
  v41 = a6;
  v42 = MEMORY[0x1E697EBE0];
  WitnessTable = swift_getWitnessTable();
  v40 = MEMORY[0x1E697FB08];
  v25 = v17;
  v26 = swift_getWitnessTable();
  v37 = v17;
  v38 = v26;
  v27 = MEMORY[0x1E6981218];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v29 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v23[3] = v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23[5] = v23 - v22;
  (*(a2 + 80))(a1, v21);
  sub_1A3A30CF0();
  (*(v24 + 8))(v15, a4);
  sub_1A39D4154();
}

uint64_t sub_1A39DECF0()
{
  (*(*(v6 - 352) + 8))(v3, v4);
  v7 = *(v6 - 280);
  v8 = *(v6 - 288);
  v9 = *(v6 - 264);
  (*(v7 + 16))(v8, v5, v9);
  v10 = v7;
  v11 = (*(v7 + 80) + 160) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v2;
  v13 = *(v6 - 248);
  *(v12 + 32) = v13;
  *(v12 + 40) = v0;
  v14 = v1[5];
  *(v12 + 112) = v1[4];
  *(v12 + 128) = v14;
  *(v12 + 144) = v1[6];
  v15 = v1[1];
  *(v12 + 48) = *v1;
  *(v12 + 64) = v15;
  v16 = v1[3];
  *(v12 + 80) = v1[2];
  *(v12 + 96) = v16;
  (*(v10 + 32))(v12 + v11, v8, v9);
  *(v6 - 232) = v9;
  *(v6 - 224) = v2;
  *(v6 - 216) = v13;
  *(v6 - 208) = v0;
  v17 = type metadata accessor for ModeWheelListView(0, v6 - 232);
  (*(*(v17 - 8) + 16))(v6 - 232, v1, v17);
  v18 = *(v6 - 360);
  v19 = *(v6 - 328);
  v20 = *(v6 - 320);
  v21 = *(v6 - 368);
  sub_1A3A309D0();

  (*(*(v6 - 256) + 8))(v21, v19);
  *(v6 - 232) = v19;
  *(v6 - 224) = v20;
  swift_getOpaqueTypeConformance2();
  v22 = *(v6 - 344);
  v23 = *(v6 - 304);
  sub_1A3964BD0();
  v24 = *(*(v6 - 296) + 8);
  v24(v18, v23);
  sub_1A3964BD0();
  return (v24)(v22, v23);
}

uint64_t sub_1A39DEF24(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1A3A305F0();
  if (v10 != sub_1A3A305F0() || (a1[64] & 1) != 0 || (a1[48] & 1) != 0)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    *&v37 = a2;
    *(&v37 + 1) = a3;
    *&v38 = a4;
    *(&v38 + 1) = a5;
    type metadata accessor for ListLayoutCenteredGroupFitReporter(0, &v37);
    swift_getWitnessTable();
    sub_1A39E3190(&v32, &v37);
  }

  else
  {
    v13 = *(a1 + 7);
    v14 = *(a1 + 4);
    v23 = *(a1 + 5);
    v15 = *(a1 + 9);
    v17 = *(a1 + 1);
    v16 = *(a1 + 2);
    v19 = *(a1 + 10);
    v18 = *(a1 + 11);
    sub_1A3A2EA50();
    sub_1A3A2EA60();
    sub_1A39CC220(v16, v14, v23, v17, v19, v18, a2, &v37, v13, v15, a4);
    *&v32 = a2;
    *(&v32 + 1) = a3;
    *&v33 = a4;
    *(&v33 + 1) = a5;
    v20 = type metadata accessor for ListLayoutCenteredGroupFitReporter(0, &v32);
    swift_getWitnessTable();
    sub_1A3964BD0();
    v25[2] = v39;
    v25[3] = v40;
    v25[4] = v41;
    v25[0] = v37;
    v25[1] = v38;
    v21 = *(*(v20 - 8) + 8);
    v21(v25, v20);
    v39 = v24[12];
    v40 = v24[13];
    v41 = v24[14];
    v37 = v24[10];
    v38 = v24[11];
    sub_1A3964BD0();
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v27 = v37;
    v28 = v38;
    v21(&v27, v20);
    v39 = v24[7];
    v40 = v24[8];
    v41 = v24[9];
    v37 = v24[5];
    v38 = v24[6];
    sub_1A39E3190(&v37, v24);
    v34 = v39;
    v35 = v40;
    v36 = v41;
    v32 = v37;
    v33 = v38;
    v22 = sub_1A3A31DE0();
    (*(*(v22 - 8) + 8))(&v32, v22);
    v39 = v24[2];
    v40 = v24[3];
    v41 = v24[4];
    v37 = v24[0];
    v38 = v24[1];
  }

  v29 = v39;
  v30 = v40;
  v31 = v41;
  v27 = v37;
  v28 = v38;
  *&v32 = a2;
  *(&v32 + 1) = a3;
  *&v33 = a4;
  *(&v33 + 1) = a5;
  type metadata accessor for ListLayoutCenteredGroupFitReporter(255, &v32);
  v11 = sub_1A3A31DE0();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3964BD0();
  v34 = v29;
  v35 = v30;
  v36 = v31;
  v32 = v27;
  v33 = v28;
  return (*(*(v11 - 8) + 8))(&v32, v11);
}

uint64_t sub_1A39DF348()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    return v1(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 160) & ~*(*(*(v0 + 16) - 8) + 80)));
  }

  return result;
}

uint64_t sub_1A39DF3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12(v9);
  sub_1A3964BD0();
  v13 = *(v5 + 8);
  v13(v7, a4);
  sub_1A3964BD0();
  return (v13)(v11, a4);
}

uint64_t sub_1A39DF4F4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1A3A31B60();
  if (!v19)
  {
    return sub_1A3A319D0();
  }

  v41 = v19;
  v45 = sub_1A3A32010();
  v32 = sub_1A3A32020();
  sub_1A3A31FC0();
  result = sub_1A3A31B50();
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
      v22 = sub_1A3A31BC0();
      v23 = v13;
      v24 = v13;
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
      sub_1A3A32000();
      result = sub_1A3A31B80();
      ++v21;
      v13 = v24;
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

uint64_t sub_1A39DF914@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  *a8 = result & 1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a9;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5 & 1;
  *(a8 + 48) = a6;
  *(a8 + 56) = a7 & 1;
  *(a8 + 64) = a10;
  return result;
}

uint64_t sub_1A39DF954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A39DF990(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[72])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A39DF9D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1A39DFA44()
{
  result = qword_1EB100970;
  if (!qword_1EB100970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100970);
  }

  return result;
}

char *sub_1A39DFA9C(int a1)
{
  v3 = v1;
  v5 = sub_1A3A2F910();
  type metadata accessor for CGSize(0);
  v7 = v6;
  v8 = sub_1A39E0C5C();
  v9 = v7;
  v10 = 0;
  result = sub_1A39DF4F4(sub_1A39E009C, 0, v5, v9, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v11);
  if ((v3[40] & 1) == 0)
  {
    v13 = *(v3 + 4);
    v14 = *(result + 2);
    if (v13 < v14)
    {
      v15 = *(v3 + 3);
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_22;
      }

      if (v14 < v15)
      {
        goto LABEL_23;
      }

      if (v13 < -1)
      {
        goto LABEL_24;
      }

      v16 = *(v3 + 6);
      v17 = v3[56];
      a1 = *v3;
      v18 = *(v3 + 8);
      v10 = result;
      sub_1A39E03E0(*v3, (result + 32), *(v3 + 3), 2 * v13 + 3);
      v2 = v19;
      if ((v17 & 1) != 0 || v16 >= v18 * 0.5 + v19 * (v13 - v15 + 1))
      {
        v20 = v10;
        sub_1A3A2EA50();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_25;
        }

        while (1)
        {
          v23 = *(v20 + 16);
          if (v15 >= v23)
          {
            break;
          }

          v24 = 16 * v15 + 32;
          while (v15 < *(v22 + 2))
          {
            v25 = *(v20 + v24);
            v26 = *(v20 + v24 + 8);
            if (a1)
            {
              v26 = v2;
            }

            else
            {
              v25 = v2;
            }

            v27 = &v22[v24];
            *v27 = v25;
            v27[1] = v26;
            if (v13 == v15)
            {
              goto LABEL_19;
            }

            ++v15;
            v24 += 16;
            if (v23 == v15)
            {
              goto LABEL_18;
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
          v22 = sub_1A3923C88(v10);
          v20 = v10;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        v28 = v22;

        return v28;
      }

      else
      {
        return v10;
      }
    }
  }

  return result;
}

void sub_1A39DFC74(char **a1, int a2)
{
  v3 = sub_1A39DFA9C(a2);

  *a1 = v3;
}

void sub_1A39DFCB0(int a1)
{
  v3 = sub_1A3A305F0();
  if (v3 == sub_1A3A305F0() && (*(v1 + 56) & 1) == 0 && (*(v1 + 40) & 1) == 0)
  {
    v5 = *(v1 + 24);
    v4 = *(v1 + 32);
    sub_1A3A2F910();
    sub_1A39E0C5C();
    if (v4 < sub_1A3A31B90())
    {
      v6 = *(v1 + 8);
      if (v6 >= v5 && v4 >= v6)
      {
        v7 = sub_1A39DFA9C(a1);
        if (v5 < 0)
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v8 = v7;
        v9 = *(v7 + 2);
        if (v9 < v5 || v9 <= v4)
        {
          goto LABEL_44;
        }

        v10 = v4 + 1;
        v11 = MEMORY[0x1E69E7CC0];
        v12 = v4 + 1 - v5;
        if (v4 + 1 != v5)
        {
          v35 = MEMORY[0x1E69E7CC0];
          sub_1A3956A00(0, v12 & ~(v12 >> 63), 0);
          if (v12 < 0)
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          v11 = v35;
          v13 = &v8[16 * v5 + 32];
          v14 = v5;
          while (v14 <= v4)
          {
            v15 = *v13;
            v17 = *(v35 + 16);
            v16 = *(v35 + 24);
            if (v17 >= v16 >> 1)
            {
              sub_1A3956A00((v16 > 1), v17 + 1, 1);
            }

            *(v35 + 16) = v17 + 1;
            *(v35 + 8 * v17 + 32) = v15;
            ++v14;
            v13 += 16;
            if (v10 == v14)
            {
              v12 = v4 + 1 - v5;
              goto LABEL_19;
            }
          }

          __break(1u);
          goto LABEL_42;
        }

LABEL_19:
        v18 = sub_1A39E0568(v11);

        v19 = *(v18 + 16);

        if (v19 > 1)
        {
          v20 = *(v8 + 2);
          if (v5 >= v20)
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          if (v4 >= v20)
          {
LABEL_48:
            __break(1u);
            return;
          }
        }

        if (v10 != v5)
        {
          v36 = MEMORY[0x1E69E7CC0];
          sub_1A3956A00(0, v12 & ~(v12 >> 63), 0);
          if (v12 < 0)
          {
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          v21 = v36;
          v22 = 16 * v5 + 32;
          v23 = v5;
          while (v23 <= v4)
          {
            v24 = *&v8[v22];
            v26 = *(v36 + 16);
            v25 = *(v36 + 24);
            if (v26 >= v25 >> 1)
            {
              sub_1A3956A00((v25 > 1), v26 + 1, 1);
            }

            *(v36 + 16) = v26 + 1;
            *(v36 + 8 * v26 + 32) = v24;
            ++v23;
            v22 += 16;
            if (v10 == v23)
            {

              goto LABEL_31;
            }
          }

LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v21 = MEMORY[0x1E69E7CC0];
LABEL_31:
        v27 = *(v21 + 16);
        if (v27)
        {
          if (v27 > 3)
          {
            v28 = v27 & 0x7FFFFFFFFFFFFFFCLL;
            v30 = (v21 + 48);
            v29 = 0.0;
            v31 = v27 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v29 = v29 + *(v30 - 2) + *(v30 - 1) + *v30 + v30[1];
              v30 += 4;
              v31 -= 4;
            }

            while (v31);
            if (v27 == v28)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v28 = 0;
            v29 = 0.0;
          }

          v32 = v27 - v28;
          v33 = (v21 + 8 * v28 + 32);
          do
          {
            v34 = *v33++;
            v29 = v29 + v34;
            --v32;
          }

          while (v32);
        }

LABEL_40:
      }
    }
  }
}

void sub_1A39E009C(void *a1@<X8>)
{
  sub_1A3A2FBA0();
  sub_1A3A2F830();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1A39E00FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A39DFA98();
  *a1 = result;
  return result;
}

uint64_t (*sub_1A39E02F0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A3A2F4D0();
  return sub_1A39E0378;
}

void sub_1A39E0378(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1A39E03E0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (a4 >> 1 == a3)
  {
    return result;
  }

  if ((a4 >> 1) <= a3)
  {
    __break(1u);
    goto LABEL_18;
  }

  v5 = (a2 + 16 * a3);
  v6 = *v5;
  v7 = v5[1];
  if (a3 + 1 == v4)
  {
    return result;
  }

  if (a3 + 1 >= v4)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v8 = ~a3 + v4;
  v9 = v5 + 3;
  do
  {
    if (result)
    {
      v10 = *v9;
    }

    else
    {
      v10 = *(v9 - 1);
    }

    if (result)
    {
      v11 = v7;
    }

    else
    {
      v11 = v6;
    }

    if (v11 < v10)
    {
      v6 = *(v9 - 1);
      v7 = *v9;
    }

    v9 += 2;
    --v8;
  }

  while (v8);
  return result;
}

void sub_1A39E0454(uint64_t a1, uint64_t a2)
{
  v3 = round(*(v2 + 16));
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v4 = *(*a2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3;
    v7 = *(v2 + 24);
    v8 = *(v2 + 32);
    v9 = *(v2 + 40) | (v7 > v3);
    v10 = (*a2 + 40);
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      v13 = *v10;
      if ((v9 & 1) != 0 || v8 < v5 || v8 < v6 || v5 < v7)
      {
        if (v6 != v5)
        {
          if (*v2)
          {
            v13 = *(v10 - 1);
            v14 = v12;
          }

          else
          {
            v14 = v11;
          }

          goto LABEL_9;
        }

        if ((*v2 & 1) == 0)
        {
LABEL_23:
          v12 = v12 + *(v10 - 1);
          v14 = v11;
          goto LABEL_9;
        }
      }

      else if ((*v2 & 1) == 0)
      {
        goto LABEL_23;
      }

      v11 = v11 + v13;
      v13 = *(v10 - 1);
      v14 = v12;
LABEL_9:
      ++v5;
      if (v14 > v13)
      {
        v13 = v14;
      }

      if (*v2)
      {
        v12 = v13;
      }

      else
      {
        v11 = v13;
      }

      v10 += 2;
    }

    while (v4 != v5);
  }
}

uint64_t sub_1A39E0568(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1A39E0CB4();
  result = MEMORY[0x1A58F79B0](v2, MEMORY[0x1E69E7DE0], v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1A397C7DC(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_1A39E05DC(int a1, uint64_t *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v99 = a4;
  v100 = a6;
  v98 = a3;
  v10 = sub_1A3A2F850();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A3A2F910();
  v15 = sub_1A39E0C5C();
  v16 = sub_1A3A31B90();
  if (__OFSUB__(v16, 1))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v17 = v6[2];
  v18 = round(v17);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v19 = v18;
  if (v16 - 1 < v18)
  {
    v19 = v16 - 1;
  }

  v20 = v19 & ~(v19 >> 63);
  v21 = *a2;
  if (v20 >= *(v21 + 16))
  {
    goto LABEL_65;
  }

  v96 = v15;
  v97 = v14;
  v91 = v19;
  v90 = (v21 + 16 * v20);
  v23 = v90[5];
  v22 = v90 + 4;
  v95 = v90[4];
  v24 = *v6;
  v107 = *v6;
  sub_1A39DFCB0(a1);
  v26 = v25;
  v27 = v98;
  v28 = v99;
  v108.origin.x = v98;
  v108.origin.y = v99;
  v108.size.width = a5;
  v29 = v100;
  v108.size.height = v100;
  MidX = CGRectGetMidX(v108);
  v109.origin.x = v27;
  v109.origin.y = v28;
  v109.size.width = a5;
  v109.size.height = v29;
  MidY = CGRectGetMidY(v109);
  if (v20 >= *(v21 + 16))
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v32 = v95;
  if (v24)
  {
    v32 = v23;
  }

  v33 = v26 - (v17 - v20) * v32;
  v34 = MidX + v33;
  if (v24)
  {
    v34 = MidX;
  }

  v35 = v33 + MidY;
  if (v24)
  {
    MidY = v35;
  }

  v36 = *v22;
  v37 = v22[1];
  v38 = v34 - *v22 * 0.5;
  v39 = MidY - v37 * 0.5;
  sub_1A3A2F920();
  v110.origin.x = v38;
  v110.origin.y = v39;
  v110.size.width = v36;
  v110.size.height = v37;
  CGRectGetMidX(v110);
  v94 = v38;
  v111.origin.x = v38;
  v93 = v39;
  v111.origin.y = v39;
  v111.size.width = v36;
  v111.size.height = v37;
  CGRectGetMidY(v111);
  sub_1A3A31590();
  v95 = v36;
  v92 = v37;
  v106 = 0;
  v105 = 0;
  sub_1A3A2F840();
  v40 = *(v11 + 8);
  v40(v13, v10);
  v41 = sub_1A3A31B90();
  if (__OFSUB__(v41, 1))
  {
    goto LABEL_67;
  }

  if (v20 < v41 - 1)
  {
    v42 = v94;
    v43 = v95;
    v44 = v93;
    v45 = v92;
    if (v107)
    {
      MaxY = CGRectGetMaxY(*&v42);
    }

    else
    {
      MaxY = CGRectGetMaxX(*&v42);
    }

    v47 = MaxY;
    v48 = sub_1A3A31B90();
    if (v48 <= v20)
    {
      goto LABEL_68;
    }

    v49 = v20 + 1;
    if (v20 + 1 != v48)
    {
      if (v20 + 1 >= v48)
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        return;
      }

      v69 = *(v21 + 16);
      if (v49 >= v69 || v48 - 1 >= v69)
      {
        goto LABEL_70;
      }

      v70 = v107;
      v71 = v90 + 7;
      v96 = v48;
      do
      {
        v85 = *(v71 - 1);
        v84 = *v71;
        v86 = v98;
        v87 = v99;
        v88 = a5;
        if (v70)
        {
          v89 = v100;
          MinX = CGRectGetMinX(*&v86);
          v79 = 0.0;
          v77 = v85;
          v78 = a5;
          v76 = v47;
        }

        else
        {
          v72 = v47;
          v73 = v100;
          v74 = v100;
          MinX = CGRectGetMinY(*&v86);
          v76 = 0.0;
          v77 = v84;
          v78 = v73;
          v47 = v72;
          v79 = v72;
        }

        v97 = v49 + 1;
        v80 = MinX + (v78 - v77) * 0.5;
        if (v70)
        {
          v81 = v76;
        }

        else
        {
          v81 = v80;
        }

        if (v70)
        {
          v82 = v80;
        }

        else
        {
          v82 = v79;
        }

        sub_1A3A2F920();
        v116.origin.x = v82;
        v116.origin.y = v81;
        v116.size.width = v85;
        v116.size.height = v84;
        CGRectGetMidX(v116);
        v117.origin.x = v82;
        v117.origin.y = v81;
        v117.size.width = v85;
        v117.size.height = v84;
        CGRectGetMidY(v117);
        sub_1A3A31590();
        v102 = 0;
        v101 = 0;
        sub_1A3A2F840();
        v40(v13, v10);
        v70 = v107;
        if (v107)
        {
          v83 = v84;
        }

        else
        {
          v83 = v85;
        }

        v47 = v47 + v83;
        v71 += 2;
        v49 = v97;
      }

      while (v96 != v97);
    }
  }

  if (v91 >= 1)
  {
    v50 = v107;
    v51 = v94;
    v52 = v95;
    v53 = v93;
    v54 = v92;
    if (v107)
    {
      MinY = CGRectGetMinY(*&v51);
    }

    else
    {
      MinY = CGRectGetMinX(*&v51);
    }

    v56 = MinY;
    v57 = v90 + 3;
    v58 = v20;
    while (v20 >= v58)
    {
      if (--v58 >= *(v21 + 16))
      {
        goto LABEL_60;
      }

      v67 = *(v57 - 1);
      v68 = *v57;
      if (v50)
      {
        v62 = v56 - v68;
        v115.origin.x = v98;
        v115.origin.y = v99;
        v115.size.width = a5;
        v115.size.height = v100;
        v61 = CGRectGetMinX(v115);
        v59 = 0.0;
        v63 = v67;
        v60 = a5;
      }

      else
      {
        v59 = v56 - v67;
        v112.origin.x = v98;
        v112.origin.y = v99;
        v112.size.width = a5;
        v60 = v100;
        v112.size.height = v100;
        v61 = CGRectGetMinY(v112);
        v62 = 0.0;
        v63 = v68;
      }

      v64 = v61 + (v60 - v63) * 0.5;
      if (v50)
      {
        v65 = v62;
      }

      else
      {
        v65 = v64;
      }

      if (v50)
      {
        v59 = v64;
      }

      sub_1A3A2F920();
      v113.origin.x = v59;
      v113.origin.y = v65;
      v113.size.width = v67;
      v113.size.height = v68;
      CGRectGetMidX(v113);
      v114.origin.x = v59;
      v114.origin.y = v65;
      v114.size.width = v67;
      v114.size.height = v68;
      CGRectGetMidY(v114);
      sub_1A3A31590();
      v104 = 0;
      v103 = 0;
      sub_1A3A2F840();
      v40(v13, v10);
      v50 = v107;
      if (v107)
      {
        v66 = v68;
      }

      else
      {
        v66 = v67;
      }

      v56 = v56 - v66;
      v57 -= 2;
      if (!v58)
      {
        return;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }
}

unint64_t sub_1A39E0C5C()
{
  result = qword_1ED999158;
  if (!qword_1ED999158)
  {
    sub_1A3A2F910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED999158);
  }

  return result;
}

unint64_t sub_1A39E0CB4()
{
  result = qword_1EB100978;
  if (!qword_1EB100978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100978);
  }

  return result;
}

uint64_t sub_1A39E0D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A39E0D5C@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v49 = a1;
  v55 = a3;
  v51 = a2 & 0x100;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100A28, &qword_1A3A81D38);
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v47 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100A30, &qword_1A3A81D40);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v52 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100A38, &qword_1A3A81D48);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v46 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100A40, &qword_1A3A81D50);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v46 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100A48, &qword_1A3A81D58);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v46 - v31;
  v48 = a2;
  v50 = v16;
  if (a2)
  {
    v34 = v49;
    if (v49)
    {
      v56 = sub_1A3A300B0();
      v57 = 0;
      v58 = 1;
      sub_1A391B73C();
    }

    else
    {
      v56 = sub_1A3A2FF40();
      v57 = 0;
      v58 = 1;
      sub_1A391B604();
    }

    *v19 = sub_1A3A31510();
    v36 = v51;
    sub_1A39E133C(v19 + *(v17 + 44));
    sub_1A388F670(v19, v23, &qword_1EB100A38, &qword_1A3A81D48);
    v23[*(v20 + 36)] = 0;
    sub_1A388F670(v23, v26, &qword_1EB100A40, &qword_1A3A81D50);
    sub_1A388F670(v26, v33, &qword_1EB100A40, &qword_1A3A81D50);
    (*(v21 + 56))(v33, 0, 1, v20);
    v35 = v54;
    if (!v36)
    {
      goto LABEL_9;
    }
  }

  else
  {
    (*(v21 + 56))(&v46 - v31, 1, 1, v20, v32);
    v34 = v49;
    v35 = v54;
    if (!v51)
    {
LABEL_9:
      v37 = 1;
      v38 = v50;
      goto LABEL_12;
    }
  }

  if (v34)
  {
    v56 = sub_1A3A300B0();
    v57 = 0;
    v58 = 1;
    sub_1A391B73C();
  }

  else
  {
    v56 = sub_1A3A2FF40();
    v57 = 0;
    v58 = 1;
    sub_1A391B604();
  }

  v39 = sub_1A3A31510();
  v38 = v50;
  v40 = v47;
  *v47 = v39;
  sub_1A39E1ACC(v34 & 1, v48 & 0x101, v40 + *(v35 + 44), a4, a5);
  v41 = v46;
  sub_1A388F670(v40, v46, &qword_1EB100A28, &qword_1A3A81D38);
  sub_1A388F670(v41, v38, &qword_1EB100A28, &qword_1A3A81D38);
  v37 = 0;
LABEL_12:
  (*(v53 + 56))(v38, v37, 1, v35);
  sub_1A388F6D8(v33, v29, &qword_1EB100A48, &qword_1A3A81D58);
  v42 = v52;
  sub_1A388F6D8(v38, v52, &qword_1EB100A30, &qword_1A3A81D40);
  v43 = v55;
  sub_1A388F6D8(v29, v55, &qword_1EB100A48, &qword_1A3A81D58);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100A50, &qword_1A3A81D60);
  sub_1A388F6D8(v42, v43 + *(v44 + 48), &qword_1EB100A30, &qword_1A3A81D40);
  sub_1A388F740(v38, &qword_1EB100A30, &qword_1A3A81D40);
  sub_1A388F740(v33, &qword_1EB100A48, &qword_1A3A81D58);
  sub_1A388F740(v42, &qword_1EB100A30, &qword_1A3A81D40);
  return sub_1A388F740(v29, &qword_1EB100A48, &qword_1A3A81D58);
}

uint64_t sub_1A39E133C@<X0>(uint64_t a2@<X8>)
{
  v78 = a2;
  v4 = sub_1A3A30280();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v66 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100A58, &qword_1A3A81D68);
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v66 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100A60, &qword_1A3A81D70);
  MEMORY[0x1EEE9AC00](v15);
  v77 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v66 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v71 = &v66 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v75 = &v66 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v66 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v74 = &v66 - v27;
  v72 = v28;
  sub_1A3A30230();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v69 = v4;
  v37 = *(v4 + 20);
  v38 = *MEMORY[0x1E697F468];
  v39 = sub_1A3A30000();
  v40 = *(v39 - 8);
  v41 = *(v40 + 104);
  v68 = v38;
  v67 = v41;
  v66 = v40 + 104;
  v41(&v9[v37], v38, v39);
  *v9 = v30;
  *(v9 + 1) = v32;
  *(v9 + 2) = v34;
  *(v9 + 3) = v36;
  sub_1A3A305F0();
  sub_1A3A305F0();
  v70 = v10;
  if (qword_1ED996498 != -1)
  {
    swift_once();
  }

  v42 = qword_1ED99D890;
  sub_1A3A30F10();
  sub_1A3A309E0();

  sub_1A39E288C(v9, v14);
  sub_1A3A31480();
  sub_1A3A2F780();
  sub_1A388F670(v14, v25, &qword_1EB100A58, &qword_1A3A81D68);
  v43 = v72;
  v44 = &v25[*(v72 + 36)];
  v45 = v80;
  *v44 = v79;
  *(v44 + 1) = v45;
  *(v44 + 2) = v81;
  v46 = v74;
  sub_1A388F670(v25, v74, &qword_1EB100A60, &qword_1A3A81D70);
  sub_1A3A30230();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v67(&v6[*(v69 + 20)], v68, v39);
  *v6 = v48;
  *(v6 + 1) = v50;
  *(v6 + 2) = v52;
  *(v6 + 3) = v54;
  sub_1A3A305F0();
  sub_1A3A305F0();
  sub_1A3A30F10();
  v55 = v73;
  sub_1A3A309E0();

  sub_1A39E288C(v6, v55);
  sub_1A3A31480();
  sub_1A3A2F780();
  v56 = v71;
  sub_1A388F670(v55, v71, &qword_1EB100A58, &qword_1A3A81D68);
  v57 = (v56 + *(v43 + 36));
  v58 = v82[1];
  *v57 = v82[0];
  v57[1] = v58;
  v57[2] = v82[2];
  v59 = v75;
  sub_1A388F670(v56, v75, &qword_1EB100A60, &qword_1A3A81D70);
  v60 = v76;
  sub_1A388F6D8(v46, v76, &qword_1EB100A60, &qword_1A3A81D70);
  v61 = v77;
  sub_1A388F6D8(v59, v77, &qword_1EB100A60, &qword_1A3A81D70);
  v62 = v78;
  sub_1A388F6D8(v60, v78, &qword_1EB100A60, &qword_1A3A81D70);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100A68, &qword_1A3A81D78);
  v64 = v62 + *(v63 + 48);
  *v64 = 0;
  *(v64 + 8) = 1;
  sub_1A388F6D8(v61, v62 + *(v63 + 64), &qword_1EB100A60, &qword_1A3A81D70);
  sub_1A388F740(v59, &qword_1EB100A60, &qword_1A3A81D70);
  sub_1A388F740(v46, &qword_1EB100A60, &qword_1A3A81D70);
  sub_1A388F740(v61, &qword_1EB100A60, &qword_1A3A81D70);
  return sub_1A388F740(v60, &qword_1EB100A60, &qword_1A3A81D70);
}

uint64_t sub_1A39E1ACC@<X0>(int a1@<W0>, __int16 a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v53 = a3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100A70, &qword_1A3A81D80);
  v9 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100A78, &qword_1A3A81D88);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v46 = &v45 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v45 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v45 - v25;
  type metadata accessor for EffectLayer();
  v26 = swift_allocObject();
  v27 = a1 & 1;
  *(v26 + 16) = a1 & 1;
  *(v26 + 24) = a4;
  *(v26 + 32) = a2 & 1;
  *(v26 + 33) = HIBYTE(a2) & 1;
  *(v26 + 40) = a5;
  sub_1A3A2F770();
  sub_1A3A31480();
  v9 += 4;
  v47 = a1;
  sub_1A3A2F780();
  v28 = *v9;
  (*v9)(v23, v13, v55);
  v29 = &v23[*(v54 + 36)];
  v30 = v56[1];
  *v29 = v56[0];
  *(v29 + 1) = v30;
  *(v29 + 2) = v56[2];
  v31 = v23;
  v32 = v49;
  sub_1A388F670(v31, v49, &qword_1EB100A78, &qword_1A3A81D88);
  v33 = swift_allocObject();
  *(v33 + 16) = v27;
  *(v33 + 24) = a4;
  *(v33 + 32) = a2 & 1;
  *(v33 + 33) = HIBYTE(a2) & 1;
  *(v33 + 40) = a5;
  v34 = v48;
  sub_1A3A2F770();
  sub_1A3A31480();
  sub_1A3A2F780();
  v35 = v46;
  v28(v46, v34, v55);
  v36 = (v35 + *(v54 + 36));
  v37 = v56[4];
  *v36 = v56[3];
  v36[1] = v37;
  v36[2] = v56[5];
  v38 = v50;
  sub_1A388F670(v35, v50, &qword_1EB100A78, &qword_1A3A81D88);
  v39 = v51;
  sub_1A388F6D8(v32, v51, &qword_1EB100A78, &qword_1A3A81D88);
  v40 = v52;
  sub_1A388F6D8(v38, v52, &qword_1EB100A78, &qword_1A3A81D88);
  v41 = v53;
  sub_1A388F6D8(v39, v53, &qword_1EB100A78, &qword_1A3A81D88);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100A80, &qword_1A3A81D90);
  v43 = v41 + *(v42 + 48);
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_1A388F6D8(v40, v41 + *(v42 + 64), &qword_1EB100A78, &qword_1A3A81D88);
  sub_1A388F740(v38, &qword_1EB100A78, &qword_1A3A81D88);
  sub_1A388F740(v32, &qword_1EB100A78, &qword_1A3A81D88);
  sub_1A388F740(v40, &qword_1EB100A78, &qword_1A3A81D88);
  return sub_1A388F740(v39, &qword_1EB100A78, &qword_1A3A81D88);
}

uint64_t sub_1A39E1FCC@<X0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 16);
  v7 = *(v2 + 17);
  v8 = v2[3];
  *a2 = sub_1A3A31480();
  a2[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100A18, &qword_1A3A81D28);
  if (v7)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  sub_1A39E0D5C(v4, v11 | v6, a2 + *(v10 + 44), v5, v8);
  v12 = sub_1A3A314E0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100A20, &qword_1A3A81D30);
  v14 = (a2 + *(result + 36));
  *v14 = v12;
  *(v14 + 1) = v5;
  return result;
}

BOOL sub_1A39E2088(double *a1, double *a2)
{
  v2 = *(a1 + 1);
  v3 = a1[1];
  v4 = *(a2 + 1);
  v5 = a2[1];
  v6 = sub_1A3A305F0();
  v7 = sub_1A3A305F0();
  result = 0;
  if (v6 == v7 && ((v2 ^ v4) & 1) == 0)
  {
    return v3 == v5;
  }

  return result;
}

char *sub_1A39E2100()
{
  v1 = OBJC_IVAR____TtC8CameraUIP33_B4AB758274177FA425381CC8A1577C4311EffectLayer_warpBackdrop;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
  *&v0[OBJC_IVAR____TtC8CameraUIP33_B4AB758274177FA425381CC8A1577C4311EffectLayer_configuration] = xmmword_1A3A6A8C0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for EffectLayer();
  v2 = objc_msgSendSuper2(&v16, sel_init);
  v3 = OBJC_IVAR____TtC8CameraUIP33_B4AB758274177FA425381CC8A1577C4311EffectLayer_warpBackdrop;
  v4 = *&v2[OBJC_IVAR____TtC8CameraUIP33_B4AB758274177FA425381CC8A1577C4311EffectLayer_warpBackdrop];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0FE520, &unk_1A3A74240);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A3A681C0;
  v6 = sub_1A3A31850();
  v8 = v7;
  v9 = v2;
  v10 = v4;
  v11 = sub_1A3A1DBE4(MEMORY[0x1E69E7CC0]);
  sub_1A398FE94(v6, v8, 1886544247, 0xE400000000000000, v11);
  v13 = v12;

  *(v5 + 56) = sub_1A39CAA64();
  *(v5 + 32) = v13;
  v14 = sub_1A3A31990();

  [v10 setFilters_];

  [v9 addSublayer_];
  return v9;
}

id sub_1A39E22BC(id result)
{
  v2 = *(v1 + OBJC_IVAR____TtC8CameraUIP33_B4AB758274177FA425381CC8A1577C4311EffectLayer_configuration);
  if (v2 == 2)
  {
    return result;
  }

  v3 = result;
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setAnimationDuration_];
  v5 = v2 & 0x100;
  if (v3 == 2)
  {
    v6 = v2 & 1;
    v7 = v5 >> 8;
  }

  else
  {
    v7 = v5 >> 8;
    v6 = v2 & 1;
    v8 = sub_1A3A305F0();
    if (v8 == sub_1A3A305F0() && v7 == ((v3 >> 8) & 1))
    {
      goto LABEL_9;
    }
  }

  v10 = sub_1A39E2984(v6, v7);
  v11 = *(v1 + OBJC_IVAR____TtC8CameraUIP33_B4AB758274177FA425381CC8A1577C4311EffectLayer_warpBackdrop);
  v12 = v10;
  v13 = sub_1A3A31810();
  [v11 setValue:v12 forKeyPath:v13];

LABEL_9:
  v14 = *(v1 + OBJC_IVAR____TtC8CameraUIP33_B4AB758274177FA425381CC8A1577C4311EffectLayer_warpBackdrop);
  v15 = sub_1A3A2F0D0();
  v16 = sub_1A3A31810();
  [v14 setValue:v15 forKeyPath:v16];

  return [v4 commit];
}

id sub_1A39E26B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EffectLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for EffectLayer.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1A39E2784()
{
  result = qword_1EB100A10;
  if (!qword_1EB100A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100A10);
  }

  return result;
}

uint64_t sub_1A39E27D8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A39E281C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1A39E288C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3A30280();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1A39E28F0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = (a1 + OBJC_IVAR____TtC8CameraUIP33_B4AB758274177FA425381CC8A1577C4311EffectLayer_configuration);
  v4 = *(a1 + OBJC_IVAR____TtC8CameraUIP33_B4AB758274177FA425381CC8A1577C4311EffectLayer_configuration);
  *v3 = *(v1 + 16);
  v3[1] = v2;
  return sub_1A39E22BC(v4);
}

id sub_1A39E2938(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = (a1 + OBJC_IVAR____TtC8CameraUIP33_B4AB758274177FA425381CC8A1577C4311EffectLayer_configuration);
  v4 = *(a1 + OBJC_IVAR____TtC8CameraUIP33_B4AB758274177FA425381CC8A1577C4311EffectLayer_configuration);
  *v3 = *(v1 + 16) | 0x100;
  v3[1] = v2;
  return sub_1A39E22BC(v4);
}

CGImageRef sub_1A39E2984(char a1, char a2)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v5 = __CGBitmapContextCreate_0(DeviceRGB);
  if (v5)
  {
    v6 = v5;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1A3956A00(0, 7, 0);
    v7 = v39;
    v9 = *(v39 + 16);
    v8 = *(v39 + 24);
    v10 = v8 >> 1;
    v11 = v9 + 1;
    if (v8 >> 1 <= v9)
    {
      sub_1A3956A00((v8 > 1), v9 + 1, 1);
      v7 = v39;
      v8 = *(v39 + 24);
      v10 = v8 >> 1;
    }

    *(v7 + 16) = v11;
    *(v7 + 8 * v9 + 32) = 0xBFF0000000000000;
    v12 = v9 + 2;
    if (v10 < (v9 + 2))
    {
      sub_1A3956A00((v8 > 1), v9 + 2, 1);
      v7 = v39;
    }

    *(v7 + 16) = v12;
    *(v7 + 8 * v11 + 32) = 0xBFE9937E1CD22427;
    v13 = *(v7 + 24);
    v14 = v9 + 3;
    if ((v9 + 3) > (v13 >> 1))
    {
      sub_1A3956A00((v13 > 1), v9 + 3, 1);
    }

    v15 = v39;
    *(v39 + 16) = v14;
    *(v39 + 8 * v12 + 32) = 0xBFE10BDCB8C42F57;
    v16 = *(v39 + 24);
    v17 = v9 + 4;
    if ((v9 + 4) > (v16 >> 1))
    {
      sub_1A3956A00((v16 > 1), v9 + 4, 1);
      v15 = v39;
    }

    *(v15 + 16) = v17;
    *(v15 + 8 * v14 + 32) = 0xBFCA827999FCEF30;
    v18 = *(v15 + 24);
    v19 = v9 + 5;
    if ((v9 + 5) > (v18 >> 1))
    {
      sub_1A3956A00((v18 > 1), v9 + 5, 1);
      v15 = v39;
    }

    *(v15 + 16) = v19;
    *(v15 + 8 * v17 + 32) = 0x3FC555975563585ELL;
    v20 = *(v15 + 24);
    v21 = v9 + 6;
    if ((v9 + 6) > (v20 >> 1))
    {
      sub_1A3956A00((v20 > 1), v9 + 6, 1);
    }

    v22 = v39;
    *(v39 + 16) = v21;
    *(v39 + 8 * v19 + 32) = 0x3FE2625A310BDF1ELL;
    v23 = *(v39 + 24);
    v24 = v9 + 7;
    if ((v9 + 7) > (v23 >> 1))
    {
      sub_1A3956A00((v23 > 1), v9 + 7, 1);
      v22 = v39;
    }

    *(v22 + 16) = v24;
    *(v22 + 8 * v21 + 32) = 0x3FF0000000000000;
    sub_1A3A31FD0();
    if (v24 < 1)
    {
      __break(1u);
    }

    else
    {
      v25 = 32;
      do
      {
        v26 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:*(v22 + v25) green:0.0 blue:1.0 - *(v22 + v25) alpha:1.0 - *(v22 + v25)];
        v27 = [v26 CGColor];

        sub_1A3A31FA0();
        sub_1A3A31FE0();
        sub_1A3A31FF0();
        sub_1A3A31FB0();
        v25 += 8;
        --v24;
      }

      while (v24);
      type metadata accessor for CGColor(0);
      v28 = sub_1A3A31990();

      v29 = CGGradientCreateWithColors(DeviceRGB, v28, dbl_1F1655748);
      if (!v29)
      {
        result = sub_1A3A32070("Fatal error", 11, 2, 0, 0xE000000000000000, "CameraUI/ModeWheelOverlay.swift", 31, 2, 177, 0);
        goto LABEL_40;
      }

      v30 = v29;
      v31 = 0.0;
      if (a2)
      {
        v32 = 44.0;
      }

      else
      {
        v32 = 0.0;
      }

      if (a2)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = 44.0;
      }

      if (a1)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = v32;
      }

      if (a1)
      {
        v35 = 0.0;
      }

      else
      {
        v32 = 0.0;
        v35 = v33;
      }

      if (a1)
      {
        v31 = v33;
      }

      CGContextDrawLinearGradient(v6, v29, *(&v31 - 1), *(&v32 - 1), 0);
      Image = CGBitmapContextCreateImage(v6);
      if (Image)
      {
        v37 = Image;

        return v37;
      }
    }

    __break(1u);
  }

  result = sub_1A3A32070("Fatal error", 11, 2, 0, 0xE000000000000000, "CameraUI/ModeWheelOverlay.swift", 31, 2, 153, 0);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1A39E2E00()
{
  result = qword_1ED999188;
  if (!qword_1ED999188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100A20, &qword_1A3A81D30);
    sub_1A38A08F8(qword_1ED999190, &qword_1EB100A88, &qword_1A3A81D98, MEMORY[0x1E6981880]);
    sub_1A38A08F8(qword_1ED996D80, &qword_1EB0FDB50, &qword_1A3A6F470, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED999188);
  }

  return result;
}

void sub_1A39E2EEC(uint64_t a1)
{
  sub_1A39E30E8(319, &qword_1ED996DF0, type metadata accessor for ModeWheelGestureState, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    sub_1A38BF120();
    if (v2 <= 0x3F)
    {
      sub_1A394A65C();
      if (v3 <= 0x3F)
      {
        sub_1A39E3084(319);
        if (v4 <= 0x3F)
        {
          sub_1A39E30E8(319, &qword_1ED9967B8, type metadata accessor for ChromeViewModel, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A39E3084(uint64_t a1)
{
  if (!qword_1EB0FE800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDA08, &unk_1A3A6F500);
    v1 = sub_1A3A30FC0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB0FE800);
    }
  }
}

void sub_1A39E30E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A39E3190@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1A3A31DE0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

double sub_1A39E31FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_1A3A2F7F0();
  sub_1A3A30950();

  return result;
}

uint64_t (*sub_1A39E32F8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A388F6D8(a1, &v15, &qword_1EB0FDA10, &qword_1A3A6F260);
  if (*(&v17 + 1))
  {
    v20 = v15;
    v21 = v16;
    v22 = v17;
    v23 = v18;
    sub_1A38DE880(a1, &v15);
    v9 = swift_allocObject();
    v10 = v21;
    *(v9 + 16) = v20;
    *(v9 + 32) = v10;
    v11 = v23;
    *(v9 + 48) = v22;
    *(v9 + 64) = v11;
    v12 = v18;
    *(v9 + 112) = v17;
    *(v9 + 128) = v12;
    *(v9 + 144) = v19;
    v13 = v16;
    *(v9 + 80) = v15;
    *(v9 + 96) = v13;
    *(v9 + 152) = a2;
    *(v9 + 160) = a4;
    *(v9 + 168) = a5;
    sub_1A3A2EA60();
    return sub_1A39E73E8;
  }

  else
  {
    sub_1A388F740(&v15, &qword_1EB0FDA10, &qword_1A3A6F260);
    return 0;
  }
}

uint64_t sub_1A39E3414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v71 = a1;
  v2 = a1 - 8;
  v103 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v101 = v3;
  v102 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1A3A2FEE0();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC9F0, &qword_1A3A6D300);
  v106 = v5;
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100A90, &qword_1A3A81E10);
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  sub_1A3A31DE0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100A98, &qword_1A3A81E18);
  v105 = *(v2 + 32);
  sub_1A3A2FA90();
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  sub_1A3A31DE0();
  swift_getTupleTypeMetadata3();
  v6 = sub_1A3A31550();
  WitnessTable = swift_getWitnessTable();
  v78 = v6;
  v77 = WitnessTable;
  v8 = sub_1A3A31030();
  v79 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v67 - v9;
  v10 = sub_1A3A2FA90();
  v84 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v67 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC9B8, &qword_1A3A6D2E0);
  v12 = sub_1A3A2FA90();
  v85 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v67 - v13;
  v14 = sub_1A3A2FA90();
  v93 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v67 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100AA0, &qword_1A3A81E20);
  v16 = sub_1A3A2FA90();
  v94 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v92 = &v67 - v17;
  v18 = sub_1A3A2FA90();
  v98 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v97 = &v67 - v19;
  v70 = swift_getWitnessTable();
  v120 = v70;
  v121 = MEMORY[0x1E697E040];
  v20 = swift_getWitnessTable();
  v21 = MEMORY[0x1E697F548];
  v22 = sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8, &qword_1A3A6D2E0, MEMORY[0x1E697F548]);
  v72 = v20;
  v118 = v20;
  v119 = v22;
  v73 = swift_getWitnessTable();
  v116 = v73;
  v117 = v22;
  v95 = v14;
  v23 = swift_getWitnessTable();
  v24 = sub_1A38A08F8(&qword_1EB100AA8, &qword_1EB100AA0, &qword_1A3A81E20, v21);
  v81 = v23;
  v114 = v23;
  v115 = v24;
  v96 = v16;
  v86 = swift_getWitnessTable();
  v112 = v86;
  v113 = v22;
  v25 = swift_getWitnessTable();
  v99 = v18;
  v108 = v18;
  v109 = MEMORY[0x1E69E6370];
  v89 = v25;
  v110 = v25;
  v111 = MEMORY[0x1E69E6388];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v90 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v87 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v88 = &v67 - v28;
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v29 = off_1ED997FE0;
  swift_getKeyPath(asc_1A3A81E28);
  v108 = v29;
  sub_1A39E6DE4(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  sub_1A3A2EA60();
  sub_1A3952DB8();

  MEMORY[0x1EEE9AC00](v30);
  v31 = v105;
  *(&v67 - 6) = v106;
  *(&v67 - 5) = v31;
  v32 = v71;
  v33 = *(v71 + 40);
  v75 = *(v71 + 32);
  *(&v67 - 4) = v75;
  *(&v67 - 3) = v33;
  v74 = v33;
  v34 = v100;
  *(&v67 - 2) = v100;
  sub_1A3A2FF40();
  v35 = v76;
  sub_1A3A31020();
  sub_1A3A31480();
  v36 = v82;
  sub_1A3A30BF0();
  (*(v79 + 8))(v35, v8);
  sub_1A3A314E0();
  v37 = &v34[*(v32 + 76)];
  v38 = *v37;
  v39 = *(v37 + 1);
  LOBYTE(v108) = v38;
  v109 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A3A30F90();
  LOBYTE(v108) = v107;
  v40 = MEMORY[0x1E69E6370];
  v41 = MEMORY[0x1E69E6388];
  v42 = v83;
  sub_1A3A30CD0();

  (*(v84 + 8))(v36, v10);
  sub_1A3A314E0();
  LOBYTE(v108) = sub_1A39E5A88(v32);
  v43 = v80;
  sub_1A3A30CD0();

  (*(v85 + 8))(v42, v12);
  sub_1A3A314E0();
  v44 = &v34[*(v32 + 84)];
  v45 = *v44;
  v46 = v44[8];
  sub_1A3A2EA60();
  if ((v46 & 1) == 0)
  {
    sub_1A3A31C30();
    v47 = sub_1A3A305C0();
    sub_1A3A2F270();

    v48 = v67;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v68 + 8))(v48, v69);
    v45 = v108;
  }

  swift_getKeyPath(asc_1A3A81E50);
  v108 = v45;
  sub_1A39E6DE4(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v49 = v45[74];

  v108 = v49;
  type metadata accessor for CAMCaptureMode(0);
  sub_1A39E6DE4(&qword_1ED9965F8, type metadata accessor for CAMCaptureMode, &unk_1A3A6B2DC);
  v50 = v92;
  v51 = v95;
  sub_1A3A30CD0();

  (*(v93 + 8))(v43, v51);
  sub_1A3A314E0();
  LOBYTE(v108) = sub_1A39E5AF0(v32) & 1;
  v52 = v97;
  v53 = v96;
  sub_1A3A30CD0();

  (*(v94 + 8))(v50, v53);
  LOBYTE(v108) = sub_1A39E5AF0(v32) & 1;
  v54 = v103;
  v55 = v102;
  (*(v103 + 16))(v102, v34, v32);
  v56 = (*(v54 + 80) + 48) & ~*(v54 + 80);
  v57 = swift_allocObject();
  v58 = v105;
  *(v57 + 2) = v106;
  *(v57 + 3) = v58;
  v59 = v74;
  *(v57 + 4) = v75;
  *(v57 + 5) = v59;
  (*(v54 + 32))(&v57[v56], v55, v32);
  v60 = v87;
  v61 = v99;
  v62 = v89;
  sub_1A3A30CA0();

  (*(v98 + 8))(v52, v61);
  v108 = v61;
  v109 = v40;
  v110 = v62;
  v111 = v41;
  swift_getOpaqueTypeConformance2();
  v63 = v88;
  v64 = OpaqueTypeMetadata2;
  sub_1A3964BD0();
  v65 = *(v90 + 8);
  v65(v60, v64);
  sub_1A3964BD0();
  return (v65)(v63, v64);
}

uint64_t sub_1A39E431C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v218 = a1;
  v210 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100A90, &qword_1A3A81E10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC9F0, &qword_1A3A6D300);
  v11 = sub_1A3A2FA90();
  swift_getTupleTypeMetadata2();
  v12 = sub_1A3A31550();
  v207 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v193 = &v169[-v13];
  v189 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v188 = &v169[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v194 = v11;
  v190 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v192 = &v169[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v191 = &v169[-v19];
  v219 = v20;
  v209 = sub_1A3A31DE0();
  v206 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v208 = &v169[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v217 = &v169[-v23];
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100AB0, &qword_1A3A81F18);
  MEMORY[0x1EEE9AC00](v199);
  v200 = &v169[-v24];
  v236 = a2;
  *&v237 = a3;
  v203 = a3;
  v25 = a4;
  *(&v237 + 1) = a4;
  v238 = a5;
  v204 = a5;
  v26 = type metadata accessor for ModeWheelRow(0, &v236);
  v182 = *(v26 - 8);
  v178 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v179 = &v169[-v27];
  v177 = type metadata accessor for ModePicker(0);
  v180 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v183 = &v169[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v181 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v184 = &v169[-v30];
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100AB8, &qword_1A3A81F20);
  MEMORY[0x1EEE9AC00](v197);
  v185 = &v169[-v31];
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100A98, &qword_1A3A81E18);
  MEMORY[0x1EEE9AC00](v202);
  v205 = &v169[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v33);
  v216 = &v169[-v34];
  v35 = sub_1A3A2FA90();
  v212 = v10;
  swift_getTupleTypeMetadata2();
  v36 = sub_1A3A31550();
  v195 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v176 = &v169[-v37];
  v38 = sub_1A3A2FB60();
  v211 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v169[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = a2;
  *&v173 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v169[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v174 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v169[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v48);
  v175 = &v169[-v49];
  v215 = v36;
  v50 = sub_1A3A31DE0();
  v214 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v169[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v53);
  v220 = &v169[-v54];
  v221 = v26;
  v55 = sub_1A39E5A88(v26);
  v187 = v25;
  v186 = v41;
  v198 = v38;
  v196 = v40;
  if (v55)
  {
    (*(v218 + v221[15]))();
    sub_1A3A2FB70();
    v56 = sub_1A39E6DE4(&qword_1ED999228, MEMORY[0x1E697EA28], MEMORY[0x1E697EA20]);
    v57 = sub_1A39E31FC(v40, v41, v38, v25, v56);
    (*(v211 + 8))(v40, v38, v57);
    (*(v173 + 8))(v44, v41);
    v58 = sub_1A38A08F8(&qword_1ED9966F8, &qword_1EB0FC9F0, &qword_1A3A6D300, MEMORY[0x1E697FDC0]);
    v222 = v25;
    v223 = v58;
    WitnessTable = swift_getWitnessTable();
    v60 = v175;
    sub_1A3964BD0();
    v61 = v174;
    v62 = *(v174 + 8);
    v62(v47, v35);
    (*(v61 + 16))(v47, v60, v35);
    v236 = 0;
    LOBYTE(v237) = 0;
    *(&v237 + 1) = 0xBFF0000000000000;
    v233 = v47;
    v234 = &v236;
    v230 = v35;
    v231 = v212;
    v224 = WitnessTable;
    v225 = sub_1A39E6E2C();
    v63 = v176;
    sub_1A3961B84(&v233, 2uLL, &v230);
    v62(v60, v35);
    v62(v47, v35);
    v64 = v195;
    v65 = v215;
    (*(v195 + 32))(v52, v63, v215);
    (*(v64 + 56))(v52, 0, 1, v65);
  }

  else
  {
    (*(v195 + 56))(v52, 1, 1, v215);
  }

  swift_getWitnessTable();
  v66 = v214;
  (*(v214 + 16))(v220, v52, v50);
  (*(v66 + 8))(v52, v50);
  v67 = v52;
  v68 = v221;
  v69 = v218;
  v70 = sub_1A39E5AF0(v221);
  v201 = v50;
  v213 = v67;
  if (v70)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00, &unk_1A3A6F250);
    v71 = v184;
    sub_1A3A311B0();
    v72 = sub_1A39E5F84(v68);
    v73 = v69 + v68[19];
    v74 = *v73;
    v75 = *(v73 + 8);
    LOBYTE(v233) = v74;
    v234 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
    sub_1A3A30FB0();
    v195 = v236;
    v176 = v237;
    LODWORD(v175) = BYTE8(v237);
    v76 = (v69 + v68[20]);
    v78 = *v76;
    v77 = v76[1];
    v233 = v78;
    v234 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE910, &qword_1A3A75398);
    sub_1A3A30FB0();
    v174 = v236;
    v173 = v237;
    v79 = v69 + v68[18];
    v80 = *v79;
    v81 = *(v79 + 8);
    LOBYTE(v233) = v80;
    v234 = v81;
    sub_1A3A30FB0();
    v172 = v236;
    v171 = v237;
    v170 = BYTE8(v237);
    v82 = v68[14];
    v83 = v69;
    v84 = *(v69 + v82);
    v85 = (v83 + v221[17]);
    v87 = *v85;
    v86 = v85[1];
    v88 = v177;
    v89 = (v71 + *(v177 + 36));
    v90 = (v71 + *(v177 + 40));
    sub_1A38C9AFC();
    sub_1A3A2EA60();
    v91 = sub_1A3A31C70();
    type metadata accessor for Debouncer();
    v92 = swift_allocObject();
    *(v92 + 16) = 0;
    *(v92 + 24) = v91;
    v233 = v92;
    sub_1A3A30F80();
    v93 = v237;
    *v90 = v236;
    v90[1] = v93;
    v94 = v88[11];
    *(v71 + v94) = swift_getKeyPath(a8_10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
    swift_storeEnumTagMultiPayload();
    v95 = v71 + v88[12];
    type metadata accessor for ChromeViewModel(0);
    sub_1A39E6DE4(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    *v95 = sub_1A3A2F650();
    *(v95 + 8) = v96 & 1;
    v97 = v88[15];
    *(v71 + v97) = swift_getKeyPath(byte_1A3A81F78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB8, &qword_1A3A6F660);
    swift_storeEnumTagMultiPayload();
    v98 = v71 + v88[5];
    v99 = v176;
    *v98 = v195;
    *(v98 + 8) = v99;
    *(v98 + 16) = v175;
    v100 = v71 + v88[13];
    *v100 = v72;
    *(v100 + 8) = 0;
    *(v71 + v88[8]) = v84;
    *v89 = v87;
    v89[1] = v86;
    v101 = v71 + v88[6];
    *v101 = v174;
    *(v101 + 8) = v173;
    v102 = v71 + v88[7];
    v103 = v171;
    *v102 = v172;
    *(v102 + 8) = v103;
    *(v102 + 16) = v170;
    v104 = *(v83 + v221[13]);
    v105 = v182;
    v106 = v179;
    (*(v182 + 16))(v179, v83, v221);
    v107 = (*(v105 + 80) + 48) & ~*(v105 + 80);
    v108 = swift_allocObject();
    v109 = v203;
    *(v108 + 2) = v186;
    *(v108 + 3) = v109;
    v110 = v204;
    *(v108 + 4) = v187;
    *(v108 + 5) = v110;
    (*(v105 + 32))(&v108[v107], v106, v221);
    v111 = sub_1A3A31470();
    v113 = v112;
    v114 = v183;
    sub_1A39E7214(v71, v183);
    v115 = (*(v180 + 80) + 16) & ~*(v180 + 80);
    v116 = (v181 + v115 + 7) & 0xFFFFFFFFFFFFFFF8;
    v117 = (v116 + 15) & 0xFFFFFFFFFFFFFFF8;
    v118 = swift_allocObject();
    sub_1A39E7278(v114, v118 + v115);
    *(v118 + v116) = v104;
    v69 = v83;
    v68 = v221;
    v119 = (v118 + v117);
    *v119 = sub_1A39E7158;
    v119[1] = v108;
    v120 = v185;
    sub_1A39E7214(v71, v185);
    v121 = &v120[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100AD0, &qword_1A3A81F28) + 36)];
    *v121 = sub_1A39E72DC;
    v121[1] = v118;
    v121[2] = v111;
    v121[3] = v113;
    sub_1A39E738C(v71);
    sub_1A39E6888(&v236, v68);
    v122 = v236;
    v123 = &v120[*(v197 + 36)];
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100AE8, &qword_1A3A81F38);
    v125 = *(v124 + 52);
    v126 = *MEMORY[0x1E697F468];
    v127 = sub_1A3A30000();
    (*(*(v127 - 8) + 104))(v123 + v125, v126, v127);
    *v123 = v122;
    *(v123 + *(v124 + 56)) = 256;
    sub_1A388F6D8(v120, v200, &qword_1EB100AB8, &qword_1A3A81F20);
    swift_storeEnumTagMultiPayload();
    sub_1A39E6BB8();
    sub_1A3A301F0();
    sub_1A388F740(v120, &qword_1EB100AB8, &qword_1A3A81F20);
  }

  else
  {
    v128 = v200;
    *v200 = 0;
    *(v128 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1A39E6BB8();
    sub_1A3A301F0();
  }

  v129 = v219;
  v130 = v208;
  v131 = v212;
  v132 = sub_1A39E5A88(v68);
  v133 = v198;
  v134 = v211;
  v135 = v196;
  if (v132)
  {
    v136 = v188;
    (*(v69 + v68[16]))();
    sub_1A3A2FB70();
    v137 = sub_1A39E6DE4(&qword_1ED999228, MEMORY[0x1E697EA28], MEMORY[0x1E697EA20]);
    v138 = v192;
    v139 = v203;
    v140 = v130;
    v141 = v204;
    v142 = sub_1A39E31FC(v135, v203, v133, v204, v137);
    (*(v134 + 8))(v135, v133, v142);
    (*(v189 + 8))(v136, v139);
    v143 = sub_1A38A08F8(&qword_1ED9966F8, &qword_1EB0FC9F0, &qword_1A3A6D300, MEMORY[0x1E697FDC0]);
    v226 = v141;
    v227 = v143;
    v144 = v194;
    v145 = swift_getWitnessTable();
    v146 = v191;
    sub_1A3964BD0();
    v147 = v190;
    v148 = *(v190 + 8);
    v148(v138, v144);
    v236 = 0;
    LOBYTE(v237) = 0;
    *(&v237 + 1) = 0xBFF0000000000000;
    v233 = &v236;
    (*(v147 + 16))(v138, v146, v144);
    v234 = v138;
    v230 = v131;
    v231 = v144;
    v224 = sub_1A39E6E2C();
    v225 = v145;
    v149 = v193;
    sub_1A3961B84(&v233, 2uLL, &v230);
    v148(v146, v144);
    v148(v138, v144);
    v150 = v207;
    v151 = v219;
    (*(v207 + 32))(v140, v149, v219);
    (*(v150 + 56))(v140, 0, 1, v151);
    swift_getWitnessTable();
    v152 = v206;
    v153 = *(v206 + 16);
    v154 = v209;
    v153(v217, v140, v209);
    v155 = *(v152 + 8);
    v156 = v140;
    v157 = v140;
  }

  else
  {
    (*(v207 + 56))(v130, 1, 1, v129);
    swift_getWitnessTable();
    v158 = v130;
    v159 = v206;
    v153 = *(v206 + 16);
    v154 = v209;
    v153(v217, v158, v209);
    v155 = *(v159 + 8);
    v156 = v158;
    v157 = v158;
  }

  v221 = v155;
  (v155)(v157, v154);
  v160 = v214;
  v161 = v213;
  v162 = v201;
  (*(v214 + 16))(v213, v220, v201);
  v236 = v161;
  v163 = v216;
  v164 = v205;
  sub_1A388F6D8(v216, v205, &qword_1EB100A98, &qword_1A3A81E18);
  *&v237 = v164;
  v165 = v217;
  v153(v156, v217, v154);
  *(&v237 + 1) = v156;
  v233 = v162;
  v234 = v202;
  v235 = v154;
  v229 = swift_getWitnessTable();
  v230 = swift_getWitnessTable();
  v231 = sub_1A39E6D58();
  v228 = swift_getWitnessTable();
  v232 = swift_getWitnessTable();
  sub_1A3961B84(&v236, 3uLL, &v233);
  v166 = v221;
  (v221)(v165, v154);
  sub_1A388F740(v163, &qword_1EB100A98, &qword_1A3A81E18);
  v167 = *(v160 + 8);
  v167(v220, v162);
  (v166)(v156, v154);
  sub_1A388F740(v164, &qword_1EB100A98, &qword_1A3A81E18);
  return (v167)(v213, v162);
}

BOOL sub_1A39E5A88(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A3A30F90();
  return (v2 & 1) == 0;
}

uint64_t sub_1A39E5AF0(uint64_t a1)
{
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 84));
  v8 = *v7;
  v9 = *(v7 + 8);
  sub_1A3A2EA60();
  v10 = v8;
  if ((v9 & 1) == 0)
  {
    sub_1A3A31C30();
    v11 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    v10 = v24;
  }

  swift_getKeyPath(byte_1A3A81E78);
  v24 = v10;
  sub_1A39E6DE4(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v12 = *(v10 + 1168);

  if (v12)
  {
    return 0;
  }

  sub_1A3A2EA60();
  v13 = v8;
  if ((v9 & 1) == 0)
  {
    sub_1A3A31C30();
    v14 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    v13 = v24;
  }

  swift_getKeyPath("ȾhG");
  v24 = v13;
  sub_1A3A2F080();

  v15 = *(v13 + 1154);

  if (v15)
  {
    return 0;
  }

  sub_1A3A2EA60();
  v16 = v8;
  if ((v9 & 1) == 0)
  {
    sub_1A3A31C30();
    v17 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    v16 = v24;
  }

  swift_getKeyPath(byte_1A3A81EC8);
  v24 = v16;
  sub_1A3A2F080();

  v18 = *(v16 + 1152);

  if (v18)
  {
    return 0;
  }

  sub_1A3A2EA60();
  if ((v9 & 1) == 0)
  {
    sub_1A3A31C30();
    v20 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    v8 = v24;
  }

  swift_getKeyPath(byte_1A3A81EF0);
  v24 = v8;
  sub_1A3A2F080();

  v21 = *(v8 + 584);
  if (v21 >= 3)
  {
    v24 = *(v8 + 584);
    result = sub_1A3A321F0();
    __break(1u);
  }

  else
  {
    v22 = 1u >> (v21 & 7);

    return v22;
  }

  return result;
}

double sub_1A39E5F84(uint64_t a1)
{
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 84));
  v8 = *v7;
  v9 = *(v7 + 8);
  sub_1A3A2EA60();
  if ((v9 & 1) == 0)
  {
    sub_1A3A31C30();
    v10 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    v8 = v14;
  }

  swift_getKeyPath(byte_1A3A81FE0);
  v14 = v8;
  sub_1A39E6DE4(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v11 = *(v8 + 400);

  return v11 + -112.0;
}

void sub_1A39E6158(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v65 = a1;
  v61 = a7;
  v12 = sub_1A3A2FEE0();
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A3A310F0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100B00, &qword_1A3A81FA8);
  MEMORY[0x1EEE9AC00](v63);
  v19 = (&v58 - v18);
  v68 = a3;
  v69 = a4;
  v70 = a5;
  v71 = a6;
  v64 = type metadata accessor for ModeWheelRow(0, &v68);
  v20 = *(v64 + 52);
  v66 = a2;
  v21 = (*(a2 + v20) * 0.5 + 1.0) * 24.0;
  v22 = type metadata accessor for ModeLoupeBackground(0);
  v23 = v22[5];
  v24 = sub_1A3A31430();
  (*(*(v24 - 8) + 56))(v19 + v23, 1, 1, v24);
  v62 = (v19 + v22[7]);
  if (qword_1ED996458 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v14, qword_1ED99D850);
  v26 = *(v15 + 16);
  v26(v17, v25, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA40, &unk_1A3A6F290);
  v27 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA48, &qword_1A3A78090) - 8);
  v28 = (*(*v27 + 80) + 32) & ~*(*v27 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1A3A681C0;
  v30 = v29 + v28;
  v26(v30, v17, v14);
  *(v30 + v27[13]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA50, &qword_1A3A6F2A0);
  v31 = swift_allocObject();
  *(v31 + 40) = 0;
  v32 = *(*v31 + 136);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA58, &qword_1A3A6F2A8);
  (*(*(v33 - 8) + 56))(v31 + v32, 1, 1, v33);
  *(v31 + *(*v31 + 144)) = 0x3FA1111111111111;
  sub_1A3A2F0B0();
  (*(v15 + 8))(v17, v14);
  *(v31 + 16) = v29;
  *(v31 + 24) = xmmword_1A3A6EB10;
  v67 = v31;
  sub_1A3A30F80();
  v34 = v69;
  v35 = v62;
  *v62 = v68;
  v35[1] = v34;
  *(v19 + v22[8]) = 3.0;
  *v19 = v21;
  *(v19 + v22[6]) = v65 & 1;
  v36 = v64;
  v37 = v66;
  sub_1A39E680C(v64);
  v39 = v38;
  v40 = v19 + *(v63 + 36);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100AE8, &qword_1A3A81F38);
  v42 = *(v41 + 52);
  v43 = *MEMORY[0x1E697F468];
  v44 = sub_1A3A30000();
  (*(*(v44 - 8) + 104))(&v40[v42], v43, v44);
  *v40 = v39;
  *&v40[*(v41 + 56)] = 256;
  v45 = v37 + *(v36 + 84);
  v46 = *v45;
  LOBYTE(v39) = *(v45 + 8);
  sub_1A3A2EA60();
  if ((v39 & 1) == 0)
  {
    sub_1A3A31C30();
    v47 = sub_1A3A305C0();
    sub_1A3A2F270();

    v48 = v58;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v59 + 8))(v48, v60);
    v46 = v68;
  }

  swift_getKeyPath(byte_1A3A81FB0);
  v68 = v46;
  sub_1A39E6DE4(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v49 = *(v46 + 848);
  v50 = *(v46 + 856);

  if (v50)
  {
    __break(1u);
  }

  else
  {
    v51 = sub_1A3A30460();
    sub_1A3A31590();
    v53 = v52;
    v55 = v54;
    v56 = v61;
    sub_1A39E73FC(v19, v61);
    v57 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB100B08, &qword_1A3A81FD8) + 36);
    *v57 = 0x70756F4C65646F4DLL;
    *(v57 + 8) = 0xE900000000000065;
    *(v57 + 16) = v49;
    *(v57 + 24) = v51;
    *(v57 + 32) = v53;
    *(v57 + 40) = v55;
    *(v57 + 48) = 0;
  }
}

void sub_1A39E680C(uint64_t a1)
{
  if (sub_1A39E6A38(a1))
  {
    if (qword_1ED996448 != -1)
    {
      swift_once();
    }

    sub_1A3A2EA60();
  }

  else
  {

    sub_1A3A30DB0();
  }
}

void sub_1A39E6888(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (sub_1A39E6980(a2))
  {
    if (qword_1ED996448 != -1)
    {
      swift_once();
    }

    v3 = sub_1A3A2EA60();
  }

  else
  {
    v3 = sub_1A3A30DB0();
  }

  *a1 = v3;
}

void sub_1A39E68F8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((*a2 & 1) == 0)
  {
    v10 = a4;
    v11 = a5;
    v12 = a6;
    v13 = a7;
    v7 = (a3 + *(type metadata accessor for ModeWheelRow(0, &v10) + 76));
    v8 = *v7;
    v9 = *(v7 + 1);
    LOBYTE(v10) = v8;
    v11 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
    sub_1A3A30FA0();
  }
}

uint64_t sub_1A39E6980(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A3A30F90();
  if (v3 == 1)
  {
    sub_1A3A30F90();
    v1 = v3 ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1A39E6A38(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A3A30F90();
  if (v2 != 1)
  {
    return 0;
  }

  sub_1A3A30F90();
  return v2;
}

void sub_1A39E6AFC(uint64_t a1, _BYTE *a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v11[0] = v2[2];
  v5 = v11[0];
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v9 = *(type metadata accessor for ModeWheelRow(0, v11) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  sub_1A39E68F8(a1, a2, v10, v5, v6, v7, v8);
}

unint64_t sub_1A39E6BB8()
{
  result = qword_1EB100AC0;
  if (!qword_1EB100AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100AB8, &qword_1A3A81F20);
    sub_1A39E6C70();
    sub_1A38A08F8(&qword_1ED999220, &qword_1EB100AE8, &qword_1A3A81F38, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100AC0);
  }

  return result;
}

unint64_t sub_1A39E6C70()
{
  result = qword_1EB100AC8;
  if (!qword_1EB100AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100AD0, &qword_1A3A81F28);
    sub_1A39E6DE4(&qword_1ED999218, type metadata accessor for ModePicker, &unk_1A3A6F510);
    sub_1A38A08F8(&qword_1EB100AD8, &qword_1EB100AE0, &qword_1A3A81F30, MEMORY[0x1E6980968]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100AC8);
  }

  return result;
}

unint64_t sub_1A39E6D58()
{
  result = qword_1EB100AF0;
  if (!qword_1EB100AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100A98, &qword_1A3A81E18);
    sub_1A39E6BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100AF0);
  }

  return result;
}

uint64_t sub_1A39E6DE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A39E6E2C()
{
  result = qword_1ED999230;
  if (!qword_1ED999230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100A90, &qword_1A3A81E10);
    sub_1A38A08F8(&qword_1ED999238, &qword_1EB100AF8, &qword_1A3A81F40, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED999230);
  }

  return result;
}

uint64_t objectdestroyTm_16()
{
  v1 = *(v0 + 32);
  v13[0] = *(v0 + 16);
  v13[1] = v1;
  v2 = *(type metadata accessor for ModeWheelRow(0, v13) - 8);
  v3 = v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80));

  v4 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00, &unk_1A3A6F250) + 32);
  v5 = type metadata accessor for ModeWheelGestureState(0);
  v6 = *(v5 + 36);
  v7 = sub_1A3A2ECE0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v9 = *(v5 + 40);
  v10 = sub_1A3A2F620();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  return swift_deallocObject();
}

void sub_1A39E7158(int a1@<W0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v11[0] = v2[2];
  v5 = v11[0];
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v9 = *(type metadata accessor for ModeWheelRow(0, v11) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  sub_1A39E6158(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_1A39E7214(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModePicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A39E7278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModePicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_1A39E72DC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  v5 = *(type metadata accessor for ModePicker(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  result = sub_1A39E32F8(a1, *(v2 + v7), v2 + v6, *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_1A39E738C(uint64_t a1)
{
  v2 = type metadata accessor for ModePicker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A39E73FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100B00, &qword_1A3A81FA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A39E746C(uint64_t a1)
{
  sub_1A38C6DE8();
  if (v1 <= 0x3F)
  {
    sub_1A38BF120();
    if (v2 <= 0x3F)
    {
      sub_1A39E765C(319, qword_1ED996A70, &qword_1EB0FD160, qword_1A3A81580, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1A38BD87C();
        if (v4 <= 0x3F)
        {
          sub_1A39E765C(319, &qword_1EB100B90, &qword_1EB0FFD28, &qword_1A3A7C6D0, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1A3927A30(319, qword_1ED9967C0, MEMORY[0x1E697F6A0]);
            if (v6 <= 0x3F)
            {
              sub_1A3927A30(319, &qword_1ED9967B8, type metadata accessor for ChromeViewModel);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A39E765C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A39E7704()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78, &qword_1A3A6EC40);
  sub_1A3A30310();
  return v1;
}

uint64_t sub_1A39E7754@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100B98, &qword_1A3A82088);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BA0, &unk_1A3A82090);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD930, &qword_1A3A6F1B8);
  v31 = a1 + 5;
  v30 = a1[2];
  v3 = sub_1A3A2FA90();
  v28 = a1[4];
  v29 = a1;
  v57 = v28;
  v58 = sub_1A38A08F8(&qword_1EB0FD928, &qword_1EB0FD930, &qword_1A3A6F1B8, "=x@K");
  v4 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for GridButton(255, v3, WitnessTable, v6);
  v27 = a1[3];
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31120();
  sub_1A3A2FA90();
  v55 = swift_getWitnessTable();
  v56 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A3A30590();
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BA8, &qword_1A3A820A0);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  swift_getTupleTypeMetadata3();
  sub_1A3A31550();
  sub_1A3A31DE0();
  sub_1A39EF638();
  sub_1A3A31220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BC0, &qword_1A3A820A8);
  sub_1A3A2FA90();
  v49 = swift_getWitnessTable();
  v48 = swift_getWitnessTable();
  v46 = swift_getWitnessTable();
  v47 = sub_1A38A08F8(&qword_1EB100BC8, &qword_1EB100BC0, &qword_1A3A820A8, MEMORY[0x1E6980620]);
  swift_getWitnessTable();
  sub_1A3A31270();
  sub_1A3A2FA90();
  v54 = MEMORY[0x1E69E6540];
  sub_1A3A31220();
  v44 = swift_getWitnessTable();
  v45 = MEMORY[0x1E697E5D8];
  v43 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3A307D0();
  sub_1A3A2FA90();
  v41 = swift_getWitnessTable();
  v42 = MEMORY[0x1E697EBF8];
  v26 = v4;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v7 = sub_1A3A2FA90();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = MEMORY[0x1E69805D0];
  v8 = swift_getWitnessTable();
  v50 = v7;
  v51 = MEMORY[0x1E69E6370];
  v52 = v8;
  v53 = MEMORY[0x1E69E6380];
  sub_1A3A31040();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC9F0, &qword_1A3A6D300);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  swift_getWitnessTable();
  v9 = sub_1A3A31140();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC9B8, &qword_1A3A6D2E0);
  v13 = sub_1A3A2FA90();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - v18;
  *&v20 = v28;
  *(&v20 + 1) = *v31;
  *&v21 = v30;
  *(&v21 + 1) = v27;
  v34 = v21;
  v35 = v20;
  v36 = v32;
  sub_1A3A31480();
  sub_1A3A31130();
  sub_1A3A314E0();
  LOBYTE(v50) = sub_1A39E9738(v29) & 1;
  v22 = swift_getWitnessTable();
  sub_1A3A30CD0();

  (*(v10 + 8))(v12, v9);
  v23 = sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8, &qword_1A3A6D2E0, MEMORY[0x1E697F548]);
  v37 = v22;
  v38 = v23;
  swift_getWitnessTable();
  sub_1A3964BD0();
  v24 = *(v14 + 8);
  v24(v16, v13);
  sub_1A3964BD0();
  return (v24)(v19, v13);
}

uint64_t sub_1A39E8018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X8>)
{
  v103 = a5;
  v101 = a4;
  v100 = a3;
  v102 = a2;
  v93 = a1;
  v94 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100B98, &qword_1A3A82088);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BA0, &unk_1A3A82090);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD930, &qword_1A3A6F1B8);
  v8 = sub_1A3A2FA90();
  v115 = a4;
  v116 = sub_1A38A08F8(&qword_1EB0FD928, &qword_1EB0FD930, &qword_1A3A6F1B8, "=x@K");
  v97 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for GridButton(255, v8, WitnessTable, v10);
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31120();
  sub_1A3A2FA90();
  v113 = swift_getWitnessTable();
  v114 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A3A30590();
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BA8, &qword_1A3A820A0);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  swift_getTupleTypeMetadata3();
  sub_1A3A31550();
  sub_1A3A31DE0();
  v11 = sub_1A39EF638();
  v12 = MEMORY[0x1E69E6540];
  sub_1A3A31220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BC0, &qword_1A3A820A8);
  sub_1A3A2FA90();
  v107[16] = swift_getWitnessTable();
  v107[15] = swift_getWitnessTable();
  v107[13] = swift_getWitnessTable();
  v107[14] = sub_1A38A08F8(&qword_1EB100BC8, &qword_1EB100BC0, &qword_1A3A820A8, MEMORY[0x1E6980620]);
  swift_getWitnessTable();
  sub_1A3A31270();
  v13 = sub_1A3A2FA90();
  v108 = v7;
  v109 = MEMORY[0x1E69E6530];
  v110 = v13;
  v111 = v11;
  v112 = v12;
  sub_1A3A31220();
  v107[11] = swift_getWitnessTable();
  v107[12] = MEMORY[0x1E697E5D8];
  v107[10] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3A307D0();
  v14 = sub_1A3A2FA90();
  v91 = sub_1A3A2FA90();
  v92 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v90 = &v70 - v17;
  v87 = sub_1A3A2FF20();
  v88 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v102;
  v109 = v100;
  v110 = v101;
  v111 = v103;
  v19 = type metadata accessor for ControlGrid(0, &v108);
  v84 = *(v19 - 1);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v83 = &v70 - v20;
  v104 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v70 - v22;
  v107[8] = swift_getWitnessTable();
  v107[9] = MEMORY[0x1E697EBF8];
  v24 = swift_getWitnessTable();
  v108 = v14;
  v109 = v24;
  v25 = v24;
  v99 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v81 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v27 = &v70 - v26;
  v28 = sub_1A3A2FA90();
  v82 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v75 = &v70 - v29;
  v108 = v14;
  v109 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v107[6] = OpaqueTypeConformance2;
  v107[7] = MEMORY[0x1E69805D0];
  v76 = swift_getWitnessTable();
  v108 = v28;
  v109 = MEMORY[0x1E69E6370];
  v110 = v76;
  v111 = MEMORY[0x1E69E6380];
  v30 = sub_1A3A31040();
  v80 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v71 = &v70 - v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC9F0, &qword_1A3A6D300);
  v95 = sub_1A3A2FA90();
  v98 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v72 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v96 = &v70 - v34;
  v35 = v19;
  v36 = v93;
  sub_1A39E8F9C(0, v19, v23);
  sub_1A39E7704();
  v77 = v14;
  v74 = v23;
  sub_1A3A30B10();

  v37 = *(v104 + 8);
  v104 += 8;
  v78 = v37;
  v37(v23, v14);
  v38 = v84;
  v39 = v83;
  (*(v84 + 16))(v83, v36, v19);
  v40 = (*(v38 + 80) + 48) & ~*(v38 + 80);
  v41 = swift_allocObject();
  v42 = v100;
  *(v41 + 2) = v102;
  *(v41 + 3) = v42;
  v43 = v103;
  *(v41 + 4) = v101;
  *(v41 + 5) = v43;
  (*(v38 + 32))(&v41[v40], v39, v19);
  v44 = v75;
  v45 = OpaqueTypeMetadata2;
  sub_1A3A30C90();

  (*(v81 + 8))(v27, v45);
  LOBYTE(v108) = sub_1A39E9738(v19) & 1;
  v46 = v71;
  sub_1A3A30BB0();
  (*(v82 + 8))(v44, v28);
  v47 = v86;
  sub_1A3A2FF10();
  v48 = swift_getWitnessTable();
  v49 = sub_1A39F1444(&qword_1ED996708, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
  v50 = v72;
  v51 = v87;
  v52 = sub_1A39E31FC(v47, v30, v87, v48, v49);
  (*(v88 + 8))(v47, v51, v52);
  (*(v80 + 8))(v46, v30);
  v53 = sub_1A38A08F8(&qword_1ED9966F8, &qword_1EB0FC9F0, &qword_1A3A6D300, MEMORY[0x1E697FDC0]);
  v107[4] = v48;
  v107[5] = v53;
  v54 = v95;
  v102 = swift_getWitnessTable();
  sub_1A3964BD0();
  v55 = *(v98 + 8);
  v101 = v98 + 8;
  v103 = v55;
  v55(v50, v54);
  v56 = v74;
  sub_1A39E8F9C(1, v35, v74);
  v57 = v89;
  v58 = v77;
  v59 = v99;
  sub_1A3A30C20();
  v78(v56, v58);
  v60 = sub_1A39CC974();
  v107[2] = v59;
  v107[3] = v60;
  v61 = v91;
  v62 = swift_getWitnessTable();
  v63 = v90;
  sub_1A3964BD0();
  v64 = v92;
  v65 = *(v92 + 8);
  v65(v57, v61);
  v66 = v96;
  v67 = v95;
  (*(v98 + 16))(v50, v96, v95);
  v108 = v50;
  (*(v64 + 16))(v57, v63, v61);
  v109 = v57;
  v107[0] = v67;
  v107[1] = v61;
  v105 = v102;
  v106 = v62;
  sub_1A3961B84(&v108, 2uLL, v107);
  v65(v63, v61);
  v68 = v103;
  v103(v66, v67);
  v65(v57, v61);
  return v68(v50, v67);
}

uint64_t sub_1A39E8F9C@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a1;
  v33 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100B98, &qword_1A3A82088);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BA0, &unk_1A3A82090);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD930, &qword_1A3A6F1B8);
  v30 = a2 + 5;
  v29 = a2[2];
  v5 = sub_1A3A2FA90();
  v28 = a2[4];
  v55 = v28;
  v56 = sub_1A38A08F8(&qword_1EB0FD928, &qword_1EB0FD930, &qword_1A3A6F1B8, "=x@K");
  v34 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for GridButton(255, v5, WitnessTable, v7);
  v27 = a2[3];
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31120();
  sub_1A3A2FA90();
  v53 = swift_getWitnessTable();
  v54 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A3A30590();
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BA8, &qword_1A3A820A0);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  swift_getTupleTypeMetadata3();
  sub_1A3A31550();
  sub_1A3A31DE0();
  v8 = sub_1A39EF638();
  v9 = MEMORY[0x1E69E6540];
  sub_1A3A31220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BC0, &qword_1A3A820A8);
  sub_1A3A2FA90();
  v47 = swift_getWitnessTable();
  v46 = swift_getWitnessTable();
  v44 = swift_getWitnessTable();
  v45 = sub_1A38A08F8(&qword_1EB100BC8, &qword_1EB100BC0, &qword_1A3A820A8, MEMORY[0x1E6980620]);
  swift_getWitnessTable();
  sub_1A3A31270();
  v10 = sub_1A3A2FA90();
  v48 = v4;
  v49 = MEMORY[0x1E69E6530];
  v50 = v10;
  v51 = v8;
  v52 = v9;
  sub_1A3A31220();
  v42 = swift_getWitnessTable();
  v43 = MEMORY[0x1E697E5D8];
  v41 = swift_getWitnessTable();
  swift_getWitnessTable();
  v11 = sub_1A3A307D0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  v15 = sub_1A3A2FA90();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - v20;
  sub_1A3A31460();
  *&v22 = v28;
  *(&v22 + 1) = *v30;
  *&v23 = v29;
  *(&v23 + 1) = v27;
  v35 = v23;
  v36 = v22;
  v37 = v32;
  v38 = v31;
  sub_1A3A307C0();
  sub_1A3A31480();
  v26 = swift_getWitnessTable();
  sub_1A3A30C00();
  (*(v12 + 8))(v14, v11);
  v39 = v26;
  v40 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  sub_1A3964BD0();
  v24 = *(v16 + 8);
  v24(v18, v15);
  sub_1A3964BD0();
  return (v24)(v21, v15);
}

uint64_t sub_1A39E96CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  type metadata accessor for ControlGrid(0, v6);
  LOBYTE(v6[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78, &qword_1A3A6EC40);
  return sub_1A3A30300();
}

uint64_t sub_1A39E9738(uint64_t a1)
{
  v2 = sub_1A39EE6C0(a1);
  if (UIInterfaceOrientationIsPortrait(v2))
  {
    return 1;
  }

  return sub_1A39EE520(a1);
}

double sub_1A39E9788@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1A3A30DB0();
  v4 = sub_1A3A31480();
  sub_1A3A2FBF0(v10, 0, 1, 0, 1, v4, v5);
  v6 = v10[2];
  *(a2 + 56) = v10[3];
  v7 = v10[5];
  *(a2 + 72) = v10[4];
  *(a2 + 88) = v7;
  *(a2 + 104) = v10[6];
  result = *v10;
  v9 = v10[1];
  *(a2 + 8) = v10[0];
  *(a2 + 24) = v9;
  *a2 = v3;
  *(a2 + 40) = v6;
  return result;
}

uint64_t sub_1A39E982C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v61 = a6;
  v62 = a2;
  v58 = a1;
  v63 = a7;
  v71 = a3;
  v72 = a4;
  v55 = a3;
  v53 = a4;
  v73 = a5;
  v74 = a6;
  v54 = a5;
  v60 = type metadata accessor for ControlGrid(0, &v71);
  v57 = *(v60 - 8);
  v59 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v56 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100B98, &qword_1A3A82088);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BA0, &unk_1A3A82090);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD930, &qword_1A3A6F1B8);
  v10 = sub_1A3A2FA90();
  v11 = sub_1A38A08F8(&qword_1EB0FD928, &qword_1EB0FD930, &qword_1A3A6F1B8, "=x@K");
  v78 = a5;
  v79 = v11;
  v12 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for GridButton(255, v10, WitnessTable, v14);
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31120();
  v15 = sub_1A3A2FA90();
  v76 = swift_getWitnessTable();
  v77 = MEMORY[0x1E697EBF8];
  v51 = v12;
  v16 = swift_getWitnessTable();
  v71 = v15;
  v72 = v16;
  swift_getOpaqueTypeMetadata2();
  sub_1A3A30590();
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BA8, &qword_1A3A820A0);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  swift_getTupleTypeMetadata3();
  sub_1A3A31550();
  v17 = sub_1A3A31DE0();
  v18 = sub_1A39EF638();
  v50 = v9;
  v71 = v9;
  v72 = MEMORY[0x1E69E6530];
  v73 = v17;
  v74 = v18;
  v49 = v18;
  v75 = MEMORY[0x1E69E6540];
  sub_1A3A31220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BC0, &qword_1A3A820A8);
  sub_1A3A2FA90();
  v70 = swift_getWitnessTable();
  v69 = swift_getWitnessTable();
  v52 = MEMORY[0x1E69819D0];
  v19 = swift_getWitnessTable();
  v20 = sub_1A38A08F8(&qword_1EB100BC8, &qword_1EB100BC0, &qword_1A3A820A8, MEMORY[0x1E6980620]);
  v67 = v19;
  v68 = v20;
  swift_getWitnessTable();
  v47 = sub_1A3A31270();
  v48 = sub_1A3A2FA90();
  v71 = v9;
  v72 = MEMORY[0x1E69E6530];
  v73 = v48;
  v74 = v18;
  v75 = MEMORY[0x1E69E6540];
  v21 = sub_1A3A31220();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = MEMORY[0x1EEE9AC00](v25).n128_u64[0];
  v28 = &v45 - v27;
  v29 = v58;
  v30 = *(*(v58 + 16) + 16);
  v31 = 2;
  if (v30 != 2)
  {
    v31 = 3;
  }

  if (v30 % v31)
  {
    v32 = v30 / v31 + 1;
  }

  else
  {
    v32 = v30 / v31;
  }

  v71 = 0;
  v72 = v32;
  KeyPath = swift_getKeyPath(byte_1A3A82120, v26);
  v33 = v57;
  v34 = v56;
  v35 = v60;
  (*(v57 + 16))(v56, v29, v60);
  v36 = (*(v33 + 80) + 48) & ~*(v33 + 80);
  v37 = v36 + v59;
  v38 = swift_allocObject();
  v39 = v53;
  *(v38 + 2) = v55;
  *(v38 + 3) = v39;
  v40 = v61;
  *(v38 + 4) = v54;
  *(v38 + 5) = v40;
  (*(v33 + 32))(&v38[v36], v34, v35);
  v38[v37] = v62;
  v65 = swift_getWitnessTable();
  v66 = MEMORY[0x1E697E5D8];
  v41 = v48;
  v42 = swift_getWitnessTable();
  sub_1A3A31200(&v71, KeyPath, sub_1A39F0900, v38, v50, v41, v49, MEMORY[0x1E69E6540], v42);
  v64 = v42;
  swift_getWitnessTable();
  sub_1A3964BD0();
  v43 = *(v22 + 8);
  v43(v24, v21);
  sub_1A3964BD0();
  return (v43)(v28, v21);
}

uint64_t sub_1A39E9F78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a7;
  v42 = a6;
  v43 = a4;
  v45 = a3;
  v44 = a2;
  v47 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100B98, &qword_1A3A82088);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BA0, &unk_1A3A82090);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD930, &qword_1A3A6F1B8);
  v12 = sub_1A3A2FA90();
  v68 = a6;
  v69 = sub_1A38A08F8(&qword_1EB0FD928, &qword_1EB0FD930, &qword_1A3A6F1B8, "=x@K");
  v13 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for GridButton(255, v12, WitnessTable, v15);
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31120();
  sub_1A3A2FA90();
  v66 = swift_getWitnessTable();
  v67 = MEMORY[0x1E697EBF8];
  v41 = v13;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A3A30590();
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BA8, &qword_1A3A820A0);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  swift_getTupleTypeMetadata3();
  sub_1A3A31550();
  v16 = sub_1A3A31DE0();
  v17 = sub_1A39EF638();
  v61 = v11;
  v62 = MEMORY[0x1E69E6530];
  v63 = v16;
  v64 = v17;
  v65 = MEMORY[0x1E69E6540];
  sub_1A3A31220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BC0, &qword_1A3A820A8);
  v18 = sub_1A3A2FA90();
  v60 = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v57 = swift_getWitnessTable();
  v58 = sub_1A38A08F8(&qword_1EB100BC8, &qword_1EB100BC0, &qword_1A3A820A8, MEMORY[0x1E6980620]);
  v37[1] = v18;
  v37[0] = swift_getWitnessTable();
  v19 = sub_1A3A31270();
  v39 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v37 - v20;
  v22 = sub_1A3A2FA90();
  v40 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v38 = v37 - v26;
  v27 = *a1;
  v28 = v43;
  v48 = v43;
  v29 = a5;
  v49 = a5;
  v30 = v42;
  v31 = v46;
  v50 = v42;
  v51 = v46;
  v52 = v44;
  v53 = v27;
  v54 = v45;
  sub_1A3A31260();
  v45 = sub_1A3A30630();
  v61 = v28;
  v62 = v29;
  v63 = v30;
  v64 = v31;
  v32 = type metadata accessor for ControlGrid(0, &v61);
  sub_1A39ED0F8(v27, v32);
  v33 = swift_getWitnessTable();
  sub_1A3A30C70();
  (*(v39 + 8))(v21, v19);
  v55 = v33;
  v56 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v34 = v38;
  sub_1A3964BD0();
  v35 = *(v40 + 8);
  v35(v24, v22);
  sub_1A3964BD0();
  return (v35)(v34, v22);
}

uint64_t sub_1A39EA618@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v78 = a4;
  v79 = a7;
  v73 = a3;
  v72 = a2;
  v76 = a1;
  v77 = a6;
  v74 = a8;
  v84 = a4;
  v85 = a5;
  v86 = a6;
  v87 = a7;
  v70 = type metadata accessor for ControlGrid(0, &v84);
  v69 = *(v70 - 8);
  v10 = *(v69 + 64);
  v57 = v10;
  MEMORY[0x1EEE9AC00](v70);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100B98, &qword_1A3A82088);
  v62 = v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BA0, &unk_1A3A82090);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD930, &qword_1A3A6F1B8);
  v14 = sub_1A3A2FA90();
  v15 = sub_1A38A08F8(&qword_1EB0FD928, &qword_1EB0FD930, &qword_1A3A6F1B8, "=x@K");
  v91 = a6;
  v92 = v15;
  v71 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for GridButton(255, v14, WitnessTable, v17);
  v55 = a5;
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  v68 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1A3A31120();
  v18 = sub_1A3A2FA90();
  v89 = swift_getWitnessTable();
  v90 = MEMORY[0x1E697EBF8];
  v19 = swift_getWitnessTable();
  v84 = v18;
  v85 = v19;
  swift_getOpaqueTypeMetadata2();
  sub_1A3A30590();
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BA8, &qword_1A3A820A0);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  swift_getTupleTypeMetadata3();
  v58 = sub_1A3A31550();
  v20 = sub_1A3A31DE0();
  v59 = v20;
  v61 = sub_1A39EF638();
  v84 = v13;
  v85 = MEMORY[0x1E69E6530];
  v86 = v20;
  v87 = v61;
  v88 = MEMORY[0x1E69E6540];
  v63 = sub_1A3A31220();
  v66 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v75 = &v54 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BC0, &qword_1A3A820A8);
  v65 = sub_1A3A2FA90();
  v67 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v60 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = MEMORY[0x1EEE9AC00](v23).n128_u64[0];
  v64 = &v54 - v25;
  v26 = v76;
  v27 = 2;
  if (*(*(v76 + 16) + 16) != 2)
  {
    v27 = 3;
  }

  v84 = 0;
  v85 = v27;
  KeyPath = swift_getKeyPath(byte_1A3A82120, v24);
  v29 = v69;
  v56 = *(v69 + 16);
  v30 = v12;
  v31 = v12;
  v32 = v70;
  v56(v31, v26, v70);
  v33 = *(v29 + 80);
  v34 = (v33 + 56) & ~v33;
  v35 = v34 + v10;
  v36 = swift_allocObject();
  v37 = v77;
  *(v36 + 2) = v78;
  *(v36 + 3) = a5;
  v38 = v79;
  *(v36 + 4) = v37;
  *(v36 + 5) = v38;
  *(v36 + 6) = v72;
  v72 = *(v29 + 32);
  v39 = v30;
  v72(&v36[v34], v30, v32);
  LOBYTE(v30) = v73;
  v36[v35] = v73;
  v83 = swift_getWitnessTable();
  v40 = v59;
  v41 = swift_getWitnessTable();
  sub_1A3A31200(&v84, KeyPath, sub_1A39F09F4, v36, v62, v40, v61, MEMORY[0x1E69E6540], v41);
  v56(v39, v76, v32);
  v42 = swift_allocObject();
  v43 = v55;
  *(v42 + 16) = v78;
  *(v42 + 24) = v43;
  v44 = v79;
  *(v42 + 32) = v77;
  *(v42 + 40) = v44;
  *(v42 + 48) = v30;
  v72((v42 + ((v33 + 49) & ~v33)), v39, v32);
  v82 = v41;
  v45 = v63;
  v46 = swift_getWitnessTable();
  sub_1A39F0B84();
  sub_1A39F0BD8();
  v47 = v60;
  v48 = v75;
  sub_1A3A30AA0();

  (*(v66 + 8))(v48, v45);
  v49 = sub_1A38A08F8(&qword_1EB100BC8, &qword_1EB100BC0, &qword_1A3A820A8, MEMORY[0x1E6980620]);
  v80 = v46;
  v81 = v49;
  v50 = v65;
  swift_getWitnessTable();
  v51 = v64;
  sub_1A3964BD0();
  v52 = *(v67 + 8);
  v52(v47, v50);
  sub_1A3964BD0();
  return (v52)(v51, v50);
}

void *sub_1A39EAE40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>)
{
  v82 = a8;
  v83 = a2;
  v80 = a7;
  v81 = a1;
  v69 = a4;
  v84 = a3;
  v79 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BA0, &unk_1A3A82090);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD930, &qword_1A3A6F1B8);
  v13 = sub_1A3A2FA90();
  v137 = a7;
  v138 = sub_1A38A08F8(&qword_1EB0FD928, &qword_1EB0FD930, &qword_1A3A6F1B8, "=x@K");
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for GridButton(255, v13, WitnessTable, v15);
  v16 = a6;
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31120();
  v17 = sub_1A3A2FA90();
  v135 = swift_getWitnessTable();
  v136 = MEMORY[0x1E697EBF8];
  *&v126 = v17;
  v64 = swift_getWitnessTable();
  *(&v126 + 1) = v64;
  swift_getOpaqueTypeMetadata2();
  sub_1A3A30590();
  v18 = sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BA8, &qword_1A3A820A0);
  v66 = v18;
  v67 = sub_1A3A2FA90();
  v19 = sub_1A3A2FA90();
  v20 = sub_1A3A2FA90();
  v71 = v12;
  swift_getTupleTypeMetadata3();
  v21 = sub_1A3A31550();
  v76 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v63 - v22;
  v65 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v63 - v24;
  v68 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v72 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v73 = &v63 - v29;
  v78 = sub_1A3A31DE0();
  v75 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v74 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v77 = &v63 - v32;
  v33 = *v81;
  *&v126 = a5;
  *(&v126 + 1) = v16;
  *&v127 = v80;
  *(&v127 + 1) = v82;
  result = type metadata accessor for ControlGrid(0, &v126);
  v35 = *(*(v84 + 16) + 16);
  if (v35 == 2)
  {
    v36 = 2;
  }

  else
  {
    v36 = 3;
  }

  v37 = v83 * v36;
  if ((v83 * v36) >> 64 != (v83 * v36) >> 63)
  {
    __break(1u);
    goto LABEL_19;
  }

  v38 = v37 + v33;
  if (__OFADD__(v37, v33))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v38 >= v35)
  {
    v52 = v74;
    (*(v76 + 56))(v74, 1, 1, v21);
  }

  else
  {
    v39 = result;
    v40 = 0;
    v63 = v21;
    if (v38 != v35 - 1 || v35 == 2 || (v40 = v33 != 2, v33))
    {
      LODWORD(v83) = v40;
      v133 = 0;
      v132 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
    }

    else
    {
      sub_1A39E9788(&v126);
      LODWORD(v83) = 1;
    }

    sub_1A39EB88C(v38, v69 & 1, v39, v25);
    sub_1A39EC6A4(v39);
    sub_1A39EC9D4(v39);
    *&v118 = v17;
    *(&v118 + 1) = v64;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v42 = sub_1A39F1444(&qword_1ED9966D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    v116 = OpaqueTypeConformance2;
    v117 = v42;
    v43 = swift_getWitnessTable();
    v44 = sub_1A38A08F8(&qword_1EB100BF0, &qword_1EB100BA8, &qword_1A3A820A0, MEMORY[0x1E697F940]);
    v114 = v43;
    v115 = v44;
    v45 = swift_getWitnessTable();
    v46 = sub_1A38A8EA8();
    v112 = v45;
    v113 = v46;
    v47 = swift_getWitnessTable();
    v48 = v72;
    sub_1A3A30C30();
    (*(v65 + 8))(v25, v19);
    v110 = v47;
    v111 = MEMORY[0x1E697E270];
    v49 = swift_getWitnessTable();
    sub_1A3964BD0();
    v50 = v68;
    v51 = *(v68 + 8);
    v51(v48, v20);
    v82 = v51;
    if (v83)
    {
      sub_1A39E9788(&v118);
    }

    else
    {
      v125 = 0;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v118 = 0u;
    }

    v53 = v63;
    v101 = v130;
    v102 = v131;
    v103 = v132;
    v97 = v126;
    v98 = v127;
    v99 = v128;
    v100 = v129;
    v104 = v133;
    v105[0] = &v97;
    v55 = v72;
    v54 = v73;
    (*(v50 + 16))(v72, v73, v20);
    v93 = v122;
    v94 = v123;
    v95 = v124;
    v96 = v125;
    v89 = v118;
    v90 = v119;
    v91 = v120;
    v92 = v121;
    v105[1] = v55;
    v105[2] = &v89;
    sub_1A388F6D8(&v126, v108, &qword_1EB100BA0, &unk_1A3A82090);
    sub_1A388F6D8(&v118, v108, &qword_1EB100BA0, &unk_1A3A82090);
    v88[0] = v71;
    v88[1] = v20;
    v88[2] = v71;
    v85 = sub_1A39F0C5C();
    v86 = v49;
    v87 = v85;
    v56 = v70;
    sub_1A3961B84(v105, 3uLL, v88);
    sub_1A388F740(&v118, &qword_1EB100BA0, &unk_1A3A82090);
    sub_1A388F740(&v126, &qword_1EB100BA0, &unk_1A3A82090);
    v57 = v82;
    v82(v54, v20);
    v106[4] = v93;
    v106[5] = v94;
    v106[6] = v95;
    v107 = v96;
    v106[0] = v89;
    v106[1] = v90;
    v106[2] = v91;
    v106[3] = v92;
    sub_1A388F740(v106, &qword_1EB100BA0, &unk_1A3A82090);
    v57(v55, v20);
    v108[4] = v101;
    v108[5] = v102;
    v108[6] = v103;
    v109 = v104;
    v108[0] = v97;
    v108[1] = v98;
    v108[2] = v99;
    v108[3] = v100;
    sub_1A388F740(v108, &qword_1EB100BA0, &unk_1A3A82090);
    v58 = v76;
    v52 = v74;
    (*(v76 + 32))(v74, v56, v53);
    (*(v58 + 56))(v52, 0, 1, v53);
  }

  swift_getWitnessTable();
  v59 = v77;
  sub_1A39E3190(v52, v77);
  v60 = *(v75 + 8);
  v61 = v52;
  v62 = v78;
  v60(v61, v78);
  v134 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3964BD0();
  return (v60)(v59, v62);
}

void sub_1A39EB88C(unint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v113) = a2;
  v7 = sub_1A3A302F0();
  v125 = *(v7 - 8);
  v126 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v124 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v121 = v10;
  v122 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1A3A30050();
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v118 = v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1A3A304C0();
  v115 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v112 = v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD930, &qword_1A3A6F1B8);
  v129 = v13;
  v14 = sub_1A3A2FA90();
  v15 = a3[4];
  v16 = sub_1A38A08F8(&qword_1EB0FD928, &qword_1EB0FD930, &qword_1A3A6F1B8, "=x@K");
  v128 = v15;
  v141 = v15;
  v142 = v16;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for GridButton(255, v14, WitnessTable, v18);
  v19 = a3[3];
  swift_getTupleTypeMetadata2();
  v20 = sub_1A3A31550();
  v21 = swift_getWitnessTable();
  v103 = v20;
  v101 = v21;
  v22 = sub_1A3A31120();
  v109 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v106 = v89 - v23;
  v24 = sub_1A3A2FA90();
  v108 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v105 = v89 - v25;
  v100 = swift_getWitnessTable();
  v139 = v100;
  v140 = MEMORY[0x1E697EBF8];
  v26 = swift_getWitnessTable();
  v137 = v24;
  v138 = v26;
  v102 = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v104 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v29 = v89 - v28;
  sub_1A3A30590();
  v107 = OpaqueTypeMetadata2;
  v30 = sub_1A3A2FA90();
  v114 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v110 = v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v111 = v89 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BA8, &qword_1A3A820A0);
  v116 = v30;
  v34 = sub_1A3A2FA90();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = v89 - v36;
  v38 = sub_1A3A2FA90();
  MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v39);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v40 = *(v130 + 16);
    if (*(v40 + 16) > a1)
    {
      v98 = v34;
      v89[1] = v89;
      v91 = v19;
      v41 = *(v40 + 8 * a1 + 32);
      v92 = a1;
      v42 = a3;
      v43 = v130;
      v99 = a4;
      MEMORY[0x1EEE9AC00](v42);
      v95 = v35;
      v90 = *(v44 + 40);
      v45 = v22;
      v46 = v44;
      v127 = v44;
      v93 = v37;
      v97 = v47;
      v94 = v48;
      v96 = v49;
      v113 = v50;
      sub_1A38A8F64(v41);
      sub_1A3A300B0();
      v51 = v106;
      sub_1A3A31110();
      v52 = v43;
      sub_1A39EDFC8(v46);
      sub_1A3A31480();
      v53 = v105;
      sub_1A3A30C00();
      (*(v109 + 8))(v51, v45);
      v54 = v112;
      sub_1A3A304A0();
      v55 = v102;
      sub_1A3A30B00();
      (*(v115 + 8))(v54, v117);
      (*(v108 + 8))(v53, v24);
      v56 = v118;
      sub_1A3A30040();
      v137 = v24;
      v138 = v55;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v58 = v110;
      v59 = v107;
      sub_1A3A30B50();
      (*(v119 + 8))(v56, v120);
      (*(v104 + 8))(v29, v59);
      v60 = v123;
      v61 = v122;
      v62 = v52;
      v63 = v127;
      (*(v123 + 16))(v122, v62, v127);
      v64 = (*(v60 + 80) + 48) & ~*(v60 + 80);
      v65 = (v121 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
      v66 = swift_allocObject();
      v67 = v91;
      *(v66 + 2) = v129;
      *(v66 + 3) = v67;
      v68 = v90;
      *(v66 + 4) = v128;
      *(v66 + 5) = v68;
      (*(v60 + 32))(&v66[v64], v61, v63);
      *&v66[v65] = v41;
      v69 = v124;
      sub_1A3A302E0();
      v70 = v111;
      v71 = v116;
      sub_1A3A2FA30();

      (*(v125 + 8))(v69, v126);
      v129 = *(v114 + 8);
      v129(v58, v71);
      v72 = swift_allocObject();
      v73 = v92;
      *(v72 + 16) = v92;
      v137 = sub_1A39F0DE4;
      v138 = v72;
      sub_1A3A31480();
      v128 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100C00, &qword_1A3A82168);
      v75 = sub_1A39F1444(&qword_1ED9966D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
      v135 = OpaqueTypeConformance2;
      v136 = v75;
      v76 = swift_getWitnessTable();
      sub_1A38A08F8(&qword_1EB100C08, &qword_1EB100C00, &qword_1A3A82168, MEMORY[0x1E697E378]);
      v77 = v93;
      sub_1A3A30930();

      v129(v70, v71);
      v78 = v127;
      sub_1A39EE2B4(v73, v127);
      v80 = v79;
      LOBYTE(v64) = sub_1A39EE520(v78);
      v81 = sub_1A38A08F8(&qword_1EB100BF0, &qword_1EB100BA8, &qword_1A3A820A0, MEMORY[0x1E697F940]);
      v133 = v76;
      v134 = v81;
      v82 = v98;
      v83 = swift_getWitnessTable();
      v84 = v94;
      sub_1A393BB5C(1, v64 & 1, v82, v83, 0.5, v80);
      (*(v95 + 8))(v77, v82);
      v85 = sub_1A38A8EA8();
      v131 = v83;
      v132 = v85;
      v86 = v96;
      swift_getWitnessTable();
      v87 = v97;
      sub_1A3964BD0();
      v88 = *(v113 + 8);
      v88(v84, v86);
      sub_1A3964BD0();
      v88(v87, v86);
      return;
    }
  }

  __break(1u);
}

double sub_1A39EC6A4(uint64_t a1)
{
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A39EE6C0(a1);
  v8 = 0.0;
  if (v7 == 3)
  {
    if ((sub_1A39EE520(a1) & 1) == 0)
    {
      return v8;
    }

    v17 = (v1 + *(a1 + 92));
    v18 = *v17;
    v19 = *(v17 + 8);
    sub_1A3A2EA60();
    if ((v19 & 1) == 0)
    {
      sub_1A3A31C30();
      v20 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v4 + 8))(v6, v3);
      v18 = v24;
    }

    swift_getKeyPath(byte_1A3A82138);
    v24 = v18;
    sub_1A39F1444(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    v21 = *(v18 + 392);

    v14 = v21 == 0;
    v15 = 17.0;
    v16 = 14.0;
    goto LABEL_11;
  }

  if (v7 == 4 && (sub_1A39EE520(a1) & 1) != 0)
  {
    v9 = (v1 + *(a1 + 92));
    v10 = *v9;
    v11 = *(v9 + 8);
    sub_1A3A2EA60();
    if ((v11 & 1) == 0)
    {
      sub_1A3A31C30();
      v12 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v4 + 8))(v6, v3);
      v10 = v24;
    }

    swift_getKeyPath(byte_1A3A82138);
    v24 = v10;
    sub_1A39F1444(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    v13 = *(v10 + 392);

    v14 = v13 == 0;
    v15 = -17.0;
    v16 = -14.0;
LABEL_11:
    if (v14)
    {
      return v15;
    }

    else
    {
      return v16;
    }
  }

  return v8;
}

void sub_1A39EC9D4(uint64_t a1)
{
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A3A30090();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v30 - v12);
  v14 = sub_1A39EE520(a1);
  v15 = sub_1A39EE6C0(a1);
  if (v14)
  {
    if ((v15 - 3) >= 2)
    {
      if (v15 == 2 && (sub_1A39EE520(a1) & 1) != 0)
      {
        v24 = (v1 + *(a1 + 92));
        v17 = *v24;
        v25 = *(v24 + 8);
        sub_1A3A2EA60();
        if ((v25 & 1) == 0)
        {
          sub_1A3A31C30();
          v26 = sub_1A3A305C0();
          sub_1A3A2F270();

          sub_1A3A2FED0();
          swift_getAtKeyPath();

          (*(v4 + 8))(v6, v3);
          v17 = v31;
        }

        goto LABEL_31;
      }
    }

    else if (sub_1A39EE520(a1))
    {
      v16 = (v1 + *(a1 + 92));
      v17 = *v16;
      v18 = *(v16 + 8);
      sub_1A3A2EA60();
      if ((v18 & 1) == 0)
      {
        sub_1A3A31C30();
        v19 = sub_1A3A305C0();
        sub_1A3A2F270();

        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v4 + 8))(v6, v3);
        v17 = v31;
      }

LABEL_31:
      swift_getKeyPath(byte_1A3A82138);
      v31 = v17;
      sub_1A39F1444(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      sub_1A3A2F080();
    }
  }

  else if ((v15 - 3) >= 2)
  {
    if (v15 == 2)
    {
      v27 = *(*(v1 + 16) + 16);
      v28 = 2;
      if (v27 != 2)
      {
        v28 = 3;
      }

      if (v27 % v28)
      {
        v29 = v27 / v28 + 1;
      }

      else
      {
        v29 = v27 / v28;
      }

      sub_1A39EF0C0(v29 - 1, a1);
    }
  }

  else
  {
    sub_1A39EEDCC(a1, v13);
    (*(v8 + 16))(v10, v13, v7);
    v20 = (*(v8 + 88))(v10, v7);
    v23 = v20 == *MEMORY[0x1E697F658] || v20 == *MEMORY[0x1E697F690] || v20 == *MEMORY[0x1E697F698] || v20 == *MEMORY[0x1E697F680];
    if (v23 || v20 == *MEMORY[0x1E697F650] || v20 == *MEMORY[0x1E697F660] || v20 == *MEMORY[0x1E697F630] || v20 == *MEMORY[0x1E697F670] || v20 == *MEMORY[0x1E697F668] || v20 == *MEMORY[0x1E697F678] || v20 == *MEMORY[0x1E697F640] || v20 == *MEMORY[0x1E697F648])
    {
      (*(v8 + 8))(v13, v7);
    }

    else
    {
      sub_1A3A32070("Fatal error", 11, 2, 0xD00000000000001DLL, 0x80000001A3AA1DE0, "CameraUI/ChromeViewSpec.swift", 29, 2, 584, 0);
      __break(1u);
    }
  }
}

double sub_1A39ECFEC(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v7 = *a1;
    v14 = a4;
    v15 = a5;
    v16 = a6;
    v17 = a7;
    v8 = (a3 + *(type metadata accessor for ControlGrid(0, &v14) + 80));
    v10 = v8[1];
    v14 = *v8;
    v9 = v14;
    v15 = v10;
    sub_1A3A2EA60();
    sub_1A3A2EA50();
    sub_1A3A2EA50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100BD0, &qword_1A3A820D8);
    sub_1A3A30F90();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13[0] = v13[3];
    sub_1A39F00C0(v7, sub_1A39F057C, 0, isUniquelyReferenced_nonNull_native, v13);
    v13[0] = v9;
    v13[1] = v10;
    sub_1A3A30FA0();
  }

  return result;
}

void sub_1A39ED0F8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A3A30090();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v20 - v11);
  v13 = *(*(v2 + 16) + 16);
  v14 = 2;
  if (v13 != 2)
  {
    v14 = 3;
  }

  if (v13 % v14)
  {
    v15 = v13 / v14 + 1;
  }

  else
  {
    v15 = v13 / v14;
  }

  if (v15 - 1 != v10 && (sub_1A39EE884(v10, a2) & 1) != 0 && (sub_1A39EE6C0(a2) - 3) >= 2)
  {
    sub_1A39EEDCC(a2, v12);
    (*(v6 + 16))(v8, v12, v5);
    v16 = (*(v6 + 88))(v8, v5);
    v19 = v16 == *MEMORY[0x1E697F658] || v16 == *MEMORY[0x1E697F690] || v16 == *MEMORY[0x1E697F698] || v16 == *MEMORY[0x1E697F680];
    if (v19 || v16 == *MEMORY[0x1E697F650] || v16 == *MEMORY[0x1E697F660] || v16 == *MEMORY[0x1E697F630] || v16 == *MEMORY[0x1E697F670] || v16 == *MEMORY[0x1E697F668] || v16 == *MEMORY[0x1E697F678] || v16 == *MEMORY[0x1E697F640] || v16 == *MEMORY[0x1E697F648])
    {
      (*(v6 + 8))(v12, v5);
    }

    else
    {
      sub_1A3A32070("Fatal error", 11, 2, 0xD00000000000001DLL, 0x80000001A3AA1DE0, "CameraUI/ChromeViewSpec.swift", 29, 2, 584, 0);
      __break(1u);
    }
  }
}

double sub_1A39ED3E0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v70 = a5;
  v62 = a3;
  v61 = a2;
  *&v71 = a1;
  v68 = a6;
  v66 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v67 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v53 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v53 - v12;
  v84 = v13;
  *&v85 = v14;
  v15 = v13;
  v69 = v13;
  *(&v85 + 1) = v16;
  v86 = v17;
  v18 = v16;
  v55 = v16;
  v56 = type metadata accessor for ControlGrid(0, &v84);
  v19 = *(v56 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v53 - v23;
  v57 = *(v19 + 16);
  v57(&v53 - v23, a1, v22);
  v25 = *(v19 + 80);
  v54 = (v25 + 48) & ~v25;
  v26 = (v20 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = v26 + 8;
  v27 = swift_allocObject();
  v27[2] = v15;
  v27[3] = a4;
  v63 = a4;
  v27[4] = v18;
  v28 = v70;
  v27[5] = v70;
  v29 = *(v19 + 32);
  v30 = v27;
  v60 = v27;
  v31 = v24;
  v32 = v56;
  v29(v27 + ((v25 + 48) & ~v25), v31, v56);
  v33 = v61;
  *(v30 + v26) = v61;
  v34 = v59;
  (v57)(v59, v71, v32);
  v35 = swift_allocObject();
  *(v35 + 2) = v69;
  *(v35 + 3) = a4;
  v36 = v55;
  *(v35 + 4) = v55;
  *(v35 + 5) = v28;
  v29(&v35[v54], v34, v32);
  *&v35[v26] = v33;
  LOBYTE(v26) = v62;
  v35[v58] = v62;
  sub_1A38A8F64(v33);
  sub_1A38A8F64(v33);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD930, &qword_1A3A6F1B8);
  v37 = sub_1A3A2FA90();
  v38 = sub_1A38A08F8(&qword_1EB0FD928, &qword_1EB0FD930, &qword_1A3A6F1B8, "=x@K");
  v82 = v36;
  v83 = v38;
  WitnessTable = swift_getWitnessTable();
  LOBYTE(v76) = 0;
  sub_1A3A30F80();
  v90 = v84;
  *v91 = *v89;
  *&v91[3] = *&v89[3];
  v92 = v85;
  v76 = sub_1A39F1034;
  *&v77 = v60;
  *(&v77 + 1) = sub_1A39F10D8;
  v78 = v35;
  v79 = v84;
  *v80 = *v89;
  *&v80[3] = *&v89[3];
  v81 = v85;
  v41 = type metadata accessor for GridButton(0, v37, WitnessTable, v40);
  v69 = swift_getWitnessTable();
  sub_1A3964BD0();

  sub_1A388F740(&v90, &qword_1EB0FC3C8, &qword_1A3A6C090);
  v42 = *(v71 + 40);
  if ((sub_1A39E9738(v32) | v26))
  {
    v43 = 2;
  }

  else
  {
    v43 = 1;
  }

  v44 = v64;
  v42(v33, v43);
  v45 = v65;
  v46 = v63;
  v47 = v70;
  sub_1A3964BD0();
  v48 = v66;
  v49 = *(v66 + 8);
  v49(v44, v46);
  v76 = v84;
  v71 = v85;
  v77 = v85;
  v78 = v86;
  v79 = v87;
  v81 = v88;
  v75[0] = &v76;
  v50 = *(v48 + 16);
  v51 = v67;
  v50(v67, v45, v46);
  v75[1] = v51;
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  v74[0] = v41;
  v74[1] = v46;
  v72 = v69;
  v73 = v47;
  sub_1A3961B84(v75, 2uLL, v74);
  v49(v45, v46);

  v49(v51, v46);

  return result;
}

void sub_1A39EDA78(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v49 = a5;
  v50 = a7;
  v46 = a3;
  v48 = a8;
  v12 = sub_1A3A2FEE0();
  v43 = *(v12 - 8);
  v44 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD930, &qword_1A3A6F1B8);
  v17 = sub_1A3A2FA90();
  v47 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v41 - v22;
  (*(a1 + 24))(a2, v21);
  v24 = sub_1A39FDA64(a2);
  v53 = 0x2E656D6F726843;
  v54 = 0xE700000000000000;
  MEMORY[0x1A58F7770](v24);

  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

  v25 = sub_1A3A31810();

  v26 = CAMLocalizedFrameworkString(v25, 0);

  v27 = sub_1A3A31850();
  v29 = v28;

  v53 = v27;
  v54 = v29;
  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x797274656D6F6547, 0xEA00000000004449);

  v57[0] = v53;
  v57[1] = v54;
  v53 = a4;
  v54 = v49;
  v49 = a6;
  v55 = a6;
  v56 = v50;
  v30 = a1 + *(type metadata accessor for ControlGrid(0, &v53) + 92);
  v31 = *v30;
  LOBYTE(v26) = *(v30 + 8);
  sub_1A3A2EA60();
  if ((v26 & 1) == 0)
  {
    sub_1A3A31C30();
    v32 = sub_1A3A305C0();
    sub_1A3A2F270();

    v33 = v42;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v43 + 8))(v33, v44);
    v31 = v53;
  }

  swift_getKeyPath(byte_1A3A82180);
  v53 = v31;
  sub_1A39F1444(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v34 = *(v31 + 848);
  v35 = *(v31 + 856);

  if (v35)
  {
    __break(1u);
  }

  else
  {
    v36 = sub_1A3A30460();
    v37 = v34;
    v38 = v49;
    sub_1A393BC4C((v46 & 1) == 0, v57, v37, v36, 1, a4, MEMORY[0x1E69E6158], v49, v19);

    (*(v45 + 8))(v16, a4);
    v39 = sub_1A38A08F8(&qword_1EB0FD928, &qword_1EB0FD930, &qword_1A3A6F1B8, "=x@K");
    v51 = v38;
    v52 = v39;
    swift_getWitnessTable();
    sub_1A3964BD0();
    v40 = *(v47 + 8);
    v40(v19, v17);
    sub_1A3964BD0();
    v40(v23, v17);
  }
}

double sub_1A39EDFC8(uint64_t a1)
{
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 92));
  v8 = *v7;
  v9 = *(v7 + 8);
  sub_1A3A2EA60();
  if ((v9 & 1) == 0)
  {
    sub_1A3A31C30();
    v10 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    v8 = v14;
  }

  swift_getKeyPath(aP_33);
  v14 = v8;
  sub_1A39F1444(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v11 = *(v8 + 400);

  return v11 + -40.0;
}

uint64_t sub_1A39EE19C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 72);
  if (!v3)
  {
    return (*(a1 + 56))(a2);
  }

  v4 = *(a1 + 80);
  sub_1A3A2EA60();
  v3(a2);

  return sub_1A3671090(v3, v4);
}

uint64_t sub_1A39EE21C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_1A3A30DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB100C10, &unk_1A3A82170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A3A681C0;
  *(inited + 32) = a2;
  sub_1A3A2F800();
  *(inited + 40) = v7;
  v8 = sub_1A3A1DD14(inited);
  result = swift_setDeallocating();
  *a3 = v5;
  a3[1] = v8;
  return result;
}

void sub_1A39EE2B4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A3A2FEE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + *(a2 + 80));
  v11 = *v9;
  v10 = v9[1];
  v18 = v11;
  v19 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100BD0, &qword_1A3A820D8);
  sub_1A3A30F90();
  if (*(v17[1] + 16) && (sub_1A3A1B8DC(a1), (v12 & 1) != 0))
  {

    if (sub_1A39E9738(a2))
    {
      v13 = (v2 + *(a2 + 92));
      v14 = *v13;
      v15 = *(v13 + 8);
      sub_1A3A2EA60();
      if ((v15 & 1) == 0)
      {
        sub_1A3A31C30();
        v16 = sub_1A3A305C0();
        sub_1A3A2F270();

        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v6 + 8))(v8, v5);
        v14 = v18;
      }

      swift_getKeyPath(byte_1A3A82138);
      v18 = v14;
      sub_1A39F1444(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      sub_1A3A2F080();
    }
  }

  else
  {
  }
}

uint64_t sub_1A39EE520(uint64_t result)
{
  v2 = *(*(v1 + 16) + 16);
  v3 = 2;
  if (v2 != 2)
  {
    v3 = 3;
  }

  if (v2 % v3)
  {
    v4 = v2 / v3 + 1;
  }

  else
  {
    v4 = v2 / v3;
  }

  if (!v4)
  {
    return 1;
  }

  v5 = result;
  v6 = 0;
  while (v6 != v4)
  {
    v7 = v6 + 1;
    result = sub_1A39EEFD0(v6, v5);
    v8 = 0;
    v9 = 1 << *(result + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(result + 64);
    v12 = (v9 + 63) >> 6;
    v13 = 0.0;
    if (v11)
    {
      while (1)
      {
        v14 = v8;
LABEL_18:
        v15 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v13 = v13 + *(*(result + 56) + ((v14 << 9) | (8 * v15)));
        if (!v11)
        {
          goto LABEL_14;
        }
      }
    }

    while (1)
    {
LABEL_14:
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v12)
      {
        break;
      }

      v11 = *(result + 64 + 8 * v14);
      ++v8;
      if (v11)
      {
        v8 = v14;
        goto LABEL_18;
      }
    }

    if (*(*(v1 + 16) + 16) == 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = 3;
    }

    v17 = v6 * v16;
    if ((v6 * v16) >> 64 != (v6 * v16) >> 63)
    {
      goto LABEL_37;
    }

    v18 = __OFSUB__(v2, v17);
    v19 = v2 - v17;
    if (v18)
    {
      goto LABEL_38;
    }

    if (v19 >= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v19;
    }

    v21 = sub_1A39EDFC8(v5);

    v22 = v21 / v20 * v20;
    result = v22 >= v13;
    v23 = v22 < v13 || v7 == v4;
    v6 = v7;
    if (v23)
    {
      return result;
    }
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1A39EE6C0(uint64_t a1)
{
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 92));
  v8 = *v7;
  v9 = *(v7 + 8);
  sub_1A3A2EA60();
  if ((v9 & 1) == 0)
  {
    sub_1A3A31C30();
    v10 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    v8 = v14;
  }

  swift_getKeyPath(asc_1A3A820E8);
  v14 = v8;
  sub_1A39F1444(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v11 = *(v8 + 800);

  return v11;
}

uint64_t sub_1A39EE884(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1A3A30090();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v39 = (&v37 - v10);
  v11 = sub_1A3A2FEE0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 8);
  v16 = (v3 + *(a2 + 92));
  v17 = *v16;
  v18 = *(v16 + 8);
  sub_1A3A2EA60();
  if ((v18 & 1) == 0)
  {
    sub_1A3A31C30();
    v37 = v11;
    v19 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v12 + 8))(v14, v37);
    v17 = v40;
  }

  swift_getKeyPath(byte_1A3A82138);
  v40 = v17;
  sub_1A39F1444(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v20 = *(v17 + 392);

  if (v20)
  {
    v21 = 56.0;
  }

  else
  {
    v21 = 68.0;
  }

  v22 = v39;
  sub_1A39EEDCC(a2, v39);
  v23 = v38;
  (*(v7 + 16))(v38, v22, v6);
  v24 = (*(v7 + 88))(v23, v6);
  v25 = 22.0;
  if (v24 == *MEMORY[0x1E697F658] || v24 == *MEMORY[0x1E697F690] || v24 == *MEMORY[0x1E697F698] || v24 == *MEMORY[0x1E697F680] || (v25 = 24.0, v24 == *MEMORY[0x1E697F650]) || (v25 = 26.0, v24 == *MEMORY[0x1E697F660]) || (v25 = 28.0, v24 == *MEMORY[0x1E697F630]) || v24 == *MEMORY[0x1E697F670] || v24 == *MEMORY[0x1E697F668] || v24 == *MEMORY[0x1E697F678] || v24 == *MEMORY[0x1E697F640] || v24 == *MEMORY[0x1E697F648])
  {
    (*(v7 + 8))(v22, v6);
    v26 = v15 + v21 + v25;
    v27 = sub_1A39EEFD0(a1, a2);
    v28 = 0;
    v29 = 1 << *(v27 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v27 + 64);
    v32 = (v29 + 63) >> 6;
    while (v31)
    {
      v33 = v28;
LABEL_27:
      v34 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      if (v26 < *(*(v27 + 56) + ((v33 << 9) | (8 * v34))))
      {
        v35 = 1;
LABEL_30:

        return v35;
      }
    }

    while (1)
    {
      v33 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v33 >= v32)
      {
        v35 = 0;
        goto LABEL_30;
      }

      v31 = *(v27 + 64 + 8 * v33);
      ++v28;
      if (v31)
      {
        v28 = v33;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  result = sub_1A3A32070("Fatal error", 11, 2, 0xD00000000000001DLL, 0x80000001A3AA1DE0, "CameraUI/ChromeViewSpec.swift", 29, 2, 584, 0);
  __break(1u);
  return result;
}

uint64_t sub_1A39EEDCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A3A2FEE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1A388F6D8(v2 + *(a1 + 88), &v15 - v10, &qword_1EB0FCE78, &unk_1A3A6F1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A3A30090();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1A3A31C30();
    v14 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1A39EEFD0(uint64_t result, uint64_t a2)
{
  v3 = 2;
  if (*(*(v2 + 16) + 16) != 2)
  {
    v3 = 3;
  }

  if ((result * v3) >> 64 == (result * v3) >> 63)
  {
    if (!__OFADD__(result * v3, v3))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100BD0, &qword_1A3A820D8);
      v4 = sub_1A3A30F90();
      MEMORY[0x1EEE9AC00](v4);
      v5 = sub_1A39F06C8(v6, sub_1A39EF728);

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1A39EF0C0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A3A30090();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v38 - v10);
  v12 = sub_1A3A2FEE0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A39EEFD0(a1, a2);
  v17 = 1 << *(v16 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v16 + 64);
  if (v19)
  {
    v20 = 0;
    v21 = __clz(__rbit64(v19));
    v22 = (v19 - 1) & v19;
    v23 = (v17 + 63) >> 6;
LABEL_9:
    v26 = *(v16 + 56);
    v27 = *(v26 + 8 * v21);
    if (!v22)
    {
      goto LABEL_11;
    }

    do
    {
      v28 = v20;
LABEL_15:
      v29 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      if (v27 <= *(v26 + ((v28 << 9) | (8 * v29))))
      {
        v27 = *(v26 + ((v28 << 9) | (8 * v29)));
      }
    }

    while (v22);
    while (1)
    {
LABEL_11:
      v28 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v28 >= v23)
      {
        break;
      }

      v22 = *(v16 + 64 + 8 * v28);
      ++v20;
      if (v22)
      {
        v20 = v28;
        goto LABEL_15;
      }
    }

    v30 = (v2 + *(a2 + 92));
    v31 = *v30;
    v32 = *(v30 + 8);
    sub_1A3A2EA60();
    if ((v32 & 1) == 0)
    {
      sub_1A3A31C30();
      v33 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v13 + 8))(v15, v12);
      v31 = v39;
    }

    swift_getKeyPath(byte_1A3A82138);
    v39 = v31;
    sub_1A39F1444(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();
  }

  else
  {
    v24 = 0;
    v23 = (v17 + 63) >> 6;
    while (v23 - 1 != v19)
    {
      v20 = v19 + 1;
      v25 = *(v16 + 8 * v19 + 72);
      v24 -= 64;
      ++v19;
      if (v25)
      {
        v22 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) - v24;
        goto LABEL_9;
      }
    }

    sub_1A39EEDCC(a2, v11);
    (*(v6 + 16))(v8, v11, v5);
    v34 = (*(v6 + 88))(v8, v5);
    v37 = v34 == *MEMORY[0x1E697F658] || v34 == *MEMORY[0x1E697F690] || v34 == *MEMORY[0x1E697F698] || v34 == *MEMORY[0x1E697F680];
    if (v37 || v34 == *MEMORY[0x1E697F650] || v34 == *MEMORY[0x1E697F660] || v34 == *MEMORY[0x1E697F630] || v34 == *MEMORY[0x1E697F670] || v34 == *MEMORY[0x1E697F668] || v34 == *MEMORY[0x1E697F678] || v34 == *MEMORY[0x1E697F640] || v34 == *MEMORY[0x1E697F648])
    {
      (*(v6 + 8))(v11, v5);
    }

    else
    {
LABEL_42:
      sub_1A3A32070("Fatal error", 11, 2, 0xD00000000000001DLL, 0x80000001A3AA1DE0, "CameraUI/ChromeViewSpec.swift", 29, 2, 584, 0);
      __break(1u);
    }
  }
}

unint64_t sub_1A39EF638()
{
  result = qword_1EB100BB0;
  if (!qword_1EB100BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100B98, &qword_1A3A82088);
    sub_1A39EF6C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100BB0);
  }

  return result;
}

unint64_t sub_1A39EF6C4()
{
  result = qword_1EB100BB8;
  if (!qword_1EB100BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100BB8);
  }

  return result;
}

BOOL sub_1A39EF728(_BOOL8 result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v3 < v2)
  {
    __break(1u);
  }

  else
  {
    if (v2 <= result)
    {
      v6 = __OFSUB__(v3, result);
      v4 = v3 == result;
      v5 = v3 - result < 0;
    }

    else
    {
      v6 = 0;
      v4 = 1;
      v5 = 0;
    }

    return !(v5 ^ v6 | v4);
  }

  return result;
}

unint64_t sub_1A39EF748()
{
  result = sub_1A3A1DD14(MEMORY[0x1E69E7CC0]);
  qword_1EB101B50 = result;
  return result;
}

uint64_t sub_1A39EF770@<X0>(void *a1@<X8>)
{
  if (qword_1EB0FC230 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EB101B50;

  return sub_1A3A2EA50();
}

void sub_1A39EF7E0(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v5);
  v3 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *a1;
  sub_1A39F00C0(v3, sub_1A39F057C, 0, isUniquelyReferenced_nonNull_native, &v5);
  *a1 = v5;
}

uint64_t sub_1A39EF868()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A3A30FB0();
  return v1;
}

uint64_t sub_1A39EF8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a2;
  v43 = a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = sub_1A3A31010();
  v46 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  WitnessTable = swift_getWitnessTable();
  v41 = WitnessTable;
  v40 = sub_1A39F12DC();
  v55 = v6;
  v56 = &type metadata for GridButtonStyle;
  v57 = WitnessTable;
  v58 = v40;
  v44 = MEMORY[0x1E697CDC0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v38 = &v38 - v10;
  v11 = sub_1A3A2FA90();
  v48 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v38 - v14;
  v59 = v3[2];
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = v5;
  v16 = v3[1];
  *(v15 + 32) = *v3;
  *(v15 + 48) = v16;
  *(v15 + 64) = v3[2];
  v50 = v4;
  v51 = v5;
  v52 = v3;
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A388F6D8(&v59, &v55, &qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A3A30FE0();
  v55 = sub_1A39EF868();
  v56 = v17;
  LOBYTE(v57) = v18 & 1;
  v19 = v41;
  v20 = v40;
  sub_1A3A30970();

  (*(v46 + 8))(v8, v6);
  v21 = sub_1A39EF868();
  v23 = v22;
  LOBYTE(v4) = v24;
  v25 = sub_1A3A32340();
  v27 = v26;
  v55 = v6;
  v56 = &type metadata for GridButtonStyle;
  v57 = v19;
  v58 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v4 & 1;
  v30 = v39;
  v31 = v25;
  v32 = OpaqueTypeMetadata2;
  v33 = v38;
  sub_1A38E9DEC(v21, v23, v29, v31, v27, OpaqueTypeMetadata2, OpaqueTypeConformance2, 1.25);

  (*(v47 + 8))(v33, v32);
  v34 = sub_1A39F1364();
  v53 = OpaqueTypeConformance2;
  v54 = v34;
  swift_getWitnessTable();
  v35 = v45;
  sub_1A3964BD0();
  v36 = *(v48 + 8);
  v36(v30, v11);
  sub_1A3964BD0();
  return (v36)(v35, v11);
}

uint64_t sub_1A39EFDA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  (*(v10 + 16))(v7);
  sub_1A3964BD0();
  v11 = *(v3 + 8);
  v11(v5, a2);
  sub_1A3964BD0();
  return (v11)(v9, a2);
}

uint64_t sub_1A39EFF10()
{
  v1 = sub_1A3A303A0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  v6 = v0[1];
  v7 = *(v0 + 16);
  sub_1A3A303B0();
  v10[15] = sub_1A3A303C0() & 1;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  *(v8 + 32) = v7;
  sub_1A39F1444(&qword_1ED999240, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A3A30CA0();

  return (*(v2 + 8))(v4, v1);
}

void sub_1A39F00C0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  sub_1A3A2EA50();
  sub_1A3A2EA60();
  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_11:
    v14 = (v13 << 9) | (8 * __clz(__rbit64(v10)));
    v15 = *(*(a1 + 56) + v14);
    v34[0] = *(*(a1 + 48) + v14);
    v34[1] = v15;
    a2(v33, v34);
    v16 = v33[0];
    v17 = v33[1];
    v18 = *a5;
    v19 = sub_1A3A1B8DC(v33[0]);
    v21 = v18[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_22;
    }

    v25 = v20;
    if (v18[3] >= v24)
    {
      if ((a4 & 1) == 0)
      {
        v30 = v19;
        sub_1A3A184DC();
        v19 = v30;
      }
    }

    else
    {
      sub_1A3A1778C(v24, a4 & 1);
      v19 = sub_1A3A1B8DC(v16);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_24;
      }
    }

    v10 &= v10 - 1;
    v27 = *a5;
    if (v25)
    {
      *(v27[7] + 8 * v19) = v17;
    }

    else
    {
      v27[(v19 >> 6) + 8] |= 1 << v19;
      *(v27[6] + 8 * v19) = v16;
      *(v27[7] + 8 * v19) = v17;
      v28 = v27[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      v27[2] = v29;
    }

    a4 = 1;
    v12 = v13;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_1A3A32220();
  __break(1u);
}

void *sub_1A39F02E8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, double))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1A39F0590(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1A39F0378(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    sub_1A3A2EA60();
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100BD8, &qword_1A3A820E0);
  result = sub_1A3A320E0();
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
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    result = sub_1A3A322B0();
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
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
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

double sub_1A39F057C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1A39F0590(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, double))
{
  v19 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    result = a4(*(*(a3 + 48) + 8 * v16), *(*(a3 + 56) + 8 * v16));
    if (result)
    {
      *(v19 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return sub_1A39F0378(v19, a2, v6, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      return sub_1A39F0378(v19, a2, v6, a3);
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1A39F06C8(uint64_t a1, uint64_t (*a2)(void, double))
{
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  sub_1A3A2EA60();
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1A39F0590(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1A39F02E8(v10, v6, v4, a2);
  result = MEMORY[0x1A58FAC10](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1A39F0848()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8[0] = v0[2];
  v1 = v8[0];
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v5 = *(type metadata accessor for ControlGrid(0, v8) - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1A39E96CC(v6, v1, v2, v3, v4);
}