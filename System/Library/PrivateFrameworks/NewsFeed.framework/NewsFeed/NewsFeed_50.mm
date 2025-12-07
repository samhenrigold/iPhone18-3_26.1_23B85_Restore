uint64_t sub_1D5FCF918(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D5FCF94C(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v28 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v28;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v28 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1D7263E5C();
        v3 = v27;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_1D5FD15E0(result, a2, 10);
  v6 = v25;
  v24 = v26;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void *sub_1D5FCFC4C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = sub_1D7263B7C();
  if (result == (1 << *(a1 + 32)))
  {
    v5 = 5;
  }

  else
  {
    result = sub_1D5FD1FEC(result, *(a1 + 36), a1, &v6);
    v5 = v6;
  }

  *a2 = v5;
  return result;
}

double sub_1D5FCFCC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D7263B7C();
  if (v4 == 1 << *(a1 + 32))
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *a2 = sub_1D5FD1F64(&v7, v4, *(a1 + 36), 0, a1);
    *(a2 + 8) = v6;
    result = *&v7;
    *(a2 + 16) = v7;
  }

  return result;
}

uint64_t sub_1D5FCFD54(uint64_t a1)
{
  v2 = sub_1D7263B7C();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1D5FD22F0(v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1D5FCFDD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D7263B7C();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_1D5FD2240(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for WebEmbedDataVisualization(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_1D5FCFE8C@<X0>(uint64_t a1@<X8>)
{
  sub_1D5FD2A8C(0);
  sub_1D5B57270(&qword_1EDF189B8, sub_1D5FD2A8C, MEMORY[0x1E69852C8]);
  sub_1D7262BFC();
  sub_1D7262C5C();
  if (v9[4] == v9[0])
  {
    v2 = sub_1D7258DFC();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_1D7262D0C();
    v6 = v5;
    v7 = sub_1D7258DFC();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_1D5FD0024(uint64_t a1)
{
  v2 = sub_1D7263B7C();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_1D5FD2564(v2, *(a1 + 36), 0, a1);
}

uint64_t sub_1D5FD008C(unsigned __int8 a1, uint64_t a2)
{
  v23 = *(a2 + 16);
  v2 = 0;
  if (v23)
  {
    v24 = a2 + 32;
    v3 = a1;
    while (1)
    {
      v4 = *(v24 + v2);
      if (v4 <= 4)
      {
        if (v4 == 3)
        {
          v6 = 0x6B61657262;
        }

        else
        {
          v6 = 0x656E6F7074736F70;
        }

        if (v4 == 3)
        {
          v7 = 0xE500000000000000;
        }

        else
        {
          v7 = 0xE900000000000064;
        }

        if (v4 == 2)
        {
          v6 = 0x6572676F72506E69;
          v7 = 0xEA00000000007373;
        }

        if (*(v24 + v2))
        {
          v8 = 0x6576694C7261656ELL;
        }

        else
        {
          v8 = 0x656D6167657270;
        }

        if (*(v24 + v2))
        {
          v9 = 0xE800000000000000;
        }

        else
        {
          v9 = 0xE700000000000000;
        }

        if (*(v24 + v2) <= 1u)
        {
          v5 = v8;
        }

        else
        {
          v5 = v6;
        }

        if (*(v24 + v2) <= 1u)
        {
          v10 = v9;
        }

        else
        {
          v10 = v7;
        }
      }

      else if (*(v24 + v2) > 7u)
      {
        if (v4 == 8)
        {
          v10 = 0xE500000000000000;
          v5 = 0x6C616E6966;
        }

        else
        {
          v10 = 0xE700000000000000;
          if (v4 == 9)
          {
            v5 = 0x74696566726F66;
          }

          else
          {
            v5 = 0x6E776F6E6B6E75;
          }
        }
      }

      else
      {
        if (v4 == 5)
        {
          v5 = 0x65646E6570737573;
          goto LABEL_32;
        }

        if (v4 == 6)
        {
          v5 = 0x656C6C65636E6163;
LABEL_32:
          v10 = 0xE900000000000064;
          goto LABEL_36;
        }

        v10 = 0xE700000000000000;
        v5 = 0x646579616C6564;
      }

LABEL_36:
      v11 = 0x74696566726F66;
      if (v3 != 9)
      {
        v11 = 0x6E776F6E6B6E75;
      }

      v12 = 0xE700000000000000;
      if (v3 == 8)
      {
        v11 = 0x6C616E6966;
        v12 = 0xE500000000000000;
      }

      v13 = 0x656C6C65636E6163;
      if (v3 == 6)
      {
        v14 = 0xE900000000000064;
      }

      else
      {
        v13 = 0x646579616C6564;
        v14 = 0xE700000000000000;
      }

      if (v3 == 5)
      {
        v13 = 0x65646E6570737573;
        v14 = 0xE900000000000064;
      }

      if (v3 <= 7)
      {
        v11 = v13;
        v12 = v14;
      }

      if (v3 == 3)
      {
        v15 = 0x6B61657262;
      }

      else
      {
        v15 = 0x656E6F7074736F70;
      }

      if (v3 == 3)
      {
        v16 = 0xE500000000000000;
      }

      else
      {
        v16 = 0xE900000000000064;
      }

      if (v3 == 2)
      {
        v15 = 0x6572676F72506E69;
        v16 = 0xEA00000000007373;
      }

      if (v3)
      {
        v17 = 0x6576694C7261656ELL;
      }

      else
      {
        v17 = 0x656D6167657270;
      }

      if (v3)
      {
        v18 = 0xE800000000000000;
      }

      else
      {
        v18 = 0xE700000000000000;
      }

      if (v3 <= 1)
      {
        v15 = v17;
        v16 = v18;
      }

      if (v3 <= 4)
      {
        v19 = v15;
      }

      else
      {
        v19 = v11;
      }

      if (v3 <= 4)
      {
        v20 = v16;
      }

      else
      {
        v20 = v12;
      }

      if (v5 == v19 && v10 == v20)
      {

        return v2;
      }

      v21 = sub_1D72646CC();

      if (v21)
      {
        return v2;
      }

      if (v23 == ++v2)
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t FormatInteger.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v29 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B3C();
  if (v13 == 1)
  {
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v16 = sub_1D725BD1C();
    v17 = __swift_project_value_buffer(v16, qword_1EDFFCD18);
    (*(*(v16 - 8) + 16))(v6, v17, v16);
    type metadata accessor for FormatVersionRequirement.Value(0);
    v18 = swift_storeEnumTagMultiPayload();
    MEMORY[0x1EEE9AC00](v18, v19);
    v29[-2] = v11;
    v29[-1] = v12;
    v20 = v32;
    sub_1D5D2BEC4(v6, sub_1D5FD2554, &v29[-4], v14, v15);
    sub_1D5D2CE08(v6, type metadata accessor for FormatVersionRequirement);
    if (!v20)
    {
      v29[1] = 0x286E6F6974706FLL;
      v29[2] = 0xE700000000000000;
      MEMORY[0x1DA6F9910](v11, v12);
      MEMORY[0x1DA6F9910](41, 0xE100000000000000);
      __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
      sub_1D726473C();
    }
  }

  else
  {
    v21 = a1[3];
    v22 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v21);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    v25 = swift_storeEnumTagMultiPayload();
    MEMORY[0x1EEE9AC00](v25, v26);
    v29[-2] = v11;
    v27 = v32;
    sub_1D5D2BEC4(v10, sub_1D5FD255C, &v29[-4], v21, v22);
    sub_1D5D2CE08(v10, type metadata accessor for FormatVersionRequirement);
    if (!v27)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
      sub_1D726475C();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

unint64_t sub_1D5FD0784()
{
  sub_1D7263D4C();

  v0 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v0);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD000000000000016;
}

unint64_t sub_1D5FD0828(uint64_t a1, uint64_t a2)
{
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](a1, a2);
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t FormatInteger.description.getter()
{
  if (*(v0 + 16) != 1)
  {
    return sub_1D72644BC();
  }

  MEMORY[0x1DA6F9910](*v0, *(v0 + 8));
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x286E6F6974706FLL;
}

uint64_t FormatInteger.optionIdentifiers.getter()
{
  if (*(v0 + 16) != 1)
  {
    return 0;
  }

  v2 = *v0;
  v1 = v0[1];
  sub_1D5B5D358(0, &qword_1EDF195B0, MEMORY[0x1E69E6158]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  return v3;
}

uint64_t FormatInteger.init(value:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t FormatInteger.value(contextLayoutOptions:)(uint64_t a1)
{
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatOption(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  if (*(v1 + 16) == 1)
  {
    v13 = *(v1 + 8);

    FormatOptionCollection.subscript.getter(v12, v13, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1D5D2CE08(v6, sub_1D5E04C00);
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57270(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v14 = v12;
      v14[1] = v13;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      sub_1D5D2F2C4(v12, v13, 1);
      sub_1D5D247E0(v6, v11);
      v17 = *(v11 + 2);

      v12 = sub_1D5FD0C58(&v17, a1, v11);

      sub_1D5D2CE08(v11, type metadata accessor for FormatOption);
    }
  }

  return v12;
}

uint64_t sub_1D5FD0C58(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1 >> 60;
  if (((1 << v3) & 0x3EEF) != 0)
  {
    v5 = type metadata accessor for FormatLayoutError(0);
    sub_1D5B57270(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    sub_1D5FD2B90(a3, v6, type metadata accessor for FormatOption);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else if (v3 == 4)
  {
    v5 = *((*a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *((*a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    if (*(v9 + 16))
    {
      v10 = *(*(a2 + 40) + 16);
      swift_beginAccess();
      if (*(*(v10 + 16) + 16))
      {
        v14 = *(a2 + 56);

        sub_1D6F622E0(v11);
        sub_1D5B886D0(v12);
        v13 = v14;
      }

      else
      {

        v13 = sub_1D6E46E28();
      }

      v5 = sub_1D5FA1B60(v13, v5, v9);
    }
  }

  else
  {
    v15[0] = *((*a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    swift_retain_n();

    v5 = sub_1D5FD0C58(v15, a2, a3);
  }

  return v5;
}

uint64_t sub_1D5FD0E50()
{
  if (*(v0 + 16) != 1)
  {
    return 0;
  }

  v2 = *v0;
  v1 = v0[1];
  sub_1D5B5D358(0, &qword_1EDF195B0, MEMORY[0x1E69E6158]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  return v3;
}

void *sub_1D5FD0ED0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1D5FD0EE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FormatInteger.value(contextLayoutOptions:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D5FD0F0C()
{
  if (*(v0 + 16) != 1)
  {
    return sub_1D72644BC();
  }

  MEMORY[0x1DA6F9910](*v0, *(v0 + 8));
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x286E6F6974706FLL;
}

double sub_1D5FD0F98()
{
  if (*(v0 + 16) == 1)
  {
    v2 = *v0;
    v1 = v0[1];

    v3 = sub_1D5E26E28(&unk_1F50FC068);
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v1;
    *(v4 + 32) = v3;
    *(v4 + 40) = 0;
    sub_1D6C4D24C(v4 | 0x3000000000000000);
  }

  return result;
}

void sub_1D5FD1064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a1;
  v74 = a2;

  v4 = sub_1D726235C();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D5FD1B6C(v4, v5);
    v41 = v40;

    v5 = v41;
    if ((v41 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1D7263E5C();
      v8 = v72;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (v7)
          {
            v26 = 0;
            v27 = v7 + 1;
            v16 = 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v26 * a3;
              if ((v30 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v31 = v28 + v29;
              v21 = __CFADD__(v30, v31);
              v26 = v30 + v31;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v27;
              --v22;
            }

            while (v22);
LABEL_47:
            v16 = 0;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v16 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (v7)
        {
          v35 = 0;
          v16 = 1;
          do
          {
            v36 = *v7;
            if (v36 < 0x30 || v36 >= v32)
            {
              if (v36 < 0x41 || v36 >= v33)
              {
                if (v36 < 0x61 || v36 >= v34)
                {
                  goto LABEL_129;
                }

                v37 = -87;
              }

              else
              {
                v37 = -55;
              }
            }

            else
            {
              v37 = -48;
            }

            v38 = v35 * a3;
            if ((v38 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v39 = v36 + v37;
            v21 = __CFADD__(v38, v39);
            v35 = v38 + v39;
            if (v21)
            {
              goto LABEL_128;
            }

            ++v7;
            --v8;
          }

          while (v8);
          v16 = 0;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          v16 = 1;
          while (1)
          {
            v17 = *v15;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v19 = v14 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v17 + v18;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v16 = 0;
LABEL_129:

        LOBYTE(v73) = v16;
        return;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v42 = HIBYTE(v5) & 0xF;
  v73 = v6;
  v74 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v42)
      {
        v63 = 0;
        v64 = a3 + 48;
        v65 = a3 + 55;
        v66 = a3 + 87;
        if (a3 > 10)
        {
          v64 = 58;
        }

        else
        {
          v66 = 97;
          v65 = 65;
        }

        v67 = &v73;
        v16 = 1;
        while (1)
        {
          v68 = *v67;
          if (v68 < 0x30 || v68 >= v64)
          {
            if (v68 < 0x41 || v68 >= v65)
            {
              if (v68 < 0x61 || v68 >= v66)
              {
                goto LABEL_129;
              }

              v69 = -87;
            }

            else
            {
              v69 = -55;
            }
          }

          else
          {
            v69 = -48;
          }

          v70 = v63 * a3;
          if ((v70 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v71 = v68 + v69;
          v21 = __CFADD__(v70, v71);
          v63 = v70 + v71;
          if (v21)
          {
            goto LABEL_128;
          }

          v67 = (v67 + 1);
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v42)
    {
      v43 = v42 - 1;
      if (v43)
      {
        v44 = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v73 + 1;
        v16 = 1;
        while (1)
        {
          v49 = *v48;
          if (v49 < 0x30 || v49 >= v45)
          {
            if (v49 < 0x41 || v49 >= v46)
            {
              if (v49 < 0x61 || v49 >= v47)
              {
                goto LABEL_129;
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          v51 = v44 * a3;
          if ((v51 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v52 = v49 + v50;
          v21 = v51 >= v52;
          v44 = v51 - v52;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v48;
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v42)
  {
    v53 = v42 - 1;
    if (v53)
    {
      v54 = 0;
      v55 = a3 + 48;
      v56 = a3 + 55;
      v57 = a3 + 87;
      if (a3 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v73 + 1;
      v16 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v54 * a3;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v21 = __CFADD__(v61, v62);
        v54 = v61 + v62;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v58;
        --v53;
      }

      while (v53);
LABEL_127:
      v16 = 0;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
}

void sub_1D5FD15E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_1D726235C();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D5FD1B6C(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1D7263E5C();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_1D5FD1B6C(uint64_t a1, unint64_t a2)
{
  v2 = sub_1D726236C();
  v6 = sub_1D5FD1BEC(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1D5FD1BEC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1D726397C();
    if (!v9 || (v10 = v9, v11 = sub_1D5C42524(v9, 0), v12 = sub_1D5FD1D44(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1D72621DC();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1D72621DC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1D7263E5C();
LABEL_4:

  return sub_1D72621DC();
}

unint64_t sub_1D5FD1D44(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1D6BA2080(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D72622DC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1D7263E5C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1D6BA2080(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1D72622AC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

_OWORD *sub_1D5FD1F64(_OWORD *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 16 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D5FD1FEC@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1D5FD2040(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1DA6FB2B0](a1, a2, v7);
      sub_1D5FD2A40();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1D5FD2A40();
    if (sub_1D7263BDC() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1D7263BEC();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1D72636FC();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1D726370C();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_1D5FD2240@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  if (result < 0 || (v5 = result, 1 << *(a4 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v7 = *(a4 + 48);
    v8 = type metadata accessor for WebEmbedDataVisualization(0);
    return sub_1D5FD2B90(v7 + *(*(v8 - 8) + 72) * v5, x8_0, type metadata accessor for WebEmbedDataVisualization);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D5FD22F0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

BOOL _s8NewsFeed13FormatIntegerO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 != 1)
  {
    if ((v7 & 1) == 0)
    {
      sub_1D5D2F2C4(*a1, v3, 0);
      sub_1D5D2F2C4(v5, v6, 0);
      return v2 == v5;
    }

    goto LABEL_11;
  }

  if ((v7 & 1) == 0)
  {

LABEL_11:
    sub_1D5E04CC4(v5, v6, v7);
    sub_1D5D2F2C4(v2, v3, v4);
    sub_1D5D2F2C4(v5, v6, v7);
    return 0;
  }

  v8 = *a1;
  if (v2 == v5 && v3 == v6)
  {
    sub_1D5E04CC4(v8, v3, 1);
    sub_1D5E04CC4(v2, v3, 1);
    sub_1D5D2F2C4(v2, v3, 1);
    sub_1D5D2F2C4(v2, v3, 1);
    return 1;
  }

  else
  {
    v10 = sub_1D72646CC();
    sub_1D5E04CC4(v5, v6, 1);
    sub_1D5E04CC4(v2, v3, 1);
    sub_1D5D2F2C4(v2, v3, 1);
    sub_1D5D2F2C4(v5, v6, 1);
    return v10 & 1;
  }
}

unint64_t sub_1D5FD24A4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1D726224C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1D726236C();
}

uint64_t sub_1D5FD2564(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1D5FD25B4(uint64_t a1)
{
  v4 = type metadata accessor for FormatOption(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v32 - v15;
  if (*(v1 + 16) == 1)
  {
    v35 = v2;
    v36 = v5;
    v17 = *v1;
    v18 = *(v1 + 8);
    v19 = sub_1D5E26E28(&unk_1F50F6648);
    v33 = v17;
    v34 = v18;
    v20 = v17;
    v21 = v36;
    FormatOptionCollection.subscript.getter(v20, v18, v12);
    if ((*(v21 + 48))(v12, 1, v4) == 1)
    {

      sub_1D5D2CE08(v12, sub_1D5E04C00);
      if (*(a1 + 48))
      {
        v22 = 1;
LABEL_7:
        (*(v21 + 56))(v16, v22, 1, v4);
        sub_1D5D2CE08(v16, sub_1D5E04C00);
        return;
      }

      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57270(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v24 = v34;
      *v25 = v33;
      v25[1] = v24;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      sub_1D5D247E0(v12, v8);
      v37 = v8[2];

      FormatOptionValue.type.getter(v23, &v38);
      if (sub_1D6183C84(v38, v19))
      {
        swift_bridgeObjectRelease_n();
        sub_1D5D247E0(v8, v16);
        v22 = 0;
        v21 = v36;
        goto LABEL_7;
      }

      type metadata accessor for FormatDerivedDataError(0);
      sub_1D5B57270(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
      swift_allocError();
      v27 = v26;
      v29 = *v8;
      v28 = v8[1];
      v37 = v8[2];

      FormatOptionValue.type.getter(v30, &v38);
      v31 = v38;
      *v27 = v29;
      *(v27 + 8) = v28;
      *(v27 + 16) = v31;
      *(v27 + 24) = v19;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D5D2CE08(v8, type metadata accessor for FormatOption);
    }
  }
}

unint64_t sub_1D5FD2964(uint64_t a1)
{
  result = sub_1D5FD298C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FD298C()
{
  result = qword_1EC881F60;
  if (!qword_1EC881F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881F60);
  }

  return result;
}

unint64_t sub_1D5FD29E0(void *a1)
{
  a1[1] = sub_1D5C5A4B8();
  a1[2] = sub_1D5C5A50C();
  result = sub_1D5C5A560();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5FD2A40()
{
  result = qword_1EC881450;
  if (!qword_1EC881450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC881450);
  }

  return result;
}

void sub_1D5FD2A8C(uint64_t a1)
{
  if (!qword_1EDF189B0)
  {
    sub_1D7258DFC();
    v1 = MEMORY[0x1E6984AE8];
    sub_1D5B57270(&qword_1EDF18A18, MEMORY[0x1E6984AE8], MEMORY[0x1E6984B00]);
    sub_1D5B57270(&qword_1EDF18A28, v1, MEMORY[0x1E6984AF0]);
    sub_1D5B57270(&qword_1EDF18A20, v1, MEMORY[0x1E6984AF8]);
    v2 = sub_1D7258F2C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF189B0);
    }
  }
}

uint64_t sub_1D5FD2B90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t FormatContentSlotItemResolution.auxiliary.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FormatContentSlotItemResolution(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1D5D615EC(v4, v5);
}

uint64_t FormatContentSlotItemResolution.selectors.getter()
{
  type metadata accessor for FormatContentSlotItemResolution(0);
}

uint64_t FormatContentSlotItemResolution.options.getter()
{
  type metadata accessor for FormatContentSlotItemResolution(0);
}

int *FormatContentSlotItemResolution.init(object:auxiliary:selectors:options:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  sub_1D5FD2D50(a1, a5);
  result = type metadata accessor for FormatContentSlotItemResolution(0);
  v11 = (a5 + result[5]);
  *v11 = v8;
  v11[1] = v9;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t sub_1D5FD2D50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5FD2DB4()
{
  v1 = 0x7463656A626FLL;
  v2 = 0x726F7463656C6573;
  if (*v0 != 2)
  {
    v2 = 0x736E6F6974706FLL;
  }

  if (*v0)
  {
    v1 = 0x7261696C69787561;
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

uint64_t sub_1D5FD2E30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D5FD3934(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D5FD2E58(uint64_t a1)
{
  v2 = sub_1D5FD31C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5FD2E94(uint64_t a1)
{
  v2 = sub_1D5FD31C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSlotItemResolution.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D5FD3714(0, &qword_1EDF02530, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5FD31C4();
  sub_1D7264B5C();
  LOBYTE(v17) = 0;
  type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  sub_1D5FD3778(&unk_1EDF0B028, type metadata accessor for FormatContentSlotItemObject.Resolved, &protocol conformance descriptor for FormatContentSlotItemObject.Resolved);
  sub_1D726443C();
  if (!v2)
  {
    v11 = type metadata accessor for FormatContentSlotItemResolution(0);
    v12 = (v3 + v11[5]);
    v13 = v12[1];
    v17 = *v12;
    v18 = v13;
    v16 = 1;
    sub_1D5D615EC(v17, v13);
    sub_1D5FD3218();
    sub_1D72643BC();
    sub_1D5CDE22C(v17, v18);
    v17 = *(v3 + v11[6]);
    v16 = 2;
    sub_1D5B81B04();
    sub_1D5CB5D1C(&qword_1EDF047E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_1D726443C();
    v17 = *(v3 + v11[7]);
    v16 = 3;
    sub_1D5B5AD98(0);
    sub_1D5CB5918(&qword_1EDF050B0, &qword_1EDF45940, &protocol conformance descriptor for FormatOption, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D5FD31C4()
{
  result = qword_1EDF09448;
  if (!qword_1EDF09448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09448);
  }

  return result;
}

unint64_t sub_1D5FD3218()
{
  result = qword_1EDF09CD0;
  if (!qword_1EDF09CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09CD0);
  }

  return result;
}

void FormatContentSlotItemResolution.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v22 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5FD3714(0, &qword_1EDF03920, MEMORY[0x1E69E6F48]);
  v23 = v7;
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for FormatContentSlotItemResolution(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5FD31C4();
  v24 = v10;
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v15 = v21;
    v16 = v14;
    LOBYTE(v25) = 0;
    sub_1D5FD3778(&qword_1EDF0B020, type metadata accessor for FormatContentSlotItemObject.Resolved, &protocol conformance descriptor for FormatContentSlotItemObject.Resolved);
    v18 = v22;
    v17 = v23;
    sub_1D726431C();
    sub_1D5FD2D50(v18, v16);
    v26 = 1;
    sub_1D5CB6F04();
    sub_1D726427C();
    *(v16 + v11[5]) = v25;
    sub_1D5B81B04();
    v26 = 2;
    sub_1D5CB5D1C(&qword_1EDF3C7D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    sub_1D726431C();
    *(v16 + v11[6]) = v25;
    sub_1D5B5AD98(0);
    v26 = 3;
    sub_1D5CB5918(&qword_1EDF1B350, &unk_1EDF45930, &protocol conformance descriptor for FormatOption, MEMORY[0x1E69E6330]);
    sub_1D726431C();
    (*(v15 + 8))(v24, v17);
    *(v16 + v11[7]) = v25;
    sub_1D5CEC6D0(v16, v20, type metadata accessor for FormatContentSlotItemResolution);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1D5D1EA38(v16, type metadata accessor for FormatContentSlotItemResolution);
  }
}

void sub_1D5FD3714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5FD31C4();
    v7 = a3(a1, &type metadata for FormatContentSlotItemResolution.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D5FD3778(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D5FD3830()
{
  result = qword_1EC881F68;
  if (!qword_1EC881F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881F68);
  }

  return result;
}

unint64_t sub_1D5FD3888()
{
  result = qword_1EDF09438;
  if (!qword_1EDF09438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09438);
  }

  return result;
}

unint64_t sub_1D5FD38E0()
{
  result = qword_1EDF09440;
  if (!qword_1EDF09440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09440);
  }

  return result;
}

uint64_t sub_1D5FD3934(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261696C69787561 && a2 == 0xE900000000000079 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

unint64_t FeedKind.selector.getter()
{
  result = *v0;
  switch(*v0)
  {
    case 1:
    case 0x11:
    case 0x18:
      result = 0x6E696B2D64656566;
      break;
    case 2:
    case 0xD:
    case 0x13:
      result = 0xD000000000000015;
      break;
    case 3:
    case 0xE:
      result = 0xD00000000000001DLL;
      break;
    case 4:
    case 0x10:
      result = 0xD000000000000018;
      break;
    case 5:
    case 0x16:
    case 0x1C:
      result = 0xD000000000000017;
      break;
    case 6:
    case 0xA:
      result = 0xD000000000000012;
      break;
    case 7:
    case 0x1A:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 0xB:
      result = 0xD000000000000013;
      break;
    case 0xC:
    case 0xF:
      result = 0xD000000000000014;
      break;
    case 0x12:
      result = 0xD000000000000010;
      break;
    case 0x14:
    case 0x15:
      result = 0xD00000000000001FLL;
      break;
    case 0x17:
      result = 0xD000000000000019;
      break;
    case 0x19:
      result = 0xD000000000000013;
      break;
    case 0x1B:
    case 0x1D:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t FeedKind.contextMenuItemOptions.getter()
{
  v1 = *v0;
  if (v1 <= 6)
  {
    if (v1 - 4 >= 3 && v1 >= 2)
    {
      return sub_1D5E273D8(&unk_1F50F42E0);
    }

    return MEMORY[0x1E69E7CD0];
  }

  v2 = &unk_1F50F42B8;
  if (v1 <= 0x1D)
  {
    v3 = 1 << v1;
    if ((v3 & 0x27FF9F00) == 0)
    {
      v4 = &unk_1F50F4330;
      if ((v3 & 0x18000000) == 0)
      {
        v4 = &unk_1F50F42B8;
      }

      if ((v3 & 0x6000) != 0)
      {
        return sub_1D5E273D8(&unk_1F50F4308);
      }

      v2 = v4;
      return sub_1D5E273D8(v2);
    }

    return MEMORY[0x1E69E7CD0];
  }

  return sub_1D5E273D8(v2);
}

NewsFeed::FeedKind_optional __swiftcall FeedKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72648CC();

  v5 = 0;
  v6 = 12;
  switch(v3)
  {
    case 0:
      goto LABEL_24;
    case 1:
      v5 = 1;
      goto LABEL_24;
    case 2:
      v5 = 2;
      goto LABEL_24;
    case 3:
      v5 = 3;
      goto LABEL_24;
    case 4:
      v5 = 4;
      goto LABEL_24;
    case 5:
      v5 = 5;
      goto LABEL_24;
    case 6:
      v5 = 6;
      goto LABEL_24;
    case 7:
      v5 = 7;
      goto LABEL_24;
    case 8:
      v5 = 8;
      goto LABEL_24;
    case 9:
      v5 = 9;
      goto LABEL_24;
    case 10:
      v5 = 10;
      goto LABEL_24;
    case 11:
      v5 = 11;
LABEL_24:
      v6 = v5;
      break;
    case 12:
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    default:
      v6 = 30;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t FeedKind.rawValue.getter()
{
  result = 0x746C7561666564;
  switch(*v0)
  {
    case 1:
      result = 0x6F69647561;
      break;
    case 2:
      result = 0x6C656E6E616863;
      break;
    case 3:
      result = 0x536C656E6E616863;
      break;
    case 4:
      result = 0x747241664F646E65;
      break;
    case 5:
      result = 0x636552664F646E65;
      break;
    case 6:
      result = 0x627548646F6F66;
      break;
    case 7:
      result = 0x79726F74736968;
      break;
    case 8:
      result = 0x6C61636F6CLL;
      break;
    case 9:
      result = 0x6365536C61636F6CLL;
      break;
    case 0xA:
      result = 0x656E697A6167616DLL;
      break;
    case 0xB:
      result = 0x7374726F7053796DLL;
      break;
    case 0xC:
      result = 0x7548656C7A7A7570;
      break;
    case 0xD:
      result = 0x7954656C7A7A7570;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0xF:
      result = 0x6F42657069636572;
      break;
    case 0x10:
      result = 0x6143657069636572;
      break;
    case 0x11:
      result = 0x6465766173;
      break;
    case 0x12:
      result = 0x686372616573;
      break;
    case 0x13:
      result = 0x6F4D686372616573;
      break;
    case 0x14:
      result = 0xD000000000000013;
      break;
    case 0x15:
      result = 0xD000000000000013;
      break;
    case 0x16:
      result = 0x7053686372616573;
      break;
    case 0x17:
      result = 0x6957646572616873;
      break;
    case 0x18:
      result = 0x7961646F74;
      break;
    case 0x19:
      result = 0x6369706F74;
      break;
    case 0x1A:
      result = 0x6E776F6E6B6E75;
      break;
    case 0x1B:
      result = 0x6F54736B636F7473;
      break;
    case 0x1C:
      result = 0x7953736B636F7473;
      break;
    case 0x1D:
      result = 0x76457374726F7073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5FD42A4()
{
  v0 = FeedKind.rawValue.getter();
  v2 = v1;
  if (v0 == FeedKind.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D5FD4340()
{
  sub_1D7264A0C();
  FeedKind.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D5FD43A8(uint64_t a1)
{
  FeedKind.rawValue.getter();
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D5FD440C(uint64_t a1)
{
  sub_1D7264A0C();
  FeedKind.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D5FD447C@<X0>(unint64_t *a1@<X8>)
{
  result = FeedKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D5FD44A4(uint64_t a1)
{
  v2 = sub_1D5FD4C18();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D5FD44F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5FD4C18();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D5FD4554(uint64_t a1)
{
  v2 = sub_1D5FD4C18();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t FeedKind.description.getter()
{
  result = 0x746C7561666544;
  switch(*v0)
  {
    case 1:
      result = 0x6F69647541;
      break;
    case 2:
      result = 0x6C656E6E616843;
      break;
    case 3:
      result = 0x206C656E6E616843;
      break;
    case 4:
      result = 0x4120666F20646E45;
      break;
    case 5:
      result = 0x5220666F20646E45;
      break;
    case 6:
      result = 1685024582;
      break;
    case 7:
      result = 0x79726F74736948;
      break;
    case 8:
      result = 0x6C61636F4CLL;
      break;
    case 9:
      result = 0x6553206C61636F4CLL;
      break;
    case 0xA:
      result = 0x656E697A6167614DLL;
      break;
    case 0xB:
      result = 0x74726F705320794DLL;
      break;
    case 0xC:
      result = 0x4820656C7A7A7550;
      break;
    case 0xD:
      result = 0x5420656C7A7A7550;
      break;
    case 0xE:
      result = 0xD000000000000013;
      break;
    case 0xF:
      result = 0x4220657069636552;
      break;
    case 0x10:
      result = 0x73657069636552;
      break;
    case 0x11:
      result = 0x6465766153;
      break;
    case 0x12:
      result = 0x686372616553;
      break;
    case 0x13:
      result = 0x4D20686372616553;
      break;
    case 0x14:
      result = 0xD000000000000015;
      break;
    case 0x15:
      result = 0x5220686372616553;
      break;
    case 0x16:
      result = 0x5320686372616553;
      break;
    case 0x17:
      result = 0x5720646572616853;
      break;
    case 0x18:
      result = 0x7961646F54;
      break;
    case 0x19:
      result = 0x6369706F54;
      break;
    case 0x1A:
      result = 0x6E776F6E6B6E55;
      break;
    case 0x1B:
      result = 0x5420736B636F7453;
      break;
    case 0x1C:
      result = 0x5320736B636F7453;
      break;
    case 0x1D:
      result = 0x45207374726F7053;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D5FD49C8()
{
  result = qword_1EC881F70;
  if (!qword_1EC881F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881F70);
  }

  return result;
}

unint64_t sub_1D5FD4A20()
{
  result = qword_1EC881F78;
  if (!qword_1EC881F78)
  {
    sub_1D5FD4A78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881F78);
  }

  return result;
}

void sub_1D5FD4A78()
{
  if (!qword_1EC881F80)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC881F80);
    }
  }
}

uint64_t getEnumTagSinglePayload for FeedKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeedKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D5FD4C18()
{
  result = qword_1EC881F88;
  if (!qword_1EC881F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881F88);
  }

  return result;
}

uint64_t FormatBreakpointNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double FormatBreakpointNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

uint64_t FormatBreakpointNode.filePath.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FormatBreakpointNode.child.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 144);
  v13 = *(v1 + 128);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 160);
  v4 = v15;
  v5 = *(v1 + 80);
  v10[0] = *(v1 + 64);
  v10[1] = v5;
  v6 = *(v1 + 112);
  v11 = *(v1 + 96);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_1D5C5C4CC(v10, v9);
}

uint64_t FormatBreakpointNode.__allocating_init(identifier:line:column:filePath:child:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  swift_beginAccess();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a5;
  *(v14 + 56) = a6;
  v15 = *(a7 + 80);
  *(v14 + 128) = *(a7 + 64);
  *(v14 + 144) = v15;
  *(v14 + 160) = *(a7 + 96);
  v16 = *(a7 + 16);
  *(v14 + 64) = *a7;
  *(v14 + 80) = v16;
  v17 = *(a7 + 48);
  *(v14 + 96) = *(a7 + 32);
  *(v14 + 112) = v17;
  return v14;
}

uint64_t FormatBreakpointNode.init(identifier:line:column:filePath:child:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  v15 = *(a7 + 80);
  *(v7 + 128) = *(a7 + 64);
  *(v7 + 144) = v15;
  *(v7 + 160) = *(a7 + 96);
  v16 = *(a7 + 16);
  *(v7 + 64) = *a7;
  *(v7 + 80) = v16;
  v17 = *(a7 + 48);
  *(v7 + 96) = *(a7 + 32);
  *(v7 + 112) = v17;
  return v7;
}

void *FormatBreakpointNode.deinit()
{

  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[20];

  sub_1D5CFDD14(v1, v2, v3, v4, v5, v6, v7, v8);
  return v0;
}

uint64_t FormatBreakpointNode.__deallocating_deinit()
{

  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[20];

  sub_1D5CFDD14(v1, v2, v3, v4, v5, v6, v7, v8);

  return swift_deallocClassInstance();
}

uint64_t sub_1D5FD50A0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D665F4F4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D5FD50FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v6[0] = *a4;
  v6[1] = v4;
  v7 = *(a4 + 32);
  return sub_1D6D2C570(v6);
}

uint64_t FormatBreakpointNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);
  v6 = *(v2 + 144);
  v25 = *(v2 + 128);
  v26 = v6;
  v7 = *(v2 + 80);
  v22[0] = *(v2 + 64);
  v22[1] = v7;
  v8 = *(v2 + 112);
  v10 = *(v2 + 64);
  v9 = *(v2 + 80);
  v23 = *(v2 + 96);
  v24 = v8;
  v11 = *(v2 + 144);
  v19 = v25;
  v20 = v11;
  v15 = v10;
  v16 = v9;
  v27 = *(v2 + 160);
  v21 = *(v2 + 160);
  v17 = v23;
  v18 = v5;
  sub_1D5C5C4CC(v22, v13);
  FormatSourceMapNode.bind(binder:context:)(a1, a2);
  v13[4] = v19;
  v13[5] = v20;
  v14 = v21;
  v13[0] = v15;
  v13[1] = v16;
  v13[2] = v17;
  v13[3] = v18;
  return sub_1D5C5C540(v13);
}

uint64_t sub_1D5FD5218(uint64_t a1)
{
  result = sub_1D5FD5350(&qword_1EC881F90, &protocol conformance descriptor for FormatBreakpointNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5FD5280(void *a1)
{
  a1[1] = sub_1D5FD5350(&qword_1EC881F98, &protocol conformance descriptor for FormatBreakpointNode);
  a1[2] = sub_1D5FD5350(&qword_1EC881FA0, &protocol conformance descriptor for FormatBreakpointNode);
  result = sub_1D5FD5350(&qword_1EC881FA8, &protocol conformance descriptor for FormatBreakpointNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D5FD530C(uint64_t a1)
{
  result = sub_1D5FD5350(&qword_1EC881FB0, &protocol conformance descriptor for FormatBreakpointNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5FD5350(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatBreakpointNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5FD5390(unint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 112);
  v7 = *(*v2 + 144);
  v26 = *(*v2 + 128);
  v27 = v7;
  v28 = *(v5 + 160);
  v8 = *(v5 + 80);
  v23[0] = *(v5 + 64);
  v23[1] = v8;
  v9 = *(v5 + 112);
  v11 = *(v5 + 64);
  v10 = *(v5 + 80);
  v24 = *(v5 + 96);
  v25 = v9;
  v12 = *(v5 + 144);
  v20 = v26;
  v21 = v12;
  v16 = v11;
  v17 = v10;
  v22 = *(v5 + 160);
  v18 = v24;
  v19 = v6;
  sub_1D5C5C4CC(v23, v14);
  FormatSourceMapNode.bind(binder:context:)(a1, a2);
  v14[4] = v20;
  v14[5] = v21;
  v15 = v22;
  v14[0] = v16;
  v14[1] = v17;
  v14[2] = v18;
  v14[3] = v19;
  return sub_1D5C5C540(v14);
}

uint64_t FeedCursorExportContext.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedCursorExportContext.init<A>(cursorContainer:name:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v34 = a7;
  v35 = a8;
  v30 = a1;
  v31 = a2;
  v32 = a10;
  v33 = a6;
  v15 = type metadata accessor for FeedCursorTrackerSnapshot(0, a4, a5, a4);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v19 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v30 - v22;
  sub_1D6151884(a1);

  FeedCursorTracker.snapshot()(v23);

  *a9 = v31;
  a9[1] = a3;
  v24 = *(v16 + 32);
  v24(v19, v23, v15);
  v25 = (*(v16 + 80) + 72) & ~*(v16 + 80);
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v27 = v34;
  v26[4] = v33;
  v26[5] = v27;
  v28 = v32;
  v26[6] = v35;
  v26[7] = v28;
  v26[8] = v30;
  result = (v24)(v26 + v25, v19, v15);
  a9[2] = sub_1D5FD64E8;
  a9[3] = v26;
  return result;
}

uint64_t sub_1D5FD56B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v41 = a8;
  v42 = a6;
  v43 = a7;
  v38 = a2;
  v39 = a3;
  v40 = type metadata accessor for FeedCursorTrackerSnapshot(0, a4, a5, a4);
  v14 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v15);
  v17 = &v35 - v16;
  type metadata accessor for FeedDatabaseStore(0, a4, a5, v18);
  sub_1D5B5F6D0();
  v19 = sub_1D72638FC();

  v20 = sub_1D5B9F6D4(v19, a1);
  if (!v10)
  {
    v36 = a9;
    MEMORY[0x1EEE9AC00](v20, v21);
    *(&v35 - 8) = a4;
    *(&v35 - 7) = a5;
    v22 = v41;
    v23 = v43;
    *(&v35 - 6) = v42;
    *(&v35 - 5) = v23;
    *(&v35 - 4) = v22;
    *(&v35 - 3) = v24;
    *(&v35 - 2) = v38;
    v35 = v25;
    v38 = 0;
    type metadata accessor for FeedCursor(0, a4, a5, v26);
    v37 = sub_1D725BDCC();
    v27 = v40;
    (*(v14 + 16))(v17, v39, v40);
    v28 = (*(v14 + 80) + 80) & ~*(v14 + 80);
    v29 = swift_allocObject();
    *(v29 + 2) = a4;
    *(v29 + 3) = a5;
    v30 = v43;
    *(v29 + 4) = v42;
    *(v29 + 5) = v30;
    v31 = v36;
    *(v29 + 6) = v22;
    *(v29 + 7) = v31;
    v32 = v35;
    *(v29 + 8) = a1;
    *(v29 + 9) = v32;
    (*(v14 + 32))(&v29[v28], v17, v27);

    v33 = sub_1D725B92C();
    a1 = sub_1D725BA7C();
  }

  return a1;
}

uint64_t sub_1D5FD595C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a7;
  v43 = a8;
  v40 = a5;
  v41 = a6;
  v45 = a2;
  v11 = *a3;
  v44 = sub_1D725C59C();
  v39 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v11 + 80);
  v37 = *(v11 + 88);
  v16 = type metadata accessor for FeedCursorTrackerSnapshot(0, v38, v37, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v36 - v19;
  sub_1D5FD6680(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  sub_1D7261AFC();
  v26 = sub_1D7261B2C();
  (*(*(v26 - 8) + 56))(v24, 0, 1, v26);
  (*(v17 + 16))(v20, a4, v16);
  v27 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v28 = swift_allocObject();
  v29 = v37;
  *(v28 + 2) = v38;
  *(v28 + 3) = v29;
  v30 = v41;
  *(v28 + 4) = v40;
  *(v28 + 5) = v30;
  v31 = v43;
  *(v28 + 6) = v42;
  *(v28 + 7) = v31;
  *(v28 + 8) = a3;
  *(v28 + 9) = v25;
  (*(v17 + 32))(&v28[v27], v20, v16);
  v32 = v39;
  v33 = v44;
  (*(v39 + 104))(v14, *MEMORY[0x1E69D6188], v44);

  v34 = sub_1D725C7CC();

  (*(v32 + 8))(v14, v33);
  sub_1D5FD676C(v24);
  return v34;
}

void sub_1D5FD5C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v85 = a7;
  v86 = a6;
  v74 = a3;
  v10 = *(*a1 + 88);
  v75 = *(*a1 + 80);
  v76 = v10;
  v100 = type metadata accessor for FeedCursorGroup(0, v75, v10, a4);
  v82 = *(v100 - 8);
  v11 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v100, v12);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v67 - v16;
  sub_1D6D113D4(v15);
  v22 = a5;
  v23 = FeedCursor.rootCursor.getter(v18, v19, v20, v21);
  v24 = swift_retain_n();
  v25 = v84;
  sub_1D69D1420(v24, v22, v96);
  if (v25)
  {

    return;
  }

  v83 = a1;
  v84 = v17;
  v80 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v11;
  v70 = a4;
  v71 = v22;
  v81 = (v82 + 16);
  v79 = (v82 + 32);
  v26 = v76;
  while (1)
  {
    sub_1D725C6CC();
    v90 = v96[2];
    v91 = v96[3];
    v92 = v96[4];
    v93 = v96[5];
    v88 = v96[0];
    v89 = v96[1];
    sub_1D725C67C();

    v27 = *(v23 + qword_1EDFFCF40);

    v28 = v100;
    if (sub_1D726279C())
    {
      v29 = 0;
      v30 = v23;
      while (1)
      {
        v31 = sub_1D726277C();
        sub_1D726271C();
        if (v31)
        {
          v32 = v26;
          (*(v82 + 16))(v84, v27 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v29, v28);
        }

        else
        {
          v37 = sub_1D7263DBC();
          if (v68 != 8)
          {
            goto LABEL_38;
          }

          v32 = v26;
          *&v88 = v37;
          (*v81)(v84, &v88, v28);
          swift_unknownObjectRelease();
        }

        v33 = v29 + 1;
        v34 = v80;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        (*v79)(v80, v84, v100);

        sub_1D602C3F0(v35, v34, v85, v97);
        sub_1D725C6CC();
        v90 = v97[2];
        v91 = v97[3];
        v92 = v97[4];
        v93 = v97[5];
        v88 = v97[0];
        v89 = v97[1];
        sub_1D725C67C();

        sub_1D5BA705C(v97);
        v28 = v100;
        ++v29;
        v36 = v33 == sub_1D726279C();
        v26 = v32;
        v23 = v30;
        if (v36)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_14:

    v38 = *v23;
    v39 = *(v23 + *(*v23 + 240));
    v72 = *(v39 + 16);
    if (v72)
    {
      v73 = v39 + 32;

      v41 = 0;
      v42 = v75;
      v69 = v40;
      while (v41 < *(v40 + 16))
      {
        v48 = (v73 + 24 * v41);
        v49 = *v48;
        v77 = *(*v48 + 16);
        if (v77)
        {
          v67 = v41;
          v50 = v48[1];
          v51 = v49 + 32;

          v78 = v49;
          sub_1D5C07390(v50);

          v53 = 0;
          while (v53 < *(v52 + 16))
          {
            v95 = v50;
            sub_1D5C0C678(v49 + 32, &v88);
            sub_1D5C0C678(v51, v87);

            sub_1D5C07390(v50);
            sub_1D60E3970(&v95, &v88, v87, v23, v85, v98);
            sub_1D725C6CC();
            v92 = v98[4];
            v93 = v98[5];
            v94 = v99;
            v88 = v98[0];
            v89 = v98[1];
            v90 = v98[2];
            v91 = v98[3];
            sub_1D725C67C();
            ++v53;

            sub_1D5FD67C8(v98);
            v51 += 248;
            v52 = v78;
            if (v77 == v53)
            {

              sub_1D5C08648(v50);

              v42 = v75;
              v26 = v76;
              v40 = v69;
              v41 = v67;
              goto LABEL_20;
            }
          }

          goto LABEL_35;
        }

LABEL_20:
        if (++v41 == v72)
        {

          v38 = *v23;
          goto LABEL_17;
        }
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v42 = v75;
LABEL_17:
    v43 = *(v38 + 272);
    swift_beginAccess();
    if (!*(v23 + v43))
    {
      break;
    }

    FeedNextCursor.syncCursor.getter();
    v45 = v44;

    sub_1D5BA7608(v96);

    if (!v45)
    {
      goto LABEL_29;
    }

    v47 = swift_retain_n();
    sub_1D69D1420(v47, v71, v96);
    v23 = v45;
  }

  sub_1D5BA7608(v96);

LABEL_29:
  v54 = type metadata accessor for FeedCursorTrackerSnapshot(0, v42, v26, v46);
  v57 = sub_1D6F9EB9C(*(v74 + *(v54 + 36)), v54, v55, v56);
  v81 = *(v57 + 16);
  if (!v81)
  {
LABEL_33:

    return;
  }

  v58 = 0;
  v59 = (v57 + 40);
  v80 = v57;
  while (1)
  {
    v60 = *(v57 + 16);
    v82 = v58;
    if (v58 >= v60)
    {
      break;
    }

    v61 = *(v59 - 1);
    v62 = *v59;
    v64 = v59[1];
    v63 = v59[2];
    v65 = v59[4];
    v84 = v59[3];
    v85 = v63;
    v86 = *(v83 + 32);
    v100 = v61;

    v66 = v85;

    sub_1D725C6CC();
    *&v88 = v61;
    *(&v88 + 1) = v62;
    *&v89 = v64;
    *(&v89 + 1) = v66;
    *&v90 = v84;
    *(&v90 + 1) = v65;
    sub_1D725C67C();

    v58 = v82 + 1;
    v59 += 6;
    v57 = v80;
    if (v81 == (v82 + 1))
    {
      goto LABEL_33;
    }
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_1D5FD64E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  v9 = v4[5];
  v10 = v4[6];
  v11 = v4[7];
  v12 = *(type metadata accessor for FeedCursorTrackerSnapshot(0, v6, v7, a4) - 8);
  return sub_1D5FD56B8(a1, v4[8], v4 + ((*(v12 + 80) + 72) & ~*(v12 + 80)), v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D5FD65E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 32);
  v7 = *(v4 + 40);
  v8 = *(v4 + 48);
  v9 = *(v4 + 56);
  v10 = *(type metadata accessor for FeedCursorTrackerSnapshot(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  return sub_1D5FD595C(a1, *(v4 + 64), *(v4 + 72), v4 + ((*(v10 + 80) + 80) & ~*(v10 + 80)), v6, v7, v8, v9);
}

void sub_1D5FD6680(uint64_t a1)
{
  if (!qword_1EDF16870)
  {
    sub_1D7261B2C();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF16870);
    }
  }
}

void sub_1D5FD66D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[4];
  v6 = v4[5];
  v7 = v4[6];
  v8 = v4[7];
  v9 = *(type metadata accessor for FeedCursorTrackerSnapshot(0, v4[2], v4[3], a4) - 8);
  sub_1D5FD5C8C(v4[8], v4[9], v4 + ((*(v9 + 80) + 80) & ~*(v9 + 80)), v5, v6, v7, v8);
}

uint64_t sub_1D5FD676C(uint64_t a1)
{
  sub_1D5FD6680(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5FD6860()
{
  result = qword_1EC881FB8;
  if (!qword_1EC881FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881FB8);
  }

  return result;
}

unint64_t sub_1D5FD68B8()
{
  result = qword_1EC881FC0;
  if (!qword_1EC881FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881FC0);
  }

  return result;
}

void sub_1D5FD697C(uint64_t a1)
{
  v3 = v1[1];
  v19 = *v1;
  v20 = v3;
  v22 = *(v1 + 24);
  v21 = v1[2];
  v4 = v22;
  v5 = ((2 * HIBYTE(v22)) | ((v22 & 8) != 0));
  if (v5 - 5 < 0xA || v5 < 2)
  {
    return;
  }

  v7 = v19;
  v8 = v20;
  if (v5 - 3 >= 2)
  {
LABEL_11:
    if ((v4 & 0xF0) == 0x30)
    {
      v14 = v7;
      v15 = v8;
      sub_1D62921EC(a1);
    }

    return;
  }

  v9 = a1;
  v10 = *(&v19 + 1);
  v17 = v19;
  v18 = v20;
  v16 = 5;
  v13 = v19;
  sub_1D5FD78CC(&v19, &v14);

  v11 = sub_1D703E0C8(&v17, &v16);

  if (v2)
  {

    return;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v13;
  *(v12 + 24) = v10;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  sub_1D6C4D24C(v12 | 0x3000000000000000);

  v4 = v22;
  if (((2 * HIBYTE(v22)) | ((v22 & 8) != 0)) == 2)
  {
    v8 = v20;
    v7 = v19;
    a1 = v9;
    goto LABEL_11;
  }
}

void FormatTextNodeBinding.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for FormatOption(0);
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v34 - v16;
  v46 = *(v2 + 24);
  v18 = v2[1];
  v43 = *v2;
  v44 = v18;
  v45 = v2[2];
  if (((((v46 & 8) != 0) | (2 * HIBYTE(v46))) - 3) <= 1u)
  {
    v37 = a2;
    v20 = *(&v43 + 1);
    v19 = v44;
    v21 = v43;
    v39 = v43;
    v40 = v44;
    v38 = 5;
    sub_1D5FD78CC(&v43, v41);

    v22 = sub_1D703E0C8(&v39, &v38);
    if (v3)
    {

      return;
    }

    v35 = v22;
    v36 = v19;
    v34 = a1;
    v23 = v37;
    FormatOptionCollection.subscript.getter(v21, v20, v13);
    if ((*(v47 + 48))(v13, 1, v6) == 1)
    {

      sub_1D5D28188(v13, sub_1D5E04C00);
      if ((*(v23 + 48) & 1) == 0)
      {
        type metadata accessor for FormatLayoutError(0);
        sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        *v27 = v21;
        v27[1] = v20;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        return;
      }

      v24 = 1;
    }

    else
    {
      sub_1D5D247E0(v13, v9);
      *&v41[0] = v9[2];
      v25 = v35;

      FormatOptionValue.type.getter(v26, &v39);
      if ((sub_1D6183C84(v39, v25) & 1) == 0)
      {
        type metadata accessor for FormatDerivedDataError(0);
        sub_1D5B572B8(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        swift_allocError();
        v29 = v28;
        v31 = *v9;
        v30 = v9[1];
        *&v41[0] = v9[2];

        FormatOptionValue.type.getter(v32, &v39);
        v33 = v39;
        *v29 = v31;
        *(v29 + 8) = v30;
        *(v29 + 16) = v33;
        *(v29 + 24) = v25;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D5D28188(v9, type metadata accessor for FormatOption);
        return;
      }

      swift_bridgeObjectRelease_n();
      sub_1D5D247E0(v9, v17);
      v24 = 0;
    }

    (*(v47 + 56))(v17, v24, 1, v6);
    sub_1D5D28188(v17, sub_1D5E04C00);
    a2 = v37;
    a1 = v34;
  }

  v41[0] = v43;
  v41[1] = v44;
  v41[2] = v45;
  v42 = v46;
  FormatTextNodeBinding.bindChildren(binder:context:)(a1, a2);
}

uint64_t _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v31[0] = *a1;
  v31[1] = v2;
  v3 = a2[1];
  v34 = *a2;
  v35 = v3;
  v5 = *a2;
  v4 = a2[1];
  v36 = a2[2];
  v32 = *(a1 + 32);
  v33 = *(a1 + 48);
  v37 = *(a2 + 24);
  v38[0] = v31[0];
  v38[1] = v2;
  v38[2] = v32;
  v39 = v33;
  v40 = v5;
  v41 = v4;
  v42 = a2[2];
  v43 = *(a2 + 24);
  v6 = *(v31 + 1) | ((*(v31 + 5) | (BYTE7(v31[0]) << 16)) << 32);
  v7 = *(v31 + 9) | ((*(v31 + 13) | (HIBYTE(v31[0]) << 16)) << 32);
  v8 = v2;
  switch((2 * HIBYTE(v33)) | ((v33 & 8) != 0))
  {
    case 1:
      if (((2 * HIBYTE(v37)) | ((v37 & 8) != 0)) == 1)
      {
        goto LABEL_47;
      }

      goto LABEL_56;
    case 2:
      if (((2 * HIBYTE(v37)) | ((v37 & 8) != 0)) == 2)
      {
        LOBYTE(v22) = v31[0];
        *(&v22 + 1) = *(v31 + 1);
        HIBYTE(v22) = (*(v31 + 1) | ((*(v31 + 5) | (BYTE7(v31[0]) << 16)) << 32)) >> 48;
        *(&v22 + 5) = *(v31 + 5);
        v23 = BYTE8(v31[0]);
        v24 = *(v31 + 9);
        v26 = (*(v31 + 9) | ((*(v31 + 13) | (HIBYTE(v31[0]) << 16)) << 32)) >> 48;
        v25 = *(v31 + 13);
        v27 = v2;
        v28 = v32;
        v29 = v33 & 0xF7;
        v18 = v34;
        v19 = v35;
        v20 = v36;
        v21 = v37 & 0xF7;
        sub_1D5FD78CC(&v34, v30);
        sub_1D5FD78CC(v31, v30);
        sub_1D5FD78CC(v31, v30);
        sub_1D5FD78CC(&v34, v30);
        v10 = _s8NewsFeed18FormatGroupBindingV4TextO2eeoiySbAE_AEtFZ_0(&v22, &v18);
        goto LABEL_54;
      }

      sub_1D5FD7B48(*&v31[0], *(&v31[0] + 1), v2, *(&v2 + 1), v32, *(&v32 + 1), v33 & 0xF7);
      goto LABEL_56;
    case 3:
      if (((2 * HIBYTE(v37)) | ((v37 & 8) != 0)) != 3)
      {
        goto LABEL_29;
      }

      v12 = v35;
      if (__PAIR128__(BYTE8(v31[0]) | (v7 << 8), LOBYTE(v31[0]) | (v6 << 8)) != v34)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    case 4:
      if (((2 * HIBYTE(v37)) | ((v37 & 8) != 0)) != 4)
      {
LABEL_29:

        goto LABEL_56;
      }

      v12 = v35;
      if (__PAIR128__(BYTE8(v31[0]) | (v7 << 8), LOBYTE(v31[0]) | (v6 << 8)) == v34)
      {
        goto LABEL_27;
      }

LABEL_26:
      if ((sub_1D72646CC() & 1) == 0)
      {
        sub_1D5FD78CC(v31, v30);
        goto LABEL_56;
      }

LABEL_27:
      sub_1D5FD78CC(&v34, v30);
      sub_1D5FD78CC(v31, v30);
      sub_1D5FD78CC(v31, v30);
      sub_1D5FD78CC(&v34, v30);
      v14 = sub_1D6341C50(v8, v12);
      sub_1D5D28188(v38, sub_1D5FD7ABC);
      sub_1D5FD7B18(&v34);
      sub_1D5FD7B18(v31);
      if ((v14 & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_86;
    case 5:
      if (((2 * HIBYTE(v37)) | ((v37 & 8) != 0)) != 5)
      {
        goto LABEL_56;
      }

      sub_1D5D28188(v38, sub_1D5FD7ABC);
      switch(LOBYTE(v31[0]))
      {
        case 2u:
          if (v34 == 2)
          {
            goto LABEL_86;
          }

          break;
        case 3u:
          if (v34 == 3)
          {
            goto LABEL_86;
          }

          break;
        case 4u:
          if (v34 == 4)
          {
            goto LABEL_86;
          }

          break;
        default:
          if (v34 - 2 >= 3 && (v34 & 1) == (v31[0] & 1))
          {
            goto LABEL_86;
          }

          break;
      }

      goto LABEL_57;
    case 6:
      if (((2 * HIBYTE(v37)) | ((v37 & 8) != 0)) != 6)
      {
        goto LABEL_56;
      }

      goto LABEL_47;
    case 7:
      if (((2 * HIBYTE(v37)) | ((v37 & 8) != 0)) != 7)
      {
        goto LABEL_56;
      }

      sub_1D5D28188(v38, sub_1D5FD7ABC);
      if (LOBYTE(v31[0]) > 0xFBu)
      {
        if (v34 > 0xFBu)
        {
          goto LABEL_86;
        }

        goto LABEL_57;
      }

      if (v34 > 0xFBu)
      {
        goto LABEL_57;
      }

      v17 = v34 & 0x7F;
      if ((v31[0] & 0x80) == 0)
      {
        if ((v34 & 0x80) == 0 && v17 == LOBYTE(v31[0]))
        {
          goto LABEL_86;
        }

        goto LABEL_57;
      }

      if ((v34 & 0x80) == 0 || v17 != (v31[0] & 0x7F))
      {
        goto LABEL_57;
      }

      goto LABEL_86;
    case 8:
      if (((2 * HIBYTE(v37)) | ((v37 & 8) != 0)) == 8)
      {
        LOBYTE(v22) = v31[0];
        *(&v22 + 1) = *(v31 + 1);
        HIBYTE(v22) = (*(v31 + 1) | ((*(v31 + 5) | (BYTE7(v31[0]) << 16)) << 32)) >> 48;
        *(&v22 + 5) = *(v31 + 5);
        v23 = BYTE8(v31[0]);
        v24 = *(v31 + 9);
        v26 = (*(v31 + 9) | ((*(v31 + 13) | (HIBYTE(v31[0]) << 16)) << 32)) >> 48;
        v25 = *(v31 + 13);
        v27 = v2;
        v28 = v32;
        v29 = v33 & 0xF7;
        v18 = v34;
        v19 = v35;
        v20 = v36;
        v21 = v37 & 0xF7;
        sub_1D5FD78CC(&v34, v30);
        sub_1D5FD78CC(v31, v30);
        sub_1D5FD78CC(v31, v30);
        sub_1D5FD78CC(&v34, v30);
        v10 = _s8NewsFeed19FormatPuzzleBindingV4TextO2eeoiySbAE_AEtFZ_0(&v22, &v18);
        goto LABEL_54;
      }

      sub_1D5E1DCD8(*&v31[0], *(&v31[0] + 1), v2, *(&v2 + 1), v32, *(&v32 + 1), v33 & 0xF7);
      goto LABEL_56;
    case 9:
      if (((2 * HIBYTE(v37)) | ((v37 & 8) != 0)) != 9)
      {
        goto LABEL_56;
      }

      v13 = LOBYTE(v31[0]) | (v6 << 8);
      sub_1D5D28188(v38, sub_1D5FD7ABC);
      if (BYTE8(v31[0]))
      {
        if (v13)
        {
          if ((BYTE8(v34) & 1) != 0 && v34)
          {
            goto LABEL_86;
          }
        }

        else if ((BYTE8(v34) & 1) != 0 && !v34)
        {
          goto LABEL_86;
        }
      }

      else if ((BYTE8(v34) & 1) == 0 && v13 == v34)
      {
        goto LABEL_86;
      }

      goto LABEL_57;
    case 10:
      if (((2 * HIBYTE(v37)) | ((v37 & 8) != 0)) == 0xA)
      {
        goto LABEL_47;
      }

      goto LABEL_56;
    case 11:
      if (((2 * HIBYTE(v37)) | ((v37 & 8) != 0)) != 0xB)
      {
        goto LABEL_56;
      }

      sub_1D5D28188(v38, sub_1D5FD7ABC);
      v11 = LOBYTE(v31[0]) ^ v34 ^ 1;
      return v11 & 1;
    case 12:
      if (((2 * HIBYTE(v37)) | ((v37 & 8) != 0)) != 0xC)
      {
        goto LABEL_56;
      }

      sub_1D5D28188(v38, sub_1D5FD7ABC);
      if (!(BYTE8(v31[0]) >> 6))
      {
        if (BYTE8(v34) > 0x3Fu)
        {
          goto LABEL_57;
        }

LABEL_68:
        if (LOBYTE(v31[0]) != v34)
        {
          goto LABEL_57;
        }

        goto LABEL_86;
      }

      if (BYTE8(v31[0]) >> 6 == 1)
      {
        if ((BYTE8(v34) & 0xC0) != 0x40)
        {
          goto LABEL_57;
        }

        goto LABEL_68;
      }

      if ((BYTE8(v34) & 0xC0) == 0x80 && (LOBYTE(v31[0]) | (v6 << 8)) == v34 && (BYTE8(v34) & 0x3F) == (BYTE8(v31[0]) & 0x3F))
      {
LABEL_86:
        v11 = 1;
        return v11 & 1;
      }

LABEL_57:
      v11 = 0;
      return v11 & 1;
    case 13:
      if (((2 * HIBYTE(v37)) | ((v37 & 8) != 0)) != 0xD)
      {
        goto LABEL_56;
      }

LABEL_47:
      sub_1D5D28188(v38, sub_1D5FD7ABC);
      v11 = LOBYTE(v31[0]) == v34;
      return v11 & 1;
    case 14:
      if (((2 * HIBYTE(v37)) | ((v37 & 8) != 0)) == 0xE)
      {
        LOBYTE(v22) = v31[0];
        *(&v22 + 1) = *(v31 + 1);
        HIBYTE(v22) = (*(v31 + 1) | ((*(v31 + 5) | (BYTE7(v31[0]) << 16)) << 32)) >> 48;
        *(&v22 + 5) = *(v31 + 5);
        v23 = BYTE8(v31[0]);
        v24 = *(v31 + 9);
        v26 = (*(v31 + 9) | ((*(v31 + 13) | (HIBYTE(v31[0]) << 16)) << 32)) >> 48;
        v25 = *(v31 + 13);
        v27 = v2;
        v28 = v32;
        v18 = v34;
        v19 = v35;
        v20 = v36;
        sub_1D5FD78CC(&v34, v30);
        sub_1D5FD78CC(v31, v30);
        sub_1D5FD78CC(v31, v30);
        sub_1D5FD78CC(&v34, v30);
        v10 = _s8NewsFeed19FormatRecipeBindingV4TextO2eeoiySbAE_AEtFZ_0(&v22, &v18, v9);
        goto LABEL_54;
      }

      sub_1D5E1DCE8(*&v31[0], *(&v31[0] + 1), v2, *(&v2 + 1), v32, *(&v32 + 1));
      goto LABEL_56;
    default:
      if (!((2 * HIBYTE(v37)) | ((v37 & 8) != 0)))
      {
        LOBYTE(v22) = v31[0];
        *(&v22 + 1) = *(v31 + 1);
        HIBYTE(v22) = (*(v31 + 1) | ((*(v31 + 5) | (BYTE7(v31[0]) << 16)) << 32)) >> 48;
        *(&v22 + 5) = *(v31 + 5);
        v23 = BYTE8(v31[0]);
        v24 = *(v31 + 9);
        v26 = (*(v31 + 9) | ((*(v31 + 13) | (HIBYTE(v31[0]) << 16)) << 32)) >> 48;
        v25 = *(v31 + 13);
        v27 = v2;
        v28 = v32;
        v29 = v33 & 0xF7;
        v18 = v34;
        v19 = v35;
        v20 = v36;
        v21 = v37 & 0xF7;
        sub_1D5FD78CC(&v34, v30);
        sub_1D5FD78CC(v31, v30);
        sub_1D5FD78CC(v31, v30);
        sub_1D5FD78CC(&v34, v30);
        v10 = _s8NewsFeed21FormatHeadlineBindingV4TextO2eeoiySbAE_AEtFZ_0(&v22, &v18, v15);
LABEL_54:
        v11 = v10;
        sub_1D5D28188(v38, sub_1D5FD7ABC);
        sub_1D5FD7B18(&v34);
        sub_1D5FD7B18(v31);
        return v11 & 1;
      }

      sub_1D5E1DC48(*&v31[0], *(&v31[0] + 1), v2, *(&v2 + 1), v32, *(&v32 + 1), v33 & 0xF7);
LABEL_56:
      sub_1D5FD78CC(&v34, v30);
      sub_1D5D28188(v38, sub_1D5FD7ABC);
      goto LABEL_57;
  }
}

unint64_t sub_1D5FD7904(uint64_t a1)
{
  result = sub_1D5FD792C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FD792C()
{
  result = qword_1EC881FC8;
  if (!qword_1EC881FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881FC8);
  }

  return result;
}

unint64_t sub_1D5FD7980(void *a1)
{
  a1[1] = sub_1D5C77160();
  a1[2] = sub_1D5FD79B8();
  result = sub_1D5FD7A0C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5FD79B8()
{
  result = qword_1EDF0DED0;
  if (!qword_1EDF0DED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DED0);
  }

  return result;
}

unint64_t sub_1D5FD7A0C()
{
  result = qword_1EC881FD0;
  if (!qword_1EC881FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881FD0);
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D5FD7A8C(uint64_t result, unsigned int a2)
{
  *(result + 48) = *(result + 48) & 0xF7 | (8 * (a2 & 1));
  *(result + 49) = a2 >> 1;
  return result;
}

void sub_1D5FD7ABC()
{
  if (!qword_1EC881FD8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC881FD8);
    }
  }
}

void sub_1D5FD7B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v7 = a7 >> 4;
  if (v7 > 8)
  {
    if (v7 == 9)
    {
      sub_1D5E1DCD8(a1, a2, a3, a4, a5, a6, a7 & 0xF);
    }

    else if (v7 == 12)
    {
      sub_1D5E1DCE8(a1, a2, a3, a4, a5, a6);
    }
  }

  else if (a7 >> 4)
  {
    if (v7 == 3)
    {
      sub_1D5E1DCA8(a1, a2, a3, BYTE1(a3));
    }
  }

  else
  {
    sub_1D5E1DC48(a1, a2, a3, a4, a5, a6, a7);
  }
}

void FormatRemoteFont.scaling.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t FormatRemoteFont.name.getter()
{
  v1 = *v0;

  return v1;
}

double FormatRemoteFont.url.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

uint64_t FormatRemoteFont.scaling.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

__n128 sub_1D5FD7C7C(char **a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v18 = v1[4];
  v7 = *(v1 + 20);
  v8 = *a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1D5D095A0(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1D5D095A0((v9 > 1), v10 + 1, 1, v8);
  }

  *&v19 = v4;
  *(&v19 + 1) = v3;
  *&v20 = v5;
  *(&v20 + 1) = v6;
  *&v21 = v18;
  WORD4(v21) = v7;
  BYTE10(v21) = 0;
  sub_1D5FD8134(&v19);
  *(v8 + 2) = v10 + 1;
  v11 = &v8[128 * v10];
  v12 = v19;
  v13 = v20;
  v14 = v22;
  *(v11 + 4) = v21;
  *(v11 + 5) = v14;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  result = v23;
  v16 = v24;
  v17 = v25[0];
  *(v11 + 137) = *(v25 + 9);
  *(v11 + 7) = v16;
  *(v11 + 8) = v17;
  *(v11 + 6) = result;
  *a1 = v8;
  return result;
}

BOOL _s8NewsFeed16FormatRemoteFontV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = a1[3];
  v4 = *(a1 + 4);
  v5 = *(a1 + 20);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((*a1 != *a2 || *(a1 + 1) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v13 = v6;
  v14 = v2;

  v10 = static FormatURL.== infix(_:_:)(&v14, &v13);

  if (!v10 || v3 != v7)
  {
    return 0;
  }

  return sub_1D5F4F928(v4, v5, v8, v9, v11);
}

unint64_t sub_1D5FD7ECC(uint64_t a1)
{
  result = sub_1D5FD7EF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FD7EF4()
{
  result = qword_1EC881FE0;
  if (!qword_1EC881FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881FE0);
  }

  return result;
}

unint64_t sub_1D5FD7F48(void *a1)
{
  a1[1] = sub_1D5FD7F80();
  a1[2] = sub_1D5FD7FD4();
  result = sub_1D5FD8028();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5FD7F80()
{
  result = qword_1EDF11190;
  if (!qword_1EDF11190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11190);
  }

  return result;
}

unint64_t sub_1D5FD7FD4()
{
  result = qword_1EDF11198;
  if (!qword_1EDF11198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11198);
  }

  return result;
}

unint64_t sub_1D5FD8028()
{
  result = qword_1EC881FE8;
  if (!qword_1EC881FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881FE8);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D5FD8090(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_1D5FD80D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5FD813C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  *(v4 + 352) = a2;
  *(v4 + 360) = v5;
  *(v4 + 344) = a1;
  *(v4 + 368) = swift_getObjectType();
  *(v4 + 376) = type metadata accessor for PuzzleDatastoreInfo(0);
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  sub_1D5FE3DC4(0);
  *(v4 + 400) = swift_task_alloc();
  v7 = sub_1D725891C();
  *(v4 + 408) = v7;
  *(v4 + 416) = *(v7 - 8);
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 432) = type metadata accessor for PuzzleResource(0);
  *(v4 + 440) = swift_task_alloc();
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 456) = swift_task_alloc();
  v8 = sub_1D72585BC();
  *(v4 + 464) = v8;
  *(v4 + 472) = *(v8 - 8);
  *(v4 + 480) = swift_task_alloc();
  sub_1D5B4D3E0(0);
  *(v4 + 488) = swift_task_alloc();
  *(v4 + 496) = swift_task_alloc();
  *(v4 + 504) = type metadata accessor for PuzzleResourceSource(0);
  *(v4 + 512) = swift_task_alloc();
  *(v4 + 520) = *a3;
  *(v4 + 172) = *(a3 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D5FD839C, 0, 0);
}

uint64_t sub_1D5FD839C()
{
  v46 = v0;
  sub_1D5C10BE0(*(v0 + 352), *(v0 + 512), type metadata accessor for PuzzleResourceSource);
  if (qword_1EC87DC80 != -1)
  {
    swift_once();
  }

  if (sub_1D72596AC())
  {
    if (qword_1EC87DC70 != -1)
    {
      swift_once();
    }

    sub_1D5FE3FFC(&qword_1EC882120, v1, type metadata accessor for PuzzleDataManager, &unk_1D728D024);
    sub_1D725964C();
    if (qword_1EC87DC78 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 488);
    v4 = *(v0 + 464);
    v3 = *(v0 + 472);
    sub_1D725964C();
    v5 = PuzzleResourceSource.identifier.getter();
    v7 = v6;
    sub_1D725855C();

    sub_1D725855C();

    v8 = (*(v3 + 48))(v2, 1, v4);
    v9 = *(v0 + 488);
    if (v8 == 1)
    {

      sub_1D5FE40F0(v9, sub_1D5B4D3E0);
LABEL_32:
      v41 = *(v0 + 512);
      v42 = *(v0 + 496);
      sub_1D5FE3E60();
      swift_allocError();
      swift_willThrow();
      sub_1D5FE40F0(v42, sub_1D5B4D3E0);
      sub_1D5FE40F0(v41, type metadata accessor for PuzzleResourceSource);

      v43 = *(v0 + 8);

      return v43();
    }

    v10 = *(*(v0 + 472) + 32);
    v10(*(v0 + 480), *(v0 + 488), *(v0 + 464));
    v11 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v11 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {
      (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));

      goto LABEL_32;
    }

    v12 = *(v0 + 512);
    v13 = *(v0 + 496);
    v14 = *(v0 + 480);
    v15 = *(v0 + 464);
    sub_1D5FE40F0(v12, type metadata accessor for PuzzleResourceSource);
    sub_1D5B4D334(0);
    v17 = *(v16 + 48);
    v18 = *(v16 + 64);
    *v12 = v5;
    v12[1] = v7;
    v10(v12 + v17, v14, v15);
    sub_1D5FE3EB4(v13, v12 + v18, sub_1D5B4D3E0);
    swift_storeEnumTagMultiPayload();
  }

  *(v0 + 536) = CACurrentMediaTime();
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 172);
  v20 = *(v0 + 528);
  v21 = *(v0 + 520);
  v22 = sub_1D725C42C();
  *(v0 + 544) = __swift_project_value_buffer(v22, qword_1EDFFCFA8);
  sub_1D5FE3DF8(v21, v20, v19);
  v23 = sub_1D725C3FC();
  v24 = sub_1D7262EDC();
  sub_1D5FE3E2C(v21, v20, v19);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 175);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v45 = v27;
    *v26 = 136315138;
    if (v25 <= 0xFE)
    {
      v30 = HIBYTE(*(v0 + 172));
      v31 = 0x80000001D73C5A10;
      v32 = 0xD000000000000017;
      if (v30 != 1)
      {
        v32 = 0xD000000000000011;
        v31 = 0x80000001D73C5A50;
      }

      if (v30)
      {
        v29 = v32;
      }

      else
      {
        v29 = 0xD000000000000013;
      }

      if (v30)
      {
        v28 = v31;
      }

      else
      {
        v28 = 0x80000001D73C5A30;
      }
    }

    else
    {
      v28 = 0xE300000000000000;
      v29 = 7104878;
    }

    v33 = sub_1D5BC5100(v29, v28, &v45);

    *(v26 + 4) = v33;
    _os_log_impl(&dword_1D5B42000, v23, v24, "PuzzleDataManager: Start fetching resources with puzzleLaunchAction=%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1DA6FD500](v27, -1, -1);
    MEMORY[0x1DA6FD500](v26, -1, -1);
  }

  v34 = (*(v0 + 360) + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleService);
  v35 = v34[3];
  v36 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v44 = (*(v36 + 24) + **(v36 + 24));
  v37 = swift_task_alloc();
  *(v0 + 552) = v37;
  *v37 = v0;
  v37[1] = sub_1D5FD8A88;
  v38 = *(v0 + 512);
  v39 = *(v0 + 456);

  return v44(v39, v38, v35, v36);
}

uint64_t sub_1D5FD8A88()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_1D5FDB424;
  }

  else
  {
    v2 = sub_1D5FD8B9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5FD8B9C()
{
  v85 = v0;
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 360);
  v4 = *v1;
  *(v0 + 568) = *v1;
  v5 = OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle;
  *(v0 + 576) = OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle;
  *(v3 + v5) = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1D5C10BE0(v1, v2, type metadata accessor for PuzzleResource);
  v6 = sub_1D725C3FC();
  v7 = sub_1D7262EDC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 536);
    v9 = *(v0 + 448);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v84[0] = v11;
    *v10 = 136315394;
    v12 = PuzzleResource.description.getter();
    v14 = v13;
    sub_1D5FE40F0(v9, type metadata accessor for PuzzleResource);
    v15 = sub_1D5BC5100(v12, v14, v84);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v16 = (CACurrentMediaTime() - v8) * 1000.0;
    *(v0 + 256) = 0;
    *(v0 + 264) = 0xE000000000000000;
    MEMORY[0x1DA6F9910](37, 0xE100000000000000);
    sub_1D7262ABC();
    MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
    sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D7273AE0;
    v18 = MEMORY[0x1E69E6438];
    *(v17 + 56) = MEMORY[0x1E69E63B0];
    *(v17 + 64) = v18;
    *(v17 + 32) = v16 / 1000.0;
    v19 = sub_1D72620BC();
    v21 = v20;

    v22 = sub_1D5BC5100(v19, v21, v84);

    *(v10 + 14) = v22;
    _os_log_impl(&dword_1D5B42000, v6, v7, "PuzzleDataManager: Fetched puzzle resource: %s duration=%s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v11, -1, -1);
    MEMORY[0x1DA6FD500](v10, -1, -1);

    v23 = *(v3 + v5);
    if (v23)
    {
LABEL_3:
      v25 = *(v0 + 416);
      v24 = *(v0 + 424);
      v82 = *(v0 + 408);
      v26 = *(v0 + 360);
      v27 = [v23 puzzleType];
      *(v0 + 584) = v27;
      v28 = *(v26 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 24);
      v29 = *(v26 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 32);
      __swift_project_boxed_opaque_existential_1((v26 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService), v28);
      v30 = [v27 identifier];
      v31 = sub_1D726207C();
      v33 = v32;

      sub_1D72587BC();
      v34 = (*(v29 + 56))(v31, v33, v24, v28, v29);

      (*(v25 + 8))(v24, v82);
      *(v0 + 592) = *(v34 + 16);

      v35 = swift_task_alloc();
      *(v0 + 600) = v35;
      *v35 = v0;
      v35[1] = sub_1D5FD9658;

      return sub_1D5FDCED8(v27);
    }
  }

  else
  {
    v37 = *(v0 + 448);

    sub_1D5FE40F0(v37, type metadata accessor for PuzzleResource);
    v23 = *(v3 + v5);
    if (v23)
    {
      goto LABEL_3;
    }
  }

  *(v0 + 624) = 0;
  *(v0 + 816) = 0;
  v38 = sub_1D725C3FC();
  v39 = sub_1D7262EDC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v84[0] = v41;
    *v40 = 136315394;
    v42 = *(v0 + 536);
    v43 = sub_1D5BC5100(7104878, 0xE300000000000000, v84);

    *(v40 + 4) = v43;
    *(v40 + 12) = 2080;
    v44 = (CACurrentMediaTime() - v42) * 1000.0;
    *(v0 + 240) = 0;
    *(v0 + 248) = 0xE000000000000000;
    MEMORY[0x1DA6F9910](37, 0xE100000000000000);
    sub_1D7262ABC();
    MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
    sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1D7273AE0;
    v46 = MEMORY[0x1E69E6438];
    *(v45 + 56) = MEMORY[0x1E69E63B0];
    *(v45 + 64) = v46;
    *(v45 + 32) = v44 / 1000.0;
    v47 = sub_1D72620BC();
    v49 = v48;

    v50 = sub_1D5BC5100(v47, v49, v84);

    *(v40 + 14) = v50;
    _os_log_impl(&dword_1D5B42000, v38, v39, "PuzzleDataManager: Fetched puzzle statistics: %s duration=%s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v41, -1, -1);
    MEMORY[0x1DA6FD500](v40, -1, -1);
  }

  v51 = *(*(v0 + 360) + *(v0 + 576));
  *(v0 + 632) = v51;
  if (v51)
  {
    v52 = *(v0 + 172);
    *(v0 + 152) = *(v0 + 520);
    *(v0 + 168) = v52;
    swift_unknownObjectRetain();
    v53 = swift_task_alloc();
    *(v0 + 640) = v53;
    *v53 = v0;
    v53[1] = sub_1D5FD9E88;
    v54 = *(v0 + 456);

    return sub_1D5FDD544(v51, v54, v0 + 152);
  }

  else
  {
    *(v0 + 672) = 0u;
    v55 = sub_1D725C3FC();
    v56 = sub_1D7262EDC();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = *(v0 + 536);
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v84[0] = v59;
      *v58 = 136315394;
      v60 = sub_1D5BC5100(7104878, 0xE300000000000000, v84);

      *(v58 + 4) = v60;
      *(v58 + 12) = 2080;
      v61 = (CACurrentMediaTime() - v57) * 1000.0;
      *(v0 + 224) = 0;
      *(v0 + 232) = 0xE000000000000000;
      MEMORY[0x1DA6F9910](37, 0xE100000000000000);
      sub_1D7262ABC();
      MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
      sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1D7273AE0;
      v63 = MEMORY[0x1E69E6438];
      *(v62 + 56) = MEMORY[0x1E69E63B0];
      *(v62 + 64) = v63;
      *(v62 + 32) = v61 / 1000.0;
      v64 = sub_1D72620BC();
      v66 = v65;

      v67 = sub_1D5BC5100(v64, v66, v84);

      *(v58 + 14) = v67;
      _os_log_impl(&dword_1D5B42000, v55, v56, "PuzzleDataManager: Fetched puzzle small thumbnail url: %s duration=%s", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6FD500](v59, -1, -1);
      MEMORY[0x1DA6FD500](v58, -1, -1);
    }

    v68 = (*(v0 + 360) + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService);
    v69 = v68[4];
    __swift_project_boxed_opaque_existential_1(v68, v68[3]);
    v70 = PuzzleResourceSource.identifier.getter();
    v71 = (*(*(v69 + 8) + 56))(v70);

    if (v71)
    {
      sub_1D5FDDE24(v84);

      v72 = v84[0];
      v73 = v84[1];
      v74 = v84[2];
      v75 = v84[3];
      v76 = v84[4];
      v77 = v84[5];
    }

    else
    {
      v76 = xmmword_1D728CF30;
      v72 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      v75 = 0uLL;
      v77 = 0uLL;
    }

    *(v0 + 752) = v76;
    *(v0 + 768) = v77;
    *(v0 + 720) = v74;
    *(v0 + 736) = v75;
    *(v0 + 688) = v72;
    *(v0 + 704) = v73;
    v78 = *(v0 + 360);
    sub_1D5FDE158(v78, *(v0 + 400));
    v79 = *(v78 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleGameCenterService + 8);
    ObjectType = swift_getObjectType();
    v83 = (*(v79 + 40) + **(v79 + 40));
    v81 = swift_task_alloc();
    *(v0 + 784) = v81;
    *v81 = v0;
    v81[1] = sub_1D5FDA3E8;

    return v83(ObjectType, v79);
  }
}

uint64_t sub_1D5FD9658(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 608) = v1;

  if (v1)
  {
    v5 = sub_1D5FDB538;
  }

  else
  {
    *(v4 + 616) = a1;
    v5 = sub_1D5FD9780;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5FD9780()
{
  v55 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 616);
  v2 = *(v0 + 592) != 0;
  *(v0 + 624) = v1;
  *(v0 + 816) = v2;
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EDC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v54[0] = v6;
    *v5 = 136315394;
    if (v1)
    {
      v7 = type metadata accessor for PuzzleStatistic(0);

      v9 = MEMORY[0x1DA6F9DD0](v8, v7);
      v11 = v10;
    }

    else
    {
      v9 = 7104878;
      v11 = 0xE300000000000000;
    }

    v12 = *(v0 + 536);
    v13 = sub_1D5BC5100(v9, v11, v54);

    *(v5 + 4) = v13;
    *(v5 + 12) = 2080;
    v14 = (CACurrentMediaTime() - v12) * 1000.0;
    *(v0 + 240) = 0;
    *(v0 + 248) = 0xE000000000000000;
    MEMORY[0x1DA6F9910](37, 0xE100000000000000);
    sub_1D7262ABC();
    MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
    sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D7273AE0;
    v16 = MEMORY[0x1E69E6438];
    *(v15 + 56) = MEMORY[0x1E69E63B0];
    *(v15 + 64) = v16;
    *(v15 + 32) = v14 / 1000.0;
    v17 = sub_1D72620BC();
    v19 = v18;

    v20 = sub_1D5BC5100(v17, v19, v54);

    *(v5 + 14) = v20;
    _os_log_impl(&dword_1D5B42000, v3, v4, "PuzzleDataManager: Fetched puzzle statistics: %s duration=%s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v6, -1, -1);
    MEMORY[0x1DA6FD500](v5, -1, -1);
  }

  v21 = *(*(v0 + 360) + *(v0 + 576));
  *(v0 + 632) = v21;
  if (v21)
  {
    v22 = *(v0 + 172);
    *(v0 + 152) = *(v0 + 520);
    *(v0 + 168) = v22;
    swift_unknownObjectRetain();
    v23 = swift_task_alloc();
    *(v0 + 640) = v23;
    *v23 = v0;
    v23[1] = sub_1D5FD9E88;
    v24 = *(v0 + 456);

    return sub_1D5FDD544(v21, v24, v0 + 152);
  }

  else
  {
    *(v0 + 672) = 0u;
    v26 = sub_1D725C3FC();
    v27 = sub_1D7262EDC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 536);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v54[0] = v30;
      *v29 = 136315394;
      v31 = sub_1D5BC5100(7104878, 0xE300000000000000, v54);

      *(v29 + 4) = v31;
      *(v29 + 12) = 2080;
      v32 = (CACurrentMediaTime() - v28) * 1000.0;
      *(v0 + 224) = 0;
      *(v0 + 232) = 0xE000000000000000;
      MEMORY[0x1DA6F9910](37, 0xE100000000000000);
      sub_1D7262ABC();
      MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
      sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1D7273AE0;
      v34 = MEMORY[0x1E69E6438];
      *(v33 + 56) = MEMORY[0x1E69E63B0];
      *(v33 + 64) = v34;
      *(v33 + 32) = v32 / 1000.0;
      v35 = sub_1D72620BC();
      v37 = v36;

      v38 = sub_1D5BC5100(v35, v37, v54);

      *(v29 + 14) = v38;
      _os_log_impl(&dword_1D5B42000, v26, v27, "PuzzleDataManager: Fetched puzzle small thumbnail url: %s duration=%s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6FD500](v30, -1, -1);
      MEMORY[0x1DA6FD500](v29, -1, -1);
    }

    v39 = (*(v0 + 360) + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService);
    v40 = v39[4];
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    v41 = PuzzleResourceSource.identifier.getter();
    v42 = (*(*(v40 + 8) + 56))(v41);

    if (v42)
    {
      sub_1D5FDDE24(v54);

      v43 = v54[0];
      v44 = v54[1];
      v45 = v54[2];
      v46 = v54[3];
      v47 = v54[4];
      v48 = v54[5];
    }

    else
    {
      v47 = xmmword_1D728CF30;
      v43 = 0uLL;
      v44 = 0uLL;
      v45 = 0uLL;
      v46 = 0uLL;
      v48 = 0uLL;
    }

    *(v0 + 752) = v47;
    *(v0 + 768) = v48;
    *(v0 + 720) = v45;
    *(v0 + 736) = v46;
    *(v0 + 688) = v43;
    *(v0 + 704) = v44;
    v49 = *(v0 + 360);
    sub_1D5FDE158(v49, *(v0 + 400));
    v50 = *(v49 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleGameCenterService + 8);
    ObjectType = swift_getObjectType();
    v53 = (*(v50 + 40) + **(v50 + 40));
    v52 = swift_task_alloc();
    *(v0 + 784) = v52;
    *v52 = v0;
    v52[1] = sub_1D5FDA3E8;

    return v53(ObjectType, v50);
  }
}

uint64_t sub_1D5FD9E88(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 648) = v2;

  if (v2)
  {
    v7 = sub_1D5FDBD2C;
  }

  else
  {
    *(v6 + 656) = a2;
    *(v6 + 664) = a1;
    v7 = sub_1D5FD9FC0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D5FD9FC0()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 664);
  v2 = *(v0 + 656);
  *(v0 + 680) = v2;
  *(v0 + 672) = v1;

  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EDC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 536);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v34[0] = v7;
    *v6 = 136315394;
    if (v2)
    {
      v8 = v1;
    }

    else
    {
      v8 = 7104878;
    }

    if (v2)
    {
      v9 = v2;
    }

    else
    {
      v9 = 0xE300000000000000;
    }

    v10 = sub_1D5BC5100(v8, v9, v34);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = (CACurrentMediaTime() - v5) * 1000.0;
    *(v0 + 224) = 0;
    *(v0 + 232) = 0xE000000000000000;
    MEMORY[0x1DA6F9910](37, 0xE100000000000000);
    sub_1D7262ABC();
    MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
    sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7273AE0;
    v13 = MEMORY[0x1E69E6438];
    *(v12 + 56) = MEMORY[0x1E69E63B0];
    *(v12 + 64) = v13;
    *(v12 + 32) = v11 / 1000.0;
    v14 = sub_1D72620BC();
    v16 = v15;

    v17 = sub_1D5BC5100(v14, v16, v34);

    *(v6 + 14) = v17;
    _os_log_impl(&dword_1D5B42000, v3, v4, "PuzzleDataManager: Fetched puzzle small thumbnail url: %s duration=%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v7, -1, -1);
    MEMORY[0x1DA6FD500](v6, -1, -1);
  }

  v18 = (*(v0 + 360) + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService);
  v19 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v20 = PuzzleResourceSource.identifier.getter();
  v21 = (*(*(v19 + 8) + 56))(v20);

  if (v21)
  {
    sub_1D5FDDE24(v34);

    v22 = v34[0];
    v23 = v34[1];
    v24 = v34[2];
    v25 = v34[3];
    v26 = v34[4];
    v27 = v34[5];
  }

  else
  {
    v26 = xmmword_1D728CF30;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v27 = 0uLL;
  }

  *(v0 + 752) = v26;
  *(v0 + 768) = v27;
  *(v0 + 720) = v24;
  *(v0 + 736) = v25;
  *(v0 + 688) = v22;
  *(v0 + 704) = v23;
  v28 = *(v0 + 360);
  sub_1D5FDE158(v28, *(v0 + 400));
  v29 = *(v28 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleGameCenterService + 8);
  ObjectType = swift_getObjectType();
  v33 = (*(v29 + 40) + **(v29 + 40));
  v31 = swift_task_alloc();
  *(v0 + 784) = v31;
  *v31 = v0;
  v31[1] = sub_1D5FDA3E8;

  return v33(ObjectType, v29);
}

uint64_t sub_1D5FDA3E8(char a1)
{
  *(*v1 + 817) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D5FDA4E8, 0, 0);
}

uint64_t sub_1D5FDA4E8(uint64_t a1)
{
  v17 = v1;
  v2 = sub_1D725C3FC();
  v3 = sub_1D7262EDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 536);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v7 = (CACurrentMediaTime() - v4) * 1000.0;
    *(v1 + 208) = 0;
    *(v1 + 216) = 0xE000000000000000;
    MEMORY[0x1DA6F9910](37, 0xE100000000000000);
    sub_1D7262ABC();
    MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
    sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7273AE0;
    v9 = MEMORY[0x1E69E6438];
    *(v8 + 56) = MEMORY[0x1E69E63B0];
    *(v8 + 64) = v9;
    *(v8 + 32) = v7 / 1000.0;
    v10 = sub_1D72620BC();
    v12 = v11;

    v13 = sub_1D5BC5100(v10, v12, &v16);

    *(v5 + 4) = v13;
    _os_log_impl(&dword_1D5B42000, v2, v3, "PuzzleDataManager: isGameCenterEnabled duration=%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA6FD500](v6, -1, -1);
    MEMORY[0x1DA6FD500](v5, -1, -1);
  }

  v14 = swift_task_alloc();
  *(v1 + 792) = v14;
  *v14 = v1;
  v14[1] = sub_1D5FDA750;

  return sub_1D5FDE448();
}

uint64_t sub_1D5FDA750(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 800) = v1;

  if (v1)
  {
    v5 = sub_1D5FDC23C;
  }

  else
  {
    *(v4 + 808) = a1;
    v5 = sub_1D5FDA878;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5FDA878(uint64_t a1)
{
  v113 = v1;
  v107 = *(v1 + 808);
  v109 = *(v1 + 800);
  v2 = sub_1D725C3FC();
  v3 = sub_1D7262EDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 536);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v111 = v6;
    *v5 = 136315138;
    v7 = (CACurrentMediaTime() - v4) * 1000.0;
    *(v1 + 192) = 0;
    *(v1 + 200) = 0xE000000000000000;
    MEMORY[0x1DA6F9910](37, 0xE100000000000000);
    sub_1D7262ABC();
    MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
    sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7273AE0;
    v9 = MEMORY[0x1E69E6438];
    *(v8 + 56) = MEMORY[0x1E69E63B0];
    *(v8 + 64) = v9;
    *(v8 + 32) = v7 / 1000.0;
    v10 = sub_1D72620BC();
    v12 = v11;

    v13 = sub_1D5BC5100(v10, v12, &v111);

    *(v5 + 4) = v13;
    _os_log_impl(&dword_1D5B42000, v2, v3, "PuzzleDataManager: Fetched related puzzles info duration=%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA6FD500](v6, -1, -1);
    MEMORY[0x1DA6FD500](v5, -1, -1);
  }

  v14 = *(v1 + 360);
  sub_1D5C10BE0(*(v1 + 456), *(v1 + 440), type metadata accessor for PuzzleResource);
  v15 = [*(v14 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v15, v15 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v111 = 0u;
    v112 = 0u;
  }

  v16 = v112;
  *(v1 + 16) = v111;
  *(v1 + 32) = v16;
  if (!*(v1 + 40))
  {
    sub_1D5EBD03C(v1 + 16);
    goto LABEL_11;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v17 = 0;
    v18 = 0;
    goto LABEL_12;
  }

  v17 = *(v1 + 312);
  v18 = [v17 integerValue];
  if (v18 == -1)
  {

    v104 = 21;
    v106 = -1;
    goto LABEL_21;
  }

LABEL_12:
  v106 = v18;
  if (objc_getAssociatedObject(v15, ~v18))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v111 = 0u;
    v112 = 0u;
  }

  v19 = v112;
  *(v1 + 48) = v111;
  *(v1 + 64) = v19;
  if (!*(v1 + 72))
  {
    sub_1D5EBD03C(v1 + 48);
    goto LABEL_19;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:

    v22 = 21;
    goto LABEL_20;
  }

  v20 = *(v1 + 304);
  v21 = [v20 integerValue];

  v22 = v21 + 21;
LABEL_20:
  v104 = v22;
LABEL_21:
  v23 = *(v1 + 568);
  v24 = *(v1 + 172);
  v25 = *(v1 + 528);
  v26 = *(v1 + 520);
  v27 = *(v1 + 360);
  v28 = sub_1D5FDEB3C(v23);
  v29 = *(v27 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleTypeSettings);
  sub_1D5FE3DF8(v26, v25, v24);
  v30 = [objc_msgSend(v23 puzzleType)];
  swift_unknownObjectRelease();
  if (!v30)
  {
    sub_1D726207C();
    v30 = sub_1D726203C();
  }

  v31 = [v29 settingsDataForPuzzleTypeID_];

  if (v31)
  {
    v32 = sub_1D725867C();
    v102 = v33;
    v103 = v32;
  }

  else
  {
    v102 = 0xF000000000000000;
    v103 = 0;
  }

  v99 = *(v1 + 672);
  v100 = *(v1 + 680);
  v97 = *(v1 + 816);
  v98 = *(v1 + 817);
  v96 = *(v1 + 172);
  v94 = *(v1 + 520);
  v95 = *(v1 + 528);
  v92 = *(v1 + 440);
  v35 = *(v1 + 392);
  v34 = *(v1 + 400);
  v36 = *(v1 + 376);
  v101 = *(v1 + 384);
  v37 = ((v104 ^ v106) & 1) == 0;
  v90 = *(v1 + 720);
  v91 = *(v1 + 688);
  v87 = *(v1 + 736);
  v88 = *(v1 + 704);
  v89 = *(v1 + 752);
  v86 = *(v1 + 768);
  v105 = sub_1D5FDEDB8();
  v93 = v38;
  type metadata accessor for PuzzleStatsInfo();
  swift_allocObject();

  v40 = PuzzleStatsInfo.init(statistics:)(v39);
  sub_1D5C10BE0(v34, v35 + v36[12], sub_1D5FE3DC4);
  sub_1D5FDF3D4();
  v42 = v41;
  v44 = v43;
  v45 = sub_1D5FDF918();
  v47 = v46;
  sub_1D5FE3EB4(v92, v35, type metadata accessor for PuzzleResource);
  *(v35 + v36[5]) = v37;
  *(v35 + v36[6]) = v28 & 1;
  v48 = (v35 + v36[7]);
  *v48 = v91;
  v48[1] = v88;
  v48[2] = v90;
  v48[3] = v87;
  v48[4] = v89;
  v48[5] = v86;
  v49 = v35 + v36[8];
  *v49 = v94;
  *(v49 + 8) = v95;
  *(v49 + 16) = v96;
  v50 = (v35 + v36[9]);
  *v50 = v103;
  v50[1] = v102;
  v51 = (v35 + v36[10]);
  *v51 = v105;
  v51[1] = v93;
  *(v35 + v36[11]) = v40;
  *(v35 + v36[13]) = v97;
  v52 = (v35 + v36[14]);
  *v52 = v42;
  v52[1] = v44;
  *(v35 + v36[15]) = v98;
  v53 = (v35 + v36[16]);
  *v53 = v99;
  v53[1] = v100;
  v54 = (v35 + v36[17]);
  *v54 = v45;
  v54[1] = v47;
  *(v35 + v36[18]) = v107;
  sub_1D5C10BE0(v35, v101, type metadata accessor for PuzzleDatastoreInfo);
  type metadata accessor for PuzzleDatastore();
  swift_allocObject();
  v55 = sub_1D67AFAA8(v101);
  if (v109)
  {
    v56 = *(v1 + 512);
    v57 = *(v1 + 456);
    v58 = *(v1 + 400);
    sub_1D5FE40F0(*(v1 + 392), type metadata accessor for PuzzleDatastoreInfo);
    sub_1D5FE40F0(v58, sub_1D5FE3DC4);
    sub_1D5FE40F0(v56, type metadata accessor for PuzzleResourceSource);
    sub_1D5FE40F0(v57, type metadata accessor for PuzzleResource);

    v59 = *(v1 + 8);
  }

  else
  {
    v110 = v55;
    v60 = sub_1D725C3FC();
    v61 = sub_1D7262EDC();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = *(v1 + 536);
      v63 = *(v1 + 512);
      v64 = *(v1 + 392);
      v108 = *(v1 + 400);
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v111 = v66;
      *v65 = 136315138;
      v67 = (CACurrentMediaTime() - v62) * 1000.0;
      *(v1 + 176) = 0;
      *(v1 + 184) = 0xE000000000000000;
      MEMORY[0x1DA6F9910](37, 0xE100000000000000);
      sub_1D7262ABC();
      MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
      sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_1D7273AE0;
      v69 = MEMORY[0x1E69E6438];
      *(v68 + 56) = MEMORY[0x1E69E63B0];
      *(v68 + 64) = v69;
      *(v68 + 32) = v67 / 1000.0;
      v70 = sub_1D72620BC();
      v72 = v71;

      v73 = sub_1D5BC5100(v70, v72, &v111);

      *(v65 + 4) = v73;
      _os_log_impl(&dword_1D5B42000, v60, v61, "PuzzleDataManager: Finished assembling puzzle data duration=%s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x1DA6FD500](v66, -1, -1);
      MEMORY[0x1DA6FD500](v65, -1, -1);

      sub_1D5FE40F0(v64, type metadata accessor for PuzzleDatastoreInfo);
      sub_1D5FE40F0(v108, sub_1D5FE3DC4);
      v74 = v63;
    }

    else
    {
      v75 = *(v1 + 512);
      v77 = *(v1 + 392);
      v76 = *(v1 + 400);

      sub_1D5FE40F0(v77, type metadata accessor for PuzzleDatastoreInfo);
      sub_1D5FE40F0(v76, sub_1D5FE3DC4);
      v74 = v75;
    }

    sub_1D5FE40F0(v74, type metadata accessor for PuzzleResourceSource);
    v78 = *(v1 + 568);
    v79 = *(v1 + 472);
    v81 = *(v1 + 456);
    v80 = *(v1 + 464);
    v82 = *(v1 + 344);
    v83 = *(*(v1 + 432) + 20);
    v84 = type metadata accessor for PuzzleData(0);
    (*(v79 + 16))(&v82[*(v84 + 20)], v81 + v83, v80);
    *v82 = v78;
    *&v82[*(v84 + 24)] = v110;
    swift_unknownObjectRetain();
    sub_1D5FE40F0(v81, type metadata accessor for PuzzleResource);

    v59 = *(v1 + 8);
  }

  return v59();
}

uint64_t sub_1D5FDB424()
{
  sub_1D5FE40F0(*(v0 + 512), type metadata accessor for PuzzleResourceSource);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5FDB538()
{
  v60 = v0;
  v1 = *(v0 + 608);
  v2 = v1;
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EBC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 608);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v59[0] = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1D726497C();
    v10 = sub_1D5BC5100(v8, v9, v59);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D5B42000, v3, v4, "PuzzleDataManager: Failed to get puzzle statistics with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1DA6FD500](v7, -1, -1);
    MEMORY[0x1DA6FD500](v6, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {
    v11 = *(v0 + 608);

    swift_unknownObjectRelease();
  }

  v12 = *(v0 + 592) != 0;
  *(v0 + 624) = 0;
  *(v0 + 816) = v12;
  v13 = sub_1D725C3FC();
  v14 = sub_1D7262EDC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v59[0] = v16;
    *v15 = 136315394;
    v17 = *(v0 + 536);
    v18 = sub_1D5BC5100(7104878, 0xE300000000000000, v59);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v19 = (CACurrentMediaTime() - v17) * 1000.0;
    *(v0 + 240) = 0;
    *(v0 + 248) = 0xE000000000000000;
    MEMORY[0x1DA6F9910](37, 0xE100000000000000);
    sub_1D7262ABC();
    MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
    sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D7273AE0;
    v21 = MEMORY[0x1E69E6438];
    *(v20 + 56) = MEMORY[0x1E69E63B0];
    *(v20 + 64) = v21;
    *(v20 + 32) = v19 / 1000.0;
    v22 = sub_1D72620BC();
    v24 = v23;

    v25 = sub_1D5BC5100(v22, v24, v59);

    *(v15 + 14) = v25;
    _os_log_impl(&dword_1D5B42000, v13, v14, "PuzzleDataManager: Fetched puzzle statistics: %s duration=%s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v16, -1, -1);
    MEMORY[0x1DA6FD500](v15, -1, -1);
  }

  v26 = *(*(v0 + 360) + *(v0 + 576));
  *(v0 + 632) = v26;
  if (v26)
  {
    v27 = *(v0 + 172);
    *(v0 + 152) = *(v0 + 520);
    *(v0 + 168) = v27;
    swift_unknownObjectRetain();
    v28 = swift_task_alloc();
    *(v0 + 640) = v28;
    *v28 = v0;
    v28[1] = sub_1D5FD9E88;
    v29 = *(v0 + 456);

    return sub_1D5FDD544(v26, v29, v0 + 152);
  }

  else
  {
    *(v0 + 672) = 0u;
    v31 = sub_1D725C3FC();
    v32 = sub_1D7262EDC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 536);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v59[0] = v35;
      *v34 = 136315394;
      v36 = sub_1D5BC5100(7104878, 0xE300000000000000, v59);

      *(v34 + 4) = v36;
      *(v34 + 12) = 2080;
      v37 = (CACurrentMediaTime() - v33) * 1000.0;
      *(v0 + 224) = 0;
      *(v0 + 232) = 0xE000000000000000;
      MEMORY[0x1DA6F9910](37, 0xE100000000000000);
      sub_1D7262ABC();
      MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
      sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1D7273AE0;
      v39 = MEMORY[0x1E69E6438];
      *(v38 + 56) = MEMORY[0x1E69E63B0];
      *(v38 + 64) = v39;
      *(v38 + 32) = v37 / 1000.0;
      v40 = sub_1D72620BC();
      v42 = v41;

      v43 = sub_1D5BC5100(v40, v42, v59);

      *(v34 + 14) = v43;
      _os_log_impl(&dword_1D5B42000, v31, v32, "PuzzleDataManager: Fetched puzzle small thumbnail url: %s duration=%s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6FD500](v35, -1, -1);
      MEMORY[0x1DA6FD500](v34, -1, -1);
    }

    v44 = (*(v0 + 360) + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService);
    v45 = v44[4];
    __swift_project_boxed_opaque_existential_1(v44, v44[3]);
    v46 = PuzzleResourceSource.identifier.getter();
    v47 = (*(*(v45 + 8) + 56))(v46);

    if (v47)
    {
      sub_1D5FDDE24(v59);

      v48 = v59[0];
      v49 = v59[1];
      v50 = v59[2];
      v51 = v59[3];
      v52 = v59[4];
      v53 = v59[5];
    }

    else
    {
      v52 = xmmword_1D728CF30;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
      v53 = 0uLL;
    }

    *(v0 + 752) = v52;
    *(v0 + 768) = v53;
    *(v0 + 720) = v50;
    *(v0 + 736) = v51;
    *(v0 + 688) = v48;
    *(v0 + 704) = v49;
    v54 = *(v0 + 360);
    sub_1D5FDE158(v54, *(v0 + 400));
    v55 = *(v54 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleGameCenterService + 8);
    ObjectType = swift_getObjectType();
    v58 = (*(v55 + 40) + **(v55 + 40));
    v57 = swift_task_alloc();
    *(v0 + 784) = v57;
    *v57 = v0;
    v57[1] = sub_1D5FDA3E8;

    return v58(ObjectType, v55);
  }
}

uint64_t sub_1D5FDBD2C()
{
  v42 = v0;
  v1 = *(v0 + 648);
  swift_unknownObjectRelease();
  v2 = v1;
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EBC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 648);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v41[0] = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1D726497C();
    v10 = sub_1D5BC5100(v8, v9, v41);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D5B42000, v3, v4, "PuzzleDataManager: Failed to obtain thumbnail small url with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1DA6FD500](v7, -1, -1);
    MEMORY[0x1DA6FD500](v6, -1, -1);
  }

  else
  {
    v11 = *(v0 + 648);
  }

  *(v0 + 672) = 0u;
  v12 = sub_1D725C3FC();
  v13 = sub_1D7262EDC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 536);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v41[0] = v16;
    *v15 = 136315394;
    v17 = sub_1D5BC5100(7104878, 0xE300000000000000, v41);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2080;
    v18 = (CACurrentMediaTime() - v14) * 1000.0;
    *(v0 + 224) = 0;
    *(v0 + 232) = 0xE000000000000000;
    MEMORY[0x1DA6F9910](37, 0xE100000000000000);
    sub_1D7262ABC();
    MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
    sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D7273AE0;
    v20 = MEMORY[0x1E69E6438];
    *(v19 + 56) = MEMORY[0x1E69E63B0];
    *(v19 + 64) = v20;
    *(v19 + 32) = v18 / 1000.0;
    v21 = sub_1D72620BC();
    v23 = v22;

    v24 = sub_1D5BC5100(v21, v23, v41);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_1D5B42000, v12, v13, "PuzzleDataManager: Fetched puzzle small thumbnail url: %s duration=%s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v16, -1, -1);
    MEMORY[0x1DA6FD500](v15, -1, -1);
  }

  v25 = (*(v0 + 360) + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService);
  v26 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v27 = PuzzleResourceSource.identifier.getter();
  v28 = (*(*(v26 + 8) + 56))(v27);

  if (v28)
  {
    sub_1D5FDDE24(v41);

    v29 = v41[0];
    v30 = v41[1];
    v31 = v41[2];
    v32 = v41[3];
    v33 = v41[4];
    v34 = v41[5];
  }

  else
  {
    v33 = xmmword_1D728CF30;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v34 = 0uLL;
  }

  *(v0 + 752) = v33;
  *(v0 + 768) = v34;
  *(v0 + 720) = v31;
  *(v0 + 736) = v32;
  *(v0 + 688) = v29;
  *(v0 + 704) = v30;
  v35 = *(v0 + 360);
  sub_1D5FDE158(v35, *(v0 + 400));
  v36 = *(v35 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleGameCenterService + 8);
  ObjectType = swift_getObjectType();
  v40 = (*(v36 + 40) + **(v36 + 40));
  v38 = swift_task_alloc();
  *(v0 + 784) = v38;
  *v38 = v0;
  v38[1] = sub_1D5FDA3E8;

  return v40(ObjectType, v36);
}

uint64_t sub_1D5FDC23C()
{
  v116 = v0;
  v1 = *(v0 + 800);
  v2 = v1;
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EBC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 800);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v114 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1D726497C();
    v10 = sub_1D5BC5100(v8, v9, &v114);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D5B42000, v3, v4, "PuzzleDataManager: Failed to get related puzzles info with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1DA6FD500](v7, -1, -1);
    MEMORY[0x1DA6FD500](v6, -1, -1);
  }

  else
  {
    v11 = *(v0 + 800);
  }

  v12 = sub_1D725C3FC();
  v13 = sub_1D7262EDC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 536);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v114 = v16;
    *v15 = 136315138;
    v17 = (CACurrentMediaTime() - v14) * 1000.0;
    *(v0 + 192) = 0;
    *(v0 + 200) = 0xE000000000000000;
    MEMORY[0x1DA6F9910](37, 0xE100000000000000);
    sub_1D7262ABC();
    MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
    sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7273AE0;
    v19 = MEMORY[0x1E69E6438];
    *(v18 + 56) = MEMORY[0x1E69E63B0];
    *(v18 + 64) = v19;
    *(v18 + 32) = v17 / 1000.0;
    v20 = sub_1D72620BC();
    v22 = v21;

    v23 = sub_1D5BC5100(v20, v22, &v114);

    *(v15 + 4) = v23;
    _os_log_impl(&dword_1D5B42000, v12, v13, "PuzzleDataManager: Fetched related puzzles info duration=%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1DA6FD500](v16, -1, -1);
    MEMORY[0x1DA6FD500](v15, -1, -1);
  }

  v24 = *(v0 + 360);
  sub_1D5C10BE0(*(v0 + 456), *(v0 + 440), type metadata accessor for PuzzleResource);
  v25 = [*(v24 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v25, v25 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
  }

  v26 = v115;
  *(v0 + 16) = v114;
  *(v0 + 32) = v26;
  if (*(v0 + 40))
  {
    sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v27 = *(v0 + 312);
      v28 = [v27 integerValue];
      if (v28 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_1D5EBD03C(v0 + 16);
  }

  v27 = 0;
  v28 = 0;
LABEL_15:
  if (objc_getAssociatedObject(v25, ~v28))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
  }

  v29 = v115;
  *(v0 + 48) = v114;
  *(v0 + 64) = v29;
  if (*(v0 + 72))
  {
    sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v30 = *(v0 + 304);
      v31 = [v30 integerValue];

      v32 = v31 + 21;
      goto LABEL_23;
    }
  }

  else
  {
    sub_1D5EBD03C(v0 + 48);
  }

LABEL_22:

  v32 = 21;
LABEL_23:
  v113 = v32;
  v33 = *(v0 + 568);
  v34 = *(v0 + 172);
  v35 = *(v0 + 528);
  v36 = *(v0 + 520);
  v37 = *(v0 + 360);
  v38 = sub_1D5FDEB3C(v33);
  v39 = *(v37 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleTypeSettings);
  sub_1D5FE3DF8(v36, v35, v34);
  v40 = [objc_msgSend(v33 puzzleType)];
  swift_unknownObjectRelease();
  if (!v40)
  {
    sub_1D726207C();
    v40 = sub_1D726203C();
  }

  v41 = [v39 settingsDataForPuzzleTypeID_];

  if (v41)
  {
    v42 = sub_1D725867C();
    v109 = v43;
    v111 = v42;
  }

  else
  {
    v109 = 0xF000000000000000;
    v111 = 0;
  }

  v105 = *(v0 + 817);
  v106 = *(v0 + 672);
  v107 = *(v0 + 680);
  v104 = *(v0 + 816);
  v103 = *(v0 + 172);
  v101 = *(v0 + 520);
  v102 = *(v0 + 528);
  v98 = *(v0 + 440);
  v45 = *(v0 + 392);
  v44 = *(v0 + 400);
  v46 = *(v0 + 376);
  v108 = *(v0 + 384);
  v96 = *(v0 + 720);
  v97 = *(v0 + 688);
  v93 = *(v0 + 736);
  v94 = *(v0 + 704);
  v95 = *(v0 + 752);
  v92 = *(v0 + 768);
  v47 = sub_1D5FDEDB8();
  v99 = v48;
  v100 = v47;
  type metadata accessor for PuzzleStatsInfo();
  swift_allocObject();

  v50 = PuzzleStatsInfo.init(statistics:)(v49);
  sub_1D5C10BE0(v44, v45 + v46[12], sub_1D5FE3DC4);
  sub_1D5FDF3D4();
  v52 = v51;
  v54 = v53;
  v55 = sub_1D5FDF918();
  v57 = v56;
  sub_1D5FE3EB4(v98, v45, type metadata accessor for PuzzleResource);
  *(v45 + v46[5]) = ((v113 ^ v28) & 1) == 0;
  *(v45 + v46[6]) = v38 & 1;
  v58 = (v45 + v46[7]);
  *v58 = v97;
  v58[1] = v94;
  v58[2] = v96;
  v58[3] = v93;
  v58[4] = v95;
  v58[5] = v92;
  v59 = v45 + v46[8];
  *v59 = v101;
  *(v59 + 8) = v102;
  *(v59 + 16) = v103;
  v60 = (v45 + v46[9]);
  *v60 = v111;
  v60[1] = v109;
  v61 = (v45 + v46[10]);
  *v61 = v100;
  v61[1] = v99;
  *(v45 + v46[11]) = v50;
  *(v45 + v46[13]) = v104;
  v62 = (v45 + v46[14]);
  *v62 = v52;
  v62[1] = v54;
  *(v45 + v46[15]) = v105;
  v63 = (v45 + v46[16]);
  *v63 = v106;
  v63[1] = v107;
  v64 = (v45 + v46[17]);
  *v64 = v55;
  v64[1] = v57;
  *(v45 + v46[18]) = 0;
  sub_1D5C10BE0(v45, v108, type metadata accessor for PuzzleDatastoreInfo);
  type metadata accessor for PuzzleDatastore();
  swift_allocObject();
  v112 = sub_1D67AFAA8(v108);
  v65 = sub_1D725C3FC();
  v66 = sub_1D7262EDC();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = *(v0 + 536);
    v68 = *(v0 + 512);
    v69 = *(v0 + 392);
    v110 = *(v0 + 400);
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v114 = v71;
    *v70 = 136315138;
    v72 = (CACurrentMediaTime() - v67) * 1000.0;
    *(v0 + 176) = 0;
    *(v0 + 184) = 0xE000000000000000;
    MEMORY[0x1DA6F9910](37, 0xE100000000000000);
    sub_1D7262ABC();
    MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
    sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1D7273AE0;
    v74 = MEMORY[0x1E69E6438];
    *(v73 + 56) = MEMORY[0x1E69E63B0];
    *(v73 + 64) = v74;
    *(v73 + 32) = v72 / 1000.0;
    v75 = sub_1D72620BC();
    v77 = v76;

    v78 = sub_1D5BC5100(v75, v77, &v114);

    *(v70 + 4) = v78;
    _os_log_impl(&dword_1D5B42000, v65, v66, "PuzzleDataManager: Finished assembling puzzle data duration=%s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v71);
    MEMORY[0x1DA6FD500](v71, -1, -1);
    MEMORY[0x1DA6FD500](v70, -1, -1);

    sub_1D5FE40F0(v69, type metadata accessor for PuzzleDatastoreInfo);
    sub_1D5FE40F0(v110, sub_1D5FE3DC4);
    v79 = v68;
  }

  else
  {
    v80 = *(v0 + 512);
    v82 = *(v0 + 392);
    v81 = *(v0 + 400);

    sub_1D5FE40F0(v82, type metadata accessor for PuzzleDatastoreInfo);
    sub_1D5FE40F0(v81, sub_1D5FE3DC4);
    v79 = v80;
  }

  sub_1D5FE40F0(v79, type metadata accessor for PuzzleResourceSource);
  v83 = *(v0 + 568);
  v84 = *(v0 + 472);
  v86 = *(v0 + 456);
  v85 = *(v0 + 464);
  v87 = *(v0 + 344);
  v88 = *(*(v0 + 432) + 20);
  v89 = type metadata accessor for PuzzleData(0);
  (*(v84 + 16))(&v87[*(v89 + 20)], v86 + v88, v85);
  *v87 = v83;
  *&v87[*(v89 + 24)] = v112;
  swift_unknownObjectRetain();
  sub_1D5FE40F0(v86, type metadata accessor for PuzzleResource);

  v90 = *(v0 + 8);

  return v90();
}

uint64_t sub_1D5FDCED8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1D7263F5C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_1D5FE3F1C(0);
  v2[8] = swift_task_alloc();
  v4 = sub_1D7263F4C();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5FDD02C, 0, 0);
}

uint64_t sub_1D5FDD02C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v16 = *(v0 + 24);
  sub_1D7263F2C();
  sub_1D7263F3C();
  v6 = *(v4 + 8);
  *(v0 + 104) = v6;
  *(v0 + 112) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  (*(v4 + 16))(v5, v1, v3);
  (*(v4 + 56))(v5, 0, 1, v3);
  sub_1D726496C();
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  v7[1] = vextq_s8(v16, v16, 8uLL);
  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  sub_1D5FE4648(0, &unk_1EC882150, sub_1D5FE4420, MEMORY[0x1E69E6720]);
  v10 = v9;
  v11 = sub_1D5FE3FFC(&qword_1EDF04298, 255, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  *v8 = v0;
  v8[1] = sub_1D5FDD238;
  v13 = *(v0 + 56);
  v12 = *(v0 + 64);
  v14 = *(v0 + 40);

  return MEMORY[0x1EEE44790](v0 + 16, v12, v13, &unk_1D728D0E8, v7, v14, v10, v11);
}

uint64_t sub_1D5FDD238()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  sub_1D5FE40F0(v2, sub_1D5FE3F1C);
  if (v0)
  {
    v6 = sub_1D5FDD4A8;
  }

  else
  {
    v6 = sub_1D5FDD3FC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D5FDD3FC()
{
  (*(v0 + 104))(*(v0 + 96), *(v0 + 72));
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D5FDD4A8()
{
  (*(v0 + 104))(*(v0 + 96), *(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5FDD544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 32) = a1;
  sub_1D5B4D3E0(0);
  *(v4 + 56) = swift_task_alloc();
  v6 = sub_1D72585BC();
  *(v4 + 64) = v6;
  *(v4 + 72) = *(v6 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = *a3;
  *(v4 + 128) = *(a3 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D5FDD694, 0, 0);
}

uint64_t sub_1D5FDD694()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  sub_1D5FE0CD4(*(v0 + 32), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 131);
    sub_1D5FE40F0(*(v0 + 56), sub_1D5B4D3E0);
    if (v4)
    {
      v5 = swift_task_alloc();
      *(v0 + 120) = v5;
      *v5 = v0;
      v5[1] = sub_1D5FDDC44;
      v6 = *(v0 + 32);

      return sub_1D5FE0670(v6);
    }

    sub_1D5FE3E0C(*(v0 + 104), *(v0 + 112), *(v0 + 128), 0);
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725C42C();
    __swift_project_value_buffer(v33, qword_1EDFFCFA8);
    v34 = sub_1D725C3FC();
    v35 = sub_1D7262EDC();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 128);
    v39 = *(v0 + 104);
    v38 = *(v0 + 112);
    if (v36)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1D5B42000, v34, v35, "PuzzleDataManager: Skipping fetch thumbnailSmallUrl as cached data not available in fullScreen modal launchMode", v40, 2u);
      MEMORY[0x1DA6FD500](v40, -1, -1);
    }

    sub_1D5FE3E2C(v39, v38, v37);

    v11 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 64);
  (*(v9 + 32))(*(v0 + 96), *(v0 + 56), v10);
  v11 = sub_1D725841C();
  v13 = v12;
  type metadata accessor for PuzzleResource(0);
  sub_1D72584BC();
  sub_1D725849C();
  v14 = *(v9 + 8);
  v14(v8, v10);
  v15 = objc_opt_self();
  v16 = [v15 defaultManager];
  sub_1D725851C();
  v17 = sub_1D726203C();

  v18 = [v16 fileExistsAtPath_];

  if (v18)
  {
    v19 = [v15 defaultManager];
    v20 = sub_1D725844C();
    *(v0 + 24) = 0;
    v21 = [v19 removeItemAtURL:v20 error:v0 + 24];

    v22 = *(v0 + 24);
    if (!v21)
    {
      v46 = *(v0 + 88);
      v45 = *(v0 + 96);
      v47 = *(v0 + 64);
      v48 = v22;

      sub_1D725829C();

      swift_willThrow();
      v14(v46, v47);
      v43 = v45;
      v44 = v47;
      goto LABEL_21;
    }

    v23 = v22;
  }

  v24 = [v15 defaultManager];
  v25 = sub_1D725844C();
  v26 = sub_1D725844C();
  *(v0 + 16) = 0;
  v27 = [v24 copyItemAtURL:v25 toURL:v26 error:v0 + 16];

  v28 = *(v0 + 16);
  v30 = *(v0 + 88);
  v29 = *(v0 + 96);
  v31 = *(v0 + 64);
  if (v27)
  {
    v32 = v28;
    v14(v30, v31);
    v14(v29, v31);
LABEL_16:

    v41 = *(v0 + 8);

    return v41(v11, v13);
  }

  v42 = v28;

  sub_1D725829C();

  swift_willThrow();
  v14(v30, v31);
  v43 = v29;
  v44 = v31;
LABEL_21:
  v14(v43, v44);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1D5FDDC44(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

void sub_1D5FDDE24(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1D5B5B2A0(0);
  *&v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5).n128_u64[0];
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = [v1 progressLevel];
  v9 = [v1 score];
  v10 = v9;
  if (v9)
  {
    v40 = [v9 integerValue];
  }

  else
  {
    v40 = 0;
  }

  v11 = [v1 scoreType];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 integerValue];

    if (v13 == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (!v13)
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 2;
  }

  v39 = v14;
  v15 = [v2 rankID];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1D726207C();
    v37 = v18;
    v38 = v17;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v19 = [v2 usedReveal];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 BOOLValue];
  }

  else
  {
    v21 = 0;
  }

  v22 = [v2 playDuration];
  v23 = [v2 completedDate];
  if (v23)
  {
    sub_1D72588BC();

    v24 = sub_1D725891C();
    (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
  }

  else
  {
    v25 = sub_1D725891C();
    (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  }

  sub_1D5FE40F0(v8, sub_1D5B5B2A0);
  v26 = [v2 progressData];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1D725867C();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0xF000000000000000;
  }

  v31 = [v2 progressMovesDescription];
  if (v31)
  {
    v32 = v31;
    v33 = sub_1D726207C();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  *a1 = v41;
  *(a1 + 8) = v22;
  *(a1 + 16) = v23 != 0;
  *(a1 + 24) = v28;
  *(a1 + 32) = v30;
  *(a1 + 40) = v40;
  *(a1 + 48) = v10 == 0;
  *(a1 + 49) = v39;
  v36 = v37;
  *(a1 + 56) = v38;
  *(a1 + 64) = v36;
  *(a1 + 72) = v21;
  *(a1 + 80) = v33;
  *(a1 + 88) = v35;
}

uint64_t sub_1D5FDE158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B5B2A0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService), *(a1 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 24));
  v9 = PuzzleResourceSource.identifier.getter();
  v10 = (*(*(v8 + 8) + 56))(v9);

  if (v10)
  {
    v11 = [v10 firstCompletedDate];
    if (v11)
    {
      v12 = v11;
      sub_1D72588BC();

      v13 = sub_1D725891C();
      (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
    }

    else
    {
      v17 = sub_1D725891C();
      (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    }

    v18 = [v10 firstPlayDuration];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 integerValue];
    }

    else
    {
      v20 = 0;
    }

    v21 = [v10 bestScore];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 integerValue];
    }

    else
    {
      v23 = 0;
    }

    sub_1D5FE3EB4(v7, a2, sub_1D5B5B2A0);
    v24 = type metadata accessor for PuzzleHistoryInfo(0);
    v25 = a2 + *(v24 + 20);
    *v25 = v20;
    *(v25 + 8) = v19 == 0;
    v26 = a2 + *(v24 + 24);
    *v26 = v23;
    *(v26 + 8) = v22 == 0;
    return (*(*(v24 - 8) + 56))(a2, 0, 1, v24);
  }

  else
  {
    v14 = type metadata accessor for PuzzleHistoryInfo(0);
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }
}

uint64_t sub_1D5FDE448()
{
  v1[3] = v0;
  v2 = sub_1D7263F5C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_1D5FE3F1C(0);
  v1[7] = swift_task_alloc();
  v3 = sub_1D7263F4C();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5FDE59C, 0, 0);
}

uint64_t sub_1D5FDE59C()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle);
  v0[12] = v1;
  if (!v1)
  {
LABEL_4:

    v2 = v0[1];

    return v2(0);
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  if ((FCPuzzleProviding.puzzleTypeTraits.getter() & 0x20000) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];
  v9 = v0[3];
  sub_1D7263F2C();
  sub_1D7263F3C();
  v10 = *(v7 + 8);
  v0[13] = v10;
  v0[14] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v6);
  (*(v7 + 16))(v8, v4, v6);
  (*(v7 + 56))(v8, 0, 1, v6);
  sub_1D726496C();
  v11 = swift_task_alloc();
  v0[15] = v11;
  *(v11 + 16) = v9;
  v12 = swift_task_alloc();
  v0[16] = v12;
  sub_1D5FE4258(0);
  v14 = v13;
  v15 = sub_1D5FE3FFC(&qword_1EDF04298, 255, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  *v12 = v0;
  v12[1] = sub_1D5FDE814;
  v17 = v0[6];
  v16 = v0[7];
  v18 = v0[4];

  return MEMORY[0x1EEE44790](v0 + 2, v16, v17, &unk_1D728D0C8, v11, v18, v14, v15);
}

uint64_t sub_1D5FDE814()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  sub_1D5FE40F0(v2, sub_1D5FE3F1C);
  if (v0)
  {
    v6 = sub_1D5FDEA84;
  }

  else
  {
    v6 = sub_1D5FDE9D8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D5FDE9D8()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  swift_unknownObjectRelease();
  v1(v2, v3);
  v4 = v0[2];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1D5FDEA84()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  swift_unknownObjectRelease();
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

unint64_t sub_1D5FDEB3C(void *a1)
{
  v2 = v1;
  if (![a1 isPaid])
  {
    return 1;
  }

  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 24);
  v5 = *(v2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService), v4);
  v6 = [a1 identifier];
  v7 = sub_1D726207C();
  v9 = v8;

  LOBYTE(v6) = (*(*(v5 + 8) + 8))(v7, v9, v4);

  if (v6)
  {
    return 1;
  }

  v11 = [*(v2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v11, v11 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (*(&v18 + 1))
  {
    sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v12 = v16;
      v13 = [v16 integerValue];
      if (v13 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_1D5EBD03C(&v19);
  }

  v12 = 0;
  v13 = 0;
LABEL_13:
  if (objc_getAssociatedObject(v11, ~v13))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (*(&v18 + 1))
  {
    sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v14 = v16;
      v15 = [v14 integerValue];

      return (v15 ^ v13) & 1;
    }
  }

  else
  {
    sub_1D5EBD03C(&v19);
  }

LABEL_20:

  return v13 & 1;
}

void *sub_1D5FDEDB8()
{
  result = *(v0 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle);
  if (result)
  {
    v2 = [objc_msgSend(result puzzleType)];
    swift_unknownObjectRelease();
    if (v2)
    {
      sub_1D5B5534C(0, &qword_1EDF043B8, &protocolRef_FCPuzzleNavigationBarThemeProviding);
      v3 = sub_1D7261D3C();

      v4 = 0;
      v5 = 1 << *(v3 + 32);
      v6 = -1;
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      v7 = v6 & *(v3 + 64);
      v8 = (v5 + 63) >> 6;
      v9 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v10 = v4;
        if (!v7)
        {
          break;
        }

LABEL_10:
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v12 = v11 | (v4 << 6);
        v13 = (*(v3 + 48) + 16 * v12);
        v15 = *v13;
        v14 = v13[1];
        v16 = *(*(v3 + 56) + 8 * v12);

        v17 = [swift_unknownObjectRetain() navigationBarBackgroundColor];
        if (v17)
        {
          v62 = v9;
          v18 = v17;
          v19 = [v17 hex];

          v20 = sub_1D726207C();
          v63 = v21;
          v64 = v20;

          v68 = MEMORY[0x1E69E6158];
          *&v67 = v15;
          *(&v67 + 1) = v14;
          sub_1D5B7C390(&v67, v66);
          v22 = MEMORY[0x1E69E7CC8];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v25 = sub_1D5B69D90(0x6E6564496B6E6172, 0xEE00726569666974);
          v26 = v22[2];
          v27 = (v24 & 1) == 0;
          v28 = v26 + v27;
          if (__OFADD__(v26, v27))
          {
            goto LABEL_43;
          }

          v29 = v24;
          if (v22[3] >= v28)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5C06BE0();
            }
          }

          else
          {
            sub_1D5BAFF10(v28, isUniquelyReferenced_nonNull_native);
            v30 = sub_1D5B69D90(0x6E6564496B6E6172, 0xEE00726569666974);
            if ((v29 & 1) != (v31 & 1))
            {
              goto LABEL_47;
            }

            v25 = v30;
          }

          if (v29)
          {
            v32 = (v22[7] + 32 * v25);
            __swift_destroy_boxed_opaque_existential_1(v32);
            sub_1D5B7C390(v66, v32);
          }

          else
          {
            v22[(v25 >> 6) + 8] |= 1 << v25;
            v33 = (v22[6] + 16 * v25);
            strcpy(v33, "rankIdentifier");
            v33[15] = -18;
            sub_1D5B7C390(v66, (v22[7] + 32 * v25));
            v34 = v22[2];
            v35 = __OFADD__(v34, 1);
            v36 = v34 + 1;
            if (v35)
            {
              goto LABEL_45;
            }

            v22[2] = v36;
          }

          v68 = MEMORY[0x1E69E6158];
          *&v67 = v64;
          *(&v67 + 1) = v63;
          sub_1D5B7C390(&v67, v66);
          v37 = swift_isUniquelyReferenced_nonNull_native();
          v38 = sub_1D5B69D90(0xD00000000000001CLL, 0x80000001D73C5A70);
          v40 = v22[2];
          v41 = (v39 & 1) == 0;
          v35 = __OFADD__(v40, v41);
          v42 = v40 + v41;
          if (v35)
          {
            goto LABEL_44;
          }

          v43 = v39;
          if (v22[3] >= v42)
          {
            if ((v37 & 1) == 0)
            {
              v60 = v38;
              sub_1D5C06BE0();
              v38 = v60;
            }
          }

          else
          {
            sub_1D5BAFF10(v42, v37);
            v38 = sub_1D5B69D90(0xD00000000000001CLL, 0x80000001D73C5A70);
            if ((v43 & 1) != (v44 & 1))
            {
              goto LABEL_47;
            }
          }

          if (v43)
          {
            v45 = (v22[7] + 32 * v38);
            __swift_destroy_boxed_opaque_existential_1(v45);
            sub_1D5B7C390(v66, v45);
          }

          else
          {
            v22[(v38 >> 6) + 8] |= 1 << v38;
            v46 = (v22[6] + 16 * v38);
            *v46 = 0xD00000000000001CLL;
            v46[1] = 0x80000001D73C5A70;
            sub_1D5B7C390(v66, (v22[7] + 32 * v38));
            v47 = v22[2];
            v35 = __OFADD__(v47, 1);
            v48 = v47 + 1;
            if (v35)
            {
              goto LABEL_46;
            }

            v22[2] = v48;
          }

          v49 = [v16 navigationBarBackgroundDarkModeColor];
          if (v49)
          {
            v50 = v49;
            v51 = [v49 hex];

            v52 = sub_1D726207C();
            v54 = v53;

            v68 = MEMORY[0x1E69E6158];
            *&v67 = v52;
            *(&v67 + 1) = v54;
            sub_1D5B7C390(&v67, v66);
            v55 = swift_isUniquelyReferenced_nonNull_native();
            sub_1D5BAFB24(v66, 0xD000000000000024, 0x80000001D73C5A90, v55);
          }

          v56 = v62;
          v65 = v22;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = sub_1D69916B4(0, v62[2] + 1, 1, v62);
          }

          v58 = v56[2];
          v57 = v56[3];
          v59 = v56;
          if (v58 >= v57 >> 1)
          {
            v59 = sub_1D69916B4((v57 > 1), v58 + 1, 1, v56);
          }

          swift_unknownObjectRelease();
          v59[2] = v58 + 1;
          v9 = v59;
          v59[v58 + 4] = v65;
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      while (1)
      {
        v4 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v4 >= v8)
        {

          sub_1D5BB0DB0();
          v61 = sub_1D72626BC();

          return v61;
        }

        v7 = *(v3 + 64 + 8 * v4);
        ++v10;
        if (v7)
        {
          goto LABEL_10;
        }
      }

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
      result = sub_1D726493C();
      __break(1u);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1D5FDF3D4()
{
  v1 = v0;
  v2 = sub_1D725891C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle);
  if (v7)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    if ((FCPuzzleProviding.puzzleTypeTraits.getter() & 2) != 0 || (v8 = [objc_msgSend(v7 puzzleType)], swift_unknownObjectRelease(), !v8))
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v54 = sub_1D726267C();

      v9 = [v7 identifier];
      v10 = sub_1D726207C();
      v53 = v11;

      v51 = v7;
      v12 = [objc_msgSend(v7 puzzleType)];
      swift_unknownObjectRelease();
      v13 = sub_1D726207C();
      v15 = v14;

      v16 = *(v1 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 24);
      v17 = *(v1 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 32);
      v48 = (v1 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService), v16);
      sub_1D72587BC();
      v18 = *(v17 + 56);
      v49 = v13;
      v50 = v15;
      v19 = v18(v13, v15, v6, v16, v17);
      (*(v3 + 8))(v6, v2);
      v20 = sub_1D5B86020(v19);
      v21 = v54;

      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = 0;
        v24 = v21 + 32;
        v25 = v20 + 56;
        v52 = MEMORY[0x1E69E7CC0];
        v26 = v53;
        while (1)
        {
          while (1)
          {
            if (v23 >= *(v21 + 16))
            {
              __break(1u);
              return;
            }

            v27 = (v24 + 16 * v23);
            v28 = *v27;
            v29 = v27[1];
            ++v23;
            v30 = *v27 == v10 && v29 == v26;
            if (!v30 && (sub_1D72646CC() & 1) == 0)
            {
              break;
            }

LABEL_7:
            if (v23 == v22)
            {
              goto LABEL_33;
            }
          }

          if (*(v20 + 16))
          {
            sub_1D7264A0C();

            sub_1D72621EC();
            v31 = sub_1D7264A5C();
            v32 = -1 << *(v20 + 32);
            v33 = v31 & ~v32;
            if ((*(v25 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
            {
              v34 = ~v32;
              while (1)
              {
                v35 = (*(v20 + 48) + 16 * v33);
                v36 = *v35 == v28 && v35[1] == v29;
                if (v36 || (sub_1D72646CC() & 1) != 0)
                {
                  break;
                }

                v33 = (v33 + 1) & v34;
                if (((*(v25 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
                {
                  goto LABEL_23;
                }
              }

              v26 = v53;
              v21 = v54;
              goto LABEL_7;
            }
          }

          else
          {
          }

LABEL_23:
          v37 = v52;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = v37;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D5BFC364(0, *(v37 + 16) + 1, 1);
            v37 = v55;
          }

          v21 = v54;
          v39 = v37;
          v40 = *(v37 + 16);
          v41 = *(v39 + 24);
          v42 = v40 + 1;
          if (v40 >= v41 >> 1)
          {
            v52 = v40 + 1;
            sub_1D5BFC364((v41 > 1), v40 + 1, 1);
            v42 = v52;
            v21 = v54;
            v39 = v55;
          }

          *(v39 + 16) = v42;
          v52 = v39;
          v43 = v39 + 16 * v40;
          *(v43 + 32) = v28;
          *(v43 + 40) = v29;
          v26 = v53;
          if (v23 == v22)
          {
            goto LABEL_33;
          }
        }
      }

      v52 = MEMORY[0x1E69E7CC0];
      v26 = v53;
LABEL_33:

      if (*(v52 + 16))
      {

        swift_unknownObjectRelease();
      }

      else
      {

        v44 = v48[3];
        v45 = v48[4];
        __swift_project_boxed_opaque_existential_1(v48, v44);
        sub_1D5B5A5C4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1D7273AE0;
        *(v46 + 32) = v10;
        *(v46 + 40) = v26;
        (*(v45 + 80))(v49, v50, v46, v44, v45);
        swift_unknownObjectRelease();
      }
    }
  }
}

void *sub_1D5FDF918()
{
  result = *(v0 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle);
  if (result)
  {
    v2 = [result puzzleType];
    v3 = [objc_msgSend(*(v0 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_appConfigurationManager) appConfiguration)];
    swift_unknownObjectRelease();
    v4 = [v3 puzzleRanksByPuzzleTypeID];

    if (v4)
    {
      sub_1D5FE4150(0, &qword_1EDF04A60, &qword_1EDF04670, 0x1E69B5520, MEMORY[0x1E69E62F8]);
      v5 = sub_1D7261D3C();

      v6 = [v2 identifier];
      v7 = sub_1D726207C();
      v9 = v8;

      if (*(v5 + 16))
      {
        v10 = sub_1D5B69D90(v7, v9);
        v12 = v11;

        if (v12)
        {
          v13 = *(*(v5 + 56) + 8 * v10);

          if (v13 >> 62)
          {
LABEL_52:
            v14 = sub_1D7263BFC();
            if (v14)
            {
              goto LABEL_7;
            }
          }

          else
          {
            v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v14)
            {
LABEL_7:
              v15 = 0;
              v16 = MEMORY[0x1E69E7CC0];
              v17 = MEMORY[0x1E69E7CC8];
              do
              {
                if ((v13 & 0xC000000000000001) != 0)
                {
                  v18 = MEMORY[0x1DA6FB460](v15, v13);
                }

                else
                {
                  if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_51;
                  }

                  v18 = *(v13 + 8 * v15 + 32);
                }

                v19 = v18;
                if (__OFADD__(v15, 1))
                {
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
                  goto LABEL_52;
                }

                v65 = v15 + 1;
                v20 = [v18 identifier];
                v21 = sub_1D726207C();
                v23 = v22;

                v68 = MEMORY[0x1E69E6158];
                *&v67 = v21;
                *(&v67 + 1) = v23;
                sub_1D5B7C390(&v67, v66);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v26 = sub_1D5B69D90(0x696669746E656469, 0xEA00000000007265);
                v27 = v17[2];
                v28 = (v25 & 1) == 0;
                v29 = v27 + v28;
                if (__OFADD__(v27, v28))
                {
                  goto LABEL_47;
                }

                v30 = v25;
                if (v17[3] >= v29)
                {
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    v33 = v17;
                    if (v25)
                    {
                      goto LABEL_21;
                    }
                  }

                  else
                  {
                    sub_1D5C06BE0();
                    v33 = v17;
                    if (v30)
                    {
                      goto LABEL_21;
                    }
                  }
                }

                else
                {
                  sub_1D5BAFF10(v29, isUniquelyReferenced_nonNull_native);
                  v31 = sub_1D5B69D90(0x696669746E656469, 0xEA00000000007265);
                  if ((v30 & 1) != (v32 & 1))
                  {
                    goto LABEL_54;
                  }

                  v26 = v31;
                  v33 = v17;
                  if (v30)
                  {
LABEL_21:
                    v38 = (v33[7] + 32 * v26);
                    __swift_destroy_boxed_opaque_existential_1(v38);
                    sub_1D5B7C390(v66, v38);
                    goto LABEL_22;
                  }
                }

                v33[(v26 >> 6) + 8] |= 1 << v26;
                v34 = (v33[6] + 16 * v26);
                *v34 = 0x696669746E656469;
                v34[1] = 0xEA00000000007265;
                sub_1D5B7C390(v66, (v33[7] + 32 * v26));
                v35 = v33[2];
                v36 = __OFADD__(v35, 1);
                v37 = v35 + 1;
                if (v36)
                {
                  goto LABEL_49;
                }

                v33[2] = v37;
LABEL_22:
                v39 = [v19 name];
                v40 = sub_1D726207C();
                v42 = v41;

                v68 = MEMORY[0x1E69E6158];
                *&v67 = v40;
                *(&v67 + 1) = v42;
                sub_1D5B7C390(&v67, v66);
                v43 = swift_isUniquelyReferenced_nonNull_native();
                v44 = sub_1D5B69D90(1701667182, 0xE400000000000000);
                v46 = v33[2];
                v47 = (v45 & 1) == 0;
                v36 = __OFADD__(v46, v47);
                v48 = v46 + v47;
                if (v36)
                {
                  goto LABEL_48;
                }

                v49 = v45;
                if (v33[3] < v48)
                {
                  sub_1D5BAFF10(v48, v43);
                  v44 = sub_1D5B69D90(1701667182, 0xE400000000000000);
                  if ((v49 & 1) != (v50 & 1))
                  {
LABEL_54:
                    result = sub_1D726493C();
                    __break(1u);
                    return result;
                  }

LABEL_27:
                  if (v49)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_32;
                }

                if (v43)
                {
                  goto LABEL_27;
                }

                v52 = v44;
                sub_1D5C06BE0();
                v44 = v52;
                if (v49)
                {
LABEL_28:
                  v51 = (v33[7] + 32 * v44);
                  __swift_destroy_boxed_opaque_existential_1(v51);
                  sub_1D5B7C390(v66, v51);
                  goto LABEL_34;
                }

LABEL_32:
                v33[(v44 >> 6) + 8] |= 1 << v44;
                v53 = (v33[6] + 16 * v44);
                *v53 = 1701667182;
                v53[1] = 0xE400000000000000;
                sub_1D5B7C390(v66, (v33[7] + 32 * v44));
                v54 = v33[2];
                v36 = __OFADD__(v54, 1);
                v55 = v54 + 1;
                if (v36)
                {
                  goto LABEL_50;
                }

                v33[2] = v55;
LABEL_34:
                v56 = [v19 icon];
                if (v56)
                {
                  v57 = v56;
                  v58 = sub_1D726207C();
                  v60 = v59;

                  v68 = MEMORY[0x1E69E6158];
                  *&v67 = v58;
                  *(&v67 + 1) = v60;
                  sub_1D5B7C390(&v67, v66);
                  v61 = swift_isUniquelyReferenced_nonNull_native();
                  sub_1D5BAFB24(v66, 1852793705, 0xE400000000000000, v61);
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v16 = sub_1D69916B4(0, v16[2] + 1, 1, v16);
                }

                v63 = v16[2];
                v62 = v16[3];
                if (v63 >= v62 >> 1)
                {
                  v16 = sub_1D69916B4((v62 > 1), v63 + 1, 1, v16);
                }

                v16[2] = v63 + 1;
                v16[v63 + 4] = v33;
                ++v15;
              }

              while (v65 != v14);
            }
          }

          sub_1D5BB0DB0();
          v64 = sub_1D72626BC();

          swift_unknownObjectRelease();
          return v64;
        }
      }

      else
      {
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t sub_1D5FDFFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5FDFFF0, 0, 0);
}

uint64_t sub_1D5FDFFF0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v2;
  swift_unknownObjectRetain();
  v5 = swift_task_alloc();
  v0[6] = v5;
  sub_1D5FE4648(0, &unk_1EC882150, sub_1D5FE4420, MEMORY[0x1E69E6720]);
  v7 = v6;
  *v5 = v0;
  v5[1] = sub_1D5FE0118;
  v8 = v0[2];

  return MEMORY[0x1EEE44AD8](v8, &unk_1D728D100, v3, v7);
}

uint64_t sub_1D5FE0118()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E6E770, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D5FE0254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5FE0278, 0, 0);
}

uint64_t sub_1D5FE0278()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleStatsService;
  v0[5] = OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleStatsService;
  v4 = *(v1 + v2 + 24);
  v3 = *(v1 + v2 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + v2), v4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1D5FE0340;

  return PuzzleStatsServiceType.updateStats()(v4, v3);
}

uint64_t sub_1D5FE0340()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5FE043C, 0, 0);
}

uint64_t sub_1D5FE043C()
{
  v1 = (v0[3] + v0[5]);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1D5FE0570;
  v5 = v0[4];

  return v7(v5, v2, v3);
}

uint64_t sub_1D5FE0570(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D5D09DE8, 0, 0);
}

uint64_t sub_1D5FE0670(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1D7263F5C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_1D5FE3F1C(0);
  v2[9] = swift_task_alloc();
  v4 = sub_1D7263F4C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5FE07C4, 0, 0);
}

uint64_t sub_1D5FE07C4()
{
  v2 = v0[6].i64[0];
  v1 = v0[6].i64[1];
  v3 = v0[5].i64[0];
  v4 = v0[5].i64[1];
  v5 = v0[4].i64[1];
  v16 = v0[2];
  sub_1D7263F2C();
  sub_1D7263F3C();
  v6 = *(v4 + 8);
  v0[7].i64[0] = v6;
  v0[7].i64[1] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  (*(v4 + 16))(v5, v1, v3);
  (*(v4 + 56))(v5, 0, 1, v3);
  sub_1D726496C();
  v7 = swift_task_alloc();
  v0[8].i64[0] = v7;
  v7[1] = vextq_s8(v16, v16, 8uLL);
  v8 = swift_task_alloc();
  v0[8].i64[1] = v8;
  sub_1D5B5A5C4(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v10 = v9;
  v11 = sub_1D5FE3FFC(&qword_1EDF04298, 255, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  *v8 = v0;
  v8[1] = sub_1D5FE09C4;
  v13 = v0[4].i64[0];
  v12 = v0[4].i64[1];
  v14 = v0[3].i64[0];

  return MEMORY[0x1EEE44790](&v0[1], v12, v13, &unk_1D728D0A8, v7, v14, v10, v11);
}

uint64_t sub_1D5FE09C4()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 144) = v0;

  (*(v4 + 8))(v3, v5);
  sub_1D5FE40F0(v2, sub_1D5FE3F1C);
  if (v0)
  {
    v6 = sub_1D5FE0C38;
  }

  else
  {
    v6 = sub_1D5FE0B88;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D5FE0B88()
{
  (*(v0 + 112))(*(v0 + 104), *(v0 + 80));
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1D5FE0C38()
{
  (*(v0 + 112))(*(v0 + 104), *(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5FE0CD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v3 = sub_1D72583CC();
  v117 = *(v3 - 8);
  v118 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v116 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  v128 = v6;
  v129 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v114 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v120 = &v108 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v119 = &v108 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v125 = &v108 - v18;
  v19 = sub_1D7258C0C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5FE4648(0, &qword_1EDF43B40, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v108 - v26;
  v28 = sub_1D7258ABC();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D7258C2C();
  v121 = *(v33 - 8);
  v122 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D725891C();
  v123 = *(v37 - 8);
  v124 = v37;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v108 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v127 = a1;
  v41 = [a1 publishDate];
  if (v41)
  {
    v42 = v41;
    sub_1D72588BC();

    (*(v29 + 104))(v32, *MEMORY[0x1E6969868], v28);
    sub_1D7258ACC();
    (*(v29 + 8))(v32, v28);
    sub_1D7258CBC();
    v43 = sub_1D7258CFC();
    result = (*(*(v43 - 8) + 48))(v27, 1, v43);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1D7258BFC();
      (*(v20 + 104))(v23, *MEMORY[0x1E6969AB0], v19);
      v113 = v36;
      v45 = sub_1D7258C1C();
      (*(v20 + 8))(v23, v19);
      v46 = v127;
      v47 = [v127 difficulty];
      v48 = [objc_opt_self() defaultManager];
      v49 = [v48 URLsForDirectory:9 inDomains:1];
      v50 = v128;
      v51 = sub_1D726267C();

      if (*(v51 + 16))
      {
        v110 = v45;
        v108 = v47;
        v112 = v48;
        v111 = v40;
        v52 = v51 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
        v109 = *(v129 + 16);
        v109(v125, v52, v50);

        sub_1D5B5A5C4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_1D7279970;
        *(v53 + 32) = 0x7954656C7A7A7570;
        *(v53 + 40) = 0xEA00000000006570;
        v54 = [objc_msgSend(v46 puzzleType)];
        swift_unknownObjectRelease();
        v55 = sub_1D726207C();
        v57 = v56;

        *(v53 + 48) = v55;
        *(v53 + 56) = v57;
        *(v53 + 64) = 0x69616E626D756874;
        *(v53 + 72) = 0xEA0000000000736CLL;
        v59 = v116;
        v58 = v117;
        v60 = v118;
        (*(v117 + 104))(v116, *MEMORY[0x1E6968F70], v118);
        sub_1D5BF4D9C();
        v61 = v119;
        sub_1D725857C();

        (*(v58 + 8))(v59, v60);
        if ((FCPuzzleProviding.puzzleTypeTraits.getter() & 0x8000) != 0)
        {
          v131 = 115;
          v132 = 0xE100000000000000;
          v130 = v110;
          v80 = sub_1D72644BC();
          MEMORY[0x1DA6F9910](v80);

          MEMORY[0x1DA6F9910](95, 0xE100000000000000);
          v130 = v108;
        }

        else
        {
          v131 = 115;
          v132 = 0xE100000000000000;
          v130 = v110;
        }

        v81 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v81);

        MEMORY[0x1DA6F9910](1735290926, 0xE400000000000000);
        v82 = v113;
        v83 = v114;
        v84 = v120;
        sub_1D725848C();

        sub_1D725851C();
        v85 = sub_1D726203C();

        v86 = v112;
        v87 = [v112 fileExistsAtPath_];

        v88 = v111;
        v89 = v128;
        if (v87)
        {

          v90 = *(v129 + 8);
          v90(v61, v89);
          v90(v125, v89);
          (*(v121 + 8))(v82, v122);
          (*(v123 + 8))(v88, v124);
          v91 = v126;
          (*(v129 + 32))(v126, v84, v89);
          v92 = *(v129 + 56);
          v93 = v91;
          v94 = 0;
        }

        else
        {
          if (qword_1EDF3B838 != -1)
          {
            swift_once();
          }

          v95 = sub_1D725C42C();
          __swift_project_value_buffer(v95, qword_1EDFFCFA8);
          v109(v83, v84, v89);
          v96 = sub_1D725C3FC();
          v97 = sub_1D7262EDC();
          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            v131 = v99;
            *v98 = 136315138;
            v100 = sub_1D725852C();
            v101 = v83;
            v103 = v102;
            v104 = v61;
            v105 = *(v129 + 8);
            v105(v101, v128);
            v106 = sub_1D5BC5100(v100, v103, &v131);

            *(v98 + 4) = v106;
            _os_log_impl(&dword_1D5B42000, v96, v97, "PuzzleDataManager: Cannot fetch thumbnailSmallUrl as file does not exist %s", v98, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v99);
            MEMORY[0x1DA6FD500](v99, -1, -1);
            MEMORY[0x1DA6FD500](v98, -1, -1);

            v105(v120, v128);
            v105(v104, v128);
            v105(v125, v128);
            v89 = v128;
            (*(v121 + 8))(v113, v122);
          }

          else
          {

            v107 = *(v129 + 8);
            v107(v83, v89);
            v107(v84, v89);
            v107(v61, v89);
            v107(v125, v89);
            (*(v121 + 8))(v82, v122);
          }

          (*(v123 + 8))(v88, v124);
          v92 = *(v129 + 56);
          v93 = v126;
          v94 = 1;
        }

        return v92(v93, v94, 1, v89);
      }

      else
      {

        if (qword_1EDF3B838 != -1)
        {
          swift_once();
        }

        v76 = sub_1D725C42C();
        __swift_project_value_buffer(v76, qword_1EDFFCFA8);
        v77 = sub_1D725C3FC();
        v78 = sub_1D7262EBC();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          _os_log_impl(&dword_1D5B42000, v77, v78, "PuzzleDataManager: Cannot fetch thumbnailSmallUrl as documentsURL is nil", v79, 2u);
          MEMORY[0x1DA6FD500](v79, -1, -1);
        }

        (*(v121 + 8))(v113, v122);
        (*(v123 + 8))(v40, v124);
        return (*(v129 + 56))(v126, 1, 1, v50);
      }
    }
  }

  else
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v62 = sub_1D725C42C();
    __swift_project_value_buffer(v62, qword_1EDFFCFA8);
    v63 = v127;
    swift_unknownObjectRetain();
    v64 = sub_1D725C3FC();
    v65 = sub_1D7262EDC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v131 = v67;
      *v66 = 136315138;
      v68 = [v63 identifier];
      v69 = sub_1D726207C();
      v71 = v70;

      v72 = sub_1D5BC5100(v69, v71, &v131);

      *(v66 + 4) = v72;
      _os_log_impl(&dword_1D5B42000, v64, v65, "PuzzleDataManager: Cannot fetch thumbnailSmallUrl as publishDate is nil %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x1DA6FD500](v67, -1, -1);
      MEMORY[0x1DA6FD500](v66, -1, -1);
    }

    v73 = v128;
    v74 = *(v129 + 56);
    v75 = v126;

    return v74(v75, 1, 1, v73);
  }

  return result;
}

uint64_t sub_1D5FE1B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5FE1B30, 0, 0);
}

uint64_t sub_1D5FE1B30()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v2;
  swift_unknownObjectRetain();
  v5 = swift_task_alloc();
  v0[6] = v5;
  sub_1D5B5A5C4(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v7 = v6;
  *v5 = v0;
  v5[1] = sub_1D5FE1C4C;
  v8 = v0[2];

  return MEMORY[0x1EEE44AD8](v8, &unk_1D728D0B8, v3, v7);
}

uint64_t sub_1D5FE1C4C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5FE4814, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D5FE1D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5FE1DAC, 0, 0);
}

uint64_t sub_1D5FE1DAC()
{
  v1 = (v0[3] + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleService);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 144) + **(v3 + 144));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1D5FE1EE4;
  v5 = v0[4];

  return v7(v5, v2, v3);
}

uint64_t sub_1D5FE1EE4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D5FE2040, 0, 0);
  }
}

uint64_t sub_1D5FE2068(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5FE2088, 0, 0);
}

uint64_t sub_1D5FE2088()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  sub_1D5FE4258(0);
  v6 = v5;
  *v4 = v0;
  v4[1] = sub_1D5FE2178;
  v7 = v0[2];

  return MEMORY[0x1EEE44AD8](v7, &unk_1D728D0D8, v2, v6);
}

uint64_t sub_1D5FE2178()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5FE22B4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D5FE22B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5FE2318(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5FE2338, 0, 0);
}

uint64_t sub_1D5FE2338()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle);
  if (v1 && (v2 = [v1 relatedPuzzleIDs]) != 0)
  {
    v3 = *(v0 + 24);
    v4 = v2;
    v5 = sub_1D726267C();
    *(v0 + 32) = v5;

    v6 = (v3 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleService);
    v7 = *(v3 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleService + 24);
    v8 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v12 = (*(v8 + 48) + **(v8 + 48));
    v9 = swift_task_alloc();
    *(v0 + 40) = v9;
    *v9 = v0;
    v9[1] = sub_1D5FE2500;

    return v12(v5, v7, v8);
  }

  else
  {
    **(v0 + 16) = 0;
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1D5FE2500(uint64_t a1)
{
  *(*v2 + 48) = a1;

  if (v1)
  {

    v3 = sub_1D5FE28E8;
  }

  else
  {

    v3 = sub_1D5FE2650;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

char *sub_1D5FE2650()
{
  v37 = v0;
  v1 = *(v0 + 48);
  if (v1 >> 62)
  {
    v2 = sub_1D7263BFC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:

    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v35 = MEMORY[0x1E69E7CC0];
  result = sub_1D69985A4(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v35;
  v6 = (*(v0 + 24) + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService);
  v32 = v0;
  v33 = v1 & 0xC000000000000001;
  v31 = *(v0 + 48) + 32;
  v34 = v2;
  do
  {
    if (v33)
    {
      v7 = MEMORY[0x1DA6FB460](v4, *(v32 + 48));
    }

    else
    {
      v7 = *(v31 + 8 * v4);
      swift_unknownObjectRetain();
    }

    v9 = v6[3];
    v8 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v9);
    v10 = [v7 identifier];
    v11 = sub_1D726207C();
    v13 = v12;

    v14 = (*(*(v8 + 8) + 56))(v11, v13, v9);

    if (v14)
    {
      sub_1D5FDDE24(v36);

      v15 = v36[0];
      v16 = v36[1];
      v17 = v36[2];
      v18 = v36[3];
      v19 = v36[4];
      v20 = v36[5];
    }

    else
    {
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = xmmword_1D728CF30;
      v20 = 0uLL;
    }

    v22 = *(v35 + 16);
    v21 = *(v35 + 24);
    if (v22 >= v21 >> 1)
    {
      v29 = v16;
      v30 = v15;
      v27 = v18;
      v28 = v17;
      v25 = v20;
      v26 = v19;
      sub_1D69985A4((v21 > 1), v22 + 1, 1);
      v20 = v25;
      v19 = v26;
      v18 = v27;
      v17 = v28;
      v16 = v29;
      v15 = v30;
    }

    *(v35 + 16) = v22 + 1;
    v23 = v35 + 104 * v22;
    *(v23 + 32) = v7;
    ++v4;
    *(v23 + 40) = v15;
    *(v23 + 56) = v16;
    *(v23 + 72) = v17;
    *(v23 + 88) = v18;
    *(v23 + 104) = v19;
    *(v23 + 120) = v20;
  }

  while (v34 != v4);
  v0 = v32;

LABEL_17:
  **(v0 + 16) = v5;
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1D5FE2A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();

  return sub_1D725964C();
}

void *sub_1D5FE2A80()
{
  swift_getObjectType();

  return sub_1D725965C();
}

uint64_t sub_1D5FE2AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454D8](a1, a2, a3, a4, ObjectType, a8);
}

uint64_t sub_1D5FE2B70(uint64_t a1, _OWORD *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v7 = a2[3];
      v10[2] = a2[2];
      v10[3] = v7;
      v8 = a2[5];
      v10[4] = a2[4];
      v10[5] = v8;
      v9 = a2[1];
      v10[0] = *a2;
      v10[1] = v9;
      (*(v5 + 40))(v10, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D5FE2C40()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (!*(&v19 + 1))
  {
    sub_1D5EBD03C(&v20);
    goto LABEL_9;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v4 = 0;
    goto LABEL_10;
  }

  v2 = v17;
  v3 = [v17 integerValue];
  if (v3 == -1)
  {

    return 1;
  }

  v4 = v3;
LABEL_10:
  if (objc_getAssociatedObject(v1, ~v4))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (!*(&v19 + 1))
  {
    sub_1D5EBD03C(&v20);
LABEL_18:

    if (v4)
    {
      return 1;
    }

    goto LABEL_19;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v5 = v17;
  v6 = [v5 integerValue];

  if ((v6 ^ v4))
  {
    return 1;
  }

LABEL_19:
  v7 = *(v0 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle);
  if (!v7)
  {
    return 0;
  }

  if ([swift_unknownObjectRetain() isPaid])
  {
    v8 = v0;
    v9 = *(v0 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 24);
    v10 = *(v0 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService), v9);
    v11 = [v7 identifier];
    v12 = sub_1D726207C();
    v14 = v13;

    v15 = (*(*(v10 + 8) + 8))(v12, v14, v9);
    swift_unknownObjectRelease();

    if (v15)
    {
      return 1;
    }

    return *(v8 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_configuration);
  }

  else
  {
    swift_unknownObjectRelease();
    return 1;
  }
}

uint64_t sub_1D5FE2F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = type metadata accessor for PuzzleResourceSource(0);
  v5[8] = swift_task_alloc();
  type metadata accessor for PuzzleData(0);
  v5[9] = swift_task_alloc();
  sub_1D726290C();
  v5[10] = sub_1D72628FC();
  v7 = sub_1D726285C();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D5FE2FFC, v7, v6);
}

uint64_t sub_1D5FE2FFC()
{
  v1 = *(v0 + 64);
  v2 = [*(v0 + 48) identifier];
  v3 = sub_1D726207C();
  v5 = v4;

  *v1 = v3;
  v1[1] = v5;
  swift_storeEnumTagMultiPayload();
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = -16777216;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1D5FE3100;
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);

  return sub_1D5FD813C(v7, v8, v0 + 16);
}

uint64_t sub_1D5FE3100()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  *(*v1 + 112) = v0;

  sub_1D5FE40F0(v3, type metadata accessor for PuzzleResourceSource);
  v4 = *(v2 + 88);
  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_1D5FE3308;
  }

  else
  {
    v6 = sub_1D5FE324C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D5FE324C()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1D5FE3A94(*(v0 + 72), Strong);
    swift_unknownObjectRelease();
  }

  sub_1D5FE40F0(*(v0 + 72), type metadata accessor for PuzzleData);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D5FE3308()
{
  v22 = v0;

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_1D725C42C();
  __swift_project_value_buffer(v2, qword_1EDFFCFA8);
  swift_unknownObjectRetain();
  v3 = v1;
  v4 = sub_1D725C3FC();
  v5 = sub_1D7262EBC();
  swift_unknownObjectRelease();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    v12 = [v8 identifier];
    v13 = sub_1D726207C();
    v15 = v14;

    v16 = sub_1D5BC5100(v13, v15, &v21);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    v17 = v7;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v18;
    *v10 = v18;
    _os_log_impl(&dword_1D5B42000, v4, v5, "PuzzleDataManager: Error fetching puzzle data for puzzleID=%s error=%@", v9, 0x16u);
    sub_1D5FE45C0(v10);
    MEMORY[0x1DA6FD500](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1DA6FD500](v11, -1, -1);
    MEMORY[0x1DA6FD500](v9, -1, -1);
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

void sub_1D5FE35F4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle);
  if (!v3)
  {
    return;
  }

  v5 = [v3 identifier];
  v6 = sub_1D726207C();
  v8 = v7;

  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = a2 + 48;
    v12 = MEMORY[0x1E69E7CC0];
    v31 = a2 + 48;
    do
    {
      v32 = v12;
      v13 = (v11 + 24 * v10);
      while (1)
      {
        if (v10 >= v9)
        {
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        if (__OFADD__(v10, 1))
        {
          goto LABEL_36;
        }

        v34 = v10 + 1;
        v14 = v9;
        v15 = *(v13 - 1);
        v16 = *v13;
        v33 = *(v13 - 2);
        v17 = v33;
        v18 = [swift_unknownObjectRetain() identifier];
        v19 = v6;
        v20 = v8;
        v21 = sub_1D726207C();
        v23 = v22;

        v24 = v21;
        v8 = v20;
        v6 = v19;
        v25 = v24 == v19 && v23 == v8;
        v26 = v25;
        v9 = v14;
        if (v26)
        {
          break;
        }

        v27 = sub_1D72646CC();

        if (v27)
        {
          goto LABEL_18;
        }

        sub_1D5FE38D8(v33, v15, v16);
        ++v10;
        v13 += 24;
        if (v34 == v14)
        {
          v12 = v32;
          goto LABEL_25;
        }
      }

LABEL_18:
      v12 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D69985C4(0, *(v32 + 16) + 1, 1);
        v12 = v32;
      }

      v29 = *(v12 + 16);
      v28 = *(v12 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1D69985C4((v28 > 1), v29 + 1, 1);
        v12 = v32;
      }

      *(v12 + 16) = v29 + 1;
      v30 = v12 + 24 * v29;
      v10 = v34;
      *(v30 + 32) = v33;
      *(v30 + 40) = v15;
      *(v30 + 48) = v16;
      v11 = v31;
    }

    while (v34 != v14);
LABEL_25:
    if (*(v12 + 16))
    {
      goto LABEL_28;
    }

    goto LABEL_32;
  }

  v12 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_32:

    return;
  }

LABEL_28:
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_32;
  }

  sub_1D6A27814(v12);

  swift_unknownObjectRelease();
}

void *sub_1D5FE38D8(void *result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}