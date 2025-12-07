@interface NWSRouteSnapshotter
- (NWSRouteSnapshotter)initWithSource:(id)source dest:(id)dest mask:(id)mask ifindex:(int)ifindex;
- (id)snapshot;
- (void)snapshot;
@end

@implementation NWSRouteSnapshotter

- (id)snapshot
{
  v23 = *MEMORY[0x277D85DE8];
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  memset(&v20[1], 0, 128);
  v17 = 0;
  v18 = 0;
  v19 = 1007;
  v20[0] = [(NWSSnapshotter *)self kernelSourceRef];
  snapshotSource = [(NWSSnapshotter *)self snapshotSource];
  v4 = [snapshotSource send:&v18 length:24 err:&v17];

  if (v4 != 24)
  {
    v11 = NStatGetLog(v5);
    v9 = v11;
    if (v4 < 0)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [NWSRouteSnapshotter snapshot];
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [NWSRouteSnapshotter snapshot];
    }

    goto LABEL_21;
  }

  snapshotSource2 = [(NWSSnapshotter *)self snapshotSource];
  v7 = [snapshotSource2 recv:&v18 length:272 err:&v17];

  if (v7 <= 271)
  {
    v9 = NStatGetLog(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v7 < 0)
    {
      if (v10)
      {
        [NWSRouteSnapshotter snapshot];
      }
    }

    else if (v10)
    {
      [NWSRouteSnapshotter snapshot];
    }

LABEL_21:

    goto LABEL_22;
  }

  if (v19 != 10006)
  {
    if (v19 == 2)
    {
      v9 = NStatGetLog(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(NWSRouteSnapshotter *)v9 snapshot];
      }
    }

    else
    {
      v9 = NStatGetLog(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [NWSRouteSnapshotter snapshot];
      }
    }

    goto LABEL_21;
  }

  v12 = v20[0];
  kernelSourceRef = [(NWSSnapshotter *)self kernelSourceRef];
  if (v12 == kernelSourceRef)
  {
    v14 = [[NWSRouteSnapshot alloc] initWithCounts:&v20[2] routeDescriptor:v21 sourceIdent:[(NWSSnapshotter *)self kernelSourceRef] seqno:0];
    goto LABEL_23;
  }

  v16 = NStatGetLog(kernelSourceRef);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [(NWSRouteSnapshotter *)v20 snapshot];
  }

LABEL_22:
  v14 = 0;
LABEL_23:

  return v14;
}

- (NWSRouteSnapshotter)initWithSource:(id)source dest:(id)dest mask:(id)mask ifindex:(int)ifindex
{
  v31 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  destCopy = dest;
  maskCopy = mask;
  v28.receiver = self;
  v28.super_class = NWSRouteSnapshotter;
  v13 = [(NWSRouteSnapshotter *)&v28 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_34;
  }

  v30 = 0;
  memset(v29, 0, sizeof(v29));
  if (destCopy)
  {
    v13 = [destCopy length];
    if (v13 >= 0x10)
    {
      v13 = [destCopy length];
      if (v13 < 0x1D)
      {
        if (maskCopy)
        {
          v17 = [destCopy length];
          if (v17 < 0x10 || (v17 = [destCopy length], v17 >= 0x1D))
          {
            v15 = NStatGetLog(v17);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              [NWSRouteSnapshotter initWithSource:maskCopy dest:? mask:? ifindex:?];
            }

            goto LABEL_7;
          }
        }

        *&v29[0] = v29;
        *(&v29[0] + 1) = 1001;
        *&v29[1] = 1;
        memset(&v29[1] + 8, 0, 56);
        LODWORD(v30) = ifindex;
        [destCopy getBytes:&v29[1] + 8 length:28];
        if (maskCopy)
        {
          [maskCopy getBytes:&v29[3] + 4 length:28];
        }

        v27 = 0;
        v18 = [sourceCopy send:v29 length:84 err:&v27];
        if (v18 != 84)
        {
          v22 = v18;
          v23 = NStatGetLog(v18);
          v15 = v23;
          if (v22 < 0)
          {
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [NWSRouteSnapshotter snapshot];
            }
          }

          else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            [NWSRouteSnapshotter initWithSource:dest:mask:ifindex:];
          }

          goto LABEL_7;
        }

        v19 = [sourceCopy recv:v29 length:88 err:&v27];
        if (v19 <= 31)
        {
          v20 = v19;
          v15 = NStatGetLog(v19);
          v21 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
          if (v20 < 0)
          {
            if (v21)
            {
              [NWSRouteSnapshotter initWithSource:dest:mask:ifindex:];
            }
          }

          else if (v21)
          {
            [NWSRouteSnapshotter initWithSource:dest:mask:ifindex:];
          }

          goto LABEL_7;
        }

        if (DWORD2(v29[0]) != 10001)
        {
          if (DWORD2(v29[0]) == 1)
          {
            v24 = v29[1];
            v15 = NStatGetLog(v19);
            v25 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
            if (v24 == 2)
            {
              if (v25)
              {
                [NWSRouteSnapshotter initWithSource:dest:mask:ifindex:];
              }
            }

            else if (v25)
            {
              [NWSRouteSnapshotter initWithSource:dest:mask:ifindex:];
            }
          }

          else
          {
            v15 = NStatGetLog(v19);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              [NWSRouteSnapshotter initWithSource:dest:mask:ifindex:];
            }
          }

          goto LABEL_7;
        }

        if (*&v29[0] != v29)
        {
          v15 = NStatGetLog(v19);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            [NWSRouteSnapshotter initWithSource:v29 dest:v29 mask:v15 ifindex:?];
          }

          goto LABEL_7;
        }

        [(NWSSnapshotter *)v14 setKernelSourceRef:*&v29[1]];
        [(NWSSnapshotter *)v14 setSnapshotSource:sourceCopy];
LABEL_34:
        v16 = v14;
        goto LABEL_35;
      }
    }
  }

  v15 = NStatGetLog(v13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [NWSRouteSnapshotter initWithSource:destCopy dest:destCopy == 0 mask:? ifindex:?];
  }

LABEL_7:

  v16 = 0;
LABEL_35:

  return v16;
}

- (void)snapshot
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)initWithSource:(void *)a1 dest:mask:ifindex:.cold.1(void *a1)
{
  [a1 length];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

- (void)initWithSource:dest:mask:ifindex:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = 84;
  _os_log_debug_impl(&dword_25BA3A000, v0, OS_LOG_TYPE_DEBUG, "sent %ld out of %lu", v1, 0x16u);
}

- (void)initWithSource:dest:mask:ifindex:.cold.4()
{
  __error();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)initWithSource:(os_log_t)log dest:mask:ifindex:.cold.6(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 134218240;
  v5 = v3;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_25BA3A000, log, OS_LOG_TYPE_ERROR, "received wrong context, received %llu expected %lu", &v4, 0x16u);
}

- (void)initWithSource:dest:mask:ifindex:.cold.7()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)initWithSource:dest:mask:ifindex:.cold.8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithSource:dest:mask:ifindex:.cold.9()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)initWithSource:(void *)a1 dest:(char)a2 mask:ifindex:.cold.10(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    [a1 length];
  }

  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

@end