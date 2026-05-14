const std = @import("std");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    const args = try std.process.argsAlloc(allocator);
    defer std.process.argsFree(allocator, args);

    const stdout = std.io.getStdOut().writer();

    if (args.len < 2) {
        try stdout.print(
            \\Criado por: Luiz Miguel
            \\Codificador: Luiz Miguel
            \\Créditos: Equipe SATURNO
            \\
            \\----------------------------------------------
            \\   PEVO - PROJETO EDUCABORAI OFFLINE
            \\----------------------------------------------
            \\
            \\Instalacao concluida com sucesso! [cite: 1]
            \\Para comecar a usar o PEVO, use os comandos abaixo. [cite: 2]
            \\
        , .{});
        try exibirHelp(stdout);
        return;
    }

    const comando = args[1];

    if (std.mem.eql(u8, comando, "help")) { [cite: 7]
        try stdout.print("\nCOMANDOS DISPONIVEIS\n", .{}); [cite: 7]
        try exibirHelp(stdout);
    } else if (std.mem.eql(u8, comando, "fund")) { [cite: 4, 8]
        try stdout.print("\nIniciando no modo de Ensino Fundamental.\n", .{}); [cite: 4, 8]
    } else if (std.mem.eql(u8, comando, "medio")) { [cite: 5, 9]
        try stdout.print("\nIniciando no modo de Ensino Medio.\n", .{}); [cite: 5, 9]
    } else {
        try stdout.print("\nATENCAO: Este comando nao existe. Para ajuda, digite 'pevo help'.\n", .{}); [cite: 6]
    }
}

fn exibirHelp(writer: anytype) !void {
    try writer.print(
        \\-•-•- MATERIAS -•-•- [cite: 3]
        \\  pevo --port = Lingua Portuguesa [cite: 3]
        \\  pevo --math = Matematica [cite: 3]
        \\  pevo --sci = Ciencias [cite: 3]
        \\  pevo --hist = Historia [cite: 3]
        \\
        \\-•-•- AJUDA -•-•- [cite: 3]
        \\  pevo help = Abre o menu de ajuda. [cite: 3, 7]
        \\  pevo fund = Ensino Fundamental. [cite: 4, 8]
        \\  pevo medio = Ensino Medio. [cite: 5, 9]
        \\
        \\Feito pela equipe do Projeto Educaborai. [cite: 6]
        \\----------------------------------------------
        \\
    , .{});
}
