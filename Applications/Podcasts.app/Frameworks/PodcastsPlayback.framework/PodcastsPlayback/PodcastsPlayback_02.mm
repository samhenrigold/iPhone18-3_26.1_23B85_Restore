uint64_t _s13ConfigurationV12PlayerOptionOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_342F4()
{
  result = qword_7E3F0;
  if (!qword_7E3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_7E3F8, qword_5D468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7E3F0);
  }

  return result;
}

unint64_t sub_3435C()
{
  result = qword_7E400;
  if (!qword_7E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7E400);
  }

  return result;
}

uint64_t PlaybackController.LogController.init(playbackController:)@<X0>(void *a2@<X8>)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB78, &qword_5CE50);
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = &v21 - v3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F460, &qword_5E470);
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v24 = &v21 - v4;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E408, &qword_5D510);
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBB8, &qword_5CE90);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E410, &qword_5D518);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  *a2 = _swiftEmptyArrayStorage;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D8F8, &qword_5CB78);
  sub_59E04();
  swift_endAccess();
  v22 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_5108(&qword_7E418, &qword_7DBB8, &qword_5CE90, &protocol conformance descriptor for Published<A>.Publisher);
  sub_34A58();
  sub_59F64();
  (*(v8 + 8))(v10, v7);
  sub_5108(&qword_7E438, &qword_7E410, &qword_5D518, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_59F84();
  (*(v12 + 8))(v14, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E940, &qword_5DBD0);
  sub_5108(&unk_7ED80, &unk_7E940, &qword_5DBD0, &protocol conformance descriptor for [A]);
  sub_59D54();

  v30 = sub_1E850();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DC20, &qword_5CED0);
  sub_5108(&qword_7ED90, &unk_7DC20, &qword_5CED0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_59F64();

  sub_5108(&qword_7E440, &qword_7E408, &qword_5D510, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v15 = v23;
  sub_59F84();
  (*(v21 + 8))(v6, v15);
  sub_59D54();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F490, &qword_5CD10);
  v16 = v25;
  sub_59E04();
  swift_endAccess();
  sub_5108(&qword_7E448, &qword_7DB78, &qword_5CE50, v22);
  sub_34F8C();
  v17 = v24;
  v18 = v26;
  sub_59F64();
  (*(v28 + 8))(v16, v18);
  sub_5108(&qword_7E458, &qword_7F460, &qword_5E470, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v19 = v27;
  sub_59F84();
  (*(v29 + 8))(v17, v19);
  sub_59D54();
}

unint64_t sub_34A58()
{
  result = qword_7E420;
  if (!qword_7E420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_7DBC8, &qword_5CEA0);
    sub_35028(&qword_7E428, &qword_7E430, MPModelPodcastEpisode_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7E420);
  }

  return result;
}

uint64_t sub_34AF4(id *a1)
{
  v2 = sub_59D14();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  if (*a1)
  {
    v9 = *a1;
    sub_59CC4();
    v10 = v9;
    v11 = sub_59D04();
    v12 = sub_5A474();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      v15 = [v10 title];
      if (v15)
      {
        v26 = v14;
        v16 = v2;
        v17 = v15;
        v18 = sub_5A194();
        v20 = v19;

        v2 = v16;
        v14 = v26;
      }

      else
      {
        v20 = 0xE500000000000000;
        v18 = 0x3E4C494E3CLL;
      }

      v25 = sub_9430(v18, v20, &v27);

      *(v13 + 14) = v25;
      _os_log_impl(&dword_0, v11, v12, "Now playing item changed to: '%{private,mask.hash}s'", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }

    else
    {
    }

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_59CC4();
    v21 = sub_59D04();
    v22 = sub_5A474();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Now playing item is empty", v23, 2u);
    }

    return (*(v3 + 8))(v8, v2);
  }
}

uint64_t sub_34DCC(unsigned __int8 *a1)
{
  v2 = sub_59D14();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  sub_59CC4();
  v7 = sub_59D04();
  v8 = sub_5A474();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    if (v6)
    {
      v11 = 0x676E6979616C70;
    }

    else
    {
      v11 = 0x646570706F7473;
    }

    v12 = sub_9430(v11, 0xE700000000000000, &v15);

    *(v9 + 4) = v12;
    _os_log_impl(&dword_0, v7, v8, "Is playing state changed to %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_34F8C()
{
  result = qword_7F4A0;
  if (!qword_7F4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_7DBF0, &unk_5E4A0);
    sub_35028(&unk_7F4B0, &qword_7E450, MPAVRoute_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7F4A0);
  }

  return result;
}

uint64_t sub_35028(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_4FE4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_35078(void **a1)
{
  v2 = sub_59D14();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  sub_59CC4();
  v7 = v6;
  v8 = sub_59D04();
  v9 = sub_5A474();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136446210;
    if (v6)
    {
      v12 = [v7 routeName];
      v13 = sub_5A194();
      v15 = v14;
    }

    else
    {
      v15 = 0xE500000000000000;
      v13 = 0x3E4C494E3CLL;
    }

    v16 = sub_9430(v13, v15, &v19);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_0, v8, v9, "Current route changed to %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_35278(uint64_t *a1, int a2)
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

uint64_t sub_352C0(uint64_t result, int a2, int a3)
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

uint64_t sub_3530C()
{
  v1 = 0xE90000000000005DLL;
  v2 = [v0 state];
  if (v2 == (&dword_0 + 1))
  {
    v6._countAndFlagsBits = 0x646570706F74535BLL;
  }

  else
  {
    v3 = 0x6E776F6E6B6E555BLL;
    v4 = 0xE800000000000000;
    if (v2 == &dword_4)
    {
      v3 = 0x5D6465737561505BLL;
    }

    else
    {
      v4 = 0xE90000000000005DLL;
    }

    v5 = v2 == (&dword_0 + 2);
    if (v2 == (&dword_0 + 2))
    {
      v6._countAndFlagsBits = 0x676E6979616C505BLL;
    }

    else
    {
      v6._countAndFlagsBits = v3;
    }

    if (!v5)
    {
      v1 = v4;
    }
  }

  v6._object = v1;
  sub_5A1F4(v6);

  v12._countAndFlagsBits = 32;
  v12._object = 0xE100000000000000;
  sub_5A1F4(v12);
  v7 = [v0 debugDescription];
  v8 = sub_5A194();
  v10 = v9;

  v13._countAndFlagsBits = v8;
  v13._object = v10;
  sub_5A1F4(v13);

  return 0;
}

uint64_t sub_35430(uint64_t a1, uint64_t a2)
{
  v3 = sub_59894();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_3B904(&qword_7E548, &protocol conformance descriptor for PlaybackIntent.Option), v7 = sub_5A154(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_3B904(&qword_7E550, &protocol conformance descriptor for PlaybackIntent.Option);
      v15 = sub_5A164();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_35620(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_5A974();
  sub_5A984(v3);
  v4 = sub_5A9A4();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_356EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_5A974();
  sub_5A1E4();
  v6 = sub_5A9A4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_5A8E4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t PlaybackController.TransportCommand.request(for:)(id a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = v3 >> 61;
  if ((v3 >> 61) <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = [a1 tracklist];
        v7 = [v6 playingItem];

        if (v7)
        {
          v8 = [v7 seekCommand];

          if (v8)
          {
            v9 = v2;
            if (v3)
            {
              v9 = v4;
            }

            v10 = [v8 changePositionToElapsedInterval:v9 referenceInterval:?];
            goto LABEL_19;
          }
        }

        return 0;
      }

      v16 = [a1 tracklist];
      v17 = [v16 playingItem];

      if (v17)
      {
        v18 = [v17 playbackRateCommand];

        if (v18)
        {
          LODWORD(v19) = LODWORD(v2);
          v10 = [v18 setPlaybackRate:v19];
          goto LABEL_19;
        }
      }
    }

    else
    {
      v13 = [a1 tracklist];
      v14 = [v13 playingItem];

      if (v14)
      {
        v15 = [v14 seekCommand];

        if (v15)
        {
          v10 = [v15 changePositionToElapsedInterval:v2];
LABEL_19:
          v20 = v10;
          swift_unknownObjectRelease();
          return v20;
        }
      }
    }

    return 0;
  }

  if (v5 == 3)
  {
    type metadata accessor for PlaybackController(0);
    return sub_36064(LOBYTE(v2) & 1, BYTE1(v2) & 1, a1);
  }

  if (v5 == 4)
  {
    type metadata accessor for PlaybackController(0);
    return sub_36440(LOBYTE(v2) & 1, BYTE1(v2) & 1, a1);
  }

  if (v3 == 0xA000000000000000 && (*&v4 | *&v2) == 0)
  {
    return [a1 play];
  }

  if (*&v2 == 1 && v3 == 0xA000000000000000 && v4 == 0.0)
  {
    return [a1 pause];
  }

  if (*&v2 != 2 || v3 != 0xA000000000000000 || v4 != 0.0)
  {
    if (*&v2 == 3 && v3 == 0xA000000000000000 && v4 == 0.0)
    {
      v22 = [a1 tracklist];
      v23 = [v22 playingItem];

      if (!v23)
      {
        return 0;
      }

      v24 = [v23 seekCommand];

      if (!v24)
      {
        return 0;
      }

      v25 = [v24 preferredForwardJumpIntervals];
      sub_4FE4(0, &qword_7E338, NSNumber_ptr);
      v26 = sub_5A294();

      if (v26 >> 62)
      {
        if (!sub_5A814())
        {
          goto LABEL_96;
        }

        goto LABEL_41;
      }

      if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_41:
        if ((v26 & 0xC000000000000001) != 0)
        {
          goto LABEL_99;
        }

        if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_53;
        }

        __break(1u);
        goto LABEL_95;
      }

LABEL_96:

      swift_unknownObjectRelease();
      return 0;
    }

    if (*&v2 == 4 && v3 == 0xA000000000000000 && v4 == 0.0)
    {
      v27 = [a1 tracklist];
      v28 = [v27 playingItem];

      if (!v28)
      {
        return 0;
      }

      v24 = [v28 seekCommand];

      if (!v24)
      {
        return 0;
      }

      v29 = [v24 preferredBackwardJumpIntervals];
      sub_4FE4(0, &qword_7E338, NSNumber_ptr);
      v26 = sub_5A294();

      if (v26 >> 62)
      {
LABEL_95:
        result = sub_5A814();
        if (!result)
        {
          goto LABEL_96;
        }

LABEL_51:
        if ((v26 & 0xC000000000000001) == 0)
        {
          if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
          {
LABEL_53:
            v30 = *(v26 + 32);
LABEL_54:
            v31 = v30;

            [v31 doubleValue];
            v32 = [v24 jumpByInterval:?];
            swift_unknownObjectRelease();

            return v32;
          }

          __break(1u);
LABEL_101:
          v49 = result;
          v50 = sub_5A814();
          result = v49;
          if (!v50)
          {
            goto LABEL_104;
          }

          goto LABEL_75;
        }

LABEL_99:
        v30 = sub_5A724();
        goto LABEL_54;
      }

      result = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
        goto LABEL_51;
      }

      goto LABEL_96;
    }

    if (*&v2 == 5 && v3 == 0xA000000000000000 && v4 == 0.0)
    {
      v33 = [a1 tracklist];
      v34 = [v33 changeItemCommand];

      if (v34)
      {
        v10 = [v34 nextItem];
        goto LABEL_19;
      }

      return 0;
    }

    if (*&v2 == 6 && v3 == 0xA000000000000000 && v4 == 0.0)
    {
      v35 = [a1 tracklist];
      v36 = [v35 changeItemCommand];

      if (v36)
      {
        v10 = [v36 previousItem];
        goto LABEL_19;
      }

      return 0;
    }

    if (*&v2 == 7 && v3 == 0xA000000000000000 && v4 == 0.0)
    {
      return [a1 prepare];
    }

    if (*&v2 == 8 && v3 == 0xA000000000000000 && v4 == 0.0)
    {
      result = MPCPlayerResponse.remainingChapters.getter();
      if (!result)
      {
        return result;
      }

      v24 = (result & 0xFFFFFFFFFFFFFF8);
      if (result >> 62)
      {
        goto LABEL_101;
      }

      if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_75:
        if ((result & 0xC000000000000001) != 0)
        {
          goto LABEL_108;
        }

        if (v24[2])
        {
          v37 = *(result + 32);
LABEL_86:
          v42 = v37;
          goto LABEL_87;
        }

        goto LABEL_107;
      }

LABEL_104:

      return 0;
    }

    result = MPCPlayerResponse.previousChapters.getter();
    if (!result)
    {
      return result;
    }

    v38 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      v51 = result;
      v39 = sub_5A814();
      result = v51;
      if (!v39)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v39 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
      if (!v39)
      {
        goto LABEL_104;
      }
    }

    v40 = __OFSUB__(v39, 1);
    v41 = v39 - 1;
    if (!v40)
    {
      if ((result & 0xC000000000000001) == 0)
      {
        if ((v41 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v41 < *(v38 + 16))
        {
          v37 = *(result + 8 * v41 + 32);
          goto LABEL_86;
        }

        __break(1u);
        return result;
      }

LABEL_108:
      v42 = sub_5A724();
LABEL_87:
      v43 = v42;

      v44 = v43;
      v45 = [a1 tracklist];
      v46 = [v45 playingItem];

      if (v46)
      {
        v47 = [v46 seekCommand];

        if (v47)
        {
          [v44 startTime];
          v48 = [v47 changePositionToElapsedInterval:?];

          swift_unknownObjectRelease();
          return v48;
        }
      }

      return 0;
    }

    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  result = [a1 play];
  if (!result)
  {
    return [a1 pause];
  }

  return result;
}

char *sub_36064(uint64_t a1, char a2, void *a3)
{
  v5 = a1;
  v6 = sub_59D14();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  result = sub_3A574(v5, a3);
  if (!result)
  {
    sub_59CC4();
    v17 = sub_59D04();
    v18 = sub_5A454();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38 = v20;
      *v19 = 136315138;
      v21 = sub_5A9F4();
      v23 = sub_9430(v21, v22, &v38);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_0, v17, v18, "[%s] Error: unable to createIncreasePlaybackSpeedCommand", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
    }

    (*(v7 + 8))(v10, v6);
    return 0;
  }

  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v16 = *(result + 2);
  if ((a2 & 1) == 0)
  {
    if ((v16 - 1) < v15)
    {
      v15 = v16 - 1;
    }

LABEL_11:
    if ((v15 & 0x8000000000000000) == 0)
    {
      if (v15 < v16)
      {
        v24 = *&result[4 * v15 + 32];

        sub_59CC4();
        v25 = sub_59D04();
        v26 = sub_5A444();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v38 = v28;
          *v27 = 136315394;
          v29 = sub_5A9F4();
          v31 = sub_9430(v29, v30, &v38);

          *(v27 + 4) = v31;
          *(v27 + 12) = 2048;
          *(v27 + 14) = v24;
          _os_log_impl(&dword_0, v25, v26, "[%s] createIncreasePlaybackSpeedCommand: created with rate %f", v27, 0x16u);
          __swift_destroy_boxed_opaque_existential_0Tm(v28);
        }

        (*(v7 + 8))(v12, v6);
        v32 = [a3 tracklist];
        v33 = [v32 playingItem];

        if (v33)
        {
          v34 = [v33 playbackRateCommand];

          if (v34)
          {
            *&v35 = v24;
            v36 = [v34 setPlaybackRate:v35];
            swift_unknownObjectRelease();
            return v36;
          }
        }

        return 0;
      }

      goto LABEL_21;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v16)
  {
    v15 %= v16;
    goto LABEL_11;
  }

LABEL_22:
  __break(1u);
  return result;
}

char *sub_36440(uint64_t a1, char a2, void *a3)
{
  v5 = a1;
  v6 = sub_59D14();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v38 - v11;
  result = sub_3A574(v5, a3);
  if (!result)
  {
LABEL_7:
    sub_59CC4();
    v18 = sub_59D04();
    v19 = sub_5A454();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39 = v21;
      *v20 = 136315138;
      v22 = sub_5A9F4();
      v24 = sub_9430(v22, v23, &v39);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_0, v18, v19, "[%s] Error: unable to createDecreasePlaybackSpeedCommand", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
    }

    (*(v7 + 8))(v10, v6);
    return 0;
  }

  v15 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((a2 & 1) == 0)
  {
    v17 = v15 & ~(v15 >> 63);
    v16 = *(result + 2);
LABEL_11:
    if (v17 < v16)
    {
      v25 = *&result[4 * v17 + 32];

      sub_59CC4();
      v26 = sub_59D04();
      v27 = sub_5A444();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v39 = v29;
        *v28 = 136315394;
        v30 = sub_5A9F4();
        v32 = sub_9430(v30, v31, &v39);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2048;
        *(v28 + 14) = v25;
        _os_log_impl(&dword_0, v26, v27, "[%s] createDecreasePlaybackSpeedCommand: created with rate %f", v28, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
      }

      (*(v7 + 8))(v12, v6);
      v33 = [a3 tracklist];
      v34 = [v33 playingItem];

      if (v34)
      {
        v35 = [v34 playbackRateCommand];

        if (v35)
        {
          *&v36 = v25;
          v37 = [v35 setPlaybackRate:v36];
          swift_unknownObjectRelease();
          return v37;
        }
      }

      return 0;
    }

    goto LABEL_19;
  }

  v16 = *(result + 2);
  if (v16)
  {
    v17 = v15 % v16;
    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *PlaybackController.TransportCommand.canPerform(for:)(id a1)
{
  v3 = *v1;
  v4 = v1[1] >> 61;
  if (v4 == 4)
  {
    if ((v3 & 0x100) == 0)
    {
      type metadata accessor for PlaybackController(0);
      if (sub_3A574(v3 & 1, a1))
      {
        v10 = v9;

        if (v10 < 1)
        {
          return 0;
        }
      }
    }
  }

  else if (v4 == 3 && (v3 & 0x100) == 0)
  {
    type metadata accessor for PlaybackController(0);
    v5 = sub_3A574(v3 & 1, a1);
    if (v5)
    {
      v7 = v6;
      v8 = *(v5 + 2);

      if (v7 >= v8 - 1)
      {
        return 0;
      }
    }
  }

  result = PlaybackController.TransportCommand.request(for:)(a1);
  if (result)
  {

    return &dword_0 + 1;
  }

  return result;
}

uint64_t sub_3692C(void *a1)
{
  v2 = PlaybackController.TransportCommand.request(for:)(a1);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_3698C(void *a1)
{
  v2 = PlaybackController.TransportCommand.canPerform(for:)(a1);
  v3 = *(v1 + 8);
  v4 = v2 & 1;

  return v3(v4);
}

id PlaybackController.EnhanceDialogueCommand.request(for:)(void *a1)
{
  v2 = *v1;
  v3 = [a1 tracklist];
  v4 = [v3 enhanceDialogueCommand];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 activate:v2];
  swift_unknownObjectRelease();
  return v5;
}

uint64_t PlaybackController.EnhanceDialogueCommand.canPerform(for:)(void *a1)
{
  v2 = *v1;
  v3 = [a1 tracklist];
  v4 = [v3 enhanceDialogueCommand];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 activate:v2];
  swift_unknownObjectRelease();
  if (!v5)
  {
    return 0;
  }

  return 1;
}

id sub_36B1C(void *a1)
{
  v2 = *v1;
  v3 = [a1 tracklist];
  v4 = [v3 enhanceDialogueCommand];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 activate:v2];
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_36BB8(void *a1)
{
  v3 = *v1;
  v4 = [a1 tracklist];
  v5 = [v4 enhanceDialogueCommand];

  if (v5)
  {
    v6 = [v5 activate:v3];
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v2 + 8);

  return v7(v6);
}

uint64_t sub_36C8C(void *a1)
{
  v3 = *v1;
  v4 = [a1 tracklist];
  v5 = [v4 enhanceDialogueCommand];

  if (v5 && (v6 = [v5 activate:v3], swift_unknownObjectRelease(), v6))
  {

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v2 + 8);

  return v8(v7);
}

id PlaybackController.SleepTimerCommand.request(for:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = [a1 tracklist];
  v5 = [v4 sleepTimerCommand];

  if (v3 != 1)
  {
    if (v5)
    {
      v6 = [v5 startWithTime:v2];
      goto LABEL_12;
    }

    return 0;
  }

  if (v2 == 0.0)
  {
    if (v5)
    {
      v6 = [v5 startForChapterEnd];
      goto LABEL_12;
    }

    return 0;
  }

  if (*&v2 != 1)
  {
    if (v5)
    {
      v6 = [v5 reset];
      goto LABEL_12;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 startForItemEnd];
LABEL_12:
  v7 = v6;
  swift_unknownObjectRelease();
  return v7;
}

BOOL PlaybackController.SleepTimerCommand.canPerform(for:)(void *a1)
{
  v1 = PlaybackController.SleepTimerCommand.request(for:)(a1);
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

BOOL static PlaybackController.SleepTimerCommand.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2 == 0.0)
    {
      if (v3 == 0.0)
      {
        v6 = *(a2 + 8);
      }

      else
      {
        LOBYTE(v6) = 0;
      }

      if (v6)
      {
        return 1;
      }
    }

    else if (*&v2 == 1)
    {
      if (*&v3 == 1)
      {
        v4 = *(a2 + 8);
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (*&v3 > 1uLL)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    return v2 == *a2;
  }

  return 0;
}

uint64_t sub_36F44(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  if (v3 == 0.0)
  {
    v5 = *(a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *&v3 > 1uLL;
  if (*&v3 == 1)
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (!v6)
  {
    v4 = 0;
  }

  if (*&v2 != 1)
  {
    v7 = v4;
  }

  if (v2 == 0.0)
  {
    return v5;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_36FA8(void *a1)
{
  v2 = PlaybackController.SleepTimerCommand.request(for:)(a1);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_37008(void *a1)
{
  v2 = PlaybackController.SleepTimerCommand.request(for:)(a1);
  v3 = v2;
  if (v2)
  {
  }

  v4 = *(v1 + 8);

  return v4(v3 != 0);
}

uint64_t PlaybackController.QueueCommand.request(for:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_59904();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_59944();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for PlaybackController.QueueCommand(0);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_371DC, 0, 0);
}

uint64_t sub_371DC()
{
  sub_3AFC0(*(v0 + 40), *(v0 + 104));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v2 = **(v0 + 104);
        v3 = [v2 remove];

LABEL_36:

        v38 = *(v0 + 8);

        return v38(v3);
      }

      v21 = *(v0 + 104);
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      if (!*(v21 + 16))
      {
        v34 = [*(v0 + 32) tracklist];
        v35 = [v34 reorderCommand];

        if (v35)
        {
          v3 = [v35 moveItem:v22 beforeItem:v23];

          v27 = v23;
          v28 = 0;
          goto LABEL_30;
        }

        v36 = v23;
        v37 = 0;
        goto LABEL_34;
      }

      if (v24 != 255)
      {
        if (v24 == 1)
        {
          v25 = [*(v0 + 32) tracklist];
          v26 = [v25 reorderCommand];

          if (v26)
          {
            v3 = [v26 moveItem:v22 afterItem:v23];

            v27 = v23;
            v28 = 1;
LABEL_30:
            sub_3B038(v27, v28);
            swift_unknownObjectRelease();
            goto LABEL_36;
          }

          v36 = v23;
          v37 = 1;
        }

        else
        {

          v36 = v23;
          v37 = v24;
        }

LABEL_34:
        sub_3B038(v36, v37);
        goto LABEL_35;
      }
    }

    else
    {
      v8 = **(v0 + 104);
      v9 = [*(v0 + 32) tracklist];
      v10 = [v9 changeItemCommand];

      if (v10)
      {
        v3 = [v10 changeToItem:v8];

        swift_unknownObjectRelease();
        goto LABEL_36;
      }
    }

LABEL_35:
    v3 = 0;
    goto LABEL_36;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v11 = *(v0 + 104);
    v13 = *(v0 + 80);
    v12 = *(v0 + 88);
    v14 = *(v0 + 72);
    v15 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E460, &qword_5D580) + 48));
    v16 = *v15;
    *(v0 + 112) = *v15;
    v17 = *(v15 + 8);
    *(v0 + 25) = v17;
    (*(v13 + 32))(v12, v11, v14);
    *(v0 + 16) = v16;
    *(v0 + 24) = v17;
    v18 = swift_task_alloc();
    *(v0 + 120) = v18;
    *v18 = v0;
    v18[1] = sub_376B0;
    v19 = *(v0 + 88);
    v20 = *(v0 + 32);

    return sub_37BA8(v19, (v0 + 16), v20);
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      v29 = *(v0 + 32);
      v30 = [objc_opt_self() supportsBlueMoon];
      v31 = [v29 tracklist];
      v32 = [v31 resetCommand];

      if (v30)
      {
        if (!v32)
        {
          goto LABEL_35;
        }

        v33 = [v32 clearUpNextItems];
      }

      else
      {
        if (!v32)
        {
          goto LABEL_35;
        }

        v33 = [v32 clear];
      }

      v3 = v33;
      swift_unknownObjectRelease();
      goto LABEL_36;
    }

    (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 104), *(v0 + 48));
    v4 = swift_task_alloc();
    *(v0 + 144) = v4;
    *v4 = v0;
    v4[1] = sub_37890;
    v5 = *(v0 + 64);
    v6 = *(v0 + 32);

    return sub_386F8(v5, v6);
  }
}

uint64_t sub_376B0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_37A5C;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_377D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_377D8()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  sub_3B024(*(v0 + 112), *(v0 + 25));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 136);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_37890(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_37B0C;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_379B8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_379B8()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[20];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_37A5C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 25);
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  sub_3B024(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_37B0C()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_37BA8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = v3;
  *(v4 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2A8, &unk_5D8E0);
  *(v4 + 48) = swift_task_alloc();
  v6 = sub_59944();
  *(v4 + 56) = v6;
  *(v4 + 64) = *(v6 - 8);
  *(v4 + 72) = swift_task_alloc();
  v7 = sub_59904();
  *(v4 + 80) = v7;
  *(v4 + 88) = *(v7 - 8);
  *(v4 + 96) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a2;
  *(v4 + 104) = v8;
  *(v4 + 112) = v9;
  *(v4 + 184) = *(a2 + 8);

  return _swift_task_switch(sub_37D1C, 0, 0);
}

uint64_t sub_37D1C()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[6];
  v19 = v0[4];
  (*(v0[8] + 16))(v0[9], v0[3], v0[7]);
  v5 = sub_59AE4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_5A3F4();
  sub_59864();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2B8, &qword_5D2A8);
  v6 = sub_59894();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_5BC80;
  (*(v7 + 104))(v9 + v8, enum case for PlaybackIntent.Option.ignoreContinuousPlaybackSetting(_:), v6);
  sub_3A27C(v9);
  swift_setDeallocating();
  (*(v7 + 8))(v9 + v8, v6);
  swift_deallocClassInstance();
  sub_59814();

  v10 = *(v3 + 8);
  v0[15] = v10;
  v0[16] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v2);
  v11 = [v19 tracklist];
  v12 = [v11 playingItem];

  if (v12)
  {

    v13 = swift_task_alloc();
    v0[17] = v13;
    *v13 = v0;
    v13[1] = sub_3804C;
    v14 = v0[4];

    return PlaybackIntent.generateMPCIntent(for:)(v14);
  }

  else
  {
    v16 = swift_task_alloc();
    v0[20] = v16;
    *v16 = v0;
    v16[1] = sub_38160;
    v17 = v0[13];
    v18 = v0[4];

    return sub_386F8(v17, v18);
  }
}

uint64_t sub_3804C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_38654;
  }

  else
  {
    v4 = sub_38288;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_38160(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_385B0;
  }

  else
  {
    *(v4 + 176) = a1;
    v5 = sub_38504;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_38288()
{
  v1 = [*(v0 + 32) tracklist];
  *(v0 + 16) = MPCPlayerResponseTracklist.itemsInSections(sections:)(&off_71E28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F5A0, &qword_5D8F0);
  sub_3B948(&qword_7E558, &unk_7F5A0, &qword_5D8F0);
  v2 = sub_5A414();

  if ((v2 & 1) == 0)
  {
    goto LABEL_5;
  }

  v3 = *(v0 + 184);
  v4 = *(v0 + 112);
  if (v3 != 2)
  {
    goto LABEL_7;
  }

  if (v4 == &dword_0 + 1)
  {
    v14 = [*(v0 + 32) tracklist];
    v15 = [v14 insertCommand];

    if (v15)
    {
      v7 = [v15 insertAtEndOfUpNextWithPlaybackIntent:*(v0 + 144)];
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }

    v16 = v7;
    v8 = 2;
    v9 = &dword_0 + 1;
    goto LABEL_10;
  }

  if (v4)
  {
LABEL_7:
    sub_3B8F0(v4, v3);
    v7 = 0;
    v8 = *(v0 + 184);
    v9 = *(v0 + 112);
  }

  else
  {
LABEL_5:
    v5 = [*(v0 + 32) tracklist];
    v6 = [v5 insertCommand];

    if (v6)
    {
      v7 = [v6 insertAfterPlayingItemWithPlaybackIntent:*(v0 + 144)];
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }

    v10 = v7;
    v9 = 0;
    v8 = 2;
  }

LABEL_10:
  v11 = *(v0 + 144);
  sub_394F4(v7);

  sub_3B024(v9, v8);
  (*(v0 + 120))(*(v0 + 104), *(v0 + 80));

  v12 = *(v0 + 8);

  return v12(v7);
}

uint64_t sub_38504()
{
  v1 = *(v0 + 176);
  (*(v0 + 120))(*(v0 + 104), *(v0 + 80));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_385B0()
{
  (*(v0 + 120))(*(v0 + 104), *(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_38654()
{
  (*(v0 + 120))(*(v0 + 104), *(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_386F8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_387A8;

  return PlaybackIntent.generateMPCIntent(for:)(a2);
}

uint64_t sub_387A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_388DC, 0, 0);
  }
}

uint64_t sub_388DC()
{
  v1 = [*(v0 + 24) tracklist];
  v2 = [v1 resetCommand];

  if (v2)
  {
    v3 = [v2 replaceWithPlaybackIntent:*(v0 + 48) replaceIntent:1];
    swift_unknownObjectRelease();
    if (v3)
    {
      v4 = v3;
      sub_59824();
      v5 = sub_5A174();

      if (!kMRMediaRemoteOptionDesiredSessionID)
      {
        __break(1u);
        return result;
      }

      [v4 setCommandOptionValue:v5 forKey:?];
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = *(v0 + 48);
  sub_394F4(v3);

  v8 = *(v0 + 8);

  return v8(v3);
}

uint64_t PlaybackController.QueueCommand.canPerform(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for PlaybackController.QueueCommand(0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_38ACC, 0, 0);
}

uint64_t sub_38ACC()
{
  sub_3AFC0(v0[3], v0[7]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v8 = v0[2];
    sub_3AFC0(v0[7], v0[5]);
    v9 = [v8 tracklist];
    v10 = [v9 resetCommand];

    v11 = v10;
    v12 = v10 != 0;
    if (v11)
    {
      swift_unknownObjectRelease();
    }

    v13 = v0[5];
    v14 = sub_59904();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
LABEL_5:
      v5 = swift_task_alloc();
      v0[8] = v5;
      *v5 = v0;
      v5[1] = sub_38D28;
      v6 = v0[2];

      return PlaybackController.QueueCommand.request(for:)(v6);
    }

    v2 = v0[6];
    sub_3AFC0(v0[7], v2);
    v3 = *v2;
    v4 = *(v2 + 16);
    if (v4 != 255)
    {
      sub_3B038(*(v0[6] + 8), v4);

      goto LABEL_5;
    }

    v16 = [v0[2] tracklist];
    v17 = [v16 reorderCommand];

    if (v17)
    {
      v12 = [v17 canMoveItem:v3];

      swift_unknownObjectRelease();
    }

    else
    {

      v12 = 0;
    }
  }

  sub_1B1CC(v0[7]);

  v15 = v0[1];

  return v15(v12);
}

uint64_t sub_38D28(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_38EF0;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_38E54;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_38E54()
{
  v1 = v0[9];
  v2 = v1 != 0;

  sub_1B1CC(v0[7]);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_38EF0()
{
  sub_1B1CC(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t PlaybackController.QueueCommand.requiresLocalRoute.getter()
{
  v1 = v0;
  v2 = sub_59894();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_59904();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PlaybackController.QueueCommand(0);
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3AFC0(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    (*(v7 + 32))(v9, v12, v6);
    v13 = sub_598F4();
    (*(v3 + 104))(v5, enum case for PlaybackIntent.Option.forceLocalPlayback(_:), v2);
    v14 = sub_35430(v5, v13);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_1B1CC(v12);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_391CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_39260;

  return PlaybackController.QueueCommand.request(for:)(a1);
}

uint64_t sub_39260(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_39360(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_393F4;

  return PlaybackController.QueueCommand.canPerform(for:)(a1);
}

uint64_t sub_393F4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_394F4(void *a1)
{
  v2 = sub_59D14();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() currentPersona];
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [v6 isGuestPersona];

  if (v8)
  {
    sub_59CC4();
    v9 = sub_59D04();
    v10 = sub_5A474();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "Enabling private listening for guest mode", v11, 2u);
    }

    (*(v3 + 8))(v5, v2);
    if (a1)
    {
      v12.super.super.isa = sub_5A344().super.super.isa;
      if (kMRMediaRemoteOptionPrivateListeningEnabled)
      {
        isa = v12.super.super.isa;
        [a1 setCommandOptionValue:v12.super.super.isa forKey:?];

        return;
      }

LABEL_10:
      __break(1u);
    }
  }
}

uint64_t _s16PodcastsPlayback0B10ControllerC12QueueCommandO8LocationO2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_4FE4(0, &qword_7E540, NSObject_ptr);
      sub_3B8F0(v4, 0);
      sub_3B8F0(v2, 0);
      v6 = sub_5A624();
      sub_3B024(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      sub_4FE4(0, &qword_7E540, NSObject_ptr);
      sub_3B8F0(v4, 1u);
      sub_3B8F0(v2, 1u);
      LOBYTE(v6) = sub_5A624();
      sub_3B024(v2, 1u);
      v7 = v4;
      v8 = 1;
LABEL_7:
      sub_3B024(v7, v8);
      return v6 & 1;
    }

    goto LABEL_19;
  }

  if (!v2)
  {
    if (v5 == 2 && v4 == 0)
    {
      sub_3B024(0, 2u);
      sub_3B024(0, 2u);
      return 1;
    }

    goto LABEL_19;
  }

  if (v5 != 2 || v4 != &dword_0 + 1)
  {
LABEL_19:
    sub_3B8F0(*a2, *(a2 + 8));
    sub_3B8F0(v2, v3);
    sub_3B024(v2, v3);
    sub_3B024(v4, v5);
    return 0;
  }

  v11 = 1;
  sub_3B024(&dword_0 + 1, 2u);
  sub_3B024(&dword_0 + 1, 2u);
  return v11;
}

uint64_t _s16PodcastsPlayback0B10ControllerC12QueueCommandO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_59904();
  v60 = *(v4 - 8);
  v61 = v4;
  __chkstk_darwin(v4);
  v58 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_59944();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6);
  v59 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlaybackController.QueueCommand(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v58 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v58 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = (&v58 - v19);
  __chkstk_darwin(v18);
  v22 = (&v58 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E538, &qword_5D8D8);
  v24 = __chkstk_darwin(v23 - 8);
  v26 = &v58 - v25;
  v27 = &v58 + *(v24 + 56) - v25;
  sub_3AFC0(a1, &v58 - v25);
  sub_3AFC0(a2, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_3AFC0(v26, v11);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v33 = v60;
          v32 = v61;
          v34 = v58;
          (*(v60 + 32))(v58, v27, v61);
          v31 = sub_59854();
          v35 = *(v33 + 8);
          v35(v34, v32);
          v35(v11, v32);
          goto LABEL_15;
        }

        (*(v60 + 8))(v11, v61);
        goto LABEL_27;
      }

      if (swift_getEnumCaseMultiPayload() != 5)
      {
LABEL_27:
        sub_3B874(v26);
LABEL_28:
        v31 = 0;
        return v31 & 1;
      }

      goto LABEL_23;
    }

    sub_3AFC0(v26, v14);
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E460, &qword_5D580) + 48);
    v37 = *&v14[v36];
    v38 = v14[v36 + 8];
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_3B024(v37, v38);
      (*(v62 + 8))(v14, v63);
      goto LABEL_27;
    }

    v39 = *&v27[v36];
    LODWORD(v61) = v27[v36 + 8];
    v41 = v62;
    v40 = v63;
    v42 = v59;
    (*(v62 + 32))(v59, v27, v63);
    v43 = sub_59934();
    v44 = *(v41 + 8);
    v44(v14, v40);
    if (v43)
    {
      v66 = v37;
      v67 = v38;
      v45 = v39;
      v64 = v39;
      v46 = v61;
      v65 = v61;
      v31 = _s16PodcastsPlayback0B10ControllerC12QueueCommandO8LocationO2eeoiySbAG_AGtFZ_0(&v66, &v64);
      v44(v42, v40);
      sub_3B024(v45, v46);
      sub_3B024(v37, v38);
      goto LABEL_15;
    }

    v44(v42, v40);
    sub_3B024(v39, v61);
    sub_3B024(v37, v38);
LABEL_37:
    sub_1B1CC(v26);
    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_3AFC0(v26, v22);
    v29 = *v22;
    if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_3AFC0(v26, v17);
    v48 = *v17;
    v47 = *(v17 + 1);
    v49 = v17[16];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_3B038(v47, v49);

      goto LABEL_27;
    }

    v51 = *v27;
    v50 = *(v27 + 1);
    v52 = v27[16];
    sub_4FE4(0, &qword_7E540, NSObject_ptr);
    v53 = sub_5A624();

    if (v53)
    {
      if (v49 == 255)
      {
        if (v52 == 255)
        {
          sub_3B038(v47, 0xFFu);
          goto LABEL_23;
        }
      }

      else
      {
        v66 = v47;
        v67 = v49;
        if (v52 != 255)
        {
          v64 = v50;
          v65 = v52;
          sub_3B8DC(v47, v49);
          v54 = _s16PodcastsPlayback0B10ControllerC12QueueCommandO8LocationO2eeoiySbAG_AGtFZ_0(&v66, &v64);
          sub_3B024(v64, v65);
          sub_3B024(v66, v67);
          sub_3B038(v47, v49);
          if ((v54 & 1) == 0)
          {
            goto LABEL_37;
          }

LABEL_23:
          sub_1B1CC(v26);
          v31 = 1;
          return v31 & 1;
        }

        sub_3B8DC(v47, v49);
        sub_3B024(v47, v49);
      }

      sub_3B038(v47, v49);
      v56 = v50;
      v57 = v52;
    }

    else
    {
      sub_3B038(v50, v52);
      v56 = v47;
      v57 = v49;
    }

    sub_3B038(v56, v57);
    goto LABEL_37;
  }

  sub_3AFC0(v26, v20);
  v29 = *v20;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_11:

    goto LABEL_27;
  }

LABEL_5:
  v30 = *v27;
  sub_4FE4(0, &qword_7E540, NSObject_ptr);
  v31 = sub_5A624();

LABEL_15:
  sub_1B1CC(v26);
  return v31 & 1;
}

BOOL _s16PodcastsPlayback0B10ControllerC16TransportCommandO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = v3 >> 61;
  if ((v3 >> 61) <= 2)
  {
    if (!v8)
    {
      return !(v5 >> 61) && v2 == v6;
    }

    if (v8 != 1)
    {
      return v5 >> 61 == 2 && *&v2 == *&v6;
    }

    if (v5 >> 61 == 1)
    {
      if (v3)
      {
        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v5 & 1) != 0 || v2 != v6)
      {
        return 0;
      }

      return v4 == v7;
    }

    return 0;
  }

  if (v8 == 3)
  {
    if (v5 >> 61 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v8 != 4)
    {
      if (v3 == 0xA000000000000000 && (*&v4 | *&v2) == 0)
      {
        if (v5 >> 61 == 5 && v5 == 0xA000000000000000 && !(*&v7 | *&v6))
        {
          return 1;
        }
      }

      else if (*&v2 == 1 && v3 == 0xA000000000000000 && v4 == 0.0)
      {
        if (v5 >> 61 == 5 && *&v6 == 1 && v5 == 0xA000000000000000 && v7 == 0.0)
        {
          return 1;
        }
      }

      else if (*&v2 == 2 && v3 == 0xA000000000000000 && v4 == 0.0)
      {
        if (v5 >> 61 == 5 && *&v6 == 2 && v5 == 0xA000000000000000 && v7 == 0.0)
        {
          return 1;
        }
      }

      else if (*&v2 == 3 && v3 == 0xA000000000000000 && v4 == 0.0)
      {
        if (v5 >> 61 == 5 && *&v6 == 3 && v5 == 0xA000000000000000 && v7 == 0.0)
        {
          return 1;
        }
      }

      else if (*&v2 == 4 && v3 == 0xA000000000000000 && v4 == 0.0)
      {
        if (v5 >> 61 == 5 && *&v6 == 4 && v5 == 0xA000000000000000 && v7 == 0.0)
        {
          return 1;
        }
      }

      else if (*&v2 == 5 && v3 == 0xA000000000000000 && v4 == 0.0)
      {
        if (v5 >> 61 == 5 && *&v6 == 5 && v5 == 0xA000000000000000 && v7 == 0.0)
        {
          return 1;
        }
      }

      else if (*&v2 == 6 && v3 == 0xA000000000000000 && v4 == 0.0)
      {
        if (v5 >> 61 == 5 && *&v6 == 6 && v5 == 0xA000000000000000 && v7 == 0.0)
        {
          return 1;
        }
      }

      else if (*&v2 == 7 && v3 == 0xA000000000000000 && v4 == 0.0)
      {
        if (v5 >> 61 == 5 && *&v6 == 7 && v5 == 0xA000000000000000 && v7 == 0.0)
        {
          return 1;
        }
      }

      else if (*&v2 == 8 && v3 == 0xA000000000000000 && v4 == 0.0)
      {
        if (v5 >> 61 == 5 && *&v6 == 8 && v5 == 0xA000000000000000 && v7 == 0.0)
        {
          return 1;
        }
      }

      else if (v5 >> 61 == 5 && *&v6 == 9 && v5 == 0xA000000000000000 && v7 == 0.0)
      {
        return 1;
      }

      return 0;
    }

    if (v5 >> 61 != 4)
    {
      return 0;
    }
  }

  if ((LOBYTE(v6) ^ LOBYTE(v2)))
  {
    return 0;
  }

  else
  {
    return (*&v2 >> 8) & 1 ^ ((*a2 & 0x100) == 0);
  }
}

void *sub_3A27C(uint64_t a1)
{
  v2 = sub_59894();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E560, &qword_5D8F8);
    v9 = sub_5A6E4();
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
      sub_3B904(&qword_7E548, &protocol conformance descriptor for PlaybackIntent.Option);
      v16 = sub_5A154();
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
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_3B904(&qword_7E550, &protocol conformance descriptor for PlaybackIntent.Option);
          v23 = sub_5A164();
          v24 = *v15;
          (*v15)(v6, v2);
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

  return &_swiftEmptySetSingleton;
}

char *sub_3A574(int a1, void *a2)
{
  LODWORD(v3) = a1;
  v4 = sub_59D14();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v80 = &v75[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v81 = &v75[-v8];
  v9 = [a2 tracklist];
  v10 = [v9 playingItem];

  if (!v10)
  {
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  v11 = [v10 playbackRateCommand];

  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    goto LABEL_17;
  }

  v13 = a2;
  v14 = [v11 supportedPlaybackRates];
  swift_unknownObjectRelease();
  sub_4FE4(0, &qword_7E338, NSNumber_ptr);
  v15 = sub_5A294();

  if (v15 >> 62)
  {
    v16 = sub_5A814();
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_16:

    a2 = v13;
    goto LABEL_17;
  }

  v16 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
  if (!v16)
  {
    goto LABEL_16;
  }

LABEL_5:
  v76 = v3;
  v77 = v5;
  v79 = v4;
  v82 = _swiftEmptyArrayStorage;
  result = sub_105F8(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_65;
  }

  v18 = 0;
  v12 = v82;
  do
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = sub_5A724();
    }

    else
    {
      v19 = *(v15 + 8 * v18 + 32);
    }

    v20 = v19;
    [v19 floatValue];
    v22 = v21;

    v82 = v12;
    v24 = v12[2];
    v23 = v12[3];
    if (v24 >= v23 >> 1)
    {
      sub_105F8((v23 > 1), v24 + 1, 1);
      v12 = v82;
    }

    ++v18;
    v12[2] = v24 + 1;
    *(v12 + v24 + 8) = v22;
  }

  while (v16 != v18);

  v4 = v79;
  v5 = v77;
  a2 = v13;
  LODWORD(v3) = v76;
LABEL_17:
  v25 = [a2 tracklist];
  v26 = [v25 playingItem];

  if (!v26)
  {
    v28 = _swiftEmptyArrayStorage;
    v39 = v81;
    if (v3)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  v27 = [v26 playbackRateCommand];

  v28 = _swiftEmptyArrayStorage;
  if (!v27)
  {
    goto LABEL_32;
  }

  v78 = a2;
  v29 = [v27 extendedSupportedPlaybackRates];
  swift_unknownObjectRelease();
  sub_4FE4(0, &qword_7E338, NSNumber_ptr);
  v30 = sub_5A294();

  if (!(v30 >> 62))
  {
    v31 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
    if (v31)
    {
      goto LABEL_21;
    }

LABEL_36:

    a2 = v78;
    v39 = v81;
    if (v3)
    {
LABEL_33:
      if (v28[2])
      {
        goto LABEL_41;
      }

LABEL_38:
      sub_59CC4();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v40 = sub_59D04();
      v41 = sub_5A454();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v78 = a2;
        v43 = v42;
        v77 = swift_slowAlloc();
        v82 = v77;
        *v43 = 136316418;
        v44 = sub_5A9F4();
        v76 = v41;
        v46 = sub_9430(v44, v45, &v82);
        v79 = v4;
        v47 = v46;

        *(v43 + 4) = v47;
        *(v43 + 12) = 1024;
        *(v43 + 14) = v3 & 1;
        *(v43 + 18) = 1024;
        v48 = v12[2];

        *(v43 + 20) = v48 == 0;

        *(v43 + 24) = 1024;
        v49 = v28[2];

        *(v43 + 26) = v49 == 0;

        *(v43 + 30) = 2080;
        sub_59A34();
        sub_59A14();
        v50 = sub_5A2A4();
        v51 = v3;
        v3 = v5;
        v53 = v52;

        v54 = sub_9430(v50, v53, &v82);
        v5 = v3;
        LOBYTE(v3) = v51;

        *(v43 + 32) = v54;
        v4 = v79;
        *(v43 + 40) = 1024;
        v55 = *(sub_59A24() + 16);

        *(v43 + 42) = v55 == 0;
        _os_log_impl(&dword_0, v40, v76, "[%s] Missing one or both of the command provided supportedPlaybackRates or extendedSupportedPlaybackRates. Will attempt to fall back to supported rates when extended rates is empty. State: useExtendedRates = %{BOOL}d, commandRates.isEmpty = %{BOOL}d, commandExtendedRates.isEmpty = %{BOOL}d, PlaybackRateHelper.supportedRates = %s, PlaybackRateHelper.extendedSupportedRates.isEmpty = %{BOOL}d", v43, 0x2Eu);
        swift_arrayDestroy();

        a2 = v78;

        (v5[1])(v81, v4);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        (v5[1])(v39, v4);
      }

LABEL_41:
      v82 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E568, &qword_5D900);
      sub_3B948(&unk_7E570, &qword_7E568, &qword_5D900);
      if ((sub_5A414() & 1) == 0)
      {

        sub_59A34();
        v12 = sub_59A14();
      }

      v82 = v28;
      if ((sub_5A414() & 1) == 0)
      {

        v28 = v12;
      }

      if (v3)
      {
        v56 = v28;
      }

      else
      {
        v56 = v12;
      }

      v57 = [a2 tracklist];
      v58 = [v57 playingItem];

      if (v58 && (v59 = [v58 playbackRateCommand], v58, v59))
      {
        [v59 preferredPlaybackRate];
        v61 = v60;
        swift_unknownObjectRelease();
        v82 = v56;
        v62 = sub_5A414();
        v63 = v80;
        if (v62)
        {
          v64 = v56[2];
          v65 = 0;
          if (v64)
          {
            do
            {
              if (*(v56 + v65 + 8) == v61)
              {
                break;
              }

              ++v65;
            }

            while (v64 != v65);
          }

          do
          {
            if (!v64)
            {
              break;
            }

            v66 = *(v56 + v64-- + 7);
          }

          while (v66 >= v61);
          return v56;
        }
      }

      else
      {
        v82 = v56;
        sub_5A414();
        v63 = v80;
      }

      sub_59CC4();
      v67 = sub_59D04();
      v68 = sub_5A454();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = v4;
        v71 = swift_slowAlloc();
        v82 = v71;
        *v69 = 136315138;
        v72 = sub_5A9F4();
        v74 = sub_9430(v72, v73, &v82);

        *(v69 + 4) = v74;
        _os_log_impl(&dword_0, v67, v68, "[%s] Either supportedPlaybackRates is empty or no current playback rate is found. Exiting", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v71);

        (v5[1])(v63, v70);
      }

      else
      {

        (v5[1])(v63, v4);
      }

      return 0;
    }

LABEL_37:
    if (v12[2])
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v31 = sub_5A814();
  if (!v31)
  {
    goto LABEL_36;
  }

LABEL_21:
  v76 = v3;
  v77 = v5;
  v79 = v4;
  v82 = _swiftEmptyArrayStorage;
  result = sub_105F8(0, v31 & ~(v31 >> 63), 0);
  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = 0;
    v28 = v82;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v33 = sub_5A724();
      }

      else
      {
        v33 = *(v30 + 8 * v32 + 32);
      }

      v34 = v33;
      [v33 floatValue];
      v36 = v35;

      v82 = v28;
      v38 = v28[2];
      v37 = v28[3];
      if (v38 >= v37 >> 1)
      {
        sub_105F8((v37 > 1), v38 + 1, 1);
        v28 = v82;
      }

      ++v32;
      v28[2] = v38 + 1;
      *(v28 + v38 + 8) = v36;
    }

    while (v31 != v32);

    a2 = v78;
    v4 = v79;
    v5 = v77;
    LOBYTE(v3) = v76;
LABEL_32:
    v39 = v81;
    if (v3)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

LABEL_65:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for PlaybackController.QueueCommand(uint64_t a1)
{
  result = qword_7E4D8;
  if (!qword_7E4D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3AFC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackController.QueueCommand(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_3B024(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

void sub_3B038(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_3B024(a1, a2);
  }
}

uint64_t dispatch thunk of PlaybackCommand.request(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_32310;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PlaybackCommand.canPerform(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_393F4;

  return v9(a1, a2, a3);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s16TransportCommandOwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
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

uint64_t _s16TransportCommandOwst(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
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

uint64_t sub_3B398(uint64_t a1)
{
  v1 = *(a1 + 8) >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

void *sub_3B3C4(void *result, uint64_t a2)
{
  if (a2 < 5)
  {
    result[1] = result[1] & 1 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 5);
    *(result + 1) = xmmword_5D560;
  }

  return result;
}

uint64_t _s22EnhanceDialogueCommandOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s17SleepTimerCommandOwet(uint64_t a1, int a2)
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

uint64_t _s17SleepTimerCommandOwst(uint64_t result, int a2, int a3)
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

uint64_t sub_3B518(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3B534(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_3B5B4(uint64_t a1)
{
  sub_4FE4(319, &qword_7E4E8, MPCPlayerResponseItem_ptr);
  if (v1 <= 0x3F)
  {
    sub_3B660(319);
    if (v2 <= 0x3F)
    {
      sub_3B6F0(319);
      if (v3 <= 0x3F)
      {
        sub_3B75C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_3B660(uint64_t a1)
{
  if (!qword_7E4F0)
  {
    sub_4FE4(255, &qword_7E4E8, MPCPlayerResponseItem_ptr);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_7E4F8, "\\;");
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_7E4F0);
    }
  }
}

void sub_3B6F0(uint64_t a1)
{
  if (!qword_7E500)
  {
    sub_59944();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_7E500);
    }
  }
}

void sub_3B75C()
{
  if (!qword_7E508)
  {
    v0 = sub_59904();
    if (!v1)
    {
      atomic_store(v0, &qword_7E508);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16PodcastsPlayback0B10ControllerC12QueueCommandO8LocationO(uint64_t a1)
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

uint64_t sub_3B7C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_3B808(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_3B84C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_3B874(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E538, &qword_5D8D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_3B8DC(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_3B8F0(result, a2);
  }

  return result;
}

id sub_3B8F0(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t sub_3B904(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_59894();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3B948(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

char *sub_3B99C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = &v1[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_playbackPositionTracker];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = &v1[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_observer];
  *(v7 + 4) = 0;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v8 = objc_allocWithZone(MPCPlaybackEngine);
  v9 = sub_5A174();
  v10 = [v8 initWithPlayerID:v9];

  v11 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_engine;
  *&v1[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_engine] = v10;
  v12 = a1[4];
  [v10 setStateRestorationSupported:{sub_35620(0, v12)}];
  [*&v1[v11] setVideoSupported:{sub_35620(1u, v12)}];
  [*&v1[v11] setPictureInPictureSupported:{sub_35620(2u, v12)}];
  v13 = _s9MPCPlayerCMa();
  v22.receiver = v1;
  v22.super_class = v13;
  v14 = objc_msgSendSuper2(&v22, "init");
  v15 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_engine;
  v16 = *(v14 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_engine);
  v17 = v14;
  [v16 setDelegate:v17];
  [*(v14 + v15) becomeActive];
  sub_5A394();
  v18 = sub_5A3B4();
  (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  v20 = *(a1 + 1);
  *(v19 + 32) = *a1;
  *(v19 + 48) = v20;
  *(v19 + 64) = a1[4];
  *(v19 + 72) = v17;
  sub_17A48(0, 0, v5, &unk_5D9F8, v19);

  return v17;
}

uint64_t sub_3BC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_59D14();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_3BCDC, 0, 0);
}

uint64_t sub_3BCDC()
{
  if (sub_35620(0, *(v0[18] + 32)))
  {
    v1 = *(v0[19] + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_engine);
    v0[2] = v0;
    v0[7] = v0 + 28;
    v0[3] = sub_3BE98;
    v2 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E748, &unk_5DA00);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_3C454;
    v0[13] = &block_descriptor_5;
    v0[14] = v2;
    [v1 restoreStateWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v0[26] = *(v0[19] + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_engine);
    sub_5A384();
    v0[27] = sub_5A374();
    v4 = sub_5A354();

    return _swift_task_switch(sub_3C0E8, v4, v3);
  }
}

uint64_t sub_3BE98()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_3C27C;
  }

  else
  {
    v2 = sub_3BFA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_3BFA8(uint64_t a1)
{
  sub_59CC4();
  v2 = sub_59D04();
  v3 = sub_5A474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Engine successfully restored a playback queue", v4, 2u);
  }

  (*(v1[21] + 8))(v1[24], v1[20]);
  v1[26] = *(v1[19] + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_engine);
  sub_5A384();
  v1[27] = sub_5A374();
  v6 = sub_5A354();

  return _swift_task_switch(sub_3C0E8, v6, v5);
}

uint64_t sub_3C0E8()
{
  v1 = *(v0 + 208);

  [v1 start];

  return _swift_task_switch(sub_3C160, 0, 0);
}

uint64_t sub_3C160(uint64_t a1)
{
  sub_59CC4();
  v2 = sub_59D04();
  v3 = sub_5A474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "MPC Playback Engine started", v4, 2u);
  }

  v5 = v1[23];
  v6 = v1[21];
  v7 = v1[20];

  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8();
}

uint64_t sub_3C27C(uint64_t a1)
{
  swift_willThrow();
  sub_59CC4();
  swift_errorRetain();
  v2 = sub_59D04();
  v3 = sub_5A474();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Error restoring playback queue: %{public}@", v4, 0xCu);
    sub_9708(v5, &qword_7E260, &qword_5BE50);
  }

  else
  {
  }

  (*(v1[21] + 8))(v1[22], v1[20]);
  v1[26] = *(v1[19] + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_engine);
  sub_5A384();
  v1[27] = sub_5A374();
  v8 = sub_5A354();

  return _swift_task_switch(sub_3C0E8, v8, v7);
}

uint64_t sub_3C454(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7ED10, &qword_5C850);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

id sub_3C550(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s9MPCPlayerCMa();
  return objc_msgSendSuper2(&v3, "dealloc");
}

float sub_3C5F4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  [v0 floatForKey:IMAVPlayerVolumeUserDefaultKey];
  v2 = v1;

  return v2;
}

void sub_3C67C(void *a1)
{
  [*(v1 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_engine) setFallbackPlaybackIntent:a1];
}

uint64_t sub_3C6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v10 = *a4;
  swift_beginAccess();
  sub_312E8(a1, v6 + v10, a5, a6);
  return swift_endAccess();
}

uint64_t sub_3C85C(uint64_t a1, char a2)
{
  v4 = sub_59D14();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_59CD4();
    swift_errorRetain();
    v9 = sub_59D04();
    v10 = sub_5A454();
    sub_3D940(a1, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&dword_0, v9, v10, "Error updating playback position: %@", v11, 0xCu);
      sub_9708(v12, &qword_7E260, &qword_5BE50);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

id sub_3CA10(void *a1)
{
  v3 = [a1 episodeUUID];
  if (v3)
  {
    v4 = sub_5A194();
    v6 = v5;
  }

  else
  {
    result = [a1 episodeAdamID];
    if (!result)
    {
      return result;
    }

    v10 = result;
    sub_5A194();

    result = sub_59C54();
    if (v11)
    {
      return result;
    }

    v4 = result;
    v6 = 0;
  }

  if ([a1 completed])
  {
    v7 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_observer;
    swift_beginAccess();
    sub_9768(v1 + v7, v14, &unk_7E730, &unk_5D9D0);
    if (v15)
    {
      v8 = v3 != 0;
      sub_123D8(v14, v13);
      sub_9708(v14, &unk_7E730, &unk_5D9D0);
      __swift_project_boxed_opaque_existential_1(v13, v13[3]);
      sub_306C0(v4, v6, v8);
      sub_5350(v4, v6, v8);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
    }

    else
    {
      sub_5350(v4, v6, v3 != 0);
      sub_9708(v14, &unk_7E730, &unk_5D9D0);
    }
  }

  else
  {
    sub_5350(v4, v6, v3 != 0);
  }

  v12 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_observer;
  swift_beginAccess();
  sub_9768(v1 + v12, v14, &unk_7E730, &unk_5D9D0);
  return sub_9708(v14, &unk_7E730, &unk_5D9D0);
}

uint64_t sub_3CD34()
{
  sub_9708(v0 + 24, &qword_7DB40, &qword_5CE30);
  sub_9708(v0 + 64, &unk_7E730, &unk_5D9D0);

  return swift_deallocClassInstance();
}

uint64_t sub_3CDA4(uint64_t a1)
{
  swift_beginAccess();
  sub_312E8(a1, v1 + 24, &qword_7DB40, &qword_5CE30);
  return swift_endAccess();
}

uint64_t sub_3CE10(uint64_t a1)
{
  swift_beginAccess();
  sub_312E8(a1, v1 + 64, &unk_7E730, &unk_5D9D0);
  return swift_endAccess();
}

uint64_t sub_3CEA0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_5A194();

  return v6;
}

id sub_3CF04()
{
  v1 = [*v0 accountID];

  return v1;
}

void *sub_3D11C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_3D13C(uint64_t a1)
{
  v2 = sub_59D14();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_59CC4();
  swift_errorRetain();
  v6 = sub_59D04();
  v7 = sub_5A454();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = a1;
    v15 = v9;
    *v8 = 136446210;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7ED10, &qword_5C850);
    v10 = sub_5A1B4();
    v12 = sub_9430(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v6, v7, "engine:didFailToPlay: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_3D310(uint64_t a1)
{
  v1 = sub_59D14();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_59CC4();
  swift_errorRetain();
  v5 = sub_59D04();
  v6 = sub_5A454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v5, v6, "engine:didFailToPlayFirstItem: %@", v7, 0xCu);
    sub_9708(v8, &qword_7E260, &qword_5BE50);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_3D4B8(void *a1)
{
  v2 = v1;
  v4 = sub_59D14();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v40 - v9;
  v11 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_playbackPositionTracker;
  swift_beginAccess();
  sub_9768(v2 + v11, &v43, &qword_7DB40, &qword_5CE30);
  if (v44)
  {
    v40 = v5;
    v41 = v4;
    sub_12440(&v43, v46);
    v13 = v47;
    v12 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v14 = sub_3D8F4();
    v44 = v14;
    v45 = &protocol witness table for MPCPodcastPlaybackPositionEvent;
    *&v43 = a1;
    v15 = *(v12 + 8);
    v16 = a1;
    v17 = v15(&v43, v13, v12);
    __swift_destroy_boxed_opaque_existential_0Tm(&v43);
    if (v17)
    {
      v18 = v47;
      v19 = v48;
      __swift_project_boxed_opaque_existential_1(v46, v47);
      v44 = v14;
      v45 = &protocol witness table for MPCPodcastPlaybackPositionEvent;
      *&v43 = v16;
      v20 = *(v19 + 16);
      v21 = v16;
      v20(&v43, sub_3C85C, 0, v18, v19);
      __swift_destroy_boxed_opaque_existential_0Tm(&v43);
      sub_3CA10(v21);
    }

    else
    {
      sub_59CD4();
      v26 = v16;
      v27 = sub_59D04();
      v28 = sub_5A474();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v42 = v30;
        *v29 = 141558275;
        *(v29 + 4) = 1752392040;
        *(v29 + 12) = 2081;
        v31 = [v26 episodeAdamID];
        v32 = v41;
        if (v31)
        {
          v33 = v31;
          v34 = sub_5A194();
          v36 = v35;
        }

        else
        {
          v34 = 0;
          v36 = 0;
        }

        *&v43 = v34;
        *(&v43 + 1) = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D790, &unk_5D9E0);
        v37 = sub_5A1B4();
        v39 = sub_9430(v37, v38, &v42);

        *(v29 + 14) = v39;
        _os_log_impl(&dword_0, v27, v28, "Not allowing sync for episode adam id %{private,mask.hash}s", v29, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v30);

        (*(v40 + 8))(v10, v32);
      }

      else
      {

        (*(v40 + 8))(v10, v41);
      }
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v46);
  }

  else
  {
    sub_9708(&v43, &qword_7DB40, &qword_5CE30);
    sub_59CD4();
    v22 = sub_59D04();
    v23 = sub_5A454();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "No playback positon tracker setup.", v24, 2u);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

unint64_t sub_3D8F4()
{
  result = qword_7E740;
  if (!qword_7E740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_7E740);
  }

  return result;
}

uint64_t sub_3D940(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_3D94C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_3D9A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_15D44;

  return sub_3BC04(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_3DA90(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_5A7D4();

    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E8E0, &unk_5DA60);
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_56674(a1);
    if (v5)
    {
      return swift_unknownObjectRetain();
    }
  }

  return 0;
}

void sub_3DB4C(uint64_t a1, uint64_t a2)
{
  v3 = sub_59D14();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (v9 >= 2)
    {
      v10 = v5;
      v11 = *a1;
      v24 = *(a1 + 8);
      sub_3F9A8(v11, v8);
      if (sub_3DE94())
      {
        sub_59CC4();
        v12 = v9;
        v13 = sub_59D04();
        v14 = sub_5A474();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *v15 = 138412290;
          v17 = [v12 playerPath];
          *(v15 + 4) = v17;
          *v16 = v17;
          _os_log_impl(&dword_0, v13, v14, "Received timeout for player path %@", v15, 0xCu);
          sub_9708(v16, &qword_7E260, &qword_5BE50);
        }

        (*(v4 + 8))(v7, v10);
        swift_beginAccess();
        if (!swift_weakLoadStrong())
        {
          goto LABEL_9;
        }

        v18 = [v12 playerPath];
        if (v18)
        {
          v19 = v18;
          sub_3E268(v18);

LABEL_9:
          return;
        }

        __break(1u);
      }

      else
      {

        v22 = v24;
      }
    }
  }

  else if (v9)
  {
    v24 = *(a1 + 8);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v20 = [v9 playerPath];
      swift_beginAccess();
      v21 = sub_3EE40(v20);
      swift_endAccess();
      if (v21)
      {
        swift_getObjectType();
        sub_5A584();
        sub_3F9EC(v9, v24, 0);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_3F9EC(v9, v24, 0);
      }
    }
  }
}

uint64_t sub_3DE94()
{
  v1 = v0;
  v2 = [v0 domain];
  v3 = sub_5A194();
  v5 = v4;

  v6 = [v1 code];
  if (sub_5A194() == v3 && v7 == v5)
  {

    if (v6 == &dword_0 + 2)
    {
LABEL_7:
      v10 = 1;
      return v10 & 1;
    }
  }

  else
  {
    v9 = sub_5A8E4();

    if ((v9 & 1) != 0 && v6 == &dword_0 + 2)
    {
      goto LABEL_7;
    }
  }

  v35 = _swiftEmptyArrayStorage;
  v11 = [v1 userInfo];
  v12 = sub_5A104();

  v13 = sub_5A194();
  if (!*(v12 + 16))
  {

    goto LABEL_14;
  }

  v15 = sub_565FC(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  sub_9E04(*(v12 + 56) + 32 * v15, v34);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E958, &unk_5DA90);
  if (swift_dynamicCast())
  {
    sub_50F5C(v33);
  }

LABEL_15:
  v18 = [v1 userInfo];
  v19 = sub_5A104();

  v20 = sub_5A194();
  if (*(v19 + 16))
  {
    v22 = sub_565FC(v20, v21);
    v24 = v23;

    if (v24)
    {
      sub_9E04(*(v19 + 56) + 32 * v22, v34);

      sub_4FE4(0, &qword_7E950, NSError_ptr);
      if (swift_dynamicCast())
      {
        v25 = v33;
        sub_5A274();
        if (*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v35 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_5A2B4();
        }

        sub_5A304();
      }

      goto LABEL_23;
    }
  }

  else
  {
  }

LABEL_23:
  v26 = v35;
  if (v35 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)); i; i = sub_5A814())
  {
    v28 = 0;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = sub_5A724();
      }

      else
      {
        if (v28 >= *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_35;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v10 = sub_3DE94();

      if ((v10 & 1) == 0)
      {
        ++v28;
        if (v31 != i)
        {
          continue;
        }
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v10 = 0;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_3E268(void *a1)
{
  v2 = v1;
  v4 = sub_59FC4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v63 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v9 = (&v47 - v8);
  v10 = sub_5A034();
  v61 = *(v10 - 8);
  v62 = v10;
  v11 = __chkstk_darwin(v10);
  v59 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v60 = &v47 - v13;
  v14 = sub_59FE4();
  v56 = *(v14 - 8);
  v57 = v14;
  __chkstk_darwin(v14);
  v54 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_5A014();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_5A554();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v22 = *(v1 + 32);

  v58 = a1;
  v23 = sub_3DA90(a1, v22);

  if (v23)
  {
    return swift_unknownObjectRelease();
  }

  v50 = sub_4FE4(0, &qword_7E8C0, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_3F360(&qword_7E8C8, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  v52 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E8D0, &unk_5DA50);
  v51 = v4;
  sub_5108(&qword_7E8D8, &qword_7E8D0, &unk_5DA50, &protocol conformance descriptor for [A]);
  sub_5A694();
  v24 = *(v2 + 24);
  v25 = sub_5A564();

  (*(v19 + 8))(v21, v18);
  v49 = v25;
  ObjectType = swift_getObjectType();
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  v29 = v58;
  *(v28 + 16) = v27;
  *(v28 + 24) = v29;
  aBlock[4] = sub_3EE20;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_12CB4;
  aBlock[3] = &block_descriptor_6;
  v30 = _Block_copy(aBlock);

  v48 = v29;
  sub_5A004();
  v31 = v54;
  v50 = ObjectType;
  sub_3EC50();
  sub_5A574();
  _Block_release(v30);
  (*(v56 + 8))(v31, v57);
  (*(v53 + 8))(v17, v55);

  v32 = v59;
  sub_5A024();
  *v9 = *(v2 + 40);
  v33 = v52;
  v34 = *(v52 + 104);
  v35 = v51;
  v34(v9, enum case for DispatchTimeInterval.seconds(_:), v51);
  v36 = v60;
  sub_5A054();
  v37 = *(v33 + 8);
  v37(v9, v35);
  v58 = v2;
  v38 = v62;
  v61 = *(v61 + 8);
  (v61)(v32, v62);
  v34(v9, enum case for DispatchTimeInterval.never(_:), v35);
  v39 = v63;
  *v63 = 0;
  v34(v39, enum case for DispatchTimeInterval.nanoseconds(_:), v35);
  v40 = v49;
  sub_5A5E4();
  v37(v39, v35);
  v37(v9, v35);
  v41 = v58;
  (v61)(v36, v38);
  v42 = v40;
  sub_5A594();
  swift_beginAccess();
  v43 = v41[4];
  if ((v43 & 0xC000000000000001) == 0)
  {
    swift_unknownObjectRetain();
    goto LABEL_9;
  }

  if (v43 < 0)
  {
    v44 = v41[4];
  }

  else
  {
    v44 = v43 & 0xFFFFFFFFFFFFFF8;
  }

  swift_unknownObjectRetain();
  result = sub_5A7C4();
  if (!__OFADD__(result, 1))
  {
    v41[4] = sub_3EF8C(v44, result + 1);
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v41[4];
    sub_57284(v42, v48, isUniquelyReferenced_nonNull_native);
    v41[4] = v64;
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

void sub_3EA08(uint64_t a1, void *a2)
{
  v3 = sub_59D14();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    sub_3EE40(a2);
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  sub_59CC4();
  v7 = a2;
  v8 = sub_59D04();
  v9 = sub_5A474();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_0, v8, v9, "Route for player path %@ has timed out, switching to system route", v10, 0xCu);
    sub_9708(v11, &qword_7E260, &qword_5BE50);
  }

  (*(v4 + 8))(v6, v3);
  v13 = objc_opt_self();
  v14 = [v13 systemRoute];
  [v13 setActiveRoute:v14 completion:0];
}

uint64_t sub_3EC50()
{
  sub_59FE4();
  sub_3F360(&qword_7ECF0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E8F0, &unk_5DBF0);
  sub_5108(&qword_7ED00, &unk_7E8F0, &unk_5DBF0, &protocol conformance descriptor for [A]);
  return sub_5A694();
}

uint64_t sub_3ED3C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_3EDA8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3EDE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3EE40(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_56674(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_3F1D4(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_57560();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_5A7D4();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_5A7C4();
  v8 = sub_3EF8C(v4, v7);

  v9 = sub_56674(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_3F1D4(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

Swift::Int sub_3EF8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D430, &unk_5E500);
    v2 = sub_5A844();
    v19 = v2;
    sub_5A7B4();
    v3 = sub_5A7E4();
    if (v3)
    {
      v4 = v3;
      sub_4FE4(0, &unk_7ECE0, MPCPlayerPath_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E8E0, &unk_5DA60);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_569F8(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_5A614(*(v19 + 40));
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
        v5 = sub_5A7E4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

void sub_3F1D4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_5A6B4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_5A614(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_3F360(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_3F3A8(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v36 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  __chkstk_darwin(v3 - 8);
  v34 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E900, &unk_5DA70);
  v6 = *(v5 - 8);
  v39 = v5;
  v40 = v6;
  __chkstk_darwin(v5);
  v37 = &v30 - v7;
  v33 = sub_5A4F4();
  v8 = *(v33 - 8);
  __chkstk_darwin(v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5A494();
  __chkstk_darwin(v11);
  v12 = sub_5A014();
  __chkstk_darwin(v12 - 8);
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v38 = v2 + 16;
  v13 = sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v30 = "e";
  v31 = v13;
  sub_59FF4();
  v41 = _swiftEmptyArrayStorage;
  sub_3F360(&qword_7E910, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7CFF0, &qword_5BCA0);
  sub_5108(&qword_7E920, &qword_7CFF0, &qword_5BCA0, &protocol conformance descriptor for [A]);
  sub_5A694();
  (*(v8 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v33);
  v14 = v31;
  v15 = sub_5A544();
  v16 = v32;
  v32[3] = v15;
  v17 = sub_11830(_swiftEmptyArrayStorage);
  v19 = v35;
  v18 = v36;
  v16[4] = v17;
  v16[5] = v19;
  v41 = v18;
  v45 = v16[3];
  v20 = v45;
  v21 = sub_5A4A4();
  v22 = v34;
  (*(*(v21 - 8) + 56))(v34, 1, 1, v21);
  v23 = v20;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E928, &unk_5DA80);
  v25 = sub_5108(&unk_7E930, &qword_7E928, &unk_5DA80, &protocol conformance descriptor for AnyPublisher<A, B>);
  v26 = sub_3F938();
  v27 = v37;
  sub_59E64();
  sub_9708(v22, &unk_7D9C0, &unk_5C810);

  swift_allocObject();
  swift_weakInit();
  v41 = v24;
  v42 = v14;
  v43 = v25;
  v44 = v26;
  swift_getOpaqueTypeConformance2();
  v28 = v39;
  sub_59F84();

  (*(v40 + 8))(v27, v28);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E940, &qword_5DBD0);
  sub_5108(&unk_7ED80, &unk_7E940, &qword_5DBD0, &protocol conformance descriptor for [A]);
  sub_59D54();
  swift_endAccess();

  return v16;
}

unint64_t sub_3F938()
{
  result = qword_7DA50;
  if (!qword_7DA50)
  {
    sub_4FE4(255, &qword_7DA40, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7DA50);
  }

  return result;
}

id sub_3F9A8(id result, void *a2)
{
  if (result >= 2)
  {
    v3 = result;

    return a2;
  }

  return result;
}

void sub_3F9EC(void *a1, void *a2, char a3)
{
  if (a3)
  {
    sub_3F9F8(a1, a2);
  }

  else
  {
  }
}

void sub_3F9F8(void *a1, void *a2)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_3FA3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  return v1;
}

uint64_t sub_3FAB0(uint64_t *a1, uint64_t *a2)
{
  sub_4FE4(0, &qword_7E540, NSObject_ptr);
  if (sub_5A624())
  {
    return sub_5A624() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3FB28()
{
  v7 = sub_5A4F4();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_5A494();
  __chkstk_darwin(v3);
  v4 = sub_5A014();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  sub_5A004();
  v8 = _swiftEmptyArrayStorage;
  sub_42328(&qword_7E910, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7CFF0, &qword_5BCA0);
  sub_5108(&qword_7E920, &qword_7CFF0, &qword_5BCA0, &protocol conformance descriptor for [A]);
  sub_5A694();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = sub_5A544();
  qword_7E960 = result;
  return result;
}

uint64_t sub_3FD9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_59FE4();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_5A014();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = qword_7CC80;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = sub_42454;
  *(v12 + 24) = v10;
  aBlock[4] = sub_42494;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_12CB4;
  aBlock[3] = &block_descriptor_38;
  v13 = _Block_copy(aBlock);
  sub_5A004();
  v18 = _swiftEmptyArrayStorage;
  sub_42328(&qword_7ECF0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E8F0, &unk_5DBF0);
  sub_5108(&qword_7ED00, &unk_7E8F0, &unk_5DBF0, &protocol conformance descriptor for [A]);
  sub_5A694();
  sub_5A534();
  _Block_release(v13);
  (*(v17 + 8))(v6, v4);
  (*(v7 + 8))(v9, v16);
}

void sub_400D0(void (*a1)(id, void))
{
  v2 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
  v3 = objc_allocWithZone(MPAVRoutingController);
  v4 = sub_5A174();
  v5 = [v3 initWithDataSource:v2 name:v4];

  a1(v5, 0);
}

char *sub_401A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v129 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  __chkstk_darwin(v9 - 8);
  v125 = &v84 - v10;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB80, &qword_5CE58);
  v110 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v84 - v11;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E9D0, &qword_5DB80);
  v109 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v84 - v12;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E9D8, &qword_5DB88);
  v117 = *(v115 - 8);
  __chkstk_darwin(v115);
  v111 = &v84 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E9E0, &qword_5DB90);
  v116 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = &v84 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E9E8, &qword_5DB98);
  v16 = *(v15 - 8);
  v118 = v15;
  v119 = v16;
  __chkstk_darwin(v15);
  v113 = &v84 - v17;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E9F0, &qword_5DBA0);
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v104 = &v84 - v18;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E9F8, &qword_5DBA8);
  v122 = *(v124 - 8);
  __chkstk_darwin(v124);
  v120 = &v84 - v19;
  v103 = sub_5A4E4();
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v95 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_5A5C4();
  v130 = *(v87 - 8);
  __chkstk_darwin(v87);
  v126 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7EA00, &qword_5DBB0);
  v92 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = &v84 - v22;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7EA08, &qword_5DBB8);
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v89 = &v84 - v23;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7EA10, &qword_5DBC0);
  v97 = *(v96 - 8);
  __chkstk_darwin(v96);
  v90 = &v84 - v24;
  v25 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController21PlayerPathCoordinator_routingController;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7EA18, &qword_5DBC8);
  swift_allocObject();
  *&v4[v25] = sub_59DE4();
  *&v4[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController21PlayerPathCoordinator_subscriptions] = _swiftEmptyArrayStorage;
  v26 = &v4[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController21PlayerPathCoordinator_playerID];
  *v26 = a1;
  *(v26 + 1) = a2;
  v27 = &v4[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController21PlayerPathCoordinator_bundleID];
  *v27 = v129;
  v27[1] = a4;

  v28 = sub_5A174();
  v29 = sub_5A174();
  v30 = [objc_opt_self() pathWithRoute:0 bundleID:v28 playerID:v29];

  v31 = v30;

  swift_beginAccess();
  v136 = v31;
  v137 = v31;
  sub_59DF4();
  swift_endAccess();
  v32 = _s21PlayerPathCoordinatorCMa(0);
  v135.receiver = v5;
  v135.super_class = v32;
  v33 = objc_msgSendSuper2(&v135, "init");
  v102 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController21PlayerPathCoordinator_routingController;
  v34 = *&v33[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController21PlayerPathCoordinator_routingController];
  v35 = v33;
  v100 = v33;
  v131 = v34;
  v99 = sub_5108(&qword_7EA20, &qword_7EA18, &qword_5DBC8, &protocol conformance descriptor for Future<A, B>);
  v36 = v35;

  sub_59F84();

  v85 = v36;
  v129 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController21PlayerPathCoordinator_subscriptions;
  swift_beginAccess();
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E940, &qword_5DBD0);
  v127 = sub_5108(&unk_7ED80, &unk_7E940, &qword_5DBD0, &protocol conformance descriptor for [A]);
  sub_59D54();
  swift_endAccess();

  v37 = objc_opt_self();
  v38 = [v37 defaultCenter];
  v39 = v126;
  sub_5A5D4();

  sub_42328(&qword_7E370, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  v40 = v87;
  v41 = sub_59E54();
  v42 = *(v130 + 8);
  v130 += 8;
  v42(v39, v40);
  v131 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7EA28, &qword_5DBD8);
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_7EA30, &qword_5DBE0) - 8);
  v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_5BC80;
  v46 = sub_59474();
  (*(*(v46 - 8) + 56))(v45 + v44, 1, 1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7EA38, &qword_5DBE8);
  v86 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_5108(&qword_7EA40, &qword_7EA38, &qword_5DBE8, &protocol conformance descriptor for AnyPublisher<A, B>);
  v47 = v88;
  sub_59F24();

  v48 = [v37 defaultCenter];
  v49 = v126;
  sub_5A5D4();

  v50 = v49;
  v51 = sub_59E54();
  v52 = v40;
  v53 = v85;
  v42(v50, v52);
  v131 = v51;
  sub_5108(&qword_7EA48, &qword_7EA00, &qword_5DBB0, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
  v54 = v89;
  v55 = v91;
  sub_59EF4();

  (*(v92 + 8))(v47, v55);
  v56 = v95;
  sub_5A4B4();
  v57 = sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v58 = sub_5A504();
  v131 = v58;
  sub_5108(&qword_7EA50, &qword_7EA08, &qword_5DBB8, &protocol conformance descriptor for Publishers.Merge<A, B>);
  v59 = sub_3F938();
  v60 = v90;
  v61 = v93;
  sub_59F54();

  (*(v101 + 8))(v56, v103);
  (*(v94 + 8))(v54, v61);
  *(swift_allocObject() + 16) = v53;
  sub_5108(&qword_7EA58, &qword_7EA10, &qword_5DBC0, &protocol conformance descriptor for Publishers.Throttle<A, B>);
  v62 = v96;
  sub_59F84();

  (*(v97 + 8))(v60, v62);
  swift_beginAccess();
  sub_59D54();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DC88, &qword_5CF18);
  v63 = v106;
  sub_59E04();
  swift_endAccess();
  sub_5108(&qword_7DC90, &qword_7DB80, &qword_5CE58, &protocol conformance descriptor for Published<A>.Publisher);
  v64 = v105;
  v65 = v108;
  sub_59EC4();
  (*(v110 + 8))(v63, v65);
  sub_5108(&qword_7EA60, &qword_7E9D0, &qword_5DB80, &protocol conformance descriptor for Publishers.Map<A, B>);
  v66 = v107;
  v67 = sub_59E74();
  (*(v109 + 8))(v64, v66);
  v131 = v67;
  v136 = sub_30F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DC20, &qword_5CED0);
  sub_5108(&qword_7ED90, &unk_7DC20, &qword_5CED0, v86);
  v68 = v111;
  v69 = v104;
  sub_59EB4();

  sub_5108(&qword_7EA68, &qword_7E9D8, &qword_5DB88, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v70 = v112;
  v71 = v115;
  sub_59EC4();
  (*(v117 + 8))(v68, v71);
  sub_5108(&qword_7EA70, &qword_7E9E0, &qword_5DB90, &protocol conformance descriptor for Publishers.Map<A, B>);
  v72 = v113;
  v73 = v114;
  sub_59F64();
  (*(v116 + 8))(v70, v73);
  v131 = *&v100[v102];
  sub_5108(&qword_7EA78, &qword_7E9E8, &qword_5DB98, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v74 = v118;
  sub_59EB4();
  (*(v119 + 8))(v72, v74);
  if (qword_7CC80 != -1)
  {
    swift_once();
  }

  v75 = qword_7E960;
  v131 = qword_7E960;
  v76 = sub_5A4A4();
  v77 = v125;
  (*(*(v76 - 8) + 56))(v125, 1, 1, v76);
  v78 = sub_5108(&qword_7EA80, &qword_7E9F0, &qword_5DBA0, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v79 = v75;
  v80 = v120;
  v81 = v123;
  sub_59E64();
  sub_422C0(v77);

  (*(v121 + 8))(v69, v81);
  v131 = v81;
  v132 = v57;
  v133 = v78;
  v134 = v59;
  swift_getOpaqueTypeConformance2();
  v82 = v124;
  sub_59F84();
  (*(v122 + 8))(v80, v82);
  swift_beginAccess();
  sub_59D54();
  swift_endAccess();

  return v53;
}

uint64_t sub_415B0(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = ObjectType;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_423A8;
  *(v6 + 24) = v4;
  v10[4] = sub_423E8;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_41DF0;
  v10[3] = &block_descriptor_7;
  v7 = _Block_copy(v10);
  v8 = a2;

  [v5 getActiveRouteWithTimeout:v7 completion:1.0];
  _Block_release(v7);
}

id sub_41704(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  return [v2 setDiscoveryMode:v3];
}

void sub_41724(uint64_t a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = [*(a1 + 8) route];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isDeviceRoute];
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
}

uint64_t sub_4178C(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_59FE4();
  v19 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_5A014();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v12 = sub_5A504();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_42448;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_12CB4;
  aBlock[3] = &block_descriptor_29;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  v16 = a1;

  sub_5A004();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_42328(&qword_7ECF0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E8F0, &unk_5DBF0);
  sub_5108(&qword_7ED00, &unk_7E8F0, &unk_5DBF0, &protocol conformance descriptor for [A]);
  sub_5A694();
  sub_5A534();
  _Block_release(v14);

  (*(v19 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v18);
}

void sub_41A90(char *a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  v4 = [v21 route];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  v5 = [v21 route];
  if (v5 && (v6 = [v5 connection], v5, v6))
  {
    v7 = [v6 isInvalidated];

    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  sub_4FE4(0, &qword_7E450, MPAVRoute_ptr);
  v8 = v4;
  v9 = a2;
  v10 = sub_5A624();

  if (!(v7 & 1 | ((v10 & 1) == 0)))
  {

    return;
  }

LABEL_7:
  v11 = sub_5A174();
  v12 = sub_5A174();
  v13 = objc_opt_self();
  v14 = [v13 pathWithRoute:a2 bundleID:v11 playerID:v12];

  if ([a2 isDeviceRoute])
  {
    v15 = v14;
  }

  else
  {
    v15 = [v13 pathWithRoute:a2 bundleID:0 playerID:0];
  }

  v16 = v15;
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v14;
  v18 = a1;
  v19 = v16;
  sub_59E34();
}

void sub_41D64(void *a1, void (*a2)(id))
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = [objc_opt_self() systemRoute];
  }

  v4 = a1;
  a2(v5);
}

void sub_41DF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_41E8C()
{
  v2.receiver = v0;
  v2.super_class = _s21PlayerPathCoordinatorCMa(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s21PlayerPathCoordinatorCMa(uint64_t a1)
{
  result = qword_7E9B8;
  if (!qword_7E9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_41FD8(uint64_t a1)
{
  sub_42090();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_42090()
{
  if (!qword_7E9C8)
  {
    v0 = sub_59E44();
    if (!v1)
    {
      atomic_store(v0, &qword_7E9C8);
    }
  }
}

uint64_t sub_420E0(uint64_t *a1, int a2)
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

uint64_t sub_42128(uint64_t result, int a2, int a3)
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

double sub_42174@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_421F8(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  v6 = v2;
  v7 = v3;
  return sub_59E34();
}

uint64_t sub_42280()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_422C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_42328(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_42370()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_423B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_42408()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_42454(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_424B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_199B4(a3, v22 - v9);
  v11 = sub_5A3B4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_9708(v10, &qword_7DB70, &qword_5C740);
  }

  else
  {
    sub_5A3A4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_5A354();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_5A1C4() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7EBC0, &unk_5DDD0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_9708(a3, &qword_7DB70, &qword_5C740);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_9708(a3, &qword_7DB70, &qword_5C740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7EBC0, &unk_5DDD0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_42760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_199B4(a3, v22 - v9);
  v11 = sub_5A3B4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_9708(v10, &qword_7DB70, &qword_5C740);
  }

  else
  {
    sub_5A3A4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_5A354();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_5A1C4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_9708(a3, &qword_7DB70, &qword_5C740);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_9708(a3, &qword_7DB70, &qword_5C740);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_429FC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_42AEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_59944();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = (&v21 - v12);
  v21 = *a2;
  LOBYTE(a2) = *(a2 + 8);
  sub_4411C(a1, &off_71F40);
  *v13 = a1;
  (*(v8 + 104))(v13, enum case for MediaIdentifier.localEpisodes(_:), v7);

  sub_5A394();
  v14 = sub_5A3B4();
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  (*(v8 + 16))(v11, v13, v7);
  v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = Strong;
  (*(v8 + 32))(&v17[v16], v11, v7);
  v18 = &v17[(v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  v19 = v21;
  *v18 = v21;
  v18[8] = a2;
  sub_3B8F0(v19, a2);
  sub_43418(0, 0, v6, &unk_5DC28, v17);

  sub_9708(v6, &qword_7DB70, &qword_5C740);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_42DC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_59944();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = (&v21 - v12);
  v21 = *a2;
  LOBYTE(a2) = *(a2 + 8);
  sub_43BC4(a1, &off_71F68);
  *v13 = a1;
  (*(v8 + 104))(v13, enum case for MediaIdentifier.episodes(_:), v7);

  sub_5A394();
  v14 = sub_5A3B4();
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  (*(v8 + 16))(v11, v13, v7);
  v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = Strong;
  (*(v8 + 32))(&v17[v16], v11, v7);
  v18 = &v17[(v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  v19 = v21;
  *v18 = v21;
  v18[8] = a2;
  sub_3B8F0(v19, a2);
  sub_43418(0, 0, v6, &unk_5DC30, v17);

  sub_9708(v6, &qword_7DB70, &qword_5C740);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_43094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 112) = a7;
  *(v7 + 72) = a5;
  *(v7 + 80) = a6;
  *(v7 + 56) = a1;
  *(v7 + 64) = a4;
  return _swift_task_switch(sub_430BC, 0, 0);
}

uint64_t sub_430BC()
{
  if (*(v0 + 64))
  {
    v2 = *(v0 + 72);
    v1 = *(v0 + 80);
    v3 = *(v0 + 112);
    *(v0 + 40) = type metadata accessor for PlaybackController.QueueCommand(0);
    *(v0 + 48) = &protocol witness table for PlaybackController.QueueCommand;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    v5 = boxed_opaque_existential_1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E460, &qword_5D580) + 48);
    v6 = sub_59944();
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v2, v6);
    *v5 = v1;
    v5[8] = v3;
    swift_storeEnumTagMultiPayload();
    sub_3B8F0(v1, v3);
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *v7 = v0;
    v7[1] = sub_43260;

    return sub_2A8B0(v0 + 16, 0);
  }

  else
  {
    **(v0 + 56) = 0;
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_43260(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_433B4;
  }

  else
  {
    *(v4 + 104) = a1;
    __swift_destroy_boxed_opaque_existential_0Tm((v4 + 16));
    v5 = sub_43390;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_433B4()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_43418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_199B4(a3, v22 - v9);
  v11 = sub_5A3B4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_9708(v10, &qword_7DB70, &qword_5C740);
  }

  else
  {
    sub_5A3A4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_5A354();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_5A1C4() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7EBC0, &unk_5DDD0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7EBC0, &unk_5DDD0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_43684(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for PlaybackController.QueueCommand(0);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_43718, 0, 0);
}

uint64_t sub_43718()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 40);
    **(v0 + 64) = v2;
    swift_storeEnumTagMultiPayload();
    v3 = v2;
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = sub_43834;

    return sub_2E290();
  }

  else
  {

    v6 = *(v0 + 8);

    return v6(0);
  }
}

uint64_t sub_43834(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_43B4C, 0, 0);
  }

  else
  {
    *(v4 + 96) = a1;
    v6 = swift_task_alloc();
    *(v4 + 104) = v6;
    *v6 = v5;
    v6[1] = sub_439C8;

    return PlaybackController.QueueCommand.canPerform(for:)(a1);
  }
}

uint64_t sub_439C8(char a1)
{
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_43AC8, 0, 0);
}

uint64_t sub_43AC8()
{
  v1 = *(v0 + 64);

  sub_1B1CC(v1);
  v2 = *(v0 + 112);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_43B4C()
{
  sub_1B1CC(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_43BC4(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  __chkstk_darwin(v4 - 8);
  v28 = &v28 - v5;
  swift_beginAccess();
  v29 = v2;
  if (!swift_weakLoadStrong())
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  v32 = v36;
  if (!v36)
  {
    return;
  }

  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_28:

    return;
  }

  v6 = 0;
  v30 = a1 + 32;
  v7 = &off_7B000;
  while (1)
  {
    v8 = *(v30 + 8 * v6);
    v34 = v6;
    v35 = v8;
    v9 = MPCPlayerResponseTracklist.itemsInSections(sections:)(v33);
    v10 = v9;
    if (!(v9 >> 62))
    {
      v11 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
      if (v11)
      {
        break;
      }

      goto LABEL_26;
    }

    v11 = sub_5A814();
    if (v11)
    {
      break;
    }

LABEL_26:

LABEL_27:
    v6 = v34 + 1;
    if (v34 + 1 == v31)
    {
      goto LABEL_28;
    }
  }

  v12 = 0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v15 = sub_5A724();
    }

    else
    {
      if (v12 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_31;
      }

      v15 = *(v10 + 8 * v12 + 32);
    }

    v14 = v15;
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    v17 = [v15 v7[361]];
    if (!v17)
    {
      goto LABEL_10;
    }

    v18 = v17;
    v19 = [v17 flattenedGenericObject];

    if (!v19)
    {
      goto LABEL_10;
    }

    v20 = [v19 anyObject];

    if (!v20)
    {
      goto LABEL_10;
    }

    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (!v21)
    {
      v13 = v14;
      v14 = v20;
LABEL_9:

      goto LABEL_10;
    }

    v22 = [v21 identifiers];
    v23 = [v22 universalStore];

    if (!v23)
    {
      v13 = v20;
      v7 = &off_7B000;
      goto LABEL_9;
    }

    [v23 adamID];
    swift_unknownObjectRelease();
    v24 = sub_59C44();

    if (v24 == v35)
    {

      v25 = sub_5A3B4();
      v26 = v28;
      (*(*(v25 - 8) + 56))(v28, 1, 1, v25);
      v27 = swift_allocObject();
      v27[2] = 0;
      v27[3] = 0;
      v27[4] = v29;
      v27[5] = v14;

      sub_17A48(0, 0, v26, &unk_5DC90, v27);

      v7 = &off_7B000;
      goto LABEL_27;
    }

    v7 = &off_7B000;
LABEL_10:

    ++v12;
    if (v16 == v11)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void *MPCPlayerResponseTracklist.itemsInSections(sections:)(uint64_t a1)
{
  v2 = v1;
  v12 = _swiftEmptyArrayStorage;
  v4 = [v1 displayItems];
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = &v12;
  v5[4] = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_4875C;
  *(v6 + 24) = v5;
  aBlock[4] = sub_48778;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_466E0;
  aBlock[3] = &block_descriptor_8;
  v7 = _Block_copy(aBlock);

  v8 = v2;

  [v4 enumerateSectionsUsingBlock:v7];

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

void sub_4411C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  __chkstk_darwin(v5 - 8);
  v41 = &v40 - v6;
  swift_beginAccess();
  v46 = v2;
  if (!swift_weakLoadStrong())
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  v7 = v52;
  if (!v52)
  {
    return;
  }

  v45 = *(a1 + 16);
  if (!v45)
  {
LABEL_32:

    return;
  }

  v8 = 0;
  v43 = a2;
  v44 = a1 + 32;
  v9 = &off_7B000;
  v42 = v52;
  while (1)
  {
    v10 = (v44 + 16 * v8);
    v11 = v10[1];
    v48 = *v10;
    v49 = v11;

    v12 = MPCPlayerResponseTracklist.itemsInSections(sections:)(a2);
    v13 = v12;
    v47 = v8;
    if (v12 >> 62)
    {
      break;
    }

    v14 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
    v15 = &off_7B000;
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_30:

    sub_59924();
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    v7 = v42;
    a2 = v43;
    v38[2] = v42;
    v38[3] = a2;
    v38[4] = v37;
    v39 = v7;

    sub_59914();

LABEL_31:
    v8 = v47 + 1;
    if (v47 + 1 == v45)
    {
      goto LABEL_32;
    }
  }

  v14 = sub_5A814();
  v15 = &off_7B000;
  if (!v14)
  {
    goto LABEL_30;
  }

LABEL_7:
  v16 = 0;
  v50 = v13 & 0xFFFFFFFFFFFFFF8;
  v51 = v13 & 0xC000000000000001;
  while (1)
  {
    if (v51)
    {
      v18 = sub_5A724();
    }

    else
    {
      if (v16 >= *(v50 + 16))
      {
        goto LABEL_35;
      }

      v18 = *(v13 + 8 * v16 + 32);
    }

    v19 = v18;
    v20 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    v21 = [v18 v9[361]];
    if (v21 && (v22 = v21, v23 = [v21 v15[362]], v22, v23) && (v17 = objc_msgSend(v23, "anyObject"), v23, v17))
    {
      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (v24 && (v25 = [v24 identifiers], v26 = objc_msgSend(v25, "library"), v25, v26))
      {
        v27 = v9;
        v28 = [v26 databaseID];
        swift_unknownObjectRelease();
        v29 = sub_5A194();
        v31 = v30;

        if (v29 == v48 && v31 == v49)
        {

          v9 = v27;
LABEL_28:

          v34 = sub_5A3B4();
          v35 = v41;
          (*(*(v34 - 8) + 56))(v41, 1, 1, v34);
          v36 = swift_allocObject();
          v36[2] = 0;
          v36[3] = 0;
          v36[4] = v46;
          v36[5] = v19;

          sub_17A48(0, 0, v35, &unk_5DC98, v36);

          v7 = v42;
          a2 = v43;
          goto LABEL_31;
        }

        v33 = sub_5A8E4();

        v9 = v27;
        if (v33)
        {
          goto LABEL_28;
        }

        v17 = v19;
        v15 = &off_7B000;
      }

      else
      {
      }
    }

    else
    {
      v17 = v19;
    }

    ++v16;
    if (v20 == v14)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_445E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  __chkstk_darwin(v7);
  v9 = v32 - v8;
  if (a1)
  {
    v32[0] = v9;
    v33 = [a1 storeTrackId];
    v10 = MPCPlayerResponseTracklist.itemsInSections(sections:)(a3);
    v11 = v10;
    v32[1] = a4;
    if (v10 >> 62)
    {
LABEL_29:
      v12 = sub_5A814();
      if (v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v12 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
      if (v12)
      {
LABEL_4:
        v13 = 0;
        v14 = &off_7B000;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v17 = sub_5A724();
          }

          else
          {
            if (v13 >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_27;
            }

            v17 = *(v11 + 8 * v13 + 32);
          }

          v16 = v17;
          v18 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v19 = [v17 v14[361]];
          if (v19)
          {
            v20 = v19;
            v21 = [v19 flattenedGenericObject];

            if (v21)
            {
              v22 = [v21 anyObject];

              if (v22)
              {
                objc_opt_self();
                v23 = swift_dynamicCastObjCClass();
                if (!v23)
                {
                  v15 = v16;
                  v16 = v22;
LABEL_6:

                  goto LABEL_7;
                }

                v24 = [v23 identifiers];
                v25 = [v24 universalStore];

                if (!v25)
                {
                  v15 = v22;
                  v14 = &off_7B000;
                  goto LABEL_6;
                }

                [v25 adamID];
                swift_unknownObjectRelease();
                v26 = sub_59C44();

                if (v26 < 0)
                {
                  goto LABEL_28;
                }

                if (v26 == v33)
                {

                  swift_beginAccess();
                  Strong = swift_weakLoadStrong();
                  if (Strong)
                  {
                    v28 = Strong;
                    v29 = sub_5A3B4();
                    v30 = v32[0];
                    (*(*(v29 - 8) + 56))(v32[0], 1, 1, v29);
                    v31 = swift_allocObject();
                    v31[2] = 0;
                    v31[3] = 0;
                    v31[4] = v28;
                    v31[5] = v16;
                    sub_17A48(0, 0, v30, &unk_5DDC8, v31);
                  }

                  else
                  {
                  }

                  return;
                }

                v14 = &off_7B000;
              }
            }
          }

LABEL_7:

          ++v13;
        }

        while (v18 != v12);
      }
    }
  }
}

void sub_44954(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_59E24();

    v6 = v31;
    if (v31)
    {
      v7 = [v31 items];
      v8 = [v7 allItems];

      sub_48844();
      v9 = sub_5A294();

      v26 = v5;
      v27 = v2;
      v28 = v6;
      if (v9 >> 62)
      {
        goto LABEL_22;
      }

      for (i = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)); i; i = sub_5A814())
      {
        v11 = 0;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = sub_5A724();
          }

          else
          {
            if (v11 >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_21;
            }

            v12 = *(v9 + 8 * v11 + 32);
          }

          v13 = v12;
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          v15 = [v12 contentItemIdentifier];
          v16 = sub_5A194();
          v18 = v17;

          if (v16 == v29 && v18 == v30)
          {

LABEL_19:

            v21 = sub_5A3B4();
            v22 = v26;
            (*(*(v21 - 8) + 56))(v26, 1, 1, v21);
            v23 = swift_allocObject();
            v23[2] = 0;
            v23[3] = 0;
            v23[4] = v27;
            v23[5] = v13;

            v24 = v13;
            sub_17A48(0, 0, v22, &unk_5DCA0, v23);

            return;
          }

          v20 = sub_5A8E4();

          if (v20)
          {
            goto LABEL_19;
          }

          ++v11;
          if (v14 == i)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        ;
      }

LABEL_23:
    }
  }
}

uint64_t sub_44C7C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_5A3B4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = a1;

  v8 = a1;
  sub_17A48(0, 0, v5, &unk_5DCA8, v7);
}

uint64_t sub_44D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = sub_59D14();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = type metadata accessor for PlaybackController.QueueCommand(0);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_44E7C, 0, 0);
}

uint64_t sub_44E7C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 88);
    **(v0 + 128) = v2;
    swift_storeEnumTagMultiPayload();
    v3 = v2;
    v4 = swift_task_alloc();
    *(v0 + 144) = v4;
    *v4 = v0;
    v4[1] = sub_44FA0;

    return sub_2E290();
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_44FA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_45390, 0, 0);
  }

  else
  {
    *(v4 + 160) = a1;
    v6 = swift_task_alloc();
    *(v4 + 168) = v6;
    *v6 = v5;
    v6[1] = sub_45134;

    return PlaybackController.QueueCommand.canPerform(for:)(a1);
  }
}

uint64_t sub_45134(char a1)
{
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_45234, 0, 0);
}

uint64_t sub_45234()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 128);

  sub_1B1CC(v2);
  if (v1 == 1 && (Strong = swift_weakLoadStrong(), (*(v0 + 176) = Strong) != 0))
  {
    v4 = *(v0 + 88);
    *(v0 + 40) = *(v0 + 120);
    *(v0 + 48) = &protocol witness table for PlaybackController.QueueCommand;
    *__swift_allocate_boxed_opaque_existential_1((v0 + 16)) = v4;
    swift_storeEnumTagMultiPayload();
    v5 = v4;
    v6 = swift_task_alloc();
    *(v0 + 184) = v6;
    *v6 = v0;
    v6[1] = sub_45410;

    return sub_2A8B0(v0 + 16, 0);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_45390()
{
  sub_1B1CC(*(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_45410(void *a1)
{
  v4 = *v2;
  v4[24] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_45590, 0, 0);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v4 + 2);

    v5 = v4[1];

    return v5();
  }
}

uint64_t sub_45590()
{
  v24 = v0;
  v1 = v0[11];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_59CA4();
  v2 = v1;
  swift_errorRetain();
  v3 = sub_59D04();
  v4 = sub_5A454();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
  if (v5)
  {
    v9 = v0[11];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23 = v20;
    *v10 = 136446466;
    v12 = [v9 contentItemIdentifier];
    v21 = v8;
    v22 = v6;
    v13 = sub_5A194();
    v15 = v14;

    v16 = sub_9430(v13, v15, &v23);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_0, v3, v4, "Failed to remove item %{public}s from queue with error %@", v10, 0x16u);
    sub_9708(v11, &qword_7E260, &qword_5BE50);

    __swift_destroy_boxed_opaque_existential_0Tm(v20);

    (*(v7 + 8))(v22, v21);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_457E8(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_45808, 0, 0);
}

uint64_t sub_45808()
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (swift_getKeyPath(), swift_getKeyPath(), sub_59E24(), , , , *(v0 + 88) == 1))
  {
    v1 = *(v0 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DCE0, &qword_5CF60);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_5BC80;
    *(v2 + 56) = type metadata accessor for PlaybackController.QueueCommand(0);
    *(v2 + 64) = &protocol witness table for PlaybackController.QueueCommand;
    *__swift_allocate_boxed_opaque_existential_1((v2 + 32)) = v1;
    swift_storeEnumTagMultiPayload();
    v3 = 0;
  }

  else
  {
    v4 = *(v0 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DCE0, &qword_5CF60);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_5DC00;
    *(v2 + 56) = type metadata accessor for PlaybackController.QueueCommand(0);
    *(v2 + 64) = &protocol witness table for PlaybackController.QueueCommand;
    *__swift_allocate_boxed_opaque_existential_1((v2 + 32)) = v4;
    swift_storeEnumTagMultiPayload();
    *(v2 + 96) = &type metadata for PlaybackController.TransportCommand;
    *(v2 + 104) = &protocol witness table for PlaybackController.TransportCommand;
    *(v2 + 72) = xmmword_5CAB0;
    *(v2 + 88) = 0;
    v3 = 257;
  }

  *(v0 + 56) = v2;
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  v6 = *(v0 + 40);
  if (Strong)
  {
    v7 = v6;
    v8 = swift_task_alloc();
    *(v0 + 72) = v8;
    *v8 = v0;
    v8[1] = sub_45A88;

    return sub_2AC24(v2, v3);
  }

  else
  {
    v10 = v6;

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_45A88(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_45BEC, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_45BEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_45C70(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (swift_getKeyPath(), swift_getKeyPath(), sub_59E24(), , , , v4))
  {
    MPCPlayerResponseTracklist.itemsInSections(sections:)(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F5A0, &qword_5D8F0);
    sub_47E34();
    v2 = sub_5A414();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_45D80(uint64_t a1)
{
  MPCPlayerResponseTracklist.itemsInSections(sections:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F5A0, &qword_5D8F0);
  sub_47E34();
  v1 = sub_5A414();

  return v1 & 1;
}

uint64_t sub_45DF4()
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (swift_getKeyPath(), swift_getKeyPath(), sub_59E24(), , , , (v0 = v4) != 0) && (v4 = MPCPlayerResponseTracklist.itemsInSections(sections:)(&off_72008), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F5A0, &qword_5D8F0), sub_47E34(), v1 = sub_5A414(), , v0, (v1 & 1) != 0))
  {
    v2 = 1;
  }

  else if (swift_weakLoadStrong() && (swift_getKeyPath(), swift_getKeyPath(), sub_59E24(), , , , v4))
  {
    MPCPlayerResponseTracklist.itemsInSections(sections:)(&off_72030);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F5A0, &qword_5D8F0);
    sub_47E34();
    v2 = sub_5A414();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_45FC8(char *a1, void *a2)
{
  v3 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong() && (swift_getKeyPath(), swift_getKeyPath(), sub_59E24(), , , , (v4 = v7) != 0))
  {
    LOBYTE(v7) = v3;
    v5 = MPCPlayerResponseTracklist.queueSectionContainsItem(queueSection:item:)(&v7, a2);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t MPCPlayerResponseTracklist.queueSectionContainsItem(queueSection:item:)(char *a1, void *a2)
{
  v3 = v2;
  v5 = *a1;
  v15 = 0;
  v6 = [v2 displayItems];
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;
  *(v7 + 32) = &v15;
  *(v7 + 40) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_488D8;
  *(v8 + 24) = v7;
  aBlock[4] = sub_4941C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_466E0;
  aBlock[3] = &block_descriptor_66;
  v9 = _Block_copy(aBlock);
  v10 = v3;
  v11 = a2;

  [v6 enumerateSectionsUsingBlock:v9];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v13 = v15;

    return v13;
  }

  return result;
}

uint64_t sub_46240()
{
  v10[0] = 0;
  v10[1] = 0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v2 = Strong;
  if (!Strong)
  {
    v8 = 0;
    goto LABEL_7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  v2 = aBlock[0];
  if (!aBlock[0])
  {
    v8 = 0;
    Strong = 0;
    goto LABEL_7;
  }

  v3 = [aBlock[0] displayItems];

  v2 = swift_allocObject();
  v2[2] = v0;
  v2[3] = v10;
  v4 = swift_allocObject();
  v4[2] = sub_48920;
  v4[3] = v2;
  aBlock[4] = sub_4941C;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_466E0;
  aBlock[3] = &block_descriptor_76;
  v5 = _Block_copy(aBlock);

  [v3 enumerateSectionsUsingBlock:v5];

  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v8 = v10[0];
    Strong = sub_48920;
LABEL_7:
    sub_227C(Strong, v2);
    return v8;
  }

  __break(1u);
  return result;
}

void sub_46474(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t *a5)
{
  sub_5A194();
  v8 = sub_5A174();

  QueueModelSection.init(tracklistSection:)(v8, v20);
  if (v20[0] != 2)
  {
    if (v20[0])
    {
      v9 = sub_5A8E4();

      if ((v9 & 1) == 0)
      {
        return;
      }
    }

    else
    {
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_59E24();

      if (v19)
      {
        v10 = [v19 displayItems];

        v11 = [v10 itemsInSectionAtIndex:a2];
        sub_48844();
        v12 = sub_5A294();

        if (v12 >> 62)
        {
          if (sub_5A814())
          {
            goto LABEL_10;
          }
        }

        else if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
        {
LABEL_10:
          if ((v12 & 0xC000000000000001) != 0)
          {
            v13 = sub_5A724();
          }

          else
          {
            if (!*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
              return;
            }

            v13 = *(v12 + 32);
          }

          v14 = v13;

          v15 = [v14 contentItemIdentifier];

          v16 = sub_5A194();
          v18 = v17;

          *a5 = v16;
          a5[1] = v18;
          goto LABEL_17;
        }
      }
    }

    *a5 = 0;
    a5[1] = 0;
LABEL_17:

    *a3 = 1;
  }
}

void sub_466E0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_46764()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    *(v0 + 40) = &type metadata for PlaybackController.TransportCommand;
    *(v0 + 48) = &protocol witness table for PlaybackController.TransportCommand;
    *(v0 + 16) = xmmword_5DC10;
    *(v0 + 32) = 0;
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_4687C;

    return sub_2A8B0(v0 + 16, 0);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_4687C(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_493E0, 0, 0);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v4 + 16));
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_46A1C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v0[5] = &type metadata for PlaybackController.TransportCommand;
    v0[6] = &protocol witness table for PlaybackController.TransportCommand;
    v0[3] = 0;
    v0[4] = 0;
    v0[2] = 0;
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_4687C;

    return sub_2A8B0((v0 + 2), 0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t PlaybackController.QueueController.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void PlaybackController.QueueController.updatePlayerIfNeededForMarking(uuids:as:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24C20();

      sub_4411C(a1, &off_72058);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_59E24();

    v4 = v14[0];
    if (v14[0])
    {
      v5 = [v14[0] identifiers];
      v6 = [v5 library];

      if (v6)
      {
        v7 = [v6 databaseID];
        swift_unknownObjectRelease();
        v8 = sub_5A194();
        v10 = v9;

        v14[0] = v8;
        v14[1] = v10;
        __chkstk_darwin(v11);
        v13[2] = v14;
        v12 = sub_429FC(sub_489B0, v13, a1);

        if (v12)
        {
          sub_46E64(a2);
        }
      }

      else
      {
      }
    }
  }
}

BOOL sub_46D8C(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  if (a1)
  {
    v4 = 0x7565755174666F73;
  }

  else
  {
    v4 = 0x7565755164726168;
  }

  do
  {
    v5 = v2;
    if (v2-- == 0)
    {
      break;
    }

    if (*v3)
    {
      v7 = 0x7565755174666F73;
    }

    else
    {
      v7 = 0x7565755164726168;
    }

    if (v7 == v4)
    {
      swift_bridgeObjectRelease_n();
      return v5 != 0;
    }

    v8 = sub_5A8E4();
    swift_bridgeObjectRelease_n();
    ++v3;
  }

  while ((v8 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_46E64(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_5A3B4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  if (a1)
  {
    v7 = &unk_5DDB0;
  }

  else
  {
    v7 = &unk_5DDC0;
  }

  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;

  sub_42760(0, 0, v5, v7, v8);
}

uint64_t PlaybackController.QueueController.updatePlayerIfNeededForMarking(adamIDs:as:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_59E24();

      Strong = v18[0];
      if (v18[0])
      {
        v7 = [v18[0] displayItems];

        Strong = swift_allocObject();
        Strong[2] = v2;
        Strong[3] = a1;
        v8 = swift_allocObject();
        v5 = sub_48A48;
        v8[2] = sub_48A48;
        v8[3] = Strong;
        v18[4] = sub_48A50;
        v18[5] = v8;
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 1107296256;
        v18[2] = sub_47354;
        v18[3] = &block_descriptor_96;
        v9 = _Block_copy(v18);

        [v7 enumerateItemsUsingBlock:v9];

        _Block_release(v9);
        LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

        if ((v7 & 1) == 0)
        {
          goto LABEL_8;
        }

        __break(1u);
      }
    }

    v5 = 0;
    goto LABEL_8;
  }

  v5 = 0;
  Strong = 0;
LABEL_8:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_59E24();

    v10 = v19;
    if (v19)
    {
      v11 = [v19 identifiers];
      v12 = [v11 universalStore];

      if (v12)
      {
        [v12 adamID];
        swift_unknownObjectRelease();
        v13 = sub_59C44();

        v14 = *(a1 + 16);
        v15 = (a1 + 32);
        while (v14)
        {
          v16 = *v15++;
          --v14;
          if (v16 == v13)
          {
            sub_46E64(a2);
            return sub_227C(v5, Strong);
          }
        }
      }

      else
      {
      }
    }
  }

  return sub_227C(v5, Strong);
}

uint64_t sub_472D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24C20();

    sub_43BC4(a5, &off_72080);
  }

  return result;
}

uint64_t sub_47354(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_59544();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  sub_59534();
  v10 = a2;
  v9();

  return (*(v6 + 8))(v8, v5);
}

void PlaybackController.QueueController.updatePlayerIfNeededForMarking(playerItems:as:)(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_59E24();

    if (v65)
    {
      v4 = [v65 identifiers];
      v5 = [v4 library];

      if (v5)
      {
        v62 = a2;
        v6 = [v5 databaseID];

        swift_unknownObjectRelease();
        v7 = a1 & 0xFFFFFFFFFFFFFF8;
        if (a1 >> 62)
        {
          goto LABEL_64;
        }

        v8 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
        if (!v8)
        {
          goto LABEL_65;
        }

        goto LABEL_6;
      }
    }
  }

  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_59E24();

    if (v65)
    {
      v34 = [v65 identifiers];
      v35 = [v34 universalStore];

      if (!v35)
      {

        return;
      }

      v62 = a2;
      [v35 adamID];
      swift_unknownObjectRelease();
      sub_59C44();

      v7 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 >> 62)
      {
        v36 = sub_5A814();
        if (v36)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v36 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
        if (v36)
        {
LABEL_35:
          v37 = 0;
          v38 = a1 & 0xC000000000000001;
          v39 = _swiftEmptyArrayStorage;
          v40 = &off_7B000;
          v61 = a1;
LABEL_36:
          v64 = v39;
          v41 = v37;
          do
          {
            if (v38)
            {
              v44 = sub_5A724();
            }

            else
            {
              if (v41 >= *(v7 + 16))
              {
                goto LABEL_63;
              }

              v44 = *(a1 + 8 * v41 + 32);
            }

            v43 = v44;
            v37 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              v8 = sub_5A814();
              if (!v8)
              {
LABEL_65:
                v11 = _swiftEmptyArrayStorage;
                goto LABEL_66;
              }

LABEL_6:
              v9 = 0;
              v10 = a1 & 0xC000000000000001;
              v11 = _swiftEmptyArrayStorage;
              v12 = &off_7B000;
              v63 = a1 & 0xC000000000000001;
LABEL_7:
              v60 = v11;
              v13 = v9;
              while (1)
              {
                if (v10)
                {
                  v16 = sub_5A724();
                }

                else
                {
                  if (v13 >= *(v7 + 16))
                  {
                    goto LABEL_61;
                  }

                  v16 = *(a1 + 8 * v13 + 32);
                }

                v15 = v16;
                v9 = v13 + 1;
                if (__OFADD__(v13, 1))
                {
                  __break(1u);
LABEL_61:
                  __break(1u);
                  goto LABEL_62;
                }

                v17 = [v16 v12[361]];
                if (v17)
                {
                  v18 = v17;
                  v19 = [v17 flattenedGenericObject];

                  if (v19)
                  {
                    v20 = [v19 anyObject];

                    if (v20)
                    {
                      objc_opt_self();
                      v21 = swift_dynamicCastObjCClass();
                      if (v21)
                      {
                        v22 = v7;
                        v23 = a1;
                        v24 = v12;
                        v25 = [v21 identifiers];
                        v26 = [v25 library];

                        if (v26)
                        {
                          v27 = [v26 databaseID];
                          swift_unknownObjectRelease();
                          v28 = sub_5A194();
                          v30 = v29;

                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v60 = sub_1C304(0, *(v60 + 2) + 1, 1, v60);
                          }

                          v12 = v24;
                          v32 = *(v60 + 2);
                          v31 = *(v60 + 3);
                          a1 = v23;
                          if (v32 >= v31 >> 1)
                          {
                            v60 = sub_1C304((v31 > 1), v32 + 1, 1, v60);
                          }

                          v7 = v22;
                          *(v60 + 2) = v32 + 1;
                          v33 = &v60[16 * v32];
                          *(v33 + 4) = v28;
                          *(v33 + 5) = v30;
                          v11 = v60;
                          v10 = v63;
                          if (v9 == v8)
                          {
LABEL_66:
                            PlaybackController.QueueController.updatePlayerIfNeededForMarking(uuids:as:)(v11, v62);
                            goto LABEL_70;
                          }

                          goto LABEL_7;
                        }

                        v14 = v20;
                        v12 = v24;
                        a1 = v23;
                        v7 = v22;
                        v10 = v63;
                      }

                      else
                      {
                        v14 = v15;
                        v15 = v20;
                      }
                    }
                  }
                }

                ++v13;
                if (v9 == v8)
                {
                  v11 = v60;
                  goto LABEL_66;
                }
              }
            }

            v45 = [v44 v40[361]];
            if (v45)
            {
              v46 = v45;
              v47 = [v45 flattenedGenericObject];

              if (v47)
              {
                v48 = [v47 anyObject];

                if (v48)
                {
                  objc_opt_self();
                  v49 = swift_dynamicCastObjCClass();
                  if (v49)
                  {
                    v50 = v36;
                    v51 = v38;
                    v52 = v7;
                    v53 = v40;
                    v54 = [v49 identifiers];
                    v55 = [v54 universalStore];

                    if (v55)
                    {
                      [v55 adamID];
                      swift_unknownObjectRelease();
                      v56 = sub_59C44();

                      v40 = v53;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v64 = sub_1C7A0(0, *(v64 + 2) + 1, 1, v64);
                      }

                      v7 = v52;
                      v58 = *(v64 + 2);
                      v57 = *(v64 + 3);
                      v38 = v51;
                      if (v58 >= v57 >> 1)
                      {
                        v64 = sub_1C7A0((v57 > 1), v58 + 1, 1, v64);
                      }

                      v36 = v50;
                      *(v64 + 2) = v58 + 1;
                      *&v64[8 * v58 + 32] = v56;
                      v39 = v64;
                      v59 = v37 == v50;
                      a1 = v61;
                      if (v59)
                      {
                        goto LABEL_69;
                      }

                      goto LABEL_36;
                    }

                    v42 = v48;
                    v40 = v53;
                    v7 = v52;
                    v38 = v51;
                    v36 = v50;
                    a1 = v61;
                  }

                  else
                  {
                    v42 = v43;
                    v43 = v48;
                  }
                }
              }
            }

            ++v41;
          }

          while (v37 != v36);
          v39 = v64;
          goto LABEL_69;
        }
      }

      v39 = _swiftEmptyArrayStorage;
LABEL_69:
      PlaybackController.QueueController.updatePlayerIfNeededForMarking(adamIDs:as:)(v39, v62);
LABEL_70:
    }
  }
}

uint64_t sub_47B98()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v0[5] = &type metadata for PlaybackController.TransportCommand;
    v0[6] = &protocol witness table for PlaybackController.TransportCommand;
    v0[3] = 0;
    v0[4] = 0;
    v0[2] = 0;
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_47CA8;

    return sub_2A8B0((v0 + 2), 0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_47CA8(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_15964, 0, 0);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v4 + 16));
    v6 = *(v5 + 8);

    return v6();
  }
}

unint64_t sub_47E34()
{
  result = qword_7E558;
  if (!qword_7E558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_7F5A0, &qword_5D8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7E558);
  }

  return result;
}

uint64_t sub_47E9C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_59944() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = v10[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_19D9C;

  return sub_43094(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_59944();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_3B024(*(v0 + v5), *(v0 + v5 + 8));

  return _swift_deallocObject(v0, v5 + 9, v3 | 7);
}

uint64_t sub_480C4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_59944() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = v10[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_15D44;

  return sub_43094(a1, v7, v8, v9, v1 + v6, v11, v12);
}

void sub_48210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_5A194();
  v9 = sub_5A174();

  QueueModelSection.init(tracklistSection:)(v9, &v13);
  if (v13 != 2 && sub_46D8C(v13 & 1, a4))
  {
    v10 = [a6 displayItems];
    v11 = [v10 itemsInSectionAtIndex:a2];

    sub_48844();
    v12 = sub_5A294();

    sub_50F74(v12);
  }
}

void sub_482F4(uint64_t a1, uint64_t a2, _BYTE *a3, char a4, void *a5, BOOL *a6, void *a7)
{
  sub_5A194();
  v12 = sub_5A174();

  QueueModelSection.init(tracklistSection:)(v12, &v37);
  if (v37 != 2)
  {
    if (v37)
    {
      v13 = 0x7565755174666F73;
    }

    else
    {
      v13 = 0x7565755164726168;
    }

    if (a4)
    {
      v14 = 0x7565755174666F73;
    }

    else
    {
      v14 = 0x7565755164726168;
    }

    if (v13 == v14)
    {
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v15 = sub_5A8E4();
      swift_bridgeObjectRelease_n();
      if ((v15 & 1) == 0)
      {
        return;
      }
    }

    v16 = [a5 displayItems];
    v17 = [v16 itemsInSectionAtIndex:a2];

    sub_48844();
    v18 = sub_5A294();

    v32 = a3;
    v33 = a6;
    if (v18 >> 62)
    {
LABEL_28:
      v34 = v18 & 0xFFFFFFFFFFFFFF8;
      v35 = sub_5A814();
    }

    else
    {
      v34 = v18 & 0xFFFFFFFFFFFFFF8;
      v35 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
    }

    v19 = 0;
    do
    {
      v21 = v19;
      if (v35 == v19)
      {
        break;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = sub_5A724();
      }

      else
      {
        if (v19 >= *(v34 + 16))
        {
          goto LABEL_27;
        }

        v22 = *(v18 + 8 * v19 + 32);
      }

      v23 = v22;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v24 = [v22 contentItemIdentifier];
      v25 = sub_5A194();
      v27 = v26;

      v28 = [a7 contentItemIdentifier];
      v29 = sub_5A194();
      v31 = v30;

      if (v25 == v29 && v27 == v31)
      {

        break;
      }

      v20 = sub_5A8E4();

      v19 = v21 + 1;
    }

    while ((v20 & 1) == 0);

    *v33 = v35 != v21;
    *v32 = 1;
  }
}

void (*sub_485CC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_5A724();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_4864C;
  }

  __break(1u);
  return result;
}

uint64_t sub_4865C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_19D9C;

  return sub_44D8C(a1, v4, v5, v7, v6);
}

uint64_t sub_4871C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_487B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_487F0()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_48844()
{
  result = qword_7E4E8;
  if (!qword_7E4E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_7E4E8);
  }

  return result;
}

uint64_t sub_48898()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_488E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void (*sub_48930(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_5A724();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_4940C;
  }

  __break(1u);
  return result;
}

uint64_t sub_489B0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_5A8E4() & 1;
  }
}

uint64_t sub_48A08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_48A78@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t dispatch thunk of PlaybackController.QueueController.canRemoveItemFromQueue(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 144) + **(*v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_393F4;

  return v6(a1);
}

uint64_t dispatch thunk of PlaybackController.QueueController.removeMatchingQueueItems(with:from:)()
{
  return (*(*v0 + 152))();
}

{
  return (*(*v0 + 160))();
}

uint64_t dispatch thunk of PlaybackController.QueueController.changeToItemAndPlay(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 184) + **(*v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_19D9C;

  return v6(a1);
}

uint64_t dispatch thunk of PlaybackController.QueueController.moveToNextItem()()
{
  v4 = (*(*v0 + 232) + **(*v0 + 232));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_19D9C;

  return v4();
}

uint64_t dispatch thunk of PlaybackController.QueueController.restartCurrentEpisode()()
{
  v4 = (*(*v0 + 240) + **(*v0 + 240));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_19D9C;

  return v4();
}

uint64_t sub_49160(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19D9C;

  return sub_47B78(a1, v4, v5, v6);
}

uint64_t sub_49214(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19D9C;

  return sub_47B58(a1, v4, v5, v6);
}

uint64_t objectdestroy_14Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_49314(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_15D44;

  return sub_44D8C(a1, v4, v5, v7, v6);
}

uint64_t sub_494D4(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 80) + **(a2 + 80));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_393F4;

  return v7(a1, a2);
}

uint64_t sub_495EC(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 88) + **(a2 + 88));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_32310;

  return v7(a1, a2);
}

uint64_t sub_49704(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 2);
  v4 = *(a3 + 96);
  v6 = *a1;
  v7 = v3;
  v8 = *(a1 + 24);
  return v4(&v6, a2);
}

uint64_t sub_49750()
{
  v1 = [v0 playingItemProperties];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 relationships];

    sub_4FE4(0, &qword_7ED28, MPPropertySet_ptr);
    v4 = sub_5A104();

    v5 = sub_5A194();
    if (*(v4 + 16))
    {
      v7 = sub_565FC(v5, v6);
      v9 = v8;

      if (v9)
      {
        v10 = *(*(v4 + 56) + 8 * v7);

        v11 = [v10 properties];
        v12 = sub_5A3E4();

        v13 = sub_5A194();
        v15 = sub_356EC(v13, v14, v12);

        return v15 & 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_498CC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_49958(void *a1)
{
  v2 = v1;
  v4 = sub_59D14();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_playerPath;
  v9 = *&v1[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_playerPath];
  if (a1)
  {
    if (v9)
    {
      sub_4FE4(0, &unk_7ECE0, MPCPlayerPath_ptr);
      v10 = v9;
      v11 = a1;
      v12 = sub_5A624();

      if (v12)
      {
        return;
      }
    }
  }

  else if (!v9)
  {
    return;
  }

  sub_59CC4();
  v13 = v2;
  v14 = sub_59D04();
  v15 = sub_5A474();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = *&v2[v8];
    *(v17 + 4) = v19;
    *v18 = v19;
    v20 = v19;
    _os_log_impl(&dword_0, v14, v15, "ExplicitResponseDataSource did set player path %@", v17, 0xCu);
    sub_9708(v18, &qword_7E260, &qword_5BE50);

    a1 = v24;
  }

  (*(v5 + 8))(v7, v4);
  if (*&v2[v8])
  {
    v21 = *&v13[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_playerRequestController];
    v22 = [v21 request];
    v23 = *&v2[v8];
    [v22 setPlayerPath:v23];

    v25 = 0;
    v26 = 0;
    v27 = 0;
    sub_59D84();
    if (a1)
    {
      [v21 setNeedsReloadForSignificantRequestChange];
    }

    else
    {
      [v21 beginAutomaticResponseLoading];
    }
  }

  else
  {
    if (a1)
    {
      [*&v13[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_playerRequestController] endAutomaticResponseLoading];
    }

    v25 = 0;
    v26 = 0;
    v27 = 0;
    sub_59D84();
  }
}

uint64_t sub_49C60()
{
  v1 = *(v0[19] + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_playerPath);
  if (v1 && [v1 route])
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_49DE4;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7ED48, &qword_5DEF0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_49EDC;
    v0[13] = &block_descriptor_68;
    v0[14] = v5;
    [v4 getActiveRouteWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_49DE4()
{

  return _swift_task_switch(sub_49EC4, 0, 0);
}

uint64_t sub_49EDC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

void sub_49F40()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_responsePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  swift_allocObject();
  *(v0 + v2) = sub_59DA4();
  *(v0 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_includeTranscripts) = 0;
  *(v0 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_playerPath) = 0;
  v3 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_playerRequestController;
  *(v1 + v3) = [objc_allocWithZone(MPRequestResponseController) init];
  *(v1 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_subscriptions) = _swiftEmptyArrayStorage;
  sub_5A7F4();
  __break(1u);
}

uint64_t sub_4A138()
{
  sub_5A704(25);

  *(v0 + 16) = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7ED40, &qword_5DEE8);
  v2._countAndFlagsBits = sub_5A1B4();
  sub_5A1F4(v2);

  return sub_5A7F4();
}

id sub_4A228()
{
  v2.receiver = v0;
  v2.super_class = _s26ExplicitResponseDataSourceCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_4A314(void *a1)
{
  v2 = *v1;
  v4 = *(v2 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_playerPath);
  *(v2 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_playerPath) = a1;
  v3 = a1;
  sub_49958(v4);
}

uint64_t sub_4A38C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_393F4;

  return sub_49C40();
}

uint64_t sub_4A41C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_39260;

  return sub_4A118();
}

char *sub_4A4AC(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7ED50, &qword_5DEF8);
  v65 = *(v4 - 8);
  v66 = v4;
  __chkstk_darwin(v4);
  v64 = &v55 - v5;
  v6 = sub_59D14();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6);
  v61 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  __chkstk_darwin(v8 - 8);
  v10 = &v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB80, &qword_5CE58);
  v12 = *(v11 - 8);
  v57 = v11;
  v58 = v12;
  __chkstk_darwin(v11);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7ED58, &unk_5DF00);
  v16 = *(v15 - 1);
  v59 = v15;
  v60 = v16;
  __chkstk_darwin(v15);
  v55 = &v55 - v17;
  v18 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_playerRequestController;
  *&v2[v18] = [objc_allocWithZone(MPRequestResponseController) init];
  *&v2[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_subscriptions] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_pathCoordinator] = 0;
  v19 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_responsePublisher;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  swift_allocObject();
  *&v2[v19] = sub_59DA4();
  v2[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_includeTranscripts] = 0;
  v20 = *a1;
  v21 = a1[1];
  v23 = a1[2];
  v22 = a1[3];
  v72[0] = a1[4];
  v24 = v72[0];
  v25 = &v2[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_config];
  v26 = *(a1 + 1);
  *v25 = *a1;
  *(v25 + 1) = v26;
  *(v25 + 4) = v24;

  sub_34130(v72, &v68);
  v27 = _s27AutomaticResponseDataSourceCMa();
  v71.receiver = v2;
  v71.super_class = v27;
  v28 = objc_msgSendSuper2(&v71, "init");
  v56 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_playerRequestController;
  v29 = *(v28 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_playerRequestController);
  v30 = v28;
  [v29 setDelegate:v30];
  v31 = objc_allocWithZone(_s21PlayerPathCoordinatorCMa(0));
  v32 = sub_401A0(v20, v21, v23, v22);
  sub_9708(v72, &unk_7ED60, &qword_5D320);
  v33 = sub_4CE48();
  v67 = v33;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  v34 = v68;

  [v33 setPlayerPath:v34];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DC88, &qword_5CF18);
  sub_59E04();
  swift_endAccess();
  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v35 = sub_5A504();
  v68 = v35;
  v36 = sub_5A4A4();
  (*(*(v36 - 8) + 56))(v10, 1, 1, v36);
  sub_5108(&qword_7DC90, &qword_7DB80, &qword_5CE58, &protocol conformance descriptor for Published<A>.Publisher);
  sub_3F938();
  v37 = v55;
  v38 = v57;
  sub_59F34();
  sub_9708(v10, &unk_7D9C0, &unk_5C810);

  (*(v58 + 8))(v14, v38);
  v39 = v56;
  v40 = *(v28 + v56);
  *(swift_allocObject() + 16) = v40;
  sub_5108(&unk_7ED70, &qword_7ED58, &unk_5DF00, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v41 = v40;
  v42 = v59;
  sub_59F84();

  (*(v60 + 8))(v37, v42);
  swift_beginAccess();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E940, &qword_5DBD0);
  v44 = v61;
  sub_5108(&unk_7ED80, &unk_7E940, &qword_5DBD0, &protocol conformance descriptor for [A]);
  v60 = v43;
  sub_59D54();
  swift_endAccess();

  v45 = *(v30 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_pathCoordinator);
  *(v30 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_pathCoordinator) = v32;
  v59 = v32;

  v46 = v39;
  [*(v28 + v39) setRequest:v67];
  sub_59CC4();
  v47 = sub_59D04();
  v48 = sub_5A474();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_0, v47, v48, "Starting automatic response loading", v49, 2u);
  }

  (*(v62 + 8))(v44, v63);
  [*(v28 + v46) beginAutomaticResponseLoading];
  v68 = sub_30F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DC20, &qword_5CED0);
  sub_5108(&qword_7ED90, &unk_7DC20, &qword_5CED0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v50 = v64;
  sub_59F14();

  v51 = *(v28 + v46);
  *(swift_allocObject() + 16) = v51;
  sub_5108(&qword_7ED98, &qword_7ED50, &qword_5DEF8, &protocol conformance descriptor for Publishers.Filter<A>);
  v52 = v51;
  v53 = v66;
  sub_59F84();

  (*(v65 + 8))(v50, v53);
  swift_beginAccess();
  sub_59D54();
  swift_endAccess();

  return v30;
}

id sub_4ADE0(uint64_t a1, id a2)
{
  v3 = *(a1 + 8);
  v4 = [a2 request];
  [v4 setPlayerPath:v3];

  return [a2 setNeedsReloadForSignificantRequestChange];
}

void sub_4AE58()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_playerRequestController;
  *(v1 + v2) = [objc_allocWithZone(MPRequestResponseController) init];
  *(v1 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_subscriptions) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_pathCoordinator) = 0;
  v3 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_responsePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  swift_allocObject();
  *(v1 + v3) = sub_59DA4();
  *(v1 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_includeTranscripts) = 0;
  sub_5A7F4();
  __break(1u);
}

id sub_4AF68()
{
  v1 = v0;
  v2 = sub_59D14();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_59CC4();
  v6 = sub_59D04();
  v7 = sub_5A474();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Stopping automatic response loading", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  [*&v1[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_playerRequestController] endAutomaticResponseLoading];
  v9 = _s27AutomaticResponseDataSourceCMa();
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "dealloc");
}

id sub_4B1A0(char a1)
{
  if (a1)
  {
    v13 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7ED20, &qword_5DED0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_5BC80;
    *(inited + 32) = sub_5A194();
    *(inited + 40) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E250, &qword_5CA38);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_5BC80;
    *(v4 + 32) = sub_5A194();
    *(v4 + 40) = v5;
    isa = sub_5A284().super.isa;

    v7 = objc_opt_self();
    v8 = [v7 propertySetWithProperties:isa];

    *(inited + 48) = v8;
    sub_1172C(inited);
    swift_setDeallocating();
    sub_9708(inited + 32, &unk_7ED30, &unk_5DED8);
    sub_4FE4(0, &qword_7ED28, MPPropertySet_ptr);
    v9 = sub_5A0F4().super.isa;

    v10 = [v7 propertySetWithRelationships:v9];

    v11 = [v13 propertySetByCombiningWithPropertySet:v10];
    return v11;
  }

  else
  {

    return v1;
  }
}

id sub_4B3A8(id result)
{
  v2 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_includeTranscripts;
  v3 = *(v1 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_includeTranscripts);
  *(v1 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_includeTranscripts) = result;
  if (v3 != (result & 1))
  {
    v4 = *(v1 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_playerRequestController);
    v5 = [v4 request];
    v6 = sub_4C6E8();
    v7 = sub_4B1A0(*(v1 + v2));

    [v5 setPlayingItemProperties:v7];

    return [v4 setNeedsReload];
  }

  return result;
}

uint64_t sub_4B4A0(uint64_t a1)
{
  sub_59D94();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (*(v1 + 32))
  {
    sub_3F9EC(v2, *(v1 + 24), 1);
LABEL_6:
    v7 = [objc_opt_self() systemRoute];
    goto LABEL_7;
  }

  if (!v2)
  {
    goto LABEL_6;
  }

  v4 = *(v1 + 16);
  v5 = [v2 playerPath];
  sub_3F9EC(v4, v3, 0);
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v5 route];

  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_7:
  v8 = *(v1 + 8);

  return v8(v7);
}

uint64_t sub_4B5B0()
{
  v1[17] = v0;
  v1[18] = sub_5A384();
  v1[19] = sub_5A374();
  v3 = sub_5A354();
  v1[20] = v3;
  v1[21] = v2;

  return _swift_task_switch(sub_4B64C, v3, v2);
}

uint64_t sub_4B64C()
{
  v1 = [objc_opt_self() systemRoute];
  v2 = sub_5A174();
  v3 = sub_5A174();
  v4 = [objc_opt_self() pathWithRoute:v1 bundleID:v2 playerID:v3];
  v0[22] = v4;

  v5 = sub_4CE48();
  v0[23] = v5;
  [v5 setPlayerPath:v4];
  v6 = sub_5A374();
  v0[24] = v6;
  if (v6)
  {
    swift_getObjectType();
    v7 = sub_5A354();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return _swift_task_switch(sub_4B798, v7, v9);
}

uint64_t sub_4B798()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[23];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_4B8F4;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_4CF30;
  v1[15] = v8;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_498CC;
  v1[13] = &block_descriptor_55;
  v9 = _Block_copy(v4);

  [v6 performWithCompletion:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  return _swift_continuation_await(v3);
}

uint64_t sub_4B8F4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 200) = v3;
  if (v3)
  {
    swift_willThrow();

    v4 = v2[20];
    v5 = v2[21];
    v6 = sub_4BABC;
  }

  else
  {

    v2[26] = v2[16];
    v4 = v2[20];
    v5 = v2[21];
    v6 = sub_4BA44;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_4BA44()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);
  v3 = *(v0 + 208);

  return v2(v3);
}

uint64_t sub_4BABC()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_4BB30(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    **(*(a3 + 64) + 40) = a1;
    v4 = a1;

    return _swift_continuation_throwingResume(a3);
  }

  else
  {
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      sub_31414();
      v5 = swift_allocError();
      *v6 = 0;
      v6[1] = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7ED10, &qword_5C850);
    v7 = swift_allocError();
    *v8 = v5;
    swift_errorRetain();

    return _swift_continuation_throwingResumeWithError(a3, v7);
  }
}

uint64_t sub_4BC4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a2;
  v9 = sub_59FE4();
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_5A014();
  v12 = *(v26 - 8);
  __chkstk_darwin(v26);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v15 = sub_5A504();
  v16 = swift_allocObject();
  v17 = v24;
  v16[2] = v23;
  v16[3] = a3;
  v16[4] = a1;
  v16[5] = v6;
  aBlock[4] = v17;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_12CB4;
  aBlock[3] = v25;
  v18 = _Block_copy(aBlock);

  v19 = a1;
  v20 = v6;

  sub_5A004();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_4C690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E8F0, &unk_5DBF0);
  sub_5108(&qword_7ED00, &unk_7E8F0, &unk_5DBF0, &protocol conformance descriptor for [A]);
  sub_5A694();
  sub_5A534();
  _Block_release(v18);

  (*(v27 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v26);
}

void sub_4BF20(void (*a1)(uint64_t), uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_59D14();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v9);
  if ([a3 response])
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      sub_59CC4();
      swift_unknownObjectRetain();
      v14 = sub_59D04();
      v15 = sub_5A474();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v23 = v8;
        v17 = v16;
        v18 = swift_slowAlloc();
        v24 = a4;
        v25 = v18;
        v22 = v18;
        *v17 = 136446210;
        v19 = sub_3530C();
        v21 = sub_9430(v19, v20, &v25);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_0, v14, v15, "Received playback response: %{public}s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v22);

        (*(v23 + 8))(v11, v7);
      }

      else
      {

        (*(v8 + 8))(v11, v7);
      }

      v25 = v13;
      v26 = 0;
      v27 = 0;
      swift_unknownObjectRetain();
      sub_59D84();
      swift_unknownObjectRelease();
      sub_3F9EC(v25, v26, v27);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_4C204(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t sub_4C2B8(void *a1, uint64_t a2)
{
  v2 = [a1 request];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    swift_unknownObjectRetain();
    v6 = sub_59494();
    sub_59D84();
    swift_unknownObjectRelease();
    sub_3F9EC(v4, v6, 1);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 1;
}

void *sub_4C420(uint64_t a1)
{
  sub_59D94();
  result = v2;
  if (v4 == 1)
  {
    sub_3F9EC(v2, v3, 1);
    return 0;
  }

  return result;
}