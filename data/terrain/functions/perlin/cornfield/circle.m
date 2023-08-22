bmp=imread('circle.bmp');
image(bmp);
axis equal;
set(gca,'Visible','off');
set(gca,'DataAspectRatioMode','manual');
fid=fopen('circle.mcfunction','w');
for r=1:128
    for c=1:128
        if ~bmp(r,c)
            if r==64&&c==64
                fprintf(fid,'fill ~ 0 ~ ~ 255 ~ minecraft:air replace minecraft:wheat\n');
				fprintf(fid,'fill ~ 0 ~ ~ 255 ~ minecraft:hay_block replace minecraft:farmland\n');
            elseif r==64
                fprintf(fid,'fill ~ 0 ~%d ~ 255 ~%d minecraft:air replace minecraft:wheat\n',c-64,c-64);
				fprintf(fid,'fill ~ 0 ~%d ~ 255 ~%d minecraft:hay_block replace minecraft:farmland\n',c-64,c-64);
            elseif c==64
                fprintf(fid,'fill ~%d 0 ~ ~%d 255 ~ minecraft:air replace minecraft:wheat\n',r-64,r-64);
				fprintf(fid,'fill ~%d 0 ~ ~%d 255 ~ minecraft:hay_block replace minecraft:farmland\n',r-64,r-64);
            else
                fprintf(fid,'fill ~%d 0 ~%d ~%d 255 ~%d minecraft:air replace minecraft:wheat\n',r-64,c-64,r-64,c-64);
				fprintf(fid,'fill ~%d 0 ~%d ~%d 255 ~%d minecraft:hay_block replace minecraft:farmland\n',r-64,c-64,r-64,c-64);
            end
        end
    end
end
fclose(fid);