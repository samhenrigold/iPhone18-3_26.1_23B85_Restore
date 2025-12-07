unint64_t sub_1921CFD74()
{
  result = qword_1EADF1C78;
  if (!qword_1EADF1C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1C78);
  }

  return result;
}

uint64_t sub_1921CFF30(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0CC0, &qword_1922374E0);
    sub_1921CFD74();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1921CFFE0(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1921D006C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1921D0248(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

double sub_1921D0514()
{
  result = 14.5;
  xmmword_1EADED0A0 = xmmword_192240C70;
  qword_1EADED0B0 = 0x402D000000000000;
  unk_1EADED0B8 = 0;
  byte_1EADED0C0 = 1;
  qword_1EADED0C8 = 0x402A000000000000;
  unk_1EADED0D0 = 0;
  byte_1EADED0D8 = 1;
  qword_1EADED0E0 = 0x402D000000000000;
  unk_1EADED0E8 = 0;
  byte_1EADED0F0 = 1;
  qword_1EADED0F8 = 0x402A000000000000;
  unk_1EADED100 = 0;
  byte_1EADED108 = 1;
  return result;
}

unint64_t sub_1921D0594()
{
  if (qword_1EADEDA40 != -1)
  {
    swift_once();
  }

  if (!dyld_program_sdk_at_least())
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
  inited = swift_initStackObject();
  v1 = *MEMORY[0x1E6965788];
  *(inited + 32) = *MEMORY[0x1E6965788];
  *(inited + 16) = xmmword_19222B480;
  *(inited + 64) = MEMORY[0x1E69E6810];
  *(inited + 40) = 7;
  v2 = v1;
  v3 = sub_19207614C(inited);
  swift_setDeallocating();
  sub_192076558(inited + 32);
  return v3;
}

uint64_t sub_1921D0688(unsigned __int8 a1)
{
  if (qword_1EADEDA40 != -1)
  {
    swift_once();
  }

  if (!dyld_program_sdk_at_least())
  {
    return 0;
  }

  if (qword_1EADED098 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1EADED0A0;
  v3 = qword_1EADED0B0;
  v4 = qword_1EADED0C8;
  v14 = qword_1EADED0E0;
  v15 = qword_1EADED0F8;
  if (qword_1ED74A010 != -1)
  {
    swift_once();
  }

  v16 = byte_1ED74C7A8;
  if (qword_1ED7499A8 != -1)
  {
    swift_once();
  }

  v5 = off_1ED7499B0;
  v6 = *(off_1ED7499B0 + 2);
  v7 = *(v6 + 16);

  os_unfair_lock_lock(v7);
  v8 = v5[24];
  if (v8 == 5)
  {
    v9 = sub_192225200();
    LOBYTE(v8) = sub_1921981B0(v9);

    v5[24] = v8;
  }

  os_unfair_lock_unlock(*(v6 + 16));

  if (v16 == 2)
  {
    if (v8 >= 3u)
    {
      v10 = a1;
      v12 = v14;
      if (a1 == 10)
      {
        v11 = v15;
      }

      else
      {
        v11 = v14;
      }

      if (a1 == 9)
      {
        v11 = v15;
      }

      if (a1 == 8)
      {
        v11 = v15;
      }

      if (a1 == 7)
      {
        v12 = v15;
      }

      if (a1 == 5)
      {
        v12 = v15;
      }
    }

    else
    {
      v10 = a1;
      if (a1 == 10)
      {
        v11 = v4;
      }

      else
      {
        v11 = v3;
      }

      if (a1 == 9)
      {
        v11 = v4;
      }

      if (a1 == 8)
      {
        v11 = v4;
      }

      if (a1 == 7)
      {
        v12 = v4;
      }

      else
      {
        v12 = v3;
      }

      if (a1 == 5)
      {
        v12 = v4;
      }
    }

    if (v10 <= 7)
    {
      return v12;
    }

    else
    {
      return v11;
    }
  }

  else if (a1 - 7 < 4 || a1 == 5)
  {
    return *(&v2 + 1);
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1921D09C4()
{
  if (qword_1EADEDA40 != -1)
  {
    swift_once();
  }

  if (!dyld_program_sdk_at_least())
  {
    return 0;
  }

  sub_192226E20();
  return v0;
}

uint64_t sub_1921D0A8C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1921D0B00(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v6 + v8 + ((v6 + v8 + ((v6 + v8) & ~v8)) & ~v8)) & ~v8) + v6;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

char *sub_1921D0C60(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = *(v5 + 80);
  v9 = ((*(v5 + 64) + v8 + ((*(v5 + 64) + v8 + ((*(v5 + 64) + v8) & ~v8)) & ~v8)) & ~v8) + *(v5 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v20 = *(v6 + 56);

  return v20();
}

uint64_t EnvironmentValues.showsWidgetLabel.getter()
{
  sub_192041180();
  sub_1922261E0();
  return v1;
}

uint64_t View.widgetLabel<A>(label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_192226CF0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  sub_192226CE0();
  MEMORY[0x193B0A190](v11, a3, v8, a5);
  return (*(v9 + 8))(v11, v8);
}

uint64_t View.widgetLabel(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a1;
  v7[3] = a2;
  v8 = a3;
  v9 = a4;
  return View.widgetLabel<A>(label:)(sub_1921D1100, v7, a5, MEMORY[0x1E6981148], a6, MEMORY[0x1E6981138]);
}

uint64_t sub_1921D1068@<X0>(uint64_t a5@<X8>)
{

  result = sub_192226FC0();
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8 & 1;
  *(a5 + 24) = v9;
  return result;
}

uint64_t View.widgetLabel<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  v6[5] = a5;
  v6[6] = a1;
  return View.widgetLabel<A>(label:)(sub_1921D124C, v6, a2, MEMORY[0x1E6981148], a4, MEMORY[0x1E6981138]);
}

uint64_t sub_1921D1174@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = sub_192226FD0();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t (*EnvironmentValues.showsWidgetLabel.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_192041180();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1921D12C4;
}

unint64_t sub_1921D12FC()
{
  result = qword_1EADECD00;
  if (!qword_1EADECD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EADF1C90, &unk_192240D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD00);
  }

  return result;
}

void _s9WidgetKit26StaticControlConfigurationV4bodyQrvg_0(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192081C60(v1, v5);
  swift_storeEnumTagMultiPayload();
  sub_19207ED1C(v5, a1);
  v6 = *(type metadata accessor for WidgetDescriptor(0) + 28);

  *(a1 + v6) = &unk_1F06A8598;
}

void *StaticControlConfiguration.init(kind:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_1920C8F78(a5, a6);
  v16 = v15;
  result = swift_allocObject();
  result[2] = a5;
  result[3] = a6;
  result[4] = a3;
  result[5] = a4;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = 0;
  *(a7 + 24) = 0;
  *(a7 + 32) = v14;
  *(a7 + 40) = v16;
  *(a7 + 48) = &unk_192240DB8;
  *(a7 + 56) = result;
  *(a7 + 88) = 1;
  return result;
}

uint64_t sub_1921D14E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v7[12] = a1;
  v7[17] = swift_task_alloc();
  sub_192227CC0();
  v7[18] = sub_192227CB0();
  v9 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_1921D15AC, v9, v8);
}

uint64_t sub_1921D15AC()
{
  v1 = *(v0 + 104);

  sub_1922269C0();
  v1();
  sub_1922269B0();
  sub_1920C92D8();
  sub_1922269A0();
  if (*(v0 + 80))
  {
    v2 = *(v0 + 96);

    v3 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v3;
    *(v0 + 48) = *(v0 + 88);
    sub_19209CBAC((v0 + 16), v2);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    sub_19210F5E0(v0 + 56);
    return sub_192228620();
  }
}

uint64_t sub_1921D1728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v11 = v3[4];
  v10 = v3[5];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_1920B3B44;

  return sub_1921D14E8(a1, a2, a3, v11, v10, v8, v9);
}

uint64_t StaticControlConfiguration.init<A>(kind:provider:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v15 = sub_1920C8F78(a6, a8);
  v23 = v16;
  v24 = v15;
  v17 = *(a7 - 8);
  v18 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v19 = (*(v17 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = a6;
  *(v20 + 3) = a7;
  *(v20 + 4) = a8;
  *(v20 + 5) = a10;
  result = (*(v17 + 32))(&v20[v18], a3, a7);
  v22 = &v20[v19];
  *v22 = a4;
  *(v22 + 1) = a5;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0;
  *(a9 + 32) = v24;
  *(a9 + 40) = v23;
  *(a9 + 48) = &unk_192240DC8;
  *(a9 + 56) = v20;
  *(a9 + 88) = 1;
  return result;
}

uint64_t sub_1921D1950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a8;
  v8[19] = v18;
  v8[16] = a6;
  v8[17] = a7;
  v8[14] = a4;
  v8[15] = a5;
  v8[12] = a1;
  v8[13] = a3;
  v8[20] = swift_task_alloc();
  v10 = *(a8 - 8);
  v8[21] = v10;
  v8[22] = v10;
  v8[23] = swift_task_alloc();
  v12 = _s9WidgetKit14ValueGeneratorVMa_0(0, a8, v19, v11);
  v8[24] = v12;
  v8[25] = *(v12 - 8);
  v8[26] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[27] = AssociatedTypeWitness;
  v8[28] = *(AssociatedTypeWitness - 8);
  v8[29] = swift_task_alloc();
  sub_192227CC0();
  v8[30] = sub_192227CB0();
  v15 = sub_192227C70();
  v8[31] = v15;
  v8[32] = v14;

  return MEMORY[0x1EEE6DFA0](sub_1921D1B50, v15, v14);
}

uint64_t sub_1921D1B50()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[18];
  (*(v0[22] + 16))(v2, v0[14], v4);
  (*(v3 + 32))(v1, v2, v4);
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_1921D1C60;
  v6 = v0[29];
  v7 = v0[24];
  v8 = v0[13];

  return sub_1921D23EC(v6, v8, v7);
}

uint64_t sub_1921D1C60()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  *(*v1 + 272) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 256);
  v7 = *(v2 + 248);
  if (v0)
  {
    v8 = sub_1921D1FC4;
  }

  else
  {
    v8 = sub_1921D1DF8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1921D1DF8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 120);

  sub_1922269C0();
  v2(v1);
  sub_1922269B0();
  sub_1920C92D8();
  sub_1922269A0();
  if (*(v0 + 80))
  {
    v4 = *(v0 + 224);
    v3 = *(v0 + 232);
    v5 = *(v0 + 216);
    v6 = *(v0 + 96);

    (*(v4 + 8))(v3, v5);
    v7 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v7;
    *(v0 + 48) = *(v0 + 88);
    sub_19209CBAC((v0 + 16), v6);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    sub_19210F5E0(v0 + 56);
    return sub_192228620();
  }
}

uint64_t sub_1921D1FC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1921D205C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 24);
  v14 = *(v3 + 16);
  v8 = (*(*(v7 - 8) + 80) + 48) & ~*(*(v7 - 8) + 80);
  v9 = (v3 + ((*(*(v7 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_1920B3B44;

  return sub_1921D1950(a1, a2, a3, v3 + v8, v10, v11, v14, v7);
}

uint64_t dispatch thunk of ControlValueProvider.currentValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920A59A8;

  return v9(a1, a2, a3);
}

uint64_t sub_1921D2328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1921D237C()
{
  result = qword_1ED748D10[0];
  if (!qword_1ED748D10[0])
  {
    type metadata accessor for ControlDescriptorConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED748D10);
  }

  return result;
}

uint64_t sub_1921D23EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = a2;
  v4[24] = v3;
  v4[22] = a1;
  v4[25] = *(a3 + 24);
  v4[26] = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[27] = AssociatedTypeWitness;
  v4[28] = *(AssociatedTypeWitness - 8);
  v4[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1921D24D0, 0, 0);
}

uint64_t sub_1921D24D0()
{
  v1 = v0[23];
  if (v1 == 1)
  {
    if (qword_1EADEE4E8 != -1)
    {
      swift_once();
    }

    v11 = sub_1922258B0();
    __swift_project_value_buffer(v11, qword_1EAE00810);
    v12 = sub_192225890();
    v13 = sub_192227FB0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_192028000, v12, v13, "Fetching preview value", v14, 2u);
      MEMORY[0x193B0C7F0](v14, -1, -1);
    }

    v16 = v0[25];
    v15 = v0[26];

    (*(v16 + 16))(v15, v16);

    v17 = v0[1];

    return v17();
  }

  else if (v1)
  {
    return sub_192228620();
  }

  else
  {
    if (qword_1EADEE4E8 != -1)
    {
      swift_once();
    }

    v2 = sub_1922258B0();
    __swift_project_value_buffer(v2, qword_1EAE00810);
    v3 = sub_192225890();
    v4 = sub_192227FB0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_192028000, v3, v4, "Fetching current value", v5, 2u);
      MEMORY[0x193B0C7F0](v5, -1, -1);
    }

    v19 = v0[25];

    v18 = (*(v19 + 24) + **(v19 + 24));
    v6 = swift_task_alloc();
    v0[30] = v6;
    *v6 = v0;
    v6[1] = sub_1921D2840;
    v7 = v0[29];
    v9 = v0[25];
    v8 = v0[26];

    return v18(v7, v8, v9);
  }
}

uint64_t sub_1921D2840()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1921D29D4;
  }

  else
  {
    v2 = sub_1921D2954;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1921D2954()
{
  (*(v0[28] + 32))(v0[22], v0[29], v0[27]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1921D29D4()
{
  v1 = *(v0 + 248);
  v2 = *MEMORY[0x1E69941E8];
  v3 = v1;
  v4 = v2;
  sub_19214036C(MEMORY[0x1E69E7CC0]);
  v5 = sub_192227960();
  v7 = v6;
  *(v0 + 40) = MEMORY[0x1E69E6158];
  *(v0 + 16) = 0xD00000000000002ALL;
  *(v0 + 24) = 0x800000019224A900;
  sub_19203BEDC((v0 + 16), (v0 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_19213DB28((v0 + 48), v5, v7, isUniquelyReferenced_nonNull_native);

  v9 = sub_192227960();
  v11 = v10;
  swift_getErrorValue();
  v12 = *(v0 + 144);
  v13 = *(v0 + 152);
  *(v0 + 104) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 80));
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v12, v13);
  sub_19203BEDC((v0 + 80), (v0 + 112));
  v15 = v1;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_19213DB28((v0 + 112), v9, v11, v16);

  v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v18 = sub_192227830();

  [v17 initWithDomain:v4 code:1106 userInfo:v18];

  swift_willThrow();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t AnimatingWaveformView.init(resolvedColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  return result;
}

double AnimatingWaveformView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1921D57AC(v8);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_192227310();
  }

  KeyPath = swift_getKeyPath();
  v6 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v6;
  result = *&v9;
  *(a1 + 32) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = v4;
  return result;
}

void sub_1921D2D04(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465766C6F736572 && a2 == 0xED0000726F6C6F43)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1922289A0();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1921D2D94(uint64_t a1)
{
  v2 = sub_1921D5870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921D2DD0(uint64_t a1)
{
  v2 = sub_1921D5870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnimatingWaveformView.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1D40, &qword_192240FB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v8 = *v1;
  v7 = v1[1];
  HIDWORD(v10) = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921D5870();
  sub_192228B90();
  v11 = v8;
  v12 = v7;
  v13 = BYTE4(v10);
  sub_1920CF350();
  sub_192228850();
  return (*(v4 + 8))(v6, v3);
}

uint64_t AnimatingWaveformView.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1D50, &qword_192240FB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921D5870();
  sub_192228B70();
  if (!v2)
  {
    sub_1920CF44C();
    sub_192228750();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1921D3114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1921D661C();

  return MEMORY[0x1EEDDA028](a1, a2, a3, v6);
}

uint64_t sub_1921D3178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1921D661C();

  return MEMORY[0x1EEDDA030](a1, a2, a3, v6);
}

double sub_1921D3220@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1921D57AC(v8);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_192227310();
  }

  KeyPath = swift_getKeyPath();
  v6 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v6;
  result = *&v9;
  *(a1 + 32) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = v4;
  return result;
}

uint64_t sub_1921D32B8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1D88, &qword_1922412E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1D90, &qword_1922412E8);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1D98, &qword_1922412F0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v28 - v11;
  v13 = *(v1 + 32);
  v14 = *(v1 + 40);
  v15 = *(v1 + 48);
  v40 = *(v1 + 8);
  v39 = *v1;
  v28[2] = v15;
  sub_1921D5C4C(v39, v40, v15, v13, v14);
  v17 = v16;
  *v4 = sub_192226340();
  *(v4 + 1) = v17;
  v4[16] = 0;
  v28[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1DA0, &unk_1922412F8) + 44);
  v31 = xmmword_192240F50;
  v28[0] = swift_getKeyPath();
  v38 = *(v1 + 16);
  v18 = swift_allocObject();
  v19 = *(v1 + 16);
  *(v18 + 16) = *v1;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(v1 + 32);
  *(v18 + 64) = *(v1 + 48);
  sub_19202CFFC(&v39, v30, &qword_1EADF1DA8, &qword_192241320);
  sub_19202CFFC(&v38, v30, &qword_1EADF1DB0, &unk_192241328);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CC0, &qword_1922374E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1DB8, &qword_192241338);
  sub_1921D6034();
  sub_1921D60C0();
  sub_192227590();
  sub_1922275F0();
  sub_192225DA0();
  sub_19204E300(v4, v8, &qword_1EADF1D88, &qword_1922412E0);
  v20 = &v8[*(v6 + 44)];
  v21 = v36;
  v20[4] = v35;
  v20[5] = v21;
  v20[6] = v37;
  v22 = v32;
  *v20 = v31;
  v20[1] = v22;
  v23 = v34;
  v20[2] = v33;
  v20[3] = v23;
  v24 = swift_allocObject();
  v25 = *(v1 + 16);
  *(v24 + 16) = *v1;
  *(v24 + 32) = v25;
  *(v24 + 48) = *(v1 + 32);
  *(v24 + 64) = *(v1 + 48);
  sub_19204E300(v8, v12, &qword_1EADF1D90, &qword_1922412E8);
  v26 = &v12[*(v10 + 44)];
  *v26 = sub_1921D3B40;
  *(v26 + 1) = 0;
  *(v26 + 2) = sub_1921D622C;
  *(v26 + 3) = v24;
  sub_19204E300(v12, v29, &qword_1EADF1D98, &qword_1922412F0);
  sub_19202CFFC(&v39, v30, &qword_1EADF1DA8, &qword_192241320);
  sub_19202CFFC(&v38, v30, &qword_1EADF1DB0, &unk_192241328);
}

void sub_1921D36F0(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1922261D0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_192228960();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (qword_1EADEE9C8 != -1)
  {
    swift_once();
  }

  v14 = off_1EADF1D20;
  v47 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1DB0, &unk_192241328);
  sub_1922274F0();
  v15 = v14[2];
  v44 = v7;
  if (!v15 || (v16 = sub_1920B7548(LOBYTE(v51)), (v17 & 1) == 0))
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = *(v14[7] + 8 * v16);
  if (v13 >= *(v18 + 16))
  {
LABEL_14:
    __break(1u);
    return;
  }

  v19 = *(v18 + 8 * v13 + 32);

LABEL_9:
  v21 = *(a2 + 40);
  v22 = *(a2 + 48);
  *&v47 = *(a2 + 32);
  v20 = *&v47;
  *(&v47 + 1) = v21;
  *&v48 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1DE0, &qword_192241348);
  sub_1922274F0();
  v23 = v51;
  v24 = v52;
  KeyPath = swift_getKeyPath();
  v45 = swift_getKeyPath();
  *&v47 = v20;
  *(&v47 + 1) = v21;
  *&v48 = v22;
  sub_1922274F0();
  v25 = v51;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E7048], v9);
  LOBYTE(v52) = *(a2 + 8);
  v27 = *a2;
  v51 = *a2;
  v28 = v52;
  if (v52 == 1)
  {
    v50 = v27;
    v26.n128_u64[0] = v27;
  }

  else
  {

    sub_192227FA0();
    v29 = sub_192226D00();
    v42 = v9;
    v30 = v19;
    v31 = v6;
    v32 = v29;
    sub_1922257A0();

    v33 = v43;
    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192033970(&v51, &qword_1EADF1DA8, &qword_192241320);
    v34 = v31;
    v19 = v30;
    v9 = v42;
    (*(v44 + 8))(v33, v34);
    v26.n128_u64[0] = v50;
  }

  sub_1921D3BC8(v12, v26, v25 * 0.113636364);
  (*(v10 + 8))(v12, v9);
  sub_1922275F0();
  sub_192225AA0();
  v54 = 0;
  v53 = 0;
  sub_1921D6234(v27, v28, v22, v20, v21);
  v36 = v35;
  sub_1922276A0();
  v37 = v45;
  *a3 = KeyPath;
  *(a3 + 8) = 0;
  *(a3 + 16) = v37;
  *(a3 + 24) = 0;
  *(a3 + 32) = v19;
  *(a3 + 40) = v23;
  *(a3 + 48) = v24;
  v38 = v48;
  *(a3 + 56) = v47;
  *(a3 + 72) = v38;
  *(a3 + 88) = v49;
  *(a3 + 104) = v36;
  *(a3 + 112) = 0x3FF0000000000000;
  *(a3 + 120) = v39;
  *(a3 + 128) = v40;
}

void sub_1921D3B40(void *a1@<X8>)
{
  sub_192225AD0();
  *a1 = v2;
  a1[1] = v3;
}

double sub_1921D3BC8(uint64_t a1, __n128 a2, double a3)
{
  v4 = a2.n128_f64[0];
  v6 = sub_192228960();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3 / v4;
  v17 = v11;
  (*(v7 + 16))(v10, a1, v6, v8);
  v12 = (*(v7 + 88))(v10, v6);
  if (v12 == *MEMORY[0x1E69E7038])
  {
    v13 = round(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7030])
  {
    v13 = rint(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7040])
  {
    v13 = ceil(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7048])
  {
    v13 = floor(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7020])
  {
    v13 = trunc(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7028])
  {
    v13 = ceil(v11);
    v14 = floor(v11);
    if (v11 < 0.0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_192227D20();
    (*(v7 + 8))(v10, v6);
    v13 = v17;
  }

  return v13 * v4;
}

uint64_t sub_1921D3DF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1922261D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_192227580();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *MEMORY[0x1E697F468];
  v11 = sub_192226560();
  result = (*(*(v11 - 8) + 104))(v9, v10, v11);
  v13 = v1[4];
  v30 = v13;
  if (*(v13 + 16))
  {
    v23 = *(v13 + 32);
    v29 = *(v1 + 24);
    v14 = v1[2];
    v28 = v14;
    v21[0] = v7;
    v21[1] = a1;
    if (v29 == 1)
    {
      if ((v14 & 1) == 0)
      {
LABEL_8:
        v24 = *v1;
        v25 = *(v1 + 8);
        v17 = swift_allocObject();
        v18 = *(v1 + 1);
        *(v17 + 16) = *v1;
        *(v17 + 32) = v18;
        *(v17 + 48) = *(v1 + 2);
        *(v17 + 64) = v1[6];
        v19 = swift_allocObject();
        v20 = *(v1 + 1);
        *(v19 + 16) = *v1;
        *(v19 + 32) = v20;
        *(v19 + 48) = *(v1 + 2);
        *(v19 + 64) = v1[6];
        sub_19202CFFC(&v28, v22, &qword_1EADF0B80, &qword_192236FF0);
        sub_19202CFFC(&v24, v22, &qword_1EADF0B80, &qword_192236FF0);
        sub_19202CFFC(&v30, v22, &unk_1EADEEB10, &qword_19222AF50);
        sub_19202CFFC(&v28, v22, &qword_1EADF0B80, &qword_192236FF0);
        sub_19202CFFC(&v24, v22, &qword_1EADF0B80, &qword_192236FF0);
        sub_19202CFFC(&v30, v22, &unk_1EADEEB10, &qword_19222AF50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1E40, &qword_1922416D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1E48, &qword_1922416D8);
        sub_1921D69BC();
        sub_1921D6A14();
        sub_192031E74(&qword_1EADF1E70, &qword_1EADF1E48, &qword_1922416D8, MEMORY[0x1E697E160]);
        sub_1922270C0();

        return sub_1921D6ACC(v9);
      }
    }

    else
    {

      sub_192227FA0();
      v15 = sub_192226D00();
      sub_1922257A0();

      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      sub_192033970(&v28, &qword_1EADF0B80, &qword_192236FF0);
      (*(v4 + 8))(v6, v3);
      if (v26 != 1)
      {
        goto LABEL_8;
      }
    }

    v27 = *(v1 + 8);
    v26 = *v1;
    if (v27 != 1)
    {

      sub_192227FA0();
      v16 = sub_192226D00();
      sub_1922257A0();

      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      sub_192033970(&v26, &qword_1EADF0B80, &qword_192236FF0);
      (*(v4 + 8))(v6, v3);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

double sub_1921D42D4@<D0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  sub_1922275F0();
  sub_192225AA0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1E68, &qword_1922416E0);
  (*(*(v6 - 8) + 16))(a4, a1, v6);
  v7 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1E40, &qword_1922416D0) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t sub_1921D43B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1E48, &qword_1922416D8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v15 - v8;
  swift_getKeyPath();
  v15[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1E78, &qword_192241708);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEF658, &qword_192241710);
  v11 = sub_192031E74(&qword_1EADF1E80, &qword_1EADEF658, &qword_192241710, MEMORY[0x1E697E400]);
  v15[5] = MEMORY[0x1E69E7DE0];
  v15[6] = v10;
  v15[7] = v11;
  swift_getOpaqueTypeConformance2();
  sub_192225AE0();
  v12 = sub_192031E74(&qword_1EADF1E70, &qword_1EADF1E48, &qword_1922416D8, MEMORY[0x1E697E160]);
  MEMORY[0x193B08C80](v6, &type metadata for WaveformBarKeyframe, v3, v12);
  v13 = *(v4 + 8);
  v13(v6, v3);
  MEMORY[0x193B08CA0](v9, &type metadata for WaveformBarKeyframe, v3, v12);
  MEMORY[0x193B08C90](v6, &type metadata for WaveformBarKeyframe, v3, v12);
  v13(v6, v3);
  return (v13)(v9, v3);
}

uint64_t sub_1921D4634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = sub_192227690();
  v4 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF658, &qword_192241710);
  v61 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v50 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1E78, &qword_192241708);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - v18;
  v20 = *(a1 + 32);
  v21 = *(v20 + 16);
  v22 = v21 - 1;
  v52 = v23;
  v53 = a2;
  v50 = v19;
  v51 = v24;
  if (v21 == 1)
  {
    goto LABEL_10;
  }

  if (v21)
  {
    v57 = v11;
    if (qword_1EADEE9D0 == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_4:
  v25 = (v61 + 8);
  v55 = (v61 + 16);
  v56 = (v4 + 16);
  v54 = v61 + 32;
  v26 = v20 + 56;
  v27 = MEMORY[0x1E69E7CC0];
  v63 = v8;
  v28 = v57;
  do
  {
    v62 = v22;
    v64 = *(v26 - 8);
    v29 = v60;
    v30 = __swift_project_value_buffer(v60, qword_1EADF1D28);
    (*v56)(v59, v30, v29);
    sub_1921D6B30();
    v31 = v27;
    v32 = v6;
    v33 = v25;
    v34 = v16;
    v35 = v58;
    v36 = MEMORY[0x1E69E7DE0];
    sub_192225C50();
    v37 = sub_192031E74(&qword_1EADF1E80, &qword_1EADEF658, &qword_192241710, MEMORY[0x1E697E400]);
    MEMORY[0x193B099D0](v35, v36, v32, v37);
    v38 = *v33;
    v39 = v35;
    v16 = v34;
    v25 = v33;
    v6 = v32;
    v27 = v31;
    v38(v39, v6);
    MEMORY[0x193B099E0](v16, v36, v6, v37);
    (*v55)(v63, v28, v6);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1920C37BC(0, v31[2] + 1, 1, v31);
    }

    v41 = v27[2];
    v40 = v27[3];
    v42 = v62;
    if (v41 >= v40 >> 1)
    {
      v27 = sub_1920C37BC((v40 > 1), v41 + 1, 1, v27);
    }

    v28 = v57;
    v38(v57, v6);
    v38(v16, v6);
    v27[2] = v41 + 1;
    (*(v61 + 32))(v27 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v41, v63, v6);
    v26 += 16;
    v22 = v42 - 1;
  }

  while (v22);
LABEL_10:
  v43 = MEMORY[0x1E69E7DE0];
  v44 = sub_192031E74(&qword_1EADF1E80, &qword_1EADEF658, &qword_192241710, MEMORY[0x1E697E400]);
  v45 = v50;
  sub_192226A10();

  v64 = v43;
  v65 = v6;
  v66 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v43;
  v48 = v52;
  MEMORY[0x193B099E0](v45, v47, v52, OpaqueTypeConformance2);
  return (*(v51 + 8))(v45, v48);
}

uint64_t sub_1921D4BFC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 << 56 == *a2 << 56)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1922289A0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1921D4C74()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

double sub_1921D4CD8(uint64_t a1)
{
  sub_1922279B0();

  return result;
}

uint64_t sub_1921D4D20()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

unint64_t sub_1921D4D80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1921D6B84(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1921D4E94(void *a1, double a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1EA0, &qword_192241720);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921D6D98();
  sub_192228B90();
  v12 = a2;
  v11[15] = 0;
  sub_192059A84();
  sub_1922288C0();
  if (!v3)
  {
    v11[14] = 1;
    sub_192228880();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1921D5034()
{
  if (*v0)
  {
    return 0x6E6F697461727564;
  }

  else
  {
    return 0x746867696568;
  }
}

void sub_1921D506C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
  if (v6 || (sub_1922289A0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1922289A0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1921D5144(uint64_t a1)
{
  v2 = sub_1921D6D98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921D5180(uint64_t a1)
{
  v2 = sub_1921D6D98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1921D51BC(double *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_1921D6BD0(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
  }
}

uint64_t sub_1921D5204()
{
  v0 = sub_192140A1C(&unk_1F06A8E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1DF0, &qword_1922413A8);
  result = swift_arrayDestroy();
  off_1EADF1D18 = v0;
  return result;
}

void *sub_1921D5260()
{
  result = sub_1921D5280();
  off_1EADF1D20 = result;
  return result;
}

void *sub_1921D5280()
{
  if (qword_1EADEE9C0 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v0 = off_1EADF1D18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1DE8, &qword_1922413A0);
    result = sub_192228690();
    v2 = 0;
    v4 = (v0 + 8);
    v3 = v0[8];
    v52 = v0;
    v5 = 1 << *(v0 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & v3;
    v8 = (v5 + 63) >> 6;
    v9 = result + 8;
    v46 = (v0 + 8);
    v47 = result;
    v44 = result + 8;
    v45 = v8;
    if ((v6 & v3) == 0)
    {
      break;
    }

    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_11:
      v13 = v10 | (v2 << 6);
      v14 = v52[6];
      v15 = *(v14 + v13);
      v16 = *(v52[7] + 8 * v13);
      v17 = *(v16 + 16);
      if (v17)
      {
        break;
      }

      v19 = MEMORY[0x1E69E7CC0];
LABEL_34:
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(result[6] + v13) = v15;
      *(result[7] + 8 * v13) = v19;
      v41 = result[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_43;
      }

      result[2] = v43;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v48 = *(v14 + v13);
    v49 = v13;
    v50 = v7;
    v51 = v2;
    v59 = MEMORY[0x1E69E7CC0];

    sub_19209AE00(0, v17, 0);
    v18 = 0;
    v19 = v59;
    v54 = v16;
    v55 = v16 + 32;
    v53 = v17;
    while (v18 < *(v16 + 16))
    {
      v20 = *(*(v55 + 8 * v18) + 16);
      if (v20)
      {
        v56 = v18;
        v57 = *(v55 + 8 * v18);
        v58 = MEMORY[0x1E69E7CC0];

        sub_19209AE40(0, v20, 0);
        v21 = v57;
        v22 = *(v57 + 16);
        if (!v22)
        {
          goto LABEL_38;
        }

        v23 = v58;
        v24 = *(v57 + 32);
        v25 = *&qword_1F06A8EB0;
        v27 = *(v58 + 16);
        v26 = *(v58 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_19209AE40((v26 > 1), v27 + 1, 1);
          v21 = v57;
          v23 = v58;
        }

        *(v23 + 16) = v27 + 1;
        v28 = v23 + 16 * v27;
        *(v28 + 32) = v24;
        *(v28 + 40) = (v25 - v25) * 2.66;
        if (v20 != 1)
        {
          v31 = 0;
          v32 = 16 * v27;
          v33 = v22 - 1;
          v34 = v21 + 40;
          v35 = &unk_1F06A8EB8;
          while (v33 != v31)
          {
            if ((v31 + 1) >= *(v21 + 16))
            {
              goto LABEL_39;
            }

            if (v31 == 11)
            {
              goto LABEL_40;
            }

            v36 = *(v34 + 8 * v31);
            v38 = *(v35 - 1);
            v37 = *v35;
            v39 = *(v23 + 24);
            if (v31 + 1 + v27 >= v39 >> 1)
            {
              sub_19209AE40((v39 > 1), v27 + v31 + 2, 1);
              v21 = v57;
            }

            *(v23 + 16) = v27 + v31 + 2;
            v40 = v23 + v32;
            *(v40 + 48) = v36;
            *(v40 + 56) = (v37 - v38) * 2.66;
            v32 += 16;
            ++v31;
            ++v35;
            if (v20 - 1 == v31)
            {
              goto LABEL_19;
            }
          }

LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          break;
        }

LABEL_19:

        v17 = v53;
        v16 = v54;
        v18 = v56;
      }

      else
      {
        v23 = MEMORY[0x1E69E7CC0];
      }

      v30 = *(v59 + 16);
      v29 = *(v59 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_19209AE00((v29 > 1), v30 + 1, 1);
      }

      ++v18;
      *(v59 + 16) = v30 + 1;
      *(v59 + 8 * v30 + 32) = v23;
      if (v18 == v17)
      {

        v4 = v46;
        result = v47;
        v7 = v50;
        v2 = v51;
        v9 = v44;
        v8 = v45;
        v13 = v49;
        v15 = v48;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

LABEL_6:
  v11 = v2;
  while (1)
  {
    v2 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_42;
    }

    if (v2 >= v8)
    {
      return result;
    }

    v12 = *&v4[8 * v2];
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }
}

uint64_t sub_1921D5668()
{
  v0 = sub_192227690();
  __swift_allocate_value_buffer(v0, qword_1EADF1D28);
  __swift_project_value_buffer(v0, qword_1EADF1D28);
  return sub_192227680();
}

uint64_t sub_1921D56C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192225F00();
  *a1 = result;
  return result;
}

unint64_t sub_1921D5720(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x193B0C800](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x193B0C800](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1921D57AC@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  result = sub_1921D5720(3uLL);
  if (result > 2)
  {
    __break(1u);
  }

  else
  {
    sub_1922274E0();
    __asm { FMOV            V0.2D, #11.0 }

    type metadata accessor for CGSize(0);
    result = sub_1922274E0();
    *a1 = KeyPath;
    *(a1 + 8) = 0;
    *(a1 + 16) = v9;
    *(a1 + 24) = *(&v9 + 1);
    *(a1 + 32) = v9;
    *(a1 + 48) = v10;
  }

  return result;
}

unint64_t sub_1921D5870()
{
  result = qword_1EADF1D48;
  if (!qword_1EADF1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1D48);
  }

  return result;
}

__n128 __swift_memcpy17_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CodableColor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CodableColor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t sub_1921D5940()
{
  result = qword_1EADF1D58;
  if (!qword_1EADF1D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1D60, &unk_1922410E8);
    sub_1921D59F8();
    sub_192031E74(&qword_1EADEDCD8, &qword_1EADF1928, &qword_19223DC10, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1D58);
  }

  return result;
}

unint64_t sub_1921D59F8()
{
  result = qword_1EADF1D68;
  if (!qword_1EADF1D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1D68);
  }

  return result;
}

uint64_t sub_1921D5A4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1921D5AA8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_1921D5B2C()
{
  result = qword_1EADF1D70;
  if (!qword_1EADF1D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1D70);
  }

  return result;
}

unint64_t sub_1921D5BA0()
{
  result = qword_1EADF1D78;
  if (!qword_1EADF1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1D78);
  }

  return result;
}

unint64_t sub_1921D5BF8()
{
  result = qword_1EADF1D80;
  if (!qword_1EADF1D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1D80);
  }

  return result;
}

void *sub_1921D5C4C(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  v42 = a1;
  v9 = sub_1922261D0();
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_192228960();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37[-v17];
  v44 = a4;
  v45 = a5;
  v46 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1DE0, &qword_192241348);
  result = sub_1922274F0();
  if (v43 > 0.0)
  {
    v40 = v9;
    v44 = a4;
    v45 = a5;
    v46 = a3;
    sub_1922274F0();
    v20 = v43;
    v44 = a4;
    v45 = a5;
    v46 = a3;
    sub_1922274F0();
    v21 = v43;
    v22 = *MEMORY[0x1E69E7048];
    v39 = *(v13 + 104);
    v39(v18, v22, v12);
    LODWORD(v24) = a2;
    if (a2)
    {
      v23.n128_u64[0] = v42;
    }

    else
    {
      v25 = v42;

      sub_192227FA0();
      v26 = sub_192226D00();
      v38 = v24;
      v24 = v26;
      sub_1922257A0();

      LOBYTE(v24) = v38;
      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      v27 = sub_192049898(v25, 0);
      (*(v41 + 8))(v11, v40, v27);
      v23.n128_f64[0] = v44;
    }

    v28 = sub_1921D3BC8(v18, v23, v21 * 0.113636364);
    v29 = *(v13 + 8);
    v29(v18, v12);
    v30 = (v20 + v28 * -5.0) * 0.25;
    v39(v15, v22, v12);
    if (v24)
    {
      v31.n128_u64[0] = v42;
    }

    else
    {
      v32 = v42;

      sub_192227FA0();
      v33 = sub_192226D00();
      v34 = v41;
      v35 = v33;
      sub_1922257A0();

      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      v36 = sub_192049898(v32, 0);
      (*(v34 + 8))(v11, v40, v36);
      v31.n128_f64[0] = v44;
    }

    sub_1921D3BC8(v15, v31, v30);
    return (v29)(v15, v12);
  }

  return result;
}

unint64_t sub_1921D6034()
{
  result = qword_1EADF1C70;
  if (!qword_1EADF1C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0CC0, &qword_1922374E0);
    sub_1921CFD74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1C70);
  }

  return result;
}

unint64_t sub_1921D60C0()
{
  result = qword_1EADF1DC0;
  if (!qword_1EADF1DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1DB8, &qword_192241338);
    sub_1921D614C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1DC0);
  }

  return result;
}

unint64_t sub_1921D614C()
{
  result = qword_1EADF1DC8;
  if (!qword_1EADF1DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1DD0, &qword_192241340);
    sub_1921D61D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1DC8);
  }

  return result;
}

unint64_t sub_1921D61D8()
{
  result = qword_1EADF1DD8;
  if (!qword_1EADF1DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1DD8);
  }

  return result;
}

uint64_t sub_1921D6234(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1922261D0();
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_192228960();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v45 = a4;
  v46 = a5;
  v40 = a3;
  v47 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1DE0, &qword_192241348);
  sub_1922274F0();
  v19 = v44;
  v20 = *(v14 + 104);
  v39 = *MEMORY[0x1E69E7048];
  v38 = v20;
  v20(v18);
  v41 = a2;
  v37 = v10;
  if (a2)
  {
    v21.n128_u64[0] = a1;
  }

  else
  {

    sub_192227FA0();
    v22 = sub_192226D00();
    v36 = v13;
    v23 = v10;
    v24 = v22;
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v25 = sub_192049898(a1, 0);
    v13 = v36;
    (*(v43 + 8))(v12, v23, v25);
    v21.n128_f64[0] = v45;
  }

  v26 = sub_1921D3BC8(v18, v21, v19 * 0.113636364);
  v27 = *(v14 + 8);
  result = v27(v18, v13);
  if (v26 > 0.0)
  {
    v45 = a4;
    v46 = a5;
    v29 = v40;
    v47 = v40;
    sub_1922274F0();
    v45 = a4;
    v46 = a5;
    v47 = v29;
    sub_1922274F0();
    v30 = v44;
    v31 = v42;
    v38(v42, v39, v13);
    if (v41)
    {
      v32.n128_u64[0] = a1;
    }

    else
    {

      sub_192227FA0();
      v33 = sub_192226D00();
      sub_1922257A0();

      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      v34 = sub_192049898(a1, 0);
      (*(v43 + 8))(v12, v37, v34);
      v32.n128_f64[0] = v45;
    }

    sub_1921D3BC8(v31, v32, v30 * 0.113636364);
    return v27(v31, v13);
  }

  return result;
}

unint64_t sub_1921D661C()
{
  result = qword_1EADF1DF8;
  if (!qword_1EADF1DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1DF8);
  }

  return result;
}

uint64_t sub_1921D6680(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1921D66C8(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_1921D6734()
{
  result = qword_1EADF1E00;
  if (!qword_1EADF1E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1D98, &qword_1922412F0);
    sub_1921D67EC();
    sub_192031E74(&qword_1EADF1E18, &qword_1EADF1E20, &qword_1922414F8, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1E00);
  }

  return result;
}

unint64_t sub_1921D67EC()
{
  result = qword_1EADF1E08;
  if (!qword_1EADF1E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1D90, &qword_1922412E8);
    sub_192031E74(&qword_1EADF1E10, &qword_1EADF1D88, &qword_1922412E0, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1E08);
  }

  return result;
}

unint64_t sub_1921D68EC()
{
  result = qword_1EADF1E38;
  if (!qword_1EADF1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1E38);
  }

  return result;
}

uint64_t objectdestroy_65Tm()
{
  sub_192049898(*(v0 + 16), *(v0 + 24));
  sub_192049898(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

unint64_t sub_1921D69BC()
{
  result = qword_1EADF1E50;
  if (!qword_1EADF1E50)
  {
    sub_192227580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1E50);
  }

  return result;
}

unint64_t sub_1921D6A14()
{
  result = qword_1EADF1E58;
  if (!qword_1EADF1E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1E40, &qword_1922416D0);
    sub_192031E74(&qword_1EADF1E60, &qword_1EADF1E68, &qword_1922416E0, MEMORY[0x1E697FEC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1E58);
  }

  return result;
}

uint64_t sub_1921D6ACC(uint64_t a1)
{
  v2 = sub_192227580();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1921D6B30()
{
  result = qword_1EADF1E88;
  if (!qword_1EADF1E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1E88);
  }

  return result;
}

unint64_t sub_1921D6B84(uint64_t a1, uint64_t a2)
{
  v2 = sub_192228700();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

double sub_1921D6BD0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1E90, &qword_192241718);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921D6D98();
  sub_192228B70();
  v8[7] = 0;
  sub_192045184();
  sub_1922287C0();
  v6 = v9;
  v8[6] = 1;
  sub_192228780();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

unint64_t sub_1921D6D98()
{
  result = qword_1EADF1E98;
  if (!qword_1EADF1E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1E98);
  }

  return result;
}

unint64_t sub_1921D6DEC()
{
  result = qword_1EADF1EA8;
  if (!qword_1EADF1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1EA8);
  }

  return result;
}

unint64_t sub_1921D6E54()
{
  result = qword_1EADF1EB0;
  if (!qword_1EADF1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1EB0);
  }

  return result;
}

unint64_t sub_1921D6EAC()
{
  result = qword_1EADF1EB8;
  if (!qword_1EADF1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1EB8);
  }

  return result;
}

unint64_t sub_1921D6F04()
{
  result = qword_1EADF1EC0;
  if (!qword_1EADF1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1EC0);
  }

  return result;
}

uint64_t ControlAction.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19202A7A8(0, &qword_1EADEE508, 0x1E69942D0);
  sub_19202A7A8(0, &qword_1EADEDEF8, 0x1E696E730);
  (*(v8 + 16))(v10, a1, a2);
  v11 = sub_1921D85E8(v10, a2, a3);
  v12 = *(v8 + 8);
  v12(v10, a2);
  v13 = sub_1921D8918(v11);

  *a4 = v13;
  return (v12)(a1, a2);
}

WidgetKit::ActionAuthenticationPolicy_optional __swiftcall ActionAuthenticationPolicy.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue >= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1921D71E4()
{
  sub_192228AD0();
  sub_192228B00();
  return sub_192228B30();
}

uint64_t sub_1921D7258()
{
  sub_192228AD0();
  sub_192228B00();
  return sub_192228B30();
}

id ControlAction.storage.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

void ControlAction.storage.setter(void **a1)
{
  v2 = *a1;

  *v1 = v2;
}

uint64_t ControlAction.init<A, B>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v31 = a6;
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v28[2] = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v28 - v19;
  v21 = *(v14 + 16);
  v30 = v22;
  v28[1] = v21;
  v21(v28 - v19, v18);
  v23 = *(v10 + 16);
  v29 = a2;
  v23(v12, a2, a3);
  sub_192224CA0();
  sub_19202A7A8(0, &qword_1EADEE508, 0x1E69942D0);
  sub_19202A7A8(0, &qword_1EADEDEF8, 0x1E696E730);
  v24 = sub_1921D85E8(v20, a4, *(a5 + 8));
  v25 = sub_1921D8918(v24);

  (*(v10 + 8))(v29, a3);
  v26 = *(v14 + 8);
  v26(v30, a4);
  result = v26(v20, a4);
  *v31 = v25;
  return result;
}

void ControlAction.authenticationPolicy.getter(char *a1@<X8>)
{
  if (*v1)
  {
    v3 = [*v1 intent];
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 linkAction];

  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [v5 authenticationPolicyAllowingImplicit_];
  if (!v6)
  {

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v7 = v6;
  v8 = [v6 integerValue];

  if (v8)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

LABEL_12:
  *a1 = v9;
}

id ControlAction.lnAction.getter()
{
  if (*v0)
  {
    v1 = [*v0 intent];
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2)
    {
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 linkAction];

  return v3;
}

void LNAction.authenticationPolicy.getter(char *a1@<X8>)
{
  v3 = [v1 authenticationPolicyAllowingImplicit_];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 integerValue];

    if (v5)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

void *ControlAction.inIntent.getter()
{
  result = *v0;
  if (*v0)
  {
    v2 = [result intent];
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t ControlAction.description.getter()
{
  if (!*v0)
  {
    return 0xD00000000000001ALL;
  }

  v1 = *v0;
  sub_192228400();

  v2 = [v1 description];
  v3 = sub_192227960();
  v5 = v4;

  MEMORY[0x193B0A990](v3, v5);

  MEMORY[0x193B0A990](41, 0xE100000000000000);

  return 0x2E6C6F72746E6F43;
}

uint64_t sub_1921D79F8(uint64_t a1)
{
  if (!*v1)
  {
    return MEMORY[0x193B0BA90](0);
  }

  MEMORY[0x193B0BA90](1);
  return sub_1922281E0();
}

uint64_t _s9WidgetKit13ControlActionV7StorageO9hashValueSivg_0()
{
  v1 = *v0;
  sub_192228AD0();
  if (v1)
  {
    MEMORY[0x193B0BA90](1);
    sub_1922281E0();
  }

  else
  {
    MEMORY[0x193B0BA90](0);
  }

  return sub_192228B30();
}

uint64_t sub_1921D7AB4()
{
  v1 = *v0;
  sub_192228AD0();
  if (v1)
  {
    MEMORY[0x193B0BA90](1);
    sub_1922281E0();
  }

  else
  {
    MEMORY[0x193B0BA90](0);
  }

  return sub_192228B30();
}

uint64_t sub_1921D7B20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E65746E69;
  }

  else
  {
    v3 = 0x656761726F7473;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x746E65746E69;
  }

  else
  {
    v5 = 0x656761726F7473;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t sub_1921D7BC4()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

double sub_1921D7C44(uint64_t a1)
{
  sub_1922279B0();

  return result;
}

uint64_t sub_1921D7CB0()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

void sub_1921D7D2C(char *a2@<X8>)
{
  v3 = sub_192228700();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1921D7D8C(uint64_t *a1@<X8>)
{
  v2 = 0x656761726F7473;
  if (*v1)
  {
    v2 = 0x746E65746E69;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1921D7DC8()
{
  if (*v0)
  {
    return 0x746E65746E69;
  }

  else
  {
    return 0x656761726F7473;
  }
}

void sub_1921D7E00(char *a3@<X8>)
{
  v4 = sub_192228700();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_1921D7E64(uint64_t a1)
{
  v2 = sub_1921D89DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921D7EA0(uint64_t a1)
{
  v2 = sub_1921D89DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlAction.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1EC8, &qword_192241838);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921D89DC();
  sub_192228B70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v14[0]) = 0;
  v9 = sub_1922287A0();
  if (v9 == 1)
  {
    v15 = 1;
    sub_192047340();
    sub_1922287C0();
    v10 = v14[0];
    v11 = v14[1];
    sub_19202A7A8(0, &qword_1EADEE508, 0x1E69942D0);
    v12 = sub_192227FE0();
    (*(v6 + 8))(v8, v5);
    sub_192039140(v10, v11);
LABEL_6:
    *a2 = v12;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (!v9)
  {
    (*(v6 + 8))(v8, v5);
    v12 = 0;
    goto LABEL_6;
  }

  result = sub_192228620();
  __break(1u);
  return result;
}

void ControlAction.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1ED0, &qword_192241840);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921D89DC();
  sub_192228B90();
  if (v8)
  {
    LOBYTE(v11) = 0;
    v9 = v8;
    sub_1922288A0();
    if (v2)
    {
      (*(v5 + 8))(v7, v4);

      return;
    }

    sub_19202A7A8(0, &qword_1EADEE508, 0x1E69942D0);
    v11 = sub_192227FD0();
    v12 = v10;
    v13 = 1;
    sub_1920593E0();
    sub_1922288C0();

    sub_192039140(v11, v12);
  }

  else
  {
    LOBYTE(v11) = 0;
    sub_1922288A0();
  }

  (*(v5 + 8))(v7, v4);
}

void sub_1921D8394(uint64_t a1, uint64_t a2)
{
  error[3] = *MEMORY[0x1E69E9840];
  v2 = SecTaskCreateFromSelf(0);
  if (v2)
  {
    v3 = v2;
    error[0] = 0;
    v4 = sub_192227930();
    v5 = SecTaskCopyValueForEntitlement(v3, v4, error);

    if (v5)
    {

      swift_dynamicCast();
    }

    else
    {
      v6 = error[0];
      if (error[0])
      {
        type metadata accessor for CFError(0);
        sub_1921D8C80();
        swift_allocError();
        *v7 = v6;
        swift_willThrow();
      }
    }
  }
}

BOOL _s9WidgetKit13ControlActionV7StorageO2eeoiySbAE_AEtFZ_0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
      v4 = v3;
      v5 = v2;
      v6 = sub_1922281D0();

      return v6 & 1;
    }

    return 0;
  }

  return !v3;
}

uint64_t _s9WidgetKit13ControlActionV2eeoiySbAC_ACtFZ_0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
      v4 = v3;
      v5 = v2;
      v6 = sub_1922281D0();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

id sub_1921D85E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_192224C70();
  sub_19202A7A8(0, &qword_1EADEE500, 0x1E69AC640);
  if (swift_dynamicCast() && (sub_192224BE0(), sub_19202A7A8(0, &qword_1EADEDEF0, 0x1E69AC678), swift_dynamicCast()))
  {
    sub_1921D8394(0xD00000000000003ALL, 0x800000019224E130);
    if (v3)
    {
LABEL_6:
      v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v7 = sub_192227930();

      v8 = [v6 initWithAppBundleIdentifier:v7 linkAction:v11 linkActionMetadata:v11];

      return v8;
    }

    v4 = [objc_opt_self() mainBundle];
    v5 = [v4 bundleIdentifier];

    if (v5)
    {
      sub_192227960();

      goto LABEL_6;
    }
  }

  else
  {
    sub_192228400();

    v10 = sub_192228BD0();
    MEMORY[0x193B0A990](v10);

    MEMORY[0x193B0A990](46, 0xE100000000000000);
  }

  result = sub_192228620();
  __break(1u);
  return result;
}

id sub_1921D8918(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() referenceFromIntent:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_192224F90();

    swift_willThrow();
  }

  return v1;
}

unint64_t sub_1921D89DC()
{
  result = qword_1EADEE6E8;
  if (!qword_1EADEE6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE6E8);
  }

  return result;
}

unint64_t sub_1921D8A34()
{
  result = qword_1EADF1ED8;
  if (!qword_1EADF1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1ED8);
  }

  return result;
}

unint64_t sub_1921D8A8C()
{
  result = qword_1EADF1EE0;
  if (!qword_1EADF1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1EE0);
  }

  return result;
}

unint64_t sub_1921D8AE4()
{
  result = qword_1EADF1EE8;
  if (!qword_1EADF1EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1EE8);
  }

  return result;
}

unint64_t sub_1921D8B7C()
{
  result = qword_1EADF1EF0;
  if (!qword_1EADF1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1EF0);
  }

  return result;
}

unint64_t sub_1921D8BD4()
{
  result = qword_1EADEE6D8;
  if (!qword_1EADEE6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE6D8);
  }

  return result;
}

unint64_t sub_1921D8C2C()
{
  result = qword_1EADEE6E0;
  if (!qword_1EADEE6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE6E0);
  }

  return result;
}

unint64_t sub_1921D8C80()
{
  result = qword_1EADF1EF8;
  if (!qword_1EADF1EF8)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1EF8);
  }

  return result;
}

uint64_t sub_1921D8CEC()
{
  v1 = *v0;
  sub_192228AD0();
  sub_192058978(v1);
  sub_1922279B0();

  return sub_192228B30();
}

double sub_1921D8D50(uint64_t a1)
{
  sub_192058978(*v1);
  sub_1922279B0();

  return result;
}

uint64_t sub_1921D8DA4()
{
  v1 = *v0;
  sub_192228AD0();
  sub_192058978(v1);
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_1921D8E04(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_192058978(*a1);
  v5 = v4;
  if (v3 == sub_192058978(v2) && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t sub_1921D8E8C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = sub_192058978(*a2);
  v5 = v4;
  if (v3 == sub_192058978(v2) && v5 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1922289A0();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_1921D8F2C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_192058978(*a1);
  v5 = v4;
  if (v3 == sub_192058978(v2) && v5 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1922289A0();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_1921D8FC8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = sub_192058978(*a2);
  v5 = v4;
  if (v3 == sub_192058978(v2) && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t sub_1921D906C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1921DAAEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1921D9094(uint64_t a1)
{
  v2 = sub_1921D9724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921D90D0(uint64_t a1)
{
  v2 = sub_1921D9724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1921D910C(uint64_t a1)
{
  v2 = sub_1921D9874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921D9148(uint64_t a1)
{
  v2 = sub_1921D9874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1921D9184(uint64_t a1)
{
  v2 = sub_1921D9820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921D91C0(uint64_t a1)
{
  v2 = sub_1921D9820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1921D91FC(uint64_t a1)
{
  v2 = sub_1921D97CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921D9238(uint64_t a1)
{
  v2 = sub_1921D97CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1921D9274(uint64_t a1)
{
  v2 = sub_1921D9778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921D92B0(uint64_t a1)
{
  v2 = sub_1921D9778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlSize.Storage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F08, &qword_192241E18);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F10, &qword_192241E20);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F18, &qword_192241E28);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F20, &qword_192241E30);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F28, &qword_192241E38);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921D9724();
  sub_192228B90();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1921D97CC();
      v18 = v27;
      sub_192228820();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1921D9778();
      v18 = v30;
      sub_192228820();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1921D9820();
    v18 = v24;
    sub_192228820();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1921D9874();
  sub_192228820();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_1921D9724()
{
  result = qword_1EADF1F30;
  if (!qword_1EADF1F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1F30);
  }

  return result;
}

unint64_t sub_1921D9778()
{
  result = qword_1EADF1F38;
  if (!qword_1EADF1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1F38);
  }

  return result;
}

unint64_t sub_1921D97CC()
{
  result = qword_1EADF1F40;
  if (!qword_1EADF1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1F40);
  }

  return result;
}

unint64_t sub_1921D9820()
{
  result = qword_1EADF1F48;
  if (!qword_1EADF1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1F48);
  }

  return result;
}

unint64_t sub_1921D9874()
{
  result = qword_1EADF1F50;
  if (!qword_1EADF1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1F50);
  }

  return result;
}

uint64_t ControlSize.Storage.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F58, &qword_192241E40);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F60, &qword_192241E48);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F68, &qword_192241E50);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F70, &qword_192241E58);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F78, &qword_192241E60);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1921D9724();
  v15 = v46;
  sub_192228B70();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1922287F0();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_19212C278();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1922284A0();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0);
      *v28 = &type metadata for ControlSize.Storage;
      sub_192228720();
      sub_192228480();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1921D9820();
        v32 = v35;
        sub_192228710();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1921D9874();
        v25 = v35;
        sub_192228710();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1921D97CC();
      v31 = v35;
      sub_192228710();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1921D9778();
      v33 = v35;
      sub_192228710();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_1921D9F9C(uint64_t a1)
{
  v2 = sub_1921DA160();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921D9FD8(uint64_t a1)
{
  v2 = sub_1921DA160();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlSize.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F80, &qword_192241E68);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921DA160();
  sub_192228B90();
  v10 = v7;
  sub_1921DA1B4();
  sub_1922288C0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1921DA160()
{
  result = qword_1EADF1F88;
  if (!qword_1EADF1F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1F88);
  }

  return result;
}

unint64_t sub_1921DA1B4()
{
  result = qword_1EADF1F90;
  if (!qword_1EADF1F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1F90);
  }

  return result;
}

uint64_t ControlSize.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F98, &qword_192241E70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921DA160();
  sub_192228B70();
  if (!v2)
  {
    sub_1921DA3D0();
    sub_1922287C0();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1921DA3D0()
{
  result = qword_1EADF1FA0;
  if (!qword_1EADF1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FA0);
  }

  return result;
}

uint64_t ControlSize.debugDescription.getter()
{
  v1 = *&a1x1_1[8 * *v0];
  strcpy(v3, "ControlSize.");
  MEMORY[0x193B0A990](v1, 0xE300000000000000);

  return v3[0];
}

unint64_t sub_1921DA494()
{
  result = qword_1EADF1FA8;
  if (!qword_1EADF1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FA8);
  }

  return result;
}

unint64_t sub_1921DA4EC()
{
  result = qword_1EADF1FB0;
  if (!qword_1EADF1FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FB0);
  }

  return result;
}

uint64_t sub_1921DA540()
{
  v1 = *&a1x1_1[8 * *v0];
  strcpy(v3, "ControlSize.");
  MEMORY[0x193B0A990](v1, 0xE300000000000000);

  return v3[0];
}

unint64_t sub_1921DA620()
{
  result = qword_1EADF1FB8;
  if (!qword_1EADF1FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FB8);
  }

  return result;
}

unint64_t sub_1921DA678()
{
  result = qword_1EADF1FC0;
  if (!qword_1EADF1FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FC0);
  }

  return result;
}

unint64_t sub_1921DA6D0()
{
  result = qword_1EADF1FC8;
  if (!qword_1EADF1FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FC8);
  }

  return result;
}

unint64_t sub_1921DA728()
{
  result = qword_1EADF1FD0;
  if (!qword_1EADF1FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FD0);
  }

  return result;
}

unint64_t sub_1921DA780()
{
  result = qword_1EADF1FD8;
  if (!qword_1EADF1FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FD8);
  }

  return result;
}

unint64_t sub_1921DA7D8()
{
  result = qword_1EADF1FE0;
  if (!qword_1EADF1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FE0);
  }

  return result;
}

unint64_t sub_1921DA830()
{
  result = qword_1EADF1FE8;
  if (!qword_1EADF1FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FE8);
  }

  return result;
}

unint64_t sub_1921DA888()
{
  result = qword_1EADF1FF0;
  if (!qword_1EADF1FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FF0);
  }

  return result;
}

unint64_t sub_1921DA8E0()
{
  result = qword_1EADF1FF8;
  if (!qword_1EADF1FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FF8);
  }

  return result;
}

unint64_t sub_1921DA938()
{
  result = qword_1EADF2000;
  if (!qword_1EADF2000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2000);
  }

  return result;
}

unint64_t sub_1921DA990()
{
  result = qword_1EADF2008;
  if (!qword_1EADF2008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2008);
  }

  return result;
}

unint64_t sub_1921DA9E8()
{
  result = qword_1EADF2010;
  if (!qword_1EADF2010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2010);
  }

  return result;
}

unint64_t sub_1921DAA40()
{
  result = qword_1EADF2018;
  if (!qword_1EADF2018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2018);
  }

  return result;
}

unint64_t sub_1921DAA98()
{
  result = qword_1EADF2020;
  if (!qword_1EADF2020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2020);
  }

  return result;
}

uint64_t sub_1921DAAEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 829960543 && a2 == 0xE400000000000000;
  if (v3 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 846737759 && a2 == 0xE400000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 829960799 && a2 == 0xE400000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 846738015 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1922289A0();

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

uint64_t EnvironmentValues.isWidgetFocal.getter()
{
  sub_1921DAC8C();
  sub_1922261E0();
  return v1;
}

unint64_t sub_1921DAC8C()
{
  result = qword_1EADECD98;
  if (!qword_1EADECD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD98);
  }

  return result;
}

void *sub_1921DACE0@<X0>(_BYTE *a1@<X8>)
{
  sub_1921DAC8C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.isWidgetFocal.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1921DAC8C();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1921DAE20;
}

double static JindoMetricsDefinition.mock()@<D0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for JindoMetricsDefinition(0);
  v3 = a1 + v2[5];
  v4 = type metadata accessor for MetricsRequest(0);
  v5 = *(v4 + 40);
  v6 = sub_192226600();
  v7 = *(*(v6 - 8) + 56);
  v7(&v3[v5], 1, 1, v6);
  *v3 = xmmword_19223F6C0;
  v3[16] = 0;
  *(v3 + 24) = xmmword_19223F6C0;
  v3[40] = 0;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 10) = 0;
  v3[88] = 1;
  *(v3 + 6) = xmmword_19222F810;
  v8 = a1 + v2[6];
  v7(&v8[*(v4 + 40)], 1, 1, v6);
  *v8 = xmmword_19223F6C0;
  v8[16] = 0;
  *(v8 + 24) = xmmword_19223F6C0;
  v8[40] = 0;
  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 10) = 0;
  v8[88] = 1;
  *(v8 + 6) = xmmword_19222F810;
  v9 = a1 + v2[7];
  v7(&v9[*(v4 + 40)], 1, 1, v6);
  *v9 = xmmword_19223F6C0;
  v9[16] = 0;
  *(v9 + 24) = xmmword_19223F6C0;
  v9[40] = 0;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 10) = 0;
  v9[88] = 1;
  *(v9 + 6) = xmmword_19222F810;
  v10 = a1 + v2[8];
  v7(&v10[*(v4 + 40)], 1, 1, v6);
  *v10 = xmmword_19223F6C0;
  v10[16] = 0;
  *(v10 + 24) = xmmword_19223F6C0;
  v10[40] = 0;
  *(v10 + 3) = 0u;
  *(v10 + 4) = 0u;
  *(v10 + 10) = 0;
  v10[88] = 1;
  *(v10 + 6) = xmmword_19222F810;
  result = 80.0;
  *a1 = xmmword_1922425E0;
  return result;
}

void sub_1921DB0C4(uint64_t a1)
{
  type metadata accessor for ViewSource(319);
  if (v1 <= 0x3F)
  {
    sub_1920407C4(319, &qword_1ED74B590, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1921DB414(319);
      if (v3 <= 0x3F)
      {
        sub_1920407C4(319, &qword_1ED74AF50, &type metadata for ActivityFamily, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1921DB46C(319);
          if (v5 <= 0x3F)
          {
            sub_1921DB5A0(319, &qword_1ED74AB90, sub_1921DB54C, &type metadata for WidgetLocation);
            if (v6 <= 0x3F)
            {
              type metadata accessor for CHSEnablement(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for CHSWidgetVisibility(319);
                if (v8 <= 0x3F)
                {
                  sub_1921DB5A0(319, &qword_1ED74AB50, sub_1921DB600, &type metadata for WidgetSpatialChromeStyle);
                  if (v9 <= 0x3F)
                  {
                    v10 = MEMORY[0x1E69E6370];
                    sub_1920407C4(319, qword_1ED74AF58, &type metadata for WidgetURLSessionEventConfiguration, MEMORY[0x1E69E62F8]);
                    if (v11 <= 0x3F)
                    {
                      sub_1920407C4(319, &qword_1ED74B550, v10, MEMORY[0x1E69E6720]);
                      if (v12 <= 0x3F)
                      {
                        sub_1921DB654(319, &qword_1ED74AFE0, &qword_1EADF2030, &qword_192242670);
                        if (v13 <= 0x3F)
                        {
                          type metadata accessor for CHSControlSize(319);
                          if (v14 <= 0x3F)
                          {
                            sub_1921DB654(319, &qword_1ED74AF48, &qword_1EADF2038, &qword_192242678);
                            if (v15 <= 0x3F)
                            {
                              sub_1921DB654(319, &qword_1ED74ABB0, &qword_1EADF2040, &qword_192242680);
                              if (v16 <= 0x3F)
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

void sub_1921DB414(uint64_t a1)
{
  if (!qword_1ED74ABD8)
  {
    type metadata accessor for CHSWidgetFamily(255);
    v1 = sub_192227C40();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED74ABD8);
    }
  }
}

void sub_1921DB46C(uint64_t a1)
{
  if (!qword_1ED74ABE8)
  {
    type metadata accessor for CHSWidgetFamily(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2028, &qword_192242668);
    sub_1921DB4F4();
    v1 = sub_192227860();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED74ABE8);
    }
  }
}

unint64_t sub_1921DB4F4()
{
  result = qword_1ED74ABD0;
  if (!qword_1ED74ABD0)
  {
    type metadata accessor for CHSWidgetFamily(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ABD0);
  }

  return result;
}

unint64_t sub_1921DB54C()
{
  result = qword_1ED74AB98;
  if (!qword_1ED74AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AB98);
  }

  return result;
}

void sub_1921DB5A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_192227D80();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1921DB600()
{
  result = qword_1ED74AB70;
  if (!qword_1ED74AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AB70);
  }

  return result;
}

void sub_1921DB654(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_192228240();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1921DB6B8(uint64_t a1, __n128 a2)
{
  sub_1921DB738(319, a2);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1921DB738(uint64_t a1, __n128 a2)
{
  if (!qword_1ED74BB30)
  {
    sub_1922253B0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED74BB30);
    }
  }
}

__n128 sub_1921DB7C0@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192038FB8(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *(a1 + 24) = &type metadata for ControlViewSource;
      *(a1 + 32) = sub_1921AFF60();
      v8 = swift_allocObject();
      *a1 = v8;
      v9 = *(v6 + 3);
      v8[3] = *(v6 + 2);
      v8[4] = v9;
      v8[5] = *(v6 + 4);
      *(v8 + 89) = *(v6 + 73);
      result = *v6;
      v11 = *(v6 + 1);
      v8[1] = *v6;
      v8[2] = v11;
      return result;
    }

    *(a1 + 24) = &type metadata for LiveSceneWidgetViewSource;
    *(a1 + 32) = sub_1921AFF0C();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

      v12 = sub_1922253B0();
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      (*(*(v12 - 8) + 8))(v6, v12);
      return result;
    }

    *(a1 + 24) = &type metadata for TimelineViewSource;
    *(a1 + 32) = sub_192082A7C();
  }

  v13 = swift_allocObject();
  *a1 = v13;
  v14 = *(v6 + 1);
  *(v13 + 16) = *v6;
  *(v13 + 32) = v14;
  result = *(v6 + 2);
  v15 = *(v6 + 3);
  *(v13 + 48) = result;
  *(v13 + 64) = v15;
  return result;
}

uint64_t sub_1921DB98C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for WidgetDescriptor(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19207C3DC(v1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_192033970(v4, &qword_1EADEEE20, &qword_19222B670);
    if (qword_1EADEDA30 != -1)
    {
      swift_once();
    }

    LOBYTE(v9) = dyld_program_sdk_at_least();
  }

  else
  {
    sub_19207C284(v4, v8);
    v9 = v8[*(v5 + 176)];
    if (v9 == 2)
    {
      if (qword_1EADEDA30 != -1)
      {
        swift_once();
      }

      LOBYTE(v9) = dyld_program_sdk_at_least();
    }

    sub_19207D1F8(v8, type metadata accessor for WidgetDescriptor);
  }

  return v9 & 1;
}

uint64_t sub_1921DBB94()
{
  v1 = *(v0 + 32);
  sub_19202D088(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_1921DBBC8()
{
  v1 = *(v0 + 48);
  sub_19202D088(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_1921DBBFC(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1922289A0(), result = 0, (v7 & 1) != 0))
  {
    result = (v3 | v5) == 0;
    if (v3 && v5 != 0)
    {
      if (v2 == v4 && v3 == v5)
      {
        return 1;
      }

      else
      {

        return sub_1922289A0();
      }
    }
  }

  return result;
}

unint64_t sub_1921DBCB8(uint64_t a1)
{
  result = sub_1921DBCE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1921DBCE0()
{
  result = qword_1EADF2048;
  if (!qword_1EADF2048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2048);
  }

  return result;
}

uint64_t sub_1921DBD38()
{
  v0 = sub_192225460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12[-1] - v5;
  sub_192225560();
  sub_192225550();
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_192225540();
  if (qword_1ED74C3B0 != -1)
  {
    swift_once();
  }

  if (dyld_program_sdk_at_least())
  {
    (*(v1 + 104))(v3, *MEMORY[0x1E6993F58], v0);
    v7 = sub_192225450();
    v8 = *(v1 + 8);
    v8(v3, v0);
    if (v7)
    {
      v9 = &unk_1F06A7800;
    }

    else
    {
      v9 = &unk_1F06A7840;
    }
  }

  else
  {
    v8 = *(v1 + 8);
    v9 = &unk_1F06A7878;
  }

  v8(v6, v0);
  result = __swift_destroy_boxed_opaque_existential_1(v12);
  qword_1ED74ABB8 = v9;
  return result;
}

double sub_1921DBF40@<D0>(void *a1@<X8>)
{
  if (qword_1EADEE4A0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EAE00808;

  return result;
}

uint64_t sub_1921DBFB0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v65 = sub_1922253B0();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v62 - v8;
  v10 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v62 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v62 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2050, &unk_192242910);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v62 + *(v24 + 56) - v23;
  v26 = a1;
  v27 = &v62 - v23;
  sub_192038FB8(v26, &v62 - v23);
  sub_192038FB8(a2, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_192038FB8(v27, v15);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1920390EC(v15);
        goto LABEL_20;
      }

      v35 = v15[3];
      v73 = v15[2];
      v74 = v35;
      v75[0] = v15[4];
      *(v75 + 9) = *(v15 + 73);
      v36 = v15[1];
      v71 = *v15;
      v72 = v36;
      v37 = *(v25 + 3);
      v68 = *(v25 + 2);
      v69 = v37;
      v70[0] = *(v25 + 4);
      *(v70 + 9) = *(v25 + 73);
      v38 = *(v25 + 1);
      v66 = *v25;
      v67 = v38;
      v39 = sub_19216F568(&v71, &v66);
      sub_1920390EC(&v66);
      sub_1920390EC(&v71);
      goto LABEL_41;
    }

    sub_192038FB8(v27, v12);
    v44 = v12[1];
    v71 = *v12;
    v72 = v44;
    v45 = v12[3];
    v73 = v12[2];
    v74 = v45;
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_1921DC700(&v71);
      goto LABEL_20;
    }

    v46 = *(v25 + 1);
    v66 = *v25;
    v67 = v46;
    v47 = *(v25 + 3);
    v68 = *(v25 + 2);
    v69 = v47;
    if (v71 != v66 && (sub_1922289A0() & 1) == 0)
    {
      goto LABEL_33;
    }

    v48 = *(&v67 + 1);
    if (!*(&v72 + 1))
    {
      sub_1921DC700(&v71);
      v39 = v48 == 0;
      v58 = &v66;
LABEL_40:
      sub_1921DC700(v58);
LABEL_41:
      v59 = v27;
LABEL_42:
      sub_19207D1F8(v59, type metadata accessor for ViewSource);
      return v39 & 1;
    }

    if (*(&v67 + 1))
    {
      if (v72 == v67)
      {
        sub_1921DC700(&v66);
        v39 = 1;
      }

      else
      {
        v39 = sub_1922289A0();
        sub_1921DC700(&v66);
      }
    }

    else
    {
LABEL_33:
      sub_1921DC700(&v66);
      v39 = 0;
    }

    v58 = &v71;
    goto LABEL_40;
  }

  if (EnumCaseMultiPayload)
  {
    sub_192038FB8(v27, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v64 + 8))(v21, v65);
      goto LABEL_20;
    }

    v40 = v64;
    v41 = *(v64 + 32);
    v42 = v65;
    v41(v9, v21, v65);
    v41(v6, v25, v42);
    v39 = sub_192225390();
    v43 = *(v40 + 8);
    v43(v6, v42);
    v43(v9, v42);
    goto LABEL_41;
  }

  sub_192038FB8(v27, v18);
  v30 = *v18;
  v29 = v18[1];
  v31 = v18[2];
  v32 = v18[3];
  v34 = v18[4];
  v33 = v18[5];
  if (!swift_getEnumCaseMultiPayload())
  {
    v65 = v27;
    v49 = *v25;
    v50 = *(v25 + 1);
    v51 = *(v25 + 2);
    v52 = *(v25 + 3);
    v53 = *(v25 + 5);
    v63 = *(v25 + 4);
    v64 = v53;
    v54 = v30 == v49 && v29 == v50;
    if (v54 || (v55 = v51, v56 = sub_1922289A0(), v51 = v55, (v56 & 1) != 0))
    {
      if (!v32)
      {

        sub_19207C280(v34, v33);

        if (v52)
        {

          sub_19207C280(v63, v64);
          v39 = 0;
        }

        else
        {
          sub_19207C280(v63, v64);
          v39 = 1;
        }

        goto LABEL_48;
      }

      if (v52)
      {
        if (v31 == v51 && v32 == v52)
        {
          v39 = 1;
        }

        else
        {
          v39 = sub_1922289A0();
        }

        sub_19207C280(v63, v64);

        sub_19207C280(v34, v33);
        goto LABEL_48;
      }
    }

    else
    {
    }

    sub_19207C280(v63, v64);

    sub_19207C280(v34, v33);
    v39 = 0;
LABEL_48:
    v61 = v65;

    v59 = v61;
    goto LABEL_42;
  }

  sub_19207C280(v34, v33);

LABEL_20:
  sub_192033970(v27, &qword_1EADF2050, &unk_192242910);
  v39 = 0;
  return v39 & 1;
}

uint64_t sub_1921DC740()
{
  v0 = sub_1922265A0();
  __swift_allocate_value_buffer(v0, qword_1EAE008D8);
  v1 = __swift_project_value_buffer(v0, qword_1EAE008D8);
  v2 = *MEMORY[0x1E697F680];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1921DC7E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v63 = a4;
  v65 = *&a3;
  v64 = a2;
  v5 = sub_192226DA0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_192225D00();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v57 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC8, &qword_192242DC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v59 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - v15;
  v17 = sub_192226600();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192226EB0();
  v21 = *(v62 + 88);
  v66 = a1;
  v22 = a1;
  v23 = v62;
  v24 = v21(v22, v20);
  (*(v18 + 8))(v20, v17);
  if (v63)
  {
    v65 = (*(v23 + 104))(v66);
  }

  sub_192226EA0();
  v25 = *(v6 + 48);
  v26 = v64;
  if (v25(v64, 1, v5) == 1)
  {
    v11 = v58;
    (*(v6 + 104))(v58, *MEMORY[0x1E6980E28], v5);
  }

  else
  {
    sub_19202CFFC(v26, v11, &qword_1EADEFEC8, &qword_192242DC0);
    result = v25(v11, 1, v5);
    if (result == 1)
    {
      __break(1u);
      return result;
    }
  }

  v28 = sub_1920765C0();
  (*(v6 + 8))(v11, v5);
  v29 = v23;
  v30 = (*(v23 + 120))(v28, COERCE_DOUBLE(*&v65), 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_192242920;
  v32 = *MEMORY[0x1E6965848];
  *(inited + 32) = *MEMORY[0x1E6965848];
  v33 = MEMORY[0x1E69E7DE0];
  *(inited + 40) = v24;
  v34 = *MEMORY[0x1E6965898];
  *(inited + 64) = v33;
  *(inited + 72) = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFED0, &unk_192231E40);
  *(inited + 80) = v30;
  v36 = *MEMORY[0x1E6965788];
  *(inited + 104) = v35;
  *(inited + 112) = v36;
  *(inited + 144) = MEMORY[0x1E69E6810];
  *(inited + 120) = 7;
  v37 = v32;
  v38 = v34;
  v39 = v36;
  v40 = sub_19207614C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF190, &qword_19222C030);
  swift_arrayDestroy();
  v41 = v59;
  sub_19202CFFC(v16, v59, &qword_1EADEF290, &qword_19222CA80);
  v42 = v60;
  v43 = v61;
  if ((*(v60 + 48))(v41, 1, v61) != 1)
  {
    v45 = v57;
    (*(v42 + 16))(v57, v41, v43);
    v46 = (*(v42 + 88))(v45, v43);
    if (v46 != *MEMORY[0x1E697E9F8])
    {
      if (v46 == *MEMORY[0x1E697E9F0])
      {
        v47 = 1;
LABEL_13:
        (*(v42 + 8))(v41, v43);
        v48 = *MEMORY[0x1E69657F0];
        v70 = MEMORY[0x1E69E6530];
        *&v69 = v47;
        sub_19203BEDC(&v69, v68);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = v40;
        v44 = sub_1920767A8(v68, v48, isUniquelyReferenced_nonNull_native);
        v40 = v67;
        goto LABEL_14;
      }

      (*(v42 + 8))(v45, v43);
    }

    v47 = 0;
    goto LABEL_13;
  }

  v44 = sub_192033970(v41, &qword_1EADEF290, &qword_19222CA80);
LABEL_14:
  v50 = (*(v29 + 128))(v44);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  *&v69 = v40;
  sub_1921E3830(v50, sub_1921E1D3C, 0, v51, &v69);

  type metadata accessor for CFString(0);
  sub_1921E3E34(&qword_1ED74B7B8, 255, type metadata accessor for CFString, &unk_19222B3FC);
  v52 = sub_192227830();

  sub_192033970(v16, &qword_1EADEF290, &qword_19222CA80);
  v53 = sub_192076CDC();
  if (qword_1EADEE9D8 != -1)
  {
    swift_once();
  }

  v54 = sub_1922265A0();
  __swift_project_value_buffer(v54, qword_1EAE008D8);
  v55 = sub_192076F7C();
  v56 = CTFontDescriptorCreateWithTextStyleAndAttributes();

  return v56;
}

uint64_t sub_1921DD004(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v5 = v4;
  v55 = a4;
  v58 = *&a3;
  v53 = sub_192226DA0();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_192225D00();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v52 - v15;
  v16 = sub_192226600();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192226EB0();
  v20 = (*(v4 + 96))(a1, v19);
  (*(v17 + 8))(v19, v16);
  if (v55)
  {
    v58 = (*(v4 + 112))(a1);
  }

  sub_192226EA0();
  if (a2)
  {
    v21 = a2;
  }

  else
  {
    v22 = v52;
    v23 = v53;
    (*(v52 + 104))(v9, *MEMORY[0x1E6980E28], v53);
    v21 = sub_1920765C0();
    (*(v22 + 8))(v9, v23);
  }

  v24 = *(v4 + 120);
  v25 = a2;
  v26 = v24(v21, *&v58, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_192242920;
  v28 = *MEMORY[0x1E6965848];
  *(inited + 32) = *MEMORY[0x1E6965848];
  v29 = MEMORY[0x1E69E7DE0];
  *(inited + 40) = v20;
  v30 = *MEMORY[0x1E6965898];
  *(inited + 64) = v29;
  *(inited + 72) = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFED0, &unk_192231E40);
  *(inited + 80) = v26;
  v32 = *MEMORY[0x1E6965788];
  *(inited + 104) = v31;
  *(inited + 112) = v32;
  *(inited + 144) = MEMORY[0x1E69E6810];
  *(inited + 120) = 7;
  v33 = v28;
  v34 = v30;
  v35 = v32;
  v36 = sub_19207614C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF190, &qword_19222C030);
  swift_arrayDestroy();
  sub_19202CFFC(v59, v13, &qword_1EADEF290, &qword_19222CA80);
  v37 = v56;
  v38 = v57;
  if ((*(v56 + 48))(v13, 1, v57) == 1)
  {
    v39 = sub_192033970(v13, &qword_1EADEF290, &qword_19222CA80);
    goto LABEL_14;
  }

  v40 = v54;
  (*(v37 + 16))(v54, v13, v38);
  v41 = (*(v37 + 88))(v40, v38);
  if (v41 == *MEMORY[0x1E697E9F8])
  {
    goto LABEL_12;
  }

  if (v41 != *MEMORY[0x1E697E9F0])
  {
    (*(v37 + 8))(v40, v38);
LABEL_12:
    v42 = 0;
    goto LABEL_13;
  }

  v42 = 1;
LABEL_13:
  (*(v37 + 8))(v13, v38);
  v43 = *MEMORY[0x1E69657F0];
  v63 = MEMORY[0x1E69E6530];
  *&v62 = v42;
  sub_19203BEDC(&v62, v61);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = v36;
  v39 = sub_1920767A8(v61, v43, isUniquelyReferenced_nonNull_native);
  v36 = v60;
LABEL_14:
  v45 = (*(v5 + 128))(v39);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  *&v62 = v36;
  sub_1921E3830(v45, sub_1921E1D3C, 0, v46, &v62);

  type metadata accessor for CFString(0);
  sub_1921E3E34(&qword_1ED74B7B8, 255, type metadata accessor for CFString, &unk_19222B3FC);
  v47 = sub_192227830();

  sub_192033970(v59, &qword_1EADEF290, &qword_19222CA80);
  if (qword_1EADEE9D8 != -1)
  {
    swift_once();
  }

  v48 = sub_1922265A0();
  __swift_project_value_buffer(v48, qword_1EAE008D8);
  v49 = sub_192076F7C();
  v50 = CTFontDescriptorCreateWithTextStyleAndAttributes();

  return v50;
}

uint64_t sub_1921DD748(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v49 = a3;
  v50 = a2;
  v6 = sub_192226DA0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_192225D00();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC8, &qword_192242DC0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v51 = &v47 - v20;
  sub_192226EA0();
  v21 = *(v7 + 48);
  if (v21(a1, 1, v6) == 1)
  {
    (*(v7 + 104))(v9, *MEMORY[0x1E6980E28], v6);
    v15 = v9;
    goto LABEL_4;
  }

  sub_19202CFFC(a1, v15, &qword_1EADEFEC8, &qword_192242DC0);
  result = (v21)(v15, 1, v6);
  if (result != 1)
  {
LABEL_4:
    v23 = sub_1920765C0();
    (*(v7 + 8))(v15, v6);
    v24 = v52;
    v25 = (*(v52 + 120))(v23, v50, v49 & 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_192242920;
    v27 = *MEMORY[0x1E6965848];
    *(inited + 32) = *MEMORY[0x1E6965848];
    v28 = MEMORY[0x1E69E7DE0];
    *(inited + 40) = a4;
    v29 = *MEMORY[0x1E6965898];
    *(inited + 64) = v28;
    *(inited + 72) = v29;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFED0, &unk_192231E40);
    *(inited + 80) = v25;
    v31 = *MEMORY[0x1E6965788];
    *(inited + 104) = v30;
    *(inited + 112) = v31;
    *(inited + 144) = MEMORY[0x1E69E6810];
    *(inited + 120) = 7;
    v32 = v27;
    v33 = v29;
    v34 = v31;
    v35 = sub_19207614C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF190, &qword_19222C030);
    swift_arrayDestroy();
    v36 = v51;
    sub_19202CFFC(v51, v18, &qword_1EADEF290, &qword_19222CA80);
    if ((*(v11 + 48))(v18, 1, v10) == 1)
    {
      v37 = sub_192033970(v18, &qword_1EADEF290, &qword_19222CA80);
LABEL_12:
      v43 = (*(v24 + 128))(v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v55 = v35;
      sub_1921E3830(v43, sub_1921E1D3C, 0, isUniquelyReferenced_nonNull_native, &v55);

      type metadata accessor for CFString(0);
      sub_1921E3E34(&qword_1ED74B7B8, 255, type metadata accessor for CFString, &unk_19222B3FC);
      v45 = sub_192227830();

      sub_192033970(v36, &qword_1EADEF290, &qword_19222CA80);
      v46 = CTFontDescriptorCreateWithAttributesAndOptions();

      return v46;
    }

    v38 = v48;
    (*(v11 + 16))(v48, v18, v10);
    v39 = (*(v11 + 88))(v38, v10);
    if (v39 != *MEMORY[0x1E697E9F8])
    {
      if (v39 == *MEMORY[0x1E697E9F0])
      {
        v40 = 1;
LABEL_11:
        (*(v11 + 8))(v18, v10);
        v41 = *MEMORY[0x1E69657F0];
        v56 = MEMORY[0x1E69E6530];
        *&v55 = v40;
        sub_19203BEDC(&v55, v54);
        v42 = swift_isUniquelyReferenced_nonNull_native();
        v53 = v35;
        v37 = sub_1920767A8(v54, v41, v42);
        v35 = v53;
        goto LABEL_12;
      }

      (*(v11 + 8))(v38, v10);
    }

    v40 = 0;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1921DDDCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1921DC7E4(a1, a2, a3, a4 & 1);

  return sub_192226D70();
}

uint64_t sub_1921DDE1C(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  sub_1921DD004(a1, a2, a3, a4 & 1);

  return sub_192226D70();
}

double sub_1921DDE68(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226600();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_192226F10();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  v14 = 15.0;
  if (v13 != *MEMORY[0x1E6980EE8] && v13 != *MEMORY[0x1E6980F00] && v13 != *MEMORY[0x1E6980F08] && v13 != *MEMORY[0x1E6980F10])
  {
    v14 = 10.0;
    v18 = v13 == *MEMORY[0x1E6980F38] || v13 == *MEMORY[0x1E6980EF0];
    v19 = v18 || v13 == *MEMORY[0x1E6980EF8];
    if (!v19 && v13 != *MEMORY[0x1E6980F18])
    {
      v14 = 8.5;
      v21 = v13 == *MEMORY[0x1E6980F30] || v13 == *MEMORY[0x1E6980F20];
      if (!v21 && v13 != *MEMORY[0x1E6980F28])
      {
        (*(v9 + 8))(v12, v8);
        v14 = 10.0;
      }
    }
  }

  (*(v5 + 16))(v7, a2, v4);
  v23 = (*(v5 + 88))(v7, v4);
  v25 = 1.0;
  if (v23 != *MEMORY[0x1E697F8A8])
  {
    v25 = 1.1;
    if (v23 != *MEMORY[0x1E697F8C0])
    {
      if (v23 == *MEMORY[0x1E697F8B0])
      {
        v25 = 1.06;
      }

      else
      {
        v24.n128_u64[0] = 0x3FF30A3D70A3D70ALL;
        if (v23 == *MEMORY[0x1E697F8C8] || v23 == *MEMORY[0x1E697F8D8])
        {
          v25 = 1.19;
        }

        else if (v23 != *MEMORY[0x1E697F8B8])
        {
          if (v23 == *MEMORY[0x1E697F8D0])
          {
            v25 = 1.21;
          }

          else
          {
            v25 = 1.19;
            if (v23 != *MEMORY[0x1E697F8E0])
            {
              (*(v5 + 8))(v7, v4, 1.19, v24);
              v25 = 1.0;
            }
          }
        }
      }
    }
  }

  return v14 * v25;
}

double sub_1921DE1F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_192226600();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CFString(0);
  sub_1921E3E34(&qword_1ED74B7C0, 255, type metadata accessor for CFString, &unk_19222B3D0);
  v7 = sub_192225570();
  (*(v4 + 16))(v6, a2, v3);
  v8 = (*(v4 + 88))(v6, v3);
  v10 = 1.0;
  if (v8 != *MEMORY[0x1E697F8A8])
  {
    v10 = 1.1;
    if (v8 != *MEMORY[0x1E697F8C0])
    {
      if (v8 == *MEMORY[0x1E697F8B0])
      {
        v10 = 1.06;
      }

      else
      {
        v9.n128_u64[0] = 0x3FF30A3D70A3D70ALL;
        if (v8 == *MEMORY[0x1E697F8C8] || v8 == *MEMORY[0x1E697F8D8])
        {
          v10 = 1.19;
        }

        else if (v8 != *MEMORY[0x1E697F8B8])
        {
          if (v8 == *MEMORY[0x1E697F8D0])
          {
            v10 = 1.21;
          }

          else
          {
            v10 = 1.19;
            if (v8 != *MEMORY[0x1E697F8E0])
            {
              (*(v4 + 8))(v6, v3, 1.19, v9);
              v10 = 1.0;
            }
          }
        }
      }
    }
  }

  v12 = 10.0;
  if (v7)
  {
    v12 = 7.0;
  }

  return v12 * v10;
}

double sub_1921DE4C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226600();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_192226F10();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  v14 = 9.0;
  if (v13 != *MEMORY[0x1E6980EE8] && v13 != *MEMORY[0x1E6980F00] && v13 != *MEMORY[0x1E6980F08] && v13 != *MEMORY[0x1E6980F10])
  {
    v14 = 7.0;
    v18 = v13 == *MEMORY[0x1E6980F38] || v13 == *MEMORY[0x1E6980EF0];
    v19 = v18 || v13 == *MEMORY[0x1E6980EF8];
    if (!v19 && v13 != *MEMORY[0x1E6980F18])
    {
      v14 = 6.0;
      v21 = v13 == *MEMORY[0x1E6980F30] || v13 == *MEMORY[0x1E6980F20];
      if (!v21 && v13 != *MEMORY[0x1E6980F28])
      {
        (*(v9 + 8))(v12, v8);
        v14 = 7.0;
      }
    }
  }

  (*(v5 + 16))(v7, a2, v4);
  v23 = (*(v5 + 88))(v7, v4);
  v25 = 1.0;
  if (v23 != *MEMORY[0x1E697F8A8])
  {
    v25 = 1.1;
    if (v23 != *MEMORY[0x1E697F8C0])
    {
      if (v23 == *MEMORY[0x1E697F8B0])
      {
        v25 = 1.06;
      }

      else
      {
        v24.n128_u64[0] = 0x3FF30A3D70A3D70ALL;
        if (v23 == *MEMORY[0x1E697F8C8] || v23 == *MEMORY[0x1E697F8D8])
        {
          v25 = 1.19;
        }

        else if (v23 != *MEMORY[0x1E697F8B8])
        {
          if (v23 == *MEMORY[0x1E697F8D0])
          {
            v25 = 1.21;
          }

          else
          {
            v25 = 1.19;
            if (v23 != *MEMORY[0x1E697F8E0])
            {
              (*(v5 + 8))(v7, v4, 1.19, v24);
              v25 = 1.0;
            }
          }
        }
      }
    }
  }

  return v14 * v25;
}

double sub_1921DE848(uint64_t a1, uint64_t a2)
{
  v3 = sub_192226600();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CFString(0);
  sub_1921E3E34(&qword_1ED74B7C0, 255, type metadata accessor for CFString, &unk_19222B3D0);
  v7 = sub_192225570();
  (*(v4 + 16))(v6, a2, v3);
  v8 = (*(v4 + 88))(v6, v3);
  v10 = 1.0;
  if (v8 != *MEMORY[0x1E697F8A8])
  {
    v10 = 1.1;
    if (v8 != *MEMORY[0x1E697F8C0])
    {
      if (v8 == *MEMORY[0x1E697F8B0])
      {
        v10 = 1.06;
      }

      else
      {
        v9.n128_u64[0] = 0x3FF30A3D70A3D70ALL;
        if (v8 == *MEMORY[0x1E697F8C8] || v8 == *MEMORY[0x1E697F8D8])
        {
          v10 = 1.19;
        }

        else if (v8 != *MEMORY[0x1E697F8B8])
        {
          if (v8 == *MEMORY[0x1E697F8D0])
          {
            v10 = 1.21;
          }

          else
          {
            v10 = 1.19;
            if (v8 != *MEMORY[0x1E697F8E0])
            {
              (*(v4 + 8))(v6, v3, 1.19, v9);
              v10 = 1.0;
            }
          }
        }
      }
    }
  }

  v12 = 7.0;
  if (v7)
  {
    v12 = 5.0;
  }

  return v12 * v10;
}

uint64_t sub_1921DEAAC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  type metadata accessor for CFString(0);
  sub_1921E3E34(&qword_1ED74B7C0, 255, type metadata accessor for CFString, &unk_19222B3D0);
  if (sub_192225570())
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  return v3();
}

double sub_1921DEB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226600();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_192226F10();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == *MEMORY[0x1E6980EE8] || v13 == *MEMORY[0x1E6980F00] || v13 == *MEMORY[0x1E6980F08] || v13 == *MEMORY[0x1E6980F10])
  {
    v17 = 19.5;
  }

  else
  {
    v17 = 12.0;
    if (v13 != *MEMORY[0x1E6980F38] && v13 != *MEMORY[0x1E6980EF0] && v13 != *MEMORY[0x1E6980EF8] && v13 != *MEMORY[0x1E6980F18])
    {
      v17 = 10.5;
      v21 = v13 == *MEMORY[0x1E6980F30] || v13 == *MEMORY[0x1E6980F20];
      if (!v21 && v13 != *MEMORY[0x1E6980F28])
      {
        (*(v9 + 8))(v12, v8);
        v17 = 12.0;
      }
    }
  }

  (*(v5 + 16))(v7, a2, v4);
  v23 = (*(v5 + 88))(v7, v4);
  v25 = 1.0;
  if (v23 != *MEMORY[0x1E697F8A8])
  {
    v25 = 1.1;
    if (v23 != *MEMORY[0x1E697F8C0])
    {
      if (v23 == *MEMORY[0x1E697F8B0])
      {
        v25 = 1.06;
      }

      else
      {
        v24.n128_u64[0] = 0x3FF30A3D70A3D70ALL;
        if (v23 == *MEMORY[0x1E697F8C8] || v23 == *MEMORY[0x1E697F8D8])
        {
          v25 = 1.19;
        }

        else if (v23 != *MEMORY[0x1E697F8B8])
        {
          if (v23 == *MEMORY[0x1E697F8D0])
          {
            v25 = 1.21;
          }

          else
          {
            v25 = 1.19;
            if (v23 != *MEMORY[0x1E697F8E0])
            {
              (*(v5 + 8))(v7, v4, 1.19, v24);
              v25 = 1.0;
            }
          }
        }
      }
    }
  }

  return v17 * v25;
}

double sub_1921DEF24(uint64_t a1, uint64_t a2)
{
  v3 = sub_192226600();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CFString(0);
  sub_1921E3E34(&qword_1ED74B7C0, 255, type metadata accessor for CFString, &unk_19222B3D0);
  v7 = sub_192225570();
  (*(v4 + 16))(v6, a2, v3);
  v8 = (*(v4 + 88))(v6, v3);
  v10 = 1.0;
  if (v8 != *MEMORY[0x1E697F8A8])
  {
    v10 = 1.1;
    if (v8 != *MEMORY[0x1E697F8C0])
    {
      if (v8 == *MEMORY[0x1E697F8B0])
      {
        v10 = 1.06;
      }

      else
      {
        v9.n128_u64[0] = 0x3FF30A3D70A3D70ALL;
        if (v8 == *MEMORY[0x1E697F8C8] || v8 == *MEMORY[0x1E697F8D8])
        {
          v10 = 1.19;
        }

        else if (v8 != *MEMORY[0x1E697F8B8])
        {
          if (v8 == *MEMORY[0x1E697F8D0])
          {
            v10 = 1.21;
          }

          else
          {
            v10 = 1.19;
            if (v8 != *MEMORY[0x1E697F8E0])
            {
              (*(v4 + 8))(v6, v3, 1.19, v9);
              v10 = 1.0;
            }
          }
        }
      }
    }
  }

  v12 = 12.0;
  if (v7)
  {
    v12 = 7.5;
  }

  return v12 * v10;
}

uint64_t sub_1921DF1D0(uint64_t a1)
{
  v2 = sub_192226F10();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E6980EE8] || v7 == *MEMORY[0x1E6980F00] || v7 == *MEMORY[0x1E6980F08] || v7 == *MEMORY[0x1E6980F10])
  {
    return sub_192226E30();
  }

  if (v7 == *MEMORY[0x1E6980F38])
  {
    return sub_192226E40();
  }

  if (v7 == *MEMORY[0x1E6980EF0] || v7 == *MEMORY[0x1E6980EF8])
  {
    return sub_192226E30();
  }

  if (v7 == *MEMORY[0x1E6980F18])
  {
    return sub_192226E20();
  }

  v13 = v7 == *MEMORY[0x1E6980F30] || v7 == *MEMORY[0x1E6980F20];
  if (v13 || v7 == *MEMORY[0x1E6980F28])
  {
    return sub_192226E20();
  }

  sub_192226E30();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1921DF3C0(uint64_t a1)
{
  v2 = sub_192226F10();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E6980EE8])
  {
    return sub_192226E20();
  }

  if (v7 == *MEMORY[0x1E6980F00] || v7 == *MEMORY[0x1E6980F08])
  {
    return sub_192226E30();
  }

  if (v7 == *MEMORY[0x1E6980F10])
  {
    return sub_192226E20();
  }

  if (v7 == *MEMORY[0x1E6980F38])
  {
    return sub_192226E40();
  }

  if (v7 == *MEMORY[0x1E6980EF0])
  {
    return sub_192226E30();
  }

  if (v7 == *MEMORY[0x1E6980EF8] || v7 == *MEMORY[0x1E6980F18] || v7 == *MEMORY[0x1E6980F30] || v7 == *MEMORY[0x1E6980F20] || v7 == *MEMORY[0x1E6980F28])
  {
    return sub_192226E20();
  }

  sub_192226E30();
  return (*(v3 + 8))(v6, v2);
}

double sub_1921DF5B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226F10();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_192226600();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a2, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  v14 = 0.0;
  if (v13 != *MEMORY[0x1E697F898] && v13 != *MEMORY[0x1E697F8A0])
  {
    if (v13 == *MEMORY[0x1E697F8A8])
    {
      goto LABEL_6;
    }

    v14 = 17.0;
    if (v13 == *MEMORY[0x1E697F8C0])
    {
      goto LABEL_8;
    }

    if (v13 == *MEMORY[0x1E697F8B0])
    {
      goto LABEL_6;
    }

    if (v13 != *MEMORY[0x1E697F8C8] && v13 != *MEMORY[0x1E697F8D8])
    {
      if (v13 == *MEMORY[0x1E697F8B8])
      {
LABEL_6:
        v14 = 16.0;
        goto LABEL_8;
      }

      if (v13 != *MEMORY[0x1E697F8D0] && v13 != *MEMORY[0x1E697F8E0])
      {
        (*(v9 + 8))(v12, v8);
        goto LABEL_6;
      }
    }
  }

LABEL_8:
  (*(v5 + 104))(v7, *MEMORY[0x1E6980EF8], v4);
  sub_1921E2040(v7, a2);
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  return v14 / v17 * sub_1921E3B10(a1, a2);
}

uint64_t sub_1921DF874(uint64_t a1)
{
  v2 = sub_192226F10();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E6980EE8])
  {
    return sub_192226E20();
  }

  if (v7 == *MEMORY[0x1E6980F00] || v7 == *MEMORY[0x1E6980F08] || v7 == *MEMORY[0x1E6980F10])
  {
    return sub_192226E30();
  }

  if (v7 == *MEMORY[0x1E6980F38])
  {
    return sub_192226E40();
  }

  if (v7 == *MEMORY[0x1E6980EF0])
  {
    return sub_192226E30();
  }

  if (v7 == *MEMORY[0x1E6980EF8] || v7 == *MEMORY[0x1E6980F18] || v7 == *MEMORY[0x1E6980F30] || v7 == *MEMORY[0x1E6980F20] || v7 == *MEMORY[0x1E6980F28])
  {
    return sub_192226E20();
  }

  sub_192226E30();
  return (*(v3 + 8))(v6, v2);
}

double sub_1921DFA5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226600();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_192226F10();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 != *MEMORY[0x1E6980EE8] && v13 != *MEMORY[0x1E6980F00] && v13 != *MEMORY[0x1E6980F08] && v13 != *MEMORY[0x1E6980F10] && v13 != *MEMORY[0x1E6980F38] && v13 != *MEMORY[0x1E6980EF0] && v13 != *MEMORY[0x1E6980EF8] && v13 != *MEMORY[0x1E6980F18] && v13 != *MEMORY[0x1E6980F30] && v13 != *MEMORY[0x1E6980F20] && v13 != *MEMORY[0x1E6980F28])
  {
    (*(v9 + 8))(v12, v8);
  }

  (*(v5 + 16))(v7, a2, v4);
  v24 = (*(v5 + 88))(v7, v4);
  result = 8.5;
  if (v24 != *MEMORY[0x1E697F8A8])
  {
    result = 9.35;
    if (v24 != *MEMORY[0x1E697F8C0])
    {
      if (v24 == *MEMORY[0x1E697F8B0])
      {
        return 9.01;
      }

      else if (v24 == *MEMORY[0x1E697F8C8] || v24 == *MEMORY[0x1E697F8D8])
      {
        return 10.115;
      }

      else if (v24 != *MEMORY[0x1E697F8B8])
      {
        if (v24 == *MEMORY[0x1E697F8D0])
        {
          return 10.285;
        }

        else
        {
          result = 10.115;
          if (v24 != *MEMORY[0x1E697F8E0])
          {
            (*(v5 + 8))(v7, v4, 10.115, 10.115);
            return 8.5;
          }
        }
      }
    }
  }

  return result;
}

double sub_1921DFDC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_192226600();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CFString(0);
  sub_1921E3E34(&qword_1ED74B7C0, 255, type metadata accessor for CFString, &unk_19222B3D0);
  sub_192225570();
  (*(v4 + 16))(v6, a2, v3);
  v7 = (*(v4 + 88))(v6, v3);
  result = 8.5;
  if (v7 != *MEMORY[0x1E697F8A8])
  {
    result = 9.35;
    if (v7 != *MEMORY[0x1E697F8C0])
    {
      if (v7 == *MEMORY[0x1E697F8B0])
      {
        return 9.01;
      }

      else
      {
        v8.n128_u64[0] = 0x40243AE147AE147BLL;
        if (v7 == *MEMORY[0x1E697F8C8] || v7 == *MEMORY[0x1E697F8D8])
        {
          return 10.115;
        }

        else if (v7 != *MEMORY[0x1E697F8B8])
        {
          if (v7 == *MEMORY[0x1E697F8D0])
          {
            return 10.285;
          }

          else
          {
            result = 10.115;
            if (v7 != *MEMORY[0x1E697F8E0])
            {
              (*(v4 + 8))(v6, v3, 10.115, v8);
              return 8.5;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1921E0010(uint64_t a1)
{
  v2 = sub_192226F10();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = *(v3 + 88);
  v28 = v2;
  v8 = v7(v6, v2);
  v32 = *MEMORY[0x1E6980EE8];
  v31 = *MEMORY[0x1E6980F00];
  v30 = *MEMORY[0x1E6980F08];
  v29 = *MEMORY[0x1E6980F10];
  v9 = *MEMORY[0x1E6980F38];
  v10 = *MEMORY[0x1E6980EF0];
  v11 = *MEMORY[0x1E6980EF8];
  v12 = *MEMORY[0x1E6980F18];
  v13 = *MEMORY[0x1E6980F30];
  v14 = *MEMORY[0x1E6980F20];
  v15 = *MEMORY[0x1E6980F28];
  result = sub_192226E40();
  if (v8 != v32 && v8 != v31 && v8 != v30 && v8 != v29 && v8 != v9 && v8 != v10 && v8 != v11 && v8 != v12 && v8 != v13 && v8 != v14 && v8 != v15)
  {
    return (*(v3 + 8))(v6, v28);
  }

  return result;
}

uint64_t sub_1921E020C(uint64_t a1)
{
  type metadata accessor for CFString(0);
  sub_1921E3E34(&qword_1ED74B7C0, 255, type metadata accessor for CFString, &unk_19222B3D0);
  sub_192225570();

  return sub_192226E40();
}

uint64_t sub_1921E0404(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v8 = sub_192226F10();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == *MEMORY[0x1E6980EE8] || v13 == *MEMORY[0x1E6980F00] || v13 == *MEMORY[0x1E6980F08] || v13 == *MEMORY[0x1E6980F10])
  {
    return a3();
  }

  if (v13 == *MEMORY[0x1E6980F38])
  {
    return a4();
  }

  if (v13 == *MEMORY[0x1E6980EF0] || v13 == *MEMORY[0x1E6980EF8] || v13 == *MEMORY[0x1E6980F18])
  {
    return a2();
  }

  v20 = *MEMORY[0x1E6980F30];
  v21 = *MEMORY[0x1E6980F20];
  v22 = *MEMORY[0x1E6980F28];
  v23 = v13;
  result = a2();
  if (v23 != v20 && v23 != v21 && v23 != v22)
  {
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_1921E0618(uint64_t a1)
{
  v2 = sub_192226F10();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E6980EE8] || v7 == *MEMORY[0x1E6980F00] || v7 == *MEMORY[0x1E6980F08] || v7 == *MEMORY[0x1E6980F10])
  {
    return sub_192226E40();
  }

  if (v7 == *MEMORY[0x1E6980F38])
  {
    return sub_192226DD0();
  }

  if (v7 == *MEMORY[0x1E6980EF0] || v7 == *MEMORY[0x1E6980EF8])
  {
    return sub_192226E40();
  }

  if (v7 == *MEMORY[0x1E6980F18])
  {
    return sub_192226DD0();
  }

  v13 = *MEMORY[0x1E6980F30];
  v14 = *MEMORY[0x1E6980F20];
  v15 = *MEMORY[0x1E6980F28];
  v16 = v7;
  result = sub_192226E40();
  if (v16 != v13 && v16 != v14 && v16 != v15)
  {
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

unint64_t sub_1921E083C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19222B480;
  v3 = *MEMORY[0x1E69657A8];
  *(inited + 32) = *MEMORY[0x1E69657A8];
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  *(inited + 40) = a1;
  v4 = v3;
  v5 = sub_19207614C(inited);
  swift_setDeallocating();
  sub_192033970(inited + 32, &qword_1EADEF190, &qword_19222C030);
  return v5;
}

double View.defineFontsForSmartStack()(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for RectangularHomeScreenComplicationFontDefinition();
  sub_1921E3E34(&qword_1EADEFD80, v2, type metadata accessor for RectangularHomeScreenComplicationFontDefinition, &unk_192242D48);
  sub_192227040();

  return result;
}

unint64_t sub_1921E0C34()
{
  result = qword_1ED74BAD0;
  if (!qword_1ED74BAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFD68, &qword_1922360C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BAD0);
  }

  return result;
}

double sub_1921E0C98@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_192076274(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19213EF6C();
      v9 = v11;
    }

    sub_19203BEDC((*(v9 + 56) + 32 * v7), a2);
    sub_1921E16A0(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1921E0D38@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_19203CB7C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19213FBB0();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_1922285D0();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_19203BEDC((*(v9 + 56) + 32 * v7), a2);
    sub_1921E189C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1921E0E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1920440AC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19213FE34();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_192225150();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1921E1B50(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_192225150();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1921E0F84(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_192228310() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_192228AD0();

      sub_192140210(v20, v9);

      result = sub_192228B30();
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
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
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

void sub_1921E1120(int64_t a1, uint64_t a2)
{
  v39 = sub_192225020();
  v4 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_192226B30();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for SymbolLookupKey(0);
  v10 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2 + 64;
  v14 = -1 << *(a2 + 32);
  v15 = (a1 + 1) & ~v14;
  if ((*(a2 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v45 = v4;
    v16 = ~v14;
    v17 = sub_192228310();
    v46 = v16;
    v44 = (v17 + 1) & v16;
    v18 = *(v10 + 72);
    v41 = (v7 + 88);
    v42 = (v7 + 16);
    v40 = *MEMORY[0x1E697CAF0];
    v37 = *MEMORY[0x1E697CAF8];
    v19 = (v7 + 96);
    v20 = v18;
    v36 = (v45 + 32);
    v35 = (v45 + 8);
    v45 = a2 + 64;
    v43 = v18;
    do
    {
      v21 = v20 * v15;
      sub_1921E3D74(*(a2 + 48) + v20 * v15, v12);
      sub_192228AD0();
      (*v42)(v9, v12, v6);
      v22 = (*v41)(v9, v6);
      if (v22 == v40)
      {
        (*v19)(v9, v6);
        v23 = v38;
        v24 = v39;
        (*v36)(v38, v9, v39);
        sub_1921E3E34(&qword_1EADF0A38, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
        sub_192227890();
        (*v35)(v23, v24);
      }

      else
      {
        if (v22 != v37)
        {
          goto LABEL_25;
        }

        (*v19)(v9, v6);
        sub_192228AF0();
      }

      v25 = sub_192228B30();
      sub_1921E3DD8(v12);
      v26 = v25 & v46;
      if (a1 >= v44)
      {
        v13 = v45;
        v20 = v43;
        if (v26 < v44)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v13 = v45;
        v20 = v43;
        if (v26 >= v44)
        {
          goto LABEL_14;
        }
      }

      if (a1 >= v26)
      {
LABEL_14:
        if (v20 * a1 < v21 || *(a2 + 48) + v20 * a1 >= (*(a2 + 48) + v21 + v20))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v20 * a1 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v27 = *(a2 + 56);
        v28 = (v27 + 8 * a1);
        v29 = (v27 + 8 * v15);
        if (a1 != v15 || v28 >= v29 + 1)
        {
          *v28 = *v29;
          a1 = v15;
        }
      }

LABEL_4:
      v15 = (v15 + 1) & v46;
    }

    while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(a2 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
LABEL_25:
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_192228400();
    MEMORY[0x193B0A990](0xD00000000000004BLL, 0x800000019224B9D0);
    sub_1922285A0();
    sub_192228620();
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v32;
    ++*(a2 + 36);
  }
}

void sub_1921E16A0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_192228310() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_192228AD0();
      type metadata accessor for CFString(0);
      sub_1921E3E34(&qword_1ED74B7C0, 255, type metadata accessor for CFString, &unk_19222B3D0);
      v11 = v10;
      sub_192225580();
      v12 = sub_192228B30();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_1921E189C(int64_t a1, uint64_t a2)
{
  v4 = sub_1922285D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_192228310();
    v13 = v11;
    v38 = (v12 + 1) & v11;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = *(v14 + 56);
    v36 = (v14 - 8);
    v37 = v15;
    do
    {
      v16 = v8;
      v17 = v39 * v10;
      v18 = v13;
      v19 = v14;
      v37(v7, *(a2 + 48) + v39 * v10, v4);
      v20 = sub_192227880();
      (*v36)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v38)
      {
        if (v21 >= v38 && a1 >= v21)
        {
LABEL_15:
          v24 = *(a2 + 48);
          v25 = v24 + v39 * a1;
          v26 = v24 + v17 + v39;
          v27 = v39 * a1 < v17 || v25 >= v26;
          v14 = v19;
          if (v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v13 = v18;
            v8 = v16;
          }

          else
          {
            v28 = v39 * a1 == v17;
            v8 = v16;
            if (!v28)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v10);
          if (a1 != v10 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v38 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
      v8 = v16;
LABEL_4:
      v10 = (v10 + 1) & v13;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

void sub_1921E1B50(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_192228310() + 1) & ~v5;
    while (1)
    {
      sub_192228AD0();

      sub_1922279B0();
      v9 = sub_192228B30();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_192225150() - 8) + 72);
      v16 = v15 * v3;
      v17 = v14 + v15 * v3;
      v18 = v15 * v6;
      v19 = v14 + v15 * v6 + v15;
      if (v16 < v18 || v17 >= v19)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v18)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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
}

id sub_1921E1D3C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_19202A98C((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

id sub_1921E1D8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_19202A98C(*(v3 + 56) + 32 * v13, &v18);
    *&v21[0] = v14;
    sub_19203BEDC(&v18, (v21 + 8));
    result = v14;
    v16 = *&v21[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18 = v16;
      v19 = *(v21 + 8);
      v20 = *(&v21[1] + 8);
      v17(&v18);
      return sub_192033970(&v18, &qword_1EADF2058, &qword_192242DB8);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v21, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1921E1EDC(void *a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
  result = swift_initStackObject();
  *(result + 16) = xmmword_19222B490;
  v6 = *MEMORY[0x1E6965870];
  *(result + 32) = *MEMORY[0x1E6965870];
  *(result + 64) = MEMORY[0x1E69E6530];
  *(result + 40) = 0x8000;
  v7 = *MEMORY[0x1E69658E0];
  if (*MEMORY[0x1E69658E0])
  {
    *(result + 72) = v7;
    v8 = result;
    type metadata accessor for CFString(0);
    *(v8 + 104) = v9;
    *(v8 + 80) = a1;
    v10 = v6;
    v11 = a1;
    v12 = v7;
    v13 = sub_19207614C(v8);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF190, &qword_19222C030);
    swift_arrayDestroy();
    if ((a3 & 1) == 0)
    {
      v14 = sub_192198CD8();
      v15 = *MEMORY[0x1E6965970];
      v19 = MEMORY[0x1E69E7DE0];
      v18[0] = v14;
      sub_19203BEDC(v18, v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1920767A8(v17, v15, isUniquelyReferenced_nonNull_native);
    }

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1921E2040(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226600();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v30 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = sub_192226F10();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v16, v18);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == *MEMORY[0x1E6980EE8])
  {
    (*(v5 + 16))(v15, a2, v4);
    result = (*(v5 + 88))(v15, v4);
    v23 = result == *MEMORY[0x1E697F898] || result == *MEMORY[0x1E697F8A0];
    if (!v23 && result != *MEMORY[0x1E697F8A8] && result != *MEMORY[0x1E697F8C0] && result != *MEMORY[0x1E697F8B0] && result != *MEMORY[0x1E697F8C8] && result != *MEMORY[0x1E697F8D8] && result != *MEMORY[0x1E697F8B8] && result != *MEMORY[0x1E697F8D0] && result != *MEMORY[0x1E697F8E0])
    {
      return (*(v5 + 8))(v15, v4, 26.0);
    }

    return result;
  }

  if (v21 == *MEMORY[0x1E6980F00] || v21 == *MEMORY[0x1E6980F08] || v21 == *MEMORY[0x1E6980F10])
  {
    goto LABEL_25;
  }

  v26 = v21 == *MEMORY[0x1E6980F38] || v21 == *MEMORY[0x1E6980EF0];
  if (v26 || v21 == *MEMORY[0x1E6980EF8])
  {
    goto LABEL_25;
  }

  if (v21 == *MEMORY[0x1E6980F18])
  {
    (*(v5 + 16))(v12, a2, v4);
    result = (*(v5 + 88))(v12, v4);
    if (result != *MEMORY[0x1E697F898] && result != *MEMORY[0x1E697F8A0] && result != *MEMORY[0x1E697F8A8] && result != *MEMORY[0x1E697F8C0] && result != *MEMORY[0x1E697F8B0] && result != *MEMORY[0x1E697F8C8] && result != *MEMORY[0x1E697F8D8] && result != *MEMORY[0x1E697F8B8] && result != *MEMORY[0x1E697F8D0] && result != *MEMORY[0x1E697F8E0])
    {
      return (*(v5 + 8))(v12, v4, 15.5);
    }

    return result;
  }

  if (v21 == *MEMORY[0x1E6980F30])
  {
LABEL_25:
    v28 = a2;
  }

  else
  {
    v28 = a2;
    if (v21 == *MEMORY[0x1E6980F20])
    {
      v29 = v31;
      (*(v5 + 16))(v31, v28, v4);
      result = (*(v5 + 88))(v29, v4);
      if (result != *MEMORY[0x1E697F898] && result != *MEMORY[0x1E697F8A0] && result != *MEMORY[0x1E697F8A8] && result != *MEMORY[0x1E697F8C0] && result != *MEMORY[0x1E697F8B0] && result != *MEMORY[0x1E697F8C8] && result != *MEMORY[0x1E697F8D8] && result != *MEMORY[0x1E697F8B8] && result != *MEMORY[0x1E697F8D0] && result != *MEMORY[0x1E697F8E0])
      {
        return (*(v5 + 8))(v29, v4, 10.0);
      }

      return result;
    }

    if (v21 != *MEMORY[0x1E6980F28])
    {
      (*(v17 + 8))(v20, v16);
      v28 = a2;
    }
  }

  (*(v5 + 16))(v7, v28, v4);
  result = (*(v5 + 88))(v7, v4);
  if (result != *MEMORY[0x1E697F8A8] && result != *MEMORY[0x1E697F8C0] && result != *MEMORY[0x1E697F8B0] && result != *MEMORY[0x1E697F8C8] && result != *MEMORY[0x1E697F8D8] && result != *MEMORY[0x1E697F8B8] && result != *MEMORY[0x1E697F8D0] && result != *MEMORY[0x1E697F8E0])
  {
    return (*(v5 + 8))(v7, v4, 1.19, 1.19);
  }

  return result;
}

uint64_t sub_1921E27F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226600();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v43 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v43 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v43 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v22 = sub_192226F10();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v44 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v43 - v27;
  v29 = *(v23 + 16);
  v45 = a1;
  v29(&v43 - v27, a1, v22, v26);
  v30 = (*(v23 + 88))(v28, v22);
  if (v30 == *MEMORY[0x1E6980EE8] || v30 == *MEMORY[0x1E6980F00])
  {
    (*(v5 + 16))(v21, a2, v4);
    result = (*(v5 + 88))(v21, v4);
    v33 = result == *MEMORY[0x1E697F898] || result == *MEMORY[0x1E697F8A0];
    if (!v33 && result != *MEMORY[0x1E697F8A8] && result != *MEMORY[0x1E697F8C0] && result != *MEMORY[0x1E697F8B0] && result != *MEMORY[0x1E697F8C8] && result != *MEMORY[0x1E697F8D8] && result != *MEMORY[0x1E697F8B8] && result != *MEMORY[0x1E697F8D0] && result != *MEMORY[0x1E697F8E0])
    {
      return (*(v5 + 8))(v21, v4, 41.5);
    }
  }

  else if (v30 == *MEMORY[0x1E6980F08] || v30 == *MEMORY[0x1E6980F10])
  {
    (*(v5 + 16))(v18, a2, v4);
    result = (*(v5 + 88))(v18, v4);
    if (result != *MEMORY[0x1E697F898] && result != *MEMORY[0x1E697F8A0] && result != *MEMORY[0x1E697F8A8] && result != *MEMORY[0x1E697F8C0] && result != *MEMORY[0x1E697F8B0] && result != *MEMORY[0x1E697F8C8] && result != *MEMORY[0x1E697F8D8] && result != *MEMORY[0x1E697F8B8] && result != *MEMORY[0x1E697F8D0] && result != *MEMORY[0x1E697F8E0])
    {
      return (*(v5 + 8))(v18, v4, 26.0);
    }
  }

  else
  {
    v35 = *MEMORY[0x1E6980EF8];
    if (v30 == *MEMORY[0x1E6980F38] || v30 == v35)
    {
      (*(v5 + 16))(v15, a2, v4);
      result = (*(v5 + 88))(v15, v4);
      if (result != *MEMORY[0x1E697F898] && result != *MEMORY[0x1E697F8A0] && result != *MEMORY[0x1E697F8A8] && result != *MEMORY[0x1E697F8C0] && result != *MEMORY[0x1E697F8B0] && result != *MEMORY[0x1E697F8C8] && result != *MEMORY[0x1E697F8D8] && result != *MEMORY[0x1E697F8B8] && result != *MEMORY[0x1E697F8D0] && result != *MEMORY[0x1E697F8E0])
      {
        return (*(v5 + 8))(v15, v4, 17.0);
      }
    }

    else if (v30 == *MEMORY[0x1E6980F18])
    {
      v37 = v48;
      (*(v5 + 16))(v48, a2, v4);
      result = (*(v5 + 88))(v37, v4);
      if (result != *MEMORY[0x1E697F898] && result != *MEMORY[0x1E697F8A0] && result != *MEMORY[0x1E697F8A8] && result != *MEMORY[0x1E697F8C0] && result != *MEMORY[0x1E697F8B0] && result != *MEMORY[0x1E697F8C8] && result != *MEMORY[0x1E697F8D8] && result != *MEMORY[0x1E697F8B8] && result != *MEMORY[0x1E697F8D0] && result != *MEMORY[0x1E697F8E0])
      {
        return (*(v5 + 8))(v37, v4, 14.0);
      }
    }

    else if (v30 == *MEMORY[0x1E6980F20])
    {
      v38 = v47;
      (*(v5 + 16))(v47, a2, v4);
      result = (*(v5 + 88))(v38, v4);
      if (result != *MEMORY[0x1E697F898] && result != *MEMORY[0x1E697F8A0] && result != *MEMORY[0x1E697F8A8] && result != *MEMORY[0x1E697F8C0] && result != *MEMORY[0x1E697F8B0] && result != *MEMORY[0x1E697F8C8] && result != *MEMORY[0x1E697F8D8] && result != *MEMORY[0x1E697F8B8] && result != *MEMORY[0x1E697F8D0] && result != *MEMORY[0x1E697F8E0])
      {
        return (*(v5 + 8))(v38, v4, 10.5);
      }
    }

    else if (v30 == *MEMORY[0x1E6980F28])
    {
      v39 = v43;
      (*(v5 + 16))(v43, a2, v4);
      result = (*(v5 + 88))(v39, v4);
      if (result != *MEMORY[0x1E697F898] && result != *MEMORY[0x1E697F8A0] && result != *MEMORY[0x1E697F8A8] && result != *MEMORY[0x1E697F8C0] && result != *MEMORY[0x1E697F8B0] && result != *MEMORY[0x1E697F8C8] && result != *MEMORY[0x1E697F8D8] && result != *MEMORY[0x1E697F8B8] && result != *MEMORY[0x1E697F8D0] && result != *MEMORY[0x1E697F8E0])
      {
        return (*(v5 + 8))(v39, v4, 15.0);
      }
    }

    else
    {
      v48 = *(v23 + 8);
      (v48)(v28, v22);
      v40 = v46;
      (*(v5 + 16))(v46, a2, v4);
      v41 = (*(v5 + 88))(v40, v4);
      if (v41 != *MEMORY[0x1E697F898] && v41 != *MEMORY[0x1E697F8A0] && v41 != *MEMORY[0x1E697F8A8] && v41 != *MEMORY[0x1E697F8C0] && v41 != *MEMORY[0x1E697F8B0] && v41 != *MEMORY[0x1E697F8C8] && v41 != *MEMORY[0x1E697F8D8] && v41 != *MEMORY[0x1E697F8B8] && v41 != *MEMORY[0x1E697F8D0] && v41 != *MEMORY[0x1E697F8E0])
      {
        (*(v5 + 8))(v46, v4);
      }

      v42 = v44;
      (*(v23 + 104))(v44, v35, v22);
      sub_1921E2040(v42, a2);
      (v48)(v42, v22);
      return sub_1921E2040(v45, a2);
    }
  }

  return result;
}

unint64_t sub_1921E343C(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
  result = swift_initStackObject();
  *(result + 16) = xmmword_192242920;
  v4 = *MEMORY[0x1E6965870];
  *(result + 32) = *MEMORY[0x1E6965870];
  *(result + 64) = MEMORY[0x1E69E6530];
  *(result + 40) = 0x8000;
  v5 = *MEMORY[0x1E69658E0];
  if (!*MEMORY[0x1E69658E0])
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  *(result + 72) = v5;
  v7 = *MEMORY[0x1E69658A0];
  if (!*MEMORY[0x1E69658A0])
  {
LABEL_7:
    __break(1u);
    return result;
  }

  type metadata accessor for CFString(0);
  v6[10] = v7;
  v8 = *MEMORY[0x1E6965970];
  v9 = MEMORY[0x1E6965960];
  v6[13] = v10;
  v6[14] = v8;
  v11 = *v9;
  v12 = MEMORY[0x1E69E7DE0];
  v6[18] = MEMORY[0x1E69E7DE0];
  v6[15] = v11;
  v13 = v4;
  v14 = v8;
  v15 = v5;
  v16 = v7;
  v17 = sub_19207614C(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF190, &qword_19222C030);
  swift_arrayDestroy();
  if ((a2 & 1) == 0)
  {
    v21 = v12;
    *&v20 = sub_192198CD8();
    sub_19203BEDC(&v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1920767A8(v19, v14, isUniquelyReferenced_nonNull_native);
  }

  return v17;
}

unint64_t sub_1921E35D4(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
  result = swift_initStackObject();
  *(result + 16) = xmmword_19222B490;
  v4 = *MEMORY[0x1E6965870];
  *(result + 32) = *MEMORY[0x1E6965870];
  *(result + 64) = MEMORY[0x1E69E6530];
  *(result + 40) = 0x8000;
  v5 = *MEMORY[0x1E69658E0];
  if (!*MEMORY[0x1E69658E0])
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  *(result + 72) = v5;
  v7 = *MEMORY[0x1E69658A0];
  if (!*MEMORY[0x1E69658A0])
  {
LABEL_7:
    __break(1u);
    return result;
  }

  type metadata accessor for CFString(0);
  *(v6 + 104) = v8;
  *(v6 + 80) = v7;
  v9 = v4;
  v10 = v5;
  v11 = v7;
  v12 = sub_19207614C(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF190, &qword_19222C030);
  swift_arrayDestroy();
  if ((a2 & 1) == 0)
  {
    v13 = sub_192198CD8();
    v14 = *MEMORY[0x1E6965970];
    v18 = MEMORY[0x1E69E7DE0];
    v17[0] = v13;
    sub_19203BEDC(v17, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1920767A8(v16, v14, isUniquelyReferenced_nonNull_native);
  }

  return v12;
}

unint64_t sub_1921E3748(void *a1, uint64_t a2, char a3)
{
  result = sub_1921E1EDC(a1, a2, a3 & 1);
  v15 = result;
  v4 = *MEMORY[0x1E69658E0];
  if (*MEMORY[0x1E69658E0])
  {
    v5 = *MEMORY[0x1E69658A8];
    if (*MEMORY[0x1E69658A8])
    {
      v6 = result;
      type metadata accessor for CFString(0);
      v14 = v7;
      *&v13 = v5;
      sub_19203BEDC(&v13, v12);
      v8 = v4;
      v9 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1920767A8(v12, v8, isUniquelyReferenced_nonNull_native);

      return v6;
    }

    else
    {
      v11 = v4;
      sub_1921E0C98(v11, &v13);

      sub_192033970(&v13, &unk_1EADEF330, &unk_19222CD40);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1921E3830(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v43 = a1;
  v44 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v45 = v8;
  v46 = 0;
  v47 = v11 & v9;
  v48 = a2;
  v49 = a3;

  sub_1921E1D8C(&v41);
  v12 = v41;
  if (!v41)
  {
    goto LABEL_25;
  }

  sub_19203BEDC(v42, v40);
  v13 = *a5;
  v14 = sub_192076274(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_1920768E8(v19, a4 & 1);
    v14 = sub_192076274(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for CFString(0);
    v14 = sub_192228A40();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = v14;
    sub_19213EF6C();
    v14 = v25;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    v23 = v14;

    v24 = (v22[7] + 32 * v23);
    __swift_destroy_boxed_opaque_existential_1(v24);
    sub_19203BEDC(v40, v24);
    goto LABEL_15;
  }

LABEL_13:
  v22[(v14 >> 6) + 8] |= 1 << v14;
  *(v22[6] + 8 * v14) = v12;
  sub_19203BEDC(v40, (v22[7] + 32 * v14));
  v26 = v22[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v18)
  {
    v22[2] = v27;
LABEL_15:
    sub_1921E1D8C(&v41);
    v12 = v41;
    if (v41)
    {
      v20 = 1;
      do
      {
        sub_19203BEDC(v42, v40);
        v30 = *a5;
        v31 = sub_192076274(v12);
        v33 = v30[2];
        v34 = (v32 & 1) == 0;
        v18 = __OFADD__(v33, v34);
        v35 = v33 + v34;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v32;
        if (v30[3] < v35)
        {
          sub_1920768E8(v35, 1);
          v31 = sub_192076274(v12);
          if ((a4 & 1) != (v36 & 1))
          {
            goto LABEL_8;
          }
        }

        v37 = *a5;
        if (a4)
        {
          v28 = v31;

          v29 = (v37[7] + 32 * v28);
          __swift_destroy_boxed_opaque_existential_1(v29);
          sub_19203BEDC(v40, v29);
        }

        else
        {
          v37[(v31 >> 6) + 8] |= 1 << v31;
          *(v37[6] + 8 * v31) = v12;
          sub_19203BEDC(v40, (v37[7] + 32 * v31));
          v38 = v37[2];
          v18 = __OFADD__(v38, 1);
          v39 = v38 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v37[2] = v39;
        }

        sub_1921E1D8C(&v41);
        v12 = v41;
      }

      while (v41);
    }

LABEL_25:
    sub_19204C3D0(v43);

    return;
  }

LABEL_27:
  __break(1u);
}

double sub_1921E3B10(uint64_t a1, uint64_t a2)
{
  v3 = sub_192226600();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CFString(0);
  sub_1921E3E34(&qword_1ED74B7C0, 255, type metadata accessor for CFString, &unk_19222B3D0);
  v7 = sub_192225570();
  (*(v4 + 16))(v6, a2, v3);
  v8 = (*(v4 + 88))(v6, v3);
  v10 = 1.0;
  if (v8 != *MEMORY[0x1E697F8A8])
  {
    v10 = 1.1;
    if (v8 != *MEMORY[0x1E697F8C0])
    {
      if (v8 == *MEMORY[0x1E697F8B0])
      {
        v10 = 1.06;
      }

      else
      {
        v9.n128_u64[0] = 0x3FF30A3D70A3D70ALL;
        if (v8 == *MEMORY[0x1E697F8C8] || v8 == *MEMORY[0x1E697F8D8])
        {
          v10 = 1.19;
        }

        else if (v8 != *MEMORY[0x1E697F8B8])
        {
          if (v8 == *MEMORY[0x1E697F8D0])
          {
            v10 = 1.21;
          }

          else
          {
            v10 = 1.19;
            if (v8 != *MEMORY[0x1E697F8E0])
            {
              (*(v4 + 8))(v6, v3, 1.19, v9);
              v10 = 1.0;
            }
          }
        }
      }
    }
  }

  v12 = 16.0;
  if (v7)
  {
    v12 = 11.5;
  }

  return v12 * v10;
}

uint64_t sub_1921E3D74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolLookupKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1921E3DD8(uint64_t a1)
{
  v2 = type metadata accessor for SymbolLookupKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1921E3E34(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void ActivityPreviewContext.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v108 = a3;
  v109 = a4;
  v110 = a5;
  v7 = type metadata accessor for ActivityPreviewContextKey(0);
  MEMORY[0x1EEE9AC00](v7);
  v102 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v99 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v77 - v12;
  v14 = sub_1922253B0();
  v100 = *(v14 - 8);
  v101 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 16);
  v17 = *(a2 + 24);
  v20 = type metadata accessor for ActivityViewContext(0, v18, v17, v19);
  v106 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v77 - v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v28);
  if (v7 == a1)
  {
    v95 = v30;
    v93 = v17;
    v88 = a1;
    v105 = v34;
    v86 = v13;
    v103 = v32;
    v104 = v29;
    v98 = v22;
    v96 = v20;
    v87 = v16;
    v85 = v7;
    v36 = xmmword_1ED74CC80;
    if (xmmword_1ED74CC80)
    {
      v94 = qword_1ED74CC90;
      v92 = v33;
      *&v91 = *(v33 + 16);
      v37 = &v77 - v31;
      v38 = v107;
      v90 = v18;
      (v91)(&v77 - v31, v107, v18, v35);
      v39 = v104;
      v40 = *(v103 + 16);
      v41 = v105;
      v40(v105, v38 + *(a2 + 36), v104);
      v84 = a2;
      LODWORD(v38) = *(v38 + *(a2 + 40));
      v89 = "ed";
      v97 = v37;
      v42 = v90;
      (v91)(v27, v37, v90);
      v43 = v94;
      v44 = v95;
      v40(v95, v41, v39);
      v45 = v27;
      v46 = v98;
      v47 = v44;
      v48 = v42;
      v49 = v93;
      sub_192100360(0xD000000000000016, v89 | 0x8000000000000000, v45, v47, v38, v42, v93, v98);
      v50 = *v36;
      v111 = v36;
      v51 = *(v43 + 56);
      v95 = v36;
      v52 = v48;

      v51(&v112, v46, v48, v49, v50, v43);
      v83 = v50;
      LODWORD(v89) = v38;
      v53 = v112;
      v91 = v113;
      v54 = v114;
      sub_192224DB0();
      swift_allocObject();
      sub_192224DA0();
      v80 = sub_192224D90();
      v81 = v55;
      v79 = v53;
      v82 = v54;
      swift_getAssociatedConformanceWitness();
      v56 = sub_192224D90();
      v88 = v57;
      v78 = v56;
      v112 = v95;
      v58 = (*(v94 + 64))(v83);
      v59 = v87;
      v60 = sub_1922253A0();
      MEMORY[0x1EEE9AC00](v60);
      *(&v77 - 2) = v59;
      v61 = v86;
      sub_1920BBEE4(sub_1921E4CCC, v58, v86);

      v62 = v99;
      sub_19202CFFC(v61, v99, &qword_1EADEEE20, &qword_19222B670);
      v63 = type metadata accessor for WidgetDescriptor(0);
      if ((*(*(v63 - 8) + 48))(v62, 1, v63) == 1)
      {
        sub_192033970(v62, &qword_1EADEEE20, &qword_19222B670);
        v64 = &unk_1F06A91A8;
      }

      else
      {
        v64 = *(v62 + *(v63 + 32));

        sub_192036A20(v62, type metadata accessor for WidgetDescriptor);
      }

      v65 = v107;
      v66 = v85;
      v68 = v101;
      v67 = v102;
      v69 = v82;

      sub_192033970(v86, &qword_1EADEEE20, &qword_19222B670);
      (*(v106 + 8))(v98, v96);
      (*(v103 + 8))(v105, v104);
      (*(v92 + 8))(v97, v52);
      v70 = v100;
      v71 = v87;
      (*(v100 + 16))(&v67[v66[5]], v87, v68);
      v72 = *(v65 + *(v84 + 44));
      *v67 = v79;
      *(v67 + 8) = v91;
      *(v67 + 3) = v69;
      v73 = &v67[v66[6]];
      v74 = v81;
      *v73 = v80;
      v73[1] = v74;
      v75 = &v67[v66[7]];
      v76 = v88;
      *v75 = v78;
      v75[1] = v76;
      v67[v66[8]] = v89;
      v67[v66[9]] = v72;
      *&v67[v66[10]] = v64;
      swift_getAssociatedTypeWitness();
      swift_dynamicCast();
      (*(v70 + 8))(v71, v68);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_192226320();
  }
}

uint64_t type metadata accessor for ActivityPreviewContextKey(uint64_t a1)
{
  result = qword_1EADF2110;
  if (!qword_1EADF2110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1921E4930(uint64_t a1)
{
  v2 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0900, &unk_192235BA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v20 - v6;
  sub_192038FB8(a1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v9 = sub_1922253B0();
      (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
      sub_192036A20(v4, type metadata accessor for ViewSource);
      goto LABEL_7;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

    v9 = sub_1922253B0();
    v10 = *(v9 - 8);
    (*(v10 + 32))(v7, v4, v9);
    (*(v10 + 56))(v7, 0, 1, v9);
    goto LABEL_7;
  }

  sub_192036A20(v4, type metadata accessor for ViewSource);
  v9 = sub_1922253B0();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
LABEL_7:
  sub_1922253B0();
  v11 = *(v9 - 8);
  if ((*(v11 + 48))(v7, 1, v9) == 1)
  {
    sub_192033970(v7, &qword_1EADF0900, &unk_192235BA0);
    sub_192225370();
    v12 = 0;
  }

  else
  {
    v13 = sub_192225370();
    v15 = v14;
    (*(v11 + 8))(v7, v9);
    v16 = sub_192225370();
    if (v15)
    {
      if (v13 == v16 && v15 == v17)
      {

        v12 = 1;
      }

      else
      {
        v12 = sub_1922289A0();
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12 & 1;
}

uint64_t sub_1921E4CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a4;
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  v14 = type metadata accessor for ActivityPreviewContext(0, a5, a6, v13);
  v15 = v14[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a7 + v15, a2, AssociatedTypeWitness);
  *(a7 + v14[10]) = a3;
  *(a7 + v14[11]) = v12;
  return result;
}

void ActivityPreviewContentCategory.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_192228700();

  *a3 = v4 != 0;
}

uint64_t sub_1921E4E54()
{
  sub_192228AD0();
  sub_1922279B0();
  return sub_192228B30();
}

uint64_t sub_1921E4EC8()
{
  sub_192228AD0();
  sub_1922279B0();
  return sub_192228B30();
}

void sub_1921E4F1C(BOOL *a2@<X8>)
{
  v3 = sub_192228700();

  *a2 = v3 != 0;
}

uint64_t sub_1921E4F90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2078, &qword_192242DC8);
  __swift_allocate_value_buffer(v0, qword_1EADF2060);
  v1 = __swift_project_value_buffer(v0, qword_1EADF2060);
  v2 = type metadata accessor for ActivityPreviewContextKey(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t static ActivityPreviewContextKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADEE9E0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2078, &qword_192242DC8);
  v3 = __swift_project_value_buffer(v2, qword_1EADF2060);
  swift_beginAccess();
  return sub_19202CFFC(v3, a1, &qword_1EADF2078, &qword_192242DC8);
}

uint64_t static ActivityPreviewContextKey.defaultValue.setter(uint64_t a1)
{
  if (qword_1EADEE9E0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2078, &qword_192242DC8);
  v3 = __swift_project_value_buffer(v2, qword_1EADF2060);
  swift_beginAccess();
  sub_1921E51A0(a1, v3);
  swift_endAccess();
  return sub_192033970(a1, &qword_1EADF2078, &qword_192242DC8);
}

uint64_t sub_1921E51A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2078, &qword_192242DC8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*static ActivityPreviewContextKey.defaultValue.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EADEE9E0 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2078, &qword_192242DC8);
  __swift_project_value_buffer(v1, qword_1EADF2060);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1921E52B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADEE9E0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2078, &qword_192242DC8);
  v3 = __swift_project_value_buffer(v2, qword_1EADF2060);
  swift_beginAccess();
  return sub_19202CFFC(v3, a1, &qword_1EADF2078, &qword_192242DC8);
}

uint64_t sub_1921E5360(uint64_t a1)
{
  if (qword_1EADEE9E0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2078, &qword_192242DC8);
  v3 = __swift_project_value_buffer(v2, qword_1EADF2060);
  swift_beginAccess();
  sub_1921E51A0(a1, v3);
  return swift_endAccess();
}

uint64_t ActivityPreviewContextKey.viewSource.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
}

uint64_t ActivityPreviewContextKey.attributesType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityPreviewContextKey(0) + 20);
  v4 = sub_1922253B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActivityPreviewContextKey.attributesData.getter()
{
  v1 = v0 + *(type metadata accessor for ActivityPreviewContextKey(0) + 24);
  v2 = *v1;
  sub_1920367C8(*v1, *(v1 + 8));
  return v2;
}

uint64_t ActivityPreviewContextKey.contentStatePayload.getter()
{
  v1 = v0 + *(type metadata accessor for ActivityPreviewContextKey(0) + 28);
  v2 = *v1;
  sub_1920367C8(*v1, *(v1 + 8));
  return v2;
}

uint64_t ActivityPreviewContextKey.viewKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ActivityPreviewContextKey(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

double ActivityPreviewContextKey.supportedFamilies.getter()
{
  type metadata accessor for ActivityPreviewContextKey(0);

  return result;
}

uint64_t ActivityPreviewViewKind.DynamicIslandPreviewViewState.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

double ActivityAttributes.previewContext(_:isStale:viewKind:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a1;
  v27 = a2;
  v28 = a6;
  v23 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v23 - v10;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ActivityPreviewContext(0, a4, a5, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - v19;
  v21 = *a3;
  v30 = sub_192227240();
  (*(v12 + 16))(v15, v25, a4);
  (*(v9 + 16))(v11, v26, AssociatedTypeWitness);
  v29 = v21;
  sub_1921E4CEC(v15, v11, v27, &v29, a4, v23, v20);
  swift_getWitnessTable();
  sub_192227090();
  (*(v18 + 8))(v20, v17);

  return result;
}

unint64_t sub_1921E5960()
{
  result = qword_1EADF2080;
  if (!qword_1EADF2080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2080);
  }

  return result;
}

unint64_t sub_1921E59B8()
{
  result = qword_1EADF2088[0];
  if (!qword_1EADF2088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADF2088);
  }

  return result;
}

uint64_t sub_1921E5A0C(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1921E5ACC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v6 + 64) + v12;
  if (a2 > v11)
  {
    v15 = v13 + (v14 & ~v12) + 2;
    v16 = 8 * v15;
    if (v15 > 3)
    {
      goto LABEL_9;
    }

    v18 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

    if (v18 >= 2)
    {
LABEL_9:
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_29;
      }

LABEL_16:
      v19 = (v17 - 1) << v16;
      if (v15 > 3)
      {
        v19 = 0;
      }

      if (v15)
      {
        if (v15 <= 3)
        {
          v20 = v15;
        }

        else
        {
          v20 = 4;
        }

        if (v20 > 2)
        {
          if (v20 == 3)
          {
            v21 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v21 = *a1;
          }
        }

        else if (v20 == 1)
        {
          v21 = *a1;
        }

        else
        {
          v21 = *a1;
        }
      }

      else
      {
        v21 = 0;
      }

      v27 = v11 + (v21 | v19);
      return (v27 + 1);
    }
  }

LABEL_29:
  if (v7 == v11)
  {
    v22 = *(v6 + 48);

    return v22(a1, v7, v5);
  }

  v24 = (a1 + v14) & ~v12;
  if (v10 != v11)
  {
    v26 = *(v24 + v13);
    if (v26 < 2)
    {
      return 0;
    }

    v27 = (v26 + 2147483646) & 0x7FFFFFFF;
    return (v27 + 1);
  }

  v25 = *(v9 + 48);

  return v25(v24);
}

void sub_1921E5D74(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v13 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = v13;
  }

  v17 = *(v8 + 64) + v14;
  v18 = v15 + (v17 & ~v14) + 2;
  if (a3 <= v16)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v16 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
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

  if (v16 < a2)
  {
    v20 = ~v16 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v15 + (v17 & ~v14) != -2)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_51:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v18] = 0;
  }

  else if (v19)
  {
    a1[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v9 == v16)
  {
    v25 = *(v28 + 56);

    v25(a1, a2, v9, v7);
  }

  else
  {
    v26 = &a1[v17] & ~v14;
    if (v12 == v16)
    {
      v27 = *(v11 + 56);

      v27(v26, a2);
    }

    else
    {
      *(v26 + v15) = a2 + 1;
    }
  }
}

void sub_1921E60D8(uint64_t a1, __n128 a2)
{
  sub_1922253B0();
  if (v2 <= 0x3F)
  {
    sub_1920B9710();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for ActivityPreviewViewKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ActivityPreviewViewKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1921E62E4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1921E62F8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_1921E6328()
{
  result = qword_1EADF2120;
  if (!qword_1EADF2120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2128, &qword_192243058);
    sub_1921E63B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2120);
  }

  return result;
}

unint64_t sub_1921E63B4()
{
  result = qword_1EADF2130;
  if (!qword_1EADF2130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2138, qword_192243060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2130);
  }

  return result;
}

uint64_t sub_1921E641C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1920A59A8;

  return v11(a1, a2, a3, a4);
}

double sub_1921E6584@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_1922261D0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192226740();
  (*(v13 + 16))(v16, a1, a3);
  sub_192226750();
  (*(v10 + 16))(v12, a2, v9);
  sub_192226700();
  sub_192226730();
  sub_1920C9518();
  sub_192226710();
  v21 = v24;
  v22 = v23;
  LOBYTE(a2) = sub_192226720();

  v17 = type metadata accessor for ExtractedControlValueMetadata(0);
  v18 = (a5 + *(v17 + 20));
  v20 = v21;
  result = *&v22;
  *v18 = v22;
  v18[1] = v20;
  *(a5 + *(v17 + 24)) = a2 & 1;
  return result;
}

uint64_t sub_1921E67A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_1922261D0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192226740();
  (*(v13 + 16))(v16, a1, a3);
  sub_192226750();
  (*(v10 + 16))(v12, a2, v9);
  sub_192226700();
  sub_192226730();
  LOBYTE(a2) = sub_192226720();

  result = type metadata accessor for ExtractedControlMetadata(0);
  *(a5 + *(result + 20)) = a2 & 1;
  return result;
}

uint64_t sub_1921E69B4(uint64_t a1)
{
  result = sub_192226BA0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1921E6A70(uint64_t a1)
{
  result = sub_192226BA0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1921E6B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v20 = a2;
  v3 = sub_1922276C0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1922276E0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2150, &unk_192243180);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  v18[3] = *v2;
  sub_1922276D0();
  sub_1922276B0();
  v14 = &v13[*(v11 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF18C8, &qword_19223DA10);
  sub_1921E6D8C(v15);
  sub_192225DD0();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  *v14 = swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2158, qword_1922431C0);
  (*(*(v16 - 8) + 16))(v13, v19, v16);
  sub_1921E6DE4();
  sub_1922270D0();
  return sub_1921E6EC8(v13);
}

unint64_t sub_1921E6D8C(__n128 a1)
{
  result = qword_1EADEDCC0;
  if (!qword_1EADEDCC0)
  {
    sub_1922276E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDCC0);
  }

  return result;
}

unint64_t sub_1921E6DE4()
{
  result = qword_1EADEDE48;
  if (!qword_1EADEDE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2150, &unk_192243180);
    sub_192031E74(&qword_1EADEDD38, &qword_1EADF2158, qword_1922431C0, MEMORY[0x1E697FDF8]);
    sub_192031E74(&unk_1EADEE600, &qword_1EADF18C8, &qword_19223DA10, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE48);
  }

  return result;
}

uint64_t sub_1921E6EC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2150, &unk_192243180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1921E7020@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v31 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v30 - v8);
  v10 = type metadata accessor for WidgetDescriptor(0);
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v15 = [a1 kind];
  v16 = sub_192227960();
  v18 = v17;

  sub_1921E74D0(v16, v18, a2, a3, v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v19 = &qword_1EADEEE20;
    v20 = &qword_19222B670;
    v21 = v9;
  }

  else
  {
    sub_19207C284(v9, v14);
    sub_19203683C(v33);
    result = sub_192036A20(v14, type metadata accessor for WidgetDescriptor);
    if (*(&v33[0] + 1))
    {
      v23 = v33[3];
      v24 = v31;
      v31[2] = v33[2];
      v24[3] = v23;
      v24[4] = v34[0];
      *(v24 + 73) = *(v34 + 9);
      v25 = v33[1];
      *v24 = v33[0];
      v24[1] = v25;
      return result;
    }

    v19 = &qword_1EADF1990;
    v20 = &qword_192243230;
    v21 = v33;
  }

  sub_192033970(v21, v19, v20);
  v26 = [v32 kind];
  v27 = sub_192227960();
  v29 = v28;

  sub_1921E7A80(v27, v29);

  return swift_willThrow();
}

uint64_t sub_1921E7298()
{
  v1 = v0;
  v20 = *MEMORY[0x1E69E9840];
  v2 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
  v19 = v2;

  v3 = v19;
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1922258B0();
  __swift_project_value_buffer(v4, qword_1ED74CCC8);
  v5 = sub_192225890();
  v6 = sub_192227FB0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    v9 = [v3 base64EncodedStringWithOptions_];
    v10 = sub_192227960();
    v12 = v11;

    v13 = sub_19202B8CC(v10, v12, &v19);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_192028000, v5, v6, "Locale token: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x193B0C7F0](v8, -1, -1);
    MEMORY[0x193B0C7F0](v7, -1, -1);
  }

  v14 = v3;
  v15 = sub_192225080();
  v17 = v16;

  *(v1 + 16) = v15;
  *(v1 + 24) = v17;

  return v1;
}

uint64_t sub_1921E74D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a2;
  v42 = a1;
  v8 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v38 - v12);
  v39 = type metadata accessor for WidgetDescriptor(0);
  v14 = *(v39 - 8);
  v15 = MEMORY[0x1EEE9AC00](v39);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(a4 + 8))(a3, a4, v15);
  v19 = result;
  v20 = *(result + 16);
  if (v20)
  {
    v38 = a5;
    v21 = 0;
    v43 = result + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v40 = v14;
    while (1)
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);
        return result;
      }

      sub_19207C0C0(v43 + *(v14 + 72) * v21, v17, type metadata accessor for WidgetDescriptor);
      sub_19207C0C0(v17, v13, type metadata accessor for ViewSource);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        break;
      }

      if (!EnumCaseMultiPayload)
      {
        *(&v45 + 1) = &type metadata for TimelineViewSource;
        v46 = sub_192082A7C();
LABEL_15:
        v27 = swift_allocObject();
        *&v44 = v27;
        v28 = v13[1];
        v27[1] = *v13;
        v27[2] = v28;
        v29 = v13[3];
        v27[3] = v13[2];
        v27[4] = v29;
        goto LABEL_16;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

      v26 = sub_1922253B0();
      v44 = 0u;
      v45 = 0u;
      v46 = 0;
      (*(*(v26 - 8) + 8))(v13, v26);
      if (!*(&v45 + 1))
      {
        sub_192033970(&v44, &qword_1EADF1860, &unk_19223D680);
        goto LABEL_5;
      }

LABEL_16:
      sub_19209CBAC(&v44, v47);
      sub_19207C0C0(v17, v10, type metadata accessor for ViewSource);
      v30 = swift_getEnumCaseMultiPayload();
      if (v30 <= 1)
      {
        if (v30)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

          v31 = sub_1922253B0();
          (*(*(v31 - 8) + 8))(v10, v31);
        }

        else
        {
LABEL_3:
          sub_192036A20(v10, type metadata accessor for ViewSource);
        }

        __swift_destroy_boxed_opaque_existential_1(v47);
        goto LABEL_5;
      }

      if (v30 != 2)
      {
        goto LABEL_3;
      }

      sub_192036A20(v10, type metadata accessor for ViewSource);
      v32 = v48;
      v33 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v34 = (*(v33 + 16))(v32, v33);
      if (v34 == v42 && v35 == v41)
      {

        __swift_destroy_boxed_opaque_existential_1(v47);

        v14 = v40;
        goto LABEL_27;
      }

      v36 = sub_1922289A0();

      __swift_destroy_boxed_opaque_existential_1(v47);
      v14 = v40;
      if (v36)
      {

LABEL_27:
        a5 = v38;
        sub_19207C284(v17, v38);
        v37 = 0;
        return (*(v14 + 56))(a5, v37, 1, v39);
      }

LABEL_5:
      ++v21;
      result = sub_192036A20(v17, type metadata accessor for WidgetDescriptor);
      if (v20 == v21)
      {

        v37 = 1;
        a5 = v38;
        return (*(v14 + 56))(a5, v37, 1, v39);
      }
    }

    if (EnumCaseMultiPayload == 2)
    {
      *(&v45 + 1) = &type metadata for ControlViewSource;
      v46 = sub_1921AFF60();
      v23 = swift_allocObject();
      *&v44 = v23;
      v24 = v13[3];
      v23[3] = v13[2];
      v23[4] = v24;
      v23[5] = v13[4];
      *(v23 + 89) = *(v13 + 73);
      v25 = v13[1];
      v23[1] = *v13;
      v23[2] = v25;
      goto LABEL_16;
    }

    *(&v45 + 1) = &type metadata for LiveSceneWidgetViewSource;
    v46 = sub_1921AFF0C();
    goto LABEL_15;
  }

  v37 = 1;
  return (*(v14 + 56))(a5, v37, 1, v39);
}

uint64_t sub_1921E7A24()
{
  sub_192039140(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

id sub_1921E7A80(uint64_t a1, uint64_t a2)
{
  sub_192228400();

  *&v14 = 0xD00000000000002BLL;
  *(&v14 + 1) = 0x800000019224E710;
  MEMORY[0x193B0A990](a1, a2);
  v4 = *MEMORY[0x1E69941E8];
  sub_19214036C(MEMORY[0x1E69E7CC0]);
  v5 = sub_192227960();
  v7 = v6;
  v15 = MEMORY[0x1E69E6158];
  *&v14 = 0xD00000000000002BLL;
  *(&v14 + 1) = 0x800000019224E710;
  sub_19203BEDC(&v14, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_19213DB28(v13, v5, v7, isUniquelyReferenced_nonNull_native);

  v9 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v10 = sub_192227830();

  v11 = [v9 initWithDomain:v4 code:1100 userInfo:v10];

  return v11;
}

uint64_t static ActivityMetricsDefinition.mock()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for MetricsRequest(0) + 40);
  v6 = sub_192226600();
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  *a1 = xmmword_19223F6C0;
  *(a1 + 16) = 0;
  *(a1 + 24) = xmmword_19223F6C0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = xmmword_19222F810;
  v7 = type metadata accessor for JindoMetricsDefinition(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v4, 1, 1, v7);
  v9 = *(type metadata accessor for ActivityMetricsDefinition(0) + 20);
  v8((a1 + v9), 1, 1, v7);
  return sub_1920E3564(v4, a1 + v9);
}

uint64_t DimensionRequest.filePath.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    v11 = 762214756;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE18, &unk_19223C580);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_19222B480;
    v4 = MEMORY[0x1E69E7DE0];
    *(v3 + 56) = MEMORY[0x1E69E7DE0];
    v5 = sub_192150ED0();
    *(v3 + 64) = v5;
    *(v3 + 32) = v1;
    v6 = sub_192227970();
    MEMORY[0x193B0A990](v6);

    MEMORY[0x193B0A990](45, 0xE100000000000000);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_19222B480;
    *(v7 + 56) = v4;
    *(v7 + 64) = v5;
    *(v7 + 32) = v2;
  }

  else
  {
    v11 = 762866022;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE18, &unk_19223C580);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_19222B480;
    *(v8 + 56) = MEMORY[0x1E69E7DE0];
    *(v8 + 64) = sub_192150ED0();
    *(v8 + 32) = v1;
  }

  v9 = sub_192227970();
  MEMORY[0x193B0A990](v9);

  return v11;
}

double DimensionRequest.maxValue.getter()
{
  v1 = v0 + 8;
  if (!*(v0 + 16))
  {
    v1 = v0;
  }

  return *v1;
}

double DimensionRequest.resolveIfNecessary(intrinsicLength:)(double result)
{
  if ((*(v1 + 16) & 1) == 0)
  {
    return *v1;
  }

  if (*(v1 + 8) < result)
  {
    result = *(v1 + 8);
  }

  if (result <= *v1)
  {
    return *v1;
  }

  return result;
}