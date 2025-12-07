uint64_t sub_1C6E207D0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v4 = a2[1];
  if (*(a3 + 16) && (v9 = sub_1C6DEC784(*a2, a2[1]), (v10 & 1) != 0))
  {
    v11 = *(a3 + 56) + 24 * v9;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(a4 + OBJC_IVAR____TtC18ComputationalGraph21AliasedModelContainer_inputAliasMap);
    v16 = *(v15 + 16);
    sub_1C6E00CBC(*v11, v13, v14);
    if (v16 && (v17 = sub_1C6DEC784(v5, v4), (v18 & 1) != 0))
    {
      v19 = (*(v15 + 56) + 16 * v17);
      v20 = *v19;
      v21 = v19[1];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *a1;
      sub_1C6E08DA4(v12, v13, v14, v20, v21, isUniquelyReferenced_nonNull_native);

      *a1 = v30;
    }

    else
    {
      if (qword_1EDEF8F80 != -1)
      {
        swift_once();
      }

      v27 = qword_1EDEF8F88;
      v28 = sub_1C6EE4EC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1C6EE6590;
      *(v29 + 56) = MEMORY[0x1E69E6158];
      *(v29 + 64) = sub_1C6DF10E0();
      *(v29 + 32) = v5;
      *(v29 + 40) = v4;

      sub_1C6EE4730("AliasedModelContainer missing input alias for name %{public}@", 61, 2, &dword_1C6DE9000, v27, v28, v29);

      return sub_1C6E00C60(v12, v13, v14);
    }
  }

  else
  {
    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
    }

    v24 = qword_1EDEF8F88;
    v25 = sub_1C6EE4EC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1C6EE6590;
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = sub_1C6DF10E0();
    *(v26 + 32) = v5;
    *(v26 + 40) = v4;

    sub_1C6EE4730("AliasedModelContainer missing feature for name %{public}@", 57, 2, &dword_1C6DE9000, v24, v25, v26);
  }

  return result;
}

void *sub_1C6E20AB0(void *a1, uint64_t (*a2)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(v2 + *a1);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C6E03038(*(v3 + 16), 0);
  v7 = a2(&v10, (v6 + 4), v4, v3);
  v8 = v10;

  sub_1C6E20D5C(v8);
  if (v7 != v4)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

uint64_t sub_1C6E20B78()
{
}

uint64_t sub_1C6E20BC8()
{

  sub_1C6E20D64(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  sub_1C6E00DCC(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AliasedModelContainer(uint64_t a1)
{
  result = qword_1EDEF8208;
  if (!qword_1EDEF8208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E20D64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E20DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v5 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0) - 8);
  v6 = *(v5 + 72);
  v7 = (((*(v5 + 80) + 32) & ~*(v5 + 80)) + a1 + 32);
  while (1)
  {
    v8 = *(v7 - 1);
    if (*v7 != 1)
    {
      break;
    }

    result = 0;
    v11 = *(v7 - 4);
    v10 = *(v7 - 3);
    if (v8 <= 3)
    {
      if (v8 <= 1)
      {
        if (v8 != 1)
        {
          return result;
        }

LABEL_24:
        if (!*(a2 + 16))
        {
          return 0;
        }

        v24 = sub_1C6DEC784(v11, v10);
        v26 = v25;

        if ((v26 & 1) == 0)
        {
          return 0;
        }

        v27 = *(a2 + 56) + 24 * v24;
        v28 = (*(v27 + 8) >> 60) & 3;
        v29 = *(v27 + 16) ? 4 : 0;
        if ((v28 | v29) != 3)
        {
          return 0;
        }

        goto LABEL_4;
      }

      if (v8 != 2)
      {
        return result;
      }

      if (!*(a2 + 16))
      {
        return 0;
      }

      v36 = sub_1C6DEC784(v11, v10);
      v38 = v37;

      if ((v38 & 1) == 0)
      {
        return 0;
      }

      v39 = *(a2 + 56) + 24 * v36;
      v40 = (*(v39 + 8) >> 60) & 3;
      v41 = *(v39 + 16) ? 4 : 0;
      if ((v40 | v41) != 1)
      {
        return 0;
      }
    }

    else if (v8 <= 5)
    {
      if (v8 != 4)
      {
        return result;
      }

      if (!*(a2 + 16))
      {
        return 0;
      }

      v30 = sub_1C6DEC784(v11, v10);
      v32 = v31;

      if ((v32 & 1) == 0)
      {
        return 0;
      }

      v33 = *(a2 + 56) + 24 * v30;
      v34 = (*(v33 + 8) >> 60) & 3;
      v35 = *(v33 + 16) ? 4 : 0;
      if (v34 | v35)
      {
        return 0;
      }
    }

    else
    {
      if (v8 == 6)
      {
        goto LABEL_24;
      }

      v12 = *(a2 + 16);

      if (!v12)
      {
        goto LABEL_51;
      }

      v13 = sub_1C6DEC784(v11, v10);
      if ((v14 & 1) != 0 && ((v15 = *(a2 + 56) + 24 * v13, v16 = (*(v15 + 8) >> 60) & 3, !*(v15 + 16)) ? (v17 = 0) : (v17 = 4), (v16 | v17) == 4))
      {
      }

      else
      {
        if (!*(a2 + 16))
        {
          goto LABEL_51;
        }

        v18 = sub_1C6DEC784(v11, v10);
        v20 = v19;

        if ((v20 & 1) == 0)
        {
          return 0;
        }

        v21 = *(a2 + 56) + 24 * v18;
        v22 = (*(v21 + 8) >> 60) & 3;
        v23 = *(v21 + 16) ? 4 : 0;
        if ((v22 | v23) != 5)
        {
          return 0;
        }
      }
    }

LABEL_4:
    v7 += v6;
    if (!--v2)
    {
      return 1;
    }
  }

  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  sub_1C6EE4ED0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v42 = swift_allocObject();
  v43 = MEMORY[0x1E69E6530];
  *(v42 + 16) = xmmword_1C6EE6590;
  v44 = MEMORY[0x1E69E65A8];
  *(v42 + 56) = v43;
  *(v42 + 64) = v44;
  *(v42 + 32) = v8;
  sub_1C6EE4730("Encountered unrecognized ProtoModelIODType %lu", v45);
LABEL_51:

  return 0;
}

uint64_t sub_1C6E21148(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v36 = MEMORY[0x1E69E7CC0];
  sub_1C6E15B50(0, v1, 0);
  v2 = v36;
  v4 = v3 + 64;
  result = sub_1C6EE50D0();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v29 = v3 + 72;
  v30 = v1;
  v31 = v8;
  v32 = v3 + 64;
  v33 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v34 = v7;
    v11 = *(v3 + 56);
    v12 = (*(v3 + 48) + 16 * v6);
    v13 = v12[1];
    v35 = *v12;
    v14 = v11 + 24 * v6;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);

    sub_1C6E00CBC(v15, v16, v17);

    sub_1C6E00CBC(v15, v16, v17);

    result = sub_1C6E00C60(v15, v16, v17);
    v19 = *(v36 + 16);
    v18 = *(v36 + 24);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      result = sub_1C6E15B50((v18 > 1), v19 + 1, 1);
      v20 = v19 + 1;
    }

    *(v36 + 16) = v20;
    v21 = v36 + 40 * v19;
    *(v21 + 32) = v35;
    *(v21 + 40) = v13;
    *(v21 + 48) = v15;
    *(v21 + 56) = v16;
    *(v21 + 64) = v17;
    v3 = v33;
    v9 = 1 << *(v33 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = v32;
    v22 = *(v32 + 8 * v10);
    if ((v22 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v31;
    if (v31 != *(v33 + 36))
    {
      goto LABEL_26;
    }

    v23 = v22 & (-2 << (v6 & 0x3F));
    if (v23)
    {
      v9 = __clz(__rbit64(v23)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v10 << 6;
      v25 = v10 + 1;
      v26 = (v29 + 8 * v10);
      while (v25 < (v9 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_1C6E2B8CC(v6, v31, 0);
          v9 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_1C6E2B8CC(v6, v31, 0);
    }

LABEL_4:
    v7 = v34 + 1;
    v6 = v9;
    if (v34 + 1 == v30)
    {
      return v2;
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
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

double Features.subscript.getter@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (v5 = sub_1C6E0231C(*a1, a1[1]), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 24 * v5;
    v8 = *v7;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    *a2 = *v7;
    *(a2 + 8) = v9;
    *(a2 + 16) = v10;

    sub_1C6E00CBC(v8, v9, v10);
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_1C6EE7FC0;
    *(a2 + 16) = -1;
  }

  return result;
}

uint64_t Features.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  if ((~v3 & 0x3000000000000000) != 0 || v4 != 255)
  {
    v8 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10[0] = *v2;
    *v2 = 0x8000000000000000;
    sub_1C6E08F7C(v8, v3, v4 & 1, v6, v5, isUniquelyReferenced_nonNull_native);

    *v2 = v10[0];
  }

  else
  {
    sub_1C6E29064(*a2, a2[1], v10);

    return sub_1C6E0D408(v10[0], v10[1], v11);
  }

  return result;
}

void *Features.keys.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1C6E0304C(v2, 0);
  v4 = sub_1C6E0AE6C(&v7, v3 + 4, v2, v1);
  v5 = v7;

  sub_1C6E0D45C(v5);
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t FeatureKey.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static FeatureKey.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C6EE54B0();
  }
}

uint64_t sub_1C6E216B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C6EE54B0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C6E21744(uint64_t a1)
{
  v2 = sub_1C6E2AD0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E21780(uint64_t a1)
{
  v2 = sub_1C6E2AD0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureKey.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C80, &qword_1C6EE8430);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6E2AD0C();
  sub_1C6EE55C0();
  sub_1C6EE5410();
  return (*(v3 + 8))(v5, v2);
}

uint64_t FeatureKey.hashValue.getter()
{
  sub_1C6EE5580();
  sub_1C6EE4B30();
  return sub_1C6EE55A0();
}

uint64_t FeatureKey.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C90, &qword_1C6EE8438);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6E2AD0C();
  sub_1C6EE55B0();
  if (!v2)
  {
    v9 = sub_1C6EE53A0();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C6E21AD8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C80, &qword_1C6EE8430);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6E2AD0C();
  sub_1C6EE55C0();
  sub_1C6EE5410();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C6E21C14()
{
  sub_1C6EE5580();
  sub_1C6EE4B30();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E21C68(uint64_t a1)
{
  sub_1C6EE5580();
  sub_1C6EE4B30();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E21CB0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C6EE54B0();
  }
}

BOOL sub_1C6E21CEC(uint64_t a1, uint64_t a2)
{
  v115[3] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v110 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  while (2)
  {
    if (v7)
    {
      v9 = __clz(__rbit64(v7));
      v112 = (v7 - 1) & v7;
      goto LABEL_13;
    }

    v10 = v3;
    do
    {
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        goto LABEL_167;
      }

      if (v3 >= v8)
      {
        return 1;
      }

      v11 = *(v4 + 8 * v3);
      ++v10;
    }

    while (!v11);
    v9 = __clz(__rbit64(v11));
    v112 = (v11 - 1) & v11;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(a1 + 56) + 24 * v12;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);

    v113 = v17;
    v20 = v17;
    v21 = v19;
    sub_1C6E00CBC(v18, v20, v19);
    v22 = v15 == 0;
    if (!v15)
    {
      return v22;
    }

    v23 = sub_1C6E0231C(v14, v15);
    v25 = v24;

    v26 = v21;
    if ((v25 & 1) == 0)
    {
      goto LABEL_162;
    }

    v27 = *(v2 + 56) + 24 * v23;
    v29 = *v27;
    v28 = *(v27 + 8);
    v30 = *(v27 + 16);
    if (v30)
    {
      v31 = 4;
    }

    else
    {
      v31 = 0;
    }

    v32 = (v28 >> 60) & 3 | v31;
    if (v32 > 2)
    {
      if (v32 <= 4)
      {
        v47 = v32 == 3;
        v33 = (v113 >> 60) & 3;
        if (!v47)
        {
          if (v21)
          {
            v62 = 4;
          }

          else
          {
            v62 = 0;
          }

          if ((v62 | v33) != 4)
          {
            goto LABEL_159;
          }

          v63 = *(v29 + 16);
          if (v63 != *(v18 + 16))
          {
            goto LABEL_159;
          }

          if (v63)
          {
            if (v29 == v18)
            {
              v64 = v30;
              v65 = v28;

              v66 = v18;
            }

            else
            {
              v73 = (v29 + 32);
              v74 = (v18 + 32);
              do
              {
                if (*v73 != *v74)
                {
                  goto LABEL_158;
                }

                ++v73;
                ++v74;
                --v63;
              }

              while (v63);
              v64 = v30;
              v65 = v28;
              sub_1C6E00CBC(v29, v28, v30);
              v66 = v29;
            }
          }

          else
          {
            v64 = v30;
            v65 = v28;
          }

          sub_1C6E00C60(v66, v65, v64);
          v52 = v18;
          v70 = v113;
LABEL_138:
          sub_1C6E00C60(v52, v70, v26);
          a1 = v110;
          v2 = a2;
          v7 = v112;
          continue;
        }

        if (v21)
        {
          v34 = 4;
        }

        else
        {
          v34 = 0;
        }

        if ((v34 | v33) == 3)
        {
          v35 = v30;
          v36 = v28;
          sub_1C6E00CBC(v29, v28, v30);
          sub_1C6E00CBC(v29, v36, v35);
          sub_1C6E00CBC(v18, v113, v21);
          v108 = sub_1C6E597C0(v29, v18);
          sub_1C6E00C60(v18, v113, v21);
          sub_1C6E00C60(v29, v36, v35);
          sub_1C6E00C60(v29, v36, v35);
          sub_1C6E00C60(v18, v113, v21);
          a1 = v110;
          v2 = a2;
          v7 = v112;
          if (v108)
          {
            continue;
          }

          return v22;
        }

LABEL_159:
        v98 = v30;
        v99 = v28;

        goto LABEL_160;
      }

      v37 = v113;
      if (v32 != 5)
      {
        if (v21)
        {
          v67 = 4;
        }

        else
        {
          v67 = 0;
        }

        if ((v67 | (v113 >> 60) & 3) == 6 && v18 == 0 && v113 == 0x2000000000000000)
        {
          sub_1C6E00C60(v29, v28, v30);
          v52 = 0;
          v70 = 0x2000000000000000;
          goto LABEL_138;
        }

        goto LABEL_161;
      }

      v43 = v28 & 0xCFFFFFFFFFFFFFFFLL;
      if (v21)
      {
        v44 = 4;
      }

      else
      {
        v44 = 0;
      }

      if ((v44 | (v113 >> 60) & 3) == 5)
      {
        v45 = v28 >> 62;
        v46 = v113 >> 62;
        if (v28 >> 62 == 3)
        {
          if (v29)
          {
            v47 = 0;
          }

          else
          {
            v47 = v43 == 0xC000000000000000;
          }

          v48 = 0;
          v49 = v47 && v113 >> 62 == 3;
          if (v49 && !v18 && (v113 & 0xCFFFFFFFFFFFFFFFLL) == 0xC000000000000000)
          {
            v50 = v30;
            v51 = v28;
            sub_1C6E00D18(0, 0xC000000000000000);
            sub_1C6E00C60(0, v51, v50);
            v52 = 0;
LABEL_137:
            v70 = v37;
            goto LABEL_138;
          }

          goto LABEL_119;
        }

        if (v45 <= 1)
        {
          if (!v45)
          {
            v48 = BYTE6(v28);
            goto LABEL_119;
          }

          LODWORD(v48) = HIDWORD(v29) - v29;
          if (!__OFSUB__(HIDWORD(v29), v29))
          {
            v48 = v48;
            goto LABEL_119;
          }

LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
        }

        if (v45 != 2)
        {
          v48 = 0;
          goto LABEL_119;
        }

        v76 = *(v29 + 16);
        v75 = *(v29 + 24);
        v77 = __OFSUB__(v75, v76);
        v48 = v75 - v76;
        if (v77)
        {
          goto LABEL_170;
        }

LABEL_119:
        if (v46 <= 1)
        {
          if (!v46)
          {
            v78 = BYTE6(v113);
            goto LABEL_128;
          }

          LODWORD(v78) = HIDWORD(v18) - v18;
          if (!__OFSUB__(HIDWORD(v18), v18))
          {
            v78 = v78;
            goto LABEL_128;
          }

LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        if (v46 == 2)
        {
          v80 = *(v18 + 16);
          v79 = *(v18 + 24);
          v77 = __OFSUB__(v79, v80);
          v78 = v79 - v80;
          if (v77)
          {
            goto LABEL_168;
          }

LABEL_128:
          if (v48 == v78)
          {
            if (v48 >= 1)
            {
              v109 = v113 & 0xCFFFFFFFFFFFFFFFLL;
              if (v45 > 1)
              {
                if (v45 != 2)
                {
                  memset(v115, 0, 14);
                  v95 = v30;
                  v96 = v28;
                  sub_1C6E00CBC(v29, v28, v30);
                  sub_1C6E00CBC(v29, v96, v95);
                  sub_1C6E00CBC(v18, v113, v26);
                  sub_1C6E6B0F4(v115, v18, v109, &v114);
                  sub_1C6E00C60(v18, v113, v26);
                  sub_1C6E00C60(v29, v96, v95);
                  sub_1C6E00C60(v29, v96, v95);
                  sub_1C6E00C60(v18, v113, v26);
                  a1 = v110;
                  v2 = a2;
                  v7 = v112;
                  if (v114)
                  {
                    continue;
                  }

                  return v22;
                }

                v102 = *(v29 + 24);
                v104 = *(v29 + 16);
                v84 = v30;
                v107 = v28;
                sub_1C6E00CBC(v29, v28, v30);
                v105 = v29;
                v106 = v84;
                sub_1C6E00CBC(v29, v107, v84);
                sub_1C6E00CBC(v18, v113, v21);
                v85 = sub_1C6EE3F90();
                if (v85)
                {
                  v86 = v85;
                  v87 = sub_1C6EE3FC0();
                  v88 = v104;
                  if (__OFSUB__(v104, v87))
                  {
                    goto LABEL_173;
                  }

                  v101 = v104 - v87 + v86;
                }

                else
                {
                  v101 = 0;
                  v88 = v104;
                }

                if (__OFSUB__(v102, v88))
                {
                  goto LABEL_172;
                }

                sub_1C6EE3FB0();
                v97 = v101;
              }

              else
              {
                if (!v45)
                {
                  v115[0] = v29;
                  LOWORD(v115[1]) = v28;
                  BYTE2(v115[1]) = BYTE2(v28);
                  BYTE3(v115[1]) = BYTE3(v28);
                  BYTE4(v115[1]) = BYTE4(v28);
                  BYTE5(v115[1]) = BYTE5(v28);
                  v81 = v30;
                  v82 = v28;
                  sub_1C6E00CBC(v29, v28, v30);
                  sub_1C6E00CBC(v29, v82, v81);
                  sub_1C6E00CBC(v18, v113, v26);
                  sub_1C6E6B0F4(v115, v18, v109, &v114);
                  sub_1C6E00C60(v18, v113, v26);
                  sub_1C6E00C60(v29, v82, v81);
                  sub_1C6E00C60(v29, v82, v81);
                  sub_1C6E00C60(v18, v113, v26);
                  v83 = v114;
                  goto LABEL_155;
                }

                v103 = v29;
                if (v29 >> 32 < v29)
                {
                  goto LABEL_171;
                }

                v89 = v30;
                v90 = v28;
                sub_1C6E00CBC(v29, v28, v30);
                v105 = v29;
                v106 = v89;
                sub_1C6E00CBC(v29, v90, v89);
                sub_1C6E00CBC(v18, v113, v21);
                v91 = sub_1C6EE3F90();
                v107 = v90;
                if (v91)
                {
                  v92 = v91;
                  v93 = sub_1C6EE3FC0();
                  if (__OFSUB__(v103, v93))
                  {
                    goto LABEL_174;
                  }

                  v94 = v103 - v93 + v92;
                }

                else
                {
                  v94 = 0;
                }

                sub_1C6EE3FB0();
                v97 = v94;
              }

              sub_1C6E6B0F4(v97, v18, v109, v115);
              sub_1C6E00C60(v18, v113, v21);
              sub_1C6E00C60(v105, v107, v106);
              sub_1C6E00C60(v105, v107, v106);
              sub_1C6E00C60(v18, v113, v21);
              v83 = v115[0];
LABEL_155:
              a1 = v110;
              v2 = a2;
              v7 = v112;
              if (v83)
              {
                continue;
              }

              return v22;
            }

            goto LABEL_134;
          }
        }

        else if (!v48)
        {
LABEL_134:
          v59 = v30;
          v60 = v28;
          sub_1C6E00D18(v29, v43);
LABEL_135:
          v61 = v29;
          goto LABEL_136;
        }
      }

      v98 = v30;
      v99 = v28;
      sub_1C6E00D18(v29, v43);
      goto LABEL_160;
    }

    break;
  }

  if (!v32)
  {
    v37 = v113;
    if (v21)
    {
      v53 = 4;
    }

    else
    {
      v53 = 0;
    }

    if (v53 | (v113 >> 60) & 3)
    {
      goto LABEL_159;
    }

    v54 = *(v29 + 16);
    if (v54 != *(v18 + 16))
    {
      goto LABEL_159;
    }

    if (v54)
    {
      if (v29 == v18)
      {
        goto LABEL_77;
      }

      v55 = (v29 + 32);
      v56 = (v18 + 32);
      do
      {
        if (*v55 != *v56)
        {
          goto LABEL_158;
        }

        ++v55;
        ++v56;
        --v54;
      }

      while (v54);
LABEL_106:
      v59 = v30;
      v60 = v28;
      sub_1C6E00CBC(v29, v28, v30);
      goto LABEL_135;
    }

LABEL_78:
    v59 = v30;
    v60 = v28;

LABEL_136:
    sub_1C6E00C60(v61, v60, v59);
    v52 = v18;
    goto LABEL_137;
  }

  v47 = v32 == 1;
  v37 = v113;
  v38 = (v113 >> 60) & 3;
  if (v47)
  {
    if (v21)
    {
      v39 = 4;
    }

    else
    {
      v39 = 0;
    }

    if ((v39 | v38) != 1)
    {
      goto LABEL_159;
    }

    v40 = *(v29 + 16);
    if (v40 != *(v18 + 16))
    {
      goto LABEL_159;
    }

    if (v40)
    {
      if (v29 == v18)
      {
        goto LABEL_77;
      }

      v41 = (v29 + 32);
      v42 = (v18 + 32);
      while (*v41 == *v42)
      {
        ++v41;
        ++v42;
        if (!--v40)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_158;
    }

    goto LABEL_78;
  }

  if (v21)
  {
    v57 = 4;
  }

  else
  {
    v57 = 0;
  }

  if ((v57 | v38) != 2)
  {
    goto LABEL_159;
  }

  v58 = *(v29 + 16);
  if (v58 != *(v18 + 16))
  {
    goto LABEL_159;
  }

  if (!v58)
  {
    goto LABEL_78;
  }

  if (v29 == v18)
  {
LABEL_77:
    v59 = v30;
    v60 = v28;

    v61 = v18;
    goto LABEL_136;
  }

  v71 = (v29 + 32);
  v72 = (v18 + 32);
  while (*v71 == *v72)
  {
    ++v71;
    ++v72;
    if (!--v58)
    {
      goto LABEL_106;
    }
  }

LABEL_158:
  v98 = v30;
  v99 = v28;
  sub_1C6E00CBC(v29, v28, v30);
LABEL_160:
  v28 = v99;
  v30 = v98;
LABEL_161:
  sub_1C6E00C60(v29, v28, v30);
LABEL_162:
  sub_1C6E00C60(v18, v113, v21);
  return 0;
}

uint64_t sub_1C6E227C4(uint64_t a1, uint64_t a2)
{
  v85 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v4 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v71 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v68 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D20, &qword_1C6EE94E0);
  MEMORY[0x1EEE9AC00](v77);
  v10 = &v68 - v9;
  v76 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v83 = *(v76 - 8);
  v11 = MEMORY[0x1EEE9AC00](v76);
  v84 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v68 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v68 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D28, &qword_1C6EE8970);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = (&v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v18);
  v78 = (&v68 - v22);
  v79 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v79 + 16))
  {
    return 0;
  }

  v23 = 0;
  v72 = a1;
  v24 = *(a1 + 64);
  v69 = a1 + 64;
  v70 = v8;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v28 = (v25 + 63) >> 6;
  v82 = (v4 + 48);
  v29 = &qword_1C6EE7840;
  v73 = v20;
  v74 = v28;
  while (v27)
  {
    v81 = (v27 - 1) & v27;
    v32 = __clz(__rbit64(v27)) | (v23 << 6);
LABEL_17:
    v38 = (*(v72 + 48) + 16 * v32);
    v40 = *v38;
    v39 = v38[1];
    v41 = v75;
    sub_1C6E2B79C(*(v72 + 56) + *(v83 + 72) * v32, v75, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D30, &qword_1C6EE8978);
    v43 = *(v42 + 48);
    *v20 = v40;
    v20[1] = v39;
    sub_1C6E2B804(v41, v20 + v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    (*(*(v42 - 8) + 56))(v20, 0, 1, v42);

    v35 = v78;
LABEL_18:
    sub_1C6E2B734(v20, v35, &qword_1EC1F7D28, &qword_1C6EE8970);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D30, &qword_1C6EE8978);
    v45 = (*(*(v44 - 8) + 48))(v35, 1, v44);
    v80 = v45 == 1;
    if (v45 == 1)
    {
      return v80;
    }

    v46 = v29;
    v47 = v82;
    v48 = v10;
    v49 = v85;
    v50 = *(v44 + 48);
    v51 = *v35;
    v52 = v35[1];
    sub_1C6E2B804(v35 + v50, v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v53 = v79;
    v54 = sub_1C6DEC784(v51, v52);
    v55 = v15;
    v57 = v56;

    if ((v57 & 1) == 0)
    {
      goto LABEL_31;
    }

    v58 = v84;
    sub_1C6E2B79C(*(v53 + 56) + *(v83 + 72) * v54, v84, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v59 = *(v77 + 48);
    v10 = v48;
    v60 = v48;
    v29 = v46;
    sub_1C6E2B624(v58, v60, &qword_1EC1F7A98, v46);
    sub_1C6E2B624(v55, &v10[v59], &qword_1EC1F7A98, v46);
    v61 = *v47;
    v15 = v55;
    if ((*v47)(v10, 1, v49) == 1)
    {
      if (v61(&v10[v59], 1, v85) != 1)
      {
        goto LABEL_29;
      }

      v29 = v46;
      sub_1C6E2B68C(v10, &qword_1EC1F7A98, v46);
    }

    else
    {
      v62 = v10;
      v63 = v10;
      v64 = v70;
      sub_1C6E2B624(v62, v70, &qword_1EC1F7A98, v46);
      if (v61((v63 + v59), 1, v85) == 1)
      {
        sub_1C6E2B86C(v64, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        v10 = v63;
        v15 = v55;
LABEL_29:
        sub_1C6E2B68C(v10, &qword_1EC1F7D20, &qword_1C6EE94E0);
LABEL_30:
        sub_1C6E2B86C(v84, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
        v55 = v15;
LABEL_31:
        sub_1C6E2B86C(v55, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
        return 0;
      }

      v65 = v71;
      sub_1C6E2B804(v63 + v59, v71, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      v66 = sub_1C6EA1F6C(v64, v65);
      sub_1C6E2B86C(v65, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      sub_1C6E2B86C(v64, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      sub_1C6E2B68C(v63, &qword_1EC1F7A98, v46);
      v10 = v63;
      v15 = v55;
      if ((v66 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    sub_1C6EE4430();
    sub_1C6E2B6EC(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v30 = v84;
    v31 = sub_1C6EE4A50();
    sub_1C6E2B86C(v30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    result = sub_1C6E2B86C(v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v20 = v73;
    v28 = v74;
    v27 = v81;
    if ((v31 & 1) == 0)
    {
      return v80;
    }
  }

  if (v28 <= v23 + 1)
  {
    v33 = v23 + 1;
  }

  else
  {
    v33 = v28;
  }

  v34 = v33 - 1;
  v35 = v78;
  while (1)
  {
    v36 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v36 >= v28)
    {
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D30, &qword_1C6EE8978);
      (*(*(v67 - 8) + 56))(v20, 1, 1, v67);
      v81 = 0;
      v23 = v34;
      goto LABEL_18;
    }

    v37 = *(v69 + 8 * v36);
    ++v23;
    if (v37)
    {
      v81 = (v37 - 1) & v37;
      v32 = __clz(__rbit64(v37)) | (v36 << 6);
      v23 = v36;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E23014(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 4 * v12);
    v14 = (*(v3 + 56) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = sub_1C6E023B8(v13);
    if (v18)
    {
      v19 = (*(a2 + 56) + 16 * v17);
      result = *v19;
      if (*v19 == v15 && v19[1] == v16)
      {
        continue;
      }

      result = sub_1C6EE54B0();
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E2313C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE43E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D48, &qword_1C6EE8990);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v103 - v9;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D50, &qword_1C6EE8998);
  MEMORY[0x1EEE9AC00](v114);
  v126 = &v103 - v11;
  v129 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  v127 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D58, &qword_1C6EE89A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v120 = (&v103 - v15);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D60, &qword_1C6EE89A8);
  MEMORY[0x1EEE9AC00](v121);
  v128 = &v103 - v16;
  v130 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v17 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v115 = (&v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = (&v103 - v20);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D70, &unk_1C6EF2EA0);
  MEMORY[0x1EEE9AC00](v122);
  v123 = &v103 - v22;
  v23 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  v132 = *(v23 - 8);
  v133 = v23;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v135 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v134 = &v103 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v118 = &v103 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D78, &unk_1C6EE89C0);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = (&v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v30);
  v124 = (&v103 - v34);
  v131 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v131 + 16))
  {
    return 0;
  }

  v106 = v10;
  v104 = v7;
  v109 = v4;
  v35 = 0;
  v36 = *(a1 + 64);
  v107 = a1 + 64;
  v37 = 1 << *(a1 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v36;
  v40 = (v37 + 63) >> 6;
  v116 = (v17 + 48);
  v113 = (v127 + 48);
  v108 = (v5 + 48);
  v103 = (v5 + 32);
  v105 = (v5 + 8);
  v119 = v21;
  v110 = v40;
  v112 = a1;
  v111 = v32;
  v117 = v13;
  while (v39)
  {
    v43 = __clz(__rbit64(v39));
    v44 = (v39 - 1) & v39;
    v45 = v43 | (v35 << 6);
LABEL_18:
    v50 = (*(a1 + 48) + 16 * v45);
    v52 = *v50;
    v51 = v50[1];
    v53 = *(a1 + 56) + *(v132 + 72) * v45;
    v54 = v118;
    sub_1C6E2B79C(v53, v118, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77F8, &unk_1C6EE69B0);
    v56 = *(v55 + 48);
    *v32 = v52;
    v32[1] = v51;
    sub_1C6E2B804(v54, v32 + v56, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
    (*(*(v55 - 8) + 56))(v32, 0, 1, v55);

LABEL_19:
    v57 = v124;
    sub_1C6E2B734(v32, v124, &qword_1EC1F7D78, &unk_1C6EE89C0);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77F8, &unk_1C6EE69B0);
    v59 = (*(*(v58 - 8) + 48))(v57, 1, v58) == 1;
    result = v59;
    if (v59)
    {
      return result;
    }

    LODWORD(v127) = v59;
    v60 = *(v58 + 48);
    v61 = v131;
    v62 = v57;
    v64 = *v57;
    v63 = v57[1];
    v65 = v134;
    sub_1C6E2B804(v62 + v60, v134, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
    v66 = sub_1C6DEC784(v64, v63);
    LOBYTE(v64) = v67;

    if ((v64 & 1) == 0)
    {
      goto LABEL_50;
    }

    v125 = v44;
    v68 = v135;
    sub_1C6E2B79C(*(v61 + 56) + *(v132 + 72) * v66, v135, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
    v69 = *(v133 + 20);
    v70 = v123;
    v71 = *(v122 + 48);
    sub_1C6E2B624(v68 + v69, v123, &qword_1EC1F7D68, &unk_1C6EE89B0);
    sub_1C6E2B624(v65 + v69, v70 + v71, &qword_1EC1F7D68, &unk_1C6EE89B0);
    v72 = *v116;
    v73 = v130;
    if ((*v116)(v70, 1, v130) == 1)
    {
      v74 = v72(v70 + v71, 1, v73);
      v75 = v117;
      v76 = v129;
      if (v74 != 1)
      {
        goto LABEL_40;
      }

      sub_1C6E2B68C(v70, &qword_1EC1F7D68, &unk_1C6EE89B0);
    }

    else
    {
      v77 = v119;
      sub_1C6E2B624(v70, v119, &qword_1EC1F7D68, &unk_1C6EE89B0);
      v78 = v72(v70 + v71, 1, v73);
      v75 = v117;
      v76 = v129;
      if (v78 == 1)
      {
        sub_1C6E2B86C(v77, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
LABEL_40:
        v101 = &qword_1EC1F7D70;
        v102 = &unk_1C6EF2EA0;
        goto LABEL_48;
      }

      v79 = v115;
      sub_1C6E2B804(v70 + v71, v115, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      if ((sub_1C6E227C4(*v77, *v79) & 1) == 0)
      {
        sub_1C6E2B86C(v79, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        sub_1C6E2B86C(v77, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        v101 = &qword_1EC1F7D68;
        v102 = &unk_1C6EE89B0;
        goto LABEL_48;
      }

      sub_1C6EE4430();
      sub_1C6E2B6EC(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v80 = sub_1C6EE4A50();
      sub_1C6E2B86C(v79, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      sub_1C6E2B86C(v119, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      sub_1C6E2B68C(v70, &qword_1EC1F7D68, &unk_1C6EE89B0);
      if ((v80 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    v81 = *(v133 + 24);
    v82 = *(v121 + 48);
    v70 = v128;
    sub_1C6E2B624(v135 + v81, v128, &qword_1EC1F7D58, &qword_1C6EE89A0);
    v83 = v134;
    sub_1C6E2B624(v134 + v81, v70 + v82, &qword_1EC1F7D58, &qword_1C6EE89A0);
    v84 = *v113;
    if ((*v113)(v70, 1, v76) == 1)
    {
      if (v84(v70 + v82, 1, v76) != 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v85 = v120;
      sub_1C6E2B624(v70, v120, &qword_1EC1F7D58, &qword_1C6EE89A0);
      if (v84(v70 + v82, 1, v76) == 1)
      {
        sub_1C6E2B86C(v85, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
LABEL_43:
        v101 = &qword_1EC1F7D60;
        v102 = &qword_1C6EE89A8;
        goto LABEL_48;
      }

      sub_1C6E2B804(v70 + v82, v75, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
      v86 = *(v76 + 24);
      v87 = *(v114 + 48);
      v88 = v126;
      sub_1C6E2B624(v85 + v86, v126, &qword_1EC1F7D48, &qword_1C6EE8990);
      sub_1C6E2B624(v75 + v86, v88 + v87, &qword_1EC1F7D48, &qword_1C6EE8990);
      v89 = *v108;
      v90 = v88;
      v91 = v109;
      if ((*v108)(v90, 1, v109) == 1)
      {
        if (v89(v126 + v87, 1, v91) != 1)
        {
          goto LABEL_45;
        }

        sub_1C6E2B68C(v126, &qword_1EC1F7D48, &qword_1C6EE8990);
        v92 = v120;
        v70 = v128;
        v83 = v134;
      }

      else
      {
        v93 = v126;
        v94 = v106;
        sub_1C6E2B624(v126, v106, &qword_1EC1F7D48, &qword_1C6EE8990);
        if (v89(v93 + v87, 1, v91) == 1)
        {
          (*v105)(v94, v91);
LABEL_45:
          sub_1C6E2B68C(v126, &qword_1EC1F7D50, &qword_1C6EE8998);
          v92 = v120;
          v70 = v128;
LABEL_46:
          sub_1C6E2B86C(v75, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
LABEL_47:
          sub_1C6E2B86C(v92, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
          v101 = &qword_1EC1F7D58;
          v102 = &qword_1C6EE89A0;
LABEL_48:
          sub_1C6E2B68C(v70, v101, v102);
LABEL_49:
          sub_1C6E2B86C(v135, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
          v65 = v134;
LABEL_50:
          sub_1C6E2B86C(v65, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
          return 0;
        }

        v95 = v104;
        (*v103)(v104, v93 + v87, v91);
        sub_1C6E2B6EC(&qword_1EC1F7D80, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
        v96 = sub_1C6EE4A50();
        v97 = *v105;
        v98 = v95;
        v75 = v117;
        (*v105)(v98, v91);
        v97(v94, v91);
        sub_1C6E2B68C(v93, &qword_1EC1F7D48, &qword_1C6EE8990);
        v92 = v120;
        v70 = v128;
        v83 = v134;
        if ((v96 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      if (*v92 != *v75)
      {
        goto LABEL_46;
      }

      sub_1C6EE4430();
      sub_1C6E2B6EC(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v99 = sub_1C6EE4A50();
      sub_1C6E2B86C(v75, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
      if ((v99 & 1) == 0)
      {
        goto LABEL_47;
      }

      sub_1C6E2B86C(v92, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
    }

    sub_1C6E2B68C(v70, &qword_1EC1F7D58, &qword_1C6EE89A0);
    sub_1C6EE4430();
    sub_1C6E2B6EC(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v41 = v135;
    v42 = sub_1C6EE4A50();
    sub_1C6E2B86C(v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
    sub_1C6E2B86C(v83, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
    a1 = v112;
    v32 = v111;
    v40 = v110;
    v39 = v125;
    result = v127;
    if ((v42 & 1) == 0)
    {
      return result;
    }
  }

  if (v40 <= v35 + 1)
  {
    v46 = v35 + 1;
  }

  else
  {
    v46 = v40;
  }

  v47 = v46 - 1;
  while (1)
  {
    v48 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v48 >= v40)
    {
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77F8, &unk_1C6EE69B0);
      (*(*(v100 - 8) + 56))(v32, 1, 1, v100);
      v44 = 0;
      v35 = v47;
      goto LABEL_19;
    }

    v49 = *(v107 + 8 * v48);
    ++v35;
    if (v49)
    {
      v44 = (v49 - 1) & v49;
      v45 = __clz(__rbit64(v49)) | (v48 << 6);
      v35 = v48;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E24124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig(0);
  v64 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v58 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v61 = v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D38, &qword_1C6EE8980);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v63 = (v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v13);
  v62 = (v58 - v16);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v17 = 0;
  v18 = *(a1 + 64);
  v58[0] = a1 + 64;
  v58[1] = v4;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v59 = a1;
  while (v21)
  {
    v60 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v17 << 6);
LABEL_16:
    v28 = *(a1 + 56);
    v29 = (*(a1 + 48) + 16 * v23);
    v31 = *v29;
    v30 = v29[1];
    v32 = v61;
    sub_1C6E2B79C(v28 + *(v64 + 72) * v23, v61, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D40, &qword_1C6EE8988);
    v34 = *(v33 + 48);
    v35 = v63;
    *v63 = v31;
    v35[1] = v30;
    v36 = v35;
    sub_1C6E2B804(v32, v35 + v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
    (*(*(v33 - 8) + 56))(v36, 0, 1, v33);

LABEL_17:
    v37 = v36;
    v38 = v62;
    sub_1C6E2B734(v37, v62, &qword_1EC1F7D38, &qword_1C6EE8980);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D40, &qword_1C6EE8988);
    v40 = (*(*(v39 - 8) + 48))(v38, 1, v39);
    v41 = v40 == 1;
    if (v40 == 1)
    {
      return v41;
    }

    v42 = v7;
    v43 = v64;
    v44 = *(v39 + 48);
    v45 = v38;
    v46 = *v38;
    v47 = v38[1];
    sub_1C6E2B804(v45 + v44, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
    v48 = sub_1C6DEC784(v46, v47);
    v50 = v49;

    if ((v50 & 1) == 0)
    {
      goto LABEL_32;
    }

    v7 = v42;
    sub_1C6E2B79C(*(a2 + 56) + *(v43 + 72) * v48, v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
    if (*v42 != *v10)
    {
      goto LABEL_31;
    }

    v51 = *(v42 + 1);
    v52 = *(v10 + 1);
    v53 = *(v51 + 16);
    if (v53 != *(v52 + 16))
    {
      goto LABEL_31;
    }

    if (v53 && v51 != v52)
    {
      v54 = (v51 + 32);
      v55 = (v52 + 32);
      while (*v54 == *v55)
      {
        ++v54;
        ++v55;
        if (!--v53)
        {
          goto LABEL_26;
        }
      }

LABEL_31:
      sub_1C6E2B86C(v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
LABEL_32:
      sub_1C6E2B86C(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
      return 0;
    }

LABEL_26:
    if ((sub_1C6E5B3BC(*(v42 + 2), *(v10 + 2)) & 1) == 0)
    {
      goto LABEL_31;
    }

    sub_1C6EE4430();
    sub_1C6E2B6EC(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v56 = sub_1C6EE4A50();
    sub_1C6E2B86C(v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
    result = sub_1C6E2B86C(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
    a1 = v59;
    v21 = v60;
    if ((v56 & 1) == 0)
    {
      return v41;
    }
  }

  if (v22 <= v17 + 1)
  {
    v24 = v17 + 1;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D40, &qword_1C6EE8988);
      v36 = v63;
      (*(*(v57 - 8) + 56))(v63, 1, 1, v57);
      v60 = 0;
      v17 = v25;
      goto LABEL_17;
    }

    v27 = *(v58[0] + 8 * v26);
    ++v17;
    if (v27)
    {
      v60 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v17 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1C6E246EC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1C6DEC784(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1C6EE54B0();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E24890(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 4 * v12);

    v17 = sub_1C6DEC784(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E249C4(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v4 = *(v58 - 8);
  v5 = MEMORY[0x1EEE9AC00](v58);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v54 - v9);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D88, &qword_1C6EE89D0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v60 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v60 + 16))
  {
    return 0;
  }

  v55 = a1;
  v56 = &v54 - v15;
  v59 = v16;
  v17 = 0;
  v18 = *(a1 + 64);
  v54 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v61 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v17 << 6);
LABEL_16:
    v29 = (*(v55 + 48) + 16 * v23);
    v31 = *v29;
    v30 = v29[1];
    v32 = v57;
    sub_1C6E2B79C(*(v55 + 56) + *(v4 + 72) * v23, v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D90, &qword_1C6EE89D8);
    v34 = *(v33 + 48);
    v35 = v59;
    *v59 = v31;
    v35[1] = v30;
    v36 = v32;
    v26 = v35;
    sub_1C6E2B804(v36, v35 + v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    (*(*(v33 - 8) + 56))(v26, 0, 1, v33);

LABEL_17:
    v37 = v26;
    v38 = v56;
    sub_1C6E2B734(v37, v56, &qword_1EC1F7D88, &qword_1C6EE89D0);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D90, &qword_1C6EE89D8);
    v40 = (*(*(v39 - 8) + 48))(v38, 1, v39);
    v41 = v40 == 1;
    if (v40 == 1)
    {
      return v41;
    }

    v42 = v38;
    v43 = v7;
    v44 = *(v39 + 48);
    v45 = *v42;
    v46 = v42[1];
    sub_1C6E2B804(v42 + v44, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    v47 = v45;
    v48 = v60;
    v49 = sub_1C6DEC784(v47, v46);
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      goto LABEL_25;
    }

    v7 = v43;
    sub_1C6E2B79C(*(v48 + 56) + *(v4 + 72) * v49, v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    if ((sub_1C6E227C4(*v43, *v10) & 1) == 0)
    {
      sub_1C6E2B86C(v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
LABEL_25:
      sub_1C6E2B86C(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      return 0;
    }

    sub_1C6EE4430();
    sub_1C6E2B6EC(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v52 = sub_1C6EE4A50();
    sub_1C6E2B86C(v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    result = sub_1C6E2B86C(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    v21 = v61;
    if ((v52 & 1) == 0)
    {
      return v41;
    }
  }

  if (v22 <= v17 + 1)
  {
    v24 = v17 + 1;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 - 1;
  v26 = v59;
  while (1)
  {
    v27 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v27 >= v22)
    {
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D90, &qword_1C6EE89D8);
      (*(*(v53 - 8) + 56))(v26, 1, 1, v53);
      v61 = 0;
      v17 = v25;
      goto LABEL_17;
    }

    v28 = *(v54 + 8 * v27);
    ++v17;
    if (v28)
    {
      v61 = (v28 - 1) & v28;
      v23 = __clz(__rbit64(v28)) | (v27 << 6);
      v17 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E24F24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub(0);
  v5 = *(v4 - 8);
  v81 = v4;
  v82 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v67 - v9);
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer(0);
  v78 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v79 = (&v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v67 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v67 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D98, &qword_1C6EE89E0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  result = MEMORY[0x1EEE9AC00](v20);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v73 = (&v67 - v22);
  v74 = v23;
  v24 = 0;
  v25 = *(a1 + 64);
  v68 = a1 + 64;
  v69 = v18;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v67 = (v26 + 63) >> 6;
  v77 = v16;
  v71 = a1;
  v72 = a2;
  v70 = v11;
  while (v28)
  {
    v76 = (v28 - 1) & v28;
    v31 = __clz(__rbit64(v28)) | (v24 << 6);
LABEL_17:
    v36 = (*(a1 + 48) + 16 * v31);
    v37 = *v36;
    v38 = v36[1];
    sub_1C6E2B79C(*(a1 + 56) + *(v78 + 72) * v31, v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DA0, &unk_1C6EE89E8);
    v40 = *(v39 + 48);
    v41 = v74;
    *v74 = v37;
    v41[1] = v38;
    v42 = v41;
    sub_1C6E2B804(v18, v41 + v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
    (*(*(v39 - 8) + 56))(v42, 0, 1, v39);

    v16 = v77;
LABEL_18:
    v43 = v42;
    v44 = v73;
    sub_1C6E2B734(v43, v73, &qword_1EC1F7D98, &qword_1C6EE89E0);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DA0, &unk_1C6EE89E8);
    v46 = (*(*(v45 - 8) + 48))(v44, 1, v45) == 1;
    result = v46;
    if (v46)
    {
      return result;
    }

    v75 = v46;
    v47 = *(v45 + 48);
    v48 = *v44;
    v49 = v44[1];
    sub_1C6E2B804(v44 + v47, v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
    v50 = v48;
    v51 = v72;
    v52 = sub_1C6DEC784(v50, v49);
    v54 = v53;

    if ((v54 & 1) == 0)
    {
      goto LABEL_39;
    }

    v55 = *(v51 + 56) + *(v78 + 72) * v52;
    v56 = v79;
    result = sub_1C6E2B79C(v55, v79, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
    v57 = *v56;
    v58 = *v16;
    v59 = *(v57 + 16);
    if (v59 != *(*v16 + 16))
    {
LABEL_38:
      sub_1C6E2B86C(v79, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      v16 = v77;
LABEL_39:
      sub_1C6E2B86C(v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      return 0;
    }

    if (v59 && v57 != v58)
    {
      v60 = 0;
      v61 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v80 = v57 + v61;
      v62 = v58 + v61;
      while (v60 < *(v57 + 16))
      {
        v63 = *(v82 + 72) * v60;
        result = sub_1C6E2B79C(v80 + v63, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
        if (v60 >= *(v58 + 16))
        {
          goto LABEL_44;
        }

        sub_1C6E2B79C(v62 + v63, v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
        if ((*v10 != *v8 || v10[1] != v8[1]) && (sub_1C6EE54B0() & 1) == 0 || (v10[2] != v8[2] || v10[3] != v8[3]) && (sub_1C6EE54B0() & 1) == 0)
        {
          sub_1C6E2B86C(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
          sub_1C6E2B86C(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
          goto LABEL_38;
        }

        sub_1C6EE4430();
        sub_1C6E2B6EC(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v64 = sub_1C6EE4A50();
        sub_1C6E2B86C(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
        result = sub_1C6E2B86C(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
        if ((v64 & 1) == 0)
        {
          goto LABEL_38;
        }

        if (v59 == ++v60)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_43;
    }

LABEL_6:
    sub_1C6EE4430();
    sub_1C6E2B6EC(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v29 = v79;
    v16 = v77;
    v30 = sub_1C6EE4A50();
    sub_1C6E2B86C(v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
    sub_1C6E2B86C(v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
    a1 = v71;
    v18 = v69;
    v28 = v76;
    result = v75;
    if ((v30 & 1) == 0)
    {
      return result;
    }
  }

  if (v67 <= v24 + 1)
  {
    v32 = v24 + 1;
  }

  else
  {
    v32 = v67;
  }

  v33 = v32 - 1;
  while (1)
  {
    v34 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v34 >= v67)
    {
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DA0, &unk_1C6EE89E8);
      v66 = v74;
      (*(*(v65 - 8) + 56))(v74, 1, 1, v65);
      v76 = 0;
      v24 = v33;
      v42 = v66;
      goto LABEL_18;
    }

    v35 = *(v68 + 8 * v34);
    ++v24;
    if (v35)
    {
      v76 = (v35 - 1) & v35;
      v31 = __clz(__rbit64(v35)) | (v34 << 6);
      v24 = v34;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1C6E256E8()
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E2572C(uint64_t a1)
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E2578C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C616E7265746E69 && a2 == 0xEB0000000070614DLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C6EE54B0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C6E25824(uint64_t a1)
{
  v2 = sub_1C6E2AD60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E25860(uint64_t a1)
{
  v2 = sub_1C6E2AD60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Features.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C98, &qword_1C6EE8440);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6E2AD60();

  sub_1C6EE55C0();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7CA8, &qword_1C6EE8448);
  sub_1C6E2AE5C(&qword_1EC1F7CB0, sub_1C6E2ADB4, sub_1C6E2AE08, MEMORY[0x1E69E5E38]);
  sub_1C6EE5440();

  return (*(v4 + 8))(v6, v3);
}

uint64_t Features.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7CC8, &unk_1C6EE8450);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6E2AD60();
  sub_1C6EE55B0();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7CA8, &qword_1C6EE8448);
    sub_1C6E2AE5C(&qword_1EC1F7CD0, sub_1C6E2AEEC, sub_1C6E2AF40, MEMORY[0x1E69E5E58]);
    sub_1C6EE53D0();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void Features.init(dictionaryLiteral:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7850, &qword_1C6EE6A08);
    v4 = sub_1C6EE5340();
    a1 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v5 = v4;
  sub_1C6E294C4(a1, 1, &v5);
  *a2 = v5;
}

void sub_1C6E25D0C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7850, &qword_1C6EE6A08);
    v4 = sub_1C6EE5340();
    a1 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v5 = v4;
  sub_1C6E294C4(a1, 1, &v5);
  *a2 = v5;
}

double sub_1C6E25DC4@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v11 = *a1;
  v8[0] = v4;
  v8[1] = v5;

  Features.subscript.getter(v8, &v9);

  v6 = v10;
  result = *&v9;
  *a3 = v9;
  *(a3 + 16) = v6;
  return result;
}

uint64_t sub_1C6E25E34(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);

  sub_1C6E2AF94(v5, v6, v7);
  return sub_1C6E02074(v5, v6, v7, v3, v4);
}

void (*Features.subscript.modify(uint64_t **a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v8 = *a2;
  v7 = a2[1];
  *(v5 + 24) = v2;
  *(v5 + 32) = v8;
  *(v5 + 40) = v7;
  v9 = *v2;
  if (*(v9 + 16))
  {
    swift_bridgeObjectRetain_n();
    v10 = sub_1C6E0231C(v8, v7);
    if (v11)
    {
      v12 = *(v9 + 56) + 24 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      sub_1C6E00CBC(*v12, v14, v15);

      *v6 = v13;
      *(v6 + 8) = v14;
      *(v6 + 16) = v15;
    }

    else
    {

      *v6 = xmmword_1C6EE7FC0;
      *(v6 + 16) = -1;
    }
  }

  else
  {
    *v5 = xmmword_1C6EE7FC0;
    *(v5 + 16) = -1;
  }

  return sub_1C6E25FC0;
}

void sub_1C6E25FC0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  v6 = (~v3 & 0x3000000000000000) == 0 && v4 == 255;
  v8 = *(v2 + 32);
  v7 = *(v2 + 40);
  v9 = *(v2 + 24);
  if (a2)
  {
    if (v6)
    {
      sub_1C6E29064(*(v2 + 32), *(v2 + 40), &v17);

      sub_1C6E0D408(v17, v18, v19);
    }

    else
    {
      v13 = *v2;
      sub_1C6E2AF94(*v2, v3, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v9;
      sub_1C6E08F7C(v13, v3, v4 & 1, v8, v7, isUniquelyReferenced_nonNull_native);

      *v9 = v17;
    }

    v10 = *v2;
    v11 = *(v2 + 8);
    v12 = *(v2 + 16);
    goto LABEL_14;
  }

  if (v6)
  {
    sub_1C6E29064(*(v2 + 32), *(v2 + 40), &v17);

    v10 = v17;
    v11 = v18;
    v12 = v19;
LABEL_14:
    sub_1C6E0D408(v10, v11, v12);
    goto LABEL_16;
  }

  v15 = *v2;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  sub_1C6E08F7C(v15, v3, v4 & 1, v8, v7, v16);

  *v9 = v17;
LABEL_16:

  free(v2);
}

uint64_t (*sub_1C6E26158(uint64_t ***a1, uint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = Features.subscript.modify(v4, a2);
  return sub_1C6E261D0;
}

void sub_1C6E261D0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t static Features.empty.getter@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C6E0BDC4(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

Swift::Void __swiftcall Features.update(_:override:isDefaultFeature:)(ComputationalGraph::Features _, Swift::Bool override, Swift::Bool isDefaultFeature)
{
  v3 = *_.internalMap._rawValue;
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v59 = v3;

  v9 = 0;
  v57 = v8;
  while (v7)
  {
LABEL_11:
    v15 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v16 = v15 | (v9 << 6);
    v17 = (*(v59 + 48) + 16 * v16);
    v18 = v17[1];
    v61 = *v17;
    v19 = *(v59 + 56) + 24 * v16;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    if (override)
    {

      sub_1C6E00CBC(v20, v21, v22);
      goto LABEL_17;
    }

    v23 = *v60;
    v24 = *(*v60 + 16);

    sub_1C6E00CBC(v20, v21, v22);
    if (v24 && (v25 = sub_1C6E0231C(v61, v18), (v26 & 1) != 0))
    {
      v55 = v22;
      if (isDefaultFeature)
      {

        sub_1C6E00C60(v20, v21, v22);
      }

      else
      {
        v46 = *(v23 + 56) + 24 * v25;
        v54 = *v46;
        v50 = *(v46 + 8);
        v53 = *(v46 + 16);
        sub_1C6E00CBC(*v46, v50, v53);
        if (qword_1EDEF8F80 != -1)
        {
          swift_once();
        }

        v52 = qword_1EDEF8F88;
        v51 = sub_1C6EE4EC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_1C6EE65B0;
        sub_1C6EE52F0();
        *(v47 + 56) = MEMORY[0x1E69E6158];
        v48 = sub_1C6DF10E0();
        *(v47 + 64) = v48;
        *(v47 + 32) = 0;
        *(v47 + 40) = 0xE000000000000000;
        sub_1C6EE52F0();
        *(v47 + 96) = MEMORY[0x1E69E6158];
        *(v47 + 104) = v48;
        *(v47 + 72) = 0;
        *(v47 + 80) = 0xE000000000000000;
        sub_1C6EE52F0();
        *(v47 + 136) = MEMORY[0x1E69E6158];
        *(v47 + 144) = v48;
        *(v47 + 112) = 0;
        *(v47 + 120) = 0xE000000000000000;
        sub_1C6EE4730("Asked to updated existing key %{public}@ with feature %{public}@. Existing feature %{public}@", 93, 2, &dword_1C6DE9000, v52, v51, v47);
        sub_1C6E00C60(v54, v50, v53);

        sub_1C6E00C60(v20, v21, v55);
        v8 = v57;
      }
    }

    else
    {
LABEL_17:

      v27 = v20;
      v28 = v20;
      v29 = v21;
      v30 = v21;
      v31 = v22;
      sub_1C6E00CBC(v28, v30, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v60;
      *v60 = 0x8000000000000000;
      v34 = sub_1C6E0231C(v61, v18);
      v36 = v33[2];
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        goto LABEL_31;
      }

      v40 = v35;
      if (v33[3] >= v39)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v49 = v34;
          sub_1C6E09AC0();
          v34 = v49;
        }
      }

      else
      {
        sub_1C6E06FFC(v39, isUniquelyReferenced_nonNull_native);
        v34 = sub_1C6E0231C(v61, v18);
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_33;
        }
      }

      if (v40)
      {
        v10 = v33[7] + 24 * v34;
        v11 = *v10;
        v12 = *(v10 + 8);
        v13 = *(v10 + 16);
        *v10 = v27;
        *(v10 + 8) = v29;
        *(v10 + 16) = v31;
        sub_1C6E00C60(v11, v12, v13);
      }

      else
      {
        v33[(v34 >> 6) + 8] |= 1 << v34;
        v42 = (v33[6] + 16 * v34);
        *v42 = v61;
        v42[1] = v18;
        v43 = v33[7] + 24 * v34;
        *v43 = v27;
        *(v43 + 8) = v29;
        *(v43 + 16) = v31;
        v44 = v33[2];
        v38 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v38)
        {
          goto LABEL_32;
        }

        v33[2] = v45;
      }

      sub_1C6E00C60(v27, v29, v31);
      *v60 = v33;
      v8 = v57;
    }
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v14);
    ++v9;
    if (v7)
    {
      v9 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_1C6EE5500();
  __break(1u);
}

uint64_t sub_1C6E26748@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_1C6E0BDC4(MEMORY[0x1E69E7CC0]);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v41 = a1;

  v9 = 0;
  v39 = v8;
  v40 = v4;
  while (v7)
  {
LABEL_11:
    v15 = __clz(__rbit64(v7)) | (v9 << 6);
    v16 = (*(v41 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v41 + 56) + 24 * v15;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);

    sub_1C6E00CBC(v20, v21, v22);
    sub_1C6E00CBC(v20, v21, v22);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_1C6E0231C(v18, v17);
    v26 = v3[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_23;
    }

    v30 = v25;
    if (v3[3] < v29)
    {
      sub_1C6E06FFC(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_1C6E0231C(v18, v17);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v30)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v36 = v24;
    sub_1C6E09AC0();
    v24 = v36;
    if (v30)
    {
LABEL_4:
      v10 = v3[7] + 24 * v24;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      *v10 = v20;
      *(v10 + 8) = v21;
      *(v10 + 16) = v22;
      sub_1C6E00C60(v11, v12, v13);

      goto LABEL_5;
    }

LABEL_17:
    v3[(v24 >> 6) + 8] |= 1 << v24;
    v32 = (v3[6] + 16 * v24);
    *v32 = v18;
    v32[1] = v17;
    v33 = v3[7] + 24 * v24;
    *v33 = v20;
    *(v33 + 8) = v21;
    *(v33 + 16) = v22;
    v34 = v3[2];
    v28 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v28)
    {
      goto LABEL_24;
    }

    v3[2] = v35;
LABEL_5:
    v7 &= v7 - 1;

    sub_1C6E00C60(v20, v21, v22);
    v8 = v39;
    v4 = v40;
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      *a2 = v3;
      return result;
    }

    v7 = *(v4 + 8 * v14);
    ++v9;
    if (v7)
    {
      v9 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1C6EE5500();
  __break(1u);
  return result;
}

uint64_t sub_1C6E269D0(uint64_t a1, char a2, char a3)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v61 = v3;
  if (v6)
  {
LABEL_11:
    while (1)
    {
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = v14 | (v8 << 6);
      v16 = (*(a1 + 48) + 16 * v15);
      v17 = v16[1];
      v65 = *v16;
      v18 = *(a1 + 56) + 24 * v15;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (a2)
      {
        break;
      }

      v22 = *v64;
      v23 = *(*v64 + 16);

      sub_1C6E00CBC(v19, v20, v21);
      if (v23 && (v24 = sub_1C6DEC784(v65, v17), (v25 & 1) != 0))
      {
        if (a3)
        {

          v26 = v19;
          v27 = v20;
          v28 = v21;
        }

        else
        {
          v49 = *(v22 + 56) + 24 * v24;
          v57 = *v49;
          v59 = *(v49 + 8);
          v58 = *(v49 + 16);
          sub_1C6E00CBC(*v49, v59, v58);
          v50 = v21;
          if (qword_1EDEF8F80 != -1)
          {
            swift_once();
          }

          v56 = qword_1EDEF8F88;
          v55 = sub_1C6EE4EC0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
          v51 = swift_allocObject();
          *(v51 + 16) = xmmword_1C6EE65B0;
          *(v51 + 56) = MEMORY[0x1E69E6158];
          v52 = sub_1C6DF10E0();
          *(v51 + 64) = v52;
          *(v51 + 32) = v65;
          *(v51 + 40) = v17;

          sub_1C6EE52F0();
          *(v51 + 96) = MEMORY[0x1E69E6158];
          *(v51 + 104) = v52;
          *(v51 + 72) = 0;
          *(v51 + 80) = 0xE000000000000000;
          sub_1C6EE52F0();
          *(v51 + 136) = MEMORY[0x1E69E6158];
          *(v51 + 144) = v52;
          *(v51 + 112) = 0;
          *(v51 + 120) = 0xE000000000000000;
          sub_1C6EE4730("Asked to updated existing key %{public}@ with feature %{public}@. Existing feature %{public}@", 93, 2, &dword_1C6DE9000, v56, v55, v51);
          sub_1C6E00C60(v57, v59, v58);

          v26 = v19;
          v27 = v20;
          v28 = v50;
        }

        sub_1C6E00C60(v26, v27, v28);
        if (!v6)
        {
          goto LABEL_7;
        }
      }

      else
      {
LABEL_17:
        v29 = v7;

        v30 = v19;
        v31 = v19;
        v32 = v20;
        v33 = v20;
        v34 = v21;
        sub_1C6E00CBC(v31, v33, v21);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = *v64;
        v37 = sub_1C6DEC784(v65, v17);
        v39 = v36[2];
        v40 = (v38 & 1) == 0;
        v41 = __OFADD__(v39, v40);
        v42 = v39 + v40;
        if (v41)
        {
          goto LABEL_33;
        }

        v43 = v38;
        if (v36[3] >= v42)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v53 = v37;
            sub_1C6E09928();
            v37 = v53;
          }
        }

        else
        {
          sub_1C6E06D1C(v42, isUniquelyReferenced_nonNull_native);
          v37 = sub_1C6DEC784(v65, v17);
          if ((v43 & 1) != (v44 & 1))
          {
            goto LABEL_35;
          }
        }

        if (v43)
        {
          v9 = v36[7] + 24 * v37;
          v10 = *v9;
          v11 = *(v9 + 8);
          v12 = *(v9 + 16);
          *v9 = v30;
          *(v9 + 8) = v32;
          *(v9 + 16) = v34;
          sub_1C6E00C60(v10, v11, v12);
        }

        else
        {
          v36[(v37 >> 6) + 8] |= 1 << v37;
          v45 = (v36[6] + 16 * v37);
          *v45 = v65;
          v45[1] = v17;
          v46 = v36[7] + 24 * v37;
          *v46 = v30;
          *(v46 + 8) = v32;
          *(v46 + 16) = v34;
          v47 = v36[2];
          v41 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v41)
          {
            goto LABEL_34;
          }

          v36[2] = v48;
        }

        sub_1C6E00C60(v30, v32, v34);
        *v64 = v36;
        v7 = v29;
        v3 = v61;
        if (!v6)
        {
          goto LABEL_7;
        }
      }
    }

    sub_1C6E00CBC(v19, v20, v21);
    goto LABEL_17;
  }

LABEL_7:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v7)
    {
    }

    v6 = *(v3 + 8 * v13);
    ++v8;
    if (v6)
    {
      v8 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1C6EE5500();
  __break(1u);
  return result;
}

BOOL sub_1C6E26E94(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a4 & 1) == 0)
  {
    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
    }

    sub_1C6EE4ED0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E6530];
    *(v9 + 16) = xmmword_1C6EE6590;
    v11 = MEMORY[0x1E69E65A8];
    *(v9 + 56) = v10;
    *(v9 + 64) = v11;
    *(v9 + 32) = a3;
    sub_1C6EE4730("Encountered unrecognized ProtoModelIODType %lu", v39);

    return 0;
  }

  result = 0;
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 == 6)
      {
        goto LABEL_27;
      }

      if (!*(a5 + 16))
      {
        return 0;
      }

      v27 = a1;
      v29 = sub_1C6DEC784(a1, a2);
      if (v30)
      {
        v31 = *(a5 + 56) + 24 * v29;
        v32 = (*(v31 + 8) >> 60) & 3;
        v33 = *(v31 + 16) ? 4 : 0;
        if ((v32 | v33) == 4)
        {
          return 1;
        }
      }

      if (!*(a5 + 16))
      {
        return 0;
      }

      v34 = sub_1C6DEC784(v27, a2);
      if ((v35 & 1) == 0)
      {
        return 0;
      }

      v36 = *(a5 + 56) + 24 * v34;
      v37 = (*(v36 + 8) >> 60) & 3;
      if (*(v36 + 16))
      {
        v38 = 4;
      }

      else
      {
        v38 = 0;
      }

      return (v37 | v38) == 5;
    }

    else
    {
      if (a3 != 4)
      {
        return result;
      }

      if (!*(a5 + 16))
      {
        return 0;
      }

      v12 = sub_1C6DEC784(a1, a2);
      if ((v13 & 1) == 0)
      {
        return 0;
      }

      v14 = *(a5 + 56) + 24 * v12;
      v15 = (*(v14 + 8) >> 60) & 3;
      if (*(v14 + 16))
      {
        v16 = 4;
      }

      else
      {
        v16 = 0;
      }

      return (v15 | v16) == 0;
    }
  }

  else
  {
    if (a3 <= 1)
    {
      if (!a3)
      {
        return result;
      }

LABEL_27:
      if (*(a5 + 16))
      {
        v22 = sub_1C6DEC784(a1, a2);
        if (v23)
        {
          v24 = *(a5 + 56) + 24 * v22;
          v25 = (*(v24 + 8) >> 60) & 3;
          if (*(v24 + 16))
          {
            v26 = 4;
          }

          else
          {
            v26 = 0;
          }

          return (v25 | v26) == 3;
        }
      }

      return 0;
    }

    if (a3 != 2)
    {
      return result;
    }

    if (!*(a5 + 16))
    {
      return 0;
    }

    v17 = sub_1C6DEC784(a1, a2);
    if ((v18 & 1) == 0)
    {
      return 0;
    }

    v19 = *(a5 + 56) + 24 * v17;
    v20 = (*(v19 + 8) >> 60) & 3;
    if (*(v19 + 16))
    {
      v21 = 4;
    }

    else
    {
      v21 = 0;
    }

    return (v20 | v21) == 1;
  }
}

uint64_t sub_1C6E27138(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1C6E2928C(a2);

  *a1 = v3;
  return result;
}

uint64_t sub_1C6E27180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 24) = qword_1C6EE8A08[(a5 >> 60) & 3 | (4 * (a6 & 1u))];
  *(a1 + 32) = 1;
  return result;
}

uint64_t *ReadableFeatureStoreType.floatList(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v16);
  v4 = v16;
  v5 = v17;
  v6 = v18;
  if ((~v17 & 0x3000000000000000) != 0 || v18 != 255)
  {
    v10 = (v17 >> 60) & 3 | (4 * (v18 & 1));
    if (v10 <= 2)
    {
      if (!v10)
      {
        return v4;
      }

      if (v10 == 1)
      {
        v13 = 769;
      }

      else
      {
        v13 = 770;
      }
    }

    else
    {
      v11 = 768;
      if (v10 == 5)
      {
        v11 = 774;
      }

      v12 = 772;
      if (v10 != 3)
      {
        v12 = 773;
      }

      if (v10 <= 4)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }
    }

    sub_1C6E16800();
    swift_allocError();
    *v14 = v13;
    *(v14 + 8) = 0;
    *(v14 + 16) = 3;
    swift_willThrow();
    sub_1C6E0D408(v4, v5, v6);
    return v4;
  }

  sub_1C6E2AC54();
  swift_allocError();
  v4 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[3] = AssociatedTypeWitness;
  v4[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
  swift_willThrow();
  return v4;
}

uint64_t ReadableFeatureStoreType.floatListIfPresent(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v12, a1, a2);
  v3 = v12;
  v4 = v13;
  v5 = v14;
  if ((~v13 & 0x3000000000000000) != 0 || v14 != 255)
  {
    v6 = (v13 >> 60) & 3 | (4 * (v14 & 1));
    if (v6 <= 2)
    {
      if (!v6)
      {
        return v3;
      }

      if (v6 == 1)
      {
        v9 = 769;
      }

      else
      {
        v9 = 770;
      }
    }

    else
    {
      v7 = 768;
      if (v6 == 5)
      {
        v7 = 774;
      }

      v8 = 772;
      if (v6 != 3)
      {
        v8 = 773;
      }

      if (v6 <= 4)
      {
        v9 = v8;
      }

      else
      {
        v9 = v7;
      }
    }

    sub_1C6E16800();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = 0;
    *(v10 + 16) = 3;
    swift_willThrow();
    sub_1C6E0D408(v3, v4, v5);
    return v3;
  }

  return 0;
}

uint64_t *ReadableFeatureStoreType.int32List(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v16);
  v4 = v16;
  v5 = v17;
  v6 = v18;
  if ((~v17 & 0x3000000000000000) != 0 || v18 != 255)
  {
    v10 = (v17 >> 60) & 3 | (4 * (v18 & 1));
    if (v10 <= 2)
    {
      if (v10)
      {
        if (v10 == 1)
        {
          return v4;
        }

        v13 = 258;
      }

      else
      {
        v13 = 259;
      }
    }

    else
    {
      v11 = 256;
      if (v10 == 5)
      {
        v11 = 262;
      }

      v12 = 260;
      if (v10 != 3)
      {
        v12 = 261;
      }

      if (v10 <= 4)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }
    }

    sub_1C6E16800();
    swift_allocError();
    *v14 = v13;
    *(v14 + 8) = 0;
    *(v14 + 16) = 3;
    swift_willThrow();
    sub_1C6E0D408(v4, v5, v6);
  }

  else
  {
    sub_1C6E2AC54();
    swift_allocError();
    v4 = v7;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v4[3] = AssociatedTypeWitness;
    v4[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
    (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
    swift_willThrow();
  }

  return v4;
}

uint64_t ReadableFeatureStoreType.int32ListIfPresent(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v12, a1, a2);
  v3 = v12;
  v4 = v13;
  v5 = v14;
  if ((~v13 & 0x3000000000000000) == 0 && v14 == 255)
  {
    return 0;
  }

  v6 = (v13 >> 60) & 3 | (4 * (v14 & 1));
  if (v6 <= 2)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        return v3;
      }

      v9 = 258;
    }

    else
    {
      v9 = 259;
    }
  }

  else
  {
    v7 = 256;
    if (v6 == 5)
    {
      v7 = 262;
    }

    v8 = 260;
    if (v6 != 3)
    {
      v8 = 261;
    }

    if (v6 <= 4)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }
  }

  sub_1C6E16800();
  swift_allocError();
  *v10 = v9;
  *(v10 + 8) = 0;
  *(v10 + 16) = 3;
  swift_willThrow();
  sub_1C6E0D408(v3, v4, v5);
  return v3;
}

uint64_t *ReadableFeatureStoreType.int64List(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v16);
  v4 = v16;
  v5 = v17;
  v6 = v18;
  if ((~v17 & 0x3000000000000000) != 0 || v18 != 255)
  {
    v10 = (v17 >> 60) & 3 | (4 * (v18 & 1));
    if (v10 <= 2)
    {
      if (v10)
      {
        if (v10 != 1)
        {
          return v4;
        }

        v13 = 513;
      }

      else
      {
        v13 = 515;
      }
    }

    else
    {
      v11 = 512;
      if (v10 == 5)
      {
        v11 = 518;
      }

      v12 = 516;
      if (v10 != 3)
      {
        v12 = 517;
      }

      if (v10 <= 4)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }
    }

    sub_1C6E16800();
    swift_allocError();
    *v14 = v13;
    *(v14 + 8) = 0;
    *(v14 + 16) = 3;
    swift_willThrow();
    sub_1C6E0D408(v4, v5, v6);
  }

  else
  {
    sub_1C6E2AC54();
    swift_allocError();
    v4 = v7;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v4[3] = AssociatedTypeWitness;
    v4[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
    (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
    swift_willThrow();
  }

  return v4;
}

uint64_t ReadableFeatureStoreType.int64ListIfPresent(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v12, a1, a2);
  v3 = v12;
  v4 = v13;
  v5 = v14;
  if ((~v13 & 0x3000000000000000) == 0 && v14 == 255)
  {
    return 0;
  }

  v6 = (v13 >> 60) & 3 | (4 * (v14 & 1));
  if (v6 <= 2)
  {
    if (v6)
    {
      if (v6 != 1)
      {
        return v3;
      }

      v9 = 513;
    }

    else
    {
      v9 = 515;
    }
  }

  else
  {
    v7 = 512;
    if (v6 == 5)
    {
      v7 = 518;
    }

    v8 = 516;
    if (v6 != 3)
    {
      v8 = 517;
    }

    if (v6 <= 4)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }
  }

  sub_1C6E16800();
  swift_allocError();
  *v10 = v9;
  *(v10 + 8) = 0;
  *(v10 + 16) = 3;
  swift_willThrow();
  sub_1C6E0D408(v3, v4, v5);
  return v3;
}

uint64_t *ReadableFeatureStoreType.bytesList(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v15);
  v4 = v15;
  v5 = v16;
  v6 = v17;
  if ((~v16 & 0x3000000000000000) != 0 || v17 != 255)
  {
    v10 = (v16 >> 60) & 3 | (4 * (v17 & 1));
    if (v10 <= 2)
    {
      v12 = 1025;
      if (v10 != 1)
      {
        v12 = 1026;
      }

      if (v10)
      {
        v11 = v12;
      }

      else
      {
        v11 = 1027;
      }
    }

    else if (v10 > 4)
    {
      if (v10 == 5)
      {
        v11 = 1030;
      }

      else
      {
        v11 = 1024;
      }
    }

    else
    {
      if (v10 == 3)
      {
        return v4;
      }

      v11 = 1029;
    }

    sub_1C6E16800();
    swift_allocError();
    *v13 = v11;
    *(v13 + 8) = 0;
    *(v13 + 16) = 3;
    swift_willThrow();
    sub_1C6E0D408(v4, v5, v6);
    return v4;
  }

  sub_1C6E2AC54();
  swift_allocError();
  v4 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[3] = AssociatedTypeWitness;
  v4[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
  swift_willThrow();
  return v4;
}

uint64_t ReadableFeatureStoreType.bytesListIfPresent(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v11, a1, a2);
  v3 = v11;
  v4 = v12;
  v5 = v13;
  if ((~v12 & 0x3000000000000000) != 0 || v13 != 255)
  {
    v6 = (v12 >> 60) & 3 | (4 * (v13 & 1));
    if (v6 <= 2)
    {
      v8 = 1025;
      if (v6 != 1)
      {
        v8 = 1026;
      }

      if (v6)
      {
        v7 = v8;
      }

      else
      {
        v7 = 1027;
      }
    }

    else if (v6 > 4)
    {
      if (v6 == 5)
      {
        v7 = 1030;
      }

      else
      {
        v7 = 1024;
      }
    }

    else
    {
      if (v6 == 3)
      {
        return v3;
      }

      v7 = 1029;
    }

    sub_1C6E16800();
    swift_allocError();
    *v9 = v7;
    *(v9 + 8) = 0;
    *(v9 + 16) = 3;
    swift_willThrow();
    sub_1C6E0D408(v3, v4, v5);
    return v3;
  }

  return 0;
}

uint64_t sub_1C6E27E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v6 = (*(a3 + 24))(&v12, a1, a2);
  v7 = v13;
  v8 = v14;
  if ((~v13 & 0x3000000000000000) == 0 && v14 == 255)
  {
    return 0;
  }

  v10 = v12;
  v11 = a4(v6);
  result = sub_1C6E0D408(v10, v7, v8);
  if (!v4)
  {
    return v11;
  }

  return result;
}

float ReadableFeatureStoreType.float(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 24))(&v15);
  v6 = v16;
  v7 = v17;
  if ((~v16 & 0x3000000000000000) != 0 || v17 != 255)
  {
    v12 = v15;
    v17 &= 1u;
    Feature.float.getter(v5);
    v3 = v13;
    sub_1C6E0D408(v12, v6, v7);
  }

  else
  {
    sub_1C6E2AC54();
    swift_allocError();
    v9 = v8;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9[3] = AssociatedTypeWitness;
    v9[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
    (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
    swift_willThrow();
  }

  return v3;
}

uint64_t ReadableFeatureStoreType.floatIfPresent(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 24))(&v14, a1, a2);
  v5 = v15;
  v6 = v16;
  v7 = (~v15 & 0x3000000000000000) == 0 && v16 == 255;
  v8 = v7;
  if (v7)
  {
    v9 = 0;
    return v9 | (v8 << 32);
  }

  v10 = v14;
  Feature.float.getter(v4);
  v12 = v11;
  result = sub_1C6E0D408(v10, v5, v6);
  if (!v3)
  {
    v9 = v12;
    return v9 | (v8 << 32);
  }

  return result;
}

uint64_t ReadableFeatureStoreType.int32(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 24))(&v13);
  v5 = v14;
  v6 = v15;
  if ((~v14 & 0x3000000000000000) != 0 || v15 != 255)
  {
    v11 = v13;
    v15 &= 1u;
    a1 = Feature.int32.getter(v4);
    sub_1C6E0D408(v11, v5, v6);
  }

  else
  {
    sub_1C6E2AC54();
    swift_allocError();
    v8 = v7;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v8[3] = AssociatedTypeWitness;
    v8[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
    (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
    swift_willThrow();
  }

  return a1;
}

uint64_t ReadableFeatureStoreType.int32IfPresent(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 24))(&v13, a1, a2);
  v5 = v14;
  v6 = v15;
  v7 = (~v14 & 0x3000000000000000) == 0 && v15 == 255;
  v8 = v7;
  if (v7)
  {
    v9 = 0;
    return v9 | (v8 << 32);
  }

  v10 = v13;
  v11 = Feature.int32.getter(v4);
  result = sub_1C6E0D408(v10, v5, v6);
  if (!v3)
  {
    v9 = v11;
    return v9 | (v8 << 32);
  }

  return result;
}

uint64_t sub_1C6E283E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v6 = (*(a3 + 24))(&v15);
  v7 = v16;
  v8 = v17;
  if ((~v16 & 0x3000000000000000) != 0 || v17 != 255)
  {
    v13 = v15;
    v17 &= 1u;
    a1 = a4(v6);
    sub_1C6E0D408(v13, v7, v8);
  }

  else
  {
    sub_1C6E2AC54();
    swift_allocError();
    v10 = v9;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v10[3] = AssociatedTypeWitness;
    v10[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1C6E28580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v6 = (*(a3 + 24))(&v13, a1, a2);
  v7 = v14;
  v8 = v15;
  if ((~v14 & 0x3000000000000000) == 0 && v15 == 255)
  {
    return 0;
  }

  v10 = v13;
  v11 = a4(v6);
  result = sub_1C6E0D408(v10, v7, v8);
  if (!v4)
  {
    return v11;
  }

  return result;
}

uint64_t *ReadableFeatureStoreType.bytes(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v15);
  v6 = v15;
  v5 = v16;
  v7 = v17;
  if ((~v16 & 0x3000000000000000) != 0 || v17 != 255)
  {
    v17 &= 1u;
    v9 = &v15;
    v12 = sub_1C6E17698();
    if (!v3)
    {
      v9 = v12;
      sub_1C6E00D18(v12, v13);
    }

    sub_1C6E0D408(v6, v5, v7);
  }

  else
  {
    sub_1C6E2AC54();
    swift_allocError();
    v9 = v8;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9[3] = AssociatedTypeWitness;
    v9[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
    (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
    swift_willThrow();
  }

  return v9;
}

uint64_t ReadableFeatureStoreType.bytesIfPresent(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v11, a1, a2);
  v5 = v11;
  v4 = v12;
  v6 = v13;
  if ((~v12 & 0x3000000000000000) == 0 && v13 == 255)
  {
    return 0;
  }

  v8 = sub_1C6E17698();
  if (v3)
  {
    return sub_1C6E0D408(v5, v4, v6);
  }

  v10 = v8;
  sub_1C6E00D18(v8, v9);
  sub_1C6E0D408(v5, v4, v6);
  return v10;
}

uint64_t *ReadableFeatureStoreType.string(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C6EE4AE0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  (*(a3 + 24))(&v20, a1, a2, a3);
  v9 = v20;
  v8 = v21;
  v10 = v22;
  if ((~v21 & 0x3000000000000000) != 0 || v22 != 255)
  {
    v22 &= 1u;
    v12 = &v20;
    v15 = sub_1C6E17698();
    if (v3)
    {
      sub_1C6E0D408(v9, v8, v10);
    }

    else
    {
      v18 = v15;
      v19 = v16;
      sub_1C6E00D18(v15, v16);
      sub_1C6EE4AD0();
      v12 = sub_1C6EE4AB0();
      sub_1C6E0D408(v9, v8, v10);
      sub_1C6DF1134(v18, v19);
    }
  }

  else
  {
    sub_1C6E2AC54();
    swift_allocError();
    v12 = v11;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v12[3] = AssociatedTypeWitness;
    v12[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
    swift_willThrow();
  }

  return v12;
}

uint64_t ReadableFeatureStoreType.stringIfPresent(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C6EE4AE0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  (*(a3 + 24))(&v17, a1, a2, a3);
  v9 = v17;
  v8 = v18;
  v10 = v19;
  if ((~v18 & 0x3000000000000000) == 0 && v19 == 255)
  {
    return 0;
  }

  v12 = sub_1C6E17698();
  if (v3)
  {
    return sub_1C6E0D408(v9, v8, v10);
  }

  v14 = v12;
  v15 = v13;
  sub_1C6E00D18(v12, v13);
  sub_1C6EE4AD0();
  v16 = sub_1C6EE4AB0();
  sub_1C6E0D408(v9, v8, v10);
  sub_1C6DF1134(v14, v15);
  return v16;
}

float ReadableFeatureStoreType.float16(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 24))(&v15);
  v6 = v16;
  v7 = v17;
  if ((~v16 & 0x3000000000000000) != 0 || v17 != 255)
  {
    v12 = v15;
    v17 &= 1u;
    Feature.float16.getter(v5);
    v3 = v13;
    sub_1C6E0D408(v12, v6, v7);
  }

  else
  {
    sub_1C6E2AC54();
    swift_allocError();
    v9 = v8;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9[3] = AssociatedTypeWitness;
    v9[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
    (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
    swift_willThrow();
  }

  return v3;
}

uint64_t ReadableFeatureStoreType.float16IfPresent(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 24))(&v13, a1, a2);
  v5 = v14;
  v6 = v15;
  v7 = (~v14 & 0x3000000000000000) == 0 && v15 == 255;
  v8 = v7;
  if (v7)
  {
    return (v8 << 16);
  }

  v9 = v13;
  Feature.float16.getter(v4);
  v11 = v10;
  result = sub_1C6E0D408(v9, v5, v6);
  if (!v3)
  {
    return v11 | (v8 << 16);
  }

  return result;
}

uint64_t Features.diagnosticFormat.getter()
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6E21148(*v0);
  if (*(v5 + 16))
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77A8, &qword_1C6EE6960);
    v7 = sub_1C6EE5340();
    v5 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC8];
  }

  v13 = v7;
  sub_1C6E298C0(v5, 1, &v13);
  if (v1)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v9 = v13;
    MEMORY[0x1EEE9AC00](v8);
    *(&v12 - 2) = v9;
    sub_1C6E2B6EC(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF40C8);
    sub_1C6EE4600();

    v10 = sub_1C6EE45C0();
    sub_1C6E2B86C(v4, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    return v10;
  }

  return result;
}

double sub_1C6E29064@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1C6E0231C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C6E09AC0();
      v10 = v14;
    }

    v11 = *(v10 + 56) + 24 * v8;
    v12 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v12;
    sub_1C6ECDF70(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_1C6EE7FC0;
    *(a3 + 16) = -1;
  }

  return result;
}

uint64_t sub_1C6E29120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1C6DEC784(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C6E0A74C();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
    v19 = *(v12 - 8);
    sub_1C6E2B804(v11 + *(v19 + 72) * v8, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
    sub_1C6ECE140(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

void *sub_1C6E2928C(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7720, &unk_1C6EE68D0);
  result = sub_1C6EE5320();
  v5 = result;
  v6 = 0;
  v32 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v28 = result + 8;
  v29 = result;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(v32 + 56);
      v19 = (*(v32 + 48) + 16 * v17);
      v20 = v19[1];
      v35 = *v19;
      v21 = (v18 + 24 * v17);
      LOBYTE(v18) = *(v21 + 16);
      v33 = *v21;
      v34 = v18;

      v22 = v30;
      sub_1C6E0F330(v30);
      v5 = v29;
      *(v28 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v23 = (v5[6] + 16 * v17);
      *v23 = v35;
      v23[1] = v20;
      result = sub_1C6E2B804(v22, v5[7] + *(v31 + 72) * v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v24 = v5[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v5[2] = v26;
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return v5;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C6E294C4(uint64_t a1, char a2, uint64_t *a3)
{
  v47 = *(a1 + 16);
  if (!v47)
  {
    goto LABEL_24;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = *(a1 + 64);

  sub_1C6E00CBC(v9, v8, v10);
  if (!v7)
  {
    goto LABEL_24;
  }

  v49 = v10;
  v48 = a3;
  v11 = *a3;
  v13 = sub_1C6E0231C(v6, v7);
  v14 = *(v11 + 16);
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v12;
  if (*(v11 + 24) >= v16)
  {
    if (a2)
    {
      if ((v12 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1C6E09AC0();
      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_1C6E06FFC(v16, a2 & 1);
  v18 = sub_1C6E0231C(v6, v7);
  if ((v17 & 1) == (v19 & 1))
  {
    v13 = v18;
    if ((v17 & 1) == 0)
    {
LABEL_13:
      v22 = v48;
      v23 = *v48;
      *(*v48 + 8 * (v13 >> 6) + 64) |= 1 << v13;
      v24 = (v23[6] + 16 * v13);
      *v24 = v6;
      v24[1] = v7;
      v25 = v23[7] + 24 * v13;
      *v25 = v9;
      *(v25 + 8) = v8;
      *(v25 + 16) = v49;
      v26 = v23[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v23[2] = v28;
      if (v47 != 1)
      {
        v29 = (a1 + 104);
        v30 = 1;
        while (v30 < *(a1 + 16))
        {
          v32 = *(v29 - 4);
          v31 = *(v29 - 3);
          v9 = *(v29 - 2);
          v8 = *(v29 - 1);
          v33 = *v29;

          sub_1C6E00CBC(v9, v8, v33);
          if (!v31)
          {
            goto LABEL_24;
          }

          v49 = v33;
          v34 = *v22;
          v35 = sub_1C6E0231C(v32, v31);
          v37 = *(v34 + 16);
          v38 = (v36 & 1) == 0;
          v27 = __OFADD__(v37, v38);
          v39 = v37 + v38;
          if (v27)
          {
            goto LABEL_26;
          }

          v40 = v36;
          if (*(v34 + 24) < v39)
          {
            sub_1C6E06FFC(v39, 1);
            v35 = sub_1C6E0231C(v32, v31);
            if ((v40 & 1) != (v41 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v40)
          {
            goto LABEL_10;
          }

          v22 = v48;
          v42 = *v48;
          *(*v48 + 8 * (v35 >> 6) + 64) |= 1 << v35;
          v43 = (v42[6] + 16 * v35);
          *v43 = v32;
          v43[1] = v31;
          v44 = v42[7] + 24 * v35;
          *v44 = v9;
          *(v44 + 8) = v8;
          *(v44 + 16) = v49;
          v45 = v42[2];
          v27 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v27)
          {
            goto LABEL_27;
          }

          ++v30;
          v42[2] = v46;
          v29 += 40;
          if (v47 == v30)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

LABEL_24:

      return;
    }

LABEL_10:
    v20 = swift_allocError();
    swift_willThrow();

    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DA8, &unk_1C6EE89F8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1C6E00C60(v9, v8, v49);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1C6EE5500();
  __break(1u);
LABEL_29:
  sub_1C6EE51B0();
  MEMORY[0x1CCA57F60](0xD00000000000001BLL, 0x80000001C6EF8350);
  sub_1C6EE52F0();
  MEMORY[0x1CCA57F60](39, 0xE100000000000000);
  sub_1C6EE5300();
  __break(1u);
}

void sub_1C6E298C0(uint64_t a1, char a2, uint64_t *a3)
{
  v47 = *(a1 + 16);
  if (!v47)
  {
    goto LABEL_24;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = *(a1 + 64);

  sub_1C6E00CBC(v9, v8, v10);
  if (!v7)
  {
    goto LABEL_24;
  }

  v49 = v10;
  v48 = a3;
  v11 = *a3;
  v13 = sub_1C6DEC784(v6, v7);
  v14 = *(v11 + 16);
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v12;
  if (*(v11 + 24) >= v16)
  {
    if (a2)
    {
      if ((v12 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1C6E09928();
      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_1C6E06D1C(v16, a2 & 1);
  v18 = sub_1C6DEC784(v6, v7);
  if ((v17 & 1) == (v19 & 1))
  {
    v13 = v18;
    if ((v17 & 1) == 0)
    {
LABEL_13:
      v22 = v48;
      v23 = *v48;
      *(*v48 + 8 * (v13 >> 6) + 64) |= 1 << v13;
      v24 = (v23[6] + 16 * v13);
      *v24 = v6;
      v24[1] = v7;
      v25 = v23[7] + 24 * v13;
      *v25 = v9;
      *(v25 + 8) = v8;
      *(v25 + 16) = v49;
      v26 = v23[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v23[2] = v28;
      if (v47 != 1)
      {
        v29 = (a1 + 104);
        v30 = 1;
        while (v30 < *(a1 + 16))
        {
          v32 = *(v29 - 4);
          v31 = *(v29 - 3);
          v9 = *(v29 - 2);
          v8 = *(v29 - 1);
          v33 = *v29;

          sub_1C6E00CBC(v9, v8, v33);
          if (!v31)
          {
            goto LABEL_24;
          }

          v49 = v33;
          v34 = *v22;
          v35 = sub_1C6DEC784(v32, v31);
          v37 = *(v34 + 16);
          v38 = (v36 & 1) == 0;
          v27 = __OFADD__(v37, v38);
          v39 = v37 + v38;
          if (v27)
          {
            goto LABEL_26;
          }

          v40 = v36;
          if (*(v34 + 24) < v39)
          {
            sub_1C6E06D1C(v39, 1);
            v35 = sub_1C6DEC784(v32, v31);
            if ((v40 & 1) != (v41 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v40)
          {
            goto LABEL_10;
          }

          v22 = v48;
          v42 = *v48;
          *(*v48 + 8 * (v35 >> 6) + 64) |= 1 << v35;
          v43 = (v42[6] + 16 * v35);
          *v43 = v32;
          v43[1] = v31;
          v44 = v42[7] + 24 * v35;
          *v44 = v9;
          *(v44 + 8) = v8;
          *(v44 + 16) = v49;
          v45 = v42[2];
          v27 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v27)
          {
            goto LABEL_27;
          }

          ++v30;
          v42[2] = v46;
          v29 += 40;
          if (v47 == v30)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

LABEL_24:

      return;
    }

LABEL_10:
    v20 = swift_allocError();
    swift_willThrow();

    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DA8, &unk_1C6EE89F8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1C6E00C60(v9, v8, v49);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1C6EE5500();
  __break(1u);
LABEL_29:
  sub_1C6EE51B0();
  MEMORY[0x1CCA57F60](0xD00000000000001BLL, 0x80000001C6EF8350);
  sub_1C6EE52F0();
  MEMORY[0x1CCA57F60](39, 0xE100000000000000);
  sub_1C6EE5300();
  __break(1u);
}

void *sub_1C6E29CBC(uint64_t *a1)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v57 = (&v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = (&v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v55 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v53 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v53 - v16;
  v18 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v64 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v63 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77A8, &qword_1C6EE6960);
  result = sub_1C6EE5320();
  v22 = result;
  v23 = 0;
  v25 = v20 + 64;
  v24 = *(v20 + 64);
  v62 = v20;
  v26 = 1 << *(v20 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v24;
  v29 = (v26 + 63) >> 6;
  v60 = result + 8;
  v61 = (v13 + 48);
  v58 = v17;
  v59 = v12;
  if ((v27 & v24) != 0)
  {
    do
    {
      v30 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_10:
      v33 = v30 | (v23 << 6);
      v34 = v63;
      v35 = *(v62 + 56);
      v36 = (*(v62 + 48) + 16 * v33);
      v37 = v36[1];
      v66 = *v36;
      sub_1C6E2B79C(v35 + *(v64 + 72) * v33, v63, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      sub_1C6E2B624(v34, v17, &qword_1EC1F7A98, &qword_1C6EE7840);

      sub_1C6E2B86C(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v38 = 1;
      result = (*v61)(v17, 1, v12);
      if (result == 1)
      {
        v39 = 0;
      }

      else
      {
        sub_1C6E2B804(v17, v65, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            v52 = v54;
            sub_1C6E2B804(v65, v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
            v39 = *v52;

            result = sub_1C6E2B86C(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
            v38 = 0;
            v40 = 0x1000000000000000;
          }

          else
          {
            v48 = v53;
            sub_1C6E2B804(v65, v53, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
            v39 = *v48;

            result = sub_1C6E2B86C(v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
            v40 = 0;
            v38 = 0;
          }

          goto LABEL_13;
        }

        if (EnumCaseMultiPayload != 2)
        {
          if (EnumCaseMultiPayload == 3)
          {
            v47 = v56;
            sub_1C6E2B804(v65, v56, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
            v39 = *v47;

            result = sub_1C6E2B86C(v47, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
            v38 = 0;
            v40 = 0x3000000000000000;
          }

          else
          {
            v50 = v57;
            sub_1C6E2B804(v65, v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
            v39 = *v50;
            v51 = v50[1];
            sub_1C6E00D18(*v50, v51);
            result = sub_1C6E2B86C(v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
            v40 = v51 | 0x1000000000000000;
            v38 = 1;
          }

          goto LABEL_13;
        }

        v49 = v55;
        sub_1C6E2B804(v65, v55, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
        v39 = *v49;

        result = sub_1C6E2B86C(v49, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
        v38 = 0;
      }

      v40 = 0x2000000000000000;
LABEL_13:
      *(v60 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      v41 = (v22[6] + 16 * v33);
      *v41 = v66;
      v41[1] = v37;
      v42 = v22[7] + 24 * v33;
      *v42 = v39;
      *(v42 + 8) = v40;
      *(v42 + 16) = v38;
      v43 = v22[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_27;
      }

      v22[2] = v45;
      v17 = v58;
      v12 = v59;
    }

    while (v28);
  }

  v31 = v23;
  while (1)
  {
    v23 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v23 >= v29)
    {
      return v22;
    }

    v32 = *(v25 + 8 * v23);
    ++v31;
    if (v32)
    {
      v30 = __clz(__rbit64(v32));
      v28 = (v32 - 1) & v32;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_1C6E2A384(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v62 = (&v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v61 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = (&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v59 = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v58 = (&v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v68 = &v57 - v16;
  v17 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v67 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v66 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v57 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77A8, &qword_1C6EE6960);
  result = sub_1C6EE5320();
  v22 = result;
  v23 = 0;
  v69 = a1;
  v26 = *(a1 + 64);
  v25 = a1 + 64;
  v24 = v26;
  v27 = 1 << *(v25 - 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v24;
  v30 = (v27 + 63) >> 6;
  v64 = result + 8;
  v65 = (v13 + 48);
  v63 = v12;
  if ((v28 & v24) != 0)
  {
    do
    {
      v31 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
LABEL_10:
      v34 = v31 | (v23 << 6);
      v35 = *(v69 + 56);
      v36 = (*(v69 + 48) + 16 * v34);
      v37 = v36[1];
      v71 = *v36;
      v38 = v72;
      sub_1C6E2B79C(v35 + *(v67 + 72) * v34, v72, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v39 = v38;
      v40 = v66;
      sub_1C6E2B79C(v39, v66, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v41 = v68;
      sub_1C6E2B624(v40, v68, &qword_1EC1F7A98, &qword_1C6EE7840);

      sub_1C6E2B86C(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v42 = 1;
      if ((*v65)(v41, 1, v12) == 1)
      {
        v43 = 0;
      }

      else
      {
        sub_1C6E2B804(v41, v70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            v56 = v59;
            sub_1C6E2B804(v70, v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
            v43 = *v56;

            sub_1C6E2B86C(v56, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
            v42 = 0;
            v44 = 0x1000000000000000;
          }

          else
          {
            v52 = v58;
            sub_1C6E2B804(v70, v58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
            v43 = *v52;

            sub_1C6E2B86C(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
            v44 = 0;
            v42 = 0;
          }

          goto LABEL_13;
        }

        if (EnumCaseMultiPayload != 2)
        {
          if (EnumCaseMultiPayload == 3)
          {
            v51 = v61;
            sub_1C6E2B804(v70, v61, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
            v43 = *v51;

            sub_1C6E2B86C(v51, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
            v42 = 0;
            v44 = 0x3000000000000000;
          }

          else
          {
            v54 = v62;
            sub_1C6E2B804(v70, v62, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
            v43 = *v54;
            v55 = v54[1];
            sub_1C6E00D18(*v54, v55);
            sub_1C6E2B86C(v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
            v44 = v55 | 0x1000000000000000;
            v42 = 1;
          }

          goto LABEL_13;
        }

        v53 = v60;
        sub_1C6E2B804(v70, v60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
        v43 = *v53;

        sub_1C6E2B86C(v53, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
        v42 = 0;
      }

      v44 = 0x2000000000000000;
LABEL_13:
      result = sub_1C6E2B86C(v72, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      *(v64 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      v45 = (v22[6] + 16 * v34);
      *v45 = v71;
      v45[1] = v37;
      v46 = v22[7] + 24 * v34;
      *v46 = v43;
      *(v46 + 8) = v44;
      *(v46 + 16) = v42;
      v47 = v22[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_27;
      }

      v22[2] = v49;
      v12 = v63;
    }

    while (v29);
  }

  v32 = v23;
  while (1)
  {
    v23 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v23 >= v30)
    {
      return v22;
    }

    v33 = *(v25 + 8 * v23);
    ++v32;
    if (v33)
    {
      v31 = __clz(__rbit64(v33));
      v29 = (v33 - 1) & v33;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_1C6E2AAA8(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77A8, &qword_1C6EE6960);
  v4 = sub_1C6EE5320();
  v5 = v4;
  v6 = 0;
  v31 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v28 = v4 + 64;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v31 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = *(*(v31 + 56) + 8 * v17);

      sub_1C6E1423C(v21, &v29);
      if (v2)
      {
        break;
      }

      *(v28 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v22 = (v5[6] + 16 * v17);
      *v22 = v19;
      v22[1] = v20;
      v23 = v5[7] + 24 * v17;
      v24 = v30;
      *v23 = v29;
      *(v23 + 16) = v24;
      v25 = v5[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_17;
      }

      v5[2] = v27;
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

unint64_t sub_1C6E2AC54()
{
  result = qword_1EDEF5F18;
  if (!qword_1EDEF5F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF5F18);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1C6E2AD0C()
{
  result = qword_1EC1F7C88;
  if (!qword_1EC1F7C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7C88);
  }

  return result;
}

unint64_t sub_1C6E2AD60()
{
  result = qword_1EC1F7CA0;
  if (!qword_1EC1F7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7CA0);
  }

  return result;
}

unint64_t sub_1C6E2ADB4()
{
  result = qword_1EC1F7CB8;
  if (!qword_1EC1F7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7CB8);
  }

  return result;
}

unint64_t sub_1C6E2AE08()
{
  result = qword_1EC1F7CC0;
  if (!qword_1EC1F7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7CC0);
  }

  return result;
}

uint64_t sub_1C6E2AE5C(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F7CA8, &qword_1C6EE8448);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C6E2AEEC()
{
  result = qword_1EC1F7CD8;
  if (!qword_1EC1F7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7CD8);
  }

  return result;
}

unint64_t sub_1C6E2AF40()
{
  result = qword_1EC1F7CE0;
  if (!qword_1EC1F7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7CE0);
  }

  return result;
}

uint64_t sub_1C6E2AF94(uint64_t result, unint64_t a2, char a3)
{
  if ((~a2 & 0x3000000000000000) != 0 || ~a3 != 0)
  {
    return sub_1C6E00CBC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C6E2AFBC(uint64_t *a1)
{
  v3 = sub_1C6E2928C(*(v1 + 16));

  *a1 = v3;
  return result;
}

unint64_t sub_1C6E2B008()
{
  result = qword_1EDEF8910;
  if (!qword_1EDEF8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF8910);
  }

  return result;
}

unint64_t sub_1C6E2B05C(uint64_t a1)
{
  result = sub_1C6E2B084();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C6E2B084()
{
  result = qword_1EC1F7CE8;
  if (!qword_1EC1F7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7CE8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C6E2B0F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C6E2B13C(uint64_t result, int a2, int a3)
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

uint64_t sub_1C6E2B188(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1C6E2B1D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6E2B258(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6E2B2A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6E2B328(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_1C6E2B378(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1C6E2B418()
{
  result = qword_1EC1F7CF0;
  if (!qword_1EC1F7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7CF0);
  }

  return result;
}

unint64_t sub_1C6E2B470()
{
  result = qword_1EC1F7CF8;
  if (!qword_1EC1F7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7CF8);
  }

  return result;
}

unint64_t sub_1C6E2B4C8()
{
  result = qword_1EC1F7D00;
  if (!qword_1EC1F7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7D00);
  }

  return result;
}

unint64_t sub_1C6E2B520()
{
  result = qword_1EC1F7D08;
  if (!qword_1EC1F7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7D08);
  }

  return result;
}

unint64_t sub_1C6E2B578()
{
  result = qword_1EC1F7D10;
  if (!qword_1EC1F7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7D10);
  }

  return result;
}

unint64_t sub_1C6E2B5D0()
{
  result = qword_1EC1F7D18;
  if (!qword_1EC1F7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7D18);
  }

  return result;
}

uint64_t sub_1C6E2B624(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E2B68C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6E2B6EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6E2B734(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E2B79C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E2B804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E2B86C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E2B8CC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_1C6E2B91C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v38[19] = *MEMORY[0x1E69E9840];
  v38[5] = a3;
  v38[6] = a4;
  v38[7] = a1;
  v38[8] = a2;
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v38, 0, 14);
      sub_1C6EE4170();
      v15 = sub_1C6EE4B10();

      v16 = sub_1C6EE4B10();
      v17 = setxattr((v15 + 32), (v16 + 32), v38, 0, 0, 0);

      if ((v17 & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
  }

  else
  {
    if (!v7)
    {
      v38[0] = a1;
      LOWORD(v38[1]) = a2;
      BYTE2(v38[1]) = BYTE2(a2);
      BYTE3(v38[1]) = BYTE3(a2);
      BYTE4(v38[1]) = BYTE4(a2);
      BYTE5(v38[1]) = BYTE5(a2);
      v8 = BYTE6(a2);
      sub_1C6EE4170();
      v9 = sub_1C6EE4B10();

      v10 = sub_1C6EE4B10();
      v11 = setxattr((v9 + 32), (v10 + 32), v38, v8, 0, 0);

      if ((v11 & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    v12 = a1;
    v13 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  v14 = sub_1C6E2BEA8(v12, v13, sub_1C6E2BE84);
  if (v4)
  {
LABEL_19:

    __break(1u);
    return;
  }

  if ((v14 & 0x80000000) == 0)
  {
    return;
  }

LABEL_12:
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDEF8F88;
  v19 = sub_1C6EE4EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C6EE65B0;
  v21 = sub_1C6EE4170();
  v23 = v22;
  v24 = MEMORY[0x1E69E6158];
  *(v20 + 56) = MEMORY[0x1E69E6158];
  v25 = sub_1C6DF10E0();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  *(v20 + 96) = v24;
  *(v20 + 104) = v25;
  *(v20 + 64) = v25;
  *(v20 + 72) = a3;
  *(v20 + 80) = a4;

  LODWORD(v38[0]) = MEMORY[0x1CCA57C40](v26);
  v27 = sub_1C6EE5460();
  *(v20 + 136) = v24;
  *(v20 + 144) = v25;
  *(v20 + 112) = v27;
  *(v20 + 120) = v28;
  sub_1C6EE4730("Failed to set extended attribute, path=%{public}@, name=%{public}@, errno=%{public}@", 84, 2, &dword_1C6DE9000, v18, v19, v20);

  v29 = *MEMORY[0x1E696A798];
  v30 = MEMORY[0x1CCA57C40]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DB0, &qword_1C6EE8A48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6EE6590;
  *(inited + 32) = sub_1C6EE4A90();
  *(inited + 40) = v32;
  v33 = MEMORY[0x1CCA57C40]();
  if (!strerror(v33))
  {

    __break(1u);
    goto LABEL_19;
  }

  v34 = sub_1C6EE4B70();
  *(inited + 72) = v24;
  *(inited + 48) = v34;
  *(inited + 56) = v35;
  sub_1C6E0C2A0(inited);
  swift_setDeallocating();
  sub_1C6E2BF58(inited + 32);
  v36 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v37 = sub_1C6EE4990();

  [v36 initWithDomain:v29 code:v30 userInfo:v37];

  swift_willThrow();
}

uint64_t sub_1C6E2BD80@<X0>(const void *a1@<X0>, size_t a3@<X5>, unint64_t a4@<X6>, int *a5@<X8>)
{
  result = sub_1C6EE4170();
  v10 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v10 != 2)
    {
      a3 = 0;
      goto LABEL_11;
    }

    v12 = *(a3 + 16);
    v11 = *(a3 + 24);
    a3 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v10)
  {
    a3 = BYTE6(a4);
LABEL_11:
    v13 = sub_1C6EE4B10();

    v14 = sub_1C6EE4B10();
    v15 = setxattr((v13 + 32), (v14 + 32), a1, a3, 0, 0);

    *a5 = v15;
    return result;
  }

  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    a3 = HIDWORD(a3) - a3;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void *sub_1C6E2BEA8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  result = sub_1C6EE3F90();
  v8 = result;
  if (result)
  {
    result = sub_1C6EE3FC0();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_1C6EE3FB0();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 + v12;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = a3(&v15, v8, v14);
  if (!v3)
  {
    return v15;
  }

  return result;
}

uint64_t sub_1C6E2BF58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7798, &qword_1C6EE8A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C6E2BFC0()
{
  result = qword_1EC1F7DB8;
  if (!qword_1EC1F7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7DB8);
  }

  return result;
}

uint64_t sub_1C6E2C014(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6E2C064(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1C6E2C0BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1C6E2C0D8(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

__n128 __swift_memcpy100_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 24);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1C6E2C138(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 100))
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

uint64_t sub_1C6E2C180(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 100) = 1;
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

    *(result + 100) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6E2C1EC(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v82 = sub_1C6EE3F70();
  v4 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution(0);
  v73 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  v77 = v2;
  if (v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1C6E2D5B0(v2, &v89);
    v91 = v11;
    sub_1C6E15A70(0, v9, 0);
    v12 = 0;
    v78 = a1 + 32;
    v13 = v91;
    LODWORD(v76) = *v2;
    v72 = *(v2 + 8);
    v75 = *(v72 + 16);
    v74 = (v4 + 8);
    v79 = v9;
    while (1)
    {
      v84 = v12;
      v14 = (v78 + 16 * v12);
      v15 = *v14;
      v16 = v14[1];
      if (v76)
      {
        v15 = sub_1C6EE4B00();
        v18 = v17;
      }

      else
      {

        v18 = v16;
      }

      v80 = v13;

      v19 = v75;
      v83 = v16;
      if (v75)
      {
        break;
      }

LABEL_21:
      v89 = v15;
      v90 = v18;

      v30 = v81;
      sub_1C6EE3F40();
      sub_1C6DF0C68();
      v31 = sub_1C6EE5000();
      v33 = v32;

      (*v74)(v30, v82);

      v34 = sub_1C6E00E34(v31, v33, *(v77 + 16), *(v77 + 24), *(v77 + 32), *(v77 + 40));

      v13 = v80;
      v91 = v80;
      v36 = *(v80 + 16);
      v35 = *(v80 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1C6E15A70((v35 > 1), v36 + 1, 1);
        v13 = v91;
      }

      v12 = v84 + 1;
      *(v13 + 16) = v36 + 1;
      *(v13 + 8 * v36 + 32) = v34;
      if (v12 == v79)
      {
        v37 = v77;
        sub_1C6E2D700(v77);
        v10 = MEMORY[0x1E69E7CC0];
        v38 = *(v13 + 16);
        if (v38)
        {
          goto LABEL_25;
        }

LABEL_57:

        v40 = MEMORY[0x1E69E7CC0];
        goto LABEL_58;
      }
    }

    v20 = v72 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
    v21 = *(v73 + 72);
    while (1)
    {
      sub_1C6E2D5E8(v20, v8);
      if (v8[8] != 1)
      {
        goto LABEL_61;
      }

      if (*v8 > 1)
      {
        if (*v8 != 2)
        {
          goto LABEL_61;
        }

        v26 = *(v8 + 2);
        v27 = *(v8 + 3);
        if (v26 == 46 && v27 == 0xE100000000000000 || (sub_1C6EE54B0() & 1) != 0)
        {

          sub_1C6EE4B40();
          v24 = sub_1C6EE4BD0();
          goto LABEL_18;
        }

        v89 = v15;
        v90 = v18;
        v87 = v26;
        v88 = v27;
        v29 = *(v8 + 5);
        v85 = *(v8 + 4);
        v86 = v29;
        sub_1C6DF0C68();
      }

      else
      {
        if (*v8 != 1)
        {
          goto LABEL_61;
        }

        v89 = v15;
        v90 = v18;
        v22 = *(v8 + 3);
        v87 = *(v8 + 2);
        v88 = v22;
        v23 = *(v8 + 5);
        v85 = *(v8 + 4);
        v86 = v23;
        sub_1C6DF0C68();
      }

      v24 = sub_1C6EE5010();
LABEL_18:
      v15 = v24;
      v28 = v25;

      v18 = v28;
      sub_1C6E2D6A0(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution);
      v20 += v21;
      if (!--v19)
      {
        goto LABEL_21;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
  v37 = v2;
  v38 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v38)
  {
    goto LABEL_57;
  }

LABEL_25:
  v87 = v10;
  sub_1C6E15A70(0, v38, 0);
  v39 = 0;
  v40 = v87;
  v41 = *(v37 + 56);
  v74 = *(v37 + 48);
  v73 = v41;
  v42 = *(v37 + 64);
  v43 = *(v37 + 80);
  v44 = *(v37 + 88);
  v76 = v13 + 32;
  v45 = HIBYTE(v44) & 0xF;
  v83 = v44;
  v84 = v43;
  v46 = v43 & 0xFFFFFFFFFFFFLL;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v45 = v46;
  }

  v75 = v45;
  v8 = (v42 + 56);
  v80 = v13;
  v72 = v38;
  while (1)
  {
    if (v39 >= *(v13 + 16))
    {
      goto LABEL_60;
    }

    v47 = *(v76 + 8 * v39);
    v79 = v40;
    v78 = v39;
    if (v75)
    {
      break;
    }

    v65 = sub_1C6E32D3C(v64, v42, v74, v73);
LABEL_52:

    v40 = v79;
    v87 = v79;
    v67 = *(v79 + 16);
    v66 = *(v79 + 24);
    if (v67 >= v66 >> 1)
    {
      sub_1C6E15A70((v66 > 1), v67 + 1, 1);
      v40 = v87;
    }

    v39 = v78 + 1;
    *(v40 + 16) = v67 + 1;
    *(v40 + 8 * v67 + 32) = v65;
    if (v39 == v38)
    {

      v37 = v77;
LABEL_58:
      sub_1C6EDB41C(v40, v71, *(v37 + 72), *(v37 + 96));
      v69 = v68;

      return v69;
    }
  }

  v48 = *(v47 + 16);
  if (!v48)
  {

    v51 = MEMORY[0x1E69E7CC0];
LABEL_51:
    v65 = sub_1C6E32D3C(v51, v42, v74, v73);

    v38 = v72;
    goto LABEL_52;
  }

  v85 = MEMORY[0x1E69E7CC0];

  v82 = v47;
  sub_1C6E15A10(0, v48, 0);
  v49 = v82;
  v50 = 0;
  v51 = v85;
  v81 = (v82 + 32);
  while (v50 < *(v49 + 16))
  {
    if (*(v42 + 16))
    {
      v52 = &v81[16 * v50];
      v53 = *v52;
      v54 = *(v52 + 1);
      sub_1C6EE5580();

      sub_1C6EE4B30();
      v55 = sub_1C6EE55A0();
      v56 = -1 << *(v42 + 32);
      v57 = v55 & ~v56;
      if ((*&v8[(v57 >> 3) & 0xFFFFFFFFFFFFFF8] >> v57))
      {
        v58 = ~v56;
        while (1)
        {
          v59 = (*(v42 + 48) + 16 * v57);
          v60 = *v59 == v53 && v59[1] == v54;
          if (v60 || (sub_1C6EE54B0() & 1) != 0)
          {
            break;
          }

          v57 = (v57 + 1) & v58;
          if (((*&v8[(v57 >> 3) & 0xFFFFFFFFFFFFFF8] >> v57) & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        v49 = v82;
        goto LABEL_45;
      }

LABEL_42:

      v49 = v82;
    }

    v54 = v83;

    v53 = v84;
LABEL_45:
    v85 = v51;
    v62 = *(v51 + 16);
    v61 = *(v51 + 24);
    if (v62 >= v61 >> 1)
    {
      sub_1C6E15A10((v61 > 1), v62 + 1, 1);
      v49 = v82;
      v51 = v85;
    }

    ++v50;
    *(v51 + 16) = v62 + 1;
    v63 = v51 + 16 * v62;
    *(v63 + 32) = v53;
    *(v63 + 40) = v54;
    if (v50 == v48)
    {
      v13 = v80;
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  sub_1C6E2D64C();
  swift_allocError();
  swift_willThrow();

  sub_1C6E2D6A0(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C6E2CAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v86 = a1;
  v74 = a3;
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC0, &qword_1C6EE8B50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v83 = &v72[-v4];
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec(0);
  v81 = *(v5 - 8);
  v82 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v72[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC8, &qword_1C6EE8B58);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v80 = &v72[-v8];
  v79 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec(0);
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v87 = &v72[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD0, &qword_1C6EE8B60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v72[-v11];
  v76 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  v13 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v15 = &v72[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD8, &qword_1C6EE8B68);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v72[-v17];
  v19 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v72[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  sub_1C6E2D480(v86 + v88[6], v18, &qword_1EC1F7DD8, &qword_1C6EE8B68);
  v23 = *(v20 + 48);
  if (v23(v18, 1, v19) == 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    *v22 = 0;
    *(v22 + 1) = v24;
    sub_1C6EE4420();
    v25 = *(v19 + 28);
    v26 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
    (*(*(v26 - 8) + 56))(&v22[v25], 1, 1, v26);
    if (v23(v18, 1, v19) != 1)
    {
      sub_1C6E2D4E8(v18, &qword_1EC1F7DD8, &qword_1C6EE8B68);
    }
  }

  else
  {
    sub_1C6E2D548(v18, v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  }

  v90 = *v22;
  v78 = *(v22 + 1);

  sub_1C6E2D6A0(v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  v27 = v86;
  sub_1C6E2D480(v86 + v88[7], v12, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  v28 = *(v13 + 48);
  v29 = v76;
  v30 = v28(v12, 1, v76);
  v31 = v82;
  v32 = v80;
  if (v30 == 1)
  {
    sub_1C6EE4420();
    v33 = *(v29 + 20);
    v34 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
    (*(*(v34 - 8) + 56))(&v15[v33], 1, 1, v34);
    v35 = *(v29 + 24);
    v36 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy(0);
    (*(*(v36 - 8) + 56))(&v15[v35], 1, 1, v36);
    v37 = v28(v12, 1, v29);
    v38 = v83;
    v39 = v81;
    v40 = v87;
    if (v37 != 1)
    {
      sub_1C6E2D4E8(v12, &qword_1EC1F7DD0, &qword_1C6EE8B60);
    }
  }

  else
  {
    sub_1C6E2D548(v12, v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
    v38 = v83;
    v39 = v81;
    v40 = v87;
  }

  v81 = sub_1C6E011E0(v15);
  v83 = v41;
  v76 = v42;
  v73 = v43;
  sub_1C6E2D6A0(v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
  sub_1C6E2D480(v27 + v88[8], v32, &qword_1EC1F7DC8, &qword_1C6EE8B58);
  v44 = *(v77 + 48);
  v45 = v79;
  if (v44(v32, 1, v79) == 1)
  {
    sub_1C6EE4420();
    v46 = *(v45 + 20);
    v47 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
    (*(*(v47 - 8) + 56))(&v87[v46], 1, 1, v47);
    v48 = *(v45 + 24);
    v49 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy(0);
    v50 = &v87[v48];
    v40 = v87;
    (*(*(v49 - 8) + 56))(v50, 1, 1, v49);
    v51 = v44(v32, 1, v45);
    v52 = v84;
    if (v51 != 1)
    {
      sub_1C6E2D4E8(v32, &qword_1EC1F7DC8, &qword_1C6EE8B58);
    }
  }

  else
  {
    sub_1C6E2D548(v32, v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);
    v52 = v84;
  }

  v53 = sub_1C6E33400(v40);
  v55 = v54;
  sub_1C6E2D6A0(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);
  sub_1C6E2D480(v27 + v88[9], v38, &qword_1EC1F7DC0, &qword_1C6EE8B50);
  v56 = *(v39 + 48);
  if (v56(v38, 1, v31) == 1)
  {
    *v52 = 0;
    v52[1] = 0xE000000000000000;
    v52[2] = sub_1C6E0C3E4(MEMORY[0x1E69E7CC0]);
    sub_1C6EE4420();
    v57 = *(v31 + 28);
    v58 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
    (*(*(v58 - 8) + 56))(v52 + v57, 1, 1, v58);
    if (v56(v38, 1, v31) != 1)
    {
      sub_1C6E2D4E8(v38, &qword_1EC1F7DC0, &qword_1C6EE8B50);
    }
  }

  else
  {
    sub_1C6E2D548(v38, v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
  }

  v59 = v85;
  v63 = sub_1C6EDB618(v52);
  v64 = v52;
  if (v59)
  {
    sub_1C6E2D6A0(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
  }

  else
  {
    v66 = v60;
    v67 = v61;
    v68 = v62;
    sub_1C6E2D6A0(v64, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
    if (v75)
    {
      v69 = v75;
    }

    else
    {

      v69 = sub_1C6E0D44C();
    }

    v70 = v73 & 1;
    v89 = v73 & 1;
    v71 = v74;
    *v74 = v90;
    *(v71 + 1) = v78;
    *(v71 + 2) = v81;
    *(v71 + 3) = v83;
    *(v71 + 4) = v76;
    v71[40] = v70;
    *(v71 + 6) = v53;
    *(v71 + 7) = v55;
    *(v71 + 8) = v69;
    *(v71 + 9) = v63;
    *(v71 + 10) = v66;
    *(v71 + 11) = v67;
    *(v71 + 24) = v68;
  }
}

uint64_t sub_1C6E2D480(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E2D4E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6E2D548(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E2D5E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C6E2D64C()
{
  result = qword_1EC1F7DE0;
  if (!qword_1EC1F7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7DE0);
  }

  return result;
}

uint64_t sub_1C6E2D6A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void ComputeServiceSettings.computeServiceDataSettings.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

void ComputeServiceSettings.unloadPolicy.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t ComputeServiceSettings.init(computeServiceDataSettings:storageMode:unloadPolicy:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(result + 8);
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 8);
  *a4 = *result;
  *(a4 + 8) = v4;
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
  *(a4 + 25) = v5;
  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ComputeServiceSettings.UnloadPolicy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 9))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ComputeServiceSettings.UnloadPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
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

uint64_t sub_1C6E2D86C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1C6E2D89C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ComputeServiceSettings.StorageMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
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

uint64_t storeEnumTagSinglePayload for ComputeServiceSettings.StorageMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
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

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1C6E2DA3C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6E2DA80()
{
  v1 = *v0;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E2DAF4(uint64_t a1)
{
  v2 = *v1;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v2);
  return sub_1C6EE55A0();
}

id sub_1C6E2DB38(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (!*(a1 + 16) || (v6 = sub_1C6DEC784(*a2, *(a2 + 8)), (v7 & 1) == 0))
  {
    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
    }

    v14 = qword_1EDEF8F88;
    v15 = sub_1C6EE4EC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C6EE6590;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1C6DF10E0();
    *(v16 + 32) = v3;
    *(v16 + 40) = v2;

    sub_1C6EE4730("Failed to find feature for name %{public}@", 42, 2, &dword_1C6DE9000, v14, v15, v16);

    return 0;
  }

  v8 = *(a1 + 56) + 24 * v6;
  v10 = *v8;
  v9 = *(v8 + 8);
  v11 = *(v8 + 16);
  if (*(a2 + 32) != 1)
  {
    goto LABEL_11;
  }

  v12 = *(a2 + 24);
  if (v12 <= 3)
  {
    if (v12 == 2)
    {
      v13 = 131104;
      goto LABEL_19;
    }

LABEL_11:
    sub_1C6E00CBC(v10, v9, v11);
    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
    }

    v17 = qword_1EDEF8F88;
    v18 = sub_1C6EE4EC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C6EE6590;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1C6DF10E0();
    *(v19 + 32) = v3;
    *(v19 + 40) = v2;

    sub_1C6EE4730("Failed to find data type for %{public}@", 39, 2, &dword_1C6DE9000, v17, v18, v19);
    goto LABEL_14;
  }

  if ((v12 - 5) < 2)
  {
    goto LABEL_11;
  }

  if (v12 == 4)
  {
    v13 = 65568;
  }

  else
  {
    v13 = 65552;
  }

LABEL_19:
  v21 = *(a2 + 16);
  sub_1C6E00CBC(v10, v9, v11);
  v22 = sub_1C6E0E97C(v13, v21);
  if (!v22)
  {
    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
    }

    v24 = qword_1EDEF8F88;
    v25 = sub_1C6EE4EC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1C6EE6590;
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = sub_1C6DF10E0();
    *(v26 + 32) = v3;
    *(v26 + 40) = v2;

    sub_1C6EE4730("Failed to get tensor for feature %{public}@", 43, 2, &dword_1C6DE9000, v24, v25, v26);
LABEL_14:

    sub_1C6E00C60(v10, v9, v11);
    return 0;
  }

  v23 = v22;
  sub_1C6E00C60(v10, v9, v11);
  return v23;
}

uint64_t getEnumTagSinglePayload for DType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C6E2E008()
{
  result = qword_1EC1F7DE8;
  if (!qword_1EC1F7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7DE8);
  }

  return result;
}

void *sub_1C6E2E05C(uint64_t a1)
{
  v31 = a1;
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec);
  v30 = *(v6 + 16);
  if (!v30)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v7 = 0;
  v29 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v8 = MEMORY[0x1E69E7CC8];
  while (v7 < *(v6 + 16))
  {
    sub_1C6E00BFC(v29 + *(v3 + 72) * v7, v5);
    v11 = sub_1C6E2DB38(v31, v5);
    if (!v11)
    {
      goto LABEL_4;
    }

    v13 = *v5;
    v12 = v5[1];
    v14 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v8;
    v16 = sub_1C6DEC784(v13, v12);
    v18 = v8[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_20;
    }

    v22 = v17;
    if (v8[3] < v21)
    {
      sub_1C6E072DC(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_1C6DEC784(v13, v12);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      v8 = v32;
      if (v22)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v27 = v16;
    sub_1C6E09C58();
    v16 = v27;
    v8 = v32;
    if (v22)
    {
LABEL_3:
      v9 = v8[7];
      v10 = *(v9 + 8 * v16);
      *(v9 + 8 * v16) = v14;

      goto LABEL_4;
    }

LABEL_13:
    v8[(v16 >> 6) + 8] |= 1 << v16;
    v24 = (v8[6] + 16 * v16);
    *v24 = v13;
    v24[1] = v12;
    *(v8[7] + 8 * v16) = v14;

    v25 = v8[2];
    v20 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v8[2] = v26;
LABEL_4:
    sub_1C6E2E408(v5, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    if (v30 == ++v7)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1C6EE5500();
  __break(1u);
  return result;
}

uint64_t sub_1C6E2E2E4()
{

  sub_1C6E2E408(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  sub_1C6E00DCC(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TFModelContainer(uint64_t a1)
{
  result = qword_1EDEF8540;
  if (!qword_1EDEF8540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E2E408(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E2E468(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v19 = sub_1C6EE4E50();
  if (!v19)
  {
    return sub_1C6EE4CF0();
  }

  v41 = v19;
  v45 = sub_1C6EE52D0();
  v32 = sub_1C6EE52E0();
  sub_1C6EE5280();
  result = sub_1C6EE4E40();
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
      v22 = sub_1C6EE4E70();
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
      sub_1C6EE52C0();
      result = sub_1C6EE4E60();
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

uint64_t sub_1C6E2E898(__int128 *a1, __int128 *a2, uint64_t a3, unsigned __int8 *a4)
{
  v8 = swift_allocObject();
  sub_1C6E2E900(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1C6E2E900(__int128 *a1, __int128 *a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = v4;
  v8 = *a4;
  sub_1C6DF30C8(a1, v5 + 16);
  sub_1C6DF30C8(a2, v5 + 56);
  *(v5 + 96) = a3;
  *(v5 + 104) = v8;
  sub_1C6DEDC4C(v8 != 2);
  return v5;
}

uint64_t *sub_1C6E2E960()
{
  v1 = *(*v0 + 80);
  v2 = sub_1C6EE4FE0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v28 - v5;
  v7 = *(v1 - 8);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v10 = &v28 - v9;
  v11 = *(v0 + 104);
  if (v11 == 2)
  {
    v28 = v8;
    v12 = sub_1C6DEDD3C(5);
    if (v12)
    {
      v13 = v12;
      if (qword_1EDEF8F80 != -1)
      {
        swift_once();
      }

      v14 = qword_1EDEF8F88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1C6EE6590;
      v16 = sub_1C6DF29EC(v15);
      v18 = v17;
      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 64) = sub_1C6DF10E0();
      *(v15 + 32) = v16;
      *(v15 + 40) = v18;
      v19 = sub_1C6EE4EE0();
      sub_1C6EE4730("Found existing configuration %{public}@", 39, 2, &dword_1C6DE9000, v14, v19, v15);
    }

    else
    {
      v22 = *(v0 + 40);
      v23 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v22);
      (*(v23 + 24))(v22, v23);
      if ((*(v7 + 48))(v6, 1, v1) == 1)
      {
        (*(v3 + 8))(v6, v28);
        if (qword_1EDEF8F80 != -1)
        {
          swift_once();
        }

        v24 = qword_1EDEF8F88;
        v25 = sub_1C6EE4EE0();
        sub_1C6EE4730("Found no suitable configuration", 31, 2, &dword_1C6DE9000, v24, v25, MEMORY[0x1E69E7CC0]);
        return 0;
      }

      else
      {
        (*(v7 + 32))(v10, v6, v1);
        if (qword_1EDEF8F80 != -1)
        {
          swift_once();
        }

        v26 = qword_1EDEF8F88;
        v27 = sub_1C6EE4EE0();
        sub_1C6EE4730("Found bundled configuration", 27, 2, &dword_1C6DE9000, v26, v27, MEMORY[0x1E69E7CC0]);
        v13 = sub_1C6ECFF6C(v10);
        sub_1C6E2EE18(v13);
        (*(v7 + 8))(v10, v1);
      }
    }

    return v13;
  }

  else
  {
    if (v11)
    {
      v20 = 31;
    }

    else
    {
      v20 = 13;
    }

    return sub_1C6DEDD3C(v20);
  }
}

uint64_t sub_1C6E2EE18(uint64_t *a1)
{
  v2 = sub_1C6ED1770(a1);
  sub_1C6E3041C(v2, a1);

  if (qword_1EDEF66C8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDEF66D0;
  v4 = sub_1C6EE4EE0();
  v5 = MEMORY[0x1E69E7CC0];

  return sub_1C6EE4730("Successfully fetched and unzipped bundled packages, installing bundled configuration", 84, 2, &dword_1C6DE9000, v3, v4, v5);
}

uint64_t sub_1C6E2EFE0()
{
  v1[8] = v0;
  v2 = *v0;
  v1[9] = *v0;
  v3 = *(v2 + 80);
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = sub_1C6EE48F0();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6E2F140, 0, 0);
}

uint64_t sub_1C6E2F140(uint64_t a1)
{
  if (qword_1EDEF66C8 != -1)
  {
    swift_once();
  }

  v2 = v1[8];
  v3 = qword_1EDEF66D0;
  v1[17] = qword_1EDEF66D0;
  v4 = sub_1C6EE4EE0();
  sub_1C6EE4730("Fetching ComputationalGraph Packages", 36, 2, &dword_1C6DE9000, v3, v4, MEMORY[0x1E69E7CC0]);
  sub_1C6EE48E0();
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  v10 = (*(v6 + 32) + **(v6 + 32));
  v7 = swift_task_alloc();
  v1[18] = v7;
  *v7 = v1;
  v7[1] = sub_1C6E2F2F0;
  v8 = v1[12];

  return v10(v8, v5, v6);
}

uint64_t sub_1C6E2F2F0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1C6E2F97C;
  }

  else
  {
    v2 = sub_1C6E2F404;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C6E2F404()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v18 = v0[8];
  v19 = v0[19];
  v0[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6EE6B40;
  v0[5] = (*(*(v3 + 88) + 72))(v4, *(v3 + 88));
  v0[6] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1F7DF0, &qword_1C6EE8DF0);
  v7 = sub_1C6EE4AF0();
  v9 = v8;
  v10 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1C6DF10E0();
  v0[21] = v11;
  *(v5 + 64) = v11;
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  *(v5 + 96) = v10;
  *(v5 + 104) = v11;
  sub_1C6EE51C0();
  v12 = sub_1C6EE4EE0();
  sub_1C6EE4730("Fetched configuration with human readable identifier: %{public}@, storage identifier: %{public}@", 96, 2, &dword_1C6DE9000, v1, v12, v5);

  sub_1C6E2FDF4(v18, v2);
  v0[22] = v13;
  if (v19)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    sub_1C6E2FC3C();
    (*(v0[14] + 8))(v0[16], v0[13]);

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v13;
    v17 = swift_task_alloc();
    v0[23] = v17;
    *v17 = v0;
    v17[1] = sub_1C6E2F674;

    return sub_1C6E2FFA8(v16);
  }
}

uint64_t sub_1C6E2F674(char a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_1C6E2FA20;
  }

  else
  {
    *(v4 + 200) = a1 & 1;
    v5 = sub_1C6E2F7A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

unint64_t sub_1C6E2F7A0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6EE6590;
  sub_1C6EE48E0();
  v6 = sub_1C6EE48D0();
  v7 = *(v4 + 8);
  v7(v2, v3);
  result = sub_1C6EE48D0();
  v9 = v6 - result;
  v22 = v7;
  if (v1 != 1)
  {
    if (v6 >= result)
    {
      v10 = "Fetched and processed packages without changes in %.0f milliseconds";
      v11 = 67;
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  if (v6 < result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = "Fetched and unzipped computationalGraph packages with changes in %.0f milliseconds";
  v11 = 82;
LABEL_6:
  v13 = *(v0 + 128);
  v12 = *(v0 + 136);
  v14 = *(v0 + 96);
  v21 = *(v0 + 104);
  v16 = *(v0 + 80);
  v15 = *(v0 + 88);
  v17 = MEMORY[0x1E69E6438];
  *(v5 + 56) = MEMORY[0x1E69E63B0];
  *(v5 + 64) = v17;
  *(v5 + 32) = v9 / 1000000.0;
  v18 = sub_1C6EE4EE0();
  sub_1C6EE4730(v10, v11, 2, &dword_1C6DE9000, v12, v18, v5);

  (*(v15 + 8))(v14, v16);
  sub_1C6E2FC3C();
  v22(v13, v21);

  v19 = *(v0 + 8);
  v20 = *(v0 + 176);

  return v19(v20);
}

uint64_t sub_1C6E2F97C()
{
  sub_1C6E2FC3C();
  (*(v0[14] + 8))(v0[16], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1C6E2FA20()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6EE6590;
  swift_getErrorValue();
  sub_1C6EE5480();
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = v1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  v4 = sub_1C6EE4EE0();
  sub_1C6EE4730("Failed to fetch packages with error %{public}@. Attempting to prune unused containers.", 86, 2, &dword_1C6DE9000, v2, v4, v3);

  sub_1C6ED02E4();
  sub_1C6ED0370();
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  sub_1C6E2FC3C();
  (*(v0[14] + 8))(v0[16], v0[13]);

  v8 = v0[1];

  return v8();
}

unint64_t sub_1C6E2FC3C()
{
  v0 = sub_1C6EE48F0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEF66C8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6590;
  sub_1C6EE48E0();
  v5 = sub_1C6EE48D0();
  (*(v1 + 8))(v3, v0);
  result = sub_1C6EE48D0();
  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E6438];
    *(v4 + 56) = MEMORY[0x1E69E63B0];
    *(v4 + 64) = v7;
    *(v4 + 32) = (v5 - result) / 1000000.0;
    sub_1C6EE4EE0();
    sub_1C6EE4730("Finished fetching and processing computationalGraph packages in %.0f milliseconds", v8);
  }

  return result;
}

void sub_1C6E2FDF4(uint64_t a1, uint64_t a2)
{
  sub_1C6ECFF6C(a2);
  if (v2)
  {
    if (qword_1EDEF66C8 != -1)
    {
      swift_once();
    }

    v4 = qword_1EDEF66D0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C6EE6590;
    swift_getErrorValue();
    sub_1C6EE5480();
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = sub_1C6DF10E0();
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;
    v6 = sub_1C6EE4EE0();
    sub_1C6EE4730("Failed to create container for fetched configuration with error %{public}@. Attempting to prune unused containers.", 114, 2, &dword_1C6DE9000, v4, v6, v5);

    sub_1C6ED0370();
    sub_1C6ECFF6C(a2);
  }
}

uint64_t sub_1C6E2FFA8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C6E2FFC8, 0, 0);
}

uint64_t sub_1C6E2FFC8(uint64_t a1)
{
  v2 = sub_1C6ED1770(a1);
  v1[4] = v2;
  v3 = swift_task_alloc();
  v1[5] = v3;
  *v3 = v1;
  v3[1] = sub_1C6E3006C;
  v4 = v1[2];

  return sub_1C6E30790(v2, v4);
}

uint64_t sub_1C6E3006C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1C6E301F0;
  }

  else
  {
    v2 = sub_1C6E30180;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C6E30180()
{
  v1 = *(*(v0 + 32) + 16);

  v2 = *(v0 + 8);

  return v2(v1 != 0);
}

uint64_t sub_1C6E301F0()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1C6E30258@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1C6DEDD3C(1);
  if (v4)
  {
    v5 = *(v3 + 80);
    v11 = *(v5 - 8);
    (*(v11 + 16))(a1, v4 + *(*v4 + 104), v5);

    v6 = *(v11 + 56);
    v7 = a1;
    v8 = 0;
    v9 = v5;
  }

  else
  {
    v9 = *(v3 + 80);
    v6 = *(*(v9 - 8) + 56);
    v7 = a1;
    v8 = 1;
  }

  return v6(v7, v8, 1, v9);
}

uint64_t sub_1C6E303A4()
{
  v0 = sub_1C6DEDD3C(1);
  if (!v0)
  {
    return 0;
  }

  v1 = *(v0 + *(*v0 + 112));

  return v1;
}

uint64_t sub_1C6E3041C(uint64_t a1, uint64_t *a2)
{
  v6 = *v2;
  if (qword_1EDEF66C8 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDEF66D0;
  v8 = sub_1C6EE4EE0();
  sub_1C6EE4730("Fetching bundled package asset ids", 34, 2, &dword_1C6DE9000, v7, v8, MEMORY[0x1E69E7CC0]);
  v9 = v2[10];
  v10 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v9);
  result = (*(v10 + 24))(v9, v10);
  if (!v3)
  {
    v12 = result;
    sub_1C6EE49C0();

    swift_getWitnessTable();
    sub_1C6EE4E20();
    v13 = sub_1C6EE4E10();

    if (v13)
    {
      sub_1C6E30C1C(v12, a2);
    }

    else
    {
      v14 = sub_1C6EE4E20();
      if (*(v14 + 16) <= *(a1 + 16) >> 3)
      {

        sub_1C6E038DC(v14);

        v15 = a1;
      }

      else
      {

        v15 = sub_1C6E04178(v14, a1);
      }

      type metadata accessor for FileContainerManager.Errors(0, *(v6 + 80), *(v6 + 88), v16);
      swift_getWitnessTable();
      swift_allocError();
      *v17 = v15;
      return swift_willThrow();
    }
  }

  return result;
}

void *sub_1C6E306F0@<X0>(void *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1C6EE51C0();
  *a3 = v5;
  a3[1] = v6;
  return result;
}

uint64_t sub_1C6E30790(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C6E307B4, 0, 0);
}

uint64_t sub_1C6E307B4()
{
  if (qword_1EDEF66C8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = qword_1EDEF66D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6EE6590;
  v4 = MEMORY[0x1E69E6158];
  v5 = sub_1C6EE4DF0();
  v7 = v6;
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_1C6DF10E0();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  v8 = sub_1C6EE4EE0();
  sub_1C6EE4730("Fetching package asset ids %{public}@", 37, 2, &dword_1C6DE9000, v2, v8, v3);

  v9 = v1[10];
  v10 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v9);
  v14 = (*(v10 + 32) + **(v10 + 32));
  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v11[1] = sub_1C6E309C8;
  v12 = v0[2];

  return v14(v12, v9, v10);
}

uint64_t sub_1C6E309C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1C6E30B18, 0, 0);
  }
}

uint64_t sub_1C6E30B18()
{
  sub_1C6E30C1C(*(v0 + 56), *(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1C6E30BA0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return v0;
}

uint64_t sub_1C6E30BD0()
{
  sub_1C6E30BA0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6E30C1C(uint64_t a1, void *a2)
{
  v48 = a2;
  v3 = *a2;
  if (qword_1EDEF66C8 != -1)
  {
    swift_once();
  }

  v47 = qword_1EDEF66D0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v4 = swift_allocObject();
  v42 = xmmword_1C6EE6590;
  *(v4 + 16) = xmmword_1C6EE6590;
  v49 = a1;
  MEMORY[0x1EEE9AC00](v4);
  v5 = *(v3 + 80);
  v39 = *(v3 + 96);
  KeyPath = swift_getKeyPath();
  v44 = v39;
  v45 = v5;
  v36 = v5;
  v37 = v39;
  v38 = MEMORY[0x1EEE9AC00](KeyPath);
  v7 = MEMORY[0x1E69E6158];
  v8 = sub_1C6EE49D0();

  WitnessTable = swift_getWitnessTable();
  v9 = v46;
  v11 = sub_1C6E2E468(sub_1C6E31054, v35, v8, v7, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  v12 = MEMORY[0x1CCA580B0](v11, v7);
  v14 = v13;

  *(v4 + 56) = v7;
  v15 = sub_1C6DF10E0();
  *(v4 + 64) = v15;
  *(v4 + 32) = v12;
  *(v4 + 40) = v14;
  v16 = v47;
  v17 = sub_1C6EE4EE0();
  sub_1C6EE4730("Installing resources %{public}@", 31, 2, &dword_1C6DE9000, v16, v17, v4);

  v49 = a1;

  swift_getWitnessTable();
  v18 = sub_1C6EE4D60();
  sub_1C6ED18D8(v18);

  if (!v9)
  {
    v20 = swift_allocObject();
    v48 = v15;
    v21 = v20;
    *(v20 + 16) = v42;
    v49 = a1;
    MEMORY[0x1EEE9AC00](v20);
    v22 = v44;
    v23 = v45;
    v38 = v45;
    v39 = v44;
    v24 = swift_getKeyPath();
    v46 = &v40;
    v25 = MEMORY[0x1EEE9AC00](v24);
    v36 = v23;
    v37 = v22;
    v38 = v25;

    v26 = v8;
    v27 = MEMORY[0x1E69E6158];
    v29 = sub_1C6E2E468(sub_1C6E3115C, v35, v26, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v28);

    v30 = MEMORY[0x1CCA580B0](v29, v27);
    v32 = v31;

    v33 = v48;
    v21[7] = v27;
    v21[8] = v33;
    v21[4] = v30;
    v21[5] = v32;
    v34 = sub_1C6EE4EE0();
    sub_1C6EE4730("Successfully installed resources %{public}@", 43, 2, &dword_1C6DE9000, v16, v34, v21);
  }

  return result;
}

uint64_t sub_1C6E31080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C6E310C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1C6E31110(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6E31184(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1C6EE41A0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  result = sub_1C6E4B948(v11, v12);
  if (!v3)
  {
    v14 = result;
    v31 = 0;
    swift_beginAccess();
    v15 = *(v4 + 16);
    if (*(v15 + 16) && (v16 = sub_1C6DEBD64(v14), (v17 & 1) != 0))
    {
      sub_1C6E0D038(*(v15 + 56) + 40 * v16, v27);
      sub_1C6DEC3A8(v27, v28);
      swift_endAccess();
      v18 = v29;
      v19 = v30;
      v20 = __swift_project_boxed_opaque_existential_1(v28, v29);
      v25 = a2;
      v26 = v20;
      v21 = a1[3];
      v22 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v21);
      (*(v22 + 16))(v21, v22);
      (*(v19 + 8))(v10, v25, v18, v19);
      (*(v8 + 8))(v10, v7);
      return __swift_destroy_boxed_opaque_existential_1(v28);
    }

    else
    {
      swift_endAccess();
      sub_1C6E3282C();
      swift_allocError();
      *v23 = v14;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1C6E313AC()
{

  return swift_deallocClassInstance();
}

id sub_1C6E3144C(uint64_t a1, uint64_t a2)
{
  v23[1] = a1;
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = sub_1C6EE4090();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6EE41A0();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  v26 = a2;
  v12 = sub_1C6EE4100();
  v27[0] = 0;
  v13 = [v11 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:v27];

  v14 = v27[0];
  if (v13)
  {
    v15 = v27[0];
    v16 = [v10 defaultManager];
    v17 = sub_1C6EE4100();
    v27[0] = sub_1C6EE40E0();
    v27[1] = v18;
    (*(v4 + 104))(v6, *MEMORY[0x1E6968F58], v3);
    sub_1C6DF0C68();
    sub_1C6EE4180();
    (*(v4 + 8))(v6, v3);

    v19 = sub_1C6EE4100();
    (*(v24 + 8))(v9, v25);
    v27[0] = 0;
    v20 = [v16 copyItemAtURL:v17 toURL:v19 error:v27];

    v14 = v27[0];
    if (v20)
    {
      return v27[0];
    }
  }

  v22 = v14;
  sub_1C6EE4050();

  return swift_willThrow();
}

id sub_1C6E31748()
{
  v15[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  sub_1C6EE4170();
  v2 = sub_1C6EE4A60();

  v3 = [v1 fileExistsAtPath_];

  if ((v3 & 1) == 0)
  {
    v4 = [v0 defaultManager];
    sub_1C6EE4170();
    v5 = sub_1C6EE4A60();

    v15[0] = 0;
    v6 = [v4 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:v15];

    v7 = v15[0];
    if (!v6)
    {
      goto LABEL_6;
    }

    v8 = v15[0];
  }

  v9 = objc_opt_self();
  v10 = sub_1C6EE4100();
  v11 = sub_1C6EE4100();
  v15[0] = 0;
  v12 = [v9 unarchiveZipAtURL:v10 to:v11 error:v15];

  v7 = v15[0];
  if (v12)
  {
    return v15[0];
  }

LABEL_6:
  v14 = v7;
  sub_1C6EE4050();

  return swift_willThrow();
}

uint64_t sub_1C6E3191C(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v81 = a1;
  v88[2] = *MEMORY[0x1E69E9840];
  v2 = sub_1C6EE4350();
  v3 = *(v2 - 8);
  v76 = v2;
  v77 = v3;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v73 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v78 = v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7E78, &qword_1C6EE8F60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v72 - v8;
  v84 = sub_1C6EE4860();
  v87 = *(v84 - 8);
  v10 = MEMORY[0x1EEE9AC00](v84);
  v75 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v80 = v72 - v12;
  v13 = sub_1C6EE4090();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C6EE41A0();
  v85 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6EE40E0();
  v20 = sub_1C6EE4A60();

  v21 = [v20 stringByDeletingPathExtension];

  v22 = sub_1C6EE4A90();
  v24 = v23;

  v88[0] = v22;
  v88[1] = v24;
  (*(v14 + 104))(v16, *MEMORY[0x1E6968F58], v13);
  sub_1C6DF0C68();
  sub_1C6EE4180();
  (*(v14 + 8))(v16, v13);

  v79 = sub_1C6EE4160();
  v86 = v25;
  v26 = v85;
  v27 = *(v85 + 8);
  v82 = v17;
  v27(v19, v17);
  v28 = objc_opt_self();
  v29 = [v28 defaultManager];
  sub_1C6EE4170();
  v30 = sub_1C6EE4A60();

  LOBYTE(v21) = [v29 fileExistsAtPath_];

  v31 = v87;
  if ((v21 & 1) == 0)
  {
    v32 = [v28 defaultManager];
    v33 = sub_1C6EE4A60();
    v88[0] = 0;
    v34 = [v32 createDirectoryAtPath:v33 withIntermediateDirectories:1 attributes:0 error:v88];

    if (!v34)
    {
      v64 = v88[0];

      sub_1C6EE4050();

      return swift_willThrow();
    }

    v35 = v88[0];
    v26 = v85;
  }

  v36 = *(v26 + 16);
  v38 = v81;
  v37 = v82;
  v36(v19, v81, v82);
  sub_1C6EE4850();
  v39 = v84;
  if ((*(v31 + 48))(v9, 1, v84) == 1)
  {

    sub_1C6E326CC(v9);
    type metadata accessor for AppleArchivePackageInstaller.Errors(0);
    sub_1C6E32780(&qword_1EC1F7E80, type metadata accessor for AppleArchivePackageInstaller.Errors, &unk_1C6EE8FC0);
    swift_allocError();
    v36(v40, v38, v37);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v41 = v80;
  (*(v31 + 32))(v80, v9, v39);
  sub_1C6EE4330();
  v42 = sub_1C6EE4310();
  if (v42)
  {
    v43 = v42;
    v44 = MEMORY[0x1E69E7CC0];
    v88[0] = MEMORY[0x1E69E7CC0];
    v45 = sub_1C6E32780(&qword_1EC1F7E88, MEMORY[0x1E69E5BA8], MEMORY[0x1E69E5BB0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7E90, &qword_1C6EE8F68);
    sub_1C6E327C8();
    v46 = v78;
    v47 = v76;
    v85 = v45;
    sub_1C6EE50C0();
    v48 = sub_1C6EE4300();
    v49 = *(v77 + 8);
    v49(v46, v47);
    if (v48)
    {
      v82 = v43;
      v50 = sub_1C6EE43A0();
      v88[0] = v44;
      sub_1C6EE50C0();
      v83 = v50;
      v51 = sub_1C6EE4360();
      v52 = v78;
      v53 = v51;
      v49(v78, v47);
      if (v53)
      {
        v81 = v53;
        v72[1] = v48;
        v54 = v75;
        MEMORY[0x1CCA57C70](v79, v86);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EA0, &qword_1C6EE8F70);
        v55 = swift_allocObject();
        v55[1] = xmmword_1C6EE6590;
        sub_1C6EE4340();
        v88[0] = v55;
        sub_1C6EE50C0();
        v56 = sub_1C6EE4370();
        v49(v52, v47);
        v57 = *(v87 + 8);
        v87 += 8;
        v57(v54, v84);
        if (v56)
        {
          v88[0] = MEMORY[0x1E69E7CC0];
          v58 = v73;
          sub_1C6EE50C0();
          v59 = v74;
          sub_1C6EE4390();
          if (v59)
          {
            v60 = v57;
            v49(v58, v47);
            sub_1C6EE4380();
            v61 = v84;
            v62 = v80;

            sub_1C6EE4380();

            sub_1C6EE4320();

            sub_1C6EE4320();

            return v60(v62, v61);
          }

          else
          {
            v86 = v57;
            v49(v58, v47);
            sub_1C6EE4380();
            v70 = v84;
            v71 = v80;

            sub_1C6EE4380();

            sub_1C6EE4320();

            sub_1C6EE4320();

            return v86(v71, v70);
          }
        }

        else
        {
          type metadata accessor for AppleArchivePackageInstaller.Errors(0);
          sub_1C6E32780(&qword_1EC1F7E80, type metadata accessor for AppleArchivePackageInstaller.Errors, &unk_1C6EE8FC0);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_1C6EE4380();
          v68 = v84;
          v69 = v80;

          sub_1C6EE4320();

          sub_1C6EE4320();

          return (v57)(v69, v68);
        }
      }

      else
      {

        type metadata accessor for AppleArchivePackageInstaller.Errors(0);
        sub_1C6E32780(&qword_1EC1F7E80, type metadata accessor for AppleArchivePackageInstaller.Errors, &unk_1C6EE8FC0);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1C6EE4320();
        v65 = v84;
        v66 = v87;
        v67 = v80;

        sub_1C6EE4320();

        return (*(v66 + 8))(v67, v65);
      }
    }

    else
    {

      type metadata accessor for AppleArchivePackageInstaller.Errors(0);
      sub_1C6E32780(&qword_1EC1F7E80, type metadata accessor for AppleArchivePackageInstaller.Errors, &unk_1C6EE8FC0);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1C6EE4320();

      return (*(v87 + 8))(v80, v84);
    }
  }

  else
  {

    type metadata accessor for AppleArchivePackageInstaller.Errors(0);
    sub_1C6E32780(&qword_1EC1F7E80, type metadata accessor for AppleArchivePackageInstaller.Errors, &unk_1C6EE8FC0);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v31 + 8))(v41, v39);
  }
}

uint64_t sub_1C6E326CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7E78, &qword_1C6EE8F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for AppleArchivePackageInstaller.Errors(uint64_t a1)
{
  result = qword_1EC1F7EB0;
  if (!qword_1EC1F7EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E32780(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C6E327C8()
{
  result = qword_1EC1F7E98;
  if (!qword_1EC1F7E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F7E90, &qword_1C6EE8F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7E98);
  }

  return result;
}

unint64_t sub_1C6E3282C()
{
  result = qword_1EC1F7EA8;
  if (!qword_1EC1F7EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7EA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PackageInstaller.Errors(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PackageInstaller.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C6E32A34(uint64_t a1)
{
  result = sub_1C6EE41A0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UniqueIOUtilError(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}