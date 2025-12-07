BOOL Google_Protobuf_FileOptions.hasDeprecated.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 76) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearDeprecated()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v2 = sub_268601EB8(v2);
    *(v0 + 24) = v2;
  }

  swift_beginAccess();
  *(v2 + 76) = 2;
}

uint64_t Google_Protobuf_FileOptions.ccEnableArenas.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 77) & 1;
}

uint64_t sub_2685EC678(char *a1, uint64_t a2)
{
  v3 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v5 = sub_268601EB8(v5);
    *(a2 + 24) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 77) = v3;
  return result;
}

uint64_t Google_Protobuf_FileOptions.ccEnableArenas.setter(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v4 = sub_268601EB8(v4);
    *(v1 + 24) = v4;
  }

  result = swift_beginAccess();
  *(v4 + 77) = a1 & 1;
  return result;
}

void (*Google_Protobuf_FileOptions.ccEnableArenas.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 77) & 1;
  return sub_2685EC818;
}

void sub_2685EC818(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v3 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v2[9];
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(v7 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 77) = v4;

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasCcEnableArenas.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 77) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearCcEnableArenas()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v2 = sub_268601EB8(v2);
    *(v0 + 24) = v2;
  }

  swift_beginAccess();
  *(v2 + 77) = 2;
}

uint64_t Google_Protobuf_FileOptions.objcClassPrefix.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (*(v1 + 88))
  {
    v2 = *(v1 + 80);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685ECA00@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (*(v3 + 88))
  {
    v4 = *(v3 + 80);
    v5 = *(v3 + 88);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685ECA64(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(a2 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 80) = v4;
  *(v6 + 88) = v3;
}

uint64_t Google_Protobuf_FileOptions.objcClassPrefix.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v7 = sub_268601EB8(v7);
    *(v3 + 24) = v7;
  }

  swift_beginAccess();
  *(v7 + 80) = a1;
  *(v7 + 88) = a2;
}

void (*Google_Protobuf_FileOptions.objcClassPrefix.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  if (*(v5 + 88))
  {
    v6 = *(v5 + 80);
    v7 = *(v5 + 88);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685ECC40;
}

void sub_2685ECC40(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v7 = sub_268601EB8(v7);
      *(v8 + 24) = v7;
    }

    swift_beginAccess();
    *(v7 + 80) = v3;
    *(v7 + 88) = v5;
  }

  else
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 24);
    if ((v9 & 1) == 0)
    {
      v11 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v10 = sub_268601EB8(v10);
      *(v11 + 24) = v10;
    }

    swift_beginAccess();
    *(v10 + 80) = v3;
    *(v10 + 88) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasObjcClassPrefix.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 88) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearObjcClassPrefix()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v2 = sub_268601EB8(v2);
    *(v0 + 24) = v2;
  }

  swift_beginAccess();
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
}

uint64_t Google_Protobuf_FileOptions.csharpNamespace.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (*(v1 + 104))
  {
    v2 = *(v1 + 96);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685ECE98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (*(v3 + 104))
  {
    v4 = *(v3 + 96);
    v5 = *(v3 + 104);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685ECEFC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(a2 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 96) = v4;
  *(v6 + 104) = v3;
}

uint64_t Google_Protobuf_FileOptions.csharpNamespace.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v7 = sub_268601EB8(v7);
    *(v3 + 24) = v7;
  }

  swift_beginAccess();
  *(v7 + 96) = a1;
  *(v7 + 104) = a2;
}

void (*Google_Protobuf_FileOptions.csharpNamespace.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  if (*(v5 + 104))
  {
    v6 = *(v5 + 96);
    v7 = *(v5 + 104);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685ED0D8;
}

void sub_2685ED0D8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v7 = sub_268601EB8(v7);
      *(v8 + 24) = v7;
    }

    swift_beginAccess();
    *(v7 + 96) = v3;
    *(v7 + 104) = v5;
  }

  else
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 24);
    if ((v9 & 1) == 0)
    {
      v11 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v10 = sub_268601EB8(v10);
      *(v11 + 24) = v10;
    }

    swift_beginAccess();
    *(v10 + 96) = v3;
    *(v10 + 104) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasCsharpNamespace.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 104) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearCsharpNamespace()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v2 = sub_268601EB8(v2);
    *(v0 + 24) = v2;
  }

  swift_beginAccess();
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
}

uint64_t Google_Protobuf_FileOptions.swiftPrefix.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (*(v1 + 120))
  {
    v2 = *(v1 + 112);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685ED330@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (*(v3 + 120))
  {
    v4 = *(v3 + 112);
    v5 = *(v3 + 120);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685ED394(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(a2 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 112) = v4;
  *(v6 + 120) = v3;
}

uint64_t Google_Protobuf_FileOptions.swiftPrefix.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v7 = sub_268601EB8(v7);
    *(v3 + 24) = v7;
  }

  swift_beginAccess();
  *(v7 + 112) = a1;
  *(v7 + 120) = a2;
}

void (*Google_Protobuf_FileOptions.swiftPrefix.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  if (*(v5 + 120))
  {
    v6 = *(v5 + 112);
    v7 = *(v5 + 120);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685ED570;
}

void sub_2685ED570(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v7 = sub_268601EB8(v7);
      *(v8 + 24) = v7;
    }

    swift_beginAccess();
    *(v7 + 112) = v3;
    *(v7 + 120) = v5;
  }

  else
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 24);
    if ((v9 & 1) == 0)
    {
      v11 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v10 = sub_268601EB8(v10);
      *(v11 + 24) = v10;
    }

    swift_beginAccess();
    *(v10 + 112) = v3;
    *(v10 + 120) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasSwiftPrefix.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 120) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearSwiftPrefix()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v2 = sub_268601EB8(v2);
    *(v0 + 24) = v2;
  }

  swift_beginAccess();
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
}

uint64_t Google_Protobuf_FileOptions.phpClassPrefix.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (*(v1 + 136))
  {
    v2 = *(v1 + 128);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685ED7C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (*(v3 + 136))
  {
    v4 = *(v3 + 128);
    v5 = *(v3 + 136);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685ED82C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(a2 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 128) = v4;
  *(v6 + 136) = v3;
}

uint64_t Google_Protobuf_FileOptions.phpClassPrefix.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v7 = sub_268601EB8(v7);
    *(v3 + 24) = v7;
  }

  swift_beginAccess();
  *(v7 + 128) = a1;
  *(v7 + 136) = a2;
}

void (*Google_Protobuf_FileOptions.phpClassPrefix.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  if (*(v5 + 136))
  {
    v6 = *(v5 + 128);
    v7 = *(v5 + 136);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685EDA08;
}

void sub_2685EDA08(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v7 = sub_268601EB8(v7);
      *(v8 + 24) = v7;
    }

    swift_beginAccess();
    *(v7 + 128) = v3;
    *(v7 + 136) = v5;
  }

  else
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 24);
    if ((v9 & 1) == 0)
    {
      v11 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v10 = sub_268601EB8(v10);
      *(v11 + 24) = v10;
    }

    swift_beginAccess();
    *(v10 + 128) = v3;
    *(v10 + 136) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasPhpClassPrefix.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 136) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearPhpClassPrefix()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v2 = sub_268601EB8(v2);
    *(v0 + 24) = v2;
  }

  swift_beginAccess();
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
}

uint64_t Google_Protobuf_FileOptions.phpNamespace.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (*(v1 + 152))
  {
    v2 = *(v1 + 144);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685EDC60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (*(v3 + 152))
  {
    v4 = *(v3 + 144);
    v5 = *(v3 + 152);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685EDCC4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(a2 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 144) = v4;
  *(v6 + 152) = v3;
}

uint64_t Google_Protobuf_FileOptions.phpNamespace.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v7 = sub_268601EB8(v7);
    *(v3 + 24) = v7;
  }

  swift_beginAccess();
  *(v7 + 144) = a1;
  *(v7 + 152) = a2;
}

void (*Google_Protobuf_FileOptions.phpNamespace.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  if (*(v5 + 152))
  {
    v6 = *(v5 + 144);
    v7 = *(v5 + 152);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685EDEA0;
}

void sub_2685EDEA0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v7 = sub_268601EB8(v7);
      *(v8 + 24) = v7;
    }

    swift_beginAccess();
    *(v7 + 144) = v3;
    *(v7 + 152) = v5;
  }

  else
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 24);
    if ((v9 & 1) == 0)
    {
      v11 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v10 = sub_268601EB8(v10);
      *(v11 + 24) = v10;
    }

    swift_beginAccess();
    *(v10 + 144) = v3;
    *(v10 + 152) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasPhpNamespace.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 152) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearPhpNamespace()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v2 = sub_268601EB8(v2);
    *(v0 + 24) = v2;
  }

  swift_beginAccess();
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
}

uint64_t Google_Protobuf_FileOptions.phpMetadataNamespace.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (*(v1 + 168))
  {
    v2 = *(v1 + 160);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685EE0F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (*(v3 + 168))
  {
    v4 = *(v3 + 160);
    v5 = *(v3 + 168);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685EE15C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(a2 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 160) = v4;
  *(v6 + 168) = v3;
}

uint64_t Google_Protobuf_FileOptions.phpMetadataNamespace.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v7 = sub_268601EB8(v7);
    *(v3 + 24) = v7;
  }

  swift_beginAccess();
  *(v7 + 160) = a1;
  *(v7 + 168) = a2;
}

void (*Google_Protobuf_FileOptions.phpMetadataNamespace.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  if (*(v5 + 168))
  {
    v6 = *(v5 + 160);
    v7 = *(v5 + 168);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685EE338;
}

void sub_2685EE338(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v7 = sub_268601EB8(v7);
      *(v8 + 24) = v7;
    }

    swift_beginAccess();
    *(v7 + 160) = v3;
    *(v7 + 168) = v5;
  }

  else
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 24);
    if ((v9 & 1) == 0)
    {
      v11 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v10 = sub_268601EB8(v10);
      *(v11 + 24) = v10;
    }

    swift_beginAccess();
    *(v10 + 160) = v3;
    *(v10 + 168) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasPhpMetadataNamespace.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 168) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearPhpMetadataNamespace()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v2 = sub_268601EB8(v2);
    *(v0 + 24) = v2;
  }

  swift_beginAccess();
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
}

uint64_t Google_Protobuf_FileOptions.rubyPackage.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (*(v1 + 184))
  {
    v2 = *(v1 + 176);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685EE590@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (*(v3 + 184))
  {
    v4 = *(v3 + 176);
    v5 = *(v3 + 184);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685EE5F4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(a2 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 176) = v4;
  *(v6 + 184) = v3;
}

uint64_t Google_Protobuf_FileOptions.rubyPackage.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v7 = sub_268601EB8(v7);
    *(v3 + 24) = v7;
  }

  swift_beginAccess();
  *(v7 + 176) = a1;
  *(v7 + 184) = a2;
}

void (*Google_Protobuf_FileOptions.rubyPackage.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  if (*(v5 + 184))
  {
    v6 = *(v5 + 176);
    v7 = *(v5 + 184);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685EE7D0;
}

void sub_2685EE7D0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v7 = sub_268601EB8(v7);
      *(v8 + 24) = v7;
    }

    swift_beginAccess();
    *(v7 + 176) = v3;
    *(v7 + 184) = v5;
  }

  else
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 24);
    if ((v9 & 1) == 0)
    {
      v11 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v10 = sub_268601EB8(v10);
      *(v11 + 24) = v10;
    }

    swift_beginAccess();
    *(v10 + 176) = v3;
    *(v10 + 184) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasRubyPackage.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 184) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearRubyPackage()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v2 = sub_268601EB8(v2);
    *(v0 + 24) = v2;
  }

  swift_beginAccess();
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
}

uint64_t sub_2685EEA08(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v5 = sub_268601EB8(v5);
    *(a2 + 24) = v5;
  }

  swift_beginAccess();
  *(v5 + 192) = v3;
}

uint64_t Google_Protobuf_FileOptions.uninterpretedOption.setter(uint64_t a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v5 = sub_268601EB8(v5);
    *(v2 + 24) = v5;
  }

  swift_beginAccess();
  *(v5 + 192) = a1;
}

void (*Google_Protobuf_FileOptions.uninterpretedOption.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 192);

  return sub_2685EEBC8;
}

void sub_2685EEBC8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = v2[10];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v6 = sub_268601EB8(v6);
      *(v7 + 24) = v6;
    }

    swift_beginAccess();
    *(v6 + 192) = v3;
  }

  else
  {
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 24);
    if ((v8 & 1) == 0)
    {
      v10 = v2[10];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v9 = sub_268601EB8(v9);
      *(v10 + 24) = v9;
    }

    swift_beginAccess();
    *(v9 + 192) = v3;
  }

  free(v2);
}

uint64_t Google_Protobuf_FileOptions.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_FileOptions.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

SiriOntologyProtobuf::Google_Protobuf_FileOptions::OptimizeMode_optional __swiftcall Google_Protobuf_FileOptions.OptimizeMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2685EED84()
{
  v1 = *v0;
  sub_268689E94();
  MEMORY[0x26D61D8F0](v1 + 1);
  return sub_268689EF4();
}

uint64_t sub_2685EEDCC(uint64_t a1)
{
  v2 = *v1;
  sub_268689E94();
  MEMORY[0x26D61D8F0](v2 + 1);
  return sub_268689EF4();
}

uint64_t Google_Protobuf_FileOptions._protobuf_extensionFieldValues.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_2685EEE74(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t (*Google_Protobuf_MessageOptions.messageSetWireFormat.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32) & 1;
  return sub_268619410;
}

uint64_t (*Google_Protobuf_MessageOptions.noStandardDescriptorAccessor.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 33) & 1;
  return sub_268619408;
}

uint64_t (*Google_Protobuf_MessageOptions.deprecated.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 34) & 1;
  return sub_2685EEFE0;
}

uint64_t (*Google_Protobuf_MessageOptions.mapEntry.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 35) & 1;
  return sub_26861940C;
}

uint64_t Google_Protobuf_MessageOptions.uninterpretedOption.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Google_Protobuf_MessageOptions.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_MessageOptions.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t Google_Protobuf_MessageOptions._protobuf_extensionFieldValues.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 24) = v2;
  return result;
}

void Google_Protobuf_FieldOptions.ctype.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 32);
  if (v2 == 3)
  {
    LOBYTE(v2) = 0;
  }

  *a1 = v2;
}

uint64_t (*Google_Protobuf_FieldOptions.ctype.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 32);
  if (v2 == 3)
  {
    LOBYTE(v2) = 0;
  }

  *(a1 + 8) = v2;
  return sub_2685EF1CC;
}

uint64_t (*Google_Protobuf_FieldOptions.packed.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 33) & 1;
  return sub_268619408;
}

void Google_Protobuf_FieldOptions.jstype.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 34);
  if (v2 == 3)
  {
    LOBYTE(v2) = 0;
  }

  *a1 = v2;
}

_BYTE *(*Google_Protobuf_FieldOptions.jstype.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 34);
  if (v2 == 3)
  {
    LOBYTE(v2) = 0;
  }

  *(a1 + 8) = v2;
  return sub_2685EEFE0;
}

uint64_t (*Google_Protobuf_FieldOptions.lazy.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 35) & 1;
  return sub_2685EF30C;
}

uint64_t (*Google_Protobuf_FieldOptions.deprecated.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 36) & 1;
  return sub_2685EF37C;
}

uint64_t (*Google_Protobuf_FieldOptions.weak.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 37) & 1;
  return sub_2685EF3EC;
}

uint64_t Google_Protobuf_FieldOptions.uninterpretedOption.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Google_Protobuf_FieldOptions.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_FieldOptions.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

SiriOntologyProtobuf::Google_Protobuf_FieldOptions::CType_optional __swiftcall Google_Protobuf_FieldOptions.CType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t Google_Protobuf_FieldOptions._protobuf_extensionFieldValues.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 24) = v2;
  return result;
}

uint64_t Google_Protobuf_OneofOptions.uninterpretedOption.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Google_Protobuf_OneofOptions.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t _s20SiriOntologyProtobuf07Google_C12_EnumOptionsV13unknownFieldsAA14UnknownStorageVvs_0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t Google_Protobuf_OneofOptions._protobuf_extensionFieldValues.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 24) = v2;
  return result;
}

_BYTE *(*Google_Protobuf_EnumOptions.allowAlias.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32) & 1;
  return sub_2685EF1CC;
}

uint64_t (*Google_Protobuf_EnumOptions.deprecated.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 33) & 1;
  return sub_2685EF72C;
}

uint64_t Google_Protobuf_EnumOptions.uninterpretedOption.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Google_Protobuf_EnumOptions.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_EnumOptions._protobuf_extensionFieldValues.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 24) = v2;
  return result;
}

uint64_t (*Google_Protobuf_EnumValueOptions.deprecated.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32) & 1;
  return sub_268619410;
}

uint64_t (*Google_Protobuf_ServiceOptions.deprecated.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32) & 1;
  return sub_268619410;
}

uint64_t Google_Protobuf_ServiceOptions.uninterpretedOption.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Google_Protobuf_ServiceOptions.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_ServiceOptions._protobuf_extensionFieldValues.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 24) = v2;
  return result;
}

uint64_t (*Google_Protobuf_MethodOptions.deprecated.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32) & 1;
  return sub_268619410;
}

void Google_Protobuf_MethodOptions.idempotencyLevel.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 33);
  if (v2 == 3)
  {
    LOBYTE(v2) = 0;
  }

  *a1 = v2;
}

_BYTE *(*Google_Protobuf_MethodOptions.idempotencyLevel.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 33);
  if (v2 == 3)
  {
    LOBYTE(v2) = 0;
  }

  *(a1 + 8) = v2;
  return sub_2685EF72C;
}

uint64_t Google_Protobuf_UninterpretedOption.name.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Google_Protobuf_UninterpretedOption.identifierValue.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t Google_Protobuf_UninterpretedOption.identifierValue.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t (*Google_Protobuf_UninterpretedOption.identifierValue.modify(void *a1))()
{
  a1[2] = v1;
  v3 = *(v1 + 32);
  if (v3)
  {
    v4 = *(v1 + 24);
    v5 = *(v1 + 32);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  a1[3] = v3;
  *a1 = v4;
  a1[1] = v5;

  return sub_26861949C;
}

Swift::Void __swiftcall Google_Protobuf_UninterpretedOption.clearIdentifierValue()()
{

  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
}

uint64_t Google_Protobuf_UninterpretedOption.positiveIntValue.getter()
{
  if (*(v0 + 48))
  {
    return 0;
  }

  else
  {
    return *(v0 + 40);
  }
}

uint64_t Google_Protobuf_UninterpretedOption.positiveIntValue.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 48) = 0;
  return result;
}

uint64_t (*Google_Protobuf_UninterpretedOption.positiveIntValue.modify(void *a1))()
{
  v2 = *(v1 + 40);
  if (*(v1 + 48))
  {
    v2 = 0;
  }

  *a1 = v2;
  a1[1] = v1;
  return sub_2685EFCDC;
}

void *sub_2685EFCDC(void *result)
{
  v1 = result[1];
  *(v1 + 40) = *result;
  *(v1 + 48) = 0;
  return result;
}

uint64_t Google_Protobuf_UninterpretedOption.negativeIntValue.getter()
{
  if (*(v0 + 64))
  {
    return 0;
  }

  else
  {
    return *(v0 + 56);
  }
}

uint64_t Google_Protobuf_UninterpretedOption.negativeIntValue.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 64) = 0;
  return result;
}

uint64_t (*Google_Protobuf_UninterpretedOption.negativeIntValue.modify(void *a1))()
{
  v2 = *(v1 + 56);
  if (*(v1 + 64))
  {
    v2 = 0;
  }

  *a1 = v2;
  a1[1] = v1;
  return sub_2685EFD60;
}

void *sub_2685EFD60(void *result)
{
  v1 = result[1];
  *(v1 + 56) = *result;
  *(v1 + 64) = 0;
  return result;
}

double Google_Protobuf_UninterpretedOption.doubleValue.getter()
{
  result = *(v0 + 72);
  if (*(v0 + 80))
  {
    return 0.0;
  }

  return result;
}

uint64_t (*Google_Protobuf_UninterpretedOption.doubleValue.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v2 = *(v1 + 72);
  if (*(v1 + 80))
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_2685EFDF0;
}

void *sub_2685EFDF0(void *result)
{
  v1 = result[1];
  *(v1 + 72) = *result;
  *(v1 + 80) = 0;
  return result;
}

uint64_t Google_Protobuf_UninterpretedOption.stringValue.getter()
{
  v1 = *(v0 + 96);
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 88);
  }

  sub_268614834(*(v0 + 88), v1);
  return v2;
}

uint64_t Google_Protobuf_UninterpretedOption.stringValue.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2685B98FC(*(v2 + 88), *(v2 + 96));
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t (*Google_Protobuf_UninterpretedOption.stringValue.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v1 + 88);
  }

  v6 = 0xC000000000000000;
  if (v4 >> 60 != 15)
  {
    v6 = *(v1 + 96);
  }

  *a1 = v5;
  a1[1] = v6;
  sub_268614834(v3, v4);
  return sub_2685EFEF8;
}

uint64_t sub_2685EFEF8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *(v3 + 88);
  v6 = *(v3 + 96);
  if (a2)
  {
    sub_2685BA80C(*a1, v2);
    sub_2685B98FC(v5, v6);
    *(v3 + 88) = v4;
    *(v3 + 96) = v2;

    return sub_2685B593C(v4, v2);
  }

  else
  {
    result = sub_2685B98FC(*(v3 + 88), *(v3 + 96));
    *(v3 + 88) = v4;
    *(v3 + 96) = v2;
  }

  return result;
}

uint64_t Google_Protobuf_UninterpretedOption.aggregateValue.getter()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t Google_Protobuf_UninterpretedOption.aggregateValue.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t (*Google_Protobuf_UninterpretedOption.aggregateValue.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 112);
  if (v3)
  {
    v4 = *(v1 + 104);
    v5 = *(v1 + 112);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  a1[3] = v3;
  *a1 = v4;
  a1[1] = v5;

  return sub_2685F00B0;
}

uint64_t sub_2685F00B0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 104) = v3;
    *(v4 + 112) = v2;
  }

  else
  {

    *(v4 + 104) = v3;
    *(v4 + 112) = v2;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_UninterpretedOption.clearAggregateValue()()
{

  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
}

uint64_t Google_Protobuf_UninterpretedOption.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_UninterpretedOption.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t Google_Protobuf_UninterpretedOption.NamePart.namePart.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t Google_Protobuf_UninterpretedOption.NamePart.namePart.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t (*Google_Protobuf_UninterpretedOption.NamePart.namePart.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 24);
  if (v3)
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  a1[3] = v3;
  *a1 = v4;
  a1[1] = v5;

  return sub_2685F029C;
}

uint64_t sub_2685F029C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
  }

  else
  {

    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_UninterpretedOption.NamePart.clearNamePart()()
{

  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
}

uint64_t (*Google_Protobuf_UninterpretedOption.NamePart.isExtension.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32) & 1;
  return sub_268619410;
}

uint64_t Google_Protobuf_UninterpretedOption.NamePart.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_UninterpretedOption.NamePart.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

double Google_Protobuf_UninterpretedOption.NamePart.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26868A5E0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2;
  return result;
}

double Google_Protobuf_UninterpretedOption.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  result = 0.0;
  *(a1 + 88) = xmmword_26868BD70;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return result;
}

uint64_t Google_Protobuf_SourceCodeInfo.location.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Google_Protobuf_SourceCodeInfo.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.path.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.span.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.leadingComments.getter()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.leadingComments.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t (*Google_Protobuf_SourceCodeInfo.Location.leadingComments.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 48);
  if (v3)
  {
    v4 = *(v1 + 40);
    v5 = *(v1 + 48);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  a1[3] = v3;
  *a1 = v4;
  a1[1] = v5;

  return sub_2685F064C;
}

uint64_t sub_2685F064C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 40) = v3;
    *(v4 + 48) = v2;
  }

  else
  {

    *(v4 + 40) = v3;
    *(v4 + 48) = v2;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_SourceCodeInfo.Location.clearLeadingComments()()
{

  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.trailingComments.getter()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.trailingComments.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t (*Google_Protobuf_SourceCodeInfo.Location.trailingComments.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 64);
  if (v3)
  {
    v4 = *(v1 + 56);
    v5 = *(v1 + 64);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  a1[3] = v3;
  *a1 = v4;
  a1[1] = v5;

  return sub_2685F07D8;
}

uint64_t sub_2685F07D8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 56) = v3;
    *(v4 + 64) = v2;
  }

  else
  {

    *(v4 + 56) = v3;
    *(v4 + 64) = v2;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_SourceCodeInfo.Location.clearTrailingComments()()
{

  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.leadingDetachedComments.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

double Google_Protobuf_SourceCodeInfo.Location.init()@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v1;
  *(a1 + 16) = v1;
  *(a1 + 24) = xmmword_26868A5E0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.path.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.sourceFile.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.sourceFile.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t (*Google_Protobuf_GeneratedCodeInfo.Annotation.sourceFile.modify(void *a1))()
{
  a1[2] = v1;
  v3 = *(v1 + 32);
  if (v3)
  {
    v4 = *(v1 + 24);
    v5 = *(v1 + 32);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  a1[3] = v3;
  *a1 = v4;
  a1[1] = v5;

  return sub_2685F0AD8;
}

uint64_t sub_2685F0ADC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 24) = v3;
    *(v4 + 32) = v2;
  }

  else
  {

    *(v4 + 24) = v3;
    *(v4 + 32) = v2;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_GeneratedCodeInfo.Annotation.clearSourceFile()()
{

  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.begin.getter()
{
  if (*(v0 + 44))
  {
    return 0;
  }

  else
  {
    return *(v0 + 40);
  }
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.begin.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 44) = 0;
  return result;
}

uint64_t *(*Google_Protobuf_GeneratedCodeInfo.Annotation.begin.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 40);
  if (*(v1 + 44))
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_2685F0BD8;
}

uint64_t *sub_2685F0BD8(uint64_t *result)
{
  v1 = *result;
  *(v1 + 40) = *(result + 2);
  *(v1 + 44) = 0;
  return result;
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.end.getter()
{
  if (*(v0 + 52))
  {
    return 0;
  }

  else
  {
    return *(v0 + 48);
  }
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.end.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = 0;
  return result;
}

uint64_t *(*Google_Protobuf_GeneratedCodeInfo.Annotation.end.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 48);
  if (*(v1 + 52))
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_2685F0C64;
}

uint64_t *sub_2685F0C64(uint64_t *result)
{
  v1 = *result;
  *(v1 + 48) = *(result + 2);
  *(v1 + 52) = 0;
  return result;
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

double Google_Protobuf_GeneratedCodeInfo.Annotation.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 1;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  return result;
}

uint64_t static Google_Protobuf_FileDescriptorSet._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BC48 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C410;
  v2 = qword_28028C418;
  v3 = unk_28028C420;
  *a1 = qword_28028C408;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

BOOL Google_Protobuf_FileDescriptorSet.isInitialized.getter()
{
  v1 = sub_2685F10F0(*v0, &type metadata for Google_Protobuf_FileDescriptorProto, sub_268614848);
  v2 = _s20SiriOntologyProtobuf8InternalO17areAllInitializedySbSayAA7Message_pGFZ_0(v1);

  return v2;
}

uint64_t sub_2685F0E50(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v30 = MEMORY[0x277D84F90];
    sub_2685C4694(0, v1, 0);
    v2 = v30;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[4];
      v6 = v4[6];
      v27 = v4[5];
      v28 = v6;
      v7 = v4[1];
      v22 = *v4;
      v8 = v4[2];
      v9 = v4[3];
      v23 = v7;
      v24 = v8;
      v29 = *(v4 + 14);
      v25 = v9;
      v26 = v5;
      sub_268619040(&v22, &v19);
      v30 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2685C4694((v10 > 1), v11 + 1, 1);
        v2 = v30;
      }

      v20 = &type metadata for Google_Protobuf_UninterpretedOption;
      v21 = sub_2686148F0();
      v12 = swift_allocObject();
      v13 = v27;
      v14 = v28;
      v15 = v25;
      *(v12 + 80) = v26;
      *(v12 + 96) = v13;
      *(v12 + 112) = v14;
      v16 = v23;
      v17 = v24;
      *(v12 + 16) = v22;
      *(v12 + 32) = v16;
      *&v19 = v12;
      *(v12 + 128) = v29;
      *(v12 + 48) = v17;
      *(v12 + 64) = v15;
      *(v2 + 16) = v11 + 1;
      sub_2685B17CC(&v19, v2 + 40 * v11 + 32);
      v4 = (v4 + 120);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2685F0FB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2685C4694(0, v1, 0);
    v2 = v17;
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 4);
      v6 = *(v4 - 3);
      v7 = *(v4 - 1);
      v13 = *(v4 - 2);
      v8 = *v4;
      sub_2685BA80C(v5, v6);
      v17 = v2;
      v9 = *(v2 + 16);
      v10 = *(v2 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_2685C4694((v10 > 1), v9 + 1, 1);
        v2 = v17;
      }

      v4 += 40;
      v15 = &type metadata for Google_Protobuf_UninterpretedOption.NamePart;
      v16 = sub_268614C8C();
      v11 = swift_allocObject();
      *&v14 = v11;
      *(v11 + 16) = v5;
      *(v11 + 24) = v6;
      *(v11 + 32) = v13;
      *(v11 + 40) = v7;
      *(v11 + 48) = v8;
      *(v2 + 16) = v9 + 1;
      sub_2685B17CC(&v14, v2 + 40 * v9 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2685F10F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2685C4694(0, v3, 0);
    v4 = v20;
    v7 = (a1 + 48);
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      sub_2685BA80C(v8, v9);
      v20 = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);

      if (v12 >= v11 >> 1)
      {
        sub_2685C4694((v11 > 1), v12 + 1, 1);
        v4 = v20;
      }

      v18 = a2;
      v13 = a3();
      *&v16 = v8;
      *(&v16 + 1) = v9;
      v19 = v13;
      v17 = v10;
      *(v4 + 16) = v12 + 1;
      sub_2685B17CC(&v16, v4 + 40 * v12 + 32);
      v7 += 3;
      --v3;
    }

    while (v3);
  }

  return v4;
}

BOOL static Google_Protobuf_FileDescriptorSet.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_26860E120(*a1, *a2, sub_2685F35C0) & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v2, v3);
  sub_2685BA80C(v4, v5);
  v6 = sub_2686131DC(v2, v3, v4, v5);
  sub_2685B593C(v4, v5);
  sub_2685B593C(v2, v3);
  return v6;
}

uint64_t sub_2685F1358()
{
  v1 = sub_2685F10F0(*v0, &type metadata for Google_Protobuf_FileDescriptorProto, sub_268614848);
  result = v1 + 32;
  v3 = -*(v1 + 16);
  v4 = -1;
  while (1)
  {
    v5 = v3 + v4;
    if (v3 + v4 == -1)
    {
LABEL_5:

      return v5 == -1;
    }

    if (++v4 >= *(v1 + 16))
    {
      break;
    }

    v6 = result + 40;
    sub_2685B1724(result, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v9 = (*(v8 + 32))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    result = v6;
    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2685F14A0@<X0>(void *a1@<X8>)
{
  if (qword_28028BC48 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C410;
  v2 = qword_28028C418;
  v3 = unk_28028C420;
  *a1 = qword_28028C408;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

BOOL sub_2685F1584(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_26860E120(*a1, *a2, sub_2685F35C0) & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v2, v3);
  sub_2685BA80C(v4, v5);
  v6 = sub_2686131DC(v2, v3, v4, v5);
  sub_2685B593C(v4, v5);
  sub_2685B593C(v2, v3);
  return v6;
}

uint64_t static Google_Protobuf_FileDescriptorProto._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BC50 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C430;
  v2 = qword_28028C438;
  v3 = unk_28028C440;
  *a1 = qword_28028C428;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

double sub_2685F1704()
{
  type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 48) = MEMORY[0x277D84F90];
  *(v0 + 56) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = v2;
  *(v0 + 80) = v2;
  *(v0 + 88) = v2;
  *(v0 + 96) = v2;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  qword_28028C448 = v0;
  return result;
}

uint64_t sub_2685F1768(void *a1)
{
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 48) = MEMORY[0x277D84F90];
  *(v1 + 56) = v3;
  *(v1 + 64) = v3;
  *(v1 + 72) = v3;
  *(v1 + 80) = v3;
  *(v1 + 88) = v3;
  *(v1 + 96) = v3;
  *(v1 + 120) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0;
  *(v1 + 136) = 0u;
  *(v1 + 104) = 0u;
  swift_beginAccess();
  v5 = a1[2];
  v4 = a1[3];
  swift_beginAccess();
  *(v1 + 16) = v5;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v7 = a1[4];
  v6 = a1[5];
  swift_beginAccess();
  *(v1 + 32) = v7;
  *(v1 + 40) = v6;
  swift_beginAccess();
  v8 = a1[6];
  swift_beginAccess();
  *(v1 + 48) = v8;

  swift_beginAccess();
  v9 = a1[7];
  swift_beginAccess();
  *(v1 + 56) = v9;

  swift_beginAccess();
  v10 = a1[8];
  swift_beginAccess();
  *(v1 + 64) = v10;

  swift_beginAccess();
  v11 = a1[9];
  swift_beginAccess();
  *(v1 + 72) = v11;

  swift_beginAccess();
  v12 = a1[10];
  swift_beginAccess();
  *(v1 + 80) = v12;

  swift_beginAccess();
  v13 = a1[11];
  swift_beginAccess();
  *(v1 + 88) = v13;

  swift_beginAccess();
  v14 = a1[12];
  swift_beginAccess();
  *(v1 + 96) = v14;

  swift_beginAccess();
  v15 = a1[13];
  v16 = a1[14];
  v17 = a1[15];
  v18 = a1[16];
  swift_beginAccess();
  v19 = *(v1 + 104);
  v20 = *(v1 + 112);
  v21 = *(v1 + 120);
  v22 = *(v1 + 128);
  *(v1 + 104) = v15;
  *(v1 + 112) = v16;
  *(v1 + 120) = v17;
  *(v1 + 128) = v18;
  sub_268601AE8(v15, v16, v17, v18);
  sub_268601B34(v19, v20, v21, v22);
  swift_beginAccess();
  v23 = a1[17];
  v24 = a1[18];
  v25 = a1[19];
  swift_beginAccess();
  v26 = *(v1 + 136);
  v27 = *(v1 + 144);
  v28 = *(v1 + 152);
  *(v1 + 136) = v23;
  *(v1 + 144) = v24;
  *(v1 + 152) = v25;
  sub_268601B80(v23, v24, v25);
  sub_268601BC8(v26, v27, v28);
  swift_beginAccess();
  v30 = a1[20];
  v29 = a1[21];

  swift_beginAccess();
  *(v1 + 160) = v30;
  *(v1 + 168) = v29;

  return v1;
}

void *sub_2685F1BBC()
{

  sub_268601B34(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));
  sub_268601BC8(*(v0 + 136), *(v0 + 144), *(v0 + 152));

  return v0;
}

uint64_t sub_2685F1C3C()
{
  sub_2685F1BBC();

  return swift_deallocClassInstance();
}

uint64_t sub_2685F1C74(uint64_t a1)
{
  swift_beginAccess();

  v3 = sub_2685F10F0(v2, &type metadata for Google_Protobuf_DescriptorProto, sub_268615B10);

  result = v3 + 32;
  v5 = -*(v3 + 16);
  v6 = -1;
  while (v5 + v6 != -1)
  {
    if (++v6 >= *(v3 + 16))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v7 = result + 40;
    sub_2685B1724(result, &v37);
    v8 = v39;
    v9 = v40;
    __swift_project_boxed_opaque_existential_1(&v37, v39);
    v10 = (*(v9 + 32))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(&v37);
    result = v7;
    if ((v10 & 1) == 0)
    {
LABEL_20:

      return 0;
    }
  }

  swift_beginAccess();

  v12 = sub_2685F10F0(v11, &type metadata for Google_Protobuf_EnumDescriptorProto, sub_2686164AC);

  result = v12 + 32;
  v13 = -*(v12 + 16);
  v14 = -1;
  while (v13 + v14 != -1)
  {
    if (++v14 >= *(v12 + 16))
    {
      goto LABEL_27;
    }

    v15 = result + 40;
    sub_2685B1724(result, &v37);
    v16 = v39;
    v17 = v40;
    __swift_project_boxed_opaque_existential_1(&v37, v39);
    v18 = (*(v17 + 32))(v16, v17);
    __swift_destroy_boxed_opaque_existential_1(&v37);
    result = v15;
    if ((v18 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  swift_beginAccess();

  v20 = sub_2685F10F0(v19, &type metadata for Google_Protobuf_ServiceDescriptorProto, sub_2686169A4);

  result = v20 + 32;
  v21 = -*(v20 + 16);
  v22 = -1;
  while (v21 + v22 != -1)
  {
    if (++v22 >= *(v20 + 16))
    {
      goto LABEL_28;
    }

    v23 = result + 40;
    sub_2685B1724(result, &v37);
    v24 = v39;
    v25 = v40;
    __swift_project_boxed_opaque_existential_1(&v37, v39);
    v26 = (*(v25 + 32))(v24, v25);
    __swift_destroy_boxed_opaque_existential_1(&v37);
    result = v23;
    if ((v26 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  swift_beginAccess();

  v28 = sub_2685F10F0(v27, &type metadata for Google_Protobuf_FieldDescriptorProto, sub_26861615C);

  result = v28 + 32;
  v29 = -*(v28 + 16);
  v30 = -1;
  while (v29 + v30 != -1)
  {
    if (++v30 >= *(v28 + 16))
    {
      goto LABEL_29;
    }

    v31 = result + 40;
    sub_2685B1724(result, &v37);
    v32 = v39;
    v33 = v40;
    __swift_project_boxed_opaque_existential_1(&v37, v39);
    v34 = (*(v33 + 32))(v32, v33);
    __swift_destroy_boxed_opaque_existential_1(&v37);
    result = v31;
    if ((v34 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  swift_beginAccess();
  v35 = *(a1 + 120);
  if (v35)
  {
    v36 = *(a1 + 128);
    v37 = *(a1 + 104);
    v38 = v35;
    v39 = v36;
    if ((Google_Protobuf_FileOptions.isInitialized.getter() & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t Google_Protobuf_FileOptions.isInitialized.getter()
{
  v11[0] = *(v0 + 16);
  if (ExtensionFieldValueSet.isInitialized.getter())
  {
    swift_beginAccess();

    v2 = sub_2685F0E50(v1);

    result = v2 + 32;
    v4 = -*(v2 + 16);
    v5 = -1;
    while (1)
    {
      v6 = v4 + v5 == -1;
      if (v4 + v5 == -1)
      {
LABEL_6:

        return v6;
      }

      if (++v5 >= *(v2 + 16))
      {
        break;
      }

      v7 = result + 40;
      sub_2685B1724(result, v11);
      v8 = v12;
      v9 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v10 = (*(v9 + 32))(v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v11);
      result = v7;
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_2685F21CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  result = v8(a3, a4);
  v11 = v4;
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 6)
      {
        if (result <= 9)
        {
          if (result == 7)
          {
            swift_beginAccess();
            v12 = *(a4 + 416);
            v13 = sub_26861615C();
            v14 = a1 + 96;
            v15 = &type metadata for Google_Protobuf_FieldDescriptorProto;
          }

          else if (result == 8)
          {
            swift_beginAccess();
            v12 = *(a4 + 408);
            v13 = sub_2686151BC();
            v14 = a1 + 104;
            v15 = &type metadata for Google_Protobuf_FileOptions;
          }

          else
          {
            swift_beginAccess();
            v12 = *(a4 + 408);
            v13 = sub_268617A3C();
            v14 = a1 + 136;
            v15 = &type metadata for Google_Protobuf_SourceCodeInfo;
          }

          goto LABEL_5;
        }

        switch(result)
        {
          case 10:
            swift_beginAccess();
            v17 = *(a4 + 88);
            v18 = a1 + 56;
            goto LABEL_30;
          case 11:
            swift_beginAccess();
            v17 = *(a4 + 88);
            v18 = a1 + 64;
            goto LABEL_30;
          case 12:
            swift_beginAccess();
            v16 = v11;
            (*(a4 + 344))(a1 + 160, a3, a4);
            goto LABEL_6;
        }
      }

      else
      {
        if (result > 3)
        {
          if (result == 4)
          {
            swift_beginAccess();
            v12 = *(a4 + 416);
            v13 = sub_268615B10();
            v14 = a1 + 72;
            v15 = &type metadata for Google_Protobuf_DescriptorProto;
          }

          else if (result == 5)
          {
            swift_beginAccess();
            v12 = *(a4 + 416);
            v13 = sub_2686164AC();
            v14 = a1 + 80;
            v15 = &type metadata for Google_Protobuf_EnumDescriptorProto;
          }

          else
          {
            swift_beginAccess();
            v12 = *(a4 + 416);
            v13 = sub_2686169A4();
            v14 = a1 + 88;
            v15 = &type metadata for Google_Protobuf_ServiceDescriptorProto;
          }

LABEL_5:
          v16 = v11;
          v12(v14, v15, v13, a3, a4);
LABEL_6:
          v11 = v16;
          swift_endAccess();
          goto LABEL_7;
        }

        switch(result)
        {
          case 1:
            swift_beginAccess();
            v17 = *(a4 + 344);
            v18 = a1 + 16;
LABEL_30:
            v16 = v11;
            v17(v18, a3, a4);
            goto LABEL_6;
          case 2:
            swift_beginAccess();
            v17 = *(a4 + 344);
            v18 = a1 + 32;
            goto LABEL_30;
          case 3:
            swift_beginAccess();
            v16 = v11;
            (*(a4 + 352))(a1 + 48, a3, a4);
            goto LABEL_6;
        }
      }

LABEL_7:
      result = v8(a3, a4);
    }
  }

  return result;
}

uint64_t sub_2685F25F4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (a1[3])
  {
    MEMORY[0x26D61D8F0](1);

    sub_268689A24();
  }

  swift_beginAccess();
  if (a1[5])
  {
    MEMORY[0x26D61D8F0](2);

    sub_268689A24();
  }

  swift_beginAccess();
  v5 = a1[6];
  if (*(v5 + 16))
  {
    MEMORY[0x26D61D8F0](3);
    MEMORY[0x26D61D8F0](*(v5 + 16));
    v6 = *(v5 + 16);
    if (v6)
    {

      v7 = v5 + 40;
      do
      {

        sub_268689A24();

        v7 += 16;
        --v6;
      }

      while (v6);
    }
  }

  swift_beginAccess();
  if (!*(a1[9] + 16) || (v8 = , sub_2685DBA60(v8, 4, sub_2685F51C0), result = , !v2))
  {
    swift_beginAccess();
    if (!*(a1[10] + 16) || (v10 = , sub_2685DBA60(v10, 5, sub_2685FC0D8), result = , !v2))
    {
      swift_beginAccess();
      if (!*(a1[11] + 16) || (v11 = , sub_2685DAF64(v11, 6), result = , !v2))
      {
        swift_beginAccess();
        if (!*(a1[12] + 16) || (v12 = , sub_2685DBA60(v12, 7, sub_2685F8ADC), result = , !v2))
        {
          swift_beginAccess();
          v13 = a1[15];
          if (!v13)
          {
LABEL_22:
            swift_beginAccess();
            v22 = a1[17];
            if (v22)
            {
              v24 = a1[18];
              v23 = a1[19];
              MEMORY[0x26D61D8F0](9);

              sub_2685BA80C(v24, v23);
              sub_2685DD548(a2, v22, v24, v23);
              sub_268601BC8(v22, v24, v23);
            }

            swift_beginAccess();
            v25 = a1[7];
            if (*(v25 + 16))
            {
              MEMORY[0x26D61D8F0](10);
              MEMORY[0x26D61D8F0](*(v25 + 16));
              v26 = *(v25 + 16);
              if (v26)
              {
                v27 = v25 + 32;
                do
                {
                  v27 += 4;
                  sub_268689EC4();
                  --v26;
                }

                while (v26);
              }
            }

            swift_beginAccess();
            v28 = a1[8];
            if (*(v28 + 16))
            {
              MEMORY[0x26D61D8F0](11);
              MEMORY[0x26D61D8F0](*(v28 + 16));
              v29 = *(v28 + 16);
              if (v29)
              {
                v30 = v28 + 32;
                do
                {
                  v30 += 4;
                  sub_268689EC4();
                  --v29;
                }

                while (v29);
              }
            }

            result = swift_beginAccess();
            if (a1[21])
            {
              MEMORY[0x26D61D8F0](12);

              sub_268689A24();
            }

            return result;
          }

          v14 = a1[13];
          v15 = a1[14];
          v16 = a1[16];
          MEMORY[0x26D61D8F0](8);
          v17 = *(a2 + 48);
          v36 = *(a2 + 32);
          v37 = v17;
          v38 = *(a2 + 64);
          v18 = *(a2 + 16);
          v34 = *a2;
          v35 = v18;
          sub_2685BA80C(v14, v15);

          sub_268602B88(v19, &v34, v14, v15, v13);
          if (v2)
          {
            MEMORY[0x26D61DC90](v2);
LABEL_21:
            sub_268601B34(v14, v15, v13, v16);
            v20 = v37;
            *(a2 + 32) = v36;
            *(a2 + 48) = v20;
            *(a2 + 64) = v38;
            v21 = v35;
            *a2 = v34;
            *(a2 + 16) = v21;
            goto LABEL_22;
          }

          v31 = v15 >> 62;
          if ((v15 >> 62) > 1)
          {
            if (v31 != 2)
            {
              goto LABEL_21;
            }

            v32 = *(v14 + 16);
            v33 = *(v14 + 24);
          }

          else
          {
            if (!v31)
            {
              if ((v15 & 0xFF000000000000) == 0)
              {
                goto LABEL_21;
              }

              goto LABEL_43;
            }

            v32 = v14;
            v33 = v14 >> 32;
          }

          if (v32 == v33)
          {
            goto LABEL_21;
          }

LABEL_43:
          sub_268689844();
          goto LABEL_21;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2685F2AE4(void *a1, char **a2)
{
  swift_beginAccess();
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[2];

    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v7);
    sub_2685B43A4(v6, v5);

    v8 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
      *a2 = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_2685B3F48((v10 > 1), v11 + 1, 1, v8);
      *a2 = v8;
    }

    *(v8 + 2) = v11 + 1;
    v8[v11 + 32] = 10;
  }

  swift_beginAccess();
  v12 = a1[5];
  if (v12)
  {
    v13 = a1[4];

    sub_2685B301C(2);
    sub_2685B403C(": ", 2, v14);
    sub_2685B43A4(v13, v12);

    v15 = *a2;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v15;
    if ((v16 & 1) == 0)
    {
      v15 = sub_2685B3F48(0, *(v15 + 2) + 1, 1, v15);
      *a2 = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_2685B3F48((v17 > 1), v18 + 1, 1, v15);
      *a2 = v15;
    }

    *(v15 + 2) = v18 + 1;
    v15[v18 + 32] = 10;
  }

  swift_beginAccess();
  if (*(a1[6] + 16))
  {

    sub_2685B530C(v19, 3);
    if (v2)
    {
    }
  }

  swift_beginAccess();
  if (!*(a1[9] + 16) || (v21 = , sub_26867719C(v21, 4), result = , !v2))
  {
    swift_beginAccess();
    if (!*(a1[10] + 16) || (v22 = , sub_2686770BC(v22, 5), result = , !v2))
    {
      swift_beginAccess();
      if (!*(a1[11] + 16) || (v23 = , sub_26867702C(v23, 6), result = , !v2))
      {
        swift_beginAccess();
        if (!*(a1[12] + 16) || (v24 = , sub_268676FE4(v24, 7), result = , !v2))
        {
          swift_beginAccess();
          v25 = a1[15];
          if (!v25 || (v26 = a1[16], v28 = a1[13], v27 = a1[14], sub_2685BA80C(v28, v27), , , sub_268672328(v28, v27, v25, v26, 8), result = sub_268601B34(v28, v27, v25, v26), !v2))
          {
            swift_beginAccess();
            v29 = a1[17];
            if (!v29 || (v31 = a1[18], v30 = a1[19], , sub_2685BA80C(v31, v30), sub_268671F4C(v29, v31, v30, 9), result = sub_268601BC8(v29, v31, v30), !v2))
            {
              swift_beginAccess();
              if (!*(a1[7] + 16) || (v32 = , sub_2685B9988(v32, 10), result = , !v2))
              {
                swift_beginAccess();
                if (!*(a1[8] + 16) || (v33 = , sub_2685B9988(v33, 11), result = , !v2))
                {
                  result = swift_beginAccess();
                  v34 = a1[21];
                  if (v34)
                  {
                    v35 = a1[20];

                    sub_2685B301C(12);
                    sub_2685B403C(": ", 2, v36);
                    sub_2685B43A4(v35, v34);

                    v37 = *a2;
                    result = swift_isUniquelyReferenced_nonNull_native();
                    *a2 = v37;
                    if ((result & 1) == 0)
                    {
                      result = sub_2685B3F48(0, *(v37 + 16) + 1, 1, v37);
                      v37 = result;
                      *a2 = result;
                    }

                    v39 = *(v37 + 16);
                    v38 = *(v37 + 24);
                    if (v39 >= v38 >> 1)
                    {
                      result = sub_2685B3F48((v38 > 1), v39 + 1, 1, v37);
                      v37 = result;
                      *a2 = result;
                    }

                    *(v37 + 16) = v39 + 1;
                    *(v37 + v39 + 32) = 10;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2685F3060(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(a1 + 24);
  if (v9)
  {
    v10 = *(a1 + 16);
    v11 = a4[14];

    v11(v10, v9, 1, a3, a4);
    if (v5)
    {
    }
  }

  swift_beginAccess();
  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = *(a1 + 32);
    v14 = a4[14];

    v14(v13, v12, 2, a3, a4);
    if (v5)
    {
    }
  }

  swift_beginAccess();
  if (!*(*(a1 + 48) + 16))
  {
    goto LABEL_10;
  }

  v15 = a4[32];

  v15(v16, 3, a3, a4);
  if (v5)
  {
  }

LABEL_10:
  swift_beginAccess();
  if (*(*(a1 + 72) + 16))
  {
    v17 = a4[35];
    v18 = sub_268615B10();

    v17(v19, 4, &type metadata for Google_Protobuf_DescriptorProto, v18, a3, a4);
    if (v5)
    {
    }
  }

  swift_beginAccess();
  if (!*(*(a1 + 80) + 16) || (v21 = a4[35], v22 = sub_2686164AC(), v23 = , v21(v23, 5, &type metadata for Google_Protobuf_EnumDescriptorProto, v22, a3, a4), result = , !v5))
  {
    swift_beginAccess();
    if (!*(*(a1 + 88) + 16) || (v24 = a4[35], v25 = sub_2686169A4(), v26 = , v24(v26, 6, &type metadata for Google_Protobuf_ServiceDescriptorProto, v25, a3, a4), result = , !v5))
    {
      swift_beginAccess();
      if (!*(*(a1 + 96) + 16) || (v27 = a4[35], v28 = sub_26861615C(), v29 = , v27(v29, 7, &type metadata for Google_Protobuf_FieldDescriptorProto, v28, a3, a4), result = , !v5))
      {
        swift_beginAccess();
        v30 = *(a1 + 120);
        if (!v30 || (v31 = *(a1 + 128), v43 = *(a1 + 104), v44 = v30, v45 = v31, v32 = a4[17], v33 = sub_2686151BC(), result = v32(&v43, 8, &type metadata for Google_Protobuf_FileOptions, v33, a3, a4), !v5))
        {
          swift_beginAccess();
          if (!*(a1 + 136) || (v46 = *(a1 + 136), v47 = *(a1 + 144), v34 = a4[17], v35 = sub_268617A3C(), result = v34(&v46, 9, &type metadata for Google_Protobuf_SourceCodeInfo, v35, a3, a4), !v5))
          {
            swift_beginAccess();
            if (!*(*(a1 + 56) + 16) || (v36 = a4[21], v37 = , v36(v37, 10, a3, a4), result = , !v5))
            {
              swift_beginAccess();
              if (!*(*(a1 + 64) + 16) || (v38 = a4[21], v39 = , v38(v39, 11, a3, a4), result = , !v5))
              {
                result = swift_beginAccess();
                v40 = *(a1 + 168);
                if (v40)
                {
                  v41 = *(a1 + 160);
                  v42 = a4[14];

                  v42(v41, v40, 12, a3, a4);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2685F35C0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = v4 == a2[2] && v5 == v6;
    if (!v7 && (sub_268689E14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  swift_beginAccess();
  v8 = a1[4];
  v9 = a1[5];
  swift_beginAccess();
  v10 = a2[5];
  if (v9)
  {
    if (!v10 || (v8 != a2[4] || v9 != v10) && (sub_268689E14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  swift_beginAccess();
  v11 = a1[6];
  swift_beginAccess();
  if ((sub_26860EBDC(v11, a2[6]) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v12 = a1[7];
  swift_beginAccess();
  if ((sub_26860E058(v12, a2[7]) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v13 = a1[8];
  swift_beginAccess();
  if ((sub_26860E058(v13, a2[8]) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v14 = a1[9];
  swift_beginAccess();
  v15 = a2[9];

  v16 = sub_2686123CC(v14, v15, sub_2685F639C);

  if ((v16 & 1) == 0)
  {
    goto LABEL_49;
  }

  swift_beginAccess();
  v17 = a1[10];
  swift_beginAccess();
  v18 = a2[10];

  v19 = sub_2686123CC(v17, v18, sub_2685FC864);

  if ((v19 & 1) == 0)
  {
    goto LABEL_49;
  }

  swift_beginAccess();
  v20 = a1[11];
  swift_beginAccess();
  v21 = a2[11];

  v22 = sub_2686123CC(v20, v21, sub_2685FF76C);

  if ((v22 & 1) == 0)
  {
    goto LABEL_49;
  }

  swift_beginAccess();
  v23 = a1[12];
  swift_beginAccess();
  v24 = a2[12];

  v25 = sub_2686123CC(v23, v24, sub_2685F9A70);

  if ((v25 & 1) == 0)
  {
    goto LABEL_49;
  }

  swift_beginAccess();
  v27 = a1[13];
  v26 = a1[14];
  v29 = a1[15];
  v28 = a1[16];
  swift_beginAccess();
  v31 = a2[13];
  v30 = a2[14];
  v33 = a2[15];
  v32 = a2[16];
  if (v29)
  {
    v51 = v27;
    v52 = v26;
    v53 = v29;
    v54 = v28;
    if (v33)
    {
      v47 = v31;
      v48 = v30;
      v49 = v33;
      v50 = v32;
      sub_268601AE8(v27, v26, v29, v28);
      sub_268601AE8(v31, v30, v33, v32);
      sub_268601AE8(v27, v26, v29, v28);
      v34 = _s20SiriOntologyProtobuf07Google_C12_FileOptionsV2eeoiySbAC_ACtFZ_0(&v51, &v47);
      sub_2685B593C(v47, v48);

      sub_2685B593C(v51, v52);

      sub_268601B34(v27, v26, v29, v28);
      if ((v34 & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_33;
    }

    sub_268601AE8(v27, v26, v29, v28);
    sub_268601AE8(v31, v30, 0, v32);
    sub_268601AE8(v27, v26, v29, v28);
    sub_268601AE8(v31, v30, 0, v32);
    sub_268601AE8(v27, v26, v29, v28);

    sub_268601B34(v31, v30, 0, v32);
    sub_268601B34(v27, v26, v29, v28);
    sub_2685B593C(v27, v26);

LABEL_31:
    sub_268601B34(v27, v26, v29, v28);
    sub_268601B34(v31, v30, v33, v32);
    return 0;
  }

  sub_268601AE8(v27, v26, 0, v28);
  if (v33)
  {
    sub_268601AE8(v31, v30, v33, v32);

    goto LABEL_31;
  }

  sub_268601AE8(v31, v30, 0, v32);
  sub_268601B34(v27, v26, 0, v28);
LABEL_33:
  swift_beginAccess();
  v36 = a1[17];
  v35 = a1[18];
  v37 = a1[19];
  swift_beginAccess();
  v39 = a2[17];
  v38 = a2[18];
  v40 = a2[19];
  if (v36)
  {
    if (v39)
    {
      sub_268601B80(v36, v35, v37);
      sub_268601B80(v39, v38, v40);
      sub_268601B80(v36, v35, v37);
      sub_268601B80(v39, v38, v40);
      sub_268601B80(v36, v35, v37);
      if ((sub_26860E688(v36, v39) & 1) == 0)
      {
        sub_268601BC8(v39, v38, v40);
        sub_268601BC8(v36, v35, v37);
        sub_268601BC8(v39, v38, v40);

        sub_2685B593C(v35, v37);
        sub_268601BC8(v36, v35, v37);
        goto LABEL_49;
      }

      sub_2685BA80C(v35, v37);
      sub_2685BA80C(v38, v40);
      v41 = sub_2686131DC(v35, v37, v38, v40);
      sub_2685B593C(v38, v40);
      sub_2685B593C(v35, v37);
      sub_268601BC8(v39, v38, v40);
      sub_268601BC8(v36, v35, v37);
      sub_268601BC8(v39, v38, v40);

      sub_2685B593C(v35, v37);
      sub_268601BC8(v36, v35, v37);
      if (!v41)
      {
        goto LABEL_49;
      }

LABEL_44:
      swift_beginAccess();
      v42 = a1[20];
      v43 = a1[21];
      swift_beginAccess();
      v44 = a2[21];
      if (!v43)
      {

        if (v44)
        {

          return 0;
        }

        return 1;
      }

      if (v44)
      {
        if (v42 == a2[20] && v43 == v44)
        {
        }

        else
        {
          v46 = sub_268689E14();

          if ((v46 & 1) == 0)
          {
            return 0;
          }
        }

        return 1;
      }

LABEL_49:

      return 0;
    }

    sub_268601B80(v36, v35, v37);
    sub_268601B80(0, v38, v40);
    sub_268601B80(v36, v35, v37);
    sub_268601B80(0, v38, v40);
    sub_268601B80(v36, v35, v37);

    sub_268601BC8(0, v38, v40);
    sub_268601BC8(v36, v35, v37);

    sub_2685B593C(v35, v37);
  }

  else
  {
    sub_268601B80(0, v35, v37);
    if (!v39)
    {
      sub_268601B80(0, v38, v40);
      sub_268601BC8(0, v35, v37);
      goto LABEL_44;
    }

    sub_268601B80(v39, v38, v40);
  }

  sub_268601BC8(v36, v35, v37);
  sub_268601BC8(v39, v38, v40);
  return 0;
}

uint64_t sub_2685F3FD0@<X0>(void *a1@<X8>)
{
  if (qword_28028BC50 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C430;
  v2 = qword_28028C438;
  v3 = unk_28028C440;
  *a1 = qword_28028C428;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_DescriptorProto._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BC60 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C458;
  v2 = qword_28028C460;
  v3 = unk_28028C468;
  *a1 = qword_28028C450;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

double sub_2685F41BC()
{
  type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 32) = MEMORY[0x277D84F90];
  *(v0 + 40) = v1;
  *(v0 + 48) = v1;
  *(v0 + 56) = v1;
  *(v0 + 64) = v1;
  *(v0 + 72) = v1;
  result = 0.0;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  *(v0 + 120) = v1;
  *(v0 + 128) = v1;
  qword_28028C470 = v0;
  return result;
}

uint64_t sub_2685F4214(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v4 = MEMORY[0x277D84F90];
  *(v1 + 32) = MEMORY[0x277D84F90];
  *(v1 + 40) = v4;
  *(v1 + 48) = v4;
  *(v1 + 56) = v4;
  *(v1 + 64) = v4;
  *(v1 + 72) = v4;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
  *(v1 + 80) = 0u;
  *(v1 + 120) = v4;
  *(v1 + 128) = v4;
  swift_beginAccess();
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v6;
  *(v1 + 24) = v5;
  swift_beginAccess();
  v7 = *(a1 + 32);
  swift_beginAccess();
  *(v2 + 32) = v7;

  swift_beginAccess();
  v8 = *(a1 + 40);
  swift_beginAccess();
  *(v2 + 40) = v8;

  swift_beginAccess();
  v9 = *(a1 + 48);
  swift_beginAccess();
  *(v2 + 48) = v9;

  swift_beginAccess();
  v10 = *(a1 + 56);
  swift_beginAccess();
  *(v2 + 56) = v10;

  swift_beginAccess();
  v11 = *(a1 + 64);
  swift_beginAccess();
  *(v2 + 64) = v11;

  swift_beginAccess();
  v12 = *(a1 + 72);
  swift_beginAccess();
  *(v2 + 72) = v12;

  swift_beginAccess();
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  v17 = *(a1 + 112);
  swift_beginAccess();
  v18 = *(v2 + 80);
  v19 = *(v2 + 88);
  v20 = *(v2 + 96);
  v24 = *(v2 + 104);
  *(v2 + 80) = v13;
  *(v2 + 88) = v14;
  *(v2 + 96) = v15;
  *(v2 + 104) = v16;
  *(v2 + 112) = v17;
  sub_268601C34(v13, v14, v15, v16);
  sub_268601C90(v18, v19, v20, v24);
  swift_beginAccess();
  v21 = *(a1 + 120);
  swift_beginAccess();
  *(v2 + 120) = v21;

  swift_beginAccess();
  v22 = *(a1 + 128);

  swift_beginAccess();
  *(v2 + 128) = v22;

  return v2;
}

uint64_t sub_2685F45CC()
{

  sub_268601C90(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return v0;
}

uint64_t sub_2685F463C()
{
  sub_2685F45CC();

  return swift_deallocClassInstance();
}

uint64_t sub_2685F4674(void *a1)
{
  swift_beginAccess();

  v4 = sub_2685F10F0(v3, &type metadata for Google_Protobuf_FieldDescriptorProto, sub_26861615C);

  v5 = v4 + 32;
  v6 = -*(v4 + 16);
  v7 = -1;
  while (v6 + v7 != -1)
  {
    if (++v7 >= *(v4 + 16))
    {
      __break(1u);
      return 1;
    }

    v8 = v5 + 40;
    sub_2685B1724(v5, v65);
    v1 = v66;
    v9 = v67;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    v10 = (*(v9 + 32))(v1, v9);
    __swift_destroy_boxed_opaque_existential_1(v65);
    v5 = v8;
    if ((v10 & 1) == 0)
    {
LABEL_30:

      return 0;
    }
  }

  swift_beginAccess();

  v12 = sub_2685F10F0(v11, &type metadata for Google_Protobuf_FieldDescriptorProto, sub_26861615C);

  v13 = v12 + 32;
  v14 = -*(v12 + 16);
  v15 = -1;
  while (v14 + v15 != -1)
  {
    if (++v15 >= *(v12 + 16))
    {
      __break(1u);
LABEL_45:

      sub_268601C90(v1, v14, v64, v12);
      return 1;
    }

    v16 = v13 + 40;
    sub_2685B1724(v13, v65);
    v1 = v66;
    v17 = v67;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    v18 = (*(v17 + 32))(v1, v17);
    __swift_destroy_boxed_opaque_existential_1(v65);
    v13 = v16;
    if ((v18 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  swift_beginAccess();

  v20 = sub_2685F10F0(v19, &type metadata for Google_Protobuf_DescriptorProto, sub_268615B10);

  result = v20 + 32;
  v22 = -*(v20 + 16);
  v23 = -1;
  while (v22 + v23 != -1)
  {
    if (++v23 >= *(v20 + 16))
    {
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

    v24 = result + 40;
    sub_2685B1724(result, v65);
    v25 = v66;
    v26 = v67;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    v27 = (*(v26 + 32))(v25, v26);
    __swift_destroy_boxed_opaque_existential_1(v65);
    result = v24;
    if ((v27 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  swift_beginAccess();

  v29 = sub_2685F10F0(v28, &type metadata for Google_Protobuf_EnumDescriptorProto, sub_2686164AC);

  result = v29 + 32;
  v30 = -*(v29 + 16);
  v31 = -1;
  while (v30 + v31 != -1)
  {
    if (++v31 >= *(v29 + 16))
    {
      goto LABEL_47;
    }

    v32 = result + 40;
    sub_2685B1724(result, v65);
    v33 = v66;
    v34 = v67;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    v35 = (*(v34 + 32))(v33, v34);
    __swift_destroy_boxed_opaque_existential_1(v65);
    result = v32;
    if ((v35 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  swift_beginAccess();

  v37 = sub_2685F10F0(v36, &type metadata for Google_Protobuf_DescriptorProto.ExtensionRange, sub_268615CB8);

  result = v37 + 32;
  v38 = -*(v37 + 16);
  v39 = -1;
  while (v38 + v39 != -1)
  {
    if (++v39 >= *(v37 + 16))
    {
      goto LABEL_48;
    }

    v40 = result + 40;
    sub_2685B1724(result, v65);
    v41 = v66;
    v42 = v67;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    v43 = (*(v42 + 32))(v41, v42);
    __swift_destroy_boxed_opaque_existential_1(v65);
    result = v40;
    if ((v43 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  swift_beginAccess();

  v45 = sub_2685F10F0(v44, &type metadata for Google_Protobuf_OneofDescriptorProto, sub_268616304);

  result = v45 + 32;
  v46 = -*(v45 + 16);
  v47 = -1;
  while (v46 + v47 != -1)
  {
    if (++v47 >= *(v45 + 16))
    {
      goto LABEL_49;
    }

    v48 = result + 40;
    sub_2685B1724(result, v65);
    v49 = v66;
    v50 = v67;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    v51 = (*(v50 + 32))(v49, v50);
    __swift_destroy_boxed_opaque_existential_1(v65);
    result = v48;
    if ((v51 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  swift_beginAccess();
  v1 = a1[10];
  if (v1)
  {
    v14 = a1[11];
    v52 = a1[12];
    v12 = a1[13];
    v65[0] = v12;

    sub_2685BA80C(v14, v52);

    if (ExtensionFieldValueSet.isInitialized.getter())
    {
      v64 = v52;
      v53 = sub_2685F0E50(v1);
      result = v53 + 32;
      v54 = -*(v53 + 16);
      v55 = -1;
      while (v54 + v55 != -1)
      {
        if (++v55 >= *(v53 + 16))
        {
          goto LABEL_50;
        }

        v56 = result + 40;
        sub_2685B1724(result, v65);
        v57 = v66;
        v58 = v67;
        __swift_project_boxed_opaque_existential_1(v65, v66);
        v59 = (*(v58 + 32))(v57, v58);
        __swift_destroy_boxed_opaque_existential_1(v65);
        result = v56;
        if ((v59 & 1) == 0)
        {

          v60 = v1;
          v61 = v14;
          v62 = v64;
          v63 = v12;
          goto LABEL_43;
        }
      }

      goto LABEL_45;
    }

    v60 = v1;
    v61 = v14;
    v62 = v52;
    v63 = v12;
LABEL_43:
    sub_268601C90(v60, v61, v62, v63);
    return 0;
  }

  return 1;
}

BOOL Google_Protobuf_MessageOptions.isInitialized.getter()
{
  v1 = *v0;
  if ((ExtensionFieldValueSet.isInitialized.getter() & 1) == 0)
  {
    return 0;
  }

  v2 = sub_2685F0E50(v1);
  v3 = _s20SiriOntologyProtobuf8InternalO17areAllInitializedySbSayAA7Message_pGFZ_0(v2);

  return v3;
}

uint64_t sub_2685F4DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  result = v8(a3, a4);
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result != 6)
          {
            swift_beginAccess();
            v16 = *(a4 + 408);
            v17 = sub_268614944();
            v16(a1 + 80, &type metadata for Google_Protobuf_MessageOptions, v17, a3, a4);
            goto LABEL_6;
          }

          v11 = v4;
          swift_beginAccess();
          v12 = *(a4 + 416);
          v13 = sub_26861615C();
          v14 = a1 + 40;
          v15 = &type metadata for Google_Protobuf_FieldDescriptorProto;
          goto LABEL_5;
        }

        switch(result)
        {
          case 8:
            v11 = v4;
            swift_beginAccess();
            v12 = *(a4 + 416);
            v13 = sub_268616304();
            v14 = a1 + 72;
            v15 = &type metadata for Google_Protobuf_OneofDescriptorProto;
LABEL_5:
            v4 = v11;
            v12(v14, v15, v13, a3, a4);
LABEL_6:
            swift_endAccess();
            break;
          case 9:
            v11 = v4;
            swift_beginAccess();
            v12 = *(a4 + 416);
            v13 = sub_268615E60();
            v14 = a1 + 120;
            v15 = &type metadata for Google_Protobuf_DescriptorProto.ReservedRange;
            goto LABEL_5;
          case 10:
            swift_beginAccess();
            (*(a4 + 352))(a1 + 128, a3, a4);
            goto LABEL_6;
        }
      }

      else
      {
        if (result > 2)
        {
          if (result == 3)
          {
            v11 = v4;
            swift_beginAccess();
            v12 = *(a4 + 416);
            v13 = sub_268615B10();
            v14 = a1 + 48;
            v15 = &type metadata for Google_Protobuf_DescriptorProto;
          }

          else
          {
            v11 = v4;
            if (result == 4)
            {
              swift_beginAccess();
              v12 = *(a4 + 416);
              v13 = sub_2686164AC();
              v14 = a1 + 56;
              v15 = &type metadata for Google_Protobuf_EnumDescriptorProto;
            }

            else
            {
              swift_beginAccess();
              v12 = *(a4 + 416);
              v13 = sub_268615CB8();
              v14 = a1 + 64;
              v15 = &type metadata for Google_Protobuf_DescriptorProto.ExtensionRange;
            }
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          swift_beginAccess();
          (*(a4 + 344))(a1 + 16, a3, a4);
          goto LABEL_6;
        }

        if (result == 2)
        {
          v11 = v4;
          swift_beginAccess();
          v12 = *(a4 + 416);
          v13 = sub_26861615C();
          v14 = a1 + 32;
          v15 = &type metadata for Google_Protobuf_FieldDescriptorProto;
          goto LABEL_5;
        }
      }

      result = v8(a3, a4);
    }
  }

  return result;
}

uint64_t sub_2685F51C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  if (*(a1 + 24))
  {
    MEMORY[0x26D61D8F0](1);

    sub_268689A24();
  }

  swift_beginAccess();
  if (!*(*(a1 + 32) + 16) || (v6 = , sub_2685DBA60(v6, 2, sub_2685F8ADC), result = , !v2))
  {
    swift_beginAccess();
    v8 = *(a1 + 48);
    if (*(v8 + 16))
    {
      MEMORY[0x26D61D8F0](3);
      v9 = *(v8 + 16);
      if (v9)
      {
        v80 = a1;

        v10 = v8 + 48;
        while (1)
        {
          v13 = *(v10 - 16);
          v14 = *(v10 - 8);
          v15 = *(a2 + 48);
          v109 = *(a2 + 32);
          v110 = v15;
          v111 = *(a2 + 64);
          v16 = *(a2 + 16);
          v107 = *a2;
          v108 = v16;
          sub_2685BA80C(v13, v14);

          sub_2685F51C0(v17, &v107);
          if (v3)
          {
            MEMORY[0x26D61DC90](v3);
            v3 = 0;
          }

          else
          {
            v18 = v14 >> 62;
            if ((v14 >> 62) > 1)
            {
              if (v18 != 2)
              {
                goto LABEL_9;
              }

              v19 = *(v13 + 16);
              v20 = *(v13 + 24);
            }

            else
            {
              if (!v18)
              {
                if ((v14 & 0xFF000000000000) == 0)
                {
                  goto LABEL_9;
                }

LABEL_19:
                sub_268689844();
                goto LABEL_9;
              }

              v19 = v13;
              v20 = v13 >> 32;
            }

            if (v19 != v20)
            {
              goto LABEL_19;
            }
          }

LABEL_9:
          v11 = v110;
          *(a2 + 32) = v109;
          *(a2 + 48) = v11;
          *(a2 + 64) = v111;
          v12 = v108;
          *a2 = v107;
          *(a2 + 16) = v12;
          sub_2685B593C(v13, v14);

          v10 += 24;
          if (!--v9)
          {

            a1 = v80;
            break;
          }
        }
      }
    }

    swift_beginAccess();
    if (!*(*(a1 + 56) + 16) || (v21 = , sub_2685DBA60(v21, 4, sub_2685FC0D8), result = , !v3))
    {
      swift_beginAccess();
      v22 = *(a1 + 64);
      v23 = *(v22 + 16);
      v117 = a2;
      if (v23)
      {
        MEMORY[0x26D61D8F0](5);
        v24 = *(v22 + 16);
        if (v24)
        {
          v78 = v3;
          v81 = a1;
          v25 = *(a2 + 48);
          v104 = *(a2 + 32);
          v105 = v25;
          v106 = *(a2 + 64);
          v26 = *(a2 + 16);
          v102 = *a2;
          v103 = v26;

          v27 = v24 - 1;
          for (i = (v22 + 48); ; i += 3)
          {
            v29 = *(i - 2);
            v30 = *(i - 1);
            v31 = *i;
            v99 = v104;
            v100 = v105;
            v101 = v106;
            v97 = v102;
            v98 = v103;
            swift_beginAccess();
            if ((*(v31 + 20) & 1) == 0)
            {
              v32 = *(v31 + 16);
              MEMORY[0x26D61D8F0](1);
              MEMORY[0x26D61D920](v32);
            }

            swift_beginAccess();
            if ((*(v31 + 28) & 1) == 0)
            {
              v33 = *(v31 + 24);
              MEMORY[0x26D61D8F0](2);
              MEMORY[0x26D61D920](v33);
            }

            swift_beginAccess();
            v34 = *(v31 + 32);
            if (v34)
            {
              v84 = v27;
              v35 = *(v31 + 48);
              v36 = *(v31 + 56);
              v37 = i;
              v38 = *(v31 + 40);
              MEMORY[0x26D61D8F0](3);
              sub_2685BA80C(v29, v30);

              sub_268601C34(v34, v38, v35, v36);
              sub_2685DCFC0(&v97, v34, v38, v35, v36);
              v39 = v38;
              i = v37;
              v40 = v35;
              v27 = v84;
              sub_268601C90(v34, v39, v40, v36);
            }

            else
            {
              sub_2685BA80C(v29, v30);
            }

            v41 = v30 >> 62;
            a2 = v117;
            if ((v30 >> 62) > 1)
            {
              if (v41 == 2 && *(v29 + 16) != *(v29 + 24))
              {
                goto LABEL_41;
              }
            }

            else
            {
              if (v41)
              {
                if (v29 == v29 >> 32)
                {
                  goto LABEL_42;
                }

LABEL_41:
                sub_268689844();
                goto LABEL_42;
              }

              if ((v30 & 0xFF000000000000) != 0)
              {
                goto LABEL_41;
              }
            }

LABEL_42:
            sub_2685B593C(v29, v30);

            if (!v27)
            {
              v42 = v100;
              *(a2 + 32) = v99;
              *(a2 + 48) = v42;
              *(a2 + 64) = v101;
              v43 = v98;
              *a2 = v97;
              *(a2 + 16) = v43;

              v3 = v78;
              a1 = v81;
              break;
            }

            v104 = v99;
            v105 = v100;
            v106 = v101;
            v102 = v97;
            v103 = v98;
            --v27;
          }
        }
      }

      swift_beginAccess();
      if (!*(*(a1 + 40) + 16) || (v44 = , sub_2685DBA60(v44, 6, sub_2685F8ADC), result = , !v3))
      {
        swift_beginAccess();
        v45 = *(a1 + 80);
        if (v45)
        {
          v46 = v3;
          v47 = *(a1 + 88);
          v48 = *(a1 + 96);
          v49 = *(a1 + 104);
          v50 = *(a1 + 112);
          v112 = *(a1 + 80);
          v113 = v47;
          v114 = v48;
          v115 = v49;
          v116 = v50;
          MEMORY[0x26D61D8F0](7);
          v51 = *(a2 + 48);
          v89 = *(a2 + 32);
          v90 = v51;
          v91 = *(a2 + 64);
          v52 = *(a2 + 16);
          v87 = *a2;
          v88 = v52;
          *&v102 = v45;
          *(&v102 + 1) = v47;
          *&v103 = v48;
          *(&v103 + 1) = v49;
          LODWORD(v104) = v50;
          sub_268601CEC(&v102, v86);
          sub_26860555C(&v87);
          if (v46)
          {
            MEMORY[0x26D61DC90](v46);
          }

          sub_268601C90(v45, v47, v48, v49);
          v53 = v90;
          a2 = v117;
          *(v117 + 32) = v89;
          *(a2 + 48) = v53;
          *(a2 + 64) = v91;
          v54 = v88;
          *a2 = v87;
          *(a2 + 16) = v54;
          v3 = 0;
        }

        swift_beginAccess();
        v55 = *(a1 + 72);
        if (*(v55 + 16))
        {
          MEMORY[0x26D61D8F0](8);
          v56 = *(v55 + 16);
          if (v56)
          {
            v79 = v3;
            v82 = a1;
            v57 = *(a2 + 48);
            v104 = *(a2 + 32);
            v105 = v57;
            v106 = *(a2 + 64);
            v58 = *(a2 + 16);
            v102 = *a2;
            v103 = v58;

            v59 = v56 - 1;
            for (j = (v55 + 48); ; j += 3)
            {
              v61 = *(j - 2);
              v62 = *(j - 1);
              v63 = *j;
              v94 = v104;
              v95 = v105;
              v96 = v106;
              v92 = v102;
              v93 = v103;
              swift_beginAccess();
              if (v63[3])
              {
                MEMORY[0x26D61D8F0](1);
                sub_2685BA80C(v61, v62);

                sub_268689A24();
              }

              else
              {
                sub_2685BA80C(v61, v62);
              }

              swift_beginAccess();
              v64 = v63[4];
              if (v64)
              {
                v83 = j;
                v85 = v59;
                v66 = v63[6];
                v65 = v63[7];
                v67 = v63[5];
                MEMORY[0x26D61D8F0](2);

                sub_2685BA80C(v67, v66);

                sub_2685DCFC0(&v92, v64, v67, v66, v65);
                v68 = v67;
                v69 = v66;
                j = v83;
                v59 = v85;
                sub_268601C90(v64, v68, v69, v65);
              }

              v70 = v62 >> 62;
              if ((v62 >> 62) > 1)
              {
                v71 = v117;
                if (v70 == 2 && *(v61 + 16) != *(v61 + 24))
                {
                  goto LABEL_67;
                }
              }

              else
              {
                v71 = v117;
                if (v70)
                {
                  if (v61 == v61 >> 32)
                  {
                    goto LABEL_68;
                  }

LABEL_67:
                  sub_268689844();
                  goto LABEL_68;
                }

                if ((v62 & 0xFF000000000000) != 0)
                {
                  goto LABEL_67;
                }
              }

LABEL_68:
              sub_2685B593C(v61, v62);

              if (!v59)
              {
                v72 = v95;
                *(v71 + 32) = v94;
                *(v71 + 48) = v72;
                *(v71 + 64) = v96;
                v73 = v93;
                *v71 = v92;
                *(v71 + 16) = v73;

                v3 = v79;
                a1 = v82;
                break;
              }

              v104 = v94;
              v105 = v95;
              v106 = v96;
              v102 = v92;
              v103 = v93;
              --v59;
            }
          }
        }

        swift_beginAccess();
        if (!*(*(a1 + 120) + 16) || (v74 = , sub_2685DBBD8(v74, 9), result = , !v3))
        {
          result = swift_beginAccess();
          v75 = *(a1 + 128);
          if (*(v75 + 16))
          {
            MEMORY[0x26D61D8F0](10);
            result = MEMORY[0x26D61D8F0](*(v75 + 16));
            v76 = *(v75 + 16);
            if (v76)
            {

              v77 = v75 + 40;
              do
              {

                sub_268689A24();

                v77 += 16;
                --v76;
              }

              while (v76);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2685F5AD0(uint64_t a1, char **a2)
{
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 16);

    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v7);
    sub_2685B43A4(v6, v5);

    v8 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
      *a2 = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_2685B3F48((v10 > 1), v11 + 1, 1, v8);
      *a2 = v8;
    }

    *(v8 + 2) = v11 + 1;
    v8[v11 + 32] = 10;
  }

  swift_beginAccess();
  if (*(*(a1 + 32) + 16))
  {

    sub_268676FE4(v12, 2);
    if (v2)
    {
    }
  }

  swift_beginAccess();
  if (!*(*(a1 + 48) + 16) || (v14 = , sub_26867719C(v14, 3), result = , !v2))
  {
    swift_beginAccess();
    if (!*(*(a1 + 56) + 16) || (v15 = , sub_2686770BC(v15, 4), result = , !v2))
    {
      swift_beginAccess();
      if (!*(*(a1 + 64) + 16) || (v16 = , sub_26867775C(v16, 5), result = , !v2))
      {
        swift_beginAccess();
        if (!*(*(a1 + 40) + 16) || (v17 = , sub_268676FE4(v17, 6), result = , !v2))
        {
          swift_beginAccess();
          v18 = *(a1 + 80);
          if (!v18 || (v19 = *(a1 + 112), v21 = *(a1 + 96), v20 = *(a1 + 104), v22 = *(a1 + 88), v29[0] = *(a1 + 80), v29[1] = v22, v29[2] = v21, v29[3] = v20, v30 = v19, v27[0] = v18, v27[1] = v22, v27[2] = v21, v27[3] = v20, v28 = v19, sub_268601CEC(v27, v26), sub_268673B30(v29, 7), result = sub_268601C90(v18, v22, v21, v20), !v2))
          {
            swift_beginAccess();
            if (!*(*(a1 + 72) + 16) || (v23 = , sub_268677714(v23, 8), result = , !v2))
            {
              swift_beginAccess();
              if (!*(*(a1 + 120) + 16) || (v24 = , sub_2686771E4(v24, 9), result = , !v2))
              {
                result = swift_beginAccess();
                if (*(*(a1 + 128) + 16))
                {

                  sub_2685B530C(v25, 10);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2685F5EAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(a1 + 24);
  if (v9)
  {
    v10 = *(a1 + 16);
    v11 = a4[14];

    v11(v10, v9, 1, a3, a4);
    if (v5)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 32) + 16))
  {
    v12 = a4[35];
    v13 = sub_26861615C();

    v12(v14, 2, &type metadata for Google_Protobuf_FieldDescriptorProto, v13, a3, a4);
    if (v5)
    {
    }
  }

  swift_beginAccess();
  if (!*(*(a1 + 48) + 16) || (v16 = a4[35], v17 = sub_268615B10(), v18 = , v16(v18, 3, &type metadata for Google_Protobuf_DescriptorProto, v17, a3, a4), result = , !v5))
  {
    swift_beginAccess();
    if (!*(*(a1 + 56) + 16) || (v19 = a4[35], v20 = sub_2686164AC(), v21 = , v19(v21, 4, &type metadata for Google_Protobuf_EnumDescriptorProto, v20, a3, a4), result = , !v5))
    {
      swift_beginAccess();
      if (!*(*(a1 + 64) + 16) || (v22 = a4[35], v23 = sub_268615CB8(), v24 = , v22(v24, 5, &type metadata for Google_Protobuf_DescriptorProto.ExtensionRange, v23, a3, a4), result = , !v5))
      {
        swift_beginAccess();
        if (!*(*(a1 + 40) + 16) || (v25 = a4[35], v26 = sub_26861615C(), v27 = , v25(v27, 6, &type metadata for Google_Protobuf_FieldDescriptorProto, v26, a3, a4), result = , !v5))
        {
          swift_beginAccess();
          if (!*(a1 + 80) || (v28 = *(a1 + 112), v29 = *(a1 + 104), v40 = *(a1 + 80), v41 = *(a1 + 88), v42 = v29, v43 = v28, v30 = a4[17], v31 = sub_268614944(), result = v30(&v40, 7, &type metadata for Google_Protobuf_MessageOptions, v31, a3, a4), !v5))
          {
            swift_beginAccess();
            if (!*(*(a1 + 72) + 16) || (v32 = a4[35], v33 = sub_268616304(), v34 = , v32(v34, 8, &type metadata for Google_Protobuf_OneofDescriptorProto, v33, a3, a4), result = , !v5))
            {
              swift_beginAccess();
              if (!*(*(a1 + 120) + 16) || (v35 = a4[35], v36 = sub_268615E60(), v37 = , v35(v37, 9, &type metadata for Google_Protobuf_DescriptorProto.ReservedRange, v36, a3, a4), result = , !v5))
              {
                result = swift_beginAccess();
                if (*(*(a1 + 128) + 16))
                {
                  v38 = a4[32];

                  v38(v39, 10, a3, a4);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2685F639C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_28;
    }

    v7 = v4 == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_268689E14() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v6)
  {
LABEL_28:
    v55 = 0;
    return v55 & 1;
  }

  swift_beginAccess();
  v8 = *(a1 + 32);
  swift_beginAccess();
  v9 = *(a2 + 32);

  v10 = sub_2686123CC(v8, v9, sub_2685F9A70);

  if ((v10 & 1) == 0)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v11 = *(a1 + 40);
  swift_beginAccess();
  v12 = *(a2 + 40);

  v13 = sub_2686123CC(v11, v12, sub_2685F9A70);

  if ((v13 & 1) == 0)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v14 = *(a1 + 48);
  swift_beginAccess();
  v15 = *(a2 + 48);

  v16 = sub_2686123CC(v14, v15, sub_2685F639C);

  if ((v16 & 1) == 0)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v17 = *(a1 + 56);
  swift_beginAccess();
  v18 = *(a2 + 56);

  v19 = sub_2686123CC(v17, v18, sub_2685FC864);

  if ((v19 & 1) == 0)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v20 = *(a1 + 64);
  swift_beginAccess();
  v21 = *(a2 + 64);

  v22 = sub_2686123CC(v20, v21, sub_2685F7450);

  if ((v22 & 1) == 0)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v23 = *(a1 + 72);
  swift_beginAccess();
  v24 = *(a2 + 72);

  v25 = sub_2686123CC(v23, v24, sub_2685FB14C);

  if ((v25 & 1) == 0)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v26 = *(a1 + 80);
  v27 = *(a1 + 88);
  v29 = *(a1 + 96);
  v28 = *(a1 + 104);
  v30 = *(a1 + 112);
  swift_beginAccess();
  v31 = v26;
  v33 = *(a2 + 80);
  v32 = *(a2 + 88);
  v34 = *(a2 + 96);
  v60 = v31;
  v61 = *(a2 + 104);
  v35 = *(a2 + 112);
  if (!v31)
  {
    v58 = *(a2 + 96);
    v37 = v27;
    v38 = v27;
    v39 = v29;
    v40 = v29;
    v41 = v28;
    sub_268601C34(0, v38, v40, v28);
    v42 = v33;
    v43 = v37;
    if (!v42)
    {
      sub_268601C34(0, v32, v58, v61);
      sub_268601C90(0, v37, v39, v28);
      goto LABEL_25;
    }

    v59 = v42;
    v44 = v32;
    v45 = v32;
    v46 = v58;
    v47 = v61;
    sub_268601C34(v42, v45, v58, v61);

    v48 = 0;
    goto LABEL_23;
  }

  *&v70 = v31;
  *(&v70 + 1) = v27;
  *&v71 = v29;
  *(&v71 + 1) = v28;
  v72 = v30;
  if (!v33)
  {
    v59 = 0;
    v57 = v27;
    v49 = v34;
    sub_268601C34(v31, v27, v29, v28);
    v44 = v32;
    v46 = v49;
    v47 = v61;
    sub_268601C34(0, v44, v49, v61);
    sub_268601C34(v60, v27, v29, v28);
    sub_268601C34(0, v44, v49, v61);
    v39 = v29;
    v50 = v29;
    v41 = v28;
    sub_268601C34(v60, v57, v50, v28);
    v48 = v60;

    sub_268601C90(0, v44, v49, v61);
    sub_268601C90(v60, v57, v39, v28);
    v67 = v70;
    v68 = v71;
    v69 = v72;
    sub_268601D24(&v67);
    v43 = v57;
LABEL_23:
    sub_268601C90(v48, v43, v39, v41);
    sub_268601C90(v59, v44, v46, v47);
    goto LABEL_28;
  }

  *&v62 = v33;
  *(&v62 + 1) = v32;
  *&v63 = v34;
  *(&v63 + 1) = v61;
  v64 = v35;
  sub_268601C34(v31, v27, v29, v28);
  sub_268601C34(v33, v32, v34, v61);
  sub_268601C34(v60, v27, v29, v28);
  v36 = _s20SiriOntologyProtobuf07Google_C15_MessageOptionsV2eeoiySbAC_ACtFZ_0(&v70, &v62);
  v65[0] = v62;
  v65[1] = v63;
  v66 = v64;
  sub_268601D24(v65);
  v67 = v70;
  v68 = v71;
  v69 = v72;
  sub_268601D24(&v67);
  sub_268601C90(v60, v27, v29, v28);
  if ((v36 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_25:
  swift_beginAccess();
  v51 = *(a1 + 120);
  swift_beginAccess();
  v52 = *(a2 + 120);

  v53 = sub_268611F48(v51, v52);

  if ((v53 & 1) == 0)
  {
LABEL_27:

    goto LABEL_28;
  }

  swift_beginAccess();
  v54 = *(a1 + 128);
  swift_beginAccess();
  v55 = sub_26860EBDC(v54, *(a2 + 128));

  return v55 & 1;
}

uint64_t sub_2685F6BB0@<X0>(void *a1@<X8>)
{
  if (qword_28028BC60 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C458;
  v2 = qword_28028C460;
  v3 = unk_28028C468;
  *a1 = qword_28028C450;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_DescriptorProto.ExtensionRange._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BC78 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C490;
  v2 = qword_28028C498;
  v3 = unk_28028C4A0;
  *a1 = qword_28028C488;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685F6DD8(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  *(v1 + 24) = 0;
  *(v1 + 28) = 1;
  *(v1 + 48) = 0u;
  *(v1 + 32) = 0u;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 20) = v4;
  swift_beginAccess();
  v5 = *(a1 + 24);
  LOBYTE(v3) = *(a1 + 28);
  swift_beginAccess();
  *(v1 + 24) = v5;
  *(v1 + 28) = v3;
  swift_beginAccess();
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  sub_268601C34(v6, v7, v8, v9);

  swift_beginAccess();
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 48) = v8;
  *(v1 + 56) = v9;
  sub_268601C90(v10, v11, v12, v13);
  return v1;
}

uint64_t sub_2685F6F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_268601C90(*(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_2685F6FB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4[2];
  result = v8(a3, a4);
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        v13 = v4;
        swift_beginAccess();
        v14 = a4[10];
        v15 = a1 + 24;
LABEL_13:
        v4 = v13;
        v14(v15, a3, a4);
LABEL_5:
        swift_endAccess();
        goto LABEL_6;
      }

      if (result == 1)
      {
        v13 = v4;
        swift_beginAccess();
        v14 = a4[10];
        v15 = a1 + 16;
        goto LABEL_13;
      }

LABEL_6:
      result = v8(a3, a4);
    }

    swift_beginAccess();
    v11 = a4[51];
    v12 = sub_26861489C();
    v11(a1 + 32, &type metadata for Google_Protobuf_ExtensionRangeOptions, v12, a3, a4);
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_2685F7130(__int128 *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if ((*(a4 + 20) & 1) == 0)
  {
    v8 = *(a4 + 16);
    MEMORY[0x26D61D8F0](1);
    MEMORY[0x26D61D920](v8);
  }

  swift_beginAccess();
  if ((*(a4 + 28) & 1) == 0)
  {
    v9 = *(a4 + 24);
    MEMORY[0x26D61D8F0](2);
    MEMORY[0x26D61D920](v9);
  }

  result = swift_beginAccess();
  v11 = *(a4 + 32);
  if (v11)
  {
    v13 = *(a4 + 48);
    v12 = *(a4 + 56);
    v14 = *(a4 + 40);
    MEMORY[0x26D61D8F0](3);

    sub_2685BA80C(v14, v13);

    sub_2685DCFC0(a1, v11, v14, v13, v12);
    result = sub_268601C90(v11, v14, v13, v12);
  }

  v15 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v15 != 2)
    {
      return result;
    }

    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
LABEL_14:
    if (v16 == v17)
    {
      return result;
    }

    return sub_268689844();
  }

  if (v15)
  {
    v16 = a2;
    v17 = a2 >> 32;
    goto LABEL_14;
  }

  if ((a3 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return result;
}

uint64_t sub_2685F72D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  if ((*(a1 + 20) & 1) == 0)
  {
    result = (*(a4 + 24))(*(a1 + 16), 1, a3, a4);
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if ((*(a1 + 28) & 1) != 0 || (result = (*(a4 + 24))(*(a1 + 24), 2, a3, a4), !v5))
  {
    result = swift_beginAccess();
    if (*(a1 + 32))
    {
      v10 = *(a1 + 56);
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = v10;
      v11 = *(a4 + 136);
      v12 = sub_26861489C();
      return v11(&v13, 3, &type metadata for Google_Protobuf_ExtensionRangeOptions, v12, a3, a4);
    }
  }

  return result;
}

BOOL sub_2685F7450(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  swift_beginAccess();
  v6 = *(a2 + 20);
  if (v5)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v4 != *(a2 + 16))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v7 = *(a1 + 24);
  v8 = *(a1 + 28);
  swift_beginAccess();
  v9 = *(a2 + 28);
  if (v8)
  {
    if (*(a2 + 28))
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v7 != *(a2 + 24))
  {
    v9 = 1;
  }

  if (v9)
  {
    return 0;
  }

LABEL_13:
  swift_beginAccess();
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = *(a1 + 48);
  v12 = *(a1 + 56);
  swift_beginAccess();
  v15 = *(a2 + 32);
  v14 = *(a2 + 40);
  v17 = *(a2 + 48);
  v16 = *(a2 + 56);
  if (v11)
  {
    v28 = v11;
    v29 = v10;
    v30 = v13;
    v31 = v12;
    if (v15)
    {
      v24 = v15;
      v25 = v14;
      v26 = v17;
      v27 = v16;
      sub_268601C34(v11, v10, v13, v12);
      sub_268601C34(v15, v14, v17, v16);
      sub_268601C34(v11, v10, v13, v12);
      v18 = sub_2686140B0(&v28, &v24);
      v19 = v25;
      v20 = v26;

      sub_2685B593C(v19, v20);

      v21 = v29;
      v22 = v30;

      sub_2685B593C(v21, v22);

      sub_268601C90(v11, v10, v13, v12);
      return (v18 & 1) != 0;
    }

    sub_268601C34(v11, v10, v13, v12);
    sub_268601C34(0, v14, v17, v16);
    sub_268601C34(v11, v10, v13, v12);

    sub_2685B593C(v10, v13);

LABEL_20:
    sub_268601C90(v11, v10, v13, v12);
    sub_268601C90(v15, v14, v17, v16);
    return 0;
  }

  sub_268601C34(0, v10, v13, v12);
  if (v15)
  {
    sub_268601C34(v15, v14, v17, v16);
    goto LABEL_20;
  }

  sub_268601C34(0, v14, v17, v16);
  sub_268601C90(0, v10, v13, v12);
  return 1;
}

uint64_t Google_Protobuf_DescriptorProto.ExtensionRange.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  v16 = v21;
  v17 = v22;
  v18 = v23;
  v14 = v19;
  v15 = v20;
  swift_beginAccess();
  if ((*(v3 + 20) & 1) == 0)
  {
    v4 = *(v3 + 16);
    MEMORY[0x26D61D8F0](1);
    MEMORY[0x26D61D920](v4);
  }

  swift_beginAccess();
  if ((*(v3 + 28) & 1) == 0)
  {
    v5 = *(v3 + 24);
    MEMORY[0x26D61D8F0](2);
    MEMORY[0x26D61D920](v5);
  }

  swift_beginAccess();
  v6 = *(v3 + 32);
  if (v6)
  {
    v8 = *(v3 + 48);
    v7 = *(v3 + 56);
    v9 = *(v3 + 40);
    MEMORY[0x26D61D8F0](3);

    sub_2685BA80C(v9, v8);

    sub_2685DCFC0(&v14, v6, v9, v8, v7);
    sub_268601C90(v6, v9, v8, v7);
  }

  v10 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = *(v1 + 16);
    v12 = *(v1 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v2 & 0xFF000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v11 = v1;
    v12 = v1 >> 32;
  }

  if (v11 != v12)
  {
LABEL_15:
    sub_268689844();
  }

LABEL_16:
  v21 = v16;
  v22 = v17;
  v23 = v18;
  v19 = v14;
  v20 = v15;
  return sub_268689EF4();
}

uint64_t sub_2685F795C@<X0>(void *a1@<X8>)
{
  if (qword_28028BC78 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C490;
  v2 = qword_28028C498;
  v3 = unk_28028C4A0;
  *a1 = qword_28028C488;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685F7AAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x26D61D4B0](a2, a3);
  *a4 = 0xD00000000000001FLL;
  *a5 = 0x80000002686948D0;
  return result;
}

uint64_t static Google_Protobuf_DescriptorProto.ReservedRange._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BC88 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C4C0;
  v2 = qword_28028C4C8;
  v3 = unk_28028C4D0;
  *a1 = qword_28028C4B8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685F7C68@<X0>(void *a1@<X8>)
{
  if (qword_28028BC88 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C4C0;
  v2 = qword_28028C4C8;
  v3 = unk_28028C4D0;
  *a1 = qword_28028C4B8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_ExtensionRangeOptions._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BC90 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C4E0;
  v2 = qword_28028C4E8;
  v3 = unk_28028C4F0;
  *a1 = qword_28028C4D8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685F7E38()
{
  v1 = *v0;
  v10[0] = v0[3];
  if ((ExtensionFieldValueSet.isInitialized.getter() & 1) == 0)
  {
    return 0;
  }

  v2 = sub_2685F0E50(v1);
  result = v2 + 32;
  v4 = -*(v2 + 16);
  v5 = -1;
  while (1)
  {
    if (v4 + v5 == -1)
    {

      return 1;
    }

    if (++v5 >= *(v2 + 16))
    {
      break;
    }

    v6 = result + 40;
    sub_2685B1724(result, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v9 = (*(v8 + 32))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    result = v6;
    if ((v9 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2685F7F4C@<X0>(void *a1@<X8>)
{
  if (qword_28028BC90 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C4E0;
  v2 = qword_28028C4E8;
  v3 = unk_28028C4F0;
  *a1 = qword_28028C4D8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_FieldDescriptorProto._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BC98 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C500;
  v2 = qword_28028C508;
  v3 = unk_28028C510;
  *a1 = qword_28028C4F8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

double sub_2685F80C4()
{
  type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 36) = 1;
  *(v0 + 37) = 4611;
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 92) = 1;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 142) = 0;
  qword_28028C518 = v0;
  return result;
}

uint64_t sub_2685F8130(uint64_t a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  *(v1 + 36) = 1;
  *(v1 + 37) = 4611;
  *(v1 + 88) = 0;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 92) = 1;
  *(v1 + 128) = 0u;
  *(v1 + 142) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 96) = 0u;
  swift_beginAccess();
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  swift_beginAccess();
  v5 = *(a1 + 32);
  LOBYTE(v4) = *(a1 + 36);
  swift_beginAccess();
  *(v1 + 32) = v5;
  *(v1 + 36) = v4;
  swift_beginAccess();
  v6 = *(a1 + 37);
  swift_beginAccess();
  *(v1 + 37) = v6;
  swift_beginAccess();
  v7 = *(a1 + 38);
  swift_beginAccess();
  *(v1 + 38) = v7;
  swift_beginAccess();
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v9;
  *(v1 + 48) = v8;
  swift_beginAccess();
  v11 = *(a1 + 56);
  v10 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 56) = v11;
  *(v1 + 64) = v10;

  swift_beginAccess();
  v13 = *(a1 + 72);
  v12 = *(a1 + 80);
  swift_beginAccess();
  *(v1 + 72) = v13;
  *(v1 + 80) = v12;

  swift_beginAccess();
  LODWORD(v12) = *(a1 + 88);
  LOBYTE(v10) = *(a1 + 92);
  swift_beginAccess();
  *(v1 + 88) = v12;
  *(v1 + 92) = v10;
  swift_beginAccess();
  v15 = *(a1 + 96);
  v14 = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 96) = v15;
  *(v1 + 104) = v14;

  swift_beginAccess();
  v16 = *(a1 + 112);
  v17 = *(a1 + 120);
  v18 = *(a1 + 128);
  v19 = *(a1 + 136);
  LOWORD(v13) = *(a1 + 148);
  LODWORD(v11) = *(a1 + 144);
  sub_268601C34(v16, v17, v18, v19);

  swift_beginAccess();
  v20 = *(v1 + 112);
  v21 = *(v1 + 120);
  v22 = *(v1 + 128);
  v23 = *(v1 + 136);
  *(v1 + 112) = v16;
  *(v1 + 120) = v17;
  *(v1 + 128) = v18;
  *(v1 + 136) = v19;
  *(v1 + 144) = v11;
  *(v1 + 148) = v13;
  sub_268601C90(v20, v21, v22, v23);
  return v1;
}

uint64_t sub_2685F84A4()
{

  sub_268601C90(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocClassInstance();
}

uint64_t Google_Protobuf_FieldDescriptorProto.isInitialized.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 112))
  {
    v2 = Google_Protobuf_FieldOptions.isInitialized.getter();
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t Google_Protobuf_FieldOptions.isInitialized.getter()
{
  v1 = *v0;
  v10[0] = v0[3];
  if ((ExtensionFieldValueSet.isInitialized.getter() & 1) == 0)
  {
    return 0;
  }

  v2 = sub_2685F0E50(v1);
  result = v2 + 32;
  v4 = -*(v2 + 16);
  v5 = -1;
  while (1)
  {
    if (v4 + v5 == -1)
    {

      return 1;
    }

    if (++v5 >= *(v2 + 16))
    {
      break;
    }

    v6 = result + 40;
    sub_2685B1724(result, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v9 = (*(v8 + 32))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    result = v6;
    if ((v9 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2685F8734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  result = v8(a3, a4);
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          v11 = v4;
          if (result == 6)
          {
            swift_beginAccess();
            v12 = *(a4 + 344);
            v13 = a1 + 40;
          }

          else
          {
            swift_beginAccess();
            v12 = *(a4 + 344);
            v13 = a1 + 72;
          }

LABEL_5:
          v4 = v11;
          v12(v13, a3, a4);
LABEL_6:
          swift_endAccess();
          goto LABEL_7;
        }

        switch(result)
        {
          case 8:
            swift_beginAccess();
            v18 = *(a4 + 408);
            v19 = sub_268614998();
            v18(a1 + 112, &type metadata for Google_Protobuf_FieldOptions, v19, a3, a4);
            goto LABEL_6;
          case 9:
            swift_beginAccess();
            (*(a4 + 80))(a1 + 88, a3, a4);
            goto LABEL_6;
          case 10:
            v11 = v4;
            swift_beginAccess();
            v12 = *(a4 + 344);
            v13 = a1 + 96;
            goto LABEL_5;
        }
      }

      else
      {
        if (result > 2)
        {
          if (result == 3)
          {
            swift_beginAccess();
            (*(a4 + 80))(a1 + 32, a3, a4);
          }

          else
          {
            if (result == 4)
            {
              swift_beginAccess();
              v14 = *(a4 + 392);
              v15 = sub_268619150();
              v16 = a1 + 37;
              v17 = &type metadata for Google_Protobuf_FieldDescriptorProto.Label;
            }

            else
            {
              swift_beginAccess();
              v14 = *(a4 + 392);
              v15 = sub_2686190FC();
              v16 = a1 + 38;
              v17 = &type metadata for Google_Protobuf_FieldDescriptorProto.TypeEnum;
            }

            v14(v16, v17, v15, a3, a4);
          }

          goto LABEL_6;
        }

        if (result == 1)
        {
          v11 = v4;
          swift_beginAccess();
          v12 = *(a4 + 344);
          v13 = a1 + 16;
          goto LABEL_5;
        }

        if (result == 2)
        {
          v11 = v4;
          swift_beginAccess();
          v12 = *(a4 + 344);
          v13 = a1 + 56;
          goto LABEL_5;
        }
      }

LABEL_7:
      result = v8(a3, a4);
    }
  }

  return result;
}

uint64_t sub_2685F8ADC(uint64_t a1, __int128 *a2)
{
  swift_beginAccess();
  if (*(a1 + 24))
  {
    MEMORY[0x26D61D8F0](1);

    sub_268689A24();
  }

  swift_beginAccess();
  if (*(a1 + 64))
  {
    MEMORY[0x26D61D8F0](2);

    sub_268689A24();
  }

  swift_beginAccess();
  if ((*(a1 + 36) & 1) == 0)
  {
    v5 = *(a1 + 32);
    MEMORY[0x26D61D8F0](3);
    MEMORY[0x26D61D920](v5);
  }

  swift_beginAccess();
  v6 = *(a1 + 37);
  if (v6 != 3)
  {
    MEMORY[0x26D61D8F0](4);
    MEMORY[0x26D61D8F0](v6 + 1);
  }

  swift_beginAccess();
  v7 = *(a1 + 38);
  if (v7 != 18)
  {
    MEMORY[0x26D61D8F0](5);
    MEMORY[0x26D61D8F0](v7 + 1);
  }

  swift_beginAccess();
  if (*(a1 + 48))
  {
    MEMORY[0x26D61D8F0](6);

    sub_268689A24();
  }

  swift_beginAccess();
  if (*(a1 + 80))
  {
    MEMORY[0x26D61D8F0](7);

    sub_268689A24();
  }

  swift_beginAccess();
  v8 = *(a1 + 112);
  if (v8)
  {
    v9 = *(a1 + 120);
    v10 = *(a1 + 128);
    v11 = *(a1 + 136);
    v12 = *(a1 + 144) | (*(a1 + 148) << 32);
    v13.i64[0] = 0xFFFFFFFFFFFFLL;
    v13.i64[1] = 0xFFFFFFFFFFFFLL;
    v14 = vandq_s8(vdupq_n_s64(v12), v13);
    v15 = vshlq_u64(v14, xmmword_26868BD80);
    v31 = *(a1 + 112);
    v32 = v9;
    v33 = v10;
    v34 = v11;
    v35 = v12;
    *v14.i8 = vmovn_s64(vshlq_u64(v14, xmmword_26868BD90));
    *v15.i8 = vmovn_s64(v15);
    v15.i16[1] = v15.i16[2];
    v15.i16[2] = v14.i16[0];
    v15.i16[3] = v14.i16[2];
    v36 = vmovn_s16(v15).u32[0];
    v37 = BYTE5(v12);
    MEMORY[0x26D61D8F0](8);
    v16 = a2[3];
    v25 = a2[2];
    v26 = v16;
    v27 = *(a2 + 8);
    v28[0] = v8;
    v17 = a2[1];
    v23 = *a2;
    v24 = v17;
    v28[1] = v9;
    v28[2] = v10;
    v28[3] = v11;
    v30 = WORD2(v12);
    v29 = v12;
    sub_268601D9C(v28, v22);
    sub_268605F78(&v23);
    if (v2)
    {
      MEMORY[0x26D61DC90](v2);
    }

    sub_268601C90(v8, v9, v10, v11);
    v18 = v26;
    a2[2] = v25;
    a2[3] = v18;
    *(a2 + 8) = v27;
    v19 = v24;
    *a2 = v23;
    a2[1] = v19;
  }

  swift_beginAccess();
  if ((*(a1 + 92) & 1) == 0)
  {
    v20 = *(a1 + 88);
    MEMORY[0x26D61D8F0](9);
    MEMORY[0x26D61D920](v20);
  }

  result = swift_beginAccess();
  if (*(a1 + 104))
  {
    MEMORY[0x26D61D8F0](10);

    sub_268689A24();
  }

  return result;
}

uint64_t sub_2685F8EA0(uint64_t a1, char **a2)
{
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 16);

    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v7);
    sub_2685B43A4(v6, v5);

    v8 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
      *a2 = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_2685B3F48((v10 > 1), v11 + 1, 1, v8);
      *a2 = v8;
    }

    *(v8 + 2) = v11 + 1;
    v8[v11 + 32] = 10;
  }

  swift_beginAccess();
  v12 = *(a1 + 64);
  if (v12)
  {
    v13 = *(a1 + 56);

    sub_2685B301C(2);
    sub_2685B403C(": ", 2, v14);
    sub_2685B43A4(v13, v12);

    v15 = *a2;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v15;
    if ((v16 & 1) == 0)
    {
      v15 = sub_2685B3F48(0, *(v15 + 2) + 1, 1, v15);
      *a2 = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_2685B3F48((v17 > 1), v18 + 1, 1, v15);
      *a2 = v15;
    }

    *(v15 + 2) = v18 + 1;
    v15[v18 + 32] = 10;
  }

  swift_beginAccess();
  if ((*(a1 + 36) & 1) != 0 || (result = sub_2686440C0(*(a1 + 32), 3), !v2))
  {
    swift_beginAccess();
    v20 = *(a1 + 37);
    if (v20 != 3)
    {
      sub_2685B301C(4);
      sub_2685B403C(": ", 2, v21);
      sub_2686714F4(v20);
      v22 = *a2;
      v23 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v22;
      if ((v23 & 1) == 0)
      {
        v22 = sub_2685B3F48(0, *(v22 + 2) + 1, 1, v22);
        *a2 = v22;
      }

      v25 = *(v22 + 2);
      v24 = *(v22 + 3);
      if (v25 >= v24 >> 1)
      {
        v22 = sub_2685B3F48((v24 > 1), v25 + 1, 1, v22);
        *a2 = v22;
      }

      *(v22 + 2) = v25 + 1;
      v22[v25 + 32] = 10;
    }

    swift_beginAccess();
    v26 = *(a1 + 38);
    if (v26 != 18)
    {
      sub_2685B301C(5);
      sub_2685B403C(": ", 2, v27);
      sub_2686714D0(v26);
      v28 = *a2;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v28;
      if ((v29 & 1) == 0)
      {
        v28 = sub_2685B3F48(0, *(v28 + 2) + 1, 1, v28);
        *a2 = v28;
      }

      v31 = *(v28 + 2);
      v30 = *(v28 + 3);
      if (v31 >= v30 >> 1)
      {
        v28 = sub_2685B3F48((v30 > 1), v31 + 1, 1, v28);
        *a2 = v28;
      }

      *(v28 + 2) = v31 + 1;
      v28[v31 + 32] = 10;
    }

    swift_beginAccess();
    v32 = *(a1 + 48);
    if (v32)
    {
      v33 = *(a1 + 40);

      sub_2685B301C(6);
      sub_2685B403C(": ", 2, v34);
      sub_2685B43A4(v33, v32);

      v35 = *a2;
      v36 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v35;
      if ((v36 & 1) == 0)
      {
        v35 = sub_2685B3F48(0, *(v35 + 2) + 1, 1, v35);
        *a2 = v35;
      }

      v38 = *(v35 + 2);
      v37 = *(v35 + 3);
      if (v38 >= v37 >> 1)
      {
        v35 = sub_2685B3F48((v37 > 1), v38 + 1, 1, v35);
        *a2 = v35;
      }

      *(v35 + 2) = v38 + 1;
      v35[v38 + 32] = 10;
    }

    swift_beginAccess();
    v39 = *(a1 + 80);
    if (v39)
    {
      v40 = *(a1 + 72);

      sub_2685B301C(7);
      sub_2685B403C(": ", 2, v41);
      sub_2685B43A4(v40, v39);

      v42 = *a2;
      v43 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v42;
      if ((v43 & 1) == 0)
      {
        v42 = sub_2685B3F48(0, *(v42 + 2) + 1, 1, v42);
        *a2 = v42;
      }

      v45 = *(v42 + 2);
      v44 = *(v42 + 3);
      if (v45 >= v44 >> 1)
      {
        v42 = sub_2685B3F48((v44 > 1), v45 + 1, 1, v42);
        *a2 = v42;
      }

      *(v42 + 2) = v45 + 1;
      v42[v45 + 32] = 10;
    }

    swift_beginAccess();
    v46 = *(a1 + 112);
    if (!v46 || (v47 = *(a1 + 148), v48 = *(a1 + 144), v50 = *(a1 + 128), v49 = *(a1 + 136), v51 = *(a1 + 120), v65[0] = *(a1 + 112), v65[1] = v51, v65[2] = v50, v65[3] = v49, v66 = v48, v52.i64[0] = 0xFFFFFFFFFFFFLL, v52.i64[1] = 0xFFFFFFFFFFFFLL, v53 = vandq_s8(vdupq_n_s64(v48 | (v47 << 32)), v52), v54 = vshlq_u64(v53, xmmword_26868BD80), *v53.i8 = vmovn_s64(vshlq_u64(v53, xmmword_26868BD90)), *v54.i8 = vmovn_s64(v54), v54.i16[1] = v54.i16[2], v54.i16[2] = v53.i16[0], v54.i16[3] = v53.i16[2], v67 = vmovn_s16(v54).u32[0], v68 = BYTE1(v47), v62[0] = v46, v62[1] = v51, v62[2] = v50, v62[3] = v49, v64 = v47, v63 = v48, sub_268601D9C(v62, v61), sub_268672760(v65, 8), result = sub_268601C90(v46, v51, v50, v49), !v2))
    {
      swift_beginAccess();
      if ((*(a1 + 92) & 1) != 0 || (result = sub_2686440C0(*(a1 + 88), 9), !v2))
      {
        result = swift_beginAccess();
        v55 = *(a1 + 104);
        if (v55)
        {
          v56 = *(a1 + 96);

          sub_2685B301C(10);
          sub_2685B403C(": ", 2, v57);
          sub_2685B43A4(v56, v55);

          v58 = *a2;
          result = swift_isUniquelyReferenced_nonNull_native();
          *a2 = v58;
          if ((result & 1) == 0)
          {
            result = sub_2685B3F48(0, *(v58 + 16) + 1, 1, v58);
            v58 = result;
            *a2 = result;
          }

          v60 = *(v58 + 16);
          v59 = *(v58 + 24);
          if (v60 >= v59 >> 1)
          {
            result = sub_2685B3F48((v59 > 1), v60 + 1, 1, v58);
            v58 = result;
            *a2 = result;
          }

          *(v58 + 16) = v60 + 1;
          *(v58 + v60 + 32) = 10;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2685F95BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(a1 + 24);
  if (v9)
  {
    v10 = *(a1 + 16);
    v11 = *(a4 + 112);

    v11(v10, v9, 1, a3, a4);
    if (v5)
    {
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 64);
  if (!v13 || (v14 = *(a1 + 56), v15 = *(a4 + 112), , v15(v14, v13, 2, a3, a4), result = , !v5))
  {
    swift_beginAccess();
    if ((*(a1 + 36) & 1) != 0 || (result = (*(a4 + 24))(*(a1 + 32), 3, a3, a4), !v5))
    {
      swift_beginAccess();
      if (*(a1 + 37) == 3 || (LOBYTE(v37) = *(a1 + 37), v16 = *(a4 + 128), v17 = sub_268619150(), result = v16(&v37, 4, &type metadata for Google_Protobuf_FieldDescriptorProto.Label, v17, a3, a4), !v5))
      {
        swift_beginAccess();
        if (*(a1 + 38) == 18 || (LOBYTE(v37) = *(a1 + 38), v18 = *(a4 + 128), v19 = sub_2686190FC(), result = v18(&v37, 5, &type metadata for Google_Protobuf_FieldDescriptorProto.TypeEnum, v19, a3, a4), !v5))
        {
          swift_beginAccess();
          v20 = *(a1 + 48);
          if (!v20 || (v21 = *(a1 + 40), v22 = *(a4 + 112), , v22(v21, v20, 6, a3, a4), result = , !v5))
          {
            swift_beginAccess();
            v23 = *(a1 + 80);
            if (!v23 || (v24 = *(a1 + 72), v25 = *(a4 + 112), , v25(v24, v23, 7, a3, a4), result = , !v5))
            {
              swift_beginAccess();
              if (!*(a1 + 112) || (v26 = *(a1 + 148), v27 = *(a1 + 144), v28 = *(a1 + 136), v37 = *(a1 + 112), v38 = *(a1 + 120), v39 = v28, v40 = v27, v29.i64[0] = 0xFFFFFFFFFFFFLL, v29.i64[1] = 0xFFFFFFFFFFFFLL, v30 = vandq_s8(vdupq_n_s64(v27 | (v26 << 32)), v29), v31 = vshlq_u64(v30, xmmword_26868BD80), *v30.i8 = vmovn_s64(vshlq_u64(v30, xmmword_26868BD90)), *v31.i8 = vmovn_s64(v31), v31.i16[1] = v31.i16[2], v31.i16[2] = v30.i16[0], v31.i16[3] = v30.i16[2], v41 = vmovn_s16(v31).u32[0], v42 = BYTE1(v26), v32 = *(a4 + 136), v33 = sub_268614998(), result = v32(&v37, 8, &type metadata for Google_Protobuf_FieldOptions, v33, a3, a4), !v5))
              {
                swift_beginAccess();
                if ((*(a1 + 92) & 1) != 0 || (result = (*(a4 + 24))(*(a1 + 88), 9, a3, a4), !v5))
                {
                  result = swift_beginAccess();
                  v34 = *(a1 + 104);
                  if (v34)
                  {
                    v35 = *(a1 + 96);
                    v36 = *(a4 + 112);

                    v36(v35, v34, 10, a3, a4);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2685F9A70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_62;
    }

    v7 = v4 == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_268689E14() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v6)
  {
    goto LABEL_62;
  }

  swift_beginAccess();
  v8 = *(a1 + 32);
  v9 = *(a1 + 36);
  swift_beginAccess();
  v10 = *(a2 + 36);
  if (v9)
  {
    if (!*(a2 + 36))
    {
      goto LABEL_62;
    }
  }

  else
  {
    if (v8 != *(a2 + 32))
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_62;
    }
  }

  swift_beginAccess();
  v11 = *(a1 + 37);
  swift_beginAccess();
  v12 = *(a2 + 37);
  if (v11 == 3)
  {
    if (v12 != 3)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v13 = 0;
    if (v12 == 3 || v11 != v12)
    {
      return v13 & 1;
    }
  }

  swift_beginAccess();
  v14 = *(a1 + 38);
  swift_beginAccess();
  v15 = *(a2 + 38);
  if (v14 == 18)
  {
    if (v15 != 18)
    {
      goto LABEL_62;
    }

    goto LABEL_26;
  }

  v13 = 0;
  if (v15 != 18 && v14 == v15)
  {
LABEL_26:
    swift_beginAccess();
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    swift_beginAccess();
    v18 = *(a2 + 48);
    if (v17)
    {
      if (!v18 || (v16 != *(a2 + 40) || v17 != v18) && (sub_268689E14() & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else if (v18)
    {
      goto LABEL_62;
    }

    swift_beginAccess();
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    swift_beginAccess();
    v21 = *(a2 + 64);
    if (v20)
    {
      if (!v21 || (v19 != *(a2 + 56) || v20 != v21) && (sub_268689E14() & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else if (v21)
    {
      goto LABEL_62;
    }

    swift_beginAccess();
    v22 = *(a1 + 72);
    v23 = *(a1 + 80);
    swift_beginAccess();
    v24 = *(a2 + 80);
    if (v23)
    {
      if (!v24 || (v22 != *(a2 + 72) || v23 != v24) && (sub_268689E14() & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else if (v24)
    {
      goto LABEL_62;
    }

    swift_beginAccess();
    v25 = *(a1 + 88);
    v26 = *(a1 + 92);
    swift_beginAccess();
    v27 = *(a2 + 92);
    if (v26)
    {
      if (!*(a2 + 92))
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v25 != *(a2 + 88))
      {
        v27 = 1;
      }

      if (v27)
      {
        goto LABEL_62;
      }
    }

    swift_beginAccess();
    v28 = *(a1 + 96);
    v29 = *(a1 + 104);
    swift_beginAccess();
    v30 = *(a2 + 104);
    if (v29)
    {
      if (!v30 || (v28 != *(a2 + 96) || v29 != v30) && (sub_268689E14() & 1) == 0)
      {
        goto LABEL_62;
      }

LABEL_58:
      swift_beginAccess();
      v32 = *(a1 + 112);
      v31 = *(a1 + 120);
      v34 = *(a1 + 128);
      v33 = *(a1 + 136);
      v35 = *(a1 + 144) | (*(a1 + 148) << 32);
      swift_beginAccess();
      v37 = *(a2 + 112);
      v36 = *(a2 + 120);
      v39 = *(a2 + 128);
      v38 = *(a2 + 136);
      v40 = *(a2 + 144) | (*(a2 + 148) << 32);
      if (v32)
      {
        *&v48 = v32;
        *(&v48 + 1) = v31;
        *v49 = v34;
        *&v49[8] = v33;
        *&v49[16] = v35;
        *&v49[20] = WORD2(v35);
        if (v37)
        {
          *&v42 = v37;
          *(&v42 + 1) = v36;
          *v43 = v39;
          *&v43[8] = v38;
          *&v43[20] = WORD2(v40);
          *&v43[16] = v40;
          sub_268601C34(v32, v31, v34, v33);
          sub_268601C34(v37, v36, v39, v38);
          sub_268601C34(v32, v31, v34, v33);
          v13 = _s20SiriOntologyProtobuf07Google_C13_FieldOptionsV2eeoiySbAC_ACtFZ_0(&v48, &v42);
          v44 = v42;
          v45[0] = *v43;
          *(v45 + 14) = *&v43[14];
          sub_268601DD4(&v44);
          v46 = v48;
          *v47 = *v49;
          *&v47[14] = *&v49[14];
          sub_268601DD4(&v46);
          sub_268601C90(v32, v31, v34, v33);
          return v13 & 1;
        }

        v46 = v48;
        *v47 = *v49;
        *&v47[14] = *&v49[14];
        sub_268601C34(v32, v31, v34, v33);
        sub_268601C34(0, v36, v39, v38);
        sub_268601C34(v32, v31, v34, v33);
        sub_268601DD4(&v46);
      }

      else
      {
        sub_268601C34(0, v31, v34, v33);
        if (!v37)
        {
          sub_268601C34(0, v36, v39, v38);
          sub_268601C90(0, v31, v34, v33);
          v13 = 1;
          return v13 & 1;
        }

        sub_268601C34(v37, v36, v39, v38);
      }

      sub_268601C90(v32, v31, v34, v33);
      sub_268601C90(v37, v36, v39, v38);
      v13 = 0;
      return v13 & 1;
    }

    if (!v30)
    {
      goto LABEL_58;
    }

LABEL_62:
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_2685FA0AC()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 112))
  {
    v2 = Google_Protobuf_FieldOptions.isInitialized.getter();
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_2685FA1A8@<X0>(void *a1@<X8>)
{
  if (qword_28028BC98 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C500;
  v2 = qword_28028C508;
  v3 = unk_28028C510;
  *a1 = qword_28028C4F8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_FieldDescriptorProto.TypeEnum._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BCA8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028C528;
  v2 = qword_28028C530;
  v3 = unk_28028C538;
  *a1 = qword_28028C520;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685FA378@<X0>(void *a1@<X8>)
{
  if (qword_28028BCA8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028C528;
  v2 = qword_28028C530;
  v3 = unk_28028C538;
  *a1 = qword_28028C520;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_FieldDescriptorProto.Label._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BCB0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028C548;
  v2 = qword_28028C550;
  v3 = unk_28028C558;
  *a1 = qword_28028C540;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685FA4C4@<X0>(void *a1@<X8>)
{
  if (qword_28028BCB0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028C548;
  v2 = qword_28028C550;
  v3 = unk_28028C558;
  *a1 = qword_28028C540;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_OneofDescriptorProto._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BCB8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C568;
  v2 = qword_28028C570;
  v3 = unk_28028C578;
  *a1 = qword_28028C560;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685FA62C(void *a1)
{
  *(v1 + 48) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  swift_beginAccess();
  v4 = a1[2];
  v3 = a1[3];
  swift_beginAccess();
  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  swift_beginAccess();
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];

  sub_268601C34(v5, v6, v7, v8);

  swift_beginAccess();
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  *(v1 + 56) = v8;
  sub_268601C90(v9, v10, v11, v12);
  return v1;
}

uint64_t sub_2685FA72C()
{

  sub_268601C90(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t _s20SiriOntologyProtobuf07Google_C16_DescriptorProtoV14ExtensionRangeV13isInitializedSbvg_0()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = v1[4];
  if (!v2)
  {
    return 1;
  }

  v4 = v1[5];
  v3 = v1[6];
  v5 = v1[7];
  v18[0] = v5;

  sub_2685BA80C(v4, v3);

  if (ExtensionFieldValueSet.isInitialized.getter())
  {
    v17 = v3;
    v6 = sub_2685F0E50(v2);
    result = v6 + 32;
    v8 = -*(v6 + 16);
    v9 = -1;
    while (1)
    {
      if (v8 + v9 == -1)
      {

        sub_268601C90(v2, v4, v17, v5);
        return 1;
      }

      if (++v9 >= *(v6 + 16))
      {
        break;
      }

      v10 = result + 40;
      sub_2685B1724(result, v18);
      v11 = v19;
      v12 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v13 = (*(v12 + 32))(v11, v12);
      __swift_destroy_boxed_opaque_existential_1(v18);
      result = v10;
      if ((v13 & 1) == 0)
      {

        v14 = v2;
        v15 = v4;
        v16 = v17;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = v2;
    v15 = v4;
    v16 = v3;
LABEL_9:
    sub_268601C90(v14, v15, v16, v5);
    return 0;
  }

  return result;
}

uint64_t sub_2685FA8EC(void *a1)
{
  swift_beginAccess();
  v2 = a1[4];
  if (!v2)
  {
    return 1;
  }

  v4 = a1[5];
  v3 = a1[6];
  v5 = a1[7];
  v18[0] = v5;

  sub_2685BA80C(v4, v3);

  if (ExtensionFieldValueSet.isInitialized.getter())
  {
    v17 = v3;
    v6 = sub_2685F0E50(v2);
    result = v6 + 32;
    v8 = -*(v6 + 16);
    v9 = -1;
    while (1)
    {
      if (v8 + v9 == -1)
      {

        sub_268601C90(v2, v4, v17, v5);
        return 1;
      }

      if (++v9 >= *(v6 + 16))
      {
        break;
      }

      v10 = result + 40;
      sub_2685B1724(result, v18);
      v11 = v19;
      v12 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v13 = (*(v12 + 32))(v11, v12);
      __swift_destroy_boxed_opaque_existential_1(v18);
      result = v10;
      if ((v13 & 1) == 0)
      {

        v14 = v2;
        v15 = v4;
        v16 = v17;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = v2;
    v15 = v4;
    v16 = v3;
LABEL_9:
    sub_268601C90(v14, v15, v16, v5);
    return 0;
  }

  return result;
}

BOOL _s20SiriOntologyProtobuf07Google_C15_ServiceOptionsV13isInitializedSbvg_0()
{
  v1 = *v0;
  if ((ExtensionFieldValueSet.isInitialized.getter() & 1) == 0)
  {
    return 0;
  }

  v2 = sub_2685F0E50(v1);
  v3 = _s20SiriOntologyProtobuf8InternalO17areAllInitializedySbSayAA7Message_pGFZ_0(v2);

  return v3;
}

uint64_t sub_2685FAB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  result = v8(a3, a4);
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        swift_beginAccess();
        (*(a4 + 344))(a1 + 16, a3, a4);
        goto LABEL_5;
      }

LABEL_6:
      result = v8(a3, a4);
    }

    swift_beginAccess();
    v11 = *(a4 + 408);
    v12 = sub_268614A94();
    v11(a1 + 32, &type metadata for Google_Protobuf_OneofOptions, v12, a3, a4);
LABEL_5:
    swift_endAccess();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_2685FAC74(__int128 *a1, uint64_t a2, unint64_t a3, void *a4)
{
  swift_beginAccess();
  if (a4[3])
  {
    MEMORY[0x26D61D8F0](1);

    sub_268689A24();
  }

  result = swift_beginAccess();
  v9 = a4[4];
  if (v9)
  {
    v11 = a4[6];
    v10 = a4[7];
    v12 = a4[5];
    MEMORY[0x26D61D8F0](2);

    sub_2685BA80C(v12, v11);

    sub_2685DCFC0(a1, v9, v12, v11, v10);
    result = sub_268601C90(v9, v12, v11, v10);
  }

  v13 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v13 != 2)
    {
      return result;
    }

    v14 = *(a2 + 16);
    v15 = *(a2 + 24);
LABEL_12:
    if (v14 == v15)
    {
      return result;
    }

    return sub_268689844();
  }

  if (v13)
  {
    v14 = a2;
    v15 = a2 >> 32;
    goto LABEL_12;
  }

  if ((a3 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return result;
}

uint64_t sub_2685FADD0(char **a1, uint64_t a2, unint64_t a3, void *a4)
{
  swift_beginAccess();
  v9 = a4[3];
  if (v9)
  {
    v10 = a4[2];

    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v11);
    sub_2685B43A4(v10, v9);

    v12 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_2685B3F48(0, *(v12 + 2) + 1, 1, v12);
      *a1 = v12;
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = sub_2685B3F48((v14 > 1), v15 + 1, 1, v12);
    }

    *(v12 + 2) = v15 + 1;
    v12[v15 + 32] = 10;
    *a1 = v12;
  }

  result = swift_beginAccess();
  v17 = a4[4];
  if (!v17 || (v19 = a4[6], v18 = a4[7], v20 = a4[5], , sub_2685BA80C(v20, v19), , sub_268673AF4(v17, v20, v19, v18, 2), result = sub_268601C90(v17, v20, v19, v18), !v4))
  {
    v21 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v21 != 2)
      {
        return result;
      }

      v22 = *(a2 + 16);
      v23 = *(a2 + 24);
    }

    else
    {
      if (!v21)
      {
        if ((a3 & 0xFF000000000000) == 0)
        {
          return result;
        }

        goto LABEL_17;
      }

      v22 = a2;
      v23 = a2 >> 32;
    }

    if (v22 == v23)
    {
      return result;
    }

LABEL_17:
    if (*(a1 + 64) == 1)
    {
      return sub_26863B108(a2, a3, a1);
    }
  }

  return result;
}

uint64_t sub_2685FAFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(a1 + 24);
  if (!v9 || (v10 = *(a1 + 16), v11 = *(a4 + 112), , v11(v10, v9, 1, a3, a4), result = , !v5))
  {
    result = swift_beginAccess();
    if (*(a1 + 32))
    {
      v13 = *(a1 + 56);
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = v13;
      v14 = *(a4 + 136);
      v15 = sub_268614A94();
      return v14(&v16, 2, &type metadata for Google_Protobuf_OneofOptions, v15, a3, a4);
    }
  }

  return result;
}

BOOL sub_2685FB14C(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = v4 == a2[2] && v5 == v6;
    if (!v7 && (sub_268689E14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  swift_beginAccess();
  v9 = a1[4];
  v8 = a1[5];
  v11 = a1[6];
  v10 = a1[7];
  swift_beginAccess();
  v13 = a2[4];
  v12 = a2[5];
  v15 = a2[6];
  v14 = a2[7];
  if (v9)
  {
    v26 = v9;
    v27 = v8;
    v28 = v11;
    v29 = v10;
    if (v13)
    {
      v22 = v13;
      v23 = v12;
      v24 = v15;
      v25 = v14;
      sub_268601C34(v9, v8, v11, v10);
      sub_268601C34(v13, v12, v15, v14);
      sub_268601C34(v9, v8, v11, v10);
      v16 = sub_2686140B0(&v26, &v22);
      v17 = v23;
      v18 = v24;

      sub_2685B593C(v17, v18);

      v19 = v27;
      v20 = v28;

      sub_2685B593C(v19, v20);

      sub_268601C90(v9, v8, v11, v10);
      return (v16 & 1) != 0;
    }

    sub_268601C34(v9, v8, v11, v10);
    sub_268601C34(0, v12, v15, v14);
    sub_268601C34(v9, v8, v11, v10);

    sub_2685B593C(v8, v11);

LABEL_17:
    sub_268601C90(v9, v8, v11, v10);
    sub_268601C90(v13, v12, v15, v14);
    return 0;
  }

  sub_268601C34(0, v8, v11, v10);
  if (v13)
  {
    sub_268601C34(v13, v12, v15, v14);
    goto LABEL_17;
  }

  sub_268601C34(0, v12, v15, v14);
  sub_268601C90(0, v8, v11, v10);
  return 1;
}

uint64_t Google_Protobuf_OneofDescriptorProto.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_2685FAC74(&v5, v1, v2, v3);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

uint64_t sub_2685FB4E8@<X0>(void *a1@<X8>)
{
  if (qword_28028BCB8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C568;
  v2 = qword_28028C570;
  v3 = unk_28028C578;
  *a1 = qword_28028C560;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685FB5A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  sub_268689E94();
  v11 = v16;
  v12 = v17;
  v13 = v18;
  v9 = v14;
  v10 = v15;
  a3(&v9, v5, v6, v7);
  v17 = v12;
  v18 = v13;
  v15 = v10;
  v16 = v11;
  v14 = v9;
  return sub_268689EF4();
}

__n128 sub_2685FB678(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v4[2];
  v10 = a1[3];
  v16 = a1[2];
  v17 = v10;
  v18 = *(a1 + 8);
  v11 = a1[1];
  v14 = *a1;
  v15 = v11;
  a4(&v14, v7, v8, v9);
  v12 = v17;
  a1[2] = v16;
  a1[3] = v12;
  *(a1 + 8) = v18;
  result = v15;
  *a1 = v14;
  a1[1] = result;
  return result;
}

uint64_t sub_2685FB718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  sub_268689E94();
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v10 = v15;
  v11 = v16;
  a4(&v10, v6, v7, v8);
  v18 = v13;
  v19 = v14;
  v16 = v11;
  v17 = v12;
  v15 = v10;
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_EnumDescriptorProto._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BCC0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C588;
  v2 = qword_28028C590;
  v3 = unk_28028C598;
  *a1 = qword_28028C580;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

double sub_2685FB8C8()
{
  type metadata accessor for Google_Protobuf_EnumDescriptorProto._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 32) = MEMORY[0x277D84F90];
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 80) = v1;
  *(v0 + 88) = v1;
  qword_28028C5A0 = v0;
  return result;
}

uint64_t sub_2685FB91C(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 32) = MEMORY[0x277D84F90];
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 80) = v3;
  *(v1 + 88) = v3;
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  swift_beginAccess();
  v6 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v6;

  swift_beginAccess();
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  swift_beginAccess();
  v12 = *(v1 + 40);
  v13 = *(v1 + 48);
  v17 = *(v1 + 64);
  v18 = *(v1 + 56);
  *(v1 + 40) = v7;
  *(v1 + 48) = v8;
  *(v1 + 56) = v9;
  *(v1 + 64) = v10;
  *(v1 + 72) = v11;
  sub_268601C34(v7, v8, v9, v10);
  sub_268601C90(v12, v13, v18, v17);
  swift_beginAccess();
  v14 = *(a1 + 80);
  swift_beginAccess();
  *(v1 + 80) = v14;

  swift_beginAccess();
  v15 = *(a1 + 88);

  swift_beginAccess();
  *(v1 + 88) = v15;

  return v1;
}

uint64_t sub_2685FBB3C()
{

  sub_268601C90(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_2685FBBA4(uint64_t a1)
{
  swift_beginAccess();

  v3 = sub_2685F10F0(v2, &type metadata for Google_Protobuf_EnumValueDescriptorProto, sub_2686167FC);

  result = v3 + 32;
  v5 = -*(v3 + 16);
  v6 = -1;
  while (1)
  {
    if (v5 + v6 == -1)
    {

      swift_beginAccess();
      if (!*(a1 + 40))
      {
        return 1;
      }

      v11 = *(a1 + 72);
      v12 = *(a1 + 64);
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = v12;
      LOWORD(v16) = v11;
      return (Google_Protobuf_EnumOptions.isInitialized.getter() & 1) != 0;
    }

    if (++v6 >= *(v3 + 16))
    {
      break;
    }

    v7 = result + 40;
    sub_2685B1724(result, &v13);
    v8 = v15;
    v9 = v16;
    __swift_project_boxed_opaque_existential_1(&v13, v15);
    v10 = (*(v9 + 32))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(&v13);
    result = v7;
    if ((v10 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t Google_Protobuf_EnumOptions.isInitialized.getter()
{
  v1 = *v0;
  v10[0] = v0[3];
  if ((ExtensionFieldValueSet.isInitialized.getter() & 1) == 0)
  {
    return 0;
  }

  v2 = sub_2685F0E50(v1);
  result = v2 + 32;
  v4 = -*(v2 + 16);
  v5 = -1;
  while (1)
  {
    if (v4 + v5 == -1)
    {

      return 1;
    }

    if (++v5 >= *(v2 + 16))
    {
      break;
    }

    v6 = result + 40;
    sub_2685B1724(result, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v9 = (*(v8 + 32))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    result = v6;
    if ((v9 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2685FBE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  result = v8(a3, a4);
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          swift_beginAccess();
          (*(a4 + 344))(a1 + 16, a3, a4);
          goto LABEL_5;
        }

        if (result == 2)
        {
          v13 = v4;
          swift_beginAccess();
          v14 = *(a4 + 416);
          v15 = sub_2686167FC();
          v16 = a1 + 32;
          v17 = &type metadata for Google_Protobuf_EnumValueDescriptorProto;
          goto LABEL_17;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            swift_beginAccess();
            v11 = *(a4 + 408);
            v12 = sub_268614AE8();
            v11(a1 + 40, &type metadata for Google_Protobuf_EnumOptions, v12, a3, a4);
            goto LABEL_5;
          case 4:
            v13 = v4;
            swift_beginAccess();
            v14 = *(a4 + 416);
            v15 = sub_268616654();
            v16 = a1 + 80;
            v17 = &type metadata for Google_Protobuf_EnumDescriptorProto.EnumReservedRange;
LABEL_17:
            v4 = v13;
            v14(v16, v17, v15, a3, a4);
LABEL_5:
            swift_endAccess();
            break;
          case 5:
            swift_beginAccess();
            (*(a4 + 352))(a1 + 88, a3, a4);
            goto LABEL_5;
        }
      }

      result = v8(a3, a4);
    }
  }

  return result;
}

uint64_t sub_2685FC0D8(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  swift_beginAccess();
  if (*(a1 + 24))
  {
    MEMORY[0x26D61D8F0](1);

    sub_268689A24();
  }

  swift_beginAccess();
  if (!*(*(a1 + 32) + 16) || (v6 = , sub_2685DB708(v6, 2), result = , !v2))
  {
    swift_beginAccess();
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v11 = *(a1 + 64);
      v12 = *(a1 + 72);
      v26 = *(a1 + 40);
      v27 = v9;
      v28 = v10;
      v29 = v11;
      v30 = v12;
      MEMORY[0x26D61D8F0](3);
      v13 = a2[3];
      v23 = a2[2];
      v24 = v13;
      v25 = *(a2 + 8);
      v14 = a2[1];
      v21 = *a2;
      v22 = v14;

      sub_2685BA80C(v9, v10);

      sub_268607480(&v21);
      if (v2)
      {
        MEMORY[0x26D61DC90](v2);
        v3 = 0;
      }

      sub_268601C90(v8, v9, v10, v11);
      v15 = v24;
      a2[2] = v23;
      a2[3] = v15;
      *(a2 + 8) = v25;
      v16 = v22;
      *a2 = v21;
      a2[1] = v16;
    }

    swift_beginAccess();
    if (!*(*(a1 + 80) + 16) || (v17 = , sub_2685DBBD8(v17, 4), result = , !v3))
    {
      result = swift_beginAccess();
      v18 = *(a1 + 88);
      if (*(v18 + 16))
      {
        MEMORY[0x26D61D8F0](5);
        result = MEMORY[0x26D61D8F0](*(v18 + 16));
        v19 = *(v18 + 16);
        if (v19)
        {

          v20 = v18 + 40;
          do
          {

            sub_268689A24();

            v20 += 16;
            --v19;
          }

          while (v19);
        }
      }
    }
  }

  return result;
}

uint64_t sub_2685FC358(uint64_t a1, char **a2)
{
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 16);

    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v7);
    sub_2685B43A4(v6, v5);

    v8 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
      *a2 = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_2685B3F48((v10 > 1), v11 + 1, 1, v8);
      *a2 = v8;
    }

    *(v8 + 2) = v11 + 1;
    v8[v11 + 32] = 10;
  }

  swift_beginAccess();
  if (!*(*(a1 + 32) + 16) || (v12 = , sub_268677154(v12, 2), result = , !v2))
  {
    swift_beginAccess();
    v14 = *(a1 + 40);
    if (!v14 || (v16 = *(a1 + 56), v15 = *(a1 + 64), v17 = *(a1 + 48), v18 = *(a1 + 72), v21[0] = *(a1 + 40), v21[1] = v17, v21[2] = v16, v21[3] = v15, v22 = v18, , sub_2685BA80C(v17, v16), , sub_26867326C(v21, 3), result = sub_268601C90(v14, v17, v16, v15), !v2))
    {
      swift_beginAccess();
      if (!*(*(a1 + 80) + 16) || (v19 = , sub_268677104(v19, 4), result = , !v2))
      {
        result = swift_beginAccess();
        if (*(*(a1 + 88) + 16))
        {

          sub_2685B530C(v20, 5);
        }
      }
    }
  }

  return result;
}

uint64_t sub_2685FC5C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(a1 + 24);
  if (!v9 || (v10 = *(a1 + 16), v11 = a4[14], , v11(v10, v9, 1, a3, a4), result = , !v5))
  {
    swift_beginAccess();
    if (!*(*(a1 + 32) + 16) || (v13 = a4[35], v14 = sub_2686167FC(), v15 = , v13(v15, 2, &type metadata for Google_Protobuf_EnumValueDescriptorProto, v14, a3, a4), result = , !v5))
    {
      swift_beginAccess();
      if (!*(a1 + 40) || (v16 = *(a1 + 72), v17 = *(a1 + 64), v25 = *(a1 + 40), v26 = *(a1 + 48), v27 = v17, v28 = v16, v18 = a4[17], v19 = sub_268614AE8(), result = v18(&v25, 3, &type metadata for Google_Protobuf_EnumOptions, v19, a3, a4), !v5))
      {
        swift_beginAccess();
        if (!*(*(a1 + 80) + 16) || (v20 = a4[35], v21 = sub_268616654(), v22 = , v20(v22, 4, &type metadata for Google_Protobuf_EnumDescriptorProto.EnumReservedRange, v21, a3, a4), result = , !v5))
        {
          result = swift_beginAccess();
          if (*(*(a1 + 88) + 16))
          {
            v23 = a4[32];

            v23(v24, 5, a3, a4);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2685FC864(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_23;
    }

    v7 = v4 == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_268689E14() & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (v6)
  {
LABEL_23:
    v46 = 0;
    return v46 & 1;
  }

  swift_beginAccess();
  v8 = *(a1 + 32);
  swift_beginAccess();
  v9 = *(a2 + 32);

  v10 = sub_2686123CC(v8, v9, sub_2685FE460);

  if ((v10 & 1) == 0)
  {
LABEL_22:

    goto LABEL_23;
  }

  swift_beginAccess();
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  swift_beginAccess();
  v16 = v11;
  v17 = *(a2 + 40);
  v18 = *(a2 + 48);
  v19 = *(a2 + 64);
  v52 = *(a2 + 56);
  v20 = *(a2 + 72);
  if (!v16)
  {
    v50 = *(a2 + 48);
    v30 = v12;
    v31 = v12;
    v32 = v13;
    sub_268601C34(0, v31, v13, v14);
    v33 = v17;
    v34 = v14;
    v35 = v30;
    if (!v33)
    {
      sub_268601C34(0, v50, v52, v19);
      sub_268601C90(0, v30, v32, v14);
      goto LABEL_20;
    }

    v48 = v33;
    v36 = v50;
    sub_268601C34(v33, v50, v52, v19);
    v37 = v19;
    v38 = v52;

    v39 = 0;
    goto LABEL_18;
  }

  v59 = v16;
  v60 = v12;
  v61 = v13;
  v62 = v14;
  v63 = v15;
  if (!v17)
  {
    v48 = 0;
    v51 = v18;
    v39 = v16;
    v35 = v12;
    v40 = v12;
    v32 = v13;
    v41 = v13;
    v34 = v14;
    sub_268601C34(v16, v40, v41, v14);
    v38 = v52;
    sub_268601C34(0, v51, v52, v19);
    sub_268601C34(v39, v35, v32, v14);
    sub_268601C34(0, v51, v52, v19);
    sub_268601C34(v39, v35, v32, v14);
    v37 = v19;

    v36 = v51;

    sub_268601C90(0, v51, v52, v19);
    sub_268601C90(v39, v35, v32, v34);

    sub_2685B593C(v35, v32);

LABEL_18:
    sub_268601C90(v39, v35, v32, v34);
    sub_268601C90(v48, v36, v38, v37);
    goto LABEL_23;
  }

  v54 = v17;
  v55 = v18;
  v56 = v52;
  v57 = v19;
  v58 = v20;
  v49 = v16;
  sub_268601C34(v16, v12, v13, v14);
  sub_268601C34(v17, v18, v52, v19);
  v21 = v12;
  v22 = v12;
  v23 = v13;
  v24 = v13;
  v25 = v14;
  sub_268601C34(v49, v22, v24, v14);
  v53 = _s20SiriOntologyProtobuf07Google_C12_EnumOptionsV2eeoiySbAC_ACtFZ_0(&v59, &v54);
  v26 = v55;
  v27 = v56;

  sub_2685B593C(v26, v27);

  v28 = v60;
  v29 = v61;

  sub_2685B593C(v28, v29);

  sub_268601C90(v49, v21, v23, v25);
  if ((v53 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  swift_beginAccess();
  v42 = *(a1 + 80);
  swift_beginAccess();
  v43 = *(a2 + 80);

  v44 = sub_268611F48(v42, v43);

  if ((v44 & 1) == 0)
  {
    goto LABEL_22;
  }

  swift_beginAccess();
  v45 = *(a1 + 88);
  swift_beginAccess();
  v46 = sub_26860EBDC(v45, *(a2 + 88));

  return v46 & 1;
}

uint64_t sub_2685FCE24@<X0>(void *a1@<X8>)
{
  if (qword_28028BCC0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C588;
  v2 = qword_28028C590;
  v3 = unk_28028C598;
  *a1 = qword_28028C580;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685FCF44()
{
  result = MEMORY[0x26D61D4B0](0xD000000000000012, 0x8000000268695410);
  qword_28028C5A8 = 0xD000000000000023;
  unk_28028C5B0 = 0x8000000268694980;
  return result;
}

uint64_t static Google_Protobuf_EnumDescriptorProto.EnumReservedRange._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BCD8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C5C0;
  v2 = qword_28028C5C8;
  v3 = unk_28028C5D0;
  *a1 = qword_28028C5B8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685FD090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 80))(v3 + 16, a2, a3);
      }

      else if (result == 2)
      {
        (*(a3 + 80))(v3 + 24, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_2685FD154(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0x100000000) == 0)
  {
    v8 = a4;
    MEMORY[0x26D61D8F0](1);
    v9 = MEMORY[0x26D61D920](v8);
  }

  if ((a5 & 0x100000000) == 0)
  {
    MEMORY[0x26D61D8F0](2);
    v9 = MEMORY[0x26D61D920](a5);
  }

  v10 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v10 != 2)
    {
      return v9;
    }

    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
LABEL_12:
    if (v11 == v12)
    {
      return v9;
    }

    return sub_268689844();
  }

  if (v10)
  {
    v11 = a2;
    v12 = a2 >> 32;
    goto LABEL_12;
  }

  if ((a3 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return v9;
}

char *sub_2685FD214(char *result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = result;
  if ((a4 & 0x100000000) == 0)
  {
    v9 = a5;
    result = sub_2686440C0(a4, 1);
    if (v5)
    {
      return result;
    }

    a5 = v9;
  }

  if ((a5 & 0x100000000) != 0 || (result = sub_2686440C0(a5, 2), !v5))
  {
    v10 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v10 != 2)
      {
        return result;
      }

      v11 = *(a2 + 16);
      v12 = *(a2 + 24);
    }

    else
    {
      if (!v10)
      {
        if ((a3 & 0xFF000000000000) == 0)
        {
          return result;
        }

        goto LABEL_14;
      }

      v11 = a2;
      v12 = a2 >> 32;
    }

    if (v11 == v12)
    {
      return result;
    }

LABEL_14:
    if (*(v8 + 64) == 1)
    {
      return sub_26863B108(a2, a3, v8);
    }
  }

  return result;
}

uint64_t sub_2685FD2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = *(v3 + 24);
  v11 = *(v3 + 28);
  if ((*(v3 + 20) & 1) != 0 || (result = (*(a3 + 24))(*(v3 + 16), 1, a2, a3), !v4))
  {
    if ((v11 & 1) != 0 || (result = (*(a3 + 24))(v10, 2, a2, a3), !v4))
    {
      sub_2685BA80C(v8, v9);
      UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
      return sub_2685B593C(v8, v9);
    }
  }

  return result;
}

uint64_t _s20SiriOntologyProtobuf07Google_C16_DescriptorProtoV13ReservedRangeV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  v5 = *(v0 + 24);
  v6 = *(v0 + 28);
  sub_268689E94();
  v10 = v15;
  v11 = v16;
  v12 = v17;
  v8 = v13;
  v9 = v14;
  sub_2685FD154(&v8, v1, v2, v3 | (v4 << 32), v5 | (v6 << 32));
  v15 = v10;
  v16 = v11;
  v17 = v12;
  v13 = v8;
  v14 = v9;
  return sub_268689EF4();
}

uint64_t sub_2685FD4AC@<X0>(void *a1@<X8>)
{
  if (qword_28028BCD8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C5C0;
  v2 = qword_28028C5C8;
  v3 = unk_28028C5D0;
  *a1 = qword_28028C5B8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

__n128 sub_2685FD5A0(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 20);
  v7 = *(v1 + 24);
  v8 = *(v1 + 28);
  v9 = a1[3];
  v15 = a1[2];
  v16 = v9;
  v17 = *(a1 + 8);
  v10 = a1[1];
  v13 = *a1;
  v14 = v10;
  sub_2685FD154(&v13, v3, v4, v5 | (v6 << 32), v7 | (v8 << 32));
  v11 = v16;
  a1[2] = v15;
  a1[3] = v11;
  *(a1 + 8) = v17;
  result = v14;
  *a1 = v13;
  a1[1] = result;
  return result;
}

uint64_t sub_2685FD644(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 20);
  v6 = *(v1 + 24);
  v7 = *(v1 + 28);
  sub_268689E94();
  v11 = v16;
  v12 = v17;
  v13 = v18;
  v9 = v14;
  v10 = v15;
  sub_2685FD154(&v9, v2, v3, v4 | (v5 << 32), v6 | (v7 << 32));
  v16 = v11;
  v17 = v12;
  v18 = v13;
  v14 = v9;
  v15 = v10;
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_EnumValueDescriptorProto._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BCE0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C5E0;
  v2 = qword_28028C5E8;
  v3 = unk_28028C5F0;
  *a1 = qword_28028C5D8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685FD7D0(uint64_t a1)
{
  *(v1 + 32) = 0;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 36) = 1;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 40) = 0u;
  swift_beginAccess();
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  swift_beginAccess();
  v5 = *(a1 + 32);
  LOBYTE(v4) = *(a1 + 36);
  swift_beginAccess();
  *(v1 + 32) = v5;
  *(v1 + 36) = v4;
  swift_beginAccess();
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);

  sub_268601C34(v6, v7, v8, v9);

  swift_beginAccess();
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  v14 = *(v1 + 64);
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  *(v1 + 56) = v8;
  *(v1 + 64) = v9;
  *(v1 + 72) = v10;
  sub_268601C90(v11, v12, v13, v14);
  return v1;
}

uint64_t sub_2685FD938()
{

  sub_268601C90(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t Google_Protobuf_EnumValueDescriptorProto.isInitialized.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = v1[5];
  if (!v2)
  {
    return 1;
  }

  v4 = v1[6];
  v3 = v1[7];
  v5 = v1[8];
  v19[0] = v5;

  sub_2685BA80C(v4, v3);

  if (ExtensionFieldValueSet.isInitialized.getter())
  {
    v18 = v3;
    v6 = sub_2685F0E50(v2);
    result = v6 + 32;
    v8 = -*(v6 + 16);
    v9 = -1;
    while (1)
    {
      if (v8 + v9 == -1)
      {

        sub_268601C90(v2, v4, v18, v5);
        return 1;
      }

      if (++v9 >= *(v6 + 16))
      {
        break;
      }

      v10 = result + 40;
      sub_2685B1724(result, v19);
      v11 = v20;
      v12 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v13 = (*(v12 + 32))(v11, v12);
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = v10;
      if ((v13 & 1) == 0)
      {

        v14 = v2;
        v15 = v4;
        v16 = v18;
        v17 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = v2;
    v15 = v4;
    v16 = v3;
    v17 = v5;
LABEL_9:
    sub_268601C90(v14, v15, v16, v17);
    return 0;
  }

  return result;
}

uint64_t sub_2685FDB14(void *a1)
{
  swift_beginAccess();
  v2 = a1[5];
  if (!v2)
  {
    return 1;
  }

  v4 = a1[6];
  v3 = a1[7];
  v5 = a1[8];
  v19[0] = v5;

  sub_2685BA80C(v4, v3);

  if (ExtensionFieldValueSet.isInitialized.getter())
  {
    v18 = v3;
    v6 = sub_2685F0E50(v2);
    result = v6 + 32;
    v8 = -*(v6 + 16);
    v9 = -1;
    while (1)
    {
      if (v8 + v9 == -1)
      {

        sub_268601C90(v2, v4, v18, v5);
        return 1;
      }

      if (++v9 >= *(v6 + 16))
      {
        break;
      }

      v10 = result + 40;
      sub_2685B1724(result, v19);
      v11 = v20;
      v12 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v13 = (*(v12 + 32))(v11, v12);
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = v10;
      if ((v13 & 1) == 0)
      {

        v14 = v2;
        v15 = v4;
        v16 = v18;
        v17 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = v2;
    v15 = v4;
    v16 = v3;
    v17 = v5;
LABEL_9:
    sub_268601C90(v14, v15, v16, v17);
    return 0;
  }

  return result;
}

uint64_t sub_2685FDD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  result = v8(a3, a4);
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result == 3)
      {
        swift_beginAccess();
        v11 = *(a4 + 408);
        v12 = sub_268614B3C();
        v11(a1 + 40, &type metadata for Google_Protobuf_EnumValueOptions, v12, a3, a4);
        goto LABEL_5;
      }

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        swift_beginAccess();
        (*(a4 + 344))(a1 + 16, a3, a4);
        goto LABEL_5;
      }

LABEL_6:
      result = v8(a3, a4);
    }

    swift_beginAccess();
    (*(a4 + 80))(a1 + 32, a3, a4);
LABEL_5:
    swift_endAccess();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_2685FDEC8(uint64_t a1, __int128 *a2)
{
  swift_beginAccess();
  if (*(a1 + 24))
  {
    MEMORY[0x26D61D8F0](1);

    sub_268689A24();
  }

  swift_beginAccess();
  if ((*(a1 + 36) & 1) == 0)
  {
    v5 = *(a1 + 32);
    MEMORY[0x26D61D8F0](2);
    MEMORY[0x26D61D920](v5);
  }

  result = swift_beginAccess();
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
    MEMORY[0x26D61D8F0](3);
    v12 = a2[3];
    v22 = a2[2];
    v23 = v12;
    v24 = *(a2 + 8);
    v13 = a2[1];
    v20 = *a2;
    v21 = v13;
    if (v11 != 2)
    {
      MEMORY[0x26D61D8F0](1);
      sub_268689EB4();
    }

    v14 = *(v7 + 16);

    sub_2685BA80C(v8, v9);

    if (v14 && (sub_2685DA980(v7, 999), v2) || (sub_2685DC564(&v20, 1000, 0x20000000, v10), v2))
    {
      MEMORY[0x26D61DC90](v2);
LABEL_12:
      result = sub_268601C90(v7, v8, v9, v10);
      v15 = v23;
      a2[2] = v22;
      a2[3] = v15;
      *(a2 + 8) = v24;
      v16 = v21;
      *a2 = v20;
      a2[1] = v16;
      return result;
    }

    v17 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v17 != 2)
      {
        goto LABEL_12;
      }

      v18 = *(v8 + 16);
      v19 = *(v8 + 24);
    }

    else
    {
      if (!v17)
      {
        if ((v9 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_22;
      }

      v18 = v8;
      v19 = v8 >> 32;
    }

    if (v18 == v19)
    {
      goto LABEL_12;
    }

LABEL_22:
    sub_268689844();
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_2685FE0EC(uint64_t a1, char **a2)
{
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 16);

    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v7);
    sub_2685B43A4(v6, v5);

    v8 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
      *a2 = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_2685B3F48((v10 > 1), v11 + 1, 1, v8);
      *a2 = v8;
    }

    *(v8 + 2) = v11 + 1;
    v8[v11 + 32] = 10;
  }

  swift_beginAccess();
  if ((*(a1 + 36) & 1) != 0 || (result = sub_2686440C0(*(a1 + 32), 2), !v2))
  {
    result = swift_beginAccess();
    v13 = *(a1 + 40);
    if (v13)
    {
      v15 = *(a1 + 56);
      v14 = *(a1 + 64);
      v16 = *(a1 + 48);
      v17[0] = *(a1 + 40);
      v17[1] = v16;
      v17[2] = v15;
      v17[3] = v14;
      v18 = *(a1 + 72);

      sub_2685BA80C(v16, v15);

      sub_2686736C0(v17, 3);
      return sub_268601C90(v13, v16, v15, v14);
    }
  }

  return result;
}

uint64_t sub_2685FE2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(a1 + 24);
  if (!v9 || (v10 = *(a1 + 16), v11 = *(a4 + 112), , v11(v10, v9, 1, a3, a4), result = , !v5))
  {
    swift_beginAccess();
    if ((*(a1 + 36) & 1) != 0 || (result = (*(a4 + 24))(*(a1 + 32), 2, a3, a4), !v5))
    {
      result = swift_beginAccess();
      if (*(a1 + 40))
      {
        v13 = *(a1 + 72);
        v14 = *(a1 + 64);
        v17 = *(a1 + 40);
        v18 = *(a1 + 48);
        v19 = v14;
        v20 = v13;
        v15 = *(a4 + 136);
        v16 = sub_268614B3C();
        return v15(&v17, 3, &type metadata for Google_Protobuf_EnumValueOptions, v16, a3, a4);
      }
    }
  }

  return result;
}

BOOL sub_2685FE460(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = v4 == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_268689E14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  swift_beginAccess();
  v8 = *(a1 + 32);
  v9 = *(a1 + 36);
  swift_beginAccess();
  v10 = *(a2 + 36);
  if (v9)
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (v8 != *(a2 + 32))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v12 = *(a1 + 40);
  v11 = *(a1 + 48);
  v14 = *(a1 + 56);
  v13 = *(a1 + 64);
  v15 = *(a1 + 72);
  swift_beginAccess();
  v17 = *(a2 + 40);
  v16 = *(a2 + 48);
  v19 = *(a2 + 56);
  v18 = *(a2 + 64);
  v20 = *(a2 + 72);
  if (v12)
  {
    v32 = v12;
    v33 = v11;
    v34 = v14;
    v35 = v13;
    v36 = v15;
    if (v17)
    {
      v27 = v17;
      v28 = v16;
      v29 = v19;
      v30 = v18;
      v31 = v20;
      sub_268601C34(v12, v11, v14, v13);
      sub_268601C34(v17, v16, v19, v18);
      sub_268601C34(v12, v11, v14, v13);
      v21 = sub_268613CA8(&v32, &v27);
      v22 = v28;
      v23 = v29;

      sub_2685B593C(v22, v23);

      v24 = v33;
      v25 = v34;

      sub_2685B593C(v24, v25);

      sub_268601C90(v12, v11, v14, v13);
      return (v21 & 1) != 0;
    }

    sub_268601C34(v12, v11, v14, v13);
    sub_268601C34(0, v16, v19, v18);
    sub_268601C34(v12, v11, v14, v13);

    sub_2685B593C(v11, v14);

LABEL_23:
    sub_268601C90(v12, v11, v14, v13);
    sub_268601C90(v17, v16, v19, v18);
    return 0;
  }

  sub_268601C34(0, v11, v14, v13);
  if (v17)
  {
    sub_268601C34(v17, v16, v19, v18);
    goto LABEL_23;
  }

  sub_268601C34(0, v16, v19, v18);
  sub_268601C90(0, v11, v14, v13);
  return 1;
}

uint64_t sub_2685FE810@<X0>(void *a1@<X8>)
{
  if (qword_28028BCE0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C5E0;
  v2 = qword_28028C5E8;
  v3 = unk_28028C5F0;
  *a1 = qword_28028C5D8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_ServiceDescriptorProto._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BCE8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C600;
  v2 = qword_28028C608;
  v3 = unk_28028C610;
  *a1 = qword_28028C5F8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

double sub_2685FE9FC()
{
  type metadata accessor for Google_Protobuf_ServiceDescriptorProto._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = MEMORY[0x277D84F90];
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  qword_28028C618 = v0;
  return result;
}

uint64_t sub_2685FEA4C(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = MEMORY[0x277D84F90];
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 40) = 0u;
  swift_beginAccess();
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  swift_beginAccess();
  v5 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v5;

  swift_beginAccess();
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  sub_268601C34(v6, v7, v8, v9);

  swift_beginAccess();
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  v14 = *(v1 + 64);
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  *(v1 + 56) = v8;
  *(v1 + 64) = v9;
  *(v1 + 72) = v10;
  sub_268601C90(v11, v12, v13, v14);
  return v1;
}

uint64_t sub_2685FEBAC()
{

  sub_268601C90(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_2685FEC04(void *a1)
{
  swift_beginAccess();

  v3 = sub_2685F10F0(v2, &type metadata for Google_Protobuf_MethodDescriptorProto, sub_268616B4C);

  result = v3 + 32;
  v5 = -*(v3 + 16);
  v6 = -1;
  while (v5 + v6 != -1)
  {
    if (++v6 >= *(v3 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    v7 = result + 40;
    sub_2685B1724(result, v27);
    v8 = v28;
    v9 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v10 = (*(v9 + 32))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v27);
    result = v7;
    if ((v10 & 1) == 0)
    {

      return 0;
    }
  }

  swift_beginAccess();
  v11 = a1[5];
  if (!v11)
  {
    return 1;
  }

  v13 = a1[6];
  v12 = a1[7];
  v14 = a1[8];
  v27[0] = v14;

  sub_2685BA80C(v13, v12);

  if ((ExtensionFieldValueSet.isInitialized.getter() & 1) == 0)
  {
    v22 = v11;
    v23 = v13;
    v24 = v12;
    v25 = v14;
LABEL_15:
    sub_268601C90(v22, v23, v24, v25);
    return 0;
  }

  v26 = v12;
  v15 = sub_2685F0E50(v11);
  result = v15 + 32;
  v16 = -*(v15 + 16);
  v17 = -1;
  while (v16 + v17 != -1)
  {
    if (++v17 >= *(v15 + 16))
    {
      goto LABEL_20;
    }

    v18 = result + 40;
    sub_2685B1724(result, v27);
    v19 = v28;
    v20 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v21 = (*(v20 + 32))(v19, v20);
    __swift_destroy_boxed_opaque_existential_1(v27);
    result = v18;
    if ((v21 & 1) == 0)
    {

      v22 = v11;
      v23 = v13;
      v24 = v26;
      v25 = v14;
      goto LABEL_15;
    }
  }

  sub_268601C90(v11, v13, v26, v14);
  return 1;
}

uint64_t sub_2685FEEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v7 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = *(v7 + 16);
    a4(0);
    swift_allocObject();
    v15 = a6(v16);
    *(v10 + 16) = v15;
  }

  return a7(v15, a1, a2, a3);
}

uint64_t sub_2685FEFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  result = v8(a3, a4);
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result == 3)
      {
        swift_beginAccess();
        v13 = *(a4 + 408);
        v14 = sub_268614B90();
        v13(a1 + 40, &type metadata for Google_Protobuf_ServiceOptions, v14, a3, a4);
        goto LABEL_5;
      }

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        swift_beginAccess();
        (*(a4 + 344))(a1 + 16, a3, a4);
        goto LABEL_5;
      }

LABEL_6:
      result = v8(a3, a4);
    }

    swift_beginAccess();
    v11 = *(a4 + 416);
    v12 = sub_268616B4C();
    v11(a1 + 32, &type metadata for Google_Protobuf_MethodDescriptorProto, v12, a3, a4);
LABEL_5:
    swift_endAccess();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_2685FF178(uint64_t a1, __int128 *a2)
{
  swift_beginAccess();
  if (*(a1 + 24))
  {
    MEMORY[0x26D61D8F0](1);

    sub_268689A24();
  }

  swift_beginAccess();
  if (!*(*(a1 + 32) + 16) || (v5 = , sub_2685DBA60(v5, 2, sub_2686005E4), result = , !v2))
  {
    result = swift_beginAccess();
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      v11 = *(a1 + 72);
      MEMORY[0x26D61D8F0](3);
      v12 = a2[3];
      v22 = a2[2];
      v23 = v12;
      v24 = *(a2 + 8);
      v13 = a2[1];
      v20 = *a2;
      v21 = v13;
      if (v11 != 2)
      {
        MEMORY[0x26D61D8F0](33);
        sub_268689EB4();
      }

      v14 = *(v7 + 16);

      sub_2685BA80C(v8, v9);

      if (v14 && (sub_2685DA980(v7, 999), v2) || (sub_2685DC564(&v20, 1000, 0x20000000, v10), v2))
      {
        MEMORY[0x26D61DC90](v2);
LABEL_12:
        result = sub_268601C90(v7, v8, v9, v10);
        v15 = v23;
        a2[2] = v22;
        a2[3] = v15;
        *(a2 + 8) = v24;
        v16 = v21;
        *a2 = v20;
        a2[1] = v16;
        return result;
      }

      v17 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        if (v17 != 2)
        {
          goto LABEL_12;
        }

        v18 = *(v8 + 16);
        v19 = *(v8 + 24);
      }

      else
      {
        if (!v17)
        {
          if ((v9 & 0xFF000000000000) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_22;
        }

        v18 = v8;
        v19 = v8 >> 32;
      }

      if (v18 == v19)
      {
        goto LABEL_12;
      }

LABEL_22:
      sub_268689844();
      goto LABEL_12;
    }
  }

  return result;
}