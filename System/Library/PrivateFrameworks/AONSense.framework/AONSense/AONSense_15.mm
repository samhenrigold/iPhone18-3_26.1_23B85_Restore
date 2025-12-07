uint64_t Proto_Gnss_Emergency_SessionStatus.status.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  if (*(v1 + 22) == 33)
  {
    return 0;
  }

  else
  {
    return *(v1 + 22);
  }
}

uint64_t Proto_Gnss_Emergency_SessionStatus.status.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 22) = a1;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.status.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 22);
  if (v7 == 33)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_SessionStatus.status.modify;
}

void Proto_Gnss_Emergency_SessionStatus.status.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 22) = v3;

  free(v2);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasStatus.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 22) != 33;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearStatus()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v6);
    *(v1 + v2) = v5;
  }

  swift_beginAccess();
  *(v4 + 22) = 33;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.endCause.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  if (*(v1 + 23) == 24)
  {
    return 0;
  }

  else
  {
    return *(v1 + 23);
  }
}

uint64_t Proto_Gnss_Emergency_SessionStatus.endCause.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 23) = a1;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.endCause.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 23);
  if (v7 == 24)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_SessionStatus.endCause.modify;
}

void Proto_Gnss_Emergency_SessionStatus.endCause.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 23) = v3;

  free(v2);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasEndCause.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 23) != 24;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearEndCause()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v6);
    *(v1 + v2) = v5;
  }

  swift_beginAccess();
  *(v4 + 23) = 24;
}

double Proto_Gnss_Emergency_SessionStatus.horzAccuracyRequested.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  result = *(v1 + 24);
  if (*(v1 + 32))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.horzAccuracyRequested.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 24) = a1;
  *(v6 + 32) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.horzAccuracyRequested.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  if (*(v6 + 32))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SessionStatus.horzAccuracyRequested.modify;
}

void Proto_Gnss_Emergency_SessionStatus.horzAccuracyRequested.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 24) = v3;
  *(v7 + 32) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasHorzAccuracyRequested.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return (*(v1 + 32) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearHorzAccuracyRequested()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v6);
    *(v1 + v2) = v5;
  }

  swift_beginAccess();
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;
}

double Proto_Gnss_Emergency_SessionStatus.lat.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  result = *(v1 + 40);
  if (*(v1 + 48))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.lat.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 40) = a1;
  *(v6 + 48) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.lat.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 40);
  if (*(v6 + 48))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SessionStatus.lat.modify;
}

void Proto_Gnss_Emergency_SessionStatus.lat.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 40) = v3;
  *(v7 + 48) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasLat.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return (*(v1 + 48) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearLat()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v6);
    *(v1 + v2) = v5;
  }

  swift_beginAccess();
  *(v4 + 40) = 0;
  *(v4 + 48) = 1;
}

double Proto_Gnss_Emergency_SessionStatus.lon.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  result = *(v1 + 56);
  if (*(v1 + 64))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.lon.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 56) = a1;
  *(v6 + 64) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.lon.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 56);
  if (*(v6 + 64))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SessionStatus.lon.modify;
}

void Proto_Gnss_Emergency_SessionStatus.lon.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 56) = v3;
  *(v7 + 64) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasLon.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return (*(v1 + 64) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearLon()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v6);
    *(v1 + v2) = v5;
  }

  swift_beginAccess();
  *(v4 + 56) = 0;
  *(v4 + 64) = 1;
}

double Proto_Gnss_Emergency_SessionStatus.alt.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  result = *(v1 + 72);
  if (*(v1 + 80))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.alt.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 72) = a1;
  *(v6 + 80) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.alt.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 72);
  if (*(v6 + 80))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SessionStatus.alt.modify;
}

void Proto_Gnss_Emergency_SessionStatus.alt.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 72) = v3;
  *(v7 + 80) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasAlt.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return (*(v1 + 80) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearAlt()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v6);
    *(v1 + v2) = v5;
  }

  swift_beginAccess();
  *(v4 + 72) = 0;
  *(v4 + 80) = 1;
}

double Proto_Gnss_Emergency_SessionStatus.uncSemiMajor.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  result = *(v1 + 88);
  if (*(v1 + 96))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.uncSemiMajor.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 88) = a1;
  *(v6 + 96) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.uncSemiMajor.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 88);
  if (*(v6 + 96))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SessionStatus.uncSemiMajor.modify;
}

void Proto_Gnss_Emergency_SessionStatus.uncSemiMajor.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 88) = v3;
  *(v7 + 96) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasUncSemiMajor.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return (*(v1 + 96) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearUncSemiMajor()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v6);
    *(v1 + v2) = v5;
  }

  swift_beginAccess();
  *(v4 + 88) = 0;
  *(v4 + 96) = 1;
}

double Proto_Gnss_Emergency_SessionStatus.uncSemiMinor.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  result = *(v1 + 104);
  if (*(v1 + 112))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.uncSemiMinor.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 104) = a1;
  *(v6 + 112) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.uncSemiMinor.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 104);
  if (*(v6 + 112))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SessionStatus.uncSemiMinor.modify;
}

void Proto_Gnss_Emergency_SessionStatus.uncSemiMinor.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 104) = v3;
  *(v7 + 112) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasUncSemiMinor.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return (*(v1 + 112) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearUncSemiMinor()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v6);
    *(v1 + v2) = v5;
  }

  swift_beginAccess();
  *(v4 + 104) = 0;
  *(v4 + 112) = 1;
}

double Proto_Gnss_Emergency_SummaryReport.requestedResponseTimeoutSeconds.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  result = *(v2 + 120);
  if (*(v2 + 128))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.uncAlt.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 120) = a1;
  *(v6 + 128) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.uncAlt.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 120);
  if (*(v6 + 128))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SessionStatus.uncAlt.modify;
}

void Proto_Gnss_Emergency_SessionStatus.uncAlt.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 120) = v3;
  *(v7 + 128) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_SummaryReport.hasRequestedResponseTimeoutSeconds.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 128) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearUncAlt()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v6);
    *(v1 + v2) = v5;
  }

  swift_beginAccess();
  *(v4 + 120) = 0;
  *(v4 + 128) = 1;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.ephProvided.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 129) & 1;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.ephProvided.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 129) = a1 & 1;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.ephProvided.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 129) & 1;
  return Proto_Gnss_Emergency_SessionStatus.ephProvided.modify;
}

void Proto_Gnss_Emergency_SessionStatus.ephProvided.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 129) = v5;

  free(v2);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasEphProvided.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 129) != 2;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearEphProvided()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v6);
    *(v1 + v2) = v5;
  }

  swift_beginAccess();
  *(v4 + 129) = 2;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.referenceTimeProvided.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 130) & 1;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.referenceTimeProvided.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 130) = a1 & 1;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.referenceTimeProvided.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 130) & 1;
  return Proto_Gnss_Emergency_SessionStatus.referenceTimeProvided.modify;
}

void Proto_Gnss_Emergency_SessionStatus.referenceTimeProvided.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 130) = v5;

  free(v2);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasReferenceTimeProvided.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 130) != 2;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearReferenceTimeProvided()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v6);
    *(v1 + v2) = v5;
  }

  swift_beginAccess();
  *(v4 + 130) = 2;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.referenceLocationProvided.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 131) & 1;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.referenceLocationProvided.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 131) = a1 & 1;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.referenceLocationProvided.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 131) & 1;
  return Proto_Gnss_Emergency_SessionStatus.referenceLocationProvided.modify;
}

void Proto_Gnss_Emergency_SessionStatus.referenceLocationProvided.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 131) = v5;

  free(v2);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasReferenceLocationProvided.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 131) != 2;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearReferenceLocationProvided()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v6);
    *(v1 + v2) = v5;
  }

  swift_beginAccess();
  *(v4 + 131) = 2;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.nwRefLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v8[9];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1 + v8[10];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1 + v8[11];
  *v16 = 0;
  *(v16 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  }

  return result;
}

int *Proto_Gnss_Emergency_NetworkReferenceLocation.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + result[10];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + result[11];
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.nwRefLocation.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
  v12 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_SessionStatus.nwRefLocation.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 8) = 1;
    v22 = v14 + v9[8];
    *v22 = 0;
    *(v22 + 8) = 1;
    v23 = v14 + v9[9];
    *v23 = 0;
    *(v23 + 8) = 1;
    v24 = v14 + v9[10];
    *v24 = 0;
    *(v24 + 4) = 1;
    v25 = v14 + v9[11];
    *v25 = 0;
    *(v25 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
  }

  return Proto_Gnss_Emergency_SessionStatus.nwRefLocation.modify;
}

void Proto_Gnss_Emergency_SessionStatus.nwRefLocation.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasNwRefLocation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearNwRefLocation()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_SessionStatus.nwRefTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  }

  return result;
}

int *Proto_Gnss_Emergency_NetworkReferenceTime.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.nwRefTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
  v12 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_SessionStatus.nwRefTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
  }

  return Proto_Gnss_Emergency_SessionStatus.nwRefTime.modify;
}

void Proto_Gnss_Emergency_SessionStatus.nwRefTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasNwRefTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearNwRefTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_ClsGpsCellTime.msPart.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsGpsCellTime.msPart.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsGpsCellTime.clearMsPart()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsGpsCellTime.lsPart.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsGpsCellTime.lsPart.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsGpsCellTime.clearLsPart()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsUtranCellTime.utranGpsTimingCellFrames.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 20), v5, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  }

  UnknownStorage.init()();
  v9 = a1 + *(v7 + 20);
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + *(v7 + 24);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ClsUtranCellTime.utranGpsTimingCellFrames.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  v4 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_ClsUtranCellTime.utranGpsTimingCellFrames.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  }

  return Proto_Gnss_Emergency_ClsUtranCellTime.utranGpsTimingCellFrames.modify;
}

BOOL Proto_Gnss_Emergency_SuplInitVer2Extension.hasESlpaddress.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + *(v12 + 20), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  outlined destroy of Any?(v11, a1, a2);
  return v14;
}

uint64_t Proto_Gnss_Emergency_SuplInitVer2Extension.clearESlpaddress()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Proto_Gnss_Emergency_ClsUtranCellTime.refCellSfn.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsUtranCellTime.refCellSfn.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsUtranCellTime.clearRefCellSfn()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsUtranCellTime.refCellPsc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsUtranCellTime.refCellPsc.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsUtranCellTime.clearRefCellPsc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsUtranCellTime.roundTripTime.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsUtranCellTime.roundTripTime.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsUtranCellTime.clearRoundTripTime()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsUtranCellTime.modemState.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 36));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_ClsUtranCellTime.modemState.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsUtranCellTime.modemState.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 36);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_ClsUtranCellTime.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  *(a1 + v2[9]) = 5;
  return result;
}

uint64_t Proto_Gnss_Emergency_Plmn.mcc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Plmn.mcc.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Plmn(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Plmn.clearMcc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Plmn(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Plmn.mnc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Plmn.mnc.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Plmn(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Plmn.clearMnc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Plmn(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Plmn.threeDigitMnc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Plmn.threeDigitMnc.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Plmn(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Plmn.clearThreeDigitMnc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Plmn(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_SessionInfo.sessionProtocol.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_SessionInfo.sessionProtocol.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_SessionInfo.sessionProtocol.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_SessionInfo.posProtocol.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 24));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_SessionInfo.posProtocol.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_SessionInfo.posProtocol.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_SessionInfo.sessionID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_SessionInfo.sessionID.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionInfo.clearSessionID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_SessionInfo.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  *(a1 + result[5]) = 6;
  *(a1 + result[6]) = 7;
  v3 = a1 + result[7];
  *v3 = 0;
  *(v3 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.sessionID.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 20))
  {
    return 0;
  }

  else
  {
    return *(v2 + 16);
  }
}

void (*Proto_Gnss_Emergency_PositionRequest.interval.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 20))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.interval.modify;
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasSessionID.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 20) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.method.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20));
  swift_beginAccess();
  if (*(v1 + 21) == 5)
  {
    return 0;
  }

  else
  {
    return *(v1 + 21);
  }
}

uint64_t Proto_Gnss_Emergency_PositionRequest.method.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionRequest._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 21) = a1;
  return result;
}

void (*Proto_Gnss_Emergency_PositionRequest.method.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 21);
  if (v7 == 5)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_PositionRequest.method.modify;
}

void Proto_Gnss_Emergency_PositionRequest.method.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionRequest._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 21) = v3;

  free(v2);
}

BOOL Proto_Gnss_Emergency_PositionRequest.hasMethod.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20));
  swift_beginAccess();
  return *(v1 + 21) != 5;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PositionRequest.clearMethod()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v5 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionRequest._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 21) = 5;
}

void (*Proto_Gnss_Emergency_PositionRequest.responseTime.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  if (*(v6 + 28))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.responseTime.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.horizontalAccuracy.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  if (*(v6 + 36))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.horizontalAccuracy.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.velocityRequested.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 40);
  if (*(v6 + 44))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.velocityRequested.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.horizontalConfidence.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 48);
  if (*(v6 + 52))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.horizontalConfidence.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.verticalAccuracy.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 56);
  if (*(v6 + 60))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.verticalAccuracy.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.verticalConfidence.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 64);
  if (*(v6 + 68))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.verticalConfidence.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.verticalRequested.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 72);
  if (*(v6 + 76))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.verticalRequested.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.assistanceAvailability.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 80);
  if (*(v6 + 84))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.assistanceAvailability.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.requestedGnss.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 88);
  if (*(v6 + 92))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.requestedGnss.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.locCordinateTypeAllowed.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 96);
  if (*(v6 + 100))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.locCordinateTypeAllowed.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.velocityTypes.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 104);
  if (*(v6 + 108))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.velocityTypes.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.reportAmount.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 112);
  if (*(v6 + 116))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.reportAmount.modify;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.posProtocol.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20));
  swift_beginAccess();
  if (*(v1 + 117) == 7)
  {
    return 0;
  }

  else
  {
    return *(v1 + 117);
  }
}

uint64_t Proto_Gnss_Emergency_PositionRequest.posProtocol.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionRequest._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 117) = a1;
  return result;
}

void (*Proto_Gnss_Emergency_PositionRequest.posProtocol.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 117);
  if (v7 == 7)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_PositionRequest.posProtocol.modify;
}

void Proto_Gnss_Emergency_PositionRequest.posProtocol.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionRequest._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 117) = v3;

  free(v2);
}

BOOL Proto_Gnss_Emergency_PositionRequest.hasPosProtocol.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20));
  swift_beginAccess();
  return *(v1 + 117) != 7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PositionRequest.clearPosProtocol()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v5 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionRequest._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 117) = 7;
}

void (*Proto_Gnss_Emergency_PositionRequest.sessionID.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 120);
  if (*(v6 + 124))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.sessionID.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.horizontalAccuracyMeters.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 128);
  if (*(v6 + 132))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.horizontalAccuracyMeters.modify;
}

uint64_t Proto_Gnss_Emergency_UtranGpsTimeMeasured.ueUtranCellTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 20), v5, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
  }

  UnknownStorage.init()();
  v9 = v7[5];
  v10 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = a1 + v7[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v7[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v7[8];
  *v13 = 0;
  *(v13 + 4) = 1;
  *(a1 + v7[9]) = 5;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_UtranGpsTimeMeasured.ueUtranCellTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
  v4 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_UtranGpsTimeMeasured.ueUtranCellTime.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v9[5];
    v18 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = v14 + v9[6];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[7];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[8];
    *v21 = 0;
    *(v21 + 4) = 1;
    *(v14 + v9[9]) = 5;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
  }

  return Proto_Gnss_Emergency_UtranGpsTimeMeasured.ueUtranCellTime.modify;
}

uint64_t Proto_Gnss_Emergency_UtranGpsTimeMeasured.gpsUmtsTimeDifference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 24), v5, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  }

  UnknownStorage.init()();
  v9 = a1 + *(v7 + 20);
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + *(v7 + 24);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_UtranGpsTimeMeasured.gpsUmtsTimeDifference.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  v4 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Proto_Gnss_Emergency_UtranGpsTimeMeasured.gpsUmtsTimeDifference.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  }

  return Proto_Gnss_Emergency_UtranGpsTimeMeasured.gpsUmtsTimeDifference.modify;
}

uint64_t Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased.refFrameMsb.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased.refFrameMsb.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased.clearRefFrameMsb()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased.gpsTowSubms.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased.gpsTowSubms.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased.clearGpsTowSubms()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsGpsCellTime.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = a2 + *(result + 20);
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + *(result + 24);
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.refFrameMsb.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.refFrameMsb.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.clearRefFrameMsb()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.deltaTow.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.deltaTow.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.clearDeltaTow()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasured.utranTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 20), v5, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  }

  UnknownStorage.init()();
  v9 = *(v7 + 20);
  v10 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = *(v7 + 24);
  v12 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasured.utranTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  v4 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_GpsTimeMeasured.utranTime.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v9 + 24);
    v20 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  }

  return Proto_Gnss_Emergency_GpsTimeMeasured.utranTime.modify;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasured.geranTimeBased.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 24), v5, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
  }

  UnknownStorage.init()();
  v9 = a1 + *(v7 + 20);
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + *(v7 + 24);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasured.geranTimeBased.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_GpsTimeMeasured.geranTimeBased.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
  }

  return Proto_Gnss_Emergency_GpsTimeMeasured.geranTimeBased.modify;
}

BOOL Proto_Gnss_Emergency_UtranGpsTimeMeasured.hasGpsUmtsTimeDifference.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + *(v12 + 24), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  outlined destroy of Any?(v11, a1, a2);
  return v14;
}

uint64_t Proto_Gnss_Emergency_UtranGpsTimeMeasured.clearGpsUmtsTimeDifference()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasured.geranTimeAssisted.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 28), v5, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  }

  UnknownStorage.init()();
  v9 = a1 + *(v7 + 20);
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + *(v7 + 24);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasured.geranTimeAssisted.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_GpsTimeMeasured.geranTimeAssisted.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  }

  return Proto_Gnss_Emergency_GpsTimeMeasured.geranTimeAssisted.modify;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasured.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[7];
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasuredParams.gpsTimeMeasuredType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasuredParams.gpsTimeMeasuredType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsTimeMeasuredParams.gpsTimeMeasuredType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasuredParams.gpsTimeMeasured.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 24), v5, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  }

  UnknownStorage.init()();
  v9 = v7[5];
  v10 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = v7[6];
  v12 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = v7[7];
  v14 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasuredParams.gpsTimeMeasured.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_GpsTimeMeasuredParams.gpsTimeMeasured.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v9[5];
    v18 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = v9[6];
    v20 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = v9[7];
    v22 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  }

  return Proto_Gnss_Emergency_GpsTimeMeasuredParams.gpsTimeMeasured.modify;
}

uint64_t Proto_Gnss_Emergency_GpsTOD.gpsTodmsec.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsTOD.gpsTodmsec.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsTOD.clearGpsTodmsec()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsTOD.gpsTodfrac.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsTOD.gpsTodfrac.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsTOD.clearGpsTodfrac()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsTOD.gpsTodunc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsTOD.gpsTodunc.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsTOD.clearGpsTodunc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_Plmn.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = a2 + result[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + result[6];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + result[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_LocationInfo.gpsTow.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LocationInfo.gpsTow.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_LocationInfo.clearGpsTow()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LocationInfo.gpsWeek.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LocationInfo.gpsWeek.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_LocationInfo.clearGpsWeek()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LocationInfo.gpsTimeUncertainty.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LocationInfo.gpsTimeUncertainty.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_LocationInfo.clearGpsTimeUncertainty()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LocationInfo.fixType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 32));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_LocationInfo.fixType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LocationInfo.fixType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_LocationInfo.gpsTodpresent.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LocationInfo.gpsTodpresent.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_LocationInfo.clearGpsTodpresent()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LocationInfo.gpsTod.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 40), v5, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  }

  UnknownStorage.init()();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_LocationInfo.gpsTod.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 40);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_LocationInfo.gpsTod.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  }

  return Proto_Gnss_Emergency_LocationInfo.gpsTod.modify;
}

uint64_t Proto_Gnss_Emergency_LocationInfo.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  *(a1 + v2[8]) = 4;
  v6 = a1 + v2[9];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = v2[10];
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

uint64_t Proto_Gnss_Emergency_CellInfo.cellInfoPresent.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CellInfo.cellInfoPresent.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_CellInfo.clearCellInfoPresent()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_CellInfo.lac.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CellInfo.lac.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_CellInfo.clearLac()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_CellInfo.cellID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CellInfo.cellID.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_CellInfo.clearCellID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_CellInfo.plmn.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 32), v5, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  }

  UnknownStorage.init()();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CellInfo.plmn.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 32);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  v4 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_CellInfo.plmn.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  }

  return Proto_Gnss_Emergency_CellInfo.plmn.modify;
}

uint64_t Proto_Gnss_Emergency_CellInfo.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = v2[8];
  v7 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t Proto_Gnss_Emergency_UtranGanssTimeMeasured.utranTimingOfCellFrames.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 20));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Proto_Gnss_Emergency_UtranGanssTimeMeasured.utranTimingOfCellFrames.setter(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_UtranGanssTimeMeasured.utranTimingOfCellFrames.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_UtranGanssTimeMeasured.clearUtranTimingOfCellFrames()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_Emergency_UtranGanssTimeMeasured.refSfn.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_UtranGanssTimeMeasured.refSfn.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_UtranGanssTimeMeasured.clearRefSfn()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_UtranGanssTimeMeasured.refPsc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_UtranGanssTimeMeasured.refPsc.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_UtranGanssTimeMeasured.clearRefPsc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_UtranGanssTimeMeasured.cellInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 32), v5, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  }

  UnknownStorage.init()();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v7[8];
  v13 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_UtranGanssTimeMeasured.cellInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 32);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Proto_Gnss_Emergency_UtranGanssTimeMeasured.cellInfo.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v9[8];
    v21 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  }

  return Proto_Gnss_Emergency_UtranGanssTimeMeasured.cellInfo.modify;
}

BOOL Proto_Gnss_Emergency_CellInfo.hasPlmn.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + *(v12 + 32), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  outlined destroy of Any?(v11, a1, a2);
  return v14;
}

uint64_t Proto_Gnss_Emergency_CellInfo.clearPlmn()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Proto_Gnss_Emergency_UtranGanssTimeMeasured.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = v2[8];
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t Proto_Gnss_Emergency_GeranGanssTimeMeasured.refFrameMsb.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GeranGanssTimeMeasured.refFrameMsb.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GeranGanssTimeMeasured.clearRefFrameMsb()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GeranGanssTimeMeasured.refFrameNumber.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GeranGanssTimeMeasured.refFrameNumber.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GeranGanssTimeMeasured.clearRefFrameNumber()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GeranGanssTimeMeasured.cellInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 28), v5, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  }

  UnknownStorage.init()();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v7[8];
  v13 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GeranGanssTimeMeasured.cellInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_GeranGanssTimeMeasured.cellInfo.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v9[8];
    v21 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  }

  return Proto_Gnss_Emergency_GeranGanssTimeMeasured.cellInfo.modify;
}

BOOL Proto_Gnss_Emergency_GpsTimeMeasured.hasGeranTimeAssisted.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + *(v12 + 28), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  outlined destroy of Any?(v11, a1, a2);
  return v14;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasured.clearGeranTimeAssisted()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Proto_Gnss_Emergency_GeranGanssTimeMeasured.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = v2[7];
  v6 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.physicalCellID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsEutranCell.physicalCellID.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsEutranCell.clearPhysicalCellID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.earfcn.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsEutranCell.earfcn.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsEutranCell.clearEarfcn()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.sfn.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsEutranCell.sfn.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsEutranCell.clearSfn()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.cgiInfoPresent.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsEutranCell.cgiInfoPresent.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsEutranCell.clearCgiInfoPresent()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.plmn.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 36), v5, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  }

  UnknownStorage.init()();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.plmn.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 36);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  v4 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Proto_Gnss_Emergency_ClsEutranCell.plmn.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 36);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  }

  return Proto_Gnss_Emergency_ClsEutranCell.plmn.modify;
}

BOOL Proto_Gnss_Emergency_SuplContext.hasConfig.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + *(v12 + 36), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  outlined destroy of Any?(v11, a1, a2);
  return v14;
}

uint64_t Proto_Gnss_Emergency_SuplContext.clearConfig()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 36);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.eutranCellID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsEutranCell.eutranCellID.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsEutranCell.clearEutranCellID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.rsrp.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 44));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.secFromFrameStart.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsEutranCell.secFromFrameStart.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 44);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsEutranCell.clearSecFromFrameStart()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.fracSecFromFrameStart.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsEutranCell.fracSecFromFrameStart.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 48);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsEutranCell.clearFracSecFromFrameStart()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 48);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.ta.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 52));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.frameDrift.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsEutranCell.frameDrift.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 52);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsEutranCell.clearFrameDrift()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 52);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.dlearfcn.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 56));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.refTimeUncertainty.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsEutranCell.refTimeUncertainty.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 56);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsEutranCell.clearRefTimeUncertainty()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 56);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.bsAlign.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 60);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsEutranCell.bsAlign.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 60);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsEutranCell.clearBsAlign()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 60);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + v2[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = v2[9];
  v8 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  result = (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v10 = a1 + v2[10];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v2[11];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v2[12];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v2[13];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v2[14];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v2[15];
  *v15 = 0;
  *(v15 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasured.utranTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = v8[8];
  v14 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasured.utranTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  v12 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_GanssTimeMeasured.utranTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v9[8];
    v23 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
    (*(*(v23 - 8) + 56))(v14 + v22, 1, 1, v23);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  }

  return Proto_Gnss_Emergency_GanssTimeMeasured.utranTime.modify;
}

void Proto_Gnss_Emergency_GanssTimeMeasured.utranTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_GanssTimeMeasured.hasUtranTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssTimeMeasured.clearUtranTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasured.geranTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v8[7];
  v13 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasured.geranTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_GanssTimeMeasured.geranTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v9[7];
    v22 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
  }

  return Proto_Gnss_Emergency_GanssTimeMeasured.geranTime.modify;
}

void Proto_Gnss_Emergency_GanssTimeMeasured.geranTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_GanssTimeMeasured.hasGeranTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssTimeMeasured.clearGeranTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasured.eutranTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = v8[9];
  v15 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  v16 = a1 + v8[10];
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a1 + v8[11];
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = a1 + v8[12];
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = a1 + v8[13];
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = a1 + v8[14];
  *v20 = 0;
  *(v20 + 4) = 1;
  v21 = a1 + v8[15];
  *v21 = 0;
  *(v21 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasured.eutranTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  v12 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_GanssTimeMeasured.eutranTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[8];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v9[9];
    v24 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
    (*(*(v24 - 8) + 56))(v14 + v23, 1, 1, v24);
    v25 = v14 + v9[10];
    *v25 = 0;
    *(v25 + 4) = 1;
    v26 = v14 + v9[11];
    *v26 = 0;
    *(v26 + 4) = 1;
    v27 = v14 + v9[12];
    *v27 = 0;
    *(v27 + 4) = 1;
    v28 = v14 + v9[13];
    *v28 = 0;
    *(v28 + 4) = 1;
    v29 = v14 + v9[14];
    *v29 = 0;
    *(v29 + 4) = 1;
    v30 = v14 + v9[15];
    *v30 = 0;
    *(v30 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  }

  return Proto_Gnss_Emergency_GanssTimeMeasured.eutranTime.modify;
}

void Proto_Gnss_Emergency_GanssTimeMeasured.eutranTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_GanssTimeMeasured.hasEutranTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssTimeMeasured.clearEutranTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasuredParams.ganssTimeMeasuredType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasuredParams.ganssTimeMeasuredType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssTimeMeasuredParams.ganssTimeMeasuredType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasuredParams.ganssTimeMeasured.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 24), v5, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  }

  UnknownStorage.init()();
  v9 = *(v7 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v9) = static Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.defaultInstance;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasuredParams.ganssTimeMeasured.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_GanssTimeMeasuredParams.ganssTimeMeasured.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v17) = static Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.defaultInstance;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  }

  return Proto_Gnss_Emergency_GanssTimeMeasuredParams.ganssTimeMeasured.modify;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasuredParams.init()@<X0>(uint64_t (*a1)(void)@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = a1(0);
  *(a4 + *(v8 + 20)) = a2;
  v9 = *(v8 + 24);
  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4 + v9, 1, 1, v10);
}

uint64_t Proto_Gnss_Emergency_GanssLocationInfo.timeID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GanssLocationInfo.timeID.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssLocationInfo.timeID.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GanssLocationInfo.ganssTod.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssLocationInfo.ganssTod.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssLocationInfo.clearGanssTod()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssLocationInfo.ganssTodFrac.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssLocationInfo.ganssTodFrac.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssLocationInfo.clearGanssTodFrac()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssLocationInfo.ganssTodUncertainty.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssLocationInfo.ganssTodUncertainty.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssLocationInfo.clearGanssTodUncertainty()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssLocationInfo.fixType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 36));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GanssLocationInfo.fixType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssLocationInfo.fixType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 36);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GanssLocationInfo.referenceGnss.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssLocationInfo.referenceGnss.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssLocationInfo.clearReferenceGnss()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_GanssLocationInfo.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  *(a1 + result[5]) = 6;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[7];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[8];
  *v5 = 0;
  *(v5 + 4) = 1;
  *(a1 + result[9]) = 4;
  v6 = a1 + result[10];
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_EllipsoidPoint.latitude.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_EllipsoidPoint.latitude.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_EllipsoidPoint.clearLatitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_EllipsoidPoint.longitude.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_EllipsoidPoint.longitude.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_EllipsoidPoint.clearLongitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointUncertainCircle.point.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 20), v5, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  UnknownStorage.init()();
  v9 = a1 + *(v7 + 20);
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + *(v7 + 24);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PointUncertainCircle.point.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Proto_Gnss_Emergency_PointUncertainCircle.point.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return Proto_Gnss_Emergency_PointUncertainEllipse.point.modify;
}

uint64_t Proto_Gnss_Emergency_PointUncertainCircle.uncertainRadius.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointUncertainCircle.uncertainRadius.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PointUncertainCircle.clearUncertainRadius()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointUncertainEllipse.point.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 20), v5, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  UnknownStorage.init()();
  v9 = a1 + *(v7 + 20);
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + *(v7 + 24);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PointUncertainEllipse.point.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Proto_Gnss_Emergency_PointUncertainEllipse.point.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return Proto_Gnss_Emergency_PointUncertainEllipse.point.modify;
}

uint64_t Proto_Gnss_Emergency_PointUncertainEllipse.semiMajorAxis.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointUncertainEllipse.semiMajorAxis.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PointUncertainEllipse.clearSemiMajorAxis()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointUncertainEllipse.semiMinorAxis.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointUncertainEllipse.semiMinorAxis.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PointUncertainEllipse.clearSemiMinorAxis()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointUncertainEllipse.orientationAngle.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointUncertainEllipse.orientationAngle.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PointUncertainEllipse.clearOrientationAngle()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointUncertainEllipse.confidence.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointUncertainEllipse.confidence.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PointUncertainEllipse.clearConfidence()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointUncertainEllipse.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + v2[9];
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.point.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 20), v5, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  UnknownStorage.init()();
  v9 = a1 + *(v7 + 20);
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + *(v7 + 24);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.point.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.point.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return Proto_Gnss_Emergency_PointUncertainEllipse.point.modify;
}

uint64_t Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.altitude.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.altitude.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.clearAltitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.semiMajorAxis.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.semiMajorAxis.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.clearSemiMajorAxis()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.semiMinorAxis.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.semiMinorAxis.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.clearSemiMinorAxis()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.orientationAngle.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.orientationAngle.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.clearOrientationAngle()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.uncertainAltitude.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.uncertainAltitude.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.clearUncertainAltitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.confidence.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.confidence.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 44);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.clearConfidence()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + v2[9];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v2[10];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v2[11];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_EllipsoidArc.point.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 20), v5, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  UnknownStorage.init()();
  v9 = a1 + *(v7 + 20);
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + *(v7 + 24);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_EllipsoidArc.point.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_EllipsoidArc.point.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return Proto_Gnss_Emergency_EllipsoidArc.point.modify;
}

uint64_t Proto_Gnss_Emergency_EllipsoidArc.innerRadius.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_EllipsoidArc.innerRadius.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_EllipsoidArc.clearInnerRadius()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_EllipsoidArc.uncertainRadius.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_EllipsoidArc.uncertainRadius.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_EllipsoidArc.clearUncertainRadius()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_EllipsoidArc.offsetAngle.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_EllipsoidArc.offsetAngle.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_EllipsoidArc.clearOffsetAngle()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_EllipsoidArc.includedAngle.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_EllipsoidArc.includedAngle.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_EllipsoidArc.clearIncludedAngle()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_EllipsoidArc.confidence.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_EllipsoidArc.confidence.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_EllipsoidArc.clearConfidence()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_EllipsoidArc.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + v2[9];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v2[10];
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_PointAltitude.point.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 20), v5, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  UnknownStorage.init()();
  v9 = a1 + *(v7 + 20);
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + *(v7 + 24);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PointAltitude.point.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Proto_Gnss_Emergency_PointAltitude.point.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return Proto_Gnss_Emergency_PointUncertainEllipse.point.modify;
}

uint64_t Proto_Gnss_Emergency_PointAltitude.altitude.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointAltitude.altitude.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PointAltitude.clearAltitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointUncertainCircle.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1(0);
  v5 = *(v4 + 20);
  v6 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v8 = a2 + *(v4 + 24);
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_Polygon.noOfPoints.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Polygon.noOfPoints.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Polygon(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Polygon.clearNoOfPoints()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Polygon(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.pointUncertainCircle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = a1 + *(v8 + 24);
  *v12 = 0;
  *(v12 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.pointUncertainCircle.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  v11 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_ShapeInfo.pointUncertainCircle.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    v20 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = v14 + *(v9 + 24);
    *v21 = 0;
    *(v21 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  }

  return Proto_Gnss_Emergency_ShapeInfo.pointUncertainCircle.modify;
}

void Proto_Gnss_Emergency_ShapeInfo.pointUncertainCircle.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v9 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v22 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_ShapeInfo.hasPointUncertainCircle.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ShapeInfo.clearPointUncertainCircle()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.pointUncertainEllipse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  }

  UnknownStorage.init()();
  v10 = v8[5];
  v11 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = a1 + v8[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[7];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v8[8];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v8[9];
  *v15 = 0;
  *(v15 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.pointUncertainEllipse.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  v11 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_ShapeInfo.pointUncertainEllipse.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v9[5];
    v20 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = v14 + v9[6];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[7];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v14 + v9[8];
    *v23 = 0;
    *(v23 + 4) = 1;
    v24 = v14 + v9[9];
    *v24 = 0;
    *(v24 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  }

  return Proto_Gnss_Emergency_ShapeInfo.pointUncertainEllipse.modify;
}

void Proto_Gnss_Emergency_ShapeInfo.pointUncertainEllipse.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v9 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v22 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_ShapeInfo.hasPointUncertainEllipse.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ShapeInfo.clearPointUncertainEllipse()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.pointAltitudeUncertainEllipsoid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  }

  UnknownStorage.init()();
  v10 = v8[5];
  v11 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = a1 + v8[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[7];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v8[8];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v8[9];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1 + v8[10];
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a1 + v8[11];
  *v17 = 0;
  *(v17 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.pointAltitudeUncertainEllipsoid.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  v11 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_ShapeInfo.pointAltitudeUncertainEllipsoid.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v9[5];
    v20 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = v14 + v9[6];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[7];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v14 + v9[8];
    *v23 = 0;
    *(v23 + 4) = 1;
    v24 = v14 + v9[9];
    *v24 = 0;
    *(v24 + 4) = 1;
    v25 = v14 + v9[10];
    *v25 = 0;
    *(v25 + 4) = 1;
    v26 = v14 + v9[11];
    *v26 = 0;
    *(v26 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  }

  return Proto_Gnss_Emergency_ShapeInfo.pointAltitudeUncertainEllipsoid.modify;
}

void Proto_Gnss_Emergency_ShapeInfo.pointAltitudeUncertainEllipsoid.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v9 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v22 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_ShapeInfo.hasPointAltitudeUncertainEllipsoid.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ShapeInfo.clearPointAltitudeUncertainEllipsoid()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.ellipsoidArc.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  }

  UnknownStorage.init()();
  v10 = v8[5];
  v11 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = a1 + v8[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[7];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v8[8];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v8[9];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1 + v8[10];
  *v16 = 0;
  *(v16 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.ellipsoidArc.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  v11 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_ShapeInfo.ellipsoidArc.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v9[5];
    v20 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = v14 + v9[6];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[7];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v14 + v9[8];
    *v23 = 0;
    *(v23 + 4) = 1;
    v24 = v14 + v9[9];
    *v24 = 0;
    *(v24 + 4) = 1;
    v25 = v14 + v9[10];
    *v25 = 0;
    *(v25 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  }

  return Proto_Gnss_Emergency_ShapeInfo.ellipsoidArc.modify;
}

void Proto_Gnss_Emergency_ShapeInfo.ellipsoidArc.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v9 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v22 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_ShapeInfo.hasEllipsoidArc.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ShapeInfo.clearEllipsoidArc()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.ellipsoidPoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.ellipsoidPoint.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v11 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_ShapeInfo.ellipsoidPoint.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + *(v9 + 24);
    *v20 = 0;
    *(v20 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return Proto_Gnss_Emergency_ShapeInfo.ellipsoidPoint.modify;
}

void Proto_Gnss_Emergency_ShapeInfo.ellipsoidPoint.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v9 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v22 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}