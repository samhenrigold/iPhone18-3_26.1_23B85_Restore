@interface _TVStackRow
- (BOOL)isEqual:(id)equal;
- (TVRowMetrics)rowMetrics;
- (unint64_t)hash;
- (void)setRowMetrics:(TVRowMetrics *)metrics;
@end

@implementation _TVStackRow

- (unint64_t)hash
{
  sectionIndex = [(_TVStackRow *)self sectionIndex];
  v4 = sectionIndex ^ [(_TVStackRow *)self isHosted];
  v5 = v4 ^ [(_TVStackRow *)self isBounded];
  objc_msgSend_rowMetrics(self);
  v6 = v5 ^ v25[0];
  objc_msgSend_rowMetrics(self);
  v7 = v6 ^ v24;
  objc_msgSend_rowMetrics(self);
  v8 = v23;
  objc_msgSend_rowMetrics(self);
  v9 = v7 ^ v8 ^ v22;
  objc_msgSend_rowMetrics(self);
  v10 = v21;
  objc_msgSend_rowMetrics(self);
  v11 = v10 ^ v20;
  objc_msgSend_rowMetrics(self);
  v12 = v9 ^ v11 ^ v19;
  objc_msgSend_rowMetrics(self);
  v13 = v18;
  objc_msgSend_rowMetrics(self);
  v14 = v13 ^ v17;
  objc_msgSend_rowMetrics(self);
  return v12 ^ v14 ^ v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v14.receiver = self;
  v14.super_class = _TVStackRow;
  if (![(_TVStackRow *)&v14 isEqual:equalCopy])
  {
    goto LABEL_11;
  }

  objc_msgSend_rowMetrics(self);
  if (v6)
  {
    objc_msgSend_rowMetrics(v6);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  if (TVRowMetricsEqualToRowMetrics(v13, v12) && (v7 = -[_TVStackRow isHosted](self, "isHosted"), v7 == [v6 isHosted]) && (v8 = -[_TVStackRow isBounded](self, "isBounded"), v8 == objc_msgSend(v6, "isBounded")))
  {
    sectionIndex = [(_TVStackRow *)self sectionIndex];
    v9 = sectionIndex == [v6 sectionIndex];
  }

  else
  {
LABEL_11:
    v9 = 0;
  }

  return v9;
}

- (TVRowMetrics)rowMetrics
{
  v3 = *&self->rowInset.bottom;
  v4 = *&self->rowMargin.bottom;
  retstr->rowInset = *&self->rowInsetAlt.bottom;
  retstr->rowInsetAlt = v4;
  retstr->rowMargin = *&self[1].rowHeight;
  *&retstr->rowType = *&self->rowPadding.bottom;
  retstr->rowPadding = v3;
  return self;
}

- (void)setRowMetrics:(TVRowMetrics *)metrics
{
  *&self->_rowMetrics.rowType = *&metrics->rowType;
  rowPadding = metrics->rowPadding;
  rowInset = metrics->rowInset;
  rowInsetAlt = metrics->rowInsetAlt;
  self->_rowMetrics.rowMargin = metrics->rowMargin;
  self->_rowMetrics.rowInsetAlt = rowInsetAlt;
  self->_rowMetrics.rowInset = rowInset;
  self->_rowMetrics.rowPadding = rowPadding;
}

@end