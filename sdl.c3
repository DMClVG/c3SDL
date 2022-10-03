module sdl;

define FunPtr = void; // Replace occurences with correct function pointers

define _Sdl_Iconv_T = void;

struct Sdl_Assertdata {
	CInt always_Ignore;
	CUInt trigger_Count;
	char* condition;
	char* filename;
	CInt linenum;
	char* function;
	Sdl_Assertdata* next;
}

struct Sdl_Atomic_T {
	CInt value;
}

define Sdl_Mutex = void;

define Sdl_Semaphore = void;

define Sdl_Cond = void;

define Sdl_Thread = void;

struct Sdl_Rwops {
	FunPtr* size;
	FunPtr* seek;
	FunPtr* read;
	FunPtr* write;
	FunPtr* close;
	uint type;
	union hidden {
	struct mem {
	char* base;
	char* here;
	char* stop;
}
	struct unknown {
	void* data1;
	void* data2;
}
}
}

struct Sdl_Audiospec {
	CInt freq;
	ushort format;
	char channels;
	char silence;
	ushort samples;
	ushort padding;
	uint size;
	FunPtr* callback;
	void* userdata;
}

struct Sdl_Audiocvt {
	CInt needed;
	ushort src_Format;
	ushort dst_Format;
	double rate_Incr;
	char* buf;
	CInt len;
	CInt len_Cvt;
	CInt len_Mult;
	double len_Ratio;
	FunPtr*[10] filters;
	CInt filter_Index;
}

define _Sdl_Audiostream = void;

struct Sdl_Color {
	char r;
	char g;
	char b;
	char a;
}

struct Sdl_Palette {
	CInt ncolors;
	Sdl_Color* colors;
	uint version;
	CInt refcount;
}

struct Sdl_Pixelformat {
	uint format;
	Sdl_Palette* palette;
	char bitsperpixel;
	char bytesperpixel;
	char[2] padding;
	uint rmask;
	uint gmask;
	uint bmask;
	uint amask;
	char rloss;
	char gloss;
	char bloss;
	char aloss;
	char rshift;
	char gshift;
	char bshift;
	char ashift;
	CInt refcount;
	Sdl_Pixelformat* next;
}

struct Sdl_Point {
	CInt x;
	CInt y;
}

struct Sdl_Fpoint {
	float x;
	float y;
}

struct Sdl_Rect {
	CInt x;
	CInt y;
	CInt w;
	CInt h;
}

struct Sdl_Frect {
	float x;
	float y;
	float w;
	float h;
}

define Sdl_Blitmap = void;

struct Sdl_Surface {
	uint flags;
	Sdl_Pixelformat* format;
	CInt w;
	CInt h;
	CInt pitch;
	void* pixels;
	void* userdata;
	CInt locked;
	void* list_Blitmap;
	Sdl_Rect clip_Rect;
	Sdl_Blitmap* map;
	CInt refcount;
}

struct Sdl_Displaymode {
	uint format;
	CInt w;
	CInt h;
	CInt refresh_Rate;
	void* driverdata;
}

define Sdl_Window = void;

struct Sdl_Keysym {
	Sdl_Scancode scancode;
	CInt sym;
	ushort mod;
	uint unused;
}

define Sdl_Cursor = void;

struct Sdl_Guid {
	char[16] data;
}

define _Sdl_Joystick = void;

struct Sdl_Joystickguid {
	char[16] data;
}

struct Sdl_Virtualjoystickdesc {
	ushort version;
	ushort type;
	ushort naxes;
	ushort nbuttons;
	ushort nhats;
	ushort vendor_Id;
	ushort product_Id;
	ushort padding;
	uint button_Mask;
	uint axis_Mask;
	char* name;
	void* userdata;
	FunPtr* update;
	FunPtr* setplayerindex;
	FunPtr* rumble;
	FunPtr* rumbletriggers;
	FunPtr* setled;
	FunPtr* sendeffect;
}

define _Sdl_Sensor = void;

define _Sdl_Gamecontroller = void;

struct Sdl_Gamecontrollerbuttonbind {
	Sdl_Gamecontrollerbindtype bindtype;
	union value {
	CInt button;
	CInt axis;
	struct hat {
	CInt hat;
	CInt hat_Mask;
}
}
}

struct Sdl_Finger {
	CLong id;
	float x;
	float y;
	float pressure;
}

struct Sdl_Commonevent {
	uint type;
	uint timestamp;
}

struct Sdl_Displayevent {
	uint type;
	uint timestamp;
	uint display;
	char event;
	char padding1;
	char padding2;
	char padding3;
	CInt data1;
}

struct Sdl_Windowevent {
	uint type;
	uint timestamp;
	uint windowid;
	char event;
	char padding1;
	char padding2;
	char padding3;
	CInt data1;
	CInt data2;
}

struct Sdl_Keyboardevent {
	uint type;
	uint timestamp;
	uint windowid;
	char state;
	char repeat;
	char padding2;
	char padding3;
	Sdl_Keysym keysym;
}

struct Sdl_Texteditingevent {
	uint type;
	uint timestamp;
	uint windowid;
	char[32] text;
	CInt start;
	CInt length;
}

struct Sdl_Texteditingextevent {
	uint type;
	uint timestamp;
	uint windowid;
	char* text;
	CInt start;
	CInt length;
}

struct Sdl_Textinputevent {
	uint type;
	uint timestamp;
	uint windowid;
	char[32] text;
}

struct Sdl_Mousemotionevent {
	uint type;
	uint timestamp;
	uint windowid;
	uint which;
	uint state;
	CInt x;
	CInt y;
	CInt xrel;
	CInt yrel;
}

struct Sdl_Mousebuttonevent {
	uint type;
	uint timestamp;
	uint windowid;
	uint which;
	char button;
	char state;
	char clicks;
	char padding1;
	CInt x;
	CInt y;
}

struct Sdl_Mousewheelevent {
	uint type;
	uint timestamp;
	uint windowid;
	uint which;
	CInt x;
	CInt y;
	uint direction;
	float precisex;
	float precisey;
}

struct Sdl_Joyaxisevent {
	uint type;
	uint timestamp;
	CInt which;
	char axis;
	char padding1;
	char padding2;
	char padding3;
	CShort value;
	ushort padding4;
}

struct Sdl_Joyballevent {
	uint type;
	uint timestamp;
	CInt which;
	char ball;
	char padding1;
	char padding2;
	char padding3;
	CShort xrel;
	CShort yrel;
}

struct Sdl_Joyhatevent {
	uint type;
	uint timestamp;
	CInt which;
	char hat;
	char value;
	char padding1;
	char padding2;
}

struct Sdl_Joybuttonevent {
	uint type;
	uint timestamp;
	CInt which;
	char button;
	char state;
	char padding1;
	char padding2;
}

struct Sdl_Joydeviceevent {
	uint type;
	uint timestamp;
	CInt which;
}

struct Sdl_Joybatteryevent {
	uint type;
	uint timestamp;
	CInt which;
	Sdl_Joystickpowerlevel level;
}

struct Sdl_Controlleraxisevent {
	uint type;
	uint timestamp;
	CInt which;
	char axis;
	char padding1;
	char padding2;
	char padding3;
	CShort value;
	ushort padding4;
}

struct Sdl_Controllerbuttonevent {
	uint type;
	uint timestamp;
	CInt which;
	char button;
	char state;
	char padding1;
	char padding2;
}

struct Sdl_Controllerdeviceevent {
	uint type;
	uint timestamp;
	CInt which;
}

struct Sdl_Controllertouchpadevent {
	uint type;
	uint timestamp;
	CInt which;
	CInt touchpad;
	CInt finger;
	float x;
	float y;
	float pressure;
}

struct Sdl_Controllersensorevent {
	uint type;
	uint timestamp;
	CInt which;
	CInt sensor;
	float[3] data;
}

struct Sdl_Audiodeviceevent {
	uint type;
	uint timestamp;
	uint which;
	char iscapture;
	char padding1;
	char padding2;
	char padding3;
}

struct Sdl_Touchfingerevent {
	uint type;
	uint timestamp;
	CLong touchid;
	CLong fingerid;
	float x;
	float y;
	float dx;
	float dy;
	float pressure;
	uint windowid;
}

struct Sdl_Multigestureevent {
	uint type;
	uint timestamp;
	CLong touchid;
	float dtheta;
	float ddist;
	float x;
	float y;
	ushort numfingers;
	ushort padding;
}

struct Sdl_Dollargestureevent {
	uint type;
	uint timestamp;
	CLong touchid;
	CLong gestureid;
	uint numfingers;
	float error;
	float x;
	float y;
}

struct Sdl_Dropevent {
	uint type;
	uint timestamp;
	char* file;
	uint windowid;
}

struct Sdl_Sensorevent {
	uint type;
	uint timestamp;
	CInt which;
	float[6] data;
}

struct Sdl_Quitevent {
	uint type;
	uint timestamp;
}

struct Sdl_Osevent {
	uint type;
	uint timestamp;
}

struct Sdl_Userevent {
	uint type;
	uint timestamp;
	uint windowid;
	CInt code;
	void* data1;
	void* data2;
}

define Sdl_Syswmmsg = void;

struct Sdl_Syswmevent {
	uint type;
	uint timestamp;
	Sdl_Syswmmsg* msg;
}

define _Sdl_Haptic = void;

struct Sdl_Hapticdirection {
	char type;
	CInt[3] dir;
}

struct Sdl_Hapticconstant {
	ushort type;
	Sdl_Hapticdirection direction;
	uint length;
	ushort delay;
	ushort button;
	ushort interval;
	CShort level;
	ushort attack_Length;
	ushort attack_Level;
	ushort fade_Length;
	ushort fade_Level;
}

struct Sdl_Hapticperiodic {
	ushort type;
	Sdl_Hapticdirection direction;
	uint length;
	ushort delay;
	ushort button;
	ushort interval;
	ushort period;
	CShort magnitude;
	CShort offset;
	ushort phase;
	ushort attack_Length;
	ushort attack_Level;
	ushort fade_Length;
	ushort fade_Level;
}

struct Sdl_Hapticcondition {
	ushort type;
	Sdl_Hapticdirection direction;
	uint length;
	ushort delay;
	ushort button;
	ushort interval;
	ushort[3] right_Sat;
	ushort[3] left_Sat;
	CShort[3] right_Coeff;
	CShort[3] left_Coeff;
	ushort[3] deadband;
	CShort[3] center;
}

struct Sdl_Hapticramp {
	ushort type;
	Sdl_Hapticdirection direction;
	uint length;
	ushort delay;
	ushort button;
	ushort interval;
	CShort start;
	CShort end;
	ushort attack_Length;
	ushort attack_Level;
	ushort fade_Length;
	ushort fade_Level;
}

struct Sdl_Hapticleftright {
	ushort type;
	uint length;
	ushort large_Magnitude;
	ushort small_Magnitude;
}

struct Sdl_Hapticcustom {
	ushort type;
	Sdl_Hapticdirection direction;
	uint length;
	ushort delay;
	ushort button;
	ushort interval;
	char channels;
	ushort period;
	ushort samples;
	ushort* data;
	ushort attack_Length;
	ushort attack_Level;
	ushort fade_Length;
	ushort fade_Level;
}

define Sdl_Hid_Device_ = void;

struct Sdl_Hid_Device_Info {
	char* path;
	CUShort vendor_Id;
	CUShort product_Id;
	char* serial_Number;
	CUShort release_Number;
	char* manufacturer_String;
	char* product_String;
	CUShort usage_Page;
	CUShort usage;
	CInt interface_Number;
	CInt interface_Class;
	CInt interface_Subclass;
	CInt interface_Protocol;
	Sdl_Hid_Device_Info* next;
}

struct Sdl_Messageboxbuttondata {
	uint flags;
	CInt buttonid;
	char* text;
}

struct Sdl_Messageboxcolor {
	char r;
	char g;
	char b;
}

struct Sdl_Messageboxcolorscheme {
	Sdl_Messageboxcolor[5] colors;
}

struct Sdl_Messageboxdata {
	uint flags;
	Sdl_Window* window;
	char* title;
	char* message;
	CInt numbuttons;
	Sdl_Messageboxbuttondata* buttons;
	Sdl_Messageboxcolorscheme* colorscheme;
}

struct Sdl_Rendererinfo {
	char* name;
	uint flags;
	uint num_Texture_Formats;
	uint[16] texture_Formats;
	CInt max_Texture_Width;
	CInt max_Texture_Height;
}

struct Sdl_Vertex {
	Sdl_Fpoint position;
	Sdl_Color color;
	Sdl_Fpoint tex_Coord;
}

define Sdl_Renderer = void;

define Sdl_Texture = void;

struct Sdl_Windowshapemode {
	int mode;
	Sdl_Windowshapeparams parameters;
}

struct Sdl_Version {
	char major;
	char minor;
	char patch;
}

struct Sdl_Locale {
	char* language;
	char* country;
}

union Sdl_Event {
	uint type;
	Sdl_Commonevent common;
	Sdl_Displayevent display;
	Sdl_Windowevent window;
	Sdl_Keyboardevent key;
	Sdl_Texteditingevent edit;
	Sdl_Texteditingextevent editext;
	Sdl_Textinputevent text;
	Sdl_Mousemotionevent motion;
	Sdl_Mousebuttonevent button;
	Sdl_Mousewheelevent wheel;
	Sdl_Joyaxisevent jaxis;
	Sdl_Joyballevent jball;
	Sdl_Joyhatevent jhat;
	Sdl_Joybuttonevent jbutton;
	Sdl_Joydeviceevent jdevice;
	Sdl_Joybatteryevent jbattery;
	Sdl_Controlleraxisevent caxis;
	Sdl_Controllerbuttonevent cbutton;
	Sdl_Controllerdeviceevent cdevice;
	Sdl_Controllertouchpadevent ctouchpad;
	Sdl_Controllersensorevent csensor;
	Sdl_Audiodeviceevent adevice;
	Sdl_Sensorevent sensor;
	Sdl_Quitevent quit;
	Sdl_Userevent user;
	Sdl_Syswmevent syswm;
	Sdl_Touchfingerevent tfinger;
	Sdl_Multigestureevent mgesture;
	Sdl_Dollargestureevent dgesture;
	Sdl_Dropevent drop;
	char[56] padding;
}

union Sdl_Hapticeffect {
	ushort type;
	Sdl_Hapticconstant constant;
	Sdl_Hapticperiodic periodic;
	Sdl_Hapticcondition condition;
	Sdl_Hapticramp ramp;
	Sdl_Hapticleftright leftright;
	Sdl_Hapticcustom custom;
}

union Sdl_Windowshapeparams {
	char binarizationcutoff;
	Sdl_Color colorkey;
}

fn char* sdl_Getplatform() @extname("SDL_GetPlatform");
fn void* sdl_Malloc(isize size) @extname("SDL_malloc");
fn void* sdl_Calloc(isize nmemb, isize size) @extname("SDL_calloc");
fn void* sdl_Realloc(void* mem, isize size) @extname("SDL_realloc");
fn void sdl_Free(void* mem) @extname("SDL_free");
fn void sdl_Getoriginalmemoryfunctions(FunPtr** malloc_Func, FunPtr** calloc_Func, FunPtr** realloc_Func, FunPtr** free_Func) @extname("SDL_GetOriginalMemoryFunctions");
fn void sdl_Getmemoryfunctions(FunPtr** malloc_Func, FunPtr** calloc_Func, FunPtr** realloc_Func, FunPtr** free_Func) @extname("SDL_GetMemoryFunctions");
fn CInt sdl_Setmemoryfunctions(FunPtr* malloc_Func, FunPtr* calloc_Func, FunPtr* realloc_Func, FunPtr* free_Func) @extname("SDL_SetMemoryFunctions");
fn CInt sdl_Getnumallocations() @extname("SDL_GetNumAllocations");
fn char* sdl_Getenv(char* name) @extname("SDL_getenv");
fn CInt sdl_Setenv(char* name, char* value, CInt overwrite) @extname("SDL_setenv");
fn void sdl_Qsort(void* base, isize nmemb, isize size, FunPtr* compare) @extname("SDL_qsort");
fn void* sdl_Bsearch(void* key, void* base, isize nmemb, isize size, FunPtr* compare) @extname("SDL_bsearch");
fn CInt sdl_Abs(CInt x) @extname("SDL_abs");
fn CInt sdl_Isalpha(CInt x) @extname("SDL_isalpha");
fn CInt sdl_Isalnum(CInt x) @extname("SDL_isalnum");
fn CInt sdl_Isblank(CInt x) @extname("SDL_isblank");
fn CInt sdl_Iscntrl(CInt x) @extname("SDL_iscntrl");
fn CInt sdl_Isdigit(CInt x) @extname("SDL_isdigit");
fn CInt sdl_Isxdigit(CInt x) @extname("SDL_isxdigit");
fn CInt sdl_Ispunct(CInt x) @extname("SDL_ispunct");
fn CInt sdl_Isspace(CInt x) @extname("SDL_isspace");
fn CInt sdl_Isupper(CInt x) @extname("SDL_isupper");
fn CInt sdl_Islower(CInt x) @extname("SDL_islower");
fn CInt sdl_Isprint(CInt x) @extname("SDL_isprint");
fn CInt sdl_Isgraph(CInt x) @extname("SDL_isgraph");
fn CInt sdl_Toupper(CInt x) @extname("SDL_toupper");
fn CInt sdl_Tolower(CInt x) @extname("SDL_tolower");
fn ushort sdl_Crc16(ushort crc, void* data, isize len) @extname("SDL_crc16");
fn uint sdl_Crc32(uint crc, void* data, isize len) @extname("SDL_crc32");
fn void* sdl_Memset(void* dst, CInt c, isize len) @extname("SDL_memset");
fn void* sdl_Memcpy(void* dst, void* src, isize len) @extname("SDL_memcpy");
fn void* sdl_Memmove(void* dst, void* src, isize len) @extname("SDL_memmove");
fn CInt sdl_Memcmp(void* s1, void* s2, isize len) @extname("SDL_memcmp");
fn isize sdl_Wcslen(char* wstr) @extname("SDL_wcslen");
fn isize sdl_Wcslcpy(char* dst, char* src, isize maxlen) @extname("SDL_wcslcpy");
fn isize sdl_Wcslcat(char* dst, char* src, isize maxlen) @extname("SDL_wcslcat");
fn char* sdl_Wcsdup(char* wstr) @extname("SDL_wcsdup");
fn char* sdl_Wcsstr(char* haystack, char* needle) @extname("SDL_wcsstr");
fn CInt sdl_Wcscmp(char* str1, char* str2) @extname("SDL_wcscmp");
fn CInt sdl_Wcsncmp(char* str1, char* str2, isize maxlen) @extname("SDL_wcsncmp");
fn CInt sdl_Wcscasecmp(char* str1, char* str2) @extname("SDL_wcscasecmp");
fn CInt sdl_Wcsncasecmp(char* str1, char* str2, isize len) @extname("SDL_wcsncasecmp");
fn isize sdl_Strlen(char* str) @extname("SDL_strlen");
fn isize sdl_Strlcpy(char* dst, char* src, isize maxlen) @extname("SDL_strlcpy");
fn isize sdl_Utf8strlcpy(char* dst, char* src, isize dst_Bytes) @extname("SDL_utf8strlcpy");
fn isize sdl_Strlcat(char* dst, char* src, isize maxlen) @extname("SDL_strlcat");
fn char* sdl_Strdup(char* str) @extname("SDL_strdup");
fn char* sdl_Strrev(char* str) @extname("SDL_strrev");
fn char* sdl_Strupr(char* str) @extname("SDL_strupr");
fn char* sdl_Strlwr(char* str) @extname("SDL_strlwr");
fn char* sdl_Strchr(char* str, CInt c) @extname("SDL_strchr");
fn char* sdl_Strrchr(char* str, CInt c) @extname("SDL_strrchr");
fn char* sdl_Strstr(char* haystack, char* needle) @extname("SDL_strstr");
fn char* sdl_Strtokr(char* s1, char* s2, char** saveptr) @extname("SDL_strtokr");
fn isize sdl_Utf8strlen(char* str) @extname("SDL_utf8strlen");
fn isize sdl_Utf8strnlen(char* str, isize bytes) @extname("SDL_utf8strnlen");
fn char* sdl_Itoa(CInt value, char* str, CInt radix) @extname("SDL_itoa");
fn char* sdl_Uitoa(CUInt value, char* str, CInt radix) @extname("SDL_uitoa");
fn char* sdl_Ltoa(CLong value, char* str, CInt radix) @extname("SDL_ltoa");
fn char* sdl_Ultoa(CULong value, char* str, CInt radix) @extname("SDL_ultoa");
fn char* sdl_Lltoa(CLong value, char* str, CInt radix) @extname("SDL_lltoa");
fn char* sdl_Ulltoa(ulong value, char* str, CInt radix) @extname("SDL_ulltoa");
fn CInt sdl_Atoi(char* str) @extname("SDL_atoi");
fn double sdl_Atof(char* str) @extname("SDL_atof");
fn CLong sdl_Strtol(char* str, char** endp, CInt base) @extname("SDL_strtol");
fn CULong sdl_Strtoul(char* str, char** endp, CInt base) @extname("SDL_strtoul");
fn CLong sdl_Strtoll(char* str, char** endp, CInt base) @extname("SDL_strtoll");
fn ulong sdl_Strtoull(char* str, char** endp, CInt base) @extname("SDL_strtoull");
fn double sdl_Strtod(char* str, char** endp) @extname("SDL_strtod");
fn CInt sdl_Strcmp(char* str1, char* str2) @extname("SDL_strcmp");
fn CInt sdl_Strncmp(char* str1, char* str2, isize maxlen) @extname("SDL_strncmp");
fn CInt sdl_Strcasecmp(char* str1, char* str2) @extname("SDL_strcasecmp");
fn CInt sdl_Strncasecmp(char* str1, char* str2, isize len) @extname("SDL_strncasecmp");
fn CInt sdl_Sscanf(char* text, char* fmt) @extname("SDL_sscanf");
fn CInt sdl_Snprintf(char* text, isize maxlen, char* fmt) @extname("SDL_snprintf");
fn CInt sdl_Asprintf(char** strp, char* fmt) @extname("SDL_asprintf");
fn double sdl_Acos(double x) @extname("SDL_acos");
fn float sdl_Acosf(float x) @extname("SDL_acosf");
fn double sdl_Asin(double x) @extname("SDL_asin");
fn float sdl_Asinf(float x) @extname("SDL_asinf");
fn double sdl_Atan(double x) @extname("SDL_atan");
fn float sdl_Atanf(float x) @extname("SDL_atanf");
fn double sdl_Atan2(double y, double x) @extname("SDL_atan2");
fn float sdl_Atan2f(float y, float x) @extname("SDL_atan2f");
fn double sdl_Ceil(double x) @extname("SDL_ceil");
fn float sdl_Ceilf(float x) @extname("SDL_ceilf");
fn double sdl_Copysign(double x, double y) @extname("SDL_copysign");
fn float sdl_Copysignf(float x, float y) @extname("SDL_copysignf");
fn double sdl_Cos(double x) @extname("SDL_cos");
fn float sdl_Cosf(float x) @extname("SDL_cosf");
fn double sdl_Exp(double x) @extname("SDL_exp");
fn float sdl_Expf(float x) @extname("SDL_expf");
fn double sdl_Fabs(double x) @extname("SDL_fabs");
fn float sdl_Fabsf(float x) @extname("SDL_fabsf");
fn double sdl_Floor(double x) @extname("SDL_floor");
fn float sdl_Floorf(float x) @extname("SDL_floorf");
fn double sdl_Trunc(double x) @extname("SDL_trunc");
fn float sdl_Truncf(float x) @extname("SDL_truncf");
fn double sdl_Fmod(double x, double y) @extname("SDL_fmod");
fn float sdl_Fmodf(float x, float y) @extname("SDL_fmodf");
fn double sdl_Logd(double x) @extname("SDL_log");
fn float sdl_Logf(float x) @extname("SDL_logf");
fn double sdl_Log10(double x) @extname("SDL_log10");
fn float sdl_Log10f(float x) @extname("SDL_log10f");
fn double sdl_Pow(double x, double y) @extname("SDL_pow");
fn float sdl_Powf(float x, float y) @extname("SDL_powf");
fn double sdl_Round(double x) @extname("SDL_round");
fn float sdl_Roundf(float x) @extname("SDL_roundf");
fn CLong sdl_Lround(double x) @extname("SDL_lround");
fn CLong sdl_Lroundf(float x) @extname("SDL_lroundf");
fn double sdl_Scalbn(double x, CInt n) @extname("SDL_scalbn");
fn float sdl_Scalbnf(float x, CInt n) @extname("SDL_scalbnf");
fn double sdl_Sin(double x) @extname("SDL_sin");
fn float sdl_Sinf(float x) @extname("SDL_sinf");
fn double sdl_Sqrt(double x) @extname("SDL_sqrt");
fn float sdl_Sqrtf(float x) @extname("SDL_sqrtf");
fn double sdl_Tan(double x) @extname("SDL_tan");
fn float sdl_Tanf(float x) @extname("SDL_tanf");
fn _Sdl_Iconv_T* sdl_Iconv_Open(char* tocode, char* fromcode) @extname("SDL_iconv_open");
fn CInt sdl_Iconv_Close(_Sdl_Iconv_T* cd) @extname("SDL_iconv_close");
fn isize sdl_Iconv(_Sdl_Iconv_T* cd, char** inbuf, isize* inbytesleft, char** outbuf, isize* outbytesleft) @extname("SDL_iconv");
fn char* sdl_Iconv_String(char* tocode, char* fromcode, char* inbuf, isize inbytesleft) @extname("SDL_iconv_string");
fn CInt sdl_Main(CInt argc, char *[] argv) @extname("SDL_main");
fn void sdl_Setmainready() @extname("SDL_SetMainReady");
fn Sdl_Assertstate sdl_Reportassertion(Sdl_Assertdata* , char* , char* , CInt ) @extname("SDL_ReportAssertion");
fn void sdl_Setassertionhandler(FunPtr* handler, void* userdata) @extname("SDL_SetAssertionHandler");
fn FunPtr* sdl_Getdefaultassertionhandler() @extname("SDL_GetDefaultAssertionHandler");
fn FunPtr* sdl_Getassertionhandler(void** puserdata) @extname("SDL_GetAssertionHandler");
fn Sdl_Assertdata* sdl_Getassertionreport() @extname("SDL_GetAssertionReport");
fn void sdl_Resetassertionreport() @extname("SDL_ResetAssertionReport");
fn Sdl_Bool sdl_Atomictrylock(CInt* lock) @extname("SDL_AtomicTryLock");
fn void sdl_Atomiclock(CInt* lock) @extname("SDL_AtomicLock");
fn void sdl_Atomicunlock(CInt* lock) @extname("SDL_AtomicUnlock");
fn void sdl_Memorybarrierreleasefunction() @extname("SDL_MemoryBarrierReleaseFunction");
fn void sdl_Memorybarrieracquirefunction() @extname("SDL_MemoryBarrierAcquireFunction");
fn Sdl_Bool sdl_Atomiccas(Sdl_Atomic_T* a, CInt oldval, CInt newval) @extname("SDL_AtomicCAS");
fn CInt sdl_Atomicset(Sdl_Atomic_T* a, CInt v) @extname("SDL_AtomicSet");
fn CInt sdl_Atomicget(Sdl_Atomic_T* a) @extname("SDL_AtomicGet");
fn CInt sdl_Atomicadd(Sdl_Atomic_T* a, CInt v) @extname("SDL_AtomicAdd");
fn Sdl_Bool sdl_Atomiccasptr(void** a, void* oldval, void* newval) @extname("SDL_AtomicCASPtr");
fn void* sdl_Atomicsetptr(void** a, void* v) @extname("SDL_AtomicSetPtr");
fn void* sdl_Atomicgetptr(void** a) @extname("SDL_AtomicGetPtr");
fn CInt sdl_Seterror(char* fmt) @extname("SDL_SetError");
fn char* sdl_Geterror() @extname("SDL_GetError");
fn char* sdl_Geterrormsg(char* errstr, CInt maxlen) @extname("SDL_GetErrorMsg");
fn void sdl_Clearerror() @extname("SDL_ClearError");
fn CInt sdl_Error(Sdl_Errorcode code) @extname("SDL_Error");
fn Sdl_Mutex* sdl_Createmutex() @extname("SDL_CreateMutex");
fn CInt sdl_Lockmutex(Sdl_Mutex* mutex) @extname("SDL_LockMutex");
fn CInt sdl_Trylockmutex(Sdl_Mutex* mutex) @extname("SDL_TryLockMutex");
fn CInt sdl_Unlockmutex(Sdl_Mutex* mutex) @extname("SDL_UnlockMutex");
fn void sdl_Destroymutex(Sdl_Mutex* mutex) @extname("SDL_DestroyMutex");
fn Sdl_Semaphore* sdl_Createsemaphore(uint initial_Value) @extname("SDL_CreateSemaphore");
fn void sdl_Destroysemaphore(Sdl_Semaphore* sem) @extname("SDL_DestroySemaphore");
fn CInt sdl_Semwait(Sdl_Semaphore* sem) @extname("SDL_SemWait");
fn CInt sdl_Semtrywait(Sdl_Semaphore* sem) @extname("SDL_SemTryWait");
fn CInt sdl_Semwaittimeout(Sdl_Semaphore* sem, uint ms) @extname("SDL_SemWaitTimeout");
fn CInt sdl_Sempost(Sdl_Semaphore* sem) @extname("SDL_SemPost");
fn uint sdl_Semvalue(Sdl_Semaphore* sem) @extname("SDL_SemValue");
fn Sdl_Cond* sdl_Createcond() @extname("SDL_CreateCond");
fn void sdl_Destroycond(Sdl_Cond* cond) @extname("SDL_DestroyCond");
fn CInt sdl_Condsignal(Sdl_Cond* cond) @extname("SDL_CondSignal");
fn CInt sdl_Condbroadcast(Sdl_Cond* cond) @extname("SDL_CondBroadcast");
fn CInt sdl_Condwait(Sdl_Cond* cond, Sdl_Mutex* mutex) @extname("SDL_CondWait");
fn CInt sdl_Condwaittimeout(Sdl_Cond* cond, Sdl_Mutex* mutex, uint ms) @extname("SDL_CondWaitTimeout");
fn Sdl_Thread* sdl_Createthread(FunPtr* func, char* name, void* data) @extname("SDL_CreateThread");
fn Sdl_Thread* sdl_Createthreadwithstacksize(FunPtr* func, char* name, isize stacksize, void* data) @extname("SDL_CreateThreadWithStackSize");
fn char* sdl_Getthreadname(Sdl_Thread* thread) @extname("SDL_GetThreadName");
fn CULong sdl_Threadid() @extname("SDL_ThreadID");
fn CULong sdl_Getthreadid(Sdl_Thread* thread) @extname("SDL_GetThreadID");
fn CInt sdl_Setthreadpriority(Sdl_Threadpriority priority) @extname("SDL_SetThreadPriority");
fn void sdl_Waitthread(Sdl_Thread* thread, CInt* status) @extname("SDL_WaitThread");
fn void sdl_Detachthread(Sdl_Thread* thread) @extname("SDL_DetachThread");
fn CUInt sdl_Tlscreate() @extname("SDL_TLSCreate");
fn void* sdl_Tlsget(CUInt id) @extname("SDL_TLSGet");
fn CInt sdl_Tlsset(CUInt id, void* value, FunPtr* destructor) @extname("SDL_TLSSet");
fn void sdl_Tlscleanup() @extname("SDL_TLSCleanup");
fn Sdl_Rwops* sdl_Rwfromfile(char* file, char* mode) @extname("SDL_RWFromFile");
fn Sdl_Rwops* sdl_Rwfromfp(void* fp, Sdl_Bool autoclose) @extname("SDL_RWFromFP");
fn Sdl_Rwops* sdl_Rwfrommem(void* mem, CInt size) @extname("SDL_RWFromMem");
fn Sdl_Rwops* sdl_Rwfromconstmem(void* mem, CInt size) @extname("SDL_RWFromConstMem");
fn Sdl_Rwops* sdl_Allocrw() @extname("SDL_AllocRW");
fn void sdl_Freerw(Sdl_Rwops* area) @extname("SDL_FreeRW");
fn CLong sdl_Rwsize(Sdl_Rwops* context) @extname("SDL_RWsize");
fn CLong sdl_Rwseek(Sdl_Rwops* context, CLong offset, CInt whence) @extname("SDL_RWseek");
fn CLong sdl_Rwtell(Sdl_Rwops* context) @extname("SDL_RWtell");
fn isize sdl_Rwread(Sdl_Rwops* context, void* ptr, isize size, isize maxnum) @extname("SDL_RWread");
fn isize sdl_Rwwrite(Sdl_Rwops* context, void* ptr, isize size, isize num) @extname("SDL_RWwrite");
fn CInt sdl_Rwclose(Sdl_Rwops* context) @extname("SDL_RWclose");
fn void* sdl_Loadfile_Rw(Sdl_Rwops* src, isize* datasize, CInt freesrc) @extname("SDL_LoadFile_RW");
fn void* sdl_Loadfile(char* file, isize* datasize) @extname("SDL_LoadFile");
fn char sdl_Readu8(Sdl_Rwops* src) @extname("SDL_ReadU8");
fn ushort sdl_Readle16(Sdl_Rwops* src) @extname("SDL_ReadLE16");
fn ushort sdl_Readbe16(Sdl_Rwops* src) @extname("SDL_ReadBE16");
fn uint sdl_Readle32(Sdl_Rwops* src) @extname("SDL_ReadLE32");
fn uint sdl_Readbe32(Sdl_Rwops* src) @extname("SDL_ReadBE32");
fn ulong sdl_Readle64(Sdl_Rwops* src) @extname("SDL_ReadLE64");
fn ulong sdl_Readbe64(Sdl_Rwops* src) @extname("SDL_ReadBE64");
fn isize sdl_Writeu8(Sdl_Rwops* dst, char value) @extname("SDL_WriteU8");
fn isize sdl_Writele16(Sdl_Rwops* dst, ushort value) @extname("SDL_WriteLE16");
fn isize sdl_Writebe16(Sdl_Rwops* dst, ushort value) @extname("SDL_WriteBE16");
fn isize sdl_Writele32(Sdl_Rwops* dst, uint value) @extname("SDL_WriteLE32");
fn isize sdl_Writebe32(Sdl_Rwops* dst, uint value) @extname("SDL_WriteBE32");
fn isize sdl_Writele64(Sdl_Rwops* dst, ulong value) @extname("SDL_WriteLE64");
fn isize sdl_Writebe64(Sdl_Rwops* dst, ulong value) @extname("SDL_WriteBE64");
fn CInt sdl_Getnumaudiodrivers() @extname("SDL_GetNumAudioDrivers");
fn char* sdl_Getaudiodriver(CInt index) @extname("SDL_GetAudioDriver");
fn CInt sdl_Audioinit(char* driver_Name) @extname("SDL_AudioInit");
fn void sdl_Audioquit() @extname("SDL_AudioQuit");
fn char* sdl_Getcurrentaudiodriver() @extname("SDL_GetCurrentAudioDriver");
fn CInt sdl_Openaudio(Sdl_Audiospec* desired, Sdl_Audiospec* obtained) @extname("SDL_OpenAudio");
fn CInt sdl_Getnumaudiodevices(CInt iscapture) @extname("SDL_GetNumAudioDevices");
fn char* sdl_Getaudiodevicename(CInt index, CInt iscapture) @extname("SDL_GetAudioDeviceName");
fn CInt sdl_Getaudiodevicespec(CInt index, CInt iscapture, Sdl_Audiospec* spec) @extname("SDL_GetAudioDeviceSpec");
fn CInt sdl_Getdefaultaudioinfo(char** name, Sdl_Audiospec* spec, CInt iscapture) @extname("SDL_GetDefaultAudioInfo");
fn uint sdl_Openaudiodevice(char* device, CInt iscapture, Sdl_Audiospec* desired, Sdl_Audiospec* obtained, CInt allowed_Changes) @extname("SDL_OpenAudioDevice");
fn Sdl_Audiostatus sdl_Getaudiostatus() @extname("SDL_GetAudioStatus");
fn Sdl_Audiostatus sdl_Getaudiodevicestatus(uint dev) @extname("SDL_GetAudioDeviceStatus");
fn void sdl_Pauseaudio(CInt pause_On) @extname("SDL_PauseAudio");
fn void sdl_Pauseaudiodevice(uint dev, CInt pause_On) @extname("SDL_PauseAudioDevice");
fn Sdl_Audiospec* sdl_Loadwav_Rw(Sdl_Rwops* src, CInt freesrc, Sdl_Audiospec* spec, char** audio_Buf, uint* audio_Len) @extname("SDL_LoadWAV_RW");
fn void sdl_Freewav(char* audio_Buf) @extname("SDL_FreeWAV");
fn CInt sdl_Buildaudiocvt(Sdl_Audiocvt* cvt, ushort src_Format, char src_Channels, CInt src_Rate, ushort dst_Format, char dst_Channels, CInt dst_Rate) @extname("SDL_BuildAudioCVT");
fn CInt sdl_Convertaudio(Sdl_Audiocvt* cvt) @extname("SDL_ConvertAudio");
fn _Sdl_Audiostream* sdl_Newaudiostream(ushort src_Format, char src_Channels, CInt src_Rate, ushort dst_Format, char dst_Channels, CInt dst_Rate) @extname("SDL_NewAudioStream");
fn CInt sdl_Audiostreamput(_Sdl_Audiostream* stream, void* buf, CInt len) @extname("SDL_AudioStreamPut");
fn CInt sdl_Audiostreamget(_Sdl_Audiostream* stream, void* buf, CInt len) @extname("SDL_AudioStreamGet");
fn CInt sdl_Audiostreamavailable(_Sdl_Audiostream* stream) @extname("SDL_AudioStreamAvailable");
fn CInt sdl_Audiostreamflush(_Sdl_Audiostream* stream) @extname("SDL_AudioStreamFlush");
fn void sdl_Audiostreamclear(_Sdl_Audiostream* stream) @extname("SDL_AudioStreamClear");
fn void sdl_Freeaudiostream(_Sdl_Audiostream* stream) @extname("SDL_FreeAudioStream");
fn void sdl_Mixaudio(char* dst, char* src, uint len, CInt volume) @extname("SDL_MixAudio");
fn void sdl_Mixaudioformat(char* dst, char* src, ushort format, uint len, CInt volume) @extname("SDL_MixAudioFormat");
fn CInt sdl_Queueaudio(uint dev, void* data, uint len) @extname("SDL_QueueAudio");
fn uint sdl_Dequeueaudio(uint dev, void* data, uint len) @extname("SDL_DequeueAudio");
fn uint sdl_Getqueuedaudiosize(uint dev) @extname("SDL_GetQueuedAudioSize");
fn void sdl_Clearqueuedaudio(uint dev) @extname("SDL_ClearQueuedAudio");
fn void sdl_Lockaudio() @extname("SDL_LockAudio");
fn void sdl_Lockaudiodevice(uint dev) @extname("SDL_LockAudioDevice");
fn void sdl_Unlockaudio() @extname("SDL_UnlockAudio");
fn void sdl_Unlockaudiodevice(uint dev) @extname("SDL_UnlockAudioDevice");
fn void sdl_Closeaudio() @extname("SDL_CloseAudio");
fn void sdl_Closeaudiodevice(uint dev) @extname("SDL_CloseAudioDevice");
fn CInt sdl_Setclipboardtext(char* text) @extname("SDL_SetClipboardText");
fn char* sdl_Getclipboardtext() @extname("SDL_GetClipboardText");
fn Sdl_Bool sdl_Hasclipboardtext() @extname("SDL_HasClipboardText");
fn CInt sdl_Getcpucount() @extname("SDL_GetCPUCount");
fn CInt sdl_Getcpucachelinesize() @extname("SDL_GetCPUCacheLineSize");
fn Sdl_Bool sdl_Hasrdtsc() @extname("SDL_HasRDTSC");
fn Sdl_Bool sdl_Hasaltivec() @extname("SDL_HasAltiVec");
fn Sdl_Bool sdl_Hasmmx() @extname("SDL_HasMMX");
fn Sdl_Bool sdl_Has3dnow() @extname("SDL_Has3DNow");
fn Sdl_Bool sdl_Hassse() @extname("SDL_HasSSE");
fn Sdl_Bool sdl_Hassse2() @extname("SDL_HasSSE2");
fn Sdl_Bool sdl_Hassse3() @extname("SDL_HasSSE3");
fn Sdl_Bool sdl_Hassse41() @extname("SDL_HasSSE41");
fn Sdl_Bool sdl_Hassse42() @extname("SDL_HasSSE42");
fn Sdl_Bool sdl_Hasavx() @extname("SDL_HasAVX");
fn Sdl_Bool sdl_Hasavx2() @extname("SDL_HasAVX2");
fn Sdl_Bool sdl_Hasavx512f() @extname("SDL_HasAVX512F");
fn Sdl_Bool sdl_Hasarmsimd() @extname("SDL_HasARMSIMD");
fn Sdl_Bool sdl_Hasneon() @extname("SDL_HasNEON");
fn Sdl_Bool sdl_Haslsx() @extname("SDL_HasLSX");
fn Sdl_Bool sdl_Haslasx() @extname("SDL_HasLASX");
fn CInt sdl_Getsystemram() @extname("SDL_GetSystemRAM");
fn isize sdl_Simdgetalignment() @extname("SDL_SIMDGetAlignment");
fn void* sdl_Simdalloc(isize len) @extname("SDL_SIMDAlloc");
fn void* sdl_Simdrealloc(void* mem, isize len) @extname("SDL_SIMDRealloc");
fn void sdl_Simdfree(void* ptr) @extname("SDL_SIMDFree");
fn char* sdl_Getpixelformatname(uint format) @extname("SDL_GetPixelFormatName");
fn Sdl_Bool sdl_Pixelformatenumtomasks(uint format, CInt* bpp, uint* rmask, uint* gmask, uint* bmask, uint* amask) @extname("SDL_PixelFormatEnumToMasks");
fn uint sdl_Maskstopixelformatenum(CInt bpp, uint rmask, uint gmask, uint bmask, uint amask) @extname("SDL_MasksToPixelFormatEnum");
fn Sdl_Pixelformat* sdl_Allocformat(uint pixel_Format) @extname("SDL_AllocFormat");
fn void sdl_Freeformat(Sdl_Pixelformat* format) @extname("SDL_FreeFormat");
fn Sdl_Palette* sdl_Allocpalette(CInt ncolors) @extname("SDL_AllocPalette");
fn CInt sdl_Setpixelformatpalette(Sdl_Pixelformat* format, Sdl_Palette* palette) @extname("SDL_SetPixelFormatPalette");
fn CInt sdl_Setpalettecolors(Sdl_Palette* palette, Sdl_Color* colors, CInt firstcolor, CInt ncolors) @extname("SDL_SetPaletteColors");
fn void sdl_Freepalette(Sdl_Palette* palette) @extname("SDL_FreePalette");
fn uint sdl_Maprgb(Sdl_Pixelformat* format, char r, char g, char b) @extname("SDL_MapRGB");
fn uint sdl_Maprgba(Sdl_Pixelformat* format, char r, char g, char b, char a) @extname("SDL_MapRGBA");
fn void sdl_Getrgb(uint pixel, Sdl_Pixelformat* format, char* r, char* g, char* b) @extname("SDL_GetRGB");
fn void sdl_Getrgba(uint pixel, Sdl_Pixelformat* format, char* r, char* g, char* b, char* a) @extname("SDL_GetRGBA");
fn void sdl_Calculategammaramp(float gamma, ushort* ramp) @extname("SDL_CalculateGammaRamp");
fn Sdl_Bool sdl_Hasintersection(Sdl_Rect* a, Sdl_Rect* b) @extname("SDL_HasIntersection");
fn Sdl_Bool sdl_Intersectrect(Sdl_Rect* a, Sdl_Rect* b, Sdl_Rect* result) @extname("SDL_IntersectRect");
fn void sdl_Unionrect(Sdl_Rect* a, Sdl_Rect* b, Sdl_Rect* result) @extname("SDL_UnionRect");
fn Sdl_Bool sdl_Enclosepoints(Sdl_Point* points, CInt count, Sdl_Rect* clip, Sdl_Rect* result) @extname("SDL_EnclosePoints");
fn Sdl_Bool sdl_Intersectrectandline(Sdl_Rect* rect, CInt* x1, CInt* y1, CInt* x2, CInt* y2) @extname("SDL_IntersectRectAndLine");
fn Sdl_Bool sdl_Hasintersectionf(Sdl_Frect* a, Sdl_Frect* b) @extname("SDL_HasIntersectionF");
fn Sdl_Bool sdl_Intersectfrect(Sdl_Frect* a, Sdl_Frect* b, Sdl_Frect* result) @extname("SDL_IntersectFRect");
fn void sdl_Unionfrect(Sdl_Frect* a, Sdl_Frect* b, Sdl_Frect* result) @extname("SDL_UnionFRect");
fn Sdl_Bool sdl_Enclosefpoints(Sdl_Fpoint* points, CInt count, Sdl_Frect* clip, Sdl_Frect* result) @extname("SDL_EncloseFPoints");
fn Sdl_Bool sdl_Intersectfrectandline(Sdl_Frect* rect, float* x1, float* y1, float* x2, float* y2) @extname("SDL_IntersectFRectAndLine");
fn Sdl_Blendmode sdl_Composecustomblendmode(Sdl_Blendfactor srccolorfactor, Sdl_Blendfactor dstcolorfactor, Sdl_Blendoperation coloroperation, Sdl_Blendfactor srcalphafactor, Sdl_Blendfactor dstalphafactor, Sdl_Blendoperation alphaoperation) @extname("SDL_ComposeCustomBlendMode");
fn Sdl_Surface* sdl_Creatergbsurface(uint flags, CInt width, CInt height, CInt depth, uint rmask, uint gmask, uint bmask, uint amask) @extname("SDL_CreateRGBSurface");
fn Sdl_Surface* sdl_Creatergbsurfacewithformat(uint flags, CInt width, CInt height, CInt depth, uint format) @extname("SDL_CreateRGBSurfaceWithFormat");
fn Sdl_Surface* sdl_Creatergbsurfacefrom(void* pixels, CInt width, CInt height, CInt depth, CInt pitch, uint rmask, uint gmask, uint bmask, uint amask) @extname("SDL_CreateRGBSurfaceFrom");
fn Sdl_Surface* sdl_Creatergbsurfacewithformatfrom(void* pixels, CInt width, CInt height, CInt depth, CInt pitch, uint format) @extname("SDL_CreateRGBSurfaceWithFormatFrom");
fn void sdl_Freesurface(Sdl_Surface* surface) @extname("SDL_FreeSurface");
fn CInt sdl_Setsurfacepalette(Sdl_Surface* surface, Sdl_Palette* palette) @extname("SDL_SetSurfacePalette");
fn CInt sdl_Locksurface(Sdl_Surface* surface) @extname("SDL_LockSurface");
fn void sdl_Unlocksurface(Sdl_Surface* surface) @extname("SDL_UnlockSurface");
fn Sdl_Surface* sdl_Loadbmp_Rw(Sdl_Rwops* src, CInt freesrc) @extname("SDL_LoadBMP_RW");
fn CInt sdl_Savebmp_Rw(Sdl_Surface* surface, Sdl_Rwops* dst, CInt freedst) @extname("SDL_SaveBMP_RW");
fn CInt sdl_Setsurfacerle(Sdl_Surface* surface, CInt flag) @extname("SDL_SetSurfaceRLE");
fn Sdl_Bool sdl_Hassurfacerle(Sdl_Surface* surface) @extname("SDL_HasSurfaceRLE");
fn CInt sdl_Setcolorkey(Sdl_Surface* surface, CInt flag, uint key) @extname("SDL_SetColorKey");
fn Sdl_Bool sdl_Hascolorkey(Sdl_Surface* surface) @extname("SDL_HasColorKey");
fn CInt sdl_Getcolorkey(Sdl_Surface* surface, uint* key) @extname("SDL_GetColorKey");
fn CInt sdl_Setsurfacecolormod(Sdl_Surface* surface, char r, char g, char b) @extname("SDL_SetSurfaceColorMod");
fn CInt sdl_Getsurfacecolormod(Sdl_Surface* surface, char* r, char* g, char* b) @extname("SDL_GetSurfaceColorMod");
fn CInt sdl_Setsurfacealphamod(Sdl_Surface* surface, char alpha) @extname("SDL_SetSurfaceAlphaMod");
fn CInt sdl_Getsurfacealphamod(Sdl_Surface* surface, char* alpha) @extname("SDL_GetSurfaceAlphaMod");
fn CInt sdl_Setsurfaceblendmode(Sdl_Surface* surface, Sdl_Blendmode blendmode) @extname("SDL_SetSurfaceBlendMode");
fn CInt sdl_Getsurfaceblendmode(Sdl_Surface* surface, Sdl_Blendmode* blendmode) @extname("SDL_GetSurfaceBlendMode");
fn Sdl_Bool sdl_Setcliprect(Sdl_Surface* surface, Sdl_Rect* rect) @extname("SDL_SetClipRect");
fn void sdl_Getcliprect(Sdl_Surface* surface, Sdl_Rect* rect) @extname("SDL_GetClipRect");
fn Sdl_Surface* sdl_Duplicatesurface(Sdl_Surface* surface) @extname("SDL_DuplicateSurface");
fn Sdl_Surface* sdl_Convertsurface(Sdl_Surface* src, Sdl_Pixelformat* fmt, uint flags) @extname("SDL_ConvertSurface");
fn Sdl_Surface* sdl_Convertsurfaceformat(Sdl_Surface* src, uint pixel_Format, uint flags) @extname("SDL_ConvertSurfaceFormat");
fn CInt sdl_Convertpixels(CInt width, CInt height, uint src_Format, void* src, CInt src_Pitch, uint dst_Format, void* dst, CInt dst_Pitch) @extname("SDL_ConvertPixels");
fn CInt sdl_Premultiplyalpha(CInt width, CInt height, uint src_Format, void* src, CInt src_Pitch, uint dst_Format, void* dst, CInt dst_Pitch) @extname("SDL_PremultiplyAlpha");
fn CInt sdl_Fillrect(Sdl_Surface* dst, Sdl_Rect* rect, uint color) @extname("SDL_FillRect");
fn CInt sdl_Fillrects(Sdl_Surface* dst, Sdl_Rect* rects, CInt count, uint color) @extname("SDL_FillRects");
fn CInt sdl_Upperblit(Sdl_Surface* src, Sdl_Rect* srcrect, Sdl_Surface* dst, Sdl_Rect* dstrect) @extname("SDL_UpperBlit");
fn CInt sdl_Lowerblit(Sdl_Surface* src, Sdl_Rect* srcrect, Sdl_Surface* dst, Sdl_Rect* dstrect) @extname("SDL_LowerBlit");
fn CInt sdl_Softstretch(Sdl_Surface* src, Sdl_Rect* srcrect, Sdl_Surface* dst, Sdl_Rect* dstrect) @extname("SDL_SoftStretch");
fn CInt sdl_Softstretchlinear(Sdl_Surface* src, Sdl_Rect* srcrect, Sdl_Surface* dst, Sdl_Rect* dstrect) @extname("SDL_SoftStretchLinear");
fn CInt sdl_Upperblitscaled(Sdl_Surface* src, Sdl_Rect* srcrect, Sdl_Surface* dst, Sdl_Rect* dstrect) @extname("SDL_UpperBlitScaled");
fn CInt sdl_Lowerblitscaled(Sdl_Surface* src, Sdl_Rect* srcrect, Sdl_Surface* dst, Sdl_Rect* dstrect) @extname("SDL_LowerBlitScaled");
fn void sdl_Setyuvconversionmode(Sdl_Yuv_Conversion_Mode mode) @extname("SDL_SetYUVConversionMode");
fn Sdl_Yuv_Conversion_Mode sdl_Getyuvconversionmode() @extname("SDL_GetYUVConversionMode");
fn Sdl_Yuv_Conversion_Mode sdl_Getyuvconversionmodeforresolution(CInt width, CInt height) @extname("SDL_GetYUVConversionModeForResolution");
fn CInt sdl_Getnumvideodrivers() @extname("SDL_GetNumVideoDrivers");
fn char* sdl_Getvideodriver(CInt index) @extname("SDL_GetVideoDriver");
fn CInt sdl_Videoinit(char* driver_Name) @extname("SDL_VideoInit");
fn void sdl_Videoquit() @extname("SDL_VideoQuit");
fn char* sdl_Getcurrentvideodriver() @extname("SDL_GetCurrentVideoDriver");
fn CInt sdl_Getnumvideodisplays() @extname("SDL_GetNumVideoDisplays");
fn char* sdl_Getdisplayname(CInt displayindex) @extname("SDL_GetDisplayName");
fn CInt sdl_Getdisplaybounds(CInt displayindex, Sdl_Rect* rect) @extname("SDL_GetDisplayBounds");
fn CInt sdl_Getdisplayusablebounds(CInt displayindex, Sdl_Rect* rect) @extname("SDL_GetDisplayUsableBounds");
fn CInt sdl_Getdisplaydpi(CInt displayindex, float* ddpi, float* hdpi, float* vdpi) @extname("SDL_GetDisplayDPI");
fn Sdl_Displayorientation sdl_Getdisplayorientation(CInt displayindex) @extname("SDL_GetDisplayOrientation");
fn CInt sdl_Getnumdisplaymodes(CInt displayindex) @extname("SDL_GetNumDisplayModes");
fn CInt sdl_Getdisplaymode(CInt displayindex, CInt modeindex, Sdl_Displaymode* mode) @extname("SDL_GetDisplayMode");
fn CInt sdl_Getdesktopdisplaymode(CInt displayindex, Sdl_Displaymode* mode) @extname("SDL_GetDesktopDisplayMode");
fn CInt sdl_Getcurrentdisplaymode(CInt displayindex, Sdl_Displaymode* mode) @extname("SDL_GetCurrentDisplayMode");
fn Sdl_Displaymode* sdl_Getclosestdisplaymode(CInt displayindex, Sdl_Displaymode* mode, Sdl_Displaymode* closest) @extname("SDL_GetClosestDisplayMode");
fn CInt sdl_Getpointdisplayindex(Sdl_Point* point) @extname("SDL_GetPointDisplayIndex");
fn CInt sdl_Getrectdisplayindex(Sdl_Rect* rect) @extname("SDL_GetRectDisplayIndex");
fn CInt sdl_Getwindowdisplayindex(Sdl_Window* window) @extname("SDL_GetWindowDisplayIndex");
fn CInt sdl_Setwindowdisplaymode(Sdl_Window* window, Sdl_Displaymode* mode) @extname("SDL_SetWindowDisplayMode");
fn CInt sdl_Getwindowdisplaymode(Sdl_Window* window, Sdl_Displaymode* mode) @extname("SDL_GetWindowDisplayMode");
fn void* sdl_Getwindowiccprofile(Sdl_Window* window, isize* size) @extname("SDL_GetWindowICCProfile");
fn uint sdl_Getwindowpixelformat(Sdl_Window* window) @extname("SDL_GetWindowPixelFormat");
fn Sdl_Window* sdl_Createwindow(char* title, CInt x, CInt y, CInt w, CInt h, uint flags) @extname("SDL_CreateWindow");
fn Sdl_Window* sdl_Createwindowfrom(void* data) @extname("SDL_CreateWindowFrom");
fn uint sdl_Getwindowid(Sdl_Window* window) @extname("SDL_GetWindowID");
fn Sdl_Window* sdl_Getwindowfromid(uint id) @extname("SDL_GetWindowFromID");
fn uint sdl_Getwindowflags(Sdl_Window* window) @extname("SDL_GetWindowFlags");
fn void sdl_Setwindowtitle(Sdl_Window* window, char* title) @extname("SDL_SetWindowTitle");
fn char* sdl_Getwindowtitle(Sdl_Window* window) @extname("SDL_GetWindowTitle");
fn void sdl_Setwindowicon(Sdl_Window* window, Sdl_Surface* icon) @extname("SDL_SetWindowIcon");
fn void* sdl_Setwindowdata(Sdl_Window* window, char* name, void* userdata) @extname("SDL_SetWindowData");
fn void* sdl_Getwindowdata(Sdl_Window* window, char* name) @extname("SDL_GetWindowData");
fn void sdl_Setwindowposition(Sdl_Window* window, CInt x, CInt y) @extname("SDL_SetWindowPosition");
fn void sdl_Getwindowposition(Sdl_Window* window, CInt* x, CInt* y) @extname("SDL_GetWindowPosition");
fn void sdl_Setwindowsize(Sdl_Window* window, CInt w, CInt h) @extname("SDL_SetWindowSize");
fn void sdl_Getwindowsize(Sdl_Window* window, CInt* w, CInt* h) @extname("SDL_GetWindowSize");
fn CInt sdl_Getwindowborderssize(Sdl_Window* window, CInt* top, CInt* left, CInt* bottom, CInt* right) @extname("SDL_GetWindowBordersSize");
fn void sdl_Setwindowminimumsize(Sdl_Window* window, CInt min_W, CInt min_H) @extname("SDL_SetWindowMinimumSize");
fn void sdl_Getwindowminimumsize(Sdl_Window* window, CInt* w, CInt* h) @extname("SDL_GetWindowMinimumSize");
fn void sdl_Setwindowmaximumsize(Sdl_Window* window, CInt max_W, CInt max_H) @extname("SDL_SetWindowMaximumSize");
fn void sdl_Getwindowmaximumsize(Sdl_Window* window, CInt* w, CInt* h) @extname("SDL_GetWindowMaximumSize");
fn void sdl_Setwindowbordered(Sdl_Window* window, Sdl_Bool bordered) @extname("SDL_SetWindowBordered");
fn void sdl_Setwindowresizable(Sdl_Window* window, Sdl_Bool resizable) @extname("SDL_SetWindowResizable");
fn void sdl_Setwindowalwaysontop(Sdl_Window* window, Sdl_Bool on_Top) @extname("SDL_SetWindowAlwaysOnTop");
fn void sdl_Showwindow(Sdl_Window* window) @extname("SDL_ShowWindow");
fn void sdl_Hidewindow(Sdl_Window* window) @extname("SDL_HideWindow");
fn void sdl_Raisewindow(Sdl_Window* window) @extname("SDL_RaiseWindow");
fn void sdl_Maximizewindow(Sdl_Window* window) @extname("SDL_MaximizeWindow");
fn void sdl_Minimizewindow(Sdl_Window* window) @extname("SDL_MinimizeWindow");
fn void sdl_Restorewindow(Sdl_Window* window) @extname("SDL_RestoreWindow");
fn CInt sdl_Setwindowfullscreen(Sdl_Window* window, uint flags) @extname("SDL_SetWindowFullscreen");
fn Sdl_Surface* sdl_Getwindowsurface(Sdl_Window* window) @extname("SDL_GetWindowSurface");
fn CInt sdl_Updatewindowsurface(Sdl_Window* window) @extname("SDL_UpdateWindowSurface");
fn CInt sdl_Updatewindowsurfacerects(Sdl_Window* window, Sdl_Rect* rects, CInt numrects) @extname("SDL_UpdateWindowSurfaceRects");
fn void sdl_Setwindowgrab(Sdl_Window* window, Sdl_Bool grabbed) @extname("SDL_SetWindowGrab");
fn void sdl_Setwindowkeyboardgrab(Sdl_Window* window, Sdl_Bool grabbed) @extname("SDL_SetWindowKeyboardGrab");
fn void sdl_Setwindowmousegrab(Sdl_Window* window, Sdl_Bool grabbed) @extname("SDL_SetWindowMouseGrab");
fn Sdl_Bool sdl_Getwindowgrab(Sdl_Window* window) @extname("SDL_GetWindowGrab");
fn Sdl_Bool sdl_Getwindowkeyboardgrab(Sdl_Window* window) @extname("SDL_GetWindowKeyboardGrab");
fn Sdl_Bool sdl_Getwindowmousegrab(Sdl_Window* window) @extname("SDL_GetWindowMouseGrab");
fn Sdl_Window* sdl_Getgrabbedwindow() @extname("SDL_GetGrabbedWindow");
fn CInt sdl_Setwindowmouserect(Sdl_Window* window, Sdl_Rect* rect) @extname("SDL_SetWindowMouseRect");
fn Sdl_Rect* sdl_Getwindowmouserect(Sdl_Window* window) @extname("SDL_GetWindowMouseRect");
fn CInt sdl_Setwindowbrightness(Sdl_Window* window, float brightness) @extname("SDL_SetWindowBrightness");
fn float sdl_Getwindowbrightness(Sdl_Window* window) @extname("SDL_GetWindowBrightness");
fn CInt sdl_Setwindowopacity(Sdl_Window* window, float opacity) @extname("SDL_SetWindowOpacity");
fn CInt sdl_Getwindowopacity(Sdl_Window* window, float* out_Opacity) @extname("SDL_GetWindowOpacity");
fn CInt sdl_Setwindowmodalfor(Sdl_Window* modal_Window, Sdl_Window* parent_Window) @extname("SDL_SetWindowModalFor");
fn CInt sdl_Setwindowinputfocus(Sdl_Window* window) @extname("SDL_SetWindowInputFocus");
fn CInt sdl_Setwindowgammaramp(Sdl_Window* window, ushort* red, ushort* green, ushort* blue) @extname("SDL_SetWindowGammaRamp");
fn CInt sdl_Getwindowgammaramp(Sdl_Window* window, ushort* red, ushort* green, ushort* blue) @extname("SDL_GetWindowGammaRamp");
fn CInt sdl_Setwindowhittest(Sdl_Window* window, FunPtr* callback, void* callback_Data) @extname("SDL_SetWindowHitTest");
fn CInt sdl_Flashwindow(Sdl_Window* window, Sdl_Flashoperation operation) @extname("SDL_FlashWindow");
fn void sdl_Destroywindow(Sdl_Window* window) @extname("SDL_DestroyWindow");
fn Sdl_Bool sdl_Isscreensaverenabled() @extname("SDL_IsScreenSaverEnabled");
fn void sdl_Enablescreensaver() @extname("SDL_EnableScreenSaver");
fn void sdl_Disablescreensaver() @extname("SDL_DisableScreenSaver");
fn CInt sdl_Gl_Loadlibrary(char* path) @extname("SDL_GL_LoadLibrary");
fn void* sdl_Gl_Getprocaddress(char* proc) @extname("SDL_GL_GetProcAddress");
fn void sdl_Gl_Unloadlibrary() @extname("SDL_GL_UnloadLibrary");
fn Sdl_Bool sdl_Gl_Extensionsupported(char* extension) @extname("SDL_GL_ExtensionSupported");
fn void sdl_Gl_Resetattributes() @extname("SDL_GL_ResetAttributes");
fn CInt sdl_Gl_Setattribute(Sdl_Glattr attr, CInt value) @extname("SDL_GL_SetAttribute");
fn CInt sdl_Gl_Getattribute(Sdl_Glattr attr, CInt* value) @extname("SDL_GL_GetAttribute");
fn void* sdl_Gl_Createcontext(Sdl_Window* window) @extname("SDL_GL_CreateContext");
fn CInt sdl_Gl_Makecurrent(Sdl_Window* window, void* context) @extname("SDL_GL_MakeCurrent");
fn Sdl_Window* sdl_Gl_Getcurrentwindow() @extname("SDL_GL_GetCurrentWindow");
fn void* sdl_Gl_Getcurrentcontext() @extname("SDL_GL_GetCurrentContext");
fn void sdl_Gl_Getdrawablesize(Sdl_Window* window, CInt* w, CInt* h) @extname("SDL_GL_GetDrawableSize");
fn CInt sdl_Gl_Setswapinterval(CInt interval) @extname("SDL_GL_SetSwapInterval");
fn CInt sdl_Gl_Getswapinterval() @extname("SDL_GL_GetSwapInterval");
fn void sdl_Gl_Swapwindow(Sdl_Window* window) @extname("SDL_GL_SwapWindow");
fn void sdl_Gl_Deletecontext(void* context) @extname("SDL_GL_DeleteContext");
fn Sdl_Window* sdl_Getkeyboardfocus() @extname("SDL_GetKeyboardFocus");
fn char* sdl_Getkeyboardstate(CInt* numkeys) @extname("SDL_GetKeyboardState");
fn void sdl_Resetkeyboard() @extname("SDL_ResetKeyboard");
fn Sdl_Keymod sdl_Getmodstate() @extname("SDL_GetModState");
fn void sdl_Setmodstate(Sdl_Keymod modstate) @extname("SDL_SetModState");
fn CInt sdl_Getkeyfromscancode(Sdl_Scancode scancode) @extname("SDL_GetKeyFromScancode");
fn Sdl_Scancode sdl_Getscancodefromkey(CInt key) @extname("SDL_GetScancodeFromKey");
fn char* sdl_Getscancodename(Sdl_Scancode scancode) @extname("SDL_GetScancodeName");
fn Sdl_Scancode sdl_Getscancodefromname(char* name) @extname("SDL_GetScancodeFromName");
fn char* sdl_Getkeyname(CInt key) @extname("SDL_GetKeyName");
fn CInt sdl_Getkeyfromname(char* name) @extname("SDL_GetKeyFromName");
fn void sdl_Starttextinput() @extname("SDL_StartTextInput");
fn Sdl_Bool sdl_Istextinputactive() @extname("SDL_IsTextInputActive");
fn void sdl_Stoptextinput() @extname("SDL_StopTextInput");
fn void sdl_Clearcomposition() @extname("SDL_ClearComposition");
fn Sdl_Bool sdl_Istextinputshown() @extname("SDL_IsTextInputShown");
fn void sdl_Settextinputrect(Sdl_Rect* rect) @extname("SDL_SetTextInputRect");
fn Sdl_Bool sdl_Hasscreenkeyboardsupport() @extname("SDL_HasScreenKeyboardSupport");
fn Sdl_Bool sdl_Isscreenkeyboardshown(Sdl_Window* window) @extname("SDL_IsScreenKeyboardShown");
fn Sdl_Window* sdl_Getmousefocus() @extname("SDL_GetMouseFocus");
fn uint sdl_Getmousestate(CInt* x, CInt* y) @extname("SDL_GetMouseState");
fn uint sdl_Getglobalmousestate(CInt* x, CInt* y) @extname("SDL_GetGlobalMouseState");
fn uint sdl_Getrelativemousestate(CInt* x, CInt* y) @extname("SDL_GetRelativeMouseState");
fn void sdl_Warpmouseinwindow(Sdl_Window* window, CInt x, CInt y) @extname("SDL_WarpMouseInWindow");
fn CInt sdl_Warpmouseglobal(CInt x, CInt y) @extname("SDL_WarpMouseGlobal");
fn CInt sdl_Setrelativemousemode(Sdl_Bool enabled) @extname("SDL_SetRelativeMouseMode");
fn CInt sdl_Capturemouse(Sdl_Bool enabled) @extname("SDL_CaptureMouse");
fn Sdl_Bool sdl_Getrelativemousemode() @extname("SDL_GetRelativeMouseMode");
fn Sdl_Cursor* sdl_Createcursor(char* data, char* mask, CInt w, CInt h, CInt hot_X, CInt hot_Y) @extname("SDL_CreateCursor");
fn Sdl_Cursor* sdl_Createcolorcursor(Sdl_Surface* surface, CInt hot_X, CInt hot_Y) @extname("SDL_CreateColorCursor");
fn Sdl_Cursor* sdl_Createsystemcursor(Sdl_Systemcursor id) @extname("SDL_CreateSystemCursor");
fn void sdl_Setcursor(Sdl_Cursor* cursor) @extname("SDL_SetCursor");
fn Sdl_Cursor* sdl_Getcursor() @extname("SDL_GetCursor");
fn Sdl_Cursor* sdl_Getdefaultcursor() @extname("SDL_GetDefaultCursor");
fn void sdl_Freecursor(Sdl_Cursor* cursor) @extname("SDL_FreeCursor");
fn CInt sdl_Showcursor(CInt toggle) @extname("SDL_ShowCursor");
fn void sdl_Guidtostring(Sdl_Guid guid, char* pszguid, CInt cbguid) @extname("SDL_GUIDToString");
fn Sdl_Guid sdl_Guidfromstring(char* pchguid) @extname("SDL_GUIDFromString");
fn void sdl_Lockjoysticks() @extname("SDL_LockJoysticks");
fn void sdl_Unlockjoysticks() @extname("SDL_UnlockJoysticks");
fn CInt sdl_Numjoysticks() @extname("SDL_NumJoysticks");
fn char* sdl_Joysticknameforindex(CInt device_Index) @extname("SDL_JoystickNameForIndex");
fn char* sdl_Joystickpathforindex(CInt device_Index) @extname("SDL_JoystickPathForIndex");
fn CInt sdl_Joystickgetdeviceplayerindex(CInt device_Index) @extname("SDL_JoystickGetDevicePlayerIndex");
fn Sdl_Guid sdl_Joystickgetdeviceguid(CInt device_Index) @extname("SDL_JoystickGetDeviceGUID");
fn ushort sdl_Joystickgetdevicevendor(CInt device_Index) @extname("SDL_JoystickGetDeviceVendor");
fn ushort sdl_Joystickgetdeviceproduct(CInt device_Index) @extname("SDL_JoystickGetDeviceProduct");
fn ushort sdl_Joystickgetdeviceproductversion(CInt device_Index) @extname("SDL_JoystickGetDeviceProductVersion");
fn Sdl_Joysticktype sdl_Joystickgetdevicetype(CInt device_Index) @extname("SDL_JoystickGetDeviceType");
fn CInt sdl_Joystickgetdeviceinstanceid(CInt device_Index) @extname("SDL_JoystickGetDeviceInstanceID");
fn _Sdl_Joystick* sdl_Joystickopen(CInt device_Index) @extname("SDL_JoystickOpen");
fn _Sdl_Joystick* sdl_Joystickfrominstanceid(CInt instance_Id) @extname("SDL_JoystickFromInstanceID");
fn _Sdl_Joystick* sdl_Joystickfromplayerindex(CInt player_Index) @extname("SDL_JoystickFromPlayerIndex");
fn CInt sdl_Joystickattachvirtual(Sdl_Joysticktype type, CInt naxes, CInt nbuttons, CInt nhats) @extname("SDL_JoystickAttachVirtual");
fn CInt sdl_Joystickattachvirtualex(Sdl_Virtualjoystickdesc* desc) @extname("SDL_JoystickAttachVirtualEx");
fn CInt sdl_Joystickdetachvirtual(CInt device_Index) @extname("SDL_JoystickDetachVirtual");
fn Sdl_Bool sdl_Joystickisvirtual(CInt device_Index) @extname("SDL_JoystickIsVirtual");
fn CInt sdl_Joysticksetvirtualaxis(_Sdl_Joystick* joystick, CInt axis, CShort value) @extname("SDL_JoystickSetVirtualAxis");
fn CInt sdl_Joysticksetvirtualbutton(_Sdl_Joystick* joystick, CInt button, char value) @extname("SDL_JoystickSetVirtualButton");
fn CInt sdl_Joysticksetvirtualhat(_Sdl_Joystick* joystick, CInt hat, char value) @extname("SDL_JoystickSetVirtualHat");
fn char* sdl_Joystickname(_Sdl_Joystick* joystick) @extname("SDL_JoystickName");
fn char* sdl_Joystickpath(_Sdl_Joystick* joystick) @extname("SDL_JoystickPath");
fn CInt sdl_Joystickgetplayerindex(_Sdl_Joystick* joystick) @extname("SDL_JoystickGetPlayerIndex");
fn void sdl_Joysticksetplayerindex(_Sdl_Joystick* joystick, CInt player_Index) @extname("SDL_JoystickSetPlayerIndex");
fn Sdl_Guid sdl_Joystickgetguid(_Sdl_Joystick* joystick) @extname("SDL_JoystickGetGUID");
fn ushort sdl_Joystickgetvendor(_Sdl_Joystick* joystick) @extname("SDL_JoystickGetVendor");
fn ushort sdl_Joystickgetproduct(_Sdl_Joystick* joystick) @extname("SDL_JoystickGetProduct");
fn ushort sdl_Joystickgetproductversion(_Sdl_Joystick* joystick) @extname("SDL_JoystickGetProductVersion");
fn ushort sdl_Joystickgetfirmwareversion(_Sdl_Joystick* joystick) @extname("SDL_JoystickGetFirmwareVersion");
fn char* sdl_Joystickgetserial(_Sdl_Joystick* joystick) @extname("SDL_JoystickGetSerial");
fn Sdl_Joysticktype sdl_Joystickgettype(_Sdl_Joystick* joystick) @extname("SDL_JoystickGetType");
fn void sdl_Joystickgetguidstring(Sdl_Guid guid, char* pszguid, CInt cbguid) @extname("SDL_JoystickGetGUIDString");
fn Sdl_Guid sdl_Joystickgetguidfromstring(char* pchguid) @extname("SDL_JoystickGetGUIDFromString");
fn Sdl_Bool sdl_Joystickgetattached(_Sdl_Joystick* joystick) @extname("SDL_JoystickGetAttached");
fn CInt sdl_Joystickinstanceid(_Sdl_Joystick* joystick) @extname("SDL_JoystickInstanceID");
fn CInt sdl_Joysticknumaxes(_Sdl_Joystick* joystick) @extname("SDL_JoystickNumAxes");
fn CInt sdl_Joysticknumballs(_Sdl_Joystick* joystick) @extname("SDL_JoystickNumBalls");
fn CInt sdl_Joysticknumhats(_Sdl_Joystick* joystick) @extname("SDL_JoystickNumHats");
fn CInt sdl_Joysticknumbuttons(_Sdl_Joystick* joystick) @extname("SDL_JoystickNumButtons");
fn void sdl_Joystickupdate() @extname("SDL_JoystickUpdate");
fn CInt sdl_Joystickeventstate(CInt state) @extname("SDL_JoystickEventState");
fn CShort sdl_Joystickgetaxis(_Sdl_Joystick* joystick, CInt axis) @extname("SDL_JoystickGetAxis");
fn Sdl_Bool sdl_Joystickgetaxisinitialstate(_Sdl_Joystick* joystick, CInt axis, CShort* state) @extname("SDL_JoystickGetAxisInitialState");
fn char sdl_Joystickgethat(_Sdl_Joystick* joystick, CInt hat) @extname("SDL_JoystickGetHat");
fn CInt sdl_Joystickgetball(_Sdl_Joystick* joystick, CInt ball, CInt* dx, CInt* dy) @extname("SDL_JoystickGetBall");
fn char sdl_Joystickgetbutton(_Sdl_Joystick* joystick, CInt button) @extname("SDL_JoystickGetButton");
fn CInt sdl_Joystickrumble(_Sdl_Joystick* joystick, ushort low_Frequency_Rumble, ushort high_Frequency_Rumble, uint duration_Ms) @extname("SDL_JoystickRumble");
fn CInt sdl_Joystickrumbletriggers(_Sdl_Joystick* joystick, ushort left_Rumble, ushort right_Rumble, uint duration_Ms) @extname("SDL_JoystickRumbleTriggers");
fn Sdl_Bool sdl_Joystickhasled(_Sdl_Joystick* joystick) @extname("SDL_JoystickHasLED");
fn Sdl_Bool sdl_Joystickhasrumble(_Sdl_Joystick* joystick) @extname("SDL_JoystickHasRumble");
fn Sdl_Bool sdl_Joystickhasrumbletriggers(_Sdl_Joystick* joystick) @extname("SDL_JoystickHasRumbleTriggers");
fn CInt sdl_Joysticksetled(_Sdl_Joystick* joystick, char red, char green, char blue) @extname("SDL_JoystickSetLED");
fn CInt sdl_Joysticksendeffect(_Sdl_Joystick* joystick, void* data, CInt size) @extname("SDL_JoystickSendEffect");
fn void sdl_Joystickclose(_Sdl_Joystick* joystick) @extname("SDL_JoystickClose");
fn Sdl_Joystickpowerlevel sdl_Joystickcurrentpowerlevel(_Sdl_Joystick* joystick) @extname("SDL_JoystickCurrentPowerLevel");
fn void sdl_Locksensors() @extname("SDL_LockSensors");
fn void sdl_Unlocksensors() @extname("SDL_UnlockSensors");
fn CInt sdl_Numsensors() @extname("SDL_NumSensors");
fn char* sdl_Sensorgetdevicename(CInt device_Index) @extname("SDL_SensorGetDeviceName");
fn Sdl_Sensortype sdl_Sensorgetdevicetype(CInt device_Index) @extname("SDL_SensorGetDeviceType");
fn CInt sdl_Sensorgetdevicenonportabletype(CInt device_Index) @extname("SDL_SensorGetDeviceNonPortableType");
fn CInt sdl_Sensorgetdeviceinstanceid(CInt device_Index) @extname("SDL_SensorGetDeviceInstanceID");
fn _Sdl_Sensor* sdl_Sensoropen(CInt device_Index) @extname("SDL_SensorOpen");
fn _Sdl_Sensor* sdl_Sensorfrominstanceid(CInt instance_Id) @extname("SDL_SensorFromInstanceID");
fn char* sdl_Sensorgetname(_Sdl_Sensor* sensor) @extname("SDL_SensorGetName");
fn Sdl_Sensortype sdl_Sensorgettype(_Sdl_Sensor* sensor) @extname("SDL_SensorGetType");
fn CInt sdl_Sensorgetnonportabletype(_Sdl_Sensor* sensor) @extname("SDL_SensorGetNonPortableType");
fn CInt sdl_Sensorgetinstanceid(_Sdl_Sensor* sensor) @extname("SDL_SensorGetInstanceID");
fn CInt sdl_Sensorgetdata(_Sdl_Sensor* sensor, float* data, CInt num_Values) @extname("SDL_SensorGetData");
fn void sdl_Sensorclose(_Sdl_Sensor* sensor) @extname("SDL_SensorClose");
fn void sdl_Sensorupdate() @extname("SDL_SensorUpdate");
fn CInt sdl_Gamecontrolleraddmappingsfromrw(Sdl_Rwops* rw, CInt freerw) @extname("SDL_GameControllerAddMappingsFromRW");
fn CInt sdl_Gamecontrolleraddmapping(char* mappingstring) @extname("SDL_GameControllerAddMapping");
fn CInt sdl_Gamecontrollernummappings() @extname("SDL_GameControllerNumMappings");
fn char* sdl_Gamecontrollermappingforindex(CInt mapping_Index) @extname("SDL_GameControllerMappingForIndex");
fn char* sdl_Gamecontrollermappingforguid(Sdl_Guid guid) @extname("SDL_GameControllerMappingForGUID");
fn char* sdl_Gamecontrollermapping(_Sdl_Gamecontroller* gamecontroller) @extname("SDL_GameControllerMapping");
fn Sdl_Bool sdl_Isgamecontroller(CInt joystick_Index) @extname("SDL_IsGameController");
fn char* sdl_Gamecontrollernameforindex(CInt joystick_Index) @extname("SDL_GameControllerNameForIndex");
fn char* sdl_Gamecontrollerpathforindex(CInt joystick_Index) @extname("SDL_GameControllerPathForIndex");
fn Sdl_Gamecontrollertype sdl_Gamecontrollertypeforindex(CInt joystick_Index) @extname("SDL_GameControllerTypeForIndex");
fn char* sdl_Gamecontrollermappingfordeviceindex(CInt joystick_Index) @extname("SDL_GameControllerMappingForDeviceIndex");
fn _Sdl_Gamecontroller* sdl_Gamecontrolleropen(CInt joystick_Index) @extname("SDL_GameControllerOpen");
fn _Sdl_Gamecontroller* sdl_Gamecontrollerfrominstanceid(CInt joyid) @extname("SDL_GameControllerFromInstanceID");
fn _Sdl_Gamecontroller* sdl_Gamecontrollerfromplayerindex(CInt player_Index) @extname("SDL_GameControllerFromPlayerIndex");
fn char* sdl_Gamecontrollername(_Sdl_Gamecontroller* gamecontroller) @extname("SDL_GameControllerName");
fn char* sdl_Gamecontrollerpath(_Sdl_Gamecontroller* gamecontroller) @extname("SDL_GameControllerPath");
fn Sdl_Gamecontrollertype sdl_Gamecontrollergettype(_Sdl_Gamecontroller* gamecontroller) @extname("SDL_GameControllerGetType");
fn CInt sdl_Gamecontrollergetplayerindex(_Sdl_Gamecontroller* gamecontroller) @extname("SDL_GameControllerGetPlayerIndex");
fn void sdl_Gamecontrollersetplayerindex(_Sdl_Gamecontroller* gamecontroller, CInt player_Index) @extname("SDL_GameControllerSetPlayerIndex");
fn ushort sdl_Gamecontrollergetvendor(_Sdl_Gamecontroller* gamecontroller) @extname("SDL_GameControllerGetVendor");
fn ushort sdl_Gamecontrollergetproduct(_Sdl_Gamecontroller* gamecontroller) @extname("SDL_GameControllerGetProduct");
fn ushort sdl_Gamecontrollergetproductversion(_Sdl_Gamecontroller* gamecontroller) @extname("SDL_GameControllerGetProductVersion");
fn ushort sdl_Gamecontrollergetfirmwareversion(_Sdl_Gamecontroller* gamecontroller) @extname("SDL_GameControllerGetFirmwareVersion");
fn char* sdl_Gamecontrollergetserial(_Sdl_Gamecontroller* gamecontroller) @extname("SDL_GameControllerGetSerial");
fn Sdl_Bool sdl_Gamecontrollergetattached(_Sdl_Gamecontroller* gamecontroller) @extname("SDL_GameControllerGetAttached");
fn _Sdl_Joystick* sdl_Gamecontrollergetjoystick(_Sdl_Gamecontroller* gamecontroller) @extname("SDL_GameControllerGetJoystick");
fn CInt sdl_Gamecontrollereventstate(CInt state) @extname("SDL_GameControllerEventState");
fn void sdl_Gamecontrollerupdate() @extname("SDL_GameControllerUpdate");
fn Sdl_Gamecontrolleraxis sdl_Gamecontrollergetaxisfromstring(char* str) @extname("SDL_GameControllerGetAxisFromString");
fn char* sdl_Gamecontrollergetstringforaxis(Sdl_Gamecontrolleraxis axis) @extname("SDL_GameControllerGetStringForAxis");
fn Sdl_Gamecontrollerbuttonbind sdl_Gamecontrollergetbindforaxis(_Sdl_Gamecontroller* gamecontroller, Sdl_Gamecontrolleraxis axis) @extname("SDL_GameControllerGetBindForAxis");
fn Sdl_Bool sdl_Gamecontrollerhasaxis(_Sdl_Gamecontroller* gamecontroller, Sdl_Gamecontrolleraxis axis) @extname("SDL_GameControllerHasAxis");
fn CShort sdl_Gamecontrollergetaxis(_Sdl_Gamecontroller* gamecontroller, Sdl_Gamecontrolleraxis axis) @extname("SDL_GameControllerGetAxis");
fn Sdl_Gamecontrollerbutton sdl_Gamecontrollergetbuttonfromstring(char* str) @extname("SDL_GameControllerGetButtonFromString");
fn char* sdl_Gamecontrollergetstringforbutton(Sdl_Gamecontrollerbutton button) @extname("SDL_GameControllerGetStringForButton");
fn Sdl_Gamecontrollerbuttonbind sdl_Gamecontrollergetbindforbutton(_Sdl_Gamecontroller* gamecontroller, Sdl_Gamecontrollerbutton button) @extname("SDL_GameControllerGetBindForButton");
fn Sdl_Bool sdl_Gamecontrollerhasbutton(_Sdl_Gamecontroller* gamecontroller, Sdl_Gamecontrollerbutton button) @extname("SDL_GameControllerHasButton");
fn char sdl_Gamecontrollergetbutton(_Sdl_Gamecontroller* gamecontroller, Sdl_Gamecontrollerbutton button) @extname("SDL_GameControllerGetButton");
fn CInt sdl_Gamecontrollergetnumtouchpads(_Sdl_Gamecontroller* gamecontroller) @extname("SDL_GameControllerGetNumTouchpads");
fn CInt sdl_Gamecontrollergetnumtouchpadfingers(_Sdl_Gamecontroller* gamecontroller, CInt touchpad) @extname("SDL_GameControllerGetNumTouchpadFingers");
fn CInt sdl_Gamecontrollergettouchpadfinger(_Sdl_Gamecontroller* gamecontroller, CInt touchpad, CInt finger, char* state, float* x, float* y, float* pressure) @extname("SDL_GameControllerGetTouchpadFinger");
fn Sdl_Bool sdl_Gamecontrollerhassensor(_Sdl_Gamecontroller* gamecontroller, Sdl_Sensortype type) @extname("SDL_GameControllerHasSensor");
fn CInt sdl_Gamecontrollersetsensorenabled(_Sdl_Gamecontroller* gamecontroller, Sdl_Sensortype type, Sdl_Bool enabled) @extname("SDL_GameControllerSetSensorEnabled");
fn Sdl_Bool sdl_Gamecontrollerissensorenabled(_Sdl_Gamecontroller* gamecontroller, Sdl_Sensortype type) @extname("SDL_GameControllerIsSensorEnabled");
fn float sdl_Gamecontrollergetsensordatarate(_Sdl_Gamecontroller* gamecontroller, Sdl_Sensortype type) @extname("SDL_GameControllerGetSensorDataRate");
fn CInt sdl_Gamecontrollergetsensordata(_Sdl_Gamecontroller* gamecontroller, Sdl_Sensortype type, float* data, CInt num_Values) @extname("SDL_GameControllerGetSensorData");
fn CInt sdl_Gamecontrollerrumble(_Sdl_Gamecontroller* gamecontroller, ushort low_Frequency_Rumble, ushort high_Frequency_Rumble, uint duration_Ms) @extname("SDL_GameControllerRumble");
fn CInt sdl_Gamecontrollerrumbletriggers(_Sdl_Gamecontroller* gamecontroller, ushort left_Rumble, ushort right_Rumble, uint duration_Ms) @extname("SDL_GameControllerRumbleTriggers");
fn Sdl_Bool sdl_Gamecontrollerhasled(_Sdl_Gamecontroller* gamecontroller) @extname("SDL_GameControllerHasLED");
fn Sdl_Bool sdl_Gamecontrollerhasrumble(_Sdl_Gamecontroller* gamecontroller) @extname("SDL_GameControllerHasRumble");
fn Sdl_Bool sdl_Gamecontrollerhasrumbletriggers(_Sdl_Gamecontroller* gamecontroller) @extname("SDL_GameControllerHasRumbleTriggers");
fn CInt sdl_Gamecontrollersetled(_Sdl_Gamecontroller* gamecontroller, char red, char green, char blue) @extname("SDL_GameControllerSetLED");
fn CInt sdl_Gamecontrollersendeffect(_Sdl_Gamecontroller* gamecontroller, void* data, CInt size) @extname("SDL_GameControllerSendEffect");
fn void sdl_Gamecontrollerclose(_Sdl_Gamecontroller* gamecontroller) @extname("SDL_GameControllerClose");
fn char* sdl_Gamecontrollergetapplesfsymbolsnameforbutton(_Sdl_Gamecontroller* gamecontroller, Sdl_Gamecontrollerbutton button) @extname("SDL_GameControllerGetAppleSFSymbolsNameForButton");
fn char* sdl_Gamecontrollergetapplesfsymbolsnameforaxis(_Sdl_Gamecontroller* gamecontroller, Sdl_Gamecontrolleraxis axis) @extname("SDL_GameControllerGetAppleSFSymbolsNameForAxis");
fn CInt sdl_Getnumtouchdevices() @extname("SDL_GetNumTouchDevices");
fn CLong sdl_Gettouchdevice(CInt index) @extname("SDL_GetTouchDevice");
fn char* sdl_Gettouchname(CInt index) @extname("SDL_GetTouchName");
fn Sdl_Touchdevicetype sdl_Gettouchdevicetype(CLong touchid) @extname("SDL_GetTouchDeviceType");
fn CInt sdl_Getnumtouchfingers(CLong touchid) @extname("SDL_GetNumTouchFingers");
fn Sdl_Finger* sdl_Gettouchfinger(CLong touchid, CInt index) @extname("SDL_GetTouchFinger");
fn CInt sdl_Recordgesture(CLong touchid) @extname("SDL_RecordGesture");
fn CInt sdl_Savealldollartemplates(Sdl_Rwops* dst) @extname("SDL_SaveAllDollarTemplates");
fn CInt sdl_Savedollartemplate(CLong gestureid, Sdl_Rwops* dst) @extname("SDL_SaveDollarTemplate");
fn CInt sdl_Loaddollartemplates(CLong touchid, Sdl_Rwops* src) @extname("SDL_LoadDollarTemplates");
fn void sdl_Pumpevents() @extname("SDL_PumpEvents");
fn CInt sdl_Peepevents(Sdl_Event* events, CInt numevents, Sdl_Eventaction action, uint mintype, uint maxtype) @extname("SDL_PeepEvents");
fn Sdl_Bool sdl_Hasevent(uint type) @extname("SDL_HasEvent");
fn Sdl_Bool sdl_Hasevents(uint mintype, uint maxtype) @extname("SDL_HasEvents");
fn void sdl_Flushevent(uint type) @extname("SDL_FlushEvent");
fn void sdl_Flushevents(uint mintype, uint maxtype) @extname("SDL_FlushEvents");
fn CInt sdl_Pollevent(Sdl_Event* event) @extname("SDL_PollEvent");
fn CInt sdl_Waitevent(Sdl_Event* event) @extname("SDL_WaitEvent");
fn CInt sdl_Waiteventtimeout(Sdl_Event* event, CInt timeout) @extname("SDL_WaitEventTimeout");
fn CInt sdl_Pushevent(Sdl_Event* event) @extname("SDL_PushEvent");
fn void sdl_Seteventfilter(FunPtr* filter, void* userdata) @extname("SDL_SetEventFilter");
fn Sdl_Bool sdl_Geteventfilter(FunPtr** filter, void** userdata) @extname("SDL_GetEventFilter");
fn void sdl_Addeventwatch(FunPtr* filter, void* userdata) @extname("SDL_AddEventWatch");
fn void sdl_Deleventwatch(FunPtr* filter, void* userdata) @extname("SDL_DelEventWatch");
fn void sdl_Filterevents(FunPtr* filter, void* userdata) @extname("SDL_FilterEvents");
fn char sdl_Eventstate(uint type, CInt state) @extname("SDL_EventState");
fn uint sdl_Registerevents(CInt numevents) @extname("SDL_RegisterEvents");
fn char* sdl_Getbasepath() @extname("SDL_GetBasePath");
fn char* sdl_Getprefpath(char* org, char* app) @extname("SDL_GetPrefPath");
fn CInt sdl_Numhaptics() @extname("SDL_NumHaptics");
fn char* sdl_Hapticname(CInt device_Index) @extname("SDL_HapticName");
fn _Sdl_Haptic* sdl_Hapticopen(CInt device_Index) @extname("SDL_HapticOpen");
fn CInt sdl_Hapticopened(CInt device_Index) @extname("SDL_HapticOpened");
fn CInt sdl_Hapticindex(_Sdl_Haptic* haptic) @extname("SDL_HapticIndex");
fn CInt sdl_Mouseishaptic() @extname("SDL_MouseIsHaptic");
fn _Sdl_Haptic* sdl_Hapticopenfrommouse() @extname("SDL_HapticOpenFromMouse");
fn CInt sdl_Joystickishaptic(_Sdl_Joystick* joystick) @extname("SDL_JoystickIsHaptic");
fn _Sdl_Haptic* sdl_Hapticopenfromjoystick(_Sdl_Joystick* joystick) @extname("SDL_HapticOpenFromJoystick");
fn void sdl_Hapticclose(_Sdl_Haptic* haptic) @extname("SDL_HapticClose");
fn CInt sdl_Hapticnumeffects(_Sdl_Haptic* haptic) @extname("SDL_HapticNumEffects");
fn CInt sdl_Hapticnumeffectsplaying(_Sdl_Haptic* haptic) @extname("SDL_HapticNumEffectsPlaying");
fn CUInt sdl_Hapticquery(_Sdl_Haptic* haptic) @extname("SDL_HapticQuery");
fn CInt sdl_Hapticnumaxes(_Sdl_Haptic* haptic) @extname("SDL_HapticNumAxes");
fn CInt sdl_Hapticeffectsupported(_Sdl_Haptic* haptic, Sdl_Hapticeffect* effect) @extname("SDL_HapticEffectSupported");
fn CInt sdl_Hapticneweffect(_Sdl_Haptic* haptic, Sdl_Hapticeffect* effect) @extname("SDL_HapticNewEffect");
fn CInt sdl_Hapticupdateeffect(_Sdl_Haptic* haptic, CInt effect, Sdl_Hapticeffect* data) @extname("SDL_HapticUpdateEffect");
fn CInt sdl_Hapticruneffect(_Sdl_Haptic* haptic, CInt effect, uint iterations) @extname("SDL_HapticRunEffect");
fn CInt sdl_Hapticstopeffect(_Sdl_Haptic* haptic, CInt effect) @extname("SDL_HapticStopEffect");
fn void sdl_Hapticdestroyeffect(_Sdl_Haptic* haptic, CInt effect) @extname("SDL_HapticDestroyEffect");
fn CInt sdl_Hapticgeteffectstatus(_Sdl_Haptic* haptic, CInt effect) @extname("SDL_HapticGetEffectStatus");
fn CInt sdl_Hapticsetgain(_Sdl_Haptic* haptic, CInt gain) @extname("SDL_HapticSetGain");
fn CInt sdl_Hapticsetautocenter(_Sdl_Haptic* haptic, CInt autocenter) @extname("SDL_HapticSetAutocenter");
fn CInt sdl_Hapticpause(_Sdl_Haptic* haptic) @extname("SDL_HapticPause");
fn CInt sdl_Hapticunpause(_Sdl_Haptic* haptic) @extname("SDL_HapticUnpause");
fn CInt sdl_Hapticstopall(_Sdl_Haptic* haptic) @extname("SDL_HapticStopAll");
fn CInt sdl_Hapticrumblesupported(_Sdl_Haptic* haptic) @extname("SDL_HapticRumbleSupported");
fn CInt sdl_Hapticrumbleinit(_Sdl_Haptic* haptic) @extname("SDL_HapticRumbleInit");
fn CInt sdl_Hapticrumbleplay(_Sdl_Haptic* haptic, float strength, uint length) @extname("SDL_HapticRumblePlay");
fn CInt sdl_Hapticrumblestop(_Sdl_Haptic* haptic) @extname("SDL_HapticRumbleStop");
fn CInt sdl_Hid_Init() @extname("SDL_hid_init");
fn CInt sdl_Hid_Exit() @extname("SDL_hid_exit");
fn uint sdl_Hid_Device_Change_Count() @extname("SDL_hid_device_change_count");
fn Sdl_Hid_Device_Info* sdl_Hid_Enumerate(CUShort vendor_Id, CUShort product_Id) @extname("SDL_hid_enumerate");
fn void sdl_Hid_Free_Enumeration(Sdl_Hid_Device_Info* devs) @extname("SDL_hid_free_enumeration");
fn Sdl_Hid_Device_* sdl_Hid_Open(CUShort vendor_Id, CUShort product_Id, char* serial_Number) @extname("SDL_hid_open");
fn Sdl_Hid_Device_* sdl_Hid_Open_Path(char* path, CInt bexclusive) @extname("SDL_hid_open_path");
fn CInt sdl_Hid_Write(Sdl_Hid_Device_* dev, char* data, isize length) @extname("SDL_hid_write");
fn CInt sdl_Hid_Read_Timeout(Sdl_Hid_Device_* dev, char* data, isize length, CInt milliseconds) @extname("SDL_hid_read_timeout");
fn CInt sdl_Hid_Read(Sdl_Hid_Device_* dev, char* data, isize length) @extname("SDL_hid_read");
fn CInt sdl_Hid_Set_Nonblocking(Sdl_Hid_Device_* dev, CInt nonblock) @extname("SDL_hid_set_nonblocking");
fn CInt sdl_Hid_Send_Feature_Report(Sdl_Hid_Device_* dev, char* data, isize length) @extname("SDL_hid_send_feature_report");
fn CInt sdl_Hid_Get_Feature_Report(Sdl_Hid_Device_* dev, char* data, isize length) @extname("SDL_hid_get_feature_report");
fn void sdl_Hid_Close(Sdl_Hid_Device_* dev) @extname("SDL_hid_close");
fn CInt sdl_Hid_Get_Manufacturer_String(Sdl_Hid_Device_* dev, char* string, isize maxlen) @extname("SDL_hid_get_manufacturer_string");
fn CInt sdl_Hid_Get_Product_String(Sdl_Hid_Device_* dev, char* string, isize maxlen) @extname("SDL_hid_get_product_string");
fn CInt sdl_Hid_Get_Serial_Number_String(Sdl_Hid_Device_* dev, char* string, isize maxlen) @extname("SDL_hid_get_serial_number_string");
fn CInt sdl_Hid_Get_Indexed_String(Sdl_Hid_Device_* dev, CInt string_Index, char* string, isize maxlen) @extname("SDL_hid_get_indexed_string");
fn void sdl_Hid_Ble_Scan(Sdl_Bool active) @extname("SDL_hid_ble_scan");
fn Sdl_Bool sdl_Sethintwithpriority(char* name, char* value, Sdl_Hintpriority priority) @extname("SDL_SetHintWithPriority");
fn Sdl_Bool sdl_Sethint(char* name, char* value) @extname("SDL_SetHint");
fn Sdl_Bool sdl_Resethint(char* name) @extname("SDL_ResetHint");
fn char* sdl_Gethint(char* name) @extname("SDL_GetHint");
fn Sdl_Bool sdl_Gethintboolean(char* name, Sdl_Bool default_Value) @extname("SDL_GetHintBoolean");
fn void sdl_Addhintcallback(char* name, FunPtr* callback, void* userdata) @extname("SDL_AddHintCallback");
fn void sdl_Delhintcallback(char* name, FunPtr* callback, void* userdata) @extname("SDL_DelHintCallback");
fn void sdl_Clearhints() @extname("SDL_ClearHints");
fn void* sdl_Loadobject(char* sofile) @extname("SDL_LoadObject");
fn void* sdl_Loadfunction(void* handle, char* name) @extname("SDL_LoadFunction");
fn void sdl_Unloadobject(void* handle) @extname("SDL_UnloadObject");
fn void sdl_Logsetallpriority(Sdl_Logpriority priority) @extname("SDL_LogSetAllPriority");
fn void sdl_Logsetpriority(CInt category, Sdl_Logpriority priority) @extname("SDL_LogSetPriority");
fn Sdl_Logpriority sdl_Loggetpriority(CInt category) @extname("SDL_LogGetPriority");
fn void sdl_Logresetpriorities() @extname("SDL_LogResetPriorities");
fn void sdl_Log(char* fmt) @extname("SDL_Log");
fn void sdl_Logverbose(CInt category, char* fmt) @extname("SDL_LogVerbose");
fn void sdl_Logdebug(CInt category, char* fmt) @extname("SDL_LogDebug");
fn void sdl_Loginfo(CInt category, char* fmt) @extname("SDL_LogInfo");
fn void sdl_Logwarn(CInt category, char* fmt) @extname("SDL_LogWarn");
fn void sdl_Logerror(CInt category, char* fmt) @extname("SDL_LogError");
fn void sdl_Logcritical(CInt category, char* fmt) @extname("SDL_LogCritical");
fn void sdl_Logmessage(CInt category, Sdl_Logpriority priority, char* fmt) @extname("SDL_LogMessage");
fn void sdl_Loggetoutputfunction(FunPtr** callback, void** userdata) @extname("SDL_LogGetOutputFunction");
fn void sdl_Logsetoutputfunction(FunPtr* callback, void* userdata) @extname("SDL_LogSetOutputFunction");
fn CInt sdl_Showmessagebox(Sdl_Messageboxdata* messageboxdata, CInt* buttonid) @extname("SDL_ShowMessageBox");
fn CInt sdl_Showsimplemessagebox(uint flags, char* title, char* message, Sdl_Window* window) @extname("SDL_ShowSimpleMessageBox");
fn void* sdl_Metal_Createview(Sdl_Window* window) @extname("SDL_Metal_CreateView");
fn void sdl_Metal_Destroyview(void* view) @extname("SDL_Metal_DestroyView");
fn void* sdl_Metal_Getlayer(void* view) @extname("SDL_Metal_GetLayer");
fn void sdl_Metal_Getdrawablesize(Sdl_Window* window, CInt* w, CInt* h) @extname("SDL_Metal_GetDrawableSize");
fn Sdl_Powerstate sdl_Getpowerinfo(CInt* secs, CInt* pct) @extname("SDL_GetPowerInfo");
fn CInt sdl_Getnumrenderdrivers() @extname("SDL_GetNumRenderDrivers");
fn CInt sdl_Getrenderdriverinfo(CInt index, Sdl_Rendererinfo* info) @extname("SDL_GetRenderDriverInfo");
fn CInt sdl_Createwindowandrenderer(CInt width, CInt height, uint window_Flags, Sdl_Window** window, Sdl_Renderer** renderer) @extname("SDL_CreateWindowAndRenderer");
fn Sdl_Renderer* sdl_Createrenderer(Sdl_Window* window, CInt index, uint flags) @extname("SDL_CreateRenderer");
fn Sdl_Renderer* sdl_Createsoftwarerenderer(Sdl_Surface* surface) @extname("SDL_CreateSoftwareRenderer");
fn Sdl_Renderer* sdl_Getrenderer(Sdl_Window* window) @extname("SDL_GetRenderer");
fn Sdl_Window* sdl_Rendergetwindow(Sdl_Renderer* renderer) @extname("SDL_RenderGetWindow");
fn CInt sdl_Getrendererinfo(Sdl_Renderer* renderer, Sdl_Rendererinfo* info) @extname("SDL_GetRendererInfo");
fn CInt sdl_Getrendereroutputsize(Sdl_Renderer* renderer, CInt* w, CInt* h) @extname("SDL_GetRendererOutputSize");
fn Sdl_Texture* sdl_Createtexture(Sdl_Renderer* renderer, uint format, CInt access, CInt w, CInt h) @extname("SDL_CreateTexture");
fn Sdl_Texture* sdl_Createtexturefromsurface(Sdl_Renderer* renderer, Sdl_Surface* surface) @extname("SDL_CreateTextureFromSurface");
fn CInt sdl_Querytexture(Sdl_Texture* texture, uint* format, CInt* access, CInt* w, CInt* h) @extname("SDL_QueryTexture");
fn CInt sdl_Settexturecolormod(Sdl_Texture* texture, char r, char g, char b) @extname("SDL_SetTextureColorMod");
fn CInt sdl_Gettexturecolormod(Sdl_Texture* texture, char* r, char* g, char* b) @extname("SDL_GetTextureColorMod");
fn CInt sdl_Settexturealphamod(Sdl_Texture* texture, char alpha) @extname("SDL_SetTextureAlphaMod");
fn CInt sdl_Gettexturealphamod(Sdl_Texture* texture, char* alpha) @extname("SDL_GetTextureAlphaMod");
fn CInt sdl_Settextureblendmode(Sdl_Texture* texture, Sdl_Blendmode blendmode) @extname("SDL_SetTextureBlendMode");
fn CInt sdl_Gettextureblendmode(Sdl_Texture* texture, Sdl_Blendmode* blendmode) @extname("SDL_GetTextureBlendMode");
fn CInt sdl_Settexturescalemode(Sdl_Texture* texture, Sdl_Scalemode scalemode) @extname("SDL_SetTextureScaleMode");
fn CInt sdl_Gettexturescalemode(Sdl_Texture* texture, Sdl_Scalemode* scalemode) @extname("SDL_GetTextureScaleMode");
fn CInt sdl_Settextureuserdata(Sdl_Texture* texture, void* userdata) @extname("SDL_SetTextureUserData");
fn void* sdl_Gettextureuserdata(Sdl_Texture* texture) @extname("SDL_GetTextureUserData");
fn CInt sdl_Updatetexture(Sdl_Texture* texture, Sdl_Rect* rect, void* pixels, CInt pitch) @extname("SDL_UpdateTexture");
fn CInt sdl_Updateyuvtexture(Sdl_Texture* texture, Sdl_Rect* rect, char* yplane, CInt ypitch, char* uplane, CInt upitch, char* vplane, CInt vpitch) @extname("SDL_UpdateYUVTexture");
fn CInt sdl_Updatenvtexture(Sdl_Texture* texture, Sdl_Rect* rect, char* yplane, CInt ypitch, char* uvplane, CInt uvpitch) @extname("SDL_UpdateNVTexture");
fn CInt sdl_Locktexture(Sdl_Texture* texture, Sdl_Rect* rect, void** pixels, CInt* pitch) @extname("SDL_LockTexture");
fn CInt sdl_Locktexturetosurface(Sdl_Texture* texture, Sdl_Rect* rect, Sdl_Surface** surface) @extname("SDL_LockTextureToSurface");
fn void sdl_Unlocktexture(Sdl_Texture* texture) @extname("SDL_UnlockTexture");
fn Sdl_Bool sdl_Rendertargetsupported(Sdl_Renderer* renderer) @extname("SDL_RenderTargetSupported");
fn CInt sdl_Setrendertarget(Sdl_Renderer* renderer, Sdl_Texture* texture) @extname("SDL_SetRenderTarget");
fn Sdl_Texture* sdl_Getrendertarget(Sdl_Renderer* renderer) @extname("SDL_GetRenderTarget");
fn CInt sdl_Rendersetlogicalsize(Sdl_Renderer* renderer, CInt w, CInt h) @extname("SDL_RenderSetLogicalSize");
fn void sdl_Rendergetlogicalsize(Sdl_Renderer* renderer, CInt* w, CInt* h) @extname("SDL_RenderGetLogicalSize");
fn CInt sdl_Rendersetintegerscale(Sdl_Renderer* renderer, Sdl_Bool enable) @extname("SDL_RenderSetIntegerScale");
fn Sdl_Bool sdl_Rendergetintegerscale(Sdl_Renderer* renderer) @extname("SDL_RenderGetIntegerScale");
fn CInt sdl_Rendersetviewport(Sdl_Renderer* renderer, Sdl_Rect* rect) @extname("SDL_RenderSetViewport");
fn void sdl_Rendergetviewport(Sdl_Renderer* renderer, Sdl_Rect* rect) @extname("SDL_RenderGetViewport");
fn CInt sdl_Rendersetcliprect(Sdl_Renderer* renderer, Sdl_Rect* rect) @extname("SDL_RenderSetClipRect");
fn void sdl_Rendergetcliprect(Sdl_Renderer* renderer, Sdl_Rect* rect) @extname("SDL_RenderGetClipRect");
fn Sdl_Bool sdl_Renderisclipenabled(Sdl_Renderer* renderer) @extname("SDL_RenderIsClipEnabled");
fn CInt sdl_Rendersetscale(Sdl_Renderer* renderer, float scalex, float scaley) @extname("SDL_RenderSetScale");
fn void sdl_Rendergetscale(Sdl_Renderer* renderer, float* scalex, float* scaley) @extname("SDL_RenderGetScale");
fn void sdl_Renderwindowtological(Sdl_Renderer* renderer, CInt windowx, CInt windowy, float* logicalx, float* logicaly) @extname("SDL_RenderWindowToLogical");
fn void sdl_Renderlogicaltowindow(Sdl_Renderer* renderer, float logicalx, float logicaly, CInt* windowx, CInt* windowy) @extname("SDL_RenderLogicalToWindow");
fn CInt sdl_Setrenderdrawcolor(Sdl_Renderer* renderer, char r, char g, char b, char a) @extname("SDL_SetRenderDrawColor");
fn CInt sdl_Getrenderdrawcolor(Sdl_Renderer* renderer, char* r, char* g, char* b, char* a) @extname("SDL_GetRenderDrawColor");
fn CInt sdl_Setrenderdrawblendmode(Sdl_Renderer* renderer, Sdl_Blendmode blendmode) @extname("SDL_SetRenderDrawBlendMode");
fn CInt sdl_Getrenderdrawblendmode(Sdl_Renderer* renderer, Sdl_Blendmode* blendmode) @extname("SDL_GetRenderDrawBlendMode");
fn CInt sdl_Renderclear(Sdl_Renderer* renderer) @extname("SDL_RenderClear");
fn CInt sdl_Renderdrawpoint(Sdl_Renderer* renderer, CInt x, CInt y) @extname("SDL_RenderDrawPoint");
fn CInt sdl_Renderdrawpoints(Sdl_Renderer* renderer, Sdl_Point* points, CInt count) @extname("SDL_RenderDrawPoints");
fn CInt sdl_Renderdrawline(Sdl_Renderer* renderer, CInt x1, CInt y1, CInt x2, CInt y2) @extname("SDL_RenderDrawLine");
fn CInt sdl_Renderdrawlines(Sdl_Renderer* renderer, Sdl_Point* points, CInt count) @extname("SDL_RenderDrawLines");
fn CInt sdl_Renderdrawrect(Sdl_Renderer* renderer, Sdl_Rect* rect) @extname("SDL_RenderDrawRect");
fn CInt sdl_Renderdrawrects(Sdl_Renderer* renderer, Sdl_Rect* rects, CInt count) @extname("SDL_RenderDrawRects");
fn CInt sdl_Renderfillrect(Sdl_Renderer* renderer, Sdl_Rect* rect) @extname("SDL_RenderFillRect");
fn CInt sdl_Renderfillrects(Sdl_Renderer* renderer, Sdl_Rect* rects, CInt count) @extname("SDL_RenderFillRects");
fn CInt sdl_Rendercopy(Sdl_Renderer* renderer, Sdl_Texture* texture, Sdl_Rect* srcrect, Sdl_Rect* dstrect) @extname("SDL_RenderCopy");
fn CInt sdl_Rendercopyex(Sdl_Renderer* renderer, Sdl_Texture* texture, Sdl_Rect* srcrect, Sdl_Rect* dstrect, double angle, Sdl_Point* center, Sdl_Rendererflip flip) @extname("SDL_RenderCopyEx");
fn CInt sdl_Renderdrawpointf(Sdl_Renderer* renderer, float x, float y) @extname("SDL_RenderDrawPointF");
fn CInt sdl_Renderdrawpointsf(Sdl_Renderer* renderer, Sdl_Fpoint* points, CInt count) @extname("SDL_RenderDrawPointsF");
fn CInt sdl_Renderdrawlinef(Sdl_Renderer* renderer, float x1, float y1, float x2, float y2) @extname("SDL_RenderDrawLineF");
fn CInt sdl_Renderdrawlinesf(Sdl_Renderer* renderer, Sdl_Fpoint* points, CInt count) @extname("SDL_RenderDrawLinesF");
fn CInt sdl_Renderdrawrectf(Sdl_Renderer* renderer, Sdl_Frect* rect) @extname("SDL_RenderDrawRectF");
fn CInt sdl_Renderdrawrectsf(Sdl_Renderer* renderer, Sdl_Frect* rects, CInt count) @extname("SDL_RenderDrawRectsF");
fn CInt sdl_Renderfillrectf(Sdl_Renderer* renderer, Sdl_Frect* rect) @extname("SDL_RenderFillRectF");
fn CInt sdl_Renderfillrectsf(Sdl_Renderer* renderer, Sdl_Frect* rects, CInt count) @extname("SDL_RenderFillRectsF");
fn CInt sdl_Rendercopyf(Sdl_Renderer* renderer, Sdl_Texture* texture, Sdl_Rect* srcrect, Sdl_Frect* dstrect) @extname("SDL_RenderCopyF");
fn CInt sdl_Rendercopyexf(Sdl_Renderer* renderer, Sdl_Texture* texture, Sdl_Rect* srcrect, Sdl_Frect* dstrect, double angle, Sdl_Fpoint* center, Sdl_Rendererflip flip) @extname("SDL_RenderCopyExF");
fn CInt sdl_Rendergeometry(Sdl_Renderer* renderer, Sdl_Texture* texture, Sdl_Vertex* vertices, CInt num_Vertices, CInt* indices, CInt num_Indices) @extname("SDL_RenderGeometry");
fn CInt sdl_Rendergeometryraw(Sdl_Renderer* renderer, Sdl_Texture* texture, float* xy, CInt xy_Stride, Sdl_Color* color, CInt color_Stride, float* uv, CInt uv_Stride, CInt num_Vertices, void* indices, CInt num_Indices, CInt size_Indices) @extname("SDL_RenderGeometryRaw");
fn CInt sdl_Renderreadpixels(Sdl_Renderer* renderer, Sdl_Rect* rect, uint format, void* pixels, CInt pitch) @extname("SDL_RenderReadPixels");
fn void sdl_Renderpresent(Sdl_Renderer* renderer) @extname("SDL_RenderPresent");
fn void sdl_Destroytexture(Sdl_Texture* texture) @extname("SDL_DestroyTexture");
fn void sdl_Destroyrenderer(Sdl_Renderer* renderer) @extname("SDL_DestroyRenderer");
fn CInt sdl_Renderflush(Sdl_Renderer* renderer) @extname("SDL_RenderFlush");
fn CInt sdl_Gl_Bindtexture(Sdl_Texture* texture, float* texw, float* texh) @extname("SDL_GL_BindTexture");
fn CInt sdl_Gl_Unbindtexture(Sdl_Texture* texture) @extname("SDL_GL_UnbindTexture");
fn void* sdl_Rendergetmetallayer(Sdl_Renderer* renderer) @extname("SDL_RenderGetMetalLayer");
fn void* sdl_Rendergetmetalcommandencoder(Sdl_Renderer* renderer) @extname("SDL_RenderGetMetalCommandEncoder");
fn CInt sdl_Rendersetvsync(Sdl_Renderer* renderer, CInt vsync) @extname("SDL_RenderSetVSync");
fn Sdl_Window* sdl_Createshapedwindow(char* title, CUInt x, CUInt y, CUInt w, CUInt h, uint flags) @extname("SDL_CreateShapedWindow");
fn Sdl_Bool sdl_Isshapedwindow(Sdl_Window* window) @extname("SDL_IsShapedWindow");
fn CInt sdl_Setwindowshape(Sdl_Window* window, Sdl_Surface* shape, Sdl_Windowshapemode* shape_Mode) @extname("SDL_SetWindowShape");
fn CInt sdl_Getshapedwindowmode(Sdl_Window* window, Sdl_Windowshapemode* shape_Mode) @extname("SDL_GetShapedWindowMode");
fn CInt sdl_Linuxsetthreadpriority(CLong threadid, CInt priority) @extname("SDL_LinuxSetThreadPriority");
fn CInt sdl_Linuxsetthreadpriorityandpolicy(CLong threadid, CInt sdlpriority, CInt schedpolicy) @extname("SDL_LinuxSetThreadPriorityAndPolicy");
fn Sdl_Bool sdl_Istablet() @extname("SDL_IsTablet");
fn void sdl_Onapplicationwillterminate() @extname("SDL_OnApplicationWillTerminate");
fn void sdl_Onapplicationdidreceivememorywarning() @extname("SDL_OnApplicationDidReceiveMemoryWarning");
fn void sdl_Onapplicationwillresignactive() @extname("SDL_OnApplicationWillResignActive");
fn void sdl_Onapplicationdidenterbackground() @extname("SDL_OnApplicationDidEnterBackground");
fn void sdl_Onapplicationwillenterforeground() @extname("SDL_OnApplicationWillEnterForeground");
fn void sdl_Onapplicationdidbecomeactive() @extname("SDL_OnApplicationDidBecomeActive");
fn uint sdl_Getticks() @extname("SDL_GetTicks");
fn ulong sdl_Getticks64() @extname("SDL_GetTicks64");
fn ulong sdl_Getperformancecounter() @extname("SDL_GetPerformanceCounter");
fn ulong sdl_Getperformancefrequency() @extname("SDL_GetPerformanceFrequency");
fn void sdl_Delay(uint ms) @extname("SDL_Delay");
fn CInt sdl_Addtimer(uint interval, FunPtr* callback, void* param) @extname("SDL_AddTimer");
fn Sdl_Bool sdl_Removetimer(CInt id) @extname("SDL_RemoveTimer");
fn void sdl_Getversion(Sdl_Version* ver) @extname("SDL_GetVersion");
fn char* sdl_Getrevision() @extname("SDL_GetRevision");
fn CInt sdl_Getrevisionnumber() @extname("SDL_GetRevisionNumber");
fn Sdl_Locale* sdl_Getpreferredlocales() @extname("SDL_GetPreferredLocales");
fn CInt sdl_Openurl(char* url) @extname("SDL_OpenURL");
fn CInt sdl_Init(uint flags) @extname("SDL_Init");
fn CInt sdl_Initsubsystem(uint flags) @extname("SDL_InitSubSystem");
fn void sdl_Quitsubsystem(uint flags) @extname("SDL_QuitSubSystem");
fn uint sdl_Wasinit(uint flags) @extname("SDL_WasInit");
fn void sdl_Quit() @extname("SDL_Quit");
module sdl::sdl_bool;
define Sdl_Bool = distinct int;
const Sdl_Bool SDL_FALSE = 0;
const Sdl_Bool SDL_TRUE = 1;


module sdl::sdl_dummy_enum;
define Sdl_Dummy_Enum = distinct int;
const Sdl_Dummy_Enum DUMMY_ENUM_VALUE = 0;


module sdl::sdl_assertstate;
define Sdl_Assertstate = distinct int;
const Sdl_Assertstate SDL_ASSERTION_RETRY = 0;
const Sdl_Assertstate SDL_ASSERTION_BREAK = 1;
const Sdl_Assertstate SDL_ASSERTION_ABORT = 2;
const Sdl_Assertstate SDL_ASSERTION_IGNORE = 3;
const Sdl_Assertstate SDL_ASSERTION_ALWAYS_IGNORE = 4;


module sdl::sdl_errorcode;
define Sdl_Errorcode = distinct int;
const Sdl_Errorcode SDL_ENOMEM = 0;
const Sdl_Errorcode SDL_EFREAD = 1;
const Sdl_Errorcode SDL_EFWRITE = 2;
const Sdl_Errorcode SDL_EFSEEK = 3;
const Sdl_Errorcode SDL_UNSUPPORTED = 4;
const Sdl_Errorcode SDL_LASTERROR = 5;


module sdl::sdl_threadpriority;
define Sdl_Threadpriority = distinct int;
const Sdl_Threadpriority SDL_THREAD_PRIORITY_LOW = 0;
const Sdl_Threadpriority SDL_THREAD_PRIORITY_NORMAL = 1;
const Sdl_Threadpriority SDL_THREAD_PRIORITY_HIGH = 2;
const Sdl_Threadpriority SDL_THREAD_PRIORITY_TIME_CRITICAL = 3;


module sdl::sdl_audiostatus;
define Sdl_Audiostatus = distinct int;
const Sdl_Audiostatus SDL_AUDIO_STOPPED = 0;
const Sdl_Audiostatus SDL_AUDIO_PLAYING = 1;
const Sdl_Audiostatus SDL_AUDIO_PAUSED = 2;


module sdl::sdl_pixeltype;
define Sdl_Pixeltype = distinct int;
const Sdl_Pixeltype SDL_PIXELTYPE_UNKNOWN = 0;
const Sdl_Pixeltype SDL_PIXELTYPE_INDEX1 = 1;
const Sdl_Pixeltype SDL_PIXELTYPE_INDEX4 = 2;
const Sdl_Pixeltype SDL_PIXELTYPE_INDEX8 = 3;
const Sdl_Pixeltype SDL_PIXELTYPE_PACKED8 = 4;
const Sdl_Pixeltype SDL_PIXELTYPE_PACKED16 = 5;
const Sdl_Pixeltype SDL_PIXELTYPE_PACKED32 = 6;
const Sdl_Pixeltype SDL_PIXELTYPE_ARRAYU8 = 7;
const Sdl_Pixeltype SDL_PIXELTYPE_ARRAYU16 = 8;
const Sdl_Pixeltype SDL_PIXELTYPE_ARRAYU32 = 9;
const Sdl_Pixeltype SDL_PIXELTYPE_ARRAYF16 = 10;
const Sdl_Pixeltype SDL_PIXELTYPE_ARRAYF32 = 11;


module sdl::sdl_bitmaporder;
define Sdl_Bitmaporder = distinct int;
const Sdl_Bitmaporder SDL_BITMAPORDER_NONE = 0;
const Sdl_Bitmaporder SDL_BITMAPORDER_4321 = 1;
const Sdl_Bitmaporder SDL_BITMAPORDER_1234 = 2;


module sdl::sdl_packedorder;
define Sdl_Packedorder = distinct int;
const Sdl_Packedorder SDL_PACKEDORDER_NONE = 0;
const Sdl_Packedorder SDL_PACKEDORDER_XRGB = 1;
const Sdl_Packedorder SDL_PACKEDORDER_RGBX = 2;
const Sdl_Packedorder SDL_PACKEDORDER_ARGB = 3;
const Sdl_Packedorder SDL_PACKEDORDER_RGBA = 4;
const Sdl_Packedorder SDL_PACKEDORDER_XBGR = 5;
const Sdl_Packedorder SDL_PACKEDORDER_BGRX = 6;
const Sdl_Packedorder SDL_PACKEDORDER_ABGR = 7;
const Sdl_Packedorder SDL_PACKEDORDER_BGRA = 8;


module sdl::sdl_arrayorder;
define Sdl_Arrayorder = distinct int;
const Sdl_Arrayorder SDL_ARRAYORDER_NONE = 0;
const Sdl_Arrayorder SDL_ARRAYORDER_RGB = 1;
const Sdl_Arrayorder SDL_ARRAYORDER_RGBA = 2;
const Sdl_Arrayorder SDL_ARRAYORDER_ARGB = 3;
const Sdl_Arrayorder SDL_ARRAYORDER_BGR = 4;
const Sdl_Arrayorder SDL_ARRAYORDER_BGRA = 5;
const Sdl_Arrayorder SDL_ARRAYORDER_ABGR = 6;


module sdl::sdl_packedlayout;
define Sdl_Packedlayout = distinct int;
const Sdl_Packedlayout SDL_PACKEDLAYOUT_NONE = 0;
const Sdl_Packedlayout SDL_PACKEDLAYOUT_332 = 1;
const Sdl_Packedlayout SDL_PACKEDLAYOUT_4444 = 2;
const Sdl_Packedlayout SDL_PACKEDLAYOUT_1555 = 3;
const Sdl_Packedlayout SDL_PACKEDLAYOUT_5551 = 4;
const Sdl_Packedlayout SDL_PACKEDLAYOUT_565 = 5;
const Sdl_Packedlayout SDL_PACKEDLAYOUT_8888 = 6;
const Sdl_Packedlayout SDL_PACKEDLAYOUT_2101010 = 7;
const Sdl_Packedlayout SDL_PACKEDLAYOUT_1010102 = 8;


module sdl::sdl_pixelformatenum;
define Sdl_Pixelformatenum = distinct int;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_UNKNOWN = 0;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_INDEX1LSB = 286261504;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_INDEX1MSB = 287310080;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_INDEX4LSB = 303039488;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_INDEX4MSB = 304088064;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_INDEX8 = 318769153;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_RGB332 = 336660481;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_XRGB4444 = 353504258;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_RGB444 = 353504258;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_XBGR4444 = 357698562;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_BGR444 = 357698562;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_XRGB1555 = 353570562;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_RGB555 = 353570562;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_XBGR1555 = 357764866;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_BGR555 = 357764866;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_ARGB4444 = 355602434;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_RGBA4444 = 356651010;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_ABGR4444 = 359796738;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_BGRA4444 = 360845314;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_ARGB1555 = 355667970;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_RGBA5551 = 356782082;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_ABGR1555 = 359862274;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_BGRA5551 = 360976386;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_RGB565 = 353701890;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_BGR565 = 357896194;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_RGB24 = 386930691;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_BGR24 = 390076419;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_XRGB8888 = 370546692;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_RGB888 = 370546692;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_RGBX8888 = 371595268;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_XBGR8888 = 374740996;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_BGR888 = 374740996;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_BGRX8888 = 375789572;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_ARGB8888 = 372645892;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_RGBA8888 = 373694468;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_ABGR8888 = 376840196;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_BGRA8888 = 377888772;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_ARGB2101010 = 372711428;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_RGBA32 = 376840196;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_ARGB32 = 377888772;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_BGRA32 = 372645892;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_ABGR32 = 373694468;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_YV12 = 842094169;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_IYUV = 1448433993;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_YUY2 = 844715353;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_UYVY = 1498831189;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_YVYU = 1431918169;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_NV12 = 842094158;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_NV21 = 825382478;
const Sdl_Pixelformatenum SDL_PIXELFORMAT_EXTERNAL_OES = 542328143;


module sdl::sdl_blendmode;
define Sdl_Blendmode = distinct int;
const Sdl_Blendmode SDL_BLENDMODE_NONE = 0;
const Sdl_Blendmode SDL_BLENDMODE_BLEND = 1;
const Sdl_Blendmode SDL_BLENDMODE_ADD = 2;
const Sdl_Blendmode SDL_BLENDMODE_MOD = 4;
const Sdl_Blendmode SDL_BLENDMODE_MUL = 8;
const Sdl_Blendmode SDL_BLENDMODE_INVALID = 2147483647;


module sdl::sdl_blendoperation;
define Sdl_Blendoperation = distinct int;
const Sdl_Blendoperation SDL_BLENDOPERATION_ADD = 1;
const Sdl_Blendoperation SDL_BLENDOPERATION_SUBTRACT = 2;
const Sdl_Blendoperation SDL_BLENDOPERATION_REV_SUBTRACT = 3;
const Sdl_Blendoperation SDL_BLENDOPERATION_MINIMUM = 4;
const Sdl_Blendoperation SDL_BLENDOPERATION_MAXIMUM = 5;


module sdl::sdl_blendfactor;
define Sdl_Blendfactor = distinct int;
const Sdl_Blendfactor SDL_BLENDFACTOR_ZERO = 1;
const Sdl_Blendfactor SDL_BLENDFACTOR_ONE = 2;
const Sdl_Blendfactor SDL_BLENDFACTOR_SRC_COLOR = 3;
const Sdl_Blendfactor SDL_BLENDFACTOR_ONE_MINUS_SRC_COLOR = 4;
const Sdl_Blendfactor SDL_BLENDFACTOR_SRC_ALPHA = 5;
const Sdl_Blendfactor SDL_BLENDFACTOR_ONE_MINUS_SRC_ALPHA = 6;
const Sdl_Blendfactor SDL_BLENDFACTOR_DST_COLOR = 7;
const Sdl_Blendfactor SDL_BLENDFACTOR_ONE_MINUS_DST_COLOR = 8;
const Sdl_Blendfactor SDL_BLENDFACTOR_DST_ALPHA = 9;
const Sdl_Blendfactor SDL_BLENDFACTOR_ONE_MINUS_DST_ALPHA = 10;


module sdl::sdl_yuv_conversion_mode;
define Sdl_Yuv_Conversion_Mode = distinct int;
const Sdl_Yuv_Conversion_Mode SDL_YUV_CONVERSION_JPEG = 0;
const Sdl_Yuv_Conversion_Mode SDL_YUV_CONVERSION_BT601 = 1;
const Sdl_Yuv_Conversion_Mode SDL_YUV_CONVERSION_BT709 = 2;
const Sdl_Yuv_Conversion_Mode SDL_YUV_CONVERSION_AUTOMATIC = 3;


module sdl::sdl_windowflags;
define Sdl_Windowflags = distinct int;
const Sdl_Windowflags SDL_WINDOW_FULLSCREEN = 1;
const Sdl_Windowflags SDL_WINDOW_OPENGL = 2;
const Sdl_Windowflags SDL_WINDOW_SHOWN = 4;
const Sdl_Windowflags SDL_WINDOW_HIDDEN = 8;
const Sdl_Windowflags SDL_WINDOW_BORDERLESS = 16;
const Sdl_Windowflags SDL_WINDOW_RESIZABLE = 32;
const Sdl_Windowflags SDL_WINDOW_MINIMIZED = 64;
const Sdl_Windowflags SDL_WINDOW_MAXIMIZED = 128;
const Sdl_Windowflags SDL_WINDOW_MOUSE_GRABBED = 256;
const Sdl_Windowflags SDL_WINDOW_INPUT_FOCUS = 512;
const Sdl_Windowflags SDL_WINDOW_MOUSE_FOCUS = 1024;
const Sdl_Windowflags SDL_WINDOW_FULLSCREEN_DESKTOP = 4097;
const Sdl_Windowflags SDL_WINDOW_FOREIGN = 2048;
const Sdl_Windowflags SDL_WINDOW_ALLOW_HIGHDPI = 8192;
const Sdl_Windowflags SDL_WINDOW_MOUSE_CAPTURE = 16384;
const Sdl_Windowflags SDL_WINDOW_ALWAYS_ON_TOP = 32768;
const Sdl_Windowflags SDL_WINDOW_SKIP_TASKBAR = 65536;
const Sdl_Windowflags SDL_WINDOW_UTILITY = 131072;
const Sdl_Windowflags SDL_WINDOW_TOOLTIP = 262144;
const Sdl_Windowflags SDL_WINDOW_POPUP_MENU = 524288;
const Sdl_Windowflags SDL_WINDOW_KEYBOARD_GRABBED = 1048576;
const Sdl_Windowflags SDL_WINDOW_VULKAN = 268435456;
const Sdl_Windowflags SDL_WINDOW_METAL = 536870912;
const Sdl_Windowflags SDL_WINDOW_INPUT_GRABBED = 256;


module sdl::sdl_windoweventid;
define Sdl_Windoweventid = distinct int;
const Sdl_Windoweventid SDL_WINDOWEVENT_NONE = 0;
const Sdl_Windoweventid SDL_WINDOWEVENT_SHOWN = 1;
const Sdl_Windoweventid SDL_WINDOWEVENT_HIDDEN = 2;
const Sdl_Windoweventid SDL_WINDOWEVENT_EXPOSED = 3;
const Sdl_Windoweventid SDL_WINDOWEVENT_MOVED = 4;
const Sdl_Windoweventid SDL_WINDOWEVENT_RESIZED = 5;
const Sdl_Windoweventid SDL_WINDOWEVENT_SIZE_CHANGED = 6;
const Sdl_Windoweventid SDL_WINDOWEVENT_MINIMIZED = 7;
const Sdl_Windoweventid SDL_WINDOWEVENT_MAXIMIZED = 8;
const Sdl_Windoweventid SDL_WINDOWEVENT_RESTORED = 9;
const Sdl_Windoweventid SDL_WINDOWEVENT_ENTER = 10;
const Sdl_Windoweventid SDL_WINDOWEVENT_LEAVE = 11;
const Sdl_Windoweventid SDL_WINDOWEVENT_FOCUS_GAINED = 12;
const Sdl_Windoweventid SDL_WINDOWEVENT_FOCUS_LOST = 13;
const Sdl_Windoweventid SDL_WINDOWEVENT_CLOSE = 14;
const Sdl_Windoweventid SDL_WINDOWEVENT_TAKE_FOCUS = 15;
const Sdl_Windoweventid SDL_WINDOWEVENT_HIT_TEST = 16;
const Sdl_Windoweventid SDL_WINDOWEVENT_ICCPROF_CHANGED = 17;
const Sdl_Windoweventid SDL_WINDOWEVENT_DISPLAY_CHANGED = 18;


module sdl::sdl_displayeventid;
define Sdl_Displayeventid = distinct int;
const Sdl_Displayeventid SDL_DISPLAYEVENT_NONE = 0;
const Sdl_Displayeventid SDL_DISPLAYEVENT_ORIENTATION = 1;
const Sdl_Displayeventid SDL_DISPLAYEVENT_CONNECTED = 2;
const Sdl_Displayeventid SDL_DISPLAYEVENT_DISCONNECTED = 3;


module sdl::sdl_displayorientation;
define Sdl_Displayorientation = distinct int;
const Sdl_Displayorientation SDL_ORIENTATION_UNKNOWN = 0;
const Sdl_Displayorientation SDL_ORIENTATION_LANDSCAPE = 1;
const Sdl_Displayorientation SDL_ORIENTATION_LANDSCAPE_FLIPPED = 2;
const Sdl_Displayorientation SDL_ORIENTATION_PORTRAIT = 3;
const Sdl_Displayorientation SDL_ORIENTATION_PORTRAIT_FLIPPED = 4;


module sdl::sdl_flashoperation;
define Sdl_Flashoperation = distinct int;
const Sdl_Flashoperation SDL_FLASH_CANCEL = 0;
const Sdl_Flashoperation SDL_FLASH_BRIEFLY = 1;
const Sdl_Flashoperation SDL_FLASH_UNTIL_FOCUSED = 2;


module sdl::sdl_glattr;
define Sdl_Glattr = distinct int;
const Sdl_Glattr SDL_GL_RED_SIZE = 0;
const Sdl_Glattr SDL_GL_GREEN_SIZE = 1;
const Sdl_Glattr SDL_GL_BLUE_SIZE = 2;
const Sdl_Glattr SDL_GL_ALPHA_SIZE = 3;
const Sdl_Glattr SDL_GL_BUFFER_SIZE = 4;
const Sdl_Glattr SDL_GL_DOUBLEBUFFER = 5;
const Sdl_Glattr SDL_GL_DEPTH_SIZE = 6;
const Sdl_Glattr SDL_GL_STENCIL_SIZE = 7;
const Sdl_Glattr SDL_GL_ACCUM_RED_SIZE = 8;
const Sdl_Glattr SDL_GL_ACCUM_GREEN_SIZE = 9;
const Sdl_Glattr SDL_GL_ACCUM_BLUE_SIZE = 10;
const Sdl_Glattr SDL_GL_ACCUM_ALPHA_SIZE = 11;
const Sdl_Glattr SDL_GL_STEREO = 12;
const Sdl_Glattr SDL_GL_MULTISAMPLEBUFFERS = 13;
const Sdl_Glattr SDL_GL_MULTISAMPLESAMPLES = 14;
const Sdl_Glattr SDL_GL_ACCELERATED_VISUAL = 15;
const Sdl_Glattr SDL_GL_RETAINED_BACKING = 16;
const Sdl_Glattr SDL_GL_CONTEXT_MAJOR_VERSION = 17;
const Sdl_Glattr SDL_GL_CONTEXT_MINOR_VERSION = 18;
const Sdl_Glattr SDL_GL_CONTEXT_EGL = 19;
const Sdl_Glattr SDL_GL_CONTEXT_FLAGS = 20;
const Sdl_Glattr SDL_GL_CONTEXT_PROFILE_MASK = 21;
const Sdl_Glattr SDL_GL_SHARE_WITH_CURRENT_CONTEXT = 22;
const Sdl_Glattr SDL_GL_FRAMEBUFFER_SRGB_CAPABLE = 23;
const Sdl_Glattr SDL_GL_CONTEXT_RELEASE_BEHAVIOR = 24;
const Sdl_Glattr SDL_GL_CONTEXT_RESET_NOTIFICATION = 25;
const Sdl_Glattr SDL_GL_CONTEXT_NO_ERROR = 26;
const Sdl_Glattr SDL_GL_FLOATBUFFERS = 27;


module sdl::sdl_glprofile;
define Sdl_Glprofile = distinct int;
const Sdl_Glprofile SDL_GL_CONTEXT_PROFILE_CORE = 1;
const Sdl_Glprofile SDL_GL_CONTEXT_PROFILE_COMPATIBILITY = 2;
const Sdl_Glprofile SDL_GL_CONTEXT_PROFILE_ES = 4;


module sdl::sdl_glcontextflag;
define Sdl_Glcontextflag = distinct int;
const Sdl_Glcontextflag SDL_GL_CONTEXT_DEBUG_FLAG = 1;
const Sdl_Glcontextflag SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = 2;
const Sdl_Glcontextflag SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG = 4;
const Sdl_Glcontextflag SDL_GL_CONTEXT_RESET_ISOLATION_FLAG = 8;


module sdl::sdl_glcontextreleaseflag;
define Sdl_Glcontextreleaseflag = distinct int;
const Sdl_Glcontextreleaseflag SDL_GL_CONTEXT_RELEASE_BEHAVIOR_NONE = 0;
const Sdl_Glcontextreleaseflag SDL_GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = 1;


module sdl::sdl_glcontextresetnotification;
define Sdl_Glcontextresetnotification = distinct int;
const Sdl_Glcontextresetnotification SDL_GL_CONTEXT_RESET_NO_NOTIFICATION = 0;
const Sdl_Glcontextresetnotification SDL_GL_CONTEXT_RESET_LOSE_CONTEXT = 1;


module sdl::sdl_hittestresult;
define Sdl_Hittestresult = distinct int;
const Sdl_Hittestresult SDL_HITTEST_NORMAL = 0;
const Sdl_Hittestresult SDL_HITTEST_DRAGGABLE = 1;
const Sdl_Hittestresult SDL_HITTEST_RESIZE_TOPLEFT = 2;
const Sdl_Hittestresult SDL_HITTEST_RESIZE_TOP = 3;
const Sdl_Hittestresult SDL_HITTEST_RESIZE_TOPRIGHT = 4;
const Sdl_Hittestresult SDL_HITTEST_RESIZE_RIGHT = 5;
const Sdl_Hittestresult SDL_HITTEST_RESIZE_BOTTOMRIGHT = 6;
const Sdl_Hittestresult SDL_HITTEST_RESIZE_BOTTOM = 7;
const Sdl_Hittestresult SDL_HITTEST_RESIZE_BOTTOMLEFT = 8;
const Sdl_Hittestresult SDL_HITTEST_RESIZE_LEFT = 9;


module sdl::sdl_scancode;
define Sdl_Scancode = distinct int;
const Sdl_Scancode SDL_SCANCODE_UNKNOWN = 0;
const Sdl_Scancode SDL_SCANCODE_A = 4;
const Sdl_Scancode SDL_SCANCODE_B = 5;
const Sdl_Scancode SDL_SCANCODE_C = 6;
const Sdl_Scancode SDL_SCANCODE_D = 7;
const Sdl_Scancode SDL_SCANCODE_E = 8;
const Sdl_Scancode SDL_SCANCODE_F = 9;
const Sdl_Scancode SDL_SCANCODE_G = 10;
const Sdl_Scancode SDL_SCANCODE_H = 11;
const Sdl_Scancode SDL_SCANCODE_I = 12;
const Sdl_Scancode SDL_SCANCODE_J = 13;
const Sdl_Scancode SDL_SCANCODE_K = 14;
const Sdl_Scancode SDL_SCANCODE_L = 15;
const Sdl_Scancode SDL_SCANCODE_M = 16;
const Sdl_Scancode SDL_SCANCODE_N = 17;
const Sdl_Scancode SDL_SCANCODE_O = 18;
const Sdl_Scancode SDL_SCANCODE_P = 19;
const Sdl_Scancode SDL_SCANCODE_Q = 20;
const Sdl_Scancode SDL_SCANCODE_R = 21;
const Sdl_Scancode SDL_SCANCODE_S = 22;
const Sdl_Scancode SDL_SCANCODE_T = 23;
const Sdl_Scancode SDL_SCANCODE_U = 24;
const Sdl_Scancode SDL_SCANCODE_V = 25;
const Sdl_Scancode SDL_SCANCODE_W = 26;
const Sdl_Scancode SDL_SCANCODE_X = 27;
const Sdl_Scancode SDL_SCANCODE_Y = 28;
const Sdl_Scancode SDL_SCANCODE_Z = 29;
const Sdl_Scancode SDL_SCANCODE_1 = 30;
const Sdl_Scancode SDL_SCANCODE_2 = 31;
const Sdl_Scancode SDL_SCANCODE_3 = 32;
const Sdl_Scancode SDL_SCANCODE_4 = 33;
const Sdl_Scancode SDL_SCANCODE_5 = 34;
const Sdl_Scancode SDL_SCANCODE_6 = 35;
const Sdl_Scancode SDL_SCANCODE_7 = 36;
const Sdl_Scancode SDL_SCANCODE_8 = 37;
const Sdl_Scancode SDL_SCANCODE_9 = 38;
const Sdl_Scancode SDL_SCANCODE_0 = 39;
const Sdl_Scancode SDL_SCANCODE_RETURN = 40;
const Sdl_Scancode SDL_SCANCODE_ESCAPE = 41;
const Sdl_Scancode SDL_SCANCODE_BACKSPACE = 42;
const Sdl_Scancode SDL_SCANCODE_TAB = 43;
const Sdl_Scancode SDL_SCANCODE_SPACE = 44;
const Sdl_Scancode SDL_SCANCODE_MINUS = 45;
const Sdl_Scancode SDL_SCANCODE_EQUALS = 46;
const Sdl_Scancode SDL_SCANCODE_LEFTBRACKET = 47;
const Sdl_Scancode SDL_SCANCODE_RIGHTBRACKET = 48;
const Sdl_Scancode SDL_SCANCODE_BACKSLASH = 49;
const Sdl_Scancode SDL_SCANCODE_NONUSHASH = 50;
const Sdl_Scancode SDL_SCANCODE_SEMICOLON = 51;
const Sdl_Scancode SDL_SCANCODE_APOSTROPHE = 52;
const Sdl_Scancode SDL_SCANCODE_GRAVE = 53;
const Sdl_Scancode SDL_SCANCODE_COMMA = 54;
const Sdl_Scancode SDL_SCANCODE_PERIOD = 55;
const Sdl_Scancode SDL_SCANCODE_SLASH = 56;
const Sdl_Scancode SDL_SCANCODE_CAPSLOCK = 57;
const Sdl_Scancode SDL_SCANCODE_F1 = 58;
const Sdl_Scancode SDL_SCANCODE_F2 = 59;
const Sdl_Scancode SDL_SCANCODE_F3 = 60;
const Sdl_Scancode SDL_SCANCODE_F4 = 61;
const Sdl_Scancode SDL_SCANCODE_F5 = 62;
const Sdl_Scancode SDL_SCANCODE_F6 = 63;
const Sdl_Scancode SDL_SCANCODE_F7 = 64;
const Sdl_Scancode SDL_SCANCODE_F8 = 65;
const Sdl_Scancode SDL_SCANCODE_F9 = 66;
const Sdl_Scancode SDL_SCANCODE_F10 = 67;
const Sdl_Scancode SDL_SCANCODE_F11 = 68;
const Sdl_Scancode SDL_SCANCODE_F12 = 69;
const Sdl_Scancode SDL_SCANCODE_PRINTSCREEN = 70;
const Sdl_Scancode SDL_SCANCODE_SCROLLLOCK = 71;
const Sdl_Scancode SDL_SCANCODE_PAUSE = 72;
const Sdl_Scancode SDL_SCANCODE_INSERT = 73;
const Sdl_Scancode SDL_SCANCODE_HOME = 74;
const Sdl_Scancode SDL_SCANCODE_PAGEUP = 75;
const Sdl_Scancode SDL_SCANCODE_DELETE = 76;
const Sdl_Scancode SDL_SCANCODE_END = 77;
const Sdl_Scancode SDL_SCANCODE_PAGEDOWN = 78;
const Sdl_Scancode SDL_SCANCODE_RIGHT = 79;
const Sdl_Scancode SDL_SCANCODE_LEFT = 80;
const Sdl_Scancode SDL_SCANCODE_DOWN = 81;
const Sdl_Scancode SDL_SCANCODE_UP = 82;
const Sdl_Scancode SDL_SCANCODE_NUMLOCKCLEAR = 83;
const Sdl_Scancode SDL_SCANCODE_KP_DIVIDE = 84;
const Sdl_Scancode SDL_SCANCODE_KP_MULTIPLY = 85;
const Sdl_Scancode SDL_SCANCODE_KP_MINUS = 86;
const Sdl_Scancode SDL_SCANCODE_KP_PLUS = 87;
const Sdl_Scancode SDL_SCANCODE_KP_ENTER = 88;
const Sdl_Scancode SDL_SCANCODE_KP_1 = 89;
const Sdl_Scancode SDL_SCANCODE_KP_2 = 90;
const Sdl_Scancode SDL_SCANCODE_KP_3 = 91;
const Sdl_Scancode SDL_SCANCODE_KP_4 = 92;
const Sdl_Scancode SDL_SCANCODE_KP_5 = 93;
const Sdl_Scancode SDL_SCANCODE_KP_6 = 94;
const Sdl_Scancode SDL_SCANCODE_KP_7 = 95;
const Sdl_Scancode SDL_SCANCODE_KP_8 = 96;
const Sdl_Scancode SDL_SCANCODE_KP_9 = 97;
const Sdl_Scancode SDL_SCANCODE_KP_0 = 98;
const Sdl_Scancode SDL_SCANCODE_KP_PERIOD = 99;
const Sdl_Scancode SDL_SCANCODE_NONUSBACKSLASH = 100;
const Sdl_Scancode SDL_SCANCODE_APPLICATION = 101;
const Sdl_Scancode SDL_SCANCODE_POWER = 102;
const Sdl_Scancode SDL_SCANCODE_KP_EQUALS = 103;
const Sdl_Scancode SDL_SCANCODE_F13 = 104;
const Sdl_Scancode SDL_SCANCODE_F14 = 105;
const Sdl_Scancode SDL_SCANCODE_F15 = 106;
const Sdl_Scancode SDL_SCANCODE_F16 = 107;
const Sdl_Scancode SDL_SCANCODE_F17 = 108;
const Sdl_Scancode SDL_SCANCODE_F18 = 109;
const Sdl_Scancode SDL_SCANCODE_F19 = 110;
const Sdl_Scancode SDL_SCANCODE_F20 = 111;
const Sdl_Scancode SDL_SCANCODE_F21 = 112;
const Sdl_Scancode SDL_SCANCODE_F22 = 113;
const Sdl_Scancode SDL_SCANCODE_F23 = 114;
const Sdl_Scancode SDL_SCANCODE_F24 = 115;
const Sdl_Scancode SDL_SCANCODE_EXECUTE = 116;
const Sdl_Scancode SDL_SCANCODE_HELP = 117;
const Sdl_Scancode SDL_SCANCODE_MENU = 118;
const Sdl_Scancode SDL_SCANCODE_SELECT = 119;
const Sdl_Scancode SDL_SCANCODE_STOP = 120;
const Sdl_Scancode SDL_SCANCODE_AGAIN = 121;
const Sdl_Scancode SDL_SCANCODE_UNDO = 122;
const Sdl_Scancode SDL_SCANCODE_CUT = 123;
const Sdl_Scancode SDL_SCANCODE_COPY = 124;
const Sdl_Scancode SDL_SCANCODE_PASTE = 125;
const Sdl_Scancode SDL_SCANCODE_FIND = 126;
const Sdl_Scancode SDL_SCANCODE_MUTE = 127;
const Sdl_Scancode SDL_SCANCODE_VOLUMEUP = 128;
const Sdl_Scancode SDL_SCANCODE_VOLUMEDOWN = 129;
const Sdl_Scancode SDL_SCANCODE_KP_COMMA = 133;
const Sdl_Scancode SDL_SCANCODE_KP_EQUALSAS400 = 134;
const Sdl_Scancode SDL_SCANCODE_INTERNATIONAL1 = 135;
const Sdl_Scancode SDL_SCANCODE_INTERNATIONAL2 = 136;
const Sdl_Scancode SDL_SCANCODE_INTERNATIONAL3 = 137;
const Sdl_Scancode SDL_SCANCODE_INTERNATIONAL4 = 138;
const Sdl_Scancode SDL_SCANCODE_INTERNATIONAL5 = 139;
const Sdl_Scancode SDL_SCANCODE_INTERNATIONAL6 = 140;
const Sdl_Scancode SDL_SCANCODE_INTERNATIONAL7 = 141;
const Sdl_Scancode SDL_SCANCODE_INTERNATIONAL8 = 142;
const Sdl_Scancode SDL_SCANCODE_INTERNATIONAL9 = 143;
const Sdl_Scancode SDL_SCANCODE_LANG1 = 144;
const Sdl_Scancode SDL_SCANCODE_LANG2 = 145;
const Sdl_Scancode SDL_SCANCODE_LANG3 = 146;
const Sdl_Scancode SDL_SCANCODE_LANG4 = 147;
const Sdl_Scancode SDL_SCANCODE_LANG5 = 148;
const Sdl_Scancode SDL_SCANCODE_LANG6 = 149;
const Sdl_Scancode SDL_SCANCODE_LANG7 = 150;
const Sdl_Scancode SDL_SCANCODE_LANG8 = 151;
const Sdl_Scancode SDL_SCANCODE_LANG9 = 152;
const Sdl_Scancode SDL_SCANCODE_ALTERASE = 153;
const Sdl_Scancode SDL_SCANCODE_SYSREQ = 154;
const Sdl_Scancode SDL_SCANCODE_CANCEL = 155;
const Sdl_Scancode SDL_SCANCODE_CLEAR = 156;
const Sdl_Scancode SDL_SCANCODE_PRIOR = 157;
const Sdl_Scancode SDL_SCANCODE_RETURN2 = 158;
const Sdl_Scancode SDL_SCANCODE_SEPARATOR = 159;
const Sdl_Scancode SDL_SCANCODE_OUT = 160;
const Sdl_Scancode SDL_SCANCODE_OPER = 161;
const Sdl_Scancode SDL_SCANCODE_CLEARAGAIN = 162;
const Sdl_Scancode SDL_SCANCODE_CRSEL = 163;
const Sdl_Scancode SDL_SCANCODE_EXSEL = 164;
const Sdl_Scancode SDL_SCANCODE_KP_00 = 176;
const Sdl_Scancode SDL_SCANCODE_KP_000 = 177;
const Sdl_Scancode SDL_SCANCODE_THOUSANDSSEPARATOR = 178;
const Sdl_Scancode SDL_SCANCODE_DECIMALSEPARATOR = 179;
const Sdl_Scancode SDL_SCANCODE_CURRENCYUNIT = 180;
const Sdl_Scancode SDL_SCANCODE_CURRENCYSUBUNIT = 181;
const Sdl_Scancode SDL_SCANCODE_KP_LEFTPAREN = 182;
const Sdl_Scancode SDL_SCANCODE_KP_RIGHTPAREN = 183;
const Sdl_Scancode SDL_SCANCODE_KP_LEFTBRACE = 184;
const Sdl_Scancode SDL_SCANCODE_KP_RIGHTBRACE = 185;
const Sdl_Scancode SDL_SCANCODE_KP_TAB = 186;
const Sdl_Scancode SDL_SCANCODE_KP_BACKSPACE = 187;
const Sdl_Scancode SDL_SCANCODE_KP_A = 188;
const Sdl_Scancode SDL_SCANCODE_KP_B = 189;
const Sdl_Scancode SDL_SCANCODE_KP_C = 190;
const Sdl_Scancode SDL_SCANCODE_KP_D = 191;
const Sdl_Scancode SDL_SCANCODE_KP_E = 192;
const Sdl_Scancode SDL_SCANCODE_KP_F = 193;
const Sdl_Scancode SDL_SCANCODE_KP_XOR = 194;
const Sdl_Scancode SDL_SCANCODE_KP_POWER = 195;
const Sdl_Scancode SDL_SCANCODE_KP_PERCENT = 196;
const Sdl_Scancode SDL_SCANCODE_KP_LESS = 197;
const Sdl_Scancode SDL_SCANCODE_KP_GREATER = 198;
const Sdl_Scancode SDL_SCANCODE_KP_AMPERSAND = 199;
const Sdl_Scancode SDL_SCANCODE_KP_DBLAMPERSAND = 200;
const Sdl_Scancode SDL_SCANCODE_KP_VERTICALBAR = 201;
const Sdl_Scancode SDL_SCANCODE_KP_DBLVERTICALBAR = 202;
const Sdl_Scancode SDL_SCANCODE_KP_COLON = 203;
const Sdl_Scancode SDL_SCANCODE_KP_HASH = 204;
const Sdl_Scancode SDL_SCANCODE_KP_SPACE = 205;
const Sdl_Scancode SDL_SCANCODE_KP_AT = 206;
const Sdl_Scancode SDL_SCANCODE_KP_EXCLAM = 207;
const Sdl_Scancode SDL_SCANCODE_KP_MEMSTORE = 208;
const Sdl_Scancode SDL_SCANCODE_KP_MEMRECALL = 209;
const Sdl_Scancode SDL_SCANCODE_KP_MEMCLEAR = 210;
const Sdl_Scancode SDL_SCANCODE_KP_MEMADD = 211;
const Sdl_Scancode SDL_SCANCODE_KP_MEMSUBTRACT = 212;
const Sdl_Scancode SDL_SCANCODE_KP_MEMMULTIPLY = 213;
const Sdl_Scancode SDL_SCANCODE_KP_MEMDIVIDE = 214;
const Sdl_Scancode SDL_SCANCODE_KP_PLUSMINUS = 215;
const Sdl_Scancode SDL_SCANCODE_KP_CLEAR = 216;
const Sdl_Scancode SDL_SCANCODE_KP_CLEARENTRY = 217;
const Sdl_Scancode SDL_SCANCODE_KP_BINARY = 218;
const Sdl_Scancode SDL_SCANCODE_KP_OCTAL = 219;
const Sdl_Scancode SDL_SCANCODE_KP_DECIMAL = 220;
const Sdl_Scancode SDL_SCANCODE_KP_HEXADECIMAL = 221;
const Sdl_Scancode SDL_SCANCODE_LCTRL = 224;
const Sdl_Scancode SDL_SCANCODE_LSHIFT = 225;
const Sdl_Scancode SDL_SCANCODE_LALT = 226;
const Sdl_Scancode SDL_SCANCODE_LGUI = 227;
const Sdl_Scancode SDL_SCANCODE_RCTRL = 228;
const Sdl_Scancode SDL_SCANCODE_RSHIFT = 229;
const Sdl_Scancode SDL_SCANCODE_RALT = 230;
const Sdl_Scancode SDL_SCANCODE_RGUI = 231;
const Sdl_Scancode SDL_SCANCODE_MODE = 257;
const Sdl_Scancode SDL_SCANCODE_AUDIONEXT = 258;
const Sdl_Scancode SDL_SCANCODE_AUDIOPREV = 259;
const Sdl_Scancode SDL_SCANCODE_AUDIOSTOP = 260;
const Sdl_Scancode SDL_SCANCODE_AUDIOPLAY = 261;
const Sdl_Scancode SDL_SCANCODE_AUDIOMUTE = 262;
const Sdl_Scancode SDL_SCANCODE_MEDIASELECT = 263;
const Sdl_Scancode SDL_SCANCODE_WWW = 264;
const Sdl_Scancode SDL_SCANCODE_MAIL = 265;
const Sdl_Scancode SDL_SCANCODE_CALCULATOR = 266;
const Sdl_Scancode SDL_SCANCODE_COMPUTER = 267;
const Sdl_Scancode SDL_SCANCODE_AC_SEARCH = 268;
const Sdl_Scancode SDL_SCANCODE_AC_HOME = 269;
const Sdl_Scancode SDL_SCANCODE_AC_BACK = 270;
const Sdl_Scancode SDL_SCANCODE_AC_FORWARD = 271;
const Sdl_Scancode SDL_SCANCODE_AC_STOP = 272;
const Sdl_Scancode SDL_SCANCODE_AC_REFRESH = 273;
const Sdl_Scancode SDL_SCANCODE_AC_BOOKMARKS = 274;
const Sdl_Scancode SDL_SCANCODE_BRIGHTNESSDOWN = 275;
const Sdl_Scancode SDL_SCANCODE_BRIGHTNESSUP = 276;
const Sdl_Scancode SDL_SCANCODE_DISPLAYSWITCH = 277;
const Sdl_Scancode SDL_SCANCODE_KBDILLUMTOGGLE = 278;
const Sdl_Scancode SDL_SCANCODE_KBDILLUMDOWN = 279;
const Sdl_Scancode SDL_SCANCODE_KBDILLUMUP = 280;
const Sdl_Scancode SDL_SCANCODE_EJECT = 281;
const Sdl_Scancode SDL_SCANCODE_SLEEP = 282;
const Sdl_Scancode SDL_SCANCODE_APP1 = 283;
const Sdl_Scancode SDL_SCANCODE_APP2 = 284;
const Sdl_Scancode SDL_SCANCODE_AUDIOREWIND = 285;
const Sdl_Scancode SDL_SCANCODE_AUDIOFASTFORWARD = 286;
const Sdl_Scancode SDL_SCANCODE_SOFTLEFT = 287;
const Sdl_Scancode SDL_SCANCODE_SOFTRIGHT = 288;
const Sdl_Scancode SDL_SCANCODE_CALL = 289;
const Sdl_Scancode SDL_SCANCODE_ENDCALL = 290;
const Sdl_Scancode SDL_NUM_SCANCODES = 512;


module sdl::sdl_keycode;
define Sdl_Keycode = distinct int;
const Sdl_Keycode SDLK_UNKNOWN = 0;
const Sdl_Keycode SDLK_RETURN = 13;
const Sdl_Keycode SDLK_ESCAPE = 27;
const Sdl_Keycode SDLK_BACKSPACE = 8;
const Sdl_Keycode SDLK_TAB = 9;
const Sdl_Keycode SDLK_SPACE = 32;
const Sdl_Keycode SDLK_EXCLAIM = 33;
const Sdl_Keycode SDLK_QUOTEDBL = 34;
const Sdl_Keycode SDLK_HASH = 35;
const Sdl_Keycode SDLK_PERCENT = 37;
const Sdl_Keycode SDLK_DOLLAR = 36;
const Sdl_Keycode SDLK_AMPERSAND = 38;
const Sdl_Keycode SDLK_QUOTE = 39;
const Sdl_Keycode SDLK_LEFTPAREN = 40;
const Sdl_Keycode SDLK_RIGHTPAREN = 41;
const Sdl_Keycode SDLK_ASTERISK = 42;
const Sdl_Keycode SDLK_PLUS = 43;
const Sdl_Keycode SDLK_COMMA = 44;
const Sdl_Keycode SDLK_MINUS = 45;
const Sdl_Keycode SDLK_PERIOD = 46;
const Sdl_Keycode SDLK_SLASH = 47;
const Sdl_Keycode SDLK_0 = 48;
const Sdl_Keycode SDLK_1 = 49;
const Sdl_Keycode SDLK_2 = 50;
const Sdl_Keycode SDLK_3 = 51;
const Sdl_Keycode SDLK_4 = 52;
const Sdl_Keycode SDLK_5 = 53;
const Sdl_Keycode SDLK_6 = 54;
const Sdl_Keycode SDLK_7 = 55;
const Sdl_Keycode SDLK_8 = 56;
const Sdl_Keycode SDLK_9 = 57;
const Sdl_Keycode SDLK_COLON = 58;
const Sdl_Keycode SDLK_SEMICOLON = 59;
const Sdl_Keycode SDLK_LESS = 60;
const Sdl_Keycode SDLK_EQUALS = 61;
const Sdl_Keycode SDLK_GREATER = 62;
const Sdl_Keycode SDLK_QUESTION = 63;
const Sdl_Keycode SDLK_AT = 64;
const Sdl_Keycode SDLK_LEFTBRACKET = 91;
const Sdl_Keycode SDLK_BACKSLASH = 92;
const Sdl_Keycode SDLK_RIGHTBRACKET = 93;
const Sdl_Keycode SDLK_CARET = 94;
const Sdl_Keycode SDLK_UNDERSCORE = 95;
const Sdl_Keycode SDLK_BACKQUOTE = 96;
const Sdl_Keycode SDLK_A = 97;
const Sdl_Keycode SDLK_B = 98;
const Sdl_Keycode SDLK_C = 99;
const Sdl_Keycode SDLK_D = 100;
const Sdl_Keycode SDLK_E = 101;
const Sdl_Keycode SDLK_F = 102;
const Sdl_Keycode SDLK_G = 103;
const Sdl_Keycode SDLK_H = 104;
const Sdl_Keycode SDLK_I = 105;
const Sdl_Keycode SDLK_J = 106;
const Sdl_Keycode SDLK_K = 107;
const Sdl_Keycode SDLK_L = 108;
const Sdl_Keycode SDLK_M = 109;
const Sdl_Keycode SDLK_N = 110;
const Sdl_Keycode SDLK_O = 111;
const Sdl_Keycode SDLK_P = 112;
const Sdl_Keycode SDLK_Q = 113;
const Sdl_Keycode SDLK_R = 114;
const Sdl_Keycode SDLK_S = 115;
const Sdl_Keycode SDLK_T = 116;
const Sdl_Keycode SDLK_U = 117;
const Sdl_Keycode SDLK_V = 118;
const Sdl_Keycode SDLK_W = 119;
const Sdl_Keycode SDLK_X = 120;
const Sdl_Keycode SDLK_Y = 121;
const Sdl_Keycode SDLK_Z = 122;
const Sdl_Keycode SDLK_CAPSLOCK = 1073741881;
const Sdl_Keycode SDLK_F1 = 1073741882;
const Sdl_Keycode SDLK_F2 = 1073741883;
const Sdl_Keycode SDLK_F3 = 1073741884;
const Sdl_Keycode SDLK_F4 = 1073741885;
const Sdl_Keycode SDLK_F5 = 1073741886;
const Sdl_Keycode SDLK_F6 = 1073741887;
const Sdl_Keycode SDLK_F7 = 1073741888;
const Sdl_Keycode SDLK_F8 = 1073741889;
const Sdl_Keycode SDLK_F9 = 1073741890;
const Sdl_Keycode SDLK_F10 = 1073741891;
const Sdl_Keycode SDLK_F11 = 1073741892;
const Sdl_Keycode SDLK_F12 = 1073741893;
const Sdl_Keycode SDLK_PRINTSCREEN = 1073741894;
const Sdl_Keycode SDLK_SCROLLLOCK = 1073741895;
const Sdl_Keycode SDLK_PAUSE = 1073741896;
const Sdl_Keycode SDLK_INSERT = 1073741897;
const Sdl_Keycode SDLK_HOME = 1073741898;
const Sdl_Keycode SDLK_PAGEUP = 1073741899;
const Sdl_Keycode SDLK_DELETE = 127;
const Sdl_Keycode SDLK_END = 1073741901;
const Sdl_Keycode SDLK_PAGEDOWN = 1073741902;
const Sdl_Keycode SDLK_RIGHT = 1073741903;
const Sdl_Keycode SDLK_LEFT = 1073741904;
const Sdl_Keycode SDLK_DOWN = 1073741905;
const Sdl_Keycode SDLK_UP = 1073741906;
const Sdl_Keycode SDLK_NUMLOCKCLEAR = 1073741907;
const Sdl_Keycode SDLK_KP_DIVIDE = 1073741908;
const Sdl_Keycode SDLK_KP_MULTIPLY = 1073741909;
const Sdl_Keycode SDLK_KP_MINUS = 1073741910;
const Sdl_Keycode SDLK_KP_PLUS = 1073741911;
const Sdl_Keycode SDLK_KP_ENTER = 1073741912;
const Sdl_Keycode SDLK_KP_1 = 1073741913;
const Sdl_Keycode SDLK_KP_2 = 1073741914;
const Sdl_Keycode SDLK_KP_3 = 1073741915;
const Sdl_Keycode SDLK_KP_4 = 1073741916;
const Sdl_Keycode SDLK_KP_5 = 1073741917;
const Sdl_Keycode SDLK_KP_6 = 1073741918;
const Sdl_Keycode SDLK_KP_7 = 1073741919;
const Sdl_Keycode SDLK_KP_8 = 1073741920;
const Sdl_Keycode SDLK_KP_9 = 1073741921;
const Sdl_Keycode SDLK_KP_0 = 1073741922;
const Sdl_Keycode SDLK_KP_PERIOD = 1073741923;
const Sdl_Keycode SDLK_APPLICATION = 1073741925;
const Sdl_Keycode SDLK_POWER = 1073741926;
const Sdl_Keycode SDLK_KP_EQUALS = 1073741927;
const Sdl_Keycode SDLK_F13 = 1073741928;
const Sdl_Keycode SDLK_F14 = 1073741929;
const Sdl_Keycode SDLK_F15 = 1073741930;
const Sdl_Keycode SDLK_F16 = 1073741931;
const Sdl_Keycode SDLK_F17 = 1073741932;
const Sdl_Keycode SDLK_F18 = 1073741933;
const Sdl_Keycode SDLK_F19 = 1073741934;
const Sdl_Keycode SDLK_F20 = 1073741935;
const Sdl_Keycode SDLK_F21 = 1073741936;
const Sdl_Keycode SDLK_F22 = 1073741937;
const Sdl_Keycode SDLK_F23 = 1073741938;
const Sdl_Keycode SDLK_F24 = 1073741939;
const Sdl_Keycode SDLK_EXECUTE = 1073741940;
const Sdl_Keycode SDLK_HELP = 1073741941;
const Sdl_Keycode SDLK_MENU = 1073741942;
const Sdl_Keycode SDLK_SELECT = 1073741943;
const Sdl_Keycode SDLK_STOP = 1073741944;
const Sdl_Keycode SDLK_AGAIN = 1073741945;
const Sdl_Keycode SDLK_UNDO = 1073741946;
const Sdl_Keycode SDLK_CUT = 1073741947;
const Sdl_Keycode SDLK_COPY = 1073741948;
const Sdl_Keycode SDLK_PASTE = 1073741949;
const Sdl_Keycode SDLK_FIND = 1073741950;
const Sdl_Keycode SDLK_MUTE = 1073741951;
const Sdl_Keycode SDLK_VOLUMEUP = 1073741952;
const Sdl_Keycode SDLK_VOLUMEDOWN = 1073741953;
const Sdl_Keycode SDLK_KP_COMMA = 1073741957;
const Sdl_Keycode SDLK_KP_EQUALSAS400 = 1073741958;
const Sdl_Keycode SDLK_ALTERASE = 1073741977;
const Sdl_Keycode SDLK_SYSREQ = 1073741978;
const Sdl_Keycode SDLK_CANCEL = 1073741979;
const Sdl_Keycode SDLK_CLEAR = 1073741980;
const Sdl_Keycode SDLK_PRIOR = 1073741981;
const Sdl_Keycode SDLK_RETURN2 = 1073741982;
const Sdl_Keycode SDLK_SEPARATOR = 1073741983;
const Sdl_Keycode SDLK_OUT = 1073741984;
const Sdl_Keycode SDLK_OPER = 1073741985;
const Sdl_Keycode SDLK_CLEARAGAIN = 1073741986;
const Sdl_Keycode SDLK_CRSEL = 1073741987;
const Sdl_Keycode SDLK_EXSEL = 1073741988;
const Sdl_Keycode SDLK_KP_00 = 1073742000;
const Sdl_Keycode SDLK_KP_000 = 1073742001;
const Sdl_Keycode SDLK_THOUSANDSSEPARATOR = 1073742002;
const Sdl_Keycode SDLK_DECIMALSEPARATOR = 1073742003;
const Sdl_Keycode SDLK_CURRENCYUNIT = 1073742004;
const Sdl_Keycode SDLK_CURRENCYSUBUNIT = 1073742005;
const Sdl_Keycode SDLK_KP_LEFTPAREN = 1073742006;
const Sdl_Keycode SDLK_KP_RIGHTPAREN = 1073742007;
const Sdl_Keycode SDLK_KP_LEFTBRACE = 1073742008;
const Sdl_Keycode SDLK_KP_RIGHTBRACE = 1073742009;
const Sdl_Keycode SDLK_KP_TAB = 1073742010;
const Sdl_Keycode SDLK_KP_BACKSPACE = 1073742011;
const Sdl_Keycode SDLK_KP_A = 1073742012;
const Sdl_Keycode SDLK_KP_B = 1073742013;
const Sdl_Keycode SDLK_KP_C = 1073742014;
const Sdl_Keycode SDLK_KP_D = 1073742015;
const Sdl_Keycode SDLK_KP_E = 1073742016;
const Sdl_Keycode SDLK_KP_F = 1073742017;
const Sdl_Keycode SDLK_KP_XOR = 1073742018;
const Sdl_Keycode SDLK_KP_POWER = 1073742019;
const Sdl_Keycode SDLK_KP_PERCENT = 1073742020;
const Sdl_Keycode SDLK_KP_LESS = 1073742021;
const Sdl_Keycode SDLK_KP_GREATER = 1073742022;
const Sdl_Keycode SDLK_KP_AMPERSAND = 1073742023;
const Sdl_Keycode SDLK_KP_DBLAMPERSAND = 1073742024;
const Sdl_Keycode SDLK_KP_VERTICALBAR = 1073742025;
const Sdl_Keycode SDLK_KP_DBLVERTICALBAR = 1073742026;
const Sdl_Keycode SDLK_KP_COLON = 1073742027;
const Sdl_Keycode SDLK_KP_HASH = 1073742028;
const Sdl_Keycode SDLK_KP_SPACE = 1073742029;
const Sdl_Keycode SDLK_KP_AT = 1073742030;
const Sdl_Keycode SDLK_KP_EXCLAM = 1073742031;
const Sdl_Keycode SDLK_KP_MEMSTORE = 1073742032;
const Sdl_Keycode SDLK_KP_MEMRECALL = 1073742033;
const Sdl_Keycode SDLK_KP_MEMCLEAR = 1073742034;
const Sdl_Keycode SDLK_KP_MEMADD = 1073742035;
const Sdl_Keycode SDLK_KP_MEMSUBTRACT = 1073742036;
const Sdl_Keycode SDLK_KP_MEMMULTIPLY = 1073742037;
const Sdl_Keycode SDLK_KP_MEMDIVIDE = 1073742038;
const Sdl_Keycode SDLK_KP_PLUSMINUS = 1073742039;
const Sdl_Keycode SDLK_KP_CLEAR = 1073742040;
const Sdl_Keycode SDLK_KP_CLEARENTRY = 1073742041;
const Sdl_Keycode SDLK_KP_BINARY = 1073742042;
const Sdl_Keycode SDLK_KP_OCTAL = 1073742043;
const Sdl_Keycode SDLK_KP_DECIMAL = 1073742044;
const Sdl_Keycode SDLK_KP_HEXADECIMAL = 1073742045;
const Sdl_Keycode SDLK_LCTRL = 1073742048;
const Sdl_Keycode SDLK_LSHIFT = 1073742049;
const Sdl_Keycode SDLK_LALT = 1073742050;
const Sdl_Keycode SDLK_LGUI = 1073742051;
const Sdl_Keycode SDLK_RCTRL = 1073742052;
const Sdl_Keycode SDLK_RSHIFT = 1073742053;
const Sdl_Keycode SDLK_RALT = 1073742054;
const Sdl_Keycode SDLK_RGUI = 1073742055;
const Sdl_Keycode SDLK_MODE = 1073742081;
const Sdl_Keycode SDLK_AUDIONEXT = 1073742082;
const Sdl_Keycode SDLK_AUDIOPREV = 1073742083;
const Sdl_Keycode SDLK_AUDIOSTOP = 1073742084;
const Sdl_Keycode SDLK_AUDIOPLAY = 1073742085;
const Sdl_Keycode SDLK_AUDIOMUTE = 1073742086;
const Sdl_Keycode SDLK_MEDIASELECT = 1073742087;
const Sdl_Keycode SDLK_WWW = 1073742088;
const Sdl_Keycode SDLK_MAIL = 1073742089;
const Sdl_Keycode SDLK_CALCULATOR = 1073742090;
const Sdl_Keycode SDLK_COMPUTER = 1073742091;
const Sdl_Keycode SDLK_AC_SEARCH = 1073742092;
const Sdl_Keycode SDLK_AC_HOME = 1073742093;
const Sdl_Keycode SDLK_AC_BACK = 1073742094;
const Sdl_Keycode SDLK_AC_FORWARD = 1073742095;
const Sdl_Keycode SDLK_AC_STOP = 1073742096;
const Sdl_Keycode SDLK_AC_REFRESH = 1073742097;
const Sdl_Keycode SDLK_AC_BOOKMARKS = 1073742098;
const Sdl_Keycode SDLK_BRIGHTNESSDOWN = 1073742099;
const Sdl_Keycode SDLK_BRIGHTNESSUP = 1073742100;
const Sdl_Keycode SDLK_DISPLAYSWITCH = 1073742101;
const Sdl_Keycode SDLK_KBDILLUMTOGGLE = 1073742102;
const Sdl_Keycode SDLK_KBDILLUMDOWN = 1073742103;
const Sdl_Keycode SDLK_KBDILLUMUP = 1073742104;
const Sdl_Keycode SDLK_EJECT = 1073742105;
const Sdl_Keycode SDLK_SLEEP = 1073742106;
const Sdl_Keycode SDLK_APP1 = 1073742107;
const Sdl_Keycode SDLK_APP2 = 1073742108;
const Sdl_Keycode SDLK_AUDIOREWIND = 1073742109;
const Sdl_Keycode SDLK_AUDIOFASTFORWARD = 1073742110;
const Sdl_Keycode SDLK_SOFTLEFT = 1073742111;
const Sdl_Keycode SDLK_SOFTRIGHT = 1073742112;
const Sdl_Keycode SDLK_CALL = 1073742113;
const Sdl_Keycode SDLK_ENDCALL = 1073742114;


module sdl::sdl_keymod;
define Sdl_Keymod = distinct int;
const Sdl_Keymod KMOD_NONE = 0;
const Sdl_Keymod KMOD_LSHIFT = 1;
const Sdl_Keymod KMOD_RSHIFT = 2;
const Sdl_Keymod KMOD_LCTRL = 64;
const Sdl_Keymod KMOD_RCTRL = 128;
const Sdl_Keymod KMOD_LALT = 256;
const Sdl_Keymod KMOD_RALT = 512;
const Sdl_Keymod KMOD_LGUI = 1024;
const Sdl_Keymod KMOD_RGUI = 2048;
const Sdl_Keymod KMOD_NUM = 4096;
const Sdl_Keymod KMOD_CAPS = 8192;
const Sdl_Keymod KMOD_MODE = 16384;
const Sdl_Keymod KMOD_SCROLL = 32768;
const Sdl_Keymod KMOD_CTRL = 192;
const Sdl_Keymod KMOD_SHIFT = 3;
const Sdl_Keymod KMOD_ALT = 768;
const Sdl_Keymod KMOD_GUI = 3072;
const Sdl_Keymod KMOD_RESERVED = 32768;


module sdl::sdl_systemcursor;
define Sdl_Systemcursor = distinct int;
const Sdl_Systemcursor SDL_SYSTEM_CURSOR_ARROW = 0;
const Sdl_Systemcursor SDL_SYSTEM_CURSOR_IBEAM = 1;
const Sdl_Systemcursor SDL_SYSTEM_CURSOR_WAIT = 2;
const Sdl_Systemcursor SDL_SYSTEM_CURSOR_CROSSHAIR = 3;
const Sdl_Systemcursor SDL_SYSTEM_CURSOR_WAITARROW = 4;
const Sdl_Systemcursor SDL_SYSTEM_CURSOR_SIZENWSE = 5;
const Sdl_Systemcursor SDL_SYSTEM_CURSOR_SIZENESW = 6;
const Sdl_Systemcursor SDL_SYSTEM_CURSOR_SIZEWE = 7;
const Sdl_Systemcursor SDL_SYSTEM_CURSOR_SIZENS = 8;
const Sdl_Systemcursor SDL_SYSTEM_CURSOR_SIZEALL = 9;
const Sdl_Systemcursor SDL_SYSTEM_CURSOR_NO = 10;
const Sdl_Systemcursor SDL_SYSTEM_CURSOR_HAND = 11;
const Sdl_Systemcursor SDL_NUM_SYSTEM_CURSORS = 12;


module sdl::sdl_mousewheeldirection;
define Sdl_Mousewheeldirection = distinct int;
const Sdl_Mousewheeldirection SDL_MOUSEWHEEL_NORMAL = 0;
const Sdl_Mousewheeldirection SDL_MOUSEWHEEL_FLIPPED = 1;


module sdl::sdl_joysticktype;
define Sdl_Joysticktype = distinct int;
const Sdl_Joysticktype SDL_JOYSTICK_TYPE_UNKNOWN = 0;
const Sdl_Joysticktype SDL_JOYSTICK_TYPE_GAMECONTROLLER = 1;
const Sdl_Joysticktype SDL_JOYSTICK_TYPE_WHEEL = 2;
const Sdl_Joysticktype SDL_JOYSTICK_TYPE_ARCADE_STICK = 3;
const Sdl_Joysticktype SDL_JOYSTICK_TYPE_FLIGHT_STICK = 4;
const Sdl_Joysticktype SDL_JOYSTICK_TYPE_DANCE_PAD = 5;
const Sdl_Joysticktype SDL_JOYSTICK_TYPE_GUITAR = 6;
const Sdl_Joysticktype SDL_JOYSTICK_TYPE_DRUM_KIT = 7;
const Sdl_Joysticktype SDL_JOYSTICK_TYPE_ARCADE_PAD = 8;
const Sdl_Joysticktype SDL_JOYSTICK_TYPE_THROTTLE = 9;


module sdl::sdl_joystickpowerlevel;
define Sdl_Joystickpowerlevel = distinct int;
const Sdl_Joystickpowerlevel SDL_JOYSTICK_POWER_UNKNOWN = -1;
const Sdl_Joystickpowerlevel SDL_JOYSTICK_POWER_EMPTY = 0;
const Sdl_Joystickpowerlevel SDL_JOYSTICK_POWER_LOW = 1;
const Sdl_Joystickpowerlevel SDL_JOYSTICK_POWER_MEDIUM = 2;
const Sdl_Joystickpowerlevel SDL_JOYSTICK_POWER_FULL = 3;
const Sdl_Joystickpowerlevel SDL_JOYSTICK_POWER_WIRED = 4;
const Sdl_Joystickpowerlevel SDL_JOYSTICK_POWER_MAX = 5;


module sdl::sdl_sensortype;
define Sdl_Sensortype = distinct int;
const Sdl_Sensortype SDL_SENSOR_INVALID = -1;
const Sdl_Sensortype SDL_SENSOR_UNKNOWN = 0;
const Sdl_Sensortype SDL_SENSOR_ACCEL = 1;
const Sdl_Sensortype SDL_SENSOR_GYRO = 2;


module sdl::sdl_gamecontrollertype;
define Sdl_Gamecontrollertype = distinct int;
const Sdl_Gamecontrollertype SDL_CONTROLLER_TYPE_UNKNOWN = 0;
const Sdl_Gamecontrollertype SDL_CONTROLLER_TYPE_XBOX360 = 1;
const Sdl_Gamecontrollertype SDL_CONTROLLER_TYPE_XBOXONE = 2;
const Sdl_Gamecontrollertype SDL_CONTROLLER_TYPE_PS3 = 3;
const Sdl_Gamecontrollertype SDL_CONTROLLER_TYPE_PS4 = 4;
const Sdl_Gamecontrollertype SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_PRO = 5;
const Sdl_Gamecontrollertype SDL_CONTROLLER_TYPE_VIRTUAL = 6;
const Sdl_Gamecontrollertype SDL_CONTROLLER_TYPE_PS5 = 7;
const Sdl_Gamecontrollertype SDL_CONTROLLER_TYPE_AMAZON_LUNA = 8;
const Sdl_Gamecontrollertype SDL_CONTROLLER_TYPE_GOOGLE_STADIA = 9;
const Sdl_Gamecontrollertype SDL_CONTROLLER_TYPE_NVIDIA_SHIELD = 10;
const Sdl_Gamecontrollertype SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_LEFT = 11;
const Sdl_Gamecontrollertype SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT = 12;
const Sdl_Gamecontrollertype SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_PAIR = 13;


module sdl::sdl_gamecontrollerbindtype;
define Sdl_Gamecontrollerbindtype = distinct int;
const Sdl_Gamecontrollerbindtype SDL_CONTROLLER_BINDTYPE_NONE = 0;
const Sdl_Gamecontrollerbindtype SDL_CONTROLLER_BINDTYPE_BUTTON = 1;
const Sdl_Gamecontrollerbindtype SDL_CONTROLLER_BINDTYPE_AXIS = 2;
const Sdl_Gamecontrollerbindtype SDL_CONTROLLER_BINDTYPE_HAT = 3;


module sdl::sdl_gamecontrolleraxis;
define Sdl_Gamecontrolleraxis = distinct int;
const Sdl_Gamecontrolleraxis SDL_CONTROLLER_AXIS_INVALID = -1;
const Sdl_Gamecontrolleraxis SDL_CONTROLLER_AXIS_LEFTX = 0;
const Sdl_Gamecontrolleraxis SDL_CONTROLLER_AXIS_LEFTY = 1;
const Sdl_Gamecontrolleraxis SDL_CONTROLLER_AXIS_RIGHTX = 2;
const Sdl_Gamecontrolleraxis SDL_CONTROLLER_AXIS_RIGHTY = 3;
const Sdl_Gamecontrolleraxis SDL_CONTROLLER_AXIS_TRIGGERLEFT = 4;
const Sdl_Gamecontrolleraxis SDL_CONTROLLER_AXIS_TRIGGERRIGHT = 5;
const Sdl_Gamecontrolleraxis SDL_CONTROLLER_AXIS_MAX = 6;


module sdl::sdl_gamecontrollerbutton;
define Sdl_Gamecontrollerbutton = distinct int;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_INVALID = -1;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_A = 0;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_B = 1;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_X = 2;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_Y = 3;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_BACK = 4;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_GUIDE = 5;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_START = 6;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_LEFTSTICK = 7;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_RIGHTSTICK = 8;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_LEFTSHOULDER = 9;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_RIGHTSHOULDER = 10;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_DPAD_UP = 11;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_DPAD_DOWN = 12;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_DPAD_LEFT = 13;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_DPAD_RIGHT = 14;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_MISC1 = 15;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_PADDLE1 = 16;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_PADDLE2 = 17;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_PADDLE3 = 18;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_PADDLE4 = 19;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_TOUCHPAD = 20;
const Sdl_Gamecontrollerbutton SDL_CONTROLLER_BUTTON_MAX = 21;


module sdl::sdl_touchdevicetype;
define Sdl_Touchdevicetype = distinct int;
const Sdl_Touchdevicetype SDL_TOUCH_DEVICE_INVALID = -1;
const Sdl_Touchdevicetype SDL_TOUCH_DEVICE_DIRECT = 0;
const Sdl_Touchdevicetype SDL_TOUCH_DEVICE_INDIRECT_ABSOLUTE = 1;
const Sdl_Touchdevicetype SDL_TOUCH_DEVICE_INDIRECT_RELATIVE = 2;


module sdl::sdl_eventtype;
define Sdl_Eventtype = distinct int;
const Sdl_Eventtype SDL_FIRSTEVENT = 0;
const Sdl_Eventtype SDL_QUIT = 256;
const Sdl_Eventtype SDL_APP_TERMINATING = 257;
const Sdl_Eventtype SDL_APP_LOWMEMORY = 258;
const Sdl_Eventtype SDL_APP_WILLENTERBACKGROUND = 259;
const Sdl_Eventtype SDL_APP_DIDENTERBACKGROUND = 260;
const Sdl_Eventtype SDL_APP_WILLENTERFOREGROUND = 261;
const Sdl_Eventtype SDL_APP_DIDENTERFOREGROUND = 262;
const Sdl_Eventtype SDL_LOCALECHANGED = 263;
const Sdl_Eventtype SDL_DISPLAYEVENT = 336;
const Sdl_Eventtype SDL_WINDOWEVENT = 512;
const Sdl_Eventtype SDL_SYSWMEVENT = 513;
const Sdl_Eventtype SDL_KEYDOWN = 768;
const Sdl_Eventtype SDL_KEYUP = 769;
const Sdl_Eventtype SDL_TEXTEDITING = 770;
const Sdl_Eventtype SDL_TEXTINPUT = 771;
const Sdl_Eventtype SDL_KEYMAPCHANGED = 772;
const Sdl_Eventtype SDL_TEXTEDITING_EXT = 773;
const Sdl_Eventtype SDL_MOUSEMOTION = 1024;
const Sdl_Eventtype SDL_MOUSEBUTTONDOWN = 1025;
const Sdl_Eventtype SDL_MOUSEBUTTONUP = 1026;
const Sdl_Eventtype SDL_MOUSEWHEEL = 1027;
const Sdl_Eventtype SDL_JOYAXISMOTION = 1536;
const Sdl_Eventtype SDL_JOYBALLMOTION = 1537;
const Sdl_Eventtype SDL_JOYHATMOTION = 1538;
const Sdl_Eventtype SDL_JOYBUTTONDOWN = 1539;
const Sdl_Eventtype SDL_JOYBUTTONUP = 1540;
const Sdl_Eventtype SDL_JOYDEVICEADDED = 1541;
const Sdl_Eventtype SDL_JOYDEVICEREMOVED = 1542;
const Sdl_Eventtype SDL_JOYBATTERYUPDATED = 1543;
const Sdl_Eventtype SDL_CONTROLLERAXISMOTION = 1616;
const Sdl_Eventtype SDL_CONTROLLERBUTTONDOWN = 1617;
const Sdl_Eventtype SDL_CONTROLLERBUTTONUP = 1618;
const Sdl_Eventtype SDL_CONTROLLERDEVICEADDED = 1619;
const Sdl_Eventtype SDL_CONTROLLERDEVICEREMOVED = 1620;
const Sdl_Eventtype SDL_CONTROLLERDEVICEREMAPPED = 1621;
const Sdl_Eventtype SDL_CONTROLLERTOUCHPADDOWN = 1622;
const Sdl_Eventtype SDL_CONTROLLERTOUCHPADMOTION = 1623;
const Sdl_Eventtype SDL_CONTROLLERTOUCHPADUP = 1624;
const Sdl_Eventtype SDL_CONTROLLERSENSORUPDATE = 1625;
const Sdl_Eventtype SDL_FINGERDOWN = 1792;
const Sdl_Eventtype SDL_FINGERUP = 1793;
const Sdl_Eventtype SDL_FINGERMOTION = 1794;
const Sdl_Eventtype SDL_DOLLARGESTURE = 2048;
const Sdl_Eventtype SDL_DOLLARRECORD = 2049;
const Sdl_Eventtype SDL_MULTIGESTURE = 2050;
const Sdl_Eventtype SDL_CLIPBOARDUPDATE = 2304;
const Sdl_Eventtype SDL_DROPFILE = 4096;
const Sdl_Eventtype SDL_DROPTEXT = 4097;
const Sdl_Eventtype SDL_DROPBEGIN = 4098;
const Sdl_Eventtype SDL_DROPCOMPLETE = 4099;
const Sdl_Eventtype SDL_AUDIODEVICEADDED = 4352;
const Sdl_Eventtype SDL_AUDIODEVICEREMOVED = 4353;
const Sdl_Eventtype SDL_SENSORUPDATE = 4608;
const Sdl_Eventtype SDL_RENDER_TARGETS_RESET = 8192;
const Sdl_Eventtype SDL_RENDER_DEVICE_RESET = 8193;
const Sdl_Eventtype SDL_POLLSENTINEL = 32512;
const Sdl_Eventtype SDL_USEREVENT = 32768;
const Sdl_Eventtype SDL_LASTEVENT = 65535;


module sdl::sdl_eventaction;
define Sdl_Eventaction = distinct int;
const Sdl_Eventaction SDL_ADDEVENT = 0;
const Sdl_Eventaction SDL_PEEKEVENT = 1;
const Sdl_Eventaction SDL_GETEVENT = 2;


module sdl::sdl_hintpriority;
define Sdl_Hintpriority = distinct int;
const Sdl_Hintpriority SDL_HINT_DEFAULT = 0;
const Sdl_Hintpriority SDL_HINT_NORMAL = 1;
const Sdl_Hintpriority SDL_HINT_OVERRIDE = 2;


module sdl::sdl_logcategory;
define Sdl_Logcategory = distinct int;
const Sdl_Logcategory SDL_LOG_CATEGORY_APPLICATION = 0;
const Sdl_Logcategory SDL_LOG_CATEGORY_ERROR = 1;
const Sdl_Logcategory SDL_LOG_CATEGORY_ASSERT = 2;
const Sdl_Logcategory SDL_LOG_CATEGORY_SYSTEM = 3;
const Sdl_Logcategory SDL_LOG_CATEGORY_AUDIO = 4;
const Sdl_Logcategory SDL_LOG_CATEGORY_VIDEO = 5;
const Sdl_Logcategory SDL_LOG_CATEGORY_RENDER = 6;
const Sdl_Logcategory SDL_LOG_CATEGORY_INPUT = 7;
const Sdl_Logcategory SDL_LOG_CATEGORY_TEST = 8;
const Sdl_Logcategory SDL_LOG_CATEGORY_RESERVED1 = 9;
const Sdl_Logcategory SDL_LOG_CATEGORY_RESERVED2 = 10;
const Sdl_Logcategory SDL_LOG_CATEGORY_RESERVED3 = 11;
const Sdl_Logcategory SDL_LOG_CATEGORY_RESERVED4 = 12;
const Sdl_Logcategory SDL_LOG_CATEGORY_RESERVED5 = 13;
const Sdl_Logcategory SDL_LOG_CATEGORY_RESERVED6 = 14;
const Sdl_Logcategory SDL_LOG_CATEGORY_RESERVED7 = 15;
const Sdl_Logcategory SDL_LOG_CATEGORY_RESERVED8 = 16;
const Sdl_Logcategory SDL_LOG_CATEGORY_RESERVED9 = 17;
const Sdl_Logcategory SDL_LOG_CATEGORY_RESERVED10 = 18;
const Sdl_Logcategory SDL_LOG_CATEGORY_CUSTOM = 19;


module sdl::sdl_logpriority;
define Sdl_Logpriority = distinct int;
const Sdl_Logpriority SDL_LOG_PRIORITY_VERBOSE = 1;
const Sdl_Logpriority SDL_LOG_PRIORITY_DEBUG = 2;
const Sdl_Logpriority SDL_LOG_PRIORITY_INFO = 3;
const Sdl_Logpriority SDL_LOG_PRIORITY_WARN = 4;
const Sdl_Logpriority SDL_LOG_PRIORITY_ERROR = 5;
const Sdl_Logpriority SDL_LOG_PRIORITY_CRITICAL = 6;
const Sdl_Logpriority SDL_NUM_LOG_PRIORITIES = 7;


module sdl::sdl_messageboxflags;
define Sdl_Messageboxflags = distinct int;
const Sdl_Messageboxflags SDL_MESSAGEBOX_ERROR = 16;
const Sdl_Messageboxflags SDL_MESSAGEBOX_WARNING = 32;
const Sdl_Messageboxflags SDL_MESSAGEBOX_INFORMATION = 64;
const Sdl_Messageboxflags SDL_MESSAGEBOX_BUTTONS_LEFT_TO_RIGHT = 128;
const Sdl_Messageboxflags SDL_MESSAGEBOX_BUTTONS_RIGHT_TO_LEFT = 256;


module sdl::sdl_messageboxbuttonflags;
define Sdl_Messageboxbuttonflags = distinct int;
const Sdl_Messageboxbuttonflags SDL_MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT = 1;
const Sdl_Messageboxbuttonflags SDL_MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT = 2;


module sdl::sdl_messageboxcolortype;
define Sdl_Messageboxcolortype = distinct int;
const Sdl_Messageboxcolortype SDL_MESSAGEBOX_COLOR_BACKGROUND = 0;
const Sdl_Messageboxcolortype SDL_MESSAGEBOX_COLOR_TEXT = 1;
const Sdl_Messageboxcolortype SDL_MESSAGEBOX_COLOR_BUTTON_BORDER = 2;
const Sdl_Messageboxcolortype SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND = 3;
const Sdl_Messageboxcolortype SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED = 4;
const Sdl_Messageboxcolortype SDL_MESSAGEBOX_COLOR_MAX = 5;


module sdl::sdl_powerstate;
define Sdl_Powerstate = distinct int;
const Sdl_Powerstate SDL_POWERSTATE_UNKNOWN = 0;
const Sdl_Powerstate SDL_POWERSTATE_ON_BATTERY = 1;
const Sdl_Powerstate SDL_POWERSTATE_NO_BATTERY = 2;
const Sdl_Powerstate SDL_POWERSTATE_CHARGING = 3;
const Sdl_Powerstate SDL_POWERSTATE_CHARGED = 4;


module sdl::sdl_rendererflags;
define Sdl_Rendererflags = distinct int;
const Sdl_Rendererflags SDL_RENDERER_SOFTWARE = 1;
const Sdl_Rendererflags SDL_RENDERER_ACCELERATED = 2;
const Sdl_Rendererflags SDL_RENDERER_PRESENTVSYNC = 4;
const Sdl_Rendererflags SDL_RENDERER_TARGETTEXTURE = 8;


module sdl::sdl_scalemode;
define Sdl_Scalemode = distinct int;
const Sdl_Scalemode SDL_SCALEMODENEAREST = 0;
const Sdl_Scalemode SDL_SCALEMODELINEAR = 1;
const Sdl_Scalemode SDL_SCALEMODEBEST = 2;


module sdl::sdl_textureaccess;
define Sdl_Textureaccess = distinct int;
const Sdl_Textureaccess SDL_TEXTUREACCESS_STATIC = 0;
const Sdl_Textureaccess SDL_TEXTUREACCESS_STREAMING = 1;
const Sdl_Textureaccess SDL_TEXTUREACCESS_TARGET = 2;


module sdl::sdl_texturemodulate;
define Sdl_Texturemodulate = distinct int;
const Sdl_Texturemodulate SDL_TEXTUREMODULATE_NONE = 0;
const Sdl_Texturemodulate SDL_TEXTUREMODULATE_COLOR = 1;
const Sdl_Texturemodulate SDL_TEXTUREMODULATE_ALPHA = 2;


module sdl::sdl_rendererflip;
define Sdl_Rendererflip = distinct int;
const Sdl_Rendererflip SDL_FLIP_NONE = 0;
const Sdl_Rendererflip SDL_FLIP_HORIZONTAL = 1;
const Sdl_Rendererflip SDL_FLIP_VERTICAL = 2;


