unint64_t sub_1C2D63238()
{
  result = qword_1EC05B8E8;
  if (!qword_1EC05B8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060B90, &unk_1C2E84A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B8E8);
  }

  return result;
}

double sub_1C2D632BC(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 185) = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1C2D632F0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0608E8, &qword_1C2E84678);
    sub_1C2D63634(a2, MEMORY[0x1E6995FB0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C2D6338C()
{
  result = qword_1EC060BB8;
  if (!qword_1EC060BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060BA0, &qword_1C2E84A50);
    sub_1C2D63410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060BB8);
  }

  return result;
}

unint64_t sub_1C2D63410()
{
  result = qword_1EC060BC0;
  if (!qword_1EC060BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060BC8, &qword_1C2E84A60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0608E8, &qword_1C2E84678);
    sub_1C2D632F0(&qword_1EC060BB0, &qword_1EC0606D8, MEMORY[0x1E6995FB8], MEMORY[0x1E69E7C78]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060BC0);
  }

  return result;
}

unint64_t sub_1C2D6351C()
{
  result = qword_1EC060BD0;
  if (!qword_1EC060BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060BA8, &qword_1C2E84A58);
    sub_1C2D40798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060BD0);
  }

  return result;
}

uint64_t sub_1C2D635B4(uint64_t *a1)
{
  v3 = *(type metadata accessor for LanguageSelectionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1C2D61014(a1, v4);
}

uint64_t sub_1C2D63634(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C2D6367C()
{
  v1 = *(type metadata accessor for LanguageSelectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C2D61174(v0 + v2, v3);
}

unint64_t sub_1C2D63710()
{
  result = qword_1EC060C08;
  if (!qword_1EC060C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060C08);
  }

  return result;
}

uint64_t sub_1C2D63764(uint64_t *a1, uint64_t *a2)
{
  sub_1C2E72834();
  sub_1C2D63634(&qword_1EC060A68, MEMORY[0x1E6995FB0], MEMORY[0x1E6995FC0]);
  return sub_1C2E75BA4() & 1;
}

uint64_t LeadingAccessoryView.sizeThatFits(_:uiView:context:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a2 | a4))
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C2D63864()
{
  result = qword_1EC060C10;
  if (!qword_1EC060C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060C10);
  }

  return result;
}

uint64_t sub_1C2D638B8(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a2 | a4))
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C2D638D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2D639D0();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C2D63934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2D639D0();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C2D63998(uint64_t a1)
{
  sub_1C2D639D0();
  sub_1C2E73EE4();
  __break(1u);
}

unint64_t sub_1C2D639D0()
{
  result = qword_1EC060C18;
  if (!qword_1EC060C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060C18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16CommunicationsUI28BackgroundStyleConfigurationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C2D63A50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 9))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C2D63AA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1C2D63B08(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = -64;
  }

  return result;
}

uint64_t sub_1C2D63B5C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v26 = *(v5 - 8);
  v6 = *(v26 + 84);
  v7 = sub_1C2E75004();
  v8 = *(v7 - 8);
  v9 = *(v26 + 64);
  if (*(v8 + 84) <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  if (v10 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v12)
  {
    v13 = *(*(v7 - 8) + 64) + ((v11 + ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v11) + 1;
    v14 = 8 * v13;
    if (v13 > 3)
    {
      goto LABEL_10;
    }

    v16 = ((a2 - v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v16 >= 2)
    {
LABEL_10:
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_30;
      }

LABEL_17:
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

      v25 = v12 + (v19 | v17);
      return (v25 + 1);
    }
  }

LABEL_30:
  if (v6 == v12)
  {
    v20 = *(v26 + 48);

    return v20(a1, v6, v5);
  }

  v22 = (a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v10 <= 0xFE)
  {
    v23 = *(v22 + 9);
    if (v23 < 2)
    {
      return 0;
    }

    v25 = (v23 + 2147483646) & 0x7FFFFFFF;
    return (v25 + 1);
  }

  v24 = *(v8 + 48);

  return v24((v22 + v11 + 10) & ~v11);
}

void sub_1C2D63E0C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v24 = *(v7 - 8);
  v8 = *(v24 + 84);
  v9 = *(sub_1C2E75004() - 8);
  v10 = *(v24 + 64);
  if (*(v9 + 84) <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  if (v11 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v11;
  }

  v14 = *(v9 + 64) + ((v12 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v12) + 1;
  if (a3 <= v13)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 - v13 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
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

  if (v13 < a2)
  {
    v16 = ~v13 + a2;
    if (v14 < 4)
    {
      v17 = (v16 >> (8 * v14)) + 1;
      if (*(v9 + 64) + ((v12 + ((v10 + 7) & 0xFFFFFFF8) + 10) & ~v12) != -1)
      {
        v20 = v16 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_51:
              if (v15 == 2)
              {
                *&a1[v14] = v17;
              }

              else
              {
                *&a1[v14] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v15)
    {
      a1[v14] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v14] = 0;
  }

  else if (v15)
  {
    a1[v14] = 0;
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
  if (v8 == v13)
  {
    v21 = *(v24 + 56);

    v21(a1, a2, v8, v7);
  }

  else
  {
    v22 = &a1[v10 + 7] & 0xFFFFFFFFFFFFFFF8;
    if (v11 > 0xFE)
    {
      v23 = *(v9 + 56);

      v23((v22 + v12 + 10) & ~v12, a2);
    }

    else
    {
      *(v22 + 9) = a2 + 1;
    }
  }
}

uint64_t sub_1C2D64140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundStyleConfiguration.GlassConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double IntelligenceLabelView.init(viewModel:leadingView:)@<D0>(void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{

  sub_1C2E75174();
  *a5 = v11;
  a5[1] = v12;
  type metadata accessor for IntelligenceLabelView(0, a3, a4, v9);
  a2();

  return result;
}

uint64_t sub_1C2D642DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E040, &qword_1C2E901A0);
  sub_1C2E75184();
  return v1;
}

uint64_t IntelligenceLabelView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v24 = sub_1C2E730D4();
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v22 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC060C20, &unk_1C2E84DB0);
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  v6 = sub_1C2E75214();
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70, &qword_1C2E7BDE0);
  v9 = sub_1C2E73654();
  v26 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  sub_1C2E73C24();
  v15 = *(a1 + 24);
  v28 = v5;
  v29 = v15;
  v30 = v25;
  sub_1C2E75204();
  swift_getKeyPath();
  v16 = v22;
  v17 = v24;
  (*(v3 + 104))(v22, *MEMORY[0x1E697DBA8], v24);
  WitnessTable = swift_getWitnessTable();
  sub_1C2E749A4();

  (*(v3 + 8))(v16, v17);
  (*(v23 + 8))(v8, v6);
  v19 = sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70, &qword_1C2E7BDE0, MEMORY[0x1E6980A18]);
  v31 = WitnessTable;
  v32 = v19;
  swift_getWitnessTable();
  sub_1C2C6EE48(v11);
  v20 = *(v26 + 8);
  v20(v11, v9);
  sub_1C2C6EE48(v14);
  return (v20)(v14, v9);
}

uint64_t sub_1C2D64738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC060C20, &unk_1C2E84DB0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v25 - v18;
  v21 = type metadata accessor for IntelligenceLabelView(0, a2, a3, v20);
  sub_1C2C6EE48(a1 + *(v21 + 36));
  *v12 = sub_1C2E73DD4();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CB0, &qword_1C2E84E98);
  sub_1C2D64A48(a2, a3, &v12[*(v22 + 44)]);
  (*(v13 + 16))(v16, v19, a2);
  v29[0] = v16;
  sub_1C2C736A4(v12, v9, qword_1EC060C20, &unk_1C2E84DB0);
  v27 = 0;
  v28 = 1;
  v29[1] = v9;
  v29[2] = &v27;
  v26[0] = a2;
  v26[1] = v7;
  v26[2] = MEMORY[0x1E6981840];
  v25[1] = a3;
  v25[2] = sub_1C2C94F38(&qword_1EC060CB8, qword_1EC060C20, &unk_1C2E84DB0, MEMORY[0x1E6981870]);
  v25[3] = MEMORY[0x1E6981838];
  sub_1C2C6EC40(v29, 3uLL, v26);
  sub_1C2C73644(v12, qword_1EC060C20, &unk_1C2E84DB0);
  v23 = *(v13 + 8);
  v23(v19, a2);
  sub_1C2C73644(v9, qword_1EC060C20, &unk_1C2E84DB0);
  return (v23)(v16, a2);
}

uint64_t sub_1C2D64A48@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v23 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CC0, &qword_1C2E84EA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  *v16 = sub_1C2E73C24();
  *(v16 + 1) = 0x4010000000000000;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CC8, &qword_1C2E84EA8);
  v18 = v22;
  sub_1C2D64C68(a2, v22, &v16[*(v17 + 44)]);
  *v13 = sub_1C2E73C24();
  *(v13 + 1) = 0x4010000000000000;
  v13[16] = 0;
  sub_1C2D65288(a2, v18, &v13[*(v17 + 44)]);
  sub_1C2C736A4(v16, v10, &qword_1EC060CC0, &qword_1C2E84EA0);
  sub_1C2C736A4(v13, v7, &qword_1EC060CC0, &qword_1C2E84EA0);
  v19 = v23;
  sub_1C2C736A4(v10, v23, &qword_1EC060CC0, &qword_1C2E84EA0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CD0, &qword_1C2E84EB0);
  sub_1C2C736A4(v7, v19 + *(v20 + 48), &qword_1EC060CC0, &qword_1C2E84EA0);
  sub_1C2C73644(v13, &qword_1EC060CC0, &qword_1C2E84EA0);
  sub_1C2C73644(v16, &qword_1EC060CC0, &qword_1C2E84EA0);
  sub_1C2C73644(v7, &qword_1EC060CC0, &qword_1C2E84EA0);
  return sub_1C2C73644(v10, &qword_1EC060CC0, &qword_1C2E84EA0);
}

uint64_t sub_1C2D64C68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v58 = a3;
  v5 = sub_1C2E74624();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8, &unk_1C2E83AC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v53 - v9;
  v11 = sub_1C2E71664();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CD8, &qword_1C2E84EB8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v57 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  v54 = &v53 - v18;
  v21 = type metadata accessor for IntelligenceLabelView(0, a1, a2, v20);
  sub_1C2D65958(v21, &OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__titleSymbol, &unk_1C2E85080, &OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__titleStyle, v19);
  v22 = sub_1C2D642DC();
  swift_getKeyPath();
  v61 = v22;
  sub_1C2D67F68(&qword_1EC0604E0, type metadata accessor for ParticipantLabelViewModel, &protocol conformance descriptor for ParticipantLabelViewModel);
  sub_1C2E71A64();

  v23 = OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__title;
  swift_beginAccess();
  (*(v12 + 16))(v14, v22 + v23, v11);

  v24 = sub_1C2E74894();
  v26 = v25;
  LOBYTE(v22) = v27;
  v28 = sub_1C2D642DC();
  swift_getKeyPath();
  v60 = v28;
  sub_1C2E71A64();

  v29 = OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__titleStyle;
  swift_beginAccess();
  sub_1C2C736A4(v28 + v29, v10, &qword_1EC0603A8, &unk_1C2E83AC0);

  v30 = sub_1C2D6778C(v10);
  sub_1C2C73644(v10, &qword_1EC0603A8, &unk_1C2E83AC0);
  v59 = v30;
  v31 = sub_1C2E74794();
  v33 = v32;
  LOBYTE(a1) = v34;
  sub_1C2C72340(v24, v26, v22 & 1);

  sub_1C2E74514();
  v36 = v55;
  v35 = v56;
  (*(v55 + 104))(v7, *MEMORY[0x1E6980EA8], v56);
  sub_1C2E74664();

  (*(v36 + 8))(v7, v35);
  v37 = sub_1C2E747F4();
  v39 = v38;
  LOBYTE(v36) = v40;

  sub_1C2C72340(v31, v33, a1 & 1);

  sub_1C2E74554();
  v41 = sub_1C2E74764();
  v43 = v42;
  LOBYTE(v22) = v44;
  v46 = v45;
  sub_1C2C72340(v37, v39, v36 & 1);

  KeyPath = swift_getKeyPath();
  v48 = v54;
  v49 = v57;
  sub_1C2C736A4(v54, v57, &qword_1EC060CD8, &qword_1C2E84EB8);
  v50 = v58;
  sub_1C2C736A4(v49, v58, &qword_1EC060CD8, &qword_1C2E84EB8);
  v51 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CE0, &unk_1C2E84F40) + 48);
  *v51 = v41;
  *(v51 + 8) = v43;
  LOBYTE(v22) = v22 & 1;
  *(v51 + 16) = v22;
  *(v51 + 24) = v46;
  *(v51 + 32) = KeyPath;
  *(v51 + 40) = 1;
  *(v51 + 48) = 0;
  sub_1C2C72330(v41, v43, v22);

  sub_1C2C73644(v48, &qword_1EC060CD8, &qword_1C2E84EB8);
  sub_1C2C72340(v41, v43, v22);

  return sub_1C2C73644(v49, &qword_1EC060CD8, &qword_1C2E84EB8);
}

uint64_t sub_1C2D65288@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v61 = a3;
  v5 = sub_1C2E74624();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8, &unk_1C2E83AC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088, &qword_1C2E80EE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v55 - v11;
  v13 = sub_1C2E71664();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CD8, &qword_1C2E84EB8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v60 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v55 - v20;
  v23 = type metadata accessor for IntelligenceLabelView(0, a1, a2, v22);
  v57 = v21;
  sub_1C2D65958(v23, &OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitleSymbol, &unk_1C2E84EE8, &OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitleStyle, v21);
  v24 = sub_1C2D642DC();
  swift_getKeyPath();
  v64 = v24;
  sub_1C2D67F68(&qword_1EC0604E0, type metadata accessor for ParticipantLabelViewModel, &protocol conformance descriptor for ParticipantLabelViewModel);
  sub_1C2E71A64();

  v25 = OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitle;
  swift_beginAccess();
  sub_1C2C736A4(v24 + v25, v12, &qword_1EC05E088, &qword_1C2E80EE0);

  v26 = *(v14 + 48);
  if (v26(v12, 1, v13) == 1)
  {
    sub_1C2E71654();
    if (v26(v12, 1, v13) != 1)
    {
      sub_1C2C73644(v12, &qword_1EC05E088, &qword_1C2E80EE0);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
  }

  v27 = sub_1C2E74894();
  v29 = v28;
  v31 = v30;
  v32 = sub_1C2D642DC();
  swift_getKeyPath();
  v63 = v32;
  sub_1C2E71A64();

  v33 = OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitleStyle;
  swift_beginAccess();
  sub_1C2C736A4(v32 + v33, v9, &qword_1EC0603A8, &unk_1C2E83AC0);

  v34 = sub_1C2D6778C(v9);
  sub_1C2C73644(v9, &qword_1EC0603A8, &unk_1C2E83AC0);
  v62 = v34;
  v35 = sub_1C2E74794();
  v37 = v36;
  v39 = v38;
  sub_1C2C72340(v27, v29, v31 & 1);

  sub_1C2E74514();
  v41 = v58;
  v40 = v59;
  v42 = v56;
  (*(v58 + 104))(v56, *MEMORY[0x1E6980EA8], v59);
  sub_1C2E74664();

  (*(v41 + 8))(v42, v40);
  sub_1C2E74654();

  v43 = sub_1C2E747F4();
  v45 = v44;
  LOBYTE(v42) = v46;
  v48 = v47;

  sub_1C2C72340(v35, v37, v39 & 1);

  KeyPath = swift_getKeyPath();
  v50 = v57;
  v51 = v60;
  sub_1C2C736A4(v57, v60, &qword_1EC060CD8, &qword_1C2E84EB8);
  v52 = v61;
  sub_1C2C736A4(v51, v61, &qword_1EC060CD8, &qword_1C2E84EB8);
  v53 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CE0, &unk_1C2E84F40) + 48);
  *v53 = v43;
  *(v53 + 8) = v45;
  *(v53 + 16) = v42 & 1;
  *(v53 + 24) = v48;
  *(v53 + 32) = KeyPath;
  *(v53 + 40) = 1;
  *(v53 + 48) = 0;
  sub_1C2C72330(v43, v45, v42 & 1);

  sub_1C2C73644(v50, &qword_1EC060CD8, &qword_1C2E84EB8);
  sub_1C2C72340(v43, v45, v42 & 1);

  return sub_1C2C73644(v51, &qword_1EC060CD8, &qword_1C2E84EB8);
}

uint64_t sub_1C2D65958@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a4;
  v30 = a5;
  v32 = a1;
  v33 = a3;
  v36 = a6;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8, &unk_1C2E83AC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CE8, &unk_1C2E84F50);
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v31 = &v29 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0604A0, &qword_1C2E83DE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - v12;
  v14 = sub_1C2E72144();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C2D642DC();
  swift_getKeyPath();
  v38 = v18;
  sub_1C2D67F68(&qword_1EC0604E0, type metadata accessor for ParticipantLabelViewModel, &protocol conformance descriptor for ParticipantLabelViewModel);
  sub_1C2E71A64();

  v19 = *v33;
  swift_beginAccess();
  sub_1C2C736A4(v18 + v19, v13, &qword_1EC0604A0, &qword_1C2E83DE0);

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1C2C73644(v13, &qword_1EC0604A0, &qword_1C2E83DE0);
    v20 = 1;
    v21 = v36;
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v22 = sub_1C2D642DC();
    swift_getKeyPath();
    v37 = v22;
    sub_1C2E71A64();

    v23 = *v30;
    swift_beginAccess();
    sub_1C2C736A4(v22 + v23, v8, &qword_1EC0603A8, &unk_1C2E83AC0);

    v24 = sub_1C2D6778C(v8);
    sub_1C2C73644(v8, &qword_1EC0603A8, &unk_1C2E83AC0);
    v25 = v31;
    sub_1C2D65D70(v24, v32, v31);

    (*(v15 + 8))(v17, v14);
    v26 = v25;
    v27 = v36;
    sub_1C2D679EC(v26, v36);
    v20 = 0;
    v21 = v27;
  }

  return (*(v34 + 56))(v21, v20, 1, v35);
}

uint64_t sub_1C2D65D70@<X0>(void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v110 = a3;
  v120 = a2;
  v122 = a4;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CF0, &qword_1C2E84F88);
  MEMORY[0x1EEE9AC00](v111);
  v88 = (v83 - v4);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CF8, &qword_1C2E84F90);
  MEMORY[0x1EEE9AC00](v105);
  v106 = v83 - v5;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D00, &qword_1C2E84F98);
  MEMORY[0x1EEE9AC00](v116);
  v107 = v83 - v6;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D08, &qword_1C2E84FA0);
  MEMORY[0x1EEE9AC00](v104);
  v103 = (v83 - v7);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D10, &qword_1C2E84FA8);
  MEMORY[0x1EEE9AC00](v112);
  v115 = v83 - v8;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D18, &qword_1C2E84FB0);
  MEMORY[0x1EEE9AC00](v100);
  v101 = v83 - v9;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D20, &qword_1C2E84FB8);
  MEMORY[0x1EEE9AC00](v114);
  v102 = v83 - v10;
  v93 = sub_1C2E75954();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v90 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1C2E75984();
  v94 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v91 = v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v95 = v83 - v14;
  v97 = sub_1C2E759C4();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v108 = v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v89 = v83 - v17;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D28, &qword_1C2E84FC0);
  MEMORY[0x1EEE9AC00](v99);
  v119 = (v83 - v18);
  v109 = sub_1C2E72124();
  v118 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v117 = v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D30, &qword_1C2E84FC8);
  MEMORY[0x1EEE9AC00](v121);
  v113 = v83 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D38, &qword_1C2E84FD0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v83 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D40, &qword_1C2E84FD8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (v83 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D48, &qword_1C2E84FE0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v83 - v28;
  v30 = sub_1C2E720F4();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2E72114();
  v34 = (*(v31 + 88))(v33, v30);
  if (v34 != *MEMORY[0x1E6995DF0])
  {
    v83[1] = v24;
    v84 = v26;
    v83[0] = v29;
    v86 = v27;
    v87 = v21;
    v85 = v23;
    if (v34 != *MEMORY[0x1E6995DE8])
    {
      swift_storeEnumTagMultiPayload();
      sub_1C2D67A5C();
      sub_1C2E73F44();
      return (*(v31 + 8))(v33, v30);
    }

    v40 = v117;
    sub_1C2E72134();
    v41 = v109;
    v42 = (*(v118 + 88))(v40, v109);
    if (v42 == *MEMORY[0x1E6995E08])
    {
      v43 = v103;
      sub_1C2D66FFC(v103);
      v44 = v120;
      *(v43 + *(v111 + 36)) = v120;
      KeyPath = swift_getKeyPath();
      v123 = v44;
      swift_retain_n();
      v46 = sub_1C2E73284();
      v47 = (v43 + *(v104 + 36));
      *v47 = KeyPath;
      v47[1] = v46;
      sub_1C2C736A4(v43, v106, &qword_1EC060D08, &qword_1C2E84FA0);
      swift_storeEnumTagMultiPayload();
      sub_1C2D67EB0();
      sub_1C2D67D6C();
      v48 = v107;
      sub_1C2E73F44();
      sub_1C2C736A4(v48, v115, &qword_1EC060D00, &qword_1C2E84F98);
      swift_storeEnumTagMultiPayload();
      sub_1C2D67C2C();
      sub_1C2D67E24();
      v49 = v113;
      sub_1C2E73F44();
      sub_1C2C73644(v48, &qword_1EC060D00, &qword_1C2E84F98);
      sub_1C2C73644(v43, &qword_1EC060D08, &qword_1C2E84FA0);
    }

    else
    {
      v51 = v120;
      if (v42 != *MEMORY[0x1E6995DF8])
      {
        if (v42 == *MEMORY[0x1E6995E00])
        {
          v67 = v119;
          sub_1C2D66FFC(v119);
          *(v67 + *(v111 + 36)) = v51;

          v68 = v89;
          sub_1C2E759B4();
          sub_1C2E75994();
          v120 = *(v96 + 8);
          v69 = v97;
          v120(v68, v97);
          v70 = v90;
          sub_1C2E75944();
          v71 = v91;
          MEMORY[0x1C69263A0](v70);
          (*(v92 + 8))(v70, v93);
          v72 = v95;
          sub_1C2E75964();
          v73 = v94;
          v74 = *(v94 + 8);
          v75 = v98;
          v74(v71, v98);
          v76 = v119 + *(v99 + 36);
          v77 = sub_1C2E74394();
          (*(v73 + 16))(&v76[*(v77 + 20)], v72, v75);
          sub_1C2D67F68(&qword_1EC060DB0, MEMORY[0x1E6982230], MEMORY[0x1E6982228]);
          v78 = v108;
          sub_1C2E75934();
          v74(v72, v75);
          v120(v78, v69);
          v76[*(v77 + 24)] = 1;
          v79 = v119;
          sub_1C2C736A4(v119, v101, &qword_1EC060D28, &qword_1C2E84FC0);
          swift_storeEnumTagMultiPayload();
          sub_1C2D67CB0();
          v80 = v102;
          sub_1C2E73F44();
          sub_1C2C736A4(v80, v115, &qword_1EC060D20, &qword_1C2E84FB8);
          swift_storeEnumTagMultiPayload();
          sub_1C2D67C2C();
          sub_1C2D67E24();
          v49 = v113;
          sub_1C2E73F44();
          sub_1C2C73644(v80, &qword_1EC060D20, &qword_1C2E84FB8);
          sub_1C2C73644(v79, &qword_1EC060D28, &qword_1C2E84FC0);
        }

        else
        {
          v81 = v88;
          sub_1C2D66FFC(v88);
          *(v81 + *(v111 + 36)) = v51;
          sub_1C2C736A4(v81, v106, &qword_1EC060CF0, &qword_1C2E84F88);
          swift_storeEnumTagMultiPayload();
          sub_1C2D67EB0();
          sub_1C2D67D6C();

          v82 = v107;
          sub_1C2E73F44();
          sub_1C2C736A4(v82, v115, &qword_1EC060D00, &qword_1C2E84F98);
          swift_storeEnumTagMultiPayload();
          sub_1C2D67C2C();
          sub_1C2D67E24();
          v49 = v113;
          sub_1C2E73F44();
          sub_1C2C73644(v82, &qword_1EC060D00, &qword_1C2E84F98);
          sub_1C2C73644(v81, &qword_1EC060CF0, &qword_1C2E84F88);
          (*(v118 + 8))(v117, v41);
        }

        v66 = v83[0];
        goto LABEL_14;
      }

      v52 = v119;
      sub_1C2D66FFC(v119);
      *(v52 + *(v111 + 36)) = v51;

      v53 = v89;
      sub_1C2E759B4();
      sub_1C2E759A4();
      v120 = *(v96 + 8);
      v54 = v97;
      v120(v53, v97);
      v55 = v90;
      sub_1C2E75944();
      v56 = v91;
      MEMORY[0x1C69263A0](v55);
      (*(v92 + 8))(v55, v93);
      v57 = v95;
      sub_1C2E75964();
      v58 = v94;
      v59 = *(v94 + 8);
      v60 = v98;
      v59(v56, v98);
      v61 = v119 + *(v99 + 36);
      v62 = sub_1C2E74394();
      (*(v58 + 16))(&v61[*(v62 + 20)], v57, v60);
      sub_1C2D67F68(&qword_1EC060DB0, MEMORY[0x1E6982230], MEMORY[0x1E6982228]);
      v63 = v108;
      sub_1C2E75934();
      v59(v57, v60);
      v120(v63, v54);
      v61[*(v62 + 24)] = 1;
      v64 = v119;
      sub_1C2C736A4(v119, v101, &qword_1EC060D28, &qword_1C2E84FC0);
      swift_storeEnumTagMultiPayload();
      sub_1C2D67CB0();
      v65 = v102;
      sub_1C2E73F44();
      sub_1C2C736A4(v65, v115, &qword_1EC060D20, &qword_1C2E84FB8);
      swift_storeEnumTagMultiPayload();
      sub_1C2D67C2C();
      sub_1C2D67E24();
      v49 = v113;
      sub_1C2E73F44();
      sub_1C2C73644(v65, &qword_1EC060D20, &qword_1C2E84FB8);
      sub_1C2C73644(v64, &qword_1EC060D28, &qword_1C2E84FC0);
    }

    v66 = v83[0];
LABEL_14:
    sub_1C2C736A4(v49, v84, &qword_1EC060D30, &qword_1C2E84FC8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D60, &qword_1C2E84FE8);
    sub_1C2D67AE8();
    sub_1C2D67BA0();
    sub_1C2E73F44();
    sub_1C2C736A4(v66, v85, &qword_1EC060D48, &qword_1C2E84FE0);
    swift_storeEnumTagMultiPayload();
    sub_1C2D67A5C();
    sub_1C2E73F44();
    sub_1C2C73644(v66, &qword_1EC060D48, &qword_1C2E84FE0);
    v37 = v49;
    v38 = &qword_1EC060D30;
    v39 = &qword_1C2E84FC8;
    return sub_1C2C73644(v37, v38, v39);
  }

  sub_1C2E72104();
  v35 = sub_1C2E75064();
  v36 = v120;
  *v26 = v35;
  v26[1] = v36;
  swift_storeEnumTagMultiPayload();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D60, &qword_1C2E84FE8);
  sub_1C2D67AE8();
  sub_1C2D67BA0();
  sub_1C2E73F44();
  sub_1C2C736A4(v29, v23, &qword_1EC060D48, &qword_1C2E84FE0);
  swift_storeEnumTagMultiPayload();
  sub_1C2D67A5C();
  sub_1C2E73F44();

  v37 = v29;
  v38 = &qword_1EC060D48;
  v39 = &qword_1C2E84FE0;
  return sub_1C2C73644(v37, v38, v39);
}

uint64_t sub_1C2D66FFC@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060DB8, &qword_1C2E85020);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_1C2E720F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2E72104();
  sub_1C2E72114();
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 != *MEMORY[0x1E6995DF0])
  {
    if (v9 == *MEMORY[0x1E6995DE8])
    {
      if (qword_1EC05CF70 != -1)
      {
        swift_once();
      }

      v10 = qword_1EC0603A0;
    }

    else
    {
      (*(v6 + 8))(v8, v5, 0);
    }
  }

  sub_1C2E750D4();
  sub_1C2E73DE4();
  v11 = sub_1C2E73DF4();
  (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
  v12 = sub_1C2E75074();

  sub_1C2C73644(v4, &qword_1EC060DB8, &qword_1C2E85020);
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCA8, &qword_1C2E89520) + 36);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCB0, &unk_1C2E7B640) + 28);
  v15 = *MEMORY[0x1E69816C8];
  v16 = sub_1C2E750B4();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  result = swift_getKeyPath();
  *v13 = result;
  *a1 = v12;
  return result;
}

void sub_1C2D672D8(uint64_t a1)
{
  sub_1C2D67734(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C2D67360(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
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

  return v7 + (v9 | v14) + 1;
}

void sub_1C2D674E4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
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
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

void sub_1C2D67734(uint64_t a1)
{
  if (!qword_1EC060CA8)
  {
    type metadata accessor for ParticipantLabelViewModel(255);
    v1 = sub_1C2E751B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC060CA8);
    }
  }
}

uint64_t sub_1C2D6778C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8, &unk_1C2E83AC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_1C2E72244();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2C736A4(a1, v4, &qword_1EC0603A8, &unk_1C2E83AC0);
  v9 = *(v6 + 48);
  if (v9(v4, 1, v5) == 1)
  {
    v10 = *MEMORY[0x1E6995E70];
    (*(v6 + 104))(v8, *MEMORY[0x1E6995E70], v5);
    if (v9(v4, 1, v5) != 1)
    {
      sub_1C2C73644(v4, &qword_1EC0603A8, &unk_1C2E83AC0);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = *MEMORY[0x1E6995E70];
  }

  v11 = (*(v6 + 88))(v8, v5);
  if (v11 == v10)
  {
    return sub_1C2E74F84();
  }

  if (v11 == *MEMORY[0x1E6995E80])
  {
    return sub_1C2E74FA4();
  }

  if (v11 == *MEMORY[0x1E6995E78])
  {
    return sub_1C2E74F54();
  }

  v13 = sub_1C2E74F84();
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_1C2D679EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CE8, &unk_1C2E84F50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2D67A5C()
{
  result = qword_1EC060D50;
  if (!qword_1EC060D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060D48, &qword_1C2E84FE0);
    sub_1C2D67AE8();
    sub_1C2D67BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060D50);
  }

  return result;
}

unint64_t sub_1C2D67AE8()
{
  result = qword_1EC060D58;
  if (!qword_1EC060D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060D60, &qword_1C2E84FE8);
    sub_1C2C94F38(qword_1EDDCDA28, &qword_1EC05E1F0, &qword_1C2E7C220, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060D58);
  }

  return result;
}

unint64_t sub_1C2D67BA0()
{
  result = qword_1EC060D68;
  if (!qword_1EC060D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060D30, &qword_1C2E84FC8);
    sub_1C2D67C2C();
    sub_1C2D67E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060D68);
  }

  return result;
}

unint64_t sub_1C2D67C2C()
{
  result = qword_1EC060D70;
  if (!qword_1EC060D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060D20, &qword_1C2E84FB8);
    sub_1C2D67CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060D70);
  }

  return result;
}

unint64_t sub_1C2D67CB0()
{
  result = qword_1EC060D78;
  if (!qword_1EC060D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060D28, &qword_1C2E84FC0);
    sub_1C2D67D6C();
    sub_1C2D67F68(&qword_1EC060D88, MEMORY[0x1E697CC18], MEMORY[0x1E697CC10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060D78);
  }

  return result;
}

unint64_t sub_1C2D67D6C()
{
  result = qword_1EC060D80;
  if (!qword_1EC060D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060CF0, &qword_1C2E84F88);
    sub_1C2C76D5C();
    sub_1C2C94F38(qword_1EDDCDA28, &qword_1EC05E1F0, &qword_1C2E7C220, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060D80);
  }

  return result;
}

unint64_t sub_1C2D67E24()
{
  result = qword_1EC060D90;
  if (!qword_1EC060D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060D00, &qword_1C2E84F98);
    sub_1C2D67EB0();
    sub_1C2D67D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060D90);
  }

  return result;
}

unint64_t sub_1C2D67EB0()
{
  result = qword_1EC060D98;
  if (!qword_1EC060D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060D08, &qword_1C2E84FA0);
    sub_1C2D67D6C();
    sub_1C2C94F38(&qword_1EC060DA0, &qword_1EC060DA8, &unk_1C2E93EB0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060D98);
  }

  return result;
}

uint64_t sub_1C2D67F68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C2D67FE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060E40, &qword_1C2E85288);
  sub_1C2C94F38(&qword_1EC060E48, &qword_1EC060E40, &qword_1C2E85288, MEMORY[0x1E6981880]);

  return sub_1C2E74074();
}

double sub_1C2D68090@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1C2E75744();
  v5 = v4;
  sub_1C2D681A8(&v12);
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v22 = v12;
  v23 = v13;
  v32[6] = v18;
  v32[7] = v19;
  v32[8] = v20;
  v32[2] = v14;
  v32[3] = v15;
  v32[4] = v16;
  v32[5] = v17;
  v31 = v21;
  v33 = v21;
  v32[0] = v12;
  v32[1] = v13;
  sub_1C2C736A4(&v22, &v11, &qword_1EC060E50, &unk_1C2E85290);
  sub_1C2C73644(v32, &qword_1EC060E50, &unk_1C2E85290);
  *a2 = v3;
  *(a2 + 8) = v5;
  v6 = v29;
  *(a2 + 112) = v28;
  *(a2 + 128) = v6;
  *(a2 + 144) = v30;
  *(a2 + 160) = v31;
  v7 = v25;
  *(a2 + 48) = v24;
  *(a2 + 64) = v7;
  v8 = v27;
  *(a2 + 80) = v26;
  *(a2 + 96) = v8;
  result = *&v22;
  v10 = v23;
  *(a2 + 16) = v22;
  *(a2 + 32) = v10;
  return result;
}

uint64_t sub_1C2D681A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E75054();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  sub_1C2E75744();
  sub_1C2E73274();
  *&v33[3] = *&v33[27];
  *&v33[11] = *&v33[35];
  *&v33[19] = *&v33[43];
  sub_1C2E75044();
  (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
  v6 = sub_1C2E750C4();

  (*(v3 + 8))(v5, v2);
  sub_1C2E75744();
  sub_1C2E73274();
  LOBYTE(v38[0]) = 1;
  *&v32[6] = *&v33[51];
  *&v32[22] = *&v33[59];
  *&v32[38] = *&v33[67];
  v7 = sub_1C2E74EA4();
  KeyPath = swift_getKeyPath();
  v9 = v18;
  *&v34[0] = v18;
  WORD4(v34[0]) = 256;
  *(v34 + 10) = *v33;
  *(&v34[1] + 10) = *&v33[8];
  *(&v34[2] + 10) = *&v33[16];
  *(&v34[3] + 1) = *&v33[23];
  *&v23[31] = v34[1];
  v24 = v34[2];
  *&v23[23] = v34[0];
  v35[0] = v6;
  v35[1] = 0;
  LOWORD(v36[0]) = 1;
  *&v36[3] = *&v32[46];
  *(&v36[2] + 2) = *&v32[32];
  *(&v36[1] + 2) = *&v32[16];
  *(v36 + 2) = *v32;
  *(&v36[3] + 1) = KeyPath;
  v37 = v7;
  v25 = v34[3];
  v26 = v6;
  v31 = v7;
  v29 = v36[2];
  v30 = v36[3];
  v27 = v36[0];
  v28 = v36[1];
  v10 = v34[1];
  *a1 = v34[0];
  *(a1 + 16) = v10;
  v11 = v24;
  v12 = v25;
  v13 = v27;
  v14 = v28;
  *(a1 + 64) = v26;
  *(a1 + 80) = v13;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  v15 = v29;
  v16 = v30;
  *(a1 + 144) = v31;
  *(a1 + 112) = v15;
  *(a1 + 128) = v16;
  *(a1 + 96) = v14;
  v38[0] = v6;
  v38[1] = 0;
  v39 = 1;
  v40 = *v32;
  v41 = *&v32[16];
  *v42 = *&v32[32];
  *&v42[14] = *&v32[46];
  v43 = KeyPath;
  v44 = v7;
  sub_1C2C736A4(v34, &v19, &qword_1EC060E58, &qword_1C2E8D9A0);
  sub_1C2C736A4(v35, &v19, &qword_1EC060E60, &qword_1C2E852A0);
  sub_1C2C73644(v38, &qword_1EC060E60, &qword_1C2E852A0);
  v19 = v9;
  v20 = 256;
  v21 = *v33;
  v22 = *&v33[8];
  *v23 = *&v33[16];
  *&v23[7] = *&v33[23];
  return sub_1C2C73644(&v19, &qword_1EC060E58, &qword_1C2E8D9A0);
}

uint64_t sub_1C2D68510@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E75044();
  sub_1C2E75744();
  sub_1C2E73274();
  v3 = sub_1C2E74EA4();
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = result;
  *(a1 + 64) = v3;
  return result;
}

uint64_t sub_1C2D685E4(uint64_t a1)
{
  sub_1C2E756E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060E20, &qword_1C2E85248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060E28, &qword_1C2E85250);
  sub_1C2C94F38(&qword_1EC060E30, &qword_1EC060E20, &qword_1C2E85248, MEMORY[0x1E697FD98]);
  sub_1C2D6ADC4();
  return sub_1C2E756F4();
}

uint64_t FilterOnboardingContentView.body.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_1C2E74264();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060DC0, &qword_1C2E850D0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060DC8, &qword_1C2E850D8);
  MEMORY[0x1EEE9AC00](v35);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060DD0, &qword_1C2E850E0);
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060DD8, &qword_1C2E850E8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  v20 = *v2;
  *v8 = sub_1C2E73DC4();
  *(v8 + 1) = 0x402E000000000000;
  v8[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060DE0, &unk_1C2E850F0);
  sub_1C2D68B90(v20, &v8[*(v21 + 44)]);
  *&v8[*(v6 + 44)] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060120, &qword_1C2E83140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E7AA50;
  v23 = sub_1C2E74464();
  *(inited + 32) = v23;
  v24 = sub_1C2E74484();
  *(inited + 33) = v24;
  v25 = sub_1C2E744A4();
  *(inited + 34) = v25;
  v26 = sub_1C2E74494();
  sub_1C2E74494();
  if (sub_1C2E74494() != v23)
  {
    v26 = sub_1C2E74494();
  }

  sub_1C2E74494();
  if (sub_1C2E74494() != v24)
  {
    v26 = sub_1C2E74494();
  }

  sub_1C2E74494();
  if (sub_1C2E74494() != v25)
  {
    v26 = sub_1C2E74494();
  }

  sub_1C2D68FBC(v8, v10);
  v27 = v35;
  v28 = &v10[*(v35 + 36)];
  *v28 = v26;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  v28[40] = 1;
  v29 = v38;
  sub_1C2E74234();
  v30 = sub_1C2D6902C();
  sub_1C2E74C04();
  (*(v39 + 8))(v29, v40);
  sub_1C2C73644(v10, &qword_1EC060DC8, &qword_1C2E850D8);
  v42 = v27;
  v43 = v30;
  swift_getOpaqueTypeConformance2();
  v31 = v37;
  sub_1C2E74BB4();
  (*(v36 + 8))(v13, v31);
  sub_1C2C8A264(v19, v16);
  v32 = v41;
  *v41 = 0;
  *(v32 + 8) = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060E08, &qword_1C2E85108);
  sub_1C2C8A264(v16, v32 + *(v33 + 48));
  sub_1C2C8A2D4(v19);
  return sub_1C2C8A2D4(v16);
}

uint64_t sub_1C2D68B90@<X0>(char a1@<W0>, uint64_t a3@<X8>)
{
  v6 = sub_1C2E73D44();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060E68, &qword_1C2E852A8);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v41 = sub_1C2E73C24();
  v40 = sub_1C2E73DD4();
  v46 = 0;
  sub_1C2D6918C(a1 & 1);
  memcpy(v47, v44, sizeof(v47));
  memcpy(v48, v44, 0x2E8uLL);
  sub_1C2C736A4(v47, v43, &qword_1EC060E70, &qword_1C2E852B0);
  sub_1C2C73644(v48, &qword_1EC060E70, &qword_1C2E852B0);
  memcpy(&v45[7], v47, 0x2E8uLL);
  v38 = v46;
  v39 = sub_1C2E74454();
  v43[0] = 1;
  v16 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  (*(v7 + 104))(v9, *MEMORY[0x1E697F468], v6);
  v17 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060E78, &qword_1C2E852B8) + 36)];
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060E80, &qword_1C2E852C0) + 36)];
  v19 = sub_1C2E74124();
  (*(v7 + 16))(&v18[*(v19 + 20)], v9, v6);
  sub_1C2E73F74();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  (*(v7 + 8))(v9, v6);
  *v18 = v21;
  *(v18 + 1) = v23;
  *(v18 + 2) = v25;
  *(v18 + 3) = v27;
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060E88, &qword_1C2E852C8) + 36)] = 256;
  *v17 = v16;
  *(v17 + 4) = 256;
  v28 = sub_1C2E75744();
  v30 = v29;
  v31 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060E90, &qword_1C2E852D0) + 36)];
  *v31 = v28;
  v31[1] = v30;
  *v15 = v40;
  *(v15 + 1) = 0x4034000000000000;
  v15[16] = v38;
  memcpy(v15 + 17, v45, 0x2EFuLL);
  v15[768] = v39;
  *(v15 + 769) = v44[0];
  *(v15 + 193) = *(v44 + 3);
  *(v15 + 776) = 0u;
  *(v15 + 792) = 0u;
  v15[808] = 1;
  v32 = _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
  KeyPath = swift_getKeyPath();
  v34 = &v15[*(v11 + 44)];
  *v34 = KeyPath;
  v34[1] = v32;
  v35 = v42;
  sub_1C2C736A4(v15, v42, &qword_1EC060E68, &qword_1C2E852A8);
  *a3 = v41;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060E98, &qword_1C2E852D8);
  sub_1C2C736A4(v35, a3 + *(v36 + 48), &qword_1EC060E68, &qword_1C2E852A8);
  sub_1C2C73644(v15, &qword_1EC060E68, &qword_1C2E852A8);
  return sub_1C2C73644(v35, &qword_1EC060E68, &qword_1C2E852A8);
}

uint64_t sub_1C2D68FBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060DC0, &qword_1C2E850D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2D6902C()
{
  result = qword_1EC060DE8;
  if (!qword_1EC060DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060DC8, &qword_1C2E850D8);
    sub_1C2D690B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060DE8);
  }

  return result;
}

unint64_t sub_1C2D690B8()
{
  result = qword_1EC060DF0;
  if (!qword_1EC060DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060DC0, &qword_1C2E850D0);
    sub_1C2C94F38(&qword_1EC060DF8, &qword_1EC060E00, &qword_1C2E85100, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060DF0);
  }

  return result;
}

uint64_t sub_1C2D6918C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  __dst = v5;
  v18 = sub_1C2E73C24();
  LOBYTE(v98[0]) = 1;
  sub_1C2D69C58(v4 & 1, v2, &v118);
  v31 = *&v119[80];
  v32 = *&v119[96];
  v33 = *&v119[112];
  v34 = *&v119[128];
  v27 = *&v119[16];
  v28 = *&v119[32];
  v29 = *&v119[48];
  v30 = *&v119[64];
  v25 = v118;
  v26 = *v119;
  v35[6] = *&v119[80];
  v35[7] = *&v119[96];
  v35[8] = *&v119[112];
  v35[9] = *&v119[128];
  v35[2] = *&v119[16];
  v35[3] = *&v119[32];
  v35[4] = *&v119[48];
  v35[5] = *&v119[64];
  v35[0] = v118;
  v35[1] = *v119;
  sub_1C2C736A4(&v25, &v72, &qword_1EC060EA0, &qword_1C2E852E0);
  sub_1C2C73644(v35, &qword_1EC060EA0, &qword_1C2E852E0);
  *&v24[103] = v31;
  *&v24[119] = v32;
  *&v24[135] = v33;
  *&v24[151] = v34;
  *&v24[39] = v27;
  *&v24[55] = v28;
  *&v24[71] = v29;
  *&v24[87] = v30;
  *&v24[7] = v25;
  *&v24[23] = v26;
  v16 = v98[0];
  v17 = sub_1C2E73C24();
  LOBYTE(v98[0]) = 1;
  sub_1C2D69FF4(&v118);
  v40 = *&v119[48];
  v41 = *&v119[64];
  v42 = *&v119[80];
  v43 = *&v119[96];
  v36 = v118;
  v37 = *v119;
  v38 = *&v119[16];
  v39 = *&v119[32];
  v44[0] = v118;
  v44[1] = *v119;
  v44[2] = *&v119[16];
  v44[3] = *&v119[32];
  v44[4] = *&v119[48];
  v44[5] = *&v119[64];
  v44[6] = *&v119[80];
  v44[7] = *&v119[96];
  sub_1C2C736A4(&v36, &v72, &qword_1EC060EA8, &qword_1C2E852E8);
  sub_1C2C73644(v44, &qword_1EC060EA8, &qword_1C2E852E8);
  *&v23[71] = v40;
  *&v23[87] = v41;
  *&v23[103] = v42;
  *&v23[119] = v43;
  *&v23[7] = v36;
  *&v23[23] = v37;
  *&v23[39] = v38;
  *&v23[55] = v39;
  v14 = v98[0];
  v15 = sub_1C2E73C24();
  LOBYTE(v98[0]) = 1;
  sub_1C2D6A3C8(&v118);
  v51 = *&v119[80];
  v52 = *&v119[96];
  v47 = *&v119[16];
  v48 = *&v119[32];
  v50 = *&v119[64];
  v49 = *&v119[48];
  v46 = *v119;
  v45 = v118;
  v54[6] = *&v119[80];
  v54[7] = *&v119[96];
  v54[2] = *&v119[16];
  v54[3] = *&v119[32];
  v54[5] = *&v119[64];
  v54[4] = *&v119[48];
  v53 = *&v119[112];
  v55 = *&v119[112];
  v54[1] = *v119;
  v54[0] = v118;
  sub_1C2C736A4(&v45, &v72, &qword_1EC060EB0, &qword_1C2E852F0);
  sub_1C2C73644(v54, &qword_1EC060EB0, &qword_1C2E852F0);
  *&v22[87] = v50;
  *&v22[103] = v51;
  *&v22[119] = v52;
  *&v22[23] = v46;
  *&v22[39] = v47;
  *&v22[55] = v48;
  *&v22[71] = v49;
  *&v22[135] = v53;
  *&v22[7] = v45;
  LOBYTE(v2) = v98[0];
  v11 = v98[0];
  v12 = sub_1C2E73C24();
  LOBYTE(v98[0]) = 1;
  sub_1C2D6A814(&v118);
  v58 = *&v119[16];
  v59 = *&v119[32];
  v60 = *&v119[48];
  v61 = *&v119[64];
  v56 = v118;
  v57 = *v119;
  v62[2] = *&v119[16];
  v62[3] = *&v119[32];
  v62[5] = *&v119[64];
  v62[4] = *&v119[48];
  v62[0] = v118;
  v62[1] = *v119;
  sub_1C2C736A4(&v56, &v72, &qword_1EC060EB8, &qword_1C2E852F8);
  sub_1C2C73644(v62, &qword_1EC060EB8, &qword_1C2E852F8);
  *&v21[39] = v58;
  *&v21[55] = v59;
  *&v21[71] = v60;
  *&v21[87] = v61;
  *&v21[7] = v56;
  *&v21[23] = v57;
  v6 = v98[0];
  v10 = v98[0];
  v9 = sub_1C2E73C24();
  LOBYTE(v98[0]) = 1;
  sub_1C2D6AAA0(&v118);
  v67 = *&v119[48];
  v68 = *&v119[64];
  v69 = *&v119[80];
  v63 = v118;
  v64 = *v119;
  v66 = *&v119[32];
  v65 = *&v119[16];
  v70[1] = *v119;
  v70[0] = v118;
  v70[2] = *&v119[16];
  v70[3] = *&v119[32];
  v70[4] = *&v119[48];
  v70[5] = *&v119[64];
  v71 = *&v119[80];
  sub_1C2C736A4(&v63, &v72, &qword_1EC060EC0, &qword_1C2E85300);
  sub_1C2C73644(v70, &qword_1EC060EC0, &qword_1C2E85300);
  *(&v20[3] + 7) = v66;
  *(&v20[4] + 7) = v67;
  *(&v20[5] + 7) = v68;
  *(v20 + 7) = v63;
  *(&v20[1] + 7) = v64;
  *(&v20[2] + 7) = v65;
  v72 = v18;
  v73[0] = v16;
  *&v73[33] = *&v24[32];
  *&v73[17] = *&v24[16];
  *&v73[1] = *v24;
  *&v73[97] = *&v24[96];
  *&v73[81] = *&v24[80];
  *&v73[65] = *&v24[64];
  *&v73[49] = *&v24[48];
  *&v73[160] = *&v24[159];
  *&v73[145] = *&v24[144];
  *&v73[129] = *&v24[128];
  *&v73[113] = *&v24[112];
  *&__src[128] = *&v73[112];
  *&__src[144] = *&v73[128];
  *&__src[160] = *&v73[144];
  *&__src[64] = *&v73[48];
  *&__src[80] = *&v73[64];
  *&__src[96] = *&v73[80];
  *&__src[112] = *&v73[96];
  *__src = v18;
  *&__src[16] = *v73;
  *&__src[32] = *&v73[16];
  *&__src[48] = *&v73[32];
  v74[0] = v17;
  v74[1] = 0;
  v75[0] = v14;
  *&v75[97] = *&v23[96];
  *&v75[81] = *&v23[80];
  *&v75[33] = *&v23[32];
  *&v75[17] = *&v23[16];
  *&v75[113] = *&v23[112];
  *&v75[49] = *&v23[48];
  *&v75[65] = *&v23[64];
  *&v75[1] = *v23;
  *&__src[296] = *&v75[96];
  *&__src[312] = *&v75[112];
  *&__src[264] = *&v75[64];
  *&__src[280] = *&v75[80];
  *&__src[216] = *&v75[16];
  *&__src[232] = *&v75[32];
  *&__src[248] = *&v75[48];
  *&__src[184] = v17;
  *&__src[200] = *v75;
  *&v77[97] = *&v22[96];
  *&v77[81] = *&v22[80];
  *&v77[33] = *&v22[32];
  *&v77[17] = *&v22[16];
  *(&v20[6] + 7) = v69;
  v7 = v98[0];
  *&v75[128] = *&v23[127];
  *&__src[176] = *&v73[160];
  *&__src[328] = *&v23[127];
  v76 = v15;
  v77[0] = v2;
  *&v77[113] = *&v22[112];
  *&v77[128] = *&v22[127];
  *&v77[49] = *&v22[48];
  *&v77[65] = *&v22[64];
  *&v77[1] = *v22;
  *&__src[432] = *&v77[80];
  *&__src[448] = *&v77[96];
  *&__src[464] = *&v77[112];
  *&__src[480] = *&v22[127];
  *&__src[368] = *&v77[16];
  *&__src[384] = *&v77[32];
  *&__src[400] = *&v77[48];
  *&__src[416] = *&v77[64];
  *&__src[336] = v15;
  *&__src[352] = *v77;
  v78 = v12;
  v79[0] = v6;
  *&v79[1] = *v21;
  *&v79[17] = *&v21[16];
  *&v79[33] = *&v21[32];
  *&v79[81] = *&v21[80];
  *&v79[65] = *&v21[64];
  *&v79[49] = *&v21[48];
  *&v79[96] = *&v21[95];
  *&__src[528] = *&v79[16];
  *&__src[544] = *&v79[32];
  *&__src[496] = v12;
  *&__src[512] = *v79;
  *&__src[608] = *&v21[95];
  *&__src[576] = *&v79[64];
  *&__src[592] = *&v79[80];
  *&__src[560] = *&v79[48];
  v80[0] = v9;
  v80[1] = 0;
  LOBYTE(v81[0]) = v98[0];
  *(v81 + 1) = v20[0];
  *(&v81[2] + 1) = v20[2];
  *(&v81[1] + 1) = v20[1];
  v81[6] = *(&v20[5] + 15);
  *(&v81[5] + 1) = v20[5];
  *(&v81[4] + 1) = v20[4];
  *(&v81[3] + 1) = v20[3];
  *&__src[648] = v81[1];
  *&__src[664] = v81[2];
  *&__src[616] = v9;
  *&__src[632] = v81[0];
  *&__src[712] = v81[5];
  *&__src[728] = v81[6];
  *&__src[680] = v81[3];
  *&__src[696] = v81[4];
  memcpy(__dst, __src, 0x2E8uLL);
  v87 = v20[3];
  v88 = v20[4];
  *v89 = v20[5];
  *&v89[15] = *(&v20[5] + 15);
  v84 = v20[0];
  v85 = v20[1];
  v82[0] = v9;
  v82[1] = 0;
  v83 = v7;
  v86 = v20[2];
  sub_1C2C736A4(&v72, &v118, &qword_1EC060EC8, &qword_1C2E85308);
  sub_1C2C736A4(v74, &v118, &qword_1EC060ED0, &qword_1C2E85310);
  sub_1C2C736A4(&v76, &v118, &qword_1EC060ED8, &qword_1C2E85318);
  sub_1C2C736A4(&v78, &v118, &qword_1EC060EE0, &qword_1C2E85320);
  sub_1C2C736A4(v80, &v118, &qword_1EC060EE8, &unk_1C2E85328);
  sub_1C2C73644(v82, &qword_1EC060EE8, &unk_1C2E85328);
  v95 = *&v21[48];
  v96 = *&v21[64];
  *v97 = *&v21[80];
  v92 = *v21;
  v93 = *&v21[16];
  v90[0] = v12;
  v90[1] = 0;
  v91 = v10;
  *&v97[15] = *&v21[95];
  v94 = *&v21[32];
  sub_1C2C73644(v90, &qword_1EC060EE0, &qword_1C2E85320);
  v105 = *&v22[80];
  v106 = *&v22[96];
  *v107 = *&v22[112];
  *&v107[15] = *&v22[127];
  v101 = *&v22[16];
  v102 = *&v22[32];
  v103 = *&v22[48];
  v104 = *&v22[64];
  v98[0] = v15;
  v98[1] = 0;
  v99 = v11;
  v100 = *v22;
  sub_1C2C73644(v98, &qword_1EC060ED8, &qword_1C2E85318);
  v115 = *&v23[80];
  v116 = *&v23[96];
  *v117 = *&v23[112];
  v111 = *&v23[16];
  v112 = *&v23[32];
  v113 = *&v23[48];
  v114 = *&v23[64];
  v108[0] = v17;
  v108[1] = 0;
  v109 = v14;
  *&v117[15] = *&v23[127];
  v110 = *v23;
  sub_1C2C73644(v108, &qword_1EC060ED0, &qword_1C2E85310);
  *&v119[113] = *&v24[112];
  *&v119[129] = *&v24[128];
  *v120 = *&v24[144];
  *&v119[49] = *&v24[48];
  *&v119[65] = *&v24[64];
  *&v119[81] = *&v24[80];
  *&v119[97] = *&v24[96];
  *&v119[1] = *v24;
  *&v119[17] = *&v24[16];
  v118 = v18;
  v119[0] = v16;
  *&v120[15] = *&v24[159];
  *&v119[33] = *&v24[32];
  return sub_1C2C73644(&v118, &qword_1EC060EC8, &qword_1C2E85308);
}

uint64_t sub_1C2D69C58@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = sub_1C2E75044();
  v7 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060EF0, &qword_1C2E85338);
  sub_1C2E75184();
  if (v34)
  {
    v8 = 0;
    v30 = 0;
    v31 = 0;
    v28 = 0;
    v29 = 0;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v8 = sub_1C2E75044();
    sub_1C2E75744();
    sub_1C2E73274();
    v30 = v35;
    v31 = v34;
    v28 = v37;
    v29 = v36;
    v26 = v39;
    v27 = v38;
  }

  LOBYTE(v40) = a1 & 1;
  sub_1C2E75184();
  if (v32 == 1)
  {
    v9 = sub_1C2E75044();
    sub_1C2E75744();
    sub_1C2E73274();
    v24 = v3;
    v25 = v40;
    v22 = v42;
    v23 = v41;
    v10 = v44;
    v21 = v43;
  }

  else
  {
    v9 = 0;
    v24 = 0;
    v25 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    v10 = 0;
  }

  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_1C2E71684();

  sub_1C2C74960();
  v13 = sub_1C2E748A4();
  v15 = v14;
  v17 = v16;
  v19 = v18 & 1;
  v33 = v18 & 1;

  sub_1C2C72330(v13, v15, v19);

  sub_1C2C72330(v13, v15, v19);

  sub_1C2C72340(v13, v15, v19);

  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v31;
  *(a3 + 32) = v30;
  *(a3 + 40) = v29;
  *(a3 + 48) = v28;
  *(a3 + 56) = v27;
  *(a3 + 64) = v26;
  *(a3 + 72) = v9;
  *(a3 + 80) = v25;
  *(a3 + 88) = v24;
  *(a3 + 96) = v23;
  *(a3 + 104) = v22;
  *(a3 + 112) = v21;
  *(a3 + 120) = v10;
  *(a3 + 128) = v13;
  *(a3 + 136) = v15;
  *(a3 + 144) = v19;
  *(a3 + 152) = v17;
  sub_1C2C72340(v13, v15, v33);
}

double sub_1C2D69FF4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E75044();
  v3 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v4 = sub_1C2E73C24();
  v14[0] = 1;
  sub_1C2D6A1EC(&v26);
  v18 = *&v27[16];
  v19 = *&v27[32];
  v20 = *&v27[48];
  v21 = *&v27[64];
  v16 = v26;
  v17 = *v27;
  v23 = *&v27[64];
  v22[2] = *&v27[16];
  v22[3] = *&v27[32];
  v22[4] = *&v27[48];
  v22[0] = v26;
  v22[1] = *v27;
  sub_1C2C736A4(&v16, &v24, &qword_1EC060EF8, &qword_1C2E85340);
  sub_1C2C73644(v22, &qword_1EC060EF8, &qword_1C2E85340);
  *&v15[39] = v18;
  *&v15[55] = v19;
  *&v15[71] = v20;
  *&v15[87] = v21;
  *&v15[7] = v16;
  *&v15[23] = v17;
  v24 = v4;
  v25[0] = 1;
  v5 = *&v15[16];
  *&v25[1] = *v15;
  *&v25[80] = *&v15[79];
  *&v25[65] = *&v15[64];
  v7 = *&v15[48];
  v6 = *&v15[64];
  *&v25[49] = *&v15[48];
  v8 = *&v15[32];
  *&v25[33] = *&v15[32];
  v9 = *v15;
  *&v25[17] = *&v15[16];
  v10 = *v25;
  *(a1 + 16) = v4;
  *(a1 + 32) = v10;
  v11 = *&v25[80];
  *(a1 + 96) = *&v25[64];
  *(a1 + 112) = v11;
  v12 = *&v25[48];
  *(a1 + 64) = *&v25[32];
  *(a1 + 80) = v12;
  *(a1 + 48) = *&v25[16];
  *a1 = v2;
  *(a1 + 8) = v3;
  v26 = v4;
  v27[0] = 1;
  *&v27[17] = v5;
  *&v27[1] = v9;
  *&v27[80] = *&v15[79];
  *&v27[65] = v6;
  *&v27[49] = v7;
  *&v27[33] = v8;

  sub_1C2C736A4(&v24, v14, &qword_1EC060F00, &qword_1C2E85348);
  sub_1C2C73644(&v26, &qword_1EC060F00, &qword_1C2E85348);

  return result;
}

uint64_t sub_1C2D6A1EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E75044();
  sub_1C2E75744();
  sub_1C2E73274();
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_1C2E71684();

  sub_1C2C74960();
  v5 = sub_1C2E748A4();
  v7 = v6;
  v9 = v8 & 1;
  *a1 = v2;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  *(a1 + 40) = v16;
  *(a1 + 48) = v17;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = v8 & 1;
  *(a1 + 80) = v10;

  sub_1C2C72330(v5, v7, v9);

  sub_1C2C72340(v5, v7, v9);
}

double sub_1C2D6A3C8@<D0>(uint64_t a3@<X8>)
{
  v29 = sub_1C2E75044();
  v27 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v28 = sub_1C2E75044();
  sub_1C2E75744();
  sub_1C2E73274();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060EF0, &qword_1C2E85338);
  sub_1C2E75184();
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  if ((v30 & 1) == 0)
  {
    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    sub_1C2E71684();

    sub_1C2C74960();
    v3 = sub_1C2E748A4();
    v4 = v9;
    v6 = v10;
    v5 = v11 & 1;
    sub_1C2C72330(v3, v9, v11 & 1);
  }

  v26 = v5;
  v12 = v4;
  sub_1C2E75184();
  if (v30 == 1)
  {
    type metadata accessor for StringDummy();
    v13 = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    sub_1C2E71684();

    sub_1C2C74960();
    v15 = sub_1C2E748A4();
    v17 = v16;
    v19 = v15;
    v21 = v20;
    v22 = v18 & 1;
    sub_1C2C72330(v15, v20, v18 & 1);
    v23 = v17;
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1C2C7DD04(v3, v12, v26, v6);
  sub_1C2C7DD04(v19, v21, v22, v23);
  sub_1C2C7F6D4(v3, v12, v26, v6);
  sub_1C2C7F6D4(v19, v21, v22, v23);

  *a3 = v29;
  *(a3 + 8) = v27;
  *(a3 + 16) = v28;
  *(a3 + 24) = v31;
  *(a3 + 32) = v32;
  *(a3 + 40) = v33;
  *(a3 + 48) = v34;
  *(a3 + 56) = v35;
  *(a3 + 64) = v36;
  *(a3 + 72) = v3;
  *(a3 + 80) = v12;
  *(a3 + 88) = v26;
  *(a3 + 96) = v6;
  *(a3 + 104) = v19;
  *(a3 + 112) = v21;
  *(a3 + 120) = v22;
  *(a3 + 128) = v23;
  sub_1C2C7F6D4(v19, v21, v22, v23);
  sub_1C2C7F6D4(v3, v12, v26, v6);

  return result;
}

uint64_t sub_1C2D6A814@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E75044();
  v3 = sub_1C2E75044();
  sub_1C2E75744();
  sub_1C2E73274();
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_1C2E71684();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90, &unk_1C2E7B240);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C2E7A930;
  v7 = MEMORY[0x1E69E65A8];
  *(v6 + 56) = MEMORY[0x1E69E6530];
  *(v6 + 64) = v7;
  *(v6 + 32) = 2;
  sub_1C2E75C34();

  sub_1C2C74960();
  v8 = sub_1C2E748A4();
  v10 = v9;
  v12 = v11 & 1;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v15;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  *(a1 + 40) = v18;
  *(a1 + 48) = v19;
  *(a1 + 56) = v20;
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  *(a1 + 80) = v11 & 1;
  *(a1 + 88) = v13;

  sub_1C2C72330(v8, v10, v12);

  sub_1C2C72340(v8, v10, v12);
}

uint64_t sub_1C2D6AAA0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E75044();
  v3 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v4 = sub_1C2E75044();
  sub_1C2E75744();
  sub_1C2E73274();
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_1C2E71684();

  sub_1C2C74960();
  v7 = sub_1C2E748A4();
  v9 = v8;
  v11 = v10 & 1;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  *(a1 + 40) = v16;
  *(a1 + 48) = v17;
  *(a1 + 56) = v18;
  *(a1 + 64) = v19;
  *(a1 + 72) = v7;
  *(a1 + 80) = v8;
  *(a1 + 88) = v10 & 1;
  *(a1 + 96) = v12;

  sub_1C2C72330(v7, v9, v11);

  sub_1C2C72340(v7, v9, v11);
}

uint64_t sub_1C2D6ACDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1C2D6AD38(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1C2D6ADC4()
{
  result = qword_1EC060E38;
  if (!qword_1EC060E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060E28, &qword_1C2E85250);
    sub_1C2D48EE0();
    sub_1C2C94F38(&qword_1EC05CB00, &qword_1EC05DD80, &qword_1C2E7B840, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060E38);
  }

  return result;
}

unint64_t sub_1C2D6AE7C()
{
  result = qword_1EC060F08;
  if (!qword_1EC060F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060F10, &unk_1C2E85350);
    sub_1C2C94F38(&qword_1EC060E30, &qword_1EC060E20, &qword_1C2E85248, MEMORY[0x1E697FD98]);
    sub_1C2D6ADC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060F08);
  }

  return result;
}

uint64_t sub_1C2D6AF40(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C2E768E4();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = 0;
    v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v19 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = (v5 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_1C2E765B4();
        v14 = v13;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v20[0] = a1;
          v20[1] = v19;
          v12 = v20 + v9;
        }

        else
        {
          v11 = v18;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v11 = sub_1C2E76604();
          }

          v12 = (v11 + v9);
        }

        if ((*v12 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v16 = (__clz(*v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v14 = 3;
          }

          else
          {
            v14 = 4;
          }

          goto LABEL_15;
        }

        if (v16 == 1)
        {
LABEL_14:
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }
      }

LABEL_15:
      sub_1C2E768F4();
      v15 = sub_1C2E768D4();
      (*v10)(v7, v4);
      if ((v15 & 1) == 0)
      {
        v9 += v14;
        if (v9 < v8)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  v15 = 0;
  return v15 & 1;
}

double BadgeView.init(text:foregroundColor:backgroundColor:)@<D0>(uint64_t a5@<X8>)
{
  *&v8 = 0x3FF0000000000000;
  sub_1C2C774AC();

  sub_1C2E731D4();
  v6 = a5 + *(type metadata accessor for BadgeView(0) + 20);
  sub_1C2E75174();
  *v6 = v8;
  *(v6 + 16) = v9;
  sub_1C2E75174();

  return result;
}

uint64_t BadgeView.init(text:style:)@<X0>(uint64_t a4@<X8>)
{
  *&v7 = 0x3FF0000000000000;
  sub_1C2C774AC();
  sub_1C2E731D4();
  v5 = a4 + *(type metadata accessor for BadgeView(0) + 20);
  sub_1C2E75174();
  *v5 = v7;
  *(v5 + 16) = v8;
  return sub_1C2E75174();
}

uint64_t BadgeView.init<A>(text:cutoutBackgroundStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v11 = *(a4 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v15, v12);
  v16 = sub_1C2E73284();
  *&v21 = 0x3FF0000000000000;
  sub_1C2C774AC();
  sub_1C2E731D4();
  v17 = a6 + *(type metadata accessor for BadgeView(0) + 20);
  v20[1] = a1;
  v20[2] = a2;
  sub_1C2E75174();
  v18 = v22;
  *v17 = v21;
  *(v17 + 16) = v18;
  v21 = v16;
  sub_1C2E75174();
  return (*(v11 + 8))(a3, a4);
}

uint64_t BadgeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060F18, &qword_1C2E85360);
  MEMORY[0x1EEE9AC00](v90);
  v3 = v80 - v2;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060F20, &unk_1C2E85368);
  MEMORY[0x1EEE9AC00](v95);
  v80[0] = v80 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810, &qword_1C2E7B9B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v80 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060F28, &qword_1C2E85378);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v89 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v94 = v80 - v11;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060F30, &qword_1C2E85380);
  MEMORY[0x1EEE9AC00](v88);
  v93 = v80 - v12;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060F38, &qword_1C2E85388);
  MEMORY[0x1EEE9AC00](v92);
  v91 = v80 - v13;
  v86 = type metadata accessor for BadgeView(0);
  v14 = *(v86 + 20);
  v97 = v1;
  v15 = (v1 + v14);
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  v83 = v16;
  *&v103 = v16;
  *(&v103 + 1) = v17;
  v82 = v17;
  v81 = v18;
  v104 = v18;
  v80[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E860, &unk_1C2E85390);
  sub_1C2E75184();
  v103 = v102;
  sub_1C2C74960();
  v19 = sub_1C2E748A4();
  v21 = v20;
  v23 = v22;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E288, &qword_1C2E7C388);
  sub_1C2E731E4();
  sub_1C2E74554();
  v24 = *MEMORY[0x1E6980E20];
  v25 = sub_1C2E74534();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v7, v24, v25);
  (*(v26 + 56))(v7, 0, 1, v25);
  sub_1C2E745C4();
  sub_1C2C73644(v7, &qword_1EC05D810, &qword_1C2E7B9B0);
  v27 = sub_1C2E747F4();
  v29 = v28;
  v31 = v30;

  sub_1C2C72340(v19, v21, v23 & 1);

  v32 = v97 + *(v86 + 24);
  v33 = *(v32 + 16);
  v103 = *v32;
  v104 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060F40, &qword_1C2E853A0);
  sub_1C2E75184();
  v34 = v102;
  if ((*(&v102 + 1) & 0x8000000000000000) != 0)
  {

    v35 = v34;
  }

  else
  {
    v35 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  }

  sub_1C2D6BE94(v34, *(&v34 + 1));
  *&v103 = v35;
  v84 = sub_1C2E74794();
  v85 = v36;
  v38 = v37;
  v86 = v39;
  sub_1C2C72340(v27, v29, v31 & 1);

  v40 = sub_1C2E744B4();
  v41 = v97;
  sub_1C2E731E4();
  sub_1C2E73034();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v38 & 1;
  v108 = v38 & 1;
  v105 = 0;
  v51 = sub_1C2E74444();
  sub_1C2E731E4();
  sub_1C2E73034();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v109 = 0;
  v60 = *(v32 + 16);
  v103 = *v32;
  v104 = v60;
  sub_1C2E75184();
  if (v101 < 0)
  {

    goto LABEL_8;
  }

  sub_1C2D6BE94(v100, v101);
  *&v103 = v83;
  *(&v103 + 1) = v82;
  v104 = v81;
  sub_1C2E75184();
  v61 = sub_1C2D6AF40(v98, v99);

  if (v61)
  {
LABEL_8:
    v68 = v85;
    *v3 = v84;
    *(v3 + 1) = v68;
    v3[16] = v50;
    *(v3 + 17) = *v107;
    *(v3 + 5) = *&v107[3];
    *(v3 + 3) = v86;
    v3[32] = v40;
    *(v3 + 33) = *v106;
    *(v3 + 9) = *&v106[3];
    *(v3 + 5) = v43;
    *(v3 + 6) = v45;
    *(v3 + 7) = v47;
    *(v3 + 8) = v49;
    v3[72] = 0;
    *(v3 + 73) = *v111;
    *(v3 + 19) = *&v111[3];
    v3[80] = v51;
    *(v3 + 81) = *v110;
    *(v3 + 21) = *&v110[3];
    *(v3 + 11) = v53;
    *(v3 + 12) = v55;
    *(v3 + 13) = v57;
    *(v3 + 14) = v59;
    v3[120] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E520, &qword_1C2E7CBC8);
    sub_1C2D6BEE0();
    sub_1C2D6BF6C();
    v67 = v89;
    sub_1C2E73F44();
    goto LABEL_9;
  }

  v62 = *(v95 + 36);
  v63 = *MEMORY[0x1E6981DC0];
  v64 = sub_1C2E757E4();
  v65 = v80[0];
  (*(*(v64 - 8) + 104))(v80[0] + v62, v63, v64);
  v66 = v85;
  *v65 = v84;
  *(v65 + 8) = v66;
  *(v65 + 16) = v50;
  *(v65 + 17) = *v107;
  *(v65 + 20) = *&v107[3];
  *(v65 + 24) = v86;
  *(v65 + 32) = v40;
  *(v65 + 33) = *v106;
  *(v65 + 36) = *&v106[3];
  *(v65 + 40) = v43;
  *(v65 + 48) = v45;
  *(v65 + 56) = v47;
  *(v65 + 64) = v49;
  *(v65 + 72) = 0;
  LODWORD(v66) = *v111;
  *(v65 + 76) = *&v111[3];
  *(v65 + 73) = v66;
  *(v65 + 80) = v51;
  *(v65 + 81) = *v110;
  *(v65 + 84) = *&v110[3];
  *(v65 + 88) = v53;
  *(v65 + 96) = v55;
  *(v65 + 104) = v57;
  *(v65 + 112) = v59;
  *(v65 + 120) = 0;
  sub_1C2D6C1E4(v65, v3);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E520, &qword_1C2E7CBC8);
  sub_1C2D6BEE0();
  sub_1C2D6BF6C();
  v67 = v89;
  sub_1C2E73F44();
  sub_1C2C73644(v65, &qword_1EC060F20, &unk_1C2E85368);
LABEL_9:
  v69 = v94;
  sub_1C2C71D5C(v67, v94, &qword_1EC060F28, &qword_1C2E85378);
  v70 = sub_1C2E75744();
  v72 = v71;
  v73 = v93;
  v74 = &v93[*(v88 + 36)];
  sub_1C2D6BFF8(v41, v74);
  v75 = (v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060F48, &qword_1C2E853A8) + 36));
  *v75 = v70;
  v75[1] = v72;
  sub_1C2C71D5C(v69, v73, &qword_1EC060F28, &qword_1C2E85378);
  v76 = sub_1C2E73C04();
  v77 = v91;
  sub_1C2C71D5C(v73, v91, &qword_1EC060F30, &qword_1C2E85380);
  v78 = (v77 + *(v92 + 36));
  *v78 = v76;
  v78[1] = sub_1C2D6C1BC;
  v78[2] = 0;
  return sub_1C2C71D5C(v77, v96, &qword_1EC060F38, &qword_1C2E85388);
}

double sub_1C2D6BE94(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }

  return result;
}

unint64_t sub_1C2D6BEE0()
{
  result = qword_1EC05B6C0;
  if (!qword_1EC05B6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060F20, &unk_1C2E85368);
    sub_1C2D6BF6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B6C0);
  }

  return result;
}

unint64_t sub_1C2D6BF6C()
{
  result = qword_1EC05B788;
  if (!qword_1EC05B788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E520, &qword_1C2E7CBC8);
    sub_1C2CD8E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B788);
  }

  return result;
}

uint64_t sub_1C2D6BFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C2E737C4();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E288, &qword_1C2E7C388);
  sub_1C2E731E4();
  v8 = *&v19 + *&v19;
  sub_1C2E731E4();
  v9 = *&v19 + *&v19;
  v10 = *(v5 + 28);
  v11 = *MEMORY[0x1E697F468];
  v12 = sub_1C2E73D44();
  (*(*(v12 - 8) + 104))(v7 + v10, v11, v12);
  *v7 = v8;
  v7[1] = v9;
  v13 = (a1 + *(type metadata accessor for BadgeView(0) + 24));
  v14 = *(v13 + 2);
  v19 = *v13;
  v20 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060F40, &qword_1C2E853A0);
  sub_1C2E75184();
  v15 = v21;
  v16 = v22;
  if (v22 < 0)
  {
    *&v19 = v22 & 0x7FFFFFFFFFFFFFFFLL;

    v17 = sub_1C2E73284();
    sub_1C2D6BE94(v15, v16);
  }

  else
  {
    v17 = v21;
  }

  sub_1C2D6C63C(v7, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060F58, &qword_1C2E8F2A0);
  *(a2 + *(result + 36)) = v17;
  return result;
}

uint64_t sub_1C2D6C1E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060F20, &unk_1C2E85368);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2D6C28C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 16))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (((*(a1 + 8) >> 50) >> 13) | (2 * ((*(a1 + 8) >> 50) & 0x1C00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C2D6C304(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1C2D6C380(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[1] = v2;
  return result;
}

unint64_t sub_1C2D6C3A8()
{
  result = qword_1EC05B6E8;
  if (!qword_1EC05B6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060F50, &unk_1C2E854C0);
    sub_1C2D6C434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B6E8);
  }

  return result;
}

unint64_t sub_1C2D6C434()
{
  result = qword_1EC05B7D0;
  if (!qword_1EC05B7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060F38, &qword_1C2E85388);
    sub_1C2D6C4C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B7D0);
  }

  return result;
}

unint64_t sub_1C2D6C4C0()
{
  result = qword_1EC05B970;
  if (!qword_1EC05B970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060F30, &qword_1C2E85380);
    sub_1C2D6C54C();
    sub_1C2D6C5D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B970);
  }

  return result;
}

unint64_t sub_1C2D6C54C()
{
  result = qword_1EC05B580;
  if (!qword_1EC05B580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060F28, &qword_1C2E85378);
    sub_1C2D6BEE0();
    sub_1C2D6BF6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B580);
  }

  return result;
}

unint64_t sub_1C2D6C5D8()
{
  result = qword_1EC05B5D0;
  if (!qword_1EC05B5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060F48, &qword_1C2E853A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B5D0);
  }

  return result;
}

uint64_t sub_1C2D6C63C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2E737C4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CallRecordingCountdownView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CallRecordingCountdownView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1C2CA1AAC;
}

void *CallRecordingCountdownView.init(config:usesGlass:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___closeButton] = 0;
  *&v2[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___stackView] = 0;
  *&v2[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___titleLabel] = 0;
  *&v2[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___subtitleLabel] = 0;
  sub_1C2C6E3A4(a1, &v2[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config]);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 40))(v7, v8);
  v10 = objc_allocWithZone(type metadata accessor for AudioMiddleStackBackgroundView());
  *&v3[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_backgroundView] = AudioMiddleStackBackgroundView.init(effect:usesGlass:)(v9, v4);
  v11 = &v3[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_strings];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  v14.receiver = v3;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1C2D6C9AC();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

void sub_1C2D6C9AC()
{
  v1 = v0;
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v60 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_backgroundView;
  [v0 addSubview_];
  v2 = sub_1C2D6D728(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___stackView, sub_1C2D6D5C4);
  [v1 addSubview_];

  v3 = sub_1C2D6D728(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___closeButton, sub_1C2D6D1A0);
  [v1 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0, &unk_1C2E7C050);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C2E854D0;
  v5 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___stackView;
  v6 = [*(v1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___stackView) topAnchor];
  v7 = [v1 topAnchor];
  v8 = v1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config;
  v9 = *(v1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config + 24);
  v10 = *(v1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config + 32);
  __swift_project_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config, v9);
  (*(v10 + 8))(v9, v10);
  v11 = [v6 constraintEqualToAnchor:v7 constant:?];

  *(v4 + 32) = v11;
  v12 = [*(v1 + v5) bottomAnchor];
  v13 = [v1 bottomAnchor];
  v14 = *(v8 + 3);
  v15 = *(v8 + 4);
  __swift_project_boxed_opaque_existential_1(v8, v14);
  (*(v15 + 8))(v14, v15);
  v17 = [v12 &selRef:v13 setAllowsEdgeAntialiasing:-v16 + 6];

  *(v4 + 40) = v17;
  v18 = [*(v1 + v5) leadingAnchor];
  v19 = [v1 leadingAnchor];
  v20 = *(v8 + 3);
  v21 = *(v8 + 4);
  __swift_project_boxed_opaque_existential_1(v8, v20);
  (*(v21 + 8))(v20, v21);
  v23 = [v18 constraintEqualToAnchor:v19 constant:v22];

  *(v4 + 48) = v23;
  v24 = [*(v1 + v5) trailingAnchor];
  v25 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___closeButton;
  v26 = [*(v1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___closeButton) leadingAnchor];
  v27 = *(v8 + 3);
  v28 = *(v8 + 4);
  __swift_project_boxed_opaque_existential_1(v8, v27);
  v29 = (*(v28 + 24))(v27, v28);
  if (*(v29 + 16))
  {
    v30 = *(v29 + 32);
  }

  else
  {
    v30 = 0.0;
  }

  v59 = objc_opt_self();
  v31 = [v24 constraintEqualToAnchor:v26 constant:-v30];

  *(v4 + 56) = v31;
  v32 = [*&v60[v1] topAnchor];
  v33 = [v1 topAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v4 + 64) = v34;
  v35 = [*&v60[v1] leadingAnchor];
  v36 = [v1 leadingAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v4 + 72) = v37;
  v38 = [*&v60[v1] trailingAnchor];
  v39 = [v1 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v4 + 80) = v40;
  v41 = [*&v60[v1] bottomAnchor];
  v42 = [v1 bottomAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v4 + 88) = v43;
  v44 = [*(v1 + v25) centerYAnchor];
  v45 = [v1 centerYAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v4 + 96) = v46;
  v47 = [*(v1 + v25) trailingAnchor];
  v48 = [v1 trailingAnchor];
  v49 = *(v8 + 3);
  v50 = *(v8 + 4);
  __swift_project_boxed_opaque_existential_1(v8, v49);
  (*(v50 + 8))(v49, v50);
  v52 = [v47 constraintEqualToAnchor:v48 constant:-v51];

  *(v4 + 104) = v52;
  v53 = [v1 heightAnchor];
  v54 = [v53 constraintGreaterThanOrEqualToConstant_];

  *(v4 + 112) = v54;
  sub_1C2C6E1B4(0, &qword_1EC062670, 0x1E696ACD8);
  v55 = sub_1C2E75D64();

  [v59 activateConstraints_];

  v56 = sub_1C2D6D728(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___titleLabel, sub_1C2D6D78C);
  LODWORD(v57) = 1144750080;
  [v56 setContentCompressionResistancePriority:0 forAxis:v57];

  v61 = sub_1C2D6D728(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___subtitleLabel, sub_1C2D6DBF4);
  LODWORD(v58) = 1144750080;
  [v61 setContentCompressionResistancePriority:0 forAxis:v58];
}

id sub_1C2D6D1A0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDDB8] scale:1];
  v4 = sub_1C2E75C24();
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  [v2 setImage:v5 forState:0];
  v6 = [v2 imageView];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() labelColor];
    [v7 setTintColor_];
  }

  [v2 setContentMode_];
  v9 = [v2 imageView];
  if (v9)
  {
    v10 = v9;
    [v9 setContentMode_];
  }

  [v2 addTarget:a1 action:sel_handleTapClose forControlEvents:64];
  v11 = [v2 imageView];
  if (v11)
  {
    v12 = v11;
    [v11 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  }

  v13 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config + 24);
  v14 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config), v13);
  v15 = (*(v14 + 32))(v13, v14);
  [v2 setMaximumContentSizeCategory_];

  [v2 setMinimumContentSizeCategory_];
  v16 = [v2 imageView];
  if (v16)
  {
    v17 = v16;
    [v17 setTranslatesAutoresizingMaskIntoConstraints_];
    v27 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0, &unk_1C2E7C050);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C2E81350;
    v19 = [v17 heightAnchor];
    v20 = [v2 heightAnchor];

    v21 = [v19 constraintEqualToAnchor_];
    *(v18 + 32) = v21;
    v22 = [v17 widthAnchor];
    v23 = [v17 heightAnchor];

    v24 = [v22 constraintEqualToAnchor_];
    *(v18 + 40) = v24;
    sub_1C2C6E1B4(0, &qword_1EC062670, 0x1E696ACD8);
    v25 = sub_1C2E75D64();

    [v27 activateConstraints_];
  }

  else
  {
    v25 = v5;
    v5 = v3;
    v3 = v2;
  }

  return v2;
}

id sub_1C2D6D5C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0, &unk_1C2E7C050);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C2E81350;
  *(v0 + 32) = sub_1C2D6D728(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___titleLabel, sub_1C2D6D78C);
  *(v0 + 40) = sub_1C2D6D728(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___subtitleLabel, sub_1C2D6DBF4);
  v1 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
  sub_1C2C6E1B4(0, &qword_1EC062710, 0x1E69DD250);
  v2 = sub_1C2E75D64();

  v3 = [v1 initWithArrangedSubviews_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setDistribution_];
  [v3 setAxis_];
  [v3 setSpacing_];
  [v3 setAlignment_];
  return v3;
}

id sub_1C2D6D728(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1C2D6D78C(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setTextAlignment_];
  [v1 setNumberOfLines_];
  [v1 setPreferredVibrancy_];
  [v1 setLineBreakMode_];
  [v1 sizeToFit];
  [v1 setAdjustsFontForContentSizeCategory_];
  v2 = objc_opt_self();
  v3 = [v2 preferredFontForTextStyle_];
  v4 = [v3 fontDescriptor];
  v5 = [v4 fontDescriptorWithSymbolicTraits_];

  if (v5)
  {
    v6 = [v2 fontWithDescriptor:v5 size:0.0];

    v3 = v6;
  }

  v7 = [v3 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060FA0, &qword_1C2E85570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E7A930;
  v9 = *MEMORY[0x1E69DB8F0];
  *(inited + 32) = *MEMORY[0x1E69DB8F0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060FA8, &qword_1C2E85578);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1C2E7A930;
  v11 = *MEMORY[0x1E69DB990];
  *(v10 + 32) = *MEMORY[0x1E69DB990];
  *(v10 + 40) = *MEMORY[0x1E69DB980];
  v12 = v9;
  v13 = v11;
  v14 = sub_1C2D94C98(v10);
  swift_setDeallocating();
  sub_1C2C73644(v10 + 32, &qword_1EC060FB0, &qword_1C2E85580);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060FB8, &qword_1C2E85588);
  *(inited + 40) = v14;
  sub_1C2D94D88(inited);
  swift_setDeallocating();
  sub_1C2C73644(inited + 32, &qword_1EC060FC0, &unk_1C2E85590);
  type metadata accessor for AttributeName(0);
  sub_1C2D6EEA8(&qword_1EC05D5E0, type metadata accessor for AttributeName, &unk_1C2E79F98);
  v15 = sub_1C2E75B34();

  v16 = [v7 fontDescriptorByAddingAttributes_];

  v17 = v16;
  [v3 pointSize];
  v18 = [v2 fontWithDescriptor:v17 size:?];

  [v1 setFont_];
  v19 = [objc_opt_self() labelColor];
  [v1 setTextColor_];

  v20 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config + 24);
  v21 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config), v20);
  v22 = (*(v21 + 32))(v20, v21);
  [v1 setMaximumContentSizeCategory_];

  [v1 setMinimumContentSizeCategory_];
  return v1;
}

id sub_1C2D6DBF4(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setTextAlignment_];
  [v1 setNumberOfLines_];
  [v1 setPreferredVibrancy_];
  [v1 setLineBreakMode_];
  [v1 sizeToFit];
  v2 = [objc_opt_self() secondaryLabelColor];
  [v1 setTextColor_];

  [v1 setAdjustsFontForContentSizeCategory_];
  v3 = objc_opt_self();
  v4 = [v3 preferredFontForTextStyle_];
  v5 = [v4 fontDescriptor];
  v6 = [v5 fontDescriptorWithSymbolicTraits_];

  if (v6)
  {
    v7 = [v3 fontWithDescriptor:v6 size:0.0];

    v4 = v7;
  }

  v8 = [v4 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060FA0, &qword_1C2E85570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E7A930;
  v10 = *MEMORY[0x1E69DB8F0];
  *(inited + 32) = *MEMORY[0x1E69DB8F0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060FA8, &qword_1C2E85578);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1C2E7A930;
  v12 = *MEMORY[0x1E69DB990];
  *(v11 + 32) = *MEMORY[0x1E69DB990];
  *(v11 + 40) = *MEMORY[0x1E69DB978];
  v13 = v10;
  v14 = v12;
  v15 = sub_1C2D94C98(v11);
  swift_setDeallocating();
  sub_1C2C73644(v11 + 32, &qword_1EC060FB0, &qword_1C2E85580);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060FB8, &qword_1C2E85588);
  *(inited + 40) = v15;
  sub_1C2D94D88(inited);
  swift_setDeallocating();
  sub_1C2C73644(inited + 32, &qword_1EC060FC0, &unk_1C2E85590);
  type metadata accessor for AttributeName(0);
  sub_1C2D6EEA8(&qword_1EC05D5E0, type metadata accessor for AttributeName, &unk_1C2E79F98);
  v16 = sub_1C2E75B34();

  v17 = [v8 fontDescriptorByAddingAttributes_];

  v18 = v17;
  [v4 pointSize];
  v19 = [v3 fontWithDescriptor:v18 size:?];

  [v1 setFont_];
  v20 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config + 24);
  v21 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config), v20);
  v22 = (*(v21 + 32))(v20, v21);
  [v1 setMaximumContentSizeCategory_];

  [v1 setMinimumContentSizeCategory_];
  return v1;
}

uint64_t CallRecordingCountdownView.strings.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_strings);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1C2D6E0D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_strings);
  swift_beginAccess();
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

void sub_1C2D6E140(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = (*a2 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_strings);
  swift_beginAccess();
  *v6 = v3;
  v6[1] = v2;
  v6[2] = v5;
  v6[3] = v4;

  sub_1C2D6E268();
}

void CallRecordingCountdownView.strings.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_strings);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;

  sub_1C2D6E268();
}

void sub_1C2D6E268()
{
  v1 = v0 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_strings;
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = &selRef_removeArrangedSubview_;
    if (*(v1 + 16))
    {
      v4 = 0;
    }

    else
    {
      v4 = v2 == 0xE000000000000000;
    }

    if (!v4 && (sub_1C2E767A4() & 1) == 0)
    {
      v3 = &selRef_addArrangedSubview_;
    }
  }

  else
  {
    v3 = &selRef_removeArrangedSubview_;
  }

  v5 = sub_1C2D6D728(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___stackView, sub_1C2D6D5C4);
  v6 = sub_1C2D6D728(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___subtitleLabel, sub_1C2D6DBF4);
  [v5 *v3];

  v7 = sub_1C2D6D728(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___titleLabel, sub_1C2D6D78C);

  v8 = sub_1C2E75C24();

  [v7 setText_];

  v9 = sub_1C2D6D728(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___subtitleLabel, sub_1C2D6DBF4);
  if (*(v1 + 24))
  {

    v10 = sub_1C2E75C24();
  }

  else
  {
    v10 = 0;
  }

  [v9 setText_];
}

void (*CallRecordingCountdownView.strings.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C2D6E4A0;
}

void sub_1C2D6E4A0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1C2D6E268();
  }
}

Swift::Void __swiftcall CallRecordingCountdownView.setAXLabelForCloseButton(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  v2 = sub_1C2D6D728(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___closeButton, sub_1C2D6D1A0);
  v3 = object;
  v4 = v2;
  if (v3)
  {
    v5 = sub_1C2E75C24();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v4 setAccessibilityLabel_];
}

uint64_t CallRecordingCountdownView.updateBackground(_:)(void *a1)
{
  v2 = sub_1C2E759D4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C2E75A04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2C6E1B4(0, &qword_1EDDCD9E0, 0x1E69E9610);
  v10 = sub_1C2E76084();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1C2D6EE24;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2CB2CC4;
  aBlock[3] = &block_descriptor_10;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  sub_1C2E759F4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C2D6EEA8(&qword_1EDDCDA00, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C60, &qword_1C2E854E0);
  sub_1C2CF04C8();
  sub_1C2E76464();
  MEMORY[0x1C6926AC0](0, v9, v5, v13);
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_1C2D6E904(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_backgroundView;
    v5 = *(Strong + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_backgroundView);
    *(Strong + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_backgroundView) = a2;
    v6 = Strong;
    v7 = a2;

    v8 = v6;
    [v8 addSubview_];
    [v8 sendSubviewToBack_];
    v9 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0, &unk_1C2E7C050);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C2E7A700;
    v11 = [*&v6[v4] topAnchor];
    v12 = [v8 topAnchor];
    v13 = [v11 constraintEqualToAnchor_];

    *(v10 + 32) = v13;
    v14 = [*&v6[v4] leadingAnchor];
    v15 = [v8 leadingAnchor];

    v16 = [v14 constraintEqualToAnchor_];
    *(v10 + 40) = v16;
    v17 = [*&v6[v4] trailingAnchor];
    v18 = [v8 trailingAnchor];

    v19 = [v17 constraintEqualToAnchor_];
    *(v10 + 48) = v19;
    v20 = [*&v6[v4] bottomAnchor];
    v21 = [v8 bottomAnchor];

    v22 = [v20 constraintEqualToAnchor_];
    *(v10 + 56) = v22;
    sub_1C2C6E1B4(0, &qword_1EC062670, 0x1E696ACD8);
    v23 = sub_1C2E75D64();

    [v9 activateConstraints_];
  }
}

id CallRecordingCountdownView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CallRecordingCountdownView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C2D6EEA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void KeypadNumberView.body.getter(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = sub_1C2E73DC4();
  sub_1C2D6EF90(v4, v9);
  v6 = v9[0];
  v7 = v9[1];
  v8 = v9[2];

  sub_1C2D6FDC0(v7, v8);

  sub_1C2D6F050(v7, v8);
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
}

double sub_1C2D6EF90@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = a1[2];
  swift_beginAccess();
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[4];

    sub_1C2D6FDC0(v5, v6);
  }

  else
  {

    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;

  sub_1C2D6FDC0(v5, v6);
  sub_1C2D6F050(v5, v6);

  return result;
}

double sub_1C2D6F050(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

void sub_1C2D6F090(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = sub_1C2E73DC4();
  sub_1C2D6EF90(v4, v9);
  v6 = v9[0];
  v7 = v9[1];
  v8 = v9[2];

  sub_1C2D6FDC0(v7, v8);

  sub_1C2D6F050(v7, v8);
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
}

uint64_t KeypadNumberElementTextView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  swift_getKeyPath();
  sub_1C2D6FD54(&qword_1EC060FC8, type metadata accessor for KeypadNumberElement, &protocol conformance descriptor for KeypadNumberElement);
  sub_1C2E71A64();

  swift_beginAccess();
  sub_1C2C74960();

  v18 = sub_1C2E748A4();
  v20 = v3;
  v21 = v4;
  v5 = objc_opt_self();
  swift_getKeyPath();
  sub_1C2E71A64();

  swift_beginAccess();
  v6 = [v5 systemFontOfSize_];
  v19 = sub_1C2D6F42C();

  swift_getKeyPath();
  sub_1C2E71A64();

  swift_getKeyPath();
  sub_1C2E71A64();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060FD0, &qword_1C2E855F0);
  sub_1C2D6FAC0();
  sub_1C2E74934();
  sub_1C2C72340(v18, v20, v21 & 1);

  v7 = sub_1C2E74464();
  swift_getKeyPath();
  sub_1C2E71A64();

  sub_1C2E73034();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060FE8, &qword_1C2E855F8);
  v17 = a1 + *(result + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

id sub_1C2D6F42C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061028, &qword_1C2E85868);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C2E7A930;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061030, &qword_1C2E85870);
  inited = swift_initStackObject();
  v3 = MEMORY[0x1E69DDCF0];
  *(inited + 16) = xmmword_1C2E7A110;
  v4 = *v3;
  *(inited + 32) = v4;
  v5 = *MEMORY[0x1E69DDCE8];
  *(inited + 40) = 33;
  *(inited + 48) = v5;
  *(inited + 56) = 0;
  v6 = v4;
  v7 = v5;
  v8 = sub_1C2D94EC4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061038, &unk_1C2E85878);
  swift_arrayDestroy();
  *(v1 + 32) = v8;
  v9 = [v0 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060FA0, &qword_1C2E85570);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1C2E7A930;
  v11 = *MEMORY[0x1E69DB8B0];
  *(v10 + 32) = *MEMORY[0x1E69DB8B0];
  *(v10 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061040, &qword_1C2E85888);
  *(v10 + 40) = v1;
  v12 = v11;
  sub_1C2D94D88(v10);
  swift_setDeallocating();
  sub_1C2D6FCEC(v10 + 32);
  type metadata accessor for AttributeName(0);
  sub_1C2D6FD54(&qword_1EC05D5E0, type metadata accessor for AttributeName, &unk_1C2E79F98);
  v13 = sub_1C2E75B34();

  v14 = [v9 fontDescriptorByAddingAttributes_];

  [v0 pointSize];
  v16 = [objc_opt_self() fontWithDescriptor:v14 size:v15];

  return v16;
}

uint64_t sub_1C2D6F6A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = a2;
  v8 = sub_1C2E746B4();
  KeyPath = swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061008, &qword_1C2E85818);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061010, &qword_1C2E85820) + 36));
  *v11 = KeyPath;
  v11[1] = v8;
  [v7 lineHeight];
  v13 = a4 - v12;
  v14 = swift_getKeyPath();
  v15 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061018, &qword_1C2E85858) + 36);
  *v15 = v14;
  *(v15 + 8) = v13;
  LOBYTE(v14) = sub_1C2E744B4();
  [v7 lineHeight];
  sub_1C2E73034();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061020, &qword_1C2E85860);
  v25 = a3 + *(result + 36);
  *v25 = v14;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  return result;
}

uint64_t sub_1C2D6F82C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D6FD54(&qword_1EC060FC8, type metadata accessor for KeypadNumberElement, &protocol conformance descriptor for KeypadNumberElement);
  sub_1C2E71A64();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

double sub_1C2D6F8EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2E12800(v1, v2);
}

__n128 sub_1C2D6F92C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D6FD54(&qword_1EC060FC8, type metadata accessor for KeypadNumberElement, &protocol conformance descriptor for KeypadNumberElement);
  sub_1C2E71A64();

  swift_beginAccess();
  result = *(v3 + 32);
  v5 = *(v3 + 48);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

double sub_1C2D6F9E8(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C2D6FD54(&qword_1EC060FC8, type metadata accessor for KeypadNumberElement, &protocol conformance descriptor for KeypadNumberElement);
  sub_1C2E71A54();

  return result;
}

unint64_t sub_1C2D6FAC0()
{
  result = qword_1EC060FD8;
  if (!qword_1EC060FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060FD0, &qword_1C2E855F0);
    sub_1C2D6FB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060FD8);
  }

  return result;
}

unint64_t sub_1C2D6FB4C()
{
  result = qword_1EC060FE0;
  if (!qword_1EC060FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060FE0);
  }

  return result;
}

unint64_t sub_1C2D6FBF8()
{
  result = qword_1EC061000;
  if (!qword_1EC061000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060FE8, &qword_1C2E855F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060FD0, &qword_1C2E855F0);
    sub_1C2D6FAC0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061000);
  }

  return result;
}

uint64_t sub_1C2D6FCEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060FC0, &unk_1C2E85590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2D6FD54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C2D6FDC0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1C2D6FE04()
{
  result = qword_1EC061048;
  if (!qword_1EC061048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061020, &qword_1C2E85860);
    sub_1C2D6FE90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061048);
  }

  return result;
}

unint64_t sub_1C2D6FE90()
{
  result = qword_1EC061050;
  if (!qword_1EC061050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061018, &qword_1C2E85858);
    sub_1C2D6FF48();
    sub_1C2C94F38(&qword_1EC05CB10, &qword_1EC05FED8, &qword_1C2E85890, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061050);
  }

  return result;
}

unint64_t sub_1C2D6FF48()
{
  result = qword_1EC061058;
  if (!qword_1EC061058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061010, &qword_1C2E85820);
    sub_1C2C94F38(&qword_1EC061060, &qword_1EC061008, &qword_1C2E85818, MEMORY[0x1E697FDF8]);
    sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8, &unk_1C2E7C240, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061058);
  }

  return result;
}

uint64_t sub_1C2D7003C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C2E768E4();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = 0;
    v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v19 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = (v5 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_1C2E765B4();
        v14 = v13;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v20[0] = a1;
          v20[1] = v19;
          v12 = v20 + v9;
        }

        else
        {
          v11 = v18;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v11 = sub_1C2E76604();
          }

          v12 = (v11 + v9);
        }

        if ((*v12 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v16 = (__clz(*v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v14 = 3;
          }

          else
          {
            v14 = 4;
          }

          goto LABEL_15;
        }

        if (v16 == 1)
        {
LABEL_14:
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }
      }

LABEL_15:
      sub_1C2E768F4();
      v15 = sub_1C2E768D4();
      (*v10)(v7, v4);
      if ((v15 & 1) == 0)
      {
        v9 += v14;
        if (v9 < v8)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  v15 = 0;
  return v15 & 1;
}

uint64_t Text.init(badge:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810, &qword_1C2E7B9B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v48 - v5;
  v7 = sub_1C2E75524();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC05CFA0 != -1)
  {
    swift_once();
  }

  if (byte_1EC075B40 == 1)
  {

    v49 = sub_1C2D7003C(a1, a2);

    v11 = objc_opt_self();
    v12 = [v11 currentDevice];
    [v12 userInterfaceIdiom];

    v13 = [v11 currentDevice];
    [v13 userInterfaceIdiom];

    v14 = objc_opt_self();
    v15 = [v14 tertiaryLabelColor];
    sub_1C2E74E94();
    v16 = [v14 secondaryLabelColor];
    sub_1C2E74E94();
    sub_1C2E75504();
    v17 = sub_1C2E74EE4();

    (*(v8 + 8))(v10, v7);
    v18 = [objc_opt_self() defaultMetrics];
    [v18 scaledValueForValue_];

    sub_1C2E74554();
    v19 = sub_1C2E74534();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    sub_1C2E745C4();
    sub_1C2C73644(v6, &qword_1EC05D810, &qword_1C2E7B9B0);
    v20 = sub_1C2E747F4();
    v22 = v21;
    v24 = v23;

    v50 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
    v25 = sub_1C2E74794();
    v27 = v26;
    v29 = v28;
    sub_1C2C72340(v20, v22, v24 & 1);

    LOBYTE(v50) = (v49 & 1) == 0;
    v51 = v17;
    sub_1C2C7C914();
    v48[2] = v17;

    v30 = sub_1C2E74774();
    v32 = v31;
    v49 = v33;
    v48[1] = v34;
    sub_1C2C72340(v25, v27, v29 & 1);

    v35 = sub_1C2E747C4();
    v37 = v36;
    v39 = v38;
    v40 = sub_1C2E747C4();

    sub_1C2C72340(v30, v32, v49 & 1);

    sub_1C2C72340(v35, v37, v39 & 1);
  }

  else
  {
    v41 = sub_1C2D7205C(a1, a2);
    sub_1C2E75034();
    v42 = sub_1C2E748B4();
    v44 = v43;
    v46 = v45;
    v50 = a1;
    v51 = a2;
    sub_1C2C74960();
    v40 = sub_1C2E747B4();

    sub_1C2C72340(v42, v44, v46 & 1);
  }

  return v40;
}

uint64_t sub_1C2D707F8()
{
  v1 = *(v0 + 16);
  sub_1C2E76854();
  sub_1C2E75CC4();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1C69272B0](*&v2);
  return sub_1C2E76894();
}

uint64_t sub_1C2D70870(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1C2E75CC4();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x1C69272B0](*&v3);
}

uint64_t sub_1C2D708BC()
{
  v1 = *(v0 + 16);
  sub_1C2E76854();
  sub_1C2E75CC4();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1C69272B0](*&v2);
  return sub_1C2E76894();
}

BOOL sub_1C2D70930(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1C2E767A4();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

void *sub_1C2D70990()
{
  result = sub_1C2D94FB0(MEMORY[0x1E69E7CC0]);
  off_1EC061068 = result;
  return result;
}

uint64_t sub_1C2D709B8()
{
  v0 = sub_1C2E75524();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2C6E1B4(0, &qword_1EC05CA78, 0x1E69DC888);
  v4 = objc_opt_self();
  v5 = [v4 tertiaryLabelColor];
  sub_1C2E74E94();
  v6 = [v4 secondaryLabelColor];
  sub_1C2E74E94();
  sub_1C2E75504();
  sub_1C2E74EE4();

  (*(v1 + 8))(v3, v0);
  result = sub_1C2E761F4();
  qword_1EC061070 = result;
  return result;
}

void sub_1C2D70B54(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v5 = qword_1EC05CF88;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = [qword_1EC061070 resolvedColorWithTraitCollection_];

  *a3 = v7;
}

void sub_1C2D70C0C(void *a1, char a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, void *a13, id *a14, uint64_t a15)
{
  if (*a13 != -1)
  {
    v31 = a14;
    swift_once();
    a14 = v31;
  }

  v32 = *a14;
  v24 = [a1 CGContext];
  [v32 setFill];
  v25 = [objc_opt_self() bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, a4, a5, a6}];
  [v25 fill];
  v26 = objc_opt_self();
  v27 = [v26 currentDevice];
  [v27 userInterfaceIdiom];

  v28 = [v26 currentDevice];
  [v28 userInterfaceIdiom];

  if ((a2 & 1) == 0)
  {
    CGContextSetBlendMode(v24, kCGBlendModeDestinationOut);
  }

  v29 = sub_1C2E75C24();
  type metadata accessor for Key(0);
  sub_1C2D728A4(&qword_1EC05D488, type metadata accessor for Key, &unk_1C2E798F4);
  v30 = sub_1C2E75B34();
  [v29 drawInRect:v30 withAttributes:{a7 + 0.3, a8 + -0.15, a9, a10}];
}

uint64_t sub_1C2D70EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C2E73BA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9E0, &qword_1C2E7D4E0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C2D72540(v2 + *(a1 + 36), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C2E730D4();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C2E75FD4();
    v14 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t BadgeHost.content.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t BadgeHost.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v28 = sub_1C2E730D4();
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v23 = v5;
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061088, &qword_1C2E858A8);
  v25 = *(a1 + 24);
  v10 = v25;
  v26 = v9;
  v24 = sub_1C2D72200();
  v31 = v5;
  v32 = v9;
  v33 = v10;
  v34 = v24;
  v11 = sub_1C2E75224();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  (*(v2 + *(a1 + 40)))(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061098, &qword_1C2E858B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C2E7A110;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC0610B0, qword_1C2E85918);
  sub_1C2E731E4();
  sub_1C2E76564();
  sub_1C2D70EC4(a1, v27);
  sub_1C2D728A4(&qword_1EC0610A0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE0]);
  sub_1C2E76564();
  v31 = v19;
  v20 = v23;
  sub_1C2E74CB4();

  (*(v29 + 8))(v8, v20);
  swift_getWitnessTable();
  sub_1C2C6EE48(v14);
  v21 = *(v12 + 8);
  v21(v14, v11);
  sub_1C2C6EE48(v18);
  return (v21)(v18, v11);
}

uint64_t sub_1C2D71464()
{
  sub_1C2E76854();
  sub_1C2E76874();
  sub_1C2E74F24();
  return sub_1C2E76894();
}

uint64_t sub_1C2D714C4(uint64_t a1)
{
  sub_1C2E76874();

  return sub_1C2E74F24();
}

uint64_t sub_1C2D71514()
{
  sub_1C2E76854();
  sub_1C2E76874();
  sub_1C2E74F24();
  return sub_1C2E76894();
}

uint64_t sub_1C2D71570(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_1C2E74ED4();
  }

  else
  {
    return 0;
  }
}

uint64_t View.badgeRenderer()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BadgeRendererModifier(255);
  sub_1C2E73654();
  sub_1C2D72284();
  sub_1C2D728A4(&qword_1EC05C128, type metadata accessor for BadgeRendererModifier, &unk_1C2E85A28);
  swift_getWitnessTable();
  return sub_1C2E74E14();
}

uint64_t sub_1C2D71690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for BadgeRendererModifier(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C2E73654();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v18 - v13;
  v18[3] = 0x3FF0000000000000;
  sub_1C2C7E058();
  sub_1C2E731D4();
  MEMORY[0x1C69257F0](v7, a2, v5, a3);
  sub_1C2D728EC(v7, type metadata accessor for BadgeRendererModifier);
  v15 = sub_1C2D728A4(&qword_1EC05C128, type metadata accessor for BadgeRendererModifier, &unk_1C2E85A28);
  v18[1] = a3;
  v18[2] = v15;
  swift_getWitnessTable();
  sub_1C2C6EE48(v11);
  v16 = *(v9 + 8);
  v16(v11, v8);
  sub_1C2C6EE48(v14);
  return (v16)(v14, v8);
}

void (*sub_1C2D718D8(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1C2E72FC4();
  return sub_1C2CC3834;
}

void sub_1C2D71960()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v1 = [v0 imageBadgeRendererEnabled];

  byte_1EC075B40 = v1 ^ 1;
}

uint64_t sub_1C2D719B8()
{
  if (qword_1EC05CFA0 != -1)
  {
    swift_once();
  }

  return byte_1EC075B40;
}

void sub_1C2D71A0C(uint64_t a1, unint64_t a2, double a3)
{
  v6 = sub_1C2D7003C(a1, a2);
  v7 = objc_opt_self();
  v8 = [v7 currentDevice];
  [v8 userInterfaceIdiom];

  v9 = [v7 currentDevice];
  [v9 userInterfaceIdiom];

  v10 = a3 * 2.5;
  v11 = [v7 currentDevice];
  [v11 userInterfaceIdiom];

  v12 = a3 * 0.5;
  v13 = a3 * 1.5;
  v14 = [objc_opt_self() systemFontOfSize:a3 * 8.0 weight:*MEMORY[0x1E69DB958]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061148, &unk_1C2E8D390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E7A110;
  v16 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v17 = sub_1C2C6E1B4(0, &qword_1EC061150, 0x1E69DB878);
  *(inited + 40) = v14;
  v18 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v17;
  *(inited + 72) = v18;
  v19 = objc_opt_self();
  v20 = v16;
  v46 = v14;
  v21 = v18;
  v22 = [v19 whiteColor];
  *(inited + 104) = sub_1C2C6E1B4(0, &qword_1EC05CA78, 0x1E69DC888);
  *(inited + 80) = v22;
  v23 = sub_1C2D94C74(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061158, &unk_1C2E85AE0);
  swift_arrayDestroy();
  v24 = sub_1C2E75C24();
  type metadata accessor for Key(0);
  sub_1C2D728A4(&qword_1EC05D488, type metadata accessor for Key, &unk_1C2E798F4);
  v25 = sub_1C2E75B34();
  [v24 sizeWithAttributes_];
  v27 = v26;
  v29 = v28;

  v30 = v10 + v10 + v27;
  v31 = v12 + v12 + v29;
  v32 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  *(v33 + 24) = v31;
  *(v33 + 32) = v13;
  v34 = v6 & 1;
  *(v33 + 40) = v6 & 1;
  *(v33 + 48) = v10;
  *(v33 + 56) = v12;
  *(v33 + 64) = v27;
  *(v33 + 72) = v29;
  *(v33 + 80) = a1;
  *(v33 + 88) = a2;
  *(v33 + 96) = v23;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1C2D725B0;
  *(v35 + 24) = v33;
  v51 = sub_1C2D725D4;
  v52 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1C2E07180;
  v50 = &block_descriptor_11;
  v36 = _Block_copy(&aBlock);

  v37 = [v32 imageWithActions_];
  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
    goto LABEL_8;
  }

  v38 = swift_allocObject();
  *(v38 + 16) = v30;
  *(v38 + 24) = v31;
  *(v38 + 32) = v13;
  *(v38 + 40) = v34;
  *(v38 + 48) = v10;
  *(v38 + 56) = v12;
  *(v38 + 64) = v27;
  *(v38 + 72) = v29;
  *(v38 + 80) = a1;
  *(v38 + 88) = a2;
  *(v38 + 96) = v23;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1C2D725F4;
  *(v39 + 24) = v38;
  v51 = sub_1C2D729A8;
  v52 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1C2E07180;
  v50 = &block_descriptor_30;
  v40 = _Block_copy(&aBlock);

  v41 = [v32 imageWithActions_];
  _Block_release(v40);
  LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

  if (v40)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v42 = [v37 imageAsset];
  if (v42)
  {
    v43 = v42;
    v44 = [objc_opt_self() currentTraitCollection];
    v45 = sub_1C2E760B4();

    [v43 registerImage:v41 withTraitCollection:v45];
  }

  else
  {
  }
}

id sub_1C2D7205C(uint64_t a1, unint64_t a2)
{
  v4 = [objc_opt_self() defaultMetrics];
  [v4 scaledValueForValue_];
  v6 = v5;

  v7 = qword_1EC05CF80;

  if (v7 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = off_1EC061068;
  if (*(off_1EC061068 + 2) && (v9 = sub_1C2D92340(a1, a2, v6), (v10 & 1) != 0))
  {
    v11 = *(v8[7] + 8 * v9);
    swift_endAccess();
    v12 = v11;

    return v12;
  }

  else
  {
    swift_endAccess();
    sub_1C2D71A0C(a1, a2, v6);
    v15 = v14;
    swift_beginAccess();
    v16 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = off_1EC061068;
    off_1EC061068 = 0x8000000000000000;
    sub_1C2D938F4(v16, a1, a2, isUniquelyReferenced_nonNull_native, v6);

    off_1EC061068 = v18;
    swift_endAccess();
    return v16;
  }
}

unint64_t sub_1C2D72200()
{
  result = qword_1EC061090;
  if (!qword_1EC061090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061088, &qword_1C2E858A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061090);
  }

  return result;
}

unint64_t sub_1C2D72284()
{
  result = qword_1EC0610A8;
  if (!qword_1EC0610A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0610A8);
  }

  return result;
}

void sub_1C2D7231C(uint64_t a1)
{
  sub_1C2C7DF90(319);
  if (v1 <= 0x3F)
  {
    sub_1C2D723F8(319);
    if (v2 <= 0x3F)
    {
      sub_1C2D72450();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C2D723F8(uint64_t a1)
{
  if (!qword_1EC05BAB0)
  {
    sub_1C2E730D4();
    v1 = sub_1C2E730F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC05BAB0);
    }
  }
}

unint64_t sub_1C2D72450()
{
  result = qword_1EDDCD9D0;
  if (!qword_1EDDCD9D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDDCD9D0);
  }

  return result;
}

uint64_t sub_1C2D724D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C2D72540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9E0, &qword_1C2E7D4E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C2D72668(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C2D726B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C2D72710()
{
  result = qword_1EC05B950;
  if (!qword_1EC05B950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061140, &qword_1C2E85AD8);
    sub_1C2C94F38(&qword_1EC05B4D0, &qword_1EC061138, &qword_1C2E85AD0, MEMORY[0x1E697FDF8]);
    sub_1C2C94F38(&qword_1EC05B468, &qword_1EC061160, &qword_1C2E85B60, MEMORY[0x1E6980630]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B950);
  }

  return result;
}

unint64_t sub_1C2D727F8()
{
  result = qword_1EC05C618;
  if (!qword_1EC05C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05C618);
  }

  return result;
}

unint64_t sub_1C2D72850()
{
  result = qword_1EC061168;
  if (!qword_1EC061168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061168);
  }

  return result;
}

uint64_t sub_1C2D728A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C2D728EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t BlurButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E298, &qword_1C2E85C70);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061180, &qword_1C2E85C78);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v21 - v8;
  v10 = *v1;
  sub_1C2E741C4();
  sub_1C2E75744();
  sub_1C2E73274();
  v11 = &v6[*(v4 + 44)];
  v12 = v21[1];
  *v11 = v21[0];
  *(v11 + 1) = v12;
  *(v11 + 2) = v21[2];
  if (v10 == 1)
  {
    v13 = _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
  }

  else
  {
    v13 = sub_1C2E74F84();
  }

  v14 = v13;
  sub_1C2C71D5C(v6, v9, &qword_1EC05E298, &qword_1C2E85C70);
  *&v9[*(v7 + 36)] = v14;
  v15 = sub_1C2E75744();
  v17 = v16;
  v18 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061188, &qword_1C2E85C80) + 36);
  sub_1C2D72B94(v10, v18);
  v19 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061190, &qword_1C2E85C88) + 36));
  *v19 = v15;
  v19[1] = v17;
  return sub_1C2C71D5C(v9, a1, &qword_1EC061180, &qword_1C2E85C78);
}

uint64_t sub_1C2D72B94@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0611B0, &qword_1C2E85D10);
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v26 - v3;
  v28 = sub_1C2E75364();
  v4 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0611B8, &qword_1C2E85D18);
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = sub_1C2E74F44();
  v14 = (v4 + 8);
  v32 = v13;
  LOWORD(v33) = 256;
  if (a1)
  {
    v26 = v13;
    sub_1C2E75314();
    _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
    sub_1C2E75354();

    v15 = *v14;
    v16 = v6;
    v17 = v28;
    (*v14)(v16, v28);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0611C0, &unk_1C2E85D20);
    v19 = sub_1C2C94F38(&qword_1EC0611C8, &qword_1EC0611C0, &unk_1C2E85D20, MEMORY[0x1E697DB78]);
    v20 = sub_1C2CB2AB4();
    sub_1C2E749D4();
    v15(v9, v17);

    v21 = v27;
    (*(v27 + 16))(v30, v12, v10);
    swift_storeEnumTagMultiPayload();
    v32 = v18;
    v33 = MEMORY[0x1E69817E8];
    v34 = v19;
  }

  else
  {
    sub_1C2E75314();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0611C0, &unk_1C2E85D20);
    v23 = sub_1C2C94F38(&qword_1EC0611C8, &qword_1EC0611C0, &unk_1C2E85D20, MEMORY[0x1E697DB78]);
    v20 = sub_1C2CB2AB4();
    v24 = MEMORY[0x1E69817E8];
    sub_1C2E749D4();
    (*v14)(v9, v28);

    v21 = v27;
    (*(v27 + 16))(v30, v12, v10);
    swift_storeEnumTagMultiPayload();
    v32 = v22;
    v33 = v24;
    v34 = v23;
  }

  v35 = v20;
  swift_getOpaqueTypeConformance2();
  sub_1C2E73F44();
  return (*(v21 + 8))(v12, v10);
}

uint64_t getEnumTagSinglePayload for BlurButtonStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1C2D730D4()
{
  result = qword_1EC061198;
  if (!qword_1EC061198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061188, &qword_1C2E85C80);
    sub_1C2D7318C();
    sub_1C2C94F38(&qword_1EC0611A8, &qword_1EC061190, &qword_1C2E85C88, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061198);
  }

  return result;
}

unint64_t sub_1C2D7318C()
{
  result = qword_1EC0611A0;
  if (!qword_1EC0611A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061180, &qword_1C2E85C78);
    sub_1C2C764F0();
    sub_1C2C94F38(qword_1EDDCDA28, &qword_1EC05E1F0, &qword_1C2E7C220, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0611A0);
  }

  return result;
}

unint64_t sub_1C2D73244()
{
  result = qword_1EC05CB20;
  if (!qword_1EC05CB20)
  {
    sub_1C2E741B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CB20);
  }

  return result;
}

double WaitOnHoldControlsView.init(viewModel:apertureEnabled:leadingView:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>, uint64_t a7@<X3>)
{
  v11 = *(type metadata accessor for WaitOnHoldControlsView(0, a4, a5, a7) + 40);
  *a6 = a1;
  *(a6 + v11) = a2;

  a3(v12);

  return result;
}

uint64_t WaitOnHoldControlsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v44 = sub_1C2E730D4();
  v3 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v37 = a1;
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0611D0, &qword_1C2E85D30);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0611D8, &unk_1C2E85D38);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  v6 = sub_1C2E752E4();
  v40 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70, &qword_1C2E7BDE0);
  v9 = sub_1C2E73654();
  v46 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v35 - v10;
  v42 = sub_1C2E73654();
  v48 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v38 = &v35 - v11;
  v45 = sub_1C2E73654();
  v49 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v39 = &v35 - v12;
  v13 = sub_1C2E73654();
  v50 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v35 - v16;
  sub_1C2E73DD4();
  v17 = *(a1 + 24);
  v53 = v5;
  v54 = v17;
  v55 = v52;
  sub_1C2E752D4();
  swift_getKeyPath();
  v18 = v43;
  v19 = v44;
  (*(v3 + 104))(v43, *MEMORY[0x1E697DBA8], v44);
  WitnessTable = swift_getWitnessTable();
  sub_1C2E749A4();

  (*(v3 + 8))(v18, v19);
  (*(v40 + 8))(v8, v6);
  sub_1C2E75744();
  v21 = sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70, &qword_1C2E7BDE0, MEMORY[0x1E6980A18]);
  v62 = WitnessTable;
  v63 = v21;
  v34 = swift_getWitnessTable();
  v22 = v38;
  v23 = v36;
  sub_1C2E74D24();
  (*(v46 + 8))(v23, v9);
  sub_1C2E74444();
  v60 = v34;
  v61 = MEMORY[0x1E697EBF8];
  v24 = v42;
  v25 = swift_getWitnessTable();
  v26 = v39;
  sub_1C2E74D84();
  (*(v48 + 8))(v22, v24);
  sub_1C2E74464();
  v27 = MEMORY[0x1E697E5D8];
  v58 = v25;
  v59 = MEMORY[0x1E697E5D8];
  v28 = v45;
  v29 = swift_getWitnessTable();
  v30 = v41;
  sub_1C2E74D84();
  (*(v49 + 8))(v26, v28);
  v56 = v29;
  v57 = v27;
  swift_getWitnessTable();
  v31 = v47;
  sub_1C2C6EE48(v30);
  v32 = *(v50 + 8);
  v32(v30, v13);
  sub_1C2C6EE48(v31);
  return (v32)(v31, v13);
}

uint64_t sub_1C2D73B30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061270, &qword_1C2E85F40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v44 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0611D8, &unk_1C2E85D38);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v44 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v44 - v14;
  v15 = a2;
  v44 = a2;
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0611D0, &qword_1C2E85D30);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  v16 = sub_1C2E75214();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  v52 = v15;
  v53 = a3;
  v54 = a1;
  sub_1C2E73C24();
  sub_1C2E75204();
  WitnessTable = swift_getWitnessTable();
  sub_1C2C6EE48(v19);
  v46 = *(v17 + 8);
  v46(v19, v16);
  *v9 = sub_1C2E73DC4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v23 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061278, &qword_1C2E85F48) + 44)];
  v24 = a1;
  v25 = v44;
  sub_1C2D74884(v24, v44, a3, v23);
  v26 = sub_1C2E74444();
  type metadata accessor for WaitOnHoldControlsView(0, v25, a3, v27);
  sub_1C2E73034();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v47;
  sub_1C2C71D5C(v9, v47, &qword_1EC061270, &qword_1C2E85F40);
  v37 = v49;
  v38 = v36 + *(v49 + 36);
  *v38 = v26;
  *(v38 + 8) = v29;
  *(v38 + 16) = v31;
  *(v38 + 24) = v33;
  *(v38 + 32) = v35;
  *(v38 + 40) = 0;
  v39 = v48;
  sub_1C2C71D5C(v36, v48, &qword_1EC0611D8, &unk_1C2E85D38);
  (*(v17 + 16))(v19, v22, v16);
  v58[0] = v19;
  v40 = v50;
  sub_1C2C736A4(v39, v50, &qword_1EC0611D8, &unk_1C2E85D38);
  v58[1] = v40;
  v57[0] = v16;
  v57[1] = v37;
  v55 = WitnessTable;
  v56 = sub_1C2D756E0();
  sub_1C2C6EC40(v58, 2uLL, v57);
  sub_1C2C73644(v39, &qword_1EC0611D8, &unk_1C2E85D38);
  v41 = v22;
  v42 = v46;
  v46(v41, v16);
  sub_1C2C73644(v40, &qword_1EC0611D8, &unk_1C2E85D38);
  return v42(v19, v16);
}

uint64_t sub_1C2D73FF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a1;
  v21 = a4;
  v6 = sub_1C2E73654();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v19 = &v18 - v11;
  type metadata accessor for WaitOnHoldControlsView(0, a2, a3, v12);
  sub_1C2E75744();
  sub_1C2E74D14();
  v31[2] = a3;
  v31[3] = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  sub_1C2C6EE48(v9);
  v20 = *(v7 + 8);
  v20(v9, v6);
  v14 = sub_1C2E73DD4();
  LOBYTE(v25) = 1;
  sub_1C2D74338(v18, v32);
  *&v36[23] = v32[1];
  *&v36[7] = v32[0];
  *&v36[39] = v32[2];
  *&v36[55] = v33;
  *&v35[17] = *&v36[16];
  *&v35[33] = *&v36[32];
  *&v35[49] = *&v36[48];
  v34 = v14;
  v35[0] = v25;
  *&v35[64] = *(&v33 + 1);
  *&v35[1] = *v36;
  v15 = v19;
  (*(v7 + 16))(v9, v19, v6);
  v27 = *&v35[16];
  v28 = *&v35[32];
  v29 = *&v35[48];
  v30 = *&v35[64];
  v31[0] = v9;
  v25 = v34;
  v26 = *v35;
  v31[1] = &v25;
  sub_1C2C736A4(&v34, v36, &qword_1EC0611D0, &qword_1C2E85D30);
  v24[0] = v6;
  v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0611D0, &qword_1C2E85D30);
  v22 = WitnessTable;
  v23 = sub_1C2C94F38(&qword_1EC0612A8, &qword_1EC0611D0, &qword_1C2E85D30, MEMORY[0x1E6981870]);
  sub_1C2C6EC40(v31, 2uLL, v24);
  sub_1C2C73644(&v34, &qword_1EC0611D0, &qword_1C2E85D30);
  v16 = v20;
  v20(v15, v6);
  *&v36[32] = v27;
  *&v36[48] = v28;
  *&v36[64] = v29;
  v37 = v30;
  *v36 = v25;
  *&v36[16] = v26;
  sub_1C2C73644(v36, &qword_1EC0611D0, &qword_1C2E85D30);
  return v16(v9, v6);
}

uint64_t sub_1C2D74338@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088, &qword_1C2E80EE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = &v57 - v4;
  v5 = sub_1C2E71664();
  v64 = *(v5 - 8);
  v6 = v64;
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57 - v9;
  v11 = sub_1C2E73D04();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1C2E73CF4();
  sub_1C2E73CE4();
  v65 = *a1;
  v59 = *(v6 + 16);
  v60 = v6 + 16;
  v59(v10, v65 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel_title, v5);
  sub_1C2E73CA4();
  v12 = *(v6 + 8);
  v61 = v10;
  v62 = v12;
  v63 = v6 + 8;
  v12(v10, v5);
  sub_1C2E73CE4();
  sub_1C2E73D24();
  v13 = sub_1C2E74884();
  v15 = v14;
  v17 = v16;
  sub_1C2E74634();
  v18 = sub_1C2E747F4();
  v20 = v19;
  v22 = v21;

  v23 = v13;
  v24 = v66;
  sub_1C2C72340(v23, v15, v17 & 1);

  sub_1C2E74554();
  v25 = sub_1C2E74764();
  v27 = v26;
  v67 = v28;
  v30 = v29;
  v31 = v20;
  v32 = v64;
  sub_1C2C72340(v18, v31, v22 & 1);

  sub_1C2C736A4(v65 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel_subtitle, v24, &qword_1EC05E088, &qword_1C2E80EE0);
  if ((*(v32 + 48))(v24, 1, v5) == 1)
  {
    sub_1C2C73644(v24, &qword_1EC05E088, &qword_1C2E80EE0);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  else
  {
    v37 = *(v32 + 32);
    v38 = v68;
    v58 = v5;
    v37(v68, v24, v5);
    v59(v61, v38, v5);
    v39 = sub_1C2E74894();
    v41 = v40;
    LOBYTE(v38) = v42;
    sub_1C2E74634();
    v43 = sub_1C2E747F4();
    v64 = v27;
    v65 = v25;
    v44 = v43;
    v46 = v45;
    v66 = v30;
    v48 = v47;

    sub_1C2C72340(v39, v41, v38 & 1);

    v70[0] = sub_1C2E740F4();
    v33 = sub_1C2E74794();
    v34 = v49;
    LOBYTE(v39) = v50;
    v36 = v51;
    v52 = v48 & 1;
    v30 = v66;
    v53 = v44;
    v27 = v64;
    sub_1C2C72340(v53, v46, v52);
    v25 = v65;

    v62(v68, v58);
    v35 = v39 & 1;
    sub_1C2C72330(v33, v34, v39 & 1);
  }

  v54 = v67 & 1;
  sub_1C2C72330(v25, v27, v67 & 1);

  sub_1C2C7DD04(v33, v34, v35, v36);
  sub_1C2C7F6D4(v33, v34, v35, v36);
  v71 = v54;
  v55 = v69;
  *v69 = v25;
  v55[1] = v27;
  *(v55 + 16) = v54;
  v55[3] = v30;
  v55[4] = v33;
  v55[5] = v34;
  v55[6] = v35;
  v55[7] = v36;
  sub_1C2C7F6D4(v33, v34, v35, v36);
  sub_1C2C72340(v25, v27, v54);
}

uint64_t sub_1C2D74884@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v101 = a4;
  v102 = a3;
  v100 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088, &qword_1C2E80EE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v92 - v6;
  v8 = sub_1C2E71664();
  v97 = *(v8 - 8);
  v98 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v99 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C2E75424();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060460, &qword_1C2E83CF8);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v103 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v92 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v92 - v21;
  sub_1C2E75414();
  v23 = sub_1C2E74464();
  LODWORD(v100) = *(a1 + *(type metadata accessor for WaitOnHoldControlsView(0, v100, v102, v24) + 40));
  sub_1C2E73034();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v10;
  v34 = v97;
  (*(v11 + 32))(v19, v13, v33);
  v35 = &v19[*(v15 + 44)];
  *v35 = v23;
  *(v35 + 1) = v26;
  *(v35 + 2) = v28;
  *(v35 + 3) = v30;
  *(v35 + 4) = v32;
  v35[40] = 0;
  v102 = v22;
  sub_1C2C71D5C(v19, v22, &qword_1EC060460, &qword_1C2E83CF8);
  v36 = *a1;
  swift_getKeyPath();
  v114[0] = v36;
  sub_1C2D75798();
  sub_1C2E71A64();

  v37 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__statusMessage;
  swift_beginAccess();
  v38 = v36 + v37;
  v39 = v98;
  sub_1C2C736A4(v38, v7, &qword_1EC05E088, &qword_1C2E80EE0);
  v40 = *(v34 + 48);
  if (v40(v7, 1, v39) == 1)
  {
    sub_1C2E71654();
    if (v40(v7, 1, v39) != 1)
    {
      sub_1C2C73644(v7, &qword_1EC05E088, &qword_1C2E80EE0);
    }
  }

  else
  {
    (*(v34 + 32))(v99, v7, v39);
  }

  v41 = sub_1C2E74894();
  v43 = v42;
  v45 = v44;
  LODWORD(v114[0]) = sub_1C2E740F4();
  v46 = sub_1C2E74794();
  v48 = v47;
  v50 = v49;
  sub_1C2C72340(v41, v43, v45 & 1);

  sub_1C2E74634();
  v51 = sub_1C2E747F4();
  v96 = v52;
  v97 = v51;
  v54 = v53;
  v99 = v55;

  sub_1C2C72340(v46, v48, v50 & 1);

  KeyPath = swift_getKeyPath();
  v98 = KeyPath;
  v57 = swift_getKeyPath();
  v95 = v57;
  v58 = v54 & 1;
  v144 = v54 & 1;
  v142 = 0;
  v59 = sub_1C2E74464();
  v60 = v59;
  v94 = v59;
  sub_1C2E73034();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v145 = 0;
  v93 = sub_1C2E74474();
  sub_1C2E73034();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v148 = 0;
  v77 = v103;
  sub_1C2C736A4(v102, v103, &qword_1EC060460, &qword_1C2E83CF8);
  v78 = v77;
  v79 = v101;
  sub_1C2C736A4(v78, v101, &qword_1EC060460, &qword_1C2E83CF8);
  v80 = v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061298, &qword_1C2E85FD8) + 48);
  v82 = v96;
  v81 = v97;
  *&v104 = v97;
  *(&v104 + 1) = v96;
  LOBYTE(v105) = v54 & 1;
  *(&v105 + 1) = *v143;
  DWORD1(v105) = *&v143[3];
  v83 = v99;
  *(&v105 + 1) = v99;
  *&v106 = KeyPath;
  *(&v106 + 1) = 2;
  LOBYTE(v107) = 0;
  *(&v107 + 1) = *v141;
  DWORD1(v107) = *&v141[3];
  *(&v107 + 1) = v57;
  LOBYTE(v108) = 0;
  DWORD1(v108) = *&v147[3];
  *(&v108 + 1) = *v147;
  BYTE8(v108) = v60;
  HIDWORD(v108) = *&v146[3];
  *(&v108 + 9) = *v146;
  *&v109 = v62;
  *(&v109 + 1) = v64;
  *&v110 = v66;
  *(&v110 + 1) = v68;
  LOBYTE(v111) = 0;
  *(&v111 + 1) = v150[0];
  DWORD1(v111) = *(v150 + 3);
  LOBYTE(v79) = v93;
  BYTE8(v111) = v93;
  *(&v111 + 9) = *v149;
  HIDWORD(v111) = *&v149[3];
  *&v112 = v70;
  *(&v112 + 1) = v72;
  *v113 = v74;
  *&v113[8] = v76;
  v113[16] = 0;
  *&v113[17] = 256;
  v84 = v109;
  *(v80 + 64) = v108;
  *(v80 + 80) = v84;
  v85 = v105;
  *v80 = v104;
  *(v80 + 16) = v85;
  v86 = v107;
  *(v80 + 32) = v106;
  *(v80 + 48) = v86;
  v87 = v110;
  v88 = v111;
  v89 = v112;
  v90 = *v113;
  *(v80 + 159) = *&v113[15];
  *(v80 + 128) = v89;
  *(v80 + 144) = v90;
  *(v80 + 96) = v87;
  *(v80 + 112) = v88;
  sub_1C2C736A4(&v104, v114, &qword_1EC0612A0, &unk_1C2E85FE0);
  sub_1C2C73644(v102, &qword_1EC060460, &qword_1C2E83CF8);
  v114[0] = v81;
  v114[1] = v82;
  v115 = v58;
  *v116 = *v143;
  *&v116[3] = *&v143[3];
  v117 = v83;
  v118 = v98;
  v119 = 2;
  v120 = 0;
  *v121 = *v141;
  *&v121[3] = *&v141[3];
  v122 = v95;
  v123 = 0;
  *&v124[3] = *&v147[3];
  *v124 = *v147;
  v125 = v94;
  *&v126[3] = *&v146[3];
  *v126 = *v146;
  v127 = v62;
  v128 = v64;
  v129 = v66;
  v130 = v68;
  v131 = 0;
  *v132 = v150[0];
  *&v132[3] = *(v150 + 3);
  v133 = v79;
  *v134 = *v149;
  *&v134[3] = *&v149[3];
  v135 = v70;
  v136 = v72;
  v137 = v74;
  v138 = v76;
  v139 = 0;
  v140 = 256;
  sub_1C2C73644(v114, &qword_1EC0612A0, &unk_1C2E85FE0);
  return sub_1C2C73644(v103, &qword_1EC060460, &qword_1C2E83CF8);
}

uint64_t WaitOnHoldLeadingAccessoryView.sizeThatFits(_:uiView:context:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a2 | a4))
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C2D750C0()
{
  result = qword_1EC0611E0[0];
  if (!qword_1EC0611E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC0611E0);
  }

  return result;
}

uint64_t sub_1C2D75114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2D75680();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C2D75178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2D75680();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C2D751DC(uint64_t a1)
{
  sub_1C2D75680();
  sub_1C2E73EE4();
  __break(1u);
}

uint64_t sub_1C2D75204(uint64_t a1)
{
  result = type metadata accessor for WaitOnHoldViewModel(319);
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

uint64_t sub_1C2D75294(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 8) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
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

  return v7 + (v9 | v14) + 1;
}

void sub_1C2D7541C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 8) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
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
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 8) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

unint64_t sub_1C2D75680()
{
  result = qword_1EC061268;
  if (!qword_1EC061268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061268);
  }

  return result;
}

unint64_t sub_1C2D756E0()
{
  result = qword_1EC061280;
  if (!qword_1EC061280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0611D8, &unk_1C2E85D38);
    sub_1C2C94F38(&qword_1EC061288, &qword_1EC061270, &qword_1C2E85F40, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061280);
  }

  return result;
}

unint64_t sub_1C2D75798()
{
  result = qword_1EC061290;
  if (!qword_1EC061290)
  {
    type metadata accessor for WaitOnHoldViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061290);
  }

  return result;
}

char *sub_1C2D757F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1C2E75C14();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19[-v11];
  sub_1C2E75BB4();
  (*(v7 + 16))(v9, v12, v6);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  sub_1C2E718F4();
  v15 = sub_1C2E75C84();
  v17 = v16;
  (*(v7 + 8))(v12, v6);
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061310, &unk_1C2E860B0));

  return sub_1C2D75A38(v15, v17, a1, a2, v2);
}

char *sub_1C2D75A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&v5[qword_1EC05F918] = 0;
  *&v5[qword_1EC05F920] = 0;
  *&v5[qword_1EC05F928] = 0;
  *&v5[qword_1EC05F930] = MEMORY[0x1E69E7CC0];
  v5[qword_1EC05F938] = 2;
  v12 = &v5[qword_1EC05F940];
  *v12 = a1;
  v12[1] = a2;
  v13 = &v5[qword_1EC05F948];
  *v13 = a3;
  v13[1] = a4;
  *&v5[qword_1EC05F950] = a5;
  v17.receiver = v5;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  v15 = *&v14[qword_1EC05F950] + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_lockStateDelegate;
  swift_beginAccess();
  *(v15 + 8) = &protocol witness table for LockStateViewController<A>;
  swift_unknownObjectWeakAssign();
  return v14;
}

void *CallTranslationWorker.__allocating_init(service:)(void *a1)
{
  v2 = swift_allocObject();
  v2[2] = 0;
  swift_unknownObjectWeakInit();
  v2[9] = 0;
  v2[10] = 0;
  sub_1C2C6E3A4(a1, (v2 + 3));
  sub_1C2D75C1C();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

void *CallTranslationWorker.init(service:)(void *a1)
{
  v1[2] = 0;
  swift_unknownObjectWeakInit();
  v1[9] = 0;
  v1[10] = 0;
  sub_1C2C6E3A4(a1, (v1 + 3));
  sub_1C2D75C1C();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

double sub_1C2D75C1C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0626D0, &qword_1C2E78DC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC00, &unk_1C2E7B180);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061318, &unk_1C2E860C0);
  v10 = *(v9 - 8);
  v19 = v9;
  v20 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  v21 = sub_1C2E724B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC10, &qword_1C2E7B190);
  sub_1C2C94F38(&qword_1EC05BAC8, &qword_1EC05DC10, &qword_1C2E7B190, MEMORY[0x1E695BED8]);
  sub_1C2E72F04();

  sub_1C2C9DC60();
  v13 = sub_1C2E76084();
  v21 = v13;
  v14 = sub_1C2E76054();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_1C2C94F38(&qword_1EC05DC18, &qword_1EC05DC00, &unk_1C2E7B180, MEMORY[0x1E695BD38]);
  sub_1C2D77318(&qword_1EC05B250, sub_1C2C9DC60, MEMORY[0x1E69E8028]);
  sub_1C2E72ED4();
  sub_1C2D77238(v4);

  (*(v6 + 8))(v8, v5);
  swift_allocObject();
  swift_weakInit();
  sub_1C2C94F38(&qword_1EC061320, &qword_1EC061318, &unk_1C2E860C0, MEMORY[0x1E695BE98]);
  v15 = v19;
  v16 = sub_1C2E72F14();

  (*(v20 + 8))(v12, v15);
  *(v1 + 80) = v16;

  return result;
}

void __swiftcall CallTranslationWorker.createTranscriptsViewController()(UIViewController *__return_ptr retstr)
{
  v2 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1C2E75C14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19[-1] - v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
    if ((sub_1C2E72534() & 1) == 0)
    {
      return;
    }
  }

  else
  {
    sub_1C2C6E3A4(v1 + 24, v19);
    v12 = objc_allocWithZone(type metadata accessor for CallTranslationViewController(0));
    v11 = CallTranslationViewController.init(service:)(v19, v12);
    swift_unknownObjectWeakAssign();
    __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
    if ((sub_1C2E72534() & 1) == 0)
    {
      return;
    }
  }

  sub_1C2E75BB4();
  (*(v4 + 16))(v6, v9, v3);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  sub_1C2E718F4();
  v15 = sub_1C2E75C84();
  v17 = v16;
  (*(v4 + 8))(v9, v3);
  sub_1C2D757F0(v15, v17);
}

uint64_t CallTranslationWorker.hasTranslationActivity.getter()
{
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  if (sub_1C2E724C4())
  {
    return 1;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  return sub_1C2E72514() & 1;
}

uint64_t CallTranslationWorker.hasTranslationActivityPublisher.getter()
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0612C8, &qword_1C2E86008);
  v1 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0612D0, &qword_1C2E86010);
  v5 = *(v4 - 8);
  v18 = v4;
  v19 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0612D8, &qword_1C2E86018);
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  v21 = sub_1C2E724B4();
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  v20 = sub_1C2E72504();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC10, &qword_1C2E7B190);
  sub_1C2C94F38(&qword_1EC05BAC8, &qword_1EC05DC10, &qword_1C2E7B190, MEMORY[0x1E695BED8]);
  sub_1C2E72EB4();

  sub_1C2C94F38(&unk_1EC05BB28, &qword_1EC0612C8, &qword_1C2E86008, MEMORY[0x1E695BC68]);
  v11 = v16;
  sub_1C2E72EC4();
  (*(v1 + 8))(v3, v11);
  sub_1C2C94F38(&qword_1EC0612E0, &qword_1EC0612D0, &qword_1C2E86010, MEMORY[0x1E695BD60]);
  v12 = v18;
  sub_1C2E72F04();
  (*(v19 + 8))(v7, v12);
  sub_1C2C94F38(&qword_1EC0612E8, &qword_1EC0612D8, &qword_1C2E86018, MEMORY[0x1E695BD38]);
  v13 = v17;
  v14 = sub_1C2E72E94();
  (*(v8 + 8))(v10, v13);
  return v14;
}

void CallTranslationWorker.startTranslation(local:remote:)(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  if (sub_1C2E72514())
  {
    if (qword_1EC05CFA8 != -1)
    {
      swift_once();
    }

    v3 = sub_1C2E72B44();
    __swift_project_value_buffer(v3, qword_1EC0612B0);
    oslog = sub_1C2E72B24();
    v4 = sub_1C2E75FC4();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C2C6B000, oslog, v4, "Translatoin already started remotely.", v5, 2u);
      MEMORY[0x1C6927DF0](v5, -1, -1);
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
    sub_1C2E724E4();
  }
}

Swift::Void __swiftcall CallTranslationWorker.stopTranslationActivity()()
{
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  v1 = sub_1C2E72514();
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  if (v1)
  {
    sub_1C2E725A4();
  }

  else
  {
    sub_1C2E724D4();
  }
}

Swift::Void __swiftcall CallTranslationWorker.subscribeTranscriptsUpdates()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0626D0, &qword_1C2E78DC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0612F0, &qword_1C2E86020);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = v0[9];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v0[9] = v12;
    v13 = v0[6];
    v19 = v7;
    __swift_project_boxed_opaque_existential_1(v0 + 3, v13);
    v21 = sub_1C2E72564();
    sub_1C2C9DC60();
    v14 = sub_1C2E76084();
    v20 = v14;
    v15 = sub_1C2E76054();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0612F8, &qword_1C2E86028);
    sub_1C2C94F38(&qword_1EC061300, &qword_1EC0612F8, &qword_1C2E86028, MEMORY[0x1E695BED8]);
    sub_1C2D77318(&qword_1EC05B250, sub_1C2C9DC60, MEMORY[0x1E69E8028]);
    sub_1C2E72ED4();
    sub_1C2D77238(v4);

    swift_allocObject();
    swift_weakInit();
    sub_1C2C94F38(&qword_1EC061308, &qword_1EC0612F0, &qword_1C2E86020, MEMORY[0x1E695BE98]);
    v16 = v19;
    v17 = sub_1C2E72F14();

    (*(v6 + 8))(v9, v16);
    v1[2] = v17;
  }
}

double sub_1C2D76CE4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
LABEL_24:

      return result;
    }

    v6 = v5;
    if (sub_1C2E72634())
    {
      v7 = 0;
      v8 = 0;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1((v4 + 24), *(v4 + 48));
      v7 = sub_1C2E72544();
      v8 = v9;
    }

    if (sub_1C2E72634())
    {
      v10 = sub_1C2E72614();
    }

    else
    {
      v10 = sub_1C2E72624();
    }

    v12 = v10;
    v13 = v11;
    if (sub_1C2E72634())
    {
      v14 = sub_1C2E72624();
      v16 = v15;
      if (v13)
      {
LABEL_12:
        v29 = v7;
        v28 = v14;
        v27 = v16;
        v30 = sub_1C2E76774();
        v31 = v17;
        MEMORY[0x1C6926710](95, 0xE100000000000000);
        sub_1C2E72604();
        v18 = sub_1C2E76774();
        MEMORY[0x1C6926710](v18);

        MEMORY[0x1C6926710](95, 0xE100000000000000);
        v19 = sub_1C2E72634();
        v20 = (v19 & 1) == 0;
        if (v19)
        {
          v21 = 1702195828;
        }

        else
        {
          v21 = 0x65736C6166;
        }

        if (v20)
        {
          v22 = 0xE500000000000000;
        }

        else
        {
          v22 = 0xE400000000000000;
        }

        MEMORY[0x1C6926710](v21, v22);

        v23 = sub_1C2E72634();
        type metadata accessor for CallTranscripts(0);
        v24 = swift_allocObject();
        *(v24 + 40) = 0;
        *(v24 + 48) = 0;
        *(v24 + 56) = 1;
        *(v24 + 64) = 0;
        *(v24 + 72) = 0;
        *(v24 + 80) = 1;
        *(v24 + 88) = 0u;
        *(v24 + 104) = 0u;
        sub_1C2E71A94();
        *(v24 + 16) = v30;
        *(v24 + 24) = v31;
        *(v24 + 32) = (v23 & 1) == 0;
        sub_1C2E111F8(v12, v13);
        sub_1C2E115BC(v28, v27);
        if (*(v24 + 112))
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          sub_1C2D77318(&qword_1EC062660, type metadata accessor for CallTranscripts, &protocol conformance descriptor for CallTranscripts);
          sub_1C2E71A54();
        }

        else
        {
          *(v24 + 104) = 0;
          *(v24 + 112) = 0;
        }

        sub_1C2E10C88(v29, v8);
        CallTranslationViewController.update(with:)(v24);

        goto LABEL_24;
      }
    }

    else
    {
      v14 = sub_1C2E72614();
      v16 = v26;
      if (v13)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

double sub_1C2D77050(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    __swift_project_boxed_opaque_existential_1((Strong + 24), *(Strong + 48));
    if (sub_1C2E72514())
    {
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        sub_1C2C9F44C();
        CallTranscriptsDataSource.removeAll()();
      }
    }

    if (v2)
    {
      CallTranslationWorker.subscribeTranscriptsUpdates()();
    }

    else
    {
      *(v5 + 16) = 0;
    }
  }

  return result;
}

void *CallTranslationWorker.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  MEMORY[0x1C6927ED0](v0 + 64);

  return v0;
}

uint64_t CallTranslationWorker.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  MEMORY[0x1C6927ED0](v0 + 64);

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1C2D771B4()
{
  v0 = sub_1C2E72B44();
  __swift_allocate_value_buffer(v0, qword_1EC0612B0);
  __swift_project_value_buffer(v0, qword_1EC0612B0);
  return sub_1C2E72B34();
}

uint64_t sub_1C2D77238(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0626D0, &qword_1C2E78DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2D77318(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CircleOverlayConfig.imageName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

_BYTE *CircleOverlayConfig.init(corner:scale:imageName:color:imageColor:imageScale:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v9 = *a2;
  *a9 = *result;
  *(a9 + 1) = v9;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  if (a8)
  {
    a7 = 1.0;
  }

  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  return result;
}

uint64_t CircleOverlayConfig.CircleCorner.description.getter()
{
  v1 = 0x7466654C706F74;
  v2 = 0x654C6D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x69526D6F74746F62;
  }

  if (*v0)
  {
    v1 = 0x7468676952706F74;
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

uint64_t CircleOverlayConfig.CircleCorner.hashValue.getter()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  return sub_1C2E76894();
}

uint64_t CircleOverlayConfig.CircleScale.description.getter()
{
  v1 = 0x72616C75676572;
  if (*v0 != 1)
  {
    v1 = 0x656772616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

CommunicationsUI::CircleOverlayConfig::CircleScale_optional __swiftcall CircleOverlayConfig.CircleScale.init(rawValue:)(Swift::Double rawValue)
{
  if (rawValue == 0.85)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 0.6)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (rawValue == 0.3)
  {
    v3 = 0;
  }

  *v1 = v3;
  return result;
}

double sub_1C2D7765C@<D0>(double *a1@<X8>)
{
  result = dbl_1C2E867C8[*v1];
  *a1 = result;
  return result;
}

void sub_1C2D77684()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v2;
  v6 = v1;
  v7 = v3;
  v8 = v4;
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      CGRectGetMinX(*&v5);
    }

    else
    {
      CGRectGetMaxX(*&v5);
    }

    v10.origin.x = v2;
    v10.origin.y = v1;
    v10.size.width = v3;
    v10.size.height = v4;
    CGRectGetMaxY(v10);
  }

  else
  {
    if (*v0)
    {
      CGRectGetMaxX(*&v5);
    }

    else
    {
      CGRectGetMinX(*&v5);
    }

    v11.origin.x = v2;
    v11.origin.y = v1;
    v11.size.width = v3;
    v11.size.height = v4;
    CGRectGetMinY(v11);
  }

  CGPointMake();
}

double sub_1C2D77824@<D0>(uint64_t a1@<X8>)
{
  sub_1C2E74754();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_1C2D7788C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1C2E72FC4();
  return sub_1C2CF84BC;
}

uint64_t sub_1C2D77914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2D79BBC(&qword_1EC0613F8, type metadata accessor for FrontCircleShape, &unk_1C2E86728);

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C2D779A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2D79BBC(&qword_1EC0613F8, type metadata accessor for FrontCircleShape, &unk_1C2E86728);

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C2D77A3C(uint64_t a1)
{
  v2 = sub_1C2D79BBC(&qword_1EC0613F8, type metadata accessor for FrontCircleShape, &unk_1C2E86728);

  return MEMORY[0x1EEDE4410](a1, v2);
}

double sub_1C2D77AB8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BackCircleShape(0);
  sub_1C2D77684();
  sub_1C2D77684();
  x = v22.origin.x;
  y = v22.origin.y;
  v6 = *(a2 + 64) * dbl_1C2E867C8[*(a2 + 1)];
  v22.size.width = v6;
  v22.size.height = v6;
  CGRectGetMidX(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = v6;
  v23.size.height = v6;
  CGRectGetMidY(v23);
  v16 = 0x3FF0000000000000;
  v17 = 0;
  v18 = 0;
  v19 = 0x3FF0000000000000;
  v20 = 0;
  v21 = 0;
  sub_1C2E74714();
  v7 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v7;
  v15 = *(a1 + 32);
  sub_1C2E74734();
  sub_1C2E74724();
  sub_1C2D7294C(v10);
  sub_1C2D7294C(v14);
  result = *&v11;
  v9 = v12;
  *a1 = v11;
  *(a1 + 16) = v9;
  *(a1 + 32) = v13;
  return result;
}

double sub_1C2D77C3C@<D0>(uint64_t a1@<X8>)
{
  sub_1C2E74754();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_1C2D77CB4(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1C2E72FC4();
  return sub_1C2CF6D08;
}

uint64_t sub_1C2D77D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2D79BBC(&qword_1EC061400, type metadata accessor for BackCircleShape, &unk_1C2E866D8);

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C2D77DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2D79BBC(&qword_1EC061400, type metadata accessor for BackCircleShape, &unk_1C2E866D8);

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C2D77E64(uint64_t a1)
{
  v2 = sub_1C2D79BBC(&qword_1EC061400, type metadata accessor for BackCircleShape, &unk_1C2E866D8);

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t sub_1C2D77EE0@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v21 = type metadata accessor for BackCircleShape(0);
  MEMORY[0x1EEE9AC00](v21);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C2E75054();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + *(type metadata accessor for BackView(0) + 20);

  sub_1C2E75044();
  (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
  v9 = sub_1C2E750C4();

  (*(v5 + 8))(v7, v4);
  v10 = *(v8 + 1);
  v11 = *(v8 + 64);
  sub_1C2E75744();
  sub_1C2E73274();
  v30 = 1;
  *&v29[6] = v31[0];
  *&v29[22] = v31[1];
  *&v29[38] = v31[2];
  sub_1C2D77684();
  x = v32.origin.x;
  y = v32.origin.y;
  v14 = v11 * dbl_1C2E867C8[v10];
  v32.size.width = v14;
  v32.size.height = v14;
  MidX = CGRectGetMidX(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = v14;
  v33.size.height = v14;
  MidY = CGRectGetMidY(v33);
  v17 = *(v8 + 32);
  KeyPath = swift_getKeyPath();
  v23 = v9;
  LOWORD(v24[0]) = 1;
  *(v24 + 2) = *v29;
  *(&v24[1] + 2) = *&v29[16];
  *(&v24[2] + 2) = *&v29[32];
  *&v24[3] = *&v29[46];
  *(&v24[3] + 1) = MidX;
  *&v25 = MidY;
  *(&v25 + 1) = KeyPath;
  v26 = v17;
  type metadata accessor for CircleOverlay(0);
  sub_1C2D79CDC(v20, v3, type metadata accessor for CircleOverlay);
  sub_1C2D79CDC(v8, &v3[*(v21 + 20)], type metadata accessor for CircleOverlay);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0613C8, &qword_1C2E864F0);
  sub_1C2D79940();
  sub_1C2D79BBC(&qword_1EC061400, type metadata accessor for BackCircleShape, &unk_1C2E866D8);
  sub_1C2E749D4();
  sub_1C2D79C04(v3, type metadata accessor for BackCircleShape);
  v27[4] = v24[3];
  v27[5] = v25;
  v28 = v26;
  v27[0] = v23;
  v27[1] = v24[0];
  v27[2] = v24[1];
  v27[3] = v24[2];
  return sub_1C2D79B34(v27);
}

uint64_t sub_1C2D782A8@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = type metadata accessor for FrontCircleShape(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C2E75054();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1C2E75044();
  (*(v6 + 104))(v8, *MEMORY[0x1E6981630], v5);
  v9 = sub_1C2E750C4();

  (*(v6 + 8))(v8, v5);
  v10 = *(v1 + 1);
  v11 = *(v1 + 64);
  sub_1C2E75744();
  sub_1C2E73274();
  v28 = 1;
  *&v27[6] = v29[0];
  *&v27[22] = v29[1];
  *&v27[38] = v29[2];
  sub_1C2D77684();
  x = v30.origin.x;
  y = v30.origin.y;
  v14 = v11 * dbl_1C2E867C8[v10];
  v30.size.width = v14;
  v30.size.height = v14;
  MidX = CGRectGetMidX(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = v14;
  v31.size.height = v14;
  MidY = CGRectGetMidY(v31);
  v17 = *(v1 + 32);
  KeyPath = swift_getKeyPath();
  v21 = v9;
  LOWORD(v22[0]) = 1;
  *(v22 + 2) = *v27;
  *(&v22[1] + 2) = *&v27[16];
  *(&v22[2] + 2) = *&v27[32];
  *&v22[3] = *&v27[46];
  *(&v22[3] + 1) = MidX;
  *&v23 = MidY;
  *(&v23 + 1) = KeyPath;
  v24 = v17;
  type metadata accessor for CircleOverlay(0);
  sub_1C2D79CDC(v1, v4, type metadata accessor for CircleOverlay);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0613C8, &qword_1C2E864F0);
  sub_1C2D79940();
  sub_1C2D79BBC(&qword_1EC0613F8, type metadata accessor for FrontCircleShape, &unk_1C2E86728);
  sub_1C2E749D4();
  sub_1C2D79C04(v4, type metadata accessor for FrontCircleShape);
  v25[4] = v22[3];
  v25[5] = v23;
  v26 = v24;
  v25[0] = v21;
  v25[1] = v22[0];
  v25[2] = v22[1];
  v25[3] = v22[2];
  return sub_1C2D79B34(v25);
}

uint64_t GlassCutoutCirclesOverlayView.init(frontCircleConfig:backCircleConfig:size:)@<X0>(uint64_t result@<X0>, __int16 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = *(result + 8);
  v6 = *(result + 32);
  v7 = *(result + 40);
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  *a3 = *result;
  *(a3 + 8) = v5;
  *(a3 + 16) = *(result + 16);
  *(a3 + 32) = v6;
  *(a3 + 40) = v7;
  *(a3 + 48) = v8;
  *(a3 + 56) = v9;
  *(a3 + 64) = *(a2 + 1);
  *(a3 + 80) = v10;
  *(a3 + 88) = v11;
  *(a3 + 96) = a4;
  *(a3 + 104) = a5;
  return result;
}

double GlassCutoutCirclesOverlayView.body.getter@<D0>(uint64_t a2@<X8>)
{
  sub_1C2E756E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061328, &qword_1C2E860D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061330, &qword_1C2E860D8);
  sub_1C2C94F38(&qword_1EC061338, &qword_1EC061328, &qword_1C2E860D0, MEMORY[0x1E697FD98]);
  sub_1C2C94F38(&qword_1EC061340, &qword_1EC061330, &qword_1C2E860D8, MEMORY[0x1E6981880]);
  sub_1C2E756F4();
  sub_1C2E75744();
  sub_1C2E73274();
  v3 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061348, &qword_1C2E860E0) + 36));
  *v3 = v5;
  v3[1] = v6;
  result = *&v7;
  v3[2] = v7;
  return result;
}

uint64_t sub_1C2D78844(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061330, &qword_1C2E860D8);
  sub_1C2C94F38(&qword_1EC061340, &qword_1EC061330, &qword_1C2E860D8, MEMORY[0x1E6981880]);
  return sub_1C2E74074();
}

uint64_t sub_1C2D788F8@<X0>(_OWORD *a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = sub_1C2E75744();
  a4[1] = v7;
  v8 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061408, &qword_1C2E86508) + 44));
  v9 = swift_allocObject();
  v10 = a1[5];
  v9[5] = a1[4];
  v9[6] = v10;
  v9[7] = a1[6];
  v11 = a1[1];
  v9[1] = *a1;
  v9[2] = v11;
  v12 = a1[3];
  v9[3] = a1[2];
  v9[4] = v12;
  KeyPath = swift_getKeyPath();
  v14 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061410, &qword_1C2E86540) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061418, &qword_1C2E86548) + 28);
  v16 = *MEMORY[0x1E697E7D0];
  v17 = sub_1C2E73614();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = KeyPath;
  *v8 = a3;
  v8[1] = v9;
  return sub_1C2D79C6C(a1, &v19);
}

unint64_t sub_1C2D78A78()
{
  result = qword_1EC061350;
  if (!qword_1EC061350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061350);
  }

  return result;
}

unint64_t sub_1C2D78B14()
{
  result = qword_1EC061368;
  if (!qword_1EC061368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061368);
  }

  return result;
}

uint64_t sub_1C2D78BC8@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a1;
  v63 = a3;
  v4 = type metadata accessor for FrontView(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = (&v58 - v7);
  v66 = sub_1C2E75364();
  v67 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C2E73F64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BackView(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  v20 = a2[1];
  v72 = *a2;
  v73 = v20;
  v74 = a2[2];
  sub_1C2E74144();
  sub_1C2E732E4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v64 = *(v11 + 8);
  v64(v13, v10);
  v29 = v73;
  *v19 = v72;
  *(v19 + 1) = v29;
  *(v19 + 2) = v74;
  *(v19 + 6) = v22;
  *(v19 + 7) = v24;
  *(v19 + 8) = v26;
  *(v19 + 9) = v28;
  sub_1C2D79CA4(&v72, &v69);
  sub_1C2E75314();
  v60 = *(&v73 + 1);
  type metadata accessor for CircleOverlay(0);
  sub_1C2E75354();
  v30 = *(v67 + 8);
  v67 += 8;
  v30(v9, v66);
  v31 = a2[4];
  v69 = a2[3];
  v70 = v31;
  v71 = a2[5];
  sub_1C2E74144();
  sub_1C2E732E4();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v64(v13, v10);
  v40 = &v19[*(v15 + 28)];
  v41 = v70;
  *v40 = v69;
  *(v40 + 1) = v41;
  *(v40 + 2) = v71;
  *(v40 + 6) = v33;
  *(v40 + 7) = v35;
  *(v40 + 8) = v37;
  *(v40 + 9) = v39;
  sub_1C2D79CA4(&v69, v68);
  sub_1C2E75314();
  sub_1C2E75354();
  v42 = v66;
  v30(v9, v66);
  sub_1C2E74144();
  sub_1C2E732E4();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v64(v13, v10);
  v51 = v73;
  v52 = v59;
  *v59 = v72;
  *(v52 + 16) = v51;
  *(v52 + 32) = v74;
  *(v52 + 48) = v44;
  *(v52 + 56) = v46;
  *(v52 + 64) = v48;
  *(v52 + 72) = v50;
  sub_1C2D79CA4(&v72, v68);
  sub_1C2E75314();
  sub_1C2E75354();
  v30(v9, v42);
  v53 = v61;
  sub_1C2D79CDC(v19, v61, type metadata accessor for BackView);
  v54 = v62;
  sub_1C2D79CDC(v52, v62, type metadata accessor for FrontView);
  v55 = v63;
  sub_1C2D79CDC(v53, v63, type metadata accessor for BackView);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061420, &unk_1C2E86550);
  sub_1C2D79CDC(v54, v55 + *(v56 + 48), type metadata accessor for FrontView);
  sub_1C2D79C04(v52, type metadata accessor for FrontView);
  sub_1C2D79C04(v19, type metadata accessor for BackView);
  sub_1C2D79C04(v54, type metadata accessor for FrontView);
  return sub_1C2D79C04(v53, type metadata accessor for BackView);
}

uint64_t sub_1C2D7915C(uint64_t a1)
{
  v2 = sub_1C2E73614();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C2E73994();
}

double sub_1C2D79224@<D0>(uint64_t a2@<X8>)
{
  sub_1C2E756E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061328, &qword_1C2E860D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061330, &qword_1C2E860D8);
  sub_1C2C94F38(&qword_1EC061338, &qword_1EC061328, &qword_1C2E860D0, MEMORY[0x1E697FD98]);
  sub_1C2C94F38(&qword_1EC061340, &qword_1EC061330, &qword_1C2E860D8, MEMORY[0x1E6981880]);
  sub_1C2E756F4();
  sub_1C2E75744();
  sub_1C2E73274();
  v3 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061348, &qword_1C2E860E0) + 36));
  *v3 = v5;
  v3[1] = v6;
  result = *&v7;
  v3[2] = v7;
  return result;
}

uint64_t sub_1C2D793D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C2D7941C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t _s19ButtonConfigurationV6SymbolOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s19ButtonConfigurationV6SymbolOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C2D795D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1C2D79620(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1C2D7968C()
{
  result = qword_1EC061388;
  if (!qword_1EC061388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061390, &qword_1C2E863F0);
    sub_1C2C94F38(&qword_1EC061338, &qword_1EC061328, &qword_1C2E860D0, MEMORY[0x1E697FD98]);
    sub_1C2C94F38(&qword_1EC061340, &qword_1EC061330, &qword_1C2E860D8, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061388);
  }

  return result;
}

void sub_1C2D7980C(uint64_t a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    sub_1C2E75364();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C2D79940()
{
  result = qword_1EC0613D0;
  if (!qword_1EC0613D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0613C8, &qword_1C2E864F0);
    sub_1C2D799F8();
    sub_1C2C94F38(&qword_1EC05CB00, &qword_1EC05DD80, &qword_1C2E7B840, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0613D0);
  }

  return result;
}

unint64_t sub_1C2D799F8()
{
  result = qword_1EC0613D8;
  if (!qword_1EC0613D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0613E0, &qword_1C2E864F8);
    sub_1C2D79AB0(&qword_1EC0613E8, &qword_1EC0613F0, &qword_1C2E86500, sub_1C2C76BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0613D8);
  }

  return result;
}

uint64_t sub_1C2D79AB0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C2D79B34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0613C8, &qword_1C2E864F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2D79BBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C2D79C04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C2D79CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircleOverlay(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircleOverlay(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C2D79E80(uint64_t a1)
{
  result = type metadata accessor for CircleOverlay(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C2D79F14(uint64_t a1)
{
  result = type metadata accessor for CircleOverlay(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE12_glassEffect_2inQrAA6_GlassV_qd__tAA5ShapeRd__lFQOyAA15ModifiedContentVyAJyAJyAJyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA09_PositionN0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_014CommunicationsB0011FrontCircleH0VQo_HOTm(uint64_t a1, uint64_t (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0613C8, &qword_1C2E864F0);
  a2(255);
  sub_1C2D79940();
  sub_1C2D79BBC(a3, a4, a5);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2D7A21C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2E73BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2D0, &qword_1C2E86AA0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ControlButtonStyle(0);
  sub_1C2C736A4(v1 + *(v10 + 24), v9, &qword_1EC05F2D0, &qword_1C2E86AA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C2E73DB4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C2E75FD4();
    v13 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C2D7A424()
{
  v1 = sub_1C2E75404();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v25 - v5;
  v7 = sub_1C2E737C4();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  v13 = *v0;
  swift_getKeyPath();
  v25[1] = v13;
  sub_1C2D7C204(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v14 = (v13 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__clipShape);
  swift_beginAccess();
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    if (!v15)
    {
      sub_1C2CB2AB4();
      return sub_1C2E754A4();
    }

    v16 = *MEMORY[0x1E697F468];
    v17 = sub_1C2E73D44();
    (*(*(v17 - 8) + 104))(v6, v16, v17);
    v18 = MEMORY[0x1E6981998];
    sub_1C2D7C19C(v6, v3, MEMORY[0x1E6981998]);
    sub_1C2D7C204(&qword_1EC061500, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
    v19 = sub_1C2E754A4();
    v20 = v6;
  }

  else
  {
    v21 = *(v7 + 20);
    v22 = *MEMORY[0x1E697F468];
    v23 = sub_1C2E73D44();
    (*(*(v23 - 8) + 104))(&v12[v21], v22, v23);
    *v12 = v15;
    *(v12 + 1) = v15;
    v18 = MEMORY[0x1E697EAF0];
    sub_1C2D7C19C(v12, v9, MEMORY[0x1E697EAF0]);
    sub_1C2D7C204(&qword_1EC05B620, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    v19 = sub_1C2E754A4();
    v20 = v12;
  }

  sub_1C2D7C24C(v20, v18);
  return v19;
}

uint64_t ControlButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v96 = a2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061488, &qword_1C2E86820);
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v73 - v5;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061490, &qword_1C2E86828);
  MEMORY[0x1EEE9AC00](v94);
  v74 = &v73 - v6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061498, &unk_1C2E86830);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810, &qword_1C2E7B9B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v73 = &v73 - v9;
  v78 = sub_1C2E73DB4();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614A0, &qword_1C2E86840);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v73 - v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614A8, &qword_1C2E86848);
  MEMORY[0x1EEE9AC00](v75);
  v17 = &v73 - v16;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614B0, &qword_1C2E86850);
  MEMORY[0x1EEE9AC00](v76);
  v81 = &v73 - v18;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614B8, &qword_1C2E86858);
  MEMORY[0x1EEE9AC00](v83);
  v97 = &v73 - v19;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614C0, &qword_1C2E86860);
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v73 - v20;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614C8, &qword_1C2E86868);
  MEMORY[0x1EEE9AC00](v91);
  v88 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v90 = &v73 - v23;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614D0, &qword_1C2E86870);
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v73 - v24;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614D8, &qword_1C2E86878);
  MEMORY[0x1EEE9AC00](v86);
  v92 = &v73 - v25;
  v99 = a1;
  sub_1C2E741C4();
  v26 = *v3;
  swift_getKeyPath();
  v27 = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration___observationRegistrar;
  *&v102 = v26;
  v28 = sub_1C2D7C204(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v29 = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__elementColor;
  swift_beginAccess();
  *&v15[*(v13 + 44)] = *(v26 + v29);

  v98 = v3;
  sub_1C2D7A21C(v11);
  swift_getKeyPath();
  *&v102 = v26;
  v100 = v27;
  v80 = v28;
  sub_1C2E71A64();

  v30 = *(v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration);
  if (*(v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration + 16))
  {
    v31 = *(v77 + 8);

    v31(v11, v78);
  }

  else
  {
    v32 = *(v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration + 8);

    v30(v11);
    v33 = sub_1C2E74534();
    v34 = v73;
    (*(*(v33 - 8) + 56))(v73, 1, 1, v33);
    v35 = sub_1C2E745C4();
    sub_1C2D7BD04(v30, v32, 0);
    sub_1C2C73644(v34, &qword_1EC05D810, &qword_1C2E7B9B0);
    (*(v77 + 8))(v11, v78);
    v30 = v35;
  }

  KeyPath = swift_getKeyPath();
  sub_1C2C71D5C(v15, v17, &qword_1EC0614A0, &qword_1C2E86840);
  v37 = &v17[*(v75 + 36)];
  *v37 = KeyPath;
  v37[1] = v30;
  sub_1C2E75744();
  sub_1C2E73274();
  v38 = v81;
  sub_1C2C71D5C(v17, v81, &qword_1EC0614A8, &qword_1C2E86848);
  v39 = (v38 + *(v76 + 36));
  v40 = v103;
  v41 = v104;
  *v39 = v102;
  v39[1] = v40;
  v39[2] = v41;
  v78 = sub_1C2D7A424();
  v42 = sub_1C2E741D4();
  swift_getKeyPath();
  v101[9] = v26;
  sub_1C2E71A64();

  swift_beginAccess();
  v43 = (v26 + 32);
  v44 = (v26 + 40);
  v45 = (v42 & 1) == 0;
  if ((v42 & 1) == 0)
  {
    v44 = (v26 + 24);
  }

  v46 = *v44;
  if (!v45)
  {
    v43 = (v26 + 48);
  }

  v47 = *v43;
  sub_1C2CC290C(*v44, *v43);
  v48 = sub_1C2E741D4();
  v49 = v79;
  v50 = &v79[*(v82 + 44)];
  sub_1C2E74FF4();
  v50[*(type metadata accessor for BackgroundStyleConfiguration.GlassConfiguration(0) + 20)] = 4;
  *v49 = v78;
  *(v49 + 8) = v46;
  *(v49 + 16) = v47;
  *(v49 + 17) = v48 & 1;
  v51 = v97;
  sub_1C2C71D5C(v38, v97, &qword_1EC0614B0, &qword_1C2E86850);
  sub_1C2C71D5C(v49, v51 + *(v83 + 36), &qword_1EC061498, &unk_1C2E86830);
  swift_getKeyPath();
  v101[6] = v26;
  sub_1C2E71A64();

  v52 = v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityIdentifier;
  swift_beginAccess();
  if (*(v52 + 8))
  {
    sub_1C2D7B968();

    v53 = v74;
    sub_1C2E74C54();
    sub_1C2C736A4(v53, v95, &qword_1EC061490, &qword_1C2E86828);
    swift_storeEnumTagMultiPayload();
    sub_1C2D7C0E8(&qword_1EC05B630, &qword_1EC061490, &qword_1C2E86828, sub_1C2D7B968);
    v54 = v85;
    v51 = v97;
    sub_1C2E73F44();
    sub_1C2C73644(v53, &qword_1EC061490, &qword_1C2E86828);
  }

  else
  {
    sub_1C2C736A4(v51, v95, &qword_1EC0614B8, &qword_1C2E86858);
    swift_storeEnumTagMultiPayload();
    sub_1C2D7C0E8(&qword_1EC05B630, &qword_1EC061490, &qword_1C2E86828, sub_1C2D7B968);
    sub_1C2D7B968();
    v54 = v85;
    sub_1C2E73F44();
  }

  sub_1C2C73644(v51, &qword_1EC0614B8, &qword_1C2E86858);
  swift_getKeyPath();
  v101[3] = v26;
  sub_1C2E71A64();

  v55 = (v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityValue);
  swift_beginAccess();
  if (v55[1])
  {
    v56 = *v55;
    v57 = v55[1];
  }

  else
  {
    v56 = 0;
    v57 = 0xE000000000000000;
  }

  v101[0] = v56;
  v101[1] = v57;
  sub_1C2D7BC4C();
  sub_1C2C74960();

  v58 = v88;
  sub_1C2E74B54();

  sub_1C2C73644(v54, &qword_1EC0614C0, &qword_1C2E86860);
  swift_getKeyPath();
  v101[0] = v26;
  sub_1C2E71A64();

  swift_beginAccess();
  v59 = v90;
  sub_1C2E73634();
  sub_1C2C73644(v58, &qword_1EC0614C8, &qword_1C2E86868);
  v60 = sub_1C2D7A424();
  v61 = v59;
  v62 = v89;
  sub_1C2C71D5C(v61, v89, &qword_1EC0614C8, &qword_1C2E86868);
  v63 = v62 + *(v87 + 36);
  *v63 = v60;
  *(v63 + 8) = 256;
  v64 = sub_1C2D7A424();
  v65 = v92;
  sub_1C2C71D5C(v62, v92, &qword_1EC0614D0, &qword_1C2E86870);
  v66 = v65 + *(v86 + 36);
  *v66 = v64;
  *(v66 + 8) = 0;
  v67 = sub_1C2E757B4();
  v68 = sub_1C2E741D4();
  v69 = v65;
  v70 = v96;
  sub_1C2C71D5C(v69, v96, &qword_1EC0614D8, &qword_1C2E86878);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614E0, &qword_1C2E869A0);
  v72 = v70 + *(result + 36);
  *v72 = v67;
  *(v72 + 8) = v68 & 1;
  return result;
}

uint64_t sub_1C2D7B598@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D7C204(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 40);
  *a2 = v4;
  v6 = *(v3 + 32);
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  v7 = *(v3 + 48);
  *(a2 + 24) = v7;
  sub_1C2CC290C(v4, v6);
  return sub_1C2CC290C(v5, v7);
}

double sub_1C2D7B67C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C2D7C204(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);
  sub_1C2E71A54();

  return result;
}

uint64_t sub_1C2D7B768@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D7C204(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__elementColor;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C2D7B85C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D7C204(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v4 = (v3 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_1C2D7B928(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2D7F264(v1, v2);
}

unint64_t sub_1C2D7B968()
{
  result = qword_1EC05B668;
  if (!qword_1EC05B668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0614B8, &qword_1C2E86858);
    sub_1C2D7BA20();
    sub_1C2C94F38(&qword_1EC05BD20, &qword_1EC061498, &unk_1C2E86830, &unk_1C2E84D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B668);
  }

  return result;
}

unint64_t sub_1C2D7BA20()
{
  result = qword_1EC05B6D0;
  if (!qword_1EC05B6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0614B0, &qword_1C2E86850);
    sub_1C2D7BAAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B6D0);
  }

  return result;
}

unint64_t sub_1C2D7BAAC()
{
  result = qword_1EC05B7A0;
  if (!qword_1EC05B7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0614A8, &qword_1C2E86848);
    sub_1C2D7BB64();
    sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8, &unk_1C2E7C240, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B7A0);
  }

  return result;
}

unint64_t sub_1C2D7BB64()
{
  result = qword_1EC05B918;
  if (!qword_1EC05B918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0614A0, &qword_1C2E86840);
    sub_1C2D7C204(&qword_1EC05CB20, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    sub_1C2C94F38(qword_1EDDCDA28, &qword_1EC05E1F0, &qword_1C2E7C220, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B918);
  }

  return result;
}

unint64_t sub_1C2D7BC4C()
{
  result = qword_1EC05B570;
  if (!qword_1EC05B570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0614C0, &qword_1C2E86860);
    sub_1C2D7C0E8(&qword_1EC05B630, &qword_1EC061490, &qword_1C2E86828, sub_1C2D7B968);
    sub_1C2D7B968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B570);
  }

  return result;
}

uint64_t type metadata accessor for ControlButtonStyle(uint64_t a1)
{
  result = qword_1EC05C2A8;
  if (!qword_1EC05C2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C2D7BDA0(uint64_t a1)
{
  type metadata accessor for ControlButtonConfiguration(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_1C2D7BE3C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C2D7BE3C(uint64_t a1)
{
  if (!qword_1EC05CBF8)
  {
    sub_1C2E73DB4();
    v1 = sub_1C2E730F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC05CBF8);
    }
  }
}

unint64_t sub_1C2D7BE94()
{
  result = qword_1EC05B670;
  if (!qword_1EC05B670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0614E0, &qword_1C2E869A0);
    sub_1C2D7BF4C();
    sub_1C2C94F38(&qword_1EC05B5F0, &qword_1EC05F5F8, &qword_1C2E80528, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B670);
  }

  return result;
}

unint64_t sub_1C2D7BF4C()
{
  result = qword_1EC05B6E0;
  if (!qword_1EC05B6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0614D8, &qword_1C2E86878);
    sub_1C2D7C004();
    sub_1C2C94F38(&qword_1EC05B500, &qword_1EC0614F8, &unk_1C2E86A30, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B6E0);
  }

  return result;
}

unint64_t sub_1C2D7C004()
{
  result = qword_1EC05B7C8;
  if (!qword_1EC05B7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0614D0, &qword_1C2E86870);
    sub_1C2D7C0E8(&qword_1EC05B968, &qword_1EC0614C8, &qword_1C2E86868, sub_1C2D7BC4C);
    sub_1C2C94F38(&qword_1EC05BA70, &qword_1EC0614F0, &qword_1C2E93FC0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B7C8);
  }

  return result;
}

uint64_t sub_1C2D7C0E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1C2D7C204(&qword_1EDDCDA08, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C2D7C19C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2D7C204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C2D7C24C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void ControlSelection.init(uniqueIdentifier:label:systemImage:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *a5;
  v8 = a5[1];
  v9 = *(a5 + 16);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  sub_1C2C9E060(0, 0, 0xFFu);
  *(a6 + 32) = v7;
  *(a6 + 40) = v8;
  *(a6 + 48) = v9;
}

uint64_t ControlButton.init(action:configuration:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v11 = type metadata accessor for ControlButton(0);
  v12 = *(v11 + 28);
  *(a4 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2D0, &qword_1C2E86AA0);
  swift_storeEnumTagMultiPayload();
  *a4 = a1;
  a4[1] = a2;
  type metadata accessor for ControlButtonConfiguration(0);
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);
  result = sub_1C2E754C4();
  v14 = (a4 + *(v11 + 24));
  *v14 = a5;
  v14[1] = a6;
  return result;
}

uint64_t ControlButtonConfiguration.__allocating_init(enabled:backgroundConfiguration:element:elementColor:clipShape:fontSize:accessibilityIdentifier:accessibilityValue:accessibilityTraits:menuConfiguration:)(int a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, __int128 *a14)
{
  v38 = a6;
  v39 = a7;
  v36 = a1;
  v44 = a13;
  v45 = a12;
  v42 = a11;
  v43 = a8;
  v40 = a9;
  v41 = a10;
  v37 = a14;
  v18 = type metadata accessor for ControlButtonElement(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a2;
  v22 = *(a2 + 8);
  v23 = a2[2];
  v24 = *(a2 + 24);
  v25 = *a5;
  v35 = *(a5 + 8);
  sub_1C2D8646C(a3, v20, type metadata accessor for ControlButtonElement);
  type metadata accessor for ControlButtonConfiguration(0);
  v26 = swift_allocObject();
  v27 = v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *(v27 + 48) = 0;
  *(v27 + 56) = -256;
  v28 = (v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityIdentifier);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityValue);
  *v29 = 0;
  v29[1] = 0;
  v30 = v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityTraits;
  *v30 = 0;
  *(v30 + 8) = 1;
  sub_1C2E71A94();
  *(v26 + 16) = v36;
  *(v26 + 24) = v21;
  *(v26 + 32) = v22;
  *(v26 + 40) = v23;
  *(v26 + 48) = v24;
  sub_1C2D8646C(v20, v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__element, type metadata accessor for ControlButtonElement);
  *(v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__elementColor) = a4;
  v31 = v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__clipShape;
  *v31 = v25;
  *(v31 + 8) = v35;
  v32 = v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration;
  v33 = v39;
  *v32 = v38;
  *(v32 + 8) = v33;
  *(v32 + 16) = 0;

  sub_1C2D7E988(v37);
  sub_1C2D7F264(v43, v40);
  sub_1C2D7F638(v41, v42);
  sub_1C2D7FBDC(v45, v44 & 1);

  sub_1C2D86C58(a3, type metadata accessor for ControlButtonElement);
  sub_1C2D86C58(v20, type metadata accessor for ControlButtonElement);
  return v26;
}

uint64_t ControlButtonBackgroundConfiguration.init(style:highlightedBackgroundStyle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *(a2 + 8);
  if (v6 < 0xFE)
  {
    v7 = *a2;
  }

  else
  {
    result = sub_1C2CC290C(*result, v5);
    v7 = v4;
    LOBYTE(v6) = v5;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v7;
  *(a3 + 24) = v6;
  return result;
}

uint64_t ControlButtonConfiguration.__allocating_init(enabled:backgroundColor:highlightedBackgroundColor:element:elementColor:clipShape:fontSize:accessibilityIdentifier:menuConfiguration:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 *a11)
{
  v37 = a7;
  v38 = a8;
  LODWORD(v43) = a1;
  v40 = a9;
  v41 = 0;
  v39 = a10;
  v36 = a11;
  v16 = type metadata accessor for ControlButtonElement(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v33[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33[-v20];
  v35 = *a6;
  v34 = *(a6 + 8);
  v45 = a4;
  sub_1C2D8646C(a4, &v33[-v20], type metadata accessor for ControlButtonElement);
  v44 = v21;
  sub_1C2D8646C(v21, v18, type metadata accessor for ControlButtonElement);
  type metadata accessor for ControlButtonConfiguration(0);
  v22 = swift_allocObject();
  v23 = v22 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 0;
  *(v23 + 56) = -256;
  v24 = (v22 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityIdentifier);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v22 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityValue);
  *v25 = 0;
  v25[1] = 0;
  v26 = v22 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityTraits;
  *v26 = 0;
  *(v26 + 8) = 1;

  sub_1C2E71A94();
  *(v22 + 16) = v43;
  v42 = a2;
  v43 = a3;
  *(v22 + 24) = a2;
  *(v22 + 32) = 1;
  *(v22 + 40) = a3;
  *(v22 + 48) = 1;
  sub_1C2D8646C(v18, v22 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__element, type metadata accessor for ControlButtonElement);
  *(v22 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__elementColor) = a5;
  v27 = v22 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__clipShape;
  *v27 = v35;
  *(v27 + 8) = v34;
  v28 = v22 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration;
  v29 = v38;
  *v28 = v37;
  *(v28 + 8) = v29;
  *(v28 + 16) = 0;

  sub_1C2D7E988(v36);
  sub_1C2D7F264(v40, v39);
  swift_beginAccess();
  if (v25[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v33[-24] = 0;
    *&v33[-16] = 0;
    *&v33[-32] = v22;
    v47 = v22;
    sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);
    sub_1C2E71A54();
  }

  else
  {
    *v25 = 0;
    v25[1] = 0;
  }

  swift_beginAccess();
  if (*(v26 + 8))
  {

    sub_1C2D86C58(v45, type metadata accessor for ControlButtonElement);
    sub_1C2D86C58(v18, type metadata accessor for ControlButtonElement);
    sub_1C2D86C58(v44, type metadata accessor for ControlButtonElement);
    *v26 = 0;
    *(v26 + 8) = 1;
  }

  else
  {
    v31 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v31);
    *&v33[-32] = v22;
    *&v33[-24] = 0;
    v33[-16] = 1;
    v46 = v22;
    sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);
    sub_1C2E71A54();

    sub_1C2D86C58(v45, type metadata accessor for ControlButtonElement);
    sub_1C2D86C58(v18, type metadata accessor for ControlButtonElement);
    sub_1C2D86C58(v44, type metadata accessor for ControlButtonElement);
  }

  return v22;
}

uint64_t ControlSelection.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ControlSelection.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ControlSelection.label.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ControlSelection.label.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

id ControlSelection.systemImage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_1C2CF836C(v2, v3, v4);
}

void ControlSelection.systemImage.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  sub_1C2C9E060(*(v1 + 32), *(v1 + 40), *(v1 + 48));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
}

uint64_t ControlSelection.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *(v1 + 48);
  sub_1C2E75CC4();
  sub_1C2E75CC4();
  if (v4 == 255)
  {
    return sub_1C2E76874();
  }

  sub_1C2E76874();
  if (v4)
  {
    if (v4 == 1)
    {
      sub_1C2C70B1C(v3, v2, 1u);
    }

    else
    {
      sub_1C2C70B1C(v3, v2, 2u);
      v6 = [v3 description];
      sub_1C2E75C64();

      sub_1C2C9E060(v3, v2, 2u);
    }
  }

  else
  {
    sub_1C2C70B1C(v3, v2, 0);
  }

  sub_1C2E75CC4();
}

uint64_t ControlSelection.hashValue.getter()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_1C2E76854();
  sub_1C2E75CC4();
  sub_1C2E75CC4();
  if (v3 != 255)
  {
    sub_1C2E76874();
    if (v3)
    {
      if (v3 != 1)
      {
        sub_1C2C70B1C(v2, v1, 2u);
        v5 = [v2 description];
        sub_1C2E75C64();

        sub_1C2C9E060(v2, v1, 2u);
        goto LABEL_9;
      }

      v4 = 1;
    }

    else
    {
      v4 = 0;
    }

    sub_1C2C70B1C(v2, v1, v4);
LABEL_9:
    sub_1C2E75CC4();

    return sub_1C2E76894();
  }

  sub_1C2E76874();
  return sub_1C2E76894();
}

uint64_t sub_1C2D7CF7C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_1C2E76854();
  sub_1C2E75CC4();
  sub_1C2E75CC4();
  if (v3 != 255)
  {
    sub_1C2E76874();
    if (v3)
    {
      if (v3 != 1)
      {
        sub_1C2C70B1C(v2, v1, 2u);
        v5 = [v2 description];
        sub_1C2E75C64();

        sub_1C2C9E060(v2, v1, 2u);
        goto LABEL_9;
      }

      v4 = 1;
    }

    else
    {
      v4 = 0;
    }

    sub_1C2C70B1C(v2, v1, v4);
LABEL_9:
    sub_1C2E75CC4();

    return sub_1C2E76894();
  }

  sub_1C2E76874();
  return sub_1C2E76894();
}

uint64_t ControlButtonElement.SymbolElementConfiguration.init(systemName:scale:renderingMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for ControlButtonElement.SymbolElementConfiguration(0);
  v9 = *(v8 + 20);
  v10 = sub_1C2E750B4();
  (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  v11 = *(v8 + 24);
  v12 = sub_1C2E73DF4();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a5[v11], a4, v12);
}

uint64_t static ControlButtonElement.SymbolElementConfiguration.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1C2E767A4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ControlButtonElement.SymbolElementConfiguration(0);

  return sub_1C2E750A4();
}

uint64_t sub_1C2D7D200(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_1C2E767A4() & 1) == 0)
  {
    return 0;
  }

  return sub_1C2E750A4();
}

uint64_t ControlButtonBackgroundConfiguration.style.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1C2CC290C(v2, v3);
}

void ControlButtonBackgroundConfiguration.style.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_1C2CC2678(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t ControlButtonBackgroundConfiguration.highlightedBackgroundStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = *(v1 + 24);
  *(a1 + 8) = v3;
  return sub_1C2CC290C(v2, v3);
}

void ControlButtonBackgroundConfiguration.highlightedBackgroundStyle.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_1C2CC2678(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

uint64_t sub_1C2D7D374@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);
  sub_1C2E71A64();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C2D7D458()
{
  swift_getKeyPath();
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  return *(v0 + 16);
}

void sub_1C2D7D50C(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2D7D630(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 16) = a2;
  return result;
}

uint64_t (*sub_1C2D7D684(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2CF0F6C(v4);
  return sub_1C2D7D7BC;
}

uint64_t sub_1C2D7D7C8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v8 = v1;
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  *a1 = v3;
  v5 = *(v8 + 32);
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v6 = *(v8 + 48);
  *(a1 + 24) = v6;
  sub_1C2CC290C(v3, v5);
  return sub_1C2CC290C(v4, v6);
}

double sub_1C2D7D8AC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  swift_getKeyPath();
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);
  sub_1C2E71A54();
  sub_1C2CC2678(v1, v3);
  sub_1C2CC2678(v2, v4);

  return result;
}

double sub_1C2D7D9B4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  swift_beginAccess();
  v10 = *(a1 + 24);
  v11 = *(a1 + 40);
  *(a1 + 24) = a2;
  v12 = *(a1 + 32);
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  v13 = *(a1 + 48);
  *(a1 + 48) = a5;
  sub_1C2CC290C(a2, a3);
  sub_1C2CC290C(a4, a5);
  sub_1C2CC2678(v10, v12);
  return sub_1C2CC2678(v11, v13);
}

uint64_t (*sub_1C2D7DA70(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2CF1434(v4);
  return sub_1C2D7DBA8;
}

uint64_t sub_1C2D7DC14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__element;
  swift_beginAccess();
  return sub_1C2D8646C(v3 + v4, a2, type metadata accessor for ControlButtonElement);
}

uint64_t sub_1C2D7DCF0(uint64_t a1)
{
  v2 = type metadata accessor for ControlButtonElement(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2D8646C(a1, v4, type metadata accessor for ControlButtonElement);
  return sub_1C2D7DE6C(v4);
}

uint64_t sub_1C2D7DD90@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v3 = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__element;
  swift_beginAccess();
  return sub_1C2D8646C(v5 + v3, a1, type metadata accessor for ControlButtonElement);
}

uint64_t sub_1C2D7DE6C(uint64_t a1)
{
  v3 = type metadata accessor for ControlButtonElement(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__element;
  swift_beginAccess();
  sub_1C2D8646C(v1 + v6, v5, type metadata accessor for ControlButtonElement);
  v7 = _s16CommunicationsUI20ControlButtonElementO2eeoiySbAC_ACtFZ_0(v5, a1);
  sub_1C2D86C58(v5, type metadata accessor for ControlButtonElement);
  if (v7)
  {
    sub_1C2D8646C(a1, v5, type metadata accessor for ControlButtonElement);
    swift_beginAccess();
    sub_1C2D85EFC(v5, v1 + v6);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);
    sub_1C2E71A54();
  }

  return sub_1C2D86C58(a1, type metadata accessor for ControlButtonElement);
}

uint64_t sub_1C2D7E07C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlButtonElement(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2D8646C(a2, v6, type metadata accessor for ControlButtonElement);
  v7 = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__element;
  swift_beginAccess();
  sub_1C2D85EFC(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t (*sub_1C2D7E14C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2D7DBB4(v4);
  return sub_1C2D7E284;
}

uint64_t sub_1C2D7E2F0()
{
  swift_getKeyPath();
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
}

double sub_1C2D7E3B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__elementColor;
  swift_beginAccess();

  v4 = sub_1C2E74ED4();

  if (v4)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);
    sub_1C2E71A54();
  }

  return result;
}