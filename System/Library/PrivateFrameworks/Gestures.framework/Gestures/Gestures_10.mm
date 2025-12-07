uint64_t sub_18E71C018(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 3;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 3;
  if (v9 < v11)
  {
    v12 = 3 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 3)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v17 = v6[2];
      if (v17 != 2)
      {
        v18 = v4[2];
        if (v18 == 2 || ((v17 ^ 1 | v18) & 1) == 0)
        {
          break;
        }
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 3;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 3;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    v7[2] = v14[2];
    *v7 = v16;
    goto LABEL_9;
  }

  v19 = 3 * v11;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 3 * v11);
  }

  v13 = &v4[v19];
  if (v10 >= 3 && v6 > v7)
  {
LABEL_22:
    v5 -= 3;
    do
    {
      v20 = *(v13 - 1);
      if (v20 != 2)
      {
        v21 = *(v6 - 1);
        if (v21 == 2 || ((v20 ^ 1 | v21) & 1) == 0)
        {
          v24 = v6 - 3;
          if ((v5 + 3) != v6)
          {
            v25 = *v24;
            *(v5 + 2) = *(v6 - 1);
            *v5 = v25;
          }

          if (v13 <= v4 || (v6 -= 3, v24 <= v7))
          {
            v6 = v24;
            goto LABEL_35;
          }

          goto LABEL_22;
        }
      }

      v22 = (v13 - 3);
      if ((v5 + 3) != v13)
      {
        v23 = *v22;
        *(v5 + 2) = *(v22 + 2);
        *v5 = v23;
      }

      v5 -= 3;
      v13 = v22;
    }

    while (v22 > v4);
    v13 = v22;
  }

LABEL_35:
  v26 = ((v13 - v4) * 0x5555555555555556) >> 64;
  v27 = 3 * (v26 + (v26 >> 63));
  if (v6 != v4 || v6 >= &v4[v27])
  {
    memmove(v6, v4, v27);
  }

  return 1;
}

uint64_t sub_18E71C254(char *__dst, char *__src, char *a3, char *a4)
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
      __dst = memmove(a4, __dst, 8 * v10);
    }

    v78 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_59;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v72 = v7;
      v74 = v6;
      v17 = *v6;
      v76 = v4;
      v18 = *v4;
      v19 = (*(**v6 + 192))(__dst);
      if (v19)
      {
        v21 = v19;
        v22 = v20;
        v23 = (*(*v18 + 192))();
        if (v23)
        {
          v25 = v23;
          v26 = v24;
          ObjectType = swift_getObjectType();
          v28 = ObjectType;
          if (v21 == v25)
          {
            v66 = ObjectType;
            v29 = swift_getObjectType();
            v69 = *(v22 + 8);

            v30 = v69(v17, v29, v22);
            if (v31)
            {

              swift_unknownObjectRelease();
              __dst = swift_unknownObjectRelease();
              v6 = v74;
              v4 = v76;
            }

            else
            {
              v32 = v30;
              v33 = (*(v26 + 8))(v18, v66, v26);
              v35 = v34;

              swift_unknownObjectRelease();
              __dst = swift_unknownObjectRelease();
              v6 = v74;
              v4 = v76;
              if ((v35 & 1) == 0 && v32 < v33)
              {
                goto LABEL_28;
              }
            }
          }

          else
          {
            v70 = *(v26 + 24);

            v38 = v70(v21, v22, v17, v28, v26);

            swift_unknownObjectRelease();
            __dst = swift_unknownObjectRelease();
            v6 = v74;
            v4 = v76;
            if (v38)
            {
              goto LABEL_28;
            }
          }

          goto LABEL_12;
        }

        v36 = swift_unknownObjectRelease();
      }

      else
      {
      }

      v37 = (*(*v18 + 192))(v36);

      v4 = v76;
      if (v37)
      {
        __dst = swift_unknownObjectRelease();
LABEL_28:
        v14 = v6;
        v15 = v72;
        v16 = v72 == v6;
        v6 += 8;
        if (v16)
        {
          goto LABEL_14;
        }

LABEL_13:
        *v15 = *v14;
        goto LABEL_14;
      }

LABEL_12:
      v14 = v4;
      v15 = v72;
      v16 = v72 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_13;
      }

LABEL_14:
      v7 = v15 + 8;
      if (v4 >= v78)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    __dst = memmove(a4, __src, 8 * v13);
  }

  v78 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
    v77 = v4;
    v73 = v7;
LABEL_37:
    v75 = v6;
    v39 = v6 - 8;
    v5 -= 8;
    v40 = v78;
    v71 = v39;
    while (1)
    {
      v42 = *(v40 - 1);
      v40 -= 8;
      v41 = v42;
      v43 = *v39;
      v44 = (*(*v42 + 192))(__dst);
      if (!v44)
      {
        break;
      }

      v46 = v44;
      v47 = v45;
      v48 = (*(*v43 + 192))();
      if (!v48)
      {

        v57 = swift_unknownObjectRelease();
LABEL_46:
        v58 = (*(*v43 + 192))(v57);

        v4 = v77;
        if (v58)
        {
          __dst = swift_unknownObjectRelease();
LABEL_53:
          if (v5 + 8 != v75)
          {
            *v5 = *v71;
          }

          if (v78 <= v4 || (v6 = v71, v71 <= v73))
          {
            v6 = v71;
            goto LABEL_59;
          }

          goto LABEL_37;
        }

        goto LABEL_49;
      }

      v50 = v48;
      v51 = v49;
      v52 = swift_getObjectType();
      v53 = v52;
      if (v46 == v50)
      {
        v65 = v52;
        v54 = swift_getObjectType();
        v67 = *(v47 + 8);

        v55 = v67(v41, v54, v47);
        if (v56)
        {

          swift_unknownObjectRelease();
          __dst = swift_unknownObjectRelease();
          v4 = v77;
        }

        else
        {
          v60 = v55;
          v61 = (*(v51 + 8))(v43, v65);
          v63 = v62;

          swift_unknownObjectRelease();
          __dst = swift_unknownObjectRelease();
          v4 = v77;
          if ((v63 & 1) == 0 && v60 < v61)
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
        v68 = *(v51 + 24);

        v59 = v68(v46, v47, v41, v53, v51);

        swift_unknownObjectRelease();
        __dst = swift_unknownObjectRelease();
        v4 = v77;
        if (v59)
        {
          goto LABEL_53;
        }
      }

LABEL_49:
      if (v5 + 8 != v78)
      {
        *v5 = *v40;
      }

      v5 -= 8;
      v78 = v40;
      v39 = v71;
      if (v40 <= v4)
      {
        v78 = v40;
        v6 = v75;
        goto LABEL_59;
      }
    }

    goto LABEL_46;
  }

LABEL_59:
  if (v6 != v4 || v6 >= &v4[(v78 - v4 + (v78 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v78 - v4) / 8));
  }

  return 1;
}

uint64_t sub_18E71C918(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_18E72B518();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_18E72B518();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_18E71CA98();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDB8, &qword_18E72F5E8);
            v9 = sub_18E6F1D88(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AnyGestureNode();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_18E71CA98()
{
  result = qword_1EAC8FA88;
  if (!qword_1EAC8FA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8EDB8, &qword_18E72F5E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8FA88);
  }

  return result;
}

unint64_t sub_18E71CAFC()
{
  result = qword_1EAC8FA98[0];
  if (!qword_1EAC8FA98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAC8FA98);
  }

  return result;
}

uint64_t sub_18E71CB50(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E71CBEC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t sub_18E71CCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E71CD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E71CDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E71CE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E71CED0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_18E71CFD4(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_18E71D170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v13 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, v6, a1);
  (*(v13 + 32))(a5, v15, a1);
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a3;
  v17[3] = a4;
  result = type metadata accessor for SeparationDistanceGate(0, v17);
  *(a5 + *(result + 52)) = a6;
  return result;
}

float64_t sub_18E71D290(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 32);
    v2 = (a1 + 32);
    v4 = v3;
    v5 = v3;
    do
    {
      v6 = *v2++;
      v5 = vbslq_s8(vcgtq_f64(v5, v6), v6, v5);
      v4 = vbslq_s8(vcgeq_f64(v6, v4), v6, v4);
      --v1;
    }

    while (v1);
  }

  else
  {
    v5.f64[0] = *MEMORY[0x1E695F050];
  }

  return v5.f64[0];
}

uint64_t sub_18E71D2E4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(v4 + *(a3 + 52));
  if (v8 >= 1.79769313e308)
  {
    v32 = 0u;
    v33 = 0u;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v27 = a4;
    v28 = a1;
  }

  else
  {
    v31 = a4;
    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v11 = swift_getAssociatedTypeWitness();
    v12 = *(a3 + 32);
    v13 = sub_18E72B308();
    if (v13 >= 2)
    {
      v30 = &v30;
      MEMORY[0x1EEE9AC00](v13);
      v29[2] = v10;
      v29[3] = v9;
      v14 = *(a3 + 40);
      v29[4] = v12;
      v29[5] = v14;
      type metadata accessor for CGPoint(0);
      v17 = sub_18E6D9708(sub_18E71D674, v29, v11, v15, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v16);
      v18 = sub_18E71D290(v17);
      v20 = v19;
      v22 = v21;
      v24 = v23;

      if (v8 < sqrt((v18 - (v18 + v22)) * (v18 - (v18 + v22)) + (v20 - (v20 + v24)) * (v20 - (v20 + v24))))
      {
        *&v32 = v10;
        *(&v32 + 1) = v9;
        *&v33 = v12;
        *(&v33 + 1) = v14;
        type metadata accessor for SeparationDistanceGate.Failure(0, &v32);
        swift_getWitnessTable();
        swift_allocError();
        return swift_willThrow();
      }
    }

    v32 = 0u;
    v33 = 0u;
    v27 = v31;
    v28 = a1;
    AssociatedTypeWitness = v11;
  }

  return sub_18E6FEC1C(v28, &v32, AssociatedTypeWitness, v27);
}

void sub_18E71D538(uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a5 = v7(AssociatedTypeWitness, a4);
  *(a5 + 8) = v9;
}

uint64_t sub_18E71D5FC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E71D638(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_18E71D6CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7 & 0xF8 | 7;
  v9 = *(v5 + 64);
  v10 = ((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v9 > v10)
  {
    v10 = *(v5 + 64);
  }

  if (v10 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v10;
  }

  if ((v7 & 0x1000F8) == 0)
  {
    v12 = v11 + 1;
    if ((((((v7 & 0xF8) + 47) | v8) + v11 + 1) & ~v8) + ((((v11 + 8 + (((v7 & 0xF8) + 31) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 <= 0x18)
    {
      v13 = a2[3];
      v47 = v11 + 8;
      if (v13 < 0xFFFFFFFF)
      {
        v17 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v17;
        *(a1 + 32) = a2[4];
      }

      else
      {
        v14 = a2[4];
        *(a1 + 24) = v13;
        *(a1 + 32) = v14;
        v15 = a2;
        (**(v13 - 8))(a1);
        a2 = v15;
      }

      v18 = ((v3 + 47) & 0xFFFFFFFFFFFFFFF8);
      v19 = a2 + 47;
      v20 = ((a2 + 47) & 0xFFFFFFFFFFFFFFF8);
      v21 = *(v20 + v11);
      v22 = v21 - 4;
      if (v21 < 4)
      {
LABEL_28:
        if (v21 > 1)
        {
          if (v21 == 2)
          {
            (*(v6 + 16))((v3 + 47) & 0xFFFFFFFFFFFFFFF8);
            v25 = 2;
            goto LABEL_38;
          }

          if (v21 == 3)
          {
            v26 = *v20;
            sub_18E683B80(*v20);
            *v18 = v26;
            v25 = 3;
            goto LABEL_38;
          }
        }

        else
        {
          if (!v21)
          {
            v27 = v20;
            (*(v6 + 16))((v3 + 47) & 0xFFFFFFFFFFFFFFF8);
            *((v18 + v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *((v27 + v9 + 3) & 0xFFFFFFFFFFFFFFFCLL);
            *(v18 + v11) = 0;
            goto LABEL_39;
          }

          if (v21 == 1)
          {
            (*(v6 + 16))((v3 + 47) & 0xFFFFFFFFFFFFFFF8);
            v25 = 1;
LABEL_38:
            *(v18 + v11) = v25;
LABEL_39:
            v28 = ((((v3 + 47) | 7) + v12) & 0xFFFFFFFFFFFFFFF8);
            v29 = (((v19 | 7) + v12) & 0xFFFFFFFFFFFFFFF8);
            *v28 = *v29;
            v30 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
            v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
            *v30 = *v31;
            v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
            v33 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
            *v32 = *v33;
            v34 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
            v35 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
            v36 = v35[v11];

            if (v36 < 4)
            {
              goto LABEL_54;
            }

            if (v11 <= 3)
            {
              v37 = v11;
            }

            else
            {
              v37 = 4;
            }

            if (v37 <= 1)
            {
              v38 = 8 * v11;
              if (!v37)
              {
                goto LABEL_54;
              }

              v39 = *v35;
            }

            else
            {
              v38 = 8 * v11;
              if (v37 == 2)
              {
                v39 = *v35;
              }

              else if (v37 == 3)
              {
                v39 = *v35 | (v35[2] << 16);
              }

              else
              {
                v39 = *v35;
              }
            }

            v40 = (v39 | ((v36 - 4) << v38)) + 4;
            v41 = v39 + 4;
            if (v11 >= 4)
            {
              v36 = v41;
            }

            else
            {
              v36 = v40;
            }

LABEL_54:
            if (v36 > 1)
            {
              if (v36 == 2)
              {
                (*(v6 + 16))(v34, v35, v4);
                v42 = 2;
                goto LABEL_64;
              }

              if (v36 == 3)
              {
                v43 = *v35;
                sub_18E683B80(*v35);
                *v34 = v43;
                v42 = 3;
                goto LABEL_64;
              }
            }

            else
            {
              if (!v36)
              {
                (*(v6 + 16))(v34, v35, v4);
                *((v34 + v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *(&v35[v9 + 3] & 0xFFFFFFFFFFFFFFFCLL);
                *(v34 + v11) = 0;
                goto LABEL_65;
              }

              if (v36 == 1)
              {
                (*(v6 + 16))(v34, v35, v4);
                v42 = 1;
LABEL_64:
                *(v34 + v11) = v42;
                goto LABEL_65;
              }
            }

            memcpy(v34, v35, v11 + 1);
LABEL_65:
            v44 = ((v34 + v47) & 0xFFFFFFFFFFFFFFF8);
            v45 = (&v35[v47] & 0xFFFFFFFFFFFFFFF8);
            *v44 = *v45;
            *((v44 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v45 + 15) & 0xFFFFFFFFFFFFFFF8);
            return v3;
          }
        }

        memcpy(((v3 + 47) & 0xFFFFFFFFFFFFFFF8), v20, v11 + 1);
        goto LABEL_39;
      }

      if (v11 <= 3)
      {
        v23 = v11;
      }

      else
      {
        v23 = 4;
      }

      if (v23 > 1)
      {
        if (v23 == 2)
        {
          v24 = *v20;
          if (v11 >= 4)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v23 == 3)
          {
            v24 = *v20 | (*(v20 + 2) << 16);
            if (v11 < 4)
            {
              goto LABEL_27;
            }

LABEL_25:
            v21 = v24 + 4;
            goto LABEL_28;
          }

          v24 = *v20;
          if (v11 >= 4)
          {
            goto LABEL_25;
          }
        }

LABEL_27:
        v21 = (v24 | (v22 << (8 * v11))) + 4;
        goto LABEL_28;
      }

      if (!v23)
      {
        goto LABEL_28;
      }

      v24 = *v20;
      if (v11 < 4)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }
  }

  v16 = *a2;
  *v3 = *a2;
  v3 = (v16 + ((v8 + 16) & ~v8));

  return v3;
}

uint64_t sub_18E71DBA8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *(a2 + 3);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v6 >= 0xFFFFFFFF)
    {
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 4);
      (**(v6 - 8))(a1, a2);
      goto LABEL_8;
    }
  }

  else
  {
    if (v6 >= 0xFFFFFFFF)
    {
      __swift_assign_boxed_opaque_existential_1(a1, a2);
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v7 = *a2;
  v8 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v7;
  *(a1 + 16) = v8;
LABEL_8:
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80) & 0xF8;
  v12 = v11 | 7;
  v11 += 47;
  v13 = ~v12;
  v14 = ((v11 + a1) & ~v12);
  v15 = ((a2 + v11) & ~v12);
  v16 = *(v10 + 64);
  v64 = v16 + 3;
  v65 = v10;
  v17 = ((v16 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v16 > v17)
  {
    v17 = *(*(v9 - 8) + 64);
  }

  if (v17 <= 8)
  {
    v18 = 8;
  }

  else
  {
    v18 = v17;
  }

  if (v14 == v15)
  {
    v19 = v9;
    v20 = 8 * v18;
    goto LABEL_15;
  }

  v34 = 8 * v18;
  v35 = v14[v18];
  v36 = v35 - 4;
  if (v35 >= 4)
  {
    if (v18 <= 3)
    {
      v37 = v18;
    }

    else
    {
      v37 = 4;
    }

    if (v37 <= 1)
    {
      if (!v37)
      {
        goto LABEL_43;
      }

      v38 = *v14;
    }

    else if (v37 == 2)
    {
      v38 = *v14;
    }

    else if (v37 == 3)
    {
      v38 = *v14 | (v14[2] << 16);
    }

    else
    {
      v38 = *v14;
    }

    v46 = (v38 | (v36 << v34)) + 4;
    v35 = v38 + 4;
    if (v18 < 4)
    {
      v35 = v46;
    }
  }

LABEL_43:
  if (v35 <= 1)
  {
    if (v35 >= 2)
    {
      goto LABEL_50;
    }

LABEL_49:
    (*(v10 + 8))(v14, v9);
    goto LABEL_50;
  }

  if (v35 == 2)
  {
    goto LABEL_49;
  }

  if (v35 == 3)
  {
    sub_18E683B98(*v14);
  }

LABEL_50:
  v47 = v15[v18];
  v48 = v47 - 4;
  if (v47 < 4)
  {
    goto LABEL_86;
  }

  if (v18 <= 3)
  {
    v49 = v18;
  }

  else
  {
    v49 = 4;
  }

  if (v49 <= 1)
  {
    if (!v49)
    {
      goto LABEL_86;
    }

    v50 = *v15;
  }

  else if (v49 == 2)
  {
    v50 = *v15;
  }

  else if (v49 == 3)
  {
    v50 = *v15 | (v15[2] << 16);
  }

  else
  {
    v50 = *v15;
  }

  v56 = (v50 | (v48 << v34)) + 4;
  v47 = v50 + 4;
  if (v18 < 4)
  {
    v47 = v56;
  }

LABEL_86:
  if (v47 > 1)
  {
    if (v47 != 2)
    {
      v19 = v9;
      if (v47 == 3)
      {
        v20 = 8 * v18;
        v57 = *v15;
        sub_18E683B80(*v15);
        *v14 = v57;
        v14[v18] = 3;
        goto LABEL_15;
      }

      goto LABEL_93;
    }

    v60 = v9;
    v20 = 8 * v18;
    v61 = *(v10 + 16);
    v19 = v60;
    v61(v14, v15);
    v14[v18] = 2;
  }

  else
  {
    if (v47)
    {
      v19 = v9;
      if (v47 == 1)
      {
        v20 = 8 * v18;
        (*(v65 + 16))(v14, v15, v19);
        v14[v18] = 1;
        goto LABEL_15;
      }

LABEL_93:
      v20 = 8 * v18;
      memcpy(v14, v15, v18 + 1);
      goto LABEL_15;
    }

    v58 = v9;
    v20 = 8 * v18;
    v59 = *(v10 + 16);
    v19 = v58;
    v59(v14, v15);
    *(&v14[v16 + 3] & 0xFFFFFFFFFFFFFFFCLL) = *(&v15[v16 + 3] & 0xFFFFFFFFFFFFFFFCLL);
    v14[v18] = 0;
  }

LABEL_15:
  v21 = (&v14[v12 + 1 + v18] & v13);
  v22 = (&v15[v12 + 1 + v18] & v13);
  *v21 = *v22;
  v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;

  v27 = v25 + v12 + 8;
  v28 = (v27 & v13);
  v29 = v26 + v12 + 8;
  v30 = (v29 & v13);
  if ((v27 & v13) != (v29 & v13))
  {
    v39 = v28[v18];
    v40 = v39 - 4;
    if (v39 < 4)
    {
      v42 = v20;
      v44 = v19;
      v45 = v65;
      goto LABEL_65;
    }

    if (v18 <= 3)
    {
      v41 = v18;
    }

    else
    {
      v41 = 4;
    }

    v42 = v20;
    if (v41 <= 1)
    {
      v44 = v19;
      v45 = v65;
      if (!v41)
      {
        goto LABEL_65;
      }

      v43 = *v28;
    }

    else
    {
      if (v41 == 2)
      {
        v43 = *v28;
      }

      else if (v41 == 3)
      {
        v43 = *v28 | (v28[2] << 16);
      }

      else
      {
        v43 = *v28;
      }

      v44 = v19;
      v45 = v65;
    }

    v51 = (v43 | (v40 << v42)) + 4;
    v39 = v43 + 4;
    if (v18 < 4)
    {
      v39 = v51;
    }

LABEL_65:
    if (v39 > 1)
    {
      if (v39 != 2)
      {
        if (v39 == 3)
        {
          sub_18E683B98(*v28);
        }

LABEL_72:
        v52 = v30[v18];
        v53 = v52 - 4;
        if (v52 < 4)
        {
          goto LABEL_99;
        }

        if (v18 <= 3)
        {
          v54 = v18;
        }

        else
        {
          v54 = 4;
        }

        if (v54 <= 1)
        {
          if (!v54)
          {
            goto LABEL_99;
          }

          v55 = *v30;
        }

        else if (v54 == 2)
        {
          v55 = *v30;
        }

        else if (v54 == 3)
        {
          v55 = *v30 | (v30[2] << 16);
        }

        else
        {
          v55 = *v30;
        }

        v62 = (v55 | (v53 << v42)) + 4;
        v52 = v55 + 4;
        if (v18 < 4)
        {
          v52 = v62;
        }

LABEL_99:
        if (v52 > 1)
        {
          if (v52 == 2)
          {
            (*(v45 + 16))(v28, v30, v44);
            v28[v18] = 2;
            goto LABEL_16;
          }

          if (v52 == 3)
          {
            v63 = *v30;
            sub_18E683B80(*v30);
            *v28 = v63;
            v28[v18] = 3;
            goto LABEL_16;
          }
        }

        else
        {
          if (!v52)
          {
            (*(v45 + 16))(v28, v30, v44);
            *(&v28[v64] & 0xFFFFFFFFFFFFFFFCLL) = *(&v30[v64] & 0xFFFFFFFFFFFFFFFCLL);
            v28[v18] = 0;
            goto LABEL_16;
          }

          if (v52 == 1)
          {
            (*(v45 + 16))(v28, v30, v44);
            v28[v18] = 1;
            goto LABEL_16;
          }
        }

        memcpy(v28, v30, v18 + 1);
        goto LABEL_16;
      }
    }

    else if (v39 >= 2)
    {
      goto LABEL_72;
    }

    (*(v45 + 8))(v28, v44);
    goto LABEL_72;
  }

LABEL_16:
  v31 = (&v28[v18 + 8] & 0xFFFFFFFFFFFFFFF8);
  v32 = (&v30[v18 + 8] & 0xFFFFFFFFFFFFFFF8);
  *v31 = *v32;
  *((v31 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_18E71E468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80) & 0xF8;
  v8 = v7 | 7;
  v7 += 47;
  v9 = ((v7 + a1) & ~v8);
  v10 = ((v7 + a2) & ~v8);
  v11 = *(v6 + 64);
  v12 = v11 + 3;
  if (v11 <= ((v11 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4)
  {
    v11 = ((v11 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  if (v11 <= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = v11;
  }

  v14 = 8 * v13;
  v15 = v10[v13];
  v16 = v15 - 4;
  if (v15 >= 4)
  {
    if (v13 <= 3)
    {
      v17 = v13;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_20;
      }

      v18 = *v10;
    }

    else if (v17 == 2)
    {
      v18 = *v10;
    }

    else if (v17 == 3)
    {
      v18 = *v10 | (v10[2] << 16);
    }

    else
    {
      v18 = *v10;
    }

    v19 = (v18 | (v16 << v14)) + 4;
    v15 = v18 + 4;
    if (v13 < 4)
    {
      v15 = v19;
    }
  }

LABEL_20:
  v20 = ~v8;
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      (*(v6 + 32))(v9, v10, v5);
      v21 = 2;
      goto LABEL_30;
    }

    if (v15 == 3)
    {
      *v9 = *v10;
      v21 = 3;
      goto LABEL_30;
    }

LABEL_27:
    memcpy(v9, v10, v13 + 1);
    goto LABEL_31;
  }

  if (!v15)
  {
    (*(v6 + 32))(v9, v10, v5);
    *((v9 + v12) & 0xFFFFFFFFFFFFFFFCLL) = *(&v10[v12] & 0xFFFFFFFFFFFFFFFCLL);
    *(v9 + v13) = 0;
    goto LABEL_31;
  }

  if (v15 != 1)
  {
    goto LABEL_27;
  }

  (*(v6 + 32))(v9, v10, v5);
  v21 = 1;
LABEL_30:
  *(v9 + v13) = v21;
LABEL_31:
  v22 = ((v9 + v8 + v13 + 1) & v20);
  v23 = (&v10[v8 + 1 + v13] & v20);
  *v22 = *v23;
  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  v28 = ((v26 + v8 + 8) & v20);
  v29 = ((v27 + v8 + 8) & v20);
  v30 = v29[v13];
  v31 = v30 - 4;
  if (v30 < 4)
  {
    goto LABEL_45;
  }

  if (v13 <= 3)
  {
    v32 = v13;
  }

  else
  {
    v32 = 4;
  }

  if (v32 <= 1)
  {
    if (!v32)
    {
      goto LABEL_45;
    }

    v33 = *v29;
  }

  else if (v32 == 2)
  {
    v33 = *v29;
  }

  else if (v32 == 3)
  {
    v33 = *v29 | (v29[2] << 16);
  }

  else
  {
    v33 = *v29;
  }

  v34 = (v33 | (v31 << v14)) + 4;
  v30 = v33 + 4;
  if (v13 < 4)
  {
    v30 = v34;
  }

LABEL_45:
  if (v30 > 1)
  {
    if (v30 == 2)
    {
      (*(v6 + 32))(v28, v29, v5);
      v35 = 2;
      goto LABEL_55;
    }

    if (v30 == 3)
    {
      *v28 = *v29;
      v35 = 3;
      goto LABEL_55;
    }
  }

  else
  {
    if (!v30)
    {
      (*(v6 + 32))(v28, v29, v5);
      *((v28 + v12) & 0xFFFFFFFFFFFFFFFCLL) = *(&v29[v12] & 0xFFFFFFFFFFFFFFFCLL);
      *(v28 + v13) = 0;
      goto LABEL_56;
    }

    if (v30 == 1)
    {
      (*(v6 + 32))(v28, v29, v5);
      v35 = 1;
LABEL_55:
      *(v28 + v13) = v35;
      goto LABEL_56;
    }
  }

  memcpy(v28, v29, v13 + 1);
LABEL_56:
  v36 = ((v28 + v13 + 8) & 0xFFFFFFFFFFFFFFF8);
  v37 = (&v29[v13 + 8] & 0xFFFFFFFFFFFFFFF8);
  *v36 = *v37;
  *((v36 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v37 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E71E850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80) & 0xF8;
  v10 = v9 | 7;
  v9 += 47;
  v11 = ~v10;
  v12 = ((v9 + a1) & ~v10);
  v13 = ((v9 + a2) & ~v10);
  v14 = *(v8 + 64);
  v15 = ((v14 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v14 > v15)
  {
    v15 = *(*(v7 - 8) + 64);
  }

  if (v15 <= 8)
  {
    v16 = 8;
  }

  else
  {
    v16 = v15;
  }

  if (v12 == v13)
  {
    v50 = 8 * v16;
    goto LABEL_10;
  }

  v50 = 8 * v16;
  v30 = v12[v16];
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v16 <= 3)
    {
      v32 = v16;
    }

    else
    {
      v32 = 4;
    }

    if (v32 <= 1)
    {
      if (!v32)
      {
        goto LABEL_37;
      }

      v33 = *v12;
    }

    else if (v32 == 2)
    {
      v33 = *v12;
    }

    else if (v32 == 3)
    {
      v33 = *v12 | (v12[2] << 16);
    }

    else
    {
      v33 = *v12;
    }

    v38 = (v33 | (v31 << v50)) + 4;
    v30 = v33 + 4;
    if (v16 < 4)
    {
      v30 = v38;
    }
  }

LABEL_37:
  if (v30 <= 1)
  {
    if (v30 >= 2)
    {
      goto LABEL_44;
    }

LABEL_43:
    (*(v8 + 8))(v12, v7);
    goto LABEL_44;
  }

  if (v30 == 2)
  {
    goto LABEL_43;
  }

  if (v30 == 3)
  {
    sub_18E683B98(*v12);
  }

LABEL_44:
  v39 = v13[v16];
  v40 = v39 - 4;
  if (v39 < 4)
  {
    goto LABEL_79;
  }

  if (v16 <= 3)
  {
    v41 = v16;
  }

  else
  {
    v41 = 4;
  }

  if (v41 <= 1)
  {
    if (!v41)
    {
      goto LABEL_79;
    }

    v42 = *v13;
  }

  else if (v41 == 2)
  {
    v42 = *v13;
  }

  else if (v41 == 3)
  {
    v42 = *v13 | (v13[2] << 16);
  }

  else
  {
    v42 = *v13;
  }

  v48 = (v42 | (v40 << v50)) + 4;
  v39 = v42 + 4;
  if (v16 < 4)
  {
    v39 = v48;
  }

LABEL_79:
  if (v39 > 1)
  {
    if (v39 != 2)
    {
      if (v39 == 3)
      {
        *v12 = *v13;
        v12[v16] = 3;
        goto LABEL_10;
      }

      goto LABEL_86;
    }

    (*(v8 + 32))(v12, v13, v7);
    v12[v16] = 2;
  }

  else
  {
    if (v39)
    {
      if (v39 == 1)
      {
        (*(v8 + 32))(v12, v13, v7);
        v12[v16] = 1;
        goto LABEL_10;
      }

LABEL_86:
      memcpy(v12, v13, v16 + 1);
      goto LABEL_10;
    }

    (*(v8 + 32))(v12, v13, v7);
    *(&v12[v14 + 3] & 0xFFFFFFFFFFFFFFFCLL) = *(&v13[v14 + 3] & 0xFFFFFFFFFFFFFFFCLL);
    v12[v16] = 0;
  }

LABEL_10:
  v17 = (&v12[v10 + 1 + v16] & v11);
  v18 = (&v13[v10 + 1 + v16] & v11);
  *v17 = *v18;
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;

  v23 = v21 + v10 + 8;
  v24 = (v23 & v11);
  v25 = v22 + v10 + 8;
  v26 = (v25 & v11);
  if ((v23 & v11) != (v25 & v11))
  {
    v34 = v24[v16];
    v35 = v34 - 4;
    if (v34 < 4)
    {
      goto LABEL_58;
    }

    if (v16 <= 3)
    {
      v36 = v16;
    }

    else
    {
      v36 = 4;
    }

    if (v36 <= 1)
    {
      if (!v36)
      {
        goto LABEL_58;
      }

      v37 = *v24;
    }

    else if (v36 == 2)
    {
      v37 = *v24;
    }

    else if (v36 == 3)
    {
      v37 = *v24 | (v24[2] << 16);
    }

    else
    {
      v37 = *v24;
    }

    v43 = (v37 | (v35 << v50)) + 4;
    v34 = v37 + 4;
    if (v16 < 4)
    {
      v34 = v43;
    }

LABEL_58:
    if (v34 > 1)
    {
      if (v34 != 2)
      {
        if (v34 == 3)
        {
          sub_18E683B98(*v24);
        }

LABEL_65:
        v44 = v26[v16];
        v45 = v44 - 4;
        if (v44 < 4)
        {
          goto LABEL_92;
        }

        if (v16 <= 3)
        {
          v46 = v16;
        }

        else
        {
          v46 = 4;
        }

        if (v46 <= 1)
        {
          if (!v46)
          {
            goto LABEL_92;
          }

          v47 = *v26;
        }

        else if (v46 == 2)
        {
          v47 = *v26;
        }

        else if (v46 == 3)
        {
          v47 = *v26 | (v26[2] << 16);
        }

        else
        {
          v47 = *v26;
        }

        v49 = (v47 | (v45 << v50)) + 4;
        v44 = v47 + 4;
        if (v16 < 4)
        {
          v44 = v49;
        }

LABEL_92:
        if (v44 > 1)
        {
          if (v44 == 2)
          {
            (*(v8 + 32))(v24, v26, v7);
            v24[v16] = 2;
            goto LABEL_11;
          }

          if (v44 == 3)
          {
            *v24 = *v26;
            v24[v16] = 3;
            goto LABEL_11;
          }
        }

        else
        {
          if (!v44)
          {
            (*(v8 + 32))(v24, v26, v7);
            *(&v24[v14 + 3] & 0xFFFFFFFFFFFFFFFCLL) = *(&v26[v14 + 3] & 0xFFFFFFFFFFFFFFFCLL);
            v24[v16] = 0;
            goto LABEL_11;
          }

          if (v44 == 1)
          {
            (*(v8 + 32))(v24, v26, v7);
            v24[v16] = 1;
            goto LABEL_11;
          }
        }

        memcpy(v24, v26, v16 + 1);
        goto LABEL_11;
      }
    }

    else if (v34 >= 2)
    {
      goto LABEL_65;
    }

    (*(v8 + 8))(v24, v7);
    goto LABEL_65;
  }

LABEL_11:
  v27 = (&v24[v16 + 8] & 0xFFFFFFFFFFFFFFF8);
  v28 = (&v26[v16 + 8] & 0xFFFFFFFFFFFFFFF8);
  *v27 = *v28;
  *((v27 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E71EE34(int *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (v4 <= ((v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4)
  {
    v4 = ((v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  v5 = 8;
  if (v4 > 8)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  v6 = *(v3 + 80) & 0xF8;
  v7 = v6 | 7;
  v8 = v5 + (v6 | 7) + 1;
  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  v11 = ((v8 + ((v6 + 47) & ~v7)) & ~v7) + ((((v5 + ((v6 + 31) & ~v7) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v11 & 0xFFFFFFF8;
  v13 = a2 - 2147483646;
  if ((v11 & 0xFFFFFFF8) != 0)
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
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (v15 == 4)
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
      goto LABEL_7;
    }
  }

  else if (v15 == 2)
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
LABEL_7:
      v9 = *((((((v8 + ((a1 + v7 + 40) & ~v7)) & ~v7) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v9 >= 0xFFFFFFFF)
      {
        LODWORD(v9) = -1;
      }

      return (v9 + 1);
    }
  }

  v17 = v16 - 1;
  if (v12)
  {
    v17 = 0;
    v18 = *a1;
  }

  else
  {
    v18 = 0;
  }

  return (v18 | v17) ^ 0x80000000;
}

int *sub_18E71EFB4(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 64);
  if (v5 <= ((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4)
  {
    v5 = ((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  v6 = 8;
  if (v5 > 8)
  {
    v6 = v5;
  }

  v7 = *(v4 + 80) & 0xF8;
  v8 = v7 | 7;
  v9 = v6 + (v7 | 7) + 1;
  v10 = ((v9 + ((v7 + 47) & ~(v7 | 7))) & ~(v7 | 7)) + ((((v6 + ((v7 + 31) & ~(v7 | 7)) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (a3 < 0)
  {
    v12 = a3 - 2147483646;
    if (v10)
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = v13;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    v14 = a2 & 0x7FFFFFFF;
    if (v10)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14 + 1;
    }

    if (v10)
    {
      v16 = result;
      bzero(result, v10);
      result = v16;
      *v16 = v14;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(result + v10) = v15;
      }

      else
      {
        *(result + v10) = v15;
      }
    }

    else if (v11)
    {
      *(result + v10) = v15;
    }

    return result;
  }

  v11 = 0;
  if (a2 < 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v11 <= 1)
  {
    if (v11)
    {
      *(result + v10) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

LABEL_30:
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (v11 == 2)
  {
    *(result + v10) = 0;
    goto LABEL_30;
  }

  *(result + v10) = 0;
  if (a2)
  {
LABEL_31:
    *((((((v9 + ((result + v8 + 40) & ~v8)) & ~v8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_18E71F180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18E72B438();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - v10;
  v42 = type metadata accessor for RingBufferIterator(0, v5, v12, v13);
  result = MEMORY[0x1EEE9AC00](v42);
  v43 = &v32 - v16;
  if (*(v5 + 16) == MEMORY[0x1E69E7CA8] + 8)
  {
    if (*(*(a1 - 8) + 64) == 56)
    {
      v22 = *(v2 + 16);
      v23 = *(v2 + 24);
      *a2 = *v2;
      *(a2 + 16) = v22;
      *(a2 + 24) = v23;
      v24 = *(v2 + 32);
      *(a2 + 32) = v24;
      *(a2 + 40) = *(v2 + 40);

      return sub_18E6AA03C(v23, v24);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v17 = *v2;
    if (*v2 < 1)
    {
      goto LABEL_22;
    }

    v33 = v15;
    sub_18E6AA03C(0, 4);
    v18 = sub_18E69E760(0, 4, v17);
    sub_18E69E818(0, 4);
    sub_18E68065C(a1, v43);
    v41 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_23;
    }

    while (1)
    {
      sub_18E684690(v42, v11);
      v38 = *(v6 + 48);
      v39 = v6 + 48;
      if (v38(v11, 1, v5) == 1)
      {
        break;
      }

      v25 = 0;
      v40 = 0;
      v21 = 0;
      v20 = 0;
      v36 = *(v6 + 32);
      v37 = v6 + 32;
      v6 += 8;
      v35 = v41 + 4;
      while (1)
      {
        v36(v8, v11, v5);
        sub_18E6872AC(v5, &v44);
        v26 = v44;
        v27 = v45;
        if (v25 == v17)
        {
          if (__OFADD__(v40, 1))
          {
            goto LABEL_20;
          }

          v40 = (v40 + 1) % v17;
          v25 = v17;
        }

        else
        {
          v20 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_21;
          }

          ++v25;
        }

        (*v6)(v8, v5);
        if (v21 >= v41[2])
        {
          break;
        }

        v28 = &v35[2 * v21];
        v29 = *v28;
        *v28 = v26;
        v30 = *(v28 + 8);
        *(v28 + 8) = v27;
        sub_18E69E818(v29, v30);
        v21 = (v21 + 1) % v17;
        sub_18E684690(v42, v11);
        if (v38(v11, 1, v5) == 1)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v41 = sub_18E6F06E8(v41);
    }

    v40 = 0;
    v20 = 0;
    v21 = 0;
LABEL_18:
    result = (*(v33 + 8))(v43, v42);
    v31 = v34;
    *v34 = v17;
    v31[1] = v20;
    v31[2] = v41;
    v31[3] = 0;
    *(v31 + 32) = 4;
    v31[5] = v40;
    v31[6] = v21;
  }

  return result;
}

uint64_t sub_18E71F59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for GesturePhase(0, a1, a2, a3);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v11 = type metadata accessor for GesturePhaseQueue(0, a1, v9, v10);
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0;
  swift_storeEnumTagMultiPayload();
  v12 = *(v11 + 32);
  swift_storeEnumTagMultiPayload();
  return sub_18E680594(5, v8, v6, v13, (a4 + v12));
}

uint64_t sub_18E71F670(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E71F6C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E71F718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for GesturePhase(0, a2, a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  (*(v7 + 16))(&v12 - v8, a1, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(*(a2 - 8) + 8))(v9, a2);
      return 1;
    }

    (*(*(a2 - 8) + 8))(v9, a2);
  }

  return 0;
}

unint64_t *sub_18E71F898(unint64_t *__dst, unint64_t *__src, uint64_t a3)
{
  v4 = __dst;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = v7 + 3;
  v9 = ((v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v7 > v9)
  {
    v9 = *(v6 + 64);
  }

  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10 + 1;
  v12 = *(v6 + 80);
  v13 = v12 & 0xF8 | 7;
  if ((v12 & 0x1000F8) == 0 && ((v10 + 1 + v13) & ~v13) + v10 + 1 <= 0x18)
  {
    v17 = 8 * v10;
    v18 = *(__src + v10);
    v19 = v18 - 4;
    if (v18 < 4)
    {
      goto LABEL_27;
    }

    if (v10 <= 3)
    {
      v20 = v10;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_27;
      }

      v21 = *__src;
      if (v10 < 4)
      {
LABEL_33:
        v18 = (v21 | (v19 << v17)) + 4;
        if (v18 > 1)
        {
LABEL_34:
          if (v18 == 2)
          {
            (*(v6 + 16))(__dst, __src, v5);
            v22 = 2;
            goto LABEL_39;
          }

          if (v18 == 3)
          {
            v23 = *__src;
            sub_18E683B80(*__src);
            *v4 = v23;
            v22 = 3;
            goto LABEL_39;
          }

          goto LABEL_37;
        }

LABEL_28:
        if (!v18)
        {
          (*(v6 + 16))(__dst, __src, v5);
          *((v4 + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *((__src + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL);
          *(v4 + v10) = 0;
          goto LABEL_40;
        }

        if (v18 == 1)
        {
          (*(v6 + 16))(__dst, __src, v5);
          v22 = 1;
LABEL_39:
          *(v4 + v10) = v22;
LABEL_40:
          v24 = ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
          v25 = ((__src + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
          v26 = v25[v10];
          v27 = v26 - 4;
          if (v26 < 4)
          {
            goto LABEL_54;
          }

          if (v10 <= 3)
          {
            v28 = v10;
          }

          else
          {
            v28 = 4;
          }

          if (v28 <= 1)
          {
            if (!v28)
            {
              goto LABEL_54;
            }

            v29 = *v25;
          }

          else if (v28 == 2)
          {
            v29 = *v25;
          }

          else if (v28 == 3)
          {
            v29 = *v25 | (v25[2] << 16);
          }

          else
          {
            v29 = *v25;
          }

          v30 = (v29 | (v27 << v17)) + 4;
          v26 = v29 + 4;
          if (v10 < 4)
          {
            v26 = v30;
          }

LABEL_54:
          if (v26 > 1)
          {
            if (v26 == 2)
            {
              (*(v6 + 16))((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
              *(v24 + v10) = 2;
              return v4;
            }

            if (v26 == 3)
            {
              v31 = *v25;
              sub_18E683B80(*v25);
              *v24 = v31;
              *(v24 + v10) = 3;
              return v4;
            }
          }

          else
          {
            if (!v26)
            {
              (*(v6 + 16))((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
              *((v24 + v8) & 0xFFFFFFFFFFFFFFFCLL) = *((v8 + ((__src + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) & 0xFFFFFFFFFFFFFFFCLL);
              *(v24 + v10) = 0;
              return v4;
            }

            if (v26 == 1)
            {
              (*(v6 + 16))((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
              *(v24 + v10) = 1;
              return v4;
            }
          }

          memcpy(((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8), v25, v10 + 1);
          return v4;
        }

LABEL_37:
        memcpy(__dst, __src, v10 + 1);
        goto LABEL_40;
      }
    }

    else if (v20 == 2)
    {
      v21 = *__src;
      if (v10 < 4)
      {
        goto LABEL_33;
      }
    }

    else if (v20 == 3)
    {
      v21 = *__src | (*(__src + 2) << 16);
      if (v10 < 4)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v21 = *__src;
      if (v10 < 4)
      {
        goto LABEL_33;
      }
    }

    v18 = v21 + 4;
LABEL_27:
    if (v18 > 1)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  v15 = *__src;
  *v4 = *__src;
  v4 = (v15 + ((v13 + 16) & ~v13));

  return v4;
}

unint64_t *sub_18E71FC68(unint64_t *__dst, unint64_t *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = v7 + 3;
  v9 = ((v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v7 > v9)
  {
    v9 = *(v6 + 64);
  }

  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = 8 * v10;
  v12 = *(__src + v10);
  v13 = v12 - 4;
  if (v12 < 4)
  {
LABEL_20:
    if (v12 > 1)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  if (v10 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = 4;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *__src;
      if (v10 < 4)
      {
        goto LABEL_26;
      }
    }

    else if (v14 == 3)
    {
      v15 = *__src | (*(__src + 2) << 16);
      if (v10 < 4)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v15 = *__src;
      if (v10 < 4)
      {
        goto LABEL_26;
      }
    }

LABEL_19:
    v12 = v15 + 4;
    goto LABEL_20;
  }

  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = *__src;
  if (v10 >= 4)
  {
    goto LABEL_19;
  }

LABEL_26:
  v12 = (v15 | (v13 << v11)) + 4;
  if (v12 > 1)
  {
LABEL_27:
    if (v12 == 2)
    {
      (*(v6 + 16))(__dst, __src, v5);
      v16 = 2;
      goto LABEL_32;
    }

    if (v12 == 3)
    {
      v17 = *__src;
      sub_18E683B80(*__src);
      *__dst = v17;
      v16 = 3;
      goto LABEL_32;
    }

LABEL_30:
    memcpy(__dst, __src, v10 + 1);
    goto LABEL_33;
  }

LABEL_21:
  if (!v12)
  {
    (*(v6 + 16))(__dst, __src, v5);
    *((__dst + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *((__src + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    *(__dst + v10) = 0;
    goto LABEL_33;
  }

  if (v12 != 1)
  {
    goto LABEL_30;
  }

  (*(v6 + 16))(__dst, __src, v5);
  v16 = 1;
LABEL_32:
  *(__dst + v10) = v16;
LABEL_33:
  v18 = *(v6 + 80) & 0xF8 | 7;
  v19 = v10 + 1 + v18;
  v20 = ((__dst + v19) & ~v18);
  v21 = ((__src + v19) & ~v18);
  v22 = v21[v10];
  v23 = v22 - 4;
  if (v22 < 4)
  {
    goto LABEL_47;
  }

  if (v10 <= 3)
  {
    v24 = v10;
  }

  else
  {
    v24 = 4;
  }

  if (v24 <= 1)
  {
    if (!v24)
    {
      goto LABEL_47;
    }

    v25 = *v21;
  }

  else if (v24 == 2)
  {
    v25 = *v21;
  }

  else if (v24 == 3)
  {
    v25 = *v21 | (v21[2] << 16);
  }

  else
  {
    v25 = *v21;
  }

  v26 = (v25 | (v23 << v11)) + 4;
  v22 = v25 + 4;
  if (v10 < 4)
  {
    v22 = v26;
  }

LABEL_47:
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      (*(v6 + 16))(v20);
      v27 = 2;
      goto LABEL_57;
    }

    if (v22 == 3)
    {
      v28 = *v21;
      sub_18E683B80(*v21);
      *v20 = v28;
      v27 = 3;
      goto LABEL_57;
    }
  }

  else
  {
    if (!v22)
    {
      v29 = v21;
      (*(v6 + 16))(v20);
      *((v20 + v8) & 0xFFFFFFFFFFFFFFFCLL) = *(&v29[v8] & 0xFFFFFFFFFFFFFFFCLL);
      *(v20 + v10) = 0;
      return __dst;
    }

    if (v22 == 1)
    {
      (*(v6 + 16))(v20);
      v27 = 1;
LABEL_57:
      *(v20 + v10) = v27;
      return __dst;
    }
  }

  memcpy(v20, v21, v10 + 1);
  return __dst;
}

unint64_t *sub_18E71FFE0(unint64_t *__dst, unint64_t *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (__dst != __src)
  {
    v7 = *(v6 + 64);
    v8 = ((v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    if (v7 > v8)
    {
      v8 = *(v6 + 64);
    }

    if (v8 <= 8)
    {
      v9 = 8;
    }

    else
    {
      v9 = v8;
    }

    v10 = 8 * v9;
    v11 = *(__dst + v9);
    v12 = v11 - 4;
    if (v11 >= 4)
    {
      if (v9 <= 3)
      {
        v13 = v9;
      }

      else
      {
        v13 = 4;
      }

      if (v13 <= 1)
      {
        if (!v13)
        {
          goto LABEL_21;
        }

        v14 = *__dst;
        if (v9 < 4)
        {
LABEL_25:
          v11 = (v14 | (v12 << v10)) + 4;
          if (v11 > 1)
          {
LABEL_26:
            if (v11 != 2)
            {
              if (v11 == 3)
              {
                sub_18E683B98(*__dst);
              }

LABEL_30:
              v15 = *(__src + v9);
              v16 = v15 - 4;
              if (v15 < 4)
              {
                goto LABEL_44;
              }

              if (v9 <= 3)
              {
                v17 = v9;
              }

              else
              {
                v17 = 4;
              }

              if (v17 <= 1)
              {
                if (!v17)
                {
                  goto LABEL_44;
                }

                v18 = *__src;
                if (v9 < 4)
                {
LABEL_50:
                  v15 = (v18 | (v16 << v10)) + 4;
                  if (v15 > 1)
                  {
LABEL_51:
                    if (v15 == 2)
                    {
                      (*(v6 + 16))(__dst, __src, v5);
                      v19 = 2;
                      goto LABEL_56;
                    }

                    if (v15 == 3)
                    {
                      v20 = *__src;
                      sub_18E683B80(*__src);
                      *__dst = v20;
                      v19 = 3;
                      goto LABEL_56;
                    }

                    goto LABEL_54;
                  }

LABEL_45:
                  if (!v15)
                  {
                    (*(v6 + 16))(__dst, __src, v5);
                    *((__dst + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *((__src + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    *(__dst + v9) = 0;
                    goto LABEL_57;
                  }

                  if (v15 == 1)
                  {
                    (*(v6 + 16))(__dst, __src, v5);
                    v19 = 1;
LABEL_56:
                    *(__dst + v9) = v19;
                    goto LABEL_57;
                  }

LABEL_54:
                  memcpy(__dst, __src, v9 + 1);
                  goto LABEL_57;
                }
              }

              else if (v17 == 2)
              {
                v18 = *__src;
                if (v9 < 4)
                {
                  goto LABEL_50;
                }
              }

              else if (v17 == 3)
              {
                v18 = *__src | (*(__src + 2) << 16);
                if (v9 < 4)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v18 = *__src;
                if (v9 < 4)
                {
                  goto LABEL_50;
                }
              }

              v15 = v18 + 4;
LABEL_44:
              if (v15 > 1)
              {
                goto LABEL_51;
              }

              goto LABEL_45;
            }

LABEL_29:
            (*(v6 + 8))(__dst, v5);
            goto LABEL_30;
          }

LABEL_22:
          if (v11 >= 2)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }
      }

      else if (v13 == 2)
      {
        v14 = *__dst;
        if (v9 < 4)
        {
          goto LABEL_25;
        }
      }

      else if (v13 == 3)
      {
        v14 = *__dst | (*(__dst + 2) << 16);
        if (v9 < 4)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v14 = *__dst;
        if (v9 < 4)
        {
          goto LABEL_25;
        }
      }

      v11 = v14 + 4;
    }

LABEL_21:
    if (v11 > 1)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

LABEL_57:
  v21 = v6;
  v22 = *(v6 + 64);
  v23 = v22 + 3;
  if (v22 <= ((v22 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4)
  {
    v22 = ((v22 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  if (v22 <= 8)
  {
    v24 = 8;
  }

  else
  {
    v24 = v22;
  }

  v25 = *(v6 + 80) & 0xF8 | 7;
  v26 = v24 + 1 + v25;
  v27 = ((__dst + v26) & ~v25);
  v28 = ((__src + v26) & ~v25);
  if (v27 == v28)
  {
    return __dst;
  }

  v29 = 8 * v24;
  v30 = v27[v24];
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v24 <= 3)
    {
      v32 = v24;
    }

    else
    {
      v32 = 4;
    }

    if (v32 <= 1)
    {
      if (!v32)
      {
        goto LABEL_77;
      }

      v33 = *v27;
    }

    else if (v32 == 2)
    {
      v33 = *v27;
    }

    else if (v32 == 3)
    {
      v33 = *v27 | (v27[2] << 16);
    }

    else
    {
      v33 = *v27;
    }

    v34 = (v33 | (v31 << v29)) + 4;
    v30 = v33 + 4;
    if (v24 < 4)
    {
      v30 = v34;
    }
  }

LABEL_77:
  if (v30 <= 1)
  {
    if (v30 >= 2)
    {
      goto LABEL_84;
    }

LABEL_83:
    (*(v21 + 8))(v27, v5);
    goto LABEL_84;
  }

  if (v30 == 2)
  {
    goto LABEL_83;
  }

  if (v30 == 3)
  {
    sub_18E683B98(*v27);
  }

LABEL_84:
  v35 = *(v28 + v24);
  v36 = v35 - 4;
  if (v35 >= 4)
  {
    if (v24 <= 3)
    {
      v37 = v24;
    }

    else
    {
      v37 = 4;
    }

    if (v37 > 1)
    {
      if (v37 == 2)
      {
        v38 = *v28;
      }

      else if (v37 == 3)
      {
        v38 = *v28 | (*(v28 + 2) << 16);
      }

      else
      {
        v38 = *v28;
      }

LABEL_96:
      v39 = (v38 | (v36 << v29)) + 4;
      v35 = v38 + 4;
      if (v24 < 4)
      {
        v35 = v39;
      }

      goto LABEL_98;
    }

    if (v37)
    {
      v38 = *v28;
      goto LABEL_96;
    }
  }

LABEL_98:
  if (v35 > 1)
  {
    if (v35 == 2)
    {
      (*(v21 + 16))(v27, v28, v5);
      v40 = 2;
      goto LABEL_108;
    }

    if (v35 == 3)
    {
      v41 = *v28;
      sub_18E683B80(*v28);
      *v27 = v41;
      v40 = 3;
      goto LABEL_108;
    }
  }

  else
  {
    if (!v35)
    {
      (*(v21 + 16))(v27, v28, v5);
      *(&v27[v23] & 0xFFFFFFFFFFFFFFFCLL) = *((v28 + v23) & 0xFFFFFFFFFFFFFFFCLL);
      v27[v24] = 0;
      return __dst;
    }

    if (v35 == 1)
    {
      (*(v21 + 16))(v27, v28, v5);
      v40 = 1;
LABEL_108:
      v27[v24] = v40;
      return __dst;
    }
  }

  memcpy(v27, v28, v24 + 1);
  return __dst;
}

void *sub_18E720570(void *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = v7 + 3;
  v9 = ((v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v7 > v9)
  {
    v9 = *(v6 + 64);
  }

  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = 8 * v10;
  v12 = __src[v10];
  v13 = v12 - 4;
  if (v12 < 4)
  {
LABEL_20:
    if (v12 > 1)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  if (v10 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = 4;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *__src;
      if (v10 < 4)
      {
        goto LABEL_26;
      }
    }

    else if (v14 == 3)
    {
      v15 = *__src | (__src[2] << 16);
      if (v10 < 4)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v15 = *__src;
      if (v10 < 4)
      {
        goto LABEL_26;
      }
    }

LABEL_19:
    v12 = v15 + 4;
    goto LABEL_20;
  }

  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = *__src;
  if (v10 >= 4)
  {
    goto LABEL_19;
  }

LABEL_26:
  v12 = (v15 | (v13 << v11)) + 4;
  if (v12 > 1)
  {
LABEL_27:
    if (v12 == 2)
    {
      (*(v6 + 32))(__dst, __src, v5);
      v16 = 2;
      goto LABEL_32;
    }

    if (v12 == 3)
    {
      *__dst = *__src;
      v16 = 3;
      goto LABEL_32;
    }

LABEL_30:
    memcpy(__dst, __src, v10 + 1);
    goto LABEL_33;
  }

LABEL_21:
  if (!v12)
  {
    (*(v6 + 32))(__dst, __src, v5);
    *((__dst + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *(&__src[v7 + 3] & 0xFFFFFFFFFFFFFFFCLL);
    *(__dst + v10) = 0;
    goto LABEL_33;
  }

  if (v12 != 1)
  {
    goto LABEL_30;
  }

  (*(v6 + 32))(__dst, __src, v5);
  v16 = 1;
LABEL_32:
  *(__dst + v10) = v16;
LABEL_33:
  v17 = *(v6 + 80) & 0xF8 | 7;
  v18 = v10 + 1 + v17;
  v19 = ((__dst + v18) & ~v17);
  v20 = (&__src[v18] & ~v17);
  v21 = v20[v10];
  v22 = v21 - 4;
  if (v21 < 4)
  {
    goto LABEL_47;
  }

  if (v10 <= 3)
  {
    v23 = v10;
  }

  else
  {
    v23 = 4;
  }

  if (v23 <= 1)
  {
    if (!v23)
    {
      goto LABEL_47;
    }

    v24 = *v20;
  }

  else if (v23 == 2)
  {
    v24 = *v20;
  }

  else if (v23 == 3)
  {
    v24 = *v20 | (v20[2] << 16);
  }

  else
  {
    v24 = *v20;
  }

  v25 = (v24 | (v22 << v11)) + 4;
  v21 = v24 + 4;
  if (v10 < 4)
  {
    v21 = v25;
  }

LABEL_47:
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      (*(v6 + 32))(v19);
      v26 = 2;
      goto LABEL_57;
    }

    if (v21 == 3)
    {
      *v19 = *v20;
      v26 = 3;
      goto LABEL_57;
    }
  }

  else
  {
    if (!v21)
    {
      v27 = v20;
      (*(v6 + 32))(v19);
      *((v19 + v8) & 0xFFFFFFFFFFFFFFFCLL) = *(&v27[v8] & 0xFFFFFFFFFFFFFFFCLL);
      *(v19 + v10) = 0;
      return __dst;
    }

    if (v21 == 1)
    {
      (*(v6 + 32))(v19);
      v26 = 1;
LABEL_57:
      *(v19 + v10) = v26;
      return __dst;
    }
  }

  memcpy(v19, v20, v10 + 1);
  return __dst;
}

unint64_t *sub_18E7208D8(unint64_t *__dst, unint64_t *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (__dst != __src)
  {
    v7 = *(v6 + 64);
    v8 = ((v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    if (v7 > v8)
    {
      v8 = *(v6 + 64);
    }

    if (v8 <= 8)
    {
      v9 = 8;
    }

    else
    {
      v9 = v8;
    }

    v10 = 8 * v9;
    v11 = *(__dst + v9);
    v12 = v11 - 4;
    if (v11 >= 4)
    {
      if (v9 <= 3)
      {
        v13 = v9;
      }

      else
      {
        v13 = 4;
      }

      if (v13 <= 1)
      {
        if (!v13)
        {
          goto LABEL_21;
        }

        v14 = *__dst;
        if (v9 < 4)
        {
LABEL_25:
          v11 = (v14 | (v12 << v10)) + 4;
          if (v11 > 1)
          {
LABEL_26:
            if (v11 != 2)
            {
              if (v11 == 3)
              {
                sub_18E683B98(*__dst);
              }

LABEL_30:
              v15 = *(__src + v9);
              v16 = v15 - 4;
              if (v15 < 4)
              {
                goto LABEL_44;
              }

              if (v9 <= 3)
              {
                v17 = v9;
              }

              else
              {
                v17 = 4;
              }

              if (v17 <= 1)
              {
                if (!v17)
                {
                  goto LABEL_44;
                }

                v18 = *__src;
                if (v9 < 4)
                {
LABEL_50:
                  v15 = (v18 | (v16 << v10)) + 4;
                  if (v15 > 1)
                  {
LABEL_51:
                    if (v15 == 2)
                    {
                      (*(v6 + 32))(__dst, __src, v5);
                      v19 = 2;
                      goto LABEL_56;
                    }

                    if (v15 == 3)
                    {
                      *__dst = *__src;
                      v19 = 3;
                      goto LABEL_56;
                    }

                    goto LABEL_54;
                  }

LABEL_45:
                  if (!v15)
                  {
                    (*(v6 + 32))(__dst, __src, v5);
                    *((__dst + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *((__src + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    *(__dst + v9) = 0;
                    goto LABEL_57;
                  }

                  if (v15 == 1)
                  {
                    (*(v6 + 32))(__dst, __src, v5);
                    v19 = 1;
LABEL_56:
                    *(__dst + v9) = v19;
                    goto LABEL_57;
                  }

LABEL_54:
                  memcpy(__dst, __src, v9 + 1);
                  goto LABEL_57;
                }
              }

              else if (v17 == 2)
              {
                v18 = *__src;
                if (v9 < 4)
                {
                  goto LABEL_50;
                }
              }

              else if (v17 == 3)
              {
                v18 = *__src | (*(__src + 2) << 16);
                if (v9 < 4)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v18 = *__src;
                if (v9 < 4)
                {
                  goto LABEL_50;
                }
              }

              v15 = v18 + 4;
LABEL_44:
              if (v15 > 1)
              {
                goto LABEL_51;
              }

              goto LABEL_45;
            }

LABEL_29:
            (*(v6 + 8))(__dst, v5);
            goto LABEL_30;
          }

LABEL_22:
          if (v11 >= 2)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }
      }

      else if (v13 == 2)
      {
        v14 = *__dst;
        if (v9 < 4)
        {
          goto LABEL_25;
        }
      }

      else if (v13 == 3)
      {
        v14 = *__dst | (*(__dst + 2) << 16);
        if (v9 < 4)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v14 = *__dst;
        if (v9 < 4)
        {
          goto LABEL_25;
        }
      }

      v11 = v14 + 4;
    }

LABEL_21:
    if (v11 > 1)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

LABEL_57:
  v20 = v6;
  v21 = *(v6 + 64);
  v22 = v21 + 3;
  if (v21 <= ((v21 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4)
  {
    v21 = ((v21 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  if (v21 <= 8)
  {
    v23 = 8;
  }

  else
  {
    v23 = v21;
  }

  v24 = *(v6 + 80) & 0xF8 | 7;
  v25 = v23 + 1 + v24;
  v26 = ((__dst + v25) & ~v24);
  v27 = ((__src + v25) & ~v24);
  if (v26 == v27)
  {
    return __dst;
  }

  v28 = 8 * v23;
  v29 = v26[v23];
  v30 = v29 - 4;
  if (v29 >= 4)
  {
    if (v23 <= 3)
    {
      v31 = v23;
    }

    else
    {
      v31 = 4;
    }

    if (v31 <= 1)
    {
      if (!v31)
      {
        goto LABEL_77;
      }

      v32 = *v26;
    }

    else if (v31 == 2)
    {
      v32 = *v26;
    }

    else if (v31 == 3)
    {
      v32 = *v26 | (v26[2] << 16);
    }

    else
    {
      v32 = *v26;
    }

    v33 = (v32 | (v30 << v28)) + 4;
    v29 = v32 + 4;
    if (v23 < 4)
    {
      v29 = v33;
    }
  }

LABEL_77:
  if (v29 <= 1)
  {
    if (v29 >= 2)
    {
      goto LABEL_84;
    }

LABEL_83:
    (*(v20 + 8))(v26, v5);
    goto LABEL_84;
  }

  if (v29 == 2)
  {
    goto LABEL_83;
  }

  if (v29 == 3)
  {
    sub_18E683B98(*v26);
  }

LABEL_84:
  v34 = *(v27 + v23);
  v35 = v34 - 4;
  if (v34 >= 4)
  {
    if (v23 <= 3)
    {
      v36 = v23;
    }

    else
    {
      v36 = 4;
    }

    if (v36 > 1)
    {
      if (v36 == 2)
      {
        v37 = *v27;
      }

      else if (v36 == 3)
      {
        v37 = *v27 | (*(v27 + 2) << 16);
      }

      else
      {
        v37 = *v27;
      }

LABEL_96:
      v38 = (v37 | (v35 << v28)) + 4;
      v34 = v37 + 4;
      if (v23 < 4)
      {
        v34 = v38;
      }

      goto LABEL_98;
    }

    if (v36)
    {
      v37 = *v27;
      goto LABEL_96;
    }
  }

LABEL_98:
  if (v34 > 1)
  {
    if (v34 == 2)
    {
      (*(v20 + 32))(v26, v27, v5);
      v39 = 2;
      goto LABEL_108;
    }

    if (v34 == 3)
    {
      *v26 = *v27;
      v39 = 3;
      goto LABEL_108;
    }
  }

  else
  {
    if (!v34)
    {
      (*(v20 + 32))(v26, v27, v5);
      *(&v26[v22] & 0xFFFFFFFFFFFFFFFCLL) = *((v27 + v22) & 0xFFFFFFFFFFFFFFFCLL);
      v26[v23] = 0;
      return __dst;
    }

    if (v34 == 1)
    {
      (*(v20 + 32))(v26, v27, v5);
      v39 = 1;
LABEL_108:
      v26[v23] = v39;
      return __dst;
    }
  }

  memcpy(v26, v27, v23 + 1);
  return __dst;
}

uint64_t sub_18E720E58(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (v4 <= ((v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4)
  {
    v4 = ((v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  v5 = 8;
  if (v4 > 8)
  {
    v5 = v4;
  }

  v6 = (1u >> (8 * v5)) ^ 0xFB;
  if (v5 > 3)
  {
    v6 = 251;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
    goto LABEL_29;
  }

  v7 = *(v3 + 80) & 0xF8 | 7;
  v8 = ((v5 + 1 + v7) & ~v7) + v5 + 1;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v12 = ((a2 - v6 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v12 < 2)
    {
LABEL_29:
      v14 = *(a1 + v5);
      if (v6 <= (v14 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v14);
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_29;
  }

LABEL_18:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v6 + (v8 | v13) + 1;
}

void sub_18E720FEC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (v6 <= ((v6 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4)
  {
    v6 = ((v6 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  if (v6 <= 8)
  {
    v6 = 8;
  }

  v7 = (1u >> (8 * v6)) ^ 0xFB;
  if (v6 > 3)
  {
    v7 = 251;
  }

  v8 = *(v5 + 80) & 0xF8 | 7;
  v9 = ((v6 + 1 + v8) & ~v8) + v6 + 1;
  if (a3 <= v7)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v7 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (v7 >= a2)
  {
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

LABEL_34:
        a1[v6] = -a2;
        return;
      }

      *&a1[v9] = 0;
    }

    else if (v10)
    {
      a1[v9] = 0;
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

    goto LABEL_34;
  }

  v11 = ~v7 + a2;
  if (v9 >= 4)
  {
    bzero(a1, v9);
    *a1 = v11;
    v12 = 1;
    if (v10 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v12 = (v11 >> (8 * v9)) + 1;
  if (!v9)
  {
LABEL_39:
    if (v10 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v15 = v11 & ~(-1 << (8 * v9));
  bzero(a1, v9);
  if (v9 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_39;
  }

  if (v9 == 2)
  {
    *a1 = v15;
    if (v10 > 1)
    {
LABEL_43:
      if (v10 == 2)
      {
        *&a1[v9] = v12;
      }

      else
      {
        *&a1[v9] = v12;
      }

      return;
    }
  }

  else
  {
    *a1 = v11;
    if (v10 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v10)
  {
    a1[v9] = v12;
  }
}

uint64_t sub_18E721218(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18E721278(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_18E721334(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (((((v5 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = *(a2 + v5);
    v10 = (v3 + v5) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5) & 0xFFFFFFFFFFFFFFF8;
    *(v10 + 8) = *(v11 + 8);
    v12 = ((v10 + 31) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((v11 + 31) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v12[1] = v13[1];
    v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
    v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
    v16 = v15[1];
    *v14 = *v15;
    v14[1] = v16;
  }

  return v3;
}

uint64_t sub_18E721474(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t sub_18E7214F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  *(v7 + 8) = *(v8 + 8);
  v9 = ((v7 + 31) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;

  return a1;
}

uint64_t sub_18E7215BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);
  v9 = ((v7 + 31) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];

  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;

  return a1;
}

uint64_t sub_18E72169C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  *(v7 + 8) = *(v8 + 8);
  v9 = ((v7 + 31) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  *((v9 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E721744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);
  v9 = ((v7 + 31) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];

  *((v9 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_18E721814(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = (((((v6 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((((a1 + v6) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_18E721960(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = (((((v8 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if ((((((v8 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8] & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[1] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if ((((((v8 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if ((((((v8 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, (((((v8 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_18E721B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v35 = a4;
  v36 = a7;
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TimeoutComponent(0, v18, v19, v17);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - v21;
  (*(v14 + 16))(v16, v8, a5);
  v23 = swift_allocObject();
  *(v23 + 16) = a5;
  *(v23 + 24) = a6;
  v22[v20[9]] = 0;
  (*(v14 + 32))(v22, v16, a5);
  v24 = &v22[v20[10]];
  *v24 = a1;
  *(v24 + 1) = a2;
  v25 = &v22[v20[11]];
  v26 = v35;
  *v25 = a3;
  *(v25 + 1) = v26;
  v27 = &v22[v20[12]];
  *v27 = sub_18E7221F4;
  v27[1] = v23;
  WitnessTable = swift_getWitnessTable();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for ExpirationRecord(255, AssociatedTypeWitness, v30, v31);
  v32 = swift_getWitnessTable();
  sub_18E6AE000(v37);
  sub_18E6AE018(v22, v37, v20, WitnessTable, v32, v36);
}

BOOL sub_18E721DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for GestureOutput(0, AssociatedTypeWitness, v4, v5);
  return (GestureOutput.isEmpty.getter(v6) & 1) == 0;
}

uint64_t sub_18E721E0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E6AF890();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18E721E40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E721E94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E721EE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v30 = a3;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for GestureOutput(0, AssociatedTypeWitness, v7, v8);
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - v10;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[5];
  v15 = a1[6];
  *&v33 = *a1;
  *(&v33 + 1) = v12;
  *v34 = v13;
  v28 = *(a1 + 3);
  *&v34[8] = v28;
  v35 = v14;
  v36 = v15;
  v16 = v32;
  v17 = v37;
  result = GestureComponent.tracingUpdate(context:)(&v33, v5, v6, v11);
  if (!v17)
  {
    v27[1] = v12;
    v19 = AssociatedTypeWitness;
    v37 = 0;
    sub_18E6FF240(v9, &v33);
    if (v33)
    {
      sub_18E72B958();
      if ((_s8Gestures9TimestampV2eeoiySbAC_ACtFZ_0() & 1) == 0 && *(v16 + *(a2 + 36)) != 1)
      {
        AssociatedTypeWitness = *(a2 + 36);
        _s8Gestures9TimestampV1poiyA2C_s8DurationVtFZ_0();
        if ((_s8Gestures9TimestampV1loiySbAC_ACtFZ_0() & 1) == 0 || ((*(v16 + *(a2 + 48)))(v11) & 1) == 0)
        {
          sub_18E6AF02C();
          return (*(v31 + 8))(v11, v9);
        }

        *(v16 + AssociatedTypeWitness) = 1;
      }

      sub_18E6AF478(v9, v30);
      return (*(v31 + 8))(v11, v9);
    }

    sub_18E6FED28(v9, &v33);
    (*(v31 + 8))(v11, v9);
    v20 = v30;
    *v30 = 0;
    v21 = *v34;
    *(v20 + 8) = v33;
    *(v20 + 24) = v21;
    v24 = type metadata accessor for ExpirationRecord(255, v19, v22, v23);
    type metadata accessor for GestureOutput(0, v24, v25, v26);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_18E7221FC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_18E7222B4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18E722318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v6;
  v11[2] = *(a1 + 32);
  v12 = v5;
  GestureComponent.tracingUpdate(context:)(v11, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for GestureOutput(255, AssociatedTypeWitness, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EAC8E2E8, &qword_18E72DA00);
  sub_18E72B928();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18E72246C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v5;
  v10[2] = *(a1 + 32);
  v11 = v4;
  (*(a3 + 16))(v10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for GestureOutput(255, AssociatedTypeWitness, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EAC8E2E8, &qword_18E72DA00);
  sub_18E72B928();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18E7225D0()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_11:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v13 = *(v2 + 48) + 56 * (v12 | (v8 << 6));
    v14 = *(v13 + 16);
    v24[0] = *v13;
    v24[1] = v14;
    v24[2] = *(v13 + 32);
    v25 = *(v13 + 48);
    v15 = *(v1 + 32);
    if (*(v15 + 16))
    {
      result = sub_18E6EB48C(v24);
      if (v16)
      {
        v17 = *(*(v15 + 56) + 8 * result);
        v18 = sub_18E6EB48C(v24);
        if (v19)
        {
          v20 = v18;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v22 = *(v1 + 32);
          v23 = v22;
          *(v1 + 32) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_18E70C9EC();
            v22 = v23;
          }

          sub_18E6BC6D8(v20, v22);
          *(v1 + 32) = v22;
        }

        v9 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        v23 = v17;
        result = (*(v9 + 24))(&v23, ObjectType, v9);
      }
    }
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }
}

uint64_t sub_18E722788(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(result + 16);
  if (!v6)
  {
    return result;
  }

  v7 = v5;
  v9 = result;
  v10 = *(v7 + 24);
  ObjectType = swift_getObjectType();
  v37 = *(v10 + 16);
  for (i = v9 + 32; ; i += 56)
  {
    v13 = *(i + 16);
    v43 = *i;
    v44 = v13;
    v45 = *(i + 32);
    v46 = *(i + 48);
    sub_18E723000(&v43, v42);
    v14 = _s8Gestures9TimestampV1soiys8DurationVAC_ACtFZ_0();
    v16 = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    v18 = v44;
    *(v17 + 32) = v43;
    *(v17 + 48) = v18;
    *(v17 + 64) = v45;
    *(v17 + 80) = v46;
    sub_18E723000(&v43, v42);

    v37(v42, v14, v16, sub_18E723048, v17, a4, a5, ObjectType, v10);

    v19 = v42[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v7 + 32);
    *(v7 + 32) = 0x8000000000000000;
    v23 = sub_18E6EB48C(&v43);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v22)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_18E70C9EC();
        if (v27)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_18E70B220(v26, isUniquelyReferenced_nonNull_native);
      v28 = sub_18E6EB48C(&v43);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_19;
      }

      v23 = v28;
      if (v27)
      {
LABEL_3:
        sub_18E6AC114(&v43);
        v12 = v21;
        *(v21[7] + 8 * v23) = v19;
        goto LABEL_4;
      }
    }

    v12 = v21;
    v21[(v23 >> 6) + 8] |= 1 << v23;
    v30 = v21[6] + 56 * v23;
    v31 = v46;
    v33 = v44;
    v32 = v45;
    *v30 = v43;
    *(v30 + 16) = v33;
    *(v30 + 32) = v32;
    *(v30 + 48) = v31;
    *(v21[7] + 8 * v23) = v19;
    v34 = v21[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_18;
    }

    v21[2] = v36;
LABEL_4:
    *(v7 + 32) = v12;

    if (!--v6)
    {
      return result;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_18E72B818();
  __break(1u);
  return result;
}

unint64_t sub_18E722A20(unint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v1;
    v4 = result + 32;
    do
    {
      v7 = *(v4 + 16);
      v17[0] = *v4;
      v17[1] = v7;
      v17[2] = *(v4 + 32);
      v18 = *(v4 + 48);
      v8 = *(v3 + 32);
      if (*(v8 + 16))
      {
        result = sub_18E6EB48C(v17);
        if (v9)
        {
          v10 = *(*(v8 + 56) + 8 * result);
          v11 = sub_18E6EB48C(v17);
          if (v12)
          {
            v13 = v11;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v15 = *(v3 + 32);
            v16 = v15;
            *(v3 + 32) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_18E70C9EC();
              v15 = v16;
            }

            sub_18E6BC6D8(v13, v15);
            *(v3 + 32) = v15;
          }

          v5 = *(v3 + 24);
          ObjectType = swift_getObjectType();
          v16 = v10;
          result = (*(v5 + 24))(&v16, ObjectType, v5);
        }
      }

      v4 += 56;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_18E722B50()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t initializeWithCopy for UpdateRequest(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;

  return a1;
}

uint64_t assignWithCopy for UpdateRequest(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithTake for UpdateRequest(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for UpdateRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for UpdateRequest(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_18E722D88(void (*a1)(uint64_t), uint64_t a2, _DWORD *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FCB0, &qword_18E731C18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E72D720;
  *(inited + 32) = *a3;
  v6 = sub_18E6C02FC(inited);
  swift_setDeallocating();
  a1(v6);
}

uint64_t sub_18E722E18()
{
  v1 = *(*v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(*(v1 + 8) + 8))(ObjectType);
}

uint64_t sub_18E722E78()
{
  v1 = sub_18E72B778();
  MEMORY[0x193AD15C0](v1);

  if (*(v0 + 48))
  {
    MEMORY[0x193AD15C0](*(v0 + 40));
    MEMORY[0x193AD15C0](34, 0xE100000000000000);
    MEMORY[0x193AD15C0](8736, 0xE200000000000000);
  }

  _s8Gestures9TimestampV1soiys8DurationVAC_ACtFZ_0();
  v2 = _s8Gestures9TimestampV11descriptionSSvg_0();
  MEMORY[0x193AD15C0](v2);

  MEMORY[0x193AD15C0](32032, 0xE200000000000000);
  MEMORY[0x193AD15C0](8236, 0xE200000000000000);

  return 8315;
}

unint64_t sub_18E722FA0()
{
  result = qword_1EAC8FCA8;
  if (!qword_1EAC8FCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8FCA8);
  }

  return result;
}

uint64_t sub_18E723000(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  *(a2 + 40) = v4;
  *(a2 + 48) = v3;

  return a2;
}

unint64_t sub_18E723058(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_18E72B0A8() != a1 || v9 != a2)
  {
    v10 = sub_18E72B7C8();

    if (v10)
    {
      return v8;
    }

    v8 = sub_18E72B038();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_18E723148()
{
  v15[3] = &type metadata for ConcreteScrollEvent;
  v1 = swift_allocObject();
  v15[0] = v1;
  v2 = v0[3];
  v1[3] = v0[2];
  v1[4] = v2;
  v1[5] = v0[4];
  v3 = v0[1];
  v1[1] = *v0;
  v1[2] = v3;
  v14 = MEMORY[0x1E69E7CC0];
  sub_18E69F7B4(v15, v13);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  __swift_destroy_boxed_opaque_existential_0(v15);
  sub_18E70E5F0(&v16);
  v21 = v14;
  v16 = 0u;
  v17 = 0u;
  v19 = v13[0];
  v20 = v13[1];
  v18 = 0uLL;
  sub_18E6A4AD8(&v16);
  v4 = sub_18E6C96B4();
  sub_18E6C9B94();
  v6 = v5;
  v8 = v7;

  MEMORY[0x193AD15C0](v6, v8);

  v9 = sub_18E6C9D10();
  v11 = v10;

  MEMORY[0x193AD15C0](v9, v11);

  sub_18E6A9C8C(&v16);
  return v4;
}

uint64_t sub_18E7232D0()
{
  v14[3] = &type metadata for MouseEvent;
  v1 = swift_allocObject();
  v14[0] = v1;
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  v13 = MEMORY[0x1E69E7CC0];
  sub_18E69F7B4(v14, v12);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  __swift_destroy_boxed_opaque_existential_0(v14);
  sub_18E70E5F0(&v15);
  v20 = v13;
  v15 = 0u;
  v16 = 0u;
  v18 = v12[0];
  v19 = v12[1];
  v17 = 0uLL;
  sub_18E6A551C(&v15);
  v3 = sub_18E6C96B4();
  sub_18E6C9B94();
  v5 = v4;
  v7 = v6;

  MEMORY[0x193AD15C0](v5, v7);

  v8 = sub_18E6C9D10();
  v10 = v9;

  MEMORY[0x193AD15C0](v8, v10);

  sub_18E6A9C8C(&v15);
  return v3;
}

uint64_t sub_18E723458(uint64_t a1, void (*a2)(__int128 *))
{
  v17[3] = a1;
  v4 = swift_allocObject();
  v17[0] = v4;
  v5 = v2[1];
  v4[1] = *v2;
  v4[2] = v5;
  v4[3] = v2[2];
  v16 = MEMORY[0x1E69E7CC0];
  sub_18E69F7B4(v17, v15);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  __swift_destroy_boxed_opaque_existential_0(v17);
  sub_18E70E5F0(&v18);
  v23 = v16;
  v18 = 0u;
  v19 = 0u;
  v21 = v15[0];
  v22 = v15[1];
  v20 = 0uLL;
  a2(&v18);
  v6 = sub_18E6C96B4();
  sub_18E6C9B94();
  v8 = v7;
  v10 = v9;

  MEMORY[0x193AD15C0](v8, v10);

  v11 = sub_18E6C9D10();
  v13 = v12;

  MEMORY[0x193AD15C0](v11, v13);

  sub_18E6A9C8C(&v18);
  return v6;
}

uint64_t sub_18E7235D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[3] = &type metadata for GestureOutputMetadata;
  v8 = swift_allocObject();
  v20[0] = v8;
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v19 = MEMORY[0x1E69E7CC0];
  sub_18E69F7B4(v20, v18);
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;

  __swift_destroy_boxed_opaque_existential_0(v20);
  sub_18E70E5F0(&v21);
  v26 = v19;
  v21 = 0u;
  v22 = 0u;
  v24 = v18[0];
  v25 = v18[1];
  v23 = 0uLL;
  sub_18E6A45A4(&v21, a1, a2, a3, a4);
  v9 = sub_18E6C96B4();
  sub_18E6C9B94();
  v11 = v10;
  v13 = v12;

  MEMORY[0x193AD15C0](v11, v13);

  v14 = sub_18E6C9D10();
  v16 = v15;

  MEMORY[0x193AD15C0](v14, v16);

  sub_18E6A9C8C(&v21);
  return v9;
}

uint64_t sub_18E723788(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v13[3] = &type metadata for GestureTrait;
  v13[0] = a1;
  v13[1] = a2;
  v12 = MEMORY[0x1E69E7CC0];
  sub_18E69F7B4(v13, v11);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;

  __swift_destroy_boxed_opaque_existential_0(v13);
  sub_18E70E5F0(&v14);
  v19 = v12;
  v14 = 0u;
  v15 = 0u;
  v17 = v11[0];
  v18 = v11[1];
  v16 = 0uLL;
  sub_18E709D98(&v14);
  v2 = sub_18E6C96B4();
  sub_18E6C9B94();
  v4 = v3;
  v6 = v5;

  MEMORY[0x193AD15C0](v4, v6);

  v7 = sub_18E6C9D10();
  v9 = v8;

  MEMORY[0x193AD15C0](v7, v9);

  sub_18E6A9C8C(&v14);
  return v2;
}

uint64_t sub_18E7238F8(uint64_t a1, uint64_t a2, char a3)
{
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v19 = &type metadata for GestureNodeMatcher;
  v17[0] = a1;
  v17[1] = a2;
  v18 = a3;
  v16 = MEMORY[0x1E69E7CC0];
  sub_18E69F7B4(v17, v15);
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  sub_18E67EEC4(a1, a2, a3);
  __swift_destroy_boxed_opaque_existential_0(v17);
  sub_18E70E5F0(&v20);
  v25 = v16;
  v20 = 0u;
  v21 = 0u;
  v23 = v15[0];
  v24 = v15[1];
  v22 = 0uLL;
  sub_18E711EE8(&v20);
  v6 = sub_18E6C96B4();
  sub_18E6C9B94();
  v8 = v7;
  v10 = v9;

  MEMORY[0x193AD15C0](v8, v10);

  v11 = sub_18E6C9D10();
  v13 = v12;

  MEMORY[0x193AD15C0](v11, v13);

  sub_18E6A9C8C(&v20);
  return v6;
}

uint64_t sub_18E723A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a3;
  v17[3] = &type metadata for RelationMap;
  v16 = MEMORY[0x1E69E7CC0];
  sub_18E69F7B4(v17, v15);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;

  __swift_destroy_boxed_opaque_existential_0(v17);
  sub_18E70E5F0(&v18);
  v23 = v16;
  v18 = 0u;
  v19 = 0u;
  v21 = v15[0];
  v22 = v15[1];
  v20 = 0uLL;
  sub_18E724C68(&v18, a1, a2, a3);
  v6 = sub_18E6C96B4();
  sub_18E6C9B94();
  v8 = v7;
  v10 = v9;

  MEMORY[0x193AD15C0](v8, v10);

  v11 = sub_18E6C9D10();
  v13 = v12;

  MEMORY[0x193AD15C0](v11, v13);

  sub_18E6A9C8C(&v18);
  return v6;
}

uint64_t sub_18E723C0C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  v44 = MEMORY[0x1E69E7CC0];
  sub_18E6EE2E8(0, v3, 0);
  v4 = v44;
  v6 = v5 + 64;
  v7 = sub_18E72B498();
  v8 = 0;
  v9 = *(v5 + 36);
  v32 = v5 + 72;
  v33 = v5;
  v34 = v3;
  v35 = v5 + 64;
  v36 = v9;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v5 + 32))
  {
    if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_28;
    }

    if (v9 != *(v5 + 36))
    {
      goto LABEL_29;
    }

    v39 = v7 >> 6;
    v38 = v8;
    v12 = (*(v5 + 48) + 3 * v7);
    v41 = v12[1];
    v42 = *v12;
    v40 = v12[2];
    v13 = *(*(v5 + 56) + 8 * v7);

    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FCF0, &qword_18E731F60);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v14;
      v16[3] = 2 * ((v17 - 32) / 24);
      v37 = sub_18E70AA78(v43, (v16 + 4), v14, v13);
      v18 = v43[0];
      v2 = v43[1];

      sub_18E687EE8(v18);
      if (v37 != v14)
      {
        goto LABEL_33;
      }

      v2 = v15;
      v5 = v33;
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    v43[0] = v16;
    sub_18E726EAC(v43);
    v9 = v36;
    if (v2)
    {
      goto LABEL_34;
    }

    v19 = v43[0];
    v44 = v4;
    v21 = *(v4 + 16);
    v20 = *(v4 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_18E6EE2E8((v20 > 1), v21 + 1, 1);
      v4 = v44;
    }

    *(v4 + 16) = v21 + 1;
    v22 = v4 + 16 * v21;
    *(v22 + 32) = v42;
    *(v22 + 33) = v41;
    *(v22 + 34) = v40;
    *(v22 + 40) = v19;
    v10 = 1 << *(v5 + 32);
    if (v7 >= v10)
    {
      goto LABEL_30;
    }

    v6 = v35;
    v23 = *(v35 + 8 * v39);
    if ((v23 & (1 << v7)) == 0)
    {
      goto LABEL_31;
    }

    if (v36 != *(v5 + 36))
    {
      goto LABEL_32;
    }

    v24 = v23 & (-2 << (v7 & 0x3F));
    if (v24)
    {
      v10 = __clz(__rbit64(v24)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v11 = v38;
    }

    else
    {
      v25 = v4;
      v26 = v39 << 6;
      v27 = v39 + 1;
      v28 = (v32 + 8 * v39);
      while (v27 < (v10 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          sub_18E6C87A0(v7, v36, 0);
          v10 = __clz(__rbit64(v29)) + v26;
          goto LABEL_25;
        }
      }

      sub_18E6C87A0(v7, v36, 0);
LABEL_25:
      v4 = v25;
      v11 = v38;
    }

    v8 = v11 + 1;
    v7 = v10;
    if (v8 == v34)
    {
      return v4;
    }
  }

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
LABEL_34:

  __break(1u);
  return result;
}

__n128 GestureRelation.init(type:direction:role:target:)@<Q0>(_BYTE *a1@<X0>, char *a2@<X1>, char *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = a4[1].n128_u8[0];
  *a5 = *a1;
  *(a5 + 1) = v5;
  *(a5 + 2) = v6;
  result = *a4;
  *(a5 + 8) = *a4;
  *(a5 + 24) = v7;
  return result;
}

uint64_t sub_18E723FBC(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *v2;
  v10 = v2[1];
  v31 = v2[2];
  v11 = *(v10 + 16);
  if (*v2)
  {
    v30 = a1[1];

    v12 = sub_18E726AA0(v6, v7, v8, v10 + 32, v11, (v9 + 16), v9 + 32);
    v11 = v13;

    if (v11)
    {
      return 0;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  if (!v11)
  {
    return 0;
  }

  v29 = v3;
  v30 = v4;
  v28 = v5;
  v12 = 0;
  for (i = (v10 + 48); ; i += 24)
  {
    v19 = *(i - 2);
    v20 = *(i - 1);
    v21 = *i;
    if (v21 <= 1)
    {
      break;
    }

    if (v21 == 2)
    {
      if (v8 != 2)
      {
        sub_18E67EEC4(v6, v7, v8);
        v16 = v19;
        v17 = v20;
        v18 = 2;
        goto LABEL_9;
      }

      sub_18E67EEC4(v6, v7, 2);
      sub_18E67EEC4(v19, v20, 2);
      sub_18E67EEC4(v6, v7, 2);
      sub_18E67EEC4(v19, v20, 2);
      v24 = sub_18E7098C0(v19, v6);
      sub_18E682A3C(v19, v20, 2);
      sub_18E682A3C(v6, v7, 2);
      sub_18E682A3C(v6, v7, 2);
      result = sub_18E682A3C(v19, v20, 2);
      if ((v24 & 1) != 0 && v20 == v7)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v8 != 3)
      {
LABEL_8:
        v16 = v6;
        v17 = v7;
        v18 = v8;
LABEL_9:
        sub_18E67EEC4(v16, v17, v18);
        sub_18E682A3C(v19, v20, v21);
        sub_18E682A3C(v6, v7, v8);
        goto LABEL_10;
      }

      sub_18E682A3C(*(i - 2), *(i - 1), 3);
      result = sub_18E682A3C(v6, v7, 3);
      if (v19 == v6)
      {
        goto LABEL_33;
      }
    }

LABEL_10:
    if (v11 == ++v12)
    {
      return 0;
    }
  }

  if (!*i)
  {
    if (v8)
    {
      goto LABEL_8;
    }

    sub_18E682A3C(*(i - 2), *(i - 1), 0);
    result = sub_18E682A3C(v6, v7, 0);
    if (v19 == v6)
    {
      goto LABEL_33;
    }

    goto LABEL_10;
  }

  if (v8 != 1)
  {
    sub_18E67EEC4(v6, v7, v8);
    v16 = v19;
    v17 = v20;
    v18 = 1;
    goto LABEL_9;
  }

  if (v19 != v6 || v20 != v7)
  {
    v23 = sub_18E72B7C8();
    sub_18E67EEC4(v6, v7, 1);
    sub_18E67EEC4(v19, v20, 1);
    sub_18E682A3C(v19, v20, 1);
    result = sub_18E682A3C(v6, v7, 1);
    if (v23)
    {
      goto LABEL_33;
    }

    goto LABEL_10;
  }

  sub_18E67EEC4(v6, v7, 1);
  sub_18E67EEC4(v6, v7, 1);
  sub_18E682A3C(v6, v7, 1);
  result = sub_18E682A3C(v6, v7, 1);
LABEL_33:
  v5 = v28;
  v3 = v29;
LABEL_34:
  if (v12 >= *(v31 + 16))
  {
    __break(1u);
  }

  else
  {
    v33 = *(v31 + 8 * v12 + 32);
    if (v30)
    {
      v25 = 256;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25 | (v5 << 16);

    sub_18E6C6BE0(v26 | v3, v32);
    v27 = v33;
    if (v32[1] << 8 == 512)
    {

      return 0;
    }

    if (*(v33 + 16))
    {
      sub_18E67EEC4(v6, v7, v8);
    }

    else
    {
      sub_18E67EEC4(v6, v7, v8);

      v27 = 0;
    }

    sub_18E724730(v27, v6, v7, v8);
    return 1;
  }

  return result;
}

uint64_t GestureRelationType.hashValue.getter()
{
  v1 = *v0;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  return sub_18E72B8E8();
}

uint64_t GestureRelation.target.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 24);
  *(a1 + 16) = v4;
  return sub_18E67EEC4(v2, v3, v4);
}

uint64_t GestureRelation.target.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_18E682A3C(*(v1 + 8), *(v1 + 16), *(v1 + 24));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_18E7245A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  MEMORY[0x193AD1DF0](v2);
  sub_18E72B8A8();
  if (v3 != 2)
  {
    MEMORY[0x193AD1DF0](v3 & 1);
  }

  return sub_18E72B8E8();
}

uint64_t sub_18E724638()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x193AD1DF0](*v0);
  MEMORY[0x193AD1DF0](v1);
  if (v2 == 2)
  {
    return sub_18E72B8A8();
  }

  sub_18E72B8A8();
  return MEMORY[0x193AD1DF0](v2 & 1);
}

uint64_t sub_18E7246A0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v2);
  MEMORY[0x193AD1DF0](v3);
  sub_18E72B8A8();
  if (v4 != 2)
  {
    MEMORY[0x193AD1DF0](v4 & 1);
  }

  return sub_18E72B8E8();
}

uint64_t sub_18E724730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v10 = *v4;
  v9 = v4[1];
  v11 = *(v9 + 16);
  if (*v4)
  {

    v12 = sub_18E726AA0(a2, a3, a4, v9 + 32, v11, (v10 + 16), v10 + 32);
    v14 = v13;
    v11 = v15;

    if ((v14 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  if (!v11)
  {
LABEL_32:
    if (v8)
    {
      sub_18E67ED20(a2, a3, a4, v11);
      sub_18E682A3C(a2, a3, a4);
      v28 = v4[2];
      v26 = v4 + 2;
      v27 = v28;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v26 = v28;
      if ((result & 1) == 0)
      {
        result = sub_18E681264(0, *(v27 + 16) + 1, 1);
        v27 = *v26;
      }

      v31 = *(v27 + 16);
      v30 = *(v27 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_18E681264((v30 > 1), v31 + 1, 1);
        v27 = *v26;
      }

      *(v27 + 16) = v31 + 1;
      *(v27 + 8 * v31 + 32) = v8;
      *v26 = v27;
    }

    else
    {

      return sub_18E682A3C(a2, a3, a4);
    }

    return result;
  }

  v12 = 0;
  v16 = (v9 + 48);
  while (1)
  {
    v20 = *(v16 - 2);
    v21 = *(v16 - 1);
    v22 = *v16;
    if (v22 <= 1)
    {
      break;
    }

    if (v22 == 2)
    {
      if (a4 != 2)
      {
        sub_18E67EEC4(a2, a3, a4);
        v17 = v20;
        v18 = v21;
        v19 = 2;
        goto LABEL_8;
      }

      sub_18E67EEC4(a2, a3, 2);
      sub_18E67EEC4(v20, v21, 2);
      sub_18E67EEC4(a2, a3, 2);
      sub_18E67EEC4(v20, v21, 2);
      v25 = sub_18E7098C0(v20, a2);
      sub_18E682A3C(v20, v21, 2);
      sub_18E682A3C(a2, a3, 2);
      sub_18E682A3C(a2, a3, 2);
      sub_18E682A3C(v20, v21, 2);
      if ((v25 & 1) != 0 && v21 == a3)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (a4 != 3)
      {
LABEL_7:
        v17 = a2;
        v18 = a3;
        v19 = a4;
LABEL_8:
        sub_18E67EEC4(v17, v18, v19);
        sub_18E682A3C(v20, v21, v22);
        sub_18E682A3C(a2, a3, a4);
        goto LABEL_9;
      }

      sub_18E682A3C(*(v16 - 2), *(v16 - 1), 3);
      sub_18E682A3C(a2, a3, 3);
      if (v20 == a2)
      {
        goto LABEL_42;
      }
    }

LABEL_9:
    v16 += 24;
    if (v11 == ++v12)
    {
      v11 = 0;
      v8 = a1;
      goto LABEL_32;
    }
  }

  if (!*v16)
  {
    if (a4)
    {
      goto LABEL_7;
    }

    sub_18E682A3C(*(v16 - 2), *(v16 - 1), 0);
    sub_18E682A3C(a2, a3, 0);
    if (v20 == a2)
    {
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  if (a4 != 1)
  {
    sub_18E67EEC4(a2, a3, a4);
    v17 = v20;
    v18 = v21;
    v19 = 1;
    goto LABEL_8;
  }

  if (v20 != a2 || v21 != a3)
  {
    v24 = sub_18E72B7C8();
    sub_18E67EEC4(a2, a3, 1);
    sub_18E67EEC4(v20, v21, 1);
    sub_18E682A3C(v20, v21, 1);
    sub_18E682A3C(a2, a3, 1);
    if (v24)
    {
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  sub_18E67EEC4(a2, a3, 1);
  sub_18E67EEC4(a2, a3, 1);
  sub_18E682A3C(a2, a3, 1);
  sub_18E682A3C(a2, a3, 1);
LABEL_42:
  v11 = 0;
  v8 = a1;
LABEL_43:
  sub_18E682A3C(a2, a3, a4);
  if (v8)
  {
    v32 = v4[2];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_18E726554(v32);
      v32 = result;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < v32[2])
    {
      v32[v12 + 4] = v8;

      v4[2] = v32;
      return result;
    }

    __break(1u);
  }

  else
  {
    sub_18E71A488(v12, v11, v34);
    sub_18E682A3C(v34[0], v34[1], v35);
    sub_18E71A5EC(v12);
  }

  return result;
}

__n128 sub_18E724BE8@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  return result;
}

void *sub_18E724C00()
{
  v1 = sub_18E725690(*v0, v0[1], v0[2]);

  return v1;
}

uint64_t sub_18E724C68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*a1 & 1) == 0)
  {
    *a1 |= 1uLL;
  }

  sub_18E724DEC(a2, a3, a4);
  v17 = sub_18E72974C(v4, v5);
  sub_18E726F18(&v17);

  v6 = v17;
  v7 = *(v17 + 2);
  if (v7)
  {
    v8 = 0;
    v9 = v17 + 32;
    while (v8 < *(v6 + 2))
    {
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      v17 = *(v9 + 1);
      swift_bridgeObjectRetain_n();
      sub_18E726EAC(&v17);

      ++v8;
      v13 = v17;
      LOBYTE(v17) = v10;
      BYTE1(v17) = v11;
      BYTE2(v17) = v12;
      v14 = sub_18E725318();
      sub_18E6A7638(v13, v14, v15);

      v9 += 16;
      if (v7 == v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_7:
  }

  return result;
}

uint64_t sub_18E724DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a1;
  v49 = a2;
  v50 = a3;
  v51 = 0;

  sub_18E6C5DEC(&v44);
  v3 = v47;
  if (!v47)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC8];
LABEL_30:
    v35 = v4;

    v36 = sub_18E723C0C(v5);

    v37 = sub_18E729410(v36);

    sub_18E6826D0(v35, 0);
    return v37;
  }

  v4 = 0;
  v42 = v45;
  v43 = v44;
  v41 = v46;
  v5 = MEMORY[0x1E69E7CC8];
LABEL_4:
  v7 = 0;
  v8 = v3 + 56;
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v39 = v12;
  for (i = v3; ; v3 = i)
  {
    if (!v11)
    {
      while (1)
      {
        v13 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
          goto LABEL_32;
        }

        if (v13 >= v12)
        {
          break;
        }

        v11 = *(v8 + 8 * v13);
        ++v7;
        if (v11)
        {
          v7 = v13;
          goto LABEL_14;
        }
      }

      v6 = v4;
      sub_18E682A3C(v43, v42, v41);

      sub_18E6C5DEC(&v44);
      v4 = v6;
      v42 = v45;
      v43 = v44;
      v3 = v47;
      v41 = v46;
      if (!v47)
      {
        goto LABEL_30;
      }

      goto LABEL_4;
    }

LABEL_14:
    v14 = (*(v3 + 48) + 3 * (__clz(__rbit64(v11)) | (v7 << 6)));
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    sub_18E6826D0(v4, 0);
    v18 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v5;
    v20 = v16 ? 256 : 0;
    v21 = v20 | (v17 << 16);
    v22 = sub_18E6EB3A4(v21 | v15);
    v24 = v18[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      break;
    }

    v28 = v23;
    if (v18[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v23)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v34 = v22;
        sub_18E70C874();
        v22 = v34;
        v18 = v44;
        if (v28)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_18E70AF2C(v27, isUniquelyReferenced_nonNull_native);
      v29 = v44;
      v22 = sub_18E6EB3A4(v21 | v15);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_34;
      }

      v18 = v29;
      if (v28)
      {
        goto LABEL_8;
      }
    }

    v18[(v22 >> 6) + 8] |= 1 << v22;
    v31 = (v18[6] + 3 * v22);
    *v31 = v15;
    v31[1] = v16;
    v31[2] = v17;
    *(v18[7] + 8 * v22) = MEMORY[0x1E69E7CD0];
    v32 = v18[2];
    v26 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v26)
    {
      goto LABEL_33;
    }

    v18[2] = v33;
LABEL_8:
    v11 &= v11 - 1;
    v5 = v18;
    sub_18E67EEC4(v43, v42, v41);
    sub_18E6C78E4(&v44, v43, v42, v41);
    sub_18E682A3C(v44, v45, v46);
    v4 = sub_18E7254F8;
    v12 = v39;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_18E72B818();
  __break(1u);
  return result;
}

uint64_t sub_18E725158(unsigned __int8 *a1, __n128 a2)
{
  v3 = *a1;
  v4 = *v2;
  if (v4 == v3)
  {
    v5 = a1[2];
    v6 = v2[2];
    v7 = v2[1];
    v8 = v5 ^ 1;
    if ((v6 & 1) == 0)
    {
      v8 = 0;
    }

    if (v5 == 2)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (v6 == 2)
    {
      v9 = 0;
    }

    if (v7 != a1[1])
    {
      v9 = v7 ^ 1;
    }
  }

  else
  {
    if (qword_1F01A5188)
    {
      v10 = 0;
      while (*(&unk_1F01A5178 + v10 + 32) != v4)
      {
        if (qword_1F01A5188 == ++v10)
        {
          goto LABEL_19;
        }
      }

      v11 = 0;
      while (*(&unk_1F01A5178 + v11 + 32) != v3)
      {
        if (qword_1F01A5188 == ++v11)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_19:
      sub_18E72B5C8();
      MEMORY[0x193AD15C0](0xD00000000000001CLL, 0x800000018E73AFA0);
      sub_18E72B6C8();
      MEMORY[0x193AD15C0](8236, 0xE200000000000000);
      sub_18E72B6C8();
      sub_18E72B6E8();
      __break(1u);
    }

    v9 = v10 < v11;
  }

  return v9 & 1;
}

uint64_t sub_18E725318()
{
  v1 = *v0;
  v2 = v0[2];
  if (*v0)
  {
    v3 = 0xEE00657669746361;
    v4 = 0x206564756C637865;
    if (v0[1])
    {
      v4 = 0xD00000000000001ALL;
      v3 = 0x800000018E73AF60;
    }

    if (v0[1])
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v0[1])
    {
      v6 = 0x800000018E73AF20;
    }

    else
    {
      v6 = 0x800000018E73AF40;
    }

    if (v1 == 1)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }

    if (v1 == 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    if (v0[1])
    {
      v7 = 0x756C637865206562;
    }

    else
    {
      v7 = 0x6564756C637865;
    }

    if (v0[1])
    {
      v8 = 0xEE00796220646564;
    }

    else
    {
      v8 = 0xE700000000000000;
    }
  }

  v9 = 544104803;
  if (v1 == 2)
  {
    v9 = 0x20646C756F6873;
  }

  v10 = 0x20746F6E6E6163;
  if ((v2 & 1) == 0)
  {
    v10 = v9;
  }

  if (v2 == 2)
  {
    v11 = 0x696D616E79642820;
  }

  else
  {
    v11 = 0;
  }

  v14 = v10;
  if (v2 == 2)
  {
    v12 = 0xEA00000000002963;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  MEMORY[0x193AD15C0](v7, v8);

  MEMORY[0x193AD15C0](v11, v12);

  return v14;
}

uint64_t sub_18E725514()
{
  v1 = *(v0 + 2);
  if (*(v0 + 1))
  {
    v2 = 28265;
  }

  else
  {
    v2 = 7632239;
  }

  if (*(v0 + 1))
  {
    v3 = 0xE200000000000000;
  }

  else
  {
    v3 = 0xE300000000000000;
  }

  MEMORY[0x193AD15C0](v2, v3);

  if (v1 == 2)
  {
    v4 = 0xE700000000000000;
    v5 = 0x63696D616E7964;
  }

  else
  {
    BYTE8(v7) = 0;
    *&v7 = v1 & 1;
    sub_18E72B6C8();
    v5 = *(&v7 + 1);
    v4 = 0xE000000000000000;
  }

  MEMORY[0x193AD15C0](v5, v4);

  sub_18E72B6C8();
  MEMORY[0x193AD15C0](91, 0xE100000000000000);
  MEMORY[0x193AD15C0](0, 0xE000000000000000);

  MEMORY[0x193AD15C0](15709, 0xE200000000000000);
  MEMORY[0x193AD15C0](0, 0xE000000000000000);

  return 0;
}

void *sub_18E725690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);

  v31 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v30 = a3 + 32;
    v9 = MEMORY[0x1E69E7CC0] + 32;
    v10 = (a2 + 48);
    v28 = v5;
    v29 = a2;
    while (1)
    {
      if (v7 >= *(a2 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      v11 = *(v10 - 2);
      v12 = *(v10 - 1);
      v13 = *v10;
      v32 = *(v30 + 8 * v7);
      if (v8)
      {
        sub_18E67EEC4(v11, v12, v13);

        v14 = __OFSUB__(v8--, 1);
        if (v14)
        {
          goto LABEL_32;
        }

        goto LABEL_24;
      }

      v15 = v31[3];
      if (((v15 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_33;
      }

      v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
      if (v16 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FD20, &qword_18E731FA8);
      v18 = swift_allocObject();
      v19 = _swift_stdlib_malloc_size(v18);
      v20 = v19 - 32;
      if (v19 < 32)
      {
        v20 = v19 - 1;
      }

      v21 = v20 >> 5;
      v18[2] = v17;
      v18[3] = 2 * v21;
      v22 = v31[3] >> 1;
      v9 = &v18[4 * v22 + 4];
      v23 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v22;
      if (!v31[2])
      {
        sub_18E67EEC4(v11, v12, v13);

        goto LABEL_23;
      }

      if (v18 < v31 || v18 + 4 >= &v31[4 * v22 + 4])
      {
        v24 = v18 + 4;
        sub_18E67EEC4(v11, v12, v13);
      }

      else
      {
        v24 = v18 + 4;
        sub_18E67EEC4(v11, v12, v13);
        if (v18 == v31)
        {
          goto LABEL_22;
        }
      }

      memmove(v24, v31 + 4, 32 * v22);
LABEL_22:

      v31[2] = 0;
LABEL_23:

      v31 = v18;
      v5 = v28;
      a2 = v29;
      v14 = __OFSUB__(v23, 1);
      v8 = v23 - 1;
      if (v14)
      {
        goto LABEL_32;
      }

LABEL_24:
      ++v7;
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 24) = v32;
      v9 += 32;
      v10 += 24;
      if (v5 == v7)
      {
        goto LABEL_27;
      }
    }
  }

  v8 = 0;
LABEL_27:

  result = v31;
  v25 = v31[3];
  if (v25 >= 2)
  {
    v26 = v25 >> 1;
    v14 = __OFSUB__(v26, v8);
    v27 = v26 - v8;
    if (v14)
    {
      goto LABEL_34;
    }

    result = v31;
    v31[2] = v27;
  }

  return result;
}

char *sub_18E725914(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = (MEMORY[0x1E69E7CC0] + 32);
  if (v4)
  {
    while (1)
    {
      v11 = v8;
LABEL_8:
      v12 = (*(a1 + 56) + ((v11 << 10) | (16 * __clz(__rbit64(v4)))));
      v13 = *v12;
      v14 = v12[1];
      if (v7)
      {

        v15 = v9;
        v16 = __OFSUB__(v7--, 1);
        if (v16)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v17 = *(v9 + 3);
        if (((v17 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8E0D8, &qword_18E72E770);
        v15 = swift_allocObject();
        v20 = _swift_stdlib_malloc_size(v15);
        v21 = v20 - 32;
        if (v20 < 32)
        {
          v21 = v20 - 17;
        }

        v22 = v21 >> 4;
        *(v15 + 2) = v19;
        *(v15 + 3) = 2 * (v21 >> 4);
        v23 = v15 + 32;
        v24 = *(v9 + 3) >> 1;
        v10 = &v15[16 * v24 + 32];
        v25 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;
        if (*(v9 + 2))
        {
          v26 = v9 + 32;
          if (v15 != v9 || v23 >= &v26[16 * v24])
          {
            memmove(v23, v26, 16 * v24);
          }

          *(v9 + 2) = 0;
        }

        else
        {
        }

        v16 = __OFSUB__(v25, 1);
        v7 = v25 - 1;
        if (v16)
        {
          goto LABEL_32;
        }
      }

      v4 &= v4 - 1;
      *v10 = v13;
      *(v10 + 1) = v14;
      v10 += 16;
      v9 = v15;
      v8 = v11;
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v11 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v11);
    ++v8;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  v27 = *(v9 + 3);
  if (v27 < 2)
  {
    return v9;
  }

  v28 = v27 >> 1;
  v16 = __OFSUB__(v28, v7);
  v29 = v28 - v7;
  if (!v16)
  {
    *(v9 + 2) = v29;
    return v9;
  }

LABEL_34:
  __break(1u);
  return result;
}

void *sub_18E725B20(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
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

    v8 = sub_18E726384(result, a2, a3, a4);

    return v8;
  }

  return result;
}

char *sub_18E725BD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5E0, &unk_18E730EB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 3 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_18E725CFC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_18E725E30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EE18, &unk_18E732000);
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

void *sub_18E725F3C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FD20, &qword_18E731FA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FD40, &qword_18E731FF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18E726070(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5B8, &unk_18E731FB0);
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

char *sub_18E726174(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDF0, &qword_18E731FF0);
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

char *sub_18E726280(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDC8, &qword_18E731FD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_18E726384(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  v23 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v18 = (*(a3 + 48) + 3 * v17);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v18) = v18[2];
    v24[0] = v19;
    v24[1] = v20;
    v24[2] = v18;
    result = a4(v24);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v23 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_18E699C28(v23, a2, v7, a3);
      }
    }
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
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E7265F4(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = result;
      v7 = 0;
      while (1)
      {
        v8 = (v6 + 3 * v7);
        v9 = *v8;
        v10 = v8[1];
        v11 = v8[2];
        sub_18E72B888();
        MEMORY[0x193AD1DF0](v9);
        MEMORY[0x193AD1DF0](v10);
        sub_18E72B8A8();
        if (v11 != 2)
        {
          MEMORY[0x193AD1DF0](v11 & 1);
        }

        result = sub_18E72B8E8();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_18E72AD38())
        {
          while (1)
          {
            sub_18E72AD98();
          }
        }

        result = sub_18E72AD88();
        if (++v7 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_18E726744(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v22 = result;
  v28 = a2;
  if (a2)
  {
    if ((v28 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = v22 + 24 * v5;
        v7 = *v6;
        v8 = *(v6 + 8);
        v9 = *(v6 + 16);
        sub_18E72B888();
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            MEMORY[0x193AD1DF0](2);

            sub_18E70D89C(v23, v7);
            v10 = v8;
          }

          else
          {
            MEMORY[0x193AD1DF0](3);
            v10 = v7;
          }

          MEMORY[0x193AD1DF0](v10);
        }

        else if (v9)
        {
          MEMORY[0x193AD1DF0](1);

          _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
        }

        else
        {
          MEMORY[0x193AD1DF0](0);
          sub_18E72B8C8();
        }

        result = sub_18E72B8E8();
        v11 = 1 << *a3;
        v12 = __OFSUB__(v11, 1);
        v13 = v11 - 1;
        if (v12)
        {
          break;
        }

        v14 = v13 & result;
        v15 = sub_18E72AD38();
        v16 = v7;
        v18 = v17;
        v20 = v19;
        sub_18E682A3C(v16, v8, v9);
        v23[0] = a3;
        v23[1] = a4;
        v23[2] = v14;
        v24 = v15;
        v25 = v18;
        v26 = v20;
        v27 = 0;
        while (v24)
        {
          sub_18E72AD98();
        }

        result = sub_18E72AD88();
        if (++v5 == v28)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_18E726908(unsigned int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_18E72B888();
  MEMORY[0x193AD1DF0](a1);
  MEMORY[0x193AD1DF0]((a1 >> 8) & 1);
  v8 = a1 & 0xFF0000;
  sub_18E72B8A8();
  if ((a1 & 0xFF0000) != 0x20000)
  {
    MEMORY[0x193AD1DF0](HIWORD(a1) & 1);
  }

  result = sub_18E72B8E8();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_18E72AD38();
    result = sub_18E72AD78();
    if ((v10 & 1) == 0)
    {
      v11 = a1 & 0x100;
      v12 = a1;
      v13 = HIWORD(a1) & 1;
      do
      {
        v15 = (a2 + 3 * result);
        if (*v15 == v12 && (((v11 != 0) ^ v15[1]) & 1) == 0)
        {
          v16 = v15[2];
          if (v16 == 2)
          {
            if (v8 == 0x20000)
            {
              return result;
            }
          }

          else if (v8 != 0x20000 && v13 == (v16 & 1))
          {
            return result;
          }
        }

        sub_18E72AD98();
        result = sub_18E72AD78();
      }

      while ((v14 & 1) == 0);
    }
  }

  return result;
}

uint64_t sub_18E726AA0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  sub_18E72B888();
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      MEMORY[0x193AD1DF0](2);
      sub_18E70D89C(v36, a1);
      v13 = a2;
    }

    else
    {
      MEMORY[0x193AD1DF0](3);
      v13 = a1;
    }

    MEMORY[0x193AD1DF0](v13);
  }

  else if (a3)
  {
    MEMORY[0x193AD1DF0](1);
    _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x193AD1DF0](0);
    sub_18E72B8C8();
  }

  result = sub_18E72B8E8();
  v15 = 1 << *a6;
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
    return result;
  }

  v18 = v17 & result;
  v19 = sub_18E72AD38();
  *&v38 = a6;
  *(&v38 + 1) = a7;
  *&v39 = v18;
  *(&v39 + 1) = v19;
  *&v40 = v20;
  *(&v40 + 1) = v21;
  v41 = 0;
  result = sub_18E72AD78();
  if ((v22 & 1) == 0)
  {
    do
    {
      v27 = a4 + 24 * result;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      if (v30 > 1)
      {
        if (v30 == 2)
        {
          if (a3 != 2)
          {
            sub_18E67EEC4(a1, a2, a3);
            v23 = v28;
            v24 = v29;
            v25 = 2;
            goto LABEL_15;
          }

          v31 = result;
          sub_18E67EEC4(a1, a2, 2);
          sub_18E67EEC4(v28, v29, 2);
          sub_18E67EEC4(a1, a2, 2);
          sub_18E67EEC4(v28, v29, 2);
          v34 = sub_18E7098C0(v28, a1);
          sub_18E682A3C(v28, v29, 2);
          sub_18E682A3C(a1, a2, 2);
          sub_18E682A3C(a1, a2, 2);
          sub_18E682A3C(v28, v29, 2);
          if ((v34 & 1) != 0 && v29 == a2)
          {
            return v31;
          }
        }

        else
        {
          if (a3 != 3)
          {
LABEL_14:
            v23 = a1;
            v24 = a2;
            v25 = a3;
LABEL_15:
            sub_18E67EEC4(v23, v24, v25);
            sub_18E682A3C(v28, v29, v30);
            sub_18E682A3C(a1, a2, a3);
            goto LABEL_16;
          }

          v35 = result;
          sub_18E682A3C(v28, v29, 3);
          sub_18E682A3C(a1, a2, 3);
          if (v28 == a1)
          {
            return v35;
          }
        }
      }

      else if (*(v27 + 16))
      {
        if (a3 != 1)
        {
          sub_18E67EEC4(a1, a2, a3);
          v23 = v28;
          v24 = v29;
          v25 = 1;
          goto LABEL_15;
        }

        v31 = result;
        if (v28 == a1 && v29 == a2)
        {
          sub_18E67EEC4(a1, a2, 1);
          sub_18E67EEC4(a1, a2, 1);
          sub_18E682A3C(a1, a2, 1);
          sub_18E682A3C(a1, a2, 1);
          return v31;
        }

        v33 = sub_18E72B7C8();
        sub_18E67EEC4(a1, a2, 1);
        sub_18E67EEC4(v28, v29, 1);
        sub_18E682A3C(v28, v29, 1);
        sub_18E682A3C(a1, a2, 1);
        if (v33)
        {
          return v31;
        }
      }

      else
      {
        if (a3)
        {
          goto LABEL_14;
        }

        v35 = result;
        sub_18E682A3C(*v27, *(v27 + 8), 0);
        sub_18E682A3C(a1, a2, 0);
        if (v28 == a1)
        {
          return v35;
        }
      }

LABEL_16:
      sub_18E72AD98();
      v36[0] = v38;
      v36[1] = v39;
      v36[2] = v40;
      v37 = v41;
      result = sub_18E72AD78();
    }

    while ((v26 & 1) == 0);
  }

  return result;
}

uint64_t sub_18E726EAC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_18E7264E4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_18E726F84(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_18E726F18(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_18E7264F8(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_18E72707C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_18E726F84(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_18E72B768();
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
        v5 = sub_18E72B1F8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_18E727478(v7, v8, a1, v4);
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
    return sub_18E727184(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_18E72707C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_18E72B768();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v5 = result;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FD00, &unk_18E731F70);
        v6 = sub_18E72B1F8();
        v6[1].n128_u64[0] = v2 / 2;
      }

      v8[0] = v6 + 2;
      v8[1] = (v2 / 2);
      v7 = v6;
      sub_18E727B50(v8, v4, v9, a1, v5);
      v7[1].n128_u64[0] = 0;
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
    return sub_18E727254(0, v2, 1, a1, v4);
  }

  return result;
}

uint64_t sub_18E727184(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = *(v8 + 40);
      if (*(v8 + 40))
      {
        v10 = *(v8 + 16);
        if (!*(v8 + 16))
        {
          goto LABEL_4;
        }

        if (v9 != 1)
        {
          if (v10 == 2)
          {
            if (v9 != 2 || *(v8 + 8))
            {
LABEL_4:
              ++a3;
              v5 += 24;
              --v6;
              if (a3 == a2)
              {
                return result;
              }

              goto LABEL_5;
            }
          }

          else if (v10 == 1 || v9 != 2 && v10 == 3 && v9 == 3 && *v8)
          {
            goto LABEL_4;
          }
        }
      }

      if (!v4)
      {
        break;
      }

      v11 = *(v8 + 24);
      *(v8 + 24) = *v8;
      *(v8 + 40) = *(v8 + 16);
      *v8 = v11;
      *(v8 + 16) = v9;
      v8 -= 24;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_18E727254(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, __n128 a5)
{
  if (a3 == a2)
  {
    return result;
  }

  v5 = *a4;
LABEL_5:
  v6 = (v5 + 16 * a3);
  v7 = *v6;
  v8 = v6[2];
  v9 = a3;
  while (1)
  {
    v10 = v9 - 1;
    v11 = v5 + 16 * v9;
    v12 = (v5 + 16 * (v9 - 1));
    v13 = *v12;
    if (v7 == v13)
    {
      v14 = *(v11 + 1);
      if (v12[1] == v14)
      {
        if (v8 == 2)
        {
          goto LABEL_4;
        }

        if (v12[2] == 2)
        {
          goto LABEL_23;
        }

        LOBYTE(v14) = v8 ^ 1 | v12[2];
      }

      if (v14)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (!qword_1F01A5188)
      {
        goto LABEL_27;
      }

      v15 = 0;
      while (*(&unk_1F01A5178 + v15 + 32) != v7)
      {
        if (qword_1F01A5188 == ++v15)
        {
          goto LABEL_27;
        }
      }

      v16 = 0;
      while (*(&unk_1F01A5178 + v16 + 32) != v13)
      {
        if (qword_1F01A5188 == ++v16)
        {
          goto LABEL_27;
        }
      }

      if (v15 >= v16)
      {
LABEL_4:
        if (++a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

LABEL_23:
    if (!v5)
    {
      break;
    }

    v17 = *(v11 + 1);
    v18 = *(v11 + 8);
    *v11 = *v12;
    *v12 = v7;
    v12[1] = v17;
    v12[2] = v8;
    *(v12 + 1) = v18;
    v9 = v10;
    if (v10 == result)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_27:
  sub_18E72B5C8();
  MEMORY[0x193AD15C0](0xD00000000000001CLL, 0x800000018E73AFA0);
  sub_18E72B6C8();
  MEMORY[0x193AD15C0](8236, 0xE200000000000000);
  sub_18E72B6C8();
  result = sub_18E72B6E8();
  __break(1u);
  return result;
}

uint64_t sub_18E727478(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_130:
    v4 = *v93;
    if (!*v93)
    {
      goto LABEL_171;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_132;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v92 = a4;
LABEL_4:
  v8 = v6++;
  if (v6 >= v5)
  {
    goto LABEL_50;
  }

  v9 = *a3;
  v10 = *(*a3 + 24 * v6 + 16);
  if (!*(*a3 + 24 * v6 + 16))
  {
LABEL_19:
    v10 = 1;
    goto LABEL_20;
  }

  v11 = (v9 + 24 * v8);
  v12 = v11[16];
  if (!v11[16])
  {
    goto LABEL_13;
  }

  if (v10 != 1)
  {
    if (v12 != 1)
    {
      if (v12 == 2)
      {
        v13 = v11[8] == 0;
        v10 = v10 == 2 && v13;
        goto LABEL_20;
      }

      if (v10 != 2 && v10 == 3 && v12 == 3)
      {
        v10 = *v11 == 0;
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_13:
    v10 = 0;
  }

LABEL_20:
  v6 = v8 + 2;
  if (v8 + 2 >= v5)
  {
    goto LABEL_41;
  }

  v15 = (v9 + 24 * v8 + 32);
  do
  {
    v16 = v15[32];
    if (!v15[32])
    {
LABEL_22:
      if ((v10 & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_23;
    }

    v17 = v15[8];
    if (!v15[8])
    {
      goto LABEL_36;
    }

    if (v16 == 1)
    {
      goto LABEL_22;
    }

    if (v17 == 1)
    {
      goto LABEL_36;
    }

    if (v17 == 2)
    {
      if (v16 == 2 && !*v15)
      {
        goto LABEL_22;
      }

      goto LABEL_36;
    }

    if (v16 == 2)
    {
      goto LABEL_22;
    }

    if (v16 == 3 && v17 == 3)
    {
      if (!*(v15 - 8))
      {
        goto LABEL_22;
      }

LABEL_36:
      if (v10)
      {
        goto LABEL_42;
      }

      goto LABEL_23;
    }

    if (!v10)
    {
      goto LABEL_50;
    }

LABEL_23:
    v15 += 24;
    ++v6;
  }

  while (v5 != v6);
  v6 = v5;
LABEL_41:
  if (v10)
  {
LABEL_42:
    if (v6 >= v8)
    {
      if (v8 < v6)
      {
        v18 = 0;
        v19 = 24 * v6;
        v20 = 24 * v8;
        v21 = v8;
        do
        {
          if (v21 != v6 + v18 - 1)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_168;
            }

            v23 = (v22 + v20);
            v24 = v22 + v19;
            v25 = *(v23 + 16);
            v26 = *v23;
            v27 = *(v24 - 8);
            *v23 = *(v24 - 24);
            *(v23 + 2) = v27;
            *(v24 - 24) = v26;
            *(v24 - 8) = v25;
          }

          ++v21;
          --v18;
          v19 -= 24;
          v20 += 24;
        }

        while (v21 < v6 + v18);
        v5 = a3[1];
      }

      goto LABEL_50;
    }

LABEL_164:
    __break(1u);
LABEL_165:
    result = sub_18E7290FC(v7);
    v7 = result;
LABEL_132:
    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = v7;
        v88 = (v7 + 16 * v86);
        v7 = *v88;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_18E728410((*a3 + 24 * *v88), (*a3 + 24 * *v89), *a3 + 24 * v90, v4);
        if (v95)
        {
        }

        if (v90 < v7)
        {
          goto LABEL_157;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_158;
        }

        *v88 = v7;
        v88[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_159;
        }

        v95 = 0;
        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        v7 = v87;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_169;
    }
  }

LABEL_50:
  if (v6 >= v5)
  {
    goto LABEL_78;
  }

  if (__OFSUB__(v6, v8))
  {
    goto LABEL_161;
  }

  if (v6 - v8 >= a4)
  {
    goto LABEL_78;
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_162;
  }

  if (v8 + a4 < v5)
  {
    v5 = v8 + a4;
  }

  if (v5 < v8)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  if (v6 == v5)
  {
    goto LABEL_78;
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_60:
  v31 = v30;
  v32 = v29;
  while (1)
  {
    v33 = *(v32 + 40);
    if (*(v32 + 40))
    {
      v34 = *(v32 + 16);
      if (!*(v32 + 16))
      {
        goto LABEL_59;
      }

      if (v33 != 1)
      {
        if (v34 == 2)
        {
          if (v33 == 2 && !*(v32 + 8))
          {
            goto LABEL_73;
          }

LABEL_59:
          ++v6;
          v29 += 24;
          --v30;
          if (v6 == v5)
          {
            v6 = v5;
LABEL_78:
            if (v6 < v8)
            {
              goto LABEL_160;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_18E6ED5B4(0, *(v7 + 16) + 1, 1, v7);
              v7 = result;
            }

            v38 = *(v7 + 16);
            v37 = *(v7 + 24);
            v39 = v38 + 1;
            if (v38 >= v37 >> 1)
            {
              result = sub_18E6ED5B4((v37 > 1), v38 + 1, 1, v7);
              v7 = result;
            }

            *(v7 + 16) = v39;
            v4 = (v7 + 32);
            v40 = (v7 + 32 + 16 * v38);
            *v40 = v8;
            v40[1] = v6;
            v41 = *v93;
            if (!*v93)
            {
              goto LABEL_170;
            }

            if (!v38)
            {
LABEL_3:
              v5 = a3[1];
              a4 = v92;
              if (v6 >= v5)
              {
                goto LABEL_130;
              }

              goto LABEL_4;
            }

            while (2)
            {
              v42 = v39 - 1;
              if (v39 >= 4)
              {
                v47 = &v4[16 * v39];
                v48 = *(v47 - 8);
                v49 = *(v47 - 7);
                v53 = __OFSUB__(v49, v48);
                v50 = v49 - v48;
                if (v53)
                {
                  goto LABEL_145;
                }

                v52 = *(v47 - 6);
                v51 = *(v47 - 5);
                v53 = __OFSUB__(v51, v52);
                v45 = v51 - v52;
                v46 = v53;
                if (v53)
                {
                  goto LABEL_146;
                }

                v54 = (v7 + 16 * v39);
                v56 = *v54;
                v55 = v54[1];
                v53 = __OFSUB__(v55, v56);
                v57 = v55 - v56;
                if (v53)
                {
                  goto LABEL_148;
                }

                v53 = __OFADD__(v45, v57);
                v58 = v45 + v57;
                if (v53)
                {
                  goto LABEL_150;
                }

                if (v58 >= v50)
                {
                  v76 = &v4[16 * v42];
                  v78 = *v76;
                  v77 = *(v76 + 1);
                  v53 = __OFSUB__(v77, v78);
                  v79 = v77 - v78;
                  if (v53)
                  {
                    goto LABEL_156;
                  }

                  if (v45 < v79)
                  {
                    v42 = v39 - 2;
                  }
                }

                else
                {
LABEL_98:
                  if (v46)
                  {
                    goto LABEL_147;
                  }

                  v59 = (v7 + 16 * v39);
                  v61 = *v59;
                  v60 = v59[1];
                  v62 = __OFSUB__(v60, v61);
                  v63 = v60 - v61;
                  v64 = v62;
                  if (v62)
                  {
                    goto LABEL_149;
                  }

                  v65 = &v4[16 * v42];
                  v67 = *v65;
                  v66 = *(v65 + 1);
                  v53 = __OFSUB__(v66, v67);
                  v68 = v66 - v67;
                  if (v53)
                  {
                    goto LABEL_152;
                  }

                  if (__OFADD__(v63, v68))
                  {
                    goto LABEL_154;
                  }

                  if (v63 + v68 < v45)
                  {
                    goto LABEL_113;
                  }

                  if (v45 < v68)
                  {
                    v42 = v39 - 2;
                  }
                }
              }

              else
              {
                if (v39 == 3)
                {
                  v43 = *(v7 + 32);
                  v44 = *(v7 + 40);
                  v53 = __OFSUB__(v44, v43);
                  v45 = v44 - v43;
                  v46 = v53;
                  goto LABEL_98;
                }

                if (v39 < 2)
                {
                  goto LABEL_155;
                }

                v69 = (v7 + 16 * v39);
                v71 = *v69;
                v70 = v69[1];
                v53 = __OFSUB__(v70, v71);
                v63 = v70 - v71;
                v64 = v53;
LABEL_113:
                if (v64)
                {
                  goto LABEL_151;
                }

                v72 = &v4[16 * v42];
                v74 = *v72;
                v73 = *(v72 + 1);
                v53 = __OFSUB__(v73, v74);
                v75 = v73 - v74;
                if (v53)
                {
                  goto LABEL_153;
                }

                if (v75 < v63)
                {
                  goto LABEL_3;
                }
              }

              if (v42 - 1 >= v39)
              {
                __break(1u);
LABEL_142:
                __break(1u);
LABEL_143:
                __break(1u);
LABEL_144:
                __break(1u);
LABEL_145:
                __break(1u);
LABEL_146:
                __break(1u);
LABEL_147:
                __break(1u);
LABEL_148:
                __break(1u);
LABEL_149:
                __break(1u);
LABEL_150:
                __break(1u);
LABEL_151:
                __break(1u);
LABEL_152:
                __break(1u);
LABEL_153:
                __break(1u);
LABEL_154:
                __break(1u);
LABEL_155:
                __break(1u);
LABEL_156:
                __break(1u);
LABEL_157:
                __break(1u);
LABEL_158:
                __break(1u);
LABEL_159:
                __break(1u);
LABEL_160:
                __break(1u);
LABEL_161:
                __break(1u);
LABEL_162:
                __break(1u);
                goto LABEL_163;
              }

              if (!*a3)
              {
                goto LABEL_167;
              }

              v80 = v7;
              v81 = &v4[16 * v42 - 16];
              v7 = *v81;
              v82 = &v4[16 * v42];
              v83 = *(v82 + 1);
              sub_18E728410((*a3 + 24 * *v81), (*a3 + 24 * *v82), *a3 + 24 * v83, v41);
              if (v95)
              {
              }

              if (v83 < v7)
              {
                goto LABEL_142;
              }

              if (v42 > *(v80 + 16))
              {
                goto LABEL_143;
              }

              *v81 = v7;
              v81[1] = v83;
              v84 = *(v80 + 16);
              if (v42 >= v84)
              {
                goto LABEL_144;
              }

              v7 = v80;
              v95 = 0;
              v39 = v84 - 1;
              result = memmove(&v4[16 * v42], v82 + 16, 16 * (v84 - 1 - v42));
              *(v80 + 16) = v84 - 1;
              if (v84 <= 2)
              {
                goto LABEL_3;
              }

              continue;
            }
          }

          goto LABEL_60;
        }

        if (v34 == 1 || v33 != 2 && v34 == 3 && v33 == 3 && *v32)
        {
          goto LABEL_59;
        }
      }
    }

LABEL_73:
    if (!v28)
    {
      break;
    }

    v35 = *(v32 + 24);
    *(v32 + 24) = *v32;
    *(v32 + 40) = *(v32 + 16);
    *v32 = v35;
    *(v32 + 16) = v33;
    v32 -= 24;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_59;
    }
  }

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
  return result;
}

uint64_t sub_18E727B50(__n128 **a1, __n128 a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = a4[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_126:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_166;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_128;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = &off_1F01A5000;
  while (2)
  {
    v12 = v9++;
    if (v9 >= v8)
    {
      goto LABEL_43;
    }

    v7 = *a4 + 16 * v9;
    v13 = *(v7 + 1);
    v14 = *(v7 + 2);
    v101 = *a4;
    v15 = (*a4 + 16 * v12);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v15) = v15[2];
    LOBYTE(v106) = *v7;
    BYTE1(v106) = v13;
    BYTE2(v106) = v14;
    v105[0] = v16;
    v105[1] = v17;
    v105[2] = v15;
    v18 = sub_18E725158(v105, a2);
    v19 = (v12 + 2);
    v11 = &off_1F01A5000;
    if (v12 + 2 >= v8)
    {
LABEL_33:
      v9 = v19;
      if (v18)
      {
        goto LABEL_34;
      }

      goto LABEL_43;
    }

    LODWORD(v6) = *v7;
    LOBYTE(v20) = *(v7 + 2);
    while (1)
    {
      v21 = v9;
      v9 = v19;
      LODWORD(v7) = v6;
      v22 = v20;
      v23 = (v101 + 16 * v9);
      LODWORD(v6) = *v23;
      v20 = v23[2];
      if (v6 != v7)
      {
        break;
      }

      v24 = *(v101 + 16 * v21 + 1);
      v25 = v23[1];
      if (v24 == v25)
      {
        if (v20 != 2 && (v22 == 2 || (v20 & 1) != 0 && (v22 & 1) == 0))
        {
          if ((v18 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (v18)
        {
          goto LABEL_34;
        }
      }

      else if ((v18 ^ v25 ^ 1))
      {
        goto LABEL_42;
      }

LABEL_8:
      v19 = (v9 + 1);
      if (v9 + 1 == v8)
      {
        v19 = v8;
        goto LABEL_33;
      }
    }

    if (!qword_1F01A5188)
    {
      goto LABEL_167;
    }

    v26 = 0;
    while (*(&unk_1F01A5178 + v26 + 32) != v6)
    {
      if (qword_1F01A5188 == ++v26)
      {
        goto LABEL_167;
      }
    }

    v27 = 0;
    while (*(&unk_1F01A5178 + v27 + 32) != v7)
    {
      if (qword_1F01A5188 == ++v27)
      {
        goto LABEL_167;
      }
    }

    if (((v18 ^ (v26 < v27)) & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_42:
    if ((v18 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_34:
    if (v9 < v12)
    {
      goto LABEL_155;
    }

    if (v12 < v9)
    {
      v28 = 16 * v9 - 8;
      v29 = (16 * v12) | 8;
      v30 = v9;
      v31 = v12;
      do
      {
        if (v31 != --v30)
        {
          v38 = *a4;
          if (!*a4)
          {
            goto LABEL_161;
          }

          v32 = (v38 + v29);
          v33 = (v38 + v28);
          v34 = *(v32 - 8);
          v35 = *(v32 - 7);
          v36 = *(v32 - 6);
          v37 = *v32;
          *(v32 - 1) = *(v33 - 1);
          *(v33 - 8) = v34;
          *(v33 - 7) = v35;
          *(v33 - 6) = v36;
          *v33 = v37;
        }

        ++v31;
        v28 -= 16;
        v29 += 16;
      }

      while (v31 < v30);
    }

LABEL_43:
    v39 = a4[1];
    if (v9 >= v39)
    {
      goto LABEL_75;
    }

    if (__OFSUB__(v9, v12))
    {
      goto LABEL_154;
    }

    if (v9 - v12 >= a5)
    {
      goto LABEL_75;
    }

    if (__OFADD__(v12, a5))
    {
      goto LABEL_156;
    }

    if (v12 + a5 < v39)
    {
      v39 = v12 + a5;
    }

    if (v39 >= v12)
    {
      if (v9 == v39)
      {
        goto LABEL_75;
      }

      v40 = *a4;
      while (2)
      {
        v41 = (v40 + 16 * v9);
        LODWORD(v6) = *v41;
        v42 = v41[2];
        v43 = v9;
        while (2)
        {
          v44 = v43 - 1;
          v45 = v40 + 16 * v43;
          v46 = (v40 + 16 * (v43 - 1));
          LODWORD(v8) = *v46;
          if (v6 == v8)
          {
            v47 = *(v45 + 1);
            if (v46[1] == v47)
            {
              if (v42 == 2)
              {
                goto LABEL_52;
              }

              if (v46[2] != 2)
              {
                LOBYTE(v47) = v42 ^ 1 | v46[2];
                goto LABEL_59;
              }
            }

            else
            {
LABEL_59:
              if (v47)
              {
                goto LABEL_52;
              }
            }

LABEL_71:
            if (!v40)
            {
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              v106 = 0;
              v107 = 0xE000000000000000;
              sub_18E72B5C8();
              MEMORY[0x193AD15C0](0xD00000000000001CLL, 0x800000018E73AFA0);
              v105[0] = v6;
              LOBYTE(v6) = MEMORY[0x1E69E7068];
              sub_18E72B6C8();
              MEMORY[0x193AD15C0](8236, 0xE200000000000000);
              for (v105[0] = v8; ; v105[0] = v7)
              {
                sub_18E72B6C8();
                sub_18E72B6E8();
                __break(1u);
LABEL_166:
                __break(1u);
LABEL_167:
                v106 = 0;
                v107 = 0xE000000000000000;
                sub_18E72B5C8();
                MEMORY[0x193AD15C0](0xD00000000000001CLL, 0x800000018E73AFA0);
                v105[0] = v6;
                LOBYTE(v6) = MEMORY[0x1E69E7068];
                sub_18E72B6C8();
                MEMORY[0x193AD15C0](8236, 0xE200000000000000);
              }
            }

            v51 = *(v45 + 1);
            v52 = *(v45 + 8);
            *v45 = *v46;
            *v46 = v6;
            v46[1] = v51;
            v46[2] = v42;
            *(v46 + 1) = v52;
            v43 = v44;
            if (v44 == v12)
            {
              goto LABEL_52;
            }

            continue;
          }

          break;
        }

        v48 = v11[49];
        if (!v48)
        {
          goto LABEL_164;
        }

        v49 = 0;
        while (*(&unk_1F01A5178 + v49 + 32) != v6)
        {
          if (v48 == ++v49)
          {
            goto LABEL_164;
          }
        }

        v50 = 0;
        while (*(&unk_1F01A5178 + v50 + 32) != v8)
        {
          if (v48 == ++v50)
          {
            goto LABEL_164;
          }
        }

        if (v49 < v50)
        {
          goto LABEL_71;
        }

LABEL_52:
        if (++v9 != v39)
        {
          continue;
        }

        break;
      }

      v9 = v39;
LABEL_75:
      if (v9 < v12)
      {
        goto LABEL_153;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_18E6ED5B4(0, *(v10 + 2) + 1, 1, v10);
      }

      v6 = *(v10 + 2);
      v53 = *(v10 + 3);
      v54 = v6 + 1;
      if (v6 >= v53 >> 1)
      {
        v10 = sub_18E6ED5B4((v53 > 1), v6 + 1, 1, v10);
      }

      *(v10 + 2) = v54;
      v55 = &v10[16 * v6];
      *(v55 + 4) = v12;
      *(v55 + 5) = v9;
      v56 = *a1;
      if (!*a1)
      {
        goto LABEL_163;
      }

      if (v6)
      {
        while (2)
        {
          v8 = v54 - 1;
          if (v54 >= 4)
          {
            v61 = &v10[16 * v54 + 32];
            v62 = *(v61 - 64);
            v63 = *(v61 - 56);
            v67 = __OFSUB__(v63, v62);
            v64 = v63 - v62;
            if (v67)
            {
              goto LABEL_140;
            }

            v66 = *(v61 - 48);
            v65 = *(v61 - 40);
            v67 = __OFSUB__(v65, v66);
            v59 = v65 - v66;
            v60 = v67;
            if (v67)
            {
              goto LABEL_141;
            }

            v68 = &v10[16 * v54];
            v70 = *v68;
            v69 = *(v68 + 1);
            v67 = __OFSUB__(v69, v70);
            v71 = v69 - v70;
            if (v67)
            {
              goto LABEL_143;
            }

            v67 = __OFADD__(v59, v71);
            v72 = v59 + v71;
            if (v67)
            {
              goto LABEL_146;
            }

            if (v72 >= v64)
            {
              v90 = &v10[16 * v8 + 32];
              v92 = *v90;
              v91 = *(v90 + 1);
              v67 = __OFSUB__(v91, v92);
              v93 = v91 - v92;
              if (v67)
              {
                goto LABEL_150;
              }

              if (v59 < v93)
              {
                v8 = v54 - 2;
              }
            }

            else
            {
LABEL_95:
              if (v60)
              {
                goto LABEL_142;
              }

              v73 = &v10[16 * v54];
              v75 = *v73;
              v74 = *(v73 + 1);
              v76 = __OFSUB__(v74, v75);
              v77 = v74 - v75;
              v78 = v76;
              if (v76)
              {
                goto LABEL_145;
              }

              v79 = &v10[16 * v8 + 32];
              v81 = *v79;
              v80 = *(v79 + 1);
              v67 = __OFSUB__(v80, v81);
              v82 = v80 - v81;
              if (v67)
              {
                goto LABEL_148;
              }

              if (__OFADD__(v77, v82))
              {
                goto LABEL_149;
              }

              if (v77 + v82 < v59)
              {
                goto LABEL_109;
              }

              if (v59 < v82)
              {
                v8 = v54 - 2;
              }
            }
          }

          else
          {
            if (v54 == 3)
            {
              v57 = *(v10 + 4);
              v58 = *(v10 + 5);
              v67 = __OFSUB__(v58, v57);
              v59 = v58 - v57;
              v60 = v67;
              goto LABEL_95;
            }

            v83 = &v10[16 * v54];
            v85 = *v83;
            v84 = *(v83 + 1);
            v67 = __OFSUB__(v84, v85);
            v77 = v84 - v85;
            v78 = v67;
LABEL_109:
            if (v78)
            {
              goto LABEL_144;
            }

            v86 = &v10[16 * v8];
            v88 = *(v86 + 4);
            v87 = *(v86 + 5);
            v67 = __OFSUB__(v87, v88);
            v89 = v87 - v88;
            if (v67)
            {
              goto LABEL_147;
            }

            if (v89 < v77)
            {
              break;
            }
          }

          v6 = v8 - 1;
          if (v8 - 1 >= v54)
          {
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
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

          if (!*a4)
          {
            goto LABEL_160;
          }

          v94 = *&v10[16 * v6 + 32];
          v7 = *&v10[16 * v8 + 40];
          sub_18E7286D4((*a4 + 16 * v94), (*a4 + 16 * *&v10[16 * v8 + 32]), (*a4 + 16 * v7), v56, a2);
          if (v5)
          {
          }

          if (v7 < v94)
          {
            goto LABEL_138;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_18E7290FC(v10);
          }

          if (v6 >= *(v10 + 2))
          {
            goto LABEL_139;
          }

          v95 = &v10[16 * v6];
          *(v95 + 4) = v94;
          *(v95 + 5) = v7;
          v108 = v10;
          sub_18E729070(v8);
          v10 = v108;
          v54 = *(v108 + 2);
          if (v54 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v8 = a4[1];
      v11 = &off_1F01A5000;
      if (v9 >= v8)
      {
        goto LABEL_126;
      }

      continue;
    }

    break;
  }

LABEL_157:
  __break(1u);
LABEL_158:
  v10 = sub_18E7290FC(v10);
LABEL_128:
  v108 = v10;
  v97 = *(v10 + 2);
  if (v97 >= 2)
  {
    while (*a4)
    {
      v6 = *&v10[16 * v97];
      v98 = *&v10[16 * v97 + 24];
      sub_18E7286D4((*a4 + 16 * v6), (*a4 + 16 * *&v10[16 * v97 + 16]), (*a4 + 16 * v98), v9, v96);
      if (v5)
      {
      }

      if (v98 < v6)
      {
        goto LABEL_151;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_18E7290FC(v10);
      }

      if (v97 - 2 >= *(v10 + 2))
      {
        goto LABEL_152;
      }

      v99 = &v10[16 * v97];
      *v99 = v6;
      *(v99 + 1) = v98;
      v108 = v10;
      sub_18E729070(v97 - 1);
      v10 = v108;
      v97 = *(v108 + 2);
      if (v97 <= 1)
      {
      }
    }

    goto LABEL_162;
  }
}

uint64_t sub_18E728410(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_53;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v17 = v6[16];
      if (v6[16])
      {
        v18 = v4[16];
        if (!v4[16])
        {
          goto LABEL_23;
        }

        if (v17 != 1)
        {
          if (v18 == 1)
          {
            goto LABEL_23;
          }

          if (v18 == 2)
          {
            if (v17 != 2 || v4[8])
            {
              goto LABEL_23;
            }
          }

          else if (v17 != 2 && v18 == 3 && v17 == 3 && *v4)
          {
LABEL_23:
            v14 = v4;
            v15 = v7 == v4;
            v4 += 24;
            if (v15)
            {
              goto LABEL_9;
            }

LABEL_8:
            v16 = *v14;
            *(v7 + 2) = *(v14 + 2);
            *v7 = v16;
            goto LABEL_9;
          }
        }
      }

      v14 = v6;
      v15 = v7 == v6;
      v6 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }
  }

  v19 = 24 * v11;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v19];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_31:
    v20 = v6 - 24;
    v5 -= 24;
    do
    {
      v21 = (v5 + 24);
      v22 = *(v13 - 8);
      if (!*(v13 - 8))
      {
LABEL_47:
        if (v21 != v6)
        {
          v26 = *v20;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v26;
        }

        if (v13 <= v4 || (v6 -= 24, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_53;
        }

        goto LABEL_31;
      }

      v23 = *(v6 - 8);
      if (*(v6 - 8))
      {
        if (v22 == 1)
        {
          goto LABEL_47;
        }

        if (v23 != 1)
        {
          if (v23 == 2)
          {
            if (v22 == 2 && !*(v6 - 16))
            {
              goto LABEL_47;
            }
          }

          else if (v22 == 2 || v23 != 3 || v22 != 3 || !*(v6 - 24))
          {
            goto LABEL_47;
          }
        }
      }

      v24 = v13 - 24;
      if (v21 != v13)
      {
        v25 = *v24;
        *(v5 + 16) = *(v13 - 1);
        *v5 = v25;
      }

      v5 -= 24;
      v13 -= 24;
    }

    while (v24 > v4);
    v13 = v24;
  }

LABEL_53:
  v27 = 24 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v27])
  {
    memmove(v6, v4, v27);
  }

  return 1;
}

uint64_t sub_18E7286D4(__n128 *__src, char *__dst, __n128 *a3, __n128 *a4, __n128 a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src;
  v9 = __dst - __src;
  v10 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v10 = __dst - __src;
  }

  v11 = v10 >> 4;
  v12 = a3 - __dst;
  v13 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v13 = a3 - __dst;
  }

  v14 = v13 >> 4;
  if (v11 >= v13 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v14] <= a4)
    {
      memmove(a4, __dst, 16 * v14);
    }

    v15 = &v5[v14];
    if (v12 < 16 || v7 <= v8)
    {
      goto LABEL_68;
    }

LABEL_40:
    v23 = (v7 - 16);
    v24 = v6;
    v25 = v15;
    while (1)
    {
      v6 = v24 - 1;
      v27 = v25[-1].n128_u8[0];
      --v25;
      v26 = v27;
      v28 = *(v7 - 16);
      if (v27 == v28)
      {
        v29 = v15[-1].n128_u8[1];
        if (*(v7 - 15) == v29)
        {
          v29 = v25->n128_u8[2];
          if (v29 == 2)
          {
            goto LABEL_59;
          }

          if (*(v7 - 14) == 2)
          {
            goto LABEL_61;
          }

          LOBYTE(v29) = v29 ^ 1 | *(v7 - 14);
        }

        if ((v29 & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (!qword_1F01A5188)
        {
LABEL_72:
          sub_18E72B5C8();
          MEMORY[0x193AD15C0](0xD00000000000001CLL, 0x800000018E73AFA0);
          sub_18E72B6C8();
          MEMORY[0x193AD15C0](8236, 0xE200000000000000);
          sub_18E72B6C8();
          result = sub_18E72B6E8();
          __break(1u);
          return result;
        }

        v30 = 0;
        while (*(&unk_1F01A5178 + v30 + 32) != v26)
        {
          if (qword_1F01A5188 == ++v30)
          {
            goto LABEL_72;
          }
        }

        v31 = 0;
        while (*(&unk_1F01A5178 + v31 + 32) != v28)
        {
          if (qword_1F01A5188 == ++v31)
          {
            goto LABEL_72;
          }
        }

        if (v30 < v31)
        {
LABEL_61:
          if (v24 != v7)
          {
            *v6 = *v23;
          }

          if (v15 <= v5 || (v7 -= 16, v23 <= v8))
          {
            v7 = v23;
            goto LABEL_68;
          }

          goto LABEL_40;
        }
      }

LABEL_59:
      if (v24 != v15)
      {
        *v6 = *v25;
      }

      v15 = v25;
      --v24;
      if (v25 <= v5)
      {
        v15 = v25;
        goto LABEL_68;
      }
    }
  }

  if (a4 != __src || &__src[v11] <= a4)
  {
    memmove(a4, __src, 16 * v11);
  }

  v15 = &v5[v11];
  if (v9 >= 16 && v7 < v6)
  {
    do
    {
      v16 = *v7;
      v17 = v5->n128_u8[0];
      if (v16 == v17)
      {
        v18 = v7[1];
        if (v5->n128_u8[1] == v18)
        {
          v18 = v7[2];
          if (v18 == 2)
          {
            goto LABEL_17;
          }

          if (v5->n128_u8[2] == 2)
          {
            goto LABEL_32;
          }

          LOBYTE(v18) = v18 ^ 1 | v5->n128_u8[2];
        }

        if (v18)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (!qword_1F01A5188)
        {
          goto LABEL_72;
        }

        v21 = 0;
        while (*(&unk_1F01A5178 + v21 + 32) != v16)
        {
          if (qword_1F01A5188 == ++v21)
          {
            goto LABEL_72;
          }
        }

        v22 = 0;
        while (*(&unk_1F01A5178 + v22 + 32) != v17)
        {
          if (qword_1F01A5188 == ++v22)
          {
            goto LABEL_72;
          }
        }

        if (v21 >= v22)
        {
LABEL_17:
          v19 = v5;
          v20 = v8 == v5++;
          if (v20)
          {
            goto LABEL_19;
          }

LABEL_18:
          *v8 = *v19;
          goto LABEL_19;
        }
      }

LABEL_32:
      v19 = v7;
      v20 = v8 == v7;
      v7 += 16;
      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v8;
    }

    while (v5 < v15 && v7 < v6);
  }

  v7 = v8;
LABEL_68:
  v32 = v15 - v5 + (v15 - v5 < 0 ? 0xFuLL : 0);
  if (v7 != v5 || v7 >= v5 + (v32 & 0xFFFFFFFFFFFFFFF0))
  {
    memmove(v7, v5, 16 * (v32 >> 4));
  }

  return 1;
}

uint64_t sub_18E728B20(char *__src, char *a2, char *a3, uint64_t *a4, uint64_t (*a5)(uint64_t *, void *, uint64_t *, uint64_t *))
{
  v6 = v5;
  v7 = a3;
  v8 = a2;
  v9 = __src;
  v10 = a2 - __src;
  v11 = a2 - __src + 31;
  if (a2 - __src >= 0)
  {
    v11 = a2 - __src;
  }

  v12 = v11 >> 5;
  v13 = a3 - a2;
  v14 = a3 - a2 + 31;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 5;
  v81 = a4;
  if (v12 >= v14 >> 5)
  {
    if (a4 != a2 || &a2[32 * v15] <= a4)
    {
      memmove(a4, a2, 32 * v15);
      v8 = a2;
      a4 = v81;
    }

    v17 = &a4[4 * v15];
    if (v13 < 32 || v8 <= v9)
    {
      v32 = v8;
    }

    else
    {
      v68 = v9;
LABEL_27:
      v66 = v7;
      v69 = v6;
      v34 = 0;
      v35 = v17;
      v59 = v8 - 32;
      v60 = v17;
      __dsta = v8;
      do
      {
        v64 = v34;
        v36 = v35 + v34;
        v37 = v35 + v34 - 32;
        v38 = *(v35 + v34 - 24);
        v39 = *(v35 + v34 - 16);
        v40 = *(v35 + v34 - 8);
        v41 = *(v8 - 4);
        v42 = *(v8 - 3);
        v43 = *(v8 - 16);
        v44 = *(v8 - 1);
        v77 = *v37;
        v78 = v38;
        v79 = v39;
        v80[0] = v40;
        v73 = v41;
        v74 = v42;
        v75 = v43;
        v76 = v44;
        v61 = v38;
        v62 = v77;
        sub_18E67EEC4(v77, v38, v39);

        sub_18E67EEC4(v41, v42, v43);

        v45 = a5(&v77, v80, &v73, &v76);
        if (v69)
        {
          sub_18E682A3C(v41, v42, v43);

          sub_18E682A3C(v62, v61, v39);

          v50 = v81;
          v53 = v60 - v81 + v64;
          v54 = v53 + 31;
          if (v53 >= 0)
          {
            v54 = v60 - v81 + v64;
          }

          v52 = v54 >> 5;
          v32 = __dsta;
          if (__dsta < v81 || __dsta >= (v81 + (v54 & 0xFFFFFFFFFFFFFFE0)))
          {
            memmove(__dsta, v81, 32 * v52);
          }

          else if (__dsta != v81)
          {
            goto LABEL_50;
          }

          return 1;
        }

        v46 = v45;
        sub_18E682A3C(v41, v42, v43);

        sub_18E682A3C(v62, v61, v39);

        if (v46)
        {
          v7 = &v66[v64 - 32];
          v6 = 0;
          a4 = v81;
          v32 = v59;
          if (&v66[v64] != __dsta)
          {
            v49 = *(v59 + 1);
            *v7 = *v59;
            *&v66[v64 - 16] = v49;
          }

          v17 = (v60 + v64);
          if ((v60 + v64) <= a4 || (v8 = v59, v59 <= v68))
          {
            v17 = (v60 + v64);
            goto LABEL_52;
          }

          goto LABEL_27;
        }

        v47 = &v66[v64];
        a4 = v81;
        v8 = __dsta;
        v35 = v60;
        if (&v66[v64] != v36)
        {
          v48 = *(v37 + 16);
          *(v47 - 2) = *v37;
          *(v47 - 1) = v48;
        }

        v34 = v64 - 32;
        v17 = (v60 + v64 - 32);
      }

      while (v17 > a4);
      v32 = __dsta;
    }
  }

  else
  {
    if (a4 != __src || &__src[32 * v12] <= a4)
    {
      memmove(a4, __src, 32 * v12);
      v8 = a2;
      a4 = v81;
    }

    v17 = &a4[4 * v12];
    if (v10 >= 32 && v8 < v7)
    {
      v63 = &a4[4 * v12];
      v65 = v7;
      while (1)
      {
        v67 = v9;
        v19 = *v8;
        v18 = *(v8 + 1);
        v20 = v8[16];
        __dst = v8;
        v21 = *(v8 + 3);
        v22 = *a4;
        v23 = a4[1];
        v24 = *(a4 + 16);
        v81 = a4;
        v25 = a4[3];
        v77 = v19;
        v78 = v18;
        v79 = v20;
        v80[0] = v21;
        v73 = v22;
        v74 = v23;
        v75 = v24;
        v76 = v25;
        sub_18E67EEC4(v19, v18, v20);

        sub_18E67EEC4(v22, v23, v24);

        v26 = a5(&v77, v80, &v73, &v76);
        if (v6)
        {
          sub_18E682A3C(v22, v23, v24);

          sub_18E682A3C(v19, v18, v20);

          v50 = v81;
          v51 = v63 - v81 + 31;
          if (v63 - v81 >= 0)
          {
            v51 = v63 - v81;
          }

          v52 = v51 >> 5;
          v32 = v67;
          if (v67 < v81 || v67 >= (v81 + (v51 & 0xFFFFFFFFFFFFFFE0)))
          {
            memmove(v67, v81, 32 * v52);
          }

          else
          {
            if (v67 == v81)
            {
              return 1;
            }

LABEL_50:
            v55 = 32 * v52;
LABEL_58:
            memmove(v32, v50, v55);
          }

          return 1;
        }

        v27 = v26;
        sub_18E682A3C(v22, v23, v24);

        sub_18E682A3C(v19, v18, v20);

        if ((v27 & 1) == 0)
        {
          break;
        }

        v28 = __dst;
        v8 = (__dst + 4);
        v29 = v67;
        a4 = v81;
        v30 = v65;
        if (v67 != __dst)
        {
          goto LABEL_17;
        }

LABEL_18:
        v9 = (v29 + 4);
        v17 = v63;
        v6 = 0;
        if (a4 >= v63 || v8 >= v30)
        {
          goto LABEL_20;
        }
      }

      v28 = v81;
      a4 = v81 + 4;
      v29 = v67;
      v8 = __dst;
      v30 = v65;
      if (v67 == v81)
      {
        goto LABEL_18;
      }

LABEL_17:
      v31 = *(v28 + 1);
      *v29 = *v28;
      *(v29 + 1) = v31;
      goto LABEL_18;
    }

LABEL_20:
    v32 = v9;
  }

LABEL_52:
  v56 = v17 - a4;
  v57 = v56 + 31;
  if (v56 >= 0)
  {
    v57 = v56;
  }

  if (v32 < a4 || v32 >= a4 + (v57 & 0xFFFFFFFFFFFFFFE0) || v32 != a4)
  {
    v55 = 32 * (v57 >> 5);
    v50 = a4;
    goto LABEL_58;
  }

  return 1;
}

uint64_t sub_18E729070(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_18E7290FC(v3);
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

uint64_t sub_18E729110(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_18E6EE2C8(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = MEMORY[0x193AD1330](v5);
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = MEMORY[0x193AD1330](v5);
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (v13 <= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v13;
  }

  result = MEMORY[0x193AD1330](*(v7 + 16));
  if (result <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = result;
  }

  if (v17 < v11)
  {
    if (v13 <= v17)
    {
      v15 = v17;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v18 = sub_18E68154C(v7, v15, 0, v13, sub_18E7265F4);

    *v3 = v18;
    return result;
  }

  if (!v10 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v19 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v19 = sub_18E72ADC8();

  *v3 = v19;
  if (!v19)
  {
    goto LABEL_39;
  }

LABEL_35:
  if ((*(v19 + 24) & 0x3FLL) != v13)
  {
    *(v19 + 24) = *(v19 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

BOOL _s8Gestures15GestureRelationV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    v4 = a1[2];
    v6 = *(a1 + 1);
    v7 = *(a1 + 2);
    v8 = a1[24];
    v9 = a2[2];
    v10 = *(a2 + 1);
    v11 = *(a2 + 2);
    v12 = a2[24];
    if (v4 == 2)
    {
      if (v9 != 2)
      {
        return 0;
      }
    }

    else if (v9 == 2 || ((v9 ^ v4) & 1) != 0)
    {
      return 0;
    }

    v17 = v6;
    v18 = v7;
    v19 = v8;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    sub_18E67EEC4(v6, v7, v8);
    sub_18E67EEC4(v10, v11, v12);
    v2 = _s8Gestures18GestureNodeMatcherO2eeoiySbAC_ACtFZ_0(&v17, &v14);
    sub_18E682A3C(v14, v15, v16);
    sub_18E682A3C(v17, v18, v19);
  }

  return v2;
}

uint64_t sub_18E7293A8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    v4 = a1[2];
    v5 = a2[2];
    if (v4 == 2)
    {
      if (v5 == 2)
      {
        return 1;
      }
    }

    else if (v5 != 2 && ((v5 ^ v4) & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_18E729410(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v32 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_18E729110(v3, 0);
  sub_18E6EE2A8(0, v3, 0);
  v4 = v2;
  v30 = v3;
  if (v3)
  {
    v5 = 0;
    v29 = a1 + 32;
    do
    {
      v6 = (v29 + 16 * v5);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = *(v6 + 1);

      if (!v10)
      {
        return v32;
      }

      v12 = v33;
      v13 = *(v33 + 16);
      if (v32)
      {
        if (v8)
        {
          v14 = 256;
        }

        else
        {
          v14 = 0;
        }

        result = sub_18E726908(v14 | (v9 << 16) | v7, v33 + 32, v13, (v32 + 16), v32 + 32);
        if ((v15 & 1) == 0)
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          __break(1u);
          return result;
        }
      }

      else if (v13)
      {
        v16 = (v33 + 34);
        do
        {
          if (*(v16 - 2) == v7 && ((v8 ^ *(v16 - 1)) & 1) == 0)
          {
            v17 = *v16;
            if (v17 == 2)
            {
              if (v9 == 2)
              {
                goto LABEL_43;
              }
            }

            else if (v9 != 2 && ((v17 ^ v9) & 1) == 0)
            {
              goto LABEL_43;
            }
          }

          v16 += 3;
          --v13;
        }

        while (v13);
      }

      v31 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18E6EE2C8(0, *(v33 + 16) + 1, 1);
        v12 = v33;
      }

      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_18E6EE2C8((v18 > 1), v19 + 1, 1);
        v12 = v33;
      }

      *(v12 + 16) = v19 + 1;
      v20 = (v12 + 3 * v19);
      v20[32] = v7;
      v20[33] = v8;
      v20[34] = v9;
      if (v32)
      {
        if (MEMORY[0x193AD1300](*(v32 + 16) & 0x3FLL) <= v19)
        {
          v23 = *(v32 + 24) & 0x3FLL;
          if (v19 > 0xE || v23)
          {
            goto LABEL_35;
          }

          v32 = 0;
        }

        else
        {
          v21 = v32;
          result = swift_isUniquelyReferenced_native();
          if ((result & 1) == 0)
          {
            v22 = sub_18E72ADC8();

            v32 = v22;
            v21 = v22;
          }

          if (!v21)
          {
            goto LABEL_44;
          }

          sub_18E72AD58();
        }
      }

      else if (v19 > 0xE)
      {
        v23 = 0;
LABEL_35:
        v24 = MEMORY[0x193AD1330](v19 + 1);
        if (v23 <= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = v23;
        }

        v26 = sub_18E68154C(v12, v25, 0, v23, sub_18E7265F4);

        v32 = v26;
      }

      v4 = v31;
      v28 = *(v31 + 16);
      v27 = *(v31 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_18E6EE2A8((v27 > 1), v28 + 1, 1);
        v4 = v31;
      }

      ++v5;
      *(v4 + 16) = v28 + 1;
      *(v4 + 8 * v28 + 32) = v10;
    }

    while (v5 != v30);
  }

  return v32;
}

void *sub_18E72974C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FCF8, &qword_18E731F68);
    v6 = swift_allocObject();
    v7 = _swift_stdlib_malloc_size(v6);
    v8 = v7 - 32;
    if (v7 < 32)
    {
      v8 = v7 - 17;
    }

    v9 = v8 >> 4;
    v6[2] = v4;
    v6[3] = 2 * v9;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = (a2 + 32);
      v2 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - v4;
      v12 = (a1 + 34);
      v13 = v4 - 1;
      v14 = 4;
      while (1)
      {
        v15 = &v6[v14];
        v16 = *(v12 - 1);
        v17 = *v12;
        v18 = *v11;
        *v15 = *(v12 - 2);
        *(v15 + 1) = v16;
        *(v15 + 2) = v17;
        v15[1] = v18;
        if (!v13)
        {
          break;
        }

        v14 += 2;
        v12 += 3;
        ++v11;
        --v13;
        if (!--v10)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      __break(1u);
    }
  }

  else
  {
    v2 = 0;
    v6 = MEMORY[0x1E69E7CC0];
  }

  v20 = v6[3];
  if (v20 < 2)
  {
    return v6;
  }

  v21 = v20 >> 1;
  v22 = __OFSUB__(v21, v2);
  v23 = v21 - v2;
  if (!v22)
  {
    v6[2] = v23;
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_18E729880(uint64_t result, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t (*a5)(uint64_t *, void *, uint64_t *, uint64_t *))
{
  v6 = v5;
  v7 = a3;
  v8 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v10 = *v8;
    if (*v8)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_94;
    }

    goto LABEL_133;
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v124 = result;
  while (1)
  {
    v125 = v10;
    if (v10 + 1 >= v9)
    {
      v24 = v10 + 1;
    }

    else
    {
      v129 = v9;
      v122 = v11;
      v12 = *v7;
      v13 = *v7 + 32 * (v10 + 1);
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      v131 = v12;
      v18 = v12 + 32 * v10;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v135 = v6;
      v137 = *v18;
      v19 = v137;
      v22 = *(v18 + 24);
      v141 = v14;
      v142 = v15;
      v143 = v16;
      v144[0] = v17;
      v138 = v20;
      v139 = v21;
      v140 = v22;
      sub_18E67EEC4(v14, v15, v16);

      sub_18E67EEC4(v19, v20, v21);

      v127 = a5(&v141, v144, &v137, &v140);
      if (v135)
      {
        sub_18E682A3C(v19, v20, v21);

        v114 = v14;
        v115 = v15;
        v116 = v16;
        goto LABEL_104;
      }

      sub_18E682A3C(v19, v20, v21);

      sub_18E682A3C(v14, v15, v16);

      v23 = (v10 + 2);
      v119 = 32 * v10;
      v10 = v131 + 32 * v10 + 88;
      while (1)
      {
        v24 = v129;
        if (v129 == v23)
        {
          break;
        }

        v132 = v23;
        v26 = *(v10 - 24);
        v25 = *(v10 - 16);
        v27 = *(v10 - 8);
        v28 = *v10;
        v30 = *(v10 - 56);
        v29 = *(v10 - 48);
        v31 = *(v10 - 40);
        v32 = *(v10 - 32);
        v141 = v26;
        v142 = v25;
        v143 = v27;
        v144[0] = v28;
        v137 = v30;
        v138 = v29;
        v139 = v31;
        v140 = v32;
        sub_18E67EEC4(v26, v25, v27);

        sub_18E67EEC4(v30, v29, v31);

        LODWORD(v28) = a5(&v141, v144, &v137, &v140);
        sub_18E682A3C(v30, v29, v31);

        sub_18E682A3C(v26, v25, v27);

        v23 = v132 + 1;
        v10 += 32;
        if ((v127 ^ v28))
        {
          v24 = v132;
          break;
        }
      }

      v6 = 0;
      v11 = v122;
      v8 = v124;
      v7 = a3;
      v33 = v119;
      if (v127)
      {
        v34 = v125;
        if (v24 < v125)
        {
          goto LABEL_127;
        }

        if (v125 < v24)
        {
          v35 = 32 * v24 - 32;
          v36 = v24;
          do
          {
            v36 = (v36 - 1);
            if (v34 != v36)
            {
              v37 = *a3;
              if (!*a3)
              {
                goto LABEL_131;
              }

              v38 = v37 + v33;
              v39 = v37 + v35;
              v40 = *(v38 + 16);
              v41 = *(v38 + 24);
              v42 = *v38;
              v43 = *(v39 + 16);
              *v38 = *v39;
              *(v38 + 16) = v43;
              *v39 = v42;
              *(v39 + 16) = v40;
              *(v39 + 24) = v41;
            }

            v34 = (v34 + 1);
            v35 -= 32;
            v33 += 32;
          }

          while (v34 < v36);
        }
      }
    }

    v44 = v7[1];
    if (v24 >= v44)
    {
      goto LABEL_30;
    }

    if (__OFSUB__(v24, v125))
    {
      goto LABEL_123;
    }

    if (v24 - v125 >= a4)
    {
LABEL_30:
      v10 = v24;
      if (v24 < v125)
      {
        goto LABEL_122;
      }

      goto LABEL_31;
    }

    if (__OFADD__(v125, a4))
    {
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v125 + a4 >= v44)
    {
      v45 = v7[1];
    }

    else
    {
      v45 = v125 + a4;
    }

    if (v45 < v125)
    {
      goto LABEL_126;
    }

    if (v24 == v45)
    {
      v10 = v24;
      if (v24 < v125)
      {
        goto LABEL_122;
      }

      goto LABEL_31;
    }

    v123 = v11;
    v136 = v6;
    v93 = *v7;
    v94 = *v7 + 32 * v24 - 32;
    v95 = v125 - v24;
    v117 = v45;
    v128 = *v7;
    do
    {
      v130 = v24;
      v96 = v93 + 32 * v24;
      v98 = *v96;
      v97 = *(v96 + 8);
      v99 = *(v96 + 16);
      v100 = *(v96 + 24);
      v118 = v95;
      v120 = v94;
      v101 = v95;
      while (1)
      {
        v133 = v101;
        v102 = *v94;
        v103 = *(v94 + 8);
        v104 = *(v94 + 16);
        v105 = *(v94 + 24);
        v141 = v98;
        v142 = v97;
        v143 = v99;
        v144[0] = v100;
        v137 = v102;
        v138 = v103;
        v139 = v104;
        v140 = v105;
        sub_18E67EEC4(v98, v97, v99);

        sub_18E67EEC4(v102, v103, v104);

        v106 = a5(&v141, v144, &v137, &v140);
        if (v136)
        {
          sub_18E682A3C(v102, v103, v104);

          v114 = v98;
          v115 = v97;
          v116 = v99;
LABEL_104:
          sub_18E682A3C(v114, v115, v116);
        }

        v107 = v106;
        sub_18E682A3C(v102, v103, v104);

        sub_18E682A3C(v98, v97, v99);

        if ((v107 & 1) == 0)
        {
          break;
        }

        v93 = v128;
        if (!v128)
        {
          goto LABEL_129;
        }

        v98 = *(v94 + 32);
        v97 = *(v94 + 40);
        v99 = *(v94 + 48);
        v100 = *(v94 + 56);
        v108 = *(v94 + 16);
        *(v94 + 32) = *v94;
        *(v94 + 48) = v108;
        *v94 = v98;
        *(v94 + 8) = v97;
        *(v94 + 16) = v99;
        *(v94 + 24) = v100;
        v94 -= 32;
        v101 = v133 + 1;
        if (v133 == -1)
        {
          goto LABEL_88;
        }
      }

      v93 = v128;
LABEL_88:
      v24 = v130 + 1;
      v94 = v120 + 32;
      v95 = v118 - 1;
      v10 = v117;
    }

    while ((v130 + 1) != v117);
    v6 = 0;
    v11 = v123;
    v8 = v124;
    v7 = a3;
    if (v117 < v125)
    {
      goto LABEL_122;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_18E6ED5B4(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v47 = *(v11 + 2);
    v46 = *(v11 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      result = sub_18E6ED5B4((v46 > 1), v47 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v48;
    v49 = &v11[16 * v47];
    *(v49 + 4) = v125;
    *(v49 + 5) = v10;
    v50 = *v8;
    if (!*v8)
    {
      goto LABEL_132;
    }

    if (v47)
    {
      break;
    }

LABEL_3:
    v9 = v7[1];
    v8 = v124;
    if (v10 >= v9)
    {
      goto LABEL_92;
    }
  }

  while (2)
  {
    v51 = v48 - 1;
    if (v48 >= 4)
    {
      v56 = &v11[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_109;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_110;
      }

      v63 = &v11[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_112;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_115;
      }

      if (v67 >= v59)
      {
        v85 = &v11[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_121;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }
      }

      else
      {
LABEL_50:
        if (v55)
        {
          goto LABEL_111;
        }

        v68 = &v11[16 * v48];
        v70 = *v68;
        v69 = *(v68 + 1);
        v71 = __OFSUB__(v69, v70);
        v72 = v69 - v70;
        v73 = v71;
        if (v71)
        {
          goto LABEL_114;
        }

        v74 = &v11[16 * v51 + 32];
        v76 = *v74;
        v75 = *(v74 + 1);
        v62 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v62)
        {
          goto LABEL_117;
        }

        if (__OFADD__(v72, v77))
        {
          goto LABEL_118;
        }

        if (v72 + v77 < v54)
        {
          goto LABEL_64;
        }

        if (v54 < v77)
        {
          v51 = v48 - 2;
        }
      }
    }

    else
    {
      if (v48 == 3)
      {
        v52 = *(v11 + 4);
        v53 = *(v11 + 5);
        v62 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        v55 = v62;
        goto LABEL_50;
      }

      v78 = &v11[16 * v48];
      v80 = *v78;
      v79 = *(v78 + 1);
      v62 = __OFSUB__(v79, v80);
      v72 = v79 - v80;
      v73 = v62;
LABEL_64:
      if (v73)
      {
        goto LABEL_113;
      }

      v81 = &v11[16 * v51];
      v83 = *(v81 + 4);
      v82 = *(v81 + 5);
      v62 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v62)
      {
        goto LABEL_116;
      }

      if (v84 < v72)
      {
        goto LABEL_3;
      }
    }

    v89 = v51 - 1;
    if (v51 - 1 < v48)
    {
      if (!*v7)
      {
        goto LABEL_128;
      }

      v90 = *&v11[16 * v89 + 32];
      v91 = *&v11[16 * v51 + 40];
      sub_18E728B20((*v7 + 32 * v90), (*v7 + 32 * *&v11[16 * v51 + 32]), (*v7 + 32 * v91), v50, a5);
      if (v6)
      {
      }

      if (v91 < v90)
      {
        goto LABEL_107;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_18E7290FC(v11);
      }

      if (v89 >= *(v11 + 2))
      {
        goto LABEL_108;
      }

      v92 = &v11[16 * v89];
      *(v92 + 4) = v90;
      *(v92 + 5) = v91;
      v145 = v11;
      result = sub_18E729070(v51);
      v11 = v145;
      v48 = *(v145 + 2);
      if (v48 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
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
  result = sub_18E7290FC(v11);
  v11 = result;
LABEL_94:
  v145 = v11;
  v109 = *(v11 + 2);
  if (v109 < 2)
  {
  }

  while (1)
  {
    v110 = *v7;
    if (!*v7)
    {
      break;
    }

    v7 = (v109 - 1);
    v111 = *&v11[16 * v109];
    v112 = *&v11[16 * v109 + 24];
    sub_18E728B20((v110 + 32 * v111), (v110 + 32 * *&v11[16 * v109 + 16]), (v110 + 32 * v112), v10, a5);
    if (v6)
    {
    }

    if (v112 < v111)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_18E7290FC(v11);
    }

    if (v109 - 2 >= *(v11 + 2))
    {
      goto LABEL_120;
    }

    v113 = &v11[16 * v109];
    *v113 = v111;
    *(v113 + 1) = v112;
    v145 = v11;
    result = sub_18E729070(v109 - 1);
    v11 = v145;
    v109 = *(v145 + 2);
    v7 = a3;
    if (v109 <= 1)
    {
    }
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

double _sSa8GesturesAA15GestureRelationVRszlE7defaultSayACGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDF0, &qword_18E731FF0);
  v0 = swift_allocObject();
  *&result = 3;
  *(v0 + 16) = xmmword_18E731C40;
  *(v0 + 32) = 0;
  *(v0 + 34) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 3;
  *(v0 + 64) = 1;
  *(v0 + 66) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 3;
  *(v0 + 96) = 257;
  *(v0 + 98) = 1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 3;
  return result;
}

unint64_t sub_18E72A204()
{
  result = qword_1EAC8FCB8;
  if (!qword_1EAC8FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8FCB8);
  }

  return result;
}

unint64_t sub_18E72A25C()
{
  result = qword_1EAC8FCC0;
  if (!qword_1EAC8FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8FCC0);
  }

  return result;
}

unint64_t sub_18E72A2B4()
{
  result = qword_1EAC8FCC8;
  if (!qword_1EAC8FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8FCC8);
  }

  return result;
}

uint64_t initializeWithCopy for GestureRelation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_18E67EEC4(v3, v4, v5);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return a1;
}

uint64_t assignWithCopy for GestureRelation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_18E67EEC4(v3, v4, v5);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v8 = *(a1 + 24);
  *(a1 + 24) = v5;
  sub_18E682A3C(v6, v7, v8);
  return a1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t assignWithTake for GestureRelation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  v3 = *(a2 + 24);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a1 + 24);
  *(a1 + 24) = v3;
  sub_18E682A3C(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for GestureRelation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GestureRelation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t destroy for RelationMap(void *a1)
{
}

uint64_t *sub_18E72A570(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t *assignWithCopy for RelationMap(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

void *assignWithTake for RelationMap(void *a1, uint64_t a2)
{

  *a1 = *a2;

  a1[2] = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for RelationMap(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RelationMap(uint64_t result, int a2, int a3)
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

unint64_t sub_18E72A724()
{
  result = qword_1EAC8FCD0;
  if (!qword_1EAC8FCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8FCD8, " H");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8FCD0);
  }

  return result;
}

unint64_t sub_18E72A788(uint64_t a1)
{
  *(a1 + 8) = sub_18E72A7B8();
  result = sub_18E72A80C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E72A7B8()
{
  result = qword_1EAC8FCE0;
  if (!qword_1EAC8FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8FCE0);
  }

  return result;
}

unint64_t sub_18E72A80C()
{
  result = qword_1EAC8FCE8;
  if (!qword_1EAC8FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8FCE8);
  }

  return result;
}

uint64_t sub_18E72A860(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  v5 = v3 == 2;
  v4 = a1[1] ^ v3 ^ 1;
  if (v5)
  {
    v4 = 1;
  }

  v5 = v2 == 3 || *a1 == v2;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RelationDefinition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for RelationDefinition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t GestureTag.description.getter()
{
  MEMORY[0x193AD15C0]();
  MEMORY[0x193AD15C0](34, 0xE100000000000000);
  return 34;
}

uint64_t static GestureTag.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_18E72B7C8();
  }
}

uint64_t GestureTag.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_18E72B888();
  _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
  return sub_18E72B8E8();
}

uint64_t sub_18E72AAF0()
{
  sub_18E72B888();
  _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
  return sub_18E72B8E8();
}

uint64_t sub_18E72AB44(uint64_t a1)
{
  sub_18E72B888();
  _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
  return sub_18E72B8E8();
}

unint64_t sub_18E72AB90()
{
  result = qword_1EAC8FD48;
  if (!qword_1EAC8FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8FD48);
  }

  return result;
}

uint64_t sub_18E72ABE4()
{
  MEMORY[0x193AD15C0](*v0, v0[1]);
  MEMORY[0x193AD15C0](34, 0xE100000000000000);
  return 34;
}

unint64_t sub_18E72AC38()
{
  result = qword_1EAC8FD50;
  if (!qword_1EAC8FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8FD50);
  }

  return result;
}

uint64_t sub_18E72AC8C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_18E72B7C8();
  }
}

unint64_t sub_18E72ACC0()
{
  result = qword_1EAC8FD58;
  if (!qword_1EAC8FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8FD58);
  }

  return result;
}