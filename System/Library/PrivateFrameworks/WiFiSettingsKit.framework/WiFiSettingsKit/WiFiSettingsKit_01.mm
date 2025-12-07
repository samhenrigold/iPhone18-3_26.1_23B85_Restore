uint64_t sub_2740B0C08(uint64_t a1, const __SCNetworkProtocol *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v23 - v7;
  v9 = sub_2740AE850();
  if (!v9 || *(v9 + 17) != 1 || *(v9 + 81) != 1 || (*(a1 + 81) & 1) != 0)
  {
LABEL_5:
    v10 = sub_2741C7D4C();
    v11 = SCNetworkProtocolSetConfiguration(a2, v10);

    v25 = 0;
    v26 = 0xE000000000000000;
    sub_2741C856C();
    if (v11)
    {
      MEMORY[0x2743E5FB0](0x7270206465766153, 0xED0000203A6F746FLL);
      v24 = a2;
      type metadata accessor for SCNetworkProtocol(0);
      sub_2741C862C();
      MEMORY[0x2743E5FB0](0x6964206874697720, 0xEC000000203A7463);
      v12 = sub_2741C7D7C();
      MEMORY[0x2743E5FB0](v12);

      sub_2740CB460(v25, v26);
    }

    else
    {
      MEMORY[0x2743E5FB0](0xD000000000000027, 0x80000002741D9250);
      v24 = a2;
      type metadata accessor for SCNetworkProtocol(0);
      sub_2741C862C();
      MEMORY[0x2743E5FB0](0x6964206874697720, 0xEC000000203A7463);
      v13 = sub_2741C7D7C();
      MEMORY[0x2743E5FB0](v13);

      sub_2740CB218(v25, v26, 0xD000000000000021, 0x80000002741D9280);
    }
  }

  v15 = *(v9 + 32);
  if (v15)
  {
    if ((*(v9 + 80) & 1) == 0)
    {
      v16 = *(v9 + 48);
      if (v16)
      {
        v17 = *(v9 + 24);
        v18 = *(v9 + 72);
        v19 = *(v9 + 40);
        type metadata accessor for ProxyKeychainOperation();
        v20 = swift_allocObject();

        swift_defaultActor_initialize();
        *(v20 + 112) = [objc_opt_self() sharedCredentialStorage];
        v21 = sub_2741C80DC();
        (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
        v22 = swift_allocObject();
        v22[2] = 0;
        v22[3] = 0;
        v22[4] = v20;
        v22[5] = v17;
        v22[6] = v15;
        v22[7] = v18;
        v22[8] = v19;
        v22[9] = v16;
        sub_2740CE980(0, 0, v8, &unk_2741CC0F8, v22);

        goto LABEL_5;
      }
    }
  }

  sub_2740CB218(0xD000000000000038, 0x80000002741D92B0, 0xD000000000000021, 0x80000002741D9280);
}

uint64_t sub_2740B1040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x2822009F8](sub_2740B1070, a4, 0);
}

uint64_t sub_2740B1070()
{
  sub_2740E5E74(v0[3], v0[4], v0[5], v0[6], v0[7]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2740B10D8()
{

  return swift_deallocClassInstance();
}

unsigned __int8 *sub_2740B1168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_2741C7F9C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2740B16F4(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2741C858C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
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

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_2740B16F4(uint64_t a1, unint64_t a2)
{
  v2 = sub_2741C7FAC();
  v6 = sub_2740B1774(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2740B1774(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2741C83AC();
    if (!v9 || (v10 = v9, v11 = sub_2740CB038(v9, 0), v12 = sub_2740B18CC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2741C7EFC();

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
      return sub_2741C7EFC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2741C858C();
LABEL_4:

  return sub_2741C7EFC();
}

unint64_t sub_2740B18CC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_2740B1AEC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2741C7F6C();
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
          result = sub_2741C858C();
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

    result = sub_2740B1AEC(v12, a6, a7);
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

    result = sub_2741C7F4C();
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

unint64_t sub_2740B1AEC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2741C7F7C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2743E5FE0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

double sub_2740B1B68@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, uint64_t a3@<X1>)
{
  v4 = v3;
  v6 = sub_2741251AC(a1, a3);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_27410681C();
      v10 = v12;
    }

    sub_27409D2F8((*(v10 + 56) + 32 * v8), a2);
    sub_274105FAC(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_2740B1C0C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2740B1C5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_27409D648;

  return sub_2740B1040(a1, v4, v5, v6, v7, v8, v9, v10);
}

const __SCNetworkInterface *sub_2740B1D48()
{
  v0 = sub_2740AD7C8();
  if (v0)
  {
    v1 = v0;
    v2 = SCNetworkSetCopyServices(v0);
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for SCNetworkService(0);
        sub_2741C7FDC();
      }
    }

    sub_2740CB218(0xD00000000000001ALL, 0x80000002741D94F0, 0xD000000000000017, 0x80000002741D94D0);
  }

  else
  {
    sub_2740CB218(0xD00000000000002DLL, 0x80000002741D94A0, 0xD000000000000017, 0x80000002741D94D0);
  }

  return 0;
}

unint64_t sub_2740B2004()
{
  result = qword_280938420;
  if (!qword_280938420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938420);
  }

  return result;
}

unint64_t sub_2740B2058()
{
  result = qword_280938428;
  if (!qword_280938428)
  {
    type metadata accessor for SCNetworkSet(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938428);
  }

  return result;
}

unint64_t sub_2740B20B0(void *a1)
{
  v2 = sub_274177B3C(MEMORY[0x277D84F90]);
  v43 = v2;
  v3 = *a1;
  v4 = sub_2741C7E7C();
  v6 = v5;
  if (v3)
  {
    if (v3 == 1)
    {
      v7 = MEMORY[0x277CE1828];
    }

    else
    {
      v7 = MEMORY[0x277CE1808];
    }
  }

  else
  {
    v7 = MEMORY[0x277CE1800];
  }

  v8 = *v7;
  type metadata accessor for CFString(0);
  v42 = v9;
  *&v41 = v8;
  sub_27409D2F8(&v41, v40);
  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2741062FC(v40, v4, v6, isUniquelyReferenced_nonNull_native);

  v43 = v2;
  v12 = sub_2741C7E7C();
  v14 = v12;
  v15 = v13;
  v16 = a1[1];
  if (v16)
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938430, &qword_2741CC108);
    *&v41 = v16;
    sub_27409D2F8(&v41, v40);

    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_2741062FC(v40, v14, v15, v17);

    v43 = v2;
  }

  else
  {
    sub_2740B1B68(v12, &v41, v13);

    sub_2740B29E8(&v41);
  }

  v18 = sub_2741C7E7C();
  v20 = v18;
  v21 = v19;
  v22 = a1[2];
  if (v22)
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938430, &qword_2741CC108);
    *&v41 = v22;
    sub_27409D2F8(&v41, v40);
    swift_bridgeObjectRetain_n();
    v23 = v43;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_2741062FC(v40, v20, v21, v24);

    v43 = v23;
    v25 = sub_2741C7E7C();
    v27 = v26;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938430, &qword_2741CC108);
    *&v41 = v22;
    sub_27409D2F8(&v41, v40);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_2741062FC(v40, v25, v27, v28);

    v43 = v23;
  }

  else
  {
    sub_2740B1B68(v18, v40, v19);

    sub_2740B29E8(v40);
    v29 = sub_2741C7E7C();
    sub_2740B1B68(v29, v40, v30);

    sub_2740B29E8(v40);
  }

  v31 = sub_2741C7E7C();
  v33 = v31;
  v34 = v32;
  v35 = a1[6];
  if (v35)
  {
    v36 = a1[5];
    v42 = MEMORY[0x277D837D0];
    *&v41 = v36;
    *(&v41 + 1) = v35;
    sub_27409D2F8(&v41, v40);

    v37 = v43;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    sub_2741062FC(v40, v33, v34, v38);

    return v37;
  }

  else
  {
    sub_2740B1B68(v31, &v41, v32);

    sub_2740B29E8(&v41);
    return v43;
  }
}

unint64_t sub_2740B2450(uint64_t a1)
{
  v2 = sub_274177B3C(MEMORY[0x277D84F90]);
  v3 = sub_2741C7E7C();
  v5 = v4;
  v6 = *(a1 + 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938430, &qword_2741CC108);
  v17 = v7;
  *&v16 = v6;
  sub_27409D2F8(&v16, v15);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2741062FC(v15, v3, v5, isUniquelyReferenced_nonNull_native);

  v9 = sub_2741C7E7C();
  v11 = v10;
  v12 = *(a1 + 16);
  v17 = v7;
  *&v16 = v12;
  sub_27409D2F8(&v16, v15);

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_2741062FC(v15, v9, v11, v13);

  return v2;
}

unint64_t sub_2740B2580(uint64_t a1)
{
  v2 = sub_274177B3C(MEMORY[0x277D84F90]);
  v3 = MEMORY[0x277D839B0];
  v4 = *(a1 + 81);
  v47 = MEMORY[0x277D839B0];
  LOBYTE(v46) = v4;
  sub_27409D2F8(&v46, v45);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2741062FC(v45, 0xD000000000000016, 0x80000002741D96E0, isUniquelyReferenced_nonNull_native);
  v48 = v2;
  v6 = sub_2741C7E7C();
  v8 = v6;
  v9 = v7;
  v10 = *(a1 + 32);
  v11 = MEMORY[0x277D837D0];
  if (v10)
  {
    v12 = *(a1 + 24);
    v47 = MEMORY[0x277D837D0];
    *&v46 = v12;
    *(&v46 + 1) = v10;
    sub_27409D2F8(&v46, v45);

    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_2741062FC(v45, v8, v9, v13);

    v48 = v2;
  }

  else
  {
    sub_2740B1B68(v6, &v46, v7);

    sub_2740B29E8(&v46);
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    v15 = *(a1 + 40);
    v47 = v11;
    *&v46 = v15;
    *(&v46 + 1) = v14;
    sub_27409D2F8(&v46, v45);

    v16 = v48;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_2741062FC(v45, 0xD000000000000011, 0x80000002741D9700, v17);
    v48 = v16;
  }

  else
  {
    sub_2740B1B68(0xD000000000000011, &v46, 0x80000002741D9700);
    sub_2740B29E8(&v46);
  }

  v18 = sub_2741C7E7C();
  v20 = v19;
  if (*(a1 + 80))
  {
    sub_2740B1B68(v18, &v46, v19);

    sub_2740B29E8(&v46);
  }

  else
  {
    v21 = *(a1 + 72);
    v47 = MEMORY[0x277D83B88];
    *&v46 = v21;
    v22 = v18;
    sub_27409D2F8(&v46, v45);
    v23 = v48;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_2741062FC(v45, v22, v20, v24);

    v48 = v23;
  }

  v25 = sub_2741C7E7C();
  v27 = v25;
  v28 = v26;
  v29 = *(a1 + 96);
  if (v29)
  {
    v30 = *(a1 + 88);
    v47 = v11;
    *&v46 = v30;
    *(&v46 + 1) = v29;
    sub_27409D2F8(&v46, v45);

    v31 = v48;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_2741062FC(v45, v27, v28, v32);

    v48 = v31;
  }

  else
  {
    sub_2740B1B68(v25, &v46, v26);

    sub_2740B29E8(&v46);
    v31 = v48;
  }

  v33 = sub_2741C7E7C();
  v35 = v34;
  v36 = *(a1 + 105);
  v47 = v3;
  LOBYTE(v46) = v36;
  sub_27409D2F8(&v46, v45);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  sub_2741062FC(v45, v33, v35, v37);

  v48 = v31;
  v38 = sub_2741C7E7C();
  v40 = v39;
  v41 = *(a1 + 104);
  v47 = v3;
  LOBYTE(v46) = v41;
  sub_27409D2F8(&v46, v45);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  sub_2741062FC(v45, v38, v40, v42);

  *&v46 = 0;
  *(&v46 + 1) = 0xE000000000000000;
  sub_2741C856C();

  *&v46 = 0xD000000000000020;
  *(&v46 + 1) = 0x80000002741D9720;
  v43 = sub_2741C7D7C();
  MEMORY[0x2743E5FB0](v43);

  sub_2740CB460(v46, *(&v46 + 1));

  return v31;
}

uint64_t sub_2740B29E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E28, &unk_2741CB3D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2740B2A50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E28, &unk_2741CB3D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for CredentialsResponse(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CredentialsResponse(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2740B2CD0()
{
  result = qword_280938448;
  if (!qword_280938448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938448);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WFButtonType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WFButtonType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2740B2E74(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    if (a1 > 7u)
    {
      if (a1 == 8)
      {
        if (qword_2809373B0 != -1)
        {
          swift_once();
        }

        v1 = &qword_280945E98;
      }

      else if (a1 == 9)
      {
        if (qword_2809373B8 != -1)
        {
          swift_once();
        }

        v1 = &qword_280945EA8;
      }

      else
      {
        if (qword_2809373C0 != -1)
        {
          swift_once();
        }

        v1 = &qword_280945EB8;
      }
    }

    else if (a1 == 5)
    {
      if (qword_280937398 != -1)
      {
        swift_once();
      }

      v1 = &qword_280945E68;
    }

    else if (a1 == 6)
    {
      if (qword_2809373A0 != -1)
      {
        swift_once();
      }

      v1 = &qword_280945E78;
    }

    else
    {
      if (qword_2809373A8 != -1)
      {
        swift_once();
      }

      v1 = &qword_280945E88;
    }

LABEL_40:
    v3 = *v1;

    return v3;
  }

  if (a1 <= 1u)
  {
    if (!a1)
    {
      if (qword_280937388 != -1)
      {
        swift_once();
      }

      v1 = &xmmword_280945E48;
      goto LABEL_40;
    }
  }

  else if (a1 != 2)
  {
    if (a1 == 3)
    {
      if (qword_280937A60 != -1)
      {
        swift_once();
      }

      v1 = &qword_280946CA8;
    }

    else
    {
      if (qword_280937390 != -1)
      {
        swift_once();
      }

      v1 = &qword_280945E58;
    }

    goto LABEL_40;
  }

  v2 = [objc_opt_self() mainBundle];
  v3 = sub_2741C676C();

  return v3;
}

uint64_t sub_2740B31F0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 19279;
    v7 = 0x746567726F46;
    v8 = 0x65766F6D6552;
    if (a1 != 3)
    {
      v8 = 1852403530;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6C65636E6143;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x69466957657355;
    v2 = 0xD000000000000013;
    if (a1 != 9)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6E676169446E7552;
    v4 = 0x66664F6E727554;
    if (a1 != 6)
    {
      v4 = 0x656E6E6F63736944;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2740B3348(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_2740B31F0(*a1);
  v5 = v4;
  if (v3 == sub_2740B31F0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2741C86DC();
  }

  return v8 & 1;
}

uint64_t sub_2740B33D0()
{
  v1 = *v0;
  sub_2741C87DC();
  sub_2740B31F0(v1);
  sub_2741C7F0C();

  return sub_2741C880C();
}

uint64_t sub_2740B3434(uint64_t a1)
{
  sub_2740B31F0(*v1);
  sub_2741C7F0C();
}

uint64_t sub_2740B3488(uint64_t a1)
{
  v2 = *v1;
  sub_2741C87DC();
  sub_2740B31F0(v2);
  sub_2741C7F0C();

  return sub_2741C880C();
}

unint64_t sub_2740B34E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2740B359C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2740B3518@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2740B31F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2740B3548()
{
  result = qword_280938450;
  if (!qword_280938450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938450);
  }

  return result;
}

unint64_t sub_2740B359C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2741C869C();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2740B35E8(char a1)
{
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000017, 0x80000002741D9A00);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](540945696, 0xE400000000000000);
  swift_getKeyPath();
  sub_2740B48E0();
  sub_2741C6A0C();

  sub_2741C862C();
  sub_2740CB460(0, 0xE000000000000000);

  swift_getKeyPath();
  sub_2741C6A0C();

  return sub_2741C6B6C();
}

uint64_t sub_2740B3774()
{
  swift_getKeyPath();
  sub_2740B48E0();
  sub_2741C6A0C();

  return *(v0 + 32);
}

uint64_t sub_2740B37E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740B48E0();
  sub_2741C6A0C();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_2740B3884(char a1)
{
  if (*(v1 + 32) == a1)
  {

    return sub_2740B35E8(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v4);
    sub_2740B48E0();
    sub_2741C69FC();
  }
}

uint64_t sub_2740B3988()
{
  v1 = v0;
  *(v0 + 16) = MEMORY[0x277D84F90];
  v2 = (v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938480, &qword_2741CC3D0);
  swift_allocObject();
  *(v0 + 24) = sub_2741C6B7C();
  sub_2741C6A3C();
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 applicationState] != 0;

  *(v1 + 32) = 2 * v4;
  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  v7 = *MEMORY[0x277D76648];
  v8 = objc_opt_self();
  v9 = [v8 mainQueue];
  v35 = sub_2740B4938;
  v36 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_2740B411C;
  v34 = &block_descriptor;
  v10 = _Block_copy(&aBlock);

  [v6 addObserverForName:v7 object:0 queue:v9 usingBlock:v10];
  _Block_release(v10);

  swift_beginAccess();
  v11 = swift_unknownObjectRetain();
  MEMORY[0x2743E6040](v11);
  if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2741C800C();
  }

  sub_2741C802C();
  swift_endAccess();
  v12 = [v5 defaultCenter];
  v13 = *MEMORY[0x277D76768];
  v14 = [v8 mainQueue];
  v35 = sub_2740B4958;
  v36 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_2740B411C;
  v34 = &block_descriptor_22;
  v15 = _Block_copy(&aBlock);

  v16 = [v12 addObserverForName:v13 object:0 queue:v14 usingBlock:v15];
  _Block_release(v15);

  swift_beginAccess();
  v17 = swift_unknownObjectRetain();
  MEMORY[0x2743E6040](v17);
  if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2741C800C();
  }

  sub_2741C802C();
  swift_endAccess();
  v18 = [v5 defaultCenter];
  v19 = *MEMORY[0x277D76758];
  v20 = [v8 mainQueue];
  v35 = sub_2740B4958;
  v36 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_2740B411C;
  v34 = &block_descriptor_25;
  v21 = _Block_copy(&aBlock);

  v22 = [v18 addObserverForName:v19 object:0 queue:v20 usingBlock:v21];
  _Block_release(v21);

  swift_beginAccess();
  v23 = swift_unknownObjectRetain();
  MEMORY[0x2743E6040](v23);
  if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2741C800C();
  }

  sub_2741C802C();
  swift_endAccess();
  v24 = [v5 defaultCenter];
  v25 = *MEMORY[0x277D76660];
  v26 = [v8 mainQueue];
  v35 = sub_2740B4988;
  v36 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_2740B411C;
  v34 = &block_descriptor_28;
  v27 = _Block_copy(&aBlock);

  v28 = [v24 addObserverForName:v25 object:0 queue:v26 usingBlock:v27];
  _Block_release(v27);

  swift_beginAccess();
  v29 = swift_unknownObjectRetain();
  MEMORY[0x2743E6040](v29);
  if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2741C800C();
  }

  sub_2741C802C();
  swift_endAccess();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_2740B403C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    return sub_2740B35E8(0);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v3);
  sub_2740B48E0();
  sub_2741C69FC();
}

uint64_t sub_2740B411C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2741C671C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_2741C670C();

  v8(v7);

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2740B4210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 32) == 1)
  {
    return sub_2740B35E8(1);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v5);
  sub_2740B48E0();
  sub_2741C69FC();
}

uint64_t sub_2740B42EC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) == 2)
  {
    return sub_2740B35E8(2);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v4);
  sub_2740B48E0();
  sub_2741C69FC();
}

void *sub_2740B43D4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v0 + 16) = MEMORY[0x277D84F90];

    v8 = OBJC_IVAR____TtC15WiFiSettingsKit16AppStateProvider___observationRegistrar;
    v9 = sub_2741C6A4C();
    (*(*(v9 - 8) + 8))(v0 + v8, v9);
    return v0;
  }

  v2 = sub_2741C848C();
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_3:
  result = objc_opt_self();
  if (v2 >= 1)
  {
    v4 = result;

    v5 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2743E6600](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      ++v5;
      v7 = [v4 defaultCenter];
      [v7 removeObserver_];
      swift_unknownObjectRelease();
    }

    while (v2 != v5);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_2740B456C()
{
  sub_2740B43D4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppStateProvider(uint64_t a1)
{
  result = qword_280938460;
  if (!qword_280938460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2740B4618(uint64_t a1)
{
  result = sub_2741C6A4C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarPlayNetworkType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CarPlayNetworkType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2740B4824()
{
  result = qword_280938470;
  if (!qword_280938470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938470);
  }

  return result;
}

uint64_t sub_2740B48A4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v1 + 32) = *(v0 + 24);
  return sub_2740B35E8(v2);
}

unint64_t sub_2740B48E0()
{
  result = qword_280938478;
  if (!qword_280938478)
  {
    type metadata accessor for AppStateProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938478);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2740B49D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2740B4A1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2740B4A88(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006563;
  v3 = 0x6976726553206F4ELL;
  v4 = a1;
  v5 = 0xE300000000000000;
  v6 = 4543564;
  if (a1 != 6)
  {
    v6 = 18229;
    v5 = 0xE200000000000000;
  }

  v7 = 18227;
  if (a1 != 4)
  {
    v7 = 18228;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE200000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1397903431;
  if (a1 != 2)
  {
    v9 = 1162298437;
    v8 = 0xE400000000000000;
  }

  v10 = 0xE200000000000000;
  v11 = 30769;
  if (!a1)
  {
    v11 = 0x6976726553206F4ELL;
    v10 = 0xEA00000000006563;
  }

  if (a1 <= 1u)
  {
    v9 = v11;
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 3)
  {
    v13 = v8;
  }

  else
  {
    v13 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE300000000000000;
        if (v12 != 4543564)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xE200000000000000;
        if (v12 != 18229)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v2 = 0xE200000000000000;
      if (a2 == 4)
      {
        if (v12 != 18227)
        {
          goto LABEL_41;
        }
      }

      else if (v12 != 18228)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      v2 = 0xE400000000000000;
      if (a2 == 2)
      {
        if (v12 != 1397903431)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 1162298437;
    }

    else if (a2)
    {
      v2 = 0xE200000000000000;
      if (v12 != 30769)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v12 != v3)
    {
LABEL_41:
      v14 = sub_2741C86DC();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v13 != v2)
  {
    goto LABEL_41;
  }

  v14 = 1;
LABEL_42:

  return v14 & 1;
}

uint64_t sub_2740B4C54(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEB00000000736C61;
  v5 = 0x7265437473757274;
  if (a1 == 2)
  {
    v5 = 0x69746E6564657263;
  }

  else
  {
    v4 = 0xE900000000000074;
  }

  v6 = 0xD000000000000010;
  if (a1)
  {
    v6 = 0x736C6961746564;
  }

  else
  {
    v3 = 0x80000002741D8900;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    v11 = a2 == 2;
    v10 = 0xEB00000000736C61;
    v9 = 0xE900000000000074;
    if (a2 == 2)
    {
      v12 = 0x69746E6564657263;
    }

    else
    {
      v12 = 0x7265437473757274;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
    v10 = 0x80000002741D8900;
    v11 = a2 == 0;
    if (a2)
    {
      v12 = 0x736C6961746564;
    }

    else
    {
      v12 = 0xD000000000000010;
    }
  }

  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v7 == v12 && v8 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_2741C86DC();
  }

  return v14 & 1;
}

uint64_t sub_2740B4DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v30 = type metadata accessor for EnterpriseURLCredentialsPromptView(0);
  MEMORY[0x28223BE20](v30, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938488, &qword_2741CC470);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v28 - v13;
  v29 = type metadata accessor for ProxyCredentialsPromptView(0);
  MEMORY[0x28223BE20](v29, v15);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = a1;
  v34 = a2;
  v35 = a3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938490, &qword_2741CC478);
  MEMORY[0x2743E5B70](&v32);
  v31 = a4;
  if (v32 > 1u)
  {
    if (v32 != 2 && v32 != 3)
    {
LABEL_9:
      v33 = a1;
      v34 = a2;
      v35 = a3;
      MEMORY[0x2743E5B70](&v32, v18);
      if (v32 <= 1u)
      {
        goto LABEL_12;
      }

      if (v32 == 2)
      {
LABEL_15:

        goto LABEL_17;
      }

      if (v32 == 3)
      {
LABEL_12:
        v23 = sub_2741C86DC();

        if (v23)
        {
LABEL_17:
          sub_2740F3AE0(v10);
          sub_2740B53B8(v10, v14, type metadata accessor for EnterpriseURLCredentialsPromptView);
          swift_storeEnumTagMultiPayload();
          sub_2740B5370(&qword_2809384A0, type metadata accessor for ProxyCredentialsPromptView, &unk_2741CFAD8);
          sub_2740B5370(&qword_2809384A8, type metadata accessor for EnterpriseURLCredentialsPromptView, &unk_2741D0338);
          v20 = v31;
          sub_2741C72CC();
          v21 = v10;
          v22 = type metadata accessor for EnterpriseURLCredentialsPromptView;
          goto LABEL_18;
        }
      }

      v33 = a1;
      v34 = a2;
      v35 = a3;
      MEMORY[0x2743E5B70](&v32, v18);
      if (v32 <= 2u)
      {
        v24 = sub_2741C86DC();

        if (v24)
        {
          goto LABEL_17;
        }
      }

      else if (v32 == 3)
      {
        goto LABEL_15;
      }

      v25 = 1;
      v20 = v31;
      goto LABEL_19;
    }

LABEL_7:
    v19 = sub_2741C86DC();

    if (v19)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (v32)
  {
    goto LABEL_7;
  }

LABEL_8:
  sub_2740E7A74(v17);
  sub_2740B53B8(v17, v14, type metadata accessor for ProxyCredentialsPromptView);
  swift_storeEnumTagMultiPayload();
  sub_2740B5370(&qword_2809384A0, type metadata accessor for ProxyCredentialsPromptView, &unk_2741CFAD8);
  sub_2740B5370(&qword_2809384A8, type metadata accessor for EnterpriseURLCredentialsPromptView, &unk_2741D0338);
  v20 = v31;
  sub_2741C72CC();
  v21 = v17;
  v22 = type metadata accessor for ProxyCredentialsPromptView;
LABEL_18:
  sub_2740B5420(v21, v22);
  v25 = 0;
LABEL_19:
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938498, &qword_2741CC480);
  return (*(*(v26 - 8) + 56))(v20, v25, 1, v26);
}

uint64_t sub_2740B5370(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2740B53B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2740B5420(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2740B5484()
{
  result = qword_2809384B0;
  if (!qword_2809384B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809384B8, &qword_2741CC488);
    sub_2740B5508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809384B0);
  }

  return result;
}

unint64_t sub_2740B5508()
{
  result = qword_2809384C0;
  if (!qword_2809384C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938498, &qword_2741CC480);
    sub_2740B5370(&qword_2809384A0, type metadata accessor for ProxyCredentialsPromptView, &unk_2741CFAD8);
    sub_2740B5370(&qword_2809384A8, type metadata accessor for EnterpriseURLCredentialsPromptView, &unk_2741D0338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809384C0);
  }

  return result;
}

void sub_2740B55F4(uint64_t a1)
{
  v1 = MobileGestalt_get_current_device();
  if (v1)
  {
    v2 = v1;
    wapiCapability = MobileGestalt_get_wapiCapability();

    byte_2809384C8 = wapiCapability;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2740B563C()
{
  result = sub_2740B565C();
  qword_2809384D0 = result;
  return result;
}

unint64_t sub_2740B565C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809384E8, &qword_2741CC4A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2741CC090;
  sub_2741C850C();
  if (qword_280937308 != -1)
  {
    swift_once();
  }

  v1 = byte_2809384C8;
  if (byte_2809384C8 == 1)
  {
    if (qword_280937B50 != -1)
    {
      swift_once();
    }

    v2 = &qword_280946E88;
  }

  else
  {
    if (qword_280937B48 != -1)
    {
      swift_once();
    }

    v2 = &qword_280946E78;
  }

  v3 = *v2;

  *(inited + 72) = v3;
  *(inited + 80) = v4;
  sub_2741C850C();
  if (v1)
  {
    if (qword_280937B60 != -1)
    {
      swift_once();
    }

    v5 = &qword_280946EA8;
  }

  else
  {
    if (qword_280937B58 != -1)
    {
      swift_once();
    }

    v5 = &qword_280946E98;
  }

  v6 = *v5;

  *(inited + 128) = v6;
  *(inited + 136) = v7;
  v8 = sub_274177D94(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809384F0, &qword_2741CC4A8);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_2740B587C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809384E8, &qword_2741CC4A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2741CC090;
  sub_2741C850C();
  if (qword_280937B68 != -1)
  {
    swift_once();
  }

  v1 = unk_280946EC0;
  *(inited + 72) = qword_280946EB8;
  *(inited + 80) = v1;

  sub_2741C850C();
  if (qword_280937B70 != -1)
  {
    swift_once();
  }

  v2 = unk_280946ED0;
  *(inited + 128) = qword_280946EC8;
  *(inited + 136) = v2;

  v3 = sub_274177D94(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809384F0, &qword_2741CC4A8);
  result = swift_arrayDestroy();
  qword_2809384D8 = v3;
  return result;
}

uint64_t sub_2740B59DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_2741C7D6C();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2740B5AF8()
{
  v1 = *(v0 + 208);
  v2 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  *(v0 + 184) = v2;
  if (!v1)
  {
    if (qword_280937310 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_280937318 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:

  sub_27411211C(v3);

  v4 = sub_2741C7D4C();
  *(v0 + 192) = v4;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_2740B5D08;
  v5 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809384E0, &qword_2741CC498);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_2740B59DC;
  *(v0 + 104) = &block_descriptor_0;
  *(v0 + 112) = v5;
  [v2 evaluatePolicy:2 options:v4 reply:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2740B5D08()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_2740B5E8C;
  }

  else
  {
    v2 = sub_2740B5E18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2740B5E18()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_2740B5E8C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  swift_willThrow();

  *(v0 + 144) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  type metadata accessor for LAError(0);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 200);
  if (v4)
  {

    v6 = *(v0 + 152);
    *(v0 + 160) = v6;
    sub_2740B6164();
    sub_2741C67DC();
    if ((*(v0 + 168) | 2) == 0xFFFFFFFFFFFFFFFELL)
    {
      v7 = 3;
    }

    else
    {
      sub_2741C856C();
      *(v0 + 80) = 0;
      *(v0 + 88) = 0xE000000000000000;
      MEMORY[0x2743E5FB0](0xD000000000000023, 0x80000002741D9A70);
      *(v0 + 176) = v6;
      sub_2741C862C();
      MEMORY[0x2743E5FB0](39, 0xE100000000000000);
      sub_2740CB218(*(v0 + 80), *(v0 + 88), 0xD000000000000015, 0x80000002741D9AA0);

      v7 = 1;
    }

    v10 = *(v0 + 184);
    *(v0 + 80) = v6;
    sub_2741C67DC();

    if (*(v0 + 160) == -5)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7;
    }
  }

  else
  {
    v8 = *(v0 + 184);

    sub_2741C856C();
    *(v0 + 80) = 0;
    *(v0 + 88) = 0xE000000000000000;
    MEMORY[0x2743E5FB0](0xD000000000000023, 0x80000002741D9A70);
    *(v0 + 144) = v5;
    sub_2741C862C();
    MEMORY[0x2743E5FB0](39, 0xE100000000000000);
    sub_2740CB218(*(v0 + 80), *(v0 + 88), 0xD000000000000015, 0x80000002741D9AA0);

    v9 = 1;
  }

  v11 = *(v0 + 8);

  return v11(v9);
}

unint64_t sub_2740B6164()
{
  result = qword_280937D40;
  if (!qword_280937D40)
  {
    type metadata accessor for LAError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937D40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LimitIPAddressTrackingConfig(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for LimitIPAddressTrackingConfig(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t *sub_2740B632C@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_2740B6364()
{
  result = qword_2809384F8;
  if (!qword_2809384F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938500, qword_2741CC520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809384F8);
  }

  return result;
}

unint64_t sub_2740B63DC()
{
  result = qword_280938508;
  if (!qword_280938508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938508);
  }

  return result;
}

unint64_t sub_2740B655C()
{
  result = qword_280938510;
  if (!qword_280938510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938510);
  }

  return result;
}

uint64_t sub_2740B65C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 76);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2740B6694(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 76);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for NetworkSettings(uint64_t a1)
{
  result = qword_280938520;
  if (!qword_280938520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2740B6790(uint64_t a1)
{
  sub_2740B6954();
  if (v1 <= 0x3F)
  {
    sub_2740B6A20(319, &qword_280938538, &type metadata for NetworkWarning, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2740B69B8(319);
      if (v3 <= 0x3F)
      {
        v4 = MEMORY[0x277D839B0];
        sub_2740B6A20(319, &qword_280938550, &type metadata for CredentialsConfig, MEMORY[0x277D83D88]);
        if (v5 <= 0x3F)
        {
          sub_2740B6A20(319, &qword_280938558, v4, MEMORY[0x277D83D88]);
          if (v6 <= 0x3F)
          {
            sub_2740B6A20(319, &qword_280938560, &type metadata for DetailsNetworkOrigin, MEMORY[0x277D83D88]);
            if (v7 <= 0x3F)
            {
              sub_2740B6A70(319);
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

unint64_t sub_2740B6954()
{
  result = qword_280938530;
  if (!qword_280938530)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280938530);
  }

  return result;
}

void sub_2740B69B8(uint64_t a1)
{
  if (!qword_280938540)
  {
    sub_2740BA268(255, &qword_280938548, 0x277D04728);
    v1 = sub_2741C839C();
    if (!v2)
    {
      atomic_store(v1, &qword_280938540);
    }
  }
}

void sub_2740B6A20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2740B6A70(uint64_t a1)
{
  if (!qword_280938568)
  {
    sub_2741C689C();
    v1 = sub_2741C839C();
    if (!v2)
    {
      atomic_store(v1, &qword_280938568);
    }
  }
}

uint64_t sub_2740B6AC8@<X0>(void *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v178 = a3;
  v191 = *MEMORY[0x277D85DE8];
  v5 = sub_2741C7CCC();
  v175 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v173 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_2741C7CFC();
  v172 = *(v174 - 8);
  MEMORY[0x28223BE20](v174, v8);
  v171 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2741C7CDC();
  v169 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v168 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v157 - v15;
  v165 = type metadata accessor for KnownNetwork(0);
  MEMORY[0x28223BE20](v165, v17);
  v164 = &v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2741C689C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v163 = &v157 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for NetworkSettings(0);
  v25 = MEMORY[0x28223BE20](v23, v24);
  v27 = &v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v27 + 5) = MEMORY[0x277D84F90];
  *(v27 + 6) = 0;
  v27[56] = 0;
  *(v27 + 48) = 257;
  v27[98] = 1;
  *(v27 + 19) = 0;
  *(v27 + 40) = 50463232;
  v28 = *(v20 + 56);
  v160 = *(v25 + 76);
  v162 = v20 + 56;
  v161 = v28;
  v28(&v27[v160], 1, 1, v19);
  v167 = v23;
  v29 = *(v23 + 80);
  sub_27409D4E4(a1, v27);
  v30 = a2[1];
  *(v27 + 104) = *a2;
  *(v27 + 120) = v30;
  v159 = a2;
  *(v27 + 129) = *(a2 + 25);
  *(v27 + 4) = xmmword_2741CC6B0;
  *(v27 + 5) = xmmword_2741CC6C0;
  *(v27 + 99) = 0;
  sub_27409D4E4(a1, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E18, &unk_2741D1A40);
  sub_2740BA268(0, &qword_280937E60, 0x277D02B58);
  v31 = swift_dynamicCast();
  v180 = v29;
  v176 = v5;
  v170 = v10;
  v179 = a1;
  v177 = v16;
  v166 = v20;
  if (v31)
  {
    v32 = v182;
    v33 = [v182 networkProfile];
    v34 = [v32 OSSpecificAttributes];
    if (v34)
    {
      v35 = v34;
      v36 = sub_2741C7D6C();

      v37 = sub_2740B83D8(v36);

      if (v37)
      {
        if (*(v37 + 16))
        {
          v38 = sub_2741251AC(0xD000000000000013, 0x80000002741D9D00);
          if (v39)
          {
            sub_27409D308(*(v37 + 56) + 32 * v38, &aBlock);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385B8, &qword_2741CD5E0);
            if (swift_dynamicCast())
            {
              v40 = v182;
            }

            else
            {
              v40 = 0;
            }

            goto LABEL_20;
          }
        }
      }
    }

    v40 = 0;
LABEL_20:
    aBlock = 0;
    v185 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000040, 0x80000002741D9B40);
    *&v182 = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385A8, &qword_2741CC728);
    v53 = sub_2741C7EBC();
    MEMORY[0x2743E5FB0](v53);

    sub_2740CB460(aBlock, v185);

    v54 = [v32 OSSpecificAttributes];
    if (v54 && (v55 = v54, v56 = sub_2741C7D6C(), v55, v57 = sub_2740B83D8(v56), , v57))
    {
      v42 = v19;
      v51 = v33;
      if (*(v57 + 16) && (v58 = sub_2741251AC(0xD000000000000018, 0x80000002741D9CE0), (v59 & 1) != 0))
      {
        sub_27409D308(*(v57 + 56) + 32 * v58, &aBlock);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385B8, &qword_2741CD5E0);
        if (swift_dynamicCast())
        {
          v50 = v182;
        }

        else
        {
          v50 = 0;
        }
      }

      else
      {

        v50 = 0;
      }
    }

    else
    {
      v50 = 0;
      v42 = v19;
      v51 = v33;
    }

    aBlock = 0;
    v185 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000045, 0x80000002741D9B90);
    *&v182 = v50;

    v60 = sub_2741C7EBC();
    MEMORY[0x2743E5FB0](v60);

    sub_2740CB460(aBlock, v185);

    goto LABEL_43;
  }

  v41 = v29;
  v42 = v19;
  sub_27409D4E4(a1, &aBlock);
  sub_2740BA268(0, &qword_280937E20, 0x277D02B38);
  if (swift_dynamicCast())
  {
    v158 = v19;
    v43 = v182;
    v44 = [v43 OSSpecificAttributes];
    if (v44)
    {
      v45 = v44;
      v46 = sub_2741C7D6C();

      v47 = sub_2740B83D8(v46);

      if (v47)
      {
        if (*(v47 + 16))
        {
          v48 = sub_2741251AC(0xD000000000000013, 0x80000002741D9D00);
          if (v49)
          {
            sub_27409D308(*(v47 + 56) + 32 * v48, &aBlock);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385B8, &qword_2741CD5E0);
            if (swift_dynamicCast())
            {
              v40 = v182;
            }

            else
            {
              v40 = 0;
            }

            goto LABEL_32;
          }
        }
      }
    }

    v40 = 0;
LABEL_32:
    aBlock = 0;
    v185 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000040, 0x80000002741D9B40);
    *&v182 = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385A8, &qword_2741CC728);
    v61 = sub_2741C7EBC();
    MEMORY[0x2743E5FB0](v61);

    sub_2740CB460(aBlock, v185);

    v62 = [v43 OSSpecificAttributes];

    if (v62)
    {
      v63 = sub_2741C7D6C();

      v64 = sub_2740B83D8(v63);

      if (v64)
      {
        v65 = v158;
        if (*(v64 + 16) && (v66 = sub_2741251AC(0xD000000000000018, 0x80000002741D9CE0), (v67 & 1) != 0))
        {
          sub_27409D308(*(v64 + 56) + 32 * v66, &aBlock);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385B8, &qword_2741CD5E0);
          if (swift_dynamicCast())
          {
            v50 = v182;
          }

          else
          {
            v50 = 0;
          }
        }

        else
        {

          v50 = 0;
        }
      }

      else
      {
        v50 = 0;
        v65 = v158;
      }
    }

    else
    {
      v50 = 0;
      v65 = v158;
    }

    aBlock = 0;
    v185 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000045, 0x80000002741D9B90);
    *&v182 = v50;

    v68 = sub_2741C7EBC();
    MEMORY[0x2743E5FB0](v68);

    sub_2740CB460(aBlock, v185);
    v51 = v43;
    v42 = v65;
LABEL_43:

    v52 = v180;
    *&v27[v180] = 0x8000;
    if (v40)
    {
      if (*(v40 + 16))
      {
        v69 = sub_2741251AC(0xD000000000000019, 0x80000002741D9BE0);
        if (v70)
        {
          sub_27409D308(*(v40 + 56) + 32 * v69, &aBlock);
          sub_2740BA268(0, &qword_2809385B0, 0x277CBEA90);
          if (swift_dynamicCast())
          {
            v190 = *(v159 + 8);
            v158 = v42;
            v71 = v182;
            v72 = sub_2740B86B4(v182);
            v74 = v73;

            sub_27409D420(&v190, &qword_280938580, &qword_2741CD4E0);
            *(v27 + 14) = v72;
            *(v27 + 15) = v74;
            aBlock = 0;
            v185 = 0xE000000000000000;
            sub_2741C856C();

            aBlock = 0xD00000000000002DLL;
            v185 = 0x80000002741D9C80;
            v75 = v71;
            v159 = v50;
            v76 = v75;
            v77 = [v75 description];
            v78 = sub_2741C7E7C();
            v80 = v79;

            v81 = v78;
            v42 = v158;
            MEMORY[0x2743E5FB0](v81, v80);

            sub_2740CB460(aBlock, v185);

            aBlock = 0;
            v185 = 0xE000000000000000;
            sub_2741C856C();

            aBlock = 0xD00000000000002DLL;
            v185 = 0x80000002741D9CB0;
            *&v182 = v72;
            *(&v182 + 1) = v74;
            v52 = v180;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938580, &qword_2741CD4E0);
            v82 = sub_2741C7EBC();
            MEMORY[0x2743E5FB0](v82);

            sub_2740CB460(aBlock, v185);

            v50 = v159;
          }
        }
      }

      if (!*(v40 + 16))
      {
        goto LABEL_55;
      }

      v83 = sub_2741251AC(0xD000000000000018, 0x80000002741D9C00);
      if ((v84 & 1) == 0)
      {
        goto LABEL_55;
      }

      sub_27409D308(*(v40 + 56) + 32 * v83, &aBlock);

      sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v85 = v182;
        v86 = sub_2740CD860([v182 integerValue]);
        if (v86 == 4)
        {
          v87 = 0;
        }

        else
        {
          v87 = v86;
        }

        LODWORD(v159) = v87;
        v27[104] = v87;
        aBlock = 0;
        v185 = 0xE000000000000000;
        sub_2741C856C();

        aBlock = 0xD00000000000002CLL;
        v185 = 0x80000002741D9C20;
        v88 = v85;
        v89 = [v88 description];
        v90 = sub_2741C7E7C();
        v91 = v42;
        v93 = v92;

        MEMORY[0x2743E5FB0](v90, v93);
        v42 = v91;

        sub_2740CB460(aBlock, v185);

        aBlock = 0;
        v185 = 0xE000000000000000;
        sub_2741C856C();

        aBlock = 0xD000000000000020;
        v185 = 0x80000002741D9C50;
        LOBYTE(v182) = v159;
        v94 = sub_2741C7EBC();
        MEMORY[0x2743E5FB0](v94);

        sub_2740CB460(aBlock, v185);

LABEL_55:
      }
    }

    a1 = v179;
    goto LABEL_57;
  }

  v50 = 0;
  v51 = 0;
  v52 = v41;
  *&v27[v41] = 0x8000;
LABEL_57:
  v95 = v177;
  type metadata accessor for WiFiDiagnoser();
  swift_initStackObject();
  v96 = sub_2740F2E14();
  swift_beginAccess();
  v97 = *(v96 + 16);

  v98 = *(v97 + 16) + 1;
  v99 = 32;
  do
  {
    if (!--v98)
    {

      v101 = 0x8000;
      if (v51)
      {
        goto LABEL_69;
      }

      goto LABEL_65;
    }

    v100 = *(v97 + v99);
    if (v100 == 4)
    {

      v101 = 32800;
      *&v27[v52] = 32800;
      if (!v51)
      {
        goto LABEL_65;
      }

      goto LABEL_69;
    }

    if (v100 == 3)
    {

      v101 = 32784;
      *&v27[v52] = 32784;
      if (v51)
      {
        goto LABEL_69;
      }

LABEL_65:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);

      v102 = v178;
      goto LABEL_127;
    }

    v99 += 2;
  }

  while (v100 != 2);

  v101 = 32776;
  *&v27[v52] = 32776;
  if (!v51)
  {
    goto LABEL_65;
  }

LABEL_69:
  v103 = v51;
  v104 = v164;
  sub_274117670(v103, v164);
  sub_2740BA11C(v104 + *(v165 + 64), v95);
  sub_2740BA0BC(v104, type metadata accessor for KnownNetwork);
  v105 = v166;
  v106 = (*(v166 + 48))(v95, 1, v42);
  v165 = v103;
  if (v106 == 1)
  {
    v107 = v52;
    sub_27409D420(v95, &qword_280938518, &unk_2741D2090);
  }

  else
  {
    v108 = *(v105 + 32);
    v109 = v50;
    v110 = v163;
    v108(v163, v95, v42);
    v101 |= 4uLL;
    v111 = v42;
    v107 = v52;
    *&v27[v52] = v101;
    v112 = v160;
    sub_27409D420(&v27[v160], &qword_280938518, &unk_2741D2090);
    v113 = v110;
    v50 = v109;
    v103 = v165;
    v108(&v27[v112], v113, v111);
    v161(&v27[v112], 0, 1, v111);
  }

  v114 = sub_2740D3E48();
  v115 = v170;
  if (v114 != 1)
  {
    v101 |= 0x2000uLL;
    *&v27[v107] = v101;
  }

  if ([v103 lowDataMode] == 1)
  {
    v116 = 1;
  }

  else if ([v103 isPersonalHotspot])
  {
    v116 = [v103 lowDataMode] == 0;
  }

  else
  {
    v116 = 0;
  }

  v27[56] = v116;
  v27[96] = [v103 isAutoJoinDisabled] ^ 1;
  if (([v103 isPersonalHotspot] & 1) == 0 && (v101 & 0x200) == 0)
  {
    v101 |= 0x200uLL;
    *&v27[v107] = v101;
  }

  if ([v103 isCaptive])
  {
    v27[98] = [v103 bypassCaptive] ^ 1;
    if ([v103 isCaptive])
    {
      if ([v103 addReason] != 10 && (v101 & 0x400) == 0)
      {
        v101 |= 0x400uLL;
        *&v27[v107] = v101;
      }
    }
  }

  if (v50)
  {
    if (*(v50 + 2) && (v117 = sub_2741251AC(0xD00000000000001ALL, 0x80000002741D9B20), (v118 & 1) != 0))
    {
      sub_27409D308(*(v50 + 7) + 32 * v117, &aBlock);

      if (swift_dynamicCast())
      {
        v119 = v182;
        goto LABEL_94;
      }
    }

    else
    {
    }
  }

  v119 = 0;
LABEL_94:
  v120 = [objc_opt_self() sharedInstance];
  if (v120)
  {
    v121 = v120;
    v122 = [v120 isStoreDemoModeEnabled_];
  }

  else
  {
    v122 = 0;
  }

  if (([v103 isProfileBased] & 1) == 0 && !((objc_msgSend(v103, sel_addReason) == 11) | v119 & 1) && ((objc_msgSend(v103, sel_isOpen) | v122) & 1) == 0 && objc_msgSend(v103, sel_addReason) != 10)
  {
    if (![v103 isEAP])
    {
LABEL_113:
      if ((v101 & 0x1000) == 0)
      {
        *&v27[v107] = v101 | 0x1000;
      }

      if (*(v27 + 9))
      {
        if (qword_280937B98 != -1)
        {
          swift_once();
        }

        v130 = *(qword_280946F10 + 16);
        aBlock = 0;
        v131 = [v130 passwordForKnownNetworkProfile:v103 error:&aBlock];
        v132 = aBlock;
        if (v131)
        {
          v133 = v131;
          v134 = sub_2741C7E7C();
          v136 = v135;
          v137 = v132;

          *(v27 + 10) = v134;
          *(v27 + 11) = v136;
        }

        else
        {
          v138 = aBlock;
          v139 = sub_2741C681C();

          swift_willThrow();
          sub_2740CB218(0xD00000000000002ALL, 0x80000002741D9AC0, 0xD000000000000026, 0x80000002741D9AF0);
        }
      }

      goto LABEL_121;
    }

    v123 = [v103 EAPProfile];
    if (v123)
    {
      v124 = v123;
      v125 = sub_2741C7D6C();

      v181[0] = 0x656D614E72657355;
      v181[1] = 0xE800000000000000;
      sub_2741C850C();
      if (*(v125 + 16))
      {
        v126 = sub_274125164(&aBlock);
        if (v127)
        {
          sub_27409D308(*(v125 + 56) + 32 * v126, &v182);
          sub_27409D2A4(&aBlock);

          if (*(&v183 + 1))
          {
            if (swift_dynamicCast())
            {
              v128 = aBlock;
              v129 = v185;
              if ((v101 & 0x800) == 0)
              {
                v101 |= 0x800uLL;
                *&v27[v107] = v101;
              }

              *(v27 + 8) = v128;
              *(v27 + 9) = v129;
            }

            goto LABEL_113;
          }

          goto LABEL_112;
        }
      }

      sub_27409D2A4(&aBlock);
    }

    v182 = 0u;
    v183 = 0u;
LABEL_112:
    sub_27409D420(&v182, &qword_280937E28, &unk_2741CB3D0);
    goto LABEL_113;
  }

LABEL_121:
  v140 = swift_allocBox();
  v142 = v141;
  sub_2740BA058(v27, v141);
  sub_2740BA268(0, &qword_280938588, 0x277D85C78);
  v143 = v169;
  v144 = v168;
  (*(v169 + 104))(v168, *MEMORY[0x277D851C8], v115);
  v145 = sub_2741C82EC();
  (*(v143 + 8))(v144, v115);
  v188 = sub_2740BA18C;
  v189 = v140;
  aBlock = MEMORY[0x277D85DD0];
  v185 = 1107296256;
  v186 = sub_2740B96AC;
  v187 = &block_descriptor_1;
  v146 = _Block_copy(&aBlock);

  v147 = v171;
  sub_2741C7CEC();
  *&v182 = MEMORY[0x277D84F90];
  sub_2740BA1AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938598, &unk_2741D0A90);
  sub_2740BA204();
  v148 = v173;
  v149 = v176;
  sub_2741C83FC();
  MEMORY[0x2743E6360](0, v147, v148, v146);
  _Block_release(v146);

  v150 = v165;
  v151 = v180;
  (*(v175 + 8))(v148, v149);
  (*(v172 + 8))(v147, v174);

  swift_beginAccess();
  sub_2740BA0BC(v27, type metadata accessor for NetworkSettings);
  sub_2740BA058(v142, v27);
  if (v27[100])
  {
    v27[99] = [v150 isPrivacyProxyEnabled];
    v152 = *&v27[v151];
    if ((v152 & 0x10000) == 0)
    {
      *&v27[v151] = v152 | 0x10000;
    }
  }

  v27[160] = sub_2740D3C7C() & 1;
  v153 = [v150 disable6EMode];
  v102 = v178;
  v154 = v179;
  if (v153)
  {
    v155 = [v150 disable6EMode];

    __swift_destroy_boxed_opaque_existential_1Tm(v154);

    *(v27 + 19) = v155;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v179);

    *(v27 + 19) = 1;
  }

LABEL_127:
  sub_2740BA058(v27, v102);
  return sub_2740BA0BC(v27, type metadata accessor for NetworkSettings);
}

unint64_t sub_2740B83D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385C0, &qword_2741D11C0);
    v2 = sub_2741C867C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_2740BA2B0(*(a1 + 48) + 40 * v12, v27);
        sub_27409D308(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_2740BA2B0(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_27409D308(v25 + 8, v20);
        sub_27409D420(v24, &qword_2809385C8, &qword_2741CC730);
        v21 = v18;
        sub_27409D2F8(v20, v22);
        v13 = v21;
        sub_27409D2F8(v22, v23);
        sub_27409D2F8(v23, &v21);
        result = sub_2741251AC(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1Tm(v10);
          result = sub_27409D2F8(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_27409D2F8(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_27409D420(v24, &qword_2809385C8, &qword_2741CC730);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2740B86B4(void *a1)
{
  v1 = [a1 bytes];
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385D0, qword_2741D1970);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2741CC6D0;
  v9 = MEMORY[0x277D84B78];
  v10 = MEMORY[0x277D84BC0];
  *(v8 + 56) = MEMORY[0x277D84B78];
  *(v8 + 64) = v10;
  *(v8 + 32) = v2;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 72) = v3;
  *(v8 + 136) = v9;
  *(v8 + 144) = v10;
  *(v8 + 112) = v4;
  *(v8 + 176) = v9;
  *(v8 + 184) = v10;
  *(v8 + 152) = v5;
  *(v8 + 216) = v9;
  *(v8 + 224) = v10;
  *(v8 + 192) = v6;
  *(v8 + 256) = v9;
  *(v8 + 264) = v10;
  *(v8 + 232) = v7;
  sub_2741C7E8C();
  v11 = sub_2741C7EDC();

  return v11;
}

uint64_t sub_2740B87BC(uint64_t a1)
{
  v70 = a1;
  v1 = sub_2741C7CCC();
  v76 = *(v1 - 8);
  v77 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v74 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_2741C7CFC();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v4);
  v72 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_2741C7D1C();
  v6 = *(v78 - 8);
  v8 = MEMORY[0x28223BE20](v78, v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v55 - v12;
  v14 = sub_2741C7CDC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v67 = (v19 + 16);
  v20 = dispatch_semaphore_create(0);
  v21 = objc_opt_self();
  v22 = sub_2740BA268(0, &qword_280938588, 0x277D85C78);
  v23 = *(v15 + 104);
  v58 = *MEMORY[0x277D851C0];
  v59 = v15 + 104;
  v57 = v23;
  v23(v18);
  v68 = v22;
  v24 = sub_2741C82EC();
  v25 = *(v15 + 8);
  v60 = v18;
  v62 = v14;
  v61 = v15 + 8;
  v56 = v25;
  v25(v18, v14);
  v26 = swift_allocObject();
  *(v26 + 16) = v19;
  *(v26 + 24) = v20;
  v83 = sub_2740BA320;
  v84 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v80 = 1107296256;
  v81 = sub_2740B9384;
  v82 = &block_descriptor_7;
  v27 = _Block_copy(&aBlock);
  v71 = v19;

  v28 = v20;

  v63 = v21;
  [v21 getStatus:v24 completionHandler:v27];
  _Block_release(v27);

  sub_2741C7D0C();
  sub_2741C7D2C();
  v29 = *(v6 + 8);
  v64 = v10;
  v30 = v78;
  v29(v10, v78);
  sub_2741C831C();
  v65 = v13;
  v66 = v6 + 8;
  v29(v13, v30);
  if (sub_2741C7CBC())
  {
    aBlock = 0;
    v80 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000026, 0x80000002741D9AF0);
    v31 = "g feature is disabled";
    v32 = 0xD000000000000033;
  }

  else
  {
    aBlock = 0;
    v80 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000026, 0x80000002741D9AF0);
    v31 = "v20@?0B8@NSError12";
    v32 = 0xD00000000000003BLL;
  }

  MEMORY[0x2743E5FB0](v32, v31 | 0x8000000000000000);
  sub_2740CB460(aBlock, v80);

  v33 = v67;
  swift_beginAccess();
  v34 = *v33;
  v69 = v28;
  if (v34)
  {
    v35 = v60;
    v36 = v62;
    v57(v60, v58, v62);
    v37 = sub_2741C82EC();
    v56(v35, v36);
    v38 = swift_allocObject();
    v39 = v71;
    *(v38 + 16) = v71;
    *(v38 + 24) = v28;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_2740BA368;
    *(v40 + 24) = v38;
    v83 = sub_2740BA3A8;
    v84 = v40;
    aBlock = MEMORY[0x277D85DD0];
    v80 = 1107296256;
    v81 = sub_2740B95B0;
    v82 = &block_descriptor_16;
    v41 = _Block_copy(&aBlock);

    v28;

    [v63 getUserTier:v37 completionHandler:v41];
    _Block_release(v41);

    v42 = v64;
    sub_2741C7D0C();
    v43 = v65;
    sub_2741C7D2C();
    v44 = v78;
    v29(v42, v78);
    sub_2741C831C();
    v29(v43, v44);
    v45 = sub_2741C7CBC();
    v46 = v74;
    aBlock = 0;
    v80 = 0xE000000000000000;
    if (v45)
    {
      sub_2741C856C();
      MEMORY[0x2743E5FB0](0xD000000000000026, 0x80000002741D9AF0);
      v47 = " IP address tracking user tier";
      v48 = 0xD000000000000036;
    }

    else
    {
      sub_2741C856C();
      MEMORY[0x2743E5FB0](0xD000000000000026, 0x80000002741D9AF0);
      v47 = "v24@?0Q8@NSError16";
      v48 = 0xD00000000000003ELL;
    }

    MEMORY[0x2743E5FB0](v48, v47 | 0x8000000000000000);
    sub_2740CB460(aBlock, v80);
    v52 = v77;
    v51 = v72;

    v49 = sub_2741C82CC();
    v53 = swift_allocObject();
    *(v53 + 16) = v70;
    *(v53 + 24) = v39;
    v83 = sub_2740BA410;
    v84 = v53;
    aBlock = MEMORY[0x277D85DD0];
    v80 = 1107296256;
    v81 = sub_2740B96AC;
    v82 = &block_descriptor_22_0;
    v50 = _Block_copy(&aBlock);

    sub_2741C7CEC();
    aBlock = MEMORY[0x277D84F90];
    sub_2740BA1AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938598, &unk_2741D0A90);
    sub_2740BA204();
    sub_2741C83FC();
    MEMORY[0x2743E6360](0, v51, v46, v50);
  }

  else
  {
    sub_2740CB460(0xD000000000000055, 0x80000002741D9E40);
    v49 = sub_2741C82CC();
    v83 = sub_2740BA418;
    v84 = v70;
    aBlock = MEMORY[0x277D85DD0];
    v80 = 1107296256;
    v81 = sub_2740B96AC;
    v82 = &block_descriptor_25_0;
    v50 = _Block_copy(&aBlock);

    v51 = v72;
    sub_2741C7CEC();
    aBlock = MEMORY[0x277D84F90];
    sub_2740BA1AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938598, &unk_2741D0A90);
    sub_2740BA204();
    v46 = v74;
    v52 = v77;
    sub_2741C83FC();
    MEMORY[0x2743E6360](0, v51, v46, v50);
  }

  _Block_release(v50);

  (*(v76 + 8))(v46, v52);
  (*(v73 + 8))(v51, v75);
}

uint64_t sub_2740B9238(char a1, void *a2, uint64_t a3)
{
  sub_2741C856C();

  if (a1)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (a1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v6, v7);

  MEMORY[0x2743E5FB0](0x3D726F7272652820, 0xE800000000000000);
  v8 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809385D8, qword_2741CC738);
  v9 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v9);

  sub_2740CB460(0xD000000000000049, 0x80000002741D9F10);

  swift_beginAccess();
  *(a3 + 16) = a1 & 1;
  return sub_2741C832C();
}

void sub_2740B9384(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_2740B93FC(uint64_t a1)
{
  type metadata accessor for NetworkSettings(0);
  v1 = swift_projectBox();
  result = swift_beginAccess();
  *(v1 + 100) = 0;
  return result;
}

uint64_t sub_2740B944C(void *a1, void *a2, uint64_t a3)
{
  if (a1 == 2 || a1 == 1)
  {
    swift_beginAccess();
    *(a3 + 16) = a1;
  }

  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000026, 0x80000002741D9AF0);
  MEMORY[0x2743E5FB0](0xD000000000000026, 0x80000002741D9EE0);
  type metadata accessor for NSPPrivacyProxyUserTier(0);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](0x3D726F7272652820, 0xE800000000000000);
  v6 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809385D8, qword_2741CC738);
  v7 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v7);

  sub_2740CB460(0, 0xE000000000000000);

  return sub_2741C832C();
}

void sub_2740B95B0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, v6);
}

uint64_t sub_2740B9628(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NetworkSettings(0);
  v3 = swift_projectBox();
  swift_beginAccess();
  v4 = *(a2 + 16);
  if (v4 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4 == 1;
  }

  result = swift_beginAccess();
  *(v3 + 100) = v5;
  return result;
}

uint64_t sub_2740B96AC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

char *sub_2740B96F0(uint64_t a1)
{
  v2 = sub_2741C6AFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v69 - v9;
  v11 = type metadata accessor for KnownNetwork(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27409D4E4(a1, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938578, &unk_2741D0FF0);
  v16 = swift_dynamicCast();
  v17 = *(v12 + 56);
  if (v16)
  {
    v17(v10, 0, 1, v11);
    sub_27409D240(v10, v15);
    v18 = sub_27411799C();
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      v71 = v15;
      v22 = [objc_allocWithZone(MEMORY[0x277D04780]) init];
      v23 = objc_opt_self();
      v70 = v22;
      v24 = [v23 getDevicesWithFlags:8 session:v22 error:0];
      v25 = sub_2740BA268(0, &qword_280938548, 0x277D04728);
      v26 = sub_2741C7FEC();

      v83[0] = 0;
      v83[1] = 0xE000000000000000;
      sub_2741C856C();

      v83[0] = 0x2073656369766544;
      v83[1] = 0xEF203A646E756F66;
      v27 = MEMORY[0x2743E6080](v26, v25);
      MEMORY[0x2743E5FB0](v27);

      sub_2740CB460(v83[0], v83[1]);

      if (v26 >> 62)
      {
        goto LABEL_30;
      }

      for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2741C848C())
      {
        v30 = 0;
        v79 = v26 & 0xC000000000000001;
        v72 = v26 & 0xFFFFFFFFFFFFFF8;
        v76 = (v3 + 8);
        v77 = (v3 + 16);
        *&v28 = 136315138;
        v73 = v28;
        v78 = v26;
        v74 = v20;
        v75 = i;
        while (1)
        {
          if (v79)
          {
            v32 = MEMORY[0x2743E6600](v30, v26);
          }

          else
          {
            if (v30 >= *(v72 + 16))
            {
              goto LABEL_29;
            }

            v32 = *(v26 + 8 * v30 + 32);
          }

          v3 = v32;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          v80 = v30 + 1;
          v83[0] = 0;
          v83[1] = 0xE000000000000000;
          sub_2741C856C();

          strcpy(v83, "Device=");
          v83[1] = 0xE700000000000000;
          v33 = [v3 description];
          v34 = sub_2741C7E7C();
          v36 = v35;

          MEMORY[0x2743E5FB0](v34, v36);

          MEMORY[0x2743E5FB0](0x3D4449535320, 0xE600000000000000);
          v37 = [v3 SSID];
          if (v37)
          {
            v38 = v37;
            v39 = sub_2741C7E7C();
            v41 = v40;
          }

          else
          {
            v39 = 0;
            v41 = 0;
          }

          v81 = v39;
          v82 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938580, &qword_2741CD4E0);
          v42 = sub_2741C7EBC();
          MEMORY[0x2743E5FB0](v42);

          v44 = v83[0];
          v43 = v83[1];
          if (qword_280937360 != -1)
          {
            swift_once();
          }

          v45 = __swift_project_value_buffer(v2, qword_280945DD8);
          (*v77)(v6, v45, v2);

          v46 = sub_2741C6ADC();
          v47 = sub_2741C827C();

          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            v50 = v44;
            v51 = v3;
            v52 = v21;
            v53 = v6;
            v54 = v2;
            v55 = v49;
            v83[0] = v49;
            *v48 = v73;
            *(v48 + 4) = sub_2740CABF8(v50, v43, v83);
            _os_log_impl(&dword_274093000, v46, v47, "%s", v48, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v55);
            v56 = v55;
            v2 = v54;
            v6 = v53;
            v21 = v52;
            v3 = v51;
            MEMORY[0x2743E7790](v56, -1, -1);
            v57 = v48;
            v20 = v74;
            MEMORY[0x2743E7790](v57, -1, -1);
          }

          (*v76)(v6, v2);

          v26 = v78;
          v58 = [v3 identifier];
          if (v58)
          {
            v59 = v58;
            v60 = sub_2741C7E7C();
            v62 = v61;

            if (v60 == v20 && v21 == v62)
            {

LABEL_27:

              v83[0] = 0;
              v83[1] = 0xE000000000000000;
              sub_2741C856C();

              strcpy(v83, "Device found: ");
              HIBYTE(v83[1]) = -18;
              v64 = [v3 description];
              v65 = sub_2741C7E7C();
              v67 = v66;

              MEMORY[0x2743E5FB0](v65, v67);

              sub_2740CB460(v83[0], v83[1]);

              sub_2740BA0BC(v71, type metadata accessor for KnownNetwork);
              return v3;
            }

            v31 = sub_2741C86DC();

            if (v31)
            {

              goto LABEL_27;
            }
          }

          ++v30;
          if (v80 == v75)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        ;
      }

LABEL_31:

      v63 = v71;
    }

    else
    {
      v63 = v15;
    }

    sub_2740BA0BC(v63, type metadata accessor for KnownNetwork);
  }

  else
  {
    v17(v10, 1, 1, v11);
    sub_27409D420(v10, &qword_280938570, &qword_2741D1630);
  }

  return 0;
}

BOOL sub_2740B9F04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96) ^ *(a2 + 96);
  v3 = *(a1 + 56) ^ *(a2 + 56);
  v4 = *(a1 + 99) ^ *(a2 + 99);
  if (*(a1 + 104) != *(a2 + 104))
  {
    return 0;
  }

  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = *(a1 + 136);
  v8 = *(a1 + 144);
  v9 = *(a2 + 120);
  v10 = *(a2 + 128);
  v11 = *(a2 + 136);
  v12 = *(a2 + 144);
  if (v5)
  {
    if (!v9 || (*(a1 + 112) != *(a2 + 112) || v5 != v9) && (sub_2741C86DC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v7)
  {
    if (!v11 || (v6 != v10 || v7 != v11) && (sub_2741C86DC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  result = v8 == v12;
  if ((v2 | v3 | v4))
  {
    return 0;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2740BA058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkSettings(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740BA0BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2740BA11C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2740BA1AC()
{
  result = qword_280938590;
  if (!qword_280938590)
  {
    sub_2741C7CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938590);
  }

  return result;
}

unint64_t sub_2740BA204()
{
  result = qword_2809385A0;
  if (!qword_2809385A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938598, &unk_2741D0A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809385A0);
  }

  return result;
}

uint64_t sub_2740BA268(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t objectdestroy_3Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2740BA370()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2740BA3D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_2740BA4FC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HotspotReceiver();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2740BA558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = MEMORY[0x277D84F90];
    v3 = a1 + 32;
    do
    {
      sub_27409D308(v3, v17);
      sub_27409D308(v17, v16);
      v4 = sub_2740BA76C();
      if (swift_dynamicCast())
      {
        v14 = v4;
        v15 = &off_28832A610;
        *&v13 = v12;
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        sub_27409D118(&v13, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_2741771D0(0, v2[2] + 1, 1, v2);
        }

        v6 = v2[2];
        v5 = v2[3];
        if (v6 >= v5 >> 1)
        {
          v2 = sub_2741771D0((v5 > 1), v6 + 1, 1, v2);
        }

        v2[2] = v6 + 1;
        sub_27409D118(v16, &v2[5 * v6 + 4]);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
      }

      v3 += 32;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  *&v16[0] = 0;
  *(&v16[0] + 1) = 0xE000000000000000;
  sub_2741C856C();

  *&v16[0] = 0xD000000000000015;
  *(&v16[0] + 1) = 0x80000002741D9F90;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809385F0, &unk_2741CF560);
  v8 = MEMORY[0x2743E6080](v2, v7);
  MEMORY[0x2743E5FB0](v8);

  sub_2740CB460(*&v16[0], *(&v16[0] + 1));

  v9 = off_280945D88;
  if (off_280945D88)
  {
    v10 = qword_280945D90;

    v9(v2);
    sub_2740BA7B8(v9, v10);
  }
}

unint64_t sub_2740BA76C()
{
  result = qword_2809385E8;
  if (!qword_2809385E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809385E8);
  }

  return result;
}

uint64_t sub_2740BA7B8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2740BA7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938660, &unk_2741CC790);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2740BA928(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938660, &unk_2741CC790);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for ConfigureDNSView(uint64_t a1)
{
  result = qword_280938668;
  if (!qword_280938668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2740BAA98(uint64_t a1)
{
  sub_2740BAD2C(319, &qword_280938678, &qword_280938680, &qword_2741D5140, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2740BAC78(319, &qword_280937EA8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_2740BAC78(319, &qword_280938688, type metadata accessor for NetworkDetailsModel, MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_2740BACDC();
        if (v4 <= 0x3F)
        {
          sub_2740BAD2C(319, &qword_280938698, &qword_2809386A0, &unk_2741CC7C0, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_2740BAD2C(319, &qword_2809386A8, &qword_2809386B0, &qword_2741D3BD0, MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_2740BAD90(319);
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

void sub_2740BAC78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2740BACDC()
{
  if (!qword_280938690)
  {
    v0 = sub_2741C7A6C();
    if (!v1)
    {
      atomic_store(v0, &qword_280938690);
    }
  }
}

void sub_2740BAD2C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_2740BAD90(uint64_t a1)
{
  if (!qword_2809386B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809386C0, &qword_2741CC7D0);
    sub_2740BAE00();
    v1 = sub_2741C6CBC();
    if (!v2)
    {
      atomic_store(v1, &qword_2809386B8);
    }
  }
}

unint64_t sub_2740BAE00()
{
  result = qword_2809386C8;
  if (!qword_2809386C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809386C0, &qword_2741CC7D0);
    sub_2740BAE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809386C8);
  }

  return result;
}

unint64_t sub_2740BAE84()
{
  result = qword_2809386D0;
  if (!qword_2809386D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809386D0);
  }

  return result;
}

uint64_t sub_2740BAED8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2741C70AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v15 - v11;
  sub_2740A6D94(v2, &v15 - v11, &qword_280938708, &qword_2741CC8B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2740C12C4(v12, a1);
  }

  sub_2741C82AC();
  v14 = sub_2741C74FC();
  sub_2741C6ACC();

  sub_2741C709C();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2740BB0A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2741C70AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for ConfigureDNSView(0);
  sub_2740A6D94(v1 + *(v12 + 20), v11, &qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2741C6DBC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_2741C82AC();
    v15 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2740BB2CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = type metadata accessor for ConfigureDNSView(0);
  v4 = v3 - 8;
  v39 = *(v3 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809386E0, &qword_2741CC890);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809386E8, &qword_2741CC898);
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809386F0, &qword_2741CC8A0);
  v43 = *(v15 - 8);
  v44 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v42 = &v38 - v17;
  v46 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809386F8, &qword_2741CC8A8);
  sub_2740A6D24(&qword_280938700, &qword_2809386F8, &qword_2741CC8A8, MEMORY[0x277CE14C0]);
  sub_2741C761C();
  sub_2740C08EC(v2, &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v19 = swift_allocObject();
  sub_2740C0954(&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v20 = &v10[*(v7 + 36)];
  *v20 = sub_2740C09B8;
  v20[1] = v19;
  v20[2] = 0;
  v20[3] = 0;
  v21 = v2 + *(v4 + 36);
  v22 = *v21;
  v23 = *(v21 + 8);
  LOBYTE(v47) = v22;
  v48 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938718, &qword_2741CC8B8);
  sub_2741C7A3C();
  LOBYTE(v47) = v51;
  sub_2740C08EC(v2, &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = swift_allocObject();
  sub_2740C0954(&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v18);
  v25 = sub_2740C0A5C();
  v26 = sub_2740C0B14();
  sub_2741C78DC();

  sub_27409D420(v10, &qword_2809386E0, &qword_2741CC890);
  if (qword_280937810 != -1)
  {
    swift_once();
  }

  v51 = qword_280946768;
  v52 = unk_280946770;
  v47 = v7;
  v48 = &type metadata for DNSConfigMode;
  v49 = v25;
  v50 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_2740A6A74();
  v29 = MEMORY[0x277D837D0];
  v31 = v41;
  v30 = v42;
  sub_2741C777C();
  v32 = (*(v40 + 8))(v14, v31);
  MEMORY[0x28223BE20](v32, v33);
  *(&v38 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938740, &unk_2741D64C0);
  v47 = v31;
  v48 = v29;
  v49 = OpaqueTypeConformance2;
  v50 = v28;
  swift_getOpaqueTypeConformance2();
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938748, &unk_2741CC8D0);
  v35 = sub_2740A6D24(&qword_280938750, &qword_280938748, &unk_2741CC8D0, MEMORY[0x277CDD7A8]);
  v47 = v34;
  v48 = v35;
  swift_getOpaqueTypeConformance2();
  v36 = v44;
  sub_2741C78BC();
  return (*(v43 + 8))(v30, v36);
}

uint64_t sub_2740BB87C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938788, &qword_2741CC970);
  v61 = *(v3 - 8);
  v62 = v3;
  v5 = MEMORY[0x28223BE20](v3, v4);
  v68 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v67 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938790, &qword_2741CC978);
  v60 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v69 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v54 - v14;
  v16 = type metadata accessor for ConfigureDNSView(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8, v19);
  v20 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938798, &unk_2741CC980);
  v65 = *(v21 - 8);
  v66 = v21;
  v23 = MEMORY[0x28223BE20](v21, v22);
  v64 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v54 - v26;
  KeyPath = swift_getKeyPath();
  sub_2740C08EC(a1, v20);
  v29 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v30 = swift_allocObject();
  sub_2740C0954(v20, v30 + v29);
  v74 = &unk_288326088;
  v70 = &v74;
  v71 = KeyPath;
  v72 = sub_2740C0BEC;
  v73 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809387A0, &qword_2741CC9A8);
  sub_2740C0E88();
  v31 = v27;
  sub_2741C762C();

  if (qword_2809378C8 != -1)
  {
    swift_once();
  }

  v74 = qword_2809468D8;
  v75 = unk_2809468E0;
  sub_2740A6A74();

  v74 = sub_2741C76AC();
  v75 = v32;
  v76 = v33 & 1;
  v77 = v34;
  MEMORY[0x28223BE20](v74, v32);
  *(&v54 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809387C0, &qword_2741CC9B8);
  sub_2740A6D24(&qword_2809387C8, &qword_2809387C0, &qword_2741CC9B8, MEMORY[0x277CE14C0]);
  sub_2741C7B7C();
  if (qword_2809378D0 != -1)
  {
    swift_once();
  }

  v74 = qword_2809468E8;
  v75 = unk_2809468F0;

  v74 = sub_2741C76AC();
  v75 = v35;
  v76 = v36 & 1;
  v77 = v37;
  MEMORY[0x28223BE20](v74, v35);
  *(&v54 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809387D0, &qword_2741CC9C0);
  sub_2740A6D24(&qword_2809387D8, &qword_2809387D0, &qword_2741CC9C0, MEMORY[0x277CE14C0]);
  v38 = v67;
  sub_2741C7B7C();
  v55 = *(v65 + 16);
  v39 = v64;
  v59 = v31;
  v40 = v66;
  v55(v64, v31, v66);
  v41 = v60;
  v57 = *(v60 + 16);
  v58 = v15;
  v42 = v9;
  v57(v69, v15, v9);
  v43 = v61;
  v56 = *(v61 + 16);
  v44 = v38;
  v45 = v62;
  v56(v68, v44, v62);
  v46 = v63;
  v55(v63, v39, v40);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809387E0, &qword_2741CC9C8);
  v57(&v46[*(v47 + 48)], v69, v42);
  v48 = v68;
  v56(&v46[*(v47 + 64)], v68, v45);
  v49 = *(v43 + 8);
  v49(v67, v45);
  v50 = *(v41 + 8);
  v50(v58, v42);
  v51 = v66;
  v52 = *(v65 + 8);
  v52(v59, v66);
  v49(v48, v45);
  v50(v69, v42);
  return (v52)(v64, v51);
}

uint64_t sub_2740BBFFC(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfigureDNSView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v8 = *a1;
  sub_2740C08EC(a2, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_2740C0954(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  *(v10 + v9 + v6) = v8;
  v12[16] = v8;
  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938948, &unk_2741CEA30);
  sub_2740A6D24(&qword_280938950, &qword_280938948, &unk_2741CEA30, MEMORY[0x277CE1138]);
  return sub_2741C7A7C();
}

uint64_t sub_2740BC18C(uint64_t a1, char a2)
{
  type metadata accessor for ConfigureDNSView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938718, &qword_2741CC8B8);
  return sub_2741C7A4C();
}

__n128 sub_2740BC204@<Q0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v3 = a1;
  v5 = sub_2741C70EC();
  v19 = 1;
  sub_2740BC298(v3 & 1, &v13);
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  result = v13;
  v12 = v19;
  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = v12;
  *(a3 + 24) = result;
  *(a3 + 40) = v6;
  *(a3 + 48) = v7;
  *(a3 + 56) = v8;
  *(a3 + 64) = v9;
  *(a3 + 72) = v10;
  return result;
}

uint64_t sub_2740BC298@<X0>(char a1@<W0>, uint64_t a3@<X8>)
{
  if ((a1 & 1) == 0)
  {
    if (qword_280937B18 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_280937B20 != -1)
  {
LABEL_8:
    v19 = a1;
    swift_once();
    a1 = v19;
  }

LABEL_5:
  v20 = a1 & 1;

  sub_2740A6A74();
  v4 = sub_2741C76AC();
  v6 = v5;
  v8 = v7;
  sub_2741C799C();
  v9 = sub_2741C763C();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_2740A6AC8(v4, v6, v8 & 1);

  type metadata accessor for ConfigureDNSView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938718, &qword_2741CC8B8);
  sub_2741C7A3C();
  v16 = 0;
  if (v21 == v20)
  {
    v16 = sub_2741C79CC();
  }

  v17 = v13 & 1;
  sub_27409861C(v9, v11, v17);
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v17;
  *(a3 + 24) = v15;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = v16;

  sub_2740A6AC8(v9, v11, v17);
}

uint64_t sub_2740BC4CC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v84 = a2;
  v77 = sub_2741C6EDC();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v3);
  v75 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ConfigureDNSView(0);
  v6 = v5 - 8;
  v69[0] = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v69[1] = v8;
  v70 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809387E8, &qword_2741CC9D0);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v9);
  v72 = v69 - v10;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809387F0, &qword_2741CC9D8);
  v11 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v12);
  v71 = v69 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809387F8, &qword_2741CC9E0);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v83 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v69 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809388C0, &qword_2741CCA70);
  v81 = *(v21 - 8);
  v82 = v21;
  v23 = MEMORY[0x28223BE20](v21, v22);
  v89 = v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v27 = v69 - v26;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809388C8, &qword_2741CCA78);
  v80 = *(v88 - 8);
  v29 = MEMORY[0x28223BE20](v88, v28);
  v86 = v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v33 = v69 - v32;
  v34 = (a1 + *(v6 + 32));
  v93 = *v34;
  v94 = *(v34 + 1);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938758, &qword_2741CC8E0);
  MEMORY[0x2743E5B70](v92, v35);
  v36 = v92[0];
  swift_getKeyPath();
  v93 = v36;
  sub_2740C1610(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v37 = v36 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
  swift_beginAccess();
  v38 = *(v37 + 8);

  v92[0] = v38;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938430, &qword_2741CC108);
  sub_2740A6D24(&qword_2809388D0, &qword_280938430, &qword_2741CC108, MEMORY[0x277D83980]);
  v85 = v33;
  sub_2741C7B5C();
  v90 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809388D8, &qword_2741CCAA0);
  sub_2740C1418(&qword_2809388E0, &qword_2809388D8, &qword_2741CCAA0, sub_2740C14C8);
  v87 = v27;
  sub_2741C762C();
  v39 = (a1 + *(v6 + 36));
  v40 = *v39;
  v41 = *(v39 + 1);
  LOBYTE(v92[0]) = v40;
  v92[1] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938718, &qword_2741CC8B8);
  sub_2741C7A3C();
  if (v91 == 1)
  {
    v42 = v70;
    sub_2740C08EC(a1, v70);
    v43 = (*(v69[0] + 80) + 16) & ~*(v69[0] + 80);
    v44 = swift_allocObject();
    sub_2740C0954(v42, v44 + v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938858, &qword_2741CCA18);
    sub_2740C119C();
    v45 = v72;
    sub_2741C7A7C();
    v46 = v75;
    sub_2741C6ECC();
    sub_2740A6D24(&qword_280938888, &qword_2809387E8, &qword_2741CC9D0, MEMORY[0x277CDF028]);
    sub_2740C1610(&qword_280938890, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v47 = v71;
    v48 = v74;
    v49 = v77;
    sub_2741C76FC();
    (*(v76 + 8))(v46, v49);
    (*(v73 + 8))(v45, v48);
    v50 = v79;
    (*(v11 + 32))(v20, v47, v79);
    v51 = 0;
    v52 = v50;
  }

  else
  {
    v51 = 1;
    v52 = v79;
  }

  (*(v11 + 56))(v20, v51, 1, v52);
  v78 = v20;
  v53 = v80;
  v54 = *(v80 + 16);
  v55 = v86;
  v54(v86, v85, v88);
  v56 = v81;
  v57 = v82;
  v58 = *(v81 + 16);
  v58(v89, v87, v82);
  v59 = v20;
  v60 = v83;
  sub_2740C1114(v59, v83);
  v61 = v84;
  v62 = v55;
  v63 = v88;
  v54(v84, v62, v88);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938910, &qword_2741CCAB8);
  v65 = v89;
  v58(&v61[*(v64 + 48)], v89, v57);
  sub_2740C1114(v60, &v61[*(v64 + 64)]);
  sub_27409D420(v78, &qword_2809387F8, &qword_2741CC9E0);
  v66 = *(v56 + 8);
  v66(v87, v57);
  v67 = *(v53 + 8);
  v67(v85, v63);
  sub_27409D420(v60, &qword_2809387F8, &qword_2741CC9E0);
  v66(v65, v57);
  return (v67)(v86, v63);
}

uint64_t sub_2740BCE8C@<X0>(uint64_t a2@<X8>)
{
  sub_2740A6A74();

  result = sub_2741C76AC();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_2740BCEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for ConfigureDNSView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = (a1 + *(MEMORY[0x28223BE20](v3 - 8, v6) + 40));
  v9 = *v7;
  v8 = v7[1];
  v19 = v9;
  v20 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938768, &qword_2741CC910);
  sub_2741C7A3C();
  v17[1] = swift_getKeyPath();
  sub_2740C08EC(a1, v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_2740C0954(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809386A0, &unk_2741CC7C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938900, &qword_2741CCAB0);
  sub_2740A6D24(&qword_280938918, &qword_2809386A0, &unk_2741CC7C0, MEMORY[0x277D83980]);
  sub_2740C14F8();
  v12 = v18;
  sub_2741C7B5C();
  sub_2740C08EC(a1, v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  sub_2740C0954(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v10);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2740C1738;
  *(v14 + 24) = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809388D8, &qword_2741CCAA0);
  v16 = (v12 + *(result + 36));
  *v16 = sub_2740C1FBC;
  v16[1] = v14;
  return result;
}

uint64_t sub_2740BD168@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for ConfigureDNSView(0);
  v6 = v5 - 8;
  v21 = *(v5 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v9 = type metadata accessor for DNSServerTextField(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DNSServer(0);
  sub_2740C1610(&qword_280938770, type metadata accessor for DNSServer, &unk_2741D2500);

  sub_2741C7BDC();
  v13 = (a2 + *(v6 + 48));
  v14 = *v13;
  v15 = *(v13 + 1);
  LOBYTE(v13) = v13[16];
  LOBYTE(v25) = v14;
  v26 = v15;
  v27 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809388B8, &qword_2741CCA68);
  sub_2741C6C8C();
  v25 = v22;
  v26 = v23;
  v27 = v24;
  LOBYTE(v22) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809386C0, &qword_2741CC7D0);
  sub_2740C1610(&qword_280938908, type metadata accessor for DNSServerTextField, &unk_2741D09A4);
  sub_2740BAE00();
  sub_2741C789C();

  sub_2740C17D4(v12, type metadata accessor for DNSServerTextField);
  sub_2740C08EC(a2, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v17 = swift_allocObject();
  sub_2740C0954(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938900, &qword_2741CCAB0);
  v19 = (a3 + *(result + 36));
  *v19 = sub_2740C1A94;
  v19[1] = v17;
  v19[2] = 0;
  v19[3] = 0;
  return result;
}

uint64_t sub_2740BD444(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ConfigureDNSView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938768, &qword_2741CC910);
  sub_2741C7A3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809386A0, &unk_2741CC7C0);
  sub_2740A6D24(&qword_280938920, &qword_2809386A0, &unk_2741CC7C0, MEMORY[0x277D83960]);
  sub_2740A6D24(&qword_280938928, &qword_2809386A0, &unk_2741CC7C0, MEMORY[0x277D83990]);
  sub_2741C826C();
  sub_2741C7A4C();
}

uint64_t sub_2740BD58C(uint64_t *a1)
{
  v2 = sub_2741C7C0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938680, &qword_2741D5140);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v25 - v9;
  v11 = (a1 + *(type metadata accessor for ConfigureDNSView(0) + 32));
  v12 = *v11;
  v13 = v11[1];
  v32 = *v11;
  v33 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938768, &qword_2741CC910);
  sub_2741C7A3C();
  if (v31 >> 62)
  {
LABEL_23:
    v24 = sub_2741C848C();

    if (v24)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v14)
    {
LABEL_3:
      v29 = v3;
      v30 = v2;
      v32 = v12;
      v33 = v13;
      sub_2741C7A3C();
      v12 = v31;
      v27 = v10;
      v28 = v6;
      v26 = a1;
      v2 = v31 & 0xFFFFFFFFFFFFFF8;
      if (v31 >> 62)
      {
        v3 = sub_2741C848C();
      }

      else
      {
        v3 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 = 0;
      v10 = &unk_2741CC918;
      a1 = &qword_280938770;
      while (1)
      {
        if (v3 == v6)
        {
          goto LABEL_17;
        }

        if ((v12 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x2743E6600](v6, v12);
          if (__OFADD__(v6, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

            v3 = v29;
            v2 = v30;
            v10 = v27;
            v6 = v28;
            a1 = v26;
            break;
          }
        }

        else
        {
          if (v6 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_23;
          }

          v17 = *(v12 + 8 * v6 + 32);

          if (__OFADD__(v6, 1))
          {
            goto LABEL_16;
          }
        }

        swift_getKeyPath();
        v32 = v17;
        sub_2740C1610(&qword_280938770, type metadata accessor for DNSServer, &unk_2741D2500);
        sub_2741C6A0C();

        v18 = *(v17 + 16);
        v13 = *(v17 + 24);

        v19 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v19 = v18 & 0xFFFFFFFFFFFFLL;
        }

        ++v6;
        if (!v19)
        {
        }
      }
    }
  }

  MEMORY[0x28223BE20](v15, v16);
  *(&v25 - 2) = a1;
  sub_2741C7C5C();
  sub_2741C6DCC();

  sub_2740BAED8(v10);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938710, &qword_2741D5350);
  if ((*(*(v20 - 8) + 48))(v10, 1, v20) == 1)
  {
    v21 = &qword_280938680;
    v22 = &qword_2741D5140;
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277CDF0D0], v2);
    sub_2741C7AFC();
    v21 = &qword_280938710;
    v22 = &qword_2741D5350;
  }

  return sub_27409D420(v10, v21, v22);
}

uint64_t sub_2740BD9A0(uint64_t a1)
{
  type metadata accessor for DNSServer(0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  sub_2741C6A3C();
  type metadata accessor for ConfigureDNSView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938768, &qword_2741CC910);
  v2 = sub_2741C7A3C();
  MEMORY[0x2743E6040](v2);
  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2741C800C();
  }

  sub_2741C802C();
  sub_2741C7A4C();
}

uint64_t sub_2740BDAE0@<X0>(uint64_t a1@<X8>)
{
  sub_2741C714C();
  sub_2741C7A0C();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938858, &qword_2741CCA18) + 36));
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938880, &qword_2741CCA28) + 28);
  sub_2741C71CC();
  v4 = sub_2741C71DC();
  (*(*(v4 - 8) + 56))(&v2[v3], 0, 1, v4);
  result = swift_getKeyPath();
  *v2 = result;
  return result;
}

uint64_t sub_2740BDBCC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v69 = a2;
  v3 = sub_2741C6EDC();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v61 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConfigureDNSView(0);
  v7 = v6 - 8;
  v56 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809387E8, &qword_2741CC9D0);
  v12 = *(v11 - 8);
  v59 = v11;
  v60 = v12;
  MEMORY[0x28223BE20](v11, v13);
  v57 = &v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809387F0, &qword_2741CC9D8);
  v66 = *(v15 - 8);
  v67 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v58 = &v56 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809387F8, &qword_2741CC9E0);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v68 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v64 = &v56 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938800, &qword_2741CC9E8);
  v25 = *(v24 - 8);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v65 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v56 - v30;
  v70 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938808, &qword_2741CC9F0);
  sub_2740C1418(&qword_280938810, &qword_280938808, &qword_2741CC9F0, sub_2740C0F50);
  sub_2741C762C();
  v32 = (a1 + *(v7 + 36));
  v33 = *v32;
  v34 = *(v32 + 1);
  v72 = v33;
  v73 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938718, &qword_2741CC8B8);
  sub_2741C7A3C();
  if (v71 == 1)
  {
    sub_2740C08EC(a1, v10);
    v35 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v36 = swift_allocObject();
    sub_2740C0954(v10, v36 + v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938858, &qword_2741CCA18);
    sub_2740C119C();
    v37 = v57;
    sub_2741C7A7C();
    v38 = v61;
    sub_2741C6ECC();
    sub_2740A6D24(&qword_280938888, &qword_2809387E8, &qword_2741CC9D0, MEMORY[0x277CDF028]);
    sub_2740C1610(&qword_280938890, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v40 = v58;
    v39 = v59;
    v41 = v63;
    sub_2741C76FC();
    (*(v62 + 8))(v38, v41);
    (*(v60 + 8))(v37, v39);
    v43 = v66;
    v42 = v67;
    v44 = v64;
    (*(v66 + 32))(v64, v40, v67);
    v45 = 0;
    v46 = v42;
    v47 = v43;
    v48 = v44;
  }

  else
  {
    v45 = 1;
    v47 = v66;
    v46 = v67;
    v48 = v64;
  }

  (*(v47 + 56))(v48, v45, 1, v46);
  v49 = *(v25 + 16);
  v50 = v65;
  v49(v65, v31, v24);
  v51 = v68;
  sub_2740C1114(v48, v68);
  v52 = v69;
  v49(v69, v50, v24);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938850, &qword_2741CCA10);
  sub_2740C1114(v51, &v52[*(v53 + 48)]);
  sub_27409D420(v48, &qword_2809387F8, &qword_2741CC9E0);
  v54 = *(v25 + 8);
  v54(v31, v24);
  sub_27409D420(v51, &qword_2809387F8, &qword_2741CC9E0);
  return (v54)(v50, v24);
}

uint64_t sub_2740BE288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for ConfigureDNSView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = (a1 + *(MEMORY[0x28223BE20](v3 - 8, v6) + 44));
  v9 = *v7;
  v8 = v7[1];
  v19 = v9;
  v20 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938778, &qword_2741CC940);
  sub_2741C7A3C();
  v17[1] = swift_getKeyPath();
  sub_2740C08EC(a1, v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_2740C0954(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809386B0, &qword_2741D3BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938830, &qword_2741CCA00);
  sub_2740A6D24(&qword_2809388A0, &qword_2809386B0, &qword_2741D3BD0, MEMORY[0x277D83980]);
  sub_2740C0FFC();
  v12 = v18;
  sub_2741C7B5C();
  sub_2740C08EC(a1, v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  sub_2740C0954(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v10);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2740C134C;
  *(v14 + 24) = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938808, &qword_2741CC9F0);
  v16 = (v12 + *(result + 36));
  *v16 = sub_2740C139C;
  v16[1] = v14;
  return result;
}

uint64_t sub_2740BE4F8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for ConfigureDNSView(0);
  v6 = v5 - 8;
  v21 = *(v5 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v9 = type metadata accessor for DNSDomainTextField(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DNSDomain(0);
  sub_2740C1610(&qword_280938780, type metadata accessor for DNSDomain, &unk_2741CDA40);

  sub_2741C7BDC();
  v13 = (a2 + *(v6 + 48));
  v14 = *v13;
  v15 = *(v13 + 1);
  LOBYTE(v13) = v13[16];
  LOBYTE(v25) = v14;
  v26 = v15;
  v27 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809388B8, &qword_2741CCA68);
  sub_2741C6C8C();
  v25 = v22;
  v26 = v23;
  v27 = v24;
  LOBYTE(v22) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809386C0, &qword_2741CC7D0);
  sub_2740C1610(&qword_280938838, type metadata accessor for DNSDomainTextField, &unk_2741D3FD4);
  sub_2740BAE00();
  sub_2741C789C();

  sub_2740C17D4(v12, type metadata accessor for DNSDomainTextField);
  sub_2740C08EC(a2, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v17 = swift_allocObject();
  sub_2740C0954(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938830, &qword_2741CCA00);
  v19 = (a3 + *(result + 36));
  *v19 = sub_2740C13A4;
  v19[1] = v17;
  v19[2] = 0;
  v19[3] = 0;
  return result;
}

uint64_t sub_2740BE7D8(uint64_t a1, char a2)
{
  type metadata accessor for ConfigureDNSView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809388B8, &qword_2741CCA68);
  return sub_2741C6C7C();
}

uint64_t sub_2740BE854(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ConfigureDNSView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938778, &qword_2741CC940);
  sub_2741C7A3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809386B0, &qword_2741D3BD0);
  sub_2740A6D24(&qword_2809388A8, &qword_2809386B0, &qword_2741D3BD0, MEMORY[0x277D83960]);
  sub_2740A6D24(&qword_2809388B0, &qword_2809386B0, &qword_2741D3BD0, MEMORY[0x277D83990]);
  sub_2741C826C();
  sub_2741C7A4C();
}

uint64_t sub_2740BE99C(uint64_t *a1)
{
  v2 = sub_2741C7C0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938680, &qword_2741D5140);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v25 - v9;
  v11 = (a1 + *(type metadata accessor for ConfigureDNSView(0) + 36));
  v12 = *v11;
  v13 = v11[1];
  v32 = *v11;
  v33 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938778, &qword_2741CC940);
  sub_2741C7A3C();
  if (v31 >> 62)
  {
LABEL_23:
    v24 = sub_2741C848C();

    if (v24)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v14)
    {
LABEL_3:
      v29 = v3;
      v30 = v2;
      v32 = v12;
      v33 = v13;
      sub_2741C7A3C();
      v12 = v31;
      v27 = v10;
      v28 = v6;
      v26 = a1;
      v2 = v31 & 0xFFFFFFFFFFFFFF8;
      if (v31 >> 62)
      {
        v3 = sub_2741C848C();
      }

      else
      {
        v3 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 = 0;
      v10 = &unk_2741CC948;
      a1 = &qword_280938780;
      while (1)
      {
        if (v3 == v6)
        {
          goto LABEL_17;
        }

        if ((v12 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x2743E6600](v6, v12);
          if (__OFADD__(v6, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

            v3 = v29;
            v2 = v30;
            v10 = v27;
            v6 = v28;
            a1 = v26;
            break;
          }
        }

        else
        {
          if (v6 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_23;
          }

          v17 = *(v12 + 8 * v6 + 32);

          if (__OFADD__(v6, 1))
          {
            goto LABEL_16;
          }
        }

        swift_getKeyPath();
        v32 = v17;
        sub_2740C1610(&qword_280938780, type metadata accessor for DNSDomain, &unk_2741CDA40);
        sub_2741C6A0C();

        v18 = *(v17 + 16);
        v13 = *(v17 + 24);

        v19 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v19 = v18 & 0xFFFFFFFFFFFFLL;
        }

        ++v6;
        if (!v19)
        {
        }
      }
    }
  }

  MEMORY[0x28223BE20](v15, v16);
  *(&v25 - 2) = a1;
  sub_2741C7C5C();
  sub_2741C6DCC();

  sub_2740BAED8(v10);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938710, &qword_2741D5350);
  if ((*(*(v20 - 8) + 48))(v10, 1, v20) == 1)
  {
    v21 = &qword_280938680;
    v22 = &qword_2741D5140;
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277CDF0D0], v2);
    sub_2741C7AFC();
    v21 = &qword_280938710;
    v22 = &qword_2741D5350;
  }

  return sub_27409D420(v10, v21, v22);
}

uint64_t sub_2740BEDB0(uint64_t a1)
{
  type metadata accessor for DNSDomain(0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  sub_2741C6A3C();
  type metadata accessor for ConfigureDNSView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938778, &qword_2741CC940);
  v2 = sub_2741C7A3C();
  MEMORY[0x2743E6040](v2);
  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2741C800C();
  }

  sub_2741C802C();
  sub_2741C7A4C();
}

uint64_t sub_2740BEEF0@<X0>(uint64_t a1@<X8>)
{
  if (qword_2809378D8 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  sub_2741C7A1C();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938858, &qword_2741CCA18) + 36));
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938880, &qword_2741CCA28) + 28);
  sub_2741C71CC();
  v4 = sub_2741C71DC();
  (*(*(v4 - 8) + 56))(&v2[v3], 0, 1, v4);
  result = swift_getKeyPath();
  *v2 = result;
  return result;
}

uint64_t sub_2740BF02C(uint64_t a1)
{
  v2 = type metadata accessor for ConfigureDNSView(0);
  v3 = (a1 + *(v2 + 24));
  v11 = *v3;
  v12 = *(v3 + 1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938758, &qword_2741CC8E0);
  MEMORY[0x2743E5B70](v10, v4);
  v5 = v10[0];
  swift_getKeyPath();
  v11 = v5;
  sub_2740C1610(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  swift_beginAccess();

  v6 = (a1 + *(v2 + 28));
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(v10[0]) = v7;
  v10[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938718, &qword_2741CC8B8);
  return sub_2741C7A4C();
}

uint64_t sub_2740BF180(unint64_t KeyPath)
{
  v2 = type metadata accessor for ConfigureDNSView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938768, &qword_2741CC910);
  sub_2741C7A3C();
  v3 = v15;
  v16 = MEMORY[0x277D84F90];
  v4 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
    goto LABEL_47;
  }

  v5 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v5)
  {
    v6 = 0;
    v14 = MEMORY[0x277D84F90];
    v12 = v2;
    v13 = KeyPath;
    do
    {
      v7 = v6;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v2 = MEMORY[0x2743E6600](v7, v3);
          v6 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_43;
          }
        }

        else
        {
          if (v7 >= *(v4 + 16))
          {
            goto LABEL_44;
          }

          v2 = *(v3 + 8 * v7 + 32);

          v6 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }
        }

        KeyPath = swift_getKeyPath();
        sub_2740C1610(&qword_280938770, type metadata accessor for DNSServer, &unk_2741D2500);
        sub_2741C6A0C();

        if ((*(v2 + 16) || *(v2 + 24) != 0xE000000000000000) && (sub_2741C86DC() & 1) == 0)
        {
          break;
        }

        ++v7;
        if (v6 == v5)
        {
          v2 = v12;
          goto LABEL_23;
        }
      }

      MEMORY[0x2743E6040]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2741C800C();
      }

      sub_2741C802C();
      v14 = v16;
      v2 = v12;
      KeyPath = v13;
    }

    while (v6 != v5);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

LABEL_23:

  sub_2741C7A4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938778, &qword_2741CC940);
  sub_2741C7A3C();
  v4 = v14;
  v16 = MEMORY[0x277D84F90];
  if (v14 >> 62)
  {
    v8 = sub_2741C848C();
    if (!v8)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v8 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_49;
    }
  }

  KeyPath = v14 & 0xC000000000000001;
  v9 = 0;
  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_39:
    v10 = MEMORY[0x2743E6600](v9, v14);
    v3 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_32;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  while (1)
  {
    while (1)
    {
      if (v9 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        v5 = sub_2741C848C();
        goto LABEL_3;
      }

      v10 = *(v14 + 8 * v9 + 32);

      v3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_45;
      }

LABEL_32:
      v2 = swift_getKeyPath();
      sub_2740C1610(&qword_280938780, type metadata accessor for DNSDomain, &unk_2741CDA40);
      sub_2741C6A0C();

      if ((*(v10 + 16) || *(v10 + 24) != 0xE000000000000000) && (sub_2741C86DC() & 1) == 0)
      {
        break;
      }

      ++v9;
      if (v3 == v8)
      {
        goto LABEL_49;
      }

      if (KeyPath)
      {
        goto LABEL_39;
      }
    }

    MEMORY[0x2743E6040]();
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2741C800C();
    }

    sub_2741C802C();
    if (v3 == v8)
    {
      break;
    }

    v9 = v3;
    if (KeyPath)
    {
      goto LABEL_39;
    }
  }

LABEL_49:

  return sub_2741C7A4C();
}

uint64_t sub_2740BF62C(uint64_t a1)
{
  v2 = sub_2741C730C();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938748, &unk_2741CC8D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11[-v7];
  sub_2741C72EC();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F80, &unk_2741CB690);
  sub_2740A6D24(&qword_280937F78, &qword_280937F80, &unk_2741CB690, MEMORY[0x277CDF028]);
  sub_2741C6D2C();
  v9 = sub_2740A6D24(&qword_280938750, &qword_280938748, &unk_2741CC8D0, MEMORY[0x277CDD7A8]);
  MEMORY[0x2743E53C0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2740BF818(uint64_t a1)
{
  v2 = type metadata accessor for ConfigureDNSView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  if (qword_2809378E0 != -1)
  {
    swift_once();
  }

  v9[0] = qword_280946908;
  v9[1] = unk_280946910;
  sub_2740C08EC(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_2740C0954(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_2740A6A74();

  return sub_2741C7A9C();
}

uint64_t sub_2740BF980()
{
  v1 = sub_2741C6DBC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConfigureDNSView(0);
  v7 = (v0 + v6[7]);
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v92) = v8;
  v93 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938718, &qword_2741CC8B8);
  sub_2741C7A3C();
  v78 = v2;
  v79 = v1;
  v82 = v0;
  v77 = v5;
  if (v89 != 1)
  {
    v26 = (v0 + v6[6]);
    v28 = v26[1];
    v29 = v26[2];
    v92 = *v26;
    v27 = v92;
    v93 = v28;
    v94 = v29;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938758, &qword_2741CC8E0);
    MEMORY[0x2743E5B70](&v89);
    v31 = v89;
    swift_getKeyPath();
    v92 = v31;
    sub_2740C1610(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
    sub_2741C6A0C();

    v92 = v31;
    swift_getKeyPath();
    sub_2741C6A2C();

    v32 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
    swift_beginAccess();
    *(v31 + v32) = 0;
    v89 = v31;
    swift_getKeyPath();
    sub_2741C6A1C();

    v89 = v27;
    v90 = v28;
    v91 = v29;
    v33 = v30;
    MEMORY[0x2743E5B70](&v86, v30);
    v34 = v86;
    swift_getKeyPath();
    v89 = v34;
    sub_2741C6A0C();

    v89 = v34;
    swift_getKeyPath();
    sub_2741C6A2C();

    v35 = v34 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
    swift_beginAccess();
    *(v35 + 8) = MEMORY[0x277D84F90];

    v86 = v34;
    swift_getKeyPath();
    v36 = v27;
    sub_2741C6A1C();

    v86 = v27;
    v87 = v28;
    v88 = v29;
    MEMORY[0x2743E5B70](v85, v33);
    v37 = v85[0];
    swift_getKeyPath();
    v86 = v37;
    sub_2741C6A0C();

    v86 = v37;
    swift_getKeyPath();
    sub_2741C6A2C();

    v38 = v37 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
    swift_beginAccess();
    *(v38 + 16) = MEMORY[0x277D84F90];

    v85[0] = v37;
    goto LABEL_24;
  }

  v76 = v6;
  v10 = (v0 + v6[8]);
  v12 = *v10;
  v11 = v10[1];
  v92 = v12;
  v93 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938768, &qword_2741CC910);
  sub_2741C7A3C();
  v13 = v89;
  if (v89 >> 62)
  {
LABEL_27:
    v83 = v13 & 0xFFFFFFFFFFFFFF8;
    v14 = sub_2741C848C();
    if (v14)
    {
LABEL_4:
      v15 = 0;
      v81 = MEMORY[0x277D84F90];
      do
      {
        v16 = v15;
        while (1)
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x2743E6600](v16, v13);
            v15 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_25;
            }
          }

          else
          {
            if (v16 >= *(v83 + 16))
            {
              goto LABEL_26;
            }

            v17 = *(v13 + 8 * v16 + 32);

            v15 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
LABEL_25:
              __break(1u);
LABEL_26:
              __break(1u);
              goto LABEL_27;
            }
          }

          swift_getKeyPath();
          v92 = v17;
          sub_2740C1610(&qword_280938770, type metadata accessor for DNSServer, &unk_2741D2500);
          sub_2741C6A0C();

          v18 = *(v17 + 24);
          v19 = *(v17 + 16) & 0xFFFFFFFFFFFFLL;
          if ((v18 & 0x2000000000000000) != 0)
          {
            v19 = HIBYTE(v18) & 0xF;
          }

          if (v19)
          {
            break;
          }

          ++v16;
          if (v15 == v14)
          {
            goto LABEL_29;
          }
        }

        swift_getKeyPath();
        v92 = v17;
        sub_2741C6A0C();

        v21 = *(v17 + 16);
        v20 = *(v17 + 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_274176FC8(0, *(v81 + 2) + 1, 1, v81);
        }

        v23 = *(v81 + 2);
        v22 = *(v81 + 3);
        if (v23 >= v22 >> 1)
        {
          v81 = sub_274176FC8((v22 > 1), v23 + 1, 1, v81);
        }

        v24 = v81;
        *(v81 + 2) = v23 + 1;
        v25 = &v24[16 * v23];
        *(v25 + 4) = v21;
        *(v25 + 5) = v20;
      }

      while (v15 != v14);
      goto LABEL_29;
    }
  }

  else
  {
    v83 = v89 & 0xFFFFFFFFFFFFFF8;
    v14 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_4;
    }
  }

  v81 = MEMORY[0x277D84F90];
LABEL_29:

  v39 = (v82 + v76[9]);
  v41 = *v39;
  v40 = v39[1];
  v92 = v41;
  v93 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938778, &qword_2741CC940);
  sub_2741C7A3C();
  v42 = v89;
  if (v89 >> 62)
  {
LABEL_59:
    v83 = v42 & 0xFFFFFFFFFFFFFF8;
    v43 = sub_2741C848C();
  }

  else
  {
    v83 = v89 & 0xFFFFFFFFFFFFFF8;
    v43 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v43)
  {
    v44 = 0;
    v80 = MEMORY[0x277D84F90];
    do
    {
      v45 = v44;
      while (1)
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          v46 = MEMORY[0x2743E6600](v45, v42);
          v44 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (v45 >= *(v83 + 16))
          {
            goto LABEL_58;
          }

          v46 = *(v42 + 8 * v45 + 32);

          v44 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }
        }

        swift_getKeyPath();
        v92 = v46;
        sub_2740C1610(&qword_280938780, type metadata accessor for DNSDomain, &unk_2741CDA40);
        sub_2741C6A0C();

        v47 = *(v46 + 24);
        v48 = *(v46 + 16) & 0xFFFFFFFFFFFFLL;
        if ((v47 & 0x2000000000000000) != 0)
        {
          v48 = HIBYTE(v47) & 0xF;
        }

        if (v48)
        {
          break;
        }

        ++v45;
        if (v44 == v43)
        {
          goto LABEL_52;
        }
      }

      swift_getKeyPath();
      v92 = v46;
      sub_2741C6A0C();

      v50 = *(v46 + 16);
      v49 = *(v46 + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_274176FC8(0, *(v80 + 2) + 1, 1, v80);
      }

      v52 = *(v80 + 2);
      v51 = *(v80 + 3);
      if (v52 >= v51 >> 1)
      {
        v80 = sub_274176FC8((v51 > 1), v52 + 1, 1, v80);
      }

      v53 = v80;
      *(v80 + 2) = v52 + 1;
      v54 = &v53[16 * v52];
      *(v54 + 4) = v50;
      *(v54 + 5) = v49;
    }

    while (v44 != v43);
  }

  else
  {
    v80 = MEMORY[0x277D84F90];
  }

LABEL_52:

  v55 = v81;
  if (*(v81 + 2) || *(v80 + 2))
  {
    v56 = (v82 + v76[6]);
    v28 = v56[1];
    v29 = v56[2];
    v92 = *v56;
    v36 = v92;
    v93 = v28;
    v94 = v29;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938758, &qword_2741CC8E0);
    MEMORY[0x2743E5B70](&v89);
    v58 = v89;
    swift_getKeyPath();
    v92 = v58;
    sub_2740C1610(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
    v81 = v55;
    sub_2741C6A0C();

    v92 = v58;
    swift_getKeyPath();
    sub_2741C6A2C();

    v59 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
    swift_beginAccess();
    *(v58 + v59) = 1;
    v89 = v58;
    swift_getKeyPath();
    sub_2741C6A1C();

    v89 = v36;
    v90 = v28;
    v91 = v29;
    MEMORY[0x2743E5B70](&v86, v57);
    v60 = v86;
    swift_getKeyPath();
    v89 = v60;
    sub_2741C6A0C();

    v89 = v60;
    swift_getKeyPath();
    sub_2741C6A2C();

    v61 = v60 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
    swift_beginAccess();
    *(v61 + 8) = v81;

    v86 = v60;
    swift_getKeyPath();
    sub_2741C6A1C();

    v86 = v36;
    v87 = v28;
    v88 = v29;
    MEMORY[0x2743E5B70](v85, v57);
    v62 = v85[0];
    swift_getKeyPath();
    v86 = v62;
    sub_2741C6A0C();

    v86 = v62;
    swift_getKeyPath();
    sub_2741C6A2C();

    v63 = v62 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
    swift_beginAccess();
    *(v63 + 16) = v80;

    v85[0] = v62;
    swift_getKeyPath();
    goto LABEL_55;
  }

  v67 = (v82 + v76[6]);
  v28 = v67[1];
  v29 = v67[2];
  v92 = *v67;
  v36 = v92;
  v93 = v28;
  v94 = v29;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938758, &qword_2741CC8E0);
  v83 = v68;
  MEMORY[0x2743E5B70](&v89);
  v69 = v89;
  swift_getKeyPath();
  v92 = v69;
  sub_2740C1610(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v92 = v69;
  swift_getKeyPath();
  sub_2741C6A2C();

  v70 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
  swift_beginAccess();
  *(v69 + v70) = 0;
  v89 = v69;
  swift_getKeyPath();
  sub_2741C6A1C();

  v89 = v36;
  v90 = v28;
  v91 = v29;
  MEMORY[0x2743E5B70](&v86, v68);
  v71 = v86;
  swift_getKeyPath();
  v89 = v71;
  sub_2741C6A0C();

  v89 = v71;
  swift_getKeyPath();
  sub_2741C6A2C();

  v72 = v71 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
  swift_beginAccess();
  v73 = MEMORY[0x277D84F90];
  *(v72 + 8) = MEMORY[0x277D84F90];

  v86 = v71;
  swift_getKeyPath();
  sub_2741C6A1C();

  v86 = v36;
  v87 = v28;
  v88 = v29;
  MEMORY[0x2743E5B70](v85, v83);
  v74 = v85[0];
  swift_getKeyPath();
  v86 = v74;
  sub_2741C6A0C();

  v86 = v74;
  swift_getKeyPath();
  sub_2741C6A2C();

  v75 = v74 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
  swift_beginAccess();
  *(v75 + 16) = v73;

  v85[0] = v74;
LABEL_24:
  swift_getKeyPath();
LABEL_55:
  sub_2741C6A1C();

  v85[0] = v36;
  v85[1] = v28;
  v85[2] = v29;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938758, &qword_2741CC8E0);
  MEMORY[0x2743E5B70](&v84, v64);
  sub_274102778();

  v65 = v77;
  sub_2740BB0A8(v77);
  sub_2741C6DAC();
  return (*(v78 + 8))(v65, v79);
}

unint64_t sub_2740C0890()
{
  result = qword_2809386D8;
  if (!qword_2809386D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809386D8);
  }

  return result;
}

uint64_t sub_2740C08EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfigureDNSView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740C0954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfigureDNSView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740C09E8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ConfigureDNSView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2740C0A5C()
{
  result = qword_280938720;
  if (!qword_280938720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809386E0, &qword_2741CC890);
    sub_2740A6D24(&qword_280938728, &qword_280938730, &unk_2741CC8C0, MEMORY[0x277CDE580]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938720);
  }

  return result;
}

unint64_t sub_2740C0B14()
{
  result = qword_280938738;
  if (!qword_280938738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938738);
  }

  return result;
}

uint64_t sub_2740C0BEC(char *a1)
{
  v3 = *(type metadata accessor for ConfigureDNSView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2740BBFFC(a1, v4);
}

uint64_t sub_2740C0C6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938898, &qword_2741CCA60);
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_2740A6D94(a1, &v6 - v4, &qword_280938898, &qword_2741CCA60);
  return sub_2741C6FDC();
}

uint64_t sub_2740C0D14(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938930, qword_2741CCAC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809387B8, &qword_2741CC9B0);
  sub_2740A6D24(&qword_280938938, &qword_280938930, qword_2741CCAC0, MEMORY[0x277D83980]);
  sub_2740C1AD8();
  sub_2740A6D24(&qword_2809387B0, &qword_2809387B8, &qword_2741CC9B0, MEMORY[0x277CDF028]);
  return sub_2741C7B5C();
}

unint64_t sub_2740C0E88()
{
  result = qword_2809387A8;
  if (!qword_2809387A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809387A0, &qword_2741CC9A8);
    sub_2740A6D24(&qword_2809387B0, &qword_2809387B8, &qword_2741CC9B0, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809387A8);
  }

  return result;
}

uint64_t sub_2740C0F80(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_2740C0FFC()
{
  result = qword_280938828;
  if (!qword_280938828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938830, &qword_2741CCA00);
    type metadata accessor for DNSDomainTextField(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809386C0, &qword_2741CC7D0);
    sub_2740C1610(&qword_280938838, type metadata accessor for DNSDomainTextField, &unk_2741D3FD4);
    sub_2740BAE00();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938828);
  }

  return result;
}

uint64_t sub_2740C1114(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809387F8, &qword_2741CC9E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2740C119C()
{
  result = qword_280938860;
  if (!qword_280938860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938858, &qword_2741CCA18);
    sub_2740A6D24(&qword_280938868, &qword_280938870, &qword_2741CCA20, MEMORY[0x277CDEFF0]);
    sub_2740A6D24(&qword_280938878, &qword_280938880, &qword_2741CCA28, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938860);
  }

  return result;
}

uint64_t sub_2740C12C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938680, &qword_2741D5140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740C1364()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2740C1418(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_2740A6D24(&qword_280938840, &qword_280938848, &qword_2741CCA08, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2740C14F8()
{
  result = qword_2809388F8;
  if (!qword_2809388F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938900, &qword_2741CCAB0);
    type metadata accessor for DNSServerTextField(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809386C0, &qword_2741CC7D0);
    sub_2740C1610(&qword_280938908, type metadata accessor for DNSServerTextField, &unk_2741D09A4);
    sub_2740BAE00();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809388F8);
  }

  return result;
}

uint64_t sub_2740C1610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2740C16A4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ConfigureDNSView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_2740C1750(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ConfigureDNSView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_2740C17D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for ConfigureDNSView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938710, &qword_2741D5350);
    if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
    {

      v7 = *(v6 + 32);
      v8 = sub_2741C7C0C();
      (*(*(v8 - 8) + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  v9 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2741C6DBC();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2740C1A9C(char *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

unint64_t sub_2740C1AD8()
{
  result = qword_280938940;
  if (!qword_280938940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938940);
  }

  return result;
}

uint64_t sub_2740C1B2C()
{
  v1 = type metadata accessor for ConfigureDNSView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938710, &qword_2741D5350);
    if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
    {

      v7 = *(v6 + 32);
      v8 = sub_2741C7C0C();
      (*(*(v8 - 8) + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  v9 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2741C6DBC();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_2740C1D90()
{
  v1 = *(type metadata accessor for ConfigureDNSView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_2740BC18C(v2, v3);
}

uint64_t sub_2740C1E1C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809386F0, &qword_2741CC8A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938740, &unk_2741D64C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809386E8, &qword_2741CC898);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809386E0, &qword_2741CC890);
  sub_2740C0A5C();
  sub_2740C0B14();
  swift_getOpaqueTypeConformance2();
  sub_2740A6A74();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938748, &unk_2741CC8D0);
  sub_2740A6D24(&qword_280938750, &qword_280938748, &unk_2741CC8D0, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void sub_2740C2020(uint64_t a2@<X8>)
{
  v3 = sub_2741C71AC();
  v22 = 1;
  sub_2740C21B0(&v14);
  v26 = v17;
  v27 = v18;
  v28 = v19;
  v29 = v20;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v30[0] = v14;
  v30[1] = v15;
  v30[2] = v16;
  v30[3] = v17;
  v30[4] = v18;
  v30[5] = v19;
  v30[6] = v20;
  sub_2740A6D94(&v23, &v13, &qword_280938960, &qword_2741CCB40);
  sub_27409D420(v30, &qword_280938960, &qword_2741CCB40);
  *&v21[55] = v26;
  *&v21[71] = v27;
  *&v21[87] = v28;
  *&v21[103] = v29;
  *&v21[7] = v23;
  *&v21[23] = v24;
  *&v21[39] = v25;
  v4 = v22;
  v5 = sub_2741C753C();
  sub_2741C6C6C();
  v6 = *&v21[80];
  *(a2 + 81) = *&v21[64];
  *(a2 + 97) = v6;
  *(a2 + 113) = *&v21[96];
  v7 = *&v21[16];
  *(a2 + 17) = *v21;
  *(a2 + 33) = v7;
  v8 = *&v21[48];
  *(a2 + 49) = *&v21[32];
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 128) = *&v21[111];
  *(a2 + 65) = v8;
  *(a2 + 136) = v5;
  *(a2 + 144) = v9;
  *(a2 + 152) = v10;
  *(a2 + 160) = v11;
  *(a2 + 168) = v12;
  *(a2 + 176) = 0;
}

uint64_t sub_2740C21B0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2741C79DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2741C79CC();
  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
  v34 = sub_2741C79FC();

  (*(v3 + 8))(v6, v2);
  sub_2741C7C1C();
  sub_2741C6D8C();
  LOBYTE(v39) = 1;
  *&v36[3] = *&v36[27];
  *&v36[11] = *&v36[35];
  *&v36[19] = *&v36[43];
  v33 = sub_2741C737C();
  if (qword_280937A10 != -1)
  {
    swift_once();
  }

  v39 = xmmword_280946B78;
  sub_2740A6A74();

  v7 = sub_2741C76AC();
  v9 = v8;
  v11 = v10;
  LODWORD(v39) = sub_2741C737C();
  v12 = sub_2741C764C();
  v14 = v13;
  v16 = v15;
  sub_2740A6AC8(v7, v9, v11 & 1);

  sub_2741C759C();
  v17 = sub_2741C767C();
  v19 = v18;
  v32 = v20;
  v22 = v21;

  sub_2740A6AC8(v12, v14, v16 & 1);

  v23 = v34;
  v37[0] = v34;
  v37[1] = 0;
  LOWORD(v38[0]) = 1;
  *(v38 + 2) = *v36;
  *(&v38[1] + 2) = *&v36[8];
  *(&v38[2] + 2) = *&v36[16];
  *&v38[3] = *&v36[23];
  v24 = v32;
  LODWORD(v14) = v33;
  DWORD2(v38[3]) = v33;
  *(v42 + 12) = *(&v38[2] + 12);
  v41 = v38[1];
  v42[0] = v38[2];
  v39 = v34;
  v40 = v38[0];
  v25 = v32 & 1;
  v35 = v32 & 1;
  v26 = v34;
  v27 = v38[0];
  v28 = v42[1];
  *(a1 + 48) = v38[2];
  *(a1 + 64) = v28;
  v29 = v41;
  *(a1 + 16) = v27;
  *(a1 + 32) = v29;
  *a1 = v26;
  *(a1 + 80) = v17;
  *(a1 + 88) = v19;
  *(a1 + 96) = v24 & 1;
  *(a1 + 104) = v22;
  sub_2740A6D94(v37, v43, &qword_280938968, &qword_2741CCB48);
  sub_27409861C(v17, v19, v25);

  sub_2740A6AC8(v17, v19, v25);

  v43[0] = v23;
  v43[1] = 0;
  v44 = 1;
  v45 = 0;
  v46 = *v36;
  v47 = *&v36[8];
  *v48 = *&v36[16];
  *&v48[14] = *&v36[23];
  v49 = v14;
  return sub_27409D420(v43, &qword_280938968, &qword_2741CCB48);
}

double sub_2740C2578@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_2741C70EC();
  v25 = 1;
  sub_2740C2020(&v12);
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v38[8] = v20;
  v38[9] = v21;
  v38[10] = v22;
  v38[4] = v16;
  v38[5] = v17;
  v38[6] = v18;
  v38[7] = v19;
  v38[0] = v12;
  v38[1] = v13;
  v37 = v23;
  v39 = v23;
  v38[2] = v14;
  v38[3] = v15;
  sub_2740A6D94(&v26, &v11, &qword_280938958, &qword_2741CCB38);
  sub_27409D420(v38, &qword_280938958, &qword_2741CCB38);
  *&v24[135] = v34;
  *&v24[151] = v35;
  *&v24[167] = v36;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[103] = v32;
  *&v24[119] = v33;
  *&v24[7] = v26;
  *&v24[23] = v27;
  *&v24[39] = v28;
  *&v24[55] = v29;
  v4 = *&v24[144];
  *(a2 + 145) = *&v24[128];
  *(a2 + 161) = v4;
  *(a2 + 177) = *&v24[160];
  v5 = *&v24[80];
  *(a2 + 81) = *&v24[64];
  *(a2 + 97) = v5;
  v6 = *&v24[112];
  *(a2 + 113) = *&v24[96];
  *(a2 + 129) = v6;
  v7 = *&v24[16];
  *(a2 + 17) = *v24;
  *(a2 + 33) = v7;
  result = *&v24[32];
  v9 = *&v24[48];
  *(a2 + 49) = *&v24[32];
  v24[183] = v37;
  v10 = v25;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 193) = *&v24[176];
  *(a2 + 65) = v9;
  return result;
}

unint64_t sub_2740C271C()
{
  result = qword_280938970;
  if (!qword_280938970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938978, &unk_2741CCB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938970);
  }

  return result;
}

uint64_t sub_2740C2800(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938980, &qword_2741CCB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2741CCB60;
  sub_2740AD50C();
  *(inited + 32) = sub_2741C834C();
  sub_2740C28B0(inited);
  v6 = v5;
  swift_setDeallocating();
  result = swift_arrayDestroy();
  *a3 = v6;
  return result;
}

void sub_2740C28B0(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_2741C848C())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938988, qword_2741D3560);
      v3 = sub_2741C854C();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_2741C848C();
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

  v3 = MEMORY[0x277D84FA0];
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
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x2743E6600](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_2741C835C();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_2740AD50C();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_2741C836C();

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
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
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
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_2741C835C();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_2740AD50C();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_2741C836C();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_2740C2B7C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_2741C848C();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938990, qword_2741CCB78);
      result = sub_2741C854C();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_2741C848C();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x2743E6600](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_2741C6B4C();
    sub_2740C2DE8(&qword_280938998, MEMORY[0x277CBCDB0]);
    result = sub_2741C7D8C();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_2740C2DE8(&qword_2809389A0, MEMORY[0x277CBCDB8]);
      do
      {
        result = sub_2741C7DBC();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

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
  return result;
}

uint64_t sub_2740C2DE8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2741C6B4C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2740C2E40()
{
  result = qword_2809389A8;
  if (!qword_2809389A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809389A8);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2740C2F58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2740C2FA0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2740C301C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v64 = sub_2741C699C();
  v75 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v3);
  v74 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389B0, &qword_2741CCCE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v59 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389B8, &qword_2741CCCF0);
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = v59 - v12;
  v80 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389C0, &qword_2741CCCF8);
  sub_2740A6D24(&qword_2809389C8, &qword_2809389C0, &qword_2741CCCF8, MEMORY[0x277CE14C0]);
  sub_2741C761C();
  if (qword_280937400 != -1)
  {
    swift_once();
  }

  v81 = xmmword_280945F38;
  v14 = sub_2740A6D24(&qword_2809389D0, &qword_2809389B0, &qword_2741CCCE8, MEMORY[0x277CDE580]);
  v15 = sub_2740A6A74();
  v70 = v14;
  sub_2741C777C();
  (*(v6 + 8))(v9, v5);
  v84 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A5C();
  v72 = *(&v81 + 1);
  v73 = v81;
  v71 = v82;
  v81 = *(v2 + 56);
  sub_2741C7A3C();
  v16 = v84;
  v17 = swift_allocObject();
  v18 = *(v2 + 48);
  *(v17 + 48) = *(v2 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(v2 + 64);
  v19 = *(v2 + 16);
  *(v17 + 16) = *v2;
  *(v17 + 32) = v19;
  v66 = v5;
  v79 = v13;
  v62 = v15;
  if (v16 == 1)
  {
    sub_2740C50E8(v2, &v81);
    if (qword_280937A98 != -1)
    {
      swift_once();
    }

    v81 = xmmword_280946D18;

    v20 = sub_2741C76AC();
    v22 = v21;
    v67 = v23;
    v68 = v20;
    v65 = v24;
    sub_27409861C(v20, v24, v23 & 1);
    v25 = qword_280937AA0;
    v69 = v22;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = &qword_280946D28;
  }

  else
  {
    sub_2740C50E8(v2, &v81);
    if (qword_280937AA8 != -1)
    {
      swift_once();
    }

    v81 = xmmword_280946D38;

    v27 = sub_2741C76AC();
    v29 = v28;
    v67 = v30;
    v68 = v27;
    v65 = v31;
    sub_27409861C(v27, v31, v30 & 1);
    v32 = qword_280937AB0;
    v69 = v29;

    if (v32 != -1)
    {
      swift_once();
    }

    v26 = &qword_280946D48;
  }

  v33 = v26[1];
  *&v81 = *v26;
  *(&v81 + 1) = v33;

  v34 = sub_2741C76AC();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
  v41 = (type metadata accessor for WFButton(0) - 8);
  v42 = (*(*v41 + 80) + 32) & ~*(*v41 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2741CB550;
  v44 = v43 + v42;
  v61 = v43;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_2740C50E0;
  *(v45 + 24) = v17;
  v60 = v38;
  v46 = v34;
  v59[0] = v36;
  sub_27409861C(v34, v36, v38 & 1);
  v59[1] = v40;

  v63 = v17;
  v47 = v74;
  sub_2741C698C();
  v48 = (v75[4])(v44, v47, v64);
  v75 = v59;
  *(v44 + v41[7]) = 0;
  v49 = (v44 + v41[8]);
  *v49 = sub_2740C5158;
  v49[1] = v45;
  v51 = MEMORY[0x28223BE20](v48, v50);
  MEMORY[0x28223BE20](v51, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
  *&v81 = v66;
  *(&v81 + 1) = MEMORY[0x277D837D0];
  v82 = v70;
  v83 = v62;
  swift_getOpaqueTypeConformance2();
  sub_2740A5DB0();
  sub_2740A5EE4();
  LOBYTE(v34) = v67;
  v53 = v68;
  v54 = v65;
  sub_2741C787C();
  LOBYTE(v36) = v60;
  v55 = v46;
  v56 = v46;
  v57 = v59[0];
  sub_2740A6AC8(v56, v59[0], v60 & 1);

  sub_2740A6AC8(v53, v54, v34 & 1);

  sub_2740A6AC8(v55, v57, v36 & 1);

  sub_2740A6AC8(v53, v54, v34 & 1);

  return (*(v77 + 8))(v79, v78);
}

uint64_t sub_2740C395C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389E0, &qword_2741CCD08);
  v3 = *(v45 - 8);
  v5 = MEMORY[0x28223BE20](v45, v4);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v43 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389E8, &qword_2741CCD10);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v39 - v16;
  v47 = a1;
  if (qword_280937A88 != -1)
  {
    swift_once();
  }

  v48 = qword_280946CF8;
  v49 = unk_280946D00;
  sub_2740A6A74();

  v48 = sub_2741C76AC();
  v49 = v18;
  v50 = v19 & 1;
  v51 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389F0, &qword_2741CCD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389F8, &qword_2741CCD20);
  sub_2740A6D24(&qword_280938A00, &qword_2809389F0, &qword_2741CCD18, MEMORY[0x277CE1138]);
  sub_2740C51B4();
  v42 = v17;
  v21 = sub_2741C7BAC();
  MEMORY[0x28223BE20](v21, v22);
  *(&v39 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A18, &qword_2741CCD28);
  sub_2740C529C();
  v23 = v43;
  sub_2741C7B9C();
  v40 = *(v10 + 16);
  v24 = v14;
  v25 = v9;
  v40(v14, v17, v9);
  v26 = v3;
  v41 = *(v3 + 16);
  v27 = v44;
  v28 = v45;
  v41(v44, v23, v45);
  v29 = v25;
  v30 = v10;
  v31 = v23;
  v32 = v27;
  v33 = v46;
  v34 = v29;
  (v40)(v46, v24);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A38, &qword_2741CCD38);
  v41((v33 + *(v35 + 48)), v32, v28);
  v36 = *(v26 + 8);
  v36(v31, v28);
  v37 = *(v30 + 8);
  v37(v42, v34);
  v36(v32, v28);
  return (v37)(v24, v34);
}

uint64_t sub_2740C3DA0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A98, &qword_2741CCDE8);
  v5 = MEMORY[0x28223BE20](v26, v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v24[-v9];
  if (qword_280937A78 != -1)
  {
    swift_once();
  }

  v28 = xmmword_280946CD8;
  sub_2740A6A74();

  v11 = sub_2741C76AC();
  v13 = v12;
  v25 = v14;
  v27 = v15;
  if (qword_280937A80 != -1)
  {
    swift_once();
  }

  v16 = qword_280946CE8;
  v17 = unk_280946CF0;
  v29 = *a1;
  v30 = *(a1 + 2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A5C();
  *&v28 = v16;
  *(&v28 + 1) = v17;
  sub_2741C7C9C();
  v28 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  LOBYTE(v16) = v29;
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  v20 = &v10[*(v26 + 36)];
  *v20 = KeyPath;
  v20[1] = sub_2740A7438;
  v20[2] = v19;
  sub_2740A6D94(v10, v7, &qword_280938A98, &qword_2741CCDE8);
  *a2 = v11;
  *(a2 + 8) = v13;
  v21 = v25 & 1;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v27;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938AA0, qword_2741CCDF0);
  sub_2740A6D94(v7, a2 + *(v22 + 48), &qword_280938A98, &qword_2741CCDE8);
  sub_27409861C(v11, v13, v21);

  sub_27409D420(v10, &qword_280938A98, &qword_2741CCDE8);
  sub_27409D420(v7, &qword_280938A98, &qword_2741CCDE8);
  sub_2740A6AC8(v11, v13, v21);
}

uint64_t sub_2740C40D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  v5 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a1 + 64);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  sub_2740C50E8(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A40, &qword_2741CCD40);
  sub_2740A6D24(&qword_280938A48, &qword_280938A40, &qword_2741CCD40, MEMORY[0x277CE1138]);
  sub_2741C7A7C();
  v12[0] = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A18, &qword_2741CCD28);
  v10 = (a2 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = sub_2740A6E2C;
  v10[2] = v8;
  return result;
}

void sub_2740C4268(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v14 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x277D7BB68]) init];
  v14[0] = *(a1 + 24);
  v15 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  v7 = sub_2741C80DC();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_2741C80AC();
  v8 = v6;
  sub_2740C50E8(a1, v14);
  v9 = sub_2741C809C();
  v10 = swift_allocObject();
  v11 = *a1;
  *(v10 + 56) = a1[1];
  v12 = a1[3];
  *(v10 + 72) = a1[2];
  *(v10 + 88) = v12;
  v13 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v13;
  *(v10 + 32) = v8;
  *(v10 + 104) = *(a1 + 8);
  *(v10 + 40) = v11;
  sub_2740CE980(0, 0, v5, &unk_2741CCDD8, v10);
}

uint64_t sub_2740C4410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[16] = sub_2741C80AC();
  v5[17] = sub_2741C809C();
  v7 = sub_2741C805C();
  v5[18] = v7;
  v5[19] = v6;

  return MEMORY[0x2822009F8](sub_2740C44AC, v7, v6);
}

uint64_t sub_2740C44AC()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A3C();
  v3 = *(v0 + 48);
  *(v0 + 160) = *(v0 + 40);
  *(v0 + 168) = v3;

  return MEMORY[0x2822009F8](sub_2740C4548, 0, 0);
}

uint64_t sub_2740C4548()
{
  v6 = *(v0 + 160);
  v1 = *(v0 + 112);
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = sub_2740C4650;
  v4 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 208, 0, 0, 0xD000000000000012, 0x80000002741D9FD0, sub_2740C56D4, v2, v4);
}

uint64_t sub_2740C4650()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_2740C4828;
  }

  else
  {

    v2 = sub_2740C4774;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2740C478C()
{
  *(v0 + 88) = *(*(v0 + 120) + 56);
  *(v0 + 210) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();

  return MEMORY[0x2822009F8](sub_2740C49A8, 0, 0);
}

uint64_t sub_2740C4828()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return MEMORY[0x2822009F8](sub_2740C4894, v1, v2);
}

uint64_t sub_2740C4894()
{
  v1 = v0[24];
  sub_2741C856C();
  v0[7] = 0;
  v0[8] = 0xE000000000000000;
  MEMORY[0x2743E5FB0](0xD000000000000015, 0x80000002741D9FF0);
  v0[13] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2741C862C();
  sub_2740CB218(v0[7], v0[8], 2036625250, 0xE400000000000000);

  return MEMORY[0x2822009F8](sub_2740C49A8, 0, 0);
}

uint64_t sub_2740C49A8(uint64_t a1)
{
  *(v1 + 200) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740C4A34, v3, v2);
}

uint64_t sub_2740C4A34()
{
  v1 = *(v0 + 120);

  *(v0 + 72) = *(v1 + 40);
  *(v0 + 209) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  return MEMORY[0x2822009F8](sub_2740C4AD4, v2, v3);
}

uint64_t sub_2740C4AD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2740C4B34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_2741C70EC();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return a4(a1);
}

uint64_t sub_2740C4BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A58, &qword_2741CCD80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v49 = (&v43 - v7);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A60, &unk_2741CE130);
  v9 = MEMORY[0x28223BE20](v47, v8);
  v48 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A68, &qword_2741CCD88);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v43 - v20;
  if (qword_280937A90 != -1)
  {
    swift_once();
  }

  v52 = xmmword_280946D08;
  sub_2740A6A74();

  v22 = sub_2741C76AC();
  v24 = v23;
  v50 = v25;
  v27 = v26;
  v52 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  v28 = 1;
  if (v51 == 1)
  {
    sub_2741C6D3C();
    v29 = *(v47 + 36);
    v47 = v4;
    v30 = &v13[v29];
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A78, &unk_2741CF6C0);
    v45 = v27;
    v32 = *(v31 + 28);
    v46 = v5;
    v33 = *MEMORY[0x277CDF440];
    v34 = sub_2741C6CCC();
    (*(*(v34 - 8) + 104))(v30 + v32, v33, v34);
    *v30 = swift_getKeyPath();
    v44 = v22;
    v35 = v48;
    sub_2740A6D94(v13, v48, &qword_280938A60, &unk_2741CE130);
    v36 = v49;
    *v49 = 0;
    *(v36 + 8) = 1;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A80, &qword_2741CCDC8);
    sub_2740A6D94(v35, v36 + *(v37 + 48), &qword_280938A60, &unk_2741CE130);
    sub_27409D420(v13, &qword_280938A60, &unk_2741CE130);
    v38 = v35;
    v22 = v44;
    v5 = v46;
    v4 = v47;
    sub_27409D420(v38, &qword_280938A60, &unk_2741CE130);
    v39 = v36;
    v27 = v45;
    sub_2740C553C(v39, v21);
    v28 = 0;
  }

  (*(v5 + 56))(v21, v28, 1, v4);
  sub_2740A6D94(v21, v18, &qword_280938A68, &qword_2741CCD88);
  *a2 = v22;
  *(a2 + 8) = v24;
  v40 = v50 & 1;
  *(a2 + 16) = v50 & 1;
  *(a2 + 24) = v27;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A70, &qword_2741CCD90);
  sub_2740A6D94(v18, a2 + *(v41 + 48), &qword_280938A68, &qword_2741CCD88);
  sub_27409861C(v22, v24, v40);

  sub_27409D420(v21, &qword_280938A68, &qword_2741CCD88);
  sub_27409D420(v18, &qword_280938A68, &qword_2741CCD88);
  sub_2740A6AC8(v22, v24, v40);
}

uint64_t sub_2740C5010(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  return sub_2741C7A4C();
}

uint64_t sub_2740C5120()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2740C51B4()
{
  result = qword_280938A08;
  if (!qword_280938A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809389F8, &qword_2741CCD20);
    sub_2740C5240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938A08);
  }

  return result;
}

unint64_t sub_2740C5240()
{
  result = qword_280938A10;
  if (!qword_280938A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938A10);
  }

  return result;
}

unint64_t sub_2740C529C()
{
  result = qword_280938A20;
  if (!qword_280938A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938A18, &qword_2741CCD28);
    sub_2740A6D24(&qword_280938A28, &qword_280938A30, &qword_2741CCD30, MEMORY[0x277CDF028]);
    sub_2740A6D24(&qword_2809383E8, &qword_2809383F0, &qword_2741CE8A0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938A20);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2740C5470(uint64_t a1)
{
  v2 = sub_2741C6CCC();
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return MEMORY[0x2743E5000](v5);
}

uint64_t sub_2740C553C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A58, &qword_2741CCD80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740C55AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2740C5614(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27409D648;

  return sub_2740C4410(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_2740C56F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809389B8, &qword_2741CCCF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F38, &unk_2741CB670);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F40, &qword_2741D5B30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809389B0, &qword_2741CCCE8);
  sub_2740A6D24(&qword_2809389D0, &qword_2809389B0, &qword_2741CCCE8, MEMORY[0x277CDE580]);
  sub_2740A6A74();
  swift_getOpaqueTypeConformance2();
  sub_2740A5DB0();
  sub_2740A5EE4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2740C5880()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938AC0, &unk_2741CCF60);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v13[-v4];
  v20 = *(v0 + 40);
  v6 = v20;
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  v9 = *(v0 + 80);
  *(v8 + 80) = *(v0 + 64);
  *(v8 + 96) = v9;
  *(v8 + 112) = *(v0 + 96);
  v10 = *(v0 + 16);
  *(v8 + 16) = *v0;
  *(v8 + 32) = v10;
  v11 = *(v0 + 48);
  *(v8 + 48) = *(v0 + 32);
  *(v8 + 64) = v11;
  v19 = v6;
  v14 = &v19;
  v15 = KeyPath;
  v16 = sub_2740C7160;
  v17 = v8;
  sub_2740C7174(&v20, v18);
  sub_2740C71E4(v0, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938AD0, &unk_2741CCF90);
  sub_2740C721C();
  sub_2741C762C();

  sub_2740C7310(&v20);
  if (qword_280937A00 != -1)
  {
    swift_once();
  }

  v18[0] = qword_280946B58;
  v18[1] = unk_280946B60;
  sub_2740A6D24(&qword_280938AF0, &qword_280938AC0, &unk_2741CCF60, MEMORY[0x277CDE5A0]);
  sub_2740A6A74();
  sub_2741C777C();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_2740C5AE4(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938AE0, &qword_2741D2B90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15[-v7];
  v9 = *a1;
  v10 = swift_allocObject();
  v11 = *(a2 + 32);
  *(v10 + 72) = *(a2 + 48);
  v12 = *(a2 + 80);
  *(v10 + 88) = *(a2 + 64);
  *(v10 + 104) = v12;
  v13 = *(a2 + 16);
  *(v10 + 24) = *a2;
  *(v10 + 40) = v13;
  *(v10 + 16) = v9;
  *(v10 + 120) = *(a2 + 96);
  *(v10 + 56) = v11;
  v17 = v9;
  v18 = a2;
  sub_2740C71E4(a2, &v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B10, &qword_2741CCFA8);
  sub_2740A6D24(&qword_280938B18, &qword_280938B10, &qword_2741CCFA8, MEMORY[0x277CE1138]);
  sub_2741C7A7C();
  v19 = *(a2 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A5C();
  v16 = a2;
  sub_2740A6D24(&qword_280938AE8, &qword_280938AE0, &qword_2741D2B90, MEMORY[0x277CDF028]);
  sub_2741C786C();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2740C5D60(char a1)
{
  if (a1 == 1 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B30, &qword_2741CCFC8), sub_2741C7A3C(), v2 == 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B28, &qword_2741CCFC0);
    sub_2741C7A4C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
    return sub_2741C7A4C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938AB0, qword_2741CCE18);
    return sub_2741C7AFC();
  }
}

uint64_t sub_2740C5EC4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  *a3 = sub_2741C70EC();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B38, &qword_2741CCFD0);
  return sub_2740C5F2C(v4, a2, a3 + *(v6 + 44));
}

uint64_t sub_2740C5F2C@<X0>(unsigned __int8 a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v4 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B40, &qword_2741CCFD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v38 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B48, &qword_2741CCFE0);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v44 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v38 - v14;
  v42 = v6;
  v43 = v5;
  v41 = v4;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (qword_2809379C8 != -1)
      {
        swift_once();
      }

      v16 = &qword_280946AE8;
    }

    else
    {
      if (qword_2809379C0 != -1)
      {
        swift_once();
      }

      v16 = &qword_280946AD8;
    }
  }

  else if (v4)
  {
    if (qword_2809379B8 != -1)
    {
      swift_once();
    }

    v16 = &qword_280946AC8;
  }

  else
  {
    if (qword_280937408 != -1)
    {
      swift_once();
    }

    v16 = &qword_280945F48;
  }

  v17 = *v16;

  *&v46 = v17;
  *(&v46 + 1) = v18;
  sub_2740A6A74();
  v19 = sub_2741C76AC();
  v21 = v20;
  LOBYTE(v17) = v22;
  sub_2741C799C();
  v23 = sub_2741C763C();
  v25 = v24;
  v39 = v26;
  v28 = v27;

  sub_2740A6AC8(v19, v21, v17 & 1);

  v46 = *v40;
  v47 = *(v40 + 16);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938AB0, qword_2741CCE18);
  MEMORY[0x2743E5B70](&v45, v29);
  v30 = 1;
  v32 = v42;
  v31 = v43;
  if (v45 == v41)
  {
    *&v46 = sub_2741C79CC();
    sub_2741C75BC();
    v33 = v38;
    sub_2741C76EC();

    (*(v32 + 32))(v15, v33, v31);
    v30 = 0;
  }

  (*(v32 + 56))(v15, v30, 1, v31);
  v34 = v44;
  sub_2740C7570(v15, v44);
  *a3 = v23;
  *(a3 + 8) = v25;
  v35 = v39 & 1;
  *(a3 + 16) = v39 & 1;
  *(a3 + 24) = v28;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B50, &qword_2741CCFE8);
  sub_2740C7570(v34, a3 + *(v36 + 64));
  sub_27409861C(v23, v25, v35);

  sub_2740C75E0(v15);
  sub_2740C75E0(v34);
  sub_2740A6AC8(v23, v25, v35);
}

uint64_t sub_2740C6370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B20, &qword_2741CCFB8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v63 - v6;
  v8 = sub_2741C795C();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  MEMORY[0x28223BE20](v11, v12);
  v69[0] = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B28, &qword_2741CCFC0);
  sub_2741C7A3C();
  if (v70 > 1u)
  {
    if (v70 != 2)
    {
      sub_2741C714C();
      sub_2741C768C();
      (*(v9 + 56))(v7, 1, 1, v8);
      return sub_2741C791C();
    }

    v14 = *(a1 + 96);
    v68 = a2;
    if (v14)
    {
      if (qword_2809379F0 != -1)
      {
        swift_once();
      }

      v15 = &qword_280946B38;
    }

    else
    {
      if (qword_2809379E8 != -1)
      {
        swift_once();
      }

      v15 = &qword_280946B28;
    }

    v40 = *v15;

    *&v69[0] = v40;
    *(&v69[0] + 1) = v41;
    sub_2740A6A74();
    v67 = sub_2741C76AC();
    v66 = v42;
    v43 = swift_allocObject();
    v44 = *(a1 + 80);
    *(v43 + 80) = *(a1 + 64);
    *(v43 + 96) = v44;
    *(v43 + 112) = *(a1 + 96);
    v45 = *(a1 + 16);
    *(v43 + 16) = *a1;
    *(v43 + 32) = v45;
    v46 = *(a1 + 48);
    *(v43 + 48) = *(a1 + 32);
    *(v43 + 64) = v46;
    sub_2740C71E4(a1, v69);
    sub_2741C793C();

    if (qword_280937388 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  v68 = a2;
  if (!v70)
  {
    if (*(a1 + 96))
    {
      if (qword_2809379D8 != -1)
      {
        swift_once();
      }

      v13 = &qword_280946B08;
    }

    else
    {
      if (qword_2809379D0 != -1)
      {
        swift_once();
      }

      v13 = &qword_280946AF8;
    }

    v19 = *v13;
    v18 = v13[1];
    *&v69[0] = 34;
    *(&v69[0] + 1) = 0xE100000000000000;
    v20 = *(a1 + 24);
    v21 = *(a1 + 32);

    MEMORY[0x2743E5FB0](v20, v21);
    MEMORY[0x2743E5FB0](34, 0xE100000000000000);
    v22 = v69[0];
    *&v69[0] = v19;
    *(&v69[0] + 1) = v18;

    MEMORY[0x2743E5FB0](v22, *(&v22 + 1));

    sub_2740A6A74();
    v67 = sub_2741C76AC();
    v66 = v23;
    v64 = v24;
    v65 = v25;
    if (qword_2809379E0 != -1)
    {
      swift_once();
    }

    v69[0] = xmmword_280946B18;

    v63[2] = sub_2741C76AC();
    v63[1] = v26;
    v27 = swift_allocObject();
    v28 = *(a1 + 80);
    *(v27 + 80) = *(a1 + 64);
    *(v27 + 96) = v28;
    *(v27 + 112) = *(a1 + 96);
    v29 = *(a1 + 16);
    *(v27 + 16) = *a1;
    *(v27 + 32) = v29;
    v30 = *(a1 + 48);
    *(v27 + 48) = *(a1 + 32);
    *(v27 + 64) = v30;
    sub_2740C71E4(a1, v69);
    sub_2741C793C();

    if (qword_2809379F8 != -1)
    {
      swift_once();
    }

    v69[0] = xmmword_280946B48;

    v31 = sub_2741C76AC();
    v33 = v32;
    v35 = v34;
    v36 = swift_allocObject();
    v37 = *(a1 + 80);
    *(v36 + 80) = *(a1 + 64);
    *(v36 + 96) = v37;
    *(v36 + 112) = *(a1 + 96);
    v38 = *(a1 + 16);
    *(v36 + 16) = *a1;
    *(v36 + 32) = v38;
    v39 = *(a1 + 48);
    *(v36 + 48) = *(a1 + 32);
    *(v36 + 64) = v39;
    sub_2740C71E4(a1, v69);
    sub_2741C794C();

    sub_2740A6AC8(v31, v33, v35 & 1);

    return sub_2741C792C();
  }

  if (*(a1 + 96))
  {
    if (qword_2809379F0 != -1)
    {
      swift_once();
    }

    v16 = &qword_280946B38;
  }

  else
  {
    if (qword_2809379E8 != -1)
    {
      swift_once();
    }

    v16 = &qword_280946B28;
  }

  v47 = *v16;

  *&v69[0] = v47;
  *(&v69[0] + 1) = v48;
  sub_2740A6A74();
  v67 = sub_2741C76AC();
  v66 = v49;
  v50 = swift_allocObject();
  v51 = *(a1 + 80);
  *(v50 + 80) = *(a1 + 64);
  *(v50 + 96) = v51;
  *(v50 + 112) = *(a1 + 96);
  v52 = *(a1 + 16);
  *(v50 + 16) = *a1;
  *(v50 + 32) = v52;
  v53 = *(a1 + 48);
  *(v50 + 48) = *(a1 + 32);
  *(v50 + 64) = v53;
  sub_2740C71E4(a1, v69);
  sub_2741C793C();

  if (qword_280937388 != -1)
  {
LABEL_36:
    swift_once();
  }

LABEL_34:
  v69[0] = xmmword_280945E48;

  v54 = sub_2741C76AC();
  v56 = v55;
  v58 = v57;
  v59 = swift_allocObject();
  v60 = *(a1 + 80);
  *(v59 + 80) = *(a1 + 64);
  *(v59 + 96) = v60;
  *(v59 + 112) = *(a1 + 96);
  v61 = *(a1 + 16);
  *(v59 + 16) = *a1;
  *(v59 + 32) = v61;
  v62 = *(a1 + 48);
  *(v59 + 48) = *(a1 + 32);
  *(v59 + 64) = v62;
  sub_2740C71E4(a1, v69);
  sub_2741C794C();

  sub_2740A6AC8(v54, v56, v58 & 1);

  return sub_2741C792C();
}

uint64_t sub_2740C6D20(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B30, &qword_2741CCFC8);
  sub_2741C7A3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938AB0, qword_2741CCE18);
  return sub_2741C7AFC();
}

uint64_t sub_2740C6DF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938AC8, qword_2741CD810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938AF8, &qword_2741CCFA0);
  sub_2740A6D24(&qword_280938B00, &qword_280938AC8, qword_2741CD810, MEMORY[0x277D83980]);
  sub_2740C73B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938AE0, &qword_2741D2B90);
  sub_2740A6D24(&qword_280938AE8, &qword_280938AE0, &qword_2741D2B90, MEMORY[0x277CDF028]);
  swift_getOpaqueTypeConformance2();
  return sub_2741C7B5C();
}

void *sub_2740C6F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_2741C7A2C();
  LOBYTE(v19) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938AA8, &qword_2741CCE10);
  sub_2741C7A2C();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v11 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938AB0, qword_2741CCE18);
    result = MEMORY[0x2743E5B70](&v19, v13);
    v14 = v19;
    *a6 = a1;
    *(a6 + 8) = a2;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4;
    *(a6 + 32) = a5;
    *(a6 + 40) = &unk_2883260B0;
    *(a6 + 48) = v14;
    *(a6 + 56) = 0;
    *(a6 + 64) = v17;
    *(a6 + 72) = v18;
    *(a6 + 80) = v17;
    *(a6 + 88) = v18;
    *(a6 + 96) = wapiCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2740C70EC()
{
  result = qword_280938AB8;
  if (!qword_280938AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938AB8);
  }

  return result;
}

uint64_t sub_2740C7174(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938AC8, qword_2741CD810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2740C721C()
{
  result = qword_280938AD8;
  if (!qword_280938AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938AD0, &unk_2741CCF90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938AE0, &qword_2741D2B90);
    sub_2740A6D24(&qword_280938AE8, &qword_280938AE0, &qword_2741D2B90, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938AD8);
  }

  return result;
}

uint64_t sub_2740C7310(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938AC8, qword_2741CD810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2740C7378()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2740C73B0()
{
  result = qword_280938B08;
  if (!qword_280938B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938B08);
  }

  return result;
}

uint64_t sub_2740C7404()
{

  return MEMORY[0x2821FE8E8](v0, 121, 7);
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_2740C7570(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B48, &qword_2741CCFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740C75E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B48, &qword_2741CCFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2740C7648()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938AC0, &unk_2741CCF60);
  sub_2740A6D24(&qword_280938AF0, &qword_280938AC0, &unk_2741CCF60, MEMORY[0x277CDE5A0]);
  sub_2740A6A74();
  return swift_getOpaqueTypeConformance2();
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_2740C7724(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 26))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_2740C7780(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}