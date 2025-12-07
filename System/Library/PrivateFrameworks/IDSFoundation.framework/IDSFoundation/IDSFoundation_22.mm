uint64_t sub_1A7DF16C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A7DF198C(a1, a2, a3);
  v4 = sub_1A7E229A0();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

uint64_t (*sub_1A7DF1740(void *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = LinkEngineLink.subscript.modify(v6, a2, a3);
  return sub_1A7D93198;
}

uint64_t sub_1A7DF17CC()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_1A7DF1800(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = sub_1A7CE2568(MEMORY[0x1E69E7CC0]);
  *(v3 + 40) = 0;
  *(v3 + 48) = v7;
  if (qword_1EB2B32D8 != -1)
  {
    swift_once();
  }

  v8 = sub_1A7E22060();
  sub_1A7B0CB00(v8, qword_1EB2B32E0);

  v9 = sub_1A7E22040();
  v10 = sub_1A7E228F0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1A7B0CB38(a2, a3, &v14);
    _os_log_impl(&dword_1A7AD9000, v9, v10, "LinkEngineLink.init: %s", v11, 0xCu);
    sub_1A7B0CD6C(v12);
    MEMORY[0x1AC5654B0](v12, -1, -1);
    MEMORY[0x1AC5654B0](v11, -1, -1);
  }

  swift_weakInit();
  sub_1A7DF1AC0(&v14, v4 + 32);
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  return v4;
}

void sub_1A7DF198C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(v3 + 10);
  sub_1A7DF11F0(&v3[12], a2, a1, a3);

  os_unfair_lock_unlock(v3 + 10);
}

uint64_t sub_1A7DF19F8(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B6EC0, &qword_1A7E4DF18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A7DF1AFC()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B7E50);
  sub_1A7B0CB00(v0, qword_1EB2B7E50);
  return sub_1A7E22050();
}

void *sub_1A7DF1B84(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  if (qword_1EB2B48B0 != -1)
  {
    swift_once();
  }

  v7 = sub_1A7E22060();
  sub_1A7B0CB00(v7, qword_1EB2B7E50);
  v8 = sub_1A7E22040();
  v9 = sub_1A7E228F0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134218240;
    *(v10 + 4) = v5;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v6;
    _os_log_impl(&dword_1A7AD9000, v8, v9, "  ... creating quality monitor plugin with allowedOverheadPerExistingPacket: %ld, allowedAdditionalPacketsPerSecond: %f", v10, 0x16u);
    MEMORY[0x1AC5654B0](v10, -1, -1);
  }

  type metadata accessor for IDSLinkQualityMonitorPlugin();
  v11 = swift_allocObject();
  v11[2] = 0xD000000000000018;
  v11[3] = 0x80000001A7EB09B0;
  v11[4] = v5;
  v11[5] = v6;
  v11[6] = 0x3FB1111111111111;
  v11[7] = a1;
  v11[8] = a2;

  return v11;
}

void *sub_1A7DF1CEC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  if (qword_1EB2B48B0 != -1)
  {
    swift_once();
  }

  v7 = sub_1A7E22060();
  sub_1A7B0CB00(v7, qword_1EB2B7E50);
  v8 = sub_1A7E22040();
  v9 = sub_1A7E228F0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    v16 = 0;
    *v10 = 136315138;
    v17 = 0xE000000000000000;
    sub_1A7E22B70();
    MEMORY[0x1AC561C90](0xD000000000000021, 0x80000001A7EB0FE0);
    v12 = sub_1A7E23090();
    MEMORY[0x1AC561C90](v12);

    MEMORY[0x1AC561C90](0xD000000000000024, 0x80000001A7EB1010);
    sub_1A7E227A0();
    v13 = sub_1A7B0CB38(v16, 0xE000000000000000, &v15);

    *(v10 + 4) = v13;
    _os_log_impl(&dword_1A7AD9000, v8, v9, "  allowing overhead: %s", v10, 0xCu);
    sub_1A7B0CD6C(v11);
    MEMORY[0x1AC5654B0](v11, -1, -1);
    MEMORY[0x1AC5654B0](v10, -1, -1);
  }

  v16 = v5;
  v17 = v6;
  return sub_1A7DF1B84(a1, a2);
}

void *sub_1A7DF1F14(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  if (qword_1EB2B48B0 != -1)
  {
    swift_once();
  }

  v7 = sub_1A7E22060();
  sub_1A7B0CB00(v7, qword_1EB2B7E50);
  v8 = sub_1A7E22040();
  v9 = sub_1A7E228F0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    v15 = 0;
    *v10 = 136315138;
    v16 = 0xE000000000000000;
    sub_1A7E22B70();
    MEMORY[0x1AC561C90](0xD000000000000011, 0x80000001A7EB1040);
    sub_1A7DAB778(v6);
    MEMORY[0x1AC561C90](41, 0xE100000000000000);
    v12 = sub_1A7B0CB38(v15, 0xE000000000000000, &v14);

    *(v10 + 4) = v12;
    sub_1A7B0CD6C(v11);
    MEMORY[0x1AC5654B0](v11, -1, -1);
    MEMORY[0x1AC5654B0](v10, -1, -1);
  }

  v15 = v5;
  v16 = *&v6;
  return sub_1A7DF1CEC(a1, a2);
}

void *sub_1A7DF20EC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  if (*(v2 + 16) == 1)
  {
    if (v3 | v4)
    {
      return 0;
    }

    else
    {
      return sub_1A7DF1B84(a1, a2);
    }
  }

  else
  {
    if (qword_1EB2B48B0 != -1)
    {
      swift_once();
    }

    v8 = sub_1A7E22060();
    sub_1A7B0CB00(v8, qword_1EB2B7E50);
    v9 = sub_1A7E22040();
    v10 = sub_1A7E228F0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      v17 = v3;
      *v11 = 136315138;
      v18 = v4;
      v13 = LinkSelectionStrategy.QualityThreshold.description.getter();
      v15 = sub_1A7B0CB38(v13, v14, &v16);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1A7AD9000, v9, v10, "  Using primary secondary duplication strategy: when primary is unhealthy with threshold=%s", v11, 0xCu);
      sub_1A7B0CD6C(v12);
      MEMORY[0x1AC5654B0](v12, -1, -1);
      MEMORY[0x1AC5654B0](v11, -1, -1);
    }

    v17 = v3;
    v18 = v4;
    return sub_1A7DF1F14(a1, a2);
  }
}

void *sub_1A7DF2294(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  if (qword_1EB2B48B0 != -1)
  {
    swift_once();
  }

  v8 = sub_1A7E22060();
  sub_1A7B0CB00(v8, qword_1EB2B7E50);
  v9 = sub_1A7E22040();
  v10 = sub_1A7E228F0();
  if (os_log_type_enabled(v9, v10))
  {
    v17 = a2;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    if (v7)
    {
      if (v5 | *&v6)
      {
        v13 = 0x726576656ELL;
      }

      else
      {
        v13 = 0x737961776C61;
      }

      if (v5 | *&v6)
      {
        v14 = 0xE500000000000000;
      }

      else
      {
        v14 = 0xE600000000000000;
      }
    }

    else
    {
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_1A7E22B70();
      MEMORY[0x1AC561C90](0xD000000000000021, 0x80000001A7EB1080);
      sub_1A7DAB658(v5, v6);
      MEMORY[0x1AC561C90](41, 0xE100000000000000);
      v13 = 0;
      v14 = 0xE000000000000000;
    }

    v15 = sub_1A7B0CB38(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1A7AD9000, v9, v10, "  PrimarySecondary duplication strategy: %s", v11, 0xCu);
    sub_1A7B0CD6C(v12);
    MEMORY[0x1AC5654B0](v12, -1, -1);
    MEMORY[0x1AC5654B0](v11, -1, -1);

    a2 = v17;
  }

  else
  {
  }

  v19 = v5;
  v20 = *&v6;
  v21 = v7;
  return sub_1A7DF20EC(a1, a2);
}

void *sub_1A7DF24B8(uint64_t a1, uint64_t a2)
{
  if (qword_1EB2B48B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1A7E22060();
  sub_1A7B0CB00(v4, qword_1EB2B7E50);
  v5 = sub_1A7E22040();
  v6 = sub_1A7E228F0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A7AD9000, v5, v6, "  Using primary secondary strategy", v7, 2u);
    MEMORY[0x1AC5654B0](v7, -1, -1);
  }

  return sub_1A7DF2294(a1, a2);
}

uint64_t IDSGLLinkEngineTwoWayConnectionStrategy.connectionBehavior.getter()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 48);
  os_unfair_lock_unlock((v1 + 40));
  if (v2)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

void IDSGLLinkEngineTwoWayConnectionStrategy.connectionBehavior.setter(uint64_t a1)
{
  v3 = *(v1 + 32);
  os_unfair_lock_lock((v3 + 40));
  *(v3 + 48) = a1 != 1;

  os_unfair_lock_unlock((v3 + 40));
}

void (*IDSGLLinkEngineTwoWayConnectionStrategy.connectionBehavior.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + 32);
  os_unfair_lock_lock((v3 + 40));
  v4 = *(v3 + 48);
  os_unfair_lock_unlock((v3 + 40));
  v5 = 3;
  if (!v4)
  {
    v5 = 1;
  }

  *a1 = v5;
  return sub_1A7DF26CC;
}

void sub_1A7DF26CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1[1] + 32);
  os_unfair_lock_lock((v2 + 40));
  *(v2 + 48) = v1 != 1;

  os_unfair_lock_unlock((v2 + 40));
}

void IDSGLLinkEngineTwoWayConnectionStrategy.toolState()(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  os_unfair_lock_lock((v3 + 40));
  v4 = *(v3 + 48);
  v5 = *(v3 + 200);

  v7 = sub_1A7DF29D0(v6);

  v9 = sub_1A7DF2D00(v8, v3, v3 + 48);

  v10 = *(v3 + 88);
  v11 = 256;
  if (!v5)
  {
    v11 = 0;
  }

  v12 = *(v3 + 80) | 0x8000000000000000;
  *a1 = v11 | v4;
  a1[1] = v7;
  a1[2] = v9;
  a1[3] = v12;
  a1[4] = v10;

  os_unfair_lock_unlock((v3 + 40));
}

uint64_t IDSGLLinkEngineTwoWayConnectionStrategy.deinit()
{

  return v0;
}

uint64_t IDSGLLinkEngineTwoWayConnectionStrategy.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A7DF28B8()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 48);
  os_unfair_lock_unlock((v1 + 40));
  if (v2)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

void (*sub_1A7DF28FC(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = IDSGLLinkEngineTwoWayConnectionStrategy.connectionBehavior.modify(v2);
  return sub_1A7D918AC;
}

void sub_1A7DF296C(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  os_unfair_lock_lock((v3 + 40));
  sub_1A7D20568((v3 + 48), v3, a1);

  os_unfair_lock_unlock((v3 + 40));
}

uint64_t sub_1A7DF29D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = a1;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1A7CCEC8C(0, v1, 0);
    v4 = v43;
    v5 = v3 + 64;
    result = sub_1A7E22AD0();
    v7 = 0;
    v31 = v3 + 72;
    v32 = v3 + 64;
    v33 = v1;
    v34 = v3;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(v3 + 32))
    {
      if ((*(v5 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_31;
      }

      v36 = 1 << result;
      v37 = result >> 6;
      v35 = v7;
      v40 = result;
      v41 = *(v3 + 36);
      v9 = *(v3 + 56) + 32 * result;
      v39 = *v9;
      v38 = *(v9 + 16);
      v10 = *(*(v9 + 24) + 16);
      v42 = *(v9 + 8);
      if (v10)
      {
        swift_bridgeObjectRetain_n();

        sub_1A7CCE918(0, v10, 0);
        v11 = v2;
        v12 = 32;
        do
        {
          v13 = LinkEndpoint.uniqueID.getter();
          v15 = v14;
          v17 = *(v11 + 16);
          v16 = *(v11 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_1A7CCE918((v16 > 1), v17 + 1, 1);
          }

          *(v11 + 16) = v17 + 1;
          v18 = v11 + 16 * v17;
          *(v18 + 32) = v13;
          *(v18 + 40) = v15;
          v12 += 8;
          --v10;
        }

        while (v10);

        v2 = MEMORY[0x1E69E7CC0];
        v1 = v33;
        v3 = v34;
        v5 = v32;
      }

      else
      {

        v11 = v2;
      }

      v20 = *(v4 + 16);
      v19 = *(v4 + 24);
      result = v40;
      v21 = v41;
      if (v20 >= v19 >> 1)
      {
        sub_1A7CCEC8C((v19 > 1), v20 + 1, 1);
        v21 = v41;
        result = v40;
      }

      *(v4 + 16) = v20 + 1;
      v22 = v4 + 32 * v20;
      *(v22 + 32) = v39;
      *(v22 + 40) = v42;
      *(v22 + 48) = v38;
      *(v22 + 56) = v11;
      v8 = 1 << *(v3 + 32);
      if (result >= v8)
      {
        goto LABEL_32;
      }

      v23 = *(v5 + 8 * v37);
      if ((v23 & v36) == 0)
      {
        goto LABEL_33;
      }

      if (v21 != *(v3 + 36))
      {
        goto LABEL_34;
      }

      v24 = v23 & (-2 << (result & 0x3F));
      if (v24)
      {
        v8 = __clz(__rbit64(v24)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v4;
        v26 = v37 << 6;
        v27 = v37 + 1;
        v28 = (v31 + 8 * v37);
        while (v27 < (v8 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            sub_1A7CD29F0(result, v21, 0);
            v8 = __clz(__rbit64(v29)) + v26;
            goto LABEL_26;
          }
        }

        sub_1A7CD29F0(result, v21, 0);
LABEL_26:
        v4 = v25;
      }

      v7 = v35 + 1;
      result = v8;
      if (v35 + 1 == v1)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1A7DF2D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1A7CCEC6C(0, v3, 0);
    v4 = v38;
    v6 = (a1 + 40);
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = v6[3];
      v11 = v6[4];
      *v27 = *(v6 - 4);
      v28 = v7;
      v29 = v8;
      v30 = v9;
      v31 = v10;
      v32 = v11;
      v12 = *(a3 + 8);

      sub_1A7D1FD88(v27, v12, v33);

      v13 = v33[0];
      v14 = v33[1];
      v15 = v34;
      v16 = v35;
      v17 = v36;
      v18 = v37;
      v38 = v4;
      v20 = *(v4 + 16);
      v19 = *(v4 + 24);
      if (v20 >= v19 >> 1)
      {
        v25 = v37;
        v22 = v33[0];
        v24 = v36;
        sub_1A7CCEC6C((v19 > 1), v20 + 1, 1);
        v17 = v24;
        v13 = v22;
        v18 = v25;
        v4 = v38;
      }

      *(v4 + 16) = v20 + 1;
      v21 = v4 + 48 * v20;
      *(v21 + 32) = v13;
      *(v21 + 33) = v14;
      *(v21 + 40) = v15;
      *(v21 + 48) = v16;
      *(v21 + 56) = v17;
      *(v21 + 64) = v18;
      v6 += 6;
      --v3;
    }

    while (v3);
  }

  return v4;
}

void sub_1A7DF2EE0(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (a1[1])
  {
    v5 = 0;
  }

  else
  {
    if (*a1 >= v4)
    {
      v5 = *(v3 + 16);
    }

    else
    {
      v5 = *a1;
    }

    if ((*a1 & 0x8000000000000000) != 0)
    {
LABEL_30:
      __break(1u);
      return;
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  if (v5 != v4)
  {
    v22 = v3 + 32;
    v23 = v4 - 1;
    v7 = MEMORY[0x1E69E7CC0];
    v24 = v5;
    do
    {
      v25 = (v22 + (v24 << 6));
      v26 = v24;
      while (1)
      {
        if (v24 < v5 || v26 >= v4)
        {
          __break(1u);
          goto LABEL_30;
        }

        v28 = v25[1];
        v27 = v25[2];
        v29 = *v25;
        *&v45[10] = *(v25 + 42);
        v44 = v28;
        *v45 = v27;
        v43 = v29;
        v30 = v26 + 1;
        if (!*(&v29 + 1))
        {
          break;
        }

        v25 += 4;
        ++v26;
        if (v4 == v30)
        {
          goto LABEL_8;
        }
      }

      v40 = v22;
      sub_1A7DF5FF8(&v43, v42);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v7;
      v32 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A7CCEC4C(0, *(v7 + 16) + 1, 1);
        v7 = v46;
      }

      v34 = *(v7 + 16);
      v33 = *(v7 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1A7CCEC4C((v33 > 1), v34 + 1, 1);
        v7 = v46;
      }

      *(v7 + 16) = v34 + 1;
      v35 = (v7 + (v34 << 6));
      v36 = v43;
      v37 = v44;
      v38 = *v45;
      *(v35 + 74) = *&v45[10];
      v35[3] = v37;
      v35[4] = v38;
      v35[2] = v36;
      v24 = v26 + 1;
      v23 = v32;
      v22 = v40;
    }

    while (v32 != v26);
  }

LABEL_8:

  v8 = *(v7 + 16);
  if (v8)
  {
    v39 = v3;
    *&v43 = v6;
    v9 = v7;
    sub_1A7CCEC14(0, v8, 0);
    v10 = v43;
    v11 = (v9 + 88);
    do
    {
      v12 = *(v11 - 5);
      v13 = *(v11 - 4);
      v14 = *(v11 - 3);
      v15 = *(v11 - 2);
      v16 = *(v11 - 1);
      v17 = *v11;
      sub_1A7D52320(v12, v13, v14, v15, v16, *v11);
      *&v43 = v10;
      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        sub_1A7CCEC14((v18 > 1), v19 + 1, 1);
        v20 = v19 + 1;
        v10 = v43;
      }

      v11 += 32;
      *(v10 + 16) = v20;
      v21 = v10 + 48 * v19;
      *(v21 + 32) = v12;
      *(v21 + 40) = v13;
      *(v21 + 48) = v14;
      *(v21 + 56) = v15;
      *(v21 + 64) = v16;
      *(v21 + 72) = v17;
      --v8;
    }

    while (v8);

    v3 = v39;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  *a2 = *(v3 + 16);
  a2[1] = v10;
}

uint64_t sub_1A7DF31C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A7EB1D90 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A7E230D0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A7DF325C(uint64_t a1)
{
  v2 = sub_1A7DF340C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DF3298(uint64_t a1)
{
  v2 = sub_1A7DF340C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinkQualityReport.SyncToken.encode(to:)(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B7E68, &qword_1A7E54C70);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DF340C();
  sub_1A7E23260();
  sub_1A7E23020();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A7DF340C()
{
  result = qword_1EB2B7E70;
  if (!qword_1EB2B7E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7E70);
  }

  return result;
}

uint64_t IDSLinkQualityReport.SyncToken.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B7E78, &qword_1A7E54C78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DF340C();
  sub_1A7E23250();
  if (!v2)
  {
    v9 = sub_1A7E22F20();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return sub_1A7B0CD6C(a1);
}

uint64_t sub_1A7DF35CC(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B7E68, &qword_1A7E54C70);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DF340C();
  sub_1A7E23260();
  sub_1A7E23020();
  return (*(v3 + 8))(v5, v2);
}

uint64_t IDSLinkQualityReport.Delta.measurements.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t IDSLinkQualityReport.Delta.description.getter()
{
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0x6B6F7420636E7953, 0xEC000000203A6E65);
  sub_1A7E22D30();
  MEMORY[0x1AC561C90](8251, 0xE200000000000000);
  v0 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v0);

  MEMORY[0x1AC561C90](0x6572757361656D20, 0xED000073746E656DLL);
  return 0;
}

uint64_t sub_1A7DF3898()
{
  if (*v0)
  {
    return 0x6D6572757361656DLL;
  }

  else
  {
    return 0x656B6F54636E7973;
  }
}

uint64_t sub_1A7DF38E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656B6F54636E7973 && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6572757361656DLL && a2 == 0xEC00000073746E65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A7DF39C8(uint64_t a1)
{
  v2 = sub_1A7DF3C20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DF3A04(uint64_t a1)
{
  v2 = sub_1A7DF3C20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinkQualityReport.Delta.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B7E80, &unk_1A7E54C80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DF3C20();
  sub_1A7E23260();
  v12 = v8;
  v11 = 0;
  sub_1A7D519C8();
  sub_1A7E23030();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_1A7CC7FFC(&qword_1EB2B6280, &qword_1A7E495A8);
    sub_1A7D52254(&qword_1EB2B6278, sub_1A7D52110, MEMORY[0x1E69E6300]);
    sub_1A7E23030();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1A7DF3C20()
{
  result = qword_1EB2B7E88;
  if (!qword_1EB2B7E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7E88);
  }

  return result;
}

uint64_t IDSLinkQualityReport.Delta.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B7E90, &qword_1A7E54C90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DF3C20();
  sub_1A7E23250();
  if (!v2)
  {
    v13 = 0;
    sub_1A7D51ADC();
    sub_1A7E22F30();
    v9 = v14;
    sub_1A7CC7FFC(&qword_1EB2B6280, &qword_1A7E495A8);
    v13 = 1;
    sub_1A7D52254(&qword_1EB2B62A8, sub_1A7D522CC, MEMORY[0x1E69E6330]);
    sub_1A7E22F30();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
  }

  return sub_1A7B0CD6C(a1);
}

uint64_t sub_1A7DF3E8C(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v19 = a2;
  v4 = sub_1A7CC7FFC(&qword_1EB2B7F78, &qword_1A7E553B0);
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B7F80, &qword_1A7E553B8);
  v16 = *(v7 - 8);
  v17 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = sub_1A7CC7FFC(&qword_1EB2B7F88, &qword_1A7E553C0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DF6060();
  v14 = v20;
  sub_1A7E23260();
  if (v14)
  {
    v22 = 1;
    sub_1A7DF60B4();
    sub_1A7E22F80();
    sub_1A7E22FF0();
    (*(v18 + 8))(v6, v4);
  }

  else
  {
    v21 = 0;
    sub_1A7DF6108();
    sub_1A7E22F80();
    (*(v16 + 8))(v9, v17);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1A7DF4180(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B7F20, &qword_1A7E55380);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = v9;
  v10 = *(v1 + 32);
  v14 = *(v1 + 40);
  v15 = v10;
  v13 = *(v1 + 48);
  v25 = *(v1 + 56);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DF5EFC();

  sub_1A7E23260();
  v19 = v7;
  v20 = v8;
  v26 = 0;
  sub_1A7DF5F50();
  v11 = v18;
  sub_1A7E23030();

  if (!v11)
  {
    v19 = v17;
    v20 = v16;
    v21 = v15;
    v22 = v14;
    v23 = v13;
    v24 = v25;
    v26 = 1;
    sub_1A7D52320(v17, v16, v15, v14, v13, v25);
    sub_1A7D52110();
    sub_1A7E23030();
    sub_1A7D52368(v19, v20, v21, v22, v23, v24);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A7DF437C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B7F38, &qword_1A7E55388);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DF5EFC();
  sub_1A7E23250();
  if (v2)
  {
    return sub_1A7B0CD6C(a1);
  }

  LOBYTE(v18[0]) = 0;
  sub_1A7DF5FA4();
  sub_1A7E22F30();
  v10 = v20;
  v9 = v21;
  v31 = 1;
  sub_1A7D522CC();
  sub_1A7E22F30();
  (*(v6 + 8))(v8, v5);
  v11 = v26;
  v12 = v27;
  v17 = v28;
  v30 = v29;
  *&v18[0] = v10;
  *(&v18[0] + 1) = v9;
  v18[1] = v26;
  *v19 = v27;
  *&v19[16] = v28;
  *&v19[24] = v29;
  v13 = v18[0];
  v14 = v26;
  v15 = v27;
  *(a2 + 42) = *&v19[10];
  a2[1] = v14;
  a2[2] = v15;
  *a2 = v13;
  sub_1A7DF5FF8(v18, &v20);
  sub_1A7B0CD6C(a1);
  v20 = v10;
  v21 = v9;
  v22 = v11;
  v23 = v12;
  v24 = v17;
  v25 = v30;
  return sub_1A7DF6030(&v20);
}

uint64_t sub_1A7DF463C()
{
  if (*v0)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

uint64_t sub_1A7DF4670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A7DF4744(uint64_t a1)
{
  v2 = sub_1A7DF6060();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DF4780(uint64_t a1)
{
  v2 = sub_1A7DF6060();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DF47BC(uint64_t a1)
{
  v2 = sub_1A7DF6108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DF47F8(uint64_t a1)
{
  v2 = sub_1A7DF6108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DF4844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7DF48CC(uint64_t a1)
{
  v2 = sub_1A7DF60B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DF4908(uint64_t a1)
{
  v2 = sub_1A7DF60B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1A7DF4944@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1A7DF58D8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1A7DF498C()
{
  v1 = *(v0 + 8);
  sub_1A7E23200();
  if (v1)
  {
    MEMORY[0x1AC562AF0](1);
    sub_1A7E22350();
  }

  else
  {
    MEMORY[0x1AC562AF0](0);
  }

  return sub_1A7E23240();
}

uint64_t sub_1A7DF49FC(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x1AC562AF0](0);
  }

  MEMORY[0x1AC562AF0](1);

  return sub_1A7E22350();
}

uint64_t sub_1A7DF4A74(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1A7E23200();
  if (v2)
  {
    MEMORY[0x1AC562AF0](1);
    sub_1A7E22350();
  }

  else
  {
    MEMORY[0x1AC562AF0](0);
  }

  return sub_1A7E23240();
}

uint64_t sub_1A7DF4AE0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_1A7E230D0();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t sub_1A7DF4B24()
{
  if (*v0)
  {
    return 0x6D6572757361656DLL;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t sub_1A7DF4B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6572757361656DLL && a2 == 0xEB00000000746E65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A7DF4C40(uint64_t a1)
{
  v2 = sub_1A7DF5EFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DF4C7C(uint64_t a1)
{
  v2 = sub_1A7DF5EFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DF4CE8()
{
  v1 = 6581861;
  if (*v0 != 1)
  {
    v1 = 0x6D6572757361656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_1A7DF4D40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A7DF5DE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A7DF4D68(uint64_t a1)
{
  v2 = sub_1A7DF5014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DF4DA4(uint64_t a1)
{
  v2 = sub_1A7DF5014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinkQualityReport.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B7E98, &qword_1A7E54C98);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 16);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DF5014();
  sub_1A7E23260();
  v13 = 0;
  sub_1A7E23010();
  if (!v2)
  {
    v12 = 1;
    sub_1A7E23010();
    v10[1] = v8;
    v11 = 2;
    sub_1A7CC7FFC(&qword_1EB2B7EA8, &qword_1A7E54CA0);
    sub_1A7DF5068(&qword_1EB2B7EB0, sub_1A7DF50E0, MEMORY[0x1E69E6300]);
    sub_1A7E23030();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1A7DF5014()
{
  result = qword_1EB2B7EA0;
  if (!qword_1EB2B7EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7EA0);
  }

  return result;
}

uint64_t sub_1A7DF5068(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A7CC9830(&qword_1EB2B7EA8, &qword_1A7E54CA0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A7DF50E0()
{
  result = qword_1EB2B7EB8;
  if (!qword_1EB2B7EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7EB8);
  }

  return result;
}

uint64_t IDSLinkQualityReport.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B7EC0, &qword_1A7E54CA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DF5014();
  sub_1A7E23250();
  if (!v2)
  {
    v18 = 0;
    sub_1A7E22F10();
    v10 = v9;
    v17 = 1;
    sub_1A7E22F10();
    v13 = v12;
    sub_1A7CC7FFC(&qword_1EB2B7EA8, &qword_1A7E54CA0);
    v16 = 2;
    sub_1A7DF5068(&qword_1EB2B7EC8, sub_1A7DF5388, MEMORY[0x1E69E6330]);
    sub_1A7E22F30();
    (*(v6 + 8))(v8, v5);
    v14 = v15[1];
    *a2 = v10;
    *(a2 + 1) = v13;
    *(a2 + 2) = v14;
  }

  sub_1A7B0CD6C(a1);
}

unint64_t sub_1A7DF5388()
{
  result = qword_1EB2B7ED0;
  if (!qword_1EB2B7ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7ED0);
  }

  return result;
}

__n128 sub_1A7DF543C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A7DF5458(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 58))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1A7DF54B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1A7DF556C()
{
  result = qword_1EB2B2BD8;
  if (!qword_1EB2B2BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2BD8);
  }

  return result;
}

unint64_t sub_1A7DF55C4()
{
  result = qword_1EB2B7ED8;
  if (!qword_1EB2B7ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7ED8);
  }

  return result;
}

unint64_t sub_1A7DF561C()
{
  result = qword_1EB2B7EE0;
  if (!qword_1EB2B7EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7EE0);
  }

  return result;
}

unint64_t sub_1A7DF5674()
{
  result = qword_1EB2B7EE8;
  if (!qword_1EB2B7EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7EE8);
  }

  return result;
}

unint64_t sub_1A7DF56CC()
{
  result = qword_1EB2B7EF0;
  if (!qword_1EB2B7EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7EF0);
  }

  return result;
}

unint64_t sub_1A7DF5724()
{
  result = qword_1EB2B7EF8;
  if (!qword_1EB2B7EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7EF8);
  }

  return result;
}

unint64_t sub_1A7DF577C()
{
  result = qword_1EB2B7F00;
  if (!qword_1EB2B7F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F00);
  }

  return result;
}

unint64_t sub_1A7DF57D4()
{
  result = qword_1EB2B7F08;
  if (!qword_1EB2B7F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F08);
  }

  return result;
}

unint64_t sub_1A7DF582C()
{
  result = qword_1EB2B7F10;
  if (!qword_1EB2B7F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F10);
  }

  return result;
}

unint64_t sub_1A7DF5884()
{
  result = qword_1EB2B7F18;
  if (!qword_1EB2B7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F18);
  }

  return result;
}

void *sub_1A7DF58D8(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B7F48, &qword_1A7E55390);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v26 - v3;
  v5 = sub_1A7CC7FFC(&qword_1EB2B7F50, &qword_1A7E55398);
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B7F58, &unk_1A7E553A0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v31 = a1;
  v13 = sub_1A7CC9878(a1, v12);
  sub_1A7DF6060();
  v14 = v30;
  sub_1A7E23250();
  if (!v14)
  {
    v26 = v5;
    v15 = v29;
    v30 = v9;
    v16 = sub_1A7E22F70();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1A7CDB538();
    v19 = v8;
    v13 = v11;
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v21 = sub_1A7E22BD0();
      swift_allocError();
      v23 = v22;
      sub_1A7CC7FFC(&qword_1EB2B4EC8, &qword_1A7E42100);
      *v23 = &type metadata for IDSLinkQualityReport.Source;
      sub_1A7E22E90();
      sub_1A7E22BC0();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
      swift_willThrow();
      (*(v30 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else if (v18)
    {
      v36 = 1;
      sub_1A7DF60B4();
      sub_1A7E22E70();
      v20 = v30;
      v27 = v11;
      v13 = sub_1A7E22EF0();
      (*(v28 + 8))(v4, v15);
      (*(v20 + 8))(v27, v19);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = 0;
      sub_1A7DF6108();
      sub_1A7E22E70();
      v25 = v30;
      (*(v27 + 1))(v7, v26);
      (*(v25 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 0;
    }
  }

  sub_1A7B0CD6C(v31);
  return v13;
}

uint64_t sub_1A7DF5DE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6572757361656DLL && a2 == 0xEC00000073746E65)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

unint64_t sub_1A7DF5EFC()
{
  result = qword_1EB2B7F28;
  if (!qword_1EB2B7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F28);
  }

  return result;
}

unint64_t sub_1A7DF5F50()
{
  result = qword_1EB2B7F30;
  if (!qword_1EB2B7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F30);
  }

  return result;
}

unint64_t sub_1A7DF5FA4()
{
  result = qword_1EB2B7F40;
  if (!qword_1EB2B7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F40);
  }

  return result;
}

unint64_t sub_1A7DF6060()
{
  result = qword_1EB2B7F60;
  if (!qword_1EB2B7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F60);
  }

  return result;
}

unint64_t sub_1A7DF60B4()
{
  result = qword_1EB2B7F68;
  if (!qword_1EB2B7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F68);
  }

  return result;
}

unint64_t sub_1A7DF6108()
{
  result = qword_1EB2B7F70;
  if (!qword_1EB2B7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F70);
  }

  return result;
}

unint64_t sub_1A7DF61A0()
{
  result = qword_1EB2B7F90;
  if (!qword_1EB2B7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F90);
  }

  return result;
}

unint64_t sub_1A7DF61F8()
{
  result = qword_1EB2B7F98;
  if (!qword_1EB2B7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F98);
  }

  return result;
}

unint64_t sub_1A7DF6250()
{
  result = qword_1EB2B7FA0;
  if (!qword_1EB2B7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7FA0);
  }

  return result;
}

unint64_t sub_1A7DF62A8()
{
  result = qword_1EB2B7FA8;
  if (!qword_1EB2B7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7FA8);
  }

  return result;
}

unint64_t sub_1A7DF6300()
{
  result = qword_1EB2B7FB0;
  if (!qword_1EB2B7FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7FB0);
  }

  return result;
}

unint64_t sub_1A7DF6358()
{
  result = qword_1EB2B7FB8;
  if (!qword_1EB2B7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7FB8);
  }

  return result;
}

unint64_t sub_1A7DF63B0()
{
  result = qword_1EB2B7FC0;
  if (!qword_1EB2B7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7FC0);
  }

  return result;
}

unint64_t sub_1A7DF6408()
{
  result = qword_1EB2B7FC8;
  if (!qword_1EB2B7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7FC8);
  }

  return result;
}

unint64_t sub_1A7DF6460()
{
  result = qword_1EB2B7FD0;
  if (!qword_1EB2B7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7FD0);
  }

  return result;
}

unint64_t sub_1A7DF64B8()
{
  result = qword_1EB2B7FD8;
  if (!qword_1EB2B7FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7FD8);
  }

  return result;
}

unint64_t sub_1A7DF6510()
{
  result = qword_1EB2B7FE0;
  if (!qword_1EB2B7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7FE0);
  }

  return result;
}

uint64_t LinkEngine.linkConnector.getter()
{
  os_unfair_lock_lock((v0 + 200));
  sub_1A7CC9510((v0 + 208), v4);
  os_unfair_lock_unlock((v0 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
  if (swift_dynamicCast())
  {
    v1 = v5;
    if (v5 == 1)
    {
      v2 = 0;
    }

    else
    {
      v1 = swift_unknownObjectRetain();
      v2 = v1;
    }
  }

  else
  {
    v2 = 0;
    v5 = xmmword_1A7E43F70;
    v1 = 1;
  }

  sub_1A7CEB438(v1);
  return v2;
}

uint64_t LinkEngine.linkConnector.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_unknownObjectRetain();
  os_unfair_lock_lock(v3 + 50);
  v7[3] = &type metadata for LinkConnectorComponent;
  v7[0] = a1;
  v7[1] = a2;
  swift_unknownObjectRetain();
  sub_1A7CC8D74(v7, &type metadata for LinkConnectorComponent);
  os_unfair_lock_unlock(v3 + 50);
  return swift_unknownObjectRelease_n();
}

uint64_t LinkConnectorComponent.connector.setter(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectRelease();
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LinkConnectorComponent.init(connector:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1A7DF6760(uint64_t *a1, os_unfair_lock_s **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_unknownObjectRetain_n();
  os_unfair_lock_lock(v4 + 50);
  v6[3] = &type metadata for LinkConnectorComponent;
  v6[0] = v2;
  v6[1] = v3;
  swift_unknownObjectRetain();
  sub_1A7CC8D74(v6, &type metadata for LinkConnectorComponent);
  os_unfair_lock_unlock(v4 + 50);
  return swift_unknownObjectRelease_n();
}

uint64_t (*LinkEngine.linkConnector.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = LinkEngine.linkConnector.getter();
  a1[1] = v3;
  return sub_1A7DF682C;
}

uint64_t sub_1A7DF682C(uint64_t *a1, char a2)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = *a1;
  swift_unknownObjectRetain();
  if (a2)
  {
    swift_unknownObjectRetain();
    os_unfair_lock_lock(v3 + 50);
    v9 = &type metadata for LinkConnectorComponent;
    v7 = v5;
    v8 = v4;
    swift_unknownObjectRetain();
    sub_1A7CC8D74(&v7, &type metadata for LinkConnectorComponent);
    os_unfair_lock_unlock(v3 + 50);
    swift_unknownObjectRelease();
  }

  else
  {
    os_unfair_lock_lock(v3 + 50);
    v9 = &type metadata for LinkConnectorComponent;
    v7 = v5;
    v8 = v4;
    swift_unknownObjectRetain();
    sub_1A7CC8D74(&v7, &type metadata for LinkConnectorComponent);
    os_unfair_lock_unlock(v3 + 50);
  }

  return swift_unknownObjectRelease_n();
}

_OWORD *LinkEndpoint.isSliced.setter(char a1)
{
  v3 = &type metadata for IDSLinkEndpointIsSliced;
  v2[0] = a1;
  return sub_1A7CC8D74(v2, &type metadata for IDSLinkEndpointIsSliced);
}

uint64_t LinkEndpoint.isSliced.getter()
{
  v1 = *v0;
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointIsSliced);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v6);
  sub_1A7B1503C(v6, &v5);
  sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
  return swift_dynamicCast() & v7;
}

uint64_t (*LinkEndpoint.isSliced.modify(uint64_t a1))()
{
  *a1 = v1;
  sub_1A7CE0928(*v1, &v4);
  *(a1 + 8) = v4 & 1;
  return sub_1A7DF6AA0;
}

_OWORD *sub_1A7DF6AA0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4 = &type metadata for IDSLinkEndpointIsSliced;
  v3[0] = v1;
  return sub_1A7CC8D74(v3, &type metadata for IDSLinkEndpointIsSliced);
}

_OWORD *LinkEndpoint.nat64Prefix.setter(uint64_t a1, uint64_t a2, char a3)
{
  v6 = &type metadata for IDSLinkEndpointNAT64Prefix;
  v4[0] = a1;
  v4[1] = a2;
  v5 = a3 & 1;
  return sub_1A7CC8D74(v4, &type metadata for IDSLinkEndpointNAT64Prefix);
}

uint64_t LinkEndpoint.nat64Prefix.getter()
{
  v1 = *v0;
  if (*(v1 + 16) && (v2 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointNAT64Prefix), (v3 & 1) != 0) && (sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v6), sub_1A7B1503C(v6, &v5), sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60), (swift_dynamicCast() & 1) != 0))
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t nw_nat64_prefix_t.description.getter(uint64_t a1, uint64_t a2)
{
  v2 = nw_nat64_prefix_t.asData.getter(a1, a2);
  if (v3 >> 60 == 15)
  {
    return 7104878;
  }

  v5 = v2;
  v6 = v3;
  v7 = sub_1A7D0E774(v2, v3);
  sub_1A7B1516C(v5, v6);
  return v7;
}

unint64_t nw_nat64_prefix_t.asData.getter(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = HIDWORD(a1);
  v6 = a2;
  v2 = a1;
  if (!a1)
  {
    return 0;
  }

  if (a1 <= 0xEuLL)
  {
    return sub_1A7DF6EAC(&v5, &v5 + a1);
  }

  v3 = a1;
  sub_1A7E21680();
  swift_allocObject();
  sub_1A7E21620();
  if (v2 >= 0x7FFFFFFF)
  {
    sub_1A7E219A0();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  else
  {
    if (v3 < 0)
    {
      __break(1u);
    }

    return v2 << 32;
  }

  return result;
}

uint64_t sub_1A7DF6D60()
{
  v1 = nw_nat64_prefix_t.asData.getter(*v0, v0[1]);
  if (v2 >> 60 == 15)
  {
    return 7104878;
  }

  v4 = v1;
  v5 = v2;
  v6 = sub_1A7D0E774(v1, v2);
  sub_1A7B1516C(v4, v5);
  return v6;
}

uint64_t (*LinkEndpoint.nat64Prefix.modify(uint64_t a1))()
{
  *a1 = v1;
  sub_1A7CE0874(*v1, v8);
  v3 = v8[0];
  v4 = v8[1];
  v5 = v9;
  v6 = v10;
  if (v10)
  {
    v3 = 0;
    v4 = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = (v6 | v5) & 1;
  return sub_1A7DF6E5C;
}

_OWORD *sub_1A7DF6E5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(a1 + 8);
  v7 = &type metadata for IDSLinkEndpointNAT64Prefix;
  v5[0] = v3;
  v5[1] = v1;
  v6 = v2;
  return sub_1A7CC8D74(v5, &type metadata for IDSLinkEndpointNAT64Prefix);
}

unint64_t sub_1A7DF6EAC(_BYTE *a1, _BYTE *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_1A7E077DC(v5);
  __dst = result;
  v11 = v7;
  v13 = v8;
  v12 = v9;
  if (a1)
  {
    if (a2 != a1)
    {
      memcpy(&__dst, a1, v4);
      return __dst;
    }
  }

  return result;
}

BOOL _sSo17nw_nat64_prefix_ta13IDSFoundationE2eeoiySbAB_ABtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = nw_nat64_prefix_t.asData.getter(a1, a2);
  v8 = v7;
  v10 = nw_nat64_prefix_t.asData.getter(a3, a4);
  v11 = v9;
  if (v8 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_1A7B1516C(v6, v8);
      return 1;
    }

    goto LABEL_5;
  }

  if (v9 >> 60 == 15)
  {
LABEL_5:
    sub_1A7B1516C(v6, v8);
    sub_1A7B1516C(v10, v11);
    return 0;
  }

  sub_1A7DF70A0(v6, v8);
  sub_1A7DF70A0(v10, v11);
  v13 = sub_1A7E07674(v6, v8, v10, v11);
  sub_1A7B1516C(v10, v11);
  sub_1A7B1516C(v10, v11);
  sub_1A7B1516C(v6, v8);
  sub_1A7B1516C(v6, v8);
  return v13;
}

__n128 initializeBufferWithCopyOfBuffer for IDSLinkEndpointNAT64Prefix(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A7DF70A0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A7D5164C(result, a2);
  }

  return result;
}

uint64_t sub_1A7DF70B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  sub_1A7DF7298(a4 + 32, v9);
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = v9[1];
  result = sub_1A7DF72D0(v9);
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    (*(v6 + 32))(v4, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A7DF713C()
{

  sub_1A7DF72D0(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1A7DF71A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7DF71EC(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

double sub_1A7DF723C(uint64_t a1)
{
  v2 = *(a1 + 64);

  sub_1A7DA0388(v3, sub_1A7D9B1E0, v1, v2);

  return result;
}

uint64_t sub_1A7DF7300(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A7CD2A2C;

  return v6(a1);
}

uint64_t sub_1A7DF73F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  v8 = sub_1A7E22D10();
  v7[14] = v8;
  v9 = *(v8 - 8);
  v7[15] = v9;
  v7[16] = *(v9 + 64);
  v7[17] = swift_task_alloc();
  sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  v7[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7DF7504, 0, 0);
}

uint64_t sub_1A7DF7504(double a1)
{
  v2 = v1[18];
  v3 = v1[15];
  v17 = v1[17];
  v18 = v1[16];
  v19 = v1[12];
  v20 = v1[13];
  v15 = v1[11];
  v16 = v1[14];
  v4 = v1[9];
  v5 = v1[10];
  v6 = sub_1A7E226D0();
  v7 = *(*(v6 - 8) + 56);
  v7(v2, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v5;

  sub_1A7DF7DF0(v2, &unk_1A7E55B48, v8);
  sub_1A7CC9970(v2, &unk_1EB2B61C0, &qword_1A7E451A0);
  v7(v2, 1, 1, v6);
  (*(v3 + 16))(v17, v15, v16);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  (*(v3 + 32))(v10 + v9, v17, v16);
  v11 = (v10 + ((v18 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v11 = v19;
  v11[1] = v20;
  sub_1A7DF7DF0(v2, &unk_1A7E55B58, v10);
  sub_1A7CC9970(v2, &unk_1EB2B61C0, &qword_1A7E451A0);
  v12 = swift_task_alloc();
  v1[19] = v12;
  v13 = sub_1A7CC7FFC(&qword_1EB2B8008, &unk_1A7E55B60);
  v1[20] = v13;
  *v12 = v1;
  v12[1] = sub_1A7DF7784;

  return MEMORY[0x1EEE6DAC8](v1 + 2, 0, 0, v13);
}

uint64_t sub_1A7DF7784()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1A7DF7958;
  }

  else
  {
    v2 = sub_1A7DF7898;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1A7DF7898()
{
  v2 = v0[3];
  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v3 = v0[7];
    *v3 = v0[2];
    v3[1] = v2;
    sub_1A7CC7FFC(&qword_1EB2B57A8, &qword_1A7E494F0);
    sub_1A7E22780();

    v4 = v0[1];

    v4();
  }
}

uint64_t sub_1A7DF7958()
{
  v1 = *(v0 + 168);
  *(v0 + 48) = v1;
  v2 = v1;
  sub_1A7CC7FFC(&qword_1EB2B57A8, &qword_1A7E494F0);
  if (swift_dynamicCast())
  {
    sub_1A7E22780();
    v3 = swift_task_alloc();
    *(v0 + 176) = v3;
    *v3 = v0;
    v3[1] = sub_1A7DF7AC0;
    v4 = *(v0 + 160);

    return MEMORY[0x1EEE6DAC8](v0 + 32, 0, 0, v4);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1A7DF7AC0()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {

    v3 = sub_1A7DF7C78;
  }

  else
  {
    v3 = sub_1A7DF7BDC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A7DF7BDC()
{
  if (*(v0 + 40) >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 56);

    *v2 = *(v0 + 32);

    v3 = *(v0 + 8);

    return v3();
  }

  return result;
}

uint64_t sub_1A7DF7C78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7DF7CF8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1A7CD22FC;

  return v8(a1);
}

double sub_1A7DF7DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_1A7CD1F00(a1, v18 - v8, &unk_1EB2B61C0, &qword_1A7E451A0);
  v10 = sub_1A7E226D0();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1A7CC9970(v9, &unk_1EB2B61C0, &qword_1A7E451A0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1A7E225F0();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1A7E226C0();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();

  return result;
}

uint64_t sub_1A7DF7FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1A7DF80A8;

  return sub_1A7B05728(a5, a6, 0, 0, 1);
}

uint64_t sub_1A7DF80A8()
{

  if (v0)
  {

    v1 = sub_1A7DFF700;
  }

  else
  {
    v1 = sub_1A7DF81C0;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A7DF81C0()
{
  sub_1A7DFF49C();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7DF8248(uint64_t a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B4A50, &unk_1A7E55B80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v13 - v7;
  os_unfair_lock_lock((v1 + 16));
  sub_1A7DF865C((v1 + 24), a1, v8);
  os_unfair_lock_unlock((v1 + 16));
  sub_1A7CD1F00(v8, v5, &qword_1EB2B4A50, &unk_1A7E55B80);
  v9 = sub_1A7CC7FFC(&qword_1EB2B61D0, &unk_1A7E432D0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    sub_1A7CC9970(v8, &qword_1EB2B4A50, &unk_1A7E55B80);
    return sub_1A7CC9970(v5, &qword_1EB2B4A50, &unk_1A7E55B80);
  }

  else
  {
    sub_1A7E22640();
    sub_1A7B05A00(&qword_1EB2B2950, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v12 = swift_allocError();
    sub_1A7E22140();
    v13[1] = v12;
    sub_1A7E22610();
    sub_1A7CC9970(v8, &qword_1EB2B4A50, &unk_1A7E55B80);
    return (*(v10 + 8))(v5, v9);
  }
}

uint64_t sub_1A7DF8474(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1A7CC7FFC(&qword_1EB2B4A50, &unk_1A7E55B80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v16 - v11;
  os_unfair_lock_lock((v3 + 16));
  sub_1A7DF865C((v3 + 24), a1, v12);
  os_unfair_lock_unlock((v3 + 16));
  sub_1A7CD1F00(v12, v9, &qword_1EB2B4A50, &unk_1A7E55B80);
  v13 = sub_1A7CC7FFC(&qword_1EB2B61D0, &unk_1A7E432D0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_1A7CC9970(v12, &qword_1EB2B4A50, &unk_1A7E55B80);
    return sub_1A7CC9970(v9, &qword_1EB2B4A50, &unk_1A7E55B80);
  }

  else
  {
    v16[0] = a2;
    v16[1] = a3;
    sub_1A7D5164C(a2, a3);
    sub_1A7E22620();
    sub_1A7CC9970(v12, &qword_1EB2B4A50, &unk_1A7E55B80);
    return (*(v14 + 8))(v9, v13);
  }
}

uint64_t sub_1A7DF865C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A7CC7FFC(&qword_1EB2B4A50, &unk_1A7E55B80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = *a1;
  if (*(*a1 + 16) && (v10 = sub_1A7CD15C0(a2), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(v9 + 56);
    v14 = sub_1A7CC7FFC(&qword_1EB2B61D0, &unk_1A7E432D0);
    v15 = *(v14 - 8);
    (*(v15 + 16))(a3, v13 + *(v15 + 72) * v12, v14);
    (*(v15 + 56))(a3, 0, 1, v14);
  }

  else
  {
    v16 = sub_1A7CC7FFC(&qword_1EB2B61D0, &unk_1A7E432D0);
    (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }

  v17 = sub_1A7CC7FFC(&qword_1EB2B61D0, &unk_1A7E432D0);
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  return sub_1A7CC9170(v8, a2);
}

double sub_1A7DF8864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_1A7CD1F00(a1, v18 - v8, &unk_1EB2B61C0, &qword_1A7E451A0);
  v10 = sub_1A7E226D0();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1A7CC9970(v9, &unk_1EB2B61C0, &qword_1A7E451A0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1A7E225F0();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1A7E226C0();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();

  return result;
}

uint64_t sub_1A7DF8A54@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_1A7DFD31C(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_1A7DFD2B8(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_1A7E219D0();
    v15 = v14;
    result = sub_1A7CC7E50(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t LinkEngine.burstsQualityMeasurementTask.getter()
{
  os_unfair_lock_lock((v0 + 200));
  sub_1A7CC9630((v0 + 208), v2);
  os_unfair_lock_unlock((v0 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
  type metadata accessor for IDSLinksQualityBurstsOngoingTask();
  if (swift_dynamicCast())
  {
    return v2[4];
  }

  else
  {
    return 0;
  }
}

uint64_t IDSLinksQualityBurstsOngoingTask.didReceiveStatsTestPacket(withPayload:link:testableLink:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1A7CD22FC;

  return sub_1A7DFDEDC(a1, a2, a4, a5);
}

uint64_t sub_1A7DF8D20()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2CA0);
  sub_1A7B0CB00(v0, qword_1EB2B2CA0);
  return sub_1A7E22050();
}

uint64_t sub_1A7DF8DAC()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2998);
  sub_1A7B0CB00(v0, qword_1EB2B2998);
  return sub_1A7E22050();
}

uint64_t IDSLinksQualityBurstsOngoingTask.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1A7DF8E64(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A7DF8E84, 0, 0);
}

uint64_t sub_1A7DF8E84()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1A7CE88C8;
    v3 = v0[5];

    return sub_1A7DF8F7C(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1A7DF8F7C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A7DF8F9C, 0, 0);
}

void sub_1A7DF8F9C()
{
  v1 = *(v0 + 64);
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 16));
  v3 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = (63 - v5) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = &qword_1EB2B66D0;
  v40 = v2;
LABEL_4:
  *(v0 + 80) = v9;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
LABEL_12:
      v12 = *(*(v2 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));

      os_unfair_lock_lock((v12 + 40));
      v13 = *(v12 + 48);
      if (*(v13 + 16) && (v14 = sub_1A7CD0DFC(&type metadata for LinkEngineLinkIDSTestableLinkComponent), (v15 & 1) != 0))
      {
        sub_1A7B0CD10(*(v13 + 56) + 32 * v14, v0 + 16);
      }

      else
      {
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
      }

      v6 &= v6 - 1;
      os_unfair_lock_unlock((v12 + 40));
      sub_1A7CC7FFC(v10, &unk_1A7E41920);
      if (swift_dynamicCast())
      {
        break;
      }

      *(v0 + 48) = xmmword_1A7E43F70;
LABEL_7:
      sub_1A7CEB438(1);

      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v16 = v10;
    v18 = *(v0 + 48);
    v17 = *(v0 + 56);
    if (v18 == 1)
    {
      v10 = v16;
      v2 = v40;
      goto LABEL_7;
    }

    v19 = swift_unknownObjectRetain();
    sub_1A7CEB438(v19);
    if (v18)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1A7CCCE58(0, v9[2] + 1, 1, v9);
      }

      v21 = v9[2];
      v20 = v9[3];
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v39 = v21 + 1;
        v24 = v9;
        v25 = v9[2];
        v26 = sub_1A7CCCE58((v20 > 1), v21 + 1, 1, v24);
        v21 = v25;
        v22 = v39;
        v9 = v26;
      }

      v9[2] = v22;
      v23 = &v9[3 * v21];
      v23[4] = v12;
      v23[5] = v18;
      v23[6] = v17;
      v10 = v16;
      v2 = v40;
      goto LABEL_4;
    }

    v10 = v16;
    v2 = v40;
  }

  while (v6);
  while (1)
  {
LABEL_8:
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_12;
    }
  }

  v27 = v9[2];
  *(v0 + 88) = v27;
  if (v27)
  {
    *(v0 + 96) = 0;
    v28 = *(v0 + 80);
    if (v28[2])
    {
      v29 = *(v0 + 72);
      v30 = v28[4];
      *(v0 + 104) = v30;
      v31 = v28[5];
      *(v0 + 112) = v31;
      v32 = v28[6];
      v33 = *(v29 + 88);

      swift_unknownObjectRetain();
      v34 = swift_task_alloc();
      *(v0 + 120) = v34;
      *v34 = v0;
      v34[1] = sub_1A7DF9374;

      sub_1A7DF96C4(v30, v31, v32, v33, 1000000000000000000, 0, 5000000000000000000, 0);
      return;
    }

LABEL_36:
    __break(1u);
    return;
  }

  v35 = *(v0 + 72);

  v36 = *(v35 + 72);
  v37 = *(v35 + 80);
  v38 = *(v0 + 8);

  v38(v36, v37);
}

uint64_t sub_1A7DF9374()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_1A7DF9620;
  }

  else
  {
    v2 = sub_1A7DF9490;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1A7DF9490()
{
  v2 = v0[11];
  v1 = v0[12];
  swift_unknownObjectRelease();

  if (v1 + 1 == v2)
  {
    v3 = v0[9];

    v4 = *(v3 + 72);
    v5 = *(v3 + 80);
    v6 = v0[1];

    v6(v4, v5);
  }

  else
  {
    v7 = v0[12] + 1;
    v0[12] = v7;
    v8 = v0[10];
    if (v7 >= *(v8 + 16))
    {
      __break(1u);
    }

    else
    {
      v9 = v0[9];
      v10 = (v8 + 24 * v7);
      v11 = v10[4];
      v0[13] = v11;
      v12 = v10[5];
      v0[14] = v12;
      v13 = v10[6];
      v14 = *(v9 + 88);

      swift_unknownObjectRetain();
      v15 = swift_task_alloc();
      v0[15] = v15;
      *v15 = v0;
      v15[1] = sub_1A7DF9374;

      sub_1A7DF96C4(v11, v12, v13, v14, 1000000000000000000, 0, 5000000000000000000, 0);
    }
  }
}

uint64_t sub_1A7DF9620()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

double LinkEngine.burstsQualityMeasurementTask.setter(uint64_t a1)
{
  sub_1A7DFEDD8(a1);

  return result;
}

uint64_t sub_1A7DF96C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[68] = v8;
  v9[67] = a8;
  v9[66] = a7;
  v9[65] = a6;
  v9[63] = a4;
  v9[64] = a5;
  v9[61] = a2;
  v9[62] = a3;
  v9[60] = a1;
  sub_1A7CC7FFC(&unk_1EB2B7BF0, &unk_1A7E4E930);
  v9[69] = swift_task_alloc();
  v10 = type metadata accessor for IDSLinksQualityReportBuilder(0);
  v9[70] = v10;
  v9[71] = *(v10 - 8);
  v9[72] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7DF97D4, 0, 0);
}

uint64_t sub_1A7DF97D4()
{
  v23 = v0;
  if (qword_1EB2B2990 != -1)
  {
    swift_once();
  }

  v1 = sub_1A7E22060();
  *(v0 + 584) = sub_1A7B0CB00(v1, qword_1EB2B2998);

  v2 = sub_1A7E22040();
  v3 = sub_1A7E228F0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 480);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1A7B0CB38(*(v4 + 16), *(v4 + 24), &v22);
    _os_log_impl(&dword_1A7AD9000, v2, v3, "  sending burst for %s...", v5, 0xCu);
    sub_1A7B0CD6C(v6);
    MEMORY[0x1AC5654B0](v6, -1, -1);
    MEMORY[0x1AC5654B0](v5, -1, -1);
  }

  v7 = *(v0 + 544);
  v8 = *(v0 + 536);
  v9 = *(v0 + 528);
  v10 = *(v0 + 520);
  v12 = *(v0 + 504);
  v11 = *(v0 + 512);
  v13 = *(v0 + 496);
  v14 = *(v7 + 56);
  *(v0 + 592) = v14;
  *(v0 + 600) = *(v7 + 64);
  v21 = *(v0 + 480);
  *(v0 + 608) = v14();
  type metadata accessor for IDSLinksQualityBurstsOngoingTask.PendingBurst();
  v15 = swift_allocObject();
  *(v0 + 616) = v15;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 40) = MEMORY[0x1E69E7CC0];
  v16 = swift_task_alloc();
  *(v0 + 624) = v16;
  *(v16 + 16) = v12;
  *(v16 + 24) = v7;
  *(v16 + 32) = v21;
  *(v16 + 48) = v13;
  *(v16 + 56) = v9;
  *(v16 + 64) = v8;
  *(v16 + 72) = v15;
  *(v16 + 80) = v11;
  *(v16 + 88) = v10;
  v17 = swift_task_alloc();
  *(v0 + 632) = v17;
  *v17 = v0;
  v17[1] = sub_1A7DF9A5C;
  v18 = MEMORY[0x1E69E7CA8] + 8;
  v19 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE40](v17, v18, 0, 0, &unk_1A7E55AE0, v16, v19);
}

uint64_t sub_1A7DF9A5C()
{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = sub_1A7DFA39C;
  }

  else
  {

    v2 = sub_1A7DF9B78;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1A7DF9B78()
{
  v81 = v0;
  v2 = (*(v0 + 592))();

  v3 = sub_1A7E22040();
  v4 = sub_1A7E228F0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 480);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v80[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1A7B0CB38(*(v5 + 16), *(v5 + 24), v80);
    _os_log_impl(&dword_1A7AD9000, v3, v4, "  sent burst for %s", v6, 0xCu);
    sub_1A7B0CD6C(v7);
    MEMORY[0x1AC5654B0](v7, -1, -1);
    MEMORY[0x1AC5654B0](v6, -1, -1);
  }

  v8 = *(v0 + 544);
  os_unfair_lock_lock((v8 + 32));
  v9 = *(v8 + 40);

  os_unfair_lock_unlock((v8 + 32));
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = (v9 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state);
  os_unfair_lock_lock((v9 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state));
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v10);

  if (!Strong)
  {
    goto LABEL_9;
  }

  v12 = *(v0 + 480);
  sub_1A7CE8644(v80);
  v13 = v80[0];
  if (!*(v80[0] + 16) || (v15 = *(v12 + 16), v14 = *(v12 + 24), v16 = sub_1A7CD1248(v15, v14), (v17 & 1) == 0))
  {

    goto LABEL_11;
  }

  v18 = *(v0 + 640);
  v19 = *(*(v13 + 56) + 8 * v16);

  os_unfair_lock_lock((Strong + 200));
  sub_1A7CC9600((Strong + 208), (v0 + 432));
  os_unfair_lock_unlock((Strong + 200));
  if (v18)
  {
    return;
  }

  sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
  type metadata accessor for IDSLinksQualityReportBuilderComponent(0);
  if ((swift_dynamicCast() & 1) != 0 && (v21 = *(v0 + 464)) != 0)
  {
    v78 = *(v0 + 576);
    v22 = *(v0 + 568);
    v23 = *(v0 + 560);
    v24 = *(v0 + 552);
    v25 = (v21 + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder);
    os_unfair_lock_lock((v21 + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder));
    v26 = sub_1A7CC7FFC(&qword_1EB2B53D8, &qword_1A7E44060);
    sub_1A7CEB564(v25 + *(v26 + 28), v24);
    os_unfair_lock_unlock(v25);

    v28 = *(v22 + 56);
    v27 = (v22 + 56);
    v28(v24, 0, 1, v23);
    sub_1A7CEB4A4(v24, v78);
  }

  else
  {
    v29 = *(v0 + 576);
    v30 = *(v0 + 568);
    v27 = *(v0 + 560);
    v31 = *(v0 + 552);
    (*(v30 + 56))(v31, 1, 1, v27);
    sub_1A7E22050();
    v32 = *(v27 + 5);
    *(v29 + v32) = sub_1A7CE363C(MEMORY[0x1E69E7CC0]);
    if ((*(v30 + 48))(v31, 1, v27) != 1)
    {
      sub_1A7CC9970(*(v0 + 552), &unk_1EB2B7BF0, &unk_1A7E4E930);
    }
  }

  v33 = *(v0 + 576);
  v34 = *(*(v0 + 560) + 20);
  if (!*(*(v33 + v34) + 16) || (sub_1A7CD12D4(v15, v14, v19), (v35 & 1) == 0))
  {
    *(v0 + 16) = v15;
    *(v0 + 24) = v14;
    *(v0 + 32) = v19;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    *(v0 + 64) = 0xE000000000000000;
    *(v0 + 72) = 4;
    *(v0 + 80) = 0xA0000000ALL;
    *(v0 + 88) = 0;
    *(v0 + 90) = 0;
    *(v0 + 96) = 0;
    *(v0 + 104) = 0;
    *(v0 + 112) = MEMORY[0x1E69E7CC0];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80[0] = *(v33 + v34);
    sub_1A7DC4018((v0 + 16), v15, v14, v19, isUniquelyReferenced_nonNull_native);
    *(v33 + v34) = v80[0];
  }

  v37 = swift_isUniquelyReferenced_nonNull_native();
  v80[0] = *(v33 + v34);
  v38 = v80[0];
  v79 = sub_1A7CD12D4(v15, v14, v19);
  v40 = *(v38 + 16);
  v41 = (v39 & 1) == 0;
  v42 = v40 + v41;
  if (__OFADD__(v40, v41))
  {
    __break(1u);
    goto LABEL_46;
  }

  v43 = v39;
  if (*(v38 + 24) >= v42)
  {
    if ((v37 & 1) == 0)
    {
      sub_1A7DC6F18();
      if ((v43 & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_30;
    }
  }

  else
  {
    sub_1A7DBFAA0(v42, v37);
    v79 = sub_1A7CD12D4(v15, v14, v19);
    if ((v43 & 1) != (v44 & 1))
    {

      sub_1A7E23140();
      return;
    }
  }

  if ((v43 & 1) == 0)
  {
LABEL_48:
    __break(1u);
    return;
  }

LABEL_30:
  v45 = (*(v80[0] + 56) + 104 * v79);
  v38 = v45[1];
  if (!v38)
  {
    goto LABEL_48;
  }

  v74 = *v45;
  v70 = v45[3];
  v71 = v45[2];
  v68 = v45[5];
  v69 = v45[4];
  v66 = v45[7];
  v67 = v45[6];
  v64 = v45[8];
  v77 = v45[9];
  v75 = v45[11];
  v76 = v45[10];
  v27 = v45[12];
  v46 = *(v0 + 616);
  os_unfair_lock_lock((v46 + 16));
  v47 = *(v46 + 40);
  v48 = *(v47 + 16);
  v72 = v34;
  v73 = v33;
  if (!v48)
  {
    v1 = 0.0;
    goto LABEL_41;
  }

  if (v48 >= 4)
  {
    v49 = v48 & 0x7FFFFFFFFFFFFFFCLL;
    v51 = (v47 + 48);
    v50 = 0.0;
    v52 = v48 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v50 = v50 + *(v51 - 2) + *(v51 - 1) + *v51 + v51[1];
      v51 += 4;
      v52 -= 4;
    }

    while (v52);
    if (v48 == v49)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v49 = 0;
    v50 = 0.0;
  }

  v53 = v48 - v49;
  v54 = (v47 + 8 * v49 + 32);
  do
  {
    v55 = *v54++;
    v50 = v50 + v55;
    --v53;
  }

  while (v53);
LABEL_40:
  v1 = v50 / v48;
LABEL_41:
  v56 = *(v0 + 616);
  v34 = *(v56 + 24);
  v33 = *(v56 + 32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_46:
    v27 = sub_1A7CCCFA0(0, *(v27 + 2) + 1, 1, v27);
  }

  v58 = *(v27 + 2);
  v57 = *(v27 + 3);
  if (v58 >= v57 >> 1)
  {
    v27 = sub_1A7CCCFA0((v57 > 1), v58 + 1, 1, v27);
  }

  v60 = *(v0 + 608);
  v59 = *(v0 + 616);
  v63 = *(v0 + 576);
  *(v27 + 2) = v58 + 1;
  v61 = &v27[64 * v58];
  *(v61 + 4) = 0;
  *(v61 + 5) = 0;
  *(v61 + 6) = v60;
  *(v61 + 7) = v2;
  *(v61 + 8) = v1;
  *(v61 + 9) = v34;
  *(v61 + 10) = v33;
  *(v61 + 44) = 0x8000;
  os_unfair_lock_unlock(v59 + 4);
  *(v0 + 224) = v74;
  *(v0 + 232) = v38;
  *(v0 + 240) = v71;
  *(v0 + 248) = v70;
  *(v0 + 256) = v69;
  *(v0 + 264) = v68;
  *(v0 + 272) = v67;
  *(v0 + 280) = v66;
  *(v0 + 288) = v64;
  *(v0 + 296) = v77;
  *(v0 + 304) = v76;
  *(v0 + 312) = v75;
  *(v0 + 320) = v27;
  sub_1A7DC980C(v0 + 224, v0 + 328);

  v65 = v80[0];
  v62 = (*(v80[0] + 56) + 104 * v79);
  *v62 = v74;
  v62[1] = v38;
  v62[2] = v71;
  v62[3] = v70;
  v62[4] = v69;
  v62[5] = v68;
  v62[6] = v67;
  v62[7] = v66;
  v62[8] = v64;
  v62[9] = v77;
  v62[10] = v76;
  v62[11] = v75;
  v62[12] = v27;
  *(v0 + 120) = v74;
  *(v0 + 128) = v38;
  *(v0 + 136) = v71;
  *(v0 + 144) = v70;
  *(v0 + 152) = v69;
  *(v0 + 160) = v68;
  *(v0 + 168) = v67;
  *(v0 + 176) = v66;
  *(v0 + 184) = v64;
  *(v0 + 192) = v77;
  *(v0 + 200) = v76;
  *(v0 + 208) = v75;
  *(v0 + 216) = v27;
  sub_1A7CC9970(v0 + 120, &qword_1EB2B8000, &qword_1A7E55AF0);
  *(v73 + v72) = v65;
  sub_1A7DA1520(v63);

LABEL_9:

LABEL_11:

  v20 = *(v0 + 8);

  v20();
}

uint64_t sub_1A7DFA39C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7DFA42C()
{
  sub_1A7DFF6D0(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1A7DFA464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 216) = v14;
  *(v8 + 224) = v15;
  *(v8 + 200) = v13;
  *(v8 + 184) = a7;
  *(v8 + 192) = a8;
  *(v8 + 168) = a5;
  *(v8 + 176) = a6;
  *(v8 + 152) = a3;
  *(v8 + 160) = a4;
  *(v8 + 144) = a2;
  v9 = sub_1A7E22CF0();
  *(v8 + 232) = v9;
  *(v8 + 240) = *(v9 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v10 = sub_1A7E22D10();
  *(v8 + 264) = v10;
  *(v8 + 272) = *(v10 - 8);
  *(v8 + 280) = swift_task_alloc();
  sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7DFA5F0, 0, 0);
}

uint64_t sub_1A7DFA5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = *(v5 + 152);
  if (v6 < 0)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE58](a1, a2, a3, a4);
  }

  if (v6)
  {
    *(v5 + 304) = **(v5 + 144);
    *(v5 + 312) = 0;
    v7 = *(v5 + 288);
    v8 = *(v5 + 296);
    v9 = *(v5 + 208);
    v33 = *(v5 + 192);
    v34 = *(v5 + 200);
    v11 = *(v5 + 160);
    v10 = *(v5 + 168);
    v12 = sub_1A7E226D0();
    v13 = *(v12 - 8);
    v36 = *(v5 + 176);
    (*(v13 + 56))(v8, 1, 1, v12);
    v14 = swift_allocObject();
    *(v14 + 16) = 0u;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    *(v14 + 48) = v36;
    *(v14 + 64) = v33;
    *(v14 + 72) = v34;
    *(v14 + 80) = v9;
    sub_1A7CD1F00(v8, v7, &unk_1EB2B61C0, &qword_1A7E451A0);
    LODWORD(v7) = (*(v13 + 48))(v7, 1, v12);

    swift_unknownObjectRetain();

    v15 = *(v5 + 288);
    if (v7 == 1)
    {
      sub_1A7CC9970(*(v5 + 288), &unk_1EB2B61C0, &qword_1A7E451A0);
      v16 = 0;
      v17 = 0;
    }

    else
    {
      sub_1A7E226C0();
      (*(v13 + 8))(v15, v12);
      if (*(v14 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v16 = sub_1A7E225F0();
        v17 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }
    }

    if (v17 | v16)
    {
      v21 = v5 + 16;
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      *(v5 + 32) = v16;
      *(v5 + 40) = v17;
    }

    else
    {
      v21 = 0;
    }

    v23 = *(v5 + 296);
    v22 = *(v5 + 304);
    v25 = *(v5 + 240);
    v24 = *(v5 + 248);
    v26 = *(v5 + 224);
    v35 = *(v5 + 232);
    v27 = *(v5 + 216);
    *(v5 + 48) = 1;
    *(v5 + 56) = v21;
    *(v5 + 64) = v22;
    swift_task_create();

    sub_1A7CC9970(v23, &unk_1EB2B61C0, &qword_1A7E451A0);
    *(v5 + 112) = v27;
    *(v5 + 120) = v26;
    sub_1A7E22D40();
    v29 = *(v5 + 96);
    v28 = *(v5 + 104);
    sub_1A7E23170();
    *(v5 + 128) = v29;
    *(v5 + 136) = v28;
    *(v5 + 80) = 0;
    *(v5 + 72) = 0;
    *(v5 + 88) = 1;
    v30 = sub_1A7B05A00(&qword_1EB2B2880, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
    sub_1A7E23150();
    sub_1A7B05A00(&qword_1EB2B2888, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
    sub_1A7E22D20();
    v31 = *(v25 + 8);
    *(v5 + 320) = v31;
    *(v5 + 328) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v24, v35);
    v32 = swift_task_alloc();
    *(v5 + 336) = v32;
    *v32 = v5;
    v32[1] = sub_1A7DFAAC4;
    a3 = *(v5 + 264);
    a1 = *(v5 + 256);
    a2 = v5 + 72;
    a4 = v30;

    return MEMORY[0x1EEE6DE58](a1, a2, a3, a4);
  }

  v18 = *(v5 + 8);

  return v18();
}

uint64_t sub_1A7DFAAC4()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    (*(v2 + 320))(*(v2 + 256), *(v2 + 232));
    v3 = sub_1A7DFB0EC;
  }

  else
  {
    v5 = *(v2 + 272);
    v4 = *(v2 + 280);
    v6 = *(v2 + 264);
    (*(v2 + 320))(*(v2 + 256), *(v2 + 232));
    (*(v5 + 8))(v4, v6);
    v3 = sub_1A7DFAC1C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A7DFAC1C(double a1)
{
  v2 = *(v1 + 312) + 1;
  if (v2 == *(v1 + 152))
  {

    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    *(v1 + 312) = v2;
    v5 = *(v1 + 288);
    v6 = *(v1 + 296);
    v7 = *(v1 + 208);
    v31 = *(v1 + 192);
    v32 = *(v1 + 200);
    v9 = *(v1 + 160);
    v8 = *(v1 + 168);
    v10 = sub_1A7E226D0();
    v11 = *(v10 - 8);
    v34 = *(v1 + 176);
    (*(v11 + 56))(v6, 1, 1, v10);
    v12 = swift_allocObject();
    *(v12 + 16) = 0u;
    *(v12 + 32) = v9;
    *(v12 + 40) = v8;
    *(v12 + 48) = v34;
    *(v12 + 64) = v31;
    *(v12 + 72) = v32;
    *(v12 + 80) = v7;
    sub_1A7CD1F00(v6, v5, &unk_1EB2B61C0, &qword_1A7E451A0);
    LODWORD(v5) = (*(v11 + 48))(v5, 1, v10);

    swift_unknownObjectRetain();

    v13 = *(v1 + 288);
    if (v5 == 1)
    {
      sub_1A7CC9970(*(v1 + 288), &unk_1EB2B61C0, &qword_1A7E451A0);
      v14 = 0;
      v15 = 0;
    }

    else
    {
      sub_1A7E226C0();
      (*(v11 + 8))(v13, v10);
      if (*(v12 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v14 = sub_1A7E225F0();
        v15 = v16;
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }
    }

    if (v15 | v14)
    {
      v17 = v1 + 16;
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *(v1 + 32) = v14;
      *(v1 + 40) = v15;
    }

    else
    {
      v17 = 0;
    }

    v19 = *(v1 + 296);
    v18 = *(v1 + 304);
    v21 = *(v1 + 240);
    v20 = *(v1 + 248);
    v22 = *(v1 + 224);
    v33 = *(v1 + 232);
    v23 = *(v1 + 216);
    *(v1 + 48) = 1;
    *(v1 + 56) = v17;
    *(v1 + 64) = v18;
    swift_task_create();

    sub_1A7CC9970(v19, &unk_1EB2B61C0, &qword_1A7E451A0);
    *(v1 + 112) = v23;
    *(v1 + 120) = v22;
    sub_1A7E22D40();
    v25 = *(v1 + 96);
    v24 = *(v1 + 104);
    sub_1A7E23170();
    *(v1 + 128) = v25;
    *(v1 + 136) = v24;
    *(v1 + 80) = 0;
    *(v1 + 72) = 0;
    *(v1 + 88) = 1;
    v26 = sub_1A7B05A00(&qword_1EB2B2880, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
    sub_1A7E23150();
    sub_1A7B05A00(&qword_1EB2B2888, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
    sub_1A7E22D20();
    v27 = *(v21 + 8);
    *(v1 + 320) = v27;
    *(v1 + 328) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v20, v33);
    v28 = swift_task_alloc();
    *(v1 + 336) = v28;
    *v28 = v1;
    v28[1] = sub_1A7DFAAC4;
    v30 = *(v1 + 256);
    v29 = *(v1 + 264);

    return MEMORY[0x1EEE6DE58](v30, v1 + 72, v29, v26);
  }
}

uint64_t sub_1A7DFB0EC()
{
  (*(v0[34] + 8))(v0[35], v0[33]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A7DFB1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1A7CD2A2C;

  return sub_1A7DFB284(a4, a5, a6, a7, a8, v17);
}

uint64_t sub_1A7DFB284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[13] = a6;
  v7[14] = v6;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  v8 = sub_1A7E22D10();
  v7[15] = v8;
  v7[16] = *(v8 - 8);
  v7[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7DFB37C, 0, 0);
}

uint64_t sub_1A7DFB37C()
{
  v32 = v1;
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 112);
  os_unfair_lock_lock((v3 + 32));
  v4 = *(v3 + 48);
  v5 = v4 + 1;
  *(v1 + 144) = v4 + 1;
  if (v4 == -1)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v1 + 112);
    *(v3 + 48) = v5;
    os_unfair_lock_unlock((v3 + 32));
    *(v1 + 232) = 1;
    *(v1 + 16) = sub_1A7DF6EAC((v1 + 232), (v1 + 233));
    *(v1 + 24) = v7 & 0xFFFFFFFFFFFFFFLL;
    *(v1 + 48) = bswap64(v5);
    v0 = v1 + 56;
    sub_1A7DF6EAC((v1 + 48), (v1 + 56));
    v8 = sub_1A7E21A30();
    v2 = *(v1 + 24);
    v30 = *(v1 + 16);
    v9 = *(v6 + 56);
    *(v1 + 152) = v9;
    *(v1 + 160) = *(v6 + 64);
    *(v1 + 168) = v9(v8);
    if (qword_1EB2B2990 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v10 = sub_1A7E22060();
  *(v1 + 176) = sub_1A7B0CB00(v10, qword_1EB2B2998);

  v11 = sub_1A7E22040();
  v12 = sub_1A7E228F0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v1 + 64);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31[0] = v15;
    *v14 = 134218242;
    *(v14 + 4) = v5;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1A7B0CB38(*(v13 + 16), *(v13 + 24), v31);
    _os_log_impl(&dword_1A7AD9000, v11, v12, "    send burst packet %llu on link %s", v14, 0x16u);
    sub_1A7B0CD6C(v15);
    MEMORY[0x1AC5654B0](v15, -1, -1);
    MEMORY[0x1AC5654B0](v14, -1, -1);
  }

  v16 = *(v1 + 136);
  v17 = *(v1 + 104);
  v19 = *(v1 + 88);
  v18 = *(v1 + 96);
  v20 = *(*(v1 + 112) + 96);
  v21 = swift_task_alloc();
  *(v1 + 184) = v21;
  *(v21 + 16) = *(v1 + 72);
  *(v21 + 32) = v30;
  *(v21 + 40) = v2;
  *(v21 + 48) = v17;
  *(v1 + 56) = v5;
  v22 = swift_task_alloc();
  *(v1 + 192) = v22;
  v22[2] = v20;
  v22[3] = v0;
  v22[4] = sub_1A7DFF1D0;
  v22[5] = v21;
  sub_1A7E22D00();
  v23 = swift_allocObject();
  *(v1 + 200) = v23;
  *(v23 + 16) = &unk_1A7E55B18;
  *(v23 + 24) = v22;
  v24 = swift_task_alloc();
  *(v1 + 208) = v24;
  v24[2] = &unk_1A7E49C88;
  v24[3] = v23;
  v24[4] = v16;
  v24[5] = v19;
  v24[6] = v18;
  v25 = swift_task_alloc();
  *(v1 + 216) = v25;
  *v25 = v1;
  v25[1] = sub_1A7DFB714;
  v26 = MEMORY[0x1E6969080];
  v34 = MEMORY[0x1E6969080];
  v27 = MEMORY[0x1E6969080];
  v28 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DD58](v1 + 32, v26, v27, 0, 0, &unk_1A7E49C90, v24, v28);
}

uint64_t sub_1A7DFB714()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_1A7DFBB28;
  }

  else
  {
    sub_1A7CC7E50(*(v2 + 32), *(v2 + 40));

    v3 = sub_1A7DFB870;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A7DFB870()
{
  v25 = v1;
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = *(v1 + 200);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v0 = *(v1 + 192);
    v4 = *(v1 + 168);
    v7 = *(v1 + 152);
    v5 = *(v1 + 160);
    v2 = *(v1 + 104);
    (*(*(v1 + 128) + 8))(*(v1 + 136), *(v1 + 120));

    v3 = v7(v8);
    os_unfair_lock_lock((v2 + 16));
    v9 = *(v2 + 32);
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (!v10)
    {
      v5 = *(v1 + 104);
      *(v2 + 32) = v11;
      v0 = *(v5 + 40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + 40) = v0;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  v0 = sub_1A7CCD7F8(0, *(v0 + 2) + 1, 1, v0);
  *(v5 + 40) = v0;
LABEL_4:
  v13 = v3 - v4;
  v15 = *(v0 + 2);
  v14 = *(v0 + 3);
  if (v15 >= v14 >> 1)
  {
    v0 = sub_1A7CCD7F8((v14 > 1), v15 + 1, 1, v0);
    *(v5 + 40) = v0;
  }

  *(v0 + 2) = v15 + 1;
  *&v0[8 * v15 + 32] = v13;
  os_unfair_lock_unlock((v2 + 16));

  v16 = sub_1A7E22040();
  v17 = sub_1A7E228F0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v1 + 144);
    v19 = *(v1 + 64);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24[0] = v21;
    *v20 = 134218242;
    *(v20 + 4) = v18;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1A7B0CB38(*(v19 + 16), *(v19 + 24), v24);
    _os_log_impl(&dword_1A7AD9000, v16, v17, "    received ack for packet %llu on link %s", v20, 0x16u);
    sub_1A7B0CD6C(v21);
    MEMORY[0x1AC5654B0](v21, -1, -1);
    MEMORY[0x1AC5654B0](v20, -1, -1);
  }

  sub_1A7CC7E50(*(v1 + 16), *(v1 + 24));

  v22 = *(v1 + 8);

  return v22();
}

uint64_t sub_1A7DFBB28()
{
  v13 = v0;
  v12[1] = *MEMORY[0x1E69E9840];

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  (*(v0[16] + 8))(v0[17], v0[15]);

  v2 = sub_1A7E22040();
  v3 = sub_1A7E228F0();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[28];
  if (v4)
  {
    v6 = v0[18];
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12[0] = v9;
    *v8 = 134218242;
    *(v8 + 4) = v6;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1A7B0CB38(*(v7 + 16), *(v7 + 24), v12);
    _os_log_impl(&dword_1A7AD9000, v2, v3, "    never received burst packet ack for %llu on link %s", v8, 0x16u);
    sub_1A7B0CD6C(v9);
    MEMORY[0x1AC5654B0](v9, -1, -1);
    MEMORY[0x1AC5654B0](v8, -1, -1);
  }

  sub_1A7CC7E50(v0[2], v0[3]);

  v10 = v0[1];

  return v10();
}

double sub_1A7DFBD2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - v11;
  v13 = sub_1A7E226D0();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a4;
  v14[8] = a5;
  swift_unknownObjectRetain();
  sub_1A7D5164C(a3, a4);

  sub_1A7D94654(0, 0, v12, &unk_1A7E55B98, v14);

  return result;
}

uint64_t sub_1A7DFBE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a8;
  ObjectType = swift_getObjectType();
  v15 = (*(a5 + 32) + **(a5 + 32));
  v13 = swift_task_alloc();
  *(v8 + 24) = v13;
  *v13 = v8;
  v13[1] = sub_1A7DFBFB8;

  return v15(a6, a7, ObjectType, a5);
}

uint64_t sub_1A7DFBFB8()
{

  return MEMORY[0x1EEE6DFA0](sub_1A7DFC0B4, 0, 0);
}

void sub_1A7DFC0B4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v4;
    os_unfair_lock_unlock((v1 + 16));
    v5 = *(v0 + 8);

    v5();
  }
}

uint64_t IDSLinksQualityBurstsOngoingTask.stop()()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1A7CEA284, 0, 0);
}

uint64_t IDSLinksQualityBurstsOngoingTask.deinit()
{

  sub_1A7DFEE70(v0 + 40);

  return v0;
}

uint64_t IDSLinksQualityBurstsOngoingTask.__deallocating_deinit()
{

  sub_1A7DFEE70(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1A7DFC204()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A7CD2A2C;

  return IDSLinksQualityBurstsOngoingTask.stop()();
}

void (*LinkEngine.burstsQualityMeasurementTask.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 56) = v1;
  os_unfair_lock_lock((v1 + 200));
  sub_1A7CC9630((v1 + 208), v4);
  os_unfair_lock_unlock((v1 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
  v4[8] = type metadata accessor for IDSLinksQualityBurstsOngoingTask();
  v5 = swift_dynamicCast();
  v6 = v4[5];
  if (!v5)
  {
    v6 = 0;
  }

  v4[4] = v6;
  return sub_1A7CEA880;
}

uint64_t sub_1A7DFC374(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A7E22AE0() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1A7E23200();
      MEMORY[0x1AC562AF0](v10);
      result = sub_1A7E23240();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A7DFC508(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A7E22AE0() + 1) & ~v5;
    do
    {
      sub_1A7E23200();

      sub_1A7E22350();
      v9 = sub_1A7E23240();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_1A7DFC6B8(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A7E22AE0() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 24 * v6 + 16);
      sub_1A7E23200();

      sub_1A7E22350();
      MEMORY[0x1AC562AF0](v9);
      v10 = sub_1A7E23240();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = v12 + 24 * v3;
        v14 = (v12 + 24 * v6);
        if (v3 != v6 || v13 >= v14 + 24)
        {
          v15 = *v14;
          *(v13 + 16) = *(v14 + 2);
          *v13 = v15;
        }

        v16 = *(a2 + 56);
        result = (v16 + 104 * v3);
        v17 = (v16 + 104 * v6);
        if (v3 != v6 || result >= v17 + 104)
        {
          result = memmove(result, v17, 0x68uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A7DFC88C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A7E22AE0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + v6);
      result = MEMORY[0x1AC562AC0](*(a2 + 40), *(v9 + v6), 1);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A7DFCA00(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A7E22AE0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1A7E231F0();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_1A7CC7FFC(&qword_1EB2B61D0, &unk_1A7E432D0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
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

  return result;
}

unint64_t sub_1A7DFCBC4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A7E22AE0() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_1A7E23200();
      MEMORY[0x1AC562B10](v9);
      result = sub_1A7E23240();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v3);
      v13 = (v11 + 8 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_1A7CC7FFC(&qword_1EB2B61D0, &unk_1A7E432D0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1A7DFCDAC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A7E22AE0() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1A7E22960();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void (*sub_1A7DFCF38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5))(uint64_t *a1, char a2)
{
  v6 = v5;
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x2A0uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[81] = v5;
  v12[80] = a4;
  v12[79] = a3;
  v12[78] = a2;
  v14 = *v5;
  v15 = sub_1A7CD12D4(a2, a3, a4);
  *(v13 + 664) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = v15;
      sub_1A7DC6F18();
      v15 = v23;
      goto LABEL_11;
    }

    sub_1A7DBFAA0(v20, a5 & 1);
    v15 = sub_1A7CD12D4(a2, a3, a4);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1A7E23140();
    __break(1u);
    return result;
  }

LABEL_11:
  v13[82] = v15;
  if (v21)
  {
    memmove(v13 + 26, (*(*v6 + 56) + 104 * v15), 0x68uLL);
  }

  else
  {
    v13[38] = 0;
    *(v13 + 17) = 0u;
    *(v13 + 18) = 0u;
    *(v13 + 15) = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 13) = 0u;
    *(v13 + 14) = 0u;
  }

  return sub_1A7DFD0C8;
}

void sub_1A7DFD0C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 312);
  v4 = *(*a1 + 288);
  v3[4] = *(*a1 + 272);
  v3[5] = v4;
  *(v2 + 408) = *(v2 + 304);
  v5 = *(v2 + 224);
  *v3 = *(v2 + 208);
  v3[1] = v5;
  v6 = *(v2 + 256);
  v3[2] = *(v2 + 240);
  v3[3] = v6;
  v7 = *(v2 + 320);
  if (a2)
  {
    if (v7)
    {
      v8 = *(v2 + 656);
      v9 = *(v2 + 648);
      if ((*(v2 + 664) & 1) == 0)
      {
        v10 = *(v2 + 640);
        v11 = *(v2 + 632);
        v12 = *(v2 + 624);
        v13 = *v9;
        v14 = *(v2 + 288);
        *(v2 + 64) = *(v2 + 272);
        *(v2 + 80) = v14;
        *(v2 + 96) = *(v2 + 304);
        v15 = *(v2 + 224);
        *v2 = *(v2 + 208);
        *(v2 + 16) = v15;
        v16 = *(v2 + 256);
        *(v2 + 32) = *(v2 + 240);
        *(v2 + 48) = v16;
        v17 = v11;
        v18 = v2;
LABEL_11:
        sub_1A7DC62B0(v8, v12, v17, v10, v18, v13);

        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else if (v7)
  {
    v8 = *(v2 + 656);
    v9 = *(v2 + 648);
    if ((*(v2 + 664) & 1) == 0)
    {
      v13 = *v9;
      v21 = *(v2 + 240);
      *(v2 + 152) = *(v2 + 256);
      v22 = *(v2 + 288);
      *(v2 + 168) = *(v2 + 272);
      *(v2 + 184) = v22;
      v23 = *(v2 + 224);
      *(v2 + 104) = *(v2 + 208);
      *(v2 + 120) = v23;
      v10 = *(v2 + 640);
      v24 = *(v2 + 632);
      v12 = *(v2 + 624);
      *(v2 + 200) = *(v2 + 304);
      *(v2 + 136) = v21;
      v18 = v2 + 104;
      v17 = v24;
      goto LABEL_11;
    }

LABEL_7:
    memmove((*(*v9 + 56) + 104 * v8), (v2 + 208), 0x68uLL);
    goto LABEL_12;
  }

  if (*(v2 + 664))
  {
    v19 = *(v2 + 656);
    v20 = **(v2 + 648);
    sub_1A7DFF094(*(v20 + 48) + 24 * v19);
    sub_1A7DFC6B8(v19, v20);
  }

LABEL_12:
  v25 = *(v2 + 288);
  *(v2 + 480) = *(v2 + 272);
  *(v2 + 496) = v25;
  *(v2 + 512) = *(v2 + 304);
  v26 = *(v2 + 224);
  *(v2 + 416) = *(v2 + 208);
  *(v2 + 432) = v26;
  v27 = *(v2 + 256);
  *(v2 + 448) = *(v2 + 240);
  *(v2 + 464) = v27;
  sub_1A7CD1F00(v3, v2 + 520, &qword_1EB2B8000, &qword_1A7E55AF0);
  sub_1A7CC9970(v2 + 416, &qword_1EB2B8000, &qword_1A7E55AF0);

  free(v2);
}

uint64_t (*sub_1A7DFD284(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1A7DFD2AC;
}

uint64_t sub_1A7DFD2B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1A7DFD31C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7DFD3D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a1;
  v5[4] = a2;
  v5[2] = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1A7DFD3FC, 0, 0);
}

uint64_t sub_1A7DFD3FC()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  *(v2 + 32) = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v0 + 16;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1A7DFD514;
  v6 = *(v0 + 24);
  v7 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE18](v6, &unk_1A7E55B78, v2, sub_1A7DFF5BC, v4, 0, 0, v7);
}

uint64_t sub_1A7DFD514()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A7DFD65C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A7DFD65C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7DFD6C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a1;
  v5[4] = a2;
  v5[2] = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1A7DFD6F4, 0, 0);
}

uint64_t sub_1A7DFD6F4()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  *(v2 + 32) = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1A7DFD7F8;
  v5 = *(v0 + 24);
  v6 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000022, 0x80000001A7EB1F00, sub_1A7DFF5E8, v2, v6);
}

uint64_t sub_1A7DFD7F8()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A7DFD934, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A7DFD934()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7DFD998(uint64_t a1, os_unfair_lock_s *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = sub_1A7CC7FFC(&qword_1EB2B4A50, &unk_1A7E55B80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = *a3;
  os_unfair_lock_lock(a2 + 4);
  v12 = sub_1A7CC7FFC(&qword_1EB2B61D0, &unk_1A7E432D0);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v10, a1, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  sub_1A7CC9170(v10, v11);
  os_unfair_lock_unlock(a2 + 4);
  return a4();
}

uint64_t sub_1A7DFDAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A7DFDB74, 0, 0);
}

uint64_t sub_1A7DFDB74()
{
  v1 = *(v0 + 56);
  v10 = *(v0 + 48);
  *(v0 + 88) = 2;
  *(v0 + 16) = sub_1A7DF6EAC((v0 + 88), (v0 + 89));
  *(v0 + 24) = v2 & 0xFFFFFFFFFFFFFFLL;
  *(v0 + 32) = bswap64(v1);
  sub_1A7DF6EAC((v0 + 32), (v0 + 40));
  sub_1A7E21A30();
  ObjectType = swift_getObjectType();
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  v9 = (*(v10 + 32) + **(v10 + 32));
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1A7DFDD28;
  v7 = *(v0 + 48);

  return v9(v4, v5, ObjectType, v7);
}

uint64_t sub_1A7DFDD28()
{

  return MEMORY[0x1EEE6DFA0](sub_1A7DFDE50, 0, 0);
}

uint64_t sub_1A7DFDE50()
{
  sub_1A7CC7E50(v0[8], v0[9]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1A7DFDEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A7DFDF04, 0, 0);
}

uint64_t sub_1A7DFDF04()
{
  v1 = sub_1A7D5149C(*(v0 + 136), *(v0 + 144), 0);
  *(v0 + 68) = v1;
  if ((v1 & 0x100) != 0)
  {
    if (qword_1EB2B2990 != -1)
    {
      swift_once();
    }

    v6 = sub_1A7E22060();
    sub_1A7B0CB00(v6, qword_1EB2B2998);
    v7 = sub_1A7E22040();
    v8 = sub_1A7E228F0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A7AD9000, v7, v8, "no type", v9, 2u);
      MEMORY[0x1AC5654B0](v9, -1, -1);
    }

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 160);
    ObjectType = swift_getObjectType();
    v11 = (*(v12 + 40) + **(v12 + 40));
    v3 = swift_task_alloc();
    *(v0 + 176) = v3;
    *v3 = v0;
    v3[1] = sub_1A7DFE128;
    v4 = *(v0 + 160);

    return v11(v0 + 72, ObjectType, v4);
  }
}

uint64_t sub_1A7DFE128()
{

  return MEMORY[0x1EEE6DFA0](sub_1A7DFE224, 0, 0);
}

void *sub_1A7DFE224()
{
  v48 = v0;
  v1 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 104);
  *(v0 + 63) = *(v0 + 119);
  sub_1A7CEB5C8(v0 + 16);
  v2 = *(v0 + 68);
  if (*(v0 + 24) == 1)
  {
    if ((v2 - 1) > 1)
    {
LABEL_20:
      if (qword_1EB2B2990 != -1)
      {
        swift_once();
      }

      v24 = *(v0 + 136);
      v25 = *(v0 + 144);
      v26 = sub_1A7E22060();
      sub_1A7B0CB00(v26, qword_1EB2B2998);
      sub_1A7D5164C(v24, v25);
      v27 = sub_1A7E22040();
      v28 = sub_1A7E228F0();
      if (!os_log_type_enabled(v27, v28))
      {
        sub_1A7CC7E50(*(v0 + 136), *(v0 + 144));
LABEL_35:

LABEL_36:
        v46 = *(v0 + 8);

        return v46();
      }

      v29 = *(v0 + 68);
      v30 = *(v0 + 144);
      v31 = swift_slowAlloc();
      result = swift_slowAlloc();
      v32 = result;
      v47 = result;
      *v31 = 16777986;
      *(v31 + 4) = v29;
      *(v31 + 5) = 2048;
      v33 = v30 >> 62;
      if ((v30 >> 62) > 1)
      {
        if (v33 != 2)
        {
          v34 = 0;
          goto LABEL_34;
        }

        v35 = *(*(v0 + 136) + 16);
        v36 = *(*(v0 + 136) + 24);
        v37 = __OFSUB__(v36, v35);
        v34 = v36 - v35;
        if (!v37)
        {
          goto LABEL_34;
        }

        __break(1u);
      }

      else if (!v33)
      {
        v34 = *(v0 + 150);
LABEL_34:
        v41 = *(v0 + 136);
        v40 = *(v0 + 144);
        *(v31 + 7) = v34;
        sub_1A7CC7E50(v41, v40);
        *(v31 + 15) = 2080;
        *(v0 + 128) = sub_1A7D0E3F8(v41, v40);
        sub_1A7CC7FFC(&qword_1EB2B4AA0, &qword_1A7E45010);
        sub_1A7CD0F8C();
        v42 = sub_1A7E221F0();
        v44 = v43;

        v45 = sub_1A7B0CB38(v42, v44, &v47);

        *(v31 + 17) = v45;
        _os_log_impl(&dword_1A7AD9000, v27, v28, "unrecognized burst packet type: %hhu %ld %s", v31, 0x19u);
        sub_1A7B0CD6C(v32);
        MEMORY[0x1AC5654B0](v32, -1, -1);
        MEMORY[0x1AC5654B0](v31, -1, -1);
        goto LABEL_35;
      }

      v38 = *(v0 + 136);
      v39 = *(v0 + 140);
      v37 = __OFSUB__(v39, v38);
      LODWORD(v34) = v39 - v38;
      if (v37)
      {
        __break(1u);
        return result;
      }

      v34 = v34;
      goto LABEL_34;
    }

LABEL_14:
    if (qword_1EB2B2990 != -1)
    {
      swift_once();
    }

    v16 = sub_1A7E22060();
    sub_1A7B0CB00(v16, qword_1EB2B2998);
    v17 = sub_1A7E22040();
    v18 = sub_1A7E228F0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1A7AD9000, v17, v18, "is burst ack packet", v19, 2u);
      MEMORY[0x1AC5654B0](v19, -1, -1);
    }

    v21 = *(v0 + 136);
    v20 = *(v0 + 144);

    v22 = sub_1A7D516A0(v21, v20, 1);
    if ((v23 & 1) == 0)
    {
      sub_1A7DF8474(v22, *(v0 + 136), *(v0 + 144));
    }

    goto LABEL_36;
  }

  if (v2 == 2)
  {
    goto LABEL_14;
  }

  if (v2 != 1)
  {
    goto LABEL_20;
  }

  if (qword_1EB2B2990 != -1)
  {
    swift_once();
  }

  v3 = sub_1A7E22060();
  sub_1A7B0CB00(v3, qword_1EB2B2998);
  v4 = sub_1A7E22040();
  v5 = sub_1A7E228F0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1A7AD9000, v4, v5, "is burst packet", v6, 2u);
    MEMORY[0x1AC5654B0](v6, -1, -1);
  }

  v8 = *(v0 + 136);
  v7 = *(v0 + 144);

  v9 = sub_1A7D516A0(v8, v7, 1);
  if (v10)
  {
    goto LABEL_36;
  }

  v11 = v9;
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v12[1] = sub_1A7DFE718;
  v14 = *(v0 + 152);
  v13 = *(v0 + 160);

  return sub_1A7DFDAE0(v14, v13, v11);
}

uint64_t sub_1A7DFE718()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A7DFE80C(os_unfair_lock_s *a1, uint64_t a2, os_unfair_lock_s *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v54 = a4;
  v55 = a5;
  v62 = a1;
  v10 = *v7;
  v58 = a3;
  v59 = v10;
  v11 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = &v48 - v12;
  v61 = sub_1A7E226D0();
  v52 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A7E22060();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v56 = v17;
  v57 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  *(v7 + 16) = 0xD000000000000021;
  *(v7 + 24) = 0x80000001A7EB1ED0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  sub_1A7CC7FFC(&qword_1EB2B7FF8, &qword_1A7E55AA0);
  v21 = swift_allocObject();
  v22 = sub_1A7CE48F4(MEMORY[0x1E69E7CC0]);
  *(v21 + 16) = 0;
  *(v21 + 24) = v22;
  v23 = v55;
  *(v7 + 88) = v54;
  *(v7 + 96) = v21;
  *(v7 + 56) = v23;
  *(v7 + 64) = a6;
  v24 = v58;
  *(v7 + 72) = a2;
  *(v7 + 80) = v24;

  v58 = (v7 + 32);
  os_unfair_lock_lock((v7 + 32));
  v25 = *(v7 + 24);
  v54 = *(v7 + 16);
  v26 = qword_1EB2B2C98;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = sub_1A7B0CB00(v15, qword_1EB2B2CA0);
  v53 = v16;
  v28 = *(v16 + 16);
  v28(v20, v27, v15);
  v49 = v28;
  v55 = swift_allocObject();
  swift_weakInit();

  sub_1A7E226B0();
  type metadata accessor for IDSLinksQualityRepeatingAsyncTask(0);
  v29 = swift_allocObject();
  v51 = v14;
  v30 = v15;
  v48 = v15;
  v31 = v29 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state;
  v32 = swift_weakInit();
  v63[1] = 0;
  *v31 = 0;
  *(v31 + 16) = 0;
  *(v31 + 8) = 0;
  sub_1A7CEB2D0(v32, v31 + 8);
  v33 = v20;
  v50 = v20;
  v28((v29 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_logger), v20, v30);
  v34 = (v29 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name);
  *v34 = v54;
  v34[1] = v25;
  v35 = v29 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state;
  os_unfair_lock_lock((v29 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state));
  swift_weakAssign();
  v36 = v52;
  v38 = v60;
  v37 = v61;
  (*(v52 + 16))(v60, v14, v61);
  (*(v36 + 56))(v38, 0, 1, v37);
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = v57;
  v41 = v48;
  v49(v57, v33, v48);
  v42 = v53;
  v43 = (*(v53 + 80) + 56) & ~*(v53 + 80);
  v44 = swift_allocObject();
  *(v44 + 2) = 0;
  *(v44 + 3) = 0;
  *(v44 + 4) = v39;
  *(v44 + 5) = &unk_1A7E55AB0;
  *(v44 + 6) = v55;
  (*(v42 + 32))(&v44[v43], v40, v41);

  *(v35 + 16) = sub_1A7D3F5DC(0, 0, v60, &unk_1A7E44050, v44);

  os_unfair_lock_unlock(v35);

  (*(v36 + 8))(v51, v61);
  (*(v42 + 8))(v50, v41);

  *(v7 + 40) = v29;

  os_unfair_lock_unlock(v58);

  v45 = v62;
  os_unfair_lock_lock(v62 + 50);
  v46 = v59;
  v63[3] = v59;
  v63[0] = v7;

  sub_1A7CC8D74(v63, v46);
  os_unfair_lock_unlock(v45 + 50);

  return v7;
}

double sub_1A7DFEDD8(uint64_t a1)
{

  os_unfair_lock_lock(v1 + 50);
  v3 = type metadata accessor for IDSLinksQualityBurstsOngoingTask();
  v4 = v3;
  if (!a1)
  {
    v4 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  v6[0] = a1;
  v6[3] = v4;

  sub_1A7CC8D74(v6, v3);
  os_unfair_lock_unlock(v1 + 50);

  return result;
}

uint64_t sub_1A7DFEEFC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A7CEB1BC;

  return sub_1A7DF8E64(a1, v1);
}

uint64_t sub_1A7DFEF94(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1A7CD2A2C;

  return sub_1A7DFA464(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1A7DFF0E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1A7CD2A2C;

  return sub_1A7DFB1A4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1A7DFF1E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A7CD2A2C;

  return sub_1A7DFD3D0(a1, v4, v5, v7, v6);
}

uint64_t sub_1A7DFF2AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A7CD2A2C;

  return sub_1A7DF7CF8(a1, v4, v5, v6);
}

uint64_t sub_1A7DFF36C(uint64_t a1)
{
  v4 = *(sub_1A7E22D10() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1A7CD2A2C;

  return sub_1A7DF7FDC(a1, v6, v7, v1 + v5, v9, v10);
}

unint64_t sub_1A7DFF49C()
{
  result = qword_1EB2B29B0;
  if (!qword_1EB2B29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B29B0);
  }

  return result;
}

uint64_t sub_1A7DFF4F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A7CD22FC;

  return sub_1A7DFD6C8(a1, v4, v5, v7, v6);
}

uint64_t sub_1A7DFF5F4(uint64_t a1)
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
  v11[1] = sub_1A7CD22FC;

  return sub_1A7DFBE74(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t LEToolLinkEndpoint.ip.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t LEToolLinkEndpoint.ip.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t LEToolLinkEndpoint.port.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 26) = BYTE2(result) & 1;
  return result;
}

uint64_t LEToolLinkEndpoint.idsRAT.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = BYTE4(result) & 1;
  return result;
}

uint64_t LEToolLinkEndpoint.idsRelayLinkID.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t LEToolLinkEndpoint.idsRelaySessionID.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t LEToolLinkEndpoint.idsRelaySessionID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t LEToolLinkEndpoint.interfaceAllowList.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t LEToolLinkEndpoint.nat64Prefix.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t LEToolLinkEndpoint.nat64Prefix.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

unint64_t sub_1A7DFFA5C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x657250343674616ELL;
    v6 = 0x343654414E7369;
    if (a1 != 8)
    {
      v6 = 0x646563696C537369;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000011;
    if (a1 != 5)
    {
      v7 = 0xD000000000000012;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x796C696D61467069;
    v2 = 1953656688;
    v3 = 0x544152736469;
    if (a1 != 3)
    {
      v3 = 0x79616C6552736469;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 28777;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1A7DFFB9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A7E02E30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A7DFFBD0(uint64_t a1)
{
  v2 = sub_1A7E0001C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DFFC0C(uint64_t a1)
{
  v2 = sub_1A7E0001C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolLinkEndpoint.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B8010, &qword_1A7E55BC0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = *v1;
  v6 = *(v1 + 1);
  v27 = *(v1 + 2);
  v28 = v6;
  v31 = *(v1 + 12);
  LODWORD(v6) = v1[26];
  v25 = *(v1 + 7);
  v26 = v6;
  LODWORD(v6) = v1[32];
  v7 = *(v1 + 5);
  v23 = v1[48];
  v24 = v6;
  v8 = *(v1 + 7);
  v21 = *(v1 + 8);
  v22 = v7;
  v9 = *(v1 + 10);
  v19 = *(v1 + 9);
  v20 = v8;
  v18[0] = v9;
  v18[1] = *(v1 + 11);
  v10 = v1[96];
  v11 = a1[3];
  v12 = a1;
  v14 = v18 - v13;
  sub_1A7CC9878(v12, v11);
  sub_1A7E0001C();
  sub_1A7E23260();
  LOBYTE(v30) = v5;
  v32 = 0;
  sub_1A7E00070();
  v15 = v29;
  sub_1A7E22FD0();
  if (!v15)
  {
    v16 = v25;
    LODWORD(v29) = v10;
    LOBYTE(v30) = 1;
    sub_1A7E22FA0();
    LOBYTE(v30) = 2;
    sub_1A7E22FE0();
    LODWORD(v30) = v16;
    BYTE4(v30) = v24;
    v32 = 3;
    type metadata accessor for IDSRadioAccessTechnology(0);
    sub_1A7E02660(&qword_1EB2B60C0, type metadata accessor for IDSRadioAccessTechnology, &protocol conformance descriptor for IDSRadioAccessTechnology);
    sub_1A7E22FD0();
    LOBYTE(v30) = 4;
    sub_1A7E22FC0();
    LOBYTE(v30) = 5;
    sub_1A7E22FA0();
    v30 = v19;
    v32 = 6;
    sub_1A7CC7FFC(&qword_1EB2B8028, &qword_1A7E55BC8);
    sub_1A7E00AFC(&qword_1EB2B8030, MEMORY[0x1E69E6538], MEMORY[0x1E69E6300]);
    sub_1A7E22FD0();
    LOBYTE(v30) = 7;
    sub_1A7E22FA0();
    LOBYTE(v30) = 8;
    sub_1A7E22FB0();
    LOBYTE(v30) = 9;
    sub_1A7E22FB0();
  }

  return (*(v4 + 8))(v14, v3);
}

unint64_t sub_1A7E0001C()
{
  result = qword_1EB2B8018;
  if (!qword_1EB2B8018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8018);
  }

  return result;
}

unint64_t sub_1A7E00070()
{
  result = qword_1EB2B8020;
  if (!qword_1EB2B8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8020);
  }

  return result;
}

uint64_t LEToolLinkEndpoint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B8038, &qword_1A7E55BD0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - v7;
  v75 = 1;
  v74 = 1;
  v72 = 1;
  v9 = a1[3];
  v45 = a1;
  sub_1A7CC9878(a1, v9);
  sub_1A7E0001C();
  sub_1A7E23250();
  if (v2)
  {
    v77 = v2;
    v44 = 0uLL;
    v43 = 0;
    sub_1A7B0CD6C(v45);
    LOBYTE(v54) = 3;
    *(&v54 + 1) = *v76;
    HIDWORD(v54) = *&v76[3];
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = v75;
    v59 = 0;
    v60 = v74;
    *v61 = *v73;
    *&v61[3] = *&v73[3];
    v62 = 0;
    v63 = v72;
    *v64 = *v71;
    *&v64[3] = *&v71[3];
    v65 = 0;
    v66 = 0;
    v67 = v43;
    v68 = v44;
    v69 = 2;
    v70 = 2;
  }

  else
  {
    LOBYTE(v46) = 0;
    sub_1A7E00AA8();
    sub_1A7E22ED0();
    v42 = v54;
    LOBYTE(v54) = 1;
    v40 = sub_1A7E22EA0();
    v41 = v11;
    LOBYTE(v54) = 2;
    v39 = sub_1A7E22EE0();
    v75 = BYTE2(v39) & 1;
    type metadata accessor for IDSRadioAccessTechnology(0);
    LOBYTE(v46) = 3;
    sub_1A7E02660(&unk_1EB2B60E0, type metadata accessor for IDSRadioAccessTechnology, &protocol conformance descriptor for IDSRadioAccessTechnology);
    sub_1A7E22ED0();
    v12 = v54;
    v74 = BYTE4(v54);
    LOBYTE(v54) = 4;
    v38 = sub_1A7E22EC0();
    v72 = v13 & 1;
    LOBYTE(v54) = 5;
    v36 = sub_1A7E22EA0();
    v37 = v14;
    sub_1A7CC7FFC(&qword_1EB2B8028, &qword_1A7E55BC8);
    LOBYTE(v46) = 6;
    sub_1A7E00AFC(&qword_1EB2B8048, MEMORY[0x1E69E6560], MEMORY[0x1E69E6330]);
    sub_1A7E22ED0();
    v15 = v54;
    LOBYTE(v54) = 7;
    v16 = sub_1A7E22EA0();
    v43 = v15;
    *&v44 = v16;
    *(&v44 + 1) = v17;
    LOBYTE(v54) = 8;
    v18 = sub_1A7E22EB0();
    v77 = 0;
    v19 = v18;
    v53 = 9;
    v20 = sub_1A7E22EB0();
    v77 = 0;
    v21 = v20;
    (*(v6 + 8))(v8, v5);
    LOBYTE(v46) = v42;
    *(&v46 + 1) = *v76;
    DWORD1(v46) = *&v76[3];
    *(&v46 + 1) = v40;
    *&v47 = v41;
    WORD4(v47) = v39;
    v35 = v75;
    BYTE10(v47) = v75;
    v34 = v12;
    HIDWORD(v47) = v12;
    v33 = v74;
    LOBYTE(v48) = v74;
    *(&v48 + 1) = *v73;
    DWORD1(v48) = *&v73[3];
    *(&v48 + 1) = v38;
    v32 = v72;
    LOBYTE(v49) = v72;
    *(&v49 + 1) = *v71;
    DWORD1(v49) = *&v71[3];
    v22 = v36;
    *(&v49 + 1) = v36;
    v23 = v37;
    *&v50 = v37;
    v24 = v43;
    v25 = v44;
    *(&v50 + 1) = v43;
    v26 = *(&v44 + 1);
    v51 = v44;
    LOBYTE(v52) = v19;
    HIBYTE(v52) = v21;
    v27 = v47;
    *a2 = v46;
    *(a2 + 16) = v27;
    v28 = v48;
    v29 = v49;
    v30 = v50;
    v31 = v51;
    *(a2 + 96) = v52;
    *(a2 + 64) = v30;
    *(a2 + 80) = v31;
    *(a2 + 32) = v28;
    *(a2 + 48) = v29;
    sub_1A7E00B68(&v46, &v54);
    sub_1A7B0CD6C(v45);
    LOBYTE(v54) = v42;
    *(&v54 + 1) = *v76;
    HIDWORD(v54) = *&v76[3];
    v55 = v40;
    v56 = v41;
    v57 = v39;
    v58 = v35;
    v59 = v34;
    v60 = v33;
    *v61 = *v73;
    *&v61[3] = *&v73[3];
    v62 = v38;
    v63 = v32;
    *&v64[3] = *&v71[3];
    *v64 = *v71;
    v65 = v22;
    v66 = v23;
    v67 = v24;
    *&v68 = v25;
    *(&v68 + 1) = v26;
    v69 = v19;
    v70 = v21;
  }

  return sub_1A7E00A78(&v54);
}

unint64_t sub_1A7E00AA8()
{
  result = qword_1EB2B8040;
  if (!qword_1EB2B8040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8040);
  }

  return result;
}

uint64_t sub_1A7E00AFC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A7CC9830(&qword_1EB2B8028, &qword_1A7E55BC8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t LEToolLinkDefinition.from.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_1A7E00B68(v10, v9);
}

__n128 LEToolLinkDefinition.from.setter(uint64_t a1)
{
  v3 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v3;
  v10 = *(v1 + 96);
  v4 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v4;
  v5 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v5;
  sub_1A7E00A78(v9);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

uint64_t LEToolLinkDefinition.to.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v4 = *(v1 + 184);
  v13 = *(v1 + 168);
  v3 = v13;
  v14 = v4;
  v15 = *(v1 + 200);
  v5 = v15;
  v6 = *(v1 + 120);
  v10[0] = *(v1 + 104);
  v10[1] = v6;
  v11 = *(v1 + 136);
  v7 = v11;
  v12 = v2;
  *a1 = v10[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  return sub_1A7E00B68(v10, v9);
}

__n128 LEToolLinkDefinition.to.setter(uint64_t a1)
{
  v3 = *(v1 + 152);
  v4 = *(v1 + 184);
  v10[4] = *(v1 + 168);
  v10[5] = v4;
  v11 = *(v1 + 200);
  v5 = *(v1 + 120);
  v10[0] = *(v1 + 104);
  v10[1] = v5;
  v10[2] = *(v1 + 136);
  v10[3] = v3;
  sub_1A7E00A78(v10);
  v6 = *(a1 + 32);
  *(v1 + 152) = *(a1 + 48);
  v7 = *(a1 + 80);
  *(v1 + 168) = *(a1 + 64);
  *(v1 + 184) = v7;
  *(v1 + 200) = *(a1 + 96);
  result = *a1;
  v9 = *(a1 + 16);
  *(v1 + 104) = *a1;
  *(v1 + 120) = v9;
  *(v1 + 136) = v6;
  return result;
}

uint64_t LEToolLinkDefinition.protocolStack.setter(uint64_t a1)
{

  *(v1 + 208) = a1;
  return result;
}

uint64_t sub_1A7E00E20()
{
  v1 = 28532;
  if (*v0 != 1)
  {
    v1 = 0x6C6F636F746F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1836020326;
  }
}

uint64_t sub_1A7E00E74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A7E03168(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A7E00E9C(uint64_t a1)
{
  v2 = sub_1A7E01288();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7E00ED8(uint64_t a1)
{
  v2 = sub_1A7E01288();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolLinkDefinition.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B8050, &qword_1A7E55BD8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = v1[5];
  v51 = v1[4];
  v52 = v7;
  v53 = *(v1 + 48);
  v8 = v1[1];
  v47 = *v1;
  v48 = v8;
  v9 = v1[3];
  v49 = v1[2];
  v50 = v9;
  v10 = *(v1 + 120);
  v54 = *(v1 + 104);
  v55 = v10;
  v11 = *(v1 + 136);
  v12 = *(v1 + 152);
  v13 = *(v1 + 168);
  v14 = *(v1 + 184);
  v60 = *(v1 + 100);
  v58 = v13;
  v59 = v14;
  v56 = v11;
  v57 = v12;
  v19 = *(v1 + 26);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7E00B68(&v47, &v40);
  sub_1A7E01288();
  sub_1A7E23260();
  v44 = v51;
  v45 = v52;
  v46 = v53;
  v40 = v47;
  v41 = v48;
  v42 = v49;
  v43 = v50;
  v39 = 0;
  sub_1A7E012DC();
  v15 = v61;
  sub_1A7E23030();
  if (v15)
  {
    v36 = v44;
    v37 = v45;
    v38 = v46;
    v32 = v40;
    v33 = v41;
    v34 = v42;
    v35 = v43;
    sub_1A7E00A78(&v32);
  }

  else
  {
    v16 = v19;
    v36 = v44;
    v37 = v45;
    v38 = v46;
    v32 = v40;
    v33 = v41;
    v34 = v42;
    v35 = v43;
    sub_1A7E00A78(&v32);
    v28 = v57;
    v29 = v58;
    v30 = v59;
    v25 = v54;
    v31 = v60;
    v26 = v55;
    v27 = v56;
    v24 = 1;
    sub_1A7E00B68(&v54, v22);
    sub_1A7E23030();
    v22[4] = v29;
    v22[5] = v30;
    v23 = v31;
    v22[0] = v25;
    v22[1] = v26;
    v22[2] = v27;
    v22[3] = v28;
    sub_1A7E00A78(v22);
    v21 = v16;
    v20 = 2;
    sub_1A7CC7FFC(&qword_1EB2B5E08, &qword_1A7E55BE0);
    sub_1A7D3094C(&qword_1EB2B5EC8, sub_1A7D30A18, MEMORY[0x1E69E6300]);
    sub_1A7E22FD0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A7E01288()
{
  result = qword_1EB2B8058;
  if (!qword_1EB2B8058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8058);
  }

  return result;
}

unint64_t sub_1A7E012DC()
{
  result = qword_1EB2B8060;
  if (!qword_1EB2B8060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8060);
  }

  return result;
}

uint64_t LEToolLinkDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B8068, &qword_1A7E55BE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = a1[3];
  v59 = a1;
  sub_1A7CC9878(a1, v9);
  sub_1A7E01288();
  sub_1A7E23250();
  if (v2)
  {
    return sub_1A7B0CD6C(v59);
  }

  v44 = 0;
  sub_1A7E01754();
  sub_1A7E22F30();
  v56 = v49;
  v57 = v50;
  LOWORD(v58[0]) = v51;
  v52 = v45;
  v53 = v46;
  v54 = v47;
  v55 = v48;
  v36 = 1;
  sub_1A7E22F30();
  *(&v58[3] + 8) = v40;
  *(&v58[4] + 8) = v41;
  *(&v58[5] + 8) = v42;
  WORD4(v58[6]) = v43;
  *(v58 + 8) = v37;
  *(&v58[1] + 8) = v38;
  *(&v58[2] + 8) = v39;
  sub_1A7CC7FFC(&qword_1EB2B5E08, &qword_1A7E55BE0);
  v34 = 2;
  sub_1A7D3094C(&qword_1EB2B5EB8, sub_1A7D309C4, MEMORY[0x1E69E6330]);
  sub_1A7E22ED0();
  (*(v6 + 8))(v8, v5);
  v10 = v35;
  v28 = v58[4];
  v29 = v58[5];
  v30 = v58[6];
  v24 = v58[0];
  v25 = v58[1];
  v26 = v58[2];
  v27 = v58[3];
  v20 = v54;
  v21 = v55;
  v22 = v56;
  v23 = v57;
  v18 = v52;
  v19 = v53;
  v31 = v35;
  *(a2 + 208) = v35;
  v11 = v29;
  *(a2 + 160) = v28;
  *(a2 + 176) = v11;
  *(a2 + 192) = v30;
  v12 = v25;
  *(a2 + 96) = v24;
  *(a2 + 112) = v12;
  v13 = v27;
  *(a2 + 128) = v26;
  *(a2 + 144) = v13;
  v14 = v21;
  *(a2 + 32) = v20;
  *(a2 + 48) = v14;
  v15 = v23;
  *(a2 + 64) = v22;
  *(a2 + 80) = v15;
  v16 = v19;
  *a2 = v18;
  *(a2 + 16) = v16;
  sub_1A7E017A8(&v18, v32);
  sub_1A7B0CD6C(v59);
  v32[10] = v58[4];
  v32[11] = v58[5];
  v32[12] = v58[6];
  v32[6] = v58[0];
  v32[7] = v58[1];
  v32[8] = v58[2];
  v32[9] = v58[3];
  v32[2] = v54;
  v32[3] = v55;
  v32[4] = v56;
  v32[5] = v57;
  v32[0] = v52;
  v32[1] = v53;
  v33 = v10;
  return sub_1A7E017E0(v32);
}

unint64_t sub_1A7E01754()
{
  result = qword_1EB2B8070;
  if (!qword_1EB2B8070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8070);
  }

  return result;
}

uint64_t LEToolLink.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LEToolLink.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LEToolLink.definition.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 160);
  v30 = *(v1 + 176);
  v31 = v2;
  v4 = *(v1 + 192);
  v32 = *(v1 + 208);
  v5 = *(v1 + 128);
  v7 = *(v1 + 96);
  v26 = *(v1 + 112);
  v6 = v26;
  v27 = v5;
  v8 = *(v1 + 128);
  v9 = *(v1 + 160);
  v28 = *(v1 + 144);
  v10 = v28;
  v29 = v9;
  v11 = *(v1 + 64);
  v13 = *(v1 + 32);
  v22 = *(v1 + 48);
  v12 = v22;
  v23 = v11;
  v14 = *(v1 + 64);
  v15 = *(v1 + 96);
  v24 = *(v1 + 80);
  v16 = v24;
  v25 = v15;
  v17 = *(v1 + 32);
  v21[0] = *(v1 + 16);
  v18 = v21[0];
  v21[1] = v17;
  *(a1 + 160) = v30;
  *(a1 + 176) = v4;
  *(a1 + 192) = *(v1 + 208);
  *(a1 + 96) = v6;
  *(a1 + 112) = v8;
  *(a1 + 128) = v10;
  *(a1 + 144) = v3;
  *(a1 + 32) = v12;
  *(a1 + 48) = v14;
  *(a1 + 64) = v16;
  *(a1 + 80) = v7;
  v33 = *(v1 + 224);
  *(a1 + 208) = *(v1 + 224);
  *a1 = v18;
  *(a1 + 16) = v13;
  return sub_1A7E0197C(v21, v20);
}

uint64_t sub_1A7E0197C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B8078, &qword_1A7E55BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 LEToolLink.definition.setter(uint64_t a1)
{
  v3 = *(v1 + 192);
  v16[10] = *(v1 + 176);
  v16[11] = v3;
  v16[12] = *(v1 + 208);
  v17 = *(v1 + 224);
  v4 = *(v1 + 128);
  v16[6] = *(v1 + 112);
  v16[7] = v4;
  v5 = *(v1 + 160);
  v16[8] = *(v1 + 144);
  v16[9] = v5;
  v6 = *(v1 + 64);
  v16[2] = *(v1 + 48);
  v16[3] = v6;
  v7 = *(v1 + 96);
  v16[4] = *(v1 + 80);
  v16[5] = v7;
  v8 = *(v1 + 32);
  v16[0] = *(v1 + 16);
  v16[1] = v8;
  sub_1A7E01A9C(v16);
  v9 = *(a1 + 176);
  *(v1 + 176) = *(a1 + 160);
  *(v1 + 192) = v9;
  *(v1 + 208) = *(a1 + 192);
  *(v1 + 224) = *(a1 + 208);
  v10 = *(a1 + 112);
  *(v1 + 112) = *(a1 + 96);
  *(v1 + 128) = v10;
  v11 = *(a1 + 144);
  *(v1 + 144) = *(a1 + 128);
  *(v1 + 160) = v11;
  v12 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v12;
  v13 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v13;
  result = *a1;
  v15 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v15;
  return result;
}

uint64_t sub_1A7E01A9C(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B8078, &qword_1A7E55BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for LEToolLink(uint64_t a1)
{
  result = qword_1EB2B80B8;
  if (!qword_1EB2B80B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LEToolLink.state.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LEToolLink(0) + 24);

  return sub_1A7E01C00(a1, v3);
}

uint64_t sub_1A7E01C00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A7E01CAC()
{
  v1 = 0x6974696E69666564;
  if (*v0 != 1)
  {
    v1 = 0x6574617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1A7E01D00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A7E03280(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A7E01D28(uint64_t a1)
{
  v2 = sub_1A7E020C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7E01D64(uint64_t a1)
{
  v2 = sub_1A7E020C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolLink.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A7CC7FFC(&qword_1EB2B8080, &qword_1A7E55BF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22[-v7];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7E020C0();
  sub_1A7E23260();
  v53 = 0;
  sub_1A7E22FF0();
  if (!v2)
  {
    v9 = *(v3 + 192);
    v10 = *(v3 + 160);
    v49 = *(v3 + 176);
    v50 = v9;
    v11 = *(v3 + 192);
    v51 = *(v3 + 208);
    v12 = *(v3 + 128);
    v13 = *(v3 + 96);
    v45 = *(v3 + 112);
    v46 = v12;
    v14 = *(v3 + 128);
    v15 = *(v3 + 160);
    v47 = *(v3 + 144);
    v48 = v15;
    v16 = *(v3 + 64);
    v17 = *(v3 + 32);
    v41 = *(v3 + 48);
    v42 = v16;
    v18 = *(v3 + 64);
    v19 = *(v3 + 96);
    v43 = *(v3 + 80);
    v44 = v19;
    v20 = *(v3 + 32);
    v40[0] = *(v3 + 16);
    v40[1] = v20;
    v36 = v49;
    v37 = v11;
    v38 = *(v3 + 208);
    v32 = v45;
    v33 = v14;
    v34 = v47;
    v35 = v10;
    v28 = v41;
    v29 = v18;
    v30 = v43;
    v31 = v13;
    v52 = *(v3 + 224);
    v39 = *(v3 + 224);
    v26 = v40[0];
    v27 = v17;
    v25 = 1;
    sub_1A7E0197C(v40, v23);
    sub_1A7E02114();
    sub_1A7E22FD0();
    v23[10] = v36;
    v23[11] = v37;
    v23[12] = v38;
    v24 = v39;
    v23[6] = v32;
    v23[7] = v33;
    v23[8] = v34;
    v23[9] = v35;
    v23[2] = v28;
    v23[3] = v29;
    v23[4] = v30;
    v23[5] = v31;
    v23[0] = v26;
    v23[1] = v27;
    sub_1A7E01A9C(v23);
    type metadata accessor for LEToolLink(0);
    v22[15] = 2;
    type metadata accessor for LinkState(0);
    sub_1A7E02660(&qword_1EB2B8098, type metadata accessor for LinkState, &protocol conformance descriptor for LinkState);
    sub_1A7E23030();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A7E020C0()
{
  result = qword_1EB2B8088;
  if (!qword_1EB2B8088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8088);
  }

  return result;
}

unint64_t sub_1A7E02114()
{
  result = qword_1EB2B8090;
  if (!qword_1EB2B8090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8090);
  }

  return result;
}

uint64_t LEToolLink.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v42 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1A7CC7FFC(&qword_1EB2B80A0, &qword_1A7E55C00);
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v5 = v39 - v4;
  v6 = type metadata accessor for LEToolLink(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7D21964(v79);
  v9 = v79[11];
  *(v8 + 11) = v79[10];
  *(v8 + 12) = v9;
  *(v8 + 13) = v79[12];
  *(v8 + 28) = v80;
  v10 = v79[7];
  *(v8 + 7) = v79[6];
  *(v8 + 8) = v10;
  v11 = v79[9];
  *(v8 + 9) = v79[8];
  *(v8 + 10) = v11;
  v12 = v79[3];
  *(v8 + 3) = v79[2];
  *(v8 + 4) = v12;
  v13 = v79[5];
  *(v8 + 5) = v79[4];
  *(v8 + 6) = v13;
  v14 = v79[1];
  *(v8 + 1) = v79[0];
  *(v8 + 2) = v14;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7E020C0();
  v46 = v5;
  v15 = v81;
  sub_1A7E23250();
  if (v15)
  {
    sub_1A7B0CD6C(a1);
    v19 = *(v8 + 12);
    v75 = *(v8 + 11);
    v76 = v19;
    v77 = *(v8 + 13);
    v78 = *(v8 + 28);
    v20 = *(v8 + 8);
    v71 = *(v8 + 7);
    v72 = v20;
    v21 = *(v8 + 10);
    v73 = *(v8 + 9);
    v74 = v21;
    v22 = *(v8 + 4);
    v67 = *(v8 + 3);
    v68 = v22;
    v23 = *(v8 + 6);
    v69 = *(v8 + 5);
    v70 = v23;
    v24 = *(v8 + 2);
    v65 = *(v8 + 1);
    v66 = v24;
    return sub_1A7E01A9C(&v65);
  }

  else
  {
    v40 = v6;
    v16 = v43;
    v81 = a1;
    v17 = v44;
    v18 = v45;
    LOBYTE(v65) = 0;
    *v8 = sub_1A7E22EF0();
    *(v8 + 1) = v25;
    v39[1] = v25;
    v64 = 1;
    sub_1A7E0260C();
    sub_1A7E22ED0();
    v58 = v75;
    v59 = v76;
    v60 = v77;
    v61 = v78;
    v54 = v71;
    v55 = v72;
    v56 = v73;
    v57 = v74;
    v50 = v67;
    v51 = v68;
    v52 = v69;
    v53 = v70;
    v48 = v65;
    v49 = v66;
    v26 = *(v8 + 12);
    v62[10] = *(v8 + 11);
    v62[11] = v26;
    v62[12] = *(v8 + 13);
    v63 = *(v8 + 28);
    v27 = *(v8 + 8);
    v62[6] = *(v8 + 7);
    v62[7] = v27;
    v28 = *(v8 + 10);
    v62[8] = *(v8 + 9);
    v62[9] = v28;
    v29 = *(v8 + 4);
    v62[2] = *(v8 + 3);
    v62[3] = v29;
    v30 = *(v8 + 6);
    v62[4] = *(v8 + 5);
    v62[5] = v30;
    v31 = *(v8 + 2);
    v62[0] = *(v8 + 1);
    v62[1] = v31;
    sub_1A7E01A9C(v62);
    v32 = v59;
    *(v8 + 11) = v58;
    *(v8 + 12) = v32;
    *(v8 + 13) = v60;
    *(v8 + 28) = v61;
    v33 = v55;
    *(v8 + 7) = v54;
    *(v8 + 8) = v33;
    v34 = v57;
    *(v8 + 9) = v56;
    *(v8 + 10) = v34;
    v35 = v51;
    *(v8 + 3) = v50;
    *(v8 + 4) = v35;
    v36 = v53;
    *(v8 + 5) = v52;
    *(v8 + 6) = v36;
    v37 = v49;
    *(v8 + 1) = v48;
    *(v8 + 2) = v37;
    v47 = 2;
    sub_1A7E02660(&qword_1EB2B80B0, type metadata accessor for LinkState, &protocol conformance descriptor for LinkState);
    sub_1A7E22F30();
    (*(v16 + 8))(v46, v18);
    sub_1A7CD0F28(v17, &v8[*(v40 + 24)]);
    sub_1A7E026A8(v8, v41, type metadata accessor for LEToolLink);
    sub_1A7B0CD6C(v81);
    return sub_1A7E02710(v8);
  }
}

unint64_t sub_1A7E0260C()
{
  result = qword_1EB2B80A8;
  if (!qword_1EB2B80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B80A8);
  }

  return result;
}

uint64_t sub_1A7E02660(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A7E026A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A7E02710(uint64_t a1)
{
  v2 = type metadata accessor for LEToolLink(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1A7E0279C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1A7E027C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 98))
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

uint64_t sub_1A7E02824(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 98) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 98) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_1A7E028A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1A7E028E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 216))
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

uint64_t sub_1A7E02944(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 216) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 216) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_1A7E02A04(uint64_t a1)
{
  sub_1A7E02A98();
  if (v1 <= 0x3F)
  {
    type metadata accessor for LinkState(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A7E02A98()
{
  if (!qword_1EB2B80C8)
  {
    v0 = sub_1A7E229A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2B80C8);
    }
  }
}

unint64_t sub_1A7E02B1C()
{
  result = qword_1EB2B80D0;
  if (!qword_1EB2B80D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B80D0);
  }

  return result;
}

unint64_t sub_1A7E02B74()
{
  result = qword_1EB2B80D8;
  if (!qword_1EB2B80D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B80D8);
  }

  return result;
}

unint64_t sub_1A7E02BCC()
{
  result = qword_1EB2B80E0;
  if (!qword_1EB2B80E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B80E0);
  }

  return result;
}

unint64_t sub_1A7E02C24()
{
  result = qword_1EB2B80E8;
  if (!qword_1EB2B80E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B80E8);
  }

  return result;
}

unint64_t sub_1A7E02C7C()
{
  result = qword_1EB2B80F0;
  if (!qword_1EB2B80F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B80F0);
  }

  return result;
}

unint64_t sub_1A7E02CD4()
{
  result = qword_1EB2B80F8;
  if (!qword_1EB2B80F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B80F8);
  }

  return result;
}

unint64_t sub_1A7E02D2C()
{
  result = qword_1EB2B8100;
  if (!qword_1EB2B8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8100);
  }

  return result;
}

unint64_t sub_1A7E02D84()
{
  result = qword_1EB2B8108;
  if (!qword_1EB2B8108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8108);
  }

  return result;
}

unint64_t sub_1A7E02DDC()
{
  result = qword_1EB2B8110;
  if (!qword_1EB2B8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8110);
  }

  return result;
}

uint64_t sub_1A7E02E30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796C696D61467069 && a2 == 0xE800000000000000;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 28777 && a2 == 0xE200000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953656688 && a2 == 0xE400000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x544152736469 && a2 == 0xE600000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79616C6552736469 && a2 == 0xEE0044496B6E694CLL || (sub_1A7E230D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A7EB1F50 == a2 || (sub_1A7E230D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A7EB1F70 == a2 || (sub_1A7E230D0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657250343674616ELL && a2 == 0xEB00000000786966 || (sub_1A7E230D0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x343654414E7369 && a2 == 0xE700000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x646563696C537369 && a2 == 0xE800000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_1A7E230D0();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1A7E03168(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1836020326 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 28532 && a2 == 0xE200000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xED00006B63617453)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

uint64_t sub_1A7E03280(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

uint64_t LEToolP2PEngineResponseMessage.print(to:style:)(void *a1, uint64_t *a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = a1[3];
  v11 = a1[4];
  sub_1A7CC9878(a1, v10);
  v18 = 0x69676E4520503250;
  v19 = 0xEA0000000000656ELL;
  LOWORD(v20) = 513;
  v21 = 0;
  v22 = 0;
  v23 = 2;
  sub_1A7E0351C(v5, v6, v7, v8, v9);
  CLIPrinter.print(_:)(&v18, v10, v11);

  v12 = a1[3];
  v13 = a1[4];
  sub_1A7CC9878(a1, v12);
  v21 = &type metadata for CLIRule;
  v22 = sub_1A7CE5D50();
  LOBYTE(v18) = 9;
  CLIPrinter.print(_:)(&v18, v12, v13);
  sub_1A7B0CD6C(&v18);
  sub_1A7CC9878(a1, a1[3]);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  CLIPrinter.print(_:)(v14);
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v16 = *a2;
  v17 = *(a2 + 8);
  LEToolResponse.print(to:style:)(a1, &v16);
  return sub_1A7CE5E00(v18, v19, v20, v21, v22);
}

void sub_1A7E0351C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = (a4 >> 60) & 7;
  switch(v5)
  {
    case 2:
      sub_1A7E035A0(a1, a2, a3, a4 & 0x8FFFFFFFFFFFFFFFLL, a5);
      break;
    case 1:
      sub_1A7E03548(a1, a2, a3);
      break;
    case 0:

      break;
  }
}

double sub_1A7E03548(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 && a3 != 2)
  {
    if (a3 != 1)
    {
      return result;
    }
  }

  return result;
}

double sub_1A7E035A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
  }

  return result;
}

uint64_t sub_1A7E03600(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v4 = a1 + 8;
  if (__OFADD__(a1, 8))
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      if (v4 <= 0)
      {
        memset(v25, 0, 14);
        goto LABEL_27;
      }

LABEL_20:
      sub_1A7D17E10();
      swift_allocError();
      *v18 = 0;
      return swift_willThrow();
    }

    v8 = *(a3 + 16);
    v7 = *(a3 + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10 < v4)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    goto LABEL_32;
  }

  if (!v6)
  {
    if (BYTE6(a4) < v4)
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (HIDWORD(a3) - a3 < v4)
  {
    goto LABEL_20;
  }

LABEL_12:
  if (v6 == 2)
  {
    v12 = a1;
    v19 = *(a3 + 16);
    v20 = sub_1A7E21630();
    if (!v20)
    {
      sub_1A7E21650();
      __break(1u);
      goto LABEL_38;
    }

    v21 = v20;
    v22 = sub_1A7E21660();
    if (!__OFSUB__(v19, v22))
    {
      v16 = v19 - v22 + v21;
      result = sub_1A7E21650();
      if (!v16)
      {
LABEL_40:
        __break(1u);
        return result;
      }

LABEL_24:
      v23 = *(v16 + v12);
      goto LABEL_28;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v6 == 1)
  {
    v11 = a3;
    if (a3 <= a3 >> 32)
    {
      v12 = a1;
      v13 = sub_1A7E21630();
      if (v13)
      {
        v14 = v13;
        v15 = sub_1A7E21660();
        if (!__OFSUB__(v11, v15))
        {
          v16 = v11 - v15 + v14;
          result = sub_1A7E21650();
          if (!v16)
          {
            goto LABEL_39;
          }

          goto LABEL_24;
        }

LABEL_36:
        __break(1u);
      }

LABEL_38:
      result = sub_1A7E21650();
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  v25[0] = a3;
  LOWORD(v25[1]) = a4;
  BYTE2(v25[1]) = BYTE2(a4);
  BYTE3(v25[1]) = BYTE3(a4);
  BYTE4(v25[1]) = BYTE4(a4);
  BYTE5(v25[1]) = BYTE5(a4);
LABEL_27:
  v23 = *(v25 + a1);
LABEL_28:
  v24 = bswap64(v23);
  if (a2)
  {
    return v23;
  }

  else
  {
    return v24;
  }
}

uint64_t sub_1A7E03860(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  sub_1A7CC7FFC(&qword_1EB2B8140, &qword_1A7E56358);
  if (swift_dynamicCast())
  {
    sub_1A7B14FF0(v40, &v43);
    sub_1A7CC9878(&v43, v44);
    sub_1A7E216B0();
    v40[0] = v42;
    sub_1A7B0CD6C(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_1A7CC9970(v40, &qword_1EB2B8148, &qword_1A7E56360);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&v40[0] = a1;
    *(&v40[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v40;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1A7E22BE0();
  }

  sub_1A7E06F4C(v4, v5, &v43);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    v40[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v40[0] = sub_1A7E084F8(v8);
  *(&v40[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v40[0]);
  v34[2] = v39;
  sub_1A7E07014(sub_1A7E0B70C, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&v40[0] + 1) >> 62;
  if ((*(&v40[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&v40[0] + 16);
      v18 = *(*&v40[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(v40[0]), v40[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(v40[0]) - LODWORD(v40[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&v40[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&v40[0] >> 32;
      }

      else
      {
        v22 = BYTE14(v40[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1A7E219B0();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(v40[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1A7E06ED0(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1A7E223D0();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1A7E22410();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1A7E22BE0();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1A7E06ED0(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1A7E223E0();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1A7E219C0();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1A7E219C0();
    sub_1A7B1516C(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1A7B1516C(v36, v6);
LABEL_63:
  v32 = v40[0];
  sub_1A7D5164C(*&v40[0], *(&v40[0] + 1));

  sub_1A7CC7E50(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_1A7E03D98(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1A7E22060();
  sub_1A7CC7A10(v3, a2);
  sub_1A7B0CB00(v3, a2);
  return sub_1A7E22050();
}

uint64_t IDSPacketLogPacketKind.description.getter(unint64_t a1)
{
  if (a1 > 3)
  {
    return 4144959;
  }

  else
  {
    return qword_1A7E56440[a1];
  }
}

uint64_t sub_1A7E03E48()
{
  if (*v0 > 3uLL)
  {
    return 4144959;
  }

  else
  {
    return qword_1A7E56440[*v0];
  }
}

uint64_t sub_1A7E03E78()
{
  v1 = *(v0 + 24);
  sub_1A7E23200();
  sub_1A7E23220();
  sub_1A7E23220();
  sub_1A7E22350();
  MEMORY[0x1AC562B10](v1);
  return sub_1A7E23240();
}

uint64_t sub_1A7E03F04(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1A7E23220();
  sub_1A7E23220();
  sub_1A7E22350();
  return MEMORY[0x1AC562B10](v2);
}

uint64_t sub_1A7E03F6C(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1A7E23200();
  sub_1A7E23220();
  sub_1A7E23220();
  sub_1A7E22350();
  MEMORY[0x1AC562B10](v2);
  return sub_1A7E23240();
}

BOOL sub_1A7E03FF4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v4 = *(a1 + 3);
  v5 = *(a2 + 3);
  v6 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  return (v6 || (sub_1A7E230D0() & 1) != 0) && v4 == v5;
}

uint64_t sub_1A7E04078()
{

  sub_1A7E0B794(v0 + 72);

  return swift_deallocClassInstance();
}

void sub_1A7E040B8(uint64_t **a1, void *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = *a1;
  v13 = a3 >> 8;
  type metadata accessor for IDSPacketLog.SimpleBatch();
  v14 = swift_allocObject();
  sub_1A7E08218(v27);
  v15 = v27[0];
  *(v14 + 88) = v27[1];
  v16 = v27[3];
  *(v14 + 104) = v27[2];
  *(v14 + 120) = v16;
  *(v14 + 136) = v27[4];
  *(v14 + 64) = 0;
  *(v14 + 72) = v15;
  *(v14 + 16) = 0;
  *(v14 + 24) = v11;
  *(v14 + 25) = v13;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  *v12 = v14;

  v17 = swift_allocObject();
  sub_1A7E08218(v28);
  v18 = v28[0];
  *(v17 + 88) = v28[1];
  v19 = v28[3];
  *(v17 + 104) = v28[2];
  *(v17 + 120) = v19;
  *(v17 + 136) = v28[4];
  *(v17 + 64) = 0;
  *(v17 + 72) = v18;
  *(v17 + 16) = 1;
  *(v17 + 24) = v11;
  *(v17 + 25) = v13;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  *(v17 + 48) = a6;
  *(v17 + 56) = a7;
  v12[1] = v17;

  v20 = swift_allocObject();
  sub_1A7E08218(v29);
  v21 = v29[0];
  *(v20 + 88) = v29[1];
  v22 = v29[3];
  *(v20 + 104) = v29[2];
  *(v20 + 120) = v22;
  *(v20 + 136) = v29[4];
  *(v20 + 64) = 0;
  *(v20 + 72) = v21;
  *(v20 + 16) = 2;
  *(v20 + 24) = v11;
  *(v20 + 25) = v13;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  *(v20 + 56) = a7;
  v12[2] = v20;

  v23 = swift_allocObject();
  sub_1A7E08218(v30);
  v24 = v30[0];
  *(v23 + 88) = v30[1];
  v25 = v30[3];
  *(v23 + 104) = v30[2];
  *(v23 + 120) = v25;
  *(v23 + 136) = v30[4];
  *(v23 + 64) = 0;
  *(v23 + 72) = v24;
  *(v23 + 16) = 3;
  *(v23 + 24) = v11;
  *(v23 + 25) = v13;
  *(v23 + 32) = a4;
  *(v23 + 40) = a5;
  *(v23 + 48) = a6;
  *(v23 + 56) = a7;
  v12[3] = v23;

  *a2 = 4;
}

uint64_t sub_1A7E04314()
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = xmmword_1A7E56160;
  v1 = sub_1A7E03860(1735355504, 0xE400000000000000);
  v3 = v2;
  sub_1A7E21A30();
  sub_1A7CC7E50(v1, v3);
  v13 = sub_1A7CC7FFC(&qword_1EB2B5A10, &unk_1A7E46B00);
  v14 = sub_1A7D16A78();
  LOBYTE(v12[0]) = 2;
  sub_1A7CC9878(v12, v13);
  sub_1A7E219B0();
  sub_1A7B0CD6C(v12);
  sub_1A7D17B2C(*(v0 + 16), *(v0 + 24));
  v12[0] = bswap64(*(v0 + 32));
  v4 = sub_1A7DD6CD8(v12, 8uLL);
  v6 = v5;
  sub_1A7E21A30();
  sub_1A7CC7E50(v4, v6);
  v12[0] = bswap64(*(v0 + 40));
  v7 = sub_1A7DD6CD8(v12, 8uLL);
  v9 = v8;
  sub_1A7E21A30();
  sub_1A7CC7E50(v7, v9);
  v10 = v15;
  (*(v0 + 96))(v15, *(&v15 + 1));
  return sub_1A7CC7E50(v10, *(&v10 + 1));
}

id sub_1A7E044F0(void *a1, unint64_t a2, id a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (a2 >> 60 == 15)
  {
    v12[0] = 0;
    v4 = [a3 synchronizeAndReturnError_];
    v5 = v12[0];
    if ((v4 & 1) != 0 && (v12[0] = 0, v6 = v5, v7 = [a3 closeAndReturnError_], v5 = v12[0], v7))
    {
      return v12[0];
    }

    else
    {
      v11 = v5;
      sub_1A7E217F0();

      return swift_willThrow();
    }
  }

  else
  {
    v12[0] = a1;
    v12[1] = a2;
    sub_1A7D5164C(a1, a2);
    sub_1A7E0B84C();
    sub_1A7E228B0();
    return sub_1A7B1516C(a1, a2);
  }
}

void sub_1A7E0460C(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  os_unfair_lock_lock(a3 + 4);
  sub_1A7E0B84C();
  sub_1A7E21BF0();
  os_unfair_lock_unlock(a3 + 4);
}

void sub_1A7E0468C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 8);
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
LABEL_18:
    v13 = a3;
    v14 = sub_1A7E22DA0();
    a3 = v13;
    v5 = v14;
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_19:

    return;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_19;
  }

LABEL_3:
  v21 = a3;
  v6 = 0;
  while ((v4 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1AC562480](v6, v4);
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_13;
    }

LABEL_8:
    os_unfair_lock_lock((v7 + 64));
    v9 = *(v7 + 88);
    v10 = *(v7 + 120);
    v18 = *(v7 + 104);
    v19 = v10;
    v20 = *(v7 + 136);
    v16 = *(v7 + 72);
    v17 = v9;
    sub_1A7E08218(v15);
    v11 = v15[0];
    *(v7 + 88) = v15[1];
    v12 = v15[3];
    *(v7 + 104) = v15[2];
    *(v7 + 120) = v12;
    *(v7 + 136) = v15[4];
    *(v7 + 72) = v11;
    os_unfair_lock_unlock((v7 + 64));
    sub_1A7E04854(v7, &v16);
    if (v3)
    {
      goto LABEL_14;
    }

    if (v17)
    {
      MEMORY[0x1AC5654B0](v17, -1, -1);
    }

    ++v6;
    if (v8 == v5)
    {
      goto LABEL_19;
    }
  }

  if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *(v4 + 8 * v6 + 32);

  v8 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
LABEL_14:

  if (v17)
  {
    MEMORY[0x1AC5654B0](v17, -1, -1);
  }

  *v21 = v3;
}

void sub_1A7E04854(uint64_t a1, void *a2)
{
  v5 = v3;
  v8 = sub_1A7E21980();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_slowAlloc();
  if (!v12)
  {
    goto LABEL_51;
  }

  *v12 = 1;
  v13 = *(a1 + 16);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v13 > 0xFF)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v12[1] = v13;
  v14 = *(a1 + 56);
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v15 = v12 + 2;
  v67 = v11;
  v68 = v8;
  if (v14 < 0x80)
  {
    LOBYTE(v16) = v14;
  }

  else
  {
    do
    {
      *v15++ = v14 | 0x80;
      v16 = v14 >> 7;
      v17 = v14 >> 14;
      v14 >>= 7;
    }

    while (v17);
  }

  *v15 = v16;
  v4 = v15 + 1;
  v18 = a2[8];
  v66 = v2;
  v19 = *(v2 + 32);
  v8 = v18 - v19;
  if (v18 < v19)
  {
    goto LABEL_44;
  }

  v65 = v3;
  v5 = (v4 - v12);
  if (!__OFADD__(v4 - v12, 10))
  {
    v20 = v12;
    v69 = v9;
    if (v4 - v12 + 10 < 1025)
    {
      v5 = v12;
      v11 = v12 + 1024;
      if (v8 < 0x80)
      {
LABEL_17:
        LOBYTE(v23) = v8;
        goto LABEL_18;
      }
    }

    else
    {
      v21 = swift_slowAlloc();
      v22 = v20;
      memcpy(v21, v20, 0x400uLL);
      v11 = v21 + 2048;
      MEMORY[0x1AC5654B0](v22, -1, -1);
      v4 = &v5[v21];
      v5 = v21;
      if (v8 < 0x80)
      {
        goto LABEL_17;
      }
    }

    do
    {
      *v4++ = v8 | 0x80;
      v23 = v8 >> 7;
      v24 = v8 >> 14;
      v8 >>= 7;
    }

    while (v24);
LABEL_18:
    *v4++ = v23;
    v8 = a2[7];
    v63 = a2[6];
    if (qword_1EB2B3328 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  swift_once();
LABEL_19:
  v25 = sub_1A7E22060();
  sub_1A7B0CB00(v25, qword_1EB2B3330);
  swift_retain_n();
  v26 = sub_1A7E22040();
  v27 = sub_1A7E228F0();
  v28 = os_log_type_enabled(v26, v27);
  v64 = a2;
  if (v28)
  {
    v62 = v11;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v70 = v30;
    *v29 = 136316674;
    v61 = v5;
    if (v13 > 3)
    {
      v31 = 4144959;
    }

    else
    {
      v31 = qword_1A7E56440[v13];
    }

    v32 = sub_1A7B0CB38(v31, 0xE300000000000000, &v70);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2048;
    *(v29 + 14) = v8;
    *(v29 + 22) = 2048;
    *(v29 + 24) = v63;
    *(v29 + 32) = 256;
    v33 = *(a1 + 24);

    *(v29 + 34) = v33;

    *(v29 + 35) = 256;
    v34 = *(a1 + 25);

    *(v29 + 37) = v34;

    *(v29 + 38) = 2080;
    *(v29 + 40) = sub_1A7B0CB38(*(a1 + 32), *(a1 + 40), &v70);
    *(v29 + 48) = 2048;
    v35 = *(a1 + 48);

    *(v29 + 50) = v35;

    _os_log_impl(&dword_1A7AD9000, v26, v27, "%s %ld packets, %ld bytes (%hhd/%hhd — %s [C%llu])", v29, 0x3Au);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v30, -1, -1);
    MEMORY[0x1AC5654B0](v29, -1, -1);

    a2 = v64;
    v5 = v61;
    v11 = v62;
  }

  else
  {
  }

  v36 = a2[5];
  if ((v36 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  if (HIDWORD(v36))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v37 = v4 - v5;
  if (__OFADD__(v4 - v5, 10))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v38 = v11 - v5;
  if (v11 - v5 >= v4 - v5 + 10)
  {
    goto LABEL_31;
  }

  if ((v38 + 0x4000000000000000) < 0)
  {
    goto LABEL_50;
  }

  v39 = v5;
  v5 = swift_slowAlloc();
  memmove(v5, v39, v38);
  MEMORY[0x1AC5654B0](v39, -1, -1);
  v4 = &v5[v37];
LABEL_31:
  v40 = v69;
  if (v36 < 0x80)
  {
    LOBYTE(v41) = v36;
  }

  else
  {
    do
    {
      *v4++ = v36 | 0x80;
      v41 = v36 >> 7;
      v42 = v36 >> 14;
      v36 >>= 7;
    }

    while (v42);
  }

  *v4 = v41;
  if (!v5)
  {
    goto LABEL_52;
  }

  v43 = *MEMORY[0x1E6969010];
  v44 = *(v40 + 104);
  v69 = v40 + 104;
  v45 = v67;
  v44(v67, v43, v68);
  v46 = sub_1A7E08A4C(v5, v4 - v5 + 1, v45);
  v48 = v47;
  v49 = v65;
  v50 = *(v66 + 96);
  v50();
  sub_1A7CC7E50(v46, v48);
  if (v49)
  {
    v51 = v5;
LABEL_40:
    MEMORY[0x1AC5654B0](v51, -1, -1);
    return;
  }

  v52 = v64[2];
  if (v52)
  {
    v53 = v50;
    v54 = v43;
    v55 = v5;
    v56 = v64[4] - v52;
    v44(v45, v54, v68);
    v57 = sub_1A7E08A4C(v52, v56, v45);
    v59 = v58;
    v53();
    sub_1A7CC7E50(v57, v59);
    v51 = v55;
    goto LABEL_40;
  }

LABEL_53:
  __break(1u);
}

uint64_t sub_1A7E04DEC(unsigned int a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = a1;
  v26 = *MEMORY[0x1E69E9840];
  v25 = xmmword_1A7E56160;
  v8 = a1 >> 8;
  v9 = sub_1A7CC7FFC(&qword_1EB2B5A10, &unk_1A7E46B00);
  v23 = v9;
  v10 = sub_1A7D16A78();
  v24 = v10;
  LOBYTE(v22[0]) = 2;
  sub_1A7CC9878(v22, v9);
  sub_1A7E219B0();
  sub_1A7B0CD6C(v22);
  LOBYTE(v22[0]) = v7;
  v11 = sub_1A7DD6CD8(v22, 1uLL);
  v13 = v12;
  sub_1A7E21A30();
  sub_1A7CC7E50(v11, v13);
  LOBYTE(v22[0]) = v8;
  v14 = sub_1A7DD6CD8(v22, 1uLL);
  v16 = v15;
  sub_1A7E21A30();
  sub_1A7CC7E50(v14, v16);
  sub_1A7D17B2C(a2, a3);
  if (a4 >= 0x80)
  {
    do
    {
      v23 = v9;
      v24 = v10;
      LOBYTE(v22[0]) = a4 | 0x80;
      sub_1A7CC9878(v22, v9);
      sub_1A7E219B0();
      sub_1A7B0CD6C(v22);
      v17 = a4 >> 7;
      v18 = a4 >> 14;
      a4 >>= 7;
    }

    while (v18);
  }

  else
  {
    LOBYTE(v17) = a4;
  }

  v23 = v9;
  v24 = v10;
  LOBYTE(v22[0]) = v17;
  sub_1A7CC9878(v22, v9);
  sub_1A7E219B0();
  sub_1A7B0CD6C(v22);
  v19 = v25;
  (*(v21 + 96))(v25, *(&v25 + 1));
  return sub_1A7CC7E50(v19, *(&v19 + 1));
}

uint64_t sub_1A7E05084(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = v4;
  os_unfair_lock_lock((v4 + 48));
  v11 = *(v4 + 56);
  if (*(v11 + 16))
  {
    v12 = sub_1A7CD0D3C(a1, a2, a3, a4);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);
      goto LABEL_8;
    }

    v14 = *(*(v6 + 56) + 16);
  }

  else
  {
    v14 = 0;
  }

  sub_1A7E04DEC(a1, a2, a3, a4);
  if (!v5)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v6 + 56);
    *(v6 + 56) = 0x8000000000000000;
    sub_1A7DC367C(v14, a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    *(v6 + 56) = v17;
  }

LABEL_8:
  os_unfair_lock_unlock((v6 + 48));
  return v14;
}

uint64_t sub_1A7E051A0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = v6;
  v15 = *a5;
  if (*(*a5 + 16))
  {
    v16 = sub_1A7CD0D3C(a1, a2, a3, a4);
    if (v17)
    {
      return *(*(v15 + 56) + 16 * v16);
    }
  }

  v31 = a5;
  v18 = *a6;
  v19 = *(*a6 + 16);
  v20 = sub_1A7E05084(a1, a2, a3, a4);
  if (!v7)
  {
    v21 = v20;
    v30 = v19;

    v22 = sub_1A7E08450(4, a1, a2, a3, a4, v21);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a6 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1A7CCE8B8(0, *(v18 + 16) + 1, 1);
      v18 = *a6;
    }

    v25 = *(v18 + 16);
    v24 = *(v18 + 24);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      sub_1A7CCE8B8((v24 > 1), v25 + 1, 1);
      v26 = v25 + 1;
      v18 = *a6;
    }

    *(v18 + 16) = v26;
    v27 = v18 + 16 * v25;
    v8 = v30;
    *(v27 + 32) = v30;
    *(v27 + 40) = v22;
    *a6 = v18;

    v28 = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v31;
    sub_1A7DC3814(v30, v22, a1, a2, a3, a4, v28);

    *v31 = v32;
  }

  return v8;
}

void *sub_1A7E0538C(void *result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = *result;
  if (!*result)
  {
    goto LABEL_25;
  }

  v5 = result;
  v6 = result[2];
  v7 = v6 - v4;
  if (__OFADD__(v6 - v4, 30))
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = result[1] - v4;
  if (v11 < v6 - v4 + 30)
  {
    if (v11 + 0x4000000000000000 < 0)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    v12 = swift_slowAlloc();
    memmove(v12, v4, v11);
    result = MEMORY[0x1AC5654B0](v4, -1, -1);
    *v5 = v12;
    v5[1] = &v12[2 * v11];
    v6 = &v12[v7];
  }

  v13 = (2 * a2) ^ (a2 >> 63);
  if (v13 < 0x80)
  {
    v14 = (2 * a2) ^ (a2 >> 63);
  }

  else
  {
    do
    {
      *v6++ = v13 | 0x80;
      v14 = v13 >> 7;
      v15 = v13 >> 14;
      v13 >>= 7;
    }

    while (v15);
  }

  *v6 = v14;
  v16 = v6 + 1;
  v5[2] = v16;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

  if (a3 < 0x80)
  {
    LOBYTE(v17) = a3;
  }

  else
  {
    do
    {
      *v16++ = a3 | 0x80;
      v17 = a3 >> 7;
      v18 = a3 >> 14;
      a3 >>= 7;
    }

    while (v18);
  }

  *v16 = v17;
  v19 = v16 + 1;
  v5[2] = v19;
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (a4 < 0x80)
  {
    LOBYTE(v20) = a4;
  }

  else
  {
    do
    {
      *v19++ = a4 | 0x80;
      v20 = a4 >> 7;
      v21 = a4 >> 14;
      a4 >>= 7;
    }

    while (v21);
  }

  *v19 = v20;
  v5[2] = v19 + 1;
  return result;
}

uint64_t sub_1A7E05504()
{

  sub_1A7CC9970(v0 + 56, &qword_1EB2B8150, &unk_1A7E56368);
  sub_1A7E0B7C4(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_1A7E05564(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1A7E21C30();
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A7E21C20();
  v18 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A7E21940();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 24) = 0u;
  v14 = MEMORY[0x1E69E7CC0];
  *(v3 + 72) = 0xC000000000000000;
  *(v3 + 80) = v14;
  sub_1A7CC79C8(0, &qword_1EB2B2900, 0x1E696AC00);
  (*(v11 + 16))(v13, a1, v10);
  v15 = sub_1A7E05908(v13, &selRef_fileHandleForReadingFromURL_error_);
  if (v2)
  {
    (*(v11 + 8))(a1, v10);

    sub_1A7CC7E50(*(v3 + 64), *(v3 + 72));

    type metadata accessor for IDSPacketLogReader();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 16) = v15;
    (*(v18 + 104))(v9, *MEMORY[0x1E69E5BC0], v7);
    (*(v19 + 104))(v21, *MEMORY[0x1E69E5BD0], v20);
    sub_1A7CC7FFC(&qword_1EB2B8160, &qword_1A7E56388);
    swift_allocObject();

    *(v3 + 24) = sub_1A7E21BE0();

    sub_1A7E05BFC();
    (*(v11 + 8))(a1, v10);
  }

  return v3;
}

id sub_1A7E05908(uint64_t a1, SEL *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1A7E218E0();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() *a2];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1A7E21940();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_1A7E217F0();

    swift_willThrow();
    v11 = sub_1A7E21940();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

void sub_1A7E05A60(uint64_t a1)
{
  v3 = v1;
  swift_beginAccess();
  v5 = v3[8];
  v6 = v3[9];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      v10 = __OFSUB__(v8, v9);
      v11 = v8 - v9;
      if (v10)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= a1)
      {
        return;
      }
    }

    else if (a1 <= 0)
    {
      return;
    }
  }

  else if (v7)
  {
    if (__OFSUB__(HIDWORD(v5), v5))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (HIDWORD(v5) - v5 >= a1)
    {
      return;
    }
  }

  else if (BYTE6(v6) >= a1)
  {
    return;
  }

  if (!v3[3])
  {
LABEL_33:
    __break(1u);
    return;
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      v5 = BYTE6(v6);
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v7 != 2)
  {
    v5 = 0;
    goto LABEL_24;
  }

  v14 = v5 + 16;
  v12 = *(v5 + 16);
  v13 = *(v14 + 8);
  v10 = __OFSUB__(v13, v12);
  v5 = v13 - v12;
  if (v10)
  {
    __break(1u);
LABEL_21:
    v10 = __OFSUB__(HIDWORD(v5), v5);
    LODWORD(v5) = HIDWORD(v5) - v5;
    if (v10)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v5 = v5;
  }

LABEL_24:
  if (__OFSUB__(a1, v5))
  {
    __break(1u);
    goto LABEL_30;
  }

  v15 = sub_1A7E21BD0();
  v17 = v16;

  if (!v2 && v17 >> 60 != 15)
  {
    swift_beginAccess();
    sub_1A7E21A30();
    swift_endAccess();
    sub_1A7B1516C(v15, v17);
  }
}

void sub_1A7E05BFC()
{
  sub_1A7E05A60(1024);
  if (v1)
  {
    return;
  }

  swift_beginAccess();
  v2 = v0[8];
  v3 = v0[9];
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      if (BYTE6(v3) > 5uLL)
      {
        goto LABEL_12;
      }

LABEL_9:
      sub_1A7E0B6B8();
      swift_allocError();
      *v9 = 512;
      swift_willThrow();
      return;
    }

    if (!__OFSUB__(HIDWORD(v2), v2))
    {
      if (HIDWORD(v2) - v2 <= 5)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }

LABEL_20:
    __break(1u);
    return;
  }

  if (v4 != 2)
  {
    goto LABEL_9;
  }

  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = __OFSUB__(v5, v6);
  v8 = v5 - v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v8 <= 5)
  {
    goto LABEL_9;
  }

LABEL_12:
  sub_1A7D5164C(v0[8], v0[9]);
  v10 = sub_1A7E219D0();
  v12 = v11;
  sub_1A7CC7E50(v2, v3);
  v13 = sub_1A7E03860(1735355504, 0xE400000000000000);
  v15 = v14;
  v16 = sub_1A7E07674(v10, v12, v13, v14);
  sub_1A7CC7E50(v13, v15);
  if (v16)
  {
    v17 = v0[8];
    v18 = v0[9];
    sub_1A7D5164C(v17, v18);
    v19 = sub_1A7E219E0();
    sub_1A7CC7E50(v17, v18);
    if (v19 == 2)
    {
      v20 = v0[8];
      v21 = v0[9];
      sub_1A7D5164C(v20, v21);
      v22 = sub_1A7E21A60();
      v24 = v23;
      sub_1A7CC7E50(v20, v21);
      v25 = v0[8];
      v26 = v0[9];
      v0[8] = v22;
      v0[9] = v24;
      sub_1A7CC7E50(v25, v26);
      v27 = v0[8];
      v28 = v0[9];
      sub_1A7D5164C(v27, v28);
      v31 = sub_1A7D17BF8(0, v27, v28);
      v33 = v32;
      sub_1A7CC7E50(v27, v28);
      v0[4] = v31;
      v0[5] = v33;

      v34 = v0[8];
      v35 = v0[9];
      sub_1A7D5164C(v34, v35);
      v36 = sub_1A7E21A60();
      v38 = v37;
      sub_1A7CC7E50(v34, v35);
      v39 = v0[8];
      v40 = v0[9];
      v0[8] = v36;
      v0[9] = v38;
      sub_1A7CC7E50(v39, v40);
      v41 = v0[8];
      v42 = v0[9];
      sub_1A7D5164C(v41, v42);
      v43 = sub_1A7E03600(0, 0, v41, v42);
      sub_1A7CC7E50(v41, v42);
      v0[6] = v43;
      v44 = v0[8];
      v45 = v0[9];
      sub_1A7D5164C(v44, v45);
      v46 = sub_1A7E21A60();
      v48 = v47;
      sub_1A7CC7E50(v44, v45);
      v49 = v0[8];
      v50 = v0[9];
      v0[8] = v46;
      v0[9] = v48;
      sub_1A7CC7E50(v49, v50);
      v51 = v0[8];
      v52 = v0[9];
      sub_1A7D5164C(v51, v52);
      v53 = sub_1A7E03600(0, 0, v51, v52);
      sub_1A7CC7E50(v51, v52);
      v0[7] = v53;
      v54 = v0[8];
      v55 = v0[9];
      sub_1A7D5164C(v54, v55);
      v56 = sub_1A7E21A60();
      v58 = v57;
      sub_1A7CC7E50(v10, v12);
      sub_1A7CC7E50(v54, v55);
      v59 = v0[8];
      v60 = v0[9];
      v0[8] = v56;
      v0[9] = v58;
      sub_1A7CC7E50(v59, v60);
      return;
    }

    sub_1A7E0B6B8();
    swift_allocError();
    v30 = 514;
  }

  else
  {
    sub_1A7E0B6B8();
    swift_allocError();
    v30 = 513;
  }

  *v29 = v30;
  swift_willThrow();
  sub_1A7CC7E50(v10, v12);
}