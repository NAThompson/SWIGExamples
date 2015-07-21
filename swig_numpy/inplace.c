void inplace(double* invec, int n)
{
    int ii;
    for(ii = 0; ii < n; ++ii)
    {
      invec[ii] = 2*invec[ii];
    }
}
