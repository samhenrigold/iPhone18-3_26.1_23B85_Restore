uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t (*a5)(void, void))
{
  v7 = a4;
  v8 = a3;
  v9 = __src;
  v10 = __dst;
  v11 = __src - __dst;
  v12 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v13 = (v7 + v12);
    if (v12 >= 1 && v9 > v10)
    {
      v18 = -v7;
      v30 = a5;
      while (1)
      {
        v19 = v9 - 1;
        v20 = &v13[v18];
        --v8;
        v21 = v13;
        while (1)
        {
          v22 = *--v21;
          v23 = v19;
          v24 = v30(v22, *v19);
          if (v5)
          {
            if (v9 >= v7 && v9 < v13 && v9 == v7)
            {
              return 1;
            }

            v27 = v9;
            v28 = v7;
            v26 = v20;
LABEL_54:
            memmove(v27, v28, v26);
            return 1;
          }

          v25 = v8 + 1;
          if (v24)
          {
            break;
          }

          v19 = v23;
          if (v25 < v13 || v8 >= v13)
          {
            *v8 = *v21;
          }

          --v20;
          --v8;
          v13 = v21;
          if (v21 <= v7)
          {
            v13 = v21;
            goto LABEL_49;
          }
        }

        if (v25 < v9 || v8 >= v9)
        {
          *v8 = *v23;
        }

        if (v13 > v7)
        {
          v9 = v23;
          v18 = -v7;
          if (v23 > v10)
          {
            continue;
          }
        }

        v9 = v23;
        break;
      }
    }

LABEL_49:
    v26 = &v13[-v7];
    if (v9 >= v7 && v9 < v13 && v9 == v7)
    {
      return 1;
    }

    v27 = v9;
LABEL_53:
    v28 = v7;
    goto LABEL_54;
  }

  if (a4 != __dst || a4 >= __src)
  {
    memmove(a4, __dst, v11);
  }

  v13 = (v7 + v11);
  if (v11 < 1 || v9 >= v8)
  {
LABEL_19:
    v9 = v10;
    goto LABEL_49;
  }

  while (1)
  {
    v14 = a5(*v9, *v7);
    if (v5)
    {
      break;
    }

    if (v14)
    {
      v15 = v9 + 1;
      v16 = v9;
      if (v10 >= v9 && v10 < v15)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v17 = (v7 + 1);
      v16 = v7;
      v15 = v9;
      if (v10 < v7)
      {
        ++v7;
      }

      else
      {
        ++v7;
        if (v10 < v17)
        {
          goto LABEL_17;
        }
      }
    }

    *v10 = *v16;
LABEL_17:
    ++v10;
    if (v7 < v13)
    {
      v9 = v15;
      if (v15 < v8)
      {
        continue;
      }
    }

    goto LABEL_19;
  }

  v26 = &v13[-v7];
  if (v10 < v7 || v10 >= v13 || v10 != v7)
  {
    v27 = v10;
    goto LABEL_53;
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(_BYTE *__dst, _BYTE *__src, _BYTE *a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      __dst = memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType(__dst, __src, a3);
LABEL_26:
      v14 = v6 - 1;
      --v5;
      v15 = v10;
      do
      {
        v16 = v5 + 1;
        --v15;
        if (dispatch thunk of static Comparable.< infix(_:_:)())
        {
          if (v16 < v6 || v5 >= v6)
          {
            *v5 = *v14;
          }

          if (v10 <= v4 || (--v6, v14 <= v7))
          {
            v6 = v14;
            goto LABEL_40;
          }

          goto LABEL_26;
        }

        if (v16 < v10 || v5 >= v10)
        {
          *v5 = *v15;
        }

        --v5;
        v10 = v15;
      }

      while (v15 > v4);
      v10 = v15;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      __dst = memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType(__dst, __src, a3);
      while (1)
      {
        if (dispatch thunk of static Comparable.< infix(_:_:)())
        {
          v11 = v6 + 1;
          v12 = v6;
          if (v7 >= v6 && v7 < v11)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v13 = v4 + 1;
          v12 = v4;
          v11 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_17;
            }
          }
        }

        *v7 = *v12;
LABEL_17:
        ++v7;
        if (v4 < v10)
        {
          v6 = v11;
          if (v11 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
  }

LABEL_40:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TQ0__0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC20CommunicationDetails15QuickActionViewC10ButtonTypeO_AETt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 8);
      v8 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9, v10);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + result) = v7;
      *(v5[7] + 8 * result) = v8;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10ContactsUI38CNContactHeaderQuickActionsGroupActionVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10ContactsUI38CNContactHeaderQuickActionsGroupActionVtMd, &_sSS_10ContactsUI38CNContactHeaderQuickActionsGroupActionVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10ContactsUI38CNContactHeaderQuickActionsGroupActionVGMd, &_ss18_DictionaryStorageCySS10ContactsUI38CNContactHeaderQuickActionsGroupActionVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      _s10Foundation3URLVSgWOcTm_1(v9, v5, &_sSS_10ContactsUI38CNContactHeaderQuickActionsGroupActionVtMd, &_sSS_10ContactsUI38CNContactHeaderQuickActionsGroupActionVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for CNContactHeaderQuickActionsGroupAction();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo38UIApplicationOpenExternalURLOptionsKeyaypGMd, &_ss18_DictionaryStorageCySo38UIApplicationOpenExternalURLOptionsKeyaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      _s10Foundation3URLVSgWOcTm_1(v4, &v11, &_sSo38UIApplicationOpenExternalURLOptionsKeya_yptMd, &_sSo38UIApplicationOpenExternalURLOptionsKeya_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void))
{
  v83 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v6 = *v83;
    if (*v83)
    {
      v8 = v5;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_93;
    }

    goto LABEL_129;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v13 = *a3;
      result = a5(*(*a3 + v9 + 1), *(*a3 + v9));
      if (v5)
      {
      }

      v14 = v11;
      v15 = result;
      v6 = v8 - 2;
      v80 = v14;
      while (v6 != v14)
      {
        result = a5(v14[v13 + 2], v14[v13 + 1]);
        ++v14;
        if ((v15 ^ result))
        {
          v8 = (v14 + 1);
          break;
        }
      }

      if (v15)
      {
        v11 = v80;
        if (v8 < v80)
        {
          goto LABEL_123;
        }

        if (v80 < v8)
        {
          v16 = v8 - 1;
          v17 = v80;
          do
          {
            if (v17 != v16)
            {
              v19 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v20 = *(v19 + v17);
              *(v19 + v17) = *(v19 + v16);
              *(v19 + v16) = v20;
            }
          }

          while (++v17 < v16--);
        }

        v12 = v8;
      }

      else
      {
        v12 = v8;
        v11 = v80;
      }
    }

    v21 = a3[1];
    if (v12 >= v21)
    {
      goto LABEL_132;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_119;
    }

    if (v12 - v11 >= a4)
    {
      goto LABEL_132;
    }

    if (__OFADD__(v11, a4))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    if (v11 + a4 >= v21)
    {
      v22 = a3[1];
    }

    else
    {
      v22 = v11 + a4;
    }

    if (v22 < v11)
    {
      goto LABEL_122;
    }

    if (v12 == v22)
    {
LABEL_132:
      if (v12 < v11)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v68 = v11;
      v69 = *a3;
      v6 = *a3 + v12;
      v82 = v68;
      v8 = v68 - v12;
      v77 = v22;
      do
      {
        v70 = *(v69 + v12);
        v71 = v8;
        v78 = v6;
        do
        {
          result = a5(v70, *(v6 - 1));
          if (v5)
          {
          }

          if ((result & 1) == 0)
          {
            break;
          }

          if (!v69)
          {
            goto LABEL_125;
          }

          v70 = *v6;
          *v6 = *(v6 - 1);
          *--v6 = v70;
        }

        while (!__CFADD__(v71++, 1));
        ++v12;
        v6 = (v78 + 1);
        --v8;
      }

      while (v12 != v77);
      v12 = v77;
      v11 = v82;
      if (v77 < v82)
      {
        goto LABEL_118;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v6 = *(v10 + 2);
    v23 = *(v10 + 3);
    v24 = v6 + 1;
    if (v6 >= v23 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v6 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v24;
    v25 = &v10[16 * v6];
    *(v25 + 4) = v11;
    *(v25 + 5) = v12;
    v26 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    v81 = v12;
    if (v6)
    {
      break;
    }

LABEL_3:
    v8 = a3[1];
    v9 = v81;
    if (v81 >= v8)
    {
      goto LABEL_91;
    }
  }

  while (1)
  {
    v27 = v24 - 1;
    if (v24 >= 4)
    {
      v32 = &v10[16 * v24 + 32];
      v33 = *(v32 - 64);
      v34 = *(v32 - 56);
      v38 = __OFSUB__(v34, v33);
      v35 = v34 - v33;
      if (v38)
      {
        goto LABEL_105;
      }

      v37 = *(v32 - 48);
      v36 = *(v32 - 40);
      v38 = __OFSUB__(v36, v37);
      v30 = v36 - v37;
      v31 = v38;
      if (v38)
      {
        goto LABEL_106;
      }

      v39 = &v10[16 * v24];
      v41 = *v39;
      v40 = *(v39 + 1);
      v38 = __OFSUB__(v40, v41);
      v42 = v40 - v41;
      if (v38)
      {
        goto LABEL_108;
      }

      v38 = __OFADD__(v30, v42);
      v43 = v30 + v42;
      if (v38)
      {
        goto LABEL_111;
      }

      if (v43 >= v35)
      {
        v61 = &v10[16 * v27 + 32];
        v63 = *v61;
        v62 = *(v61 + 1);
        v38 = __OFSUB__(v62, v63);
        v64 = v62 - v63;
        if (v38)
        {
          goto LABEL_117;
        }

        if (v30 < v64)
        {
          v27 = v24 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

    if (v24 == 3)
    {
      v28 = *(v10 + 4);
      v29 = *(v10 + 5);
      v38 = __OFSUB__(v29, v28);
      v30 = v29 - v28;
      v31 = v38;
LABEL_50:
      if (v31)
      {
        goto LABEL_107;
      }

      v44 = &v10[16 * v24];
      v46 = *v44;
      v45 = *(v44 + 1);
      v47 = __OFSUB__(v45, v46);
      v48 = v45 - v46;
      v49 = v47;
      if (v47)
      {
        goto LABEL_110;
      }

      v50 = &v10[16 * v27 + 32];
      v52 = *v50;
      v51 = *(v50 + 1);
      v38 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v38)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v48, v53))
      {
        goto LABEL_114;
      }

      if (v48 + v53 >= v30)
      {
        if (v30 < v53)
        {
          v27 = v24 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_64;
    }

    v54 = &v10[16 * v24];
    v56 = *v54;
    v55 = *(v54 + 1);
    v38 = __OFSUB__(v55, v56);
    v48 = v55 - v56;
    v49 = v38;
LABEL_64:
    if (v49)
    {
      goto LABEL_109;
    }

    v57 = &v10[16 * v27];
    v59 = *(v57 + 4);
    v58 = *(v57 + 5);
    v38 = __OFSUB__(v58, v59);
    v60 = v58 - v59;
    if (v38)
    {
      goto LABEL_112;
    }

    if (v60 < v48)
    {
      goto LABEL_3;
    }

LABEL_71:
    v8 = v27 - 1;
    if (v27 - 1 >= v24)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_124;
    }

    v65 = *&v10[16 * v8 + 32];
    v66 = *&v10[16 * v27 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + v65), (*a3 + *&v10[16 * v27 + 32]), (*a3 + v66), v26, a5);
    if (v5)
    {
    }

    if (v66 < v65)
    {
      goto LABEL_103;
    }

    v6 = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    }

    if (v8 >= *(v10 + 2))
    {
      goto LABEL_104;
    }

    v67 = &v10[16 * v8];
    *(v67 + 4) = v65;
    *(v67 + 5) = v66;
    result = specialized Array.remove(at:)(v27);
    v24 = *(v10 + 2);
    if (v24 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
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
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
  v10 = result;
LABEL_93:
  v73 = *(v10 + 2);
  if (v73 < 2)
  {
  }

  while (*a3)
  {
    v74 = *&v10[16 * v73];
    v75 = *&v10[16 * v73 + 24];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + v74), (*a3 + *&v10[16 * v73 + 16]), (*a3 + v75), v6, a5);
    if (v8)
    {
    }

    if (v75 < v74)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    }

    if (v73 - 2 >= *(v10 + 2))
    {
      goto LABEL_116;
    }

    v76 = &v10[16 * v73];
    *v76 = v74;
    *(v76 + 1) = v75;
    result = specialized Array.remove(at:)(v73 - 1);
    v73 = *(v10 + 2);
    if (v73 <= 1)
    {
    }
  }

LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1, uint64_t (*a2)(uint64_t, void))
{
  v4 = a1;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
  }

  v6 = *(v5 + 2);
  v19[0] = (v5 + 32);
  v19[1] = v6;
  result = _minimumMergeRunLength(_:)(v6);
  if (result >= v6)
  {
    v17 = v4;
    if (v6 >= 2)
    {
      v11 = v5 + 33;
      v12 = -1;
      v13 = 1;
      while (2)
      {
        result = v5[v13 + 32];
        v14 = v12;
        v15 = v11;
        do
        {
          result = a2(result, *(v15 - 1));
          if (v2)
          {
            v4 = v17;
            goto LABEL_20;
          }

          if ((result & 1) == 0)
          {
            break;
          }

          result = *v15;
          *v15 = *(v15 - 1);
          *--v15 = result;
        }

        while (!__CFADD__(v14++, 1));
        ++v13;
        ++v11;
        --v12;
        if (v13 != v6)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_18;
  }

  v8 = result;
  v9 = v6 >> 1;
  if (v6 >= 2)
  {
    v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v10 + 16) = v9;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v18[0] = v10 + 32;
  v18[1] = v9;
  specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v18, v20, v19, v8, a2);
  *(v10 + 16) = 0;

  if (!v2)
  {
    v17 = v4;
LABEL_18:
    *v17 = v5;
    return result;
  }

LABEL_20:
  *v4 = v5;
  return result;
}

char *specialized QuickActionsContainerView.init(contacts:requestedQuickActions:styleGuide:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v99 = a1;
  v8 = type metadata accessor for Logger();
  v97 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v96 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Header.StyleGuide(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v103 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_model] = 0;
  v12 = OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_actionButtons;
  v13 = MEMORY[0x1E69E7CC0];
  *&v4[v12] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC20CommunicationDetails15QuickActionViewC10ButtonTypeO_AETt0g5Tf4g_nTm(MEMORY[0x1E69E7CC0], &_ss18_DictionaryStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOAEGMd, &_ss18_DictionaryStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOAEGMR);
  v14 = OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_customActionButtons;
  *&v4[v14] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC20CommunicationDetails15QuickActionViewC10ButtonTypeO_AETt0g5Tf4g_nTm(v13, &_ss18_DictionaryStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOSo8UIButtonCGMd, &_ss18_DictionaryStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOSo8UIButtonCGMR);

  v18 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC20CommunicationDetails15QuickActionViewC10ButtonTypeO_SayAHGTt0g5Tf4g_n(v15, v16, v17);

  *&v4[OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_requestedQuickActions] = v18;
  v105 = a3;
  outlined init with copy of Header.StyleGuide(a3, &v4[OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_styleGuide]);
  *&v4[OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_delegate] = a4;
  v19 = type metadata accessor for QuickActionsContainerView(0);
  v109.receiver = v4;
  v109.super_class = v19;
  v101 = a4;

  v20 = a2;
  v21 = objc_msgSendSuper2(&v109, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v22 = v21;
  v23 = *(v20 + 16);
  v104 = v20;
  v98 = v8;
  if (v23)
  {
    v107 = type metadata accessor for MainActor();
    v102 = OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_actionButtons;
    v24 = OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_customActionButtons;
    v25 = (v20 + 32);
    v26 = v22;
    v27 = 0;
    v100 = v23;
    while (1)
    {
      if (v27 >= *(v20 + 16))
      {
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
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v30 = v25[v27];
      v106 = static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (!QuickActionView.ButtonType.needsCustomButton.getter(v30))
      {
        v48 = v24;
        v49 = v25;
        type metadata accessor for QuickActionView();
        v50 = v103;
        outlined init with copy of Header.StyleGuide(v105, v103);
        v51 = QuickActionView.__allocating_init(type:styleGuide:)(v30, v50);
        v52 = v102;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108 = *&v22[v52];
        v54 = v108;
        *&v22[v52] = 0x8000000000000000;
        v58 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v55, v56);
        v59 = v54[2];
        v60 = (v57 & 1) == 0;
        v61 = v59 + v60;
        if (__OFADD__(v59, v60))
        {
          goto LABEL_49;
        }

        v62 = v57;
        if (v54[3] >= v61)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOAEGMd, &_ss18_DictionaryStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOAEGMR);
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v61, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOAEGMd, &_ss18_DictionaryStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOAEGMR);
          v65 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v63, v64);
          if ((v62 & 1) != (v66 & 1))
          {
            goto LABEL_52;
          }

          v58 = v65;
        }

        v25 = v49;
        v70 = v108;
        v24 = v48;
        if (v62)
        {
          v28 = v108[7];
          v29 = *(v28 + 8 * v58);
          *(v28 + 8 * v58) = v51;

          v23 = v100;
        }

        else
        {
          v108[(v58 >> 6) + 8] |= 1 << v58;
          *(v70[6] + v58) = v30;
          *(v70[7] + 8 * v58) = v51;
          v71 = v70[2];
          v42 = __OFADD__(v71, 1);
          v72 = v71 + 1;
          v23 = v100;
          if (v42)
          {
            goto LABEL_51;
          }

          v70[2] = v72;
        }

        *&v22[v102] = v70;
        goto LABEL_5;
      }

      type metadata accessor for QuickActionCustomButton(0);
      v31 = v103;
      outlined init with copy of Header.StyleGuide(v105, v103);
      v32 = v101;

      v33 = QuickActionCustomButton.__allocating_init(type:delegate:styleGuide:)(v30, v32, v31);
      swift_beginAccess();
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v108 = *&v22[v24];
      v35 = v108;
      *&v22[v24] = 0x8000000000000000;
      v38 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v36, v37);
      v40 = v35[2];
      v41 = (v39 & 1) == 0;
      v42 = __OFADD__(v40, v41);
      v43 = v40 + v41;
      if (v42)
      {
        goto LABEL_48;
      }

      v44 = v39;
      if (v35[3] < v43)
      {
        break;
      }

      if (v34)
      {
        goto LABEL_19;
      }

      v73 = v38;
      specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOSo8UIButtonCGMd, &_ss18_DictionaryStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOSo8UIButtonCGMR);
      v38 = v73;
      v67 = v108;
      if ((v44 & 1) == 0)
      {
LABEL_27:
        v67[(v38 >> 6) + 8] |= 1 << v38;
        *(v67[6] + v38) = v30;
        *(v67[7] + 8 * v38) = v33;
        v74 = v67[2];
        v42 = __OFADD__(v74, 1);
        v75 = v74 + 1;
        if (v42)
        {
          goto LABEL_50;
        }

        v67[2] = v75;
        goto LABEL_29;
      }

LABEL_20:
      v68 = v67[7];
      v69 = *(v68 + 8 * v38);
      *(v68 + 8 * v38) = v33;

LABEL_29:
      *&v22[v24] = v67;
LABEL_5:
      swift_endAccess();
      v20 = v104;
      ++v27;

      if (v23 == v27)
      {
        v76 = MEMORY[0x1E69E7CC0];
        do
        {
          v78 = *v25;
          v79 = v25 + 1;
          static MainActor.shared.getter();
          dispatch thunk of Actor.unownedExecutor.getter();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v80 = QuickActionView.ButtonType.cnActionType.getter(v78);
          v82 = v81;

          if (v82)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v76 + 2) + 1, 1, v76);
            }

            v84 = *(v76 + 2);
            v83 = *(v76 + 3);
            if (v84 >= v83 >> 1)
            {
              v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1, v76);
            }

            *(v76 + 2) = v84 + 1;
            v77 = &v76[16 * v84];
            *(v77 + 4) = v80;
            *(v77 + 5) = v82;
          }

          v25 = v79;
          --v23;
        }

        while (v23);
        goto LABEL_41;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, v34, &_ss18_DictionaryStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOSo8UIButtonCGMd, &_ss18_DictionaryStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOSo8UIButtonCGMR);
    v38 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v45, v46);
    if ((v44 & 1) != (v47 & 1))
    {
      goto LABEL_52;
    }

LABEL_19:
    v67 = v108;
    if ((v44 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  v85 = v21;
LABEL_41:

  QuickActionsContainerView.groupActions(for:)(v99);
  type metadata accessor for CNContactHeaderQuickActionsModel();
  swift_allocObject();
  v86 = v22;
  v87 = CNContactHeaderQuickActionsModel.init(contacts:actionTypes:groupActionsPerType:container:)();
  *&v86[OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_model] = v87;

  if (v87)
  {
  }

  else
  {
    v88 = Logger.detailsViewController.unsafeMutableAddressor();
    v90 = v96;
    v89 = v97;
    v91 = v98;
    (*(v97 + 16))(v96, v88, v98);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_190119000, v92, v93, "Failed to initialize CNContactHeaderQuickActionsModel.", v94, 2u);
      MEMORY[0x193AEBB30](v94, -1, -1);
    }

    (*(v89 + 8))(v90, v91);
  }

  QuickActionsContainerView.setupSubviews()();

  outlined destroy of Header.StyleGuide(v105);
  return v86;
}

uint64_t type metadata accessor for QuickActionsContainerView(uint64_t a1)
{
  result = type metadata singleton initialization cache for QuickActionsContainerView;
  if (!type metadata singleton initialization cache for QuickActionsContainerView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for QuickActionsContainerView(uint64_t a1)
{
  result = type metadata accessor for Header.StyleGuide(319);
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

uint64_t _sSo18NSLayoutConstraintCMaTm_0(uint64_t a1, unint64_t *a2, void *a3)
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

double partial apply for closure #3 in QuickActionsContainerView.groupActions(for:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #3 in QuickActionsContainerView.groupActions(for:)(v2);
}

uint64_t partial apply for closure #1 in closure #3 in QuickActionsContainerView.groupActions(for:)(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #3 in QuickActionsContainerView.groupActions(for:);

  return closure #1 in closure #3 in QuickActionsContainerView.groupActions(for:)(a1, v6, v7, v1 + v5);
}

uint64_t partial apply for closure #1 in closure #3 in QuickActionsContainerView.groupActions(for:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t outlined destroy of CNContactHeaderQuickActionsGroupAction?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for UIApplicationOpenExternalURLOptionsKey()
{
  if (!lazy cache variable for type metadata for UIApplicationOpenExternalURLOptionsKey)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for UIApplicationOpenExternalURLOptionsKey);
    }
  }
}

uint64_t partial apply for closure #1 in closure #4 in QuickActionsContainerView.groupActions(for:)(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in closure #4 in QuickActionsContainerView.groupActions(for:);

  return closure #1 in closure #4 in QuickActionsContainerView.groupActions(for:)(a1, v5, v6, v4);
}

uint64_t _s10Foundation3URLVSgWOcTm_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIApplicationOpenExternalURLOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall DetailsViewController.updateAvatarView()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_configuration);
  v3 = (*(*v2 + 200))(&v31 + 1);
  if ((v34 & 0x8000000000000000) == 0)
  {
    v4 = v33;
    v5 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C8))(v3);
    if (v5)
    {
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1901E6230;
      *(v7 + 32) = v4;
      v8 = v4;
      v9 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo9CNContactC_SayAEGTt0g5(v7);
      Header.HeaderView.configureAvatarView(with:)(v9);

      v11 = (*(*v2 + 584))(&v31, v10);
      lazy protocol witness table accessor for type DetailsViewController.HeaderStyle and conformance DetailsViewController.HeaderStyle(v11, v12, v13);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        DetailsViewController.setUpViewsForPosterStyle()();
      }

      outlined destroy of DetailsViewController.CommunicationType(&v31 + 1);
      return;
    }

    __break(1u);
    goto LABEL_17;
  }

  v30 = v32;
  if (v32 && (v3 = [v32 groupPhoto]) != 0)
  {
    v14 = v3;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v18 setImageData_];

    v20 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))();
    if (!v20)
    {
LABEL_18:
      __break(1u);
      return;
    }

    v21 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1901E6230;
    *(v22 + 32) = v18;
    v23 = v18;
    v24 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo9CNContactC_SayAEGTt0g5(v22);
    Header.HeaderView.configureAvatarView(with:)(v24);

    outlined consume of Data._Representation(v15, v17);
  }

  else
  {
    v25 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C8))(v3);
    if (!v25)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v26 = v25;

    v28 = (*(*v2 + 672))(v27);
    v29 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo9CNContactC_SayAEGTt0g5(v28);
    Header.HeaderView.configureAvatarView(with:)(v29);
  }
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo9CNContactC_SayAEGTt0g5(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v2 = a1;
  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v3 = MEMORY[0x193AEB0F0](a1);
  if (!v3)
  {
LABEL_9:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo9CNContactC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)((v5 + 4), v4, v2);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t key path getter for WrappedAvatarView.ViewModel.contacts : WrappedAvatarView.ViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t key path setter for WrappedAvatarView.ViewModel.contacts : WrappedAvatarView.ViewModel(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 144);

  return v2(v3);
}

uint64_t WrappedAvatarView.ViewModel.contacts.getter()
{
  swift_getKeyPath();
  (*(*v0 + 264))();

  swift_beginAccess();
}

uint64_t WrappedAvatarView.ViewModel.contacts.setter(unint64_t a1)
{
  swift_beginAccess();

  v4 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo9CNContactC_Tt1g5(v3, a1);

  if (v4)
  {
    v1[2] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    v8 = v1;
    v9 = a1;
    (*(*v1 + 272))(v7);
  }
}

uint64_t (*WrappedAvatarView.ViewModel.contacts.modify(uint64_t *a1))()
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 264))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV20CommunicationDetails17WrappedAvatarView9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type WrappedAvatarView.ViewModel and conformance WrappedAvatarView.ViewModel(&lazy protocol witness table cache variable for type WrappedAvatarView.ViewModel and conformance WrappedAvatarView.ViewModel, type metadata accessor for WrappedAvatarView.ViewModel, &protocol conformance descriptor for WrappedAvatarView.ViewModel);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = WrappedAvatarView.ViewModel._contacts.modify(v4);
  return WrappedAvatarView.ViewModel.contacts.modify;
}

double WrappedAvatarView.ViewModel.opacity.getter()
{
  swift_getKeyPath();
  (*(*v0 + 264))();

  swift_beginAccess();
  return v0[3];
}

void WrappedAvatarView.ViewModel.opacity.setter(double a1)
{
  swift_beginAccess();
  if (v1[3] == a1)
  {
    v1[3] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 272))(v4);
  }
}

uint64_t (*WrappedAvatarView.ViewModel.opacity.modify(uint64_t *a1))()
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 264))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV20CommunicationDetails17WrappedAvatarView9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type WrappedAvatarView.ViewModel and conformance WrappedAvatarView.ViewModel(&lazy protocol witness table cache variable for type WrappedAvatarView.ViewModel and conformance WrappedAvatarView.ViewModel, type metadata accessor for WrappedAvatarView.ViewModel, &protocol conformance descriptor for WrappedAvatarView.ViewModel);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = WrappedAvatarView.ViewModel._opacity.modify(v4);
  return WrappedAvatarView.ViewModel.opacity.modify;
}

double WrappedAvatarView.ViewModel.blurRadius.getter()
{
  swift_getKeyPath();
  (*(*v0 + 264))();

  swift_beginAccess();
  return v0[4];
}

void WrappedAvatarView.ViewModel.blurRadius.setter(double a1)
{
  swift_beginAccess();
  if (v1[4] == a1)
  {
    v1[4] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 272))(v4);
  }
}

uint64_t (*WrappedAvatarView.ViewModel.blurRadius.modify(uint64_t *a1))()
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 264))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV20CommunicationDetails17WrappedAvatarView9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type WrappedAvatarView.ViewModel and conformance WrappedAvatarView.ViewModel(&lazy protocol witness table cache variable for type WrappedAvatarView.ViewModel and conformance WrappedAvatarView.ViewModel, type metadata accessor for WrappedAvatarView.ViewModel, &protocol conformance descriptor for WrappedAvatarView.ViewModel);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = WrappedAvatarView.ViewModel._blurRadius.modify(v4);
  return WrappedAvatarView.ViewModel.blurRadius.modify;
}

void WrappedAvatarView.ViewModel.contacts.modify(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

uint64_t WrappedAvatarView.ViewModel.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = xmmword_1901EB6A0;
  ObservationRegistrar.init()();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t WrappedAvatarView.ViewModel.init(_:)(uint64_t a1)
{
  *(v1 + 24) = xmmword_1901EB6A0;
  ObservationRegistrar.init()();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t WrappedAvatarView.ViewModel.deinit()
{

  v1 = OBJC_IVAR____TtCV20CommunicationDetails17WrappedAvatarView9ViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t WrappedAvatarView.ViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCV20CommunicationDetails17WrappedAvatarView9ViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t WrappedAvatarView.viewModel.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails17WrappedAvatarViewV0H5ModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails17WrappedAvatarViewV0H5ModelCGMR);
  State.wrappedValue.getter();
  return v3;
}

void *key path getter for WrappedAvatarView.viewModel : WrappedAvatarView@<X0>(void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails17WrappedAvatarViewV0H5ModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails17WrappedAvatarViewV0H5ModelCGMR);
  result = State.wrappedValue.getter();
  *a2 = v4;
  return result;
}

uint64_t key path setter for WrappedAvatarView.viewModel : WrappedAvatarView(uint64_t *a1, void *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails17WrappedAvatarViewV0H5ModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails17WrappedAvatarViewV0H5ModelCGMR);
  return State.wrappedValue.setter();
}

void (*WrappedAvatarView.viewModel.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x48uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[6] = a2;
  v6[7] = a3;
  *v6 = a2;
  v6[1] = a3;

  v7[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails17WrappedAvatarViewV0H5ModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails17WrappedAvatarViewV0H5ModelCGMR);
  State.wrappedValue.getter();
  return WrappedAvatarView.viewModel.modify;
}

void WrappedAvatarView.viewModel.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[2] = *(*a1 + 48);
  v2[5] = v2[4];
  v2[3] = v3;
  if (a2)
  {

    State.wrappedValue.setter();
  }

  else
  {
    State.wrappedValue.setter();
  }

  free(v2);
}

uint64_t WrappedAvatarView.$viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails17WrappedAvatarViewV0H5ModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails17WrappedAvatarViewV0H5ModelCGMR);
  State.projectedValue.getter();
  return v1;
}

uint64_t WrappedAvatarView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGAA05_BlurT0VGAA010_AnimationN0VySaySdGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGAA05_BlurT0VGAA010_AnimationN0VySaySdGGGMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGAA05_BlurT0VGAA010_AnimationN0VySaySdGGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGAA05_BlurT0VGAA010_AnimationN0VySaySdGGGAA023AccessibilityAttachmentN0VGMR);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  closure #1 in WrappedAvatarView.body.getter(a1, a2, a3, v9);
  v34 = a1;
  v35 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails17WrappedAvatarViewV0H5ModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails17WrappedAvatarViewV0H5ModelCGMR);
  v13 = State.wrappedValue.getter();
  v14 = (*(*v33 + 136))(v13);

  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6IDViewVyAA5GroupVyAA19_ConditionalContentVyAA08ModifiedF0Vy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGMd, &_s7SwiftUI6IDViewVyAA5GroupVyAA19_ConditionalContentVyAA08ModifiedF0Vy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGMR) + 52)] = v14;
  v34 = a1;
  v35 = a2;
  v15 = State.wrappedValue.getter();
  v16 = (*(*v33 + 184))(v15);

  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGMR) + 36)] = v16;
  v34 = a1;
  v35 = a2;
  v17 = State.wrappedValue.getter();
  v18 = (*(*v33 + 232))(v17);

  v19 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGAA05_BlurT0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGAA05_BlurT0VGMR) + 36)];
  *v19 = v18;
  v19[8] = 0;
  v20 = MEMORY[0x193AEA740](0.5, 1.0, 0.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1901E6240;
  v34 = a1;
  v35 = a2;
  v22 = State.wrappedValue.getter();
  v23 = (*(*v33 + 184))(v22);

  *(v21 + 32) = v23;
  v34 = a1;
  v35 = a2;
  v24 = State.wrappedValue.getter();
  v25 = (*(*v33 + 232))(v24);

  *(v21 + 40) = v25;
  v26 = &v9[*(v7 + 36)];
  *v26 = v20;
  v26[1] = v21;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect>, _AnimationModifier<[Double]>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityHidden(_:)();
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect>, _AnimationModifier<[Double]>>(v9, &_s7SwiftUI15ModifiedContentVyACyACyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGAA05_BlurT0VGAA010_AnimationN0VySaySdGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGAA05_BlurT0VGAA010_AnimationN0VySaySdGGGMR);
  v27 = v32;
  ModifiedContent<>.accessibilityIdentifier(_:)();
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect>, _AnimationModifier<[Double]>>(v12, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGAA05_BlurT0VGAA010_AnimationN0VySaySdGGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGAA05_BlurT0VGAA010_AnimationN0VySaySdGGGAA023AccessibilityAttachmentN0VGMR);
  v28 = static SafeAreaRegions.all.getter();
  v29 = static Edge.Set.all.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGAA05_BlurT0VGAA010_AnimationN0VySaySdGGGAA023AccessibilityAttachmentN0VGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGAA05_BlurT0VGAA010_AnimationN0VySaySdGGGAA023AccessibilityAttachmentN0VGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
  v31 = v27 + *(result + 36);
  *v31 = v28;
  *(v31 + 8) = v29;
  return result;
}

double closure #1 in WrappedAvatarView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a2;
  v26 = a4;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGMd, &_s7SwiftUI15ModifiedContentVy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGMR);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v22 - v6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGAJ_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGAJ_GMR);
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v22 - v8;
  v10 = type metadata accessor for AvatarView();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGAHGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGAHGMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v22 - v15;
  type metadata accessor for MainActor();
  v24 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = a1;
  v29 = v22;
  if (a3)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails17WrappedAvatarViewV0H5ModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails17WrappedAvatarViewV0H5ModelCGMR);
    v17 = State.wrappedValue.getter();
    (*(*v27 + 136))(v17);

    AvatarView.init(contacts:)();
    KeyPath = swift_getKeyPath();
    v19 = &v7[*(v25 + 36)];
    *v19 = KeyPath;
    v19[1] = a3;
    outlined init with copy of ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>(v7, v9);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type WrappedAvatarView.ViewModel and conformance WrappedAvatarView.ViewModel(&lazy protocol witness table cache variable for type AvatarView and conformance AvatarView, MEMORY[0x1E695CFD8], MEMORY[0x1E695CFD0]);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect>, _AnimationModifier<[Double]>>(v7, &_s7SwiftUI15ModifiedContentVy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGMd, &_s7SwiftUI15ModifiedContentVy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGMR);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails17WrappedAvatarViewV0H5ModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails17WrappedAvatarViewV0H5ModelCGMR);
    v20 = State.wrappedValue.getter();
    (*(*v27 + 136))(v20);

    AvatarView.init(contacts:)();
    (*(v11 + 16))(v9, v13, v10);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type WrappedAvatarView.ViewModel and conformance WrappedAvatarView.ViewModel(&lazy protocol witness table cache variable for type AvatarView and conformance AvatarView, MEMORY[0x1E695CFD8], MEMORY[0x1E695CFD0]);
    _ConditionalContent<>.init(storage:)();
    (*(v11 + 8))(v13, v10);
  }

  outlined init with take of _ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>(v16, v26);

  return result;
}

uint64_t key path getter for EnvironmentValues.avatarBackgroundStyle : EnvironmentValues@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.avatarBackgroundStyle.getter();
  *a1 = result;
  return result;
}

uint64_t WrappedAvatarView.init(viewModel:backgroundStyle:)(uint64_t a1)
{
  type metadata accessor for WrappedAvatarView.ViewModel(0);
  State.init(wrappedValue:)();
  return v2;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo9CNContactC_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_9(v4);
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

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo9CNContactC_Tt1g5(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_52;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v3 & 0xFFFFFFFFFFFFFF8;
    v9 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v8 = v3;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = type metadata accessor for CNContact();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v4 = v3 & 0xC000000000000001;
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x193AEB000](v13 - 4, v3);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v14 >= v4)
          {
            goto LABEL_42;
          }

          v16 = *(v3 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v14 >= v4)
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x193AEB000](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v3 + 32);
    v21 = (a2 + 32);
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    v22 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v3 = v27;
      v19 = static NSObject.== infix(_:_:)();

      v4 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v4)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    if (v3 < 0)
    {
      v29 = v3;
    }

    else
    {
      v29 = v4;
    }

    v6 = MEMORY[0x193AEB0F0](v29);
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    v30 = a2;
  }

  else
  {
    v30 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x193AEB0F0](v30);
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_52:
  v19 = 0;
  return v19 & 1;
}

uint64_t partial apply for closure #1 in WrappedAvatarView.ViewModel.contacts.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 16) = v1;
}

uint64_t type metadata accessor for WrappedAvatarView.ViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for WrappedAvatarView.ViewModel;
  if (!type metadata singleton initialization cache for WrappedAvatarView.ViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void partial apply for closure #1 in WrappedAvatarView.ViewModel.opacity.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 24) = v2;
}

void partial apply for closure #1 in WrappedAvatarView.ViewModel.blurRadius.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 32) = v2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect>, _AnimationModifier<[Double]>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect>, _AnimationModifier<[Double]>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect>, _AnimationModifier<[Double]>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGAA05_BlurT0VGAA010_AnimationN0VySaySdGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGAA05_BlurT0VGAA010_AnimationN0VySaySdGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]> and conformance IDView<A, B>(&lazy protocol witness table cache variable for type _AnimationModifier<[Double]> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySaySdGGMd, &_s7SwiftUI18_AnimationModifierVySaySdGGMR, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect>, _AnimationModifier<[Double]>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGAA05_BlurT0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGAA05_BlurT0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGMR);
    lazy protocol witness table accessor for type IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]> and conformance IDView<A, B>(&lazy protocol witness table cache variable for type IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]> and conformance IDView<A, B>, &_s7SwiftUI6IDViewVyAA5GroupVyAA19_ConditionalContentVyAA08ModifiedF0Vy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGMd, &_s7SwiftUI6IDViewVyAA5GroupVyAA19_ConditionalContentVyAA08ModifiedF0Vy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGMR, MEMORY[0x1E6981810]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WrappedAvatarView(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WrappedAvatarView(uint64_t result, int a2, int a3)
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

uint64_t type metadata completion function for WrappedAvatarView.ViewModel(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect>, _AnimationModifier<[Double]>>, AccessibilityAttachmentModifier>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect>, _AnimationModifier<[Double]>>, AccessibilityAttachmentModifier>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect>, _AnimationModifier<[Double]>>, AccessibilityAttachmentModifier>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGAA05_BlurT0VGAA010_AnimationN0VySaySdGGGAA023AccessibilityAttachmentN0VGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGAA05_BlurT0VGAA010_AnimationN0VySaySdGGGAA023AccessibilityAttachmentN0VGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect>, _AnimationModifier<[Double]>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect>, _AnimationModifier<[Double]>>, AccessibilityAttachmentModifier>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect>, _AnimationModifier<[Double]>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect>, _AnimationModifier<[Double]>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect>, _AnimationModifier<[Double]>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGAA05_BlurT0VGAA010_AnimationN0VySaySdGGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6IDViewVyAA5GroupVyAA012_ConditionalD0VyACy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGALGGSaySo9CNContactCGGAA14_OpacityEffectVGAA05_BlurT0VGAA010_AnimationN0VySaySdGGGAA023AccessibilityAttachmentN0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect>, _AnimationModifier<[Double]>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type WrappedAvatarView.ViewModel and conformance WrappedAvatarView.ViewModel(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect>, _AnimationModifier<[Double]>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGMd, &_s7SwiftUI15ModifiedContentVy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGMR);
    lazy protocol witness table accessor for type WrappedAvatarView.ViewModel and conformance WrappedAvatarView.ViewModel(&lazy protocol witness table cache variable for type AvatarView and conformance AvatarView, MEMORY[0x1E695CFD8], MEMORY[0x1E695CFD0]);
    lazy protocol witness table accessor for type IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]> and conformance IDView<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WrappedAvatarView.ViewModel and conformance WrappedAvatarView.ViewModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of _ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGAHGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGAHGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGMd, &_s7SwiftUI15ModifiedContentVy08ContactsB010AvatarViewVAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVGGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]>, _OpacityEffect>, _BlurEffect>, _AnimationModifier<[Double]>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]> and conformance IDView<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

__n128 HeaderSizeInterpolator.avatarWidth.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 24);
  *(a1 + 24) = result;
  return result;
}

__n128 HeaderSizeInterpolator.avatarHeight.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v2;
  result = *(v1 + 64);
  *(a1 + 24) = result;
  return result;
}

__n128 HeaderSizeInterpolator.avatarTopPadding.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = *(v1 + 80);
  *(a1 + 16) = v2;
  result = *(v1 + 104);
  *(a1 + 24) = result;
  return result;
}

__n128 HeaderSizeInterpolator.avatarBlurRadius.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 120);
  *(a1 + 16) = v2;
  result = *(v1 + 144);
  *(a1 + 24) = result;
  return result;
}

__n128 HeaderSizeInterpolator.avatarAlpha.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  *a1 = *(v1 + 160);
  *(a1 + 16) = v2;
  result = *(v1 + 184);
  *(a1 + 24) = result;
  return result;
}

__n128 HeaderSizeInterpolator.titleScale.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  *a1 = *(v1 + 200);
  *(a1 + 16) = v2;
  result = *(v1 + 224);
  *(a1 + 24) = result;
  return result;
}

__n128 HeaderSizeInterpolator.swiftUIContainerScale.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 256);
  *a1 = *(v1 + 240);
  *(a1 + 16) = v2;
  result = *(v1 + 264);
  *(a1 + 24) = result;
  return result;
}

__n128 HeaderSizeInterpolator.avatarToHeaderTextVerticalSpacing.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 296);
  *a1 = *(v1 + 280);
  *(a1 + 16) = v2;
  result = *(v1 + 304);
  *(a1 + 24) = result;
  return result;
}

__n128 HeaderSizeInterpolator.buttonRowAlpha.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 336);
  *a1 = *(v1 + 320);
  *(a1 + 16) = v2;
  result = *(v1 + 344);
  *(a1 + 24) = result;
  return result;
}

__n128 HeaderSizeInterpolator.buttonRowBlurRadius.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 376);
  *a1 = *(v1 + 360);
  *(a1 + 16) = v2;
  result = *(v1 + 384);
  *(a1 + 24) = result;
  return result;
}

__n128 HeaderSizeInterpolator.buttonRowTranslation.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 416);
  *a1 = *(v1 + 400);
  *(a1 + 16) = v2;
  result = *(v1 + 424);
  *(a1 + 24) = result;
  return result;
}

__n128 HeaderSizeInterpolator.buttonRowScale.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 456);
  *a1 = *(v1 + 440);
  *(a1 + 16) = v2;
  result = *(v1 + 464);
  *(a1 + 24) = result;
  return result;
}

uint64_t HeaderSizeInterpolator.init(style:styleGuide:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for HeaderSizeInterpolator(0);
  v6 = outlined init with copy of Header.StyleGuide(a2, a3 + *(v5 + 64));
  v7 = 1;
  lazy protocol witness table accessor for type DetailsViewController.HeaderStyle and conformance DetailsViewController.HeaderStyle(v6, v8, v9);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(a2 + 32);
  *a3 = *(a2 + 16);
  *(a3 + 8) = v11;
  if (v10)
  {
    v12 = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = xmmword_1901EB8D0;
    v13 = *(a2 + 40);
    *(a3 + 40) = *(a2 + 24);
    *(a3 + 48) = v13;
    *(a3 + 56) = 0;
    *(a3 + 64) = xmmword_1901EB8D0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 104) = xmmword_1901EB8D0;
    *(a3 + 176) = 1;
    *(a3 + 184) = xmmword_1901EB900;
    *(a3 + 120) = xmmword_1901EB910;
    *(a3 + 136) = 1;
    *(a3 + 144) = xmmword_1901EB900;
    *(a3 + 160) = xmmword_1901EB8D0;
    *(a3 + 200) = xmmword_1901EB920;
    *(a3 + 216) = 1;
    *(a3 + 224) = xmmword_1901EB930;
    *(a3 + 240) = xmmword_1901EB940;
    *(a3 + 264) = 0;
    *(a3 + 272) = 0x3FF0000000000000;
    v14 = xmmword_1901EB950;
    v15 = 0.25;
    v16 = 0.8;
    v17 = 0.4;
    v18 = 1;
    *(a3 + 256) = 0;
  }

  else
  {
    v18 = 0;
    v12 = 2;
    *(a3 + 16) = 2;
    *(a3 + 24) = xmmword_1901EB8D0;
    v19 = *(a2 + 40);
    *(a3 + 40) = *(a2 + 24);
    *(a3 + 48) = v19;
    *(a3 + 56) = 2;
    v20 = *(a2 + 48);
    v14 = *(a2 + 64);
    *(a3 + 64) = xmmword_1901EB8D0;
    *(a3 + 80) = v20;
    *(a3 + 96) = 2;
    *(a3 + 104) = xmmword_1901EB8D0;
    __asm { FMOV            V2.2D, #1.0 }

    *(a3 + 176) = 0;
    *(a3 + 184) = xmmword_1901EB8D0;
    *(a3 + 120) = 0;
    *(a3 + 128) = 0;
    *(a3 + 136) = 0;
    *(a3 + 144) = xmmword_1901EB8D0;
    *(a3 + 160) = _Q2;
    *(a3 + 200) = xmmword_1901EB8E0;
    *(a3 + 216) = 2;
    *(a3 + 224) = xmmword_1901EB8D0;
    *(a3 + 240) = xmmword_1901EB8F0;
    v17 = 1.0;
    *(a3 + 264) = 0;
    *(a3 + 272) = 0x3FF0000000000000;
    v15 = 0.35;
    v7 = 2;
    v16 = 1.0;
    *(a3 + 256) = 2;
  }

  *(a3 + 280) = v14;
  *(a3 + 296) = v12;
  *(a3 + 304) = xmmword_1901EB8D0;
  *(a3 + 320) = xmmword_1901EB6A0;
  *(a3 + 336) = v7;
  *(a3 + 344) = v15;
  *(a3 + 352) = v17;
  *(a3 + 360) = 0;
  *(a3 + 368) = 0x4014000000000000;
  *(a3 + 376) = v7;
  *(a3 + 384) = v15;
  *(a3 + 392) = v17;
  v26 = *(a2 + *(type metadata accessor for Header.StyleGuide(0) + 120));
  result = outlined destroy of Header.StyleGuide(a2);
  *(a3 + 400) = 0;
  *(a3 + 408) = v26;
  *(a3 + 416) = v7;
  *(a3 + 424) = 0;
  *(a3 + 432) = v16;
  *(a3 + 440) = 0x3FF0000000000000;
  *(a3 + 448) = v16;
  *(a3 + 456) = v18;
  *(a3 + 464) = 0;
  *(a3 + 472) = v16;
  return result;
}

uint64_t type metadata accessor for HeaderSizeInterpolator(uint64_t a1)
{
  result = type metadata singleton initialization cache for HeaderSizeInterpolator;
  if (!type metadata singleton initialization cache for HeaderSizeInterpolator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InterpolationValue.init(expandedValue:collapsedValue:range:clampingStrategy:)@<X0>(uint64_t result@<X0>, double a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v7 = *&result;
  if (a3)
  {
    a2 = 1.0;
    v7 = 0.0;
  }

  if (a2 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a2;
  }

  *a5 = a6;
  *(a5 + 8) = a7;
  *(a5 + 16) = a4;
  if (v7 > a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = a2;
  }

  *(a5 + 24) = v9;
  *(a5 + 32) = v10;
  return result;
}

double InterpolationValue.init(constant:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 24) = xmmword_1901EB8D0;
  return result;
}

Swift::Int InterpolationValue.ClampingStrategy.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InterpolationValue.ClampingStrategy()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InterpolationValue.ClampingStrategy(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v2);
  return Hasher._finalize()();
}

double InterpolationValue.evaluate(at:)(double a1)
{
  v2 = static Geometry.progress(current:start:end:)(a1, *(v1 + 24), *(v1 + 32));
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      v2 = static Geometry.clamp(_:lower:upper:)(v2, 0.0, 1.0);
    }

    else if (v2 > 1.0)
    {
      v2 = -1.0 / (v2 + -1.0 + 1.0) + 1.0 + 1.0;
    }
  }

  v4 = *v1;
  v3 = *(v1 + 8);

  return static Geometry.remappedLerp(t:fromMin:fromMax:toMin:toMax:)(v2, 0.0, 1.0, v3, v4);
}

unint64_t lazy protocol witness table accessor for type InterpolationValue.ClampingStrategy and conformance InterpolationValue.ClampingStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type InterpolationValue.ClampingStrategy and conformance InterpolationValue.ClampingStrategy;
  if (!lazy protocol witness table cache variable for type InterpolationValue.ClampingStrategy and conformance InterpolationValue.ClampingStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InterpolationValue.ClampingStrategy and conformance InterpolationValue.ClampingStrategy);
  }

  return result;
}

uint64_t type metadata completion function for HeaderSizeInterpolator(uint64_t a1)
{
  result = type metadata accessor for Header.StyleGuide(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InterpolationValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 40))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for InterpolationValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InterpolationValue.ClampingStrategy(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InterpolationValue.ClampingStrategy(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t ParticipantView.viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMR);
  State.wrappedValue.getter();
  return v1;
}

void *key path getter for ParticipantView.viewModel : ParticipantView@<X0>(void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMR);
  result = State.wrappedValue.getter();
  *a2 = v4;
  return result;
}

uint64_t key path setter for ParticipantView.viewModel : ParticipantView(void **a1, void *a2)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMR);
  return State.wrappedValue.setter();
}

void (*ParticipantView.viewModel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *v1;
  v5 = *(v1 + 8);
  v4[6] = *v1;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v7 = v6;
  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMR);
  State.wrappedValue.getter();
  return ParticipantView.viewModel.modify;
}

void ParticipantView.viewModel.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  *(v2 + 16) = v4;
  v5 = *(v2 + 32);
  *(v2 + 40) = v5;
  *(v2 + 24) = v3;
  if (a2)
  {
    v6 = v5;
    State.wrappedValue.setter();
  }

  else
  {
    State.wrappedValue.setter();
  }

  free(v2);
}

uint64_t ParticipantView.$viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMR);
  State.projectedValue.getter();
  return v1;
}

uint64_t ParticipantView.styleGuide.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 224);
  v35 = *(v1 + 208);
  v36 = v3;
  v4 = *(v1 + 128);
  v5 = *(v1 + 160);
  v31 = *(v1 + 144);
  v6 = v31;
  v32 = v5;
  v7 = *(v1 + 160);
  v8 = *(v1 + 192);
  v33 = *(v1 + 176);
  v9 = v33;
  v34 = v8;
  v10 = *(v1 + 64);
  v11 = *(v1 + 96);
  v27 = *(v1 + 80);
  v12 = v27;
  v28 = v11;
  v13 = *(v1 + 96);
  v14 = *(v1 + 128);
  v29 = *(v1 + 112);
  v15 = v29;
  v30 = v14;
  v16 = *(v1 + 32);
  v24[0] = *(v1 + 16);
  v24[1] = v16;
  v17 = *(v1 + 64);
  v19 = *(v1 + 16);
  v18 = *(v1 + 32);
  v25 = *(v1 + 48);
  v20 = v25;
  v26 = v17;
  v21 = *(v1 + 224);
  *(a1 + 192) = v35;
  *(a1 + 208) = v21;
  *(a1 + 128) = v6;
  *(a1 + 144) = v7;
  *(a1 + 160) = v9;
  *(a1 + 176) = v2;
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  *(a1 + 96) = v15;
  *(a1 + 112) = v4;
  *a1 = v19;
  *(a1 + 16) = v18;
  v37 = *(v1 + 240);
  *(a1 + 224) = *(v1 + 240);
  *(a1 + 32) = v20;
  *(a1 + 48) = v10;
  return outlined init with copy of ParticipantGrid.StyleGuide(v24, v23);
}

__n128 ParticipantView.init(viewModel:styleGuide:presentationProxy:)@<Q0>(__int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a2[11];
  v21 = a2[12];
  v22 = a2[13];
  v16 = a2[7];
  v17 = a2[8];
  v23 = *(a2 + 28);
  v18 = a2[9];
  v19 = a2[10];
  v13 = a2[4];
  v14 = a2[5];
  v15 = a2[6];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  type metadata accessor for ParticipantView.ViewModel(0);
  State.init(wrappedValue:)();
  *(a4 + 208) = v21;
  *(a4 + 224) = v22;
  *(a4 + 144) = v17;
  *(a4 + 160) = v18;
  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 176) = v19;
  *(a4 + 192) = v20;
  *(a4 + 80) = v13;
  *(a4 + 96) = v14;
  *(a4 + 112) = v15;
  *(a4 + 128) = v16;
  *(a4 + 16) = v9;
  *(a4 + 32) = v10;
  result = v12;
  *(a4 + 48) = v11;
  *(a4 + 64) = v12;
  *(a4 + 240) = v23;
  *(a4 + 248) = a3;
  return result;
}

uint64_t ParticipantView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = type metadata accessor for AccessibilityTraits();
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyALyAG20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAM011ParticipantE0V0eS0C_AM0n12PresentationU0CSgAS0pQ0V07PreviewW0OtFQOyAgME28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyE0V_SbtFQOyAG017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAgAE18confirmationDialog_A9_15titleVisibility7actionsQrqd___A15_AA10VisibilityOqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAgAEA16__A9_A17_A18_Qrqd___A15_A20_qd_0_yXEtSyRd__AaFRd_0_r0_lFQOyALyALy08ContactsB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA34_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA28_G_Qo__ALyACyAEyALyALyALyALyA33_AA30_EnvironmentKeyWritingModifierVySiSgGGA46_yAA4FontVSgGGA46_yAA5ColorVSgGGAA31AccessibilityAttachmentModifierVG_AgME20shouldHideBlockLabelyQrSbFQOyAS12BlockedLabelV_Qo_ALyAgAE14contentMargins__A8_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0L15MarginPlacementVtFQOyAS013AddToContactsQ0V_Qo_A61_GSgtGGA41_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyALyAG20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAM011ParticipantE0V0eS0C_AM0n12PresentationU0CSgAS0pQ0V07PreviewW0OtFQOyAgME28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyE0V_SbtFQOyAG017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAgAE18confirmationDialog_A9_15titleVisibility7actionsQrqd___A15_AA10VisibilityOqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAgAEA16__A9_A17_A18_Qrqd___A15_A20_qd_0_yXEtSyRd__AaFRd_0_r0_lFQOyALyALy08ContactsB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA34_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA28_G_Qo__ALyACyAEyALyALyALyALyA33_AA30_EnvironmentKeyWritingModifierVySiSgGGA46_yAA4FontVSgGGA46_yAA5ColorVSgGGAA31AccessibilityAttachmentModifierVG_AgME20shouldHideBlockLabelyQrSbFQOyAS12BlockedLabelV_Qo_ALyAgAE14contentMargins__A8_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0L15MarginPlacementVtFQOyAS013AddToContactsQ0V_Qo_A61_GSgtGGA41_GtGGMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0VyAcAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAPyAC20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAQ011ParticipantC0V0cY0C_AQ0T17PresentationProxyCSgAW0vW0V13PreviewTargetOtFQOyAcQE28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyC0V_SbtFQOyAC017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAcAE18confirmationDialog_A13_15titleVisibility7actionsQrqd___A19_AA10VisibilityOqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEA20__A13_A21_A22_Qrqd___A19_A24_qd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAPyAPy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA38_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA32_G_Qo__APyAIyAKyAPyAPyAPyAPyA37_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA4FontVSgGGA50_yAA5ColorVSgGGAA0G18AttachmentModifierVG_AcQE20shouldHideBlockLabelyQrSbFQOyAW12BlockedLabelV_Qo_APyAcAE14contentMargins__A12_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0R15MarginPlacementVtFQOyAW013AddToContactsW0V_Qo_A65_GSgtGGA45_GtGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0VyAcAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAPyAC20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAQ011ParticipantC0V0cY0C_AQ0T17PresentationProxyCSgAW0vW0V13PreviewTargetOtFQOyAcQE28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyC0V_SbtFQOyAC017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAcAE18confirmationDialog_A13_15titleVisibility7actionsQrqd___A19_AA10VisibilityOqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEA20__A13_A21_A22_Qrqd___A19_A24_qd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAPyAPy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA38_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA32_G_Qo__APyAIyAKyAPyAPyAPyAPyA37_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA4FontVSgGGA50_yAA5ColorVSgGGAA0G18AttachmentModifierVG_AcQE20shouldHideBlockLabelyQrSbFQOyAW12BlockedLabelV_Qo_APyAcAE14contentMargins__A12_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0R15MarginPlacementVtFQOyAW013AddToContactsW0V_Qo_A65_GSgtGGA45_GtGG_Qo_MR);
  v11 = *(v10 - 8);
  v48 = v10;
  v49 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - v12;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyACyAE20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAQ011ParticipantE0V0eY0C_AQ0T17PresentationProxyCSgAW0vW0V13PreviewTargetOtFQOyAeQE28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyE0V_SbtFQOyAE017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAeAE18confirmationDialog_A13_15titleVisibility7actionsQrqd___A19_AA10VisibilityOqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAEA20__A13_A21_A22_Qrqd___A19_A24_qd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACy08ContactsB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA38_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA32_G_Qo__ACyAKyAMyACyACyACyACyA37_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA4FontVSgGGA50_yAA5ColorVSgGGAA0I18AttachmentModifierVG_AeQE20shouldHideBlockLabelyQrSbFQOyAW12BlockedLabelV_Qo_ACyAeAE14contentMargins__A12_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAW013AddToContactsW0V_Qo_A65_GSgtGGA45_GtGG_Qo_A65_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyACyAE20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAQ011ParticipantE0V0eY0C_AQ0T17PresentationProxyCSgAW0vW0V13PreviewTargetOtFQOyAeQE28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyE0V_SbtFQOyAE017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAeAE18confirmationDialog_A13_15titleVisibility7actionsQrqd___A19_AA10VisibilityOqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAEA20__A13_A21_A22_Qrqd___A19_A24_qd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACy08ContactsB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA38_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA32_G_Qo__ACyAKyAMyACyACyACyACyA37_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA4FontVSgGGA50_yAA5ColorVSgGGAA0I18AttachmentModifierVG_AeQE20shouldHideBlockLabelyQrSbFQOyAW12BlockedLabelV_Qo_ACyAeAE14contentMargins__A12_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAW013AddToContactsW0V_Qo_A65_GSgtGGA45_GtGG_Qo_A65_GMR);
  MEMORY[0x1EEE9AC00](v46);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP20CommunicationDetailsE22contactCellHoverEffectQryFQOyAA15ModifiedContentVyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0VyAcAE12onTapGesture5count7performQrSi_yyctFQOyAGyAGyAcDE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAD011ParticipantC0V0C5ModelC_AD0E17PresentationProxyCSgAX0Z4MenuV13PreviewTargetOtFQOyAcDE28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyC0V_SbtFQOyAC017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAcAE18confirmationDialog_A14_15titleVisibility7actionsQrqd___A20_AA10VisibilityOqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEA21__A14_A22_A23_Qrqd___A20_A25_qd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAGyAGy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA39_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA33_G_Qo__AGyAMyAOyAGyAGyAGyAGyA38_AA30_EnvironmentKeyWritingModifierVySiSgGGA51_yAA4FontVSgGGA51_yAA5ColorVSgGGAA0O18AttachmentModifierVG_AcDE20shouldHideBlockLabelyQrSbFQOyAX12BlockedLabelV_Qo_AGyAcAE14contentMargins__A13_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0K15MarginPlacementVtFQOyAX17AddToContactsMenuV_Qo_A66_GSgtGGA46_GtGG_Qo_A66_G_Qo_Md, &_s7SwiftUI4ViewP20CommunicationDetailsE22contactCellHoverEffectQryFQOyAA15ModifiedContentVyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0VyAcAE12onTapGesture5count7performQrSi_yyctFQOyAGyAGyAcDE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAD011ParticipantC0V0C5ModelC_AD0E17PresentationProxyCSgAX0Z4MenuV13PreviewTargetOtFQOyAcDE28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyC0V_SbtFQOyAC017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAcAE18confirmationDialog_A14_15titleVisibility7actionsQrqd___A20_AA10VisibilityOqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEA21__A14_A22_A23_Qrqd___A20_A25_qd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAGyAGy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA39_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA33_G_Qo__AGyAMyAOyAGyAGyAGyAGyA38_AA30_EnvironmentKeyWritingModifierVySiSgGGA51_yAA4FontVSgGGA51_yAA5ColorVSgGGAA0O18AttachmentModifierVG_AcDE20shouldHideBlockLabelyQrSbFQOyAX12BlockedLabelV_Qo_AGyAcAE14contentMargins__A13_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0K15MarginPlacementVtFQOyAX17AddToContactsMenuV_Qo_A66_GSgtGGA46_GtGG_Qo_A66_G_Qo_MR);
  v17 = *(v16 - 8);
  v52 = v16;
  v53 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v44 - v18;
  v19 = v1[12];
  v20 = v1[14];
  v21 = v1[15];
  v59[13] = v1[13];
  v60 = v20;
  v61 = v21;
  v22 = v1[8];
  v23 = v1[10];
  v24 = v1[11];
  v59[9] = v1[9];
  v59[10] = v23;
  v59[11] = v24;
  v59[12] = v19;
  v25 = v1[5];
  v59[4] = v1[4];
  v59[5] = v25;
  v26 = v1[7];
  v59[6] = v1[6];
  v59[7] = v26;
  v59[8] = v22;
  v27 = v1[1];
  v59[0] = *v1;
  v59[1] = v27;
  v28 = v1[3];
  v59[2] = v1[2];
  v59[3] = v28;
  v29 = static HorizontalAlignment.center.getter();
  v30 = v60;
  *v9 = v29;
  *(v9 + 1) = v30;
  v9[16] = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAPyAK20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAQ011ParticipantD0V0dV0C_AQ0q12PresentationX0CSgAW0sT0V07PreviewZ0OtFQOyAkQE28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyD0V_SbtFQOyAK017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAkAE18confirmationDialog_A13_15titleVisibility7actionsQrqd___A19_AA10VisibilityOqd_0_yXEtSyRd__AaJRd_0_r0_lFQOyAkAEA20__A13_A21_A22_Qrqd___A19_A24_qd_0_yXEtSyRd__AaJRd_0_r0_lFQOyAPyAPy08ContactsB006AvatarD0VAA012_AspectRatioG0VGAA010_FlexFrameG0VG_SSAA6ButtonVyAA4TextVGQo__SSA38_Qo__Qo__Qo__Qo_AA08_PaddingG0VGA32_G_Qo__APyAA0F0VyAIyAPyAPyAPyAPyA37_AA30_EnvironmentKeyWritingModifierVySiSgGGA52_yAA4FontVSgGGA52_yAA5ColorVSgGGAA31AccessibilityAttachmentModifierVG_AkQE20shouldHideBlockLabelyQrSbFQOyAW12BlockedLabelV_Qo_APyAkAE14contentMargins__A12_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0O15MarginPlacementVtFQOyAW013AddToContactsT0V_Qo_A67_GSgtGGA45_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAPyAK20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAQ011ParticipantD0V0dV0C_AQ0q12PresentationX0CSgAW0sT0V07PreviewZ0OtFQOyAkQE28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyD0V_SbtFQOyAK017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAkAE18confirmationDialog_A13_15titleVisibility7actionsQrqd___A19_AA10VisibilityOqd_0_yXEtSyRd__AaJRd_0_r0_lFQOyAkAEA20__A13_A21_A22_Qrqd___A19_A24_qd_0_yXEtSyRd__AaJRd_0_r0_lFQOyAPyAPy08ContactsB006AvatarD0VAA012_AspectRatioG0VGAA010_FlexFrameG0VG_SSAA6ButtonVyAA4TextVGQo__SSA38_Qo__Qo__Qo__Qo_AA08_PaddingG0VGA32_G_Qo__APyAA0F0VyAIyAPyAPyAPyAPyA37_AA30_EnvironmentKeyWritingModifierVySiSgGGA52_yAA4FontVSgGGA52_yAA5ColorVSgGGAA31AccessibilityAttachmentModifierVG_AkQE20shouldHideBlockLabelyQrSbFQOyAW12BlockedLabelV_Qo_APyAkAE14contentMargins__A12_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0O15MarginPlacementVtFQOyAW013AddToContactsT0V_Qo_A67_GSgtGGA45_GtGGMR);
  closure #1 in ParticipantView.body.getter(v59, &v9[*(v31 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v32 = lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>)>> and conformance VStack<A>( &lazy protocol witness table cache variable for type VStack<TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>)>> and conformance VStack<A>,  &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyALyAG20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAM011ParticipantE0V0eS0C_AM0n12PresentationU0CSgAS0pQ0V07PreviewW0OtFQOyAgME28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyE0V_SbtFQOyAG017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAgAE18confirmationDialog_A9_15titleVisibility7actionsQrqd___A15_AA10VisibilityOqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAgAEA16__A9_A17_A18_Qrqd___A15_A20_qd_0_yXEtSyRd__AaFRd_0_r0_lFQOyALyALy08ContactsB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA34_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA28_G_Qo__ALyACyAEyALyALyALyALyA33_AA30_EnvironmentKeyWritingModifierVySiSgGGA46_yAA4FontVSgGGA46_yAA5ColorVSgGGAA31AccessibilityAttachmentModifierVG_AgME20shouldHideBlockLabelyQrSbFQOyAS12BlockedLabelV_Qo_ALyAgAE14contentMargins__A8_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0L15MarginPlacementVtFQOyAS013AddToContactsQ0V_Qo_A61_GSgtGGA41_GtGGMd,  &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyALyAG20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAM011ParticipantE0V0eS0C_AM0n12PresentationU0CSgAS0pQ0V07PreviewW0OtFQOyAgME28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyE0V_SbtFQOyAG017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAgAE18confirmationDialog_A9_15titleVisibility7actionsQrqd___A15_AA10VisibilityOqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAgAEA16__A9_A17_A18_Qrqd___A15_A20_qd_0_yXEtSyRd__AaFRd_0_r0_lFQOyALyALy08ContactsB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA34_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA28_G_Qo__ALyACyAEyALyALyALyALyA33_AA30_EnvironmentKeyWritingModifierVySiSgGGA46_yAA4FontVSgGGA46_yAA5ColorVSgGGAA31AccessibilityAttachmentModifierVG_AgME20shouldHideBlockLabelyQrSbFQOyAS12BlockedLabelV_Qo_ALyAgAE14contentMargins__A8_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0L15MarginPlacementVtFQOyAS013AddToContactsQ0V_Qo_A61_GSgtGGA41_GtGGMR,  MEMORY[0x1E6981870]);
  View.accessibilityElement(children:)();
  (*(v50 + 8))(v6, v51);
  outlined destroy of VStack<TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>)>>(v9, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyALyAG20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAM011ParticipantE0V0eS0C_AM0n12PresentationU0CSgAS0pQ0V07PreviewW0OtFQOyAgME28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyE0V_SbtFQOyAG017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAgAE18confirmationDialog_A9_15titleVisibility7actionsQrqd___A15_AA10VisibilityOqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAgAEA16__A9_A17_A18_Qrqd___A15_A20_qd_0_yXEtSyRd__AaFRd_0_r0_lFQOyALyALy08ContactsB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA34_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA28_G_Qo__ALyACyAEyALyALyALyALyA33_AA30_EnvironmentKeyWritingModifierVySiSgGGA46_yAA4FontVSgGGA46_yAA5ColorVSgGGAA31AccessibilityAttachmentModifierVG_AgME20shouldHideBlockLabelyQrSbFQOyAS12BlockedLabelV_Qo_ALyAgAE14contentMargins__A8_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0L15MarginPlacementVtFQOyAS013AddToContactsQ0V_Qo_A61_GSgtGGA41_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyALyAG20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAM011ParticipantE0V0eS0C_AM0n12PresentationU0CSgAS0pQ0V07PreviewW0OtFQOyAgME28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyE0V_SbtFQOyAG017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAgAE18confirmationDialog_A9_15titleVisibility7actionsQrqd___A15_AA10VisibilityOqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAgAEA16__A9_A17_A18_Qrqd___A15_A20_qd_0_yXEtSyRd__AaFRd_0_r0_lFQOyALyALy08ContactsB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA34_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA28_G_Qo__ALyACyAEyALyALyALyALyA33_AA30_EnvironmentKeyWritingModifierVySiSgGGA46_yAA4FontVSgGGA46_yAA5ColorVSgGGAA31AccessibilityAttachmentModifierVG_AgME20shouldHideBlockLabelyQrSbFQOyAS12BlockedLabelV_Qo_ALyAgAE14contentMargins__A8_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0L15MarginPlacementVtFQOyAS013AddToContactsQ0V_Qo_A61_GSgtGGA41_GtGGMR);
  v33 = v47;
  static AccessibilityTraits.isButton.getter();
  *&v58 = v7;
  *(&v58 + 1) = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v48;
  MEMORY[0x193AEA290](v33, v48, OpaqueTypeConformance2);
  (*(v54 + 8))(v33, v55);
  (*(v49 + 8))(v13, v35);
  v36 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  v38 = v45;
  v37 = v46;
  View.contactCellHoverEffect()(v46, v36);
  outlined destroy of VStack<TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>)>>(v15, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyACyAE20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAQ011ParticipantE0V0eY0C_AQ0T17PresentationProxyCSgAW0vW0V13PreviewTargetOtFQOyAeQE28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyE0V_SbtFQOyAE017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAeAE18confirmationDialog_A13_15titleVisibility7actionsQrqd___A19_AA10VisibilityOqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAEA20__A13_A21_A22_Qrqd___A19_A24_qd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACy08ContactsB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA38_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA32_G_Qo__ACyAKyAMyACyACyACyACyA37_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA4FontVSgGGA50_yAA5ColorVSgGGAA0I18AttachmentModifierVG_AeQE20shouldHideBlockLabelyQrSbFQOyAW12BlockedLabelV_Qo_ACyAeAE14contentMargins__A12_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAW013AddToContactsW0V_Qo_A65_GSgtGGA45_GtGG_Qo_A65_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyACyAE20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAQ011ParticipantE0V0eY0C_AQ0T17PresentationProxyCSgAW0vW0V13PreviewTargetOtFQOyAeQE28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyE0V_SbtFQOyAE017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAeAE18confirmationDialog_A13_15titleVisibility7actionsQrqd___A19_AA10VisibilityOqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAEA20__A13_A21_A22_Qrqd___A19_A24_qd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACy08ContactsB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA38_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA32_G_Qo__ACyAKyAMyACyACyACyACyA37_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA4FontVSgGGA50_yAA5ColorVSgGGAA0I18AttachmentModifierVG_AeQE20shouldHideBlockLabelyQrSbFQOyAW12BlockedLabelV_Qo_ACyAeAE14contentMargins__A12_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAW013AddToContactsW0V_Qo_A65_GSgtGGA45_GtGG_Qo_A65_GMR);
  v58 = v59[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMR);
  State.wrappedValue.getter();
  v39 = v57;
  v40 = *(&v61 + 1);
  *&v58 = v37;
  *(&v58 + 1) = v36;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v52;
  View.participantContextMenu(viewModel:presentationProxy:previewTarget:)(v39, v40, 1, v52, v41);

  return (*(v53 + 8))(v38, v42);
}

double closure #1 in ParticipantView.body.getter@<D0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v109 = a2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAA4FontVSgGGAKyAA5ColorVSgGGAA023AccessibilityAttachmentL0VG_AA0G0P20CommunicationDetailsE20shouldHideBlockLabelyQrSbFQOyA2_011ParticipantG0V07BlockedV0V_Qo_ACyA1_AAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyA5_17AddToContactsMenuV_Qo_AZGSgtGGAA14_PaddingLayoutVGMd, "PZ");
  MEMORY[0x1EEE9AC00](v106);
  v108 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v107 = (&v88 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOy20CommunicationDetails011ParticipantE0V17AddToContactsMenuV_Qo_AA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOy20CommunicationDetails011ParticipantE0V17AddToContactsMenuV_Qo_AA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v88 - v7;
  *&v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAcAE18confirmationDialog_AG15titleVisibility7actionsQrqd___AmA0Q0Oqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEAN_AgoPQrqd___AmRqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyATy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA010_FlexFrameY0VG_SSAA6ButtonVyAA4TextVGQo__SSA6_Qo__Qo_Md, &_s7SwiftUI4ViewP017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAcAE18confirmationDialog_AG15titleVisibility7actionsQrqd___AmA0Q0Oqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEAN_AgoPQrqd___AmRqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyATy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA010_FlexFrameY0VG_SSAA6ButtonVyAA4TextVGQo__SSA6_Qo__Qo_MR);
  v93 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v10 = &v88 - v9;
  *&v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP20CommunicationDetailsE28addContactButtonBadgeOverlay0f10ToContactsH007isAddedkL0QrAA03AnyC0V_SbtFQOyAC017DigitalSeparationB0E15showSafetyCheck3for0M9PresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAcAE18confirmationDialog_AM15titleVisibility7actionsQrqd___AsA10VisibilityOqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEAT_AmuVQrqd___AsXqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyAZy0lB006AvatarC0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA0H0VyAA4TextVGQo__SSA12_Qo__Qo__Qo_Md, &_s7SwiftUI4ViewP20CommunicationDetailsE28addContactButtonBadgeOverlay0f10ToContactsH007isAddedkL0QrAA03AnyC0V_SbtFQOyAC017DigitalSeparationB0E15showSafetyCheck3for0M9PresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAcAE18confirmationDialog_AM15titleVisibility7actionsQrqd___AsA10VisibilityOqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEAT_AmuVQrqd___AsXqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyAZy0lB006AvatarC0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA0H0VyAA4TextVGQo__SSA12_Qo__Qo__Qo_MR);
  *&v96 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  *&v94 = &v88 - v11;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAF011ParticipantE0V0eL0C_AF0g12PresentationN0CSgAL0iJ0V07PreviewP0OtFQOyAeFE28addContactButtonBadgeOverlay0t10ToContactsV007isAddedyZ0QrAA03AnyE0V_SbtFQOyAE017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAeAE18confirmationDialog_A2_15titleVisibility7actionsQrqd___A8_AA10VisibilityOqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAEA9__A2_A10_A11_Qrqd___A8_A13_qd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACy0zB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA0V0VyAA4TextVGQo__SSA27_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAF011ParticipantE0V0eL0C_AF0g12PresentationN0CSgAL0iJ0V07PreviewP0OtFQOyAeFE28addContactButtonBadgeOverlay0t10ToContactsV007isAddedyZ0QrAA03AnyE0V_SbtFQOyAE017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAeAE18confirmationDialog_A2_15titleVisibility7actionsQrqd___A8_AA10VisibilityOqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAEA9__A2_A10_A11_Qrqd___A8_A13_qd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACy0zB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA0V0VyAA4TextVGQo__SSA27_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGMR);
  MEMORY[0x1EEE9AC00](v95);
  v99 = &v88 - v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewP20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAF011ParticipantE0V0eL0C_AF0g12PresentationN0CSgAL0iJ0V07PreviewP0OtFQOyAeFE28addContactButtonBadgeOverlay0t10ToContactsV007isAddedyZ0QrAA03AnyE0V_SbtFQOyAE017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAeAE18confirmationDialog_A2_15titleVisibility7actionsQrqd___A8_AA10VisibilityOqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAEA9__A2_A10_A11_Qrqd___A8_A13_qd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACy0zB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA0V0VyAA4TextVGQo__SSA27_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA21_GMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAF011ParticipantE0V0eL0C_AF0g12PresentationN0CSgAL0iJ0V07PreviewP0OtFQOyAeFE28addContactButtonBadgeOverlay0t10ToContactsV007isAddedyZ0QrAA03AnyE0V_SbtFQOyAE017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAeAE18confirmationDialog_A2_15titleVisibility7actionsQrqd___A8_AA10VisibilityOqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAEA9__A2_A10_A11_Qrqd___A8_A13_qd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACy0zB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA0V0VyAA4TextVGQo__SSA27_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA21_GMR);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v88 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAHyAC20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAI011ParticipantC0V0cQ0C_AI0l12PresentationS0CSgAO0nO0V07PreviewU0OtFQOyAcIE28addContactButtonBadgeOverlay0Y16ToContactsButton17isAddedToContactsQrAA03AnyC0V_SbtFQOyAC017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAcAE18confirmationDialog_A5_15titleVisibility7actionsQrqd___A11_AA10VisibilityOqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEA12__A5_A13_A14_Qrqd___A11_A16_qd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAHyAHy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA30_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA24_G_Qo_Md, &_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAHyAC20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAI011ParticipantC0V0cQ0C_AI0l12PresentationS0CSgAO0nO0V07PreviewU0OtFQOyAcIE28addContactButtonBadgeOverlay0Y16ToContactsButton17isAddedToContactsQrAA03AnyC0V_SbtFQOyAC017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAcAE18confirmationDialog_A5_15titleVisibility7actionsQrqd___A11_AA10VisibilityOqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEA12__A5_A13_A14_Qrqd___A11_A16_qd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAHyAHy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA30_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA24_G_Qo_MR);
  v104 = *(v14 - 8);
  v105 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v103 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v110 = &v88 - v17;
  type metadata accessor for MainActor();
  v102 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = a1[13];
  v128[12] = a1[12];
  v128[13] = v18;
  v19 = a1[15];
  v128[14] = a1[14];
  v128[15] = v19;
  v20 = a1[9];
  v128[8] = a1[8];
  v128[9] = v20;
  v21 = a1[11];
  v128[10] = a1[10];
  v128[11] = v21;
  v22 = a1[5];
  v128[4] = a1[4];
  v128[5] = v22;
  v23 = a1[7];
  v128[6] = a1[6];
  v128[7] = v23;
  v24 = a1[1];
  v128[0] = *a1;
  v128[1] = v24;
  v25 = a1[3];
  v128[2] = a1[2];
  v128[3] = v25;
  ParticipantView.avatarView.getter(v10);
  v26 = a1[13];
  v124 = a1[12];
  v125 = v26;
  v27 = a1[15];
  v126 = a1[14];
  v127 = v27;
  v28 = a1[9];
  v120 = a1[8];
  v121 = v28;
  v29 = a1[11];
  v122 = a1[10];
  v123 = v29;
  v30 = a1[5];
  v116 = a1[4];
  v117 = v30;
  v31 = a1[7];
  v118 = a1[6];
  v119 = v31;
  v32 = a1[1];
  v112 = *a1;
  v113 = v32;
  v33 = a1[3];
  v114 = a1[2];
  v115 = v33;
  ParticipantView.addToContactsButton.getter(v8);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  v91 = AnyView.init<A>(_:)();
  v129 = *a1;
  v112 = *a1;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMR);
  State.wrappedValue.getter();
  v90 = v111[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 74];

  v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEAD_AefGQrqd___AjLqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyANy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA010_FlexFrameR0VG_SSAA6ButtonVyAA4TextVGQo__SSA0_Qo_Md, &_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEAD_AefGQrqd___AjLqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyANy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA010_FlexFrameR0VG_SSAA6ButtonVyAA4TextVGQo__SSA0_Qo_MR);
  v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyANy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA010_FlexFrameR0VG_SSAA6ButtonVyAA4TextVGQo_Md, &_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyANy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA010_FlexFrameR0VG_SSAA6ButtonVyAA4TextVGQo_MR);
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy08ContactsB010AvatarViewVAA18_AspectRatioLayoutVGAA010_FlexFrameJ0VGMd, &_s7SwiftUI15ModifiedContentVyACy08ContactsB010AvatarViewVAA18_AspectRatioLayoutVGAA010_FlexFrameJ0VGMR);
  v36 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AvatarView, _AspectRatioLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AvatarView, _AspectRatioLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy08ContactsB010AvatarViewVAA18_AspectRatioLayoutVGAA010_FlexFrameJ0VGMd, &_s7SwiftUI15ModifiedContentVyACy08ContactsB010AvatarViewVAA18_AspectRatioLayoutVGAA010_FlexFrameJ0VGMR, lazy protocol witness table accessor for type ModifiedContent<AvatarView, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>);
  v39 = lazy protocol witness table accessor for type String and conformance String(v36, v37, v38);
  v40 = lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x1E697D680]);
  v41 = MEMORY[0x1E69E6158];
  *&v112 = v35;
  *(&v112 + 1) = MEMORY[0x1E69E6158];
  *&v113 = v34;
  *(&v113 + 1) = v36;
  *&v114 = v39;
  *(&v114 + 1) = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v112 = v88;
  *(&v112 + 1) = v41;
  *&v113 = v34;
  *(&v113 + 1) = OpaqueTypeConformance2;
  *&v114 = v39;
  *(&v114 + 1) = v40;
  v43 = swift_getOpaqueTypeConformance2();
  *&v112 = v89;
  *(&v112 + 1) = v43;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v94;
  v46 = v97;
  View.addContactButtonBadgeOverlay(addToContactsButton:isAddedToContacts:)(v91, v90, v97);

  (*(v93 + 8))(v10, v46);
  v128[0] = v129;
  State.wrappedValue.getter();
  v47 = v112;
  v48 = *(a1 + 31);
  *&v128[0] = v46;
  *(&v128[0] + 1) = v44;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v99;
  v51 = v98;
  View.participantContextMenu(viewModel:presentationProxy:previewTarget:)(v47, v48, 0, v98, v49);

  (*(v96 + 8))(v45, v51);
  v52 = *(a1 + 29);
  v53 = *(a1 + 88);
  v94 = *(a1 + 104);
  v98 = *(a1 + 120);
  v54 = *(a1 + 136);
  v96 = v53;
  v97 = v54;
  v55 = static Edge.Set.all.getter();
  v56 = v50 + *(v95 + 36);
  *v56 = v55;
  *(v56 + 24) = v94;
  *(v56 + 8) = v96;
  *(v56 + 40) = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v57 = v100;
  outlined init with take of ModifiedContent<<<opaque return type of View.participantContextMenu(viewModel:presentationProxy:previewTarget:)>>.0, _PaddingLayout>(v50, v100, &_s7SwiftUI15ModifiedContentVyAA4ViewP20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAF011ParticipantE0V0eL0C_AF0g12PresentationN0CSgAL0iJ0V07PreviewP0OtFQOyAeFE28addContactButtonBadgeOverlay0t10ToContactsV007isAddedyZ0QrAA03AnyE0V_SbtFQOyAE017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAeAE18confirmationDialog_A2_15titleVisibility7actionsQrqd___A8_AA10VisibilityOqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAEA9__A2_A10_A11_Qrqd___A8_A13_qd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACy0zB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA0V0VyAA4TextVGQo__SSA27_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAF011ParticipantE0V0eL0C_AF0g12PresentationN0CSgAL0iJ0V07PreviewP0OtFQOyAeFE28addContactButtonBadgeOverlay0t10ToContactsV007isAddedyZ0QrAA03AnyE0V_SbtFQOyAE017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAeAE18confirmationDialog_A2_15titleVisibility7actionsQrqd___A8_AA10VisibilityOqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAEA9__A2_A10_A11_Qrqd___A8_A13_qd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACy0zB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA0V0VyAA4TextVGQo__SSA27_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGMR);
  v58 = (v57 + *(v101 + 36));
  v59 = v117;
  v58[4] = v116;
  v58[5] = v59;
  v58[6] = v118;
  v60 = v113;
  *v58 = v112;
  v58[1] = v60;
  v61 = v115;
  v58[2] = v114;
  v58[3] = v61;
  v62 = swift_allocObject();
  v63 = a1[13];
  v62[13] = a1[12];
  v62[14] = v63;
  v64 = a1[15];
  v62[15] = a1[14];
  v62[16] = v64;
  v65 = a1[9];
  v62[9] = a1[8];
  v62[10] = v65;
  v66 = a1[11];
  v62[11] = a1[10];
  v62[12] = v66;
  v67 = a1[5];
  v62[5] = a1[4];
  v62[6] = v67;
  v68 = a1[7];
  v62[7] = a1[6];
  v62[8] = v68;
  v69 = a1[1];
  v62[1] = *a1;
  v62[2] = v69;
  v70 = a1[3];
  v62[3] = a1[2];
  v62[4] = v70;
  outlined init with copy of ParticipantView(a1, v128);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AvatarView, _AspectRatioLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.participantContextMenu(viewModel:presentationProxy:previewTarget:)>>.0, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAF011ParticipantE0V0eL0C_AF0g12PresentationN0CSgAL0iJ0V07PreviewP0OtFQOyAeFE28addContactButtonBadgeOverlay0t10ToContactsV007isAddedyZ0QrAA03AnyE0V_SbtFQOyAE017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAeAE18confirmationDialog_A2_15titleVisibility7actionsQrqd___A8_AA10VisibilityOqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAEA9__A2_A10_A11_Qrqd___A8_A13_qd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACy0zB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA0V0VyAA4TextVGQo__SSA27_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA21_GMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAF011ParticipantE0V0eL0C_AF0g12PresentationN0CSgAL0iJ0V07PreviewP0OtFQOyAeFE28addContactButtonBadgeOverlay0t10ToContactsV007isAddedyZ0QrAA03AnyE0V_SbtFQOyAE017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAeAE18confirmationDialog_A2_15titleVisibility7actionsQrqd___A8_AA10VisibilityOqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAEA9__A2_A10_A11_Qrqd___A8_A13_qd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACy0zB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA0V0VyAA4TextVGQo__SSA27_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA21_GMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.participantContextMenu(viewModel:presentationProxy:previewTarget:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  v71 = v110;
  View.onTapGesture(count:perform:)();

  outlined destroy of VStack<TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>)>>(v57, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAF011ParticipantE0V0eL0C_AF0g12PresentationN0CSgAL0iJ0V07PreviewP0OtFQOyAeFE28addContactButtonBadgeOverlay0t10ToContactsV007isAddedyZ0QrAA03AnyE0V_SbtFQOyAE017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAeAE18confirmationDialog_A2_15titleVisibility7actionsQrqd___A8_AA10VisibilityOqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAEA9__A2_A10_A11_Qrqd___A8_A13_qd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACy0zB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA0V0VyAA4TextVGQo__SSA27_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA21_GMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAF011ParticipantE0V0eL0C_AF0g12PresentationN0CSgAL0iJ0V07PreviewP0OtFQOyAeFE28addContactButtonBadgeOverlay0t10ToContactsV007isAddedyZ0QrAA03AnyE0V_SbtFQOyAE017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAeAE18confirmationDialog_A2_15titleVisibility7actionsQrqd___A8_AA10VisibilityOqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAEA9__A2_A10_A11_Qrqd___A8_A13_qd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACy0zB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA0V0VyAA4TextVGQo__SSA27_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA21_GMR);
  v72 = static HorizontalAlignment.center.getter();
  v73 = v107;
  *v107 = v72;
  *(v73 + 8) = v52;
  *(v73 + 16) = 0;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAA4FontVSgGGAOyAA5ColorVSgGGAA023AccessibilityAttachmentO0VG_AA0D0P20CommunicationDetailsE20shouldHideBlockLabelyQrSbFQOyA6_011ParticipantD0V07BlockedY0V_Qo_AKyA5_AAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0J15MarginPlacementVtFQOyA9_17AddToContactsMenuV_Qo_A2_GSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAA4FontVSgGGAOyAA5ColorVSgGGAA023AccessibilityAttachmentO0VG_AA0D0P20CommunicationDetailsE20shouldHideBlockLabelyQrSbFQOyA6_011ParticipantD0V07BlockedY0V_Qo_AKyA5_AAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0J15MarginPlacementVtFQOyA9_17AddToContactsMenuV_Qo_A2_GSgtGGMR);
  closure #1 in ParticipantView.labelView.getter(a1, v73 + *(v74 + 44));
  v75 = static Edge.Set.all.getter();
  v76 = v73 + *(v106 + 36);
  *v76 = v75;
  v77 = v98;
  *(v76 + 24) = v97;
  *(v76 + 8) = v77;
  *(v76 + 40) = 0;
  v78 = v103;
  v79 = v104;
  v80 = *(v104 + 16);
  v81 = v71;
  v82 = v105;
  v80(v103, v81, v105);
  v83 = v108;
  outlined init with copy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>(v73, v108, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAA4FontVSgGGAKyAA5ColorVSgGGAA023AccessibilityAttachmentL0VG_AA0G0P20CommunicationDetailsE20shouldHideBlockLabelyQrSbFQOyA2_011ParticipantG0V07BlockedV0V_Qo_ACyA1_AAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyA5_17AddToContactsMenuV_Qo_AZGSgtGGAA14_PaddingLayoutVGMd, "PZ");
  v84 = v109;
  v80(v109, v78, v82);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAHyAC20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAI011ParticipantC0V0cQ0C_AI0l12PresentationS0CSgAO0nO0V07PreviewU0OtFQOyAcIE28addContactButtonBadgeOverlay0Y16ToContactsButton17isAddedToContactsQrAA03AnyC0V_SbtFQOyAC017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAcAE18confirmationDialog_A5_15titleVisibility7actionsQrqd___A11_AA10VisibilityOqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEA12__A5_A13_A14_Qrqd___A11_A16_qd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAHyAHy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA30_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA24_G_Qo__AHyAA6VStackVyAA05TupleC0VyAHyAHyAHyAHyA29_AA30_EnvironmentKeyWritingModifierVySiSgGGA46_yAA4FontVSgGGA46_yAA5ColorVSgGGAA31AccessibilityAttachmentModifierVG_AcIE20shouldHideBlockLabelyQrSbFQOyAO12BlockedLabelV_Qo_AHyAcAE14contentMargins__A4_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0J15MarginPlacementVtFQOyAO013AddToContactsO0V_Qo_A61_GSgtGGA37_GtMd, &_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAHyAC20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAI011ParticipantC0V0cQ0C_AI0l12PresentationS0CSgAO0nO0V07PreviewU0OtFQOyAcIE28addContactButtonBadgeOverlay0Y16ToContactsButton17isAddedToContactsQrAA03AnyC0V_SbtFQOyAC017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAcAE18confirmationDialog_A5_15titleVisibility7actionsQrqd___A11_AA10VisibilityOqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEA12__A5_A13_A14_Qrqd___A11_A16_qd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAHyAHy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA30_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA24_G_Qo__AHyAA6VStackVyAA05TupleC0VyAHyAHyAHyAHyA29_AA30_EnvironmentKeyWritingModifierVySiSgGGA46_yAA4FontVSgGGA46_yAA5ColorVSgGGAA31AccessibilityAttachmentModifierVG_AcIE20shouldHideBlockLabelyQrSbFQOyAO12BlockedLabelV_Qo_AHyAcAE14contentMargins__A4_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0J15MarginPlacementVtFQOyAO013AddToContactsO0V_Qo_A61_GSgtGGA37_GtMR);
  outlined init with copy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>(v83, &v84[*(v85 + 48)], &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAA4FontVSgGGAKyAA5ColorVSgGGAA023AccessibilityAttachmentL0VG_AA0G0P20CommunicationDetailsE20shouldHideBlockLabelyQrSbFQOyA2_011ParticipantG0V07BlockedV0V_Qo_ACyA1_AAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyA5_17AddToContactsMenuV_Qo_AZGSgtGGAA14_PaddingLayoutVGMd, "PZ");
  outlined destroy of VStack<TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>)>>(v73, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAA4FontVSgGGAKyAA5ColorVSgGGAA023AccessibilityAttachmentL0VG_AA0G0P20CommunicationDetailsE20shouldHideBlockLabelyQrSbFQOyA2_011ParticipantG0V07BlockedV0V_Qo_ACyA1_AAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyA5_17AddToContactsMenuV_Qo_AZGSgtGGAA14_PaddingLayoutVGMd, "PZ");
  v86 = *(v79 + 8);
  v86(v110, v82);
  outlined destroy of VStack<TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>)>>(v83, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAA4FontVSgGGAKyAA5ColorVSgGGAA023AccessibilityAttachmentL0VG_AA0G0P20CommunicationDetailsE20shouldHideBlockLabelyQrSbFQOyA2_011ParticipantG0V07BlockedV0V_Qo_ACyA1_AAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyA5_17AddToContactsMenuV_Qo_AZGSgtGGAA14_PaddingLayoutVGMd, "PZ");
  v86(v78, v82);

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyACyAE20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAQ011ParticipantE0V0eY0C_AQ0T17PresentationProxyCSgAW0vW0V13PreviewTargetOtFQOyAeQE28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyE0V_SbtFQOyAE017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAeAE18confirmationDialog_A13_15titleVisibility7actionsQrqd___A19_AA10VisibilityOqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAEA20__A13_A21_A22_Qrqd___A19_A24_qd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACy08ContactsB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA38_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA32_G_Qo__ACyAKyAMyACyACyACyACyA37_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA4FontVSgGGA50_yAA5ColorVSgGGAA0I18AttachmentModifierVG_AeQE20shouldHideBlockLabelyQrSbFQOyAW12BlockedLabelV_Qo_ACyAeAE14contentMargins__A12_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAW013AddToContactsW0V_Qo_A65_GSgtGGA45_GtGG_Qo_A65_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyACyAE20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAQ011ParticipantE0V0eY0C_AQ0T17PresentationProxyCSgAW0vW0V13PreviewTargetOtFQOyAeQE28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyE0V_SbtFQOyAE017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAeAE18confirmationDialog_A13_15titleVisibility7actionsQrqd___A19_AA10VisibilityOqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAEA20__A13_A21_A22_Qrqd___A19_A24_qd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACy08ContactsB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA38_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA32_G_Qo__ACyAKyAMyACyACyACyACyA37_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA4FontVSgGGA50_yAA5ColorVSgGGAA0I18AttachmentModifierVG_AeQE20shouldHideBlockLabelyQrSbFQOyAW12BlockedLabelV_Qo_ACyAeAE14contentMargins__A12_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAW013AddToContactsW0V_Qo_A65_GSgtGGA45_GtGG_Qo_A65_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyALyAG20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAM011ParticipantE0V0eS0C_AM0n12PresentationU0CSgAS0pQ0V07PreviewW0OtFQOyAgME28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyE0V_SbtFQOyAG017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAgAE18confirmationDialog_A9_15titleVisibility7actionsQrqd___A15_AA10VisibilityOqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAgAEA16__A9_A17_A18_Qrqd___A15_A20_qd_0_yXEtSyRd__AaFRd_0_r0_lFQOyALyALy08ContactsB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA34_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA28_G_Qo__ALyACyAEyALyALyALyALyA33_AA30_EnvironmentKeyWritingModifierVySiSgGGA46_yAA4FontVSgGGA46_yAA5ColorVSgGGAA31AccessibilityAttachmentModifierVG_AgME20shouldHideBlockLabelyQrSbFQOyAS12BlockedLabelV_Qo_ALyAgAE14contentMargins__A8_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0L15MarginPlacementVtFQOyAS013AddToContactsQ0V_Qo_A61_GSgtGGA41_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyALyAG20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAM011ParticipantE0V0eS0C_AM0n12PresentationU0CSgAS0pQ0V07PreviewW0OtFQOyAgME28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyE0V_SbtFQOyAG017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAgAE18confirmationDialog_A9_15titleVisibility7actionsQrqd___A15_AA10VisibilityOqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAgAEA16__A9_A17_A18_Qrqd___A15_A20_qd_0_yXEtSyRd__AaFRd_0_r0_lFQOyALyALy08ContactsB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA34_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA28_G_Qo__ALyACyAEyALyALyALyALyA33_AA30_EnvironmentKeyWritingModifierVySiSgGGA46_yAA4FontVSgGGA46_yAA5ColorVSgGGAA31AccessibilityAttachmentModifierVG_AgME20shouldHideBlockLabelyQrSbFQOyAS12BlockedLabelV_Qo_ALyAgAE14contentMargins__A8_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0L15MarginPlacementVtFQOyAS013AddToContactsQ0V_Qo_A61_GSgtGGA41_GtGGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>)>> and conformance VStack<A>( &lazy protocol witness table cache variable for type VStack<TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>)>> and conformance VStack<A>,  &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyALyAG20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAM011ParticipantE0V0eS0C_AM0n12PresentationU0CSgAS0pQ0V07PreviewW0OtFQOyAgME28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyE0V_SbtFQOyAG017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAgAE18confirmationDialog_A9_15titleVisibility7actionsQrqd___A15_AA10VisibilityOqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAgAEA16__A9_A17_A18_Qrqd___A15_A20_qd_0_yXEtSyRd__AaFRd_0_r0_lFQOyALyALy08ContactsB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA34_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA28_G_Qo__ALyACyAEyALyALyALyALyA33_AA30_EnvironmentKeyWritingModifierVySiSgGGA46_yAA4FontVSgGGA46_yAA5ColorVSgGGAA31AccessibilityAttachmentModifierVG_AgME20shouldHideBlockLabelyQrSbFQOyAS12BlockedLabelV_Qo_ALyAgAE14contentMargins__A8_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0L15MarginPlacementVtFQOyAS013AddToContactsQ0V_Qo_A61_GSgtGGA41_GtGGMd,  &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyALyAG20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAM011ParticipantE0V0eS0C_AM0n12PresentationU0CSgAS0pQ0V07PreviewW0OtFQOyAgME28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyE0V_SbtFQOyAG017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAgAE18confirmationDialog_A9_15titleVisibility7actionsQrqd___A15_AA10VisibilityOqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAgAEA16__A9_A17_A18_Qrqd___A15_A20_qd_0_yXEtSyRd__AaFRd_0_r0_lFQOyALyALy08ContactsB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA34_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA28_G_Qo__ALyACyAEyALyALyALyALyA33_AA30_EnvironmentKeyWritingModifierVySiSgGGA46_yAA4FontVSgGGA46_yAA5ColorVSgGGAA31AccessibilityAttachmentModifierVG_AgME20shouldHideBlockLabelyQrSbFQOyAS12BlockedLabelV_Qo_ALyAgAE14contentMargins__A8_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0L15MarginPlacementVtFQOyAS013AddToContactsQ0V_Qo_A61_GSgtGGA41_GtGGMR,  MEMORY[0x1E6981870]);
    swift_getOpaqueTypeConformance2();
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t ParticipantView.avatarView.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy08ContactsB010AvatarViewVAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVy08ContactsB010AvatarViewVAA18_AspectRatioLayoutVGMR);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v65 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy08ContactsB010AvatarViewVAA18_AspectRatioLayoutVGAA010_FlexFrameJ0VGMd, &_s7SwiftUI15ModifiedContentVyACy08ContactsB010AvatarViewVAA18_AspectRatioLayoutVGAA010_FlexFrameJ0VGMR);
  MEMORY[0x1EEE9AC00](v81);
  OpaqueTypeConformance2 = &v65 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyANy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA010_FlexFrameR0VG_SSAA6ButtonVyAA4TextVGQo_Md, &_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyANy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA010_FlexFrameR0VG_SSAA6ButtonVyAA4TextVGQo_MR);
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v82 = &v65 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEAD_AefGQrqd___AjLqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyANy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA010_FlexFrameR0VG_SSAA6ButtonVyAA4TextVGQo__SSA0_Qo_Md, &_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEAD_AefGQrqd___AjLqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyANy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA010_FlexFrameR0VG_SSAA6ButtonVyAA4TextVGQo__SSA0_Qo_MR);
  v74 = *(v8 - 8);
  v75 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v65 - v9;
  v10 = v1[13];
  v112 = v1[12];
  v113 = v10;
  v11 = v1[15];
  v114 = v1[14];
  v115 = v11;
  v12 = v1[9];
  v108 = v1[8];
  v109 = v12;
  v13 = v1[11];
  v110 = v1[10];
  v111 = v13;
  v14 = v1[5];
  v104 = v1[4];
  v105 = v14;
  v15 = v1[7];
  v106 = v1[6];
  v107 = v15;
  v16 = v1[1];
  v100 = *v1;
  v101 = v16;
  v17 = v1[3];
  v102 = v1[2];
  v103 = v17;
  v18 = objc_opt_self();
  v116 = *v1;
  v93 = *v1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMR);
  State.wrappedValue.getter();
  v20 = v83;
  v21 = *(v83 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);

  v22 = [v18 stringFromContact:v21 style:0];
  if (v22)
  {
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v93 = *v2;
    State.wrappedValue.getter();
    v22 = v83;
    v23 = *(v83 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 40);
    v25 = *(v83 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48);
  }

  v93 = *v2;
  State.wrappedValue.getter();
  v26 = v83;
  v27 = *(v83 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);

  AvatarView.init(contact:)();
  v28 = &v5[*(v3 + 36)];
  *v28 = 0x3FF0000000000000;
  *(v28 + 4) = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v29 = OpaqueTypeConformance2;
  outlined init with take of ModifiedContent<AvatarView, _AspectRatioLayout>(v5, OpaqueTypeConformance2);
  v30 = (v29 + *(v81 + 36));
  v31 = v98;
  v30[4] = v97;
  v30[5] = v31;
  v30[6] = v99;
  v32 = v94;
  *v30 = v93;
  v30[1] = v32;
  v33 = v96;
  v30[2] = v95;
  v30[3] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1901E6CD0;
  *(v34 + 56) = MEMORY[0x1E69E6158];
  *(v34 + 64) = lazy protocol witness table accessor for type String and conformance String(v34, v35, v36);
  *(v34 + 32) = v23;
  *(v34 + 40) = v25;
  v37 = LocalizedString(format:_:)(0x655065766F6D6552, 0xEC0000006E6F7372, v34);
  v39 = v38;
  object = v38;

  v88 = v37;
  v89 = v39;
  v90 = *v2;
  State.projectedValue.getter();
  v40 = v83;
  v41 = v84;
  swift_getKeyPath();
  v83 = v40;
  v84 = v41;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails15ParticipantViewV0G5ModelCGMd, &_s7SwiftUI7BindingVy20CommunicationDetails15ParticipantViewV0G5ModelCGMR);
  Binding.subscript.getter();

  v66 = v91;

  v70 = v19;
  v65 = &v65;
  MEMORY[0x1EEE9AC00](v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v67 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AvatarView, _AspectRatioLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AvatarView, _AspectRatioLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy08ContactsB010AvatarViewVAA18_AspectRatioLayoutVGAA010_FlexFrameJ0VGMd, &_s7SwiftUI15ModifiedContentVyACy08ContactsB010AvatarViewVAA18_AspectRatioLayoutVGAA010_FlexFrameJ0VGMR, lazy protocol witness table accessor for type ModifiedContent<AvatarView, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>);
  v77 = lazy protocol witness table accessor for type String and conformance String(v67, v44, v45);
  v78 = lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x1E697D680]);
  v46 = v43;
  v47 = MEMORY[0x1E69E6158];
  v48 = v81;
  v49 = OpaqueTypeConformance2;
  View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)();

  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>(v49, &_s7SwiftUI15ModifiedContentVyACy08ContactsB010AvatarViewVAA18_AspectRatioLayoutVGAA010_FlexFrameJ0VGMd, &_s7SwiftUI15ModifiedContentVyACy08ContactsB010AvatarViewVAA18_AspectRatioLayoutVGAA010_FlexFrameJ0VGMR);
  v50._object = 0x8000000190200270;
  v50._countAndFlagsBits = 0xD000000000000019;
  v51 = LocalizedString(_:)(v50);
  object = v51._object;
  v92 = v51;
  v90 = v116;
  State.projectedValue.getter();
  v52 = v83;
  v53 = v84;
  swift_getKeyPath();
  v90 = v52;
  v91 = v53;
  Binding.subscript.getter();

  MEMORY[0x1EEE9AC00](v54);
  *&v83 = v48;
  *(&v83 + 1) = v47;
  v69 = v46;
  v84 = v46;
  v85 = v67;
  v86 = v77;
  v87 = v78;
  v81 = MEMORY[0x1E697D0E8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = v72;
  v55 = v73;
  v57 = v82;
  View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)();

  (*(v71 + 8))(v57, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1901E6230;
  v83 = v116;
  State.wrappedValue.getter();
  v59 = v90;
  v60 = *(v90 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);

  *(v58 + 32) = v60;
  v90 = v116;
  State.projectedValue.getter();
  v61 = v83;
  v62 = v84;
  swift_getKeyPath();
  v90 = v61;
  v91 = v62;
  Binding.subscript.getter();

  *&v83 = v55;
  *(&v83 + 1) = MEMORY[0x1E69E6158];
  v84 = v69;
  v85 = OpaqueTypeConformance2;
  v86 = v77;
  v87 = v78;
  swift_getOpaqueTypeConformance2();
  v63 = v75;
  View.showSafetyCheck(for:isPresented:)();

  return (*(v74 + 8))(v56, v63);
}

uint64_t ParticipantView.addToContactsButton.getter@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v21 = type metadata accessor for ContentMarginPlacement();
  v2 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA22ContentMarginPlacementVtFQOy20CommunicationDetails011ParticipantC0V17AddToContactsMenuV_Qo_Md, &_s7SwiftUI4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA22ContentMarginPlacementVtFQOy20CommunicationDetails011ParticipantC0V17AddToContactsMenuV_Qo_MR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  v9 = *v1;
  v10 = v1[1];
  v20 = v1[10];
  v23 = v9;
  v24 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMR);
  State.wrappedValue.getter();

  ParticipantView.AddToContactsMenu.init(viewModel:presentationProxy:)();
  v12 = v11;
  v23 = v11;
  v24 = v13;
  v14 = static Edge.Set.bottom.getter();
  v15 = static ContentMarginPlacement.automatic.getter();
  v18 = lazy protocol witness table accessor for type ParticipantView.AddToContactsMenu and conformance ParticipantView.AddToContactsMenu(v15, v16, v17);
  MEMORY[0x193AEA1C0](v14, v20, 0, v4);
  (*(v2 + 8))(v4, v21);

  v23 = &type metadata for ParticipantView.AddToContactsMenu;
  v24 = v18;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v6 + 8))(v8, v5);
}

double closure #1 in ParticipantView.avatarView.getter(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd, &_s7SwiftUI10ButtonRoleVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20[-v3];
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5._countAndFlagsBits = 0x65766F6D6552;
  v5._object = 0xE600000000000000;
  v21 = LocalizedString(_:)(v5);
  static ButtonRole.destructive.getter();
  v6 = type metadata accessor for ButtonRole();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v7 = swift_allocObject();
  v8 = a1[13];
  v7[13] = a1[12];
  v7[14] = v8;
  v9 = a1[15];
  v7[15] = a1[14];
  v7[16] = v9;
  v10 = a1[9];
  v7[9] = a1[8];
  v7[10] = v10;
  v11 = a1[11];
  v7[11] = a1[10];
  v7[12] = v11;
  v12 = a1[5];
  v7[5] = a1[4];
  v7[6] = v12;
  v13 = a1[7];
  v7[7] = a1[6];
  v7[8] = v13;
  v14 = a1[1];
  v7[1] = *a1;
  v7[2] = v14;
  v15 = a1[3];
  v7[3] = a1[2];
  v7[4] = v15;
  v16 = outlined init with copy of ParticipantView(a1, v20);
  lazy protocol witness table accessor for type String and conformance String(v16, v17, v18);
  Button<>.init<A>(_:role:action:)();

  return result;
}

double closure #2 in ParticipantView.avatarView.getter(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd, &_s7SwiftUI10ButtonRoleVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20[-v3];
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5._countAndFlagsBits = 0x6F43206B636F6C42;
  v5._object = 0xED0000746361746ELL;
  v21 = LocalizedString(_:)(v5);
  static ButtonRole.destructive.getter();
  v6 = type metadata accessor for ButtonRole();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v7 = swift_allocObject();
  v8 = a1[13];
  v7[13] = a1[12];
  v7[14] = v8;
  v9 = a1[15];
  v7[15] = a1[14];
  v7[16] = v9;
  v10 = a1[9];
  v7[9] = a1[8];
  v7[10] = v10;
  v11 = a1[11];
  v7[11] = a1[10];
  v7[12] = v11;
  v12 = a1[5];
  v7[5] = a1[4];
  v7[6] = v12;
  v13 = a1[7];
  v7[7] = a1[6];
  v7[8] = v13;
  v14 = a1[1];
  v7[1] = *a1;
  v7[2] = v14;
  v15 = a1[3];
  v7[3] = a1[2];
  v7[4] = v15;
  v16 = outlined init with copy of ParticipantView(a1, v20);
  lazy protocol witness table accessor for type String and conformance String(v16, v17, v18);
  Button<>.init<A>(_:role:action:)();

  return result;
}

double closure #1 in ParticipantView.labelView.getter@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOy20CommunicationDetails011ParticipantE0V17AddToContactsMenuV_Qo_AA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOy20CommunicationDetails011ParticipantE0V17AddToContactsMenuV_Qo_AA31AccessibilityAttachmentModifierVGMR);
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v70 = &v70 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOy20CommunicationDetails011ParticipantE0V17AddToContactsMenuV_Qo_AA31AccessibilityAttachmentModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOy20CommunicationDetails011ParticipantE0V17AddToContactsMenuV_Qo_AA31AccessibilityAttachmentModifierVGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v79 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v70 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP20CommunicationDetailsE20shouldHideBlockLabelyQrSbFQOyAD011ParticipantC0V07BlockedI0V_Qo_Md, &_s7SwiftUI4ViewP20CommunicationDetailsE20shouldHideBlockLabelyQrSbFQOyAD011ParticipantC0V07BlockedI0V_Qo_MR);
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v70 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA023AccessibilityAttachmentI0VGMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v82 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v70 - v16;
  type metadata accessor for MainActor();
  v73 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *a1;
  v18 = a1[1];
  v72 = a1[2];
  *&v103 = v17;
  *(&v103 + 1) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMR);
  State.wrappedValue.getter();
  v19 = v88;
  v21 = *(v88 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 24);
  v20 = *(v88 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 32);

  *&v103 = v21;
  *(&v103 + 1) = v20;
  lazy protocol witness table accessor for type String and conformance String(v22, v23, v24);
  v71 = Text.init<A>(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  KeyPath = swift_getKeyPath();
  v32 = swift_getKeyPath();
  v33 = v28 & 1;
  LOBYTE(v103) = v28 & 1;
  LOBYTE(v88) = 0;
  v34 = v72;

  v35 = static Color.primary.getter();
  v36 = swift_getKeyPath();
  *&v88 = v71;
  *(&v88 + 1) = v26;
  LOBYTE(v89) = v33;
  *(&v89 + 1) = v30;
  *&v90 = KeyPath;
  v37 = 1;
  *(&v90 + 1) = 1;
  LOBYTE(v91) = 0;
  *(&v91 + 1) = v32;
  *&v92 = v34;
  *(&v92 + 1) = v36;
  *&v93 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityIdentifier(_:)();
  v105 = v90;
  v106 = v91;
  v107 = v92;
  *&v108 = v93;
  v103 = v88;
  v104 = v89;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>(&v103, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMR);
  v38 = *(a1 + 12);
  v39 = *(a1 + 14);
  v115 = *(a1 + 13);
  v116 = v39;
  v40 = *(a1 + 8);
  v41 = *(a1 + 10);
  v111 = *(a1 + 9);
  v112 = v41;
  v42 = *(a1 + 10);
  v43 = *(a1 + 12);
  v113 = *(a1 + 11);
  v114 = v43;
  v44 = *(a1 + 4);
  v45 = *(a1 + 6);
  v107 = *(a1 + 5);
  v108 = v45;
  v46 = *(a1 + 6);
  v47 = *(a1 + 8);
  v109 = *(a1 + 7);
  v110 = v47;
  v48 = *(a1 + 2);
  v103 = *(a1 + 1);
  v104 = v48;
  v49 = *(a1 + 4);
  v51 = *(a1 + 1);
  v50 = *(a1 + 2);
  v105 = *(a1 + 3);
  v106 = v49;
  v52 = *(a1 + 14);
  v100 = v115;
  v101 = v52;
  v96 = v111;
  v97 = v42;
  v98 = v113;
  v99 = v38;
  v92 = v107;
  v93 = v46;
  v94 = v109;
  v95 = v40;
  v88 = v51;
  v89 = v50;
  v117 = a1[30];
  v102 = a1[30];
  v90 = v105;
  v91 = v44;
  outlined init with copy of ParticipantGrid.StyleGuide(&v103, v86);
  ParticipantView.BlockedLabel.init(styleGuide:)(&v88, v86);
  v88 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMR);
  State.wrappedValue.getter();
  LOBYTE(v34) = v85[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 72];

  v56 = lazy protocol witness table accessor for type ParticipantView.BlockedLabel and conformance ParticipantView.BlockedLabel(v53, v54, v55);
  View.shouldHideBlockLabel(_:)((v34 & 1) == 0, &type metadata for ParticipantView.BlockedLabel, v56);
  v100 = v86[12];
  v101 = v86[13];
  v102 = v87;
  v96 = v86[8];
  v97 = v86[9];
  v98 = v86[10];
  v99 = v86[11];
  v92 = v86[4];
  v93 = v86[5];
  v94 = v86[6];
  v95 = v86[7];
  v88 = v86[0];
  v89 = v86[1];
  v90 = v86[2];
  v91 = v86[3];
  outlined destroy of ParticipantView.BlockedLabel(&v88);
  v86[0] = *a1;
  State.wrappedValue.getter();
  LOBYTE(v34) = v85[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 72];

  if ((v34 & 1) == 0)
  {
    v86[0] = *a1;
    State.wrappedValue.getter();
    v57 = v85[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 74];

    if (v57)
    {
      v37 = 1;
    }

    else
    {
      v58 = v70;
      ParticipantView.addToContactsButton.getter(v70);
      outlined init with take of ModifiedContent<<<opaque return type of View.participantContextMenu(viewModel:presentationProxy:previewTarget:)>>.0, _PaddingLayout>(v58, v81, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOy20CommunicationDetails011ParticipantE0V17AddToContactsMenuV_Qo_AA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOy20CommunicationDetails011ParticipantE0V17AddToContactsMenuV_Qo_AA31AccessibilityAttachmentModifierVGMR);
      v37 = 0;
    }
  }

  v59 = v81;
  (*(v74 + 56))(v81, v37, 1, v75);
  v60 = v82;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>(v83, v82);
  v61 = v76;
  v62 = v77;
  v63 = *(v77 + 16);
  v64 = v78;
  v63(v76, v84, v78);
  v65 = v79;
  outlined init with copy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>(v59, v79, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOy20CommunicationDetails011ParticipantE0V17AddToContactsMenuV_Qo_AA31AccessibilityAttachmentModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOy20CommunicationDetails011ParticipantE0V17AddToContactsMenuV_Qo_AA31AccessibilityAttachmentModifierVGSgMR);
  v66 = v80;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>(v60, v80);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA023AccessibilityAttachmentI0VG_AA4ViewP20CommunicationDetailsE20shouldHideBlockLabelyQrSbFQOyAZ011ParticipantN0V07BlockedT0V_Qo_ACyAyAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyA1_17AddToContactsMenuV_Qo_AVGSgtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA023AccessibilityAttachmentI0VG_AA4ViewP20CommunicationDetailsE20shouldHideBlockLabelyQrSbFQOyAZ011ParticipantN0V07BlockedT0V_Qo_ACyAyAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyA1_17AddToContactsMenuV_Qo_AVGSgtMR);
  v63((v66 + *(v67 + 48)), v61, v64);
  outlined init with copy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>(v65, v66 + *(v67 + 64), &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOy20CommunicationDetails011ParticipantE0V17AddToContactsMenuV_Qo_AA31AccessibilityAttachmentModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOy20CommunicationDetails011ParticipantE0V17AddToContactsMenuV_Qo_AA31AccessibilityAttachmentModifierVGSgMR);
  outlined destroy of VStack<TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>)>>(v59, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOy20CommunicationDetails011ParticipantE0V17AddToContactsMenuV_Qo_AA31AccessibilityAttachmentModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOy20CommunicationDetails011ParticipantE0V17AddToContactsMenuV_Qo_AA31AccessibilityAttachmentModifierVGSgMR);
  v68 = *(v62 + 8);
  v68(v84, v64);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>(v83, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA023AccessibilityAttachmentI0VGMR);
  outlined destroy of VStack<TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>)>>(v65, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOy20CommunicationDetails011ParticipantE0V17AddToContactsMenuV_Qo_AA31AccessibilityAttachmentModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOy20CommunicationDetails011ParticipantE0V17AddToContactsMenuV_Qo_AA31AccessibilityAttachmentModifierVGSgMR);
  v68(v61, v64);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>(v82, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA023AccessibilityAttachmentI0VGMR);

  return result;
}

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticipantView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
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

uint64_t storeEnumTagSinglePayload for ParticipantView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOy20CommunicationDetails011ParticipantE0V17AddToContactsMenuV_Qo_AA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOy20CommunicationDetails011ParticipantE0V17AddToContactsMenuV_Qo_AA31AccessibilityAttachmentModifierVGMR);
    lazy protocol witness table accessor for type ParticipantView.AddToContactsMenu and conformance ParticipantView.AddToContactsMenu(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AvatarView, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AvatarView, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AvatarView, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy08ContactsB010AvatarViewVAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVy08ContactsB010AvatarViewVAA18_AspectRatioLayoutVGMR);
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_0(&lazy protocol witness table cache variable for type AvatarView and conformance AvatarView, MEMORY[0x1E695CFD8], MEMORY[0x1E695CFD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AvatarView, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double partial apply for closure #1 in closure #1 in ParticipantView.body.getter()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMR);
  State.wrappedValue.getter();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1A0))(*(v0 + 264));

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AvatarView, _AspectRatioLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.participantContextMenu(viewModel:presentationProxy:previewTarget:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.participantContextMenu(viewModel:presentationProxy:previewTarget:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.participantContextMenu(viewModel:presentationProxy:previewTarget:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAF011ParticipantE0V0eL0C_AF0g12PresentationN0CSgAL0iJ0V07PreviewP0OtFQOyAeFE28addContactButtonBadgeOverlay0t10ToContactsV007isAddedyZ0QrAA03AnyE0V_SbtFQOyAE017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAeAE18confirmationDialog_A2_15titleVisibility7actionsQrqd___A8_AA10VisibilityOqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAEA9__A2_A10_A11_Qrqd___A8_A13_qd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACy0zB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA0V0VyAA4TextVGQo__SSA27_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAF011ParticipantE0V0eL0C_AF0g12PresentationN0CSgAL0iJ0V07PreviewP0OtFQOyAeFE28addContactButtonBadgeOverlay0t10ToContactsV007isAddedyZ0QrAA03AnyE0V_SbtFQOyAE017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAeAE18confirmationDialog_A2_15titleVisibility7actionsQrqd___A8_AA10VisibilityOqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAEA9__A2_A10_A11_Qrqd___A8_A13_qd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACy0zB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA0V0VyAA4TextVGQo__SSA27_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewP20CommunicationDetailsE28addContactButtonBadgeOverlay0f10ToContactsH007isAddedkL0QrAA03AnyC0V_SbtFQOyAC017DigitalSeparationB0E15showSafetyCheck3for0M9PresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAcAE18confirmationDialog_AM15titleVisibility7actionsQrqd___AsA10VisibilityOqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEAT_AmuVQrqd___AsXqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyAZy0lB006AvatarC0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA0H0VyAA4TextVGQo__SSA12_Qo__Qo__Qo_Md, &_s7SwiftUI4ViewP20CommunicationDetailsE28addContactButtonBadgeOverlay0f10ToContactsH007isAddedkL0QrAA03AnyC0V_SbtFQOyAC017DigitalSeparationB0E15showSafetyCheck3for0M9PresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAcAE18confirmationDialog_AM15titleVisibility7actionsQrqd___AsA10VisibilityOqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEAT_AmuVQrqd___AsXqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyAZy0lB006AvatarC0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA0H0VyAA4TextVGQo__SSA12_Qo__Qo__Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewP017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAcAE18confirmationDialog_AG15titleVisibility7actionsQrqd___AmA0Q0Oqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEAN_AgoPQrqd___AmRqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyATy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA010_FlexFrameY0VG_SSAA6ButtonVyAA4TextVGQo__SSA6_Qo__Qo_Md, &_s7SwiftUI4ViewP017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAcAE18confirmationDialog_AG15titleVisibility7actionsQrqd___AmA0Q0Oqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEAN_AgoPQrqd___AmRqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyATy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA010_FlexFrameY0VG_SSAA6ButtonVyAA4TextVGQo__SSA6_Qo__Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEAD_AefGQrqd___AjLqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyANy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA010_FlexFrameR0VG_SSAA6ButtonVyAA4TextVGQo__SSA0_Qo_Md, &_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEAD_AefGQrqd___AjLqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyANy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA010_FlexFrameR0VG_SSAA6ButtonVyAA4TextVGQo__SSA0_Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyANy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA010_FlexFrameR0VG_SSAA6ButtonVyAA4TextVGQo_Md, &_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyANy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA010_FlexFrameR0VG_SSAA6ButtonVyAA4TextVGQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy08ContactsB010AvatarViewVAA18_AspectRatioLayoutVGAA010_FlexFrameJ0VGMd, &_s7SwiftUI15ModifiedContentVyACy08ContactsB010AvatarViewVAA18_AspectRatioLayoutVGAA010_FlexFrameJ0VGMR);
    v1 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AvatarView, _AspectRatioLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AvatarView, _AspectRatioLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy08ContactsB010AvatarViewVAA18_AspectRatioLayoutVGAA010_FlexFrameJ0VGMd, &_s7SwiftUI15ModifiedContentVyACy08ContactsB010AvatarViewVAA18_AspectRatioLayoutVGAA010_FlexFrameJ0VGMR, lazy protocol witness table accessor for type ModifiedContent<AvatarView, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type String and conformance String(v1, v2, v3);
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.participantContextMenu(viewModel:presentationProxy:previewTarget:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticipantView.BlockedLabel and conformance ParticipantView.BlockedLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ParticipantView.BlockedLabel and conformance ParticipantView.BlockedLabel;
  if (!lazy protocol witness table cache variable for type ParticipantView.BlockedLabel and conformance ParticipantView.BlockedLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantView.BlockedLabel and conformance ParticipantView.BlockedLabel);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<<<opaque return type of View.participantContextMenu(viewModel:presentationProxy:previewTarget:)>>.0, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA023AccessibilityAttachmentI0VGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of VStack<TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, <<opaque return type of View.shouldHideBlockLabel(_:)>>.0, ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t outlined init with take of ModifiedContent<AvatarView, _AspectRatioLayout>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy08ContactsB010AvatarViewVAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVy08ContactsB010AvatarViewVAA18_AspectRatioLayoutVGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double partial apply for closure #1 in closure #2 in ParticipantView.avatarView.getter()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMR);
  State.wrappedValue.getter();
  v0 = *(v4 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 72);

  v1 = State.wrappedValue.getter();
  if (v0 == 1)
  {
    v2 = v4;
    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x1B0))(v1);
  }

  else
  {
    v2 = v4;
    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x1A8))(v1);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{

  return MEMORY[0x1EEE6BDD0](v0, 272, 7);
}

double partial apply for closure #1 in closure #1 in ParticipantView.avatarView.getter()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails15ParticipantViewV0G5ModelCGMR);
  State.wrappedValue.getter();
  v0 = *&v5[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_participantGridActionHandlers];

  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))();
  State.wrappedValue.getter();
  v2 = *&v5[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 40];
  v3 = *&v5[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48];

  v1(v2, v3);

  return result;
}

uint64_t key path getter for PhotosGridViewController.ViewModel.selectionEnabled : PhotosGridViewController.ViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result & 1;
  return result;
}

uint64_t PhotosGridViewController.ViewModel.selectionEnabled.getter()
{
  swift_getKeyPath();
  (*(*v0 + 384))();

  swift_beginAccess();
  return v0[16];
}

void PhotosGridViewController.ViewModel.selectionEnabled.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[16] == v2)
  {
    v1[16] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 392))(v4);
  }
}

void partial apply for closure #1 in PhotosGridViewController.ViewModel.selectionEnabled.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 16) = v2;
}

uint64_t (*PhotosGridViewController.ViewModel.selectionEnabled.modify(uint64_t *a1))()
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 384))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails24PhotosGridViewController9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type PhotosGridViewController.ViewModel and conformance PhotosGridViewController.ViewModel();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PhotosGridViewController.ViewModel._selectionEnabled.modify(v4);
  return PhotosGridViewController.ViewModel.selectionEnabled.modify;
}

unint64_t lazy protocol witness table accessor for type PhotosGridViewController.ViewModel and conformance PhotosGridViewController.ViewModel()
{
  result = lazy protocol witness table cache variable for type PhotosGridViewController.ViewModel and conformance PhotosGridViewController.ViewModel;
  if (!lazy protocol witness table cache variable for type PhotosGridViewController.ViewModel and conformance PhotosGridViewController.ViewModel)
  {
    type metadata accessor for PhotosGridViewController.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhotosGridViewController.ViewModel and conformance PhotosGridViewController.ViewModel);
  }

  return result;
}

uint64_t type metadata accessor for PhotosGridViewController.ViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for PhotosGridViewController.ViewModel;
  if (!type metadata singleton initialization cache for PhotosGridViewController.ViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *key path getter for PhotosGridViewController.ViewModel.appliedFilter : PhotosGridViewController.ViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 208))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for PhotosGridViewController.ViewModel.appliedFilter : PhotosGridViewController.ViewModel(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 216))(&v4);
}

void PhotosGridViewController.ViewModel.appliedFilter.getter(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 384))();

  swift_beginAccess();
  *a1 = v1[17];
}

double PhotosGridViewController.ViewModel.appliedFilter.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (v1[17] != v2)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 392))(v5);
  }

  return result;
}

uint64_t (*PhotosGridViewController.ViewModel.appliedFilter.modify(uint64_t *a1))()
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 384))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails24PhotosGridViewController9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type PhotosGridViewController.ViewModel and conformance PhotosGridViewController.ViewModel();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PhotosGridViewController.ViewModel._appliedFilter.modify(v4);
  return PhotosGridViewController.ViewModel.appliedFilter.modify;
}

uint64_t key path getter for PhotosGridViewController.ViewModel.performSave : PhotosGridViewController.ViewModel@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 256))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = _sSbs5Error_pSgIeghyg_SgIegg_xq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lySbABytIseghnnr_SgytIegnr_TRTA_141;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t _sSbs5Error_pSgIeghyg_SgIegg_xq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lySbABytIseghnnr_SgytIegnr_TR(uint64_t *a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Bool, @in_guaranteed Error?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  sub_19011F4EC(v3, v4);
  a2(v6, v5);

  return _sSbs5Error_pSgIeghyg_SgIegg_SgWOe_0(v6, v5);
}

uint64_t key path setter for PhotosGridViewController.ViewModel.performSave : PhotosGridViewController.ViewModel(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lySbs5Error_pSgytIseghnnr_SgytIegnr_SbABIeghyg_SgIegg_TRTA_137;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 264);
  sub_19011F4EC(v3, v4);
  return v7(v6, v5);
}

uint64_t _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lySbs5Error_pSgytIseghnnr_SgytIegnr_SbABIeghyg_SgIegg_TR(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  if (a1)
  {
    v4 = a1;
    v5 = a2;
    v6 = swift_allocObject();
    a2 = v5;
    v7 = v6;
    a1 = v4;
    *(v7 + 16) = v4;
    *(v7 + 24) = a2;
    v8 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v10[0] = v8;
  v10[1] = v7;
  sub_19011F4EC(a1, a2);
  a3(v10);

  return _sSbs5Error_pSgIeghyg_SgIegg_SgWOe_0(v8, v7);
}

uint64_t PhotosGridViewController.ViewModel.performSave.getter()
{
  swift_getKeyPath();
  (*(*v0 + 384))();

  swift_beginAccess();
  v1 = v0[3];
  sub_19011F4EC(v1, v0[4]);
  return v1;
}

uint64_t (*PhotosGridViewController.ViewModel.performSave.modify(uint64_t *a1))()
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 384))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails24PhotosGridViewController9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type PhotosGridViewController.ViewModel and conformance PhotosGridViewController.ViewModel();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PhotosGridViewController.ViewModel._performSave.modify(v4);
  return PhotosGridViewController.ViewModel.performSave.modify;
}

uint64_t key path getter for PhotosGridViewController.ViewModel.performDelete : PhotosGridViewController.ViewModel@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 304))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = _sSbs5Error_pSgIeghyg_SgIegg_xq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lySbABytIseghnnr_SgytIegnr_TRTA;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for PhotosGridViewController.ViewModel.performDelete : PhotosGridViewController.ViewModel(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lySbs5Error_pSgytIseghnnr_SgytIegnr_SbABIeghyg_SgIegg_TRTA;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 312);
  sub_19011F4EC(v3, v4);
  return v7(v6, v5);
}

uint64_t PhotosGridViewController.ViewModel.performDelete.getter()
{
  swift_getKeyPath();
  (*(*v0 + 384))();

  swift_beginAccess();
  v1 = v0[5];
  sub_19011F4EC(v1, v0[6]);
  return v1;
}

uint64_t (*PhotosGridViewController.ViewModel.performDelete.modify(uint64_t *a1))()
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 384))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails24PhotosGridViewController9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type PhotosGridViewController.ViewModel and conformance PhotosGridViewController.ViewModel();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PhotosGridViewController.ViewModel._performDelete.modify(v4);
  return PhotosGridViewController.ViewModel.performDelete.modify;
}

uint64_t key path getter for PhotosGridViewController.ViewModel.performShowInConversation : PhotosGridViewController.ViewModel@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 352))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = _sSSIegg_SSytIegnr_TRTA_0;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for PhotosGridViewController.ViewModel.performShowInConversation : PhotosGridViewController.ViewModel(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sSSytIegnr_SSIegg_TRTA_0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 360);
  sub_19011F4EC(v3, v4);
  return v7(v6, v5);
}

uint64_t PhotosGridViewController.ViewModel.performShowInConversation.getter()
{
  swift_getKeyPath();
  (*(*v0 + 384))();

  swift_beginAccess();
  v1 = v0[7];
  sub_19011F4EC(v1, v0[8]);
  return v1;
}

double PhotosGridViewController.ViewModel.performSave.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  (*(*v5 + 392))();
  a5(a1, a2);

  return result;
}

uint64_t (*PhotosGridViewController.ViewModel.performShowInConversation.modify(uint64_t *a1))()
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 384))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails24PhotosGridViewController9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type PhotosGridViewController.ViewModel and conformance PhotosGridViewController.ViewModel();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PhotosGridViewController.ViewModel._performShowInConversation.modify(v4);
  return PhotosGridViewController.ViewModel.performShowInConversation.modify;
}

void PhotosGridViewController.ViewModel.selectionEnabled.modify(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

uint64_t PhotosGridViewController.ViewModel.__allocating_init(contactResolver:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  ObservationRegistrar.init()();
  outlined init with take of SyndicatedAssetContactResolving(a1, v2 + 72);
  return v2;
}

uint64_t PhotosGridViewController.ViewModel.init(contactResolver:)(__int128 *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  ObservationRegistrar.init()();
  outlined init with take of SyndicatedAssetContactResolving(a1, v1 + 72);
  return v1;
}

uint64_t *PhotosGridViewController.ViewModel.deinit()
{
  _sSbs5Error_pSgIeghyg_SgIegg_SgWOe_0(v0[3], v0[4]);
  _sSbs5Error_pSgIeghyg_SgIegg_SgWOe_0(v0[5], v0[6]);
  _sSbs5Error_pSgIeghyg_SgIegg_SgWOe_0(v0[7], v0[8]);
  __swift_destroy_boxed_opaque_existential_1Tm_0(v0 + 9);
  v1 = OBJC_IVAR____TtCC20CommunicationDetails24PhotosGridViewController9ViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosGridViewController.ViewModel.__deallocating_deinit()
{
  _sSbs5Error_pSgIeghyg_SgIegg_SgWOe_0(v0[3], v0[4]);
  _sSbs5Error_pSgIeghyg_SgIegg_SgWOe_0(v0[5], v0[6]);
  _sSbs5Error_pSgIeghyg_SgIegg_SgWOe_0(v0[7], v0[8]);
  __swift_destroy_boxed_opaque_existential_1Tm_0(v0 + 9);
  v1 = OBJC_IVAR____TtCC20CommunicationDetails24PhotosGridViewController9ViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

Swift::Int PhotosGridViewController.FilterOption.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

void partial apply for closure #1 in PhotosGridViewController.ViewModel.appliedFilter.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 17) = v2;
}

uint64_t partial apply for closure #1 in PhotosGridViewController.ViewModel.performSave.setter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  sub_19011F4EC(v1, v3);
  return _sSbs5Error_pSgIeghyg_SgIegg_SgWOe_0(v4, v5);
}

uint64_t partial apply for closure #1 in PhotosGridViewController.ViewModel.performDelete.setter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  *(v2 + 40) = v1;
  *(v2 + 48) = v3;
  sub_19011F4EC(v1, v3);
  return _sSbs5Error_pSgIeghyg_SgIegg_SgWOe_0(v4, v5);
}

uint64_t partial apply for closure #1 in PhotosGridViewController.ViewModel.performShowInConversation.setter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v2 + 56);
  v5 = *(v2 + 64);
  *(v2 + 56) = v1;
  *(v2 + 64) = v3;
  sub_19011F4EC(v1, v3);
  return _sSbs5Error_pSgIeghyg_SgIegg_SgWOe_0(v4, v5);
}

uint64_t outlined init with take of SyndicatedAssetContactResolving(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PhotosGridViewController.FilterOption()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhotosGridViewController.FilterOption(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v2);
  return Hasher._finalize()();
}

uint64_t key path getter for PhotosGridViewController.controller : PhotosGridViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for PhotosGridViewController.controller : PhotosGridViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xE8);
  v4 = *a1;
  return v3(v2);
}

void *PhotosGridViewController.controller.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_controller;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PhotosGridViewController.controller.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_controller;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for PhotosGridViewController.configuration : PhotosGridViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF8))();
  *a2 = result;
  return result;
}

void key path setter for PhotosGridViewController.configuration : PhotosGridViewController(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_configuration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id PhotosGridViewController.configuration.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PhotosGridViewController.configuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for PhotosGridViewController.viewModel : PhotosGridViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x110))();
  *a2 = result;
  return result;
}

uint64_t key path setter for PhotosGridViewController.viewModel : PhotosGridViewController(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x118);

  return v2(v3);
}

uint64_t key path getter for PhotosGridViewController.tungstenView : PhotosGridViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result;
  return result;
}

uint64_t key path setter for PhotosGridViewController.tungstenView : PhotosGridViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x130);
  v4 = *a1;
  return v3(v2);
}

void *PhotosGridViewController.tungstenView.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_tungstenView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PhotosGridViewController.tungstenView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_tungstenView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for PhotosGridViewController.quickLookController : PhotosGridViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x158))();
  *a2 = result;
  return result;
}

uint64_t key path setter for PhotosGridViewController.quickLookController : PhotosGridViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x160);
  v4 = *a1;
  return v3(v2);
}

void *PhotosGridViewController.quickLookController.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_quickLookController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PhotosGridViewController.quickLookController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_quickLookController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for PhotosGridViewController.quickLookDataSource : PhotosGridViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x170))();
  *a2 = result;
  return result;
}

uint64_t key path setter for PhotosGridViewController.quickLookDataSource : PhotosGridViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x178);
  v4 = *a1;
  return v3(v2);
}

void *PhotosGridViewController.quickLookDataSource.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_quickLookDataSource;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PhotosGridViewController.quickLookDataSource.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_quickLookDataSource;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *PhotosGridViewController.init(configuration:viewModel:contentOffsetProxy:assetSelectionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *&v5[OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_controller] = 0;
  *&v5[OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_tungstenView] = 0;
  v5[OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_didScrollToInitialPosition] = 0;
  *&v5[OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_quickLookController] = 0;
  *&v5[OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_quickLookDataSource] = 0;
  v12 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_quickLookCache;
  type metadata accessor for PhotosGridQuickLookDataSource.PreviewsCache();
  *&v5[v12] = PhotosGridQuickLookDataSource.PreviewsCache.__allocating_init()();
  v13 = &v5[OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_pxScrollLogIndent];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v5[OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_hasAppeared] = 0;
  v5[OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_isScrollingToInitialPosition] = 0;
  v5[OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_isPreservingScrollPosition] = 0;
  v5[OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_isProgramaticallyAdjustingScrolling] = 0;
  v5[OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_isUpdatingSafeAreaInsets] = 0;
  v5[OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_hasLaidOutSubviews] = 0;
  v5[OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_hasScrollViewLaidOutSubviews] = 0;
  *&v5[OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_configuration] = a1;
  v14 = *(*a3 + 544);
  v15 = a1;
  v14(1);
  *&v5[OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_contentOffsetProxy] = a3;
  *&v5[OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_viewModel] = a2;
  v16 = objc_allocWithZone(MEMORY[0x1E69DD250]);

  v17 = [v16 initWithFrame_];
  *&v6[OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_headerContainerView] = v17;
  v22.receiver = v6;
  v22.super_class = type metadata accessor for PhotosGridViewController();
  v18 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
  [v18 px_enableExtendedTraitCollection];
  [v18 px_enableOneUpPresentation];
  withObservationTracking<A>(_:onChange:)();
  withObservationTracking<A>(_:onChange:)();
  PhotosGridViewController.populateViewModelActions()();
  v19 = *(**&v18[OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_quickLookCache] + 112);

  v19(v20);

  _sSbs5Error_pSgIeghyg_SgIegg_SgWOe_0(a4, a5);

  return v18;
}

id PhotosGridViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t key path getter for PhotosGridViewController.pxScrollLogIndent : PhotosGridViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x190))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for PhotosGridViewController.pxScrollLogIndent : PhotosGridViewController(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x198);

  return v4(v2, v3);
}

uint64_t PhotosGridViewController.pxScrollLogIndent.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_pxScrollLogIndent);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t PhotosGridViewController.pxScrollLogIndent.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_pxScrollLogIndent);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

Swift::Void __swiftcall PhotosGridViewController.viewDidLoad()()
{
  v1 = v0;
  v70.receiver = v0;
  v70.super_class = type metadata accessor for PhotosGridViewController();
  v2 = objc_msgSendSuper2(&v70, sel_viewDidLoad);
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xF8);
  v5 = (v4)(v2);
  [v5 setIsEmbedded_];

  v6 = v4();
  [v6 setAllowedBehaviors_];

  v7 = v4();
  [v7 setDelegate_];

  v8 = v4();
  v9 = [v8 decorationViewClass];

  if (v9)
  {
    v10 = v4();
    type metadata accessor for PhotosGridViewControllerAvatarDecorationDataSource();
    v11 = (*((*v3 & *v1) + 0x110))();
    outlined init with copy of SyndicatedAssetContactResolving(v11 + 72, aBlock);

    v12 = PhotosGridViewControllerAvatarDecorationDataSource.__allocating_init(contactResolver:)(aBlock);
    [v10 setDecorationDataSource_];
  }

  v13 = v4();
  v14 = [v13 assetActionManager];

  if (v14)
  {
    [v14 setPerformerDelegate_];
  }

  v15 = v4();
  v16 = [v1 px_extendedTraitCollection];
  v17 = [objc_allocWithZone(MEMORY[0x1E69A28F8]) initWithConfiguration:v15 traitCollection:v16];

  v18 = (*((*v3 & *v1) + 0xE8))(v17);
  v19 = *((*v3 & *v1) + 0xE0);
  v20 = v19(v18);
  if (!v20)
  {
    __break(1u);
    goto LABEL_20;
  }

  v21 = v20;
  [v20 setDelegate_];

  v22 = [v1 view];
  if (!v22)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v23 = v22;
  [v22 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = [objc_allocWithZone(MEMORY[0x1E69DB590]) initWithFrame_];
  v33 = (v4)([v32 setAutoresizingMask_]);
  v34 = [v33 lowMemoryMode];

  v35 = (v4)([v32 setLowMemoryModeEnabled_]);
  v36 = [v35 mediaProvider];

  [v32 registerAllTextureProvidersWithMediaProvider_];
  v37 = [v32 scrollViewController];
  v38 = [v37 scrollView];

  v39 = v38;
  if (v38)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v66 = [MEMORY[0x1E696AAA8] currentHandler];
      v67 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIScrollView *UIScrollViewFromPXScrollView(PXScrollView *__strong)"];
      [v66 handleFailureInFunction:v67 file:@"PXScrollView_Deprecated.h" lineNumber:41 description:@"unexpected class"];
    }
  }

  v40 = v39;
  swift_unknownObjectRelease();
  UIViewController.setContentScrollView(_:)(v40);
  v41 = [v32 scrollViewController];
  [v41 registerObserver_];

  if (v40)
  {
    v42 = [(UIScrollView_optional *)v40 addSubview:*(v1 + OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_headerContainerView)];
  }

  v43 = (*((*v3 & *v1) + 0x250))(v42);
  v44 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_headerContainerView);
  v45 = *(*v43 + 664);
  v46 = v44;
  v45(v44);

  v48 = v19(v47);
  if (!v48)
  {
    goto LABEL_21;
  }

  v49 = v48;
  v50 = [v48 layout];

  [v32 setRootLayout_];
  v51 = [v32 superview];
  if (v51)
  {
    goto LABEL_16;
  }

  v52 = [v1 view];
  if (v52)
  {
    v53 = v52;
    [v52 addSubview_];
    v51 = v53;
LABEL_16:

    v54 = *((*v3 & *v1) + 0x130);
    v55 = v32;
    v56 = v54(v32);
    v57 = v19(v56);
    if (v57)
    {
      v58 = v57;
      v59 = [v57 viewModel];

      swift_unknownObjectWeakInit();
      MEMORY[0x193AEBC30](v69);
      aBlock[4] = closure #1 in PhotosGridViewController.viewDidLoad();
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed PXPhotosViewModel & PXMutablePhotosViewModel) -> ();
      aBlock[3] = &block_descriptor_10;
      v60 = _Block_copy(aBlock);
      [v59 performChanges_];
      _Block_release(v60);

      v61 = objc_opt_self();
      v62 = [v61 clearColor];
      [v55 setBackgroundColor_];

      v63 = [v1 view];
      if (v63)
      {
        v64 = v63;
        v65 = [v61 clearColor];
        [v64 setBackgroundColor_];

        return;
      }

      goto LABEL_23;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
}

id closure #1 in PhotosGridViewController.viewDidLoad()(void *a1)
{
  [a1 setViewBasedDecorationsEnabled_];

  return [a1 setHidesDurationLabelBadge_];
}

void thunk for @escaping @callee_guaranteed (@guaranteed PXPhotosViewModel & PXMutablePhotosViewModel) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void closure #1 in PhotosGridViewController.viewDidAppear(_:)(void *a1, char a2)
{
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x1B0))(1);
  v4[2] = a1;
  v5 = a2;
  PhotosGridViewController.withPreservedScrollPosition<A>(_:)(partial apply for closure #1 in closure #1 in PhotosGridViewController.viewDidAppear(_:), v4, MEMORY[0x1E69E7CA8] + 8);
  PhotosGridViewController.scrollToInitialPositionIfNeeded()();
}

id closure #1 in PhotosGridViewController.viewDidDisappear(_:)(void *a1, char a2)
{
  v4 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x1B0))(0);
  (*((*v4 & *a1) + 0x228))(0);
  (*((*v4 & *a1) + 0x240))(0);
  v8.receiver = a1;
  v8.super_class = type metadata accessor for PhotosGridViewController();
  v5 = objc_msgSendSuper2(&v8, sel_viewDidDisappear_, a2 & 1);
  result = (*((*v4 & *a1) + 0xE0))(v5);
  if (result)
  {
    v7 = result;
    [result contentViewDidDisappear_];

    return [a1 resignFirstResponder];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in PhotosGridViewController.viewIsAppearing(_:)(void *a1, char a2)
{
  v4 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x1B0))(0);
  v13.receiver = a1;
  v13.super_class = type metadata accessor for PhotosGridViewController();
  v5 = objc_msgSendSuper2(&v13, sel_viewWillAppear_, a2 & 1);
  v6 = (*((*v4 & *a1) + 0x158))(v5);
  if (v6)
  {
    v7 = v6;
LABEL_5:

    return;
  }

  v8 = (*((*v4 & *a1) + 0xE0))();
  if (v8)
  {
    v7 = v8;
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    v12[4] = partial apply for closure #1 in closure #1 in PhotosGridViewController.viewIsAppearing(_:);
    v12[5] = v9;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
    v12[3] = &block_descriptor_67;
    v10 = _Block_copy(v12);
    v11 = a1;

    [v7 scrollToInitialPositionAnimated:0 withCompletionHandler:v10];
    _Block_release(v10);
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t closure #1 in closure #1 in PhotosGridViewController.viewIsAppearing(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;

  _sScTss5NeverORs_rlE9immediate4name8priority18executorPreference9operationScTyxABGSSSg_ScPSgSch_pSgnxyYaYAcntFZyt_Tt3g5Tf4nngg_n(0, 0, v3, 0, 0, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in PhotosGridViewController.viewIsAppearing(_:), v7);

  return outlined destroy of TaskPriority?(v3);
}

uint64_t closure #1 in closure #1 in closure #1 in PhotosGridViewController.viewIsAppearing(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 88) = a4;
  type metadata accessor for MainActor();
  *(v4 + 96) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in PhotosGridViewController.viewIsAppearing(_:), v6, v5);
}

uint64_t closure #1 in closure #1 in closure #1 in PhotosGridViewController.viewIsAppearing(_:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    PhotosGridViewController.pxScrollLog(_:function:)();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x250))();

    (*(*v5 + 496))(1);
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    PhotosGridViewController.scrollToInitialPositionIfNeeded()();
  }

  v8 = *(v0 + 8);

  return v8();
}

double thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t key path getter for PhotosGridViewController.hasAppeared : PhotosGridViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A8))();
  *a2 = result & 1;
  return result;
}

uint64_t PhotosGridViewController.hasAppeared.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_hasAppeared;
  swift_beginAccess();
  return *(v0 + v1);
}

void PhotosGridViewController.hasAppeared.setter(char a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_hasAppeared;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for PhotosGridViewController.isScrollingToInitialPosition : PhotosGridViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C0))();
  *a2 = result & 1;
  return result;
}

uint64_t PhotosGridViewController.isScrollingToInitialPosition.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_isScrollingToInitialPosition;
  swift_beginAccess();
  return *(v0 + v1);
}

void PhotosGridViewController.isScrollingToInitialPosition.setter(char a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_isScrollingToInitialPosition;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for PhotosGridViewController.isPreservingScrollPosition : PhotosGridViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D8))();
  *a2 = result & 1;
  return result;
}

uint64_t PhotosGridViewController.isPreservingScrollPosition.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_isPreservingScrollPosition;
  swift_beginAccess();
  return *(v0 + v1);
}

void PhotosGridViewController.isPreservingScrollPosition.setter(char a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_isPreservingScrollPosition;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for PhotosGridViewController.isProgramaticallyAdjustingScrolling : PhotosGridViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F0))();
  *a2 = result & 1;
  return result;
}

uint64_t PhotosGridViewController.isProgramaticallyAdjustingScrolling.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_isProgramaticallyAdjustingScrolling;
  swift_beginAccess();
  return *(v0 + v1);
}

void PhotosGridViewController.isProgramaticallyAdjustingScrolling.setter(char a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_isProgramaticallyAdjustingScrolling;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for PhotosGridViewController.isUpdatingSafeAreaInsets : PhotosGridViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x208))();
  *a2 = result & 1;
  return result;
}

uint64_t PhotosGridViewController.isUpdatingSafeAreaInsets.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_isUpdatingSafeAreaInsets;
  swift_beginAccess();
  return *(v0 + v1);
}

void PhotosGridViewController.isUpdatingSafeAreaInsets.setter(char a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_isUpdatingSafeAreaInsets;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for PhotosGridViewController.hasLaidOutSubviews : PhotosGridViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x220))();
  *a2 = result & 1;
  return result;
}

uint64_t PhotosGridViewController.hasLaidOutSubviews.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_hasLaidOutSubviews;
  swift_beginAccess();
  return *(v0 + v1);
}

void PhotosGridViewController.hasLaidOutSubviews.setter(char a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_hasLaidOutSubviews;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for PhotosGridViewController.hasScrollViewLaidOutSubviews : PhotosGridViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x238))();
  *a2 = result & 1;
  return result;
}

uint64_t PhotosGridViewController.hasScrollViewLaidOutSubviews.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_hasScrollViewLaidOutSubviews;
  swift_beginAccess();
  return *(v0 + v1);
}

void PhotosGridViewController.hasScrollViewLaidOutSubviews.setter(char a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_hasScrollViewLaidOutSubviews;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for PhotosGridViewController.contentOffsetProxy : PhotosGridViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x250))();
  *a2 = result;
  return result;
}

uint64_t key path setter for PhotosGridViewController.contentOffsetProxy : PhotosGridViewController(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x258);

  return v2(v3);
}

double PhotosGridViewController.viewModel.getter(uint64_t *a1)
{
  swift_beginAccess();

  return result;
}

double PhotosGridViewController.viewModel.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;

  return result;
}

uint64_t key path getter for PhotosGridViewController.selectionEnabled : PhotosGridViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x268))();
  *a2 = result & 1;
  return result;
}

id PhotosGridViewController.selectionEnabled.getter()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))();
  if (result)
  {
    v2 = result;
    v3 = [result viewModel];

    v4 = [v3 isInSelectMode];
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void PhotosGridViewController.selectionEnabled.setter(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE0);
  v4 = v3();
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v4 viewModel];

  LODWORD(v5) = [v6 isInSelectMode];
  if (v5 == (a1 & 1))
  {
    return;
  }

  v7 = v3();
  if (!v7)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = [v7 viewModel];

  v10 = swift_allocObject();
  *(v10 + 16) = a1 & 1;
  v12[4] = partial apply for closure #1 in PhotosGridViewController.selectionEnabled.setter;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed PXPhotosViewModel & PXMutablePhotosViewModel) -> ();
  v12[3] = &block_descriptor_18;
  v11 = _Block_copy(v12);

  [v9 performChanges_];
  _Block_release(v11);
}

void (*PhotosGridViewController.selectionEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE0))();
  if (result)
  {
    v4 = result;
    v5 = [result viewModel];

    LOBYTE(v4) = [v5 isInSelectMode];
    *(a1 + 8) = v4;
    return PhotosGridViewController.selectionEnabled.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall PhotosGridViewController.applyFilter(_:)(CommunicationDetails::PhotosGridViewController::FilterOption a1)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE0);
  v4 = v3();
  if (!v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  v6 = [v4 viewModel];

  v7 = [v6 filterState];
  if (!v7)
  {
    return;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    [v8 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for PXContentFilterState(0, &lazy cache variable for type metadata for PXContentFilterState, 0x1E69C33E0);
    swift_dynamicCast();
    if (v2 == 1)
    {
      [v20 setImage_];
      v9 = 0;
      v11 = 0;
      v10 = &selRef_setIncludeScreenshots_;
    }

    else if (v2)
    {
      [v20 setShowOnlyScreenshots_];
      v11 = 0;
      v9 = v2 == 2;
      v10 = &selRef_setImage_;
    }

    else
    {
      [v20 setIncludeScreenshots_];
      v9 = 1;
      v10 = &selRef_setImage_;
      v11 = 1;
    }

    [v20 setVideo_];
    [v20 *v10];
    v12 = v20;
    v13 = v3();
    if (v13)
    {
      v14 = v13;
      v15 = [v13 viewModel];

      v16 = swift_allocObject();
      *(v16 + 16) = v12;
      aBlock[4] = partial apply for closure #1 in PhotosGridViewController.contentFilterState.setter;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed PXPhotosViewModel & PXMutablePhotosViewModel) -> ();
      aBlock[3] = &block_descriptor_25;
      v17 = _Block_copy(aBlock);
      v18 = v12;

      [v15 performChanges_];
      _Block_release(v17);
      swift_unknownObjectRelease();

      return;
    }

LABEL_16:
    __break(1u);
    return;
  }

  swift_unknownObjectRelease();
}

double PhotosGridViewController.populateViewModelActions()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x110);
  v2 = v1();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = *(*v2 + 264);

  v4(partial apply for closure #1 in PhotosGridViewController.populateViewModelActions(), v3);

  v6 = (v1)(v5);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = *(*v6 + 312);

  v8(partial apply for closure #2 in PhotosGridViewController.populateViewModelActions(), v7);

  return result;
}

void PhotosGridViewController.performActionType(_:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0xF8))(v11);
  v15 = [v14 assetActionManager];

  if (v15 && (v16 = MEMORY[0x193AEA8E0](a1, a2), v17 = [v15 actionPerformerForActionType_], v15, v16, v17))
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;
    aBlock[4] = partial apply for closure #1 in PhotosGridViewController.performActionType(_:completion:);
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_58;
    v19 = _Block_copy(aBlock);
    sub_19011F4EC(a3, a4);

    [v17 performActionWithCompletionHandler_];
    _Block_release(v19);
  }

  else
  {
    v20 = Logger.detailsPhotos.unsafeMutableAddressor();
    (*(v10 + 16))(v13, v20, v9);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
      _os_log_impl(&dword_190119000, v21, v22, "Failed to retrieve action performer for action type %s", v23, 0xCu);
      v25 = __swift_destroy_boxed_opaque_existential_1Tm_0(v24);
      MEMORY[0x193AEBB30](v24, -1, -1, v25);
      MEMORY[0x193AEBB30](v23, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void PhotosGridViewController.didPressSpacebar()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE0);
  v7 = v6(v3);
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 viewModel];

  v10 = [v9 firstSelectedAssetReference];
  if (v10)
  {
    v11 = (v6)();
    if (v11)
    {
      v12 = v11;
      v13 = [v11 viewModel];

      v20 = [v13 currentDataSource];
      PhotosGridViewController.presentQuickLook(for:dataSource:from:)(v10, v20, v0);

      v14 = v20;

      return;
    }

LABEL_11:
    __break(1u);
    return;
  }

  v15 = Logger.detailsPhotos.unsafeMutableAddressor();
  (*(v2 + 16))(v5, v15, v1);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_190119000, v16, v17, "Received spacebar key command but no asset was selected. No-op.", v18, 2u);
    MEMORY[0x193AEBB30](v18, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
}

void @objc PhotosGridViewController.viewDidLoad()(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

id PhotosGridViewController.mediaProvider.getter()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))();
  if (result)
  {
    v2 = result;
    v3 = [result mediaProvider];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void PhotosGridViewController.rectForSelectedAsset.getter(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE0);
  v4 = v3();
  if (!v4)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  v6 = [v4 viewModel];

  v7 = [v6 firstSelectedAssetReference];
  v8 = 0uLL;
  if (!v7)
  {
    v18 = 1;
    v19 = 0uLL;
    goto LABEL_9;
  }

  v9 = (v3)(0);
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
  v11 = [v9 regionOfInterestForAssetReference_];

  if (!v11)
  {

    v18 = 1;
    v19 = 0uLL;
    v8 = 0uLL;
    goto LABEL_9;
  }

  v12 = [v1 view];
  if (v12)
  {
    v13 = v12;
    [v11 rectInCoordinateSpace_];
    v21 = v14;
    v22 = v15;
    v20 = v16;
    v23 = v17;

    *&v19 = v20;
    *&v8 = v21;
    v18 = 0;
    *(&v8 + 1) = v22;
    *(&v19 + 1) = v23;
LABEL_9:
    *a1 = v8;
    *(a1 + 16) = v19;
    *(a1 + 32) = v18;
    return;
  }

LABEL_12:
  __break(1u);
}

id PhotosGridViewController.selectedAssetImage.getter()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE0);
  v2 = v1();
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  v4 = [v2 viewModel];

  v5 = [v4 firstSelectedAssetReference];
  if (!v5)
  {
    return 0;
  }

  v10[0] = 0;
  result = v1();
  if (result)
  {
    v7 = result;

    v8 = v10[0];
    if (v10[0])
    {
      v9 = v10[0];
    }

    return v8;
  }

  __break(1u);
  return result;
}

id PhotosGridViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x193AEA8E0](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PhotosGridViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosGridViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double closure #1 in PhotosGridViewController.beginContentOffsetObservation()(void *a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x250);
  v4 = *v3(isCurrentExecutor);
  (*(v4 + 360))();

  v6 = *v3(v5);
  (*(v6 + 384))();

  v8 = *v3(v7);
  (*(v8 + 816))();

  return result;
}

uint64_t closure #2 in implicit closure #1 in PhotosGridViewController.beginContentOffsetObservation()(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v5;

  _sScTss5NeverORs_rlE9immediate4name8priority18executorPreference9operationScTyxABGSSSg_ScPSgSch_pSgnxyYaYAcntFZyt_Tt3g5Tf4nngg_n(0, 0, v3, 0, 0, &async function pointer to partial apply for closure #1 in closure #2 in implicit closure #1 in PhotosGridViewController.beginContentOffsetObservation(), v8);

  return outlined destroy of TaskPriority?(v3);
}

uint64_t closure #1 in closure #2 in implicit closure #1 in PhotosGridViewController.beginContentOffsetObservation()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in implicit closure #1 in PhotosGridViewController.beginContentOffsetObservation(), v6, v5);
}

uint64_t closure #1 in closure #2 in implicit closure #1 in PhotosGridViewController.beginContentOffsetObservation()()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(swift_task_alloc() + 16) = Strong;
    PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD00000000000001FLL, 0x8000000190200760, partial apply for closure #1 in closure #1 in closure #2 in implicit closure #1 in PhotosGridViewController.beginContentOffsetObservation());

    *(swift_task_alloc() + 16) = v2;
    *(swift_task_alloc() + 16) = v2;
    withObservationTracking<A>(_:onChange:)();
  }

  v3 = *(v0 + 8);

  return v3();
}

double closure #1 in PhotosGridViewController.beginViewModelObservation()(void *a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x110);
  v4 = v3(isCurrentExecutor);
  (*(*v4 + 160))(v4);

  v6 = v3(v5);
  (*(*v6 + 208))(&v8);

  return result;
}

double closure #2 in implicit closure #1 in PhotosGridViewController.beginViewModelObservation()(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v5;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in closure #2 in implicit closure #1 in PhotosGridViewController.beginViewModelObservation(), v8);

  return result;
}

uint64_t closure #1 in closure #2 in implicit closure #1 in PhotosGridViewController.beginViewModelObservation()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in implicit closure #1 in PhotosGridViewController.beginViewModelObservation(), v6, v5);
}

uint64_t closure #1 in closure #2 in implicit closure #1 in PhotosGridViewController.beginViewModelObservation()()
{
  v12 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = MEMORY[0x1E69E7D40];
    v4 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x110);
    v5 = v4();
    v6 = (*(*v5 + 160))(v5);

    v7 = (*((*v3 & *v2) + 0x270))(v6 & 1);
    v8 = (v4)(v7);
    (*(*v8 + 208))(&v11);

    (*((*v3 & *v2) + 0x280))(&v11);
    *(swift_task_alloc() + 16) = v2;
    *(swift_task_alloc() + 16) = v2;
    withObservationTracking<A>(_:onChange:)();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t PhotosGridViewController.photosViewController(_:didPick:)(void *a1, void *a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xE0))();
  if (result)
  {
    v6 = result;
    v7 = [result viewModel];

    v8 = [v7 currentDataSource];
    PhotosGridViewController.presentQuickLook(for:dataSource:from:)(a2, v8, a1);

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PhotosGridViewController.photosContentController(_:present:)(uint64_t a1, void *a2, SEL *a3)
{
  v7 = a2;
  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIViewController *UIViewControllerFromPXViewController(PXViewController *__strong)"];
      [v11 handleFailureInFunction:v12 file:@"PXViewController_Deprecated.h" lineNumber:34 description:@"unexpected class"];
    }
  }

  result = v7;
  if (result)
  {
    v9 = result;
    v10 = [v3 *a3];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL PhotosGridViewController.photosContentController(_:push:)(uint64_t a1, uint64_t a2)
{
  v4 = [v2 navigationController];
  v5 = v4;
  if (v4)
  {
    [v4 pushViewController:a2 animated:1];
  }

  return v5 != 0;
}

id PhotosGridViewController.undoManager(for:)()
{
  v1 = [v0 undoManager];

  return v1;
}

id @objc PhotosGridViewController.undoManager(for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = [a1 undoManager];

  return v5;
}

id @objc PhotosGridViewController.presentingViewController(for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1;

  return v5;
}

Swift::Void __swiftcall PhotosGridViewController.showMessageInConversation(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v4 = *(*((*MEMORY[0x1E69E7D40] & *v1) + 0x110))();
  v5 = (*(v4 + 352))();
  v7 = v6;

  if (v5)
  {
    v5(countAndFlagsBits, object);

    _sSbs5Error_pSgIeghyg_SgIegg_SgWOe_0(v5, v7);
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0__3()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void specialized PhotosGridViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_controller) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_tungstenView) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_didScrollToInitialPosition) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_quickLookController) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_quickLookDataSource) = 0;
  v1 = OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_quickLookCache;
  type metadata accessor for PhotosGridQuickLookDataSource.PreviewsCache();
  *(v0 + v1) = PhotosGridQuickLookDataSource.PreviewsCache.__allocating_init()();
  v2 = (v0 + OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_pxScrollLogIndent);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_hasAppeared) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_isScrollingToInitialPosition) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_isPreservingScrollPosition) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_isProgramaticallyAdjustingScrolling) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_isUpdatingSafeAreaInsets) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_hasLaidOutSubviews) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_hasScrollViewLaidOutSubviews) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t _sScTss5NeverORs_rlE9immediate4name8priority18executorPreference9operationScTyxABGSSSg_ScPSgSch_pSgnxyYaYAcntFZyt_Tt3g5Tf4nngg_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v28 = a5;
  v29 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v14 = 0;
    v16 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  outlined init with copy of TaskPriority?(a3, v13);
  v18 = type metadata accessor for TaskPriority();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    outlined destroy of TaskPriority?(v13);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v19 + 8))(v13, v18);
  }

  if (!a2)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v30;
    *(v25 + 24) = a7;
    swift_unknownObjectRetain();

    if (v16 | v14)
    {
      v36[0] = 0;
      v36[1] = 0;
      v26 = v36;
      v36[2] = v14;
      v36[3] = v16;
      if (a4 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v26 = 0;
      if (a4 == 1)
      {
LABEL_17:
        v23 = swift_task_create();
        if ((isCurrentExecutorWithFlags & 1) == 0)
        {
          return v23;
        }

        goto LABEL_12;
      }
    }

    v35[4] = 6;
    v35[5] = v26;
    v35[6] = a4;
    v35[7] = v28;
    goto LABEL_17;
  }

  v20 = String.utf8CString.getter() + 32;
  v21 = swift_allocObject();
  *(v21 + 16) = v30;
  *(v21 + 24) = a7;
  swift_unknownObjectRetain();

  if (v16 | v14)
  {
    v35[0] = 0;
    v35[1] = 0;
    v22 = v35;
    v35[2] = v14;
    v35[3] = v16;
    if (a4 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v22 = 0;
  if (a4 != 1)
  {
LABEL_10:
    v34[0] = 6;
    v34[1] = v22;
    v34[2] = a4;
    v34[3] = v28;
    v22 = v34;
  }

LABEL_11:
  v31 = 7;
  v32 = v22;
  v33 = v20;
  v23 = swift_task_create();

  if (isCurrentExecutorWithFlags)
  {
LABEL_12:
    swift_task_immediate();
  }

  return v23;
}

BOOL specialized PhotosGridViewController.actionPerformer(_:transitionTo:transitionType:)(void *a1, uint64_t a2)
{
  if (a2 == 2)
  {
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2C0))(v14);
    if ((v15 & 1) == 0)
    {
      v6 = *&v14[2];
      v5 = *&v14[3];
      v8 = *v14;
      v7 = *&v14[1];
      v9 = [a1 popoverPresentationController];
      [v9 setSourceRect_];

      v10 = [a1 popoverPresentationController];
      if (v10)
      {
        v11 = v10;
        v12 = [v2 view];
        [v11 setSourceView_];
      }
    }

    [v2 presentViewController:a1 animated:1 completion:0];
  }

  return a2 == 2;
}

unint64_t lazy protocol witness table accessor for type PhotosGridViewController.FilterOption and conformance PhotosGridViewController.FilterOption(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhotosGridViewController.FilterOption and conformance PhotosGridViewController.FilterOption;
  if (!lazy protocol witness table cache variable for type PhotosGridViewController.FilterOption and conformance PhotosGridViewController.FilterOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhotosGridViewController.FilterOption and conformance PhotosGridViewController.FilterOption);
  }

  return result;
}

uint64_t type metadata completion function for PhotosGridViewController.ViewModel(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t getEnumTagSinglePayload for PhotosGridViewController.FilterOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotosGridViewController.FilterOption(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double __swift_destroy_boxed_opaque_existential_1Tm_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t partial apply for closure #1 in PhotosGridViewController.performActionType(_:completion:)(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result & 1);
  }

  return result;
}

uint64_t type metadata accessor for PXContentFilterState(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t partial apply for closure #1 in closure #1 in closure #1 in PhotosGridViewController.viewIsAppearing(_:)()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in closure #1 in closure #1 in PhotosGridViewController.viewIsAppearing(_:);

  return closure #1 in closure #1 in closure #1 in PhotosGridViewController.viewIsAppearing(_:)(v3, v4, v5, v2);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_1(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0__1;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_82(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_82TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

void partial apply for closure #1 in closure #1 in PhotosGridViewController.viewDidAppear(_:)()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  v19.receiver = v2;
  v19.super_class = type metadata accessor for PhotosGridViewController();
  v4 = objc_msgSendSuper2(&v19, sel_viewDidAppear_, v3);
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xE0))(v4);
  if (v6)
  {
    v7 = v6;
    [v6 contentViewDidAppear_];

    v8 = [v2 navigationController];
    if (v8)
    {
      v9 = v8;
      [v8 setNavigationBarHidden_];
    }

    v10 = (*((*v5 & *v2) + 0x128))();
    if (v10 && (v11 = v10, v12 = [v10 scrollViewController], v11, v13 = objc_msgSend(v12, sel_scrollView), v12, v14 = v13, v13))
    {
      v15 = v14;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = [MEMORY[0x1E696AAA8] currentHandler];
        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIScrollView *UIScrollViewFromPXScrollView(PXScrollView *__strong)"];
        [v16 handleFailureInFunction:v17 file:@"PXScrollView_Deprecated.h" lineNumber:41 description:@"unexpected class"];
      }
    }

    else
    {
      v15 = 0;
    }

    v18 = v15;
    swift_unknownObjectRelease();
    [v18 flashScrollIndicators];
  }

  else
  {
    __break(1u);
  }
}

void partial apply for closure #1 in PhotosGridViewController.populateViewModelActions()(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    PhotosGridViewController.performActionType(_:completion:)(v7, v8, a1, a2);
  }
}

uint64_t partial apply for closure #1 in closure #2 in implicit closure #1 in PhotosGridViewController.beginViewModelObservation()()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in closure #2 in implicit closure #1 in PhotosGridViewController.beginViewModelObservation();

  return closure #1 in closure #2 in implicit closure #1 in PhotosGridViewController.beginViewModelObservation()(v3, v4, v5, v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_101TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double (*partial apply for implicit closure #1 in PhotosGridViewController.beginViewModelObservation()())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return partial apply for closure #2 in implicit closure #1 in PhotosGridViewController.beginViewModelObservation();
}

uint64_t objectdestroy_72Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for closure #1 in closure #2 in implicit closure #1 in PhotosGridViewController.beginContentOffsetObservation()()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in closure #2 in implicit closure #1 in PhotosGridViewController.beginContentOffsetObservation();

  return closure #1 in closure #2 in implicit closure #1 in PhotosGridViewController.beginContentOffsetObservation()(v3, v4, v5, v2);
}

void partial apply for closure #1 in closure #1 in closure #2 in implicit closure #1 in PhotosGridViewController.beginContentOffsetObservation()()
{
  v1[2] = *(v0 + 16);
  PhotosGridViewController.withPreservedScrollPosition<A>(_:)(partial apply for closure #1 in closure #1 in closure #1 in closure #2 in implicit closure #1 in PhotosGridViewController.beginContentOffsetObservation(), v1, MEMORY[0x1E69E7CA8] + 8);
  PhotosGridViewController.scrollToInitialPositionIfNeeded()();
}

uint64_t (*partial apply for implicit closure #1 in PhotosGridViewController.beginContentOffsetObservation()())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return partial apply for closure #2 in implicit closure #1 in PhotosGridViewController.beginContentOffsetObservation();
}

uint64_t _sSSytIegnr_SSIegg_TRTA_0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Bool, @in_guaranteed Error?) -> (@out ())(char a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a1;
  v5 = a2;
  return v3(&v6, &v5);
}

uint64_t DetailsStyleGuide.horizontalTabBarConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DetailsStyleGuide(0) + 20));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v6 = v3[5];
  v14 = v3[4];
  v5 = v14;
  v15 = v6;
  v7 = v3[1];
  v11[0] = *v3;
  v8 = v11[0];
  v11[1] = v7;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  *a1 = v8;
  a1[1] = v7;
  return outlined init with copy of DetailsStyleGuide.TabBarConfiguration(v11, &v10);
}

uint64_t type metadata accessor for DetailsStyleGuide(uint64_t a1)
{
  result = type metadata singleton initialization cache for DetailsStyleGuide;
  if (!type metadata singleton initialization cache for DetailsStyleGuide)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DetailsStyleGuide.participantGridStyleGuide.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DetailsStyleGuide(0) + 24);
  v4 = *(v3 + 176);
  v5 = *(v3 + 208);
  v37 = *(v3 + 192);
  v38 = v5;
  v6 = *(v3 + 112);
  v7 = *(v3 + 144);
  v33 = *(v3 + 128);
  v8 = v33;
  v34 = v7;
  v9 = *(v3 + 144);
  v10 = *(v3 + 176);
  v35 = *(v3 + 160);
  v11 = v35;
  v36 = v10;
  v12 = *(v3 + 48);
  v13 = *(v3 + 80);
  v29 = *(v3 + 64);
  v14 = v29;
  v30 = v13;
  v15 = *(v3 + 80);
  v16 = *(v3 + 112);
  v31 = *(v3 + 96);
  v17 = v31;
  v32 = v16;
  v18 = *(v3 + 16);
  v19 = *(v3 + 48);
  v27 = *(v3 + 32);
  v20 = v27;
  v28 = v19;
  v21 = *(v3 + 16);
  v26[0] = *v3;
  v22 = v26[0];
  v26[1] = v21;
  v23 = *(v3 + 208);
  *(a1 + 192) = v37;
  *(a1 + 208) = v23;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 160) = v11;
  *(a1 + 176) = v4;
  *(a1 + 64) = v14;
  *(a1 + 80) = v15;
  *(a1 + 96) = v17;
  *(a1 + 112) = v6;
  *a1 = v22;
  *(a1 + 16) = v18;
  v39 = *(v3 + 224);
  *(a1 + 224) = *(v3 + 224);
  *(a1 + 32) = v20;
  *(a1 + 48) = v12;
  return outlined init with copy of ParticipantGrid.StyleGuide(v26, v25);
}

uint64_t DetailsStyleGuide.detailsViewControllerStyleGuide.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DetailsStyleGuide(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  *a1 = v5;
  a1[1] = v4;
  a1[2] = v6;
}

uint64_t one-time initialization function for globalListRowBackgroundColor()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9BlendModeOSgMd, &_s7SwiftUI9BlendModeOSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for BlendedColor(0);
  __swift_allocate_value_buffer(v6, static DetailsStyleGuide.globalListRowBackgroundColor);
  v7 = __swift_project_value_buffer(v6, static DetailsStyleGuide.globalListRowBackgroundColor);
  v8 = [objc_opt_self() tertiarySystemFillColor];
  v9 = Color.init(uiColor:)();
  v10 = *MEMORY[0x1E6981DA0];
  v11 = type metadata accessor for BlendMode();
  v12 = *(v11 - 8);
  v13 = *(v12 + 104);
  v13(v5, v10, v11);
  v14 = *(v12 + 56);
  v14(v5, 0, 1, v11);
  v13(v2, *MEMORY[0x1E6981DB8], v11);
  v14(v2, 0, 1, v11);
  return BlendedColor.init(color:lightSchemeBlendMode:darkSchemeBlendMode:)(v9, v5, v2, v7);
}

uint64_t static DetailsStyleGuide.globalListRowBackgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for globalListRowBackgroundColor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for BlendedColor(0);
  v3 = __swift_project_value_buffer(v2, static DetailsStyleGuide.globalListRowBackgroundColor);
  return outlined init with copy of Header.StyleGuide(v3, a1, type metadata accessor for BlendedColor);
}

void *DetailsStyleGuide.mediaItemBadgeSize.unsafeMutableAddressor()
{
  if (one-time initialization token for mediaItemBadgeSize != -1)
  {
    swift_once();
  }

  return &static DetailsStyleGuide.mediaItemBadgeSize;
}

double static DetailsStyleGuide.mediaItemBadgeSize.getter(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t static DetailsStyleGuide.tabContentHorizontalPadding.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  return *a2;
}

uint64_t default argument 1 of DetailsStyleGuide.init(headerStyleGuide:horizontalTabBarConfiguration:participantGridStyleGuide:infoTabStyleGuide:attachmentResultsStyleGuide:detailsViewControllerStyleGuide:)@<X0>(__int128 *a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EAD3FB80;
  v9[2] = xmmword_1EAD3FB70;
  v9[3] = unk_1EAD3FB80;
  v2 = xmmword_1EAD3FB90;
  v3 = *&qword_1EAD3FBA0;
  v9[4] = xmmword_1EAD3FB90;
  v9[5] = *&qword_1EAD3FBA0;
  v4 = static DetailsStyleGuide.TabBarConfiguration.default;
  v5 = unk_1EAD3FB60;
  v9[0] = static DetailsStyleGuide.TabBarConfiguration.default;
  v9[1] = unk_1EAD3FB60;
  a1[2] = xmmword_1EAD3FB70;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return outlined init with copy of DetailsStyleGuide.TabBarConfiguration(v9, &v8);
}

uint64_t default argument 2 of DetailsStyleGuide.init(headerStyleGuide:horizontalTabBarConfiguration:participantGridStyleGuide:infoTabStyleGuide:attachmentResultsStyleGuide:detailsViewControllerStyleGuide:)@<X0>(uint64_t a1@<X8>)
{
  v2 = ParticipantGrid.StyleGuide.default.unsafeMutableAddressor();
  v4 = v2[1];
  v3 = v2[2];
  v23[0] = *v2;
  v23[1] = v4;
  v23[2] = v3;
  v5 = v2[6];
  v7 = v2[3];
  v6 = v2[4];
  v23[5] = v2[5];
  v23[6] = v5;
  v23[3] = v7;
  v23[4] = v6;
  v8 = v2[10];
  v10 = v2[7];
  v9 = v2[8];
  v23[9] = v2[9];
  v23[10] = v8;
  v23[7] = v10;
  v23[8] = v9;
  v12 = v2[12];
  v11 = v2[13];
  v13 = v2[11];
  v24 = *(v2 + 28);
  v23[12] = v12;
  v23[13] = v11;
  v23[11] = v13;
  v14 = v2[13];
  *(a1 + 192) = v2[12];
  *(a1 + 208) = v14;
  *(a1 + 224) = *(v2 + 28);
  v15 = v2[9];
  *(a1 + 128) = v2[8];
  *(a1 + 144) = v15;
  v16 = v2[11];
  *(a1 + 160) = v2[10];
  *(a1 + 176) = v16;
  v17 = v2[5];
  *(a1 + 64) = v2[4];
  *(a1 + 80) = v17;
  v18 = v2[7];
  *(a1 + 96) = v2[6];
  *(a1 + 112) = v18;
  v19 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v19;
  v20 = v2[3];
  *(a1 + 32) = v2[2];
  *(a1 + 48) = v20;
  return outlined init with copy of ParticipantGrid.StyleGuide(v23, v22);
}

uint64_t default argument 3 of DetailsStyleGuide.init(headerStyleGuide:horizontalTabBarConfiguration:participantGridStyleGuide:infoTabStyleGuide:attachmentResultsStyleGuide:detailsViewControllerStyleGuide:)@<X0>(uint64_t a1@<X8>)
{
  v2 = InfoTab.StyleGuide.default.unsafeMutableAddressor();
  swift_beginAccess();
  return outlined init with copy of Header.StyleGuide(v2, a1, type metadata accessor for InfoTab.StyleGuide);
}

uint64_t default argument 5 of DetailsStyleGuide.init(headerStyleGuide:horizontalTabBarConfiguration:participantGridStyleGuide:infoTabStyleGuide:attachmentResultsStyleGuide:detailsViewControllerStyleGuide:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = DetailsViewController.StyleGuide.default.unsafeMutableAddressor();
  v3 = v2[1];
  v4 = v2[2];
  *a1 = *v2;
  a1[1] = v3;
  a1[2] = v4;
}

__n128 DetailsStyleGuide.init(headerStyleGuide:horizontalTabBarConfiguration:participantGridStyleGuide:infoTabStyleGuide:attachmentResultsStyleGuide:detailsViewControllerStyleGuide:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X5>, uint64_t a7@<X8>)
{
  v28 = *a6;
  v12 = a6[1].n128_u64[0];
  _s20CommunicationDetails6HeaderV10StyleGuideVWObTm_0(a1, a7, type metadata accessor for Header.StyleGuide);
  v13 = type metadata accessor for DetailsStyleGuide(0);
  v14 = (a7 + v13[5]);
  v15 = a2[3];
  v14[2] = a2[2];
  v14[3] = v15;
  v16 = a2[5];
  v14[4] = a2[4];
  v14[5] = v16;
  v17 = a2[1];
  *v14 = *a2;
  v14[1] = v17;
  v18 = a7 + v13[6];
  v19 = *(a3 + 208);
  *(v18 + 192) = *(a3 + 192);
  *(v18 + 208) = v19;
  *(v18 + 224) = *(a3 + 224);
  v20 = *(a3 + 144);
  *(v18 + 128) = *(a3 + 128);
  *(v18 + 144) = v20;
  v21 = *(a3 + 176);
  *(v18 + 160) = *(a3 + 160);
  *(v18 + 176) = v21;
  v22 = *(a3 + 80);
  *(v18 + 64) = *(a3 + 64);
  *(v18 + 80) = v22;
  v23 = *(a3 + 112);
  *(v18 + 96) = *(a3 + 96);
  *(v18 + 112) = v23;
  v24 = *(a3 + 16);
  *v18 = *a3;
  *(v18 + 16) = v24;
  v25 = *(a3 + 48);
  *(v18 + 32) = *(a3 + 32);
  *(v18 + 48) = v25;
  _s20CommunicationDetails6HeaderV10StyleGuideVWObTm_0(a4, a7 + v13[9], type metadata accessor for InfoTab.StyleGuide);
  _s20CommunicationDetails6HeaderV10StyleGuideVWObTm_0(a5, a7 + v13[8], type metadata accessor for AttachmentResults.StyleGuide);
  v26 = (a7 + v13[7]);
  result = v28;
  *v26 = v28;
  v26[1].n128_u64[0] = v12;
  return result;
}

uint64_t DetailsStyleGuide.horizontalTabControlStyleGuide.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DetailsStyleGuide(0) + 20));
  v4 = v3[10];
  if (v4 < 0)
  {
    v17 = HorizontalTabControl.StyleGuide.default.unsafeMutableAddressor();
    v18 = v17[1];
    v28 = *v17;
    v29 = v18;
    v19 = v17[5];
    v21 = v17[2];
    v20 = v17[3];
    v32 = v17[4];
    v33 = v19;
    v30 = v21;
    v31 = v20;
    v22 = v17[1];
    *a1 = *v17;
    *(a1 + 16) = v22;
    v23 = v17[2];
    v24 = v17[3];
    v25 = v17[5];
    *(a1 + 64) = v17[4];
    *(a1 + 80) = v25;
    *(a1 + 32) = v23;
    *(a1 + 48) = v24;
  }

  else
  {
    v5 = v3[11];
    v7 = v3[8];
    v6 = v3[9];
    v9 = v3[6];
    v8 = v3[7];
    v11 = v3[4];
    v10 = v3[5];
    v12 = v3[2];
    v13 = v3[3];
    v16 = v3;
    v15 = *v3;
    v14 = v16[1];
    *a1 = v15;
    *(a1 + 8) = v14;
    *(a1 + 16) = v12;
    *(a1 + 24) = v13;
    *(a1 + 32) = v11;
    *(a1 + 40) = v10;
    *(a1 + 48) = v9;
    *(a1 + 56) = v8;
    *(a1 + 64) = v7;
    *(a1 + 72) = v6;
    *(a1 + 80) = v4;
    *(a1 + 88) = v5;
    *&v28 = v15;
    *(&v28 + 1) = v14;
    *&v29 = v12;
    *(&v29 + 1) = v13;
    *&v30 = v11;
    *(&v30 + 1) = v10;
    *&v31 = v9;
    *(&v31 + 1) = v8;
    *&v32 = v7;
    *(&v32 + 1) = v6;
    *&v33 = v4;
    *(&v33 + 1) = v5;
  }

  return outlined init with copy of HorizontalTabControl.StyleGuide(&v28, &v27);
}

uint64_t one-time initialization function for faceTimeGroup()
{
  v0 = type metadata accessor for AttachmentResults.StyleGuide(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for InfoTab.StyleGuide(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Header.StyleGuide(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DetailsStyleGuide(0);
  __swift_allocate_value_buffer(v9, static DetailsStyleGuide.faceTimeGroup);
  v10 = __swift_project_value_buffer(v9, static DetailsStyleGuide.faceTimeGroup);
  v11 = Header.StyleGuide.faceTimeGroup.unsafeMutableAddressor();
  outlined init with copy of Header.StyleGuide(v11, v8, type metadata accessor for Header.StyleGuide);
  if (one-time initialization token for poster != -1)
  {
    swift_once();
  }

  v53 = xmmword_1EAD3FBE0;
  v54 = unk_1EAD3FBF0;
  v55 = xmmword_1EAD3FC00;
  v56 = *&qword_1EAD3FC10;
  v51 = static DetailsStyleGuide.TabBarConfiguration.poster;
  v52 = *&qword_1EAD3FBD0;
  outlined init with copy of DetailsStyleGuide.TabBarConfiguration(&v51, &v57);
  v12 = ParticipantGrid.StyleGuide.default.unsafeMutableAddressor();
  v14 = v12[1];
  v13 = v12[2];
  v57 = *v12;
  v58 = v14;
  v59 = v13;
  v15 = v12[6];
  v17 = v12[3];
  v16 = v12[4];
  v62 = v12[5];
  v63 = v15;
  v60 = v17;
  v61 = v16;
  v18 = v12[10];
  v20 = v12[7];
  v19 = v12[8];
  v66 = v12[9];
  v67 = v18;
  v64 = v20;
  v65 = v19;
  v22 = v12[12];
  v21 = v12[13];
  v23 = v12[11];
  v71 = *(v12 + 28);
  v69 = v22;
  v70 = v21;
  v68 = v23;
  outlined init with copy of ParticipantGrid.StyleGuide(&v57, &v50);
  v24 = InfoTab.StyleGuide.default.unsafeMutableAddressor();
  swift_beginAccess();
  outlined init with copy of Header.StyleGuide(v24, v5, type metadata accessor for InfoTab.StyleGuide);
  v25 = AttachmentResults.StyleGuide.default.unsafeMutableAddressor();
  outlined init with copy of Header.StyleGuide(v25, v2, type metadata accessor for AttachmentResults.StyleGuide);
  v26 = DetailsViewController.StyleGuide.default.unsafeMutableAddressor();
  v28 = *v26;
  v27 = v26[1];
  v29 = v26[2];
  _s20CommunicationDetails6HeaderV10StyleGuideVWObTm_0(v8, v10, type metadata accessor for Header.StyleGuide);
  v30 = (v10 + v9[5]);
  v31 = v52;
  *v30 = v51;
  v30[1] = v31;
  v32 = v53;
  v33 = v54;
  v34 = v56;
  v30[4] = v55;
  v30[5] = v34;
  v30[2] = v32;
  v30[3] = v33;
  v35 = v10 + v9[6];
  v36 = v68;
  v37 = v69;
  v38 = v70;
  *(v35 + 224) = v71;
  *(v35 + 192) = v37;
  *(v35 + 208) = v38;
  *(v35 + 176) = v36;
  v39 = v64;
  v40 = v65;
  v41 = v67;
  *(v35 + 144) = v66;
  *(v35 + 160) = v41;
  *(v35 + 112) = v39;
  *(v35 + 128) = v40;
  v42 = v60;
  v43 = v61;
  v44 = v63;
  *(v35 + 80) = v62;
  *(v35 + 96) = v44;
  *(v35 + 48) = v42;
  *(v35 + 64) = v43;
  v46 = v58;
  v45 = v59;
  *v35 = v57;
  *(v35 + 16) = v46;
  *(v35 + 32) = v45;
  _s20CommunicationDetails6HeaderV10StyleGuideVWObTm_0(v5, v10 + v9[9], type metadata accessor for InfoTab.StyleGuide);
  _s20CommunicationDetails6HeaderV10StyleGuideVWObTm_0(v2, v10 + v9[8], type metadata accessor for AttachmentResults.StyleGuide);
  v47 = (v10 + v9[7]);
  *v47 = v28;
  v47[1] = v27;
  v47[2] = v29;
}

__int128 *DetailsStyleGuide.TabBarConfiguration.poster.unsafeMutableAddressor()
{
  if (one-time initialization token for poster != -1)
  {
    swift_once();
  }

  return &static DetailsStyleGuide.TabBarConfiguration.poster;
}

uint64_t DetailsStyleGuide.globalListRowBackgroundColor.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return __swift_project_value_buffer(v5, a3);
}

uint64_t static DetailsStyleGuide.default.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for DetailsStyleGuide(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return outlined init with copy of Header.StyleGuide(v7, a4, type metadata accessor for DetailsStyleGuide);
}

uint64_t _s20CommunicationDetails6HeaderV10StyleGuideVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Header.StyleGuide(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static DetailsStyleGuide.TabBarConfiguration.default.getter@<X0>(__int128 *a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EAD3FB80;
  v9[2] = xmmword_1EAD3FB70;
  v9[3] = unk_1EAD3FB80;
  v2 = xmmword_1EAD3FB90;
  v3 = *&qword_1EAD3FBA0;
  v9[4] = xmmword_1EAD3FB90;
  v9[5] = *&qword_1EAD3FBA0;
  v4 = static DetailsStyleGuide.TabBarConfiguration.default;
  v5 = unk_1EAD3FB60;
  v9[0] = static DetailsStyleGuide.TabBarConfiguration.default;
  v9[1] = unk_1EAD3FB60;
  a1[2] = xmmword_1EAD3FB70;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return outlined init with copy of DetailsStyleGuide.TabBarConfiguration(v9, &v8);
}

__n128 one-time initialization function for poster()
{
  v0 = SegmentedTabControl.StyleGuide.poster.unsafeMutableAddressor();
  v1 = v0[1].n128_i64[0];
  v3 = v0[1].n128_i8[8];
  result = *v0;
  static DetailsStyleGuide.TabBarConfiguration.poster = *v0;
  qword_1EAD3FBD0 = v1;
  byte_1EAD3FBD8 = v3;
  *&xmmword_1EAD3FC00 = 0;
  qword_1EAD3FC10 = 0x8000000000000000;
  return result;
}

uint64_t static DetailsStyleGuide.TabBarConfiguration.poster.getter@<X0>(__int128 *a1@<X8>)
{
  if (one-time initialization token for poster != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EAD3FBF0;
  v9[2] = xmmword_1EAD3FBE0;
  v9[3] = unk_1EAD3FBF0;
  v2 = xmmword_1EAD3FC00;
  v3 = *&qword_1EAD3FC10;
  v9[4] = xmmword_1EAD3FC00;
  v9[5] = *&qword_1EAD3FC10;
  v4 = static DetailsStyleGuide.TabBarConfiguration.poster;
  v5 = *&qword_1EAD3FBD0;
  v9[0] = static DetailsStyleGuide.TabBarConfiguration.poster;
  v9[1] = *&qword_1EAD3FBD0;
  a1[2] = xmmword_1EAD3FBE0;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return outlined init with copy of DetailsStyleGuide.TabBarConfiguration(v9, &v8);
}

uint64_t type metadata completion function for DetailsStyleGuide(uint64_t a1)
{
  result = type metadata accessor for Header.StyleGuide(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AttachmentResults.StyleGuide(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for InfoTab.StyleGuide(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DetailsStyleGuide.TabBarConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for DetailsStyleGuide.TabBarConfiguration(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 96) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 2 * -a2;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      return result;
    }

    *(a1 + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for DetailsStyleGuide.TabBarConfiguration(uint64_t result, uint64_t a2)
{
  v2 = *(result + 80) & 1 | (a2 << 63);
  *(result + 64) &= 1uLL;
  *(result + 80) = v2;
  return result;
}

uint64_t SegmentedTabControl.StyleGuide.init(tabBarHorizontalEdgePadding:tabBarVerticalEdgePadding:overrideUserInterfaceStyle:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = result;
  *(a3 + 24) = a2 & 1;
  return result;
}

double one-time initialization function for default()
{
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in default argument 1 of SegmentedTabControl.StyleGuide.init(tabBarHorizontalEdgePadding:tabBarVerticalEdgePadding:overrideUserInterfaceStyle:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v1, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, MEMORY[0x1E69E7DE0]);
  result = v1;
  *&static SegmentedTabControl.StyleGuide.default = 0x4030000000000000;
  *(&static SegmentedTabControl.StyleGuide.default + 1) = v1;
  qword_1EAD3FC40 = 0;
  byte_1EAD3FC48 = 1;
  return result;
}

double static SegmentedTabControl.StyleGuide.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1EAD3FC40;
  v2 = byte_1EAD3FC48;
  result = *&static SegmentedTabControl.StyleGuide.default;
  *a1 = static SegmentedTabControl.StyleGuide.default;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  return result;
}

double one-time initialization function for poster()
{
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in default argument 1 of SegmentedTabControl.StyleGuide.init(tabBarHorizontalEdgePadding:tabBarVerticalEdgePadding:overrideUserInterfaceStyle:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v1, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, MEMORY[0x1E69E7DE0]);
  result = v1;
  *&static SegmentedTabControl.StyleGuide.poster = 0x4030000000000000;
  *(&static SegmentedTabControl.StyleGuide.poster + 1) = v1;
  qword_1EAD3FC70 = 2;
  byte_1EAD3FC78 = 0;
  return result;
}

__int128 *SegmentedTabControl.StyleGuide.poster.unsafeMutableAddressor()
{
  if (one-time initialization token for poster != -1)
  {
    swift_once();
  }

  return &static SegmentedTabControl.StyleGuide.poster;
}

double static SegmentedTabControl.StyleGuide.poster.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for poster != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1EAD3FC70;
  v2 = byte_1EAD3FC78;
  result = *&static SegmentedTabControl.StyleGuide.poster;
  *a1 = static SegmentedTabControl.StyleGuide.poster;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SegmentedTabControl.StyleGuide(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SegmentedTabControl.StyleGuide(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

void type metadata accessor for UIUserInterfaceStyle()
{
  if (!lazy cache variable for type metadata for UIUserInterfaceStyle)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for UIUserInterfaceStyle);
    }
  }
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = MEMORY[0x1EEDC3280](_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = MEMORY[0x1EEDC42D8](percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}