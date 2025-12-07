double sub_1CFC6CF60@<D0>(uint64_t a1@<X8>)
{
  sub_1CFBB4460();

  v2 = sub_1CFC9EDF8();
  v4 = v3;
  v6 = v5;
  sub_1CFC9EC48();
  v7 = sub_1CFC9EDC8();
  v9 = v8;
  v11 = v10;

  sub_1CFBB44C0(v2, v4, v6 & 1);

  sub_1CFC9EC78();
  v12 = sub_1CFC9ED38();
  v14 = v13;
  LOBYTE(v2) = v15;
  sub_1CFBB44C0(v7, v9, v11 & 1);

  sub_1CFC9F178();
  v16 = sub_1CFC9ED58();
  v37 = v17;
  v38 = v16;
  v36 = v18;
  v39 = v19;

  sub_1CFBB44C0(v12, v14, v2 & 1);

  type metadata accessor for VoicemailCustomBannerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
  sub_1CFC9F408();
  swift_getKeyPath();
  sub_1CFC6EBF4(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel, &protocol conformance descriptor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();

  v20 = sub_1CFC9EDF8();
  v22 = v21;
  LOBYTE(v4) = v23;
  sub_1CFC9EC58();
  v24 = sub_1CFC9EDC8();
  v26 = v25;
  v28 = v27;

  sub_1CFBB44C0(v20, v22, v4 & 1);

  sub_1CFC9F188();
  v29 = sub_1CFC9ED58();
  v31 = v30;
  LOBYTE(v14) = v32;
  v34 = v33;

  sub_1CFBB44C0(v24, v26, v28 & 1);

  *a1 = v38;
  *(a1 + 8) = v37;
  *(a1 + 16) = v36 & 1;
  *(a1 + 24) = v39;
  *(a1 + 32) = v29;
  *(a1 + 40) = v31;
  *(a1 + 48) = v14 & 1;
  *(a1 + 56) = v34;
  sub_1CFBB45F4(v38, v37, v36 & 1);

  sub_1CFBB45F4(v29, v31, v14 & 1);

  sub_1CFBB44C0(v29, v31, v14 & 1);

  sub_1CFBB44C0(v38, v37, v36 & 1);

  return result;
}

uint64_t sub_1CFC6D2D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for VoicemailCustomBannerView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFBF8, &qword_1CFCA7F60);
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v41 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = v36 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFC00, &qword_1CFCA7F68);
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = a1;
  v45 = v36 - v13;
  sub_1CFC9F3E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
  sub_1CFC9F408();
  v14 = v48;
  swift_getKeyPath();
  v48 = v14;
  sub_1CFC6EBF4(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel, &protocol conformance descriptor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();

  v15 = *(v14 + 5);

  v16 = *(v15 + 16);
  if (!v16)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v36[0] = v4;
  v36[1] = v5;
  v37 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CFC7B7FC(v16, 0);
  v18 = sub_1CFC6EC44(&v48, v17 + 4, v16, v15);
  v19 = v48;

  sub_1CFC4CEA4(v19);
  if (v18 == v16)
  {
    v6 = v37;
    v4 = v36[0];
LABEL_5:
    v48 = v17;
    sub_1CFC6E070(&v48);

    swift_getKeyPath();
    sub_1CFC6EAB0(a1, v6);
    v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    sub_1CFC6EB14(v6, v21 + v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0F0, &unk_1CFCA2000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED838, &qword_1CFCA7FC0);
    sub_1CFBA57C0(&qword_1EC4EFC08, &qword_1EC4ED0F0, &unk_1CFCA2000, MEMORY[0x1E69E6338]);
    sub_1CFBA57C0(&qword_1EC4ED8C0, &qword_1EC4ED838, &qword_1CFCA7FC0, MEMORY[0x1E697D680]);
    v22 = v46;
    sub_1CFC9F3B8();
    v24 = v38;
    v23 = v39;
    v25 = *(v38 + 16);
    v26 = v40;
    v25(v39, v45, v40);
    v28 = v41;
    v27 = v42;
    v37 = *(v42 + 16);
    v29 = v22;
    v30 = v43;
    (v37)(v41, v29, v43);
    v31 = v44;
    v25(v44, v23, v26);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFC10, &unk_1CFCA7FC8);
    (v37)(&v31[*(v32 + 48)], v28, v30);
    v33 = *(v27 + 8);
    v33(v46, v30);
    v34 = *(v24 + 8);
    v34(v45, v26);
    v33(v28, v30);
    return (v34)(v23, v26);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1CFC6D8AC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for VoicemailCustomBannerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
  sub_1CFC9F408();
  swift_getKeyPath();
  sub_1CFC6EBF4(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel, &protocol conformance descriptor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();

  sub_1CFBB4460();
  sub_1CFC9FED8();

  result = sub_1CFC9EDF8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1CFC6D9F0(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for VoicemailCustomBannerView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = *a1;
  v7 = a1[1];
  sub_1CFC6EAB0(a2, &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_1CFC6EB14(&v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  v11 = (v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v11 = v8;
  v11[1] = v7;
  v14 = v8;
  v15 = v7;
  v16 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED840, &qword_1CFCA29B0);
  sub_1CFBA57C0(&qword_1EE04D200, &qword_1EC4ED840, &qword_1CFCA29B0, MEMORY[0x1E697D658]);
  return sub_1CFC9F298();
}

uint64_t sub_1CFC6DB94(uint64_t a1, uint64_t a2)
{
  type metadata accessor for VoicemailCustomBannerView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
  sub_1CFC9F408();
  swift_getKeyPath();
  sub_1CFC6EBF4(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel, &protocol conformance descriptor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();

  v4 = *(v7 + 40);

  if (*(v4 + 16))
  {
    sub_1CFC94B54(a1, a2);
    if (v5)
    {
    }
  }

  sub_1CFBB4460();
  return sub_1CFC9F218();
}

uint64_t sub_1CFC6DCF8(uint64_t a1)
{
  sub_1CFC9F568();
  sub_1CFC9E018();
}

uint64_t sub_1CFC6DD64()
{
  type metadata accessor for VoicemailCustomBannerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
  sub_1CFC9F408();
  if (*(v2 + 48) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC6EBF4(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel, &protocol conformance descriptor for VoicemailSmartActionsBannerViewModel);
    sub_1CFC9C148();
  }

  else
  {
    *(v2 + 48) = 0;
  }
}

uint64_t sub_1CFC6DEC0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1CFC9F1A8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFC6DF0C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1CFC9E588();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFB70, &qword_1CFCA7E10);
  sub_1CFC6C360(v2, a2 + *(v4 + 44));
  v5 = sub_1CFC9EBB8();
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFB78, &qword_1CFCA7E18) + 36);
  *v6 = v5;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFB80, &qword_1CFCA7E20) + 36);
  sub_1CFC9F4C8();
  v8 = sub_1CFC9EBB8();
  *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFB88, &qword_1CFCA7E28) + 36)) = v8;
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFB90, &qword_1CFCA7E30) + 36);
  v10 = *MEMORY[0x1E697F468];
  v11 = sub_1CFC9E608();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFB98, &unk_1CFCA7E38);
  *(v9 + *(result + 36)) = 256;
  return result;
}

void sub_1CFC6E070(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1CFC7B8A8(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1CFC6E0DC(v4);
  *a1 = v2;
}

void sub_1CFC6E0DC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1CFCA0278();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1CFC9F8E8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1CFC6E2A4(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1CFC6E1D4(0, v2, 1, a1);
  }
}

uint64_t sub_1CFC6E1D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1CFCA02B8(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1CFC6E2A4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_1CFC7E7DC(v8);
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1CFC6E880((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_1CFCA02B8();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (v14[1] == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ sub_1CFCA02B8()))
          {
            goto LABEL_23;
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1CFBB2454(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_1CFBB2454((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          __break(1u);
LABEL_122:
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
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
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
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1CFC6E880((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1CFC7E7DC(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_1CFBB26AC(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (sub_1CFCA02B8() & 1) == 0)
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_1CFC6E880(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1CFCA02B8() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1CFCA02B8() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1CFC6EAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoicemailCustomBannerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC6EB14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoicemailCustomBannerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC6EB78()
{
  v1 = *(type metadata accessor for VoicemailCustomBannerView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1CFC6DCF8(v2);
}

uint64_t sub_1CFC6EBF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1CFC6EC44(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_6()
{
  v1 = (type metadata accessor for VoicemailCustomBannerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CFC6EE90(uint64_t *a1)
{
  v3 = *(type metadata accessor for VoicemailCustomBannerView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1CFC6D9F0(a1, v4);
}

uint64_t sub_1CFC6EF10()
{
  v1 = *(type metadata accessor for VoicemailCustomBannerView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return (*(v0 + v2))(*(v0 + v3), *(v0 + v3 + 8));
}

unint64_t sub_1CFC6EFB0()
{
  result = qword_1EC4EFC18;
  if (!qword_1EC4EFC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EFB90, &qword_1CFCA7E30);
    sub_1CFC6F068();
    sub_1CFBA57C0(&qword_1EC4EFC48, &qword_1EC4EFB98, &unk_1CFCA7E38, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EFC18);
  }

  return result;
}

unint64_t sub_1CFC6F068()
{
  result = qword_1EC4EFC20;
  if (!qword_1EC4EFC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EFB80, &qword_1CFCA7E20);
    sub_1CFC6F120();
    sub_1CFBA57C0(&qword_1EC4EFC40, &qword_1EC4EFB88, &qword_1CFCA7E28, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EFC20);
  }

  return result;
}

unint64_t sub_1CFC6F120()
{
  result = qword_1EC4EFC28;
  if (!qword_1EC4EFC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EFB78, &qword_1CFCA7E18);
    sub_1CFBA57C0(&qword_1EC4EFC30, &qword_1EC4EFC38, qword_1CFCA8000, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EFC28);
  }

  return result;
}

uint64_t sub_1CFC6F1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 192);
  if (*(v4 + v5))
  {
    v6 = *(v4 + v5);
  }

  else
  {
    v6 = sub_1CFC6F25C(v4, a1, a2, a3, a4);
    *(v4 + v5) = v6;
  }

  return v6;
}

uint64_t sub_1CFC6F25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1CFC6F538(*(a1 + 16));
  v7 = v6;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_1CFC9BE28();
  v12 = v11;

  swift_allocObject();
  swift_weakInit();
  type metadata accessor for SectionHeaderConfiguration(0);
  v13 = swift_allocObject();
  *(v13 + 49) = 0;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 512;

  sub_1CFC9C188();
  *(v13 + 16) = v5;
  *(v13 + 24) = v7;

  *(v13 + 32) = v10;
  *(v13 + 40) = v12;
  *(v13 + 48) = 1;
  if (*(v13 + 49) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC72428(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
    sub_1CFC9C148();
  }

  else
  {
    *(v13 + 49) = 0;
  }

  v15 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v15);
  sub_1CFC72428(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  sub_1CFC9C148();

  return v13;
}

uint64_t sub_1CFC6F538(char a1)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1CFC9BE28();

  return v3;
}

unsigned __int8 *sub_1CFC6F670(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    result[104] = (result[104] & 1) == 0;
    sub_1CFC70CE0();
    sub_1CFC6F1D8(&unk_1F4C6EC28, sub_1CFBFA988, sub_1CFC72470, sub_1CFBB2738);
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = sub_1CFC9BE28();
    v7 = v6;

    sub_1CFC861B8(v5, v7);

    v8 = *&v2[*(*v2 + 192)];
    v9 = v2[104];
    if (v9 == *(v8 + 49))
    {

      *(v8 + 49) = v9;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1CFC72428(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);

      sub_1CFC9C148();
    }
  }

  return result;
}

unsigned __int8 *sub_1CFC6F93C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    result[104] = (result[104] & 1) == 0;
    sub_1CFC70920();
    sub_1CFC6F1D8(&unk_1F4C6EC50, sub_1CFBFAC38, sub_1CFC72478, sub_1CFC72FBC);
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = sub_1CFC9BE28();
    v7 = v6;

    sub_1CFC861B8(v5, v7);

    v8 = *&v2[*(*v2 + 192)];
    v9 = v2[104];
    if (v9 == *(v8 + 49))
    {

      *(v8 + 49) = v9;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1CFC72428(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);

      sub_1CFC9C148();
    }
  }

  return result;
}

void *sub_1CFC6FC08(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFD90, &unk_1CFCA8280);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = MEMORY[0x1E69E7CC0];
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = v13;
  *(v4 + 48) = 0;
  v4[7] = v13;
  v4[11] = 0;
  v4[12] = 0;
  v4[10] = 0;
  *(v4 + 104) = 0;
  v4[14] = 5;
  *(v4 + *(*v4 + 192)) = 0;
  v14 = *(*v4 + 200);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE018, &unk_1CFCA4680);
  (*(*(v15 - 8) + 56))(v4 + v14, 1, 1, v15);
  *(v4 + 16) = a1;
  v4[8] = a2;
  v4[9] = a3;
  type metadata accessor for RecentsStyleListCell();
  sub_1CFBA2D80(0, &qword_1EC4EFC60, 0x1E69BDCF8);
  swift_retain_n();

  sub_1CFC9FB68();
  (*(v10 + 32))(v4 + *(*v4 + 184), v12, v9);
  if (v8 == 2)
  {
    type metadata accessor for PagedIDSFetcher(0);
    swift_allocObject();

    v17 = sub_1CFBFA9FC(v16);

    v4[12] = v17;
  }

  else
  {
  }

  return v4;
}

void *sub_1CFC6FE88(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE528, &qword_1CFCA4670);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = MEMORY[0x1E69E7CC0];
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = v13;
  *(v4 + 48) = 0;
  v4[7] = v13;
  v4[11] = 0;
  v4[12] = 0;
  v4[10] = 0;
  *(v4 + 104) = 0;
  v4[14] = 5;
  *(v4 + *(*v4 + 192)) = 0;
  v14 = *(*v4 + 200);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE018, &unk_1CFCA4680);
  (*(*(v15 - 8) + 56))(v4 + v14, 1, 1, v15);
  *(v4 + 16) = a1;
  v4[8] = a2;
  v4[9] = a3;
  type metadata accessor for RecentsStyleListCell();
  sub_1CFC9C448();
  swift_retain_n();

  sub_1CFC9FB68();
  (*(v10 + 32))(v4 + *(*v4 + 184), v12, v9);
  if (v8 == 2)
  {
    type metadata accessor for PagedIDSFetcher(0);
    swift_allocObject();

    v17 = sub_1CFBFA9FC(v16);

    v4[12] = v17;
  }

  else
  {
  }

  return v4;
}

uint64_t sub_1CFC700F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDA0, &unk_1CFCA8290);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v19 - v5;
  v7 = sub_1CFC9C4E8();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a1;
  v22 = 0uLL;
  swift_retain_n();
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF7C0, &qword_1CFCA78D8);
  sub_1CFC9F228();
  v12 = sub_1CFC9F178();
  v13 = v11;
  sub_1CFC9DCE8();
  v21 = v22;
  sub_1CFC9F228();

  v14 = v24;
  v15 = v23;
  *v6 = v13;
  *(v6 + 8) = v15;
  *(v6 + 3) = v14;
  *(v6 + 4) = v7;
  *(v6 + 5) = sub_1CFC72AC4;
  *(v6 + 6) = v8;
  *(v6 + 7) = sub_1CFC72ACC;
  *(v6 + 8) = v9;
  *(v6 + 9) = sub_1CFC72B14;
  *(v6 + 10) = v10;
  *(v6 + 11) = v12;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDB0, &unk_1CFCA82A0);
  sub_1CFC00A80();
  sub_1CFC00B68();
  v16 = v20;
  sub_1CFC9E798();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDD0, &unk_1CFCA82B0);
  return (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
}

uint64_t sub_1CFC70380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDA0, &unk_1CFCA8290);
  MEMORY[0x1EEE9AC00](v59);
  v60 = v50 - v5;
  v6 = sub_1CFC9C448();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v54 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v50 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v50 - v13;
  v51 = type metadata accessor for RecentsItemCell(0);
  MEMORY[0x1EEE9AC00](v51);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v55 = v50 - v18;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDB0, &unk_1CFCA82A0);
  MEMORY[0x1EEE9AC00](v57);
  v53 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v56 = v50 - v22;
  v23 = *(v7 + 16);
  v23(v14, a1, v6, v21);
  v50[1] = a2;
  v52 = sub_1CFC9C4E8();
  (v23)(v11, a1, v6);
  v24 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  v58 = v7;
  v26 = v25 + v24;
  v27 = v6;
  v28 = v51;
  (*(v7 + 32))(v26, v11, v27);
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  *(v16 + 2) = swift_getKeyPath();
  v16[24] = 0;
  v29 = v28[6];
  *&v16[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDE0, &unk_1CFCA3E80);
  swift_storeEnumTagMultiPayload();
  (v23)(&v16[v28[7]], v14, v27);
  v30 = &v16[v28[8]];
  *v30 = sub_1CFC72B70;
  v30[1] = v25;

  v31 = sub_1CFC9C408();
  v32 = v31;
  if (v31)
  {
  }

  v33 = v32 == 0;
  v34 = &v16[v28[10]];
  v62 = v33;
  sub_1CFC9F228();
  v35 = v64;
  *v34 = v63;
  *(v34 + 1) = v35;
  v36 = v54;
  (v23)(v54, v14, v27);
  v37 = type metadata accessor for VoicemailResultCellState(0);
  swift_allocObject();
  v38 = v52;

  v39 = sub_1CFC954B0(v36, v38);

  v40 = &v16[v28[9]];
  v40[3] = v37;
  v40[4] = sub_1CFC72428(&qword_1EC4EE250, type metadata accessor for VoicemailResultCellState, &unk_1CFCA9774);

  *v40 = v39;
  (*(v58 + 8))(v14, v27);
  v41 = v55;
  sub_1CFC00438(v16, v55);
  KeyPath = swift_getKeyPath();
  v43 = v41;
  v44 = v53;
  sub_1CFC00438(v43, v53);
  v45 = v56;
  v46 = v44 + *(v57 + 36);
  *v46 = KeyPath;
  *(v46 + 8) = 0;
  sub_1CFC72BD4(v44, v45);
  sub_1CFC72C44(v45, v60);
  swift_storeEnumTagMultiPayload();
  sub_1CFC00A80();
  sub_1CFC00B68();
  v47 = v61;
  sub_1CFC9E798();
  sub_1CFBC2FB0(v45, &unk_1EC4EFDB0, &unk_1CFCA82A0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDD0, &unk_1CFCA82B0);
  return (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
}

uint64_t sub_1CFC70920()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFD10, &unk_1CFCA3AA8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v25 - v3;
  sub_1CFC9C548();
  v5 = sub_1CFC9C538();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1CFBC2FB0(v4, &unk_1EC4EFD10, &unk_1CFCA3AA8);
    v7 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    swift_getAtKeyPath();
    v7 = v25[0];
    (*(v6 + 8))(v4, v5);
  }

  v8 = sub_1CFC6F1D8(&unk_1F4C6EC50, sub_1CFBFAC38, sub_1CFC72478, sub_1CFC72FBC);
  v9 = *(v7 + 16);
  v10 = *(v1 + 112);
  if (((*(v8 + 72) ^ (v10 >= v9)) & 1) == 0)
  {
    *(v8 + 72) = v10 >= v9;

    if (*(v1 + 104))
    {
      goto LABEL_17;
    }

LABEL_8:
    v17 = sub_1CFC82D18(*(v1 + 112), v7);
    if (v16)
    {
      v19 = v16;
      v20 = v15;
      v21 = v14;
      sub_1CFCA02D8();
      swift_unknownObjectRetain_n();
      v22 = swift_dynamicCastClass();
      if (!v22)
      {
        swift_unknownObjectRelease();
        v22 = MEMORY[0x1E69E7CC0];
      }

      v23 = *(v22 + 16);

      if (__OFSUB__(v19 >> 1, v20))
      {
        __break(1u);
      }

      else if (v23 == (v19 >> 1) - v20)
      {
        v7 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v7)
        {
          goto LABEL_17;
        }

        v7 = MEMORY[0x1E69E7CC0];
        goto LABEL_16;
      }

      swift_unknownObjectRelease();
      v16 = v19;
      v15 = v20;
      v14 = v21;
    }

    sub_1CFC84830(v17, v14, v15, v16);
    v7 = v18;
LABEL_16:
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v11 = v10 >= v9;
  v12 = v8;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v25[-2] = v12;
  LOBYTE(v25[-1]) = v11;
  v25[0] = v12;
  sub_1CFC72428(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  sub_1CFC9C148();

  if ((*(v1 + 104) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_17:
  *(v1 + 40) = v7;

  result = swift_beginAccess();
  if (*(v1 + 24))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    SectionControllerParent.sectionItemsDidChange()();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CFC70CE0()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFD10, &unk_1CFCA3AA8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v30 - v4;
  sub_1CFC9C548();
  v6 = sub_1CFC9C538();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1CFBC2FB0(v5, &unk_1EC4EFD10, &unk_1CFCA3AA8);
    v8 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    swift_getAtKeyPath();
    v8 = v30[0];
    (*(v7 + 8))(v5, v6);
  }

  v9 = v2;
  v10 = sub_1CFC6F1D8(&unk_1F4C6EC28, sub_1CFBFA988, sub_1CFC72470, sub_1CFBB2738);
  v11 = v8 >> 62;
  if (v8 >> 62)
  {
    v9 = v10;
    v12 = sub_1CFC9FFD8();
    v10 = v9;
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = *(v2 + 112);
  if (((*(v10 + 72) ^ (v13 >= v12)) & 1) == 0)
  {
    *(v10 + 72) = v13 >= v12;

    if (*(v2 + 104))
    {
      goto LABEL_50;
    }

LABEL_10:
    v17 = *(v2 + 112);
    if (v17 < 0)
    {
      __break(1u);
    }

    else
    {
      if (v11)
      {
        if (v8 < 0)
        {
          v9 = v8;
        }

        else
        {
          v9 = v8 & 0xFFFFFFFFFFFFFF8;
        }

        v5 = sub_1CFC9FFD8();
        if (sub_1CFC9FFD8() < 0)
        {
          goto LABEL_56;
        }

        if (v5 >= v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = v5;
        }

        if (v5 < 0)
        {
          v20 = v17;
        }

        if (v17)
        {
          KeyPath = v20;
        }

        else
        {
          KeyPath = 0;
        }

        v18 = sub_1CFC9FFD8();
      }

      else
      {
        v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18 >= v17)
        {
          v19 = *(v2 + 112);
        }

        else
        {
          v19 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v17)
        {
          KeyPath = v19;
        }

        else
        {
          KeyPath = 0;
        }
      }

      if (v18 >= KeyPath)
      {
        if ((v8 & 0xC000000000000001) != 0 && KeyPath)
        {
          sub_1CFBA2D80(0, &qword_1EC4EFC60, 0x1E69BDCF8);

          v21 = 0;
          do
          {
            v22 = v21 + 1;
            sub_1CFCA00F8();
            v21 = v22;
          }

          while (KeyPath != v22);
        }

        else
        {
        }

        if (v11)
        {
          v9 = sub_1CFCA0208();
          v17 = v23;
          v5 = v24;
          KeyPath = v25;

          if (KeyPath)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v5 = 0;
          v9 = v8 & 0xFFFFFFFFFFFFFF8;
          v17 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
          KeyPath = (2 * KeyPath) | 1;
          if (KeyPath)
          {
LABEL_43:
            sub_1CFCA02D8();
            swift_unknownObjectRetain_n();
            v27 = swift_dynamicCastClass();
            if (!v27)
            {
              swift_unknownObjectRelease();
              v27 = MEMORY[0x1E69E7CC0];
            }

            v28 = *(v27 + 16);

            if (!__OFSUB__(KeyPath >> 1, v5))
            {
              if (v28 == (KeyPath >> 1) - v5)
              {
                v8 = swift_dynamicCastClass();
                swift_unknownObjectRelease_n();
                if (v8)
                {
                  goto LABEL_50;
                }

                v8 = MEMORY[0x1E69E7CC0];
                goto LABEL_49;
              }

              goto LABEL_58;
            }

LABEL_57:
            __break(1u);
LABEL_58:
            swift_unknownObjectRelease_n();
          }
        }

        sub_1CFC84720(v9, v17, v5, KeyPath);
        v8 = v26;
LABEL_49:
        swift_unknownObjectRelease();
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v14 = v13 >= v12;
  v15 = v10;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v30[-2] = v15;
  LOBYTE(v30[-1]) = v14;
  v16 = OBJC_IVAR____TtC10CallsAppUI26SectionHeaderConfiguration___observationRegistrar;
  v30[0] = v15;
  sub_1CFC72428(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  v9 = v15 + v16;
  v5 = 0;
  sub_1CFC9C148();

  if ((*(v2 + 104) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_50:
  *(v2 + 40) = v8;

  result = swift_beginAccess();
  if (*(v2 + 24))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    SectionControllerParent.sectionItemsDidChange()();
    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_1CFC711E8(void *a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1CFC9FFD8())
  {
    sub_1CFC72480(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_cancellables) = v4;
  sub_1CFC9C568();
  swift_allocObject();
  v37 = a1;
  v5 = sub_1CFC9C4D8();
  v6 = OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_searchManager;
  *(v2 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_searchManager) = v5;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFD50, &qword_1CFCA81F8);
  swift_allocObject();

  v8 = sub_1CFC6FE88(0, v5, KeyPath);
  v9 = OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_callsSection;
  *(v2 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_callsSection) = v8;
  v10 = *(v2 + v6);
  v11 = swift_getKeyPath();
  swift_allocObject();

  v12 = sub_1CFC6FE88(1u, v10, v11);
  v13 = OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_voicemailSection;
  *(v2 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_voicemailSection) = v12;
  v14 = *(v2 + v6);
  v15 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFD58, &unk_1CFCA8260);
  swift_allocObject();

  v16 = sub_1CFC6FC08(2u, v14, v15);
  *(v2 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_contactsSection) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFD60, &unk_1CFCA8700);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1CFCA4C30;
  v18 = *(v2 + v9);
  v19 = sub_1CFBA57C0(&qword_1EC4EFD68, &qword_1EC4EFD50, &qword_1CFCA81F8, &unk_1CFCA3A88);
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  *(v17 + 48) = *(v2 + v13);
  *(v17 + 56) = v19;
  v20 = sub_1CFBA57C0(&unk_1EC4EFD70, &qword_1EC4EFD58, &unk_1CFCA8260, &unk_1CFCA3A88);
  *(v17 + 64) = v16;
  *(v17 + 72) = v20;

  SectionnedCollectionViewController.init(sections:)(v17);
  v22 = v21;
  v23 = *&v21[OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_callsSection];
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = *(v23 + 80);
  v26 = *(v23 + 88);
  *(v23 + 80) = sub_1CFC72FD4;
  *(v23 + 88) = v24;
  v27 = v22;

  sub_1CFBABFA0(v25, v26);

  v28 = *&v27[OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_voicemailSection];
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = *(v28 + 80);
  v31 = *(v28 + 88);
  *(v28 + 80) = sub_1CFC72A34;
  *(v28 + 88) = v29;

  sub_1CFBABFA0(v30, v31);

  v32 = *&v27[OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_contactsSection];
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = *(v32 + 80);
  v35 = *(v32 + 88);
  *(v32 + 80) = sub_1CFC72A50;
  *(v32 + 88) = v33;

  sub_1CFBABFA0(v34, v35);

  sub_1CFC9C4B8();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF890, &unk_1CFCA8270);
  sub_1CFBA57C0(&qword_1EC4EFD80, &qword_1EC4EF890, &unk_1CFCA8270, MEMORY[0x1E695BF88]);
  sub_1CFC9DDA8();

  swift_beginAccess();
  sub_1CFC9DC88();
  swift_endAccess();

  return v27;
}

void sub_1CFC716E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      sub_1CFC88EA4(a1);
      swift_unknownObjectRelease();
    }
  }
}

double sub_1CFC71778(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      v7 = [v2 contact];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1CFCA2540;
      *(v8 + 32) = v7;
      v9 = v7;
      sub_1CFC8C10C(v8, 0);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1CFC71874(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1CFC71A20();
  }
}

void sub_1CFC71A20()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1CFC72420;
  *(v3 + 24) = v2;
  v18 = sub_1CFBF63A4;
  v19 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1CFC63D88;
  v17 = &block_descriptor_13;
  v4 = _Block_copy(&aBlock);
  v0;

  [v1 performWithoutAnimation_];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    _s10CallsAppUI34SectionnedCollectionViewControllerC24sectionNeedsLayoutUpdate8animatedySb_tF_0(0);
    sub_1CFC9C4E8();
    sub_1CFC9DCE8();

    v6 = v15;
    if (!v15)
    {
      goto LABEL_10;
    }

    v7 = aBlock;

    v8 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v8 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (!v8)
    {
      goto LABEL_10;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1CFC68300();
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v10 = [objc_opt_self() bundleForClass_];
      v11 = sub_1CFC9BE28();
      v13 = v12;

      sub_1CFC5F074(v11, v13);

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_10:
    }
  }
}

uint64_t sub_1CFC71CD4()
{
  sub_1CFC70920();
  sub_1CFC70920();
  return sub_1CFC70CE0();
}

double sub_1CFC71D54()
{
  sub_1CFBA79B8(v0 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_delegate);

  return result;
}

id sub_1CFC71DD4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchResultsViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1CFC71E94(void *a1)
{
  sub_1CFBC5F74(0);
  v2 = [a1 searchBar];
  v3 = [v2 text];

  if (v3)
  {
    v4 = sub_1CFC9F768();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = [a1 searchBar];
  v8 = [v7 searchTextField];

  v9 = [v8 tokens];
  sub_1CFBA2D80(0, &qword_1EC4EFD08, 0x1E69DCF30);
  v10 = sub_1CFC9F8A8();

  if (!v6)
  {
    goto LABEL_10;
  }

  v11 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v11 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    goto LABEL_10;
  }

  if (v10 >> 62)
  {
    if (sub_1CFC9FFD8())
    {
      goto LABEL_10;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    sub_1CFC9C498();

    return;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1CFC68564();

    swift_unknownObjectRelease();
  }
}

uint64_t MPContactSearchResult.valuesForHash.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFC50, &qword_1CFCA4600);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CFCA1DD0;
  [v0 contact];
  sub_1CFBA2D80(0, &unk_1EE04CED8, 0x1E695CD58);
  sub_1CFC72300(&qword_1EE04CED0, &unk_1EE04CED8, 0x1E695CD58, MEMORY[0x1E69E81B8]);
  sub_1CFCA0078();
  return v1;
}

uint64_t sub_1CFC721CC()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFC50, &qword_1CFCA4600);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CFCA1DD0;
  [v1 contact];
  sub_1CFBA2D80(0, &unk_1EE04CED8, 0x1E695CD58);
  sub_1CFC72300(&qword_1EE04CED0, &unk_1EE04CED8, 0x1E695CD58, MEMORY[0x1E69E81B8]);
  sub_1CFCA0078();
  return v2;
}

uint64_t sub_1CFC722AC(uint64_t a1)
{
  result = sub_1CFC72300(&qword_1EC4EFC58, &qword_1EC4EFC60, 0x1E69BDCF8, MEMORY[0x1E69BDCE0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CFC72300(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1CFBA2D80(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFC723CC()
{
  result = qword_1EC4EFD00;
  if (!qword_1EC4EFD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EFD00);
  }

  return result;
}

uint64_t sub_1CFC72428(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1CFC72480(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1CFC9FFD8())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFD20, &qword_1CFCA81B8);
      v3 = sub_1CFCA00B8();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1CFC9FFD8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    v8 = MEMORY[0x1D3872640](v6, v1);
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_1CFC9DC98();
    sub_1CFC72428(&qword_1EC4EFD28, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    v10 = sub_1CFC9F6B8();
    v11 = -1 << *(v3 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1CFC72428(&qword_1EC4EFD30, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
      do
      {
        if (sub_1CFC9F6F8())
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1CFC72714(uint64_t a1)
{
  v2 = sub_1CFC9C068();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFD38, &qword_1CFCA81C0);
    v9 = sub_1CFCA00B8();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1CFC72428(&qword_1EC4EFD40, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v16 = sub_1CFC9F6B8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1CFC72428(&qword_1EC4EFD48, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v23 = sub_1CFC9F6F8();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t objectdestroy_80Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFC72B70()
{
  v1 = *(sub_1CFC9C448() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1CFBF86A4(v2, v3);
}

uint64_t sub_1CFC72BD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDB0, &unk_1CFCA82A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC72C44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDB0, &unk_1CFCA82A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1CFC72CB4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1CFC9FFD8())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDF0, &qword_1CFCA8348);
      v3 = sub_1CFCA00B8();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1CFC9FFD8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x1D3872640](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1CFC9FDD8();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1CFBA2D80(0, &qword_1EE04CF00, 0x1E69D8C00);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1CFC9FDE8();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_1CFC9FDD8();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1CFBA2D80(0, &qword_1EE04CF00, 0x1E69D8C00);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1CFC9FDE8();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1CFC72FD8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1CFC730AC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFC73114()
{
  result = qword_1EE04D6A0;
  if (!qword_1EE04D6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED0B8, &unk_1CFCA49D0);
    sub_1CFBB240C(&qword_1EE04D6B0, MEMORY[0x1E69936F0], MEMORY[0x1E69936F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D6A0);
  }

  return result;
}

void sub_1CFC731C8(uint64_t a1, int a2, uint64_t a3)
{
  v120 = a3;
  v118 = a2;
  v119 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D8, &qword_1CFCA4220);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v117[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v117[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v117[-v10];
  v12 = sub_1CFC9CEA8();
  v123 = *(v12 - 8);
  v124 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v122 = &v117[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1CFC9C448();
  v137 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v117[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v18 = [v17 junkFilteringEnabled];

  if (v18)
  {
    LODWORD(v136) = [objc_opt_self() isFilterAsNewCallersEnabledForPhone];
  }

  else
  {
    LODWORD(v136) = 0;
  }

  v19 = sub_1CFC9C7B8();
  v20 = v19;
  v135 = *(v19 + 16);
  if (v135)
  {
    v139 = 0;
    v125 = 0;
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v21 = 0;
    v134 = v137 + 16;
    v22 = *MEMORY[0x1E69935E0];
    v132 = v11;
    v133 = v22;
    v129 = (v137 + 8);
    v130 = v19;
    v138 = v5;
    v131 = v14;
    while (1)
    {
      if (v21 >= *(v20 + 16))
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        return;
      }

      (*(v137 + 16))(v16, v20 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v21, v14);
      if (v136)
      {
        sub_1CFC9C418();
        v23 = sub_1CFC9CC18();
        v24 = *(v23 - 8);
        if ((*(v24 + 48))(v11, 1, v23) == 1)
        {
          sub_1CFBC2FB0(v11, &qword_1EC4ED0D8, &qword_1CFCA4220);
        }

        else
        {
          v25 = sub_1CFC9CBE8();
          (*(v24 + 8))(v11, v23);
          if ((v25 & 1) == 0)
          {
            sub_1CFC9C668();
            v44 = sub_1CFC9C658();
            v26 = sub_1CFC9C628();

            goto LABEL_14;
          }
        }
      }

      v26 = 0;
LABEL_14:
      v27 = sub_1CFC9C308();
      if (!v27 || (v28 = v27, v29 = [v27 serviceProvider], v28, !v29))
      {
        sub_1CFC9F768();
LABEL_21:

        goto LABEL_22;
      }

      v30 = sub_1CFC9F768();
      v32 = v31;

      v33 = sub_1CFC9F768();
      if (!v32)
      {
        goto LABEL_21;
      }

      if (v30 == v33 && v32 == v34)
      {

LABEL_23:
        if (__OFADD__(v139, 1))
        {
          goto LABEL_65;
        }

        ++v139;
        goto LABEL_25;
      }

      v45 = sub_1CFCA02B8();

      if (v45)
      {
        goto LABEL_23;
      }

LABEL_22:
      if (sub_1CFC9C358())
      {
        goto LABEL_23;
      }

LABEL_25:
      sub_1CFC9C418();
      v35 = sub_1CFC9CC18();
      v36 = *(v35 - 8);
      v37 = *(v36 + 48);
      v38 = v37(v8, 1, v35);
      v39 = v138;
      if (v38 == 1)
      {
        sub_1CFBC2FB0(v8, &qword_1EC4ED0D8, &qword_1CFCA4220);
      }

      else
      {
        v40 = sub_1CFC9CBF8();
        (*(v36 + 8))(v8, v35);
        if (v40)
        {
          v41 = sub_1CFC9C308();
          if (v41)
          {
            v42 = v41;
            v43 = [v41 read];

            if ((v43 | v26))
            {
              v39 = v138;
            }

            else
            {
              v39 = v138;
              if (__OFADD__(v125, 1))
              {
                goto LABEL_69;
              }

              ++v125;
            }
          }
        }
      }

      v46 = sub_1CFC9C408();
      if (v46)
      {
        v47 = v46;
        v48 = sub_1CFC9D658();

        if ((v48 & 1) == 0)
        {
          v49 = sub_1CFC9C408();
          if (v49)
          {
            v50 = v49;
            sub_1CFC9D5B8();

            LODWORD(v50) = sub_1CFC9D758();
            if (v50 == sub_1CFC9D758() && __OFADD__(v126++, 1))
            {
              goto LABEL_67;
            }
          }
        }
      }

      v52 = sub_1CFC9C408();
      if (v52)
      {
        v53 = v52;
        sub_1CFC9D5E8();

        LODWORD(v53) = sub_1CFC9D6B8();
        if (v53 == sub_1CFC9D6B8())
        {
          v54 = sub_1CFC9C408();
          if (v54)
          {
            v55 = v54;
            v56 = sub_1CFC9D658();

            if ((v56 & 1) == 0)
            {
              if (__OFADD__(v127, 1))
              {
                goto LABEL_68;
              }

              ++v127;
            }
          }
        }
      }

      sub_1CFC9C418();
      if (v37(v39, 1, v35) == 1)
      {
        sub_1CFBC2FB0(v39, &qword_1EC4ED0D8, &qword_1CFCA4220);
        v14 = v131;
        v11 = v132;
        v20 = v130;
      }

      else
      {
        v57 = sub_1CFC9CBE8();
        (*(v36 + 8))(v39, v35);
        v20 = v130;
        v14 = v131;
        if (v57)
        {
          v11 = v132;
          if (__OFADD__(v128, 1))
          {
            goto LABEL_66;
          }

          ++v128;
        }

        else
        {
          v11 = v132;
        }
      }

      ++v21;
      (*v129)(v16, v14);
      if (v135 == v21)
      {

        if ((v118 & 1) == 0)
        {
          v64 = v126;
          goto LABEL_59;
        }

        if (!v126)
        {
          goto LABEL_57;
        }

        v58 = sub_1CFC747B0();
        sub_1CFBA2D80(0, &qword_1EE04CF08, 0x1E696AD98);
        v59 = sub_1CFC9FDC8();
        v60 = [v58 stringFromNumber_];

        if (v60)
        {
          v61 = sub_1CFC9F768();
          v63 = v62;
        }

        else
        {
          v61 = 0;
          v63 = 0xE000000000000000;
        }

        v140 = v61;
        v141 = v63;

        MEMORY[0x1D3871D30](43, 0xE100000000000000);

        v72 = v141;
        v70 = v122;
        *v122 = v140;
        v70[1] = v72;
LABEL_62:
        v71 = MEMORY[0x1E6995A48];
        goto LABEL_63;
      }
    }
  }

  v127 = 0;
  v128 = 0;
  v125 = 0;
  v139 = 0;
  v64 = 0;
  if (v118)
  {
LABEL_57:
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v66 = [objc_opt_self() bundleForClass_];
    v67 = sub_1CFC9BE28();
    v69 = v68;

    v70 = v122;
    *v122 = v67;
    v70[1] = v69;
    goto LABEL_62;
  }

LABEL_59:
  v70 = v122;
  *v122 = v64;
  v71 = MEMORY[0x1E6995A40];
LABEL_63:
  v73 = *v71;
  v74 = v124;
  v135 = *(v123 + 104);
  v136 = v123 + 104;
  v135(v70, v73, v124);
  *(v121 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_mostRecentRequestsCount) = v120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFE98, &qword_1CFCA8710);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDA78, &qword_1CFCA2D20);
  v76 = *(*(v75 - 8) + 72);
  v77 = (*(*(v75 - 8) + 80) + 32) & ~*(*(v75 - 8) + 80);
  v130 = 8 * v76;
  v137 = v76;
  v78 = swift_allocObject();
  v131 = v78;
  *(v78 + 16) = xmmword_1CFCA8360;
  v79 = v78 + v77;
  v80 = *(v75 + 48);
  v81 = v75;
  v82 = *MEMORY[0x1E6995A70];
  v138 = sub_1CFC9CF08();
  v83 = *(v138 - 8);
  v84 = *(v83 + 104);
  v85 = (v83 + 104);
  v84(v79, v82, v138);
  v132 = v85;
  *(v79 + v80) = 0;
  v86 = *MEMORY[0x1E6995A40];
  v87 = v135;
  v135((v79 + v80), v86, v74);
  v88 = v79 + v76;
  v126 = v79;
  v89 = *(v81 + 48);
  v84(v88, *MEMORY[0x1E6995A88], v138);
  *(v88 + v89) = v139;
  LODWORD(v133) = v86;
  v87(v88 + v89, v86, v74);
  v90 = v87;
  v91 = v137;
  v92 = v79 + 2 * v137;
  v93 = v81;
  v94 = *(v81 + 48);
  v84(v92, *MEMORY[0x1E6995A78], v138);
  *(v92 + v94) = v125;
  v95 = v86;
  v96 = v124;
  v90(v92 + v94, v95, v124);
  v97 = v126;
  v98 = *(v93 + 48);
  v134 = v93;
  v99 = v138;
  v84(v126 + 3 * v91, *MEMORY[0x1E6995AA0], v138);
  (*(v123 + 16))(v97 + 3 * v91 + v98, v122, v96);
  v100 = v97 + 4 * v91;
  v101 = *(v93 + 48);
  v84(v100, *MEMORY[0x1E6995A98], v99);
  v129 = v84;
  *(v100 + v101) = v127;
  v102 = (v100 + v101);
  v103 = v96;
  v104 = v135;
  v135(v102, v133, v96);
  v105 = v137;
  v106 = v97 + 4 * v91 + v137;
  v107 = *(v134 + 48);
  v84(v106, *MEMORY[0x1E6995A68], v99);
  *(v106 + v107) = v128;
  v108 = v133;
  v104((v106 + v107), v133, v103);
  v109 = v97 + 6 * v105;
  v110 = v134;
  v111 = *(v134 + 48);
  v112 = v99;
  v113 = v129;
  v129(v109, *MEMORY[0x1E6995A80], v112);
  *(v109 + v111) = 0;
  v114 = v124;
  v104((v109 + v111), v108, v124);
  v115 = v97 + v130 - v137;
  v116 = *(v110 + 48);
  v113(v115, *MEMORY[0x1E6995A90], v138);
  *(v115 + v116) = v120;
  v104((v115 + v116), v108, v114);
  sub_1CFBE5C7C(v131);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1CFC9CE78();
  (*(v123 + 8))(v122, v114);
}

uint64_t sub_1CFC73EF4()
{
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v0 = sub_1CFC9D938();
  __swift_project_value_buffer(v0, qword_1EE052308);
  v1 = sub_1CFC9D918();
  v2 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1CFB9F000, v1, v2, "handleRequestsCacheUpdated", v3, 2u);
    MEMORY[0x1D3873280](v3, -1, -1);
  }

  return sub_1CFC76444();
}

uint64_t Sections.hashValue.getter()
{
  v1 = *v0;
  sub_1CFCA0338();
  MEMORY[0x1D3872880](v1);
  return sub_1CFCA0378();
}

uint64_t sub_1CFC74068(uint64_t result)
{
  v2 = v1;
  v3 = result & 1;
  v4 = *(v1 + 48);
  if (*(v4 + 16) == (result & 1))
  {
    *(v4 + 16) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB240C(&qword_1EE04FD50, type metadata accessor for RecentsEditMode, &unk_1CFCA419C);
    sub_1CFC9C148();
  }

  *(v2 + 40) = v3;
  return result;
}

uint64_t sub_1CFC7418C(uint64_t a1)
{
  v1 = sub_1CFC9C408();
  if (v1)
  {
    v2 = v1;
    v3 = sub_1CFC9D658();

    v4 = v3 ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_1CFC741D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_dataSource);

    sub_1CFC9C808();
  }
}

uint64_t sub_1CFC74260(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CFC78FE8(a1);
  }

  return result;
}

id sub_1CFC742C0()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___callReportingViewModel;
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___callReportingViewModel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___callReportingViewModel);
  }

  else
  {
    v4 = v0;
    if (sub_1CFC9C818())
    {
      sub_1CFC72300(&qword_1EC4EFE80, &qword_1EC4EFE88, 0x1E69BDD08, MEMORY[0x1E69937A0]);
    }

    v5 = objc_allocWithZone(sub_1CFC9CA48());
    v6 = sub_1CFC9C998();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_1CFC74394(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items;
  swift_beginAccess();
  *(v1 + v3) = a1;

  if (swift_unknownObjectWeakLoadStrong())
  {
    if (*(v1 + 64))
    {
      sub_1CFBA5878();
    }

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    SectionControllerParent.sectionItemsDidChange()();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CFC744A0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1CFC9C138();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFC9CF08();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_currentFilterMode;
  swift_beginAccess();
  (*(v8 + 16))(v10, v1 + v11, v7);
  sub_1CFBB240C(&qword_1EE04D668, MEMORY[0x1E6995AA8], MEMORY[0x1E6995AB8]);
  v12 = sub_1CFC9F6F8();
  result = (*(v8 + 8))(v10, v7);
  if ((v12 & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_headerConfiguration))
    {

      v14 = sub_1CFC77E6C();
      sub_1CFC85EFC(v14, v15);
    }

    MEMORY[0x1D386E620](0, 0);
    v16 = *(v2 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_numberOfCalls);
    v17 = sub_1CFC9C0F8();
    v18 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_callsIndex;
    swift_beginAccess();
    v19 = *(v2 + v18);
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = sub_1CFC94BCC(v17);
      if (v22)
      {
        v20 = *(*(v19 + 56) + 8 * v21);
      }

      else
      {
        v20 = 0;
      }
    }

    result = v16 - v20;
    if (__OFSUB__(v16, v20))
    {
      __break(1u);
    }

    else
    {
      sub_1CFC9C7C8();
      (*(v4 + 8))(v6, v3);
      sub_1CFC76444();
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v23 = *(v2 + 32);
        ObjectType = swift_getObjectType();
        (*(v23 + 16))(0, ObjectType, v23);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

id sub_1CFC747B0()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___numberFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___numberFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___numberFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_1CFC74824()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___remindMeActionConfigurator;
  if (*(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___remindMeActionConfigurator))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___remindMeActionConfigurator);
  }

  else
  {
    v3 = sub_1CFC9C878();
    type metadata accessor for RecentsRemindMeActionConfigurator(0);
    swift_allocObject();
    v2 = RecentsRemindMeActionConfigurator.init(recentsReminderActionProvider:)(v3);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1CFC748C0(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v36 = a3;
  v35 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE540, &qword_1CFCA4690);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v40 = &v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE528, &qword_1CFCA4670);
  v37 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - v10;
  v34 = sub_1CFC9CB88();
  v12 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 16) = 1;
  *(v4 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 40) = 0;
  *(v4 + 56) = 0;
  v15 = *(v9 + 56);
  v38 = v9 + 56;
  v39 = v15;
  v15(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_requestsCellRegistration, 1, 1, v8);
  sub_1CFC9F768();
  type metadata accessor for SectionHeaderView();
  sub_1CFC9FB88();
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_headerConfiguration) = 0;
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_contactActionsController) = 0;
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_classificationControllerDelegate) = 0;
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___callReportingViewModel) = 0;
  v16 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_requestsHandlerPresenter;
  v41 = 0u;
  v42 = 0u;
  v43 = 1;
  v17 = objc_allocWithZone(sub_1CFC9CAC8());
  *(v4 + v16) = sub_1CFC9CA98();
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_mostRecentRequestsCount) = 0;
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_updateCancellable) = 0;
  v18 = MEMORY[0x1E69E7CC0];
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items) = MEMORY[0x1E69E7CC0];
  sub_1CFC9CF08();
  sub_1CFC9CD28();
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___numberFormatter) = 0;
  v19 = (v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_needsHeader);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_featureFlags;
  *(v4 + v20) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___remindMeActionConfigurator) = 0;
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController__configurationProvider) = 0;
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_numberOfCalls) = 0;
  v21 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_callsIndex;
  *(v4 + v21) = sub_1CFBE5BA0(v18);
  v22 = a1;
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_dataSource) = a1;
  v23 = v35;
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_detailsPresenter) = v35;
  LOBYTE(v21) = v36 & 1;
  *(v4 + 64) = v36 & 1;
  v24 = *(v4 + v16);
  v25 = v22;

  v26 = v24;
  sub_1CFC9C7F8();
  sub_1CFC9CB68();
  (*(v12 + 8))(v14, v34);
  sub_1CFC9CA78();

  type metadata accessor for RecentsEditMode(0);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  sub_1CFC9C188();
  *(v4 + 48) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = v21;
  *(v28 + 24) = v23;
  *(v28 + 32) = v27;
  type metadata accessor for RecentsStyleListCell();
  sub_1CFC9C448();
  swift_retain_n();

  sub_1CFC9FB68();
  v29 = *(v9 + 32);
  v30 = v37;
  v29(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_cellRegistration, v11, v37);
  sub_1CFC9FB68();
  v29(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_junkCellRegistration, v11, v30);
  swift_allocObject();
  swift_weakInit();
  v31 = v40;
  sub_1CFC9FB68();

  v39(v31, 0, 1, v30);
  v32 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_requestsCellRegistration;
  swift_beginAccess();
  sub_1CFC7F41C(v31, v4 + v32);
  swift_endAccess();
  return v4;
}

uint64_t sub_1CFC74F48(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0B8, &unk_1CFCA49D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  if (a4)
  {
    sub_1CFC9C378();
  }

  else
  {
    v15 = sub_1CFC9C5A8();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  }

  v16 = sub_1CFC9F728();
  [a1 setAccessibilityIdentifier_];

  MEMORY[0x1EEE9AC00](v17);
  *(&v19 - 6) = a3;
  *(&v19 - 5) = v14;
  *(&v19 - 4) = a5;
  *(&v19 - 3) = a6;
  *(&v19 - 2) = a2;
  sub_1CFBFFF24(sub_1CFC7F494, (&v19 - 8));
  return sub_1CFBC2FB0(v14, &qword_1EC4ED0B8, &unk_1CFCA49D0);
}

uint64_t sub_1CFC750D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v80 = a5;
  v81 = a4;
  v89 = a2;
  v90 = a3;
  v91 = a1;
  v83 = a6;
  v6 = sub_1CFC9E968();
  v84 = *(v6 - 8);
  v85 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFC9C138();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0B8, &unk_1CFCA49D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v68 - v11;
  v13 = sub_1CFC9C448();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v68 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v68 - v20;
  v68 = &v68 - v20;
  v22 = type metadata accessor for RecentsItemCell(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v73 = &v68 - v26;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE200, &qword_1CFCA8720);
  v27 = MEMORY[0x1EEE9AC00](v88);
  v87 = &v68 - v28;
  v30 = v14 + 16;
  v29 = *(v14 + 16);
  v31 = v21;
  v32 = v91;
  v29(v31, v91, v13, v27);
  v72 = v12;
  sub_1CFBA29FC(v89, v12, &qword_1EC4ED0B8, &unk_1CFCA49D0);
  (v29)(v18, v32, v13);
  v33 = *(v14 + 80);
  v69 = ~v33;
  v75 = v15;
  v34 = swift_allocObject();
  *(v34 + 16) = v90;
  v35 = *(v14 + 32);
  v89 = v14 + 32;
  v86 = v35;
  v35((v34 + ((v33 + 24) & ~v33)), v18, v13);
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  *(v24 + 2) = swift_getKeyPath();
  v24[24] = 0;
  v36 = v22[6];
  *&v24[v36] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDE0, &unk_1CFCA3E80);
  swift_storeEnumTagMultiPayload();
  v37 = &v24[v22[7]];
  v38 = v13;
  v39 = v68;
  v71 = v30;
  v70 = v29;
  (v29)(v37);
  v40 = &v24[v22[8]];
  *v40 = sub_1CFC18310;
  v40[1] = v34;

  v41 = sub_1CFC9C408();
  v42 = v41;
  if (v41)
  {
  }

  v43 = v42 == 0;
  v44 = &v24[v22[10]];
  v92 = v43;
  sub_1CFC9F228();
  v45 = v94;
  *v44 = v93;
  *(v44 + 1) = v45;
  v46 = &v24[v22[9]];
  v47 = type metadata accessor for RecentsCellState(0);
  v46[3] = v47;
  v46[4] = sub_1CFBB240C(&unk_1EE04F9A8, type metadata accessor for RecentsCellState, &unk_1CFCA1F8C);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v46);
  v49 = v38;
  v86(boxed_opaque_existential_0Tm, v39, v38);
  *(boxed_opaque_existential_0Tm + *(v47 + 20)) = 1;
  sub_1CFBCCE88(v72, boxed_opaque_existential_0Tm + *(v47 + 24), &qword_1EC4ED0B8, &unk_1CFCA49D0);
  v50 = v73;
  sub_1CFC00438(v24, v73);
  KeyPath = swift_getKeyPath();
  v52 = v50;
  v53 = v87;
  sub_1CFC00438(v52, v87);
  v54 = (v53 + *(v88 + 36));
  v55 = v80;
  v56 = v81;
  *v54 = KeyPath;
  v54[1] = v56;
  v57 = v78;
  v58 = v79;
  v59 = v76;
  (*(v78 + 16))(v76, v55, v79);
  v60 = v74;
  v70(v74, v91, v49);
  v61 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v62 = (v77 + v33 + v61) & v69;
  v63 = swift_allocObject();
  v64 = v90;
  *(v63 + 16) = v56;
  *(v63 + 24) = v64;
  (*(v57 + 32))(v63 + v61, v59, v58);
  v86((v63 + v62), v60, v49);
  swift_retain_n();

  v65 = v82;
  sub_1CFC9E958();
  sub_1CFBB6E30();
  v66 = v87;
  sub_1CFC9EF98();

  (*(v84 + 8))(v65, v85);
  return sub_1CFBC2FB0(v66, &qword_1EC4EE200, &qword_1CFCA8720);
}

uint64_t sub_1CFC75814@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  swift_getKeyPath();
  sub_1CFBB240C(&qword_1EE04FD50, type metadata accessor for RecentsEditMode, &unk_1CFCA419C);
  sub_1CFC9C158();

  if ((*(a1 + 16) & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      type metadata accessor for SectionnedCollectionViewController();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = [v10 collectionView];
        if (v11)
        {
          v12 = v11;
          if ([v11 allowsSelection])
          {
            sub_1CFBC5F74(0);
            v13 = sub_1CFC9C0C8();
            [v12 selectItemAtIndexPath:v13 animated:1 scrollPosition:0];

            v9 = v12;
            v12 = v13;
          }

          v9 = v12;
        }
      }
    }

    v14 = objc_opt_self();
    v15 = [v14 shared];
    v16 = [v15 current];

    if (v16 || (v19 = sub_1CFC9C408()) == 0)
    {
      v17 = [v14 shared];
      v18 = [v17 tapRecentsToCall];

      if (v18)
      {
        sub_1CFC9C898();
LABEL_16:
        v7 = MEMORY[0x1E697C980];
        goto LABEL_17;
      }
    }

    else
    {
    }

    sub_1CFC88EA4(a3);
    goto LABEL_16;
  }

  *a4 = 0;
  v7 = MEMORY[0x1E697C978];
LABEL_17:
  v20 = *v7;
  v21 = sub_1CFC9E9D8();
  return (*(*(v21 - 8) + 104))(a4, v20, v21);
}

uint64_t sub_1CFC75A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFEA0, &qword_1CFCA8718);
  v4[4] = sub_1CFBA57C0(&qword_1EC4EFEA8, &qword_1EC4EFEA0, &qword_1CFCA8718, MEMORY[0x1E697C858]);
  __swift_allocate_boxed_opaque_existential_0Tm(v4);
  sub_1CFC9CD18();
  sub_1CFBB240C(&qword_1EC4EFEB0, MEMORY[0x1E69959A8], MEMORY[0x1E69959A0]);
  sub_1CFC9E938();
  return MEMORY[0x1D38721F0](v4);
}

uint64_t sub_1CFC75B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CFC9C448();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return sub_1CFBF708C(v7, a2);
}

uint64_t sub_1CFC75C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CFBFDCBC(a1, a3);
  }

  return result;
}

void sub_1CFC75CBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CFC9CF08();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v65 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v66 = v63 - v7;
  v8 = sub_1CFC9C138();
  v72 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v63 - v12;
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v14 = sub_1CFC9D938();
  v15 = __swift_project_value_buffer(v14, qword_1EE052308);

  v69 = v15;
  v16 = sub_1CFC9D918();
  v17 = sub_1CFC9FAF8();

  v18 = os_log_type_enabled(v16, v17);
  v70 = v10;
  if (v18)
  {
    v71 = a1;
    v19 = swift_slowAlloc();
    v20 = v2;
    v21 = swift_slowAlloc();
    v78[0] = v21;
    *v19 = 136315394;
    v77 = *(v20 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_numberOfCalls);
    v22 = sub_1CFCA0288();
    v24 = sub_1CFBB531C(v22, v23, v78);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v20 + 32);
      ObjectType = swift_getObjectType();
      v27 = (*(v25 + 40))(ObjectType, v25);
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0;
    }

    v77 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFE70, &qword_1CFCA86E0);
    v28 = sub_1CFC9F798();
    v30 = sub_1CFBB531C(v28, v29, v78);

    *(v19 + 14) = v30;
    _os_log_impl(&dword_1CFB9F000, v16, v17, "Updated numberOfCalls %s visible: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3873280](v21, -1, -1);
    MEMORY[0x1D3873280](v19, -1, -1);

    v2 = v20;
    a1 = v71;
  }

  else
  {
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_19;
  }

  v31 = *(v2 + 32);
  v32 = swift_getObjectType();
  v33 = (*(v31 + 40))(v32, v31);
  swift_unknownObjectRelease();
  v34 = *(v33 + 16);
  if (!v34)
  {

LABEL_19:
    v35 = 0;
    goto LABEL_20;
  }

  v71 = a1;
  v64 = v2;
  v35 = 0;
  v36 = *(v72 + 16);
  v37 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v63[1] = v33;
  v38 = v33 + v37;
  v39 = *(v72 + 72);
  v40 = (v72 + 8);
  v36(v13, v38, v8);
  while (1)
  {
    if (v35 < sub_1CFC9C0F8() && !sub_1CFC9C128())
    {
      v35 = sub_1CFC9C0F8();
    }

    (*v40)(v13, v8);
    v38 += v39;
    if (!--v34)
    {
      break;
    }

    v36(v13, v38, v8);
  }

  v2 = v64;
  a1 = v71;
LABEL_20:
  v41 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_numberOfCalls;
  v42 = *(v2 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_numberOfCalls);
  if (v42 >= a1)
  {
    if (v42 >= *(v2 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_mostRecentRequestsCount))
    {
      return;
    }

    v54 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_currentFilterMode;
    swift_beginAccess();
    v55 = v67;
    v56 = v2 + v54;
    v57 = v68;
    (*(v67 + 16))(v66, v56, v68);
    (*(v55 + 104))(v65, *MEMORY[0x1E6995A90], v57);
    sub_1CFBB240C(&qword_1EE04D660, MEMORY[0x1E6995AA8], MEMORY[0x1E6995AC0]);
    sub_1CFC9F878();
    sub_1CFC9F878();
    if (v73 == v75 && v74 == v76)
    {
      v58 = v68;
      v59 = *(v67 + 8);
      v59(v65, v68);
      v59(v66, v58);
    }

    else
    {
      v60 = sub_1CFCA02B8();
      v61 = v68;
      v62 = *(v67 + 8);
      v62(v65, v68);
      v62(v66, v61);

      if ((v60 & 1) == 0)
      {
        return;
      }
    }
  }

  v43 = sub_1CFC9D918();
  v44 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1CFB9F000, v43, v44, "numberOfCalls has decreased, or our list of loaded requests is less than the total request #, see if we need to load older calls", v45, 2u);
    MEMORY[0x1D3873280](v45, -1, -1);
  }

  v46 = v70;
  MEMORY[0x1D386E620](v35, 0);
  v47 = *(v2 + v41);
  v48 = sub_1CFC9C0F8();
  v49 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_callsIndex;
  swift_beginAccess();
  v50 = *(v2 + v49);
  v51 = *(v50 + 16);
  if (v51)
  {
    v52 = sub_1CFC94BCC(v48);
    if (v53)
    {
      v51 = *(*(v50 + 56) + 8 * v52);
    }

    else
    {
      v51 = 0;
    }
  }

  if (__OFSUB__(v47, v51))
  {
    __break(1u);
  }

  else
  {
    sub_1CFC9C7C8();
    (*(v72 + 8))(v46, v8);
  }
}

uint64_t sub_1CFC76444()
{
  v1 = v0;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFE60, &qword_1CFCA86D0);
  v82 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v96 = (&v81 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFE68, &qword_1CFCA86D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v104 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v81 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v81 - v9;
  v95 = sub_1CFC9CF08();
  v11 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = (&v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1CFC9C448();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v103 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v87 = &v81 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v81 - v19);
  v21 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_callsIndex;
  swift_beginAccess();
  v83 = v21;
  *(v1 + v21) = MEMORY[0x1E69E7CC8];

  v22 = sub_1CFC9C7B8();
  v23 = *(v22 + 16);
  v98 = v1;
  v93 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_currentFilterMode;
  swift_beginAccess();
  v102 = v7;
  v100 = v14;
  if (!v23)
  {
    v88 = MEMORY[0x1E69E7CC0];
    v26 = v103;
LABEL_21:

    v106[0] = v88;

    sub_1CFC7CB2C(v106);

    v94 = 0;
    v48 = 0;
    v95 = v14 + 16;
    v49 = (v82 + 56);
    v97 = v106[0];
    v50 = *(v106[0] + 16);
    v51 = (v82 + 48);
    v52 = v14;
    v53 = (v14 + 32);
    v54 = (v52 + 8);
    v20 = v101;
    v99 = v50;
    while (1)
    {
      while (1)
      {
        if (v48 == v50)
        {
          v55 = 1;
          v48 = v50;
        }

        else
        {
          if ((v48 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          if (v48 >= *(v97 + 16))
          {
            goto LABEL_47;
          }

          v56 = v100;
          v57 = v97 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v48;
          v58 = v20[12];
          v59 = v96;
          *v96 = v48;
          (*(v56 + 16))(v59 + v58, v57, v13);
          v7 = v102;
          sub_1CFBCCE88(v59, v104, &qword_1EC4EFE60, &qword_1CFCA86D0);
          v55 = 0;
          ++v48;
          v26 = v103;
        }

        v60 = v104;
        (*v49)(v104, v55, 1, v20);
        sub_1CFBCCE88(v60, v7, &qword_1EC4EFE68, &qword_1CFCA86D8);
        if ((*v51)(v7, 1, v20) == 1)
        {
          v79 = *(v98 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_numberOfCalls);
          *(v98 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_numberOfCalls) = v94;
          sub_1CFC75CBC(v79);
          return sub_1CFC74394(v97);
        }

        v61 = v20;
        v20 = *v7;
        (*v53)(v26, v7 + v61[12], v13);
        v62 = sub_1CFC9C308();
        if (v62)
        {
          break;
        }

        (*v54)(v26, v13);
        v20 = v101;
        v50 = v99;
      }

      v63 = v98;
      v64 = v83;
      swift_beginAccess();
      LODWORD(v93) = swift_isUniquelyReferenced_nonNull_native();
      v65 = v64;
      v66 = *(v63 + v64);
      v105 = v66;
      *(v63 + v65) = 0x8000000000000000;
      v68 = sub_1CFC94BCC(v20);
      v69 = v66[2];
      v70 = (v67 & 1) == 0;
      v71 = v69 + v70;
      if (__OFADD__(v69, v70))
      {
        goto LABEL_48;
      }

      v72 = v67;
      if (v66[3] >= v71)
      {
        v26 = v103;
        if (v93)
        {
          goto LABEL_36;
        }

        v93 = v68;
        sub_1CFC7BE58();
        v68 = v93;
      }

      else
      {
        sub_1CFC7C8C8(v71, v93);
        v73 = sub_1CFC94BCC(v20);
        if ((v72 & 1) != (v74 & 1))
        {
          goto LABEL_51;
        }

        v68 = v73;
      }

      v26 = v103;
LABEL_36:
      v75 = v105;
      if (v72)
      {
        v20 = v94;
        *(v105[7] + 8 * v68) = v94;
      }

      else
      {
        v105[(v68 >> 6) + 8] |= 1 << v68;
        *(v75[6] + 8 * v68) = v20;
        v20 = v94;
        *(v75[7] + 8 * v68) = v94;
        v76 = v75[2];
        v77 = __OFADD__(v76, 1);
        v78 = v76 + 1;
        if (v77)
        {
          goto LABEL_50;
        }

        v75[2] = v78;
      }

      *(v98 + v83) = v75;
      swift_endAccess();
      (*v54)(v26, v13);
      v77 = __OFADD__(v20, 1);
      v94 = (v20 + 1);
      v20 = v101;
      v50 = v99;
      if (v77)
      {
        goto LABEL_49;
      }
    }
  }

  v86 = v10;
  v24 = v11;
  v25 = 0;
  v99 = v14 + 16;
  v97 = v14 + 8;
  v90 = (v24 + 16);
  v89 = (v24 + 8);
  v85 = (v14 + 32);
  v88 = MEMORY[0x1E69E7CC0];
  v92 = v22;
  v91 = v13;
  while (v25 < *(v22 + 16))
  {
    v27 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v28 = *(v14 + 72);
    (*(v14 + 16))(v20, v22 + v27 + v28 * v25, v13);
    v29 = sub_1CFC9C408();
    if (v29 && (v30 = v29, sub_1CFC9D5B8(), v31 = sub_1CFC9D758(), v32 = sub_1CFC9D758(), v30, v33 = v31 == v32, v14 = v100, !v33) || *(v98 + 64) == 1 && (MEMORY[0x1D386E830]() & 1) == 0)
    {
      (*v97)(v20, v13);
      v26 = v103;
    }

    else
    {
      v34 = v23;
      v35 = v94;
      v36 = v95;
      (*v90)(v94, v98 + v93, v95);
      sub_1CFC9C668();
      v37 = sub_1CFC9C658();
      v38 = sub_1CFC76F10(v20, v37);

      (*v89)(v35, v36);
      if (v38)
      {
        v39 = v86;
        sub_1CFC9C3A8();
        v40 = sub_1CFC9BFB8();
        v23 = v34;
        if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
        {
          v13 = v91;
          (*v97)(v20, v91);
          sub_1CFBC2FB0(v39, &qword_1EC4ED0D0, &unk_1CFCA1FE0);
          v26 = v103;
          v22 = v92;
        }

        else
        {
          sub_1CFBC2FB0(v39, &qword_1EC4ED0D0, &unk_1CFCA1FE0);
          v42 = *v85;
          v13 = v91;
          (*v85)(v87, v20, v91);
          v43 = v88;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v106[0] = v43;
          v22 = v92;
          v84 = v42;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1CFBB22BC(0, *(v43 + 16) + 1, 1);
            v43 = v106[0];
          }

          v26 = v103;
          v46 = *(v43 + 16);
          v45 = *(v43 + 24);
          v47 = v43;
          if (v46 >= v45 >> 1)
          {
            sub_1CFBB22BC((v45 > 1), v46 + 1, 1);
            v26 = v103;
            v47 = v106[0];
          }

          *(v47 + 16) = v46 + 1;
          v88 = v47;
          v84(v47 + v27 + v46 * v28, v87, v13);
          v14 = v100;
        }
      }

      else
      {
        v41 = v91;
        (*v97)(v20, v91);
        v26 = v103;
        v22 = v92;
        v23 = v34;
        v13 = v41;
      }
    }

    ++v25;
    v7 = v102;
    if (v23 == v25)
    {
      goto LABEL_21;
    }
  }

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
  sub_1CFCA0308();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1CFC76F10(uint64_t a1, uint64_t a2)
{
  v72 = a1;
  v68 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D8, &qword_1CFCA4220);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v64 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v63 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v63 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v63 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v63 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63 - v16;
  v18 = sub_1CFC9CF08();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v23 = [v22 junkFilteringEnabled];

  if (v23)
  {
    v23 = [objc_opt_self() isFilterAsNewCallersEnabledForPhone];
  }

  sub_1CFC9C668();
  v24 = sub_1CFC9C658();
  v69 = sub_1CFC9C638();

  (*(v19 + 16))(v21, v71, v18);
  v25 = (*(v19 + 88))(v21, v18);
  if (v25 == *MEMORY[0x1E6995A70])
  {
    v26 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    v27 = [v26 junkFilteringEnabled];

    if (v27)
    {
      sub_1CFC9C418();
      v28 = sub_1CFC9CC18();
      v29 = *(v28 - 8);
      v30 = *(v29 + 48);
      if (v30(v17, 1, v28) == 1)
      {
        sub_1CFBC2FB0(v17, &qword_1EC4ED0D8, &qword_1CFCA4220);
      }

      else
      {
        v36 = sub_1CFC9CBE8();
        (*(v29 + 8))(v17, v28);
        if (v36 & v69)
        {
          goto LABEL_36;
        }
      }

      v37 = v70;
      sub_1CFC9C418();
      if (v30(v37, 1, v28) == 1)
      {
        sub_1CFBC2FB0(v37, &qword_1EC4ED0D8, &qword_1CFCA4220);
      }

      else
      {
        v45 = sub_1CFC9CBE8();
        (*(v29 + 8))(v37, v28);
        if (v45 & 1) == 0 && ((v23 ^ 1) & 1) == 0 && (sub_1CFC9C628())
        {
          goto LABEL_36;
        }
      }
    }

    v35 = sub_1CFC9C308();
    if (v35)
    {
      goto LABEL_19;
    }

    v35 = sub_1CFC9C408();
    if (v35)
    {
      goto LABEL_19;
    }

LABEL_36:
    LOBYTE(v31) = 0;
    return v31 & 1;
  }

  if (v25 == *MEMORY[0x1E6995A78])
  {
    sub_1CFC9C418();
    v31 = sub_1CFC9CC18();
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);
    if (v33(v12, 1, v31) == 1)
    {
      v34 = v12;
LABEL_10:
      sub_1CFBC2FB0(v34, &qword_1EC4ED0D8, &qword_1CFCA4220);
      goto LABEL_36;
    }

    v38 = v23;
    v39 = sub_1CFC9CBF8();
    v40 = *(v32 + 8);
    v40(v12, v31);
    if ((v39 & 1) == 0)
    {
      goto LABEL_36;
    }

    v41 = v66;
    sub_1CFC9C418();
    if (v33(v41, 1, v31) == 1)
    {
      sub_1CFBC2FB0(v41, &qword_1EC4ED0D8, &qword_1CFCA4220);
      v42 = v67;
    }

    else
    {
      v50 = sub_1CFC9CBE8();
      v40(v41, v31);
      v42 = v67;
      if (v50 & v69)
      {
        goto LABEL_36;
      }
    }

    sub_1CFC9C418();
    if (v33(v42, 1, v31) == 1)
    {
      sub_1CFBC2FB0(v42, &qword_1EC4ED0D8, &qword_1CFCA4220);
      goto LABEL_20;
    }

    v54 = sub_1CFC9CBE8();
    v40(v42, v31);
    LOBYTE(v31) = 1;
    if (v54 & 1) != 0 || ((v38 ^ 1))
    {
      return v31 & 1;
    }

    goto LABEL_45;
  }

  if (v25 == *MEMORY[0x1E6995AA0])
  {
    v35 = sub_1CFC9C408();
    if (v35)
    {
LABEL_19:

LABEL_20:
      LOBYTE(v31) = 1;
      return v31 & 1;
    }

    goto LABEL_36;
  }

  if (v25 == *MEMORY[0x1E6995A98])
  {
    v43 = sub_1CFC9C408();
    if (v43)
    {
      v44 = v43;
      sub_1CFC9D5E8();

      LODWORD(v31) = sub_1CFC9D6B8();
      LOBYTE(v31) = v31 == sub_1CFC9D6B8();
      return v31 & 1;
    }

    goto LABEL_36;
  }

  if (v25 == *MEMORY[0x1E6995A90])
  {
    v46 = v65;
    sub_1CFC9C418();
    v47 = sub_1CFC9CC18();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) != 1)
    {
      v49 = sub_1CFC9CBE8();
      (*(v48 + 8))(v46, v47);
      if ((v49 & 1) == 0)
      {
        LOBYTE(v31) = sub_1CFC9C628();
        return v31 & 1;
      }

      goto LABEL_36;
    }

    goto LABEL_42;
  }

  if (v25 == *MEMORY[0x1E6995A68])
  {
    v46 = v64;
    sub_1CFC9C418();
    v52 = sub_1CFC9CC18();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v46, 1, v52) != 1)
    {
      LOBYTE(v31) = sub_1CFC9CBE8();
      (*(v53 + 8))(v46, v52);
      return v31 & 1;
    }

LABEL_42:
    v34 = v46;
    goto LABEL_10;
  }

  LOBYTE(v31) = 0;
  if (v25 == *MEMORY[0x1E6995A80] || v25 == *MEMORY[0x1E6995A60])
  {
    return v31 & 1;
  }

  if (v25 == *MEMORY[0x1E6995A88])
  {
    if ((sub_1CFC9C358() & 1) == 0)
    {
      v55 = sub_1CFC9C308();
      if (v55 && (v56 = v55, v57 = [v55 serviceProvider], v56, v57))
      {
        v58 = sub_1CFC9F768();
        v60 = v59;

        v61 = sub_1CFC9F768();
        if (v60)
        {
          if (v58 == v61 && v60 == v62)
          {

            if (!v23)
            {
              goto LABEL_20;
            }
          }

          else
          {
            LODWORD(v31) = sub_1CFCA02B8();

            if ((v31 & v23 & 1) == 0)
            {
              return v31 & 1;
            }
          }

          goto LABEL_45;
        }
      }

      else
      {
        sub_1CFC9F768();
      }

      goto LABEL_36;
    }

    if (!v23)
    {
      goto LABEL_20;
    }

LABEL_45:
    LOBYTE(v31) = sub_1CFC9C628() ^ 1;
    return v31 & 1;
  }

  result = sub_1CFCA01D8();
  __break(1u);
  return result;
}

uint64_t sub_1CFC77890@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if ((sub_1CFC9C868() & 1) != 0 && (v4 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items, swift_beginAccess(), !*(*(v2 + v4) + 16)))
  {
    sub_1CFC9DB98();
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    sub_1CFC9BE28();

    sub_1CFC9DB88();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1CFC9DBB8();
  return (*(*(v6 - 8) + 56))(a1, v5, 1, v6);
}

uint64_t sub_1CFC779F8()
{
  v1 = [objc_opt_self() shared];
  v2 = [v1 current];

  if (v2 == 1)
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 != 6)
    {
      sub_1CFC9CD28();
      if (v10 & 1) != 0 || (*(v0 + 64))
      {
        v5 = 1;
        return v5 & 1;
      }

      v7 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_needsHeader);
      if (v7)
      {
        v8 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_needsHeader + 8);

        v5 = v7(v9);
        sub_1CFBABFA0(v7, v8);
        return v5 & 1;
      }
    }
  }

  v5 = 0;
  return v5 & 1;
}

uint64_t sub_1CFC77BD8@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_1CFC77C48@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v8 = *(v5 - 8);
  (*(v8 + 104))(a3, v4, v5);
  v6 = *(v8 + 56);

  return v6(a3, 0, 1, v5);
}

uint64_t sub_1CFC77D1C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

id sub_1CFC77D9C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1CFC791AC(a1);
  }

  sub_1CFBA2D80(0, &qword_1EC4EE600, 0x1E69DC8E8);
  v3 = sub_1CFC9F898();

  v4 = [objc_opt_self() configurationWithActions_];

  return v4;
}

uint64_t sub_1CFC77E6C()
{
  v1 = sub_1CFC9CEA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1CFC9CF08();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  if (*(v0 + 64))
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    v14 = sub_1CFC9BE28();

    return v14;
  }

  else
  {
    v27 = v2;
    v28 = v1;
    v16 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_currentFilterMode;
    swift_beginAccess();
    v25 = *(v6 + 16);
    v25(v11, v0 + v16, v5);
    v17 = (*(v6 + 88))(v11, v5);
    v18 = *MEMORY[0x1E6995A70];
    v26 = *(v6 + 8);
    v26(v11, v5);
    if (v17 == v18)
    {
      type metadata accessor for BundleClass();
      v19 = swift_getObjCClassFromMetadata();
      v20 = [objc_opt_self() bundleForClass_];
      v21 = sub_1CFC9BE28();
    }

    else
    {
      v25(v8, v0 + v16, v5);
      *v4 = 0;
      v23 = v27;
      v22 = v28;
      (*(v27 + 104))(v4, *MEMORY[0x1E6995A40], v28);
      v21 = sub_1CFC9CEF8();
      (*(v23 + 8))(v4, v22);
      v26(v8, v5);
    }

    return v21;
  }
}

uint64_t sub_1CFC78260(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1CFC9F998();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1CFC9F968();

  v6 = sub_1CFC9F958();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_1CFBDC330(0, 0, v4, &unk_1CFCA8678, v7);
}

uint64_t sub_1CFC78384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1CFC9F968();
  v4[7] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFC7841C, v6, v5);
}

uint64_t sub_1CFC7841C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), *(v0 + 80) = Strong, , Strong))
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1CFC78538;

    return sub_1CFC60AB8();
  }

  else
  {

    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1CFC78538()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1CFC7867C, v3, v2);
}

uint64_t sub_1CFC7867C()
{

  **(v0 + 40) = 0;
  v1 = *(v0 + 8);

  return v1();
}

double sub_1CFC786E4(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1CFC9C878();
    swift_beginAccess();

    sub_1CFC9CB58();
  }

  return result;
}

uint64_t sub_1CFC78790(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFC9F638();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFC9F658();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFC9F678();
  v23 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v21 = sub_1CFC9FC28();
  sub_1CFC9F668();
  sub_1CFC9F688();
  v22 = *(v11 + 8);
  v22(v13, v10);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  aBlock[4] = sub_1CFC182D0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFC56F38;
  aBlock[3] = &block_descriptor_14;
  v18 = _Block_copy(aBlock);

  sub_1CFC9F648();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1CFBB240C(&qword_1EE04D130, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
  sub_1CFBA57C0(&qword_1EE04D110, &unk_1EC4ED5B0, &unk_1CFCA24A0, MEMORY[0x1E69E6328]);
  sub_1CFC9FF58();
  v19 = v21;
  MEMORY[0x1D3872120](v16, v9, v6, v18);
  _Block_release(v18);

  (*(v26 + 8))(v6, v4);
  (*(v24 + 8))(v9, v25);
  return (v22)(v16, v23);
}

uint64_t sub_1CFC78B70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CFC9C448();
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFC9C088();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFC9C0A8();
  v11 = sub_1CFBB240C(&qword_1EE04D6D8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
  v12 = sub_1CFC9FA28();
  if (v12)
  {
    v13 = v12;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1CFBB22BC(0, v12 & ~(v12 >> 63), 0);
    v14 = v36;
    result = sub_1CFC9FA18();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v33 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items;
      swift_beginAccess();
      v27 = (v34 + 32);
      v28 = v34 + 16;
      v31 = a1;
      v32 = v1;
      v29 = v11;
      v30 = v10;
      while (1)
      {
        v16 = sub_1CFC9FA88();
        v18 = *v17;
        result = v16(v35, 0);
        if ((v18 & 0x8000000000000000) != 0)
        {
          break;
        }

        v19 = *(v2 + v33);
        if (v18 >= *(v19 + 16))
        {
          goto LABEL_18;
        }

        v20 = v9;
        v21 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v22 = *(v34 + 72);
        (*(v34 + 16))(v6, v19 + v21 + v22 * v18, v4);
        v36 = v14;
        v24 = *(v14 + 16);
        v23 = *(v14 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1CFBB22BC((v23 > 1), v24 + 1, 1);
          v14 = v36;
        }

        *(v14 + 16) = v24 + 1;
        (*v27)(v14 + v21 + v24 * v22, v6, v4);
        v9 = v20;
        sub_1CFC9FA58();
        --v13;
        v2 = v32;
        if (!v13)
        {
          (*(v25 + 8))(v20, v26);
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    sub_1CFC9C888();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFE48, &unk_1CFCA86C0);
    sub_1CFBA57C0(&qword_1EC4EFE50, &qword_1EC4EFE48, &unk_1CFCA86C0, MEMORY[0x1E69E6318]);
    sub_1CFBA57C0(&qword_1EC4EFE58, &qword_1EC4EFE48, &unk_1CFCA86C0, MEMORY[0x1E69E6348]);
    sub_1CFC9FA98();
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (*(v2 + 64))
      {
        sub_1CFBA5878();
      }

      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      swift_getObjectType();
      SectionControllerParent.sectionItemsDidChange()();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1CFC78FE8(uint64_t a1)
{
  v2 = v1;
  sub_1CFC9C888();
  v4 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items;
  swift_beginAccess();

  v5 = sub_1CFC7EEAC((v1 + v4), a1);

  v6 = *(*(v2 + v4) + 16);
  if (v6 < v5)
  {
    __break(1u);
  }

  else
  {
    sub_1CFBCC85C(v5, v6);
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (*(v2 + 64))
      {
        sub_1CFBA5878();
      }

      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      SectionControllerParent.sectionItemsDidChange()();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1CFC79104(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_numberOfCalls);
  v4 = sub_1CFC9C0F8();
  v5 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_callsIndex;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = sub_1CFC94BCC(v4);
    if (v9)
    {
      v7 = *(*(v6 + 56) + 8 * v8);
    }

    else
    {
      v7 = 0;
    }
  }

  result = v3 - v7;
  if (!__OFSUB__(v3, v7))
  {
    return sub_1CFC9C7C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFC791AC(void *a1)
{
  v2 = v1;
  v4 = sub_1CFC9C138();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v65 = sub_1CFC9C448();
  v7 = *(v65 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v63 = a1;
  v64 = &v57 - v10;
  v11 = sub_1CFC9C0F8();
  v12 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items;
  swift_beginAccess();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v2 + v12);
    if (v11 < *(v13 + 16))
    {
      v14 = *(v7 + 80);
      v15 = v13 + ((v14 + 32) & ~v14) + v7[9] * v11;
      v60 = v6;
      v16 = v7[2];
      v58 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = v64;
      v18 = v7;
      v19 = v65;
      v16(v64, v15, v65);
      v73 = MEMORY[0x1E69E7CC0];
      v59 = swift_allocObject();
      v61 = v2;
      swift_weakInit();
      v20 = v62;
      v16(v62, v17, v19);
      v21 = v58;
      (*(v5 + 16))(v58, v63, v4);
      v22 = (v14 + 24) & ~v14;
      v23 = (v22 + v8 + *(v5 + 80)) & ~*(v5 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = v59;
      v63 = v18;
      (v18[4])(v24 + v22, v20, v19);
      (*(v5 + 32))(v24 + v23, v21, v4);
      v71 = sub_1CFC7EDAC;
      v72 = v24;
      aBlock = MEMORY[0x1E69E9820];
      v68 = 1107296256;
      v69 = sub_1CFC1A29C;
      v70 = &block_descriptor_110;
      v25 = _Block_copy(&aBlock);
      v26 = objc_opt_self();

      v27 = [v26 contextualActionWithStyle:1 title:0 handler:v25];
      _Block_release(v25);

      v28 = objc_opt_self();
      v29 = sub_1CFC9F728();
      v30 = [v28 __systemImageNamedSwift_];

      [v27 setImage_];
      v71 = sub_1CFC11EB4;
      v72 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v68 = 1107296256;
      v69 = sub_1CFC1A370;
      v70 = &block_descriptor_113_0;
      v31 = _Block_copy(&aBlock);
      v32 = v27;
      [v32 setAccessibilityIdentifierBlock_];
      _Block_release(v31);

      v7 = v32;
      MEMORY[0x1D3871DC0]();
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_26:
  sub_1CFC9F8C8();
LABEL_4:
  sub_1CFC9F8F8();
  v33 = v73;
  v34 = v61;
  v35 = sub_1CFC74824();
  v36 = v34 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v37 = *(*(v36 + 8) + 8);
  }

  else
  {
    v37 = 0;
  }

  v38 = &v35[OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_delegate];
  swift_beginAccess();
  *(v38 + 1) = v37;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();

  v39 = v64;
  v40 = sub_1CFC1A858(v64);

  if (v40)
  {
    v41 = v40;
    MEMORY[0x1D3871DC0]();
    if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CFC9F8C8();
    }

    sub_1CFC9F8F8();

    v33 = v73;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    (v63[1])(v39, v65);
    return v33;
  }

  v43 = Strong;
  v44 = type metadata accessor for ClassificationControllerDelegate();
  v45 = objc_allocWithZone(v44);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v66.receiver = v45;
  v66.super_class = v44;
  v46 = objc_msgSendSuper2(&v66, sel_init);
  v47 = *(v34 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_classificationControllerDelegate);
  *(v34 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_classificationControllerDelegate) = v46;
  v48 = v46;

  v49 = sub_1CFC9C308();
  if (!v49)
  {
    (v63[1])(v39, v65);
LABEL_22:

    swift_unknownObjectRelease();
    return v33;
  }

  v50 = v49;
  v51 = sub_1CFC9C818();
  if (!v51)
  {
    (v63[1])(v39, v65);

    goto LABEL_22;
  }

  v52 = v51;
  v53 = sub_1CFC742C0();
  v54 = sub_1CFBCE2E8(v50, v52, v43, v48);

  if (!v54)
  {
    (v63[1])(v39, v65);

    goto LABEL_22;
  }

  v55 = v54;
  MEMORY[0x1D3871DC0]();
  if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1CFC9F8C8();
  }

  sub_1CFC9F8F8();

  swift_unknownObjectRelease();
  (v63[1])(v39, v65);
  return v73;
}

uint64_t sub_1CFC799A0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1CFC9C0A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 64) == 1)
    {
      sub_1CFC9C878();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED500, &qword_1CFCA2420);
      v13 = sub_1CFC9C448();
      v14 = *(v13 - 8);
      v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1CFCA1DD0;
      (*(v14 + 16))(v16 + v15, a6, v13);
      sub_1CFC9CB58();
    }

    else
    {
      v17 = sub_1CFC9C0F8();
      sub_1CFBB240C(&unk_1EE04D6C8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
      sub_1CFC9FF48();
      v18[1] = v17;
      sub_1CFC9FF38();
      sub_1CFC78B70(v11);
      (*(v9 + 8))(v11, v8);
    }

    a3(1);
  }

  return result;
}

uint64_t sub_1CFC79C2C()
{
  sub_1CFBA79B8(v0 + 24);

  v1 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_cellRegistration;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE528, &qword_1CFCA4670);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_junkCellRegistration, v2);
  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_requestsCellRegistration, &qword_1EC4EE540, &qword_1CFCA4690);
  v4 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_headerRegistration;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE018, &unk_1CFCA4680);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  sub_1CFBA79B8(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_delegate);

  v6 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_currentFilterMode;
  v7 = sub_1CFC9CF08();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  sub_1CFBABFA0(*(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_needsHeader), *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_needsHeader + 8));

  return v0;
}

uint64_t sub_1CFC79E90()
{
  sub_1CFC79C2C();

  return swift_deallocClassInstance();
}

void (*sub_1CFC79EE8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1CFC13CB4;
}

uint64_t (*sub_1CFC79F88(uint64_t a1))(uint64_t result, char a2)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = *(v1 + 40);
  return sub_1CFC79FB4;
}

uint64_t sub_1CFC79FB4(uint64_t result, char a2)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(v3 + 48);
  if (a2)
  {
    if ((v4 ^ *(v5 + 16)))
    {
      goto LABEL_5;
    }

LABEL_6:
    *(v5 + 16) = v4;
    goto LABEL_7;
  }

  if (((v4 ^ *(v5 + 16)) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_5:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *v2 = v5;
  sub_1CFBB240C(&qword_1EE04FD50, type metadata accessor for RecentsEditMode, &unk_1CFCA419C);
  sub_1CFC9C148();

  v3 = v2[1];
LABEL_7:
  *(v3 + 40) = v4;
  return result;
}

uint64_t sub_1CFC7A210(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1CFC9C828();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_allocWithZone(type metadata accessor for ContactActionsController(0));
  v6 = sub_1CFC9619C(v3, v4);
  v7 = *(v2 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_contactActionsController);
  *(v2 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_contactActionsController) = v6;
  v8 = v6;

  v9 = sub_1CFC96E60();
  if (v9)
  {
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1CFCA2540;
    *(v11 + 32) = v10;
  }

  else
  {

    return 0;
  }

  return v11;
}

uint64_t sub_1CFC7A33C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB240C(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  sub_1CFC9C158();

  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_1CFC7A40C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB240C(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  sub_1CFC9C158();

  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1CFBF6EB4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1CFBB256C(v4, v5);
}

uint64_t sub_1CFC7A4F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1CFC7ED84;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1CFBB256C(v2, v3);
  sub_1CFBB240C(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration, &unk_1CFCA9064);
  sub_1CFC9C148();
  sub_1CFBABFA0(v5, v4);
}

uint64_t sub_1CFC7A654(uint64_t a1)
{
  result = sub_1CFBB240C(&qword_1EE04D6C0, MEMORY[0x1E6993688], MEMORY[0x1E6993698]);
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Sections(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Sections(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CFC7A838(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CFBD431C;

  return v7(a1, a2);
}

void sub_1CFC7A9D0(uint64_t a1)
{
  if (!qword_1EE04D0C8)
  {
    type metadata accessor for RecentsStyleListCell();
    sub_1CFC9C448();
    v1 = sub_1CFC9FB78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE04D0C8);
    }
  }
}

void sub_1CFC7AA38(uint64_t a1)
{
  if (!qword_1EE04D0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE528, &qword_1CFCA4670);
    v1 = sub_1CFC9FEB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE04D0C0);
    }
  }
}

void sub_1CFC7AA9C(uint64_t a1)
{
  if (!qword_1EE04D080)
  {
    type metadata accessor for SectionHeaderView();
    v1 = sub_1CFC9FB98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE04D080);
    }
  }
}

unint64_t sub_1CFC7AB08()
{
  result = qword_1EC4EFE28;
  if (!qword_1EC4EFE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EFE28);
  }

  return result;
}

uint64_t sub_1CFC7AB5C(uint64_t a1)
{
  result = sub_1CFBB240C(&qword_1EE04F4F8, type metadata accessor for RecentsSectionController, &unk_1CFCA85E8);
  *(a1 + 8) = result;
  return result;
}

void *sub_1CFC7AC24(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFEC8, &qword_1CFCA87E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFED0, &qword_1CFCA87E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFC7AD58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED610, &qword_1CFCA24F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CFC7AE78(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFED8, &unk_1CFCA87F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED618, &qword_1CFCA24F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CFC7AFC8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED598, &unk_1CFCA2490);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5A0, &qword_1CFCA87C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFC7B110(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED590, &qword_1CFCA2488);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFC7B248(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED0E0, &qword_1CFCA1FF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFC7B3B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFE38, &unk_1CFCA8608);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CFC7B4C4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFAB8, &unk_1CFCA7C40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED550, &qword_1CFCA2458);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CFC7B620(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1CFC7B7FC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED0E0, &qword_1CFCA1FF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1CFC7B8BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5F0, &qword_1CFCA24D8);
  v2 = *v0;
  v3 = sub_1CFCA0218();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 48 * v17;
        sub_1CFBCCD6C(*(v2 + 48) + 48 * v17, v23);
        v17 *= 40;
        sub_1CFBB94B0(*(v2 + 56) + v17, v22);
        v19 = (*(v4 + 48) + v18);
        v20 = v23[0];
        v21 = v23[2];
        v19[1] = v23[1];
        v19[2] = v21;
        *v19 = v20;
        result = sub_1CFBAD070(v22, *(v4 + 56) + v17);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1CFC7BA60()
{
  v1 = v0;
  v35 = sub_1CFC9C008();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAB8, &qword_1CFCA2EE0);
  v3 = *v0;
  v4 = sub_1CFCA0218();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1CFC7BCE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAA8, &qword_1CFCA2ED0);
  v2 = *v0;
  v3 = sub_1CFCA0218();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1CFC7BE58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EDA88, &unk_1CFCA2D30);
  v2 = *v0;
  v3 = sub_1CFCA0218();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1CFC7BFA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5F0, &qword_1CFCA24D8);
  result = sub_1CFCA0228();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = (*(v5 + 48) + 48 * v22);
      if (v4)
      {
        v24 = *v23;
        v25 = v23[2];
        v37 = v23[1];
        v38 = v25;
        v36 = v24;
        sub_1CFBAD070((*(v5 + 56) + 40 * v22), v35);
      }

      else
      {
        sub_1CFBCCD6C(v23, &v36);
        sub_1CFBB94B0(*(v5 + 56) + 40 * v22, v35);
      }

      sub_1CFCA0338();
      sub_1CFCA0068();
      MEMORY[0x1D3872880](*(&v38 + 1));
      result = sub_1CFCA0378();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 48 * v15);
      v17 = v36;
      v18 = v38;
      v16[1] = v37;
      v16[2] = v18;
      *v16 = v17;
      result = sub_1CFBAD070(v35, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1CFC7C288(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_1CFC9C008();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAB8, &qword_1CFCA2EE0);
  v42 = v4;
  result = sub_1CFCA0228();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_1CFCA0338();
      sub_1CFC9F7C8();
      result = sub_1CFCA0378();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1CFC7C608(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAA8, &qword_1CFCA2ED0);
  v37 = v4;
  result = sub_1CFCA0228();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1CFCA0338();
      sub_1CFC9F7C8();
      result = sub_1CFCA0378();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1CFC7C8C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EDA88, &unk_1CFCA2D30);
  result = sub_1CFCA0228();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_1CFCA0328();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void sub_1CFC7CB2C(void *a1)
{
  v2 = *(sub_1CFC9C448() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1CFBA5EC4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1CFC7CBD4(v5);
  *a1 = v3;
}

void sub_1CFC7CBD4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1CFCA0278();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1CFC9C448();
        v6 = sub_1CFC9F8E8();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1CFC9C448() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1CFC7D0DC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1CFC7CD00(0, v2, 1, a1);
  }
}

void sub_1CFC7CD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v42 - v12;
  v13 = sub_1CFC9C448();
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v58 = &v42 - v16;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v42 - v18;
  v44 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v56 = *(v19 + 16);
    v57 = v19 + 16;
    v23 = *(v19 + 72);
    v53 = (v19 + 8);
    v54 = &v42 - v18;
    v24 = (v22 + v23 * (a3 - 1));
    v49 = -v23;
    v50 = (v19 + 32);
    v25 = a1 - a3;
    v51 = v22;
    v43 = v23;
    v26 = v22 + v23 * a3;
    v55 = v13;
LABEL_5:
    v47 = v24;
    v48 = a3;
    v45 = v26;
    v46 = v25;
    while (1)
    {
      v59 = v25;
      v27 = v56;
      (v56)(v21, v26, v13, v20);
      v28 = v58;
      v27(v58, v24, v13);
      v29 = v60;
      sub_1CFC9C3A8();
      v30 = v28;
      v31 = sub_1CFC9BFB8();
      v32 = *(v31 - 8);
      v33 = *(v32 + 48);
      if (v33(v29, 1, v31) == 1)
      {
        break;
      }

      sub_1CFC9C3A8();
      if (v33(v10, 1, v31) == 1)
      {
        goto LABEL_14;
      }

      v34 = v60;
      v35 = sub_1CFC9BF78();
      v36 = *(v32 + 8);
      v36(v10, v31);
      v36(v34, v31);
      v37 = *v53;
      v13 = v55;
      (*v53)(v30, v55);
      v21 = v54;
      v37(v54, v13);
      v38 = v59;
      if (v35)
      {
        if (!v51)
        {
          goto LABEL_15;
        }

        v39 = *v50;
        v40 = v52;
        (*v50)(v52, v26, v13);
        swift_arrayInitWithTakeFrontToBack();
        v39(v24, v40, v13);
        v24 += v49;
        v26 += v49;
        v41 = __CFADD__(v38, 1);
        v25 = v38 + 1;
        if (!v41)
        {
          continue;
        }
      }

      a3 = v48 + 1;
      v24 = &v47[v43];
      v25 = v46 - 1;
      v26 = v45 + v43;
      if (v48 + 1 == v44)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_1CFC7D0DC(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v160 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v186 = &v152 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v152 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v173 = &v152 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v153 = &v152 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v159 = &v152 - v21;
  v183 = sub_1CFC9C448();
  v22 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v164 = &v152 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v177 = &v152 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v152 = &v152 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v185 = &v152 - v29;
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v172 = &v152 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v154 = &v152 - v34;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v158 = &v152 - v38;
  v39 = a3[1];
  if (v39 >= 1)
  {
    v157 = a4;
    v167 = v36;
    v40 = 0;
    v181 = (v22 + 8);
    v182 = v22 + 16;
    v180 = (v22 + 32);
    v41 = MEMORY[0x1E69E7CC0];
    v162 = a3;
    v155 = v22;
    v179 = v10;
    v166 = v15;
    while (1)
    {
      v42 = v40;
      v165 = v41;
      if (v40 + 1 >= v39)
      {
        v59 = v40 + 1;
        v73 = v157;
      }

      else
      {
        v174 = v39;
        v43 = *a3;
        v44 = *(v22 + 72);
        v45 = *(v22 + 16);
        v184 = &v43[v44 * (v40 + 1)];
        v46 = v183;
        (v45)(v158, v37);
        v161 = v40;
        v176 = v44;
        v178 = v43;
        v47 = v154;
        v171 = v45;
        (v45)(v154, &v43[v44 * v40], v46);
        v48 = v159;
        sub_1CFC9C3A8();
        v49 = sub_1CFC9BFB8();
        v50 = *(v49 - 8);
        v51 = v50 + 48;
        v10 = *(v50 + 48);
        if ((v10)(v48, 1, v49) == 1)
        {
          goto LABEL_145;
        }

        v156 = v5;
        v52 = v153;
        sub_1CFC9C3A8();
        if ((v10)(v52, 1, v49) == 1)
        {
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        v53 = v159;
        LODWORD(v175) = sub_1CFC9BF78();
        v54 = *(v50 + 8);
        v54(v52, v49);
        v169 = v54;
        v170 = v50 + 8;
        v54(v53, v49);
        v15 = v181;
        v55 = *v181;
        v56 = v183;
        (*v181)(v47, v183);
        v168 = v55;
        v55(v158, v56);
        v57 = (v161 + 2);
        v58 = &v178[v176 * (v161 + 2)];
        v59 = v174;
        while (v59 != v57)
        {
          v178 = v57;
          v60 = v10;
          v61 = v49;
          v62 = v51;
          v63 = v171;
          (v171)(v172, v58, v56);
          v64 = v167;
          v63(v167, v184, v56);
          v51 = v62;
          v49 = v61;
          v10 = v60;
          v65 = v173;
          sub_1CFC9C3A8();
          if (v60(v65, 1, v49) == 1)
          {
            goto LABEL_140;
          }

          v66 = v166;
          sub_1CFC9C3A8();
          v67 = v66;
          if (v60(v66, 1, v49) == 1)
          {
            goto LABEL_139;
          }

          v68 = v173;
          v69 = sub_1CFC9BF78();
          v70 = v67;
          v15 = v69 & 1;
          v71 = v169;
          (v169)(v70, v49);
          v71(v68, v49);
          v56 = v183;
          v72 = v168;
          v168(v64, v183);
          v72(v172, v56);
          v57 = v178 + 1;
          v58 += v176;
          v184 += v176;
          v59 = v174;
          if ((v175 & 1) != v15)
          {
            v59 = v178;
            break;
          }
        }

        v5 = v156;
        a3 = v162;
        v22 = v155;
        v73 = v157;
        v41 = v165;
        v42 = v161;
        if (v175)
        {
          if (v59 < v161)
          {
            goto LABEL_132;
          }

          if (v161 < v59)
          {
            v15 = v176 * (v59 - 1);
            v74 = v59 * v176;
            v174 = v59;
            v75 = v59;
            v76 = v161;
            v77 = v161 * v176;
            do
            {
              if (v76 != --v75)
              {
                v79 = v5;
                v80 = *a3;
                if (!*a3)
                {
                  goto LABEL_142;
                }

                v10 = &v80[v77];
                v184 = *v180;
                (v184)(v164, &v80[v77], v183, v41);
                if (v77 < v15 || v10 >= &v80[v74])
                {
                  v78 = v183;
                  swift_arrayInitWithTakeFrontToBack();
                }

                else
                {
                  v78 = v183;
                  if (v77 != v15)
                  {
                    swift_arrayInitWithTakeBackToFront();
                  }
                }

                (v184)(&v80[v15], v164, v78);
                v5 = v79;
                a3 = v162;
                v41 = v165;
              }

              ++v76;
              v15 -= v176;
              v74 -= v176;
              v77 += v176;
            }

            while (v76 < v75);
            v22 = v155;
            v73 = v157;
            v42 = v161;
            v59 = v174;
          }
        }
      }

      v81 = a3[1];
      if (v59 >= v81)
      {
        goto LABEL_36;
      }

      if (__OFSUB__(v59, v42))
      {
        goto LABEL_131;
      }

      if (v59 - v42 >= v73)
      {
        goto LABEL_36;
      }

      if (__OFADD__(v42, v73))
      {
        goto LABEL_133;
      }

      if (v42 + v73 >= v81)
      {
        v10 = a3[1];
      }

      else
      {
        v10 = v42 + v73;
      }

      if (v10 < v42)
      {
LABEL_134:
        __break(1u);
LABEL_135:
        v147 = sub_1CFC7E7DC(v15);
        goto LABEL_105;
      }

      if (v59 == v10)
      {
LABEL_36:
        v10 = v59;
        if (v59 < v42)
        {
          goto LABEL_130;
        }
      }

      else
      {
        v156 = v5;
        v128 = *a3;
        v129 = *(v22 + 72);
        v178 = *(v22 + 16);
        v130 = &v128[v129 * (v59 - 1)];
        v175 = -v129;
        v161 = v42;
        v131 = v42 - v59;
        v176 = v128;
        v163 = v129;
        v132 = &v128[v59 * v129];
        v133 = v183;
        v134 = v152;
        v168 = v10;
        do
        {
          v174 = v59;
          v169 = v132;
          v170 = v131;
          v135 = v132;
          v171 = v130;
          do
          {
            v136 = v178;
            (v178)(v185, v135, v133, v41);
            v136(v134, v130, v133);
            v137 = v186;
            sub_1CFC9C3A8();
            v138 = sub_1CFC9BFB8();
            v139 = *(v138 - 8);
            v15 = v134;
            v140 = *(v139 + 48);
            if (v140(v137, 1, v138) == 1)
            {
              goto LABEL_137;
            }

            v141 = v179;
            sub_1CFC9C3A8();
            if (v140(v141, 1, v138) == 1)
            {
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
LABEL_143:
              __break(1u);
LABEL_144:
              __break(1u);
LABEL_145:
              __break(1u);
              goto LABEL_146;
            }

            v142 = v186;
            LODWORD(v184) = sub_1CFC9BF78();
            v143 = *(v139 + 8);
            v143(v141, v138);
            v143(v142, v138);
            v144 = *v181;
            v133 = v183;
            (*v181)(v15, v183);
            v144(v185, v133);
            v134 = v15;
            if ((v184 & 1) == 0)
            {
              break;
            }

            if (!v176)
            {
              goto LABEL_138;
            }

            v15 = *v180;
            v145 = v177;
            (*v180)(v177, v135, v133);
            swift_arrayInitWithTakeFrontToBack();
            (v15)(v130, v145, v133);
            v130 += v175;
            v135 += v175;
          }

          while (!__CFADD__(v131++, 1));
          v59 = v174 + 1;
          v130 = &v171[v163];
          v131 = v170 - 1;
          v10 = v168;
          v132 = &v169[v163];
        }

        while ((v174 + 1) != v168);
        v5 = v156;
        a3 = v162;
        v22 = v155;
        v42 = v161;
        if (v168 < v161)
        {
          goto LABEL_130;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v168 = v10;
      if (isUniquelyReferenced_nonNull_native)
      {
        v41 = v165;
      }

      else
      {
        v41 = sub_1CFBB2468(0, *(v165 + 2) + 1, 1, v165, &qword_1EC4EFE78, &qword_1CFCA86E8);
      }

      v10 = *(v41 + 2);
      v83 = *(v41 + 3);
      v15 = v10 + 1;
      if (v10 >= v83 >> 1)
      {
        v41 = sub_1CFBB2468((v83 > 1), v10 + 1, 1, v41, &qword_1EC4EFE78, &qword_1CFCA86E8);
      }

      *(v41 + 2) = v15;
      v84 = &v41[16 * v10];
      v85 = v168;
      *(v84 + 4) = v42;
      *(v84 + 5) = v85;
      if (!*v160)
      {
        goto LABEL_144;
      }

      if (v10)
      {
        v86 = *v160;
        while (1)
        {
          v10 = v15 - 1;
          if (v15 >= 4)
          {
            break;
          }

          if (v15 == 3)
          {
            v87 = *(v41 + 4);
            v88 = *(v41 + 5);
            v97 = __OFSUB__(v88, v87);
            v89 = v88 - v87;
            v90 = v97;
LABEL_57:
            if (v90)
            {
              goto LABEL_119;
            }

            v103 = &v41[16 * v15];
            v105 = *v103;
            v104 = *(v103 + 1);
            v106 = __OFSUB__(v104, v105);
            v107 = v104 - v105;
            v108 = v106;
            if (v106)
            {
              goto LABEL_122;
            }

            v109 = &v41[16 * v10 + 32];
            v111 = *v109;
            v110 = *(v109 + 1);
            v97 = __OFSUB__(v110, v111);
            v112 = v110 - v111;
            if (v97)
            {
              goto LABEL_125;
            }

            if (__OFADD__(v107, v112))
            {
              goto LABEL_126;
            }

            if (v107 + v112 >= v89)
            {
              if (v89 < v112)
              {
                v10 = v15 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v113 = &v41[16 * v15];
          v115 = *v113;
          v114 = *(v113 + 1);
          v97 = __OFSUB__(v114, v115);
          v107 = v114 - v115;
          v108 = v97;
LABEL_71:
          if (v108)
          {
            goto LABEL_121;
          }

          v116 = &v41[16 * v10];
          v118 = *(v116 + 4);
          v117 = *(v116 + 5);
          v97 = __OFSUB__(v117, v118);
          v119 = v117 - v118;
          if (v97)
          {
            goto LABEL_124;
          }

          if (v119 < v107)
          {
            goto LABEL_3;
          }

LABEL_78:
          v124 = v10 - 1;
          if (v10 - 1 >= v15)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
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
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
            goto LABEL_134;
          }

          if (!*a3)
          {
            goto LABEL_141;
          }

          v125 = v41;
          v15 = *&v41[16 * v124 + 32];
          v126 = *&v41[16 * v10 + 40];
          sub_1CFC7DF94((*a3 + *(v22 + 72) * v15), (*a3 + *(v22 + 72) * *&v41[16 * v10 + 32]), *a3 + *(v22 + 72) * v126, v86);
          if (v5)
          {
            goto LABEL_113;
          }

          if (v126 < v15)
          {
            goto LABEL_115;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = sub_1CFC7E7DC(v125);
          }

          if (v124 >= *(v125 + 2))
          {
            goto LABEL_116;
          }

          v127 = &v125[16 * v124];
          *(v127 + 4) = v15;
          *(v127 + 5) = v126;
          v187 = v125;
          sub_1CFBB26AC(v10);
          v41 = v187;
          v15 = *(v187 + 2);
          if (v15 <= 1)
          {
            goto LABEL_3;
          }
        }

        v91 = &v41[16 * v15 + 32];
        v92 = *(v91 - 64);
        v93 = *(v91 - 56);
        v97 = __OFSUB__(v93, v92);
        v94 = v93 - v92;
        if (v97)
        {
          goto LABEL_117;
        }

        v96 = *(v91 - 48);
        v95 = *(v91 - 40);
        v97 = __OFSUB__(v95, v96);
        v89 = v95 - v96;
        v90 = v97;
        if (v97)
        {
          goto LABEL_118;
        }

        v98 = &v41[16 * v15];
        v100 = *v98;
        v99 = *(v98 + 1);
        v97 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v97)
        {
          goto LABEL_120;
        }

        v97 = __OFADD__(v89, v101);
        v102 = v89 + v101;
        if (v97)
        {
          goto LABEL_123;
        }

        if (v102 >= v94)
        {
          v120 = &v41[16 * v10 + 32];
          v122 = *v120;
          v121 = *(v120 + 1);
          v97 = __OFSUB__(v121, v122);
          v123 = v121 - v122;
          if (v97)
          {
            goto LABEL_127;
          }

          if (v89 < v123)
          {
            v10 = v15 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v39 = a3[1];
      v40 = v168;
      if (v168 >= v39)
      {
        goto LABEL_102;
      }
    }
  }

  v41 = MEMORY[0x1E69E7CC0];
LABEL_102:
  v10 = *v160;
  if (*v160)
  {
    v15 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_135;
    }

    v147 = v15;
LABEL_105:
    v187 = v147;
    v15 = *(v147 + 2);
    if (v15 >= 2)
    {
      while (*a3)
      {
        v148 = *&v147[16 * v15];
        v149 = v147;
        v150 = *&v147[16 * v15 + 24];
        sub_1CFC7DF94((*a3 + *(v22 + 72) * v148), (*a3 + *(v22 + 72) * *&v147[16 * v15 + 16]), *a3 + *(v22 + 72) * v150, v10);
        if (v5)
        {
          goto LABEL_113;
        }

        if (v150 < v148)
        {
          goto LABEL_128;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v149 = sub_1CFC7E7DC(v149);
        }

        if (v15 - 2 >= *(v149 + 2))
        {
          goto LABEL_129;
        }

        v151 = &v149[16 * v15];
        *v151 = v148;
        *(v151 + 1) = v150;
        v187 = v149;
        sub_1CFBB26AC(v15 - 1);
        v147 = v187;
        v15 = *(v187 + 2);
        if (v15 <= 1)
        {
          goto LABEL_113;
        }
      }

      goto LABEL_143;
    }

LABEL_113:
  }

  else
  {
LABEL_147:
    __break(1u);
  }
}

void sub_1CFC7DF94(char *a1, char *a2, unint64_t a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v76 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v76 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v76 - v16;
  v90 = sub_1CFC9C448();
  v17 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v85 = &v76 - v21;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v87 = &v76 - v25;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (a2 - a1 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_66;
  }

  v28 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v27 != -1)
  {
    v29 = (a2 - a1) / v27;
    v93 = a1;
    v92 = a4;
    if (v29 >= v28 / v27)
    {
      v84 = v10;
      v31 = v28 / v27 * v27;
      if (a4 < a2 || &a2[v31] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      if (v31 < 1)
      {
        v57 = &a4[v31];
      }

      else
      {
        v79 = (v17 + 8);
        v80 = (v17 + 16);
        v55 = -v27;
        v56 = &a4[v31];
        v57 = &a4[v31];
        v89 = a1;
        v77 = -v27;
        v78 = a4;
        do
        {
          v76 = v57;
          v58 = a2;
          a2 += v55;
          v82 = v58;
          v83 = a2;
          while (1)
          {
            if (v58 <= a1)
            {
              v93 = v58;
              v91 = v76;
              goto LABEL_64;
            }

            v59 = a3;
            v81 = v57;
            v60 = *v80;
            v87 = &v56[v55];
            v88 = v56;
            v61 = v90;
            v60(v85);
            (v60)(v19, a2, v61);
            v62 = v86;
            sub_1CFC9C3A8();
            v63 = v19;
            v64 = sub_1CFC9BFB8();
            v65 = *(v64 - 8);
            v66 = *(v65 + 48);
            if (v66(v62, 1, v64) == 1)
            {
              goto LABEL_70;
            }

            v67 = v84;
            sub_1CFC9C3A8();
            if (v66(v67, 1, v64) == 1)
            {
              goto LABEL_71;
            }

            v68 = v59 + v55;
            v69 = v86;
            v70 = sub_1CFC9BF78();
            v71 = *(v65 + 8);
            v71(v67, v64);
            v71(v69, v64);
            v72 = *v79;
            v73 = v90;
            (*v79)(v63, v90);
            v72(v85, v73);
            a2 = v83;
            v74 = v78;
            v19 = v63;
            if (v70)
            {
              break;
            }

            v75 = v87;
            v57 = v87;
            a1 = v89;
            a3 = v68;
            if (v59 < v88 || v68 >= v88)
            {
              swift_arrayInitWithTakeFrontToBack();
              v55 = v77;
            }

            else
            {
              v55 = v77;
              if (v59 != v88)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v56 = v57;
            v58 = v82;
            if (v75 <= v74)
            {
              a2 = v82;
              goto LABEL_63;
            }
          }

          a1 = v89;
          a3 = v68;
          if (v59 < v82 || v68 >= v82)
          {
            swift_arrayInitWithTakeFrontToBack();
            v57 = v81;
            v55 = v77;
          }

          else
          {
            v57 = v81;
            v55 = v77;
            if (v59 != v82)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v56 = v88;
        }

        while (v88 > v74);
      }

LABEL_63:
      v93 = a2;
      v91 = v57;
    }

    else
    {
      v30 = v29 * v27;
      v83 = v24;
      if (a4 < a1 || &a1[v30] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v86 = &a4[v30];
      v91 = &a4[v30];
      if (v30 >= 1 && a2 < a3)
      {
        v33 = *(v17 + 16);
        v81 = a3;
        v82 = v33;
        v85 = (v17 + 16);
        v79 = (v17 + 8);
        v80 = v27;
        do
        {
          v89 = a1;
          v34 = a2;
          v35 = v90;
          v36 = v82;
          (v82)(v87, a2, v90);
          v37 = v83;
          (v36)(v83, a4, v35);
          v38 = v88;
          sub_1CFC9C3A8();
          v39 = sub_1CFC9BFB8();
          v40 = *(v39 - 8);
          v41 = *(v40 + 48);
          if (v41(v38, 1, v39) == 1)
          {
            goto LABEL_68;
          }

          v42 = v84;
          sub_1CFC9C3A8();
          v43 = v42;
          if (v41(v42, 1, v39) == 1)
          {
            goto LABEL_69;
          }

          v44 = v88;
          v45 = sub_1CFC9BF78();
          v46 = v43;
          v47 = v45;
          v48 = *(v40 + 8);
          v48(v46, v39);
          v48(v44, v39);
          v49 = *v79;
          v50 = v90;
          (*v79)(v37, v90);
          v49(v87, v50);
          a2 = v34;
          v51 = v89;
          if (v47)
          {
            v53 = v80;
            v52 = v81;
            if (v89 < a2 || v89 >= (v80 + a2))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v89 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v53 + a2;
          }

          else
          {
            v53 = v80;
            v52 = v81;
            v54 = v80 + a4;
            if (v89 < a4 || v89 >= v54)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v89 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v92 = v54;
            a4 = v53 + a4;
          }

          a1 = v53 + v51;
          v93 = a1;
        }

        while (a4 < v86 && a2 < v52);
      }
    }

LABEL_64:
    sub_1CFBB25C8(&v93, &v92, &v91);
    return;
  }

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
}

char *sub_1CFC7E7F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFE78, &qword_1CFCA86E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t sub_1CFC7E8F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = sub_1CFC9C448();
  MEMORY[0x1EEE9AC00](v35);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = v9 == 0;
  v31 = v9;
  v11 = 0;
  if (v9)
  {
    v37 = (v6 + 16);
    v34 = (v6 + 8);
    v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v30 = a1 + v12;
    v39 = *(v6 + 72);
    v27 = a2 + v12;
    v28 = a2;
    while (1)
    {
      v29 = v10;
      v13 = *(a2 + 16);
      if (v13)
      {
        v32 = v11;
        v33 = v3;
        v38[0] = MEMORY[0x1E69E7CC0];
        sub_1CFBCAA4C(0, v13, 0);
        v14 = v38[0];
        v36 = *v37;
        v15 = v27;
        do
        {
          v16 = v35;
          v36(v8, v15, v35);
          v17 = sub_1CFC9C348();
          v19 = v18;
          (*v34)(v8, v16);
          v38[0] = v14;
          v21 = *(v14 + 16);
          v20 = *(v14 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_1CFBCAA4C((v20 > 1), v21 + 1, 1);
            v14 = v38[0];
          }

          *(v14 + 16) = v21 + 1;
          v22 = v14 + 16 * v21;
          *(v22 + 32) = v17;
          *(v22 + 40) = v19;
          v15 += v39;
          --v13;
        }

        while (v13);
        v11 = v32;
        v3 = v33;
        a2 = v28;
      }

      else
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      v38[0] = sub_1CFC9C348();
      v38[1] = v23;
      MEMORY[0x1EEE9AC00](v38[0]);
      *(&v26 - 2) = v38;
      v24 = sub_1CFC72FD8(sub_1CFC7F59C, (&v26 - 4), v14);

      if (v24)
      {
        break;
      }

      v10 = ++v11 == v31;
      if (v11 == v31)
      {
        return 0;
      }
    }
  }

  return v11;
}

void sub_1CFC7EBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = [v6 shared];
  v8 = [v7 current];

  if (!v8)
  {
    v11 = sub_1CFC9C408();
    if (v11)
    {

      goto LABEL_8;
    }
  }

  v9 = [v6 shared];
  v10 = [v9 tapRecentsToCall];

  if (!v10)
  {
LABEL_8:
    sub_1CFC88EA4(a1);
    return;
  }

  sub_1CFC9C898();

  sub_1CFC78790(a2, a3);
}

uint64_t sub_1CFC7ECD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC78384(a1, v4, v5, v6);
}

uint64_t sub_1CFC7EDAC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(sub_1CFC9C448() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  sub_1CFC9C138();
  v11 = *(v4 + 16);

  return sub_1CFC799A0(a1, a2, a3, a4, v11, v4 + v10);
}

uint64_t sub_1CFC7EEAC(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1CFC9C448();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  v18 = *a1;
  result = sub_1CFC7E8F4(*a1, a2);
  if (v2)
  {
    return v3;
  }

  v63 = v17;
  v73 = v14;
  v56 = v11;
  if (v20)
  {
    return *(v18 + 16);
  }

  v3 = result;
  v21 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v22 = v18;
    v71 = v7 + 16;
    v68 = (v7 + 8);
    v54 = a1;
    v55 = (v7 + 40);
    v58 = v7;
    v59 = a2;
    v23 = v63;
    while (1)
    {
      v26 = v22[2];
      if (v21 == v26)
      {
        return v3;
      }

      if (v21 >= v26)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        break;
      }

      v66 = v22;
      v67 = v2;
      v27 = v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v28 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v29 = *(v7 + 72);
      v65 = v21;
      v69 = v29;
      v30 = v29 * v21;
      v31 = *(v7 + 16);
      v64 = v30;
      v61 = v27;
      v31(v23, &v27[v30], v6);
      v32 = *(a2 + 16);
      v70 = v31;
      v60 = v28;
      if (v32)
      {
        v62 = v3;
        v72[0] = MEMORY[0x1E69E7CC0];
        sub_1CFBCAA4C(0, v32, 0);
        v33 = v72[0];
        v34 = (a2 + v28);
        v35 = v73;
        do
        {
          v31(v35, v34, v6);
          v36 = sub_1CFC9C348();
          v35 = v73;
          v37 = v36;
          v39 = v38;
          (*v68)(v73, v6);
          v72[0] = v33;
          v41 = *(v33 + 16);
          v40 = *(v33 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_1CFBCAA4C((v40 > 1), v41 + 1, 1);
            v35 = v73;
            v33 = v72[0];
          }

          *(v33 + 16) = v41 + 1;
          v42 = v33 + 16 * v41;
          *(v42 + 32) = v37;
          *(v42 + 40) = v39;
          v31 = v70;
          v34 += v69;
          --v32;
        }

        while (v32);
        v7 = v58;
        v3 = v62;
      }

      else
      {
        v33 = MEMORY[0x1E69E7CC0];
      }

      v43 = v63;
      v72[0] = sub_1CFC9C348();
      v72[1] = v44;
      MEMORY[0x1EEE9AC00](v72[0]);
      *(&v53 - 2) = v72;
      v45 = v67;
      v46 = sub_1CFC72FD8(sub_1CFC7F374, (&v53 - 4), v33);
      v67 = v45;

      v23 = v43;

      result = (*v68)(v43, v6);
      if (v46)
      {
        a2 = v59;
        v24 = v65;
        v22 = v66;
        v2 = v67;
      }

      else
      {
        v24 = v65;
        v22 = v66;
        if (v3 == v65)
        {
          a2 = v59;
        }

        else
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_34;
          }

          v47 = v66[2];
          if (v3 >= v47)
          {
            goto LABEL_35;
          }

          v48 = v70;
          v49 = v69 * v3;
          v50 = v61;
          result = (v70)(v56, &v61[v69 * v3], v6);
          if (v24 >= v47)
          {
            goto LABEL_36;
          }

          v48(v57, &v50[v64], v6);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1CFC829D4(v22);
          }

          v7 = v58;
          v51 = v22 + v60;
          v52 = *v55;
          result = (*v55)(v22 + v60 + v49, v57, v6);
          if (v24 >= v22[2])
          {
            goto LABEL_37;
          }

          result = v52(&v51[v64], v56, v6);
          *v54 = v22;
          a2 = v59;
          v23 = v63;
        }

        v2 = v67;
        v25 = __OFADD__(v3++, 1);
        if (v25)
        {
          goto LABEL_33;
        }
      }

      v25 = __OFADD__(v24, 1);
      v21 = v24 + 1;
      if (v25)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFC7F390(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1CFCA02B8() & 1;
  }
}

uint64_t sub_1CFC7F41C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE540, &qword_1CFCA4690);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC7F4A4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(sub_1CFC9C138() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1CFC9C448() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1CFC75814(v7, v8, a1);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1CFC7F5D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1CFC7F620(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1CFC7F690(uint64_t a1@<X0>, uint64_t a2@<X3>, char a3@<W4>, uint64_t a4@<X8>)
{
  v8 = sub_1CFC9E4E8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {

    sub_1CFC9FAE8();
    v12 = sub_1CFC9EB68();
    sub_1CFC9D858();

    sub_1CFC9E4D8();
    swift_getAtKeyPath();
    sub_1CFBBBBC0(a2, 0);
    (*(v9 + 8))(v11, v8);
    a2 = v13[1];
  }

  *a4 = a1;
  *(a4 + 8) = a2 == a1;
}

uint64_t sub_1CFC7F7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  LODWORD(v48) = a4;
  v53 = a5;
  v54 = sub_1CFC9E218();
  v56 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFEE8, &qword_1CFCA8938);
  v49 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFEF0, &qword_1CFCA8940);
  v52 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v51 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v50 = v45 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v55 = v45 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v47 = v45 - v20;
  v21 = swift_allocObject();
  v22 = a1;
  v46 = a1;
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  v23 = v48;
  LOBYTE(a1) = v48 & 1;
  *(v21 + 40) = v48 & 1;
  *(v21 + 48) = 0;
  v62 = 0;
  v63 = v22;
  v64 = a2;
  v65 = a3;
  v66 = v23 & 1;

  sub_1CFC7FE94(a3, a1);
  v48 = sub_1CFC7FEA0();
  sub_1CFC9F298();
  sub_1CFC9E208();
  v45[2] = sub_1CFBA57C0(&qword_1EC4EFF00, &qword_1EC4EFEE8, &qword_1CFCA8938, MEMORY[0x1E697D680]);
  v45[1] = sub_1CFC7FEF4();
  v24 = v10;
  v45[0] = v10;
  v25 = v54;
  sub_1CFC9EEC8();
  v26 = *(v56 + 8);
  v56 += 8;
  v26(v9, v25);
  v27 = *(v49 + 8);
  v27(v12, v24);
  v28 = swift_allocObject();
  v29 = v46;
  *(v28 + 16) = v46;
  *(v28 + 24) = a2;
  *(v28 + 32) = a3;
  *(v28 + 40) = a1;
  *(v28 + 48) = 1;
  v57 = 1;
  v58 = v29;
  v59 = a2;
  v60 = a3;
  v61 = a1;

  sub_1CFC7FE94(a3, a1);
  sub_1CFC9F298();
  sub_1CFC9E208();
  v30 = v54;
  v31 = v55;
  v32 = v45[0];
  sub_1CFC9EEC8();
  v26(v9, v30);
  v27(v12, v32);
  v33 = v52;
  v34 = *(v52 + 16);
  v35 = v50;
  v36 = v47;
  v34(v50, v47, v13);
  v37 = v51;
  v34(v51, v31, v13);
  v38 = v53;
  *v53 = 0;
  *(v38 + 8) = 1;
  v39 = v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF08, &qword_1CFCA8948);
  v34(&v39[v40[12]], v35, v13);
  v41 = &v39[v40[16]];
  *v41 = 0;
  v41[8] = 1;
  v34(&v39[v40[20]], v37, v13);
  v42 = &v39[v40[24]];
  *v42 = 0;
  v42[8] = 1;
  v43 = *(v33 + 8);
  v43(v55, v13);
  v43(v36, v13);
  v43(v37, v13);
  return (v43)(v35, v13);
}

uint64_t sub_1CFC7FDE4@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  *a2 = sub_1CFC9E588();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFEE0, &qword_1CFCA8930);
  return sub_1CFC7F7F0(v4, v5, v6, v7, (a2 + *(v8 + 44)));
}

double sub_1CFC7FE94(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1CFC7FEA0()
{
  result = qword_1EC4EFEF8;
  if (!qword_1EC4EFEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EFEF8);
  }

  return result;
}

unint64_t sub_1CFC7FEF4()
{
  result = qword_1EC4EED00;
  if (!qword_1EC4EED00)
  {
    sub_1CFC9E218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EED00);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{

  sub_1CFBBBBC0(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CFC7FFA0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v3 = a2;
  v59 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF28, &qword_1CFCA89D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v48 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF30, &qword_1CFCA89E0);
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v48 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF38, &qword_1CFCA89E8);
  v56 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  sub_1CFC9F4E8();
  v62 = a1;
  v63 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF40, &qword_1CFCA89F0);
  sub_1CFC80B1C();
  v18 = v17;
  v19 = v7;
  sub_1CFC9F508();
  v64 = sub_1CFC806AC(a1);
  v65 = v20;
  sub_1CFBB4460();
  v21 = sub_1CFC9EDF8();
  v23 = v22;
  v25 = v24;
  sub_1CFC9ECD8();
  v26 = sub_1CFC9EDC8();
  v52 = v27;
  v53 = v26;
  v50 = v28;
  v54 = v29;

  sub_1CFBB44C0(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  sub_1CFC807CC(a1, v3);
  if (v3)
  {
    v30 = sub_1CFC9F108();
  }

  else
  {
    v30 = sub_1CFC9F188();
  }

  v31 = v30;
  sub_1CFBCCE88(v19, v11, &qword_1EC4EFF28, &qword_1CFCA89D8);
  *&v11[*(v55 + 36)] = v31;
  v32 = v57;
  sub_1CFBCCE88(v11, v57, &qword_1EC4EFF30, &qword_1CFCA89E0);
  v33 = v56;
  v34 = *(v56 + 16);
  v35 = v60;
  v36 = v61;
  v49 = v18;
  v34(v60, v18, v61);
  v37 = v58;
  sub_1CFBA29FC(v32, v58, &qword_1EC4EFF30, &qword_1CFCA89E0);
  v38 = v59;
  v34(v59, v35, v36);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF50, &qword_1CFCA8A28);
  v40 = &v38[*(v39 + 48)];
  v42 = v52;
  v41 = v53;
  *v40 = v53;
  *(v40 + 1) = v42;
  v43 = v50 & 1;
  v40[16] = v50 & 1;
  v44 = KeyPath;
  *(v40 + 3) = v54;
  *(v40 + 4) = v44;
  v40[40] = 1;
  sub_1CFBA29FC(v37, &v38[*(v39 + 64)], &qword_1EC4EFF30, &qword_1CFCA89E0);
  sub_1CFBB45F4(v41, v42, v43);

  sub_1CFBC2FB0(v32, &qword_1EC4EFF30, &qword_1CFCA89E0);
  v45 = *(v33 + 8);
  v46 = v61;
  v45(v49, v61);
  sub_1CFBC2FB0(v37, &qword_1EC4EFF30, &qword_1CFCA89E0);
  sub_1CFBB44C0(v41, v42, v43);

  return (v45)(v60, v46);
}

uint64_t sub_1CFC8044C@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1CFC9F1B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 > 1)
  {
    result = sub_1CFCA01D8();
    __break(1u);
  }

  else
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    sub_1CFC9F1F8();
    (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
    v12 = sub_1CFC9F1E8();

    (*(v7 + 8))(v9, v6);
    sub_1CFC9F538();
    sub_1CFC9DF68();
    v16 = 1;
    *&v15[8] = v17;
    *&v15[24] = v18;
    *&v15[40] = v19;
    if (a2)
    {
      result = sub_1CFC9F108();
    }

    else
    {
      result = sub_1CFC9F188();
    }

    *a3 = v12;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
    v14 = *&v15[18];
    *(a3 + 18) = *&v15[2];
    *(a3 + 34) = v14;
    *(a3 + 50) = *&v15[34];
    *(a3 + 64) = *&v15[48];
    *(a3 + 72) = result;
  }

  return result;
}