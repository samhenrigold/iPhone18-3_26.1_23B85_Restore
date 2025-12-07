@interface MKTableRow
+ (id)rowWithCells:(id)cells;
+ (id)rowWithTitle:(id)title;
+ (id)separatorRow;
- (MKTableRow)init;
- (id)asciiRepresentationUsingColumns:(id)columns;
- (id)csvRepresentation;
- (id)csvSafeValueForCell:(id)cell;
- (id)formattedValueForCell:(id)cell;
- (int)totalWidthOfColumns:(id)columns;
- (void)adjustColumnsToFit:(id)fit;
@end

@implementation MKTableRow

- (MKTableRow)init
{
  v5.receiver = self;
  v5.super_class = MKTableRow;
  v2 = [(MKTableRow *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MKTableRow *)v2 setDivider:@"|"];
  }

  return v3;
}

+ (id)rowWithTitle:(id)title
{
  titleCopy = title;
  v4 = [[MKTableTitleRow alloc] initWithTitle:titleCopy];

  return v4;
}

+ (id)rowWithCells:(id)cells
{
  v17 = *MEMORY[0x277D85DE8];
  cellsCopy = cells;
  v4 = objc_alloc_init(MKTableRow);
  v5 = v4;
  if (v4)
  {
    [(MKTableRow *)v4 setCells:cellsCopy];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    cells = [(MKTableRow *)v5 cells];
    v7 = [cells countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(cells);
          }

          -[MKTableRow setTotalColumns:](v5, "setTotalColumns:", -[MKTableRow totalColumns](v5, "totalColumns") + [*(*(&v12 + 1) + 8 * i) columnSpan]);
        }

        v8 = [cells countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

+ (id)separatorRow
{
  v2 = objc_alloc_init(MKTableSeparatorRow);

  return v2;
}

- (void)adjustColumnsToFit:(id)fit
{
  v30 = *MEMORY[0x277D85DE8];
  fitCopy = fit;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(MKTableRow *)self cells];
  v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v26;
    v21 = *v26;
    v22 = fitCopy;
    do
    {
      v9 = 0;
      v23 = v6;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = [(MKTableRow *)self formattedValueForCell:v10, v21, v22];
        v12 = [v11 length];

        if ([v10 columnSpan] == 1)
        {
          v13 = [fitCopy objectAtIndexedSubscript:v7];
          [v13 adjustWidthToFit:v12];
        }

        else
        {
          v13 = [fitCopy subarrayWithRange:{v7, objc_msgSend(v10, "columnSpan")}];
          v14 = [v13 count];
          if (v12 >= 1)
          {
            v15 = 0;
            v16 = vcvtpd_s64_f64(v12 / v14);
            do
            {
              v17 = [v13 objectAtIndexedSubscript:v15];
              v18 = v17;
              if (v12 >= v16)
              {
                v19 = v16;
              }

              else
              {
                v19 = v12;
              }

              [v17 adjustWidthToFit:v19];
              divider = [(MKTableRow *)self divider];
              LODWORD(v12) = v12 - v16 - [divider length];

              ++v15;
            }

            while (v12 > 0);
            v8 = v21;
            fitCopy = v22;
            v6 = v23;
          }
        }

        v7 += [v10 columnSpan];
        ++v9;
      }

      while (v9 != v6);
      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }
}

- (id)formattedValueForCell:(id)cell
{
  v3 = MEMORY[0x277CCACA8];
  formattedValue = [cell formattedValue];
  v5 = [v3 stringWithFormat:@" %@ ", formattedValue];

  return v5;
}

- (id)asciiRepresentationUsingColumns:(id)columns
{
  v37 = *MEMORY[0x277D85DE8];
  columnsCopy = columns;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  cells = [(MKTableRow *)self cells];
  v31 = [v5 initWithCapacity:{objc_msgSend(cells, "count")}];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(MKTableRow *)self cells];
  v7 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v30 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        if ([v11 columnSpan] < 1)
        {
          v13 = 0;
        }

        else
        {
          v12 = 0;
          v13 = 0;
          v14 = v9;
          do
          {
            v15 = [columnsCopy objectAtIndexedSubscript:v14];
            v13 += [v15 width];

            ++v12;
            ++v14;
          }

          while (v12 < [v11 columnSpan]);
        }

        v16 = [v11 columnSpan] - 1;
        divider = [(MKTableRow *)self divider];
        v18 = v13 + v16 * [divider length];

        v19 = [(MKTableRow *)self formattedValueForCell:v11];
        alignment = [v11 alignment];
        if (alignment)
        {
          if (alignment == 1)
          {
            v21 = [v19 padToLength:v18 withString:@" "];
          }

          else
          {
            if (alignment != 2)
            {
              goto LABEL_18;
            }

            v21 = [v19 padLeftToLength:v18 withString:@" "];
          }
        }

        else
        {
          v21 = [v19 padRightToLength:v18 withString:@" "];
        }

        v22 = v21;

        v19 = v22;
LABEL_18:
        [v31 addObject:v19];
        v9 += [v11 columnSpan];
      }

      v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v8);
  }

  v23 = objc_alloc_init(MEMORY[0x277CCAB68]);
  divider2 = [(MKTableRow *)self divider];
  [v23 appendString:divider2];

  divider3 = [(MKTableRow *)self divider];
  v26 = [v31 componentsJoinedByString:divider3];
  [v23 appendString:v26];

  divider4 = [(MKTableRow *)self divider];
  [v23 appendString:divider4];

  return v23;
}

- (id)csvRepresentation
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  cells = [(MKTableRow *)self cells];
  v5 = [v3 initWithCapacity:{objc_msgSend(cells, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  cells2 = [(MKTableRow *)self cells];
  v7 = [cells2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(cells2);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(MKTableRow *)self csvSafeValueForCell:v11];
        [v5 addObject:v12];

        if ([v11 columnSpan] >= 2)
        {
          v13 = 1;
          do
          {
            string = [MEMORY[0x277CCACA8] string];
            [v5 addObject:string];

            ++v13;
          }

          while (v13 < [v11 columnSpan]);
        }
      }

      v8 = [cells2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [v5 componentsJoinedByString:{@", "}];

  return v15;
}

- (id)csvSafeValueForCell:(id)cell
{
  value = [cell value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [value stringByReplacingOccurrencesOfString:@" withString:@"];
    v5 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

    if ([v5 containsString:{@", "}])
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v5];

      v5 = v6;
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", value];
  }

  return v5;
}

- (int)totalWidthOfColumns:(id)columns
{
  v19 = *MEMORY[0x277D85DE8];
  columnsCopy = columns;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [columnsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(columnsCopy);
        }

        v7 += [*(*(&v14 + 1) + 8 * i) width];
      }

      v6 = [columnsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = [columnsCopy count];
  divider = [(MKTableRow *)self divider];
  v12 = [divider length];

  return v7 + v12 + v12 * v10;
}

@end