id specialized closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  result = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SRyAIGTt2B5(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  return result;
}

id closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  return partial apply for specialized closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)(a1, a2, a3);
}

{
  return partial apply for specialized closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)(a1, a2, a3);
}

{
  return _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA464509excluding8encodingSSSgShys5UInt8VG_SSAAE0D0VtFAFSRyAHGXEfU_SS_TG5TA_0(a1, a2, a3);
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v6 = (a4[7] + 16 * result);
  *v6 = a3;
  v6[1] = a6;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

id TimeZoneCache.State.bridgedOffsetFixed(_:)(uint64_t a1)
{
  v4 = v1;
  v6 = *(v1 + 88);
  if (*(v6 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v8)
    {
      v2 = *(*(v6 + 56) + 8 * v7);
      v9 = v2;
      return v2;
    }
  }

  v10 = *(v4 + 40);
  if (!*(v10 + 16) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v12 & 1) == 0))
  {
    type metadata accessor for _TimeZoneGMTICU();
    swift_allocObject();
    v20 = _TimeZoneGMTICU.init(secondsFromGMT:)(a1);
    if (!v20)
    {
      return 0;
    }

    v30 = v20;
    v19 = a1;
    if (a1 < 0)
    {
      v19 = -a1;
      if (__OFSUB__(0, a1))
      {
        goto LABEL_40;
      }
    }

    v3 = lazy protocol witness table accessor for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating(&lazy protocol witness table cache variable for type _TimeZoneGMTICU and conformance _TimeZoneGMTICU, type metadata accessor for _TimeZoneGMTICU, &protocol conformance descriptor for _TimeZoneGMTICU);
    v31 = type metadata accessor for _NSSwiftTimeZone();
    v32 = objc_allocWithZone(v31);
    v33 = &v32[OBJC_IVAR____NSSwiftTimeZone_timeZone];
    *v33 = v30;
    v33[1] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMR);
    v34 = swift_allocObject();
    *(v34 + 32) = 0;
    *(v34 + 16) = xmmword_18122E880;
    *&v32[OBJC_IVAR____NSSwiftTimeZone_lock] = v34;
    v106.receiver = v32;
    v106.super_class = v31;

    v2 = objc_msgSendSuper2(&v106, sel_init);
    if (__ROR8__(0xFEDCBA987654321 * v19 + 0x91A2B3C4D5E6F8, 3) > 0x2468ACF13579BEuLL)
    {

      return v2;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105 = *(v4 + 40);
    v36 = v105;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    v38 = v105[2];
    v39 = (v37 & 1) == 0;
    v24 = __OFADD__(v38, v39);
    v40 = v38 + v39;
    if (v24)
    {
      goto LABEL_41;
    }

    v19 = v37;
    if (v105[3] >= v40)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v41 = v105;
        if (v37)
        {
LABEL_21:
          v43 = (*(v41 + 56) + 16 * v20);
          *v43 = v30;
          v43[1] = v3;
          swift_unknownObjectRelease();
          goto LABEL_28;
        }
      }

      else
      {
        v95 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation17_TimeZoneProtocol_pGMd, &_ss18_DictionaryStorageCySi10Foundation17_TimeZoneProtocol_pGMR);
        v69 = static _DictionaryStorage.copy(original:)();
        v41 = v69;
        if (v105[2])
        {
          v70 = (v69 + 64);
          v98 = (v105 + 8);
          v71 = ((1 << *(v41 + 32)) + 63) >> 6;
          if (v41 != v105 || v70 >= &v98[8 * v71])
          {
            memmove(v70, v98, 8 * v71);
          }

          __srca = 0;
          *(v41 + 16) = v105[2];
          v72 = 1 << *(v36 + 32);
          v73 = v36[8];
          v74 = -1;
          if (v72 < 64)
          {
            v74 = ~(-1 << v72);
          }

          v75 = v74 & v73;
          v76 = (v72 + 63) >> 6;
          if ((v74 & v73) != 0)
          {
            do
            {
              v77 = __clz(__rbit64(v75));
              v75 &= v75 - 1;
              v78 = __srca;
LABEL_73:
              v81 = v77 | (v78 << 6);
              v82 = *(v36[7] + 16 * v81);
              *(*(v41 + 48) + 8 * v81) = *(v36[6] + 8 * v81);
              *(*(v41 + 56) + 16 * v81) = v82;
              swift_unknownObjectRetain();
            }

            while (v75);
          }

          v79 = __srca;
          while (1)
          {
            v78 = v79 + 1;
            if (__OFADD__(v79, 1))
            {
              break;
            }

            if (v78 >= v76)
            {
              goto LABEL_89;
            }

            v80 = *&v98[8 * v78];
            ++v79;
            if (v80)
            {
              v77 = __clz(__rbit64(v80));
              v75 = (v80 - 1) & v80;
              __srca = v78;
              goto LABEL_73;
            }
          }

LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

LABEL_89:

        v20 = v95;
        if (v19)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v40, isUniquelyReferenced_nonNull_native);
      v41 = v105;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
      if ((v19 & 1) != (v42 & 1))
      {
        goto LABEL_96;
      }

      if (v19)
      {
        goto LABEL_21;
      }
    }

    specialized _NativeDictionary._insert(at:key:value:)(v20, a1, v30, v41);
LABEL_28:
    *(v4 + 40) = v41;
    v3 = v2;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v105 = *(v4 + 88);
    v45 = v105;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    v47 = v105[2];
    v48 = (v46 & 1) == 0;
    v24 = __OFADD__(v47, v48);
    v49 = v47 + v48;
    if (v24)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      v97 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation16_NSSwiftTimeZoneCGMd, &_ss18_DictionaryStorageCySi10Foundation16_NSSwiftTimeZoneCGMR);
      v54 = static _DictionaryStorage.copy(original:)();
      v26 = v54;
      if (!*(v19 + 16))
      {
LABEL_58:

        v20 = v97;
        if (v3)
        {
          goto LABEL_10;
        }

        goto LABEL_24;
      }

      v55 = (v54 + 64);
      __src = (v19 + 64);
      v56 = ((1 << *(v26 + 32)) + 63) >> 6;
      if (v26 != v19 || v55 >= &__src[8 * v56])
      {
        memmove(v55, __src, 8 * v56);
      }

      v57 = 0;
      *(v26 + 16) = *(v19 + 16);
      v58 = 1 << *(v19 + 32);
      v59 = *(v19 + 64);
      v60 = -1;
      if (v58 < 64)
      {
        v60 = ~(-1 << v58);
      }

      v61 = v60 & v59;
      v62 = (v58 + 63) >> 6;
      if ((v60 & v59) != 0)
      {
        do
        {
          v63 = __clz(__rbit64(v61));
          v61 &= v61 - 1;
LABEL_56:
          v66 = v63 | (v57 << 6);
          v67 = *(*(v19 + 56) + 8 * v66);
          *(*(v26 + 48) + 8 * v66) = *(*(v19 + 48) + 8 * v66);
          *(*(v26 + 56) + 8 * v66) = v67;
          v68 = v67;
        }

        while (v61);
      }

      v64 = v57;
      while (1)
      {
        v57 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          break;
        }

        if (v57 >= v62)
        {
          goto LABEL_58;
        }

        v65 = *&__src[8 * v57];
        ++v64;
        if (v65)
        {
          v63 = __clz(__rbit64(v65));
          v61 = (v65 - 1) & v65;
          goto LABEL_56;
        }
      }

      __break(1u);
      goto LABEL_94;
    }

    v50 = v46;
    if (v105[3] >= v49)
    {
      if (v44)
      {
        v26 = v105;
        if (v46)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v96 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation16_NSSwiftTimeZoneCGMd, &_ss18_DictionaryStorageCySi10Foundation16_NSSwiftTimeZoneCGMR);
        v83 = static _DictionaryStorage.copy(original:)();
        v26 = v83;
        if (v105[2])
        {
          v84 = (v83 + 64);
          v99 = (v105 + 8);
          v85 = ((1 << *(v26 + 32)) + 63) >> 6;
          if (v26 != v105 || v84 >= &v99[8 * v85])
          {
            memmove(v84, v99, 8 * v85);
          }

          v86 = 0;
          *(v26 + 16) = v105[2];
          v87 = 1 << *(v45 + 32);
          v88 = -1;
          if (v87 < 64)
          {
            v88 = ~(-1 << v87);
          }

          v89 = (v87 + 63) >> 6;
          v90 = v88 & v45[8];
          if (v90)
          {
            do
            {
LABEL_87:
              __srcc = (v90 - 1) & v90;
              v92 = __clz(__rbit64(v90)) | (v86 << 6);
              v93 = *(v45[7] + 8 * v92);
              *(*(v26 + 48) + 8 * v92) = *(v45[6] + 8 * v92);
              *(*(v26 + 56) + 8 * v92) = v93;
              v94 = v93;
              v90 = __srcc;
            }

            while (__srcc);
          }

          v91 = v86;
          while (1)
          {
            v86 = v91 + 1;
            if (__OFADD__(v91, 1))
            {
              goto LABEL_95;
            }

            if (v86 >= v89)
            {
              break;
            }

            v90 = *&v99[8 * v86];
            ++v91;
            if (v90)
            {
              goto LABEL_87;
            }
          }
        }

        v20 = v96;
        if (v50)
        {
LABEL_32:
          v52 = *(v26 + 56);
          v29 = *(v52 + 8 * v20);
          *(v52 + 8 * v20) = v3;

          goto LABEL_33;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, v44);
      v26 = v105;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
      if ((v50 & 1) != (v51 & 1))
      {
        goto LABEL_96;
      }

      if (v50)
      {
        goto LABEL_32;
      }
    }

    specialized _NativeDictionary._insert(at:key:value:)(v20, a1, v3, v26);

    goto LABEL_34;
  }

  v13 = v11;
  v14 = *(v10 + 56);
  v15 = type metadata accessor for _NSSwiftTimeZone();
  *__srcb = *(v14 + 16 * v13);
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____NSSwiftTimeZone_timeZone] = *__srcb;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMR);
  v17 = swift_allocObject();
  *(v17 + 32) = 0;
  *(v17 + 16) = xmmword_18122E880;
  *&v16[OBJC_IVAR____NSSwiftTimeZone_lock] = v17;
  v104.receiver = v16;
  v104.super_class = v15;
  swift_unknownObjectRetain_n();
  v2 = objc_msgSendSuper2(&v104, sel_init);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *(v4 + 88);
  v19 = v105;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v22 = *(v19 + 16);
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  LOBYTE(v3) = v21;
  if (*(v19 + 24) >= v25)
  {
    if (v18)
    {
      v26 = v19;
      if (v21)
      {
        goto LABEL_10;
      }

      goto LABEL_24;
    }

    goto LABEL_43;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, v18);
  v26 = v105;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v3 & 1) == (v27 & 1))
  {
    if (v3)
    {
LABEL_10:
      v28 = *(v26 + 56);
      v29 = *(v28 + 8 * v20);
      *(v28 + 8 * v20) = v2;
      swift_unknownObjectRelease();

LABEL_33:
LABEL_34:
      *(v4 + 88) = v26;
      return v2;
    }

LABEL_24:
    specialized _NativeDictionary._insert(at:key:value:)(v20, a1, v2, v26);
    swift_unknownObjectRelease();
    v29 = v2;
    goto LABEL_33;
  }

LABEL_96:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in _NSSwiftCalendar.timeZone.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v5 = static TimeZoneCache.cache;
    os_unfair_lock_lock((static TimeZoneCache.cache + 120));
    if (*(v5 + 32))
    {
      a3 = *(v5 + 40);
      v4 = *(v5 + 32);
    }

    else
    {
      v4 = *(v5 + 16);
      if (v4)
      {
        a3 = *(v5 + 24);
        swift_unknownObjectRetain();
      }

      else
      {
        TimeZoneCache.State.findCurrentTimeZone()(&v7);
        v4 = v7;
        a3 = v8;
        *(v5 + 16) = v7;
        *(v5 + 24) = a3;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v5 + 120));
  }

  v7 = v4;
  v8 = a3;
  swift_unknownObjectRetain();
  return Calendar.timeZone.setter(&v7);
}

uint64_t Calendar.timeZone.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v14 = *a1;
  v15 = v4;
  v5 = v1[1];
  ObjectType = swift_getObjectType();
  (*(v5 + 48))(&v13, ObjectType, v5);
  v12 = v13;
  v7 = specialized static TimeZone.== infix(_:_:)(&v14, &v12);
  swift_unknownObjectRelease();
  if (v7)
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
    v15 = 0;
    *&v13 = v3;
    *(&v13 + 1) = v4;
    v9 = (*(v5 + 112))(&v14, &v13, 0, 1, 0, 1, ObjectType, v5);
    v11 = v10;
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    *v2 = v9;
    v2[1] = v11;
  }

  return result;
}

uint64_t _CalendarGregorian.copy(changingLocale:changingTimeZone:changingFirstWeekday:changingMinimumDaysInFirstWeek:)(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v10 = *a1;
  v27 = a1[1];
  if (*a2)
  {
    v24 = a2[1];
    v11 = *a2;
    v12 = *a1;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *(v6 + 112);
    v24 = *(v6 + 120);
    swift_unknownObjectRetain();
    v12 = v10;
    if (v10)
    {
LABEL_3:
      if (a4)
      {
        goto LABEL_4;
      }

LABEL_8:
      v25 = 0;
      if ((a6 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v12 = *(v6 + 96);
  v27 = *(v6 + 104);
  swift_unknownObjectRetain();
  if ((a4 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  a3 = *(v6 + 128);
  v25 = *(v6 + 136);
  if ((a6 & 1) == 0)
  {
LABEL_5:
    v23 = a5;
    v26 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v23 = *(v6 + 144);
  v26 = *(v6 + 152);
LABEL_10:
  v13 = *(v6 + 88);
  v14 = swift_allocObject();
  v15 = 0;
  v16 = 0;
  inited = 0;
  v18 = 0;
  *(v14 + 48) = 2299161;
  *(v14 + 80) = 0x4290000000000000;
  *(v14 + 136) = 1;
  *(v14 + 152) = 1;
  *(v14 + 16) = xmmword_181232B40;
  *(v14 + 32) = xmmword_181232B50;
  *(v14 + 128) = 0;
  *(v14 + 96) = 0;
  *(v14 + 104) = 0;
  *(v14 + 144) = 0;
  if (v13 == 7)
  {
    type metadata accessor for _LocaleUnlocalized();
    inited = swift_initStaticObject();
    v18 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian(&lazy protocol witness table cache variable for type _LocaleUnlocalized and conformance _LocaleUnlocalized, 255, type metadata accessor for _LocaleUnlocalized, &protocol conformance descriptor for _LocaleUnlocalized);
    v16 = 2;
    v15 = 4;
  }

  *(v14 + 112) = v11;
  *(v14 + 120) = v24;
  *(v14 + 56) = xmmword_181232B60;
  *(v14 + 72) = 0xC208951B28000000;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v12)
  {
    swift_unknownObjectRelease();
    v18 = v27;
  }

  else
  {
    v12 = inited;
  }

  swift_unknownObjectRelease();
  *(v14 + 96) = v12;
  *(v14 + 104) = v18;
  v20 = v25;
  if ((a3 - 8) < 0xFFFFFFFFFFFFFFF9)
  {
    v20 = 1;
  }

  if (v20 != 1)
  {
    *(v14 + 128) = a3;
    *(v14 + 136) = 0;
    if (v26)
    {
      if (v13 != 7)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    goto LABEL_25;
  }

  if (v13 == 7)
  {
    *(v14 + 128) = v16;
    *(v14 + 136) = 0;
    if (v26)
    {
LABEL_30:
      *(v14 + 144) = v15;
      *(v14 + 152) = 0;
      goto LABEL_31;
    }

LABEL_25:
    v21 = 7;
    if (v23 < 7)
    {
      v21 = v23;
    }

    if (v21 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v21;
    }

    goto LABEL_30;
  }

  if ((v26 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_31:
  *(v14 + 88) = v13;
  lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian(&lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian, v19, type metadata accessor for _CalendarGregorian, &protocol conformance descriptor for _CalendarGregorian);
  return v14;
}

char *_NSSwiftCalendar.init(checkedCalendarIdentifier:)(void *a1)
{
  v2 = v1;
  static Calendar._fromNSCalendarIdentifier(_:)(a1, v53);
  v4 = LOBYTE(v53[0]);
  if (LOBYTE(v53[0]) == 27)
  {

    type metadata accessor for _NSSwiftCalendar();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v5 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v8 & 1) != 0))
  {
    v47 = *(*(v6 + 56) + 16 * v7);
    v9 = *(*(v6 + 56) + 16 * v7);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v5 + 24));
    if (v9)
    {
      goto LABEL_44;
    }

    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    os_unfair_lock_unlock((v5 + 24));
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  if (v4 != 7)
  {
    v10 = type metadata accessor for _CalendarICU();
    v11 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
    v12 = type metadata accessor for _CalendarICU;
    v13 = &protocol conformance descriptor for _CalendarICU;
    goto LABEL_14;
  }

LABEL_12:
  v10 = type metadata accessor for _CalendarGregorian();
  v11 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
  v12 = type metadata accessor for _CalendarGregorian;
  v13 = &protocol conformance descriptor for _CalendarGregorian;
LABEL_14:
  v14 = lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(v11, v12, v13);
  v54 = v4;
  v53[0] = 0;
  v53[1] = 0;
  v52[0] = 0;
  v52[1] = 0;
  v50 = 0;
  v51 = 1;
  v15 = (*(v14 + 16))(&v54, v53, v52, 0, 1, 0, 1, &v50, v10, v14);
  os_unfair_lock_lock((v5 + 24));
  v16 = *(v5 + 16);
  if (*(v16 + 16))
  {
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    if (v18)
    {
      v19 = *(*(v16 + 56) + 16 * v17);
LABEL_43:
      v47 = v19;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v5 + 24));
      swift_unknownObjectRelease();
LABEL_44:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy10Foundation8CalendarVSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy10Foundation8CalendarVSo16os_unfair_lock_sVGMR);
      v41 = swift_allocObject();
      *(v41 + 32) = 0;
      *(v41 + 16) = v47;
      *&v2[OBJC_IVAR____NSSwiftCalendar__lock] = v41;
      v49.receiver = v2;
      v49.super_class = type metadata accessor for _NSSwiftCalendar();
      v42 = objc_msgSendSuper2(&v49, sel_initWithCheckedCalendarIdentifier_, a1);

      if (v42)
      {

        return v42;
      }

      return 0;
    }
  }

  v48 = v10;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53[0] = *(v5 + 16);
  v21 = v53[0];
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  v24 = *(v21 + 16);
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v10) = v23;
    if (*(v21 + 24) < v27)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
      v28 = v53[0];
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
      if ((v10 & 1) == (v29 & 1))
      {
        goto LABEL_23;
      }

      v22 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v28 = v21;
LABEL_23:
      if (v10)
      {
LABEL_24:
        v30 = (*(v28 + 56) + 16 * v22);
        *v30 = v15;
        v30[1] = v14;
        swift_unknownObjectRelease();
LABEL_42:
        *(v5 + 16) = v28;
        *&v19 = v15;
        *(&v19 + 1) = v14;
        goto LABEL_43;
      }

LABEL_41:
      specialized _NativeDictionary._insert(at:key:value:)(v22, v4, v15, v28, v48, v14);
      goto LABEL_42;
    }
  }

  v44 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd, "nC)");
  v31 = static _DictionaryStorage.copy(original:)();
  v28 = v31;
  if (!*(v21 + 16))
  {
LABEL_40:

    v22 = v44;
    if (v10)
    {
      goto LABEL_24;
    }

    goto LABEL_41;
  }

  result = (v31 + 64);
  __src = (v21 + 64);
  v33 = ((1 << *(v28 + 32)) + 63) >> 6;
  if (v28 != v21 || result >= &__src[8 * v33])
  {
    result = memmove(result, __src, 8 * v33);
  }

  v34 = 0;
  *(v28 + 16) = *(v21 + 16);
  v35 = 1 << *(v21 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v43 = (v35 + 63) >> 6;
  v37 = v36 & *(v21 + 64);
  if (v37)
  {
    do
    {
LABEL_38:
      v46 = (v37 - 1) & v37;
      v39 = __clz(__rbit64(v37)) | (v34 << 6);
      v40 = *(*(v21 + 56) + 16 * v39);
      *(*(v28 + 48) + v39) = *(*(v21 + 48) + v39);
      *(*(v28 + 56) + 16 * v39) = v40;
      result = swift_unknownObjectRetain();
      v37 = v46;
    }

    while (v46);
  }

  v38 = v34;
  while (1)
  {
    v34 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v34 >= v43)
    {
      goto LABEL_40;
    }

    v37 = *&__src[8 * v34];
    ++v38;
    if (v37)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
  return result;
}

NSCompoundPredicate *buildANDPredicate(void *a1, void *a2)
{
  if ((objc_opt_isKindOfClass() & 1) != 0 && [a1 compoundPredicateType] == 1)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0 || [a2 compoundPredicateType] != 1)
    {
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSend(a1, "subpredicates")}];
      [v5 addObject:a2];
      goto LABEL_13;
    }

    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSend(a1, "subpredicates")}];
  }

  else
  {
    if ((objc_opt_isKindOfClass() & 1) == 0 || [a2 compoundPredicateType] != 1)
    {
      v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{a1, a2, 0}];
      goto LABEL_13;
    }

    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a1, 0}];
  }

  v5 = v4;
  v6 = [a2 subpredicates];
  if (v6)
  {
    [v5 addObjectsFromArray:v6];
  }

LABEL_13:
  v7 = [[NSCompoundPredicate alloc] initWithType:1 subpredicates:v5];

  return v7;
}

uint64_t specialized static RFC3986Parser.parseAuthority(_:into:allowEmptyScheme:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a2;
  do
  {
    if (result == v5)
    {
      goto LABEL_13;
    }

    v6 = v5 - 1;
    v7 = *(a3 - 1 + v5--);
  }

  while (v7 != 64);
  if (v6 < result)
  {
    goto LABEL_44;
  }

  v8 = 40;
  v9 = 32;
  v10 = 24;
  if (result != v6)
  {
    v11 = result;
    while (*(a3 + v11) != 58)
    {
      if (v6 == ++v11)
      {
        goto LABEL_12;
      }
    }

    *(a4 + 24) = result;
    *(a4 + 32) = v11;
    *(a4 + 40) = 0;
    result = v11 + 1;
    if (v6 < v11 + 1)
    {
      goto LABEL_47;
    }

    v8 = 64;
    v9 = 56;
    v10 = 48;
  }

LABEL_12:
  *(a4 + v10) = result;
  result = v6 + 1;
  *(a4 + v9) = v6;
  *(a4 + v8) = 0;
LABEL_13:
  if (result == a2)
  {
    goto LABEL_33;
  }

  if (*(a3 + result) != 91)
  {
LABEL_19:
    if (result > a2)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v13 = result;
    while (1)
    {
      v12 = v13 + 1;
      if (*(a3 + v13) == 58)
      {
        break;
      }

      ++v13;
      if (a2 == v12)
      {
        goto LABEL_33;
      }
    }

    if (a2 - 1 == v13 && (a5 & 1) == 0)
    {
      a2 = v13;
      goto LABEL_33;
    }

    if (v12 > a2)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return result;
    }

    goto LABEL_32;
  }

  if (result > a2)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v12 = result + 2;
  while (*(a3 + v12 - 2) != 93)
  {
    if (++v12 - a2 == 2)
    {
      goto LABEL_19;
    }
  }

  *(a4 + 185) = 1;
  if (v12 - a2 != 1)
  {
    if (*(a3 + v12 - 1) != 58)
    {
      return 0;
    }

    if (v12 > a2)
    {
      goto LABEL_49;
    }

    v13 = v12 - 1;
LABEL_32:
    *(a4 + 96) = v12;
    *(a4 + 104) = a2;
    a2 = v13;
    *(a4 + 112) = 0;
  }

LABEL_33:
  if (a2 < result)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v14 = 0;
  *(a4 + 72) = result;
  *(a4 + 80) = a2;
  *(a4 + 88) = 0;
  if (result != a2)
  {
    v15 = ~result + a2;
    v16 = (a3 + result);
    do
    {
      v17 = *v16++;
      v14 = v17 == 37;
    }

    while (v17 != 37 && v15-- != 0);
  }

  *(a4 + 186) = v14;
  return 1;
}

uint64_t lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10Foundation16_TimeZoneBridgedCAcA01_bC8ProtocolAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10Foundation16_TimeZoneBridgedCAcA01_bC8ProtocolAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double one-time initialization function for validCalendarRange()
{
  result = -2.11845067e11;
  static Date.validCalendarRange = xmmword_1812DD7C0;
  return result;
}

id protocol witness for CustomStringConvertible.description.getter in conformance NSObject(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(v4);

  return v5;
}

uint64_t _writeJSONNumber(uint64_t a1, id a2)
{
  v25 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a2);
  if (Class != _NSJSONRoundTrippingNumber)
  {
    v5 = *(a1 + 16);
    if (v5 == 2)
    {
      MEMORY[0x1EEE9AC00](Class);
      v13 = &v23;
      v23 = 0u;
      v24 = 0u;
    }

    else if (v5 == 1)
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      if (v6 + 33 >= v7)
      {
        if (v6 + 33 <= 2 * v7)
        {
          v14 = 2 * v7;
        }

        else
        {
          v14 = v6 + 33;
        }

        v8 = MEMORY[0x1865CFE30](*(a1 + 24), v14, 2178024471, 0);
        *(a1 + 24) = v8;
        *(a1 + 32) = v14;
        v6 = *(a1 + 40);
      }

      else
      {
        v8 = *(a1 + 24);
      }

      v13 = (v8 + v6);
    }

    else
    {
      v13 = 0;
    }

    v15 = *[a2 objCType];
    if (v15 <= 0x62)
    {
      if (v15 > 75)
      {
        switch(v15)
        {
          case 'L':
            [a2 unsignedLongValue];
            v16 = snprintf_l(v13, 0x20uLL, 0, "%lu");
            break;
          case 'Q':
            [a2 unsignedLongLongValue];
            v16 = snprintf_l(v13, 0x20uLL, 0, "%llu");
            break;
          case 'S':
            [a2 unsignedShortValue];
            v16 = snprintf_l(v13, 0x20uLL, 0, "%hu");
            break;
          default:
            goto LABEL_59;
        }

LABEL_48:
        if (v16 < 1)
        {
          return 0;
        }

        if (v16 < 0x20)
        {
          v19 = *(a1 + 16);
          if (v19 == 2)
          {
            return _appendBytes(v13, v16, a1, 2);
          }

          else
          {
            if (v19 == 1)
            {
              *(a1 + 40) += v16;
            }

            return 1;
          }
        }

        else
        {
          v18 = [a2 stringValue];
          return [a1 appendString:v18 range:{0, objc_msgSend(v18, "length")}];
        }
      }

      if (v15 != 66)
      {
        if (v15 == 67)
        {
          [a2 unsignedCharValue];
        }

        else
        {
          if (v15 != 73)
          {
            goto LABEL_59;
          }

          [a2 unsignedIntValue];
        }

        v16 = snprintf_l(v13, 0x20uLL, 0, "%u");
        goto LABEL_48;
      }
    }

    else
    {
      if (v15 > 104)
      {
        if (v15 <= 112)
        {
          if (v15 != 105)
          {
            if (v15 == 108)
            {
              [a2 longValue];
              v16 = snprintf_l(v13, 0x20uLL, 0, "%ld");
              goto LABEL_48;
            }

            goto LABEL_59;
          }

          *&v24 = [a2 intValue];
          goto LABEL_42;
        }

        if (v15 != 113)
        {
          if (v15 == 115)
          {
            [a2 shortValue];
            v16 = snprintf_l(v13, 0x20uLL, 0, "%hi");
            goto LABEL_48;
          }

LABEL_59:
          *&v24 = *[a2 objCType];
          v22 = [NSString stringWithFormat:@"Invalid number type in JSON write (%c)", v24];
          v20 = MEMORY[0x1E695DF30];
          v21 = *MEMORY[0x1E695D940];
LABEL_60:
          objc_exception_throw([v20 exceptionWithName:v21 reason:v22 userInfo:0]);
        }

        [a2 longLongValue];
        v16 = snprintf_l(v13, 0x20uLL, 0, "%lld");
        goto LABEL_48;
      }

      if (v15 != 99)
      {
        if (v15 != 100 && v15 != 102)
        {
          goto LABEL_59;
        }

        [a2 doubleValue];
        if (fabs(v17) == INFINITY)
        {
          v20 = MEMORY[0x1E695DF30];
          v21 = *MEMORY[0x1E695D940];
          v22 = @"Invalid number value (infinite) in JSON write";
          goto LABEL_60;
        }

        [a2 doubleValue];
        v16 = snprintf_l(v13, 0x20uLL, 0, "%0.*g");
        goto LABEL_48;
      }
    }

    *&v24 = [a2 charValue];
LABEL_42:
    v16 = snprintf_l(v13, 0x20uLL, 0, "%d");
    goto LABEL_48;
  }

  v9 = [objc_msgSend(a2 "stringValue")];
  if (!v9)
  {
    qword_1EA7BB378 = "Unable to allocate UTF-8 representation of JSON number.";
    __break(1u);
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    v22 = @"Invalid number value (NaN) in JSON write";
    goto LABEL_60;
  }

  v10 = v9;
  v11 = strlen(v9);

  return _appendBytes(v10, v11, a1, v25);
}

uint64_t __NSPropertyListClasses_ForArchival_ErrorAndException()
{
  if (qword_1ED43FA30 != -1)
  {
    dispatch_once(&qword_1ED43FA30, &__block_literal_global_41);
  }

  return _MergedGlobals_116;
}

id @objc static NSTimeZone._timeZoneWith(secondsFromGMT:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v4 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  v5 = TimeZoneCache.State.bridgedOffsetFixed(_:)(a3);
  os_unfair_lock_unlock(v4 + 30);

  return v5;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation17_TimeZoneProtocol_pGMd, &_ss18_DictionaryStorageCySi10Foundation17_TimeZoneProtocol_pGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
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
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      result = MEMORY[0x1865CD030](*(v7 + 40), v20);
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation16_NSSwiftTimeZoneCGMd, &_ss18_DictionaryStorageCySi10Foundation16_NSSwiftTimeZoneCGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      if ((v4 & 1) == 0)
      {
        v22 = v21;
      }

      result = MEMORY[0x1865CD030](*(v7 + 40), v20);
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_35;
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
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

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation11LocaleCacheV5StateV18IdentifierAndPrefsVAC08_NSSwiftD0CGMd, &_ss18_DictionaryStorageCy10Foundation11LocaleCacheV5StateV18IdentifierAndPrefsVAC08_NSSwiftD0CGMR);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
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
      if (v39)
      {
        memmove(__src, (*(v5 + 48) + 160 * v19), 0x9CuLL);
        v20 = *(*(v5 + 56) + 8 * v19);
      }

      else
      {
        v21 = (*(v5 + 48) + 160 * v19);
        v22 = v21[1];
        v41[0] = *v21;
        v41[1] = v22;
        v23 = v21[5];
        v25 = v21[2];
        v24 = v21[3];
        v41[4] = v21[4];
        v41[5] = v23;
        v41[2] = v25;
        v41[3] = v24;
        v26 = v21[6];
        v27 = v21[7];
        v28 = v21[8];
        *(v42 + 12) = *(v21 + 140);
        v41[7] = v27;
        v42[0] = v28;
        v41[6] = v26;
        memmove(__src, v21, 0x9CuLL);
        v29 = *(*(v5 + 56) + 8 * v19);
        outlined init with copy of LocaleCache.State.IdentifierAndPrefs(v41, v40);
        v20 = v29;
      }

      lazy protocol witness table accessor for type LocaleCache.State.IdentifierAndPrefs and conformance LocaleCache.State.IdentifierAndPrefs();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = memmove((*(v7 + 48) + 160 * v15), __src, 0x9CuLL);
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v39 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        outlined init with take of Any(v24, v34);
      }

      else
      {
        outlined init with copy of Any(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of Any(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt32VSpySvSgGGMd, &_ss18_DictionaryStorageCys6UInt32VSpySvSgGGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = MEMORY[0x1865CD020](*(v7 + 40), v20, 4);
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
      *(*(v7 + 48) + 4 * v15) = v20;
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

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOAGGMd, &_ss18_DictionaryStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOAGGMR);
  v41 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 24 * (v19 | (v8 << 6));
      v23 = *(v5 + 48) + v22;
      v25 = *v23;
      v24 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(v5 + 56) + v22;
      v42 = *(v27 + 8);
      v43 = *v27;
      v28 = *(v27 + 16);
      if ((v41 & 1) == 0)
      {
        outlined copy of _XMLPlistEncodingFormat.Reference(v25, v24, v26);
        outlined copy of _XMLPlistEncodingFormat.Reference(v43, v42, v28);
      }

      Hasher.init(_seed:)();
      if (v26)
      {
        goto LABEL_37;
      }

      String.hash(into:)();
      v29 = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
LABEL_37:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 24 * v15;
      v17 = *(v7 + 48) + v16;
      *v17 = v25;
      *(v17 + 8) = v24;
      *(v17 + 16) = 0;
      v18 = *(v7 + 56) + v16;
      *v18 = v43;
      *(v18 + 8) = v42;
      *(v18 + 16) = v28;
      ++*(v7 + 16);
      v5 = v40;
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

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySu10Foundation20PredicateExpressionsO10VariableIDVGMd, &_ss18_DictionaryStorageCySu10Foundation20PredicateExpressionsO10VariableIDVGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      result = MEMORY[0x1865CD030](*(v7 + 40), v20);
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

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CombineIdentifier();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy7Combine0C10IdentifierVSo7NSTimerC10FoundationE14TimerPublisherC4SideVGMd, &_ss18_DictionaryStorageCy7Combine0C10IdentifierVSo7NSTimerC10FoundationE14TimerPublisherC4SideVGMR);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v44 = v8;
    v45 = v5;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v25 = *(v9 + 48);
      v42 = *(v6 + 72);
      v43 = v21;
      v26 = v25 + v42 * v24;
      if (v39)
      {
        (*v40)(v44, v26, v45);
        v41 = *(*(v9 + 56) + 16 * v24);
      }

      else
      {
        (*v37)(v44, v26, v45);
        v41 = *(*(v9 + 56) + 16 * v24);
      }

      lazy protocol witness table accessor for type CombineIdentifier and conformance CombineIdentifier();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v9 = v38;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v44, v45);
      *(*(v11 + 56) + 16 * v19) = v41;
      ++*(v11 + 16);
      v16 = v43;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt32VSSGMd, &_ss18_DictionaryStorageCys6UInt32VSSGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = MEMORY[0x1865CD020](*(v7 + 40), v21, 4);
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DateV21ComponentsFormatStyleVSo06NSDateE9FormatterCGMd, &_ss18_DictionaryStorageCy10Foundation4DateV21ComponentsFormatStyleVSo06NSDateE9FormatterCGMR);
  v32 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 56 * v20;
      v33 = *v21;
      v34 = *(v21 + 8);
      v35 = *(v21 + 16);
      v36 = *(v21 + 32);
      v37 = *(v21 + 48);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v32 & 1) == 0)
      {

        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v23 = v22;
      }

      lazy protocol witness table accessor for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 56 * v15;
      *v16 = v33;
      *(v16 + 8) = v34;
      *(v16 + 16) = v35;
      *(v16 + 32) = v36;
      *(v16 + 48) = v37;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSSGMd, &_ss18_DictionaryStorageCySiSSGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = MEMORY[0x1865CD030](*(v7 + 40), v21);
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMR);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        outlined init with take of Any((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        outlined init with copy of Any(*(v9 + 56) + 32 * v23, v44);
      }

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = outlined init with take of Any(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2iGMd, &_ss18_DictionaryStorageCyS2iGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      result = MEMORY[0x1865CD030](*(v7 + 40), v20);
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

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        outlined init with take of Any((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        outlined init with copy of AnyHashable(v23, &v36);
        outlined init with copy of Any(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
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
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = outlined init with take of Any(v35, (*(v7 + 56) + 32 * v15));
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

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = _s10Foundation16_TimeZoneBridgedCAcA01_bC8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _TimeZoneGMTICU and conformance _TimeZoneGMTICU, type metadata accessor for _TimeZoneGMTICU, &protocol conformance descriptor for _TimeZoneGMTICU);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v9 = (a4[7] + 16 * a1);
  *v9 = a3;
  v9[1] = result;
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  result = outlined init with take of ICULegacyNumberFormatter.Signature(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 56 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = *(a2 + 48);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

id *_NSKeyValueCreateImplicitObservationInfo(NSObject *a1, void *a2, uint64_t a3, void *a4, objc_class *a5, objc_class **a6)
{
  v29 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a2;
  v10 = [a2 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v26;
    do
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = NSKeyValuePropertyForIsaAndKeyPath(a5, *(*(&v25 + 1) + 8 * v14));
        v23 = 0;
        v22 = 0;
        v12 = _NSKeyValueObservationInfoCreateByAdding(v15, a1, v16, a3, a4, 0, &v22, &v23);

        if (a6)
        {
          v17 = [(NSKeyValueProperty *)v16 isaForAutonotifying];
          if (v17)
          {
            a5 = v17;
          }
        }

        ++v14;
        v15 = v12;
      }

      while (v11 != v14);
      v11 = [obj countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  if (a6)
  {
    *a6 = a5;
  }

  os_unfair_recursive_lock_unlock();
  return v12;
}

uint64_t __iop_copyCompletionBlock_block_invoke(uint64_t a1, uint64_t a2)
{
  if (_CFExecutableLinkedOnOrAfter())
  {
    result = 1;
  }

  else
  {
    result = dyld_program_sdk_at_least();
  }

  _MergedGlobals_11 = result;
  return result;
}

id @objc _NSSwiftLocale.countryCode.getter(char *a1)
{
  v2 = *&a1[OBJC_IVAR____NSSwiftLocale_locale + 8];
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 376);
  v5 = a1;
  swift_unknownObjectRetain();
  v4(&v12, ObjectType, v2);
  swift_unknownObjectRelease();
  v6 = v13;
  if (v13)
  {
    v8 = v14;
    v7 = v15;
    v9 = v12;

    outlined consume of Locale.LanguageCode?(v9, v6, v8, v7);

    v10 = String._bridgeToObjectiveCImpl()();
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

void closure #1 in _LocaleICU.region.getter(Swift::String *a1@<X0>, uint64_t a2@<X1>, Swift::String *a3@<X8>)
{
  v79 = *MEMORY[0x1E69E9840];
  countAndFlagsBits = a1[20]._countAndFlagsBits;
  object = a1[20]._object;
  v5 = a1[21]._countAndFlagsBits;
  v7 = a1[21]._object;
  if (!object)
  {
    a3->_countAndFlagsBits = countAndFlagsBits;
    a3->_object = 0;
    a3[1]._countAndFlagsBits = v5;
    a3[1]._object = v7;
    return;
  }

  if (object != 1)
  {
    a3->_countAndFlagsBits = countAndFlagsBits;
    a3->_object = object;
    a3[1]._countAndFlagsBits = v5;
    a3[1]._object = v7;
    outlined copy of Locale.LanguageCode?(countAndFlagsBits, object, v5, v7);
    return;
  }

  v57 = a1;
  v8 = specialized static Locale.keywordValue(identifier:key:)(*(a2 + 16), *(a2 + 24), 26482, 0xE200000000000000);
  if (!v9)
  {
LABEL_9:
    memset(v78, 0, sizeof(v78));
    outlined destroy of Locale.Language.Components(v78);
    LODWORD(v69) = 0;
    String.utf8CString.getter();
    Language = uloc_getLanguage();

    v28 = 0;
    v29 = 0;
    if (Language > 0)
    {
      v77[Language] = 0;
      v28 = MEMORY[0x1865CAEB0](v77);
      v29 = v30;
    }

    LODWORD(v69) = 0;
    String.utf8CString.getter();
    Script = uloc_getScript();

    v32 = 0;
    v33 = 0;
    if (Script > 0)
    {
      v76[Script] = 0;
      v32 = MEMORY[0x1865CAEB0](v76);
      v33 = v34;
    }

    LODWORD(v69) = 0;
    String.utf8CString.getter();
    Country = uloc_getCountry();

    v36 = 0;
    v37 = 0;
    if (Country > 0)
    {
      v75[Country] = 0;
      v36 = MEMORY[0x1865CAEB0](v75);
      v37 = v38;
    }

    if (v29)
    {
      v39 = String.lowercased()();
      v53 = v39._object;
      v54 = v39._countAndFlagsBits;
      v55 = v29;
      v56 = v28;
      if (v33)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      if (v33)
      {
LABEL_17:
        *&v69 = v32;
        *(&v69 + 1) = v33;

        String.init<A>(_:)();
        v40 = String._capitalized()();
        v41 = v40._countAndFlagsBits;
        v42 = v40._object;

        if (v37)
        {
LABEL_18:
          v43 = String.uppercased()();
          v44 = v43._countAndFlagsBits;
          v45 = v43._object;
LABEL_22:
          outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
          outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
          outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
          *&v69 = v56;
          *(&v69 + 1) = v55;
          *&v70 = v54;
          *(&v70 + 1) = v53;
          *&v71 = v32;
          *(&v71 + 1) = v33;
          *&v72 = v41;
          *(&v72 + 1) = v42;
          *&v73 = v36;
          *(&v73 + 1) = v37;
          *&v74 = v44;
          *(&v74 + 1) = v45;
          v65 = v71;
          v66 = v72;
          v67 = v73;
          v68 = v74;
          v63 = v69;
          v64 = v70;
          Locale.Language.region.getter(&v59);
          outlined destroy of Locale.Language.Components(&v69);
          v46 = v59;
          v47 = v60;
          v48 = v61;
          v21 = v62;
          v49 = v57[20]._countAndFlagsBits;
          v50 = v57[20]._object;
          v51 = v57[21]._countAndFlagsBits;
          v52 = v57[21]._object;
          outlined copy of Locale.LanguageCode?(v59, v60, v61, v62);
          sub_1807E2788(v49, v50, v51, v52);
          v57[20]._countAndFlagsBits = v46;
          v57[20]._object = v47;
          v57[21]._countAndFlagsBits = v48;
          v57[21]._object = v21;
          v26 = a3;
          a3->_countAndFlagsBits = v46;
          a3->_object = v47;
          a3[1]._countAndFlagsBits = v48;
          goto LABEL_23;
        }

LABEL_21:
        v36 = 0;
        v44 = 0;
        v45 = 0;
        goto LABEL_22;
      }
    }

    v32 = 0;
    v41 = 0;
    v42 = 0;
    if (v37)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  v10 = v8;
  v11 = v9;
  if (String.count.getter() <= 2)
  {

    goto LABEL_9;
  }

  v12 = specialized Collection.prefix(_:)(2, v10, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  MEMORY[0x1865CAE80](v12, v14, v16, v18);

  v19 = String.uppercased()();

  v20 = String.uppercased()();
  v21 = v20._object;
  v22 = v57[20]._countAndFlagsBits;
  v23 = v57[20]._object;
  v24 = v57[21]._countAndFlagsBits;
  v25 = v57[21]._object;

  sub_1807E2788(v22, v23, v24, v25);
  v57[20] = v19;
  v57[21] = v20;
  v26 = a3;
  *a3 = v19;
  a3[1]._countAndFlagsBits = v20._countAndFlagsBits;
LABEL_23:
  v26[1]._object = v21;
}

void protocol witness for _LocaleProtocol.region.getter in conformance _LocaleICU(Swift::String *a1@<X8>)
{
  v3 = *(v1 + 200);
  os_unfair_lock_lock((v3 + 536));
  partial apply for closure #1 in _LocaleICU.region.getter((v3 + 16), a1);

  os_unfair_lock_unlock((v3 + 536));
}

void Locale.Language.region.getter(uint64_t *a1@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = v1[8];
  v3 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v4;
  v8 = v3;
  countAndFlagsBits = v5;
  object = v6;
  if (!v3)
  {
    Locale.Language.Components.identifier.getter();
    String.utf8CString.getter();

    Country = uloc_getCountry();

    if (Country >= 1 && (v15[Country] = 0, v12 = MEMORY[0x1865CAEB0](v15), v13))
    {
      v7 = v12;
      v8 = v13;
      v14 = String.uppercased()();
      object = v14._object;
      countAndFlagsBits = v14._countAndFlagsBits;
    }

    else
    {

      v7 = 0;
      v8 = 0;
      countAndFlagsBits = 0;
      object = 0;
    }
  }

  *a1 = v7;
  a1[1] = v8;
  a1[2] = countAndFlagsBits;
  a1[3] = object;
  outlined copy of Locale.LanguageCode?(v4, v3, v5, v6);
}

uint64_t _LocaleICU.init(components:)(void *__src)
{
  v2 = v1;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v76, __src, sizeof(v76));
  v4 = Locale.Components.icuIdentifier.getter();
  v6 = v5;
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  _s10Foundation17LocalePreferencesVSgWOi0_(v110);
  v7 = v110[4];
  *(v2 + 136) = v110[5];
  v8 = v111[0];
  *(v2 + 152) = v110[6];
  *(v2 + 168) = v8;
  *(v2 + 180) = *(v111 + 12);
  v9 = v110[0];
  *(v2 + 72) = v110[1];
  v10 = v110[3];
  *(v2 + 88) = v110[2];
  *(v2 + 104) = v10;
  *(v2 + 120) = v7;
  *(v2 + 56) = v9;

  static _LocaleICU._calendarIdentifier(forIdentifier:)(v4, v6, v76);

  v11 = v76[0];
  *(v2 + 48) = v76[0];
  v13 = *(v2 + 16);
  v12 = *(v2 + 24);
  v74[0] = v11;
  v14 = *(v2 + 136);
  v15 = *(v2 + 168);
  v112[6] = *(v2 + 152);
  v113[0] = v15;
  *(v113 + 12) = *(v2 + 180);
  v16 = *(v2 + 72);
  v17 = *(v2 + 104);
  v112[2] = *(v2 + 88);
  v112[3] = v17;
  v18 = *(v2 + 120);
  v112[5] = v14;
  v112[4] = v18;
  v19 = *(v2 + 56);
  v112[1] = v16;
  v112[0] = v19;
  v20 = *(v2 + 136);
  v21 = *(v2 + 168);
  v76[6] = *(v2 + 152);
  v76[7] = v21;
  *(&v76[7] + 12) = *(v2 + 180);
  v22 = *(v2 + 72);
  v23 = *(v2 + 104);
  v76[2] = *(v2 + 88);
  v76[3] = v23;
  v24 = *(v2 + 120);
  v76[5] = v20;
  v76[4] = v24;
  v25 = *(v2 + 56);
  v76[1] = v22;
  v76[0] = v25;

  outlined init with copy of FloatingPointRoundingRule?(v112, __srca, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
  v26 = specialized static _LocaleICU._identifierCapturingPreferences(forIdentifier:calendarIdentifier:preferences:)(v13, v12, v74, v76);
  v28 = v27;

  v114[6] = v76[6];
  v115[0] = v76[7];
  *(v115 + 12) = *(&v76[7] + 12);
  v114[2] = v76[2];
  v114[3] = v76[3];
  v114[5] = v76[5];
  v114[4] = v76[4];
  v114[1] = v76[1];
  v114[0] = v76[0];
  outlined destroy of TermOfAddress?(v114, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
  *(v2 + 32) = v26;
  *(v2 + 40) = v28;
  LOBYTE(v76[0]) = 1;
  memset(&v103[7], 0, 49);
  v100 = 1;
  v29 = __dst[0];
  v108 = __dst[5];
  v107 = __dst[4];
  v106 = __dst[3];
  v104 = __dst[1];
  v105 = __dst[2];
  v116[0] = xmmword_1812187D0;
  memset(&v116[1], 0, 80);
  outlined init with copy of Locale.Language.Components(__dst, v76);
  outlined destroy of TermOfAddress?(v116, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMR);
  v30 = *&__dst[7];
  if (*&__dst[7])
  {
    v31 = *&__dst[8];
    v56 = *(&__dst[7] + 1);
    v32 = *(&__dst[6] + 1);

    outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
    v33 = *&__dst[9];
    if (*&__dst[9])
    {
LABEL_3:
      v34 = *&__dst[10];
      v53 = *(&__dst[9] + 1);
      v35 = *(&__dst[8] + 1);

      v36 = v34;

      sub_1807E2788(0, 1, 0, 0);
      goto LABEL_6;
    }
  }

  else
  {
    v31 = 0;
    v56 = 0;
    v32 = 0;
    v33 = *&__dst[9];
    if (*&__dst[9])
    {
      goto LABEL_3;
    }
  }

  v36 = 0;
  v53 = 0;
  v35 = 0;
  v33 = 1;
LABEL_6:
  v73 = *&__dst[11];
  if (*&__dst[11])
  {
    v37 = *&__dst[12];
    *&v72 = *(&__dst[11] + 1);
    v70 = *(&__dst[10] + 1);

    *(&v72 + 1) = v37;

    outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  }

  else
  {
    v72 = 0uLL;
    v70 = 0;
  }

  v52 = BYTE8(__dst[12]);
  v68 = BYTE9(__dst[12]);
  v71 = *(&__dst[13] + 1);
  if (*(&__dst[13] + 1))
  {
    v38 = *(&__dst[14] + 1);
    v66 = *&__dst[13];
    v67 = *&__dst[14];

    v69 = v38;

    outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
    v39 = *(&__dst[15] + 1);
    if (*(&__dst[15] + 1))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v39 = *(&__dst[15] + 1);
    if (*(&__dst[15] + 1))
    {
LABEL_11:
      v40 = *(&__dst[16] + 1);
      *(&v64 + 1) = v39;
      *&v65 = *&__dst[16];
      *&v64 = *&__dst[15];

      *(&v65 + 1) = v40;

      sub_1807E2788(0, 1, 0, 0);
      v41 = *(&__dst[17] + 1);
      if (*(&__dst[17] + 1))
      {
        goto LABEL_12;
      }

LABEL_16:
      v60 = 0;
      v61 = 0;
      v62 = 1;
      v63 = 0;
      v43 = *&__dst[19];
      if (*&__dst[19])
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }
  }

  v65 = 0uLL;
  *&v64 = 0;
  *(&v64 + 1) = 1;
  v41 = *(&__dst[17] + 1);
  if (!*(&__dst[17] + 1))
  {
    goto LABEL_16;
  }

LABEL_12:
  v42 = *(&__dst[18] + 1);
  v60 = *&__dst[17];
  v61 = *&__dst[18];
  v62 = v41;

  v63 = v42;

  sub_1807E2788(0, 1, 0, 0);
  v43 = *&__dst[19];
  if (*&__dst[19])
  {
LABEL_13:
    v58 = v43;
    v59 = *(&__dst[19] + 1);
    swift_unknownObjectRetain();
    outlined consume of TimeZone??(1);
    goto LABEL_18;
  }

LABEL_17:
  v58 = 1;
  v59 = 0;
LABEL_18:
  if (*(&__dst[20] + 1))
  {
    v44 = *(&__dst[21] + 1);
    v54 = *&__dst[20];
    v55 = *&__dst[21];
    v45 = *(&__dst[20] + 1);

    v57 = v44;

    outlined destroy of Locale.Components(__dst);
    sub_1807E2788(0, 1, 0, 0);
  }

  else
  {
    outlined destroy of Locale.Components(__dst);
    v54 = 0;
    v55 = 0;
    v57 = 0;
    v45 = 1;
  }

  *__srca = v29;
  *&__srca[48] = v106;
  *&__srca[64] = v107;
  *&__srca[80] = v108;
  *&__srca[16] = v104;
  *&__srca[32] = v105;
  *&v49 = v32;
  *&__srca[96] = v32;
  *&__srca[104] = v30;
  *&__srca[112] = v56;
  *&__srca[120] = v31;
  *&__srca[128] = v35;
  *&__srca[136] = v33;
  *&__srca[144] = v53;
  *&__srca[152] = v36;
  *&__srca[160] = v70;
  *&__srca[168] = v73;
  *&__srca[176] = v72;
  *&__srca[192] = 0;
  __srca[200] = v52;
  *(&v49 + 1) = v30;
  *&__srca[201] = *v103;
  *&__srca[217] = *&v103[16];
  *&__srca[233] = *&v103[32];
  *&__srca[249] = *&v103[48];
  __srca[257] = 1;
  *&__srca[264] = 0;
  v50 = v100;
  __srca[272] = v100;
  __srca[273] = v68;
  *&__srca[280] = v66;
  *&__srca[288] = v71;
  *&__srca[296] = v67;
  *&__srca[304] = v69;
  __srca[312] = 2;
  *&__srca[320] = v64;
  *&__srca[336] = v65;
  *&__srca[352] = v60;
  *&__srca[360] = v62;
  *&__srca[368] = v61;
  *&__srca[376] = v63;
  *&__srca[384] = v58;
  *&__srca[392] = v59;
  *&__srca[400] = v54;
  v51 = v45;
  *&__srca[408] = v45;
  v46 = MEMORY[0x1E69E7CC8];
  *&__srca[416] = v55;
  *&__srca[424] = v57;
  *&__srca[432] = MEMORY[0x1E69E7CC8];
  *&__srca[440] = MEMORY[0x1E69E7CC8];
  *&__srca[448] = MEMORY[0x1E69E7CC8];
  *&__srca[456] = MEMORY[0x1E69E7CC8];
  *&__srca[464] = MEMORY[0x1E69E7CC8];
  *&__srca[472] = MEMORY[0x1E69E7CC8];
  *&__srca[480] = MEMORY[0x1E69E7CC8];
  *&__srca[488] = MEMORY[0x1E69E7CC8];
  *&__srca[496] = MEMORY[0x1E69E7CC8];
  *&__srca[504] = MEMORY[0x1E69E7CC8];
  *&__srca[512] = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA10_LocaleICUC0C0V_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA10_LocaleICUC0C0V_GMR);
  v47 = swift_allocObject();
  *(v47 + 536) = 0;
  memcpy((v47 + 16), __srca, 0x208uLL);
  *(v2 + 200) = v47;
  v76[0] = v29;
  v76[6] = v49;
  *&v76[7] = v56;
  *(&v76[7] + 1) = v31;
  *&v76[8] = v35;
  *(&v76[8] + 1) = v33;
  *&v76[9] = v53;
  *(&v76[9] + 1) = v36;
  v76[3] = v106;
  v76[4] = v107;
  v76[5] = v108;
  v76[2] = v105;
  v76[1] = v104;
  *&v76[10] = v70;
  *(&v76[10] + 1) = v73;
  v76[11] = v72;
  *&v76[12] = 0;
  BYTE8(v76[12]) = v52;
  *(&v76[12] + 9) = *v103;
  *(&v76[13] + 9) = *&v103[16];
  *(&v76[14] + 9) = *&v103[32];
  *(&v76[15] + 9) = *&v103[48];
  BYTE1(v76[16]) = 1;
  *(&v76[16] + 2) = v101;
  WORD3(v76[16]) = v102;
  *(&v76[16] + 1) = 0;
  LOBYTE(v76[17]) = v50;
  BYTE1(v76[17]) = v68;
  *(&v76[17] + 2) = *&v98[7];
  WORD3(v76[17]) = v99;
  *(&v76[17] + 1) = v66;
  *&v76[18] = v71;
  *(&v76[18] + 1) = v67;
  *&v76[19] = v69;
  BYTE8(v76[19]) = 2;
  *(&v76[19] + 9) = *v98;
  HIDWORD(v76[19]) = *&v98[3];
  v76[20] = v64;
  v76[21] = v65;
  v77 = v60;
  v78 = v62;
  v79 = v61;
  v80 = v63;
  v81 = v58;
  v82 = v59;
  v83 = v54;
  v84 = v51;
  v85 = v55;
  v86 = v57;
  v87 = v46;
  v88 = v46;
  v89 = v46;
  v90 = v46;
  v91 = v46;
  v92 = v46;
  v93 = v46;
  v94 = v46;
  v95 = v46;
  v96 = v46;
  v97 = v46;
  outlined init with copy of _LocaleICU.State(__srca, v74);
  outlined destroy of _LocaleICU.State(v76);
  return v2;
}

void sub_1807E2788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
    outlined consume of Locale.LanguageCode?(a1, a2, a3, a4);
  }
}

BOOL specialized static Data.== infix(_:_:)(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data._Representation.withUnsafeBytes<A>(_:)(v13, a2, a3, a4);
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

const void *closure #1 in static Data.== infix(_:_:)@<X0>(const void *result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v5)
    {
      __s2 = a2;
      v20 = a3;
      v21 = BYTE2(a3);
      v22 = BYTE3(a3);
      v23 = BYTE4(a3);
      v24 = BYTE5(a3);
      if (result)
      {
        result = memcmp(result, &__s2, BYTE6(a3));
        v6 = result == 0;
LABEL_25:
        *a4 = v6;
        return result;
      }

      __break(1u);
      goto LABEL_33;
    }

    goto LABEL_14;
  }

  if (v5 != 2)
  {
    if (!result)
    {
LABEL_33:
      __break(1u);
LABEL_34:
      if (!result)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      goto LABEL_36;
    }

LABEL_24:
    v6 = 1;
    goto LABEL_25;
  }

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (v9)
  {
    v10 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    v11 = __OFSUB__(v7, v10);
    v12 = v7 - v10;
    if (v11)
    {
      goto LABEL_31;
    }

    v13 = (v12 + v9);
    v11 = __OFSUB__(v8, v7);
    v14 = v8 - v7;
    if (!v11)
    {
      goto LABEL_9;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = 0;
  v11 = __OFSUB__(v8, v7);
  v14 = v8 - v7;
  if (v11)
  {
    goto LABEL_28;
  }

LABEL_9:
  v15 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  if (v15 >= v14)
  {
    v15 = v14;
  }

  if (!result)
  {
    goto LABEL_37;
  }

  if (v13)
  {
LABEL_21:
    if (v13 != result)
    {
      result = memcmp(result, v13, v15);
      v6 = result == 0;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  __break(1u);
LABEL_14:
  v15 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  v16 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (!v16)
  {
    goto LABEL_34;
  }

  v17 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  v18 = a2 - v17;
  if (__OFSUB__(a2, v17))
  {
    goto LABEL_30;
  }

  if (*((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v15)
  {
    v15 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  }

  if (!result)
  {
    goto LABEL_35;
  }

  v13 = (v18 + v16);
  if (v18 + v16)
  {
    goto LABEL_21;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  if (!v9)
  {
    v13 = 0;
    if (!__OFSUB__(a2, v8))
    {
LABEL_4:
      v16[0] = v6;
      v16[1] = v7;
      v6 = v16;
      closure #1 in static Data.== infix(_:_:)(v13, a4, a5, &v15);
      if (v5)
      {
        return v14 & 1;
      }

      goto LABEL_9;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    v14 = *(v6 - 1);
    return v14 & 1;
  }

  v10 = *(a3 + 40);
  v11 = __OFSUB__(result, v10);
  v12 = result - v10;
  if (!v11)
  {
    v13 = (v12 + v9);
    if (!__OFSUB__(a2, v8))
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t _makeInlinePayload(unint64_t *a1, uint64_t a2)
{
  result = 0;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        if (a2 != 4)
        {
          return result;
        }

        v4 = a1[3];
        if (v4 >> 13)
        {
          return 0;
        }

        result = v4 << 47;
      }

      v5 = a1[2];
      if (v5 >> 13)
      {
        return 0;
      }

      result |= v5 << 34;
    }

    v6 = a1[1];
    if (!(v6 >> 13))
    {
      result |= v6 << 21;
      goto LABEL_13;
    }

    return 0;
  }

  v7 = a2;
  if (!a2)
  {
    return v7 | (8 * a2) | 6;
  }

  if (a2 != 1)
  {
    return result;
  }

LABEL_13:
  v8 = *a1;
  if (v8 >> 13)
  {
    return 0;
  }

  v7 = result | (v8 << 8);
  return v7 | (8 * a2) | 6;
}

uint64_t lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t outlined init with copy of Hashable & Sendable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t protocol witness for Decoder.singleValueContainer() in conformance JSONDecoderImpl@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for JSONDecoderImpl();
  a1[4] = lazy protocol witness table accessor for type JSONDecoderImpl and conformance JSONDecoderImpl(&lazy protocol witness table cache variable for type JSONDecoderImpl and conformance JSONDecoderImpl, type metadata accessor for JSONDecoderImpl, &protocol conformance descriptor for JSONDecoderImpl);
  *a1 = v3;
}

NSString *__cdecl NSHomeDirectoryForUser(NSString *userName)
{
  v1 = CFCopyHomeDirectoryURLForUser();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 path];
    CFRelease(v2);
  }

  else
  {
    v3 = 0;
  }

  return [v3 stringByStandardizingPath];
}

void specialized JSONDecoderImpl.decode(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 24 * v2;
    v4 = *(v3 + 8);
    v5 = *(v3 + 16);
    v6 = *(v0 + 160);
    v7 = *(v3 + 24);

    specialized JSONDecoderImpl.unwrapString<A>(from:for:_:)(v4, v5, v7, v6, 0, 0, 0, 255);
  }

  else
  {
    __break(1u);
  }
}

{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  if ((*(v1 + 24 * v2 + 24) & 0xE0) == 0x40)
  {
    return;
  }

  v3 = *(v0 + 160);

  _CodingPathNode.path.getter(v3);

  v4 = *(v0 + 16);
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = *(v4 + 24 * v5 + 24);
  v7 = type metadata accessor for DecodingError();
  swift_allocError();
  v9 = v8;
  *v8 = MEMORY[0x1E69E6370];
  _StringGuts.grow(_:)(43);

  v10 = v6 >> 5;
  if (v6 >> 5 > 2)
  {
    if (v10 == 3)
    {
      v11 = 0xEC0000007972616ELL;
      v12 = 0x6F69746369642061;
    }

    else if (v10 == 4)
    {
      v11 = 0xE800000000000000;
      v12 = 0x7961727261206E61;
    }

    else
    {
      v11 = 0xE400000000000000;
      v12 = 1819047278;
    }
  }

  else if (v10)
  {
    if (v10 == 1)
    {
      v11 = 0xE600000000000000;
      v12 = 0x7265626D756ELL;
    }

    else
    {
      v11 = 0xE400000000000000;
      v12 = 1819242338;
    }
  }

  else
  {
    v11 = 0xE800000000000000;
    v12 = 0x676E697274732061;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
  MEMORY[0x1865CB0E0](v12, v11);

  MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6AF8], v7);
  swift_willThrow();
}

void *_NSBundlePathFromExecutablePath(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [objc_msgSend(a1 _stringByResolvingSymlinksInPathUsingCache:{1), "stringByDeletingLastPathComponent"}];
  v2 = [v1 stringByDeletingLastPathComponent];
  v3 = [v2 lastPathComponent];
  if (![v3 compare:@"Contents" options:0 range:{0, objc_msgSend(v3, "length")}] || !objc_msgSend(v3, "compare:options:range:", @"Executables", 0, 0, objc_msgSend(v3, "length")) && (v2 = objc_msgSend(v2, "stringByDeletingLastPathComponent"), v4 = objc_msgSend(v2, "lastPathComponent"), !objc_msgSend(v4, "compare:options:range:", @"Support Files", 0, 0, objc_msgSend(v4, "length"))))
  {
    v5 = [v2 stringByDeletingLastPathComponent];
    memset(&v7, 0, sizeof(v7));
    if ([v5 getFileSystemRepresentation:v8 maxLength:1024])
    {
      if (!stat(v8, &v7))
      {
        if (access(v8, 4))
        {
          getpid();
          sandbox_check();
        }

        else if ((v7.st_mode & 0xF000) == 0x4000)
        {
          return v5;
        }
      }
    }
  }

  return v1;
}

void __NSSwiftData.copy(with:)(char **a1@<X8>)
{
  v3 = *&v1[OBJC_IVAR____TtC10Foundation13__NSSwiftData__backing];
  if (v3)
  {
    if ((*(v3 + 32) & 0x8000000000000000) != 0)
    {
      v6 = [v1 bytes];
      v7 = [v1 length];
      v5 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:v6 length:v7];
      v4 = type metadata accessor for NSData();
    }

    else
    {
      v4 = type metadata accessor for __NSSwiftData();
      v5 = v1;
    }

    a1[3] = v4;
    *a1 = v5;
  }

  else
  {
    __break(1u);
  }
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance Int64()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithLongLong_];
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 160 * result);
  v5 = a2[7];
  v4[6] = a2[6];
  v4[7] = v5;
  v4[8] = a2[8];
  *(v4 + 140) = *(a2 + 140);
  v6 = a2[3];
  v4[2] = a2[2];
  v4[3] = v6;
  v7 = a2[5];
  v4[4] = a2[4];
  v4[5] = v7;
  v8 = a2[1];
  *v4 = *a2;
  v4[1] = v8;
  *(a4[7] + 8 * result) = a3;
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 96 * result);
  v5 = a2[3];
  v4[2] = a2[2];
  v4[3] = v5;
  v6 = a2[5];
  v4[4] = a2[4];
  v4[5] = v6;
  v7 = a2[1];
  *v4 = *a2;
  v4[1] = v7;
  *(a4[7] + 8 * result) = a3;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v4[2] = a2[2];
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

char *closure #1 in LocaleCache.fixedNSLocale(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 136);
  v9 = *(a2 + 168);
  v71[6] = *(a2 + 152);
  v72[0] = v9;
  *(v72 + 12) = *(a2 + 180);
  v10 = *(a2 + 72);
  v11 = *(a2 + 104);
  v71[2] = *(a2 + 88);
  v71[3] = v11;
  v71[4] = *(a2 + 120);
  v71[5] = v8;
  v71[0] = *(a2 + 56);
  v71[1] = v10;
  v12 = *(a2 + 120);
  v13 = *(a2 + 104);
  v69[3] = *(a2 + 88);
  v69[4] = v13;
  v14 = *(a2 + 72);
  *(v70 + 12) = *(a2 + 180);
  v15 = *(a2 + 168);
  v69[7] = *(a2 + 152);
  v70[0] = v15;
  v16 = *(a2 + 136);
  v69[5] = v12;
  v69[6] = v16;
  v69[1] = *(a2 + 56);
  v69[2] = v14;
  *&v69[0] = v7;
  *(&v69[0] + 1) = v6;
  v17 = *(a1 + 24);
  v18 = *(v17 + 16);

  if (v18)
  {
    outlined init with copy of LocalePreferences?(v71, v66);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v69);
    if (v20)
    {
      v21 = *(*(v17 + 56) + 8 * v19);
      result = outlined destroy of LocaleCache.State.IdentifierAndPrefs(v69);
LABEL_32:
      *a3 = v21;
      return result;
    }
  }

  else
  {
    outlined init with copy of LocalePreferences?(v71, v66);
  }

  v23 = _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, type metadata accessor for _LocaleICU, &protocol conformance descriptor for _LocaleICU);
  v24 = type metadata accessor for _NSSwiftLocale();
  v25 = objc_allocWithZone(v24);
  v26 = &v25[OBJC_IVAR____NSSwiftLocale_locale];
  *v26 = a2;
  *(v26 + 1) = v23;
  v27 = String._bridgeToObjectiveCImpl()();
  v68.receiver = v25;
  v68.super_class = v24;
  swift_retain_n();
  v28 = objc_msgSendSuper2(&v68, sel_initWithLocaleIdentifier_, v27);
  swift_unknownObjectRelease();
  v21 = v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73 = *(a1 + 24);
  v30 = v73;
  v31 = specialized __RawDictionaryStorage.find<A>(_:)(v69);
  v33 = *(v30 + 16);
  v34 = (v32 & 1) == 0;
  v35 = __OFADD__(v33, v34);
  v36 = v33 + v34;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v25) = v32;
    if (*(v30 + 24) < v36)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, isUniquelyReferenced_nonNull_native);
      v37 = v73;
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v69);
      if ((v25 & 1) == (v38 & 1))
      {
        goto LABEL_11;
      }

      v31 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v37 = v30;
LABEL_11:
      if (v25)
      {
LABEL_12:
        v39 = *(v37 + 56);
        v40 = *(v39 + 8 * v31);
        *(v39 + 8 * v31) = v21;

        outlined destroy of LocaleCache.State.IdentifierAndPrefs(v69);
LABEL_31:

        *(a1 + 24) = v37;
        goto LABEL_32;
      }

LABEL_30:
      specialized _NativeDictionary._insert(at:key:value:)(v31, v69, v21, v37);
      goto LABEL_31;
    }
  }

  v60 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation11LocaleCacheV5StateV18IdentifierAndPrefsVAC08_NSSwiftD0CGMd, &_ss18_DictionaryStorageCy10Foundation11LocaleCacheV5StateV18IdentifierAndPrefsVAC08_NSSwiftD0CGMR);
  v41 = static _DictionaryStorage.copy(original:)();
  v37 = v41;
  if (!*(v30 + 16))
  {
LABEL_29:

    v31 = v60;
    if (v25)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

  result = (v41 + 64);
  v42 = (v30 + 64);
  v43 = ((1 << *(v37 + 32)) + 63) >> 6;
  if (v37 != v30 || result >= &v42[8 * v43])
  {
    result = memmove(result, v42, 8 * v43);
  }

  v44 = 0;
  *(v37 + 16) = *(v30 + 16);
  v45 = 1 << *(v30 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v30 + 64);
  v48 = (v45 + 63) >> 6;
  v61 = v48;
  if (v47)
  {
    do
    {
      v49 = __clz(__rbit64(v47));
      v62 = (v47 - 1) & v47;
LABEL_27:
      v63 = v49 | (v44 << 6);
      v52 = (*(v30 + 48) + 160 * v63);
      v53 = v52[2];
      v54 = v52[3];
      v55 = v52[5];
      v66[4] = v52[4];
      v66[5] = v55;
      v66[3] = v54;
      v56 = v52[6];
      v57 = v52[7];
      v58 = v52[8];
      *(v67 + 12) = *(v52 + 140);
      v66[7] = v57;
      v67[0] = v58;
      v66[6] = v56;
      v59 = v52[1];
      v66[0] = *v52;
      v66[1] = v59;
      v66[2] = v53;
      v64 = *(*(v30 + 56) + 8 * v63);
      memmove((*(v37 + 48) + 160 * v63), v52, 0x9CuLL);
      *(*(v37 + 56) + 8 * v63) = v64;
      outlined init with copy of LocaleCache.State.IdentifierAndPrefs(v66, v65);
      result = v64;
      v48 = v61;
      v47 = v62;
    }

    while (v62);
  }

  v50 = v44;
  while (1)
  {
    v44 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v44 >= v48)
    {
      goto LABEL_29;
    }

    v51 = *(v30 + 64 + 8 * v44);
    ++v50;
    if (v51)
    {
      v49 = __clz(__rbit64(v51));
      v62 = (v51 - 1) & v51;
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(__int128 *a1)
{
  v9 = a1[6];
  v10 = a1[7];
  *v11 = a1[8];
  *&v11[12] = *(a1 + 140);
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v3 = *a1;
  v4 = a1[1];
  lazy protocol witness table accessor for type LocaleCache.State.IdentifierAndPrefs and conformance LocaleCache.State.IdentifierAndPrefs();
  v1 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12[6] = v9;
  v12[7] = v10;
  v13[0] = *v11;
  *(v13 + 12) = *&v11[12];
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v12[0] = v3;
  v12[1] = v4;
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v12, v1);
}

{
  v2 = a1[3];
  v10 = a1[2];
  v11 = v2;
  v3 = a1[5];
  v12 = a1[4];
  v13 = v3;
  v4 = a1[1];
  v8 = *a1;
  v9 = v4;
  Hasher.init(_seed:)();
  ICUDateFormatter.PatternCacheKey.hash(into:)(v7);
  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 48);
  lazy protocol witness table accessor for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle();
  v1 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7[0] = v3;
  v7[1] = v4;
  v7[2] = v5;
  v8 = v6;
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v7, v1);
}

unint64_t lazy protocol witness table accessor for type LocaleCache.State.IdentifierAndPrefs and conformance LocaleCache.State.IdentifierAndPrefs()
{
  result = lazy protocol witness table cache variable for type LocaleCache.State.IdentifierAndPrefs and conformance LocaleCache.State.IdentifierAndPrefs;
  if (!lazy protocol witness table cache variable for type LocaleCache.State.IdentifierAndPrefs and conformance LocaleCache.State.IdentifierAndPrefs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocaleCache.State.IdentifierAndPrefs and conformance LocaleCache.State.IdentifierAndPrefs);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocaleCache.State.IdentifierAndPrefs and conformance LocaleCache.State.IdentifierAndPrefs;
  if (!lazy protocol witness table cache variable for type LocaleCache.State.IdentifierAndPrefs and conformance LocaleCache.State.IdentifierAndPrefs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocaleCache.State.IdentifierAndPrefs and conformance LocaleCache.State.IdentifierAndPrefs);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = *a1;
    v92 = a1[1];
    v89 = ~v3;
    v6 = *(a1 + 8);
    v149 = *(a1 + 7);
    v150[0] = v6;
    *(v150 + 12) = *(a1 + 140);
    v7 = *(a1 + 4);
    v145 = *(a1 + 3);
    v146 = v7;
    v8 = *(a1 + 6);
    v78 = v5;
    v147 = *(a1 + 5);
    v148 = v8;
    v9 = *(a1 + 2);
    v143 = *(a1 + 1);
    v144 = v9;
    do
    {
      v10 = (*(v91 + 48) + 160 * v4);
      v11 = v10[1];
      v134 = *v10;
      v135 = v11;
      v12 = v10[4];
      v14 = v10[2];
      v13 = v10[3];
      v139 = v10[5];
      v138 = v12;
      v136 = v14;
      v137 = v13;
      v16 = v10[7];
      v15 = v10[8];
      v17 = v10[6];
      *(v142 + 12) = *(v10 + 140);
      v142[0] = v15;
      v140 = v17;
      v141 = v16;
      if (v134 != __PAIR128__(v92, v5) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_5;
      }

      __src[6] = v141;
      __src[7] = v142[0];
      *(&__src[7] + 12) = *(v142 + 12);
      __src[2] = v137;
      __src[3] = v138;
      __src[5] = v140;
      __src[4] = v139;
      __src[1] = v136;
      __src[0] = v135;
      __src[15] = v149;
      __src[16] = v150[0];
      *(&__src[16] + 12) = *(v150 + 12);
      __src[11] = v145;
      __src[12] = v146;
      __src[13] = v147;
      __src[14] = v148;
      __src[9] = v143;
      __src[10] = v144;
      v132[6] = v141;
      v133[0] = v142[0];
      *(v133 + 12) = *(v142 + 12);
      v132[2] = v137;
      v132[3] = v138;
      v132[5] = v140;
      v132[4] = v139;
      v132[1] = v136;
      v132[0] = v135;
      if (_s10Foundation17LocalePreferencesVSgWOg(v132) == 1)
      {
        v129 = __src[15];
        v130[0] = __src[16];
        *(v130 + 12) = *(&__src[16] + 12);
        v125 = __src[11];
        v126 = __src[12];
        v128 = __src[14];
        v127 = __src[13];
        v124 = __src[10];
        v123 = __src[9];
        if (_s10Foundation17LocalePreferencesVSgWOg(&v123) == 1)
        {
          __dst[6] = __src[6];
          __dst[7] = __src[7];
          *(&__dst[7] + 12) = *(&__src[7] + 12);
          __dst[2] = __src[2];
          __dst[3] = __src[3];
          __dst[4] = __src[4];
          __dst[5] = __src[5];
          __dst[0] = __src[0];
          __dst[1] = __src[1];
          outlined init with copy of FloatingPointRoundingRule?(&v135, v120, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
          outlined init with copy of FloatingPointRoundingRule?(&v143, v120, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
          outlined destroy of TermOfAddress?(__dst, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
          return v4;
        }

        outlined init with copy of LocaleCache.State.IdentifierAndPrefs(&v134, __dst);
        outlined init with copy of FloatingPointRoundingRule?(&v135, __dst, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
        outlined init with copy of FloatingPointRoundingRule?(&v143, __dst, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
      }

      else
      {
        v79 = v4;
        *&v121[12] = *(&__src[7] + 12);
        v120[6] = __src[6];
        *v121 = __src[7];
        v120[2] = __src[2];
        v120[3] = __src[3];
        v120[4] = __src[4];
        v120[5] = __src[5];
        v120[0] = __src[0];
        v120[1] = __src[1];
        v88 = LOBYTE(__src[0]);
        v119[0] = *(__src + 1);
        *(v119 + 3) = DWORD1(__src[0]);
        v87 = *(&__src[0] + 1);
        v86 = __src[1];
        v84 = *&__src[3];
        v85 = __src[2];
        v82 = *&__src[4];
        v83 = *(&__src[3] + 1);
        v80 = *&__src[5];
        v81 = *(&__src[4] + 1);
        v18 = *(&__src[5] + 1);
        v19 = __src[6];
        v20 = __src[7];
        v21 = *(&__src[7] + 12) >> 32;
        v22 = BYTE8(__src[8]);
        v23 = BYTE9(__src[8]);
        v24 = BYTE10(__src[8]);
        v25 = BYTE11(__src[8]);
        v129 = __src[15];
        v130[0] = __src[16];
        *(v130 + 12) = *(&__src[16] + 12);
        v125 = __src[11];
        v126 = __src[12];
        v128 = __src[14];
        v127 = __src[13];
        v124 = __src[10];
        v123 = __src[9];
        if (_s10Foundation17LocalePreferencesVSgWOg(&v123) != 1)
        {
          v76 = v18;
          v74 = v21;
          v77 = v22;
          v72 = v25;
          v73 = v23;
          v75 = v24;
          v111 = __src[9];
          v112 = __src[10];
          v113 = __src[11];
          v114 = __src[12];
          v115 = __src[13];
          v116 = __src[14];
          v117 = __src[15];
          *v118 = __src[16];
          *&v118[12] = *(&__src[16] + 12);
          v26 = *(&__src[10] + 1);
          v27 = *&__src[10];
          v29 = *(&__src[11] + 1);
          v28 = *&__src[11];
          if (v88 != 2)
          {
            v30 = v20;
            if (v111 != 2 && ((v111 ^ v88) & 1) == 0)
            {
              goto LABEL_17;
            }

LABEL_48:
            outlined init with copy of LocaleCache.State.IdentifierAndPrefs(&v134, __dst);
            outlined init with copy of FloatingPointRoundingRule?(&v135, __dst, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
            outlined init with copy of FloatingPointRoundingRule?(&v143, __dst, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
            outlined init with copy of FloatingPointRoundingRule?(v120, __dst, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
            v5 = v78;
            LOBYTE(v44) = v75;
            goto LABEL_49;
          }

          v30 = v20;
          if (v111 != 2)
          {
            goto LABEL_48;
          }

LABEL_17:
          v68 = *(&v114 + 1);
          v71 = v114;
          v66 = *(&v115 + 1);
          v67 = v115;
          v64 = *(&v116 + 1);
          v65 = v116;
          v62 = *(&v117 + 1);
          v63 = v117;
          v61 = *&v118[16];
          v31 = *v118;
          v59 = v118[25];
          v60 = v118[24];
          v57 = v118[27];
          v58 = v118[26];
          if (v87)
          {
            if (!*(&v111 + 1))
            {
              goto LABEL_48;
            }

            v32 = *(v87 + 16);
            if (v32 != *(*(&v111 + 1) + 16))
            {
              goto LABEL_48;
            }

            if (v32 && v87 != *(&v111 + 1))
            {
              v33 = (v87 + 40);
              v34 = (*(&v111 + 1) + 40);
              do
              {
                if (*(v33 - 1) != *(v34 - 1) || *v33 != *v34)
                {
                  v36 = v30;
                  v37 = v26;
                  v38 = v27;
                  v39 = v29;
                  v40 = v28;
                  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v28 = v40;
                  v29 = v39;
                  v27 = v38;
                  v26 = v37;
                  v30 = v36;
                  if ((v41 & 1) == 0)
                  {
                    goto LABEL_48;
                  }
                }

                v33 += 2;
                v34 += 2;
              }

              while (--v32);
            }
          }

          else if (*(&v111 + 1))
          {
            goto LABEL_48;
          }

          if (*(&v86 + 1))
          {
            if (!v26)
            {
              goto LABEL_48;
            }

            if (v86 != __PAIR128__(v26, v27))
            {
              v42 = v28;
              v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v28 = v42;
              if ((v43 & 1) == 0)
              {
                goto LABEL_48;
              }
            }
          }

          else if (v26)
          {
            goto LABEL_48;
          }

          if (*(&v85 + 1))
          {
            if (!v29 || v85 != __PAIR128__(v29, v28) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          else if (v29)
          {
            goto LABEL_48;
          }

          if (v84)
          {
            v5 = v78;
            LOBYTE(v44) = v75;
            if (v71 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation8CalendarV10IdentifierO_SiTt1g5(v84, v71) & 1) != 0)
            {
LABEL_42:
              if (v83)
              {
                if (!v68 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation8CalendarV10IdentifierO_SiTt1g5(v83, v68) & 1) == 0)
                {
                  goto LABEL_54;
                }
              }

              else if (v68)
              {
                goto LABEL_54;
              }

              if (v82)
              {
                if (!v67)
                {
                  goto LABEL_54;
                }

                type metadata accessor for CFDictionaryRef(0);
                outlined init with copy of LocaleCache.State.IdentifierAndPrefs(&v134, __dst);
                outlined init with copy of FloatingPointRoundingRule?(&v135, __dst, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
                outlined init with copy of FloatingPointRoundingRule?(&v143, __dst, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
                outlined init with copy of FloatingPointRoundingRule?(v120, __dst, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
                lazy protocol witness table accessor for type CombineIdentifier and conformance CombineIdentifier(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, 255, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
                v45 = v67;
                v46 = static _CFObject.== infix(_:_:)();

                v5 = v78;
                if (v46)
                {
                  goto LABEL_63;
                }

LABEL_49:
                outlined destroy of TermOfAddress?(&v111, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_50:
                v93 = v88;
                *v94 = v119[0];
                *&v94[3] = *(v119 + 3);
                v95 = v87;
                v96 = v86;
                v97 = v85;
                v98 = v84;
                v99 = v83;
                v100 = v82;
                v101 = v81;
                v102 = v80;
                v103 = v76;
                v104 = v19;
                v105 = v20;
                v106 = v74;
                v107 = BYTE8(v20);
                v108 = v73;
                v109 = v44;
                v110 = v72;
                outlined destroy of LocalePreferences(&v93);
                __dst[6] = __src[6];
                __dst[7] = __src[7];
                *(&__dst[7] + 12) = *(&__src[7] + 12);
                __dst[2] = __src[2];
                __dst[3] = __src[3];
                __dst[4] = __src[4];
                __dst[5] = __src[5];
                __dst[0] = __src[0];
                __dst[1] = __src[1];
                outlined destroy of TermOfAddress?(__dst, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
                outlined destroy of LocaleCache.State.IdentifierAndPrefs(&v134);
                v4 = v79;
                goto LABEL_5;
              }

              if (v67)
              {
                goto LABEL_54;
              }

              outlined init with copy of LocaleCache.State.IdentifierAndPrefs(&v134, __dst);
              outlined init with copy of FloatingPointRoundingRule?(&v135, __dst, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
              outlined init with copy of FloatingPointRoundingRule?(&v143, __dst, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
              outlined init with copy of FloatingPointRoundingRule?(v120, __dst, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_63:
              if (v81)
              {
                if (!v66)
                {
                  goto LABEL_49;
                }

                type metadata accessor for CFDictionaryRef(0);
                lazy protocol witness table accessor for type CombineIdentifier and conformance CombineIdentifier(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, 255, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
                v47 = v66;
                v48 = static _CFObject.== infix(_:_:)();

                v5 = v78;
                if ((v48 & 1) == 0)
                {
                  goto LABEL_49;
                }
              }

              else if (v66)
              {
                goto LABEL_49;
              }

              if (v80)
              {
                if (!v65)
                {
                  goto LABEL_49;
                }

                type metadata accessor for CFDictionaryRef(0);
                lazy protocol witness table accessor for type CombineIdentifier and conformance CombineIdentifier(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, 255, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
                v49 = v65;
                v50 = static _CFObject.== infix(_:_:)();

                v5 = v78;
                if ((v50 & 1) == 0)
                {
                  goto LABEL_49;
                }
              }

              else if (v65)
              {
                goto LABEL_49;
              }

              if (v76)
              {
                if (!v64)
                {
                  goto LABEL_49;
                }

                type metadata accessor for CFDictionaryRef(0);
                lazy protocol witness table accessor for type CombineIdentifier and conformance CombineIdentifier(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, 255, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
                v51 = v64;
                v52 = static _CFObject.== infix(_:_:)();

                v5 = v78;
                if ((v52 & 1) == 0)
                {
                  goto LABEL_49;
                }
              }

              else if (v64)
              {
                goto LABEL_49;
              }

              if (v19)
              {
                if (!v63)
                {
                  goto LABEL_49;
                }

                type metadata accessor for CFDictionaryRef(0);
                lazy protocol witness table accessor for type CombineIdentifier and conformance CombineIdentifier(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, 255, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
                v53 = v63;
                v54 = static _CFObject.== infix(_:_:)();

                v5 = v78;
                if ((v54 & 1) == 0)
                {
                  goto LABEL_49;
                }
              }

              else if (v63)
              {
                goto LABEL_49;
              }

              if (*(&v19 + 1))
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                if (!v62)
                {
                  goto LABEL_49;
                }

                v69 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation4DateV11FormatStyleV0cE0V_SSTt1g5(*(&v19 + 1), v62);

                if ((v69 & 1) == 0)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                if (v62)
                {
                  goto LABEL_49;
                }
              }

              if (v20)
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                if (!v31)
                {
                  goto LABEL_49;
                }

                v70 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt32V_SSTt1g5(v20, v31);

                if ((v70 & 1) == 0)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                if (v31)
                {
                  goto LABEL_49;
                }
              }

              if (v74)
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                v55 = v77;
                if (!v61 || (*(&v20 + 1) != *(&v31 + 1) || v74 != v61) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                v55 = v77;
                if (v61)
                {
                  goto LABEL_49;
                }
              }

              if (v55 == 2)
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                if (v60 != 2)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                if (v60 == 2 || ((v60 ^ v77) & 1) != 0)
                {
                  goto LABEL_49;
                }
              }

              outlined destroy of TermOfAddress?(&v111, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
              if (v73 == 2)
              {
                v5 = v78;
                v44 = v75;
                if (v59 != 2)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v5 = v78;
                v44 = v75;
                if (v59 == 2 || ((v59 ^ v73) & 1) != 0)
                {
                  goto LABEL_50;
                }
              }

              if (v44 == 2)
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                if (v58 != 2)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                if (v58 == 2 || ((v58 ^ v75) & 1) != 0)
                {
                  goto LABEL_50;
                }
              }

              if (v72 == 2)
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                if (v57 == 2)
                {
                  goto LABEL_120;
                }
              }

              else
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                if (v57 != 2 && ((v57 ^ v72) & 1) == 0)
                {
LABEL_120:
                  v93 = v88;
                  *v94 = v119[0];
                  *&v94[3] = *(v119 + 3);
                  v95 = v87;
                  v96 = v86;
                  v97 = v85;
                  v98 = v84;
                  v99 = v83;
                  v100 = v82;
                  v101 = v81;
                  v102 = v80;
                  v103 = v76;
                  v104 = v19;
                  v105 = v20;
                  v106 = v74;
                  v107 = BYTE8(v20);
                  v108 = v73;
                  v109 = v44;
                  v110 = v72;
                  outlined destroy of LocalePreferences(&v93);
                  __dst[6] = __src[6];
                  __dst[7] = __src[7];
                  *(&__dst[7] + 12) = *(&__src[7] + 12);
                  __dst[2] = __src[2];
                  __dst[3] = __src[3];
                  __dst[4] = __src[4];
                  __dst[5] = __src[5];
                  __dst[0] = __src[0];
                  __dst[1] = __src[1];
                  outlined destroy of TermOfAddress?(__dst, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
                  outlined destroy of LocaleCache.State.IdentifierAndPrefs(&v134);
                  return v79;
                }
              }

              goto LABEL_50;
            }
          }

          else
          {
            v5 = v78;
            LOBYTE(v44) = v75;
            if (!v71)
            {
              goto LABEL_42;
            }
          }

LABEL_54:
          outlined init with copy of LocaleCache.State.IdentifierAndPrefs(&v134, __dst);
          outlined init with copy of FloatingPointRoundingRule?(&v135, __dst, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
          outlined init with copy of FloatingPointRoundingRule?(&v143, __dst, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
          outlined init with copy of FloatingPointRoundingRule?(v120, __dst, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
          goto LABEL_49;
        }

        LOBYTE(v111) = v88;
        *(&v111 + 1) = *(__src + 1);
        DWORD1(v111) = DWORD1(__src[0]);
        *(&v111 + 1) = v87;
        v112 = v86;
        v113 = v85;
        v114 = __PAIR128__(v83, v84);
        v115 = __PAIR128__(v81, v82);
        v116 = __PAIR128__(v18, v80);
        v117 = v19;
        *v118 = v20;
        *&v118[16] = v21;
        v118[24] = v22;
        v118[25] = v23;
        v118[26] = v24;
        v118[27] = v25;
        outlined init with copy of LocaleCache.State.IdentifierAndPrefs(&v134, __dst);
        outlined init with copy of FloatingPointRoundingRule?(&v135, __dst, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
        outlined init with copy of FloatingPointRoundingRule?(&v143, __dst, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
        outlined init with copy of FloatingPointRoundingRule?(v120, __dst, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
        outlined destroy of LocalePreferences(&v111);
        v5 = v78;
      }

      memcpy(__dst, __src, 0x11CuLL);
      outlined destroy of TermOfAddress?(__dst, &_s10Foundation17LocalePreferencesVSg_ADtMd, &_s10Foundation17LocalePreferencesVSg_ADtMR);
      outlined destroy of LocaleCache.State.IdentifierAndPrefs(&v134);
LABEL_5:
      v4 = (v4 + 1) & v89;
    }

    while (((*(v90 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *(a1 + 16);
    v7 = *(a1 + 5);
    v22[0] = *(a1 + 3);
    v22[1] = v7;
    v22[2] = *(a1 + 7);
    v23 = *(a1 + 36);
    v8 = *a1;
    v9 = a1[1];
    v17 = *(a1 + 5);
    while (1)
    {
      v10 = (*(v2 + 48) + 96 * v4);
      v11 = v10[1];
      v19 = *v10;
      *v20 = v11;
      v12 = v10[5];
      v14 = v10[2];
      v13 = v10[3];
      *&v20[48] = v10[4];
      v21 = v12;
      *&v20[16] = v14;
      *&v20[32] = v13;
      if (v19 != __PAIR128__(v9, v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v20[0] != v6)
      {
        goto LABEL_5;
      }

      v24[0] = *&v20[8];
      v24[1] = *&v20[24];
      v24[2] = *&v20[40];
      v25 = *&v20[56];
      outlined init with copy of ICUDateFormatter.PatternCacheKey(&v19, v18);
      if (!specialized static Date.FormatStyle.DateFieldCollection.== infix(_:_:)(v24, v22))
      {
        goto LABEL_4;
      }

      if (!*(&v21 + 1))
      {
        break;
      }

      if (!*(&v17 + 1))
      {
        goto LABEL_4;
      }

      if (v21 == v17)
      {
LABEL_15:
        outlined destroy of ICUDateFormatter.PatternCacheKey(&v19);
        return v4;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined destroy of ICUDateFormatter.PatternCacheKey(&v19);
      if (v15)
      {
        return v4;
      }

LABEL_5:
      v4 = (v4 + 1) & v5;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    if (!*(&v17 + 1))
    {
      goto LABEL_15;
    }

LABEL_4:
    outlined destroy of ICUDateFormatter.PatternCacheKey(&v19);
    goto LABEL_5;
  }

  return v4;
}

uint64_t protocol witness for _LocaleProtocol.bridgeToNSLocale() in conformance _LocaleICU()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = static LocaleCache.cache;
  os_unfair_lock_lock((static LocaleCache.cache + 48));
  partial apply for closure #1 in LocaleCache.fixedNSLocale(_:)(&v0[4], &v2);
  os_unfair_lock_unlock(v0 + 12);
  return v2;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocaleCache.State.IdentifierAndPrefs(uint64_t a1)
{
  v2 = *(v1 + 16);
  v33 = *(v1 + 24);
  v34 = *(v1 + 40);
  v30 = *(v1 + 32);
  v31 = *(v1 + 48);
  v35 = *(v1 + 56);
  v36 = *(v1 + 64);
  v37 = *(v1 + 72);
  v38 = *(v1 + 80);
  v39 = *(v1 + 88);
  v40 = *(v1 + 96);
  v32 = *(v1 + 104);
  v41 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = *(v1 + 128);
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  v8 = *(v1 + 153);
  v9 = *(v1 + 154);
  v10 = *(v1 + 155);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v43 = v2;
  *v44 = *(v1 + 17);
  *&v44[3] = *(v1 + 20);
  v45 = v33;
  v46 = v30;
  v47 = v34;
  v48 = v31;
  v49 = v35;
  v50 = v36;
  v51 = v37;
  v52 = v38;
  v53 = v39;
  v54 = v40;
  v55 = v32;
  v56 = v41;
  v29 = v3;
  v57 = v3;
  v58 = v4;
  v59 = v5;
  v60 = v6;
  v61 = v7;
  v62 = v8;
  v63 = v9;
  v64 = v10;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v43) == 1)
  {
    goto LABEL_48;
  }

  Hasher._combine(_:)(1u);
  if (v2 == 2)
  {
    v11 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v11 = v2 & 1;
  }

  Hasher._combine(_:)(v11);
  if (v33)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v33 + 16));
    v12 = *(v33 + 16);
    if (v12)
    {
      v13 = v33 + 40;
      do
      {

        String.hash(into:)();

        v13 += 16;
        --v12;
      }

      while (v12);
    }

    if (v34)
    {
      goto LABEL_10;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v34)
    {
LABEL_10:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_13;
    }
  }

  Hasher._combine(_:)(0);
LABEL_13:
  if (v35)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v36)
    {
      goto LABEL_15;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v36)
    {
LABEL_15:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v42, v36, v14, v15, v16, v17, v18, v19);
      if (v37)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  Hasher._combine(_:)(0);
  if (v37)
  {
LABEL_16:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v42, v37, v20, v21, v22, v23, v24, v25);
    if (v38)
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

LABEL_22:
  Hasher._combine(_:)(0);
  if (v38)
  {
LABEL_17:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v39)
    {
      goto LABEL_18;
    }

LABEL_24:
    Hasher._combine(_:)(0);
    if (v40)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

LABEL_23:
  Hasher._combine(_:)(0);
  if (!v39)
  {
    goto LABEL_24;
  }

LABEL_18:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (v40)
  {
LABEL_19:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_26;
  }

LABEL_25:
  Hasher._combine(_:)(0);
LABEL_26:
  if (v32)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v41)
    {
LABEL_28:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      goto LABEL_31;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v41)
    {
      goto LABEL_28;
    }
  }

  Hasher._combine(_:)(0);
LABEL_31:
  if (v29)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v42, v29);
    if (v4)
    {
      goto LABEL_33;
    }

LABEL_36:
    Hasher._combine(_:)(0);
    if (v6)
    {
      goto LABEL_34;
    }

    goto LABEL_37;
  }

  Hasher._combine(_:)(0);
  if (!v4)
  {
    goto LABEL_36;
  }

LABEL_33:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(v42, v4);
  if (v6)
  {
LABEL_34:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_38;
  }

LABEL_37:
  Hasher._combine(_:)(0);
LABEL_38:
  if (v7 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v7 & 1);
  }

  if (v8 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v8 & 1);
  }

  if (v9 == 2)
  {
    v26 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v26 = v9 & 1;
  }

  Hasher._combine(_:)(v26);
  if (v10 != 2)
  {
    Hasher._combine(_:)(1u);
    v27 = v10 & 1;
    goto LABEL_50;
  }

LABEL_48:
  v27 = 0;
LABEL_50:
  Hasher._combine(_:)(v27);
  return Hasher._finalize()();
}

uint64_t get_enum_tag_for_layout_string_10Foundation17LocalePreferencesVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

NSLocale __swiftcall Locale._bridgeToObjectiveC()()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 488))(ObjectType, v1);
}

uint64_t storeEnumTagSinglePayload for LocalePreferences(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 140) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 140) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t outlined init with copy of LocalePreferences?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

NSDictionary __swiftcall Dictionary._bridgeToObjectiveC()()
{
  if ((v0 & 0xC000000000000001) != 0)
  {

    return swift_unknownObjectRetain();
  }

  else
  {

    return _NativeDictionary.bridged()();
  }
}

uint64_t readDataFromFile(path:reportProgress:maxLength:options:)(__int128 *a1, char a2, off_t a3, char a4, uint64_t a5)
{
  v7 = *(a1 + 16);
  v18 = MEMORY[0x1E69E7CC8];
  v12 = *a1;
  v13 = v7;
  result = readBytesFromFile(path:reportProgress:maxLength:options:attributesToRead:attributes:)(&v12, a2, a3, a4 & 1, a5, MEMORY[0x1E69E7CC0], &v18, &v14);
  if (v6)
  {

    return v5;
  }

  v5 = v15;
  v9 = v16;
  v10 = v17;
  if (!v15)
  {
    outlined consume of Data.Deallocator?(v16, v17);

    return v5;
  }

  v11 = v14;
  if (v14)
  {
    if (v16 != 4)
    {
      outlined copy of Data.Deallocator?(v16);

      v14 = v9;
      v15 = v10;
      v5 = specialized Data.init(bytesNoCopy:count:deallocator:)(v11, v5, &v14);
      outlined consume of Data.Deallocator?(v9, v10);
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t outlined copy of Data.Deallocator(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

uint64_t specialized Data.init(bytesNoCopy:count:deallocator:)(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = *a3;
  v6 = a3[1];
  if (*a3 < 4)
  {
    v7 = 0;
    v8 = *(&off_1EEEE5A90 + v5);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (v5 >= 4)
    {
      v12 = *a3;
    }

    else
    {
      v12 = *(&off_1EEEE5A90 + v5);
    }

    outlined copy of Data.Deallocator(*a3);
    outlined copy of Data.Deallocator(v5);
    v12(a1, 0);

    v11 = 0;
    goto LABEL_12;
  }

  v8 = *a3;
  v7 = a3[1];
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_3:
  type metadata accessor for __DataStorage();
  result = swift_allocObject();
  if (a2 <= 0x3FFFFFFFFFFFFFFELL)
  {
    v10 = result;
    *(result + 32) = a2;
    *(result + 40) = 0;
    *(result + 64) = 0;
    *(result + 16) = a1;
    *(result + 24) = a2;
    *(result + 48) = v8;
    *(result + 56) = v7;
    if (v5 == 3)
    {
      *(result + 32) = a2 | 0x8000000000000000;
    }

    outlined copy of Data.Deallocator(v5);
    v11 = specialized Data._Representation.init(_:count:)(v10, a2);
LABEL_12:
    outlined consume of Data.Deallocator(v5, v6);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for Measurement(uint64_t *a1, int a2)
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

id @objc static NSLocale._localeIdentifierByAddingLikelySubtags(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  specialized static Locale.localeIdentifierWithLikelySubtags(_:)(v3, v4);

  v5 = String._bridgeToObjectiveCImpl()();

  return v5;
}

uint64_t _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA46450LL4host14knownIPLiteralSbx_SbtSyRzlFZSs_Tt1g5(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    goto LABEL_2;
  }

  if ((a2 ^ a1) >= 0x4000)
  {

    if (Substring.UTF8View.subscript.getter() == 91)
    {
      if (__OFSUB__(Substring.UTF8View.distance(from:to:)(), 1))
      {
        goto LABEL_109;
      }

      Substring.UTF8View.index(_:offsetBy:)();
      v33 = Substring.UTF8View.subscript.getter();

      if (v33 == 93)
      {
LABEL_2:
        v9 = a2 >> 14;
        if (a2 >> 14 == a1 >> 14)
        {
          __break(1u);
        }

        else
        {

          if (Substring.UTF8View.subscript.getter() != 91)
          {
LABEL_114:

            __break(1u);
            return result;
          }

          if (!__OFSUB__(Substring.UTF8View.distance(from:to:)(), 1))
          {
            Substring.UTF8View.index(_:offsetBy:)();
            v10 = Substring.UTF8View.subscript.getter();

            if (v10 == 93)
            {

              v11 = Substring.UTF8View.index(after:)();
              if (!__OFSUB__(Substring.UTF8View.distance(from:to:)(), 1))
              {
                if (Substring.UTF8View.index(_:offsetBy:)() >> 14 >= v11 >> 14)
                {
                  v12 = Substring.subscript.getter();
                  v14 = v13;
                  v16 = v15;
                  v18 = v17;
                  v19 = specialized Collection<>.firstIndex(of:)(37, a1, a2, a3, a4);
                  if (v20)
                  {
                    v21 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v12, v14, v16, v18, 2, 0);
                    if (v21 != 2)
                    {
LABEL_13:
                      v31 = v21;
LABEL_14:

                      v32 = v31;
                      return v32 & 1;
                    }

                    v97 = v12;
                    v98 = v14;
                    v99 = v16;
                    v100 = v18;
                    lazy protocol witness table accessor for type Substring and conformance Substring();
                    StringProtocol._ephemeralString.getter();
                    v22 = String._bridgeToObjectiveCImpl()();

                    v23 = [v22 _fastCharacterContents];
                    v24 = v22;
                    if (v23)
                    {
                      v97 = v12;
                      v98 = v14;
                      v99 = v16;
                      v100 = v18;
                      StringProtocol._ephemeralString.getter();
                      v25 = String._bridgeToObjectiveCImpl()();

                      v26 = [v25 length];
                      swift_unknownObjectRelease();
                      v27 = v23;
                      v28 = v26;
                      v29 = 2;
                      v30 = 0;
LABEL_12:
                      v21 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v27, v28, v29, v30);
                      goto LABEL_13;
                    }

                    v54 = v14 >> 14;
                    v55 = (v16 >> 59) & 1;
                    if ((v18 & 0x1000000000000000) == 0)
                    {
                      LOBYTE(v55) = 1;
                    }

                    v56 = 4 << v55;
                    v57 = v12 >> 14;
                    if ((v18 & 0x2000000000000000) != 0)
                    {
                      v58 = HIBYTE(v18) & 0xF;
                    }

                    else
                    {
                      v58 = v16 & 0xFFFFFFFFFFFFLL;
                    }

                    while (1)
                    {
                      v59 = v12 >> 14;
                      if (v12 >> 14 == v54)
                      {

                        v32 = 1;
                        return v32 & 1;
                      }

                      v60 = v12 & 0xC;
                      v61 = v12;
                      if (v60 == v56)
                      {
                        v61 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, v16, v18);
                        v59 = v61 >> 14;
                        if (v61 >> 14 < v57)
                        {
                          goto LABEL_107;
                        }
                      }

                      else if (v59 < v57)
                      {
                        goto LABEL_107;
                      }

                      if (v59 >= v54)
                      {
                        goto LABEL_107;
                      }

                      if ((v18 & 0x1000000000000000) != 0)
                      {
                        v63 = String.UTF8View._foreignSubscript(position:)();
                        if (v60 == v56)
                        {
                          goto LABEL_49;
                        }
                      }

                      else if ((v18 & 0x2000000000000000) != 0)
                      {
                        v97 = v16;
                        v98 = v18 & 0xFFFFFFFFFFFFFFLL;
                        v63 = *(&v97 + (v61 >> 16));
                        if (v60 == v56)
                        {
                          goto LABEL_49;
                        }
                      }

                      else
                      {
                        v62 = (v18 & 0xFFFFFFFFFFFFFFFLL) + 32;
                        if ((v16 & 0x1000000000000000) == 0)
                        {
                          v65 = v61;
                          v62 = _StringObject.sharedUTF8.getter();
                          v61 = v65;
                        }

                        v63 = *(v62 + (v61 >> 16));
                        if (v60 == v56)
                        {
LABEL_49:
                          v12 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, v16, v18);
                          if ((v18 & 0x1000000000000000) == 0)
                          {
                            goto LABEL_55;
                          }

                          goto LABEL_50;
                        }
                      }

                      if ((v18 & 0x1000000000000000) == 0)
                      {
LABEL_55:
                        if (v63 < 0)
                        {
                          goto LABEL_61;
                        }

                        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
                        goto LABEL_39;
                      }

LABEL_50:
                      if (v58 <= v12 >> 16)
                      {
                        goto LABEL_108;
                      }

                      v64 = String.UTF8View._foreignIndex(after:)();
                      if (v63 < 0)
                      {
                        goto LABEL_61;
                      }

                      v12 = v64;
LABEL_39:
                      if ((UInt8.allowedURLComponents.getter(v63) & 2) == 0)
                      {
                        goto LABEL_61;
                      }
                    }
                  }

                  v96 = v14;
                  v34 = v19;
                  if (v9 == Substring.UTF8View.index(after:)() >> 14 || Substring.UTF8View.subscript.getter() != 50 || v9 == Substring.UTF8View.index(after:)() >> 14 || Substring.UTF8View.subscript.getter() != 53)
                  {
                    goto LABEL_61;
                  }

                  if (v34 >> 14 >= v12 >> 14)
                  {
                    v35 = Substring.subscript.getter();
                    v37 = v36;
                    v39 = v38;
                    v41 = v40;
                    v42 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v35, v36, v38, v40, 2, 0);
                    if (v42 != 2)
                    {
                      v67 = v42;

                      if (v67)
                      {
LABEL_96:
                        if (v96 >> 14 >= Substring.index(after:)() >> 14)
                        {
                          v80 = Substring.subscript.getter();
                          v82 = v81;
                          v84 = v83;
                          v86 = v85;
                          v87 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v80, v81, v83, v85, 8, 1);
                          if (v87 == 2)
                          {
                            v97 = v80;
                            v98 = v82;
                            v99 = v84;
                            v100 = v86;
                            lazy protocol witness table accessor for type Substring and conformance Substring();
                            StringProtocol._ephemeralString.getter();
                            v88 = String._bridgeToObjectiveCImpl()();

                            v89 = [v88 _fastCharacterContents];
                            v90 = v88;
                            if (v89)
                            {
                              v97 = v80;
                              v98 = v82;
                              v99 = v84;
                              v100 = v86;
                              StringProtocol._ephemeralString.getter();
                              v91 = String._bridgeToObjectiveCImpl()();

                              v92 = [v91 length];
                              swift_unknownObjectRelease();
                              v27 = v89;
                              v28 = v92;
                              v29 = 8;
                              v30 = 1;
                              goto LABEL_12;
                            }

                            v87 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v80, v82, v84, v86, 8u, 1);
                          }

                          v31 = v87;

                          goto LABEL_14;
                        }

                        goto LABEL_113;
                      }

LABEL_61:

                      v32 = 0;
                      return v32 & 1;
                    }

                    v97 = v35;
                    v98 = v37;
                    v99 = v39;
                    v100 = v41;
                    lazy protocol witness table accessor for type Substring and conformance Substring();
                    StringProtocol._ephemeralString.getter();
                    v43 = String._bridgeToObjectiveCImpl()();

                    v44 = [v43 _fastCharacterContents];
                    v45 = v43;
                    if (v44)
                    {
                      v97 = v35;
                      v98 = v37;
                      v99 = v39;
                      v100 = v41;
                      v46 = v44;
                      StringProtocol._ephemeralString.getter();
                      v47 = String._bridgeToObjectiveCImpl()();

                      v48 = [v47 length];
                      swift_unknownObjectRelease();
                      if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v46, v48, 2u, 0))
                      {
                        goto LABEL_96;
                      }

                      goto LABEL_61;
                    }

                    v68 = v39;
                    v69 = v37 >> 14;
                    v70 = (v68 >> 59) & 1;
                    if ((v41 & 0x1000000000000000) == 0)
                    {
                      LOBYTE(v70) = 1;
                    }

                    v71 = 4 << v70;
                    v94 = v35 >> 14;
                    v72 = HIBYTE(v41) & 0xF;
                    v95 = v68;
                    if ((v41 & 0x2000000000000000) == 0)
                    {
                      v72 = v68 & 0xFFFFFFFFFFFFLL;
                    }

                    v93 = v72;
                    while (1)
                    {
                      v73 = v35 >> 14;
                      if (v35 >> 14 == v69)
                      {

                        goto LABEL_96;
                      }

                      v74 = v35 & 0xC;
                      v75 = v35;
                      if (v74 == v71)
                      {
                        v75 = _StringGuts._slowEnsureMatchingEncoding(_:)(v35, v95, v41);
                        v73 = v75 >> 14;
                      }

                      if (v73 < v94 || v73 >= v69)
                      {
                        goto LABEL_110;
                      }

                      if ((v41 & 0x1000000000000000) != 0)
                      {
                        v78 = String.UTF8View._foreignSubscript(position:)();
                        if (v74 == v71)
                        {
                          goto LABEL_84;
                        }
                      }

                      else
                      {
                        v76 = v75 >> 16;
                        if ((v41 & 0x2000000000000000) != 0)
                        {
                          v97 = v95;
                          v98 = v41 & 0xFFFFFFFFFFFFFFLL;
                          v78 = *(&v97 + v76);
                          if (v74 == v71)
                          {
                            goto LABEL_84;
                          }
                        }

                        else
                        {
                          v77 = (v41 & 0xFFFFFFFFFFFFFFFLL) + 32;
                          if ((v95 & 0x1000000000000000) == 0)
                          {
                            v77 = _StringObject.sharedUTF8.getter();
                          }

                          v78 = *(v77 + v76);
                          if (v74 == v71)
                          {
LABEL_84:
                            v35 = _StringGuts._slowEnsureMatchingEncoding(_:)(v35, v95, v41);
                            if ((v41 & 0x1000000000000000) == 0)
                            {
                              goto LABEL_71;
                            }

                            goto LABEL_88;
                          }
                        }
                      }

                      if ((v41 & 0x1000000000000000) == 0)
                      {
LABEL_71:
                        if (v78 < 0)
                        {
                          goto LABEL_93;
                        }

                        v35 = (v35 & 0xFFFFFFFFFFFF0000) + 65540;
                        goto LABEL_73;
                      }

LABEL_88:
                      if (v93 <= v35 >> 16)
                      {
                        goto LABEL_112;
                      }

                      v79 = String.UTF8View._foreignIndex(after:)();
                      if (v78 < 0)
                      {
LABEL_93:

                        goto LABEL_61;
                      }

                      v35 = v79;
LABEL_73:
                      if ((UInt8.allowedURLComponents.getter(v78) & 2) == 0)
                      {
                        goto LABEL_93;
                      }
                    }
                  }

LABEL_111:
                  __break(1u);
LABEL_112:
                  __break(1u);
LABEL_113:
                  __break(1u);
                  goto LABEL_114;
                }

                goto LABEL_106;
              }

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
              goto LABEL_111;
            }

LABEL_104:
            __break(1u);
            goto LABEL_105;
          }
        }

        __break(1u);
        goto LABEL_104;
      }
    }

    else
    {
    }
  }

  v32 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(a1, a2, a3, a4, 4, 1);
  if (v32 == 2)
  {
    v97 = a1;
    v98 = a2;
    v99 = a3;
    v100 = a4;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    StringProtocol._ephemeralString.getter();
    v49 = String._bridgeToObjectiveCImpl()();

    v50 = [v49 _fastCharacterContents];
    v51 = v49;
    if (v50)
    {
      v97 = a1;
      v98 = a2;
      v99 = a3;
      v100 = a4;
      StringProtocol._ephemeralString.getter();
      v52 = String._bridgeToObjectiveCImpl()();

      v53 = [v52 length];
      swift_unknownObjectRelease();
      v32 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v50, v53, 4u, 1);
    }

    else
    {
      v32 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(a1, a2, a3, a4, 4u, 1);
    }
  }

  return v32 & 1;
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2, void (*a3)(char *, char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x1E69E6158];

  swift_unknownObjectRetain();
  if (a3 != v10 || a4 != MEMORY[0x1E69E7CA0] + 8)
  {
    v12 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (!v12)
    {
      if (*(*(a3 - 1) + 72) < 8 || *(*(a4 - 8) + 72) <= 7)
      {
        type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
        lazy protocol witness table accessor for type NSObject and conformance NSObject();
        swift_unknownObjectRetain();
        v14 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
        if (!v14)
        {
          v15 = [a1 copyWithZone_];
          v14 = ~(v15 >> 1) & 0x4000000000000000 | v15;
        }

        v16 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v14, a3, a4, a5);

        *a2 = v16;
        return v16 != 0;
      }

      v24 = [a1 count];
      if (v24)
      {
        LOBYTE(v29[0]) = 1;
        MEMORY[0x1EEE9AC00](v24);
        v28[2] = a3;
        v28[3] = a4;
        v28[4] = a5;
        v28[5] = a1;
        v28[6] = v25;
        v28[7] = v29;
        v27 = _NativeDictionary.init(_unsafeUninitializedCapacity:allowingDuplicates:initializingWith:)(v25, v26, partial apply for closure #1 in static Dictionary._conditionallyBridgeFromObjectiveC(_:result:), v28, a3, a4);
        v17 = LOBYTE(v29[0]);
        if (LOBYTE(v29[0]) != 1)
        {

          v27 = 0;
        }

        *a2 = v27;
        return v17;
      }

      v12 = specialized Dictionary.init(dictionaryLiteral:)(MEMORY[0x1E69E7CC0], a3, a4, a5);
    }

    goto LABEL_15;
  }

  v12 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (v12)
  {
LABEL_15:
    *a2 = v12;
    return 1;
  }

  v19 = [a1 count];
  if (!v19)
  {
    *a2 = MEMORY[0x1E69E7CC8];
    return 1;
  }

  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v21 = static _DictionaryStorage.allocate(capacity:)();
  v22 = v21[6];
  v23 = v21[7];

  [a1 _getObjects_andKeys_count_];
  if (v20 >= 1)
  {
    v29[0] = 0;
    v29[1] = 0;
    swift_unknownObjectRetain();
    _bridgeNonVerbatimFromObjectiveCConditional<A>(_:_:_:)();
    swift_unknownObjectRelease();
  }

  result = swift_arrayDestroy();
  v17 = 0;
  if (v20 >= 0)
  {
    v21[2] = 0;

    *a2 = 0;
    return v17;
  }

  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t specialized static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(uint64_t a1, unint64_t a2, char a3, char a4)
{
  LOBYTE(v5) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = static String._copying(_:)(a1, a2);
    v108 = v107;

    *(v8 + 16) = a1;
    *(v8 + 24) = v108;
    a2 = v108;
  }

  v144 = a2;
  v145 = v8;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(a2) & 0xF;
    v169 = a1;
    v170 = a2 & 0xFFFFFFFFFFFFFFLL;
    v157 = 0uLL;
    LOBYTE(v158) = 1;
    *(&v158 + 1) = 0;
    *&v159 = 0;
    BYTE8(v159) = 1;
    v160 = 0uLL;
    LOBYTE(v161) = 1;
    *&v162 = 0;
    *(&v161 + 1) = 0;
    BYTE8(v162) = 1;
    v163 = 0uLL;
    v164 = 1;
    *&v166 = 0;
    v165 = 0;
    BYTE8(v166) = 1;
    v167 = 0uLL;
    v168[0] = 1;
    *&v168[16] = 0;
    *&v168[8] = 0;
    v168[24] = 1;
    *&v168[25] = 0;
    v168[27] = 0;
    if (!v19)
    {
      v142 = a1;
      v143 = a4;
      BYTE8(v166) = 0;
      v165 = 0;
      *&v166 = 0;
      v152 = v161;
      v153 = v162;
      v148 = v157;
      v149 = v158;
      v150 = v159;
      v151 = v160;
      v154 = v166;
      v155 = v167;
      *v156 = *v168;
      *&v156[12] = *&v168[12];
LABEL_27:
      _NSBundleDeallocatingImmortalBundle();
      v13 = *(&v148 + 1);
      v22 = v148;
      v31 = v149;
      v23 = *(&v163 + 1);
      v27 = v164;
      v24 = v154;
      v146 = v165;
      v25 = *&v156[16];
      LOBYTE(v12) = v156[24];
      v112 = v156[27];
      v113 = *(&v155 + 1);
      v114 = *&v156[8];
      v123 = v153;
      v125 = *(&v152 + 1);
      v120 = v163;
      v115 = v155;
      LOBYTE(v116) = BYTE8(v154);
      BYTE4(v116) = v156[25];
      v128 = *(&v151 + 1);
      v130 = v151;
      v133 = v150;
      v135 = *(&v149 + 1);
      v117 = v156[26];
      v30 = BYTE8(v150);
      v29 = v152;
      v28 = BYTE8(v153);
      v26 = v156[0];
      goto LABEL_178;
    }

    v10 = 0;
    v14 = &v167 + 1;
    v15 = v168;
    v139 = &v168[16];
    v16 = &v168[24];
    while (1)
    {
      v20 = *(&v169 + v10) - 35;
      if (v20 <= 0x3A)
      {
        if (((1 << (*(&v169 + v10) - 35)) & 0x500000030001001) != 0)
        {
          goto LABEL_23;
        }

        if (v20 == 23)
        {
          break;
        }
      }

      if (v19 == ++v10)
      {
        v21 = HIBYTE(a2) & 0xF;
        goto LABEL_59;
      }
    }

    if (!v10 && (v5 & 1) == 0)
    {
LABEL_23:
      v21 = 0;
      goto LABEL_59;
    }

    *&v157 = 0;
    *(&v157 + 1) = v10;
    LOBYTE(v158) = 0;
    if ((v19 - 1) == v10)
    {
      v51 = HIBYTE(a2) & 0xF;
      if (v10)
      {
        if (v169 < 0x41u)
        {
          goto LABEL_24;
        }

        for (i = 0; i != v10; ++i)
        {
          v53 = *(&v169 + i);
          if (v53 < 0 || (UInt8.allowedURLComponents.getter(v53) & 1) == 0)
          {
            goto LABEL_24;
          }
        }
      }

      else if ((v5 & 1) == 0)
      {
        goto LABEL_24;
      }

      v142 = a1;
      v143 = a4;
      v165 = v51;
      *&v166 = v51;
      BYTE8(v166) = 0;
      *v156 = *v168;
      *&v156[12] = *&v168[12];
      v152 = v161;
      v153 = v162;
      v148 = v157;
      v149 = v158;
      v150 = v159;
      v151 = v160;
      v154 = v166;
      v155 = v167;
      goto LABEL_27;
    }

    if (v10)
    {
      if (v169 < 0x41u)
      {
        goto LABEL_24;
      }

      v64 = 0;
      v21 = (v10 + 1);
      while (1)
      {
        if (*(&v169 + v64) < 0)
        {
          goto LABEL_24;
        }

        v65 = *(&v169 + v64);
        if (v65 <= 0x2A && ((1 << v65) & 0x7D200000000) != 0)
        {
          goto LABEL_24;
        }

        if (v65 > 0x2F)
        {
          goto LABEL_146;
        }

        if (((1 << v65) & 0x680000000000) == 0)
        {
          break;
        }

LABEL_143:
        if (v10 == ++v64)
        {
          goto LABEL_59;
        }
      }

      if (((1 << v65) & 0x900000000000) != 0)
      {
        goto LABEL_24;
      }

LABEL_146:
      v67 = v65 - 58;
      if (v65 - 58 <= 0xFFFFFFF5)
      {
        v55 = v67 > 6;
        v68 = (1 << v67) & 0x6B;
        v69 = v55 || v68 == 0;
        if (!v69 || (v65 & 0x5F) - 91 <= 0xFFFFFFE5)
        {
          goto LABEL_24;
        }
      }

      goto LABEL_143;
    }

    v21 = 1;
    if ((v5 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_59:
    if (v21 == v19)
    {
      v41 = 0;
    }

    else
    {
      v41 = v21;
    }

    if (v41 + 1 != v19 && *(&v169 + v41) == 47 && *(&v169 + v41 + 1) == 47)
    {
      result = v41 + 2;
      v42 = v19;
      if (v41 + 2 != v19)
      {
        v42 = v41 + 2;
        do
        {
          v59 = *(&v169 + v42);
          v55 = v59 > 0x3F;
          v60 = (1 << v59) & 0x8000800800000000;
          if (!v55 && v60 != 0)
          {
            goto LABEL_66;
          }

          ++v42;
        }

        while (v19 != v42);
        v42 = v19;
      }

LABEL_66:
      if (v42 < result)
      {
        goto LABEL_231;
      }

      if (result == v42)
      {
        *(&v161 + 1) = v41 + 2;
        *&v162 = v41 + 2;
        v41 += 2;
        BYTE8(v162) = 0;
      }

      else
      {
        v62 = v19;
        v41 = v42;
        if ((specialized static RFC3986Parser.parseAuthority(_:into:allowEmptyScheme:)(result, v42, &v169, &v157, v5 & 1) & 1) == 0)
        {
          goto LABEL_24;
        }

        v19 = v62;
        if ((v164 & 1) == 0)
        {
          v63 = v163;
          if (v163 != *(&v163 + 1))
          {
            while (*(&v169 + v63) - 58 > 0xFFFFFFF5)
            {
              if (*(&v163 + 1) == ++v63)
              {
                goto LABEL_69;
              }
            }

            if (*(&v157 + 1) - v157 == 11)
            {
              v106 = v158;
            }

            else
            {
              v106 = 1;
            }

            if ((v106 & 1) != 0 || (((0x3FFE000000000uLL >> ((v169 - 1) >> 1)) & 0x20) + v169) != 97 || (((0x3FFE000000000uLL >> ((BYTE1(v169) - 1) >> 1)) & 0x20) + BYTE1(v169)) != 100 || (((0x3FFE000000000uLL >> ((BYTE2(v169) - 1) >> 1)) & 0x20) + BYTE2(v169)) != 100 || (((0x3FFE000000000uLL >> ((BYTE3(v169) - 1) >> 1)) & 0x20) + BYTE3(v169)) != 114 || (((0x3FFE000000000uLL >> ((BYTE4(v169) - 1) >> 1)) & 0x20) + BYTE4(v169)) != 101 || (((0x3FFE000000000uLL >> ((BYTE5(v169) - 1) >> 1)) & 0x20) + BYTE5(v169)) != 115 || (((0x3FFE000000000uLL >> ((BYTE6(v169) - 1) >> 1)) & 0x20) + BYTE6(v169)) != 115 || (((0x3FFE000000000uLL >> ((HIBYTE(v169) - 1) >> 1)) & 0x20) + HIBYTE(v169)) != 98 || (((0x3FFE000000000uLL >> ((v170 - 1) >> 1)) & 0x20) + v170) != 111 || (((0x3FFE000000000uLL >> ((BYTE1(v170) - 1) >> 1)) & 0x20) + BYTE1(v170)) != 111 || (((0x3FFE000000000uLL >> ((BYTE2(v170) - 1) >> 1)) & 0x20) + BYTE2(v170)) != 107)
            {
              goto LABEL_24;
            }
          }
        }
      }
    }

LABEL_69:
    if (v19 < v41)
    {
      __break(1u);
    }

    else
    {
      v146 = v41;
      if (one-time initialization token for fileIDPrefix == -1)
      {
LABEL_71:
        v12 = static URL.fileIDPrefix;
        v43 = v19;
        result = specialized Sequence<>.starts<A>(with:)(static URL.fileIDPrefix, v146, v19, &v169);
        v36 = v146;
        if (result)
        {
          v168[27] = 1;
          v36 = *(v12 + 16) + v146;
        }

        v35 = v43;
        v143 = a4;
        v142 = a1;
        if (v36 != v43)
        {
          while (1)
          {
            v44 = *(&v169 + v36);
            if (v44 == 35 || v44 == 63)
            {
              break;
            }

            if (v43 == ++v36)
            {
              goto LABEL_77;
            }
          }

          if (v36 >= v146)
          {
            v165 = v146;
            *&v166 = v36;
            BYTE8(v166) = 0;
            if (v44 == 35)
            {
              goto LABEL_88;
            }

            if (v43 >= v36 + 1)
            {
              if (v43 - 1 == v36)
              {
LABEL_85:
                *&v167 = v36 + 1;
              }

              else
              {
                v45 = v36 + 1;
                while (*(&v169 + v45) != 35)
                {
                  if (v43 == ++v45)
                  {
                    goto LABEL_85;
                  }
                }

                *&v167 = v36 + 1;
                *(&v167 + 1) = v45;
                v168[0] = 0;
                v47 = v45 + 1;
                if (v43 < v45 + 1)
                {
LABEL_236:
                  __break(1u);
                  return result;
                }

LABEL_175:
                *&v168[8] = v47;
                v14 = v139;
                v15 = v16;
              }

              *v14 = v35;
              *v15 = 0;
              v13 = *(&v157 + 1);
              v22 = v157;
              v133 = v159;
              v135 = *(&v158 + 1);
              v128 = *(&v160 + 1);
              v130 = v160;
              v123 = v162;
              v125 = *(&v161 + 1);
              v23 = *(&v163 + 1);
              v120 = v163;
              v113 = *(&v167 + 1);
              v114 = *&v168[8];
              v115 = v167;
              v25 = *&v168[16];
              v31 = v158;
              v30 = BYTE8(v159);
              v29 = v161;
              v28 = BYTE8(v162);
              v27 = v164;
              LOBYTE(v116) = BYTE8(v166);
              goto LABEL_177;
            }

            goto LABEL_233;
          }

          goto LABEL_229;
        }

LABEL_77:
        LOBYTE(v116) = 0;
        BYTE8(v166) = 0;
        v13 = *(&v157 + 1);
        v22 = v157;
        v133 = v159;
        v135 = *(&v158 + 1);
        v128 = *(&v160 + 1);
        v130 = v160;
        v123 = v162;
        v125 = *(&v161 + 1);
        v23 = *(&v163 + 1);
        v120 = v163;
        v113 = *(&v167 + 1);
        v114 = *&v168[8];
        v115 = v167;
        v25 = *&v168[16];
        v31 = v158;
        v30 = BYTE8(v159);
        v29 = v161;
        v28 = BYTE8(v162);
        v27 = v164;
        v26 = v168[0];
        LOBYTE(v12) = v168[24];
        BYTE4(v116) = v168[25];
        v117 = v168[26];
        v112 = v168[27];
        v24 = v35;
LABEL_178:
        v75 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v22, v13, v31 & 1, v145);
        v138 = v76;
        v141 = v75;
        v137 = v77;
        v78 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v135, v133, v30 & 1, v145);
        v134 = v79;
        v136 = v78;
        v132 = v80;
        v81 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v130, v128, v29 & 1, v145);
        v129 = v82;
        v131 = v81;
        v127 = v83;
        v84 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v125, v123, v28 & 1, v145);
        v124 = v85;
        v126 = v84;
        v122 = v86;
        v87 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v120, v23, v27 & 1, v145);
        v119 = v88;
        v121 = v87;
        v118 = v89;
        v90 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v146, v24, v116 & 1, v145);
        v147 = v91;
        v93 = v92;
        v94 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v115, v113, v26 & 1, v145);
        v96 = v95;
        v98 = v97;
        v99 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v114, v25, v12 & 1, v145);
        v101 = v100;
        v103 = v102;

        type metadata accessor for URLParseInfo();
        result = swift_allocObject();
        *(result + 16) = v142;
        *(result + 24) = v144;
        *(result + 32) = v141;
        *(result + 40) = v138;
        *(result + 48) = v137 & 1;
        *(result + 56) = v136;
        *(result + 64) = v134;
        *(result + 72) = v132 & 1;
        *(result + 80) = v131;
        *(result + 88) = v129;
        *(result + 96) = v127 & 1;
        *(result + 104) = v126;
        *(result + 112) = v124;
        *(result + 120) = v122 & 1;
        *(result + 128) = v121;
        *(result + 136) = v119;
        *(result + 144) = v118 & 1;
        *(result + 152) = v90;
        *(result + 160) = v147;
        *(result + 168) = v93 & 1;
        *(result + 176) = v94;
        *(result + 184) = v96;
        *(result + 192) = v98 & 1;
        *(result + 200) = v99;
        *(result + 208) = v101;
        *(result + 216) = v103 & 1;
        *(result + 217) = BYTE4(v116) & 1;
        *(result + 218) = v117 & 1;
        *(result + 219) = v112 & 1;
        *(result + 220) = v143;
        return result;
      }
    }

    v111 = v19;
    swift_once();
    v19 = v111;
    goto LABEL_71;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v10 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    v10 = result;
    v11 = v109;
  }

  LOBYTE(v12) = 1;
  LOBYTE(v169) = 1;
  v157 = 0uLL;
  LOBYTE(v158) = 1;
  *(&v158 + 1) = 0;
  *&v159 = 0;
  BYTE8(v159) = 1;
  v160 = 0uLL;
  LOBYTE(v161) = 1;
  *&v162 = 0;
  *(&v161 + 1) = 0;
  BYTE8(v162) = 1;
  v163 = 0uLL;
  v164 = 1;
  *&v166 = 0;
  v165 = 0;
  BYTE8(v166) = 1;
  v167 = 0uLL;
  v168[0] = 1;
  *&v168[16] = 0;
  *&v168[8] = 0;
  v168[24] = 1;
  *&v168[25] = 0;
  v168[27] = 0;
  if (!v11)
  {
    v142 = a1;
    v143 = a4;
    v112 = 0;
    v117 = 0;
    v22 = 0;
    v13 = 0;
    v133 = 0;
    v135 = 0;
    v128 = 0;
    v130 = 0;
    v123 = 0;
    v125 = 0;
    v120 = 0;
    v23 = 0;
    v146 = 0;
    v24 = 0;
    v114 = 0;
    v115 = 0;
    v113 = 0;
    v25 = 0;
    BYTE8(v166) = 0;
    v165 = 0;
    *&v166 = 0;
    v116 = 0;
    v26 = 1;
    v27 = 1;
    v28 = 1;
    v29 = 1;
    v30 = 1;
    v31 = 1;
    goto LABEL_178;
  }

  v13 = 0;
  v14 = &v167 + 1;
  v15 = v168;
  v16 = &v168[16];
  v139 = &v168[24];
  do
  {
    v17 = v10[v13] - 35;
    if (v17 <= 0x3A)
    {
      if (((1 << (v10[v13] - 35)) & 0x500000030001001) != 0)
      {
        goto LABEL_14;
      }

      if (v17 == 23)
      {
        if (v13 || (v5 & 1) != 0)
        {
          goto LABEL_90;
        }

LABEL_14:
        v18 = 0;
        goto LABEL_29;
      }
    }

    ++v13;
  }

  while (v11 != v13);
  v18 = v11;
  while (1)
  {
LABEL_29:
    v32 = v18 == v11 ? 0 : v18;
    if (v32 + 1 != v11 && v10[v32] == 47 && v10[v32 + 1] == 47)
    {
      result = v32 + 2;
      v33 = v11;
      if (v32 + 2 != v11)
      {
        v33 = v32 + 2;
        while (1)
        {
          v54 = v10[v33];
          v55 = v54 > 0x3F;
          v56 = (1 << v54) & 0x8000800800000000;
          if (!v55 && v56 != 0)
          {
            break;
          }

          if (v11 == ++v33)
          {
            v33 = v11;
            break;
          }
        }
      }

      if (v33 < result)
      {
        goto LABEL_230;
      }

      if (result == v33)
      {
        v5 = v16;
        v16 = 0;
        *(&v161 + 1) = v32 + 2;
        *&v162 = v32 + 2;
        v32 += 2;
        BYTE8(v162) = 0;
      }

      else
      {
        v58 = v11;
        v32 = v33;
        if ((specialized static RFC3986Parser.parseAuthority(_:into:allowEmptyScheme:)(result, v33, v10, &v157, v5 & 1) & 1) == 0)
        {
          goto LABEL_24;
        }

        v5 = v16;
        v16 = *(&v163 + 1);
        if (v164)
        {
          v11 = v58;
        }

        else
        {
          v104 = v163;
          v11 = v58;
          if (v163 != *(&v163 + 1))
          {
            while (v10[v104] - 58 > 0xFFFFFFF5)
            {
              if (*(&v163 + 1) == ++v104)
              {
                goto LABEL_40;
              }
            }

            v105 = *(&v157 + 1) - v157 == 11 ? v158 : 1;
            if ((v105 & 1) != 0 || (((0x3FFE000000000uLL >> ((*v10 - 1) >> 1)) & 0x20) + *v10) != 97 || (((0x3FFE000000000uLL >> ((v10[1] - 1) >> 1)) & 0x20) + v10[1]) != 100 || (((0x3FFE000000000uLL >> ((v10[2] - 1) >> 1)) & 0x20) + v10[2]) != 100 || (((0x3FFE000000000uLL >> ((v10[3] - 1) >> 1)) & 0x20) + v10[3]) != 114 || (((0x3FFE000000000uLL >> ((v10[4] - 1) >> 1)) & 0x20) + v10[4]) != 101 || (((0x3FFE000000000uLL >> ((v10[5] - 1) >> 1)) & 0x20) + v10[5]) != 115 || (((0x3FFE000000000uLL >> ((v10[6] - 1) >> 1)) & 0x20) + v10[6]) != 115 || (((0x3FFE000000000uLL >> ((v10[7] - 1) >> 1)) & 0x20) + v10[7]) != 98 || (((0x3FFE000000000uLL >> ((v10[8] - 1) >> 1)) & 0x20) + v10[8]) != 111 || (((0x3FFE000000000uLL >> ((v10[9] - 1) >> 1)) & 0x20) + v10[9]) != 111 || (((0x3FFE000000000uLL >> ((v10[10] - 1) >> 1)) & 0x20) + v10[10]) != 107)
            {
              goto LABEL_24;
            }
          }
        }
      }
    }

    else
    {
      v5 = v16;
      v16 = 0;
    }

LABEL_40:
    if (v11 < v32)
    {
      __break(1u);
    }

    else
    {
      v146 = v32;
      if (one-time initialization token for fileIDPrefix == -1)
      {
        goto LABEL_42;
      }
    }

    v110 = v11;
    swift_once();
    v11 = v110;
LABEL_42:
    v12 = static URL.fileIDPrefix;
    v34 = v11;
    result = specialized Sequence<>.starts<A>(with:)(static URL.fileIDPrefix, v146, v11, v10);
    v36 = v146;
    if (result)
    {
      v168[27] = 1;
      v36 = *(v12 + 16) + v146;
    }

    v37 = v34;
    v143 = a4;
    v142 = a1;
    if (v36 == v34)
    {
LABEL_48:
      LOBYTE(v116) = 0;
      BYTE8(v166) = 0;
      v13 = *(&v157 + 1);
      v22 = v157;
      v133 = v159;
      v135 = *(&v158 + 1);
      v128 = *(&v160 + 1);
      v130 = v160;
      v123 = v162;
      v125 = *(&v161 + 1);
      v120 = v163;
      v113 = *(&v167 + 1);
      v114 = *&v168[8];
      v115 = v167;
      v25 = *&v168[16];
      v31 = v158;
      v30 = BYTE8(v159);
      v29 = v161;
      v28 = BYTE8(v162);
      v27 = v164;
      v23 = v16;
      v26 = v168[0];
      LOBYTE(v12) = v168[24];
      BYTE4(v116) = v168[25];
      v117 = v168[26];
      v112 = v168[27];
      v24 = v37;
      goto LABEL_178;
    }

    while (1)
    {
      v38 = v10[v36];
      if (v38 == 35 || v38 == 63)
      {
        break;
      }

      if (v34 == ++v36)
      {
        goto LABEL_48;
      }
    }

    if (v36 < v146)
    {
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
      goto LABEL_236;
    }

    v165 = v146;
    *&v166 = v36;
    BYTE8(v166) = 0;
    v39 = v10[v36];
    if (v39 != 35)
    {
      if (v39 != 63)
      {
LABEL_173:
        v13 = *(&v157 + 1);
        v22 = v157;
        v133 = v159;
        v135 = *(&v158 + 1);
        v128 = *(&v160 + 1);
        v130 = v160;
        v123 = v162;
        v125 = *(&v161 + 1);
        v120 = v163;
        v113 = *(&v167 + 1);
        v114 = *&v168[8];
        v115 = v167;
        v25 = *&v168[16];
        v31 = v158;
        v30 = BYTE8(v159);
        v29 = v161;
        v28 = BYTE8(v162);
        v27 = v164;
        LOBYTE(v116) = BYTE8(v166);
        v23 = v16;
LABEL_177:
        v26 = v168[0];
        LOBYTE(v12) = v168[24];
        BYTE4(v116) = v168[25];
        v117 = v168[26];
        v24 = v36;
        v112 = v168[27];
        goto LABEL_178;
      }

      if (v34 >= v36 + 1)
      {
        if (v34 - 1 == v36)
        {
LABEL_57:
          *&v167 = v36 + 1;
LABEL_172:
          *v14 = v34;
          *v15 = 0;
          goto LABEL_173;
        }

        v40 = v36 + 1;
        while (v10[v40] != 35)
        {
          if (v34 == ++v40)
          {
            goto LABEL_57;
          }
        }

        *&v167 = v36 + 1;
        *(&v167 + 1) = v40;
        v168[0] = 0;
        v46 = v40 + 1;
        if (v34 >= v40 + 1)
        {
LABEL_171:
          *&v168[8] = v46;
          v14 = v5;
          v15 = v139;
          goto LABEL_172;
        }

        goto LABEL_235;
      }

      goto LABEL_232;
    }

    v46 = v36 + 1;
    if (v34 >= v36 + 1)
    {
      goto LABEL_171;
    }

    __break(1u);
LABEL_88:
    v47 = v36 + 1;
    if (v35 >= v36 + 1)
    {
      goto LABEL_175;
    }

    __break(1u);
LABEL_90:
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_234;
    }

    *&v157 = 0;
    *(&v157 + 1) = v13;
    LOBYTE(v158) = 0;
    if (v11 - 1 == v13)
    {
      break;
    }

    if (v13)
    {
      if (*v10 < 0x41u)
      {
        goto LABEL_24;
      }

      v70 = 0;
      v18 = v13 + 1;
      while (1)
      {
        if (v10[v70] < 0)
        {
          goto LABEL_24;
        }

        v71 = v10[v70];
        if (v71 <= 0x2F)
        {
          if (((1 << v71) & 0x680000000000) != 0)
          {
            goto LABEL_157;
          }

          if (((1 << v71) & 0x97D200000000) != 0)
          {
            goto LABEL_24;
          }
        }

        v72 = v71 - 58;
        if (v71 - 58 < 0xFFFFFFF6)
        {
          v55 = v72 > 6;
          v73 = (1 << v72) & 0x6B;
          v74 = v55 || v73 == 0;
          if (!v74 || (v71 & 0x5F) - 91 <= 0xFFFFFFE5)
          {
            goto LABEL_24;
          }
        }

LABEL_157:
        if (v13 == ++v70)
        {
          goto LABEL_29;
        }
      }
    }

    v18 = 1;
    if ((v5 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v140 = v11;
  if (!v13)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_184:
    v142 = a1;
    v143 = a4;
    v112 = 0;
    v117 = 0;
    v115 = 0;
    v116 = 0;
    v22 = 0;
    v133 = 0;
    v135 = 0;
    v128 = 0;
    v130 = 0;
    v123 = 0;
    v125 = 0;
    v120 = 0;
    v23 = 0;
    v113 = 0;
    v114 = 0;
    v25 = 0;
    BYTE8(v166) = 0;
    v31 = v158;
    v26 = 1;
    v27 = 1;
    v28 = 1;
    v29 = 1;
    v30 = 1;
    v24 = v140;
    v146 = v140;
    goto LABEL_178;
  }

  if (*v10 >= 0x41u)
  {
    v48 = 0;
    while (1)
    {
      v49 = v10[v48];
      if (v49 < 0)
      {
        break;
      }

      v50 = v13;
      if ((UInt8.allowedURLComponents.getter(v49) & 1) == 0)
      {
        break;
      }

      v13 = v50;
      if (v50 == ++v48)
      {
        goto LABEL_184;
      }
    }
  }

LABEL_24:

  return 0;
}

uint64_t sub_1807E9508()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

_BYTE *specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(uint64_t a1, unint64_t a2, char a3, int a4)
{
  v357 = *MEMORY[0x1E69E9840];
  v6 = specialized static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(a1, a2, a4, 0);
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  if ((a3 & 1) == 0)
  {
    if (*(v6 + 72))
    {
      goto LABEL_26;
    }

    v28 = String.subscript.getter();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v28, v29, v31, v33, 2, 1);
    if (v35 == 2)
    {
      v353 = v28;
      v354 = v30;
      v355 = v32;
      v356 = v34;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      StringProtocol._ephemeralString.getter();
      v36 = String._bridgeToObjectiveCImpl()();

      v37 = [v36 _fastCharacterContents];
      v38 = v36;
      if (v37)
      {
        v353 = v28;
        v354 = v30;
        v355 = v32;
        v356 = v34;
        StringProtocol._ephemeralString.getter();
        v39 = String._bridgeToObjectiveCImpl()();

        v40 = [v39 length];
        swift_unknownObjectRelease();
        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v37, v40, 2u, 1))
        {
          goto LABEL_188;
        }

        goto LABEL_26;
      }

      v35 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v28, v30, v32, v34, 2u, 1);
    }

    v55 = v35;

    if ((v55 & 1) == 0)
    {
      goto LABEL_188;
    }

LABEL_26:
    if (v7[96])
    {
      goto LABEL_91;
    }

    v56 = String.subscript.getter();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v63 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v56, v57, v59, v61, 2, 1);
    if (v63 == 2)
    {
      v353 = v56;
      v354 = v58;
      v355 = v60;
      v356 = v62;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      StringProtocol._ephemeralString.getter();
      v64 = String._bridgeToObjectiveCImpl()();

      v65 = [v64 _fastCharacterContents];
      v66 = v64;
      if (v65)
      {
        v353 = v56;
        v354 = v58;
        v355 = v60;
        v356 = v62;
        StringProtocol._ephemeralString.getter();
        v67 = String._bridgeToObjectiveCImpl()();

        v68 = [v67 length];
        swift_unknownObjectRelease();
        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v65, v68, 2u, 1))
        {
          goto LABEL_188;
        }

        goto LABEL_91;
      }

      v63 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v56, v58, v60, v62, 2u, 1);
    }

    v154 = v63;

    if ((v154 & 1) == 0)
    {
      goto LABEL_188;
    }

LABEL_91:
    if ((v7[120] & 1) == 0)
    {
      v155 = String.subscript.getter();
      v159 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464504host14knownIPLiteralSbx_SbtSyRzlFZSs_Tt1g5(v155, v156, v157, v158, v7[217]);

      if ((v159 & 1) == 0)
      {
        goto LABEL_188;
      }
    }

    if (v7[168])
    {
      v160 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v160 = String.subscript.getter();
    }

    v164 = v160;
    v165 = v161;
    v166 = v162;
    v167 = v163;
    v168 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v160, v161, v162, v163, 16, 1);
    if (v168 == 2)
    {
      v353 = v164;
      v354 = v165;
      v355 = v166;
      v356 = v167;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      StringProtocol._ephemeralString.getter();
      v169 = String._bridgeToObjectiveCImpl()();

      v170 = [v169 _fastCharacterContents];
      v171 = v169;
      if (v170)
      {
        v353 = v164;
        v354 = v165;
        v355 = v166;
        v356 = v167;
        StringProtocol._ephemeralString.getter();
        v172 = String._bridgeToObjectiveCImpl()();

        v173 = [v172 length];
        swift_unknownObjectRelease();
        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v170, v173, 0x10u, 1))
        {
          goto LABEL_188;
        }

        goto LABEL_102;
      }

      v168 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v164, v165, v166, v167, 0x10u, 1);
    }

    v174 = v168;

    if ((v174 & 1) == 0)
    {
      goto LABEL_188;
    }

LABEL_102:
    if ((v7[192] & 1) == 0)
    {
      v175 = String.subscript.getter();
      v177 = v176;
      v179 = v178;
      v181 = v180;
      v182 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v175, v176, v178, v180, 64, 1);
      if (v182 == 2)
      {
        v353 = v175;
        v354 = v177;
        v355 = v179;
        v356 = v181;
        lazy protocol witness table accessor for type Substring and conformance Substring();
        StringProtocol._ephemeralString.getter();
        v183 = String._bridgeToObjectiveCImpl()();

        v184 = [v183 _fastCharacterContents];
        v185 = v183;
        if (v184)
        {
          v353 = v175;
          v354 = v177;
          v355 = v179;
          v356 = v181;
          StringProtocol._ephemeralString.getter();
          v186 = String._bridgeToObjectiveCImpl()();

          v187 = [v186 length];
          swift_unknownObjectRelease();
          if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v184, v187, 0x40u, 1))
          {
            goto LABEL_188;
          }

          goto LABEL_111;
        }

        v182 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v175, v177, v179, v181, 0x40u, 1);
      }

      v190 = v182;

      if ((v190 & 1) == 0)
      {
        goto LABEL_188;
      }
    }

LABEL_111:
    if (v7[216])
    {
      return v7;
    }

    v191 = String.subscript.getter();
    v193 = v192;
    v195 = v194;
    v197 = v196;
    v198 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v191, v192, v194, v196, 64, 1);
    if (v198 == 2)
    {
      v353 = v191;
      v354 = v193;
      v355 = v195;
      v356 = v197;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      StringProtocol._ephemeralString.getter();
      v199 = String._bridgeToObjectiveCImpl()();

      v200 = [v199 _fastCharacterContents];
      v201 = v199;
      if (v200)
      {
        v353 = v191;
        v354 = v193;
        v355 = v195;
        v356 = v197;
        StringProtocol._ephemeralString.getter();
        v202 = String._bridgeToObjectiveCImpl()();

        v203 = [v202 length];
        swift_unknownObjectRelease();
        if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v200, v203, 0x40u, 1))
        {
          return v7;
        }

        goto LABEL_188;
      }

      v198 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v191, v193, v195, v197, 0x40u, 1);
    }

    v308 = v198;

    if (v308)
    {
      return v7;
    }

LABEL_188:

    return 0;
  }

  v347 = a4;
  if (*(v6 + 72))
  {
    v8 = 0;
    v9 = 0;
    if (*(v6 + 96))
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  v14 = String.subscript.getter();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v9 = 0;
  v21 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v14, v15, v17, v19, 2, 1);
  if (v21 == 2)
  {
    v353 = v14;
    v354 = v16;
    v355 = v18;
    v356 = v20;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    StringProtocol._ephemeralString.getter();
    v22 = String._bridgeToObjectiveCImpl()();

    v23 = [v22 _fastCharacterContents];
    v24 = v22;
    if (v23)
    {
      v353 = v14;
      v354 = v16;
      v355 = v18;
      v356 = v20;
      StringProtocol._ephemeralString.getter();
      v25 = String._bridgeToObjectiveCImpl()();

      v26 = [v25 length];
      swift_unknownObjectRelease();
      v27 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v23, v26, 2u, 1);
      goto LABEL_19;
    }

    v21 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v14, v16, v18, v20, 2u, 1);
  }

  v27 = v21;

LABEL_19:
  v8 = !v27;
  if (v7[96])
  {
LABEL_5:
    if (v7[120])
    {
      goto LABEL_6;
    }

LABEL_36:
    v69 = String.subscript.getter();
    v73 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464504host14knownIPLiteralSbx_SbtSyRzlFZSs_Tt1g5(v69, v70, v71, v72, v7[217]);

    if ((v73 & 1) == 0)
    {
      v8 |= 4u;
    }

    if (v7[168])
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_20:
  v41 = String.subscript.getter();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v41, v42, v44, v46, 2, 1);
  if (v48 == 2)
  {
    LODWORD(v348) = v8;
    v353 = v41;
    v354 = v43;
    v355 = v45;
    v356 = v47;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    StringProtocol._ephemeralString.getter();
    v49 = String._bridgeToObjectiveCImpl()();

    v50 = [v49 _fastCharacterContents];
    v51 = v49;
    if (v50)
    {
      v353 = v41;
      v354 = v43;
      v355 = v45;
      v356 = v47;
      StringProtocol._ephemeralString.getter();
      v52 = String._bridgeToObjectiveCImpl()();

      v53 = [v52 length];
      swift_unknownObjectRelease();
      v54 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v50, v53, 2u, 1);
    }

    else
    {
      v54 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v41, v43, v45, v47, 2u, 1);
    }

    v8 = v348;
  }

  else
  {
    v54 = v48;
  }

  if ((v54 & 1) == 0)
  {
    v8 |= 2u;
  }

  if ((v7[120] & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_6:
  if (v7[168])
  {
LABEL_7:
    v10 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    goto LABEL_40;
  }

LABEL_39:
  v10 = String.subscript.getter();
LABEL_40:
  v74 = v10;
  v75 = v11;
  v76 = v12;
  v77 = v13;
  v78 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v10, v11, v12, v13, 16, 1);
  if (v78 == 2)
  {
    v348 = 0;
    v79 = v8;
    v353 = v74;
    v354 = v75;
    v355 = v76;
    v356 = v77;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    StringProtocol._ephemeralString.getter();
    v80 = String._bridgeToObjectiveCImpl()();

    v81 = [v80 _fastCharacterContents];
    v82 = v80;
    if (v81)
    {
      v353 = v74;
      v354 = v75;
      v355 = v76;
      v356 = v77;
      StringProtocol._ephemeralString.getter();
      v83 = String._bridgeToObjectiveCImpl()();

      v84 = [v83 length];
      swift_unknownObjectRelease();
      v85 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v81, v84, 0x10u, 1);
    }

    else
    {
      v85 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v74, v75, v76, v77, 0x10u, 1);
    }

    v8 = v79;
    v9 = v348;
  }

  else
  {
    v85 = v78;
  }

  if (v85)
  {
    v86 = v8;
  }

  else
  {
    v86 = v8 | 8;
  }

  if ((v7[192] & 1) == 0)
  {
    v87 = String.subscript.getter();
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v94 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v87, v88, v90, v92, 64, 1);
    if (v94 == 2)
    {
      v348 = v9;
      v95 = v86;
      v353 = v87;
      v354 = v89;
      v355 = v91;
      v356 = v93;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      StringProtocol._ephemeralString.getter();
      v96 = String._bridgeToObjectiveCImpl()();

      v97 = [v96 _fastCharacterContents];
      v98 = v96;
      if (v97)
      {
        v353 = v87;
        v354 = v89;
        v355 = v91;
        v356 = v93;
        StringProtocol._ephemeralString.getter();
        v99 = String._bridgeToObjectiveCImpl()();

        v100 = [v99 length];
        swift_unknownObjectRelease();
        v101 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v97, v100, 0x40u, 1);
      }

      else
      {
        v101 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v87, v89, v91, v93, 0x40u, 1);
      }

      v86 = v95;
      v9 = v348;
    }

    else
    {
      v101 = v94;
    }

    if ((v101 & 1) == 0)
    {
      v86 |= 0x10u;
    }
  }

  if ((v7[216] & 1) == 0)
  {
    v102 = String.subscript.getter();
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v109 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v102, v103, v105, v107, 64, 1);
    if (v109 != 2)
    {
      v116 = v109;

      if ((v116 & 1) == 0)
      {
        v86 |= 0x20u;
        goto LABEL_69;
      }

      goto LABEL_59;
    }

    v348 = v9;
    v110 = v86;
    v353 = v102;
    v354 = v104;
    v355 = v106;
    v356 = v108;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    StringProtocol._ephemeralString.getter();
    v111 = String._bridgeToObjectiveCImpl()();

    v112 = [v111 _fastCharacterContents];
    v113 = v111;
    if (v112)
    {
      v353 = v102;
      v354 = v104;
      v355 = v106;
      v356 = v108;
      StringProtocol._ephemeralString.getter();
      v114 = String._bridgeToObjectiveCImpl()();

      v115 = [v114 length];
      swift_unknownObjectRelease();
      if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v112, v115, 0x40u, 1))
      {
LABEL_64:
        v86 = v110;
        v9 = v348;
        goto LABEL_59;
      }
    }

    else
    {
      v117 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v102, v104, v106, v108, 0x40u, 1);

      if (v117)
      {
        goto LABEL_64;
      }
    }

    v86 = v110 | 0x20;
    v9 = v348;
    goto LABEL_69;
  }

LABEL_59:
  if (!v86)
  {
    return v7;
  }

LABEL_69:
  v351 = 0;
  v352 = 0xE000000000000000;
  if ((v7[48] & 1) == 0)
  {
    v118 = String.subscript.getter();
    v119 = MEMORY[0x1865CAE80](v118);
    v121 = v120;

    v353 = v119;
    v354 = v121;
    MEMORY[0x1865CB0E0](58, 0xE100000000000000);
    MEMORY[0x1865CB0E0](v119, v121);
  }

  if (v7[72] == 1 && v7[96] == 1 && v7[120] == 1 && (v7[144] & 1) != 0)
  {
LABEL_136:
    if (v7[144])
    {
      goto LABEL_137;
    }

    v231 = String.subscript.getter();
    v235 = v234;
    if ((v231 ^ v232) >= 0x4000)
    {
      v236 = v231;
      v237 = v232;
      v238 = v233;
      v239 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v231, v232, v233, v234, 10);
      if ((v240 & 0x100) != 0)
      {
        v241 = specialized _parseInteger<A, B>(ascii:radix:)(v236, v237, v238, v235, 10);
        v249 = v248;

        if (v249)
        {
          goto LABEL_137;
        }
      }

      else
      {
        v241 = v239;
        v242 = v240;

        if (v242)
        {
LABEL_137:
          if (v7[168])
          {
            goto LABEL_138;
          }

          goto LABEL_151;
        }
      }

      v353 = 58;
      v354 = 0xE100000000000000;
      v349 = v241;
      v250 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v250);

      MEMORY[0x1865CB0E0](v353, v354);
    }

    if (v7[168])
    {
LABEL_138:
      v224 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      v228 = v227;
      if ((v86 & 8) != 0)
      {
        goto LABEL_139;
      }

      goto LABEL_152;
    }

LABEL_151:
    v224 = String.subscript.getter();
    v228 = v251;
    if ((v86 & 8) != 0)
    {
LABEL_139:
      if ((v224 ^ v225) >= 0x4000)
      {
        v243 = v224;
        v244 = v226;
        v245 = v225;

        v246 = _s10Foundation13RFC3986ParserV17percentEncodePath33_A90579D1FA072CB135F95EF00BA46450LL_18skipAlreadyEncodedSSx_SbtSyRzlFZSs_Tt1g5(v243, v245, v244, v228, 0);
        v230 = v247;

        v229 = v246;
      }

      else
      {
        v229 = 0;
        v230 = 0xE000000000000000;
      }

      MEMORY[0x1865CB0E0](v229, v230);

      if (v7[192])
      {
        goto LABEL_172;
      }

      goto LABEL_153;
    }

LABEL_152:
    v353 = v224;
    v354 = v225;
    v355 = v226;
    v356 = v228;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();
    if (v7[192])
    {
LABEL_172:
      if ((v7[216] & 1) == 0)
      {
        v289 = String.subscript.getter();
        v291 = v290;
        v293 = v292;
        v295 = v294;
        if ((v86 & 0x20) != 0)
        {

          v349 = 35;
          v350 = 0xE100000000000000;
          if ((v289 ^ v291) >> 14)
          {
            v353 = v289;
            v354 = v291;
            v355 = v293;
            v356 = v295;
            MEMORY[0x1EEE9AC00](v301);
            v345 = &v353;
            v346 = 64;

            v304 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v344, v289, v291, v293, v295);
            v303 = v305;

            if (v303)
            {
            }

            else
            {

              v304 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v289, v291, v293, v295, 64, 0);
              v303 = v306;
              swift_bridgeObjectRelease_n();
            }

            v302 = v304;
          }

          else
          {

            v302 = 0;
            v303 = 0xE000000000000000;
          }

          MEMORY[0x1865CB0E0](v302, v303);

          v299 = v349;
          v300 = v350;
        }

        else
        {

          v353 = 35;
          v354 = 0xE100000000000000;
          v296 = MEMORY[0x1865CAE80](v289, v291, v293, v295);
          v298 = v297;

          MEMORY[0x1865CB0E0](v296, v298);

          v299 = v353;
          v300 = v354;
        }

        MEMORY[0x1865CB0E0](v299, v300);
      }

      v307 = specialized static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v351, v352, v347 & 1, v86);

      return v307;
    }

LABEL_153:
    v252 = String.subscript.getter();
    v256 = v255;
    if ((v86 & 0x10) != 0)
    {
      v349 = 63;
      v350 = 0xE100000000000000;
      if ((v252 ^ v253) >> 14)
      {
        LODWORD(v348) = v86;
        v353 = v252;
        v354 = v253;
        v355 = v254;
        v356 = v255;
        MEMORY[0x1EEE9AC00](v252);
        v345 = &v353;
        v346 = 64;
        v265 = v264;
        v267 = v266;
        v269 = v268;

        v270 = v265;
        v271 = v265;
        v272 = v269;
        v273 = v269;
        v274 = v267;
        v275 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v344, v271, v273, v267, v256);
        v263 = v276;

        if (v263)
        {
        }

        else
        {

          v275 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v270, v272, v274, v256, 64, 0);
          v263 = v288;
          swift_bridgeObjectRelease_n();
        }

        v262 = v275;
        LOBYTE(v86) = v348;
      }

      else
      {

        v262 = 0;
        v263 = 0xE000000000000000;
      }

      MEMORY[0x1865CB0E0](v262, v263);

      v260 = v349;
      v261 = v350;
    }

    else
    {
      v353 = 63;
      v354 = 0xE100000000000000;
      v257 = MEMORY[0x1865CAE80](v252);
      v259 = v258;

      MEMORY[0x1865CB0E0](v257, v259);

      v260 = v353;
      v261 = v354;
    }

    MEMORY[0x1865CB0E0](v260, v261);

    goto LABEL_172;
  }

  MEMORY[0x1865CB0E0](12079, 0xE200000000000000);
  if ((v7[72] & 1) == 0)
  {
    v122 = String.subscript.getter();
    v126 = v125;
    if (v86)
    {
      if ((v122 ^ v123) >= 0x4000)
      {
        LODWORD(v348) = v86;
        v353 = v122;
        v354 = v123;
        v355 = v124;
        v356 = v125;
        MEMORY[0x1EEE9AC00](v122);
        v345 = &v353;
        v346 = 2;
        v130 = v129;
        v132 = v131;
        v134 = v133;

        v135 = v134;
        v136 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v344, v130, v134, v132, v126);
        v128 = v137;

        if (!v128)
        {

          v136 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v130, v135, v132, v126, 2, 0);
          v128 = v138;
        }

        v127 = v136;
        v86 = v348;
      }

      else
      {
        v127 = 0;
        v128 = 0xE000000000000000;
      }

      MEMORY[0x1865CB0E0](v127, v128);

      if (v7[96])
      {
        goto LABEL_120;
      }
    }

    else
    {
      v353 = v122;
      v354 = v123;
      v355 = v124;
      v356 = v125;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      String.append<A>(contentsOf:)();
      if (v7[96])
      {
LABEL_120:

        MEMORY[0x1865CB0E0](64, 0xE100000000000000);
        goto LABEL_121;
      }
    }

    v139 = String.subscript.getter();
    v141 = v140;
    v143 = v142;
    v145 = v144;
    if ((v86 & 2) != 0)
    {

      v349 = 58;
      v350 = 0xE100000000000000;
      if ((v139 ^ v141) >> 14)
      {
        v353 = v139;
        v354 = v141;
        v355 = v143;
        v356 = v145;
        MEMORY[0x1EEE9AC00](v151);
        v345 = &v353;
        v346 = 2;

        v188 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v344, v139, v141, v143, v145);
        v153 = v189;

        if (v153)
        {
        }

        else
        {

          v188 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v139, v141, v143, v145, 2, 0);
          v153 = v204;
          swift_bridgeObjectRelease_n();
        }

        v152 = v188;
      }

      else
      {

        v152 = 0;
        v153 = 0xE000000000000000;
      }

      MEMORY[0x1865CB0E0](v152, v153);

      v149 = v349;
      v150 = v350;
    }

    else
    {

      v353 = 58;
      v354 = 0xE100000000000000;
      v146 = MEMORY[0x1865CAE80](v139, v141, v143, v145);
      v148 = v147;

      MEMORY[0x1865CB0E0](v146, v148);

      v149 = v353;
      v150 = v354;
    }

    MEMORY[0x1865CB0E0](v149, v150);
    goto LABEL_120;
  }

LABEL_121:
  if (v7[120])
  {
    goto LABEL_136;
  }

  v205 = String.subscript.getter();
  v209 = v205;
  v210 = v206;
  v211 = v207;
  v212 = v208;
  if ((v86 & 4) == 0)
  {
    v353 = v205;
    v354 = v206;
    v355 = v207;
    v356 = v208;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();
LABEL_135:

    goto LABEL_136;
  }

  if (v7[217] & 1) != 0 || ((v7[48] & 1) == 0 ? (v213 = String.subscript.getter(), v214 = v217, v215 = v218, v216 = v219) : (v213 = 0, v214 = 0, v215 = 0, v216 = 0), v220 = _s10Foundation13RFC3986ParserV23shouldPercentEncodeHost_9forSchemeSbx_q_SgtSyRzSyR_r0_lFZSs_SsTt1g5(v209, v210, v211, v212, v213, v214, v215, v216), , (v220))
  {
    if (!((v209 ^ v210) >> 14))
    {

      v221 = 0;
      v222 = 0xE000000000000000;
LABEL_132:
      if (v7[217] != 1 || (_s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v221, v222) & 1) != 0)
      {
        MEMORY[0x1865CB0E0](v221, v222);
        goto LABEL_135;
      }

      goto LABEL_217;
    }

    v221 = _s10Foundation13RFC3986ParserV17percentEncodeHost33_A90579D1FA072CB135F95EF00BA46450LL_18skipAlreadyEncodedSSSgxSg_SbtSyRzlFZSs_Tt1g5(v209, v210, v211, v212, 0);
    v222 = v223;
    swift_bridgeObjectRelease_n();
    if (v222)
    {
      goto LABEL_132;
    }

LABEL_233:

    goto LABEL_234;
  }

  v277 = MEMORY[0x1865CAE80](v209, v210, v211, v212);
  v279 = v278;

  v281 = v277 & 0xFFFFFFFFFFFFLL;
  if ((v279 & 0x2000000000000000) != 0)
  {
    v282 = HIBYTE(v279) & 0xF;
  }

  else
  {
    v282 = v277 & 0xFFFFFFFFFFFFLL;
  }

  if (!v282)
  {

    v285 = 0;
    v287 = 0xE000000000000000;
    goto LABEL_208;
  }

  if ((v279 & 0x1000000000000000) != 0)
  {
  }

  else
  {
    if ((v279 & 0x2000000000000000) != 0)
    {
      v353 = v277;
      v354 = v279 & 0xFFFFFFFFFFFFFFLL;
      MEMORY[0x1EEE9AC00](v280);
      LOBYTE(v345) = 1;
      MEMORY[0x1EEE9AC00](v310);

      v285 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v353, HIBYTE(v279) & 0xF, @nonobjc uidna_nameToASCII_UTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v344, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
      v287 = v311;
    }

    else
    {
      v348 = v9;
      if ((v277 & 0x1000000000000000) != 0)
      {
        v283 = (v279 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v280 = _StringObject.sharedUTF8.getter();
        if (!v280)
        {
          v343 = one-time initialization token for idnaTranscoder;

          if (v343 != -1)
          {
            swift_once();
          }

          if (byte_1ED436DC0)
          {
            v287 = 0;
            v285 = 0;
LABEL_207:
            swift_bridgeObjectRelease_n();
            if (!v287)
            {
              goto LABEL_233;
            }

LABEL_208:
            if (_s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v285, v287))
            {
              if (_s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v285, v287))
              {
LABEL_210:
                MEMORY[0x1865CB0E0](v285, v287);
                goto LABEL_135;
              }
            }

            else if ((v287 & 0x1000000000000000) != 0)
            {
              v353 = v285;
              v354 = v287;
              lazy protocol witness table accessor for type String and conformance String();
              StringProtocol._ephemeralString.getter();
              v338 = String._bridgeToObjectiveCImpl()();

              v339 = [v338 _fastCharacterContents];
              v340 = v338;
              if (v339)
              {
                v353 = v285;
                v354 = v287;
                StringProtocol._ephemeralString.getter();
                v341 = String._bridgeToObjectiveCImpl()();

                v342 = [v341 length];
                swift_unknownObjectRelease();
                if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v339, v342, 4u, 1))
                {
                  goto LABEL_210;
                }
              }

              else if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v285, v287, 4u, 1))
              {
                goto LABEL_210;
              }
            }

            else
            {
              if ((v287 & 0x2000000000000000) != 0)
              {
                v337 = HIBYTE(v287) & 0xF;
                v353 = v285;
                v354 = v287 & 0xFFFFFFFFFFFFFFLL;
                v336 = &v353;
              }

              else if ((v285 & 0x1000000000000000) != 0)
              {
                v336 = ((v287 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v337 = v285 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v336 = _StringObject.sharedUTF8.getter();
              }

              if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v336, v337, 4u, 1))
              {
                goto LABEL_210;
              }
            }

LABEL_217:

LABEL_234:

            return 0;
          }

          if (swift_stdlib_isStackAllocationSafe())
          {
            __break(1u);
          }

          swift_slowAlloc();
          __break(1u);
          goto LABEL_238;
        }

        v283 = v280;
        v281 = v329;
      }

      MEMORY[0x1EEE9AC00](v280);
      LOBYTE(v345) = 1;
      MEMORY[0x1EEE9AC00](v284);

      v285 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v283, v281, @nonobjc uidna_nameToASCII_UTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v344, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
      v287 = v286;
    }

    if (v287 != 1)
    {
      goto LABEL_207;
    }
  }

  v353 = v277;
  v354 = v279;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  v312 = String._bridgeToObjectiveCImpl()();

  v313 = [v312 _fastCharacterContents];
  v314 = v312;
  if (v313)
  {
    v353 = v277;
    v354 = v279;
    StringProtocol._ephemeralString.getter();
    v315 = String._bridgeToObjectiveCImpl()();

    [v315 length];
    v316 = swift_unknownObjectRelease();
    MEMORY[0x1EEE9AC00](v316);
    LOBYTE(v345) = 1;
    MEMORY[0x1EEE9AC00](v317);
    v285 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v313);
    v287 = v318;
    swift_bridgeObjectRelease_n();
    if (!v287)
    {
      goto LABEL_233;
    }

    goto LABEL_208;
  }

  v353 = v277;
  v354 = v279;

  v319 = String.init<A>(_:)();
  v321 = v319;
  v322 = v320;
  if ((v320 & 0x1000000000000000) != 0)
  {
    v321 = static String._copying(_:)(v319, v320);
    v331 = v330;

    v322 = v331;
    if ((v331 & 0x2000000000000000) == 0)
    {
      goto LABEL_198;
    }

LABEL_205:
    v353 = v321;
    v354 = v322 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v319);
    LOBYTE(v345) = 1;
    MEMORY[0x1EEE9AC00](v332);
    v285 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v353, v333, @nonobjc uidna_nameToASCII_UTF8(_:_:_:_:_:_:_:), 0, partial apply for closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:), v334, partial apply for closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:));
    v287 = v335;
    goto LABEL_206;
  }

  if ((v320 & 0x2000000000000000) != 0)
  {
    goto LABEL_205;
  }

LABEL_198:
  if ((v321 & 0x1000000000000000) != 0)
  {
    v323 = (v322 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_200:
    MEMORY[0x1EEE9AC00](v323);
    LOBYTE(v345) = 1;
    MEMORY[0x1EEE9AC00](v324);
    v285 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v325, v326, @nonobjc uidna_nameToASCII_UTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v327, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v287 = v328;
LABEL_206:

    goto LABEL_207;
  }

  v323 = _StringObject.sharedUTF8.getter();
  if (v323)
  {
    goto LABEL_200;
  }

  if (one-time initialization token for idnaTranscoder != -1)
  {
    swift_once();
  }

  if (byte_1ED436DC0)
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_233;
  }

LABEL_238:
  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
  }

  result = swift_slowAlloc();
  __break(1u);
  return result;
}