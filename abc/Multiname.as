package abc {
	import flash.utils.*;
	
	public class Multiname {
		public static const QName			:int	= 0x07,
							QNameA			:int	= 0x0d,
							RTQName			:int	= 0x0f,
							RTQNameA		:int	= 0x10,
							RTQNameL		:int	= 0x11,
							RTQNameLA		:int	= 0x12,
							Multiname		:int	= 0x09,
							MultinameA		:int	= 0x0e,
							MultinameL		:int	= 0x1b,
							MultinameLA		:int	= 0x1c,
							
							// named by abcdump constant
							TypeName		:int	= 0x1d;  // not in avm2overview
		
		private static var kindMap:Array = [];
		kindMap[QName] = 'QName', kindMap[QNameA] = 'QNameA';
		kindMap[RTQName] = 'RTQName', kindMap[RTQNameA] = 'RTQNameA';
		kindMap[RTQNameL] = 'RTQNameL', kindMap[RTQNameLA] = 'RTQNameLA';
		kindMap[abc.Multiname.Multiname] = 'Multiname', kindMap[MultinameA] = 'MultinameA';
		kindMap[MultinameL] = 'MultinameL', kindMap[MultinameLA] = 'MultinameLA';
		
		public var kind:int;
		public var ns:ABCNamespace;
		public var name:String;
		public var nsSet:Array;
		public var typeName:abc.Multiname;
		public var params:Array;
							
		public function Multiname(kind:int, arg1:* = null, arg2:* = null) {
			this.kind = kind;
			switch(kind){
				case QName:
				case QNameA:
					ns = arg1;
					name = arg2;
					break;
				
				case RTQName:
				case RTQNameA:
					name = arg1;
					break;
				
				case RTQNameL:
				case RTQNameLA:
					// no data
					break;
				
				case abc.Multiname.Multiname:
				case MultinameA:
					name = arg1;
					nsSet = arg2;
					break;
				
				case MultinameL:
				case MultinameLA:
					nsSet = arg1;
					break;
				
				case TypeName:
					typeName = arg1;
					params = arg2;
					break;
				
				default:
					// it shouldn't get here
					throw new ArgumentError('Unknown multiname kind: ' + kind);
			}
		}
		
		public function toString():String {
			if(kind == QName){
				return ns.toString() + '::' + name;
			} else if(kind == TypeName){
				return typeName + '.<' + params.join(', ') + '>';
			} else if(kind == abc.Multiname.Multiname){
				return '[' + nsSet.join(', ') + ']::' + name; 
			}
			return '[Multiname ' + kindMap[kind] + ']';
		}
	}
}