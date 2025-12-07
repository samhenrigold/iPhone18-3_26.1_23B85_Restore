uint64_t sub_1D7FA3118(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  ObjectType = swift_getObjectType();
  v12 = a2;
  (*(a3 + 8))(ObjectType, a3);
  sub_1D80333EC(a4);

  [a2 invalidateLayout];
  v11 = 1;
  return a5(&v11);
}

uint64_t sub_1D7FA31C4(uint64_t a1)
{
  v3 = *(sub_1D818E794() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D7FA3118(a1, v5, v6, v1 + v4, v7);
}

void *BlueprintLayoutTransitionManager.pluginLayoutTransition(layoutOptions:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x235uLL);
  OUTLINED_FUNCTION_12();
  if (*(v2 + *(v5 + 120)) && (memcpy(__srca, __src, 0x235uLL), , v6 = sub_1D80D4B60(__srca), , v6))
  {
    v7 = __dst[1];
    v8 = *(v6 + 648);

    memcpy(__srca, __dst, 0x235uLL);
    __srca[71] = v7;
    __srca[72] = v8;
    nullsub_1();
    memcpy(a2, __srca, 0x248uLL);
    return sub_1D7E222B8(__dst, v10);
  }

  else
  {
    sub_1D7FA3364(__srca);
    return memcpy(a2, __srca, 0x248uLL);
  }
}

uint64_t sub_1D7FA336C(void *a1, uint64_t a2)
{
  v3 = a1;
  v53 = *a1;
  v4 = v53[11];
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v41 - v6;
  v52 = *(v7 + 104);
  v44 = type metadata accessor for BlueprintLayoutItem(0, v4, v52, v8);
  v9 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v51 = &v41 - v10;
  v11 = sub_1D818E994();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E69E7CC0];
  v62 = MEMORY[0x1E69E7CC0];
  v63 = MEMORY[0x1E69E7CC0];
  result = sub_1D7E36AB8(a2);
  if (result)
  {
    v17 = result;
    if (result >= 1)
    {
      v55 = v4;
      v50 = v11;
      v18 = 0;
      v19 = a2 & 0xC000000000000001;
      v48 = (v12 + 8);
      v42 = (v5 + 16);
      v41 = (v9 + 8);
      v20 = &selRef_setMenu_;
      v21 = &selRef_attemptTransitionToState_animated_;
      v54 = MEMORY[0x1E69E7CC0];
      v56 = MEMORY[0x1E69E7CC0];
      v49 = a2;
      v47 = a2 & 0xC000000000000001;
      while (1)
      {
        if (v19)
        {
          v22 = MEMORY[0x1DA714420](v18, a2);
        }

        else
        {
          v22 = *(a2 + 8 * v18 + 32);
        }

        v23 = v22;
        v24 = [v22 v20[114]];
        if (v24 != 2)
        {
          if (v24 == 1)
          {
            [v23 v21[85]];
            if (v37 > 0.0 && v36 > 0.0)
            {
              v38 = v23;
              MEMORY[0x1DA713500]();
              if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1D81913B4();
              }

              sub_1D8191404();

              v56 = v63;
              goto LABEL_30;
            }
          }

          else if (!v24)
          {
            [v23 v21[85]];
            if (v26 > 0.0 && v25 > 0.0)
            {
              v27 = [v23 indexPath];
              sub_1D818E924();

              v28 = v53[12];
              v59[0] = v53[10];
              v59[1] = v55;
              v59[2] = v28;
              v60 = v52;
              v46 = type metadata accessor for BlueprintLayout(0, v59);
              LOBYTE(v27) = BlueprintLayout.contains(indexPath:)(v14, v46);
              v29 = *v48;
              v30 = v50;
              (*v48)(v14, v50);
              if (v27)
              {
                v31 = [v23 indexPath];
                sub_1D818E924();

                v43 = v3;
                v32 = v51;
                BlueprintLayout.subscript.getter(v14, v46);
                v46 = v14;
                v29(v14, v30);
                (*v42)(v45, v32, v55);
                sub_1D7E0631C(0, qword_1EDBB9A28, &protocol descriptor for ViewportRestorable);
                if (swift_dynamicCast())
                {
                  sub_1D7E05450(v57, v59);
                  v33 = v60;
                  v34 = v61;
                  __swift_project_boxed_opaque_existential_1(v59, v60);
                  v35 = (*(v34 + 8))(v33, v34);
                  a2 = v49;
                  v19 = v47;
                  if (v35)
                  {
                    __swift_destroy_boxed_opaque_existential_1Tm(v59);
                    v3 = v43;
                    v14 = v46;
                    goto LABEL_26;
                  }

                  (*v41)(v51, v44);

                  __swift_destroy_boxed_opaque_existential_1Tm(v59);
                  v3 = v43;
                  v14 = v46;
                }

                else
                {
                  v58 = 0;
                  memset(v57, 0, sizeof(v57));
                  sub_1D7FA4F08(v57, &unk_1EDBB0E98, qword_1EDBB9A28, &protocol descriptor for ViewportRestorable);
                  v3 = v43;
                  v14 = v46;
                  a2 = v49;
                  v19 = v47;
LABEL_26:
                  v39 = v23;
                  MEMORY[0x1DA713500]();
                  if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1D81913B4();
                  }

                  sub_1D8191404();

                  (*v41)(v51, v44);
                  v54 = v62;
                }
              }

              else
              {

                a2 = v49;
                v19 = v47;
              }

LABEL_30:
              v20 = &selRef_setMenu_;
              v21 = &selRef_attemptTransitionToState_animated_;
              goto LABEL_22;
            }
          }
        }

LABEL_22:
        if (v17 == ++v18)
        {
          goto LABEL_32;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v54 = v15;
    v56 = v15;
LABEL_32:
    v40 = v56;
    if (!sub_1D7E36AB8(v56))
    {
      v40 = v54;
    }

    return v40;
  }

  return result;
}

void sub_1D7FA39F4(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_1D7E36AB8(a1);
  for (i = 0; v10 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1DA714420](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v12 = *(a1 + 8 * i + 32);
    }

    v13 = v12;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    [v12 frame];
    v15 = v14;
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    if (CGRectGetMinX(v18) <= v15 && ([v13 frame], v17 = v16, v19.origin.x = a2, v19.origin.y = a3, v19.size.width = a4, v19.size.height = a5, CGRectGetMinY(v19) <= v17))
    {
      sub_1D8192274();
      sub_1D81922B4();
      sub_1D81922C4();
      sub_1D8192284();
    }

    else
    {
    }
  }
}

id sub_1D7FA3C3C(void *a1, void *a2, void *a3)
{
  v5 = sub_1D818E994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v34[-v11];
  v13 = [a1 representedElementCategory];
  if (v13 != 1)
  {
    if (!v13)
    {
      memcpy(v35, a3 + 80, sizeof(v35));
      sub_1D7E6755C(v35, v34);
      v14 = [a1 indexPath];
      sub_1D818E924();

      v15 = v35[152];
      if (*(v35[152] + 16))
      {
        v16 = sub_1D7E7DB08();
        if (v17)
        {
          v18 = *(v6 + 8);
          v19 = *(*(v15 + 56) + 8 * v16);
          v18(v12, v5);
          sub_1D7E598FC(v35);
          return v19;
        }
      }

      (*(v6 + 8))(v12, v5);
      sub_1D7E598FC(v35);
    }

    return 0;
  }

  v20 = [a1 representedElementKind];
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  v22 = sub_1D8190F14();
  v24 = v23;

  memcpy(v35, a3 + 156, 0x260uLL);
  v25 = a3[233];
  v26 = [a1 indexPath];
  sub_1D818E924();

  if (!*(v25 + 16))
  {

LABEL_14:
    (*(v6 + 8))(v8, v5);
    return 0;
  }

  v27 = sub_1D7E11428(v22, v24);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    goto LABEL_14;
  }

  v30 = *(*(v25 + 56) + 8 * v27);
  sub_1D8190DB4();
  v19 = sub_1D7EA83F4(v8, v30);

  if (!v19)
  {
    goto LABEL_14;
  }

  if (BlueprintLayoutCollectionLayoutAttributes.requiresPinning.getter())
  {
    memcpy(v36, v35, sizeof(v36));
    sub_1D7EAF9D8(v35, v34);
    BlueprintLayoutCollectionPinAdjuster.adjusted(layoutAttributes:offset:insets:contentSize:)();
    v32 = v31;

    (*(v6 + 8))(v8, v5);
    memcpy(v34, v36, 0x260uLL);
    sub_1D7EAFC0C(v34);
    return v32;
  }

  else
  {
    (*(v6 + 8))(v8, v5);
  }

  return v19;
}

char *BlueprintLayoutTransitionManager.deinit()
{
  v1 = *v0;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_12();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 104)]);
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_12();

  return v0;
}

uint64_t BlueprintLayoutTransitionManager.__deallocating_deinit()
{
  BlueprintLayoutTransitionManager.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1D7FA4100()
{
  result = qword_1ECA0E6E0;
  if (!qword_1ECA0E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E6E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BlueprintLayoutTransitionResult(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D7FA42C0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D7E76C38(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D7FA433C(v6);
  return sub_1D8192284();
}

void sub_1D7FA433C(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1D81925A4();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1D7FE744C(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1D7FA455C(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1D7FA441C(0, v3, 1, a1);
  }
}

void sub_1D7FA441C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v8;
        v13 = v11;
        [v12 frame];
        v15 = v14;
        [v13 frame];
        v17 = v16;
        [v12 frame];
        v19 = v18;
        v21 = v20;
        [v13 frame];
        v23 = v22;
        v25 = v24;

        if (v15 == v17)
        {
          if (v19 > v23)
          {
            break;
          }
        }

        else if (v21 >= v25)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v26 = *v10;
        v8 = *(v10 + 8);
        *v10 = v8;
        *(v10 + 8) = v26;
        v10 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1D7FA455C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v7 = &selRef_attemptTransitionToState_animated_;
    while (1)
    {
      v8 = v5;
      v5 = (v5 + 1);
      if (v5 < v4)
      {
        v128 = v8;
        v130 = v6;
        v133 = v4;
        v9 = (*a3 + 8 * v8);
        v10 = 8 * v8;
        v12 = *v9;
        v11 = v9 + 2;
        v13 = *(*a3 + 8 * v5);
        v14 = v12;
        [v13 v7[85]];
        v16 = v15;
        [v14 v7[85]];
        v18 = v17;
        [v13 v7[85]];
        v20 = v19;
        v22 = v21;
        [v14 v7[85]];
        v24 = v23;
        v26 = v25;

        if (v16 == v18)
        {
          v27 = v20 <= v24;
        }

        else
        {
          v27 = v22 < v26;
        }

        v28 = v133;
        for (i = v10 + 8; ; i += 8)
        {
          v30 = (v5 + 1);
          if ((v5 + 1) >= v28)
          {
            break;
          }

          v31 = *(v11 - 1);
          v32 = *v11;
          v33 = v31;
          [v32 v7[85]];
          v35 = v34;
          [v33 v7[85]];
          v37 = v36;
          [v32 v7[85]];
          v39 = v38;
          v41 = v40;
          [v33 v7[85]];
          v43 = v42;
          v45 = v44;

          if (v35 == v37)
          {
            v28 = v133;
            if (((v27 ^ (v39 > v43)) & 1) == 0)
            {
              break;
            }
          }

          else
          {
            v28 = v133;
            if (v27 == v41 >= v45)
            {
              break;
            }
          }

          ++v11;
          v5 = (v5 + 1);
        }

        if (v27)
        {
          v8 = v128;
          v6 = v130;
          if (v30 < v128)
          {
            goto LABEL_128;
          }

          if (v128 < v30)
          {
            v46 = v128;
            do
            {
              if (v46 != v5)
              {
                v47 = *a3;
                if (!*a3)
                {
                  goto LABEL_135;
                }

                v48 = *(v47 + v10);
                *(v47 + v10) = *(v47 + i);
                *(v47 + i) = v48;
              }

              v46 = (v46 + 1);
              i -= 8;
              v10 += 8;
              v49 = v46 < v5;
              v5 = (v5 - 1);
            }

            while (v49);
          }

          v5 = v30;
        }

        else
        {
          v5 = (v5 + 1);
          v8 = v128;
          v6 = v130;
        }
      }

      v50 = a3[1];
      if (v5 < v50)
      {
        if (__OFSUB__(v5, v8))
        {
          goto LABEL_127;
        }

        if (v5 - v8 < a4)
        {
          v51 = v8 + a4;
          if (__OFADD__(v8, a4))
          {
            goto LABEL_129;
          }

          if (v51 >= v50)
          {
            v51 = a3[1];
          }

          if (v51 >= v8)
          {
            if (v5 == v51)
            {
              goto LABEL_43;
            }

            v129 = v8;
            v131 = v6;
            v52 = *a3;
            v53 = *a3 + 8 * v5 - 8;
            v54 = v8 - v5;
            v133 = v51;
LABEL_33:
            v55 = *(v52 + 8 * v5);
            v56 = v54;
            v57 = v53;
            while (1)
            {
              v58 = *v57;
              v59 = v55;
              v60 = v58;
              [v59 v7[85]];
              v62 = v61;
              [v60 v7[85]];
              v64 = v63;
              [v59 v7[85]];
              v66 = v65;
              v68 = v67;
              [v60 v7[85]];
              v70 = v69;
              v72 = v71;

              if (v62 == v64)
              {
                if (v66 > v70)
                {
                  goto LABEL_41;
                }
              }

              else if (v68 >= v72)
              {
                goto LABEL_41;
              }

              if (!v52)
              {
                break;
              }

              v73 = *v57;
              v55 = *(v57 + 8);
              *v57 = v55;
              *(v57 + 8) = v73;
              v57 -= 8;
              if (__CFADD__(v56++, 1))
              {
LABEL_41:
                v5 = (v5 + 1);
                v53 += 8;
                --v54;
                if (v5 == v133)
                {
                  v5 = v133;
                  v8 = v129;
                  v6 = v131;
                  goto LABEL_43;
                }

                goto LABEL_33;
              }
            }

            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
            goto LABEL_136;
          }

LABEL_130:
          __break(1u);
LABEL_131:
          v6 = sub_1D8120804(v6);
          goto LABEL_98;
        }
      }

LABEL_43:
      if (v5 < v8)
      {
        goto LABEL_126;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7EE4840();
        v6 = v118;
      }

      v75 = v6[2];
      v76 = v75 + 1;
      if (v75 >= v6[3] >> 1)
      {
        sub_1D7EE4840();
        v6 = v119;
      }

      v6[2] = v76;
      v77 = (v6 + 4);
      v78 = &v6[2 * v75 + 4];
      *v78 = v8;
      v78[1] = v5;
      v133 = *a1;
      if (!*a1)
      {
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }

      if (v75)
      {
        break;
      }

LABEL_92:
      v4 = a3[1];
      if (v5 >= v4)
      {
        goto LABEL_96;
      }
    }

    while (1)
    {
      v79 = v76 - 1;
      v80 = &v77[2 * v76 - 2];
      v81 = &v6[2 * v76];
      if (v76 >= 4)
      {
        break;
      }

      if (v76 == 3)
      {
        v82 = v6[4];
        v83 = v6[5];
        v92 = __OFSUB__(v83, v82);
        v84 = v83 - v82;
        v85 = v92;
LABEL_63:
        if (v85)
        {
          goto LABEL_113;
        }

        v97 = *v81;
        v96 = v81[1];
        v98 = __OFSUB__(v96, v97);
        v99 = v96 - v97;
        v100 = v98;
        if (v98)
        {
          goto LABEL_116;
        }

        v101 = v80[1];
        v102 = v101 - *v80;
        if (__OFSUB__(v101, *v80))
        {
          goto LABEL_119;
        }

        if (__OFADD__(v99, v102))
        {
          goto LABEL_121;
        }

        if (v99 + v102 >= v84)
        {
          if (v84 < v102)
          {
            v79 = v76 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      if (v76 < 2)
      {
        goto LABEL_115;
      }

      v104 = *v81;
      v103 = v81[1];
      v92 = __OFSUB__(v103, v104);
      v99 = v103 - v104;
      v100 = v92;
LABEL_78:
      if (v100)
      {
        goto LABEL_118;
      }

      v106 = *v80;
      v105 = v80[1];
      v92 = __OFSUB__(v105, v106);
      v107 = v105 - v106;
      if (v92)
      {
        goto LABEL_120;
      }

      if (v107 < v99)
      {
        goto LABEL_92;
      }

LABEL_85:
      if (v79 - 1 >= v76)
      {
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
        goto LABEL_130;
      }

      if (!*a3)
      {
        goto LABEL_133;
      }

      v111 = &v77[2 * v79 - 2];
      v112 = *v111;
      v113 = v79;
      v114 = &v77[2 * v79];
      v115 = v114[1];
      sub_1D7FA4C5C((*a3 + 8 * *v111), (*a3 + 8 * *v114), (*a3 + 8 * v115), v133);
      if (v135)
      {
        goto LABEL_106;
      }

      if (v115 < v112)
      {
        goto LABEL_108;
      }

      v7 = v77;
      v116 = v5;
      v117 = v6;
      v6 = v6[2];
      if (v113 > v6)
      {
        goto LABEL_109;
      }

      *v111 = v112;
      v111[1] = v115;
      if (v113 >= v6)
      {
        goto LABEL_110;
      }

      v76 = v6 - 1;
      sub_1D8120818(v114 + 16, v6 - v113 - 1, v114);
      v117[2] = v6 - 1;
      v49 = v6 > 2;
      v6 = v117;
      v5 = v116;
      v77 = v7;
      v7 = &selRef_attemptTransitionToState_animated_;
      if (!v49)
      {
        goto LABEL_92;
      }
    }

    v86 = &v77[2 * v76];
    v87 = *(v86 - 8);
    v88 = *(v86 - 7);
    v92 = __OFSUB__(v88, v87);
    v89 = v88 - v87;
    if (v92)
    {
      goto LABEL_111;
    }

    v91 = *(v86 - 6);
    v90 = *(v86 - 5);
    v92 = __OFSUB__(v90, v91);
    v84 = v90 - v91;
    v85 = v92;
    if (v92)
    {
      goto LABEL_112;
    }

    v93 = v81[1];
    v94 = v93 - *v81;
    if (__OFSUB__(v93, *v81))
    {
      goto LABEL_114;
    }

    v92 = __OFADD__(v84, v94);
    v95 = v84 + v94;
    if (v92)
    {
      goto LABEL_117;
    }

    if (v95 >= v89)
    {
      v109 = *v80;
      v108 = v80[1];
      v92 = __OFSUB__(v108, v109);
      v110 = v108 - v109;
      if (v92)
      {
        goto LABEL_125;
      }

      if (v84 < v110)
      {
        v79 = v76 - 2;
      }

      goto LABEL_85;
    }

    goto LABEL_63;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_96:
  v133 = *a1;
  if (!*a1)
  {
LABEL_137:
    __break(1u);
    return;
  }

  v7 = v135;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_131;
  }

LABEL_98:
  v120 = v6 + 2;
  v121 = v6[2];
  while (v121 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_134;
    }

    v122 = v6;
    v6 += 2 * v121;
    v123 = *v6;
    v124 = &v120[2 * v121];
    v125 = *(v124 + 1);
    sub_1D7FA4C5C((*a3 + 8 * *v6), (*a3 + 8 * *v124), (*a3 + 8 * v125), v133);
    if (v7)
    {
      break;
    }

    if (v125 < v123)
    {
      goto LABEL_122;
    }

    if (v121 - 2 >= *v120)
    {
      goto LABEL_123;
    }

    *v6 = v123;
    v6[1] = v125;
    v126 = *v120 - v121;
    if (*v120 < v121)
    {
      goto LABEL_124;
    }

    v121 = *v120 - 1;
    sub_1D8120818(v124 + 16, v126, v124);
    *v120 = v121;
    v6 = v122;
  }

LABEL_106:
}

uint64_t sub_1D7FA4C5C(char *a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1D80E75B8(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v29 = v7;
        goto LABEL_33;
      }

      v12 = *v4;
      v13 = *v6;
      v14 = v12;
      [v13 frame];
      v16 = v15;
      [v14 frame];
      v18 = v17;
      [v13 frame];
      v20 = v19;
      v22 = v21;
      [v14 frame];
      v24 = v23;
      v26 = v25;

      if (v16 == v18)
      {
        if (v20 <= v24)
        {
          goto LABEL_13;
        }
      }

      else if (v22 < v26)
      {
LABEL_13:
        v27 = v6;
        v28 = v7 == v6++;
        if (v28)
        {
          goto LABEL_15;
        }

LABEL_14:
        *v7 = *v27;
        goto LABEL_15;
      }

      v27 = v4;
      v28 = v7 == v4++;
      if (!v28)
      {
        goto LABEL_14;
      }

LABEL_15:
      v7 += 8;
    }
  }

  sub_1D80E75B8(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v49 = v4;
LABEL_17:
  v29 = v6--;
  for (--v5; v10 > v4 && v29 > v7; --v5)
  {
    v31 = *v6;
    v32 = *(v10 - 1);
    v33 = v31;
    [v32 frame];
    v35 = v34;
    [v33 frame];
    v37 = v36;
    [v32 frame];
    v39 = v38;
    v41 = v40;
    [v33 frame];
    v43 = v42;
    v45 = v44;

    if (v35 == v37)
    {
      if (v39 <= v43)
      {
        goto LABEL_30;
      }
    }

    else if (v41 < v45)
    {
LABEL_30:
      v4 = v49;
      if (v5 + 1 != v29)
      {
        *v5 = *v6;
      }

      goto LABEL_17;
    }

    if (v10 != v5 + 1)
    {
      *v5 = *(v10 - 1);
    }

    --v10;
    v4 = v49;
  }

LABEL_33:
  v46 = v10 - v4;
  if (v29 != v4 || v29 >= &v4[v46])
  {
    memmove(v29, v4, 8 * v46);
  }

  return 1;
}

uint64_t sub_1D7FA4F08(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7E328A8(0, a2, a3, a4);
  OUTLINED_FUNCTION_4_3();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t KeyCommandTraverseStartBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D7FA4FF4()
{
  result = qword_1ECA0E6E8;
  if (!qword_1ECA0E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E6E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KeyCommandTraverseStartBehavior(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t ImageBorder.BlendMode.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t ImageBorder.init(lineWidth:color:blendMode:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = *a2;
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = v4;
  return result;
}

uint64_t ImageBorder.cacheIdentifier.getter(uint64_t a1)
{
  v1 = sub_1D81915A4();
  MEMORY[0x1DA713260](v1);

  MEMORY[0x1DA713260](14906, 0xE200000000000000);
  v2 = sub_1D8191954();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = MEMORY[0x1DA713540](v3, MEMORY[0x1E69E7DE0]);
  v6 = v5;

  MEMORY[0x1DA713260](v4, v6);

  MEMORY[0x1DA713260](14906, 0xE200000000000000);
  sub_1D8192334();
  return 0;
}

unint64_t sub_1D7FA52E8()
{
  result = qword_1ECA0E6F0;
  if (!qword_1ECA0E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E6F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ImageBorder.BlendMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PersonalizedAdsViewControllerProvider.init(buttonStyle:onboardingFlowDelegate:)(_BYTE *a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  *(v2 + 16) = *a1;
  return v2;
}

char *PersonalizedAdsViewControllerProvider.viewController(onboardingFlowDelegate:primaryAction:secondaryAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = *(v6 + 16);
  v13 = objc_allocWithZone(type metadata accessor for PersonalizedAdsViewController());
  swift_unknownObjectRetain();
  sub_1D7E19F24(a3, a4);
  sub_1D7E19F24(a5, a6);
  return sub_1D817AF7C(&v15, a1, a2, a3, a4, a5, a6);
}

void BarCompressionManager.detach(from:scrollView:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  sub_1D7FA92C4(a1, a3, v3, ObjectType, a2);
}

uint64_t BarCompressionState.State.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t sub_1D7FA571C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D7FA5778(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t BarCompressionManager.delegate.setter()
{
  OUTLINED_FUNCTION_66_0();
  v2 = v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_delegate;
  swift_beginAccess();
  *(v2 + 8) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*BarCompressionManager.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1D7F18A1C;
}

uint64_t BarCompressionManager.isEnabled.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_isEnabled;
  OUTLINED_FUNCTION_1_0(a1);
  return *(v1 + v2);
}

uint64_t BarCompressionManager.isEnabled.setter(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_isEnabled;
  result = OUTLINED_FUNCTION_0_25(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_isEnabled, a2);
  *(v2 + v4) = a1;
  return result;
}

uint64_t BarCompressionManager.shouldExpandAtBottom.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_shouldExpandAtBottom;
  OUTLINED_FUNCTION_1_0(a1);
  return *(v1 + v2);
}

void BarCompressionManager.state.getter(_BYTE *a2@<X8>)
{
  v4 = v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager____lazy_storage___state;
  v5 = *(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager____lazy_storage___state);
  v6 = v5 | (*(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager____lazy_storage___state + 2) << 16);
  if ((v5 & 0xFF00) == 0x200)
  {
    LOWORD(v6) = *(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_barState);
    sub_1D7FA6478();
    LOWORD(v8) = v7 <= 0.0;
    LOBYTE(v9) = *(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_scrollView) != 0;
    *v4 = v6 | (v8 << 8);
    *(v4 + 2) = v9;
  }

  else
  {
    v8 = (v6 >> 8) & 1;
    v9 = HIWORD(v6) & 1;
  }

  *a2 = v6;
  a2[1] = v8;
  a2[2] = v9;
}

void sub_1D7FA5B00(_BYTE *a2@<X8>)
{
  BarCompressionManager.state.getter(v5);
  v3 = v5[1];
  v4 = v5[2];
  *a2 = v5[0];
  a2[1] = v3;
  a2[2] = v4;
}

unsigned __int8 *sub_1D7FA5B4C(unsigned __int8 *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = v2;
  return BarCompressionManager.state.setter(v4);
}

unsigned __int8 *BarCompressionManager.state.setter(unsigned __int8 *result)
{
  if (result[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *result;
  v4 = v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager____lazy_storage___state;
  *(v4 + 2) = result[2] != 0;
  *v4 = v3;
  return result;
}

uint64_t (*BarCompressionManager.state.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  BarCompressionManager.state.getter((a1 + 8));
  return sub_1D7FA5C2C;
}

uint64_t sub_1D7FA5C2C(uint64_t result)
{
  if (*(result + 9))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(result + 8);
  v3 = *result + OBJC_IVAR____TtC5TeaUI21BarCompressionManager____lazy_storage___state;
  *(v3 + 2) = *(result + 10) != 0;
  *v3 = v2;
  return result;
}

void sub_1D7FA5C94(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = *(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation);
    if (v4)
    {
      v5 = [*(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation) respondsToSelector_];
      v6 = a1;
      if (v5)
      {
        [v4 detachedFromScrollView_];
      }
    }

    else
    {
      v7 = a1;
    }

    v8 = *(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_tabBarAnimation);
    if (v8 && ([*(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_tabBarAnimation) respondsToSelector_] & 1) != 0)
    {
      [v8 detachedFromScrollView_];
    }

    v9 = *(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_toolbarAnimation);
    if (v9 && ([*(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_toolbarAnimation) respondsToSelector_] & 1) != 0)
    {
      [v9 detachedFromScrollView_];
    }
  }

  v10 = *(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_barState);
  sub_1D7FA6478();
  v12 = v11;
  v13 = v11 <= 0.0;
  v14 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_scrollView;
  v15 = *(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_scrollView);
  v16 = v15 != 0;
  BarCompressionManager.state.getter(&v42);
  if (v10 != v42 || ((v13 ^ v43) & 1) != 0 || ((v16 ^ v44) & 1) != 0)
  {
    BarCompressionManager.state.getter(&v42);
    v37 = v42;
    v17 = v43;
    v18 = v44;
    v19 = v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager____lazy_storage___state;
    *(v19 + 2) = v15 != 0;
    *v19 = v10 | ((v12 <= 0.0) << 8);
    v20 = v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v20 + 8);
      ObjectType = swift_getObjectType();
      v39 = v10;
      v40 = v13;
      v41 = v16;
      v38[0] = v37;
      v38[1] = v17;
      v38[2] = v18;
      (*(v21 + 8))(v2, &v39, v38, ObjectType, v21);
      swift_unknownObjectRelease();
    }

    v23 = [objc_opt_self() defaultCenter];
    v24 = sub_1D8190EE4();
    v39 = v10;
    v40 = v13;
    v41 = v16;
    v25 = sub_1D7FA601C(&v39);
    sub_1D7E90BAC(v25);
    v27 = v26;

    sub_1D7FA9228(v24, 0, v27, v23);
  }

  v28 = *(v2 + v14);
  if (v28)
  {
    v29 = *(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation);
    if (v29)
    {
      v30 = [*(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation) respondsToSelector_];
      v31 = v28;
      v32 = &OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_operationDescription;
      if (v30)
      {
        [v29 attachedToScrollView_];
      }
    }

    else
    {
      v33 = v28;
      v32 = &OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_operationDescription;
    }

    v34 = v32[233];
    v35 = *(v2 + v34);
    if (v35 && ([*(v2 + v34) respondsToSelector_] & 1) != 0)
    {
      [v35 attachedToScrollView_];
    }

    v36 = *(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_toolbarAnimation);
    if (v36)
    {
      if ([v36 respondsToSelector_])
      {
        [v36 attachedToScrollView_];
      }
    }
  }
}

uint64_t sub_1D7FA601C(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  sub_1D7FA9B38(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D819FAB0;
  *(inited + 32) = 0x6574617473;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 72) = &type metadata for BarCompressionState;
  *(inited + 48) = v2;
  *(inited + 49) = v3;
  *(inited + 50) = v4;
  v6 = sub_1D8190D94();
  v7 = *(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_tabBarAnimation);
  if (!v7 || (*&v25[0] = v7, sub_1D7FA9CBC(), sub_1D7E069F0(0, qword_1EDBB59C8, &protocol descriptor for TabBarCompressionStateProviding, 1), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    goto LABEL_6;
  }

  if (!*(&v27 + 1))
  {
LABEL_6:
    sub_1D7FA9BF4(&v26);
    v30 = MEMORY[0x1E69E6370];
    LOBYTE(v29) = 0;
    sub_1D7E1C664(&v29, &v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v25[0] = v6;
    sub_1D7E894CC(&v26, 0xD000000000000012, 0x80000001D81CC1F0, isUniquelyReferenced_nonNull_native, v17, v18, v19, v20, v22, v23);
    return v6;
  }

  sub_1D7E05450(&v26, &v29);
  v8 = v30;
  v9 = v31;
  __swift_project_boxed_opaque_existential_1(&v29, v30);
  v10 = (*(v9 + 8))(v8, v9);
  *(&v27 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v26) = v10 & 1;
  sub_1D7E1C664(&v26, v25);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D7E894CC(v25, 0xD000000000000012, 0x80000001D81CC1F0, v11, v12, v13, v14, v15, v22, v6);
  v6 = v24;
  __swift_destroy_boxed_opaque_existential_1Tm(&v29);
  return v6;
}

void sub_1D7FA6240(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_scrollView);
  *(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_scrollView) = a1;
  v2 = a1;
  sub_1D7FA5C94(v3);
}

uint64_t sub_1D7FA62B8()
{
  OUTLINED_FUNCTION_66_0();
  *(v1 + *v2) = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1D7FA6314(v0);

  return swift_unknownObjectRelease();
}

void *sub_1D7FA6314(void *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_scrollView);
  if (v2)
  {
    v3 = *(v1 + *result);
    if (v3)
    {
      result = [v3 respondsToSelector_];
      if (result)
      {

        return [v3 attachedToScrollView_];
      }
    }
  }

  return result;
}

BOOL sub_1D7FA63A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_scrollView);
  if (v1)
  {
    v2 = v1;
    [v2 contentSize];
    v4 = v3;
    [v2 frame];
    Height = CGRectGetHeight(v9);

    v6 = Height < v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = !*(v0 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation) && !*(v0 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_tabBarAnimation) && *(v0 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_toolbarAnimation) == 0;
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || v7)
  {
    return 0;
  }

  return v6;
}

void sub_1D7FA6478()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_scrollView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation);
    v3 = v1;
    if (v2)
    {
      [v2 topOffset];
    }

    [v1 contentOffset];
    [v1 contentInset];
  }
}

BOOL sub_1D7FA6524()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_scrollView);
  if (v1)
  {
    v2 = v1;
    [v2 contentOffset];
    if (v3 < *(v0 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_initialContentOffset + 8))
    {
      v4 = *(v0 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_lastContentOffset + 8);
      [v2 contentOffset];
      if (v5 < v4)
      {
        [v2 contentOffset];
        v7 = v6;
        [v2 contentInset];
        v9 = v8;

        return v7 < -v9;
      }
    }
  }

  return 0;
}

uint64_t sub_1D7FA65F0()
{

  sub_1D818FA44();

  return v1;
}

void BarCompressionManager.attach(to:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v14[0] = a1;
  v6 = *(a2 + 16);
  v7 = *(v6 + 8);
  v7(ObjectType, v6);
  sub_1D818F154();

  if (v15)
  {
    sub_1D7FA67FC(v15);
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
    v15 = a1;
    v7(ObjectType, v6);
    OUTLINED_FUNCTION_0_8();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D818F164();

    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v9 = v8;
    sub_1D818ED84();

    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    *(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_observingToken) = v9;
    swift_unknownObjectRelease();
  }

  v10 = OUTLINED_FUNCTION_11_20();
  sub_1D7FA9488(v10, v11, v12, v13);
}

void sub_1D7FA67FC(void *a1)
{
  [a1 setScrollsToTop_];
  v2 = a1;
  sub_1D7FA6240(a1);

  sub_1D7FA6D30(v2);
}

void sub_1D7FA6858(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      v5 = v2;
      sub_1D7FA67FC(v5);

      v4 = v5;
    }
  }
}

void BarCompressionManager.detach(from:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  (*(*(a2 + 16) + 8))();
  sub_1D818F154();

  if (v6)
  {
    sub_1D7FA697C(v6);
  }

  *(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_observingToken) = 0;
  swift_unknownObjectRelease();
  v4 = OUTLINED_FUNCTION_11_20();
  sub_1D7FA9328(v4, v5);
}

id sub_1D7FA697C(void *a1)
{
  ObjectType = swift_getObjectType();
  [a1 setScrollsToTop_];
  sub_1D7FA6240(0);
  if (OUTLINED_FUNCTION_10_24())
  {
    objc_opt_self();
    OUTLINED_FUNCTION_25();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
LABEL_3:
      [v4 removeDelegate_];
      goto LABEL_17;
    }

    swift_unknownObjectRelease();
  }

  v5 = OUTLINED_FUNCTION_10_24();
  if (v5)
  {
    v6 = v5;
    v7 = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v6, v7, &protocol descriptor for TopLevelMultiScrollViewDelegateType))
    {
      v9 = v8;
      v10 = swift_getObjectType();
      (*(v9 + 16))(v1, ObjectType, v10, v9);
      goto LABEL_17;
    }

    swift_unknownObjectRelease();
  }

  if (OUTLINED_FUNCTION_10_24())
  {
    type metadata accessor for MultiScrollViewDelegate();
    OUTLINED_FUNCTION_25();
    if (swift_dynamicCastClass())
    {
      v11 = &OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates;
      v12 = &OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_respondsToSelectorCache;
LABEL_16:
      sub_1D7FA7338(v1, v11, v12);
      goto LABEL_17;
    }

    swift_unknownObjectRelease();
  }

  if (OUTLINED_FUNCTION_10_24())
  {
    type metadata accessor for MultiCollectionViewDelegate();
    OUTLINED_FUNCTION_25();
    if (swift_dynamicCastClass())
    {
      v11 = &OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates;
      v12 = &OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_respondsToSelectorCache;
      goto LABEL_16;
    }

    swift_unknownObjectRelease();
  }

  result = OUTLINED_FUNCTION_10_24();
  if (!result)
  {
    return result;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_25();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    goto LABEL_3;
  }

LABEL_17:

  return swift_unknownObjectRelease();
}

void BarCompressionManager.attach(to:scrollView:)()
{
  OUTLINED_FUNCTION_66_0();
  sub_1D7FA67FC(v0);
  swift_getObjectType();
  v1 = OUTLINED_FUNCTION_14_4();

  sub_1D7FA9488(v1, v2, v3, v4);
}

Swift::Void __swiftcall BarCompressionManager.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation;
  v4 = *(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation);
  if (v4)
  {
    [v4 reloadWithTraitCollection_];
  }

  v5 = *(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_tabBarAnimation);
  if (v5)
  {
    [v5 reloadWithTraitCollection_];
  }

  v6 = *(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_toolbarAnimation);
  if (v6)
  {
    [v6 reloadWithTraitCollection_];
  }

  v7 = *(v1 + v3);
  v8 = 0.0;
  if (v7)
  {
    [v7 maximumBarHeightForTraitCollection_];
    v10 = v9;
    v11 = *(v1 + v3);
    if (v11)
    {
      [v11 minimumBarHeightForTraitCollection_];
      v8 = v12;
    }
  }

  else
  {
    v10 = 0.0;
  }

  v13 = *(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_barAnimator);
  [v13 setTopBarHeight:1 forState:v10];
  [v13 setTopBarHeight:0 forState:v8];
  v14.value.super.isa = 0;

  BarCompressionManager.resetBars(animated:traitCollection:)(0, v14);
}

uint64_t BarCompressionManager.attachAnimations(to:)()
{
  OUTLINED_FUNCTION_66_0();
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_14_4();

  return sub_1D7FA94EC(v0, v1, v2, v3);
}

void sub_1D7FA6D30(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if ([a1 delegate])
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
LABEL_3:
      v6 = v5;
      [v5 addDelegate_];
      v34 = sub_1D7E0A1A8(0, &qword_1EDBAE538, 0x1E69D6CE8);
      v33[0] = v6;
LABEL_17:
      v19 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_proxyMultiDelegate;
      swift_beginAccess();
      sub_1D7E5C8DC(v33, v2 + v19);
LABEL_18:
      swift_endAccess();
      return;
    }

    swift_unknownObjectRelease();
  }

  v7 = [a1 delegate];
  if (v7)
  {
    v8 = v7;
    v9 = swift_getObjectType();
    v10 = dynamic_cast_existential_1_conditional(v8, v9, &protocol descriptor for TopLevelMultiScrollViewDelegateType);
    if (v10)
    {
      v12 = v10;
      v13 = v11;
      v14 = swift_getObjectType();
      (*(v13 + 8))(v2, ObjectType, v14, v13);
      v34 = v14;
      v33[0] = v12;
      goto LABEL_17;
    }

    swift_unknownObjectRelease();
  }

  if ([a1 delegate])
  {
    v15 = type metadata accessor for MultiScrollViewDelegate();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;
      sub_1D805F1A8(v2);
LABEL_16:
      v34 = v15;
      v33[0] = v17;
      goto LABEL_17;
    }

    swift_unknownObjectRelease();
  }

  if ([a1 delegate])
  {
    v15 = type metadata accessor for MultiCollectionViewDelegate();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v17 = v18;
      sub_1D7E33A50(v2);
      goto LABEL_16;
    }

    swift_unknownObjectRelease();
  }

  if ([a1 delegate])
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      goto LABEL_3;
    }

    swift_unknownObjectRelease();
  }

  v20 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_proxyMultiDelegate;
  swift_beginAccess();
  sub_1D7E7B91C(v2 + v20, v33);
  v21 = v34;
  sub_1D7E7BAAC(v33);
  if (!v21)
  {
    sub_1D7FA7594(a1, v33);
    swift_beginAccess();
    sub_1D7E5C8DC(v33, v2 + v20);
    goto LABEL_18;
  }

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    sub_1D7E7B91C(v2 + v20, v33);
    if (v34)
    {
      type metadata accessor for MultiCollectionViewDelegate();
      v24 = a1;
      if (swift_dynamicCast())
      {
        v25 = v31;
        sub_1D7E33A50(v2);
        [v23 setDelegate_];

LABEL_45:
        return;
      }
    }

    else
    {
      sub_1D7E7BAAC(v33);
    }
  }

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    sub_1D7E7B91C(v2 + v20, v33);
    if (v34)
    {
      sub_1D7E0A1A8(0, &qword_1EDBAE538, 0x1E69D6CE8);
      v28 = a1;
      if (swift_dynamicCast())
      {
        v29 = v31;
        [v31 addDelegate_];
        [v27 setDelegate_];

LABEL_50:
        goto LABEL_51;
      }
    }

    else
    {
      sub_1D7E7BAAC(v33);
    }
  }

  sub_1D7E7B91C(v2 + v20, v33);
  if (v34)
  {
    sub_1D7E069F0(0, &qword_1ECA0E7F0, &protocol descriptor for TopLevelMultiScrollViewDelegateType, 0);
    if (swift_dynamicCast())
    {
      v30 = swift_getObjectType();
      (*(v32 + 8))(v2, ObjectType, v30);
      [a1 setDelegate_];
LABEL_51:
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    sub_1D7E7BAAC(v33);
  }

  sub_1D7E7B91C(v2 + v20, v33);
  if (v34)
  {
    type metadata accessor for MultiScrollViewDelegate();
    if (swift_dynamicCast())
    {
      v25 = v31;
      sub_1D805F1A8(v2);
      [a1 setDelegate_];
      goto LABEL_45;
    }
  }

  else
  {
    sub_1D7E7BAAC(v33);
  }

  sub_1D7E7B91C(v2 + v20, v33);
  if (!v34)
  {
    sub_1D7E7BAAC(v33);
    return;
  }

  sub_1D7E0A1A8(0, &qword_1EDBAE538, 0x1E69D6CE8);
  if (swift_dynamicCast())
  {
    v29 = v31;
    [v31 addDelegate_];
    [a1 setDelegate_];
    goto LABEL_50;
  }
}

uint64_t sub_1D7FA7338(uint64_t a1, void *a2, uint64_t *a3)
{
  [*(v3 + *a2) removeObject_];
  v5 = *a3;
  OUTLINED_FUNCTION_0_25(v3 + v5, v6);
  *(v3 + v5) = MEMORY[0x1E69E7CC8];
}

void sub_1D7FA7398()
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v0.value.super.isa = 0;

    BarCompressionManager.resetBars(animated:traitCollection:)(0, v0);
  }
}

void sub_1D7FA741C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_scrollView);
  if (v1)
  {
    v17 = v1;
    v2 = [v17 window];
    v3 = v2;
    if (v2)
    {
      [v2 safeAreaInsets];
      v5 = v4;
    }

    else
    {
      v5 = 0.0;
    }

    [v17 contentOffset];
    v7 = v6;
    v8 = *(v0 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_barAnimator);
    v9 = [v8 targetState];
    if (v7 >= -v5 || (v10 = v9, [v17 isDragging]) || v10)
    {
      v16 = v17;
      v17 = v3;
    }

    else
    {
      [v17 contentInset];
      v12 = v11;
      [v8 topBarHeight];
      v14 = v13;
      [v8 maximumTopBarHeight];
      [v17 setContentOffset:1 animated:{0.0, -(v12 - vabdd_f64(v14, v15))}];
      v16 = v3;
    }
  }
}

double sub_1D7FA7594@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = a1;
    if ([v8 delegate])
    {
      v10 = type metadata accessor for MultiCollectionViewDelegate();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v11;
        v13 = [objc_allocWithZone(v10) init];
        sub_1D7E33A50(v12);
        sub_1D7E33A50(v3);
        [v8 setDelegate_];
        *(a2 + 24) = v10;
LABEL_10:
        swift_unknownObjectRelease();

LABEL_11:
        *a2 = v13;
        return result;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v9 = a1;
    v16 = [v15 delegate];
    if (v16)
    {
      v13 = [objc_allocWithZone(MEMORY[0x1E69D6CE8]) initWithDelegate:v16 delegateProtocol:&unk_1F535EED0];
      [v13 addDelegate_];
      [v15 setDelegate_];
      swift_unknownObjectRelease();
      *(a2 + 24) = sub_1D7E0A1A8(0, &qword_1EDBAE538, 0x1E69D6CE8);
      goto LABEL_10;
    }
  }

  v18 = [a1 delegate];
  if (v18)
  {
    v19 = v18;
    v20 = swift_getObjectType();
    v21 = dynamic_cast_existential_1_conditional(v19, v20, &protocol descriptor for TopLevelMultiScrollViewDelegateType);
    if (v21)
    {
      v23 = v21;
      v24 = v22;
      v25 = swift_getObjectType();
      (*(v24 + 8))(v3, ObjectType, v25, v24);
      *(a2 + 24) = v25;
      *a2 = v23;
      return result;
    }

    swift_unknownObjectRelease();
  }

  if ([a1 delegate])
  {
    v26 = type metadata accessor for MultiScrollViewDelegate();
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = v27;
      sub_1D805F1A8(v3);
      *(a2 + 24) = v26;
      *a2 = v28;
      return result;
    }

    swift_unknownObjectRelease();
  }

  if ([a1 delegate])
  {
    v29 = swift_dynamicCastObjCProtocolConditional();
    if (v29)
    {
      v30 = v29;
      v31 = swift_getObjectType();
      v32 = sub_1D7E0A1A8(0, &qword_1EDBB2F40, 0x1E69E58C0);
      v33 = dynamic_cast_existential_0_superclass_conditional(v30, v31, v32);
      if (v33)
      {
        v34 = v33;
        v35 = type metadata accessor for MultiScrollViewDelegate();
        v13 = [objc_allocWithZone(v35) init];
        sub_1D805F1A8(v34);
        sub_1D805F1A8(v3);
        [a1 setDelegate_];
        *(a2 + 24) = v35;
        swift_unknownObjectRelease();
        goto LABEL_11;
      }
    }

    swift_unknownObjectRelease();
  }

  if (![a1 delegate])
  {
    v36 = type metadata accessor for MultiScrollViewDelegate();
    v13 = [objc_allocWithZone(v36) init];
    sub_1D805F1A8(v3);
    [a1 setDelegate_];
    *(a2 + 24) = v36;
    goto LABEL_11;
  }

  swift_unknownObjectRelease();
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id BarCompressionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BarCompressionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall BarCompressionManager.scrollViewWillBeginDragging(_:)(UIScrollView *a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_isEnabled;
  OUTLINED_FUNCTION_8_4(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_isEnabled, v6);
  if (*(v1 + v3) == 1)
  {
    [(UIScrollView *)a1 contentOffset];
    sub_1D7FA7B9C(v4, v5);
  }
}

id sub_1D7FA7B9C(double a1, double a2)
{
  result = sub_1D7FA63A8();
  if (result)
  {
    v6 = (v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_initialContentOffset);
    *v6 = a1;
    v6[1] = a2;
    v7 = *(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_barAnimator);

    return [v7 beginScrollingWithOffset_];
  }

  return result;
}

Swift::Void __swiftcall BarCompressionManager.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_isEnabled;
  OUTLINED_FUNCTION_8_4(&v2[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_isEnabled], v45);
  if (v2[v4] == 1)
  {
    [(UIScrollView *)a1 contentSize];
    if (v5 != 0.0 || (OUTLINED_FUNCTION_9_17(), v6 > 0.0))
    {
      sub_1D7FA6478();
      v8 = v7;
      v9 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation;
      if (*&v2[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation])
      {
        OUTLINED_FUNCTION_6_31();
        sub_1D7FA6478();
        OUTLINED_FUNCTION_5_30();
        swift_unknownObjectRelease();
      }

      if (*&v2[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_tabBarAnimation])
      {
        OUTLINED_FUNCTION_6_31();
        sub_1D7FA6478();
        OUTLINED_FUNCTION_5_30();
        swift_unknownObjectRelease();
      }

      if (*&v2[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_toolbarAnimation])
      {
        OUTLINED_FUNCTION_6_31();
        sub_1D7FA6478();
        OUTLINED_FUNCTION_5_30();
        swift_unknownObjectRelease();
      }

      v10 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_barState;
      v11 = v2[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_barState];
      BarCompressionManager.state.getter(&v42);
      if (v11 != v42 || (((v8 <= 0.0) ^ v43) & 1) != 0 || (v44 & 1) == 0)
      {
        v39 = v9;
        BarCompressionManager.state.getter(&v42);
        v12 = v42;
        v13 = v43;
        v14 = v44;
        v15 = &v2[OBJC_IVAR____TtC5TeaUI21BarCompressionManager____lazy_storage___state];
        v15[2] = 1;
        *v15 = v11 | ((v8 <= 0.0) << 8);
        v16 = &v2[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_delegate];
        OUTLINED_FUNCTION_8_4(&v2[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_delegate], &v42);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v17 = *(v16 + 1);
          swift_getObjectType();
          OUTLINED_FUNCTION_13_17();
          v41[0] = v12;
          v41[1] = v13;
          v41[2] = v14;
          (*(v17 + 8))(v2, v40, v41);
          swift_unknownObjectRelease();
        }

        v18 = [objc_opt_self() defaultCenter];
        OUTLINED_FUNCTION_1_56();
        v19 = sub_1D8190EE4();
        OUTLINED_FUNCTION_13_17();
        v20 = sub_1D7FA601C(v40);
        sub_1D7E90BAC(v20);
        v22 = v21;

        sub_1D7FA9228(v19, 0, v22, v18);

        v9 = v39;
      }

      if ((v23 = *&v2[v9]) != 0 && ([v23 shouldCompressAtTop] & 1) != 0 || v2[v10] != 2 || !sub_1D7FA6524())
      {
        if (UIScrollView.didReachBottom.getter())
        {
          v24 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_shouldExpandAtBottom;
          OUTLINED_FUNCTION_8_4(&v2[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_shouldExpandAtBottom], v40);
          if (v2[v24] == 1)
          {
            if (v2[v10])
            {
              v25 = [objc_opt_self() areAnimationsEnabled];
              v26 = 0;
LABEL_26:
              sub_1D7E643CC(v26, v25);
              return;
            }
          }
        }

        if (sub_1D7E644BC())
        {
          v25 = [objc_opt_self() areAnimationsEnabled];
          v26 = 1;
          goto LABEL_26;
        }

        if (![(UIScrollView *)a1 isDragging])
        {
          OUTLINED_FUNCTION_9_17();
          if (v27 > 0.0 && !UIScrollView.didReachBottom.getter())
          {
            v28 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_scrollDebounce;
            if (*&v2[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_scrollDebounce] || (OUTLINED_FUNCTION_9_17(), sub_1D7FA7B9C(v29, v30), OUTLINED_FUNCTION_0_8(), v31 = swift_allocObject(), *(v31 + 16) = v2, sub_1D7E32104(0, &qword_1EDBB36F0, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for Debounce), v32 = swift_allocObject(), v32[4] = v31, v32[5] = 0, v32[2] = 0x3FE0000000000000, v32[3] = sub_1D7FA9704, *&v2[v28] = v32, v33 = v2, , *&v2[v28]))
            {

              sub_1D7FA81D8(nullsub_1, 0);
            }
          }
        }

        if ([(UIScrollView *)a1 isDragging]|| *&v2[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_scrollDebounce])
        {
          if (sub_1D7FA63A8())
          {
            v34 = *&v2[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_barAnimator];
            OUTLINED_FUNCTION_9_17();
            [v34 updateScrollingWithOffset_];
          }

          OUTLINED_FUNCTION_9_17();
          v36 = &v2[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_lastContentOffset];
          *v36 = v37;
          v36[1] = v38;
        }
      }
    }
  }
}

double sub_1D7FA8128(uint64_t a1)
{
  sub_1D7FA8170(1.0);
  *(a1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_scrollDebounce) = 0;

  return result;
}

id sub_1D7FA8170(double a1)
{
  result = sub_1D7E644BC();
  if ((result & 1) == 0)
  {
    result = sub_1D7FA63A8();
    if (result)
    {
      v4 = *(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_barAnimator);

      return [v4 endScrollingWithTargetOffset:0.0 velocity:a1];
    }
  }

  return result;
}

void sub_1D7FA81D8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    [v5 invalidate];
  }

  v6 = objc_opt_self();
  v7 = *(v2 + 16);
  OUTLINED_FUNCTION_0_8();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  v13[4] = sub_1D7FA9B2C;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D7F845F8;
  v13[3] = &block_descriptor_23;
  v10 = _Block_copy(v13);

  v11 = [v6 scheduledTimerWithTimeInterval:0 repeats:v10 block:v7];
  _Block_release(v10);
  v12 = *(v2 + 40);
  *(v2 + 40) = v11;
}

id BarCompressionManager.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(uint64_t a1, double a2, double a3)
{
  v5 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_isEnabled;
  result = OUTLINED_FUNCTION_1_0(a1, a2);
  if (*(v3 + v5) == 1)
  {
    return sub_1D7FA8170(a3 * 1000.0);
  }

  return result;
}

Swift::Void __swiftcall BarCompressionManager.scrollViewDidScrollToTop(_:)(UIScrollView *a1)
{
  v2 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_isEnabled;
  OUTLINED_FUNCTION_1_0(a1);
  if (*(v1 + v2) == 1)
  {
    v3.value.super.isa = 0;
    BarCompressionManager.resetBars(animated:traitCollection:)(1, v3);
  }
}

Swift::Bool __swiftcall BarCompressionManager.scrollViewShouldScrollToTop(_:)(UIScrollView *a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_isEnabled;
  OUTLINED_FUNCTION_8_4(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_isEnabled, v6);
  if (*(v1 + v3) != 1)
  {
    return 0;
  }

  v4 = *(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation);
  if ((!v4 || ([*(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation) respondsToSelector_] & 1) == 0 || (objc_msgSend(v4, sel_shouldAlwaysScrollToTopOnTap) & 1) == 0) && *(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_barState) == 1)
  {
    [(UIScrollView *)a1 setScrollsToTop:0];
    v7.value.super.isa = 0;
    BarCompressionManager.resetBars(animated:traitCollection:)(1, v7);
    return 0;
  }

  return 1;
}

Swift::Void __swiftcall BarCompressionManager.dynamicBarAnimatorOutputsDidChange(_:)(TUDynamicBarAnimator *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_scrollView);
  if (v2)
  {
    v19 = v2;
    [v19 contentSize];
    if (v4 != 0.0 || ([v19 contentOffset], v5 > 0.0))
    {
      [(TUDynamicBarAnimator *)a1 topBarHeight];
      v7 = v6;
      [(TUDynamicBarAnimator *)a1 minimumTopBarHeight];
      v9 = v7 - v8;
      [(TUDynamicBarAnimator *)a1 maximumTopBarHeight];
      v11 = v10;
      [(TUDynamicBarAnimator *)a1 minimumTopBarHeight];
      v13 = 1.0;
      v14 = 1.0 - v9 / (v11 - v12);
      if ((~*&v14 & 0x7FF0000000000000) != 0 || (*&v14 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        if (v14 <= 1.0)
        {
          v13 = v14;
        }

        if (v14 >= 0.0)
        {
          v15 = v13;
        }

        else
        {
          v15 = 0.0;
        }

        if (*(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_barAnimator) == a1)
        {
          v16 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation;
          if (*(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation))
          {
            if ([swift_unknownObjectRetain() shouldCloseGapOnScroll])
            {
              sub_1D7FA741C();
            }

            swift_unknownObjectRelease();
            v17 = *(v1 + v16);
            if (v17)
            {
              [v17 updateWithPercentage_];
            }
          }

          v18 = *(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_tabBarAnimation);
          if (v18)
          {
            [v18 updateWithPercentage_];
          }

          if (*(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_toolbarAnimation))
          {
            [swift_unknownObjectRetain() updateWithPercentage_];
            swift_unknownObjectRelease();
          }
        }
      }
    }
  }
}

id BarCompressionManager.dynamicBarAnimator(_:canHideBarsByDraggingWithOffset:)(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_scrollView);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation);
  if (!v4)
  {
    v7 = *(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_tabBarAnimation);
    if (v7)
    {
      v8 = v2;
      swift_unknownObjectRetain();
      v6 = [v7 animationShouldBeginForScrollView:v8 currentlyFullyCompressed:{objc_msgSend(a1, sel_state) == 0}];
      swift_unknownObjectRelease();

      return v6;
    }

    return 0;
  }

  v5 = v2;
  swift_unknownObjectRetain();
  v6 = [v4 animationShouldBeginForScrollView:v5 currentlyFullyCompressed:{objc_msgSend(a1, sel_state) == 0}];

  swift_unknownObjectRelease();
  return v6;
}

Swift::Void __swiftcall BarCompressionManager.dynamicBarAnimatorWillEnterSteadyState(_:)(TUDynamicBarAnimator *a1)
{
  v2 = [(TUDynamicBarAnimator *)a1 state];
  if (v2)
  {
    if (v2 != 1)
    {
      sub_1D81923A4();
      __break(1u);
      return;
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_barState;
  *(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_barState) = v3;
  v5 = sub_1D7FA65F0();
  if (v5 == 2)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = 1;
  if ((v5 & 1) == 0)
  {
    v7 = 2;
  }

  if (v7 == *(v1 + v4))
  {
LABEL_9:
    v8 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_scrollView;
    v9 = *(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_scrollView);
    if (v9)
    {
      [v9 setScrollsToTop_];
    }

    v10 = *(v1 + v4);
    sub_1D7FA6478();
    v12 = v11;
    v13 = v11 <= 0.0;
    v14 = *(v1 + v8);
    v15 = v14 != 0;
    BarCompressionManager.state.getter(&v30);
    if (v10 != v30 || ((v13 ^ v31) & 1) != 0 || ((v15 ^ v32) & 1) != 0)
    {
      BarCompressionManager.state.getter(&v30);
      v16 = v30;
      v17 = v31;
      v18 = v32;
      v19 = v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager____lazy_storage___state;
      *(v19 + 2) = v14 != 0;
      *v19 = v10 | ((v12 <= 0.0) << 8);
      v20 = v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_delegate;
      OUTLINED_FUNCTION_8_4(v1 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_delegate, &v30);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v20 + 8);
        ObjectType = swift_getObjectType();
        v27 = v10;
        v28 = v13;
        v29 = v15;
        v26[0] = v16;
        v26[1] = v17;
        v26[2] = v18;
        (*(v21 + 8))(v1, &v27, v26, ObjectType, v21);
        swift_unknownObjectRelease();
      }

      v23 = [objc_opt_self() defaultCenter];
      OUTLINED_FUNCTION_1_56();
      v24 = sub_1D8190EE4();
      v27 = v10;
      v28 = v13;
      v29 = v15;
      v25 = sub_1D7FA601C(&v27);
      sub_1D7E90BAC(v25);

      OUTLINED_FUNCTION_15_16();
    }
  }

  else
  {
    sub_1D7E648F4(2);

    sub_1D7E643CC(v6 & 1, HIBYTE(v6) & 1);
  }
}

Swift::Void __swiftcall BarCompressionManager.dynamicBarAnimatorWillLeaveSteadyState(_:)(TUDynamicBarAnimator *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_barState;
  *(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_barState) = 0;
  v4 = *(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation);
  if (v4)
  {
    [v4 prepareForUpdates];
  }

  v5 = *(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_tabBarAnimation);
  if (v5)
  {
    [v5 prepareForUpdates];
  }

  v6 = *(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_toolbarAnimation);
  if (v6)
  {
    [v6 prepareForUpdates];
  }

  v7 = *(v2 + v3);
  sub_1D7FA6478();
  v9 = v8;
  v10 = v8 <= 0.0;
  v11 = *(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_scrollView);
  v12 = v11 != 0;
  BarCompressionManager.state.getter(&v27);
  if (v7 != v27 || ((v10 ^ v28) & 1) != 0 || ((v12 ^ v29) & 1) != 0)
  {
    BarCompressionManager.state.getter(&v27);
    v13 = v27;
    v14 = v28;
    v15 = v29;
    v16 = v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager____lazy_storage___state;
    *(v16 + 2) = v11 != 0;
    *v16 = v7 | ((v9 <= 0.0) << 8);
    v17 = v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_delegate;
    OUTLINED_FUNCTION_8_4(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_delegate, &v27);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v17 + 8);
      ObjectType = swift_getObjectType();
      v24 = v7;
      v25 = v10;
      v26 = v12;
      v23[0] = v13;
      v23[1] = v14;
      v23[2] = v15;
      (*(v18 + 8))(v2, &v24, v23, ObjectType, v18);
      swift_unknownObjectRelease();
    }

    v20 = [objc_opt_self() defaultCenter];
    OUTLINED_FUNCTION_1_56();
    v21 = sub_1D8190EE4();
    v24 = v7;
    v25 = v10;
    v26 = v12;
    v22 = sub_1D7FA601C(&v24);
    sub_1D7E90BAC(v22);

    OUTLINED_FUNCTION_15_16();
  }
}

uint64_t sub_1D7FA8F8C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE447F0](ObjectType, a2);
}

uint64_t sub_1D7FA8FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();

  return sub_1D818F434();
}

uint64_t sub_1D7FA9020()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE44808](ObjectType);
}

uint64_t sub_1D7FA905C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE44800](ObjectType, a2);
}

uint64_t sub_1D7FA9098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();

  return sub_1D818F454();
}

uint64_t sub_1D7FA90F0(uint64_t a1)
{
  swift_getObjectType();

  return sub_1D818F484();
}

uint64_t sub_1D7FA9140(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1D818F404();
}

uint64_t sub_1D7FA917C(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = 0;
  *(v3 + 16) = a3;
  *(v3 + 24) = a1;
  return v3;
}

uint64_t sub_1D7FA9190(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 24);

    v5(v6);
  }

  return a3(Strong);
}

void sub_1D7FA9228(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1D8190D44();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

void sub_1D7FA92C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D7FA697C(a2);

  sub_1D7FA9328(a1, a3);
}

void sub_1D7FA9328(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation);
  if (v3 && (OUTLINED_FUNCTION_8_22() & 1) != 0)
  {
    [v3 detached];
  }

  v4 = *(a2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_tabBarAnimation);
  if (v4 && (OUTLINED_FUNCTION_8_22() & 1) != 0)
  {
    [v4 detached];
  }

  v5 = *(a2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_toolbarAnimation);
  if (v5 && (OUTLINED_FUNCTION_8_22() & 1) != 0)
  {
    [v5 detached];
  }

  sub_1D7FA62B8();
  sub_1D7FA62B8();
  sub_1D7FA62B8();
  v6 = __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_sceneStateManager), *(a2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_sceneStateManager + 24));
  sub_1D7E2F938(v6, v7);
  OUTLINED_FUNCTION_25();
  sub_1D818F634();
  v8 = [objc_opt_self() defaultCenter];
  [v8 removeObserver:a2 name:*MEMORY[0x1E69DDA58] object:0];
}

void sub_1D7FA9488(void *a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  sub_1D7FA94EC(a1, a2, a3, a4);
  v7.value.super.isa = [a1 traitCollection];
  isa = v7.value.super.isa;
  BarCompressionManager.traitCollectionDidChange(_:)(v7);
}

uint64_t sub_1D7FA94EC(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v7 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation;
  v8 = *(a2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation);
  if (v8 && ([v8 respondsToSelector_] & 1) != 0)
  {
    [v8 detached];
  }

  v9 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_tabBarAnimation;
  v10 = *(a2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_tabBarAnimation);
  if (v10 && ([*(a2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_tabBarAnimation) respondsToSelector_] & 1) != 0)
  {
    [v10 detached];
  }

  v11 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_toolbarAnimation;
  v12 = *(a2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_toolbarAnimation);
  if (v12 && ([*(a2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_toolbarAnimation) respondsToSelector_] & 1) != 0)
  {
    [v12 detached];
  }

  a4[2](a3, a4);
  sub_1D7FA62B8();
  a4[3](a3, a4);
  sub_1D7FA62B8();
  a4[4](a3, a4);
  result = sub_1D7FA62B8();
  v14 = *(a2 + v7);
  if (v14)
  {
    result = [*(a2 + v7) respondsToSelector_];
    if (result)
    {
      result = [v14 attached];
    }
  }

  v15 = *(a2 + v9);
  if (v15)
  {
    result = [*(a2 + v9) respondsToSelector_];
    if (result)
    {
      result = [v15 attached];
    }
  }

  v16 = *(a2 + v11);
  if (v16)
  {
    result = [v16 respondsToSelector_];
    if (result)
    {

      return [v16 attached];
    }
  }

  return result;
}

unint64_t sub_1D7FA9710()
{
  result = qword_1ECA0E788;
  if (!qword_1ECA0E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E788);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BarCompressionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for BarCompressionState(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for BarCompressionState.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for BarCompressionManager.BarCompressEvent(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BarCompressionManager.BarCompressEvent(uint64_t result, unsigned int a2, unsigned int a3)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

void sub_1D7FA9B38(uint64_t a1)
{
  if (!qword_1EDBB2C50)
  {
    sub_1D7FA9B90();
    v1 = sub_1D81925C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBB2C50);
    }
  }
}

void sub_1D7FA9B90()
{
  if (!qword_1EDBB33E8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBB33E8);
    }
  }
}

uint64_t sub_1D7FA9BF4(uint64_t a1)
{
  sub_1D7FA9C50(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7FA9C50(uint64_t a1)
{
  if (!qword_1EDBB59C0)
  {
    sub_1D7E069F0(255, qword_1EDBB59C8, &protocol descriptor for TabBarCompressionStateProviding, 1);
    v1 = sub_1D8191E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBB59C0);
    }
  }
}

unint64_t sub_1D7FA9CBC()
{
  result = qword_1EDBAE4C0;
  if (!qword_1EDBAE4C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBAE4C0);
  }

  return result;
}

uint64_t dynamic_cast_existential_0_superclass_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_dynamicCastMetatype())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t PageViewSession.identifier.getter()
{
  v1 = *v0;
  sub_1D8190DB4();
  return v1;
}

uint64_t PageViewSession.createdDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageViewSession(0) + 24);
  sub_1D818E754();
  OUTLINED_FUNCTION_8();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PageViewSession(uint64_t a1)
{
  result = qword_1EDBBB028;
  if (!qword_1EDBBB028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PageViewSession.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PageViewSession(0) + 28);

  return sub_1D7FA9E88(v3, a1);
}

uint64_t sub_1D7FA9E88(uint64_t a1, uint64_t a2)
{
  sub_1D7E313D0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PageViewSession.trigger.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PageViewSession(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

double PageViewSession.duration.getter()
{
  sub_1D7E313D0(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_15();
  v4 = v3 - v2;
  v5 = sub_1D818E754();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  v12 = type metadata accessor for PageViewSession(0);
  sub_1D7FA9E88(v0 + *(v12 + 28), v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    OUTLINED_FUNCTION_0_76();
    sub_1D7FAA39C(v4, v13);
    sub_1D818E714();
    return fabs(v14);
  }

  else
  {
    (*(v7 + 32))(v11, v4, v5);
    sub_1D818E6B4();
    v15 = v16;
    (*(v7 + 8))(v11, v5);
  }

  return v15;
}

BOOL static PageViewSession.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D818E754();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  sub_1D7E313D0(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  sub_1D7FAA338(0);
  v16 = v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v20 = v19 - v18;
  v21 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v21 && (sub_1D8192634() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v22 = type metadata accessor for PageViewSession(0);
  if ((sub_1D818E734() & 1) == 0)
  {
    return 0;
  }

  v23 = *(v22 + 28);
  v24 = *(v16 + 48);
  sub_1D7FA9E88(a1 + v23, v20);
  sub_1D7FA9E88(a2 + v23, v20 + v24);
  OUTLINED_FUNCTION_4_35(v20);
  if (!v21)
  {
    sub_1D7FA9E88(v20, v14);
    OUTLINED_FUNCTION_4_35(v20 + v24);
    if (!v26)
    {
      (*(v6 + 32))(v10, v20 + v24, v4);
      sub_1D7FAA408();
      v28 = sub_1D8190ED4();
      v29 = *(v6 + 8);
      v29(v10, v4);
      v29(v14, v4);
      OUTLINED_FUNCTION_0_76();
      sub_1D7FAA39C(v20, v30);
      if (v28)
      {
        return *(a1 + *(v22 + 32)) == *(a2 + *(v22 + 32));
      }

      return 0;
    }

    (*(v6 + 8))(v14, v4);
LABEL_16:
    sub_1D7FAA39C(v20, sub_1D7FAA338);
    return 0;
  }

  OUTLINED_FUNCTION_4_35(v20 + v24);
  if (!v21)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_0_76();
  sub_1D7FAA39C(v20, v25);
  return *(a1 + *(v22 + 32)) == *(a2 + *(v22 + 32));
}

void sub_1D7FAA338(uint64_t a1)
{
  if (!qword_1ECA0E7F8)
  {
    sub_1D7E313D0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA0E7F8);
    }
  }
}

uint64_t sub_1D7FAA39C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1D7FAA408()
{
  result = qword_1ECA0E800;
  if (!qword_1ECA0E800)
  {
    sub_1D818E754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E800);
  }

  return result;
}

uint64_t PageViewSessionTrigger.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D7FAA4E8()
{
  result = qword_1ECA0E808;
  if (!qword_1ECA0E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E808);
  }

  return result;
}

void sub_1D7FAA564(uint64_t a1)
{
  sub_1D818E754();
  if (v1 <= 0x3F)
  {
    sub_1D7E313D0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PageViewSessionTrigger(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

Swift::Void __swiftcall EditingHeaderFooterTableView.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v17.receiver = v2;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_setEditing_animated_, _, animated);
  v5 = [v2 numberOfSections];
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = v5;
    if (v5)
    {
      v7 = 0;
      while (1)
      {
        v8 = [v2 headerViewForSection_];
        if (!v8)
        {
          break;
        }

        v14[0] = v8;
        sub_1D7FAA958();
        sub_1D7FAA8FC();
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        if (!*(&v12 + 1))
        {
          goto LABEL_9;
        }

        sub_1D7E05450(&v11, v14);
        v9 = v15;
        v10 = v16;
        __swift_project_boxed_opaque_existential_1(v14, v15);
        (*(v10 + 8))(_, animated, v9, v10);
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
LABEL_10:
        if (v6 == ++v7)
        {
          return;
        }
      }

      v13 = 0;
      v11 = 0u;
      v12 = 0u;
LABEL_9:
      sub_1D7FAA848(&v11);
      goto LABEL_10;
    }
  }
}

uint64_t sub_1D7FAA848(uint64_t a1)
{
  sub_1D7FAA8A4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7FAA8A4(uint64_t a1)
{
  if (!qword_1EDBAE680)
  {
    sub_1D7FAA8FC();
    v1 = sub_1D8191E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBAE680);
    }
  }
}

unint64_t sub_1D7FAA8FC()
{
  result = qword_1EDBAE688;
  if (!qword_1EDBAE688)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBAE688);
  }

  return result;
}

unint64_t sub_1D7FAA958()
{
  result = qword_1ECA0E810;
  if (!qword_1ECA0E810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECA0E810);
  }

  return result;
}

id EditingHeaderFooterTableView.__allocating_init(frame:style:)()
{
  v5 = objc_allocWithZone(OUTLINED_FUNCTION_0_77());

  return [v5 initWithFrame:v0 style:{v4, v3, v2, v1}];
}

id EditingHeaderFooterTableView.init(frame:style:)()
{
  OUTLINED_FUNCTION_0_77();
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v7, sel_initWithFrame_style_, v0, v5, v4, v3, v2);
}

id EditingHeaderFooterTableView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EditingHeaderFooterTableView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id EditingHeaderFooterTableView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BlueprintViewAction.attributes.getter()
{
  v1 = type metadata accessor for BlueprintViewAction(0);
  v2 = OUTLINED_FUNCTION_50(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_1_57();
  sub_1D7FAC924(v0, v5, v6);

  sub_1D7F9E220(0);
  v8 = *(v5 + *(v7 + 64));
  OUTLINED_FUNCTION_0_78();
  sub_1D7FAD240(v5 + v9, v10);
  return v8;
}

void sub_1D7FAACEC()
{
  if (!qword_1EDBAE5F8)
  {
    v0 = sub_1D8191484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE5F8);
    }
  }
}

BOOL BlueprintViewAction.style.getter()
{
  type metadata accessor for BlueprintViewAction(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_1_57();
  sub_1D7FAC924(v0, v4, v5);
  v6 = swift_getEnumCaseMultiPayload() != 1;

  sub_1D7F9E220(0);
  v8 = *(v7 + 48);

  OUTLINED_FUNCTION_0_78();
  sub_1D7FAD240(v4 + v8, v9);
  return v6;
}

uint64_t BlueprintViewAction.title.getter()
{
  v1 = type metadata accessor for BlueprintViewAction(0);
  v2 = OUTLINED_FUNCTION_50(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v5 = (v4 - v3);
  OUTLINED_FUNCTION_1_57();
  sub_1D7FAC924(v0, v5, v6);
  v7 = *v5;
  sub_1D7F9E220(0);
  v9 = *(v8 + 48);

  OUTLINED_FUNCTION_0_78();
  sub_1D7FAD240(v5 + v9, v10);
  return v7;
}

uint64_t BlueprintViewAction.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BlueprintViewAction(0);
  v4 = OUTLINED_FUNCTION_50(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_1_57();
  sub_1D7FAC924(v1, v7, v8);

  sub_1D7F9E220(0);
  v10 = *(v9 + 48);

  OUTLINED_FUNCTION_7_28();
  return sub_1D7FAC860(v7 + v10, a1, v11);
}

uint64_t BlueprintViewActionRequest.__allocating_init(item:action:source:sourceView:completion:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  BlueprintViewActionRequest.init(item:action:source:sourceView:completion:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t BlueprintViewActionable.editingStyle.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BlueprintViewAction.Action(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_28_0();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for BlueprintViewAction(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_28_0();
  v50 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v48 - v20;
  result = (*(a2 + 8))(a1, a2, v19);
  if (result)
  {
    v23 = result;
    v53 = *(result + 16);
    if (v53)
    {
      v24 = 0;
      v25 = *(v12 + 80);
      v51 = result;
      v52 = result + ((v25 + 32) & ~v25);
      while (2)
      {
        if (v24 >= *(v23 + 16))
        {
          __break(1u);
          return result;
        }

        v26 = v24++;
        sub_1D7FAC924(v52 + *(v12 + 72) * v26, v21, type metadata accessor for BlueprintViewAction);
        sub_1D7FAC924(v21, v17, type metadata accessor for BlueprintViewAction);

        sub_1D7F9E220(0);
        v28 = v27;
        v29 = *&v17[*(v27 + 64)];
        OUTLINED_FUNCTION_0_78();
        sub_1D7FAD240(&v17[v30], v31);
        v32 = *(v29 + 16) + 1;
        while (v32 != 1)
        {
          OUTLINED_FUNCTION_16_16();
          v34 = v34 && v33 == 0;
          if (v34)
          {

            OUTLINED_FUNCTION_1_57();
            v35 = v50;
            sub_1D7FAC924(v21, v50, v36);

            v37 = *(v28 + 48);

            sub_1D7FAC860(v35 + v37, v7, type metadata accessor for BlueprintViewAction.Action);
            sub_1D7FAC860(v7, v10, type metadata accessor for BlueprintViewAction.Action);
            v38 = OUTLINED_FUNCTION_5_31();
            sub_1D7FAD240(v38, v39);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v23 = v51;
            switch(EnumCaseMultiPayload)
            {
              case 1:
                OUTLINED_FUNCTION_0_78();
                v46 = v10;
                goto LABEL_16;
              case 2:

                result = 1;
                break;
              case 3:

                result = 2;
                break;
              default:
                sub_1D7F9E3F0(0);
                v49 = *(v41 + 48);
                v42 = sub_1D818E994();
                v43 = v12;
                v44 = v7;
                v45 = *(*(v42 - 8) + 8);
                v45(&v10[v49], v42);
                result = (v45)(v10, v42);
                v7 = v44;
                v12 = v43;
                v23 = v51;
                goto LABEL_17;
            }

            return result;
          }
        }

        v46 = OUTLINED_FUNCTION_5_31();
LABEL_16:
        result = sub_1D7FAD240(v46, v47);
LABEL_17:
        if (v24 != v53)
        {
          continue;
        }

        break;
      }
    }

    return 0;
  }

  return result;
}

uint64_t BlueprintViewActionable.action(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X0>)
{
  OUTLINED_FUNCTION_6_32();
  sub_1D7FAC9BC(0, v8, v9, MEMORY[0x1E69E6720]);
  v11 = OUTLINED_FUNCTION_50(v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  v15 = (*(a2 + 8))(a1, a2, v12);
  sub_1D7FAB594(v15, a4, v14);

  v16 = type metadata accessor for BlueprintViewAction(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v16) == 1)
  {
    v17 = (*(a2 + 16))(a1, a2);
    sub_1D7FAB594(v17, a4, a3);

    result = __swift_getEnumTagSinglePayload(v14, 1, v16);
    if (result != 1)
    {
      return sub_1D7FAC7D4(v14);
    }
  }

  else
  {
    sub_1D7FAC860(v14, a3, type metadata accessor for BlueprintViewAction);
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v16);
  }

  return result;
}

BOOL BlueprintViewAction.isEditable.getter()
{
  v0 = *(BlueprintViewAction.attributes.getter() + 16) + 1;
  do
  {
    if (!--v0)
    {
      break;
    }

    OUTLINED_FUNCTION_16_16();
    v2 = v2 && v1 == 0;
  }

  while (!v2);
  v3 = v0 != 0;

  return v3;
}

uint64_t sub_1D7FAB594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D7FAD1D0(0);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for BlueprintViewAction.Action(0);
  MEMORY[0x1EEE9AC00](v32);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = type metadata accessor for BlueprintViewAction(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v29 - v20;
  if (!a1 || (v22 = *(a1 + 16)) == 0)
  {
    v27 = 1;
    return __swift_storeEnumTagSinglePayload(a3, v27, 1, v18);
  }

  v30 = v18;
  v31 = a3;
  v23 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v33 = *(v19 + 72);
  while (1)
  {
    sub_1D7FAC924(v23, v21, type metadata accessor for BlueprintViewAction);
    sub_1D7FAC924(v21, v16, type metadata accessor for BlueprintViewAction);

    sub_1D7F9E220(0);
    v25 = *(v24 + 48);

    sub_1D7FAC860(&v16[v25], v10, type metadata accessor for BlueprintViewAction.Action);
    sub_1D7FAC860(v10, v13, type metadata accessor for BlueprintViewAction.Action);
    v26 = *(v34 + 48);
    *v8 = a2;
    sub_1D7FAC860(v13, v8 + v26, type metadata accessor for BlueprintViewAction.Action);
    if (a2 != 2)
    {
      break;
    }

    if (swift_getEnumCaseMultiPayload() == 3)
    {
      goto LABEL_12;
    }

LABEL_9:
    sub_1D7FAD240(v21, type metadata accessor for BlueprintViewAction);
    sub_1D7FAD240(v8, sub_1D7FAD1D0);
    v23 += v33;
    if (!--v22)
    {
      v27 = 1;
      a3 = v31;
      goto LABEL_13;
    }
  }

  if (a2 != 1 || swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_9;
  }

LABEL_12:
  a3 = v31;
  sub_1D7FAC860(v21, v31, type metadata accessor for BlueprintViewAction);
  v27 = 0;
LABEL_13:
  v18 = v30;
  return __swift_storeEnumTagSinglePayload(a3, v27, 1, v18);
}

uint64_t static BlueprintViewAction.Action.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v52 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_28_0();
  v50 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v49 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  type metadata accessor for BlueprintViewAction.Action(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_28_0();
  v17 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  sub_1D7FAC8C0(0);
  v22 = OUTLINED_FUNCTION_50(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15();
  v25 = v24 - v23;
  v27 = (v24 - v23 + *(v26 + 56));
  sub_1D7FAC924(a1, v24 - v23, type metadata accessor for BlueprintViewAction.Action);
  sub_1D7FAC924(a2, v27, type metadata accessor for BlueprintViewAction.Action);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_56();
      sub_1D7FAC924(v25, v17, v36);
      v38 = *v17;
      v37 = v17[1];
      if (OUTLINED_FUNCTION_17_14() != 1)
      {

        goto LABEL_15;
      }

      if (v38 == *v27 && v37 == *(v27 + 1))
      {

        LOBYTE(v35) = 1;
      }

      else
      {
        v40 = sub_1D8192634();

        v35 = v40 << 31 >> 31;
      }

      goto LABEL_20;
    case 2u:
      v32 = OUTLINED_FUNCTION_17_14();
      v33 = type metadata accessor for BlueprintViewAction.Action;
      if (v32 != 2)
      {
        goto LABEL_15;
      }

      goto LABEL_7;
    case 3u:
      v34 = OUTLINED_FUNCTION_17_14();
      v33 = type metadata accessor for BlueprintViewAction.Action;
      if (v34 != 3)
      {
        goto LABEL_15;
      }

LABEL_7:
      LOBYTE(v35) = 1;
      break;
    default:
      OUTLINED_FUNCTION_2_56();
      sub_1D7FAC924(v25, v20, v28);
      sub_1D7F9E3F0(0);
      v30 = *(v29 + 48);
      if (OUTLINED_FUNCTION_17_14())
      {
        v31 = *(v52 + 8);
        v31(&v20[v30], v4);
        v31(v20, v4);
LABEL_15:
        LOBYTE(v35) = 0;
        v33 = sub_1D7FAC8C0;
      }

      else
      {
        v41 = v52;
        v42 = *(v52 + 32);
        v42(v13, v27, v4);
        v43 = v51;
        v42(v51, &v20[v30], v4);
        v44 = &v27[v30];
        v45 = v50;
        v42(v50, v44, v4);
        v46 = sub_1D818E914();
        v47 = *(v41 + 8);
        v47(v20, v4);
        if (v46)
        {
          LOBYTE(v35) = sub_1D818E914();
          v47(v45, v4);
          v47(v43, v4);
          v47(v13, v4);
        }

        else
        {
          v47(v45, v4);
          v47(v43, v4);
          v47(v13, v4);
          LOBYTE(v35) = 0;
        }

LABEL_20:
        v33 = type metadata accessor for BlueprintViewAction.Action;
      }

      break;
  }

  sub_1D7FAD240(v25, v33);
  return v35 & 1;
}

uint64_t BlueprintViewActionRequest.item.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_12_0();
  v4 = *(v3 + 96);
  OUTLINED_FUNCTION_12_0();
  type metadata accessor for BlueprintItem(0, v6, *(v5 + 88), v7);
  OUTLINED_FUNCTION_8();
  v10 = *(v9 + 16);

  return v10(a1, v1 + v4, v8);
}

void *BlueprintViewActionRequest.sourceView.getter()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v0 + *(v1 + 120));
  v3 = v2;
  return v2;
}

uint64_t BlueprintViewActionRequest.init(item:action:source:sourceView:completion:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a3;
  OUTLINED_FUNCTION_12_0();
  *(v6 + *(v13 + 136)) = 0;
  OUTLINED_FUNCTION_12();
  v15 = *(v14 + 96);
  OUTLINED_FUNCTION_12_0();
  type metadata accessor for BlueprintItem(0, v17, *(v16 + 88), v18);
  OUTLINED_FUNCTION_8();
  (*(v19 + 32))(v6 + v15, a1);
  OUTLINED_FUNCTION_12();
  sub_1D7FAC860(a2, v6 + *(v20 + 104), type metadata accessor for BlueprintViewAction.Action);
  OUTLINED_FUNCTION_12();
  *(v6 + *(v21 + 112)) = v12;
  OUTLINED_FUNCTION_12();
  *(v6 + *(v22 + 120)) = a4;
  OUTLINED_FUNCTION_12();
  v24 = (v6 + *(v23 + 128));
  *v24 = a5;
  v24[1] = a6;
  return v6;
}

uint64_t BlueprintViewActionRequest.makeResponse(success:apply:)(char a1, char *a2)
{
  v3 = *(*v2 + 136);
  if (*(v2 + v3))
  {
    result = sub_1D81923A4();
    __break(1u);
  }

  else
  {
    v5 = *a2;
    *(v2 + v3) = 1;
    OUTLINED_FUNCTION_12();
    v7 = (v2 + *(v6 + 128));
    v9 = *v7;
    v8 = v7[1];
    type metadata accessor for BlueprintViewActionResponse();
    v10 = swift_allocObject();
    *(v10 + 40) = 0;
    *(v10 + 16) = a1 & 1;
    *(v10 + 41) = v5;
    *(v10 + 24) = v9;
    *(v10 + 32) = v8;

    return v10;
  }

  return result;
}

Swift::Void __swiftcall BlueprintViewActionRequest.cancel()()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 136);
  if (*(v0 + v2))
  {
    sub_1D81923A4();
    __break(1u);
  }

  else
  {
    *(v0 + v2) = 2;

    sub_1D818FD04();
  }
}

uint64_t sub_1D7FAC208(uint64_t a1)
{
  sub_1D81927E4();
  sub_1D7EBD688(v3, *v1);
  return sub_1D8192824();
}

uint64_t BlueprintViewActionRequest.deinit()
{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_12_0();
  type metadata accessor for BlueprintItem(0, v4, *(v3 + 88), v5);
  OUTLINED_FUNCTION_8();
  (*(v6 + 8))(v0 + v2);
  OUTLINED_FUNCTION_12();
  sub_1D7FAD240(v0 + *(v7 + 104), type metadata accessor for BlueprintViewAction.Action);
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_12();

  return v0;
}

uint64_t BlueprintViewActionRequest.__deallocating_deinit()
{
  BlueprintViewActionRequest.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall BlueprintViewActionResponse.complete(apply:)(TeaUI::BlueprintViewActionResponse::Apply apply)
{
  if ((*(v1 + 40) & 1) == 0 && *(v1 + 41) == *apply)
  {
    *(v1 + 40) = 1;

    sub_1D818FD04();
  }
}

uint64_t BlueprintViewActionResponse.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t BlueprintViewAction.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  type metadata accessor for BlueprintViewAction.Action(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v5 = v4 - v3;
  type metadata accessor for BlueprintViewAction(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_6_32();
  sub_1D7FAC9BC(0, v10, v11, MEMORY[0x1E69D65D0]);
  v33 = v12;
  OUTLINED_FUNCTION_9();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  OUTLINED_FUNCTION_1_57();
  sub_1D7FAC924(v1, v9, v18);
  swift_getEnumCaseMultiPayload();
  sub_1D7F9E220(0);
  v32 = *(v9 + *(v19 + 64));
  OUTLINED_FUNCTION_7_28();
  sub_1D7FAC860(v9 + v20, v5, v21);
  sub_1D7FAC9BC(0, &qword_1EDBB2C50, sub_1D7FA9B90, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v23 = OUTLINED_FUNCTION_13_18(inited, xmmword_1D81A1B70);
  OUTLINED_FUNCTION_11_21(v23);
  OUTLINED_FUNCTION_2_56();
  sub_1D7FAC924(v5, v24, v25);
  OUTLINED_FUNCTION_10_25();
  inited[10].n128_u64[1] = v26;
  inited[9].n128_u64[0] = v32;
  sub_1D8190D94();
  sub_1D818F264();
  OUTLINED_FUNCTION_0_78();
  sub_1D7FAD240(v5, v27);
  v29 = v33;
  v28 = v34;
  v34[3] = v33;
  v28[4] = sub_1D7FACA20();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28);
  return (*(v14 + 32))(boxed_opaque_existential_0, v17, v29);
}

uint64_t sub_1D7FAC77C(uint64_t a1)
{
  v2 = sub_1D7FAD18C(&qword_1ECA0E958, &protocol conformance descriptor for BlueprintViewAction);

  return MEMORY[0x1EEE44678](a1, v2);
}

uint64_t sub_1D7FAC7D4(uint64_t a1)
{
  sub_1D7FAC9BC(0, qword_1EDBB0DB0, type metadata accessor for BlueprintViewAction, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7FAC860(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_1D7FAC8C0(uint64_t a1)
{
  if (!qword_1ECA0E818)
  {
    type metadata accessor for BlueprintViewAction.Action(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA0E818);
    }
  }
}

uint64_t sub_1D7FAC924(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_1D7FAC9BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D7FACA20()
{
  result = qword_1ECA0E828;
  if (!qword_1ECA0E828)
  {
    sub_1D7FAC9BC(255, &qword_1ECA0E820, type metadata accessor for BlueprintViewAction, MEMORY[0x1E69D65D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E828);
  }

  return result;
}

unint64_t sub_1D7FACAAC()
{
  result = qword_1ECA0E830;
  if (!qword_1ECA0E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E830);
  }

  return result;
}

unint64_t sub_1D7FACB04()
{
  result = qword_1ECA0E838;
  if (!qword_1ECA0E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E838);
  }

  return result;
}

void sub_1D7FACBF0(uint64_t a1)
{
  sub_1D7F9E220(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1D7FACC50(uint64_t a1)
{
  sub_1D7F9E3F0(319);
  if (v1 <= 0x3F)
  {
    sub_1D7FACCC4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_1D7FACCC4()
{
  result = qword_1ECA0E848[0];
  if (!qword_1ECA0E848[0])
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], qword_1ECA0E848);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI19BlueprintViewActionO9AttributeO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

_BYTE *storeEnumTagSinglePayload for BlueprintViewAction.Source(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D7FACDF4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BlueprintViewAction.Action(319);
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BlueprintViewActionResponse.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D7FAD034(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D7FAD138()
{
  result = qword_1ECA0E950;
  if (!qword_1ECA0E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E950);
  }

  return result;
}

uint64_t sub_1D7FAD18C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BlueprintViewAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7FAD1D0(uint64_t a1)
{
  if (!qword_1ECA0E960)
  {
    type metadata accessor for EditingStyle();
    type metadata accessor for BlueprintViewAction.Action(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA0E960);
    }
  }
}

uint64_t sub_1D7FAD240(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

id sub_1D7FAD2C0()
{
  result = [objc_opt_self() systemBackgroundColor];
  qword_1ECA0E968 = result;
  *algn_1ECA0E970 = 0;
  return result;
}

TeaUI::ModalHostViewConfig __swiftcall ModalHostViewConfig.init(backgroundColor:visualEffect:)(UIColor backgroundColor, UIVisualEffect_optional visualEffect)
{
  v2->super.isa = backgroundColor.super.isa;
  v2[1].super.isa = visualEffect.value.super.isa;
  result.visualEffect = visualEffect;
  result.backgroundColor = backgroundColor;
  return result;
}

id static ModalHostViewConfig.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECA0C278 != -1)
  {
    swift_once();
  }

  v2 = *algn_1ECA0E970;
  v5 = qword_1ECA0E968;
  *a1 = qword_1ECA0E968;
  a1[1] = v2;
  v3 = v2;

  return v5;
}

void *ModalHostViewConfig.visualEffect.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

id sub_1D7FAD3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  sub_1D7FAD694(a1, &v3[OBJC_IVAR____TtC5TeaUI28SwipeActionAnimationDelegate_swipeState]);
  v8 = &v3[OBJC_IVAR____TtC5TeaUI28SwipeActionAnimationDelegate_completion];
  *v8 = a2;
  *(v8 + 1) = a3;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_1D7FAD6F8(a1);
  return v9;
}

uint64_t sub_1D7FAD460(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC5TeaUI28SwipeActionAnimationDelegate_completion);
  if (v3)
  {
    return v3(a2 & 1, v2 + OBJC_IVAR____TtC5TeaUI28SwipeActionAnimationDelegate_swipeState);
  }

  return result;
}

uint64_t type metadata accessor for SwipeActionAnimationDelegate(uint64_t a1)
{
  result = qword_1ECA0E9F8;
  if (!qword_1ECA0E9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7FAD5FC(uint64_t a1)
{
  result = type metadata accessor for SwipeActionState(319);
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

uint64_t sub_1D7FAD694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwipeActionState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7FAD6F8(uint64_t a1)
{
  v2 = type metadata accessor for SwipeActionState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void MenuItem.init<A>(command:context:title:symbolName:key:options:alternate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  OUTLINED_FUNCTION_120();
  v22 = v21;
  v24 = v23;
  v63 = v25;
  v64 = v26;
  v60 = v27;
  v61 = v28;
  v30 = v29;
  v32 = v31;
  v65 = v33;
  OUTLINED_FUNCTION_8_23();
  v35 = *(v34 + 88);
  v36 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v38 = v37;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v55 - v40;
  v42 = *v24;
  v43 = v24[1];
  v44 = v24[2];
  HIDWORD(v55) = *v22;
  v45 = *a21;
  v56 = v42;
  v57 = v45;
  v62 = v30;
  v46 = sub_1D7FADBEC(v32, v30);
  v58 = v47;
  v59 = v46;
  (*(v38 + 16))(v41, v30, v36);
  v48 = swift_allocObject();
  v50 = v60;
  v49 = v61;
  v48[2] = v35;
  v48[3] = v50;
  v48[4] = v49;
  v51 = swift_allocObject();
  v53 = v63;
  v52 = v64;
  v51[2] = v35;
  v51[3] = v53;
  v51[4] = v52;
  if (v43)
  {
    v54 = v56;
  }

  else
  {
    v44 = 0;
    v54 = 0;
  }

  HIBYTE(v66) = BYTE4(v55);
  type metadata accessor for MenuGroupItem.CommandMenuItem();
  sub_1D813CEC4(v59, v58, v32, v41, sub_1D7FADEB0, v48, sub_1D7FADF1C, v51, v54, v43, v44, v43 == 0, &v66 + 7, v57);
  (*(v38 + 8))(v62, v36);
  OUTLINED_FUNCTION_1_58(v65);
  OUTLINED_FUNCTION_100();
}

void MenuItem.init<A, B>(command:context:title:symbolName:state:key:options:alternate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 *a21, uint64_t *a22)
{
  OUTLINED_FUNCTION_120();
  v24 = v23;
  v26 = v25;
  v65 = v27;
  v66 = v28;
  v63 = v29;
  v64 = v30;
  v53 = v31;
  v33 = v32;
  v67 = v34;
  v35 = *v32;
  v55 = *(*v32 + 136);
  v36 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v38 = v37;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_51();
  v40 = *v26;
  v41 = *v24;
  v42 = v24[1];
  v43 = v24[2];
  v57 = *(a21 + 16);
  v58 = v40;
  v60 = *a22;
  v44 = sub_1D7FADBEC(v33, v53);
  v61 = v45;
  v62 = v44;
  if (v42)
  {
    v46 = v43;
  }

  else
  {
    v46 = 0;
  }

  v56 = v46;
  if (v42)
  {
    v47 = v41;
  }

  else
  {
    v47 = 0;
  }

  v59 = v47;
  v54 = *a21;
  (*(v38 + 16))(v22, v53, v36);
  v48 = swift_allocObject();
  *(v48 + 16) = v55;
  v49 = *(v35 + 144);
  *(v48 + 24) = v49;
  v50 = *(v35 + 152);
  *(v48 + 32) = v50;
  *(v48 + 40) = v63;
  *(v48 + 48) = v64;
  v51 = swift_allocObject();
  v51[2] = v55;
  v51[3] = v49;
  v51[4] = v50;
  v51[5] = v65;
  v51[6] = v66;
  v70[0] = v58;
  v68 = v54;
  v69 = v57;
  type metadata accessor for MenuGroupItem.CommandMenuItem();
  OUTLINED_FUNCTION_18_15(v62, v61, v33, v22, sub_1D7FAE328, v48, sub_1D7FAE358, v52, v70, v59, v42, v56, v42 == 0, &v68, v60);
  (*(v38 + 8))(v53, v36);
  OUTLINED_FUNCTION_1_58(v67);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7FADBEC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = sub_1D818E794();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v4 + 88);
  v10 = sub_1D8191E84();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  (*(v11 + 16))(&v23 - v13, a2, v10, v12);
  if (__swift_getEnumTagSinglePayload(v14, 1, v9) == 1)
  {
    (*(v11 + 8))(v14, v10);
LABEL_6:
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    goto LABEL_7;
  }

  sub_1D7FAF698();
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  if (!*(&v24 + 1))
  {
LABEL_7:
    sub_1D7FAF63C(&v23);
    v18 = a1[3];
    v26[0] = a1[2];
    v26[1] = v18;
    sub_1D8190DB4();
    MEMORY[0x1DA713260](45, 0xE100000000000000);
    sub_1D818E784();
    v19 = sub_1D818E764();
    v21 = v20;
    (*(v6 + 8))(v8, v5);
    MEMORY[0x1DA713260](v19, v21);

    return v26[0];
  }

  sub_1D7E05450(&v23, v26);
  v15 = a1[3];
  *&v23 = a1[2];
  *(&v23 + 1) = v15;
  sub_1D8190DB4();
  MEMORY[0x1DA713260](45, 0xE100000000000000);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v16 = sub_1D818EF94();
  MEMORY[0x1DA713260](v16);

  v17 = v23;
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return v17;
}

uint64_t sub_1D7FADEB0()
{
  v1 = *(v0 + 24);
  sub_1D8190DB4();
  return v1;
}

uint64_t sub_1D7FADEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  sub_1D8190DB4();
  return v3;
}

void MenuItem.init<A>(command:context:titleClosure:symbolNameClosure:key:options:alternate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  OUTLINED_FUNCTION_120();
  v23 = v22;
  v25 = v24;
  v50 = v26;
  v51 = v27;
  v48 = v28;
  v49 = v29;
  v52 = v31;
  v53 = v30;
  v33 = v32;
  OUTLINED_FUNCTION_8_23();
  v34 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v36 = v35;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_8_2();
  v39 = *v25;
  v38 = v25[1];
  v40 = v25[2];
  v41 = *v23;
  v42 = *a21;
  v43 = sub_1D7FADBEC(v33, v53);
  v46 = v44;
  v47 = v43;
  (*(v36 + 16))(v21, v53, v34);
  if (!v38)
  {
    v40 = 0;
    v39 = 0;
  }

  v54 = v41;
  type metadata accessor for MenuGroupItem.CommandMenuItem();
  v45 = sub_1D813CEC4(v47, v46, v33, v21, v48, v49, v50, v51, v39, v38, v40, v38 == 0, &v54, v42);
  (*(v36 + 8))(v53, v34);
  *v52 = v45;
  *(v52 + 73) = 0;
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7FAE328()
{
  v1 = *(v0 + 40);
  sub_1D8190DB4();
  return v1;
}

uint64_t sub_1D7FAE358()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v1 = 0;
  }

  sub_1D8190DB4();
  return v1;
}

void MenuItem.init<A, B>(command:context:title:state:key:options:alternate:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v29 = v9;
  v30 = v10;
  v12 = v11;
  v14 = v13;
  v28 = v15;
  OUTLINED_FUNCTION_8_23();
  v16 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v18 = v17;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8_2();
  LOBYTE(v8) = *v8;
  v20 = *v6;
  v21 = *(v6 + 2);
  v22 = *(v4 + 16);
  v23 = *v2;
  v26 = *v4;
  v27 = v20;
  (*(v18 + 16))(v0, v12, v16);
  v37 = v8;
  v35 = v27;
  v36 = v21;
  LOBYTE(v33) = v22;
  MenuItem.init<A, B>(command:context:title:symbolName:state:key:options:alternate:)(v14, v0, v29, v30, 0, 0xE000000000000000, &v37, &v35, &v32, &v31, v26, *(&v26 + 1), v27, *(&v27 + 1), v28, v29, v30, v23, v26, *(&v26 + 1), v33, v34);
  v24 = OUTLINED_FUNCTION_14_14();
  v25(v24);
  OUTLINED_FUNCTION_100();
}

{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v45 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v51 = v10;
  v13 = v12;
  v54 = v14;
  v15 = *v12;
  v16 = *(*v12 + 136);
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v52 = v18;
  v53 = v17;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - v20;
  v22 = *(v9 + 16);
  v41 = *(v9 + 24);
  v42 = v22;
  HIDWORD(v44) = *v7;
  v23 = *v5;
  v24 = v5[1];
  v43 = v5[2];
  HIDWORD(v46) = *(v3 + 16);
  v25 = *v1;
  v47 = v23;
  v48 = v25;
  v26 = sub_1D7FADBEC(v13, v11);
  v28 = OUTLINED_FUNCTION_17_15(v26, v27);
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v16);
  OUTLINED_FUNCTION_15_17();
  v31 = swift_allocObject();
  *(v31 + 16) = v16;
  v32 = *(v15 + 144);
  *(v31 + 24) = v32;
  v33 = *(v15 + 152);
  *(v31 + 32) = v33;
  *(v31 + 40) = *v9;
  v34 = v41;
  *(v31 + 56) = v42;
  *(v31 + 64) = v34;
  v35 = swift_allocObject();
  v35[2] = v16;
  v35[3] = v32;
  v35[4] = v33;
  v55 = BYTE4(v44);
  if (v24)
  {
    v36 = v43;
  }

  else
  {
    v36 = 0;
  }

  if (v24)
  {
    v37 = v47;
  }

  else
  {
    v37 = 0;
  }

  OUTLINED_FUNCTION_11_22();
  OUTLINED_FUNCTION_2_57();
  OUTLINED_FUNCTION_18_15(v50, v49, v13, v21, sub_1D7FAF6F4, v31, j__OUTLINED_FUNCTION_13_1, v38, &v55, v37, v24, v36, v24 == 0, v46, v47);
  v39 = OUTLINED_FUNCTION_12_19();
  v40(v39);
  OUTLINED_FUNCTION_1_58(v54);
  OUTLINED_FUNCTION_100();
}

{
  OUTLINED_FUNCTION_120();
  v6 = v1;
  OUTLINED_FUNCTION_8_23();
  v2 = *(sub_1D8191E84() - 8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_51();
  v5 = v4;
  (*(v2 + 16))(v0, v6, v4);
  MenuItem.init<A, B>(command:context:title:symbolName:state:key:options:alternate:)();
  (*(v2 + 8))(v6, v5);
  OUTLINED_FUNCTION_100();
}

void MenuItem.init<A, B>(command:context:title:symbolName:state:key:options:alternate:)()
{
  OUTLINED_FUNCTION_120();
  v73 = v0;
  v74 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v67 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v65 = *v13;
  v77 = *(v65 + 136);
  v75 = v13;
  v55 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v52 = &v49 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v49 - v23;
  v70 = &v49 - v23;
  v25 = *(v10 + 3);
  v57 = *(v10 + 2);
  v56 = v25;
  v26 = *v7;
  v27 = v5[1];
  *&v61 = *v5;
  v66 = v27;
  v28 = v5[2];
  v29 = v3;
  v68 = *(v3 + 16);
  v69 = v26;
  v71 = *v73;
  v76 = v12;
  v30 = sub_1D7FADBEC(v14, v12);
  v72 = v31;
  v73 = v30;
  v32 = *(v16 + 16);
  v51 = v32;
  v53 = *v10;
  v33 = v67[1];
  v59 = *v67;
  v58 = v33;
  v64 = v27 == 0;
  if (v27)
  {
    v34 = v28;
  }

  else
  {
    v34 = 0;
  }

  v63 = v34;
  v35 = v61;
  if (!v27)
  {
    v35 = 0;
  }

  v67 = v35;
  v61 = *v29;
  v36 = v55;
  v32(v24, v12, v55);
  v37 = v52;
  v32(v52, v12, v36);
  v38 = v16;
  v60 = v16;
  v39 = (*(v16 + 80) + 72) & ~*(v16 + 80);
  v40 = swift_allocObject();
  v41 = v65;
  *(v40 + 16) = v77;
  v50 = *(v41 + 144);
  *(v40 + 24) = v50;
  v42 = *(v41 + 152);
  *(v40 + 32) = v42;
  *(v40 + 40) = v53;
  v43 = v56;
  *(v40 + 56) = v57;
  *(v40 + 64) = v43;
  v44 = *(v38 + 32);
  v44(v40 + v39, v37, v36);
  v45 = v62;
  v51(v62, v76, v36);
  v46 = swift_allocObject();
  v47 = v50;
  *(v46 + 16) = v77;
  *(v46 + 24) = v47;
  *(v46 + 32) = v42;
  *(v46 + 56) = v58;
  *(v46 + 40) = v59;
  v44(v46 + v39, v45, v36);
  v80[0] = v69;
  v78 = v61;
  v79 = v68;
  type metadata accessor for MenuGroupItem.CommandMenuItem();
  OUTLINED_FUNCTION_2_57();
  OUTLINED_FUNCTION_18_15(v73, v72, v75, v70, sub_1D7FAED9C, v40, sub_1D7FAF020, v48, v80, v67, v66, v63, v64, *(&v53 + 1), v54);
  (*(v60 + 8))(v76, v36);
  OUTLINED_FUNCTION_1_58(v74);
  OUTLINED_FUNCTION_100();
}

{
  OUTLINED_FUNCTION_120();
  v55 = v1;
  v56 = v0;
  v3 = v2;
  v50 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v0;
  v14 = v13;
  v59 = v15;
  v16 = *v13;
  v17 = *(*v13 + 136);
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v57 = v19;
  v58 = v18;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  v23 = *(v11 + 16);
  v44 = *(v11 + 24);
  v45 = v23;
  v24 = *(v9 + 16);
  v48 = *(v9 + 24);
  v49 = v24;
  HIDWORD(v47) = *v7;
  v25 = *v5;
  v26 = v5[1];
  v46 = v5[2];
  v51 = *(v3 + 16);
  v27 = *v55;
  v52 = v25;
  v53 = v27;
  v28 = sub_1D7FADBEC(v14, v12);
  v30 = OUTLINED_FUNCTION_17_15(v28, v29);
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v17);
  OUTLINED_FUNCTION_15_17();
  v33 = swift_allocObject();
  *(v33 + 16) = v17;
  v34 = *(v16 + 144);
  *(v33 + 24) = v34;
  v35 = *(v16 + 152);
  *(v33 + 32) = v35;
  *(v33 + 40) = *v11;
  v36 = v44;
  *(v33 + 56) = v45;
  *(v33 + 64) = v36;
  OUTLINED_FUNCTION_15_17();
  v37 = swift_allocObject();
  *(v37 + 16) = v17;
  *(v37 + 24) = v34;
  *(v37 + 32) = v35;
  *(v37 + 40) = *v9;
  v38 = v48;
  *(v37 + 56) = v49;
  *(v37 + 64) = v38;
  v60[0] = BYTE4(v47);
  if (v26)
  {
    v39 = v46;
  }

  else
  {
    v39 = 0;
  }

  if (v26)
  {
    v40 = v52;
  }

  else
  {
    v40 = 0;
  }

  OUTLINED_FUNCTION_11_22();
  OUTLINED_FUNCTION_2_57();
  OUTLINED_FUNCTION_18_15(v55, v54, v14, v22, sub_1D7FAF6F4, v33, sub_1D7FAF548, v41, v60, v40, v26, v39, v26 == 0, v49, v50);
  v42 = OUTLINED_FUNCTION_12_19();
  v43(v42);
  OUTLINED_FUNCTION_1_58(v59);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7FAEB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30 = a10;
  v31 = a1;
  v28 = a7;
  v29 = a9;
  v16 = sub_1D8191E84();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v28 - v22;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v24 = *(v17 + 16);
  v24(v19, a2, v16, v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, a8) == 1)
  {
    (v24)(v23, v28, v16);
    if (__swift_getEnumTagSinglePayload(v19, 1, a8) != 1)
    {
      (*(v17 + 8))(v19, v16);
    }
  }

  else
  {
    (*(*(a8 - 8) + 32))(v23, v19, a8);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, a8);
  }

  v25 = type metadata accessor for StateCommandContextTitle(0, v29, a8, v30);
  v26 = sub_1D8168D58(v31, v23, v25);
  (*(v17 + 8))(v23, v16);
  return v26;
}

uint64_t sub_1D7FAEDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v31 = a7;
  v32 = a1;
  v16 = sub_1D8191E84();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v29 - v22;
  if (a3)
  {
    v29 = a9;
    v30 = a10;
    v33 = a3;
    v34 = a4;
    v35 = a5;
    v36 = a6;
    v24 = *(v17 + 16);
    v24(v19, a2, v16, v21);
    if (__swift_getEnumTagSinglePayload(v19, 1, a8) == 1)
    {
      (v24)(v23, v31, v16);
      if (__swift_getEnumTagSinglePayload(v19, 1, a8) != 1)
      {
        v25 = *(v17 + 8);

        sub_1D8190DB4();
        v25(v19, v16);
LABEL_8:
        v27 = type metadata accessor for StateCommandContextTitle(0, v29, a8, v30);
        v26 = sub_1D8168D58(v32, v23, v27);
        (*(v17 + 8))(v23, v16);

        return v26;
      }
    }

    else
    {
      (*(*(a8 - 8) + 32))(v23, v19, a8);
      __swift_storeEnumTagSinglePayload(v23, 0, 1, a8);
    }

    sub_1D8190DB4();
    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_1D7FAF038(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void, void, void, void, char *, uint64_t, uint64_t, uint64_t))
{
  v7 = *(v3 + 2);
  v8 = *(v3 + 3);
  v9 = *(v3 + 4);
  v10 = *(sub_1D8191E84() - 8);
  return a3(a1, a2, *(v3 + 5), *(v3 + 6), *(v3 + 7), *(v3 + 8), &v3[(*(v10 + 80) + 72) & ~*(v10 + 80)], v7, v8, v9);
}

uint64_t MenuItem.init(provider:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D7E05450(a1, a2);
  *(a2 + 73) = 1;
  return result;
}

uint64_t sub_1D7FAF594(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 74))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 73);
      if (v3 <= 3)
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

uint64_t sub_1D7FAF5D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 74) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 74) = 0;
    }

    if (a2)
    {
      *(result + 73) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D7FAF63C(uint64_t a1)
{
  sub_1D7F76EE8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D7FAF698()
{
  result = qword_1EDBBC530;
  if (!qword_1EDBBC530)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBBC530);
  }

  return result;
}

uint64_t BlueprintLayoutProvider.layoutViewStateCollection.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v8 = v1;
  v4 = *(v3 + 96);
  v7[0] = *(v3 + 80);
  v7[1] = v4;
  a1[3] = type metadata accessor for BlueprintLayout(0, v7);
  a1[4] = &protocol witness table for BlueprintLayout<A, B>;
  *a1 = swift_allocObject();
  WitnessTable = swift_getWitnessTable();
  return BlueprintLayoutProviderType.layoutBlueprint.getter(v3, WitnessTable);
}

uint64_t BlueprintLayoutProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  BlueprintLayoutProvider.init()();
  return v0;
}

uint64_t BlueprintLayoutProvider.__deallocating_deinit()
{
  BlueprintLayoutProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7FAF8FC()
{
  sub_1D7E13588();
  OUTLINED_FUNCTION_0_79();
  result = sub_1D8191E54();
  qword_1EDBC6038 = result;
  return result;
}

uint64_t sub_1D7FAF948()
{
  sub_1D7E13588();
  OUTLINED_FUNCTION_0_79();
  result = sub_1D8191E54();
  qword_1ECA2C530 = result;
  return result;
}

uint64_t sub_1D7FAF994()
{
  sub_1D7E13588();
  OUTLINED_FUNCTION_0_79();
  result = sub_1D8191E54();
  qword_1EDBC6088 = result;
  return result;
}

uint64_t sub_1D7FAF9E0()
{
  sub_1D7E13588();
  OUTLINED_FUNCTION_0_79();
  result = sub_1D8191E54();
  qword_1EDBC6060 = result;
  return result;
}

uint64_t sub_1D7FAFA24()
{
  sub_1D7E13588();
  OUTLINED_FUNCTION_0_79();
  result = sub_1D8191E54();
  qword_1ECA2C538 = result;
  return result;
}

uint64_t sub_1D7FAFAD0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1D818FE34();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1D7FAFB68()
{
  sub_1D7FB0500(0);
  swift_allocObject();
  result = sub_1D818F3C4();
  qword_1ECA0EA28 = result;
  return result;
}

double UICollectionViewListCell.ts_image(from:with:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(v10 + 16))(v9, v10);
  v11 = sub_1D8190EE4();

  v12 = qword_1ECA0C2B0;
  v13 = v11;
  if (v12 != -1)
  {
    OUTLINED_FUNCTION_1_60(&qword_1ECA0C2B0);
  }

  swift_unknownObjectRetain();
  sub_1D818F3F4(v14);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = v13;
  v17[4] = a3;
  v17[5] = a4;
  v18 = *(v16 + 8);
  v19 = v13;
  v20 = v5;

  v18(a2, sub_1D7FB002C, v17, v15, v16);

  return result;
}

uint64_t sub_1D7FAFD24(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8)
{
  v32 = a5;
  v11 = sub_1D8190BD4();
  v34 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D8190C34();
  v14 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0, 0x1E69E9610);
  v17 = sub_1D8191AB4();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a4;
  v19[4] = v32;
  v19[5] = a6;
  v19[6] = a1;
  aBlock[4] = sub_1D7FB04F0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E64940;
  aBlock[3] = &block_descriptor_24;
  v20 = _Block_copy(aBlock);
  v21 = a1;
  v22 = a4;

  v23 = sub_1D8190BF4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7EBCD5C(v28, v29, v23, v24, v25, v26, v27);
  sub_1D7FB03C0(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7EBCDB4();
  sub_1D8192004();
  MEMORY[0x1DA713CE0](0, v16, v13, v20);
  _Block_release(v20);

  (*(v34 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v33);
}

void sub_1D7FB0038(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (qword_1ECA0C2B0 != -1)
    {
      swift_once();
    }

    v10 = sub_1D818F3E4();

    if (v10)
    {
      sub_1D7E0A1A8(0, &qword_1EDBB2F28, 0x1E696AEC0);
      v11 = a2;
      v12 = sub_1D8191CC4();

      if (v12)
      {
        a3(a5);
      }
    }
  }
}

Swift::Void __swiftcall UICollectionViewListCell.ts_clearImage()()
{
  OUTLINED_FUNCTION_0_80();
  sub_1D7FB03C0(0, v0, v1, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16[-1] - v3;
  v5 = sub_1D818FF54();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1DA713D50](v16, v7);
  if (v17)
  {
    sub_1D7FB0424();
    v10 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v4, v10 ^ 1u, 1, v5);
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v9, v4, v5);
      sub_1D818FF44();
      v17 = v5;
      v18 = MEMORY[0x1E69DC110];
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
      (*(v6 + 16))(boxed_opaque_existential_0, v9, v5);
      MEMORY[0x1DA713D60](v16);
      (*(v6 + 8))(v9, v5);
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D7FB0480(v16, &qword_1ECA0EA38, sub_1D7FB0424);
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  }

  OUTLINED_FUNCTION_0_80();
  sub_1D7FB0480(v4, v12, v13);
LABEL_6:
  if (qword_1ECA0C2B0 != -1)
  {
    OUTLINED_FUNCTION_1_60(&qword_1ECA0C2B0);
  }

  swift_unknownObjectRetain();
  sub_1D818F3F4(v14);
}

void sub_1D7FB03C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D7FB0424()
{
  result = qword_1ECA0EA40[0];
  if (!qword_1ECA0EA40[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1ECA0EA40);
  }

  return result;
}

uint64_t sub_1D7FB0480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7FB03C0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D7FB0500(uint64_t a1)
{
  if (!qword_1EDBB2038)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB2F28, 0x1E696AEC0);
    v1 = sub_1D818F3D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBB2038);
    }
  }
}

uint64_t LayeredViewProvider.__allocating_init(layerViewProvider:)(uint64_t a1)
{
  v1 = swift_allocObject();
  LayeredViewProvider.init(layerViewProvider:)();
  return v1;
}

uint64_t LayeredViewProvider.init(layerViewProvider:)()
{
  OUTLINED_FUNCTION_1_3();
  (*(*(*(v2 + 88) - 8) + 32))(v0 + *(v1 + 112));
  return v0;
}

uint64_t LayeredViewProvider.view(for:)(uint64_t a1)
{
  v22 = a1;
  OUTLINED_FUNCTION_1_3();
  v2 = *(v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v21 = *(v7 + 104);
  v8.i64[0] = v2;
  v26 = v9;
  v23 = *(v10 + 88);
  v11 = *(v10 + 96);
  v24 = vzip1q_s64(v8, v23);
  v25 = v11;
  swift_getAssociatedTypeWitness();
  sub_1D8191484();
  sub_1D818FC24();
  v12 = sub_1D818EE74();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D8191484();

  sub_1D818FAC4();

  (*(v3 + 16))(v6, v22, v2);
  v14 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v23;
  *(v15 + 40) = v21;
  (*(v3 + 32))(v15 + v14, v6, v2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for LayeredView(0, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  v18 = sub_1D818FA14();
  v19 = sub_1D818FAC4();

  return v19;
}

void *sub_1D7FB0944@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = sub_1D8191484();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  result = sub_1D7E6CDC0(sub_1D7FB0E0C, a1, v4, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);
  *a2 = result;
  return result;
}

id sub_1D7FB0B20@<X0>(uint64_t a2@<X2>, uint64_t a4@<X4>, uint64_t *a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for LayeredView(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  (*(a4 + 24))(a2, a4);
  sub_1D8190DB4();
  result = sub_1D80E78D8();
  *a6 = result;
  return result;
}

uint64_t LayeredViewProvider.deinit()
{
  OUTLINED_FUNCTION_1_3();
  (*(*(*(v2 + 88) - 8) + 8))(v0 + *(v1 + 112));
  return v0;
}

uint64_t LayeredViewProvider.__deallocating_deinit()
{
  LayeredViewProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7FB0D34(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1D7FB0E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1D818E994();
  OUTLINED_FUNCTION_0_13();
  (*(v19 + 32))(a9, a1);
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a10;
  v32 = a11;
  v33 = a12;
  v34 = a13;
  v20 = type metadata accessor for ContextMenuContext(0, &v27);
  v21 = v20[21];
  v27 = a5;
  v28 = a6;
  v29 = a10;
  v30 = a11;
  type metadata accessor for Blueprint(0, &v27);
  OUTLINED_FUNCTION_0_13();
  (*(v22 + 32))(a9 + v21, a2);
  memcpy((a9 + v20[22]), a3, 0x260uLL);
  return sub_1D7E05450(a4, a9 + v20[23]);
}

uint64_t ContextMenuContext.indexPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D818E994();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ContextMenuContext.blueprint.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 84);
  v5 = OUTLINED_FUNCTION_1_61();
  type metadata accessor for Blueprint(v5, v6);
  OUTLINED_FUNCTION_0_13();
  return (*(v7 + 16))(a2, v2 + v4);
}

uint64_t ContextMenuContext.layoutBlueprint.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 88);
  v5 = OUTLINED_FUNCTION_1_61();
  type metadata accessor for BlueprintLayout(v5, v6);
  OUTLINED_FUNCTION_0_13();
  return (*(v7 + 16))(a2, v2 + v4);
}

uint64_t sub_1D7FB10A4(_OWORD *a1)
{
  result = sub_1D818E994();
  if (v3 <= 0x3F)
  {
    v11 = 0;
    v15 = result;
    v4 = a1[3];
    v9 = a1[1];
    v10 = v4;
    result = type metadata accessor for Blueprint(319, &v9);
    if (v5 <= 0x3F)
    {
      v12 = 0;
      v16 = result;
      v6 = a1[4];
      v9 = a1[2];
      v10 = v6;
      result = type metadata accessor for BlueprintLayout(319, &v9);
      if (v7 <= 0x3F)
      {
        v13 = 0;
        v17 = result;
        result = sub_1D7FB11B8();
        if (v8 <= 0x3F)
        {
          v14 = 0;
          v18 = result;
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1D7FB11B8()
{
  result = qword_1EDBBD578;
  if (!qword_1EDBBD578)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBBD578);
  }

  return result;
}

id MotionLayer.init(backingLayer:)(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  *(v1 + qword_1EDBBBE88) = 0x8000000000000000;
  OUTLINED_FUNCTION_6_33(qword_1EDBBBE80);
  *(v1 + qword_1EDBBBE98) = 1;
  *(v1 + qword_1EDBBBEA0) = 1;
  v5 = qword_1EDBBBE90;
  *(v1 + qword_1EDBBBE90) = 0;
  OUTLINED_FUNCTION_56(v1 + v5, v15);
  *(v1 + v5) = a1;
  v8 = type metadata accessor for MotionLayer(0, *((v4 & v3) + 0x50), v6, v7);
  v14.receiver = v1;
  v14.super_class = v8;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  v11 = v9;
  v12 = v10;
  [v12 addSublayer_];
  [v11 setDelegate_];

  swift_unknownObjectRelease();
  return v12;
}

double sub_1D7FB1414@<D0>(void *a1@<X8>)
{
  v3 = qword_1EDBBBE88;
  OUTLINED_FUNCTION_8_4(v1 + qword_1EDBBBE88, v5);
  *a1 = *(v1 + v3);

  return result;
}

double sub_1D7FB1468(uint64_t *a1)
{
  v2 = *a1;
  v3 = qword_1EDBBBE88;
  OUTLINED_FUNCTION_56(v1 + qword_1EDBBBE88, v5);
  *(v1 + v3) = v2;

  return result;
}

uint64_t sub_1D7FB151C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + qword_1EDBBBE80;
  OUTLINED_FUNCTION_8_4(v3, v7);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;
  return sub_1D7F387E8(v4, v5);
}

double sub_1D7FB1570(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + qword_1EDBBBE80;
  OUTLINED_FUNCTION_56(v1 + qword_1EDBBBE80, v9);
  v5 = *v4;
  *v4 = v2;
  LOBYTE(v2) = *(v4 + 8);
  *(v4 + 8) = v3;
  sub_1D7F387E8(v5, v2);
  sub_1D7F38800(v5, v2);
  v7 = v5;
  v8 = v2;
  sub_1D7FB1C04(&v7);
  return sub_1D7F38800(v5, v2);
}

void (*sub_1D7FB1608(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  v4 = v1 + qword_1EDBBBE80;
  OUTLINED_FUNCTION_8_4(v4, v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  v3[3] = *v4;
  *(v3 + 32) = v6;
  sub_1D7F387E8(v5, v6);
  return sub_1D7FB1690;
}

void sub_1D7FB1690(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(v3 + 32);
  v6 = v4;
  v7 = v5;
  if (a2)
  {
    sub_1D7F387E8(v4, v5);
    sub_1D7FB1570(&v6);
    sub_1D7F38800(*(v3 + 24), *(v3 + 32));
  }

  else
  {
    sub_1D7FB1570(&v6);
  }

  free(v3);
}

uint64_t sub_1D7FB1718(uint64_t a1)
{
  v2 = qword_1EDBBBE98;
  OUTLINED_FUNCTION_1_0(a1);
  return *(v1 + v2);
}

void (*sub_1D7FB1758(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = qword_1EDBBBE98;
  OUTLINED_FUNCTION_8_4(v1 + qword_1EDBBBE98, v3);
  *(v3 + 32) = *(v1 + v4);
  return sub_1D7FB17D0;
}

uint64_t sub_1D7FB17E8(uint64_t a1)
{
  v2 = qword_1EDBBBEA0;
  OUTLINED_FUNCTION_1_0(a1);
  return *(v1 + v2);
}

void sub_1D7FB1828(char a1, uint64_t *a2)
{
  v5 = *a2;
  OUTLINED_FUNCTION_56(v2 + *a2, v7);
  v6 = *(v2 + v5);
  *(v2 + v5) = a1;
  sub_1D7FB1D78(v6, a2);
}

void (*sub_1D7FB187C(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = qword_1EDBBBEA0;
  OUTLINED_FUNCTION_8_4(v1 + qword_1EDBBBEA0, v3);
  *(v3 + 32) = *(v1 + v4);
  return sub_1D7FB18F4;
}

void sub_1D7FB190C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  (a3)(*(*a1 + 32), a2);

  free(v3);
}

void *sub_1D7FB1950(uint64_t a1)
{
  v2 = qword_1EDBBBE90;
  OUTLINED_FUNCTION_1_0(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1D7FB198C(uint64_t a1)
{
  v3 = qword_1EDBBBE90;
  OUTLINED_FUNCTION_56(v1 + qword_1EDBBBE90, v5);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1D7FB19DC(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E7D40] & *v1;
  v3 = sub_1D7FB1950(a1);
  if (v3)
  {
    v7 = v3;
    v4 = sub_1D7FB1718(v3);
    if (v4 & 1) != 0 && (sub_1D7FB17E8(v4))
    {
      [v1 bounds];
      OUTLINED_FUNCTION_9_0();
      sub_1D7FB1414(&v8);
      type metadata accessor for MotionLayer(0, *(v2 + 80), v5, v6);
      OUTLINED_FUNCTION_8_0();
      MotionTransformable.transform(motionData:layer:bounds:motionTransform:)();
    }

    else
    {
    }
  }
}

double sub_1D7FB1B38(uint64_t *a1)
{
  v2 = *a1;

  return sub_1D7FB1468(&v2);
}

uint64_t sub_1D7FB1B78@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D7FB151C(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

double sub_1D7FB1BBC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_1D7F387E8(v3, v1);
  return sub_1D7FB1570(&v3);
}

void sub_1D7FB1C04(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E7D40] & *v1;
  v3 = *(a1 + 8);
  v16 = *a1;
  v17 = v3;
  v4 = v1 + qword_1EDBBBE80;
  swift_beginAccess();
  v5 = v4[8];
  v14 = *v4;
  v15 = v5;
  sub_1D7F387E8(v14, v5);
  v6 = static MotionDisabledTransform.== infix(_:_:)(&v16, &v14);
  sub_1D7F38800(v14, v15);
  if ((v6 & 1) == 0)
  {
    v8 = sub_1D7FB1718(v7);
    if ((v8 & 1) == 0 || (v8 = sub_1D7FB17E8(v8), (v8 & 1) == 0))
    {
      v9 = sub_1D7FB1950(v8);
      if (v9)
      {
        v10 = v9;
        [v1 bounds];
        v11 = v4[8];
        v16 = *v4;
        v17 = v11;
        sub_1D7F387E8(v16, v11);
        type metadata accessor for MotionLayer(0, *(v2 + 80), v12, v13);
        MotionTransformable.transform(layer:bounds:motionDisabled:)(v10, &v16);

        sub_1D7F38800(v16, v17);
      }
    }
  }
}

void sub_1D7FB1D78(char a1, uint64_t *a2)
{
  v4 = *MEMORY[0x1E69E7D40] & *v2;
  v5 = *a2;
  v6 = OUTLINED_FUNCTION_8_4(v2 + *a2, v17);
  if (*(v2 + v5) & 1) == 0 && (a1)
  {
    v7 = sub_1D7FB1950(v6);
    if (v7)
    {
      v8 = v7;
      [v2 bounds];
      OUTLINED_FUNCTION_9_0();
      sub_1D7FB151C(&v15);
      v13 = v15;
      v14 = v16;
      type metadata accessor for MotionLayer(0, *(v4 + 80), v9, v10);
      OUTLINED_FUNCTION_8_0();
      MotionTransformable.transform(layer:bounds:motionDisabled:)(v11, v12);

      sub_1D7F38800(v13, v14);
    }
  }
}

void sub_1D7FB1E7C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D7FB198C(v1);
}

id MotionLayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MotionLayer.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x1E69E7D40];
  *(v4 + qword_1EDBBBE88) = 0x8000000000000000;
  v7 = v4 + qword_1EDBBBE80;
  *v7 = 0;
  v7[8] = 2;
  *(v4 + qword_1EDBBBE98) = 1;
  *(v4 + qword_1EDBBBEA0) = 1;
  *(v4 + qword_1EDBBBE90) = 0;
  v8 = type metadata accessor for MotionLayer(0, *((v6 & v5) + 0x50), a3, a4);
  v10.receiver = v4;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, sel_init);
}

id MotionLayer.__allocating_init(layer:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = [v3 initWithLayer_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

_BYTE *MotionLayer.init(layer:)(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  *(v1 + qword_1EDBBBE88) = 0x8000000000000000;
  OUTLINED_FUNCTION_6_33(qword_1EDBBBE80);
  *(v1 + qword_1EDBBBE98) = 1;
  *(v1 + qword_1EDBBBEA0) = 1;
  *(v1 + qword_1EDBBBE90) = 0;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v6 = sub_1D8192614();
  v9 = type metadata accessor for MotionLayer(0, *((v4 & v3) + 0x50), v7, v8);
  v43.receiver = v1;
  v43.super_class = v9;
  v10 = objc_msgSendSuper2(&v43, sel_initWithLayer_, v6);
  swift_unknownObjectRelease();
  sub_1D7E1B288(a1, &v41);
  if (swift_dynamicCast())
  {
    v11 = v40;
    sub_1D7FB1414(&v41);
    v12 = v41;
    v13 = qword_1EDBBBE88;
    OUTLINED_FUNCTION_56(v10 + qword_1EDBBBE88, &v40);
    *(v10 + v13) = v12;

    sub_1D7FB151C(&v41);
    v14 = v41;
    v15 = v42;
    v16 = v10 + qword_1EDBBBE80;
    OUTLINED_FUNCTION_56(v10 + qword_1EDBBBE80, v39);
    v17 = *v16;
    *v16 = v14;
    v18 = v16[8];
    v16[8] = v15;
    sub_1D7F38800(v17, v18);
    LOBYTE(v16) = sub_1D7FB1718(v19);
    v20 = qword_1EDBBBE98;
    v21 = OUTLINED_FUNCTION_56(v10 + qword_1EDBBBE98, v38);
    *(v10 + v20) = v16 & 1;
    LOBYTE(v16) = sub_1D7FB17E8(v21);
    v22 = qword_1EDBBBEA0;
    OUTLINED_FUNCTION_56(v10 + qword_1EDBBBEA0, v37);
    *(v10 + v22) = v16 & 1;
    v23 = [v11 sublayers];
    if (v23)
    {
      v24 = v23;
      sub_1D7FB2944();
      v25 = sub_1D8191314();

      sub_1D7E33DD8(0, (v25 & 0xC000000000000001) == 0, v25);
      if ((v25 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1DA714420](0, v25);
      }

      else
      {
        v26 = *(v25 + 32);
      }

      v27 = v26;

      v28 = swift_dynamicCastUnknownClass();
      if (!v28)
      {
      }
    }

    else
    {

      v28 = 0;
    }

    v29 = &type metadata for PageViewSession;
    v30 = qword_1EDBBBE90;
    OUTLINED_FUNCTION_56(v10 + qword_1EDBBBE90, &v36);
    v31 = *(v10 + v30);
    *(v10 + v30) = v28;
  }

  else
  {
    v29 = &type metadata for PageViewSession;
  }

  Kind = v29[233].Kind;
  swift_beginAccess();
  v33 = *(v10 + Kind);
  if (v33)
  {
    swift_endAccess();
    v34 = v33;
    [v34 setDelegate_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    swift_endAccess();
  }

  return v10;
}

_BYTE *sub_1D7FB2388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  sub_1D8191F34();
  swift_unknownObjectRelease();
  return MotionLayer.init(layer:)(v4);
}

void sub_1D7FB23D8()
{
  *(v0 + qword_1EDBBBE88) = 0x8000000000000000;
  OUTLINED_FUNCTION_6_33(qword_1EDBBBE80);
  *(v0 + qword_1EDBBBE98) = 1;
  *(v0 + qword_1EDBBBEA0) = 1;
  *(v0 + qword_1EDBBBE90) = 0;
  sub_1D81923A4();
  __break(1u);
}

uint64_t sub_1D7FB2498(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x72546E6F69746F6DLL && a2 == 0xEF6D726F66736E61;
  if (v3 || (sub_1D8192634() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0xD000000000000017 && 0x80000001D81CC440 == a2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_14_0();
  if (sub_1D8192634())
  {
    return 1;
  }

  if (a1 == 0x6E6F69746F4D7369 && a2 == 0xEF64656C62616E45)
  {
    return 1;
  }

  OUTLINED_FUNCTION_14_0();
  v8 = sub_1D8192634();
  v10 = a1 == 0x6E6F69746F4D7369 && a2 == 0xEF6465776F6C6C41;
  v11 = 1;
  if ((v8 & 1) == 0 && !v10)
  {
    OUTLINED_FUNCTION_14_0();
    if ((sub_1D8192634() & 1) == 0)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      OUTLINED_FUNCTION_14_0();
      v13 = sub_1D8190EE4();
      v16 = (*MEMORY[0x1E69E7D40] & *type metadata accessor for MotionLayer(0, *(v2 + 80), v14, v15));
      v18.receiver = ObjCClassFromMetadata;
      v18.super_class = v16;
      v11 = objc_msgSendSuper2(&v18, sel_needsDisplayForKey_, v13);
    }
  }

  return v11;
}

uint64_t sub_1D7FB2644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1D8190F14();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = sub_1D7FB2498(v3, v5);

  return v6 & 1;
}

void sub_1D7FB26A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MotionLayer(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), a3, a4);
  v30.receiver = v4;
  v30.super_class = v5;
  objc_msgSendSuper2(&v30, sel_layoutSublayers);
  v6 = [v4 sublayers];
  if (v6)
  {
    v7 = v6;
    sub_1D7FB2944();
    v8 = sub_1D8191314();

    v9 = sub_1D7E36AB8(v8);
    if (v9)
    {
      v10 = v9;
      if (v9 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v10; ++i)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1DA714420](i, v8);
        }

        else
        {
          v12 = *(v8 + 8 * i + 32);
        }

        v13 = v12;
        [v12 bounds];
        OUTLINED_FUNCTION_9_0();
        [v4 bounds];
        v31.origin.x = OUTLINED_FUNCTION_8_0();
        if (!CGRectEqualToRect(v31, v32))
        {
          [v4 bounds];
          [v13 setBounds_];
        }

        [v13 position];
        v15 = v14;
        v17 = v16;
        [v4 position];
        if (v15 != v19 || v17 != v18)
        {
          [v4 position];
          [v13 setPosition_];
        }
      }
    }
  }

  v21 = sub_1D7FB1950(v6);
  if (v21)
  {
    v22 = v21;
    v23 = sub_1D7FB1718(v21);
    if (v23 & 1) != 0 && (sub_1D7FB17E8(v23))
    {
    }

    else
    {
      [v4 bounds];
      OUTLINED_FUNCTION_9_0();
      sub_1D7FB151C(&v28);
      v26 = v28;
      v27 = v29;
      OUTLINED_FUNCTION_8_0();
      MotionTransformable.transform(layer:bounds:motionDisabled:)(v24, v25);

      sub_1D7F38800(v26, v27);
    }
  }
}

void sub_1D7FB28FC(void *a1)
{
  v4 = a1;
  sub_1D7FB26A8(v4, v1, v2, v3);
}

unint64_t sub_1D7FB2944()
{
  result = qword_1EDBB2FB0;
  if (!qword_1EDBB2FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB2FB0);
  }

  return result;
}

id MotionLayer.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MotionLayer(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1D7FB29E4(uint64_t a1)
{

  sub_1D7F38800(*(a1 + qword_1EDBBBE80), *(a1 + qword_1EDBBBE80 + 8));
  v2 = *(a1 + qword_1EDBBBE90);
}

uint64_t (*sub_1D7FB2A54(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1D7FB14BC(v2);
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D7FB2AB8(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1D7FB1608(v2);
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D7FB2B1C(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1D7FB1758(v2);
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D7FB2B80(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1D7FB187C(v2);
  return sub_1D7F413B4;
}

id ApplicationBackgroundFetchScheduler.__allocating_init(application:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___TSApplicationBackgroundFetchScheduler_application] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id BackgroundTasksBackgroundFetchScheduler.init(application:taskIdentifier:)()
{
  OUTLINED_FUNCTION_0_69();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___TSBackgroundTasksBackgroundFetchScheduler_application] = v3;
  v5 = &v1[OBJC_IVAR___TSBackgroundTasksBackgroundFetchScheduler_taskIdentifier];
  *v5 = v2;
  *(v5 + 1) = v0;
  *&v1[OBJC_IVAR___TSBackgroundTasksBackgroundFetchScheduler_minimumBackgroundFetchInterval] = *MEMORY[0x1E69DDAA8];
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_1D7FB310C()
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = sub_1D818E754();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = [objc_opt_self() sharedScheduler];
  if (*(v0 + OBJC_IVAR___TSBackgroundTasksBackgroundFetchScheduler_minimumBackgroundFetchInterval) == *MEMORY[0x1E69DDAA8])
  {
    sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
    v5 = sub_1D8191E44();
    v6 = sub_1D81919E4();
    sub_1D818FD44("Background fetch scheduler is cancelling the task request", 57, 2, &dword_1D7DFF000, v5, v6, MEMORY[0x1E69E7CC0]);

    v7 = sub_1D8190EE4();
    [v23[0] cancelTaskRequestWithIdentifier_];

    v8 = v23[0];
  }

  else
  {
    sub_1D7E0A1A8(0, &qword_1ECA0EB58, 0x1E695A9B0);
    v9 = *(v0 + OBJC_IVAR___TSBackgroundTasksBackgroundFetchScheduler_taskIdentifier);
    v10 = *(v0 + OBJC_IVAR___TSBackgroundTasksBackgroundFetchScheduler_taskIdentifier + 8);
    sub_1D8190DB4();
    v11 = sub_1D7FB394C(v9, v10);
    sub_1D818E704();
    v12 = sub_1D818E6D4();
    (*(v2 + 8))(v4, v1);
    [v11 setEarliestBeginDate_];

    sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
    v13 = sub_1D8191E44();
    v14 = sub_1D81919E4();
    sub_1D818FD44("Background fetch scheduler is submitting a new task request", 59, 2, &dword_1D7DFF000, v13, v14, MEMORY[0x1E69E7CC0]);

    v24 = 0;
    if ([v23[0] submitTaskRequest:v11 error:&v24])
    {
      v15 = v24;
    }

    else
    {
      v16 = v24;
      v17 = sub_1D818E544();

      swift_willThrow();
      sub_1D7E1A4D0(0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1D819FAB0;
      v24 = 0;
      v25 = 0xE000000000000000;
      v23[1] = v17;
      sub_1D7E0631C(0, &qword_1EDBB2BC0, MEMORY[0x1E69E7280]);
      sub_1D8192334();
      v19 = v24;
      v20 = v25;
      *(v18 + 56) = MEMORY[0x1E69E6158];
      *(v18 + 64) = sub_1D7E13BF4();
      *(v18 + 32) = v19;
      *(v18 + 40) = v20;
      v21 = sub_1D8191E44();
      v22 = sub_1D81919E4();
      sub_1D818FD44("Background fetch scheduler failed to submit background task with error: %{public}@", 82, 2, &dword_1D7DFF000, v21, v22, v18);
    }
  }
}

void BackgroundTasksBackgroundFetchScheduler.prepareForUse(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_opt_self() sharedScheduler];
  v5 = sub_1D8190EE4();
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0, 0x1E69E9610);
  v6 = sub_1D8191AB4();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v2;
  v10[4] = sub_1D7FB3830;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D7F845F8;
  v10[3] = &block_descriptor_25;
  v8 = _Block_copy(v10);
  swift_unknownObjectRetain();
  v9 = v2;

  [v4 registerForTaskWithIdentifier:v5 usingQueue:v6 launchHandler:v8];
  _Block_release(v8);
}

double sub_1D7FB36F0(void *a1, id a2, char *a3)
{
  if ([a2 respondsToSelector_])
  {
    v7 = *&a3[OBJC_IVAR___TSBackgroundTasksBackgroundFetchScheduler_application];
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a1;
    v12[4] = sub_1D7FB3B28;
    v12[5] = v8;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_1D7FB3838;
    v12[3] = &block_descriptor_15;
    v9 = _Block_copy(v12);
    swift_unknownObjectRetain();
    v10 = a3;
    v11 = a1;

    [a2 application:v7 performFetchWithCompletionHandler:v9];
    _Block_release(v9);

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1D7FB3838(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

id sub_1D7FB388C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D7FB310C();

  return [a3 setTaskCompletedWithSuccess_];
}

id sub_1D7FB394C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1D8190EE4();

  v4 = [v2 initWithIdentifier_];

  return v4;
}

id BackgroundTasksBackgroundFetchScheduler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t StackNavigationStepResult.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D7FB3C70()
{
  result = qword_1ECA0EB60;
  if (!qword_1ECA0EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0EB60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StackNavigationStepResult(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D7FB3E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_1D81927E4();
  a4(v6);
  return sub_1D8192824();
}

uint64_t Command.identifier.getter()
{
  v1 = *(v0 + 16);
  sub_1D8190DB4();
  return v1;
}

uint64_t Command.__deallocating_deinit()
{
  Command.deinit();

  return swift_deallocClassInstance();
}

uint64_t static Command.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D8192634();
  }
}

_BYTE *sub_1D7FB3FBC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D7FB40A4()
{
  v0 = type metadata accessor for FatalErrorResolver();
  v1 = swift_allocObject();
  qword_1EDBC6000 = v0;
  result = sub_1D7FB46C0();
  qword_1EDBC6008 = result;
  qword_1EDBC5FE8 = v1;
  return result;
}

uint64_t sub_1D7FB40F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDBB0868 != -1)
  {
    swift_once();
  }

  return sub_1D7E0E768(&qword_1EDBC5FE8, a1);
}

uint64_t EnvironmentValues.resolver.getter()
{
  sub_1D7FB41B0();

  return sub_1D8190554();
}

unint64_t sub_1D7FB41B0()
{
  result = qword_1EDBB0860;
  if (!qword_1EDBB0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB0860);
  }

  return result;
}

uint64_t EnvironmentValues.resolver.setter(void *a1)
{
  sub_1D7E0E768(a1, v3);
  sub_1D7FB41B0();
  sub_1D8190564();
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void (*EnvironmentValues.resolver.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[15] = v1;
  v3[16] = sub_1D7FB41B0();
  sub_1D8190554();
  return sub_1D7FB430C;
}

void sub_1D7FB430C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1D7E0E768(*a1, (v2 + 5));
    sub_1D7E0E768((v2 + 5), (v2 + 10));
    sub_1D8190564();
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 5);
  }

  else
  {
    sub_1D7E0E768(*a1, (v2 + 5));
    sub_1D8190564();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);

  free(v2);
}

unint64_t sub_1D7FB46C0()
{
  result = qword_1EDBB0FC0;
  if (!qword_1EDBB0FC0)
  {
    type metadata accessor for FatalErrorResolver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB0FC0);
  }

  return result;
}

void *MediaTimingData.fillMode.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t MediaTimingData.init(duration:speed:timeOffset:fillMode:repeatCount:repeatDuration:autoreverses:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11)
{
  *a9 = result;
  *(a9 + 8) = a2 & 1;
  *(a9 + 12) = a3;
  *(a9 + 16) = BYTE4(a3) & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 52) = BYTE4(a7) & 1;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10 & 1;
  *(a9 + 65) = a11;
  return result;
}

uint64_t sub_1D7FB47E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 66))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7FB4834(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

Swift::Void __swiftcall TogglableSwitch.set(toggleState:animated:)(TeaUI::ToggleState toggleState, Swift::Bool animated)
{
  v4 = v3;
  v5 = v2;
  v7 = *toggleState;
  (*(v3 + 8))(&v10);
  if (v7 != v10)
  {
    v9 = v7;
    (*(v4 + 16))(&v9, v5, v4);
    v8 = v7;
    (*(v4 + 32))(&v8, animated, v5, v4);
  }
}

Swift::Void __swiftcall TogglableSwitch.toggle()()
{
  (*(v0 + 8))(&v4);
  if (v4)
  {
    v3 = 0;
    v1 = &v3;
  }

  else
  {
    v2 = 1;
    v1 = &v2;
  }

  TogglableSwitch.set(toggleState:animated:)(v1, 1);
}

void TogglableSwitch.makeToggleRequest()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  TogglableSwitch.toggle()();
  (*(a2 + 8))(&v9, a1, a2);
  v6 = v9;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v7;
  *a3 = v6;
  *(a3 + 8) = sub_1D7FB4B08;
  *(a3 + 16) = v8;
}

uint64_t sub_1D7FB4A94(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    TogglableSwitch.toggle()();
    return swift_unknownObjectRelease();
  }

  return result;
}

void OverlayAlert.init(image:title:subtitle:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (a1)
  {
    v12 = [a1 imageWithRenderingMode_];
  }

  else
  {
    v12 = 0;
  }

  *a6 = v12;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
}

uint64_t sub_1D7FB4BE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1D7FB4C28(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1D7FB4D48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D7FB4D98(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t FloatingTabBarSidebarImpressionManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*FloatingTabBarSidebarImpressionManager.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_15_2(v1 + 24, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D7FB4EFC;
}

void sub_1D7FB4EFC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t FloatingTabBarSidebarImpressionManager.__allocating_init(options:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  FloatingTabBarSidebarImpressionManager.init(options:)(a1);
  return v2;
}

Swift::Void __swiftcall FloatingTabBarSidebarImpressionManager.startSession(trigger:)(TeaUI::BlueprintImpressionSessionTrigger trigger)
{
  v2 = v1;
  v3 = trigger;
  v98 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v96 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  active = type metadata accessor for BlueprintImpressionActiveSession(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v92 = (v12 - v11);
  sub_1D7E1DC58(0);
  v14 = OUTLINED_FUNCTION_50(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_28_0();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v83 - v19;
  v21 = sub_1D818E754();
  OUTLINED_FUNCTION_9();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v83 - v26;
  v28 = *v3;
  sub_1D818E744();
  OUTLINED_FUNCTION_8_4(v2 + 16, v106);
  if (*(v2 + 16) != 1)
  {
    (*(v23 + 8))(v27, v21);
    return;
  }

  v94 = v27;
  v97 = v23;
  v29 = OBJC_IVAR____TtC5TeaUI38FloatingTabBarSidebarImpressionManager_activeSession;
  OUTLINED_FUNCTION_8_4(v2 + OBJC_IVAR____TtC5TeaUI38FloatingTabBarSidebarImpressionManager_activeSession, v105);
  OUTLINED_FUNCTION_2_58();
  sub_1D7FB6670(v2 + v29, v20, v30);
  if (__swift_getEnumTagSinglePayload(v20, 1, active) != 1)
  {
    (*(v97 + 8))(v94, v21);
    OUTLINED_FUNCTION_0_84();
    sub_1D7FB6734(v20, v81);
    return;
  }

  OUTLINED_FUNCTION_0_84();
  sub_1D7FB6734(v20, v31);
  sub_1D818E784();
  v32 = sub_1D818E764();
  v87 = v28;
  v34 = v33;
  (*(v96 + 8))(v8, v98);
  v35 = *(v97 + 16);
  v36 = v92;
  v37 = v92 + active[5];
  v38 = v94;
  v89 = v97 + 16;
  v88 = v35;
  v35(v37, v94, v21);
  v91 = v32;
  *v36 = v32;
  v36[1] = v34;
  v90 = v34;
  v39 = v87;
  *(v36 + active[6]) = v87;
  *(v36 + active[7]) = 0;
  sub_1D7FB6670(v36, v17, type metadata accessor for BlueprintImpressionActiveSession);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, active);
  OUTLINED_FUNCTION_15_2(v2 + v29, v101);
  sub_1D7FB660C(v17, v2 + v29);
  swift_endAccess();
  OUTLINED_FUNCTION_8_4(v2 + 24, v104);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v40 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    (*(v40 + 8))(v2, v36, ObjectType, v40);
    swift_unknownObjectRelease();
  }

  v42 = OBJC_IVAR____TtC5TeaUI38FloatingTabBarSidebarImpressionManager_activeImpressions;
  OUTLINED_FUNCTION_8_4(v2 + OBJC_IVAR____TtC5TeaUI38FloatingTabBarSidebarImpressionManager_activeImpressions, v103);
  v98 = v42;
  v43 = *(v2 + v42);
  v46 = *(v43 + 64);
  v45 = v43 + 64;
  v44 = v46;
  v47 = 1 << *(*(v2 + v42) + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & v44;
  v50 = (v47 + 63) >> 6;
  v93 = *(v2 + v42);
  sub_1D8190DB4();
  v51 = 0;
  v87 = 0x4030200u >> (8 * v39);
  v85 = v45;
  v84 = v50;
  v52 = v97;
  v99 = v2;
  for (i = v21; v49; v50 = v84)
  {
LABEL_12:
    v54 = __clz(__rbit64(v49)) | (v51 << 6);
    v55 = (*(v93 + 48) + 16 * v54);
    v56 = *v55;
    v57 = v55[1];
    v58 = *(*(v93 + 56) + 8 * v54);
    v59 = *(v58 + 16);
    v60 = v95;
    v88(v95, v38, v21);
    LOBYTE(v100) = v87;
    v61 = OBJC_IVAR____TtC5TeaUI37FloatingTabBarSidebarActiveImpression_metadata;
    OUTLINED_FUNCTION_8_4(v58 + OBJC_IVAR____TtC5TeaUI37FloatingTabBarSidebarActiveImpression_metadata, v102);
    OUTLINED_FUNCTION_3_53();
    sub_1D7FB6670(v58 + v61, v101, v62);
    v63 = type metadata accessor for FloatingTabBarSidebarActiveImpression(0);
    OUTLINED_FUNCTION_8_5(v63);
    sub_1D8190DB4();

    v64 = v59;
    v65 = v90;
    sub_1D8190DB4();
    v96 = sub_1D8103D5C(v64, v60, &v100, v91, v65, v101);
    v66 = v98;
    v67 = v99;
    OUTLINED_FUNCTION_15_2(v99 + v98, v101);
    swift_isUniquelyReferenced_nonNull_native();
    v100 = *(v67 + v66);
    v68 = v100;
    *(v67 + v66) = 0x8000000000000000;
    v69 = v56;
    v70 = sub_1D7E11428(v56, v57);
    if (__OFADD__(v68[2], (v71 & 1) == 0))
    {
      goto LABEL_26;
    }

    v72 = v70;
    v73 = v71;
    sub_1D7EF8158(0);
    if (sub_1D8192374())
    {
      v74 = sub_1D7E11428(v69, v57);
      v21 = i;
      if ((v73 & 1) != (v75 & 1))
      {
        goto LABEL_28;
      }

      v72 = v74;
      if (v73)
      {
LABEL_19:

        v76 = v100;
        *(v100[7] + 8 * v72) = v96;

        goto LABEL_20;
      }
    }

    else
    {
      v21 = i;
      if (v73)
      {
        goto LABEL_19;
      }
    }

    v76 = v100;
    v100[(v72 >> 6) + 8] |= 1 << v72;
    v77 = (v76[6] + 16 * v72);
    *v77 = v69;
    v77[1] = v57;
    *(v76[7] + 8 * v72) = v96;
    v78 = v76[2];
    v79 = __OFADD__(v78, 1);
    v80 = v78 + 1;
    if (v79)
    {
      goto LABEL_27;
    }

    v76[2] = v80;
LABEL_20:
    v49 &= v49 - 1;
    *(v99 + v98) = v76;
    swift_endAccess();

    v52 = v97;
    v38 = v94;
    v45 = v85;
  }

  while (1)
  {
    v53 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v53 >= v50)
    {
      OUTLINED_FUNCTION_1_62();
      sub_1D7FB6734(v92, v82);
      (*(v52 + 8))(v38, v21);

      return;
    }

    v49 = *(v45 + 8 * v53);
    ++v51;
    if (v49)
    {
      v51 = v53;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_1D8192714();
  __break(1u);
}

Swift::Void __swiftcall FloatingTabBarSidebarImpressionManager.endSession(trigger:)(TeaUI::BlueprintImpressionSessionTrigger trigger)
{
  v2 = v1;
  v3 = trigger;
  v82 = type metadata accessor for BlueprintImpressionSession(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = (v6 - v5);
  sub_1D7E1DC58(0);
  v9 = OUTLINED_FUNCTION_50(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_28_0();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v78[-v14];
  active = type metadata accessor for BlueprintImpressionActiveSession(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v20 = v19 - v18;
  v21 = sub_1D818E754();
  OUTLINED_FUNCTION_9();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v78[-v27];
  v29 = *v3;
  sub_1D818E744();
  OUTLINED_FUNCTION_8_4(v2 + 16, v102);
  if (*(v2 + 16) == 1)
  {
    v94 = v28;
    v30 = OBJC_IVAR____TtC5TeaUI38FloatingTabBarSidebarImpressionManager_activeSession;
    OUTLINED_FUNCTION_8_4(v2 + OBJC_IVAR____TtC5TeaUI38FloatingTabBarSidebarImpressionManager_activeSession, v101);
    OUTLINED_FUNCTION_2_58();
    sub_1D7FB6670(v2 + v30, v15, v31);
    if (__swift_getEnumTagSinglePayload(v15, 1, active) == 1)
    {
      (*(v23 + 8))(v94, v21);
      OUTLINED_FUNCTION_0_84();
      sub_1D7FB6734(v15, v32);
    }

    else
    {
      v91 = v21;
      v81 = v7;
      v90 = v20;
      sub_1D7FB66D0(v15, v20);
      __swift_storeEnumTagSinglePayload(v12, 1, 1, active);
      OUTLINED_FUNCTION_15_2(v2 + v30, v95);
      sub_1D7FB660C(v12, v2 + v30);
      swift_endAccess();
      v33 = OBJC_IVAR____TtC5TeaUI38FloatingTabBarSidebarImpressionManager_activeImpressions;
      OUTLINED_FUNCTION_8_4(v2 + OBJC_IVAR____TtC5TeaUI38FloatingTabBarSidebarImpressionManager_activeImpressions, v100);
      v34 = *(v2 + v33);
      v35 = v34 + 64;
      v36 = 1 << *(v34 + 32);
      v37 = -1;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      v38 = v23;
      v39 = v37 & *(v34 + 64);
      v84 = v2 + OBJC_IVAR____TtC5TeaUI38FloatingTabBarSidebarImpressionManager_options;
      v89 = v34;
      sub_1D8190DB4();
      OUTLINED_FUNCTION_8_4(v2 + 24, v99);
      v40 = 0;
      v41 = (v36 + 63) >> 6;
      v80 = v38;
      v88 = (v38 + 16);
      v79 = v29;
      v83 = 0x4030200u >> (8 * v29);
      v87 = v2;
      v86 = active;
      v85 = v35;
      v42 = v92;
      while (v39)
      {
        v43 = v40;
LABEL_13:
        v44 = __clz(__rbit64(v39));
        v39 &= v39 - 1;
        v45 = *(*(v89 + 56) + ((v43 << 9) | (8 * v44)));
        v46 = *(v45 + 16);
        v47 = *v88;
        v48 = v91;
        (*v88)(v42, v45 + OBJC_IVAR____TtC5TeaUI37FloatingTabBarSidebarActiveImpression_startDate, v91);
        v49 = v93;
        v47(v93, v94, v48);
        v98 = *(v45 + OBJC_IVAR____TtC5TeaUI37FloatingTabBarSidebarActiveImpression_startTrigger);
        v97 = v83;
        v50 = *v90;
        v51 = v90[1];
        v52 = OBJC_IVAR____TtC5TeaUI37FloatingTabBarSidebarActiveImpression_metadata;
        OUTLINED_FUNCTION_8_4(v45 + OBJC_IVAR____TtC5TeaUI37FloatingTabBarSidebarActiveImpression_metadata, v96);
        OUTLINED_FUNCTION_3_53();
        sub_1D7FB6670(v45 + v52, v95, v53);
        v54 = type metadata accessor for FloatingTabBarSidebarImpression(0);
        OUTLINED_FUNCTION_8_5(v54);
        v55 = sub_1D81037BC(v46, v42, v49, &v98, &v97, v50, v51, v95);

        v56 = v46;
        sub_1D8190DB4();
        sub_1D818E724();
        v58 = v57;
        sub_1D818E724();
        if (*(v84 + 24) <= v58 - v59)
        {
          v2 = v87;
          Strong = swift_unknownObjectWeakLoadStrong();
          v35 = v85;
          if (Strong)
          {
            v61 = *(v2 + 32);
            ObjectType = swift_getObjectType();
            (*(v61 + 32))(v2, v55, ObjectType, v61);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          v40 = v43;
          active = v86;
        }

        else
        {

          v40 = v43;
          v2 = v87;
          active = v86;
          v35 = v85;
        }
      }

      while (1)
      {
        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          __break(1u);
          return;
        }

        if (v43 >= v41)
        {
          break;
        }

        v39 = *(v35 + 8 * v43);
        ++v40;
        if (v39)
        {
          goto LABEL_13;
        }
      }

      v63 = v90;
      v65 = *v90;
      v64 = v90[1];
      v66 = *(active + 20);
      v67 = active;
      v68 = v82;
      v69 = *v88;
      v70 = v81;
      v71 = v91;
      (*v88)(v81 + *(v82 + 20), v90 + v66, v91);
      v69(v70 + v68[6], v94, v71);
      v72 = *(v63 + *(v67 + 24));
      v73 = *(v63 + *(v67 + 28));
      *v70 = v65;
      v70[1] = v64;
      *(v70 + v68[7]) = v72;
      *(v70 + v68[8]) = v79;
      *(v70 + v68[9]) = v73;
      OUTLINED_FUNCTION_8_4(v2 + 24, v95);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v74 = *(v2 + 32);
        v75 = swift_getObjectType();
        v76 = *(v74 + 16);
        sub_1D8190DB4();
        v76(v2, v70, v75, v74);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1D8190DB4();
      }

      sub_1D7FB6734(v70, type metadata accessor for BlueprintImpressionSession);
      OUTLINED_FUNCTION_1_62();
      sub_1D7FB6734(v63, v77);
      (*(v80 + 8))(v94, v71);
    }
  }

  else
  {
    (*(v23 + 8))(v28, v21);
  }
}

uint64_t FloatingTabBarSidebarImpressionManager.startImpression(tab:trigger:)(void *a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D818E754();
  v7 = OUTLINED_FUNCTION_50(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  sub_1D7E1DC58(0);
  v12 = OUTLINED_FUNCTION_50(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  active = type metadata accessor for BlueprintImpressionActiveSession(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v20 = (v19 - v18);
  v21 = *a2;
  v22 = OBJC_IVAR____TtC5TeaUI38FloatingTabBarSidebarImpressionManager_activeSession;
  OUTLINED_FUNCTION_8_4(v3 + OBJC_IVAR____TtC5TeaUI38FloatingTabBarSidebarImpressionManager_activeSession, v38);
  OUTLINED_FUNCTION_2_58();
  sub_1D7FB6670(v3 + v22, v15, v23);
  if (__swift_getEnumTagSinglePayload(v15, 1, active) == 1)
  {
    OUTLINED_FUNCTION_0_84();
    v25 = v15;
  }

  else
  {
    sub_1D7FB66D0(v15, v20);
    sub_1D818E744();
    LOBYTE(v36) = v21;
    v26 = *v20;
    v27 = v20[1];
    v28 = type metadata accessor for FloatingTabBarSidebarActiveImpression(0);
    memset(v37, 0, sizeof(v37));
    OUTLINED_FUNCTION_8_5(v28);
    sub_1D8190DB4();
    v29 = a1;
    v30 = sub_1D8103D5C(v29, v10, &v36, v26, v27, v37);
    v31 = [v29 _identifier];
    sub_1D8190F14();

    v32 = OBJC_IVAR____TtC5TeaUI38FloatingTabBarSidebarImpressionManager_activeImpressions;
    OUTLINED_FUNCTION_15_2(v3 + OBJC_IVAR____TtC5TeaUI38FloatingTabBarSidebarImpressionManager_activeImpressions, v37);

    swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v3 + v32);
    sub_1D7EF63A0();
    *(v3 + v32) = v36;

    swift_endAccess();
    OUTLINED_FUNCTION_8_4(v3 + 24, v37);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v33 = *(v3 + 32);
      ObjectType = swift_getObjectType();
      (*(v33 + 24))(v3, v30, ObjectType, v33);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    OUTLINED_FUNCTION_1_62();
    v25 = v20;
  }

  return sub_1D7FB6734(v25, v24);
}

uint64_t FloatingTabBarSidebarImpressionManager.endImpression(tab:trigger:)(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v63 = a1;
  sub_1D7E1DC58(0);
  v6 = OUTLINED_FUNCTION_50(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  active = type metadata accessor for BlueprintImpressionActiveSession(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v14 = (v13 - v12);
  v15 = sub_1D818E754();
  OUTLINED_FUNCTION_9();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_28_0();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v61 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v61 - v26;
  v28 = *a2;
  sub_1D818E744();
  OUTLINED_FUNCTION_8_4(v3 + 16, v69);
  if (*(v3 + 16) == 1)
  {
    LODWORD(v62) = v28;
    v29 = OBJC_IVAR____TtC5TeaUI38FloatingTabBarSidebarImpressionManager_activeSession;
    OUTLINED_FUNCTION_8_4(v3 + OBJC_IVAR____TtC5TeaUI38FloatingTabBarSidebarImpressionManager_activeSession, v68);
    OUTLINED_FUNCTION_2_58();
    sub_1D7FB6670(v3 + v29, v9, v30);
    if (__swift_getEnumTagSinglePayload(v9, 1, active) == 1)
    {
      (*(v17 + 8))(v27, v15);
      OUTLINED_FUNCTION_0_84();
      return sub_1D7FB6734(v9, v31);
    }

    sub_1D7FB66D0(v9, v14);
    v33 = [v63 _identifier];
    v34 = sub_1D8190F14();
    v36 = v35;

    OUTLINED_FUNCTION_15_2(v3 + OBJC_IVAR____TtC5TeaUI38FloatingTabBarSidebarImpressionManager_activeImpressions, v64);
    sub_1D7F03E68(v34, v36, v37, v38, v39, v40, v41, v42, v61, v62);
    v44 = v43;
    swift_endAccess();

    if (v44)
    {
      v45 = *(v17 + 16);
      v45(v24, v44 + OBJC_IVAR____TtC5TeaUI37FloatingTabBarSidebarActiveImpression_startDate, v15);
      v45(v21, v27, v15);
      v67 = *(v44 + OBJC_IVAR____TtC5TeaUI37FloatingTabBarSidebarActiveImpression_startTrigger);
      v66 = v62;
      v46 = v14;
      v47 = *v14;
      v61 = v14[1];
      v62 = v47;
      v48 = OBJC_IVAR____TtC5TeaUI37FloatingTabBarSidebarActiveImpression_metadata;
      OUTLINED_FUNCTION_8_4(v44 + OBJC_IVAR____TtC5TeaUI37FloatingTabBarSidebarActiveImpression_metadata, v65);
      OUTLINED_FUNCTION_3_53();
      sub_1D7FB6670(v44 + v48, v64, v49);
      v50 = type metadata accessor for FloatingTabBarSidebarImpression(0);
      OUTLINED_FUNCTION_8_5(v50);
      v51 = v63;
      v52 = sub_1D81037BC(v63, v24, v21, &v67, &v66, v62, v61, v64);
      sub_1D8190DB4();
      v53 = v51;
      sub_1D818E724();
      v55 = v54;
      sub_1D818E724();
      if (*(v3 + OBJC_IVAR____TtC5TeaUI38FloatingTabBarSidebarImpressionManager_options + 24) <= v55 - v56 && (OUTLINED_FUNCTION_8_4(v3 + 24, v64), swift_unknownObjectWeakLoadStrong()))
      {
        v57 = *(v3 + 32);
        ObjectType = swift_getObjectType();
        (*(v57 + 32))(v3, v52, ObjectType, v57);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      OUTLINED_FUNCTION_1_62();
      v60 = v46;
    }

    else
    {
      OUTLINED_FUNCTION_1_62();
      v60 = v14;
    }

    sub_1D7FB6734(v60, v59);
  }

  return (*(v17 + 8))(v27, v15);
}

uint64_t FloatingTabBarSidebarImpressionManager.deinit()
{
  sub_1D7E166A0(v0 + 24);
  OUTLINED_FUNCTION_0_84();
  sub_1D7FB6734(v0 + v1, v2);

  return v0;
}

uint64_t FloatingTabBarSidebarImpressionManager.__deallocating_deinit()
{
  FloatingTabBarSidebarImpressionManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7FB660C(uint64_t a1, uint64_t a2)
{
  sub_1D7E1DC58(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7FB6670(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D7FB66D0(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for BlueprintImpressionActiveSession(0);
  (*(*(active - 8) + 32))(a2, a1, active);
  return a2;
}

uint64_t sub_1D7FB6734(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for FloatingTabBarSidebarImpressionManager(uint64_t a1)
{
  result = qword_1EDBAEF40;
  if (!qword_1EDBAEF40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id Action.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1D7FB685C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D7E72000(0, qword_1EDBB3D40, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for Then);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  OUTLINED_FUNCTION_0_85(v6, &qword_1EDBBC448);
  OUTLINED_FUNCTION_8_5(v7);

  sub_1D818F8A4();

  sub_1D818F224();

  v8 = v3;

  return v8;
}

uint64_t *Action.keyCommand(key:flags:title:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v11 = *v16;
  v12 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_0_8();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_1_63();
  v14 = swift_allocObject();
  v14[2] = *((v12 & v11) + 0x50);
  v14[3] = v13;
  v14[4] = ObjectType;
  type metadata accessor for KeyCommandBlock();
  swift_allocObject();
  *(v16 + qword_1ECA0EB78) = KeyCommandBlock.init(key:flags:title:block:)(a1, a2, a3, a4, a5, sub_1D7FB6FEC, v14);
  sub_1D8190DB4();
  sub_1D8190DB4();

  return v16;
}

void sub_1D7FB6AAC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1D7E80824();
  }
}

uint64_t *Action.chain(action:)()
{
  ObjectType = swift_getObjectType();
  v1 = *v6;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_0_8();
  v3 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  OUTLINED_FUNCTION_1_63();
  v4 = swift_allocObject();
  v4[2] = *((v2 & v1) + 0x50);
  v4[3] = v3;
  v4[4] = ObjectType;

  return v6;
}

void sub_1D7FB6BF0(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_1D7E80824();
}

id sub_1D7FB6C3C(void *a1)
{
  result = [a1 state];
  if (result == 1)
  {
    [a1 setEnabled_];

    return [a1 setEnabled_];
  }

  return result;
}

void sub_1D7FB6CB0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D7FB6C3C(v4);
}

void sub_1D7FB6D18(void *a1)
{
  v1 = a1;
  sub_1D7E80824();
}

id Action.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1D7FB6DA8()
{

  return result;
}

uint64_t Action.keyCommandBlocks.getter()
{
  v1 = *(v0 + qword_1ECA0EB78);
  if (v1)
  {
    sub_1D7E72000(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    OUTLINED_FUNCTION_1_63();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1D81A50A0;
    *(v2 + 32) = v1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  return v2;
}

id sub_1D7FB6EA8(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1D8192614();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

uint64_t getEnumTagSinglePayload for CollectionViewSupplementaryOrdering(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CollectionViewSupplementaryOrdering(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t Plugin.identifier.getter()
{
  v1 = *(v0 + 16);
  sub_1D8190DB4();
  return v1;
}

uint64_t sub_1D7FB7094(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return sub_1D7FB710C(v2, v1);
}

uint64_t sub_1D7FB710C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D7FB716C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 48);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D7FB71EC;
}

void sub_1D7FB71EC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 48) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1D7FB7270()
{
  v1 = *(v0 + 64);
  ObjectType = swift_getObjectType();
  return (*(v1 + 56))(ObjectType, v1);
}

uint64_t Plugin.__allocating_init(identifier:viewController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_64();
  v6 = swift_allocObject();
  Plugin.init(identifier:viewController:)(a1, a2, a3);
  return v6;
}

void *Plugin.init(identifier:viewController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D818EDE4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_0_86();
  v3[6] = 0;
  swift_unknownObjectWeakInit();
  v3[9] = 0;
  sub_1D818EDD4();
  v9 = sub_1D818EE04();
  OUTLINED_FUNCTION_8_5(v9);
  v10 = sub_1D818EDF4();
  v3[11] = 0;
  v3[12] = 0;
  v3[10] = v10;
  sub_1D818EDD4();
  swift_allocObject();
  v3[13] = sub_1D818EDF4();
  sub_1D7FB74B4();
  OUTLINED_FUNCTION_8_5(v11);
  v3[14] = sub_1D818F704();
  v3[2] = a1;
  v3[3] = a2;
  v12 = *a3;
  v13 = *(a3 + 8);
  v4[7] = *a3;
  v4[8] = v13;
  *(v4 + 32) = 1;
  ObjectType = swift_getObjectType();
  v15 = *(v13 + 40);
  v16 = v12;
  v15(1, ObjectType, v13);
  v17 = swift_getObjectType();
  v18 = *(v13 + 16);

  v18(v19, &protocol witness table for Plugin, v17, v13);
  *a3 = v12;
  *(a3 + 8) = v13;
  return v4;
}

void sub_1D7FB74B4()
{
  if (!qword_1EDBB2028)
  {
    v0 = sub_1D818F714();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2028);
    }
  }
}

uint64_t Plugin.__allocating_init(identifier:isSticky:viewController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  OUTLINED_FUNCTION_1_64();
  v8 = swift_allocObject();
  Plugin.init(identifier:isSticky:viewController:)(a1, a2, v5, a4);
  return v8;
}

void *Plugin.init(identifier:isSticky:viewController:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1D818EDE4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v4[6] = 0;
  swift_unknownObjectWeakInit();
  v4[9] = 0;
  sub_1D818EDD4();
  v11 = sub_1D818EE04();
  OUTLINED_FUNCTION_8_5(v11);
  v12 = sub_1D818EDF4();
  v4[11] = 0;
  v4[12] = 0;
  v4[10] = v12;
  sub_1D818EDD4();
  swift_allocObject();
  v4[13] = sub_1D818EDF4();
  sub_1D7FB74B4();
  OUTLINED_FUNCTION_8_5(v13);
  v4[14] = sub_1D818F704();
  v4[2] = a1;
  v4[3] = a2;
  v14 = *a4;
  v15 = *(a4 + 8);
  v5[7] = *a4;
  v5[8] = v15;
  *(v5 + 32) = a3;
  ObjectType = swift_getObjectType();
  v17 = *(v15 + 40);
  v18 = v14;
  v17(1, ObjectType, v15);
  v19 = swift_getObjectType();
  v20 = *(v15 + 16);

  v20(v21, &protocol witness table for Plugin, v19, v15);
  *a4 = v14;
  *(a4 + 8) = v15;
  return v5;
}

void sub_1D7FB7714(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1D8190C74();
  OUTLINED_FUNCTION_2_59();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_0_86();
  v8 = sub_1D7E11E0C();
  *v3 = sub_1D8191AB4();
  v9 = OUTLINED_FUNCTION_16_3();
  v10(v9);
  sub_1D8190CA4();
  v11 = OUTLINED_FUNCTION_13_4();
  v12(v11);
  if (v8)
  {
    if (v4[9])
    {
      sub_1D7FB7A98(a1, a2);
    }

    else
    {
      sub_1D7FB7ECC();
      v14 = v13;
      v15 = v4[7];
      v16 = v4[8];
      ObjectType = swift_getObjectType();

      v18 = swift_allocObject();
      swift_weakInit();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = a1;
      v19[4] = a2;
      v19[5] = v14;
      v20 = *(v16 + 104);
      v21 = v15;

      v20(sub_1D7FB7F3C, v19, ObjectType, v16);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7FB790C(uint64_t a1, void (*a2)(id), double a3, double a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    sub_1D818EE04();

    sub_1D818F884();

    v12 = v11[2];
    v13 = v11[3];
    v15 = v11[7];
    v14 = v11[8];
    type metadata accessor for PluginModel();
    swift_allocObject();
    sub_1D8190DB4();
    v16 = sub_1D7F17BE4(v12, v13, a6, v15, v14, a3, a4);
    a2(v16);

    sub_1D818F6F4();
  }
}

void sub_1D7FB7A98(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1D8190C74();
  OUTLINED_FUNCTION_2_59();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_0_86();
  v8 = sub_1D7E11E0C();
  *v3 = sub_1D8191AB4();
  v9 = OUTLINED_FUNCTION_16_3();
  v10(v9);
  sub_1D8190CA4();
  v11 = OUTLINED_FUNCTION_13_4();
  v12(v11);
  if (v8)
  {
    if (*(v4 + 72))
    {
      sub_1D818FC24();
      v13 = sub_1D818EE74();
      v14 = swift_allocObject();
      *(v14 + 16) = a1;
      *(v14 + 24) = a2;
      type metadata accessor for Plugin();

      sub_1D818FB64();
    }

    else
    {
      sub_1D7FB7714(a1, a2);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D7FB7C40()
{
  result = MEMORY[0x1DA7118F0]();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

double sub_1D7FB7C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  ObjectType = swift_getObjectType();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;
  v10 = *(v5 + 112);
  v11 = v6;

  v10(sub_1D7FB84C0, v9, ObjectType, v5);

  return result;
}

void sub_1D7FB7D80(uint64_t a1, void (*a2)(void), double a3, double a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    sub_1D818EDB4();

    if (*(v8 + 88) == a3 && *(v8 + 96) == a4)
    {
      v11 = *(v8 + 72);
    }

    else
    {
      sub_1D7FB7ECC();
      v11 = v10;
      *(v8 + 88) = a3;
      *(v8 + 96) = a4;
    }

    sub_1D818EDC4();

    v12 = *(v8 + 16);
    v13 = *(v8 + 24);
    v15 = *(v8 + 56);
    v14 = *(v8 + 64);
    type metadata accessor for PluginModel();
    swift_allocObject();
    sub_1D8190DB4();
    sub_1D7F17BE4(v12, v13, v11, v15, v14, a3, a4);
    a2();
  }
}