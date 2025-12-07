uint64_t sub_1C470CA8C()
{

  return v0;
}

uint64_t sub_1C470CABC()
{
  sub_1C470CA8C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C470CB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  if (result)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 8) = result;
    *(a2 + 16) = v5;
    *(a2 + 24) = v4;
    *(a2 + 32) = *(a1 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1C470CBDC(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_1C470CB64(v3);
}

double sub_1C470CC14@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v8[2] = a1[2];
  sub_1C470CB74(v8, v6);
  v4 = v6[1];
  *a2 = v6[0];
  a2[1] = v4;
  result = *&v7;
  a2[2] = v7;
  return result;
}

unint64_t sub_1C470CC68()
{
  result = qword_1EDDEFEA8;
  if (!qword_1EDDEFEA8)
  {
    sub_1C4572308(&qword_1EC0BBC68, qword_1C4F22790);
    sub_1C470CF20(&qword_1EDDEFEB0, MEMORY[0x1E69A9BB0], MEMORY[0x1E69A9BB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEFEA8);
  }

  return result;
}

unint64_t sub_1C470CDF4()
{
  result = qword_1EC0BBC70;
  if (!qword_1EC0BBC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BBC70);
  }

  return result;
}

uint64_t sub_1C470CE58(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1C470CE74(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C470CEB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C470CEF8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1C470CF20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C470CF78(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = sub_1C4EFFF58();
  *(v3 + 40) = v4;
  sub_1C43FCF7C(v4);
  *(v3 + 48) = v5;
  *(v3 + 56) = swift_task_alloc();
  v6 = sub_1C456902C(&qword_1EC0BB868, &unk_1C4F22980);
  *(v3 + 64) = v6;
  sub_1C43FCF7C(v6);
  *(v3 + 72) = v7;
  *(v3 + 80) = swift_task_alloc();
  v8 = sub_1C4EFFF78();
  *(v3 + 88) = v8;
  sub_1C43FCF7C(v8);
  *(v3 + 96) = v9;
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v10 = sub_1C4F00008();
  *(v3 + 120) = v10;
  sub_1C43FCF7C(v10);
  *(v3 + 128) = v11;
  *(v3 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C470D148, 0, 0);
}

uint64_t sub_1C470D148()
{
  sub_1C4EFEF48();
  swift_allocObject();
  v0[18] = sub_1C4EFEF38();
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFFFF8();
  sub_1C4EFFF88();
  sub_1C470D890();
  v0[19] = sub_1C4EFEF18();
  (*(v2 + 8))(v1, v3);
  (*(v0[6] + 104))(v0[7], *MEMORY[0x1E69A9C20], v0[5]);
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_1C470D398;
  v5 = v0[10];

  return MEMORY[0x1EEE13C40](v5);
}

uint64_t sub_1C470D398()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 168) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    v5 = sub_1C470D7E0;
  }

  else
  {
    v5 = sub_1C470D518;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C470D518()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  sub_1C4EFEF58();
  (*(v6 + 8))(v5, v7);
  (*(v4 + 16))(v2, v1, v3);
  v8 = (*(v4 + 88))(v2, v3);
  v9 = v0[12];
  v10 = v0[13];
  v11 = v0[11];
  if (v8 == *MEMORY[0x1E69A9C28])
  {
    (*(v9 + 96))(v0[13], v11);
    v12 = *v10;
    v13 = v10[1];
  }

  else
  {
    (*(v9 + 8))(v0[13], v11);
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DDE0);
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CE8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C43F8000, v15, v16, "EntityRelevanceMLModel.init: not correct metadataOutput", v17, 2u);
      MEMORY[0x1C6942830](v17, -1, -1);
    }

    v12 = 0;
    v13 = 0;
  }

  v18 = v0[14];
  v20 = v0[11];
  v19 = v0[12];
  v27 = v0[2];
  v28 = v0[3];

  MEMORY[0x1C6940010](58, 0xE100000000000000);
  if (v13)
  {
    v21 = v12;
  }

  else
  {
    v21 = 0x746C7561666564;
  }

  if (v13)
  {
    v22 = v13;
  }

  else
  {
    v22 = 0xE700000000000000;
  }

  MEMORY[0x1C6940010](v21, v22);

  (*(v19 + 8))(v18, v20);

  v23 = v0[1];
  v24 = v0[19];
  v25.n128_u64[0] = v0[4];

  return v23(v24, v27, v28, v25);
}

uint64_t sub_1C470D7E0()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1C470D890()
{
  result = qword_1EDDEFE90;
  if (!qword_1EDDEFE90)
  {
    sub_1C4EFFF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEFE90);
  }

  return result;
}

unint64_t sub_1C470D8E8(uint64_t a1)
{
  result = sub_1C4702C80();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C470D970(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 8) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return sub_1C44157D4((a1 + v7 + 8) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1C470DAF0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 8) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = &a1[v10 + 8] & ~v10;

            sub_1C440BAA8(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C470DD50(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_1C470DDD8(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v6 < a2)
  {
    v8 = ((*(*(v4 - 8) + 64) + ((v7 + 8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v6;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (v14)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (v14)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_22;
        }

LABEL_18:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        return (v6 + (v10 | v15) + 1);
      default:
LABEL_22:
        if (v6)
        {
          return sub_1C44157D4((result + v7 + 8) & ~v7, v6, v4);
        }

        return 0;
    }
  }

  return sub_1C44157D4((result + v7 + 8) & ~v7, v6, v4);
}

void sub_1C470DEFC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  v10 = *(v7 + 80);
  v11 = ((*(v7 + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(v7 + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          v18 = &a1[v10 + 8] & ~v10;

          sub_1C440BAA8(v18, a2, v9, v6);
        }

        break;
    }
  }

  else
  {
    if (v11)
    {
      v16 = 1;
    }

    else
    {
      v16 = a2 - v9;
    }

    if (v11)
    {
      v17 = ~v9 + a2;
      bzero(a1, ((*(v8 + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C470E0EC(uint64_t a1, void *a2)
{
  v3 = sub_1C4EFB0B8();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C4EFB058();
  v11 = a2;
  sub_1C4EFBFC8();
  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C470E200(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 32);
  v15 = *(v14 + 16);
  if (v15)
  {
    v24 = *(v10 + 20);
    v16 = v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = *(v11 + 72);
    do
    {
      sub_1C443CCBC(v16, v13);
      v18 = sub_1C4EFBE38();
      (*(*(v18 - 8) + 16))(v5, &v13[v24], v18);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C469C410(v13);
      sub_1C440BAA8(v5, 0, 1, v18);
      sub_1C4EFB498();

      sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
      v19 = sub_1C4EFBF38();
      sub_1C440BAA8(v8, 1, 1, v19);
      sub_1C4EFB538();

      sub_1C4423A0C(v8, &unk_1EC0BCAB0, &unk_1C4F111A0);
      v16 += v17;
      --v15;
    }

    while (v15);
  }

  v20 = *MEMORY[0x1E69A00D0];
  v21 = sub_1C4EFBF38();
  (*(*(v21 - 8) + 104))(v8, v20, v21);
  sub_1C440BAA8(v8, 0, 1, v21);
  sub_1C4EFB478();
  return sub_1C4423A0C(v8, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C470E518(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C470E5EC(char a1)
{
  if (a1)
  {
    return 0x6C43797469746E65;
  }

  else
  {
    return 0x6D614E656C626174;
  }
}

uint64_t sub_1C470E630(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = sub_1C456902C(&qword_1EC0BBD90, &qword_1C4F22AF8);
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1C4409678(a1, a1[3]);
  sub_1C470EA74();
  sub_1C4F02BF8();
  v17 = 0;
  sub_1C4F02798();
  if (!v4)
  {
    v16 = v14;
    v15 = 1;
    sub_1C470EB1C();
    sub_1C4F027E8();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1C470E7B0(void *a1)
{
  sub_1C456902C(&qword_1EC0BBD88, &qword_1C4F22AF0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C470EA74();
  sub_1C4F02BC8();
  if (!v1)
  {
    v4 = sub_1C4F02678();
    sub_1C470EAC8();
    sub_1C4F026C8();
    v6 = sub_1C44069E0();
    v7(v6);
  }

  sub_1C440962C(a1);
  return v4;
}

uint64_t sub_1C470E984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C470E518(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C470E9AC(uint64_t a1)
{
  v2 = sub_1C470EA74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C470E9E8(uint64_t a1)
{
  v2 = sub_1C470EA74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C470EA24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C470E7B0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_1C470EA74()
{
  result = qword_1EDDFA7F0;
  if (!qword_1EDDFA7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA7F0);
  }

  return result;
}

unint64_t sub_1C470EAC8()
{
  result = qword_1EDDFB7C0;
  if (!qword_1EDDFB7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB7C0);
  }

  return result;
}

unint64_t sub_1C470EB1C()
{
  result = qword_1EDDE8140[0];
  if (!qword_1EDDE8140[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE8140);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityRelevanceRankingDatabaseTable.Config.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C470EC50()
{
  result = qword_1EC0BBD98;
  if (!qword_1EC0BBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BBD98);
  }

  return result;
}

unint64_t sub_1C470ECA8()
{
  result = qword_1EDDFA7E0;
  if (!qword_1EDDFA7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA7E0);
  }

  return result;
}

unint64_t sub_1C470ED00()
{
  result = qword_1EDDFA7E8;
  if (!qword_1EDDFA7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA7E8);
  }

  return result;
}

uint64_t sub_1C470ED70(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C470EE58(uint64_t a1, void *a2)
{
  v4 = sub_1C4EF9CD8();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = *(a1 + 16);
  v21 = a1;
  v22 = v8;
  v25 = a2;
  v24 = a2 + 7;
  v10 = (v9 + 16);
  v20 = v9;
  v11 = (v9 + 8);
  while (v7 != v22)
  {
    v23 = v7;
    if (v25[2])
    {
      v12 = *(v20 + 72);
      v13 = v25;
      sub_1C4498DE4(&qword_1EC0B90D0, MEMORY[0x1E6969540]);
      v14 = sub_1C4F00FD8();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        v16 = v14 & v15;
        if (((*(v24 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*v10)(v6, v25[6] + v16 * v12, v4);
        sub_1C4498DE4(&qword_1EC0B9D00, MEMORY[0x1E6969550]);
        v17 = sub_1C4F010B8();
        (*v11)(v6, v4);
        v14 = v16 + 1;
        if (v17)
        {

          return v23;
        }
      }
    }

    v7 = v23 + 1;
  }

  return 0;
}

NSObject *sub_1C470F0AC(id *a1)
{
  v3 = v1;
  v65 = a1;
  isa = v1->isa;
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v58 - v5;
  v7 = sub_1C4EF9CD8();
  v67 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - v11;
  sub_1C4411BD8();
  v13 = sub_1C4598E54();
  if (v2)
  {

LABEL_3:
    v14 = *(&v1[6].isa + qword_1EC0BBDC0);
    v75[2] = *(&v1[4].isa + qword_1EC0BBDC0);
    v75[3] = v14;
    v15 = *(&v1[2].isa + qword_1EC0BBDC0);
    v75[0] = *(&v1->isa + qword_1EC0BBDC0);
    v75[1] = v15;
    MEMORY[0x1EEE9AC00](v13);
    *(&v58 - 2) = v75;
    sub_1C446C37C(sub_1C4707C54, &(&v58)[-4]);
    sub_1C47108AC();
    v24 = *(&v1->isa + qword_1EC0BBDD8);
    v25 = sub_1C4EF9BE8();
    v26 = v24 / 300.0;
    if (COERCE__INT64(fabs(v24 / 300.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v26 > -9.22337204e18)
    {
      if (v26 < 9.22337204e18)
      {
        if ((v26 & 0x8000000000000000) == 0)
        {
          MEMORY[0x1EEE9AC00](v25);
          *(&v58 - 2) = v12;
          *(&v58 - 1) = v1;
          sub_1C45DA250();
          v28 = v27;
          v29 = v67;
          (*(v67 + 8))(v12, v7);
          v30 = v28;
          goto LABEL_14;
        }

        goto LABEL_28;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (!v13)
  {
    goto LABEL_3;
  }

  if (!*(v13 + 16))
  {

    goto LABEL_3;
  }

  v61 = v13;
  if (qword_1EDDFA668 != -1)
  {
LABEL_29:
    sub_1C4406758();
    swift_once();
  }

  v16 = sub_1C4F00978();
  sub_1C442B738(v16, qword_1EDE2DDE0);
  sub_1C4400248();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v17 = sub_1C4F00968();
  v18 = sub_1C4F01CB8();

  v60 = v18;
  v19 = v18;
  v20 = v17;
  if (os_log_type_enabled(v17, v19))
  {
    v21 = swift_slowAlloc();
    sub_1C43FEC60();
    v59 = swift_slowAlloc();
    *&v68 = v59;
    *v21 = 136315394;
    v22 = sub_1C441F870(qword_1EC0BBDE0);
    *(v21 + 4) = sub_1C441D828(v22, v23, &v68);
    *(v21 + 12) = 2048;
    *(v21 + 14) = *(sub_1C4400248() + 16);

    v58 = v20;
    _os_log_impl(&dword_1C43F8000, v20, v60, "%s: Found saved state with %ld points. Will resume.", v21, 0x16u);
    v20 = v59;
    sub_1C440962C(v59);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    sub_1C4400248();
  }

  v56._countAndFlagsBits = sub_1C4411BD8();
  KeyValueStore.delete(key:)(v56);
  if (v57)
  {
    sub_1C4400248();

    return v20;
  }

  v29 = v67;
  v30 = sub_1C4400248();
LABEL_14:
  v61 = v30;
  sub_1C446D094(v30, v6);
  v31 = sub_1C44157D4(v6, 1, v7);
  v32 = v66;
  if (v31 == 1)
  {
    (*(v29 + 16))(v66, v65, v7);
    if (sub_1C44157D4(v6, 1, v7) != 1)
    {
      sub_1C4423A0C(v6, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }
  }

  else
  {
    (*(v29 + 32))(v66, v6, v7);
  }

  sub_1C442E860(v3 + qword_1EC0BBDA8, &v68);
  v33 = v62;
  (*(v29 + 16))(v62, v32, v7);
  v34 = v63;
  sub_1C4EF9BE8();
  type metadata accessor for CachedContextProvider(0);
  swift_allocObject();
  v35 = sub_1C466C344(&v68, v33, v34);
  v62 = v35;
  v36 = qword_1EC0BBDF8;
  swift_beginAccess();
  *(&v3->isa + v36) = MEMORY[0x1E69E7CC0];

  v65 = &v58;
  v73 = *(&v3->isa + qword_1EC0BBDB0);
  MEMORY[0x1EEE9AC00](v37);
  *(&v58 - 2) = v35;
  *(&v58 - 1) = v3;
  v38 = isa[10];
  v39 = isa[11];
  v63 = v7;
  v41 = isa[12];
  v40 = isa[13];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *&v68 = v38;
  *(&v68 + 1) = v39;
  v69 = v41;
  v70 = v40;
  type metadata accessor for EntityRelevanceTrainingSetProvider(255, &v68);
  v42 = sub_1C4F017A8();
  *&v68 = type metadata accessor for DigestingEntityRelevanceFeatureProvider();
  *(&v68 + 1) = v38;
  v69 = v39;
  v70 = &off_1EEB23D18;
  v71 = v41;
  v72 = v40;
  v43 = type metadata accessor for CombinedFeatureAndGroundTruthProvider(0, &v68);
  WitnessTable = swift_getWitnessTable();
  sub_1C4D4F664(sub_1C4711B14, &(&v58)[-4], v42, v43, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v45);

  (*(v67 + 8))(v66, v63);
  v46 = swift_getWitnessTable();
  type metadata accessor for EntityRelevanceHistoricalFeatureStoreDigestTask(0, v43, v46, v47);
  v48 = *(&v3[2].isa + qword_1EC0BBDC0);
  v74[0] = *(&v3->isa + qword_1EC0BBDC0);
  v74[1] = v48;
  v49 = *(&v3[6].isa + qword_1EC0BBDC0);
  v74[2] = *(&v3[4].isa + qword_1EC0BBDC0);
  v74[3] = v49;
  v50 = sub_1C46FF2D0();
  v51 = v61;
  sub_1C45FB394();
  v20 = v52;
  v53 = (v3 + qword_1EC0BBDF0);
  v54 = *(&v3->isa + qword_1EC0BBDF0);
  *v53 = v50;
  v53[1] = v51;
  sub_1C46F4E90(v74, &v68);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C46F4E50(v54);
  return v20;
}

uint64_t sub_1C470F990@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v87 = a4;
  v79 = a2;
  v89 = a1;
  v82 = *(*a3 + 88);
  v86 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v85 = &v77 - v6;
  v80 = *(v7 + 80);
  v84 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v77 - v9;
  *&v11 = v10;
  *(&v11 + 1) = v12;
  v81 = *(v13 + 96);
  v90 = v11;
  v91 = v81;
  v14 = type metadata accessor for EntityRelevanceTrainingSetProvider(0, &v90);
  v107 = v14;
  sub_1C442E860(a1 + v14[14], &v90);
  sub_1C442E860(a1 + v14[15], v106);
  sub_1C442E860(a1 + v14[16], v105);
  v78 = *(a1 + v14[17]);
  v15 = sub_1C4418280(&v90, *(&v91 + 1));
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = sub_1C4418280(v106, v106[3]);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = (&v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v18;
  v26 = *v23;
  v27 = type metadata accessor for BehaviorDatabaseEventTracker();
  v104[3] = v27;
  v104[4] = &off_1F43E2390;
  v104[0] = v25;
  v28 = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  v102 = v28;
  v103 = &off_1F43E2510;
  v101[0] = v26;
  v29 = type metadata accessor for CachedBehaviorFeaturizerProvider();
  v30 = swift_allocObject();
  v31 = sub_1C4418280(v104, v27);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = (&v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34, v32);
  v36 = sub_1C4418280(v101, v102);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = (&v77 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39, v37);
  v41 = *v34;
  v42 = *v39;
  v100[3] = v27;
  v100[4] = &off_1F43E2390;
  v100[0] = v41;
  v99[3] = v28;
  v99[4] = &off_1F43E2510;
  v99[0] = v42;
  *(v30 + 160) = 0u;
  *(v30 + 176) = 0u;
  *(v30 + 192) = 0u;
  v43 = v79;
  *(v30 + 16) = v79;
  v88 = v30;
  sub_1C442E860(v100, v30 + 24);
  sub_1C442E860(v99, v30 + 64);
  sub_1C442E860(v105, v30 + 104);
  *(v30 + 144) = v78;
  sub_1C442E860(v105, v98);
  sub_1C442E860(v99, v97);
  v44 = sub_1C4418280(v97, v97[3]);
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = (&v77 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47, v45);
  v49 = *v47;
  v95 = type metadata accessor for CachedContextProvider(0);
  v96 = &off_1F43E5FE8;
  v93[4] = &off_1F43E2510;
  *&v94 = v43;
  v93[3] = v28;
  v93[0] = v49;
  type metadata accessor for CachedBehaviorDatabaseHistogramManager();
  v50 = swift_allocObject();
  v51 = sub_1C4418280(v93, v28);
  v52 = MEMORY[0x1EEE9AC00](v51);
  v54 = (&v77 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v55 + 16))(v54, v52);
  v56 = *v54;
  v50[15] = v28;
  v50[16] = &off_1F43E2510;
  v50[12] = v56;
  v50[17] = MEMORY[0x1E69E7CC8];
  sub_1C441D670(&v94, (v50 + 2));
  sub_1C441D670(v98, (v50 + 7));
  swift_retain_n();

  sub_1C440962C(v93);
  sub_1C440962C(v105);
  sub_1C440962C(v99);
  sub_1C440962C(v100);
  sub_1C440962C(v97);
  v57 = v88;
  *(v88 + 152) = v50;
  sub_1C440962C(v101);
  sub_1C440962C(v104);
  sub_1C440962C(v106);
  sub_1C440962C(&v90);
  *(&v91 + 1) = v29;
  *&v92 = &off_1F43E2F88;
  *&v90 = v57;
  v58 = qword_1EC0BBDF8;
  swift_beginAccess();

  sub_1C45891F0();
  v59 = *(*(a3 + v58) + 16);
  sub_1C4589D98();
  v60 = v29;
  v61 = sub_1C4418280(&v90, v29);
  v62 = *(v29 - 8);
  v63 = *(v62 + 64);
  v64 = MEMORY[0x1EEE9AC00](v61);
  v65 = (v63 + 15) & 0xFFFFFFFFFFFFFFF0;
  v79 = *(v62 + 16);
  v79(&v77 - v65, v64);
  sub_1C4711B34(v59, *(&v77 - v65), (a3 + v58));
  sub_1C440962C(&v90);
  swift_endAccess();
  v66 = *(a3 + qword_1EC0BBDD0);
  v67 = *(v89 + v107[18]);
  *(&v91 + 1) = v60;
  *&v92 = &off_1F43E2F88;
  *&v90 = v88;
  v68 = type metadata accessor for DigestingEntityRelevanceFeatureProvider();
  v69 = swift_allocObject();
  v70 = sub_1C4418280(&v90, v60);
  v71 = MEMORY[0x1EEE9AC00](v70);
  v79(&v77 - v65, v71);
  v72 = *(&v77 - v65);
  v69[6] = v60;
  v69[7] = &off_1F43E2F88;
  v69[8] = v67;
  v69[2] = v66;
  v69[3] = v72;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(&v90);
  *&v90 = v68;
  v73 = v80;
  *(&v90 + 1) = v80;
  v74 = v82;
  *&v91 = v82;
  *(&v91 + 1) = &off_1EEB23D18;
  v92 = v81;
  type metadata accessor for CombinedFeatureAndGroundTruthProvider(0, &v90);
  *&v90 = v69;
  v75 = v89;
  (*(v84 + 16))(v83, v89, v73);
  (*(v86 + 16))(v85, v75 + v107[13], v74);
  *v87 = sub_1C46FDCB4();
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C471035C()
{
  v1 = *(v0 + qword_1EC0BBDF0);
  if (!v1)
  {
    return 0;
  }

  v5 = *(v0 + qword_1EC0BBDF0 + 8);
  sub_1C46F366C(v1);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4598054();
  v3 = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C4711690(&v5, v3);
  if (*(v5 + 16) < result)
  {
    __break(1u);
  }

  else
  {
    sub_1C4C075A0();

    return v5;
  }

  return result;
}

void sub_1C4710434()
{
  v0 = sub_1C471035C();
  if (v0)
  {
    v1 = v0;
    sub_1C441F870(qword_1EC0BBDE8);
    sub_1C495C28C();
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDE2DDE0);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CB8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      sub_1C43FEC60();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315394;
      v13 = sub_1C441F870(qword_1EC0BBDE0);
      *(v11 + 4) = sub_1C441D828(v13, v14, &v17);
      *(v11 + 12) = 2048;
      v15 = *(v1 + 16);

      *(v11 + 14) = v15;

      _os_log_impl(&dword_1C43F8000, v9, v10, "%s: Saved data collection state with %ld remaining points.", v11, 0x16u);
      sub_1C440962C(v12);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDE2DDE0);

    oslog = sub_1C4F00968();
    v3 = sub_1C4F01CB8();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      sub_1C43FEC60();
      v5 = swift_slowAlloc();
      v17 = v5;
      *v4 = 136315138;
      v6 = sub_1C441F870(qword_1EC0BBDE0);
      *(v4 + 4) = sub_1C441D828(v6, v7, &v17);
      _os_log_impl(&dword_1C43F8000, oslog, v3, "%s: Skipping persisting state for deferral since no sample task has been created.", v4, 0xCu);
      sub_1C440962C(v5);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }
  }
}

uint64_t sub_1C47108AC()
{
  v1 = v0;
  v2 = *v0;
  result = KeyValueStore.delete(key:)(*(v0 + qword_1EC0BBDE8));
  if (!v4)
  {
    v5 = qword_1EC0BBDF8;
    swift_beginAccess();
    v6 = *(v1 + v5);
    v7 = *(v6 + 16);
    v8 = v6 + 32;
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    for (i = 0; ; ++i)
    {
      if (v7 == i)
      {

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v10 = *(v2 + 96);
        v11 = *(v2 + 80);
        v12 = v10;
        type metadata accessor for EntityRelevanceTrainingSetProvider(255, &v11);
        sub_1C4F017A8();
        swift_getWitnessTable();
        sub_1C4F01548();
      }

      if (i >= *(v6 + 16))
      {
        break;
      }

      sub_1C442E860(v8, &v11);
      sub_1C4409678(&v11, *(&v12 + 1));
      sub_1C460924C();
      result = sub_1C440962C(&v11);
      v8 += 40;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C4710A78(uint64_t a1, uint64_t a2)
{
  v5 = *(*a2 + 96);
  v35 = *(*a2 + 80);
  v36 = v5;
  v6 = type metadata accessor for EntityRelevanceTrainingSetProvider(0, &v35);
  if (!*(a1 + v6[18]) || (result = sub_1C46DE0D8(), !v2))
  {
    v38 = type metadata accessor for BehaviorFeaturizer();
    sub_1C442E860(a2 + qword_1EC0BBDA8, &v35);
    sub_1C442E860(a1 + v6[14], v34);
    sub_1C442E860(a1 + v6[16], v31);
    v8 = *(a1 + v6[17]);
    v9 = *(&v36 + 1);
    v29 = v37;
    v10 = sub_1C4418280(&v35, *(&v36 + 1));
    v30 = v28;
    v11 = MEMORY[0x1EEE9AC00](v10);
    v13 = (v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = sub_1C4418280(v34, v34[3]);
    v28[1] = v28;
    v16 = MEMORY[0x1EEE9AC00](v15);
    v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v18, v16);
    v21 = v32;
    v20 = v33;
    v22 = sub_1C4418280(v31, v32);
    v23 = MEMORY[0x1EEE9AC00](v22);
    v25 = v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v25, v23);
    v27 = type metadata accessor for BehaviorDatabaseEventTracker();

    sub_1C460784C(v13, v18, v25, v8, v38, v9, v21, v27, v29, v20, &off_1F43E2390);
    sub_1C440962C(v31);
    sub_1C440962C(v34);
    sub_1C440962C(&v35);
    sub_1C4604A6C();
  }

  return result;
}

uint64_t sub_1C4710DE4()
{
  sub_1C4467948(v0 + qword_1EC0BBDA0);
  sub_1C440962C((v0 + qword_1EC0BBDA8));

  sub_1C46F4E50(*(v0 + qword_1EC0BBDF0));

  return v0;
}

uint64_t sub_1C4710EF8()
{
  sub_1C4710DE4();

  return swift_deallocClassInstance();
}

void sub_1C4710F70(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1C471154C(319, &qword_1EC0BBF00, &protocol descriptor for BehaviorEventTracking);
      if (v3 <= 0x3F)
      {
        sub_1C471154C(319, &qword_1EC0BBF08, &protocol descriptor for BehaviorHistogramKeyProviding);
        if (v4 <= 0x3F)
        {
          sub_1C471154C(319, &qword_1EC0BBF10, &protocol descriptor for BehaviorHistogramManaging);
          if (v5 <= 0x3F)
          {
            type metadata accessor for KeyValueStore(319);
            if (v6 <= 0x3F)
            {
              sub_1C47115A0(319);
              if (v7 <= 0x3F)
              {
                sub_1C4700EB8();
                if (v8 <= 0x3F)
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

uint64_t sub_1C47110BC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(*(v5 - 8) + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v5 - 8) + 64) + v11;
  v14 = *(*(v7 - 8) + 64) + 7;
  if (v12 >= a2)
  {
LABEL_28:
    if (v6 != v12)
    {
      result = (v13 + result) & ~v11;
      if (v9 != v12)
      {
        v24 = *(((v14 + result) & 0xFFFFFFFFFFFFFFF8) + 24);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }

      v6 = v9;
      v5 = v7;
    }

    return sub_1C44157D4(result, v6, v5);
  }

  v15 = ((((((((((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = a2 - v12;
  v17 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = v16 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  switch(v20)
  {
    case 1:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 2:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 3:
      __break(1u);
      return result;
    case 4:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

LABEL_25:
      v22 = v21 - 1;
      if (v17)
      {
        v22 = 0;
        v23 = *result;
      }

      else
      {
        v23 = 0;
      }

      result = v12 + (v23 | v22) + 1;
      break;
    default:
      goto LABEL_28;
  }

  return result;
}

void sub_1C47112A8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = v14 & ~v13;
  v16 = *(*(v9 - 8) + 64) + 7;
  v17 = ((((((((((((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v21 = 0;
  }

  else
  {
    v18 = a3 - v12;
    if (((((((((((((v16 + v15) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  if (a2 <= v12)
  {
    switch(v21)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_46:
        __break(1u);
        return;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!a2)
        {
          return;
        }

LABEL_34:
        if (v8 == v12)
        {
          goto LABEL_37;
        }

        a1 = (&a1[v14] & ~v13);
        if (v11 == v12)
        {
          v8 = v11;
          v7 = v9;
LABEL_37:

          sub_1C440BAA8(a1, a2, v8, v7);
        }

        else
        {
          v24 = &a1[v16] & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            *(v24 + 8) = 0u;
            *(v24 + 24) = 0u;
            *v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(v24 + 24) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((((((v16 + v15) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a2 - v12;
    }

    else
    {
      v22 = 1;
    }

    if (((((((((((((v16 + v15) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v23 = ~v12 + a2;
      bzero(a1, ((((((((((((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
      *v6 = v23;
    }

    switch(v21)
    {
      case 1:
        *(v6 + v17) = v22;
        break;
      case 2:
        *(v6 + v17) = v22;
        break;
      case 3:
        goto LABEL_46;
      case 4:
        *(v6 + v17) = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C471154C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1C47115A0(uint64_t a1)
{
  if (!qword_1EC0BBF18)
  {
    type metadata accessor for EntityInteractionHistoryIngestor();
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC0BBF18);
    }
  }
}

NSObject *sub_1C47115F8(id *a1)
{
  result = sub_1C470F0AC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1C4711690(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C4EF9CD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v46 = a1;
  v19 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C470EE58(v19, a2);
  v44 = v2;
  if (v2)
  {
    goto LABEL_4;
  }

  v59 = v18;
  v49 = v9;
  if (v21)
  {
    v3 = *(v19 + 16);
LABEL_4:

    return v3;
  }

  v3 = result;
  v22 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v23 = v19;
    v60 = v7 + 16;
    v57 = a2 + 56;
    v58 = (v7 + 8);
    v45 = (v7 + 40);
    v24 = v59;
    v50 = v7;
    v48 = v12;
    while (1)
    {
      v25 = *(v23 + 16);
      if (v22 == v25)
      {
        goto LABEL_4;
      }

      if (v22 >= v25)
      {
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
        break;
      }

      v54 = v3;
      v55 = v23;
      v51 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v26 = v23 + v51;
      v27 = *(v7 + 72);
      v56 = v22;
      v28 = *(v7 + 16);
      v52 = v26;
      v53 = v27 * v22;
      v28(v24, v26 + v27 * v22, v6);
      if (*(a2 + 16))
      {
        sub_1C4498DE4(&qword_1EC0B90D0, MEMORY[0x1E6969540]);
        v29 = sub_1C4F00FD8();
        v30 = a2;
        v31 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v32 = v29 & v31;
          a2 = v30;
          v24 = v59;
          if (((*(v57 + (((v29 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v31)) & 1) == 0)
          {
            break;
          }

          v28(v15, *(v30 + 48) + v32 * v27, v6);
          sub_1C4498DE4(&qword_1EC0B9D00, MEMORY[0x1E6969550]);
          v33 = sub_1C4F010B8();
          v34 = *v58;
          (*v58)(v15, v6);
          v29 = v32 + 1;
          if (v33)
          {
            v24 = v59;
            result = v34(v59, v6);
            a2 = v30;
            v3 = v54;
            v23 = v55;
            v35 = v56;
            goto LABEL_24;
          }
        }
      }

      result = (*v58)(v24, v6);
      v36 = v54;
      v35 = v56;
      if (v54 == v56)
      {
        v23 = v55;
      }

      else
      {
        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        v37 = *(v55 + 16);
        if (v54 >= v37)
        {
          goto LABEL_31;
        }

        v38 = v27 * v54;
        v39 = v52;
        v47 = v38;
        result = (v28)(v48, v52 + v38, v6);
        if (v56 >= v37)
        {
          goto LABEL_32;
        }

        v28(v49, v39 + v53, v6);
        v23 = v55;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C48348C0();
          v23 = v43;
        }

        v40 = v23 + v51;
        v41 = *v45;
        result = (*v45)(v23 + v51 + v47, v49, v6);
        if (v56 >= *(v23 + 16))
        {
          goto LABEL_33;
        }

        result = v41(v40 + v53, v48, v6);
        v35 = v56;
        *v46 = v23;
        v24 = v59;
      }

      v42 = __OFADD__(v36, 1);
      v3 = v36 + 1;
      if (v42)
      {
        goto LABEL_29;
      }

LABEL_24:
      v42 = __OFADD__(v35, 1);
      v22 = v35 + 1;
      v7 = v50;
      if (v42)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4711B34(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = type metadata accessor for CachedBehaviorFeaturizerProvider();
  v10 = &off_1F43E2F88;
  *&v8 = a2;
  v6 = *a3;
  *(v6 + 16) = a1 + 1;
  return sub_1C441D670(&v8, v6 + 40 * a1 + 32);
}

double sub_1C4711BA4()
{
  qword_1EDE2CD08 = 0;
  result = 0.0;
  xmmword_1EDE2CCE8 = 0u;
  unk_1EDE2CCF8 = 0u;
  return result;
}

uint64_t sub_1C4711BBC()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2CD10);
  v1 = sub_1C442B738(v0, qword_1EDE2CD10);
  v2 = type metadata accessor for Configuration(0);

  return sub_1C440BAA8(v1, 1, 1, v2);
}

void sub_1C4711C38(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BBFC0, &qword_1C4F22E18);
  v3 = sub_1C43FBD18(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v39 - v4 + 16;
  v6 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v39 - v8 + 16;
  if (Configuration.isECREnabled.getter())
  {
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0(&qword_1EDDFA678);
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDE2DCD8);
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CF8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = sub_1C43FCED0();
      *v13 = 0;
      _os_log_impl(&dword_1C43F8000, v11, v12, "EntityResolutionXPC: starting...", v13, 2u);
      sub_1C43FBE2C();
    }

    if (qword_1EDDE5538 != -1)
    {
      sub_1C440D340(&qword_1EDDE5538);
    }

    v14 = sub_1C442B738(v6, qword_1EDE2CD10);
    sub_1C44098F0(a1, v9);
    v15 = type metadata accessor for Configuration(0);
    sub_1C440BAA8(v9, 0, 1, v15);
    swift_beginAccess();
    sub_1C44408D4(v9, v14, &unk_1EC0B9610, &unk_1C4F0F2E0);
    swift_endAccess();
    if (qword_1EDDFF2A0 != -1)
    {
      swift_once();
    }

    v16 = sub_1C44E7FAC();
    v17 = qword_1EDDE5510;
    v18 = *(v16 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
    if (v17 != -1)
    {
      sub_1C4419470(&qword_1EDDE5510);
    }

    v19 = sub_1C4EFFB58();
    v20 = sub_1C4EFF7A8();
    sub_1C440BAA8(v5, 1, 1, v20);
    v21 = v18;
    v22 = sub_1C4EFFB48();
    v39[3] = v19;
    v39[4] = MEMORY[0x1E69A9B10];
    v39[0] = v22;
    swift_beginAccess();
    sub_1C44408D4(v39, &xmmword_1EDE2CCE8, &qword_1EC0BBF28, &qword_1C4F22D28);
    swift_endAccess();

    sub_1C4461BB8(0, &qword_1EDDFA520, 0x1E696B0D8);
    v27 = sub_1C4433C94();
    v29 = sub_1C49AA56C(v27, v28);
    v30 = qword_1EDE2CCD8;
    qword_1EDE2CCD8 = v29;
    v31 = v29;

    if (v31)
    {
      qword_1EDE2CCE0 = [objc_allocWithZone(type metadata accessor for EntityResolutionXPC.Delegate()) init];
      v32 = qword_1EDE2CCE0;
      swift_unknownObjectRelease();
      [v31 setDelegate_];

      [v31 resume];
    }

    else
    {
      v33 = sub_1C4F00968();
      v34 = sub_1C4F01CE8();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = sub_1C43FCED0();
        sub_1C43FBD24(v35);
        sub_1C440BAE8(&dword_1C43F8000, v36, v37, "Failed to create EntityResolution XPC service");
        sub_1C43FE9D4();
      }
    }
  }

  else
  {
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0(&qword_1EDDFA678);
    }

    v23 = sub_1C4F00978();
    sub_1C442B738(v23, qword_1EDE2DCD8);
    v38 = sub_1C4F00968();
    v24 = sub_1C4F01CF8();
    if (os_log_type_enabled(v38, v24))
    {
      v25 = sub_1C43FCED0();
      *v25 = 0;
      _os_log_impl(&dword_1C43F8000, v38, v24, "EntityResolution is not enabled.", v25, 2u);
      sub_1C43FBE2C();
    }

    v26 = v38;
  }
}

uint64_t sub_1C471220C()
{
  sub_1C4EFC798();
  result = sub_1C4EFC788();
  qword_1EDDE5530 = result;
  return result;
}

uint64_t EntityResolutionXPC.Server.warmup(for:)()
{
  sub_1C43FBCD4();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v0[15] = v2;
  v0[16] = ObjectType;
  v4 = sub_1C4F008B8();
  v0[17] = v4;
  sub_1C43FCF7C(v4);
  v0[18] = v5;
  v0[19] = sub_1C43FE604();
  v0[20] = swift_task_alloc();
  v6 = sub_1C4F008F8();
  v0[21] = v6;
  sub_1C43FCF7C(v6);
  v0[22] = v7;
  v0[23] = sub_1C43FE604();
  v0[24] = swift_task_alloc();
  v8 = sub_1C4F00978();
  v0[25] = v8;
  sub_1C43FCF7C(v8);
  v0[26] = v9;
  v0[27] = sub_1C43FE604();
  v0[28] = swift_task_alloc();
  v10 = sub_1C4EFD618();
  v0[29] = v10;
  sub_1C43FCF7C(v10);
  v0[30] = v11;
  v0[31] = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C47123FC(uint64_t a1)
{
  sub_1C4F00188();
  v2 = sub_1C442FCD8();
  v3(v2);
  sub_1C4F008C8();
  sub_1C4F008D8();
  sub_1C4F00898();
  v4 = sub_1C4F008D8();
  sub_1C4F01E28();
  if (sub_1C4F01F28())
  {
    v5 = sub_1C43FCED0();
    sub_1C43FBD24(v5);
    v6 = sub_1C4F008A8();
    sub_1C4423684(&dword_1C43F8000, v7, v8, v6, "ECR.XPC.warmup", "");
    sub_1C43FE9D4();
  }

  v39 = *(v1 + 224);
  v9 = *(v1 + 208);
  v38 = *(v1 + 200);
  v37 = *(v1 + 192);
  v10 = *(v1 + 168);
  v11 = *(v1 + 176);
  v12 = *(v1 + 160);
  v14 = *(v1 + 136);
  v13 = *(v1 + 144);

  v15 = sub_1C4409BFC();
  v16(v15, v12, v14);
  sub_1C4F00948();
  swift_allocObject();
  sub_1C442BA8C();
  v17 = sub_1C4425AA0();
  v18(v17, v37, v10);
  sub_1C447EFEC("ECR.XPC.warmup", 14);
  (*(v13 + 8))(v12, v14);
  (*(v11 + 8))(v37, v10);
  v19 = (*(v9 + 8))(v39, v38);
  if (qword_1EDDE5510 != -1)
  {
    v19 = sub_1C4419470(&qword_1EDDE5510);
  }

  sub_1C43FD630(v19, v1 + 96);
  sub_1C4460108(&xmmword_1EDE2CCE8, v1 + 56, &qword_1EC0BBF28, &qword_1C4F22D28);
  if (*(v1 + 80))
  {
    v21 = *(v1 + 120);
    v20 = *(v1 + 128);
    sub_1C441D670((v1 + 56), v1 + 16);
    v22 = swift_task_alloc();
    *(v1 + 256) = v22;
    v22[2] = v1 + 16;
    v22[3] = v21;
    v22[4] = v20;
    v23 = swift_task_alloc();
    *(v1 + 264) = v23;
    *v23 = v1;
    v23[1] = sub_1C471280C;
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DE38](v24, v25, v26, v27, v28, v29, v22, v30);
  }

  else
  {
    sub_1C4420C3C(v1 + 56, &qword_1EC0BBF28, &qword_1C4F22D28);
    v31 = sub_1C4EFF588();
    sub_1C4712ACC();
    sub_1C441C97C();
    swift_allocError();
    sub_1C440BC6C(v32, "Entity Resolution service is not available");
    (*(*(v31 - 8) + 104))();
    swift_willThrow();
    sub_1C4715778();
    v33 = sub_1C4402B58();
    v34(v33);

    sub_1C43FBCF0();

    return v35(0);
  }
}

uint64_t sub_1C471280C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 272) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4712910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v14 = *(v12 + 240);
  v13 = *(v12 + 248);
  v15 = *(v12 + 232);
  HIDWORD(a9) = *(v12 + 280);
  sub_1C440962C((v12 + 16));
  sub_1C4715778();
  (*(v14 + 8))(v13, v15);

  sub_1C43FBCF0();
  sub_1C43FEA3C();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1C47129EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();

  sub_1C440962C((v12 + 16));
  v24 = *(v12 + 272);
  sub_1C4715778();
  v13 = sub_1C4402B58();
  v14(v13);

  sub_1C43FBCF0();
  sub_1C43FEA3C();

  return v17(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

unint64_t sub_1C4712ACC()
{
  result = qword_1EC0BBF30;
  if (!qword_1EC0BBF30)
  {
    sub_1C4EFF588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BBF30);
  }

  return result;
}

uint64_t sub_1C4712B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C456902C(&qword_1EC0BBFF8, &qword_1C4F22E68);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  if (qword_1EDDE5520 != -1)
  {
    swift_once();
  }

  sub_1C442E860(a2, v14);
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_1C441D670(v14, v11 + 16);
  *(v11 + 56) = a3;
  (*(v7 + 32))(v11 + v10, v9, v6);
  sub_1C4EFC778();
}

uint64_t sub_1C4712CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C4712CF8, 0, 0);
}

uint64_t sub_1C4712CF8()
{
  sub_1C43FCF70();
  sub_1C4409678(*(v0 + 24), *(*(v0 + 24) + 24));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1C4712DA4;
  v2 = sub_1C4418A30(*(v0 + 32));

  return MEMORY[0x1EEE13D40](v2);
}

uint64_t sub_1C4712DA4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4712EA0()
{
  sub_1C43FBCD4();
  *(v0 + 64) = 1;
  sub_1C456902C(&qword_1EC0BBFF8, &qword_1C4F22E68);
  sub_1C441C97C();
  sub_1C4F01818();
  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4712F1C()
{
  sub_1C43FBCD4();
  *(v0 + 16) = *(v0 + 56);
  sub_1C456902C(&qword_1EC0BBFF8, &qword_1C4F22E68);
  sub_1C441C97C();
  sub_1C4F01808();
  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C471301C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1C47130D8;

  return EntityResolutionXPC.Server.warmup(for:)();
}

uint64_t sub_1C47130D8()
{
  sub_1C43FEAEC();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  v8 = *(v5 + 16);
  v9 = *v1;
  *v7 = *v1;

  sub_1C444B0DC();
  v11 = *(v10 + 24);
  if (v2)
  {
    v12 = sub_1C4EF9798();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(v10 + 24), v4 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v13 = *(v9 + 8);

  return v13();
}

uint64_t EntityResolutionXPC.Server.submitQuery(_:)()
{
  sub_1C43FBCD4();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v0[33] = v2;
  v0[34] = ObjectType;
  v4 = sub_1C4F00908();
  v0[35] = v4;
  sub_1C43FCF7C(v4);
  v0[36] = v5;
  v0[37] = sub_1C43FBE7C();
  v6 = sub_1C4F008B8();
  v0[38] = v6;
  sub_1C43FCF7C(v6);
  v0[39] = v7;
  v0[40] = sub_1C43FE604();
  v0[41] = swift_task_alloc();
  v0[42] = swift_task_alloc();
  v8 = sub_1C4F008F8();
  v0[43] = v8;
  sub_1C43FCF7C(v8);
  v0[44] = v9;
  v0[45] = sub_1C43FE604();
  v0[46] = swift_task_alloc();
  v0[47] = swift_task_alloc();
  v10 = sub_1C4F00978();
  v0[48] = v10;
  sub_1C43FCF7C(v10);
  v0[49] = v11;
  v0[50] = sub_1C43FE604();
  v0[51] = swift_task_alloc();
  v12 = sub_1C4EFD618();
  v0[52] = v12;
  sub_1C43FCF7C(v12);
  v0[53] = v13;
  v0[54] = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C4713478(uint64_t a1)
{
  v2 = *(v1 + 384);
  sub_1C4F00188();
  v3 = sub_1C442FCD8();
  v4(v3);
  sub_1C4F008C8();
  sub_1C4F008D8();
  sub_1C4F00898();
  v5 = sub_1C4F008D8();
  v6 = sub_1C4F01E28();
  if (sub_1C4F01F28())
  {
    v7 = sub_1C43FCED0();
    sub_1C43FBD24(v7);
    v8 = sub_1C4F008A8();
    _os_signpost_emit_with_name_impl(&dword_1C43F8000, v5, v6, v8, "ECR.XPC.submitQuery", "", v2, 2u);
    sub_1C43FE9D4();
  }

  v43 = *(v1 + 408);
  v9 = *(v1 + 392);
  v42 = *(v1 + 384);
  v10 = *(v1 + 376);
  v11 = *(v1 + 352);
  v41 = *(v1 + 344);
  v12 = *(v1 + 336);
  v14 = *(v1 + 304);
  v13 = *(v1 + 312);

  v15 = sub_1C4409BFC();
  v16(v15, v12, v14);
  sub_1C4F00948();
  swift_allocObject();
  sub_1C442BA8C();
  v17 = sub_1C4425AA0();
  v18(v17, v10, v41);
  sub_1C447EFEC("ECR.XPC.submitQuery", 19);
  v19 = *(v13 + 8);
  *(v1 + 440) = v19;
  *(v1 + 448) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v12, v14);
  v20 = *(v11 + 8);
  *(v1 + 456) = v20;
  *(v1 + 464) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v10, v41);
  v21 = (*(v9 + 8))(v43, v42);
  if (qword_1EDDE5510 != -1)
  {
    v21 = sub_1C4419470(&qword_1EDDE5510);
  }

  sub_1C43FD630(v21, v1 + 224);
  sub_1C4460108(&xmmword_1EDE2CCE8, v1 + 184, &qword_1EC0BBF28, &qword_1C4F22D28);
  if (!*(v1 + 208))
  {
    v34 = *(v1 + 424);
    v33 = *(v1 + 432);
    v35 = *(v1 + 416);
    sub_1C4420C3C(v1 + 184, &qword_1EC0BBF28, &qword_1C4F22D28);
    v36 = sub_1C4EFF588();
    sub_1C4712ACC();
    swift_allocError();
    sub_1C440BC6C(v37, "Entity Resolution service is not available");
    (*(*(v36 - 8) + 104))();
    swift_willThrow();
    (*(v34 + 8))(v33, v35);
    sub_1C44170B0();

    sub_1C43FBDA0();
    sub_1C4409BA4();

    __asm { BRAA            X1, X16 }
  }

  v44 = *(v1 + 264);
  sub_1C441D670((v1 + 184), v1 + 144);
  v22 = swift_task_alloc();
  *(v1 + 472) = v22;
  *(v22 + 16) = v1 + 144;
  *(v22 + 24) = v44;
  v23 = swift_task_alloc();
  *(v1 + 480) = v23;
  sub_1C4461BB8(0, &qword_1EDDDB8C8, 0x1E69A9E90);
  *v23 = v1;
  v23[1] = sub_1C47138D0;
  sub_1C43FEAF8();
  sub_1C4409BA4();

  return MEMORY[0x1EEE6DE38](v24, v25, v26, v27, v28, v29, v30, v31);
}

uint64_t sub_1C47138D0()
{
  sub_1C43FCF70();
  sub_1C43FBE64();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 488) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C47139F8()
{
  v53 = v0;
  v1 = v0[31];
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  sub_1C47145A8();
  v47 = v1;
  sub_1C4714538();
  sub_1C44239FC(v3, v4);
  v5 = sub_1C440F54C(&unk_1F43E9F88);
  *(v5 + 16) = 2;
  v6 = sub_1C440F54C(&unk_1F43E9FB0);
  *(v6 + 16) = 8;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C4714530;
  *(v7 + 24) = v2;
  v8 = sub_1C440F54C(&unk_1F43EA000);
  *(v8 + 16) = 32;
  v9 = sub_1C440F54C(&unk_1F43EA028);
  *(v9 + 16) = 8;
  sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0F820;
  *(inited + 32) = sub_1C44549EC;
  *(inited + 40) = v5;
  *(inited + 48) = sub_1C44549F4;
  *(inited + 56) = v6;
  *(inited + 64) = sub_1C4716C58;
  *(inited + 72) = v7;
  *(inited + 80) = sub_1C44549F4;
  *(inited + 88) = v8;
  *(inited + 96) = sub_1C44549F4;
  *(inited + 104) = v9;
  *(inited + 112) = sub_1C4454CCC;
  *(inited + 120) = 0;
  sub_1C4EFD5C8();
  v11 = sub_1C4EFD5F8();
  v13 = v12;
  sub_1C4EFD608();
  v14 = sub_1C4F008D8();
  sub_1C4F00928();
  v15 = sub_1C4F01E18();
  result = sub_1C4F01F28();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v13)
  {
    if (HIDWORD(v11))
    {
      __break(1u);
    }

    else
    {
      if ((v11 & 0xFFFFF800) == 0xD800)
      {
LABEL_22:
        __break(1u);
        return result;
      }

      if (v11 >> 16 <= 0x10)
      {
        v11 = (v0 + 32);
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
LABEL_10:
    log = v14;
    v24 = v0[36];
    v23 = v0[37];
    v25 = v0[35];

    sub_1C4F00958();

    if ((*(v24 + 88))(v23, v25) == *MEMORY[0x1E69E93E8])
    {
      v26 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[36] + 8))(v0[37], v0[35]);
      format = "entity_count=%{signpost.telemetry:number1,public}ld %s";
      v26 = 2;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = 0;
    v51 = 0;
    v52 = v28;
    *v27 = v26;
    v27[1] = v26;
    v50 = v27 + 2;
    while (v29 != 96)
    {
      v30 = *(inited + v29 + 32);

      v30(&v50, &v51, &v52);

      v29 += 16;
    }

    v41 = v0[57];
    v40 = v0[55];
    v45 = v0[54];
    v31 = v15;
    v32 = v11;
    v33 = v0[53];
    v42 = v0[52];
    v39 = v0[45];
    v34 = v0[43];
    v35 = v0[40];
    v36 = v0[38];

    v37 = sub_1C4F008A8();
    _os_signpost_emit_with_name_impl(&dword_1C43F8000, log, v31, v37, v32, format, v27, 0x16u);
    sub_1C440962C(v28);
    sub_1C43FBE2C();
    sub_1C43FBE2C();

    v40(v35, v36);
    v41(v39, v34);
    (*(v33 + 8))(v45, v42);
    goto LABEL_17;
  }

  __break(1u);
LABEL_5:
  v17 = v0[55];
  v43 = v0[57];
  v18 = v0[53];
  loga = v0[54];
  v44 = v0[52];
  v19 = v0[45];
  v20 = v0[43];
  v21 = v0[40];
  v22 = v0[38];

  v17(v21, v22);
  v43(v19, v20);
  (*(v18 + 8))(loga, v44);
LABEL_17:
  sub_1C44170B0();
  sub_1C440962C(v0 + 18);

  sub_1C43FBCF0();

  return v38(v47);
}

uint64_t sub_1C4713F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  (*(v12[53] + 8))(v12[54], v12[52]);
  sub_1C440962C(v12 + 18);
  v22 = v12[61];
  sub_1C44170B0();

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

uint64_t sub_1C4714020(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1C456902C(&qword_1EC0BBFF0, &qword_1C4F22E50);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  if (qword_1EDDE5520 != -1)
  {
    swift_once();
  }

  sub_1C442E860(a2, v15);
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_1C441D670(v15, v11 + 16);
  *(v11 + 56) = a3;
  (*(v7 + 32))(v11 + v10, v9, v6);
  v12 = a3;
  sub_1C4EFC778();
}

uint64_t sub_1C47141D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C47141F8, 0, 0);
}

uint64_t sub_1C47141F8()
{
  sub_1C43FCF70();
  sub_1C4409678(*(v0 + 32), *(*(v0 + 32) + 24));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1C47142A4;
  v2 = sub_1C4418A30(*(v0 + 40));

  return MEMORY[0x1EEE13D38](v2);
}

uint64_t sub_1C47142A4()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C43FBE64();
  *v6 = v5;
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v5 + 64) = v0;

  if (!v0)
  {
    *(v5 + 72) = v3;
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C47143B4()
{
  sub_1C43FBCD4();
  *(v0 + 24) = *(v0 + 72);
  sub_1C456902C(&qword_1EC0BBFF0, &qword_1C4F22E50);
  sub_1C441C97C();
  sub_1C4F01818();
  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4714430()
{
  sub_1C43FBCD4();
  *(v0 + 16) = *(v0 + 64);
  sub_1C456902C(&qword_1EC0BBFF0, &qword_1C4F22E50);
  sub_1C441C97C();
  sub_1C4F01808();
  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C47144AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 rankedResults];
  sub_1C4461BB8(0, &qword_1EDDDBAB8, 0x1E69A9EE0);
  v4 = sub_1C4F01678();

  v5 = sub_1C4428DA0(v4);

  *a2 = v5;
  return result;
}

unint64_t sub_1C47145A8()
{
  result = qword_1EDDDBDA0;
  if (!qword_1EDDDBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBDA0);
  }

  return result;
}

uint64_t sub_1C471461C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1C47146E0;

  return EntityResolutionXPC.Server.submitQuery(_:)();
}

uint64_t sub_1C47146E0()
{
  sub_1C43FEAEC();
  sub_1C4408958();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v2;
  sub_1C43FBDAC();
  *v7 = v6;

  sub_1C444B0DC();
  v9 = *(v8 + 32);
  if (v0)
  {
    sub_1C4EF9798();

    v10 = sub_1C4413080();
    v11(v10, 0, v1);

    _Block_release(v9);
  }

  else
  {
    v12 = sub_1C4413080();
    v13(v12, v1, 0);
    _Block_release(v9);
  }

  sub_1C441B890();

  return v14();
}

uint64_t EntityResolutionXPC.Server.submitCollectionQuery(_:)()
{
  sub_1C43FBCD4();
  *(v0 + 24) = swift_getObjectType();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C47148C4()
{
  sub_1C43FCF70();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  sub_1C4461BB8(0, &qword_1EC0BBF40, 0x1E69A9E78);
  *v3 = v0;
  v3[1] = sub_1C47149C8;
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DE38](v4, v5, v6, 0xD000000000000019, v7, v8, v2, v9);
}

uint64_t sub_1C47149C8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4714ACC()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4714B28(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BBFD8, &qword_1C4F22E38);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  if (qword_1EDDE5520 != -1)
  {
    swift_once();
  }

  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_1C4EFC778();
}

uint64_t sub_1C4714CBC()
{
  sub_1C43FBCD4();
  sub_1C4461BB8(0, &qword_1EC0BBF40, 0x1E69A9E78);
  *(v0 + 16) = sub_1C4714D64(MEMORY[0x1E69E7CC0]);
  sub_1C456902C(&qword_1EC0BBFD8, &qword_1C4F22E38);
  sub_1C4F01818();
  sub_1C43FBDA0();

  return v1();
}

id sub_1C4714D64(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C4461BB8(0, &unk_1EC0BBFE0, 0x1E69A9E70);
  v2 = sub_1C4F01658();

  v3 = [v1 initWithCandidates_];

  return v3;
}

uint64_t sub_1C4714E0C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1C4717374;

  return EntityResolutionXPC.Server.submitCollectionQuery(_:)();
}

uint64_t EntityResolutionXPC.Server.generateMentions(forQuery:)()
{
  sub_1C43FCF70();
  v2 = v1;
  v4 = v3;
  ObjectType = swift_getObjectType();
  v0[17] = v2;
  v0[18] = ObjectType;
  v0[16] = v4;
  v6 = sub_1C4F008B8();
  v0[19] = v6;
  sub_1C43FCF7C(v6);
  v0[20] = v7;
  v0[21] = sub_1C43FE604();
  v0[22] = swift_task_alloc();
  v8 = sub_1C4F008F8();
  v0[23] = v8;
  sub_1C43FCF7C(v8);
  v0[24] = v9;
  v0[25] = sub_1C43FE604();
  v0[26] = swift_task_alloc();
  v10 = sub_1C4F00978();
  v0[27] = v10;
  sub_1C43FCF7C(v10);
  v0[28] = v11;
  v0[29] = sub_1C43FE604();
  v0[30] = swift_task_alloc();
  v12 = sub_1C4EFD618();
  v0[31] = v12;
  sub_1C43FCF7C(v12);
  v0[32] = v13;
  v0[33] = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C4715094(uint64_t a1)
{
  sub_1C4F00188();
  v2 = sub_1C442FCD8();
  v3(v2);
  sub_1C4F008C8();
  sub_1C4F008D8();
  sub_1C4F00898();
  v4 = sub_1C4F008D8();
  sub_1C4F01E28();
  if (sub_1C4F01F28())
  {
    v5 = sub_1C43FCED0();
    sub_1C43FBD24(v5);
    v6 = sub_1C4F008A8();
    sub_1C4423684(&dword_1C43F8000, v7, v8, v6, "ECR.XPC.generateMentions", "");
    sub_1C43FE9D4();
  }

  v41 = *(v1 + 240);
  v9 = *(v1 + 224);
  v40 = *(v1 + 216);
  v39 = *(v1 + 208);
  v10 = *(v1 + 184);
  v11 = *(v1 + 192);
  v12 = *(v1 + 176);
  v14 = *(v1 + 152);
  v13 = *(v1 + 160);

  v15 = sub_1C4409BFC();
  v16(v15, v12, v14);
  sub_1C4F00948();
  swift_allocObject();
  sub_1C442BA8C();
  v17 = sub_1C4425AA0();
  v18(v17, v39, v10);
  sub_1C447EFEC("ECR.XPC.generateMentions", 24);
  (*(v13 + 8))(v12, v14);
  (*(v11 + 8))(v39, v10);
  v19 = (*(v9 + 8))(v41, v40);
  if (qword_1EDDE5510 != -1)
  {
    v19 = sub_1C4419470(&qword_1EDDE5510);
  }

  sub_1C43FD630(v19, v1 + 96);
  sub_1C4460108(&xmmword_1EDE2CCE8, v1 + 56, &qword_1EC0BBF28, &qword_1C4F22D28);
  if (!*(v1 + 80))
  {
    sub_1C4420C3C(v1 + 56, &qword_1EC0BBF28, &qword_1C4F22D28);
    v32 = sub_1C4EFF588();
    sub_1C4712ACC();
    sub_1C441C97C();
    swift_allocError();
    *v33 = 0xD00000000000002ALL;
    v33[1] = 0x80000001C4F94AC0;
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x1E69A9938], v32);
    swift_willThrow();
    sub_1C4715778();
    v34 = sub_1C4402B58();
    v35(v34);

    sub_1C43FBDA0();
    sub_1C4409BA4();

    __asm { BRAA            X1, X16 }
  }

  v20 = *(v1 + 128);
  v42 = *(v1 + 136);
  sub_1C441D670((v1 + 56), v1 + 16);
  v21 = swift_task_alloc();
  *(v1 + 272) = v21;
  *(v21 + 16) = v1 + 16;
  *(v21 + 24) = v20;
  *(v21 + 32) = v42;
  v22 = swift_task_alloc();
  *(v1 + 280) = v22;
  sub_1C4461BB8(0, &unk_1EC0BBF48, 0x1E69A9EC8);
  *v22 = v1;
  v22[1] = sub_1C47154BC;
  sub_1C43FEAF8();
  sub_1C4409BA4();

  return MEMORY[0x1EEE6DE38](v23, v24, v25, v26, v27, v28, v29, v30);
}

uint64_t sub_1C47154BC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 288) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C47155C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v14 = v12[32];
  v13 = v12[33];
  v15 = v12[31];
  v25 = v12[15];
  sub_1C440962C(v12 + 2);
  sub_1C4715778();
  (*(v14 + 8))(v13, v15);

  sub_1C43FBCF0();
  sub_1C43FEA3C();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

uint64_t sub_1C471569C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();

  sub_1C440962C((v12 + 16));
  v24 = *(v12 + 288);
  sub_1C4715778();
  v13 = sub_1C4402B58();
  v14(v13);

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

uint64_t sub_1C4715778()
{
  v32 = sub_1C4F00908();
  sub_1C43FCDF8();
  v35 = v0;
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v34 = v3 - v2;
  v4 = sub_1C4F008B8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = sub_1C4F008F8();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  sub_1C4EFD5C8();
  v33 = sub_1C4EFD5F8();
  v19 = v18;
  sub_1C4EFD608();
  v20 = sub_1C4F008D8();
  sub_1C4F00928();
  v31 = sub_1C4F01E18();
  result = sub_1C4F01F28();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v6 + 8))(v10, v4);
    return (*(v13 + 8))(v17, v11);
  }

  v29 = v6;
  v30 = v4;
  if ((v19 & 1) == 0)
  {
    v23 = v34;
    v22 = v35;
    v24 = v33;
    if (v33)
    {
      v25 = v32;
LABEL_9:

      sub_1C4F00958();

      if ((*(v22 + 88))(v23, v25) == *MEMORY[0x1E69E93E8])
      {
        v26 = "[Error] Interval already ended";
      }

      else
      {
        (*(v22 + 8))(v23, v25);
        v26 = "";
      }

      v27 = sub_1C43FCED0();
      *v27 = 0;
      v28 = sub_1C4F008A8();
      _os_signpost_emit_with_name_impl(&dword_1C43F8000, v20, v31, v28, v24, v26, v27, 2u);
      sub_1C43FBE2C();
      v6 = v29;
      v4 = v30;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  v23 = v34;
  v22 = v35;
  if (HIDWORD(v33))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v33 & 0xFFFFF800) != 0xD800)
  {
    v25 = v32;
    if (v33 >> 16 <= 0x10)
    {
      v24 = &v36;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C4715AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C456902C(&qword_1EC0BBFD0, &qword_1C4F22E20);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  if (qword_1EDDE5520 != -1)
  {
    swift_once();
  }

  sub_1C442E860(a2, v16);
  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_1C441D670(v16, v13 + 16);
  *(v13 + 56) = a3;
  *(v13 + 64) = a4;
  (*(v9 + 32))(v13 + v12, v11, v8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFC778();
}

uint64_t sub_1C4715C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C4715C7C, 0, 0);
}

uint64_t sub_1C4715C7C()
{
  sub_1C43FEAEC();
  sub_1C4409678(*(v0 + 24), *(*(v0 + 24) + 24));
  sub_1C43FBC98();
  *(v0 + 16) = sub_1C4EFFFC8();
  sub_1C456902C(&qword_1EC0BBFD0, &qword_1C4F22E20);
  sub_1C4F01818();
  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4715D80(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  sub_1C443FBD0();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  v10 = sub_1C43FBC98();

  return sub_1C446D134(v10, v11);
}

uint64_t sub_1C4715DF8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_1C4F01138();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1C4715ECC;

  return EntityResolutionXPC.Server.generateMentions(forQuery:)();
}

uint64_t sub_1C4715ECC()
{
  sub_1C43FEAEC();
  sub_1C4408958();
  v4 = *(v3 + 16);
  v5 = *v2;
  sub_1C43FBDAC();
  *v6 = v5;

  sub_1C444B0DC();
  v8 = *(v7 + 24);
  if (v0)
  {
    sub_1C4EF9798();

    v9 = sub_1C4413080();
    v10(v9, 0, v1);

    _Block_release(v8);
  }

  else
  {
    v11 = sub_1C4413080();
    v12(v11, v1, 0);
    _Block_release(v8);
  }

  sub_1C441B890();

  return v13();
}

uint64_t EntityResolutionXPC.Server.requestAssetDownload(forAssetType:localeIdentifier:)()
{
  sub_1C43FBCD4();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  sub_1C43FBD18(v5);
  v0[6] = sub_1C43FBE7C();
  v6 = sub_1C4EF9E48();
  v0[7] = v6;
  sub_1C43FCF7C(v6);
  v0[8] = v7;
  v0[9] = sub_1C43FBE7C();
  v8 = sub_1C456902C(&qword_1EC0BBF58, &unk_1C4F22D60);
  v0[10] = v8;
  sub_1C43FBD18(v8);
  v0[11] = sub_1C43FE604();
  v0[12] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4716164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v14 = v12[2];
  v13 = v12[3];
  if (sub_1C4EFF178() == v14 && v15 == v13)
  {
  }

  else
  {
    v17 = sub_1C4F02938();

    if ((v17 & 1) == 0)
    {
      v18 = v12[6];
      v19 = sub_1C4EF98F8();
      sub_1C440BAA8(v18, 1, 1, v19);
      v20 = objc_allocWithZone(MEMORY[0x1E69A9E68]);
      sub_1C4716B9C(v18, 0);
      goto LABEL_9;
    }
  }

  v22 = v12[11];
  v21 = v12[12];
  v23 = v12[9];
  v24 = v12[10];
  v25 = v12[7];
  v26 = v12[8];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9D48();
  v27 = sub_1C4EFF188();
  (*(v26 + 8))(v23, v25);
  *v21 = v27 & 1;
  v28 = sub_1C43FBC98();
  sub_1C4460108(v28, v29, &qword_1EC0BBF58, &unk_1C4F22D60);
  v30 = *(v24 + 48);
  v31 = objc_allocWithZone(MEMORY[0x1E69A9E68]);
  sub_1C4716B9C(v22 + v30, v27 & 1);
  v32 = sub_1C4406834();
  sub_1C4420C3C(v32, &qword_1EC0BBF58, &unk_1C4F22D60);
LABEL_9:

  sub_1C43FBCF0();
  sub_1C43FEA3C();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_1C47163BC(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  sub_1C4F01138();
  v4[4] = v6;
  sub_1C4F01138();
  v4[5] = v7;
  v8 = a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1C47164B4;

  return EntityResolutionXPC.Server.requestAssetDownload(forAssetType:localeIdentifier:)();
}

uint64_t sub_1C47164B4()
{
  sub_1C4408958();
  v4 = *(v3 + 16);
  v5 = *v2;
  sub_1C43FBDAC();
  *v6 = v5;

  sub_1C444B0DC();
  v8 = *(v7 + 24);
  if (v0)
  {
    sub_1C4EF9798();

    v9 = sub_1C4413080();
    v10(v9, 0, v1);

    _Block_release(v8);
  }

  else
  {
    v11 = sub_1C4413080();
    v12(v11, v1, 0);
    _Block_release(v8);
  }

  sub_1C441B890();

  return v13();
}

id EntityResolutionXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C47166A0(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  if (qword_1EDDE5538 != -1)
  {
    sub_1C440D340(&qword_1EDDE5538);
  }

  v7 = sub_1C442B738(v3, qword_1EDE2CD10);
  swift_beginAccess();
  sub_1C4460108(v7, v6, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v8 = type metadata accessor for Configuration(0);
  result = sub_1C44157D4(v6, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = &v6[*(v8 + 20)];
    v11 = *v10;
    v12 = *(v10 + 1);
    sub_1C4467948(v6);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v11) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v12) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0(&qword_1EDDFA678);
      }

      v20 = sub_1C4F00978();
      sub_1C442B738(v20, qword_1EDE2DCD8);
      v21 = sub_1C4F00968();
      v22 = sub_1C4F01CF8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = sub_1C43FCED0();
        sub_1C43FBD24(v23);
        sub_1C440BAE8(&dword_1C43F8000, v24, v25, "EntityResolutionXPC: service is in no-op mode.");
        sub_1C43FE9D4();
      }
    }

    else
    {
      v14 = sub_1C4433C94();
      if (sub_1C446874C(v14, v15))
      {
        v16 = [objc_opt_self() interfaceWithProtocol_];
        sub_1C44059FC(v16, sel_setExportedInterface_);

        v17 = [objc_allocWithZone(type metadata accessor for EntityResolutionXPC.Server()) init];
        sub_1C44059FC(v17, sel_setExportedObject_);

        v31 = sub_1C4716A04;
        v32 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v28 = 1107296256;
        v29 = sub_1C4833DD0;
        v30 = &unk_1F43EA040;
        v18 = _Block_copy(&aBlock);
        sub_1C44059FC(v18, sel_setInterruptionHandler_);
        _Block_release(v18);
        v31 = sub_1C4716A24;
        v32 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v28 = 1107296256;
        v29 = sub_1C4833DD0;
        v30 = &unk_1F43EA068;
        v19 = _Block_copy(&aBlock);
        sub_1C44059FC(v19, sel_setInvalidationHandler_);
        _Block_release(v19);
        [a2 resume];
        return 1;
      }
    }

    return 0;
  }

  return result;
}

void sub_1C4716A44(uint8_t *a1, const char *a2)
{
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2DCD8);
  oslog = sub_1C4F00968();
  v5 = (a1)();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = sub_1C43FCED0();
    sub_1C43FBD24(v6);
    _os_log_impl(&dword_1C43F8000, oslog, v5, a2, a1, 2u);
    sub_1C43FE9D4();
  }
}

id sub_1C4716B9C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1C4EF98F8();
  v7 = 0;
  if (sub_1C44157D4(a1, 1, v6) != 1)
  {
    v7 = sub_1C4EF9868();
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  v8 = [v3 initWithURL:v7 isEmbedded:a2 & 1];

  return v8;
}

uint64_t sub_1C4716CE0()
{
  sub_1C43FEAEC();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v1[1] = sub_1C442F080;
  v3 = sub_1C4402B58();

  return v4(v3);
}

uint64_t sub_1C4716D94()
{
  sub_1C43FCF70();
  sub_1C440224C();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C440E174(v1);

  return v4(v3);
}

uint64_t sub_1C4716E24()
{
  sub_1C43FCF70();
  sub_1C440224C();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C440E174(v1);

  return v4(v3);
}

uint64_t sub_1C4716EB4()
{
  _Block_release(*(v0 + 24));

  v1 = sub_1C443FBD0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C4716EF4()
{
  sub_1C43FCF70();
  sub_1C440224C();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C440E174(v1);

  return v4(v3);
}

uint64_t sub_1C4716F84()
{
  sub_1C43FCF70();
  sub_1C440224C();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C440E174(v1);

  return v4(v3);
}

uint64_t sub_1C4717014()
{
  sub_1C43FCF70();
  v1 = sub_1C456902C(&qword_1EC0BBFD0, &qword_1C4F22E20);
  sub_1C43FBD18(v1);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = swift_task_alloc();
  v7 = sub_1C43FC218(v6);
  *v7 = v8;
  v7[1] = sub_1C442F080;

  return sub_1C4715C58(v0 + 16, v4, v5, v0 + v3);
}

uint64_t sub_1C47170F8()
{
  sub_1C43FBCD4();
  v1 = sub_1C456902C(&qword_1EC0BBFD8, &qword_1C4F22E38);
  sub_1C43FBD18(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  v5 = sub_1C43FC218(v4);
  *v5 = v6;
  v5[1] = sub_1C442F080;

  return sub_1C4714C9C(v0 + v3);
}

uint64_t sub_1C47171C4()
{
  sub_1C43FCF70();
  v0 = sub_1C456902C(&qword_1EC0BBFF0, &qword_1C4F22E50);
  sub_1C43FBD18(v0);
  v1 = swift_task_alloc();
  v2 = sub_1C43FC218(v1);
  *v2 = v3;
  v4 = sub_1C444FD20(v2);

  return sub_1C47141D4(v4, v5, v6);
}

uint64_t sub_1C4717294()
{
  sub_1C43FCF70();
  v0 = sub_1C456902C(&qword_1EC0BBFF8, &qword_1C4F22E68);
  sub_1C43FBD18(v0);
  v1 = swift_task_alloc();
  v2 = sub_1C43FC218(v1);
  *v2 = v3;
  v4 = sub_1C444FD20(v2);

  return sub_1C4712CD4(v4, v5, v6);
}

uint64_t sub_1C47173A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C4EFB0B8();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C4EFB058();
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  sub_1C4EFBFC8();
  return (*(v11 + 8))(v14, v9);
}

uint64_t sub_1C47174C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a1;
  v6 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a5 + 16);
  if (v17)
  {
    v26 = *(v13 + 20);
    v18 = a5 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v19 = *(v14 + 72);
    do
    {
      sub_1C443CCBC(v18, v16);
      v20 = sub_1C4EFBE38();
      (*(*(v20 - 8) + 16))(v8, &v16[v26], v20);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C469C410(v16);
      sub_1C440BAA8(v8, 0, 1, v20);
      sub_1C4EFB498();

      sub_1C4423A0C(v8, &qword_1EC0B9BB8, &unk_1C4F1DC60);
      v21 = sub_1C4EFBF38();
      sub_1C440BAA8(v11, 1, 1, v21);
      sub_1C4EFB538();

      sub_1C4423A0C(v11, &unk_1EC0BCAB0, &unk_1C4F111A0);
      v18 += v19;
      --v17;
    }

    while (v17);
  }

  v22 = *MEMORY[0x1E69A00D0];
  v23 = sub_1C4EFBF38();
  (*(*(v23 - 8) + 104))(v11, v22, v23);
  sub_1C440BAA8(v11, 0, 1, v23);
  sub_1C4EFB478();
  return sub_1C4423A0C(v11, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C47177DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

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

uint64_t sub_1C4717854@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C47177DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C4717884@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C46DD0DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C47178B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C47177DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C47178D8(uint64_t a1)
{
  v2 = sub_1C4717D88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4717914(uint64_t a1)
{
  v2 = sub_1C4717D88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4717950(void *a1)
{
  sub_1C456902C(&qword_1EC0BC000, &unk_1C4F22F90);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4717D88();
  sub_1C4F02BC8();
  if (!v1)
  {
    v4 = sub_1C4F02678();
    sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C443CA2C(&qword_1EDDFEA60, &qword_1EDDFF060, &protocol conformance descriptor for ViewDatabaseArtifact.Property, MEMORY[0x1E69E6330]);
    sub_1C4F026C8();
    v6 = sub_1C44069E0();
    v7(v6);
  }

  sub_1C440962C(a1);
  return v4;
}

uint64_t sub_1C4717B68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = sub_1C456902C(&qword_1EC0BC008, &qword_1C4F22FA0);
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v13 - v10;
  sub_1C4409678(a1, a1[3]);
  sub_1C4717D88();
  sub_1C4F02BF8();
  v15 = 0;
  sub_1C4F02798();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C443CA2C(&qword_1EDDDBC60, &qword_1EDDE3FF8, &protocol conformance descriptor for ViewDatabaseArtifact.Property, MEMORY[0x1E69E6300]);
    sub_1C4F027E8();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1C4717D38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4717950(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1C4717D88()
{
  result = qword_1EDDFAB78[0];
  if (!qword_1EDDFAB78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFAB78);
  }

  return result;
}

uint64_t sub_1C4717DDC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ViewDatabaseArtifact.Property(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_1C4717E20(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4717EFC()
{
  result = qword_1EC0BC010;
  if (!qword_1EC0BC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC010);
  }

  return result;
}

unint64_t sub_1C4717F54()
{
  result = qword_1EDDFAB68;
  if (!qword_1EDDFAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAB68);
  }

  return result;
}

unint64_t sub_1C4717FAC()
{
  result = qword_1EDDFAB70;
  if (!qword_1EDDFAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAB70);
  }

  return result;
}

void sub_1C4718020()
{
  v0 = sub_1C47782B8();
  v1 = sub_1C4428DA0(v0);
  if (v1)
  {
    v2 = v1;
    v14 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v1 & ~(v1 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return;
    }

    v3 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1C6940F90](v3, v0);
      }

      else
      {
        v4 = *(v0 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = [v4 featureName];
      v7 = sub_1C4F01138();
      v9 = v8;

      v11 = *(v14 + 16);
      v10 = *(v14 + 24);
      if (v11 >= v10 >> 1)
      {
        v13 = sub_1C43FCFE8(v10);
        sub_1C44CD9C0(v13, v11 + 1, 1);
      }

      ++v3;
      *(v14 + 16) = v11 + 1;
      v12 = v14 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
    }

    while (v2 != v3);
  }

  sub_1C4499940();
}

void sub_1C4718178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v21;
  a20 = v22;
  v121 = v20;
  v24 = v23;
  v26 = v25;
  v27 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v27);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBC74();
  v30 = v29;
  sub_1C43FBE44();
  v31 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBFDC();
  v113 = v35;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  v38 = v37;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  v41 = v40;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  v44 = v43;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FD230();
  v116 = v46;
  sub_1C43FBE44();
  v47 = sub_1C4EFDE68();
  v48 = sub_1C43FBD18(v47);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD2D8();
  v115 = v49;
  sub_1C43FBE44();
  v114 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v51 = v50;
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FD2D8();
  v54 = v53;
  v55 = sub_1C456902C(&qword_1EC0B89C8, &unk_1C4F23170);
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBF38();
  v117 = v58;
  v122 = MEMORY[0x1E69E7CC0];
  v123 = MEMORY[0x1E69E7CC0];
  v59 = *(v26 + 16);
  if (v59)
  {
    v111 = v117 + *(v56 + 48);
    v110 = *(v121 + 16);
    v60 = v26 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
    v109 = *(v57 + 72);
    v108 = *MEMORY[0x1E69A95C0];
    v106 = (v33 + 8);
    v107 = (v33 + 104);
    v105 = (v51 + 8);
    v104 = xmmword_1C4F0D130;
    v103[1] = v54;
    v112 = v24;
    v103[0] = v30;
    do
    {
      v120 = v59;
      v121 = v60;
      v61 = v117;
      sub_1C445FFF0(v60, v117, &qword_1EC0B89C8, &unk_1C4F23170);
      v62 = *v61;
      v118 = v61[1];
      v119 = v62;
      sub_1C456902C(&qword_1EC0B8ED0, &unk_1C4F377B0);
      v63 = v44;
      v64 = v41;
      v65 = v38;
      v66 = sub_1C4EFF8A8();
      sub_1C43FCDF8();
      v68 = v67;
      v69 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v70 = swift_allocObject();
      *(v70 + 16) = v104;
      v71 = v113;
      (*(v68 + 32))(v70 + v69, v111, v66);
      sub_1C4D51DB8();
      v73 = v72;
      v74 = *v107;
      sub_1C442B8EC();
      v74(v75, v76);
      sub_1C442B8EC();
      v74(v77, v78);
      sub_1C442B8EC();
      v74(v79, v80);
      sub_1C442B8EC();
      v74(v81, v82);
      sub_1C442B8EC();
      v74(v83, v84);
      v101 = v71;
      v102 = 0;
      v100 = v73;
      sub_1C43FEAF8();
      sub_1C44623AC(v85, v86, v87, v63, 0, v64);
      v88 = v112;

      v89 = v106;
      v90 = *v106;
      v91 = sub_1C440CAF0();
      v90(v91);
      v38 = v65;
      v92 = sub_1C4404BCC();
      v90(v92);
      v41 = v64;
      (v90)(v64, v31);
      v44 = v63;
      (v90)(v63, v31);
      v93 = sub_1C440A6C4();
      v90(v93);
      sub_1C441B388();
      sub_1C4EFDEA8();
      sub_1C4EFD678();
      sub_1C4422A7C(&a17);
      sub_1C43FCF64();
      v98 = sub_1C440BAA8(v94, v95, v96, v97);
      MEMORY[0x1EEE9AC00](v98);
      v99 = v118;
      v103[-6] = v119;
      v103[-5] = v99;
      v100 = v88;
      v101 = &v122;
      v102 = &v123;
      sub_1C48687D0(v89, v90, sub_1C47238B0, &v103[-8]);

      sub_1C4420C3C(v90, &unk_1EC0C07E0, &unk_1C4F168F0);
      (*v105)(v89, v114);
      v60 = v121 + v109;
      v59 = v120 - 1;
    }

    while (v120 != 1);
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C471875C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v32 = a6;
  v11 = sub_1C4EFEEF8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for GraphTriple(0);
  sub_1C4EFE4E8();
  sub_1C450229C(&qword_1EDDFCCB0, MEMORY[0x1E69A9748], MEMORY[0x1E69A9768]);
  v16 = sub_1C4F010B8();
  (*(v12 + 8))(v14, v11);
  if (v16)
  {
    v35 = a2;
    v36 = a3;
    v33 = 64;
    v34 = 0xE100000000000000;
    sub_1C4415EA8();
    v17 = sub_1C4F01FC8();
    v18 = sub_1C4A3E184(v17);
    v20 = v19;

    if (v20)
    {
      v21 = (a1 + *(v15 + 32));
      v22 = *v21;
      v23 = v21[1];
      if (v22 == sub_1C4F01138() && v23 == v24)
      {
      }

      else
      {
        v26 = sub_1C4F02938();

        if ((v26 & 1) == 0)
        {
LABEL_13:
          sub_1C4588BAC();
          v27 = *(*a5 + 16);
          sub_1C45897E8();
          v28 = *a5;
          *(v28 + 16) = v27 + 1;
          v29 = v28 + 16 * v27;
          *(v29 + 32) = v18;
          *(v29 + 40) = v20;
          return 1;
        }
      }

      if (!sub_1C4499AD0(v18, v20, a4))
      {
        v35 = v18;
        v36 = v20;
        v33 = 1969513774;
        v34 = 0xE400000000000000;
        if ((sub_1C4F02048() & 1) == 0)
        {
          a5 = v32;
        }
      }

      goto LABEL_13;
    }
  }

  return 1;
}

void sub_1C47189E8()
{
  sub_1C43FE96C();
  v30 = sub_1C4EF9488();
  sub_1C43FCDF8();
  v27 = v1;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v5 = v4 - v3;
  v6 = sub_1C4F01188();
  v7 = sub_1C43FBD18(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C43FFCB0();
  v8 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  sub_1C4461BB8(0, &qword_1EDDFE8E8, 0x1E696AAE8);
  v18 = sub_1C4F01E88();
  v19 = sub_1C4486838(0x645F63696C627570, 0xEE00736E69616D6FLL, 7633012, 0xE300000000000000, v18);

  if (v19)
  {
    sub_1C4EF98C8();

    (*(v10 + 32))(v17, v14, v8);
    sub_1C4F01178();
    v20 = sub_1C4F010D8();
    if (!v0)
    {
      v23 = v20;
      v24 = v21;
      v25 = objc_autoreleasePoolPush();
      v28 = v23;
      v29 = v24;
      sub_1C4EF9478();
      sub_1C4415EA8();
      sub_1C4F01FB8();
      (*(v27 + 8))(v5, v30);

      objc_autoreleasePoolPop(v25);
      sub_1C4499940();
    }

    (*(v10 + 8))(v17, v8);
  }

  else
  {
    sub_1C472376C();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4718CD0()
{
  v23[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  sub_1C4461BB8(0, &qword_1EDDFE8E8, 0x1E696AAE8);
  v10 = sub_1C4F01E88();
  v11 = sub_1C4486838(0x73657361696C61, 0xE700000000000000, 25188, 0xE200000000000000, v10);

  if (!v11)
  {
    __break(1u);
  }

  sub_1C4EF98C8();

  (*(v2 + 32))(v9, v6, v0);
  v12 = [objc_opt_self() defaultManager];
  v13 = sub_1C4EF9868();
  v14 = sub_1C4EF9868();
  v23[0] = 0;
  v15 = [v12 copyItemAtURL:v13 toURL:v14 error:v23];

  if (v15)
  {
    v16 = *(v2 + 8);
    v17 = v23[0];
    v18 = sub_1C43FE99C();
    return v16(v18);
  }

  else
  {
    v20 = v23[0];
    sub_1C4EF97A8();

    swift_willThrow();
    v21 = sub_1C43FE99C();
    return v22(v21);
  }
}

void sub_1C4718F1C()
{
  sub_1C43FBD3C();
  v29 = v0;
  v30 = v1;
  sub_1C4EFC018();
  sub_1C43FCDF8();
  v33 = v3;
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v6 = (v5 - v4);
  v7 = sub_1C4F00D88();
  v8 = sub_1C43FBD18(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD2D8();
  v31 = v9;
  sub_1C43FBE44();
  v10 = sub_1C4EFB148();
  sub_1C43FCDF8();
  v35 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v32 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28[-v15];
  v17 = [objc_opt_self() defaultManager];
  sub_1C4EF98E8();
  v18 = sub_1C4F01108();

  v19 = [v17 fileExistsAtPath_];

  if ((v19 & 1) == 0)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v20 = sub_1C4F00978();
    sub_1C442B738(v20, qword_1EDDFECB8);
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CC8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C43F8000, v21, v22, "EntityTaggingFactsFeaturizer: Performing one-time copy of relationship alias database.", v23, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C4718CD0();
  }

  sub_1C4EFB138();
  sub_1C4EF98E8();
  sub_1C4EFB108();
  sub_1C4F00D68();
  sub_1C4EFB0E8();
  *v6 = 0x404E000000000000;
  (*(v33 + 104))(v6, *MEMORY[0x1E69A00D8], v34);
  sub_1C4EFB118();
  sub_1C4EF98E8();
  (*(v35 + 16))(v32, v16, v10);
  sub_1C4EFB218();
  swift_allocObject();
  v24 = sub_1C4EFB1F8();
  MEMORY[0x1EEE9AC00](v24);
  v25 = v30;
  *&v28[-16] = v29;
  *&v28[-8] = v25;
  sub_1C456902C(&qword_1EC0BC028, &unk_1C4F231B0);
  sub_1C4EFB208();
  v26 = sub_1C4433CA8();
  v27(v26);

  sub_1C43FE9F0();
}

uint64_t sub_1C4719588@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v39 = a4;
  v7 = sub_1C4EFB768();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v34 = 0;
  *(&v34 + 1) = 0xE000000000000000;
  sub_1C4F02248();

  *&v34 = 0xD00000000000002CLL;
  *(&v34 + 1) = 0x80000001C4F94F50;
  MEMORY[0x1C6940010](a2, a3);
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  sub_1C4EFB758();
  sub_1C4EFBBB8();
  if (v4)
  {

    (*(v8 + 8))(v10, v7);
    return sub_1C4420C3C(&v34, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  (*(v8 + 8))(v10, v7);
  sub_1C4420C3C(&v34, &unk_1EC0BC770, &qword_1C4F10DC0);
  v30 = 0;
  v31 = MEMORY[0x1E69E7CC8];
  v12 = v39;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (!sub_1C4458EE8())
        {

          result = sub_1C44239FC(v30, 0);
          *v12 = v31;
          return result;
        }

        sub_1C4EFBC68();
        if (*(&v35 + 1))
        {
          break;
        }

LABEL_12:

        sub_1C4420C3C(&v34, &qword_1EC0B9038, &unk_1C4F231C0);
      }

      sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_10;
      }

      v13 = v33;
      v39 = v32;
      sub_1C4EFBC68();
      if (!*(&v35 + 1))
      {

        goto LABEL_12;
      }

      if (swift_dynamicCast())
      {
        break;
      }

LABEL_10:
    }

    v28 = v33;
    v29 = v32;
    sub_1C44239FC(v30, 0);
    v14 = v31;
    HIDWORD(v27) = swift_isUniquelyReferenced_nonNull_native();
    *&v34 = v14;
    v30 = sub_1C445FAA8(v39, v13);
    v15 = *(v14 + 16);
    LODWORD(v31) = v16;
    if (__OFADD__(v15, (v16 & 1) == 0))
    {
      break;
    }

    sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
    v17 = sub_1C4F02458();
    v18 = v34;
    if (v17)
    {
      v30 = sub_1C445FAA8(v39, v13);
      v20 = v31;
      if ((v31 & 1) != (v19 & 1))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v20 = v31;
    }

    if (v20)
    {
    }

    else
    {
      sub_1C44686DC(v30, v39, v13, MEMORY[0x1E69E7CD0], v18);
    }

    sub_1C44869B4(&v34, v29, v28, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v18, v32, v33, v34, *(&v34 + 1), v35, *(&v35 + 1), v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);

    v30 = sub_1C455B6CC;
  }

  __break(1u);
LABEL_24:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void sub_1C4719A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v21;
  a20 = v22;
  v23 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v23);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBC74();
  v26 = sub_1C43FD2C8(v25);
  v27 = type metadata accessor for GraphTriple(v26);
  v28 = sub_1C43FCF7C(v27);
  v191 = v29;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v30);
  v31 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v222 = v32;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD230();
  v192 = v36;
  v37 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  sub_1C43FBD18(v37);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBC74();
  v220 = v39;
  sub_1C43FBE44();
  v40 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v42 = v41;
  v217 = v41;
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBFDC();
  v214 = v44;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  v213 = v46;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v184 - v50;
  sub_1C4EFD548();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBCC4();
  sub_1C43FFCB0();
  v53 = sub_1C4EFDE68();
  v54 = sub_1C43FBD18(v53);
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v55);
  v212 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v216 = v56;
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FD2D8();
  v209 = v58;
  v59 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v60 = sub_1C43FBD18(v59);
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v62);
  v215 = (&v184 - v63);
  sub_1C43FCF64();
  v221 = v31;
  sub_1C440BAA8(v64, v65, v66, v31);
  v225 = MEMORY[0x1E69E7CC0];
  v208 = *(v20 + 16);
  v67 = sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v68 = sub_1C4EFEEF8();
  sub_1C43FCF7C(v68);
  v71 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v72 = v71 + *(v69 + 72);
  v201 = *(v70 + 80);
  v203 = v67;
  v200 = v72;
  v73 = swift_allocObject();
  v223 = xmmword_1C4F0D130;
  *(v73 + 16) = xmmword_1C4F0D130;
  v202 = v71;
  sub_1C4EFEBB8();
  sub_1C4D504A4();
  v219 = v74;
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  sub_1C442DEC4(inited);
  sub_1C4EFCF48();
  v76 = sub_1C4EFD2F8();
  v78 = v77;
  v79 = sub_1C4414550();
  v80(v79);
  *(v73 + 32) = v76;
  *(v73 + 40) = v78;
  sub_1C448DE08();
  v218 = v81;
  LODWORD(v78) = *MEMORY[0x1E69A95C0];
  v82 = v42 + 104;
  v83 = *(v42 + 104);
  (v83)(v51, *MEMORY[0x1E69A95C0], v40);
  v84 = v210;
  sub_1C448DFD8();
  v83();
  sub_1C4410278(&a17);
  sub_1C448DFD8();
  v83();
  sub_1C448DFD8();
  v83();
  v85 = v214;
  v198 = v78;
  sub_1C448DFD8();
  v199 = v82;
  v197 = v83;
  v83();
  v181 = v85;
  v182 = 0;
  v180 = 0;
  sub_1C43FEAF8();
  v86 = v73;
  sub_1C4EFDE58();

  v88 = v217 + 8;
  v87 = *(v217 + 8);
  v87(v85, v40);
  v89 = sub_1C4414A08();
  (v87)(v89);
  v87(v86, v40);
  v87(v84, v40);
  v204 = v51;
  v205 = v40;
  v217 = v88;
  v196 = v87;
  v87(v51, v40);
  v90 = v209;
  sub_1C4EFDEA8();
  sub_1C4EFF8F8();
  v91 = v220;
  sub_1C43FCF64();
  sub_1C440BAA8(v92, v93, v94, v95);
  v96 = sub_1C498DB80();
  sub_1C4420C3C(v91, &qword_1EC0BAA00, &unk_1C4F17400);
  v97 = *(v216 + 8);
  v216 += 8;
  v195 = v97;
  v97(v90, v212);
  v98 = *(v96 + 16);
  if (v98)
  {
    v224 = MEMORY[0x1E69E7CC0];
    sub_1C459D178();
    v99 = v224;
    v100 = v96 + ((*(v191 + 80) + 32) & ~*(v191 + 80));
    v101 = v221;
    v102 = *(v191 + 72);
    v219 = v96;
    v220 = v102;
    v103 = v193;
    v104 = v192;
    do
    {
      sub_1C4709E74(v100, v103);
      v105 = sub_1C43FE99C();
      v106(v105);
      sub_1C4709ED8(v103);
      v224 = v99;
      v108 = *(v99 + 16);
      v107 = *(v99 + 24);
      if (v108 >= v107 >> 1)
      {
        sub_1C43FCFE8(v107);
        sub_1C459D178();
        v101 = v221;
        v99 = v224;
      }

      *(v99 + 16) = v108 + 1;
      (*(v222 + 32))(v99 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * v108, v104, v101);
      v100 += v220;
      --v98;
    }

    while (v98);
  }

  else
  {

    v99 = MEMORY[0x1E69E7CC0];
    v101 = v221;
  }

  v109 = v222;
  v110 = v207;
  v193 = *(v99 + 16);
  if (v193)
  {
    v111 = 0;
    v190 = *(v222 + 80);
    v189 = (v190 + 32) & ~v190;
    v188 = v99 + v189;
    v187 = v222 + 16;
    v191 = v222 + 8;
    v192 = v99;
    v112 = v211;
    v113 = v213;
    while (v111 < *(v99 + 16))
    {
      v114 = *(v109 + 72);
      v218 = v111;
      v115 = *(v109 + 16);
      v115(v110, v188 + v114 * v111, v221);
      sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
      v116 = v189;
      v117 = swift_allocObject();
      v118 = sub_1C442DEC4(v117);
      (v115)(v119 + v116, v110, v221, v118);
      sub_1C4D51ABC();
      sub_1C4450650(v120);
      sub_1C4422A7C(v121);
      v122 = swift_allocObject();
      sub_1C442DEC4(v122);
      sub_1C4EFE308();
      sub_1C4597A90();
      v219 = v123;
      sub_1C43FC1C0();
      v124 = swift_allocObject();
      sub_1C442DEC4(v124);
      sub_1C4EFE658();
      sub_1C4597A90();
      v125 = v204;
      v126 = v205;
      v127 = v197;
      (v197)(v204, v198, v205);
      v128 = v210;
      sub_1C4401744();
      v127();
      sub_1C4401744();
      v127();
      sub_1C4401744();
      v127();
      v129 = v214;
      sub_1C4401744();
      v127();
      v181 = v129;
      v180 = 0;
      v130 = v220;
      sub_1C4EFDE58();

      v131 = v196;
      v196(v129, v126);
      v131(v113, v126);
      v131(v112, v126);
      v132 = v128;
      v110 = v207;
      v131(v132, v126);
      v131(v125, v126);
      sub_1C441B388();
      sub_1C4EFDEA8();
      sub_1C4EFD678();
      sub_1C440BC84(&a11);
      sub_1C43FCF64();
      v137 = sub_1C440BAA8(v133, v134, v135, v136);
      MEMORY[0x1EEE9AC00](v137);
      v138 = v215;
      v182 = v215;
      v183 = v110;
      v139 = sub_1C43FBEF8();
      sub_1C48687D0(v139, v140, v141, v142);
      v101 = v221;
      sub_1C4420C3C(v130, &unk_1EC0C07E0, &unk_1C4F168F0);
      v143 = sub_1C4402258();
      v144(v143);
      v145 = v194;
      sub_1C445FFF0(v138, v194, &unk_1EC0BA0E0, &qword_1C4F105A0);
      if (sub_1C44157D4(v145, 1, v101) != 1)
      {

        sub_1C4420C3C(v145, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v150 = sub_1C4469158();
        v151(v150);
        v109 = v222;
        goto LABEL_15;
      }

      v111 = v218 + 1;
      v146 = sub_1C4404BCC();
      sub_1C4420C3C(v146, v147, &qword_1C4F105A0);
      v148 = sub_1C4469158();
      v149(v148);
      v109 = v222;
      v99 = v192;
      if (v193 == v111)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

LABEL_15:
    v152 = v185;
    sub_1C445FFF0(v215, v185, &unk_1EC0BA0E0, &qword_1C4F105A0);
    if (sub_1C44157D4(v152, 1, v101) == 1)
    {
      sub_1C4420C3C(v152, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      v153 = v205;
      v154 = v186;
      sub_1C440BADC();
      v155();
      sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
      v156 = v101;
      v157 = (*(v109 + 80) + 32) & ~*(v109 + 80);
      v158 = swift_allocObject();
      v159 = sub_1C442DEC4(v158);
      (*(v109 + 16))(v160 + v157, v154, v156, v159);
      sub_1C4D51ABC();
      sub_1C4450650(v161);
      sub_1C4410278(v162);
      *(swift_allocObject() + 16) = v223;
      v163 = v202;
      sub_1C4EFEAB8();
      sub_1C4597A90();
      v219 = v164;
      *(swift_allocObject() + 16) = v223;
      sub_1C4EFE548();
      sub_1C4597A90();
      sub_1C4410278(&a9);
      sub_1C445FD08();
      v165 = v197;
      v197();
      sub_1C440BC84(&a16);
      sub_1C445FD08();
      v165();
      v166 = v211;
      sub_1C445FD08();
      v165();
      v167 = v213;
      sub_1C445FD08();
      v165();
      v168 = v214;
      sub_1C445FD08();
      v165();
      v181 = v168;
      v180 = 0;
      sub_1C4EFDE58();

      v169 = v168;
      v170 = v196;
      v171 = v217;
      v196(v169, v153);
      v170(v167, v153);
      v170(v166, v153);
      v170(v163, v153);
      v170(v152, v153);
      sub_1C441B388();
      sub_1C4EFDEA8();
      sub_1C4EFD678();
      v172 = v206;
      sub_1C43FCF64();
      v177 = sub_1C440BAA8(v173, v174, v175, v176);
      MEMORY[0x1EEE9AC00](v177);
      v182 = &v225;
      sub_1C48687D0(v171, v172, sub_1C4723B84, &v180);
      sub_1C4420C3C(v172, &unk_1EC0C07E0, &unk_1C4F168F0);
      v178 = sub_1C4402258();
      v179(v178);
      (*(v222 + 8))(v186, v221);
    }

    sub_1C4420C3C(v215, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C471AA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(type metadata accessor for GraphTriple(0) + 32));
  v6 = *v5 == 0x796C696D61464146 && v5[1] == 0xEE00656C63726943;
  if (!v6 && (sub_1C4F02938() & 1) == 0)
  {
    return 1;
  }

  sub_1C4420C3C(a2, &unk_1EC0BA0E0, &qword_1C4F105A0);
  v7 = sub_1C4EFF0C8();
  (*(*(v7 - 8) + 16))(a2, a3, v7);
  sub_1C440BAA8(a2, 0, 1, v7);
  return 0;
}

void sub_1C471AB8C()
{
  sub_1C43FBD3C();
  v0 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBC74();
  v33 = v2;
  sub_1C43FBE44();
  v3 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v5 = v4;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  v30 = v7;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1C4EFDE68();
  v13 = sub_1C43FBD18(v12);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  sub_1C43FBE44();
  sub_1C4EFDE98();
  sub_1C43FCDF8();
  v31 = v15;
  v32 = v14;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  v29 = v16;
  v35 = MEMORY[0x1E69E7CC0];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C459740C();
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v17 = sub_1C4EFEEF8();
  sub_1C43FCF7C(v17);
  *(swift_allocObject() + 16) = xmmword_1C4F0D130;
  sub_1C4EFE418();
  sub_1C4597A90();
  v18 = *(v5 + 104);
  sub_1C43FE9A8();
  v18();
  sub_1C43FE9A8();
  v18();
  sub_1C43FE9A8();
  v18();
  sub_1C43FE9A8();
  v18();
  sub_1C43FE9A8();
  v18();
  sub_1C43FEAF8();
  sub_1C4EFDE58();

  v19 = *(v28 + 8);
  v19(v30, v3);
  v20 = sub_1C440A6C4();
  (v19)(v20);
  v21 = sub_1C440CAF0();
  (v19)(v21);
  v22 = sub_1C4404BCC();
  (v19)(v22);
  v23 = sub_1C43FBEF8();
  (v19)(v23);
  sub_1C4EFDEA8();
  sub_1C4EFD678();
  sub_1C43FCF64();
  sub_1C440BAA8(v24, v25, v26, v27);
  v34[2] = &v35;
  sub_1C48687D0(v29, v33, sub_1C472386C, v34);
  sub_1C4420C3C(v33, &unk_1EC0C07E0, &unk_1C4F168F0);
  (*(v31 + 8))(v29, v32);
  sub_1C43FE9F0();
}

uint64_t sub_1C471AFEC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C44109B4();
  v6 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  type metadata accessor for GraphTriple(0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFF0D8();
  if (sub_1C44157D4(v2, 1, v6) == 1)
  {
    sub_1C4420C3C(v2, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  else
  {
    v16 = *(v8 + 32);
    v17 = sub_1C43FE99C();
    v16(v17);
    v18 = sub_1C43FBEF8();
    v19(v18);
    sub_1C4588EAC();
    v20 = *(*a2 + 16);
    sub_1C4589A94();
    (*(v8 + 8))(v15, v6);
    v21 = *a2;
    *(v21 + 16) = v20 + 1;
    (v16)(v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, v12, v6);
  }

  return 1;
}

void sub_1C471B1EC()
{
  sub_1C43FBD3C();
  v91 = v0;
  v2 = v1;
  v3 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v74 - v5;
  v7 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD2D8();
  v78 = v11;
  v90 = sub_1C456902C(&qword_1EC0BACF0, &unk_1C4F23190);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v81 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v74 - v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD230();
  v92 = v18;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C440E194();
  sub_1C450229C(v19, v20, MEMORY[0x1E69A9820]);
  v83 = v7;
  sub_1C440BADC();
  v80 = sub_1C4F00F28();
  v21 = v2 + 64;
  sub_1C43FD030();
  v24 = v23 & v22;
  v87 = v16 + 8;
  v88 = v16;
  v26 = (v25 + 63) >> 6;
  v74[1] = v9 + 16;
  v75 = v9;
  v76 = (v9 + 8);
  v77 = (v9 + 32);
  v89 = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v27 = 0;
  v85 = v26;
  v86 = v2 + 64;
  for (i = v6; v24; v21 = v86)
  {
LABEL_6:
    v29 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v30 = v29 | (v27 << 6);
    v31 = v89;
    v32 = *(v89 + 48);
    v33 = sub_1C4EFF8A8();
    sub_1C43FCDF8();
    v35 = v34;
    v37 = v92;
    (*(v36 + 16))(v92, v32 + *(v36 + 72) * v30, v33);
    v38 = (*(v31 + 56) + 16 * v30);
    v39 = *v38;
    v40 = v38[1];
    v41 = (v37 + *(v90 + 48));
    *v41 = v39;
    v41[1] = v40;
    v42 = v88;
    sub_1C445FFF0(v37, v88, &qword_1EC0BACF0, &unk_1C4F23190);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    if (*(v91 + 16) && (sub_1C457AC78(), (v44 & 1) != 0))
    {
      v45 = (*(v91 + 56) + 16 * v43);
      v46 = v45[1];
      v79 = *v45;
      v84 = *(v35 + 8);
      v47 = v84;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v47(v42, v33);
      v48 = v92;
      v49 = v81;
      sub_1C445FFF0(v92, v81, &qword_1EC0BACF0, &unk_1C4F23190);
      v50 = i;
      sub_1C4EFF0D8();
      v84(v49, v33);
      if (sub_1C44157D4(v50, 1, v83) != 1)
      {
        (*v77)(v78, v50, v83);
        v51 = v80;
        LODWORD(v84) = swift_isUniquelyReferenced_nonNull_native();
        v93 = v51;
        sub_1C44E3664();
        if (__OFADD__(*(v51 + 16), (v53 & 1) == 0))
        {
          goto LABEL_29;
        }

        v54 = v52;
        v55 = v53;
        sub_1C456902C(&qword_1EC0BC020, &unk_1C4F231A0);
        v56 = sub_1C4F02458();
        v57 = v93;
        if (v56)
        {
          sub_1C44E3664();
          if ((v55 & 1) != (v59 & 1))
          {
            goto LABEL_31;
          }

          v60 = v58;
          if (v55)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v60 = v54;
          if (v55)
          {
LABEL_21:
            v80 = v57;
            v64 = v57[7];
            v65 = *(v64 + 8 * v60);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v64 + 8 * v60) = v65;
            if (isUniquelyReferenced_nonNull_native)
            {
              v67 = v60;
            }

            else
            {
              sub_1C43FCEC0();
              sub_1C443D664();
              v65 = v72;
              v67 = v60;
              *(v64 + 8 * v60) = v72;
            }

            v69 = *(v65 + 16);
            v68 = *(v65 + 24);
            if (v69 >= v68 >> 1)
            {
              sub_1C43FCFE8(v68);
              sub_1C443D664();
              *(v64 + 8 * v67) = v73;
            }

            (*v76)(v78, v83);
            sub_1C4420C3C(v92, &qword_1EC0BACF0, &unk_1C4F23190);
            v70 = *(v64 + 8 * v67);
            *(v70 + 16) = v69 + 1;
            v71 = v70 + 16 * v69;
            *(v71 + 32) = v79;
            *(v71 + 40) = v46;
            goto LABEL_11;
          }
        }

        v57[(v60 >> 6) + 8] |= 1 << v60;
        (*(v75 + 16))(v57[6] + *(v75 + 72) * v60, v78, v83);
        *(v57[7] + 8 * v60) = MEMORY[0x1E69E7CC0];
        v61 = v57[2];
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (v62)
        {
          goto LABEL_30;
        }

        v57[2] = v63;
        goto LABEL_21;
      }

      sub_1C4420C3C(v48, &qword_1EC0BACF0, &unk_1C4F23190);

      sub_1C4420C3C(v50, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C4420C3C(v92, &qword_1EC0BACF0, &unk_1C4F23190);
      (*(v35 + 8))(v42, v33);
    }

LABEL_11:
    v26 = v85;
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v26)
    {

      sub_1C43FE9F0();
      return;
    }

    v24 = *(v21 + 8 * v28);
    ++v27;
    if (v24)
    {
      v27 = v28;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  sub_1C4F029F8();
  __break(1u);
}

void sub_1C471B834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v81 = v24;
  v82 = v20;
  sub_1C4EF9E28();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  sub_1C43FFCB0();
  v26 = sub_1C4EF9E48();
  sub_1C43FCDF8();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBCC4();
  v32 = v31 - v30;
  v33 = sub_1C456902C(&qword_1EC0BC018, &unk_1C4F23180);
  sub_1C43FBD18(v33);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v79 - v35;
  sub_1C47189E8();
  if (!v21)
  {
    v80 = v37;
    sub_1C4EF9E08();
    sub_1C4EF9E38();
    (*(v28 + 8))(v32, v26);
    sub_1C4EF9E18();
    v38 = sub_1C440A6C4();
    v39(v38);
    v40 = sub_1C4EF9D78();
    if (sub_1C44157D4(v36, 1, v40) == 1)
    {
      sub_1C4420C3C(v36, &qword_1EC0BC018, &unk_1C4F23180);
    }

    else
    {
      sub_1C4EF9D68();
      v41 = sub_1C440CAF0();
      v42(v41);
    }

    sub_1C4718F1C();
    v44 = v43;

    if (!v44)
    {
      sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
      v45 = sub_1C4F00F28();
      v44 = v45;
    }

    v53 = v80;
    sub_1C4722A98(v45, v46, v47, v48, v49, v50, v51, v52, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
    v55 = v54;
    v56 = MEMORY[0x1E69E7CC0];
    sub_1C4719A00(v54, v57, v58, v59, v60, v61, v62, v63, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
    v65 = v64;
    sub_1C471BE2C(v53, v66, v67, v68, v69, v70, v71, v72, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
    v73 = v92;
    v74 = v93;
    v75 = v94;
    v76 = v95;
    v77 = v96;
    v78 = v81;
    *v81 = v91;
    v78[1] = v73;
    v78[2] = v74;
    v78[3] = v75;
    v78[4] = v76;
    *(v78 + 10) = v77;
    *(v78 + 11) = v56;
    *(v78 + 12) = v44;
    *(v78 + 13) = v53;
    *(v78 + 14) = v55;
    *(v78 + 15) = v65;
  }

  sub_1C43FBC80();
}

void sub_1C471BE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v131 = v21;
  v135 = v24;
  v129 = v25;
  v26 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v26);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBC74();
  v134 = v28;
  sub_1C43FBE44();
  v125 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v128 = v29;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  v138 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD230();
  v37 = v36;
  sub_1C43FBE44();
  v38 = sub_1C4EFDE68();
  v39 = sub_1C43FBD18(v38);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD2D8();
  v137 = v40;
  sub_1C43FBE44();
  sub_1C4EFDE98();
  sub_1C43FCDF8();
  v132 = v42;
  v133 = v41;
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v43);
  v44 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FD2D8();
  v49 = v48;
  v50 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v51 = sub_1C43FBD18(v50);
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBD08();
  v54 = v52 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v116 - v56;
  v136 = v20;
  v123 = *(v20 + 16);
  sub_1C486DFC0();
  v139 = v58;
  sub_1C4868198();
  v140 = v57;
  sub_1C445FFF0(v57, v54, &unk_1EC0BA0E0, &qword_1C4F105A0);
  if (sub_1C44157D4(v54, 1, v44) == 1)
  {

    sub_1C440BADC();
    sub_1C4420C3C(v59, v60, v61);
    sub_1C472376C();
    swift_allocError();
    *v62 = 0;
    swift_willThrow();
    sub_1C440BADC();
    sub_1C4420C3C(v63, v64, v65);
  }

  else
  {
    v66 = *(v46 + 32);
    v67 = v49;
    v68 = v49;
    v120 = v49;
    v69 = v44;
    v119 = v44;
    v66(v68, v54, v44);
    v148 = 0;
    v149 = MEMORY[0x1E69E7CC0];
    v146 = MEMORY[0x1E69E7CC0];
    v147 = 0;
    v145 = MEMORY[0x1E69E7CC0];
    v143 = 0;
    v144 = 1;
    sub_1C4EFF8A8();
    sub_1C450229C(&qword_1EDDFE808, MEMORY[0x1E69A99E8], MEMORY[0x1E69A99F8]);
    v142 = sub_1C440C490();
    v141 = sub_1C440C490();
    v70 = swift_allocObject();
    v122 = v70;
    *(v70 + 16) = sub_1C440C490();
    v118 = v70 + 16;
    sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
    v71 = *(v46 + 80);
    v121 = v46;
    v72 = (v71 + 32) & ~v71;
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1C4F0D130;
    (*(v46 + 16))(v73 + v72, v67, v69);
    sub_1C4D51ABC();
    v117 = v74;
    sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
    v75 = sub_1C4EFEEF8();
    sub_1C43FCF7C(v75);
    *(swift_allocObject() + 16) = xmmword_1C4F0F820;
    sub_1C4EFEA18();
    sub_1C4EFE2C8();
    sub_1C4EFEAC8();
    sub_1C4EFE3D8();
    sub_1C4EFEBA8();
    sub_1C4EFE638();
    sub_1C4597A90();
    v76 = *MEMORY[0x1E69A95C0];
    v77 = v128;
    v78 = *(v128 + 104);
    v116 = v37;
    v79 = v125;
    (v78)(v37, v76, v125);
    sub_1C442C8C0();
    v78();
    sub_1C4410278(&a11);
    sub_1C442C8C0();
    v78();
    sub_1C4422A7C(&a13);
    sub_1C442C8C0();
    v78();
    v80 = v127;
    sub_1C442C8C0();
    v78();
    v114 = v80;
    v115 = 0;
    v113 = 0;
    v81 = v138;
    v82 = v116;
    sub_1C4EFDE58();

    v83 = *(v77 + 8);
    v83(v80, v79);
    v84 = sub_1C4414A08();
    (v83)(v84);
    v83(v37, v79);
    v83(v81, v79);
    v83(v82, v79);
    v85 = v130;
    sub_1C4EFDEA8();
    sub_1C4EFD678();
    v86 = v134;
    sub_1C43FCF64();
    v91 = sub_1C440BAA8(v87, v88, v89, v90);
    MEMORY[0x1EEE9AC00](v91);
    *(&v116 - 10) = v122;
    *(&v116 - 9) = &v141;
    *(&v116 - 8) = &v142;
    *(&v116 - 7) = &v149;
    *(&v116 - 6) = &v147;
    *(&v116 - 5) = &v146;
    v113 = &v145;
    v114 = &v143;
    v115 = v136;
    sub_1C48687D0(v85, v86, sub_1C47237C0, (&v116 - 12));
    sub_1C4420C3C(v86, &unk_1EC0C07E0, &unk_1C4F168F0);
    v128 = v145;
    sub_1C471AB8C();
    v138 = v92;
    sub_1C471AB8C();
    v137 = v93;
    sub_1C4422A7C(&v147);
    swift_beginAccess();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C471B1EC();
    v134 = v94;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C471B1EC();
    v127 = v95;

    sub_1C4718178(v149, v135, v96, v97, v98, v99, v100, v101, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127);
    v135 = v103;
    v136 = v102;
    (*(v132 + 8))(v85, v133);
    (*(v121 + 8))(v120, v119);
    sub_1C4420C3C(v140, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v104 = v147;
    v105 = v148;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v106 = v143;
    v150 = v144;

    v107 = v129;
    v108 = v135;
    v109 = v136;
    *v129 = v139;
    v107[1] = v109;
    v107[2] = v108;
    v107[3] = v104;
    v111 = v137;
    v110 = v138;
    v107[4] = v105;
    v107[5] = v111;
    v107[6] = v110;
    v107[7] = v106;
    *(v107 + 64) = v150;
    *(v107 + 65) = v147;
    *(v107 + 17) = *(&v147 + 3);
    v112 = v127;
    v107[9] = v134;
    v107[10] = v112;
  }

  sub_1C43FBC80();
}

uint64_t sub_1C471C7A8(char *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, char *a6, uint64_t *a7, uint64_t *a8, uint64_t a9)
{
  v149 = a8;
  v150 = a4;
  v151 = a7;
  v155 = a6;
  v157 = a5;
  v148 = a3;
  v158 = a2;
  v154 = sub_1C456902C(&qword_1EC0B89C8, &unk_1C4F23170);
  v156 = *(v154 - 1);
  MEMORY[0x1EEE9AC00](v154);
  v11 = &v147 - v10;
  v12 = type metadata accessor for GraphTriple(0);
  MEMORY[0x1EEE9AC00](v12);
  v153 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v152 = &v147 - v15;
  v16 = sub_1C4EFEEF8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v161 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v147 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v147 - v24;
  v26 = a1;
  v27 = &a1[v12[5]];
  v159 = *(v17 + 16);
  v160 = v17 + 16;
  v159(&v147 - v24, v27, v16, v23);
  sub_1C4EFE638();
  v28 = sub_1C450229C(&qword_1EDDFCCB0, MEMORY[0x1E69A9748], MEMORY[0x1E69A9768]);
  LOBYTE(a1) = sub_1C4F010B8();
  v31 = *(v17 + 8);
  v30 = (v17 + 8);
  v29 = v31;
  (v31)(v21, v16);
  if ((a1 & 1) == 0)
  {
    v162 = v26;
    sub_1C4EFEA18();
    v54 = sub_1C4F010B8();
    (v29)(v21, v16);
    if (v54)
    {
      (v29)(v25, v16);
      v55 = v12;
      sub_1C4EFE518();
      v56 = v162;
      v57 = sub_1C4F010B8();
      (v29)(v21, v16);
      if (v57)
      {
        v58 = (v56 + v55[8]);
        v59 = v58[1];
        v60 = v55[6];
        v61 = v154[12];
        *v11 = *v58;
        *(v11 + 1) = v59;
        v62 = sub_1C4EFF8A8();
        (*(*(v62 - 8) + 16))(&v11[v61], v56 + v60, v62);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v63 = v157;
        sub_1C4589208();
        v64 = *(*v63 + 16);
        sub_1C4589DB0();
        v65 = *v63;
        *(v65 + 16) = v64 + 1;
        sub_1C47237FC(v11, v65 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v64);
      }

      return 1;
    }

    sub_1C4EFE2C8();
    v66 = sub_1C4F010B8();
    (v29)(v21, v16);
    if (v66)
    {
      (v29)(v25, v16);
      v67 = (v162 + v12[8]);
      v69 = *v67;
      v68 = v67[1];
      v70 = v155;
      *v155 = v69;
      *(v70 + 1) = v68;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_36:

      return 1;
    }

    sub_1C4EFEAC8();
    v96 = sub_1C4F010B8();
    (v29)(v21, v16);
    if ((v96 & 1) == 0)
    {
      sub_1C4EFE3D8();
      v120 = sub_1C4F010B8();
      (v29)(v21, v16);
      if (v120)
      {
        (v29)(v25, v16);
        sub_1C47224CC();
      }

      else
      {
        v154 = v12;
        sub_1C4EFEBA8();
        v144 = sub_1C4F010B8();
        (v29)(v21, v16);
        (v29)(v25, v16);
        if ((v144 & 1) == 0)
        {
          return 1;
        }

        if (*(a9 + 8) == 1)
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v121 = sub_1C4AA1304();
        }

        else
        {
          v122 = 0;
          v121 = *a9;
        }
      }

      *a9 = v121;
      *(a9 + 8) = v122 & 1;
      return 1;
    }

    (v29)(v25, v16);
    v97 = v162;
    v98 = (v162 + v12[8]);
    v99 = *v98;
    v100 = v98[1];
    v102 = v99 == sub_1C4F01138() && v100 == v101;
    if (v102)
    {
    }

    else
    {
      v103 = sub_1C4F02938();

      if ((v103 & 1) == 0)
      {
        if (v99 == sub_1C4F01138() && v100 == v104)
        {
        }

        else
        {
          v106 = sub_1C4F02938();

          if ((v106 & 1) == 0)
          {
            return 1;
          }
        }

        v139 = v12[6];
        v140 = v149;
LABEL_63:
        sub_1C4588F54();
        v141 = *(*v140 + 16);
        sub_1C4589B3C();
        v142 = *v140;
        *(v142 + 16) = v141 + 1;
        v143 = sub_1C4EFF8A8();
        (*(*(v143 - 8) + 16))(v142 + ((*(*(v143 - 8) + 80) + 32) & ~*(*(v143 - 8) + 80)) + *(*(v143 - 8) + 72) * v141, v97 + v139, v143);
        return 1;
      }
    }

    v139 = v12[6];
    v140 = v151;
    goto LABEL_63;
  }

  v157 = v28;
  (v29)(v25, v16);
  v32 = v26;
  v33 = &v26[v12[11]];
  v34 = *v33;
  v35 = *(v33 + 1);
  v155 = v33;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v36 = objc_autoreleasePoolPush();
  v166 = v34;
  v167 = v35;
  v164 = 30;
  v165 = 0xE100000000000000;
  v156 = sub_1C4415EA8();
  v37 = sub_1C4F01FC8();

  objc_autoreleasePoolPop(v36);
  v38 = *(v37 + 16);

  v102 = v38 == 1;
  v39 = v32;
  v40 = v12;
  if (v102)
  {
    v149 = v29;
    v151 = v30;
    v154 = v12;
    v162 = v32;
    v41 = *v155;
    v42 = *(v155 + 1);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v43 = objc_autoreleasePoolPush();
    v166 = v41;
    v167 = v42;
    v164 = 30;
    v165 = 0xE100000000000000;
    v44 = sub_1C4F01FC8();

    objc_autoreleasePoolPop(v43);
    v45 = (v44 + 40);
    v46 = -*(v44 + 16);
    v47 = -1;
    v39 = qword_1EDE2D620;
    while (1)
    {
      if (v46 + v47 == -1)
      {

        v39 = v162;
        v40 = v154;
        v29 = v149;
        goto LABEL_17;
      }

      if (++v47 >= *(v44 + 16))
      {
        break;
      }

      v48 = qword_1EDDF7900;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v48 != -1)
      {
        swift_once();
      }

      v45 += 4;
      v49 = type metadata accessor for SourceIdPrefix(0);
      v50 = sub_1C442B738(v49, qword_1EDE2D620);
      v52 = *v50;
      v51 = v50[1];
      v166 = v52;
      v167 = v51;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](58, 0xE100000000000000);
      v53 = sub_1C4F013E8();

      if (v53)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

LABEL_17:
  v71 = v161;
  (v159)(v161, v39 + v40[7], v16);
  sub_1C4EFE808();
  v72 = sub_1C4F010B8();
  (v29)(v21, v16);
  if (v72 & 1) != 0 || (sub_1C4EFE628(), v73 = sub_1C4F010B8(), (v29)(v21, v16), (v73))
  {
    (v29)(v71, v16);
    v21 = v158;
    swift_beginAccess();
    if (!*(*(v21 + 16) + 16))
    {
      goto LABEL_59;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C457AC78();
    v75 = v74;

    if ((v75 & 1) == 0)
    {
      goto LABEL_59;
    }

    v45 = v40;
    if (qword_1EDDFECB0 == -1)
    {
LABEL_22:
      v76 = sub_1C4F00978();
      sub_1C442B738(v76, qword_1EDDFECB8);
      v77 = v152;
      sub_1C4709E74(v39, v152);
      v78 = v153;
      sub_1C4709E74(v39, v153);

      v79 = sub_1C4F00968();
      v80 = sub_1C4F01CC8();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v154 = v45;
        v83 = v82;
        *v81 = 136315394;
        v162 = v39;
        v163 = v82;
        v84 = v154[6];
        swift_beginAccess();
        v85 = sub_1C465C2AC(v77 + v84, *(v21 + 16));
        v87 = v86;
        swift_endAccess();
        v164 = v85;
        v165 = v87;
        sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
        v88 = sub_1C4F01198();
        v90 = v89;
        sub_1C4709ED8(v77);
        v91 = sub_1C441D828(v88, v90, &v163);

        *(v81 + 4) = v91;
        *(v81 + 12) = 2080;
        v92 = (v78 + v154[8]);
        v93 = *v92;
        v94 = v92[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4709ED8(v78);
        v95 = sub_1C441D828(v93, v94, &v163);

        *(v81 + 14) = v95;
        _os_log_impl(&dword_1C43F8000, v79, v80, "Overwriting relationshipIDToPersonID: %s with %s", v81, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v83, -1, -1);
        MEMORY[0x1C6942830](v81, -1, -1);
      }

      else
      {

        sub_1C4709ED8(v78);
        sub_1C4709ED8(v77);
      }

LABEL_59:
      swift_beginAccess();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      swift_isUniquelyReferenced_nonNull_native();
      v163 = *(v21 + 16);
      sub_1C4661AA8();
      *(v21 + 16) = v163;
      swift_endAccess();
      return 1;
    }

LABEL_79:
    swift_once();
    goto LABEL_22;
  }

  v154 = v40;
  sub_1C4EFEB48();
  v107 = sub_1C4F010B8();
  (v29)(v21, v16);
  (v29)(v71, v16);
  if (v107)
  {
    v162 = v39;
    v108 = *v155;
    v109 = *(v155 + 1);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v110 = objc_autoreleasePoolPush();
    v166 = v108;
    v167 = v109;
    v164 = 30;
    v165 = 0xE100000000000000;
    v111 = sub_1C4F01FC8();

    objc_autoreleasePoolPop(v110);
    v112 = (v111 + 40);
    v113 = -*(v111 + 16);
    v21 = -1;
    do
    {
      v45 = (v113 + v21);
      if (v113 + v21 == -1)
      {
        break;
      }

      if (++v21 >= *(v111 + 16))
      {
        goto LABEL_77;
      }

      v39 = *v112;
      v114 = qword_1EDDF7900;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v114 != -1)
      {
        swift_once();
      }

      v112 += 2;
      v115 = type metadata accessor for SourceIdPrefix(0);
      v116 = sub_1C442B738(v115, qword_1EDE2D620);
      v118 = *v116;
      v117 = v116[1];
      v166 = v118;
      v167 = v117;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](58, 0xE100000000000000);
      v119 = sub_1C4F013E8();
    }

    while ((v119 & 1) == 0);

    v123 = *v155;
    v124 = *(v155 + 1);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v125 = objc_autoreleasePoolPush();
    v166 = v123;
    v167 = v124;
    v164 = 30;
    v165 = 0xE100000000000000;
    v126 = sub_1C4F01FC8();

    objc_autoreleasePoolPop(v125);
    v39 = (v126 + 40);
    v127 = -*(v126 + 16);
    v128 = -1;
    while (1)
    {
      if (v127 + v128 == -1)
      {

        if (v45 != -1)
        {
          return 1;
        }

        goto LABEL_72;
      }

      if (++v128 >= *(v126 + 16))
      {
        goto LABEL_78;
      }

      v129 = qword_1EDDFBCA0;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v129 != -1)
      {
        swift_once();
      }

      v130 = type metadata accessor for SourceIdPrefix(0);
      v131 = sub_1C442B738(v130, &qword_1EDE2DD58);
      v133 = *v131;
      v132 = v131[1];
      v166 = v133;
      v167 = v132;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](58, 0xE100000000000000);
      v21 = sub_1C4F013E8();

      if (v21)
      {
        break;
      }

      if (qword_1EDDF7908 != -1)
      {
        swift_once();
      }

      v39 += 2;
      v134 = sub_1C442B738(v130, qword_1EDE2D638);
      v136 = *v134;
      v135 = v134[1];
      v166 = v136;
      v167 = v135;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](58, 0xE100000000000000);
      v137 = sub_1C4F013E8();

      if (v137)
      {
        goto LABEL_70;
      }
    }

LABEL_70:

    if (v45 != -1)
    {
      return 1;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v145 = v148;
    swift_isUniquelyReferenced_nonNull_native();
    v166 = *v145;
    sub_1C4661AA8();
    *v145 = v166;
LABEL_72:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v146 = v150;
    swift_isUniquelyReferenced_nonNull_native();
    v166 = *v146;
    sub_1C4661AA8();
    *v146 = v166;
  }

  return 1;
}

void sub_1C471D870()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBC74();
  sub_1C43FD2C8(v8);
  v238 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v216 - v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v216 - v18;
  v20 = sub_1C4EFDE68();
  v21 = sub_1C43FBD18(v20);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v22);
  v241 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v248 = v23;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD230();
  v244 = v26;
  v27 = sub_1C456902C(&unk_1EC0BC900, byte_1C4F142D0);
  sub_1C43FBD18(v27);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v216 - v29;
  v31 = MEMORY[0x1E69E7CC0];
  v263 = MEMORY[0x1E69E7CC0];
  v264 = sub_1C4EFF048();
  *&v265 = v32;
  v33 = sub_1C4F01438();
  v252 = v34;
  v240 = v3;
  v35 = v3[15];
  v249 = v5;
  v253[2] = v5;
  LODWORD(v225) = sub_1C479B59C(sub_1C47236D0, v253, v35);
  if (v225)
  {
    v36 = v19;
    objc_opt_self();
    sub_1C4418370();
    v37 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v38 = sub_1C444B0E8(v37, sel_featureValueWithInt64_);
    sub_1C4414A14(v38, v39, v40, MEMORY[0x1E69E7CC0]);
    v43 = *(v41 + 16);
    v42 = *(v41 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_1C4413090(v42);
      sub_1C458B504();
    }

    sub_1C43FBDF0();
    *(v44 + 16) = v43 + 1;
    v45 = (v44 + 40 * v43);
    v45[4] = 0xD000000000000012;
    v45[5] = v46;
    v47 = v252;
    v45[6] = v33;
    v45[7] = v47;
    v45[8] = v38;
    v263 = v44;
    v19 = v36;
  }

  v262[2] = v31;
  v262[3] = v31;
  v262[0] = 0;
  v262[1] = 0;
  v260 = 0;
  v261 = 0;
  v259 = 0;
  v258 = 0;
  v257[1] = 0;
  v257[0] = 0;
  type metadata accessor for GraphTriple(0);
  v256 = 0;
  v255 = 0;
  sub_1C43FCF64();
  sub_1C440BAA8(v48, v49, v50, v51);
  v254 = 0;
  v243 = *(v1 + 16);
  v52 = sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
  v53 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v55 = v54;
  v57 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v58 = v57 + *(v56 + 72);
  v219 = *(v54 + 80);
  v222 = v52;
  v218 = v58;
  v59 = swift_allocObject();
  v242 = xmmword_1C4F0D130;
  *(v59 + 16) = xmmword_1C4F0D130;
  v60 = *(v55 + 16);
  v220 = v57;
  v223 = v53;
  v221 = (v55 + 16);
  v217 = v60;
  v60(v59 + v57, v249, v53);
  sub_1C4D51ABC();
  v229 = v61;
  v62 = sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v63 = sub_1C4EFEEF8();
  sub_1C43FCF7C(v63);
  v251 = v33;
  v236 = v30;
  v65 = *(v64 + 72);
  v67 = *(v66 + 80);
  v239 = v1;
  v68 = (v67 + 32) & ~v67;
  v224 = v65;
  v237 = v67;
  v230 = v62;
  v227 = v68 + v65;
  *(swift_allocObject() + 16) = v242;
  v235 = v68;
  sub_1C4EFEA18();
  sub_1C4597A90();
  v228 = v69;
  LODWORD(v57) = *MEMORY[0x1E69A95C0];
  v70 = *(v10 + 104);
  v71 = v238;
  (v70)(v19, *MEMORY[0x1E69A95C0], v238);
  sub_1C440BC84(&v266 + 8);
  sub_1C4422A88();
  v70();
  sub_1C4422A88();
  v70();
  sub_1C4410278(v267);
  sub_1C4422A88();
  v70();
  v72 = v19;
  v73 = v250;
  v232 = v57;
  sub_1C4422A88();
  v231 = v70;
  v233 = v10 + 104;
  v70();
  v213 = v73;
  v214 = 0;
  sub_1C44141C8();
  sub_1C44623AC(v72, v229, 0, v33, v228, v15);

  v74 = *(v10 + 8);
  v74(v73, v71);
  v75 = sub_1C4402B58();
  (v74)(v75);
  v234 = v15;
  v74(v15, v71);
  v76 = sub_1C44057DC();
  (v74)(v76);
  v77 = sub_1C4414550();
  v229 = v10 + 8;
  (v74)(v77);
  v78 = v244;
  sub_1C4EFDEA8();
  v79 = sub_1C4EFD678();
  v80 = v247;
  sub_1C43FCF64();
  v84 = sub_1C440BAA8(v81, v82, v83, v79);
  MEMORY[0x1EEE9AC00](v84);
  *(&v216 - 6) = &v254;
  *(&v216 - 5) = &v263;
  v212 = v239;
  v213 = v251;
  v214 = v252;
  v215 = v240;
  sub_1C444C238(v78, v80, sub_1C47236F0, (&v216 - 8));
  sub_1C4420C3C(v80, &unk_1EC0C07E0, &unk_1C4F168F0);
  v85 = v248 + 8;
  v86 = *(v248 + 8);
  v86(v78, v241);
  if (v254 == 1)
  {
    v87 = v236;
    v88 = v251;
    v89 = [objc_opt_self() featureValueWithInt64_];
    v90 = v263;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C43FCEC0();
      sub_1C458B504();
      v90 = v208;
    }

    v91 = v252;
    v93 = *(v90 + 16);
    v92 = *(v90 + 24);
    if (v93 >= v92 >> 1)
    {
      sub_1C4413090(v92);
      sub_1C458B504();
      v90 = v209;
    }

    *(v90 + 16) = v93 + 1;
    sub_1C4409C0C(v90 + 40 * v93);
    v94[6] = v88;
    v94[7] = v91;
    v94[8] = v89;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4420C3C(v87, &unk_1EC0BC900, byte_1C4F142D0);
  }

  else
  {
    v95 = swift_allocObject();
    v248 = v85;
    v96 = sub_1C443FBE0(v95);
    v217(v97 + v220, v249, v223, v96);
    sub_1C4D51ABC();
    v223 = v86;
    v222 = v98;
    sub_1C441DCCC();
    *(swift_allocObject() + 16) = xmmword_1C4F23100;
    v228 = v79;
    sub_1C4EFE3D8();
    sub_1C4EFE3A8();
    sub_1C4EFE318();
    sub_1C4EFE2C8();
    sub_1C4EFEBF8();
    sub_1C4EFEE68();
    sub_1C4EFEAC8();
    sub_1C4EFE3D8();
    sub_1C4EFE788();
    sub_1C4597A90();
    v224 = v99;
    v100 = v232;
    v101 = v231;
    (v231)(v72, v232, v71);
    v102 = sub_1C440BC84(&v266 + 8);
    (v101)(v102, v100, v71);
    v103 = v72;
    v104 = v234;
    (v101)(v234, v100, v71);
    v105 = sub_1C4410278(v267);
    (v101)(v105, v100, v71);
    sub_1C4422A7C(v269);
    sub_1C447F008();
    v101();
    v213 = v100;
    v214 = 0;
    sub_1C44141C8();
    sub_1C44623AC(v103, v222, 0, v78, v224, v104);

    v74(v100, v71);
    v106 = sub_1C4402B58();
    (v74)(v106);
    v107 = sub_1C4414550();
    (v74)(v107);
    v108 = sub_1C44057DC();
    (v74)(v108);
    v226 = v103;
    v74(v103, v71);
    v109 = v244;
    sub_1C4EFDEA8();
    v110 = v247;
    sub_1C43FCF64();
    v114 = sub_1C440BAA8(v111, v112, v113, v228);
    MEMORY[0x1EEE9AC00](v114);
    v115 = v236;
    *(&v216 - 12) = v236;
    *(&v216 - 11) = &v258;
    *(&v216 - 10) = v257;
    *(&v216 - 9) = v262;
    *(&v216 - 8) = &v260;
    *(&v216 - 7) = &v263;
    v116 = v251;
    v117 = v252;
    *(&v216 - 6) = v251;
    *(&v216 - 5) = v117;
    v215 = &v255;
    sub_1C444C238(v109, v110, sub_1C4723700, (&v216 - 14));
    sub_1C4420C3C(v110, &unk_1EC0C07E0, &unk_1C4F168F0);
    v223(v109, v241);
    v118 = v256;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44057DC();
    v119 = v240;
    sub_1C4721DF8();
    v120 = &v263;
    sub_1C49D3A70(v121);
    sub_1C4722278();
    sub_1C49D3A70(v122);
    v214 = v119;
    v225 = v261;
    v212 = v260;
    v213 = v261;
    v123 = sub_1C44057DC();
    v224 = v124;
    v222 = v125;
    v239 = v126;
    v131 = sub_1C4720C44(v123, v127, v128, v124, v129, v125, v130, v126, v212, v213, v214);
    sub_1C49D3A70(v131);
    v132 = *v119;
    if (*v119)
    {
      v220 = v118;
      v221 = v74;
      v133 = v119[9];
      v134 = v119[10];
      v265 = *(v119 + 1);
      v266 = *(v119 + 3);
      v267[0] = *(v119 + 5);
      v267[1] = *(v119 + 7);
      v264 = v132;
      v268 = v133;
      v269[0] = v134;
      v135 = v249;
      sub_1C483644C();
      v137 = v136;
      v138 = objc_opt_self();
      v219 = v133;
      if (v137)
      {
        v139 = [v138 featureValueWithInt64_];
      }

      else
      {
        v139 = [v138 featureValueWithInt64_];
      }

      v140 = v139;
      v141 = v263;
      sub_1C4418370();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C458B504();
        v141 = v210;
      }

      v143 = *(v141 + 16);
      v142 = *(v141 + 24);
      if (v143 >= v142 >> 1)
      {
        sub_1C43FCFE8(v142);
        sub_1C458B504();
        v141 = v211;
      }

      *(v141 + 16) = v143 + 1;
      sub_1C4409C0C(v141 + 40 * v143);
      v144 = v252;
      v145[6] = v116;
      v145[7] = v144;
      v145[8] = v140;
      v263 = v141;
      v146 = sub_1C44E5514(v135, v134);
      v147 = v238;
      if (v146)
      {
        v148 = v146;
        v149 = *(v146 + 16);
        if (v149)
        {
          v120 = sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
          v240 = v148;
          v150 = (v148 + 40);
          sub_1C4418370();
          do
          {
            v151 = *(v150 - 1);
            v152 = *v150;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v153 = sub_1C4594E18(v151, v152);
            v155 = *(v141 + 16);
            v154 = *(v141 + 24);
            if (v155 >= v154 >> 1)
            {
              sub_1C43FCFE8(v154);
              sub_1C458B504();
              v141 = v158;
            }

            *(v141 + 16) = v155 + 1;
            v156 = (v141 + 40 * v155);
            v156[4] = 0xD00000000000001DLL;
            v156[5] = 0x80000001C4F94F10;
            v157 = v252;
            v156[6] = v116;
            v156[7] = v157;
            v156[8] = v153;
            v150 += 2;
            --v149;
          }

          while (v149);

          v263 = v141;
          v147 = v238;
          v135 = v249;
        }

        else
        {
        }
      }

      if (sub_1C44E5514(v135, v219))
      {
        sub_1C471FCF4();
        v160 = v159;

        v120 = &v263;
        sub_1C49D3A70(v160);
      }

      else
      {
        sub_1C4418370();
      }

      v161 = v231;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C459740C();
      v249 = v162;
      v163 = swift_allocObject();
      sub_1C443FBE0(v163);
      sub_1C4EFE418();
      sub_1C4597A90();
      sub_1C43FEF2C();
      sub_1C44236A4();
      v161();
      v164 = v245;
      sub_1C44236A4();
      v161();
      sub_1C4410278(&v259);
      sub_1C44236A4();
      v161();
      v165 = v246;
      sub_1C44236A4();
      v161();
      v166 = v250;
      sub_1C44236A4();
      v161();
      v213 = v166;
      v214 = v120;
      v167 = v249;
      v212 = v249;
      sub_1C43FEAF8();
      v168 = v164;
      sub_1C4EFDE58();

      v169 = v221;
      (v221)(v166, v147);
      v169(v165, v147);
      v170 = sub_1C4402B58();
      (v169)(v170);
      v169(v168, v147);
      v169(v226, v147);
      sub_1C4EFDEA8();
      sub_1C440BC84(v267 + 8);
      sub_1C43FCF64();
      v174 = sub_1C440BAA8(v171, v172, v173, v228);
      MEMORY[0x1EEE9AC00](v174);
      sub_1C4441908();
      *(v175 - 32) = v176;
      *(v175 - 24) = &v263;
      v177 = v252;
      *(v175 - 16) = v251;
      *(v175 - 8) = v177;
      v178 = sub_1C440CAF0();
      sub_1C444C238(v178, v179, v180, v181);
      sub_1C4420C3C(v167, &unk_1EC0C07E0, &unk_1C4F168F0);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C459740C();
      v249 = v182;
      sub_1C441DCCC();
      v183 = swift_allocObject();
      sub_1C443FBE0(v183);
      sub_1C4EFE418();
      sub_1C4597A90();
      *&v242 = v184;
      sub_1C447F008();
      v185 = v231;
      v231();
      sub_1C440BC84(&v266 + 8);
      sub_1C447F008();
      v185();
      v186 = v234;
      sub_1C447F008();
      v185();
      sub_1C4410278(v267);
      sub_1C447F008();
      v185();
      v187 = v250;
      sub_1C447F008();
      v185();
      v213 = v187;
      v214 = v242;
      v212 = v249;
      v188 = v226;
      sub_1C43FEAF8();
      sub_1C44623AC(v189, v190, v191, v167, 0, v186);

      v169(v250, v147);
      v192 = sub_1C4402B58();
      (v169)(v192);
      v169(v186, v147);
      v193 = sub_1C44057DC();
      (v169)(v193);
      v169(v188, v147);
      sub_1C441B388();
      sub_1C4EFDEA8();
      sub_1C440BC84(v267 + 8);
      sub_1C43FCF64();
      v197 = sub_1C440BAA8(v194, v195, v196, v228);
      MEMORY[0x1EEE9AC00](v197);
      sub_1C4441908();
      *(v198 - 32) = v199;
      *(v198 - 24) = &v263;
      v200 = v252;
      *(v198 - 16) = v251;
      *(v198 - 8) = v200;
      v201 = sub_1C43FBEF8();
      sub_1C444C238(v201, v202, v203, v204);

      sub_1C4420C3C(v167, &unk_1EC0C07E0, &unk_1C4F168F0);
      v205 = v147;
      v206 = v241;
      v207 = v223;
      v223(v205, v241);
      v207(v244, v206);
      v115 = v236;
    }

    else
    {
      sub_1C4418370();
      swift_bridgeObjectRelease_n();
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4420C3C(v115, &unk_1EC0BC900, byte_1C4F142D0);
  }

  sub_1C43FE9F0();
}

void sub_1C471EDFC(uint64_t a1, BOOL *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29[1] = a6;
  v29[2] = a7;
  v29[0] = a5;
  v29[3] = a3;
  v32 = a2;
  v8 = sub_1C4EFEEF8();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v31 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for GraphTriple(0);
  v10 = *(v30 + 44);
  v35 = a1;
  v11 = (a1 + v10);
  v12 = *v11;
  v13 = v11[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = objc_autoreleasePoolPush();
  v38 = v12;
  v39 = v13;
  v36 = 30;
  v37 = 0xE100000000000000;
  sub_1C4415EA8();
  v15 = sub_1C4F01FC8();

  objc_autoreleasePoolPop(v14);
  v16 = v15 + 40;
  v17 = -*(v15 + 16);
  v18 = -1;
  do
  {
    v19 = v17 + v18;
    if (v17 + v18 == -1)
    {
      break;
    }

    if (++v18 >= *(v15 + 16))
    {
      __break(1u);
      return;
    }

    v20 = qword_1EDDFBC98;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v20 != -1)
    {
      swift_once();
    }

    v16 += 16;
    v21 = type metadata accessor for SourceIdPrefix(0);
    v22 = sub_1C442B738(v21, qword_1EDE2DD40);
    v24 = *v22;
    v23 = v22[1];
    v38 = v24;
    v39 = v23;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](58, 0xE100000000000000);
    v25 = sub_1C4F013E8();
  }

  while ((v25 & 1) != 0);

  v26 = v31;
  *v32 = v19 == -1;
  v27 = *(v30 + 28);
  sub_1C4EFE518();
  LOBYTE(v27) = sub_1C44DBB50(v35 + v27, v26);
  (*(v33 + 8))(v26, v34);
  if (v27)
  {
    sub_1C47217E4();
    sub_1C49D3A70(v28);
  }
}

uint64_t sub_1C471F088(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11, char a12, uint64_t *a13)
{
  v72 = a7;
  v73 = a8;
  v74 = a6;
  v75 = a5;
  v76 = a4;
  v77 = a3;
  v15 = sub_1C4EFEEF8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v70 - v20;
  v22 = type metadata accessor for GraphTriple(0);
  (*(v16 + 16))(v21, a1 + *(v22 + 20), v15);
  sub_1C4EFE3D8();
  sub_1C450229C(&qword_1EDDFCCB0, MEMORY[0x1E69A9748], MEMORY[0x1E69A9768]);
  v23 = sub_1C4F010B8();
  v24 = *(v16 + 8);
  v24(v18, v15);
  if (v23)
  {
    v24(v21, v15);
    sub_1C4420C3C(a2, &unk_1EC0BC900, byte_1C4F142D0);
    sub_1C4709E74(a1, a2);
    sub_1C440BAA8(a2, 0, 1, v22);
    return 1;
  }

  v25 = v22;
  v71 = a1;
  sub_1C4EFE3A8();
  v26 = sub_1C4F010B8();
  v24(v18, v15);
  if (v26)
  {
    v24(v21, v15);
    v27 = (v71 + *(v22 + 32));
    v29 = *v27;
    v28 = v27[1];
    v30 = v77;
LABEL_11:
    *v30 = v29;
    v30[1] = v28;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return 1;
  }

  sub_1C4EFEBF8();
  v31 = sub_1C4F010B8();
  v24(v18, v15);
  if (v31)
  {
    v24(v21, v15);
    v32 = (v71 + *(v25 + 32));
    v29 = *v32;
    v28 = v32[1];
    v30 = v76;
    goto LABEL_11;
  }

  sub_1C4EFEE68();
  v33 = sub_1C4F010B8();
  v24(v18, v15);
  if (v33)
  {
    v24(v21, v15);
    v34 = (v71 + *(v25 + 32));
    v29 = *v34;
    v28 = v34[1];
    v30 = v75;
    goto LABEL_11;
  }

  sub_1C4EFE2C8();
  v35 = sub_1C4F010B8();
  v24(v18, v15);
  if (v35)
  {
    v24(v21, v15);
    v36 = (v71 + *(v25 + 32));
    v29 = *v36;
    v28 = v36[1];
    v30 = v74;
    goto LABEL_11;
  }

  sub_1C4EFE318();
  v38 = sub_1C4F010B8();
  v24(v18, v15);
  if (v38)
  {
    v24(v21, v15);
    v39 = [objc_opt_self() featureValueWithInt64_];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v40 = v72;
    sub_1C4588E20();
    v41 = *(*v40 + 16);
    sub_1C4589A10(v41);
    v42 = *v40;
    *(v42 + 16) = v41 + 1;
    v43 = (v42 + 40 * v41);
    v43[4] = 0x69726F7661467369;
    v43[5] = 0xEA00000000006574;
LABEL_15:
    v43[6] = v73;
    v43[7] = a9;
    v43[8] = v39;
    return 1;
  }

  sub_1C4EFEAC8();
  v44 = sub_1C4F010B8();
  v24(v18, v15);
  if (v44)
  {
    v24(v21, v15);
    v45 = v71;
    v46 = (v71 + *(v25 + 32));
    v47 = *v46;
    v48 = v46[1];
    if (v47 == sub_1C4F01138() && v48 == v49)
    {
    }

    else
    {
      v51 = sub_1C4F02938();

      if ((v51 & 1) == 0)
      {
        if (v47 == sub_1C4F01138() && v48 == v52)
        {
        }

        else
        {
          v54 = sub_1C4F02938();

          if ((v54 & 1) == 0)
          {
            return 1;
          }
        }

        v66 = *(v25 + 24);
        sub_1C4588F54();
        v67 = *(*a11 + 16);
        sub_1C4589B3C();
        v68 = *a11;
        *(v68 + 16) = v67 + 1;
        v69 = sub_1C4EFF8A8();
        (*(*(v69 - 8) + 16))(v68 + ((*(*(v69 - 8) + 80) + 32) & ~*(*(v69 - 8) + 80)) + *(*(v69 - 8) + 72) * v67, v71 + v66, v69);
        return 1;
      }
    }

    v62 = *(v25 + 24);
    sub_1C4588F54();
    v63 = *(*a10 + 16);
    sub_1C4589B3C();
    v64 = *a10;
    *(v64 + 16) = v63 + 1;
    v65 = sub_1C4EFF8A8();
    (*(*(v65 - 8) + 16))(v64 + ((*(*(v65 - 8) + 80) + 32) & ~*(*(v65 - 8) + 80)) + *(*(v65 - 8) + 72) * v63, v45 + v62, v65);
    return 1;
  }

  sub_1C4EFE788();
  v55 = sub_1C4F010B8();
  v24(v18, v15);
  v24(v21, v15);
  if (v55 & 1) != 0 && (a12)
  {
    v56 = (v71 + *(v25 + 32));
    v57 = *v56;
    v58 = v56[1];
    *a13 = *v56;
    a13[1] = v58;
    swift_bridgeObjectRetain_n();

    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    v39 = sub_1C4594E18(v57, v58);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v59 = v72;
    sub_1C4588E20();
    v60 = *(*v59 + 16);
    sub_1C4589A10(v60);
    v61 = *v59;
    *(v61 + 16) = v60 + 1;
    v43 = (v61 + 40 * v60);
    v43[4] = 0xD000000000000016;
    v43[5] = 0x80000001C4F94F30;
    goto LABEL_15;
  }

  return 1;
}

uint64_t sub_1C471F7EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22[-v9];
  v11 = sub_1C4EFF0C8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for GraphTriple(0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFF0D8();
  if (sub_1C44157D4(v10, 1, v11) == 1)
  {
    sub_1C4420C3C(v10, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  else
  {
    v15 = (*(v12 + 32))(v14, v10, v11);
    MEMORY[0x1EEE9AC00](v15);
    *&v22[-16] = v14;
    if (sub_1C479B59C(sub_1C4723B68, &v22[-32], v16))
    {
      v17 = [objc_opt_self() featureValueWithInt64_];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4588E20();
      v18 = *(*a3 + 16);
      sub_1C4589A10(v18);
      v19 = *a3;
      *(v19 + 16) = v18 + 1;
      v20 = (v19 + 40 * v18);
      v20[4] = 0xD000000000000011;
      v20[5] = 0x80000001C4F88190;
      v20[6] = a4;
      v20[7] = a5;
      v20[8] = v17;
    }

    (*(v12 + 8))(v14, v11);
  }

  return 1;
}

uint64_t sub_1C471FA70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22[-v9];
  v11 = sub_1C4EFF0C8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for GraphTriple(0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFF0D8();
  if (sub_1C44157D4(v10, 1, v11) == 1)
  {
    sub_1C4420C3C(v10, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  else
  {
    v15 = (*(v12 + 32))(v14, v10, v11);
    MEMORY[0x1EEE9AC00](v15);
    *&v22[-16] = v14;
    if (sub_1C479B59C(sub_1C4723B68, &v22[-32], v16))
    {
      v17 = [objc_opt_self() featureValueWithInt64_];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4588E20();
      v18 = *(*a3 + 16);
      sub_1C4589A10(v18);
      v19 = *a3;
      *(v19 + 16) = v18 + 1;
      v20 = (v19 + 40 * v18);
      v20[4] = 0xD000000000000011;
      v20[5] = 0x80000001C4F882D0;
      v20[6] = a4;
      v20[7] = a5;
      v20[8] = v17;
    }

    (*(v12 + 8))(v14, v11);
  }

  return 1;
}

void sub_1C471FCF4()
{
  sub_1C43FBD3C();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2;
    v5 = v1;
    v6 = v0;
    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    sub_1C4461BB8(0, &qword_1EDDFA430, 0x1E695CD58);
    v7 = 0;
    v8 = (v4 + 40);
    v9 = MEMORY[0x1E69E7CC0];
    v104 = v6;
    v105 = v5;
    do
    {
      v106 = v7;
      v107 = v8;
      v11 = *(v8 - 1);
      v10 = *v8;
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v12 = sub_1C4594E18(v11, v10);
      v108 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C458B504();
        v9 = v97;
      }

      sub_1C4425098();
      if (v14)
      {
        sub_1C4405AF4(v13);
        sub_1C458B504();
        v9 = v98;
      }

      sub_1C441B8A0();
      v15[4] = 0xD000000000000014;
      v15[5] = 0x80000001C4F86050;
      v15[6] = v6;
      v15[7] = v5;
      v15[8] = v12;
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F140B0;
      *(inited + 32) = 7237491;
      *(inited + 40) = 0xE300000000000000;
      *(inited + 48) = 0x7265746867756164;
      *(inited + 56) = 0xE800000000000000;
      *(inited + 64) = 0x646C696863;
      *(inited + 72) = 0xE500000000000000;
      *(inited + 80) = 0x6C2D6E692D6E6F73;
      *(inited + 88) = 0xEA00000000007761;
      *(inited + 96) = 0x7265746867756164;
      *(inited + 104) = 0xEF77616C2D6E692DLL;
      *(inited + 112) = sub_1C4F01138();
      *(inited + 120) = v17;
      *(inited + 128) = sub_1C4F01138();
      *(inited + 136) = v18;
      *(inited + 144) = sub_1C4F01138();
      *(inited + 152) = v19;
      *(inited + 160) = sub_1C4F01138();
      *(inited + 168) = v20;
      *(inited + 176) = sub_1C4F01138();
      *(inited + 184) = v21;
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_1C4F17D00;
      *(v22 + 32) = 0x6573756F7073;
      *(v22 + 40) = 0xE600000000000000;
      *(v22 + 48) = 0x72656E74726170;
      *(v22 + 56) = 0xE700000000000000;
      *(v22 + 64) = 0x646E6162737568;
      *(v22 + 72) = 0xE700000000000000;
      *(v22 + 80) = 1701210487;
      *(v22 + 88) = 0xE400000000000000;
      *(v22 + 96) = 0x656972666C726967;
      *(v22 + 104) = 0xEA0000000000646ELL;
      *(v22 + 112) = 0x6E65697266796F62;
      *(v22 + 120) = 0xE900000000000064;
      *(v22 + 128) = sub_1C4F01138();
      *(v22 + 136) = v23;
      *(v22 + 144) = sub_1C4F01138();
      *(v22 + 152) = v24;
      *(v22 + 160) = sub_1C4F01138();
      *(v22 + 168) = v25;
      *(v22 + 176) = sub_1C4F01138();
      *(v22 + 184) = v26;
      *(v22 + 192) = sub_1C4F01138();
      *(v22 + 200) = v27;
      *(v22 + 208) = sub_1C4F01138();
      *(v22 + 216) = v28;
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_1C4F0F820;
      *(v29 + 32) = 0x726574736973;
      *(v29 + 40) = 0xE600000000000000;
      *(v29 + 48) = 0x726568746F7262;
      *(v29 + 56) = 0xE700000000000000;
      *(v29 + 64) = 0x676E696C626973;
      *(v29 + 72) = 0xE700000000000000;
      *(v29 + 80) = sub_1C4F01138();
      *(v29 + 88) = v30;
      *(v29 + 96) = sub_1C4F01138();
      *(v29 + 104) = v31;
      *(v29 + 112) = sub_1C4F01138();
      *(v29 + 120) = v32;
      v33 = swift_initStackObject();
      *(v33 + 16) = xmmword_1C4F0D480;
      *(v33 + 32) = 0x726567616E616DLL;
      *(v33 + 40) = 0xE700000000000000;
      *(v33 + 48) = 0x6E61747369737361;
      *(v33 + 56) = 0xE900000000000074;
      *(v33 + 64) = sub_1C4F01138();
      *(v33 + 72) = v34;
      *(v33 + 80) = sub_1C4F01138();
      *(v33 + 88) = v35;
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1C4F23110;
      *(v36 + 32) = 0x726568746F6DLL;
      *(v36 + 40) = 0xE600000000000000;
      *(v36 + 48) = 0x726568746166;
      *(v36 + 56) = 0xE600000000000000;
      *(v36 + 64) = 0x746E65726170;
      *(v36 + 72) = 0xE600000000000000;
      *(v36 + 80) = 0x656C636E75;
      *(v36 + 88) = 0xE500000000000000;
      *(v36 + 96) = 1953396065;
      *(v36 + 104) = 0xE400000000000000;
      *(v36 + 112) = 0x6E6973756F63;
      sub_1C44340D8();
      v38[15] = 0xE600000000000000;
      v38[16] = v37 | 0x7461666400000000;
      v38[17] = 0xEB00000000726568;
      v38[18] = 0x746F6D646E617267;
      v38[19] = 0xEB00000000726568;
      sub_1C44340D8();
      *(v40 + 160) = v39 | 0x7261706400000000;
      *(v40 + 168) = 0xEB00000000746E65;
      sub_1C44340D8();
      *(v42 + 176) = v41 | 0x6E6F736400000000;
      sub_1C44340D8();
      v44[23] = v45;
      v44[24] = v43 | 0x7561646400000000;
      v44[25] = 0xED00007265746867;
      sub_1C44340D8();
      v47[26] = v46 | 0x6968636400000000;
      v47[27] = 0xEA0000000000646CLL;
      v47[28] = 0x656365696ELL;
      v47[29] = v48;
      v47[30] = 0x77656870656ELL;
      v47[31] = 0xE600000000000000;
      *(v36 + 256) = sub_1C4F01F08();
      *(v36 + 264) = v49;
      *(v36 + 272) = sub_1C4F01138();
      *(v36 + 280) = v50;
      *(v36 + 288) = sub_1C4F01138();
      *(v36 + 296) = v51;
      *(v36 + 304) = sub_1C4F01138();
      *(v36 + 312) = v52;
      *(v36 + 320) = sub_1C4F01138();
      *(v36 + 328) = v53;
      *(v36 + 336) = sub_1C4F01138();
      *(v36 + 344) = v54;
      *(v36 + 352) = sub_1C4F01138();
      *(v36 + 360) = v55;
      *(v36 + 368) = sub_1C4F01138();
      *(v36 + 376) = v56;
      *(v36 + 384) = sub_1C4F01138();
      *(v36 + 392) = v57;
      *(v36 + 400) = sub_1C4F01138();
      *(v36 + 408) = v58;
      *(v36 + 416) = sub_1C4F01138();
      *(v36 + 424) = v59;
      *(v36 + 432) = sub_1C4F01138();
      *(v36 + 440) = v60;
      *(v36 + 448) = sub_1C4F01138();
      *(v36 + 456) = v61;
      *(v36 + 464) = sub_1C4F01138();
      *(v36 + 472) = v62;
      *(v36 + 480) = sub_1C4F01138();
      *(v36 + 488) = v63;
      sub_1C441E344();
      MEMORY[0x1EEE9AC00](v64);
      sub_1C4403084();
      v7 = v106;
      v65 = sub_1C44CE068();

      if (v65)
      {
        objc_opt_self();
        v66 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v67 = sub_1C444B0E8(v66, sel_featureValueWithInt64_);
        v69 = *(v9 + 16);
        v68 = *(v9 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_1C43FCFE8(v68);
          sub_1C458B504();
          v9 = v99;
        }

        *(v9 + 16) = v69 + 1;
        v70 = (v9 + 40 * v69);
        v70[4] = 0x646C6968437369;
        v5 = v105;
        v70[5] = 0xE700000000000000;
        v70[6] = v104;
        v70[7] = v105;
        v70[8] = v67;
      }

      else
      {
        v5 = v105;
      }

      sub_1C441E344();
      MEMORY[0x1EEE9AC00](v71);
      sub_1C4403084();
      v72 = sub_1C44CE068();

      if (v72)
      {
        objc_opt_self();
        v73 = sub_1C44305F8();
        v74 = sub_1C444B0E8(v73, sel_featureValueWithInt64_);
        v76 = *(v9 + 16);
        v75 = *(v9 + 24);
        if (v76 >= v75 >> 1)
        {
          sub_1C4405AF4(v75);
          sub_1C458B504();
          v9 = v100;
        }

        *(v9 + 16) = v76 + 1;
        v77 = (v9 + 40 * v76);
        v77[4] = 0x656E747261507369;
        v77[5] = 0xE900000000000072;
        v6 = v104;
        v77[6] = v104;
        v77[7] = v5;
        v77[8] = v74;
      }

      else
      {
        v6 = v104;
      }

      sub_1C441E344();
      MEMORY[0x1EEE9AC00](v78);
      sub_1C4403084();
      v79 = sub_1C44CE068();

      if (v79)
      {
        objc_opt_self();
        v80 = sub_1C44305F8();
        v81 = sub_1C444B0E8(v80, sel_featureValueWithInt64_);
        sub_1C4425098();
        if (v14)
        {
          sub_1C4405AF4(v82);
          sub_1C458B504();
          v9 = v101;
        }

        sub_1C441B8A0();
        v83[4] = 0x6E696C6269537369;
        v83[5] = 0xE900000000000067;
        v83[6] = v6;
        v83[7] = v5;
        v83[8] = v81;
      }

      sub_1C441E344();
      MEMORY[0x1EEE9AC00](v84);
      sub_1C4403084();
      v85 = sub_1C44CE068();

      if (v85)
      {
        objc_opt_self();
        v87 = sub_1C44305F8();
        v88 = sub_1C444B0E8(v87, sel_featureValueWithInt64_);
        sub_1C4425098();
        if (v14)
        {
          sub_1C4405AF4(v89);
          sub_1C458B504();
          v9 = v102;
        }

        sub_1C441B8A0();
        v90[4] = 0x6B726F776F437369;
        v90[5] = 0xEA00000000007265;
        v90[6] = v6;
        v90[7] = v5;
        v90[8] = v88;
      }

      MEMORY[0x1EEE9AC00](v86);
      sub_1C4403084();
      v91 = sub_1C44CE068();
      swift_setDeallocating();
      sub_1C44DEE40();

      if (v91)
      {
        objc_opt_self();
        v92 = sub_1C44305F8();
        v93 = sub_1C444B0E8(v92, sel_featureValueWithInt64_);
        sub_1C4425098();
        if (v14)
        {
          sub_1C4405AF4(v94);
          sub_1C458B504();
          v9 = v103;
        }

        sub_1C441B8A0();
        v96[4] = 0x796C696D61467369;
        v96[5] = 0xE800000000000000;
        v96[6] = v6;
        v96[7] = v5;
        v96[8] = v93;
      }

      else
      {
        v95 = v107;
      }

      v8 = v95 + 2;
      v3 = v108 - 1;
    }

    while (v108 != 1);
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C47208E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 96);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = 1 << *(*(a3 + 96) + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = 0;
LABEL_5:
  while (v11)
  {
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v14 << 6);
    v18 = *(*(result + 56) + 8 * v17);
    if (*(v18 + 16))
    {
      v26 = result;
      v25 = *(*(result + 48) + 16 * v17);
      sub_1C4F02AF8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();
      v19 = sub_1C4F02B68();
      v20 = ~(-1 << *(v18 + 32));
      do
      {
        v21 = v19 & v20;
        if (((*(v18 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {

          result = v26;
          goto LABEL_5;
        }

        v22 = (*(v18 + 48) + 16 * v21);
        if (*v22 == a1 && v22[1] == a2)
        {
          break;
        }

        v24 = sub_1C4F02938();
        v19 = v21 + 1;
      }

      while ((v24 & 1) == 0);

      return v25;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return 0;
    }

    v11 = *(v7 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4720AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 96) + 64;
  sub_1C43FD030();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v25 = v9;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = 0;
  if (v6)
  {
    while (1)
    {
      v12 = v11;
LABEL_6:
      v22 = *(*(v25 + 48) + 16 * (__clz(__rbit64(v6)) | (v12 << 6)));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v13 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v14 = sub_1C47231FC(v13, a1, a2);
      v15 = sub_1C486C288();
      v17 = v16;
      v19 = v18;
      result = sub_1C486C29C(v14);
      if (v19 & 1) != 0 || (v21)
      {
        break;
      }

      if (v17 != v20)
      {
        goto LABEL_15;
      }

      if (v15 != result)
      {
        sub_1C486BC78(v15);

        return v22;
      }

      v6 &= v6 - 1;

      v11 = v12;
      if (!v6)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {

        return 0;
      }

      v6 = *(v3 + 8 * v12);
      ++v11;
      if (v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4720C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v13 = a8;
  v15 = a11;
  if (a8)
  {
    v12 = a7;
    if (a10)
    {
      v17 = a10;
      v149 = a11;
      v15 = a1;
      goto LABEL_4;
    }

LABEL_20:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v41 = sub_1C4F01108();
    v42 = CEMStringContainsEmoji();

    if (v42)
    {
      objc_opt_self();
      v43 = sub_1C4423B24();
      v44 = sub_1C445BF60(v43, sel_featureValueWithInt64_);
      sub_1C4414A14(v44, v45, v46, MEMORY[0x1E69E7CC0]);
      sub_1C442F654();
      v28 = a4;
      if (v25)
      {
        sub_1C43FCFE8(v47);
        sub_1C442FCEC();
        sub_1C458B504();
        v13 = v138;
      }

      sub_1C43FBDF0();
      *(v13 + 16) = v42;
      v48 = (v13 + 40 * v11);
      v48[4] = 0xD000000000000011;
      v48[5] = v49;
      v48[6] = a1;
      v48[7] = a2;
      v48[8] = v44;
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
      v28 = a4;
    }

    sub_1C4F00FF8();
    v65 = v64;

    v66 = sub_1C440A6C4();
    v27 = a11;
    sub_1C47208E0(v66, v67, a11);
    if (v68)
    {

      sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
      sub_1C4423B24();
      v69 = sub_1C43FC1C0();
      v70 = v65;
      sub_1C4594E18(v69, v71);
      sub_1C43FEF2C();
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4435888();
      v15 = a1;
      if ((v72 & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C458B504();
        v13 = v139;
      }

      sub_1C43FEF1C();
      if (v25)
      {
        sub_1C440F564();
        v13 = v140;
      }

      sub_1C44170C8();
      v74[4] = v12;
    }

    else
    {
      v75 = sub_1C440A6C4();
      sub_1C4720AA0(v75, v76, a11);
      v78 = v77;

      sub_1C4435888();
      v15 = a1;
      if (!v78)
      {
        goto LABEL_72;
      }

      sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
      sub_1C4423B24();
      v79 = sub_1C43FC1C0();
      v70 = v65;
      sub_1C4594E18(v79, v80);
      sub_1C43FEF2C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C458B504();
        v13 = v145;
      }

      sub_1C43FEF1C();
      if (v25)
      {
        sub_1C440F564();
        v13 = v146;
      }

      sub_1C44170C8();
      v74[4] = v12 + 7;
    }

    v74[5] = v73;
    v74[6] = v15;
    v74[7] = a2;
    v74[8] = v70;
    goto LABEL_72;
  }

  if (a10)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v32 = sub_1C4F01108();
    v33 = CEMStringContainsEmoji();

    sub_1C4435888();
    v27 = a11;
    if (v33)
    {
      objc_opt_self();
      v34 = sub_1C4423B24();
      v35 = sub_1C445BF60(v34, sel_featureValueWithInt64_);
      sub_1C4414A14(v35, v36, v37, MEMORY[0x1E69E7CC0]);
      sub_1C442F654();
      v15 = a1;
      if (v25)
      {
        sub_1C43FCFE8(v38);
        sub_1C442FCEC();
        sub_1C458B504();
        v13 = v141;
      }

      sub_1C43FBDF0();
      *(v13 + 16) = v33;
      v39 = (v13 + 40 * v11);
      v39[4] = v12;
      v39[5] = v40;
      v39[6] = a1;
      v39[7] = a2;
      v39[8] = v35;
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
      v15 = a1;
    }

    v81 = sub_1C4F00FF8();
    v83 = v82;
    v84 = sub_1C47208E0(v81, v82, a11);
    if (v85)
    {
      v86 = v84;
      v87 = v85;

      v88 = sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v89 = v86;
      v90 = v88;
      sub_1C4594E18(v89, v87);
      sub_1C43FEF2C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C458B504();
        v13 = v142;
      }

      sub_1C43FEF1C();
      if (v25)
      {
        sub_1C440F564();
        v13 = v143;
      }

      sub_1C44170C8();
      v92[4] = v12;
    }

    else
    {
      v93 = sub_1C4720AA0(v81, v83, a11);
      v95 = v94;

      if (!v95)
      {
LABEL_71:
        v28 = a4;
        goto LABEL_72;
      }

      v96 = sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v97 = v93;
      v90 = v96;
      sub_1C4594E18(v97, v95);
      sub_1C43FEF2C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C458B504();
        v13 = v147;
      }

      sub_1C43FEF1C();
      if (v25)
      {
        sub_1C440F564();
        v13 = v148;
      }

      sub_1C44170C8();
      v92[4] = v12 + 7;
    }

    v92[5] = v91;
    v92[6] = v15;
    v92[7] = a2;
    v92[8] = v90;
    goto LABEL_71;
  }

  sub_1C4435888();
  v27 = a11;
  if (!v56)
  {
    v13 = MEMORY[0x1E69E7CC0];
    v15 = a1;
    goto LABEL_71;
  }

  sub_1C4415EA8();
  v57 = sub_1C4F01FC8();
  v58 = v57[2];
  if (v58 == 1)
  {
    v27 = 0xD000000000000011;

    if (v57[2])
    {
      v12 = v57[4];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      goto LABEL_20;
    }

    goto LABEL_103;
  }

  if (v58 != 2)
  {
    v15 = a1;
    if (qword_1EDDFECB0 == -1)
    {
LABEL_98:
      v127 = sub_1C4F00978();
      sub_1C442B738(v127, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v128 = sub_1C4F00968();
      v129 = sub_1C4F01CF8();
      v28 = a4;
      if (os_log_type_enabled(v128, v129))
      {
        sub_1C43FECF0();
        v130 = swift_slowAlloc();
        *v130 = 134217984;
        v131 = v57[2];

        *(v130 + 4) = v131;

        _os_log_impl(&dword_1C43F8000, v128, v129, "EntityTaggingFactsFeaturizer: nameComponents.count is not 1 or 2: %ld", v130, 0xCu);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v13 = MEMORY[0x1E69E7CC0];
      goto LABEL_72;
    }

LABEL_104:
    sub_1C44064A8();
    swift_once();
    goto LABEL_98;
  }

  v149 = a11;

  v60 = v57[2];
  v15 = a1;
  if (!v60)
  {
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if (v60 != 1)
  {
    v12 = v57[4];
    a9 = v57[6];
    v17 = v57[7];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_bridgeObjectRetain_n();

LABEL_4:
    swift_bridgeObjectRetain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v18 = sub_1C4F01108();

    v19 = CEMStringContainsEmoji();

    if (v19)
    {
      objc_opt_self();
      v20 = sub_1C4423B24();
      v21 = sub_1C445BF60(v20, sel_featureValueWithInt64_);
      sub_1C4414A14(v21, v22, v23, MEMORY[0x1E69E7CC0]);
      sub_1C4401D7C();
      v12 = 0xD000000000000011;
      if (!v25)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_1C4414A08();
      v19 = sub_1C4F01108();
      v21 = CEMStringContainsEmoji();

      sub_1C4435888();
      if (!v21)
      {
        v13 = MEMORY[0x1E69E7CC0];
        goto LABEL_7;
      }

      objc_opt_self();
      v52 = sub_1C4423B24();
      v21 = sub_1C445BF60(v52, sel_featureValueWithInt64_);
      sub_1C4414A14(v21, v53, v54, MEMORY[0x1E69E7CC0]);
      sub_1C4401D7C();
      if (!v25)
      {
LABEL_6:
        *(v13 + 16) = a10;
        v26 = (v13 + 40 * v19);
        v26[4] = v12;
        v26[5] = 0x80000001C4F88290;
        v26[6] = v15;
        v26[7] = a2;
        v26[8] = v21;
LABEL_7:
        v27 = v149;
        v28 = a4;
        if (*v149 && (v29 = v149[4]) != 0)
        {
          if (a9 == v149[3] && v29 == v17)
          {

LABEL_37:
            v50 = objc_opt_self();
            v61 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v51 = sub_1C444B0E8(v61, sel_featureValueWithInt64_);
            goto LABEL_38;
          }

          sub_1C4414A08();
          v31 = sub_1C4F02938();

          if (v31)
          {
            goto LABEL_37;
          }
        }

        else
        {
        }

        v50 = objc_opt_self();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v51 = [v50 featureValueWithInt64_];
LABEL_38:
        v62 = v51;
        sub_1C43FEF2C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C458B504();
          v13 = v134;
        }

        sub_1C43FEF1C();
        if (v25)
        {
          sub_1C440F564();
          v13 = v135;
        }

        *(v13 + 16) = v19;
        v63 = v13 + 40 * v21;
        strcpy((v63 + 32), "sameLastName");
        *(v63 + 45) = 0;
        *(v63 + 46) = -5120;
        *(v63 + 48) = v15;
        *(v63 + 56) = a2;
        *(v63 + 64) = v50;
LABEL_72:
        if (v28)
        {
          objc_opt_self();
          v98 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v99 = sub_1C444B0E8(v98, sel_featureValueWithInt64_);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C43FCEC0();
            sub_1C458B504();
            v13 = v132;
          }

          v100 = *(v13 + 16);
          if (v100 >= *(v13 + 24) >> 1)
          {
            sub_1C440F564();
            v13 = v133;
          }

          *(v13 + 16) = v100 + 1;
          v101 = (v13 + 40 * v100);
          v101[4] = 0x6E6B63694E736168;
          v101[5] = 0xEB00000000656D61;
          v101[6] = v15;
          v101[7] = a2;
          v101[8] = v99;
          v102 = sub_1C4F01108();
          v103 = CEMStringContainsEmoji();

          if (v103)
          {
            v104 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v105 = sub_1C444B0E8(v104, sel_featureValueWithInt64_);
            sub_1C43FEF1C();
            if (v25)
            {
              sub_1C440F564();
              v13 = v136;
            }

            sub_1C44170C8();
            v107[4] = v12 + 4;
            v107[5] = v106;
            v107[6] = v15;
            v107[7] = a2;
            v107[8] = v105;
          }

          v108 = sub_1C4F00FF8();
          v110 = v109;
          sub_1C47208E0(v108, v109, v27);
          if (v111)
          {

            v112 = sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v113 = sub_1C43FC1C0();
            v114 = v112;
            sub_1C4594E18(v113, v115);
            sub_1C4426AEC();
            if (v25)
            {
              sub_1C4405AF4(v116);
              sub_1C458B504();
              v13 = v137;
            }

            sub_1C43FBDF0();
            sub_1C4441008();
            v119 = v12 + 4;
LABEL_89:
            v118[4] = v119;
            v118[5] = v117;
            v118[6] = a1;
            v118[7] = a2;
            v118[8] = v114;
            return v13;
          }

          v120 = sub_1C440CAF0();
          v122 = sub_1C4720AA0(v120, v121, v27);
          v124 = v123;

          if (v124)
          {

            sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
            sub_1C4423B24();
            v125 = v122;
            v114 = v110;
            sub_1C4594E18(v125, v124);
            sub_1C4426AEC();
            if (v25)
            {
              sub_1C4405AF4(v126);
              sub_1C458B504();
              v13 = v144;
            }

            sub_1C43FBDF0();
            sub_1C4441008();
            v119 = v12 + 11;
            goto LABEL_89;
          }
        }

        return v13;
      }
    }

    sub_1C43FCFE8(v24);
    sub_1C442FCEC();
    sub_1C458B504();
    v13 = v55;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_1C47217E4()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  type metadata accessor for GraphTriple(0);
  v60 = v5;
  if (sub_1C44CE068())
  {
    objc_opt_self();
    v6 = v3;
    v7 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v8 = sub_1C444B0E8(v7, sel_featureValueWithInt64_);
    sub_1C4414A14(v8, v9, v10, MEMORY[0x1E69E7CC0]);
    v12 = v11;
    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1C43FCFE8(v13);
      sub_1C458B504();
      v12 = v54;
    }

    *(v12 + 16) = v14 + 1;
    v15 = (v12 + 40 * v14);
    v15[4] = 0x5049567369;
    v15[5] = 0xE500000000000000;
    v15[6] = v5;
    v15[7] = v6;
    v15[8] = v8;
  }

  else
  {
    v6 = v3;
    v12 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4415EA8();
  sub_1C44222DC();
  v16 = sub_1C4F01FC8();
  v17 = sub_1C4A3E184(v16);
  v19 = v18;

  if (v19)
  {
    v21 = v17;
  }

  else
  {
    v21 = 0;
  }

  if (v19)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  if (!*v1)
  {
    goto LABEL_31;
  }

  MEMORY[0x1EEE9AC00](v20);
  v23 = sub_1C44CE068();
  if (!v23)
  {
    MEMORY[0x1EEE9AC00](v23);
    if (sub_1C44CE068())
    {
      objc_opt_self();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v24 = sub_1C447F964();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C458B504();
        v12 = v58;
      }

      v39 = *(v12 + 16);
      if (v39 >= *(v12 + 24) >> 1)
      {
        sub_1C458B504();
        v12 = v59;
      }

      sub_1C442A900();
      *(v12 + 16) = v40;
      v41 = (v12 + 40 * v39);
      v41[4] = v42;
      v41[5] = 0x80000001C4F881D0;
      v41[6] = v60;
      v41[7] = v6;
      v41[8] = v24;
      sub_1C44222DC();
      if (sub_1C4F02048())
      {

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v43 = sub_1C447F964();
        sub_1C442A3D8();
        if (v35)
        {
          sub_1C4413090(v44);
          sub_1C458B504();
        }

        sub_1C4433310();
        sub_1C442A900();
        v37[4] = v45 + 2;
        v37[5] = v46;
        v37[6] = v60;
        v37[7] = v6;
      }

      else
      {
        v47 = sub_1C4499AD0(v21, v22, v1[13]);

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v24 = sub_1C447F964();
        v49 = *(v12 + 16);
        v48 = *(v12 + 24);
        if (v47)
        {
          if (v48 >> 1 <= v49)
          {
            sub_1C4413090(v48);
            sub_1C458B504();
          }

          sub_1C4433310();
          sub_1C442A900();
          v52 = v51 + 5;
        }

        else
        {
          if (v48 >> 1 <= v49)
          {
            sub_1C4413090(v48);
            sub_1C458B504();
          }

          sub_1C4433310();
          sub_1C442A900();
          v52 = v53 + 6;
        }

        v37[4] = v52;
        v37[5] = v50;
        v37[6] = v60;
        v37[7] = v6;
      }

      goto LABEL_21;
    }

LABEL_31:

    goto LABEL_32;
  }

  v24 = objc_opt_self();
  v25 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v26 = sub_1C444B0E8(v25, sel_featureValueWithInt64_);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C43FCEC0();
    sub_1C458B504();
    v12 = v55;
  }

  v28 = *(v12 + 16);
  v27 = *(v12 + 24);
  v29 = v28 + 1;
  if (v28 >= v27 >> 1)
  {
    sub_1C43FCFE8(v27);
    sub_1C458B504();
    v12 = v56;
  }

  sub_1C43FBDF0();
  *(v12 + 16) = v29;
  v30 = (v12 + 40 * v28);
  v30[4] = 0xD000000000000013;
  v30[5] = v31;
  v30[6] = v60;
  v30[7] = v6;
  v30[8] = v26;
  v32 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v33 = sub_1C444B0E8(v32, sel_featureValueWithInt64_);
  sub_1C442A3D8();
  if (v35)
  {
    sub_1C4413090(v34);
    sub_1C458B504();
    v12 = v57;
  }

  sub_1C4433310();
  v37 = (v12 + v29 * v36);
  v37[4] = 0xD000000000000016;
  v37[5] = v38;
  v37[6] = v60;
  v37[7] = v6;
LABEL_21:
  v37[8] = v24;
LABEL_32:
  sub_1C43FE9F0();
}

uint64_t sub_1C4721D3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x444C494843 && a2 == 0xE500000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {
    return 7;
  }

  if (a1 == 1313162580 && a2 == 0xE400000000000000)
  {
    return 15;
  }

  if (sub_1C4F02938())
  {
    return 15;
  }

  return 0;
}

void sub_1C4721DF8()
{
  sub_1C43FBD3C();
  v2 = v1;
  v62 = v3;
  v63 = v4;
  v6 = v5;
  v8 = v7;
  v64 = v9;
  v10 = sub_1C4EFF578();
  sub_1C43FCDF8();
  v61 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD2D8();
  v60 = v13;
  v14 = sub_1C456902C(&unk_1EC0BC900, byte_1C4F142D0);
  sub_1C43FBD18(v14);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1C43FFCB0();
  v17 = type metadata accessor for GraphTriple(v16);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  if (sub_1C44157D4(v6, 1, v17) == 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v59 = v2;
    v23 = v10;
    v24 = objc_opt_self();
    v25 = v8;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v26 = [v24 featureValueWithInt64_];
    sub_1C4414A14(v26, v27, v28, MEMORY[0x1E69E7CC0]);
    v22 = v29;
    v31 = *(v29 + 16);
    v30 = *(v29 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_1C43FCFE8(v30);
      sub_1C458B504();
      v22 = v54;
    }

    *(v22 + 16) = v31 + 1;
    v32 = (v22 + 40 * v31);
    v32[4] = 0x6874726942736168;
    v32[5] = 0xEB00000000796164;
    v32[6] = v64;
    v32[7] = v25;
    v8 = v25;
    v32[8] = v26;
    v10 = v23;
    v2 = v59;
  }

  sub_1C445FFF0(v6, v0, &unk_1EC0BC900, byte_1C4F142D0);
  if (sub_1C44157D4(v0, 1, v17) == 1)
  {
    sub_1C4420C3C(v0, &unk_1EC0BC900, byte_1C4F142D0);
LABEL_9:
    v39 = 0;
    goto LABEL_15;
  }

  v33 = sub_1C4414550();
  sub_1C45B1EE4(v33, v34);
  sub_1C47224CC();
  v36 = v35;
  v38 = v37;
  sub_1C4709ED8(v21);
  if (v38)
  {
    goto LABEL_9;
  }

  v40 = objc_opt_self();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v41 = [v40 featureValueWithInt64_];
  v42 = v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C43FCEC0();
    sub_1C458B504();
    v22 = v55;
  }

  v44 = *(v22 + 16);
  v43 = *(v22 + 24);
  if (v44 >= v43 >> 1)
  {
    sub_1C43FCFE8(v43);
    sub_1C458B504();
    v22 = v56;
  }

  *(v22 + 16) = v44 + 1;
  v45 = (v22 + 40 * v44);
  v45[4] = 0x67416E6F73726570;
  v45[5] = 0xE900000000000065;
  v45[6] = v64;
  v45[7] = v8;
  v45[8] = v41;
  v39 = 1;
  v2 = v42;
LABEL_15:
  if (*v2 && (*(v2 + 64) & 1) == 0)
  {
    if (v63)
    {
      sub_1C4721D3C(v62, v63);
      v47 = v46 ^ 1;
    }

    else
    {
      v47 = 0;
    }

    if ((v39 | v47))
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4402B58();
      sub_1C4EFF558();
      v48 = sub_1C4EFF568();
      (*(v61 + 8))(v60, v10);
      v49 = [objc_opt_self() featureValueWithInt64_];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C458B504();
        v22 = v57;
      }

      v51 = *(v22 + 16);
      v50 = *(v22 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1C4413090(v50);
        sub_1C458B504();
        v22 = v58;
      }

      sub_1C43FBDF0();
      *(v22 + 16) = v51 + 1;
      v52 = (v22 + 40 * v51);
      v52[4] = 0xD000000000000015;
      v52[5] = v53;
      v52[6] = v64;
      v52[7] = v8;
      v52[8] = v49;
    }
  }

  sub_1C43FE9F0();
}

void sub_1C4722278()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C4EFF578();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  sub_1C4EFF048();
  v11 = sub_1C4F01438();
  v13 = v12;
  v14 = sub_1C465C70C(v3, *(v1 + 112));
  if (v15)
  {
    goto LABEL_2;
  }

  v16 = v14;
  v34 = v6;
  v33 = objc_opt_self();
  v17 = [v33 featureValueWithInt64_];
  v18 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4414A14(v18, v19, v20, MEMORY[0x1E69E7CC0]);
  v22 = v21;
  v24 = *(v21 + 16);
  v23 = *(v21 + 24);
  if (v24 >= v23 >> 1)
  {
    sub_1C43FCFE8(v23);
    sub_1C442FCEC();
    sub_1C458B504();
    v22 = v32;
  }

  *(v22 + 16) = v24 + 1;
  v25 = (v22 + 40 * v24);
  v25[4] = 0x6550736F746F6870;
  v25[5] = 0xEF6567416E6F7372;
  v25[6] = v11;
  v25[7] = v13;
  v25[8] = v17;
  if (!*v1 || (*(v1 + 64) & 1) != 0)
  {
LABEL_2:
  }

  else
  {
    sub_1C4EFF558();
    v26 = sub_1C4EFF568();
    (*(v34 + 8))(v10, v4);
    v27 = [v33 featureValueWithInt64_];
    sub_1C4426AEC();
    if (v29)
    {
      sub_1C4405AF4(v28);
      sub_1C458B504();
    }

    sub_1C43FBDF0();
    sub_1C4441008();
    v31[4] = 0xD00000000000001BLL;
    v31[5] = v30;
    v31[6] = v11;
    v31[7] = v13;
    v31[8] = v26;
  }

  sub_1C43FE9F0();
}

void sub_1C47224CC()
{
  sub_1C43FBD3C();
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v35 = v2;
  v36 = v1;
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  sub_1C44109B4();
  v3 = sub_1C4EF9F68();
  sub_1C43FCDF8();
  v34 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4EF9F88();
  sub_1C43FCDF8();
  v32 = v10;
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = sub_1C4404BCC();
  v16 = sub_1C456902C(v14, v15);
  v17 = sub_1C43FBD18(v16);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBD08();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v31 - v22;
  sub_1C4722828();
  sub_1C445FFF0(v23, v20, &unk_1EC0BAD50, &unk_1C4F168E0);
  v24 = sub_1C4EF9648();
  if (sub_1C44157D4(v20, 1, v24) == 1)
  {
    sub_1C4420C3C(v23, &unk_1EC0BAD50, &unk_1C4F168E0);
    v23 = v20;
LABEL_6:
    sub_1C4420C3C(v23, &unk_1EC0BAD50, &unk_1C4F168E0);
    sub_1C43FE9F0();
    return;
  }

  v25 = sub_1C4EF95D8();
  v27 = v26;
  (*(*(v24 - 8) + 8))(v20, v24);
  if (v27)
  {
    goto LABEL_6;
  }

  v28 = objc_autoreleasePoolPush();
  sub_1C4EF9F58();
  v29 = v34;
  (*(v34 + 104))(v8, *MEMORY[0x1E6969A68], v3);
  sub_1C4EF9CC8();
  v30 = sub_1C4EF9F78();
  (*(v35 + 8))(v0, v36);
  (*(v29 + 8))(v8, v3);
  (*(v32 + 8))(v13, v33);
  if (!__OFSUB__(v30, v25))
  {
    objc_autoreleasePoolPop(v28);
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C4722828()
{
  sub_1C43FBD3C();
  v2 = v1;
  v3 = sub_1C456902C(&unk_1EC0BAD50, &unk_1C4F168E0);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C44109B4();
  v5 = sub_1C4F01188();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  sub_1C4F01178();
  v12 = sub_1C4F01148();
  v14 = v13;
  (*(v7 + 8))(v11, v5);
  if (v14 >> 60 == 15)
  {
    sub_1C4EF9648();
    sub_1C43FCF64();
  }

  else
  {
    sub_1C4EF9348();
    swift_allocObject();
    sub_1C4EF9338();
    v15 = sub_1C4EF9648();
    sub_1C450229C(&qword_1EC0BAA18, MEMORY[0x1E6968278], MEMORY[0x1E6968298]);
    sub_1C4EF9328();
    sub_1C441DFEC(v12, v14);

    sub_1C442FCEC();
    sub_1C440BAA8(v16, v17, v18, v19);
    (*(*(v15 - 8) + 32))(v2, v0, v15);
    sub_1C442FCEC();
  }

  sub_1C440BAA8(v20, v21, v22, v23);
  sub_1C43FE9F0();
}

void sub_1C4722A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v24 = v21;
  v25 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v25);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v90 - v27;
  v29 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBCC4();
  v35 = v34 - v33;
  sub_1C440E194();
  sub_1C450229C(v36, v37, MEMORY[0x1E69A9820]);
  v38 = sub_1C4F00F28();
  sub_1C4409678((v20 + OBJC_IVAR____TtC24IntelligencePlatformCore28EntityTaggingFactsFeaturizer_eventTracker), *(v20 + OBJC_IVAR____TtC24IntelligencePlatformCore28EntityTaggingFactsFeaturizer_eventTracker + 24));
  v39 = sub_1C45E1240();
  if (v21)
  {

LABEL_45:
    sub_1C43FBC80();
  }

  else
  {
    v41 = v39;
    v97 = v38;
    v93 = v35;
    v99 = v29;
    v42 = 0;
    v43 = v39 + 64;
    v44 = 1 << *(v39 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & *(v39 + 64);
    v47 = (v44 + 63) >> 6;
    v91 = (v31 + 8);
    v92 = (v31 + 32);
    *&v40 = 136315138;
    v96 = v40;
    v98 = v39;
    while (v46)
    {
      v48 = v42;
LABEL_12:
      v49 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      v50 = v49 | (v48 << 6);
      v51 = *(v41 + 56);
      v52 = (*(v41 + 48) + 16 * v50);
      v53 = v52[1];
      v100 = *v52;
      v54 = *(v51 + 8 * v50);
      v55 = v54 + 64;
      v56 = 1 << *(v54 + 32);
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      else
      {
        v57 = -1;
      }

      v58 = v57 & *(v54 + 64);
      if (v58)
      {
        v59 = 0;
        v60 = __clz(__rbit64(v58));
        v61 = (v58 - 1) & v58;
        v62 = (v56 + 63) >> 6;
LABEL_21:
        v67 = *(v54 + 48);
        v66 = *(v54 + 56);
        v68 = *(v67 + 2 * v60);
        v69 = *(v66 + 8 * v60);
        if (!v61)
        {
          goto LABEL_23;
        }

        do
        {
          v70 = v59;
LABEL_27:
          v71 = __clz(__rbit64(v61)) | (v70 << 6);
          v72 = *(v67 + 2 * v71);
          v61 &= v61 - 1;
          v73 = *(v66 + 8 * v71);
          if (v69 < v73)
          {
            v68 = v72;
          }

          if (v69 <= v73)
          {
            v69 = v73;
          }
        }

        while (v61);
        while (1)
        {
LABEL_23:
          v70 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            __break(1u);
            goto LABEL_47;
          }

          if (v70 >= v62)
          {
            break;
          }

          v61 = *(v55 + 8 * v70);
          ++v59;
          if (v61)
          {
            v59 = v70;
            goto LABEL_27;
          }
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v74 = sub_1C4722FC0(v68);
        if (v75)
        {

          goto LABEL_35;
        }

        v76 = v74;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFF0D8();
        if (sub_1C44157D4(v28, 1, v99) != 1)
        {

          v84 = v93;
          v85 = *v92;
          v95 = v24;
          v86 = v99;
          v85(v93, v28, v99);
          v87 = v97;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a10 = v87;
          sub_1C4660FD4(v76, v84, isUniquelyReferenced_nonNull_native);
          v41 = v98;
          v89 = v86;
          v24 = v95;
          (*v91)(v84, v89);
          v97 = a10;
          goto LABEL_35;
        }

        sub_1C4420C3C(v28, &unk_1EC0BA0E0, &qword_1C4F105A0);
        if (qword_1EDDFECB0 != -1)
        {
          sub_1C44064A8();
          swift_once();
        }

        v77 = sub_1C4F00978();
        sub_1C442B738(v77, qword_1EDDFECB8);
        sub_1C44305F8();
        v78 = sub_1C4F00968();
        v79 = sub_1C4F01CF8();

        if (os_log_type_enabled(v78, v79))
        {
          sub_1C43FECF0();
          v80 = swift_slowAlloc();
          v94 = v28;
          v81 = v80;
          sub_1C43FEC60();
          v82 = swift_slowAlloc();
          v95 = v24;
          v83 = v82;
          a10 = v82;
          *v81 = v96;
          v100 = sub_1C441D828(v100, v53, &a10);

          *(v81 + 4) = v100;
          _os_log_impl(&dword_1C43F8000, v78, v79, "EntityTaggingFactsFeaturizer: Cannot find entity with %s", v81, 0xCu);
          sub_1C440962C(v83);
          v24 = v95;
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          v28 = v94;
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
        }

        v42 = v48;
        v41 = v98;
      }

      else
      {
        v63 = 0;
        v64 = 0;
        v62 = (v56 + 63) >> 6;
        while (1)
        {
          v59 = v64 + 1;
          if (v64 + 1 >= v62)
          {
            break;
          }

          v65 = *(v54 + 72 + 8 * v64);
          v63 += 64;
          ++v64;
          if (v65)
          {
            v61 = (v65 - 1) & v65;
            v60 = __clz(__rbit64(v65)) + v63;
            goto LABEL_21;
          }
        }

LABEL_35:
        v42 = v48;
      }
    }

    while (1)
    {
      v48 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v48 >= v47)
      {

        goto LABEL_45;
      }

      v46 = *(v43 + 8 * v48);
      ++v42;
      if (v46)
      {
        goto LABEL_12;
      }
    }

LABEL_47:
    __break(1u);
  }
}

uint64_t sub_1C4722FC0(__int16 a1)
{
  switch(a1)
  {
    case 1:
      result = 2;
      break;
    case 2:
      result = 10;
      break;
    case 3:
      result = 20;
      break;
    case 4:
      result = 70;
      break;
    case 5:
      result = 35;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}