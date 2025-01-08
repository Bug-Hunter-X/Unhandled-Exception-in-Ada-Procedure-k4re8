```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (others => 0);
begin
   for I in My_Arr'Range loop
      My_Arr(I) := I * 2;
   end loop;
   for I in My_Arr'Range loop
      Ada.Text_IO.Put_Line(Integer'Image(My_Arr(I)));
   end loop;
exception
   when Constraint_Error =>
      Ada.Text_IO.Put_Line("Constraint Error: Index out of bounds or other constraint violation");
   when others =>
      Ada.Text_IO.Put_Line("An unexpected error occurred");
      Ada.Text_IO.Put_Line(Ada.Exceptions.Exception_Message);
end Example;
```