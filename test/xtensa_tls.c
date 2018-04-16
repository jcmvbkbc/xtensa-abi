int __thread g1;
int __thread g2;
static int __thread s1;
static int __thread s2;

void f(void *p);
void g(void)
{
	f(&g1);
	f(&g2);
	f(&s1);
	f(&s2);
}
void f(void *p)
{
}


void _start(void)
{
	g();
}
