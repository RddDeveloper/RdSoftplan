unit uspComponentesRegistro;

interface

uses
  System.Classes, uspQuery;

procedure register;

implementation

procedure register;
begin
  RegisterComponents('spComponentes', [TspQuery]);
end;

end.
