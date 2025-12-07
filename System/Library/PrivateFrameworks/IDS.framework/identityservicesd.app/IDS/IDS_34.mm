uint64_t sub_10083F9F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1009360A8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v7 = sub_100936AC8(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
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
      sub_10084D3C8(&qword_100CB34E8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = sub_100936B18();
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

uint64_t sub_10083FC20(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  v3 = *(v1 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v3 + v5));
  a1(&v8, v3 + v4);
  os_unfair_lock_unlock((v3 + v5));
  v6 = v8;

  return v6;
}

void sub_10083FCD8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v60 = a2;
  v69 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v66 = *(v69 - 8);
  __chkstk_darwin(v69);
  v64 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v78 = &v60 - v5;
  __chkstk_darwin(v6);
  v73 = &v60 - v7;
  v81 = sub_1009360A8();
  v8 = *(v81 - 8);
  __chkstk_darwin(v81);
  v63 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v80 = &v60 - v11;
  v12 = sub_100706B30(&qword_100CB81F8, &qword_1009B8FB8);
  __chkstk_darwin(v12 - 8);
  v70 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v60 - v15;
  v82 = &_swiftEmptySetSingleton;
  v17 = *a1;
  v74 = a1 + 3;
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v17 + 64);
  v61 = (v19 + 63) >> 6;
  v79 = (v8 + 16);
  v65 = v8 + 32;
  v71 = v8;
  v77 = (v8 + 8);
  v67 = v17;

  v22 = 0;
  v72 = v16;
  v68 = v18;
  if (!v21)
  {
    goto LABEL_9;
  }

  do
  {
    while (1)
    {
      v31 = v22;
LABEL_17:
      v34 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v35 = v34 | (v31 << 6);
      v36 = v67;
      v37 = v71;
      v39 = v80;
      v38 = v81;
      (*(v71 + 16))(v80, *(v67 + 48) + *(v71 + 72) * v35, v81);
      v40 = v73;
      sub_10084C29C(*(v36 + 56) + *(v66 + 72) * v35, v73);
      v41 = sub_100706B30(&qword_100CB8200, &unk_1009B8FC0);
      v42 = *(v41 + 48);
      v43 = *(v37 + 32);
      v44 = v70;
      v43(v70, v39, v38);
      sub_10084CA20(v40, v44 + v42, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      (*(*(v41 - 8) + 56))(v44, 0, 1, v41);
      v16 = v72;
LABEL_18:
      sub_10084D490(v44, v16);
      v45 = sub_100706B30(&qword_100CB8200, &unk_1009B8FC0);
      if ((*(*(v45 - 8) + 48))(v16, 1, v45) == 1)
      {

        *v60 = v82;
        return;
      }

      v46 = v78;
      sub_10084CA20(&v16[*(v45 + 48)], v78, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v47 = *v74;
      v48 = *(v69 + 20);
      if (*(*v74 + 16))
      {
        break;
      }

      v23 = *v79;
LABEL_7:
      v24 = v46 + v48;
      v25 = v63;
      v26 = v81;
      v23(v63, v24, v81);
      v27 = v80;
      sub_1008473B0(v80, v25);
      v28 = *v77;
      (*v77)(v27, v26);
      v29 = v64;
      sub_10084C29C(v46, v64);
      v30 = v73;
      sub_1007139D8(v73, v29);
      sub_10084C300(v30);
      sub_10084C300(v46);
      v28(v16, v26);
      v18 = v68;
      if (!v21)
      {
        goto LABEL_9;
      }
    }

    sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v49 = sub_100936AC8();
    v50 = -1 << *(v47 + 32);
    v51 = v49 & ~v50;
    v76 = v47 + 56;
    v23 = *v79;
    if (((*(v47 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
    {
      v46 = v78;
      v16 = v72;
      goto LABEL_7;
    }

    v62 = v21;
    v75 = ~v50;
    v52 = *(v71 + 72);
    while (1)
    {
      v54 = v80;
      v53 = v81;
      v55 = v23;
      v23(v80, *(v47 + 48) + v52 * v51, v81);
      sub_10084D3C8(&qword_100CB34E8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v56 = v48;
      v57 = sub_100936B18();
      v58 = *v77;
      (*v77)(v54, v53);
      if (v57)
      {
        break;
      }

      v51 = (v51 + 1) & v75;
      v48 = v56;
      v23 = v55;
      if (((*(v76 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
      {
        v46 = v78;
        v16 = v72;
        v21 = v62;
        goto LABEL_7;
      }
    }

    sub_10084C300(v78);
    v16 = v72;
    v58(v72, v81);
    v18 = v68;
    v21 = v62;
  }

  while (v62);
LABEL_9:
  if (v61 <= v22 + 1)
  {
    v32 = v22 + 1;
  }

  else
  {
    v32 = v61;
  }

  v33 = v32 - 1;
  while (1)
  {
    v31 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v31 >= v61)
    {
      v59 = sub_100706B30(&qword_100CB8200, &unk_1009B8FC0);
      v44 = v70;
      (*(*(v59 - 8) + 56))(v70, 1, 1, v59);
      v21 = 0;
      v22 = v33;
      goto LABEL_18;
    }

    v21 = *(v18 + 8 * v31);
    ++v22;
    if (v21)
    {
      v22 = v31;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_100840448(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = swift_allocObject();
  sub_100840498(a1, v2);
  return v4;
}

uint64_t sub_100840498(uint64_t a1, int a2)
{
  v17 = a2;
  v4 = sub_1009364D8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for IDSGroupEncryptionKeyMaterialCache2.KMCacheState(0);
  __chkstk_darwin(v8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v2 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state;
  *v10 = sub_10084BEBC(&_swiftEmptyArrayStorage);
  v12 = &_swiftEmptySetSingleton;
  v10[1] = sub_10084C0D8(&_swiftEmptyArrayStorage);
  v10[2] = &_swiftEmptySetSingleton;
  v10[3] = &_swiftEmptySetSingleton;
  v10[4] = &_swiftEmptySetSingleton;
  sub_100935FB8();
  sub_100706B30(&qword_100CB7F70, &qword_1009B8EA0);
  v13 = swift_allocObject();
  *(v13 + ((*(*v13 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_10084CA20(v10, v13 + *(*v13 + class metadata base offset for ManagedBuffer + 16), type metadata accessor for IDSGroupEncryptionKeyMaterialCache2.KMCacheState);
  *(v2 + v11) = v13;
  if (&_swiftEmptyArrayStorage >> 62 && sub_1009373F8())
  {
    sub_100714450(&_swiftEmptyArrayStorage);
    v12 = v15;
  }

  *(v2 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_currentMembers) = v12;
  sub_1007C9A6C(v17);
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_l, v7, v4);
  *(v2 + 16) = a1;
  *(v2 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_isRatchetEnabled) = *(a1 + OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_isRatchetEnabled);
  return v2;
}

uint64_t sub_100840750()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_10084C200((v1 + v2), &v6);
  os_unfair_lock_unlock((v1 + v3));
  v4 = v6;

  return v4;
}

uint64_t sub_10084080C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_100706B30(&qword_100CB2AA0, &unk_1009B37D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = *a1;
  if (*(v9 + 16) && (v10 = sub_100725034(a2), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(v9 + 56);
    v14 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
    v15 = *(v14 - 8);
    sub_10084C29C(v13 + *(v15 + 72) * v12, v8);
    v16 = 1;
    (*(v15 + 56))(v8, 0, 1, v14);
  }

  else
  {
    v17 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    v16 = 0;
  }

  result = sub_100013814(v8, &qword_100CB2AA0, &unk_1009B37D0);
  *a3 = v16;
  return result;
}

uint64_t sub_100840998()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_10084C22C((v1 + v2), &v6);
  os_unfair_lock_unlock((v1 + v3));
  v4 = v6;

  return v4;
}

uint64_t sub_100840A54(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  v11 = sub_100706B30(&qword_100CB2AA0, &unk_1009B37D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v17 = *a1;
  if (*(v17 + 16) && (v18 = sub_100725034(a2 + v4[5]), (v19 & 1) != 0))
  {
    sub_10084C29C(*(v17 + 56) + *(v5 + 72) * v18, v16);
    (*(v5 + 56))(v16, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v16, 1, 1, v4);
  }

  sub_100012D50(v16, v13, &qword_100CB2AA0, &unk_1009B37D0);
  if ((*(v5 + 48))(v13, 1, v4) != 1)
  {
    sub_10084CA20(v13, v10, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    if (sub_10071CAE8(*&v10[v4[7]], *&v10[v4[7] + 8], *(a2 + v4[7]), *(a2 + v4[7] + 8)))
    {
      v20 = v4[13];
      v21 = &v10[v20];
      v22 = v10[v20 + 8];
      v23 = (a2 + v20);
      v24 = *v23;
      v25 = *(v23 + 8);
      if (v22 == 1)
      {
        if ((v25 & 1) == 0)
        {
          v26 = sub_1009364B8();
          v27 = sub_100936F18();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v48 = v29;
            *v28 = 136315394;
            *(v28 + 4) = sub_10001273C(0x7461747328736168, 0xEF293A79656B3A65, &v48);
            *(v28 + 12) = 2048;
            *(v28 + 14) = v24;
            v30 = "%s: key is in cache, but new key has a participant ID %llu and old does not";
            v31 = v27;
            v32 = v26;
            v33 = v28;
            v34 = 22;
LABEL_14:
            _os_log_impl(&_mh_execute_header, v32, v31, v30, v33, v34);
            sub_100012970(v29);

LABEL_15:

            goto LABEL_16;
          }

          goto LABEL_16;
        }
      }

      else
      {
        v38 = *v21;
        if (*v21 == v24)
        {
          v39 = 1;
        }

        else
        {
          v39 = v25;
        }

        if ((v39 & 1) == 0)
        {
          v26 = sub_1009364B8();
          v41 = sub_100936F18();
          if (!os_log_type_enabled(v26, v41))
          {
            goto LABEL_16;
          }

          v42 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v48 = v29;
          *v42 = 136315650;
          *(v42 + 4) = sub_10001273C(0x7461747328736168, 0xEF293A79656B3A65, &v48);
          *(v42 + 12) = 2048;
          *(v42 + 14) = v24;
          *(v42 + 22) = 2048;
          *(v42 + 24) = v38;
          v30 = "%s: key is in cache, but new key has a different participant ID %llu than the old one %llu";
          v31 = v41;
          v32 = v26;
          v33 = v42;
          v34 = 32;
          goto LABEL_14;
        }
      }

      v40 = v4[12];
      if (v10[v40] || !*(a2 + v40))
      {
        sub_100013814(v16, &qword_100CB2AA0, &unk_1009B37D0);
        sub_10084C300(v10);
        return 1;
      }

      sub_10084C29C(a2, v7);
      v26 = sub_1009364B8();
      v43 = sub_100936F18();
      if (!os_log_type_enabled(v26, v43))
      {
        sub_10084C300(v7);
        goto LABEL_16;
      }

      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v48 = v45;
      *v44 = 136315394;
      *(v44 + 4) = sub_10001273C(0x7461747328736168, 0xEF293A79656B3A65, &v48);
      *(v44 + 12) = 256;
      v46 = v7[v4[12]];
      sub_10084C300(v7);
      *(v44 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v26, v43, "%s: key is in cache, but new key has a shortKI length %hhu and old does not", v44, 0xFu);
      sub_100012970(v45);

      goto LABEL_15;
    }

    v26 = sub_1009364B8();
    v35 = sub_100936EF8();
    if (os_log_type_enabled(v26, v35))
    {
      v36 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48 = v29;
      *v36 = 136315138;
      *(v36 + 4) = sub_10001273C(0x7461747328736168, 0xEF293A79656B3A65, &v48);
      v30 = "%s: key is in cache, but key content is different!";
      v31 = v35;
      v32 = v26;
      v33 = v36;
      v34 = 12;
      goto LABEL_14;
    }

LABEL_16:

    sub_100013814(v16, &qword_100CB2AA0, &unk_1009B37D0);
    sub_10084C300(v10);
    return 0;
  }

  sub_100013814(v16, &qword_100CB2AA0, &unk_1009B37D0);
  sub_100013814(v13, &qword_100CB2AA0, &unk_1009B37D0);
  return 0;
}

uint64_t sub_1008410A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v3 + v5));
  sub_10084C270(v3 + v4, a1);
  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_100841168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  if (!*(v4 + 16))
  {
    goto LABEL_10;
  }

  v5 = sub_10072517C(a2);
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = *(*(v4 + 56) + 8 * v5);
  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = sub_1008472B4(*(v7 + 16), 0, &qword_100CB81F0, &unk_1009B8FA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  v10 = *(type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0) - 8);
  sub_10084B930(&v25, v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v8, v7);
  v12 = v11;
  v13 = v25;
  swift_bridgeObjectRetain_n();
  sub_100308C6C(v13);
  if (v12 != v8)
  {
    __break(1u);
LABEL_6:

    v9 = &_swiftEmptyArrayStorage;
  }

  v25 = v9;
  sub_1008481E4(sub_1008413E8, 0);

  v14 = v25;
  v15 = v25[2];
  if (v15)
  {
    v16 = v15 - 1;
    v17 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
    v24 = *(v17 - 8);
    sub_10084C29C(v14 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v16, a3);

    v18 = *(v24 + 56);
    v19 = a3;
    v20 = 0;
    v21 = v17;
    goto LABEL_11;
  }

LABEL_10:
  v22 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v18 = *(*(v22 - 8) + 56);
  v21 = v22;
  v19 = a3;
  v20 = 1;
LABEL_11:

  return v18(v19, v20, 1, v21);
}

void sub_100841404(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1009360A8();
  v154 = *(v4 - 8);
  v155 = v4;
  __chkstk_darwin(v4);
  v148 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_100706B30(&qword_100CB7F78, &qword_1009B8EA8);
  __chkstk_darwin(v151);
  v157 = &v144 - v6;
  v7 = sub_100706B30(&qword_100CB2D98, &qword_1009AC5D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v153 = &v144 - v11;
  __chkstk_darwin(v12);
  v160 = &v144 - v13;
  v14 = sub_100706B30(&qword_100CB2AA0, &unk_1009B37D0);
  __chkstk_darwin(v14 - 8);
  v150 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v144 - v17;
  __chkstk_darwin(v19);
  v161 = &v144 - v20;
  __chkstk_darwin(v21);
  v162 = &v144 - v22;
  v23 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v163 = *(v23 - 8);
  __chkstk_darwin(v23);
  v159 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v158 = &v144 - v26;
  __chkstk_darwin(v27);
  v29 = &v144 - v28;
  v30 = OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_l;
  v31 = a1;
  sub_10084C29C(a1, &v144 - v28);
  v32 = sub_1009364B8();
  v33 = sub_100936F18();
  v34 = os_log_type_enabled(v32, v33);
  v149 = v9;
  v165 = v23;
  v152 = v18;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v164 = v30;
    v166 = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_10001273C(0x2865766965636572, 0xED0000293A79656BLL, &v166);
    *(v35 + 12) = 2080;
    sub_10084D3C8(&qword_100CB2DA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent, &unk_1009AD4B0);
    v37 = sub_100937548();
    v39 = v38;
    sub_10084C300(v29);
    v40 = sub_10001273C(v37, v39, &v166);

    *(v35 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v32, v33, "%s: %s", v35, 0x16u);
    swift_arrayDestroy();
    v30 = v164;
  }

  else
  {

    v41 = sub_10084C300(v29);
  }

  v42 = OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state;
  v43 = *(v2 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  __chkstk_darwin(v41);
  *(&v144 - 2) = v2;
  *(&v144 - 1) = v31;
  v44 = *(*v43 + class metadata base offset for ManagedBuffer + 16);
  v45 = (*(*v43 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v43 + v45));
  sub_10084C35C((v43 + v44), &v166);
  os_unfair_lock_unlock((v43 + v45));
  v46 = v166;

  if (v46 != 1)
  {
    v156 = v42;
    v52 = (v31 + *(v165 + 52));
    if (v52[1])
    {
      v53 = *(v2 + v156);
      __chkstk_darwin(v47);
      *(&v144 - 2) = v31;
      v54 = *(*v53 + class metadata base offset for ManagedBuffer + 16);
      v55 = (*(*v53 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v53 + v55));
      sub_10084C388(v53 + v54);
      os_unfair_lock_unlock((v53 + v55));

LABEL_51:
      (*(*v2 + 328))(v56);
      return;
    }

    v147 = v2 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v57 = *v52;
    (*(*v2 + 248))(*v52);
    v58 = *(v2 + v156);
    v59 = v58 + *(*v58 + class metadata base offset for ManagedBuffer + 16);
    v60 = (*(*v58 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v58 + v60));
    v61 = *(v59 + 8);
    if (*(v61 + 16) && (v62 = sub_10072517C(v57), (v63 & 1) != 0))
    {
      v64 = *(*(v61 + 56) + 8 * v62);
    }

    else
    {
      v64 = &_swiftEmptySetSingleton;
    }

    os_unfair_lock_unlock((v58 + v60));

    v167 = v64;
    v65 = v159;
    sub_10084C29C(v31, v159);
    v66 = v158;
    sub_1007139D8(v158, v65);
    sub_10084C300(v66);
    v67 = v167;
    v68 = v167[2];
    v159 = v57;
    v164 = v30;
    if (v68)
    {
      v146 = v2;
      v69 = sub_1008472B4(v68, 0, &qword_100CB81F0, &unk_1009B8FA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      sub_10084B930(&v166, v69 + ((*(v163 + 80) + 32) & ~*(v163 + 80)), v68, v67);
      v71 = v70;
      v72 = v166;

      sub_100308C6C(v72);
      if (v71 != v68)
      {
LABEL_53:
        __break(1u);

        __break(1u);
        return;
      }

      v2 = v146;
      v57 = v159;
    }

    else
    {
      v69 = &_swiftEmptyArrayStorage;
    }

    v166 = v69;
    sub_1008481E4(sub_10084D500, 0);
    v73 = v166;

    v74 = sub_1009364B8();
    v75 = sub_100936F18();
    v76 = os_log_type_enabled(v74, v75);
    v158 = v67;
    if (v76)
    {
      v77 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      *v77 = 136315650;
      *(v77 + 4) = sub_10001273C(0x2865766965636572, 0xED0000293A79656BLL, &v166);
      *(v77 + 12) = 2048;
      *(v77 + 14) = v57;
      *(v77 + 22) = 2080;
      v78 = sub_100936CF8();
      v80 = sub_10001273C(v78, v79, &v166);

      *(v77 + 24) = v80;
      _os_log_impl(&_mh_execute_header, v74, v75, "%s: allKeys for participantID %llu: %s", v77, 0x20u);
      swift_arrayDestroy();
    }

    v81 = v163;
    v82 = *(v73 + 16);
    if (v82)
    {
      v83 = (*(v163 + 80) + 32) & ~*(v163 + 80);
      if (v82 == 1)
      {
        v84 = 0;
      }

      else
      {
        v84 = v82 - 2;
      }

      v85 = v161;
      sub_10084C29C(v73 + v83 + *(v163 + 72) * (v82 - 1), v161);
      (*(v81 + 56))(v85, 0, 1, v165);
      if ((v84 & 0x8000000000000000) == 0)
      {
LABEL_27:
        sub_10084C3B4(v73 + v83, v84, (2 * v82) | 1);
        v87 = v86;
        v88 = *(v73 + 16);

        if (v88 < v84)
        {
          __break(1u);
          goto LABEL_53;
        }

        v146 = v87;
        v89 = (2 * v84) | 1;

        v90 = sub_1009364B8();
        v91 = sub_100936F18();

        v92 = os_log_type_enabled(v90, v91);
        v145 = v83;
        if (v92)
        {
          v93 = swift_slowAlloc();
          v164 = swift_slowAlloc();
          v166 = v164;
          *v93 = 136315650;
          *(v93 + 4) = sub_10001273C(0x2865766965636572, 0xED0000293A79656BLL, &v166);
          *(v93 + 12) = 2048;
          v94 = v159;
          *(v93 + 14) = v159;
          *(v93 + 22) = 2080;
          v95 = v89;
          v96 = v165;
          v97 = sub_1009370A8();
          v99 = v2;
          v100 = sub_10001273C(v97, v98, &v166);

          *(v93 + 24) = v100;
          v2 = v99;
          v101 = v91;
          v102 = v95;
          _os_log_impl(&_mh_execute_header, v90, v101, "%s: removedKeys for participantID %llu: %s", v93, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          v102 = v89;
          v96 = v165;
          v94 = v159;
        }

        v103 = *(v2 + v156);
        v104 = *(*v103 + class metadata base offset for ManagedBuffer + 16);
        v105 = (*(*v103 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v103 + v105));
        sub_100842B30((v103 + v104), v94, v146, v73 + v145, v102);
        os_unfair_lock_unlock((v103 + v105));

        v106 = v162;
        v107 = *(v163 + 48);
        v108 = v107(v162, 1, v96);
        if (v108 == 1)
        {
          goto LABEL_45;
        }

        v109 = v96;
        v164 = v73;
        v110 = v152;
        sub_100012D50(v106, v152, &qword_100CB2AA0, &unk_1009B37D0);
        if (v107(v110, 1, v96) == 1)
        {
          sub_100013814(v110, &qword_100CB2AA0, &unk_1009B37D0);
          v111 = 1;
          v113 = v153;
          v112 = v154;
          v114 = v150;
          v115 = v96;
          v116 = v155;
          v117 = v160;
        }

        else
        {
          v118 = *(v96 + 20);
          v119 = v154;
          v116 = v155;
          v117 = v160;
          (*(v154 + 16))(v160, v110 + v118, v155);
          sub_10084C300(v110);
          v112 = v119;
          v111 = 0;
          v113 = v153;
          v114 = v150;
          v115 = v109;
        }

        v120 = *(v112 + 56);
        v121 = v117;
        v122 = v112;
        v120(v121, v111, 1, v116);
        sub_100012D50(v161, v114, &qword_100CB2AA0, &unk_1009B37D0);
        if (v107(v114, 1, v115) == 1)
        {
          sub_100013814(v114, &qword_100CB2AA0, &unk_1009B37D0);
          v123 = 1;
        }

        else
        {
          (*(v122 + 16))(v113, v114 + *(v115 + 20), v116);
          sub_10084C300(v114);
          v123 = 0;
        }

        v124 = v151;
        v120(v113, v123, 1, v116);
        v125 = *(v124 + 48);
        v126 = v160;
        v127 = v157;
        sub_100012D50(v160, v157, &qword_100CB2D98, &qword_1009AC5D0);
        v128 = v127;
        sub_100012D50(v113, v127 + v125, &qword_100CB2D98, &qword_1009AC5D0);
        v129 = *(v122 + 48);
        if (v129(v128, 1, v116) == 1)
        {
          sub_100013814(v113, &qword_100CB2D98, &qword_1009AC5D0);
          v130 = v157;
          sub_100013814(v126, &qword_100CB2D98, &qword_1009AC5D0);
          v131 = v129(v130 + v125, 1, v116);
          v106 = v162;
          if (v131 == 1)
          {
            sub_100013814(v130, &qword_100CB2D98, &qword_1009AC5D0);
LABEL_49:
            sub_100013814(v161, &qword_100CB2AA0, &unk_1009B37D0);

LABEL_50:
            v56 = sub_100013814(v106, &qword_100CB2AA0, &unk_1009B37D0);
            goto LABEL_51;
          }
        }

        else
        {
          v132 = v149;
          sub_100012D50(v128, v149, &qword_100CB2D98, &qword_1009AC5D0);
          v133 = v129(v128 + v125, 1, v116);
          v106 = v162;
          if (v133 != 1)
          {
            v139 = v154;
            v140 = v128 + v125;
            v141 = v148;
            v142 = v155;
            (*(v154 + 32))(v148, v140, v155);
            sub_10084D3C8(&qword_100CB34E8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            LODWORD(v165) = sub_100936B18();
            v143 = *(v139 + 8);
            v143(v141, v142);
            sub_100013814(v153, &qword_100CB2D98, &qword_1009AC5D0);
            sub_100013814(v160, &qword_100CB2D98, &qword_1009AC5D0);
            v143(v132, v142);
            v108 = sub_100013814(v157, &qword_100CB2D98, &qword_1009AC5D0);
            v94 = v159;
            if (v165)
            {
              goto LABEL_49;
            }

LABEL_45:
            if ((*(*v2 + 128))(v108))
            {
              v136 = v135;
              ObjectType = swift_getObjectType();
              v138 = v161;
              (*(v136 + 16))(v2, v94, v106, v161, ObjectType, v136);

              swift_unknownObjectRelease();
              sub_100013814(v138, &qword_100CB2AA0, &unk_1009B37D0);
            }

            else
            {

              sub_100013814(v161, &qword_100CB2AA0, &unk_1009B37D0);
            }

            goto LABEL_50;
          }

          v134 = v132;
          sub_100013814(v153, &qword_100CB2D98, &qword_1009AC5D0);
          v130 = v157;
          sub_100013814(v160, &qword_100CB2D98, &qword_1009AC5D0);
          (*(v154 + 8))(v134, v155);
        }

        v108 = sub_100013814(v130, &qword_100CB7F78, &qword_1009B8EA8);
        v94 = v159;
        goto LABEL_45;
      }

      __break(1u);
    }

    (*(v81 + 56))(v161, 1, 1, v165);
    v84 = 0;
    v83 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    goto LABEL_27;
  }

  v48 = sub_1009364B8();
  v49 = sub_100936F18();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v166 = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_10001273C(0x2865766965636572, 0xED0000293A79656BLL, &v166);
    _os_log_impl(&_mh_execute_header, v48, v49, "%s: skipping because we already have the key", v50, 0xCu);
    sub_100012970(v51);
  }
}

uint64_t sub_1008426EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = sub_100706B30(&qword_100CB2AA0, &unk_1009B37D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1009360A8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  result = sub_100840A54(a1, a2);
  if (result)
  {
    v17 = 1;
  }

  else
  {
    v18 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
    v19 = *(v18 + 20);
    v21 = a1;
    v22 = a3;
    v20 = *(v10 + 16);
    v20(v15, a2 + v19, v9);
    sub_10084C29C(a2, v8);
    (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
    sub_100842910(v8, v15);
    v20(v12, a2 + v19, v9);
    a3 = v22;
    sub_1008473B0(v15, v12);
    result = (*(v10 + 8))(v15, v9);
    v17 = 0;
  }

  *a3 = v17;
  return result;
}

uint64_t sub_100842910(uint64_t a1, uint64_t a2)
{
  v5 = sub_100706B30(&qword_100CB2AA0, &unk_1009B37D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_100013814(a1, &qword_100CB2AA0, &unk_1009B37D0);
    sub_1008496C4(a2, v7);
    v13 = sub_1009360A8();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_100013814(v7, &qword_100CB2AA0, &unk_1009B37D0);
  }

  else
  {
    sub_10084CA20(a1, v11, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_10084A2A0(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_1009360A8();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_100842B30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_100706B30(&qword_100CB2D98, &qword_1009AC5D0);
  __chkstk_darwin(v10 - 8);
  v45 = &v39 - v11;
  v12 = sub_100706B30(&qword_100CB2AA0, &unk_1009B37D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  v46 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v18 = *(v46 - 8);
  __chkstk_darwin(v46);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = a1[1];
  result = sub_10084A488(a3, a2, isUniquelyReferenced_nonNull_native);
  v44 = a1;
  a1[1] = v48;
  if (a5 >= 2)
  {
    v23 = a5 >> 1;
    v42 = *(v46 + 20);
    v43 = (v18 + 56);
    v24 = *(v18 + 72);
    v40 = v17;
    v41 = v14;
    do
    {
      v47 = a4;
      sub_10084C29C(a4, v20);
      v28 = v44;
      sub_100743C1C(v20, v17);
      sub_100013814(v17, &qword_100CB2AA0, &unk_1009B37D0);
      v29 = v42;
      v30 = v45;
      sub_10084AB38(&v20[v42], v45);
      sub_100013814(v30, &qword_100CB2D98, &qword_1009AC5D0);
      sub_10084AB38(&v20[v29], v30);
      sub_100013814(v30, &qword_100CB2D98, &qword_1009AC5D0);
      v31 = sub_100725034(&v20[v29]);
      v33 = v32;
      sub_10084C300(v20);
      if (v33)
      {
        v34 = v41;
        v35 = swift_isUniquelyReferenced_nonNull_native();
        v36 = *v28;
        v48 = *v28;
        if (!v35)
        {
          sub_10084A6C4();
          v36 = v48;
        }

        v37 = *(v36 + 48);
        v38 = sub_1009360A8();
        (*(*(v38 - 8) + 8))(v37 + *(*(v38 - 8) + 72) * v31, v38);
        v26 = v34;
        sub_10084CA20(*(v36 + 56) + v31 * v24, v34, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        sub_100849F5C(v31, v36);
        v25 = 0;
        *v28 = v36;
        v17 = v40;
      }

      else
      {
        v25 = 1;
        v26 = v41;
      }

      v27 = v47;
      (*v43)(v26, v25, 1, v46);
      result = sub_100013814(v26, &qword_100CB2AA0, &unk_1009B37D0);
      a4 = v27 + v24;
      --v23;
    }

    while (v23);
  }

  return result;
}

uint64_t sub_100842EE4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_10084C29C(a2, v5);
  sub_1007139D8(v8, v5);
  return sub_10084C300(v8);
}

uint64_t sub_100842F9C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1009360A8();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = sub_1009364B8();
  v10 = sub_100936F18();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = a1;
    v12 = v11;
    v24[0] = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_10001273C(0xD000000000000016, 0x8000000100B04480, v24);
    *(v12 + 12) = 2080;
    sub_10084D3C8(&qword_100CB2DA8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = sub_100937548();
    v15 = v14;
    (*(v5 + 8))(v8, v4);
    v16 = sub_10001273C(v13, v15, v24);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: %s", v12, 0x16u);
    swift_arrayDestroy();

    a1 = v23;
  }

  else
  {

    v17 = (*(v5 + 8))(v8, v4);
  }

  v18 = *(v2 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  __chkstk_darwin(v17);
  *(&v22 - 2) = a1;
  v19 = *(*v18 + class metadata base offset for ManagedBuffer + 16);
  v20 = (*(*v18 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v18 + v20));
  sub_10084C538(v18 + v19);
  os_unfair_lock_unlock((v18 + v20));
}

uint64_t sub_1008432BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1009360A8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v12 - v9;
  (*(v4 + 16))(v6, a2, v3, v8);
  sub_1008473B0(v10, v6);
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1008433D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_10084C564(v1 + v2, &v6);
  os_unfair_lock_unlock((v1 + v3));
  v4 = v6;

  return v4;
}

uint64_t sub_100843490(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1009364B8();
  v4 = sub_100936F18();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10001273C(0xD000000000000017, 0x8000000100B027F0, &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_100012970(v6);
  }

  v7 = *(v2 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  v8 = v7 + *(*v7 + class metadata base offset for ManagedBuffer + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v7 + v9));
  *(v8 + 24) = &_swiftEmptySetSingleton;

  os_unfair_lock_unlock((v7 + v9));
}

uint64_t sub_10084362C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1009364B8();
  v4 = sub_100936F18();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10001273C(0xD000000000000017, 0x8000000100B044A0, &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_100012970(v6);
  }

  v7 = *(v2 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  v8 = v7 + *(*v7 + class metadata base offset for ManagedBuffer + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v7 + v9));
  *(v8 + 32) = &_swiftEmptySetSingleton;

  os_unfair_lock_unlock((v7 + v9));
}

uint64_t sub_1008437C8(uint64_t a1)
{
  v2 = v1;

  v4 = sub_1009364B8();
  v5 = sub_100936F18();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v6 = 136315650;
    *(v6 + 4) = sub_10001273C(0xD000000000000017, 0x8000000100AFEAE0, &v31);
    *(v6 + 12) = 2080;
    type metadata accessor for IDSGroupEncryptionControllerMember();
    sub_10084D3C8(&qword_100CB2AC8, type metadata accessor for IDSGroupEncryptionControllerMember, &protocol conformance descriptor for NSObject);

    v7 = sub_100936E28();
    v9 = v8;

    v10 = sub_10001273C(v7, v9, &v31);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2080;
    v11 = sub_100936E28();
    v13 = sub_10001273C(v11, v12, &v31);

    *(v6 + 24) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: previous members: %s; new members: %s", v6, 0x20u);
    swift_arrayDestroy();
  }

  v14 = (*v2 + 296);
  v15 = *v14;
  (*v14)();
  v16 = OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_currentMembers;

  v18 = sub_1007BF944(v17, a1);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  if (sub_1007BF658(v18, v20, v22, v24))
  {

    (v15)(v25);
    goto LABEL_12;
  }

  v26 = sub_1007BF698(v18, v20, v22);

  if (v26)
  {
    v28 = *(v2 + v16);
    if ((v28 & 0xC000000000000001) != 0)
    {

      v29 = sub_100937158();

      if (v29 < 1)
      {
        goto LABEL_12;
      }
    }

    else if (*(v28 + 16) < 1)
    {
      goto LABEL_12;
    }

    (v15)(v27);
    if (*(v2 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_isRatchetEnabled) == 1)
    {
      sub_100843B6C();
    }
  }

LABEL_12:
  *(v2 + v16) = a1;
}

void sub_100843B6C()
{
  v1 = v0;
  v2 = sub_100936038();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*v0 + 128);
  if (v7)(v4) && (v9 = v8, v10 = swift_getObjectType(), LOBYTE(v9) = (*(v9 + 8))(v10, v9), swift_unknownObjectRelease(), (v9))
  {
    v37 = OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state;
    v38 = v7;
    v11 = *(v0 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
    v12 = *(*v11 + class metadata base offset for ManagedBuffer + 16);
    v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v11 + v13));
    sub_100935FF8();
    v14 = v11 + *(type metadata accessor for IDSGroupEncryptionKeyMaterialCache2.KMCacheState(0) + 36);
    sub_100935F38();
    v16 = v15;
    (*(v3 + 8))(v6, v2);
    if (v16 <= *sub_1007069E4())
    {
      os_unfair_lock_unlock((v11 + v13));

      v33 = sub_1009364B8();
      v34 = sub_100936F18();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v39 = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_10001273C(0x4B74656863746172, 0xED00002928737965, &v39);
        _os_log_impl(&_mh_execute_header, v33, v34, "%s: ratchet canceled because we just ratcheted recently", v35, 0xCu);
        sub_100012970(v36);
      }
    }

    else
    {
      sub_100935FF8();
      (*(v3 + 40))(v14 + v12, v6, v2);
      os_unfair_lock_unlock((v11 + v13));

      v17 = sub_1009364B8();
      v18 = sub_100936F18();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v39 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_10001273C(0x4B74656863746172, 0xED00002928737965, &v39);
        _os_log_impl(&_mh_execute_header, v17, v18, "%s: ratchet (rolling)", v19, 0xCu);
        sub_100012970(v20);
      }

      v21 = v38;
      v22 = *(v1 + v37);
      v23 = *(*v22 + class metadata base offset for ManagedBuffer + 16);
      v24 = (*(*v22 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v22 + v24));
      sub_10084D474((v22 + v23));
      os_unfair_lock_unlock((v22 + v24));

      if ((v21)(v25))
      {
        v27 = v26;
        ObjectType = swift_getObjectType();
        (*(v27 + 32))(v1, ObjectType, v27);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v38 = sub_1009364B8();
    v29 = sub_100936F18();
    if (os_log_type_enabled(v38, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_10001273C(0x4B74656863746172, 0xED00002928737965, &v39);
      _os_log_impl(&_mh_execute_header, v38, v29, "%s: not ratcheting because we are not active in the session", v30, 0xCu);
      sub_100012970(v31);
    }

    else
    {
      v32 = v38;
    }
  }
}

uint64_t sub_100844118(uint64_t *a1, uint64_t a2)
{
  v197 = a2;
  v213 = sub_1009360A8();
  v202 = *(v213 - 8);
  __chkstk_darwin(v213);
  v214 = &v178 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v180 = &v178 - v5;
  __chkstk_darwin(v6);
  v179 = &v178 - v7;
  v8 = sub_100706B30(&qword_100CB2AA0, &unk_1009B37D0);
  __chkstk_darwin(v8 - 8);
  v183 = (&v178 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v191 = &v178 - v11;
  __chkstk_darwin(v12);
  v14 = (&v178 - v13);
  v15 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v212 = &v178 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v205 = &v178 - v19;
  __chkstk_darwin(v20);
  v182 = &v178 - v21;
  __chkstk_darwin(v22);
  v181 = &v178 - v23;
  __chkstk_darwin(v24);
  v185 = &v178 - v25;
  __chkstk_darwin(v26);
  v190 = &v178 - v27;
  __chkstk_darwin(v28);
  v211 = &v178 - v29;
  __chkstk_darwin(v30);
  v194 = &v178 - v31;
  __chkstk_darwin(v32);
  v193 = &v178 - v33;
  __chkstk_darwin(v34);
  v199 = &v178 - v35;
  __chkstk_darwin(v36);
  v204 = &v178 - v37;
  __chkstk_darwin(v38);
  v40 = &v178 - v39;
  __chkstk_darwin(v41);
  v207 = &v178 - v42;
  v208 = sub_10084BEBC(&_swiftEmptyArrayStorage);
  v43 = v40;
  v200 = sub_10084C0D8(&_swiftEmptyArrayStorage);
  v217 = &_swiftEmptySetSingleton;
  v192 = a1;
  v44 = a1[2];
  v45 = v44 + 56;
  v46 = 1 << *(v44 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v44 + 56);
  v196 = OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_l;
  v49 = (v46 + 63) >> 6;
  v210 = v16;
  v203 = (v16 + 48);
  v195 = v44;

  v50 = 0;
  *&v51 = 136315394;
  v186 = v51;
  v209 = v15;
  v206 = v14;
  v198 = v43;
  v201 = v49;
  while (v48)
  {
    v58 = v211;
LABEL_14:
    v60 = v207;
    sub_10084C29C(*(v195 + 48) + *(v210 + 72) * (__clz(__rbit64(v48)) | (v50 << 6)), v207);
    sub_10084CA20(v60, v43, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v61 = *(v43 + *(v15 + 40));
    if (v61 == -1)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      sub_1009375D8();
      __break(1u);
      goto LABEL_82;
    }

    sub_10074A030(v61 + 1, v14);
    if ((*v203)(v14, 1, v15) == 1)
    {
      sub_100013814(v14, &qword_100CB2AA0, &unk_1009B37D0);
      sub_10084C29C(v43, v58);
      v62 = sub_1009364B8();
      v63 = sub_100936F18();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v215[0] = v189;
        *v64 = v186;
        *(v64 + 4) = sub_10001273C(0x4B74656863746172, 0xED00002928737965, v215);
        *(v64 + 12) = 2080;
        sub_10084D3C8(&qword_100CB2DA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent, &unk_1009AD4B0);
        LODWORD(v188) = v63;
        v65 = sub_100937548();
        v67 = v66;
        sub_10084C300(v58);
        v68 = sub_10001273C(v65, v67, v215);
        v15 = v209;

        *(v64 + 14) = v68;
        _os_log_impl(&_mh_execute_header, v62, v188, "%s: ratchet failed for keyWithoutParticipantID: %s", v64, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10084C300(v58);
      }

      v52 = *(v15 + 20);
      v53 = v193;
      sub_10084C29C(v43, v193);
      v54 = v208;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v215[0] = v54;
      sub_10084A2A0(v53, v43 + v52, isUniquelyReferenced_nonNull_native);
      v208 = v215[0];
      v56 = v194;
      sub_10084C29C(v43, v194);
      sub_1007139D8(v53, v56);
      v57 = v53;
    }

    else
    {
      v69 = v204;
      sub_10084CA20(v14, v204, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v70 = v199;
      sub_10084C29C(v69, v199);
      v71 = sub_1009364B8();
      v72 = sub_100936F18();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v215[0] = v189;
        *v73 = v186;
        *(v73 + 4) = sub_10001273C(0x4B74656863746172, 0xED00002928737965, v215);
        *(v73 + 12) = 2080;
        sub_10084D3C8(&qword_100CB2DA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent, &unk_1009AD4B0);
        v74 = sub_100937548();
        v76 = v75;
        sub_10084C300(v70);
        v77 = sub_10001273C(v74, v76, v215);
        v15 = v209;

        *(v73 + 14) = v77;
        _os_log_impl(&_mh_execute_header, v71, v72, "%s: ratchet to new remote keyWithoutParticipantID: %s", v73, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10084C300(v70);
      }

      v78 = *(v15 + 20);
      v79 = v204;
      v80 = v193;
      sub_10084C29C(v204, v193);
      v81 = v208;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      v215[0] = v81;
      sub_10084A2A0(v80, v79 + v78, v82);
      v208 = v215[0];
      v83 = v194;
      sub_10084C29C(v79, v194);
      sub_1007139D8(v80, v83);
      sub_10084C300(v80);
      v57 = v79;
      v43 = v198;
    }

    v48 &= v48 - 1;
    sub_10084C300(v57);
    sub_10084C300(v43);
    v14 = v206;
    v49 = v201;
  }

  v58 = v211;
  while (1)
  {
    v59 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_74;
    }

    if (v59 >= v49)
    {
      break;
    }

    v48 = *(v45 + 8 * v59);
    ++v50;
    if (v48)
    {
      v50 = v59;
      goto LABEL_14;
    }
  }

  v84 = v192;
  v85 = v192[1];
  v86 = v85 + 64;
  v87 = 1 << *(v85 + 32);
  if (v87 < 64)
  {
    v88 = ~(-1 << v87);
  }

  else
  {
    v88 = -1;
  }

  v201 = v88 & *(v85 + 64);
  v89 = (v87 + 63) >> 6;
  v211 = (v202 + 16);
  v206 = (v202 + 8);
  v189 = v85;

  v90 = 0;
  v91 = v208;
  v188 = v86;
  v187 = v89;
LABEL_27:
  v94 = v191;
  v95 = v190;
  v96 = v201;
  if (!v201)
  {
    while (1)
    {
      v97 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        goto LABEL_75;
      }

      if (v97 >= v89)
      {

        v177 = v217;
        *v84 = v91;
        v84[1] = v200;
        v84[2] = v177;
        return result;
      }

      v96 = *(v86 + 8 * v97);
      ++v90;
      if (v96)
      {
        goto LABEL_32;
      }
    }
  }

  v97 = v90;
LABEL_32:
  v98 = (v97 << 9) | (8 * __clz(__rbit64(v96)));
  v99 = *(*(v189 + 48) + v98);
  v216 = *(*(v189 + 56) + v98);
  v204 = v216;

  v198 = v99;
  sub_100841168(v84, v99, v94);
  v100 = *v203;
  v101 = (*v203)(v94, 1, v15);
  v199 = v97;
  if (v101 == 1)
  {
    sub_100013814(v94, &qword_100CB2AA0, &unk_1009B37D0);
LABEL_52:
    v201 = (v96 - 1) & v96;
    v144 = v204;
    v145 = v204 + 56;
    v146 = 1 << *(v204 + 32);
    if (v146 < 64)
    {
      v147 = ~(-1 << v146);
    }

    else
    {
      v147 = -1;
    }

    v148 = v147 & *(v204 + 56);
    v149 = (v146 + 63) >> 6;

    v150 = 0;
    v207 = v149;
    v208 = v145;
    while (v148)
    {
      v151 = v150;
LABEL_63:
      v152 = *(v210 + 72);
      v153 = v205;
      sub_10084C29C(*(v144 + 48) + v152 * (__clz(__rbit64(v148)) | (v151 << 6)), v205);
      v154 = *(v15 + 20);
      v155 = *v211;
      v156 = v214;
      (*v211)(v214, v153 + v154, v213);
      sub_10084CA20(v153, v212, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v157 = swift_isUniquelyReferenced_nonNull_native();
      v215[0] = v91;
      v158 = sub_100725034(v156);
      v160 = v91[2];
      v161 = (v159 & 1) == 0;
      v162 = __OFADD__(v160, v161);
      v163 = v160 + v161;
      if (v162)
      {
        goto LABEL_76;
      }

      v164 = v159;
      if (v91[3] >= v163)
      {
        if ((v157 & 1) == 0)
        {
          v175 = v158;
          sub_10084A6C4();
          v158 = v175;
        }
      }

      else
      {
        sub_100849860(v163, v157);
        v158 = sub_100725034(v214);
        if ((v164 & 1) != (v165 & 1))
        {
          goto LABEL_81;
        }
      }

      v148 &= v148 - 1;
      v91 = v215[0];
      if (v164)
      {
        sub_10084D410(v212, *(v215[0] + 56) + v158 * v152);
        (*v206)(v214, v213);
        v150 = v151;
        v15 = v209;
      }

      else
      {
        *(v215[0] + 8 * (v158 >> 6) + 64) |= 1 << v158;
        v166 = v202;
        v167 = v158;
        v168 = v91[6] + *(v202 + 72) * v158;
        v169 = v91;
        v170 = v213;
        v171 = v214;
        v155(v168, v214, v213);
        sub_10084CA20(v212, v169[7] + v167 * v152, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v172 = v171;
        v91 = v169;
        (*(v166 + 8))(v172, v170);
        v173 = v169[2];
        v162 = __OFADD__(v173, 1);
        v174 = v173 + 1;
        if (v162)
        {
          goto LABEL_77;
        }

        v169[2] = v174;
        v150 = v151;
        v15 = v209;
        v144 = v204;
      }

      v149 = v207;
      v145 = v208;
    }

    while (1)
    {
      v151 = v150 + 1;
      if (__OFADD__(v150, 1))
      {
        break;
      }

      if (v151 >= v149)
      {

        v92 = v200;
        v93 = swift_isUniquelyReferenced_nonNull_native();
        v215[0] = v92;
        sub_10084A488(v144, v198, v93);
        v200 = v215[0];
        v90 = v199;
        v84 = v192;
        v86 = v188;
        v89 = v187;
        goto LABEL_27;
      }

      v148 = *(v145 + 8 * v151);
      ++v150;
      if (v148)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  sub_10084CA20(v94, v95, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  v102 = *(v95 + *(v15 + 40));
  if (v102 == -1)
  {
    goto LABEL_79;
  }

  v103 = v15;
  v104 = v183;
  sub_10074A030(v102 + 1, v183);
  if (v100(v104, 1, v103) == 1)
  {
    sub_100013814(v104, &qword_100CB2AA0, &unk_1009B37D0);
    v105 = v182;
    sub_10084C29C(v95, v182);
    v106 = sub_1009364B8();
    v107 = sub_100936F18();
    if (!os_log_type_enabled(v106, v107))
    {

      sub_10084C300(v105);
      sub_10084C300(v95);
      v15 = v209;
      goto LABEL_52;
    }

    v108 = swift_slowAlloc();
    LODWORD(v207) = v107;
    v109 = v108;
    v208 = swift_slowAlloc();
    v215[0] = v208;
    *v109 = v186;
    *(v109 + 4) = sub_10001273C(0x4B74656863746172, 0xED00002928737965, v215);
    *(v109 + 12) = 2080;
    sub_10084D3C8(&qword_100CB2DA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent, &unk_1009AD4B0);
    v15 = v209;
    v110 = sub_100937548();
    v112 = v111;
    sub_10084C300(v105);
    v113 = sub_10001273C(v110, v112, v215);

    *(v109 + 14) = v113;
    _os_log_impl(&_mh_execute_header, v106, v207, "%s: cannot ratchet for key: %s", v109, 0x16u);
    swift_arrayDestroy();

LABEL_51:
    sub_10084C300(v95);
    goto LABEL_52;
  }

  v114 = v185;
  sub_10084CA20(v104, v185, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  v115 = v114;
  v116 = v181;
  sub_10084C29C(v115, v181);
  v117 = sub_1009364B8();
  v118 = sub_100936F18();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v208 = swift_slowAlloc();
    v215[0] = v208;
    *v119 = v186;
    *(v119 + 4) = sub_10001273C(0x4B74656863746172, 0xED00002928737965, v215);
    *(v119 + 12) = 2080;
    sub_10084D3C8(&qword_100CB2DA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent, &unk_1009AD4B0);
    LODWORD(v207) = v118;
    v120 = v209;
    v121 = sub_100937548();
    v122 = v116;
    v123 = v121;
    v125 = v124;
    sub_10084C300(v122);
    v126 = sub_10001273C(v123, v125, v215);

    *(v119 + 14) = v126;
    _os_log_impl(&_mh_execute_header, v117, v207, "%s: ratchet to new remote key: %s", v119, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10084C300(v116);
    v120 = v209;
  }

  v127 = v194;
  sub_10084C29C(v185, v194);
  v128 = v193;
  sub_1007139D8(v193, v127);
  sub_10084C300(v128);
  v129 = v216;
  v130 = *(v216 + 16);
  if (v130)
  {
    v131 = sub_1008472B4(*(v216 + 16), 0, &qword_100CB81F0, &unk_1009B8FA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    sub_10084B930(v215, v131 + ((*(v210 + 80) + 32) & ~*(v210 + 80)), v130, v129);
    v132 = v215[0];
    v207 = v215[2];
    v208 = v133;
    v204 = v215[3];
    v201 = v215[4];

    sub_100308C6C(v132);
    if (v208 != v130)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v131 = &_swiftEmptyArrayStorage;
  }

  v215[0] = v131;
  v134 = v184;
  sub_1008481E4(sub_10084D500, 0);
  v184 = v134;
  if (!v134)
  {

    v135 = *(v215[0] + 16);
    if (v135 >= 2)
    {
      v136 = v135 - 2;
    }

    else
    {
      v136 = 0;
    }

    sub_10084C3B4(v215[0] + ((*(v210 + 80) + 32) & ~*(v210 + 80)), v136, (2 * v135) | 1);
    v204 = v137;

    v138 = v185;
    v139 = v185 + *(v120 + 20);
    v140 = v180;
    v141 = v213;
    (*v211)(v180, v139, v213);
    v142 = v179;
    v143 = v140;
    v15 = v209;
    sub_1008473B0(v179, v143);
    (*v206)(v142, v141);
    sub_10084C300(v138);
    goto LABEL_51;
  }

LABEL_82:

  __break(1u);
  return result;
}

BOOL sub_1008455C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v5 = *(v4 + 40);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  return v6 < v7 || v6 == v7 && *(a1 + *(v4 + 44)) < *(a2 + *(v4 + 44));
}

uint64_t sub_100845634()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_10084C5A4((v1 + v2), &v6);
  os_unfair_lock_unlock((v1 + v3));
  v4 = v6;

  return v4;
}

void sub_1008456E8(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v60 = sub_1009360A8();
  v6 = *(v60 - 8);
  __chkstk_darwin(v60);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v59 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v58 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v57 = &v51 - v12;
  __chkstk_darwin(v13);
  v56 = &v51 - v14;
  v15 = a1[4];
  v16 = *(v15 + 16);
  v52 = a3;
  if (v16)
  {
    v17 = a1;
    v18 = a2;
    v19 = sub_1008472B4(v16, 0, &qword_100CB81E0, &qword_1009B8F90, &type metadata accessor for UUID);
    sub_10084BB80(v62, &v19[(*(v6 + 80) + 32) & ~*(v6 + 80)], v16, v15);
    v21 = v20;
    v22 = v62[0];
    v53 = v62[3];
    v54 = v62[2];
    v51 = v62[4];

    sub_100308C6C(v22);
    if (v21 != v16)
    {
      goto LABEL_23;
    }

    a2 = v18;
    a1 = v17;
    a3 = v52;
  }

  else
  {
    v19 = &_swiftEmptyArrayStorage;
  }

  v62[0] = v19;
  sub_10084B0E8();
  v23 = v62[0];
  v62[0] = &_swiftEmptySetSingleton;
  v24 = *(*(a2 + 16) + OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_numberOfCachedMKMsToBroadcast);
  if (*(v23 + 16) >= v24)
  {
    v25 = *(*(a2 + 16) + OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_numberOfCachedMKMsToBroadcast);
  }

  else
  {
    v25 = *(v23 + 16);
  }

  if ((v24 & 0x8000000000000000) == 0)
  {
    v26 = v23 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

    v27 = sub_1009364B8();
    v28 = sub_100936F18();
    v54 = v27;
    v29 = os_log_type_enabled(v27, v28);
    v51 = v23;
    if (v29)
    {
      v30 = swift_slowAlloc();
      LODWORD(v53) = v28;
      v31 = v30;
      v61 = swift_slowAlloc();
      *v31 = 136315650;
      *(v31 + 4) = sub_10001273C(0xD000000000000024, 0x8000000100B027A0, &v61);
      *(v31 + 12) = 2048;
      *(v31 + 14) = v25;

      *(v31 + 22) = 2080;
      v32 = sub_1009370A8();
      v34 = sub_10001273C(v32, v33, &v61);

      *(v31 + 24) = v34;
      v35 = v54;
      _os_log_impl(&_mh_execute_header, v54, v53, "%s: sampling %ld kis: %s", v31, 0x20u);
      swift_arrayDestroy();

      if (v25)
      {
        goto LABEL_11;
      }
    }

    else
    {

      if (v25)
      {
LABEL_11:
        v36 = *a1;
        v39 = *(v6 + 16);
        v37 = v6 + 16;
        v38 = v39;
        v40 = *(v37 + 56);
        v41 = (v37 - 8);
        v54 = v39;
        v55 = v8;
        v53 = v37;
        (v39)(v8, v26, v60);
        while (1)
        {
          if (*(v36 + 16) && (v42 = sub_100725034(v8), (v43 & 1) != 0))
          {
            v44 = v56;
            sub_10084C29C(*(v36 + 56) + *(v59 + 72) * v42, v56);
            (*v41)(v8, v60);
            v45 = v58;
            sub_10084C29C(v44, v58);
            v46 = v40;
            v47 = v36;
            v48 = v57;
            v8 = v55;
            sub_1007139D8(v57, v45);
            v49 = v48;
            v36 = v47;
            v40 = v46;
            sub_10084C300(v49);
            v50 = v44;
            v38 = v54;
            sub_10084C300(v50);
          }

          else
          {
            (*v41)(v8, v60);
          }

          v26 += v40;
          if (!--v25)
          {
            break;
          }

          (v38)(v8, v26, v60);
        }

        a3 = v52;
        goto LABEL_21;
      }
    }

LABEL_21:
    *a3 = v62[0];
    return;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_100845C0C()
{
  v1 = v0;
  v2 = sub_100936038();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100936028();
  v6 = *(v0 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  v23 = v0;
  v24 = v5;
  v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v6 + v8));
  sub_10084C5D0((v6 + v7), &v25);
  os_unfair_lock_unlock((v6 + v8));
  v9 = v25;

  v10 = sub_1009364B8();
  v11 = sub_100936F18();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v2;
    v25 = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_10001273C(0xD000000000000013, 0x8000000100B044C0, &v25);
    *(v12 + 12) = 2048;
    *(v12 + 14) = *(v9 + 16);

    *(v12 + 22) = 2080;
    sub_1009360A8();
    v14 = sub_100936CF8();
    v16 = sub_10001273C(v14, v15, &v25);

    *(v12 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: removing %ld expired keys: %s", v12, 0x20u);
    swift_arrayDestroy();
    v2 = v22;

    if (!*(v9 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (!*(v9 + 16))
    {
LABEL_7:

      return (*(v3 + 8))(v5, v2);
    }
  }

  if (!(*(*v1 + 128))())
  {
    goto LABEL_7;
  }

  v18 = v17;
  ObjectType = swift_getObjectType();
  (*(v18 + 24))(v9, v1, ObjectType, v18);

  swift_unknownObjectRelease();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100845F50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v90 = a4;
  v9 = sub_100706B30(&qword_100CB2D98, &qword_1009AC5D0);
  __chkstk_darwin(v9 - 8);
  v105 = &v89 - v10;
  v11 = sub_100706B30(&qword_100CB2AA0, &unk_1009B37D0);
  __chkstk_darwin(v11 - 8);
  v104 = &v89 - v12;
  v103 = sub_1009360A8();
  v108 = *(v103 - 8);
  __chkstk_darwin(v103 - 8);
  v110 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v101 = *(v14 - 8);
  v102 = v14;
  __chkstk_darwin(v14);
  v107 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v109 = &v89 - v17;
  __chkstk_darwin(v18);
  v114 = &v89 - v19;
  __chkstk_darwin(v20);
  v100 = &v89 - v21;
  v22 = *a1;
  v106 = a2;
  v117 = a2;
  v118 = a3;

  sub_100846A00(sub_10084CA88, v116, v22);
  v23 = v5;
  v113 = sub_10084CAB8(v24);

  v115 = a1;
  v25 = a1[1];
  v26 = v25 + 64;
  v27 = 1 << *(v25 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v25 + 64);
  v30 = (v27 + 63) >> 6;
  v112 = v25;

  v31 = 0;
  while (v29)
  {
LABEL_11:
    v33 = v113;
    v34 = *(v112[6] + ((v31 << 9) | (8 * __clz(__rbit64(v29)))));

    v36 = v23;
    v37 = sub_10084CF58(v35, v33);
    v111 = v36;

    v38 = v115;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v38[1];
    v119 = v40;
    v41 = sub_10072517C(v34);
    v43 = *(v40 + 16);
    v44 = (v42 & 1) == 0;
    v45 = __OFADD__(v43, v44);
    v46 = v43 + v44;
    if (v45)
    {
      goto LABEL_41;
    }

    v47 = v42;
    if (*(v40 + 24) < v46)
    {
      sub_100849CEC(v46, isUniquelyReferenced_nonNull_native);
      v41 = sub_10072517C(v34);
      if ((v47 & 1) != (v48 & 1))
      {
        goto LABEL_43;
      }

LABEL_16:
      v49 = v119;
      if (v47)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v52 = v41;
    sub_10084A9DC();
    v41 = v52;
    v49 = v119;
    if (v47)
    {
LABEL_4:
      *(v49[7] + 8 * v41) = v37;

      goto LABEL_5;
    }

LABEL_17:
    v49[(v41 >> 6) + 8] |= 1 << v41;
    *(v49[6] + 8 * v41) = v34;
    *(v49[7] + 8 * v41) = v37;
    v50 = v49[2];
    v45 = __OFADD__(v50, 1);
    v51 = v50 + 1;
    if (v45)
    {
      goto LABEL_42;
    }

    v49[2] = v51;
LABEL_5:
    v29 &= v29 - 1;
    v115[1] = v49;
    v23 = v111;
  }

  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v32 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v32);
    ++v31;
    if (v29)
    {
      v31 = v32;
      goto LABEL_11;
    }
  }

  v111 = v23;

  v54 = 0;
  v55 = v113 + 56;
  v56 = 1 << *(v113 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(v113 + 56);
  v98 = OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_l;
  v59 = (v56 + 63) >> 6;
  v92 = "resetKeysForPropagate()";
  v96 = (v108 + 16);
  v95 = v108 + 32;
  v112 = &_swiftEmptyArrayStorage;
  *&v53 = 136315650;
  v91 = v53;
  v60 = v109;
  v99 = v113 + 56;
  v97 = v59;
  for (i = v107; v58; i = v107)
  {
LABEL_29:
    v64 = v100;
    sub_10084C29C(*(v113 + 48) + *(v101 + 72) * (__clz(__rbit64(v58)) | (v54 << 6)), v100);
    v65 = v64;
    v66 = v114;
    sub_10084CA20(v65, v114, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    sub_10084C29C(v66, v60);
    sub_10084C29C(v66, i);
    v67 = sub_1009364B8();
    v68 = sub_100936F18();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v119 = v94;
      *v69 = v91;
      *(v69 + 4) = sub_10001273C(0xD000000000000013, v92 | 0x8000000000000000, &v119);
      *(v69 + 12) = 2080;
      v70 = v102;
      v93 = v68;
      sub_10084D3C8(&qword_100CB2DA8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v71 = v103;
      v72 = sub_100937548();
      v74 = v73;
      sub_10084C300(v109);
      v75 = sub_10001273C(v72, v74, &v119);

      *(v69 + 14) = v75;
      *(v69 + 22) = 2080;
      sub_10084D3C8(&qword_100CB2DA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent, &unk_1009AD4B0);
      v76 = sub_100937548();
      v78 = v77;
      sub_10084C300(i);
      v79 = sub_10001273C(v76, v78, &v119);

      *(v69 + 24) = v79;
      _os_log_impl(&_mh_execute_header, v67, v93, "%s: removing expired key %s: %s", v69, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10084C300(i);
      sub_10084C300(v60);
      v70 = v102;
      v71 = v103;
    }

    v80 = *(v70 + 20);
    (*v96)(v110, v114 + v80, v71);
    v81 = v112;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_1008470DC(0, v81[2] + 1, 1, v81);
    }

    v83 = v81[2];
    v82 = v81[3];
    if (v83 >= v82 >> 1)
    {
      v81 = sub_1008470DC((v82 > 1), v83 + 1, 1, v81);
    }

    v58 &= v58 - 1;
    v81[2] = v83 + 1;
    v84 = (*(v108 + 80) + 32) & ~*(v108 + 80);
    v112 = v81;
    (*(v108 + 32))(v81 + v84 + *(v108 + 72) * v83, v110, v71);
    v85 = v114;
    v86 = v104;
    sub_1008496C4(v114 + v80, v104);
    sub_100013814(v86, &qword_100CB2AA0, &unk_1009B37D0);
    sub_100743C1C(v85, v86);
    sub_100013814(v86, &qword_100CB2AA0, &unk_1009B37D0);
    v87 = v105;
    sub_10084AB38(v85 + v80, v105);
    sub_100013814(v87, &qword_100CB2D98, &qword_1009AC5D0);
    sub_10084AB38(v85 + v80, v87);
    sub_100013814(v87, &qword_100CB2D98, &qword_1009AC5D0);
    sub_10084C300(v85);
    v55 = v99;
    v59 = v97;
    v60 = v109;
  }

  v62 = v112;
  while (1)
  {
    v63 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v63 >= v59)
    {

      *v90 = v62;
      return result;
    }

    v58 = *(v55 + 8 * v63);
    ++v54;
    if (v58)
    {
      v54 = v63;
      goto LABEL_29;
    }
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_1009375D8();
  __break(1u);
  return result;
}

uint64_t sub_1008468F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100936038();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  sub_100935F48();
  v7 = sub_100935F78();
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

void sub_100846A00(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = a2;
  v5 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v36 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = 0;
  v37 = a3;
  v16 = *(a3 + 64);
  v15 = a3 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v33 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v21 = v13;
    if (!v19)
    {
      break;
    }

LABEL_8:
    v22 = *(v36 + 72);
    sub_10084C29C(*(v37 + 56) + v22 * (__clz(__rbit64(v19)) | (v13 << 6)), v9);
    sub_10084CA20(v9, v12, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v23 = v34(v12);
    if (v3)
    {
      sub_10084C300(v12);

      return;
    }

    v19 &= v19 - 1;
    if (v23)
    {
      sub_10084CA20(v12, v32, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v24 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10084B710(0, v24[2] + 1, 1);
        v24 = v38;
      }

      v27 = v24[2];
      v26 = v24[3];
      v28 = (v27 + 1);
      if (v27 >= v26 >> 1)
      {
        v33 = (v27 + 1);
        v31 = v27;
        sub_10084B710((v26 > 1), v27 + 1, 1);
        v28 = v33;
        v27 = v31;
        v24 = v38;
      }

      v24[2] = v28;
      v29 = *(v36 + 80);
      v33 = v24;
      sub_10084CA20(v32, v24 + ((v29 + 32) & ~v29) + v27 * v22, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    }

    else
    {
      sub_10084C300(v12);
    }
  }

  while (1)
  {
    v13 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v13 >= v20)
    {

      return;
    }

    v19 = *(v15 + 8 * v13);
    ++v21;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_100846CF0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1009364B8();
  v4 = sub_100936F18();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10001273C(0x29287465736572, 0xE700000000000000, &v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: resetting...", v5, 0xCu);
    sub_100012970(v6);
  }

  v7 = *(v2 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  v8 = (v7 + *(*v7 + class metadata base offset for ManagedBuffer + 16));
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v7 + v9));
  v10 = sub_10084BEBC(&_swiftEmptyArrayStorage);

  *v8 = v10;
  v11 = sub_10084C0D8(&_swiftEmptyArrayStorage);

  v8[1] = v11;

  v8[2] = &_swiftEmptySetSingleton;

  v8[3] = &_swiftEmptySetSingleton;

  v8[4] = &_swiftEmptySetSingleton;
  os_unfair_lock_unlock((v7 + v9));
}

uint64_t sub_100846ED8()
{
  v1 = OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_l;
  v2 = sub_1009364D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100308C44(v0 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_delegate);

  return swift_deallocClassInstance();
}

char *sub_100846FD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100706B30(&unk_100CBA2D0, &qword_1009B8FB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_1008470DC(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100706B30(&qword_100CB81E0, &qword_1009B8F90);
  v10 = *(sub_1009360A8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1009360A8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1008472B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100706B30(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1008473B0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1009360A8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = sub_100936AC8();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10084D3C8(&qword_100CB34E8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = sub_100936B18();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1008479EC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100847690(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1009360A8();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100706B30(&qword_100CB81D0, &unk_1009B8F78);
  result = sub_100937208();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_100936AC8();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1008479EC(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1009360A8();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100847690(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100847C90();
      goto LABEL_12;
    }

    sub_100847EC8(v11 + 1);
  }

  v13 = *v3;
  sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = sub_100936AC8();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_10084D3C8(&qword_100CB34E8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = sub_100936B18();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1009375C8();
  __break(1u);
  return result;
}

void *sub_100847C90()
{
  v1 = v0;
  v2 = sub_1009360A8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(&qword_100CB81D0, &unk_1009B8F78);
  v6 = *v0;
  v7 = sub_1009371F8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_100847EC8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1009360A8();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100706B30(&qword_100CB81D0, &unk_1009B8F78);
  v7 = sub_100937208();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_100936AC8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

void sub_1008481E4(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_10084BE24(v5);
  }

  sub_1008482A4(a1, a2);
  *v2 = v5;
}

void sub_1008482A4(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  v6 = sub_100937538(v5);
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
        v9 = sub_100936D28();
        v9[2] = v8;
      }

      v10 = *(type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_100848620(v11, v12, v2, a1, a2, v7);
      v9[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1008483E0(0, v5, 1, a1);
  }
}

void sub_1008483E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v36 = a4;
  v35 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  __chkstk_darwin(v35);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *v4;
    v18 = *(v14 + 72);
    v19 = *v4 + v18 * (a3 - 1);
    v32 = -v18;
    v33 = v17;
    v20 = a1 - a3;
    v26 = v18;
    v21 = v17 + v18 * a3;
LABEL_4:
    v30 = v19;
    v31 = a3;
    v28 = v21;
    v29 = v20;
    v22 = v19;
    while (1)
    {
      sub_10084C29C(v21, v16);
      sub_10084C29C(v22, v12);
      v23 = v36(v16, v12);
      sub_10084C300(v12);
      sub_10084C300(v16);
      if (v5)
      {
        break;
      }

      if (v23)
      {
        if (!v33)
        {
          __break(1u);
          return;
        }

        v24 = v34;
        sub_10084CA20(v21, v34, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        swift_arrayInitWithTakeFrontToBack();
        sub_10084CA20(v24, v22, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v22 += v32;
        v21 += v32;
        if (!__CFADD__(v20++, 1))
        {
          continue;
        }
      }

      a3 = v31 + 1;
      v19 = v30 + v26;
      v20 = v29 - 1;
      v21 = v28 + v26;
      if (v31 + 1 != v27)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_100848620(char **a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, char *), int64_t a5, uint64_t a6)
{
  v137 = a5;
  v138 = a4;
  v126 = a1;
  v131 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v136 = *(v131 - 8);
  __chkstk_darwin(v131);
  v127 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v129 = &v116 - v11;
  __chkstk_darwin(v12);
  v14 = &v116 - v13;
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v19 = &v116 - v18;
  __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  v26 = a3[1];
  v132 = a3;
  if (v26 < 1)
  {
    v28 = &_swiftEmptyArrayStorage;
LABEL_97:
    v29 = v137;
    v14 = *v126;
    if (*v126)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_99;
    }

    goto LABEL_139;
  }

  v120 = &v116 - v22;
  v121 = v25;
  v133 = v24;
  v128 = v23;
  v119 = a6;
  v27 = 0;
  v28 = &_swiftEmptyArrayStorage;
  v130 = v14;
  v123 = v19;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    if (v30 >= v26)
    {
      v42 = v30;
    }

    else
    {
      v125 = v26;
      v31 = *a3;
      v32 = *(v136 + 72);
      v33 = v29;
      v34 = v31 + v32 * v30;
      v35 = v120;
      sub_10084C29C(v34, v120);
      v122 = v31;
      v36 = v121;
      sub_10084C29C(v31 + v32 * v33, v121);
      LODWORD(v135) = v138(v35, v36);
      if (v6)
      {
        sub_10084C300(v36);
        v115 = v35;
        goto LABEL_109;
      }

      sub_10084C300(v36);
      sub_10084C300(v35);
      v118 = v125 - 1;
      v134 = v125 - 2;
      v37 = v122 + v32 * (v33 + 2);
      v122 = v33;
      v38 = v33;
      while (v134 != v38)
      {
        sub_10084C29C(v37, v19);
        v39 = v19;
        v40 = v133;
        sub_10084C29C(v34, v133);
        v41 = v138(v39, v40);
        sub_10084C300(v40);
        sub_10084C300(v39);
        ++v38;
        v37 += v32;
        v34 += v32;
        v19 = v39;
        if ((v135 ^ v41))
        {
          v42 = v38 + 1;
          goto LABEL_12;
        }
      }

      v38 = v118;
      v42 = v125;
LABEL_12:
      v14 = v130;
      v29 = v122;
      if ((v135 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v42 < v122)
      {
        goto LABEL_133;
      }

      if (v122 <= v38)
      {
        v43 = v42;
        v44 = v32 * (v42 - 1);
        v45 = v42 * v32;
        v124 = v32;
        v125 = v42;
        v46 = v122;
        v47 = v122 * v32;
        do
        {
          if (v46 != --v43)
          {
            v48 = *v132;
            if (!*v132)
            {
              goto LABEL_137;
            }

            sub_10084CA20(v48 + v47, v127, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
            if (v47 < v44 || v48 + v47 >= (v48 + v45))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v47 != v44)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_10084CA20(v127, v48 + v44, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
            v32 = v124;
          }

          ++v46;
          v44 -= v32;
          v45 -= v32;
          v47 += v32;
        }

        while (v46 < v43);
        a3 = v132;
        v14 = v130;
        v29 = v122;
        v42 = v125;
      }

      else
      {
LABEL_15:
        a3 = v132;
      }
    }

    v49 = a3[1];
    if (v42 >= v49)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v42, v29))
    {
      goto LABEL_129;
    }

    if (v42 - v29 >= v119)
    {
LABEL_36:
      v51 = v42;
      if (v42 < v29)
      {
        goto LABEL_128;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v29, v119))
    {
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    if (v29 + v119 >= v49)
    {
      v50 = a3[1];
    }

    else
    {
      v50 = v29 + v119;
    }

    if (v50 < v29)
    {
      goto LABEL_132;
    }

    if (v42 == v50)
    {
      goto LABEL_36;
    }

    v98 = *a3;
    v99 = *(v136 + 72);
    v100 = *a3 + v99 * (v42 - 1);
    v101 = -v99;
    v122 = v29;
    v102 = v29 - v42;
    v125 = v42;
    v135 = v98;
    v116 = v99;
    v103 = v98 + v42 * v99;
    v134 = v50;
    do
    {
      v117 = v103;
      v118 = v102;
      v104 = v102;
      v124 = v100;
      do
      {
        v105 = v128;
        sub_10084C29C(v103, v128);
        sub_10084C29C(v100, v14);
        v106 = v138(v105, v14);
        if (v6)
        {
          sub_10084C300(v14);
          v115 = v105;
LABEL_109:
          sub_10084C300(v115);
          goto LABEL_110;
        }

        v107 = v106;
        sub_10084C300(v14);
        sub_10084C300(v105);
        if ((v107 & 1) == 0)
        {
          break;
        }

        if (!v135)
        {
          goto LABEL_135;
        }

        v108 = v129;
        sub_10084CA20(v103, v129, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        swift_arrayInitWithTakeFrontToBack();
        sub_10084CA20(v108, v100, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v100 += v101;
        v103 += v101;
        v109 = __CFADD__(v104++, 1);
        v14 = v130;
      }

      while (!v109);
      v100 = v124 + v116;
      v102 = v118 - 1;
      v103 = v117 + v116;
      v51 = v134;
      ++v125;
    }

    while (v125 != v134);
    a3 = v132;
    v29 = v122;
    if (v134 < v122)
    {
      goto LABEL_128;
    }

LABEL_37:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_100846FD8(0, *(v28 + 2) + 1, 1, v28);
    }

    v53 = *(v28 + 2);
    v52 = *(v28 + 3);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      v28 = sub_100846FD8((v52 > 1), v53 + 1, 1, v28);
    }

    *(v28 + 2) = v54;
    v55 = &v28[16 * v53];
    *(v55 + 4) = v29;
    *(v55 + 5) = v51;
    v56 = *v126;
    if (!*v126)
    {
      goto LABEL_138;
    }

    v134 = v51;
    if (v53)
    {
      break;
    }

LABEL_3:
    v26 = a3[1];
    v27 = v134;
    v19 = v123;
    if (v134 >= v26)
    {
      goto LABEL_97;
    }
  }

  while (2)
  {
    v29 = v54 - 1;
    if (v54 >= 4)
    {
      v61 = &v28[16 * v54 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_115;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_116;
      }

      v68 = &v28[16 * v54];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_118;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_121;
      }

      if (v72 >= v64)
      {
        v90 = &v28[16 * v29 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_127;
        }

        if (v59 < v93)
        {
          v29 = v54 - 2;
        }
      }

      else
      {
LABEL_56:
        if (v60)
        {
          goto LABEL_117;
        }

        v73 = &v28[16 * v54];
        v75 = *v73;
        v74 = *(v73 + 1);
        v76 = __OFSUB__(v74, v75);
        v77 = v74 - v75;
        v78 = v76;
        if (v76)
        {
          goto LABEL_120;
        }

        v79 = &v28[16 * v29 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v67 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v67)
        {
          goto LABEL_123;
        }

        if (__OFADD__(v77, v82))
        {
          goto LABEL_124;
        }

        if (v77 + v82 < v59)
        {
          goto LABEL_70;
        }

        if (v59 < v82)
        {
          v29 = v54 - 2;
        }
      }
    }

    else
    {
      if (v54 == 3)
      {
        v57 = *(v28 + 4);
        v58 = *(v28 + 5);
        v67 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        v60 = v67;
        goto LABEL_56;
      }

      v83 = &v28[16 * v54];
      v85 = *v83;
      v84 = *(v83 + 1);
      v67 = __OFSUB__(v84, v85);
      v77 = v84 - v85;
      v78 = v67;
LABEL_70:
      if (v78)
      {
        goto LABEL_119;
      }

      v86 = &v28[16 * v29];
      v88 = *(v86 + 4);
      v87 = *(v86 + 5);
      v67 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v67)
      {
        goto LABEL_122;
      }

      if (v89 < v77)
      {
        goto LABEL_3;
      }
    }

    v94 = v29 - 1;
    if (v29 - 1 < v54)
    {
      if (!*a3)
      {
        goto LABEL_134;
      }

      v95 = *&v28[16 * v94 + 32];
      v96 = *&v28[16 * v29 + 40];
      sub_100848FE8(*a3 + *(v136 + 72) * v95, *a3 + *(v136 + 72) * *&v28[16 * v29 + 32], *a3 + *(v136 + 72) * v96, v56, v138, v137);
      if (v6)
      {
        goto LABEL_110;
      }

      if (v96 < v95)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1008495CC(v28);
      }

      if (v94 >= *(v28 + 2))
      {
        goto LABEL_114;
      }

      v97 = &v28[16 * v94];
      *(v97 + 4) = v95;
      *(v97 + 5) = v96;
      v139 = v28;
      sub_100849540(v29);
      v28 = v139;
      v54 = *(v139 + 2);
      if (v54 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

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
LABEL_130:
  v28 = sub_1008495CC(v28);
LABEL_99:
  v139 = v28;
  v110 = *(v28 + 2);
  if (v110 < 2)
  {
LABEL_110:

    return;
  }

  while (1)
  {
    v111 = *a3;
    if (!*a3)
    {
      break;
    }

    a3 = (v110 - 1);
    v112 = *&v28[16 * v110];
    v113 = *&v28[16 * v110 + 24];
    sub_100848FE8(v111 + *(v136 + 72) * v112, v111 + *(v136 + 72) * *&v28[16 * v110 + 16], v111 + *(v136 + 72) * v113, v14, v138, v29);
    if (v6)
    {
      goto LABEL_110;
    }

    if (v113 < v112)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1008495CC(v28);
    }

    if (v110 - 2 >= *(v28 + 2))
    {
      goto LABEL_126;
    }

    v114 = &v28[16 * v110];
    *v114 = v112;
    *(v114 + 1) = v113;
    v139 = v28;
    sub_100849540(a3);
    v28 = v139;
    v110 = *(v139 + 2);
    a3 = v132;
    if (v110 <= 1)
    {
      goto LABEL_110;
    }
  }

LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

void sub_100848FE8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v57 = a6;
  v58 = a5;
  v56 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  __chkstk_darwin(v56);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v53 = &v47 - v15;
  __chkstk_darwin(v16);
  v18 = &v47 - v17;
  __chkstk_darwin(v19);
  v21 = &v47 - v20;
  v55 = *(v22 + 72);
  if (!v55)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v55 == -1)
  {
    goto LABEL_65;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v55 == -1)
  {
    goto LABEL_66;
  }

  v54 = a3;
  v24 = (a2 - a1) / v55;
  v61 = a1;
  v60 = a4;
  if (v24 >= v23 / v55)
  {
    v26 = v23 / v55 * v55;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v33 = a4 + v26;
    if (v26 >= 1)
    {
      v34 = v54;
      v35 = -v55;
      v36 = v33;
      v49 = v13;
      v50 = a1;
      do
      {
        v47 = v33;
        v37 = a2;
        v51 = a2;
        v52 = a2 + v35;
        while (1)
        {
          if (v37 <= a1)
          {
            v61 = v37;
            v33 = v47;
            goto LABEL_62;
          }

          v38 = v34;
          v48 = v33;
          v39 = v7;
          v40 = a4;
          v55 = v36;
          v41 = v36 + v35;
          v42 = v53;
          sub_10084C29C(v36 + v35, v53);
          sub_10084C29C(v52, v13);
          v43 = v58(v42, v13);
          if (v39)
          {
            sub_10084C300(v13);
            sub_10084C300(v42);
            v61 = v51;
            v33 = v48;
            goto LABEL_62;
          }

          v44 = v43;
          v54 = 0;
          v45 = v38 + v35;
          sub_10084C300(v13);
          sub_10084C300(v42);
          if (v44)
          {
            break;
          }

          v33 = v41;
          v34 = v38 + v35;
          if (v38 < v55 || v45 >= v55)
          {
            swift_arrayInitWithTakeFrontToBack();
            v33 = v41;
            a4 = v40;
          }

          else
          {
            a4 = v40;
            if (v38 != v55)
            {
              swift_arrayInitWithTakeBackToFront();
              v33 = v41;
            }
          }

          v36 = v33;
          v7 = v54;
          v13 = v49;
          a1 = v50;
          v37 = v51;
          if (v41 <= a4)
          {
            a2 = v51;
            goto LABEL_61;
          }
        }

        v34 = v38 + v35;
        if (v38 < v51 || v45 >= v51)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          a4 = v40;
        }

        else
        {
          v46 = v38 == v51;
          a2 = v52;
          a4 = v40;
          if (!v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v7 = v54;
        v36 = v55;
        v13 = v49;
        a1 = v50;
        v33 = v48;
      }

      while (v55 > a4);
    }

LABEL_61:
    v61 = a2;
LABEL_62:
    v59 = v33;
  }

  else
  {
    v25 = v24 * v55;
    if (a4 < a1 || a1 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v25;
    v59 = a4 + v25;
    if (v25 >= 1 && a2 < v54)
    {
      while (1)
      {
        sub_10084C29C(a2, v21);
        sub_10084C29C(a4, v18);
        v29 = v58(v21, v18);
        if (v6)
        {
          break;
        }

        v30 = v29;
        sub_10084C300(v18);
        sub_10084C300(v21);
        if (v30)
        {
          v31 = v55;
          if (a1 < a2 || a1 >= a2 + v55)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v31;
        }

        else
        {
          v31 = v55;
          v32 = a4 + v55;
          if (a1 < a4 || a1 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v60 = v32;
          a4 += v31;
        }

        a1 += v31;
        v61 = a1;
        if (a4 >= v27 || a2 >= v54)
        {
          goto LABEL_63;
        }
      }

      sub_10084C300(v18);
      sub_10084C300(v21);
    }
  }

LABEL_63:
  sub_1008495E0(&v61, &v60, &v59);
}

uint64_t sub_100849540(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1008495CC(v3);
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

uint64_t sub_1008495E0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1008496C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100725034(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10084A6C4();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1009360A8();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
    v20 = *(v13 - 8);
    sub_10084CA20(v12 + *(v20 + 72) * v7, a2, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    sub_100849F5C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_100849860(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v42 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1009360A8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100706B30(&qword_100CB81D8, &qword_1009B8F88);
  v43 = v4;
  result = sub_100937418();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_10084CA20(v27 + v28 * v24, v47, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_10084C29C(v29 + v28 * v24, v47);
      }

      sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_100936AC8();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_10084CA20(v47, *(v12 + 56) + v28 * v20, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_100849CEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100706B30(&qword_100CB81E8, &qword_1009B8F98);
  result = sub_100937418();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      }

      result = sub_100937658();
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

LABEL_35:
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
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

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_100849F5C(int64_t a1, uint64_t a2)
{
  v4 = sub_1009360A8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_1009370D8();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = sub_100936AC8();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0) - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

uint64_t sub_10084A2A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1009360A8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100725034(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10084A6C4();
      goto LABEL_7;
    }

    sub_100849860(v17, a3 & 1);
    v24 = sub_100725034(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10084A5D4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1009375D8();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0) - 8) + 72) * v14;

  return sub_10084D410(a1, v22);
}

unint64_t sub_10084A488(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10072517C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100849CEC(v14, a3 & 1);
      result = sub_10072517C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1009375D8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_10084A9DC();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_10084A5D4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1009360A8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  result = sub_10084CA20(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

char *sub_10084A6C4()
{
  v1 = v0;
  v2 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v36 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1009360A8();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(&qword_100CB81D8, &qword_1009B8F88);
  v5 = *v0;
  v6 = sub_100937408();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_10084C29C(*(v5 + 56) + v26, v35);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_10084CA20(v25, *(v27 + 56) + v26, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void sub_10084A9DC()
{
  v1 = v0;
  sub_100706B30(&qword_100CB81E8, &qword_1009B8F98);
  v2 = *v0;
  v3 = sub_100937408();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_10084AB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1009360A8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v31 = a1;
  v10 = sub_100936AC8();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_10084D3C8(&qword_100CB34E8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = sub_100936B18();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100847C90();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_10084ADE0(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void sub_10084ADE0(int64_t a1)
{
  v3 = sub_1009360A8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_1009370D8();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v23 = sub_100936AC8();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

void sub_10084B0E8()
{
  v1 = sub_1009360A8();
  v25 = *(v1 - 8);
  __chkstk_darwin(v1);
  v28 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v29 = &v21 - v4;
  v24 = v0;
  v5 = *v0;
  v6 = *(*v0 + 2);
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    v8 = 0;
    v21 = v6 - 2;
    v22 = (v25 + 40);
    v23 = v25 + 16;
    while (1)
    {
      v30 = 0;
      swift_stdlib_random();
      v10 = (v30 * v6) >> 64;
      if (v6 > v30 * v6)
      {
        v11 = -v6 % v6;
        if (v11 > v30 * v6)
        {
          do
          {
            v30 = 0;
            swift_stdlib_random();
          }

          while (v11 > v30 * v6);
          v10 = (v30 * v6) >> 64;
        }
      }

      v12 = v8 + v10;
      if (__OFADD__(v8, v10))
      {
        break;
      }

      if (v8 != v12)
      {
        v13 = *(v5 + 2);
        if (v8 >= v13)
        {
          goto LABEL_19;
        }

        v14 = v1;
        v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
        v15 = &v5[v27];
        v16 = *(v25 + 72);
        v17 = *(v25 + 16);
        v26 = v16 * v8;
        v17(v29, &v5[v27 + v16 * v8], v14);
        if (v12 >= v13)
        {
          goto LABEL_20;
        }

        v18 = v16 * v12;
        v17(v28, &v15[v16 * v12], v14);
        v1 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_10084BE70(v5);
        }

        if (v8 >= *(v5 + 2))
        {
          goto LABEL_21;
        }

        v19 = &v5[v27];
        v20 = *v22;
        (*v22)(&v5[v27 + v26], v28, v14);
        if (v12 >= *(v5 + 2))
        {
          goto LABEL_22;
        }

        v20(&v19[v18], v29, v14);
        *v24 = v5;
        v7 = v21;
      }

      --v6;
      if (v8++ == v7)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

unint64_t *sub_10084B38C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10084CC20(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_10084B428(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100706B30(&qword_100CB2D90, &unk_1009B3930);
  result = sub_100937228();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v20 = *(v32 + 72);
    sub_10084C29C(v19 + v20 * (v16 | (v14 << 6)), v10);
    sub_10084D3C8(&qword_100CB2D80, type metadata accessor for IDSGroupEncryptionKeyMaterialContent, &unk_1009AD448);
    result = sub_100936AC8();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_10084CA20(v10, *(v11 + 48) + v24 * v20, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_10084B710(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10084B754(a1, a2, a3, *v3, &qword_100CB81F0, &unk_1009B8FA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  *v3 = result;
  return result;
}

void *sub_10084B754(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100706B30(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_10084B930(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v32 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v30 = &v27 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v16 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v16;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a3;
    v16 = 0;
    v27 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v31;
      a1 = *(v32 + 72);
      sub_10084C29C(*(a4 + 48) + a1 * (v21 | (v16 << 6)), v31);
      v23 = v22;
      v24 = v30;
      sub_10084CA20(v23, v30, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      sub_10084CA20(v24, a2, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      if (v18 == v29)
      {
        a1 = v28;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v17;
    }

    v16 = v26 - 1;
    a1 = v28;
LABEL_23:
    v13 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_10084BB80(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1009360A8();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

unint64_t sub_10084BEBC(uint64_t a1)
{
  v2 = sub_100706B30(&qword_100CB8208, &unk_1009B8FD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100706B30(&qword_100CB81D8, &qword_1009B8F88);
    v7 = sub_100937438();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100012D50(v9, v5, &qword_100CB8208, &unk_1009B8FD0);
      result = sub_100725034(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1009360A8();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
      result = sub_10084CA20(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10084C0D8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100706B30(&qword_100CB81E8, &qword_1009B8F98);
  v3 = sub_100937438();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_10072517C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_10072517C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10084C22C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100840A54(a1, *(v2 + 24));
  *a2 = result & 1;
  return result;
}

uint64_t sub_10084C29C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10084C300(uint64_t a1)
{
  v2 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10084C3B4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v17 - v11;
  v13 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_10084D3C8(&qword_100CB2D80, type metadata accessor for IDSGroupEncryptionKeyMaterialContent, &unk_1009AD448);
  v17[1] = sub_100936E38();
  v14 = v13 - a2;
  if (v13 == a2)
  {
    return;
  }

  if (v13 <= a2)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v15 = *(v7 + 72);
  v16 = a1 + v15 * a2;
  do
  {
    sub_10084C29C(v16, v9);
    sub_1007139D8(v12, v9);
    sub_10084C300(v12);
    v16 += v15;
    --v14;
  }

  while (v14);
}

uint64_t sub_10084C564@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10083F9F0(*(v2 + 16), *(a1 + 24));
  *a2 = result & 1;
  return result;
}

uint64_t sub_10084C614(uint64_t a1)
{
  result = sub_1009364D8();
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

void sub_10084C70C(uint64_t a1)
{
  sub_10084C7D8(319);
  if (v1 <= 0x3F)
  {
    sub_10084C884(319);
    if (v2 <= 0x3F)
    {
      sub_10084C8F8(319);
      if (v3 <= 0x3F)
      {
        sub_10084C98C(319);
        if (v4 <= 0x3F)
        {
          sub_100936038();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10084C7D8(uint64_t a1)
{
  if (!qword_100CB8170)
  {
    sub_1009360A8();
    type metadata accessor for IDSGroupEncryptionKeyMaterialContent(255);
    sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v1 = sub_100936AB8();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB8170);
    }
  }
}

void sub_10084C884(uint64_t a1)
{
  if (!qword_100CB8178)
  {
    sub_1007147D0(&qword_100CB8180, &unk_1009B8F68);
    v1 = sub_100936AB8();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB8178);
    }
  }
}

void sub_10084C8F8(uint64_t a1)
{
  if (!qword_100CB8188)
  {
    type metadata accessor for IDSGroupEncryptionKeyMaterialContent(255);
    sub_10084D3C8(&qword_100CB2D80, type metadata accessor for IDSGroupEncryptionKeyMaterialContent, &unk_1009AD448);
    v1 = sub_100936E68();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB8188);
    }
  }
}

void sub_10084C98C(uint64_t a1)
{
  if (!qword_100CB8190)
  {
    sub_1009360A8();
    sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v1 = sub_100936E68();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB8190);
    }
  }
}

uint64_t sub_10084CA20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10084CAB8(uint64_t a1)
{
  v2 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_10084D3C8(&qword_100CB2D80, type metadata accessor for IDSGroupEncryptionKeyMaterialContent, &unk_1009AD448);
  result = sub_100936E38();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10084C29C(v11, v5);
      sub_1007139D8(v8, v5);
      sub_10084C300(v8);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

void sub_10084CC20(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v34 = a1;
  v6 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v36 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v37 = a3;
  v38 = 0;
  v12 = 0;
  v13 = *(a3 + 56);
  v33 = a3 + 56;
  v14 = 1 << *(a3 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v18 = a4;
  v41 = a4 + 56;
  v35 = v17;
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v40 = (v16 - 1) & v16;
LABEL_13:
    v22 = v19 | (v12 << 6);
    v23 = *(v37 + 48);
    v24 = *(v36 + 72);
    v39 = v22;
    sub_10084C29C(v23 + v24 * v22, v11);
    if (*(v18 + 16) && (sub_10084D3C8(&qword_100CB2D80, type metadata accessor for IDSGroupEncryptionKeyMaterialContent, &unk_1009AD448), v25 = sub_100936AC8(), v26 = -1 << *(v18 + 32), v27 = v25 & ~v26, ((*(v41 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0))
    {
      v28 = ~v26;
      while (1)
      {
        sub_10084C29C(*(v18 + 48) + v27 * v24, v8);
        sub_10084D3C8(&qword_100CB2D88, type metadata accessor for IDSGroupEncryptionKeyMaterialContent, &unk_1009AD488);
        v29 = sub_100936B18();
        sub_10084C300(v8);
        if (v29)
        {
          break;
        }

        v27 = (v27 + 1) & v28;
        if (((*(v41 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      sub_10084C300(v11);
      v17 = v35;
      v16 = v40;
    }

    else
    {
LABEL_18:
      sub_10084C300(v11);
      *(v34 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      v30 = __OFADD__(v38++, 1);
      v17 = v35;
      v16 = v40;
      if (v30)
      {
        __break(1u);
LABEL_21:
        v31 = v37;

        sub_10084B428(v34, v32, v38, v31);
        return;
      }
    }
  }

  v20 = v12;
  while (1)
  {
    v12 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v12 >= v17)
    {
      goto LABEL_21;
    }

    v21 = *(v33 + 8 * v12);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v40 = (v21 - 1) & v21;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_10084CF58(uint64_t a1, size_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v45 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v38 - v10;
  v12 = *(a1 + 32);
  v13 = v12 & 0x3F;
  v14 = ((1 << v12) + 63) >> 6;
  v15 = 8 * v14;

  v49 = a2;
  if (v13 > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v39 = v14;
    v40 = v3;
    v38[1] = v38;
    __chkstk_darwin(v16);
    v42 = v38 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v42, v15);
    v46 = 0;
    v3 = 0;
    v17 = *(a1 + 56);
    v41 = a1 + 56;
    v18 = 1 << *(a1 + 32);
    v19 = v18 < 64 ? ~(-1 << v18) : -1;
    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    v14 = a2 + 56;
    v15 = a2;
    v43 = v21;
    v44 = a1;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v48 = (v20 - 1) & v20;
LABEL_14:
      v25 = v22 | (v3 << 6);
      v26 = *(a1 + 48);
      v27 = *(v45 + 72);
      v47 = v25;
      sub_10084C29C(v26 + v27 * v25, v11);
      if (*(v15 + 16) && (sub_10084D3C8(&qword_100CB2D80, type metadata accessor for IDSGroupEncryptionKeyMaterialContent, &unk_1009AD448), v28 = sub_100936AC8(), v15 = v49, v29 = -1 << *(v49 + 32), v30 = v28 & ~v29, ((*(v14 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
      {
        v31 = ~v29;
        while (1)
        {
          sub_10084C29C(*(v15 + 48) + v30 * v27, v8);
          sub_10084D3C8(&qword_100CB2D88, type metadata accessor for IDSGroupEncryptionKeyMaterialContent, &unk_1009AD488);
          v32 = sub_100936B18();
          sub_10084C300(v8);
          if (v32)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          v15 = v49;
          if (((*(v14 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        sub_10084C300(v11);
        v20 = v48;
        v15 = v49;
        v21 = v43;
        a1 = v44;
      }

      else
      {
LABEL_19:
        sub_10084C300(v11);
        *&v42[(v47 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v47;
        v33 = __OFADD__(v46++, 1);
        v21 = v43;
        a1 = v44;
        v20 = v48;
        if (v33)
        {
          __break(1u);
LABEL_22:
          v34 = sub_10084B428(v42, v39, v46, a1);

          return v34;
        }
      }
    }

    v23 = v3;
    while (1)
    {
      v3 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v3 >= v21)
      {
        goto LABEL_22;
      }

      v24 = *(v41 + 8 * v3);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v48 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_25:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a2 = v49;
  }

  v36 = swift_slowAlloc();
  v37 = v49;

  v34 = sub_10084B38C(v36, v14, a1, v37);

  return v34;
}

uint64_t sub_10084D3C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10084D410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10084D490(uint64_t a1, uint64_t a2)
{
  v4 = sub_100706B30(&qword_100CB81F8, &qword_1009B8FB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10084D51C()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9ED0);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9DC0);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10084D620@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9ED0);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9DC0);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10084D72C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9ED0);
  sub_100936138();
}

uint64_t sub_10084D804()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9ED0);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9DC0);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10084D908@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9ED0);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9DC0);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10084DA14(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9ED0);
  sub_100936138();
}

uint64_t sub_10084DAEC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9ED0);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9DC0);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10084DBF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9ED0);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9DC0);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10084DCFC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9ED0);
  sub_100936138();
}

uint64_t sub_10084DDD4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9ED0);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9DC0);
  sub_100022AC0(&qword_100CB3CE0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  return v0;
}

double sub_10084DF00@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9ED0);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9DC0);
  sub_100022AC0(&qword_100CB3CE0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10084E034(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9ED0);
  sub_100936138();
}

uint64_t sub_10084E10C()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9ED0);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9DC0);
  sub_100022AC0(&qword_100CB3CE0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  return v0;
}

double sub_10084E238@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9ED0);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9DC0);
  sub_100022AC0(&qword_100CB3CE0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10084E36C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9ED0);
  sub_100936138();
}

uint64_t sub_10084E444()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9ED0);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9DC0);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  return v0;
}

double sub_10084E57C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9ED0);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9DC0);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10084E6BC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9ED0);
  sub_100936138();
}

uint64_t sub_10084E794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  swift_getKeyPath();
  sub_100864C40(a5, a6, a7);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18, &protocol conformance descriptor for <A> A?);
  sub_1009368C8();
}

uint64_t sub_10084E860()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9ED0);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice(0);
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9DC0);
  sub_100864EB0();
  sub_100936898();

  return v0;
}

uint64_t sub_10084E978@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9ED0);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice(0);
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9DC0);
  sub_100864EB0();
  sub_100936898();

  *a2 = v4;
  return result;
}

uint64_t sub_10084EA98(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9ED0);
  sub_100936138();
}

uint64_t sub_10084EB64(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice(0);
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9DC0);
  sub_100864EB0();
  sub_1009368B8();
}

uint64_t sub_10084EC14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  v16 = swift_allocObject();
  sub_10084ECBC(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v16;
}

void *sub_10084ECBC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  v10 = v9;
  v12._countAndFlagsBits = a3;
  v12._object = a4;
  *(v9 + 48) = sub_100706B30(&qword_100CB8248, &qword_1009B9118);
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9DC0);
  *(v9 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v9 + 24));
  sub_100936858();
  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_100706B30(&unk_100CBA310, &qword_1009AD9F0);
  sub_100022AC0(&qword_100CB3CD8, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009366D8();

  *(v9 + 16) = 0;
  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v9 + 17) = 0;
  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB3CE8, &qword_1009ADA48);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18, &protocol conformance descriptor for <A> A?);
  sub_1009366D8();

  *(v9 + 18) = 0;
  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB8220, &qword_1009B9108);
  type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice(0);
  sub_100864EB0();
  sub_1009366C8();

  *(v9 + 19) = 0;
  sub_100936158();
  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v9 + 16) = 0;
  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v9 + 17) = 0;
  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_1007483B0(a9, *(&a9 + 1));
  sub_1009366D8();

  sub_10001C370(a9, *(&a9 + 1));
  *(v9 + 18) = 0;

  sub_100936C08(v12);

  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_1009366D8();
  sub_10001C370(a9, *(&a9 + 1));

  return v9;
}

void *sub_10084F29C(__int128 *a1)
{
  v2 = v1;
  *(v1 + 48) = sub_100706B30(&qword_100CB8248, &qword_1009B9118);
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable, &unk_1009B9DC0);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&unk_100CBA310, &qword_1009AD9F0);
  sub_100022AC0(&qword_100CB3CD8, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009366D8();

  *(v1 + 16) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v1 + 17) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB3CE8, &qword_1009ADA48);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18, &protocol conformance descriptor for <A> A?);
  sub_1009366D8();

  *(v1 + 18) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB8220, &qword_1009B9108);
  type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice(0);
  sub_100864EB0();
  sub_1009366C8();

  *(v1 + 19) = 0;
  sub_100936158();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100012970((v1 + 24));
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_10084F5FC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_10084F704@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10084F814(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936138();
}

uint64_t sub_10084F8EC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10084F9F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10084FAFC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936138();
}

uint64_t sub_10084FBD4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_10084FCDC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10084FDEC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936138();
}

uint64_t sub_10084FEC4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_10084FFCC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008500DC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936138();
}

uint64_t sub_1008501B4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1008502B8@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1008503C4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936138();
}

uint64_t sub_100850494()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_1009368A8();

  return v1;
}

uint64_t sub_100850598@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1008506A4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936138();
}

uint64_t sub_100850774()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_100022AC0(&qword_100CB3CE0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  return v0;
}

double sub_1008508A0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_100022AC0(&qword_100CB3CE0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008509D4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936138();
}

uint64_t sub_100850AAC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_1009368A8();

  return v1;
}

uint64_t sub_100850BB0@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100850CBC(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936138();
}

uint64_t sub_100850D98(uint64_t a1)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  return v1;
}

double sub_100850ED4@<D0>(void *a1@<X0>, _OWORD *a3@<X8>)
{
  *&v5 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  result = *&v5;
  *a3 = v5;
  return result;
}

uint64_t sub_100851010(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936138();
}

uint64_t sub_100851100(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936138();
}

__n128 sub_1008511D8@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_100865914();
  sub_1009368A8();

  result = v4;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

__n128 sub_100851328@<Q0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_100865914();
  sub_1009368A8();

  result = v5;
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *(a2 + 96) = v10;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_100851478(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936138();
}

uint64_t sub_100851564(uint64_t a1, __int128 *a2)
{
  swift_getKeyPath();
  v12 = *a2;
  v3 = sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_100865890(v3, v4, v5, v6, v7, v8, v9, v10, v12, *(&v12 + 1));
  sub_1009368C8();
}

uint64_t sub_100851620()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable(0);
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_1008659CC();
  sub_100936898();

  return v0;
}

uint64_t sub_100851738@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable(0);
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_1008659CC();
  sub_100936898();

  *a2 = v4;
  return result;
}

uint64_t sub_100851858(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9FFC);
  sub_100936138();
}

uint64_t sub_100851924(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable(0);
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  sub_1008659CC();
  sub_1009368B8();
}

uint64_t sub_1008519D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, __int128 a9, char a10, __int128 a11, __int128 a12, uint64_t a13)
{
  *&v35 = a5;
  *(&v35 + 1) = a6;
  *&v34 = a3;
  *(&v34 + 1) = a4;
  v14 = swift_allocObject();
  *(v14 + 48) = sub_100706B30(&qword_100CB8288, &qword_1009B9310);
  *&v38 = v13;
  *(&v38 + 1) = v13;
  *&v39 = sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  *(&v39 + 1) = v39;
  *(v14 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v14 + 24));
  sub_100936858();
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v38) = 0;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v38) = 0;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v38 = 0uLL;
  sub_100706B30(&unk_100CBA310, &qword_1009AD9F0);
  sub_100022AC0(&qword_100CB3CD8, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v38) = 0;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v38 = xmmword_1009AD8D0;
  sub_100706B30(&qword_100CB3CE8, &qword_1009ADA48);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18, &protocol conformance descriptor for <A> A?);
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v38 = xmmword_1009AD8D0;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  *&v38 = &_swiftEmptyArrayStorage;
  sub_100706B30(&qword_100CB8268, &qword_1009B9300);
  type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable(0);
  sub_1008659CC();
  sub_1009366C8();

  *(v14 + 19) = 0;
  sub_100936158();
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  *&v38 = a1;
  *(&v38 + 1) = a2;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v38 = v34;
  sub_100715738(v34, *(&v34 + 1));
  v30 = sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(v34, *(&v34 + 1));
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v38 = v35;
  sub_100715738(v35, *(&v35 + 1));
  sub_1009366D8();

  sub_1007156D8(v35, *(&v35 + 1));
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v38) = a7;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v38) = a8;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v38 = a9;
  sub_1009366D8();

  *(v14 + 16) = 0;
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v38) = a10;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v38 = a11;
  sub_1007483B0(a11, *(&a11 + 1));
  sub_1009366D8();

  sub_10001C370(a11, *(&a11 + 1));
  *(v14 + 17) = 0;
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v38 = a12;
  sub_1007483B0(a12, *(&a12 + 1));
  sub_1009366D8();

  sub_10001C370(a12, *(&a12 + 1));
  *(v14 + 18) = 0;
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v15 = *(a13 + 80);
  v42 = *(a13 + 64);
  v43 = v15;
  v44 = *(a13 + 96);
  v16 = *(a13 + 16);
  v38 = *a13;
  v39 = v16;
  v17 = *(a13 + 48);
  v40 = *(a13 + 32);
  v41 = v17;
  v18 = sub_100865994(a13, v37);
  sub_100865890(v18, v19, v20, v21, v22, v23, v24, v25, v30, 0xF000000000000000);
  sub_1009366D8();

  sub_1008658E4(a13);
  v26 = sub_100716518(a1, a2, v34, *(&v34 + 1));
  v28 = v27;

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  *&v38 = v26;
  *(&v38 + 1) = v28;
  sub_1009366D8();
  sub_1008658E4(a13);
  sub_10001C370(a12, *(&a12 + 1));
  sub_10001C370(a11, *(&a11 + 1));
  sub_1007156D8(v35, *(&v35 + 1));
  sub_1007156D8(v34, *(&v34 + 1));

  sub_1007156D8(v26, v28);
  return v14;
}

void sub_1008522BC(uint64_t *a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_100022B2C(*a1, (v4 + 5));
    swift_beginAccess();
    sub_100012970((v5 + 24));
    a3(v4 + 5, v5 + 24);
    swift_endAccess();
    sub_100012970(v4);
  }

  else
  {
    swift_beginAccess();
    sub_100012970((v5 + 24));
    a3(v4, v5 + 24);
    swift_endAccess();
  }

  free(v4);
}

void *sub_1008523A0(__int128 *a1)
{
  v2 = v1;
  *(v1 + 48) = sub_100706B30(&qword_100CB8288, &qword_1009B9310);
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice, &unk_1009B9EEC);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&unk_100CBA310, &qword_1009AD9F0);
  sub_100022AC0(&qword_100CB3CD8, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009366D8();

  *(v1 + 16) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB3CE8, &qword_1009ADA48);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18, &protocol conformance descriptor for <A> A?);
  sub_1009366D8();

  *(v1 + 17) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v1 + 18) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB8268, &qword_1009B9300);
  type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable(0);
  sub_1008659CC();
  sub_1009366C8();

  *(v1 + 19) = 0;
  sub_100936158();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100012970((v1 + 24));
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1008527EC(uint64_t a1)
{
  v2 = sub_1008661C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100852828(uint64_t a1)
{
  v2 = sub_1008661C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100852864(void *a1)
{
  v3 = v1;
  v5 = sub_100706B30(&qword_100CB8290, &qword_1009B9318);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000226D4(a1, a1[3]);
  sub_1008661C4();
  sub_1009376F8();
  v19 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_100012D50(&v19, v11, &qword_100CB3CE8, &qword_1009ADA48);
  sub_100768A18();
  sub_1009374C8();
  if (!v2)
  {
    sub_10001C370(v13, *(&v13 + 1));
    v18 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_100012D50(&v18, v11, &qword_100CB3CE8, &qword_1009ADA48);
    sub_1009374C8();
    sub_10001C370(v13, *(&v13 + 1));
    LOBYTE(v13) = 2;
    sub_100937518();
    LOBYTE(v13) = 3;
    sub_100937508();
    v17 = *(v3 + 40);
    v13 = *(v3 + 40);
    v12 = 4;
    sub_100012D50(&v17, v11, &qword_100CB3CE8, &qword_1009ADA48);
    sub_1009374C8();
    sub_10001C370(v13, *(&v13 + 1));
    v16 = *(v3 + 56);
    v13 = *(v3 + 56);
    v12 = 5;
    sub_100012D50(&v16, v11, &qword_100CB3CE8, &qword_1009ADA48);
    sub_1009374C8();
    sub_10001C370(v13, *(&v13 + 1));
    v15 = *(v3 + 72);
    v13 = *(v3 + 72);
    v12 = 6;
    sub_100012D50(&v15, v11, &qword_100CB3CE8, &qword_1009ADA48);
    sub_1009374C8();
    sub_10001C370(v13, *(&v13 + 1));
    v13 = *(v3 + 88);
    v14 = v13;
    v12 = 7;
    sub_100012D50(&v14, v11, &qword_100CB3CE8, &qword_1009ADA48);
    sub_1009374C8();
  }

  sub_10001C370(v13, *(&v13 + 1));
  return (*(v6 + 8))(v8, v5);
}

__n128 sub_100852C40@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100866218(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_100852CB8()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA018);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100852DC0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA018);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100852ED0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936138();
}

uint64_t sub_100852FA8()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA018);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1008530AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA018);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1008531B8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936138();
}

uint64_t sub_100853290()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA018);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100853394@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA018);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1008534A0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936138();
}

uint64_t sub_100853578()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA018);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10085367C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA018);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100853788(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936138();
}

uint64_t sub_100853860()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA018);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100853968@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA018);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100853A78(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936138();
}

uint64_t sub_100853B50()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA018);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100853C58@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA018);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100853D68(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936138();
}

uint64_t sub_100853E40()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA018);
  sub_100864C40(&unk_100CBA670, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009368A8();
}

uint64_t sub_100853F78()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA018);
  sub_100864C40(&unk_100CBA670, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009368A8();
}

uint64_t sub_1008540B0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936138();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100854238()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA018);
  sub_100864C40(&unk_100CBA670, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009368A8();
}

uint64_t sub_100854370()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA018);
  sub_100864C40(&unk_100CBA670, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009368A8();
}

uint64_t sub_1008544A8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936138();

  return (*(v5 + 8))(v8, v4);
}

double sub_100854630()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA018);
  sub_1009368A8();

  return v0;
}

double sub_100854734@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA018);
  sub_1009368A8();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100854840(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA128);
  sub_100936138();
}

uint64_t sub_100854918(double a1)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA018);
  sub_1009368C8();
}

uint64_t *sub_1008549B4(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, double a9, Swift::String a10, uint64_t a12, uint64_t a13)
{
  v40._countAndFlagsBits = a7;
  v40._object = a8;
  v43._countAndFlagsBits = a5;
  v43._object = a6;
  v42._countAndFlagsBits = a3;
  v42._object = a4;
  v37 = a2;
  v38 = a1;
  v44 = a13;
  v45 = a12;
  v41 = a10;
  v39 = sub_100936038();
  v16 = *(v39 - 8);
  __chkstk_darwin(v39);
  v36 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[5] = sub_100706B30(&qword_100CB82A8, &qword_1009B9488);
  v19 = sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA018);
  v46._countAndFlagsBits = v12;
  v46._object = v12;
  v47 = v19;
  v48 = v19;
  v18[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v18 + 2);
  sub_100936858();
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46._countAndFlagsBits = 0;
  sub_1009366D8();

  sub_100936158();
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46._countAndFlagsBits = a1;
  v46._object = a2;
  sub_1009366D8();

  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46 = v42;
  sub_1009366D8();

  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46 = v43;
  sub_1009366D8();

  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v20 = v40;
  v46 = v40;
  sub_100715738(v40._countAndFlagsBits, v40._object);
  v35 = sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(v20._countAndFlagsBits, v20._object);
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v21 = v41;
  v46 = v41;
  sub_100715738(v41._countAndFlagsBits, v41._object);
  sub_1009366D8();

  sub_1007156D8(v21._countAndFlagsBits, v21._object);
  v32 = *(v16 + 16);
  v22 = v36;
  v23 = v39;
  v32(v36, v45, v39);
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v31 = sub_100864C40(&qword_100CB3DA8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009366D8();

  v24 = *(v16 + 8);
  v24(v22, v23);
  v33 = v24;
  v34 = v16 + 8;
  v32(v22, v44, v23);
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  sub_1009366D8();

  v24(v22, v23);
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  *&v46._countAndFlagsBits = a9;
  sub_1009366D8();

  v46._countAndFlagsBits = v38;
  v46._object = v37;

  sub_100936C08(v42);

  sub_100936C08(v43);

  v25 = v40;
  v26 = sub_100716518(v46._countAndFlagsBits, v46._object, v40._countAndFlagsBits, v40._object);
  v28 = v27;

  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46._countAndFlagsBits = v26;
  v46._object = v28;
  sub_1009366D8();

  sub_1007156D8(v41._countAndFlagsBits, v41._object);
  sub_1007156D8(v25._countAndFlagsBits, v25._object);
  v29 = v33;
  v33(v44, v23);
  v29(v45, v23);
  sub_1007156D8(v26, v28);
  return v18;
}

uint64_t *sub_100855098(__int128 *a1)
{
  v1[5] = sub_100706B30(&qword_100CB82A8, &qword_1009B9488);
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession, &unk_1009BA018);
  v1[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v1 + 2);
  sub_100936858();
  sub_1000226D4(v1 + 2, v1[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_100936158();
  swift_beginAccess();
  sub_100012970(v1 + 2);
  sub_100308C84(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t sub_100855238()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA254);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA144);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100855340@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA254);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA144);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100855450(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA254);
  sub_100936138();
}

uint64_t sub_100855528()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA254);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA144);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10085562C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA254);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA144);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100855738(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA254);
  sub_100936138();
}

uint64_t sub_100855810()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA254);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA144);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100855918@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA254);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA144);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100855A28(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA254);
  sub_100936138();
}

uint64_t sub_100855B00()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA254);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA144);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100855C04@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA254);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA144);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100855D10(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA254);
  sub_100936138();
}

uint64_t sub_100855DE8()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA254);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA144);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100855EF0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA254);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA144);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100856000(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA254);
  sub_100936138();
}

uint64_t sub_1008560D8()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA254);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA144);
  sub_100864C40(&unk_100CBA670, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009368A8();
}

uint64_t sub_100856210()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA254);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA144);
  sub_100864C40(&unk_100CBA670, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009368A8();
}

uint64_t sub_100856348(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA254);
  sub_100936138();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1008564D0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v16 = swift_allocObject();
  sub_100856568(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

uint64_t *sub_100856568(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v9 = v8;
  v41 = a8;
  v38 = a7;
  v35 = a1;
  v36 = a6;
  v31[0] = a5;
  v34 = a2;
  v15 = *v8;
  v16 = sub_100936038();
  v17 = *(v16 - 8);
  v39 = v16;
  v40 = v17;
  __chkstk_darwin(v16);
  v37 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[5] = sub_100706B30(&qword_100CB82C0, &qword_1009B9580);
  v19 = sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA144);
  v42 = v15;
  v43 = v15;
  v44 = v19;
  v45 = v19;
  v9[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v9 + 2);
  sub_100936858();
  sub_100936158();
  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v42 = a1;
  v43 = a2;
  sub_1009366D8();

  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v42 = a3;
  v43 = a4;
  v32 = a3;
  v33 = a4;
  sub_100715738(a3, a4);
  v31[1] = sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(a3, a4);
  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v42 = a5;
  v20 = v36;
  v43 = v36;
  sub_1009366D8();

  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v21 = v38;
  v22 = v41;
  v42 = v38;
  v43 = v41;
  sub_100715738(v38, v41);
  sub_1009366D8();

  sub_1007156D8(v21, v22);
  v23 = v37;
  sub_100936028();
  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  sub_100864C40(&qword_100CB3DA8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v24 = v39;
  sub_1009366D8();

  (*(v40 + 8))(v23, v24);
  v42 = v35;
  v43 = v34;

  v46._countAndFlagsBits = v31[0];
  v46._object = v20;
  sub_100936C08(v46);

  v25 = v32;
  v26 = v33;
  v27 = sub_100716518(v42, v43, v32, v33);
  v29 = v28;

  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v42 = v27;
  v43 = v29;
  sub_1009366D8();
  sub_1007156D8(v21, v41);
  sub_1007156D8(v25, v26);

  sub_1007156D8(v27, v29);
  return v9;
}

void sub_100856A2C(uint64_t *a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_100022B2C(*a1, (v4 + 5));
    swift_beginAccess();
    sub_100012970((v5 + 16));
    a3(v4 + 5, v5 + 16);
    swift_endAccess();
    sub_100012970(v4);
  }

  else
  {
    swift_beginAccess();
    sub_100012970((v5 + 16));
    a3(v4, v5 + 16);
    swift_endAccess();
  }

  free(v4);
}

uint64_t *sub_100856B10(__int128 *a1)
{
  v1[5] = sub_100706B30(&qword_100CB82C0, &qword_1009B9580);
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity, &unk_1009BA144);
  v1[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v1 + 2);
  sub_100936858();
  sub_100936158();
  swift_beginAccess();
  sub_100012970(v1 + 2);
  sub_100308C84(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t sub_100856C58()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82C8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle, &unk_1009BA380);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82D0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle, &unk_1009BA270);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100856D5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82C8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle, &unk_1009BA380);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82D0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle, &unk_1009BA270);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100856E68(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82C8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle, &unk_1009BA380);
  sub_100936138();
}

uint64_t sub_100856F40()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82C8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle, &unk_1009BA380);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82D0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle, &unk_1009BA270);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100857044@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82C8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle, &unk_1009BA380);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82D0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle, &unk_1009BA270);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100857150(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82C8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle, &unk_1009BA380);
  sub_100936138();
}

uint64_t sub_100857228()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82C8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle, &unk_1009BA380);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82D0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle, &unk_1009BA270);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_100857368()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82C8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle, &unk_1009BA380);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82D0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle, &unk_1009BA270);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_1008574A8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0, &qword_1009AC370);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0, &qword_1009AC370);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_100864C40(&qword_100CB82C8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle, &unk_1009BA380);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_1008575F0(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  sub_100857658(a1, a2, a3, a4);
  return v8;
}

void *sub_100857658(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v16 = a3;
  v17 = a4;
  v8 = *v4;
  v9 = sub_100706B30(&qword_100CB4AC0, &qword_1009AC370);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  v5[6] = sub_100706B30(&qword_100CB82D8, &qword_1009B9608);
  v18 = type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle;
  v12 = sub_100864C40(&qword_100CB82D0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle, &unk_1009BA270);
  v21 = v8;
  v22 = v8;
  v23 = v12;
  v24 = v12;
  v5[7] = swift_getOpaqueTypeConformance2();
  sub_100014250(v5 + 3);
  sub_100936858();
  *(v5 + 16) = 1;
  sub_100936158();
  sub_1000226D4(v5 + 3, v5[6]);
  swift_getKeyPath();
  v21 = a1;
  v22 = a2;
  sub_1009366D8();

  sub_1000226D4(v5 + 3, v5[6]);
  swift_getKeyPath();
  v21 = v16;
  v22 = v17;
  sub_1009366D8();

  sub_100936028();
  v13 = sub_100936038();
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  v21 = v5;
  swift_getKeyPath();
  v19 = v5;
  v20 = v11;
  sub_100864C40(&qword_100CB82C8, v18, &unk_1009BA380);
  sub_100936138();

  sub_100021EA4(v11);
  return v5;
}

uint64_t sub_100857960(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 48) = sub_100706B30(&qword_100CB82D8, &qword_1009B9608);
  sub_100864C40(&qword_100CB82D0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle, &unk_1009BA270);
  *(v2 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v2 + 24));
  sub_100936858();
  *(v2 + 16) = 1;
  sub_100936158();
  *(v2 + 16) = 0;
  swift_beginAccess();
  sub_100012970((v2 + 24));
  sub_100308C84(a1, v2 + 24);
  swift_endAccess();
  return v2;
}

void *sub_100857A98(__int128 *a1)
{
  *(v1 + 48) = sub_100706B30(&qword_100CB82D8, &qword_1009B9608);
  sub_100864C40(&qword_100CB82D0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle, &unk_1009BA270);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  *(v1 + 16) = 1;
  sub_100936158();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100012970((v1 + 24));
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_100857BF4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100857CFC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100857E0C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936138();
}

uint64_t sub_100857EE4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100857FEC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008580FC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936138();
}

uint64_t sub_1008581D4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1008582DC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008583EC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936138();
}

uint64_t sub_1008584C4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1008585C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1008586D4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936138();
}

uint64_t sub_1008587AC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1008588B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1008589BC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936138();
}

uint64_t sub_100858A94()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100858B9C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100858CAC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936138();
}

uint64_t sub_100858D84()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100864C40(&unk_100CBA670, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009368A8();
}

uint64_t sub_100858EBC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100864C40(&unk_100CBA670, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009368A8();
}

uint64_t sub_100858FF4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936138();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10085917C()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100859284@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100859394(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936138();
}

uint64_t sub_10085946C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  swift_getKeyPath();
  sub_100864C40(a5, a6, a7);
  sub_100768A18();
  sub_1009368C8();
}

uint64_t sub_100859508()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_1009368A8();

  return v1;
}

uint64_t sub_10085960C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100859718(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936138();
}

uint64_t sub_1008597E8()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1008598EC@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1008599F8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936138();
}

uint64_t sub_100859AC8()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_100859C08()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_100859D48(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0, &qword_1009AC370);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0, &qword_1009AC370);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_100859E90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  swift_getKeyPath();
  sub_100864C40(a4, a5, a6);
  sub_100022988(&qword_100CB3DD8, &qword_100CB3DA8, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368C8();
}

uint64_t sub_100859F58()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_1009368A8();

  return v1;
}

uint64_t sub_10085A05C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_10085A168(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936138();
}

uint64_t sub_10085A238()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_1009368A8();

  return v1;
}

uint64_t sub_10085A33C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_10085A448(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936138();
}

uint64_t sub_10085A518(uint64_t a1, char a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  swift_getKeyPath();
  sub_100864C40(a4, a5, a6);
  sub_1009368C8();
}

uint64_t sub_10085A5A4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_10085A6E4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_10085A824(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0, &qword_1009AC370);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0, &qword_1009AC370);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_10085A96C()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100022AC0(&qword_100CB3CE0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  return v0;
}

double sub_10085AA98@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100022AC0(&qword_100CB3CE0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10085ABCC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936138();
}

uint64_t sub_10085ACA4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_10085ADE4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_10085AF24(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0, &qword_1009AC370);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0, &qword_1009AC370);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_10085B06C()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_10085B1AC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_10085B2EC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0, &qword_1009AC370);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0, &qword_1009AC370);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_10085B434()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_10085B574()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_10085B6B4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0, &qword_1009AC370);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0, &qword_1009AC370);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA4AC);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_10085B7FC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(uint64_t, uint64_t), unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17)
{
  v46 = a8;
  v47 = a7;
  v44[0] = a6;
  v45 = a5;
  v60 = a3;
  v61 = a4;
  v52 = a16;
  v53 = a17;
  v50 = a14;
  v51 = a15;
  v57 = a12;
  v58 = a13;
  v62 = a11;
  v54 = a9;
  v55 = a10;
  v56 = sub_100936038();
  v63 = *(v56 - 8);
  __chkstk_darwin(v56);
  v48 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 48) = sub_100706B30(&qword_100CB82F0, &qword_1009B98E0);
  v22 = sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution, &unk_1009BA39C);
  v64 = v17;
  v65 = v17;
  v66 = v22;
  v67 = v22;
  *(v21 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v21 + 24));
  sub_100936858();
  *(v21 + 16) = 16843009;
  *(v21 + 20) = 257;
  sub_100936158();
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v64 = a1;
  v65 = a2;
  v59 = a1;
  v49 = a2;
  sub_100715738(a1, a2);
  v23 = sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(a1, a2);
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v25 = v60;
  v24 = v61;
  v64 = v60;
  v65 = v61;
  sub_100715738(v60, v61);
  sub_1009366D8();

  sub_1007156D8(v25, v24);
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v64 = v45;
  v65 = v44[0];
  sub_1009366D8();

  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v64 = v47;
  v65 = v46;
  sub_1009366D8();

  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v27 = v54;
  v26 = v55;
  v64 = v54;
  v65 = v55;
  sub_100715738(v54, v55);
  v44[1] = v23;
  sub_1009366D8();

  sub_1007156D8(v27, v26);
  v28 = v63;
  v29 = v48;
  v30 = v56;
  (*(v63 + 16))(v48, v62, v56);
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  sub_100864C40(&qword_100CB3DA8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009366D8();

  v31 = *(v28 + 8);
  v63 = v28 + 8;
  v47 = v31;
  v31(v29, v30);
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v33 = v57;
  v32 = v58;
  v64 = v57;
  v65 = v58;
  sub_100715738(v57, v58);
  sub_1009366D8();

  sub_1007156D8(v33, v32);
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  LOBYTE(v64) = v50;
  sub_1009366D8();

  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  LOBYTE(v64) = v51;
  sub_1009366D8();

  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  LOBYTE(v64) = v52;
  sub_1009366D8();

  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  LOBYTE(v64) = v53;
  sub_1009366D8();

  v34 = v59;
  v35 = v49;
  v69 = v59;
  v70 = v49;
  v67 = &type metadata for Data;
  v68 = &protocol witness table for Data;
  v36 = v54;
  v37 = v55;
  v64 = v54;
  v65 = v55;
  v38 = sub_1000226D4(&v64, &type metadata for Data);
  v39 = *v38;
  v40 = v38[1];
  sub_100715738(v34, v35);
  sub_100715738(v36, v37);
  sub_100768308(v39, v40, &v69);
  sub_100012970(&v64);
  v41 = v69;
  v42 = v70;
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v64 = v41;
  v65 = v42;
  sub_1009366D8();

  sub_1007156D8(v57, v58);
  sub_1007156D8(v36, v37);
  sub_1007156D8(v60, v61);
  sub_1007156D8(v59, v35);
  v47(v62, v56);
  sub_1007156D8(v41, v42);
  return v21;
}