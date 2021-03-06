package abc {
	/**
	 * Holds some constants for AVM+ opcode names.  All instructions have a corresponding opcode here.
	 */
	public class Op {
		
		// this list is from tamarin / abc-constants.as
		// http://hg.mozilla.org/tamarin-central/raw-file/fbecf6c8a86f/utils/abc-constants.as
		public static const	
			bkpt				:int = 0x01,
			nop					:int = 0x02,
			throw_				:int = 0x03,
			getsuper			:int = 0x04,
			setsuper			:int = 0x05,
			dxns				:int = 0x06,
			dxnslate			:int = 0x07,
			kill				:int = 0x08,
			label				:int = 0x09,
			ifnlt				:int = 0x0C,
			ifnle				:int = 0x0D,
			ifngt				:int = 0x0E,
			ifnge				:int = 0x0F,
			jump				:int = 0x10,
			iftrue				:int = 0x11,
			iffalse				:int = 0x12,
			ifeq				:int = 0x13,
			ifne				:int = 0x14,
			iflt				:int = 0x15,
			ifle				:int = 0x16,
			ifgt				:int = 0x17,
			ifge				:int = 0x18,
			ifstricteq			:int = 0x19,
			ifstrictne			:int = 0x1A,
			lookupswitch		:int = 0x1B,
			pushwith			:int = 0x1C,
			popscope			:int = 0x1D,
			nextname			:int = 0x1E,
			hasnext				:int = 0x1F,
			pushnull			:int = 0x20,
			pushundefined		:int = 0x21,
			pushconstant		:int = 0x22,
			nextvalue			:int = 0x23,
			pushbyte			:int = 0x24,
			pushshort			:int = 0x25,
			pushtrue			:int = 0x26,
			pushfalse			:int = 0x27,
			pushnan				:int = 0x28,
			pop					:int = 0x29,
			dup					:int = 0x2A,
			swap				:int = 0x2B,
			pushstring			:int = 0x2C,
			pushint				:int = 0x2D,
			pushuint			:int = 0x2E,
			pushdouble			:int = 0x2F,
			pushscope			:int = 0x30,
			pushnamespace		:int = 0x31,
			hasnext2			:int = 0x32,
			li8					:int = 0x35,
			li16				:int = 0x36,
			li32				:int = 0x37,
			lf32				:int = 0x38,
			lf64				:int = 0x39,
			si8					:int = 0x3A,
			si16				:int = 0x3B,
			si32				:int = 0x3C,
			sf32				:int = 0x3D,
			sf64				:int = 0x3E,
			newfunction			:int = 0x40,
			call				:int = 0x41,
			construct			:int = 0x42,
			callmethod			:int = 0x43,
			callstatic			:int = 0x44,
			callsuper			:int = 0x45,
			callproperty		:int = 0x46,
			returnvoid			:int = 0x47,
			returnvalue			:int = 0x48,
			constructsuper		:int = 0x49,
			constructprop		:int = 0x4A,
			callsuperid			:int = 0x4B,
			callproplex			:int = 0x4C,
			callinterface		:int = 0x4D,
			callsupervoid		:int = 0x4E,
			callpropvoid		:int = 0x4F,
			sxi1				:int = 0x50,
			sxi8				:int = 0x51,
			sxi16				:int = 0x52,
			applytype			:int = 0x53,
			newobject			:int = 0x55,
			newarray			:int = 0x56,
			newactivation		:int = 0x57,
			newclass			:int = 0x58,
			getdescendants		:int = 0x59,
			newcatch			:int = 0x5A,
			findpropstrict		:int = 0x5D,
			findproperty		:int = 0x5E,
			finddef				:int = 0x5F,
			getlex				:int = 0x60,
			setproperty			:int = 0x61,
			getlocal			:int = 0x62,
			setlocal			:int = 0x63,
			getglobalscope		:int = 0x64,
			getscopeobject		:int = 0x65,
			getproperty			:int = 0x66,
			getouterscope		:int = 0x67,
			initproperty		:int = 0x68,
			setpropertylate		:int = 0x69,
			deleteproperty		:int = 0x6A,
			deletepropertylate	:int = 0x6B,
			getslot				:int = 0x6C,
			setslot				:int = 0x6D,
			getglobalslot		:int = 0x6E,
			setglobalslot		:int = 0x6F,
			convert_s			:int = 0x70,
			esc_xelem			:int = 0x71,
			esc_xattr			:int = 0x72,
			convert_i			:int = 0x73,
			convert_u			:int = 0x74,
			convert_d			:int = 0x75,
			convert_b			:int = 0x76,
			convert_o			:int = 0x77,
			checkfilter			:int = 0x78,
			coerce				:int = 0x80,
			coerce_b			:int = 0x81,
			coerce_a			:int = 0x82,
			coerce_i			:int = 0x83,
			coerce_d			:int = 0x84,
			coerce_s			:int = 0x85,
			astype				:int = 0x86,
			astypelate			:int = 0x87,
			coerce_u			:int = 0x88,
			coerce_o			:int = 0x89,
			negate				:int = 0x90,
			increment			:int = 0x91,
			inclocal			:int = 0x92,
			decrement			:int = 0x93,
			declocal			:int = 0x94,
			typeof_				:int = 0x95,
			not					:int = 0x96,
			bitnot				:int = 0x97,
			add_d				:int = 0x9B,
			add					:int = 0xA0,
			subtract			:int = 0xA1,
			multiply			:int = 0xA2,
			divide				:int = 0xA3,
			modulo				:int = 0xA4,
			lshift				:int = 0xA5,
			rshift				:int = 0xA6,
			urshift				:int = 0xA7,
			bitand				:int = 0xA8,
			bitor				:int = 0xA9,
			bitxor				:int = 0xAA,
			equals				:int = 0xAB,
			strictequals		:int = 0xAC,
			lessthan			:int = 0xAD,
			lessequals			:int = 0xAE,
			greaterthan			:int = 0xAF,
			greaterequals		:int = 0xB0,
			instanceof_			:int = 0xB1,
			istype				:int = 0xB2,
			istypelate			:int = 0xB3,
			in_					:int = 0xB4,
			increment_i			:int = 0xC0,
			decrement_i			:int = 0xC1,
			inclocal_i			:int = 0xC2,
			declocal_i			:int = 0xC3,
			negate_i			:int = 0xC4,
			add_i				:int = 0xC5,
			subtract_i			:int = 0xC6,
			multiply_i			:int = 0xC7,
			getlocal0			:int = 0xD0,
			getlocal1			:int = 0xD1,
			getlocal2			:int = 0xD2,
			getlocal3			:int = 0xD3,
			setlocal0			:int = 0xD4,
			setlocal1			:int = 0xD5,
			setlocal2			:int = 0xD6,
			setlocal3			:int = 0xD7,
			debug				:int = 0xEF,
			debugline			:int = 0xF0,
			debugfile			:int = 0xF1,
			bkptline			:int = 0xF2,
			timestamp			:int = 0xF3
		
		public function Op(){
			
		}
	}
}