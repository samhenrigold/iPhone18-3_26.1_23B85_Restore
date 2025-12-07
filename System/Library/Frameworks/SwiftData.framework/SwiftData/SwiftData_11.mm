uint64_t DefaultHistoryToken.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9E8, &qword_19752FEB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1Tm_3(a1, a1[3]);
  sub_1974D3CFC();

  sub_197522B0C();
  v10[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9F8, &qword_19752FEB8);
  sub_1974D3D50(&qword_1EAF2BA00, MEMORY[0x1E69E6160], MEMORY[0x1E69E7368], MEMORY[0x1E69E5E38]);
  sub_1975226EC();

  return (*(v4 + 8))(v7, v3);
}

uint64_t DefaultHistoryToken.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BA08, &qword_19752FEC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v11 - v8;
  sub_19744E9BC(MEMORY[0x1E69E7CC0]);

  __swift_project_boxed_opaque_existential_1Tm_3(a1, a1[3]);
  sub_1974D3CFC();
  sub_197522AFC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9F8, &qword_19752FEB8);
    sub_1974D3D50(&qword_1EAF2BA10, MEMORY[0x1E69E6190], MEMORY[0x1E69E7390], MEMORY[0x1E69E5E58]);
    sub_19752261C();
    (*(v6 + 8))(v9, v5);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_4(a1);
}

double sub_1974D1460@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

void *sub_1974D1474(uint64_t a1)
{
  v2 = *v1;
  result = sub_197522A5C();
  v4 = 0;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 64);
  for (i = (v5 + 63) >> 6; v7; result = MEMORY[0x19A8E11B0](*(*(v2 + 56) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {
      return sub_197522A9C();
    }

    v7 = *(v2 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1974D1554(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return !_s9SwiftData19DefaultHistoryTokenV1loiySbAC_ACtFZ_0(&v4, &v5);
}

BOOL sub_1974D1590(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return !_s9SwiftData19DefaultHistoryTokenV1loiySbAC_ACtFZ_0(&v5, &v4);
}

BOOL sub_1974D15CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return _s9SwiftData19DefaultHistoryTokenV1loiySbAC_ACtFZ_0(&v4, &v5);
}

void *sub_1974D1604@<X0>(void *a1@<X8>)
{
  result = DefaultHistoryToken.hashValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1974D1674(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 68);
  for (i = (a1 + 68); ; i += 40)
  {
    result = 0;
    if (*(i - 4) != *(v3 - 4))
    {
      break;
    }

    if ((*(i - 2) ^ *(v3 - 2)))
    {
      break;
    }

    if ((*i ^ *v3))
    {
      break;
    }

    if ((*(i - 3) ^ *(v3 - 3)))
    {
      break;
    }

    if ((*(i - 1) ^ *(v3 - 1)))
    {
      break;
    }

    v6 = *(i - 36);
    v7 = *(v3 - 36);
    if ((v6 ^ v7))
    {
      break;
    }

    if ((v6 & v7) == 1)
    {
      v8 = *(i - 12);
      v9 = *(v3 - 12);
      if (v8)
      {
        if (!v9 || (*(i - 20) != *(v3 - 20) || v8 != v9) && (sub_19752282C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v9)
      {
        return 0;
      }
    }

    v3 += 40;
    if (!--v2)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1974D178C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    v5 = *(a1 + 32);
    v6 = *(a2 + 32);
    v7 = *(v5 + 16);
    if (v7 == *(v6 + 16))
    {
      v8 = 1;
      while (!v7 || v5 == v6)
      {
LABEL_16:
        result = v8 == v2;
        if (v8 != v2)
        {
          v5 = *(v3 + 8 * v8);
          v6 = *(v4 + 8 * v8++);
          v7 = *(v5 + 16);
          if (v7 == *(v6 + 16))
          {
            continue;
          }
        }

        return result;
      }

      v9 = (v5 + 40);
      v10 = (v6 + 40);
      while (1)
      {
        v11 = *(v9 - 1) == *(v10 - 1) && *v9 == *v10;
        if (!v11 && (sub_19752282C() & 1) == 0)
        {
          break;
        }

        v9 += 2;
        v10 += 2;
        if (!--v7)
        {
          goto LABEL_16;
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1974D188C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_19752282C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1974D191C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t sub_1974D1990(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1974D19EC(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_74;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_1975220EC();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
  if (v3 < 0)
  {
    v7 = v3;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
          goto LABEL_73;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x19A8E0960](v12 - 4, v3);
          v15 = result;
          if (v11)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          v15 = *(v3 + 8 * v12);

          if (v11)
          {
LABEL_21:
            v16 = MEMORY[0x19A8E0960](v12 - 4, a2);
            goto LABEL_26;
          }
        }

        if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_78;
        }

        v16 = *(a2 + 8 * v12);

LABEL_26:
        swift_beginAccess();
        v17 = v15[2];
        v18 = v15[3];
        swift_beginAccess();
        v19 = v17 == v16[2] && v18 == v16[3];
        if (!v19 && (sub_19752282C() & 1) == 0 || (swift_beginAccess(), v20 = v15[6], swift_beginAccess(), (sub_1974D1674(v20, v16[6]) & 1) == 0))
        {

          return 0;
        }

        swift_beginAccess();
        v21 = v15[7];

        swift_beginAccess();
        v4 = v16[7];

        result = v21 == v4;
        if (v21 == v4)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return result;
      }
    }

    v4 = 0;
    v39 = v3 + 32;
    v22 = a2 + 32;
    v23 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      if (v4 == v23)
      {
        goto LABEL_79;
      }

      if (v4 == v24)
      {
        break;
      }

      v25 = *(v39 + 8 * v4);
      v26 = *(v22 + 8 * v4);
      swift_beginAccess();
      v27 = v25[2];
      v28 = v25[3];
      swift_beginAccess();
      v29 = v27 == v26[2] && v28 == v26[3];
      if (!v29 && (sub_19752282C() & 1) == 0)
      {
        return 0;
      }

      swift_beginAccess();
      v30 = v25[6];
      swift_beginAccess();
      v31 = v26[6];
      a2 = *(v30 + 16);
      if (a2 != *(v31 + 16))
      {
        return 0;
      }

      if (a2)
      {
        v32 = v30 == v31;
      }

      else
      {
        v32 = 1;
      }

      if (!v32)
      {
        v3 = v31 + 68;
        v34 = (v30 + 68);
        while (a2)
        {
          result = 0;
          if (*(v34 - 4) != *(v3 - 4))
          {
            return result;
          }

          if ((*(v34 - 2) ^ *(v3 - 2)))
          {
            return result;
          }

          if ((*v34 ^ *v3))
          {
            return result;
          }

          if ((*(v34 - 3) ^ *(v3 - 3)))
          {
            return result;
          }

          if ((*(v34 - 1) ^ *(v3 - 1)))
          {
            return result;
          }

          v35 = *(v34 - 36);
          v36 = *(v3 - 36);
          if ((v35 ^ v36))
          {
            return result;
          }

          if ((v35 & v36) == 1)
          {
            v37 = *(v34 - 12);
            v38 = *(v3 - 12);
            if (v37)
            {
              if (!v38 || (*(v34 - 20) != *(v3 - 20) || v37 != v38) && (sub_19752282C() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v38)
            {
              return 0;
            }
          }

          v34 += 40;
          v3 += 40;
          if (!--a2)
          {
            goto LABEL_53;
          }
        }

LABEL_73:
        __break(1u);
LABEL_74:
        v5 = sub_1975220EC();
        goto LABEL_3;
      }

LABEL_53:
      swift_beginAccess();
      v33 = v25[7];
      swift_beginAccess();
      if (v33 != v26[7])
      {
        return 0;
      }

      ++v4;
      result = 1;
      if (v4 == v5)
      {
        return result;
      }
    }

LABEL_80:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1974D1E74(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAC0, &unk_197531960);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_2(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1974D1F10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size_2(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

uint64_t sub_1974D1F8C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1975227BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_197521A2C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1974D231C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1974D217C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1974D2084(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1975227BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_197521A2C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1974D28F8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1974D224C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1974D217C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_19752282C(), (result & 1) == 0))
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

uint64_t sub_1974D224C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    v10 = *v9;
    v11 = v9[1];
    v12 = v8;
    v13 = v7;
    while (1)
    {
      result = *(v13 - 2);
      v14 = result == v10 && *(v13 - 1) == v11;
      if (v14 || (result = sub_19752282C(), (result & 1) == 0))
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

      v10 = *v13;
      v11 = v13[1];
      *v13 = *(v13 - 1);
      *(v13 - 1) = v11;
      *(v13 - 2) = v10;
      v13 -= 2;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1974D231C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1974DAF28(v8);
      v8 = result;
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
        sub_1974D2ED4((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
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
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_19752282C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_19752282C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
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

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_197477094(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_197477094((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
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
        sub_1974D2ED4((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1974DAF28(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1974DAE9C(v44);
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
    if (v37 || (result = sub_19752282C(), (result & 1) == 0))
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
  return result;
}

uint64_t sub_1974D28F8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1974DAF28(v8);
      v8 = result;
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
        sub_1974D30FC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
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
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
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
      result = *v11;
      if (*v11 == *v10 && v11[1] == v10[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_19752282C();
        v13 = result;
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
          result = *(v14 - 1);
          if (result == v14[1] && *v14 == v16)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_19752282C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
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

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_197477094(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_197477094((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
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
        sub_1974D30FC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1974DAF28(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1974DAE9C(v44);
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
    v37 = *(v36 - 2) == v33 && *(v36 - 1) == v34;
    if (v37 || (result = sub_19752282C(), (result & 1) == 0))
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
  return result;
}

uint64_t sub_1974D2ED4(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_19752282C() & 1) != 0)
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
      if (!v21 && (sub_19752282C() & 1) != 0)
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

uint64_t sub_1974D30FC(char *__dst, char *__src, char *a3, char *a4)
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

      v16 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (!v16 && (sub_19752282C() & 1) != 0)
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
      v21 = *(v6 - 2) == v19 && *(v6 - 1) == v20;
      if (!v21 && (sub_19752282C() & 1) != 0)
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

void *sub_1974D3324(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t *sub_1974D350C(uint64_t *result, uint64_t **a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t), uint64_t a8)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_20:
    v17 = 0;
    v25 = -1 << *(v9 + 32);
    v15 = v9 + 56;
    v16 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v18 = v27 & *(v9 + 56);
    v19 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    a5 = 0;
    goto LABEL_31;
  }

  sub_1975220AC();
  a5(0);
  sub_19744ED98(a6, a7, a8);
  result = sub_197521C1C();
  v9 = v33;
  v15 = v34;
  v16 = v35;
  v17 = v36;
  v18 = v37;
  v19 = a3;
  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!v19)
  {
    a5 = 0;
    goto LABEL_31;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v29 = v16;
  v30 = a5;
  a5 = 0;
  v20 = (v16 + 64) >> 6;
  v21 = 1;
  while (v9 < 0)
  {
    if (!sub_19752212C())
    {
      goto LABEL_29;
    }

    v30(0);
    swift_dynamicCast();
    result = v32;
    v19 = a3;
    if (!v32)
    {
      goto LABEL_29;
    }

LABEL_16:
    *a2 = result;
    if (v21 == v19)
    {
      a5 = v19;
      goto LABEL_29;
    }

    ++a2;
    a5 = v21;
    if (__OFADD__(v21++, 1))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  v22 = v17;
  if (v18)
  {
LABEL_12:
    v18 &= v18 - 1;

    if (!result)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v23 >= v20)
    {
      break;
    }

    v18 = *(v15 + 8 * v23);
    ++v22;
    if (v18)
    {
      v17 = v23;
      goto LABEL_12;
    }
  }

  v18 = 0;
  if (v20 <= v17 + 1)
  {
    v28 = v17 + 1;
  }

  else
  {
    v28 = v20;
  }

  v17 = v28 - 1;
LABEL_29:
  v16 = v29;
LABEL_31:
  *v11 = v9;
  v11[1] = v15;
  v11[2] = v16;
  v11[3] = v17;
  v11[4] = v18;
  return a5;
}

void *sub_1974D373C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = *(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9))));
      v18 = *v17;
      v19 = *(v17 + 8);
      v9 &= v9 - 1;
      *v11 = *v17;
      *(v11 + 8) = v19;
      if (v14 == v10)
      {
        sub_1974028EC(v18, v19);
        goto LABEL_24;
      }

      v11 += 16;
      sub_1974028EC(v18, v19);
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1974D389C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9D8, &qword_19752FEA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

BOOL _s9SwiftData19DefaultHistoryTokenV1loiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4[0] = *a2;
  v4[1] = v2;
  return DefaultHistoryToken.compare(_:)(v4) > 1;
}

uint64_t _s9SwiftData19DefaultHistoryTokenV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = sub_1974D1F10(*(*a1 + 16), 0, &qword_1EAF2AE50, &qword_19752D530);
    v6 = sub_1974D3324(&v28, v5 + 4, v4, v2);
    v7 = v28;

    sub_1974D3CF4(v7);
    if (v6 != v4)
    {
      __break(1u);
      return 0;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v28 = v5;
  v9 = 0;
  sub_1974CF91C(&v28);
  v10 = v28;
  v11 = *(v3 + 16);
  v27 = v28;
  if (v11)
  {
    v12 = sub_1974D1F10(v11, 0, &qword_1EAF2AE50, &qword_19752D530);
    v25 = sub_1974D3324(&v28, v12 + 4, v11, v3);
    v13 = v28;

    sub_1974D3CF4(v13);
    if (v25 != v11)
    {
      goto LABEL_30;
    }

    v10 = v27;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v28 = v12;
  sub_1974CF91C(&v28);
  v9 = sub_1974D188C(v10, v28);

  if ((v9 & 1) == 0)
  {
LABEL_26:

    return 0;
  }

  v26 = *(v10 + 2);
  if (!v26)
  {
LABEL_27:

    return 1;
  }

  v14 = 0;
  v15 = (v10 + 40);
  while (v14 < *(v10 + 2))
  {
    v16 = *(v15 - 1);
    v9 = *v15;
    v17 = *(v2 + 16);

    if (v17 && (v18 = sub_1973F4028(v16, v9), (v19 & 1) != 0))
    {
      v20 = 0;
      v21 = *(*(v2 + 56) + 8 * v18);
      if (!*(v3 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v21 = 0;
      v20 = 1;
      if (!*(v3 + 16))
      {
LABEL_14:

LABEL_15:
        v10 = v27;
        if ((v20 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_16;
      }
    }

    v22 = sub_1973F4028(v16, v9);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_15;
    }

    if (v20)
    {
      goto LABEL_26;
    }

    v10 = v27;
    if (v21 != *(*(v3 + 56) + 8 * v22))
    {
      goto LABEL_26;
    }

LABEL_16:
    ++v14;
    v15 += 2;
    if (v26 == v14)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_1974D3CA0()
{
  result = qword_1EAF2B9E0;
  if (!qword_1EAF2B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B9E0);
  }

  return result;
}

unint64_t sub_1974D3CFC()
{
  result = qword_1EAF2B9F0;
  if (!qword_1EAF2B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B9F0);
  }

  return result;
}

uint64_t sub_1974D3D50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2B9F8, &qword_19752FEB8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1974D3EA0()
{
  result = qword_1EAF2BA18;
  if (!qword_1EAF2BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BA18);
  }

  return result;
}

unint64_t sub_1974D3F80()
{
  result = qword_1EAF2BA20[0];
  if (!qword_1EAF2BA20[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2B9F8, &qword_19752FEB8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAF2BA20);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1974D40A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1974D40DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1974D412C(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1974D4244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1974D428C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1974D42D4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1974D4328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1974D4370(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1974D43B8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1974D44C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1974D450C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1974D4554(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1974D45B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1974D45FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1974D4644(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1974D46A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1974D4700(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1974D4748(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for TokenCompareError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TokenCompareError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1974D4920(uint64_t *a1, int a2)
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

uint64_t sub_1974D4968(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DefaultHistoryToken.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DefaultHistoryToken.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1974D4A98()
{
  result = qword_1EAF2BAA8;
  if (!qword_1EAF2BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BAA8);
  }

  return result;
}

unint64_t sub_1974D4AF0()
{
  result = qword_1EAF2BAB0;
  if (!qword_1EAF2BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BAB0);
  }

  return result;
}

unint64_t sub_1974D4B48()
{
  result = qword_1EAF2BAB8;
  if (!qword_1EAF2BAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BAB8);
  }

  return result;
}

uint64_t sub_1974D4B9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t Schema.__allocating_init(_:version:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  Schema.init(_:version:)(a1, a2);
  return v4;
}

double sub_1974D4C70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1973F51F0(a1, a2, v6);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

unint64_t sub_1974D4CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = v3[1];
  if (!*(v8 + 16) || (result = sub_1973F4028(a1, a2), (v10 & 1) == 0))
  {
    result = v4[3];
    if (result)
    {
      sub_1973F51F0(result, v4[4], v14);
      sub_1974D4CB4(a1, a2, a3);
      v17 = v14[0];
      sub_1973FA4B8(&v17, &qword_1EAF2B568, &qword_19752E990);
      v13 = v14[2];
      v16 = v14[1];
      sub_1973FA4B8(&v16, &qword_1EAF2B570, &qword_19752E998);
      v15 = v13;
      return sub_1973FA4B8(&v15, &qword_1EAF2B578, &qword_19752E9A0);
    }

    else
    {
      a3[4] = 0u;
      a3[5] = 0u;
      a3[2] = 0u;
      a3[3] = 0u;
      *a3 = 0u;
      a3[1] = 0u;
    }

    return result;
  }

  v11 = *(*(v8 + 56) + 8 * result);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v11 >= *(*v4 + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v12 = *v4 + 96 * v11 + 32;

  return sub_1973F7E64(v12, a3);
}

uint64_t sub_1974D4E08(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(*(v2 + 24) + 16) && (sub_1973F4028(a1, a2), (v5 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

unint64_t sub_1974D4E94()
{
  if (!(*v0 >> 62))
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_1974DB040();
    if (result)
    {
      return result;
    }

    if (*v0 >> 62)
    {
      v4 = sub_1975220EC();
      v3 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v3)
      {
        return sub_19744C5BC(result, sub_19751E87C);
      }
    }

    else
    {
      v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (!v3)
      {
        return sub_19744C5BC(result, sub_19751E87C);
      }
    }

    __break(1u);
    return result;
  }

  result = sub_1975220EC();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

unint64_t sub_1974D4F38@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = v2[2];
  if (!*(v6 + 16) || (result = sub_1973F7814(a1), (v8 & 1) == 0))
  {
    result = v3[3];
    if (result)
    {
      sub_1973F51F0(result, v3[4], v12);
      sub_1974D4F38(a1, a2);
      v15 = v12[0];
      sub_1973FA4B8(&v15, &qword_1EAF2B568, &qword_19752E990);
      v11 = v12[2];
      v14 = v12[1];
      sub_1973FA4B8(&v14, &qword_1EAF2B570, &qword_19752E998);
      v13 = v11;
      return sub_1973FA4B8(&v13, &qword_1EAF2B578, &qword_19752E9A0);
    }

    else
    {
      a2[4] = 0u;
      a2[5] = 0u;
      a2[2] = 0u;
      a2[3] = 0u;
      *a2 = 0u;
      a2[1] = 0u;
    }

    return result;
  }

  v9 = *(*(v6 + 56) + 8 * result);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v9 >= *(*v3 + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v10 = *v3 + 96 * v9 + 32;

  return sub_1973F7E64(v10, a2);
}

unint64_t sub_1974D5080()
{
  v0 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v0);

  return 0xD000000000000011;
}

uint64_t sub_1974D50E4()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_1974D512C(uint64_t a1)
{
  v2 = *v1;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v2);
  return sub_197522A9C();
}

uint64_t sub_1974D5170()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1974D51B0(uint64_t *a1, void *a2, uint64_t *a3)
{
  v7 = a1;
  v8 = a2[2];
  v9 = sub_1973F9DB4(v8, *a1);
  if (v9)
  {
    v7 = a2[3];
    v3 = a2[4];
    v10 = *(v9 + 24) == v7 && *(v9 + 32) == v3;
    if (v10 || (v4 = v9, (sub_19752282C() & 1) != 0))
    {

      goto LABEL_16;
    }

LABEL_22:
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000021, 0x8000000197528CC0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD000000000000020, 0x8000000197528CF0);
    MEMORY[0x19A8DFF80](*(v4 + 24), *(v4 + 32));
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    MEMORY[0x19A8DFF80](v7, v3);
    goto LABEL_24;
  }

  v11 = *v7;
  if ((*v7 & 0xC000000000000001) != 0)
  {
    if (v11 < 0)
    {
      v12 = *v7;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFFFFFFFF8;
    }

    v13 = sub_1975220EC();
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    *v7 = sub_1974D9DC4(v12, v13 + 1);
  }

  else
  {
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v7;
  sub_19747C894(a2, v8, isUniquelyReferenced_nonNull_native);
  *v7 = v21;
LABEL_16:
  v16 = a2[3];
  v15 = a2[4];
  if (!*(*a3 + 16) || (sub_1973F4028(a2[3], a2[4]), (v17 & 1) == 0))
  {

    v20 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *a3;
    *a3 = 0x8000000000000000;
    sub_19747C9C0(a2, v16, v15, v20);

    *a3 = v22;
    return result;
  }

  v18 = sub_19752201C();
  if (v18 == sub_19752201C())
  {
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000020, 0x8000000197528C60);
  MEMORY[0x19A8DFF80](v16, v15);
  MEMORY[0x19A8DFF80](0xD000000000000021, 0x8000000197528C90);
  sub_19752202C();
  sub_19752235C();
  MEMORY[0x19A8DFF80](10, 0xE100000000000000);
  sub_19752235C();
LABEL_24:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974D554C(void *a1)
{
  v2 = v1;
  v5 = a1[3];
  v4 = a1[4];
  swift_beginAccess();
  v6 = v1[3];
  if (*(v6 + 16) && (v7 = sub_1973F4028(v5, v4), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAC0, &unk_197531960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_197530980;
    *(inited + 32) = v9;
    *(inited + 40) = a1;
    swift_retain_n();

    v11 = sub_1974DB23C(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v2[3];
    v2[3] = 0x8000000000000000;
    sub_19747C9C0(v11, v5, v4, isUniquelyReferenced_nonNull_native);

    v2[3] = v20;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();

    v13 = swift_isUniquelyReferenced_nonNull_native();
    v21 = v2[3];
    v2[3] = 0x8000000000000000;
    sub_19747C9C0(a1, v5, v4, v13);

    v2[3] = v21;
    swift_endAccess();
  }

  v14 = a1[2];
  swift_beginAccess();
  v15 = v2[2];
  if ((v15 & 0xC000000000000001) != 0)
  {
    if (v15 < 0)
    {
      v16 = v2[2];
    }

    else
    {
      v16 = v15 & 0xFFFFFFFFFFFFFF8;
    }

    result = sub_1975220EC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v2[2] = sub_1974D9DC4(v16, result + 1);
  }

  else
  {
  }

  v18 = swift_isUniquelyReferenced_nonNull_native();
  v22 = v2[2];
  sub_19747C894(a1, v14, v18);
  v2[2] = v22;
  swift_endAccess();
  swift_beginAccess();

  MEMORY[0x19A8E00D0](v19);
  if (*((v2[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1975219FC();
  }

  sub_197521A4C();
  return swift_endAccess();
}

uint64_t sub_1974D5858(uint64_t a1, char *a2, char *a3)
{
  v5 = v3;
  v9 = *(v3 + 16);

  os_unfair_lock_lock(v9 + 4);

  swift_beginAccess();
  v10 = *(v5 + 24);
  if (*(v10 + 16) && (v11 = sub_1973F7950(a2, a3), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v13 = sub_1973F8C4C(a2, a3, a2, a3);
  }

  swift_beginAccess();
  v14 = sub_1973F9DB4(a1, *(v13 + 16));
  if (v14)
  {
    v15 = v14;
    swift_endAccess();

    v16 = *(v15 + 24);

    goto LABEL_95;
  }

  v78 = a3;
  v79 = a2;
  v80 = v5;
  swift_endAccess();
  v82 = a1;
  sub_197521FEC();
  v92 = 63;
  v93 = 0xE100000000000000;
  v94 = 0;
  v95 = 0xE000000000000000;
  v17 = sub_197416D54();
  v18 = MEMORY[0x1E69E6158];
  sub_197521FBC(&v92, &v94, 0, 0, 0, 1, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], v17, v17, v17);
  v20 = v19;

  v92 = 33;
  v93 = 0xE100000000000000;
  v94 = 0;
  v95 = 0xE000000000000000;
  v21 = sub_197521FBC(&v92, &v94, 0, 0, 0, 1, v18, v18, v18, v17, v17, v17);
  v23 = v22;

  v77 = v21;
  v87 = v21;
  v88 = v23;
  v92 = 46;
  v93 = 0xE100000000000000;
  v24 = sub_197521F9C();
  v25 = *(v24 + 16);
  v26 = v25 != 0;
  v86 = v24 + 32;
  v87 = v24;
  v88 = v24 + 32;
  v89 = v26;
  v90 = (2 * v25) | 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFA0, &qword_19752C710);
  sub_19745B2D4(&qword_1EAF2AFA8, &qword_1EAF2AFA0, &qword_19752C710, MEMORY[0x1E69E6958]);
  v83 = sub_1975216CC();
  if (v25 < v26)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    v87 = 0;
    v88 = 0xE000000000000000;

    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000010, 0x8000000197528840);
    MEMORY[0x19A8DFF80](v83, v81);
    MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
    v72 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v72);

    MEMORY[0x19A8DFF80](0xD000000000000019, 0x8000000197528860);
    v73 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v73);

    MEMORY[0x19A8DFF80](0xD000000000000020, 0x8000000197528880);
    MEMORY[0x19A8DFF80](v4, v20);
    goto LABEL_101;
  }

  if (v25 < 2)
  {

LABEL_92:
    v16 = v83;
    goto LABEL_95;
  }

  v76 = v23;
  v85 = v25 - 1;
  v81 = v27;
  v28 = a2;
  v29 = v82;
  while (1)
  {
    if (v26 >= v25)
    {
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v31 = (v86 + 16 * v26);
    v4 = *v31;
    v20 = v31[1];
    v32 = swift_conformsToProtocol2();
    if (!v32 || !v28)
    {
      v87 = v28;
      v38 = swift_conformsToProtocol2();
      if (v38 && v28)
      {
        v39 = v38;
        v40 = v28;
        do
        {
          sub_1973F732C(v40, &v87, v40, v39);
          v40 = v87;
          v41 = swift_conformsToProtocol2();
          if (!v41)
          {
            break;
          }

          v39 = v41;
        }

        while (v40);
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_100;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_100;
      }

      sub_19752132C();
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_100;
      }

      sub_19752135C();
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_100;
      }

      sub_1975212CC();
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_100;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_100;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_100;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_100;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_100;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_100;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_100;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_100;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_100;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_100;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_100;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_100;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_100;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_100;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_100;
      }

      type metadata accessor for Decimal(0);
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_100;
      }

      swift_bridgeObjectRetain_n();
      sub_1974DBC1C(v28, v4, v20);
      v45 = v44;

      if (!v45)
      {
        goto LABEL_102;
      }

      v29 = v82;
      if (v26 == v85)
      {
        type metadata accessor for Schema.KeyPathCacheEntry();
        v30 = swift_allocObject();
        v30[2] = v82;
        v30[3] = v83;
        v30[4] = v81;

        sub_1974D554C(v30);
        goto LABEL_12;
      }

      v28 = sub_19752152C();
      v87 = v28;
      v46 = swift_conformsToProtocol2();
      if (v46 && v28)
      {
        v47 = v46;
        do
        {
          sub_1973F732C(v28, &v87, v28, v47);
          v28 = v87;
          v47 = swift_conformsToProtocol2();
          if (v47)
          {
            v48 = v28 == 0;
          }

          else
          {
            v48 = 1;
          }
        }

        while (!v48);
      }

      goto LABEL_13;
    }

    v33 = v32;
    swift_beginAccess();
    v34 = *(v5 + 24);
    if (*(v34 + 16) && (v35 = sub_1973F7950(v28, v33), (v36 & 1) != 0))
    {
      v37 = *(*(v34 + 56) + 8 * v35);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();

      v37 = sub_1973F8C4C(v28, v33, v28, v33);
    }

    swift_beginAccess();
    if (!*(*(v37 + 24) + 16))
    {
      break;
    }

    sub_1973F4028(v4, v20);
    if ((v42 & 1) == 0)
    {
      break;
    }

    swift_endAccess();

    if (v26 == v85)
    {
      type metadata accessor for Schema.KeyPathCacheEntry();
      v20 = swift_allocObject();
      v20[2] = v29;
      v20[3] = v83;
      v20[4] = v81;

      sub_1974D554C(v20);

      goto LABEL_12;
    }

    sub_197521FFC();
    v28 = v60;

    v87 = v28;
    v61 = swift_conformsToProtocol2();
    if (v61)
    {
      v62 = v28 == 0;
    }

    else
    {
      v62 = 1;
    }

    if (!v62)
    {
      v63 = v61;
      do
      {
        sub_1973F732C(v28, &v87, v28, v63);
        v28 = v87;
        v64 = swift_conformsToProtocol2();
        if (!v64)
        {
          break;
        }

        v63 = v64;
      }

      while (v28);
    }

LABEL_13:
    if (++v26 == v25)
    {

      goto LABEL_92;
    }
  }

  swift_endAccess();
  if (v4 == 0xD000000000000011 && 0x80000001975288B0 == v20 || (sub_19752282C() & 1) != 0)
  {
    if (v26 != v85)
    {
      v87 = 0;
      v88 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0x206874615079654BLL, 0xE800000000000000);
      MEMORY[0x19A8DFF80](v77, v76);
      MEMORY[0x19A8DFF80](0xD0000000000000BBLL, 0x8000000197528980);
      goto LABEL_101;
    }

    type metadata accessor for Schema.KeyPathCacheEntry();
    v43 = swift_allocObject();
    v43[2] = v29;
    v43[3] = v83;
    v43[4] = v81;

    sub_1974D554C(v43);

LABEL_12:

    goto LABEL_13;
  }

  if (v4 == 25705 && v20 == 0xE200000000000000 || (sub_19752282C() & 1) != 0)
  {
    type metadata accessor for Schema.Entity();
    v49 = sub_1973FDF38(v79, v78);
    swift_beginAccess();
    v4 = *(v49 + 64);

    v50 = v4 + 32;
    v84 = -*(v4 + 16);
    v51 = -1;
    while (v84 + v51 != -1)
    {
      if (++v51 >= *(v4 + 16))
      {
        goto LABEL_98;
      }

      v52 = v26;
      v53 = v20;
      v54 = v25;
      sub_1973FA430(v50, &v87);
      v55 = v90;
      v56 = v91;
      __swift_project_boxed_opaque_existential_1(&v87, v90);
      if ((*(v56 + 32))(v55, v56) == 25705 && v57 == 0xE200000000000000)
      {

        __swift_destroy_boxed_opaque_existential_1(&v87);
        v25 = v54;
        v20 = v53;
        v26 = v52;
LABEL_89:

        if (v26 == v85)
        {

          type metadata accessor for Schema.KeyPathCacheEntry();
          v65 = swift_allocObject();
          v29 = v82;
          v65[2] = v82;
          v65[3] = v83;
          v65[4] = v81;

          sub_1974D554C(v65);

          v5 = v80;
          goto LABEL_13;
        }

LABEL_104:
        v87 = 0;
        v88 = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0x206874615079654BLL, 0xE800000000000000);
        MEMORY[0x19A8DFF80](v77, v76);
        MEMORY[0x19A8DFF80](0xD0000000000000ACLL, 0x80000001975288D0);
        while (1)
        {
LABEL_101:
          sub_1975223EC();
          __break(1u);
LABEL_102:
          v87 = 0;
          v88 = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000013, 0x8000000197528800);
          v74 = sub_197521FEC();
          MEMORY[0x19A8DFF80](v74);

          MEMORY[0x19A8DFF80](0x6573756163656220, 0xE900000000000020);
          MEMORY[0x19A8DFF80](v4, v20);
          MEMORY[0x19A8DFF80](0xD000000000000014, 0x8000000197528820);
          v75 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v75);
        }
      }

      v50 += 40;
      v59 = sub_19752282C();

      __swift_destroy_boxed_opaque_existential_1(&v87);
      v25 = v54;
      v20 = v53;
      v26 = v52;
      if (v59)
      {
        goto LABEL_89;
      }
    }

    v5 = v80;
    if (v26 != v85)
    {
      goto LABEL_104;
    }

    type metadata accessor for Schema.KeyPathCacheEntry();
    v66 = swift_allocObject();
    v66[2] = v82;
    v66[3] = 0xD000000000000011;
    v66[4] = 0x80000001975288B0;

    sub_1974D554C(v66);

    v16 = 0xD000000000000011;
  }

  else
  {

    v16 = sub_1974A2E08(v29, v79, v78);
    v70 = v69;

    type metadata accessor for Schema.KeyPathCacheEntry();
    v71 = swift_allocObject();
    v71[2] = v29;
    v71[3] = v16;
    v71[4] = v70;

    sub_1974D554C(v71);
  }

LABEL_95:
  v67 = *(v5 + 16);

  os_unfair_lock_unlock(v67 + 4);

  return v16;
}

uint64_t sub_1974D6808(char *a1, unint64_t a2, char *a3, ProtocolDescriptor *a4)
{
  v6 = v4;
  v11 = *(v4 + 16);

  os_unfair_lock_lock(v11 + 4);

  swift_beginAccess();
  if (*(*(v6 + 24) + 16) && (sub_1973F7950(a3, a4), (v12 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1973F8C4C(a3, a4, a3, a4);
  }

  v13 = sub_1974D4E08(a1, a2);
  if (!v13)
  {
    v59 = a1;
    v60 = a2;
    v64 = a1;
    v65 = a2;
    sub_197416D54();
    v15 = sub_197521F9C();
    v63 = *(v15 + 16);
    if (!v63)
    {
      goto LABEL_85;
    }

    v14 = 0;
    v16 = 0;
    v62 = v15 + 32;
    v17 = v15;
    v61 = v15;
    while (v16 < *(v17 + 16))
    {
      v18 = (v62 + 16 * v16);
      v5 = *v18;
      a4 = v18[1];
      v19 = swift_conformsToProtocol2();
      if (v19 && a3)
      {
        v20 = v19;
        swift_beginAccess();
        v21 = *(v6 + 24);
        if (*(v21 + 16) && (v22 = sub_1973F7950(a3, v20), (v23 & 1) != 0))
        {
          v24 = *(*(v21 + 56) + 8 * v22);
          swift_endAccess();
        }

        else
        {
          swift_endAccess();

          v24 = sub_1973F8C4C(a3, v20, a3, v20);
        }

        swift_beginAccess();
        v29 = *(v24 + 24);
        if (!*(v29 + 16))
        {
          goto LABEL_83;
        }

        v30 = sub_1973F4028(v5, a4);
        if ((v31 & 1) == 0)
        {
          goto LABEL_83;
        }

        v32 = *(*(v29 + 56) + 8 * v30);
        swift_endAccess();

        v33 = *(v32 + 16);

        if (v14)
        {
          sub_19752202C();
          v34 = sub_1975224AC();

          v14 = v34;
        }

        else
        {

          v14 = v33;
        }

        sub_197521FFC();
        a3 = v40;

        v64 = a3;
        a4 = &protocol descriptor for _Optional;
        v41 = swift_conformsToProtocol2();
        if (v41)
        {
          v42 = a3 == 0;
        }

        else
        {
          v42 = 1;
        }

        if (!v42)
        {
          v43 = v41;
          do
          {
            sub_1973F732C(a3, &v64, a3, v43);
            a3 = v64;
            v44 = swift_conformsToProtocol2();
            if (!v44)
            {
              break;
            }

            v43 = v44;
          }

          while (a3);
        }
      }

      else
      {
        v64 = a3;
        v25 = swift_conformsToProtocol2();
        if (v25 && a3)
        {
          v26 = v25;
          v27 = a3;
          do
          {
            sub_1973F732C(v27, &v64, v27, v26);
            v27 = v64;
            v28 = swift_conformsToProtocol2();
            if (!v28)
            {
              break;
            }

            v26 = v28;
          }

          while (v27);
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_81;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_81;
        }

        sub_19752132C();
        if (swift_dynamicCastMetatype())
        {
          goto LABEL_81;
        }

        sub_19752135C();
        if (swift_dynamicCastMetatype())
        {
          goto LABEL_81;
        }

        sub_1975212CC();
        if (swift_dynamicCastMetatype())
        {
          goto LABEL_81;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_81;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_81;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_81;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_81;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_81;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_81;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_81;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_81;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_81;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_81;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_81;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_81;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_81;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_81;
        }

        type metadata accessor for Decimal(0);
        if (swift_dynamicCastMetatype())
        {
          goto LABEL_81;
        }

        swift_bridgeObjectRetain_n();
        v35 = v5;
        v5 = sub_1974DBC1C(a3, v5, a4);
        v37 = v36;

        if (v37)
        {

          sub_1974AA070(v37, v5, v37, v37);

          sub_197521FFC();
          a3 = v38;
          v39 = swift_conformsToProtocol2();
          a4 = v39;
          if (v14)
          {
            if (v39 && a3)
            {
              sub_19752150C();
            }

            else
            {
              sub_1974AA070(v37, v5, v37, v37);
            }

            sub_19752202C();
            v46 = sub_1975224AC();

            v14 = v46;
          }

          else
          {
            v14 = sub_1974AA070(v37, v5, v37, v37);
          }

          v64 = a3;
          v17 = v61;
          if (a4 && a3)
          {
            do
            {
              sub_1973F732C(a3, &v64, a3, a4);
              a3 = v64;
              a4 = swift_conformsToProtocol2();
              if (a4)
              {
                v47 = a3 == 0;
              }

              else
              {
                v47 = 1;
              }
            }

            while (!v47);
          }
        }

        else
        {
          v45 = *a3;
          v17 = v61;
          if (*a3 > 0x7FFuLL || v45 != 514 && v45 != 513)
          {
            v64 = 0;
            v65 = 0xE000000000000000;
            sub_1975221EC();
            MEMORY[0x19A8DFF80](0xD000000000000013, 0x8000000197528800);
            MEMORY[0x19A8DFF80](v59, v60);
            MEMORY[0x19A8DFF80](0x6573756163656220, 0xE900000000000020);
            MEMORY[0x19A8DFF80](v35, a4);
            MEMORY[0x19A8DFF80](0xD000000000000014, 0x8000000197528820);
            v55 = sub_197522B8C();
            a4 = v56;
            MEMORY[0x19A8DFF80](v55);

            goto LABEL_82;
          }
        }
      }

      if (++v16 == v63)
      {
        if (v14)
        {

          type metadata accessor for Schema.KeyPathCacheEntry();
          v48 = swift_allocObject();
          v48[2] = v14;
          v48[3] = v59;
          v48[4] = v60;

          sub_1974D554C(v48);

          goto LABEL_79;
        }

LABEL_85:
        v64 = 0;
        v65 = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000024, 0x8000000197528D20);
        MEMORY[0x19A8DFF80](v59, v60);
        MEMORY[0x19A8DFF80](0x206D6F726620, 0xE600000000000000);
        v57 = sub_197522B8C();
        a4 = v58;
        MEMORY[0x19A8DFF80](v57);

        MEMORY[0x19A8DFF80](0xD000000000000078, 0x8000000197528D50);
        while (1)
        {
LABEL_82:
          sub_1975223EC();
          __break(1u);
LABEL_83:
          swift_endAccess();
          v64 = 0;
          v65 = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD00000000000002BLL, 0x8000000197528DD0);
          MEMORY[0x19A8DFF80](v59, v60);
          MEMORY[0x19A8DFF80](0xD000000000000010, 0x8000000197528E00);
          MEMORY[0x19A8DFF80](v5, a4);
          MEMORY[0x19A8DFF80](0x6E6B6E7520736920, 0xEF206F74206E776FLL);
          v53 = sub_197522B8C();
          a4 = v54;
          MEMORY[0x19A8DFF80](v53);

          MEMORY[0x19A8DFF80](46, 0xE100000000000000);
        }
      }
    }

    __break(1u);
LABEL_81:
    v64 = 0;
    v65 = 0xE000000000000000;

    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000010, 0x8000000197528840);
    MEMORY[0x19A8DFF80](v59, v60);
    MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
    v51 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v51);

    MEMORY[0x19A8DFF80](0xD000000000000019, 0x8000000197528860);
    v52 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v52);

    MEMORY[0x19A8DFF80](0xD000000000000020, 0x8000000197528880);
    MEMORY[0x19A8DFF80](v5, a4);
    goto LABEL_82;
  }

  v14 = v13;
LABEL_79:

  v49 = *(v6 + 16);

  os_unfair_lock_unlock(v49 + 4);

  return v14;
}

uint64_t sub_1974D7350(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_1974D73A0()
{
  v0 = sub_19752162C();
  MEMORY[0x19A8DFF80](v0);

  return 0xD00000000000001FLL;
}

double static Schema.schemaEncodingVersion.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ED7C9B38 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1ED7C9B50;
  result = *&xmmword_1ED7C9B40;
  *a1 = xmmword_1ED7C9B40;
  *(a1 + 16) = v1;
  return result;
}

__n128 Schema.encodingVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u64[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 Schema.version.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 56);
  result = *(v1 + 40);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

id static Schema.purgeSchemaCaches()()
{
  if (qword_1ED7C9CC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED7C9CC8;
  [qword_1ED7C9CC8 lock];
  if (qword_1ED7C9598 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = MEMORY[0x1E69E7CC8];
  qword_1ED7CE630 = MEMORY[0x1E69E7CC8];

  if (qword_1EAF2AD98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EAF33E98 = v1;

  if (qword_1ED7C9DD8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED7CE6C0;
  os_unfair_lock_lock((qword_1ED7CE6C0 + 16));
  if (qword_1ED7C95C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1ED7CE638 = v1;

  os_unfair_lock_unlock(v2 + 4);
  return [v0 unlock];
}

void *static Schema.createSchema(versionedSchema:)(uint64_t a1, uint64_t a2)
{
  if (qword_1ED7C9CC0 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED7C9CC8;
  [qword_1ED7C9CC8 lock];
  if (qword_1EAF2AD98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1EAF33E98;
  if (*(qword_1EAF33E98 + 16) && (v6 = sub_1974A188C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v9 = (*(a2 + 8))(a1, a2);
    (*(a2 + 16))(&v17, a1, a2);
    v15 = v17;
    v16 = v18;
    v8 = swift_allocObject();
    Schema.init(_:version:)(v9, &v15);
    v10 = sub_1974DBEE8(v8, 1);
    if (!v10)
    {
      sub_1974DC038();
      swift_allocError();
      *v13 = 0xD000000000000031;
      v13[1] = 0x8000000197528520;
      swift_willThrow();

      [v4 unlock];
      return v8;
    }

    v11 = v10;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v15 = qword_1EAF33E98;
    qword_1EAF33E98 = 0x8000000000000000;
    sub_19747CFD0(v8, a1, a2, isUniquelyReferenced_nonNull_native);
    qword_1EAF33E98 = v15;
    swift_endAccess();
  }

  [v4 unlock];
  return v8;
}

uint64_t Schema.__allocating_init()()
{
  v0 = swift_allocObject();
  if (qword_1ED7C9B38 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED7C9B50;
  *(v0 + 16) = xmmword_1ED7C9B40;
  *(v0 + 32) = v1;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 64) = MEMORY[0x1E69E7CC0];
  *(v0 + 72) = sub_1974BFD10(v2);
  return v0;
}

uint64_t Schema.init()()
{
  if (qword_1ED7C9B38 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED7C9B50;
  *(v0 + 16) = xmmword_1ED7C9B40;
  *(v0 + 32) = v1;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 64) = MEMORY[0x1E69E7CC0];
  *(v0 + 72) = sub_1974BFD10(v2);
  return v0;
}

uint64_t Schema.__allocating_init(_:version:)(unint64_t a1, __int128 *a2)
{
  swift_allocObject();
  v4 = sub_1974DC2B8(a1, a2);

  return v4;
}

uint64_t Schema.init(_:version:)(unint64_t a1, __int128 *a2)
{
  v2 = sub_1974DC2B8(a1, a2);

  return v2;
}

uint64_t Schema.__allocating_init(_:version:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v6 = *a2;
  v7 = v3;
  v4 = swift_allocObject();
  Schema.init(_:version:)(a1, &v6);
  return v4;
}

uint64_t sub_1974D7B5C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v57 = a1;
  v7 = swift_conformsToProtocol2();
  v8 = a1;
  if (v7)
  {
    v8 = a1;
    if (a1)
    {
      v9 = v7;
      v8 = a1;
      do
      {
        sub_1973F732C(v8, &v57, v8, v9);
        v8 = v57;
        v9 = swift_conformsToProtocol2();
        if (v9)
        {
          v10 = v8 == 0;
        }

        else
        {
          v10 = 1;
        }
      }

      while (!v10);
    }
  }

  v11 = swift_conformsToProtocol2();
  if (!v11 || !v8)
  {
    goto LABEL_69;
  }

  v12 = v11;
  type metadata accessor for Schema.Entity();
  v13 = sub_1973F69F8(v8, v12);
  v14 = v13;
  if (v13 >> 62)
  {
    goto LABEL_65;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
  }

LABEL_13:
  if (v15 >= 1)
  {
    v54 = v15;
    v16 = 0;
    v55 = v14;
    v56 = v14 & 0xC000000000000001;
    while (1)
    {
      if (v56)
      {
        v17 = MEMORY[0x19A8E0960](v16, v14);
      }

      else
      {
        v17 = *(v14 + 8 * v16 + 32);
      }

      swift_beginAccess();
      v18 = *a3;
      if (*(*a3 + 16))
      {
        v19 = *(v17 + 16);
        v20 = *(v17 + 24);

        v21 = sub_1973F4028(v19, v20);
        v23 = v22;

        if (v23)
        {
          break;
        }
      }

LABEL_42:

      MEMORY[0x19A8E00D0](v36);
      if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1975219FC();
      }

      sub_197521A4C();
      v37 = *(v17 + 16);
      v14 = *(v17 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = *a3;
      v39 = v59;
      *a3 = 0x8000000000000000;
      v40 = sub_1973F4028(v37, v14);
      v42 = v39[2];
      v43 = (v41 & 1) == 0;
      v30 = __OFADD__(v42, v43);
      v44 = v42 + v43;
      if (v30)
      {
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
        __break(1u);
LABEL_65:
        v15 = sub_1975220EC();
        if (!v15)
        {
        }

        goto LABEL_13;
      }

      v45 = v41;
      if (v39[3] < v44)
      {
        sub_197417494(v44, isUniquelyReferenced_nonNull_native);
        v40 = sub_1973F4028(v37, v14);
        if ((v45 & 1) != (v46 & 1))
        {
          goto LABEL_68;
        }

LABEL_49:
        v47 = v59;
        if (v45)
        {
          goto LABEL_15;
        }

        goto LABEL_50;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_49;
      }

      v51 = v40;
      sub_197479C28();
      v40 = v51;
      v47 = v59;
      if (v45)
      {
LABEL_15:
        *(v47[7] + 8 * v40) = v17;

        goto LABEL_16;
      }

LABEL_50:
      v47[(v40 >> 6) + 8] |= 1 << v40;
      v48 = (v47[6] + 16 * v40);
      *v48 = v37;
      v48[1] = v14;
      *(v47[7] + 8 * v40) = v17;
      v49 = v47[2];
      v30 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v30)
      {
        goto LABEL_60;
      }

      v47[2] = v50;
LABEL_16:
      ++v16;
      *a3 = v47;
      v14 = v55;
      if (v54 == v16)
      {
      }
    }

    v24 = *(*(v18 + 56) + 8 * v21);

    v25 = sub_1974DB8D4(a4, v24);
    v26 = v25;
    if (*a4 >> 62)
    {
      v14 = sub_1975220EC();
      v27 = v14 - v26;
      if (v14 < v26)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v14 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v27 = v14 - v25;
      if (v14 < v25)
      {
        goto LABEL_61;
      }
    }

    if (v26 < 0)
    {
      goto LABEL_62;
    }

    v28 = *a4;
    v29 = *a4 >> 62;
    if (v29)
    {
      if (sub_1975220EC() < v14)
      {
LABEL_57:
        __break(1u);
      }
    }

    else if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) < v14)
    {
      goto LABEL_57;
    }

    v30 = __OFSUB__(0, v27);
    v31 = -v27;
    if (v30)
    {
      goto LABEL_63;
    }

    if (v29)
    {
      v32 = sub_1975220EC();
    }

    else
    {
      v32 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = v32 + v31;
    if (__OFADD__(v32, v31))
    {
      goto LABEL_64;
    }

    v34 = *a4;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *a4 = v34;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if ((v34 & 0x8000000000000000) == 0 && (v34 & 0x4000000000000000) == 0)
      {
        if (v33 <= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_41:
          sub_197505EEC(v26, v14, 0);

          goto LABEL_42;
        }

LABEL_40:
        *a4 = sub_19752224C();
        goto LABEL_41;
      }
    }

    else if ((v34 & 0x8000000000000000) == 0 && (v34 & 0x4000000000000000) == 0)
    {
      goto LABEL_40;
    }

    sub_1975220EC();
    goto LABEL_40;
  }

  __break(1u);
LABEL_68:
  sub_1975229CC();
  __break(1u);
LABEL_69:
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_1975221EC();

  v57 = 0xD00000000000001DLL;
  v58 = 0x8000000197528E40;
  v53 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v53);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974D80D4()
{
  v1 = 0x6E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x7365697469746E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646F636E65;
  }
}

uint64_t sub_1974D813C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1974DC08C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1974D8170(uint64_t a1)
{
  v2 = sub_1974DC574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1974D81AC(uint64_t a1)
{
  v2 = sub_1974DC574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Schema.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Schema.init(from:)(a1);
  return v2;
}

void *Schema.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAD0, &qword_1975309C0);
  v68 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v53 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1974DC574();
  sub_197522AFC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v1;
  }

  v61 = v1;
  LOBYTE(v65) = 0;
  sub_1974DC5C8();
  sub_19752261C();
  v8 = v67;
  v9 = v61;
  *(v61 + 16) = v66;
  *(v9 + 32) = v8;
  LOBYTE(v65) = 1;
  sub_19752261C();
  v10 = v67;
  *(v9 + 40) = v66;
  *(v9 + 56) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAE8, &qword_1975309C8);
  LOBYTE(v65) = 2;
  sub_1974DC670(&qword_1EAF2BAF0, &qword_1EAF2BAF8, &protocol conformance descriptor for Schema.Entity, MEMORY[0x1E69E6330]);
  sub_19752261C();
  v11 = 0;
  v54 = v7;
  v13 = v66;
  *(v9 + 64) = v66;
  if (v13 >> 62)
  {
    goto LABEL_52;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v15 = a1;
  v53[1] = v11;

  v16 = v61;
  v59 = a1;
  v58 = v4;
  if (v14)
  {
    v17 = 0;
    v57 = v13 & 0xC000000000000001;
    v56 = v13 & 0xFFFFFFFFFFFFFF8;
    v11 = MEMORY[0x1E69E7CC8];
    v55 = v14;
    while (1)
    {
      if (v57)
      {
        v4 = MEMORY[0x19A8E0960](v17, v13);
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v17 >= *(v56 + 16))
        {
          goto LABEL_47;
        }

        v4 = *(v13 + 8 * v17 + 32);

        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
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
          __break(1u);
LABEL_52:
          v14 = sub_1975220EC();
          goto LABEL_6;
        }
      }

      v60 = v18;
      a1 = v13;
      swift_beginAccess();
      v19 = *(v4 + 16);
      v20 = *(v4 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v11;
      v23 = sub_1973F4028(v19, v20);
      v24 = *(v11 + 16);
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_48;
      }

      v13 = v22;
      if (*(v11 + 24) >= v26)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v22)
          {
            goto LABEL_8;
          }
        }

        else
        {
          sub_197479C28();
          if (v13)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        sub_197417494(v26, isUniquelyReferenced_nonNull_native);
        v27 = sub_1973F4028(v19, v20);
        if ((v13 & 1) != (v28 & 1))
        {
          goto LABEL_55;
        }

        v23 = v27;
        if (v13)
        {
LABEL_8:

          v11 = v65;
          *(*(v65 + 56) + 8 * v23) = v4;

          goto LABEL_9;
        }
      }

      v11 = v65;
      *(v65 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v29 = (*(v11 + 48) + 16 * v23);
      *v29 = v19;
      v29[1] = v20;
      *(*(v11 + 56) + 8 * v23) = v4;

      v30 = *(v11 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_50;
      }

      *(v11 + 16) = v32;
LABEL_9:
      v15 = v59;
      v4 = v58;
      v13 = a1;
      ++v17;
      v16 = v61;
      if (v60 == v55)
      {
        goto LABEL_28;
      }
    }
  }

  v11 = MEMORY[0x1E69E7CC8];
LABEL_28:

  v16[9] = v11;
  a1 = v16;
  v33 = v16[8];
  if (v33 >> 62)
  {
    v34 = sub_1975220EC();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v68;
  v35 = v54;
  if (!v34)
  {
LABEL_45:
    (*(v11 + 8))(v35, v4);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return a1;
  }

  v60 = v33 & 0xC000000000000001;
  v56 = v33 & 0xFFFFFFFFFFFFFF8;

  v4 = 0;
  v57 = v33;
  while (1)
  {
    if (v60)
    {
      v36 = MEMORY[0x19A8E0960](v4, v33);
      v37 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v4 >= *(v56 + 16))
      {
        goto LABEL_51;
      }

      v36 = *(v33 + 8 * v4 + 32);

      v37 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_49;
      }
    }

    swift_beginAccess();
    v38 = v36[6];
    if (v38)
    {
      break;
    }

LABEL_33:
    ++v4;
    v11 = v68;
    if (v37 == v34)
    {

      v15 = v59;
      v4 = v58;
      v35 = v54;
      goto LABEL_45;
    }
  }

  v39 = v36[5];
  v40 = a1[9];
  v41 = *(v40 + 16);

  if (v41)
  {
    v42 = sub_1973F4028(v39, v38);
    if (v43)
    {
      v44 = v42;

      v45 = *(*(v40 + 56) + 8 * v44);
      swift_beginAccess();
      v46 = v45[8];
      swift_beginAccess();
      v62 = v46;
      swift_retain_n();

      sub_1974EE570(v47);
      v48 = v62;
      swift_beginAccess();
      v36[9] = v48;

      sub_1974EF18C();

      swift_weakAssign();
      swift_beginAccess();
      v49 = v45[2];
      v50 = v45[3];

      v13 = v36[6];
      v36[5] = v49;
      v36[6] = v50;

      a1 = v61;
      v33 = v57;
      goto LABEL_33;
    }
  }

  v62 = 0;
  v63 = 0xE000000000000000;
  sub_1975221EC();

  strcpy(v64, "SuperEntity ");
  HIBYTE(v64[6]) = 0;
  v64[7] = -5120;
  MEMORY[0x19A8DFF80](v39, v38);
  MEMORY[0x19A8DFF80](0xD000000000000013, 0x8000000197528580);
  swift_beginAccess();
  v52 = v36[2];
  v51 = v36[3];

  MEMORY[0x19A8DFF80](v52, v51);

  MEMORY[0x19A8DFF80](41, 0xE100000000000000);
  sub_1975223EC();
  __break(1u);
LABEL_55:
  result = sub_1975229CC();
  __break(1u);
  return result;
}

uint64_t Schema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BB00, &qword_1975309D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1974DC574();
  sub_197522B0C();
  v10 = *(v3 + 32);
  v15 = *(v3 + 16);
  v16 = v10;
  v14 = 0;
  sub_1974DC61C();
  sub_1975226EC();
  if (!v2)
  {
    v12 = *(v3 + 56);
    v15 = *(v3 + 40);
    v16 = v12;
    v14 = 1;
    sub_1975226EC();
    *&v15 = *(v3 + 64);
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAE8, &qword_1975309C8);
    sub_1974DC670(&qword_1EAF2BB10, &qword_1EAF2BB18, &protocol conformance descriptor for Schema.Entity, MEMORY[0x1E69E6300]);
    sub_1975226EC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Schema.hash(into:)(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[7];
  MEMORY[0x19A8E1190](v1[5]);
  MEMORY[0x19A8E1190](v2);
  MEMORY[0x19A8E1190](v3);
  v4 = v1[8];
  if (v4 >> 62)
  {
    v9 = sub_1975220EC();
    MEMORY[0x19A8E1190](v9);
    result = sub_1975220EC();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = MEMORY[0x19A8E1190](*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else if ((v4 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    do
    {
      MEMORY[0x19A8E0960](v7++, v4);
      swift_beginAccess();

      sub_19752180C();

      result = swift_unknownObjectRelease();
    }

    while (v6 != v7);
  }

  else
  {
    v8 = v4 + 32;
    do
    {
      v8 += 8;
      swift_beginAccess();

      sub_19752180C();

      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t Schema.save(to:)(uint64_t a1)
{
  sub_197520BAC();
  swift_allocObject();
  sub_197520B9C();
  sub_197420CF8(&qword_1EAF2BB20, v2, type metadata accessor for Schema, &protocol conformance descriptor for Schema);
  v3 = sub_197520B8C();
  if (!v1)
  {
    v6 = v3;
    v7 = v4;
    sub_19752130C();
    sub_19744D0E0(v6, v7);
  }
}

uint64_t static Schema.load(from:)(uint64_t a1)
{
  result = sub_1975212DC();
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    sub_197520B7C();
    swift_allocObject();
    sub_197520B6C();
    sub_197420CF8(&qword_1EAF2BB28, v6, type metadata accessor for Schema, &protocol conformance descriptor for Schema);
    sub_197520B5C();

    sub_19744D0E0(v4, v5);
    return v7;
  }

  return result;
}

uint64_t static Schema.Version.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  if (_s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(a1, a2))
  {
    v4 = 0;
  }

  else
  {
    v4 = _s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(a2, a1) ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1974D9174()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_1974D91BC(uint64_t a1)
{
  v2 = *v1;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v2);
  return sub_197522A9C();
}

uint64_t sub_1974D9218@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1974DC1AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1974D924C(uint64_t a1)
{
  v2 = sub_1974DC710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1974D9288(uint64_t a1)
{
  v2 = sub_1974DC710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Schema.Version.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BB30, &qword_1975309D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v11 - v7;
  v9 = *(v1 + 8);
  v11[0] = *(v1 + 16);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1974DC710();
  sub_197522B0C();
  v14 = 0;
  sub_1975226CC();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v13 = 1;
  sub_1975226CC();
  v12 = 2;
  sub_1975226CC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t Schema.Version.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x19A8E1190](*v0);
  MEMORY[0x19A8E1190](v1);
  return MEMORY[0x19A8E1190](v2);
}

uint64_t Schema.Version.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  MEMORY[0x19A8E1190](v2);
  MEMORY[0x19A8E1190](v3);
  return sub_197522A9C();
}

uint64_t Schema.Version.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BB40, &qword_1975309E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1974DC710();
  sub_197522AFC();
  if (!v2)
  {
    v18 = 0;
    v10 = sub_19752260C();
    v17 = 1;
    v15 = sub_19752260C();
    v16 = 2;
    v12 = sub_19752260C();
    (*(v6 + 8))(v9, v5);
    v13 = v15;
    *a2 = v10;
    a2[1] = v13;
    a2[2] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL sub_1974D9728(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return (_s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(&v5, &v7) & 1) == 0;
}

BOOL sub_1974D9778(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return (_s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(&v7, &v5) & 1) == 0;
}

uint64_t sub_1974D97C8(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return _s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(&v5, &v7) & 1;
}

uint64_t sub_1974D9818()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  MEMORY[0x19A8E1190](v2);
  MEMORY[0x19A8E1190](v3);
  return sub_197522A9C();
}

uint64_t sub_1974D9884()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x19A8E1190](*v0);
  MEMORY[0x19A8E1190](v1);
  return MEMORY[0x19A8E1190](v2);
}

uint64_t sub_1974D98CC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_197522A5C();
  MEMORY[0x19A8E1190](v2);
  MEMORY[0x19A8E1190](v3);
  MEMORY[0x19A8E1190](v4);
  return sub_197522A9C();
}

uint64_t sub_1974D9934(__int128 *a1, __int128 *a2)
{
  if (_s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(a1, a2))
  {
    v4 = 0;
  }

  else
  {
    v4 = _s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(a2, a1) ^ 1;
  }

  return v4 & 1;
}

uint64_t Schema.deinit()
{

  return v0;
}

uint64_t Schema.hashValue.getter()
{
  sub_197522A5C();
  v1 = v0[6];
  v2 = v0[7];
  MEMORY[0x19A8E1190](v0[5]);
  MEMORY[0x19A8E1190](v1);
  MEMORY[0x19A8E1190](v2);
  v3 = v0[8];
  if (!(v3 >> 62))
  {
    result = MEMORY[0x19A8E1190](*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

    return sub_197522A9C();
  }

  v8 = sub_1975220EC();
  MEMORY[0x19A8E1190](v8);
  result = sub_1975220EC();
  v5 = result;
  if (!result)
  {
    return sub_197522A9C();
  }

LABEL_3:
  if (v5 >= 1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        MEMORY[0x19A8E0960](v6++, v3);
        swift_beginAccess();

        sub_19752180C();

        swift_unknownObjectRelease();
      }

      while (v5 != v6);
    }

    else
    {
      v7 = v3 + 32;
      do
      {
        v7 += 8;
        swift_beginAccess();

        sub_19752180C();

        --v5;
      }

      while (v5);
    }

    return sub_197522A9C();
  }

  __break(1u);
  return result;
}

void *sub_1974D9B3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = Schema.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1974D9C00(uint64_t a1)
{
  v2 = *v1;
  sub_197522A5C();
  v3 = v2[6];
  v4 = v2[7];
  MEMORY[0x19A8E1190](v2[5]);
  MEMORY[0x19A8E1190](v3);
  MEMORY[0x19A8E1190](v4);
  v5 = v2[8];
  if (!(v5 >> 62))
  {
    result = MEMORY[0x19A8E1190](*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

    return sub_197522A9C();
  }

  v10 = sub_1975220EC();
  MEMORY[0x19A8E1190](v10);
  result = sub_1975220EC();
  v7 = result;
  if (!result)
  {
    return sub_197522A9C();
  }

LABEL_3:
  if (v7 >= 1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        MEMORY[0x19A8E0960](v8++, v5);
        swift_beginAccess();

        sub_19752180C();

        swift_unknownObjectRelease();
      }

      while (v7 != v8);
    }

    else
    {
      v9 = v5 + 32;
      do
      {
        v9 += 8;
        swift_beginAccess();

        sub_19752180C();

        --v7;
      }

      while (v7);
    }

    return sub_197522A9C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1974D9DC4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B198, &qword_197531230);
    v2 = sub_19752244C();
    v19 = v2;
    sub_1975223AC();
    v3 = sub_1975223DC();
    if (v3)
    {
      v4 = v3;
      sub_19752202C();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for Schema.KeyPathCacheEntry();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1973F9030(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1975216AC();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1975223DC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1974D9FFC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_197480ED0(a4, a5[7] + 16 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1974DA06C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1974DA0B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  v6 = (*(a5 + 48) + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1973FA670();
  v8 = *(a5 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v10;
  }

  return result;
}

unint64_t sub_1974DA124(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_1974DA174(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1974DA1BC(unint64_t result, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1974DA208(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1975213EC();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1974DA2B8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1974DA300(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v115 = result;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6;
      v9 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v10 = *a3;
        v11 = *(*a3 + 8 * v9);
        v12 = *(*a3 + 8 * v6);
        swift_beginAccess();
        v13 = *(v11 + 16);
        v14 = *(v11 + 24);
        result = swift_beginAccess();
        v15 = v13 == *(v12 + 16) && v14 == *(v12 + 24);
        if (v15)
        {
          v4 = 0;
        }

        else
        {
          result = sub_19752282C();
          v4 = result;
        }

        v9 = v8 + 2;
        if (v8 + 2 < v5)
        {
          v122 = v8;
          v16 = (v10 + 8 * v8 + 16);
          do
          {
            v17 = v9;
            v19 = *(v16 - 1);
            v18 = *v16;
            swift_beginAccess();
            v20 = *(v18 + 16);
            v21 = *(v18 + 24);
            result = swift_beginAccess();
            if (v20 == *(v19 + 16) && v21 == *(v19 + 24))
            {
              v9 = v17;
              if (v4)
              {
                v8 = v122;
                goto LABEL_25;
              }
            }

            else
            {
              result = sub_19752282C();
              v9 = v17;
              if ((v4 ^ result))
              {
                goto LABEL_23;
              }
            }

            ++v9;
            ++v16;
          }

          while (v5 != v9);
          v9 = v5;
LABEL_23:
          v8 = v122;
        }

        if (v4)
        {
LABEL_25:
          if (v9 < v8)
          {
            goto LABEL_180;
          }

          if (v8 < v9)
          {
            v23 = 8 * v9 - 8;
            v24 = 8 * v8;
            v25 = v9;
            v26 = v8;
            do
            {
              if (v26 != --v25)
              {
                v28 = *a3;
                if (!*a3)
                {
                  goto LABEL_186;
                }

                v27 = *(v28 + v24);
                *(v28 + v24) = *(v28 + v23);
                *(v28 + v23) = v27;
              }

              ++v26;
              v23 -= 8;
              v24 += 8;
            }

            while (v26 < v25);
          }
        }
      }

      v29 = a3[1];
      if (v9 < v29)
      {
        if (__OFSUB__(v9, v8))
        {
          goto LABEL_179;
        }

        if (v9 - v8 < a4)
        {
          v30 = v8 + a4;
          if (__OFADD__(v8, a4))
          {
            goto LABEL_181;
          }

          if (v30 >= v29)
          {
            v30 = a3[1];
          }

          if (v30 < v8)
          {
            goto LABEL_182;
          }

          if (v9 != v30)
          {
            v123 = v8;
            v125 = v7;
            v31 = *a3;
            v32 = *a3 + 8 * v9 - 8;
            v33 = v8 - v9;
            __src = v30;
            do
            {
              v34 = v9;
              v4 = *(v31 + 8 * v9);
              v35 = v33;
              v36 = v32;
              do
              {
                v7 = *v36;
                swift_beginAccess();
                v37 = *(v4 + 16);
                v4 = *(v4 + 24);
                swift_beginAccess();
                v38 = v37 == *(v7 + 2) && v4 == *(v7 + 3);
                if (v38 || (sub_19752282C() & 1) == 0)
                {
                  break;
                }

                if (!v31)
                {
                  goto LABEL_183;
                }

                v39 = *v36;
                v4 = *(v36 + 8);
                *v36 = v4;
                *(v36 + 8) = v39;
                v36 -= 8;
              }

              while (!__CFADD__(v35++, 1));
              v9 = v34 + 1;
              v32 += 8;
              --v33;
            }

            while ((v34 + 1) != __src);
            v9 = __src;
            v8 = v123;
            v7 = v125;
          }
        }
      }

      if (v9 < v8)
      {
        goto LABEL_176;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v117 = v9;
      if ((result & 1) == 0)
      {
        result = sub_197477094(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v42 = *(v7 + 2);
      v41 = *(v7 + 3);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        result = sub_197477094((v41 > 1), v42 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v43;
      v44 = &v7[16 * v42];
      *(v44 + 4) = v8;
      *(v44 + 5) = v117;
      v45 = *v115;
      if (!*v115)
      {
        goto LABEL_187;
      }

      if (v42)
      {
        break;
      }

LABEL_3:
      v6 = v117;
      v5 = a3[1];
      if (v117 >= v5)
      {
        goto LABEL_151;
      }
    }

    __srca = *v115;
    while (1)
    {
      v46 = v43 - 1;
      if (v43 >= 4)
      {
        break;
      }

      if (v43 == 3)
      {
        v47 = *(v7 + 4);
        v48 = *(v7 + 5);
        v57 = __OFSUB__(v48, v47);
        v49 = v48 - v47;
        v50 = v57;
LABEL_75:
        if (v50)
        {
          goto LABEL_167;
        }

        v63 = &v7[16 * v43];
        v65 = *v63;
        v64 = *(v63 + 1);
        v66 = __OFSUB__(v64, v65);
        v67 = v64 - v65;
        v68 = v66;
        if (v66)
        {
          goto LABEL_170;
        }

        v69 = &v7[16 * v46 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v57 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v57)
        {
          goto LABEL_173;
        }

        if (__OFADD__(v67, v72))
        {
          goto LABEL_174;
        }

        if (v67 + v72 >= v49)
        {
          if (v49 < v72)
          {
            v46 = v43 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_89;
      }

      v73 = &v7[16 * v43];
      v75 = *v73;
      v74 = *(v73 + 1);
      v57 = __OFSUB__(v74, v75);
      v67 = v74 - v75;
      v68 = v57;
LABEL_89:
      if (v68)
      {
        goto LABEL_169;
      }

      v76 = &v7[16 * v46];
      v78 = *(v76 + 4);
      v77 = *(v76 + 5);
      v57 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v57)
      {
        goto LABEL_172;
      }

      if (v79 < v67)
      {
        goto LABEL_3;
      }

LABEL_96:
      if (v46 - 1 >= v43)
      {
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
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
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
        goto LABEL_184;
      }

      v84 = *a3;
      if (!*a3)
      {
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
        return result;
      }

      v119 = v46 - 1;
      v120 = v46;
      v85 = *&v7[16 * v46 + 32];
      v86 = *&v7[16 * v46 + 40];
      v124 = *&v7[16 * v46 + 16];
      v126 = v7;
      v7 = (8 * v124);
      v87 = (v84 + 8 * v124);
      v88 = 8 * v85;
      v89 = (v84 + 8 * v85);
      v121 = v86;
      v90 = 8 * v86;
      v91 = (v84 + 8 * v86);
      v92 = 8 * v85 - 8 * v124;
      v93 = 8 * v86 - 8 * v85;
      if (v92 >= v93)
      {
        if (v89 != v45 || v91 <= v45)
        {
          memmove(v45, (v84 + 8 * v85), 8 * v86 - 8 * v85);
        }

        v94 = v45 + v93;
        if (v93 < 1 || v88 <= v7)
        {
LABEL_140:
          v95 = __srca;
          v102 = v89;
        }

        else
        {
          do
          {
            v102 = v89 - 1;
            --v91;
            v7 = v94;
            while (1)
            {
              v103 = *(v7 - 1);
              v7 -= 8;
              v104 = *v102;
              swift_beginAccess();
              v106 = *(v103 + 16);
              v105 = *(v103 + 24);
              swift_beginAccess();
              v107 = v106 == *(v104 + 16) && v105 == *(v104 + 24);
              if (!v107 && (sub_19752282C() & 1) != 0)
              {
                break;
              }

              if (v91 + 1 != v94)
              {
                *v91 = *v7;
              }

              --v91;
              v94 = v7;
              if (v7 <= __srca)
              {
                v94 = v7;
                goto LABEL_140;
              }
            }

            if (v91 + 1 != v89)
            {
              *v91 = *v102;
            }

            v95 = __srca;
            if (v94 <= __srca)
            {
              break;
            }

            --v89;
          }

          while (v87 < v102);
        }
      }

      else
      {
        if (v87 != v45 || v89 <= v45)
        {
          memmove(v45, (v84 + 8 * v124), 8 * v85 - 8 * v124);
        }

        v94 = v45 + v92;
        if (v92 >= 1 && v90 > v88)
        {
          v95 = __srca;
          while (1)
          {
            v96 = *v89;
            v97 = *v95;
            swift_beginAccess();
            v98 = *(v96 + 16);
            v99 = *(v96 + 24);
            swift_beginAccess();
            v100 = v98 == *(v97 + 16) && v99 == *(v97 + 24);
            if (v100 || (sub_19752282C() & 1) == 0)
            {
              break;
            }

            v101 = v89;
            v15 = v87 == v89++;
            if (!v15)
            {
              goto LABEL_114;
            }

LABEL_115:
            ++v87;
            if (v95 >= v94 || v89 >= v91)
            {
              goto LABEL_138;
            }
          }

          v101 = v95;
          v15 = v87 == v95++;
          if (v15)
          {
            goto LABEL_115;
          }

LABEL_114:
          *v87 = *v101;
          goto LABEL_115;
        }

        v95 = __srca;
LABEL_138:
        v102 = v87;
      }

      if (v102 != v95 || v102 >= (v95 + ((v94 - v95 + (v94 - v95 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
      {
        memmove(v102, v95, 8 * ((v94 - v95) / 8));
      }

      v4 = v121;
      v108 = v126;
      v45 = __srca;
      if (v121 < v124)
      {
        goto LABEL_163;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v108 = sub_1974DAF28(v126);
      }

      if (v120 > *(v108 + 2))
      {
        goto LABEL_164;
      }

      v109 = &v108[16 * v119];
      *(v109 + 4) = v124;
      *(v109 + 5) = v121;
      result = sub_1974DAE9C(v120);
      v7 = v108;
      v43 = *(v108 + 2);
      if (v43 <= 1)
      {
        goto LABEL_3;
      }
    }

    v51 = &v7[16 * v43 + 32];
    v52 = *(v51 - 64);
    v53 = *(v51 - 56);
    v57 = __OFSUB__(v53, v52);
    v54 = v53 - v52;
    if (v57)
    {
      goto LABEL_165;
    }

    v56 = *(v51 - 48);
    v55 = *(v51 - 40);
    v57 = __OFSUB__(v55, v56);
    v49 = v55 - v56;
    v50 = v57;
    if (v57)
    {
      goto LABEL_166;
    }

    v58 = &v7[16 * v43];
    v60 = *v58;
    v59 = *(v58 + 1);
    v57 = __OFSUB__(v59, v60);
    v61 = v59 - v60;
    if (v57)
    {
      goto LABEL_168;
    }

    v57 = __OFADD__(v49, v61);
    v62 = v49 + v61;
    if (v57)
    {
      goto LABEL_171;
    }

    if (v62 >= v54)
    {
      v80 = &v7[16 * v46 + 32];
      v82 = *v80;
      v81 = *(v80 + 1);
      v57 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v57)
      {
        goto LABEL_175;
      }

      if (v49 < v83)
      {
        v46 = v43 - 2;
      }

      goto LABEL_96;
    }

    goto LABEL_75;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_151:
  v4 = *v115;
  if (!*v115)
  {
    goto LABEL_189;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_184:
    result = sub_1974DAF28(v7);
    v7 = result;
  }

  v110 = *(v7 + 2);
  if (v110 >= 2)
  {
    while (*a3)
    {
      v111 = *&v7[16 * v110];
      v112 = *&v7[16 * v110 + 24];
      sub_1974DABD8((*a3 + 8 * v111), (*a3 + 8 * *&v7[16 * v110 + 16]), (*a3 + 8 * v112), v4);
      if (v116)
      {
      }

      if (v112 < v111)
      {
        goto LABEL_177;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1974DAF28(v7);
      }

      if (v110 - 2 >= *(v7 + 2))
      {
        goto LABEL_178;
      }

      v113 = &v7[16 * v110];
      *v113 = v111;
      *(v113 + 1) = v112;
      result = sub_1974DAE9C(v110 - 1);
      v110 = *(v7 + 2);
      if (v110 <= 1)
      {
      }
    }

    goto LABEL_188;
  }
}

uint64_t sub_1974DABD8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
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

      v16 = *v6;
      v17 = *v4;
      swift_beginAccess();
      v18 = *(v16 + 16);
      v19 = *(v16 + 24);
      swift_beginAccess();
      v20 = v18 == *(v17 + 16) && v19 == *(v17 + 24);
      if (!v20 && (sub_19752282C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v20 = v7 == v4;
      v4 += 8;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v20 = v7 == v6;
    v6 += 8;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
    do
    {
      v29 = v6;
      v21 = v6 - 8;
      v5 -= 8;
      v22 = v14;
      while (1)
      {
        v23 = *(v22 - 1);
        v22 -= 8;
        v6 = v21;
        v24 = *v21;
        swift_beginAccess();
        v25 = *(v23 + 16);
        v26 = *(v23 + 24);
        swift_beginAccess();
        v27 = v25 == *(v24 + 16) && v26 == *(v24 + 24);
        if (!v27 && (sub_19752282C() & 1) != 0)
        {
          break;
        }

        if (v5 + 8 != v14)
        {
          *v5 = *v22;
        }

        v5 -= 8;
        v14 = v22;
        v21 = v6;
        if (v22 <= v4)
        {
          v14 = v22;
          v6 = v29;
          goto LABEL_43;
        }
      }

      if (v5 + 8 != v29)
      {
        *v5 = *v6;
      }
    }

    while (v14 > v4 && v6 > v7);
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_1974DAE9C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1974DAF28(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1974DAF3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B388, &qword_19752D540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_3(v10);
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

uint64_t sub_1974DB040()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_19751E87C();
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1974DB0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1975227EC();
  if (swift_dynamicCastClass())
  {
    return 5;
  }

  sub_19752232C();
  if (swift_dynamicCastClass())
  {
    return 4;
  }

  sub_197522B2C();
  if (swift_dynamicCastClass())
  {
    return 3;
  }

  sub_19752228C();
  return swift_dynamicCastClass() != 0;
}

uint64_t sub_1974DB180(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  v12 = sub_1974DB0CC(*(*a1 + 16), a3, a5);
  result = sub_1974DB0CC(*(a2 + 16), a4, a6);
  if (v12 < result)
  {
    swift_beginAccess();
    *a1 = a2;
  }

  return result;
}

unint64_t sub_1974DB23C(unint64_t a1)
{
  v28 = a1;

  v1 = sub_1974D4E94();
  if (!v1)
  {
    goto LABEL_33;
  }

  v27 = v1;
  swift_beginAccess();
  while (1)
  {
    v2 = v28;
    v3 = v28 >> 62;
    if (v28 >> 62)
    {
      break;
    }

    if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

LABEL_6:
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v3 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v2 = sub_19751E87C();
    }

    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      __break(1u);
LABEL_30:
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000004FLL, 0x8000000197528AE0);
      v22 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v22);

      while (1)
      {
LABEL_33:
        sub_1975223EC();
        __break(1u);
      }
    }

    v6 = v5 - 1;
    v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
    *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    v28 = v2;
    v8 = v27;
    v9 = *(v27 + 24) == *(v7 + 24) && *(v27 + 32) == *(v7 + 32);
    if (!v9 && (sub_19752282C() & 1) == 0)
    {
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000053, 0x8000000197528A80);
      v23 = *(v8 + 24);
      v24 = *(v8 + 32);

      MEMORY[0x19A8DFF80](v23, v24);

      MEMORY[0x19A8DFF80](0x202E737620, 0xE500000000000000);
      MEMORY[0x19A8DFF80](*(v7 + 24), *(v7 + 32));
      goto LABEL_33;
    }

    v10 = sub_197521FFC();
    sub_197521FFC();
    v12 = v11;
    v13 = sub_197521FFC();
    sub_197521FFC();
    v15 = v14;
    if (v10 != v13)
    {
      v16 = swift_conformsToProtocol2();
      if (v16)
      {
        v17 = v10 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        goto LABEL_30;
      }

      v18 = v16;
      v19 = swift_conformsToProtocol2();
      if (!v19 || v13 == 0)
      {
        goto LABEL_30;
      }

      if (!sub_1974A9BCC(v13, v19, v10) && !sub_1974A9BCC(v10, v18, v13))
      {
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD00000000000004ALL, 0x8000000197528B30);
        v25 = sub_197522B8C();
        MEMORY[0x19A8DFF80](v25);

        MEMORY[0x19A8DFF80](0x202E737620, 0xE500000000000000);
        v26 = sub_197522B8C();
        MEMORY[0x19A8DFF80](v26);

        goto LABEL_33;
      }
    }

    sub_1974DB180(&v27, v7, v10, v13, v12, v15);
  }

  if (sub_1975220EC())
  {
    goto LABEL_6;
  }

LABEL_28:

  swift_beginAccess();
  return v27;
}

uint64_t _s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v8 = *a1;
  v9 = *a2;
  v3 = *(a2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B418, &qword_19752F170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19752D100;
  *(inited + 32) = v8;
  *(inited + 48) = v2;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_19752D100;
  *(v5 + 32) = v9;
  *(v5 + 48) = v3;
  if (sub_1974D1990(inited, v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_19749ED2C(v5, inited);
  }

  return v6 & 1;
}

uint64_t _s9SwiftData6SchemaC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v15 = *(a1 + 40);
  v16 = v4;
  v5 = *(a2 + 56);
  v13 = *(a2 + 40);
  v14 = v5;
  if (_s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(&v15, &v13))
  {
    return 0;
  }

  v11 = v15;
  v12 = v16;
  v9 = v13;
  v10 = v14;
  if (_s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(&v9, &v11))
  {
    return 0;
  }

  v7 = *(a1 + 64);
  v8 = *(a2 + 64);

  return sub_197421268(v7, v8);
}

uint64_t sub_1974DB8D4(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 >> 62;
  v5 = (*a1 & 0xFFFFFFFFFFFFFF8);
  if (v4)
  {
    goto LABEL_67;
  }

  v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  swift_beginAccess();
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      if (v4)
      {
        return sub_1975220EC();
      }

      else
      {
        return v5[2];
      }
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x19A8E0960](v7, v3);
    }

    else
    {
      if (v7 >= v5[2])
      {
        goto LABEL_63;
      }

      v8 = *(v3 + 8 * v7 + 32);
    }

    swift_beginAccess();
    if (*(v8 + 16) == *(a2 + 16) && *(v8 + 24) == *(a2 + 24))
    {
      break;
    }

    v10 = sub_19752282C();

    if (v10)
    {
      goto LABEL_20;
    }

    v12 = __OFADD__(v7++, 1);
    if (v12)
    {
      goto LABEL_64;
    }
  }

LABEL_20:
  v13 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    v5 = a1;
    while (1)
    {
      if (v3 >> 62)
      {
        if (v13 == sub_1975220EC())
        {
          return v7;
        }
      }

      else if (v13 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return v7;
      }

      v4 = v3 & 0xC000000000000001;
      if ((v3 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x19A8E0960](v13, v3);
      }

      else
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          v6 = sub_1975220EC();
          goto LABEL_3;
        }

        if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v14 = *(v3 + 8 * v13 + 32);
      }

      swift_beginAccess();
      if (*(v14 + 16) == *(a2 + 16) && *(v14 + 24) == *(a2 + 24))
      {
      }

      else
      {
        v15 = sub_19752282C();

        if ((v15 & 1) == 0)
        {
          if (v7 != v13)
          {
            if (v4)
            {
              v16 = MEMORY[0x19A8E0960](v7, v3);
              v17 = MEMORY[0x19A8E0960](v13, v3);
            }

            else
            {
              if ((v7 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
                break;
              }

              v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v7 >= v18)
              {
                goto LABEL_69;
              }

              if (v13 >= v18)
              {
                goto LABEL_70;
              }

              v16 = *(v3 + 32 + 8 * v7);
              v17 = *(v3 + 32 + 8 * v13);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
            {
              v3 = sub_19751E884();
              v19 = (v3 >> 62) & 1;
            }

            else
            {
              LODWORD(v19) = 0;
            }

            v4 = v3 & 0xFFFFFFFFFFFFFF8;
            *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v17;

            if ((v3 & 0x8000000000000000) != 0 || v19)
            {
              v3 = sub_19751E884();
              v4 = v3 & 0xFFFFFFFFFFFFFF8;
              if ((v13 & 0x8000000000000000) != 0)
              {
LABEL_57:
                __break(1u);
                return sub_1975220EC();
              }
            }

            else if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_57;
            }

            if (v13 >= *(v4 + 16))
            {
              goto LABEL_66;
            }

            *(v4 + 8 * v13 + 32) = v16;

            *a1 = v3;
          }

          v12 = __OFADD__(v7++, 1);
          if (v12)
          {
            goto LABEL_65;
          }
        }
      }

      v12 = __OFADD__(v13++, 1);
      if (v12)
      {
        goto LABEL_62;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1974DBC1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = (result + 8);
  v8 = (result + 64);
  while (1)
  {
    v9 = v6;
    v10 = *v5;
    if (*v5 > 0x7FF)
    {
LABEL_5:
      v11 = v8;
      v12 = 36;
LABEL_6:
      v13 = *(*v11 + v12);
      goto LABEL_7;
    }

    if (v10 == 512)
    {
      v11 = v7;
      v12 = 20;
      goto LABEL_6;
    }

    if (!v10)
    {
      goto LABEL_5;
    }

    result = sub_19752148C();
    if (result != v10)
    {
      if (!v9)
      {
        return v9;
      }

      goto LABEL_8;
    }

    sub_19752145C();
    v13 = sub_19752143C();
    result = sub_19752143C();
    if (result < 0)
    {
      goto LABEL_47;
    }

    result = sub_19752143C();
    if (v13 < 0 || result < v13)
    {
      goto LABEL_48;
    }

LABEL_7:
    if (v9 == v13)
    {
      return 0;
    }

LABEL_8:
    v14 = *v5;
    if (*v5 > 0x7FF)
    {
      goto LABEL_11;
    }

    if (v14 == 512)
    {
      v15 = v7;
      v16 = 20;
      goto LABEL_12;
    }

    if (!v14)
    {
LABEL_11:
      v15 = v8;
      v16 = 36;
LABEL_12:
      v17 = *(*v15 + v16);
      goto LABEL_13;
    }

    result = sub_19752148C();
    if (result == v14)
    {
      sub_19752145C();
      v17 = sub_19752143C();
      result = sub_19752143C();
      if (result < 0)
      {
        goto LABEL_49;
      }

      result = sub_19752143C();
      if (v17 < 0 || result < v17)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v17 = 0;
    }

LABEL_13:
    if (v9 >= v17)
    {
      break;
    }

    v18 = *v5;
    v19 = sub_19752148C();
    if (v18 > 0x7FF)
    {
      if (v19 - 2048 < 0xFFFFFFFFFFFFF801)
      {
        goto LABEL_19;
      }
    }

    else if (v19 >= 0x800)
    {
      if (!v18)
      {
LABEL_19:
        sub_19752145C();
        sub_19752144C();
        v20 = sub_19752142C();
        goto LABEL_22;
      }
    }

    else if (v18 == v19)
    {
      goto LABEL_19;
    }

    sub_19752146C();
    v20 = sub_19752186C();
LABEL_22:
    if (v20 == a2 && v21 == a3)
    {

      return v9;
    }

    v23 = sub_19752282C();

    v6 = v9 + 1;
    if (v23)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

void *sub_1974DBEE8(void *a1, char a2)
{
  if (qword_1ED7C9CC0 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED7C9CC8;
  [qword_1ED7C9CC8 lock];
  if (qword_1ED7C9598 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = sub_19741AA7C(a1, qword_1ED7CE630);
  swift_endAccess();
  if (!v5)
  {
    v7 = sub_19741AB44();
    v5 = v7;
    if (v7)
    {
      [v7 _makeImmutable];
      if (a2)
      {
        swift_beginAccess();
        sub_197420530(v5, a1);
        swift_endAccess();
      }
    }
  }

  [v4 unlock];
  return v5;
}

unint64_t sub_1974DC038()
{
  result = qword_1EAF2BAC8;
  if (!qword_1EAF2BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BAC8);
  }

  return result;
}

uint64_t sub_1974DC08C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646F636E65 && a2 == 0xEF6E6F6973726556;
  if (v4 || (sub_19752282C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_19752282C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_19752282C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1974DC1AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_19752282C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6E696DLL && a2 == 0xE500000000000000 || (sub_19752282C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6863746170 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_19752282C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1974DC2B8(unint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  if (qword_1ED7C9B38 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v6 = qword_1ED7C9B50;
    *(v2 + 16) = xmmword_1ED7C9B40;
    *(v2 + 32) = v6;
    *(v2 + 40) = v4;
    *(v2 + 56) = v5;
    *(v2 + 64) = a1;
    v5 = a1 >> 62 ? sub_1975220EC() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = v2;

    if (!v5)
    {
      break;
    }

    v7 = 0;
    v2 = MEMORY[0x1E69E7CC8];
    while ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x19A8E0960](v7, a1);
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_26;
      }

LABEL_11:
      swift_beginAccess();
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = sub_1973F4028(v12, v11);
      v16 = *(v2 + 16);
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        goto LABEL_28;
      }

      v20 = v15;
      if (*(v2 + 24) < v19)
      {
        sub_197417494(v19, isUniquelyReferenced_nonNull_native);
        v14 = sub_1973F4028(v12, v11);
        if ((v20 & 1) != (v21 & 1))
        {
          result = sub_1975229CC();
          __break(1u);
          return result;
        }

LABEL_16:
        if (v20)
        {
          goto LABEL_6;
        }

        goto LABEL_17;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v25 = v14;
      sub_197479C28();
      v14 = v25;
      if (v20)
      {
LABEL_6:
        v8 = v14;

        *(*(v2 + 56) + 8 * v8) = v9;

        goto LABEL_7;
      }

LABEL_17:
      *(v2 + 8 * (v14 >> 6) + 64) |= 1 << v14;
      v22 = (*(v2 + 48) + 16 * v14);
      *v22 = v12;
      v22[1] = v11;
      *(*(v2 + 56) + 8 * v14) = v9;

      v23 = *(v2 + 16);
      v18 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v18)
      {
        goto LABEL_29;
      }

      *(v2 + 16) = v24;
LABEL_7:
      ++v7;
      if (v10 == v5)
      {
        goto LABEL_25;
      }
    }

    if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    v9 = *(a1 + 8 * v7 + 32);

    v10 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_11;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v28 = v4;
    swift_once();
    v4 = v28;
  }

  v2 = MEMORY[0x1E69E7CC8];
LABEL_25:
  result = v27;
  *(v27 + 72) = v2;
  return result;
}

unint64_t sub_1974DC574()
{
  result = qword_1EAF2BAD8;
  if (!qword_1EAF2BAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BAD8);
  }

  return result;
}

unint64_t sub_1974DC5C8()
{
  result = qword_1EAF2BAE0;
  if (!qword_1EAF2BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BAE0);
  }

  return result;
}

unint64_t sub_1974DC61C()
{
  result = qword_1EAF2BB08;
  if (!qword_1EAF2BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BB08);
  }

  return result;
}

uint64_t sub_1974DC670(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BAE8, &qword_1975309C8);
    sub_197420CF8(a2, 255, type metadata accessor for Schema.Entity, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1974DC710()
{
  result = qword_1EAF2BB38;
  if (!qword_1EAF2BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BB38);
  }

  return result;
}

unint64_t sub_1974DC764()
{
  result = qword_1EAF2BB48;
  if (!qword_1EAF2BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BB48);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9SwiftData12ModelContextCs5Error_pIeghgzo_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_1974DC7F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0xFFFFFFF);
  }

  v3 = *(a1 + 24);
  v4 = (((v3 >> 36) >> 27) & 0xF0000001 | (2 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) & 0x3FFF | (*(a1 + 16) >> 43) & 0x1E0000 | ((*(a1 + 16) & 7) << 14) & 0x7FFFFFF | (v3 >> 36) & 0x7000000 | ((v3 & 7) << 21) & 0x7FFFFFF))) ^ 0xFFFFFFF;
  if (v4 >= 0xFFFFFFE)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t sub_1974DC88C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0xFFFFFFF;
    if (a3 >= 0xFFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x7FFFFFF) - (a2 << 27);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      v4 = vdupq_n_s64(v3);
      *(result + 8) = vorrq_s8(vandq_s8(vshlq_u64(v4, xmmword_1975309A0), vdupq_n_s64(7uLL)), vandq_s8(vshlq_u64(v4, xmmword_1975309B0), vdupq_n_s64(0xF000000000000000)));
      *(result + 24) = ((v3 >> 21) | (v3 << 36)) & 0xF000000000000007;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
    }
  }

  return result;
}

int8x16_t sub_1974DC964(int8x16_t *a1, uint64_t a2)
{
  v2 = a1[1].i64[0] & 0xFFFFFFFFFFFFFF8;
  v3 = a1[1].i64[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  result = vandq_s8(*a1, vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL));
  *a1 = result;
  a1[1].i64[0] = v2;
  a1[1].i64[1] = v3;
  return result;
}

uint64_t dispatch thunk of Schema.__allocating_init(_:version:)()
{
  return (*(v0 + 120))();
}

{
  return (*(v0 + 128))();
}

uint64_t getEnumTagSinglePayload for Schema.Version(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Schema.Version(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1974DCAB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1974DCB00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1974DCB6C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1974DCBFC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1974DCCC0(uint64_t a1, int a2)
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

uint64_t sub_1974DCD08(uint64_t result, int a2, int a3)
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

unint64_t sub_1974DCD68()
{
  result = qword_1EAF2BB50;
  if (!qword_1EAF2BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BB50);
  }

  return result;
}

unint64_t sub_1974DCDC0()
{
  result = qword_1EAF2BB58;
  if (!qword_1EAF2BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BB58);
  }

  return result;
}

unint64_t sub_1974DCE18()
{
  result = qword_1EAF2BB60;
  if (!qword_1EAF2BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BB60);
  }

  return result;
}

unint64_t sub_1974DCE70()
{
  result = qword_1EAF2BB68;
  if (!qword_1EAF2BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BB68);
  }

  return result;
}

unint64_t sub_1974DCEC8()
{
  result = qword_1EAF2BB70;
  if (!qword_1EAF2BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BB70);
  }

  return result;
}

unint64_t sub_1974DCF20()
{
  result = qword_1EAF2BB78;
  if (!qword_1EAF2BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BB78);
  }

  return result;
}

uint64_t sub_1974DCF84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1974DCFCC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1974DD018()
{
  result = qword_1EAF2BB88;
  if (!qword_1EAF2BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BB88);
  }

  return result;
}

uint64_t sub_1974DD06C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1974DD0B4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t FetchDescriptor.predicate.getter@<X0>(uint64_t a2@<X8>)
{
  sub_19752139C();
  v4 = sub_197521F5C();
  return (*(*(v4 - 8) + 16))(a2, v2, v4);
}

uint64_t FetchDescriptor.sortBy.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
  return result;
}

uint64_t FetchDescriptor.fetchLimit.setter(uint64_t result, char a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 40);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t FetchDescriptor.fetchOffset.setter(uint64_t result, char a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 44);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t FetchDescriptor.propertiesToFetch.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);

  *(v2 + v4) = a1;
  return result;
}

uint64_t FetchDescriptor.relationshipKeyPathsForPrefetching.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);

  *(v2 + v4) = a1;
  return result;
}

uint64_t static FetchDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v39 = a2;
  v40 = a3;
  v37 = a3;
  v5 = sub_19752139C();
  v6 = sub_197521F5C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v35 - v13;
  v15 = *(v7 + 16);
  v36 = a1;
  v38 = v15;
  v15(&v35 - v13, a1, v6);
  v16 = *(*(v5 - 8) + 48);
  v17 = v16(v14, 1, v5);
  v18 = *(v7 + 8);
  v18(v14, v6);
  if (v17 != 1)
  {
    goto LABEL_5;
  }

  v19 = v39;
  v38(v11, v39, v6);
  v20 = v16(v11, 1, v5);
  v18(v11, v6);
  if (v20 != 1)
  {
    goto LABEL_5;
  }

  Descriptor = type metadata accessor for FetchDescriptor(0, v37, v35, v21);
  if (*(v36 + Descriptor[12]) != *(v19 + Descriptor[12]) || *(v36 + Descriptor[15]) != *(v19 + Descriptor[15]))
  {
    goto LABEL_5;
  }

  v25 = Descriptor[10];
  v26 = (v36 + v25);
  v27 = *(v36 + v25 + 8);
  v28 = (v19 + v25);
  v29 = *(v19 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      goto LABEL_5;
    }
  }

  v30 = Descriptor[11];
  v31 = (v36 + v30);
  v32 = *(v36 + v30 + 8);
  v33 = (v19 + v30);
  v34 = *(v19 + v30 + 8);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      goto LABEL_5;
    }
  }

  sub_19752228C();
  if (sub_197521ACC() & 1) != 0 && (sub_197521ACC())
  {
    sub_197520C4C();
    swift_getWitnessTable();
    v23 = sub_197521ACC();
    return v23 & 1;
  }

LABEL_5:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1974DD830@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = sub_1973F7BBC(a1, a2, a3);
  v7 = v6;
  result = sub_19752189C();
  if (result)
  {
    sub_197416D54();
    sub_197521F9C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFA0, &qword_19752C710);
    sub_1974EDD00(&qword_1EAF2AFA8, &qword_1EAF2AFA0, &qword_19752C710, MEMORY[0x1E69E6958]);
    v5 = sub_1975216CC();
    v7 = v9;
    result = swift_unknownObjectRelease();
  }

  *a4 = v5;
  a4[1] = v7;
  return result;
}

id sub_1974DD97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v80 = a5;
  v77 = a2;
  v73 = a6;
  v76 = sub_197520DAC();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v9);
  v74 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_19752119C();
  v78 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v11);
  v83 = &v73 - v12;
  v92[6] = a3;
  v13 = sub_19752139C();
  v14 = sub_197521F5C();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v73 - v18;
  v20 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v17, v21);
  v82 = &v73 - v22;
  v85 = a3;
  v86 = a4;
  sub_1973F7AAC(a3);
  v23 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v24 = sub_19752178C();

  v88 = [v23 initWithEntityName_];

  v25 = *(v15 + 16);
  v79 = a1;
  v25(v19, a1, v14);
  v81 = v20;
  if ((*(v20 + 48))(v19, 1, v13) == 1)
  {
    (*(v15 + 8))(v19, v14);
  }

  else
  {
    (*(v81 + 32))(v82, v19, v13);
    v92[3] = v83;
    sub_19752138C();
    v27 = v74;
    sub_19752118C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF88, &qword_19752C6F8);
    v28 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF90, &qword_19752C700) - 8);
    v29 = (*(*v28 + 80) + 32) & ~*(*v28 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_19752C280;
    v31 = v30 + v29;
    v32 = v30 + v29 + v28[14];
    v33 = v75;
    v34 = v30 + v29;
    v35 = v76;
    (*(v75 + 16))(v34, v27, v76);
    v36 = [objc_opt_self() expressionForEvaluatedObject];
    *(v32 + 8) = 0u;
    *(v32 + 24) = 0u;
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0;
    *v32 = v36;
    v37 = sub_197407784(v30);
    swift_setDeallocating();
    sub_19740797C(v31, &qword_1EAF2AF90, &qword_19752C700);
    swift_deallocClassInstance();
    (*(v33 + 8))(v27, v35);
    v92[0] = 1;
    v92[1] = v37;
    v92[2] = v77;

    sub_19752136C();
    v38 = v90;
    v39 = v91;
    __swift_project_boxed_opaque_existential_0Tm(v89, v90);
    v40 = v87;
    sub_197407C0C(v92, v38, *(v39 + 8));
    if (v40)
    {

      (*(v81 + 8))(v82, v13);
      __swift_destroy_boxed_opaque_existential_0Tm_0(v89);
      result = (*(v78 + 8))(v83, v84);
      *v80 = v40;
      return result;
    }

    v43 = v41;
    v87 = 0;
    __swift_destroy_boxed_opaque_existential_0Tm_0(v89);
    [v88 setPredicate_];

    (*(v81 + 8))(v82, v13);
    (*(v78 + 8))(v83, v84);
  }

  v45 = v85;
  v44 = v86;
  Descriptor = type metadata accessor for FetchDescriptor(0, v85, v86, v26);
  v47 = v79;
  v89[0] = *(v79 + Descriptor[9]);
  MEMORY[0x1EEE9AC00](Descriptor, v48);
  *(&v73 - 2) = v45;
  *(&v73 - 1) = v44;
  sub_197520C4C();
  v49 = sub_197521AAC();
  v50 = sub_197408568(0, &qword_1ED7C9358, 0x1E696AEB0);

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
  WitnessTable = swift_getWitnessTable();
  v53 = v87;
  sub_1974048EC(sub_1974EDD70, (&v73 - 4), v49, v50, v51, WitnessTable, MEMORY[0x1E69E7288], v92);
  if (v53)
  {

    *v80 = v92[0];
  }

  else
  {

    v54 = sub_1975219BC();

    v55 = v88;
    [v88 setSortDescriptors_];

    v58 = v47 + Descriptor[10];
    if ((*(v58 + 8) & 1) == 0)
    {
      v56 = [v55 setFetchLimit_];
    }

    v59 = v47 + Descriptor[11];
    v61 = v85;
    v60 = v86;
    if ((*(v59 + 8) & 1) == 0)
    {
      v56 = [v55 setFetchOffset_];
    }

    v89[0] = *(v47 + Descriptor[13]);
    MEMORY[0x1EEE9AC00](v56, v57);
    *(&v73 - 2) = v61;
    *(&v73 - 1) = v60;
    sub_19752228C();
    v62 = sub_197521AAC();

    v63 = swift_getWitnessTable();
    v64 = sub_1974048EC(sub_1974EDD90, (&v73 - 4), v62, MEMORY[0x1E69E6158], v51, v63, MEMORY[0x1E69E7288], v92);

    if (*(v64 + 16))
    {
      sub_1974AE9C4(v64);

      v65 = sub_1975219BC();

      [v88 setPropertiesToFetch_];
    }

    else
    {
    }

    v68 = v79;
    v89[0] = *(v79 + Descriptor[14]);
    MEMORY[0x1EEE9AC00](v66, v67);
    v69 = v86;
    *(&v73 - 2) = v85;
    *(&v73 - 1) = v69;

    v70 = sub_1974048EC(sub_1974EE090, (&v73 - 4), v62, MEMORY[0x1E69E6158], v51, v63, MEMORY[0x1E69E7288], v92);

    v71 = v88;
    if (*(v70 + 16))
    {
      v72 = sub_1975219BC();

      [v71 setRelationshipKeyPathsForPrefetching_];
    }

    else
    {
    }

    result = [v71 setIncludesPendingChanges_];
    *v73 = v71;
  }

  return result;
}

void sub_1974DE394(char *a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  v8 = sub_197520C4C();
  sub_197411D1C(v8, a2);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = v9;
  }
}

void sub_1974DE400(uint64_t *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  sub_1974084E0(*a1, a2, a3);
  if (v5)
  {
    *a4 = v5;
  }

  else
  {
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      *a5 = v8;
      a5[1] = v9;
    }

    else
    {

      if (qword_1EAF2AD28 != -1)
      {
        swift_once();
      }

      v11 = byte_1EAF2B6F8;
      v13 = qword_1EAF2B700;
      v12 = unk_1EAF2B708;
      sub_19744BE3C();
      v14 = swift_allocError();
      *v15 = v11;
      *(v15 + 8) = v13;
      *(v15 + 16) = v12;
      swift_willThrow();
      *a4 = v14;
    }
  }
}

uint64_t sub_1974DE4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, void *a5@<X8>)
{
  v31 = a4;
  v32 = a1;
  v34 = a2;
  v30 = a5;
  v6 = sub_197520DAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_19752119C();
  v33 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v29 - v13;
  v39[5] = &v29 - v13;
  v39[3] = a3;
  sub_19752139C();
  sub_19752138C();
  sub_19752118C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF88, &qword_19752C6F8);
  v15 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF90, &qword_19752C700) - 8);
  v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_19752C280;
  v18 = v17 + v16;
  v19 = v18 + v15[14];
  (*(v7 + 16))(v18, v10, v6);
  v20 = [objc_opt_self() expressionForEvaluatedObject];
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  *(v19 + 40) = 0u;
  *(v19 + 56) = 0;
  *v19 = v20;
  v21 = sub_197407784(v17);
  swift_setDeallocating();
  sub_19740797C(v18, &qword_1EAF2AF90, &qword_19752C700);
  swift_deallocClassInstance();
  (*(v7 + 8))(v10, v6);
  v39[0] = 1;
  v39[1] = v21;
  v39[2] = v34;

  sub_19752136C();
  v22 = v37;
  v23 = v38;
  __swift_project_boxed_opaque_existential_0Tm(v36, v37);
  v24 = v35;
  sub_197407C0C(v39, v22, *(v23 + 8));
  v26 = (v33 + 8);
  if (v24)
  {

    __swift_destroy_boxed_opaque_existential_0Tm_0(v36);
    result = (*v26)(v14, v11);
    *v31 = v24;
  }

  else
  {
    v28 = v25;

    *v30 = v28;
    __swift_destroy_boxed_opaque_existential_0Tm_0(v36);
    return (*v26)(v14, v11);
  }

  return result;
}