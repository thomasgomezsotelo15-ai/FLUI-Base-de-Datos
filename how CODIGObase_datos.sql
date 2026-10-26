[1mdiff --git a/FLUI_BASE.sql b/FLUI_BASE.sql[m
[1mindex ce86051..ca92a51 100644[m
[1m--- a/FLUI_BASE.sql[m
[1m+++ b/FLUI_BASE.sql[m
[36m@@ -243,3 +243,27 @@[m [mINSERT INTO Gasto VALUES[m
 (8, 108, 'Publicidad de camisetas', 70000, '2025-10-08 15:00:00'),[m
 (9, 109, 'Empaques para flores', 30000, '2025-10-09 16:00:00'),[m
 (10, 110, 'Transporte de juguetes', 40000, '2025-10-10 17:00:00');[m
[32m+[m
[32m+[m
[32m+[m[32mSELECT *[m
[32m+[m[32mFROM Gasto WHERE valor BETWEEN 40000 AND 80000[m
[32m+[m
[32m+[m
[32m+[m[32mSELECT[m[41m [m
[32m+[m[32mp.Stock_Minimo,i.Ultima_Actualizacion[m
[32m+[m[32mFROM Producto p[m
[32m+[m[32mINNER JOIN Inventario i ON p.Id_Producto = i.Id_Producto;[m
[32m+[m
[32m+[m[32mSELECT[m
[32m+[m[32mc.Fecha_Compra,[m
[32m+[m[32mf.Fecha,[m
[32m+[m[32mf,Total[m
[32m+[m[32mFROM Compra c[m
[32m+[m[32mINNER JOIN Factura f ON c.Id_Compra = f.Id_Compra[m
[32m+[m[32mWHERE Fecha BETWEEN '2025-07-15' AND '2025-10-10';[m
[32m+[m
[32m+[m[32mSELECT[m[41m [m
[32m+[m[32mu.Contraseña_Usuario,n.Direccion,n[m
[32m+[m[32mFROM Usuario u[m[41m [m
[32m+[m[32mINNER JOIN Negocio n ON u.Id_Usuario = n.Id_Usuario[m
[32m+[m[32mWHERE Direccion BETWEEN 'Cra 7A' AND 'Cra 7e';[m
\ No newline at end of file[m
