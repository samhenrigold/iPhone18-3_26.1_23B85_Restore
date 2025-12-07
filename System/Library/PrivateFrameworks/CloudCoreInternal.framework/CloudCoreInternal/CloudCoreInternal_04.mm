uint64_t sub_1C93EECA0(int64_t a1)
{
  v28 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  v3 = *(v28 - 8);
  result = MEMORY[0x1EEE9AC00](v28);
  v31 = &v28 - v5;
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = _HashTable.previousHole(before:)();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v29 = v6;
      v30 = v7;
      v12 = (v11 + 1) & v10;
      v32 = *(v3 + 72);
      v13 = v31;
      while (1)
      {
        v14 = v32 * v9;
        sub_1C93EFDB4(*(v6 + 48) + v32 * v9, v13, &qword_1EC39B5F8, qword_1C9404A00);
        Hasher.init(_seed:)();
        sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
        sub_1C93EFE14(&qword_1EE02B3A0, &qword_1EC39B5D0, &qword_1C9404AB0, MEMORY[0x1E69E8668]);
        v15 = v12;
        dispatch thunk of Hashable.hash(into:)();
        v16 = Hasher._finalize()();
        sub_1C93A4838(v13, &qword_1EC39B5F8, qword_1C9404A00);
        v17 = v16 & v10;
        v12 = v15;
        if (a1 >= v15)
        {
          if (v17 < v15 || a1 < v17)
          {
LABEL_20:
            v6 = v29;
            goto LABEL_24;
          }
        }

        else if (v17 < v15 && a1 < v17)
        {
          goto LABEL_20;
        }

        v6 = v29;
        v19 = *(v29 + 48);
        v20 = v32 * a1;
        v21 = v19 + v32 * a1;
        v22 = v19 + v14 + v32;
        if (v32 * a1 < v14 || v21 >= v22)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          a1 = v9;
          goto LABEL_24;
        }

        a1 = v9;
        if (v20 != v14)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v9 = (v9 + 1) & v10;
        if (((*(v30 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {

          v7 = v30;
          goto LABEL_28;
        }
      }
    }

LABEL_28:
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v25 = *(v6 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v27;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_1C93EEFCC(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for ExponentialBackoff<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C93EF00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ExponentialBackoff.State(255, *(a1 + 80), *(a1 + 88), a4);
  result = type metadata accessor for Mutex();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C93EF0F8(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      v4 = type metadata accessor for Optional();
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_1C93EF814(319);
        AssociatedTypeWitness = v6;
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1C93EF210(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v7;
  }

  v12 = v10 - 1;
  if (!v10)
  {
    v12 = 0;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  if (v11 <= v10)
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = v11;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 80);
  v16 = *(v9 + 80);
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  v18 = v17 + 7;
  if (v10)
  {
    v19 = v17 + 7;
  }

  else
  {
    v19 = v17 + 8;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = AssociatedTypeWitness;
  v21 = *(v6 + 64) + 7;
  v22 = v16 + 8;
  v23 = v17 + v16;
  if (v14 >= a2)
  {
LABEL_37:
    if ((v13 & 0x80000000) == 0)
    {
      v31 = *(a1 + 1);
      if (v31 >= 0xFFFFFFFF)
      {
        LODWORD(v31) = -1;
      }

      return (v31 + 1);
    }

    v32 = (a1 + v15 + 16) & ~v15;
    if (v7 == v14)
    {
      v10 = v7;
      v20 = v5;
LABEL_44:

      return sub_1C93A4810(v32, v10, v20);
    }

    v33 = ~v16;
    v32 = (v22 + ((v21 + v32) & 0xFFFFFFFFFFFFFFF8)) & v33;
    if (v10 == v14)
    {
      goto LABEL_44;
    }

    if (v10 >= 2)
    {
      v34 = sub_1C93A4810((v23 + ((v23 + v32) & v33)) & v33, v10, v20);
      if (v34 >= 2)
      {
        return v34 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  result = ((v18 + ((v22 + ((v19 + ((v23 + ((v23 + ((v22 + ((v21 + ((v15 + 16) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & ~v16)) & ~v16)) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if ((result & 0xFFFFFFF8) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = a2 - v14 + 1;
  }

  if (v25 >= 0x10000)
  {
    v26 = 4;
  }

  else
  {
    v26 = 2;
  }

  if (v25 < 0x100)
  {
    v26 = 1;
  }

  if (v25 >= 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  switch(v27)
  {
    case 1:
      v28 = *(a1 + result);
      if (!*(a1 + result))
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    case 2:
      v28 = *(a1 + result);
      if (!*(a1 + result))
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    case 3:
      __break(1u);
      return result;
    case 4:
      v28 = *(a1 + result);
      if (!v28)
      {
        goto LABEL_37;
      }

LABEL_34:
      v29 = v28 - 1;
      if ((result & 0xFFFFFFF8) != 0)
      {
        v29 = 0;
        v30 = *a1;
      }

      else
      {
        v30 = 0;
      }

      result = v14 + (v30 | v29) + 1;
      break;
    default:
      goto LABEL_37;
  }

  return result;
}

void sub_1C93EF4EC(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = 0;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 84);
  if (v9 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = v9;
  }

  v15 = v13 - 1;
  if (!v13)
  {
    v15 = 0;
  }

  if (v14 <= v15)
  {
    v14 = v15;
  }

  if (v14 <= v13)
  {
    v16 = *(v12 + 84);
  }

  else
  {
    v16 = v14;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v8 + 80);
  v19 = *(v8 + 64) + 7;
  v20 = *(v12 + 80);
  v21 = v20 + 8;
  v22 = *(*(AssociatedTypeWitness - 8) + 64);
  v23 = v22 + v20;
  v24 = (v22 + v20 + ((v22 + v20 + ((v20 + 8 + ((v19 + ((v18 + 16) & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v20)) & ~v20)) & ~v20;
  v25 = v22 + 7;
  v26 = v22 + 8;
  if (v13)
  {
    v26 = v25;
  }

  v27 = ((v25 + ((v21 + ((v26 + v24) & 0xFFFFFFFFFFFFFFF8)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17 < a3)
  {
    if (((v25 + ((v21 + ((v26 + v24) & 0xFFFFFFF8)) & ~v20)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v28 = a3 - v17 + 1;
    }

    else
    {
      v28 = 2;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v11 = v29;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 <= v17)
  {
    v32 = ~v20;
    switch(v11)
    {
      case 1:
        *(a1 + v27) = 0;
        if (a2)
        {
          goto LABEL_43;
        }

        return;
      case 2:
        *(a1 + v27) = 0;
        if (a2)
        {
          goto LABEL_43;
        }

        return;
      case 3:
LABEL_59:
        __break(1u);
        return;
      case 4:
        *(a1 + v27) = 0;
        goto LABEL_42;
      default:
LABEL_42:
        if (!a2)
        {
          return;
        }

LABEL_43:
        if ((v16 & 0x80000000) != 0)
        {
          v33 = (a1 + v18 + 16) & ~v18;
          if (v9 == v17)
          {
            v34 = a2;
            v13 = v9;
            AssociatedTypeWitness = v7;
          }

          else
          {
            v33 = (v21 + ((v19 + v33) & 0xFFFFFFFFFFFFFFF8)) & v32;
            if (v13 == v17)
            {
              v34 = a2;
            }

            else
            {
              if (v13 < 2)
              {
                return;
              }

              v33 = (v23 + ((v23 + v33) & v32)) & v32;
              v34 = (a2 + 1);
            }
          }

          sub_1C93A1710(v33, v34, v13, AssociatedTypeWitness);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          a1[1] = (a2 - 1);
        }

        break;
    }
  }

  else
  {
    if (v27)
    {
      v30 = 1;
    }

    else
    {
      v30 = a2 - v17;
    }

    if (v27)
    {
      v31 = ~v17 + a2;
      bzero(a1, v27);
      *a1 = v31;
    }

    switch(v11)
    {
      case 1:
        *(a1 + v27) = v30;
        break;
      case 2:
        *(a1 + v27) = v30;
        break;
      case 3:
        goto LABEL_59;
      case 4:
        *(a1 + v27) = v30;
        break;
      default:
        return;
    }
  }
}

void sub_1C93EF814(uint64_t a1)
{
  if (!qword_1EE02B308)
  {
    sub_1C93B27AC(&qword_1EC39B5F8, qword_1C9404A00);
    sub_1C93EFE14(qword_1EE02B310, &qword_1EC39B5F8, qword_1C9404A00, protocol conformance descriptor for Task<A, B>.CancelHandle);
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE02B308);
    }
  }
}

uint64_t sub_1C93EF8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1C93EFE5C;

  return sub_1C93E93AC(a2, a3, a4);
}

uint64_t sub_1C93EF968()
{
  sub_1C93DA724();
  v0 = sub_1C93A1890(&qword_1EC39B5E0, &qword_1C9404A30);
  sub_1C93A5A08(v0);
  v1 = swift_task_alloc();
  v2 = sub_1C93B5C44(v1);
  *v2 = v3;
  v2[1] = sub_1C93B5BC4;
  v4 = sub_1C93EFF94();

  return v5(v4);
}

uint64_t sub_1C93EFA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1C93EFB0C;

  return sub_1C93E9934(a2, a3, a4, a5);
}

uint64_t sub_1C93EFB0C()
{
  sub_1C93DA724();
  v3 = v2;
  v5 = v4;
  sub_1C939D504();
  v7 = v6;
  sub_1C93E3D8C();
  *v8 = v7;
  v9 = *v1;
  sub_1C93B5C54();
  *v10 = v9;

  if (!v0)
  {
    v11 = *(v7 + 16);
    *v11 = v5;
    *(v11 + 8) = v3;
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1C93EFC18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C93EFC88()
{
  sub_1C93DA798();
  v0 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  sub_1C93A5A08(v0);
  v1 = swift_task_alloc();
  v2 = sub_1C93B5C44(v1);
  *v2 = v3;
  v2[1] = sub_1C93B5BC4;
  sub_1C93EFF94();
  sub_1C93DA880();

  __asm { BR              X5 }
}

void sub_1C93EFD7C(void *a1, char a2)
{
  if (a2 != 254)
  {
    sub_1C93EFD90(a1, a2);
  }
}

void sub_1C93EFD90(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_1C93EFDA8(result, a2 & 1);
  }
}

void sub_1C93EFDA8(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1C93EFDB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C93A1890(a3, a4);
  sub_1C939D430();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C93EFE14(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_1C93B27AC(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C93EFEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ExponentialBackoff.State(255, v5, v4, a4);

  return type metadata accessor for Mutex();
}

uint64_t sub_1C93EFF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for ExponentialBackoff.State(0, v5, v4, a4);
}

uint64_t sub_1C93EFFD4()
{
}

uint64_t sub_1C93EFFF4()
{
  v1 = (v0 + *(*v0 + 96));
  os_unfair_lock_lock(v1);
  v2 = *(sub_1C93A1890(&qword_1EC39B600, &qword_1C9404A18) + 28);
  v3 = *(&v1->_os_unfair_lock_opaque + v2 + *(sub_1C93A1890(&qword_1EC39B608, &qword_1C9404A20) + 60));
  os_unfair_lock_unlock(v1);
  return v3;
}

void sub_1C93F0084()
{
  v1 = (v0 + *(*v0 + 96));
  os_unfair_lock_lock(v1);
  v2 = sub_1C93A1890(&qword_1EC39B600, &qword_1C9404A18);
  sub_1C93F0100(v1 + *(v2 + 28));
  os_unfair_lock_unlock(v1);
}

uint64_t sub_1C93F0100(uint64_t a1)
{
  v28 = sub_1C93A1890(&qword_1EC39B5C8, &unk_1C9404820);
  v2 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v26 = &v25 - v3;
  v4 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  v27 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_1C93A1890(&qword_1EC39B608, &qword_1C9404A20);
  v8 = v7;
  *(a1 + v7[14]) = 0;
  if (*(a1 + v7[10]))
  {
    v9 = static Duration.zero.getter();
    v11 = v8[15];
    *(a1 + v11) = v9;
  }

  else
  {
    v12 = (a1 + v7[11]);
    v11 = v7[15];
    v10 = v12[1];
    *(a1 + v11) = *v12;
  }

  *(a1 + v11 + 8) = v10;
  v13 = *(a1 + v8[16]);
  v14 = v13 + 56;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 56);
  v18 = (v15 + 63) >> 6;
  v19 = (v2 + 8);
  v29 = v13;

  v21 = 0;
  for (i = v26; v17; result = sub_1C93A4838(v6, &qword_1EC39B5F8, qword_1C9404A00))
  {
    v23 = v21;
LABEL_12:
    v24 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_1C93EFDB4(*(v29 + 48) + *(v27 + 72) * (v24 | (v23 << 6)), v6, &qword_1EC39B5F8, qword_1C9404A00);
    sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
    AsyncStream.Continuation.yield(_:)();
    (*v19)(i, v28);
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v18)
    {
    }

    v17 = *(v14 + 8 * v23);
    ++v21;
    if (v17)
    {
      v21 = v23;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C93F0540@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);

  return sub_1C93A1710(a1, 1, 1, v2);
}

void sub_1C93F0594(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 128));
  os_unfair_lock_lock(v4);
  v5 = *(v3 + 96);
  v7[0] = *(v3 + 80);
  v7[1] = v5;
  type metadata accessor for ExponentialNetworkBackoff.State(255, v7);
  v6 = type metadata accessor for Mutex();
  sub_1C93EFDB4(v4 + *(v6 + 28), a1, &qword_1EC39B628, &qword_1C9404A88);
  sub_1C93A1890(&qword_1EC39B628, &qword_1C9404A88);
  j__os_unfair_lock_unlock(v4);
}

uint64_t sub_1C93F0690(uint64_t a1)
{
  v3 = (v1 + *(*v1 + 128));
  os_unfair_lock_lock(v3);
  v4 = sub_1C93A1890(&qword_1EC39B640, &qword_1C9404B68);
  sub_1C93F422C(a1, v3 + *(v4 + 28));
  os_unfair_lock_unlock(v3);
  return sub_1C93A4838(a1, &qword_1EC39B628, &qword_1C9404A88);
}

uint64_t sub_1C93F0714(uint64_t a1)
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 128));
  os_unfair_lock_lock(v4);
  v5 = *(v3 + 96);
  v8[0] = *(v3 + 80);
  v8[1] = v5;
  type metadata accessor for ExponentialNetworkBackoff.State(255, v8);
  v6 = type metadata accessor for Mutex();
  sub_1C93F422C(a1, v4 + *(v6 + 28));
  j__os_unfair_lock_unlock(v4);
  return sub_1C93A4838(a1, &qword_1EC39B628, &qword_1C9404A88);
}

void ExponentialNetworkBackoff.__allocating_init(label:clock:backoffCountBeforeDelay:initialEnforcedDelay:maximumEnforcedDelay:tolerance:networkPathMonitor:)()
{
  sub_1C93A5B40();
  swift_allocObject();
  ExponentialNetworkBackoff.init(label:clock:backoffCountBeforeDelay:initialEnforcedDelay:maximumEnforcedDelay:tolerance:networkPathMonitor:)();
  sub_1C93A5B58();
}

uint64_t sub_1C93F088C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v13 = v12;
  v44 = a7;
  v45 = a8;
  v42 = a5;
  v43 = a6;
  v40 = a2;
  v41 = a4;
  v38 = a9;
  v39 = a1;
  v37 = a10;
  HIDWORD(v36) = a11;
  v15 = sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v36 - v16;
  v18 = type metadata accessor for ContinuousClock();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C93A1890(&qword_1EC39B638, &qword_1C9404B60);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v36 - v23;
  v25 = (v12 + *(*v12 + 128));
  v26 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  sub_1C93A1710(v24, 1, 1, v26);
  *v25 = 0;
  v27 = *(sub_1C93A1890(&qword_1EC39B640, &qword_1C9404B68) + 28);
  v28 = sub_1C93A1890(&qword_1EC39B648, &qword_1C9404B70);
  bzero(v25 + v27, *(*(v28 - 8) + 64));
  sub_1C93F3E1C(v24, v25 + v27);
  (*(v19 + 16))(v21, a3, v18);
  sub_1C93A1890(&qword_1EC39B650, &qword_1C9404B78);
  swift_allocObject();
  LOBYTE(v34) = BYTE4(v36) & 1;
  sub_1C93EAAD4(v39, v40, v21, v41, v42, v43, v44, v45, v38, v37, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
  *(v13 + 16) = v29;
  *(v13 + 24) = a12;
  v30 = type metadata accessor for TaskPriority();
  sub_1C93A1710(v17, 1, 1, v30);
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v31;
  v32[5] = a12;

  sub_1C93F30EC(0, 0, v17, &unk_1C9404B88, v32);

  (*(v19 + 8))(a3, v18);
  return v13;
}

void ExponentialNetworkBackoff.init(label:clock:backoffCountBeforeDelay:initialEnforcedDelay:maximumEnforcedDelay:tolerance:networkPathMonitor:)()
{
  sub_1C93A5B40();
  v1 = v0;
  v73 = v2;
  v74 = v3;
  v82 = v5;
  v83 = v4;
  v84 = v7;
  v85 = v6;
  v70 = v8;
  v71 = v9;
  v10 = *v0;
  v11 = *(*v0 + 88);
  sub_1C939D47C();
  v72 = v12;
  v76 = *(v13 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v62 - v15;
  v16 = sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940);
  sub_1C93A5A08(v16);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v17);
  v80 = &v62 - v18;
  v19 = v10[12];
  v20 = v10[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v81 = type metadata accessor for Optional();
  sub_1C939D47C();
  v79 = v21;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v22);
  v65 = &v62 - v23;
  sub_1C939D47C();
  v78 = v24;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v64 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v63 = &v62 - v28;
  sub_1C939D47C();
  v30 = v29;
  v67 = v29;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v62 - v32;
  *&v34 = v20;
  v62 = v11;
  *(&v34 + 1) = v11;
  v69 = v34;
  *&v35 = v19;
  *(&v35 + 1) = v10[13];
  v68 = v35;
  v86[1] = v35;
  v86[0] = v34;
  v36 = type metadata accessor for ExponentialNetworkBackoff.State(0, v86);
  sub_1C939D430();
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v62 - v38;
  v40 = &v1[v10[16]];
  sub_1C93F0540(&v62 - v38);
  *v40 = 0;
  v41 = *(type metadata accessor for Mutex() + 28);
  v42 = type metadata accessor for _Cell();
  sub_1C93A5A08(v42);
  bzero(&v40[v41], *(v43 + 64));
  sub_1C93EDAB0(v39, &v40[v41], v36);
  v66 = v20;
  type metadata accessor for ExponentialBackoff(0, v20, v19, v44);
  (*(v30 + 16))(v33, v85, v20);
  v45 = AssociatedTypeWitness;
  v46 = *(v78 + 16);
  v47 = v63;
  v46(v63, v84, AssociatedTypeWitness);
  v48 = v64;
  v46(v64, v83, v45);
  v49 = v65;
  (*(v79 + 16))(v65, v82, v81);
  *(v1 + 2) = ExponentialBackoff.__allocating_init(label:clock:backoffCountBeforeDelay:initialEnforcedDelay:maximumEnforcedDelay:tolerance:)(v70, v71, v33, v73, v47, v48, v49);
  v50 = v72;
  v51 = *(v72 + 16);
  v52 = v74;
  v53 = v62;
  v51(&v1[*(*v1 + 120)], v74, v62);
  v54 = type metadata accessor for TaskPriority();
  sub_1C93A1710(v80, 1, 1, v54);
  sub_1C93F4654();
  v55 = swift_allocObject();
  swift_weakInit();
  v56 = v75;
  v51(v75, v52, v53);
  v57 = (*(v50 + 80) + 72) & ~*(v50 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  v59 = v68;
  *(v58 + 32) = v69;
  *(v58 + 48) = v59;
  *(v58 + 64) = v55;
  (*(v50 + 32))(v58 + v57, v56, v53);

  sub_1C93F30EC(0, 0, v80, &unk_1C9404AA0, v58);

  (*(v50 + 8))(v52, v53);
  (*(v79 + 8))(v82, v81);
  v60 = AssociatedTypeWitness;
  v61 = *(v78 + 8);
  v61(v83, AssociatedTypeWitness);
  v61(v84, v60);
  (*(v67 + 8))(v85, v66);
  sub_1C93A5B58();
}

uint64_t sub_1C93F1268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93F1308, 0, 0);
}

uint64_t sub_1C93F1308()
{
  sub_1C93DA69C();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = type metadata accessor for TaskPriority();
  sub_1C93A1710(v1, 1, 1, v4);
  sub_1C93F4654();
  v5 = swift_allocObject();
  sub_1C93F45C4(v3 + 16);
  swift_weakLoadStrong();
  swift_weakInit();

  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v6[5] = v2;
  v0[5] = &unk_1C9404BA0;
  v0[6] = v6;

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C93F1404()
{
  sub_1C93DA69C();
  v1 = v0[10];
  sub_1C93A1890(&qword_1EC39B5F0, &qword_1C9404970);
  v2 = swift_task_alloc();
  v0[11] = v2;
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = v1;
  v2[5] = v0 + 5;
  v2[6] = 0;
  v2[7] = 0;
  swift_task_alloc();
  sub_1C93DA6BC();
  v0[12] = v3;
  *v3 = v4;
  v3[1] = sub_1C93F14FC;
  sub_1C93F4588();

  return MEMORY[0x1EEE6DD58](v5, v6);
}

uint64_t sub_1C93F14FC()
{
  sub_1C939ED74();
  sub_1C939D504();
  v3 = v2;
  v4 = *v1;
  sub_1C93B5C54();
  *v5 = v4;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C93F1604()
{
  sub_1C939ED74();
  v1 = *(v0 + 80);

  sub_1C93A4838(v1, &qword_1EC39ADF0, &qword_1C9404940);

  sub_1C939D624();

  return v2();
}

uint64_t sub_1C93F1680()
{
  sub_1C939ED74();
  v1 = *(v0 + 80);

  sub_1C93A4838(v1, &qword_1EC39ADF0, &qword_1C9404940);
  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C93F1700()
{
  sub_1C939ED74();

  sub_1C939D510();

  return v0();
}

uint64_t sub_1C93F175C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[13] = v12;
  v8[10] = a6;
  v8[11] = a7;
  v8[8] = a4;
  v8[9] = a5;
  v8[7] = a1;
  v9 = *(a7 - 8);
  v8[14] = v9;
  v8[15] = *(v9 + 64);
  v8[16] = swift_task_alloc();
  sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940);
  v8[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93F1860, 0, 0);
}

uint64_t sub_1C93F1860()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 104);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 64);
  v8 = type metadata accessor for TaskPriority();
  v16 = *(v0 + 88);
  sub_1C93A1710(v1, 1, 1, v8);
  sub_1C93F4654();
  v9 = swift_allocObject();
  sub_1C93F45C4(v7 + 16);
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v3 + 16))(v2, v5, v16);
  v10 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v6;
  *(v11 + 40) = v16;
  *(v11 + 56) = v4;
  *(v11 + 64) = v9;
  (*(v3 + 32))(v11 + v10, v2, v16);
  *(v0 + 40) = &unk_1C9404BC0;
  *(v0 + 48) = v11;
  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C93F19E0()
{
  sub_1C93DA69C();
  v1 = v0[17];
  sub_1C93A1890(&qword_1EC39B5F0, &qword_1C9404970);
  v2 = swift_task_alloc();
  v0[18] = v2;
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = v1;
  v2[5] = v0 + 5;
  v2[6] = 0;
  v2[7] = 0;
  swift_task_alloc();
  sub_1C93DA6BC();
  v0[19] = v3;
  *v3 = v4;
  v3[1] = sub_1C93F1AD8;
  sub_1C93F4588();

  return MEMORY[0x1EEE6DD58](v5, v6);
}

uint64_t sub_1C93F1AD8()
{
  sub_1C939ED74();
  sub_1C939D504();
  v3 = v2;
  v4 = *v1;
  sub_1C93B5C54();
  *v5 = v4;
  *(v3 + 160) = v0;

  if (!v0)
  {
  }

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C93F1BE0()
{
  sub_1C939ED74();
  v1 = *(v0 + 136);

  sub_1C93A4838(v1, &qword_1EC39ADF0, &qword_1C9404940);

  sub_1C939D624();

  return v2();
}

uint64_t sub_1C93F1C64()
{
  sub_1C939ED74();
  v1 = *(v0 + 136);

  sub_1C93A4838(v1, &qword_1EC39ADF0, &qword_1C9404940);
  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C93F1CE4()
{
  sub_1C939ED74();

  sub_1C939D510();

  return v0();
}

uint64_t sub_1C93F1D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a2;
  v6[15] = *a6;
  sub_1C93A1890(&qword_1EC39B658, &qword_1C9404BB0);
  v6[16] = swift_task_alloc();
  v7 = type metadata accessor for NWPathMonitor.Iterator();
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  sub_1C93A1890(&qword_1EC39B628, &qword_1C9404A88);
  v6[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93F1EA4, 0, 0);
}

uint64_t sub_1C93F1EA4()
{
  sub_1C93F45C4(v0[13] + 16);
  if (swift_weakLoadStrong())
  {
    v1 = v0[20];
    sub_1C93EFDB4(v0[12], v1, &qword_1EC39B5F8, qword_1C9404A00);
    v2 = sub_1C93A8E10();
    v4 = sub_1C93A1890(v2, v3);
    sub_1C93A1710(v1, 0, 1, v4);
    sub_1C93F0690(v1);
  }

  sub_1C93F45F0(v0[13] + 16, (v0 + 5));
  if (swift_weakLoadStrong() && (, (static Task<>.isCancelled.getter() & 1) == 0))
  {
    v7 = v0[13];
    v0[11] = v0[14];
    sub_1C93F41E4(&qword_1EE02AD98, MEMORY[0x1E6977C88], MEMORY[0x1E6977C90]);

    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    sub_1C93F45F0(v7 + 16, (v0 + 8));
    sub_1C93F4570();
    sub_1C93F41E4(v8, v9, MEMORY[0x1E6977C80]);
    swift_task_alloc();
    sub_1C93DA6BC();
    v0[21] = v10;
    *v10 = v11;
    v10[1] = sub_1C93F20CC;
    sub_1C93F455C();

    return MEMORY[0x1EEE6D8D0](v12);
  }

  else
  {

    sub_1C939D624();

    return v5();
  }
}

uint64_t sub_1C93F20CC()
{
  sub_1C939ED74();
  sub_1C939D504();
  v1 = *v0;
  sub_1C93B5C54();
  *v2 = v1;

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C93F21C8()
{
  sub_1C93DA69C();
  v1 = v0[16];
  v2 = type metadata accessor for NWPath();
  if (sub_1C93A4810(v1, 1, v2) == 1)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);
LABEL_11:

    sub_1C939D624();

    return v13();
  }

  if ((static Task<>.isCancelled.getter() & 1) != 0 || !swift_weakLoadStrong())
  {
    v12 = v0[16];
    (*(v0[18] + 8))(v0[19], v0[17]);
    sub_1C93A4838(v12, &qword_1EC39B658, &qword_1C9404BB0);
    goto LABEL_11;
  }

  sub_1C93EFFF4();
  v4 = v3;
  static Duration.zero.getter();
  if (static Duration.== infix(_:_:)())
  {
    if (qword_1EE02B450 != -1)
    {
      sub_1C93F4520(&qword_1EE02B450);
    }

    v5 = type metadata accessor for Logger();
    sub_1C93D9664(v5, qword_1EE02B458);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (!sub_1C93F45A8(v7))
    {
      goto LABEL_19;
    }

    v8 = sub_1C93F4680();
    sub_1C93F4648(v8);
    v11 = "NWPathMonitor indicated a network change while currentDelay is .zero";
  }

  else
  {
    if (qword_1EE02B450 != -1)
    {
      sub_1C93F4520(&qword_1EE02B450);
    }

    v15 = type metadata accessor for Logger();
    sub_1C93D9664(v15, qword_1EE02B458);
    v6 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (!sub_1C93F45A8(v16))
    {
      goto LABEL_19;
    }

    v17 = sub_1C93F4680();
    sub_1C93F4648(v17);
    v11 = "NWPathMonitor indicated a network change, resetting our backoff";
  }

  sub_1C93F4660(&dword_1C939C000, v9, v10, v11);
  MEMORY[0x1CCA884B0](v4, -1, -1);
LABEL_19:
  v18 = v0[16];

  sub_1C93F0084();

  sub_1C93A4838(v18, &qword_1EC39B658, &qword_1C9404BB0);
  sub_1C93F4570();
  sub_1C93F41E4(v19, v20, MEMORY[0x1E6977C80]);
  swift_task_alloc();
  sub_1C93DA6BC();
  v0[21] = v21;
  *v21 = v22;
  v21[1] = sub_1C93F20CC;
  sub_1C93F455C();

  return MEMORY[0x1EEE6D8D0](v23);
}

uint64_t sub_1C93F2494()
{
  sub_1C93DA69C();
  if (!_getErrorEmbeddedNSError<A>(_:)())
  {
    swift_allocError();
  }

  (*(v0[18] + 8))(v0[19], v0[17]);

  sub_1C939D510();

  return v1();
}

uint64_t sub_1C93F255C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = v16;
  v8[17] = v17;
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[11] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[18] = AssociatedTypeWitness;
  v8[19] = *(AssociatedTypeWitness - 8);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v11 = swift_getAssociatedTypeWitness();
  v8[22] = v11;
  v8[23] = *(v11 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v8[27] = v12;
  v8[28] = *(v12 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = *(a8 - 8);
  v8[31] = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  v8[32] = v13;
  v8[33] = *(v13 - 8);
  v8[34] = swift_task_alloc();
  sub_1C93A1890(&qword_1EC39B628, &qword_1C9404A88);
  v8[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93F2860, 0, 0);
}

uint64_t sub_1C93F2860()
{
  sub_1C93DA798();
  sub_1C93F45C4(v0[12] + 16);
  if (swift_weakLoadStrong())
  {
    v1 = v0[35];
    sub_1C93EFDB4(v0[11], v1, &qword_1EC39B5F8, qword_1C9404A00);
    v2 = sub_1C93A8E10();
    v4 = sub_1C93A1890(v2, v3);
    sub_1C93A1710(v1, 0, 1, v4);
    sub_1C93F0714(v1);
  }

  sub_1C93F45F0(v0[12] + 16, (v0 + 5));
  if (swift_weakLoadStrong() && (, (static Task<>.isCancelled.getter() & 1) == 0))
  {
    v7 = v0[12];
    (*(v0[30] + 16))(v0[31], v0[13], v0[15]);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    sub_1C93F45F0(v7 + 16, (v0 + 8));
    v0[36] = swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    sub_1C93DA6BC();
    v0[37] = v8;
    *v8 = v9;
    v8[1] = sub_1C93F2A94;
    sub_1C93F455C();

    return MEMORY[0x1EEE6D8D0](v10);
  }

  else
  {
    sub_1C93F4624();

    sub_1C939D624();

    return v5();
  }
}

uint64_t sub_1C93F2A94()
{
  sub_1C939ED74();
  sub_1C939D504();
  v1 = *v0;
  sub_1C93B5C54();
  *v2 = v1;

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C93F2B90()
{
  v1 = v0 + 29;
  if (sub_1C93A4810(v0[29], 1, v0[26]) == 1)
  {
    v2 = (v0[33] + 8);
    v1 = v0 + 34;
    v3 = v0 + 32;
    goto LABEL_11;
  }

  if ((static Task<>.isCancelled.getter() & 1) != 0 || !swift_weakLoadStrong())
  {
    (*(v0[33] + 8))(v0[34], v0[32]);
    v3 = v0 + 27;
    v2 = (v0[28] + 8);
LABEL_11:
    (*v2)(*v1, *v3);
    sub_1C93F4624();

    sub_1C939D624();
    sub_1C93F4608();

    __asm { BRAA            X1, X16 }
  }

  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v7 = v0[19];
  ExponentialNetworkBackoff.currentDelay.getter();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  v9 = *(v7 + 8);
  v9(v5, v6);
  v10 = sub_1C93A8E10();
  (v9)(v10);
  if (v8)
  {
    if (qword_1EE02B450 != -1)
    {
      sub_1C93F4520(&qword_1EE02B450);
    }

    v11 = type metadata accessor for Logger();
    sub_1C93D9664(v11, qword_1EE02B458);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (sub_1C93F45A8(v13))
    {
      v14 = sub_1C93F4680();
      sub_1C93F4648(v14);
      v17 = "NWPathMonitor indicated a network change while currentDelay is .zero";
LABEL_18:
      sub_1C93F4660(&dword_1C939C000, v15, v16, v17);
      MEMORY[0x1CCA884B0](v4, -1, -1);
    }
  }

  else
  {
    if (qword_1EE02B450 != -1)
    {
      sub_1C93F4520(&qword_1EE02B450);
    }

    v20 = type metadata accessor for Logger();
    sub_1C93D9664(v20, qword_1EE02B458);
    v12 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (sub_1C93F45A8(v21))
    {
      v22 = sub_1C93F4680();
      sub_1C93F4648(v22);
      v17 = "NWPathMonitor indicated a network change, resetting our backoff";
      goto LABEL_18;
    }
  }

  ExponentialNetworkBackoff.reset()();

  v23 = sub_1C93A8E10();
  v24(v23);
  v0[36] = swift_getAssociatedConformanceWitness();
  swift_task_alloc();
  sub_1C93DA6BC();
  v0[37] = v25;
  *v25 = v26;
  v25[1] = sub_1C93F2A94;
  sub_1C93F455C();
  sub_1C93F4608();

  return MEMORY[0x1EEE6D8D0](v27);
}

void sub_1C93F2F3C()
{
  v1 = *(v0[23] + 32);
  v1(v0[24], v0[25], v0[22]);
  swift_getAssociatedConformanceWitness();
  v2 = _getErrorEmbeddedNSError<A>(_:)();
  v3 = v0[24];
  if (v2)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
  }

  else
  {
    v4 = v0[22];
    swift_allocError();
    v1(v5, v3, v4);
  }

  (*(v0[33] + 8))(v0[34], v0[32]);

  sub_1C939D510();
  sub_1C93F4608();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C93F30EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1C93EFDB4(a3, v21 - v9, &qword_1EC39ADF0, &qword_1C9404940);
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_1C93A4810(v10, 1, v11);

  if (v12 == 1)
  {
    sub_1C93A4838(v10, &qword_1EC39ADF0, &qword_1C9404940);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1C93A4838(a3, &qword_1EC39ADF0, &qword_1C9404940);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C93A4838(a3, &qword_1EC39ADF0, &qword_1C9404940);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

void ExponentialNetworkBackoff.deinit()
{
  sub_1C93A5B40();
  v1 = v0;
  v2 = *v0;
  v3 = sub_1C93A1890(&qword_1EC39B5C8, &unk_1C9404820);
  sub_1C939D47C();
  v5 = v4;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - v7;
  v9 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  sub_1C939D430();
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - v11;
  v13 = sub_1C93A1890(&qword_1EC39B628, &qword_1C9404A88);
  sub_1C93A5A08(v13);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v22 - v15;
  sub_1C93F0594(v22 - v15);
  if (sub_1C93A4810(v16, 1, v9))
  {
    v17 = &qword_1EC39B628;
    v18 = &qword_1C9404A88;
    v19 = v16;
  }

  else
  {
    sub_1C93EFDB4(v16, v12, &qword_1EC39B5F8, qword_1C9404A00);
    sub_1C93A4838(v16, &qword_1EC39B628, &qword_1C9404A88);
    sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
    AsyncStream.Continuation.yield(_:)();
    (*(v5 + 8))(v8, v3);
    v19 = v12;
    v17 = &qword_1EC39B5F8;
    v18 = qword_1C9404A00;
  }

  sub_1C93A4838(v19, v17, v18);

  v20 = *(v2 + 88);
  (*(*(v20 - 8) + 8))(&v1[*(*v1 + 120)], v20);
  v22[0] = *(v2 + 80);
  v22[1] = v20;
  v23 = *(v2 + 96);
  type metadata accessor for ExponentialNetworkBackoff.State(255, v22);
  type metadata accessor for Mutex();
  v21 = type metadata accessor for _Cell();
  sub_1C93EEFBC(v21);
  sub_1C93A5B58();
}

uint64_t ExponentialNetworkBackoff.__deallocating_deinit()
{
  ExponentialNetworkBackoff.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t _s17CloudCoreInternal25ExponentialNetworkBackoffC3run9isolation_qd__ScA_pSgYi_qd__yYaKYAYTXEtYaKlF()
{
  sub_1C93DA69C();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  if (v5)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1C93F3768, v8, v10);
}

uint64_t sub_1C93F3768()
{
  sub_1C939ED74();
  swift_task_alloc();
  sub_1C93DA6BC();
  v0[9] = v1;
  *v1 = v2;
  v1[1] = sub_1C93F3808;
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return _s17CloudCoreInternal18ExponentialBackoffC3run9isolation_qd__ScA_pSgYi_qd__yYaKYTXEtYaKlF(v7, v8, v5, v6, v3, v4);
}

uint64_t sub_1C93F3808()
{
  sub_1C939ED74();
  sub_1C939D504();
  v1 = *v0;
  sub_1C93B5C54();
  *v2 = v1;

  sub_1C939D510();

  return v3();
}

void ExponentialNetworkBackoff<>.init(label:backoffCountBeforeDelay:initialEnforcedDelay:maximumEnforcedDelay:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_1C93A5B40();
  v23 = v22;
  v42 = v24;
  v43 = v25;
  v41 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = type metadata accessor for ContinuousClock();
  v36 = sub_1C93A5A08(v35);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v40 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContinuousClock.init()();
  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  v39 = NWPathMonitor.init()();
  swift_allocObject();
  sub_1C93F088C(v34, v32, v38, v30, v28, v41, v42, v43, v23, a21, a22 & 1, v39);
  sub_1C93A5B58();
}

uint64_t sub_1C93F3A90(uint64_t a1)
{
  v1 = swift_task_alloc();
  v2 = sub_1C93B5C44(v1);
  *v2 = v3;
  v2[1] = sub_1C93B5858;
  sub_1C93F4608();

  return sub_1C93F175C(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C93F3B9C(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for ExponentialNetworkBackoff<A, B>);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C93F3BD8(uint64_t a1)
{
  v7 = MEMORY[0x1E69E5D20] + 64;
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    v5[0] = *(a1 + 80);
    v5[1] = result;
    v6 = *(a1 + 96);
    type metadata accessor for ExponentialNetworkBackoff.State(255, v5);
    result = type metadata accessor for Mutex();
    if (v4 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1C93F3D24(uint64_t a1)
{
  sub_1C93F3DB8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C93F3DB8(uint64_t a1)
{
  if (!qword_1EE02AD78)
  {
    sub_1C93B27AC(&qword_1EC39B5F8, qword_1C9404A00);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE02AD78);
    }
  }
}

uint64_t sub_1C93F3E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39B638, &qword_1C9404B60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C93F3E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1C93B5858;

  return sub_1C93F1268(a1, a2, a3, a4, v10);
}

uint64_t sub_1C93F3F54(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_1C93B5C44(v6);
  *v7 = v8;
  v7[1] = sub_1C93B5BC4;

  return sub_1C93F3E8C(a1, v3, v4, v5, v1 + 5);
}

uint64_t sub_1C93F4018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1C93B5BC4;

  return sub_1C93F1D48(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_1C93F40E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C93F4130()
{
  sub_1C93DA798();
  sub_1C93F45E0();
  v0 = swift_task_alloc();
  v1 = sub_1C93B5C44(v0);
  *v1 = v2;
  v1[1] = sub_1C93B5BC4;
  v3 = sub_1C93F4540();

  return v4(v3);
}

uint64_t sub_1C93F41E4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C93F422C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39B628, &qword_1C9404A88);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C93F429C()
{
  v1 = *(v0 + 40);
  sub_1C939D47C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C93F4358(uint64_t a1, uint64_t a2)
{
  v4 = v2[5];
  v14 = v2[4];
  v5 = (*(*(v4 - 8) + 80) + 72) & ~*(*(v4 - 8) + 80);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[8];
  v9 = swift_task_alloc();
  v10 = sub_1C93B5C44(v9);
  *v10 = v11;
  v10[1] = sub_1C93B5BC4;

  return sub_1C93F255C(a1, a2, v6, v7, v8, v2 + v5, v14, v4);
}

uint64_t sub_1C93F446C()
{
  sub_1C93DA798();
  sub_1C93F45E0();
  v0 = swift_task_alloc();
  v1 = sub_1C93B5C44(v0);
  *v1 = v2;
  v1[1] = sub_1C93B5BC4;
  sub_1C93F4540();

  return sub_1C93E8984();
}

uint64_t sub_1C93F4520(uint64_t a1)
{

  return swift_once();
}

BOOL sub_1C93F45A8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1C93F45C4(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_1C93F45F0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_1C93F4624()
{
}

void sub_1C93F4660(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t sub_1C93F4680()
{

  return swift_slowAlloc();
}

uint64_t sub_1C93F4698()
{
  v0 = type metadata accessor for Logger();
  sub_1C93F47BC(v0, qword_1EE02B458);
  sub_1C93D9664(v0, qword_1EE02B458);
  return Logger.init(subsystem:category:)();
}

uint64_t CCLog.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE02B450 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1C93D9664(v2, qword_1EE02B458);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_1C93F47BC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t _Security.auditToken.getter(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  *task_info_out = 0u;
  v12 = 0u;
  task_info_outCnt = 8;
  v1 = task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, &task_info_outCnt);
  if (!v1)
  {
    return *task_info_out;
  }

  v2 = v1;
  if ((MachErrorCode.init(rawValue:)() & 0x100000000) != 0)
  {
    if (qword_1EE02B450 != -1)
    {
      sub_1C93DA48C();
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1C93D9664(v5, qword_1EE02B458);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v2;
      _os_log_impl(&dword_1C939C000, v6, v7, "Couldn't map task_info kr %d to a MachError.Code", v8, 8u);
      MEMORY[0x1CCA884B0](v8, -1, -1);
    }

    _StringGuts.grow(_:)(48);

    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1CCA87780](v9);

    MEMORY[0x1CCA87780](0xD000000000000014, 0x80000001C9406A20);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for MachError();
    sub_1C93F4BF8(MEMORY[0x1E69E7CC0]);
    v3 = MEMORY[0x1E6969C80];
    sub_1C93F4D30(&qword_1EC39B660, MEMORY[0x1E6969C80], MEMORY[0x1E6969C78]);
    _BridgedStoredNSError.init(_:userInfo:)();
    sub_1C93F4D30(&qword_1EC39B668, v3, MEMORY[0x1E6969C88]);
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_1C93F4AF4(uint64_t a1)
{
  v3 = type metadata accessor for MachError();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _Security.auditToken.getter(v6);
  if (v1)
  {
    return (*(v4 + 32))(a1, v6, v3);
  }

  return result;
}

unint64_t sub_1C93F4BF8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  sub_1C93A1890(&qword_1EC39B678, &qword_1C9404C30);
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1C93F4EDC(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_1C939E8FC(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_1C939EA84(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C93F4D30(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C93F4D78(uint64_t a1)
{
  v2 = sub_1C93A1890(&qword_1EC39B3A0, &qword_1C9404BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for _Security(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C93F4EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39B680, &qword_1C9404C38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UnsafeSendableTransfer.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  UnsafeSendableTransfer.init(_:)(a1);
  return v2;
}

uint64_t UnsafeSendableTransfer.extractValue()@<X0>(uint64_t a1@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  type metadata accessor for Optional();
  sub_1C939EE34();
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16[-v12];
  v14 = *(v4 + 88);
  sub_1C93F57E4();
  (*(v7 + 16))(v13, v2 + v14, v1);
  if (sub_1C93A4810(v13, 1, v5) == 1)
  {
    result = (*(v7 + 8))(v13, v1);
    __break(1u);
  }

  else
  {
    (*(*(v5 - 8) + 32))(a1, v13, v5);
    sub_1C93A1710(v11, 1, 1, v5);
    swift_beginAccess();
    (*(v7 + 40))(v2 + v14, v11, v1);
    return swift_endAccess();
  }

  return result;
}

uint64_t UnsafeSendableTransfer.__allocating_init()()
{
  v0 = swift_allocObject();
  UnsafeSendableTransfer.init()();
  return v0;
}

uint64_t *UnsafeSendableTransfer.init(_:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  type metadata accessor for Optional();
  sub_1C939EE34();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  v11 = *(v4 + 88);
  sub_1C93A1710(v2 + v11, 1, 1, v5);
  (*(*(v5 - 8) + 32))(v10, a1, v5);
  sub_1C93A1710(v10, 0, 1, v5);
  swift_beginAccess();
  (*(v7 + 40))(v2 + v11, v10, v1);
  swift_endAccess();
  return v2;
}

char *UnsafeSendableTransfer.deinit()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  type metadata accessor for Optional();
  sub_1C939EE34();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v9 = *(v2 + 88);
  sub_1C93F57E4();
  (*(v5 + 16))(v8, &v1[v9], v0);
  LODWORD(v2) = sub_1C93A4810(v8, 1, v3);
  v10 = *(v5 + 8);
  result = v10(v8, v0);
  if (v2 == 1)
  {
    v10(&v1[v9], v0);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t UnsafeSendableTransfer.__deallocating_deinit()
{
  UnsafeSendableTransfer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t UnsafeSendableTransfer.setValue(_:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  type metadata accessor for Optional();
  sub_1C939EE34();
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16[-v12];
  v14 = *(v4 + 88);
  swift_beginAccess();
  (*(v7 + 16))(v13, v2 + v14, v1);
  LODWORD(v4) = sub_1C93A4810(v13, 1, v5);
  result = (*(v7 + 8))(v13, v1);
  if (v4 == 1)
  {
    (*(*(v5 - 8) + 16))(v11, a1, v5);
    sub_1C93A1710(v11, 0, 1, v5);
    swift_beginAccess();
    (*(v7 + 40))(v2 + v14, v11, v1);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C93F56F8(uint64_t a1)
{
  result = type metadata accessor for Optional();
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

uint64_t sub_1C93F57E4()
{

  return swift_beginAccess();
}

uint64_t sub_1C93F5830()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1C93F7BF4();
  v3 = v1;
  _typeName(_:qualified:)();
  sub_1C93F7C78();

  sub_1C93F7C40();
  sub_1C93B09D0();
  sub_1C93F7C78();

  sub_1C93F7C5C();
  return v3;
}

uint64_t sub_1C93F58A8(uint64_t a1)
{
  sub_1C93F7BF4();
  v4 = v1;
  v2 = _typeName(_:qualified:)();
  MEMORY[0x1CCA87780](v2);

  sub_1C93F7C40();
  sub_1C93B0B64();
  sub_1C93F7C78();

  sub_1C93F7C5C();
  return v4;
}

uint64_t sub_1C93F5938()
{
  v0 = _typeName(_:qualified:)();
  MEMORY[0x1CCA87780](v0);

  MEMORY[0x1CCA87780](8250, 0xE200000000000000);
  sub_1C93B0CE8();
  MEMORY[0x1CCA87780]();

  MEMORY[0x1CCA87780](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1C93F5A68(uint64_t a1)
{
  sub_1C93F7BF4();
  v3 = v1;
  _typeName(_:qualified:)();
  sub_1C93F7C28();

  sub_1C939EE4C();
  sub_1C93B0FF8();
  sub_1C93F7C28();

  sub_1C93F7C00();
  return v3;
}

uint64_t sub_1C93F5B0C()
{
  sub_1C93F7C90();
  sub_1C93F7BF4();
  v2 = v0;
  _typeName(_:qualified:)();
  sub_1C93F7C28();

  sub_1C939EE4C();
  sub_1C93B11A4();
  sub_1C93F7C28();

  sub_1C93F7C00();
  return v2;
}

uint64_t sub_1C93F5B80()
{
  sub_1C93F7C90();
  sub_1C93F7BF4();
  v2 = v0;
  _typeName(_:qualified:)();
  sub_1C93F7C28();

  sub_1C939EE4C();
  sub_1C93B19B8();
  sub_1C93F7C28();

  sub_1C93F7C00();
  return v2;
}

uint64_t sub_1C93F5BEC()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1C93F7BF4();
  v3 = v1;
  _typeName(_:qualified:)();
  sub_1C93F7C78();

  sub_1C93F7C40();
  sub_1C93B1CB0();
  sub_1C93F7C78();

  sub_1C93F7C5C();
  return v3;
}

uint64_t sub_1C93F5CBC(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  a1(0);
  v3 = _typeName(_:qualified:)();
  MEMORY[0x1CCA87780](v3);

  sub_1C939EE4C();
  a2();
  sub_1C93F7C28();

  sub_1C93F7C00();
  return 60;
}

unint64_t Entitlements.Key.rawValue.getter()
{
  result = 0xD000000000000016;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000030;
      break;
    case 2:
      result = 0xD00000000000003BLL;
      break;
    case 3:
      result = 0xD000000000000041;
      break;
    case 4:
      result = 0xD000000000000038;
      break;
    default:
      return result;
  }

  return result;
}

void static Entitlements.currentProcess.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C93A1890(&qword_1EC39B688, &unk_1C9404C70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v41 - v6;
  type metadata accessor for Entitlements.Error(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C93A59B8();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  if (qword_1EE02B208 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE02B210);
  v15 = qword_1EE02B220;
  if (qword_1EE02B220)
  {
    v16 = dword_1EE02B228;
    *a2 = qword_1EE02B218;
    *(a2 + 8) = v15;
    *(a2 + 16) = v16 & 1;
    *(a2 + 17) = BYTE1(v16) & 1;
    *(a2 + 18) = BYTE2(v16) & 1;
    *(a2 + 19) = HIBYTE(v16) & 1;
LABEL_5:

    os_unfair_lock_unlock(&dword_1EE02B210);
    return;
  }

  sub_1C93F699C(v14, &v42);
  if (!v2)
  {

    v28 = v43;
    v29 = v44;
    v30 = v45;
    v31 = v46;
    v32 = v47;
    if (v45)
    {
      v33 = 256;
    }

    else
    {
      v33 = 0;
    }

    v34 = v33 | v44;
    if (v46)
    {
      v35 = 0x10000;
    }

    else
    {
      v35 = 0;
    }

    if (v47)
    {
      v36 = 0x1000000;
    }

    else
    {
      v36 = 0;
    }

    qword_1EE02B218 = v42;
    qword_1EE02B220 = v43;
    dword_1EE02B228 = v34 | v35 | v36;
    *a2 = v42;
    *(a2 + 8) = v28;
    *(a2 + 16) = v29;
    *(a2 + 17) = v30;
    *(a2 + 18) = v31;
    *(a2 + 19) = v32;

    goto LABEL_5;
  }

  sub_1C93F7BC4();
  sub_1C93F7530(v17, v18, protocol conformance descriptor for Entitlements.Error);
  v19 = swift_allocError();
  sub_1C93F7BAC();
  sub_1C93F7630(v14, v20, v21);
  os_unfair_lock_unlock(&dword_1EE02B210);
  v42 = v19;
  v22 = v19;
  sub_1C93A1890(&qword_1EC39B3B0, "T8");
  if (swift_dynamicCast())
  {
    sub_1C93F7C1C();
    sub_1C93A1710(v23, v24, v25, v26);
    sub_1C93F7BAC();
    sub_1C93F7630(v7, v11, v27);
    sub_1C93F7578(v11, a1, type metadata accessor for Entitlements.Error);
    swift_willThrowTypedImpl();

    sub_1C93F75D8(v11, type metadata accessor for Entitlements.Error);
  }

  else
  {
    sub_1C93F7C1C();
    sub_1C93A1710(v37, v38, v39, v40);
    sub_1C93A4838(v7, &qword_1EC39B688, &unk_1C9404C70);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

CloudCoreInternal::Entitlements::Key_optional __swiftcall Entitlements.Key.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&unk_1F48EB888, v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

Swift::Int sub_1C93F61F8(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  sub_1C93F6248(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_1C93F6248(uint64_t a1, char a2)
{
  String.hash(into:)();
}

Swift::Int sub_1C93F6310(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  sub_1C93F6248(v4, a2);
  return Hasher._finalize()();
}

unint64_t sub_1C93F6360@<X0>(unint64_t *a1@<X8>)
{
  result = Entitlements.Key.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Entitlements.bundleID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Entitlements.bundleID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t _s17CloudCoreInternal12EntitlementsV10auditToken8securityACSo0E8_token_ta_xtAC5ErrorOYKcAA17_SecurityProtocolRzlufC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v61 = a6;
  type metadata accessor for Entitlements.Error(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C93A59A8();
  v47 = v11 - v10;
  v56[0] = MEMORY[0x1E69E7CC0];
  sub_1C939DC14(0, 5, 0);
  v12 = 0;
  v13 = v56[0];
  v14 = "application-identifier";
  v15 = "iner-environment";
  v16 = "nal.allow-custom-bundle-ids";
  v17 = "-authorization-ui";
  do
  {
    v18 = &unk_1C9405EC0;
    v19 = 0xD000000000000016;
    switch(byte_1F48EB7E8[v12 + 32])
    {
      case 1:
        v19 = 0xD000000000000030;
        v18 = v14;
        break;
      case 2:
        v19 = 0xD00000000000003BLL;
        v18 = v15;
        break;
      case 3:
        v19 = 0xD000000000000041;
        v18 = v16;
        break;
      case 4:
        v19 = 0xD000000000000038;
        v18 = v17;
        break;
      default:
        break;
    }

    v56[0] = v13;
    v21 = *(v13 + 16);
    v20 = *(v13 + 24);
    if (v21 >= v20 >> 1)
    {
      v23 = v14;
      v44 = v16;
      v45 = v15;
      v43 = v17;
      sub_1C939DC14((v20 > 1), v21 + 1, 1);
      v17 = v43;
      v16 = v44;
      v15 = v45;
      v14 = v23;
      v13 = v56[0];
    }

    ++v12;
    *(v13 + 16) = v21 + 1;
    v22 = v13 + 16 * v21;
    *(v22 + 32) = v19;
    *(v22 + 40) = v18 | 0x8000000000000000;
  }

  while (v12 != 5);
  v24 = v61;
  v25 = (*(a7 + 16))(a1, a2, a3, a4, v13, v61);
  if (v53)
  {

    if (qword_1EE02B450 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1C93D9664(v26, qword_1EE02B458);
    v27 = v25;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      type metadata accessor for CFError(0);
      sub_1C93F7530(&qword_1EE02AD70, type metadata accessor for CFError, MEMORY[0x1E6969E70]);
      swift_allocError();
      *v32 = v27;
      v33 = v27;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v34;
      *v31 = v34;
      _os_log_impl(&dword_1C939C000, v28, v29, "Error getting entitlements for secTask: %@", v30, 0xCu);
      sub_1C93A4838(v31, &qword_1EC39B3A0, &qword_1C9404BE0);
      MEMORY[0x1CCA884B0](v31, -1, -1);
      MEMORY[0x1CCA884B0](v30, -1, -1);
    }

    *a8 = v27;
    swift_storeEnumTagMultiPayload();
    sub_1C93F7BC4();
    sub_1C93F7530(v35, v36, protocol conformance descriptor for Entitlements.Error);
    swift_willThrowTypedImpl();
    return (*(*(v24 - 8) + 8))(a5, v24);
  }

  else
  {

    sub_1C939E08C(v25, v47, v56);
    result = (*(*(v24 - 8) + 8))(a5, v24);
    v38 = v56[1];
    v39 = v57;
    v40 = v58;
    v41 = v59;
    v42 = v60;
    *a9 = v56[0];
    *(a9 + 8) = v38;
    *(a9 + 16) = v39;
    *(a9 + 17) = v40;
    *(a9 + 18) = v41;
    *(a9 + 19) = v42;
  }

  return result;
}

void sub_1C93F6984()
{
  dword_1EE02B210 = 0;
  qword_1EE02B218 = 0;
  qword_1EE02B220 = 0;
  dword_1EE02B228 = 0;
}

void *sub_1C93F699C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for Entitlements.Error(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for MachError();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v23 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - v15;
  v17 = _Security.auditToken.getter(v14);
  if (!v2)
  {
    return sub_1C939D668(v17, v18, v19, v20, v6, v24);
  }

  v21 = *(v8 + 32);
  v21(v16, v14, v7);
  v21(v11, v16, v7);
  (*(v8 + 16))(a1, v11, v7);
  swift_storeEnumTagMultiPayload();
  sub_1C93F7530(&qword_1EE02B200, type metadata accessor for Entitlements.Error, protocol conformance descriptor for Entitlements.Error);
  swift_willThrowTypedImpl();
  return (*(v8 + 8))(v11, v7);
}

uint64_t _s17CloudCoreInternal12EntitlementsV14currentProcess8securityACx_tAC5ErrorOYKAA17_SecurityProtocolRzlFZ@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a4;
  v46 = a5;
  v49 = type metadata accessor for Entitlements.Error(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C93A59A8();
  v47 = (v11 - v10);
  v44 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C93A59A8();
  v43 = v14 - v13;
  v15 = type metadata accessor for MachError();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C93A59B8();
  v19 = (v17 - v18);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v42 - v24;
  v26 = *(a3 + 8);
  v45 = a1;
  v27 = a2;
  v48 = a3;
  v28 = v26(v23, a2, a3);
  if (v5)
  {
    v32 = *(v16 + 32);
    v32(v25, v23, v15);
    v32(v19, v25, v15);
    (*(v16 + 16))(v50, v19, v15);
    swift_storeEnumTagMultiPayload();
    sub_1C93F7BC4();
    sub_1C93F7530(v33, v34, protocol conformance descriptor for Entitlements.Error);
    swift_willThrowTypedImpl();
    return (*(v16 + 8))(v19, v15);
  }

  else
  {
    v36 = v28;
    v37 = v29;
    v38 = v43;
    v39 = v27;
    v40 = v30;
    v41 = v31;
    (*(v44 + 16))(v43, v45, v39);
    return _s17CloudCoreInternal12EntitlementsV10auditToken8securityACSo0E8_token_ta_xtAC5ErrorOYKcAA17_SecurityProtocolRzlufC(v36, v37, v40, v41, v38, v39, v48, v47, v46);
  }
}

uint64_t Entitlements.propertyDescriptions.getter()
{
  v1 = type metadata accessor for PropertyDescription(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C93A59B8();
  v89 = (v3 - v4);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v87 = &v81 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v81 - v8;
  v9 = type metadata accessor for OSLogPrivacy();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1C93A59B8();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v81 - v14;
  v16 = *v0;
  v17 = v0[1];
  v18 = *(v0 + 16);
  LODWORD(v83) = *(v0 + 17);
  v84 = *(v0 + 18);
  LODWORD(v85) = v18;
  v86 = *(v0 + 19);
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v19 = *(v2 + 72);
  v20 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C93FE890;
  v90 = v20;
  v22 = (v21 + v20);
  static OSLogPrivacy.public.getter();
  v91 = v16;
  v92 = v17;

  v23 = String.init<A>(describing:)();
  v25 = v24;
  v26 = MEMORY[0x1E69E93B0];
  sub_1C93F7578(v15, v12, MEMORY[0x1E69E93B0]);
  v27 = *(v1 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93F75D8(v15, v26);
  *v22 = 0x4449656C646E7562;
  v22[1] = 0xE800000000000000;
  v22[2] = v23;
  v22[3] = v25;
  sub_1C93A8768(v12, v22 + v27);
  v28 = (v22 + v19);
  static OSLogPrivacy.public.getter();
  LOBYTE(v91) = v85;
  v29 = String.init<A>(describing:)();
  v31 = v30;
  sub_1C93F7578(v15, v12, v26);
  v85 = v1;
  v32 = *(v1 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93F75D8(v15, v26);
  sub_1C93B8D8C();
  *v28 = v33 + 2;
  v28[1] = 0x80000001C9406AC0;
  v28[2] = v29;
  v28[3] = v31;
  sub_1C93A8768(v12, v22 + v19 + v32);
  v88 = v19;
  if (v83 == 1)
  {
    v83 = 2 * v19;
    static OSLogPrivacy.public.getter();
    LOBYTE(v91) = 1;
    v34 = String.init<A>(describing:)();
    v36 = v35;
    v37 = MEMORY[0x1E69E93B0];
    sub_1C93F7578(v15, v12, MEMORY[0x1E69E93B0]);
    v38 = v85;
    v39 = *(v85 + 24);
    v40 = v82;
    static OSLogPrivacy.auto.getter();
    sub_1C93F75D8(v15, v37);
    sub_1C93B8D8C();
    *v40 = v41 + 3;
    v40[1] = 0x80000001C9406B20;
    v40[2] = v34;
    v40[3] = v36;
    sub_1C93A8768(v12, v40 + v39);
    sub_1C93F7C1C();
    v21 = sub_1C93A4F7C(v42, v43, v44, v45);
    *(v21 + 16) = 3;
    sub_1C93F7BDC();
    sub_1C93F7630(v40, v46 + v47, v48);
  }

  else
  {
    v38 = v85;
  }

  if (v84)
  {
    static OSLogPrivacy.public.getter();
    LOBYTE(v91) = 1;
    v49 = String.init<A>(describing:)();
    v51 = v50;
    v52 = MEMORY[0x1E69E93B0];
    sub_1C93F7578(v15, v12, MEMORY[0x1E69E93B0]);
    v53 = v38;
    v54 = *(v38 + 24);
    v55 = v87;
    static OSLogPrivacy.auto.getter();
    sub_1C93F75D8(v15, v52);
    sub_1C93B8D8C();
    *v55 = v56 + 8;
    v55[1] = 0x80000001C9406B00;
    v55[2] = v49;
    v55[3] = v51;
    sub_1C93A8768(v12, v55 + v54);
    v57 = *(v21 + 16);
    if (v57 >= *(v21 + 24) >> 1)
    {
      sub_1C93F7C1C();
      v21 = sub_1C93A4F7C(v73, v74, v75, v76);
    }

    *(v21 + 16) = v57 + 1;
    sub_1C93F7BDC();
    sub_1C93F7630(v58, v59, v60);
  }

  else
  {
    v53 = v38;
  }

  if (v86)
  {
    static OSLogPrivacy.public.getter();
    LOBYTE(v91) = 1;
    v61 = String.init<A>(describing:)();
    v63 = v62;
    v64 = MEMORY[0x1E69E93B0];
    sub_1C93F7578(v15, v12, MEMORY[0x1E69E93B0]);
    v65 = *(v53 + 24);
    v66 = v89;
    static OSLogPrivacy.auto.getter();
    sub_1C93F75D8(v15, v64);
    sub_1C93B8D8C();
    *v66 = v67;
    v66[1] = 0x80000001C9406AE0;
    v66[2] = v61;
    v66[3] = v63;
    sub_1C93A8768(v12, v66 + v65);
    v68 = *(v21 + 16);
    if (v68 >= *(v21 + 24) >> 1)
    {
      sub_1C93F7C1C();
      v21 = sub_1C93A4F7C(v77, v78, v79, v80);
    }

    *(v21 + 16) = v68 + 1;
    sub_1C93F7BDC();
    sub_1C93F7630(v69, v70, v71);
  }

  return v21;
}

uint64_t sub_1C93F7530(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C93F7578(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C939D430();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C93F75D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C939D430();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C93F7630(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C939D430();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1C93F7694()
{
  result = qword_1EC39B690;
  if (!qword_1EC39B690)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entitlements.Key, &type metadata for Entitlements.Key, v0, v1);
    atomic_store(result, &qword_1EC39B690);
  }

  return result;
}

unint64_t sub_1C93F76EC()
{
  result = qword_1EC39B698;
  if (!qword_1EC39B698)
  {
    v3 = sub_1C93B27AC(&qword_1EC39B6A0, &qword_1C9404D60);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EC39B698);
  }

  return result;
}

unint64_t sub_1C93F7750(uint64_t a1)
{
  result = sub_1C93F7778();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C93F7778()
{
  result = qword_1EC39B6A8;
  if (!qword_1EC39B6A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entitlements, &type metadata for Entitlements, v0, v1);
    atomic_store(result, &qword_1EC39B6A8);
  }

  return result;
}

uint64_t sub_1C93F7830(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 20))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C93F7870(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C93F78C0(uint64_t a1)
{
  type metadata accessor for MachError();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CFError(319);
    if (v2 <= 0x3F)
    {
      sub_1C93F7970();
      if (v3 <= 0x3F)
      {
        sub_1C93F7998(319);
        if (v4 <= 0x3F)
        {
          sub_1C93F7A2C();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

ValueMetadata *sub_1C93F7970()
{
  result = qword_1EE02BE80;
  if (!qword_1EE02BE80)
  {
    result = &type metadata for Entitlements.Key;
    atomic_store(&type metadata for Entitlements.Key, &qword_1EE02BE80);
  }

  return result;
}

void sub_1C93F7998(uint64_t a1)
{
  if (!qword_1EE02BE78)
  {
    sub_1C93B27AC(&qword_1EC39B6B0, "N8");
    sub_1C93B27AC(&qword_1EC39B670, &qword_1C9404BE8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE02BE78);
    }
  }
}

void sub_1C93F7A2C()
{
  if (!qword_1EE02BE88)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE02BE88);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Entitlements.Key(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C93F7B6C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1C93F7C00()
{

  JUMPOUT(0x1CCA87780);
}

void sub_1C93F7C28()
{

  JUMPOUT(0x1CCA87780);
}

void sub_1C93F7C40()
{

  JUMPOUT(0x1CCA87780);
}

void sub_1C93F7C5C()
{

  JUMPOUT(0x1CCA87780);
}

void sub_1C93F7C78()
{

  JUMPOUT(0x1CCA87780);
}

uint64_t sub_1C93F7D04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x80000001C9406BD0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C9406BF0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001C9406C10 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001C9406C30 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001C9406C50 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x80000001C9406C70 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000020 && 0x80000001C9406C90 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000019 && 0x80000001C9406CC0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000021 && 0x80000001C9406CE0 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD00000000000001DLL && 0x80000001C9406D10 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_1C93F8010(char a1)
{
  result = 0xD00000000000001BLL;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD000000000000012;
      break;
    case 2:
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000020;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000021;
      break;
    case 9:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C93F8100(uint64_t a1)
{
  v2 = sub_1C93F905C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93F813C(uint64_t a1)
{
  v2 = sub_1C93F905C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93F8178(uint64_t a1)
{
  v2 = sub_1C93F8F0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93F81B4(uint64_t a1)
{
  v2 = sub_1C93F8F0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93F81F0(uint64_t a1)
{
  v2 = sub_1C93F9104();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93F822C(uint64_t a1)
{
  v2 = sub_1C93F9104();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93F8268(uint64_t a1)
{
  v2 = sub_1C93F90B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93F82A4(uint64_t a1)
{
  v2 = sub_1C93F90B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93F82E0(uint64_t a1)
{
  v2 = sub_1C93F8EB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93F831C(uint64_t a1)
{
  v2 = sub_1C93F8EB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93F8358(uint64_t a1)
{
  v2 = sub_1C93F8FB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93F8394(uint64_t a1)
{
  v2 = sub_1C93F8FB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93F83D0(uint64_t a1)
{
  v2 = sub_1C93F9008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93F840C(uint64_t a1)
{
  v2 = sub_1C93F9008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93F8450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93F7D04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93F8478@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C93F8008();
  *a1 = result;
  return result;
}

uint64_t sub_1C93F84A0(uint64_t a1)
{
  v2 = sub_1C93F8E64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93F84DC(uint64_t a1)
{
  v2 = sub_1C93F8E64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93F8518(uint64_t a1)
{
  v2 = sub_1C93F9158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93F8554(uint64_t a1)
{
  v2 = sub_1C93F9158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93F8590(uint64_t a1)
{
  v2 = sub_1C93F8F60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93F85CC(uint64_t a1)
{
  v2 = sub_1C93F8F60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93F8608(uint64_t a1)
{
  v2 = sub_1C93F91AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93F8644(uint64_t a1)
{
  v2 = sub_1C93F91AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SessionReadinessError.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1C93A1890(&qword_1EC39B6D0, &qword_1C9404F20);
  sub_1C939D44C();
  v83 = v5;
  v84 = v4;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C939ED24();
  v82 = v7;
  sub_1C93A1890(&qword_1EC39B6D8, &qword_1C9404F28);
  sub_1C939D44C();
  v80 = v9;
  v81 = v8;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C939ED24();
  v79 = v11;
  sub_1C93A1890(&qword_1EC39B6E0, &qword_1C9404F30);
  sub_1C939D44C();
  v77 = v13;
  v78 = v12;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C939ED24();
  v76 = v15;
  sub_1C93A1890(&qword_1EC39B6E8, &qword_1C9404F38);
  sub_1C939D44C();
  v74 = v17;
  v75 = v16;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C939ED24();
  v73 = v19;
  sub_1C93A1890(&qword_1EC39B6F0, &qword_1C9404F40);
  sub_1C939D44C();
  v71 = v21;
  v72 = v20;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C939ED24();
  v70 = v23;
  sub_1C93A1890(&qword_1EC39B6F8, &qword_1C9404F48);
  sub_1C939D44C();
  v68 = v25;
  v69 = v24;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C939ED24();
  v67 = v27;
  v66 = sub_1C93A1890(&qword_1EC39B700, &qword_1C9404F50);
  sub_1C939D44C();
  v65 = v28;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C939ED24();
  v64 = v30;
  v63 = sub_1C93A1890(&qword_1EC39B708, &qword_1C9404F58);
  sub_1C939D44C();
  v62 = v31;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C939ED24();
  v61 = v33;
  v60 = sub_1C93A1890(&qword_1EC39B710, &qword_1C9404F60);
  sub_1C939D44C();
  v59[2] = v34;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v59 - v36;
  v38 = sub_1C93A1890(&qword_1EC39B718, &qword_1C9404F68);
  sub_1C939D44C();
  v59[1] = v39;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v40);
  v85 = sub_1C93A1890(&qword_1EC39B720, &qword_1C9404F70);
  sub_1C939D44C();
  v42 = v41;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v43);
  v45 = v59 - v44;
  v46 = *v2;
  sub_1C93A4890(a1, a1[3]);
  sub_1C93F8E64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v47 = (v42 + 8);
  switch(v46)
  {
    case 1:
      v87[0] = 1;
      sub_1C93F9158();
      v56 = v85;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_1C939EE68();
      v57(v37, v60);
      return (*v47)(v45, v56);
    case 2:
      v88 = 2;
      sub_1C93F9104();
      v53 = v61;
      sub_1C93FA950(&type metadata for SessionReadinessError.AccountLookupFailedCodingKeys, &v88);
      sub_1C939EE68();
      v48 = v53;
      v54 = &v96;
      goto LABEL_7;
    case 3:
      v89 = 3;
      sub_1C93F90B0();
      v55 = v64;
      sub_1C93FA950(&type metadata for SessionReadinessError.AccountNotLoggedInCodingKeys, &v89);
      sub_1C939EE68();
      v48 = v55;
      v54 = &v97;
LABEL_7:
      v50 = *(v54 - 32);
      break;
    case 4:
      v90 = 4;
      sub_1C93F905C();
      v51 = v67;
      sub_1C93FA950(&type metadata for SessionReadinessError.AccountAccessFailedCodingKeys, &v90);
      v52 = v68;
      v50 = v69;
      goto LABEL_13;
    case 5:
      v91 = 5;
      sub_1C93F9008();
      v51 = v70;
      sub_1C93FA950(&type metadata for SessionReadinessError.AccountUnauthenticatedCodingKeys, &v91);
      v52 = v71;
      v50 = v72;
      goto LABEL_13;
    case 6:
      v92 = 6;
      sub_1C93F8FB4();
      v51 = v73;
      sub_1C93FA950(&type metadata for SessionReadinessError.AccountTermsOfServiceNotAcceptedCodingKeys, &v92);
      v52 = v74;
      v50 = v75;
      goto LABEL_13;
    case 7:
      v93 = 7;
      sub_1C93F8F60();
      v51 = v76;
      sub_1C93FA950(&type metadata for SessionReadinessError.MissingEncryptionIdentityCodingKeys, &v93);
      v52 = v77;
      v50 = v78;
      goto LABEL_13;
    case 8:
      v94 = 8;
      sub_1C93F8F0C();
      v51 = v79;
      sub_1C93FA950(&type metadata for SessionReadinessError.AccountDataProtectionInsufficientCodingKeys, &v94);
      v52 = v80;
      v50 = v81;
      goto LABEL_13;
    case 9:
      v95 = 9;
      sub_1C93F8EB8();
      v51 = v82;
      sub_1C93FA950(&type metadata for SessionReadinessError.AccountTemporarilyUnavailableCodingKeys, &v95);
      v52 = v83;
      v50 = v84;
LABEL_13:
      v49 = *(v52 + 8);
      v48 = v51;
      break;
    default:
      v86 = 0;
      sub_1C93F91AC();
      v37 = v85;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v48 = sub_1C93FA998();
      v50 = v38;
      break;
  }

  v49(v48, v50);
  return (*v47)(v45, v37);
}

unint64_t sub_1C93F8E64()
{
  result = qword_1EE02B6C0;
  if (!qword_1EE02B6C0)
  {
    result = swift_getWitnessTable(aG_0, &type metadata for SessionReadinessError.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B6C0);
  }

  return result;
}

unint64_t sub_1C93F8EB8()
{
  result = qword_1EC39B728;
  if (!qword_1EC39B728)
  {
    result = swift_getWitnessTable(aYg, &type metadata for SessionReadinessError.AccountTemporarilyUnavailableCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC39B728);
  }

  return result;
}

unint64_t sub_1C93F8F0C()
{
  result = qword_1EC39B730;
  if (!qword_1EC39B730)
  {
    result = swift_getWitnessTable(byte_1C9405A10, &type metadata for SessionReadinessError.AccountDataProtectionInsufficientCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC39B730);
  }

  return result;
}

unint64_t sub_1C93F8F60()
{
  result = qword_1EE02B648;
  if (!qword_1EE02B648)
  {
    result = swift_getWitnessTable(byte_1C94059C0, &type metadata for SessionReadinessError.MissingEncryptionIdentityCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B648);
  }

  return result;
}

unint64_t sub_1C93F8FB4()
{
  result = qword_1EC39B738;
  if (!qword_1EC39B738)
  {
    result = swift_getWitnessTable(aIh, &type metadata for SessionReadinessError.AccountTermsOfServiceNotAcceptedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC39B738);
  }

  return result;
}

unint64_t sub_1C93F9008()
{
  result = qword_1EC39B740;
  if (!qword_1EC39B740)
  {
    result = swift_getWitnessTable(byte_1C9405920, &type metadata for SessionReadinessError.AccountUnauthenticatedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC39B740);
  }

  return result;
}

unint64_t sub_1C93F905C()
{
  result = qword_1EC39B748;
  if (!qword_1EC39B748)
  {
    result = swift_getWitnessTable(byte_1C94058D0, &type metadata for SessionReadinessError.AccountAccessFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC39B748);
  }

  return result;
}

unint64_t sub_1C93F90B0()
{
  result = qword_1EE02B6A8;
  if (!qword_1EE02B6A8)
  {
    result = swift_getWitnessTable(a9i, &type metadata for SessionReadinessError.AccountNotLoggedInCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B6A8);
  }

  return result;
}

unint64_t sub_1C93F9104()
{
  result = qword_1EC39B750;
  if (!qword_1EC39B750)
  {
    result = swift_getWitnessTable(byte_1C9405830, &type metadata for SessionReadinessError.AccountLookupFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC39B750);
  }

  return result;
}

unint64_t sub_1C93F9158()
{
  result = qword_1EE02B690;
  if (!qword_1EE02B690)
  {
    result = swift_getWitnessTable(byte_1C94057E0, &type metadata for SessionReadinessError.DeviceNotPastBuddyCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B690);
  }

  return result;
}

unint64_t sub_1C93F91AC()
{
  result = qword_1EC39B758;
  if (!qword_1EC39B758)
  {
    result = swift_getWitnessTable(aJ, &type metadata for SessionReadinessError.NeedFirstUserAuthenticationCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC39B758);
  }

  return result;
}

Swift::Int SessionReadinessError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1CCA87E40](v1);
  return Hasher._finalize()();
}

uint64_t SessionReadinessError.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v115 = a2;
  sub_1C93A1890(&qword_1EC39B760, &qword_1C9404F78);
  sub_1C939D44C();
  v108 = v4;
  v109 = v3;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C939ED24();
  v114 = v6;
  sub_1C93A1890(&qword_1EC39B768, &qword_1C9404F80);
  sub_1C939D44C();
  v106 = v8;
  v107 = v7;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C939ED24();
  v113 = v10;
  sub_1C93A1890(&qword_1EC39B770, &qword_1C9404F88);
  sub_1C939D44C();
  v104 = v12;
  v105 = v11;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C939ED24();
  v118 = v14;
  sub_1C93A1890(&qword_1EC39B778, &qword_1C9404F90);
  sub_1C939D44C();
  v102 = v16;
  v103 = v15;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C939ED24();
  v117 = v18;
  v101 = sub_1C93A1890(&qword_1EC39B780, &qword_1C9404F98);
  sub_1C939D44C();
  v100 = v19;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C939ED24();
  v116 = v21;
  v99 = sub_1C93A1890(&qword_1EC39B788, &qword_1C9404FA0);
  sub_1C939D44C();
  v98 = v22;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C939ED24();
  v112 = v24;
  v97 = sub_1C93A1890(&qword_1EC39B790, &qword_1C9404FA8);
  sub_1C939D44C();
  v96 = v25;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C939ED24();
  v111 = v27;
  v95 = sub_1C93A1890(&qword_1EC39B798, &qword_1C9404FB0);
  sub_1C939D44C();
  v94 = v28;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C939ED24();
  v110 = v30;
  v93 = sub_1C93A1890(&qword_1EC39B7A0, &qword_1C9404FB8);
  sub_1C939D44C();
  v92 = v31;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v85 - v33;
  v35 = sub_1C93A1890(&qword_1EC39B7A8, &qword_1C9404FC0);
  sub_1C939D44C();
  v91 = v36;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v85 - v38;
  v40 = sub_1C93A1890(&qword_1EC39B7B0, &unk_1C9404FC8);
  sub_1C939D44C();
  v42 = v41;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v85 - v44;
  v46 = a1[3];
  v119 = a1;
  sub_1C93A4890(a1, v46);
  sub_1C93F8E64();
  v47 = v120;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v47)
  {
    goto LABEL_11;
  }

  v88 = v39;
  v87 = v35;
  v89 = v34;
  v48 = v116;
  v49 = v117;
  v50 = v118;
  v120 = v42;
  v51 = v45;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_1C93C0330();
  if (v54 == v55 >> 1)
  {
    v90 = result;
    v56 = v120;
    v57 = v45;
LABEL_10:
    v70 = type metadata accessor for DecodingError();
    swift_allocError();
    v72 = v71;
    sub_1C93A1890(&qword_1EC39AAB0, "̗");
    *v72 = &type metadata for SessionReadinessError;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v70 - 8) + 104))(v72, *MEMORY[0x1E69E6AF8], v70);
    swift_willThrow();
    sub_1C93FA9B8();
    (*(v56 + 8))(v57, v40);
LABEL_11:
    v73 = v119;
    return sub_1C939EA94(v73);
  }

  v86 = 0;
  if (v54 < (v55 >> 1))
  {
    v58 = v40;
    v59 = *(v53 + v54);
    v60 = sub_1C93C0328();
    v62 = v61;
    v64 = v63;
    swift_unknownObjectRelease();
    v90 = v60;
    v57 = v51;
    if (v62 == v64 >> 1)
    {
      v65 = v59;
      v66 = v115;
      v67 = v86;
      switch(v59)
      {
        case 1:
          v122 = 1;
          sub_1C93F9158();
          sub_1C93FA974(&type metadata for SessionReadinessError.DeviceNotPastBuddyCodingKeys, &v122);
          sub_1C93FA9B8();
          v74 = sub_1C93FA998();
          v76 = &v131;
          goto LABEL_19;
        case 2:
          v123 = 2;
          sub_1C93F9104();
          sub_1C93FA974(&type metadata for SessionReadinessError.AccountLookupFailedCodingKeys, &v123);
          sub_1C93FA9B8();
          v74 = sub_1C93FA998();
          v76 = &v132;
          goto LABEL_19;
        case 3:
          v124 = 3;
          sub_1C93F90B0();
          sub_1C93FA974(&type metadata for SessionReadinessError.AccountNotLoggedInCodingKeys, &v124);
          sub_1C93FA9B8();
          v74 = sub_1C93FA998();
          v76 = &v133;
          goto LABEL_19;
        case 4:
          v125 = 4;
          sub_1C93F905C();
          sub_1C93FA974(&type metadata for SessionReadinessError.AccountAccessFailedCodingKeys, &v125);
          sub_1C93FA9B8();
          v74 = sub_1C93FA998();
          v76 = &v134;
LABEL_19:
          v77 = *(v76 - 32);
          goto LABEL_25;
        case 5:
          v126 = 5;
          sub_1C93F9008();
          sub_1C939D634(&type metadata for SessionReadinessError.AccountUnauthenticatedCodingKeys, &v126);
          sub_1C93FA9B8();
          v74 = sub_1C93FA998();
          v77 = v101;
          goto LABEL_25;
        case 6:
          v127 = 6;
          sub_1C93F8FB4();
          v50 = v49;
          sub_1C939D634(&type metadata for SessionReadinessError.AccountTermsOfServiceNotAcceptedCodingKeys, &v127);
          sub_1C93FA9B8();
          v78 = v102;
          v77 = v103;
          goto LABEL_24;
        case 7:
          v128 = 7;
          sub_1C93F8F60();
          sub_1C93FA974(&type metadata for SessionReadinessError.MissingEncryptionIdentityCodingKeys, &v128);
          sub_1C93FA9B8();
          v78 = v104;
          v77 = v105;
          goto LABEL_24;
        case 8:
          v129 = 8;
          sub_1C93F8F0C();
          v50 = v113;
          sub_1C93FA974(&type metadata for SessionReadinessError.AccountDataProtectionInsufficientCodingKeys, &v129);
          sub_1C93FA9B8();
          v78 = v106;
          v77 = v107;
          goto LABEL_24;
        case 9:
          v130 = 9;
          sub_1C93F8EB8();
          v50 = v114;
          sub_1C93FA974(&type metadata for SessionReadinessError.AccountTemporarilyUnavailableCodingKeys, &v130);
          sub_1C93FA9B8();
          v78 = v108;
          v77 = v109;
LABEL_24:
          v75 = *(v78 + 8);
          v74 = v50;
LABEL_25:
          v75(v74, v77);
          v83 = sub_1C93FA9A8();
          v84(v83, v48);
          v73 = v119;
          goto LABEL_26;
        default:
          v121 = 0;
          sub_1C93F91AC();
          v68 = v88;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (v67)
          {
            v69 = sub_1C93FA9A8();
            v79(v69, v58);
            sub_1C93FA9B8();
            goto LABEL_11;
          }

          sub_1C93FA9B8();
          sub_1C939EE68();
          v80(v68, v87);
          v81 = sub_1C93FA9A8();
          v82(v81, v58);
          v73 = v119;
          v65 = v59;
LABEL_26:
          *v66 = v65;
          break;
      }

      return sub_1C939EA94(v73);
    }

    v56 = v120;
    v40 = v58;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C93F9D58()
{
  result = qword_1EE02B5F0;
  if (!qword_1EE02B5F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SessionReadinessError, &type metadata for SessionReadinessError, v0, v1);
    atomic_store(result, &qword_1EE02B5F0);
  }

  return result;
}

unint64_t sub_1C93F9DB0()
{
  result = qword_1EC39B7B8;
  if (!qword_1EC39B7B8)
  {
    v3 = sub_1C93B27AC(&qword_1EC39B7C0, &qword_1C9405110);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EC39B7B8);
  }

  return result;
}

uint64_t type metadata accessor for CloudCoreError(uint64_t a1)
{
  result = qword_1EE02BFE0;
  if (!qword_1EE02BFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C93F9E88(uint64_t a1)
{
  sub_1C93F9EE0(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1C93F9EE0(uint64_t a1)
{
  if (!qword_1EE02B6C8)
  {
    type metadata accessor for SessionInvalidationContext(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE02B6C8);
    }
  }
}

uint64_t sub_1C93F9F5C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C93F9FE4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C93FA164()
{
  result = qword_1EC39B7C8;
  if (!qword_1EC39B7C8)
  {
    result = swift_getWitnessTable(byte_1C9405768, &type metadata for SessionReadinessError.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC39B7C8);
  }

  return result;
}

unint64_t sub_1C93FA1BC()
{
  result = qword_1EE02B628;
  if (!qword_1EE02B628)
  {
    result = swift_getWitnessTable(aId_7, &type metadata for SessionReadinessError.NeedFirstUserAuthenticationCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B628);
  }

  return result;
}

unint64_t sub_1C93FA214()
{
  result = qword_1EE02B630;
  if (!qword_1EE02B630)
  {
    result = swift_getWitnessTable(byte_1C94056B0, &type metadata for SessionReadinessError.NeedFirstUserAuthenticationCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B630);
  }

  return result;
}

unint64_t sub_1C93FA26C()
{
  result = qword_1EE02B680;
  if (!qword_1EE02B680)
  {
    result = swift_getWitnessTable(byte_1C9405638, &type metadata for SessionReadinessError.DeviceNotPastBuddyCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B680);
  }

  return result;
}

unint64_t sub_1C93FA2C4()
{
  result = qword_1EE02B688;
  if (!qword_1EE02B688)
  {
    result = swift_getWitnessTable(byte_1C9405660, &type metadata for SessionReadinessError.DeviceNotPastBuddyCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B688);
  }

  return result;
}

unint64_t sub_1C93FA31C()
{
  result = qword_1EE02B660;
  if (!qword_1EE02B660)
  {
    result = swift_getWitnessTable(aE_1, &type metadata for SessionReadinessError.AccountLookupFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B660);
  }

  return result;
}

unint64_t sub_1C93FA374()
{
  result = qword_1EE02B668;
  if (!qword_1EE02B668)
  {
    result = swift_getWitnessTable(aA_3, &type metadata for SessionReadinessError.AccountLookupFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B668);
  }

  return result;
}

unint64_t sub_1C93FA3CC()
{
  result = qword_1EE02B698;
  if (!qword_1EE02B698)
  {
    result = swift_getWitnessTable(aYe, &type metadata for SessionReadinessError.AccountNotLoggedInCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B698);
  }

  return result;
}

unint64_t sub_1C93FA424()
{
  result = qword_1EE02B6A0;
  if (!qword_1EE02B6A0)
  {
    result = swift_getWitnessTable(aQa, &type metadata for SessionReadinessError.AccountNotLoggedInCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B6A0);
  }

  return result;
}

unint64_t sub_1C93FA47C()
{
  result = qword_1EE02B670;
  if (!qword_1EE02B670)
  {
    result = swift_getWitnessTable(byte_1C9405548, &type metadata for SessionReadinessError.AccountAccessFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B670);
  }

  return result;
}

unint64_t sub_1C93FA4D4()
{
  result = qword_1EE02B678;
  if (!qword_1EE02B678)
  {
    result = swift_getWitnessTable(byte_1C9405570, &type metadata for SessionReadinessError.AccountAccessFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B678);
  }

  return result;
}

unint64_t sub_1C93FA52C()
{
  result = qword_1EE02B650;
  if (!qword_1EE02B650)
  {
    result = swift_getWitnessTable(byte_1C94054F8, &type metadata for SessionReadinessError.AccountUnauthenticatedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B650);
  }

  return result;
}

unint64_t sub_1C93FA584()
{
  result = qword_1EE02B658;
  if (!qword_1EE02B658)
  {
    result = swift_getWitnessTable(byte_1C9405520, &type metadata for SessionReadinessError.AccountUnauthenticatedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B658);
  }

  return result;
}

unint64_t sub_1C93FA5DC()
{
  result = qword_1EE02B608;
  if (!qword_1EE02B608)
  {
    result = swift_getWitnessTable(aIf, &type metadata for SessionReadinessError.AccountTermsOfServiceNotAcceptedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B608);
  }

  return result;
}

unint64_t sub_1C93FA634()
{
  result = qword_1EE02B610;
  if (!qword_1EE02B610)
  {
    result = swift_getWitnessTable(aAb, &type metadata for SessionReadinessError.AccountTermsOfServiceNotAcceptedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B610);
  }

  return result;
}

unint64_t sub_1C93FA68C()
{
  result = qword_1EE02B638;
  if (!qword_1EE02B638)
  {
    result = swift_getWitnessTable(byte_1C9405458, &type metadata for SessionReadinessError.MissingEncryptionIdentityCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B638);
  }

  return result;
}

unint64_t sub_1C93FA6E4()
{
  result = qword_1EE02B640;
  if (!qword_1EE02B640)
  {
    result = swift_getWitnessTable(byte_1C9405480, &type metadata for SessionReadinessError.MissingEncryptionIdentityCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B640);
  }

  return result;
}

unint64_t sub_1C93FA73C()
{
  result = qword_1EE02B5F8;
  if (!qword_1EE02B5F8)
  {
    result = swift_getWitnessTable(byte_1C9405408, &type metadata for SessionReadinessError.AccountDataProtectionInsufficientCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B5F8);
  }

  return result;
}

unint64_t sub_1C93FA794()
{
  result = qword_1EE02B600;
  if (!qword_1EE02B600)
  {
    result = swift_getWitnessTable(byte_1C9405430, &type metadata for SessionReadinessError.AccountDataProtectionInsufficientCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B600);
  }

  return result;
}

unint64_t sub_1C93FA7EC()
{
  result = qword_1EE02B618;
  if (!qword_1EE02B618)
  {
    result = swift_getWitnessTable(a9g, &type metadata for SessionReadinessError.AccountTemporarilyUnavailableCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B618);
  }

  return result;
}

unint64_t sub_1C93FA844()
{
  result = qword_1EE02B620;
  if (!qword_1EE02B620)
  {
    result = swift_getWitnessTable(aQc, &type metadata for SessionReadinessError.AccountTemporarilyUnavailableCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B620);
  }

  return result;
}

unint64_t sub_1C93FA89C()
{
  result = qword_1EE02B6B0;
  if (!qword_1EE02B6B0)
  {
    result = swift_getWitnessTable(byte_1C94056D8, &type metadata for SessionReadinessError.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B6B0);
  }

  return result;
}

unint64_t sub_1C93FA8F4()
{
  result = qword_1EE02B6B8;
  if (!qword_1EE02B6B8)
  {
    result = swift_getWitnessTable(a1_0, &type metadata for SessionReadinessError.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B6B8);
  }

  return result;
}

uint64_t sub_1C93FA950(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1C93FA974(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1C93FA9B8()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1C93FA9D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6513524 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73616C6361746164 && a2 == 0xE900000000000073;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65536D6574737973 && a2 == 0xED00006563697672)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C93FAAF0(char a1)
{
  if (!a1)
  {
    return 6513524;
  }

  if (a1 == 1)
  {
    return 0x73616C6361746164;
  }

  return 0x65536D6574737973;
}

uint64_t sub_1C93FAB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93FA9D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93FAB80(uint64_t a1)
{
  v2 = sub_1C93FB04C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93FABBC(uint64_t a1)
{
  v2 = sub_1C93FB04C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93FABF8(uint64_t a1)
{
  v2 = sub_1C93FB0A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93FAC34(uint64_t a1)
{
  v2 = sub_1C93FB0A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93FAC70(uint64_t a1)
{
  v2 = sub_1C93FB0F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93FACAC(uint64_t a1)
{
  v2 = sub_1C93FB0F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuthenticatedSession.Configuration.Account.AuthorizationUI.Payload.encode(to:)(void *a1)
{
  sub_1C93A1890(&qword_1EC39B7D0, &qword_1C9405B00);
  sub_1C939D44C();
  v29 = v4;
  v30 = v3;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v25 - v6;
  v7 = sub_1C93A1890(&qword_1EC39B7D8, &qword_1C9405B08);
  sub_1C939D44C();
  v27 = v8;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v32 = sub_1C93A1890(&qword_1EC39B7E0, &qword_1C9405B10);
  sub_1C939D44C();
  v13 = v12;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = v1[1];
  v31 = *v1;
  v26 = v17;
  v18 = *(v1 + 16);
  sub_1C93A4890(a1, a1[3]);
  sub_1C93FB04C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v18)
  {
    if (v18 == 1)
    {
      LOBYTE(v33[0]) = 1;
      sub_1C93FB0A0();
      v19 = v28;
      v20 = v32;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v30;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v29 + 8))(v19, v21);
      return (*(v13 + 8))(v16, v20);
    }

    else
    {
      v34 = 2;
      v24 = v32;
      KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
      sub_1C939EA94(v33);
      return (*(v13 + 8))(v16, v24);
    }
  }

  else
  {
    LOBYTE(v33[0]) = 0;
    sub_1C93FB0F4();
    v23 = v32;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v33[0] = v31;
    v33[1] = v26;
    sub_1C93B229C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v27 + 8))(v11, v7);
    return (*(v13 + 8))(v16, v23);
  }
}

unint64_t sub_1C93FB04C()
{
  result = qword_1EE02B7D8;
  if (!qword_1EE02B7D8)
  {
    result = swift_getWitnessTable(aC_0, &_s10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EE02B7D8);
  }

  return result;
}

unint64_t sub_1C93FB0A0()
{
  result = qword_1EC39B7E8;
  if (!qword_1EC39B7E8)
  {
    result = swift_getWitnessTable(aC_1, &_s19DataclassCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC39B7E8);
  }

  return result;
}

unint64_t sub_1C93FB0F4()
{
  result = qword_1EE02B7B0;
  if (!qword_1EE02B7B0)
  {
    result = swift_getWitnessTable(byte_1C9405DEC, &_s13TCCCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EE02B7B0);
  }

  return result;
}

uint64_t AuthenticatedSession.Configuration.Account.AuthorizationUI.Payload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  sub_1C93A1890(&qword_1EC39B7F0, &qword_1C9405B18);
  sub_1C939D44C();
  v48 = v3;
  v49 = v4;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v46 - v6;
  sub_1C93A1890(&qword_1EC39B7F8, &qword_1C9405B20);
  sub_1C939D44C();
  v46 = v7;
  v47 = v8;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  v12 = type metadata accessor for DecodingError.Context();
  sub_1C939D44C();
  v50 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C93A1890(&qword_1EC39B800, &unk_1C9405B28);
  sub_1C939D44C();
  v53 = v18;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  sub_1C93A4890(a1, a1[3]);
  sub_1C93FB04C();
  v22 = v55;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    goto LABEL_11;
  }

  v55 = a1;
  v23 = KeyedDecodingContainer.allKeys.getter();
  if (!*(v23 + 16))
  {

    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v30 = v29;
    v31 = *(sub_1C93A1890(&qword_1EC39AAB0, "̗") + 48);
    *v30 = &type metadata for AuthenticatedSession.Configuration.Account.AuthorizationUI.Payload;
    v32 = v50;
    (*(v50 + 16))(&v30[v31], v16, v12);
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    (*(v32 + 8))(v16, v12);
    (*(v53 + 8))(v21, v17);
    a1 = v55;
LABEL_11:
    v36 = a1;
    return sub_1C939EA94(v36);
  }

  v24 = *(v23 + 32);

  if (!v24)
  {
    LOBYTE(v54[0]) = 0;
    sub_1C93FB0F4();
    v33 = v11;
    sub_1C93FBBA4(&_s13TCCCodingKeysON, v54);
    sub_1C93B22F0();
    v38 = v46;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v47 + 1))(v33, v38);
    v39 = sub_1C93FBB94();
    v40(v39);
    v42 = v54[0];
    v45 = v54[1];
    v25 = v55;
LABEL_9:
    v27 = v51;
    goto LABEL_10;
  }

  v25 = v55;
  v26 = v53;
  if (v24 != 1)
  {
    v34 = sub_1C93FBB94();
    v35(v34);
    v42 = 0;
    v45 = 0;
    goto LABEL_9;
  }

  LOBYTE(v54[0]) = 1;
  sub_1C93FB0A0();
  sub_1C93FBBA4(&_s19DataclassCodingKeysON, v54);
  v27 = v51;
  v47 = v21;
  v50 = v17;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  v42 = MEMORY[0x1CCA876F0](v37);

  v43 = sub_1C939D654();
  v44(v43);
  (*(v26 + 8))(v47, v50);
  v45 = 0;
LABEL_10:
  *v27 = v42;
  *(v27 + 8) = v45;
  *(v27 + 16) = v24;
  v36 = v25;
  return sub_1C939EA94(v36);
}

_BYTE *_s10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C93FB7CC(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C93FB87C()
{
  result = qword_1EC39B808;
  if (!qword_1EC39B808)
  {
    result = swift_getWitnessTable(byte_1C9405C54, &_s19DataclassCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC39B808);
  }

  return result;
}

unint64_t sub_1C93FB8D4()
{
  result = qword_1EC39B810;
  if (!qword_1EC39B810)
  {
    result = swift_getWitnessTable(a1_1, &_s13TCCCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC39B810);
  }

  return result;
}

unint64_t sub_1C93FB92C()
{
  result = qword_1EC39B818;
  if (!qword_1EC39B818)
  {
    result = swift_getWitnessTable(byte_1C9405DC4, &_s10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC39B818);
  }

  return result;
}

unint64_t sub_1C93FB984()
{
  result = qword_1EE02B7B8;
  if (!qword_1EE02B7B8)
  {
    result = swift_getWitnessTable(aU_0, &_s13TCCCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EE02B7B8);
  }

  return result;
}

unint64_t sub_1C93FB9DC()
{
  result = qword_1EE02B7C0;
  if (!qword_1EE02B7C0)
  {
    result = swift_getWitnessTable(byte_1C9405CA4, &_s13TCCCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EE02B7C0);
  }

  return result;
}

unint64_t sub_1C93FBA34()
{
  result = qword_1EE02B7A0;
  if (!qword_1EE02B7A0)
  {
    result = swift_getWitnessTable(asc_1C9405BC4, &_s19DataclassCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EE02B7A0);
  }

  return result;
}

unint64_t sub_1C93FBA8C()
{
  result = qword_1EE02B7A8;
  if (!qword_1EE02B7A8)
  {
    result = swift_getWitnessTable(aE_2, &_s19DataclassCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EE02B7A8);
  }

  return result;
}

unint64_t sub_1C93FBAE4()
{
  result = qword_1EE02B7C8;
  if (!qword_1EE02B7C8)
  {
    result = swift_getWitnessTable(byte_1C9405D34, &_s10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EE02B7C8);
  }

  return result;
}

unint64_t sub_1C93FBB3C()
{
  result = qword_1EE02B7D0;
  if (!qword_1EE02B7D0)
  {
    result = swift_getWitnessTable(byte_1C9405D5C, &_s10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EE02B7D0);
  }

  return result;
}

uint64_t sub_1C93FBBA4(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x1EEE68DA0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = MEMORY[0x1EEE690A0](repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACC8]();
}

{
  return MEMORY[0x1EEE6ACD0]();
}

{
  return MEMORY[0x1EEE6ACE8]();
}

{
  return MEMORY[0x1EEE6AD18]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE00]();
}

{
  return MEMORY[0x1EEE6AE08]();
}

{
  return MEMORY[0x1EEE6AE20]();
}

{
  return MEMORY[0x1EEE6AE50]();
}